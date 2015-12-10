; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/force.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
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
@.str1 = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/force.c\00", align 1
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
@debug = external global %struct.__sFILE*
@.str40 = private unnamed_addr constant [14 x i8] c"nsearch = %d\0A\00", align 1
@.str41 = private unnamed_addr constant [16 x i8] c"fshift after SR\00", align 1
@.str49 = private unnamed_addr constant [45 x i8] c"No such electrostatics method implemented %s\00", align 1
@eel_names = external global [11 x i8*]
@.str50 = private unnamed_addr constant [37 x i8] c"Vlr = %g, Vcorr = %g, Vlr_corr = %g\0A\00", align 1
@.str51 = private unnamed_addr constant [18 x i8] c"lr_vir after corr\00", align 1
@.str52 = private unnamed_addr constant [28 x i8] c"fshift after LR Corrections\00", align 1
@.str53 = private unnamed_addr constant [21 x i8] c"fshift after bondeds\00", align 1
@calc_rffac.bFirst = internal unnamed_addr global i1 false
@.str54 = private unnamed_addr constant [58 x i8] c"Temperature is %f while using Generalized Reaction Field\0A\00", align 1
@.str55 = private unnamed_addr constant [10 x i8] c"Tironi95a\00", align 1
@.str56 = private unnamed_addr constant [115 x i8] c"%s:\0AepsRF = %10g, I   = %10g, volume = %10g, kappa  = %10g\0Arc    = %10g, krf = %10g, crf    = %10g, epsfac = %10g\0A\00", align 1
@.str57 = private unnamed_addr constant [57 x i8] c"The electrostatics potential has its minimum at rc = %g\0A\00", align 1
@.str58 = private unnamed_addr constant [31 x i8] c"Average C6 parameter is: %10g\0A\00", align 1
@.str59 = private unnamed_addr constant [5 x i8] c"nbfp\00", align 1
@.str60 = private unnamed_addr constant [54 x i8] c"Determining largest Buckingham b parameter for table\0A\00", align 1
@.str61 = private unnamed_addr constant [32 x i8] c"Atomtype[%d] = %d, maximum = %d\00", align 1
@.str62 = private unnamed_addr constant [43 x i8] c"Buckingham b parameters, min: %g, max: %g\0A\00", align 1
@.str63 = private unnamed_addr constant [48 x i8] c"Going to determine what solvent types we have.\0A\00", align 1
@.str64 = private unnamed_addr constant [17 x i8] c"fr->solvent_type\00", align 1
@.str65 = private unnamed_addr constant [14 x i8] c"fr->mno_index\00", align 1
@.str66 = private unnamed_addr constant [55 x i8] c"There are %d molecules, %d charge groups and %d atoms\0A\00", align 1
@.str67 = private unnamed_addr constant [9 x i8] c"bAllExcl\00", align 1
@.str68 = private unnamed_addr constant [65 x i8] c"Exclusion outside molecule? ak = %d, j0 = %d, j1 = 5d, mol is %d\00", align 1
@.str69 = private unnamed_addr constant [10 x i8] c"bHaveCoul\00", align 1
@.str70 = private unnamed_addr constant [8 x i8] c"bHaveLJ\00", align 1
@.str71 = private unnamed_addr constant [68 x i8] c"The order in molecule %d could be optimized for better performance\0A\00", align 1
@.str72 = private unnamed_addr constant [59 x i8] c"(More than 10 molecules where the order can be optimized)\0A\00", align 1
@.str73 = private unnamed_addr constant [42 x i8] c"MNO: cg = %5d, m = %2d, n = %2d, o = %2d\0A\00", align 1
@.str74 = private unnamed_addr constant [5 x i8] c"cgid\00", align 1
@.str75 = private unnamed_addr constant [53 x i8] c"There are %d optimized solvent molecules on node %d\0A\00", align 1
@.str76 = private unnamed_addr constant [65 x i8] c"  aver. nr. of atoms per molecule: vdwc %.1f coul %.1f vdw %.1f\0A\00", align 1
@.str77 = private unnamed_addr constant [51 x i8] c"There are %d optimized water molecules on node %d\0A\00", align 1

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
define %struct.t_forcerec* @mk_forcerec() #3 {
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 68, i32 1, i32 2848) #8
  %2 = bitcast i8* %1 to %struct.t_forcerec*
  ret %struct.t_forcerec* %2
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @update_forcerec(%struct.__sFILE* %log, %struct.t_forcerec* nocapture %fr, [3 x float]* nocapture readonly %box) #3 {
  %1 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 33
  %2 = load i32* %1, align 4, !tbaa !14
  %3 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 5
  %4 = load float* %3, align 4, !tbaa !17
  %5 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 23
  %6 = load float* %5, align 4, !tbaa !18
  %7 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 4
  %8 = load float* %7, align 4, !tbaa !19
  %9 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 8
  %10 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 6
  %11 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 9
  %12 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 10
  %13 = icmp eq i32 %2, 2
  %eel.off.i = add i32 %2, -1
  %14 = icmp ult i32 %eel.off.i, 2
  br i1 %14, label %15, label %123

; <label>:15                                      ; preds = %0
  %16 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 3
  %17 = load float* %16, align 4, !tbaa !20
  %18 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %19 = load float* %18, align 4, !tbaa !21
  %20 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %21 = load float* %20, align 4, !tbaa !21
  %22 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %23 = load float* %22, align 4, !tbaa !21
  %24 = fmul float %21, %23
  %25 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %26 = load float* %25, align 4, !tbaa !21
  %27 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %28 = load float* %27, align 4, !tbaa !21
  %29 = fmul float %26, %28
  %30 = fsub float %24, %29
  %31 = fmul float %19, %30
  %32 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %33 = load float* %32, align 4, !tbaa !21
  %34 = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %35 = load float* %34, align 4, !tbaa !21
  %36 = fmul float %23, %35
  %37 = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  %38 = load float* %37, align 4, !tbaa !21
  %39 = fmul float %26, %38
  %40 = fsub float %36, %39
  %41 = fmul float %33, %40
  %42 = fsub float %31, %41
  %43 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %44 = load float* %43, align 4, !tbaa !21
  %45 = fmul float %28, %35
  %46 = fmul float %21, %38
  %47 = fsub float %45, %46
  %48 = fmul float %44, %47
  %49 = fadd float %48, %42
  %50 = fdiv float %17, %49
  br i1 %13, label %51, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %15
  %.pre.i = fpext float %4 to double
  br label %65

; <label>:51                                      ; preds = %15
  %52 = fpext float %8 to double
  %53 = fcmp ugt float %8, 0.000000e+00
  br i1 %53, label %55, label %54

; <label>:54                                      ; preds = %51
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([58 x i8]* @.str54, i64 0, i64 0), double %52) #8
  br label %55

; <label>:55                                      ; preds = %54, %51
  %56 = fmul float %50, 2.000000e+00
  %57 = fpext float %56 to double
  %58 = fpext float %4 to double
  %59 = fmul double %58, 5.727650e-04
  %60 = fmul double %59, 0x3F810732CDE67DC4
  %61 = fmul double %60, %52
  %62 = fdiv double %57, %61
  %63 = tail call double @sqrt(double %62) #9
  %64 = fptrunc double %63 to float
  br label %65

; <label>:65                                      ; preds = %55, %._crit_edge.i
  %.pre-phi.i = phi double [ %.pre.i, %._crit_edge.i ], [ %58, %55 ]
  %storemerge.i = phi float [ 0.000000e+00, %._crit_edge.i ], [ %64, %55 ]
  store float %storemerge.i, float* %9, align 4, !tbaa !21
  %fabsf2.i = tail call float @fabsf(float %4) #6
  %66 = fpext float %fabsf2.i to double
  %67 = fcmp olt double %66, 1.200000e-38
  br i1 %67, label %68, label %73

; <label>:68                                      ; preds = %65
  %69 = fmul float %6, 2.000000e+00
  %70 = fmul float %6, %69
  %71 = fmul float %6, %70
  %72 = fdiv float 1.000000e+00, %71
  store float %72, float* %11, align 4, !tbaa !21
  br label %94

; <label>:73                                      ; preds = %65
  %74 = fmul float %6, %storemerge.i
  %75 = fadd float %74, 1.000000e+00
  %76 = fmul float %74, %74
  %77 = fmul float %4, %76
  %78 = fadd float %4, -1.000000e+00
  %79 = fmul float %78, %75
  %80 = fadd float %79, %77
  %81 = fmul float %4, 2.000000e+00
  %82 = fadd float %81, 1.000000e+00
  %83 = fmul float %82, %75
  %84 = fmul float %77, 2.000000e+00
  %85 = fadd float %83, %84
  %86 = fdiv float %80, %85
  %87 = fmul float %6, %6
  %88 = fmul float %6, %87
  %89 = fdiv float %86, %88
  store float %89, float* %11, align 4, !tbaa !21
  %90 = fdiv float 1.000000e+00, %6
  %91 = fmul float %6, %89
  %92 = fmul float %6, %91
  %93 = fadd float %90, %92
  br label %94

; <label>:94                                      ; preds = %73, %68
  %95 = phi float [ %89, %73 ], [ %72, %68 ]
  %storemerge3.i = phi float [ %93, %73 ], [ 0.000000e+00, %68 ]
  store float %storemerge3.i, float* %12, align 4, !tbaa !21
  store float 0x40615DEEE0000000, float* %10, align 4, !tbaa !21
  %96 = fpext float %95 to double
  %97 = fmul double %96, 2.000000e+00
  %98 = tail call double @llvm.pow.f64(double %97, double 0xBFD5555555555555) #7
  %99 = fptrunc double %98 to float
  %.b.i = load i1* @calc_rffac.bFirst, align 1
  br i1 %.b.i, label %calc_rffac.exit, label %100

; <label>:100                                     ; preds = %94
  br i1 %13, label %101, label %102

; <label>:101                                     ; preds = %100
  tail call void @please_cite(%struct.__sFILE* %log, i8* getelementptr inbounds ([10 x i8]* @.str55, i64 0, i64 0)) #8
  br label %102

; <label>:102                                     ; preds = %101, %100
  %103 = icmp eq %struct.__sFILE* %log, null
  br i1 %103, label %122, label %104

; <label>:104                                     ; preds = %102
  %105 = sext i32 %2 to i64
  %106 = getelementptr inbounds [11 x i8*]* @eel_names, i64 0, i64 %105
  %107 = load i8** %106, align 8, !tbaa !22
  %108 = fpext float %50 to double
  %109 = fpext float %49 to double
  %110 = load float* %9, align 4, !tbaa !21
  %111 = fpext float %110 to double
  %112 = fpext float %6 to double
  %113 = load float* %11, align 4, !tbaa !21
  %114 = fpext float %113 to double
  %115 = load float* %12, align 4, !tbaa !21
  %116 = fpext float %115 to double
  %117 = load float* %10, align 4, !tbaa !21
  %118 = fpext float %117 to double
  %119 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([115 x i8]* @.str56, i64 0, i64 0), i8* %107, double %.pre-phi.i, double %108, double %109, double %111, double %112, double %114, double %116, double %118) #8
  %120 = fpext float %99 to double
  %121 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([57 x i8]* @.str57, i64 0, i64 0), double %120) #8
  br label %122

; <label>:122                                     ; preds = %104, %102
  store i1 true, i1* @calc_rffac.bFirst, align 1
  br label %calc_rffac.exit

; <label>:123                                     ; preds = %0
  store float 0.000000e+00, float* %9, align 4, !tbaa !21
  store float 0.000000e+00, float* %11, align 4, !tbaa !21
  store float 0.000000e+00, float* %12, align 4, !tbaa !21
  %fabsf.i = tail call float @fabsf(float %4) #6
  %124 = fpext float %fabsf.i to double
  %125 = fcmp olt double %124, 1.200000e-38
  %126 = fpext float %4 to double
  %.op.i = fdiv double 0x40615DEEE174A498, %126
  %127 = fptrunc double %.op.i to float
  %128 = select i1 %125, float 0x40615DEEE0000000, float %127
  store float %128, float* %10, align 4, !tbaa !21
  br label %calc_rffac.exit

calc_rffac.exit:                                  ; preds = %94, %122, %123
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @set_avcsix(%struct.__sFILE* nocapture readnone %log, %struct.t_forcerec* nocapture %fr, %struct.t_mdatoms* nocapture readonly %mdatoms) #3 {
  %1 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 65
  %2 = load float** %1, align 8, !tbaa !23
  %3 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63
  %4 = load i32* %3, align 4, !tbaa !24
  %5 = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 1
  %6 = load i32* %5, align 4, !tbaa !25
  %7 = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 11
  %8 = load i32** %7, align 8, !tbaa !27
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %.lr.ph7.i, label %._crit_edge8.i

.lr.ph7.i:                                        ; preds = %0
  %10 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 64
  %11 = load i32* %10, align 4, !tbaa !28
  %12 = icmp eq i32 %11, 0
  %13 = add i32 %6, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph7.i
  %indvars.iv10.i = phi i64 [ 0, %.lr.ph7.i ], [ %indvars.iv.next11.i, %._crit_edge.i ]
  %csix.05.i = phi double [ 0.000000e+00, %.lr.ph7.i ], [ %csix.2.i, %._crit_edge.i ]
  %14 = getelementptr inbounds i32* %8, i64 %indvars.iv10.i
  %15 = load i32* %14, align 4, !tbaa !29
  %16 = mul nsw i32 %15, %4
  br label %17

; <label>:17                                      ; preds = %25, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %25 ]
  %csix.13.i = phi double [ %csix.05.i, %.lr.ph.i ], [ %csix.2.i, %25 ]
  %18 = getelementptr inbounds i32* %8, i64 %indvars.iv.i
  %19 = load i32* %18, align 4, !tbaa !29
  %20 = add nsw i32 %19, %16
  br i1 %12, label %23, label %21

; <label>:21                                      ; preds = %17
  %22 = mul nsw i32 %20, 3
  br label %25

; <label>:23                                      ; preds = %17
  %24 = shl nsw i32 %20, 1
  br label %25

; <label>:25                                      ; preds = %23, %21
  %.pn1.in.i = phi i32 [ %22, %21 ], [ %24, %23 ]
  %.pn1.i = sext i32 %.pn1.in.i to i64
  %.pn.in.in.i = getelementptr inbounds float* %2, i64 %.pn1.i
  %.pn.in.i = load float* %.pn.in.in.i, align 4
  %.pn.i = fpext float %.pn.in.i to double
  %csix.2.i = fadd double %csix.13.i, %.pn.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %13
  br i1 %exitcond, label %._crit_edge.i, label %17

._crit_edge.i:                                    ; preds = %25
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %lftr.wideiv1 = trunc i64 %indvars.iv10.i to i32
  %exitcond2 = icmp eq i32 %lftr.wideiv1, %13
  br i1 %exitcond2, label %._crit_edge8.i, label %.lr.ph.i

._crit_edge8.i:                                   ; preds = %._crit_edge.i, %0
  %csix.0.lcssa.i = phi double [ 0.000000e+00, %0 ], [ %csix.2.i, %._crit_edge.i ]
  %26 = mul nsw i32 %6, %6
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %csix.0.lcssa.i, %27
  %29 = load %struct.__sFILE** @debug, align 8, !tbaa !22
  %30 = icmp eq %struct.__sFILE* %29, null
  br i1 %30, label %calc_avcsix.exit, label %31

; <label>:31                                      ; preds = %._crit_edge8.i
  %32 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %29, i8* getelementptr inbounds ([31 x i8]* @.str58, i64 0, i64 0), double %28) #8
  br label %calc_avcsix.exit

calc_avcsix.exit:                                 ; preds = %._crit_edge8.i, %31
  %33 = fptrunc double %28 to float
  %34 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 11
  store float %33, float* %34, align 4, !tbaa !30
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @init_forcerec(%struct.__sFILE* %fp, %struct.t_forcerec* %fr, %struct.t_inputrec* %ir, %struct.t_topology* %top, %struct.t_commrec* nocapture readonly %cr, %struct.t_mdatoms* nocapture readonly %mdatoms, %struct.t_nsborder* nocapture readonly %nsb, [3 x float]* %box, i32 %bMolEpot, i8* %tabfn, i32 %bNoSolvOpt) #3 {
  %box_size = alloca [3 x float], align 4
  %1 = tail call i8* @check_box([3 x float]* %box) #8
  %2 = icmp eq i8* %1, null
  br i1 %2, label %5, label %3

; <label>:3                                       ; preds = %0
  %4 = tail call i8* @check_box([3 x float]* %box) #8
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* %4) #8
  br label %5

; <label>:5                                       ; preds = %0, %3
  %6 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1
  %7 = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 1
  %8 = load i32* %7, align 4, !tbaa !25
  %9 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 62
  %10 = load i32* %9, align 4, !tbaa !31
  %11 = sitofp i32 %10 to float
  %12 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 67
  store float %11, float* %12, align 4, !tbaa !34
  %13 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 46
  %14 = load i32* %13, align 4, !tbaa !35
  %15 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 29
  store i32 %14, i32* %15, align 4, !tbaa !36
  %16 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 49
  %17 = bitcast float* %16 to i32*
  %18 = load i32* %17, align 4, !tbaa !37
  %19 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 30
  %20 = bitcast float* %19 to i32*
  store i32 %18, i32* %20, align 4, !tbaa !38
  %21 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 50
  %22 = load float* %21, align 4, !tbaa !39
  %23 = fpext float %22 to double
  %24 = tail call double @llvm.pow.f64(double %23, double 6.000000e+00)
  %25 = fptrunc double %24 to float
  %26 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 31
  store float %25, float* %26, align 4, !tbaa !40
  %27 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 2
  %28 = load i32* %27, align 4, !tbaa !41
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 43
  store i32 %30, i32* %31, align 4, !tbaa !42
  %32 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 4
  %33 = load i32* %32, align 4, !tbaa !43
  %34 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 37
  store i32 %33, i32* %34, align 4, !tbaa !44
  %35 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 25
  %36 = load i32* %35, align 4, !tbaa !45
  %37 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 0
  store i32 %36, i32* %37, align 4, !tbaa !46
  %38 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 35
  %39 = bitcast float* %38 to i32*
  %40 = load i32* %39, align 4, !tbaa !47
  %41 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 1
  %42 = bitcast float* %41 to i32*
  store i32 %40, i32* %42, align 4, !tbaa !48
  %43 = bitcast i32 %40 to float
  %44 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38
  %45 = load float* %44, align 4, !tbaa !49
  %46 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 41
  %47 = load float* %46, align 4, !tbaa !50
  %48 = fcmp ogt float %45, %47
  %. = select i1 %48, float %45, float %47
  %49 = fcmp ogt float %43, %.
  %50 = select i1 %49, float %43, float %.
  %51 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 2
  store float %50, float* %51, align 4, !tbaa !51
  %52 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 36
  %53 = load i32* %52, align 4, !tbaa !52
  %54 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 33
  store i32 %53, i32* %54, align 4, !tbaa !14
  %55 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 39
  %56 = load i32* %55, align 4, !tbaa !53
  %57 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 34
  store i32 %56, i32* %57, align 4, !tbaa !54
  %58 = fcmp ogt float %50, %43
  %59 = zext i1 %58 to i32
  %60 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 51
  store i32 %59, i32* %60, align 4, !tbaa !55
  %.off21 = add i32 %53, -3
  %61 = icmp ult i32 %.off21, 2
  %62 = zext i1 %61 to i32
  %63 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 56
  store i32 %62, i32* %63, align 4, !tbaa !56
  %64 = icmp ne i32 %56, 0
  %65 = zext i1 %64 to i32
  %66 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 14
  store i32 %65, i32* %66, align 4, !tbaa !57
  %.off = add i32 %53, -1
  %switch = icmp ult i32 %.off, 2
  %67 = icmp eq i32 %56, 0
  %.124 = and i1 %switch, %67
  %68 = zext i1 %.124 to i32
  %69 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 7
  store i32 %68, i32* %69, align 4, !tbaa !58
  %70 = icmp eq i32 %53, 0
  %brmerge = or i1 %.124, %70
  %not.brmerge = xor i1 %brmerge, true
  %.125 = or i1 %61, %not.brmerge
  %71 = zext i1 %.125 to i32
  %72 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 13
  store i32 %71, i32* %72, align 4, !tbaa !59
  %73 = icmp ne %struct.__sFILE* %fp, null
  br i1 %73, label %74, label %84

; <label>:74                                      ; preds = %5
  %75 = zext i1 %.125 to i64
  %76 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %75
  %77 = load i8** %76, align 8, !tbaa !22
  %78 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([41 x i8]* @.str2, i64 0, i64 0), i8* %77) #8
  %79 = load i32* %66, align 4, !tbaa !57
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %80
  %82 = load i8** %81, align 8, !tbaa !22
  %83 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([41 x i8]* @.str3, i64 0, i64 0), i8* %82) #8
  %.pre = load i32* %63, align 4, !tbaa !56
  br label %84

; <label>:84                                      ; preds = %74, %5
  %85 = phi i32 [ %.pre, %74 ], [ %62, %5 ]
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %97, label %87

; <label>:87                                      ; preds = %84
  %88 = load float* %44, align 4, !tbaa !49
  %89 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 21
  %90 = load float* %89, align 4, !tbaa !60
  %91 = tail call float @calc_ewaldcoeff(float %88, float %90) #8
  %92 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 57
  store float %91, float* %92, align 4, !tbaa !61
  br i1 %73, label %93, label %97

; <label>:93                                      ; preds = %87
  %94 = fdiv float 1.000000e+00, %91
  %95 = fpext float %94 to double
  %96 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([52 x i8]* @.str4, i64 0, i64 0), double %95) #8
  br label %97

; <label>:97                                      ; preds = %84, %87, %93
  %98 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 5
  %99 = load i32* %98, align 4, !tbaa !62
  %100 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 44
  store i32 %99, i32* %100, align 4, !tbaa !63
  %101 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 6
  %102 = load i32* %101, align 4, !tbaa !64
  %103 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 42
  store i32 %102, i32* %103, align 4, !tbaa !65
  %104 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 42
  %105 = bitcast float* %104 to i32*
  %106 = load i32* %105, align 4, !tbaa !66
  %107 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 5
  %108 = bitcast float* %107 to i32*
  store i32 %106, i32* %108, align 4, !tbaa !17
  %109 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 45
  %110 = bitcast float* %109 to i32*
  %111 = load i32* %110, align 4, !tbaa !67
  %112 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 12
  %113 = bitcast float* %112 to i32*
  store i32 %111, i32* %113, align 4, !tbaa !68
  %114 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 37
  %115 = bitcast float* %114 to i32*
  %116 = load i32* %115, align 4, !tbaa !69
  %117 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 22
  %118 = bitcast float* %117 to i32*
  store i32 %116, i32* %118, align 4, !tbaa !70
  %119 = bitcast float* %44 to i32*
  %120 = load i32* %119, align 4, !tbaa !49
  %121 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 23
  %122 = bitcast float* %121 to i32*
  store i32 %120, i32* %122, align 4, !tbaa !18
  %123 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 38
  store i32 1, i32* %123, align 4, !tbaa !71
  %124 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 3
  store float 0.000000e+00, float* %124, align 4, !tbaa !20
  %125 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 4
  store float 0.000000e+00, float* %125, align 4, !tbaa !19
  %126 = load i32* %54, align 4, !tbaa !14
  switch i32 %126, label %207 [
    i32 2, label %.preheader25
    i32 5, label %.preheader26
    i32 6, label %.preheader26
    i32 3, label %.preheader26
    i32 4, label %.preheader26
    i32 8, label %.preheader26
    i32 9, label %.preheader26
    i32 7, label %.preheader26
  ]

.preheader25:                                     ; preds = %97
  %127 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 1
  %128 = load i32* %127, align 4, !tbaa !72
  %129 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 2
  %130 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 4
  %131 = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 8
  %132 = sext i32 %128 to i64
  br label %.outer

.outer:                                           ; preds = %.preheader25, %159
  %zsq.0.ph = phi float [ 0.000000e+00, %.preheader25 ], [ %160, %159 ]
  %i.0.ph = phi i32 [ 0, %.preheader25 ], [ %140, %159 ]
  %133 = sext i32 %i.0.ph to i64
  br label %134

; <label>:134                                     ; preds = %.outer, %._crit_edge62
  %indvars.iv114 = phi i64 [ %133, %.outer ], [ %indvars.iv.next115, %._crit_edge62 ]
  %i.0 = phi i32 [ %i.0.ph, %.outer ], [ %140, %._crit_edge62 ]
  %135 = icmp slt i64 %indvars.iv114, %132
  br i1 %135, label %136, label %161

; <label>:136                                     ; preds = %134
  %137 = load i32** %129, align 8, !tbaa !74
  %138 = getelementptr inbounds i32* %137, i64 %indvars.iv114
  %139 = load i32* %138, align 4, !tbaa !29
  %140 = add nsw i32 %i.0, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32* %137, i64 %141
  %143 = load i32* %142, align 4, !tbaa !29
  %144 = icmp slt i32 %139, %143
  br i1 %144, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %136
  %145 = load i32** %130, align 8, !tbaa !75
  %146 = load float** %131, align 8, !tbaa !76
  %147 = sext i32 %139 to i64
  %148 = sext i32 %143 to i64
  br label %149

; <label>:149                                     ; preds = %.lr.ph61, %149
  %indvars.iv112 = phi i64 [ %147, %.lr.ph61 ], [ %indvars.iv.next113, %149 ]
  %q.058 = phi float [ 0.000000e+00, %.lr.ph61 ], [ %155, %149 ]
  %150 = getelementptr inbounds i32* %145, i64 %indvars.iv112
  %151 = load i32* %150, align 4, !tbaa !29
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds float* %146, i64 %152
  %154 = load float* %153, align 4, !tbaa !21
  %155 = fadd float %q.058, %154
  %indvars.iv.next113 = add nsw i64 %indvars.iv112, 1
  %156 = icmp slt i64 %indvars.iv.next113, %148
  br i1 %156, label %149, label %._crit_edge62

._crit_edge62:                                    ; preds = %149, %136
  %q.0.lcssa = phi float [ 0.000000e+00, %136 ], [ %155, %149 ]
  %fabsf = tail call float @fabsf(float %q.0.lcssa) #6
  %157 = fpext float %fabsf to double
  %158 = fcmp ogt double %157, 1.200000e-38
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1
  br i1 %158, label %159, label %134

; <label>:159                                     ; preds = %._crit_edge62
  %160 = fadd float %zsq.0.ph, %fabsf
  br label %.outer

; <label>:161                                     ; preds = %134
  store float %zsq.0.ph, float* %124, align 4, !tbaa !20
  %162 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 0
  %163 = load i32* %162, align 4, !tbaa !77
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %.lr.ph55, label %._crit_edge56

.lr.ph55:                                         ; preds = %161
  %165 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 4
  %166 = load float** %165, align 8, !tbaa !78
  %167 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 5
  %168 = load float** %167, align 8, !tbaa !79
  %169 = sext i32 %163 to i64
  br label %170

; <label>:170                                     ; preds = %.lr.ph55, %170
  %indvars.iv110 = phi i64 [ 0, %.lr.ph55 ], [ %indvars.iv.next111, %170 ]
  %nrdf.052 = phi float [ 0.000000e+00, %.lr.ph55 ], [ %173, %170 ]
  %T.051 = phi float [ 0.000000e+00, %.lr.ph55 ], [ %177, %170 ]
  %171 = getelementptr inbounds float* %166, i64 %indvars.iv110
  %172 = load float* %171, align 4, !tbaa !21
  %173 = fadd float %nrdf.052, %172
  %174 = getelementptr inbounds float* %168, i64 %indvars.iv110
  %175 = load float* %174, align 4, !tbaa !21
  %176 = fmul float %172, %175
  %177 = fadd float %T.051, %176
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  %178 = icmp slt i64 %indvars.iv.next111, %169
  br i1 %178, label %170, label %._crit_edge56

._crit_edge56:                                    ; preds = %170, %161
  %nrdf.0.lcssa = phi float [ 0.000000e+00, %161 ], [ %173, %170 ]
  %T.0.lcssa = phi float [ 0.000000e+00, %161 ], [ %177, %170 ]
  %179 = fpext float %nrdf.0.lcssa to double
  %180 = fcmp olt double %179, 1.200000e-38
  br i1 %180, label %181, label %182

; <label>:181                                     ; preds = %._crit_edge56
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([23 x i8]* @.str5, i64 0, i64 0)) #8
  br label %182

; <label>:182                                     ; preds = %181, %._crit_edge56
  %183 = fdiv float %T.0.lcssa, %nrdf.0.lcssa
  store float %183, float* %125, align 4, !tbaa !19
  br label %207

.preheader26:                                     ; preds = %97, %97, %97, %97, %97, %97, %97, %.preheader26
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %.preheader26 ], [ 0, %97 ], [ 0, %97 ], [ 0, %97 ], [ 0, %97 ], [ 0, %97 ], [ 0, %97 ], [ 0, %97 ]
  %184 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv116, i64 %indvars.iv116
  %185 = bitcast float* %184 to i32*
  %186 = load i32* %185, align 4, !tbaa !21
  %187 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 %indvars.iv116
  %188 = bitcast float* %187 to i32*
  store i32 %186, i32* %188, align 4, !tbaa !21
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1
  %exitcond118 = icmp eq i64 %indvars.iv.next117, 3
  br i1 %exitcond118, label %189, label %.preheader26

; <label>:189                                     ; preds = %.preheader26
  %190 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 24
  %191 = load float** %190, align 8, !tbaa !80
  %192 = icmp eq float* %191, null
  br i1 %192, label %193, label %197

; <label>:193                                     ; preds = %189
  %194 = load i32* %7, align 4, !tbaa !25
  %195 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 626, i32 %194, i32 4) #8
  %196 = bitcast float** %190 to i8**
  store i8* %195, i8** %196, align 8, !tbaa !80
  %.pre119 = load i32* %54, align 4, !tbaa !14
  br label %197

; <label>:197                                     ; preds = %193, %189
  %198 = phi i32 [ %.pre119, %193 ], [ %126, %189 ]
  switch i32 %198, label %207 [
    i32 5, label %203
    i32 6, label %203
    i32 8, label %199
  ]

; <label>:199                                     ; preds = %197
  %200 = load float* %121, align 4, !tbaa !18
  %201 = load float* %117, align 4, !tbaa !70
  %202 = fcmp ogt float %200, %201
  br i1 %202, label %203, label %207

; <label>:203                                     ; preds = %197, %197, %199
  %204 = load float* %117, align 4, !tbaa !70
  %205 = load float* %121, align 4, !tbaa !18
  %206 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 0
  call void @set_shift_consts(%struct.__sFILE* %fp, float %204, float %205, float* %206, %struct.t_forcerec* %fr) #8
  br label %207

; <label>:207                                     ; preds = %197, %97, %203, %199, %182
  %208 = load i32* %60, align 4, !tbaa !55
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %217, label %210

; <label>:210                                     ; preds = %207
  %211 = call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 635, i32 %8, i32 12) #8
  %212 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 53
  %213 = bitcast [3 x float]** %212 to i8**
  store i8* %211, i8** %213, align 8, !tbaa !81
  %214 = call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 636, i32 27, i32 12) #8
  %215 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 54
  %216 = bitcast [3 x float]** %215 to i8**
  store i8* %214, i8** %216, align 8, !tbaa !82
  br label %217

; <label>:217                                     ; preds = %207, %210
  %218 = load i32* %54, align 4, !tbaa !14
  %.off4 = add i32 %218, -3
  %switch5 = icmp ult i32 %.off4, 4
  br i1 %switch5, label %219, label %223

; <label>:219                                     ; preds = %217
  %220 = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 640, i32 %8, i32 12) #8
  %221 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55
  %222 = bitcast [3 x float]** %221 to i8**
  store i8* %220, i8** %222, align 8, !tbaa !83
  br label %223

; <label>:223                                     ; preds = %217, %219
  %224 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 47
  %225 = load [3 x float]** %224, align 8, !tbaa !84
  %226 = icmp eq [3 x float]* %225, null
  br i1 %226, label %227, label %232

; <label>:227                                     ; preds = %223
  %228 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 1
  %229 = load i32* %228, align 4, !tbaa !72
  %230 = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 653, i32 %229, i32 12) #8
  %231 = bitcast [3 x float]** %224 to i8**
  store i8* %230, i8** %231, align 8, !tbaa !84
  br label %232

; <label>:232                                     ; preds = %227, %223
  %233 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 48
  %234 = load [3 x float]** %233, align 8, !tbaa !85
  %235 = icmp eq [3 x float]* %234, null
  br i1 %235, label %236, label %239

; <label>:236                                     ; preds = %232
  %237 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 655, i32 27, i32 12) #8
  %238 = bitcast [3 x float]** %233 to i8**
  store i8* %237, i8** %238, align 8, !tbaa !85
  br label %239

; <label>:239                                     ; preds = %236, %232
  %240 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %241 = load [3 x float]** %240, align 8, !tbaa !86
  %242 = icmp eq [3 x float]* %241, null
  br i1 %242, label %243, label %246

; <label>:243                                     ; preds = %239
  %244 = call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 658, i32 27, i32 12) #8
  %245 = bitcast [3 x float]** %240 to i8**
  store i8* %244, i8** %245, align 8, !tbaa !86
  br label %246

; <label>:246                                     ; preds = %243, %239
  %247 = icmp eq i32 %bMolEpot, 0
  br i1 %247, label %264, label %248

; <label>:248                                     ; preds = %246
  %249 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 59
  %250 = load i32* %249, align 4, !tbaa !87
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %264

; <label>:252                                     ; preds = %248
  %253 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 1
  %254 = load i32* %253, align 4, !tbaa !72
  store i32 %254, i32* %249, align 4, !tbaa !87
  %255 = call i32* @make_invblock(%struct.t_block* %6, i32 %8) #8
  %256 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 60
  store i32* %255, i32** %256, align 8, !tbaa !88
  %257 = load i32* %249, align 4, !tbaa !87
  %258 = call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 663, i32 %257, i32 4) #8
  %259 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 61
  %260 = bitcast float** %259 to i8**
  store i8* %258, i8** %260, align 8, !tbaa !89
  %261 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 12
  %262 = load i32* %261, align 4, !tbaa !90
  %263 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 62
  store i32 %262, i32* %263, align 4, !tbaa !91
  br label %264

; <label>:264                                     ; preds = %246, %252, %248
  %265 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 65
  %266 = load float** %265, align 8, !tbaa !23
  %267 = icmp eq float* %266, null
  br i1 %267, label %268, label %347

; <label>:268                                     ; preds = %264
  %269 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 2
  %270 = load i32* %269, align 4, !tbaa !92
  %271 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63
  store i32 %270, i32* %271, align 4, !tbaa !24
  %272 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 3
  %273 = load i32** %272, align 8, !tbaa !94
  %274 = load i32* %273, align 4, !tbaa !29
  %275 = icmp eq i32 %274, 14
  %276 = zext i1 %275 to i32
  %277 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 64
  store i32 %276, i32* %277, align 4, !tbaa !28
  br i1 %275, label %278, label %314

; <label>:278                                     ; preds = %268
  %279 = mul nsw i32 %270, 3
  %280 = mul nsw i32 %279, %270
  %281 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 102, i32 %280, i32 4) #8
  %282 = bitcast i8* %281 to float*
  %283 = icmp sgt i32 %270, 0
  br i1 %283, label %.preheader1.lr.ph.i, label %mk_nbfp.exit

.preheader1.lr.ph.i:                              ; preds = %278
  %284 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 4
  %285 = add i32 %270, -1
  %286 = zext i32 %285 to i64
  %287 = add nuw nsw i64 %286, 1
  %288 = sext i32 %270 to i64
  %289 = load %union.t_iparams** %284, align 8, !tbaa !95
  br label %.lr.ph9.i

.lr.ph9.i:                                        ; preds = %312, %.preheader1.lr.ph.i
  %indvars.iv27.i = phi i64 [ 0, %.preheader1.lr.ph.i ], [ %indvars.iv.next28.i, %312 ]
  %k.013.i = phi i64 [ 0, %.preheader1.lr.ph.i ], [ %313, %312 ]
  %290 = mul nsw i64 %indvars.iv27.i, %288
  %sext.i = shl i64 %k.013.i, 32
  %291 = ashr exact i64 %sext.i, 32
  br label %292

; <label>:292                                     ; preds = %292, %.lr.ph9.i
  %indvars.iv23.i = phi i64 [ 0, %.lr.ph9.i ], [ %indvars.iv.next24.i, %292 ]
  %indvars.iv21.i = phi i64 [ %291, %.lr.ph9.i ], [ %indvars.iv.next22.i, %292 ]
  %293 = getelementptr inbounds %union.t_iparams* %289, i64 %indvars.iv21.i, i32 0, i32 0
  %294 = bitcast float* %293 to i32*
  %295 = load i32* %294, align 4, !tbaa !96
  %296 = add nsw i64 %indvars.iv23.i, %290
  %297 = mul nsw i64 %296, 3
  %298 = add nsw i64 %297, 1
  %299 = getelementptr inbounds float* %282, i64 %298
  %300 = bitcast float* %299 to i32*
  store i32 %295, i32* %300, align 4, !tbaa !21
  %301 = getelementptr inbounds %union.t_iparams* %289, i64 %indvars.iv21.i, i32 0, i32 1
  %302 = bitcast float* %301 to i32*
  %303 = load i32* %302, align 4, !tbaa !98
  %304 = add nsw i64 %297, 2
  %305 = getelementptr inbounds float* %282, i64 %304
  %306 = bitcast float* %305 to i32*
  store i32 %303, i32* %306, align 4, !tbaa !21
  %307 = getelementptr inbounds %union.t_iparams* %289, i64 %indvars.iv21.i, i32 0, i32 2
  %308 = bitcast float* %307 to i32*
  %309 = load i32* %308, align 4, !tbaa !99
  %310 = getelementptr inbounds float* %282, i64 %297
  %311 = bitcast float* %310 to i32*
  store i32 %309, i32* %311, align 4, !tbaa !21
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1
  %indvars.iv.next22.i = add nsw i64 %indvars.iv21.i, 1
  %lftr.wideiv102 = trunc i64 %indvars.iv23.i to i32
  %exitcond103 = icmp eq i32 %lftr.wideiv102, %285
  br i1 %exitcond103, label %312, label %292

; <label>:312                                     ; preds = %292
  %313 = add nsw i64 %287, %291
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1
  %lftr.wideiv104 = trunc i64 %indvars.iv27.i to i32
  %exitcond105 = icmp eq i32 %lftr.wideiv104, %285
  br i1 %exitcond105, label %mk_nbfp.exit, label %.lr.ph9.i

; <label>:314                                     ; preds = %268
  %315 = shl i32 %270, 1
  %316 = mul nsw i32 %315, %270
  %317 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 112, i32 %316, i32 4) #8
  %318 = bitcast i8* %317 to float*
  %319 = icmp sgt i32 %270, 0
  br i1 %319, label %.preheader.lr.ph.i, label %mk_nbfp.exit

.preheader.lr.ph.i:                               ; preds = %314
  %320 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 4
  %321 = add i32 %270, -1
  %322 = zext i32 %321 to i64
  %323 = add nuw nsw i64 %322, 1
  %324 = sext i32 %270 to i64
  %325 = load %union.t_iparams** %320, align 8, !tbaa !95
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %345, %.preheader.lr.ph.i
  %indvars.iv17.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next18.i, %345 ]
  %k.26.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %346, %345 ]
  %326 = mul nsw i64 %indvars.iv17.i, %324
  %sext31.i = shl i64 %k.26.i, 32
  %327 = ashr exact i64 %sext31.i, 32
  br label %328

; <label>:328                                     ; preds = %328, %.lr.ph.i
  %indvars.iv15.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next16.i, %328 ]
  %indvars.iv.i = phi i64 [ %327, %.lr.ph.i ], [ %indvars.iv.next.i, %328 ]
  %329 = getelementptr inbounds %union.t_iparams* %325, i64 %indvars.iv.i, i32 0, i32 0
  %330 = bitcast float* %329 to i32*
  %331 = load i32* %330, align 4, !tbaa !100
  %332 = add nsw i64 %indvars.iv15.i, %326
  %333 = trunc i64 %332 to i32
  %334 = shl nsw i32 %333, 1
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds float* %318, i64 %335
  %337 = bitcast float* %336 to i32*
  store i32 %331, i32* %337, align 4, !tbaa !21
  %338 = getelementptr inbounds %union.t_iparams* %325, i64 %indvars.iv.i, i32 0, i32 1
  %339 = bitcast float* %338 to i32*
  %340 = load i32* %339, align 4, !tbaa !102
  %341 = or i32 %334, 1
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds float* %318, i64 %342
  %344 = bitcast float* %343 to i32*
  store i32 %340, i32* %344, align 4, !tbaa !21
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %lftr.wideiv106 = trunc i64 %indvars.iv15.i to i32
  %exitcond107 = icmp eq i32 %lftr.wideiv106, %321
  br i1 %exitcond107, label %345, label %328

; <label>:345                                     ; preds = %328
  %346 = add nsw i64 %323, %327
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1
  %lftr.wideiv108 = trunc i64 %indvars.iv17.i to i32
  %exitcond109 = icmp eq i32 %lftr.wideiv108, %321
  br i1 %exitcond109, label %mk_nbfp.exit, label %.lr.ph.i

mk_nbfp.exit:                                     ; preds = %345, %312, %278, %314
  %nbfp.0.i = phi float* [ %318, %314 ], [ %282, %278 ], [ %282, %312 ], [ %318, %345 ]
  store float* %nbfp.0.i, float** %265, align 8, !tbaa !23
  br label %347

; <label>:347                                     ; preds = %mk_nbfp.exit, %264
  %348 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 9
  %349 = bitcast i32** %348 to i64*
  %350 = load i64* %349, align 8, !tbaa !103
  %351 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 66
  %352 = bitcast i32** %351 to i64*
  store i64 %350, i64* %352, align 8, !tbaa !104
  %353 = bitcast float* %46 to i32*
  %354 = load i32* %353, align 4, !tbaa !50
  %355 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 26
  %356 = bitcast float* %355 to i32*
  store i32 %354, i32* %356, align 4, !tbaa !105
  %357 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 40
  %358 = load float* %357, align 4, !tbaa !106
  %359 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 25
  store float %358, float* %359, align 4, !tbaa !107
  %360 = load i32* %57, align 4, !tbaa !54
  %361 = bitcast i32 %354 to float
  switch i32 %360, label %362 [
    i32 0, label %380
    i32 3, label %380
  ]

; <label>:362                                     ; preds = %347
  %363 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 64
  %364 = load i32* %363, align 4, !tbaa !28
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %380

; <label>:366                                     ; preds = %362
  %367 = fcmp ult float %358, %361
  br i1 %367, label %371, label %368

; <label>:368                                     ; preds = %366
  %369 = fpext float %358 to double
  %370 = fpext float %361 to double
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([37 x i8]* @.str14, i64 0, i64 0), double %369, double %370) #8
  br label %371

; <label>:371                                     ; preds = %366, %368
  br i1 %73, label %.thread, label %.critedge

.thread:                                          ; preds = %371
  %372 = load i32* %54, align 4, !tbaa !14
  %373 = icmp eq i32 %372, 7
  %374 = select i1 %373, i8* getelementptr inbounds ([9 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str17, i64 0, i64 0)
  %375 = load float* %359, align 4, !tbaa !107
  %376 = fpext float %375 to double
  %377 = load float* %355, align 4, !tbaa !105
  %378 = fpext float %377 to double
  %379 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([53 x i8]* @.str15, i64 0, i64 0), i8* %374, double %376, double %378) #8
  %.pre120 = load float* %355, align 4, !tbaa !105
  br label %381

; <label>:380                                     ; preds = %347, %347, %362
  br i1 %73, label %._crit_edge122, label %.critedge

._crit_edge122:                                   ; preds = %380
  %.pre123 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 64
  br label %381

; <label>:381                                     ; preds = %._crit_edge122, %.thread
  %.pre-phi = phi i32* [ %.pre123, %._crit_edge122 ], [ %363, %.thread ]
  %382 = phi float [ %361, %._crit_edge122 ], [ %.pre120, %.thread ]
  %383 = load float* %41, align 4, !tbaa !48
  %384 = fpext float %383 to double
  %385 = load float* %121, align 4, !tbaa !18
  %386 = fpext float %385 to double
  %387 = load i32* %.pre-phi, align 4, !tbaa !28
  %388 = icmp ne i32 %387, 0
  %389 = select i1 %388, i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0)
  %390 = fpext float %382 to double
  %391 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([44 x i8]* @.str18, i64 0, i64 0), double %384, double %386, i8* %389, double %390) #8
  br label %.critedge

.critedge:                                        ; preds = %371, %381, %380
  %392 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 43
  %393 = load i32* %392, align 4, !tbaa !108
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %396, label %395

; <label>:395                                     ; preds = %.critedge
  call void @set_avcsix(%struct.__sFILE* undef, %struct.t_forcerec* %fr, %struct.t_mdatoms* %mdatoms) #10
  br label %396

; <label>:396                                     ; preds = %.critedge, %395
  %397 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 64
  %398 = load i32* %397, align 4, !tbaa !28
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %set_bham_b_max.exit, label %400

; <label>:400                                     ; preds = %396
  br i1 %73, label %401, label %403

; <label>:401                                     ; preds = %400
  %402 = call i64 @fwrite(i8* getelementptr inbounds ([54 x i8]* @.str60, i64 0, i64 0), i64 53, i64 1, %struct.__sFILE* %fp) #7
  br label %403

; <label>:403                                     ; preds = %401, %400
  %404 = load float** %265, align 8, !tbaa !23
  %405 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63
  %406 = load i32* %405, align 4, !tbaa !24
  %407 = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 11
  %408 = load i32** %407, align 8, !tbaa !27
  %409 = load i32* %7, align 4, !tbaa !25
  %410 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 27
  store float 0.000000e+00, float* %410, align 4, !tbaa !109
  %411 = icmp sgt i32 %409, 0
  br i1 %411, label %.lr.ph10.i, label %._crit_edge11.i

.lr.ph10.i:                                       ; preds = %403
  %412 = add i32 %409, -1
  br label %413

; <label>:413                                     ; preds = %._crit_edge.i, %.lr.ph10.i
  %indvars.iv13.i = phi i64 [ 0, %.lr.ph10.i ], [ %indvars.iv.next14.i, %._crit_edge.i ]
  %first.08.i = phi i32 [ 1, %.lr.ph10.i ], [ %.first.1.i, %._crit_edge.i ]
  %bmin.06.i = phi float [ -1.000000e+00, %.lr.ph10.i ], [ %.bmin.1.i, %._crit_edge.i ]
  %414 = getelementptr inbounds i32* %408, i64 %indvars.iv13.i
  %415 = load i32* %414, align 4, !tbaa !29
  %416 = icmp slt i32 %415, %406
  br i1 %416, label %.lr.ph.i10, label %417

; <label>:417                                     ; preds = %413
  %418 = trunc i64 %indvars.iv13.i to i32
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([32 x i8]* @.str61, i64 0, i64 0), i32 %418, i32 %415, i32 %406) #8
  br label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %417, %413
  %419 = mul nsw i32 %415, %406
  br label %420

; <label>:420                                     ; preds = %436, %.lr.ph.i10
  %indvars.iv.i11 = phi i64 [ 0, %.lr.ph.i10 ], [ %indvars.iv.next.i12, %436 ]
  %first.14.i = phi i32 [ %first.08.i, %.lr.ph.i10 ], [ %.first.1.i, %436 ]
  %bmin.13.i = phi float [ %bmin.06.i, %.lr.ph.i10 ], [ %.bmin.1.i, %436 ]
  %421 = getelementptr inbounds i32* %408, i64 %indvars.iv.i11
  %422 = load i32* %421, align 4, !tbaa !29
  %423 = icmp slt i32 %422, %406
  br i1 %423, label %426, label %424

; <label>:424                                     ; preds = %420
  %425 = trunc i64 %indvars.iv.i11 to i32
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([32 x i8]* @.str61, i64 0, i64 0), i32 %425, i32 %422, i32 %406) #8
  br label %426

; <label>:426                                     ; preds = %424, %420
  %427 = add nsw i32 %422, %419
  %428 = mul nsw i32 %427, 3
  %429 = add nsw i32 %428, 2
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds float* %404, i64 %430
  %432 = load float* %431, align 4, !tbaa !21
  %433 = load float* %410, align 4, !tbaa !109
  %434 = fcmp ogt float %432, %433
  br i1 %434, label %435, label %436

; <label>:435                                     ; preds = %426
  store float %432, float* %410, align 4, !tbaa !109
  br label %436

; <label>:436                                     ; preds = %435, %426
  %437 = phi float [ %432, %435 ], [ %433, %426 ]
  %438 = fcmp olt float %432, %bmin.13.i
  %439 = icmp ne i32 %first.14.i, 0
  %or.cond.i = or i1 %439, %438
  %.bmin.1.i = select i1 %or.cond.i, float %432, float %bmin.13.i
  %.first.1.i = select i1 %or.cond.i, i32 0, i32 %first.14.i
  %indvars.iv.next.i12 = add nuw nsw i64 %indvars.iv.i11, 1
  %lftr.wideiv98 = trunc i64 %indvars.iv.i11 to i32
  %exitcond99 = icmp eq i32 %lftr.wideiv98, %412
  br i1 %exitcond99, label %._crit_edge.i, label %420

._crit_edge.i:                                    ; preds = %436
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %lftr.wideiv100 = trunc i64 %indvars.iv13.i to i32
  %exitcond101 = icmp eq i32 %lftr.wideiv100, %412
  br i1 %exitcond101, label %._crit_edge11.i, label %413

._crit_edge11.i:                                  ; preds = %._crit_edge.i, %403
  %440 = phi float [ 0.000000e+00, %403 ], [ %437, %._crit_edge.i ]
  %bmin.0.lcssa.i = phi float [ -1.000000e+00, %403 ], [ %.bmin.1.i, %._crit_edge.i ]
  br i1 %73, label %441, label %set_bham_b_max.exit

; <label>:441                                     ; preds = %._crit_edge11.i
  %442 = fpext float %bmin.0.lcssa.i to double
  %443 = fpext float %440 to double
  %444 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([43 x i8]* @.str62, i64 0, i64 0), double %442, double %443) #8
  br label %set_bham_b_max.exit

set_bham_b_max.exit:                              ; preds = %441, %._crit_edge11.i, %396
  call void @update_forcerec(%struct.__sFILE* %fp, %struct.t_forcerec* %fr, [3 x float]* %box) #10
  %445 = load i32* %72, align 4, !tbaa !59
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %450

; <label>:447                                     ; preds = %set_bham_b_max.exit
  %448 = load i32* %66, align 4, !tbaa !57
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %479, label %450

; <label>:450                                     ; preds = %447, %set_bham_b_max.exit
  %451 = load i32* %54, align 4, !tbaa !14
  %.off6 = add i32 %451, -3
  %switch7 = icmp ult i32 %.off6, 4
  br i1 %switch7, label %452, label %470

; <label>:452                                     ; preds = %450
  %453 = load i32* %66, align 4, !tbaa !57
  store i32 0, i32* %72, align 4, !tbaa !59
  store i32 0, i32* %66, align 4, !tbaa !57
  %454 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 15
  store float 1.000000e+00, float* %454, align 4, !tbaa !110
  %455 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %456 = load i32* %455, align 4, !tbaa !111
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %458, label %462

; <label>:458                                     ; preds = %452
  %459 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %460 = load i32* %459, align 4, !tbaa !113
  %461 = icmp eq i32 %460, 0
  br label %462

; <label>:462                                     ; preds = %458, %452
  %463 = phi i1 [ false, %452 ], [ %461, %458 ]
  %464 = zext i1 %463 to i32
  call void @make_tables(%struct.__sFILE* %fp, %struct.t_forcerec* %fr, i32 %464, i8* %tabfn) #8
  store i32 %445, i32* %72, align 4, !tbaa !59
  store i32 %453, i32* %66, align 4, !tbaa !57
  %465 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 20
  %466 = bitcast float** %465 to i64*
  %467 = load i64* %466, align 8, !tbaa !114
  %468 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 21
  %469 = bitcast float** %468 to i64*
  store i64 %467, i64* %469, align 8, !tbaa !115
  store float* null, float** %465, align 8, !tbaa !114
  br label %470

; <label>:470                                     ; preds = %450, %462
  %471 = load float* %51, align 4, !tbaa !51
  %472 = fpext float %471 to double
  %473 = fadd double %472, 6.000000e-01
  %474 = fcmp ogt double %473, 1.000000e+00
  br i1 %474, label %475, label %476

; <label>:475                                     ; preds = %470
  %phitmp1 = fptrunc double %473 to float
  br label %476

; <label>:476                                     ; preds = %470, %475
  %477 = phi float [ %phitmp1, %475 ], [ 1.000000e+00, %470 ]
  %478 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 15
  store float %477, float* %478, align 4, !tbaa !110
  br label %499

; <label>:479                                     ; preds = %447
  %480 = load i32* %15, align 4, !tbaa !36
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %497, label %482

; <label>:482                                     ; preds = %479
  %483 = load float* %51, align 4, !tbaa !51
  %484 = fpext float %483 to double
  %485 = fcmp olt double %484, 1.200000e-38
  br i1 %485, label %486, label %490

; <label>:486                                     ; preds = %482
  %487 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 15
  store float 5.000000e+00, float* %487, align 4, !tbaa !110
  br i1 %73, label %488, label %499

; <label>:488                                     ; preds = %486
  %489 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([117 x i8]* @.str23, i64 0, i64 0), double 5.000000e+00, i8* getelementptr inbounds ([17 x i8]* @.str21, i64 0, i64 0)) #8
  br label %499

; <label>:490                                     ; preds = %482
  %491 = fadd double %484, 6.000000e-01
  %492 = fcmp ogt double %491, 1.000000e+00
  br i1 %492, label %493, label %494

; <label>:493                                     ; preds = %490
  %phitmp = fptrunc double %491 to float
  br label %494

; <label>:494                                     ; preds = %490, %493
  %495 = phi float [ %phitmp, %493 ], [ 1.000000e+00, %490 ]
  %496 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 15
  store float %495, float* %496, align 4, !tbaa !110
  br label %499

; <label>:497                                     ; preds = %479
  %498 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 15
  store float 1.000000e+00, float* %498, align 4, !tbaa !110
  br label %499

; <label>:499                                     ; preds = %497, %486, %488, %494, %476
  %500 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %501 = load i32* %500, align 4, !tbaa !111
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %503, label %507

; <label>:503                                     ; preds = %499
  %504 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %505 = load i32* %504, align 4, !tbaa !113
  %506 = icmp eq i32 %505, 0
  br label %507

; <label>:507                                     ; preds = %503, %499
  %508 = phi i1 [ false, %499 ], [ %506, %503 ]
  %509 = zext i1 %508 to i32
  call void @make_tables(%struct.__sFILE* %fp, %struct.t_forcerec* %fr, i32 %509, i8* %tabfn) #8
  %510 = load i32* %54, align 4, !tbaa !14
  %.off8 = add i32 %510, -3
  %switch9 = icmp ult i32 %.off8, 4
  br i1 %switch9, label %511, label %517

; <label>:511                                     ; preds = %507
  %512 = load i32* %72, align 4, !tbaa !59
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %514, label %523

; <label>:514                                     ; preds = %511
  %515 = load i32* %66, align 4, !tbaa !57
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %517, label %523

; <label>:517                                     ; preds = %507, %514
  %518 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 20
  %519 = bitcast float** %518 to i64*
  %520 = load i64* %519, align 8, !tbaa !114
  %521 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 21
  %522 = bitcast float** %521 to i64*
  store i64 %520, i64* %522, align 8, !tbaa !115
  br label %523

; <label>:523                                     ; preds = %514, %511, %517
  %524 = load i32* %397, align 4, !tbaa !28
  %525 = icmp ne i32 %524, 0
  %526 = select i1 %525, i32 16, i32 12
  %527 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 16
  %528 = load i32* %527, align 4, !tbaa !116
  %529 = shl i32 %528, 4
  %530 = add i32 %529, 16
  %531 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 769, i32 %530, i32 4) #8
  %532 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 18
  %533 = bitcast float** %532 to i8**
  store i8* %531, i8** %533, align 8, !tbaa !117
  %534 = add nsw i32 %526, -4
  %535 = load i32* %527, align 4, !tbaa !116
  %536 = add nsw i32 %535, 1
  %537 = shl nsw i32 %534, 2
  %538 = mul i32 %537, %536
  %539 = call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 770, i32 %538, i32 4) #8
  %540 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 19
  %541 = bitcast float** %540 to i8**
  store i8* %539, i8** %541, align 8, !tbaa !118
  %542 = load i32* %527, align 4, !tbaa !116
  %543 = icmp slt i32 %542, 0
  %544 = bitcast i8* %539 to float*
  br i1 %543, label %._crit_edge50, label %.preheader23.lr.ph

.preheader23.lr.ph:                               ; preds = %523
  %545 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 20
  %546 = load float** %545, align 8, !tbaa !114
  %547 = load float** %532, align 8, !tbaa !117
  %548 = sext i32 %534 to i64
  %549 = zext i32 %526 to i64
  %550 = sext i32 %542 to i64
  br label %.preheader23

.preheader23:                                     ; preds = %._crit_edge, %.preheader23.lr.ph
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %._crit_edge ], [ 0, %.preheader23.lr.ph ]
  %551 = mul nsw i64 %indvars.iv96, %549
  %552 = trunc i64 %indvars.iv96 to i32
  %553 = shl i32 %552, 2
  %554 = sext i32 %553 to i64
  br label %557

.lr.ph:                                           ; preds = %557
  %555 = add nsw i64 %551, 4
  %556 = mul nsw i64 %indvars.iv96, %548
  br label %565

; <label>:557                                     ; preds = %557, %.preheader23
  %indvars.iv89 = phi i64 [ 0, %.preheader23 ], [ %indvars.iv.next90, %557 ]
  %558 = add nuw nsw i64 %indvars.iv89, %551
  %559 = getelementptr inbounds float* %546, i64 %558
  %560 = bitcast float* %559 to i32*
  %561 = load i32* %560, align 4, !tbaa !21
  %562 = add nsw i64 %indvars.iv89, %554
  %563 = getelementptr inbounds float* %547, i64 %562
  %564 = bitcast float* %563 to i32*
  store i32 %561, i32* %564, align 4, !tbaa !21
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  %exitcond91 = icmp eq i64 %indvars.iv.next90, 4
  br i1 %exitcond91, label %.lr.ph, label %557

; <label>:565                                     ; preds = %.lr.ph, %565
  %indvars.iv93 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next94, %565 ]
  %566 = add nsw i64 %555, %indvars.iv93
  %567 = getelementptr inbounds float* %546, i64 %566
  %568 = bitcast float* %567 to i32*
  %569 = load i32* %568, align 4, !tbaa !21
  %570 = add nsw i64 %indvars.iv93, %556
  %571 = getelementptr inbounds float* %544, i64 %570
  %572 = bitcast float* %571 to i32*
  store i32 %569, i32* %572, align 4, !tbaa !21
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  %573 = icmp slt i64 %indvars.iv.next94, %548
  br i1 %573, label %565, label %._crit_edge

._crit_edge:                                      ; preds = %565
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  %574 = icmp slt i64 %indvars.iv96, %550
  br i1 %574, label %.preheader23, label %._crit_edge50

._crit_edge50:                                    ; preds = %._crit_edge, %523
  %575 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 46
  %576 = load i32** %575, align 8, !tbaa !119
  %577 = icmp eq i32* %576, null
  br i1 %577, label %578, label %check_solvent.exit

; <label>:578                                     ; preds = %._crit_edge50
  %579 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0
  br i1 %73, label %580, label %582

; <label>:580                                     ; preds = %578
  %581 = call i64 @fwrite(i8* getelementptr inbounds ([48 x i8]* @.str63, i64 0, i64 0), i64 47, i64 1, %struct.__sFILE* %fp) #7
  br label %582

; <label>:582                                     ; preds = %580, %578
  %583 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 1
  %584 = load i32* %583, align 4, !tbaa !72
  %585 = add nsw i32 %584, 1
  %586 = call i8* @save_calloc(i8* getelementptr inbounds ([17 x i8]* @.str64, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 144, i32 %585, i32 4) #8
  %587 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 45
  %588 = bitcast i32** %587 to i8**
  store i8* %586, i8** %588, align 8, !tbaa !120
  %589 = load i32* %583, align 4, !tbaa !72
  %590 = mul i32 %589, 3
  %591 = add i32 %590, 3
  %592 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str65, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 145, i32 %591, i32 4) #8
  %593 = bitcast i32** %575 to i8**
  store i8* %592, i8** %593, align 8, !tbaa !119
  %594 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 3
  %595 = load i32* %594, align 4, !tbaa !121
  %596 = call i32* @make_invblock(%struct.t_block* %579, i32 %595) #8
  %597 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 1
  br i1 %73, label %598, label %.preheader38.i

; <label>:598                                     ; preds = %582
  %599 = load i32* %597, align 4, !tbaa !72
  %600 = load i32* %583, align 4, !tbaa !72
  %601 = load i32* %594, align 4, !tbaa !121
  %602 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([55 x i8]* @.str66, i64 0, i64 0), i32 %599, i32 %600, i32 %601) #8
  br label %.preheader38.i

.preheader38.i:                                   ; preds = %598, %582
  %603 = load i32* %597, align 4, !tbaa !72
  %604 = icmp sgt i32 %603, 0
  br i1 %604, label %.lr.ph65.lr.ph.i, label %.outer._crit_edge.i

.lr.ph65.lr.ph.i:                                 ; preds = %.preheader38.i
  %605 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 2
  %606 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 4
  %607 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1
  %608 = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 9
  %609 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63
  %610 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 9, i32 2
  %611 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 9, i32 4
  br label %.lr.ph65.i

..loopexit37_crit_edge.i:                         ; preds = %995
  %.pre.i = load i32* %597, align 4, !tbaa !72
  br label %.loopexit37.i

.loopexit37.i:                                    ; preds = %990, %..loopexit37_crit_edge.i
  %612 = phi i32 [ %.pre.i, %..loopexit37_crit_edge.i ], [ %615, %990 ]
  %613 = icmp slt i32 %618, %612
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %613, label %614, label %.outer._crit_edge.i

; <label>:614                                     ; preds = %.lr.ph65.i, %.loopexit37.i
  %indvars.iv = phi i64 [ %989, %.lr.ph65.i ], [ %indvars.iv.next, %.loopexit37.i ]
  %615 = phi i32 [ %987, %.lr.ph65.i ], [ %612, %.loopexit37.i ]
  %i.064.i = phi i32 [ %i.0.ph119.i, %.lr.ph65.i ], [ %618, %.loopexit37.i ]
  %616 = getelementptr inbounds i32* %988, i64 %indvars.iv
  %617 = load i32* %616, align 4, !tbaa !29
  %618 = add nsw i32 %i.064.i, 1
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds i32* %988, i64 %619
  %621 = load i32* %620, align 4, !tbaa !29
  %622 = sub nsw i32 %621, %617
  %j.054.i = add i32 %617, 1
  %623 = icmp slt i32 %j.054.i, %621
  br i1 %623, label %.lr.ph59.i, label %._crit_edge60.i

.lr.ph59.i:                                       ; preds = %614
  %624 = sext i32 %j.054.i to i64
  %625 = add i32 %621, -1
  br label %626

; <label>:626                                     ; preds = %642, %.lr.ph59.i
  %indvars.iv153.i = phi i64 [ %624, %.lr.ph59.i ], [ %indvars.iv.next154.i, %642 ]
  %j.057.i = phi i32 [ %j.054.i, %.lr.ph59.i ], [ %j.0.i, %642 ]
  %j.0.in56.i = phi i32 [ %617, %.lr.ph59.i ], [ %645, %642 ]
  %bOneCG.055.i = phi i32 [ 1, %.lr.ph59.i ], [ %644, %642 ]
  %627 = icmp eq i32 %bOneCG.055.i, 0
  br i1 %627, label %642, label %628

; <label>:628                                     ; preds = %626
  %629 = load i32** %606, align 8, !tbaa !75
  %630 = getelementptr inbounds i32* %629, i64 %indvars.iv153.i
  %631 = load i32* %630, align 4, !tbaa !29
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds i32* %596, i64 %632
  %634 = load i32* %633, align 4, !tbaa !29
  %635 = sext i32 %j.0.in56.i to i64
  %636 = getelementptr inbounds i32* %629, i64 %635
  %637 = load i32* %636, align 4, !tbaa !29
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds i32* %596, i64 %638
  %640 = load i32* %639, align 4, !tbaa !29
  %641 = icmp eq i32 %634, %640
  br label %642

; <label>:642                                     ; preds = %628, %626
  %643 = phi i1 [ false, %626 ], [ %641, %628 ]
  %644 = zext i1 %643 to i32
  %j.0.i = add nsw i32 %j.057.i, 1
  %indvars.iv.next154.i = add nsw i64 %indvars.iv153.i, 1
  %645 = trunc i64 %indvars.iv153.i to i32
  %exitcond156.i = icmp eq i32 %j.057.i, %625
  br i1 %exitcond156.i, label %._crit_edge60.i, label %626

._crit_edge60.i:                                  ; preds = %642, %614
  %bOneCG.0.lcssa.i = phi i32 [ 1, %614 ], [ %644, %642 ]
  %646 = load i32* %123, align 4, !tbaa !71
  %647 = icmp ne i32 %646, 0
  %648 = icmp ne i32 %bOneCG.0.lcssa.i, 0
  %or.cond.i15 = and i1 %648, %647
  %649 = icmp sgt i32 %622, 1
  %or.cond3.i = and i1 %649, %or.cond.i15
  br i1 %or.cond3.i, label %650, label %990

; <label>:650                                     ; preds = %._crit_edge60.i
  %651 = trunc i64 %indvars.iv to i32
  %652 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 168, i32 %622, i32 4) #8
  %653 = bitcast i8* %652 to i32*
  %654 = icmp sgt i32 %621, %617
  br i1 %654, label %.preheader35.lr.ph.i, label %.critedge.thread.i

.preheader35.lr.ph.i:                             ; preds = %650
  %655 = icmp sgt i32 %622, 0
  %656 = add i32 %622, -1
  %657 = zext i32 %656 to i64
  %658 = shl nuw nsw i64 %657, 2
  %659 = add nuw nsw i64 %658, 4
  %660 = sext i32 %617 to i64
  %661 = sext i32 %621 to i64
  br label %.preheader35.i

.loopexit34.i:                                    ; preds = %694, %.preheader33.i
  %bAE.1.lcssa.i = phi i32 [ %bAE.081.i, %.preheader33.i ], [ %696, %694 ]
  %662 = icmp slt i64 %indvars.iv.next170.i, %661
  %663 = icmp ne i32 %bAE.1.lcssa.i, 0
  %or.cond15.i = and i1 %662, %663
  br i1 %or.cond15.i, label %.preheader35.i, label %.critedge.i

.preheader35.i:                                   ; preds = %.loopexit34.i, %.preheader35.lr.ph.i
  %indvars.iv169.i = phi i64 [ %660, %.preheader35.lr.ph.i ], [ %indvars.iv.next170.i, %.loopexit34.i ]
  %bAE.081.i = phi i32 [ 1, %.preheader35.lr.ph.i ], [ %bAE.1.lcssa.i, %.loopexit34.i ]
  br i1 %655, label %.lr.ph70.i, label %664

.lr.ph70.i:                                       ; preds = %.preheader35.i
  call void @llvm.memset.p0i8.i64(i8* %652, i8 0, i64 %659, i32 4, i1 false) #7
  br label %664

; <label>:664                                     ; preds = %.lr.ph70.i, %.preheader35.i
  %665 = load i32** %610, align 8, !tbaa !74
  %666 = getelementptr inbounds i32* %665, i64 %indvars.iv169.i
  %667 = load i32* %666, align 4, !tbaa !29
  %indvars.iv.next170.i = add nsw i64 %indvars.iv169.i, 1
  %668 = getelementptr inbounds i32* %665, i64 %indvars.iv.next170.i
  %669 = load i32* %668, align 4, !tbaa !29
  %670 = icmp slt i32 %667, %669
  br i1 %670, label %.lr.ph74.i, label %.preheader33.i

.lr.ph74.i:                                       ; preds = %664
  %671 = sext i32 %667 to i64
  br label %672

.preheader33.i:                                   ; preds = %680, %664
  br i1 %655, label %.lr.ph78.i, label %.loopexit34.i

; <label>:672                                     ; preds = %680, %.lr.ph74.i
  %673 = phi i32* [ %665, %.lr.ph74.i ], [ %681, %680 ]
  %indvars.iv164.i = phi i64 [ %671, %.lr.ph74.i ], [ %indvars.iv.next165.i, %680 ]
  %674 = load i32** %611, align 8, !tbaa !75
  %675 = getelementptr inbounds i32* %674, i64 %indvars.iv164.i
  %676 = load i32* %675, align 4, !tbaa !29
  %677 = icmp sge i32 %676, %617
  %678 = icmp slt i32 %676, %621
  %or.cond28.i = and i1 %677, %678
  br i1 %or.cond28.i, label %680, label %679

; <label>:679                                     ; preds = %672
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([65 x i8]* @.str68, i64 0, i64 0), i32 %676, i32 %617, i32 %621, i32 %651) #8
  %.pre189.i = load i32** %610, align 8, !tbaa !74
  br label %680

; <label>:680                                     ; preds = %679, %672
  %681 = phi i32* [ %673, %672 ], [ %.pre189.i, %679 ]
  %682 = sub nsw i32 %676, %617
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds i32* %653, i64 %683
  store i32 1, i32* %684, align 4, !tbaa !29
  %indvars.iv.next165.i = add nsw i64 %indvars.iv164.i, 1
  %685 = getelementptr inbounds i32* %681, i64 %indvars.iv.next170.i
  %686 = load i32* %685, align 4, !tbaa !29
  %687 = sext i32 %686 to i64
  %688 = icmp slt i64 %indvars.iv.next165.i, %687
  br i1 %688, label %672, label %.preheader33.i

.lr.ph78.i:                                       ; preds = %.preheader33.i, %694
  %indvars.iv166.i = phi i64 [ %indvars.iv.next167.i, %694 ], [ 0, %.preheader33.i ]
  %bAE.177.i = phi i32 [ %696, %694 ], [ %bAE.081.i, %.preheader33.i ]
  %689 = icmp eq i32 %bAE.177.i, 0
  br i1 %689, label %694, label %690

; <label>:690                                     ; preds = %.lr.ph78.i
  %691 = getelementptr inbounds i32* %653, i64 %indvars.iv166.i
  %692 = load i32* %691, align 4, !tbaa !29
  %693 = icmp ne i32 %692, 0
  br label %694

; <label>:694                                     ; preds = %690, %.lr.ph78.i
  %695 = phi i1 [ false, %.lr.ph78.i ], [ %693, %690 ]
  %696 = zext i1 %695 to i32
  %indvars.iv.next167.i = add nuw nsw i64 %indvars.iv166.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv166.i to i32
  %exitcond88 = icmp eq i32 %lftr.wideiv, %656
  br i1 %exitcond88, label %.loopexit34.i, label %.lr.ph78.i

.critedge.i:                                      ; preds = %.loopexit34.i
  br i1 %663, label %.critedge.thread.i, label %975

.critedge.thread.i:                               ; preds = %.critedge.i, %650
  %697 = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str69, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 190, i32 %622, i32 4) #8
  %698 = bitcast i8* %697 to i32*
  %699 = call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str70, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 191, i32 %622, i32 4) #8
  %700 = bitcast i8* %699 to i32*
  %701 = load i32** %606, align 8, !tbaa !75
  br i1 %654, label %.lr.ph90.i, label %._crit_edge190.i

._crit_edge190.i:                                 ; preds = %.critedge.thread.i
  %.pre192.i = sext i32 %617 to i64
  br label %._crit_edge91.i

.lr.ph90.i:                                       ; preds = %.critedge.thread.i
  %702 = load %struct.t_atom** %607, align 8, !tbaa !122
  %703 = sext i32 %617 to i64
  %704 = add i32 %621, -1
  br label %705

; <label>:705                                     ; preds = %._crit_edge87.i, %.lr.ph90.i
  %indvars.iv171.i = phi i64 [ %703, %.lr.ph90.i ], [ %indvars.iv.next172.i, %._crit_edge87.i ]
  %706 = getelementptr inbounds i32* %701, i64 %indvars.iv171.i
  %707 = load i32* %706, align 4, !tbaa !29
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds %struct.t_atom* %702, i64 %708, i32 1
  %710 = load float* %709, align 4, !tbaa !126
  %fabsf16.i = call float @fabsf(float %710) #6
  %711 = fpext float %fabsf16.i to double
  %712 = fcmp ogt double %711, 1.200000e-38
  br i1 %712, label %718, label %713

; <label>:713                                     ; preds = %705
  %714 = getelementptr inbounds %struct.t_atom* %702, i64 %708, i32 3
  %715 = load float* %714, align 4, !tbaa !128
  %fabsf17.i = call float @fabsf(float %715) #6
  %716 = fpext float %fabsf17.i to double
  %717 = fcmp ogt double %716, 1.200000e-38
  br label %718

; <label>:718                                     ; preds = %713, %705
  %719 = phi i1 [ true, %705 ], [ %717, %713 ]
  %720 = zext i1 %719 to i32
  %721 = sub nsw i64 %indvars.iv171.i, %703
  %722 = getelementptr inbounds i32* %698, i64 %721
  store i32 %720, i32* %722, align 4, !tbaa !29
  %723 = getelementptr inbounds %struct.t_atom* %702, i64 %708, i32 4
  %724 = load i16* %723, align 2, !tbaa !129
  %725 = zext i16 %724 to i32
  %726 = getelementptr inbounds %struct.t_atom* %702, i64 %708, i32 5
  %727 = load i16* %726, align 2, !tbaa !130
  %728 = zext i16 %727 to i32
  %729 = getelementptr inbounds i32* %700, i64 %721
  store i32 0, i32* %729, align 4, !tbaa !29
  %730 = load i32* %609, align 4, !tbaa !24
  %731 = icmp sgt i32 %730, 0
  br i1 %731, label %.lr.ph86.i, label %._crit_edge87.i

.lr.ph86.i:                                       ; preds = %718, %819
  %732 = phi i32 [ %820, %819 ], [ 0, %718 ]
  %733 = phi i32 [ %822, %819 ], [ %730, %718 ]
  %k.384.i = phi i32 [ %821, %819 ], [ 0, %718 ]
  %734 = load i32* %397, align 4, !tbaa !28
  %735 = icmp eq i32 %734, 0
  %736 = icmp ne i32 %732, 0
  br i1 %735, label %785, label %737

; <label>:737                                     ; preds = %.lr.ph86.i
  br i1 %736, label %819, label %738

; <label>:738                                     ; preds = %737
  %739 = mul nsw i32 %733, %725
  %740 = add nsw i32 %739, %k.384.i
  %741 = mul nsw i32 %740, 3
  %742 = add nsw i32 %741, 1
  %743 = sext i32 %742 to i64
  %744 = load float** %265, align 8, !tbaa !23
  %745 = getelementptr inbounds float* %744, i64 %743
  %746 = load float* %745, align 4, !tbaa !21
  %fabsf22.i = call float @fabsf(float %746) #6
  %747 = fpext float %fabsf22.i to double
  %748 = fcmp ogt double %747, 1.200000e-38
  br i1 %748, label %819, label %749

; <label>:749                                     ; preds = %738
  %750 = add nsw i32 %741, 2
  %751 = sext i32 %750 to i64
  %752 = getelementptr inbounds float* %744, i64 %751
  %753 = load float* %752, align 4, !tbaa !21
  %fabsf23.i = call float @fabsf(float %753) #6
  %754 = fpext float %fabsf23.i to double
  %755 = fcmp ogt double %754, 1.200000e-38
  br i1 %755, label %819, label %756

; <label>:756                                     ; preds = %749
  %757 = sext i32 %741 to i64
  %758 = getelementptr inbounds float* %744, i64 %757
  %759 = load float* %758, align 4, !tbaa !21
  %fabsf24.i = call float @fabsf(float %759) #6
  %760 = fpext float %fabsf24.i to double
  %761 = fcmp ogt double %760, 1.200000e-38
  br i1 %761, label %819, label %762

; <label>:762                                     ; preds = %756
  %763 = mul nsw i32 %733, %728
  %764 = add nsw i32 %763, %k.384.i
  %765 = mul nsw i32 %764, 3
  %766 = add nsw i32 %765, 1
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds float* %744, i64 %767
  %769 = load float* %768, align 4, !tbaa !21
  %fabsf25.i = call float @fabsf(float %769) #6
  %770 = fpext float %fabsf25.i to double
  %771 = fcmp ogt double %770, 1.200000e-38
  br i1 %771, label %819, label %772

; <label>:772                                     ; preds = %762
  %773 = add nsw i32 %765, 2
  %774 = sext i32 %773 to i64
  %775 = getelementptr inbounds float* %744, i64 %774
  %776 = load float* %775, align 4, !tbaa !21
  %fabsf26.i = call float @fabsf(float %776) #6
  %777 = fpext float %fabsf26.i to double
  %778 = fcmp ogt double %777, 1.200000e-38
  br i1 %778, label %819, label %779

; <label>:779                                     ; preds = %772
  %780 = sext i32 %765 to i64
  %781 = getelementptr inbounds float* %744, i64 %780
  %782 = load float* %781, align 4, !tbaa !21
  %fabsf27.i = call float @fabsf(float %782) #6
  %783 = fpext float %fabsf27.i to double
  %784 = fcmp ogt double %783, 1.200000e-38
  br label %819

; <label>:785                                     ; preds = %.lr.ph86.i
  br i1 %736, label %819, label %786

; <label>:786                                     ; preds = %785
  %787 = mul nsw i32 %733, %725
  %788 = add nsw i32 %787, %k.384.i
  %789 = shl nsw i32 %788, 1
  %790 = sext i32 %789 to i64
  %791 = load float** %265, align 8, !tbaa !23
  %792 = getelementptr inbounds float* %791, i64 %790
  %793 = load float* %792, align 4, !tbaa !21
  %fabsf18.i = call float @fabsf(float %793) #6
  %794 = fpext float %fabsf18.i to double
  %795 = fcmp ogt double %794, 1.200000e-38
  br i1 %795, label %819, label %796

; <label>:796                                     ; preds = %786
  %797 = or i32 %789, 1
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds float* %791, i64 %798
  %800 = load float* %799, align 4, !tbaa !21
  %fabsf19.i = call float @fabsf(float %800) #6
  %801 = fpext float %fabsf19.i to double
  %802 = fcmp ogt double %801, 1.200000e-38
  br i1 %802, label %819, label %803

; <label>:803                                     ; preds = %796
  %804 = mul nsw i32 %733, %728
  %805 = add nsw i32 %804, %k.384.i
  %806 = shl nsw i32 %805, 1
  %807 = sext i32 %806 to i64
  %808 = getelementptr inbounds float* %791, i64 %807
  %809 = load float* %808, align 4, !tbaa !21
  %fabsf20.i = call float @fabsf(float %809) #6
  %810 = fpext float %fabsf20.i to double
  %811 = fcmp ogt double %810, 1.200000e-38
  br i1 %811, label %819, label %812

; <label>:812                                     ; preds = %803
  %813 = or i32 %806, 1
  %814 = sext i32 %813 to i64
  %815 = getelementptr inbounds float* %791, i64 %814
  %816 = load float* %815, align 4, !tbaa !21
  %fabsf21.i = call float @fabsf(float %816) #6
  %817 = fpext float %fabsf21.i to double
  %818 = fcmp ogt double %817, 1.200000e-38
  br label %819

; <label>:819                                     ; preds = %812, %803, %796, %786, %785, %779, %772, %762, %756, %749, %738, %737
  %.sink.i = phi i1 [ true, %803 ], [ true, %796 ], [ true, %786 ], [ true, %785 ], [ %818, %812 ], [ true, %772 ], [ true, %762 ], [ true, %756 ], [ true, %749 ], [ true, %738 ], [ true, %737 ], [ %784, %779 ]
  %820 = zext i1 %.sink.i to i32
  store i32 %820, i32* %729, align 4, !tbaa !29
  %821 = add nuw nsw i32 %k.384.i, 1
  %822 = load i32* %609, align 4, !tbaa !24
  %823 = icmp slt i32 %821, %822
  br i1 %823, label %.lr.ph86.i, label %._crit_edge87.i

._crit_edge87.i:                                  ; preds = %819, %718
  %indvars.iv.next172.i = add nsw i64 %indvars.iv171.i, 1
  %lftr.wideiv173.i = trunc i64 %indvars.iv171.i to i32
  %exitcond174.i = icmp eq i32 %lftr.wideiv173.i, %704
  br i1 %exitcond174.i, label %._crit_edge91.i, label %705

._crit_edge91.i:                                  ; preds = %._crit_edge87.i, %._crit_edge190.i
  %.pre-phi.i = phi i64 [ %.pre192.i, %._crit_edge190.i ], [ %703, %._crit_edge87.i ]
  %824 = getelementptr inbounds i32* %701, i64 %.pre-phi.i
  %825 = load i32* %824, align 4, !tbaa !29
  %826 = icmp eq i32 %622, 3
  br i1 %826, label %829, label %.preheader36.i

.preheader36.i:                                   ; preds = %._crit_edge91.i
  %827 = icmp sgt i32 %622, 0
  br i1 %827, label %.lr.ph93.i, label %.critedge4.preheader.i

.lr.ph93.i:                                       ; preds = %845, %840, %835, %832, %829, %.preheader36.i
  %828 = sext i32 %622 to i64
  br label %871

; <label>:829                                     ; preds = %._crit_edge91.i
  %830 = load i32* %698, align 4, !tbaa !29
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %.lr.ph93.i, label %832

; <label>:832                                     ; preds = %829
  %833 = load i32* %700, align 4, !tbaa !29
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %.lr.ph93.i, label %835

; <label>:835                                     ; preds = %832
  %836 = getelementptr inbounds i8* %699, i64 4
  %837 = bitcast i8* %836 to i32*
  %838 = load i32* %837, align 4, !tbaa !29
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %840, label %.lr.ph93.i

; <label>:840                                     ; preds = %835
  %841 = getelementptr inbounds i8* %699, i64 8
  %842 = bitcast i8* %841 to i32*
  %843 = load i32* %842, align 4, !tbaa !29
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %845, label %.lr.ph93.i

; <label>:845                                     ; preds = %840
  %846 = add nsw i32 %825, 1
  %847 = sext i32 %846 to i64
  %848 = load %struct.t_atom** %607, align 8, !tbaa !122
  %849 = getelementptr inbounds %struct.t_atom* %848, i64 %847, i32 1
  %850 = load float* %849, align 4, !tbaa !126
  %851 = add nsw i32 %825, 2
  %852 = sext i32 %851 to i64
  %853 = getelementptr inbounds %struct.t_atom* %848, i64 %852, i32 1
  %854 = load float* %853, align 4, !tbaa !126
  %855 = fsub float %850, %854
  %fabsf.i = call float @fabsf(float %855) #6
  %856 = fpext float %fabsf.i to double
  %857 = fcmp olt double %856, 1.200000e-38
  br i1 %857, label %858, label %.lr.ph93.i

; <label>:858                                     ; preds = %845
  %859 = sext i32 %825 to i64
  %860 = getelementptr inbounds i32* %596, i64 %859
  %861 = load i32* %860, align 4, !tbaa !29
  %862 = sext i32 %861 to i64
  %863 = load i32** %587, align 8, !tbaa !120
  %864 = getelementptr inbounds i32* %863, i64 %862
  store i32 2, i32* %864, align 4, !tbaa !29
  br label %954

..critedge4.preheader_crit_edge.i:                ; preds = %875
  %865 = trunc i64 %indvars.iv175.i to i32
  br label %.critedge4.preheader.i

..critedge4.preheader_crit_edge95.i:              ; preds = %871
  %866 = trunc i64 %indvars.iv175.i to i32
  br label %.critedge4.preheader.i

..critedge4.preheader_crit_edge97.i:              ; preds = %879
  %867 = trunc i64 %indvars.iv.next176.i to i32
  br label %.critedge4.preheader.i

.critedge4.preheader.i:                           ; preds = %..critedge4.preheader_crit_edge97.i, %..critedge4.preheader_crit_edge95.i, %..critedge4.preheader_crit_edge.i, %.preheader36.i
  %k.4.lcssa.i = phi i32 [ %865, %..critedge4.preheader_crit_edge.i ], [ %866, %..critedge4.preheader_crit_edge95.i ], [ %867, %..critedge4.preheader_crit_edge97.i ], [ 0, %.preheader36.i ]
  %868 = icmp slt i32 %k.4.lcssa.i, %622
  br i1 %868, label %.lr.ph100.i, label %.critedge6.preheader.i

.lr.ph100.i:                                      ; preds = %.critedge4.preheader.i
  %869 = sext i32 %k.4.lcssa.i to i64
  %870 = sext i32 %622 to i64
  br label %887

; <label>:871                                     ; preds = %879, %.lr.ph93.i
  %indvars.iv175.i = phi i64 [ 0, %.lr.ph93.i ], [ %indvars.iv.next176.i, %879 ]
  %872 = getelementptr inbounds i32* %700, i64 %indvars.iv175.i
  %873 = load i32* %872, align 4, !tbaa !29
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %..critedge4.preheader_crit_edge95.i, label %875

; <label>:875                                     ; preds = %871
  %876 = getelementptr inbounds i32* %698, i64 %indvars.iv175.i
  %877 = load i32* %876, align 4, !tbaa !29
  %878 = icmp eq i32 %877, 0
  br i1 %878, label %..critedge4.preheader_crit_edge.i, label %879

; <label>:879                                     ; preds = %875
  %indvars.iv.next176.i = add nuw nsw i64 %indvars.iv175.i, 1
  %880 = icmp slt i64 %indvars.iv.next176.i, %828
  br i1 %880, label %871, label %..critedge4.preheader_crit_edge97.i

..critedge6.preheader_crit_edge.i:                ; preds = %891
  %881 = trunc i64 %indvars.iv177.i to i32
  br label %.critedge6.preheader.i

..critedge6.preheader_crit_edge102.i:             ; preds = %887
  %882 = trunc i64 %indvars.iv177.i to i32
  br label %.critedge6.preheader.i

.critedge4..critedge6.preheader_crit_edge.i:      ; preds = %.critedge4.i
  %883 = trunc i64 %indvars.iv.next178.i to i32
  br label %.critedge6.preheader.i

.critedge6.preheader.i:                           ; preds = %.critedge4..critedge6.preheader_crit_edge.i, %..critedge6.preheader_crit_edge102.i, %..critedge6.preheader_crit_edge.i, %.critedge4.preheader.i
  %k.5.lcssa.i = phi i32 [ %881, %..critedge6.preheader_crit_edge.i ], [ %882, %..critedge6.preheader_crit_edge102.i ], [ %883, %.critedge4..critedge6.preheader_crit_edge.i ], [ %k.4.lcssa.i, %.critedge4.preheader.i ]
  %884 = icmp slt i32 %k.5.lcssa.i, %622
  br i1 %884, label %.lr.ph106.i, label %.critedge8.preheader.i

.lr.ph106.i:                                      ; preds = %.critedge6.preheader.i
  %885 = sext i32 %k.5.lcssa.i to i64
  %886 = sext i32 %622 to i64
  br label %896

; <label>:887                                     ; preds = %.critedge4.i, %.lr.ph100.i
  %indvars.iv177.i = phi i64 [ %869, %.lr.ph100.i ], [ %indvars.iv.next178.i, %.critedge4.i ]
  %888 = getelementptr inbounds i32* %700, i64 %indvars.iv177.i
  %889 = load i32* %888, align 4, !tbaa !29
  %890 = icmp eq i32 %889, 0
  br i1 %890, label %891, label %..critedge6.preheader_crit_edge102.i

; <label>:891                                     ; preds = %887
  %892 = getelementptr inbounds i32* %698, i64 %indvars.iv177.i
  %893 = load i32* %892, align 4, !tbaa !29
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %..critedge6.preheader_crit_edge.i, label %.critedge4.i

.critedge4.i:                                     ; preds = %891
  %indvars.iv.next178.i = add nsw i64 %indvars.iv177.i, 1
  %895 = icmp slt i64 %indvars.iv.next178.i, %870
  br i1 %895, label %887, label %.critedge4..critedge6.preheader_crit_edge.i

; <label>:896                                     ; preds = %.critedge6.i, %.lr.ph106.i
  %indvars.iv179.i = phi i64 [ %885, %.lr.ph106.i ], [ %indvars.iv.next180.i, %.critedge6.i ]
  %897 = getelementptr inbounds i32* %700, i64 %indvars.iv179.i
  %898 = load i32* %897, align 4, !tbaa !29
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %..critedge8.preheader_crit_edge.i, label %900

; <label>:900                                     ; preds = %896
  %901 = getelementptr inbounds i32* %698, i64 %indvars.iv179.i
  %902 = load i32* %901, align 4, !tbaa !29
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %.critedge6.i, label %..critedge8.preheader_crit_edge109.i

..critedge8.preheader_crit_edge.i:                ; preds = %896
  %904 = trunc i64 %indvars.iv179.i to i32
  br label %.critedge8.preheader.i

.critedge6..critedge8.preheader_crit_edge.i:      ; preds = %.critedge6.i
  %905 = trunc i64 %indvars.iv.next180.i to i32
  br label %.critedge8.preheader.i

..critedge8.preheader_crit_edge109.i:             ; preds = %900
  %906 = trunc i64 %indvars.iv179.i to i32
  br label %.critedge8.preheader.i

.critedge8.preheader.i:                           ; preds = %..critedge8.preheader_crit_edge109.i, %.critedge6..critedge8.preheader_crit_edge.i, %..critedge8.preheader_crit_edge.i, %.critedge6.preheader.i
  %k.6.lcssa.i = phi i32 [ %904, %..critedge8.preheader_crit_edge.i ], [ %905, %.critedge6..critedge8.preheader_crit_edge.i ], [ %906, %..critedge8.preheader_crit_edge109.i ], [ %k.5.lcssa.i, %.critedge6.preheader.i ]
  %907 = icmp slt i32 %k.6.lcssa.i, %622
  br i1 %907, label %.lr.ph112.i, label %.critedge8._crit_edge.thread.i

.lr.ph112.i:                                      ; preds = %.critedge8.preheader.i
  %908 = sext i32 %k.6.lcssa.i to i64
  %909 = add i32 %622, -1
  br label %911

.critedge6.i:                                     ; preds = %900
  %indvars.iv.next180.i = add nsw i64 %indvars.iv179.i, 1
  %910 = icmp slt i64 %indvars.iv.next180.i, %886
  br i1 %910, label %896, label %.critedge6..critedge8.preheader_crit_edge.i

; <label>:911                                     ; preds = %.critedge8.i, %.lr.ph112.i
  %indvars.iv181.i = phi i64 [ %908, %.lr.ph112.i ], [ %indvars.iv.next182.i, %.critedge8.i ]
  %912 = phi i1 [ false, %.lr.ph112.i ], [ %921, %.critedge8.i ]
  br i1 %912, label %.critedge8.i, label %913

; <label>:913                                     ; preds = %911
  %914 = getelementptr inbounds i32* %700, i64 %indvars.iv181.i
  %915 = load i32* %914, align 4, !tbaa !29
  %916 = icmp eq i32 %915, 0
  br i1 %916, label %917, label %.critedge8.i

; <label>:917                                     ; preds = %913
  %918 = getelementptr inbounds i32* %698, i64 %indvars.iv181.i
  %919 = load i32* %918, align 4, !tbaa !29
  %920 = icmp ne i32 %919, 0
  br label %.critedge8.i

.critedge8.i:                                     ; preds = %917, %913, %911
  %921 = phi i1 [ true, %911 ], [ true, %913 ], [ %920, %917 ]
  %indvars.iv.next182.i = add nsw i64 %indvars.iv181.i, 1
  %lftr.wideiv183.i = trunc i64 %indvars.iv181.i to i32
  %exitcond184.i = icmp eq i32 %lftr.wideiv183.i, %909
  br i1 %exitcond184.i, label %.critedge8._crit_edge.i, label %911

.critedge8._crit_edge.i:                          ; preds = %.critedge8.i
  br i1 %921, label %922, label %.critedge8._crit_edge.thread.i

; <label>:922                                     ; preds = %.critedge8._crit_edge.i
  %923 = icmp eq i32 %k.4.lcssa.i, %622
  br i1 %923, label %.critedge8._crit_edge.thread.i, label %924

; <label>:924                                     ; preds = %922
  %925 = add nsw i32 %warncount.0.ph118.i, 1
  %926 = icmp slt i32 %925, 11
  %or.cond11.i = and i1 %73, %926
  br i1 %or.cond11.i, label %927, label %929

; <label>:927                                     ; preds = %924
  %928 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([68 x i8]* @.str71, i64 0, i64 0), i32 %651) #8
  br label %929

; <label>:929                                     ; preds = %927, %924
  %930 = icmp eq i32 %925, 10
  %or.cond13.i = and i1 %73, %930
  br i1 %or.cond13.i, label %931, label %.critedge8._crit_edge.thread.i

; <label>:931                                     ; preds = %929
  %932 = call i64 @fwrite(i8* getelementptr inbounds ([59 x i8]* @.str72, i64 0, i64 0), i64 58, i64 1, %struct.__sFILE* %fp) #7
  br label %.critedge8._crit_edge.thread.i

.critedge8._crit_edge.thread.i:                   ; preds = %931, %929, %922, %.critedge8._crit_edge.i, %.critedge8.preheader.i
  %nl_m.0.i = phi i32 [ %k.6.lcssa.i, %.critedge8._crit_edge.i ], [ %622, %922 ], [ %622, %929 ], [ %622, %931 ], [ %k.6.lcssa.i, %.critedge8.preheader.i ]
  %nl_n.0.i = phi i32 [ %k.4.lcssa.i, %.critedge8._crit_edge.i ], [ %622, %922 ], [ %622, %929 ], [ %622, %931 ], [ %k.4.lcssa.i, %.critedge8.preheader.i ]
  %nl_o.0.i = phi i32 [ %k.5.lcssa.i, %.critedge8._crit_edge.i ], [ %622, %922 ], [ %622, %929 ], [ %622, %931 ], [ %k.5.lcssa.i, %.critedge8.preheader.i ]
  %warncount.2.i = phi i32 [ %warncount.0.ph118.i, %.critedge8._crit_edge.i ], [ %warncount.0.ph118.i, %922 ], [ %925, %929 ], [ 10, %931 ], [ %warncount.0.ph118.i, %.critedge8.preheader.i ]
  %933 = sext i32 %825 to i64
  %934 = getelementptr inbounds i32* %596, i64 %933
  %935 = load i32* %934, align 4, !tbaa !29
  %936 = mul nsw i32 %935, 3
  %937 = sext i32 %936 to i64
  %938 = load i32** %575, align 8, !tbaa !119
  %939 = getelementptr inbounds i32* %938, i64 %937
  store i32 %nl_m.0.i, i32* %939, align 4, !tbaa !29
  %940 = load i32* %934, align 4, !tbaa !29
  %941 = mul nsw i32 %940, 3
  %942 = add nsw i32 %941, 1
  %943 = sext i32 %942 to i64
  %944 = getelementptr inbounds i32* %938, i64 %943
  store i32 %nl_n.0.i, i32* %944, align 4, !tbaa !29
  %945 = load i32* %934, align 4, !tbaa !29
  %946 = mul nsw i32 %945, 3
  %947 = add nsw i32 %946, 2
  %948 = sext i32 %947 to i64
  %949 = getelementptr inbounds i32* %938, i64 %948
  store i32 %nl_o.0.i, i32* %949, align 4, !tbaa !29
  %950 = load i32* %934, align 4, !tbaa !29
  %951 = sext i32 %950 to i64
  %952 = load i32** %587, align 8, !tbaa !120
  %953 = getelementptr inbounds i32* %952, i64 %951
  store i32 1, i32* %953, align 4, !tbaa !29
  br label %954

; <label>:954                                     ; preds = %.critedge8._crit_edge.thread.i, %858
  %955 = phi i32* [ %952, %.critedge8._crit_edge.thread.i ], [ %863, %858 ]
  %warncount.3.i = phi i32 [ %warncount.2.i, %.critedge8._crit_edge.thread.i ], [ %warncount.0.ph118.i, %858 ]
  br i1 %654, label %.lr.ph116.i, label %._crit_edge117.i

.lr.ph116.i:                                      ; preds = %954
  %956 = load i32** %606, align 8, !tbaa !75
  %957 = load i32** %608, align 8, !tbaa !131
  %958 = getelementptr inbounds i32* %956, i64 %.pre-phi.i
  %959 = add i32 %621, -1
  br label %960

; <label>:960                                     ; preds = %974, %.lr.ph116.i
  %indvars.iv185.i = phi i64 [ %.pre-phi.i, %.lr.ph116.i ], [ %indvars.iv.next186.i, %974 ]
  %961 = getelementptr inbounds i32* %956, i64 %indvars.iv185.i
  %962 = load i32* %961, align 4, !tbaa !29
  %963 = sext i32 %962 to i64
  %964 = getelementptr inbounds i32* %957, i64 %963
  %965 = load i32* %964, align 4, !tbaa !29
  %966 = icmp eq i32 %965, 0
  br i1 %966, label %974, label %967

; <label>:967                                     ; preds = %960
  %968 = load i32* %958, align 4, !tbaa !29
  %969 = sext i32 %968 to i64
  %970 = getelementptr inbounds i32* %596, i64 %969
  %971 = load i32* %970, align 4, !tbaa !29
  %972 = sext i32 %971 to i64
  %973 = getelementptr inbounds i32* %955, i64 %972
  store i32 0, i32* %973, align 4, !tbaa !29
  br label %974

; <label>:974                                     ; preds = %967, %960
  %indvars.iv.next186.i = add nsw i64 %indvars.iv185.i, 1
  %lftr.wideiv187.i = trunc i64 %indvars.iv185.i to i32
  %exitcond188.i = icmp eq i32 %lftr.wideiv187.i, %959
  br i1 %exitcond188.i, label %._crit_edge117.i, label %960

._crit_edge117.i:                                 ; preds = %974, %954
  call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str70, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 281, i8* %699) #8
  call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str69, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 282, i8* %697) #8
  br label %.outer.i

; <label>:975                                     ; preds = %.critedge.i
  %976 = load i32** %606, align 8, !tbaa !75
  %977 = getelementptr inbounds i32* %976, i64 %660
  %978 = load i32* %977, align 4, !tbaa !29
  %979 = sext i32 %978 to i64
  %980 = getelementptr inbounds i32* %596, i64 %979
  %981 = load i32* %980, align 4, !tbaa !29
  %982 = sext i32 %981 to i64
  %983 = load i32** %587, align 8, !tbaa !120
  %984 = getelementptr inbounds i32* %983, i64 %982
  store i32 0, i32* %984, align 4, !tbaa !29
  br label %.outer.i

.outer.i:                                         ; preds = %975, %._crit_edge117.i
  %warncount.4.i = phi i32 [ %warncount.3.i, %._crit_edge117.i ], [ %warncount.0.ph118.i, %975 ]
  call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 290, i8* %652) #8
  %985 = load i32* %597, align 4, !tbaa !72
  %986 = icmp slt i32 %618, %985
  br i1 %986, label %.lr.ph65.i, label %.outer._crit_edge.i

.lr.ph65.i:                                       ; preds = %.outer.i, %.lr.ph65.lr.ph.i
  %987 = phi i32 [ %603, %.lr.ph65.lr.ph.i ], [ %985, %.outer.i ]
  %i.0.ph119.i = phi i32 [ 0, %.lr.ph65.lr.ph.i ], [ %618, %.outer.i ]
  %warncount.0.ph118.i = phi i32 [ 0, %.lr.ph65.lr.ph.i ], [ %warncount.4.i, %.outer.i ]
  %988 = load i32** %605, align 8, !tbaa !74
  %989 = sext i32 %i.0.ph119.i to i64
  br label %614

; <label>:990                                     ; preds = %._crit_edge60.i
  %991 = icmp sgt i32 %621, %617
  br i1 %991, label %.lr.ph63.i, label %.loopexit37.i

.lr.ph63.i:                                       ; preds = %990
  %992 = load i32** %606, align 8, !tbaa !75
  %993 = load i32** %587, align 8, !tbaa !120
  %994 = sext i32 %617 to i64
  br label %995

; <label>:995                                     ; preds = %995, %.lr.ph63.i
  %indvars.iv157.i = phi i64 [ %994, %.lr.ph63.i ], [ %indvars.iv.next158.i, %995 ]
  %996 = getelementptr inbounds i32* %992, i64 %indvars.iv157.i
  %997 = load i32* %996, align 4, !tbaa !29
  %998 = sext i32 %997 to i64
  %999 = getelementptr inbounds i32* %596, i64 %998
  %1000 = load i32* %999, align 4, !tbaa !29
  %1001 = sext i32 %1000 to i64
  %1002 = getelementptr inbounds i32* %993, i64 %1001
  store i32 0, i32* %1002, align 4, !tbaa !29
  %indvars.iv.next158.i = add nsw i64 %indvars.iv157.i, 1
  %1003 = load i32* %620, align 4, !tbaa !29
  %1004 = sext i32 %1003 to i64
  %1005 = icmp slt i64 %indvars.iv.next158.i, %1004
  br i1 %1005, label %995, label %..loopexit37_crit_edge.i

.outer._crit_edge.i:                              ; preds = %.outer.i, %.loopexit37.i, %.preheader38.i
  %1006 = load %struct.__sFILE** @debug, align 8, !tbaa !22
  %1007 = icmp eq %struct.__sFILE* %1006, null
  br i1 %1007, label %.preheader30.i, label %.preheader31.i

.preheader31.i:                                   ; preds = %.outer._crit_edge.i
  %1008 = load i32* %583, align 4, !tbaa !72
  %1009 = icmp sgt i32 %1008, 0
  br i1 %1009, label %.lr.ph53.i, label %.preheader30.i

.lr.ph53.i:                                       ; preds = %.preheader31.i, %._crit_edge193.i
  %1010 = phi %struct.__sFILE* [ %.pre194.i, %._crit_edge193.i ], [ %1006, %.preheader31.i ]
  %indvars.iv151.i = phi i64 [ %indvars.iv.next152.i, %._crit_edge193.i ], [ 0, %.preheader31.i ]
  %1011 = mul nsw i64 %indvars.iv151.i, 3
  %1012 = load i32** %575, align 8, !tbaa !119
  %1013 = getelementptr inbounds i32* %1012, i64 %1011
  %1014 = load i32* %1013, align 4, !tbaa !29
  %1015 = add nsw i64 %1011, 1
  %1016 = getelementptr inbounds i32* %1012, i64 %1015
  %1017 = load i32* %1016, align 4, !tbaa !29
  %1018 = add nsw i64 %1011, 2
  %1019 = getelementptr inbounds i32* %1012, i64 %1018
  %1020 = load i32* %1019, align 4, !tbaa !29
  %1021 = trunc i64 %indvars.iv151.i to i32
  %1022 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1010, i8* getelementptr inbounds ([42 x i8]* @.str73, i64 0, i64 0), i32 %1021, i32 %1014, i32 %1017, i32 %1020) #8
  %indvars.iv.next152.i = add nuw nsw i64 %indvars.iv151.i, 1
  %1023 = load i32* %583, align 4, !tbaa !72
  %1024 = sext i32 %1023 to i64
  %1025 = icmp slt i64 %indvars.iv.next152.i, %1024
  br i1 %1025, label %._crit_edge193.i, label %.preheader30.i

._crit_edge193.i:                                 ; preds = %.lr.ph53.i
  %.pre194.i = load %struct.__sFILE** @debug, align 8, !tbaa !22
  br label %.lr.ph53.i

.preheader30.i:                                   ; preds = %.lr.ph53.i, %.preheader31.i, %.outer._crit_edge.i
  %1026 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 39
  %1027 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 41
  %scevgep.i = getelementptr %struct.t_forcerec* %fr, i64 0, i32 40, i64 0
  %1028 = bitcast i32* %1026 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1028, i8 0, i64 20, i32 4, i1 false) #7
  %1029 = load i32* %597, align 4, !tbaa !72
  %1030 = icmp sgt i32 %1029, 0
  br i1 %1030, label %.lr.ph.i17, label %.loopexit.i

.lr.ph.i17:                                       ; preds = %.preheader30.i
  %1031 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 2
  %1032 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 4
  %1033 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %.pre195.i = load i32** %1031, align 8, !tbaa !74
  %.pre196.i = load i32** %1032, align 8, !tbaa !75
  %.pre197.i = load i32* %1033, align 4, !tbaa !132
  %1034 = sext i32 %.pre197.i to i64
  %1035 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %1034
  %1036 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %1034
  %1037 = sext i32 %1029 to i64
  %1038 = add nsw i64 %1037, -1
  br label %1039

; <label>:1039                                    ; preds = %.loopexit29.i, %.lr.ph.i17
  %indvars.iv145.i = phi i64 [ 0, %.lr.ph.i17 ], [ %indvars.iv.next146.i, %.loopexit29.i ]
  %1040 = getelementptr inbounds i32* %.pre195.i, i64 %indvars.iv145.i
  %1041 = load i32* %1040, align 4, !tbaa !29
  %1042 = sext i32 %1041 to i64
  %1043 = getelementptr inbounds i32* %.pre196.i, i64 %1042
  %1044 = load i32* %1043, align 4, !tbaa !29
  %1045 = load i32* %1035, align 4, !tbaa !29
  %1046 = icmp slt i32 %1044, %1045
  br i1 %1046, label %.loopexit29.i, label %1047

; <label>:1047                                    ; preds = %1039
  %1048 = load i32* %1036, align 4, !tbaa !29
  %1049 = add nsw i32 %1048, %1045
  %1050 = icmp slt i32 %1044, %1049
  br i1 %1050, label %1051, label %.loopexit29.i

; <label>:1051                                    ; preds = %1047
  %1052 = sext i32 %1044 to i64
  %1053 = getelementptr inbounds i32* %596, i64 %1052
  %1054 = load i32* %1053, align 4, !tbaa !29
  %1055 = sext i32 %1054 to i64
  %1056 = load i32** %587, align 8, !tbaa !120
  %1057 = getelementptr inbounds i32* %1056, i64 %1055
  %1058 = load i32* %1057, align 4, !tbaa !29
  switch i32 %1058, label %.loopexit29.i [
    i32 1, label %1059
    i32 2, label %1074
  ]

; <label>:1059                                    ; preds = %1051
  %1060 = load i32* %1026, align 4, !tbaa !134
  %1061 = add nsw i32 %1060, 1
  store i32 %1061, i32* %1026, align 4, !tbaa !134
  %1062 = load i32* %1053, align 4, !tbaa !29
  %1063 = mul nsw i32 %1062, 3
  %1064 = sext i32 %1063 to i64
  br label %1065

; <label>:1065                                    ; preds = %1065, %1059
  %indvars.iv142.i = phi i64 [ 0, %1059 ], [ %indvars.iv.next143.i, %1065 ]
  %1066 = add nsw i64 %indvars.iv142.i, %1064
  %1067 = load i32** %575, align 8, !tbaa !119
  %1068 = getelementptr inbounds i32* %1067, i64 %1066
  %1069 = load i32* %1068, align 4, !tbaa !29
  %1070 = sitofp i32 %1069 to float
  %1071 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 40, i64 %indvars.iv142.i
  %1072 = load float* %1071, align 4, !tbaa !21
  %1073 = fadd float %1072, %1070
  store float %1073, float* %1071, align 4, !tbaa !21
  %indvars.iv.next143.i = add nuw nsw i64 %indvars.iv142.i, 1
  %exitcond144.i = icmp eq i64 %indvars.iv.next143.i, 3
  br i1 %exitcond144.i, label %.loopexit29.i, label %1065

; <label>:1074                                    ; preds = %1051
  %1075 = load i32* %1027, align 4, !tbaa !135
  %1076 = add nsw i32 %1075, 1
  store i32 %1076, i32* %1027, align 4, !tbaa !135
  br label %.loopexit29.i

.loopexit29.i:                                    ; preds = %1065, %1074, %1051, %1047, %1039
  %indvars.iv.next146.i = add nuw nsw i64 %indvars.iv145.i, 1
  %exitcond = icmp eq i64 %indvars.iv145.i, %1038
  br i1 %exitcond, label %1077, label %1039

; <label>:1077                                    ; preds = %.loopexit29.i
  %.pre198.i = load i32* %1026, align 4, !tbaa !134
  %1078 = icmp sgt i32 %.pre198.i, 0
  br i1 %1078, label %.preheader.i.preheader, label %.loopexit.i

.preheader.i.preheader:                           ; preds = %1077
  %1079 = sitofp i32 %.pre198.i to float
  %1080 = load float* %scevgep.i, align 4, !tbaa !21
  %1081 = fdiv float %1080, %1079
  store float %1081, float* %scevgep.i, align 4, !tbaa !21
  %1082 = sitofp i32 %.pre198.i to float
  %1083 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 40, i64 1
  %1084 = load float* %1083, align 4, !tbaa !21
  %1085 = fdiv float %1084, %1082
  store float %1085, float* %1083, align 4, !tbaa !21
  br label %._crit_edge199.i.._crit_edge199.i_crit_edge

._crit_edge199.i.._crit_edge199.i_crit_edge:      ; preds = %.preheader.i.preheader, %._crit_edge199.i.._crit_edge199.i_crit_edge
  %indvars.iv.next.i19151 = phi i64 [ 2, %.preheader.i.preheader ], [ %indvars.iv.next.i19, %._crit_edge199.i.._crit_edge199.i_crit_edge ]
  %.pre200.i.pre = load i32* %1026, align 4, !tbaa !134
  %1086 = sitofp i32 %.pre200.i.pre to float
  %1087 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 40, i64 %indvars.iv.next.i19151
  %1088 = load float* %1087, align 4, !tbaa !21
  %1089 = fdiv float %1088, %1086
  store float %1089, float* %1087, align 4, !tbaa !21
  %indvars.iv.next.i19 = add nuw nsw i64 %indvars.iv.next.i19151, 1
  %exitcond.i20 = icmp eq i64 %indvars.iv.next.i19, 3
  br i1 %exitcond.i20, label %.loopexit.i, label %._crit_edge199.i.._crit_edge199.i_crit_edge

.loopexit.i:                                      ; preds = %._crit_edge199.i.._crit_edge199.i_crit_edge, %1077, %.preheader30.i
  %1090 = bitcast i32* %596 to i8*
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str74, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 326, i8* %1090) #8
  br i1 %73, label %1091, label %check_solvent.exit

; <label>:1091                                    ; preds = %.loopexit.i
  %1092 = load i32* %1026, align 4, !tbaa !134
  %1093 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %1094 = load i32* %1093, align 4, !tbaa !132
  %1095 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([53 x i8]* @.str75, i64 0, i64 0), i32 %1092, i32 %1094) #8
  %1096 = load i32* %1026, align 4, !tbaa !134
  %1097 = icmp sgt i32 %1096, 0
  br i1 %1097, label %1098, label %1110

; <label>:1098                                    ; preds = %1091
  %1099 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 40, i64 1
  %1100 = load float* %1099, align 4, !tbaa !21
  %1101 = fpext float %1100 to double
  %1102 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 40, i64 2
  %1103 = load float* %1102, align 4, !tbaa !21
  %1104 = fsub float %1103, %1100
  %1105 = fpext float %1104 to double
  %1106 = load float* %scevgep.i, align 4, !tbaa !21
  %1107 = fsub float %1106, %1103
  %1108 = fpext float %1107 to double
  %1109 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([65 x i8]* @.str76, i64 0, i64 0), double %1101, double %1105, double %1108) #8
  br label %1110

; <label>:1110                                    ; preds = %1098, %1091
  %1111 = load i32* %1027, align 4, !tbaa !135
  %1112 = load i32* %1093, align 4, !tbaa !132
  %1113 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([51 x i8]* @.str77, i64 0, i64 0), i32 %1111, i32 %1112) #8
  br label %check_solvent.exit

check_solvent.exit:                               ; preds = %1110, %.loopexit.i, %._crit_edge50
  ret void
}

; Function Attrs: optsize
declare i8* @check_box([3 x float]*) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind readnone
declare double @llvm.pow.f64(double, double) #4

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: optsize
declare float @calc_ewaldcoeff(float, float) #1

; Function Attrs: optsize
declare void @set_shift_consts(%struct.__sFILE*, float, float, float*, %struct.t_forcerec*) #1

; Function Attrs: optsize
declare i32* @make_invblock(%struct.t_block*, i32) #1

; Function Attrs: optsize
declare void @make_tables(%struct.__sFILE*, %struct.t_forcerec*, i32, i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @pr_forcerec(%struct.__sFILE* nocapture %fp, %struct.t_forcerec* nocapture readonly %fr, %struct.t_commrec* nocapture readnone %cr) #3 {
  %1 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 1
  %2 = load float* %1, align 4, !tbaa !48
  %3 = fpext float %2 to double
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str27, i64 0, i64 0), double %3) #8
  %5 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 23
  %6 = load float* %5, align 4, !tbaa !18
  %7 = fpext float %6 to double
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str28, i64 0, i64 0), double %7) #8
  %9 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 12
  %10 = load float* %9, align 4, !tbaa !68
  %11 = fpext float %10 to double
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str29, i64 0, i64 0), double %11) #8
  %13 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 37
  %14 = load i32* %13, align 4, !tbaa !44
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str31, i64 0, i64 0), i32 %14) #8
  %16 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 43
  %17 = load i32* %16, align 4, !tbaa !42
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %18
  %20 = load i8** %19, align 8, !tbaa !22
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str33, i64 0, i64 0), i8* %20) #8
  %22 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 51
  %23 = load i32* %22, align 4, !tbaa !55
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %24
  %26 = load i8** %25, align 8, !tbaa !22
  %27 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str34, i64 0, i64 0), i8* %26) #8
  %28 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 16
  %29 = load i32* %28, align 4, !tbaa !116
  %30 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str35, i64 0, i64 0), i32 %29) #8
  %31 = load i32* %28, align 4, !tbaa !116
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %41

; <label>:33                                      ; preds = %0
  %34 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 22
  %35 = load float* %34, align 4, !tbaa !70
  %36 = fpext float %35 to double
  %37 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str36, i64 0, i64 0), double %36) #8
  %38 = load float* %5, align 4, !tbaa !18
  %39 = fpext float %38 to double
  %40 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str28, i64 0, i64 0), double %39) #8
  br label %41

; <label>:41                                      ; preds = %33, %0
  %42 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 59
  %43 = load i32* %42, align 4, !tbaa !87
  %44 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str37, i64 0, i64 0), i32 %43) #8
  %45 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 62
  %46 = load i32* %45, align 4, !tbaa !91
  %47 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str38, i64 0, i64 0), i32 %46) #8
  %48 = tail call i32 @fflush(%struct.__sFILE* %fp) #8
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @ns(%struct.__sFILE* %fp, %struct.t_forcerec* %fr, [3 x float]* %x, [3 x float]* nocapture readnone %f, [3 x float]* %box, %struct.t_groups* %grps, %struct.t_grpopts* nocapture readnone %opts, %struct.t_topology* %top, %struct.t_mdatoms* %md, %struct.t_commrec* %cr, %struct.t_nrnb* %nrnb, %struct.t_nsborder* %nsb, i32 %step, float %lambda, float* %dvdlambda) #3 {
  %.b = load i1* @ns.bFirst, align 1
  br i1 %.b, label %7, label %1

; <label>:1                                       ; preds = %0
  %2 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %3 = load i32* %2, align 4, !tbaa !132
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %4
  %6 = load i32* %5, align 4, !tbaa !29
  tail call void @init_neighbor_list(%struct.__sFILE* %fp, %struct.t_forcerec* %fr, i32 %6) #8
  store i1 true, i1* @ns.bFirst, align 1
  br label %7

; <label>:7                                       ; preds = %0, %1
  %8 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 51
  %9 = load i32* %8, align 4, !tbaa !55
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

; <label>:11                                      ; preds = %7
  %12 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 52
  store i32 0, i32* %12, align 4, !tbaa !136
  br label %13

; <label>:13                                      ; preds = %7, %11
  %14 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %15 = load i32* %14, align 4, !tbaa !111
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

; <label>:17                                      ; preds = %13
  %18 = add nsw i32 %15, -1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 10, i64 %19
  %21 = load i32* %20, align 4, !tbaa !29
  br label %22

; <label>:22                                      ; preds = %13, %17
  %.sink = phi i32 [ %21, %17 ], [ 0, %13 ]
  %23 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 35
  store i32 %.sink, i32* %23, align 4
  %24 = load i32* %14, align 4, !tbaa !111
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 10, i64 %25
  %27 = load i32* %26, align 4, !tbaa !29
  %28 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 36
  store i32 %27, i32* %28, align 4, !tbaa !137
  %29 = tail call i32 @search_neighbours(%struct.__sFILE* %fp, %struct.t_forcerec* %fr, [3 x float]* %x, [3 x float]* %box, %struct.t_topology* %top, %struct.t_groups* %grps, %struct.t_commrec* %cr, %struct.t_nsborder* %nsb, %struct.t_nrnb* %nrnb, %struct.t_mdatoms* %md, float %lambda, float* %dvdlambda) #8
  %30 = load %struct.__sFILE** @debug, align 8, !tbaa !22
  %31 = icmp eq %struct.__sFILE* %30, null
  br i1 %31, label %34, label %32

; <label>:32                                      ; preds = %22
  %33 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %30, i8* getelementptr inbounds ([14 x i8]* @.str40, i64 0, i64 0), i32 %29) #8
  br label %34

; <label>:34                                      ; preds = %32, %22
  ret void
}

; Function Attrs: optsize
declare void @init_neighbor_list(%struct.__sFILE*, %struct.t_forcerec*, i32) #1

; Function Attrs: optsize
declare i32 @search_neighbours(%struct.__sFILE*, %struct.t_forcerec*, [3 x float]*, [3 x float]*, %struct.t_topology*, %struct.t_groups*, %struct.t_commrec*, %struct.t_nsborder*, %struct.t_nrnb*, %struct.t_mdatoms*, float, float*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @force(%struct.__sFILE* %fp, i32 %step, %struct.t_forcerec* %fr, %struct.t_inputrec* %ir, %struct.t_idef* %idef, %struct.t_nsborder* %nsb, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_nrnb* %nrnb, %struct.t_groups* nocapture readonly %grps, %struct.t_mdatoms* %md, i32 %ngener, %struct.t_grpopts* nocapture readonly %opts, [3 x float]* %x, [3 x float]* %f, float* %epot, %struct.t_fcdata* %fcd, i32 %bVerbose, [3 x float]* %box, float %lambda, %struct.t_graph* %graph, %struct.t_block* %excl, i32 %bNBFonly, [3 x float]* %lr_vir, float* %mu_tot, float %qsum, i32 %bGatherOnly) #3 {
  %nit = alloca i32, align 4
  %box_size = alloca [3 x float], align 4
  br label %1

; <label>:1                                       ; preds = %1, %0
  %indvars.iv12 = phi i64 [ 0, %0 ], [ %indvars.iv.next13, %1 ]
  %2 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv12, i64 %indvars.iv12
  %3 = bitcast float* %2 to i32*
  %4 = load i32* %3, align 4, !tbaa !21
  %5 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 %indvars.iv12
  %6 = bitcast float* %5 to i32*
  store i32 %4, i32* %6, align 4, !tbaa !21
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %exitcond14 = icmp eq i64 %indvars.iv.next13, 3
  br i1 %exitcond14, label %7, label %1

; <label>:7                                       ; preds = %1
  %8 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 59
  %9 = load i32* %8, align 4, !tbaa !87
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %.critedge

; <label>:11                                      ; preds = %7
  %12 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 62
  %13 = load i32* %12, align 4, !tbaa !91
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %_mod.exit, label %.critedge

_mod.exit:                                        ; preds = %11
  %15 = srem i32 %step, %13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %.critedge.loopexit, label %.critedge

.critedge.loopexit:                               ; preds = %_mod.exit
  %17 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 61
  %18 = bitcast float** %17 to i8**
  %19 = load i8** %18, align 8, !tbaa !89
  %20 = icmp sgt i32 %9, 1
  %.op = add i32 %9, -1
  %21 = zext i32 %.op to i64
  %.op15 = shl nuw nsw i64 %21, 2
  %.op15.op = add nuw nsw i64 %.op15, 4
  %22 = select i1 %20, i64 %.op15.op, i64 4
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 %22, i32 4, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %7, %11, %_mod.exit
  %23 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 64
  %24 = load i32* %23, align 4, !tbaa !28
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 2
  %27 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 1
  %.in = select i1 %25, float** %27, float** %26
  %28 = load float** %.in, align 8
  %29 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 0
  %30 = load float** %29, align 8, !tbaa !22
  %31 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 0
  %32 = getelementptr inbounds float* %epot, i64 42
  call void @do_fnbf(%struct.__sFILE* %fp, %struct.t_commrec* %cr, %struct.t_forcerec* %fr, [3 x float]* %x, [3 x float]* %f, %struct.t_mdatoms* %md, float* %28, float* %30, float* %31, %struct.t_nrnb* %nrnb, float %lambda, float* %32, i32 0, i32 -1) #8
  %33 = load %struct.__sFILE** @debug, align 8, !tbaa !22
  %34 = icmp eq %struct.__sFILE* %33, null
  br i1 %34, label %38, label %35

; <label>:35                                      ; preds = %.critedge
  %36 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %37 = load [3 x float]** %36, align 8, !tbaa !86
  call void @pr_rvecs(%struct.__sFILE* %33, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str41, i64 0, i64 0), [3 x float]* %37, i32 27) #8
  br label %38

; <label>:38                                      ; preds = %.critedge, %35
  %39 = icmp ne i32 %bNBFonly, 0
  br i1 %39, label %70, label %40

; <label>:40                                      ; preds = %38
  call void @shift_self(%struct.t_graph* %graph, [3 x float]* %box, [3 x float]* %x) #8
  %41 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %42 = load float* %41, align 4, !tbaa !21
  %fabsf = call float @fabsf(float %42) #6
  %43 = fpext float %fabsf to double
  %44 = fcmp ogt double %43, 1.200000e-38
  br i1 %44, label %55, label %45

; <label>:45                                      ; preds = %40
  %46 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %47 = load float* %46, align 4, !tbaa !21
  %fabsf1 = call float @fabsf(float %47) #6
  %48 = fpext float %fabsf1 to double
  %49 = fcmp ogt double %48, 1.200000e-38
  br i1 %49, label %55, label %50

; <label>:50                                      ; preds = %45
  %51 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %52 = load float* %51, align 4, !tbaa !21
  %fabsf2 = call float @fabsf(float %52) #6
  %53 = fpext float %fabsf2 to double
  %54 = fcmp ogt double %53, 1.200000e-38
  br i1 %54, label %55, label %63

; <label>:55                                      ; preds = %50, %45, %40
  %56 = getelementptr inbounds %struct.t_graph* %graph, i64 0, i32 1
  %57 = load i32* %56, align 4, !tbaa !138
  %58 = shl nsw i32 %57, 1
  %59 = sitofp i32 %58 to double
  %60 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 89
  %61 = load double* %60, align 8, !tbaa !140
  %62 = fadd double %61, %59
  store double %62, double* %60, align 8, !tbaa !140
  br label %70

; <label>:63                                      ; preds = %50
  %64 = getelementptr inbounds %struct.t_graph* %graph, i64 0, i32 1
  %65 = load i32* %64, align 4, !tbaa !138
  %66 = sitofp i32 %65 to double
  %67 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 89
  %68 = load double* %67, align 8, !tbaa !140
  %69 = fadd double %68, %66
  store double %69, double* %67, align 8, !tbaa !140
  br label %70

; <label>:70                                      ; preds = %55, %63, %38
  %71 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 33
  %72 = load i32* %71, align 4, !tbaa !14
  %.off = add i32 %72, -3
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %73, label %.thread

; <label>:73                                      ; preds = %70
  switch i32 %72, label %108 [
    i32 5, label %74
    i32 6, label %82
    i32 3, label %92
    i32 4, label %100
  ]

; <label>:74                                      ; preds = %73
  %75 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55
  %76 = load [3 x float]** %75, align 8, !tbaa !83
  %77 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 8
  %78 = load float** %77, align 8, !tbaa !76
  %79 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 24
  %80 = load float** %79, align 8, !tbaa !80
  %81 = call float @do_pppm(%struct.__sFILE* %fp, i32 0, [3 x float]* %x, [3 x float]* %76, float* %78, float* %31, float* %80, %struct.t_commrec* %cr, %struct.t_nsborder* %nsb, %struct.t_nrnb* %nrnb) #8
  br label %112

; <label>:82                                      ; preds = %73
  %83 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1
  %84 = load i32* %83, align 4, !tbaa !25
  %85 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55
  %86 = load [3 x float]** %85, align 8, !tbaa !83
  %87 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 8
  %88 = load float** %87, align 8, !tbaa !76
  %89 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 24
  %90 = load float** %89, align 8, !tbaa !80
  %91 = call float @do_poisson(%struct.__sFILE* %fp, i32 0, %struct.t_inputrec* %ir, i32 %84, [3 x float]* %x, [3 x float]* %86, float* %88, float* %31, float* %90, %struct.t_commrec* %cr, %struct.t_nrnb* %nrnb, i32* %nit, i32 1) #8
  br label %112

; <label>:92                                      ; preds = %73
  %93 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55
  %94 = load [3 x float]** %93, align 8, !tbaa !83
  %95 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 8
  %96 = load float** %95, align 8, !tbaa !76
  %97 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 57
  %98 = load float* %97, align 4, !tbaa !61
  %99 = call float @do_pme(%struct.__sFILE* %fp, i32 0, %struct.t_inputrec* %ir, [3 x float]* %x, [3 x float]* %94, float* %96, [3 x float]* %box, %struct.t_commrec* %cr, %struct.t_nsborder* %nsb, %struct.t_nrnb* %nrnb, [3 x float]* %lr_vir, float %98, i32 %bGatherOnly) #8
  br label %112

; <label>:100                                     ; preds = %73
  %101 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55
  %102 = load [3 x float]** %101, align 8, !tbaa !83
  %103 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 8
  %104 = load float** %103, align 8, !tbaa !76
  %105 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 57
  %106 = load float* %105, align 4, !tbaa !61
  %107 = call float @do_ewald(%struct.__sFILE* %fp, i32 0, %struct.t_inputrec* %ir, [3 x float]* %x, [3 x float]* %102, float* %104, float* %31, %struct.t_commrec* %cr, %struct.t_nsborder* %nsb, [3 x float]* %lr_vir, float %106) #8
  br label %112

; <label>:108                                     ; preds = %73
  %109 = sext i32 %72 to i64
  %110 = getelementptr inbounds [11 x i8*]* @eel_names, i64 0, i64 %109
  %111 = load i8** %110, align 8, !tbaa !22
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([45 x i8]* @.str49, i64 0, i64 0), i8* %111) #8
  %.pre = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 8
  br label %112

; <label>:112                                     ; preds = %108, %100, %92, %82, %74
  %.pre-phi = phi float** [ %.pre, %108 ], [ %103, %100 ], [ %95, %92 ], [ %87, %82 ], [ %77, %74 ]
  %Vlr.0 = phi float [ 0.000000e+00, %108 ], [ %107, %100 ], [ %99, %92 ], [ %91, %82 ], [ %81, %74 ]
  %113 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 56
  %114 = load i32* %113, align 4, !tbaa !56
  %115 = icmp eq i32 %114, 0
  %116 = load float** %.pre-phi, align 8, !tbaa !76
  br i1 %115, label %124, label %117

; <label>:117                                     ; preds = %112
  %118 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 22
  %119 = load i32* %118, align 4, !tbaa !142
  %120 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 23
  %121 = load i32* %120, align 4, !tbaa !143
  %122 = sitofp i32 %121 to float
  %123 = call float @ewald_LRcorrection(%struct.__sFILE* %fp, %struct.t_nsborder* %nsb, %struct.t_commrec* %cr, %struct.t_forcerec* %fr, float* %116, %struct.t_block* %excl, [3 x float]* %x, [3 x float]* %box, float* %mu_tot, float %qsum, i32 %119, float %122, [3 x float]* %lr_vir) #8
  br label %126

; <label>:124                                     ; preds = %112
  %125 = call float @shift_LRcorrection(%struct.__sFILE* %fp, %struct.t_nsborder* %nsb, %struct.t_commrec* %cr, %struct.t_forcerec* %fr, float* %116, %struct.t_block* %excl, [3 x float]* %x, i32 1, [3 x float]* %box, [3 x float]* %lr_vir) #8
  br label %126

; <label>:126                                     ; preds = %124, %117
  %Vcorr.0 = phi float [ %123, %117 ], [ %125, %124 ]
  %127 = fadd float %Vlr.0, %Vcorr.0
  %128 = getelementptr inbounds float* %epot, i64 18
  store float %127, float* %128, align 4, !tbaa !21
  %129 = load %struct.__sFILE** @debug, align 8, !tbaa !22
  %130 = icmp eq %struct.__sFILE* %129, null
  br i1 %130, label %.thread5, label %131

; <label>:131                                     ; preds = %126
  %132 = fpext float %Vlr.0 to double
  %133 = fpext float %Vcorr.0 to double
  %134 = fpext float %127 to double
  %135 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %129, i8* getelementptr inbounds ([37 x i8]* @.str50, i64 0, i64 0), double %132, double %133, double %134) #8
  %.pr = load %struct.__sFILE** @debug, align 8, !tbaa !22
  %136 = icmp eq %struct.__sFILE* %.pr, null
  br i1 %136, label %.thread5, label %137

; <label>:137                                     ; preds = %131
  call void @pr_rvecs(%struct.__sFILE* %.pr, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str51, i64 0, i64 0), [3 x float]* %lr_vir, i32 3) #8
  %138 = load %struct.__sFILE** @debug, align 8, !tbaa !22
  %139 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %140 = load [3 x float]** %139, align 8, !tbaa !86
  call void @pr_rvecs(%struct.__sFILE* %138, i32 0, i8* getelementptr inbounds ([28 x i8]* @.str52, i64 0, i64 0), [3 x float]* %140, i32 27) #8
  br label %.thread

.thread:                                          ; preds = %70, %137
  %.pr4.pr = load %struct.__sFILE** @debug, align 8, !tbaa !22
  %141 = icmp eq %struct.__sFILE* %.pr4.pr, null
  br i1 %141, label %.thread5, label %142

; <label>:142                                     ; preds = %.thread
  call void @print_nrnb(%struct.__sFILE* %.pr4.pr, %struct.t_nrnb* %nrnb) #8
  br label %.thread5

.thread5:                                         ; preds = %126, %131, %.thread, %142
  br i1 %39, label %161, label %143

; <label>:143                                     ; preds = %.thread5
  %144 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 3
  %145 = load i32* %144, align 4, !tbaa !144
  %146 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 6
  %147 = load float** %146, align 8, !tbaa !22
  %148 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 5
  %149 = load float** %148, align 8, !tbaa !22
  %150 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 32
  %151 = load i32* %150, align 4, !tbaa !145
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %158, label %153

; <label>:153                                     ; preds = %143
  %154 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 8
  %155 = load i32* %154, align 4, !tbaa !146
  %156 = call i32 @do_per_step(i32 %step, i32 %155) #8
  %157 = icmp ne i32 %156, 0
  br label %158

; <label>:158                                     ; preds = %143, %153
  %159 = phi i1 [ false, %143 ], [ %157, %153 ]
  %160 = zext i1 %159 to i32
  call void @calc_bonds(%struct.__sFILE* %fp, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_idef* %idef, [3 x float]* %x, [3 x float]* %f, %struct.t_forcerec* %fr, %struct.t_graph* %graph, float* %epot, %struct.t_nrnb* %nrnb, [3 x float]* %box, float %lambda, %struct.t_mdatoms* %md, i32 %145, float* %147, float* %149, %struct.t_fcdata* %fcd, i32 %step, i32 %160) #8
  br label %161

; <label>:161                                     ; preds = %158, %.thread5
  %162 = load %struct.__sFILE** @debug, align 8, !tbaa !22
  %163 = icmp eq %struct.__sFILE* %162, null
  br i1 %163, label %.preheader, label %164

; <label>:164                                     ; preds = %161
  %165 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %166 = load [3 x float]** %165, align 8, !tbaa !86
  call void @pr_rvecs(%struct.__sFILE* %162, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str53, i64 0, i64 0), [3 x float]* %166, i32 27) #8
  br label %.preheader

.preheader:                                       ; preds = %161, %164
  %167 = getelementptr inbounds float* %epot, i64 37
  br label %168

; <label>:168                                     ; preds = %176, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %176 ]
  %169 = trunc i64 %indvars.iv to i32
  %170 = icmp eq i32 %169, 21
  br i1 %170, label %176, label %171

; <label>:171                                     ; preds = %168
  %172 = getelementptr inbounds float* %epot, i64 %indvars.iv
  %173 = load float* %172, align 4, !tbaa !21
  %174 = load float* %167, align 4, !tbaa !21
  %175 = fadd float %173, %174
  store float %175, float* %167, align 4, !tbaa !21
  br label %176

; <label>:176                                     ; preds = %168, %171
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 37
  br i1 %exitcond, label %177, label %168

; <label>:177                                     ; preds = %176
  ret void
}

; Function Attrs: optsize
declare void @do_fnbf(%struct.__sFILE*, %struct.t_commrec*, %struct.t_forcerec*, [3 x float]*, [3 x float]*, %struct.t_mdatoms*, float*, float*, float*, %struct.t_nrnb*, float, float*, i32, i32) #1

; Function Attrs: optsize
declare void @pr_rvecs(%struct.__sFILE*, i32, i8*, [3 x float]*, i32) #1

; Function Attrs: optsize
declare void @shift_self(%struct.t_graph*, [3 x float]*, [3 x float]*) #1

; Function Attrs: optsize
declare float @do_pppm(%struct.__sFILE*, i32, [3 x float]*, [3 x float]*, float*, float*, float*, %struct.t_commrec*, %struct.t_nsborder*, %struct.t_nrnb*) #1

; Function Attrs: optsize
declare float @do_poisson(%struct.__sFILE*, i32, %struct.t_inputrec*, i32, [3 x float]*, [3 x float]*, float*, float*, float*, %struct.t_commrec*, %struct.t_nrnb*, i32*, i32) #1

; Function Attrs: optsize
declare float @do_pme(%struct.__sFILE*, i32, %struct.t_inputrec*, [3 x float]*, [3 x float]*, float*, [3 x float]*, %struct.t_commrec*, %struct.t_nsborder*, %struct.t_nrnb*, [3 x float]*, float, i32) #1

; Function Attrs: optsize
declare float @do_ewald(%struct.__sFILE*, i32, %struct.t_inputrec*, [3 x float]*, [3 x float]*, float*, float*, %struct.t_commrec*, %struct.t_nsborder*, [3 x float]*, float) #1

; Function Attrs: optsize
declare float @ewald_LRcorrection(%struct.__sFILE*, %struct.t_nsborder*, %struct.t_commrec*, %struct.t_forcerec*, float*, %struct.t_block*, [3 x float]*, [3 x float]*, float*, float, i32, float, [3 x float]*) #1

; Function Attrs: optsize
declare float @shift_LRcorrection(%struct.__sFILE*, %struct.t_nsborder*, %struct.t_commrec*, %struct.t_forcerec*, float*, %struct.t_block*, [3 x float]*, i32, [3 x float]*, [3 x float]*) #1

; Function Attrs: optsize
declare void @print_nrnb(%struct.__sFILE*, %struct.t_nrnb*) #1

; Function Attrs: optsize
declare void @calc_bonds(%struct.__sFILE*, %struct.t_commrec*, %struct.t_commrec*, %struct.t_idef*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, float*, %struct.t_nrnb*, [3 x float]*, float, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*, i32, i32) #1

; Function Attrs: optsize
declare i32 @do_per_step(i32, i32) #1

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #6

; Function Attrs: optsize
declare void @please_cite(%struct.__sFILE*, i8*) #1

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #7

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize readnone }
attributes #10 = { optsize }

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
!14 = !{!15, !7, i64 152}
!15 = !{!"", !7, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !7, i64 28, !16, i64 32, !16, i64 36, !16, i64 40, !16, i64 44, !16, i64 48, !7, i64 52, !7, i64 56, !16, i64 60, !7, i64 64, !16, i64 68, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !16, i64 104, !16, i64 108, !4, i64 112, !16, i64 120, !16, i64 124, !16, i64 128, !16, i64 132, !7, i64 136, !16, i64 140, !16, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !5, i64 180, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !4, i64 208, !4, i64 216, !4, i64 224, !4, i64 232, !5, i64 240, !5, i64 1488, !7, i64 2736, !7, i64 2740, !4, i64 2744, !4, i64 2752, !4, i64 2760, !7, i64 2768, !16, i64 2772, !4, i64 2776, !7, i64 2784, !4, i64 2792, !4, i64 2800, !7, i64 2808, !7, i64 2812, !7, i64 2816, !4, i64 2824, !4, i64 2832, !16, i64 2840}
!16 = !{!"float", !5, i64 0}
!17 = !{!15, !16, i64 20}
!18 = !{!15, !16, i64 108}
!19 = !{!15, !16, i64 16}
!20 = !{!15, !16, i64 12}
!21 = !{!16, !16, i64 0}
!22 = !{!4, !4, i64 0}
!23 = !{!15, !4, i64 2824}
!24 = !{!15, !7, i64 2812}
!25 = !{!26, !7, i64 4}
!26 = !{!"", !16, i64 0, !7, i64 4, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168}
!27 = !{!26, !4, i64 80}
!28 = !{!15, !7, i64 2816}
!29 = !{!7, !7, i64 0}
!30 = !{!15, !16, i64 44}
!31 = !{!32, !7, i64 312}
!32 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !16, i64 56, !16, i64 60, !16, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !16, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !16, i64 120, !5, i64 124, !5, i64 160, !7, i64 196, !16, i64 200, !16, i64 204, !7, i64 208, !16, i64 212, !16, i64 216, !7, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !7, i64 236, !16, i64 240, !16, i64 244, !7, i64 248, !16, i64 252, !16, i64 256, !16, i64 260, !16, i64 264, !16, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !16, i64 284, !16, i64 288, !16, i64 292, !7, i64 296, !16, i64 300, !16, i64 304, !7, i64 308, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !16, i64 328, !7, i64 332, !16, i64 336, !16, i64 340, !7, i64 344, !16, i64 348, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !16, i64 368, !16, i64 372, !16, i64 376, !16, i64 380, !33, i64 384, !5, i64 448, !5, i64 520}
!33 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56}
!34 = !{!15, !16, i64 2840}
!35 = !{!32, !7, i64 248}
!36 = !{!15, !7, i64 136}
!37 = !{!32, !16, i64 260}
!38 = !{!15, !16, i64 140}
!39 = !{!32, !16, i64 264}
!40 = !{!15, !16, i64 144}
!41 = !{!32, !7, i64 8}
!42 = !{!15, !7, i64 200}
!43 = !{!32, !7, i64 16}
!44 = !{!15, !7, i64 168}
!45 = !{!32, !7, i64 100}
!46 = !{!15, !7, i64 0}
!47 = !{!32, !16, i64 204}
!48 = !{!15, !16, i64 4}
!49 = !{!32, !16, i64 216}
!50 = !{!32, !16, i64 228}
!51 = !{!15, !16, i64 8}
!52 = !{!32, !7, i64 208}
!53 = !{!32, !7, i64 220}
!54 = !{!15, !7, i64 156}
!55 = !{!15, !7, i64 2736}
!56 = !{!15, !7, i64 2768}
!57 = !{!15, !7, i64 56}
!58 = !{!15, !7, i64 28}
!59 = !{!15, !7, i64 52}
!60 = !{!32, !16, i64 84}
!61 = !{!15, !16, i64 2772}
!62 = !{!32, !7, i64 20}
!63 = !{!15, !7, i64 204}
!64 = !{!32, !7, i64 24}
!65 = !{!15, !7, i64 196}
!66 = !{!32, !16, i64 232}
!67 = !{!32, !16, i64 244}
!68 = !{!15, !16, i64 48}
!69 = !{!32, !16, i64 212}
!70 = !{!15, !16, i64 104}
!71 = !{!15, !7, i64 172}
!72 = !{!73, !7, i64 1024}
!73 = !{!"", !5, i64 0, !7, i64 1024, !4, i64 1032, !7, i64 1040, !4, i64 1048}
!74 = !{!73, !4, i64 1032}
!75 = !{!73, !4, i64 1048}
!76 = !{!26, !4, i64 56}
!77 = !{!32, !7, i64 384}
!78 = !{!32, !4, i64 400}
!79 = !{!32, !4, i64 408}
!80 = !{!15, !4, i64 112}
!81 = !{!15, !4, i64 2744}
!82 = !{!15, !4, i64 2752}
!83 = !{!15, !4, i64 2760}
!84 = !{!15, !4, i64 224}
!85 = !{!15, !4, i64 232}
!86 = !{!15, !4, i64 2776}
!87 = !{!15, !7, i64 2784}
!88 = !{!15, !4, i64 2792}
!89 = !{!15, !4, i64 2800}
!90 = !{!32, !7, i64 48}
!91 = !{!15, !7, i64 2808}
!92 = !{!93, !7, i64 8}
!93 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !4, i64 16, !4, i64 24, !5, i64 32}
!94 = !{!93, !4, i64 16}
!95 = !{!93, !4, i64 24}
!96 = !{!97, !16, i64 0}
!97 = !{!"", !16, i64 0, !16, i64 4, !16, i64 8}
!98 = !{!97, !16, i64 4}
!99 = !{!97, !16, i64 8}
!100 = !{!101, !16, i64 0}
!101 = !{!"", !16, i64 0, !16, i64 4}
!102 = !{!101, !16, i64 4}
!103 = !{!32, !4, i64 440}
!104 = !{!15, !4, i64 2832}
!105 = !{!15, !16, i64 124}
!106 = !{!32, !16, i64 224}
!107 = !{!15, !16, i64 120}
!108 = !{!32, !7, i64 236}
!109 = !{!15, !16, i64 128}
!110 = !{!15, !16, i64 60}
!111 = !{!112, !7, i64 0}
!112 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!113 = !{!112, !7, i64 16}
!114 = !{!15, !4, i64 88}
!115 = !{!15, !4, i64 96}
!116 = !{!15, !7, i64 64}
!117 = !{!15, !4, i64 72}
!118 = !{!15, !4, i64 80}
!119 = !{!15, !4, i64 216}
!120 = !{!15, !4, i64 208}
!121 = !{!73, !7, i64 1040}
!122 = !{!123, !4, i64 45808}
!123 = !{!"", !4, i64 0, !93, i64 8, !124, i64 45800, !5, i64 47080, !125, i64 50248}
!124 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !7, i64 40, !4, i64 48, !7, i64 56, !4, i64 64, !73, i64 72, !5, i64 1128, !4, i64 1272}
!125 = !{!"", !7, i64 0, !4, i64 8}
!126 = !{!127, !16, i64 4}
!127 = !{!"", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !8, i64 16, !8, i64 18, !7, i64 20, !7, i64 24, !5, i64 28, !5, i64 37}
!128 = !{!127, !16, i64 12}
!129 = !{!127, !8, i64 16}
!130 = !{!127, !8, i64 18}
!131 = !{!26, !4, i64 64}
!132 = !{!133, !7, i64 0}
!133 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !5, i64 28, !5, i64 1052, !5, i64 2076, !5, i64 3100}
!134 = !{!15, !7, i64 176}
!135 = !{!15, !7, i64 192}
!136 = !{!15, !7, i64 2740}
!137 = !{!15, !7, i64 164}
!138 = !{!139, !7, i64 4}
!139 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !4, i64 24, !4, i64 32, !4, i64 40}
!140 = !{!141, !141, i64 0}
!141 = !{!"double", !5, i64 0}
!142 = !{!32, !7, i64 88}
!143 = !{!32, !7, i64 92}
!144 = !{!33, !7, i64 12}
!145 = !{!15, !7, i64 148}
!146 = !{!32, !7, i64 32}
