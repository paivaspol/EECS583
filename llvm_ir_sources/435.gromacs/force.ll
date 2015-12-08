; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
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
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct.t_groups = type { %struct.t_grp_ener, %struct.t_grp_tcstat*, %struct.t_grp_acc*, %struct.t_cos_acc }
%struct.t_grp_ener = type { i32, [7 x float*] }
%struct.t_grp_tcstat = type { float, float, [3 x [3 x float]], float, float }
%struct.t_grp_acc = type { i32, i32*, float, [3 x float], [3 x float], [3 x float] }
%struct.t_cos_acc = type { float, float, float }
%struct.t_nrnb = type { [129 x double] }
%struct.t_fcdata = type { %struct.t_disresdata, %struct.t_oriresdata }
%struct.t_disresdata = type { i32, i32, float, float, float, float, float, i32, i32, float, float*, float*, float*, float*, float* }
%struct.t_oriresdata = type { float, float, float, float, i32, i32, i32, float, float*, [3 x float]*, [3 x float]*, [3 x [3 x float]], [3 x [3 x float]]*, [5 x float]*, [5 x float]*, [5 x float]*, float*, float*, float*, float, [5 x float]*, float*** }
%struct.t_graph = type { i32, i32, i32, i32, i32, i32*, i32**, [3 x i32]* }

@.str = private unnamed_addr constant [3 x i8] c"fr\00", align 1
@.str1 = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c\00", align 1
@.str2 = private unnamed_addr constant [41 x i8] c"Table routines are used for coulomb: %s\0A\00", align 1
@bool_names = external global [3 x i8*]
@.str3 = private unnamed_addr constant [41 x i8] c"Table routines are used for vdw:     %s\0A\00", align 1
@.str4 = private unnamed_addr constant [52 x i8] c"Using a Gaussian width (1/beta) of %g nm for Ewald\0A\00", align 1
@.str5 = private unnamed_addr constant [23 x i8] c"No degrees of freedom!\00", align 1
@.str6 = private unnamed_addr constant [8 x i8] c"fr->phi\00", align 1
@.str7 = private unnamed_addr constant [11 x i8] c"fr->f_twin\00", align 1
@.str8 = private unnamed_addr constant [16 x i8] c"fr->fshift_twin\00", align 1
@.str9 = private unnamed_addr constant [10 x i8] c"fr->f_pme\00", align 1
@.str10 = private unnamed_addr constant [10 x i8] c"fr->cg_cm\00", align 1
@.str11 = private unnamed_addr constant [14 x i8] c"fr->shift_vec\00", align 1
@.str12 = private unnamed_addr constant [11 x i8] c"fr->fshift\00", align 1
@.str13 = private unnamed_addr constant [13 x i8] c"fr->mol_epot\00", align 1
@.str14 = private unnamed_addr constant [37 x i8] c"rvdw_switch (%g) must be < rvdw (%g)\00", align 1
@.str15 = private unnamed_addr constant [53 x i8] c"Using %s Lennard-Jones, switch between %g and %g nm\0A\00", align 1
@.str16 = private unnamed_addr constant [9 x i8] c"switched\00", align 1
@.str17 = private unnamed_addr constant [8 x i8] c"shifted\00", align 1
@.str18 = private unnamed_addr constant [44 x i8] c"Cut-off's:   NS: %g   Coulomb: %g   %s: %g\0A\00", align 1
@.str19 = private unnamed_addr constant [5 x i8] c"BHAM\00", align 1
@.str20 = private unnamed_addr constant [3 x i8] c"LJ\00", align 1
@.str21 = private unnamed_addr constant [17 x i8] c"FEP_TABLE_LENGTH\00", align 1
@.str23 = private unnamed_addr constant [117 x i8] c"\0ANote: Setting the free energy table length to %g nm\0A      You can set this value with the environment variable %s\0A\0A\00", align 1
@.str24 = private unnamed_addr constant [12 x i8] c"fr->coultab\00", align 1
@.str25 = private unnamed_addr constant [11 x i8] c"fr->vdwtab\00", align 1
@.str26 = private unnamed_addr constant [8 x i8] c"%s: %e\0A\00", align 1
@.str27 = private unnamed_addr constant [10 x i8] c"fr->rlist\00", align 1
@.str28 = private unnamed_addr constant [13 x i8] c"fr->rcoulomb\00", align 1
@.str29 = private unnamed_addr constant [12 x i8] c"fr->fudgeQQ\00", align 1
@.str30 = private unnamed_addr constant [8 x i8] c"%s: %d\0A\00", align 1
@.str31 = private unnamed_addr constant [11 x i8] c"fr->ndelta\00", align 1
@.str32 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str33 = private unnamed_addr constant [10 x i8] c"fr->bGrid\00", align 1
@.str34 = private unnamed_addr constant [15 x i8] c"fr->bTwinRange\00", align 1
@.str35 = private unnamed_addr constant [9 x i8] c"fr->ntab\00", align 1
@.str36 = private unnamed_addr constant [20 x i8] c"fr->rcoulomb_switch\00", align 1
@.str37 = private unnamed_addr constant [9 x i8] c"fr->nmol\00", align 1
@.str38 = private unnamed_addr constant [12 x i8] c"fr->nstcalc\00", align 1
@ns.bFirst = internal unnamed_addr global i1 false
@debug = external global %struct._IO_FILE*
@.str40 = private unnamed_addr constant [14 x i8] c"nsearch = %d\0A\00", align 1
@.str41 = private unnamed_addr constant [16 x i8] c"fshift after SR\00", align 1
@.str49 = private unnamed_addr constant [45 x i8] c"No such electrostatics method implemented %s\00", align 1
@eel_names = external global [11 x i8*]
@.str50 = private unnamed_addr constant [37 x i8] c"Vlr = %g, Vcorr = %g, Vlr_corr = %g\0A\00", align 1
@.str51 = private unnamed_addr constant [18 x i8] c"lr_vir after corr\00", align 1
@.str52 = private unnamed_addr constant [28 x i8] c"fshift after LR Corrections\00", align 1
@.str53 = private unnamed_addr constant [21 x i8] c"fshift after bondeds\00", align 1
@.str55 = private unnamed_addr constant [48 x i8] c"Going to determine what solvent types we have.\0A\00", align 1
@.str56 = private unnamed_addr constant [17 x i8] c"fr->solvent_type\00", align 1
@.str57 = private unnamed_addr constant [14 x i8] c"fr->mno_index\00", align 1
@.str58 = private unnamed_addr constant [55 x i8] c"There are %d molecules, %d charge groups and %d atoms\0A\00", align 1
@.str59 = private unnamed_addr constant [9 x i8] c"bAllExcl\00", align 1
@.str60 = private unnamed_addr constant [65 x i8] c"Exclusion outside molecule? ak = %d, j0 = %d, j1 = 5d, mol is %d\00", align 1
@.str61 = private unnamed_addr constant [10 x i8] c"bHaveCoul\00", align 1
@.str62 = private unnamed_addr constant [8 x i8] c"bHaveLJ\00", align 1
@.str63 = private unnamed_addr constant [68 x i8] c"The order in molecule %d could be optimized for better performance\0A\00", align 1
@.str64 = private unnamed_addr constant [59 x i8] c"(More than 10 molecules where the order can be optimized)\0A\00", align 1
@.str65 = private unnamed_addr constant [42 x i8] c"MNO: cg = %5d, m = %2d, n = %2d, o = %2d\0A\00", align 1
@.str66 = private unnamed_addr constant [5 x i8] c"cgid\00", align 1
@.str67 = private unnamed_addr constant [53 x i8] c"There are %d optimized solvent molecules on node %d\0A\00", align 1
@.str68 = private unnamed_addr constant [65 x i8] c"  aver. nr. of atoms per molecule: vdwc %.1f coul %.1f vdw %.1f\0A\00", align 1
@.str69 = private unnamed_addr constant [51 x i8] c"There are %d optimized water molecules on node %d\0A\00", align 1
@.str70 = private unnamed_addr constant [54 x i8] c"Determining largest Buckingham b parameter for table\0A\00", align 1
@.str71 = private unnamed_addr constant [32 x i8] c"Atomtype[%d] = %d, maximum = %d\00", align 1
@.str72 = private unnamed_addr constant [43 x i8] c"Buckingham b parameters, min: %g, max: %g\0A\00", align 1
@.str73 = private unnamed_addr constant [5 x i8] c"nbfp\00", align 1
@.str74 = private unnamed_addr constant [31 x i8] c"Average C6 parameter is: %10g\0A\00", align 1
@calc_rffac.bFirst = internal unnamed_addr global i1 false
@.str75 = private unnamed_addr constant [58 x i8] c"Temperature is %f while using Generalized Reaction Field\0A\00", align 1
@.str76 = private unnamed_addr constant [10 x i8] c"Tironi95a\00", align 1
@.str77 = private unnamed_addr constant [115 x i8] c"%s:\0AepsRF = %10g, I   = %10g, volume = %10g, kappa  = %10g\0Arc    = %10g, krf = %10g, crf    = %10g, epsfac = %10g\0A\00", align 1
@.str78 = private unnamed_addr constant [57 x i8] c"The electrostatics potential has its minimum at rc = %g\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.t_forcerec* @mk_forcerec() #0 {
entry:
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 68, i32 1, i32 2848) #4
  %0 = bitcast i8* %call to %struct.t_forcerec*
  ret %struct.t_forcerec* %0
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @update_forcerec(%struct._IO_FILE* %log, %struct.t_forcerec* nocapture %fr, [3 x float]* nocapture %box) #0 {
entry:
  %eeltype = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 33
  %0 = load i32* %eeltype, align 4, !tbaa !0
  %epsilon_r = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 5
  %1 = load float* %epsilon_r, align 4, !tbaa !3
  %rcoulomb = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 23
  %2 = load float* %rcoulomb, align 4, !tbaa !3
  %temp = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 4
  %3 = load float* %temp, align 4, !tbaa !3
  %kappa = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 8
  %epsfac = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 6
  %k_rf = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 9
  %c_rf = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 10
  %cmp1.i = icmp eq i32 %0, 2
  %eel.off.i = add i32 %0, -1
  %4 = icmp ult i32 %eel.off.i, 2
  br i1 %4, label %if.then.i, label %if.else72.i

if.then.i:                                        ; preds = %entry
  %zsquare = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 3
  %5 = load float* %zsquare, align 4, !tbaa !3
  %arrayidx1.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %6 = load float* %arrayidx1.i.i, align 4, !tbaa !3
  %arrayidx3.i.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %7 = load float* %arrayidx3.i.i, align 4, !tbaa !3
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %8 = load float* %arrayidx5.i.i, align 4, !tbaa !3
  %mul.i.i = fmul float %7, %8
  %arrayidx7.i.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %9 = load float* %arrayidx7.i.i, align 4, !tbaa !3
  %arrayidx9.i.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %10 = load float* %arrayidx9.i.i, align 4, !tbaa !3
  %mul10.i.i = fmul float %9, %10
  %sub.i.i = fsub float %mul.i.i, %mul10.i.i
  %mul11.i.i = fmul float %6, %sub.i.i
  %arrayidx13.i.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %11 = load float* %arrayidx13.i.i, align 4, !tbaa !3
  %arrayidx15.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %12 = load float* %arrayidx15.i.i, align 4, !tbaa !3
  %mul18.i.i = fmul float %8, %12
  %arrayidx22.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  %13 = load float* %arrayidx22.i.i, align 4, !tbaa !3
  %mul23.i.i = fmul float %9, %13
  %sub24.i.i = fsub float %mul18.i.i, %mul23.i.i
  %mul25.i.i = fmul float %11, %sub24.i.i
  %sub26.i.i = fsub float %mul11.i.i, %mul25.i.i
  %arrayidx28.i.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %14 = load float* %arrayidx28.i.i, align 4, !tbaa !3
  %mul33.i.i = fmul float %10, %12
  %mul38.i.i = fmul float %7, %13
  %sub39.i.i = fsub float %mul33.i.i, %mul38.i.i
  %mul40.i.i = fmul float %14, %sub39.i.i
  %add.i.i = fadd float %mul40.i.i, %sub26.i.i
  %div.i = fdiv float %5, %add.i.i
  br i1 %cmp1.i, label %if.then3.i, label %if.then.if.end17_crit_edge.i

if.then.if.end17_crit_edge.i:                     ; preds = %if.then.i
  %conv18.pre.i = fpext float %1 to double
  br label %if.end17.i

if.then3.i:                                       ; preds = %if.then.i
  %conv.i = fpext float %3 to double
  %cmp4.i = fcmp ugt float %3, 0.000000e+00
  br i1 %cmp4.i, label %if.end.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then3.i
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([58 x i8]* @.str75, i64 0, i64 0), double %conv.i) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then6.i, %if.then3.i
  %mul.i = fmul float %div.i, 2.000000e+00
  %conv8.i = fpext float %mul.i to double
  %conv9.i = fpext float %1 to double
  %mul10.i = fmul double %conv9.i, 5.727650e-04
  %mul11.i = fmul double %mul10.i, 0x3F810732CDE67DC4
  %mul13.i = fmul double %mul11.i, %conv.i
  %div14.i = fdiv double %conv8.i, %mul13.i
  %call15.i = tail call double @sqrt(double %div14.i) #4
  %conv16.i = fptrunc double %call15.i to float
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end.i, %if.then.if.end17_crit_edge.i
  %conv18.pre-phi.i = phi double [ %conv18.pre.i, %if.then.if.end17_crit_edge.i ], [ %conv9.i, %if.end.i ]
  %storemerge.i = phi float [ 0.000000e+00, %if.then.if.end17_crit_edge.i ], [ %conv16.i, %if.end.i ]
  store float %storemerge.i, float* %kappa, align 4, !tbaa !3
  %fabsf129.i = tail call float @fabsf(float %1) #5
  %15 = fpext float %fabsf129.i to double
  %cmp20.i = fcmp olt double %15, 1.200000e-38
  br i1 %cmp20.i, label %if.then22.i, label %if.else27.i

if.then22.i:                                      ; preds = %if.end17.i
  %mul23.i = fmul float %2, 2.000000e+00
  %mul24.i = fmul float %2, %mul23.i
  %mul25.i = fmul float %2, %mul24.i
  %div26.i = fdiv float 1.000000e+00, %mul25.i
  store float %div26.i, float* %k_rf, align 4, !tbaa !3
  br label %if.end47.i

if.else27.i:                                      ; preds = %if.end17.i
  %mul28.i = fmul float %2, %storemerge.i
  %add.i = fadd float %mul28.i, 1.000000e+00
  %mul.i131.i = fmul float %mul28.i, %mul28.i
  %mul31.i = fmul float %1, %mul.i131.i
  %sub.i = fadd float %1, -1.000000e+00
  %mul32.i = fmul float %sub.i, %add.i
  %add33.i = fadd float %mul32.i, %mul31.i
  %mul34.i = fmul float %1, 2.000000e+00
  %add35.i = fadd float %mul34.i, 1.000000e+00
  %mul36.i = fmul float %add35.i, %add.i
  %mul37.i = fmul float %mul31.i, 2.000000e+00
  %add38.i = fadd float %mul36.i, %mul37.i
  %div39.i = fdiv float %add33.i, %add38.i
  %mul40.i = fmul float %2, %2
  %mul41.i = fmul float %2, %mul40.i
  %div42.i = fdiv float %div39.i, %mul41.i
  store float %div42.i, float* %k_rf, align 4, !tbaa !3
  %div43.i = fdiv float 1.000000e+00, %2
  %mul44.i = fmul float %2, %div42.i
  %mul45.i = fmul float %2, %mul44.i
  %add46.i = fadd float %div43.i, %mul45.i
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.else27.i, %if.then22.i
  %16 = phi float [ %div42.i, %if.else27.i ], [ %div26.i, %if.then22.i ]
  %storemerge130.i = phi float [ %add46.i, %if.else27.i ], [ 0.000000e+00, %if.then22.i ]
  store float %storemerge130.i, float* %c_rf, align 4, !tbaa !3
  store float 0x40615DEEE0000000, float* %epsfac, align 4, !tbaa !3
  %conv48.i = fpext float %16 to double
  %mul49.i = fmul double %conv48.i, 2.000000e+00
  %call50.i = tail call double @pow(double %mul49.i, double 0xBFD5555555555555) #4
  %conv51.i = fptrunc double %call50.i to float
  %.b.i = load i1* @calc_rffac.bFirst, align 1
  br i1 %.b.i, label %calc_rffac.exit, label %if.then52.i

if.then52.i:                                      ; preds = %if.end47.i
  br i1 %cmp1.i, label %if.then55.i, label %if.end56.i

if.then55.i:                                      ; preds = %if.then52.i
  tail call void @please_cite(%struct._IO_FILE* %log, i8* getelementptr inbounds ([10 x i8]* @.str76, i64 0, i64 0)) #4
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then55.i, %if.then52.i
  %tobool57.i = icmp eq %struct._IO_FILE* %log, null
  br i1 %tobool57.i, label %if.end70.i, label %if.then58.i

if.then58.i:                                      ; preds = %if.end56.i
  %idxprom.i = sext i32 %0 to i64
  %arrayidx.i = getelementptr inbounds [11 x i8*]* @eel_names, i64 0, i64 %idxprom.i
  %17 = load i8** %arrayidx.i, align 8, !tbaa !4
  %conv60.i = fpext float %div.i to double
  %conv61.i = fpext float %add.i.i to double
  %18 = load float* %kappa, align 4, !tbaa !3
  %conv62.i = fpext float %18 to double
  %conv63.i = fpext float %2 to double
  %19 = load float* %k_rf, align 4, !tbaa !3
  %conv64.i = fpext float %19 to double
  %20 = load float* %c_rf, align 4, !tbaa !3
  %conv65.i = fpext float %20 to double
  %21 = load float* %epsfac, align 4, !tbaa !3
  %conv66.i = fpext float %21 to double
  %call67.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([115 x i8]* @.str77, i64 0, i64 0), i8* %17, double %conv18.pre-phi.i, double %conv60.i, double %conv61.i, double %conv62.i, double %conv63.i, double %conv64.i, double %conv65.i, double %conv66.i) #4
  %conv68.i = fpext float %conv51.i to double
  %call69.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([57 x i8]* @.str78, i64 0, i64 0), double %conv68.i) #4
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then58.i, %if.end56.i
  store i1 true, i1* @calc_rffac.bFirst, align 1
  br label %calc_rffac.exit

if.else72.i:                                      ; preds = %entry
  store float 0.000000e+00, float* %kappa, align 4, !tbaa !3
  store float 0.000000e+00, float* %k_rf, align 4, !tbaa !3
  store float 0.000000e+00, float* %c_rf, align 4, !tbaa !3
  %fabsf.i = tail call float @fabsf(float %1) #5
  %22 = fpext float %fabsf.i to double
  %cmp75.i = fcmp olt double %22, 1.200000e-38
  %23 = fpext float %1 to double
  %conv79.i = select i1 %cmp75.i, double 1.000000e+00, double %23
  %div80.i = fdiv double 0x40615DEEE174A498, %conv79.i
  %conv81.i = fptrunc double %div80.i to float
  store float %conv81.i, float* %epsfac, align 4, !tbaa !3
  br label %calc_rffac.exit

calc_rffac.exit:                                  ; preds = %if.end47.i, %if.end70.i, %if.else72.i
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @set_avcsix(%struct._IO_FILE* nocapture %log, %struct.t_forcerec* nocapture %fr, %struct.t_mdatoms* nocapture %mdatoms) #0 {
entry:
  %nbfp = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 65
  %0 = load float** %nbfp, align 8, !tbaa !4
  %ntype = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63
  %1 = load i32* %ntype, align 4, !tbaa !0
  %nr = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 1
  %2 = load i32* %nr, align 4, !tbaa !0
  %typeA = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 11
  %3 = load i32** %typeA, align 8, !tbaa !4
  %cmp4.i = icmp sgt i32 %2, 0
  br i1 %cmp4.i, label %for.body.lr.ph.i, label %for.end19.i

for.body.lr.ph.i:                                 ; preds = %entry
  %bBHAM = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 64
  %4 = load i32* %bBHAM, align 4, !tbaa !0
  %tobool.i = icmp eq i32 %4, 0
  br label %for.body3.lr.ph.i

for.body3.lr.ph.i:                                ; preds = %for.inc17.i, %for.body.lr.ph.i
  %indvars.iv8.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next9.i, %for.inc17.i ]
  %csix.06.i = phi double [ 0.000000e+00, %for.body.lr.ph.i ], [ %csix.2.i, %for.inc17.i ]
  %arrayidx.i = getelementptr inbounds i32* %3, i64 %indvars.iv8.i
  %5 = load i32* %arrayidx.i, align 4, !tbaa !0
  %mul.i = mul nsw i32 %5, %1
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc.i, %for.body3.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body3.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %csix.13.i = phi double [ %csix.06.i, %for.body3.lr.ph.i ], [ %csix.2.i, %for.inc.i ]
  %arrayidx5.i = getelementptr inbounds i32* %3, i64 %indvars.iv.i
  %6 = load i32* %arrayidx5.i, align 4, !tbaa !0
  %add.i = add nsw i32 %6, %mul.i
  br i1 %tobool.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body3.i
  %mul6.i = mul nsw i32 %add.i, 3
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body3.i
  %mul12.i = shl nsw i32 %add.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then.i
  %idxprom7.pn.in.i = phi i32 [ %mul6.i, %if.then.i ], [ %mul12.i, %if.else.i ]
  %idxprom7.pn.i = sext i32 %idxprom7.pn.in.i to i64
  %conv.pn.in.in.i = getelementptr inbounds float* %0, i64 %idxprom7.pn.i
  %conv.pn.in.i = load float* %conv.pn.in.in.i, align 4
  %conv.pn.i = fpext float %conv.pn.in.i to double
  %csix.2.i = fadd double %csix.13.i, %conv.pn.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond, label %for.inc17.i, label %for.body3.i

for.inc17.i:                                      ; preds = %for.inc.i
  %indvars.iv.next9.i = add i64 %indvars.iv8.i, 1
  %lftr.wideiv5 = trunc i64 %indvars.iv.next9.i to i32
  %exitcond6 = icmp eq i32 %lftr.wideiv5, %2
  br i1 %exitcond6, label %for.end19.i, label %for.body3.lr.ph.i

for.end19.i:                                      ; preds = %for.inc17.i, %entry
  %csix.0.lcssa.i = phi double [ 0.000000e+00, %entry ], [ %csix.2.i, %for.inc17.i ]
  %mul20.i = mul nsw i32 %2, %2
  %conv21.i = sitofp i32 %mul20.i to double
  %div.i = fdiv double %csix.0.lcssa.i, %conv21.i
  %7 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %tobool22.i = icmp eq %struct._IO_FILE* %7, null
  br i1 %tobool22.i, label %calc_avcsix.exit, label %if.then23.i

if.then23.i:                                      ; preds = %for.end19.i
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([31 x i8]* @.str74, i64 0, i64 0), double %div.i) #4
  br label %calc_avcsix.exit

calc_avcsix.exit:                                 ; preds = %for.end19.i, %if.then23.i
  %conv = fptrunc double %div.i to float
  %avcsix = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 11
  store float %conv, float* %avcsix, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @init_forcerec(%struct._IO_FILE* %fp, %struct.t_forcerec* %fr, %struct.t_inputrec* %ir, %struct.t_topology* %top, %struct.t_commrec* nocapture %cr, %struct.t_mdatoms* nocapture %mdatoms, %struct.t_nsborder* nocapture %nsb, [3 x float]* %box, i32 %bMolEpot, i8* %tabfn, i32 %bNoSolvOpt) #0 {
entry:
  %box_size = alloca [3 x float], align 4
  %call = call i8* @check_box([3 x float]* %box) #4
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i8* @check_box([3 x float]* %box) #4
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* %call1) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %arrayidx3 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1
  %nr = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 1
  %0 = load i32* %nr, align 4, !tbaa !0
  %fc_stepsize = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 62
  %1 = load i32* %fc_stepsize, align 4, !tbaa !0
  %conv = sitofp i32 %1 to float
  %fc_stepsize5 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 67
  store float %conv, float* %fc_stepsize5, align 4, !tbaa !3
  %efep = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 46
  %2 = load i32* %efep, align 4, !tbaa !0
  %efep6 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 29
  store i32 %2, i32* %efep6, align 4, !tbaa !0
  %sc_alpha = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 49
  %3 = load float* %sc_alpha, align 4, !tbaa !3
  %sc_alpha7 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 30
  store float %3, float* %sc_alpha7, align 4, !tbaa !3
  %sc_sigma = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 50
  %4 = load float* %sc_sigma, align 4, !tbaa !3
  %conv8 = fpext float %4 to double
  %call9 = call double @pow(double %conv8, double 6.000000e+00) #4
  %conv10 = fptrunc double %call9 to float
  %sc_sigma6 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 31
  store float %conv10, float* %sc_sigma6, align 4, !tbaa !3
  %ns_type = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 2
  %5 = load i32* %ns_type, align 4, !tbaa !0
  %cmp = icmp eq i32 %5, 0
  %conv11 = zext i1 %cmp to i32
  %bGrid = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 43
  store i32 %conv11, i32* %bGrid, align 4, !tbaa !0
  %ndelta = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 4
  %6 = load i32* %ndelta, align 4, !tbaa !0
  %ndelta12 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 37
  store i32 %6, i32* %ndelta12, align 4, !tbaa !0
  %ePBC = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 25
  %7 = load i32* %ePBC, align 4, !tbaa !0
  %ePBC13 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 0
  store i32 %7, i32* %ePBC13, align 4, !tbaa !0
  %rlist = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 35
  %8 = load float* %rlist, align 4, !tbaa !3
  %rlist14 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 1
  store float %8, float* %rlist14, align 4, !tbaa !3
  %9 = load float* %rlist, align 4, !tbaa !3
  %rcoulomb = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38
  %10 = load float* %rcoulomb, align 4, !tbaa !3
  %rvdw = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 41
  %11 = load float* %rvdw, align 4, !tbaa !3
  %cmp16 = fcmp ogt float %10, %11
  %. = select i1 %cmp16, float %10, float %11
  %cmp20 = fcmp ogt float %9, %.
  %cond36 = select i1 %cmp20, float %9, float %.
  %rlistlong = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 2
  store float %cond36, float* %rlistlong, align 4, !tbaa !3
  %coulombtype = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 36
  %12 = load i32* %coulombtype, align 4, !tbaa !0
  %eeltype = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 33
  store i32 %12, i32* %eeltype, align 4, !tbaa !0
  %vdwtype = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 39
  %13 = load i32* %vdwtype, align 4, !tbaa !0
  %vdwtype37 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 34
  store i32 %13, i32* %vdwtype37, align 4, !tbaa !0
  %cmp40 = fcmp ogt float %cond36, %8
  %conv41 = zext i1 %cmp40 to i32
  %bTwinRange = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 51
  store i32 %conv41, i32* %bTwinRange, align 4, !tbaa !0
  %.off846 = add i32 %12, -3
  %14 = icmp ult i32 %.off846, 2
  %lor.ext = zext i1 %14 to i32
  %bEwald = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 56
  store i32 %lor.ext, i32* %bEwald, align 4, !tbaa !0
  %cmp49 = icmp ne i32 %13, 0
  %conv50 = zext i1 %cmp49 to i32
  %bvdwtab = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 14
  store i32 %conv50, i32* %bvdwtab, align 4, !tbaa !0
  %.off = add i32 %12, -1
  %switch = icmp ult i32 %.off, 2
  %cmp58 = icmp eq i32 %13, 0
  %cmp58. = and i1 %switch, %cmp58
  %land.ext = zext i1 %cmp58. to i32
  %bRF = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 7
  store i32 %land.ext, i32* %bRF, align 4, !tbaa !0
  %cmp61 = icmp eq i32 %12, 0
  %brmerge = or i1 %cmp61, %cmp58.
  %not.brmerge = xor i1 %brmerge, true
  %.934 = or i1 %14, %not.brmerge
  %lor.ext69 = zext i1 %.934 to i32
  %bcoultab = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 13
  store i32 %lor.ext69, i32* %bcoultab, align 4, !tbaa !0
  %tobool70 = icmp ne %struct._IO_FILE* %fp, null
  br i1 %tobool70, label %if.then71, label %if.end79

if.then71:                                        ; preds = %if.end
  %idxprom = zext i1 %.934 to i64
  %arrayidx73 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %idxprom
  %15 = load i8** %arrayidx73, align 8, !tbaa !4
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([41 x i8]* @.str2, i64 0, i64 0), i8* %15) #4
  %16 = load i32* %bvdwtab, align 4, !tbaa !0
  %idxprom76 = sext i32 %16 to i64
  %arrayidx77 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %idxprom76
  %17 = load i8** %arrayidx77, align 8, !tbaa !4
  %call78 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([41 x i8]* @.str3, i64 0, i64 0), i8* %17) #4
  %.pre = load i32* %bEwald, align 4, !tbaa !0
  br label %if.end79

if.end79:                                         ; preds = %if.then71, %if.end
  %18 = phi i32 [ %.pre, %if.then71 ], [ %lor.ext, %if.end ]
  %tobool81 = icmp eq i32 %18, 0
  br i1 %tobool81, label %if.end91, label %if.then82

if.then82:                                        ; preds = %if.end79
  %19 = load float* %rcoulomb, align 4, !tbaa !3
  %ewald_rtol = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 21
  %20 = load float* %ewald_rtol, align 4, !tbaa !3
  %call84 = call float @calc_ewaldcoeff(float %19, float %20) #4
  %ewaldcoeff = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 57
  store float %call84, float* %ewaldcoeff, align 4, !tbaa !3
  br i1 %tobool70, label %if.then86, label %if.end91

if.then86:                                        ; preds = %if.then82
  %div = fdiv float 1.000000e+00, %call84
  %conv88 = fpext float %div to double
  %call89 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([52 x i8]* @.str4, i64 0, i64 0), double %conv88) #4
  br label %if.end91

if.end91:                                         ; preds = %if.then82, %if.end79, %if.then86
  %bDomDecomp = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 5
  %21 = load i32* %bDomDecomp, align 4, !tbaa !0
  %bDomDecomp92 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 44
  store i32 %21, i32* %bDomDecomp92, align 4, !tbaa !0
  %decomp_dir = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 6
  %22 = load i32* %decomp_dir, align 4, !tbaa !0
  %Dimension = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 42
  store i32 %22, i32* %Dimension, align 4, !tbaa !0
  %epsilon_r = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 42
  %23 = load float* %epsilon_r, align 4, !tbaa !3
  %epsilon_r93 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 5
  store float %23, float* %epsilon_r93, align 4, !tbaa !3
  %fudgeQQ = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 45
  %24 = load float* %fudgeQQ, align 4, !tbaa !3
  %fudgeQQ94 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 12
  store float %24, float* %fudgeQQ94, align 4, !tbaa !3
  %rcoulomb_switch = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 37
  %25 = load float* %rcoulomb_switch, align 4, !tbaa !3
  %rcoulomb_switch95 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 22
  store float %25, float* %rcoulomb_switch95, align 4, !tbaa !3
  %26 = load float* %rcoulomb, align 4, !tbaa !3
  %rcoulomb97 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 23
  store float %26, float* %rcoulomb97, align 4, !tbaa !3
  %bSolvOpt = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 38
  store i32 1, i32* %bSolvOpt, align 4, !tbaa !0
  %zsquare = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 3
  store float 0.000000e+00, float* %zsquare, align 4, !tbaa !3
  %temp = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 4
  store float 0.000000e+00, float* %temp, align 4, !tbaa !3
  %27 = load i32* %eeltype, align 4, !tbaa !0
  switch i32 %27, label %if.end230 [
    i32 2, label %for.cond.preheader
    i32 5, label %for.body192
    i32 6, label %for.body192
    i32 3, label %for.body192
    i32 4, label %for.body192
    i32 8, label %for.body192
    i32 9, label %for.body192
    i32 7, label %for.body192
  ]

for.cond.preheader:                               ; preds = %if.end91
  %nr102 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 1
  %28 = load i32* %nr102, align 4, !tbaa !0
  %index = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 2
  %a = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 4
  %chargeT = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 8
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %for.cond.preheader, %if.then123
  %zsq.0.ph = phi float [ %conv128, %if.then123 ], [ 0.000000e+00, %for.cond.preheader ]
  %i.0.ph = phi i32 [ %add, %if.then123 ], [ 0, %for.cond.preheader ]
  %29 = sext i32 %i.0.ph to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %for.end
  %indvars.iv924 = phi i64 [ %29, %for.cond.outer ], [ %indvars.iv.next925, %for.end ]
  %i.0 = phi i32 [ %i.0.ph, %for.cond.outer ], [ %add, %for.end ]
  %30 = trunc i64 %indvars.iv924 to i32
  %cmp103 = icmp slt i32 %30, %28
  br i1 %cmp103, label %for.body, label %for.end132

for.body:                                         ; preds = %for.cond
  %31 = load i32** %index, align 8, !tbaa !4
  %arrayidx106 = getelementptr inbounds i32* %31, i64 %indvars.iv924
  %32 = load i32* %arrayidx106, align 4, !tbaa !0
  %indvars.iv.next925 = add i64 %indvars.iv924, 1
  %add = add nsw i32 %i.0, 1
  %arrayidx110873 = getelementptr inbounds i32* %31, i64 %indvars.iv.next925
  %33 = load i32* %arrayidx110873, align 4, !tbaa !0
  %cmp111874 = icmp slt i32 %32, %33
  br i1 %cmp111874, label %for.body113.lr.ph, label %for.end

for.body113.lr.ph:                                ; preds = %for.body
  %34 = load i32** %a, align 8, !tbaa !4
  %35 = load float** %chargeT, align 8, !tbaa !4
  %36 = sext i32 %32 to i64
  br label %for.body113

for.body113:                                      ; preds = %for.body113.lr.ph, %for.body113
  %indvars.iv922 = phi i64 [ %36, %for.body113.lr.ph ], [ %indvars.iv.next923, %for.body113 ]
  %q.0875 = phi float [ 0.000000e+00, %for.body113.lr.ph ], [ %add118, %for.body113 ]
  %arrayidx115 = getelementptr inbounds i32* %34, i64 %indvars.iv922
  %37 = load i32* %arrayidx115, align 4, !tbaa !0
  %idxprom116 = sext i32 %37 to i64
  %arrayidx117 = getelementptr inbounds float* %35, i64 %idxprom116
  %38 = load float* %arrayidx117, align 4, !tbaa !3
  %add118 = fadd float %q.0875, %38
  %indvars.iv.next923 = add i64 %indvars.iv922, 1
  %39 = trunc i64 %indvars.iv.next923 to i32
  %cmp111 = icmp slt i32 %39, %33
  br i1 %cmp111, label %for.body113, label %for.end

for.end:                                          ; preds = %for.body113, %for.body
  %q.0.lcssa = phi float [ 0.000000e+00, %for.body ], [ %add118, %for.body113 ]
  %fabsf = call float @fabsf(float %q.0.lcssa) #5
  %40 = fpext float %fabsf to double
  %cmp121 = fcmp ogt double %40, 1.200000e-38
  br i1 %cmp121, label %if.then123, label %for.cond

if.then123:                                       ; preds = %for.end
  %conv128 = fadd float %zsq.0.ph, %fabsf
  br label %for.cond.outer

for.end132:                                       ; preds = %for.cond
  store float %zsq.0.ph, float* %zsquare, align 4, !tbaa !3
  %ngtc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 0
  %41 = load i32* %ngtc, align 4, !tbaa !0
  %cmp135868 = icmp sgt i32 %41, 0
  br i1 %cmp135868, label %for.body137.lr.ph, label %for.end153

for.body137.lr.ph:                                ; preds = %for.end132
  %nrdf140 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 4
  %42 = load float** %nrdf140, align 8, !tbaa !4
  %ref_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 5
  %43 = load float** %ref_t, align 8, !tbaa !4
  br label %for.body137

for.body137:                                      ; preds = %for.body137.lr.ph, %for.body137
  %indvars.iv920 = phi i64 [ 0, %for.body137.lr.ph ], [ %indvars.iv.next921, %for.body137 ]
  %nrdf.0870 = phi float [ 0.000000e+00, %for.body137.lr.ph ], [ %add142, %for.body137 ]
  %T.0869 = phi float [ 0.000000e+00, %for.body137.lr.ph ], [ %add150, %for.body137 ]
  %arrayidx141 = getelementptr inbounds float* %42, i64 %indvars.iv920
  %44 = load float* %arrayidx141, align 4, !tbaa !3
  %add142 = fadd float %nrdf.0870, %44
  %arrayidx149 = getelementptr inbounds float* %43, i64 %indvars.iv920
  %45 = load float* %arrayidx149, align 4, !tbaa !3
  %mul = fmul float %44, %45
  %add150 = fadd float %T.0869, %mul
  %indvars.iv.next921 = add i64 %indvars.iv920, 1
  %46 = trunc i64 %indvars.iv.next921 to i32
  %cmp135 = icmp slt i32 %46, %41
  br i1 %cmp135, label %for.body137, label %for.end153

for.end153:                                       ; preds = %for.body137, %for.end132
  %nrdf.0.lcssa = phi float [ 0.000000e+00, %for.end132 ], [ %add142, %for.body137 ]
  %T.0.lcssa = phi float [ 0.000000e+00, %for.end132 ], [ %add150, %for.body137 ]
  %conv154 = fpext float %nrdf.0.lcssa to double
  %cmp155 = fcmp olt double %conv154, 1.200000e-38
  br i1 %cmp155, label %if.then157, label %if.end158

if.then157:                                       ; preds = %for.end153
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([23 x i8]* @.str5, i64 0, i64 0)) #4
  br label %if.end158

if.end158:                                        ; preds = %if.then157, %for.end153
  %div159 = fdiv float %T.0.lcssa, %nrdf.0.lcssa
  store float %div159, float* %temp, align 4, !tbaa !3
  br label %if.end230

for.body192:                                      ; preds = %if.end91, %if.end91, %if.end91, %if.end91, %if.end91, %if.end91, %if.end91, %for.body192
  %indvars.iv926 = phi i64 [ %indvars.iv.next927, %for.body192 ], [ 0, %if.end91 ], [ 0, %if.end91 ], [ 0, %if.end91 ], [ 0, %if.end91 ], [ 0, %if.end91 ], [ 0, %if.end91 ], [ 0, %if.end91 ]
  %arrayidx196 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv926, i64 %indvars.iv926
  %47 = load float* %arrayidx196, align 4, !tbaa !3
  %arrayidx198 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 %indvars.iv926
  store float %47, float* %arrayidx198, align 4, !tbaa !3
  %indvars.iv.next927 = add i64 %indvars.iv926, 1
  %lftr.wideiv928 = trunc i64 %indvars.iv.next927 to i32
  %exitcond929 = icmp eq i32 %lftr.wideiv928, 3
  br i1 %exitcond929, label %for.end201, label %for.body192

for.end201:                                       ; preds = %for.body192
  %phi = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 24
  %48 = load float** %phi, align 8, !tbaa !4
  %cmp202 = icmp eq float* %48, null
  br i1 %cmp202, label %if.then204, label %if.end208

if.then204:                                       ; preds = %for.end201
  %49 = load i32* %nr, align 4, !tbaa !0
  %call206 = call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 626, i32 %49, i32 4) #4
  %50 = bitcast i8* %call206 to float*
  store float* %50, float** %phi, align 8, !tbaa !4
  %.pre931 = load i32* %eeltype, align 4, !tbaa !0
  br label %if.end208

if.end208:                                        ; preds = %if.then204, %for.end201
  %51 = phi i32 [ %.pre931, %if.then204 ], [ %27, %for.end201 ]
  switch i32 %51, label %if.end230 [
    i32 5, label %if.then225
    i32 6, label %if.then225
    i32 8, label %land.lhs.true220
  ]

land.lhs.true220:                                 ; preds = %if.end208
  %52 = load float* %rcoulomb97, align 4, !tbaa !3
  %53 = load float* %rcoulomb_switch95, align 4, !tbaa !3
  %cmp223 = fcmp ogt float %52, %53
  br i1 %cmp223, label %if.then225, label %if.end230

if.then225:                                       ; preds = %if.end208, %if.end208, %land.lhs.true220
  %54 = load float* %rcoulomb_switch95, align 4, !tbaa !3
  %55 = load float* %rcoulomb97, align 4, !tbaa !3
  %arraydecay = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 0
  call void @set_shift_consts(%struct._IO_FILE* %fp, float %54, float %55, float* %arraydecay, %struct.t_forcerec* %fr) #4
  br label %if.end230

if.end230:                                        ; preds = %land.lhs.true220, %if.end208, %if.end91, %if.then225, %if.end158
  %56 = load i32* %bTwinRange, align 4, !tbaa !0
  %tobool232 = icmp eq i32 %56, 0
  br i1 %tobool232, label %if.end236, label %if.then233

if.then233:                                       ; preds = %if.end230
  %call234 = call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 635, i32 %0, i32 12) #4
  %57 = bitcast i8* %call234 to [3 x float]*
  %f_twin = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 53
  store [3 x float]* %57, [3 x float]** %f_twin, align 8, !tbaa !4
  %call235 = call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 636, i32 27, i32 12) #4
  %58 = bitcast i8* %call235 to [3 x float]*
  %fshift_twin = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 54
  store [3 x float]* %58, [3 x float]** %fshift_twin, align 8, !tbaa !4
  br label %if.end236

if.end236:                                        ; preds = %if.end230, %if.then233
  %59 = load i32* %eeltype, align 4, !tbaa !0
  %.off818 = add i32 %59, -3
  %switch819 = icmp ult i32 %.off818, 4
  br i1 %switch819, label %if.then252, label %if.end254

if.then252:                                       ; preds = %if.end236
  %call253 = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 640, i32 %0, i32 12) #4
  %60 = bitcast i8* %call253 to [3 x float]*
  %f_pme = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55
  store [3 x float]* %60, [3 x float]** %f_pme, align 8, !tbaa !4
  br label %if.end254

if.end254:                                        ; preds = %if.end236, %if.then252
  %cg_cm = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 47
  %61 = load [3 x float]** %cg_cm, align 8, !tbaa !4
  %cmp255 = icmp eq [3 x float]* %61, null
  br i1 %cmp255, label %if.then257, label %if.end261

if.then257:                                       ; preds = %if.end254
  %nr258 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 1
  %62 = load i32* %nr258, align 4, !tbaa !0
  %call259 = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 653, i32 %62, i32 12) #4
  %63 = bitcast i8* %call259 to [3 x float]*
  store [3 x float]* %63, [3 x float]** %cg_cm, align 8, !tbaa !4
  br label %if.end261

if.end261:                                        ; preds = %if.then257, %if.end254
  %shift_vec = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 48
  %64 = load [3 x float]** %shift_vec, align 8, !tbaa !4
  %cmp262 = icmp eq [3 x float]* %64, null
  br i1 %cmp262, label %if.then264, label %if.end267

if.then264:                                       ; preds = %if.end261
  %call265 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 655, i32 27, i32 12) #4
  %65 = bitcast i8* %call265 to [3 x float]*
  store [3 x float]* %65, [3 x float]** %shift_vec, align 8, !tbaa !4
  br label %if.end267

if.end267:                                        ; preds = %if.then264, %if.end261
  %fshift = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %66 = load [3 x float]** %fshift, align 8, !tbaa !4
  %cmp268 = icmp eq [3 x float]* %66, null
  br i1 %cmp268, label %if.then270, label %if.end273

if.then270:                                       ; preds = %if.end267
  %call271 = call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 658, i32 27, i32 12) #4
  %67 = bitcast i8* %call271 to [3 x float]*
  store [3 x float]* %67, [3 x float]** %fshift, align 8, !tbaa !4
  br label %if.end273

if.end273:                                        ; preds = %if.then270, %if.end267
  %tobool274 = icmp eq i32 %bMolEpot, 0
  br i1 %tobool274, label %if.end284, label %land.lhs.true275

land.lhs.true275:                                 ; preds = %if.end273
  %nmol = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 59
  %68 = load i32* %nmol, align 4, !tbaa !0
  %cmp276 = icmp eq i32 %68, 0
  br i1 %cmp276, label %if.then278, label %if.end284

if.then278:                                       ; preds = %land.lhs.true275
  %nr279 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 1
  %69 = load i32* %nr279, align 4, !tbaa !0
  store i32 %69, i32* %nmol, align 4, !tbaa !0
  %call281 = call i32* @make_invblock(%struct.t_block* %arrayidx3, i32 %0) #4
  %mol_nr = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 60
  store i32* %call281, i32** %mol_nr, align 8, !tbaa !4
  %70 = load i32* %nmol, align 4, !tbaa !0
  %call283 = call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 663, i32 %70, i32 4) #4
  %71 = bitcast i8* %call283 to float*
  %mol_epot = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 61
  store float* %71, float** %mol_epot, align 8, !tbaa !4
  %nstenergy = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 12
  %72 = load i32* %nstenergy, align 4, !tbaa !0
  %nstcalc = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 62
  store i32 %72, i32* %nstcalc, align 4, !tbaa !0
  br label %if.end284

if.end284:                                        ; preds = %if.end273, %if.then278, %land.lhs.true275
  %nbfp = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 65
  %73 = load float** %nbfp, align 8, !tbaa !4
  %cmp285 = icmp eq float* %73, null
  br i1 %cmp285, label %if.then287, label %if.end294

if.then287:                                       ; preds = %if.end284
  %atnr = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 2
  %74 = load i32* %atnr, align 4, !tbaa !0
  %ntype = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63
  store i32 %74, i32* %ntype, align 4, !tbaa !0
  %functype = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 3
  %75 = load i32** %functype, align 8, !tbaa !4
  %76 = load i32* %75, align 4, !tbaa !0
  %cmp289 = icmp eq i32 %76, 14
  %conv290 = zext i1 %cmp289 to i32
  %bBHAM = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 64
  store i32 %conv290, i32* %bBHAM, align 4, !tbaa !0
  %77 = load i32* %atnr, align 4, !tbaa !0
  br i1 %cmp289, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then287
  %mul.i = mul nsw i32 %77, 3
  %mul2.i = mul nsw i32 %mul.i, %77
  %call.i = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str73, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 102, i32 %mul2.i, i32 4) #4
  %78 = bitcast i8* %call.i to float*
  %cmp123.i = icmp sgt i32 %77, 0
  br i1 %cmp123.i, label %for.cond3.preheader.lr.ph.i, label %mk_nbfp.exit

for.cond3.preheader.lr.ph.i:                      ; preds = %if.then.i
  %iparams.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 4
  %79 = load %union.t_iparams** %iparams.i, align 8, !tbaa !4
  br label %for.body5.lr.ph.i

for.body5.lr.ph.i:                                ; preds = %for.inc31.i, %for.cond3.preheader.lr.ph.i
  %indvars.iv140.i = phi i64 [ 0, %for.cond3.preheader.lr.ph.i ], [ %indvars.iv.next141.i, %for.inc31.i ]
  %k.0125.i = phi i32 [ 0, %for.cond3.preheader.lr.ph.i ], [ %90, %for.inc31.i ]
  %80 = trunc i64 %indvars.iv140.i to i32
  %mul6.i = mul nsw i32 %80, %77
  %81 = sext i32 %k.0125.i to i64
  %82 = zext i32 %mul6.i to i64
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.body5.i, %for.body5.lr.ph.i
  %indvars.iv135.i = phi i64 [ 0, %for.body5.lr.ph.i ], [ %indvars.iv.next136.i, %for.body5.i ]
  %indvars.iv133.i = phi i64 [ %81, %for.body5.lr.ph.i ], [ %indvars.iv.next134.i, %for.body5.i ]
  %a.i = getelementptr inbounds %union.t_iparams* %79, i64 %indvars.iv133.i, i32 0, i32 0
  %83 = load float* %a.i, align 4, !tbaa !3
  %84 = add nsw i64 %indvars.iv135.i, %82
  %85 = trunc i64 %84 to i32
  %mul7.i = mul nsw i32 %85, 3
  %add8.i = add nsw i32 %mul7.i, 1
  %idxprom9.i = sext i32 %add8.i to i64
  %arrayidx10.i = getelementptr inbounds float* %78, i64 %idxprom9.i
  store float %83, float* %arrayidx10.i, align 4, !tbaa !3
  %86 = getelementptr inbounds %union.t_iparams* %79, i64 %indvars.iv133.i, i32 0, i32 1
  %87 = load float* %86, align 4, !tbaa !3
  %add18.i = add nsw i32 %mul7.i, 2
  %idxprom19.i = sext i32 %add18.i to i64
  %arrayidx20.i = getelementptr inbounds float* %78, i64 %idxprom19.i
  store float %87, float* %arrayidx20.i, align 4, !tbaa !3
  %88 = getelementptr inbounds %union.t_iparams* %79, i64 %indvars.iv133.i, i32 0, i32 2
  %89 = load float* %88, align 4, !tbaa !3
  %idxprom28.i = sext i32 %mul7.i to i64
  %arrayidx29.i = getelementptr inbounds float* %78, i64 %idxprom28.i
  store float %89, float* %arrayidx29.i, align 4, !tbaa !3
  %indvars.iv.next136.i = add i64 %indvars.iv135.i, 1
  %indvars.iv.next134.i = add i64 %indvars.iv133.i, 1
  %lftr.wideiv912 = trunc i64 %indvars.iv.next136.i to i32
  %exitcond913 = icmp eq i32 %lftr.wideiv912, %77
  br i1 %exitcond913, label %for.inc31.i, label %for.body5.i

for.inc31.i:                                      ; preds = %for.body5.i
  %90 = add i32 %k.0125.i, %77
  %indvars.iv.next141.i = add i64 %indvars.iv140.i, 1
  %lftr.wideiv914 = trunc i64 %indvars.iv.next141.i to i32
  %exitcond915 = icmp eq i32 %lftr.wideiv914, %77
  br i1 %exitcond915, label %mk_nbfp.exit, label %for.body5.lr.ph.i

if.else.i:                                        ; preds = %if.then287
  %mul34.i = shl i32 %77, 1
  %mul35.i = mul nsw i32 %mul34.i, %77
  %call36.i = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str73, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 112, i32 %mul35.i, i32 4) #4
  %91 = bitcast i8* %call36.i to float*
  %cmp38115.i = icmp sgt i32 %77, 0
  br i1 %cmp38115.i, label %for.cond40.preheader.lr.ph.i, label %mk_nbfp.exit

for.cond40.preheader.lr.ph.i:                     ; preds = %if.else.i
  %iparams44.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 4
  %92 = load %union.t_iparams** %iparams44.i, align 8, !tbaa !4
  br label %for.body42.lr.ph.i

for.body42.lr.ph.i:                               ; preds = %for.inc65.i, %for.cond40.preheader.lr.ph.i
  %indvars.iv129.i = phi i64 [ 0, %for.cond40.preheader.lr.ph.i ], [ %indvars.iv.next130.i, %for.inc65.i ]
  %k.2117.i = phi i32 [ 0, %for.cond40.preheader.lr.ph.i ], [ %101, %for.inc65.i ]
  %93 = trunc i64 %indvars.iv129.i to i32
  %mul46.i = mul nsw i32 %93, %77
  %94 = sext i32 %k.2117.i to i64
  %95 = zext i32 %mul46.i to i64
  br label %for.body42.i

for.body42.i:                                     ; preds = %for.body42.i, %for.body42.lr.ph.i
  %indvars.iv126.i = phi i64 [ 0, %for.body42.lr.ph.i ], [ %indvars.iv.next127.i, %for.body42.i ]
  %indvars.iv.i = phi i64 [ %94, %for.body42.lr.ph.i ], [ %indvars.iv.next.i, %for.body42.i ]
  %c6.i = getelementptr inbounds %union.t_iparams* %92, i64 %indvars.iv.i, i32 0, i32 0
  %96 = load float* %c6.i, align 4, !tbaa !3
  %97 = add nsw i64 %indvars.iv126.i, %95
  %98 = trunc i64 %97 to i32
  %mul48.i = shl nsw i32 %98, 1
  %idxprom49.i = sext i32 %mul48.i to i64
  %arrayidx50.i = getelementptr inbounds float* %91, i64 %idxprom49.i
  store float %96, float* %arrayidx50.i, align 4, !tbaa !3
  %99 = getelementptr inbounds %union.t_iparams* %92, i64 %indvars.iv.i, i32 0, i32 1
  %100 = load float* %99, align 4, !tbaa !3
  %add58111.i = or i32 %mul48.i, 1
  %idxprom59.i = sext i32 %add58111.i to i64
  %arrayidx60.i = getelementptr inbounds float* %91, i64 %idxprom59.i
  store float %100, float* %arrayidx60.i, align 4, !tbaa !3
  %indvars.iv.next127.i = add i64 %indvars.iv126.i, 1
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv916 = trunc i64 %indvars.iv.next127.i to i32
  %exitcond917 = icmp eq i32 %lftr.wideiv916, %77
  br i1 %exitcond917, label %for.inc65.i, label %for.body42.i

for.inc65.i:                                      ; preds = %for.body42.i
  %101 = add i32 %k.2117.i, %77
  %indvars.iv.next130.i = add i64 %indvars.iv129.i, 1
  %lftr.wideiv918 = trunc i64 %indvars.iv.next130.i to i32
  %exitcond919 = icmp eq i32 %lftr.wideiv918, %77
  br i1 %exitcond919, label %mk_nbfp.exit, label %for.body42.lr.ph.i

mk_nbfp.exit:                                     ; preds = %for.inc65.i, %for.inc31.i, %if.then.i, %if.else.i
  %nbfp.0.i = phi float* [ %91, %if.else.i ], [ %78, %if.then.i ], [ %78, %for.inc31.i ], [ %91, %for.inc65.i ]
  store float* %nbfp.0.i, float** %nbfp, align 8, !tbaa !4
  br label %if.end294

if.end294:                                        ; preds = %if.end284, %mk_nbfp.exit
  %eg_excl = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 9
  %102 = load i32** %eg_excl, align 8, !tbaa !4
  %eg_excl296 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 66
  store i32* %102, i32** %eg_excl296, align 8, !tbaa !4
  %103 = load float* %rvdw, align 4, !tbaa !3
  %rvdw298 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 26
  store float %103, float* %rvdw298, align 4, !tbaa !3
  %rvdw_switch = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 40
  %104 = load float* %rvdw_switch, align 4, !tbaa !3
  %rvdw_switch299 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 25
  store float %104, float* %rvdw_switch299, align 4, !tbaa !3
  %105 = load i32* %vdwtype37, align 4, !tbaa !0
  switch i32 %105, label %land.lhs.true307 [
    i32 0, label %if.end333
    i32 3, label %if.end333
  ]

land.lhs.true307:                                 ; preds = %if.end294
  %bBHAM308 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 64
  %106 = load i32* %bBHAM308, align 4, !tbaa !0
  %tobool309 = icmp eq i32 %106, 0
  br i1 %tobool309, label %if.then310, label %if.end333

if.then310:                                       ; preds = %land.lhs.true307
  %cmp313 = fcmp ult float %104, %103
  br i1 %cmp313, label %if.end320, label %if.then315

if.then315:                                       ; preds = %if.then310
  %conv317 = fpext float %104 to double
  %conv319 = fpext float %103 to double
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([37 x i8]* @.str14, i64 0, i64 0), double %conv317, double %conv319) #4
  br label %if.end320

if.end320:                                        ; preds = %if.then310, %if.then315
  br i1 %tobool70, label %if.end333.thread, label %if.end346

if.end333.thread:                                 ; preds = %if.end320
  %107 = load i32* %eeltype, align 4, !tbaa !0
  %cmp324 = icmp eq i32 %107, 7
  %cond326 = select i1 %cmp324, i8* getelementptr inbounds ([9 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str17, i64 0, i64 0)
  %108 = load float* %rvdw_switch299, align 4, !tbaa !3
  %conv328 = fpext float %108 to double
  %109 = load float* %rvdw298, align 4, !tbaa !3
  %conv330 = fpext float %109 to double
  %call331 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([53 x i8]* @.str15, i64 0, i64 0), i8* %cond326, double %conv328, double %conv330) #4
  %.pre930 = load float* %rvdw298, align 4, !tbaa !3
  br label %if.then335

if.end333:                                        ; preds = %if.end294, %if.end294, %land.lhs.true307
  br i1 %tobool70, label %if.end333.if.then335_crit_edge, label %if.end346

if.end333.if.then335_crit_edge:                   ; preds = %if.end333
  %bBHAM340.pre = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 64
  br label %if.then335

if.then335:                                       ; preds = %if.end333.if.then335_crit_edge, %if.end333.thread
  %bBHAM340.pre-phi = phi i32* [ %bBHAM340.pre, %if.end333.if.then335_crit_edge ], [ %bBHAM308, %if.end333.thread ]
  %110 = phi float [ %103, %if.end333.if.then335_crit_edge ], [ %.pre930, %if.end333.thread ]
  %111 = load float* %rlist14, align 4, !tbaa !3
  %conv337 = fpext float %111 to double
  %112 = load float* %rcoulomb97, align 4, !tbaa !3
  %conv339 = fpext float %112 to double
  %113 = load i32* %bBHAM340.pre-phi, align 4, !tbaa !0
  %tobool341 = icmp ne i32 %113, 0
  %cond342 = select i1 %tobool341, i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0)
  %conv344 = fpext float %110 to double
  %call345 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([44 x i8]* @.str18, i64 0, i64 0), double %conv337, double %conv339, i8* %cond342, double %conv344) #4
  br label %if.end346

if.end346:                                        ; preds = %if.end320, %if.then335, %if.end333
  %eDispCorr = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 43
  %114 = load i32* %eDispCorr, align 4, !tbaa !0
  %cmp347 = icmp eq i32 %114, 0
  br i1 %cmp347, label %if.end350, label %if.then349

if.then349:                                       ; preds = %if.end346
  call void @set_avcsix(%struct._IO_FILE* undef, %struct.t_forcerec* %fr, %struct.t_mdatoms* %mdatoms) #6
  br label %if.end350

if.end350:                                        ; preds = %if.end346, %if.then349
  %bBHAM351 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 64
  %115 = load i32* %bBHAM351, align 4, !tbaa !0
  %tobool352 = icmp eq i32 %115, 0
  br i1 %tobool352, label %if.end354, label %if.then353

if.then353:                                       ; preds = %if.end350
  br i1 %tobool70, label %if.then.i825, label %if.end.i

if.then.i825:                                     ; preds = %if.then353
  %116 = call i64 @fwrite(i8* getelementptr inbounds ([54 x i8]* @.str70, i64 0, i64 0), i64 53, i64 1, %struct._IO_FILE* %fp) #3
  br label %if.end.i

if.end.i:                                         ; preds = %if.then353, %if.then.i825
  %117 = load float** %nbfp, align 8, !tbaa !4
  %ntype.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63
  %118 = load i32* %ntype.i, align 4, !tbaa !0
  %typeA.i = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 11
  %119 = load i32** %typeA.i, align 8, !tbaa !4
  %120 = load i32* %nr, align 4, !tbaa !0
  %bham_b_max.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 27
  store float 0.000000e+00, float* %bham_b_max.i, align 4, !tbaa !3
  %cmp69.i = icmp sgt i32 %120, 0
  br i1 %cmp69.i, label %for.body.i, label %for.end28.i

for.body.i:                                       ; preds = %if.end.i, %for.inc26.i
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i, %for.inc26.i ], [ 0, %if.end.i ]
  %first.072.i = phi i32 [ %first.2.i, %for.inc26.i ], [ 1, %if.end.i ]
  %bmin.070.i = phi float [ %bmin.2.i, %for.inc26.i ], [ -1.000000e+00, %if.end.i ]
  %arrayidx.i = getelementptr inbounds i32* %119, i64 %indvars.iv74.i
  %121 = load i32* %arrayidx.i, align 4, !tbaa !0
  %cmp2.i = icmp slt i32 %121, %118
  br i1 %cmp2.i, label %for.body7.lr.ph.i, label %if.then3.i

if.then3.i:                                       ; preds = %for.body.i
  %122 = trunc i64 %indvars.iv74.i to i32
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([32 x i8]* @.str71, i64 0, i64 0), i32 %122, i32 %121, i32 %118) #4
  br label %for.body7.lr.ph.i

for.body7.lr.ph.i:                                ; preds = %if.then3.i, %for.body.i
  %mul.i826 = mul nsw i32 %121, %118
  br label %for.body7.i

for.body7.i:                                      ; preds = %if.end21.i, %for.body7.lr.ph.i
  %indvars.iv.i827 = phi i64 [ 0, %for.body7.lr.ph.i ], [ %indvars.iv.next.i828, %if.end21.i ]
  %first.167.i = phi i32 [ %first.072.i, %for.body7.lr.ph.i ], [ %first.2.i, %if.end21.i ]
  %bmin.166.i = phi float [ %bmin.070.i, %for.body7.lr.ph.i ], [ %bmin.2.i, %if.end21.i ]
  %arrayidx9.i = getelementptr inbounds i32* %119, i64 %indvars.iv.i827
  %123 = load i32* %arrayidx9.i, align 4, !tbaa !0
  %cmp10.i = icmp slt i32 %123, %118
  br i1 %cmp10.i, label %if.end12.i, label %if.then11.i

if.then11.i:                                      ; preds = %for.body7.i
  %124 = trunc i64 %indvars.iv.i827 to i32
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([32 x i8]* @.str71, i64 0, i64 0), i32 %124, i32 %123, i32 %118) #4
  br label %if.end12.i

if.end12.i:                                       ; preds = %for.body7.i, %if.then11.i
  %add.i = add nsw i32 %123, %mul.i826
  %mul13.i = mul nsw i32 %add.i, 3
  %add14.i = add nsw i32 %mul13.i, 2
  %idxprom15.i = sext i32 %add14.i to i64
  %arrayidx16.i = getelementptr inbounds float* %117, i64 %idxprom15.i
  %125 = load float* %arrayidx16.i, align 4, !tbaa !3
  %126 = load float* %bham_b_max.i, align 4, !tbaa !3
  %cmp18.i = fcmp ogt float %125, %126
  br i1 %cmp18.i, label %if.then19.i, label %if.end21.i

if.then19.i:                                      ; preds = %if.end12.i
  store float %125, float* %bham_b_max.i, align 4, !tbaa !3
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.end12.i
  %127 = phi float [ %125, %if.then19.i ], [ %126, %if.end12.i ]
  %cmp22.i = fcmp uge float %125, %bmin.166.i
  %tobool23.i = icmp eq i32 %first.167.i, 0
  %or.cond.i = and i1 %cmp22.i, %tobool23.i
  %bmin.2.i = select i1 %or.cond.i, float %bmin.166.i, float %125
  %first.2.i = select i1 %or.cond.i, i32 %first.167.i, i32 0
  %indvars.iv.next.i828 = add i64 %indvars.iv.i827, 1
  %lftr.wideiv908 = trunc i64 %indvars.iv.next.i828 to i32
  %exitcond909 = icmp eq i32 %lftr.wideiv908, %120
  br i1 %exitcond909, label %for.inc26.i, label %for.body7.i

for.inc26.i:                                      ; preds = %if.end21.i
  %indvars.iv.next75.i = add i64 %indvars.iv74.i, 1
  %lftr.wideiv910 = trunc i64 %indvars.iv.next75.i to i32
  %exitcond911 = icmp eq i32 %lftr.wideiv910, %120
  br i1 %exitcond911, label %for.end28.i.loopexit, label %for.body.i

for.end28.i.loopexit:                             ; preds = %for.inc26.i
  %phitmp880 = fpext float %bmin.2.i to double
  br label %for.end28.i

for.end28.i:                                      ; preds = %for.end28.i.loopexit, %if.end.i
  %128 = phi float [ 0.000000e+00, %if.end.i ], [ %127, %for.end28.i.loopexit ]
  %bmin.0.lcssa.i = phi double [ -1.000000e+00, %if.end.i ], [ %phitmp880, %for.end28.i.loopexit ]
  br i1 %tobool70, label %if.then30.i, label %if.end354

if.then30.i:                                      ; preds = %for.end28.i
  %conv32.i = fpext float %128 to double
  %call33.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([43 x i8]* @.str72, i64 0, i64 0), double %bmin.0.lcssa.i, double %conv32.i) #4
  br label %if.end354

if.end354:                                        ; preds = %if.then30.i, %for.end28.i, %if.end350
  call void @update_forcerec(%struct._IO_FILE* %fp, %struct.t_forcerec* %fr, [3 x float]* %box) #6
  %129 = load i32* %bcoultab, align 4, !tbaa !0
  %tobool356 = icmp eq i32 %129, 0
  br i1 %tobool356, label %lor.lhs.false357, label %if.then360

lor.lhs.false357:                                 ; preds = %if.end354
  %130 = load i32* %bvdwtab, align 4, !tbaa !0
  %tobool359 = icmp eq i32 %130, 0
  br i1 %tobool359, label %if.else407, label %if.then360

if.then360:                                       ; preds = %lor.lhs.false357, %if.end354
  %131 = load i32* %eeltype, align 4, !tbaa !0
  %.off820 = add i32 %131, -3
  %switch821 = icmp ult i32 %.off820, 4
  br i1 %switch821, label %if.then376, label %if.end392

if.then376:                                       ; preds = %if.then360
  %132 = load i32* %bvdwtab, align 4, !tbaa !0
  store i32 0, i32* %bcoultab, align 4, !tbaa !0
  store i32 0, i32* %bvdwtab, align 4, !tbaa !0
  %rtab381 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 15
  store float 1.000000e+00, float* %rtab381, align 4, !tbaa !3
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %133 = load i32* %nodeid, align 4, !tbaa !0
  %cmp382 = icmp eq i32 %133, 0
  br i1 %cmp382, label %land.rhs384, label %land.end387

land.rhs384:                                      ; preds = %if.then376
  %threadid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %134 = load i32* %threadid, align 4, !tbaa !0
  %cmp385 = icmp eq i32 %134, 0
  br label %land.end387

land.end387:                                      ; preds = %land.rhs384, %if.then376
  %135 = phi i1 [ false, %if.then376 ], [ %cmp385, %land.rhs384 ]
  %land.ext388 = zext i1 %135 to i32
  call void @make_tables(%struct._IO_FILE* %fp, %struct.t_forcerec* %fr, i32 %land.ext388, i8* %tabfn) #4
  store i32 %129, i32* %bcoultab, align 4, !tbaa !0
  store i32 %132, i32* %bvdwtab, align 4, !tbaa !0
  %coulvdwtab = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 20
  %136 = load float** %coulvdwtab, align 8, !tbaa !4
  %coulvdw14tab = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 21
  store float* %136, float** %coulvdw14tab, align 8, !tbaa !4
  store float* null, float** %coulvdwtab, align 8, !tbaa !4
  br label %if.end392

if.end392:                                        ; preds = %if.then360, %land.end387
  %137 = load float* %rlistlong, align 4, !tbaa !3
  %conv394 = fpext float %137 to double
  %add395 = fadd double %conv394, 6.000000e-01
  %cmp396 = fcmp ogt double %add395, 1.000000e+00
  br i1 %cmp396, label %cond.true398, label %cond.end403

cond.true398:                                     ; preds = %if.end392
  %phitmp816 = fptrunc double %add395 to float
  br label %cond.end403

cond.end403:                                      ; preds = %if.end392, %cond.true398
  %cond404 = phi float [ %phitmp816, %cond.true398 ], [ 1.000000e+00, %if.end392 ]
  %rtab406 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 15
  store float %cond404, float* %rtab406, align 4, !tbaa !3
  br label %if.end449

if.else407:                                       ; preds = %lor.lhs.false357
  %138 = load i32* %efep6, align 4, !tbaa !0
  %cmp409 = icmp eq i32 %138, 0
  br i1 %cmp409, label %if.else446, label %if.then411

if.then411:                                       ; preds = %if.else407
  %139 = load float* %rlistlong, align 4, !tbaa !3
  %conv413 = fpext float %139 to double
  %cmp414 = fcmp olt double %conv413, 1.200000e-38
  br i1 %cmp414, label %if.then416, label %if.else430

if.then416:                                       ; preds = %if.then411
  %rtab417 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 15
  store float 5.000000e+00, float* %rtab417, align 4, !tbaa !3
  br i1 %tobool70, label %if.then425, label %if.end449

if.then425:                                       ; preds = %if.then416
  %call428 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([117 x i8]* @.str23, i64 0, i64 0), double 5.000000e+00, i8* getelementptr inbounds ([17 x i8]* @.str21, i64 0, i64 0)) #4
  br label %if.end449

if.else430:                                       ; preds = %if.then411
  %add433 = fadd double %conv413, 6.000000e-01
  %cmp434 = fcmp ogt double %add433, 1.000000e+00
  br i1 %cmp434, label %cond.true436, label %cond.end441

cond.true436:                                     ; preds = %if.else430
  %phitmp = fptrunc double %add433 to float
  br label %cond.end441

cond.end441:                                      ; preds = %if.else430, %cond.true436
  %cond442 = phi float [ %phitmp, %cond.true436 ], [ 1.000000e+00, %if.else430 ]
  %rtab444 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 15
  store float %cond442, float* %rtab444, align 4, !tbaa !3
  br label %if.end449

if.else446:                                       ; preds = %if.else407
  %rtab447 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 15
  store float 1.000000e+00, float* %rtab447, align 4, !tbaa !3
  br label %if.end449

if.end449:                                        ; preds = %if.else446, %if.then416, %if.then425, %cond.end441, %cond.end403
  %nodeid450 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %140 = load i32* %nodeid450, align 4, !tbaa !0
  %cmp451 = icmp eq i32 %140, 0
  br i1 %cmp451, label %land.rhs453, label %land.end457

land.rhs453:                                      ; preds = %if.end449
  %threadid454 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %141 = load i32* %threadid454, align 4, !tbaa !0
  %cmp455 = icmp eq i32 %141, 0
  br label %land.end457

land.end457:                                      ; preds = %land.rhs453, %if.end449
  %142 = phi i1 [ false, %if.end449 ], [ %cmp455, %land.rhs453 ]
  %land.ext458 = zext i1 %142 to i32
  call void @make_tables(%struct._IO_FILE* %fp, %struct.t_forcerec* %fr, i32 %land.ext458, i8* %tabfn) #4
  %143 = load i32* %eeltype, align 4, !tbaa !0
  %.off822 = add i32 %143, -3
  %switch823 = icmp ult i32 %.off822, 4
  br i1 %switch823, label %land.lhs.true474, label %if.then480

land.lhs.true474:                                 ; preds = %land.end457
  %144 = load i32* %bcoultab, align 4, !tbaa !0
  %tobool476 = icmp eq i32 %144, 0
  br i1 %tobool476, label %lor.lhs.false477, label %if.end483

lor.lhs.false477:                                 ; preds = %land.lhs.true474
  %145 = load i32* %bvdwtab, align 4, !tbaa !0
  %tobool479 = icmp eq i32 %145, 0
  br i1 %tobool479, label %if.then480, label %if.end483

if.then480:                                       ; preds = %land.end457, %lor.lhs.false477
  %coulvdwtab481 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 20
  %146 = load float** %coulvdwtab481, align 8, !tbaa !4
  %coulvdw14tab482 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 21
  store float* %146, float** %coulvdw14tab482, align 8, !tbaa !4
  br label %if.end483

if.end483:                                        ; preds = %lor.lhs.false477, %land.lhs.true474, %if.then480
  %147 = load i32* %bBHAM351, align 4, !tbaa !0
  %tobool485 = icmp ne i32 %147, 0
  %cond486 = select i1 %tobool485, i32 16, i32 12
  %ntab = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 16
  %148 = load i32* %ntab, align 4, !tbaa !0
  %add487 = shl i32 %148, 4
  %mul490 = add i32 %add487, 16
  %call492 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 769, i32 %mul490, i32 4) #4
  %149 = bitcast i8* %call492 to float*
  %coultab = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 18
  store float* %149, float** %coultab, align 8, !tbaa !4
  %sub = add i32 %cond486, -4
  %150 = load i32* %ntab, align 4, !tbaa !0
  %add494 = add nsw i32 %150, 1
  %mul495 = shl nsw i32 %sub, 2
  %mul497 = mul i32 %mul495, %add494
  %call499 = call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 770, i32 %mul497, i32 4) #4
  %151 = bitcast i8* %call499 to float*
  %vdwtab = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 19
  store float* %151, float** %vdwtab, align 8, !tbaa !4
  %152 = load i32* %ntab, align 4, !tbaa !0
  %cmp502865 = icmp slt i32 %152, 0
  br i1 %cmp502865, label %for.end544, label %for.cond505.preheader.lr.ph

for.cond505.preheader.lr.ph:                      ; preds = %if.end483
  %coulvdwtab512 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 20
  %153 = load float** %coulvdwtab512, align 8, !tbaa !4
  %154 = load float** %coultab, align 8, !tbaa !4
  %cmp524863 = icmp sgt i32 %sub, 0
  br label %for.cond505.preheader

for.cond505.preheader:                            ; preds = %for.inc542, %for.cond505.preheader.lr.ph
  %indvars.iv906 = phi i64 [ %indvars.iv.next907, %for.inc542 ], [ 0, %for.cond505.preheader.lr.ph ]
  %155 = trunc i64 %indvars.iv906 to i32
  %mul509 = mul nsw i32 %155, %cond486
  %mul514 = shl i32 %155, 2
  %156 = sext i32 %mul514 to i64
  %157 = sext i32 %mul509 to i64
  br label %for.body508

for.body508:                                      ; preds = %for.body508, %for.cond505.preheader
  %indvars.iv = phi i64 [ 0, %for.cond505.preheader ], [ %indvars.iv.next, %for.body508 ]
  %158 = add nsw i64 %indvars.iv, %157
  %arrayidx513 = getelementptr inbounds float* %153, i64 %158
  %159 = load float* %arrayidx513, align 4, !tbaa !3
  %160 = add nsw i64 %indvars.iv, %156
  %arrayidx518 = getelementptr inbounds float* %154, i64 %160
  store float %159, float* %arrayidx518, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv896 = trunc i64 %indvars.iv.next to i32
  %exitcond897 = icmp eq i32 %lftr.wideiv896, 4
  br i1 %exitcond897, label %for.cond522.loopexit, label %for.body508

for.cond522.loopexit:                             ; preds = %for.body508
  br i1 %cmp524863, label %for.body526.lr.ph, label %for.inc542

for.body526.lr.ph:                                ; preds = %for.cond522.loopexit
  %add528 = add nsw i32 %mul509, 4
  %mul534 = mul nsw i32 %155, %sub
  %161 = sext i32 %mul534 to i64
  %162 = sext i32 %add528 to i64
  br label %for.body526

for.body526:                                      ; preds = %for.body526, %for.body526.lr.ph
  %indvars.iv899 = phi i64 [ 0, %for.body526.lr.ph ], [ %indvars.iv.next900, %for.body526 ]
  %163 = add nsw i64 %162, %indvars.iv899
  %arrayidx532 = getelementptr inbounds float* %153, i64 %163
  %164 = load float* %arrayidx532, align 4, !tbaa !3
  %165 = add nsw i64 %indvars.iv899, %161
  %arrayidx538 = getelementptr inbounds float* %151, i64 %165
  store float %164, float* %arrayidx538, align 4, !tbaa !3
  %indvars.iv.next900 = add i64 %indvars.iv899, 1
  %lftr.wideiv903 = trunc i64 %indvars.iv.next900 to i32
  %exitcond904 = icmp eq i32 %lftr.wideiv903, %sub
  br i1 %exitcond904, label %for.inc542, label %for.body526

for.inc542:                                       ; preds = %for.body526, %for.cond522.loopexit
  %indvars.iv.next907 = add i64 %indvars.iv906, 1
  %cmp502 = icmp slt i32 %155, %152
  br i1 %cmp502, label %for.cond505.preheader, label %for.end544

for.end544:                                       ; preds = %for.inc542, %if.end483
  %mno_index = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 46
  %166 = load i32** %mno_index, align 8, !tbaa !4
  %tobool545 = icmp eq i32* %166, null
  br i1 %tobool545, label %if.then546, label %if.end547

if.then546:                                       ; preds = %for.end544
  %arrayidx.i831 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0
  br i1 %tobool70, label %if.then.i833, label %if.end.i837

if.then.i833:                                     ; preds = %if.then546
  %167 = call i64 @fwrite(i8* getelementptr inbounds ([48 x i8]* @.str55, i64 0, i64 0), i64 47, i64 1, %struct._IO_FILE* %fp) #3
  br label %if.end.i837

if.end.i837:                                      ; preds = %if.then.i833, %if.then546
  %nr.i834 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 1
  %168 = load i32* %nr.i834, align 4, !tbaa !0
  %add.i835 = add nsw i32 %168, 1
  %call4.i = call i8* @save_calloc(i8* getelementptr inbounds ([17 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 144, i32 %add.i835, i32 4) #4
  %169 = bitcast i8* %call4.i to i32*
  %solvent_type.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 45
  store i32* %169, i32** %solvent_type.i, align 8, !tbaa !4
  %170 = load i32* %nr.i834, align 4, !tbaa !0
  %171 = mul i32 %170, 3
  %mul.i836 = add i32 %171, 3
  %call7.i = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str57, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 145, i32 %mul.i836, i32 4) #4
  %172 = bitcast i8* %call7.i to i32*
  store i32* %172, i32** %mno_index, align 8, !tbaa !4
  %nra.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 3
  %173 = load i32* %nra.i, align 4, !tbaa !0
  %call8.i = call i32* @make_invblock(%struct.t_block* %arrayidx.i831, i32 %173) #4
  %nr11.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 1
  br i1 %tobool70, label %if.then10.i, label %for.cond.preheader.i

if.then10.i:                                      ; preds = %if.end.i837
  %174 = load i32* %nr11.i, align 4, !tbaa !0
  %175 = load i32* %nr.i834, align 4, !tbaa !0
  %176 = load i32* %nra.i, align 4, !tbaa !0
  %call14.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([55 x i8]* @.str58, i64 0, i64 0), i32 %174, i32 %175, i32 %176) #4
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then10.i, %if.end.i837
  %177 = load i32* %nr11.i, align 4, !tbaa !0
  %cmp10391044.i = icmp sgt i32 %177, 0
  br i1 %cmp10391044.i, label %for.body.lr.ph.lr.ph.i, label %for.end520.i

for.body.lr.ph.lr.ph.i:                           ; preds = %for.cond.preheader.i
  %index.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 2
  %a507.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 4
  %atom315.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1
  %bPerturbed.i = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 9
  %tobool.not.i = xor i1 %tobool70, true
  %ntype.i838 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63
  %index60.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 9, i32 2
  %a70.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 9, i32 4
  br label %for.body.lr.ph.i

for.cond498.for.cond.loopexit_crit_edge.i:        ; preds = %for.body505.i
  %.pre1109.i = load i32* %nr11.i, align 4, !tbaa !0
  br label %for.cond.loopexit.i

for.cond.loopexit.i:                              ; preds = %if.else494.i, %for.cond498.for.cond.loopexit_crit_edge.i
  %178 = phi i32 [ %311, %for.cond498.for.cond.loopexit_crit_edge.i ], [ %183, %if.else494.i ]
  %179 = phi i32 [ %.pre1109.i, %for.cond498.for.cond.loopexit_crit_edge.i ], [ %182, %if.else494.i ]
  %180 = trunc i64 %indvars.iv.next1076.i to i32
  %cmp.i = icmp slt i32 %180, %179
  br i1 %cmp.i, label %for.body.i840, label %for.end520.i

for.body.i840:                                    ; preds = %for.body.lr.ph.i, %for.cond.loopexit.i
  %181 = phi i32 [ %.pre1113.i, %for.body.lr.ph.i ], [ %178, %for.cond.loopexit.i ]
  %182 = phi i32 [ %303, %for.body.lr.ph.i ], [ %179, %for.cond.loopexit.i ]
  %indvars.iv1075.i = phi i64 [ %305, %for.body.lr.ph.i ], [ %indvars.iv.next1076.i, %for.cond.loopexit.i ]
  %i.01040.i = phi i32 [ %i.0.ph1046.i, %for.body.lr.ph.i ], [ %add18.i839, %for.cond.loopexit.i ]
  %indvars.iv.next1076.i = add i64 %indvars.iv1075.i, 1
  %add18.i839 = add nsw i32 %i.01040.i, 1
  %arrayidx21.i = getelementptr inbounds i32* %304, i64 %indvars.iv.next1076.i
  %183 = load i32* %arrayidx21.i, align 4, !tbaa !0
  %sub.i = sub nsw i32 %183, %181
  %j.0994.i = add i32 %181, 1
  %cmp24995.i = icmp slt i32 %j.0994.i, %183
  br i1 %cmp24995.i, label %for.body25.lr.ph.i, label %for.end.i

for.body25.lr.ph.i:                               ; preds = %for.body.i840
  %184 = sext i32 %j.0994.i to i64
  br label %for.body25.i

for.body25.i:                                     ; preds = %land.end.i, %for.body25.lr.ph.i
  %indvars.iv1062.i = phi i64 [ %184, %for.body25.lr.ph.i ], [ %indvars.iv.next1063.i, %land.end.i ]
  %j.0998.i = phi i32 [ %j.0994.i, %for.body25.lr.ph.i ], [ %j.0.i, %land.end.i ]
  %j.0.in997.i = phi i32 [ %181, %for.body25.lr.ph.i ], [ %191, %land.end.i ]
  %bOneCG.0996.i = phi i32 [ 1, %for.body25.lr.ph.i ], [ %land.ext.i, %land.end.i ]
  %tobool26.i = icmp eq i32 %bOneCG.0996.i, 0
  br i1 %tobool26.i, label %land.end.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body25.i
  %185 = load i32** %a507.i, align 8, !tbaa !4
  %arrayidx28.i = getelementptr inbounds i32* %185, i64 %indvars.iv1062.i
  %186 = load i32* %arrayidx28.i, align 4, !tbaa !0
  %idxprom29.i = sext i32 %186 to i64
  %arrayidx30.i = getelementptr inbounds i32* %call8.i, i64 %idxprom29.i
  %187 = load i32* %arrayidx30.i, align 4, !tbaa !0
  %idxprom32.i = sext i32 %j.0.in997.i to i64
  %arrayidx34.i = getelementptr inbounds i32* %185, i64 %idxprom32.i
  %188 = load i32* %arrayidx34.i, align 4, !tbaa !0
  %idxprom35.i = sext i32 %188 to i64
  %arrayidx36.i = getelementptr inbounds i32* %call8.i, i64 %idxprom35.i
  %189 = load i32* %arrayidx36.i, align 4, !tbaa !0
  %cmp37.i = icmp eq i32 %187, %189
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %for.body25.i
  %190 = phi i1 [ false, %for.body25.i ], [ %cmp37.i, %land.rhs.i ]
  %land.ext.i = zext i1 %190 to i32
  %j.0.i = add nsw i32 %j.0998.i, 1
  %indvars.iv.next1063.i = add i64 %indvars.iv1062.i, 1
  %191 = trunc i64 %indvars.iv1062.i to i32
  %exitcond1065.i = icmp eq i32 %j.0.i, %183
  br i1 %exitcond1065.i, label %for.end.i, label %for.body25.i

for.end.i:                                        ; preds = %land.end.i, %for.body.i840
  %bOneCG.0.lcssa.i = phi i1 [ true, %for.body.i840 ], [ %190, %land.end.i ]
  %192 = load i32* %bSolvOpt, align 4, !tbaa !0
  %notlhs.i = icmp ne i32 %192, 0
  %or.cond.not.i = and i1 %bOneCG.0.lcssa.i, %notlhs.i
  %cmp41.i = icmp sgt i32 %sub.i, 1
  %or.cond982.i = and i1 %or.cond.not.i, %cmp41.i
  br i1 %or.cond982.i, label %if.then42.i, label %if.else494.i

if.then42.i:                                      ; preds = %for.end.i
  %call43.i = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 168, i32 %sub.i, i32 4) #4
  %193 = bitcast i8* %call43.i to i32*
  %cmp451012.i = icmp slt i32 %181, %183
  br i1 %cmp451012.i, label %for.cond51.preheader.lr.ph.i, label %if.then99.i

for.cond51.preheader.lr.ph.i:                     ; preds = %if.then42.i
  %cmp521002.i = icmp sgt i32 %sub.i, 0
  %194 = add i32 %sub.i, -1
  %195 = zext i32 %194 to i64
  %196 = shl nuw nsw i64 %195, 2
  %197 = add i64 %196, 4
  %198 = sext i32 %181 to i64
  br label %for.cond51.preheader.i

for.cond44.loopexit.i:                            ; preds = %land.end90.i, %for.cond82.loopexit.i
  %bAE.1.lcssa.i = phi i32 [ %bAE.01014.i, %for.cond82.loopexit.i ], [ %land.ext91.i, %land.end90.i ]
  %199 = trunc i64 %indvars.iv.next1089.i to i32
  %cmp45.i = icmp sge i32 %199, %183
  %tobool47.i = icmp eq i32 %bAE.1.lcssa.i, 0
  %or.cond983.i = or i1 %cmp45.i, %tobool47.i
  br i1 %or.cond983.i, label %for.end97.i, label %for.cond51.preheader.i

for.cond51.preheader.i:                           ; preds = %for.cond44.loopexit.i, %for.cond51.preheader.lr.ph.i
  %indvars.iv1088.i = phi i64 [ %198, %for.cond51.preheader.lr.ph.i ], [ %indvars.iv.next1089.i, %for.cond44.loopexit.i ]
  %bAE.01014.i = phi i32 [ 1, %for.cond51.preheader.lr.ph.i ], [ %bAE.1.lcssa.i, %for.cond44.loopexit.i ]
  br i1 %cmp521002.i, label %for.body53.lr.ph.i, label %for.end58.i

for.body53.lr.ph.i:                               ; preds = %for.cond51.preheader.i
  call void @llvm.memset.p0i8.i64(i8* %call43.i, i8 0, i64 %197, i32 4, i1 false) #3
  br label %for.end58.i

for.end58.i:                                      ; preds = %for.cond51.preheader.i, %for.body53.lr.ph.i
  %200 = load i32** %index60.i, align 8, !tbaa !4
  %arrayidx61.i = getelementptr inbounds i32* %200, i64 %indvars.iv1088.i
  %201 = load i32* %arrayidx61.i, align 4, !tbaa !0
  %indvars.iv.next1089.i = add i64 %indvars.iv1088.i, 1
  %arrayidx661004.i = getelementptr inbounds i32* %200, i64 %indvars.iv.next1089.i
  %202 = load i32* %arrayidx661004.i, align 4, !tbaa !0
  %cmp671005.i = icmp slt i32 %201, %202
  br i1 %cmp671005.i, label %for.body68.lr.ph.i, label %for.cond82.loopexit.i

for.body68.lr.ph.i:                               ; preds = %for.end58.i
  %203 = sext i32 %201 to i64
  br label %for.body68.i

for.body68.i:                                     ; preds = %if.end75.i, %for.body68.lr.ph.i
  %204 = phi i32* [ %200, %for.body68.lr.ph.i ], [ %207, %if.end75.i ]
  %indvars.iv1081.i = phi i64 [ %203, %for.body68.lr.ph.i ], [ %indvars.iv.next1082.i, %if.end75.i ]
  %205 = load i32** %a70.i, align 8, !tbaa !4
  %arrayidx71.i = getelementptr inbounds i32* %205, i64 %indvars.iv1081.i
  %206 = load i32* %arrayidx71.i, align 4, !tbaa !0
  %cmp72.i = icmp sge i32 %206, %181
  %cmp73.i = icmp slt i32 %206, %183
  %or.cond984.i = and i1 %cmp72.i, %cmp73.i
  br i1 %or.cond984.i, label %if.end75.i, label %if.then74.i

if.then74.i:                                      ; preds = %for.body68.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([65 x i8]* @.str60, i64 0, i64 0), i32 %206, i32 %181, i32 %183, i32 %i.01040.i) #4
  %.pre1108.i = load i32** %index60.i, align 8, !tbaa !4
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then74.i, %for.body68.i
  %207 = phi i32* [ %204, %for.body68.i ], [ %.pre1108.i, %if.then74.i ]
  %sub76.i = sub nsw i32 %206, %181
  %idxprom77.i = sext i32 %sub76.i to i64
  %arrayidx78.i = getelementptr inbounds i32* %193, i64 %idxprom77.i
  store i32 1, i32* %arrayidx78.i, align 4, !tbaa !0
  %indvars.iv.next1082.i = add i64 %indvars.iv1081.i, 1
  %arrayidx66.i = getelementptr inbounds i32* %207, i64 %indvars.iv.next1089.i
  %208 = load i32* %arrayidx66.i, align 4, !tbaa !0
  %209 = trunc i64 %indvars.iv.next1082.i to i32
  %cmp67.i = icmp slt i32 %209, %208
  br i1 %cmp67.i, label %for.body68.i, label %for.cond82.loopexit.i

for.cond82.loopexit.i:                            ; preds = %if.end75.i, %for.end58.i
  br i1 %cmp521002.i, label %for.body84.i, label %for.cond44.loopexit.i

for.body84.i:                                     ; preds = %for.cond82.loopexit.i, %land.end90.i
  %indvars.iv1083.i = phi i64 [ %indvars.iv.next1084.i, %land.end90.i ], [ 0, %for.cond82.loopexit.i ]
  %bAE.11010.i = phi i32 [ %land.ext91.i, %land.end90.i ], [ %bAE.01014.i, %for.cond82.loopexit.i ]
  %tobool85.i = icmp eq i32 %bAE.11010.i, 0
  br i1 %tobool85.i, label %land.end90.i, label %land.rhs86.i

land.rhs86.i:                                     ; preds = %for.body84.i
  %arrayidx88.i = getelementptr inbounds i32* %193, i64 %indvars.iv1083.i
  %210 = load i32* %arrayidx88.i, align 4, !tbaa !0
  %tobool89.i = icmp ne i32 %210, 0
  br label %land.end90.i

land.end90.i:                                     ; preds = %land.rhs86.i, %for.body84.i
  %211 = phi i1 [ false, %for.body84.i ], [ %tobool89.i, %land.rhs86.i ]
  %land.ext91.i = zext i1 %211 to i32
  %indvars.iv.next1084.i = add i64 %indvars.iv1083.i, 1
  %lftr.wideiv891 = trunc i64 %indvars.iv.next1084.i to i32
  %exitcond892 = icmp eq i32 %lftr.wideiv891, %sub.i
  br i1 %exitcond892, label %for.cond44.loopexit.i, label %for.body84.i

for.end97.i:                                      ; preds = %for.cond44.loopexit.i
  br i1 %tobool47.i, label %if.else484.i, label %if.then99.i

if.then99.i:                                      ; preds = %for.end97.i, %if.then42.i
  %call100.i = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 190, i32 %sub.i, i32 4) #4
  %212 = bitcast i8* %call100.i to i32*
  %call101.i = call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 191, i32 %sub.i, i32 4) #4
  %213 = bitcast i8* %call101.i to i32*
  %214 = load i32** %a507.i, align 8, !tbaa !4
  br i1 %cmp451012.i, label %for.body104.lr.ph.i, label %if.then99.for.end293_crit_edge.i

if.then99.for.end293_crit_edge.i:                 ; preds = %if.then99.i
  %idxprom294.pre.i = sext i32 %181 to i64
  br label %for.end293.i

for.body104.lr.ph.i:                              ; preds = %if.then99.i
  %215 = load %struct.t_atom** %atom315.i, align 8, !tbaa !4
  %216 = sext i32 %181 to i64
  br label %for.body104.i

for.body104.i:                                    ; preds = %for.inc291.i, %for.body104.lr.ph.i
  %indvars.iv1090.i = phi i64 [ %216, %for.body104.lr.ph.i ], [ %indvars.iv.next1091.i, %for.inc291.i ]
  %arrayidx107.i = getelementptr inbounds i32* %214, i64 %indvars.iv1090.i
  %217 = load i32* %arrayidx107.i, align 4, !tbaa !0
  %idxprom108.i = sext i32 %217 to i64
  %q.i = getelementptr inbounds %struct.t_atom* %215, i64 %idxprom108.i, i32 1
  %218 = load float* %q.i, align 4, !tbaa !3
  %fabsf968.i = call float @fabsf(float %218) #5
  %219 = fpext float %fabsf968.i to double
  %cmp112.i = fcmp ogt double %219, 1.200000e-38
  br i1 %cmp112.i, label %lor.end.i, label %lor.rhs.i

lor.rhs.i:                                        ; preds = %for.body104.i
  %qB.i = getelementptr inbounds %struct.t_atom* %215, i64 %idxprom108.i, i32 3
  %220 = load float* %qB.i, align 4, !tbaa !3
  %fabsf969.i = call float @fabsf(float %220) #5
  %221 = fpext float %fabsf969.i to double
  %cmp120.i = fcmp ogt double %221, 1.200000e-38
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %for.body104.i
  %222 = phi i1 [ true, %for.body104.i ], [ %cmp120.i, %lor.rhs.i ]
  %lor.ext.i = zext i1 %222 to i32
  %223 = trunc i64 %indvars.iv1090.i to i32
  %sub122.i = sub nsw i32 %223, %181
  %idxprom123.i = sext i32 %sub122.i to i64
  %arrayidx124.i = getelementptr inbounds i32* %212, i64 %idxprom123.i
  store i32 %lor.ext.i, i32* %arrayidx124.i, align 4, !tbaa !0
  %type.i = getelementptr inbounds %struct.t_atom* %215, i64 %idxprom108.i, i32 4
  %224 = load i16* %type.i, align 2, !tbaa !5
  %conv129.i = zext i16 %224 to i32
  %typeB.i = getelementptr inbounds %struct.t_atom* %215, i64 %idxprom108.i, i32 5
  %225 = load i16* %typeB.i, align 2, !tbaa !5
  %conv134.i = zext i16 %225 to i32
  %arrayidx137.i = getelementptr inbounds i32* %213, i64 %idxprom123.i
  store i32 0, i32* %arrayidx137.i, align 4, !tbaa !0
  %226 = load i32* %ntype.i838, align 4, !tbaa !0
  %cmp1391017.i = icmp sgt i32 %226, 0
  br i1 %cmp1391017.i, label %for.body141.i, label %for.inc291.i

for.body141.i:                                    ; preds = %lor.end.i, %for.inc288.i
  %227 = phi i32 [ %lor.ext224.i, %for.inc288.i ], [ 0, %lor.end.i ]
  %228 = phi i32 [ %252, %for.inc288.i ], [ %226, %lor.end.i ]
  %k.31018.i = phi i32 [ %inc289.i, %for.inc288.i ], [ 0, %lor.end.i ]
  %229 = load i32* %bBHAM351, align 4, !tbaa !0
  %tobool142.i = icmp eq i32 %229, 0
  %tobool147.i = icmp ne i32 %227, 0
  br i1 %tobool142.i, label %if.else.i841, label %if.then143.i

if.then143.i:                                     ; preds = %for.body141.i
  br i1 %tobool147.i, label %for.inc288.i, label %lor.lhs.false148.i

lor.lhs.false148.i:                               ; preds = %if.then143.i
  %mul150.i = mul nsw i32 %228, %conv129.i
  %add151.i = add nsw i32 %mul150.i, %k.31018.i
  %mul152.i = mul nsw i32 %add151.i, 3
  %add153.i = add nsw i32 %mul152.i, 1
  %idxprom154.i = sext i32 %add153.i to i64
  %230 = load float** %nbfp, align 8, !tbaa !4
  %arrayidx155.i = getelementptr inbounds float* %230, i64 %idxprom154.i
  %231 = load float* %arrayidx155.i, align 4, !tbaa !3
  %fabsf976.i = call float @fabsf(float %231) #5
  %232 = fpext float %fabsf976.i to double
  %cmp158.i = fcmp ogt double %232, 1.200000e-38
  br i1 %cmp158.i, label %for.inc288.i, label %lor.lhs.false160.i

lor.lhs.false160.i:                               ; preds = %lor.lhs.false148.i
  %add165.i = add nsw i32 %mul152.i, 2
  %idxprom166.i = sext i32 %add165.i to i64
  %arrayidx168.i = getelementptr inbounds float* %230, i64 %idxprom166.i
  %233 = load float* %arrayidx168.i, align 4, !tbaa !3
  %fabsf977.i = call float @fabsf(float %233) #5
  %234 = fpext float %fabsf977.i to double
  %cmp171.i = fcmp ogt double %234, 1.200000e-38
  br i1 %cmp171.i, label %for.inc288.i, label %lor.lhs.false173.i

lor.lhs.false173.i:                               ; preds = %lor.lhs.false160.i
  %idxprom178.i = sext i32 %mul152.i to i64
  %arrayidx180.i = getelementptr inbounds float* %230, i64 %idxprom178.i
  %235 = load float* %arrayidx180.i, align 4, !tbaa !3
  %fabsf978.i = call float @fabsf(float %235) #5
  %236 = fpext float %fabsf978.i to double
  %cmp183.i = fcmp ogt double %236, 1.200000e-38
  br i1 %cmp183.i, label %for.inc288.i, label %lor.lhs.false185.i

lor.lhs.false185.i:                               ; preds = %lor.lhs.false173.i
  %mul187.i = mul nsw i32 %228, %conv134.i
  %add188.i = add nsw i32 %mul187.i, %k.31018.i
  %mul189.i = mul nsw i32 %add188.i, 3
  %add190.i = add nsw i32 %mul189.i, 1
  %idxprom191.i = sext i32 %add190.i to i64
  %arrayidx193.i = getelementptr inbounds float* %230, i64 %idxprom191.i
  %237 = load float* %arrayidx193.i, align 4, !tbaa !3
  %fabsf979.i = call float @fabsf(float %237) #5
  %238 = fpext float %fabsf979.i to double
  %cmp196.i = fcmp ogt double %238, 1.200000e-38
  br i1 %cmp196.i, label %for.inc288.i, label %lor.lhs.false198.i

lor.lhs.false198.i:                               ; preds = %lor.lhs.false185.i
  %add203.i = add nsw i32 %mul189.i, 2
  %idxprom204.i = sext i32 %add203.i to i64
  %arrayidx206.i = getelementptr inbounds float* %230, i64 %idxprom204.i
  %239 = load float* %arrayidx206.i, align 4, !tbaa !3
  %fabsf980.i = call float @fabsf(float %239) #5
  %240 = fpext float %fabsf980.i to double
  %cmp209.i = fcmp ogt double %240, 1.200000e-38
  br i1 %cmp209.i, label %for.inc288.i, label %lor.rhs211.i

lor.rhs211.i:                                     ; preds = %lor.lhs.false198.i
  %idxprom216.i = sext i32 %mul189.i to i64
  %arrayidx218.i = getelementptr inbounds float* %230, i64 %idxprom216.i
  %241 = load float* %arrayidx218.i, align 4, !tbaa !3
  %fabsf981.i = call float @fabsf(float %241) #5
  %242 = fpext float %fabsf981.i to double
  %cmp221.i = fcmp ogt double %242, 1.200000e-38
  br label %for.inc288.i

if.else.i841:                                     ; preds = %for.body141.i
  br i1 %tobool147.i, label %for.inc288.i, label %lor.lhs.false232.i

lor.lhs.false232.i:                               ; preds = %if.else.i841
  %mul234.i = mul nsw i32 %228, %conv129.i
  %add235.i = add nsw i32 %mul234.i, %k.31018.i
  %mul236.i = shl nsw i32 %add235.i, 1
  %idxprom237.i = sext i32 %mul236.i to i64
  %243 = load float** %nbfp, align 8, !tbaa !4
  %arrayidx239.i = getelementptr inbounds float* %243, i64 %idxprom237.i
  %244 = load float* %arrayidx239.i, align 4, !tbaa !3
  %fabsf970.i = call float @fabsf(float %244) #5
  %245 = fpext float %fabsf970.i to double
  %cmp242.i = fcmp ogt double %245, 1.200000e-38
  br i1 %cmp242.i, label %for.inc288.i, label %lor.lhs.false244.i

lor.lhs.false244.i:                               ; preds = %lor.lhs.false232.i
  %add249971.i = or i32 %mul236.i, 1
  %idxprom250.i = sext i32 %add249971.i to i64
  %arrayidx252.i = getelementptr inbounds float* %243, i64 %idxprom250.i
  %246 = load float* %arrayidx252.i, align 4, !tbaa !3
  %fabsf972.i = call float @fabsf(float %246) #5
  %247 = fpext float %fabsf972.i to double
  %cmp255.i = fcmp ogt double %247, 1.200000e-38
  br i1 %cmp255.i, label %for.inc288.i, label %lor.lhs.false257.i

lor.lhs.false257.i:                               ; preds = %lor.lhs.false244.i
  %mul259.i = mul nsw i32 %228, %conv134.i
  %add260.i = add nsw i32 %mul259.i, %k.31018.i
  %mul261.i = shl nsw i32 %add260.i, 1
  %idxprom262.i = sext i32 %mul261.i to i64
  %arrayidx264.i = getelementptr inbounds float* %243, i64 %idxprom262.i
  %248 = load float* %arrayidx264.i, align 4, !tbaa !3
  %fabsf973.i = call float @fabsf(float %248) #5
  %249 = fpext float %fabsf973.i to double
  %cmp267.i = fcmp ogt double %249, 1.200000e-38
  br i1 %cmp267.i, label %for.inc288.i, label %lor.rhs269.i

lor.rhs269.i:                                     ; preds = %lor.lhs.false257.i
  %add274974.i = or i32 %mul261.i, 1
  %idxprom275.i = sext i32 %add274974.i to i64
  %arrayidx277.i = getelementptr inbounds float* %243, i64 %idxprom275.i
  %250 = load float* %arrayidx277.i, align 4, !tbaa !3
  %fabsf975.i = call float @fabsf(float %250) #5
  %251 = fpext float %fabsf975.i to double
  %cmp280.i = fcmp ogt double %251, 1.200000e-38
  br label %for.inc288.i

for.inc288.i:                                     ; preds = %lor.rhs269.i, %lor.lhs.false257.i, %lor.lhs.false244.i, %lor.lhs.false232.i, %if.else.i841, %lor.rhs211.i, %lor.lhs.false198.i, %lor.lhs.false185.i, %lor.lhs.false173.i, %lor.lhs.false160.i, %lor.lhs.false148.i, %if.then143.i
  %.sink.i = phi i1 [ true, %lor.lhs.false257.i ], [ true, %lor.lhs.false244.i ], [ true, %lor.lhs.false232.i ], [ true, %if.else.i841 ], [ %cmp280.i, %lor.rhs269.i ], [ true, %lor.lhs.false198.i ], [ true, %lor.lhs.false185.i ], [ true, %lor.lhs.false173.i ], [ true, %lor.lhs.false160.i ], [ true, %lor.lhs.false148.i ], [ true, %if.then143.i ], [ %cmp221.i, %lor.rhs211.i ]
  %lor.ext224.i = zext i1 %.sink.i to i32
  store i32 %lor.ext224.i, i32* %arrayidx137.i, align 4, !tbaa !0
  %inc289.i = add nsw i32 %k.31018.i, 1
  %252 = load i32* %ntype.i838, align 4, !tbaa !0
  %cmp139.i = icmp slt i32 %inc289.i, %252
  br i1 %cmp139.i, label %for.body141.i, label %for.inc291.i

for.inc291.i:                                     ; preds = %for.inc288.i, %lor.end.i
  %indvars.iv.next1091.i = add i64 %indvars.iv1090.i, 1
  %253 = trunc i64 %indvars.iv.next1091.i to i32
  %cmp103.i = icmp slt i32 %253, %183
  br i1 %cmp103.i, label %for.body104.i, label %for.end293.i

for.end293.i:                                     ; preds = %for.inc291.i, %if.then99.for.end293_crit_edge.i
  %idxprom294.pre-phi.i = phi i64 [ %idxprom294.pre.i, %if.then99.for.end293_crit_edge.i ], [ %216, %for.inc291.i ]
  %arrayidx296.i = getelementptr inbounds i32* %214, i64 %idxprom294.pre-phi.i
  %254 = load i32* %arrayidx296.i, align 4, !tbaa !0
  %cmp297.i = icmp eq i32 %sub.i, 3
  br i1 %cmp297.i, label %land.lhs.true299.i, label %for.cond336.preheader.i

for.cond336.preheader.i:                          ; preds = %land.lhs.true311.i, %land.lhs.true308.i, %land.lhs.true305.i, %land.lhs.true302.i, %for.end293.i
  %cmp3371021.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp3371021.i, label %land.rhs339.i, label %for.cond355.loopexit.i

land.lhs.true299.i:                               ; preds = %for.end293.i
  %255 = load i32* %212, align 4, !tbaa !0
  %tobool301.i = icmp eq i32 %255, 0
  br i1 %tobool301.i, label %land.rhs339.i, label %land.lhs.true302.i

land.lhs.true302.i:                               ; preds = %land.lhs.true299.i
  %256 = load i32* %213, align 4, !tbaa !0
  %tobool304.i = icmp eq i32 %256, 0
  br i1 %tobool304.i, label %for.cond336.preheader.i, label %land.lhs.true305.i

land.lhs.true305.i:                               ; preds = %land.lhs.true302.i
  %arrayidx306.i = getelementptr inbounds i8* %call101.i, i64 4
  %257 = bitcast i8* %arrayidx306.i to i32*
  %258 = load i32* %257, align 4, !tbaa !0
  %tobool307.i = icmp eq i32 %258, 0
  br i1 %tobool307.i, label %land.lhs.true308.i, label %for.cond336.preheader.i

land.lhs.true308.i:                               ; preds = %land.lhs.true305.i
  %arrayidx309.i = getelementptr inbounds i8* %call101.i, i64 8
  %259 = bitcast i8* %arrayidx309.i to i32*
  %260 = load i32* %259, align 4, !tbaa !0
  %tobool310.i = icmp eq i32 %260, 0
  br i1 %tobool310.i, label %land.lhs.true311.i, label %for.cond336.preheader.i

land.lhs.true311.i:                               ; preds = %land.lhs.true308.i
  %add312.i = add nsw i32 %254, 1
  %idxprom313.i = sext i32 %add312.i to i64
  %261 = load %struct.t_atom** %atom315.i, align 8, !tbaa !4
  %q317.i = getelementptr inbounds %struct.t_atom* %261, i64 %idxprom313.i, i32 1
  %262 = load float* %q317.i, align 4, !tbaa !3
  %add318.i = add nsw i32 %254, 2
  %idxprom319.i = sext i32 %add318.i to i64
  %q323.i = getelementptr inbounds %struct.t_atom* %261, i64 %idxprom319.i, i32 1
  %263 = load float* %q323.i, align 4, !tbaa !3
  %sub324.i = fsub float %262, %263
  %fabsf.i = call float @fabsf(float %sub324.i) #5
  %264 = fpext float %fabsf.i to double
  %cmp327.i = fcmp olt double %264, 1.200000e-38
  br i1 %cmp327.i, label %if.then329.i, label %for.cond336.preheader.i

if.then329.i:                                     ; preds = %land.lhs.true311.i
  %idxprom330.i = sext i32 %254 to i64
  %arrayidx331.i = getelementptr inbounds i32* %call8.i, i64 %idxprom330.i
  %265 = load i32* %arrayidx331.i, align 4, !tbaa !0
  %idxprom332.i = sext i32 %265 to i64
  %266 = load i32** %solvent_type.i, align 8, !tbaa !4
  %arrayidx334.i = getelementptr inbounds i32* %266, i64 %idxprom332.i
  store i32 2, i32* %arrayidx334.i, align 4, !tbaa !0
  br label %if.end460.i

for.cond336.i:                                    ; preds = %land.rhs343.i
  %267 = trunc i64 %indvars.iv.next1094.i to i32
  %cmp337.i = icmp slt i32 %267, %sub.i
  br i1 %cmp337.i, label %land.rhs339.i, label %for.cond355.loopexit.i

land.rhs339.i:                                    ; preds = %for.cond336.i, %land.lhs.true299.i, %for.cond336.preheader.i
  %indvars.iv1093.i = phi i64 [ 0, %for.cond336.preheader.i ], [ 0, %land.lhs.true299.i ], [ %indvars.iv.next1094.i, %for.cond336.i ]
  %k.41022.i = phi i32 [ 0, %for.cond336.preheader.i ], [ 0, %land.lhs.true299.i ], [ %inc353.i, %for.cond336.i ]
  %arrayidx341.i = getelementptr inbounds i32* %213, i64 %indvars.iv1093.i
  %268 = load i32* %arrayidx341.i, align 4, !tbaa !0
  %tobool342.i = icmp eq i32 %268, 0
  br i1 %tobool342.i, label %for.cond355.loopexit.i, label %land.rhs343.i

land.rhs343.i:                                    ; preds = %land.rhs339.i
  %arrayidx345.i = getelementptr inbounds i32* %212, i64 %indvars.iv1093.i
  %269 = load i32* %arrayidx345.i, align 4, !tbaa !0
  %tobool346.i = icmp eq i32 %269, 0
  %indvars.iv.next1094.i = add i64 %indvars.iv1093.i, 1
  %inc353.i = add nsw i32 %k.41022.i, 1
  br i1 %tobool346.i, label %for.cond355.loopexit.i, label %for.cond336.i

for.cond355.loopexit.i:                           ; preds = %land.rhs343.i, %land.rhs339.i, %for.cond336.i, %for.cond336.preheader.i
  %k.4.lcssa.i = phi i32 [ 0, %for.cond336.preheader.i ], [ %k.41022.i, %land.rhs343.i ], [ %k.41022.i, %land.rhs339.i ], [ %inc353.i, %for.cond336.i ]
  %cmp3561024.i = icmp slt i32 %k.4.lcssa.i, %sub.i
  br i1 %cmp3561024.i, label %land.rhs358.lr.ph.i, label %for.cond374.loopexit.i

land.rhs358.lr.ph.i:                              ; preds = %for.cond355.loopexit.i
  %270 = sext i32 %k.4.lcssa.i to i64
  br label %land.rhs358.i

for.cond355.i:                                    ; preds = %land.rhs362.i
  %271 = trunc i64 %indvars.iv.next1097.i to i32
  %cmp356.i = icmp slt i32 %271, %sub.i
  br i1 %cmp356.i, label %land.rhs358.i, label %for.cond374.loopexit.i

land.rhs358.i:                                    ; preds = %for.cond355.i, %land.rhs358.lr.ph.i
  %indvars.iv1096.i = phi i64 [ %270, %land.rhs358.lr.ph.i ], [ %indvars.iv.next1097.i, %for.cond355.i ]
  %k.51025.i = phi i32 [ %k.4.lcssa.i, %land.rhs358.lr.ph.i ], [ %inc372.i, %for.cond355.i ]
  %arrayidx360.i = getelementptr inbounds i32* %213, i64 %indvars.iv1096.i
  %272 = load i32* %arrayidx360.i, align 4, !tbaa !0
  %tobool361.i = icmp eq i32 %272, 0
  br i1 %tobool361.i, label %land.rhs362.i, label %for.cond374.loopexit.i

land.rhs362.i:                                    ; preds = %land.rhs358.i
  %arrayidx364.i = getelementptr inbounds i32* %212, i64 %indvars.iv1096.i
  %273 = load i32* %arrayidx364.i, align 4, !tbaa !0
  %tobool365.i = icmp eq i32 %273, 0
  %indvars.iv.next1097.i = add i64 %indvars.iv1096.i, 1
  %inc372.i = add nsw i32 %k.51025.i, 1
  br i1 %tobool365.i, label %for.cond374.loopexit.i, label %for.cond355.i

for.cond374.loopexit.i:                           ; preds = %land.rhs362.i, %land.rhs358.i, %for.cond355.i, %for.cond355.loopexit.i
  %k.5.lcssa.i = phi i32 [ %k.4.lcssa.i, %for.cond355.loopexit.i ], [ %k.51025.i, %land.rhs362.i ], [ %k.51025.i, %land.rhs358.i ], [ %inc372.i, %for.cond355.i ]
  %cmp3751027.i = icmp slt i32 %k.5.lcssa.i, %sub.i
  br i1 %cmp3751027.i, label %land.rhs377.lr.ph.i, label %for.cond393.loopexit.i

land.rhs377.lr.ph.i:                              ; preds = %for.cond374.loopexit.i
  %274 = sext i32 %k.5.lcssa.i to i64
  br label %land.rhs377.i

for.cond374.i:                                    ; preds = %land.rhs381.i
  %275 = trunc i64 %indvars.iv.next1100.i to i32
  %cmp375.i = icmp slt i32 %275, %sub.i
  br i1 %cmp375.i, label %land.rhs377.i, label %for.cond393.loopexit.i

land.rhs377.i:                                    ; preds = %for.cond374.i, %land.rhs377.lr.ph.i
  %indvars.iv1099.i = phi i64 [ %274, %land.rhs377.lr.ph.i ], [ %indvars.iv.next1100.i, %for.cond374.i ]
  %k.61028.i = phi i32 [ %k.5.lcssa.i, %land.rhs377.lr.ph.i ], [ %inc391.i, %for.cond374.i ]
  %arrayidx379.i = getelementptr inbounds i32* %213, i64 %indvars.iv1099.i
  %276 = load i32* %arrayidx379.i, align 4, !tbaa !0
  %tobool380.i = icmp eq i32 %276, 0
  br i1 %tobool380.i, label %for.cond393.loopexit.i, label %land.rhs381.i

land.rhs381.i:                                    ; preds = %land.rhs377.i
  %arrayidx383.i = getelementptr inbounds i32* %212, i64 %indvars.iv1099.i
  %277 = load i32* %arrayidx383.i, align 4, !tbaa !0
  %lnot.i = icmp eq i32 %277, 0
  %indvars.iv.next1100.i = add i64 %indvars.iv1099.i, 1
  %inc391.i = add nsw i32 %k.61028.i, 1
  br i1 %lnot.i, label %for.cond374.i, label %for.cond393.loopexit.i

for.cond393.loopexit.i:                           ; preds = %land.rhs381.i, %land.rhs377.i, %for.cond374.i, %for.cond374.loopexit.i
  %k.6.lcssa.i = phi i32 [ %k.5.lcssa.i, %for.cond374.loopexit.i ], [ %k.61028.i, %land.rhs381.i ], [ %k.61028.i, %land.rhs377.i ], [ %inc391.i, %for.cond374.i ]
  %cmp3941030.i = icmp slt i32 %k.6.lcssa.i, %sub.i
  br i1 %cmp3941030.i, label %for.body396.lr.ph.i, label %if.end434.i

for.body396.lr.ph.i:                              ; preds = %for.cond393.loopexit.i
  %278 = sext i32 %k.6.lcssa.i to i64
  br label %for.body396.i

for.body396.i:                                    ; preds = %lor.end408.i, %for.body396.lr.ph.i
  %indvars.iv1102.i = phi i64 [ %278, %for.body396.lr.ph.i ], [ %indvars.iv.next1103.i, %lor.end408.i ]
  %bOrder.01032.i = phi i1 [ false, %for.body396.lr.ph.i ], [ %281, %lor.end408.i ]
  br i1 %bOrder.01032.i, label %lor.end408.i, label %lor.rhs398.i

lor.rhs398.i:                                     ; preds = %for.body396.i
  %arrayidx400.i = getelementptr inbounds i32* %213, i64 %indvars.iv1102.i
  %279 = load i32* %arrayidx400.i, align 4, !tbaa !0
  %tobool401.i = icmp eq i32 %279, 0
  br i1 %tobool401.i, label %lor.rhs402.i, label %lor.end408.i

lor.rhs402.i:                                     ; preds = %lor.rhs398.i
  %arrayidx404.i = getelementptr inbounds i32* %212, i64 %indvars.iv1102.i
  %280 = load i32* %arrayidx404.i, align 4, !tbaa !0
  %tobool405.i = icmp ne i32 %280, 0
  br label %lor.end408.i

lor.end408.i:                                     ; preds = %lor.rhs402.i, %lor.rhs398.i, %for.body396.i
  %281 = phi i1 [ true, %for.body396.i ], [ true, %lor.rhs398.i ], [ %tobool405.i, %lor.rhs402.i ]
  %indvars.iv.next1103.i = add i64 %indvars.iv1102.i, 1
  %282 = trunc i64 %indvars.iv.next1103.i to i32
  %cmp394.i = icmp slt i32 %282, %sub.i
  br i1 %cmp394.i, label %for.body396.i, label %for.end412.i

for.end412.i:                                     ; preds = %lor.end408.i
  br i1 %281, label %if.then414.i, label %if.end434.i

if.then414.i:                                     ; preds = %for.end412.i
  %cmp415.i = icmp eq i32 %k.4.lcssa.i, %sub.i
  br i1 %cmp415.i, label %if.end434.i, label %if.then417.i

if.then417.i:                                     ; preds = %if.then414.i
  %inc418.i = add nsw i32 %warncount.0.ph1045.i, 1
  %cmp419.not.i = icmp sgt i32 %warncount.0.ph1045.i, 9
  %brmerge.i = or i1 %cmp419.not.i, %tobool.not.i
  br i1 %brmerge.i, label %if.end425.i, label %if.then423.i

if.then423.i:                                     ; preds = %if.then417.i
  %call424.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([68 x i8]* @.str63, i64 0, i64 0), i32 %i.01040.i) #4
  br label %if.end425.i

if.end425.i:                                      ; preds = %if.then423.i, %if.then417.i
  %cmp426.not.i = icmp ne i32 %inc418.i, 10
  %brmerge986.i = or i1 %cmp426.not.i, %tobool.not.i
  br i1 %brmerge986.i, label %if.end434.i, label %if.then430.i

if.then430.i:                                     ; preds = %if.end425.i
  %283 = call i64 @fwrite(i8* getelementptr inbounds ([59 x i8]* @.str64, i64 0, i64 0), i64 58, i64 1, %struct._IO_FILE* %fp) #3
  br label %if.end434.i

if.end434.i:                                      ; preds = %if.then430.i, %if.end425.i, %if.then414.i, %for.end412.i, %for.cond393.loopexit.i
  %nl_m.0.i = phi i32 [ %k.6.lcssa.i, %for.end412.i ], [ %sub.i, %if.end425.i ], [ %sub.i, %if.then414.i ], [ %sub.i, %if.then430.i ], [ %k.6.lcssa.i, %for.cond393.loopexit.i ]
  %nl_n.0.i = phi i32 [ %k.4.lcssa.i, %for.end412.i ], [ %sub.i, %if.end425.i ], [ %sub.i, %if.then414.i ], [ %sub.i, %if.then430.i ], [ %k.4.lcssa.i, %for.cond393.loopexit.i ]
  %nl_o.0.i = phi i32 [ %k.5.lcssa.i, %for.end412.i ], [ %sub.i, %if.end425.i ], [ %sub.i, %if.then414.i ], [ %sub.i, %if.then430.i ], [ %k.5.lcssa.i, %for.cond393.loopexit.i ]
  %warncount.2.i = phi i32 [ %warncount.0.ph1045.i, %for.end412.i ], [ %inc418.i, %if.end425.i ], [ %warncount.0.ph1045.i, %if.then414.i ], [ 10, %if.then430.i ], [ %warncount.0.ph1045.i, %for.cond393.loopexit.i ]
  %idxprom435.i = sext i32 %254 to i64
  %arrayidx436.i = getelementptr inbounds i32* %call8.i, i64 %idxprom435.i
  %284 = load i32* %arrayidx436.i, align 4, !tbaa !0
  %mul437.i = mul nsw i32 %284, 3
  %idxprom438.i = sext i32 %mul437.i to i64
  %285 = load i32** %mno_index, align 8, !tbaa !4
  %arrayidx440.i = getelementptr inbounds i32* %285, i64 %idxprom438.i
  store i32 %nl_m.0.i, i32* %arrayidx440.i, align 4, !tbaa !0
  %286 = load i32* %arrayidx436.i, align 4, !tbaa !0
  %mul443.i = mul nsw i32 %286, 3
  %add444.i = add nsw i32 %mul443.i, 1
  %idxprom445.i = sext i32 %add444.i to i64
  %arrayidx447.i = getelementptr inbounds i32* %285, i64 %idxprom445.i
  store i32 %nl_n.0.i, i32* %arrayidx447.i, align 4, !tbaa !0
  %287 = load i32* %arrayidx436.i, align 4, !tbaa !0
  %mul450.i = mul nsw i32 %287, 3
  %add451.i = add nsw i32 %mul450.i, 2
  %idxprom452.i = sext i32 %add451.i to i64
  %arrayidx454.i = getelementptr inbounds i32* %285, i64 %idxprom452.i
  store i32 %nl_o.0.i, i32* %arrayidx454.i, align 4, !tbaa !0
  %288 = load i32* %arrayidx436.i, align 4, !tbaa !0
  %idxprom457.i = sext i32 %288 to i64
  %289 = load i32** %solvent_type.i, align 8, !tbaa !4
  %arrayidx459.i = getelementptr inbounds i32* %289, i64 %idxprom457.i
  store i32 1, i32* %arrayidx459.i, align 4, !tbaa !0
  br label %if.end460.i

if.end460.i:                                      ; preds = %if.end434.i, %if.then329.i
  %290 = phi i32* [ %289, %if.end434.i ], [ %266, %if.then329.i ]
  %warncount.3.i = phi i32 [ %warncount.2.i, %if.end434.i ], [ %warncount.0.ph1045.i, %if.then329.i ]
  br i1 %cmp451012.i, label %for.body464.lr.ph.i, label %for.end483.i

for.body464.lr.ph.i:                              ; preds = %if.end460.i
  %291 = load i32** %a507.i, align 8, !tbaa !4
  %292 = load i32** %bPerturbed.i, align 8, !tbaa !4
  %arrayidx474.i = getelementptr inbounds i32* %291, i64 %idxprom294.pre-phi.i
  br label %for.body464.i

for.body464.i:                                    ; preds = %for.inc481.i, %for.body464.lr.ph.i
  %indvars.iv1104.i = phi i64 [ %idxprom294.pre-phi.i, %for.body464.lr.ph.i ], [ %indvars.iv.next1105.i, %for.inc481.i ]
  %arrayidx467.i = getelementptr inbounds i32* %291, i64 %indvars.iv1104.i
  %293 = load i32* %arrayidx467.i, align 4, !tbaa !0
  %idxprom468.i = sext i32 %293 to i64
  %arrayidx469.i = getelementptr inbounds i32* %292, i64 %idxprom468.i
  %294 = load i32* %arrayidx469.i, align 4, !tbaa !0
  %tobool470.i = icmp eq i32 %294, 0
  br i1 %tobool470.i, label %for.inc481.i, label %if.then471.i

if.then471.i:                                     ; preds = %for.body464.i
  %295 = load i32* %arrayidx474.i, align 4, !tbaa !0
  %idxprom475.i = sext i32 %295 to i64
  %arrayidx476.i = getelementptr inbounds i32* %call8.i, i64 %idxprom475.i
  %296 = load i32* %arrayidx476.i, align 4, !tbaa !0
  %idxprom477.i = sext i32 %296 to i64
  %arrayidx479.i = getelementptr inbounds i32* %290, i64 %idxprom477.i
  store i32 0, i32* %arrayidx479.i, align 4, !tbaa !0
  br label %for.inc481.i

for.inc481.i:                                     ; preds = %if.then471.i, %for.body464.i
  %indvars.iv.next1105.i = add i64 %indvars.iv1104.i, 1
  %297 = trunc i64 %indvars.iv.next1105.i to i32
  %cmp462.i = icmp slt i32 %297, %183
  br i1 %cmp462.i, label %for.body464.i, label %for.end483.i

for.end483.i:                                     ; preds = %for.inc481.i, %if.end460.i
  call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 281, i8* %call101.i) #4
  call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 282, i8* %call100.i) #4
  br label %if.end493.i

if.else484.i:                                     ; preds = %for.end97.i
  %298 = load i32** %a507.i, align 8, !tbaa !4
  %arrayidx487.i = getelementptr inbounds i32* %298, i64 %198
  %299 = load i32* %arrayidx487.i, align 4, !tbaa !0
  %idxprom488.i = sext i32 %299 to i64
  %arrayidx489.i = getelementptr inbounds i32* %call8.i, i64 %idxprom488.i
  %300 = load i32* %arrayidx489.i, align 4, !tbaa !0
  %idxprom490.i = sext i32 %300 to i64
  %301 = load i32** %solvent_type.i, align 8, !tbaa !4
  %arrayidx492.i = getelementptr inbounds i32* %301, i64 %idxprom490.i
  store i32 0, i32* %arrayidx492.i, align 4, !tbaa !0
  br label %if.end493.i

if.end493.i:                                      ; preds = %if.else484.i, %for.end483.i
  %warncount.4.i = phi i32 [ %warncount.3.i, %for.end483.i ], [ %warncount.0.ph1045.i, %if.else484.i ]
  call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 290, i8* %call43.i) #4
  %302 = load i32* %nr11.i, align 4, !tbaa !0
  %cmp1039.i = icmp slt i32 %add18.i839, %302
  br i1 %cmp1039.i, label %for.body.lr.ph.i, label %for.end520.i

for.body.lr.ph.i:                                 ; preds = %if.end493.i, %for.body.lr.ph.lr.ph.i
  %303 = phi i32 [ %177, %for.body.lr.ph.lr.ph.i ], [ %302, %if.end493.i ]
  %i.0.ph1046.i = phi i32 [ 0, %for.body.lr.ph.lr.ph.i ], [ %add18.i839, %if.end493.i ]
  %warncount.0.ph1045.i = phi i32 [ 0, %for.body.lr.ph.lr.ph.i ], [ %warncount.4.i, %if.end493.i ]
  %304 = load i32** %index.i, align 8, !tbaa !4
  %305 = sext i32 %i.0.ph1046.i to i64
  %arrayidx17.phi.trans.insert.i = getelementptr inbounds i32* %304, i64 %305
  %.pre1113.i = load i32* %arrayidx17.phi.trans.insert.i, align 4, !tbaa !0
  br label %for.body.i840

if.else494.i:                                     ; preds = %for.end.i
  %cmp5031000.i = icmp slt i32 %181, %183
  br i1 %cmp5031000.i, label %for.body505.lr.ph.i, label %for.cond.loopexit.i

for.body505.lr.ph.i:                              ; preds = %if.else494.i
  %306 = load i32** %a507.i, align 8, !tbaa !4
  %307 = load i32** %solvent_type.i, align 8, !tbaa !4
  %308 = sext i32 %181 to i64
  br label %for.body505.i

for.body505.i:                                    ; preds = %for.body505.i, %for.body505.lr.ph.i
  %indvars.iv1066.i = phi i64 [ %308, %for.body505.lr.ph.i ], [ %indvars.iv.next1067.i, %for.body505.i ]
  %arrayidx508.i = getelementptr inbounds i32* %306, i64 %indvars.iv1066.i
  %309 = load i32* %arrayidx508.i, align 4, !tbaa !0
  %idxprom509.i = sext i32 %309 to i64
  %arrayidx510.i = getelementptr inbounds i32* %call8.i, i64 %idxprom509.i
  %310 = load i32* %arrayidx510.i, align 4, !tbaa !0
  %idxprom511.i = sext i32 %310 to i64
  %arrayidx513.i = getelementptr inbounds i32* %307, i64 %idxprom511.i
  store i32 0, i32* %arrayidx513.i, align 4, !tbaa !0
  %indvars.iv.next1067.i = add i64 %indvars.iv1066.i, 1
  %311 = load i32* %arrayidx21.i, align 4, !tbaa !0
  %312 = trunc i64 %indvars.iv.next1067.i to i32
  %cmp503.i = icmp slt i32 %312, %311
  br i1 %cmp503.i, label %for.body505.i, label %for.cond498.for.cond.loopexit_crit_edge.i

for.end520.i:                                     ; preds = %if.end493.i, %for.cond.loopexit.i, %for.cond.preheader.i
  %313 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %tobool521.i = icmp eq %struct._IO_FILE* %313, null
  br i1 %tobool521.i, label %if.end546.i, label %for.cond523.preheader.i

for.cond523.preheader.i:                          ; preds = %for.end520.i
  %314 = load i32* %nr.i834, align 4, !tbaa !0
  %cmp525992.i = icmp sgt i32 %314, 0
  br i1 %cmp525992.i, label %for.body527.i, label %if.end546.i

for.body527.i:                                    ; preds = %for.cond523.preheader.i, %for.body527.for.body527_crit_edge.i
  %315 = phi %struct._IO_FILE* [ %.pre1111.i, %for.body527.for.body527_crit_edge.i ], [ %313, %for.cond523.preheader.i ]
  %indvars.iv1060.i = phi i64 [ %indvars.iv.next1061.i, %for.body527.for.body527_crit_edge.i ], [ 0, %for.cond523.preheader.i ]
  %316 = trunc i64 %indvars.iv1060.i to i32
  %mul528.i = mul nsw i32 %316, 3
  %idxprom529.i = sext i32 %mul528.i to i64
  %317 = load i32** %mno_index, align 8, !tbaa !4
  %arrayidx531.i = getelementptr inbounds i32* %317, i64 %idxprom529.i
  %318 = load i32* %arrayidx531.i, align 4, !tbaa !0
  %add533.i = add nsw i32 %mul528.i, 1
  %idxprom534.i = sext i32 %add533.i to i64
  %arrayidx536.i = getelementptr inbounds i32* %317, i64 %idxprom534.i
  %319 = load i32* %arrayidx536.i, align 4, !tbaa !0
  %add538.i = add nsw i32 %mul528.i, 2
  %idxprom539.i = sext i32 %add538.i to i64
  %arrayidx541.i = getelementptr inbounds i32* %317, i64 %idxprom539.i
  %320 = load i32* %arrayidx541.i, align 4, !tbaa !0
  %call542.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %315, i8* getelementptr inbounds ([42 x i8]* @.str65, i64 0, i64 0), i32 %316, i32 %318, i32 %319, i32 %320) #4
  %indvars.iv.next1061.i = add i64 %indvars.iv1060.i, 1
  %321 = load i32* %nr.i834, align 4, !tbaa !0
  %322 = trunc i64 %indvars.iv.next1061.i to i32
  %cmp525.i = icmp slt i32 %322, %321
  br i1 %cmp525.i, label %for.body527.for.body527_crit_edge.i, label %if.end546.i

for.body527.for.body527_crit_edge.i:              ; preds = %for.body527.i
  %.pre1111.i = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  br label %for.body527.i

if.end546.i:                                      ; preds = %for.body527.i, %for.cond523.preheader.i, %for.end520.i
  %nMNOMol.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 39
  %nWatMol.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 41
  %scevgep.i = getelementptr %struct.t_forcerec* %fr, i64 0, i32 40, i64 0
  %323 = bitcast i32* %nMNOMol.i to i8*
  call void @llvm.memset.p0i8.i64(i8* %323, i8 0, i64 20, i32 4, i1 false) #3
  %324 = load i32* %nr11.i, align 4, !tbaa !0
  %cmp558989.i = icmp sgt i32 %324, 0
  br i1 %cmp558989.i, label %for.body560.lr.ph.i, label %if.end646.i

for.body560.lr.ph.i:                              ; preds = %if.end546.i
  %index562.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 2
  %a565.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 4
  %nodeid.i = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %.pre1106.i = load i32** %index562.i, align 8, !tbaa !4
  %.pre1107.i = load i32** %a565.i, align 8, !tbaa !4
  br label %for.body560.i

for.body560.i:                                    ; preds = %for.inc627.i, %for.body560.lr.ph.i
  %indvars.iv1053.i = phi i64 [ 0, %for.body560.lr.ph.i ], [ %indvars.iv.next1054.i, %for.inc627.i ]
  %arrayidx563.i = getelementptr inbounds i32* %.pre1106.i, i64 %indvars.iv1053.i
  %325 = load i32* %arrayidx563.i, align 4, !tbaa !0
  %idxprom564.i = sext i32 %325 to i64
  %arrayidx566.i = getelementptr inbounds i32* %.pre1107.i, i64 %idxprom564.i
  %326 = load i32* %arrayidx566.i, align 4, !tbaa !0
  %327 = load i32* %nodeid.i, align 4, !tbaa !0
  %idxprom567.i = sext i32 %327 to i64
  %arrayidx569.i = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom567.i
  %328 = load i32* %arrayidx569.i, align 4, !tbaa !0
  %cmp570.i = icmp slt i32 %326, %328
  br i1 %cmp570.i, label %for.inc627.i, label %land.lhs.true572.i

land.lhs.true572.i:                               ; preds = %for.body560.i
  %arrayidx579.i = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom567.i
  %329 = load i32* %arrayidx579.i, align 4, !tbaa !0
  %add580.i = add nsw i32 %329, %328
  %cmp581.i = icmp slt i32 %326, %add580.i
  br i1 %cmp581.i, label %if.then583.i, label %for.inc627.i

if.then583.i:                                     ; preds = %land.lhs.true572.i
  %idxprom584.i = sext i32 %326 to i64
  %arrayidx585.i = getelementptr inbounds i32* %call8.i, i64 %idxprom584.i
  %330 = load i32* %arrayidx585.i, align 4, !tbaa !0
  %idxprom586.i = sext i32 %330 to i64
  %331 = load i32** %solvent_type.i, align 8, !tbaa !4
  %arrayidx588.i = getelementptr inbounds i32* %331, i64 %idxprom586.i
  %332 = load i32* %arrayidx588.i, align 4, !tbaa !0
  switch i32 %332, label %for.inc627.i [
    i32 1, label %if.then591.i
    i32 2, label %if.then621.i
  ]

if.then591.i:                                     ; preds = %if.then583.i
  %333 = load i32* %nMNOMol.i, align 4, !tbaa !0
  %inc593.i = add nsw i32 %333, 1
  store i32 %inc593.i, i32* %nMNOMol.i, align 4, !tbaa !0
  %334 = load i32* %arrayidx585.i, align 4, !tbaa !0
  %mul600.i = mul nsw i32 %334, 3
  %335 = sext i32 %mul600.i to i64
  br label %for.body597.i

for.body597.i:                                    ; preds = %for.body597.i, %if.then591.i
  %indvars.iv1048.i = phi i64 [ 0, %if.then591.i ], [ %indvars.iv.next1049.i, %for.body597.i ]
  %336 = add nsw i64 %indvars.iv1048.i, %335
  %337 = load i32** %mno_index, align 8, !tbaa !4
  %arrayidx604.i = getelementptr inbounds i32* %337, i64 %336
  %338 = load i32* %arrayidx604.i, align 4, !tbaa !0
  %conv605.i = sitofp i32 %338 to float
  %arrayidx608.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 40, i64 %indvars.iv1048.i
  %339 = load float* %arrayidx608.i, align 4, !tbaa !3
  %add609.i = fadd float %339, %conv605.i
  store float %add609.i, float* %arrayidx608.i, align 4, !tbaa !3
  %indvars.iv.next1049.i = add i64 %indvars.iv1048.i, 1
  %lftr.wideiv881 = trunc i64 %indvars.iv.next1049.i to i32
  %exitcond882 = icmp eq i32 %lftr.wideiv881, 3
  br i1 %exitcond882, label %for.inc627.i, label %for.body597.i

if.then621.i:                                     ; preds = %if.then583.i
  %340 = load i32* %nWatMol.i, align 4, !tbaa !0
  %inc623.i = add nsw i32 %340, 1
  store i32 %inc623.i, i32* %nWatMol.i, align 4, !tbaa !0
  br label %for.inc627.i

for.inc627.i:                                     ; preds = %for.body597.i, %if.then583.i, %land.lhs.true572.i, %for.body560.i, %if.then621.i
  %indvars.iv.next1054.i = add i64 %indvars.iv1053.i, 1
  %341 = load i32* %nr11.i, align 4, !tbaa !0
  %342 = trunc i64 %indvars.iv.next1054.i to i32
  %cmp558.i = icmp slt i32 %342, %341
  br i1 %cmp558.i, label %for.body560.i, label %for.end629.i

for.end629.i:                                     ; preds = %for.inc627.i
  %.pre.i = load i32* %nMNOMol.i, align 4, !tbaa !0
  %cmp631.i = icmp sgt i32 %.pre.i, 0
  br i1 %cmp631.i, label %for.body637.i.preheader, label %if.end646.i

for.body637.i.preheader:                          ; preds = %for.end629.i
  %conv639.i847 = sitofp i32 %.pre.i to float
  %343 = load float* %scevgep.i, align 4, !tbaa !3
  %div.i849 = fdiv float %343, %conv639.i847
  store float %div.i849, float* %scevgep.i, align 4, !tbaa !3
  br label %for.body637.for.body637_crit_edge.i

for.body637.for.body637_crit_edge.i:              ; preds = %for.body637.for.body637_crit_edge.i.for.body637.for.body637_crit_edge.i_crit_edge, %for.body637.i.preheader
  %.pre1110.i = phi i32 [ %.pre.i, %for.body637.i.preheader ], [ %.pre1110.i.pre, %for.body637.for.body637_crit_edge.i.for.body637.for.body637_crit_edge.i_crit_edge ]
  %indvars.iv.next.i843850 = phi i64 [ 1, %for.body637.i.preheader ], [ %indvars.iv.next.i843, %for.body637.for.body637_crit_edge.i.for.body637.for.body637_crit_edge.i_crit_edge ]
  %conv639.i = sitofp i32 %.pre1110.i to float
  %arrayidx642.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 40, i64 %indvars.iv.next.i843850
  %344 = load float* %arrayidx642.i, align 4, !tbaa !3
  %div.i = fdiv float %344, %conv639.i
  store float %div.i, float* %arrayidx642.i, align 4, !tbaa !3
  %indvars.iv.next.i843 = add i64 %indvars.iv.next.i843850, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i843 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %if.end646.i, label %for.body637.for.body637_crit_edge.i.for.body637.for.body637_crit_edge.i_crit_edge

for.body637.for.body637_crit_edge.i.for.body637.for.body637_crit_edge.i_crit_edge: ; preds = %for.body637.for.body637_crit_edge.i
  %.pre1110.i.pre = load i32* %nMNOMol.i, align 4, !tbaa !0
  br label %for.body637.for.body637_crit_edge.i

if.end646.i:                                      ; preds = %for.body637.for.body637_crit_edge.i, %for.end629.i, %if.end546.i
  %345 = bitcast i32* %call8.i to i8*
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str66, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 326, i8* %345) #4
  br i1 %tobool70, label %if.then648.i, label %if.end547

if.then648.i:                                     ; preds = %if.end646.i
  %346 = load i32* %nMNOMol.i, align 4, !tbaa !0
  %nodeid650.i = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %347 = load i32* %nodeid650.i, align 4, !tbaa !0
  %call651.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([53 x i8]* @.str67, i64 0, i64 0), i32 %346, i32 %347) #4
  %348 = load i32* %nMNOMol.i, align 4, !tbaa !0
  %cmp653.i = icmp sgt i32 %348, 0
  br i1 %cmp653.i, label %if.then655.i, label %if.end672.i

if.then655.i:                                     ; preds = %if.then648.i
  %arrayidx657.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 40, i64 1
  %349 = load float* %arrayidx657.i, align 4, !tbaa !3
  %conv658.i = fpext float %349 to double
  %arrayidx660.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 40, i64 2
  %350 = load float* %arrayidx660.i, align 4, !tbaa !3
  %sub663.i = fsub float %350, %349
  %conv664.i = fpext float %sub663.i to double
  %351 = load float* %scevgep.i, align 4, !tbaa !3
  %sub669.i = fsub float %351, %350
  %conv670.i = fpext float %sub669.i to double
  %call671.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([65 x i8]* @.str68, i64 0, i64 0), double %conv658.i, double %conv664.i, double %conv670.i) #4
  br label %if.end672.i

if.end672.i:                                      ; preds = %if.then655.i, %if.then648.i
  %352 = load i32* %nWatMol.i, align 4, !tbaa !0
  %353 = load i32* %nodeid650.i, align 4, !tbaa !0
  %call675.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([51 x i8]* @.str69, i64 0, i64 0), i32 %352, i32 %353) #4
  br label %if.end547

if.end547:                                        ; preds = %if.end672.i, %if.end646.i, %for.end544
  ret void
}

; Function Attrs: optsize
declare i8* @check_box([3 x float]*) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize
declare double @pow(double, double) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare float @calc_ewaldcoeff(float, float) #1

; Function Attrs: optsize
declare void @set_shift_consts(%struct._IO_FILE*, float, float, float*, %struct.t_forcerec*) #1

; Function Attrs: optsize
declare i32* @make_invblock(%struct.t_block*, i32) #1

; Function Attrs: optsize
declare void @make_tables(%struct._IO_FILE*, %struct.t_forcerec*, i32, i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @pr_forcerec(%struct._IO_FILE* nocapture %fp, %struct.t_forcerec* nocapture %fr, %struct.t_commrec* nocapture %cr) #0 {
entry:
  %rlist = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 1
  %0 = load float* %rlist, align 4, !tbaa !3
  %conv = fpext float %0 to double
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str27, i64 0, i64 0), double %conv) #4
  %rcoulomb = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 23
  %1 = load float* %rcoulomb, align 4, !tbaa !3
  %conv1 = fpext float %1 to double
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str28, i64 0, i64 0), double %conv1) #4
  %fudgeQQ = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 12
  %2 = load float* %fudgeQQ, align 4, !tbaa !3
  %conv3 = fpext float %2 to double
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str29, i64 0, i64 0), double %conv3) #4
  %ndelta = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 37
  %3 = load i32* %ndelta, align 4, !tbaa !0
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str31, i64 0, i64 0), i32 %3) #4
  %bGrid = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 43
  %4 = load i32* %bGrid, align 4, !tbaa !0
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %idxprom
  %5 = load i8** %arrayidx, align 8, !tbaa !4
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str33, i64 0, i64 0), i8* %5) #4
  %bTwinRange = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 51
  %6 = load i32* %bTwinRange, align 4, !tbaa !0
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %idxprom7
  %7 = load i8** %arrayidx8, align 8, !tbaa !4
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str34, i64 0, i64 0), i8* %7) #4
  %ntab = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 16
  %8 = load i32* %ntab, align 4, !tbaa !0
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str35, i64 0, i64 0), i32 %8) #4
  %9 = load i32* %ntab, align 4, !tbaa !0
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %rcoulomb_switch = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 22
  %10 = load float* %rcoulomb_switch, align 4, !tbaa !3
  %conv13 = fpext float %10 to double
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str36, i64 0, i64 0), double %conv13) #4
  %11 = load float* %rcoulomb, align 4, !tbaa !3
  %conv16 = fpext float %11 to double
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str28, i64 0, i64 0), double %conv16) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %nmol = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 59
  %12 = load i32* %nmol, align 4, !tbaa !0
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str37, i64 0, i64 0), i32 %12) #4
  %nstcalc = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 62
  %13 = load i32* %nstcalc, align 4, !tbaa !0
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str38, i64 0, i64 0), i32 %13) #4
  %call20 = tail call i32 @fflush(%struct._IO_FILE* %fp) #4
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @ns(%struct._IO_FILE* %fp, %struct.t_forcerec* %fr, [3 x float]* %x, [3 x float]* nocapture %f, [3 x float]* %box, %struct.t_groups* %grps, %struct.t_grpopts* nocapture %opts, %struct.t_topology* %top, %struct.t_mdatoms* %md, %struct.t_commrec* %cr, %struct.t_nrnb* %nrnb, %struct.t_nsborder* %nsb, i32 %step, float %lambda, float* %dvdlambda) #0 {
entry:
  %.b = load i1* @ns.bFirst, align 1
  br i1 %.b, label %if.end4, label %if.end

if.end:                                           ; preds = %entry
  %nodeid = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %0 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom
  %1 = load i32* %arrayidx, align 4, !tbaa !0
  tail call void @init_neighbor_list(%struct._IO_FILE* %fp, %struct.t_forcerec* %fr, i32 %1) #4
  store i1 true, i1* @ns.bFirst, align 1
  br label %if.end4

if.end4:                                          ; preds = %entry, %if.end
  %bTwinRange = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 51
  %2 = load i32* %bTwinRange, align 4, !tbaa !0
  %tobool5 = icmp eq i32 %2, 0
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end4
  %nlr = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 52
  store i32 0, i32* %nlr, align 4, !tbaa !0
  br label %if.end7

if.end7:                                          ; preds = %if.end4, %if.then6
  %nodeid8 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %3 = load i32* %nodeid8, align 4, !tbaa !0
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.end7
  %cg0 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 35
  store i32 0, i32* %cg0, align 4, !tbaa !0
  br label %if.end15

if.else10:                                        ; preds = %if.end7
  %sub = add nsw i32 %3, -1
  %idxprom12 = sext i32 %sub to i64
  %arrayidx13 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 10, i64 %idxprom12
  %4 = load i32* %arrayidx13, align 4, !tbaa !0
  %cg014 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 35
  store i32 %4, i32* %cg014, align 4, !tbaa !0
  br label %if.end15

if.end15:                                         ; preds = %if.else10, %if.then9
  %5 = load i32* %nodeid8, align 4, !tbaa !0
  %idxprom17 = sext i32 %5 to i64
  %arrayidx19 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 10, i64 %idxprom17
  %6 = load i32* %arrayidx19, align 4, !tbaa !0
  %hcg = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 36
  store i32 %6, i32* %hcg, align 4, !tbaa !0
  %call20 = tail call i32 @search_neighbours(%struct._IO_FILE* %fp, %struct.t_forcerec* %fr, [3 x float]* %x, [3 x float]* %box, %struct.t_topology* %top, %struct.t_groups* %grps, %struct.t_commrec* %cr, %struct.t_nsborder* %nsb, %struct.t_nrnb* %nrnb, %struct.t_mdatoms* %md, float %lambda, float* %dvdlambda) #4
  %7 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %tobool21 = icmp eq %struct._IO_FILE* %7, null
  br i1 %tobool21, label %if.end27, label %if.then22

if.then22:                                        ; preds = %if.end15
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([14 x i8]* @.str40, i64 0, i64 0), i32 %call20) #4
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end15
  ret void
}

; Function Attrs: optsize
declare void @init_neighbor_list(%struct._IO_FILE*, %struct.t_forcerec*, i32) #1

; Function Attrs: optsize
declare i32 @search_neighbours(%struct._IO_FILE*, %struct.t_forcerec*, [3 x float]*, [3 x float]*, %struct.t_topology*, %struct.t_groups*, %struct.t_commrec*, %struct.t_nsborder*, %struct.t_nrnb*, %struct.t_mdatoms*, float, float*) #1

; Function Attrs: nounwind optsize uwtable
define void @force(%struct._IO_FILE* %fp, i32 %step, %struct.t_forcerec* %fr, %struct.t_inputrec* %ir, %struct.t_idef* %idef, %struct.t_nsborder* %nsb, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_nrnb* %nrnb, %struct.t_groups* nocapture %grps, %struct.t_mdatoms* %md, i32 %ngener, %struct.t_grpopts* nocapture %opts, [3 x float]* %x, [3 x float]* %f, float* %epot, %struct.t_fcdata* %fcd, i32 %bVerbose, [3 x float]* %box, float %lambda, %struct.t_graph* %graph, %struct.t_block* %excl, i32 %bNBFonly, [3 x float]* %lr_vir, float* %mu_tot, float %qsum, i32 %bGatherOnly) #0 {
entry:
  %nit = alloca i32, align 4
  %box_size = alloca [3 x float], align 4
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv320 = phi i64 [ 0, %entry ], [ %indvars.iv.next321, %for.body ]
  %arrayidx2 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv320, i64 %indvars.iv320
  %0 = load float* %arrayidx2, align 4, !tbaa !3
  %arrayidx4 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 %indvars.iv320
  store float %0, float* %arrayidx4, align 4, !tbaa !3
  %indvars.iv.next321 = add i64 %indvars.iv320, 1
  %lftr.wideiv322 = trunc i64 %indvars.iv.next321 to i32
  %exitcond323 = icmp eq i32 %lftr.wideiv322, 3
  br i1 %exitcond323, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %nmol = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 59
  %1 = load i32* %nmol, align 4, !tbaa !0
  %cmp5 = icmp sgt i32 %1, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %nstcalc = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 62
  %2 = load i32* %nstcalc, align 4, !tbaa !0
  %cmp6 = icmp sgt i32 %2, 0
  br i1 %cmp6, label %_mod.exit, label %if.end

_mod.exit:                                        ; preds = %land.lhs.true
  %rem.i = srem i32 %step, %2
  %cmp8 = icmp eq i32 %rem.i, 0
  br i1 %cmp8, label %if.end.loopexit, label %if.end

if.end.loopexit:                                  ; preds = %_mod.exit
  %mol_epot = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 61
  %3 = load float** %mol_epot, align 8, !tbaa !4
  %4 = bitcast float* %3 to i8*
  %5 = icmp sgt i32 %1, 1
  %.op = add i32 %1, -1
  %6 = zext i32 %.op to i64
  %.op324 = shl nuw nsw i64 %6, 2
  %.op324.op = add i64 %.op324, 4
  %7 = select i1 %5, i64 %.op324.op, i64 4
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 %7, i32 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.end.loopexit, %for.end, %land.lhs.true, %_mod.exit
  %bBHAM = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 64
  %8 = load i32* %bBHAM, align 4, !tbaa !0
  %tobool18 = icmp eq i32 %8, 0
  %arrayidx19 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 2
  %arrayidx22 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 1
  %cond.in = select i1 %tobool18, float** %arrayidx22, float** %arrayidx19
  %cond = load float** %cond.in, align 8
  %arrayidx25 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 0
  %9 = load float** %arrayidx25, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 0
  %arrayidx26 = getelementptr inbounds float* %epot, i64 42
  call void @do_fnbf(%struct._IO_FILE* %fp, %struct.t_commrec* %cr, %struct.t_forcerec* %fr, [3 x float]* %x, [3 x float]* %f, %struct.t_mdatoms* %md, float* %cond, float* %9, float* %arraydecay, %struct.t_nrnb* %nrnb, float %lambda, float* %arrayidx26, i32 0, i32 -1) #4
  %10 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %tobool27 = icmp eq %struct._IO_FILE* %10, null
  br i1 %tobool27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end
  %fshift = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %11 = load [3 x float]** %fshift, align 8, !tbaa !4
  call void @pr_rvecs(%struct._IO_FILE* %10, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str41, i64 0, i64 0), [3 x float]* %11, i32 27) #4
  br label %if.end29

if.end29:                                         ; preds = %if.end, %if.then28
  %tobool34 = icmp ne i32 %bNBFonly, 0
  br i1 %tobool34, label %if.end99, label %if.then35

if.then35:                                        ; preds = %if.end29
  call void @shift_self(%struct.t_graph* %graph, [3 x float]* %box, [3 x float]* %x) #4
  %arrayidx71 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %12 = load float* %arrayidx71, align 4, !tbaa !3
  %fabsf = call float @fabsf(float %12) #5
  %13 = fpext float %fabsf to double
  %cmp74 = fcmp ogt double %13, 1.200000e-38
  br i1 %cmp74, label %if.then89, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then35
  %arrayidx77 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %14 = load float* %arrayidx77, align 4, !tbaa !3
  %fabsf307 = call float @fabsf(float %14) #5
  %15 = fpext float %fabsf307 to double
  %cmp80 = fcmp ogt double %15, 1.200000e-38
  br i1 %cmp80, label %if.then89, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %lor.lhs.false
  %arrayidx84 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %16 = load float* %arrayidx84, align 4, !tbaa !3
  %fabsf308 = call float @fabsf(float %16) #5
  %17 = fpext float %fabsf308 to double
  %cmp87 = fcmp ogt double %17, 1.200000e-38
  br i1 %cmp87, label %if.then89, label %if.else

if.then89:                                        ; preds = %lor.lhs.false82, %lor.lhs.false, %if.then35
  %nnodes90 = getelementptr inbounds %struct.t_graph* %graph, i64 0, i32 1
  %18 = load i32* %nnodes90, align 4, !tbaa !0
  %mul = shl nsw i32 %18, 1
  %conv91 = sitofp i32 %mul to double
  %arrayidx92 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 89
  %19 = load double* %arrayidx92, align 8, !tbaa !6
  %add = fadd double %19, %conv91
  store double %add, double* %arrayidx92, align 8, !tbaa !6
  br label %if.end99

if.else:                                          ; preds = %lor.lhs.false82
  %nnodes93 = getelementptr inbounds %struct.t_graph* %graph, i64 0, i32 1
  %20 = load i32* %nnodes93, align 4, !tbaa !0
  %conv94 = sitofp i32 %20 to double
  %arrayidx96 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 89
  %21 = load double* %arrayidx96, align 8, !tbaa !6
  %add97 = fadd double %21, %conv94
  store double %add97, double* %arrayidx96, align 8, !tbaa !6
  br label %if.end99

if.end99:                                         ; preds = %if.then89, %if.else, %if.end29
  %eeltype = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 33
  %22 = load i32* %eeltype, align 4, !tbaa !0
  %.off = add i32 %22, -3
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %if.then114, label %if.end160

if.then114:                                       ; preds = %if.end99
  switch i32 %22, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb118
    i32 3, label %sw.bb124
    i32 4, label %sw.bb128
  ]

sw.bb:                                            ; preds = %if.then114
  %f_pme = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55
  %23 = load [3 x float]** %f_pme, align 8, !tbaa !4
  %chargeT = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 8
  %24 = load float** %chargeT, align 8, !tbaa !4
  %phi = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 24
  %25 = load float** %phi, align 8, !tbaa !4
  %call117 = call float @do_pppm(%struct._IO_FILE* %fp, i32 0, [3 x float]* %x, [3 x float]* %23, float* %24, float* %arraydecay, float* %25, %struct.t_commrec* %cr, %struct.t_nsborder* %nsb, %struct.t_nrnb* %nrnb) #4
  br label %sw.epilog

sw.bb118:                                         ; preds = %if.then114
  %nr = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1
  %26 = load i32* %nr, align 4, !tbaa !0
  %f_pme119 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55
  %27 = load [3 x float]** %f_pme119, align 8, !tbaa !4
  %chargeT120 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 8
  %28 = load float** %chargeT120, align 8, !tbaa !4
  %phi122 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 24
  %29 = load float** %phi122, align 8, !tbaa !4
  %call123 = call float @do_poisson(%struct._IO_FILE* %fp, i32 0, %struct.t_inputrec* %ir, i32 %26, [3 x float]* %x, [3 x float]* %27, float* %28, float* %arraydecay, float* %29, %struct.t_commrec* %cr, %struct.t_nrnb* %nrnb, i32* %nit, i32 1) #4
  br label %sw.epilog

sw.bb124:                                         ; preds = %if.then114
  %f_pme125 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55
  %30 = load [3 x float]** %f_pme125, align 8, !tbaa !4
  %chargeT126 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 8
  %31 = load float** %chargeT126, align 8, !tbaa !4
  %ewaldcoeff = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 57
  %32 = load float* %ewaldcoeff, align 4, !tbaa !3
  %call127 = call float @do_pme(%struct._IO_FILE* %fp, i32 0, %struct.t_inputrec* %ir, [3 x float]* %x, [3 x float]* %30, float* %31, [3 x float]* %box, %struct.t_commrec* %cr, %struct.t_nsborder* %nsb, %struct.t_nrnb* %nrnb, [3 x float]* %lr_vir, float %32, i32 %bGatherOnly) #4
  br label %sw.epilog

sw.bb128:                                         ; preds = %if.then114
  %f_pme129 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55
  %33 = load [3 x float]** %f_pme129, align 8, !tbaa !4
  %chargeT130 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 8
  %34 = load float** %chargeT130, align 8, !tbaa !4
  %ewaldcoeff132 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 57
  %35 = load float* %ewaldcoeff132, align 4, !tbaa !3
  %call133 = call float @do_ewald(%struct._IO_FILE* %fp, i32 0, %struct.t_inputrec* %ir, [3 x float]* %x, [3 x float]* %33, float* %34, float* %arraydecay, %struct.t_commrec* %cr, %struct.t_nsborder* %nsb, [3 x float]* %lr_vir, float %35) #4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then114
  %idxprom135 = sext i32 %22 to i64
  %arrayidx136 = getelementptr inbounds [11 x i8*]* @eel_names, i64 0, i64 %idxprom135
  %36 = load i8** %arrayidx136, align 8, !tbaa !4
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([45 x i8]* @.str49, i64 0, i64 0), i8* %36) #4
  %chargeT139.pre = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb128, %sw.bb124, %sw.bb118, %sw.bb
  %chargeT139.pre-phi = phi float** [ %chargeT139.pre, %sw.default ], [ %chargeT130, %sw.bb128 ], [ %chargeT126, %sw.bb124 ], [ %chargeT120, %sw.bb118 ], [ %chargeT, %sw.bb ]
  %Vlr.0 = phi float [ 0.000000e+00, %sw.default ], [ %call133, %sw.bb128 ], [ %call127, %sw.bb124 ], [ %call123, %sw.bb118 ], [ %call117, %sw.bb ]
  %bEwald = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 56
  %37 = load i32* %bEwald, align 4, !tbaa !0
  %tobool137 = icmp eq i32 %37, 0
  %38 = load float** %chargeT139.pre-phi, align 8, !tbaa !4
  br i1 %tobool137, label %if.else142, label %if.then138

if.then138:                                       ; preds = %sw.epilog
  %ewald_geometry = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 22
  %39 = load i32* %ewald_geometry, align 4, !tbaa !0
  %epsilon_surface = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 23
  %40 = load i32* %epsilon_surface, align 4, !tbaa !0
  %conv140 = sitofp i32 %40 to float
  %call141 = call float @ewald_LRcorrection(%struct._IO_FILE* %fp, %struct.t_nsborder* %nsb, %struct.t_commrec* %cr, %struct.t_forcerec* %fr, float* %38, %struct.t_block* %excl, [3 x float]* %x, [3 x float]* %box, float* %mu_tot, float %qsum, i32 %39, float %conv140, [3 x float]* %lr_vir) #4
  br label %if.end145

if.else142:                                       ; preds = %sw.epilog
  %call144 = call float @shift_LRcorrection(%struct._IO_FILE* %fp, %struct.t_nsborder* %nsb, %struct.t_commrec* %cr, %struct.t_forcerec* %fr, float* %38, %struct.t_block* %excl, [3 x float]* %x, i32 1, [3 x float]* %box, [3 x float]* %lr_vir) #4
  br label %if.end145

if.end145:                                        ; preds = %if.else142, %if.then138
  %Vcorr.0 = phi float [ %call141, %if.then138 ], [ %call144, %if.else142 ]
  %add146 = fadd float %Vlr.0, %Vcorr.0
  %arrayidx147 = getelementptr inbounds float* %epot, i64 18
  store float %add146, float* %arrayidx147, align 4, !tbaa !3
  %41 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %tobool148 = icmp eq %struct._IO_FILE* %41, null
  br i1 %tobool148, label %if.end163, label %if.end155

if.end155:                                        ; preds = %if.end145
  %conv150 = fpext float %Vlr.0 to double
  %conv151 = fpext float %Vcorr.0 to double
  %conv153 = fpext float %add146 to double
  %call154 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([37 x i8]* @.str50, i64 0, i64 0), double %conv150, double %conv151, double %conv153) #4
  %.pr = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %tobool156 = icmp eq %struct._IO_FILE* %.pr, null
  br i1 %tobool156, label %if.end163, label %if.then157

if.then157:                                       ; preds = %if.end155
  call void @pr_rvecs(%struct._IO_FILE* %.pr, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str51, i64 0, i64 0), [3 x float]* %lr_vir, i32 3) #4
  %42 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %fshift158 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %43 = load [3 x float]** %fshift158, align 8, !tbaa !4
  call void @pr_rvecs(%struct._IO_FILE* %42, i32 0, i8* getelementptr inbounds ([28 x i8]* @.str52, i64 0, i64 0), [3 x float]* %43, i32 27) #4
  br label %if.end160

if.end160:                                        ; preds = %if.end99, %if.then157
  %.pr311.pr = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %tobool161 = icmp eq %struct._IO_FILE* %.pr311.pr, null
  br i1 %tobool161, label %if.end163, label %if.then162

if.then162:                                       ; preds = %if.end160
  call void @print_nrnb(%struct._IO_FILE* %.pr311.pr, %struct.t_nrnb* %nrnb) #4
  br label %if.end163

if.end163:                                        ; preds = %if.end145, %if.end155, %if.end160, %if.then162
  br i1 %tobool34, label %if.end179, label %if.then165

if.then165:                                       ; preds = %if.end163
  %ngener166 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 3
  %44 = load i32* %ngener166, align 4, !tbaa !0
  %arrayidx169 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 6
  %45 = load float** %arrayidx169, align 8, !tbaa !4
  %arrayidx172 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 5
  %46 = load float** %arrayidx172, align 8, !tbaa !4
  %bSepDVDL = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 32
  %47 = load i32* %bSepDVDL, align 4, !tbaa !0
  %tobool173 = icmp eq i32 %47, 0
  br i1 %tobool173, label %land.end177, label %land.rhs174

land.rhs174:                                      ; preds = %if.then165
  %nstlog = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 8
  %48 = load i32* %nstlog, align 4, !tbaa !0
  %call175 = call i32 @do_per_step(i32 %step, i32 %48) #4
  %tobool176 = icmp ne i32 %call175, 0
  br label %land.end177

land.end177:                                      ; preds = %if.then165, %land.rhs174
  %49 = phi i1 [ false, %if.then165 ], [ %tobool176, %land.rhs174 ]
  %land.ext178 = zext i1 %49 to i32
  call void @calc_bonds(%struct._IO_FILE* %fp, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_idef* %idef, [3 x float]* %x, [3 x float]* %f, %struct.t_forcerec* %fr, %struct.t_graph* %graph, float* %epot, %struct.t_nrnb* %nrnb, [3 x float]* %box, float %lambda, %struct.t_mdatoms* %md, i32 %44, float* %45, float* %46, %struct.t_fcdata* %fcd, i32 %step, i32 %land.ext178) #4
  br label %if.end179

if.end179:                                        ; preds = %if.end163, %land.end177
  %50 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %tobool180 = icmp eq %struct._IO_FILE* %50, null
  br i1 %tobool180, label %for.cond184.preheader, label %if.then181

if.then181:                                       ; preds = %if.end179
  %fshift182 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %51 = load [3 x float]** %fshift182, align 8, !tbaa !4
  call void @pr_rvecs(%struct._IO_FILE* %50, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str53, i64 0, i64 0), [3 x float]* %51, i32 27) #4
  br label %for.cond184.preheader

for.cond184.preheader:                            ; preds = %if.end179, %if.then181
  %arrayidx193 = getelementptr inbounds float* %epot, i64 37
  br label %for.body187

for.body187:                                      ; preds = %for.inc196, %for.cond184.preheader
  %indvars.iv = phi i64 [ 0, %for.cond184.preheader ], [ %indvars.iv.next, %for.inc196 ]
  %52 = trunc i64 %indvars.iv to i32
  %cmp188 = icmp eq i32 %52, 21
  br i1 %cmp188, label %for.inc196, label %if.then190

if.then190:                                       ; preds = %for.body187
  %arrayidx192 = getelementptr inbounds float* %epot, i64 %indvars.iv
  %53 = load float* %arrayidx192, align 4, !tbaa !3
  %54 = load float* %arrayidx193, align 4, !tbaa !3
  %add194 = fadd float %53, %54
  store float %add194, float* %arrayidx193, align 4, !tbaa !3
  br label %for.inc196

for.inc196:                                       ; preds = %for.body187, %if.then190
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 37
  br i1 %exitcond, label %for.end198, label %for.body187

for.end198:                                       ; preds = %for.inc196
  ret void
}

; Function Attrs: optsize
declare void @do_fnbf(%struct._IO_FILE*, %struct.t_commrec*, %struct.t_forcerec*, [3 x float]*, [3 x float]*, %struct.t_mdatoms*, float*, float*, float*, %struct.t_nrnb*, float, float*, i32, i32) #1

; Function Attrs: optsize
declare void @pr_rvecs(%struct._IO_FILE*, i32, i8*, [3 x float]*, i32) #1

; Function Attrs: optsize
declare void @shift_self(%struct.t_graph*, [3 x float]*, [3 x float]*) #1

; Function Attrs: optsize
declare float @do_pppm(%struct._IO_FILE*, i32, [3 x float]*, [3 x float]*, float*, float*, float*, %struct.t_commrec*, %struct.t_nsborder*, %struct.t_nrnb*) #1

; Function Attrs: optsize
declare float @do_poisson(%struct._IO_FILE*, i32, %struct.t_inputrec*, i32, [3 x float]*, [3 x float]*, float*, float*, float*, %struct.t_commrec*, %struct.t_nrnb*, i32*, i32) #1

; Function Attrs: optsize
declare float @do_pme(%struct._IO_FILE*, i32, %struct.t_inputrec*, [3 x float]*, [3 x float]*, float*, [3 x float]*, %struct.t_commrec*, %struct.t_nsborder*, %struct.t_nrnb*, [3 x float]*, float, i32) #1

; Function Attrs: optsize
declare float @do_ewald(%struct._IO_FILE*, i32, %struct.t_inputrec*, [3 x float]*, [3 x float]*, float*, float*, %struct.t_commrec*, %struct.t_nsborder*, [3 x float]*, float) #1

; Function Attrs: optsize
declare float @ewald_LRcorrection(%struct._IO_FILE*, %struct.t_nsborder*, %struct.t_commrec*, %struct.t_forcerec*, float*, %struct.t_block*, [3 x float]*, [3 x float]*, float*, float, i32, float, [3 x float]*) #1

; Function Attrs: optsize
declare float @shift_LRcorrection(%struct._IO_FILE*, %struct.t_nsborder*, %struct.t_commrec*, %struct.t_forcerec*, float*, %struct.t_block*, [3 x float]*, i32, [3 x float]*, [3 x float]*) #1

; Function Attrs: optsize
declare void @print_nrnb(%struct._IO_FILE*, %struct.t_nrnb*) #1

; Function Attrs: optsize
declare void @calc_bonds(%struct._IO_FILE*, %struct.t_commrec*, %struct.t_commrec*, %struct.t_idef*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, float*, %struct.t_nrnb*, [3 x float]*, float, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*, i32, i32) #1

; Function Attrs: optsize
declare i32 @do_per_step(i32, i32) #1

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize
declare double @sqrt(double) #2

; Function Attrs: optsize
declare void @please_cite(%struct._IO_FILE*, i8*) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
!6 = metadata !{metadata !"double", metadata !1}
