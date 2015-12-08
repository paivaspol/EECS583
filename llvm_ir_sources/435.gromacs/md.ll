; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/md.c'
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
%struct.t_filenm = type { i32, i8*, i8*, i64 }
%struct.t_edsamyn = type { i32, i8*, i8* }
%struct.t_comm_dummies = type { i32, i32, i32*, i32*, i32, i32, i32*, i32* }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
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
%struct.t_groups = type { %struct.t_grp_ener, %struct.t_grp_tcstat*, %struct.t_grp_acc*, %struct.t_cos_acc }
%struct.t_grp_ener = type { i32, [7 x float*] }
%struct.t_grp_tcstat = type { float, float, [3 x [3 x float]], float, float }
%struct.t_grp_acc = type { i32, i32*, float, [3 x float], [3 x float], [3 x float] }
%struct.t_cos_acc = type { float, float, float }
%struct.t_parm = type { %struct.t_inputrec, [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]] }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_nrnb = type { [129 x double] }
%struct.t_mdebin = type { %struct.t_ebin*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.t_ebin = type { i32, i8**, %struct.t_energy* }
%struct.t_energy = type { float, double, double, float }
%struct.t_vcm = type { i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x [3 x float]]*, float*, i8**, i16* }
%struct.t_trxframe = type { i32, i32, i32, float, float, float, i32, i8*, i32, i32, i32, float, i32, float, i32, %struct.t_atoms*, i32, float, i32, [3 x float]*, i32, [3 x float]*, i32, [3 x float]*, i32, [3 x [3 x float]] }
%struct.t_pull = type { %struct.t_pullgrps, %struct.t_pullgrps, %struct.t_pullgrps, i32, i32, [3 x float], [3 x float], float, float, [3 x i32], float, float, i32, float, float, float, i32, i32, i32, %struct._IO_FILE*, float, float, float, i32, i32, i32 }
%struct.t_pullgrps = type { i32, i32**, float**, i32*, i8**, float*, [3 x float]**, [3 x float]**, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, float*, [3 x float]*, [3 x float]** }
%struct.t_shell = type { i32, i32, i32, i32, i32, float, float }
%struct.t_coupl_rec = type { [14 x float], [14 x float], [14 x float], [14 x i32], i32, i32, i32, i32, %struct.t_coupl_LJ*, %struct.t_coupl_BU*, %struct.t_coupl_Q*, %struct.t_coupl_iparams*, i32, i32, i32 }
%struct.t_coupl_LJ = type { i32, i32, i32, i32, float, float, float, float }
%struct.t_coupl_BU = type { i32, i32, i32, i32, float, float, float, float, float, float }
%struct.t_coupl_Q = type { i32, i32, i32, float, float }
%struct.t_coupl_iparams = type { i32, i32, %union.t_iparams, %union.t_iparams }

@bGotTermSignal = global i32 0, align 4
@bGotUsr1Signal = global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ener\00", align 1
@.str1 = private unnamed_addr constant [50 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/md.c\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"fcd\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"nsb\00", align 1
@.str4 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"grps\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"parm\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"nrnb\00", align 1
@stderr = external global %struct._IO_FILE*
@.str8 = private unnamed_addr constant [19 x i8] c"Getting Loaded...\0A\00", align 1
@stdlog = external global %struct._IO_FILE*
@.str9 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str10 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str11 = private unnamed_addr constant [3 x i8] c"vt\00", align 1
@.str12 = private unnamed_addr constant [5 x i8] c"vold\00", align 1
@.str13 = private unnamed_addr constant [20 x i8] c"Loaded with Money\0A\0A\00", align 1
@debug = external global %struct._IO_FILE*
@.str14 = private unnamed_addr constant [14 x i8] c"Initial graph\00", align 1
@interaction_function = external global [44 x %struct.t_interaction_function]
@.str15 = private unnamed_addr constant [7 x i8] c"-table\00", align 1
@.str16 = private unnamed_addr constant [8 x i8] c"GMXGHAT\00", align 1
@.str17 = private unnamed_addr constant [28 x i8] c"Invalid integrator (%d)...\0A\00", align 1
@.str18 = private unnamed_addr constant [15 x i8] c"Finished mdrun\00", align 1
@.str19 = private unnamed_addr constant [9 x i8] c"grpindex\00", align 1
@.str20 = private unnamed_addr constant [34 x i8] c"Will do General Coupling Theory!\0A\00", align 1
@.str21 = private unnamed_addr constant [25 x i8] c"Can not pull in parallel\00", align 1
@.str22 = private unnamed_addr constant [6 x i8] c"xcopy\00", align 1
@.str23 = private unnamed_addr constant [14 x i8] c"Started mdrun\00", align 1
@.str24 = private unnamed_addr constant [27 x i8] c"Initial temperature: %g K\0A\00", align 1
@.str25 = private unnamed_addr constant [73 x i8] c"starting md rerun '%s', reading coordinates from input trajectory '%s'\0A\0A\00", align 1
@.str26 = private unnamed_addr constant [7 x i8] c"-rerun\00", align 1
@.str27 = private unnamed_addr constant [140 x i8] c"Calculated time to finish depends on nsteps from run input file,\0Awhich may not correspond to the time needed to process input trajectory.\0A\0A\00", align 1
@.str28 = private unnamed_addr constant [42 x i8] c"starting mdrun '%s'\0A%d steps, %8.1f ps.\0A\0A\00", align 1
@.str29 = private unnamed_addr constant [75 x i8] c"Number of atoms in trajectory (%d) does not match the run input file (%d)\0A\00", align 1
@.str30 = private unnamed_addr constant [174 x i8] c"\0AWARNING: Some frames do not contain velocities.\0A         Ekin, temperature and pressure are incorrect,\0A         the virial will be incorrect when constraints are present.\0A\0A\00", align 1
@.str31 = private unnamed_addr constant [20 x i8] c"Done init_coupling\0A\00", align 1
@.str32 = private unnamed_addr constant [28 x i8] c"Writing final coordinates.\0A\00", align 1
@.str34 = private unnamed_addr constant [27 x i8] c"\0A\0AReceived the %s signal\0A\0A\00", align 1
@.str35 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str36 = private unnamed_addr constant [5 x i8] c"USR1\00", align 1
@.str37 = private unnamed_addr constant [24 x i8] c"\0ASetting nsteps to %d\0A\0A\00", align 1
@.str38 = private unnamed_addr constant [34 x i8] c"Energy too large (%g), giving up\0A\00", align 1
@.str40 = private unnamed_addr constant [3 x i8] c"ct\00", align 1
@.str41 = private unnamed_addr constant [33 x i8] c"\0ATotal NODE time on node %d: %g\0A\00", align 1
@.str42 = private unnamed_addr constant [23 x i8] c"Average NODE time: %g\0A\00", align 1
@.str43 = private unnamed_addr constant [52 x i8] c"Load imbalance reduced performance to %3d%% of max\0A\00", align 1
@.str44 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str45 = private unnamed_addr constant [7 x i8] c"%8.5e\0A\00", align 1
@.str46 = private unnamed_addr constant [58 x i8] c"Fraction of iterations that converged:           %.2f %%\0A\00", align 1
@.str47 = private unnamed_addr constant [55 x i8] c"Average number of force evaluations per MD step: %.2f\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @mdrunner(%struct.t_commrec* %cr, %struct.t_commrec* %mcr, i32 %nfile, %struct.t_filenm* %fnm, i32 %bVerbose, i32 %bCompact, i32 %nDlb, i32 %nstepout, %struct.t_edsamyn* %edyn, i64 %Flags) #0 {
entry:
  %v = alloca [3 x float]*, align 8
  %x = alloca [3 x float]*, align 8
  %box_size = alloca [3 x float], align 4
  %mdatoms = alloca %struct.t_mdatoms*, align 8
  %bParDummies = alloca i32, align 4
  %dummycomm = alloca %struct.t_comm_dummies, align 8
  %0 = bitcast %struct.t_comm_dummies* %dummycomm to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #1
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str1, i64 0, i64 0), i32 93, i32 44, i32 4) #6
  %1 = bitcast i8* %call to float*
  %call1 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str1, i64 0, i64 0), i32 94, i32 1, i32 256) #6
  %2 = bitcast i8* %call1 to %struct.t_fcdata*
  %call2 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str1, i64 0, i64 0), i32 95, i32 1, i32 4124) #6
  %3 = bitcast i8* %call2 to %struct.t_nsborder*
  %call3 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str1, i64 0, i64 0), i32 96, i32 1, i32 50264) #6
  %4 = bitcast i8* %call3 to %struct.t_topology*
  %call4 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str1, i64 0, i64 0), i32 97, i32 1, i32 96) #6
  %5 = bitcast i8* %call4 to %struct.t_groups*
  %call5 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str1, i64 0, i64 0), i32 98, i32 1, i32 776) #6
  %6 = bitcast i8* %call5 to %struct.t_parm*
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %7 = load i32* %nnodes, align 4, !tbaa !0
  %call6 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str1, i64 0, i64 0), i32 99, i32 %7, i32 1032) #6
  %8 = bitcast i8* %call6 to %struct.t_nrnb*
  %tobool = icmp ne i32 %bVerbose, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %9 = load i32* %nodeid, align 4, !tbaa !0
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %land.lhs.true7, label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %threadid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %10 = load i32* %threadid, align 4, !tbaa !0
  %cmp8 = icmp eq i32 %10, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true7
  %11 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %12 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str8, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true7, %land.lhs.true, %entry
  %13 = load i32* %nnodes, align 4, !tbaa !0
  %cmp11 = icmp sgt i32 %13, 1
  br i1 %cmp11, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %14 = load i32* %nthreads, align 4, !tbaa !0
  %cmp12 = icmp sgt i32 %14, 1
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %lor.lhs.false, %if.end
  %nodeid14 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %15 = load i32* %nodeid14, align 4, !tbaa !0
  %cmp15 = icmp eq i32 %15, 0
  br i1 %cmp15, label %land.lhs.true16, label %if.end23.thread

if.end23.thread:                                  ; preds = %if.then13
  %16 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  br label %land.end

land.lhs.true16:                                  ; preds = %if.then13
  %threadid17 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %17 = load i32* %threadid17, align 4, !tbaa !0
  %cmp18 = icmp eq i32 %17, 0
  br i1 %cmp18, label %if.end23, label %if.end23.thread374

if.end23.thread374:                               ; preds = %land.lhs.true16
  %18 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  br label %land.rhs

if.end23:                                         ; preds = %land.lhs.true16
  %left = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %19 = load i32* %left, align 4, !tbaa !0
  %right = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %20 = load i32* %right, align 4, !tbaa !0
  %call22 = call i8* @ftp2fn(i32 24, i32 %nfile, %struct.t_filenm* %fnm) #6
  call void @distribute_parts(i32 %19, i32 %20, i32 0, i32 %13, %struct.t_parm* %6, i8* %call22, i32 %nDlb) #6
  %.pr.pre = load i32* %nodeid14, align 4, !tbaa !0
  %phitmp373 = icmp eq i32 %.pr.pre, 0
  %21 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  br i1 %phitmp373, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end23.thread374, %if.end23
  %22 = phi %struct._IO_FILE* [ %18, %if.end23.thread374 ], [ %21, %if.end23 ]
  %23 = load i32* %threadid17, align 4, !tbaa !0
  %cmp27 = icmp eq i32 %23, 0
  %phitmp = select i1 %cmp27, i32 3, i32 0
  br label %land.end

land.end:                                         ; preds = %if.end23.thread, %land.rhs, %if.end23
  %24 = phi %struct._IO_FILE* [ %21, %if.end23 ], [ %22, %land.rhs ], [ %16, %if.end23.thread ]
  %25 = phi i32 [ 0, %if.end23 ], [ %phitmp, %land.rhs ], [ 0, %if.end23.thread ]
  call void @init_parts(%struct._IO_FILE* %24, %struct.t_commrec* %cr, %struct.t_parm* %6, %struct.t_topology* %4, [3 x float]** %x, [3 x float]** %v, %struct.t_mdatoms** %mdatoms, %struct.t_nsborder* %3, i32 %25, i32* %bParDummies, %struct.t_comm_dummies* %dummycomm) #6
  br label %if.end29

if.else:                                          ; preds = %lor.lhs.false
  %26 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %call28 = call i8* @ftp2fn(i32 24, i32 %nfile, %struct.t_filenm* %fnm) #6
  call void @init_single(%struct._IO_FILE* %26, %struct.t_parm* %6, i8* %call28, %struct.t_topology* %4, [3 x float]** %x, [3 x float]** %v, %struct.t_mdatoms** %mdatoms, %struct.t_nsborder* %3) #6
  store i32 0, i32* %bParDummies, align 4, !tbaa !0
  br label %if.end29

if.end29:                                         ; preds = %if.else, %land.end
  %natoms = getelementptr inbounds i8* %call2, i64 12
  %27 = bitcast i8* %natoms to i32*
  %28 = load i32* %27, align 4, !tbaa !0
  %call30 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str1, i64 0, i64 0), i32 122, i32 %28, i32 12) #6
  %29 = bitcast i8* %call30 to [3 x float]*
  %30 = load i32* %27, align 4, !tbaa !0
  %call32 = call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str1, i64 0, i64 0), i32 123, i32 %30, i32 12) #6
  %31 = bitcast i8* %call32 to [3 x float]*
  %32 = load i32* %27, align 4, !tbaa !0
  %call34 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str1, i64 0, i64 0), i32 124, i32 %32, i32 12) #6
  %33 = bitcast i8* %call34 to [3 x float]*
  %34 = load i32* %27, align 4, !tbaa !0
  %call36 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str1, i64 0, i64 0), i32 125, i32 %34, i32 12) #6
  %35 = bitcast i8* %call36 to [3 x float]*
  %nodeid39 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  br i1 %tobool, label %land.lhs.true38, label %if.end46

land.lhs.true38:                                  ; preds = %if.end29
  %36 = load i32* %nodeid39, align 4, !tbaa !0
  %cmp40 = icmp eq i32 %36, 0
  br i1 %cmp40, label %land.lhs.true41, label %if.end46

land.lhs.true41:                                  ; preds = %land.lhs.true38
  %threadid42 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %37 = load i32* %threadid42, align 4, !tbaa !0
  %cmp43 = icmp eq i32 %37, 0
  br i1 %cmp43, label %if.then44, label %if.end46

if.then44:                                        ; preds = %land.lhs.true41
  %38 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %39 = call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str13, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %38)
  br label %if.end46

if.end46:                                         ; preds = %if.end29, %if.then44, %land.lhs.true41, %land.lhs.true38
  %40 = load i32* %nodeid39, align 4, !tbaa !0
  %nodeid48 = bitcast i8* %call2 to i32*
  store i32 %40, i32* %nodeid48, align 4, !tbaa !0
  %41 = load i32* %nodeid39, align 4, !tbaa !0
  %idef = getelementptr inbounds i8* %call3, i64 8
  %42 = bitcast i8* %idef to %struct.t_idef*
  %nodeid50 = getelementptr inbounds i8* %call3, i64 12
  %43 = bitcast i8* %nodeid50 to i32*
  store i32 %41, i32* %43, align 4, !tbaa !0
  %44 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %45 = load %struct.t_mdatoms** %mdatoms, align 8, !tbaa !3
  %ir = bitcast i8* %call5 to %struct.t_inputrec*
  %opts = getelementptr inbounds i8* %call5, i64 384
  %46 = bitcast i8* %opts to %struct.t_grpopts*
  call void @init_groups(%struct._IO_FILE* %44, %struct.t_mdatoms* %45, %struct.t_grpopts* %46, %struct.t_groups* %5) #6
  %cos_accel = getelementptr inbounds i8* %call5, i64 348
  %47 = bitcast i8* %cos_accel to float*
  %48 = load float* %47, align 4, !tbaa !4
  %cosacc = getelementptr inbounds i8* %call4, i64 80
  %cos_accel52 = bitcast i8* %cosacc to float*
  store float %48, float* %cos_accel52, align 4, !tbaa !4
  %atoms = getelementptr inbounds i8* %call3, i64 45800
  %49 = bitcast i8* %atoms to %struct.t_atoms*
  %nr = bitcast i8* %atoms to i32*
  %50 = load i32* %nr, align 4, !tbaa !0
  %call54 = call %struct.t_graph* @mk_graph(%struct.t_idef* %42, i32 %50, i32 0, i32 0) #6
  %51 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool55 = icmp eq %struct._IO_FILE* %51, null
  br i1 %tobool55, label %if.end57, label %if.then56

if.then56:                                        ; preds = %if.end46
  call void @p_graph(%struct._IO_FILE* %51, i8* getelementptr inbounds ([14 x i8]* @.str14, i64 0, i64 0), %struct.t_graph* %call54) #6
  br label %if.end57

if.end57:                                         ; preds = %if.end46, %if.then56
  %52 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %il = getelementptr inbounds i8* %call3, i64 40
  %53 = bitcast i8* %il to [44 x %struct.t_ilist]*
  %arrayidx = getelementptr inbounds i8* %call3, i64 21880
  %nr59 = bitcast i8* %arrayidx to i32*
  %54 = load i32* %nr59, align 4, !tbaa !0
  %iatoms = getelementptr inbounds i8* %call3, i64 22912
  %55 = bitcast i8* %iatoms to i32**
  %56 = load i32** %55, align 8, !tbaa !3
  %iparams = getelementptr inbounds i8* %call3, i64 32
  %57 = bitcast i8* %iparams to %union.t_iparams**
  %58 = load %union.t_iparams** %57, align 8, !tbaa !3
  call void @init_disres(%struct._IO_FILE* %52, i32 %54, i32* %56, %union.t_iparams* %58, %struct.t_inputrec* %ir, %struct.t_commrec* %mcr, %struct.t_fcdata* %2) #6
  %59 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %arrayidx67 = getelementptr inbounds i8* %call3, i64 23960
  %nr68 = bitcast i8* %arrayidx67 to i32*
  %60 = load i32* %nr68, align 4, !tbaa !0
  %iatoms72 = getelementptr inbounds i8* %call3, i64 24992
  %61 = bitcast i8* %iatoms72 to i32**
  %62 = load i32** %61, align 8, !tbaa !3
  %63 = load %union.t_iparams** %57, align 8, !tbaa !3
  %64 = load [3 x float]** %x, align 8, !tbaa !3
  %65 = load %struct.t_mdatoms** %mdatoms, align 8, !tbaa !3
  call void @init_orires(%struct._IO_FILE* %59, i32 %60, i32* %62, %union.t_iparams* %63, [3 x float]* %64, %struct.t_mdatoms* %65, %struct.t_inputrec* %ir, %struct.t_commrec* %mcr, %struct.t_fcdata* %2) #6
  br label %for.body

for.body:                                         ; preds = %if.end57, %land.end89
  %indvars.iv370 = phi i64 [ 0, %if.end57 ], [ %indvars.iv.next371, %land.end89 ]
  %flags = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv370, i32 5
  %66 = load i64* %flags, align 8, !tbaa !5
  %and = and i64 %66, 2
  %tobool81 = icmp eq i64 %and, 0
  br i1 %tobool81, label %land.end89, label %land.rhs82

land.rhs82:                                       ; preds = %for.body
  %nr87 = getelementptr inbounds [44 x %struct.t_ilist]* %53, i64 0, i64 %indvars.iv370, i32 0
  %67 = load i32* %nr87, align 4, !tbaa !0
  %cmp88 = icmp sgt i32 %67, 0
  br label %land.end89

land.end89:                                       ; preds = %for.body, %land.rhs82
  %68 = phi i1 [ false, %for.body ], [ %cmp88, %land.rhs82 ]
  %land.ext = zext i1 %68 to i32
  %indvars.iv.next371 = add i64 %indvars.iv370, 1
  %69 = trunc i64 %indvars.iv.next371 to i32
  %cmp76 = icmp slt i32 %69, 44
  %lnot = xor i1 %68, true
  %or.cond = and i1 %cmp76, %lnot
  br i1 %or.cond, label %for.body, label %for.end

for.end:                                          ; preds = %land.end89
  %call90 = call %struct.t_forcerec* @mk_forcerec() #6
  %70 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %71 = load %struct.t_mdatoms** %mdatoms, align 8, !tbaa !3
  %box = getelementptr inbounds i8* %call5, i64 592
  %72 = bitcast i8* %box to [3 x [3 x float]]*
  %arraydecay = bitcast i8* %box to [3 x float]*
  %call92 = call i8* @opt2fn(i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #6
  call void @init_forcerec(%struct._IO_FILE* %70, %struct.t_forcerec* %call90, %struct.t_inputrec* %ir, %struct.t_topology* %4, %struct.t_commrec* %cr, %struct.t_mdatoms* %71, %struct.t_nsborder* %3, [3 x float]* %arraydecay, i32 0, i8* %call92, i32 0) #6
  %and93 = lshr i64 %Flags, 7
  %and93.tr = trunc i64 %and93 to i32
  %conv = and i32 %and93.tr, 1
  %bSepDVDL = getelementptr inbounds %struct.t_forcerec* %call90, i64 0, i32 32
  store i32 %conv, i32* %bSepDVDL, align 4, !tbaa !0
  br label %for.body98

for.body98:                                       ; preds = %for.body98, %for.end
  %indvars.iv = phi i64 [ 0, %for.end ], [ %indvars.iv.next, %for.body98 ]
  %arrayidx103 = getelementptr inbounds [3 x [3 x float]]* %72, i64 0, i64 %indvars.iv, i64 %indvars.iv
  %73 = load float* %arrayidx103, align 4, !tbaa !4
  %arrayidx105 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 %indvars.iv
  store float %73, float* %arrayidx105, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end108, label %for.body98

for.end108:                                       ; preds = %for.body98
  %eeltype = getelementptr inbounds %struct.t_forcerec* %call90, i64 0, i32 33
  %74 = load i32* %eeltype, align 4, !tbaa !0
  %cmp109 = icmp eq i32 %74, 5
  br i1 %cmp109, label %if.then111, label %if.end115

if.then111:                                       ; preds = %for.end108
  %75 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %arraydecay112 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 0
  %call113 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8]* @.str16, i64 0, i64 0)) #6
  call void @init_pppm(%struct._IO_FILE* %75, %struct.t_commrec* %cr, %struct.t_nsborder* %3, i32 0, i32 1, float* %arraydecay112, i8* %call113, %struct.t_inputrec* %ir) #6
  %.pr367 = load i32* %eeltype, align 4, !tbaa !0
  br label %if.end115

if.end115:                                        ; preds = %if.then111, %for.end108
  %76 = phi i32 [ %.pr367, %if.then111 ], [ %74, %for.end108 ]
  %cmp117 = icmp eq i32 %76, 3
  br i1 %cmp117, label %if.then119, label %if.end129

if.then119:                                       ; preds = %if.end115
  %77 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %nkx = getelementptr inbounds i8* %call5, i64 68
  %78 = bitcast i8* %nkx to i32*
  %79 = load i32* %78, align 4, !tbaa !0
  %nky = getelementptr inbounds i8* %call5, i64 72
  %80 = bitcast i8* %nky to i32*
  %81 = load i32* %80, align 4, !tbaa !0
  %nkz = getelementptr inbounds i8* %call5, i64 76
  %82 = bitcast i8* %nkz to i32*
  %83 = load i32* %82, align 4, !tbaa !0
  %pme_order = getelementptr inbounds i8* %call5, i64 80
  %84 = bitcast i8* %pme_order to i32*
  %85 = load i32* %84, align 4, !tbaa !0
  %86 = load i32* %nodeid48, align 4, !tbaa !0
  %idxprom125 = sext i32 %86 to i64
  %homenr = getelementptr inbounds i8* %call2, i64 28
  %87 = bitcast i8* %homenr to [256 x i32]*
  %arrayidx126 = getelementptr inbounds [256 x i32]* %87, i64 0, i64 %idxprom125
  %88 = load i32* %arrayidx126, align 4, !tbaa !0
  %bOptFFT = getelementptr inbounds i8* %call5, i64 96
  %89 = bitcast i8* %bOptFFT to i32*
  %90 = load i32* %89, align 4, !tbaa !0
  %ewald_geometry = getelementptr inbounds i8* %call5, i64 88
  %91 = bitcast i8* %ewald_geometry to i32*
  %92 = load i32* %91, align 4, !tbaa !0
  call void @init_pme(%struct._IO_FILE* %77, %struct.t_commrec* %cr, i32 %79, i32 %81, i32 %83, i32 %85, i32 %88, i32 %90, i32 %92) #6
  br label %if.end129

if.end129:                                        ; preds = %if.then119, %if.end115
  %eI = bitcast i8* %call5 to i32*
  %93 = load i32* %eI, align 4, !tbaa !0
  switch i32 %93, label %sw.default [
    i32 0, label %sw.bb
    i32 4, label %sw.bb
    i32 3, label %sw.bb
    i32 2, label %sw.bb135
    i32 1, label %sw.bb144
    i32 5, label %sw.bb154
  ]

sw.bb:                                            ; preds = %if.end129, %if.end129, %if.end129
  %94 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %95 = load i32* %bParDummies, align 4, !tbaa !0
  %tobool131 = icmp ne i32 %95, 0
  %dummycomm. = select i1 %tobool131, %struct.t_comm_dummies* %dummycomm, %struct.t_comm_dummies* null
  %96 = load [3 x float]** %x, align 8, !tbaa !3
  %97 = load [3 x float]** %v, align 8, !tbaa !3
  %98 = load %struct.t_mdatoms** %mdatoms, align 8, !tbaa !3
  %arraydecay133 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 0
  %call134 = call i64 @do_md(%struct._IO_FILE* %94, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, i32 %nfile, %struct.t_filenm* %fnm, i32 %bVerbose, i32 undef, i32 %land.ext, %struct.t_comm_dummies* %dummycomm., i32 %nstepout, %struct.t_parm* %6, %struct.t_groups* %5, %struct.t_topology* %4, float* %1, %struct.t_fcdata* %2, [3 x float]* %96, [3 x float]* %35, [3 x float]* %97, [3 x float]* %33, [3 x float]* %31, [3 x float]* %29, %struct.t_mdatoms* %98, %struct.t_nsborder* %3, %struct.t_nrnb* %8, %struct.t_graph* %call54, %struct.t_edsamyn* %edyn, %struct.t_forcerec* %call90, float* %arraydecay133, i64 %Flags) #7
  br label %sw.epilog

sw.bb135:                                         ; preds = %if.end129
  %99 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %100 = load [3 x float]** %x, align 8, !tbaa !3
  %101 = load %struct.t_mdatoms** %mdatoms, align 8, !tbaa !3
  %ekin = getelementptr inbounds i8* %call5, i64 736
  %arraydecay136 = bitcast i8* %ekin to [3 x float]*
  %102 = load i32* %bParDummies, align 4, !tbaa !0
  %tobool137 = icmp ne i32 %102, 0
  %dummycomm.198 = select i1 %tobool137, %struct.t_comm_dummies* %dummycomm, %struct.t_comm_dummies* null
  %arraydecay142 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 0
  %call143 = call i64 @do_cg(%struct._IO_FILE* %99, i32 %nfile, %struct.t_filenm* %fnm, %struct.t_parm* %6, %struct.t_topology* %4, %struct.t_groups* %5, %struct.t_nsborder* %3, [3 x float]* %100, [3 x float]* %31, [3 x float]* %29, %struct.t_mdatoms* %101, [3 x float]* %arraydecay136, float* %1, %struct.t_fcdata* %2, %struct.t_nrnb* %8, i32 %bVerbose, i32 %land.ext, %struct.t_comm_dummies* %dummycomm.198, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_graph* %call54, %struct.t_forcerec* %call90, float* %arraydecay142) #6
  br label %sw.epilog

sw.bb144:                                         ; preds = %if.end129
  %103 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %104 = load [3 x float]** %x, align 8, !tbaa !3
  %105 = load %struct.t_mdatoms** %mdatoms, align 8, !tbaa !3
  %ekin145 = getelementptr inbounds i8* %call5, i64 736
  %arraydecay146 = bitcast i8* %ekin145 to [3 x float]*
  %106 = load i32* %bParDummies, align 4, !tbaa !0
  %tobool147 = icmp ne i32 %106, 0
  %dummycomm.199 = select i1 %tobool147, %struct.t_comm_dummies* %dummycomm, %struct.t_comm_dummies* null
  %arraydecay152 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 0
  %call153 = call i64 @do_steep(%struct._IO_FILE* %103, i32 %nfile, %struct.t_filenm* %fnm, %struct.t_parm* %6, %struct.t_topology* %4, %struct.t_groups* %5, %struct.t_nsborder* %3, [3 x float]* %104, [3 x float]* %31, [3 x float]* %29, %struct.t_mdatoms* %105, [3 x float]* %arraydecay146, float* %1, %struct.t_fcdata* %2, %struct.t_nrnb* %8, i32 %bVerbose, i32 %land.ext, %struct.t_comm_dummies* %dummycomm.199, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_graph* %call54, %struct.t_forcerec* %call90, float* %arraydecay152) #6
  br label %sw.epilog

sw.bb154:                                         ; preds = %if.end129
  %107 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %108 = load [3 x float]** %x, align 8, !tbaa !3
  %109 = load [3 x float]** %v, align 8, !tbaa !3
  %110 = load %struct.t_mdatoms** %mdatoms, align 8, !tbaa !3
  %arraydecay155 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 0
  %call156 = call i64 @do_nm(%struct._IO_FILE* %107, %struct.t_commrec* %cr, i32 %nfile, %struct.t_filenm* %fnm, i32 %bVerbose, i32 %bCompact, i32 %nstepout, %struct.t_parm* %6, %struct.t_groups* %5, %struct.t_topology* %4, float* %1, %struct.t_fcdata* %2, [3 x float]* %108, [3 x float]* %35, [3 x float]* %109, [3 x float]* %33, [3 x float]* %31, [3 x float]* %29, %struct.t_mdatoms* %110, %struct.t_nsborder* %3, %struct.t_nrnb* %8, %struct.t_graph* %call54, %struct.t_edsamyn* %edyn, %struct.t_forcerec* %call90, float* %arraydecay155) #6
  br label %sw.epilog

sw.default:                                       ; preds = %if.end129
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str17, i64 0, i64 0), i32 %93) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb154, %sw.bb144, %sw.bb135, %sw.bb
  %start_t.0 = phi i64 [ 0, %sw.default ], [ %call156, %sw.bb154 ], [ %call153, %sw.bb144 ], [ %call143, %sw.bb135 ], [ %call134, %sw.bb ]
  %111 = load i32* %nodeid39, align 4, !tbaa !0
  %cmp160 = icmp eq i32 %111, 0
  br i1 %cmp160, label %land.lhs.true162, label %if.end176

land.lhs.true162:                                 ; preds = %sw.epilog
  %threadid163 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %112 = load i32* %threadid163, align 4, !tbaa !0
  %cmp164 = icmp eq i32 %112, 0
  br i1 %cmp164, label %if.then166, label %if.end176

if.then166:                                       ; preds = %land.lhs.true162
  %call167 = call i64 @time(i64* null) #6
  %call168 = call double @difftime(i64 %call167, i64 %start_t.0) #8
  %call169 = call double @node_time() #6
  %call170 = call double @fabs(double %call169) #8
  %cmp171 = fcmp olt double %call170, 1.200000e-38
  br i1 %cmp171, label %if.then173, label %if.end176

if.then173:                                       ; preds = %if.then166
  br label %if.end176

if.end176:                                        ; preds = %sw.epilog, %land.lhs.true162, %if.then166, %if.then173
  %realtime.0 = phi double [ %call168, %if.then173 ], [ %call168, %if.then166 ], [ 0.000000e+00, %land.lhs.true162 ], [ 0.000000e+00, %sw.epilog ]
  %nodetime.0 = phi double [ %call168, %if.then173 ], [ %call169, %if.then166 ], [ 0.000000e+00, %land.lhs.true162 ], [ 0.000000e+00, %sw.epilog ]
  %113 = load %struct.t_mdatoms** %mdatoms, align 8, !tbaa !3
  call void @md2atoms(%struct.t_mdatoms* %113, %struct.t_atoms* %49, i32 1) #6
  br i1 %tobool, label %if.then179, label %if.end197

if.then179:                                       ; preds = %if.end176
  %114 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %call180 = call i8* @ftp2fn(i32 12, i32 %nfile, %struct.t_filenm* %fnm) #6
  %nsteps = getelementptr inbounds i8* %call5, i64 4
  %115 = bitcast i8* %nsteps to i32*
  %116 = load i32* %115, align 4, !tbaa !0
  %117 = load i32* %eI, align 4, !tbaa !0
  switch i32 %117, label %lor.rhs [
    i32 0, label %lor.end
    i32 4, label %lor.end
    i32 3, label %lor.end
  ]

lor.rhs:                                          ; preds = %if.then179
  br label %lor.end

lor.end:                                          ; preds = %if.then179, %if.then179, %if.then179, %lor.rhs
  %118 = phi i32 [ 1, %if.then179 ], [ 0, %lor.rhs ], [ 1, %if.then179 ], [ 1, %if.then179 ]
  call void @finish_run(%struct._IO_FILE* %114, %struct.t_commrec* %cr, i8* %call180, %struct.t_nsborder* %3, %struct.t_topology* %4, %struct.t_parm* %6, %struct.t_nrnb* %8, double %nodetime.0, double %realtime.0, i32 %116, i32 %118) #6
  %119 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %120 = load i32* %nodeid39, align 4, !tbaa !0
  %call196 = call i64 @print_date_and_time(%struct._IO_FILE* %119, i32 %120, i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0)) #6
  br label %if.end197

if.end197:                                        ; preds = %lor.end, %if.end176
  call void @llvm.lifetime.end(i64 48, i8* %0) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @distribute_parts(i32, i32, i32, i32, %struct.t_parm*, i8*, i32) #2

; Function Attrs: optsize
declare i8* @ftp2fn(i32, i32, %struct.t_filenm*) #2

; Function Attrs: optsize
declare void @init_parts(%struct._IO_FILE*, %struct.t_commrec*, %struct.t_parm*, %struct.t_topology*, [3 x float]**, [3 x float]**, %struct.t_mdatoms**, %struct.t_nsborder*, i32, i32*, %struct.t_comm_dummies*) #2

; Function Attrs: optsize
declare void @init_single(%struct._IO_FILE*, %struct.t_parm*, i8*, %struct.t_topology*, [3 x float]**, [3 x float]**, %struct.t_mdatoms**, %struct.t_nsborder*) #2

; Function Attrs: optsize
declare void @init_groups(%struct._IO_FILE*, %struct.t_mdatoms*, %struct.t_grpopts*, %struct.t_groups*) #2

; Function Attrs: optsize
declare %struct.t_graph* @mk_graph(%struct.t_idef*, i32, i32, i32) #2

; Function Attrs: optsize
declare void @p_graph(%struct._IO_FILE*, i8*, %struct.t_graph*) #2

; Function Attrs: optsize
declare void @init_disres(%struct._IO_FILE*, i32, i32*, %union.t_iparams*, %struct.t_inputrec*, %struct.t_commrec*, %struct.t_fcdata*) #2

; Function Attrs: optsize
declare void @init_orires(%struct._IO_FILE*, i32, i32*, %union.t_iparams*, [3 x float]*, %struct.t_mdatoms*, %struct.t_inputrec*, %struct.t_commrec*, %struct.t_fcdata*) #2

; Function Attrs: optsize
declare %struct.t_forcerec* @mk_forcerec() #2

; Function Attrs: optsize
declare void @init_forcerec(%struct._IO_FILE*, %struct.t_forcerec*, %struct.t_inputrec*, %struct.t_topology*, %struct.t_commrec*, %struct.t_mdatoms*, %struct.t_nsborder*, [3 x float]*, i32, i8*, i32) #2

; Function Attrs: optsize
declare i8* @opt2fn(i8*, i32, %struct.t_filenm*) #2

; Function Attrs: optsize
declare void @init_pppm(%struct._IO_FILE*, %struct.t_commrec*, %struct.t_nsborder*, i32, i32, float*, i8*, %struct.t_inputrec*) #2

; Function Attrs: nounwind optsize readonly
declare i8* @getenv(i8* nocapture) #4

; Function Attrs: optsize
declare void @init_pme(%struct._IO_FILE*, %struct.t_commrec*, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind optsize uwtable
define i64 @do_md(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, i32 %nfile, %struct.t_filenm* %fnm, i32 %bVerbose, i32 %bCompact, i32 %bDummies, %struct.t_comm_dummies* %dummycomm, i32 %stepout, %struct.t_parm* %parm, %struct.t_groups* %grps, %struct.t_topology* %top, float* %ener, %struct.t_fcdata* %fcd, [3 x float]* %x, [3 x float]* %vold, [3 x float]* %v, [3 x float]* %vt, [3 x float]* %f, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, %struct.t_nsborder* %nsb, %struct.t_nrnb* %nrnb, %struct.t_graph* %graph, %struct.t_edsamyn* %edyn, %struct.t_forcerec* %fr, float* %box_size, i64 %Flags) #0 {
entry:
  %mdebin = alloca %struct.t_mdebin*, align 8
  %fp_ene = alloca i32, align 4
  %fp_dgdl = alloca %struct._IO_FILE*, align 8
  %t = alloca float, align 4
  %lambda = alloca float, align 4
  %t0 = alloca float, align 4
  %lam0 = alloca float, align 4
  %SAfactor = alloca float, align 4
  %bTYZ = alloca i32, align 4
  %bNEMD = alloca i32, align 4
  %force_vir = alloca [3 x [3 x float]], align 16
  %pme_vir = alloca [3 x [3 x float]], align 16
  %shake_vir = alloca [3 x [3 x float]], align 16
  %mynrnb = alloca %struct.t_nrnb, align 8
  %traj = alloca i8*, align 8
  %xtc_traj = alloca i8*, align 8
  %status = alloca i32, align 4
  %mu_tot = alloca [3 x float], align 4
  %vcm = alloca %struct.t_vcm*, align 8
  %rerun_fr = alloca %struct.t_trxframe, align 8
  %pulldata = alloca %struct.t_pull, align 8
  %terminate = alloca float, align 4
  %nshell = alloca i32, align 4
  %nshell_tot = alloca i32, align 4
  %bConverged = alloca i32, align 4
  %gnx = alloca i32, align 4
  %grpindex = alloca i32*, align 8
  %grpname = alloca i8*, align 8
  store i32 0, i32* %fp_ene, align 4, !tbaa !0
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp_dgdl, align 8, !tbaa !3
  %0 = bitcast [3 x [3 x float]]* %force_vir to i8*
  call void @llvm.lifetime.start(i64 36, i8* %0) #1
  %1 = bitcast [3 x [3 x float]]* %pme_vir to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #1
  %2 = bitcast [3 x [3 x float]]* %shake_vir to i8*
  call void @llvm.lifetime.start(i64 36, i8* %2) #1
  %3 = bitcast %struct.t_nrnb* %mynrnb to i8*
  call void @llvm.lifetime.start(i64 1032, i8* %3) #1
  %4 = bitcast %struct.t_trxframe* %rerun_fr to i8*
  call void @llvm.lifetime.start(i64 176, i8* %4) #1
  %5 = bitcast %struct.t_pull* %pulldata to i8*
  call void @llvm.lifetime.start(i64 552, i8* %5) #1
  store float 0.000000e+00, float* %terminate, align 4, !tbaa !4
  store i32 0, i32* %bConverged, align 4, !tbaa !0
  %and = and i64 %Flags, 16
  %cmp = icmp ne i64 %and, 0
  %and1 = and i64 %Flags, 8
  %cmp2 = icmp ne i64 %and1, 0
  %and4 = and i64 %Flags, 2
  %cmp5 = icmp eq i64 %and4, 0
  %and7 = and i64 %Flags, 64
  %cmp8 = icmp ne i64 %and7, 0
  %ir = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0
  %arraydecay = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %arraydecay10 = getelementptr inbounds [3 x [3 x float]]* %force_vir, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [3 x [3 x float]]* %pme_vir, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [3 x [3 x float]]* %shake_vir, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [3 x float]* %mu_tot, i64 0, i64 0
  call void @init_md(%struct.t_commrec* %cr, %struct.t_inputrec* %ir, [3 x float]* %arraydecay, float* %t, float* %t0, float* %lambda, float* %lam0, float* %SAfactor, %struct.t_nrnb* %mynrnb, i32* %bTYZ, %struct.t_topology* %top, i32 %nfile, %struct.t_filenm* %fnm, i8** %traj, i8** %xtc_traj, i32* %fp_ene, %struct._IO_FILE** %fp_dgdl, %struct.t_mdebin** %mdebin, %struct.t_groups* %grps, [3 x float]* %arraydecay10, [3 x float]* %arraydecay11, [3 x float]* %arraydecay12, %struct.t_mdatoms* %mdatoms, float* %arraydecay13, i32* %bNEMD, %struct.t_vcm** %vcm, %struct.t_nsborder* %nsb) #6
  %nodeid = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %6 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom
  %7 = load i32* %arrayidx, align 4, !tbaa !0
  %arrayidx16 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom
  %8 = load i32* %arrayidx16, align 4, !tbaa !0
  %idef = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1
  %call = call %struct.t_shell* @init_shells(%struct._IO_FILE* %log, i32 %7, i32 %8, %struct.t_idef* %idef, %struct.t_mdatoms* %mdatoms, i32* %nshell) #6
  %9 = load i32* %nshell, align 4, !tbaa !0
  store i32 %9, i32* %nshell_tot, align 4, !tbaa !0
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %10 = load i32* %nnodes, align 4, !tbaa !0
  %cmp17 = icmp sgt i32 %10, 1
  br i1 %cmp17, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %11 = load i32* %nthreads, align 4, !tbaa !0
  %cmp19 = icmp sgt i32 %11, 1
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @gmx_sumi(i32 1, i32* %nshell_tot, %struct.t_commrec* %cr) #6
  %.pre = load i32* %nshell_tot, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %12 = phi i32 [ %.pre, %if.then ], [ %9, %lor.lhs.false ]
  %cmp21 = icmp sgt i32 %12, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = call i32 @ftp2bSet(i32 21, i32 %nfile, %struct.t_filenm* %fnm) #6
  %tobool = icmp eq i32 %call23, 0
  br i1 %tobool, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end
  %call25 = call i8* @ftp2fn(i32 21, i32 %nfile, %struct.t_filenm* %fnm) #6
  call void @rd_index(i8* %call25, i32 1, i32* %gnx, i32** %grpindex, i8** %grpname) #6
  br label %if.end32

if.else:                                          ; preds = %if.end
  %nr = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 1
  %13 = load i32* %nr, align 4, !tbaa !0
  store i32 %13, i32* %gnx, align 4, !tbaa !0
  %call27 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str1, i64 0, i64 0), i32 310, i32 %13, i32 4) #6
  %14 = bitcast i8* %call27 to i32*
  store i32* %14, i32** %grpindex, align 8, !tbaa !3
  %15 = load i32* %gnx, align 4, !tbaa !0
  %cmp281882 = icmp sgt i32 %15, 0
  br i1 %cmp281882, label %for.body, label %if.end32

for.body:                                         ; preds = %if.else, %for.body
  %indvars.iv1902 = phi i64 [ %indvars.iv.next1903, %for.body ], [ 0, %if.else ]
  %arrayidx31 = getelementptr inbounds i32* %14, i64 %indvars.iv1902
  %16 = trunc i64 %indvars.iv1902 to i32
  store i32 %16, i32* %arrayidx31, align 4, !tbaa !0
  %indvars.iv.next1903 = add i64 %indvars.iv1902, 1
  %17 = load i32* %gnx, align 4, !tbaa !0
  %18 = trunc i64 %indvars.iv.next1903 to i32
  %cmp28 = icmp slt i32 %18, %17
  br i1 %cmp28, label %for.body, label %if.end32

if.end32:                                         ; preds = %if.else, %for.body, %if.then24
  %call33 = call i32 @ftp2bSet(i32 1, i32 %nfile, %struct.t_filenm* %fnm) #6
  %nodeid34 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %19 = load i32* %nodeid34, align 4, !tbaa !0
  %cmp35 = icmp eq i32 %19, 0
  br i1 %cmp35, label %land.lhs.true, label %if.end43

land.lhs.true:                                    ; preds = %if.end32
  %threadid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %20 = load i32* %threadid, align 4, !tbaa !0
  %cmp37 = icmp ne i32 %20, 0
  %tobool40 = icmp eq i32 %call33, 0
  %or.cond1812 = or i1 %cmp37, %tobool40
  br i1 %or.cond1812, label %if.end43, label %if.then41

if.then41:                                        ; preds = %land.lhs.true
  %21 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %22 = call i64 @fwrite(i8* getelementptr inbounds ([34 x i8]* @.str20, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %21)
  br label %if.end43

if.end43:                                         ; preds = %land.lhs.true, %if.then41, %if.end32
  %ePBC = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 0
  %23 = load i32* %ePBC, align 4, !tbaa !0
  %cmp44 = icmp eq i32 %23, 1
  br i1 %cmp44, label %if.end47, label %if.then46

if.then46:                                        ; preds = %if.end43
  call void @do_pbc_first(%struct._IO_FILE* %log, %struct.t_parm* %parm, float* %box_size, %struct.t_forcerec* %fr, %struct.t_graph* %graph, [3 x float]* %x) #6
  br label %if.end47

if.end47:                                         ; preds = %if.end43, %if.then46
  call void @init_pull(%struct._IO_FILE* %log, i32 %nfile, %struct.t_filenm* %fnm, %struct.t_pull* %pulldata, [3 x float]* %x, %struct.t_mdatoms* %mdatoms, [3 x float]* %arraydecay) #6
  %bPull = getelementptr inbounds %struct.t_pull* %pulldata, i64 0, i32 16
  %24 = load i32* %bPull, align 4, !tbaa !0
  %tobool50 = icmp eq i32 %24, 0
  br i1 %tobool50, label %if.end56, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %if.end47
  %25 = load i32* %nnodes, align 4, !tbaa !0
  %cmp53 = icmp sgt i32 %25, 1
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %land.lhs.true51
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([25 x i8]* @.str21, i64 0, i64 0)) #6
  br label %if.end56

if.end56:                                         ; preds = %if.end47, %if.then55, %land.lhs.true51
  %bUncStart = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 26
  %26 = load i32* %bUncStart, align 4, !tbaa !0
  %tobool58 = icmp eq i32 %26, 0
  br i1 %tobool58, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end56
  %27 = load i32* %bTYZ, align 4, !tbaa !0
  %28 = load float* %lambda, align 4, !tbaa !4
  call void @do_shakefirst(%struct._IO_FILE* %log, i32 %27, float %28, float* %ener, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, %struct.t_mdatoms* %mdatoms, [3 x float]* %x, [3 x float]* %vold, [3 x float]* %buf, [3 x float]* %f, [3 x float]* %v, %struct.t_graph* %graph, %struct.t_commrec* %cr, %struct.t_nrnb* %mynrnb, %struct.t_groups* %grps, %struct.t_forcerec* %fr, %struct.t_topology* %top, %struct.t_edsamyn* %edyn, %struct.t_pull* %pulldata) #6
  br label %if.end60

if.end60:                                         ; preds = %if.end56, %if.then59
  %cos_accel = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 3, i32 0
  %29 = load float* %cos_accel, align 4, !tbaa !4
  %fabsf = call float @fabsf(float %29) #5
  %30 = fpext float %fabsf to double
  %cmp63 = fcmp olt double %30, 1.200000e-38
  br i1 %cmp63, label %if.then65, label %if.else79

if.then65:                                        ; preds = %if.end60
  %eI = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 0
  %31 = load i32* %eI, align 4, !tbaa !0
  %cmp67 = icmp eq i32 %31, 4
  %conv68 = zext i1 %cmp67 to i32
  %32 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom70 = sext i32 %32 to i64
  %arrayidx72 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom70
  %33 = load i32* %arrayidx72, align 4, !tbaa !0
  %arrayidx76 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom70
  %34 = load i32* %arrayidx76, align 4, !tbaa !0
  %opts = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80
  %35 = load float* %lambda, align 4, !tbaa !4
  %arrayidx78 = getelementptr inbounds float* %ener, i64 43
  call void @calc_ke_part(i32 1, i32 %conv68, i32 %33, i32 %34, [3 x float]* %vold, [3 x float]* %v, [3 x float]* %vt, %struct.t_grpopts* %opts, %struct.t_mdatoms* %mdatoms, %struct.t_groups* %grps, %struct.t_nrnb* %mynrnb, float %35, float* %arrayidx78) #6
  br label %if.end93

if.else79:                                        ; preds = %if.end60
  %36 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom81 = sext i32 %36 to i64
  %arrayidx83 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom81
  %37 = load i32* %arrayidx83, align 4, !tbaa !0
  %arrayidx87 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom81
  %38 = load i32* %arrayidx87, align 4, !tbaa !0
  %opts91 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80
  %39 = load float* %lambda, align 4, !tbaa !4
  %arrayidx92 = getelementptr inbounds float* %ener, i64 43
  call void @calc_ke_part_visc(i32 1, i32 %37, i32 %38, [3 x float]* %arraydecay, [3 x float]* %x, [3 x float]* %vold, [3 x float]* %v, [3 x float]* %vt, %struct.t_grpopts* %opts91, %struct.t_mdatoms* %mdatoms, %struct.t_groups* %grps, %struct.t_nrnb* %mynrnb, float %39, float* %arrayidx92) #6
  br label %if.end93

if.end93:                                         ; preds = %if.else79, %if.then65
  %40 = load i32* %nnodes, align 4, !tbaa !0
  %cmp95 = icmp sgt i32 %40, 1
  br i1 %cmp95, label %if.then101, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %if.end93
  %nthreads98 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %41 = load i32* %nthreads98, align 4, !tbaa !0
  %cmp99 = icmp sgt i32 %41, 1
  br i1 %cmp99, label %if.then101, label %lor.lhs.false97.if.end106_crit_edge

lor.lhs.false97.if.end106_crit_edge:              ; preds = %lor.lhs.false97
  %opts108.pre = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80
  br label %if.end106

if.then101:                                       ; preds = %lor.lhs.false97, %if.end93
  %opts105 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80
  %42 = load %struct.t_vcm** %vcm, align 8, !tbaa !3
  call void @global_stat(%struct._IO_FILE* %log, %struct.t_commrec* %cr, float* %ener, [3 x float]* %arraydecay10, [3 x float]* %arraydecay12, %struct.t_grpopts* %opts105, %struct.t_groups* %grps, %struct.t_nrnb* %mynrnb, %struct.t_nrnb* %nrnb, %struct.t_vcm* %42, float* %terminate) #6
  br label %if.end106

if.end106:                                        ; preds = %lor.lhs.false97.if.end106_crit_edge, %if.then101
  %opts108.pre-phi = phi %struct.t_grpopts* [ %opts108.pre, %lor.lhs.false97.if.end106_crit_edge ], [ %opts105, %if.then101 ]
  %arraydecay109 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 5, i64 0
  %43 = load i32* %bTYZ, align 4, !tbaa !0
  %call110 = call float @sum_ekin(%struct.t_grpopts* %opts108.pre-phi, %struct.t_groups* %grps, [3 x float]* %arraydecay109, i32 %43) #6
  %arrayidx111 = getelementptr inbounds float* %ener, i64 40
  store float %call110, float* %arrayidx111, align 4, !tbaa !4
  %etc = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 27
  %44 = load i32* %etc, align 4, !tbaa !0
  switch i32 %44, label %if.end130 [
    i32 1, label %if.then115
    i32 2, label %if.then124
  ]

if.then115:                                       ; preds = %if.end106
  %delta_t = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15
  %45 = load float* %delta_t, align 4, !tbaa !4
  %46 = load float* %SAfactor, align 4, !tbaa !4
  call void @berendsen_tcoupl(%struct.t_grpopts* %opts108.pre-phi, %struct.t_groups* %grps, float %45, float %46) #6
  br label %if.end130

if.then124:                                       ; preds = %if.end106
  %delta_t128 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15
  %47 = load float* %delta_t128, align 4, !tbaa !4
  %48 = load float* %SAfactor, align 4, !tbaa !4
  call void @nosehoover_tcoupl(%struct.t_grpopts* %opts108.pre-phi, %struct.t_groups* %grps, float %47, float %48) #6
  br label %if.end130

if.end130:                                        ; preds = %if.end106, %if.then124, %if.then115
  br i1 %cmp8, label %if.then132, label %if.end148

if.then132:                                       ; preds = %if.end130
  %natoms = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  %49 = load i32* %natoms, align 4, !tbaa !0
  %call133 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str1, i64 0, i64 0), i32 363, i32 %49, i32 12) #6
  %50 = bitcast i8* %call133 to [3 x float]*
  %51 = load i32* %natoms, align 4, !tbaa !0
  %cmp1361880 = icmp sgt i32 %51, 0
  br i1 %cmp1361880, label %for.body138, label %if.end148

for.body138:                                      ; preds = %if.then132, %for.body138
  %indvars.iv1900 = phi i64 [ %indvars.iv.next1901, %for.body138 ], [ 0, %if.then132 ]
  %arraydecay141 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv1900, i64 0
  %arraydecay144 = getelementptr inbounds [3 x float]* %50, i64 %indvars.iv1900, i64 0
  %52 = load float* %arraydecay141, align 4, !tbaa !4
  store float %52, float* %arraydecay144, align 4, !tbaa !4
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv1900, i64 1
  %53 = load float* %arrayidx2.i, align 4, !tbaa !4
  %arrayidx3.i = getelementptr inbounds [3 x float]* %50, i64 %indvars.iv1900, i64 1
  store float %53, float* %arrayidx3.i, align 4, !tbaa !4
  %arrayidx4.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv1900, i64 2
  %54 = load float* %arrayidx4.i, align 4, !tbaa !4
  %arrayidx5.i = getelementptr inbounds [3 x float]* %50, i64 %indvars.iv1900, i64 2
  store float %54, float* %arrayidx5.i, align 4, !tbaa !4
  %indvars.iv.next1901 = add i64 %indvars.iv1900, 1
  %55 = trunc i64 %indvars.iv.next1901 to i32
  %cmp136 = icmp slt i32 %55, %51
  br i1 %cmp136, label %for.body138, label %if.end148

if.end148:                                        ; preds = %if.then132, %for.body138, %if.end130
  %xcopy.0 = phi [3 x float]* [ null, %if.end130 ], [ %50, %for.body138 ], [ %50, %if.then132 ]
  %56 = load i32* %nodeid34, align 4, !tbaa !0
  %call150 = call i64 @print_date_and_time(%struct._IO_FILE* %log, i32 %56, i8* getelementptr inbounds ([14 x i8]* @.str23, i64 0, i64 0)) #6
  %57 = load i32* %nodeid34, align 4, !tbaa !0
  %cmp152 = icmp eq i32 %57, 0
  br i1 %cmp152, label %land.lhs.true154, label %if.end186

land.lhs.true154:                                 ; preds = %if.end148
  %threadid155 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %58 = load i32* %threadid155, align 4, !tbaa !0
  %cmp156 = icmp ne i32 %58, 0
  %tobool159 = icmp eq i32 %bVerbose, 0
  %or.cond1906 = or i1 %cmp156, %tobool159
  br i1 %or.cond1906, label %if.end186, label %if.then160

if.then160:                                       ; preds = %land.lhs.true154
  %tobool161 = icmp eq %struct._IO_FILE* %log, null
  br i1 %tobool161, label %if.end166, label %if.then162

if.then162:                                       ; preds = %if.then160
  %59 = load float* %arrayidx111, align 4, !tbaa !4
  %conv164 = fpext float %59 to double
  %call165 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([27 x i8]* @.str24, i64 0, i64 0), double %conv164) #6
  br label %if.end166

if.end166:                                        ; preds = %if.then160, %if.then162
  %60 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %name = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0
  %61 = load i8*** %name, align 8, !tbaa !3
  %62 = load i8** %61, align 8, !tbaa !3
  br i1 %cmp, label %if.end186.thread, label %if.end186.thread1852

if.end186.thread:                                 ; preds = %if.end166
  %call169 = call i8* @opt2fn(i8* getelementptr inbounds ([7 x i8]* @.str26, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #6
  %call170 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([73 x i8]* @.str25, i64 0, i64 0), i8* %62, i8* %call169) #6
  %63 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %64 = call i64 @fwrite(i8* getelementptr inbounds ([140 x i8]* @.str27, i64 0, i64 0), i64 139, i64 1, %struct._IO_FILE* %63)
  call void @start_time() #6
  br label %if.then188

if.end186.thread1852:                             ; preds = %if.end166
  %nsteps = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 1
  %65 = load i32* %nsteps, align 4, !tbaa !0
  %conv180 = sitofp i32 %65 to float
  %delta_t182 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15
  %66 = load float* %delta_t182, align 4, !tbaa !4
  %mul = fmul float %conv180, %66
  %conv183 = fpext float %mul to double
  %call184 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([42 x i8]* @.str28, i64 0, i64 0), i8* %62, i32 %65, double %conv183) #6
  call void @start_time() #6
  br label %while.cond.preheader

if.end186:                                        ; preds = %land.lhs.true154, %if.end148
  call void @start_time() #6
  br i1 %cmp, label %if.then188, label %while.cond.preheader

if.then188:                                       ; preds = %if.end186.thread, %if.end186
  %call189 = call i8* @opt2fn(i8* getelementptr inbounds ([7 x i8]* @.str26, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #6
  %call190 = call i32 @read_first_frame(i32* %status, i8* %call189, %struct.t_trxframe* %rerun_fr, i32 6) #6
  %natoms191 = getelementptr inbounds %struct.t_trxframe* %rerun_fr, i64 0, i32 2
  %67 = load i32* %natoms191, align 8, !tbaa !0
  %nr192 = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 1
  %68 = load i32* %nr192, align 4, !tbaa !0
  %cmp193 = icmp eq i32 %67, %68
  br i1 %cmp193, label %while.cond.preheader, label %if.then195

if.then195:                                       ; preds = %if.then188
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([75 x i8]* @.str29, i64 0, i64 0), i32 %67, i32 %68) #6
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then188, %if.then195, %if.end186, %if.end186.thread1852
  %bNotLastFrame.1.ph = phi i32 [ 0, %if.end186.thread1852 ], [ 0, %if.end186 ], [ %call190, %if.then195 ], [ %call190, %if.then188 ]
  %bStep = getelementptr inbounds %struct.t_trxframe* %rerun_fr, i64 0, i32 8
  %bTime = getelementptr inbounds %struct.t_trxframe* %rerun_fr, i64 0, i32 10
  %nr220 = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 1
  %bV = getelementptr inbounds %struct.t_trxframe* %rerun_fr, i64 0, i32 20
  %arraydecay.i1840 = getelementptr inbounds %struct.t_trxframe* %rerun_fr, i64 0, i32 25, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds [3 x float]* %arraydecay, i64 0, i64 0
  %arrayidx2.i.i1841 = getelementptr inbounds %struct.t_trxframe* %rerun_fr, i64 0, i32 25, i64 0, i64 1
  %arrayidx3.i.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0, i64 1
  %arrayidx4.i.i = getelementptr inbounds %struct.t_trxframe* %rerun_fr, i64 0, i32 25, i64 0, i64 2
  %arrayidx5.i.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0, i64 2
  %arraydecay4.i = getelementptr inbounds %struct.t_trxframe* %rerun_fr, i64 0, i32 25, i64 1, i64 0
  %arraydecay6.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 1, i64 0
  %arrayidx2.i19.i = getelementptr inbounds %struct.t_trxframe* %rerun_fr, i64 0, i32 25, i64 1, i64 1
  %arrayidx3.i20.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 1, i64 1
  %arrayidx4.i21.i = getelementptr inbounds %struct.t_trxframe* %rerun_fr, i64 0, i32 25, i64 1, i64 2
  %arrayidx5.i22.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 1, i64 2
  %arraydecay8.i = getelementptr inbounds %struct.t_trxframe* %rerun_fr, i64 0, i32 25, i64 2, i64 0
  %arraydecay10.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 2, i64 0
  %arrayidx2.i15.i = getelementptr inbounds %struct.t_trxframe* %rerun_fr, i64 0, i32 25, i64 2, i64 1
  %arrayidx3.i16.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 2, i64 1
  %arrayidx4.i17.i = getelementptr inbounds %struct.t_trxframe* %rerun_fr, i64 0, i32 25, i64 2, i64 2
  %arrayidx5.i18.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 2, i64 2
  %nstlist = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 3
  %v242 = getelementptr inbounds %struct.t_trxframe* %rerun_fr, i64 0, i32 21
  %x225 = getelementptr inbounds %struct.t_trxframe* %rerun_fr, i64 0, i32 19
  %nsteps293 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 1
  %nstlog = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 8
  %nstcomm = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 7
  %tobool323 = icmp ne i32 %bDummies, 0
  %delta_t328 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15
  %atomname = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 2
  %natoms362 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  %tobool389 = icmp ne i32 %call33, 0
  %chargeA = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 6
  %tobool414 = icmp eq %struct._IO_FILE* %log, null
  %efep = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 46
  %bSimAnn = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 33
  %threadid459 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %bEwald = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 56
  %f_pme = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55
  %nstxout = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 9
  %nstvout = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 10
  %nstfout = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 11
  %69 = and i64 %Flags, 80
  %70 = icmp ne i64 %69, 0
  %arrayidx577 = getelementptr inbounds float* %ener, i64 42
  %arrayidx590 = getelementptr inbounds float* %ener, i64 37
  %arrayidx596 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1
  %massT = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 4
  %epc = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 28
  %eI626 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 0
  %arrayidx639 = getelementptr inbounds float* %ener, i64 43
  %bTwinRange = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 51
  %nn = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 0
  %arrayidx722 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 3
  %arrayidx730 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 4
  %tmass = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 0
  %arraydecay837 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 3, i64 0
  %arrayidx1.i1832 = getelementptr inbounds [3 x [3 x float]]* %force_vir, i64 0, i64 0, i64 0
  %arrayidx3.i1833 = getelementptr inbounds [3 x [3 x float]]* %shake_vir, i64 0, i64 0, i64 0
  %arrayidx5.i1835 = getelementptr inbounds [3 x float]* %arraydecay837, i64 0, i64 0
  %arrayidx7.i = getelementptr inbounds [3 x [3 x float]]* %force_vir, i64 0, i64 0, i64 1
  %arrayidx9.i = getelementptr inbounds [3 x [3 x float]]* %shake_vir, i64 0, i64 0, i64 1
  %arrayidx12.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 3, i64 0, i64 1
  %arrayidx14.i = getelementptr inbounds [3 x [3 x float]]* %force_vir, i64 0, i64 0, i64 2
  %arrayidx16.i = getelementptr inbounds [3 x [3 x float]]* %shake_vir, i64 0, i64 0, i64 2
  %arrayidx19.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 3, i64 0, i64 2
  %arrayidx21.i = getelementptr inbounds [3 x [3 x float]]* %force_vir, i64 0, i64 1, i64 0
  %arrayidx23.i = getelementptr inbounds [3 x [3 x float]]* %shake_vir, i64 0, i64 1, i64 0
  %arrayidx26.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 3, i64 1, i64 0
  %arrayidx28.i = getelementptr inbounds [3 x [3 x float]]* %force_vir, i64 0, i64 1, i64 1
  %arrayidx30.i = getelementptr inbounds [3 x [3 x float]]* %shake_vir, i64 0, i64 1, i64 1
  %arrayidx33.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 3, i64 1, i64 1
  %arrayidx35.i = getelementptr inbounds [3 x [3 x float]]* %force_vir, i64 0, i64 1, i64 2
  %arrayidx37.i = getelementptr inbounds [3 x [3 x float]]* %shake_vir, i64 0, i64 1, i64 2
  %arrayidx40.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 3, i64 1, i64 2
  %arrayidx42.i = getelementptr inbounds [3 x [3 x float]]* %force_vir, i64 0, i64 2, i64 0
  %arrayidx44.i = getelementptr inbounds [3 x [3 x float]]* %shake_vir, i64 0, i64 2, i64 0
  %arrayidx47.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 3, i64 2, i64 0
  %arrayidx49.i = getelementptr inbounds [3 x [3 x float]]* %force_vir, i64 0, i64 2, i64 1
  %arrayidx51.i = getelementptr inbounds [3 x [3 x float]]* %shake_vir, i64 0, i64 2, i64 1
  %arrayidx54.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 3, i64 2, i64 1
  %arrayidx56.i = getelementptr inbounds [3 x [3 x float]]* %force_vir, i64 0, i64 2, i64 2
  %arrayidx58.i = getelementptr inbounds [3 x [3 x float]]* %shake_vir, i64 0, i64 2, i64 2
  %arrayidx61.i = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 3, i64 2, i64 2
  %mvcos = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 3, i32 1
  %vcos = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 3, i32 2
  %arrayidx1.i = getelementptr inbounds [3 x float]* %arraydecay109, i64 0, i64 0
  %arrayidx3.i1830 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 5, i64 1, i64 1
  %arrayidx5.i1831 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 5, i64 2, i64 2
  %arrayidx853 = getelementptr inbounds float* %ener, i64 38
  %arrayidx857 = getelementptr inbounds float* %ener, i64 39
  %arraydecay898 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 4, i64 0
  %eeltype = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 33
  %arrayidx902 = getelementptr inbounds float* %ener, i64 18
  %eDispCorr = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 43
  %nr934 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 1
  %cmp935 = icmp ne %struct.t_commrec* %mcr, null
  %cond940 = select i1 %cmp935, %struct.t_commrec* %mcr, %struct.t_commrec* %cr
  %tobool1014 = icmp eq i32 %bVerbose, 0
  %nstenergy = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 12
  %nstdisreout = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 54
  %nstorireout = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 58
  %arrayidx832 = getelementptr inbounds %struct.t_nrnb* %mynrnb, i64 0, i32 0, i64 110
  %nthreads702 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %runtype = getelementptr inbounds %struct.t_pull* %pulldata, i64 0, i32 3
  %name537 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0
  %atoms538 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2
  %zero_temp_time = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 34
  %bLambda = getelementptr inbounds %struct.t_trxframe* %rerun_fr, i64 0, i32 12
  %delta_lambda = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 48
  %atnr = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 2
  br label %while.cond

while.cond:                                       ; preds = %lor.lhs.false1033, %if.then1036, %while.cond.preheader
  %tcount.0 = phi double [ 0.000000e+00, %while.cond.preheader ], [ %tcount.1, %if.then1036 ], [ %tcount.1, %lor.lhs.false1033 ]
  %mu_aver.0 = phi float [ 0.000000e+00, %while.cond.preheader ], [ %mu_aver.1, %if.then1036 ], [ %mu_aver.1, %lor.lhs.false1033 ]
  %tcr.0 = phi %struct.t_coupl_rec* [ null, %while.cond.preheader ], [ %tcr.1, %if.then1036 ], [ %tcr.1, %lor.lhs.false1033 ]
  %nconverged.0 = phi i32 [ 0, %while.cond.preheader ], [ %nconverged.1, %if.then1036 ], [ %nconverged.1, %lor.lhs.false1033 ]
  %bRerunWarnNoV.0 = phi i32 [ 1, %while.cond.preheader ], [ %bRerunWarnNoV.2, %if.then1036 ], [ %bRerunWarnNoV.2, %lor.lhs.false1033 ]
  %bFirstStep.0 = phi i32 [ 1, %while.cond.preheader ], [ 0, %if.then1036 ], [ 0, %lor.lhs.false1033 ]
  %bNotLastFrame.1 = phi i32 [ %bNotLastFrame.1.ph, %while.cond.preheader ], [ %bNotLastFrame.21858, %if.then1036 ], [ %call1030, %lor.lhs.false1033 ]
  %step.0 = phi i32 [ 0, %while.cond.preheader ], [ %inc1037, %if.then1036 ], [ %step.2, %lor.lhs.false1033 ]
  br i1 %cmp, label %land.rhs.critedge, label %land.lhs.true201

land.lhs.true201:                                 ; preds = %while.cond
  %71 = load i32* %nsteps293, align 4, !tbaa !0
  %cmp204 = icmp sgt i32 %step.0, %71
  br i1 %cmp204, label %while.end, label %if.else278

land.rhs.critedge:                                ; preds = %while.cond
  %tobool207.old = icmp eq i32 %bNotLastFrame.1, 0
  br i1 %tobool207.old, label %while.end, label %if.then209

if.then209:                                       ; preds = %land.rhs.critedge
  %72 = bitcast i32* %bStep to i64*
  %73 = load i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %tobool210 = icmp eq i32 %74, 0
  br i1 %tobool210, label %if.end213, label %if.then211

if.then211:                                       ; preds = %if.then209
  %75 = lshr i64 %73, 32
  %76 = trunc i64 %75 to i32
  br label %if.end213

if.end213:                                        ; preds = %if.then209, %if.then211
  %step.1 = phi i32 [ %76, %if.then211 ], [ %step.0, %if.then209 ]
  %77 = bitcast i32* %bTime to i64*
  %78 = load i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %tobool214 = icmp eq i32 %79, 0
  br i1 %tobool214, label %if.else216, label %if.then215

if.then215:                                       ; preds = %if.end213
  %80 = lshr i64 %78, 32
  %81 = trunc i64 %80 to i32
  %82 = bitcast i32 %81 to float
  br label %if.end218

if.else216:                                       ; preds = %if.end213
  %conv217 = sitofp i32 %step.1 to float
  br label %if.end218

if.end218:                                        ; preds = %if.else216, %if.then215
  %storemerge1811 = phi float [ %conv217, %if.else216 ], [ %82, %if.then215 ]
  store float %storemerge1811, float* %t, align 4, !tbaa !4
  %83 = load i32* %nr220, align 4, !tbaa !0
  %cmp2211867 = icmp sgt i32 %83, 0
  br i1 %cmp2211867, label %for.body223.lr.ph, label %for.end233

for.body223.lr.ph:                                ; preds = %if.end218
  %84 = load [3 x float]** %x225, align 8, !tbaa !3
  br label %for.body223

for.body223:                                      ; preds = %for.body223.lr.ph, %for.body223
  %indvars.iv1886 = phi i64 [ 0, %for.body223.lr.ph ], [ %indvars.iv.next1887, %for.body223 ]
  %arraydecay227 = getelementptr inbounds [3 x float]* %84, i64 %indvars.iv1886, i64 0
  %arraydecay230 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv1886, i64 0
  %85 = load float* %arraydecay227, align 4, !tbaa !4
  store float %85, float* %arraydecay230, align 4, !tbaa !4
  %arrayidx2.i1848 = getelementptr inbounds [3 x float]* %84, i64 %indvars.iv1886, i64 1
  %86 = load float* %arrayidx2.i1848, align 4, !tbaa !4
  %arrayidx3.i1849 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv1886, i64 1
  store float %86, float* %arrayidx3.i1849, align 4, !tbaa !4
  %arrayidx4.i1850 = getelementptr inbounds [3 x float]* %84, i64 %indvars.iv1886, i64 2
  %87 = load float* %arrayidx4.i1850, align 4, !tbaa !4
  %arrayidx5.i1851 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv1886, i64 2
  store float %87, float* %arrayidx5.i1851, align 4, !tbaa !4
  %indvars.iv.next1887 = add i64 %indvars.iv1886, 1
  %88 = trunc i64 %indvars.iv.next1887 to i32
  %cmp221 = icmp slt i32 %88, %83
  br i1 %cmp221, label %for.body223, label %for.end233

for.end233:                                       ; preds = %for.body223, %if.end218
  %89 = load i32* %bV, align 8, !tbaa !0
  %tobool234 = icmp eq i32 %89, 0
  br i1 %tobool234, label %for.cond252.preheader, label %for.cond236.preheader

for.cond252.preheader:                            ; preds = %for.end233
  br i1 %cmp2211867, label %for.body256, label %for.end262

for.cond236.preheader:                            ; preds = %for.end233
  br i1 %cmp2211867, label %for.body240.lr.ph, label %if.end267

for.body240.lr.ph:                                ; preds = %for.cond236.preheader
  %90 = load [3 x float]** %v242, align 8, !tbaa !3
  br label %for.body240

for.body240:                                      ; preds = %for.body240.lr.ph, %for.body240
  %indvars.iv1888 = phi i64 [ 0, %for.body240.lr.ph ], [ %indvars.iv.next1889, %for.body240 ]
  %arraydecay244 = getelementptr inbounds [3 x float]* %90, i64 %indvars.iv1888, i64 0
  %arraydecay247 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv1888, i64 0
  %91 = load float* %arraydecay244, align 4, !tbaa !4
  store float %91, float* %arraydecay247, align 4, !tbaa !4
  %arrayidx2.i1844 = getelementptr inbounds [3 x float]* %90, i64 %indvars.iv1888, i64 1
  %92 = load float* %arrayidx2.i1844, align 4, !tbaa !4
  %arrayidx3.i1845 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv1888, i64 1
  store float %92, float* %arrayidx3.i1845, align 4, !tbaa !4
  %arrayidx4.i1846 = getelementptr inbounds [3 x float]* %90, i64 %indvars.iv1888, i64 2
  %93 = load float* %arrayidx4.i1846, align 4, !tbaa !4
  %arrayidx5.i1847 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv1888, i64 2
  store float %93, float* %arrayidx5.i1847, align 4, !tbaa !4
  %indvars.iv.next1889 = add i64 %indvars.iv1888, 1
  %94 = trunc i64 %indvars.iv.next1889 to i32
  %cmp238 = icmp slt i32 %94, %83
  br i1 %cmp238, label %for.body240, label %if.end267

for.body256:                                      ; preds = %for.cond252.preheader, %for.body256
  %indvars.iv1890 = phi i64 [ %indvars.iv.next1891, %for.body256 ], [ 0, %for.cond252.preheader ]
  %arraydecay259 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv1890, i64 0
  store float 0.000000e+00, float* %arraydecay259, align 4, !tbaa !4
  %arrayidx1.i1842 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv1890, i64 1
  store float 0.000000e+00, float* %arrayidx1.i1842, align 4, !tbaa !4
  %arrayidx2.i1843 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv1890, i64 2
  store float 0.000000e+00, float* %arrayidx2.i1843, align 4, !tbaa !4
  %indvars.iv.next1891 = add i64 %indvars.iv1890, 1
  %95 = trunc i64 %indvars.iv.next1891 to i32
  %cmp254 = icmp slt i32 %95, %83
  br i1 %cmp254, label %for.body256, label %for.end262

for.end262:                                       ; preds = %for.body256, %for.cond252.preheader
  %tobool263 = icmp eq i32 %bRerunWarnNoV.0, 0
  br i1 %tobool263, label %if.end267, label %if.then264

if.then264:                                       ; preds = %for.end262
  %96 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %97 = call i64 @fwrite(i8* getelementptr inbounds ([174 x i8]* @.str30, i64 0, i64 0), i64 173, i64 1, %struct._IO_FILE* %96)
  br label %if.end267

if.end267:                                        ; preds = %for.cond236.preheader, %for.body240, %for.end262, %if.then264
  %bRerunWarnNoV.1 = phi i32 [ 0, %if.then264 ], [ 0, %for.end262 ], [ %bRerunWarnNoV.0, %for.body240 ], [ %bRerunWarnNoV.0, %for.cond236.preheader ]
  %98 = load float* %arraydecay.i1840, align 4, !tbaa !4
  store float %98, float* %arraydecay2.i, align 4, !tbaa !4
  %99 = load float* %arrayidx2.i.i1841, align 4, !tbaa !4
  store float %99, float* %arrayidx3.i.i, align 4, !tbaa !4
  %100 = load float* %arrayidx4.i.i, align 4, !tbaa !4
  store float %100, float* %arrayidx5.i.i, align 4, !tbaa !4
  %101 = load float* %arraydecay4.i, align 4, !tbaa !4
  store float %101, float* %arraydecay6.i, align 4, !tbaa !4
  %102 = load float* %arrayidx2.i19.i, align 4, !tbaa !4
  store float %102, float* %arrayidx3.i20.i, align 4, !tbaa !4
  %103 = load float* %arrayidx4.i21.i, align 4, !tbaa !4
  store float %103, float* %arrayidx5.i22.i, align 4, !tbaa !4
  %104 = load float* %arraydecay8.i, align 4, !tbaa !4
  store float %104, float* %arraydecay10.i, align 4, !tbaa !4
  %105 = load float* %arrayidx2.i15.i, align 4, !tbaa !4
  store float %105, float* %arrayidx3.i16.i, align 4, !tbaa !4
  %106 = load float* %arrayidx4.i17.i, align 4, !tbaa !4
  store float %106, float* %arrayidx5.i18.i, align 4, !tbaa !4
  %107 = load i32* %nstlist, align 4, !tbaa !0
  %108 = or i32 %107, %bFirstStep.0
  %109 = icmp ne i32 %108, 0
  %.pre1904 = load i32* %nsteps293, align 4, !tbaa !0
  br label %if.end291

if.else278:                                       ; preds = %land.lhs.true201
  %110 = load i32* %nstlist, align 4, !tbaa !0
  %tobool281 = icmp eq i32 %110, 0
  br i1 %tobool281, label %lor.rhs287, label %land.lhs.true282

land.lhs.true282:                                 ; preds = %if.else278
  %rem = srem i32 %step.0, %110
  %cmp285 = icmp eq i32 %rem, 0
  br i1 %cmp285, label %if.end291, label %lor.rhs287

lor.rhs287:                                       ; preds = %if.else278, %land.lhs.true282
  %tobool288 = icmp ne i32 %bFirstStep.0, 0
  br label %if.end291

if.end291:                                        ; preds = %land.lhs.true282, %lor.rhs287, %if.end267
  %111 = phi i32 [ %.pre1904, %if.end267 ], [ %71, %land.lhs.true282 ], [ %71, %lor.rhs287 ]
  %.sink = phi i1 [ %109, %if.end267 ], [ true, %land.lhs.true282 ], [ %tobool288, %lor.rhs287 ]
  %bRerunWarnNoV.2 = phi i32 [ %bRerunWarnNoV.1, %if.end267 ], [ %bRerunWarnNoV.0, %land.lhs.true282 ], [ %bRerunWarnNoV.0, %lor.rhs287 ]
  %step.2 = phi i32 [ %step.1, %if.end267 ], [ %step.0, %land.lhs.true282 ], [ %step.0, %lor.rhs287 ]
  %lor.ext290 = zext i1 %.sink to i32
  %cmp294 = icmp eq i32 %step.2, %111
  %112 = load i32* %nstlog, align 4, !tbaa !0
  %call297 = call i32 @do_per_step(i32 %step.2, i32 %112) #6
  %not.tobool298 = icmp ne i32 %call297, 0
  %cmp294. = or i1 %cmp294, %not.tobool298
  %113 = load i32* %nstcomm, align 4, !tbaa !0
  %ispos = icmp sgt i32 %113, -1
  %neg = sub i32 0, %113
  %114 = select i1 %ispos, i32 %113, i32 %neg
  %call305 = call i32 @do_per_step(i32 %step.2, i32 %114) #6
  br i1 %cmp8, label %for.cond308.preheader, label %if.end322

for.cond308.preheader:                            ; preds = %if.end291
  %115 = load i32* %natoms362, align 4, !tbaa !0
  %cmp3101874 = icmp sgt i32 %115, 0
  br i1 %cmp3101874, label %for.body312, label %if.end322

for.body312:                                      ; preds = %for.cond308.preheader, %for.body312
  %indvars.iv1892 = phi i64 [ %indvars.iv.next1893, %for.body312 ], [ 0, %for.cond308.preheader ]
  %arraydecay315 = getelementptr inbounds [3 x float]* %xcopy.0, i64 %indvars.iv1892, i64 0
  %arraydecay318 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv1892, i64 0
  %116 = load float* %arraydecay315, align 4, !tbaa !4
  store float %116, float* %arraydecay318, align 4, !tbaa !4
  %arrayidx2.i1836 = getelementptr inbounds [3 x float]* %xcopy.0, i64 %indvars.iv1892, i64 1
  %117 = load float* %arrayidx2.i1836, align 4, !tbaa !4
  %arrayidx3.i1837 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv1892, i64 1
  store float %117, float* %arrayidx3.i1837, align 4, !tbaa !4
  %arrayidx4.i1838 = getelementptr inbounds [3 x float]* %xcopy.0, i64 %indvars.iv1892, i64 2
  %118 = load float* %arrayidx4.i1838, align 4, !tbaa !4
  %arrayidx5.i1839 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv1892, i64 2
  store float %118, float* %arrayidx5.i1839, align 4, !tbaa !4
  %indvars.iv.next1893 = add i64 %indvars.iv1892, 1
  %119 = trunc i64 %indvars.iv.next1893 to i32
  %cmp310 = icmp slt i32 %119, %115
  br i1 %cmp310, label %for.body312, label %if.end322

if.end322:                                        ; preds = %for.cond308.preheader, %for.body312, %if.end291
  br i1 %tobool323, label %if.then324, label %if.end334

if.then324:                                       ; preds = %if.end322
  call void @shift_self(%struct.t_graph* %graph, [3 x float]* %arraydecay, [3 x float]* %x) #6
  %120 = load float* %delta_t328, align 4, !tbaa !4
  call void @construct_dummies(%struct._IO_FILE* %log, [3 x float]* %x, %struct.t_nrnb* %mynrnb, float %120, [3 x float]* %v, %struct.t_idef* %idef, %struct.t_graph* %graph, %struct.t_commrec* %cr, [3 x float]* %arraydecay, %struct.t_comm_dummies* %dummycomm) #6
  call void @unshift_self(%struct.t_graph* %graph, [3 x float]* %arraydecay, [3 x float]* %x) #6
  br label %if.end334

if.end334:                                        ; preds = %if.then324, %if.end322
  %121 = load float* %lambda, align 4, !tbaa !4
  call void @init_mdatoms(%struct.t_mdatoms* %mdatoms, float %121, i32 %bFirstStep.0) #6
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 36, i32 16, i1 false) #1
  br i1 %cmp2, label %if.then337, label %if.end353

if.then337:                                       ; preds = %if.end334
  %122 = load i8**** %atomname, align 8, !tbaa !3
  %123 = load float* %t, align 4, !tbaa !4
  %124 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom340 = sext i32 %124 to i64
  %arrayidx342 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom340
  %125 = load i32* %arrayidx342, align 4, !tbaa !0
  %arrayidx350 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom340
  %126 = load i32* %arrayidx350, align 4, !tbaa !0
  %add = add nsw i32 %126, %125
  call void @ionize(%struct._IO_FILE* %log, %struct.t_mdatoms* %mdatoms, i8*** %122, float %123, %struct.t_inputrec* %ir, [3 x float]* %x, [3 x float]* %v, i32 %125, i32 %add, [3 x float]* %arraydecay, %struct.t_commrec* %cr) #6
  br label %if.end353

if.end353:                                        ; preds = %if.then337, %if.end334
  br i1 %cmp8, label %if.then355, label %if.end356

if.then355:                                       ; preds = %if.end353
  call void @update_forcefield(i32 %nfile, %struct.t_filenm* %fnm, %struct.t_forcerec* %fr) #6
  br label %if.end356

if.end356:                                        ; preds = %if.then355, %if.end353
  br i1 %cmp21, label %if.then358, label %if.else372

if.then358:                                       ; preds = %if.end356
  %127 = load i32* %nshell, align 4, !tbaa !0
  %128 = load i8** %traj, align 8, !tbaa !3
  %129 = load float* %t, align 4, !tbaa !4
  %130 = load float* %lambda, align 4, !tbaa !4
  %131 = load i32* %natoms362, align 4, !tbaa !0
  %call365 = call i32 @relax_shells(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, i32 %bVerbose, i32 %step.2, %struct.t_parm* %parm, i32 %lor.ext290, i32 %call305, %struct.t_topology* %top, float* %ener, %struct.t_fcdata* %fcd, [3 x float]* %x, [3 x float]* %vold, [3 x float]* %v, [3 x float]* %vt, [3 x float]* %f, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, %struct.t_nsborder* %nsb, %struct.t_nrnb* %mynrnb, %struct.t_graph* %graph, %struct.t_groups* %grps, [3 x float]* %arraydecay10, [3 x float]* %arraydecay11, i32 %conv22, i32 %127, %struct.t_shell* %call, %struct.t_forcerec* %fr, i8* %128, float %129, float %130, float* %arraydecay13, i32 %131, [3 x float]* %arraydecay, i32* %bConverged) #6
  %conv366 = sitofp i32 %call365 to double
  %add367 = fadd double %tcount.0, %conv366
  %132 = load i32* %bConverged, align 4, !tbaa !0
  %not.tobool368 = icmp ne i32 %132, 0
  %inc370 = zext i1 %not.tobool368 to i32
  %nconverged.0.inc370 = add nsw i32 %inc370, %nconverged.0
  br label %if.end388

if.else372:                                       ; preds = %if.end356
  br i1 %tobool1014, label %land.end386, label %land.rhs376

land.rhs376:                                      ; preds = %if.else372
  %133 = load i32* %nnodes, align 4, !tbaa !0
  %cmp378 = icmp sgt i32 %133, 1
  br i1 %cmp378, label %land.end386, label %lor.rhs380

lor.rhs380:                                       ; preds = %land.rhs376
  %134 = load i32* %nthreads702, align 4, !tbaa !0
  %phitmp1810 = icmp slt i32 %134, 2
  br label %land.end386

land.end386:                                      ; preds = %land.rhs376, %lor.rhs380, %if.else372
  %135 = phi i1 [ false, %if.else372 ], [ false, %land.rhs376 ], [ %phitmp1810, %lor.rhs380 ]
  %land.ext = zext i1 %135 to i32
  %136 = load float* %lambda, align 4, !tbaa !4
  call void @do_force(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, [3 x float]* %arraydecay10, [3 x float]* %arraydecay11, i32 %step.2, %struct.t_nrnb* %mynrnb, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, float* %ener, %struct.t_fcdata* %fcd, i32 %land.ext, float %136, %struct.t_graph* %graph, i32 %lor.ext290, i32 0, %struct.t_forcerec* %fr, float* %arraydecay13, i32 0) #6
  br label %if.end388

if.end388:                                        ; preds = %if.then358, %land.end386
  %tcount.1 = phi double [ %tcount.0, %land.end386 ], [ %add367, %if.then358 ]
  %nconverged.1 = phi i32 [ %nconverged.0, %land.end386 ], [ %nconverged.0.inc370, %if.then358 ]
  br i1 %tobool389, label %if.then390, label %if.end393

if.then390:                                       ; preds = %if.end388
  %137 = load float** %chargeA, align 8, !tbaa !3
  %138 = load i32* %gnx, align 4, !tbaa !0
  %139 = load i32** %grpindex, align 8, !tbaa !3
  %call392 = call float @calc_mu_aver(%struct.t_commrec* %cr, %struct.t_nsborder* %nsb, [3 x float]* %x, float* %137, float* %arraydecay13, %struct.t_topology* %top, %struct.t_mdatoms* %mdatoms, i32 %138, i32* %139) #6
  br label %if.end393

if.end393:                                        ; preds = %if.then390, %if.end388
  %mu_aver.1 = phi float [ %call392, %if.then390 ], [ %mu_aver.0, %if.end388 ]
  br i1 %cmp5, label %if.end406, label %if.then395

if.then395:                                       ; preds = %if.end393
  %140 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom397 = sext i32 %140 to i64
  %arrayidx399 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom397
  %141 = load i32* %arrayidx399, align 4, !tbaa !0
  %arrayidx403 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom397
  %142 = load i32* %arrayidx403, align 4, !tbaa !0
  %143 = load i32* %atnr, align 4, !tbaa !0
  call void @do_glas(%struct._IO_FILE* %log, i32 %141, i32 %142, [3 x float]* %x, [3 x float]* %f, %struct.t_forcerec* %fr, %struct.t_mdatoms* %mdatoms, i32 %143, %struct.t_inputrec* %ir, float* %ener) #6
  br label %if.end406

if.end406:                                        ; preds = %if.end393, %if.then395
  %cmp409 = icmp eq i32 %step.2, 0
  %or.cond1814 = and i1 %tobool389, %cmp409
  br i1 %or.cond1814, label %if.then411, label %if.end419

if.then411:                                       ; preds = %if.end406
  %call413 = call %struct.t_coupl_rec* @init_coupling(%struct._IO_FILE* %log, i32 %nfile, %struct.t_filenm* %fnm, %struct.t_commrec* %cr, %struct.t_forcerec* %fr, %struct.t_mdatoms* %mdatoms, %struct.t_idef* %idef) #6
  br i1 %tobool414, label %if.end419, label %if.then415

if.then415:                                       ; preds = %if.then411
  %144 = call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str31, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %log)
  %call417 = call i32 @fflush(%struct._IO_FILE* %log) #6
  br label %if.end419

if.end419:                                        ; preds = %if.then411, %if.then415, %if.end406
  %tcr.1 = phi %struct.t_coupl_rec* [ %call413, %if.then415 ], [ %call413, %if.then411 ], [ %tcr.0, %if.end406 ]
  br i1 %cmp, label %if.end427, label %if.then421

if.then421:                                       ; preds = %if.end419
  %145 = load float* %t0, align 4, !tbaa !4
  %conv422 = sitofp i32 %step.2 to float
  %146 = load float* %delta_t328, align 4, !tbaa !4
  %mul425 = fmul float %conv422, %146
  %add426 = fadd float %145, %mul425
  store float %add426, float* %t, align 4, !tbaa !4
  br label %if.end427

if.end427:                                        ; preds = %if.then421, %if.end419
  %147 = load i32* %efep, align 4, !tbaa !0
  %cmp429 = icmp eq i32 %147, 0
  br i1 %cmp429, label %if.end443, label %if.then431

if.then431:                                       ; preds = %if.end427
  br i1 %cmp, label %land.lhs.true433, label %if.else437

land.lhs.true433:                                 ; preds = %if.then431
  %148 = bitcast i32* %bLambda to i64*
  %149 = load i64* %148, align 8
  %150 = trunc i64 %149 to i32
  %tobool434 = icmp eq i32 %150, 0
  br i1 %tobool434, label %if.else437, label %if.then435

if.then435:                                       ; preds = %land.lhs.true433
  %151 = lshr i64 %149, 32
  %152 = trunc i64 %151 to i32
  %153 = bitcast i32 %152 to float
  store float %153, float* %lambda, align 4, !tbaa !4
  br label %if.end443

if.else437:                                       ; preds = %land.lhs.true433, %if.then431
  %154 = load float* %lam0, align 4, !tbaa !4
  %conv438 = sitofp i32 %step.2 to float
  %155 = load float* %delta_lambda, align 4, !tbaa !4
  %mul440 = fmul float %conv438, %155
  %add441 = fadd float %154, %mul440
  store float %add441, float* %lambda, align 4, !tbaa !4
  br label %if.end443

if.end443:                                        ; preds = %if.end427, %if.then435, %if.else437
  %156 = load i32* %bSimAnn, align 4, !tbaa !0
  %tobool445 = icmp eq i32 %156, 0
  br i1 %tobool445, label %if.end454, label %if.then446

if.then446:                                       ; preds = %if.end443
  %157 = load float* %t, align 4, !tbaa !4
  %158 = load float* %zero_temp_time, align 4, !tbaa !4
  %div = fdiv float %157, %158
  %conv449 = fsub float 1.000000e+00, %div
  store float %conv449, float* %SAfactor, align 4, !tbaa !4
  %cmp450 = fcmp olt float %conv449, 0.000000e+00
  br i1 %cmp450, label %if.then452, label %if.end454

if.then452:                                       ; preds = %if.then446
  store float 0.000000e+00, float* %SAfactor, align 4, !tbaa !4
  br label %if.end454

if.end454:                                        ; preds = %if.end443, %if.then446, %if.then452
  %159 = load i32* %nodeid34, align 4, !tbaa !0
  %cmp456 = icmp eq i32 %159, 0
  br i1 %cmp456, label %land.lhs.true458, label %if.end467

land.lhs.true458:                                 ; preds = %if.end454
  %160 = load i32* %threadid459, align 4, !tbaa !0
  %cmp460.not = icmp ne i32 %160, 0
  %cmp294..not = xor i1 %cmp294., true
  %brmerge = or i1 %cmp460.not, %cmp294..not
  %brmerge1815 = or i1 %brmerge, %cmp8
  br i1 %brmerge1815, label %if.end467, label %if.then466

if.then466:                                       ; preds = %land.lhs.true458
  %161 = load float* %t, align 4, !tbaa !4
  %162 = load float* %lambda, align 4, !tbaa !4
  %163 = load float* %SAfactor, align 4, !tbaa !4
  call void @print_ebin_header(%struct._IO_FILE* %log, i32 %step.2, float %161, float %162, float %163) #6
  br label %if.end467

if.end467:                                        ; preds = %land.lhs.true458, %if.then466, %if.end454
  br i1 %tobool323, label %if.then469, label %if.end489.critedge

if.then469:                                       ; preds = %if.end467
  call void @spread_dummy_f(%struct._IO_FILE* %log, [3 x float]* %x, [3 x float]* %f, %struct.t_nrnb* %mynrnb, %struct.t_idef* %idef, %struct.t_comm_dummies* %dummycomm, %struct.t_commrec* %cr) #6
  %164 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom473 = sext i32 %164 to i64
  %arrayidx475 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom473
  %165 = load i32* %arrayidx475, align 4, !tbaa !0
  %arrayidx479 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom473
  %166 = load i32* %arrayidx479, align 4, !tbaa !0
  call void @calc_virial(%struct._IO_FILE* %log, i32 %165, i32 %166, [3 x float]* %x, [3 x float]* %f, [3 x float]* %arraydecay10, [3 x float]* %arraydecay11, %struct.t_graph* %graph, [3 x float]* %arraydecay, %struct.t_nrnb* %mynrnb, %struct.t_forcerec* %fr, i32 0) #6
  %167 = load i32* %bEwald, align 4, !tbaa !0
  %tobool486 = icmp eq i32 %167, 0
  br i1 %tobool486, label %if.end489, label %if.then487

if.then487:                                       ; preds = %if.then469
  %168 = load [3 x float]** %f_pme, align 8, !tbaa !3
  call void @spread_dummy_f(%struct._IO_FILE* %log, [3 x float]* %x, [3 x float]* %168, %struct.t_nrnb* %mynrnb, %struct.t_idef* %idef, %struct.t_comm_dummies* %dummycomm, %struct.t_commrec* %cr) #6
  br label %if.end489

if.end489.critedge:                               ; preds = %if.end467
  %169 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom473.c = sext i32 %169 to i64
  %arrayidx475.c = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom473.c
  %170 = load i32* %arrayidx475.c, align 4, !tbaa !0
  %arrayidx479.c = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom473.c
  %171 = load i32* %arrayidx479.c, align 4, !tbaa !0
  call void @calc_virial(%struct._IO_FILE* %log, i32 %170, i32 %171, [3 x float]* %x, [3 x float]* %f, [3 x float]* %arraydecay10, [3 x float]* %arraydecay11, %struct.t_graph* %graph, [3 x float]* %arraydecay, %struct.t_nrnb* %mynrnb, %struct.t_forcerec* %fr, i32 0) #6
  br label %if.end489

if.end489:                                        ; preds = %if.end489.critedge, %if.then469, %if.then487
  %172 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom491 = sext i32 %172 to i64
  %arrayidx493 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom491
  %173 = load i32* %arrayidx493, align 4, !tbaa !0
  %arrayidx497 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom491
  %174 = load i32* %arrayidx497, align 4, !tbaa !0
  call void @sum_lrforces([3 x float]* %f, %struct.t_forcerec* %fr, i32 %173, i32 %174) #6
  %175 = load i32* %nstxout, align 4, !tbaa !0
  %call499 = call i32 @do_per_step(i32 %step.2, i32 %175) #6
  %176 = load i32* %nstvout, align 4, !tbaa !0
  %call504 = call i32 @do_per_step(i32 %step.2, i32 %176) #6
  %177 = load i32* %nstfout, align 4, !tbaa !0
  %call513 = call i32 @do_per_step(i32 %step.2, i32 %177) #6
  %cmp294.not = xor i1 %cmp294, true
  %brmerge1819 = or i1 %70, %cmp294.not
  br i1 %brmerge1819, label %if.end542, label %land.lhs.true524

land.lhs.true524:                                 ; preds = %if.end489
  %178 = load i32* %nodeid34, align 4, !tbaa !0
  %cmp526 = icmp eq i32 %178, 0
  br i1 %cmp526, label %land.lhs.true528, label %if.end542

land.lhs.true528:                                 ; preds = %land.lhs.true524
  %179 = load i32* %threadid459, align 4, !tbaa !0
  %cmp530 = icmp ne i32 %179, 0
  %or.cond1820 = or i1 %cmp530, %tobool1014
  br i1 %or.cond1820, label %if.end542, label %if.then534

if.then534:                                       ; preds = %land.lhs.true528
  %180 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %181 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str32, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %180)
  %call536 = call i8* @ftp2fn(i32 12, i32 %nfile, %struct.t_filenm* %fnm) #6
  %182 = load i8*** %name537, align 8, !tbaa !3
  %183 = load i8** %182, align 8, !tbaa !3
  call void @write_sto_conf(i8* %call536, i8* %183, %struct.t_atoms* %atoms538, [3 x float]* %x, [3 x float]* %v, [3 x float]* %arraydecay) #6
  br label %if.end542

if.end542:                                        ; preds = %land.lhs.true528, %if.end489, %land.lhs.true524, %if.then534
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 36, i32 16, i1 false) #1
  %184 = load i32* %bPull, align 4, !tbaa !0
  %tobool545 = icmp eq i32 %184, 0
  br i1 %tobool545, label %if.end563, label %land.lhs.true546

land.lhs.true546:                                 ; preds = %if.end542
  %185 = load i32* %runtype, align 8, !tbaa !1
  switch i32 %185, label %if.end563 [
    i32 1, label %if.then557
    i32 3, label %if.then557
    i32 4, label %if.then557
  ]

if.then557:                                       ; preds = %land.lhs.true546, %land.lhs.true546, %land.lhs.true546
  %186 = load float* %delta_t328, align 4, !tbaa !4
  %187 = load i32* %nr220, align 4, !tbaa !0
  call void @pull(%struct.t_pull* %pulldata, [3 x float]* %x, [3 x float]* %f, [3 x float]* %arraydecay, %struct.t_topology* %top, float %186, i32 %step.2, i32 %187, %struct.t_mdatoms* %mdatoms) #6
  br label %if.end563

if.end563:                                        ; preds = %land.lhs.true546, %if.end542, %if.then557
  %188 = load i32* %natoms362, align 4, !tbaa !0
  %cmp3.i = icmp sgt i32 %188, 0
  %or.cond1907 = and i1 %cmp8, %cmp3.i
  br i1 %or.cond1907, label %for.body.i, label %if.end567

for.body.i:                                       ; preds = %if.end563, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %if.end563 ]
  %arraydecay.i = getelementptr inbounds [3 x float]* %buf, i64 %indvars.iv.i, i64 0
  store float 0.000000e+00, float* %arraydecay.i, align 4, !tbaa !4
  %arrayidx1.i.i = getelementptr inbounds [3 x float]* %buf, i64 %indvars.iv.i, i64 1
  store float 0.000000e+00, float* %arrayidx1.i.i, align 4, !tbaa !4
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %buf, i64 %indvars.iv.i, i64 2
  store float 0.000000e+00, float* %arrayidx2.i.i, align 4, !tbaa !4
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv1894 = trunc i64 %indvars.iv.next.i to i32
  %exitcond1895 = icmp eq i32 %lftr.wideiv1894, %188
  br i1 %exitcond1895, label %if.end567, label %for.body.i

if.end567:                                        ; preds = %if.end563, %for.body.i
  %189 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom570 = sext i32 %189 to i64
  %arrayidx572 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom570
  %190 = load i32* %arrayidx572, align 4, !tbaa !0
  %arrayidx576 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom570
  %191 = load i32* %arrayidx576, align 4, !tbaa !0
  %192 = load float* %lambda, align 4, !tbaa !4
  %193 = load float* %SAfactor, align 4, !tbaa !4
  %194 = load i32* %bTYZ, align 4, !tbaa !0
  %195 = load i32* %bNEMD, align 4, !tbaa !0
  call void @update(i32 %188, i32 %190, i32 %191, i32 %step.2, float %192, float* %arrayidx577, %struct.t_parm* %parm, float %193, %struct.t_mdatoms* %mdatoms, [3 x float]* %x, %struct.t_graph* %graph, [3 x float]* %f, [3 x float]* %buf, [3 x float]* %vold, [3 x float]* %vt, [3 x float]* %v, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %arraydecay12, %struct.t_commrec* %cr, %struct.t_nrnb* %mynrnb, i32 %194, i32 1, %struct.t_edsamyn* %edyn, %struct.t_pull* %pulldata, i32 %195) #6
  br i1 %cmp8, label %land.lhs.true585, label %if.end597

land.lhs.true585:                                 ; preds = %if.end567
  br i1 %cmp21, label %lor.lhs.false587, label %if.then589

lor.lhs.false587:                                 ; preds = %land.lhs.true585
  %196 = load i32* %bConverged, align 4, !tbaa !0
  %tobool588 = icmp eq i32 %196, 0
  br i1 %tobool588, label %if.end597, label %if.then589

if.then589:                                       ; preds = %lor.lhs.false587, %land.lhs.true585
  %197 = load float* %arrayidx590, align 4, !tbaa !4
  %198 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom592 = sext i32 %198 to i64
  %arrayidx594 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom592
  %199 = load i32* %arrayidx594, align 4, !tbaa !0
  %200 = load float** %massT, align 8, !tbaa !3
  call void @print_forcefield(%struct._IO_FILE* %log, float %197, i32 %199, [3 x float]* %f, [3 x float]* %buf, [3 x float]* %xcopy.0, %struct.t_block* %arrayidx596, float* %200) #6
  br label %if.end597

if.end597:                                        ; preds = %lor.lhs.false587, %if.then589, %if.end567
  %201 = load i32* %epc, align 4, !tbaa !0
  %cmp599 = icmp eq i32 %201, 0
  br i1 %cmp599, label %if.end604, label %if.then601

if.then601:                                       ; preds = %if.end597
  call void @correct_box([3 x float]* %arraydecay, %struct.t_forcerec* %fr, %struct.t_graph* %graph) #6
  br label %if.end604

if.end604:                                        ; preds = %if.end597, %if.then601
  %202 = load i32* %nnodes, align 4, !tbaa !0
  %cmp606 = icmp sgt i32 %202, 1
  br i1 %cmp606, label %land.lhs.true612, label %lor.lhs.false608

lor.lhs.false608:                                 ; preds = %if.end604
  %203 = load i32* %nthreads702, align 4, !tbaa !0
  %cmp610 = icmp sgt i32 %203, 1
  br i1 %cmp610, label %land.lhs.true612, label %if.end617

land.lhs.true612:                                 ; preds = %lor.lhs.false608, %if.end604
  %204 = load i32* %bNEMD, align 4, !tbaa !0
  %tobool613 = icmp eq i32 %204, 0
  br i1 %tobool613, label %if.end617, label %if.then614

if.then614:                                       ; preds = %land.lhs.true612
  call void @accumulate_u(%struct.t_commrec* %cr, %struct.t_grpopts* %opts108.pre-phi, %struct.t_groups* %grps) #6
  br label %if.end617

if.end617:                                        ; preds = %land.lhs.true612, %if.then614, %lor.lhs.false608
  %205 = load float* %cos_accel, align 4, !tbaa !4
  %fabsf1805 = call float @fabsf(float %205) #5
  %206 = fpext float %fabsf1805 to double
  %cmp622 = fcmp olt double %206, 1.200000e-38
  br i1 %cmp622, label %if.then624, label %if.else640

if.then624:                                       ; preds = %if.end617
  %207 = load i32* %eI626, align 4, !tbaa !0
  %cmp627 = icmp eq i32 %207, 4
  %conv628 = zext i1 %cmp627 to i32
  %208 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom630 = sext i32 %208 to i64
  %arrayidx632 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom630
  %209 = load i32* %arrayidx632, align 4, !tbaa !0
  %arrayidx636 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom630
  %210 = load i32* %arrayidx636, align 4, !tbaa !0
  %211 = load float* %lambda, align 4, !tbaa !4
  call void @calc_ke_part(i32 0, i32 %conv628, i32 %209, i32 %210, [3 x float]* %vold, [3 x float]* %v, [3 x float]* %vt, %struct.t_grpopts* %opts108.pre-phi, %struct.t_mdatoms* %mdatoms, %struct.t_groups* %grps, %struct.t_nrnb* %mynrnb, float %211, float* %arrayidx639) #6
  br label %if.end654

if.else640:                                       ; preds = %if.end617
  %212 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom642 = sext i32 %212 to i64
  %arrayidx644 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom642
  %213 = load i32* %arrayidx644, align 4, !tbaa !0
  %arrayidx648 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom642
  %214 = load i32* %arrayidx648, align 4, !tbaa !0
  %215 = load float* %lambda, align 4, !tbaa !4
  call void @calc_ke_part_visc(i32 0, i32 %213, i32 %214, [3 x float]* %arraydecay, [3 x float]* %x, [3 x float]* %vold, [3 x float]* %v, [3 x float]* %vt, %struct.t_grpopts* %opts108.pre-phi, %struct.t_mdatoms* %mdatoms, %struct.t_groups* %grps, %struct.t_nrnb* %mynrnb, float %215, float* %arrayidx639) #6
  br label %if.end654

if.end654:                                        ; preds = %if.else640, %if.then624
  %tobool655.not = icmp eq i32 %call305, 0
  %brmerge1821 = or i1 %tobool655.not, %cmp8
  br i1 %brmerge1821, label %if.end668, label %if.then658

if.then658:                                       ; preds = %if.end654
  %216 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom660 = sext i32 %216 to i64
  %arrayidx662 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom660
  %217 = load i32* %arrayidx662, align 4, !tbaa !0
  %arrayidx666 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom660
  %218 = load i32* %arrayidx666, align 4, !tbaa !0
  %219 = load float** %massT, align 8, !tbaa !3
  %220 = load %struct.t_vcm** %vcm, align 8, !tbaa !3
  call void @calc_vcm_grp(%struct._IO_FILE* %log, i32 %217, i32 %218, float* %219, [3 x float]* %x, [3 x float]* %v, %struct.t_vcm* %220) #6
  br label %if.end668

if.end668:                                        ; preds = %if.end654, %if.then658
  %221 = load volatile i32* @bGotTermSignal, align 4, !tbaa !0
  %tobool669 = icmp eq i32 %221, 0
  br i1 %tobool669, label %lor.lhs.false670, label %if.then672

lor.lhs.false670:                                 ; preds = %if.end668
  %222 = load volatile i32* @bGotUsr1Signal, align 4, !tbaa !0
  %tobool671 = icmp eq i32 %222, 0
  br i1 %tobool671, label %if.end697, label %if.then672

if.then672:                                       ; preds = %lor.lhs.false670, %if.end668
  %223 = load volatile i32* @bGotTermSignal, align 4, !tbaa !0
  %tobool673 = icmp eq i32 %223, 0
  %. = select i1 %tobool673, float -1.000000e+00, float 1.000000e+00
  store float %., float* %terminate, align 4, !tbaa !4
  br i1 %tobool414, label %if.end683, label %if.then678

if.then678:                                       ; preds = %if.then672
  %224 = load volatile i32* @bGotTermSignal, align 4, !tbaa !0
  %tobool679 = icmp ne i32 %224, 0
  %cond680 = select i1 %tobool679, i8* getelementptr inbounds ([5 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str36, i64 0, i64 0)
  %call681 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([27 x i8]* @.str34, i64 0, i64 0), i8* %cond680) #6
  %call682 = call i32 @fflush(%struct._IO_FILE* %log) #6
  br label %if.end683

if.end683:                                        ; preds = %if.then672, %if.then678
  %225 = load i32* %nodeid34, align 4, !tbaa !0
  %cmp685 = icmp eq i32 %225, 0
  br i1 %cmp685, label %land.lhs.true687, label %if.end696

land.lhs.true687:                                 ; preds = %if.end683
  %226 = load i32* %threadid459, align 4, !tbaa !0
  %cmp689 = icmp eq i32 %226, 0
  br i1 %cmp689, label %if.then691, label %if.end696

if.then691:                                       ; preds = %land.lhs.true687
  %227 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %228 = load volatile i32* @bGotTermSignal, align 4, !tbaa !0
  %tobool692 = icmp ne i32 %228, 0
  %cond693 = select i1 %tobool692, i8* getelementptr inbounds ([5 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str36, i64 0, i64 0)
  %call694 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %227, i8* getelementptr inbounds ([27 x i8]* @.str34, i64 0, i64 0), i8* %cond693) #6
  %229 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call695 = call i32 @fflush(%struct._IO_FILE* %229) #6
  br label %if.end696

if.end696:                                        ; preds = %if.then691, %land.lhs.true687, %if.end683
  store volatile i32 0, i32* @bGotTermSignal, align 4, !tbaa !0
  store volatile i32 0, i32* @bGotUsr1Signal, align 4, !tbaa !0
  br label %if.end697

if.end697:                                        ; preds = %lor.lhs.false670, %if.end696
  %230 = load i32* %nnodes, align 4, !tbaa !0
  %cmp699 = icmp sgt i32 %230, 1
  br i1 %cmp699, label %if.then705, label %lor.lhs.false701

lor.lhs.false701:                                 ; preds = %if.end697
  %231 = load i32* %nthreads702, align 4, !tbaa !0
  %cmp703 = icmp sgt i32 %231, 1
  br i1 %cmp703, label %if.then705, label %if.else737

if.then705:                                       ; preds = %lor.lhs.false701, %if.end697
  %232 = load %struct.t_vcm** %vcm, align 8, !tbaa !3
  call void @global_stat(%struct._IO_FILE* %log, %struct.t_commrec* %cr, float* %ener, [3 x float]* %arraydecay10, [3 x float]* %arraydecay12, %struct.t_grpopts* %opts108.pre-phi, %struct.t_groups* %grps, %struct.t_nrnb* %mynrnb, %struct.t_nrnb* %nrnb, %struct.t_vcm* %232, float* %terminate) #6
  %233 = load i32* %bTwinRange, align 4, !tbaa !0
  %tobool710 = icmp ne i32 %233, 0
  %tobool712 = xor i1 %.sink, true
  %or.cond1822 = and i1 %tobool710, %tobool712
  br i1 %or.cond1822, label %for.cond714.preheader, label %if.end739

for.cond714.preheader:                            ; preds = %if.then705
  %234 = load i32* %nn, align 4, !tbaa !0
  %cmp7151876 = icmp sgt i32 %234, 0
  br i1 %cmp7151876, label %for.body717.lr.ph, label %if.end739

for.body717.lr.ph:                                ; preds = %for.cond714.preheader
  %235 = load i32* %nnodes, align 4, !tbaa !0
  %conv719 = sitofp i32 %235 to float
  %236 = load float** %arrayidx722, align 8, !tbaa !3
  %237 = load float** %arrayidx730, align 8, !tbaa !3
  br label %for.body717

for.body717:                                      ; preds = %for.body717.lr.ph, %for.body717
  %indvars.iv1896 = phi i64 [ 0, %for.body717.lr.ph ], [ %indvars.iv.next1897, %for.body717 ]
  %arrayidx723 = getelementptr inbounds float* %236, i64 %indvars.iv1896
  %238 = load float* %arrayidx723, align 4, !tbaa !4
  %div724 = fdiv float %238, %conv719
  store float %div724, float* %arrayidx723, align 4, !tbaa !4
  %arrayidx731 = getelementptr inbounds float* %237, i64 %indvars.iv1896
  %239 = load float* %arrayidx731, align 4, !tbaa !4
  %div732 = fdiv float %239, %conv719
  store float %div732, float* %arrayidx731, align 4, !tbaa !4
  %indvars.iv.next1897 = add i64 %indvars.iv1896, 1
  %240 = trunc i64 %indvars.iv.next1897 to i32
  %cmp715 = icmp slt i32 %240, %234
  br i1 %cmp715, label %for.body717, label %if.end739

if.else737:                                       ; preds = %lor.lhs.false701
  call void @cp_nrnb(%struct.t_nrnb* %nrnb, %struct.t_nrnb* %mynrnb) #6
  br label %if.end739

if.end739:                                        ; preds = %for.cond714.preheader, %for.body717, %if.then705, %if.else737
  %241 = load i32* %bNEMD, align 4, !tbaa !0
  %tobool740 = icmp eq i32 %241, 0
  %242 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool742 = icmp ne %struct._IO_FILE* %242, null
  %or.cond = and i1 %tobool740, %tobool742
  br i1 %or.cond, label %if.then743, label %if.end762

if.then743:                                       ; preds = %if.end739
  %243 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom745 = sext i32 %243 to i64
  %arrayidx747 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom745
  %244 = load i32* %arrayidx747, align 4, !tbaa !0
  %arrayidx755 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom745
  %245 = load i32* %arrayidx755, align 4, !tbaa !0
  %add756 = add nsw i32 %245, %244
  %246 = load %struct.t_vcm** %vcm, align 8, !tbaa !3
  %group_p = getelementptr inbounds %struct.t_vcm* %246, i64 0, i32 2
  %247 = load [3 x float]** %group_p, align 8, !tbaa !3
  %arraydecay758 = getelementptr inbounds [3 x float]* %247, i64 0, i64 0
  %248 = load float** %massT, align 8, !tbaa !3
  %249 = load float* %tmass, align 4, !tbaa !4
  call void @correct_ekin(%struct._IO_FILE* %242, i32 %244, i32 %add756, [3 x float]* %v, float* %arraydecay758, float* %248, float %249, [3 x float]* %arraydecay109) #6
  br label %if.end762

if.end762:                                        ; preds = %if.end739, %if.then743
  %250 = load float* %terminate, align 4, !tbaa !4
  %fabsf1806 = call float @fabsf(float %250) #5
  %251 = fpext float %fabsf1806 to double
  %cmp765 = fcmp ogt double %251, 1.200000e-38
  br i1 %cmp765, label %land.lhs.true767, label %if.end814

land.lhs.true767:                                 ; preds = %if.end762
  %252 = load i32* %nsteps293, align 4, !tbaa !0
  %cmp770 = icmp slt i32 %step.2, %252
  br i1 %cmp770, label %if.then772, label %if.end814

if.then772:                                       ; preds = %land.lhs.true767
  %cmp773 = fcmp olt float %250, 0.000000e+00
  br i1 %cmp773, label %land.lhs.true775, label %if.else789

land.lhs.true775:                                 ; preds = %if.then772
  %253 = load i32* %nstxout, align 4, !tbaa !0
  %tobool778 = icmp eq i32 %253, 0
  br i1 %tobool778, label %if.else789, label %if.then779

if.then779:                                       ; preds = %land.lhs.true775
  %div782 = sdiv i32 %step.2, %253
  %add783 = add nsw i32 %div782, 1
  %mul786 = mul nsw i32 %add783, %253
  br label %if.end793

if.else789:                                       ; preds = %land.lhs.true775, %if.then772
  %add790 = add nsw i32 %step.2, 1
  br label %if.end793

if.end793:                                        ; preds = %if.else789, %if.then779
  %storemerge = phi i32 [ %add790, %if.else789 ], [ %mul786, %if.then779 ]
  store i32 %storemerge, i32* %nsteps293, align 4, !tbaa !0
  br i1 %tobool414, label %if.end800, label %if.then795

if.then795:                                       ; preds = %if.end793
  %call798 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([24 x i8]* @.str37, i64 0, i64 0), i32 %storemerge) #6
  %call799 = call i32 @fflush(%struct._IO_FILE* %log) #6
  br label %if.end800

if.end800:                                        ; preds = %if.end793, %if.then795
  %254 = load i32* %nodeid34, align 4, !tbaa !0
  %cmp802 = icmp eq i32 %254, 0
  br i1 %cmp802, label %land.lhs.true804, label %if.end813

land.lhs.true804:                                 ; preds = %if.end800
  %255 = load i32* %threadid459, align 4, !tbaa !0
  %cmp806 = icmp eq i32 %255, 0
  br i1 %cmp806, label %if.then808, label %if.end813

if.then808:                                       ; preds = %land.lhs.true804
  %256 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %257 = load i32* %nsteps293, align 4, !tbaa !0
  %call811 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %256, i8* getelementptr inbounds ([24 x i8]* @.str37, i64 0, i64 0), i32 %257) #6
  %258 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call812 = call i32 @fflush(%struct._IO_FILE* %258) #6
  br label %if.end813

if.end813:                                        ; preds = %if.then808, %land.lhs.true804, %if.end800
  store float 0.000000e+00, float* %terminate, align 4, !tbaa !4
  br label %if.end814

if.end814:                                        ; preds = %if.end813, %land.lhs.true767, %if.end762
  br i1 %brmerge1821, label %if.end834, label %if.then818

if.then818:                                       ; preds = %if.end814
  %259 = load %struct.t_vcm** %vcm, align 8, !tbaa !3
  call void @check_cm_grp(%struct._IO_FILE* %log, %struct.t_vcm* %259) #6
  %260 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom820 = sext i32 %260 to i64
  %arrayidx822 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom820
  %261 = load i32* %arrayidx822, align 4, !tbaa !0
  %arrayidx826 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom820
  %262 = load i32* %arrayidx826, align 4, !tbaa !0
  %263 = load %struct.t_vcm** %vcm, align 8, !tbaa !3
  call void @do_stopcm_grp(%struct._IO_FILE* %log, i32 %261, i32 %262, [3 x float]* %x, [3 x float]* %v, %struct.t_vcm* %263) #6
  %264 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom828 = sext i32 %264 to i64
  %arrayidx830 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom828
  %265 = load i32* %arrayidx830, align 4, !tbaa !0
  %conv831 = sitofp i32 %265 to double
  %266 = load double* %arrayidx832, align 8, !tbaa !6
  %add833 = fadd double %266, %conv831
  store double %add833, double* %arrayidx832, align 8, !tbaa !6
  br label %if.end834

if.end834:                                        ; preds = %if.end814, %if.then818
  %267 = load float* %arrayidx1.i1832, align 16, !tbaa !4
  %268 = load float* %arrayidx3.i1833, align 16, !tbaa !4
  %add.i1834 = fadd float %267, %268
  store float %add.i1834, float* %arrayidx5.i1835, align 4, !tbaa !4
  %269 = load float* %arrayidx7.i, align 4, !tbaa !4
  %270 = load float* %arrayidx9.i, align 4, !tbaa !4
  %add10.i = fadd float %269, %270
  store float %add10.i, float* %arrayidx12.i, align 4, !tbaa !4
  %271 = load float* %arrayidx14.i, align 8, !tbaa !4
  %272 = load float* %arrayidx16.i, align 8, !tbaa !4
  %add17.i = fadd float %271, %272
  store float %add17.i, float* %arrayidx19.i, align 4, !tbaa !4
  %273 = load float* %arrayidx21.i, align 4, !tbaa !4
  %274 = load float* %arrayidx23.i, align 4, !tbaa !4
  %add24.i = fadd float %273, %274
  store float %add24.i, float* %arrayidx26.i, align 4, !tbaa !4
  %275 = load float* %arrayidx28.i, align 4, !tbaa !4
  %276 = load float* %arrayidx30.i, align 4, !tbaa !4
  %add31.i = fadd float %275, %276
  store float %add31.i, float* %arrayidx33.i, align 4, !tbaa !4
  %277 = load float* %arrayidx35.i, align 4, !tbaa !4
  %278 = load float* %arrayidx37.i, align 4, !tbaa !4
  %add38.i = fadd float %277, %278
  store float %add38.i, float* %arrayidx40.i, align 4, !tbaa !4
  %279 = load float* %arrayidx42.i, align 8, !tbaa !4
  %280 = load float* %arrayidx44.i, align 8, !tbaa !4
  %add45.i = fadd float %279, %280
  store float %add45.i, float* %arrayidx47.i, align 4, !tbaa !4
  %281 = load float* %arrayidx49.i, align 4, !tbaa !4
  %282 = load float* %arrayidx51.i, align 4, !tbaa !4
  %add52.i = fadd float %281, %282
  store float %add52.i, float* %arrayidx54.i, align 4, !tbaa !4
  %283 = load float* %arrayidx56.i, align 8, !tbaa !4
  %284 = load float* %arrayidx58.i, align 8, !tbaa !4
  %add59.i = fadd float %283, %284
  store float %add59.i, float* %arrayidx61.i, align 4, !tbaa !4
  call void @sum_epot(%struct.t_grpopts* %opts108.pre-phi, %struct.t_groups* %grps, float* %ener) #6
  %285 = load float* %mvcos, align 4, !tbaa !4
  %286 = load float* %tmass, align 4, !tbaa !4
  %div842 = fdiv float %285, %286
  store float %div842, float* %vcos, align 4, !tbaa !4
  %287 = load i32* %bTYZ, align 4, !tbaa !0
  %call848 = call float @sum_ekin(%struct.t_grpopts* %opts108.pre-phi, %struct.t_groups* %grps, [3 x float]* %arraydecay109, i32 %287) #6
  store float %call848, float* %arrayidx111, align 4, !tbaa !4
  %288 = load float* %arrayidx1.i, align 4, !tbaa !4
  %289 = load float* %arrayidx3.i1830, align 4, !tbaa !4
  %add.i = fadd float %288, %289
  %290 = load float* %arrayidx5.i1831, align 4, !tbaa !4
  %add6.i = fadd float %add.i, %290
  store float %add6.i, float* %arrayidx853, align 4, !tbaa !4
  %291 = load float* %arrayidx590, align 4, !tbaa !4
  %add856 = fadd float %291, %add6.i
  store float %add856, float* %arrayidx857, align 4, !tbaa !4
  br i1 %cmp2, label %land.lhs.true859, label %if.end869

land.lhs.true859:                                 ; preds = %if.end834
  %fabsf1808 = call float @fabsf(float %add856) #5
  %292 = fpext float %fabsf1808 to double
  %cmp863 = fcmp ogt double %292, 1.000000e+18
  br i1 %cmp863, label %if.then865, label %if.end869

if.then865:                                       ; preds = %land.lhs.true859
  %conv861 = fpext float %add856 to double
  %293 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call868 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %293, i8* getelementptr inbounds ([34 x i8]* @.str38, i64 0, i64 0), double %conv861) #6
  br label %while.end

if.end869:                                        ; preds = %land.lhs.true859, %if.end834
  %294 = load i32* %etc, align 4, !tbaa !0
  switch i32 %294, label %if.end890 [
    i32 1, label %if.then874
    i32 2, label %if.then884
  ]

if.then874:                                       ; preds = %if.end869
  %295 = load float* %delta_t328, align 4, !tbaa !4
  %296 = load float* %SAfactor, align 4, !tbaa !4
  call void @berendsen_tcoupl(%struct.t_grpopts* %opts108.pre-phi, %struct.t_groups* %grps, float %295, float %296) #6
  br label %if.end890

if.then884:                                       ; preds = %if.end869
  %297 = load float* %delta_t328, align 4, !tbaa !4
  %298 = load float* %SAfactor, align 4, !tbaa !4
  call void @nosehoover_tcoupl(%struct.t_grpopts* %opts108.pre-phi, %struct.t_groups* %grps, float %297, float %298) #6
  br label %if.end890

if.end890:                                        ; preds = %if.end869, %if.then884, %if.then874
  %299 = load i32* %ePBC, align 4, !tbaa !0
  %300 = load i32* %eeltype, align 4, !tbaa !0
  %cmp899 = icmp eq i32 %300, 5
  br i1 %cmp899, label %cond.true901, label %cond.end905

cond.true901:                                     ; preds = %if.end890
  %301 = load float* %arrayidx902, align 4, !tbaa !4
  br label %cond.end905

cond.end905:                                      ; preds = %if.end890, %cond.true901
  %cond906 = phi float [ %301, %cond.true901 ], [ 0.000000e+00, %if.end890 ]
  call void @calc_pres(i32 %299, [3 x float]* %arraydecay, [3 x float]* %arraydecay109, [3 x float]* %arraydecay837, [3 x float]* %arraydecay898, float %cond906) #6
  br i1 %tobool389, label %if.then909, label %if.end948.critedge

if.then909:                                       ; preds = %cond.end905
  call void @set_avcsix(%struct._IO_FILE* %log, %struct.t_forcerec* %fr, %struct.t_mdatoms* %mdatoms) #6
  %302 = load i32* %eDispCorr, align 4, !tbaa !0
  %303 = load i32* %nr220, align 4, !tbaa !0
  call void @calc_dispcorr(%struct._IO_FILE* %log, i32 %302, %struct.t_forcerec* %fr, i32 %303, [3 x float]* %arraydecay, [3 x float]* %arraydecay898, [3 x float]* %arraydecay837, float* %ener) #6
  %304 = load float* %t, align 4, !tbaa !4
  %305 = load i32* %nodeid34, align 4, !tbaa !0
  %cmp923 = icmp eq i32 %305, 0
  br i1 %cmp923, label %land.rhs925, label %land.end929

land.rhs925:                                      ; preds = %if.then909
  %306 = load i32* %threadid459, align 4, !tbaa !0
  %cmp927 = icmp eq i32 %306, 0
  br label %land.end929

land.end929:                                      ; preds = %land.rhs925, %if.then909
  %307 = phi i1 [ false, %if.then909 ], [ %cmp927, %land.rhs925 ]
  %land.ext930 = zext i1 %307 to i32
  %308 = load i32* %nr934, align 4, !tbaa !0
  %309 = load i32* %bConverged, align 4, !tbaa !0
  call void @do_coupling(%struct._IO_FILE* %log, i32 %nfile, %struct.t_filenm* %fnm, %struct.t_coupl_rec* %tcr.1, float %304, i32 %step.2, float* %ener, %struct.t_forcerec* %fr, %struct.t_inputrec* %ir, i32 %land.ext930, %struct.t_mdatoms* %mdatoms, %struct.t_idef* %idef, float %mu_aver.1, i32 %308, %struct.t_commrec* %cond940, [3 x float]* %arraydecay, [3 x float]* %arraydecay837, [3 x float]* %arraydecay898, float* %arraydecay13, [3 x float]* %x, [3 x float]* %f, i32 %309) #6
  br label %if.end948

if.end948.critedge:                               ; preds = %cond.end905
  %310 = load i32* %eDispCorr, align 4, !tbaa !0
  %311 = load i32* %nr220, align 4, !tbaa !0
  call void @calc_dispcorr(%struct._IO_FILE* %log, i32 %310, %struct.t_forcerec* %fr, i32 %311, [3 x float]* %arraydecay, [3 x float]* %arraydecay898, [3 x float]* %arraydecay837, float* %ener) #6
  br label %if.end948

if.end948:                                        ; preds = %if.end948.critedge, %land.end929
  %rem949 = srem i32 %step.2, 10
  %cmp950 = icmp eq i32 %rem949, 0
  %brmerge1825 = or i1 %cmp950, %cmp294
  br i1 %brmerge1825, label %if.then954, label %if.end955

if.then954:                                       ; preds = %if.end948
  call void @update_time() #6
  br label %if.end955

if.end955:                                        ; preds = %if.end948, %if.then954
  %312 = load i32* %nodeid34, align 4, !tbaa !0
  %cmp957 = icmp eq i32 %312, 0
  br i1 %cmp957, label %land.lhs.true959, label %if.end1027

land.lhs.true959:                                 ; preds = %if.end955
  %313 = load i32* %threadid459, align 4, !tbaa !0
  %cmp961.not = icmp ne i32 %313, 0
  %brmerge1826 = or i1 %cmp961.not, %cmp8
  br i1 %brmerge1826, label %if.end1005, label %if.then965

if.then965:                                       ; preds = %land.lhs.true959
  %314 = load %struct.t_mdebin** %mdebin, align 8, !tbaa !3
  %315 = load %struct._IO_FILE** %fp_dgdl, align 8, !tbaa !3
  %316 = load float* %tmass, align 4, !tbaa !4
  %317 = load float* %t, align 4, !tbaa !4
  %318 = load i32* %etc, align 4, !tbaa !0
  %cmp978 = icmp eq i32 %318, 2
  %conv979 = zext i1 %cmp978 to i32
  call void @upd_mdebin(%struct.t_mdebin* %314, %struct._IO_FILE* %315, float %316, i32 %step.2, float %317, float* %ener, [3 x float]* %arraydecay, [3 x float]* %arraydecay12, [3 x float]* %arraydecay10, [3 x float]* %arraydecay837, [3 x float]* %arraydecay898, %struct.t_groups* %grps, float* %arraydecay13, i32 %conv979) #6
  %319 = load i32* %nstenergy, align 4, !tbaa !0
  %call981 = call i32 @do_per_step(i32 %step.2, i32 %319) #6
  %320 = load i32* %nstdisreout, align 4, !tbaa !0
  %call988 = call i32 @do_per_step(i32 %step.2, i32 %320) #6
  %321 = load i32* %nstorireout, align 4, !tbaa !0
  %call995 = call i32 @do_per_step(i32 %step.2, i32 %321) #6
  br i1 %tobool1014, label %if.end1005, label %if.then1002

if.then1002:                                      ; preds = %if.then965
  %call1003 = call i32 @fflush(%struct._IO_FILE* %log) #6
  br label %if.end1005

if.end1005:                                       ; preds = %if.then965, %land.lhs.true959, %if.then1002
  %.pr = load i32* %nodeid34, align 4, !tbaa !0
  %cmp1007 = icmp eq i32 %.pr, 0
  br i1 %cmp1007, label %land.lhs.true1009, label %if.end1027

land.lhs.true1009:                                ; preds = %if.end1005
  %322 = load i32* %threadid459, align 4, !tbaa !0
  %cmp1011 = icmp ne i32 %322, 0
  %or.cond1827 = or i1 %cmp1011, %tobool1014
  br i1 %or.cond1827, label %if.end1027, label %land.lhs.true1015

land.lhs.true1015:                                ; preds = %land.lhs.true1009
  %rem1016 = srem i32 %step.2, %stepout
  %cmp1017 = icmp eq i32 %rem1016, 0
  %brmerge1828 = or i1 %cmp1017, %cmp294
  br i1 %brmerge1828, label %if.then1021, label %if.end1027

if.then1021:                                      ; preds = %land.lhs.true1015
  br i1 %cmp21, label %if.then1023, label %if.end1025

if.then1023:                                      ; preds = %if.then1021
  %323 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %323)
  br label %if.end1025

if.end1025:                                       ; preds = %if.then1023, %if.then1021
  %324 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  call void @print_time(%struct._IO_FILE* %324, i64 %call150, i32 %step.2, %struct.t_inputrec* %ir) #6
  br label %if.end1027

if.end1027:                                       ; preds = %if.end955, %land.lhs.true1015, %land.lhs.true1009, %if.end1025, %if.end1005
  br i1 %cmp, label %lor.lhs.false1033, label %if.then1036

lor.lhs.false1033:                                ; preds = %if.end1027
  %325 = load i32* %status, align 4, !tbaa !0
  %call1030 = call i32 @read_next_frame(i32 %325, %struct.t_trxframe* %rerun_fr) #6
  %326 = load i32* %bStep, align 8, !tbaa !0
  %tobool1035 = icmp eq i32 %326, 0
  br i1 %tobool1035, label %if.then1036, label %while.cond

if.then1036:                                      ; preds = %if.end1027, %lor.lhs.false1033
  %bNotLastFrame.21858 = phi i32 [ %call1030, %lor.lhs.false1033 ], [ %bNotLastFrame.1, %if.end1027 ]
  %inc1037 = add nsw i32 %step.2, 1
  br label %while.cond

while.end:                                        ; preds = %land.lhs.true201, %land.rhs.critedge, %if.then865
  %tcount.2 = phi double [ %tcount.1, %if.then865 ], [ %tcount.0, %land.rhs.critedge ], [ %tcount.0, %land.lhs.true201 ]
  %nconverged.2 = phi i32 [ %nconverged.1, %if.then865 ], [ %nconverged.0, %land.rhs.critedge ], [ %nconverged.0, %land.lhs.true201 ]
  %327 = load i32* %nnodes, align 4, !tbaa !0
  %cmp1040 = icmp sgt i32 %327, 1
  br i1 %cmp1040, label %if.then1046, label %lor.lhs.false1042

lor.lhs.false1042:                                ; preds = %while.end
  %328 = load i32* %nthreads702, align 4, !tbaa !0
  %cmp1044 = icmp sgt i32 %328, 1
  br i1 %cmp1044, label %if.then1046, label %if.end1093

if.then1046:                                      ; preds = %lor.lhs.false1042, %while.end
  %call1048 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str1, i64 0, i64 0), i32 822, i32 %327, i32 8) #6
  %329 = bitcast i8* %call1048 to double*
  %call1049 = call double @node_time() #6
  %330 = load i32* %nodeid34, align 4, !tbaa !0
  %idxprom1051 = sext i32 %330 to i64
  %arrayidx1052 = getelementptr inbounds double* %329, i64 %idxprom1051
  store double %call1049, double* %arrayidx1052, align 8, !tbaa !6
  %331 = load i32* %nnodes, align 4, !tbaa !0
  call void @gmx_sumd(i32 %331, double* %329, %struct.t_commrec* %cr) #6
  %332 = load double* %329, align 8, !tbaa !6
  %333 = load i32* %nodeid34, align 4, !tbaa !0
  %cmp10581861 = icmp sgt i32 %333, 1
  br i1 %cmp10581861, label %for.body1060, label %for.end1076

for.body1060:                                     ; preds = %if.then1046, %for.body1060
  %indvars.iv1884 = phi i64 [ %indvars.iv.next1885, %for.body1060 ], [ 1, %if.then1046 ]
  %ctsum.01864 = phi double [ %add1073, %for.body1060 ], [ %332, %if.then1046 ]
  %ctmax.01863 = phi double [ %ctmax.0., %for.body1060 ], [ %332, %if.then1046 ]
  %arrayidx1062 = getelementptr inbounds double* %329, i64 %indvars.iv1884
  %334 = load double* %arrayidx1062, align 8, !tbaa !6
  %cmp1063 = fcmp ogt double %ctmax.01863, %334
  %ctmax.0. = select i1 %cmp1063, double %ctmax.01863, double %334
  %add1073 = fadd double %ctsum.01864, %334
  %indvars.iv.next1885 = add i64 %indvars.iv1884, 1
  %335 = trunc i64 %indvars.iv.next1885 to i32
  %cmp1058 = icmp slt i32 %335, %333
  br i1 %cmp1058, label %for.body1060, label %for.end1076

for.end1076:                                      ; preds = %for.body1060, %if.then1046
  %ctsum.0.lcssa = phi double [ %332, %if.then1046 ], [ %add1073, %for.body1060 ]
  %ctmax.0.lcssa = phi double [ %332, %if.then1046 ], [ %ctmax.0., %for.body1060 ]
  %336 = load i32* %nnodes, align 4, !tbaa !0
  %conv1078 = sitofp i32 %336 to double
  %div1079 = fdiv double %ctsum.0.lcssa, %conv1078
  br i1 %tobool414, label %if.end1092, label %if.then1081

if.then1081:                                      ; preds = %for.end1076
  %idxprom1084 = sext i32 %333 to i64
  %arrayidx1085 = getelementptr inbounds double* %329, i64 %idxprom1084
  %337 = load double* %arrayidx1085, align 8, !tbaa !6
  %call1086 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([33 x i8]* @.str41, i64 0, i64 0), i32 %333, double %337) #6
  %call1087 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str42, i64 0, i64 0), double %div1079) #6
  %mul1088 = fmul double %ctmax.0.lcssa, 1.000000e+02
  %div1089 = fdiv double %mul1088, %div1079
  %conv1090 = fptosi double %div1089 to i32
  %call1091 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([52 x i8]* @.str43, i64 0, i64 0), i32 %conv1090) #6
  br label %if.end1092

if.end1092:                                       ; preds = %for.end1076, %if.then1081
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str1, i64 0, i64 0), i32 839, i8* %call1048) #6
  br label %if.end1093

if.end1093:                                       ; preds = %lor.lhs.false1042, %if.end1092
  %338 = load i32* %nodeid34, align 4, !tbaa !0
  %cmp1095 = icmp eq i32 %338, 0
  br i1 %cmp1095, label %land.lhs.true1097, label %if.end1141

land.lhs.true1097:                                ; preds = %if.end1093
  %339 = load i32* %threadid459, align 4, !tbaa !0
  %cmp1099 = icmp eq i32 %339, 0
  br i1 %cmp1099, label %if.then1101, label %if.end1141

if.then1101:                                      ; preds = %land.lhs.true1097
  %call1102 = call i8* @ftp2fn(i32 20, i32 %nfile, %struct.t_filenm* %fnm) #6
  %call1103 = call %struct._IO_FILE* @ffopen(i8* %call1102, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #6
  %arrayidx1104 = getelementptr inbounds float* %ener, i64 7
  %340 = load float* %arrayidx1104, align 4, !tbaa !4
  %arrayidx1105 = getelementptr inbounds float* %ener, i64 8
  %341 = load float* %arrayidx1105, align 4, !tbaa !4
  %add1106 = fadd float %340, %341
  %arrayidx1107 = getelementptr inbounds float* %ener, i64 10
  %342 = load float* %arrayidx1107, align 4, !tbaa !4
  %add1108 = fadd float %add1106, %342
  %arrayidx1109 = getelementptr inbounds float* %ener, i64 11
  %343 = load float* %arrayidx1109, align 4, !tbaa !4
  %add1110 = fadd float %add1108, %343
  %arrayidx1111 = getelementptr inbounds float* %ener, i64 13
  %344 = load float* %arrayidx1111, align 4, !tbaa !4
  %add1112 = fadd float %add1110, %344
  %arrayidx1113 = getelementptr inbounds float* %ener, i64 15
  %345 = load float* %arrayidx1113, align 4, !tbaa !4
  %add1114 = fadd float %add1112, %345
  %arrayidx1115 = getelementptr inbounds float* %ener, i64 12
  %346 = load float* %arrayidx1115, align 4, !tbaa !4
  %add1116 = fadd float %add1114, %346
  %arrayidx1117 = getelementptr inbounds float* %ener, i64 17
  %347 = load float* %arrayidx1117, align 4, !tbaa !4
  %add1118 = fadd float %add1116, %347
  %348 = load float* %arrayidx902, align 4, !tbaa !4
  %add1120 = fadd float %add1118, %348
  %conv1121 = fpext float %add1120 to double
  %call1122 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call1103, i8* getelementptr inbounds ([7 x i8]* @.str45, i64 0, i64 0), double %conv1121) #6
  %349 = load float* %arrayidx111, align 4, !tbaa !4
  %conv1124 = fpext float %349 to double
  %call1125 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call1103, i8* getelementptr inbounds ([7 x i8]* @.str45, i64 0, i64 0), double %conv1124) #6
  br label %for.body1129

for.body1129:                                     ; preds = %for.body1129, %if.then1101
  %indvars.iv = phi i64 [ 0, %if.then1101 ], [ %indvars.iv.next, %for.body1129 ]
  %totalflops.01859 = phi double [ 0.000000e+00, %if.then1101 ], [ %phitmp, %for.body1129 ]
  %arrayidx1132 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %indvars.iv
  %350 = load double* %arrayidx1132, align 8, !tbaa !6
  %add1134 = fadd double %totalflops.01859, %350
  %conv1135 = fptrunc double %add1134 to float
  %indvars.iv.next = add i64 %indvars.iv, 1
  %phitmp = fpext float %conv1135 to double
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 129
  br i1 %exitcond, label %for.end1138, label %for.body1129

for.end1138:                                      ; preds = %for.body1129
  %call1140 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call1103, i8* getelementptr inbounds ([7 x i8]* @.str45, i64 0, i64 0), double %phitmp) #6
  call void @ffclose(%struct._IO_FILE* %call1103) #6
  br label %if.end1141

if.end1141:                                       ; preds = %for.end1138, %land.lhs.true1097, %if.end1093
  %cmp21.not = xor i1 %cmp21, true
  %or.cond1829 = or i1 %tobool414, %cmp21.not
  br i1 %or.cond1829, label %if.end1160, label %if.then1145

if.then1145:                                      ; preds = %if.end1141
  %conv1146 = sitofp i32 %nconverged.2 to double
  %mul1147 = fmul double %conv1146, 1.000000e+02
  %351 = load i32* %nsteps293, align 4, !tbaa !0
  %add1150 = add nsw i32 %351, 1
  %conv1151 = sitofp i32 %add1150 to double
  %div1152 = fdiv double %mul1147, %conv1151
  %call1153 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([58 x i8]* @.str46, i64 0, i64 0), double %div1152) #6
  %352 = load i32* %nsteps293, align 4, !tbaa !0
  %add1156 = add nsw i32 %352, 1
  %conv1157 = sitofp i32 %add1156 to double
  %div1158 = fdiv double %tcount.2, %conv1157
  %call1159 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([55 x i8]* @.str47, i64 0, i64 0), double %div1158) #6
  br label %if.end1160

if.end1160:                                       ; preds = %if.end1141, %if.then1145
  call void @llvm.lifetime.end(i64 552, i8* %5) #1
  call void @llvm.lifetime.end(i64 176, i8* %4) #1
  call void @llvm.lifetime.end(i64 1032, i8* %3) #1
  call void @llvm.lifetime.end(i64 36, i8* %2) #1
  call void @llvm.lifetime.end(i64 36, i8* %1) #1
  call void @llvm.lifetime.end(i64 36, i8* %0) #1
  ret i64 %call150
}

; Function Attrs: optsize
declare i64 @do_cg(%struct._IO_FILE*, i32, %struct.t_filenm*, %struct.t_parm*, %struct.t_topology*, %struct.t_groups*, %struct.t_nsborder*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_mdatoms*, [3 x float]*, float*, %struct.t_fcdata*, %struct.t_nrnb*, i32, i32, %struct.t_comm_dummies*, %struct.t_commrec*, %struct.t_commrec*, %struct.t_graph*, %struct.t_forcerec*, float*) #2

; Function Attrs: optsize
declare i64 @do_steep(%struct._IO_FILE*, i32, %struct.t_filenm*, %struct.t_parm*, %struct.t_topology*, %struct.t_groups*, %struct.t_nsborder*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_mdatoms*, [3 x float]*, float*, %struct.t_fcdata*, %struct.t_nrnb*, i32, i32, %struct.t_comm_dummies*, %struct.t_commrec*, %struct.t_commrec*, %struct.t_graph*, %struct.t_forcerec*, float*) #2

; Function Attrs: optsize
declare i64 @do_nm(%struct._IO_FILE*, %struct.t_commrec*, i32, %struct.t_filenm*, i32, i32, i32, %struct.t_parm*, %struct.t_groups*, %struct.t_topology*, float*, %struct.t_fcdata*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_mdatoms*, %struct.t_nsborder*, %struct.t_nrnb*, %struct.t_graph*, %struct.t_edsamyn*, %struct.t_forcerec*, float*) #2

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize readnone
declare double @difftime(i64, i64) #5

; Function Attrs: nounwind optsize
declare i64 @time(i64*) #3

; Function Attrs: optsize
declare double @node_time() #2

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #5

; Function Attrs: optsize
declare void @md2atoms(%struct.t_mdatoms*, %struct.t_atoms*, i32) #2

; Function Attrs: optsize
declare void @finish_run(%struct._IO_FILE*, %struct.t_commrec*, i8*, %struct.t_nsborder*, %struct.t_topology*, %struct.t_parm*, %struct.t_nrnb*, double, double, i32, i32) #2

; Function Attrs: optsize
declare i64 @print_date_and_time(%struct._IO_FILE*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: optsize
declare void @init_md(%struct.t_commrec*, %struct.t_inputrec*, [3 x float]*, float*, float*, float*, float*, float*, %struct.t_nrnb*, i32*, %struct.t_topology*, i32, %struct.t_filenm*, i8**, i8**, i32*, %struct._IO_FILE**, %struct.t_mdebin**, %struct.t_groups*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_mdatoms*, float*, i32*, %struct.t_vcm**, %struct.t_nsborder*) #2

; Function Attrs: optsize
declare %struct.t_shell* @init_shells(%struct._IO_FILE*, i32, i32, %struct.t_idef*, %struct.t_mdatoms*, i32*) #2

; Function Attrs: optsize
declare void @gmx_sumi(i32, i32*, %struct.t_commrec*) #2

; Function Attrs: optsize
declare i32 @ftp2bSet(i32, i32, %struct.t_filenm*) #2

; Function Attrs: optsize
declare void @rd_index(i8*, i32, i32*, i32**, i8**) #2

; Function Attrs: optsize
declare void @do_pbc_first(%struct._IO_FILE*, %struct.t_parm*, float*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*) #2

; Function Attrs: optsize
declare void @init_pull(%struct._IO_FILE*, i32, %struct.t_filenm*, %struct.t_pull*, [3 x float]*, %struct.t_mdatoms*, [3 x float]*) #2

; Function Attrs: optsize
declare void @do_shakefirst(%struct._IO_FILE*, i32, float, float*, %struct.t_parm*, %struct.t_nsborder*, %struct.t_mdatoms*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_graph*, %struct.t_commrec*, %struct.t_nrnb*, %struct.t_groups*, %struct.t_forcerec*, %struct.t_topology*, %struct.t_edsamyn*, %struct.t_pull*) #2

; Function Attrs: optsize
declare void @calc_ke_part(i32, i32, i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_grpopts*, %struct.t_mdatoms*, %struct.t_groups*, %struct.t_nrnb*, float, float*) #2

; Function Attrs: optsize
declare void @calc_ke_part_visc(i32, i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_grpopts*, %struct.t_mdatoms*, %struct.t_groups*, %struct.t_nrnb*, float, float*) #2

; Function Attrs: optsize
declare void @global_stat(%struct._IO_FILE*, %struct.t_commrec*, float*, [3 x float]*, [3 x float]*, %struct.t_grpopts*, %struct.t_groups*, %struct.t_nrnb*, %struct.t_nrnb*, %struct.t_vcm*, float*) #2

; Function Attrs: optsize
declare float @sum_ekin(%struct.t_grpopts*, %struct.t_groups*, [3 x float]*, i32) #2

; Function Attrs: optsize
declare void @berendsen_tcoupl(%struct.t_grpopts*, %struct.t_groups*, float, float) #2

; Function Attrs: optsize
declare void @nosehoover_tcoupl(%struct.t_grpopts*, %struct.t_groups*, float, float) #2

; Function Attrs: optsize
declare void @start_time() #2

; Function Attrs: optsize
declare i32 @read_first_frame(i32*, i8*, %struct.t_trxframe*, i32) #2

; Function Attrs: optsize
declare i32 @do_per_step(i32, i32) #2

; Function Attrs: optsize
declare void @shift_self(%struct.t_graph*, [3 x float]*, [3 x float]*) #2

; Function Attrs: optsize
declare void @construct_dummies(%struct._IO_FILE*, [3 x float]*, %struct.t_nrnb*, float, [3 x float]*, %struct.t_idef*, %struct.t_graph*, %struct.t_commrec*, [3 x float]*, %struct.t_comm_dummies*) #2

; Function Attrs: optsize
declare void @unshift_self(%struct.t_graph*, [3 x float]*, [3 x float]*) #2

; Function Attrs: optsize
declare void @init_mdatoms(%struct.t_mdatoms*, float, i32) #2

; Function Attrs: optsize
declare void @ionize(%struct._IO_FILE*, %struct.t_mdatoms*, i8***, float, %struct.t_inputrec*, [3 x float]*, [3 x float]*, i32, i32, [3 x float]*, %struct.t_commrec*) #2

; Function Attrs: optsize
declare void @update_forcefield(i32, %struct.t_filenm*, %struct.t_forcerec*) #2

; Function Attrs: optsize
declare i32 @relax_shells(%struct._IO_FILE*, %struct.t_commrec*, %struct.t_commrec*, i32, i32, %struct.t_parm*, i32, i32, %struct.t_topology*, float*, %struct.t_fcdata*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_mdatoms*, %struct.t_nsborder*, %struct.t_nrnb*, %struct.t_graph*, %struct.t_groups*, [3 x float]*, [3 x float]*, i32, i32, %struct.t_shell*, %struct.t_forcerec*, i8*, float, float, float*, i32, [3 x float]*, i32*) #2

; Function Attrs: optsize
declare void @do_force(%struct._IO_FILE*, %struct.t_commrec*, %struct.t_commrec*, %struct.t_parm*, %struct.t_nsborder*, [3 x float]*, [3 x float]*, i32, %struct.t_nrnb*, %struct.t_topology*, %struct.t_groups*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_mdatoms*, float*, %struct.t_fcdata*, i32, float, %struct.t_graph*, i32, i32, %struct.t_forcerec*, float*, i32) #2

; Function Attrs: optsize
declare float @calc_mu_aver(%struct.t_commrec*, %struct.t_nsborder*, [3 x float]*, float*, float*, %struct.t_topology*, %struct.t_mdatoms*, i32, i32*) #2

; Function Attrs: optsize
declare void @do_glas(%struct._IO_FILE*, i32, i32, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_mdatoms*, i32, %struct.t_inputrec*, float*) #2

; Function Attrs: optsize
declare %struct.t_coupl_rec* @init_coupling(%struct._IO_FILE*, i32, %struct.t_filenm*, %struct.t_commrec*, %struct.t_forcerec*, %struct.t_mdatoms*, %struct.t_idef*) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #3

; Function Attrs: optsize
declare void @print_ebin_header(%struct._IO_FILE*, i32, float, float, float) #2

; Function Attrs: optsize
declare void @spread_dummy_f(%struct._IO_FILE*, [3 x float]*, [3 x float]*, %struct.t_nrnb*, %struct.t_idef*, %struct.t_comm_dummies*, %struct.t_commrec*) #2

; Function Attrs: optsize
declare void @calc_virial(%struct._IO_FILE*, i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_graph*, [3 x float]*, %struct.t_nrnb*, %struct.t_forcerec*, i32) #2

; Function Attrs: optsize
declare void @sum_lrforces([3 x float]*, %struct.t_forcerec*, i32, i32) #2

; Function Attrs: optsize
declare void @write_sto_conf(i8*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, [3 x float]*) #2

; Function Attrs: optsize
declare void @pull(%struct.t_pull*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_topology*, float, i32, i32, %struct.t_mdatoms*) #2

; Function Attrs: optsize
declare void @update(i32, i32, i32, i32, float, float*, %struct.t_parm*, float, %struct.t_mdatoms*, [3 x float]*, %struct.t_graph*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_topology*, %struct.t_groups*, [3 x float]*, %struct.t_commrec*, %struct.t_nrnb*, i32, i32, %struct.t_edsamyn*, %struct.t_pull*, i32) #2

; Function Attrs: optsize
declare void @print_forcefield(%struct._IO_FILE*, float, i32, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_block*, float*) #2

; Function Attrs: optsize
declare void @correct_box([3 x float]*, %struct.t_forcerec*, %struct.t_graph*) #2

; Function Attrs: optsize
declare void @accumulate_u(%struct.t_commrec*, %struct.t_grpopts*, %struct.t_groups*) #2

; Function Attrs: optsize
declare void @calc_vcm_grp(%struct._IO_FILE*, i32, i32, float*, [3 x float]*, [3 x float]*, %struct.t_vcm*) #2

; Function Attrs: optsize
declare void @cp_nrnb(%struct.t_nrnb*, %struct.t_nrnb*) #2

; Function Attrs: optsize
declare void @correct_ekin(%struct._IO_FILE*, i32, i32, [3 x float]*, float*, float*, float, [3 x float]*) #2

; Function Attrs: optsize
declare void @check_cm_grp(%struct._IO_FILE*, %struct.t_vcm*) #2

; Function Attrs: optsize
declare void @do_stopcm_grp(%struct._IO_FILE*, i32, i32, [3 x float]*, [3 x float]*, %struct.t_vcm*) #2

; Function Attrs: optsize
declare void @sum_epot(%struct.t_grpopts*, %struct.t_groups*, float*) #2

; Function Attrs: optsize
declare void @calc_pres(i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, float) #2

; Function Attrs: optsize
declare void @set_avcsix(%struct._IO_FILE*, %struct.t_forcerec*, %struct.t_mdatoms*) #2

; Function Attrs: optsize
declare void @calc_dispcorr(%struct._IO_FILE*, i32, %struct.t_forcerec*, i32, [3 x float]*, [3 x float]*, [3 x float]*, float*) #2

; Function Attrs: optsize
declare void @do_coupling(%struct._IO_FILE*, i32, %struct.t_filenm*, %struct.t_coupl_rec*, float, i32, float*, %struct.t_forcerec*, %struct.t_inputrec*, i32, %struct.t_mdatoms*, %struct.t_idef*, float, i32, %struct.t_commrec*, [3 x float]*, [3 x float]*, [3 x float]*, float*, [3 x float]*, [3 x float]*, i32) #2

; Function Attrs: optsize
declare void @update_time() #2

; Function Attrs: optsize
declare void @upd_mdebin(%struct.t_mdebin*, %struct._IO_FILE*, float, i32, float, float*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_groups*, float*, i32) #2

; Function Attrs: optsize
declare void @print_time(%struct._IO_FILE*, i64, i32, %struct.t_inputrec*) #2

; Function Attrs: optsize
declare i32 @read_next_frame(i32, %struct.t_trxframe*) #2

; Function Attrs: optsize
declare void @gmx_sumd(i32, double*, %struct.t_commrec*) #2

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #2

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize readnone }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
!5 = metadata !{metadata !"long", metadata !1}
!6 = metadata !{metadata !"double", metadata !1}
