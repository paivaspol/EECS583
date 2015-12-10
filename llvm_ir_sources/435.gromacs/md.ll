; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/md.c'
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
%struct.t_pull = type { %struct.t_pullgrps, %struct.t_pullgrps, %struct.t_pullgrps, i32, i32, [3 x float], [3 x float], float, float, [3 x i32], float, float, i32, float, float, float, i32, i32, i32, %struct.__sFILE*, float, float, float, i32, i32, i32 }
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
@.str1 = private unnamed_addr constant [62 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/md.c\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"fcd\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"nsb\00", align 1
@.str4 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"grps\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"parm\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"nrnb\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str8 = private unnamed_addr constant [19 x i8] c"Getting Loaded...\0A\00", align 1
@stdlog = external global %struct.__sFILE*
@.str9 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str10 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str11 = private unnamed_addr constant [3 x i8] c"vt\00", align 1
@.str12 = private unnamed_addr constant [5 x i8] c"vold\00", align 1
@.str13 = private unnamed_addr constant [20 x i8] c"Loaded with Money\0A\0A\00", align 1
@debug = external global %struct.__sFILE*
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
define i32 @__inline_isfinitef(float %__x) #2 {
  %1 = fcmp ord float %__x, 0.000000e+00
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #10
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
  %3 = tail call double @llvm.fabs.f64(double %__x) #10
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
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #10
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
  %1 = tail call float @llvm.fabs.f32(float %__x) #10
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #2 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #10
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #2 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #10
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
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #9
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
  %1 = tail call { double, double } @__sincos_stret(double %__x) #9
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
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #9
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
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #9
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !16
  store double %3, double* %__cosp, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @mdrunner(%struct.t_commrec* %cr, %struct.t_commrec* %mcr, i32 %nfile, %struct.t_filenm* %fnm, i32 %bVerbose, i32 %bCompact, i32 %nDlb, i32 %nstepout, %struct.t_edsamyn* %edyn, i64 %Flags) #4 {
  %v = alloca [3 x float]*, align 8
  %x = alloca [3 x float]*, align 8
  %box_size = alloca [3 x float], align 4
  %mdatoms = alloca %struct.t_mdatoms*, align 8
  %bParDummies = alloca i32, align 4
  %dummycomm = alloca %struct.t_comm_dummies, align 8
  %1 = bitcast %struct.t_comm_dummies* %dummycomm to i8*
  call void @llvm.lifetime.start(i64 48, i8* %1) #5
  %2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str1, i64 0, i64 0), i32 93, i32 44, i32 4) #9
  %3 = bitcast i8* %2 to float*
  %4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str1, i64 0, i64 0), i32 94, i32 1, i32 256) #9
  %5 = bitcast i8* %4 to %struct.t_fcdata*
  %6 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str1, i64 0, i64 0), i32 95, i32 1, i32 4124) #9
  %7 = bitcast i8* %6 to %struct.t_nsborder*
  %8 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str1, i64 0, i64 0), i32 96, i32 1, i32 50264) #9
  %9 = bitcast i8* %8 to %struct.t_topology*
  %10 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str1, i64 0, i64 0), i32 97, i32 1, i32 96) #9
  %11 = bitcast i8* %10 to %struct.t_groups*
  %12 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str1, i64 0, i64 0), i32 98, i32 1, i32 776) #9
  %13 = bitcast i8* %12 to %struct.t_parm*
  %14 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %15 = load i32* %14, align 4, !tbaa !18
  %16 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str1, i64 0, i64 0), i32 99, i32 %15, i32 1032) #9
  %17 = bitcast i8* %16 to %struct.t_nrnb*
  %18 = icmp ne i32 %bVerbose, 0
  br i1 %18, label %19, label %30

; <label>:19                                      ; preds = %0
  %20 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %21 = load i32* %20, align 4, !tbaa !20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

; <label>:23                                      ; preds = %19
  %24 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %25 = load i32* %24, align 4, !tbaa !21
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

; <label>:27                                      ; preds = %23
  %28 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !22
  %29 = tail call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str8, i64 0, i64 0), i64 18, i64 1, %struct.__sFILE* %28)
  br label %30

; <label>:30                                      ; preds = %27, %23, %19, %0
  %31 = load i32* %14, align 4, !tbaa !18
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %37, label %33

; <label>:33                                      ; preds = %30
  %34 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %35 = load i32* %34, align 4, !tbaa !23
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %62

; <label>:37                                      ; preds = %33, %30
  %38 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %39 = load i32* %38, align 4, !tbaa !20
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %.thread

.thread:                                          ; preds = %37
  %41 = load %struct.__sFILE** @stdlog, align 8, !tbaa !22
  br label %59

; <label>:42                                      ; preds = %37
  %43 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %44 = load i32* %43, align 4, !tbaa !21
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %.thread10

.thread10:                                        ; preds = %42
  %46 = load %struct.__sFILE** @stdlog, align 8, !tbaa !22
  br label %55

; <label>:47                                      ; preds = %42
  %48 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %49 = load i32* %48, align 4, !tbaa !24
  %50 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %51 = load i32* %50, align 4, !tbaa !25
  %52 = tail call i8* @ftp2fn(i32 24, i32 %nfile, %struct.t_filenm* %fnm) #9
  tail call void @distribute_parts(i32 %49, i32 %51, i32 0, i32 %31, %struct.t_parm* %13, i8* %52, i32 %nDlb) #9
  %.pr.pre = load i32* %38, align 4, !tbaa !20
  %53 = load %struct.__sFILE** @stdlog, align 8, !tbaa !22
  %54 = icmp eq i32 %.pr.pre, 0
  br i1 %54, label %55, label %59

; <label>:55                                      ; preds = %.thread10, %47
  %56 = phi %struct.__sFILE* [ %46, %.thread10 ], [ %53, %47 ]
  %57 = load i32* %43, align 4, !tbaa !21
  %58 = icmp eq i32 %57, 0
  %phitmp6 = select i1 %58, i32 3, i32 0
  br label %59

; <label>:59                                      ; preds = %.thread, %55, %47
  %60 = phi %struct.__sFILE* [ %53, %47 ], [ %56, %55 ], [ %41, %.thread ]
  %61 = phi i32 [ 0, %47 ], [ %phitmp6, %55 ], [ 0, %.thread ]
  call void @init_parts(%struct.__sFILE* %60, %struct.t_commrec* %cr, %struct.t_parm* %13, %struct.t_topology* %9, [3 x float]** %x, [3 x float]** %v, %struct.t_mdatoms** %mdatoms, %struct.t_nsborder* %7, i32 %61, i32* %bParDummies, %struct.t_comm_dummies* %dummycomm) #9
  br label %65

; <label>:62                                      ; preds = %33
  %63 = load %struct.__sFILE** @stdlog, align 8, !tbaa !22
  %64 = tail call i8* @ftp2fn(i32 24, i32 %nfile, %struct.t_filenm* %fnm) #9
  call void @init_single(%struct.__sFILE* %63, %struct.t_parm* %13, i8* %64, %struct.t_topology* %9, [3 x float]** %x, [3 x float]** %v, %struct.t_mdatoms** %mdatoms, %struct.t_nsborder* %7) #9
  store i32 0, i32* %bParDummies, align 4, !tbaa !26
  br label %65

; <label>:65                                      ; preds = %62, %59
  %66 = getelementptr inbounds i8* %6, i64 12
  %67 = bitcast i8* %66 to i32*
  %68 = load i32* %67, align 4, !tbaa !27
  %69 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str1, i64 0, i64 0), i32 122, i32 %68, i32 12) #9
  %70 = bitcast i8* %69 to [3 x float]*
  %71 = load i32* %67, align 4, !tbaa !27
  %72 = call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str1, i64 0, i64 0), i32 123, i32 %71, i32 12) #9
  %73 = bitcast i8* %72 to [3 x float]*
  %74 = load i32* %67, align 4, !tbaa !27
  %75 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str1, i64 0, i64 0), i32 124, i32 %74, i32 12) #9
  %76 = bitcast i8* %75 to [3 x float]*
  %77 = load i32* %67, align 4, !tbaa !27
  %78 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str1, i64 0, i64 0), i32 125, i32 %77, i32 12) #9
  %79 = bitcast i8* %78 to [3 x float]*
  %80 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  br i1 %18, label %81, label %._crit_edge

; <label>:81                                      ; preds = %65
  %82 = load i32* %80, align 4, !tbaa !20
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %._crit_edge

; <label>:84                                      ; preds = %81
  %85 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %86 = load i32* %85, align 4, !tbaa !21
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %._crit_edge

; <label>:88                                      ; preds = %84
  %89 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !22
  %90 = call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str13, i64 0, i64 0), i64 19, i64 1, %struct.__sFILE* %89)
  br label %._crit_edge

._crit_edge:                                      ; preds = %65, %88, %84, %81
  %91 = load i32* %80, align 4, !tbaa !20
  %92 = bitcast i8* %6 to i32*
  store i32 %91, i32* %92, align 4, !tbaa !29
  %93 = getelementptr inbounds i8* %8, i64 8
  %94 = bitcast i8* %93 to %struct.t_idef*
  %95 = getelementptr inbounds i8* %8, i64 12
  %96 = bitcast i8* %95 to i32*
  store i32 %91, i32* %96, align 4, !tbaa !30
  %97 = load %struct.__sFILE** @stdlog, align 8, !tbaa !22
  %98 = load %struct.t_mdatoms** %mdatoms, align 8, !tbaa !22
  %99 = bitcast i8* %12 to %struct.t_inputrec*
  %100 = getelementptr inbounds i8* %12, i64 384
  %101 = bitcast i8* %100 to %struct.t_grpopts*
  call void @init_groups(%struct.__sFILE* %97, %struct.t_mdatoms* %98, %struct.t_grpopts* %101, %struct.t_groups* %11) #9
  %102 = getelementptr inbounds i8* %12, i64 348
  %103 = bitcast i8* %102 to i32*
  %104 = load i32* %103, align 4, !tbaa !36
  %105 = getelementptr inbounds i8* %10, i64 80
  %106 = bitcast i8* %105 to i32*
  store i32 %104, i32* %106, align 4, !tbaa !40
  %107 = getelementptr inbounds i8* %8, i64 45800
  %108 = bitcast i8* %107 to %struct.t_atoms*
  %109 = bitcast i8* %107 to i32*
  %110 = load i32* %109, align 4, !tbaa !44
  %111 = call %struct.t_graph* @mk_graph(%struct.t_idef* %94, i32 %110, i32 0, i32 0) #9
  %112 = load %struct.__sFILE** @debug, align 8, !tbaa !22
  %113 = icmp eq %struct.__sFILE* %112, null
  br i1 %113, label %115, label %114

; <label>:114                                     ; preds = %._crit_edge
  call void @p_graph(%struct.__sFILE* %112, i8* getelementptr inbounds ([14 x i8]* @.str14, i64 0, i64 0), %struct.t_graph* %111) #9
  br label %115

; <label>:115                                     ; preds = %._crit_edge, %114
  %116 = load %struct.__sFILE** @stdlog, align 8, !tbaa !22
  %117 = getelementptr inbounds i8* %8, i64 40
  %118 = bitcast i8* %117 to [44 x %struct.t_ilist]*
  %119 = getelementptr inbounds i8* %8, i64 21880
  %120 = bitcast i8* %119 to i32*
  %121 = load i32* %120, align 4, !tbaa !45
  %122 = getelementptr inbounds i8* %8, i64 22912
  %123 = bitcast i8* %122 to i32**
  %124 = load i32** %123, align 8, !tbaa !47
  %125 = getelementptr inbounds i8* %8, i64 32
  %126 = bitcast i8* %125 to %union.t_iparams**
  %127 = load %union.t_iparams** %126, align 8, !tbaa !48
  call void @init_disres(%struct.__sFILE* %116, i32 %121, i32* %124, %union.t_iparams* %127, %struct.t_inputrec* %99, %struct.t_commrec* %mcr, %struct.t_fcdata* %5) #9
  %128 = load %struct.__sFILE** @stdlog, align 8, !tbaa !22
  %129 = getelementptr inbounds i8* %8, i64 23960
  %130 = bitcast i8* %129 to i32*
  %131 = load i32* %130, align 4, !tbaa !45
  %132 = getelementptr inbounds i8* %8, i64 24992
  %133 = bitcast i8* %132 to i32**
  %134 = load i32** %133, align 8, !tbaa !47
  %135 = load %union.t_iparams** %126, align 8, !tbaa !48
  %136 = load [3 x float]** %x, align 8, !tbaa !22
  %137 = load %struct.t_mdatoms** %mdatoms, align 8, !tbaa !22
  call void @init_orires(%struct.__sFILE* %128, i32 %131, i32* %134, %union.t_iparams* %135, [3 x float]* %136, %struct.t_mdatoms* %137, %struct.t_inputrec* %99, %struct.t_commrec* %mcr, %struct.t_fcdata* %5) #9
  br label %138

; <label>:138                                     ; preds = %115, %147
  %indvars.iv7 = phi i64 [ 0, %115 ], [ %indvars.iv.next8, %147 ]
  %139 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv7, i32 5
  %140 = load i64* %139, align 8, !tbaa !49
  %141 = and i64 %140, 2
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %147, label %143

; <label>:143                                     ; preds = %138
  %144 = getelementptr inbounds [44 x %struct.t_ilist]* %118, i64 0, i64 %indvars.iv7, i32 0
  %145 = load i32* %144, align 4, !tbaa !45
  %146 = icmp sgt i32 %145, 0
  br label %147

; <label>:147                                     ; preds = %138, %143
  %148 = phi i1 [ false, %138 ], [ %146, %143 ]
  %149 = zext i1 %148 to i32
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %150 = icmp slt i64 %indvars.iv.next8, 44
  %151 = xor i1 %148, true
  %or.cond = and i1 %150, %151
  br i1 %or.cond, label %138, label %.critedge

.critedge:                                        ; preds = %147
  %152 = call %struct.t_forcerec* @mk_forcerec() #9
  %153 = load %struct.__sFILE** @stdlog, align 8, !tbaa !22
  %154 = load %struct.t_mdatoms** %mdatoms, align 8, !tbaa !22
  %155 = getelementptr inbounds i8* %12, i64 592
  %156 = bitcast i8* %155 to [3 x [3 x float]]*
  %157 = bitcast i8* %155 to [3 x float]*
  %158 = call i8* @opt2fn(i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #9
  call void @init_forcerec(%struct.__sFILE* %153, %struct.t_forcerec* %152, %struct.t_inputrec* %99, %struct.t_topology* %9, %struct.t_commrec* %cr, %struct.t_mdatoms* %154, %struct.t_nsborder* %7, [3 x float]* %157, i32 0, i8* %158, i32 0) #9
  %159 = lshr i64 %Flags, 7
  %.tr = trunc i64 %159 to i32
  %160 = and i32 %.tr, 1
  %161 = getelementptr inbounds %struct.t_forcerec* %152, i64 0, i32 32
  store i32 %160, i32* %161, align 4, !tbaa !52
  br label %162

; <label>:162                                     ; preds = %162, %.critedge
  %indvars.iv = phi i64 [ 0, %.critedge ], [ %indvars.iv.next, %162 ]
  %163 = getelementptr inbounds [3 x [3 x float]]* %156, i64 0, i64 %indvars.iv, i64 %indvars.iv
  %164 = bitcast float* %163 to i32*
  %165 = load i32* %164, align 4, !tbaa !14
  %166 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 %indvars.iv
  %167 = bitcast float* %166 to i32*
  store i32 %165, i32* %167, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %168, label %162

; <label>:168                                     ; preds = %162
  %169 = getelementptr inbounds %struct.t_forcerec* %152, i64 0, i32 33
  %170 = load i32* %169, align 4, !tbaa !54
  %171 = icmp eq i32 %170, 5
  br i1 %171, label %172, label %176

; <label>:172                                     ; preds = %168
  %173 = load %struct.__sFILE** @stdlog, align 8, !tbaa !22
  %174 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 0
  %175 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8]* @.str16, i64 0, i64 0)) #9
  call void @init_pppm(%struct.__sFILE* %173, %struct.t_commrec* %cr, %struct.t_nsborder* %7, i32 0, i32 1, float* %174, i8* %175, %struct.t_inputrec* %99) #9
  %.pr3 = load i32* %169, align 4, !tbaa !54
  br label %176

; <label>:176                                     ; preds = %172, %168
  %177 = phi i32 [ %.pr3, %172 ], [ %170, %168 ]
  %178 = icmp eq i32 %177, 3
  br i1 %178, label %179, label %205

; <label>:179                                     ; preds = %176
  %180 = load %struct.__sFILE** @stdlog, align 8, !tbaa !22
  %181 = getelementptr inbounds i8* %12, i64 68
  %182 = bitcast i8* %181 to i32*
  %183 = load i32* %182, align 4, !tbaa !55
  %184 = getelementptr inbounds i8* %12, i64 72
  %185 = bitcast i8* %184 to i32*
  %186 = load i32* %185, align 4, !tbaa !56
  %187 = getelementptr inbounds i8* %12, i64 76
  %188 = bitcast i8* %187 to i32*
  %189 = load i32* %188, align 4, !tbaa !57
  %190 = getelementptr inbounds i8* %12, i64 80
  %191 = bitcast i8* %190 to i32*
  %192 = load i32* %191, align 4, !tbaa !58
  %193 = load i32* %92, align 4, !tbaa !29
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8* %6, i64 28
  %196 = bitcast i8* %195 to [256 x i32]*
  %197 = getelementptr inbounds [256 x i32]* %196, i64 0, i64 %194
  %198 = load i32* %197, align 4, !tbaa !26
  %199 = getelementptr inbounds i8* %12, i64 96
  %200 = bitcast i8* %199 to i32*
  %201 = load i32* %200, align 4, !tbaa !59
  %202 = getelementptr inbounds i8* %12, i64 88
  %203 = bitcast i8* %202 to i32*
  %204 = load i32* %203, align 4, !tbaa !60
  call void @init_pme(%struct.__sFILE* %180, %struct.t_commrec* %cr, i32 %183, i32 %186, i32 %189, i32 %192, i32 %198, i32 %201, i32 %204) #9
  br label %205

; <label>:205                                     ; preds = %179, %176
  %206 = bitcast i8* %12 to i32*
  %207 = load i32* %206, align 4, !tbaa !61
  switch i32 %207, label %244 [
    i32 0, label %208
    i32 4, label %208
    i32 3, label %208
    i32 2, label %217
    i32 1, label %227
    i32 5, label %237
  ]

; <label>:208                                     ; preds = %205, %205, %205
  %209 = load %struct.__sFILE** @stdlog, align 8, !tbaa !22
  %210 = load i32* %bParDummies, align 4, !tbaa !26
  %211 = icmp ne i32 %210, 0
  %dummycomm. = select i1 %211, %struct.t_comm_dummies* %dummycomm, %struct.t_comm_dummies* null
  %212 = load [3 x float]** %x, align 8, !tbaa !22
  %213 = load [3 x float]** %v, align 8, !tbaa !22
  %214 = load %struct.t_mdatoms** %mdatoms, align 8, !tbaa !22
  %215 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 0
  %216 = call i64 @do_md(%struct.__sFILE* %209, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, i32 %nfile, %struct.t_filenm* %fnm, i32 %bVerbose, i32 undef, i32 %149, %struct.t_comm_dummies* %dummycomm., i32 %nstepout, %struct.t_parm* %13, %struct.t_groups* %11, %struct.t_topology* %9, float* %3, %struct.t_fcdata* %5, [3 x float]* %212, [3 x float]* %79, [3 x float]* %213, [3 x float]* %76, [3 x float]* %73, [3 x float]* %70, %struct.t_mdatoms* %214, %struct.t_nsborder* %7, %struct.t_nrnb* %17, %struct.t_graph* %111, %struct.t_edsamyn* %edyn, %struct.t_forcerec* %152, float* %215, i64 %Flags) #11
  br label %245

; <label>:217                                     ; preds = %205
  %218 = load %struct.__sFILE** @stdlog, align 8, !tbaa !22
  %219 = load [3 x float]** %x, align 8, !tbaa !22
  %220 = load %struct.t_mdatoms** %mdatoms, align 8, !tbaa !22
  %221 = getelementptr inbounds i8* %12, i64 736
  %222 = bitcast i8* %221 to [3 x float]*
  %223 = load i32* %bParDummies, align 4, !tbaa !26
  %224 = icmp ne i32 %223, 0
  %dummycomm.1 = select i1 %224, %struct.t_comm_dummies* %dummycomm, %struct.t_comm_dummies* null
  %225 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 0
  %226 = call i64 @do_cg(%struct.__sFILE* %218, i32 %nfile, %struct.t_filenm* %fnm, %struct.t_parm* %13, %struct.t_topology* %9, %struct.t_groups* %11, %struct.t_nsborder* %7, [3 x float]* %219, [3 x float]* %73, [3 x float]* %70, %struct.t_mdatoms* %220, [3 x float]* %222, float* %3, %struct.t_fcdata* %5, %struct.t_nrnb* %17, i32 %bVerbose, i32 %149, %struct.t_comm_dummies* %dummycomm.1, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_graph* %111, %struct.t_forcerec* %152, float* %225) #9
  br label %245

; <label>:227                                     ; preds = %205
  %228 = load %struct.__sFILE** @stdlog, align 8, !tbaa !22
  %229 = load [3 x float]** %x, align 8, !tbaa !22
  %230 = load %struct.t_mdatoms** %mdatoms, align 8, !tbaa !22
  %231 = getelementptr inbounds i8* %12, i64 736
  %232 = bitcast i8* %231 to [3 x float]*
  %233 = load i32* %bParDummies, align 4, !tbaa !26
  %234 = icmp ne i32 %233, 0
  %dummycomm.2 = select i1 %234, %struct.t_comm_dummies* %dummycomm, %struct.t_comm_dummies* null
  %235 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 0
  %236 = call i64 @do_steep(%struct.__sFILE* %228, i32 %nfile, %struct.t_filenm* %fnm, %struct.t_parm* %13, %struct.t_topology* %9, %struct.t_groups* %11, %struct.t_nsborder* %7, [3 x float]* %229, [3 x float]* %73, [3 x float]* %70, %struct.t_mdatoms* %230, [3 x float]* %232, float* %3, %struct.t_fcdata* %5, %struct.t_nrnb* %17, i32 %bVerbose, i32 %149, %struct.t_comm_dummies* %dummycomm.2, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_graph* %111, %struct.t_forcerec* %152, float* %235) #9
  br label %245

; <label>:237                                     ; preds = %205
  %238 = load %struct.__sFILE** @stdlog, align 8, !tbaa !22
  %239 = load [3 x float]** %x, align 8, !tbaa !22
  %240 = load [3 x float]** %v, align 8, !tbaa !22
  %241 = load %struct.t_mdatoms** %mdatoms, align 8, !tbaa !22
  %242 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 0
  %243 = call i64 @do_nm(%struct.__sFILE* %238, %struct.t_commrec* %cr, i32 %nfile, %struct.t_filenm* %fnm, i32 %bVerbose, i32 %bCompact, i32 %nstepout, %struct.t_parm* %13, %struct.t_groups* %11, %struct.t_topology* %9, float* %3, %struct.t_fcdata* %5, [3 x float]* %239, [3 x float]* %79, [3 x float]* %240, [3 x float]* %76, [3 x float]* %73, [3 x float]* %70, %struct.t_mdatoms* %241, %struct.t_nsborder* %7, %struct.t_nrnb* %17, %struct.t_graph* %111, %struct.t_edsamyn* %edyn, %struct.t_forcerec* %152, float* %242) #9
  br label %245

; <label>:244                                     ; preds = %205
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str17, i64 0, i64 0), i32 %207) #9
  br label %245

; <label>:245                                     ; preds = %244, %237, %227, %217, %208
  %start_t.0 = phi i64 [ 0, %244 ], [ %243, %237 ], [ %236, %227 ], [ %226, %217 ], [ %216, %208 ]
  %246 = load i32* %80, align 4, !tbaa !20
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %259

; <label>:248                                     ; preds = %245
  %249 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %250 = load i32* %249, align 4, !tbaa !21
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %259

; <label>:252                                     ; preds = %248
  %253 = call i64 @time(i64* null) #9
  %254 = call double @difftime(i64 %253, i64 %start_t.0) #9
  %255 = call double @node_time() #9
  %256 = call double @fabs(double %255) #12
  %257 = fcmp olt double %256, 1.200000e-38
  br i1 %257, label %258, label %259

; <label>:258                                     ; preds = %252
  br label %259

; <label>:259                                     ; preds = %245, %248, %252, %258
  %realtime.0 = phi double [ %254, %258 ], [ %254, %252 ], [ 0.000000e+00, %248 ], [ 0.000000e+00, %245 ]
  %nodetime.0 = phi double [ %254, %258 ], [ %255, %252 ], [ 0.000000e+00, %248 ], [ 0.000000e+00, %245 ]
  %260 = load %struct.t_mdatoms** %mdatoms, align 8, !tbaa !22
  call void @md2atoms(%struct.t_mdatoms* %260, %struct.t_atoms* %108, i32 1) #9
  br i1 %18, label %261, label %274

; <label>:261                                     ; preds = %259
  %262 = load %struct.__sFILE** @stdlog, align 8, !tbaa !22
  %263 = call i8* @ftp2fn(i32 12, i32 %nfile, %struct.t_filenm* %fnm) #9
  %264 = getelementptr inbounds i8* %12, i64 4
  %265 = bitcast i8* %264 to i32*
  %266 = load i32* %265, align 4, !tbaa !62
  %267 = load i32* %206, align 4, !tbaa !61
  %268 = icmp ult i32 %267, 5
  br i1 %268, label %switch.lookup, label %269

switch.lookup:                                    ; preds = %261
  %switch.cast = trunc i32 %267 to i5
  %switch.downshift = lshr i5 -7, %switch.cast
  %switch.masked = zext i5 %switch.downshift to i32
  %phitmp = and i32 %switch.masked, 1
  br label %269

; <label>:269                                     ; preds = %261, %switch.lookup
  %270 = phi i32 [ %phitmp, %switch.lookup ], [ 0, %261 ]
  call void @finish_run(%struct.__sFILE* %262, %struct.t_commrec* %cr, i8* %263, %struct.t_nsborder* %7, %struct.t_topology* %9, %struct.t_parm* %13, %struct.t_nrnb* %17, double %nodetime.0, double %realtime.0, i32 %266, i32 %270) #9
  %271 = load %struct.__sFILE** @stdlog, align 8, !tbaa !22
  %272 = load i32* %80, align 4, !tbaa !20
  %273 = call i64 @print_date_and_time(%struct.__sFILE* %271, i32 %272, i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0)) #9
  br label %274

; <label>:274                                     ; preds = %269, %259
  call void @llvm.lifetime.end(i64 48, i8* %1) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #6

; Function Attrs: optsize
declare void @distribute_parts(i32, i32, i32, i32, %struct.t_parm*, i8*, i32) #1

; Function Attrs: optsize
declare i8* @ftp2fn(i32, i32, %struct.t_filenm*) #1

; Function Attrs: optsize
declare void @init_parts(%struct.__sFILE*, %struct.t_commrec*, %struct.t_parm*, %struct.t_topology*, [3 x float]**, [3 x float]**, %struct.t_mdatoms**, %struct.t_nsborder*, i32, i32*, %struct.t_comm_dummies*) #1

; Function Attrs: optsize
declare void @init_single(%struct.__sFILE*, %struct.t_parm*, i8*, %struct.t_topology*, [3 x float]**, [3 x float]**, %struct.t_mdatoms**, %struct.t_nsborder*) #1

; Function Attrs: optsize
declare void @init_groups(%struct.__sFILE*, %struct.t_mdatoms*, %struct.t_grpopts*, %struct.t_groups*) #1

; Function Attrs: optsize
declare %struct.t_graph* @mk_graph(%struct.t_idef*, i32, i32, i32) #1

; Function Attrs: optsize
declare void @p_graph(%struct.__sFILE*, i8*, %struct.t_graph*) #1

; Function Attrs: optsize
declare void @init_disres(%struct.__sFILE*, i32, i32*, %union.t_iparams*, %struct.t_inputrec*, %struct.t_commrec*, %struct.t_fcdata*) #1

; Function Attrs: optsize
declare void @init_orires(%struct.__sFILE*, i32, i32*, %union.t_iparams*, [3 x float]*, %struct.t_mdatoms*, %struct.t_inputrec*, %struct.t_commrec*, %struct.t_fcdata*) #1

; Function Attrs: optsize
declare %struct.t_forcerec* @mk_forcerec() #1

; Function Attrs: optsize
declare void @init_forcerec(%struct.__sFILE*, %struct.t_forcerec*, %struct.t_inputrec*, %struct.t_topology*, %struct.t_commrec*, %struct.t_mdatoms*, %struct.t_nsborder*, [3 x float]*, i32, i8*, i32) #1

; Function Attrs: optsize
declare i8* @opt2fn(i8*, i32, %struct.t_filenm*) #1

; Function Attrs: optsize
declare void @init_pppm(%struct.__sFILE*, %struct.t_commrec*, %struct.t_nsborder*, i32, i32, float*, i8*, %struct.t_inputrec*) #1

; Function Attrs: nounwind optsize readonly
declare i8* @getenv(i8* nocapture) #7

; Function Attrs: optsize
declare void @init_pme(%struct.__sFILE*, %struct.t_commrec*, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define i64 @do_md(%struct.__sFILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, i32 %nfile, %struct.t_filenm* %fnm, i32 %bVerbose, i32 %bCompact, i32 %bDummies, %struct.t_comm_dummies* %dummycomm, i32 %stepout, %struct.t_parm* %parm, %struct.t_groups* %grps, %struct.t_topology* %top, float* %ener, %struct.t_fcdata* %fcd, [3 x float]* %x, [3 x float]* %vold, [3 x float]* %v, [3 x float]* %vt, [3 x float]* %f, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, %struct.t_nsborder* %nsb, %struct.t_nrnb* %nrnb, %struct.t_graph* %graph, %struct.t_edsamyn* %edyn, %struct.t_forcerec* %fr, float* %box_size, i64 %Flags) #4 {
  %mdebin = alloca %struct.t_mdebin*, align 8
  %fp_ene = alloca i32, align 4
  %fp_dgdl = alloca %struct.__sFILE*, align 8
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
  store i32 0, i32* %fp_ene, align 4, !tbaa !26
  store %struct.__sFILE* null, %struct.__sFILE** %fp_dgdl, align 8, !tbaa !22
  %1 = bitcast [3 x [3 x float]]* %force_vir to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #5
  %2 = bitcast [3 x [3 x float]]* %pme_vir to i8*
  call void @llvm.lifetime.start(i64 36, i8* %2) #5
  %3 = bitcast [3 x [3 x float]]* %shake_vir to i8*
  call void @llvm.lifetime.start(i64 36, i8* %3) #5
  %4 = bitcast %struct.t_nrnb* %mynrnb to i8*
  call void @llvm.lifetime.start(i64 1032, i8* %4) #5
  %5 = bitcast %struct.t_trxframe* %rerun_fr to i8*
  call void @llvm.lifetime.start(i64 176, i8* %5) #5
  %6 = bitcast %struct.t_pull* %pulldata to i8*
  call void @llvm.lifetime.start(i64 552, i8* %6) #5
  store float 0.000000e+00, float* %terminate, align 4, !tbaa !14
  store i32 0, i32* %bConverged, align 4, !tbaa !26
  %7 = and i64 %Flags, 16
  %8 = icmp ne i64 %7, 0
  %9 = and i64 %Flags, 8
  %10 = icmp ne i64 %9, 0
  %11 = and i64 %Flags, 2
  %12 = icmp eq i64 %11, 0
  %13 = and i64 %Flags, 64
  %14 = icmp ne i64 %13, 0
  %15 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0
  %16 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %17 = getelementptr inbounds [3 x [3 x float]]* %force_vir, i64 0, i64 0
  %18 = getelementptr inbounds [3 x [3 x float]]* %pme_vir, i64 0, i64 0
  %19 = getelementptr inbounds [3 x [3 x float]]* %shake_vir, i64 0, i64 0
  %20 = getelementptr inbounds [3 x float]* %mu_tot, i64 0, i64 0
  call void @init_md(%struct.t_commrec* %cr, %struct.t_inputrec* %15, [3 x float]* %16, float* %t, float* %t0, float* %lambda, float* %lam0, float* %SAfactor, %struct.t_nrnb* %mynrnb, i32* %bTYZ, %struct.t_topology* %top, i32 %nfile, %struct.t_filenm* %fnm, i8** %traj, i8** %xtc_traj, i32* %fp_ene, %struct.__sFILE** %fp_dgdl, %struct.t_mdebin** %mdebin, %struct.t_groups* %grps, [3 x float]* %17, [3 x float]* %18, [3 x float]* %19, %struct.t_mdatoms* %mdatoms, float* %20, i32* %bNEMD, %struct.t_vcm** %vcm, %struct.t_nsborder* %nsb) #9
  %21 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %22 = load i32* %21, align 4, !tbaa !29
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %23
  %25 = load i32* %24, align 4, !tbaa !26
  %26 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %23
  %27 = load i32* %26, align 4, !tbaa !26
  %28 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1
  %29 = call %struct.t_shell* @init_shells(%struct.__sFILE* %log, i32 %25, i32 %27, %struct.t_idef* %28, %struct.t_mdatoms* %mdatoms, i32* %nshell) #9
  %30 = load i32* %nshell, align 4, !tbaa !26
  store i32 %30, i32* %nshell_tot, align 4, !tbaa !26
  %31 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %32 = load i32* %31, align 4, !tbaa !18
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %38, label %34

; <label>:34                                      ; preds = %0
  %35 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %36 = load i32* %35, align 4, !tbaa !23
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %34, %0
  call void @gmx_sumi(i32 1, i32* %nshell_tot, %struct.t_commrec* %cr) #9
  %.pre = load i32* %nshell_tot, align 4, !tbaa !26
  br label %39

; <label>:39                                      ; preds = %38, %34
  %40 = phi i32 [ %.pre, %38 ], [ %30, %34 ]
  %41 = icmp sgt i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @ftp2bSet(i32 21, i32 %nfile, %struct.t_filenm* %fnm) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

; <label>:45                                      ; preds = %39
  %46 = call i8* @ftp2fn(i32 21, i32 %nfile, %struct.t_filenm* %fnm) #9
  call void @rd_index(i8* %46, i32 1, i32* %gnx, i32** %grpindex, i8** %grpname) #9
  br label %.loopexit83

; <label>:47                                      ; preds = %39
  %48 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 1
  %49 = load i32* %48, align 4, !tbaa !63
  store i32 %49, i32* %gnx, align 4, !tbaa !26
  %50 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str1, i64 0, i64 0), i32 310, i32 %49, i32 4) #9
  %51 = bitcast i32** %grpindex to i8**
  store i8* %50, i8** %51, align 8, !tbaa !22
  %52 = load i32* %gnx, align 4, !tbaa !26
  %53 = icmp sgt i32 %52, 0
  %54 = bitcast i8* %50 to i32*
  br i1 %53, label %.lr.ph114, label %.loopexit83

.lr.ph114:                                        ; preds = %47, %.lr.ph114
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %.lr.ph114 ], [ 0, %47 ]
  %55 = getelementptr inbounds i32* %54, i64 %indvars.iv134
  %56 = trunc i64 %indvars.iv134 to i32
  store i32 %56, i32* %55, align 4, !tbaa !26
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1
  %57 = load i32* %gnx, align 4, !tbaa !26
  %58 = sext i32 %57 to i64
  %59 = icmp slt i64 %indvars.iv.next135, %58
  br i1 %59, label %.lr.ph114, label %.loopexit83

.loopexit83:                                      ; preds = %.lr.ph114, %47, %45
  %60 = call i32 @ftp2bSet(i32 1, i32 %nfile, %struct.t_filenm* %fnm) #9
  %61 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %62 = load i32* %61, align 4, !tbaa !20
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %72

; <label>:64                                      ; preds = %.loopexit83
  %65 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %66 = load i32* %65, align 4, !tbaa !21
  %67 = icmp eq i32 %66, 0
  %68 = icmp ne i32 %60, 0
  %or.cond = and i1 %68, %67
  br i1 %or.cond, label %69, label %72

; <label>:69                                      ; preds = %64
  %70 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !22
  %71 = call i64 @fwrite(i8* getelementptr inbounds ([34 x i8]* @.str20, i64 0, i64 0), i64 33, i64 1, %struct.__sFILE* %70)
  br label %72

; <label>:72                                      ; preds = %69, %64, %.loopexit83
  %73 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 0
  %74 = load i32* %73, align 4, !tbaa !64
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %77, label %76

; <label>:76                                      ; preds = %72
  call void @do_pbc_first(%struct.__sFILE* %log, %struct.t_parm* %parm, float* %box_size, %struct.t_forcerec* %fr, %struct.t_graph* %graph, [3 x float]* %x) #9
  br label %77

; <label>:77                                      ; preds = %72, %76
  call void @init_pull(%struct.__sFILE* %log, i32 %nfile, %struct.t_filenm* %fnm, %struct.t_pull* %pulldata, [3 x float]* %x, %struct.t_mdatoms* %mdatoms, [3 x float]* %16) #9
  %78 = getelementptr inbounds %struct.t_pull* %pulldata, i64 0, i32 16
  %79 = load i32* %78, align 4, !tbaa !65
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

; <label>:81                                      ; preds = %77
  %82 = load i32* %31, align 4, !tbaa !18
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %85

; <label>:84                                      ; preds = %81
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([25 x i8]* @.str21, i64 0, i64 0)) #9
  br label %85

; <label>:85                                      ; preds = %77, %84, %81
  %86 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 26
  %87 = load i32* %86, align 4, !tbaa !68
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

; <label>:89                                      ; preds = %85
  %90 = load i32* %bTYZ, align 4, !tbaa !26
  %91 = load float* %lambda, align 4, !tbaa !14
  call void @do_shakefirst(%struct.__sFILE* %log, i32 %90, float %91, float* %ener, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, %struct.t_mdatoms* %mdatoms, [3 x float]* %x, [3 x float]* %vold, [3 x float]* %buf, [3 x float]* %f, [3 x float]* %v, %struct.t_graph* %graph, %struct.t_commrec* %cr, %struct.t_nrnb* %mynrnb, %struct.t_groups* %grps, %struct.t_forcerec* %fr, %struct.t_topology* %top, %struct.t_edsamyn* %edyn, %struct.t_pull* %pulldata) #9
  br label %92

; <label>:92                                      ; preds = %85, %89
  %93 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 3, i32 0
  %94 = load float* %93, align 4, !tbaa !40
  %fabsf = call float @fabsf(float %94) #8
  %95 = fpext float %fabsf to double
  %96 = fcmp olt double %95, 1.200000e-38
  br i1 %96, label %97, label %111

; <label>:97                                      ; preds = %92
  %98 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 0
  %99 = load i32* %98, align 4, !tbaa !61
  %100 = icmp eq i32 %99, 4
  %101 = zext i1 %100 to i32
  %102 = load i32* %21, align 4, !tbaa !29
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %103
  %105 = load i32* %104, align 4, !tbaa !26
  %106 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %103
  %107 = load i32* %106, align 4, !tbaa !26
  %108 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80
  %109 = load float* %lambda, align 4, !tbaa !14
  %110 = getelementptr inbounds float* %ener, i64 43
  call void @calc_ke_part(i32 1, i32 %101, i32 %105, i32 %107, [3 x float]* %vold, [3 x float]* %v, [3 x float]* %vt, %struct.t_grpopts* %108, %struct.t_mdatoms* %mdatoms, %struct.t_groups* %grps, %struct.t_nrnb* %mynrnb, float %109, float* %110) #9
  br label %121

; <label>:111                                     ; preds = %92
  %112 = load i32* %21, align 4, !tbaa !29
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %113
  %115 = load i32* %114, align 4, !tbaa !26
  %116 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %113
  %117 = load i32* %116, align 4, !tbaa !26
  %118 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80
  %119 = load float* %lambda, align 4, !tbaa !14
  %120 = getelementptr inbounds float* %ener, i64 43
  call void @calc_ke_part_visc(i32 1, i32 %115, i32 %117, [3 x float]* %16, [3 x float]* %x, [3 x float]* %vold, [3 x float]* %v, [3 x float]* %vt, %struct.t_grpopts* %118, %struct.t_mdatoms* %mdatoms, %struct.t_groups* %grps, %struct.t_nrnb* %mynrnb, float %119, float* %120) #9
  br label %121

; <label>:121                                     ; preds = %111, %97
  %122 = load i32* %31, align 4, !tbaa !18
  %123 = icmp sgt i32 %122, 1
  br i1 %123, label %128, label %124

; <label>:124                                     ; preds = %121
  %125 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %126 = load i32* %125, align 4, !tbaa !23
  %127 = icmp sgt i32 %126, 1
  br i1 %127, label %128, label %._crit_edge138

._crit_edge138:                                   ; preds = %124
  %.pre139 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80
  br label %131

; <label>:128                                     ; preds = %124, %121
  %129 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80
  %130 = load %struct.t_vcm** %vcm, align 8, !tbaa !22
  call void @global_stat(%struct.__sFILE* %log, %struct.t_commrec* %cr, float* %ener, [3 x float]* %17, [3 x float]* %19, %struct.t_grpopts* %129, %struct.t_groups* %grps, %struct.t_nrnb* %mynrnb, %struct.t_nrnb* %nrnb, %struct.t_vcm* %130, float* %terminate) #9
  br label %131

; <label>:131                                     ; preds = %._crit_edge138, %128
  %.pre-phi = phi %struct.t_grpopts* [ %.pre139, %._crit_edge138 ], [ %129, %128 ]
  %132 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 5, i64 0
  %133 = load i32* %bTYZ, align 4, !tbaa !26
  %134 = call float @sum_ekin(%struct.t_grpopts* %.pre-phi, %struct.t_groups* %grps, [3 x float]* %132, i32 %133) #9
  %135 = getelementptr inbounds float* %ener, i64 40
  store float %134, float* %135, align 4, !tbaa !14
  %136 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 27
  %137 = load i32* %136, align 4, !tbaa !69
  switch i32 %137, label %146 [
    i32 1, label %138
    i32 2, label %142
  ]

; <label>:138                                     ; preds = %131
  %139 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15
  %140 = load float* %139, align 4, !tbaa !70
  %141 = load float* %SAfactor, align 4, !tbaa !14
  call void @berendsen_tcoupl(%struct.t_grpopts* %.pre-phi, %struct.t_groups* %grps, float %140, float %141) #9
  br label %146

; <label>:142                                     ; preds = %131
  %143 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15
  %144 = load float* %143, align 4, !tbaa !70
  %145 = load float* %SAfactor, align 4, !tbaa !14
  call void @nosehoover_tcoupl(%struct.t_grpopts* %.pre-phi, %struct.t_groups* %grps, float %144, float %145) #9
  br label %146

; <label>:146                                     ; preds = %131, %142, %138
  br i1 %14, label %147, label %.loopexit82

; <label>:147                                     ; preds = %146
  %148 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  %149 = load i32* %148, align 4, !tbaa !27
  %150 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str1, i64 0, i64 0), i32 363, i32 %149, i32 12) #9
  %151 = bitcast i8* %150 to [3 x float]*
  %152 = load i32* %148, align 4, !tbaa !27
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %.lr.ph111, label %.loopexit82

.lr.ph111:                                        ; preds = %147
  %154 = sext i32 %152 to i64
  br label %155

; <label>:155                                     ; preds = %.lr.ph111, %155
  %indvars.iv132 = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next133, %155 ]
  %156 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv132, i64 0
  %157 = getelementptr inbounds [3 x float]* %151, i64 %indvars.iv132, i64 0
  %158 = bitcast float* %156 to i32*
  %159 = load i32* %158, align 4, !tbaa !14
  %160 = bitcast float* %157 to i32*
  store i32 %159, i32* %160, align 4, !tbaa !14
  %161 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv132, i64 1
  %162 = bitcast float* %161 to i32*
  %163 = load i32* %162, align 4, !tbaa !14
  %164 = getelementptr inbounds [3 x float]* %151, i64 %indvars.iv132, i64 1
  %165 = bitcast float* %164 to i32*
  store i32 %163, i32* %165, align 4, !tbaa !14
  %166 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv132, i64 2
  %167 = bitcast float* %166 to i32*
  %168 = load i32* %167, align 4, !tbaa !14
  %169 = getelementptr inbounds [3 x float]* %151, i64 %indvars.iv132, i64 2
  %170 = bitcast float* %169 to i32*
  store i32 %168, i32* %170, align 4, !tbaa !14
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1
  %171 = icmp slt i64 %indvars.iv.next133, %154
  br i1 %171, label %155, label %.loopexit82

.loopexit82:                                      ; preds = %155, %147, %146
  %xcopy.0 = phi [3 x float]* [ null, %146 ], [ %151, %147 ], [ %151, %155 ]
  %172 = load i32* %61, align 4, !tbaa !20
  %173 = call i64 @print_date_and_time(%struct.__sFILE* %log, i32 %172, i8* getelementptr inbounds ([14 x i8]* @.str23, i64 0, i64 0)) #9
  %174 = load i32* %61, align 4, !tbaa !20
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %204

; <label>:176                                     ; preds = %.loopexit82
  %177 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %178 = load i32* %177, align 4, !tbaa !21
  %179 = icmp eq i32 %178, 0
  %180 = icmp ne i32 %bVerbose, 0
  %or.cond3 = and i1 %180, %179
  br i1 %or.cond3, label %181, label %204

; <label>:181                                     ; preds = %176
  %182 = icmp eq %struct.__sFILE* %log, null
  br i1 %182, label %187, label %183

; <label>:183                                     ; preds = %181
  %184 = load float* %135, align 4, !tbaa !14
  %185 = fpext float %184 to double
  %186 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([27 x i8]* @.str24, i64 0, i64 0), double %185) #9
  br label %187

; <label>:187                                     ; preds = %181, %183
  %188 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !22
  %189 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0
  %190 = load i8*** %189, align 8, !tbaa !71
  %191 = load i8** %190, align 8, !tbaa !22
  br i1 %8, label %.thread, label %.thread69

.thread69:                                        ; preds = %187
  %192 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 1
  %193 = load i32* %192, align 4, !tbaa !62
  %194 = sitofp i32 %193 to float
  %195 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15
  %196 = load float* %195, align 4, !tbaa !70
  %197 = fmul float %194, %196
  %198 = fpext float %197 to double
  %199 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %188, i8* getelementptr inbounds ([42 x i8]* @.str28, i64 0, i64 0), i8* %191, i32 %193, double %198) #9
  call void @start_time() #9
  br label %.preheader81

.thread:                                          ; preds = %187
  %200 = call i8* @opt2fn(i8* getelementptr inbounds ([7 x i8]* @.str26, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #9
  %201 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %188, i8* getelementptr inbounds ([73 x i8]* @.str25, i64 0, i64 0), i8* %191, i8* %200) #9
  %202 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !22
  %203 = call i64 @fwrite(i8* getelementptr inbounds ([140 x i8]* @.str27, i64 0, i64 0), i64 139, i64 1, %struct.__sFILE* %202)
  call void @start_time() #9
  br label %205

; <label>:204                                     ; preds = %176, %.loopexit82
  call void @start_time() #9
  br i1 %8, label %205, label %.preheader81

; <label>:205                                     ; preds = %.thread, %204
  %206 = call i8* @opt2fn(i8* getelementptr inbounds ([7 x i8]* @.str26, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #9
  %207 = call i32 @read_first_frame(i32* %status, i8* %206, %struct.t_trxframe* %rerun_fr, i32 6) #9
  %208 = getelementptr inbounds %struct.t_trxframe* %rerun_fr, i64 0, i32 2
  %209 = load i32* %208, align 8, !tbaa !72
  %210 = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 1
  %211 = load i32* %210, align 4, !tbaa !74
  %212 = icmp eq i32 %209, %211
  br i1 %212, label %.preheader81, label %213

; <label>:213                                     ; preds = %205
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([75 x i8]* @.str29, i64 0, i64 0), i32 %209, i32 %211) #9
  br label %.preheader81

.preheader81:                                     ; preds = %205, %213, %204, %.thread69
  %bNotLastFrame.1.ph = phi i32 [ 0, %.thread69 ], [ 0, %204 ], [ %207, %213 ], [ %207, %205 ]
  %214 = getelementptr inbounds %struct.t_trxframe* %rerun_fr, i64 0, i32 8
  %215 = getelementptr inbounds %struct.t_trxframe* %rerun_fr, i64 0, i32 10
  %216 = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 1
  %217 = getelementptr inbounds %struct.t_trxframe* %rerun_fr, i64 0, i32 20
  %218 = getelementptr inbounds %struct.t_trxframe* %rerun_fr, i64 0, i32 25, i64 0
  %219 = getelementptr inbounds %struct.t_trxframe* %rerun_fr, i64 0, i32 25, i64 1, i64 1
  %220 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 1, i64 1
  %221 = getelementptr inbounds %struct.t_trxframe* %rerun_fr, i64 0, i32 25, i64 2, i64 2
  %222 = bitcast float* %221 to i32*
  %223 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 2, i64 2
  %224 = bitcast float* %223 to i32*
  %225 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 3
  %226 = getelementptr inbounds %struct.t_trxframe* %rerun_fr, i64 0, i32 21
  %227 = getelementptr inbounds %struct.t_trxframe* %rerun_fr, i64 0, i32 19
  %228 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 1
  %229 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 8
  %230 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 7
  %231 = icmp ne i32 %bDummies, 0
  %232 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15
  %233 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 2
  %234 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  %235 = icmp ne i32 %60, 0
  %236 = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 6
  %237 = icmp eq %struct.__sFILE* %log, null
  %238 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 46
  %239 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 33
  %240 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %241 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 56
  %242 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55
  %243 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 9
  %244 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 10
  %245 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 11
  %246 = and i64 %Flags, 80
  %or.cond16.not = icmp eq i64 %246, 0
  %247 = icmp ne i32 %bVerbose, 0
  %248 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0
  %249 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2
  %250 = getelementptr inbounds float* %ener, i64 42
  %251 = xor i1 %41, true
  %252 = getelementptr inbounds float* %ener, i64 37
  %253 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1
  %254 = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 4
  %255 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 28
  %256 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 0
  %257 = getelementptr inbounds float* %ener, i64 43
  %258 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 51
  %259 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 0
  %260 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 3
  %261 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 4
  %262 = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 0
  %263 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 3, i64 0
  %264 = getelementptr inbounds [3 x [3 x float]]* %force_vir, i64 0, i64 1, i64 1
  %265 = getelementptr inbounds [3 x [3 x float]]* %shake_vir, i64 0, i64 1, i64 1
  %266 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 3, i64 1, i64 1
  %267 = getelementptr inbounds [3 x [3 x float]]* %force_vir, i64 0, i64 2, i64 2
  %268 = getelementptr inbounds [3 x [3 x float]]* %shake_vir, i64 0, i64 2, i64 2
  %269 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 3, i64 2, i64 2
  %270 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 3, i32 1
  %271 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 3, i32 2
  %272 = getelementptr inbounds [3 x float]* %132, i64 0, i64 0
  %273 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 5, i64 1, i64 1
  %274 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 5, i64 2, i64 2
  %275 = getelementptr inbounds float* %ener, i64 38
  %276 = getelementptr inbounds float* %ener, i64 39
  %277 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 4, i64 0
  %278 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 33
  %279 = getelementptr inbounds float* %ener, i64 18
  %280 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 43
  %281 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 1
  %282 = icmp ne %struct.t_commrec* %mcr, null
  %283 = select i1 %282, %struct.t_commrec* %mcr, %struct.t_commrec* %cr
  %284 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 12
  %285 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 54
  %286 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 58
  %287 = icmp eq i32 %bVerbose, 0
  %288 = getelementptr inbounds %struct.t_nrnb* %mynrnb, i64 0, i32 0, i64 110
  %289 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %290 = getelementptr inbounds %struct.t_pull* %pulldata, i64 0, i32 3
  %291 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 34
  %292 = getelementptr inbounds %struct.t_trxframe* %rerun_fr, i64 0, i32 12
  %293 = bitcast float* %lambda to i32*
  %294 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 48
  %295 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 2
  br label %.backedge

.backedge:                                        ; preds = %888, %893, %.preheader81
  %tcount.0 = phi double [ 0.000000e+00, %.preheader81 ], [ %tcount.1, %893 ], [ %tcount.1, %888 ]
  %mu_aver.0 = phi float [ 0.000000e+00, %.preheader81 ], [ %mu_aver.1, %893 ], [ %mu_aver.1, %888 ]
  %tcr.0 = phi %struct.t_coupl_rec* [ null, %.preheader81 ], [ %tcr.1, %893 ], [ %tcr.1, %888 ]
  %nconverged.0 = phi i32 [ 0, %.preheader81 ], [ %nconverged.1, %893 ], [ %nconverged.1, %888 ]
  %bRerunWarnNoV.0 = phi i32 [ 1, %.preheader81 ], [ %bRerunWarnNoV.2, %893 ], [ %bRerunWarnNoV.2, %888 ]
  %bFirstStep.0 = phi i32 [ 1, %.preheader81 ], [ 0, %893 ], [ 0, %888 ]
  %bNotLastFrame.1 = phi i32 [ %bNotLastFrame.1.ph, %.preheader81 ], [ %bNotLastFrame.273, %893 ], [ %890, %888 ]
  %step.0 = phi i32 [ 0, %.preheader81 ], [ %894, %893 ], [ %step.2, %888 ]
  br i1 %8, label %299, label %296

; <label>:296                                     ; preds = %.backedge
  %297 = load i32* %228, align 4, !tbaa !62
  %298 = icmp sgt i32 %step.0, %297
  br i1 %298, label %.critedge4, label %.critedge

; <label>:299                                     ; preds = %.backedge
  %.old63 = icmp eq i32 %bNotLastFrame.1, 0
  br i1 %.old63, label %.critedge4, label %300

; <label>:300                                     ; preds = %299
  %301 = bitcast i32* %214 to i64*
  %302 = load i64* %301, align 8
  %303 = trunc i64 %302 to i32
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %308, label %305

; <label>:305                                     ; preds = %300
  %306 = lshr i64 %302, 32
  %307 = trunc i64 %306 to i32
  br label %308

; <label>:308                                     ; preds = %300, %305
  %step.1 = phi i32 [ %307, %305 ], [ %step.0, %300 ]
  %309 = bitcast i32* %215 to i64*
  %310 = load i64* %309, align 8
  %311 = trunc i64 %310 to i32
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %317, label %313

; <label>:313                                     ; preds = %308
  %314 = lshr i64 %310, 32
  %315 = trunc i64 %314 to i32
  %316 = bitcast i32 %315 to float
  br label %319

; <label>:317                                     ; preds = %308
  %318 = sitofp i32 %step.1 to float
  br label %319

; <label>:319                                     ; preds = %317, %313
  %storemerge62 = phi float [ %318, %317 ], [ %316, %313 ]
  store float %storemerge62, float* %t, align 4, !tbaa !14
  %320 = load i32* %216, align 4, !tbaa !74
  %321 = icmp sgt i32 %320, 0
  br i1 %321, label %.lr.ph97, label %._crit_edge98

.lr.ph97:                                         ; preds = %319
  %322 = load [3 x float]** %227, align 8, !tbaa !76
  %323 = sext i32 %320 to i64
  br label %324

; <label>:324                                     ; preds = %.lr.ph97, %324
  %indvars.iv121 = phi i64 [ 0, %.lr.ph97 ], [ %indvars.iv.next122, %324 ]
  %325 = getelementptr inbounds [3 x float]* %322, i64 %indvars.iv121, i64 0
  %326 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv121, i64 0
  %327 = bitcast float* %325 to i32*
  %328 = load i32* %327, align 4, !tbaa !14
  %329 = bitcast float* %326 to i32*
  store i32 %328, i32* %329, align 4, !tbaa !14
  %330 = getelementptr inbounds [3 x float]* %322, i64 %indvars.iv121, i64 1
  %331 = bitcast float* %330 to i32*
  %332 = load i32* %331, align 4, !tbaa !14
  %333 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv121, i64 1
  %334 = bitcast float* %333 to i32*
  store i32 %332, i32* %334, align 4, !tbaa !14
  %335 = getelementptr inbounds [3 x float]* %322, i64 %indvars.iv121, i64 2
  %336 = bitcast float* %335 to i32*
  %337 = load i32* %336, align 4, !tbaa !14
  %338 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv121, i64 2
  %339 = bitcast float* %338 to i32*
  store i32 %337, i32* %339, align 4, !tbaa !14
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  %340 = icmp slt i64 %indvars.iv.next122, %323
  br i1 %340, label %324, label %._crit_edge98

._crit_edge98:                                    ; preds = %324, %319
  %341 = load i32* %217, align 8, !tbaa !77
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %.preheader78, label %.preheader79

.preheader79:                                     ; preds = %._crit_edge98
  br i1 %321, label %.lr.ph101, label %.loopexit80

.lr.ph101:                                        ; preds = %.preheader79
  %343 = load [3 x float]** %226, align 8, !tbaa !78
  %344 = sext i32 %320 to i64
  br label %346

.preheader78:                                     ; preds = %._crit_edge98
  br i1 %321, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %.preheader78
  %345 = sext i32 %320 to i64
  br label %363

; <label>:346                                     ; preds = %.lr.ph101, %346
  %indvars.iv123 = phi i64 [ 0, %.lr.ph101 ], [ %indvars.iv.next124, %346 ]
  %347 = getelementptr inbounds [3 x float]* %343, i64 %indvars.iv123, i64 0
  %348 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv123, i64 0
  %349 = bitcast float* %347 to i32*
  %350 = load i32* %349, align 4, !tbaa !14
  %351 = bitcast float* %348 to i32*
  store i32 %350, i32* %351, align 4, !tbaa !14
  %352 = getelementptr inbounds [3 x float]* %343, i64 %indvars.iv123, i64 1
  %353 = bitcast float* %352 to i32*
  %354 = load i32* %353, align 4, !tbaa !14
  %355 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv123, i64 1
  %356 = bitcast float* %355 to i32*
  store i32 %354, i32* %356, align 4, !tbaa !14
  %357 = getelementptr inbounds [3 x float]* %343, i64 %indvars.iv123, i64 2
  %358 = bitcast float* %357 to i32*
  %359 = load i32* %358, align 4, !tbaa !14
  %360 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv123, i64 2
  %361 = bitcast float* %360 to i32*
  store i32 %359, i32* %361, align 4, !tbaa !14
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1
  %362 = icmp slt i64 %indvars.iv.next124, %344
  br i1 %362, label %346, label %.loopexit80

; <label>:363                                     ; preds = %.lr.ph103, %363
  %indvars.iv125 = phi i64 [ 0, %.lr.ph103 ], [ %indvars.iv.next126, %363 ]
  %364 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv125, i64 0
  store float 0.000000e+00, float* %364, align 4, !tbaa !14
  %365 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv125, i64 1
  store float 0.000000e+00, float* %365, align 4, !tbaa !14
  %366 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv125, i64 2
  store float 0.000000e+00, float* %366, align 4, !tbaa !14
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1
  %367 = icmp slt i64 %indvars.iv.next126, %345
  br i1 %367, label %363, label %._crit_edge104

._crit_edge104:                                   ; preds = %363, %.preheader78
  %368 = icmp eq i32 %bRerunWarnNoV.0, 0
  br i1 %368, label %.loopexit80, label %369

; <label>:369                                     ; preds = %._crit_edge104
  %370 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !22
  %371 = call i64 @fwrite(i8* getelementptr inbounds ([174 x i8]* @.str30, i64 0, i64 0), i64 173, i64 1, %struct.__sFILE* %370)
  br label %.loopexit80

.loopexit80:                                      ; preds = %346, %.preheader79, %._crit_edge104, %369
  %bRerunWarnNoV.1 = phi i32 [ 0, %369 ], [ 0, %._crit_edge104 ], [ %bRerunWarnNoV.0, %.preheader79 ], [ %bRerunWarnNoV.0, %346 ]
  %372 = bitcast [3 x float]* %218 to <4 x i32>*
  %373 = load <4 x i32>* %372, align 4, !tbaa !14
  %374 = bitcast [3 x float]* %16 to <4 x i32>*
  store <4 x i32> %373, <4 x i32>* %374, align 4, !tbaa !14
  %375 = bitcast float* %219 to <4 x i32>*
  %376 = load <4 x i32>* %375, align 4, !tbaa !14
  %377 = bitcast float* %220 to <4 x i32>*
  store <4 x i32> %376, <4 x i32>* %377, align 4, !tbaa !14
  %378 = load i32* %222, align 4, !tbaa !14
  store i32 %378, i32* %224, align 4, !tbaa !14
  %379 = load i32* %225, align 4, !tbaa !79
  %380 = or i32 %379, %bFirstStep.0
  %381 = icmp ne i32 %380, 0
  %.pre136 = load i32* %228, align 4, !tbaa !62
  br label %389

.critedge:                                        ; preds = %296
  %382 = load i32* %225, align 4, !tbaa !79
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %387, label %384

; <label>:384                                     ; preds = %.critedge
  %385 = srem i32 %step.0, %382
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %389, label %387

; <label>:387                                     ; preds = %.critedge, %384
  %388 = icmp ne i32 %bFirstStep.0, 0
  br label %389

; <label>:389                                     ; preds = %384, %387, %.loopexit80
  %390 = phi i32 [ %.pre136, %.loopexit80 ], [ %297, %384 ], [ %297, %387 ]
  %.sink = phi i1 [ %381, %.loopexit80 ], [ true, %384 ], [ %388, %387 ]
  %bRerunWarnNoV.2 = phi i32 [ %bRerunWarnNoV.1, %.loopexit80 ], [ %bRerunWarnNoV.0, %384 ], [ %bRerunWarnNoV.0, %387 ]
  %step.2 = phi i32 [ %step.1, %.loopexit80 ], [ %step.0, %384 ], [ %step.0, %387 ]
  %391 = zext i1 %.sink to i32
  %392 = icmp eq i32 %step.2, %390
  %393 = load i32* %229, align 4, !tbaa !80
  %394 = call i32 @do_per_step(i32 %step.2, i32 %393) #9
  %not. = icmp ne i32 %394, 0
  %.65 = or i1 %392, %not.
  %395 = load i32* %230, align 4, !tbaa !81
  %ispos = icmp sgt i32 %395, -1
  %neg = sub i32 0, %395
  %396 = select i1 %ispos, i32 %395, i32 %neg
  %397 = call i32 @do_per_step(i32 %step.2, i32 %396) #9
  br i1 %14, label %.preheader76, label %.loopexit77

.preheader76:                                     ; preds = %389
  %398 = load i32* %234, align 4, !tbaa !27
  %399 = icmp sgt i32 %398, 0
  br i1 %399, label %.lr.ph106, label %.loopexit77

.lr.ph106:                                        ; preds = %.preheader76
  %400 = sext i32 %398 to i64
  br label %401

; <label>:401                                     ; preds = %.lr.ph106, %401
  %indvars.iv127 = phi i64 [ 0, %.lr.ph106 ], [ %indvars.iv.next128, %401 ]
  %402 = getelementptr inbounds [3 x float]* %xcopy.0, i64 %indvars.iv127, i64 0
  %403 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv127, i64 0
  %404 = bitcast float* %402 to i32*
  %405 = load i32* %404, align 4, !tbaa !14
  %406 = bitcast float* %403 to i32*
  store i32 %405, i32* %406, align 4, !tbaa !14
  %407 = getelementptr inbounds [3 x float]* %xcopy.0, i64 %indvars.iv127, i64 1
  %408 = bitcast float* %407 to i32*
  %409 = load i32* %408, align 4, !tbaa !14
  %410 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv127, i64 1
  %411 = bitcast float* %410 to i32*
  store i32 %409, i32* %411, align 4, !tbaa !14
  %412 = getelementptr inbounds [3 x float]* %xcopy.0, i64 %indvars.iv127, i64 2
  %413 = bitcast float* %412 to i32*
  %414 = load i32* %413, align 4, !tbaa !14
  %415 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv127, i64 2
  %416 = bitcast float* %415 to i32*
  store i32 %414, i32* %416, align 4, !tbaa !14
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1
  %417 = icmp slt i64 %indvars.iv.next128, %400
  br i1 %417, label %401, label %.loopexit77

.loopexit77:                                      ; preds = %401, %.preheader76, %389
  br i1 %231, label %418, label %420

; <label>:418                                     ; preds = %.loopexit77
  call void @shift_self(%struct.t_graph* %graph, [3 x float]* %16, [3 x float]* %x) #9
  %419 = load float* %232, align 4, !tbaa !70
  call void @construct_dummies(%struct.__sFILE* %log, [3 x float]* %x, %struct.t_nrnb* %mynrnb, float %419, [3 x float]* %v, %struct.t_idef* %28, %struct.t_graph* %graph, %struct.t_commrec* %cr, [3 x float]* %16, %struct.t_comm_dummies* %dummycomm) #9
  call void @unshift_self(%struct.t_graph* %graph, [3 x float]* %16, [3 x float]* %x) #9
  br label %420

; <label>:420                                     ; preds = %418, %.loopexit77
  %421 = load float* %lambda, align 4, !tbaa !14
  call void @init_mdatoms(%struct.t_mdatoms* %mdatoms, float %421, i32 %bFirstStep.0) #9
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 16, i1 false) #5
  br i1 %10, label %422, label %432

; <label>:422                                     ; preds = %420
  %423 = load i8**** %233, align 8, !tbaa !82
  %424 = load float* %t, align 4, !tbaa !14
  %425 = load i32* %21, align 4, !tbaa !29
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %426
  %428 = load i32* %427, align 4, !tbaa !26
  %429 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %426
  %430 = load i32* %429, align 4, !tbaa !26
  %431 = add nsw i32 %430, %428
  call void @ionize(%struct.__sFILE* %log, %struct.t_mdatoms* %mdatoms, i8*** %423, float %424, %struct.t_inputrec* %15, [3 x float]* %x, [3 x float]* %v, i32 %428, i32 %431, [3 x float]* %16, %struct.t_commrec* %cr) #9
  br label %432

; <label>:432                                     ; preds = %422, %420
  br i1 %14, label %433, label %434

; <label>:433                                     ; preds = %432
  call void @update_forcefield(i32 %nfile, %struct.t_filenm* %fnm, %struct.t_forcerec* %fr) #9
  br label %434

; <label>:434                                     ; preds = %433, %432
  br i1 %41, label %435, label %446

; <label>:435                                     ; preds = %434
  %436 = load i32* %nshell, align 4, !tbaa !26
  %437 = load i8** %traj, align 8, !tbaa !22
  %438 = load float* %t, align 4, !tbaa !14
  %439 = load float* %lambda, align 4, !tbaa !14
  %440 = load i32* %234, align 4, !tbaa !27
  %441 = call i32 @relax_shells(%struct.__sFILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, i32 %bVerbose, i32 %step.2, %struct.t_parm* %parm, i32 %391, i32 %397, %struct.t_topology* %top, float* %ener, %struct.t_fcdata* %fcd, [3 x float]* %x, [3 x float]* %vold, [3 x float]* %v, [3 x float]* %vt, [3 x float]* %f, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, %struct.t_nsborder* %nsb, %struct.t_nrnb* %mynrnb, %struct.t_graph* %graph, %struct.t_groups* %grps, [3 x float]* %17, [3 x float]* %18, i32 %42, i32 %436, %struct.t_shell* %29, %struct.t_forcerec* %fr, i8* %437, float %438, float %439, float* %20, i32 %440, [3 x float]* %16, i32* %bConverged) #9
  %442 = sitofp i32 %441 to double
  %443 = fadd double %tcount.0, %442
  %444 = load i32* %bConverged, align 4, !tbaa !26
  %not.74 = icmp ne i32 %444, 0
  %445 = zext i1 %not.74 to i32
  %nconverged.0. = add nsw i32 %445, %nconverged.0
  br label %460

; <label>:446                                     ; preds = %434
  br i1 %287, label %456, label %447

; <label>:447                                     ; preds = %446
  %448 = load i32* %31, align 4, !tbaa !18
  %449 = icmp sgt i32 %448, 1
  br i1 %449, label %453, label %450

; <label>:450                                     ; preds = %447
  %451 = load i32* %289, align 4, !tbaa !23
  %452 = icmp sgt i32 %451, 1
  br label %453

; <label>:453                                     ; preds = %450, %447
  %454 = phi i1 [ true, %447 ], [ %452, %450 ]
  %455 = xor i1 %454, true
  br label %456

; <label>:456                                     ; preds = %446, %453
  %457 = phi i1 [ false, %446 ], [ %455, %453 ]
  %458 = zext i1 %457 to i32
  %459 = load float* %lambda, align 4, !tbaa !14
  call void @do_force(%struct.__sFILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, [3 x float]* %17, [3 x float]* %18, i32 %step.2, %struct.t_nrnb* %mynrnb, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, float* %ener, %struct.t_fcdata* %fcd, i32 %458, float %459, %struct.t_graph* %graph, i32 %391, i32 0, %struct.t_forcerec* %fr, float* %20, i32 0) #9
  br label %460

; <label>:460                                     ; preds = %435, %456
  %tcount.1 = phi double [ %tcount.0, %456 ], [ %443, %435 ]
  %nconverged.1 = phi i32 [ %nconverged.0, %456 ], [ %nconverged.0., %435 ]
  br i1 %235, label %461, label %466

; <label>:461                                     ; preds = %460
  %462 = load float** %236, align 8, !tbaa !83
  %463 = load i32* %gnx, align 4, !tbaa !26
  %464 = load i32** %grpindex, align 8, !tbaa !22
  %465 = call float @calc_mu_aver(%struct.t_commrec* %cr, %struct.t_nsborder* %nsb, [3 x float]* %x, float* %462, float* %20, %struct.t_topology* %top, %struct.t_mdatoms* %mdatoms, i32 %463, i32* %464) #9
  br label %466

; <label>:466                                     ; preds = %461, %460
  %mu_aver.1 = phi float [ %465, %461 ], [ %mu_aver.0, %460 ]
  br i1 %12, label %475, label %467

; <label>:467                                     ; preds = %466
  %468 = load i32* %21, align 4, !tbaa !29
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %469
  %471 = load i32* %470, align 4, !tbaa !26
  %472 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %469
  %473 = load i32* %472, align 4, !tbaa !26
  %474 = load i32* %295, align 4, !tbaa !84
  call void @do_glas(%struct.__sFILE* %log, i32 %471, i32 %473, [3 x float]* %x, [3 x float]* %f, %struct.t_forcerec* %fr, %struct.t_mdatoms* %mdatoms, i32 %474, %struct.t_inputrec* %15, float* %ener) #9
  br label %475

; <label>:475                                     ; preds = %466, %467
  %476 = icmp eq i32 %step.2, 0
  %or.cond6 = and i1 %235, %476
  br i1 %or.cond6, label %477, label %482

; <label>:477                                     ; preds = %475
  %478 = call %struct.t_coupl_rec* @init_coupling(%struct.__sFILE* %log, i32 %nfile, %struct.t_filenm* %fnm, %struct.t_commrec* %cr, %struct.t_forcerec* %fr, %struct.t_mdatoms* %mdatoms, %struct.t_idef* %28) #9
  br i1 %237, label %482, label %479

; <label>:479                                     ; preds = %477
  %480 = call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str31, i64 0, i64 0), i64 19, i64 1, %struct.__sFILE* %log)
  %481 = call i32 @fflush(%struct.__sFILE* %log) #9
  br label %482

; <label>:482                                     ; preds = %477, %479, %475
  %tcr.1 = phi %struct.t_coupl_rec* [ %478, %479 ], [ %478, %477 ], [ %tcr.0, %475 ]
  br i1 %8, label %489, label %483

; <label>:483                                     ; preds = %482
  %484 = load float* %t0, align 4, !tbaa !14
  %485 = sitofp i32 %step.2 to float
  %486 = load float* %232, align 4, !tbaa !70
  %487 = fmul float %485, %486
  %488 = fadd float %484, %487
  store float %488, float* %t, align 4, !tbaa !14
  br label %489

; <label>:489                                     ; preds = %483, %482
  %490 = load i32* %238, align 4, !tbaa !85
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %507, label %492

; <label>:492                                     ; preds = %489
  br i1 %8, label %493, label %501

; <label>:493                                     ; preds = %492
  %494 = bitcast i32* %292 to i64*
  %495 = load i64* %494, align 8
  %496 = trunc i64 %495 to i32
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %501, label %498

; <label>:498                                     ; preds = %493
  %499 = lshr i64 %495, 32
  %500 = trunc i64 %499 to i32
  store i32 %500, i32* %293, align 4, !tbaa !14
  br label %507

; <label>:501                                     ; preds = %493, %492
  %502 = load float* %lam0, align 4, !tbaa !14
  %503 = sitofp i32 %step.2 to float
  %504 = load float* %294, align 4, !tbaa !86
  %505 = fmul float %503, %504
  %506 = fadd float %502, %505
  store float %506, float* %lambda, align 4, !tbaa !14
  br label %507

; <label>:507                                     ; preds = %489, %498, %501
  %508 = load i32* %239, align 4, !tbaa !87
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %517, label %510

; <label>:510                                     ; preds = %507
  %511 = load float* %t, align 4, !tbaa !14
  %512 = load float* %291, align 4, !tbaa !88
  %513 = fdiv float %511, %512
  %514 = fsub float 1.000000e+00, %513
  store float %514, float* %SAfactor, align 4, !tbaa !14
  %515 = fcmp olt float %514, 0.000000e+00
  br i1 %515, label %516, label %517

; <label>:516                                     ; preds = %510
  store float 0.000000e+00, float* %SAfactor, align 4, !tbaa !14
  br label %517

; <label>:517                                     ; preds = %507, %510, %516
  %518 = load i32* %61, align 4, !tbaa !20
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %520, label %527

; <label>:520                                     ; preds = %517
  %521 = load i32* %240, align 4, !tbaa !21
  %522 = icmp eq i32 %521, 0
  %or.cond8 = and i1 %.65, %522
  %or.cond8.not = xor i1 %or.cond8, true
  %or.cond10 = or i1 %14, %or.cond8.not
  br i1 %or.cond10, label %527, label %523

; <label>:523                                     ; preds = %520
  %524 = load float* %t, align 4, !tbaa !14
  %525 = load float* %lambda, align 4, !tbaa !14
  %526 = load float* %SAfactor, align 4, !tbaa !14
  call void @print_ebin_header(%struct.__sFILE* %log, i32 %step.2, float %524, float %525, float %526) #9
  br label %527

; <label>:527                                     ; preds = %520, %523, %517
  br i1 %231, label %528, label %.critedge66

; <label>:528                                     ; preds = %527
  call void @spread_dummy_f(%struct.__sFILE* %log, [3 x float]* %x, [3 x float]* %f, %struct.t_nrnb* %mynrnb, %struct.t_idef* %28, %struct.t_comm_dummies* %dummycomm, %struct.t_commrec* %cr) #9
  %529 = load i32* %21, align 4, !tbaa !29
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %530
  %532 = load i32* %531, align 4, !tbaa !26
  %533 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %530
  %534 = load i32* %533, align 4, !tbaa !26
  call void @calc_virial(%struct.__sFILE* %log, i32 %532, i32 %534, [3 x float]* %x, [3 x float]* %f, [3 x float]* %17, [3 x float]* %18, %struct.t_graph* %graph, [3 x float]* %16, %struct.t_nrnb* %mynrnb, %struct.t_forcerec* %fr, i32 0) #9
  %535 = load i32* %241, align 4, !tbaa !89
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %545, label %537

; <label>:537                                     ; preds = %528
  %538 = load [3 x float]** %242, align 8, !tbaa !90
  call void @spread_dummy_f(%struct.__sFILE* %log, [3 x float]* %x, [3 x float]* %538, %struct.t_nrnb* %mynrnb, %struct.t_idef* %28, %struct.t_comm_dummies* %dummycomm, %struct.t_commrec* %cr) #9
  br label %545

.critedge66:                                      ; preds = %527
  %539 = load i32* %21, align 4, !tbaa !29
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %540
  %542 = load i32* %541, align 4, !tbaa !26
  %543 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %540
  %544 = load i32* %543, align 4, !tbaa !26
  call void @calc_virial(%struct.__sFILE* %log, i32 %542, i32 %544, [3 x float]* %x, [3 x float]* %f, [3 x float]* %17, [3 x float]* %18, %struct.t_graph* %graph, [3 x float]* %16, %struct.t_nrnb* %mynrnb, %struct.t_forcerec* %fr, i32 0) #9
  br label %545

; <label>:545                                     ; preds = %.critedge66, %528, %537
  %546 = load i32* %21, align 4, !tbaa !29
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %547
  %549 = load i32* %548, align 4, !tbaa !26
  %550 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %547
  %551 = load i32* %550, align 4, !tbaa !26
  call void @sum_lrforces([3 x float]* %f, %struct.t_forcerec* %fr, i32 %549, i32 %551) #9
  %552 = load i32* %243, align 4, !tbaa !91
  %553 = call i32 @do_per_step(i32 %step.2, i32 %552) #9
  %554 = load i32* %244, align 4, !tbaa !92
  %555 = call i32 @do_per_step(i32 %step.2, i32 %554) #9
  %556 = load i32* %245, align 4, !tbaa !93
  %557 = call i32 @do_per_step(i32 %step.2, i32 %556) #9
  %or.cond57 = and i1 %or.cond16.not, %392
  br i1 %or.cond57, label %558, label %570

; <label>:558                                     ; preds = %545
  %559 = load i32* %61, align 4, !tbaa !20
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %570

; <label>:561                                     ; preds = %558
  %562 = load i32* %240, align 4, !tbaa !21
  %563 = icmp eq i32 %562, 0
  %or.cond18 = and i1 %247, %563
  br i1 %or.cond18, label %564, label %570

; <label>:564                                     ; preds = %561
  %565 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !22
  %566 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str32, i64 0, i64 0), i64 27, i64 1, %struct.__sFILE* %565)
  %567 = call i8* @ftp2fn(i32 12, i32 %nfile, %struct.t_filenm* %fnm) #9
  %568 = load i8*** %248, align 8, !tbaa !71
  %569 = load i8** %568, align 8, !tbaa !22
  call void @write_sto_conf(i8* %567, i8* %569, %struct.t_atoms* %249, [3 x float]* %x, [3 x float]* %v, [3 x float]* %16) #9
  br label %570

; <label>:570                                     ; preds = %545, %558, %561, %564
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 36, i32 16, i1 false) #5
  %571 = load i32* %78, align 4, !tbaa !65
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %578, label %573

; <label>:573                                     ; preds = %570
  %574 = load i32* %290, align 8, !tbaa !94
  switch i32 %574, label %578 [
    i32 1, label %575
    i32 3, label %575
    i32 4, label %575
  ]

; <label>:575                                     ; preds = %573, %573, %573
  %576 = load float* %232, align 4, !tbaa !70
  %577 = load i32* %216, align 4, !tbaa !74
  call void @pull(%struct.t_pull* %pulldata, [3 x float]* %x, [3 x float]* %f, [3 x float]* %16, %struct.t_topology* %top, float %576, i32 %step.2, i32 %577, %struct.t_mdatoms* %mdatoms) #9
  br label %578

; <label>:578                                     ; preds = %573, %570, %575
  %579 = load i32* %234, align 4, !tbaa !27
  %580 = icmp sgt i32 %579, 0
  %or.cond141 = and i1 %14, %580
  br i1 %or.cond141, label %.lr.ph.i, label %clear_rvecs.exit

.lr.ph.i:                                         ; preds = %578
  %581 = add i32 %579, -1
  br label %582

; <label>:582                                     ; preds = %582, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %582 ]
  %583 = getelementptr inbounds [3 x float]* %buf, i64 %indvars.iv.i, i64 0
  store float 0.000000e+00, float* %583, align 4, !tbaa !14
  %584 = getelementptr inbounds [3 x float]* %buf, i64 %indvars.iv.i, i64 1
  store float 0.000000e+00, float* %584, align 4, !tbaa !14
  %585 = getelementptr inbounds [3 x float]* %buf, i64 %indvars.iv.i, i64 2
  store float 0.000000e+00, float* %585, align 4, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.i to i32
  %exitcond129 = icmp eq i32 %lftr.wideiv, %581
  br i1 %exitcond129, label %clear_rvecs.exit, label %582

clear_rvecs.exit:                                 ; preds = %582, %578
  %586 = load i32* %21, align 4, !tbaa !29
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %587
  %589 = load i32* %588, align 4, !tbaa !26
  %590 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %587
  %591 = load i32* %590, align 4, !tbaa !26
  %592 = load float* %lambda, align 4, !tbaa !14
  %593 = load float* %SAfactor, align 4, !tbaa !14
  %594 = load i32* %bTYZ, align 4, !tbaa !26
  %595 = load i32* %bNEMD, align 4, !tbaa !26
  call void @update(i32 %579, i32 %589, i32 %591, i32 %step.2, float %592, float* %250, %struct.t_parm* %parm, float %593, %struct.t_mdatoms* %mdatoms, [3 x float]* %x, %struct.t_graph* %graph, [3 x float]* %f, [3 x float]* %buf, [3 x float]* %vold, [3 x float]* %vt, [3 x float]* %v, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %19, %struct.t_commrec* %cr, %struct.t_nrnb* %mynrnb, i32 %594, i32 1, %struct.t_edsamyn* %edyn, %struct.t_pull* %pulldata, i32 %595) #9
  br i1 %14, label %596, label %606

; <label>:596                                     ; preds = %clear_rvecs.exit
  %597 = load i32* %bConverged, align 4
  %598 = icmp ne i32 %597, 0
  %or.cond22 = or i1 %598, %251
  br i1 %or.cond22, label %599, label %606

; <label>:599                                     ; preds = %596
  %600 = load float* %252, align 4, !tbaa !14
  %601 = load i32* %21, align 4, !tbaa !29
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %602
  %604 = load i32* %603, align 4, !tbaa !26
  %605 = load float** %254, align 8, !tbaa !95
  call void @print_forcefield(%struct.__sFILE* %log, float %600, i32 %604, [3 x float]* %f, [3 x float]* %buf, [3 x float]* %xcopy.0, %struct.t_block* %253, float* %605) #9
  br label %606

; <label>:606                                     ; preds = %596, %599, %clear_rvecs.exit
  %607 = load i32* %255, align 4, !tbaa !96
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %610, label %609

; <label>:609                                     ; preds = %606
  call void @correct_box([3 x float]* %16, %struct.t_forcerec* %fr, %struct.t_graph* %graph) #9
  br label %610

; <label>:610                                     ; preds = %606, %609
  %611 = load i32* %31, align 4, !tbaa !18
  %612 = icmp sgt i32 %611, 1
  br i1 %612, label %618, label %613

; <label>:613                                     ; preds = %610
  %614 = load i32* %289, align 4, !tbaa !23
  %615 = icmp sgt i32 %614, 1
  %616 = load i32* %bNEMD, align 4
  %617 = icmp ne i32 %616, 0
  %or.cond24 = and i1 %615, %617
  br i1 %or.cond24, label %619, label %620

; <label>:618                                     ; preds = %610
  %.old = load i32* %bNEMD, align 4, !tbaa !26
  %.old23 = icmp eq i32 %.old, 0
  br i1 %.old23, label %620, label %619

; <label>:619                                     ; preds = %618, %613
  call void @accumulate_u(%struct.t_commrec* %cr, %struct.t_grpopts* %.pre-phi, %struct.t_groups* %grps) #9
  br label %620

; <label>:620                                     ; preds = %618, %619, %613
  %621 = load float* %93, align 4, !tbaa !40
  %fabsf58 = call float @fabsf(float %621) #8
  %622 = fpext float %fabsf58 to double
  %623 = fcmp olt double %622, 1.200000e-38
  br i1 %623, label %624, label %635

; <label>:624                                     ; preds = %620
  %625 = load i32* %256, align 4, !tbaa !61
  %626 = icmp eq i32 %625, 4
  %627 = zext i1 %626 to i32
  %628 = load i32* %21, align 4, !tbaa !29
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %629
  %631 = load i32* %630, align 4, !tbaa !26
  %632 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %629
  %633 = load i32* %632, align 4, !tbaa !26
  %634 = load float* %lambda, align 4, !tbaa !14
  call void @calc_ke_part(i32 0, i32 %627, i32 %631, i32 %633, [3 x float]* %vold, [3 x float]* %v, [3 x float]* %vt, %struct.t_grpopts* %.pre-phi, %struct.t_mdatoms* %mdatoms, %struct.t_groups* %grps, %struct.t_nrnb* %mynrnb, float %634, float* %257) #9
  br label %643

; <label>:635                                     ; preds = %620
  %636 = load i32* %21, align 4, !tbaa !29
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %637
  %639 = load i32* %638, align 4, !tbaa !26
  %640 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %637
  %641 = load i32* %640, align 4, !tbaa !26
  %642 = load float* %lambda, align 4, !tbaa !14
  call void @calc_ke_part_visc(i32 0, i32 %639, i32 %641, [3 x float]* %16, [3 x float]* %x, [3 x float]* %vold, [3 x float]* %v, [3 x float]* %vt, %struct.t_grpopts* %.pre-phi, %struct.t_mdatoms* %mdatoms, %struct.t_groups* %grps, %struct.t_nrnb* %mynrnb, float %642, float* %257) #9
  br label %643

; <label>:643                                     ; preds = %635, %624
  %644 = icmp eq i32 %397, 0
  %or.cond27 = or i1 %14, %644
  br i1 %or.cond27, label %654, label %645

; <label>:645                                     ; preds = %643
  %646 = load i32* %21, align 4, !tbaa !29
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %647
  %649 = load i32* %648, align 4, !tbaa !26
  %650 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %647
  %651 = load i32* %650, align 4, !tbaa !26
  %652 = load float** %254, align 8, !tbaa !95
  %653 = load %struct.t_vcm** %vcm, align 8, !tbaa !22
  call void @calc_vcm_grp(%struct.__sFILE* %log, i32 %649, i32 %651, float* %652, [3 x float]* %x, [3 x float]* %v, %struct.t_vcm* %653) #9
  br label %654

; <label>:654                                     ; preds = %643, %645
  %655 = load volatile i32* @bGotTermSignal, align 4, !tbaa !26
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %657, label %660

; <label>:657                                     ; preds = %654
  %658 = load volatile i32* @bGotUsr1Signal, align 4, !tbaa !26
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %684, label %660

; <label>:660                                     ; preds = %657, %654
  %661 = load volatile i32* @bGotTermSignal, align 4, !tbaa !26
  %662 = icmp eq i32 %661, 0
  %.67 = select i1 %662, float -1.000000e+00, float 1.000000e+00
  store float %.67, float* %terminate, align 4, !tbaa !14
  br i1 %237, label %669, label %663

; <label>:663                                     ; preds = %660
  %664 = load volatile i32* @bGotTermSignal, align 4, !tbaa !26
  %665 = icmp ne i32 %664, 0
  %666 = select i1 %665, i8* getelementptr inbounds ([5 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str36, i64 0, i64 0)
  %667 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([27 x i8]* @.str34, i64 0, i64 0), i8* %666) #9
  %668 = call i32 @fflush(%struct.__sFILE* %log) #9
  br label %669

; <label>:669                                     ; preds = %660, %663
  %670 = load i32* %61, align 4, !tbaa !20
  %671 = icmp eq i32 %670, 0
  br i1 %671, label %672, label %683

; <label>:672                                     ; preds = %669
  %673 = load i32* %240, align 4, !tbaa !21
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %675, label %683

; <label>:675                                     ; preds = %672
  %676 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !22
  %677 = load volatile i32* @bGotTermSignal, align 4, !tbaa !26
  %678 = icmp ne i32 %677, 0
  %679 = select i1 %678, i8* getelementptr inbounds ([5 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str36, i64 0, i64 0)
  %680 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %676, i8* getelementptr inbounds ([27 x i8]* @.str34, i64 0, i64 0), i8* %679) #9
  %681 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !22
  %682 = call i32 @fflush(%struct.__sFILE* %681) #9
  br label %683

; <label>:683                                     ; preds = %675, %672, %669
  store volatile i32 0, i32* @bGotTermSignal, align 4, !tbaa !26
  store volatile i32 0, i32* @bGotUsr1Signal, align 4, !tbaa !26
  br label %684

; <label>:684                                     ; preds = %657, %683
  %685 = load i32* %31, align 4, !tbaa !18
  %686 = icmp sgt i32 %685, 1
  br i1 %686, label %690, label %687

; <label>:687                                     ; preds = %684
  %688 = load i32* %289, align 4, !tbaa !23
  %689 = icmp sgt i32 %688, 1
  br i1 %689, label %690, label %709

; <label>:690                                     ; preds = %687, %684
  %691 = load %struct.t_vcm** %vcm, align 8, !tbaa !22
  call void @global_stat(%struct.__sFILE* %log, %struct.t_commrec* %cr, float* %ener, [3 x float]* %17, [3 x float]* %19, %struct.t_grpopts* %.pre-phi, %struct.t_groups* %grps, %struct.t_nrnb* %mynrnb, %struct.t_nrnb* %nrnb, %struct.t_vcm* %691, float* %terminate) #9
  %692 = load i32* %258, align 4, !tbaa !97
  %693 = icmp eq i32 %692, 0
  %or.cond30 = or i1 %.sink, %693
  br i1 %or.cond30, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %690
  %694 = load i32* %259, align 4, !tbaa !98
  %695 = icmp sgt i32 %694, 0
  br i1 %695, label %.lr.ph108, label %.loopexit

.lr.ph108:                                        ; preds = %.preheader
  %696 = load i32* %31, align 4, !tbaa !18
  %697 = sitofp i32 %696 to float
  %698 = load float** %260, align 8, !tbaa !22
  %699 = load float** %261, align 8, !tbaa !22
  %700 = sext i32 %694 to i64
  br label %701

; <label>:701                                     ; preds = %.lr.ph108, %701
  %indvars.iv130 = phi i64 [ 0, %.lr.ph108 ], [ %indvars.iv.next131, %701 ]
  %702 = getelementptr inbounds float* %698, i64 %indvars.iv130
  %703 = load float* %702, align 4, !tbaa !14
  %704 = fdiv float %703, %697
  store float %704, float* %702, align 4, !tbaa !14
  %705 = getelementptr inbounds float* %699, i64 %indvars.iv130
  %706 = load float* %705, align 4, !tbaa !14
  %707 = fdiv float %706, %697
  store float %707, float* %705, align 4, !tbaa !14
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1
  %708 = icmp slt i64 %indvars.iv.next131, %700
  br i1 %708, label %701, label %.loopexit

; <label>:709                                     ; preds = %687
  call void @cp_nrnb(%struct.t_nrnb* %nrnb, %struct.t_nrnb* %mynrnb) #9
  br label %.loopexit

.loopexit:                                        ; preds = %701, %.preheader, %690, %709
  %710 = load i32* %bNEMD, align 4, !tbaa !26
  %711 = icmp eq i32 %710, 0
  %712 = load %struct.__sFILE** @debug, align 8
  %713 = icmp ne %struct.__sFILE* %712, null
  %or.cond33 = and i1 %711, %713
  br i1 %or.cond33, label %714, label %728

; <label>:714                                     ; preds = %.loopexit
  %715 = load i32* %21, align 4, !tbaa !29
  %716 = sext i32 %715 to i64
  %717 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %716
  %718 = load i32* %717, align 4, !tbaa !26
  %719 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %716
  %720 = load i32* %719, align 4, !tbaa !26
  %721 = add nsw i32 %720, %718
  %722 = load %struct.t_vcm** %vcm, align 8, !tbaa !22
  %723 = getelementptr inbounds %struct.t_vcm* %722, i64 0, i32 2
  %724 = load [3 x float]** %723, align 8, !tbaa !99
  %725 = getelementptr inbounds [3 x float]* %724, i64 0, i64 0
  %726 = load float** %254, align 8, !tbaa !95
  %727 = load float* %262, align 4, !tbaa !101
  call void @correct_ekin(%struct.__sFILE* %712, i32 %718, i32 %721, [3 x float]* %v, float* %725, float* %726, float %727, [3 x float]* %132) #9
  br label %728

; <label>:728                                     ; preds = %.loopexit, %714
  %729 = load float* %terminate, align 4, !tbaa !14
  %fabsf59 = call float @fabsf(float %729) #8
  %730 = fpext float %fabsf59 to double
  %731 = fcmp ogt double %730, 1.200000e-38
  br i1 %731, label %732, label %763

; <label>:732                                     ; preds = %728
  %733 = load i32* %228, align 4, !tbaa !62
  %734 = icmp slt i32 %step.2, %733
  br i1 %734, label %735, label %763

; <label>:735                                     ; preds = %732
  %736 = fcmp olt float %729, 0.000000e+00
  br i1 %736, label %737, label %744

; <label>:737                                     ; preds = %735
  %738 = load i32* %243, align 4, !tbaa !91
  %739 = icmp eq i32 %738, 0
  br i1 %739, label %744, label %740

; <label>:740                                     ; preds = %737
  %741 = sdiv i32 %step.2, %738
  %742 = add nsw i32 %741, 1
  %743 = mul nsw i32 %742, %738
  br label %746

; <label>:744                                     ; preds = %737, %735
  %745 = add nsw i32 %step.2, 1
  br label %746

; <label>:746                                     ; preds = %744, %740
  %storemerge = phi i32 [ %745, %744 ], [ %743, %740 ]
  store i32 %storemerge, i32* %228, align 4, !tbaa !62
  br i1 %237, label %750, label %747

; <label>:747                                     ; preds = %746
  %748 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([24 x i8]* @.str37, i64 0, i64 0), i32 %storemerge) #9
  %749 = call i32 @fflush(%struct.__sFILE* %log) #9
  br label %750

; <label>:750                                     ; preds = %746, %747
  %751 = load i32* %61, align 4, !tbaa !20
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %753, label %762

; <label>:753                                     ; preds = %750
  %754 = load i32* %240, align 4, !tbaa !21
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %756, label %762

; <label>:756                                     ; preds = %753
  %757 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !22
  %758 = load i32* %228, align 4, !tbaa !62
  %759 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %757, i8* getelementptr inbounds ([24 x i8]* @.str37, i64 0, i64 0), i32 %758) #9
  %760 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !22
  %761 = call i32 @fflush(%struct.__sFILE* %760) #9
  br label %762

; <label>:762                                     ; preds = %756, %753, %750
  store float 0.000000e+00, float* %terminate, align 4, !tbaa !14
  br label %763

; <label>:763                                     ; preds = %762, %732, %728
  br i1 %or.cond27, label %780, label %764

; <label>:764                                     ; preds = %763
  %765 = load %struct.t_vcm** %vcm, align 8, !tbaa !22
  call void @check_cm_grp(%struct.__sFILE* %log, %struct.t_vcm* %765) #9
  %766 = load i32* %21, align 4, !tbaa !29
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %767
  %769 = load i32* %768, align 4, !tbaa !26
  %770 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %767
  %771 = load i32* %770, align 4, !tbaa !26
  %772 = load %struct.t_vcm** %vcm, align 8, !tbaa !22
  call void @do_stopcm_grp(%struct.__sFILE* %log, i32 %769, i32 %771, [3 x float]* %x, [3 x float]* %v, %struct.t_vcm* %772) #9
  %773 = load i32* %21, align 4, !tbaa !29
  %774 = sext i32 %773 to i64
  %775 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %774
  %776 = load i32* %775, align 4, !tbaa !26
  %777 = sitofp i32 %776 to double
  %778 = load double* %288, align 8, !tbaa !16
  %779 = fadd double %778, %777
  store double %779, double* %288, align 8, !tbaa !16
  br label %780

; <label>:780                                     ; preds = %763, %764
  %781 = bitcast [3 x [3 x float]]* %force_vir to <4 x float>*
  %782 = load <4 x float>* %781, align 16, !tbaa !14
  %783 = bitcast [3 x [3 x float]]* %shake_vir to <4 x float>*
  %784 = load <4 x float>* %783, align 16, !tbaa !14
  %785 = fadd <4 x float> %782, %784
  %786 = bitcast [3 x float]* %263 to <4 x float>*
  store <4 x float> %785, <4 x float>* %786, align 4, !tbaa !14
  %787 = bitcast float* %264 to <4 x float>*
  %788 = load <4 x float>* %787, align 4, !tbaa !14
  %789 = bitcast float* %265 to <4 x float>*
  %790 = load <4 x float>* %789, align 4, !tbaa !14
  %791 = fadd <4 x float> %788, %790
  %792 = bitcast float* %266 to <4 x float>*
  store <4 x float> %791, <4 x float>* %792, align 4, !tbaa !14
  %793 = load float* %267, align 8, !tbaa !14
  %794 = load float* %268, align 8, !tbaa !14
  %795 = fadd float %793, %794
  store float %795, float* %269, align 4, !tbaa !14
  call void @sum_epot(%struct.t_grpopts* %.pre-phi, %struct.t_groups* %grps, float* %ener) #9
  %796 = load float* %270, align 4, !tbaa !102
  %797 = load float* %262, align 4, !tbaa !101
  %798 = fdiv float %796, %797
  store float %798, float* %271, align 4, !tbaa !103
  %799 = load i32* %bTYZ, align 4, !tbaa !26
  %800 = call float @sum_ekin(%struct.t_grpopts* %.pre-phi, %struct.t_groups* %grps, [3 x float]* %132, i32 %799) #9
  store float %800, float* %135, align 4, !tbaa !14
  %801 = load float* %272, align 4, !tbaa !14
  %802 = load float* %273, align 4, !tbaa !14
  %803 = fadd float %801, %802
  %804 = load float* %274, align 4, !tbaa !14
  %805 = fadd float %803, %804
  store float %805, float* %275, align 4, !tbaa !14
  %806 = load float* %252, align 4, !tbaa !14
  %807 = fadd float %806, %805
  store float %807, float* %276, align 4, !tbaa !14
  br i1 %10, label %808, label %815

; <label>:808                                     ; preds = %780
  %fabsf60 = call float @fabsf(float %807) #8
  %809 = fpext float %fabsf60 to double
  %810 = fcmp ogt double %809, 1.000000e+18
  br i1 %810, label %811, label %815

; <label>:811                                     ; preds = %808
  %812 = fpext float %807 to double
  %813 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !22
  %814 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %813, i8* getelementptr inbounds ([34 x i8]* @.str38, i64 0, i64 0), double %812) #9
  br label %.critedge4

; <label>:815                                     ; preds = %808, %780
  %816 = load i32* %136, align 4, !tbaa !69
  switch i32 %816, label %823 [
    i32 1, label %817
    i32 2, label %820
  ]

; <label>:817                                     ; preds = %815
  %818 = load float* %232, align 4, !tbaa !70
  %819 = load float* %SAfactor, align 4, !tbaa !14
  call void @berendsen_tcoupl(%struct.t_grpopts* %.pre-phi, %struct.t_groups* %grps, float %818, float %819) #9
  br label %823

; <label>:820                                     ; preds = %815
  %821 = load float* %232, align 4, !tbaa !70
  %822 = load float* %SAfactor, align 4, !tbaa !14
  call void @nosehoover_tcoupl(%struct.t_grpopts* %.pre-phi, %struct.t_groups* %grps, float %821, float %822) #9
  br label %823

; <label>:823                                     ; preds = %815, %820, %817
  %824 = load i32* %73, align 4, !tbaa !64
  %825 = load i32* %278, align 4, !tbaa !54
  %826 = icmp eq i32 %825, 5
  br i1 %826, label %827, label %830

; <label>:827                                     ; preds = %823
  %828 = load float* %279, align 4, !tbaa !14
  %829 = fpext float %828 to double
  br label %830

; <label>:830                                     ; preds = %823, %827
  %831 = phi double [ %829, %827 ], [ 0.000000e+00, %823 ]
  %832 = fptrunc double %831 to float
  call void @calc_pres(i32 %824, [3 x float]* %16, [3 x float]* %132, [3 x float]* %263, [3 x float]* %277, float %832) #9
  br i1 %235, label %833, label %.critedge68

; <label>:833                                     ; preds = %830
  call void @set_avcsix(%struct.__sFILE* %log, %struct.t_forcerec* %fr, %struct.t_mdatoms* %mdatoms) #9
  %834 = load i32* %280, align 4, !tbaa !104
  %835 = load i32* %216, align 4, !tbaa !74
  call void @calc_dispcorr(%struct.__sFILE* %log, i32 %834, %struct.t_forcerec* %fr, i32 %835, [3 x float]* %16, [3 x float]* %277, [3 x float]* %263, float* %ener) #9
  %836 = load float* %t, align 4, !tbaa !14
  %837 = load i32* %61, align 4, !tbaa !20
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %839, label %842

; <label>:839                                     ; preds = %833
  %840 = load i32* %240, align 4, !tbaa !21
  %841 = icmp eq i32 %840, 0
  br label %842

; <label>:842                                     ; preds = %839, %833
  %843 = phi i1 [ false, %833 ], [ %841, %839 ]
  %844 = zext i1 %843 to i32
  %845 = load i32* %281, align 4, !tbaa !63
  %846 = load i32* %bConverged, align 4, !tbaa !26
  call void @do_coupling(%struct.__sFILE* %log, i32 %nfile, %struct.t_filenm* %fnm, %struct.t_coupl_rec* %tcr.1, float %836, i32 %step.2, float* %ener, %struct.t_forcerec* %fr, %struct.t_inputrec* %15, i32 %844, %struct.t_mdatoms* %mdatoms, %struct.t_idef* %28, float %mu_aver.1, i32 %845, %struct.t_commrec* %283, [3 x float]* %16, [3 x float]* %263, [3 x float]* %277, float* %20, [3 x float]* %x, [3 x float]* %f, i32 %846) #9
  br label %849

.critedge68:                                      ; preds = %830
  %847 = load i32* %280, align 4, !tbaa !104
  %848 = load i32* %216, align 4, !tbaa !74
  call void @calc_dispcorr(%struct.__sFILE* %log, i32 %847, %struct.t_forcerec* %fr, i32 %848, [3 x float]* %16, [3 x float]* %277, [3 x float]* %263, float* %ener) #9
  br label %849

; <label>:849                                     ; preds = %.critedge68, %842
  %850 = srem i32 %step.2, 10
  %851 = icmp eq i32 %850, 0
  %or.cond39 = or i1 %392, %851
  br i1 %or.cond39, label %852, label %853

; <label>:852                                     ; preds = %849
  call void @update_time() #9
  br label %853

; <label>:853                                     ; preds = %849, %852
  %854 = load i32* %61, align 4, !tbaa !20
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %856, label %.thread70

; <label>:856                                     ; preds = %853
  %857 = load i32* %240, align 4, !tbaa !21
  %858 = icmp ne i32 %857, 0
  %or.cond42 = or i1 %14, %858
  br i1 %or.cond42, label %875, label %859

; <label>:859                                     ; preds = %856
  %860 = load %struct.t_mdebin** %mdebin, align 8, !tbaa !22
  %861 = load %struct.__sFILE** %fp_dgdl, align 8, !tbaa !22
  %862 = load float* %262, align 4, !tbaa !101
  %863 = load float* %t, align 4, !tbaa !14
  %864 = load i32* %136, align 4, !tbaa !69
  %865 = icmp eq i32 %864, 2
  %866 = zext i1 %865 to i32
  call void @upd_mdebin(%struct.t_mdebin* %860, %struct.__sFILE* %861, float %862, i32 %step.2, float %863, float* %ener, [3 x float]* %16, [3 x float]* %19, [3 x float]* %17, [3 x float]* %263, [3 x float]* %277, %struct.t_groups* %grps, float* %20, i32 %866) #9
  %867 = load i32* %284, align 4, !tbaa !105
  %868 = call i32 @do_per_step(i32 %step.2, i32 %867) #9
  %869 = load i32* %285, align 4, !tbaa !106
  %870 = call i32 @do_per_step(i32 %step.2, i32 %869) #9
  %871 = load i32* %286, align 4, !tbaa !107
  %872 = call i32 @do_per_step(i32 %step.2, i32 %871) #9
  br i1 %287, label %875, label %873

; <label>:873                                     ; preds = %859
  %874 = call i32 @fflush(%struct.__sFILE* %log) #9
  br label %875

; <label>:875                                     ; preds = %859, %873, %856
  %.pr = load i32* %61, align 4, !tbaa !20
  %876 = icmp eq i32 %.pr, 0
  br i1 %876, label %877, label %.thread70

; <label>:877                                     ; preds = %875
  %878 = load i32* %240, align 4, !tbaa !21
  %879 = icmp eq i32 %878, 0
  %or.cond45 = and i1 %247, %879
  br i1 %or.cond45, label %880, label %.thread70

; <label>:880                                     ; preds = %877
  %881 = srem i32 %step.2, %stepout
  %882 = icmp eq i32 %881, 0
  %or.cond48 = or i1 %392, %882
  br i1 %or.cond48, label %883, label %.thread70

; <label>:883                                     ; preds = %880
  br i1 %41, label %884, label %886

; <label>:884                                     ; preds = %883
  %885 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !22
  %fputc = call i32 @fputc(i32 10, %struct.__sFILE* %885)
  br label %886

; <label>:886                                     ; preds = %884, %883
  %887 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !22
  call void @print_time(%struct.__sFILE* %887, i64 %173, i32 %step.2, %struct.t_inputrec* %15) #9
  br label %.thread70

.thread70:                                        ; preds = %853, %880, %886, %877, %875
  br i1 %8, label %888, label %893

; <label>:888                                     ; preds = %.thread70
  %889 = load i32* %status, align 4, !tbaa !26
  %890 = call i32 @read_next_frame(i32 %889, %struct.t_trxframe* %rerun_fr) #9
  %891 = load i32* %214, align 8, !tbaa !108
  %892 = icmp eq i32 %891, 0
  br i1 %892, label %893, label %.backedge

; <label>:893                                     ; preds = %.thread70, %888
  %bNotLastFrame.273 = phi i32 [ %890, %888 ], [ %bNotLastFrame.1, %.thread70 ]
  %894 = add nsw i32 %step.2, 1
  br label %.backedge

.critedge4:                                       ; preds = %296, %299, %811
  %tcount.2 = phi double [ %tcount.1, %811 ], [ %tcount.0, %299 ], [ %tcount.0, %296 ]
  %nconverged.2 = phi i32 [ %nconverged.1, %811 ], [ %nconverged.0, %299 ], [ %nconverged.0, %296 ]
  %895 = load i32* %31, align 4, !tbaa !18
  %896 = icmp sgt i32 %895, 1
  br i1 %896, label %900, label %897

; <label>:897                                     ; preds = %.critedge4
  %898 = load i32* %289, align 4, !tbaa !23
  %899 = icmp sgt i32 %898, 1
  br i1 %899, label %900, label %932

; <label>:900                                     ; preds = %897, %.critedge4
  %901 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str1, i64 0, i64 0), i32 822, i32 %895, i32 8) #9
  %902 = bitcast i8* %901 to double*
  %903 = call double @node_time() #9
  %904 = load i32* %61, align 4, !tbaa !20
  %905 = sext i32 %904 to i64
  %906 = getelementptr inbounds double* %902, i64 %905
  store double %903, double* %906, align 8, !tbaa !16
  %907 = load i32* %31, align 4, !tbaa !18
  call void @gmx_sumd(i32 %907, double* %902, %struct.t_commrec* %cr) #9
  %908 = load double* %902, align 8, !tbaa !16
  %909 = load i32* %61, align 4, !tbaa !20
  %910 = icmp sgt i32 %909, 1
  br i1 %910, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %900
  %911 = sext i32 %909 to i64
  br label %912

; <label>:912                                     ; preds = %.lr.ph, %912
  %indvars.iv119 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next120, %912 ]
  %ctsum.092 = phi double [ %908, %.lr.ph ], [ %916, %912 ]
  %ctmax.091 = phi double [ %908, %.lr.ph ], [ %ctmax.0., %912 ]
  %913 = getelementptr inbounds double* %902, i64 %indvars.iv119
  %914 = load double* %913, align 8, !tbaa !16
  %915 = fcmp ogt double %ctmax.091, %914
  %ctmax.0. = select i1 %915, double %ctmax.091, double %914
  %916 = fadd double %ctsum.092, %914
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1
  %917 = icmp slt i64 %indvars.iv.next120, %911
  br i1 %917, label %912, label %._crit_edge

._crit_edge:                                      ; preds = %912, %900
  %ctsum.0.lcssa = phi double [ %908, %900 ], [ %916, %912 ]
  %ctmax.0.lcssa = phi double [ %908, %900 ], [ %ctmax.0., %912 ]
  %918 = load i32* %31, align 4, !tbaa !18
  %919 = sitofp i32 %918 to double
  %920 = fdiv double %ctsum.0.lcssa, %919
  br i1 %237, label %931, label %921

; <label>:921                                     ; preds = %._crit_edge
  %922 = sext i32 %909 to i64
  %923 = getelementptr inbounds double* %902, i64 %922
  %924 = load double* %923, align 8, !tbaa !16
  %925 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([33 x i8]* @.str41, i64 0, i64 0), i32 %909, double %924) #9
  %926 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str42, i64 0, i64 0), double %920) #9
  %927 = fmul double %ctmax.0.lcssa, 1.000000e+02
  %928 = fdiv double %927, %920
  %929 = fptosi double %928 to i32
  %930 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([52 x i8]* @.str43, i64 0, i64 0), i32 %929) #9
  br label %931

; <label>:931                                     ; preds = %._crit_edge, %921
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str1, i64 0, i64 0), i32 839, i8* %901) #9
  br label %932

; <label>:932                                     ; preds = %931, %897
  %933 = load i32* %61, align 4, !tbaa !20
  %934 = icmp eq i32 %933, 0
  br i1 %934, label %935, label %978

; <label>:935                                     ; preds = %932
  %936 = load i32* %240, align 4, !tbaa !21
  %937 = icmp eq i32 %936, 0
  br i1 %937, label %938, label %978

; <label>:938                                     ; preds = %935
  %939 = call i8* @ftp2fn(i32 20, i32 %nfile, %struct.t_filenm* %fnm) #9
  %940 = call %struct.__sFILE* @ffopen(i8* %939, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #9
  %941 = getelementptr inbounds float* %ener, i64 7
  %942 = load float* %941, align 4, !tbaa !14
  %943 = getelementptr inbounds float* %ener, i64 8
  %944 = load float* %943, align 4, !tbaa !14
  %945 = fadd float %942, %944
  %946 = getelementptr inbounds float* %ener, i64 10
  %947 = load float* %946, align 4, !tbaa !14
  %948 = fadd float %945, %947
  %949 = getelementptr inbounds float* %ener, i64 11
  %950 = load float* %949, align 4, !tbaa !14
  %951 = fadd float %948, %950
  %952 = getelementptr inbounds float* %ener, i64 13
  %953 = load float* %952, align 4, !tbaa !14
  %954 = fadd float %951, %953
  %955 = getelementptr inbounds float* %ener, i64 15
  %956 = load float* %955, align 4, !tbaa !14
  %957 = fadd float %954, %956
  %958 = getelementptr inbounds float* %ener, i64 12
  %959 = load float* %958, align 4, !tbaa !14
  %960 = fadd float %957, %959
  %961 = getelementptr inbounds float* %ener, i64 17
  %962 = load float* %961, align 4, !tbaa !14
  %963 = fadd float %960, %962
  %964 = load float* %279, align 4, !tbaa !14
  %965 = fadd float %963, %964
  %966 = fpext float %965 to double
  %967 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %940, i8* getelementptr inbounds ([7 x i8]* @.str45, i64 0, i64 0), double %966) #9
  %968 = load float* %135, align 4, !tbaa !14
  %969 = fpext float %968 to double
  %970 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %940, i8* getelementptr inbounds ([7 x i8]* @.str45, i64 0, i64 0), double %969) #9
  br label %971

; <label>:971                                     ; preds = %971, %938
  %indvars.iv = phi i64 [ 0, %938 ], [ %indvars.iv.next, %971 ]
  %totalflops.088 = phi double [ 0.000000e+00, %938 ], [ %phitmp, %971 ]
  %972 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %indvars.iv
  %973 = load double* %972, align 8, !tbaa !16
  %974 = fadd double %totalflops.088, %973
  %975 = fptrunc double %974 to float
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %phitmp = fpext float %975 to double
  %exitcond = icmp eq i64 %indvars.iv.next, 129
  br i1 %exitcond, label %976, label %971

; <label>:976                                     ; preds = %971
  %977 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %940, i8* getelementptr inbounds ([7 x i8]* @.str45, i64 0, i64 0), double %phitmp) #9
  call void @ffclose(%struct.__sFILE* %940) #9
  br label %978

; <label>:978                                     ; preds = %976, %935, %932
  %979 = icmp ne %struct.__sFILE* %log, null
  %or.cond51 = and i1 %979, %41
  br i1 %or.cond51, label %980, label %993

; <label>:980                                     ; preds = %978
  %981 = sitofp i32 %nconverged.2 to double
  %982 = fmul double %981, 1.000000e+02
  %983 = load i32* %228, align 4, !tbaa !62
  %984 = add nsw i32 %983, 1
  %985 = sitofp i32 %984 to double
  %986 = fdiv double %982, %985
  %987 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([58 x i8]* @.str46, i64 0, i64 0), double %986) #9
  %988 = load i32* %228, align 4, !tbaa !62
  %989 = add nsw i32 %988, 1
  %990 = sitofp i32 %989 to double
  %991 = fdiv double %tcount.2, %990
  %992 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([55 x i8]* @.str47, i64 0, i64 0), double %991) #9
  br label %993

; <label>:993                                     ; preds = %980, %978
  call void @llvm.lifetime.end(i64 552, i8* %6) #5
  call void @llvm.lifetime.end(i64 176, i8* %5) #5
  call void @llvm.lifetime.end(i64 1032, i8* %4) #5
  call void @llvm.lifetime.end(i64 36, i8* %3) #5
  call void @llvm.lifetime.end(i64 36, i8* %2) #5
  call void @llvm.lifetime.end(i64 36, i8* %1) #5
  ret i64 %173
}

; Function Attrs: optsize
declare i64 @do_cg(%struct.__sFILE*, i32, %struct.t_filenm*, %struct.t_parm*, %struct.t_topology*, %struct.t_groups*, %struct.t_nsborder*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_mdatoms*, [3 x float]*, float*, %struct.t_fcdata*, %struct.t_nrnb*, i32, i32, %struct.t_comm_dummies*, %struct.t_commrec*, %struct.t_commrec*, %struct.t_graph*, %struct.t_forcerec*, float*) #1

; Function Attrs: optsize
declare i64 @do_steep(%struct.__sFILE*, i32, %struct.t_filenm*, %struct.t_parm*, %struct.t_topology*, %struct.t_groups*, %struct.t_nsborder*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_mdatoms*, [3 x float]*, float*, %struct.t_fcdata*, %struct.t_nrnb*, i32, i32, %struct.t_comm_dummies*, %struct.t_commrec*, %struct.t_commrec*, %struct.t_graph*, %struct.t_forcerec*, float*) #1

; Function Attrs: optsize
declare i64 @do_nm(%struct.__sFILE*, %struct.t_commrec*, i32, %struct.t_filenm*, i32, i32, i32, %struct.t_parm*, %struct.t_groups*, %struct.t_topology*, float*, %struct.t_fcdata*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_mdatoms*, %struct.t_nsborder*, %struct.t_nrnb*, %struct.t_graph*, %struct.t_edsamyn*, %struct.t_forcerec*, float*) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: optsize
declare double @difftime(i64, i64) #1

; Function Attrs: optsize
declare i64 @time(i64*) #1

; Function Attrs: optsize
declare double @node_time() #1

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #8

; Function Attrs: optsize
declare void @md2atoms(%struct.t_mdatoms*, %struct.t_atoms*, i32) #1

; Function Attrs: optsize
declare void @finish_run(%struct.__sFILE*, %struct.t_commrec*, i8*, %struct.t_nsborder*, %struct.t_topology*, %struct.t_parm*, %struct.t_nrnb*, double, double, i32, i32) #1

; Function Attrs: optsize
declare i64 @print_date_and_time(%struct.__sFILE*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: optsize
declare void @init_md(%struct.t_commrec*, %struct.t_inputrec*, [3 x float]*, float*, float*, float*, float*, float*, %struct.t_nrnb*, i32*, %struct.t_topology*, i32, %struct.t_filenm*, i8**, i8**, i32*, %struct.__sFILE**, %struct.t_mdebin**, %struct.t_groups*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_mdatoms*, float*, i32*, %struct.t_vcm**, %struct.t_nsborder*) #1

; Function Attrs: optsize
declare %struct.t_shell* @init_shells(%struct.__sFILE*, i32, i32, %struct.t_idef*, %struct.t_mdatoms*, i32*) #1

; Function Attrs: optsize
declare void @gmx_sumi(i32, i32*, %struct.t_commrec*) #1

; Function Attrs: optsize
declare i32 @ftp2bSet(i32, i32, %struct.t_filenm*) #1

; Function Attrs: optsize
declare void @rd_index(i8*, i32, i32*, i32**, i8**) #1

; Function Attrs: optsize
declare void @do_pbc_first(%struct.__sFILE*, %struct.t_parm*, float*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*) #1

; Function Attrs: optsize
declare void @init_pull(%struct.__sFILE*, i32, %struct.t_filenm*, %struct.t_pull*, [3 x float]*, %struct.t_mdatoms*, [3 x float]*) #1

; Function Attrs: optsize
declare void @do_shakefirst(%struct.__sFILE*, i32, float, float*, %struct.t_parm*, %struct.t_nsborder*, %struct.t_mdatoms*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_graph*, %struct.t_commrec*, %struct.t_nrnb*, %struct.t_groups*, %struct.t_forcerec*, %struct.t_topology*, %struct.t_edsamyn*, %struct.t_pull*) #1

; Function Attrs: optsize
declare void @calc_ke_part(i32, i32, i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_grpopts*, %struct.t_mdatoms*, %struct.t_groups*, %struct.t_nrnb*, float, float*) #1

; Function Attrs: optsize
declare void @calc_ke_part_visc(i32, i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_grpopts*, %struct.t_mdatoms*, %struct.t_groups*, %struct.t_nrnb*, float, float*) #1

; Function Attrs: optsize
declare void @global_stat(%struct.__sFILE*, %struct.t_commrec*, float*, [3 x float]*, [3 x float]*, %struct.t_grpopts*, %struct.t_groups*, %struct.t_nrnb*, %struct.t_nrnb*, %struct.t_vcm*, float*) #1

; Function Attrs: optsize
declare float @sum_ekin(%struct.t_grpopts*, %struct.t_groups*, [3 x float]*, i32) #1

; Function Attrs: optsize
declare void @berendsen_tcoupl(%struct.t_grpopts*, %struct.t_groups*, float, float) #1

; Function Attrs: optsize
declare void @nosehoover_tcoupl(%struct.t_grpopts*, %struct.t_groups*, float, float) #1

; Function Attrs: optsize
declare void @start_time() #1

; Function Attrs: optsize
declare i32 @read_first_frame(i32*, i8*, %struct.t_trxframe*, i32) #1

; Function Attrs: optsize
declare i32 @do_per_step(i32, i32) #1

; Function Attrs: optsize
declare void @shift_self(%struct.t_graph*, [3 x float]*, [3 x float]*) #1

; Function Attrs: optsize
declare void @construct_dummies(%struct.__sFILE*, [3 x float]*, %struct.t_nrnb*, float, [3 x float]*, %struct.t_idef*, %struct.t_graph*, %struct.t_commrec*, [3 x float]*, %struct.t_comm_dummies*) #1

; Function Attrs: optsize
declare void @unshift_self(%struct.t_graph*, [3 x float]*, [3 x float]*) #1

; Function Attrs: optsize
declare void @init_mdatoms(%struct.t_mdatoms*, float, i32) #1

; Function Attrs: optsize
declare void @ionize(%struct.__sFILE*, %struct.t_mdatoms*, i8***, float, %struct.t_inputrec*, [3 x float]*, [3 x float]*, i32, i32, [3 x float]*, %struct.t_commrec*) #1

; Function Attrs: optsize
declare void @update_forcefield(i32, %struct.t_filenm*, %struct.t_forcerec*) #1

; Function Attrs: optsize
declare i32 @relax_shells(%struct.__sFILE*, %struct.t_commrec*, %struct.t_commrec*, i32, i32, %struct.t_parm*, i32, i32, %struct.t_topology*, float*, %struct.t_fcdata*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_mdatoms*, %struct.t_nsborder*, %struct.t_nrnb*, %struct.t_graph*, %struct.t_groups*, [3 x float]*, [3 x float]*, i32, i32, %struct.t_shell*, %struct.t_forcerec*, i8*, float, float, float*, i32, [3 x float]*, i32*) #1

; Function Attrs: optsize
declare void @do_force(%struct.__sFILE*, %struct.t_commrec*, %struct.t_commrec*, %struct.t_parm*, %struct.t_nsborder*, [3 x float]*, [3 x float]*, i32, %struct.t_nrnb*, %struct.t_topology*, %struct.t_groups*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_mdatoms*, float*, %struct.t_fcdata*, i32, float, %struct.t_graph*, i32, i32, %struct.t_forcerec*, float*, i32) #1

; Function Attrs: optsize
declare float @calc_mu_aver(%struct.t_commrec*, %struct.t_nsborder*, [3 x float]*, float*, float*, %struct.t_topology*, %struct.t_mdatoms*, i32, i32*) #1

; Function Attrs: optsize
declare void @do_glas(%struct.__sFILE*, i32, i32, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_mdatoms*, i32, %struct.t_inputrec*, float*) #1

; Function Attrs: optsize
declare %struct.t_coupl_rec* @init_coupling(%struct.__sFILE*, i32, %struct.t_filenm*, %struct.t_commrec*, %struct.t_forcerec*, %struct.t_mdatoms*, %struct.t_idef*) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #6

; Function Attrs: optsize
declare void @print_ebin_header(%struct.__sFILE*, i32, float, float, float) #1

; Function Attrs: optsize
declare void @spread_dummy_f(%struct.__sFILE*, [3 x float]*, [3 x float]*, %struct.t_nrnb*, %struct.t_idef*, %struct.t_comm_dummies*, %struct.t_commrec*) #1

; Function Attrs: optsize
declare void @calc_virial(%struct.__sFILE*, i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_graph*, [3 x float]*, %struct.t_nrnb*, %struct.t_forcerec*, i32) #1

; Function Attrs: optsize
declare void @sum_lrforces([3 x float]*, %struct.t_forcerec*, i32, i32) #1

; Function Attrs: optsize
declare void @write_sto_conf(i8*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, [3 x float]*) #1

; Function Attrs: optsize
declare void @pull(%struct.t_pull*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_topology*, float, i32, i32, %struct.t_mdatoms*) #1

; Function Attrs: optsize
declare void @update(i32, i32, i32, i32, float, float*, %struct.t_parm*, float, %struct.t_mdatoms*, [3 x float]*, %struct.t_graph*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_topology*, %struct.t_groups*, [3 x float]*, %struct.t_commrec*, %struct.t_nrnb*, i32, i32, %struct.t_edsamyn*, %struct.t_pull*, i32) #1

; Function Attrs: optsize
declare void @print_forcefield(%struct.__sFILE*, float, i32, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_block*, float*) #1

; Function Attrs: optsize
declare void @correct_box([3 x float]*, %struct.t_forcerec*, %struct.t_graph*) #1

; Function Attrs: optsize
declare void @accumulate_u(%struct.t_commrec*, %struct.t_grpopts*, %struct.t_groups*) #1

; Function Attrs: optsize
declare void @calc_vcm_grp(%struct.__sFILE*, i32, i32, float*, [3 x float]*, [3 x float]*, %struct.t_vcm*) #1

; Function Attrs: optsize
declare void @cp_nrnb(%struct.t_nrnb*, %struct.t_nrnb*) #1

; Function Attrs: optsize
declare void @correct_ekin(%struct.__sFILE*, i32, i32, [3 x float]*, float*, float*, float, [3 x float]*) #1

; Function Attrs: optsize
declare void @check_cm_grp(%struct.__sFILE*, %struct.t_vcm*) #1

; Function Attrs: optsize
declare void @do_stopcm_grp(%struct.__sFILE*, i32, i32, [3 x float]*, [3 x float]*, %struct.t_vcm*) #1

; Function Attrs: optsize
declare void @sum_epot(%struct.t_grpopts*, %struct.t_groups*, float*) #1

; Function Attrs: optsize
declare void @calc_pres(i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, float) #1

; Function Attrs: optsize
declare void @set_avcsix(%struct.__sFILE*, %struct.t_forcerec*, %struct.t_mdatoms*) #1

; Function Attrs: optsize
declare void @calc_dispcorr(%struct.__sFILE*, i32, %struct.t_forcerec*, i32, [3 x float]*, [3 x float]*, [3 x float]*, float*) #1

; Function Attrs: optsize
declare void @do_coupling(%struct.__sFILE*, i32, %struct.t_filenm*, %struct.t_coupl_rec*, float, i32, float*, %struct.t_forcerec*, %struct.t_inputrec*, i32, %struct.t_mdatoms*, %struct.t_idef*, float, i32, %struct.t_commrec*, [3 x float]*, [3 x float]*, [3 x float]*, float*, [3 x float]*, [3 x float]*, i32) #1

; Function Attrs: optsize
declare void @update_time() #1

; Function Attrs: optsize
declare void @upd_mdebin(%struct.t_mdebin*, %struct.__sFILE*, float, i32, float, float*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_groups*, float*, i32) #1

; Function Attrs: optsize
declare void @print_time(%struct.__sFILE*, i64, i32, %struct.t_inputrec*) #1

; Function Attrs: optsize
declare i32 @read_next_frame(i32, %struct.t_trxframe*) #1

; Function Attrs: optsize
declare void @gmx_sumd(i32, double*, %struct.t_commrec*) #1

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #1

; Function Attrs: optsize
declare void @ffclose(%struct.__sFILE*) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

declare float @fabsf(float)

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
attributes #7 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind optsize }
attributes #10 = { readnone }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize readnone }

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
!18 = !{!19, !7, i64 4}
!19 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!20 = !{!19, !7, i64 0}
!21 = !{!19, !7, i64 16}
!22 = !{!4, !4, i64 0}
!23 = !{!19, !7, i64 20}
!24 = !{!19, !7, i64 8}
!25 = !{!19, !7, i64 12}
!26 = !{!7, !7, i64 0}
!27 = !{!28, !7, i64 12}
!28 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !5, i64 28, !5, i64 1052, !5, i64 2076, !5, i64 3100}
!29 = !{!28, !7, i64 0}
!30 = !{!31, !7, i64 12}
!31 = !{!"", !4, i64 0, !32, i64 8, !33, i64 45800, !5, i64 47080, !35, i64 50248}
!32 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !4, i64 16, !4, i64 24, !5, i64 32}
!33 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !7, i64 40, !4, i64 48, !7, i64 56, !4, i64 64, !34, i64 72, !5, i64 1128, !4, i64 1272}
!34 = !{!"", !5, i64 0, !7, i64 1024, !4, i64 1032, !7, i64 1040, !4, i64 1048}
!35 = !{!"", !7, i64 0, !4, i64 8}
!36 = !{!37, !15, i64 348}
!37 = !{!"", !38, i64 0, !5, i64 592, !5, i64 628, !5, i64 664, !5, i64 700, !5, i64 736}
!38 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !15, i64 56, !15, i64 60, !15, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !15, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !15, i64 120, !5, i64 124, !5, i64 160, !7, i64 196, !15, i64 200, !15, i64 204, !7, i64 208, !15, i64 212, !15, i64 216, !7, i64 220, !15, i64 224, !15, i64 228, !15, i64 232, !7, i64 236, !15, i64 240, !15, i64 244, !7, i64 248, !15, i64 252, !15, i64 256, !15, i64 260, !15, i64 264, !15, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !15, i64 284, !15, i64 288, !15, i64 292, !7, i64 296, !15, i64 300, !15, i64 304, !7, i64 308, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !15, i64 328, !7, i64 332, !15, i64 336, !15, i64 340, !7, i64 344, !15, i64 348, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !15, i64 368, !15, i64 372, !15, i64 376, !15, i64 380, !39, i64 384, !5, i64 448, !5, i64 520}
!39 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56}
!40 = !{!41, !15, i64 80}
!41 = !{!"", !42, i64 0, !4, i64 64, !4, i64 72, !43, i64 80}
!42 = !{!"", !7, i64 0, !5, i64 8}
!43 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8}
!44 = !{!31, !7, i64 45800}
!45 = !{!46, !7, i64 0}
!46 = !{!"", !7, i64 0, !5, i64 4, !4, i64 1032}
!47 = !{!46, !4, i64 1032}
!48 = !{!31, !4, i64 32}
!49 = !{!50, !51, i64 32}
!50 = !{!"", !4, i64 0, !4, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !51, i64 32, !7, i64 40, !4, i64 48}
!51 = !{!"long", !5, i64 0}
!52 = !{!53, !7, i64 148}
!53 = !{!"", !7, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !7, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !7, i64 52, !7, i64 56, !15, i64 60, !7, i64 64, !15, i64 68, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !15, i64 104, !15, i64 108, !4, i64 112, !15, i64 120, !15, i64 124, !15, i64 128, !15, i64 132, !7, i64 136, !15, i64 140, !15, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !5, i64 180, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !4, i64 208, !4, i64 216, !4, i64 224, !4, i64 232, !5, i64 240, !5, i64 1488, !7, i64 2736, !7, i64 2740, !4, i64 2744, !4, i64 2752, !4, i64 2760, !7, i64 2768, !15, i64 2772, !4, i64 2776, !7, i64 2784, !4, i64 2792, !4, i64 2800, !7, i64 2808, !7, i64 2812, !7, i64 2816, !4, i64 2824, !4, i64 2832, !15, i64 2840}
!54 = !{!53, !7, i64 152}
!55 = !{!37, !7, i64 68}
!56 = !{!37, !7, i64 72}
!57 = !{!37, !7, i64 76}
!58 = !{!37, !7, i64 80}
!59 = !{!37, !7, i64 96}
!60 = !{!37, !7, i64 88}
!61 = !{!37, !7, i64 0}
!62 = !{!37, !7, i64 4}
!63 = !{!34, !7, i64 1024}
!64 = !{!53, !7, i64 0}
!65 = !{!66, !7, i64 508}
!66 = !{!"", !67, i64 0, !67, i64 144, !67, i64 288, !5, i64 432, !5, i64 436, !5, i64 440, !5, i64 452, !15, i64 464, !15, i64 468, !5, i64 472, !15, i64 484, !15, i64 488, !7, i64 492, !15, i64 496, !15, i64 500, !15, i64 504, !7, i64 508, !7, i64 512, !7, i64 516, !4, i64 520, !15, i64 528, !15, i64 532, !15, i64 536, !7, i64 540, !7, i64 544, !7, i64 548}
!67 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136}
!68 = !{!37, !7, i64 104}
!69 = !{!37, !7, i64 108}
!70 = !{!37, !15, i64 60}
!71 = !{!31, !4, i64 0}
!72 = !{!73, !7, i64 8}
!73 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !7, i64 24, !4, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !15, i64 52, !7, i64 56, !15, i64 60, !7, i64 64, !4, i64 72, !7, i64 80, !15, i64 84, !7, i64 88, !4, i64 96, !7, i64 104, !4, i64 112, !7, i64 120, !4, i64 128, !7, i64 136, !5, i64 140}
!74 = !{!75, !7, i64 4}
!75 = !{!"", !15, i64 0, !7, i64 4, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168}
!76 = !{!73, !4, i64 96}
!77 = !{!73, !7, i64 104}
!78 = !{!73, !4, i64 112}
!79 = !{!37, !7, i64 12}
!80 = !{!37, !7, i64 32}
!81 = !{!37, !7, i64 28}
!82 = !{!31, !4, i64 45816}
!83 = !{!75, !4, i64 40}
!84 = !{!31, !7, i64 16}
!85 = !{!37, !7, i64 248}
!86 = !{!37, !15, i64 256}
!87 = !{!37, !7, i64 196}
!88 = !{!37, !15, i64 200}
!89 = !{!53, !7, i64 2768}
!90 = !{!53, !4, i64 2760}
!91 = !{!37, !7, i64 36}
!92 = !{!37, !7, i64 40}
!93 = !{!37, !7, i64 44}
!94 = !{!66, !5, i64 432}
!95 = !{!75, !4, i64 24}
!96 = !{!37, !7, i64 112}
!97 = !{!53, !7, i64 2736}
!98 = !{!41, !7, i64 0}
!99 = !{!100, !4, i64 8}
!100 = !{!"", !7, i64 0, !7, i64 4, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72}
!101 = !{!75, !15, i64 0}
!102 = !{!41, !15, i64 84}
!103 = !{!41, !15, i64 88}
!104 = !{!37, !7, i64 236}
!105 = !{!37, !7, i64 48}
!106 = !{!37, !7, i64 280}
!107 = !{!37, !7, i64 296}
!108 = !{!73, !7, i64 40}
