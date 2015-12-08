; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
@.str3 = private unnamed_addr constant [56 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"xprime\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = external global %struct._IO_FILE*
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
@stdlog = external global %struct._IO_FILE*
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
@.str34 = private unnamed_addr constant [100 x i8] c"\0AStepsize too small (%g nm)Converged to machine precision,\0Abut not to the requested precision (%g)\0A\00", align 1
@.str35 = private unnamed_addr constant [127 x i8] c"You might need to increase your constraint accuracy, or turn\0Aoff constraints alltogether (set constraints = none in mdp file)\0A\00", align 1
@.str36 = private unnamed_addr constant [33 x i8] c"\0A%s converged to %g in %d steps\0A\00", align 1
@.str37 = private unnamed_addr constant [34 x i8] c"\0A%s did not converge in %d steps\0A\00", align 1
@.str38 = private unnamed_addr constant [30 x i8] c"  Potential Energy  = %12.5e\0A\00", align 1
@.str39 = private unnamed_addr constant [23 x i8] c"Maximum force: %12.5e\0A\00", align 1
@.str40 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str41 = private unnamed_addr constant [31 x i8] c"   Tolerance         = %12.5e\0A\00", align 1
@.str42 = private unnamed_addr constant [29 x i8] c"   Number of steps   = %12d\0A\00", align 1
@.str43 = private unnamed_addr constant [15 x i8] c"Initiating %s\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i64 @do_cg(%struct._IO_FILE* %log, i32 %nfile, %struct.t_filenm* %fnm, %struct.t_parm* %parm, %struct.t_topology* %top, %struct.t_groups* %grps, %struct.t_nsborder* %nsb, [3 x float]* %x, [3 x float]* nocapture %grad, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, [3 x float]* nocapture %ekin, float* %ener, %struct.t_fcdata* %fcd, %struct.t_nrnb* %nrnb, i32 %bVerbose, i32 %bDummies, %struct.t_comm_dummies* %dummycomm, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_graph* %graph, %struct.t_forcerec* %fr, float* %box_size) #0 {
entry:
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
  %0 = bitcast %struct.t_nrnb* %mynrnb to i8*
  call void @llvm.lifetime.start(i64 1032, i8* %0) #1
  %1 = bitcast [3 x [3 x float]]* %force_vir to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #1
  %2 = bitcast [3 x [3 x float]]* %shake_vir to i8*
  call void @llvm.lifetime.start(i64 36, i8* %2) #1
  %3 = bitcast [3 x [3 x float]]* %pme_vir to i8*
  call void @llvm.lifetime.start(i64 36, i8* %3) #1
  %ir = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0
  %nstcgsteep = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 63
  %4 = load i32* %nstcgsteep, align 4, !tbaa !0
  store float 0.000000e+00, float* %terminate, align 4, !tbaa !3
  %arraydecay = getelementptr inbounds [3 x float]* %mu_tot, i64 0, i64 0
  call fastcc void @init_em(%struct._IO_FILE* %log, i8* getelementptr inbounds ([20 x i8]* @.str, i64 0, i64 0), %struct.t_parm* %parm, float* %lambda, %struct.t_nrnb* %mynrnb, float* %arraydecay, float* %box_size, %struct.t_forcerec* %fr, %struct.t_mdatoms* %mdatoms, %struct.t_topology* %top, %struct.t_nsborder* %nsb, %struct.t_commrec* %cr, %struct.t_vcm** %vcm, i32* %start, i32* %end) #4
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %5 = load i32* %nodeid, align 4, !tbaa !0
  %call = call i64 @print_date_and_time(%struct._IO_FILE* %log, i32 %5, i8* getelementptr inbounds ([28 x i8]* @.str1, i64 0, i64 0)) #5
  %natoms = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  %6 = load i32* %natoms, align 4, !tbaa !0
  %call1 = call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 220, i32 %6, i32 12) #5
  %7 = bitcast i8* %call1 to [3 x float]*
  %8 = load i32* %natoms, align 4, !tbaa !0
  %call3 = call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 221, i32 %8, i32 12) #5
  %9 = bitcast i8* %call3 to [3 x float]*
  %10 = load i32* %natoms, align 4, !tbaa !0
  %call5 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 222, i32 %10, i32 12) #5
  %11 = bitcast i8* %call5 to [3 x float]*
  call void @set_pot_bools(%struct.t_inputrec* %ir, %struct.t_topology* %top, i32* %bLR, i32* %bLJLR, i32* %bBHAM, i32* %b14) #5
  %12 = load i32* %nodeid, align 4, !tbaa !0
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %threadid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %13 = load i32* %threadid, align 4, !tbaa !0
  %cmp8 = icmp eq i32 %13, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call9 = call i8* @ftp2fn(i32 8, i32 %nfile, %struct.t_filenm* %fnm) #5
  %call10 = call i32 @open_enx(i8* %call9, i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #5
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %fp_ene.0 = phi i32 [ %call10, %if.then ], [ -1, %land.lhs.true ], [ -1, %entry ]
  %atoms = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2
  %idef = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1
  %14 = load i32* %bLR, align 4, !tbaa !0
  %15 = load i32* %bLJLR, align 4, !tbaa !0
  %16 = load i32* %bBHAM, align 4, !tbaa !0
  %17 = load i32* %b14, align 4, !tbaa !0
  %efep = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 46
  %18 = load i32* %efep, align 4, !tbaa !0
  %cmp12 = icmp ne i32 %18, 0
  %conv = zext i1 %cmp12 to i32
  %epc = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 28
  %19 = load i32* %epc, align 4, !tbaa !0
  %eDispCorr = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 43
  %20 = load i32* %eDispCorr, align 4, !tbaa !0
  %arrayidx16 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 32, i64 1, i64 0
  %21 = load float* %arrayidx16, align 4, !tbaa !3
  %fabsf = call float @fabsf(float %21) #6
  %22 = fpext float %fabsf to double
  %cmp19 = fcmp ogt double %22, 1.200000e-38
  br i1 %cmp19, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx24 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 32, i64 2, i64 0
  %23 = load float* %arrayidx24, align 4, !tbaa !3
  %fabsf1002 = call float @fabsf(float %23) #6
  %24 = fpext float %fabsf1002 to double
  %cmp27 = fcmp ogt double %24, 1.200000e-38
  br i1 %cmp27, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %arrayidx32 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 32, i64 2, i64 1
  %25 = load float* %arrayidx32, align 4, !tbaa !3
  %fabsf1003 = call float @fabsf(float %25) #6
  %26 = fpext float %fabsf1003 to double
  %cmp35 = fcmp ogt double %26, 1.200000e-38
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.end
  %27 = phi i1 [ true, %lor.lhs.false ], [ true, %if.end ], [ %cmp35, %lor.rhs ]
  %lor.ext = zext i1 %27 to i32
  %etc = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 27
  %28 = load i32* %etc, align 4, !tbaa !0
  %cmp38 = icmp eq i32 %28, 2
  %conv39 = zext i1 %cmp38 to i32
  %call40 = call %struct.t_mdebin* @init_mdebin(i32 %fp_ene.0, %struct.t_groups* %grps, %struct.t_atoms* %atoms, %struct.t_idef* %idef, i32 %14, i32 %15, i32 %16, i32 %17, i32 %conv, i32 %19, i32 %20, i32 %lor.ext, i32 %conv39, %struct.t_commrec* %cr) #5
  %arraydecay41 = getelementptr inbounds [3 x [3 x float]]* %force_vir, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 16, i1 false) #1
  %arraydecay42 = getelementptr inbounds [3 x [3 x float]]* %shake_vir, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 36, i32 16, i1 false) #1
  %ePBC = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 0
  %29 = load i32* %ePBC, align 4, !tbaa !0
  %cmp43 = icmp eq i32 %29, 1
  br i1 %cmp43, label %if.end46, label %if.then45

if.then45:                                        ; preds = %lor.end
  call void @do_pbc_first(%struct._IO_FILE* %log, %struct.t_parm* %parm, float* %box_size, %struct.t_forcerec* %fr, %struct.t_graph* %graph, [3 x float]* %x) #5
  br label %if.end46

if.end46:                                         ; preds = %lor.end, %if.then45
  %nsteps = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 1
  %30 = load i32* %nsteps, align 4, !tbaa !0
  %31 = load i32* %nodeid, align 4, !tbaa !0
  %cmp49 = icmp eq i32 %31, 0
  br i1 %cmp49, label %land.lhs.true51, label %if.end57

land.lhs.true51:                                  ; preds = %if.end46
  %threadid52 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %32 = load i32* %threadid52, align 4, !tbaa !0
  %cmp53 = icmp eq i32 %32, 0
  br i1 %cmp53, label %if.then55, label %if.end57

if.then55:                                        ; preds = %land.lhs.true51
  %33 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %em_tol = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 60
  %34 = load float* %em_tol, align 4, !tbaa !3
  call fastcc void @sp_header(%struct._IO_FILE* %33, i8* getelementptr inbounds ([20 x i8]* @.str, i64 0, i64 0), float %34, i32 %30) #4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %land.lhs.true51, %if.end46
  %em_tol59 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 60
  %35 = load float* %em_tol59, align 4, !tbaa !3
  call fastcc void @sp_header(%struct._IO_FILE* %log, i8* getelementptr inbounds ([20 x i8]* @.str, i64 0, i64 0), float %35, i32 %30) #4
  %tobool = icmp ne i32 %bDummies, 0
  br i1 %tobool, label %if.then60, label %if.end65

if.then60:                                        ; preds = %if.end57
  %36 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom = sext i32 %36 to i64
  %arrayidx62 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %idxprom
  %arraydecay64 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  call void @construct_dummies(%struct._IO_FILE* %log, [3 x float]* %x, %struct.t_nrnb* %arrayidx62, float 1.000000e+00, [3 x float]* null, %struct.t_idef* %idef, %struct.t_graph* %graph, %struct.t_commrec* %cr, [3 x float]* %arraydecay64, %struct.t_comm_dummies* %dummycomm) #5
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %if.end57
  %arraydecay67 = getelementptr inbounds [3 x [3 x float]]* %pme_vir, i64 0, i64 0
  %37 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom69 = sext i32 %37 to i64
  %arrayidx70 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %idxprom69
  %tobool71 = icmp ne i32 %bVerbose, 0
  br i1 %tobool71, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end65
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %38 = load i32* %nnodes, align 4, !tbaa !0
  %cmp72 = icmp sgt i32 %38, 1
  br i1 %cmp72, label %land.end, label %lor.rhs74

lor.rhs74:                                        ; preds = %land.rhs
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %39 = load i32* %nthreads, align 4, !tbaa !0
  %phitmp1006 = icmp slt i32 %39, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs74, %if.end65
  %40 = phi i1 [ false, %if.end65 ], [ false, %land.rhs ], [ %phitmp1006, %lor.rhs74 ]
  %land.ext = zext i1 %40 to i32
  %41 = load float* %lambda, align 4, !tbaa !3
  call void @do_force(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, [3 x float]* %arraydecay41, [3 x float]* %arraydecay67, i32 0, %struct.t_nrnb* %arrayidx70, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %x, [3 x float]* %buf, [3 x float]* %9, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, float* %ener, %struct.t_fcdata* %fcd, i32 %land.ext, float %41, %struct.t_graph* %graph, i32 1, i32 0, %struct.t_forcerec* %fr, float* %arraydecay, i32 0) #5
  call void @_where(i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 265) #5
  br i1 %tobool, label %if.then81, label %if.end86

if.then81:                                        ; preds = %land.end
  %42 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom83 = sext i32 %42 to i64
  %arrayidx84 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %idxprom83
  call void @spread_dummy_f(%struct._IO_FILE* %log, [3 x float]* %x, [3 x float]* %9, %struct.t_nrnb* %arrayidx84, %struct.t_idef* %idef, %struct.t_comm_dummies* %dummycomm, %struct.t_commrec* %cr) #5
  br label %if.end86

if.end86:                                         ; preds = %if.then81, %land.end
  %opts = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80
  call void @sum_epot(%struct.t_grpopts* %opts, %struct.t_groups* %grps, float* %ener) #5
  call void @_where(i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 273) #5
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 16, i1 false) #1
  call void @_where(i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 277) #5
  %nnodes89 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %43 = load i32* %nnodes89, align 4, !tbaa !0
  %cmp90 = icmp sgt i32 %43, 1
  br i1 %cmp90, label %if.then96, label %lor.lhs.false92

lor.lhs.false92:                                  ; preds = %if.end86
  %nthreads93 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %44 = load i32* %nthreads93, align 4, !tbaa !0
  %cmp94 = icmp sgt i32 %44, 1
  br i1 %cmp94, label %if.then96, label %if.end101

if.then96:                                        ; preds = %lor.lhs.false92, %if.end86
  %45 = load %struct.t_vcm** %vcm, align 8, !tbaa !4
  call void @global_stat(%struct._IO_FILE* %log, %struct.t_commrec* %cr, float* %ener, [3 x float]* %arraydecay41, [3 x float]* %arraydecay42, %struct.t_grpopts* %opts, %struct.t_groups* %grps, %struct.t_nrnb* %mynrnb, %struct.t_nrnb* %nrnb, %struct.t_vcm* %45, float* %terminate) #5
  br label %if.end101

if.end101:                                        ; preds = %if.then96, %lor.lhs.false92
  call void @_where(i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 283) #5
  %46 = load i32* %nodeid, align 4, !tbaa !0
  %cmp103 = icmp eq i32 %46, 0
  br i1 %cmp103, label %land.lhs.true105, label %if.end125

land.lhs.true105:                                 ; preds = %if.end101
  %threadid106 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %47 = load i32* %threadid106, align 4, !tbaa !0
  %cmp107 = icmp eq i32 %47, 0
  br i1 %cmp107, label %if.then109, label %if.end125

if.then109:                                       ; preds = %land.lhs.true105
  %tmass = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 0
  %48 = load float* %tmass, align 4, !tbaa !3
  %arraydecay112 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %arraydecay115 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 3, i64 0
  %arraydecay116 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 4, i64 0
  %49 = load i32* %etc, align 4, !tbaa !0
  %cmp120 = icmp eq i32 %49, 2
  %conv121 = zext i1 %cmp120 to i32
  call void @upd_mdebin(%struct.t_mdebin* %call40, %struct._IO_FILE* null, float %48, i32 0, float 0.000000e+00, float* %ener, [3 x float]* %arraydecay112, [3 x float]* %arraydecay42, [3 x float]* %arraydecay41, [3 x float]* %arraydecay115, [3 x float]* %arraydecay116, %struct.t_groups* %grps, float* %arraydecay, i32 %conv121) #5
  call void @print_ebin_header(%struct._IO_FILE* %log, i32 0, float 0.000000e+00, float %41, float 0.000000e+00) #5
  call void @print_ebin(i32 %fp_ene.0, i32 1, i32 0, i32 0, %struct._IO_FILE* %log, i32 0, float 0.000000e+00, i32 0, i32 1, %struct.t_mdebin* %call40, %struct.t_fcdata* %fcd, %struct.t_atoms* %atoms) #5
  br label %if.end125

if.end125:                                        ; preds = %if.then109, %land.lhs.true105, %if.end101
  call void @_where(i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 296) #5
  %arrayidx126 = getelementptr inbounds float* %ener, i64 37
  %50 = load float* %arrayidx126, align 4, !tbaa !3
  %51 = load i32* %start, align 4, !tbaa !0
  %52 = load i32* %end, align 4, !tbaa !0
  %call129 = call fastcc float @f_norm(%struct.t_commrec* %cr, %struct.t_grpopts* %opts, %struct.t_mdatoms* %mdatoms, i32 %51, i32 %52, [3 x float]* %9) #4
  %53 = load i32* %nodeid, align 4, !tbaa !0
  %cmp131 = icmp eq i32 %53, 0
  %threadid134 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  br i1 %cmp131, label %land.lhs.true133, label %for.cond.preheader

land.lhs.true133:                                 ; preds = %if.end125
  %54 = load i32* %threadid134, align 4, !tbaa !0
  %cmp135 = icmp eq i32 %54, 0
  br i1 %cmp135, label %if.then137, label %for.cond.preheader

if.then137:                                       ; preds = %land.lhs.true133
  %55 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %conv138 = fpext float %call129 to double
  %call139 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([31 x i8]* @.str7, i64 0, i64 0), double %conv138) #5
  %56 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %56)
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end125, %land.lhs.true133, %if.then137
  %not.cmp144 = icmp slt i32 %30, 1
  %cmp1551008 = icmp slt i32 %51, %52
  %em_stepsize = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 59
  %nstlist = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 3
  %arraydecay251 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %nthreads264 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %57 = load %struct.t_vcm** %vcm, align 8, !tbaa !4
  %tobool484 = icmp eq i32 %4, 0
  %left = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %right = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %nnodes507 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1
  %tmass524 = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 0
  %arraydecay531 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 3, i64 0
  %arraydecay533 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 4, i64 0
  %cFREEZE = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 17
  %nFreeze = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 8
  %58 = sext i32 %51 to i64
  br label %lor.rhs143

lor.rhs143:                                       ; preds = %if.end542, %for.cond.preheader
  %count.01056 = phi i32 [ 1, %for.cond.preheader ], [ %inc548, %if.end542 ]
  %EpotA.01055 = phi float [ %50, %for.cond.preheader ], [ %116, %if.end542 ]
  %bDone.01054 = phi i32 [ 0, %for.cond.preheader ], [ %conv546, %if.end542 ]
  %beta.01053 = phi float [ 0.000000e+00, %for.cond.preheader ], [ %beta.1, %if.end542 ]
  %fnorm_old.01052 = phi float [ %call129, %for.cond.preheader ], [ %call467, %if.end542 ]
  %phitmp = icmp ne i32 %count.01056, %30
  %phitmp. = or i1 %phitmp, %not.cmp144
  br i1 %phitmp., label %for.body, label %for.end549

for.body:                                         ; preds = %lor.rhs143
  store double 0.000000e+00, double* %gpa, align 8, !tbaa !5
  br i1 %cmp1551008, label %for.body157.lr.ph, label %for.end198

for.body157.lr.ph:                                ; preds = %for.body
  %59 = load i16** %cFREEZE, align 8, !tbaa !4
  %60 = load [3 x i32]** %nFreeze, align 8, !tbaa !4
  br label %for.body157

for.body157:                                      ; preds = %for.body157.lr.ph, %for.inc196
  %61 = phi double [ 0.000000e+00, %for.body157.lr.ph ], [ %68, %for.inc196 ]
  %indvars.iv1057 = phi i64 [ %58, %for.body157.lr.ph ], [ %indvars.iv.next1058, %for.inc196 ]
  %arrayidx159 = getelementptr inbounds i16* %59, i64 %indvars.iv1057
  %62 = load i16* %arrayidx159, align 2, !tbaa !6
  %idxprom166 = zext i16 %62 to i64
  br label %for.body164

for.body164:                                      ; preds = %for.inc, %for.body157
  %63 = phi double [ %61, %for.body157 ], [ %68, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body157 ], [ %indvars.iv.next, %for.inc ]
  %arrayidx170 = getelementptr inbounds [3 x i32]* %60, i64 %idxprom166, i64 %indvars.iv
  %64 = load i32* %arrayidx170, align 4, !tbaa !0
  %tobool171 = icmp eq i32 %64, 0
  br i1 %tobool171, label %if.then172, label %for.inc

if.then172:                                       ; preds = %for.body164
  %arrayidx176 = getelementptr inbounds [3 x float]* %9, i64 %indvars.iv1057, i64 %indvars.iv
  %65 = load float* %arrayidx176, align 4, !tbaa !3
  %arrayidx180 = getelementptr inbounds [3 x float]* %7, i64 %indvars.iv1057, i64 %indvars.iv
  %66 = load float* %arrayidx180, align 4, !tbaa !3
  %mul = fmul float %beta.01053, %66
  %add = fadd float %65, %mul
  store float %add, float* %arrayidx180, align 4, !tbaa !3
  %67 = load float* %arrayidx176, align 4, !tbaa !3
  %mul193 = fmul float %add, %67
  %conv194 = fpext float %mul193 to double
  %sub = fsub double %63, %conv194
  store double %sub, double* %gpa, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body164, %if.then172
  %68 = phi double [ %63, %for.body164 ], [ %sub, %if.then172 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc196, label %for.body164

for.inc196:                                       ; preds = %for.inc
  %indvars.iv.next1058 = add i64 %indvars.iv1057, 1
  %69 = trunc i64 %indvars.iv.next1058 to i32
  %cmp155 = icmp slt i32 %69, %52
  br i1 %cmp155, label %for.body157, label %for.end198

for.end198:                                       ; preds = %for.inc196, %for.body
  %70 = load i32* %nnodes89, align 4, !tbaa !0
  %cmp200 = icmp sgt i32 %70, 1
  br i1 %cmp200, label %if.then206, label %lor.lhs.false202

lor.lhs.false202:                                 ; preds = %for.end198
  %71 = load i32* %nthreads264, align 4, !tbaa !0
  %cmp204 = icmp sgt i32 %71, 1
  br i1 %cmp204, label %if.then206, label %while.body.lr.ph

if.then206:                                       ; preds = %lor.lhs.false202, %for.end198
  call void @gmx_sumd(i32 1, double* %gpa, %struct.t_commrec* %cr) #5
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %lor.lhs.false202, %if.then206
  %call210 = call fastcc float @f_norm(%struct.t_commrec* %cr, %struct.t_grpopts* %opts, %struct.t_mdatoms* %mdatoms, i32 %51, i32 %52, [3 x float]* %7) #4
  %72 = load float* %em_stepsize, align 4, !tbaa !3
  %div = fdiv float %72, %call210
  br label %while.body

while.body:                                       ; preds = %if.else344, %while.body.lr.ph
  %EpotA.11026 = phi float [ %EpotA.01055, %while.body.lr.ph ], [ %91, %if.else344 ]
  %a.01025 = phi float [ 0.000000e+00, %while.body.lr.ph ], [ %b.01024, %if.else344 ]
  %b.01024 = phi float [ %div, %while.body.lr.ph ], [ %add345, %if.else344 ]
  br i1 %cmp1551008, label %for.cond217.preheader, label %for.end240

for.cond217.preheader:                            ; preds = %while.body, %for.inc238
  %indvars.iv1063 = phi i64 [ %indvars.iv.next1064, %for.inc238 ], [ %58, %while.body ]
  br label %for.body220

for.body220:                                      ; preds = %for.body220, %for.cond217.preheader
  %indvars.iv1059 = phi i64 [ 0, %for.cond217.preheader ], [ %indvars.iv.next1060, %for.body220 ]
  %arrayidx224 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv1063, i64 %indvars.iv1059
  %73 = load float* %arrayidx224, align 4, !tbaa !3
  %arrayidx228 = getelementptr inbounds [3 x float]* %7, i64 %indvars.iv1063, i64 %indvars.iv1059
  %74 = load float* %arrayidx228, align 4, !tbaa !3
  %mul229 = fmul float %b.01024, %74
  %add230 = fadd float %73, %mul229
  %arrayidx234 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv1063, i64 %indvars.iv1059
  store float %add230, float* %arrayidx234, align 4, !tbaa !3
  %indvars.iv.next1060 = add i64 %indvars.iv1059, 1
  %lftr.wideiv1061 = trunc i64 %indvars.iv.next1060 to i32
  %exitcond1062 = icmp eq i32 %lftr.wideiv1061, 3
  br i1 %exitcond1062, label %for.inc238, label %for.body220

for.inc238:                                       ; preds = %for.body220
  %indvars.iv.next1064 = add i64 %indvars.iv1063, 1
  %75 = trunc i64 %indvars.iv.next1064 to i32
  %cmp214 = icmp slt i32 %75, %52
  br i1 %cmp214, label %for.cond217.preheader, label %for.end240

for.end240:                                       ; preds = %for.inc238, %while.body
  %76 = load i32* %nstlist, align 4, !tbaa !0
  %cmp242 = icmp sgt i32 %76, 0
  %conv243 = zext i1 %cmp242 to i32
  br i1 %tobool, label %if.then245, label %if.end252

if.then245:                                       ; preds = %for.end240
  %77 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom247 = sext i32 %77 to i64
  %arrayidx248 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %idxprom247
  call void @construct_dummies(%struct._IO_FILE* %log, [3 x float]* %11, %struct.t_nrnb* %arrayidx248, float 1.000000e+00, [3 x float]* null, %struct.t_idef* %idef, %struct.t_graph* %graph, %struct.t_commrec* %cr, [3 x float]* %arraydecay251, %struct.t_comm_dummies* %dummycomm) #5
  br label %if.end252

if.end252:                                        ; preds = %if.then245, %for.end240
  %78 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom256 = sext i32 %78 to i64
  %arrayidx257 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %idxprom256
  br i1 %tobool71, label %land.rhs259, label %land.end270

land.rhs259:                                      ; preds = %if.end252
  %79 = load i32* %nnodes89, align 4, !tbaa !0
  %cmp261 = icmp sgt i32 %79, 1
  br i1 %cmp261, label %land.end270, label %lor.rhs263

lor.rhs263:                                       ; preds = %land.rhs259
  %80 = load i32* %nthreads264, align 4, !tbaa !0
  %phitmp1005 = icmp slt i32 %80, 2
  br label %land.end270

land.end270:                                      ; preds = %land.rhs259, %lor.rhs263, %if.end252
  %81 = phi i1 [ false, %if.end252 ], [ false, %land.rhs259 ], [ %phitmp1005, %lor.rhs263 ]
  %land.ext271 = zext i1 %81 to i32
  call void @do_force(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, [3 x float]* %arraydecay41, [3 x float]* %arraydecay67, i32 %count.01056, %struct.t_nrnb* %arrayidx257, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %11, [3 x float]* %buf, [3 x float]* %9, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, float* %ener, %struct.t_fcdata* %fcd, i32 %land.ext271, float %41, %struct.t_graph* %graph, i32 %conv243, i32 0, %struct.t_forcerec* %fr, float* %arraydecay, i32 0) #5
  br i1 %tobool, label %if.then274, label %if.end279

if.then274:                                       ; preds = %land.end270
  %82 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom276 = sext i32 %82 to i64
  %arrayidx277 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %idxprom276
  call void @spread_dummy_f(%struct._IO_FILE* %log, [3 x float]* %11, [3 x float]* %9, %struct.t_nrnb* %arrayidx277, %struct.t_idef* %idef, %struct.t_comm_dummies* %dummycomm, %struct.t_commrec* %cr) #5
  br label %if.end279

if.end279:                                        ; preds = %if.then274, %land.end270
  call void @sum_epot(%struct.t_grpopts* %opts, %struct.t_groups* %grps, float* %ener) #5
  call void @_where(i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 371) #5
  %83 = load i32* %nstlist, align 4, !tbaa !0
  %cmp284 = icmp sgt i32 %83, 0
  %conv285 = zext i1 %cmp284 to i32
  store double 0.000000e+00, double* %gpb, align 8, !tbaa !5
  br i1 %cmp1551008, label %for.cond290.preheader, label %for.end310

for.cond290.preheader:                            ; preds = %if.end279, %for.inc308
  %indvars.iv1069 = phi i64 [ %indvars.iv.next1070, %for.inc308 ], [ %58, %if.end279 ]
  %sub304.lcssa1018 = phi double [ %sub304, %for.inc308 ], [ 0.000000e+00, %if.end279 ]
  br label %for.body293

for.body293:                                      ; preds = %for.body293, %for.cond290.preheader
  %indvars.iv1065 = phi i64 [ 0, %for.cond290.preheader ], [ %indvars.iv.next1066, %for.body293 ]
  %sub3041014 = phi double [ %sub304.lcssa1018, %for.cond290.preheader ], [ %sub304, %for.body293 ]
  %arrayidx297 = getelementptr inbounds [3 x float]* %7, i64 %indvars.iv1069, i64 %indvars.iv1065
  %84 = load float* %arrayidx297, align 4, !tbaa !3
  %arrayidx301 = getelementptr inbounds [3 x float]* %9, i64 %indvars.iv1069, i64 %indvars.iv1065
  %85 = load float* %arrayidx301, align 4, !tbaa !3
  %mul302 = fmul float %84, %85
  %conv303 = fpext float %mul302 to double
  %sub304 = fsub double %sub3041014, %conv303
  %indvars.iv.next1066 = add i64 %indvars.iv1065, 1
  %lftr.wideiv1067 = trunc i64 %indvars.iv.next1066 to i32
  %exitcond1068 = icmp eq i32 %lftr.wideiv1067, 3
  br i1 %exitcond1068, label %for.inc308, label %for.body293

for.inc308:                                       ; preds = %for.body293
  %indvars.iv.next1070 = add i64 %indvars.iv1069, 1
  %86 = trunc i64 %indvars.iv.next1070 to i32
  %cmp287 = icmp slt i32 %86, %52
  br i1 %cmp287, label %for.cond290.preheader, label %for.cond286.for.end310_crit_edge

for.cond286.for.end310_crit_edge:                 ; preds = %for.inc308
  store double %sub304, double* %gpb, align 8, !tbaa !5
  br label %for.end310

for.end310:                                       ; preds = %for.cond286.for.end310_crit_edge, %if.end279
  %87 = load i32* %nnodes89, align 4, !tbaa !0
  %cmp312 = icmp sgt i32 %87, 1
  br i1 %cmp312, label %if.then318, label %lor.lhs.false314

lor.lhs.false314:                                 ; preds = %for.end310
  %88 = load i32* %nthreads264, align 4, !tbaa !0
  %cmp316 = icmp sgt i32 %88, 1
  br i1 %cmp316, label %if.then318, label %if.end319

if.then318:                                       ; preds = %lor.lhs.false314, %for.end310
  call void @gmx_sumd(i32 1, double* %gpb, %struct.t_commrec* %cr) #5
  br label %if.end319

if.end319:                                        ; preds = %if.then318, %lor.lhs.false314
  call void @sum_epot(%struct.t_grpopts* %opts, %struct.t_groups* %grps, float* %ener) #5
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 16, i1 false) #1
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 36, i32 16, i1 false) #1
  %89 = load i32* %nnodes89, align 4, !tbaa !0
  %cmp325 = icmp sgt i32 %89, 1
  br i1 %cmp325, label %if.then331, label %lor.lhs.false327

lor.lhs.false327:                                 ; preds = %if.end319
  %90 = load i32* %nthreads264, align 4, !tbaa !0
  %cmp329 = icmp sgt i32 %90, 1
  br i1 %cmp329, label %if.then331, label %if.end336

if.then331:                                       ; preds = %lor.lhs.false327, %if.end319
  call void @global_stat(%struct._IO_FILE* %log, %struct.t_commrec* %cr, float* %ener, [3 x float]* %arraydecay41, [3 x float]* %arraydecay42, %struct.t_grpopts* %opts, %struct.t_groups* %grps, %struct.t_nrnb* %mynrnb, %struct.t_nrnb* %nrnb, %struct.t_vcm* %57, float* %terminate) #5
  br label %if.end336

if.end336:                                        ; preds = %if.then331, %lor.lhs.false327
  %91 = load float* %arrayidx126, align 4, !tbaa !3
  %92 = load double* %gpb, align 8, !tbaa !5
  %cmp338 = fcmp ult double %92, 0.000000e+00
  %cmp341 = fcmp ult float %91, %EpotA.11026
  %or.cond = and i1 %cmp338, %cmp341
  br i1 %or.cond, label %if.else344, label %while.end

if.else344:                                       ; preds = %if.end336
  store double %92, double* %gpa, align 8, !tbaa !5
  %add345 = fadd float %b.01024, %b.01024
  br label %while.body

while.end:                                        ; preds = %if.end336
  %.pre = load double* %gpa, align 8, !tbaa !5
  %sub348 = fsub float %EpotA.11026, %91
  %conv349 = fpext float %sub348 to double
  %mul350 = fmul double %conv349, 3.000000e+00
  %sub351 = fsub float %b.01024, %a.01025
  %conv352 = fpext float %sub351 to double
  %div353 = fdiv double %mul350, %conv352
  %add354 = fadd double %div353, %.pre
  %add355 = fadd double %add354, %92
  %conv356 = fptrunc double %add355 to float
  %mul357 = fmul float %conv356, %conv356
  %conv358 = fpext float %mul357 to double
  %mul359 = fmul double %.pre, %92
  %sub360 = fsub double %conv358, %mul359
  %conv361 = fptrunc double %sub360 to float
  %conv362 = fpext float %conv361 to double
  %cmp363 = fcmp olt float %conv361, 0.000000e+00
  br i1 %cmp363, label %if.then365, label %if.end380

if.then365:                                       ; preds = %while.end
  %93 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %call367 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([21 x i8]* @.str9, i64 0, i64 0), double %conv362) #5
  %94 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %conv368 = fpext float %conv356 to double
  %call369 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), double %conv368) #5
  %95 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %96 = load double* %gpa, align 8, !tbaa !5
  %97 = load double* %gpb, align 8, !tbaa !5
  %call370 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([28 x i8]* @.str11, i64 0, i64 0), double %96, double %97) #5
  %98 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %conv371 = fpext float %a.01025 to double
  %conv372 = fpext float %b.01024 to double
  %call373 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([24 x i8]* @.str12, i64 0, i64 0), double %conv371, double %conv372) #5
  %99 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %conv374 = fpext float %EpotA.11026 to double
  %conv375 = fpext float %91 to double
  %call376 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([32 x i8]* @.str13, i64 0, i64 0), double %conv374, double %conv375) #5
  %100 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %call378 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([43 x i8]* @.str14, i64 0, i64 0), double %conv362) #5
  %101 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %102 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str15, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %101)
  br label %for.end549

if.end380:                                        ; preds = %while.end
  %conv383 = call float @sqrtf(float %conv361) #3
  %conv384 = fpext float %b.01024 to double
  %103 = load double* %gpb, align 8, !tbaa !5
  %conv385 = fpext float %conv383 to double
  %add386 = fadd double %103, %conv385
  %conv387 = fpext float %conv356 to double
  %sub388 = fsub double %add386, %conv387
  %mul391 = fmul double %conv352, %sub388
  %104 = load double* %gpa, align 8, !tbaa !5
  %sub392 = fsub double %103, %104
  %mul394 = fmul double %conv385, 2.000000e+00
  %add395 = fadd double %mul394, %sub392
  %div396 = fdiv double %mul391, %add395
  %sub397 = fsub double %conv384, %div396
  %conv398 = fptrunc double %sub397 to float
  br i1 %cmp1551008, label %for.cond403.preheader, label %for.end426

for.cond403.preheader:                            ; preds = %if.end380, %for.inc424
  %indvars.iv1081 = phi i64 [ %indvars.iv.next1082, %for.inc424 ], [ %58, %if.end380 ]
  br label %for.body406

for.body406:                                      ; preds = %for.body406, %for.cond403.preheader
  %indvars.iv1077 = phi i64 [ 0, %for.cond403.preheader ], [ %indvars.iv.next1078, %for.body406 ]
  %arrayidx410 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv1081, i64 %indvars.iv1077
  %105 = load float* %arrayidx410, align 4, !tbaa !3
  %arrayidx414 = getelementptr inbounds [3 x float]* %7, i64 %indvars.iv1081, i64 %indvars.iv1077
  %106 = load float* %arrayidx414, align 4, !tbaa !3
  %mul415 = fmul float %conv398, %106
  %add416 = fadd float %105, %mul415
  %arrayidx420 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv1081, i64 %indvars.iv1077
  store float %add416, float* %arrayidx420, align 4, !tbaa !3
  %indvars.iv.next1078 = add i64 %indvars.iv1077, 1
  %lftr.wideiv1079 = trunc i64 %indvars.iv.next1078 to i32
  %exitcond1080 = icmp eq i32 %lftr.wideiv1079, 3
  br i1 %exitcond1080, label %for.inc424, label %for.body406

for.inc424:                                       ; preds = %for.body406
  %indvars.iv.next1082 = add i64 %indvars.iv1081, 1
  %107 = trunc i64 %indvars.iv.next1082 to i32
  %cmp400 = icmp slt i32 %107, %52
  br i1 %cmp400, label %for.cond403.preheader, label %for.end426

for.end426:                                       ; preds = %for.inc424, %if.end380
  br i1 %tobool, label %if.then428, label %if.end435

if.then428:                                       ; preds = %for.end426
  %108 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom430 = sext i32 %108 to i64
  %arrayidx431 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %idxprom430
  call void @construct_dummies(%struct._IO_FILE* %log, [3 x float]* %11, %struct.t_nrnb* %arrayidx431, float 1.000000e+00, [3 x float]* null, %struct.t_idef* %idef, %struct.t_graph* %graph, %struct.t_commrec* %cr, [3 x float]* %arraydecay251, %struct.t_comm_dummies* %dummycomm) #5
  br label %if.end435

if.end435:                                        ; preds = %if.then428, %for.end426
  %109 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom439 = sext i32 %109 to i64
  %arrayidx440 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %idxprom439
  br i1 %tobool71, label %land.rhs442, label %land.end453

land.rhs442:                                      ; preds = %if.end435
  %110 = load i32* %nnodes89, align 4, !tbaa !0
  %cmp444 = icmp sgt i32 %110, 1
  br i1 %cmp444, label %land.end453, label %lor.rhs446

lor.rhs446:                                       ; preds = %land.rhs442
  %111 = load i32* %nthreads264, align 4, !tbaa !0
  %phitmp1004 = icmp slt i32 %111, 2
  br label %land.end453

land.end453:                                      ; preds = %land.rhs442, %lor.rhs446, %if.end435
  %112 = phi i1 [ false, %if.end435 ], [ false, %land.rhs442 ], [ %phitmp1004, %lor.rhs446 ]
  %land.ext454 = zext i1 %112 to i32
  call void @do_force(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, [3 x float]* %arraydecay41, [3 x float]* %arraydecay67, i32 %count.01056, %struct.t_nrnb* %arrayidx440, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %11, [3 x float]* %buf, [3 x float]* %9, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, float* %ener, %struct.t_fcdata* %fcd, i32 %land.ext454, float %41, %struct.t_graph* %graph, i32 %conv285, i32 0, %struct.t_forcerec* %fr, float* %arraydecay, i32 0) #5
  br i1 %tobool, label %if.then457, label %if.end462

if.then457:                                       ; preds = %land.end453
  %113 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom459 = sext i32 %113 to i64
  %arrayidx460 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %idxprom459
  call void @spread_dummy_f(%struct._IO_FILE* %log, [3 x float]* %11, [3 x float]* %9, %struct.t_nrnb* %arrayidx460, %struct.t_idef* %idef, %struct.t_comm_dummies* %dummycomm, %struct.t_commrec* %cr) #5
  br label %if.end462

if.end462:                                        ; preds = %if.then457, %land.end453
  call void @sum_epot(%struct.t_grpopts* %opts, %struct.t_groups* %grps, float* %ener) #5
  %call467 = call fastcc float @f_norm(%struct.t_commrec* %cr, %struct.t_grpopts* %opts, %struct.t_mdatoms* %mdatoms, i32 %51, i32 %52, [3 x float]* %9) #4
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 16, i1 false) #1
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 36, i32 16, i1 false) #1
  %114 = load i32* %nnodes89, align 4, !tbaa !0
  %cmp471 = icmp sgt i32 %114, 1
  br i1 %cmp471, label %if.then477, label %lor.lhs.false473

lor.lhs.false473:                                 ; preds = %if.end462
  %115 = load i32* %nthreads264, align 4, !tbaa !0
  %cmp475 = icmp sgt i32 %115, 1
  br i1 %cmp475, label %if.then477, label %if.end482

if.then477:                                       ; preds = %lor.lhs.false473, %if.end462
  call void @global_stat(%struct._IO_FILE* %log, %struct.t_commrec* %cr, float* %ener, [3 x float]* %arraydecay41, [3 x float]* %arraydecay42, %struct.t_grpopts* %opts, %struct.t_groups* %grps, %struct.t_nrnb* %mynrnb, %struct.t_nrnb* %nrnb, %struct.t_vcm* %57, float* %terminate) #5
  br label %if.end482

if.end482:                                        ; preds = %if.then477, %lor.lhs.false473
  %116 = load float* %arrayidx126, align 4, !tbaa !3
  br i1 %tobool484, label %if.else489, label %land.lhs.true485

land.lhs.true485:                                 ; preds = %if.end482
  %rem = srem i32 %count.01056, %4
  %cmp486 = icmp eq i32 %rem, 0
  br i1 %cmp486, label %if.end493, label %if.else489

if.else489:                                       ; preds = %if.end482, %land.lhs.true485
  %mul490 = fmul float %call467, %call467
  %mul491 = fmul float %fnorm_old.01052, %fnorm_old.01052
  %div492 = fdiv float %mul490, %mul491
  br label %if.end493

if.end493:                                        ; preds = %land.lhs.true485, %if.else489
  %beta.1 = phi float [ %div492, %if.else489 ], [ 0.000000e+00, %land.lhs.true485 ]
  br i1 %cmp1551008, label %for.body497, label %for.end506

for.body497:                                      ; preds = %if.end493, %for.body497
  %indvars.iv1083 = phi i64 [ %indvars.iv.next1084, %for.body497 ], [ %58, %if.end493 ]
  %arraydecay500 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv1083, i64 0
  %arraydecay503 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv1083, i64 0
  %117 = load float* %arraydecay500, align 4, !tbaa !3
  store float %117, float* %arraydecay503, align 4, !tbaa !3
  %arrayidx2.i = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv1083, i64 1
  %118 = load float* %arrayidx2.i, align 4, !tbaa !3
  %arrayidx3.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv1083, i64 1
  store float %118, float* %arrayidx3.i, align 4, !tbaa !3
  %arrayidx4.i = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv1083, i64 2
  %119 = load float* %arrayidx4.i, align 4, !tbaa !3
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv1083, i64 2
  store float %119, float* %arrayidx5.i, align 4, !tbaa !3
  %indvars.iv.next1084 = add i64 %indvars.iv1083, 1
  %120 = trunc i64 %indvars.iv.next1084 to i32
  %cmp495 = icmp slt i32 %120, %52
  br i1 %cmp495, label %for.body497, label %for.end506

for.end506:                                       ; preds = %for.body497, %if.end493
  %121 = load i32* %left, align 4, !tbaa !0
  %122 = load i32* %right, align 4, !tbaa !0
  %123 = load i32* %nnodes507, align 4, !tbaa !0
  %call510 = call fastcc float @f_max(i32 %121, i32 %122, i32 %123, %struct.t_grpopts* %opts, %struct.t_mdatoms* %mdatoms, i32 %51, i32 %52, [3 x float]* %9, i32* %nfmax) #4
  br i1 %tobool71, label %land.lhs.true512, label %if.end542

land.lhs.true512:                                 ; preds = %for.end506
  %124 = load i32* %nodeid, align 4, !tbaa !0
  %cmp514 = icmp eq i32 %124, 0
  br i1 %cmp514, label %land.lhs.true516, label %if.end542

land.lhs.true516:                                 ; preds = %land.lhs.true512
  %125 = load i32* %threadid134, align 4, !tbaa !0
  %cmp518 = icmp eq i32 %125, 0
  br i1 %cmp518, label %if.then520, label %if.end542

if.then520:                                       ; preds = %land.lhs.true516
  %126 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %conv521 = fpext float %116 to double
  %conv522 = fpext float %call510 to double
  %127 = load i32* %nfmax, align 4, !tbaa !0
  %call523 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([53 x i8]* @.str16, i64 0, i64 0), i32 %count.01056, double %conv521, double %conv522, i32 %127) #5
  %128 = load float* %tmass524, align 4, !tbaa !3
  %conv525 = sitofp i32 %count.01056 to float
  %129 = load i32* %etc, align 4, !tbaa !0
  %cmp537 = icmp eq i32 %129, 2
  %conv538 = zext i1 %cmp537 to i32
  call void @upd_mdebin(%struct.t_mdebin* %call40, %struct._IO_FILE* null, float %128, i32 %count.01056, float %conv525, float* %ener, [3 x float]* %arraydecay251, [3 x float]* %arraydecay42, [3 x float]* %arraydecay41, [3 x float]* %arraydecay531, [3 x float]* %arraydecay533, %struct.t_groups* %grps, float* %arraydecay, i32 %conv538) #5
  call void @print_ebin_header(%struct._IO_FILE* %log, i32 %count.01056, float %conv525, float %41, float 0.000000e+00) #5
  call void @print_ebin(i32 %fp_ene.0, i32 1, i32 0, i32 0, %struct._IO_FILE* %log, i32 %count.01056, float %conv525, i32 0, i32 1, %struct.t_mdebin* %call40, %struct.t_fcdata* %fcd, %struct.t_atoms* %atoms) #5
  br label %if.end542

if.end542:                                        ; preds = %if.then520, %land.lhs.true516, %land.lhs.true512, %for.end506
  %130 = load float* %em_tol59, align 4, !tbaa !3
  %cmp545 = fcmp olt float %call510, %130
  %conv546 = zext i1 %cmp545 to i32
  %inc548 = add nsw i32 %count.01056, 1
  br i1 %cmp545, label %for.end549, label %lor.rhs143

for.end549:                                       ; preds = %lor.rhs143, %if.end542, %if.then365
  %count.01051 = phi i32 [ %count.01056, %if.then365 ], [ %30, %lor.rhs143 ], [ %inc548, %if.end542 ]
  %bDone.01048 = phi i32 [ %bDone.01054, %if.then365 ], [ %bDone.01054, %lor.rhs143 ], [ %conv546, %if.end542 ]
  %EpotA.3 = phi float [ %EpotA.11026, %if.then365 ], [ %EpotA.01055, %lor.rhs143 ], [ %116, %if.end542 ]
  %131 = load i32* %nodeid, align 4, !tbaa !0
  %cmp551 = icmp eq i32 %131, 0
  br i1 %cmp551, label %land.lhs.true553, label %if.end559

land.lhs.true553:                                 ; preds = %for.end549
  %132 = load i32* %threadid134, align 4, !tbaa !0
  %cmp555 = icmp eq i32 %132, 0
  br i1 %cmp555, label %if.then557, label %if.end559

if.then557:                                       ; preds = %land.lhs.true553
  %133 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %134 = call i64 @fwrite(i8* getelementptr inbounds ([37 x i8]* @.str17, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %133)
  br label %if.end559

if.end559:                                        ; preds = %if.then557, %land.lhs.true553, %for.end549
  %call560 = call i8* @ftp2fn(i32 3, i32 %nfile, %struct.t_filenm* %fnm) #5
  %conv561 = sitofp i32 %count.01051 to float
  %135 = load i32* %natoms, align 4, !tbaa !0
  %call565 = call i32 @write_traj(%struct._IO_FILE* %log, %struct.t_commrec* %cr, i8* %call560, %struct.t_nsborder* %nsb, i32 %count.01051, float %conv561, float %41, %struct.t_nrnb* %nrnb, i32 %135, [3 x float]* %x, [3 x float]* null, [3 x float]* %9, [3 x float]* %arraydecay251) #5
  %136 = load i32* %nodeid, align 4, !tbaa !0
  %cmp567 = icmp eq i32 %136, 0
  br i1 %cmp567, label %land.lhs.true569, label %if.end578

land.lhs.true569:                                 ; preds = %if.end559
  %137 = load i32* %threadid134, align 4, !tbaa !0
  %cmp571 = icmp eq i32 %137, 0
  br i1 %cmp571, label %if.then573, label %if.end578

if.then573:                                       ; preds = %land.lhs.true569
  %call574 = call i8* @ftp2fn(i32 12, i32 %nfile, %struct.t_filenm* %fnm) #5
  %name = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0
  %138 = load i8*** %name, align 8, !tbaa !4
  %139 = load i8** %138, align 8, !tbaa !4
  call void @write_sto_conf(i8* %call574, i8* %139, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* null, [3 x float]* %arraydecay251) #5
  br label %if.end578

if.end578:                                        ; preds = %if.then573, %land.lhs.true569, %if.end559
  %140 = load i32* %left, align 4, !tbaa !0
  %141 = load i32* %right, align 4, !tbaa !0
  %142 = load i32* %nnodes507, align 4, !tbaa !0
  %call584 = call fastcc float @f_max(i32 %140, i32 %141, i32 %142, %struct.t_grpopts* %opts, %struct.t_mdatoms* %mdatoms, i32 %51, i32 %52, [3 x float]* %9, i32* %nfmax) #4
  %143 = load i32* %nodeid, align 4, !tbaa !0
  %cmp586 = icmp eq i32 %143, 0
  br i1 %cmp586, label %land.lhs.true588, label %if.end597

land.lhs.true588:                                 ; preds = %if.end578
  %144 = load i32* %threadid134, align 4, !tbaa !0
  %cmp590 = icmp eq i32 %144, 0
  br i1 %cmp590, label %if.then592, label %if.end597

if.then592:                                       ; preds = %land.lhs.true588
  %145 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %146 = load float* %em_tol59, align 4, !tbaa !3
  call fastcc void @print_converged(%struct._IO_FILE* %145, i8* getelementptr inbounds ([20 x i8]* @.str, i64 0, i64 0), float %146, i32 %count.01051, i32 %bDone.01048, i32 %30, float %EpotA.3, float %call584) #4
  %147 = load float* %em_tol59, align 4, !tbaa !3
  call fastcc void @print_converged(%struct._IO_FILE* %log, i8* getelementptr inbounds ([20 x i8]* @.str, i64 0, i64 0), float %147, i32 %count.01051, i32 %bDone.01048, i32 %30, float %EpotA.3, float %call584) #4
  call void @close_enx(i32 %fp_ene.0) #5
  br label %if.end597

if.end597:                                        ; preds = %if.then592, %land.lhs.true588, %if.end578
  store i32 %count.01051, i32* %nsteps, align 4, !tbaa !0
  call void @llvm.lifetime.end(i64 36, i8* %3) #1
  call void @llvm.lifetime.end(i64 36, i8* %2) #1
  call void @llvm.lifetime.end(i64 36, i8* %1) #1
  call void @llvm.lifetime.end(i64 1032, i8* %0) #1
  ret i64 %call
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @init_em(%struct._IO_FILE* %log, i8* %title, %struct.t_parm* %parm, float* nocapture %lambda, %struct.t_nrnb* %mynrnb, float* nocapture %mu_tot, float* %box_size, %struct.t_forcerec* nocapture %fr, %struct.t_mdatoms* %mdatoms, %struct.t_topology* %top, %struct.t_nsborder* nocapture %nsb, %struct.t_commrec* %cr, %struct.t_vcm** nocapture %vcm, i32* nocapture %start, i32* nocapture %end) #0 {
entry:
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([15 x i8]* @.str43, i64 0, i64 0), i8* %title) #5
  %efep = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 46
  %0 = load i32* %efep, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %init_lambda = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 47
  %1 = load float* %init_lambda, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %storemerge = phi float [ %1, %if.then ], [ 0.000000e+00, %entry ]
  store float %storemerge, float* %lambda, align 4, !tbaa !3
  tail call void @init_nrnb(%struct.t_nrnb* %mynrnb) #5
  store float 0.000000e+00, float* %mu_tot, align 4, !tbaa !3
  %arrayidx1.i = getelementptr inbounds float* %mu_tot, i64 1
  store float 0.000000e+00, float* %arrayidx1.i, align 4, !tbaa !3
  %arrayidx2.i = getelementptr inbounds float* %mu_tot, i64 2
  store float 0.000000e+00, float* %arrayidx2.i, align 4, !tbaa !3
  %arraydecay = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %shift_vec = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 48
  %2 = load [3 x float]** %shift_vec, align 8, !tbaa !4
  tail call void @calc_shifts([3 x float]* %arraydecay, float* %box_size, [3 x float]* %2) #5
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %3 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom
  %4 = load i32* %arrayidx, align 4, !tbaa !0
  store i32 %4, i32* %start, align 4, !tbaa !0
  %5 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom3
  %6 = load i32* %arrayidx4, align 4, !tbaa !0
  %add = add nsw i32 %6, %4
  store i32 %add, i32* %end, align 4, !tbaa !0
  %7 = load float* %lambda, align 4, !tbaa !3
  tail call void @init_mdatoms(%struct.t_mdatoms* %mdatoms, float %7, i32 1) #5
  %8 = load i32* %start, align 4, !tbaa !0
  %nodeid5 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %9 = load i32* %nodeid5, align 4, !tbaa !0
  %idxprom6 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom6
  %10 = load i32* %arrayidx8, align 4, !tbaa !0
  %nstcomm = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 7
  %11 = load i32* %nstcomm, align 4, !tbaa !0
  %call10 = tail call %struct.t_vcm* @init_vcm(%struct._IO_FILE* %log, %struct.t_topology* %top, %struct.t_commrec* %cr, %struct.t_mdatoms* %mdatoms, i32 %8, i32 %10, i32 %11) #5
  store %struct.t_vcm* %call10, %struct.t_vcm** %vcm, align 8, !tbaa !4
  ret void
}

; Function Attrs: optsize
declare i64 @print_date_and_time(%struct._IO_FILE*, i32, i8*) #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare void @set_pot_bools(%struct.t_inputrec*, %struct.t_topology*, i32*, i32*, i32*, i32*) #2

; Function Attrs: optsize
declare i32 @open_enx(i8*, i8*) #2

; Function Attrs: optsize
declare i8* @ftp2fn(i32, i32, %struct.t_filenm*) #2

; Function Attrs: optsize
declare %struct.t_mdebin* @init_mdebin(i32, %struct.t_groups*, %struct.t_atoms*, %struct.t_idef*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.t_commrec*) #2

; Function Attrs: optsize
declare void @do_pbc_first(%struct._IO_FILE*, %struct.t_parm*, float*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @sp_header(%struct._IO_FILE* nocapture %out, i8* %minimizer, float %ftol, i32 %nsteps) #0 {
entry:
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([5 x i8]* @.str40, i64 0, i64 0), i8* %minimizer) #5
  %conv = fpext float %ftol to double
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([31 x i8]* @.str41, i64 0, i64 0), double %conv) #5
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([29 x i8]* @.str42, i64 0, i64 0), i32 %nsteps) #5
  ret void
}

; Function Attrs: optsize
declare void @construct_dummies(%struct._IO_FILE*, [3 x float]*, %struct.t_nrnb*, float, [3 x float]*, %struct.t_idef*, %struct.t_graph*, %struct.t_commrec*, [3 x float]*, %struct.t_comm_dummies*) #2

; Function Attrs: optsize
declare void @do_force(%struct._IO_FILE*, %struct.t_commrec*, %struct.t_commrec*, %struct.t_parm*, %struct.t_nsborder*, [3 x float]*, [3 x float]*, i32, %struct.t_nrnb*, %struct.t_topology*, %struct.t_groups*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_mdatoms*, float*, %struct.t_fcdata*, i32, float, %struct.t_graph*, i32, i32, %struct.t_forcerec*, float*, i32) #2

; Function Attrs: optsize
declare void @_where(i8*, i32) #2

; Function Attrs: optsize
declare void @spread_dummy_f(%struct._IO_FILE*, [3 x float]*, [3 x float]*, %struct.t_nrnb*, %struct.t_idef*, %struct.t_comm_dummies*, %struct.t_commrec*) #2

; Function Attrs: optsize
declare void @sum_epot(%struct.t_grpopts*, %struct.t_groups*, float*) #2

; Function Attrs: optsize
declare void @global_stat(%struct._IO_FILE*, %struct.t_commrec*, float*, [3 x float]*, [3 x float]*, %struct.t_grpopts*, %struct.t_groups*, %struct.t_nrnb*, %struct.t_nrnb*, %struct.t_vcm*, float*) #2

; Function Attrs: optsize
declare void @upd_mdebin(%struct.t_mdebin*, %struct._IO_FILE*, float, i32, float, float*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_groups*, float*, i32) #2

; Function Attrs: optsize
declare void @print_ebin_header(%struct._IO_FILE*, i32, float, float, float) #2

; Function Attrs: optsize
declare void @print_ebin(i32, i32, i32, i32, %struct._IO_FILE*, i32, float, i32, i32, %struct.t_mdebin*, %struct.t_fcdata*, %struct.t_atoms*) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc float @f_norm(%struct.t_commrec* %cr, %struct.t_grpopts* nocapture %opts, %struct.t_mdatoms* nocapture %mdatoms, i32 %start, i32 %end, [3 x float]* nocapture %grad) #0 {
entry:
  %fnorm2 = alloca double, align 8
  store double 0.000000e+00, double* %fnorm2, align 8, !tbaa !5
  %cmp34 = icmp slt i32 %start, %end
  br i1 %cmp34, label %for.body.lr.ph, label %for.end16

for.body.lr.ph:                                   ; preds = %entry
  %cFREEZE = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 17
  %0 = load i16** %cFREEZE, align 8, !tbaa !4
  %nFreeze = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 8
  %1 = load [3 x i32]** %nFreeze, align 8, !tbaa !4
  %2 = sext i32 %start to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc14
  %3 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %8, %for.inc14 ]
  %indvars.iv36 = phi i64 [ %2, %for.body.lr.ph ], [ %indvars.iv.next37, %for.inc14 ]
  %arrayidx = getelementptr inbounds i16* %0, i64 %indvars.iv36
  %4 = load i16* %arrayidx, align 2, !tbaa !6
  %idxprom6 = zext i16 %4 to i64
  br label %for.body4

for.body4:                                        ; preds = %for.inc, %for.body
  %5 = phi double [ %3, %for.body ], [ %8, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.inc ]
  %arrayidx8 = getelementptr inbounds [3 x i32]* %1, i64 %idxprom6, i64 %indvars.iv
  %6 = load i32* %arrayidx8, align 4, !tbaa !0
  %tobool = icmp eq i32 %6, 0
  br i1 %tobool, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body4
  %arrayidx12 = getelementptr inbounds [3 x float]* %grad, i64 %indvars.iv36, i64 %indvars.iv
  %7 = load float* %arrayidx12, align 4, !tbaa !3
  %mul.i = fmul float %7, %7
  %conv13 = fpext float %mul.i to double
  %add = fadd double %5, %conv13
  store double %add, double* %fnorm2, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body4, %if.then
  %8 = phi double [ %5, %for.body4 ], [ %add, %if.then ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc14, label %for.body4

for.inc14:                                        ; preds = %for.inc
  %indvars.iv.next37 = add i64 %indvars.iv36, 1
  %9 = trunc i64 %indvars.iv.next37 to i32
  %cmp = icmp slt i32 %9, %end
  br i1 %cmp, label %for.body, label %for.end16

for.end16:                                        ; preds = %for.inc14, %entry
  %10 = phi double [ 0.000000e+00, %entry ], [ %8, %for.inc14 ]
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %11 = load i32* %nnodes, align 4, !tbaa !0
  %cmp17 = icmp sgt i32 %11, 1
  br i1 %cmp17, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end16
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %12 = load i32* %nthreads, align 4, !tbaa !0
  %cmp19 = icmp sgt i32 %12, 1
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %lor.lhs.false, %for.end16
  call void @gmx_sumd(i32 1, double* %fnorm2, %struct.t_commrec* %cr) #5
  %.pre = load double* %fnorm2, align 8, !tbaa !5
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %lor.lhs.false
  %13 = phi double [ %.pre, %if.then21 ], [ %10, %lor.lhs.false ]
  %call23 = call double @sqrt(double %13) #5
  %conv24 = fptrunc double %call23 to float
  ret float %conv24
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @gmx_sumd(i32, double*, %struct.t_commrec*) #2

; Function Attrs: nounwind optsize
declare double @sqrt(double) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc float @f_max(i32 %left, i32 %right, i32 %nnodes, %struct.t_grpopts* nocapture %opts, %struct.t_mdatoms* nocapture %mdatoms, i32 %start, i32 %end, [3 x float]* nocapture %grad, i32* %nfmax) #0 {
entry:
  %fmax2 = alloca float, align 4
  %fmax2_0 = alloca float, align 4
  %nfm = alloca float, align 4
  store float 0.000000e+00, float* %fmax2, align 4, !tbaa !3
  store float -1.000000e+00, float* %nfm, align 4, !tbaa !3
  %cmp65 = icmp slt i32 %start, %end
  br i1 %cmp65, label %for.body.lr.ph, label %for.end20

for.body.lr.ph:                                   ; preds = %entry
  %cFREEZE = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 17
  %0 = load i16** %cFREEZE, align 8, !tbaa !4
  %nFreeze = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 8
  %1 = load [3 x i32]** %nFreeze, align 8, !tbaa !4
  %2 = sext i32 %start to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc18
  %3 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %9, %for.inc18 ]
  %4 = phi float [ -1.000000e+00, %for.body.lr.ph ], [ %10, %for.inc18 ]
  %indvars.iv68 = phi i64 [ %2, %for.body.lr.ph ], [ %indvars.iv.next69, %for.inc18 ]
  %arrayidx = getelementptr inbounds i16* %0, i64 %indvars.iv68
  %5 = load i16* %arrayidx, align 2, !tbaa !6
  %idxprom6 = zext i16 %5 to i64
  br label %for.body4

for.body4:                                        ; preds = %for.inc, %for.body
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.inc ]
  %fam.064 = phi float [ 0.000000e+00, %for.body ], [ %fam.1, %for.inc ]
  %arrayidx8 = getelementptr inbounds [3 x i32]* %1, i64 %idxprom6, i64 %indvars.iv
  %6 = load i32* %arrayidx8, align 4, !tbaa !0
  %tobool = icmp eq i32 %6, 0
  br i1 %tobool, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body4
  %arrayidx12 = getelementptr inbounds [3 x float]* %grad, i64 %indvars.iv68, i64 %indvars.iv
  %7 = load float* %arrayidx12, align 4, !tbaa !3
  %mul.i = fmul float %7, %7
  %add = fadd float %fam.064, %mul.i
  br label %for.inc

for.inc:                                          ; preds = %for.body4, %if.then
  %fam.1 = phi float [ %fam.064, %for.body4 ], [ %add, %if.then ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond67 = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond67, label %for.end, label %for.body4

for.end:                                          ; preds = %for.inc
  %cmp13 = fcmp ogt float %fam.1, %3
  br i1 %cmp13, label %if.then15, label %for.inc18

if.then15:                                        ; preds = %for.end
  store float %fam.1, float* %fmax2, align 4, !tbaa !3
  %8 = trunc i64 %indvars.iv68 to i32
  %conv16 = sitofp i32 %8 to float
  store float %conv16, float* %nfm, align 4, !tbaa !3
  br label %for.inc18

for.inc18:                                        ; preds = %for.end, %if.then15
  %9 = phi float [ %3, %for.end ], [ %fam.1, %if.then15 ]
  %10 = phi float [ %4, %for.end ], [ %conv16, %if.then15 ]
  %indvars.iv.next69 = add i64 %indvars.iv68, 1
  %11 = trunc i64 %indvars.iv.next69 to i32
  %cmp = icmp slt i32 %11, %end
  br i1 %cmp, label %for.body, label %for.end20

for.end20:                                        ; preds = %for.inc18, %entry
  %12 = phi float [ 0.000000e+00, %entry ], [ %9, %for.inc18 ]
  %13 = phi float [ -1.000000e+00, %entry ], [ %10, %for.inc18 ]
  %conv21 = fptosi float %13 to i32
  store i32 %conv21, i32* %nfmax, align 4, !tbaa !0
  %cmp22 = icmp sgt i32 %nnodes, 1
  br i1 %cmp22, label %for.cond25.preheader, label %if.end37

for.cond25.preheader:                             ; preds = %for.end20
  %sub = add i32 %nnodes, -1
  %cmp2661 = icmp sgt i32 %sub, 0
  br i1 %cmp2661, label %for.body28.lr.ph, label %if.end37

for.body28.lr.ph:                                 ; preds = %for.cond25.preheader
  %14 = bitcast float* %fmax2 to i8*
  %15 = bitcast float* %fmax2_0 to i8*
  %16 = bitcast i32* %nfmax to i8*
  %17 = bitcast float* %nfm to i8*
  br label %for.body28

for.body28:                                       ; preds = %for.inc34, %for.body28.lr.ph
  %i.162 = phi i32 [ 0, %for.body28.lr.ph ], [ %inc35, %for.inc34 ]
  call void @gmx_tx(i32 %left, i8* %14, i32 4) #5
  call void @gmx_rx(i32 %right, i8* %15, i32 4) #5
  call void @gmx_wait(i32 %left, i32 %right) #5
  call void @gmx_tx(i32 %left, i8* %16, i32 4) #5
  call void @gmx_rx(i32 %right, i8* %17, i32 4) #5
  call void @gmx_wait(i32 %left, i32 %right) #5
  %18 = load float* %fmax2_0, align 4, !tbaa !3
  %19 = load float* %fmax2, align 4, !tbaa !3
  %cmp29 = fcmp ogt float %18, %19
  br i1 %cmp29, label %if.then31, label %for.inc34

if.then31:                                        ; preds = %for.body28
  store float %18, float* %fmax2, align 4, !tbaa !3
  %20 = load float* %nfm, align 4, !tbaa !3
  %conv32 = fptosi float %20 to i32
  store i32 %conv32, i32* %nfmax, align 4, !tbaa !0
  br label %for.inc34

for.inc34:                                        ; preds = %for.body28, %if.then31
  %21 = phi float [ %19, %for.body28 ], [ %18, %if.then31 ]
  %inc35 = add nsw i32 %i.162, 1
  %exitcond = icmp eq i32 %inc35, %sub
  br i1 %exitcond, label %if.end37, label %for.body28

if.end37:                                         ; preds = %for.cond25.preheader, %for.inc34, %for.end20
  %22 = phi float [ %12, %for.end20 ], [ %12, %for.cond25.preheader ], [ %21, %for.inc34 ]
  %conv40 = call float @sqrtf(float %22) #3
  ret float %conv40
}

; Function Attrs: optsize
declare i32 @write_traj(%struct._IO_FILE*, %struct.t_commrec*, i8*, %struct.t_nsborder*, i32, float, float, %struct.t_nrnb*, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*) #2

; Function Attrs: optsize
declare void @write_sto_conf(i8*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, [3 x float]*) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @print_converged(%struct._IO_FILE* nocapture %fp, i8* %alg, float %ftol, i32 %count, i32 %bDone, i32 %nsteps, float %epot, float %fmax) #0 {
entry:
  %tobool = icmp eq i32 %bDone, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv = fpext float %ftol to double
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([33 x i8]* @.str36, i64 0, i64 0), i8* %alg, double %conv, i32 %count) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %cmp = icmp slt i32 %count, %nsteps
  %cond = select i1 %cmp, i32 %count, i32 %nsteps
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([34 x i8]* @.str37, i64 0, i64 0), i8* %alg, i32 %cond) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv3 = fpext float %epot to double
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([30 x i8]* @.str38, i64 0, i64 0), double %conv3) #5
  %conv5 = fpext float %fmax to double
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([23 x i8]* @.str39, i64 0, i64 0), double %conv5) #5
  ret void
}

; Function Attrs: optsize
declare void @close_enx(i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i64 @do_steep(%struct._IO_FILE* %log, i32 %nfile, %struct.t_filenm* %fnm, %struct.t_parm* %parm, %struct.t_topology* %top, %struct.t_groups* %grps, %struct.t_nsborder* %nsb, [3 x float]* %x, [3 x float]* nocapture %grad, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, [3 x float]* nocapture %ekin, float* %ener, %struct.t_fcdata* %fcd, %struct.t_nrnb* %nrnb, i32 %bVerbose, i32 %bDummies, %struct.t_comm_dummies* %dummycomm, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_graph* %graph, %struct.t_forcerec* %fr, float* %box_size) #0 {
entry:
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
  %0 = bitcast %struct.t_nrnb* %mynrnb to i8*
  call void @llvm.lifetime.start(i64 1032, i8* %0) #1
  %1 = bitcast [3 x [3 x float]]* %force_vir to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #1
  %2 = bitcast [3 x [3 x float]]* %shake_vir to i8*
  call void @llvm.lifetime.start(i64 36, i8* %2) #1
  %3 = bitcast [3 x [3 x float]]* %pme_vir to i8*
  call void @llvm.lifetime.start(i64 36, i8* %3) #1
  store float 0.000000e+00, float* %terminate, align 4, !tbaa !3
  %arraydecay = getelementptr inbounds [3 x float]* %mu_tot, i64 0, i64 0
  call fastcc void @init_em(%struct._IO_FILE* %log, i8* getelementptr inbounds ([18 x i8]* @.str18, i64 0, i64 0), %struct.t_parm* %parm, float* %lambda, %struct.t_nrnb* %mynrnb, float* %arraydecay, float* %box_size, %struct.t_forcerec* %fr, %struct.t_mdatoms* %mdatoms, %struct.t_topology* %top, %struct.t_nsborder* %nsb, %struct.t_commrec* %cr, %struct.t_vcm** %vcm, i32* %start, i32* %end) #4
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %4 = load i32* %nodeid, align 4, !tbaa !0
  %call = call i64 @print_date_and_time(%struct._IO_FILE* %log, i32 %4, i8* getelementptr inbounds ([26 x i8]* @.str19, i64 0, i64 0)) #5
  %natoms = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv918 = phi i64 [ 0, %entry ], [ %indvars.iv.next919, %for.body ]
  %5 = load i32* %natoms, align 4, !tbaa !0
  %call1 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 571, i32 %5, i32 12) #5
  %6 = bitcast i8* %call1 to [3 x float]*
  %arrayidx = getelementptr inbounds [2 x [3 x float]*]* %pos, i64 0, i64 %indvars.iv918
  store [3 x float]* %6, [3 x float]** %arrayidx, align 8, !tbaa !4
  %7 = load i32* %natoms, align 4, !tbaa !0
  %call3 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 572, i32 %7, i32 12) #5
  %8 = bitcast i8* %call3 to [3 x float]*
  %arrayidx5 = getelementptr inbounds [2 x [3 x float]*]* %force, i64 0, i64 %indvars.iv918
  store [3 x float]* %8, [3 x float]** %arrayidx5, align 8, !tbaa !4
  %indvars.iv.next919 = add i64 %indvars.iv918, 1
  %lftr.wideiv920 = trunc i64 %indvars.iv.next919 to i32
  %exitcond921 = icmp eq i32 %lftr.wideiv920, 2
  br i1 %exitcond921, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %ir = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0
  call void @set_pot_bools(%struct.t_inputrec* %ir, %struct.t_topology* %top, i32* %bLR, i32* %bLJLR, i32* %bBHAM, i32* %b14) #5
  %9 = load i32* %nodeid, align 4, !tbaa !0
  %cmp7 = icmp eq i32 %9, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %threadid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %10 = load i32* %threadid, align 4, !tbaa !0
  %cmp8 = icmp eq i32 %10, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call9 = call i8* @ftp2fn(i32 8, i32 %nfile, %struct.t_filenm* %fnm) #5
  %call10 = call i32 @open_enx(i8* %call9, i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #5
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true, %if.then
  %fp_ene.0 = phi i32 [ %call10, %if.then ], [ -1, %land.lhs.true ], [ -1, %for.end ]
  %atoms = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2
  %idef = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1
  %11 = load i32* %bLR, align 4, !tbaa !0
  %12 = load i32* %bLJLR, align 4, !tbaa !0
  %13 = load i32* %bBHAM, align 4, !tbaa !0
  %14 = load i32* %b14, align 4, !tbaa !0
  %efep = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 46
  %15 = load i32* %efep, align 4, !tbaa !0
  %cmp12 = icmp ne i32 %15, 0
  %conv = zext i1 %cmp12 to i32
  %epc = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 28
  %16 = load i32* %epc, align 4, !tbaa !0
  %eDispCorr = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 43
  %17 = load i32* %eDispCorr, align 4, !tbaa !0
  %arrayidx17 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 32, i64 1, i64 0
  %18 = load float* %arrayidx17, align 4, !tbaa !3
  %fabsf = call float @fabsf(float %18) #6
  %19 = fpext float %fabsf to double
  %cmp20 = fcmp ogt double %19, 1.200000e-38
  br i1 %cmp20, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx25 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 32, i64 2, i64 0
  %20 = load float* %arrayidx25, align 4, !tbaa !3
  %fabsf870 = call float @fabsf(float %20) #6
  %21 = fpext float %fabsf870 to double
  %cmp28 = fcmp ogt double %21, 1.200000e-38
  br i1 %cmp28, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %arrayidx33 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 32, i64 2, i64 1
  %22 = load float* %arrayidx33, align 4, !tbaa !3
  %fabsf871 = call float @fabsf(float %22) #6
  %23 = fpext float %fabsf871 to double
  %cmp36 = fcmp ogt double %23, 1.200000e-38
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.end
  %24 = phi i1 [ true, %lor.lhs.false ], [ true, %if.end ], [ %cmp36, %lor.rhs ]
  %lor.ext = zext i1 %24 to i32
  %etc = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 27
  %25 = load i32* %etc, align 4, !tbaa !0
  %cmp39 = icmp eq i32 %25, 2
  %conv40 = zext i1 %cmp39 to i32
  %call41 = call %struct.t_mdebin* @init_mdebin(i32 %fp_ene.0, %struct.t_groups* %grps, %struct.t_atoms* %atoms, %struct.t_idef* %idef, i32 %11, i32 %12, i32 %13, i32 %14, i32 %conv, i32 %16, i32 %17, i32 %lor.ext, i32 %conv40, %struct.t_commrec* %cr) #5
  %arraydecay42 = getelementptr inbounds [3 x [3 x float]]* %force_vir, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 16, i1 false) #1
  %arraydecay43 = getelementptr inbounds [3 x [3 x float]]* %shake_vir, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 36, i32 16, i1 false) #1
  %ePBC = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 0
  %26 = load i32* %ePBC, align 4, !tbaa !0
  %cmp44 = icmp eq i32 %26, 1
  br i1 %cmp44, label %if.end47, label %if.then46

if.then46:                                        ; preds = %lor.end
  call void @do_pbc_first(%struct._IO_FILE* %log, %struct.t_parm* %parm, float* %box_size, %struct.t_forcerec* %fr, %struct.t_graph* %graph, [3 x float]* %x) #5
  br label %if.end47

if.end47:                                         ; preds = %lor.end, %if.then46
  %27 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !4
  %28 = load i32* %start, align 4, !tbaa !0
  %29 = load i32* %end, align 4, !tbaa !0
  %call49 = call i32 @init_constraints(%struct._IO_FILE* %27, %struct.t_topology* %top, %struct.t_inputrec* %ir, %struct.t_mdatoms* %mdatoms, i32 %28, i32 %29, i32 0, %struct.t_commrec* %cr) #5
  %tobool = icmp ne i32 %call49, 0
  br i1 %tobool, label %if.then50, label %if.end53

if.then50:                                        ; preds = %if.end47
  %30 = load i32* %natoms, align 4, !tbaa !0
  %call52 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 603, i32 %30, i32 12) #5
  %31 = bitcast i8* %call52 to [3 x float]*
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end47
  %xcf.0 = phi [3 x float]* [ %31, %if.then50 ], [ null, %if.end47 ]
  %32 = load i32* %natoms, align 4, !tbaa !0
  %cmp56897 = icmp sgt i32 %32, 0
  br i1 %cmp56897, label %for.body58.lr.ph, label %for.end77

for.body58.lr.ph:                                 ; preds = %if.end53
  %arrayidx64 = getelementptr inbounds [2 x [3 x float]*]* %pos, i64 0, i64 0
  %33 = load [3 x float]** %arrayidx64, align 16, !tbaa !4
  %arrayidx72 = getelementptr inbounds [2 x [3 x float]*]* %pos, i64 0, i64 1
  %34 = load [3 x float]** %arrayidx72, align 8, !tbaa !4
  br label %for.body58

for.body58:                                       ; preds = %for.body58.lr.ph, %for.body58
  %indvars.iv916 = phi i64 [ 0, %for.body58.lr.ph ], [ %indvars.iv.next917, %for.body58 ]
  %arraydecay61 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv916, i64 0
  %arraydecay66 = getelementptr inbounds [3 x float]* %33, i64 %indvars.iv916, i64 0
  %35 = load float* %arraydecay61, align 4, !tbaa !3
  store float %35, float* %arraydecay66, align 4, !tbaa !3
  %arrayidx2.i872 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv916, i64 1
  %36 = load float* %arrayidx2.i872, align 4, !tbaa !3
  %arrayidx3.i873 = getelementptr inbounds [3 x float]* %33, i64 %indvars.iv916, i64 1
  store float %36, float* %arrayidx3.i873, align 4, !tbaa !3
  %arrayidx4.i874 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv916, i64 2
  %37 = load float* %arrayidx4.i874, align 4, !tbaa !3
  %arrayidx5.i875 = getelementptr inbounds [3 x float]* %33, i64 %indvars.iv916, i64 2
  store float %37, float* %arrayidx5.i875, align 4, !tbaa !3
  %arraydecay74 = getelementptr inbounds [3 x float]* %34, i64 %indvars.iv916, i64 0
  %38 = load float* %arraydecay61, align 4, !tbaa !3
  store float %38, float* %arraydecay74, align 4, !tbaa !3
  %39 = load float* %arrayidx2.i872, align 4, !tbaa !3
  %arrayidx3.i877 = getelementptr inbounds [3 x float]* %34, i64 %indvars.iv916, i64 1
  store float %39, float* %arrayidx3.i877, align 4, !tbaa !3
  %40 = load float* %arrayidx4.i874, align 4, !tbaa !3
  %arrayidx5.i879 = getelementptr inbounds [3 x float]* %34, i64 %indvars.iv916, i64 2
  store float %40, float* %arrayidx5.i879, align 4, !tbaa !3
  %indvars.iv.next917 = add i64 %indvars.iv916, 1
  %41 = trunc i64 %indvars.iv.next917 to i32
  %cmp56 = icmp slt i32 %41, %32
  br i1 %cmp56, label %for.body58, label %for.end77

for.end77:                                        ; preds = %for.body58, %if.end53
  %em_stepsize = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 59
  %42 = load float* %em_stepsize, align 4, !tbaa !3
  %nsteps80 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 1
  %43 = load i32* %nsteps80, align 4, !tbaa !0
  %44 = load i32* %nodeid, align 4, !tbaa !0
  %cmp82 = icmp eq i32 %44, 0
  %threadid85 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  br i1 %cmp82, label %land.lhs.true84, label %if.end90

land.lhs.true84:                                  ; preds = %for.end77
  %45 = load i32* %threadid85, align 4, !tbaa !0
  %cmp86 = icmp eq i32 %45, 0
  br i1 %cmp86, label %if.then88, label %if.end90

if.then88:                                        ; preds = %land.lhs.true84
  %46 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %em_tol = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 60
  %47 = load float* %em_tol, align 4, !tbaa !3
  call fastcc void @sp_header(%struct._IO_FILE* %46, i8* getelementptr inbounds ([18 x i8]* @.str18, i64 0, i64 0), float %47, i32 %43) #4
  br label %if.end90

if.end90:                                         ; preds = %for.end77, %if.then88, %land.lhs.true84
  %em_tol92 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 60
  %48 = load float* %em_tol92, align 4, !tbaa !3
  call fastcc void @sp_header(%struct._IO_FILE* %log, i8* getelementptr inbounds ([18 x i8]* @.str18, i64 0, i64 0), float %48, i32 %43) #4
  %cmp95 = icmp sgt i32 %43, 0
  %cmp105883 = icmp slt i32 %28, %29
  %cFREEZE = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 17
  %nFreeze = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 8
  %arraydecay171 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %49 = load float* %lambda, align 4, !tbaa !3
  %tobool174 = icmp ne i32 %bDummies, 0
  %arraydecay187 = getelementptr inbounds [3 x [3 x float]]* %pme_vir, i64 0, i64 0
  %tobool197 = icmp ne i32 %bVerbose, 0
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %nstlist = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 3
  %opts232 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80
  %left = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %right = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %nnodes245 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1
  %50 = load %struct.t_vcm** %vcm, align 8, !tbaa !4
  %arrayidx355 = getelementptr inbounds float* %ener, i64 37
  %tmass = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 0
  %arraydecay411 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 3, i64 0
  %arraydecay412 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 4, i64 0
  %nstdisreout = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 54
  %nstorireout = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 58
  %nstfout = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 11
  %nstxout = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 9
  %51 = sext i32 %28 to i64
  br label %while.body

while.body:                                       ; preds = %if.end90, %if.end500
  %stepsize.0896 = phi float [ 0.000000e+00, %if.end90 ], [ %div491, %if.end500 ]
  %steps_accepted.0895 = phi i32 [ 0, %if.end90 ], [ %steps_accepted.1, %if.end500 ]
  %Min.0894 = phi i32 [ 0, %if.end90 ], [ %Min.1, %if.end500 ]
  %count.0893 = phi i32 [ 0, %if.end90 ], [ %inc501, %if.end500 ]
  %bDone.0892 = phi i32 [ 0, %if.end90 ], [ %bDone.1, %if.end500 ]
  %ustep.0891 = phi float [ %42, %if.end90 ], [ %ustep.1, %if.end500 ]
  %cmp98 = icmp eq i32 %count.0893, %43
  %cmp98. = and i1 %cmp95, %cmp98
  %land.ext = zext i1 %cmp98. to i32
  %cmp101 = icmp sgt i32 %count.0893, 0
  %brmerge.demorgan = and i1 %cmp101, %cmp105883
  br i1 %brmerge.demorgan, label %for.body107.lr.ph, label %if.end162

for.body107.lr.ph:                                ; preds = %while.body
  %52 = load i16** %cFREEZE, align 8, !tbaa !4
  %53 = load [3 x i32]** %nFreeze, align 8, !tbaa !4
  %idxprom124 = sext i32 %Min.0894 to i64
  %arrayidx125 = getelementptr inbounds [2 x [3 x float]*]* %pos, i64 0, i64 %idxprom124
  %54 = load [3 x float]** %arrayidx125, align 8, !tbaa !4
  %arrayidx145 = getelementptr inbounds [2 x [3 x float]*]* %force, i64 0, i64 %idxprom124
  %sub150 = sub nsw i32 1, %Min.0894
  %idxprom151 = sext i32 %sub150 to i64
  %arrayidx152 = getelementptr inbounds [2 x [3 x float]*]* %pos, i64 0, i64 %idxprom151
  br label %for.body107

for.body107:                                      ; preds = %for.body107.lr.ph, %for.inc159
  %indvars.iv902 = phi i64 [ %51, %for.body107.lr.ph ], [ %indvars.iv.next903, %for.inc159 ]
  %arrayidx109 = getelementptr inbounds i16* %52, i64 %indvars.iv902
  %55 = load i16* %arrayidx109, align 2, !tbaa !6
  %idxprom116 = zext i16 %55 to i64
  br label %for.body114

for.body114:                                      ; preds = %for.inc156, %for.body107
  %indvars.iv900 = phi i64 [ 0, %for.body107 ], [ %indvars.iv.next901, %for.inc156 ]
  %arrayidx119 = getelementptr inbounds [3 x i32]* %53, i64 %idxprom116, i64 %indvars.iv900
  %56 = load i32* %arrayidx119, align 4, !tbaa !0
  %tobool120 = icmp eq i32 %56, 0
  %arrayidx127 = getelementptr inbounds [3 x float]* %54, i64 %indvars.iv902, i64 %indvars.iv900
  %57 = load float* %arrayidx127, align 4, !tbaa !3
  br i1 %tobool120, label %if.else135, label %if.then121

if.then121:                                       ; preds = %for.body114
  %58 = load [3 x float]** %arrayidx152, align 8, !tbaa !4
  %arrayidx134 = getelementptr inbounds [3 x float]* %58, i64 %indvars.iv902, i64 %indvars.iv900
  store float %57, float* %arrayidx134, align 4, !tbaa !3
  br label %for.inc156

if.else135:                                       ; preds = %for.body114
  %59 = load [3 x float]** %arrayidx145, align 8, !tbaa !4
  %arrayidx147 = getelementptr inbounds [3 x float]* %59, i64 %indvars.iv902, i64 %indvars.iv900
  %60 = load float* %arrayidx147, align 4, !tbaa !3
  %mul = fmul float %stepsize.0896, %60
  %add = fadd float %57, %mul
  %61 = load [3 x float]** %arrayidx152, align 8, !tbaa !4
  %arrayidx154 = getelementptr inbounds [3 x float]* %61, i64 %indvars.iv902, i64 %indvars.iv900
  store float %add, float* %arrayidx154, align 4, !tbaa !3
  br label %for.inc156

for.inc156:                                       ; preds = %if.then121, %if.else135
  %indvars.iv.next901 = add i64 %indvars.iv900, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next901 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc159, label %for.body114

for.inc159:                                       ; preds = %for.inc156
  %indvars.iv.next903 = add i64 %indvars.iv902, 1
  %62 = trunc i64 %indvars.iv.next903 to i32
  %cmp105 = icmp slt i32 %62, %29
  br i1 %cmp105, label %for.body107, label %if.end162

if.end162:                                        ; preds = %while.body, %for.inc159
  br i1 %tobool, label %if.then164, label %if.end173

if.then164:                                       ; preds = %if.end162
  store float 0.000000e+00, float* %dvdlambda, align 4, !tbaa !3
  %63 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !4
  %idxprom166 = sext i32 %Min.0894 to i64
  %arrayidx167 = getelementptr inbounds [2 x [3 x float]*]* %pos, i64 0, i64 %idxprom166
  %64 = load [3 x float]** %arrayidx167, align 8, !tbaa !4
  %sub168 = sub nsw i32 1, %Min.0894
  %idxprom169 = sext i32 %sub168 to i64
  %arrayidx170 = getelementptr inbounds [2 x [3 x float]*]* %pos, i64 0, i64 %idxprom169
  %65 = load [3 x float]** %arrayidx170, align 8, !tbaa !4
  %call172 = call i32 @constrain(%struct._IO_FILE* %63, %struct.t_topology* %top, %struct.t_inputrec* %ir, i32 %count.0893, %struct.t_mdatoms* %mdatoms, i32 %28, i32 %29, [3 x float]* %64, [3 x float]* %65, [3 x float]* null, [3 x float]* %arraydecay171, float %49, float* %dvdlambda, %struct.t_nrnb* %nrnb, i32 1) #5
  br label %if.end173

if.end173:                                        ; preds = %if.then164, %if.end162
  %sub176 = sub nsw i32 1, %Min.0894
  %idxprom177 = sext i32 %sub176 to i64
  %arrayidx178 = getelementptr inbounds [2 x [3 x float]*]* %pos, i64 0, i64 %idxprom177
  br i1 %tobool174, label %if.then175, label %if.end185

if.then175:                                       ; preds = %if.end173
  %66 = load [3 x float]** %arrayidx178, align 8, !tbaa !4
  %67 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom180 = sext i32 %67 to i64
  %arrayidx181 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %idxprom180
  call void @construct_dummies(%struct._IO_FILE* %log, [3 x float]* %66, %struct.t_nrnb* %arrayidx181, float 1.000000e+00, [3 x float]* null, %struct.t_idef* %idef, %struct.t_graph* %graph, %struct.t_commrec* %cr, [3 x float]* %arraydecay171, %struct.t_comm_dummies* %dummycomm) #5
  br label %if.end185

if.end185:                                        ; preds = %if.end173, %if.then175
  %68 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom189 = sext i32 %68 to i64
  %arrayidx190 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %idxprom189
  %69 = load [3 x float]** %arrayidx178, align 8, !tbaa !4
  %arrayidx196 = getelementptr inbounds [2 x [3 x float]*]* %force, i64 0, i64 %idxprom177
  %70 = load [3 x float]** %arrayidx196, align 8, !tbaa !4
  br i1 %tobool197, label %land.rhs198, label %land.end207

land.rhs198:                                      ; preds = %if.end185
  %71 = load i32* %nnodes, align 4, !tbaa !0
  %cmp199 = icmp sgt i32 %71, 1
  br i1 %cmp199, label %land.end207, label %lor.rhs201

lor.rhs201:                                       ; preds = %land.rhs198
  %72 = load i32* %nthreads, align 4, !tbaa !0
  %phitmp = icmp slt i32 %72, 2
  br label %land.end207

land.end207:                                      ; preds = %land.rhs198, %lor.rhs201, %if.end185
  %73 = phi i1 [ false, %if.end185 ], [ false, %land.rhs198 ], [ %phitmp, %lor.rhs201 ]
  %land.ext208 = zext i1 %73 to i32
  %74 = load i32* %nstlist, align 4, !tbaa !0
  %cmp210 = icmp sgt i32 %74, 0
  %cmp213 = icmp eq i32 %count.0893, 0
  %.cmp213 = or i1 %cmp210, %cmp213
  %lor.ext216 = zext i1 %.cmp213 to i32
  call void @do_force(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, [3 x float]* %arraydecay42, [3 x float]* %arraydecay187, i32 %count.0893, %struct.t_nrnb* %arrayidx190, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %69, [3 x float]* %buf, [3 x float]* %70, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, float* %ener, %struct.t_fcdata* %fcd, i32 %land.ext208, float %49, %struct.t_graph* %graph, i32 %lor.ext216, i32 0, %struct.t_forcerec* %fr, float* %arraydecay, i32 0) #5
  br i1 %tobool174, label %if.then219, label %if.end230

if.then219:                                       ; preds = %land.end207
  %75 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom227 = sext i32 %75 to i64
  %arrayidx228 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %idxprom227
  call void @spread_dummy_f(%struct._IO_FILE* %log, [3 x float]* %69, [3 x float]* %70, %struct.t_nrnb* %arrayidx228, %struct.t_idef* %idef, %struct.t_comm_dummies* %dummycomm, %struct.t_commrec* %cr) #5
  br label %if.end230

if.end230:                                        ; preds = %if.then219, %land.end207
  call void @sum_epot(%struct.t_grpopts* %opts232, %struct.t_groups* %grps, float* %ener) #5
  %76 = load i32* %nodeid, align 4, !tbaa !0
  %cmp234 = icmp eq i32 %76, 0
  br i1 %cmp234, label %land.lhs.true236, label %if.end242

land.lhs.true236:                                 ; preds = %if.end230
  %77 = load i32* %threadid85, align 4, !tbaa !0
  %cmp238 = icmp eq i32 %77, 0
  br i1 %cmp238, label %if.then240, label %if.end242

if.then240:                                       ; preds = %land.lhs.true236
  %conv241 = sitofp i32 %count.0893 to float
  call void @print_ebin_header(%struct._IO_FILE* %log, i32 %count.0893, float %conv241, float %49, float 0.000000e+00) #5
  br label %if.end242

if.end242:                                        ; preds = %if.then240, %land.lhs.true236, %if.end230
  br i1 %tobool, label %if.then244, label %if.end327

if.then244:                                       ; preds = %if.end242
  %78 = load i32* %left, align 4, !tbaa !0
  %79 = load i32* %right, align 4, !tbaa !0
  %80 = load i32* %nnodes245, align 4, !tbaa !0
  %call251 = call fastcc float @f_max(i32 %78, i32 %79, i32 %80, %struct.t_grpopts* %opts232, %struct.t_mdatoms* %mdatoms, i32 %28, i32 %29, [3 x float]* %70, i32* %nfmax) #4
  %div = fdiv float %ustep.0891, %call251
  br i1 %cmp105883, label %for.cond256.preheader, label %for.end285.thread

for.end285.thread:                                ; preds = %if.then244
  store float 0.000000e+00, float* %dvdlambda, align 4, !tbaa !3
  %81 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !4
  %call292924 = call i32 @constrain(%struct._IO_FILE* %81, %struct.t_topology* %top, %struct.t_inputrec* %ir, i32 %count.0893, %struct.t_mdatoms* %mdatoms, i32 %28, i32 %29, [3 x float]* %69, [3 x float]* %xcf.0, [3 x float]* null, [3 x float]* %arraydecay171, float %49, float* %dvdlambda, %struct.t_nrnb* %nrnb, i32 1) #5
  br label %if.end327

for.cond256.preheader:                            ; preds = %if.then244, %for.inc283
  %indvars.iv908 = phi i64 [ %indvars.iv.next909, %for.inc283 ], [ %51, %if.then244 ]
  br label %for.body259

for.body259:                                      ; preds = %for.body259, %for.cond256.preheader
  %indvars.iv904 = phi i64 [ 0, %for.cond256.preheader ], [ %indvars.iv.next905, %for.body259 ]
  %arrayidx266 = getelementptr inbounds [3 x float]* %69, i64 %indvars.iv908, i64 %indvars.iv904
  %82 = load float* %arrayidx266, align 4, !tbaa !3
  %arrayidx273 = getelementptr inbounds [3 x float]* %70, i64 %indvars.iv908, i64 %indvars.iv904
  %83 = load float* %arrayidx273, align 4, !tbaa !3
  %mul274 = fmul float %div, %83
  %add275 = fadd float %82, %mul274
  %arrayidx279 = getelementptr inbounds [3 x float]* %xcf.0, i64 %indvars.iv908, i64 %indvars.iv904
  store float %add275, float* %arrayidx279, align 4, !tbaa !3
  %indvars.iv.next905 = add i64 %indvars.iv904, 1
  %lftr.wideiv906 = trunc i64 %indvars.iv.next905 to i32
  %exitcond907 = icmp eq i32 %lftr.wideiv906, 3
  br i1 %exitcond907, label %for.inc283, label %for.body259

for.inc283:                                       ; preds = %for.body259
  %indvars.iv.next909 = add i64 %indvars.iv908, 1
  %84 = trunc i64 %indvars.iv.next909 to i32
  %cmp253 = icmp slt i32 %84, %29
  br i1 %cmp253, label %for.cond256.preheader, label %for.end285

for.end285:                                       ; preds = %for.inc283
  store float 0.000000e+00, float* %dvdlambda, align 4, !tbaa !3
  %85 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !4
  %call292 = call i32 @constrain(%struct._IO_FILE* %85, %struct.t_topology* %top, %struct.t_inputrec* %ir, i32 %count.0893, %struct.t_mdatoms* %mdatoms, i32 %28, i32 %29, [3 x float]* %69, [3 x float]* %xcf.0, [3 x float]* null, [3 x float]* %arraydecay171, float %49, float* %dvdlambda, %struct.t_nrnb* %nrnb, i32 1) #5
  br i1 %cmp105883, label %for.cond297.preheader, label %if.end327

for.cond297.preheader:                            ; preds = %for.end285, %for.inc324
  %indvars.iv914 = phi i64 [ %indvars.iv.next915, %for.inc324 ], [ %51, %for.end285 ]
  br label %for.body300

for.body300:                                      ; preds = %for.body300, %for.cond297.preheader
  %indvars.iv910 = phi i64 [ 0, %for.cond297.preheader ], [ %indvars.iv.next911, %for.body300 ]
  %arrayidx304 = getelementptr inbounds [3 x float]* %xcf.0, i64 %indvars.iv914, i64 %indvars.iv910
  %86 = load float* %arrayidx304, align 4, !tbaa !3
  %arrayidx311 = getelementptr inbounds [3 x float]* %69, i64 %indvars.iv914, i64 %indvars.iv910
  %87 = load float* %arrayidx311, align 4, !tbaa !3
  %sub312 = fsub float %86, %87
  %div313 = fdiv float %sub312, %div
  %arrayidx320 = getelementptr inbounds [3 x float]* %70, i64 %indvars.iv914, i64 %indvars.iv910
  store float %div313, float* %arrayidx320, align 4, !tbaa !3
  %indvars.iv.next911 = add i64 %indvars.iv910, 1
  %lftr.wideiv912 = trunc i64 %indvars.iv.next911 to i32
  %exitcond913 = icmp eq i32 %lftr.wideiv912, 3
  br i1 %exitcond913, label %for.inc324, label %for.body300

for.inc324:                                       ; preds = %for.body300
  %indvars.iv.next915 = add i64 %indvars.iv914, 1
  %88 = trunc i64 %indvars.iv.next915 to i32
  %cmp294 = icmp slt i32 %88, %29
  br i1 %cmp294, label %for.cond297.preheader, label %if.end327

if.end327:                                        ; preds = %for.end285, %for.end285.thread, %for.inc324, %if.end242
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 16, i1 false) #1
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 36, i32 16, i1 false) #1
  %89 = load i32* %nnodes, align 4, !tbaa !0
  %cmp331 = icmp sgt i32 %89, 1
  br i1 %cmp331, label %if.then337, label %lor.lhs.false333

lor.lhs.false333:                                 ; preds = %if.end327
  %90 = load i32* %nthreads, align 4, !tbaa !0
  %cmp335 = icmp sgt i32 %90, 1
  br i1 %cmp335, label %if.then337, label %if.end342

if.then337:                                       ; preds = %lor.lhs.false333, %if.end327
  call void @global_stat(%struct._IO_FILE* %log, %struct.t_commrec* %cr, float* %ener, [3 x float]* %arraydecay42, [3 x float]* %arraydecay43, %struct.t_grpopts* %opts232, %struct.t_groups* %grps, %struct.t_nrnb* %mynrnb, %struct.t_nrnb* %nrnb, %struct.t_vcm* %50, float* %terminate) #5
  br label %if.end342

if.end342:                                        ; preds = %if.then337, %lor.lhs.false333
  %91 = load i32* %left, align 4, !tbaa !0
  %92 = load i32* %right, align 4, !tbaa !0
  %93 = load i32* %nnodes245, align 4, !tbaa !0
  %call351 = call fastcc float @f_max(i32 %91, i32 %92, i32 %93, %struct.t_grpopts* %opts232, %struct.t_mdatoms* %mdatoms, i32 %28, i32 %29, [3 x float]* %70, i32* %nfmax) #4
  %arrayidx354 = getelementptr inbounds [2 x float]* %Fmax, i64 0, i64 %idxprom177
  store float %call351, float* %arrayidx354, align 4, !tbaa !3
  %94 = load float* %arrayidx355, align 4, !tbaa !3
  %arrayidx358 = getelementptr inbounds [2 x float]* %Epot, i64 0, i64 %idxprom177
  store float %94, float* %arrayidx358, align 4, !tbaa !3
  br i1 %cmp213, label %if.then361, label %if.end368

if.then361:                                       ; preds = %if.end342
  %add365 = fadd float %94, 1.000000e+00
  %idxprom366 = sext i32 %Min.0894 to i64
  %arrayidx367 = getelementptr inbounds [2 x float]* %Epot, i64 0, i64 %idxprom366
  store float %add365, float* %arrayidx367, align 4, !tbaa !3
  br label %if.end368

if.end368:                                        ; preds = %if.then361, %if.end342
  %95 = load i32* %nodeid, align 4, !tbaa !0
  %cmp370 = icmp eq i32 %95, 0
  br i1 %cmp370, label %land.lhs.true372, label %if.end426

land.lhs.true372:                                 ; preds = %if.end368
  %96 = load i32* %threadid85, align 4, !tbaa !0
  %cmp374 = icmp eq i32 %96, 0
  br i1 %cmp374, label %if.then376, label %if.end426

if.then376:                                       ; preds = %land.lhs.true372
  br i1 %tobool197, label %if.then378, label %if.then376.if.end397_crit_edge

if.then376.if.end397_crit_edge:                   ; preds = %if.then376
  %.pre922 = load float* %arrayidx358, align 4, !tbaa !3
  %idxprom401.phi.trans.insert = sext i32 %Min.0894 to i64
  %arrayidx402.phi.trans.insert = getelementptr inbounds [2 x float]* %Epot, i64 0, i64 %idxprom401.phi.trans.insert
  %.pre923 = load float* %arrayidx402.phi.trans.insert, align 4, !tbaa !3
  br label %if.end397

if.then378:                                       ; preds = %if.then376
  %97 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %conv379 = fpext float %ustep.0891 to double
  %98 = load float* %arrayidx358, align 4, !tbaa !3
  %conv383 = fpext float %98 to double
  %conv387 = fpext float %call351 to double
  %99 = load i32* %nfmax, align 4, !tbaa !0
  %add388 = add nsw i32 %99, 1
  %idxprom392 = sext i32 %Min.0894 to i64
  %arrayidx393 = getelementptr inbounds [2 x float]* %Epot, i64 0, i64 %idxprom392
  %100 = load float* %arrayidx393, align 4, !tbaa !3
  %cmp394 = fcmp olt float %98, %100
  %cond = select i1 %cmp394, i32 10, i32 13
  %call396 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([64 x i8]* @.str23, i64 0, i64 0), i32 %count.0893, double %conv379, double %conv383, double %conv387, i32 %add388, i32 %cond) #5
  br label %if.end397

if.end397:                                        ; preds = %if.then376.if.end397_crit_edge, %if.then378
  %101 = phi float [ %.pre923, %if.then376.if.end397_crit_edge ], [ %100, %if.then378 ]
  %102 = phi float [ %.pre922, %if.then376.if.end397_crit_edge ], [ %98, %if.then378 ]
  %cmp403 = fcmp olt float %102, %101
  br i1 %cmp403, label %if.then405, label %if.end426

if.then405:                                       ; preds = %if.end397
  %103 = load float* %tmass, align 4, !tbaa !3
  %conv406 = sitofp i32 %count.0893 to float
  %104 = load i32* %etc, align 4, !tbaa !0
  %cmp416 = icmp eq i32 %104, 2
  %conv417 = zext i1 %cmp416 to i32
  call void @upd_mdebin(%struct.t_mdebin* %call41, %struct._IO_FILE* null, float %103, i32 %count.0893, float %conv406, float* %ener, [3 x float]* %arraydecay171, [3 x float]* %arraydecay43, [3 x float]* %arraydecay42, [3 x float]* %arraydecay411, [3 x float]* %arraydecay412, %struct.t_groups* %grps, float* %arraydecay, i32 %conv417) #5
  %105 = load i32* %nstdisreout, align 4, !tbaa !0
  %call419 = call i32 @do_per_step(i32 %steps_accepted.0895, i32 %105) #5
  %106 = load i32* %nstorireout, align 4, !tbaa !0
  %call421 = call i32 @do_per_step(i32 %steps_accepted.0895, i32 %106) #5
  call void @print_ebin(i32 %fp_ene.0, i32 1, i32 %call419, i32 %call421, %struct._IO_FILE* %log, i32 %count.0893, float %conv406, i32 0, i32 1, %struct.t_mdebin* %call41, %struct.t_fcdata* %fcd, %struct.t_atoms* %atoms) #5
  %call424 = call i32 @fflush(%struct._IO_FILE* %log) #5
  br label %if.end426

if.end426:                                        ; preds = %if.end397, %if.then405, %land.lhs.true372, %if.end368
  br i1 %cmp213, label %if.then437, label %lor.lhs.false429

lor.lhs.false429:                                 ; preds = %if.end426
  %107 = load float* %arrayidx358, align 4, !tbaa !3
  %idxprom433 = sext i32 %Min.0894 to i64
  %arrayidx434 = getelementptr inbounds [2 x float]* %Epot, i64 0, i64 %idxprom433
  %108 = load float* %arrayidx434, align 4, !tbaa !3
  %cmp435 = fcmp olt float %107, %108
  br i1 %cmp435, label %if.then437, label %if.else478

if.then437:                                       ; preds = %lor.lhs.false429, %if.end426
  %inc438 = add nsw i32 %steps_accepted.0895, 1
  %109 = load i32* %nstfout, align 4, !tbaa !0
  %call440 = call i32 @do_per_step(i32 %inc438, i32 %109) #5
  %110 = load i32* %nstxout, align 4, !tbaa !0
  %call449 = call i32 @do_per_step(i32 %inc438, i32 %110) #5
  %tobool450 = icmp eq i32 %call449, 0
  br i1 %tobool450, label %if.end462, label %if.then451

if.then451:                                       ; preds = %if.then437
  %tobool441 = icmp eq i32 %call440, 0
  %. = select i1 %tobool441, [3 x float]* null, [3 x float]* %70
  %call455 = call i8* @ftp2fn(i32 3, i32 %nfile, %struct.t_filenm* %fnm) #5
  %conv456 = sitofp i32 %count.0893 to float
  %111 = load i32* %natoms, align 4, !tbaa !0
  %call460 = call i32 @write_traj(%struct._IO_FILE* %log, %struct.t_commrec* %cr, i8* %call455, %struct.t_nsborder* %nsb, i32 %count.0893, float %conv456, float %49, %struct.t_nrnb* %nrnb, i32 %111, [3 x float]* %69, [3 x float]* null, [3 x float]* %., [3 x float]* %arraydecay171) #5
  br label %if.end462

if.end462:                                        ; preds = %if.then437, %if.then451
  %112 = load float* %em_tol92, align 4, !tbaa !3
  %cmp468 = fcmp olt float %call351, %112
  %conv469 = zext i1 %cmp468 to i32
  br i1 %cmp101, label %if.then473, label %if.end482

if.then473:                                       ; preds = %if.end462
  %conv474 = fpext float %ustep.0891 to double
  %mul475 = fmul double %conv474, 1.200000e+00
  %conv476 = fptrunc double %mul475 to float
  br label %if.end482

if.else478:                                       ; preds = %lor.lhs.false429
  %conv481 = fmul float %ustep.0891, 5.000000e-01
  %arrayidx489.phi.trans.insert = getelementptr inbounds [2 x [3 x float]*]* %force, i64 0, i64 %idxprom433
  %.pre = load [3 x float]** %arrayidx489.phi.trans.insert, align 8, !tbaa !4
  br label %if.end482

if.end482:                                        ; preds = %if.end462, %if.then473, %if.else478
  %113 = phi [3 x float]* [ %70, %if.then473 ], [ %70, %if.end462 ], [ %.pre, %if.else478 ]
  %ustep.1 = phi float [ %conv476, %if.then473 ], [ %ustep.0891, %if.end462 ], [ %conv481, %if.else478 ]
  %bDone.1 = phi i32 [ %conv469, %if.then473 ], [ %conv469, %if.end462 ], [ %bDone.0892, %if.else478 ]
  %Min.1 = phi i32 [ %sub176, %if.then473 ], [ %sub176, %if.end462 ], [ %Min.0894, %if.else478 ]
  %steps_accepted.1 = phi i32 [ %inc438, %if.then473 ], [ %inc438, %if.end462 ], [ %steps_accepted.0895, %if.else478 ]
  %114 = load i32* %left, align 4, !tbaa !0
  %115 = load i32* %right, align 4, !tbaa !0
  %116 = load i32* %nnodes245, align 4, !tbaa !0
  %idxprom488 = sext i32 %Min.1 to i64
  %arrayidx489 = getelementptr inbounds [2 x [3 x float]*]* %force, i64 0, i64 %idxprom488
  %call490 = call fastcc float @f_max(i32 %114, i32 %115, i32 %116, %struct.t_grpopts* %opts232, %struct.t_mdatoms* %mdatoms, i32 %28, i32 %29, [3 x float]* %113, i32* %nfmax) #4
  %div491 = fdiv float %ustep.1, %call490
  %conv492 = fpext float %ustep.1 to double
  %cmp493 = fcmp olt double %conv492, 1.000000e-06
  br i1 %cmp493, label %if.then495, label %if.end500

if.then495:                                       ; preds = %if.end482
  %117 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %118 = load float* %em_tol92, align 4, !tbaa !3
  call fastcc void @warn_step(%struct._IO_FILE* %117, float %ustep.1, float %118, i32 %call49) #4
  %119 = load float* %em_tol92, align 4, !tbaa !3
  call fastcc void @warn_step(%struct._IO_FILE* %log, float %ustep.1, float %119, i32 %call49) #4
  br label %if.end500

if.end500:                                        ; preds = %if.then495, %if.end482
  %bAbort.1 = phi i32 [ 1, %if.then495 ], [ %land.ext, %if.end482 ]
  %inc501 = add nsw i32 %count.0893, 1
  %120 = or i32 %bAbort.1, %bDone.1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %while.body, label %while.end

while.end:                                        ; preds = %if.end500
  %122 = load i32* %nodeid, align 4, !tbaa !0
  %cmp503 = icmp eq i32 %122, 0
  br i1 %cmp503, label %land.lhs.true505, label %if.end511

land.lhs.true505:                                 ; preds = %while.end
  %123 = load i32* %threadid85, align 4, !tbaa !0
  %cmp507 = icmp eq i32 %123, 0
  br i1 %cmp507, label %if.then509, label %if.end511

if.then509:                                       ; preds = %land.lhs.true505
  %124 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %125 = call i64 @fwrite(i8* getelementptr inbounds ([37 x i8]* @.str17, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %124)
  br label %if.end511

if.end511:                                        ; preds = %land.lhs.true505, %while.end, %if.then509
  %arrayidx513 = getelementptr inbounds [2 x [3 x float]*]* %pos, i64 0, i64 %idxprom488
  %126 = load [3 x float]** %arrayidx513, align 8, !tbaa !4
  %127 = load [3 x float]** %arrayidx489, align 8, !tbaa !4
  %call516 = call i8* @ftp2fn(i32 3, i32 %nfile, %struct.t_filenm* %fnm) #5
  %conv517 = sitofp i32 %inc501 to float
  %128 = load i32* %natoms, align 4, !tbaa !0
  %call521 = call i32 @write_traj(%struct._IO_FILE* %log, %struct.t_commrec* %cr, i8* %call516, %struct.t_nsborder* %nsb, i32 %inc501, float %conv517, float %49, %struct.t_nrnb* %nrnb, i32 %128, [3 x float]* %126, [3 x float]* null, [3 x float]* %127, [3 x float]* %arraydecay171) #5
  %129 = load i32* %nodeid, align 4, !tbaa !0
  %cmp523 = icmp eq i32 %129, 0
  br i1 %cmp523, label %land.lhs.true525, label %for.cond547.preheader

land.lhs.true525:                                 ; preds = %if.end511
  %130 = load i32* %threadid85, align 4, !tbaa !0
  %cmp527 = icmp eq i32 %130, 0
  br i1 %cmp527, label %if.then529, label %for.cond547.preheader

if.then529:                                       ; preds = %land.lhs.true525
  %call530 = call i8* @ftp2fn(i32 12, i32 %nfile, %struct.t_filenm* %fnm) #5
  %name = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0
  %131 = load i8*** %name, align 8, !tbaa !4
  %132 = load i8** %131, align 8, !tbaa !4
  call void @write_sto_conf(i8* %call530, i8* %132, %struct.t_atoms* %atoms, [3 x float]* %126, [3 x float]* null, [3 x float]* %arraydecay171) #5
  %133 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %134 = load float* %em_tol92, align 4, !tbaa !3
  %arrayidx537 = getelementptr inbounds [2 x float]* %Epot, i64 0, i64 %idxprom488
  %135 = load float* %arrayidx537, align 4, !tbaa !3
  %arrayidx539 = getelementptr inbounds [2 x float]* %Fmax, i64 0, i64 %idxprom488
  %136 = load float* %arrayidx539, align 4, !tbaa !3
  call fastcc void @print_converged(%struct._IO_FILE* %133, i8* getelementptr inbounds ([18 x i8]* @.str18, i64 0, i64 0), float %134, i32 %inc501, i32 %bDone.1, i32 %43, float %135, float %136) #4
  %137 = load float* %em_tol92, align 4, !tbaa !3
  call fastcc void @print_converged(%struct._IO_FILE* %log, i8* getelementptr inbounds ([18 x i8]* @.str18, i64 0, i64 0), float %137, i32 %inc501, i32 %bDone.1, i32 %43, float %135, float %136) #4
  call void @close_enx(i32 %fp_ene.0) #5
  br label %for.cond547.preheader

for.cond547.preheader:                            ; preds = %if.then529, %land.lhs.true525, %if.end511
  %138 = load i32* %natoms, align 4, !tbaa !0
  %cmp549880 = icmp sgt i32 %138, 0
  br i1 %cmp549880, label %for.body551, label %for.end562

for.body551:                                      ; preds = %for.cond547.preheader, %for.body551
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body551 ], [ 0, %for.cond547.preheader ]
  %arraydecay556 = getelementptr inbounds [3 x float]* %126, i64 %indvars.iv, i64 0
  %arraydecay559 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %139 = load float* %arraydecay556, align 4, !tbaa !3
  store float %139, float* %arraydecay559, align 4, !tbaa !3
  %arrayidx2.i = getelementptr inbounds [3 x float]* %126, i64 %indvars.iv, i64 1
  %140 = load float* %arrayidx2.i, align 4, !tbaa !3
  %arrayidx3.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  store float %140, float* %arrayidx3.i, align 4, !tbaa !3
  %arrayidx4.i = getelementptr inbounds [3 x float]* %126, i64 %indvars.iv, i64 2
  %141 = load float* %arrayidx4.i, align 4, !tbaa !3
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2
  store float %141, float* %arrayidx5.i, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %142 = trunc i64 %indvars.iv.next to i32
  %cmp549 = icmp slt i32 %142, %138
  br i1 %cmp549, label %for.body551, label %for.end562

for.end562:                                       ; preds = %for.body551, %for.cond547.preheader
  store i32 %inc501, i32* %nsteps80, align 4, !tbaa !0
  call void @llvm.lifetime.end(i64 36, i8* %3) #1
  call void @llvm.lifetime.end(i64 36, i8* %2) #1
  call void @llvm.lifetime.end(i64 36, i8* %1) #1
  call void @llvm.lifetime.end(i64 1032, i8* %0) #1
  ret i64 %call
}

; Function Attrs: optsize
declare i32 @init_constraints(%struct._IO_FILE*, %struct.t_topology*, %struct.t_inputrec*, %struct.t_mdatoms*, i32, i32, i32, %struct.t_commrec*) #2

; Function Attrs: optsize
declare i32 @constrain(%struct._IO_FILE*, %struct.t_topology*, %struct.t_inputrec*, i32, %struct.t_mdatoms*, i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, float, float*, %struct.t_nrnb*, i32) #2

; Function Attrs: optsize
declare i32 @do_per_step(i32, i32) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @warn_step(%struct._IO_FILE* nocapture %fp, float %ustep, float %ftol, i32 %bConstrain) #0 {
entry:
  %conv = fpext float %ustep to double
  %conv1 = fpext float %ftol to double
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([100 x i8]* @.str34, i64 0, i64 0), double %conv, double %conv1) #5
  %tobool = icmp eq i32 %bConstrain, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([127 x i8]* @.str35, i64 0, i64 0), i64 126, i64 1, %struct._IO_FILE* %fp)
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i64 @do_nm(%struct._IO_FILE* %log, %struct.t_commrec* %cr, i32 %nfile, %struct.t_filenm* %fnm, i32 %bVerbose, i32 %bCompact, i32 %stepout, %struct.t_parm* %parm, %struct.t_groups* %grps, %struct.t_topology* %top, float* %ener, %struct.t_fcdata* %fcd, [3 x float]* %x, [3 x float]* nocapture %vold, [3 x float]* %v, [3 x float]* nocapture %vt, [3 x float]* %f, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, %struct.t_nsborder* %nsb, %struct.t_nrnb* %nrnb, %struct.t_graph* %graph, %struct.t_edsamyn* nocapture %edyn, %struct.t_forcerec* %fr, float* %box_size) #0 {
entry:
  %bLR = alloca i32, align 4
  %bLJLR = alloca i32, align 4
  %bBHAM = alloca i32, align 4
  %b14 = alloca i32, align 4
  %force_vir = alloca [3 x [3 x float]], align 16
  %pme_vir = alloca [3 x [3 x float]], align 16
  %mynrnb = alloca %struct.t_nrnb, align 8
  %nfmax = alloca i32, align 4
  %mu_tot = alloca [3 x float], align 4
  %0 = bitcast [3 x [3 x float]]* %force_vir to i8*
  call void @llvm.lifetime.start(i64 36, i8* %0) #1
  %1 = bitcast [3 x [3 x float]]* %pme_vir to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #1
  %2 = bitcast %struct.t_nrnb* %mynrnb to i8*
  call void @llvm.lifetime.start(i64 1032, i8* %2) #1
  %atoms = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %3 = load i32* %nr, align 4, !tbaa !0
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 841, i32 %3, i32 12) #5
  %4 = bitcast i8* %call to [3 x float]*
  %ir = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0
  %init_t = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 14
  %5 = load float* %init_t, align 4, !tbaa !3
  %init_lambda = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 47
  %6 = load float* %init_lambda, align 4, !tbaa !3
  call void @init_nrnb(%struct.t_nrnb* %mynrnb) #5
  %ePBC = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 0
  %7 = load i32* %ePBC, align 4, !tbaa !0
  %cmp = icmp ne i32 %7, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %shift_vec = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 48
  %8 = load [3 x float]** %shift_vec, align 8, !tbaa !4
  call void @calc_shifts([3 x float]* %arraydecay, float* %box_size, [3 x float]* %8) #5
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([25 x i8]* @.str25, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %log)
  call void @mk_mshift(%struct._IO_FILE* %log, %struct.t_graph* %graph, [3 x float]* %arraydecay, [3 x float]* %x) #5
  call void @shift_self(%struct.t_graph* %graph, [3 x float]* %arraydecay, [3 x float]* %x) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @set_pot_bools(%struct.t_inputrec* %ir, %struct.t_topology* %top, i32* %bLR, i32* %bLJLR, i32* %bBHAM, i32* %b14) #5
  %idef = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1
  %10 = load i32* %bLR, align 4, !tbaa !0
  %11 = load i32* %bLJLR, align 4, !tbaa !0
  %12 = load i32* %bBHAM, align 4, !tbaa !0
  %13 = load i32* %b14, align 4, !tbaa !0
  %efep = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 46
  %14 = load i32* %efep, align 4, !tbaa !0
  %cmp10 = icmp ne i32 %14, 0
  %conv11 = zext i1 %cmp10 to i32
  %epc = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 28
  %15 = load i32* %epc, align 4, !tbaa !0
  %eDispCorr = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 43
  %16 = load i32* %eDispCorr, align 4, !tbaa !0
  %arrayidx15 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 32, i64 1, i64 0
  %17 = load float* %arrayidx15, align 4, !tbaa !3
  %fabsf = call float @fabsf(float %17) #6
  %18 = fpext float %fabsf to double
  %cmp18 = fcmp ogt double %18, 1.200000e-38
  br i1 %cmp18, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx23 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 32, i64 2, i64 0
  %19 = load float* %arrayidx23, align 4, !tbaa !3
  %fabsf508 = call float @fabsf(float %19) #6
  %20 = fpext float %fabsf508 to double
  %cmp26 = fcmp ogt double %20, 1.200000e-38
  br i1 %cmp26, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %arrayidx31 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 32, i64 2, i64 1
  %21 = load float* %arrayidx31, align 4, !tbaa !3
  %fabsf509 = call float @fabsf(float %21) #6
  %22 = fpext float %fabsf509 to double
  %cmp34 = fcmp ogt double %22, 1.200000e-38
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.end
  %23 = phi i1 [ true, %lor.lhs.false ], [ true, %if.end ], [ %cmp34, %lor.rhs ]
  %lor.ext = zext i1 %23 to i32
  %etc = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 27
  %24 = load i32* %etc, align 4, !tbaa !0
  %cmp37 = icmp eq i32 %24, 2
  %conv38 = zext i1 %cmp37 to i32
  %call39 = call %struct.t_mdebin* @init_mdebin(i32 -1, %struct.t_groups* %grps, %struct.t_atoms* %atoms, %struct.t_idef* %idef, i32 %10, i32 %11, i32 %12, i32 %13, i32 %conv11, i32 %15, i32 %16, i32 %lor.ext, i32 %conv38, %struct.t_commrec* %cr) #5
  %opts = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80
  %arraydecay41 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 5, i64 0
  %call42 = call float @sum_ekin(%struct.t_grpopts* %opts, %struct.t_groups* %grps, [3 x float]* %arraydecay41, i32 0) #5
  %arrayidx43 = getelementptr inbounds float* %ener, i64 40
  store float %call42, float* %arrayidx43, align 4, !tbaa !3
  %25 = load i32* %etc, align 4, !tbaa !0
  switch i32 %25, label %if.end62 [
    i32 1, label %if.then48
    i32 2, label %if.then56
  ]

if.then48:                                        ; preds = %lor.end
  %delta_t = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15
  %26 = load float* %delta_t, align 4, !tbaa !3
  call void @berendsen_tcoupl(%struct.t_grpopts* %opts, %struct.t_groups* %grps, float %26, float %6) #5
  br label %if.end62

if.then56:                                        ; preds = %lor.end
  %delta_t60 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15
  %27 = load float* %delta_t60, align 4, !tbaa !3
  call void @nosehoover_tcoupl(%struct.t_grpopts* %opts, %struct.t_groups* %grps, float %27, float %6) #5
  br label %if.end62

if.end62:                                         ; preds = %lor.end, %if.then56, %if.then48
  call void @_where(i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 883) #5
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %28 = load i32* %nodeid, align 4, !tbaa !0
  %call63 = call i64 @print_date_and_time(%struct._IO_FILE* %log, i32 %28, i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0)) #5
  %29 = load i32* %nodeid, align 4, !tbaa !0
  %cmp65 = icmp eq i32 %29, 0
  br i1 %cmp65, label %land.lhs.true, label %if.end73

land.lhs.true:                                    ; preds = %if.end62
  %threadid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %30 = load i32* %threadid, align 4, !tbaa !0
  %cmp67 = icmp eq i32 %30, 0
  br i1 %cmp67, label %if.then69, label %if.end73

if.then69:                                        ; preds = %land.lhs.true
  %31 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0
  %32 = load i8*** %name, align 8, !tbaa !4
  %33 = load i8** %32, align 8, !tbaa !4
  %34 = load i32* %nr, align 4, !tbaa !0
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([32 x i8]* @.str27, i64 0, i64 0), i8* %33, i32 %34) #5
  br label %if.end73

if.end73:                                         ; preds = %if.then69, %land.lhs.true, %if.end62
  %arraydecay74 = getelementptr inbounds [3 x [3 x float]]* %force_vir, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 36, i32 16, i1 false) #1
  %arraydecay76 = getelementptr inbounds [3 x [3 x float]]* %pme_vir, i64 0, i64 0
  %tobool77 = icmp ne i32 %bVerbose, 0
  br i1 %tobool77, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end73
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %35 = load i32* %nnodes, align 4, !tbaa !0
  %cmp78 = icmp sgt i32 %35, 1
  br i1 %cmp78, label %land.end, label %lor.rhs80

lor.rhs80:                                        ; preds = %land.rhs
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %36 = load i32* %nthreads, align 4, !tbaa !0
  %phitmp512 = icmp slt i32 %36, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs80, %if.end73
  %37 = phi i1 [ false, %if.end73 ], [ false, %land.rhs ], [ %phitmp512, %lor.rhs80 ]
  %land.ext = zext i1 %37 to i32
  %arraydecay85 = getelementptr inbounds [3 x float]* %mu_tot, i64 0, i64 0
  call void @do_force(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* null, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, [3 x float]* %arraydecay74, [3 x float]* %arraydecay76, i32 0, %struct.t_nrnb* %mynrnb, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, float* %ener, %struct.t_fcdata* %fcd, i32 %land.ext, float %6, %struct.t_graph* %graph, i32 1, i32 0, %struct.t_forcerec* %fr, float* %arraydecay85, i32 0) #5
  br i1 %cmp, label %if.then87, label %if.end90

if.then87:                                        ; preds = %land.end
  %arraydecay89 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  call void @unshift_self(%struct.t_graph* %graph, [3 x float]* %arraydecay89, [3 x float]* %x) #5
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %land.end
  %left = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %38 = load i32* %left, align 4, !tbaa !0
  %right = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %39 = load i32* %right, align 4, !tbaa !0
  %nnodes91 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1
  %40 = load i32* %nnodes91, align 4, !tbaa !0
  %41 = load i32* %nr, align 4, !tbaa !0
  %call96 = call fastcc float @f_max(i32 %38, i32 %39, i32 %40, %struct.t_grpopts* %opts, %struct.t_mdatoms* %mdatoms, i32 0, i32 %41, [3 x float]* %f, i32* %nfmax) #4
  %42 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %conv97 = fpext float %call96 to double
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([22 x i8]* @.str28, i64 0, i64 0), double %conv97) #5
  %cmp100 = fcmp ogt double %conv97, 1.000000e-03
  br i1 %cmp100, label %if.then102, label %if.end107

if.then102:                                       ; preds = %if.end90
  %43 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %44 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str29, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %43)
  %45 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %46 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8]* @.str30, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %45)
  %47 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %48 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @.str31, i64 0, i64 0), i64 44, i64 1, %struct._IO_FILE* %47)
  %49 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %50 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @.str32, i64 0, i64 0), i64 44, i64 1, %struct._IO_FILE* %49)
  br label %if.end107

if.end107:                                        ; preds = %if.then102, %if.end90
  %51 = load i32* %nr, align 4, !tbaa !0
  %nsteps = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 1
  store i32 %51, i32* %nsteps, align 4, !tbaa !0
  %cmp113520 = icmp sgt i32 %51, 0
  br i1 %cmp113520, label %for.cond115.preheader.lr.ph, label %for.end279

for.cond115.preheader.lr.ph:                      ; preds = %if.end107
  %nnodes132 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %nthreads136 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %arraydecay148 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %natoms = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  %threadid265 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %tobool77.not = xor i1 %tobool77, true
  br label %for.cond115.preheader

for.cond115.preheader:                            ; preds = %for.cond115.preheader.lr.ph, %for.inc277
  %indvars.iv535 = phi i64 [ 0, %for.cond115.preheader.lr.ph ], [ %indvars.iv.next536, %for.inc277 ]
  %step.0521 = phi i32 [ 0, %for.cond115.preheader.lr.ph ], [ %inc278, %for.inc277 ]
  %52 = trunc i64 %indvars.iv535 to i32
  %sext = mul i64 %indvars.iv535, 12884901888
  %53 = lshr exact i64 %sext, 32
  br label %for.body118

for.body118:                                      ; preds = %for.inc258, %for.cond115.preheader
  %indvars.iv530 = phi i64 [ 0, %for.cond115.preheader ], [ %indvars.iv.next531, %for.inc258 ]
  %arrayidx121 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv535, i64 %indvars.iv530
  %54 = load float* %arrayidx121, align 4, !tbaa !3
  %sub = fadd float %54, 0xBEB0C6F7A0000000
  store float %sub, float* %arrayidx121, align 4, !tbaa !3
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 36, i32 16, i1 false) #1
  %55 = add nsw i64 %indvars.iv530, %53
  %56 = trunc i64 %55 to i32
  %mul129 = shl nsw i32 %56, 1
  br i1 %tobool77, label %land.rhs131, label %land.end142

land.rhs131:                                      ; preds = %for.body118
  %57 = load i32* %nnodes132, align 4, !tbaa !0
  %cmp133 = icmp sgt i32 %57, 1
  br i1 %cmp133, label %land.end142, label %lor.rhs135

lor.rhs135:                                       ; preds = %land.rhs131
  %58 = load i32* %nthreads136, align 4, !tbaa !0
  %phitmp511 = icmp slt i32 %58, 2
  br label %land.end142

land.end142:                                      ; preds = %land.rhs131, %lor.rhs135, %for.body118
  %59 = phi i1 [ false, %for.body118 ], [ false, %land.rhs131 ], [ %phitmp511, %lor.rhs135 ]
  %land.ext143 = zext i1 %59 to i32
  call void @do_force(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* null, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, [3 x float]* %arraydecay74, [3 x float]* %arraydecay76, i32 %mul129, %struct.t_nrnb* %mynrnb, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, float* %ener, %struct.t_fcdata* %fcd, i32 %land.ext143, float %6, %struct.t_graph* %graph, i32 0, i32 0, %struct.t_forcerec* %fr, float* %arraydecay85, i32 0) #5
  br i1 %cmp, label %if.then146, label %for.cond150.preheader

if.then146:                                       ; preds = %land.end142
  call void @unshift_self(%struct.t_graph* %graph, [3 x float]* %arraydecay148, [3 x float]* %x) #5
  br label %for.cond150.preheader

for.cond150.preheader:                            ; preds = %if.then146, %land.end142
  %60 = load i32* %nr, align 4, !tbaa !0
  %cmp153514 = icmp sgt i32 %60, 0
  br i1 %cmp153514, label %for.cond156.preheader, label %for.end170

for.cond156.preheader:                            ; preds = %for.cond150.preheader, %for.inc168
  %indvars.iv522 = phi i64 [ %indvars.iv.next523, %for.inc168 ], [ 0, %for.cond150.preheader ]
  br label %for.body159

for.body159:                                      ; preds = %for.body159, %for.cond156.preheader
  %indvars.iv = phi i64 [ 0, %for.cond156.preheader ], [ %indvars.iv.next, %for.body159 ]
  %arrayidx163 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv522, i64 %indvars.iv
  %61 = load float* %arrayidx163, align 4, !tbaa !3
  %arrayidx167 = getelementptr inbounds [3 x float]* %4, i64 %indvars.iv522, i64 %indvars.iv
  store float %61, float* %arrayidx167, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc168, label %for.body159

for.inc168:                                       ; preds = %for.body159
  %indvars.iv.next523 = add i64 %indvars.iv522, 1
  %62 = trunc i64 %indvars.iv.next523 to i32
  %cmp153 = icmp slt i32 %62, %60
  br i1 %cmp153, label %for.cond156.preheader, label %for.end170

for.end170:                                       ; preds = %for.inc168, %for.cond150.preheader
  %63 = load float* %arrayidx121, align 4, !tbaa !3
  %conv179 = fadd float %63, 0x3EC0C6F7A0000000
  store float %conv179, float* %arrayidx121, align 4, !tbaa !3
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 36, i32 16, i1 false) #1
  %add190510 = or i32 %mul129, 1
  br i1 %tobool77, label %land.rhs192, label %land.end203

land.rhs192:                                      ; preds = %for.end170
  %64 = load i32* %nnodes132, align 4, !tbaa !0
  %cmp194 = icmp sgt i32 %64, 1
  br i1 %cmp194, label %land.end203, label %lor.rhs196

lor.rhs196:                                       ; preds = %land.rhs192
  %65 = load i32* %nthreads136, align 4, !tbaa !0
  %phitmp = icmp slt i32 %65, 2
  br label %land.end203

land.end203:                                      ; preds = %land.rhs192, %lor.rhs196, %for.end170
  %66 = phi i1 [ false, %for.end170 ], [ false, %land.rhs192 ], [ %phitmp, %lor.rhs196 ]
  %land.ext204 = zext i1 %66 to i32
  call void @do_force(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* null, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, [3 x float]* %arraydecay74, [3 x float]* %arraydecay76, i32 %add190510, %struct.t_nrnb* %mynrnb, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, float* %ener, %struct.t_fcdata* %fcd, i32 %land.ext204, float %6, %struct.t_graph* %graph, i32 0, i32 0, %struct.t_forcerec* %fr, float* %arraydecay85, i32 0) #5
  br i1 %cmp, label %if.then207, label %for.cond211.preheader

if.then207:                                       ; preds = %land.end203
  call void @unshift_self(%struct.t_graph* %graph, [3 x float]* %arraydecay148, [3 x float]* %x) #5
  br label %for.cond211.preheader

for.cond211.preheader:                            ; preds = %if.then207, %land.end203
  %67 = load i32* %nr, align 4, !tbaa !0
  %cmp214517 = icmp sgt i32 %67, 0
  br i1 %cmp214517, label %for.cond217.preheader, label %for.end240

for.cond217.preheader:                            ; preds = %for.cond211.preheader, %for.inc238
  %indvars.iv528 = phi i64 [ %indvars.iv.next529, %for.inc238 ], [ 0, %for.cond211.preheader ]
  br label %for.body220

for.body220:                                      ; preds = %for.body220, %for.cond217.preheader
  %indvars.iv524 = phi i64 [ 0, %for.cond217.preheader ], [ %indvars.iv.next525, %for.body220 ]
  %arrayidx224 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv528, i64 %indvars.iv524
  %68 = load float* %arrayidx224, align 4, !tbaa !3
  %arrayidx228 = getelementptr inbounds [3 x float]* %4, i64 %indvars.iv528, i64 %indvars.iv524
  %69 = load float* %arrayidx228, align 4, !tbaa !3
  %sub229 = fsub float %68, %69
  %div = fdiv float %sub229, 0x3EC0C6F7A0000000
  store float %div, float* %arrayidx228, align 4, !tbaa !3
  %indvars.iv.next525 = add i64 %indvars.iv524, 1
  %lftr.wideiv526 = trunc i64 %indvars.iv.next525 to i32
  %exitcond527 = icmp eq i32 %lftr.wideiv526, 3
  br i1 %exitcond527, label %for.inc238, label %for.body220

for.inc238:                                       ; preds = %for.body220
  %indvars.iv.next529 = add i64 %indvars.iv528, 1
  %70 = trunc i64 %indvars.iv.next529 to i32
  %cmp214 = icmp slt i32 %70, %67
  br i1 %cmp214, label %for.cond217.preheader, label %for.end240

for.end240:                                       ; preds = %for.inc238, %for.cond211.preheader
  %call241 = call i8* @ftp2fn(i32 39, i32 %nfile, %struct.t_filenm* %fnm) #5
  %71 = load i32* %natoms, align 4, !tbaa !0
  %call244 = call i32 @write_traj(%struct._IO_FILE* %log, %struct.t_commrec* %cr, i8* %call241, %struct.t_nsborder* %nsb, i32 %52, float %5, float %6, %struct.t_nrnb* %nrnb, i32 %71, [3 x float]* %4, [3 x float]* null, [3 x float]* null, [3 x float]* %arraydecay148) #5
  %72 = load float* %arrayidx121, align 4, !tbaa !3
  %sub249 = fadd float %72, 0xBEB0C6F7A0000000
  store float %sub249, float* %arrayidx121, align 4, !tbaa !3
  br i1 %tobool77, label %if.then255, label %for.inc258

if.then255:                                       ; preds = %for.end240
  %call256 = call i32 @fflush(%struct._IO_FILE* %log) #5
  br label %for.inc258

for.inc258:                                       ; preds = %for.end240, %if.then255
  %indvars.iv.next531 = add i64 %indvars.iv530, 1
  %lftr.wideiv533 = trunc i64 %indvars.iv.next531 to i32
  %exitcond534 = icmp eq i32 %lftr.wideiv533, 3
  br i1 %exitcond534, label %for.end260, label %for.body118

for.end260:                                       ; preds = %for.inc258
  %73 = load i32* %nodeid, align 4, !tbaa !0
  %cmp262 = icmp eq i32 %73, 0
  br i1 %cmp262, label %land.lhs.true264, label %for.inc277

land.lhs.true264:                                 ; preds = %for.end260
  %74 = load i32* %threadid265, align 4, !tbaa !0
  %cmp266.not = icmp ne i32 %74, 0
  %brmerge = or i1 %cmp266.not, %tobool77.not
  br i1 %brmerge, label %for.inc277, label %if.then270

if.then270:                                       ; preds = %land.lhs.true264
  %75 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %76 = add nsw i64 %indvars.iv535, 1
  %77 = load i32* %nr, align 4, !tbaa !0
  %78 = trunc i64 %76 to i32
  %call274 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([28 x i8]* @.str33, i64 0, i64 0), i32 %78, i32 %77) #5
  %79 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %call275 = call i32 @fflush(%struct._IO_FILE* %79) #5
  br label %for.inc277

for.inc277:                                       ; preds = %land.lhs.true264, %for.end260, %if.then270
  %indvars.iv.next536 = add i64 %indvars.iv535, 1
  %inc278 = add nsw i32 %step.0521, 1
  %80 = load i32* %nsteps, align 4, !tbaa !0
  %81 = trunc i64 %indvars.iv.next536 to i32
  %cmp113 = icmp slt i32 %81, %80
  br i1 %cmp113, label %for.cond115.preheader, label %for.end279

for.end279:                                       ; preds = %for.inc277, %if.end107
  %step.0.lcssa = phi i32 [ 0, %if.end107 ], [ %inc278, %for.inc277 ]
  %conv280 = sitofp i32 %step.0.lcssa to float
  %delta_t282 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15
  %82 = load float* %delta_t282, align 4, !tbaa !3
  %mul283 = fmul float %conv280, %82
  %add284 = fadd float %5, %mul283
  %83 = load i32* %nodeid, align 4, !tbaa !0
  %cmp290 = icmp eq i32 %83, 0
  br i1 %cmp290, label %land.lhs.true292, label %if.end299

land.lhs.true292:                                 ; preds = %for.end279
  %threadid293 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %84 = load i32* %threadid293, align 4, !tbaa !0
  %cmp294 = icmp eq i32 %84, 0
  br i1 %cmp294, label %if.then296, label %if.end299

if.then296:                                       ; preds = %land.lhs.true292
  call void @print_ebin(i32 -1, i32 0, i32 0, i32 0, %struct._IO_FILE* %log, i32 %step.0.lcssa, float %add284, i32 1, i32 0, %struct.t_mdebin* %call39, %struct.t_fcdata* %fcd, %struct.t_atoms* %atoms) #5
  call void @print_ebin(i32 -1, i32 0, i32 0, i32 0, %struct._IO_FILE* %log, i32 %step.0.lcssa, float %add284, i32 2, i32 0, %struct.t_mdebin* %call39, %struct.t_fcdata* %fcd, %struct.t_atoms* %atoms) #5
  %.pre = load float* %delta_t282, align 4, !tbaa !3
  br label %if.end299

if.end299:                                        ; preds = %if.then296, %land.lhs.true292, %for.end279
  %85 = phi float [ %.pre, %if.then296 ], [ %82, %land.lhs.true292 ], [ %82, %for.end279 ]
  %arraydecay304 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  call void @construct_dummies(%struct._IO_FILE* %log, [3 x float]* %x, %struct.t_nrnb* %mynrnb, float %85, [3 x float]* %v, %struct.t_idef* %idef, %struct.t_graph* %graph, %struct.t_commrec* %cr, [3 x float]* %arraydecay304, %struct.t_comm_dummies* null) #5
  call void @llvm.lifetime.end(i64 1032, i8* %2) #1
  call void @llvm.lifetime.end(i64 36, i8* %1) #1
  call void @llvm.lifetime.end(i64 36, i8* %0) #1
  ret i64 %call63
}

; Function Attrs: optsize
declare void @init_nrnb(%struct.t_nrnb*) #2

; Function Attrs: optsize
declare void @calc_shifts([3 x float]*, float*, [3 x float]*) #2

; Function Attrs: optsize
declare void @mk_mshift(%struct._IO_FILE*, %struct.t_graph*, [3 x float]*, [3 x float]*) #2

; Function Attrs: optsize
declare void @shift_self(%struct.t_graph*, [3 x float]*, [3 x float]*) #2

; Function Attrs: optsize
declare float @sum_ekin(%struct.t_grpopts*, %struct.t_groups*, [3 x float]*, i32) #2

; Function Attrs: optsize
declare void @berendsen_tcoupl(%struct.t_grpopts*, %struct.t_groups*, float, float) #2

; Function Attrs: optsize
declare void @nosehoover_tcoupl(%struct.t_grpopts*, %struct.t_groups*, float, float) #2

; Function Attrs: optsize
declare void @unshift_self(%struct.t_graph*, [3 x float]*, [3 x float]*) #2

; Function Attrs: optsize
declare void @gmx_tx(i32, i8*, i32) #2

; Function Attrs: optsize
declare void @gmx_rx(i32, i8*, i32) #2

; Function Attrs: optsize
declare void @gmx_wait(i32, i32) #2

; Function Attrs: optsize
declare void @init_mdatoms(%struct.t_mdatoms*, float, i32) #2

; Function Attrs: optsize
declare %struct.t_vcm* @init_vcm(%struct._IO_FILE*, %struct.t_topology*, %struct.t_commrec*, %struct.t_mdatoms*, i32, i32, i32) #2

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

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
attributes #4 = { optsize }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}
!6 = metadata !{metadata !"short", metadata !1}
