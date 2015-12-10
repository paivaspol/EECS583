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
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 68, i32 1, i32 2848) #5, !dbg !1179
  %0 = bitcast i8* %call to %struct.t_forcerec*, !dbg !1179
  tail call void @llvm.dbg.value(metadata !{%struct.t_forcerec* %0}, i64 0, metadata !360), !dbg !1179
  ret %struct.t_forcerec* %0, !dbg !1180
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @update_forcerec(%struct._IO_FILE* %log, %struct.t_forcerec* nocapture %fr, [3 x float]* nocapture %box) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !423), !dbg !1181
  tail call void @llvm.dbg.value(metadata !{%struct.t_forcerec* %fr}, i64 0, metadata !424), !dbg !1181
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !425), !dbg !1181
  %eeltype = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 33, !dbg !1182
  %0 = load i32* %eeltype, align 4, !dbg !1182, !tbaa !1183
  %epsilon_r = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 5, !dbg !1182
  %1 = load float* %epsilon_r, align 4, !dbg !1182, !tbaa !1186
  %rcoulomb = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 23, !dbg !1182
  %2 = load float* %rcoulomb, align 4, !dbg !1182, !tbaa !1186
  %temp = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 4, !dbg !1182
  %3 = load float* %temp, align 4, !dbg !1182, !tbaa !1186
  %kappa = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 8, !dbg !1182
  %epsfac = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 6, !dbg !1182
  %k_rf = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 9, !dbg !1182
  %c_rf = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 10, !dbg !1182
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !1187) #4, !dbg !1188
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !1189) #4, !dbg !1188
  tail call void @llvm.dbg.value(metadata !{float %1}, i64 0, metadata !1190) #4, !dbg !1188
  tail call void @llvm.dbg.value(metadata !{float %2}, i64 0, metadata !1191) #4, !dbg !1188
  tail call void @llvm.dbg.value(metadata !{float %3}, i64 0, metadata !1192) #4, !dbg !1188
  tail call void @llvm.dbg.value(metadata !{float %5}, i64 0, metadata !1193) #4, !dbg !1194
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !1195) #4, !dbg !1194
  tail call void @llvm.dbg.value(metadata !{float* %kappa}, i64 0, metadata !1196) #4, !dbg !1197
  tail call void @llvm.dbg.value(metadata !{float* %epsfac}, i64 0, metadata !1198) #4, !dbg !1197
  tail call void @llvm.dbg.value(metadata !{float* %k_rf}, i64 0, metadata !1199) #4, !dbg !1197
  tail call void @llvm.dbg.value(metadata !{float* %c_rf}, i64 0, metadata !1200) #4, !dbg !1197
  %cmp1.i = icmp eq i32 %0, 2, !dbg !1201
  %eel.off.i = add i32 %0, -1, !dbg !1201
  %4 = icmp ult i32 %eel.off.i, 2, !dbg !1201
  br i1 %4, label %if.then.i, label %if.else72.i, !dbg !1201

if.then.i:                                        ; preds = %entry
  %zsquare = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 3, !dbg !1182
  %5 = load float* %zsquare, align 4, !dbg !1182, !tbaa !1186
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !1202) #4, !dbg !1205
  %arrayidx1.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !1206
  %6 = load float* %arrayidx1.i.i, align 4, !dbg !1206, !tbaa !1186
  %arrayidx3.i.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !1206
  %7 = load float* %arrayidx3.i.i, align 4, !dbg !1206, !tbaa !1186
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !1206
  %8 = load float* %arrayidx5.i.i, align 4, !dbg !1206, !tbaa !1186
  %mul.i.i = fmul float %7, %8, !dbg !1206
  %arrayidx7.i.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !1206
  %9 = load float* %arrayidx7.i.i, align 4, !dbg !1206, !tbaa !1186
  %arrayidx9.i.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 2, !dbg !1206
  %10 = load float* %arrayidx9.i.i, align 4, !dbg !1206, !tbaa !1186
  %mul10.i.i = fmul float %9, %10, !dbg !1206
  %sub.i.i = fsub float %mul.i.i, %mul10.i.i, !dbg !1206
  %mul11.i.i = fmul float %6, %sub.i.i, !dbg !1206
  %arrayidx13.i.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !1206
  %11 = load float* %arrayidx13.i.i, align 4, !dbg !1206, !tbaa !1186
  %arrayidx15.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1, !dbg !1206
  %12 = load float* %arrayidx15.i.i, align 4, !dbg !1206, !tbaa !1186
  %mul18.i.i = fmul float %8, %12, !dbg !1206
  %arrayidx22.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2, !dbg !1206
  %13 = load float* %arrayidx22.i.i, align 4, !dbg !1206, !tbaa !1186
  %mul23.i.i = fmul float %9, %13, !dbg !1206
  %sub24.i.i = fsub float %mul18.i.i, %mul23.i.i, !dbg !1206
  %mul25.i.i = fmul float %11, %sub24.i.i, !dbg !1206
  %sub26.i.i = fsub float %mul11.i.i, %mul25.i.i, !dbg !1206
  %arrayidx28.i.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !1206
  %14 = load float* %arrayidx28.i.i, align 4, !dbg !1206, !tbaa !1186
  %mul33.i.i = fmul float %10, %12, !dbg !1206
  %mul38.i.i = fmul float %7, %13, !dbg !1206
  %sub39.i.i = fsub float %mul33.i.i, %mul38.i.i, !dbg !1206
  %mul40.i.i = fmul float %14, %sub39.i.i, !dbg !1206
  %add.i.i = fadd float %mul40.i.i, %sub26.i.i, !dbg !1206
  tail call void @llvm.dbg.value(metadata !{float %add.i.i}, i64 0, metadata !1207) #4, !dbg !1203
  %div.i = fdiv float %5, %add.i.i, !dbg !1208
  tail call void @llvm.dbg.value(metadata !{float %div.i}, i64 0, metadata !1209) #4, !dbg !1208
  br i1 %cmp1.i, label %if.then3.i, label %if.then.if.end17_crit_edge.i, !dbg !1210

if.then.if.end17_crit_edge.i:                     ; preds = %if.then.i
  %conv18.pre.i = fpext float %1 to double, !dbg !1211
  br label %if.end17.i, !dbg !1210

if.then3.i:                                       ; preds = %if.then.i
  %conv.i = fpext float %3 to double, !dbg !1212
  %cmp4.i = fcmp ugt float %3, 0.000000e+00, !dbg !1212
  br i1 %cmp4.i, label %if.end.i, label %if.then6.i, !dbg !1212

if.then6.i:                                       ; preds = %if.then3.i
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([58 x i8]* @.str75, i64 0, i64 0), double %conv.i) #5, !dbg !1214
  br label %if.end.i, !dbg !1214

if.end.i:                                         ; preds = %if.then6.i, %if.then3.i
  %mul.i = fmul float %div.i, 2.000000e+00, !dbg !1215
  %conv8.i = fpext float %mul.i to double, !dbg !1215
  %conv9.i = fpext float %1 to double, !dbg !1215
  %mul10.i = fmul double %conv9.i, 5.727650e-04, !dbg !1215
  %mul11.i = fmul double %mul10.i, 0x3F810732CDE67DC4, !dbg !1215
  %mul13.i = fmul double %mul11.i, %conv.i, !dbg !1215
  %div14.i = fdiv double %conv8.i, %mul13.i, !dbg !1215
  %call15.i = tail call double @sqrt(double %div14.i) #5, !dbg !1215
  %conv16.i = fptrunc double %call15.i to float, !dbg !1215
  br label %if.end17.i, !dbg !1216

if.end17.i:                                       ; preds = %if.end.i, %if.then.if.end17_crit_edge.i
  %conv18.pre-phi.i = phi double [ %conv18.pre.i, %if.then.if.end17_crit_edge.i ], [ %conv9.i, %if.end.i ], !dbg !1211
  %storemerge.i = phi float [ 0.000000e+00, %if.then.if.end17_crit_edge.i ], [ %conv16.i, %if.end.i ]
  store float %storemerge.i, float* %kappa, align 4, !dbg !1215, !tbaa !1186
  %fabsf129.i = tail call float @fabsf(float %1) #6, !dbg !1211
  %15 = fpext float %fabsf129.i to double, !dbg !1211
  %cmp20.i = fcmp olt double %15, 1.200000e-38, !dbg !1211
  br i1 %cmp20.i, label %if.then22.i, label %if.else27.i, !dbg !1211

if.then22.i:                                      ; preds = %if.end17.i
  %mul23.i = fmul float %2, 2.000000e+00, !dbg !1217
  %mul24.i = fmul float %2, %mul23.i, !dbg !1217
  %mul25.i = fmul float %2, %mul24.i, !dbg !1217
  %div26.i = fdiv float 1.000000e+00, %mul25.i, !dbg !1217
  store float %div26.i, float* %k_rf, align 4, !dbg !1217, !tbaa !1186
  br label %if.end47.i, !dbg !1219

if.else27.i:                                      ; preds = %if.end17.i
  %mul28.i = fmul float %2, %storemerge.i, !dbg !1220
  %add.i = fadd float %mul28.i, 1.000000e+00, !dbg !1220
  tail call void @llvm.dbg.value(metadata !{float %add.i}, i64 0, metadata !1222) #4, !dbg !1220
  tail call void @llvm.dbg.value(metadata !{float %mul28.i}, i64 0, metadata !1223) #4, !dbg !1225
  %mul.i131.i = fmul float %mul28.i, %mul28.i, !dbg !1226
  %mul31.i = fmul float %1, %mul.i131.i, !dbg !1224
  tail call void @llvm.dbg.value(metadata !{float %mul31.i}, i64 0, metadata !1228) #4, !dbg !1224
  %sub.i = fadd float %1, -1.000000e+00, !dbg !1229
  %mul32.i = fmul float %sub.i, %add.i, !dbg !1229
  %add33.i = fadd float %mul32.i, %mul31.i, !dbg !1229
  %mul34.i = fmul float %1, 2.000000e+00, !dbg !1229
  %add35.i = fadd float %mul34.i, 1.000000e+00, !dbg !1229
  %mul36.i = fmul float %add35.i, %add.i, !dbg !1229
  %mul37.i = fmul float %mul31.i, 2.000000e+00, !dbg !1229
  %add38.i = fadd float %mul36.i, %mul37.i, !dbg !1229
  %div39.i = fdiv float %add33.i, %add38.i, !dbg !1229
  %mul40.i = fmul float %2, %2, !dbg !1229
  %mul41.i = fmul float %2, %mul40.i, !dbg !1229
  %div42.i = fdiv float %div39.i, %mul41.i, !dbg !1229
  store float %div42.i, float* %k_rf, align 4, !dbg !1229, !tbaa !1186
  %div43.i = fdiv float 1.000000e+00, %2, !dbg !1230
  %mul44.i = fmul float %2, %div42.i, !dbg !1230
  %mul45.i = fmul float %2, %mul44.i, !dbg !1230
  %add46.i = fadd float %div43.i, %mul45.i, !dbg !1230
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.else27.i, %if.then22.i
  %16 = phi float [ %div42.i, %if.else27.i ], [ %div26.i, %if.then22.i ]
  %storemerge130.i = phi float [ %add46.i, %if.else27.i ], [ 0.000000e+00, %if.then22.i ]
  store float %storemerge130.i, float* %c_rf, align 4, !dbg !1231, !tbaa !1186
  store float 0x40615DEEE0000000, float* %epsfac, align 4, !dbg !1232, !tbaa !1186
  %conv48.i = fpext float %16 to double, !dbg !1233
  %mul49.i = fmul double %conv48.i, 2.000000e+00, !dbg !1233
  %call50.i = tail call double @pow(double %mul49.i, double 0xBFD5555555555555) #5, !dbg !1233
  %conv51.i = fptrunc double %call50.i to float, !dbg !1233
  tail call void @llvm.dbg.value(metadata !{float %conv51.i}, i64 0, metadata !1234) #4, !dbg !1233
  %.b.i = load i1* @calc_rffac.bFirst, align 1
  br i1 %.b.i, label %calc_rffac.exit, label %if.then52.i, !dbg !1235

if.then52.i:                                      ; preds = %if.end47.i
  br i1 %cmp1.i, label %if.then55.i, label %if.end56.i, !dbg !1236

if.then55.i:                                      ; preds = %if.then52.i
  tail call void @please_cite(%struct._IO_FILE* %log, i8* getelementptr inbounds ([10 x i8]* @.str76, i64 0, i64 0)) #5, !dbg !1238
  br label %if.end56.i, !dbg !1238

if.end56.i:                                       ; preds = %if.then55.i, %if.then52.i
  %tobool57.i = icmp eq %struct._IO_FILE* %log, null, !dbg !1239
  br i1 %tobool57.i, label %if.end70.i, label %if.then58.i, !dbg !1239

if.then58.i:                                      ; preds = %if.end56.i
  %idxprom.i = sext i32 %0 to i64, !dbg !1240
  %arrayidx.i = getelementptr inbounds [11 x i8*]* @eel_names, i64 0, i64 %idxprom.i, !dbg !1240
  %17 = load i8** %arrayidx.i, align 8, !dbg !1240, !tbaa !1242
  %conv60.i = fpext float %div.i to double, !dbg !1240
  %conv61.i = fpext float %add.i.i to double, !dbg !1240
  %18 = load float* %kappa, align 4, !dbg !1240, !tbaa !1186
  %conv62.i = fpext float %18 to double, !dbg !1240
  %conv63.i = fpext float %2 to double, !dbg !1240
  %19 = load float* %k_rf, align 4, !dbg !1240, !tbaa !1186
  %conv64.i = fpext float %19 to double, !dbg !1240
  %20 = load float* %c_rf, align 4, !dbg !1240, !tbaa !1186
  %conv65.i = fpext float %20 to double, !dbg !1240
  %21 = load float* %epsfac, align 4, !dbg !1240, !tbaa !1186
  %conv66.i = fpext float %21 to double, !dbg !1240
  %call67.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([115 x i8]* @.str77, i64 0, i64 0), i8* %17, double %conv18.pre-phi.i, double %conv60.i, double %conv61.i, double %conv62.i, double %conv63.i, double %conv64.i, double %conv65.i, double %conv66.i) #5, !dbg !1240
  %conv68.i = fpext float %conv51.i to double, !dbg !1243
  %call69.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([57 x i8]* @.str78, i64 0, i64 0), double %conv68.i) #5, !dbg !1243
  br label %if.end70.i, !dbg !1244

if.end70.i:                                       ; preds = %if.then58.i, %if.end56.i
  store i1 true, i1* @calc_rffac.bFirst, align 1
  br label %calc_rffac.exit, !dbg !1245

if.else72.i:                                      ; preds = %entry
  store float 0.000000e+00, float* %kappa, align 4, !dbg !1246, !tbaa !1186
  store float 0.000000e+00, float* %k_rf, align 4, !dbg !1248, !tbaa !1186
  store float 0.000000e+00, float* %c_rf, align 4, !dbg !1249, !tbaa !1186
  %fabsf.i = tail call float @fabsf(float %1) #6, !dbg !1250
  %22 = fpext float %fabsf.i to double, !dbg !1250
  %cmp75.i = fcmp olt double %22, 1.200000e-38, !dbg !1250
  tail call void @llvm.dbg.value(metadata !1251, i64 0, metadata !1190) #4, !dbg !1252
  %23 = fpext float %1 to double, !dbg !1253
  %conv79.i = select i1 %cmp75.i, double 1.000000e+00, double %23, !dbg !1253
  %div80.i = fdiv double 0x40615DEEE174A498, %conv79.i, !dbg !1253
  %conv81.i = fptrunc double %div80.i to float, !dbg !1253
  store float %conv81.i, float* %epsfac, align 4, !dbg !1253, !tbaa !1186
  br label %calc_rffac.exit

calc_rffac.exit:                                  ; preds = %if.end47.i, %if.end70.i, %if.else72.i
  ret void, !dbg !1254
}

; Function Attrs: nounwind optsize uwtable
define void @set_avcsix(%struct._IO_FILE* nocapture %log, %struct.t_forcerec* nocapture %fr, %struct.t_mdatoms* nocapture %mdatoms) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !459), !dbg !1255
  tail call void @llvm.dbg.value(metadata !{%struct.t_forcerec* %fr}, i64 0, metadata !460), !dbg !1255
  tail call void @llvm.dbg.value(metadata !{%struct.t_mdatoms* %mdatoms}, i64 0, metadata !461), !dbg !1255
  %nbfp = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 65, !dbg !1256
  %0 = load float** %nbfp, align 8, !dbg !1256, !tbaa !1242
  %ntype = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63, !dbg !1256
  %1 = load i32* %ntype, align 4, !dbg !1256, !tbaa !1183
  %nr = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 1, !dbg !1256
  %2 = load i32* %nr, align 4, !dbg !1256, !tbaa !1183
  %typeA = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 11, !dbg !1256
  %3 = load i32** %typeA, align 8, !dbg !1256, !tbaa !1242
  tail call void @llvm.dbg.value(metadata !1257, i64 0, metadata !1258) #4, !dbg !1259
  tail call void @llvm.dbg.value(metadata !1260, i64 0, metadata !1261) #4, !dbg !1262
  tail call void @llvm.dbg.value(metadata !246, i64 0, metadata !1263) #4, !dbg !1264
  %cmp4.i = icmp sgt i32 %2, 0, !dbg !1264
  br i1 %cmp4.i, label %for.body.lr.ph.i, label %for.end19.i, !dbg !1264

for.body.lr.ph.i:                                 ; preds = %entry
  %bBHAM = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 64, !dbg !1256
  %4 = load i32* %bBHAM, align 4, !dbg !1256, !tbaa !1183
  %tobool.i = icmp eq i32 %4, 0, !dbg !1266
  br label %for.body3.lr.ph.i, !dbg !1264

for.body3.lr.ph.i:                                ; preds = %for.inc17.i, %for.body.lr.ph.i
  %indvars.iv8.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next9.i, %for.inc17.i ]
  %csix.06.i = phi double [ 0.000000e+00, %for.body.lr.ph.i ], [ %csix.2.i, %for.inc17.i ]
  tail call void @llvm.dbg.value(metadata !246, i64 0, metadata !1270) #4, !dbg !1271
  %arrayidx.i = getelementptr inbounds i32* %3, i64 %indvars.iv8.i, !dbg !1272
  %5 = load i32* %arrayidx.i, align 4, !dbg !1272, !tbaa !1183
  %mul.i = mul nsw i32 %5, %1, !dbg !1273
  br label %for.body3.i, !dbg !1271

for.body3.i:                                      ; preds = %for.inc.i, %for.body3.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body3.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %csix.13.i = phi double [ %csix.06.i, %for.body3.lr.ph.i ], [ %csix.2.i, %for.inc.i ]
  %arrayidx5.i = getelementptr inbounds i32* %3, i64 %indvars.iv.i, !dbg !1274
  %6 = load i32* %arrayidx5.i, align 4, !dbg !1274, !tbaa !1183
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !1275) #4, !dbg !1274
  %add.i = add nsw i32 %6, %mul.i, !dbg !1273
  br i1 %tobool.i, label %if.else.i, label %if.then.i, !dbg !1266

if.then.i:                                        ; preds = %for.body3.i
  %mul6.i = mul nsw i32 %add.i, 3, !dbg !1273
  br label %for.inc.i, !dbg !1273

if.else.i:                                        ; preds = %for.body3.i
  %mul12.i = shl nsw i32 %add.i, 1, !dbg !1276
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then.i
  %idxprom7.pn.in.i = phi i32 [ %mul6.i, %if.then.i ], [ %mul12.i, %if.else.i ]
  %idxprom7.pn.i = sext i32 %idxprom7.pn.in.i to i64, !dbg !1273
  %conv.pn.in.in.i = getelementptr inbounds float* %0, i64 %idxprom7.pn.i, !dbg !1273
  %conv.pn.in.i = load float* %conv.pn.in.in.i, align 4, !dbg !1273
  %conv.pn.i = fpext float %conv.pn.in.i to double, !dbg !1273
  %csix.2.i = fadd double %csix.13.i, %conv.pn.i, !dbg !1273
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !1271
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32, !dbg !1271
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !1271
  br i1 %exitcond, label %for.inc17.i, label %for.body3.i, !dbg !1271

for.inc17.i:                                      ; preds = %for.inc.i
  %indvars.iv.next9.i = add i64 %indvars.iv8.i, 1, !dbg !1264
  %lftr.wideiv5 = trunc i64 %indvars.iv.next9.i to i32, !dbg !1264
  %exitcond6 = icmp eq i32 %lftr.wideiv5, %2, !dbg !1264
  br i1 %exitcond6, label %for.end19.i, label %for.body3.lr.ph.i, !dbg !1264

for.end19.i:                                      ; preds = %for.inc17.i, %entry
  %csix.0.lcssa.i = phi double [ 0.000000e+00, %entry ], [ %csix.2.i, %for.inc17.i ]
  %mul20.i = mul nsw i32 %2, %2, !dbg !1277
  %conv21.i = sitofp i32 %mul20.i to double, !dbg !1277
  %div.i = fdiv double %csix.0.lcssa.i, %conv21.i, !dbg !1277
  tail call void @llvm.dbg.value(metadata !{double %div.i}, i64 0, metadata !1261) #4, !dbg !1277
  %7 = load %struct._IO_FILE** @debug, align 8, !dbg !1278, !tbaa !1242
  %tobool22.i = icmp eq %struct._IO_FILE* %7, null, !dbg !1278
  br i1 %tobool22.i, label %calc_avcsix.exit, label %if.then23.i, !dbg !1278

if.then23.i:                                      ; preds = %for.end19.i
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([31 x i8]* @.str74, i64 0, i64 0), double %div.i) #5, !dbg !1279
  br label %calc_avcsix.exit, !dbg !1279

calc_avcsix.exit:                                 ; preds = %for.end19.i, %if.then23.i
  %conv = fptrunc double %div.i to float, !dbg !1256
  %avcsix = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 11, !dbg !1256
  store float %conv, float* %avcsix, align 4, !dbg !1256, !tbaa !1186
  ret void, !dbg !1280
}

; Function Attrs: nounwind optsize uwtable
define void @init_forcerec(%struct._IO_FILE* %fp, %struct.t_forcerec* %fr, %struct.t_inputrec* %ir, %struct.t_topology* %top, %struct.t_commrec* nocapture %cr, %struct.t_mdatoms* nocapture %mdatoms, %struct.t_nsborder* nocapture %nsb, [3 x float]* %box, i32 %bMolEpot, i8* %tabfn, i32 %bNoSolvOpt) #0 {
entry:
  %box_size = alloca [3 x float], align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !833), !dbg !1281
  call void @llvm.dbg.value(metadata !{%struct.t_forcerec* %fr}, i64 0, metadata !834), !dbg !1282
  call void @llvm.dbg.value(metadata !{%struct.t_inputrec* %ir}, i64 0, metadata !835), !dbg !1283
  call void @llvm.dbg.value(metadata !{%struct.t_topology* %top}, i64 0, metadata !836), !dbg !1284
  call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !837), !dbg !1285
  call void @llvm.dbg.value(metadata !{%struct.t_mdatoms* %mdatoms}, i64 0, metadata !838), !dbg !1286
  call void @llvm.dbg.value(metadata !{%struct.t_nsborder* %nsb}, i64 0, metadata !839), !dbg !1287
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !840), !dbg !1288
  call void @llvm.dbg.value(metadata !{i32 %bMolEpot}, i64 0, metadata !841), !dbg !1289
  call void @llvm.dbg.value(metadata !{i8* %tabfn}, i64 0, metadata !842), !dbg !1290
  call void @llvm.dbg.value(metadata !{i32 %bNoSolvOpt}, i64 0, metadata !843), !dbg !1291
  call void @llvm.dbg.declare(metadata !{[3 x float]* %box_size}, metadata !854), !dbg !1292
  %call = call i8* @check_box([3 x float]* %box) #5, !dbg !1293
  %tobool = icmp eq i8* %call, null, !dbg !1293
  br i1 %tobool, label %if.end, label %if.then, !dbg !1293

if.then:                                          ; preds = %entry
  %call1 = call i8* @check_box([3 x float]* %box) #5, !dbg !1294
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* %call1) #5, !dbg !1294
  br label %if.end, !dbg !1294

if.end:                                           ; preds = %entry, %if.then
  %arrayidx3 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, !dbg !1295
  call void @llvm.dbg.value(metadata !{%struct.t_block* %arrayidx3}, i64 0, metadata !857), !dbg !1295
  %nr = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 1, !dbg !1296
  %0 = load i32* %nr, align 4, !dbg !1296, !tbaa !1183
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !847), !dbg !1296
  %fc_stepsize = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 62, !dbg !1297
  %1 = load i32* %fc_stepsize, align 4, !dbg !1297, !tbaa !1183
  %conv = sitofp i32 %1 to float, !dbg !1297
  %fc_stepsize5 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 67, !dbg !1297
  store float %conv, float* %fc_stepsize5, align 4, !dbg !1297, !tbaa !1186
  %efep = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 46, !dbg !1298
  %2 = load i32* %efep, align 4, !dbg !1298, !tbaa !1183
  %efep6 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 29, !dbg !1298
  store i32 %2, i32* %efep6, align 4, !dbg !1298, !tbaa !1183
  %sc_alpha = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 49, !dbg !1299
  %3 = load float* %sc_alpha, align 4, !dbg !1299, !tbaa !1186
  %sc_alpha7 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 30, !dbg !1299
  store float %3, float* %sc_alpha7, align 4, !dbg !1299, !tbaa !1186
  %sc_sigma = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 50, !dbg !1300
  %4 = load float* %sc_sigma, align 4, !dbg !1300, !tbaa !1186
  %conv8 = fpext float %4 to double, !dbg !1300
  %call9 = call double @pow(double %conv8, double 6.000000e+00) #5, !dbg !1300
  %conv10 = fptrunc double %call9 to float, !dbg !1300
  %sc_sigma6 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 31, !dbg !1300
  store float %conv10, float* %sc_sigma6, align 4, !dbg !1300, !tbaa !1186
  %ns_type = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 2, !dbg !1301
  %5 = load i32* %ns_type, align 4, !dbg !1301, !tbaa !1183
  %cmp = icmp eq i32 %5, 0, !dbg !1301
  %conv11 = zext i1 %cmp to i32, !dbg !1301
  %bGrid = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 43, !dbg !1301
  store i32 %conv11, i32* %bGrid, align 4, !dbg !1301, !tbaa !1183
  %ndelta = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 4, !dbg !1302
  %6 = load i32* %ndelta, align 4, !dbg !1302, !tbaa !1183
  %ndelta12 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 37, !dbg !1302
  store i32 %6, i32* %ndelta12, align 4, !dbg !1302, !tbaa !1183
  %ePBC = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 25, !dbg !1303
  %7 = load i32* %ePBC, align 4, !dbg !1303, !tbaa !1183
  %ePBC13 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 0, !dbg !1303
  store i32 %7, i32* %ePBC13, align 4, !dbg !1303, !tbaa !1183
  %rlist = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 35, !dbg !1304
  %8 = load float* %rlist, align 4, !dbg !1304, !tbaa !1186
  %rlist14 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 1, !dbg !1304
  store float %8, float* %rlist14, align 4, !dbg !1304, !tbaa !1186
  %9 = load float* %rlist, align 4, !dbg !1305, !tbaa !1186
  %rcoulomb = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38, !dbg !1305
  %10 = load float* %rcoulomb, align 4, !dbg !1305, !tbaa !1186
  %rvdw = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 41, !dbg !1305
  %11 = load float* %rvdw, align 4, !dbg !1305, !tbaa !1186
  %cmp16 = fcmp ogt float %10, %11, !dbg !1305
  %. = select i1 %cmp16, float %10, float %11, !dbg !1305
  %cmp20 = fcmp ogt float %9, %., !dbg !1305
  %cond36 = select i1 %cmp20, float %9, float %., !dbg !1305
  %rlistlong = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 2, !dbg !1305
  store float %cond36, float* %rlistlong, align 4, !dbg !1305, !tbaa !1186
  %coulombtype = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 36, !dbg !1306
  %12 = load i32* %coulombtype, align 4, !dbg !1306, !tbaa !1183
  %eeltype = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 33, !dbg !1306
  store i32 %12, i32* %eeltype, align 4, !dbg !1306, !tbaa !1183
  %vdwtype = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 39, !dbg !1307
  %13 = load i32* %vdwtype, align 4, !dbg !1307, !tbaa !1183
  %vdwtype37 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 34, !dbg !1307
  store i32 %13, i32* %vdwtype37, align 4, !dbg !1307, !tbaa !1183
  %cmp40 = fcmp ogt float %cond36, %8, !dbg !1308
  %conv41 = zext i1 %cmp40 to i32, !dbg !1308
  %bTwinRange = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 51, !dbg !1308
  store i32 %conv41, i32* %bTwinRange, align 4, !dbg !1308, !tbaa !1183
  %.off846 = add i32 %12, -3, !dbg !1309
  %14 = icmp ult i32 %.off846, 2, !dbg !1309
  %lor.ext = zext i1 %14 to i32, !dbg !1309
  %bEwald = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 56, !dbg !1309
  store i32 %lor.ext, i32* %bEwald, align 4, !dbg !1309, !tbaa !1183
  %cmp49 = icmp ne i32 %13, 0, !dbg !1310
  %conv50 = zext i1 %cmp49 to i32, !dbg !1310
  %bvdwtab = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 14, !dbg !1310
  store i32 %conv50, i32* %bvdwtab, align 4, !dbg !1310, !tbaa !1183
  %.off = add i32 %12, -1, !dbg !1311
  %switch = icmp ult i32 %.off, 2, !dbg !1311
  %cmp58 = icmp eq i32 %13, 0, !dbg !1311
  %cmp58. = and i1 %switch, %cmp58, !dbg !1311
  %land.ext = zext i1 %cmp58. to i32
  %bRF = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 7
  store i32 %land.ext, i32* %bRF, align 4, !tbaa !1183
  %cmp61 = icmp eq i32 %12, 0, !dbg !1312
  %brmerge = or i1 %cmp61, %cmp58., !dbg !1312
  %not.brmerge = xor i1 %brmerge, true, !dbg !1312
  %.934 = or i1 %14, %not.brmerge, !dbg !1312
  %lor.ext69 = zext i1 %.934 to i32, !dbg !1312
  %bcoultab = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 13, !dbg !1312
  store i32 %lor.ext69, i32* %bcoultab, align 4, !dbg !1312, !tbaa !1183
  %tobool70 = icmp ne %struct._IO_FILE* %fp, null, !dbg !1313
  br i1 %tobool70, label %if.then71, label %if.end79, !dbg !1313

if.then71:                                        ; preds = %if.end
  %idxprom = zext i1 %.934 to i64, !dbg !1314
  %arrayidx73 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %idxprom, !dbg !1314
  %15 = load i8** %arrayidx73, align 8, !dbg !1314, !tbaa !1242
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([41 x i8]* @.str2, i64 0, i64 0), i8* %15) #5, !dbg !1314
  %16 = load i32* %bvdwtab, align 4, !dbg !1316, !tbaa !1183
  %idxprom76 = sext i32 %16 to i64, !dbg !1316
  %arrayidx77 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %idxprom76, !dbg !1316
  %17 = load i8** %arrayidx77, align 8, !dbg !1316, !tbaa !1242
  %call78 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([41 x i8]* @.str3, i64 0, i64 0), i8* %17) #5, !dbg !1316
  %.pre = load i32* %bEwald, align 4, !dbg !1317, !tbaa !1183
  br label %if.end79, !dbg !1318

if.end79:                                         ; preds = %if.then71, %if.end
  %18 = phi i32 [ %.pre, %if.then71 ], [ %lor.ext, %if.end ]
  %tobool81 = icmp eq i32 %18, 0, !dbg !1317
  br i1 %tobool81, label %if.end91, label %if.then82, !dbg !1317

if.then82:                                        ; preds = %if.end79
  %19 = load float* %rcoulomb, align 4, !dbg !1319, !tbaa !1186
  %ewald_rtol = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 21, !dbg !1319
  %20 = load float* %ewald_rtol, align 4, !dbg !1319, !tbaa !1186
  %call84 = call float @calc_ewaldcoeff(float %19, float %20) #5, !dbg !1319
  %ewaldcoeff = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 57, !dbg !1319
  store float %call84, float* %ewaldcoeff, align 4, !dbg !1319, !tbaa !1186
  br i1 %tobool70, label %if.then86, label %if.end91, !dbg !1321

if.then86:                                        ; preds = %if.then82
  %div = fdiv float 1.000000e+00, %call84, !dbg !1322
  %conv88 = fpext float %div to double, !dbg !1322
  %call89 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([52 x i8]* @.str4, i64 0, i64 0), double %conv88) #5, !dbg !1322
  br label %if.end91, !dbg !1322

if.end91:                                         ; preds = %if.then82, %if.end79, %if.then86
  %bDomDecomp = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 5, !dbg !1323
  %21 = load i32* %bDomDecomp, align 4, !dbg !1323, !tbaa !1183
  %bDomDecomp92 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 44, !dbg !1323
  store i32 %21, i32* %bDomDecomp92, align 4, !dbg !1323, !tbaa !1183
  %decomp_dir = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 6, !dbg !1324
  %22 = load i32* %decomp_dir, align 4, !dbg !1324, !tbaa !1183
  %Dimension = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 42, !dbg !1324
  store i32 %22, i32* %Dimension, align 4, !dbg !1324, !tbaa !1183
  %epsilon_r = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 42, !dbg !1325
  %23 = load float* %epsilon_r, align 4, !dbg !1325, !tbaa !1186
  %epsilon_r93 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 5, !dbg !1325
  store float %23, float* %epsilon_r93, align 4, !dbg !1325, !tbaa !1186
  %fudgeQQ = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 45, !dbg !1326
  %24 = load float* %fudgeQQ, align 4, !dbg !1326, !tbaa !1186
  %fudgeQQ94 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 12, !dbg !1326
  store float %24, float* %fudgeQQ94, align 4, !dbg !1326, !tbaa !1186
  %rcoulomb_switch = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 37, !dbg !1327
  %25 = load float* %rcoulomb_switch, align 4, !dbg !1327, !tbaa !1186
  %rcoulomb_switch95 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 22, !dbg !1327
  store float %25, float* %rcoulomb_switch95, align 4, !dbg !1327, !tbaa !1186
  %26 = load float* %rcoulomb, align 4, !dbg !1328, !tbaa !1186
  %rcoulomb97 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 23, !dbg !1328
  store float %26, float* %rcoulomb97, align 4, !dbg !1328, !tbaa !1186
  %bSolvOpt = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 38, !dbg !1329
  store i32 1, i32* %bSolvOpt, align 4, !dbg !1329, !tbaa !1183
  %zsquare = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 3, !dbg !1330
  store float 0.000000e+00, float* %zsquare, align 4, !dbg !1330, !tbaa !1186
  %temp = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 4, !dbg !1331
  store float 0.000000e+00, float* %temp, align 4, !dbg !1331, !tbaa !1186
  %27 = load i32* %eeltype, align 4, !dbg !1332, !tbaa !1183
  switch i32 %27, label %if.end230 [
    i32 2, label %for.cond.preheader
    i32 5, label %for.body192
    i32 6, label %for.body192
    i32 3, label %for.body192
    i32 4, label %for.body192
    i32 8, label %for.body192
    i32 9, label %for.body192
    i32 7, label %for.body192
  ], !dbg !1332

for.cond.preheader:                               ; preds = %if.end91
  %nr102 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 1, !dbg !1333
  %28 = load i32* %nr102, align 4, !dbg !1333, !tbaa !1183
  %index = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 2, !dbg !1336
  %a = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 4, !dbg !1339
  %chargeT = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 8, !dbg !1339
  br label %for.cond.outer, !dbg !1333

for.cond.outer:                                   ; preds = %for.cond.preheader, %if.then123
  %zsq.0.ph = phi float [ %conv128, %if.then123 ], [ 0.000000e+00, %for.cond.preheader ]
  %i.0.ph = phi i32 [ %add, %if.then123 ], [ 0, %for.cond.preheader ]
  %29 = sext i32 %i.0.ph to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %for.end
  %indvars.iv924 = phi i64 [ %29, %for.cond.outer ], [ %indvars.iv.next925, %for.end ]
  %i.0 = phi i32 [ %i.0.ph, %for.cond.outer ], [ %add, %for.end ]
  %30 = trunc i64 %indvars.iv924 to i32, !dbg !1333
  %cmp103 = icmp slt i32 %30, %28, !dbg !1333
  br i1 %cmp103, label %for.body, label %for.end132, !dbg !1333

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata !1340, i64 0, metadata !850), !dbg !1341
  %31 = load i32** %index, align 8, !dbg !1336, !tbaa !1242
  %arrayidx106 = getelementptr inbounds i32* %31, i64 %indvars.iv924, !dbg !1336
  %32 = load i32* %arrayidx106, align 4, !dbg !1336, !tbaa !1183
  call void @llvm.dbg.value(metadata !{i32 %32}, i64 0, metadata !845), !dbg !1336
  %indvars.iv.next925 = add i64 %indvars.iv924, 1, !dbg !1342
  %add = add nsw i32 %i.0, 1, !dbg !1336
  %arrayidx110873 = getelementptr inbounds i32* %31, i64 %indvars.iv.next925, !dbg !1336
  %33 = load i32* %arrayidx110873, align 4, !dbg !1336, !tbaa !1183
  %cmp111874 = icmp slt i32 %32, %33, !dbg !1336
  br i1 %cmp111874, label %for.body113.lr.ph, label %for.end, !dbg !1336

for.body113.lr.ph:                                ; preds = %for.body
  %34 = load i32** %a, align 8, !dbg !1339, !tbaa !1242
  %35 = load float** %chargeT, align 8, !dbg !1339, !tbaa !1242
  %36 = sext i32 %32 to i64
  br label %for.body113, !dbg !1336

for.body113:                                      ; preds = %for.body113.lr.ph, %for.body113
  %indvars.iv922 = phi i64 [ %36, %for.body113.lr.ph ], [ %indvars.iv.next923, %for.body113 ]
  %q.0875 = phi float [ 0.000000e+00, %for.body113.lr.ph ], [ %add118, %for.body113 ]
  %arrayidx115 = getelementptr inbounds i32* %34, i64 %indvars.iv922, !dbg !1339
  %37 = load i32* %arrayidx115, align 4, !dbg !1339, !tbaa !1183
  %idxprom116 = sext i32 %37 to i64, !dbg !1339
  %arrayidx117 = getelementptr inbounds float* %35, i64 %idxprom116, !dbg !1339
  %38 = load float* %arrayidx117, align 4, !dbg !1339, !tbaa !1186
  %add118 = fadd float %q.0875, %38, !dbg !1339
  call void @llvm.dbg.value(metadata !{float %add118}, i64 0, metadata !850), !dbg !1339
  %indvars.iv.next923 = add i64 %indvars.iv922, 1, !dbg !1336
  %39 = trunc i64 %indvars.iv.next923 to i32, !dbg !1336
  %cmp111 = icmp slt i32 %39, %33, !dbg !1336
  br i1 %cmp111, label %for.body113, label %for.end, !dbg !1336

for.end:                                          ; preds = %for.body113, %for.body
  %q.0.lcssa = phi float [ 0.000000e+00, %for.body ], [ %add118, %for.body113 ]
  %fabsf = call float @fabsf(float %q.0.lcssa) #6, !dbg !1342
  %40 = fpext float %fabsf to double, !dbg !1342
  %cmp121 = fcmp ogt double %40, 1.200000e-38, !dbg !1342
  br i1 %cmp121, label %if.then123, label %for.cond, !dbg !1342

if.then123:                                       ; preds = %for.end
  %conv128 = fadd float %zsq.0.ph, %fabsf, !dbg !1343
  call void @llvm.dbg.value(metadata !{float %conv128}, i64 0, metadata !851), !dbg !1343
  br label %for.cond.outer, !dbg !1343

for.end132:                                       ; preds = %for.cond
  store float %zsq.0.ph, float* %zsquare, align 4, !dbg !1344, !tbaa !1186
  call void @llvm.dbg.value(metadata !1340, i64 0, metadata !853), !dbg !1345
  call void @llvm.dbg.value(metadata !1340, i64 0, metadata !852), !dbg !1346
  call void @llvm.dbg.value(metadata !246, i64 0, metadata !844), !dbg !1347
  %ngtc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 0, !dbg !1347
  %41 = load i32* %ngtc, align 4, !dbg !1347, !tbaa !1183
  %cmp135868 = icmp sgt i32 %41, 0, !dbg !1347
  br i1 %cmp135868, label %for.body137.lr.ph, label %for.end153, !dbg !1347

for.body137.lr.ph:                                ; preds = %for.end132
  %nrdf140 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 4, !dbg !1349
  %42 = load float** %nrdf140, align 8, !dbg !1349, !tbaa !1242
  %ref_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 5, !dbg !1351
  %43 = load float** %ref_t, align 8, !dbg !1351, !tbaa !1242
  br label %for.body137, !dbg !1347

for.body137:                                      ; preds = %for.body137.lr.ph, %for.body137
  %indvars.iv920 = phi i64 [ 0, %for.body137.lr.ph ], [ %indvars.iv.next921, %for.body137 ]
  %nrdf.0870 = phi float [ 0.000000e+00, %for.body137.lr.ph ], [ %add142, %for.body137 ]
  %T.0869 = phi float [ 0.000000e+00, %for.body137.lr.ph ], [ %add150, %for.body137 ]
  %arrayidx141 = getelementptr inbounds float* %42, i64 %indvars.iv920, !dbg !1349
  %44 = load float* %arrayidx141, align 4, !dbg !1349, !tbaa !1186
  %add142 = fadd float %nrdf.0870, %44, !dbg !1349
  call void @llvm.dbg.value(metadata !{float %add142}, i64 0, metadata !852), !dbg !1349
  %arrayidx149 = getelementptr inbounds float* %43, i64 %indvars.iv920, !dbg !1351
  %45 = load float* %arrayidx149, align 4, !dbg !1351, !tbaa !1186
  %mul = fmul float %44, %45, !dbg !1351
  %add150 = fadd float %T.0869, %mul, !dbg !1351
  call void @llvm.dbg.value(metadata !{float %add150}, i64 0, metadata !853), !dbg !1351
  %indvars.iv.next921 = add i64 %indvars.iv920, 1, !dbg !1347
  %46 = trunc i64 %indvars.iv.next921 to i32, !dbg !1347
  %cmp135 = icmp slt i32 %46, %41, !dbg !1347
  br i1 %cmp135, label %for.body137, label %for.end153, !dbg !1347

for.end153:                                       ; preds = %for.body137, %for.end132
  %nrdf.0.lcssa = phi float [ 0.000000e+00, %for.end132 ], [ %add142, %for.body137 ]
  %T.0.lcssa = phi float [ 0.000000e+00, %for.end132 ], [ %add150, %for.body137 ]
  %conv154 = fpext float %nrdf.0.lcssa to double, !dbg !1352
  %cmp155 = fcmp olt double %conv154, 1.200000e-38, !dbg !1352
  br i1 %cmp155, label %if.then157, label %if.end158, !dbg !1352

if.then157:                                       ; preds = %for.end153
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([23 x i8]* @.str5, i64 0, i64 0)) #5, !dbg !1353
  br label %if.end158, !dbg !1353

if.end158:                                        ; preds = %if.then157, %for.end153
  %div159 = fdiv float %T.0.lcssa, %nrdf.0.lcssa, !dbg !1354
  store float %div159, float* %temp, align 4, !dbg !1354, !tbaa !1186
  br label %if.end230, !dbg !1355

for.body192:                                      ; preds = %if.end91, %if.end91, %if.end91, %if.end91, %if.end91, %if.end91, %if.end91, %for.body192
  %indvars.iv926 = phi i64 [ %indvars.iv.next927, %for.body192 ], [ 0, %if.end91 ], [ 0, %if.end91 ], [ 0, %if.end91 ], [ 0, %if.end91 ], [ 0, %if.end91 ], [ 0, %if.end91 ], [ 0, %if.end91 ]
  %arrayidx196 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv926, i64 %indvars.iv926, !dbg !1356
  %47 = load float* %arrayidx196, align 4, !dbg !1356, !tbaa !1186
  %arrayidx198 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 %indvars.iv926, !dbg !1356
  store float %47, float* %arrayidx198, align 4, !dbg !1356, !tbaa !1186
  %indvars.iv.next927 = add i64 %indvars.iv926, 1, !dbg !1359
  %lftr.wideiv928 = trunc i64 %indvars.iv.next927 to i32, !dbg !1359
  %exitcond929 = icmp eq i32 %lftr.wideiv928, 3, !dbg !1359
  br i1 %exitcond929, label %for.end201, label %for.body192, !dbg !1359

for.end201:                                       ; preds = %for.body192
  %phi = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 24, !dbg !1360
  %48 = load float** %phi, align 8, !dbg !1360, !tbaa !1242
  %cmp202 = icmp eq float* %48, null, !dbg !1360
  br i1 %cmp202, label %if.then204, label %if.end208, !dbg !1360

if.then204:                                       ; preds = %for.end201
  %49 = load i32* %nr, align 4, !dbg !1361, !tbaa !1183
  %call206 = call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 626, i32 %49, i32 4) #5, !dbg !1361
  %50 = bitcast i8* %call206 to float*, !dbg !1361
  store float* %50, float** %phi, align 8, !dbg !1361, !tbaa !1242
  %.pre931 = load i32* %eeltype, align 4, !dbg !1362, !tbaa !1183
  br label %if.end208, !dbg !1361

if.end208:                                        ; preds = %if.then204, %for.end201
  %51 = phi i32 [ %.pre931, %if.then204 ], [ %27, %for.end201 ]
  switch i32 %51, label %if.end230 [
    i32 5, label %if.then225
    i32 6, label %if.then225
    i32 8, label %land.lhs.true220
  ], !dbg !1362

land.lhs.true220:                                 ; preds = %if.end208
  %52 = load float* %rcoulomb97, align 4, !dbg !1362, !tbaa !1186
  %53 = load float* %rcoulomb_switch95, align 4, !dbg !1362, !tbaa !1186
  %cmp223 = fcmp ogt float %52, %53, !dbg !1362
  br i1 %cmp223, label %if.then225, label %if.end230, !dbg !1362

if.then225:                                       ; preds = %if.end208, %if.end208, %land.lhs.true220
  %54 = load float* %rcoulomb_switch95, align 4, !dbg !1363, !tbaa !1186
  %55 = load float* %rcoulomb97, align 4, !dbg !1363, !tbaa !1186
  %arraydecay = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 0, !dbg !1363
  call void @set_shift_consts(%struct._IO_FILE* %fp, float %54, float %55, float* %arraydecay, %struct.t_forcerec* %fr) #5, !dbg !1363
  br label %if.end230, !dbg !1363

if.end230:                                        ; preds = %land.lhs.true220, %if.end208, %if.end91, %if.then225, %if.end158
  %56 = load i32* %bTwinRange, align 4, !dbg !1364, !tbaa !1183
  %tobool232 = icmp eq i32 %56, 0, !dbg !1364
  br i1 %tobool232, label %if.end236, label %if.then233, !dbg !1364

if.then233:                                       ; preds = %if.end230
  %call234 = call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 635, i32 %0, i32 12) #5, !dbg !1365
  %57 = bitcast i8* %call234 to [3 x float]*, !dbg !1365
  %f_twin = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 53, !dbg !1365
  store [3 x float]* %57, [3 x float]** %f_twin, align 8, !dbg !1365, !tbaa !1242
  %call235 = call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 636, i32 27, i32 12) #5, !dbg !1367
  %58 = bitcast i8* %call235 to [3 x float]*, !dbg !1367
  %fshift_twin = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 54, !dbg !1367
  store [3 x float]* %58, [3 x float]** %fshift_twin, align 8, !dbg !1367, !tbaa !1242
  br label %if.end236, !dbg !1368

if.end236:                                        ; preds = %if.end230, %if.then233
  %59 = load i32* %eeltype, align 4, !dbg !1369, !tbaa !1183
  %.off818 = add i32 %59, -3, !dbg !1369
  %switch819 = icmp ult i32 %.off818, 4, !dbg !1369
  br i1 %switch819, label %if.then252, label %if.end254, !dbg !1369

if.then252:                                       ; preds = %if.end236
  %call253 = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 640, i32 %0, i32 12) #5, !dbg !1370
  %60 = bitcast i8* %call253 to [3 x float]*, !dbg !1370
  %f_pme = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55, !dbg !1370
  store [3 x float]* %60, [3 x float]** %f_pme, align 8, !dbg !1370, !tbaa !1242
  br label %if.end254, !dbg !1372

if.end254:                                        ; preds = %if.end236, %if.then252
  %cg_cm = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 47, !dbg !1373
  %61 = load [3 x float]** %cg_cm, align 8, !dbg !1373, !tbaa !1242
  %cmp255 = icmp eq [3 x float]* %61, null, !dbg !1373
  br i1 %cmp255, label %if.then257, label %if.end261, !dbg !1373

if.then257:                                       ; preds = %if.end254
  %nr258 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 1, !dbg !1374
  %62 = load i32* %nr258, align 4, !dbg !1374, !tbaa !1183
  %call259 = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 653, i32 %62, i32 12) #5, !dbg !1374
  %63 = bitcast i8* %call259 to [3 x float]*, !dbg !1374
  store [3 x float]* %63, [3 x float]** %cg_cm, align 8, !dbg !1374, !tbaa !1242
  br label %if.end261, !dbg !1374

if.end261:                                        ; preds = %if.then257, %if.end254
  %shift_vec = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 48, !dbg !1375
  %64 = load [3 x float]** %shift_vec, align 8, !dbg !1375, !tbaa !1242
  %cmp262 = icmp eq [3 x float]* %64, null, !dbg !1375
  br i1 %cmp262, label %if.then264, label %if.end267, !dbg !1375

if.then264:                                       ; preds = %if.end261
  %call265 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 655, i32 27, i32 12) #5, !dbg !1376
  %65 = bitcast i8* %call265 to [3 x float]*, !dbg !1376
  store [3 x float]* %65, [3 x float]** %shift_vec, align 8, !dbg !1376, !tbaa !1242
  br label %if.end267, !dbg !1376

if.end267:                                        ; preds = %if.then264, %if.end261
  %fshift = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58, !dbg !1377
  %66 = load [3 x float]** %fshift, align 8, !dbg !1377, !tbaa !1242
  %cmp268 = icmp eq [3 x float]* %66, null, !dbg !1377
  br i1 %cmp268, label %if.then270, label %if.end273, !dbg !1377

if.then270:                                       ; preds = %if.end267
  %call271 = call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 658, i32 27, i32 12) #5, !dbg !1378
  %67 = bitcast i8* %call271 to [3 x float]*, !dbg !1378
  store [3 x float]* %67, [3 x float]** %fshift, align 8, !dbg !1378, !tbaa !1242
  br label %if.end273, !dbg !1378

if.end273:                                        ; preds = %if.then270, %if.end267
  %tobool274 = icmp eq i32 %bMolEpot, 0, !dbg !1379
  br i1 %tobool274, label %if.end284, label %land.lhs.true275, !dbg !1379

land.lhs.true275:                                 ; preds = %if.end273
  %nmol = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 59, !dbg !1379
  %68 = load i32* %nmol, align 4, !dbg !1379, !tbaa !1183
  %cmp276 = icmp eq i32 %68, 0, !dbg !1379
  br i1 %cmp276, label %if.then278, label %if.end284, !dbg !1379

if.then278:                                       ; preds = %land.lhs.true275
  %nr279 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 1, !dbg !1380
  %69 = load i32* %nr279, align 4, !dbg !1380, !tbaa !1183
  store i32 %69, i32* %nmol, align 4, !dbg !1380, !tbaa !1183
  %call281 = call i32* @make_invblock(%struct.t_block* %arrayidx3, i32 %0) #5, !dbg !1382
  %mol_nr = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 60, !dbg !1382
  store i32* %call281, i32** %mol_nr, align 8, !dbg !1382, !tbaa !1242
  %70 = load i32* %nmol, align 4, !dbg !1383, !tbaa !1183
  %call283 = call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 663, i32 %70, i32 4) #5, !dbg !1383
  %71 = bitcast i8* %call283 to float*, !dbg !1383
  %mol_epot = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 61, !dbg !1383
  store float* %71, float** %mol_epot, align 8, !dbg !1383, !tbaa !1242
  %nstenergy = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 12, !dbg !1384
  %72 = load i32* %nstenergy, align 4, !dbg !1384, !tbaa !1183
  %nstcalc = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 62, !dbg !1384
  store i32 %72, i32* %nstcalc, align 4, !dbg !1384, !tbaa !1183
  br label %if.end284, !dbg !1385

if.end284:                                        ; preds = %if.end273, %if.then278, %land.lhs.true275
  %nbfp = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 65, !dbg !1386
  %73 = load float** %nbfp, align 8, !dbg !1386, !tbaa !1242
  %cmp285 = icmp eq float* %73, null, !dbg !1386
  br i1 %cmp285, label %if.then287, label %if.end294, !dbg !1386

if.then287:                                       ; preds = %if.end284
  %atnr = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 2, !dbg !1387
  %74 = load i32* %atnr, align 4, !dbg !1387, !tbaa !1183
  %ntype = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63, !dbg !1387
  store i32 %74, i32* %ntype, align 4, !dbg !1387, !tbaa !1183
  %functype = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 3, !dbg !1389
  %75 = load i32** %functype, align 8, !dbg !1389, !tbaa !1242
  %76 = load i32* %75, align 4, !dbg !1389, !tbaa !1183
  %cmp289 = icmp eq i32 %76, 14, !dbg !1389
  %conv290 = zext i1 %cmp289 to i32, !dbg !1389
  %bBHAM = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 64, !dbg !1389
  store i32 %conv290, i32* %bBHAM, align 4, !dbg !1389, !tbaa !1183
  call void @llvm.dbg.value(metadata !{i32 %conv290}, i64 0, metadata !1390) #4, !dbg !1392
  %77 = load i32* %atnr, align 4, !dbg !1393, !tbaa !1183
  call void @llvm.dbg.value(metadata !{i32 %77}, i64 0, metadata !1394) #4, !dbg !1393
  br i1 %cmp289, label %if.then.i, label %if.else.i, !dbg !1395

if.then.i:                                        ; preds = %if.then287
  %mul.i = mul nsw i32 %77, 3, !dbg !1396
  %mul2.i = mul nsw i32 %mul.i, %77, !dbg !1396
  %call.i = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str73, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 102, i32 %mul2.i, i32 4) #5, !dbg !1396
  %78 = bitcast i8* %call.i to float*, !dbg !1396
  call void @llvm.dbg.value(metadata !{float* %78}, i64 0, metadata !1398) #4, !dbg !1396
  call void @llvm.dbg.value(metadata !246, i64 0, metadata !1399) #4, !dbg !1400
  call void @llvm.dbg.value(metadata !246, i64 0, metadata !1402) #4, !dbg !1400
  %cmp123.i = icmp sgt i32 %77, 0, !dbg !1400
  br i1 %cmp123.i, label %for.cond3.preheader.lr.ph.i, label %mk_nbfp.exit, !dbg !1400

for.cond3.preheader.lr.ph.i:                      ; preds = %if.then.i
  %iparams.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 4, !dbg !1403
  %79 = load %union.t_iparams** %iparams.i, align 8, !dbg !1403, !tbaa !1242
  br label %for.body5.lr.ph.i, !dbg !1400

for.body5.lr.ph.i:                                ; preds = %for.inc31.i, %for.cond3.preheader.lr.ph.i
  %indvars.iv140.i = phi i64 [ 0, %for.cond3.preheader.lr.ph.i ], [ %indvars.iv.next141.i, %for.inc31.i ]
  %k.0125.i = phi i32 [ 0, %for.cond3.preheader.lr.ph.i ], [ %90, %for.inc31.i ]
  %80 = trunc i64 %indvars.iv140.i to i32, !dbg !1403
  %mul6.i = mul nsw i32 %80, %77, !dbg !1403
  %81 = sext i32 %k.0125.i to i64
  %82 = zext i32 %mul6.i to i64, !dbg !1407
  br label %for.body5.i, !dbg !1407

for.body5.i:                                      ; preds = %for.body5.i, %for.body5.lr.ph.i
  %indvars.iv135.i = phi i64 [ 0, %for.body5.lr.ph.i ], [ %indvars.iv.next136.i, %for.body5.i ], !dbg !1407
  %indvars.iv133.i = phi i64 [ %81, %for.body5.lr.ph.i ], [ %indvars.iv.next134.i, %for.body5.i ]
  %a.i = getelementptr inbounds %union.t_iparams* %79, i64 %indvars.iv133.i, i32 0, i32 0, !dbg !1403
  %83 = load float* %a.i, align 4, !dbg !1403, !tbaa !1186
  %84 = add nsw i64 %indvars.iv135.i, %82, !dbg !1403
  %85 = trunc i64 %84 to i32, !dbg !1403
  %mul7.i = mul nsw i32 %85, 3, !dbg !1403
  %add8.i = add nsw i32 %mul7.i, 1, !dbg !1403
  %idxprom9.i = sext i32 %add8.i to i64, !dbg !1403
  %arrayidx10.i = getelementptr inbounds float* %78, i64 %idxprom9.i, !dbg !1403
  store float %83, float* %arrayidx10.i, align 4, !dbg !1403, !tbaa !1186
  %86 = getelementptr inbounds %union.t_iparams* %79, i64 %indvars.iv133.i, i32 0, i32 1, !dbg !1408
  %87 = load float* %86, align 4, !dbg !1408, !tbaa !1186
  %add18.i = add nsw i32 %mul7.i, 2, !dbg !1408
  %idxprom19.i = sext i32 %add18.i to i64, !dbg !1408
  %arrayidx20.i = getelementptr inbounds float* %78, i64 %idxprom19.i, !dbg !1408
  store float %87, float* %arrayidx20.i, align 4, !dbg !1408, !tbaa !1186
  %88 = getelementptr inbounds %union.t_iparams* %79, i64 %indvars.iv133.i, i32 0, i32 2, !dbg !1409
  %89 = load float* %88, align 4, !dbg !1409, !tbaa !1186
  %idxprom28.i = sext i32 %mul7.i to i64, !dbg !1409
  %arrayidx29.i = getelementptr inbounds float* %78, i64 %idxprom28.i, !dbg !1409
  store float %89, float* %arrayidx29.i, align 4, !dbg !1409, !tbaa !1186
  %indvars.iv.next136.i = add i64 %indvars.iv135.i, 1, !dbg !1407
  %indvars.iv.next134.i = add i64 %indvars.iv133.i, 1, !dbg !1407
  %lftr.wideiv912 = trunc i64 %indvars.iv.next136.i to i32, !dbg !1407
  %exitcond913 = icmp eq i32 %lftr.wideiv912, %77, !dbg !1407
  br i1 %exitcond913, label %for.inc31.i, label %for.body5.i, !dbg !1407

for.inc31.i:                                      ; preds = %for.body5.i
  %90 = add i32 %k.0125.i, %77, !dbg !1407
  %indvars.iv.next141.i = add i64 %indvars.iv140.i, 1, !dbg !1400
  %lftr.wideiv914 = trunc i64 %indvars.iv.next141.i to i32, !dbg !1400
  %exitcond915 = icmp eq i32 %lftr.wideiv914, %77, !dbg !1400
  br i1 %exitcond915, label %mk_nbfp.exit, label %for.body5.lr.ph.i, !dbg !1400

if.else.i:                                        ; preds = %if.then287
  %mul34.i = shl i32 %77, 1, !dbg !1410
  %mul35.i = mul nsw i32 %mul34.i, %77, !dbg !1410
  %call36.i = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str73, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 112, i32 %mul35.i, i32 4) #5, !dbg !1410
  %91 = bitcast i8* %call36.i to float*, !dbg !1410
  call void @llvm.dbg.value(metadata !{float* %91}, i64 0, metadata !1398) #4, !dbg !1410
  call void @llvm.dbg.value(metadata !246, i64 0, metadata !1399) #4, !dbg !1412
  call void @llvm.dbg.value(metadata !246, i64 0, metadata !1402) #4, !dbg !1412
  %cmp38115.i = icmp sgt i32 %77, 0, !dbg !1412
  br i1 %cmp38115.i, label %for.cond40.preheader.lr.ph.i, label %mk_nbfp.exit, !dbg !1412

for.cond40.preheader.lr.ph.i:                     ; preds = %if.else.i
  %iparams44.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 4, !dbg !1414
  %92 = load %union.t_iparams** %iparams44.i, align 8, !dbg !1414, !tbaa !1242
  br label %for.body42.lr.ph.i, !dbg !1412

for.body42.lr.ph.i:                               ; preds = %for.inc65.i, %for.cond40.preheader.lr.ph.i
  %indvars.iv129.i = phi i64 [ 0, %for.cond40.preheader.lr.ph.i ], [ %indvars.iv.next130.i, %for.inc65.i ]
  %k.2117.i = phi i32 [ 0, %for.cond40.preheader.lr.ph.i ], [ %101, %for.inc65.i ]
  %93 = trunc i64 %indvars.iv129.i to i32, !dbg !1414
  %mul46.i = mul nsw i32 %93, %77, !dbg !1414
  %94 = sext i32 %k.2117.i to i64
  %95 = zext i32 %mul46.i to i64, !dbg !1418
  br label %for.body42.i, !dbg !1418

for.body42.i:                                     ; preds = %for.body42.i, %for.body42.lr.ph.i
  %indvars.iv126.i = phi i64 [ 0, %for.body42.lr.ph.i ], [ %indvars.iv.next127.i, %for.body42.i ], !dbg !1418
  %indvars.iv.i = phi i64 [ %94, %for.body42.lr.ph.i ], [ %indvars.iv.next.i, %for.body42.i ]
  %c6.i = getelementptr inbounds %union.t_iparams* %92, i64 %indvars.iv.i, i32 0, i32 0, !dbg !1414
  %96 = load float* %c6.i, align 4, !dbg !1414, !tbaa !1186
  %97 = add nsw i64 %indvars.iv126.i, %95, !dbg !1414
  %98 = trunc i64 %97 to i32, !dbg !1414
  %mul48.i = shl nsw i32 %98, 1, !dbg !1414
  %idxprom49.i = sext i32 %mul48.i to i64, !dbg !1414
  %arrayidx50.i = getelementptr inbounds float* %91, i64 %idxprom49.i, !dbg !1414
  store float %96, float* %arrayidx50.i, align 4, !dbg !1414, !tbaa !1186
  %99 = getelementptr inbounds %union.t_iparams* %92, i64 %indvars.iv.i, i32 0, i32 1, !dbg !1419
  %100 = load float* %99, align 4, !dbg !1419, !tbaa !1186
  %add58111.i = or i32 %mul48.i, 1, !dbg !1419
  %idxprom59.i = sext i32 %add58111.i to i64, !dbg !1419
  %arrayidx60.i = getelementptr inbounds float* %91, i64 %idxprom59.i, !dbg !1419
  store float %100, float* %arrayidx60.i, align 4, !dbg !1419, !tbaa !1186
  %indvars.iv.next127.i = add i64 %indvars.iv126.i, 1, !dbg !1418
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !1418
  %lftr.wideiv916 = trunc i64 %indvars.iv.next127.i to i32, !dbg !1418
  %exitcond917 = icmp eq i32 %lftr.wideiv916, %77, !dbg !1418
  br i1 %exitcond917, label %for.inc65.i, label %for.body42.i, !dbg !1418

for.inc65.i:                                      ; preds = %for.body42.i
  %101 = add i32 %k.2117.i, %77, !dbg !1418
  %indvars.iv.next130.i = add i64 %indvars.iv129.i, 1, !dbg !1412
  %lftr.wideiv918 = trunc i64 %indvars.iv.next130.i to i32, !dbg !1412
  %exitcond919 = icmp eq i32 %lftr.wideiv918, %77, !dbg !1412
  br i1 %exitcond919, label %mk_nbfp.exit, label %for.body42.lr.ph.i, !dbg !1412

mk_nbfp.exit:                                     ; preds = %for.inc65.i, %for.inc31.i, %if.then.i, %if.else.i
  %nbfp.0.i = phi float* [ %91, %if.else.i ], [ %78, %if.then.i ], [ %78, %for.inc31.i ], [ %91, %for.inc65.i ]
  store float* %nbfp.0.i, float** %nbfp, align 8, !dbg !1391, !tbaa !1242
  br label %if.end294, !dbg !1420

if.end294:                                        ; preds = %if.end284, %mk_nbfp.exit
  %eg_excl = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 9, !dbg !1421
  %102 = load i32** %eg_excl, align 8, !dbg !1421, !tbaa !1242
  %eg_excl296 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 66, !dbg !1421
  store i32* %102, i32** %eg_excl296, align 8, !dbg !1421, !tbaa !1242
  %103 = load float* %rvdw, align 4, !dbg !1422, !tbaa !1186
  %rvdw298 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 26, !dbg !1422
  store float %103, float* %rvdw298, align 4, !dbg !1422, !tbaa !1186
  %rvdw_switch = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 40, !dbg !1423
  %104 = load float* %rvdw_switch, align 4, !dbg !1423, !tbaa !1186
  %rvdw_switch299 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 25, !dbg !1423
  store float %104, float* %rvdw_switch299, align 4, !dbg !1423, !tbaa !1186
  %105 = load i32* %vdwtype37, align 4, !dbg !1424, !tbaa !1183
  switch i32 %105, label %land.lhs.true307 [
    i32 0, label %if.end333
    i32 3, label %if.end333
  ], !dbg !1424

land.lhs.true307:                                 ; preds = %if.end294
  %bBHAM308 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 64, !dbg !1424
  %106 = load i32* %bBHAM308, align 4, !dbg !1424, !tbaa !1183
  %tobool309 = icmp eq i32 %106, 0, !dbg !1424
  br i1 %tobool309, label %if.then310, label %if.end333, !dbg !1424

if.then310:                                       ; preds = %land.lhs.true307
  %cmp313 = fcmp ult float %104, %103, !dbg !1425
  br i1 %cmp313, label %if.end320, label %if.then315, !dbg !1425

if.then315:                                       ; preds = %if.then310
  %conv317 = fpext float %104 to double, !dbg !1427
  %conv319 = fpext float %103 to double, !dbg !1427
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([37 x i8]* @.str14, i64 0, i64 0), double %conv317, double %conv319) #5, !dbg !1427
  br label %if.end320, !dbg !1427

if.end320:                                        ; preds = %if.then310, %if.then315
  br i1 %tobool70, label %if.end333.thread, label %if.end346, !dbg !1428

if.end333.thread:                                 ; preds = %if.end320
  %107 = load i32* %eeltype, align 4, !dbg !1429, !tbaa !1183
  %cmp324 = icmp eq i32 %107, 7, !dbg !1429
  %cond326 = select i1 %cmp324, i8* getelementptr inbounds ([9 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str17, i64 0, i64 0), !dbg !1429
  %108 = load float* %rvdw_switch299, align 4, !dbg !1429, !tbaa !1186
  %conv328 = fpext float %108 to double, !dbg !1429
  %109 = load float* %rvdw298, align 4, !dbg !1429, !tbaa !1186
  %conv330 = fpext float %109 to double, !dbg !1429
  %call331 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([53 x i8]* @.str15, i64 0, i64 0), i8* %cond326, double %conv328, double %conv330) #5, !dbg !1429
  %.pre930 = load float* %rvdw298, align 4, !dbg !1430, !tbaa !1186
  br label %if.then335, !dbg !1431

if.end333:                                        ; preds = %if.end294, %if.end294, %land.lhs.true307
  br i1 %tobool70, label %if.end333.if.then335_crit_edge, label %if.end346, !dbg !1431

if.end333.if.then335_crit_edge:                   ; preds = %if.end333
  %bBHAM340.pre = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 64, !dbg !1430
  br label %if.then335, !dbg !1431

if.then335:                                       ; preds = %if.end333.if.then335_crit_edge, %if.end333.thread
  %bBHAM340.pre-phi = phi i32* [ %bBHAM340.pre, %if.end333.if.then335_crit_edge ], [ %bBHAM308, %if.end333.thread ], !dbg !1430
  %110 = phi float [ %103, %if.end333.if.then335_crit_edge ], [ %.pre930, %if.end333.thread ]
  %111 = load float* %rlist14, align 4, !dbg !1430, !tbaa !1186
  %conv337 = fpext float %111 to double, !dbg !1430
  %112 = load float* %rcoulomb97, align 4, !dbg !1430, !tbaa !1186
  %conv339 = fpext float %112 to double, !dbg !1430
  %113 = load i32* %bBHAM340.pre-phi, align 4, !dbg !1430, !tbaa !1183
  %tobool341 = icmp ne i32 %113, 0, !dbg !1430
  %cond342 = select i1 %tobool341, i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0), !dbg !1430
  %conv344 = fpext float %110 to double, !dbg !1430
  %call345 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([44 x i8]* @.str18, i64 0, i64 0), double %conv337, double %conv339, i8* %cond342, double %conv344) #5, !dbg !1430
  br label %if.end346, !dbg !1430

if.end346:                                        ; preds = %if.end320, %if.then335, %if.end333
  %eDispCorr = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 43, !dbg !1432
  %114 = load i32* %eDispCorr, align 4, !dbg !1432, !tbaa !1183
  %cmp347 = icmp eq i32 %114, 0, !dbg !1432
  br i1 %cmp347, label %if.end350, label %if.then349, !dbg !1432

if.then349:                                       ; preds = %if.end346
  call void @set_avcsix(%struct._IO_FILE* undef, %struct.t_forcerec* %fr, %struct.t_mdatoms* %mdatoms) #7, !dbg !1433
  br label %if.end350, !dbg !1433

if.end350:                                        ; preds = %if.end346, %if.then349
  %bBHAM351 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 64, !dbg !1434
  %115 = load i32* %bBHAM351, align 4, !dbg !1434, !tbaa !1183
  %tobool352 = icmp eq i32 %115, 0, !dbg !1434
  br i1 %tobool352, label %if.end354, label %if.then353, !dbg !1434

if.then353:                                       ; preds = %if.end350
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !1435) #4, !dbg !1437
  call void @llvm.dbg.value(metadata !{%struct.t_forcerec* %fr}, i64 0, metadata !1438) #4, !dbg !1437
  call void @llvm.dbg.value(metadata !{%struct.t_mdatoms* %mdatoms}, i64 0, metadata !1439) #4, !dbg !1437
  br i1 %tobool70, label %if.then.i825, label %if.end.i, !dbg !1440

if.then.i825:                                     ; preds = %if.then353
  %116 = call i64 @fwrite(i8* getelementptr inbounds ([54 x i8]* @.str70, i64 0, i64 0), i64 53, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1441
  br label %if.end.i, !dbg !1441

if.end.i:                                         ; preds = %if.then353, %if.then.i825
  %117 = load float** %nbfp, align 8, !dbg !1442, !tbaa !1242
  call void @llvm.dbg.value(metadata !{float* %117}, i64 0, metadata !1443) #4, !dbg !1442
  %ntype.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63, !dbg !1444
  %118 = load i32* %ntype.i, align 4, !dbg !1444, !tbaa !1183
  call void @llvm.dbg.value(metadata !{i32 %118}, i64 0, metadata !1445) #4, !dbg !1444
  %typeA.i = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 11, !dbg !1446
  %119 = load i32** %typeA.i, align 8, !dbg !1446, !tbaa !1242
  call void @llvm.dbg.value(metadata !{i32* %119}, i64 0, metadata !1447) #4, !dbg !1446
  %120 = load i32* %nr, align 4, !dbg !1448, !tbaa !1183
  call void @llvm.dbg.value(metadata !{i32 %120}, i64 0, metadata !1449) #4, !dbg !1448
  call void @llvm.dbg.value(metadata !1450, i64 0, metadata !1451) #4, !dbg !1452
  call void @llvm.dbg.value(metadata !1453, i64 0, metadata !1454) #4, !dbg !1455
  %bham_b_max.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 27, !dbg !1456
  store float 0.000000e+00, float* %bham_b_max.i, align 4, !dbg !1456, !tbaa !1186
  call void @llvm.dbg.value(metadata !246, i64 0, metadata !1457) #4, !dbg !1458
  %cmp69.i = icmp sgt i32 %120, 0, !dbg !1458
  br i1 %cmp69.i, label %for.body.i, label %for.end28.i, !dbg !1458

for.body.i:                                       ; preds = %if.end.i, %for.inc26.i
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i, %for.inc26.i ], [ 0, %if.end.i ]
  %first.072.i = phi i32 [ %first.2.i, %for.inc26.i ], [ 1, %if.end.i ]
  %bmin.070.i = phi float [ %bmin.2.i, %for.inc26.i ], [ -1.000000e+00, %if.end.i ]
  %arrayidx.i = getelementptr inbounds i32* %119, i64 %indvars.iv74.i, !dbg !1460
  %121 = load i32* %arrayidx.i, align 4, !dbg !1460, !tbaa !1183
  call void @llvm.dbg.value(metadata !{i32 %121}, i64 0, metadata !1462) #4, !dbg !1460
  %cmp2.i = icmp slt i32 %121, %118, !dbg !1463
  br i1 %cmp2.i, label %for.body7.lr.ph.i, label %if.then3.i, !dbg !1463

if.then3.i:                                       ; preds = %for.body.i
  %122 = trunc i64 %indvars.iv74.i to i32, !dbg !1464
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([32 x i8]* @.str71, i64 0, i64 0), i32 %122, i32 %121, i32 %118) #5, !dbg !1464
  br label %for.body7.lr.ph.i, !dbg !1464

for.body7.lr.ph.i:                                ; preds = %if.then3.i, %for.body.i
  %mul.i826 = mul nsw i32 %121, %118, !dbg !1465
  br label %for.body7.i, !dbg !1468

for.body7.i:                                      ; preds = %if.end21.i, %for.body7.lr.ph.i
  %indvars.iv.i827 = phi i64 [ 0, %for.body7.lr.ph.i ], [ %indvars.iv.next.i828, %if.end21.i ]
  %first.167.i = phi i32 [ %first.072.i, %for.body7.lr.ph.i ], [ %first.2.i, %if.end21.i ]
  %bmin.166.i = phi float [ %bmin.070.i, %for.body7.lr.ph.i ], [ %bmin.2.i, %if.end21.i ]
  %arrayidx9.i = getelementptr inbounds i32* %119, i64 %indvars.iv.i827, !dbg !1469
  %123 = load i32* %arrayidx9.i, align 4, !dbg !1469, !tbaa !1183
  call void @llvm.dbg.value(metadata !{i32 %123}, i64 0, metadata !1470) #4, !dbg !1469
  %cmp10.i = icmp slt i32 %123, %118, !dbg !1471
  br i1 %cmp10.i, label %if.end12.i, label %if.then11.i, !dbg !1471

if.then11.i:                                      ; preds = %for.body7.i
  %124 = trunc i64 %indvars.iv.i827 to i32, !dbg !1472
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([32 x i8]* @.str71, i64 0, i64 0), i32 %124, i32 %123, i32 %118) #5, !dbg !1472
  br label %if.end12.i, !dbg !1472

if.end12.i:                                       ; preds = %for.body7.i, %if.then11.i
  %add.i = add nsw i32 %123, %mul.i826, !dbg !1465
  %mul13.i = mul nsw i32 %add.i, 3, !dbg !1465
  %add14.i = add nsw i32 %mul13.i, 2, !dbg !1465
  %idxprom15.i = sext i32 %add14.i to i64, !dbg !1465
  %arrayidx16.i = getelementptr inbounds float* %117, i64 %idxprom15.i, !dbg !1465
  %125 = load float* %arrayidx16.i, align 4, !dbg !1465, !tbaa !1186
  call void @llvm.dbg.value(metadata !{float %125}, i64 0, metadata !1473) #4, !dbg !1465
  %126 = load float* %bham_b_max.i, align 4, !dbg !1474, !tbaa !1186
  %cmp18.i = fcmp ogt float %125, %126, !dbg !1474
  br i1 %cmp18.i, label %if.then19.i, label %if.end21.i, !dbg !1474

if.then19.i:                                      ; preds = %if.end12.i
  store float %125, float* %bham_b_max.i, align 4, !dbg !1475, !tbaa !1186
  br label %if.end21.i, !dbg !1475

if.end21.i:                                       ; preds = %if.then19.i, %if.end12.i
  %127 = phi float [ %125, %if.then19.i ], [ %126, %if.end12.i ]
  %cmp22.i = fcmp uge float %125, %bmin.166.i, !dbg !1476
  %tobool23.i = icmp eq i32 %first.167.i, 0, !dbg !1476
  %or.cond.i = and i1 %cmp22.i, %tobool23.i, !dbg !1476
  call void @llvm.dbg.value(metadata !{float %125}, i64 0, metadata !1451) #4, !dbg !1477
  call void @llvm.dbg.value(metadata !246, i64 0, metadata !1454) #4, !dbg !1479
  %bmin.2.i = select i1 %or.cond.i, float %bmin.166.i, float %125, !dbg !1476
  %first.2.i = select i1 %or.cond.i, i32 %first.167.i, i32 0, !dbg !1476
  %indvars.iv.next.i828 = add i64 %indvars.iv.i827, 1, !dbg !1468
  %lftr.wideiv908 = trunc i64 %indvars.iv.next.i828 to i32, !dbg !1468
  %exitcond909 = icmp eq i32 %lftr.wideiv908, %120, !dbg !1468
  br i1 %exitcond909, label %for.inc26.i, label %for.body7.i, !dbg !1468

for.inc26.i:                                      ; preds = %if.end21.i
  %indvars.iv.next75.i = add i64 %indvars.iv74.i, 1, !dbg !1458
  %lftr.wideiv910 = trunc i64 %indvars.iv.next75.i to i32, !dbg !1458
  %exitcond911 = icmp eq i32 %lftr.wideiv910, %120, !dbg !1458
  br i1 %exitcond911, label %for.end28.i.loopexit, label %for.body.i, !dbg !1458

for.end28.i.loopexit:                             ; preds = %for.inc26.i
  %phitmp880 = fpext float %bmin.2.i to double
  br label %for.end28.i

for.end28.i:                                      ; preds = %for.end28.i.loopexit, %if.end.i
  %128 = phi float [ 0.000000e+00, %if.end.i ], [ %127, %for.end28.i.loopexit ]
  %bmin.0.lcssa.i = phi double [ -1.000000e+00, %if.end.i ], [ %phitmp880, %for.end28.i.loopexit ]
  br i1 %tobool70, label %if.then30.i, label %if.end354, !dbg !1480

if.then30.i:                                      ; preds = %for.end28.i
  %conv32.i = fpext float %128 to double, !dbg !1481
  %call33.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([43 x i8]* @.str72, i64 0, i64 0), double %bmin.0.lcssa.i, double %conv32.i) #5, !dbg !1481
  br label %if.end354, !dbg !1481

if.end354:                                        ; preds = %if.then30.i, %for.end28.i, %if.end350
  call void @update_forcerec(%struct._IO_FILE* %fp, %struct.t_forcerec* %fr, [3 x float]* %box) #7, !dbg !1482
  %129 = load i32* %bcoultab, align 4, !dbg !1483, !tbaa !1183
  %tobool356 = icmp eq i32 %129, 0, !dbg !1483
  br i1 %tobool356, label %lor.lhs.false357, label %if.then360, !dbg !1483

lor.lhs.false357:                                 ; preds = %if.end354
  %130 = load i32* %bvdwtab, align 4, !dbg !1483, !tbaa !1183
  %tobool359 = icmp eq i32 %130, 0, !dbg !1483
  br i1 %tobool359, label %if.else407, label %if.then360, !dbg !1483

if.then360:                                       ; preds = %lor.lhs.false357, %if.end354
  %131 = load i32* %eeltype, align 4, !dbg !1484, !tbaa !1183
  %.off820 = add i32 %131, -3, !dbg !1484
  %switch821 = icmp ult i32 %.off820, 4, !dbg !1484
  br i1 %switch821, label %if.then376, label %if.end392, !dbg !1484

if.then376:                                       ; preds = %if.then360
  call void @llvm.dbg.value(metadata !{i32 %129}, i64 0, metadata !862), !dbg !1485
  %132 = load i32* %bvdwtab, align 4, !dbg !1486, !tbaa !1183
  call void @llvm.dbg.value(metadata !{i32 %132}, i64 0, metadata !865), !dbg !1486
  store i32 0, i32* %bcoultab, align 4, !dbg !1487, !tbaa !1183
  store i32 0, i32* %bvdwtab, align 4, !dbg !1488, !tbaa !1183
  %rtab381 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 15, !dbg !1489
  store float 1.000000e+00, float* %rtab381, align 4, !dbg !1489, !tbaa !1186
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !1490
  %133 = load i32* %nodeid, align 4, !dbg !1490, !tbaa !1183
  %cmp382 = icmp eq i32 %133, 0, !dbg !1490
  br i1 %cmp382, label %land.rhs384, label %land.end387, !dbg !1490

land.rhs384:                                      ; preds = %if.then376
  %threadid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4, !dbg !1490
  %134 = load i32* %threadid, align 4, !dbg !1490, !tbaa !1183
  %cmp385 = icmp eq i32 %134, 0, !dbg !1490
  br label %land.end387

land.end387:                                      ; preds = %land.rhs384, %if.then376
  %135 = phi i1 [ false, %if.then376 ], [ %cmp385, %land.rhs384 ]
  %land.ext388 = zext i1 %135 to i32
  call void @make_tables(%struct._IO_FILE* %fp, %struct.t_forcerec* %fr, i32 %land.ext388, i8* %tabfn) #5
  store i32 %129, i32* %bcoultab, align 4, !dbg !1491, !tbaa !1183
  store i32 %132, i32* %bvdwtab, align 4, !dbg !1492, !tbaa !1183
  %coulvdwtab = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 20, !dbg !1493
  %136 = load float** %coulvdwtab, align 8, !dbg !1493, !tbaa !1242
  %coulvdw14tab = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 21, !dbg !1493
  store float* %136, float** %coulvdw14tab, align 8, !dbg !1493, !tbaa !1242
  store float* null, float** %coulvdwtab, align 8, !dbg !1494, !tbaa !1242
  br label %if.end392, !dbg !1495

if.end392:                                        ; preds = %if.then360, %land.end387
  %137 = load float* %rlistlong, align 4, !dbg !1496, !tbaa !1186
  %conv394 = fpext float %137 to double, !dbg !1496
  %add395 = fadd double %conv394, 6.000000e-01, !dbg !1496
  %cmp396 = fcmp ogt double %add395, 1.000000e+00, !dbg !1496
  br i1 %cmp396, label %cond.true398, label %cond.end403, !dbg !1496

cond.true398:                                     ; preds = %if.end392
  %phitmp816 = fptrunc double %add395 to float, !dbg !1496
  br label %cond.end403, !dbg !1496

cond.end403:                                      ; preds = %if.end392, %cond.true398
  %cond404 = phi float [ %phitmp816, %cond.true398 ], [ 1.000000e+00, %if.end392 ]
  %rtab406 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 15, !dbg !1496
  store float %cond404, float* %rtab406, align 4, !dbg !1496, !tbaa !1186
  br label %if.end449, !dbg !1497

if.else407:                                       ; preds = %lor.lhs.false357
  %138 = load i32* %efep6, align 4, !dbg !1498, !tbaa !1183
  %cmp409 = icmp eq i32 %138, 0, !dbg !1498
  br i1 %cmp409, label %if.else446, label %if.then411, !dbg !1498

if.then411:                                       ; preds = %if.else407
  %139 = load float* %rlistlong, align 4, !dbg !1499, !tbaa !1186
  %conv413 = fpext float %139 to double, !dbg !1499
  %cmp414 = fcmp olt double %conv413, 1.200000e-38, !dbg !1499
  br i1 %cmp414, label %if.then416, label %if.else430, !dbg !1499

if.then416:                                       ; preds = %if.then411
  call void @llvm.dbg.value(metadata !1500, i64 0, metadata !869), !dbg !1501
  %rtab417 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 15, !dbg !1502
  store float 5.000000e+00, float* %rtab417, align 4, !dbg !1502, !tbaa !1186
  call void @llvm.dbg.value(metadata !1503, i64 0, metadata !866), !dbg !1504
  br i1 %tobool70, label %if.then425, label %if.end449, !dbg !1505

if.then425:                                       ; preds = %if.then416
  %call428 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([117 x i8]* @.str23, i64 0, i64 0), double 5.000000e+00, i8* getelementptr inbounds ([17 x i8]* @.str21, i64 0, i64 0)) #5, !dbg !1506
  br label %if.end449, !dbg !1506

if.else430:                                       ; preds = %if.then411
  %add433 = fadd double %conv413, 6.000000e-01, !dbg !1507
  %cmp434 = fcmp ogt double %add433, 1.000000e+00, !dbg !1507
  br i1 %cmp434, label %cond.true436, label %cond.end441, !dbg !1507

cond.true436:                                     ; preds = %if.else430
  %phitmp = fptrunc double %add433 to float, !dbg !1507
  br label %cond.end441, !dbg !1507

cond.end441:                                      ; preds = %if.else430, %cond.true436
  %cond442 = phi float [ %phitmp, %cond.true436 ], [ 1.000000e+00, %if.else430 ]
  %rtab444 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 15, !dbg !1507
  store float %cond442, float* %rtab444, align 4, !dbg !1507, !tbaa !1186
  br label %if.end449

if.else446:                                       ; preds = %if.else407
  %rtab447 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 15, !dbg !1508
  store float 1.000000e+00, float* %rtab447, align 4, !dbg !1508, !tbaa !1186
  br label %if.end449

if.end449:                                        ; preds = %if.else446, %if.then416, %if.then425, %cond.end441, %cond.end403
  %nodeid450 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !1509
  %140 = load i32* %nodeid450, align 4, !dbg !1509, !tbaa !1183
  %cmp451 = icmp eq i32 %140, 0, !dbg !1509
  br i1 %cmp451, label %land.rhs453, label %land.end457, !dbg !1509

land.rhs453:                                      ; preds = %if.end449
  %threadid454 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4, !dbg !1509
  %141 = load i32* %threadid454, align 4, !dbg !1509, !tbaa !1183
  %cmp455 = icmp eq i32 %141, 0, !dbg !1509
  br label %land.end457

land.end457:                                      ; preds = %land.rhs453, %if.end449
  %142 = phi i1 [ false, %if.end449 ], [ %cmp455, %land.rhs453 ]
  %land.ext458 = zext i1 %142 to i32
  call void @make_tables(%struct._IO_FILE* %fp, %struct.t_forcerec* %fr, i32 %land.ext458, i8* %tabfn) #5
  %143 = load i32* %eeltype, align 4, !dbg !1510, !tbaa !1183
  %.off822 = add i32 %143, -3, !dbg !1510
  %switch823 = icmp ult i32 %.off822, 4, !dbg !1510
  br i1 %switch823, label %land.lhs.true474, label %if.then480, !dbg !1510

land.lhs.true474:                                 ; preds = %land.end457
  %144 = load i32* %bcoultab, align 4, !dbg !1510, !tbaa !1183
  %tobool476 = icmp eq i32 %144, 0, !dbg !1510
  br i1 %tobool476, label %lor.lhs.false477, label %if.end483, !dbg !1510

lor.lhs.false477:                                 ; preds = %land.lhs.true474
  %145 = load i32* %bvdwtab, align 4, !dbg !1510, !tbaa !1183
  %tobool479 = icmp eq i32 %145, 0, !dbg !1510
  br i1 %tobool479, label %if.then480, label %if.end483, !dbg !1510

if.then480:                                       ; preds = %land.end457, %lor.lhs.false477
  %coulvdwtab481 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 20, !dbg !1511
  %146 = load float** %coulvdwtab481, align 8, !dbg !1511, !tbaa !1242
  %coulvdw14tab482 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 21, !dbg !1511
  store float* %146, float** %coulvdw14tab482, align 8, !dbg !1511, !tbaa !1242
  br label %if.end483, !dbg !1511

if.end483:                                        ; preds = %lor.lhs.false477, %land.lhs.true474, %if.then480
  %147 = load i32* %bBHAM351, align 4, !dbg !1512, !tbaa !1183
  %tobool485 = icmp ne i32 %147, 0, !dbg !1512
  %cond486 = select i1 %tobool485, i32 16, i32 12, !dbg !1512
  call void @llvm.dbg.value(metadata !{i32 %cond486}, i64 0, metadata !849), !dbg !1512
  %ntab = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 16, !dbg !1513
  %148 = load i32* %ntab, align 4, !dbg !1513, !tbaa !1183
  %add487 = shl i32 %148, 4, !dbg !1513
  %mul490 = add i32 %add487, 16, !dbg !1513
  %call492 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 769, i32 %mul490, i32 4) #5, !dbg !1513
  %149 = bitcast i8* %call492 to float*, !dbg !1513
  %coultab = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 18, !dbg !1513
  store float* %149, float** %coultab, align 8, !dbg !1513, !tbaa !1242
  %sub = add i32 %cond486, -4, !dbg !1514
  %150 = load i32* %ntab, align 4, !dbg !1514, !tbaa !1183
  %add494 = add nsw i32 %150, 1, !dbg !1514
  %mul495 = shl nsw i32 %sub, 2, !dbg !1514
  %mul497 = mul i32 %mul495, %add494, !dbg !1514
  %call499 = call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 770, i32 %mul497, i32 4) #5, !dbg !1514
  %151 = bitcast i8* %call499 to float*, !dbg !1514
  %vdwtab = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 19, !dbg !1514
  store float* %151, float** %vdwtab, align 8, !dbg !1514, !tbaa !1242
  call void @llvm.dbg.value(metadata !246, i64 0, metadata !844), !dbg !1515
  %152 = load i32* %ntab, align 4, !dbg !1515, !tbaa !1183
  %cmp502865 = icmp slt i32 %152, 0, !dbg !1515
  br i1 %cmp502865, label %for.end544, label %for.cond505.preheader.lr.ph, !dbg !1515

for.cond505.preheader.lr.ph:                      ; preds = %if.end483
  %coulvdwtab512 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 20, !dbg !1517
  %153 = load float** %coulvdwtab512, align 8, !dbg !1517, !tbaa !1242
  %154 = load float** %coultab, align 8, !dbg !1517, !tbaa !1242
  %cmp524863 = icmp sgt i32 %sub, 0, !dbg !1520
  br label %for.cond505.preheader, !dbg !1515

for.cond505.preheader:                            ; preds = %for.inc542, %for.cond505.preheader.lr.ph
  %indvars.iv906 = phi i64 [ %indvars.iv.next907, %for.inc542 ], [ 0, %for.cond505.preheader.lr.ph ]
  %155 = trunc i64 %indvars.iv906 to i32, !dbg !1517
  %mul509 = mul nsw i32 %155, %cond486, !dbg !1517
  %mul514 = shl i32 %155, 2, !dbg !1517
  %156 = sext i32 %mul514 to i64, !dbg !1522
  %157 = sext i32 %mul509 to i64, !dbg !1522
  br label %for.body508, !dbg !1522

for.body508:                                      ; preds = %for.body508, %for.cond505.preheader
  %indvars.iv = phi i64 [ 0, %for.cond505.preheader ], [ %indvars.iv.next, %for.body508 ]
  %158 = add nsw i64 %indvars.iv, %157, !dbg !1517
  %arrayidx513 = getelementptr inbounds float* %153, i64 %158, !dbg !1517
  %159 = load float* %arrayidx513, align 4, !dbg !1517, !tbaa !1186
  %160 = add nsw i64 %indvars.iv, %156, !dbg !1517
  %arrayidx518 = getelementptr inbounds float* %154, i64 %160, !dbg !1517
  store float %159, float* %arrayidx518, align 4, !dbg !1517, !tbaa !1186
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1522
  %lftr.wideiv896 = trunc i64 %indvars.iv.next to i32, !dbg !1522
  %exitcond897 = icmp eq i32 %lftr.wideiv896, 4, !dbg !1522
  br i1 %exitcond897, label %for.cond522.loopexit, label %for.body508, !dbg !1522

for.cond522.loopexit:                             ; preds = %for.body508
  br i1 %cmp524863, label %for.body526.lr.ph, label %for.inc542, !dbg !1520

for.body526.lr.ph:                                ; preds = %for.cond522.loopexit
  %add528 = add nsw i32 %mul509, 4, !dbg !1523
  %mul534 = mul nsw i32 %155, %sub, !dbg !1523
  %161 = sext i32 %mul534 to i64, !dbg !1520
  %162 = sext i32 %add528 to i64, !dbg !1520
  br label %for.body526, !dbg !1520

for.body526:                                      ; preds = %for.body526, %for.body526.lr.ph
  %indvars.iv899 = phi i64 [ 0, %for.body526.lr.ph ], [ %indvars.iv.next900, %for.body526 ]
  %163 = add nsw i64 %162, %indvars.iv899, !dbg !1523
  %arrayidx532 = getelementptr inbounds float* %153, i64 %163, !dbg !1523
  %164 = load float* %arrayidx532, align 4, !dbg !1523, !tbaa !1186
  %165 = add nsw i64 %indvars.iv899, %161, !dbg !1523
  %arrayidx538 = getelementptr inbounds float* %151, i64 %165, !dbg !1523
  store float %164, float* %arrayidx538, align 4, !dbg !1523, !tbaa !1186
  %indvars.iv.next900 = add i64 %indvars.iv899, 1, !dbg !1520
  %lftr.wideiv903 = trunc i64 %indvars.iv.next900 to i32, !dbg !1520
  %exitcond904 = icmp eq i32 %lftr.wideiv903, %sub, !dbg !1520
  br i1 %exitcond904, label %for.inc542, label %for.body526, !dbg !1520

for.inc542:                                       ; preds = %for.body526, %for.cond522.loopexit
  %indvars.iv.next907 = add i64 %indvars.iv906, 1, !dbg !1515
  %cmp502 = icmp slt i32 %155, %152, !dbg !1515
  br i1 %cmp502, label %for.cond505.preheader, label %for.end544, !dbg !1515

for.end544:                                       ; preds = %for.inc542, %if.end483
  %mno_index = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 46, !dbg !1524
  %166 = load i32** %mno_index, align 8, !dbg !1524, !tbaa !1242
  %tobool545 = icmp eq i32* %166, null, !dbg !1524
  br i1 %tobool545, label %if.then546, label %if.end547, !dbg !1524

if.then546:                                       ; preds = %for.end544
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !1525) #4, !dbg !1527
  call void @llvm.dbg.value(metadata !{%struct.t_topology* %top}, i64 0, metadata !1528) #4, !dbg !1527
  call void @llvm.dbg.value(metadata !{%struct.t_forcerec* %fr}, i64 0, metadata !1529) #4, !dbg !1527
  call void @llvm.dbg.value(metadata !{%struct.t_mdatoms* %mdatoms}, i64 0, metadata !1530) #4, !dbg !1531
  call void @llvm.dbg.value(metadata !{%struct.t_nsborder* %nsb}, i64 0, metadata !1532) #4, !dbg !1531
  %arrayidx.i831 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, !dbg !1533
  call void @llvm.dbg.value(metadata !{%struct.t_block* %arrayidx.i831}, i64 0, metadata !1534) #4, !dbg !1533
  br i1 %tobool70, label %if.then.i833, label %if.end.i837, !dbg !1535

if.then.i833:                                     ; preds = %if.then546
  %167 = call i64 @fwrite(i8* getelementptr inbounds ([48 x i8]* @.str55, i64 0, i64 0), i64 47, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1536
  br label %if.end.i837, !dbg !1536

if.end.i837:                                      ; preds = %if.then.i833, %if.then546
  %nr.i834 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 1, !dbg !1537
  %168 = load i32* %nr.i834, align 4, !dbg !1537, !tbaa !1183
  %add.i835 = add nsw i32 %168, 1, !dbg !1537
  %call4.i = call i8* @save_calloc(i8* getelementptr inbounds ([17 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 144, i32 %add.i835, i32 4) #5, !dbg !1537
  %169 = bitcast i8* %call4.i to i32*, !dbg !1537
  %solvent_type.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 45, !dbg !1537
  store i32* %169, i32** %solvent_type.i, align 8, !dbg !1537, !tbaa !1242
  %170 = load i32* %nr.i834, align 4, !dbg !1538, !tbaa !1183
  %171 = mul i32 %170, 3, !dbg !1538
  %mul.i836 = add i32 %171, 3, !dbg !1538
  %call7.i = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str57, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 145, i32 %mul.i836, i32 4) #5, !dbg !1538
  %172 = bitcast i8* %call7.i to i32*, !dbg !1538
  store i32* %172, i32** %mno_index, align 8, !dbg !1538, !tbaa !1242
  %nra.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 3, !dbg !1539
  %173 = load i32* %nra.i, align 4, !dbg !1539, !tbaa !1183
  %call8.i = call i32* @make_invblock(%struct.t_block* %arrayidx.i831, i32 %173) #5, !dbg !1539
  call void @llvm.dbg.value(metadata !{i32* %call8.i}, i64 0, metadata !1540) #4, !dbg !1539
  call void @llvm.dbg.value(metadata !246, i64 0, metadata !1541) #4, !dbg !1542
  %nr11.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 1, !dbg !1543
  br i1 %tobool70, label %if.then10.i, label %for.cond.preheader.i, !dbg !1544

if.then10.i:                                      ; preds = %if.end.i837
  %174 = load i32* %nr11.i, align 4, !dbg !1543, !tbaa !1183
  %175 = load i32* %nr.i834, align 4, !dbg !1543, !tbaa !1183
  %176 = load i32* %nra.i, align 4, !dbg !1543, !tbaa !1183
  %call14.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([55 x i8]* @.str58, i64 0, i64 0), i32 %174, i32 %175, i32 %176) #5, !dbg !1543
  br label %for.cond.preheader.i, !dbg !1543

for.cond.preheader.i:                             ; preds = %if.then10.i, %if.end.i837
  %177 = load i32* %nr11.i, align 4, !dbg !1545, !tbaa !1183
  %cmp10391044.i = icmp sgt i32 %177, 0, !dbg !1545
  br i1 %cmp10391044.i, label %for.body.lr.ph.lr.ph.i, label %for.end520.i, !dbg !1545

for.body.lr.ph.lr.ph.i:                           ; preds = %for.cond.preheader.i
  %index.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 2, !dbg !1547
  %a507.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 4, !dbg !1549
  %atom315.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1, !dbg !1553
  %bPerturbed.i = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 9, !dbg !1556
  %tobool.not.i = xor i1 %tobool70, true, !dbg !1558
  %ntype.i838 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63, !dbg !1562
  %index60.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 9, i32 2, !dbg !1566
  %a70.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 9, i32 4, !dbg !1570
  br label %for.body.lr.ph.i, !dbg !1545

for.cond498.for.cond.loopexit_crit_edge.i:        ; preds = %for.body505.i
  %.pre1109.i = load i32* %nr11.i, align 4, !dbg !1545, !tbaa !1183
  br label %for.cond.loopexit.i, !dbg !1572

for.cond.loopexit.i:                              ; preds = %if.else494.i, %for.cond498.for.cond.loopexit_crit_edge.i
  %178 = phi i32 [ %311, %for.cond498.for.cond.loopexit_crit_edge.i ], [ %183, %if.else494.i ]
  %179 = phi i32 [ %.pre1109.i, %for.cond498.for.cond.loopexit_crit_edge.i ], [ %182, %if.else494.i ], !dbg !1545
  %180 = trunc i64 %indvars.iv.next1076.i to i32, !dbg !1545
  %cmp.i = icmp slt i32 %180, %179, !dbg !1545
  br i1 %cmp.i, label %for.body.i840, label %for.end520.i, !dbg !1545

for.body.i840:                                    ; preds = %for.body.lr.ph.i, %for.cond.loopexit.i
  %181 = phi i32 [ %.pre1113.i, %for.body.lr.ph.i ], [ %178, %for.cond.loopexit.i ]
  %182 = phi i32 [ %303, %for.body.lr.ph.i ], [ %179, %for.cond.loopexit.i ]
  %indvars.iv1075.i = phi i64 [ %305, %for.body.lr.ph.i ], [ %indvars.iv.next1076.i, %for.cond.loopexit.i ]
  %i.01040.i = phi i32 [ %i.0.ph1046.i, %for.body.lr.ph.i ], [ %add18.i839, %for.cond.loopexit.i ]
  call void @llvm.dbg.value(metadata !1453, i64 0, metadata !1573) #4, !dbg !1574
  call void @llvm.dbg.value(metadata !{i32 %181}, i64 0, metadata !1575) #4, !dbg !1547
  %indvars.iv.next1076.i = add i64 %indvars.iv1075.i, 1, !dbg !1545
  %add18.i839 = add nsw i32 %i.01040.i, 1, !dbg !1576
  %arrayidx21.i = getelementptr inbounds i32* %304, i64 %indvars.iv.next1076.i, !dbg !1576
  %183 = load i32* %arrayidx21.i, align 4, !dbg !1576, !tbaa !1183
  call void @llvm.dbg.value(metadata !{i32 %183}, i64 0, metadata !1577) #4, !dbg !1576
  %sub.i = sub nsw i32 %183, %181, !dbg !1578
  call void @llvm.dbg.value(metadata !{i32 %sub.i}, i64 0, metadata !1579) #4, !dbg !1578
  %j.0994.i = add i32 %181, 1, !dbg !1580
  %cmp24995.i = icmp slt i32 %j.0994.i, %183, !dbg !1580
  br i1 %cmp24995.i, label %for.body25.lr.ph.i, label %for.end.i, !dbg !1580

for.body25.lr.ph.i:                               ; preds = %for.body.i840
  %184 = sext i32 %j.0994.i to i64
  br label %for.body25.i, !dbg !1580

for.body25.i:                                     ; preds = %land.end.i, %for.body25.lr.ph.i
  %indvars.iv1062.i = phi i64 [ %184, %for.body25.lr.ph.i ], [ %indvars.iv.next1063.i, %land.end.i ]
  %j.0998.i = phi i32 [ %j.0994.i, %for.body25.lr.ph.i ], [ %j.0.i, %land.end.i ]
  %j.0.in997.i = phi i32 [ %181, %for.body25.lr.ph.i ], [ %191, %land.end.i ]
  %bOneCG.0996.i = phi i32 [ 1, %for.body25.lr.ph.i ], [ %land.ext.i, %land.end.i ]
  %tobool26.i = icmp eq i32 %bOneCG.0996.i, 0, !dbg !1582
  br i1 %tobool26.i, label %land.end.i, label %land.rhs.i, !dbg !1582

land.rhs.i:                                       ; preds = %for.body25.i
  %185 = load i32** %a507.i, align 8, !dbg !1582, !tbaa !1242
  %arrayidx28.i = getelementptr inbounds i32* %185, i64 %indvars.iv1062.i, !dbg !1582
  %186 = load i32* %arrayidx28.i, align 4, !dbg !1582, !tbaa !1183
  %idxprom29.i = sext i32 %186 to i64, !dbg !1582
  %arrayidx30.i = getelementptr inbounds i32* %call8.i, i64 %idxprom29.i, !dbg !1582
  %187 = load i32* %arrayidx30.i, align 4, !dbg !1582, !tbaa !1183
  %idxprom32.i = sext i32 %j.0.in997.i to i64, !dbg !1582
  %arrayidx34.i = getelementptr inbounds i32* %185, i64 %idxprom32.i, !dbg !1582
  %188 = load i32* %arrayidx34.i, align 4, !dbg !1582, !tbaa !1183
  %idxprom35.i = sext i32 %188 to i64, !dbg !1582
  %arrayidx36.i = getelementptr inbounds i32* %call8.i, i64 %idxprom35.i, !dbg !1582
  %189 = load i32* %arrayidx36.i, align 4, !dbg !1582, !tbaa !1183
  %cmp37.i = icmp eq i32 %187, %189, !dbg !1582
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %for.body25.i
  %190 = phi i1 [ false, %for.body25.i ], [ %cmp37.i, %land.rhs.i ]
  %land.ext.i = zext i1 %190 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext.i}, i64 0, metadata !1573) #4, !dbg !1584
  %j.0.i = add nsw i32 %j.0998.i, 1, !dbg !1580
  %indvars.iv.next1063.i = add i64 %indvars.iv1062.i, 1, !dbg !1580
  %191 = trunc i64 %indvars.iv1062.i to i32, !dbg !1580
  %exitcond1065.i = icmp eq i32 %j.0.i, %183, !dbg !1580
  br i1 %exitcond1065.i, label %for.end.i, label %for.body25.i, !dbg !1580

for.end.i:                                        ; preds = %land.end.i, %for.body.i840
  %bOneCG.0.lcssa.i = phi i1 [ true, %for.body.i840 ], [ %190, %land.end.i ]
  %192 = load i32* %bSolvOpt, align 4, !dbg !1585, !tbaa !1183
  %notlhs.i = icmp ne i32 %192, 0, !dbg !1585
  %or.cond.not.i = and i1 %bOneCG.0.lcssa.i, %notlhs.i, !dbg !1585
  %cmp41.i = icmp sgt i32 %sub.i, 1, !dbg !1585
  %or.cond982.i = and i1 %or.cond.not.i, %cmp41.i, !dbg !1585
  br i1 %or.cond982.i, label %if.then42.i, label %if.else494.i, !dbg !1585

if.then42.i:                                      ; preds = %for.end.i
  %call43.i = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 168, i32 %sub.i, i32 4) #5, !dbg !1586
  %193 = bitcast i8* %call43.i to i32*, !dbg !1586
  call void @llvm.dbg.value(metadata !{i32* %193}, i64 0, metadata !1587) #4, !dbg !1586
  call void @llvm.dbg.value(metadata !1453, i64 0, metadata !1588) #4, !dbg !1589
  call void @llvm.dbg.value(metadata !{i32 %181}, i64 0, metadata !1590) #4, !dbg !1591
  %cmp451012.i = icmp slt i32 %181, %183, !dbg !1591
  br i1 %cmp451012.i, label %for.cond51.preheader.lr.ph.i, label %if.then99.i, !dbg !1591

for.cond51.preheader.lr.ph.i:                     ; preds = %if.then42.i
  %cmp521002.i = icmp sgt i32 %sub.i, 0, !dbg !1592
  %194 = add i32 %sub.i, -1, !dbg !1591
  %195 = zext i32 %194 to i64
  %196 = shl nuw nsw i64 %195, 2, !dbg !1591
  %197 = add i64 %196, 4, !dbg !1591
  %198 = sext i32 %181 to i64
  br label %for.cond51.preheader.i, !dbg !1591

for.cond44.loopexit.i:                            ; preds = %land.end90.i, %for.cond82.loopexit.i
  %bAE.1.lcssa.i = phi i32 [ %bAE.01014.i, %for.cond82.loopexit.i ], [ %land.ext91.i, %land.end90.i ]
  %199 = trunc i64 %indvars.iv.next1089.i to i32, !dbg !1591
  %cmp45.i = icmp sge i32 %199, %183, !dbg !1591
  %tobool47.i = icmp eq i32 %bAE.1.lcssa.i, 0, !dbg !1591
  %or.cond983.i = or i1 %cmp45.i, %tobool47.i, !dbg !1591
  br i1 %or.cond983.i, label %for.end97.i, label %for.cond51.preheader.i, !dbg !1591

for.cond51.preheader.i:                           ; preds = %for.cond44.loopexit.i, %for.cond51.preheader.lr.ph.i
  %indvars.iv1088.i = phi i64 [ %198, %for.cond51.preheader.lr.ph.i ], [ %indvars.iv.next1089.i, %for.cond44.loopexit.i ]
  %bAE.01014.i = phi i32 [ 1, %for.cond51.preheader.lr.ph.i ], [ %bAE.1.lcssa.i, %for.cond44.loopexit.i ]
  br i1 %cmp521002.i, label %for.body53.lr.ph.i, label %for.end58.i, !dbg !1592

for.body53.lr.ph.i:                               ; preds = %for.cond51.preheader.i
  call void @llvm.memset.p0i8.i64(i8* %call43.i, i8 0, i64 %197, i32 4, i1 false) #4, !dbg !1594
  br label %for.end58.i, !dbg !1592

for.end58.i:                                      ; preds = %for.cond51.preheader.i, %for.body53.lr.ph.i
  %200 = load i32** %index60.i, align 8, !dbg !1566, !tbaa !1242
  %arrayidx61.i = getelementptr inbounds i32* %200, i64 %indvars.iv1088.i, !dbg !1566
  %201 = load i32* %arrayidx61.i, align 4, !dbg !1566, !tbaa !1183
  call void @llvm.dbg.value(metadata !{i32 %201}, i64 0, metadata !1595) #4, !dbg !1566
  %indvars.iv.next1089.i = add i64 %indvars.iv1088.i, 1, !dbg !1591
  %arrayidx661004.i = getelementptr inbounds i32* %200, i64 %indvars.iv.next1089.i, !dbg !1566
  %202 = load i32* %arrayidx661004.i, align 4, !dbg !1566, !tbaa !1183
  %cmp671005.i = icmp slt i32 %201, %202, !dbg !1566
  br i1 %cmp671005.i, label %for.body68.lr.ph.i, label %for.cond82.loopexit.i, !dbg !1566

for.body68.lr.ph.i:                               ; preds = %for.end58.i
  %203 = sext i32 %201 to i64
  br label %for.body68.i, !dbg !1566

for.body68.i:                                     ; preds = %if.end75.i, %for.body68.lr.ph.i
  %204 = phi i32* [ %200, %for.body68.lr.ph.i ], [ %207, %if.end75.i ]
  %indvars.iv1081.i = phi i64 [ %203, %for.body68.lr.ph.i ], [ %indvars.iv.next1082.i, %if.end75.i ]
  %205 = load i32** %a70.i, align 8, !dbg !1570, !tbaa !1242
  %arrayidx71.i = getelementptr inbounds i32* %205, i64 %indvars.iv1081.i, !dbg !1570
  %206 = load i32* %arrayidx71.i, align 4, !dbg !1570, !tbaa !1183
  call void @llvm.dbg.value(metadata !{i32 %206}, i64 0, metadata !1596) #4, !dbg !1570
  %cmp72.i = icmp sge i32 %206, %181, !dbg !1597
  %cmp73.i = icmp slt i32 %206, %183, !dbg !1597
  %or.cond984.i = and i1 %cmp72.i, %cmp73.i, !dbg !1597
  br i1 %or.cond984.i, label %if.end75.i, label %if.then74.i, !dbg !1597

if.then74.i:                                      ; preds = %for.body68.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([65 x i8]* @.str60, i64 0, i64 0), i32 %206, i32 %181, i32 %183, i32 %i.01040.i) #5, !dbg !1598
  %.pre1108.i = load i32** %index60.i, align 8, !dbg !1566, !tbaa !1242
  br label %if.end75.i, !dbg !1598

if.end75.i:                                       ; preds = %if.then74.i, %for.body68.i
  %207 = phi i32* [ %204, %for.body68.i ], [ %.pre1108.i, %if.then74.i ], !dbg !1599
  %sub76.i = sub nsw i32 %206, %181, !dbg !1599
  %idxprom77.i = sext i32 %sub76.i to i64, !dbg !1599
  %arrayidx78.i = getelementptr inbounds i32* %193, i64 %idxprom77.i, !dbg !1599
  store i32 1, i32* %arrayidx78.i, align 4, !dbg !1599, !tbaa !1183
  %indvars.iv.next1082.i = add i64 %indvars.iv1081.i, 1, !dbg !1566
  %arrayidx66.i = getelementptr inbounds i32* %207, i64 %indvars.iv.next1089.i, !dbg !1566
  %208 = load i32* %arrayidx66.i, align 4, !dbg !1566, !tbaa !1183
  %209 = trunc i64 %indvars.iv.next1082.i to i32, !dbg !1566
  %cmp67.i = icmp slt i32 %209, %208, !dbg !1566
  br i1 %cmp67.i, label %for.body68.i, label %for.cond82.loopexit.i, !dbg !1566

for.cond82.loopexit.i:                            ; preds = %if.end75.i, %for.end58.i
  br i1 %cmp521002.i, label %for.body84.i, label %for.cond44.loopexit.i, !dbg !1600

for.body84.i:                                     ; preds = %for.cond82.loopexit.i, %land.end90.i
  %indvars.iv1083.i = phi i64 [ %indvars.iv.next1084.i, %land.end90.i ], [ 0, %for.cond82.loopexit.i ]
  %bAE.11010.i = phi i32 [ %land.ext91.i, %land.end90.i ], [ %bAE.01014.i, %for.cond82.loopexit.i ]
  %tobool85.i = icmp eq i32 %bAE.11010.i, 0, !dbg !1602
  br i1 %tobool85.i, label %land.end90.i, label %land.rhs86.i, !dbg !1602

land.rhs86.i:                                     ; preds = %for.body84.i
  %arrayidx88.i = getelementptr inbounds i32* %193, i64 %indvars.iv1083.i, !dbg !1602
  %210 = load i32* %arrayidx88.i, align 4, !dbg !1602, !tbaa !1183
  %tobool89.i = icmp ne i32 %210, 0, !dbg !1602
  br label %land.end90.i

land.end90.i:                                     ; preds = %land.rhs86.i, %for.body84.i
  %211 = phi i1 [ false, %for.body84.i ], [ %tobool89.i, %land.rhs86.i ]
  %land.ext91.i = zext i1 %211 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext91.i}, i64 0, metadata !1588) #4, !dbg !1603
  %indvars.iv.next1084.i = add i64 %indvars.iv1083.i, 1, !dbg !1600
  %lftr.wideiv891 = trunc i64 %indvars.iv.next1084.i to i32, !dbg !1600
  %exitcond892 = icmp eq i32 %lftr.wideiv891, %sub.i, !dbg !1600
  br i1 %exitcond892, label %for.cond44.loopexit.i, label %for.body84.i, !dbg !1600

for.end97.i:                                      ; preds = %for.cond44.loopexit.i
  br i1 %tobool47.i, label %if.else484.i, label %if.then99.i, !dbg !1604

if.then99.i:                                      ; preds = %for.end97.i, %if.then42.i
  %call100.i = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 190, i32 %sub.i, i32 4) #5, !dbg !1605
  %212 = bitcast i8* %call100.i to i32*, !dbg !1605
  call void @llvm.dbg.value(metadata !{i32* %212}, i64 0, metadata !1606) #4, !dbg !1605
  %call101.i = call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 191, i32 %sub.i, i32 4) #5, !dbg !1607
  %213 = bitcast i8* %call101.i to i32*, !dbg !1607
  call void @llvm.dbg.value(metadata !{i32* %213}, i64 0, metadata !1608) #4, !dbg !1607
  call void @llvm.dbg.value(metadata !{i32 %181}, i64 0, metadata !1590) #4, !dbg !1609
  %214 = load i32** %a507.i, align 8, !dbg !1610, !tbaa !1242
  br i1 %cmp451012.i, label %for.body104.lr.ph.i, label %if.then99.for.end293_crit_edge.i, !dbg !1609

if.then99.for.end293_crit_edge.i:                 ; preds = %if.then99.i
  %idxprom294.pre.i = sext i32 %181 to i64, !dbg !1611
  br label %for.end293.i, !dbg !1609

for.body104.lr.ph.i:                              ; preds = %if.then99.i
  %215 = load %struct.t_atom** %atom315.i, align 8, !dbg !1612, !tbaa !1242
  %216 = sext i32 %181 to i64
  br label %for.body104.i, !dbg !1609

for.body104.i:                                    ; preds = %for.inc291.i, %for.body104.lr.ph.i
  %indvars.iv1090.i = phi i64 [ %216, %for.body104.lr.ph.i ], [ %indvars.iv.next1091.i, %for.inc291.i ]
  %arrayidx107.i = getelementptr inbounds i32* %214, i64 %indvars.iv1090.i, !dbg !1610
  %217 = load i32* %arrayidx107.i, align 4, !dbg !1610, !tbaa !1183
  call void @llvm.dbg.value(metadata !{i32 %217}, i64 0, metadata !1613) #4, !dbg !1610
  %idxprom108.i = sext i32 %217 to i64, !dbg !1612
  %q.i = getelementptr inbounds %struct.t_atom* %215, i64 %idxprom108.i, i32 1, !dbg !1612
  %218 = load float* %q.i, align 4, !dbg !1612, !tbaa !1186
  %fabsf968.i = call float @fabsf(float %218) #6, !dbg !1612
  %219 = fpext float %fabsf968.i to double, !dbg !1612
  %cmp112.i = fcmp ogt double %219, 1.200000e-38, !dbg !1612
  br i1 %cmp112.i, label %lor.end.i, label %lor.rhs.i, !dbg !1612

lor.rhs.i:                                        ; preds = %for.body104.i
  %qB.i = getelementptr inbounds %struct.t_atom* %215, i64 %idxprom108.i, i32 3, !dbg !1614
  %220 = load float* %qB.i, align 4, !dbg !1614, !tbaa !1186
  %fabsf969.i = call float @fabsf(float %220) #6, !dbg !1614
  %221 = fpext float %fabsf969.i to double, !dbg !1614
  %cmp120.i = fcmp ogt double %221, 1.200000e-38, !dbg !1614
  br label %lor.end.i, !dbg !1614

lor.end.i:                                        ; preds = %lor.rhs.i, %for.body104.i
  %222 = phi i1 [ true, %for.body104.i ], [ %cmp120.i, %lor.rhs.i ]
  %lor.ext.i = zext i1 %222 to i32, !dbg !1614
  %223 = trunc i64 %indvars.iv1090.i to i32, !dbg !1614
  %sub122.i = sub nsw i32 %223, %181, !dbg !1614
  %idxprom123.i = sext i32 %sub122.i to i64, !dbg !1614
  %arrayidx124.i = getelementptr inbounds i32* %212, i64 %idxprom123.i, !dbg !1614
  store i32 %lor.ext.i, i32* %arrayidx124.i, align 4, !dbg !1614, !tbaa !1183
  %type.i = getelementptr inbounds %struct.t_atom* %215, i64 %idxprom108.i, i32 4, !dbg !1615
  %224 = load i16* %type.i, align 2, !dbg !1615, !tbaa !1616
  %conv129.i = zext i16 %224 to i32, !dbg !1615
  call void @llvm.dbg.value(metadata !{i32 %conv129.i}, i64 0, metadata !1617) #4, !dbg !1615
  %typeB.i = getelementptr inbounds %struct.t_atom* %215, i64 %idxprom108.i, i32 5, !dbg !1618
  %225 = load i16* %typeB.i, align 2, !dbg !1618, !tbaa !1616
  %conv134.i = zext i16 %225 to i32, !dbg !1618
  call void @llvm.dbg.value(metadata !{i32 %conv134.i}, i64 0, metadata !1619) #4, !dbg !1618
  %arrayidx137.i = getelementptr inbounds i32* %213, i64 %idxprom123.i, !dbg !1620
  store i32 0, i32* %arrayidx137.i, align 4, !dbg !1620, !tbaa !1183
  call void @llvm.dbg.value(metadata !246, i64 0, metadata !1595) #4, !dbg !1562
  %226 = load i32* %ntype.i838, align 4, !dbg !1562, !tbaa !1183
  %cmp1391017.i = icmp sgt i32 %226, 0, !dbg !1562
  br i1 %cmp1391017.i, label %for.body141.i, label %for.inc291.i, !dbg !1562

for.body141.i:                                    ; preds = %lor.end.i, %for.inc288.i
  %227 = phi i32 [ %lor.ext224.i, %for.inc288.i ], [ 0, %lor.end.i ]
  %228 = phi i32 [ %252, %for.inc288.i ], [ %226, %lor.end.i ]
  %k.31018.i = phi i32 [ %inc289.i, %for.inc288.i ], [ 0, %lor.end.i ]
  %229 = load i32* %bBHAM351, align 4, !dbg !1621, !tbaa !1183
  %tobool142.i = icmp eq i32 %229, 0, !dbg !1621
  %tobool147.i = icmp ne i32 %227, 0, !dbg !1623
  br i1 %tobool142.i, label %if.else.i841, label %if.then143.i, !dbg !1621

if.then143.i:                                     ; preds = %for.body141.i
  br i1 %tobool147.i, label %for.inc288.i, label %lor.lhs.false148.i, !dbg !1623

lor.lhs.false148.i:                               ; preds = %if.then143.i
  %mul150.i = mul nsw i32 %228, %conv129.i, !dbg !1624
  %add151.i = add nsw i32 %mul150.i, %k.31018.i, !dbg !1624
  %mul152.i = mul nsw i32 %add151.i, 3, !dbg !1624
  %add153.i = add nsw i32 %mul152.i, 1, !dbg !1624
  %idxprom154.i = sext i32 %add153.i to i64, !dbg !1624
  %230 = load float** %nbfp, align 8, !dbg !1624, !tbaa !1242
  %arrayidx155.i = getelementptr inbounds float* %230, i64 %idxprom154.i, !dbg !1624
  %231 = load float* %arrayidx155.i, align 4, !dbg !1624, !tbaa !1186
  %fabsf976.i = call float @fabsf(float %231) #6, !dbg !1624
  %232 = fpext float %fabsf976.i to double, !dbg !1624
  %cmp158.i = fcmp ogt double %232, 1.200000e-38, !dbg !1624
  br i1 %cmp158.i, label %for.inc288.i, label %lor.lhs.false160.i, !dbg !1624

lor.lhs.false160.i:                               ; preds = %lor.lhs.false148.i
  %add165.i = add nsw i32 %mul152.i, 2, !dbg !1625
  %idxprom166.i = sext i32 %add165.i to i64, !dbg !1625
  %arrayidx168.i = getelementptr inbounds float* %230, i64 %idxprom166.i, !dbg !1625
  %233 = load float* %arrayidx168.i, align 4, !dbg !1625, !tbaa !1186
  %fabsf977.i = call float @fabsf(float %233) #6, !dbg !1625
  %234 = fpext float %fabsf977.i to double, !dbg !1625
  %cmp171.i = fcmp ogt double %234, 1.200000e-38, !dbg !1625
  br i1 %cmp171.i, label %for.inc288.i, label %lor.lhs.false173.i, !dbg !1625

lor.lhs.false173.i:                               ; preds = %lor.lhs.false160.i
  %idxprom178.i = sext i32 %mul152.i to i64, !dbg !1626
  %arrayidx180.i = getelementptr inbounds float* %230, i64 %idxprom178.i, !dbg !1626
  %235 = load float* %arrayidx180.i, align 4, !dbg !1626, !tbaa !1186
  %fabsf978.i = call float @fabsf(float %235) #6, !dbg !1626
  %236 = fpext float %fabsf978.i to double, !dbg !1626
  %cmp183.i = fcmp ogt double %236, 1.200000e-38, !dbg !1626
  br i1 %cmp183.i, label %for.inc288.i, label %lor.lhs.false185.i, !dbg !1626

lor.lhs.false185.i:                               ; preds = %lor.lhs.false173.i
  %mul187.i = mul nsw i32 %228, %conv134.i, !dbg !1627
  %add188.i = add nsw i32 %mul187.i, %k.31018.i, !dbg !1627
  %mul189.i = mul nsw i32 %add188.i, 3, !dbg !1627
  %add190.i = add nsw i32 %mul189.i, 1, !dbg !1627
  %idxprom191.i = sext i32 %add190.i to i64, !dbg !1627
  %arrayidx193.i = getelementptr inbounds float* %230, i64 %idxprom191.i, !dbg !1627
  %237 = load float* %arrayidx193.i, align 4, !dbg !1627, !tbaa !1186
  %fabsf979.i = call float @fabsf(float %237) #6, !dbg !1627
  %238 = fpext float %fabsf979.i to double, !dbg !1627
  %cmp196.i = fcmp ogt double %238, 1.200000e-38, !dbg !1627
  br i1 %cmp196.i, label %for.inc288.i, label %lor.lhs.false198.i, !dbg !1627

lor.lhs.false198.i:                               ; preds = %lor.lhs.false185.i
  %add203.i = add nsw i32 %mul189.i, 2, !dbg !1628
  %idxprom204.i = sext i32 %add203.i to i64, !dbg !1628
  %arrayidx206.i = getelementptr inbounds float* %230, i64 %idxprom204.i, !dbg !1628
  %239 = load float* %arrayidx206.i, align 4, !dbg !1628, !tbaa !1186
  %fabsf980.i = call float @fabsf(float %239) #6, !dbg !1628
  %240 = fpext float %fabsf980.i to double, !dbg !1628
  %cmp209.i = fcmp ogt double %240, 1.200000e-38, !dbg !1628
  br i1 %cmp209.i, label %for.inc288.i, label %lor.rhs211.i, !dbg !1628

lor.rhs211.i:                                     ; preds = %lor.lhs.false198.i
  %idxprom216.i = sext i32 %mul189.i to i64, !dbg !1629
  %arrayidx218.i = getelementptr inbounds float* %230, i64 %idxprom216.i, !dbg !1629
  %241 = load float* %arrayidx218.i, align 4, !dbg !1629, !tbaa !1186
  %fabsf981.i = call float @fabsf(float %241) #6, !dbg !1629
  %242 = fpext float %fabsf981.i to double, !dbg !1629
  %cmp221.i = fcmp ogt double %242, 1.200000e-38, !dbg !1629
  br label %for.inc288.i, !dbg !1629

if.else.i841:                                     ; preds = %for.body141.i
  br i1 %tobool147.i, label %for.inc288.i, label %lor.lhs.false232.i, !dbg !1630

lor.lhs.false232.i:                               ; preds = %if.else.i841
  %mul234.i = mul nsw i32 %228, %conv129.i, !dbg !1631
  %add235.i = add nsw i32 %mul234.i, %k.31018.i, !dbg !1631
  %mul236.i = shl nsw i32 %add235.i, 1, !dbg !1631
  %idxprom237.i = sext i32 %mul236.i to i64, !dbg !1631
  %243 = load float** %nbfp, align 8, !dbg !1631, !tbaa !1242
  %arrayidx239.i = getelementptr inbounds float* %243, i64 %idxprom237.i, !dbg !1631
  %244 = load float* %arrayidx239.i, align 4, !dbg !1631, !tbaa !1186
  %fabsf970.i = call float @fabsf(float %244) #6, !dbg !1631
  %245 = fpext float %fabsf970.i to double, !dbg !1631
  %cmp242.i = fcmp ogt double %245, 1.200000e-38, !dbg !1631
  br i1 %cmp242.i, label %for.inc288.i, label %lor.lhs.false244.i, !dbg !1631

lor.lhs.false244.i:                               ; preds = %lor.lhs.false232.i
  %add249971.i = or i32 %mul236.i, 1, !dbg !1632
  %idxprom250.i = sext i32 %add249971.i to i64, !dbg !1632
  %arrayidx252.i = getelementptr inbounds float* %243, i64 %idxprom250.i, !dbg !1632
  %246 = load float* %arrayidx252.i, align 4, !dbg !1632, !tbaa !1186
  %fabsf972.i = call float @fabsf(float %246) #6, !dbg !1632
  %247 = fpext float %fabsf972.i to double, !dbg !1632
  %cmp255.i = fcmp ogt double %247, 1.200000e-38, !dbg !1632
  br i1 %cmp255.i, label %for.inc288.i, label %lor.lhs.false257.i, !dbg !1632

lor.lhs.false257.i:                               ; preds = %lor.lhs.false244.i
  %mul259.i = mul nsw i32 %228, %conv134.i, !dbg !1633
  %add260.i = add nsw i32 %mul259.i, %k.31018.i, !dbg !1633
  %mul261.i = shl nsw i32 %add260.i, 1, !dbg !1633
  %idxprom262.i = sext i32 %mul261.i to i64, !dbg !1633
  %arrayidx264.i = getelementptr inbounds float* %243, i64 %idxprom262.i, !dbg !1633
  %248 = load float* %arrayidx264.i, align 4, !dbg !1633, !tbaa !1186
  %fabsf973.i = call float @fabsf(float %248) #6, !dbg !1633
  %249 = fpext float %fabsf973.i to double, !dbg !1633
  %cmp267.i = fcmp ogt double %249, 1.200000e-38, !dbg !1633
  br i1 %cmp267.i, label %for.inc288.i, label %lor.rhs269.i, !dbg !1633

lor.rhs269.i:                                     ; preds = %lor.lhs.false257.i
  %add274974.i = or i32 %mul261.i, 1, !dbg !1634
  %idxprom275.i = sext i32 %add274974.i to i64, !dbg !1634
  %arrayidx277.i = getelementptr inbounds float* %243, i64 %idxprom275.i, !dbg !1634
  %250 = load float* %arrayidx277.i, align 4, !dbg !1634, !tbaa !1186
  %fabsf975.i = call float @fabsf(float %250) #6, !dbg !1634
  %251 = fpext float %fabsf975.i to double, !dbg !1634
  %cmp280.i = fcmp ogt double %251, 1.200000e-38, !dbg !1634
  br label %for.inc288.i, !dbg !1634

for.inc288.i:                                     ; preds = %lor.rhs269.i, %lor.lhs.false257.i, %lor.lhs.false244.i, %lor.lhs.false232.i, %if.else.i841, %lor.rhs211.i, %lor.lhs.false198.i, %lor.lhs.false185.i, %lor.lhs.false173.i, %lor.lhs.false160.i, %lor.lhs.false148.i, %if.then143.i
  %.sink.i = phi i1 [ true, %lor.lhs.false257.i ], [ true, %lor.lhs.false244.i ], [ true, %lor.lhs.false232.i ], [ true, %if.else.i841 ], [ %cmp280.i, %lor.rhs269.i ], [ true, %lor.lhs.false198.i ], [ true, %lor.lhs.false185.i ], [ true, %lor.lhs.false173.i ], [ true, %lor.lhs.false160.i ], [ true, %lor.lhs.false148.i ], [ true, %if.then143.i ], [ %cmp221.i, %lor.rhs211.i ]
  %lor.ext224.i = zext i1 %.sink.i to i32, !dbg !1629
  store i32 %lor.ext224.i, i32* %arrayidx137.i, align 4, !dbg !1629, !tbaa !1183
  %inc289.i = add nsw i32 %k.31018.i, 1, !dbg !1562
  call void @llvm.dbg.value(metadata !{i32 %inc289.i}, i64 0, metadata !1595) #4, !dbg !1562
  %252 = load i32* %ntype.i838, align 4, !dbg !1562, !tbaa !1183
  %cmp139.i = icmp slt i32 %inc289.i, %252, !dbg !1562
  br i1 %cmp139.i, label %for.body141.i, label %for.inc291.i, !dbg !1562

for.inc291.i:                                     ; preds = %for.inc288.i, %lor.end.i
  %indvars.iv.next1091.i = add i64 %indvars.iv1090.i, 1, !dbg !1609
  %253 = trunc i64 %indvars.iv.next1091.i to i32, !dbg !1609
  %cmp103.i = icmp slt i32 %253, %183, !dbg !1609
  br i1 %cmp103.i, label %for.body104.i, label %for.end293.i, !dbg !1609

for.end293.i:                                     ; preds = %for.inc291.i, %if.then99.for.end293_crit_edge.i
  %idxprom294.pre-phi.i = phi i64 [ %idxprom294.pre.i, %if.then99.for.end293_crit_edge.i ], [ %216, %for.inc291.i ], !dbg !1611
  %arrayidx296.i = getelementptr inbounds i32* %214, i64 %idxprom294.pre-phi.i, !dbg !1611
  %254 = load i32* %arrayidx296.i, align 4, !dbg !1611, !tbaa !1183
  call void @llvm.dbg.value(metadata !{i32 %254}, i64 0, metadata !1613) #4, !dbg !1611
  %cmp297.i = icmp eq i32 %sub.i, 3, !dbg !1635
  br i1 %cmp297.i, label %land.lhs.true299.i, label %for.cond336.preheader.i, !dbg !1635

for.cond336.preheader.i:                          ; preds = %land.lhs.true311.i, %land.lhs.true308.i, %land.lhs.true305.i, %land.lhs.true302.i, %for.end293.i
  %cmp3371021.i = icmp sgt i32 %sub.i, 0, !dbg !1636
  br i1 %cmp3371021.i, label %land.rhs339.i, label %for.cond355.loopexit.i, !dbg !1636

land.lhs.true299.i:                               ; preds = %for.end293.i
  %255 = load i32* %212, align 4, !dbg !1635, !tbaa !1183
  %tobool301.i = icmp eq i32 %255, 0, !dbg !1635
  br i1 %tobool301.i, label %land.rhs339.i, label %land.lhs.true302.i, !dbg !1635

land.lhs.true302.i:                               ; preds = %land.lhs.true299.i
  %256 = load i32* %213, align 4, !dbg !1635, !tbaa !1183
  %tobool304.i = icmp eq i32 %256, 0, !dbg !1635
  br i1 %tobool304.i, label %for.cond336.preheader.i, label %land.lhs.true305.i, !dbg !1635

land.lhs.true305.i:                               ; preds = %land.lhs.true302.i
  %arrayidx306.i = getelementptr inbounds i8* %call101.i, i64 4, !dbg !1635
  %257 = bitcast i8* %arrayidx306.i to i32*, !dbg !1635
  %258 = load i32* %257, align 4, !dbg !1635, !tbaa !1183
  %tobool307.i = icmp eq i32 %258, 0, !dbg !1635
  br i1 %tobool307.i, label %land.lhs.true308.i, label %for.cond336.preheader.i, !dbg !1635

land.lhs.true308.i:                               ; preds = %land.lhs.true305.i
  %arrayidx309.i = getelementptr inbounds i8* %call101.i, i64 8, !dbg !1635
  %259 = bitcast i8* %arrayidx309.i to i32*, !dbg !1635
  %260 = load i32* %259, align 4, !dbg !1635, !tbaa !1183
  %tobool310.i = icmp eq i32 %260, 0, !dbg !1635
  br i1 %tobool310.i, label %land.lhs.true311.i, label %for.cond336.preheader.i, !dbg !1635

land.lhs.true311.i:                               ; preds = %land.lhs.true308.i
  %add312.i = add nsw i32 %254, 1, !dbg !1553
  %idxprom313.i = sext i32 %add312.i to i64, !dbg !1553
  %261 = load %struct.t_atom** %atom315.i, align 8, !dbg !1553, !tbaa !1242
  %q317.i = getelementptr inbounds %struct.t_atom* %261, i64 %idxprom313.i, i32 1, !dbg !1553
  %262 = load float* %q317.i, align 4, !dbg !1553, !tbaa !1186
  %add318.i = add nsw i32 %254, 2, !dbg !1553
  %idxprom319.i = sext i32 %add318.i to i64, !dbg !1553
  %q323.i = getelementptr inbounds %struct.t_atom* %261, i64 %idxprom319.i, i32 1, !dbg !1553
  %263 = load float* %q323.i, align 4, !dbg !1553, !tbaa !1186
  %sub324.i = fsub float %262, %263, !dbg !1553
  %fabsf.i = call float @fabsf(float %sub324.i) #6, !dbg !1553
  %264 = fpext float %fabsf.i to double, !dbg !1553
  %cmp327.i = fcmp olt double %264, 1.200000e-38, !dbg !1553
  br i1 %cmp327.i, label %if.then329.i, label %for.cond336.preheader.i, !dbg !1553

if.then329.i:                                     ; preds = %land.lhs.true311.i
  %idxprom330.i = sext i32 %254 to i64, !dbg !1638
  %arrayidx331.i = getelementptr inbounds i32* %call8.i, i64 %idxprom330.i, !dbg !1638
  %265 = load i32* %arrayidx331.i, align 4, !dbg !1638, !tbaa !1183
  %idxprom332.i = sext i32 %265 to i64, !dbg !1638
  %266 = load i32** %solvent_type.i, align 8, !dbg !1638, !tbaa !1242
  %arrayidx334.i = getelementptr inbounds i32* %266, i64 %idxprom332.i, !dbg !1638
  store i32 2, i32* %arrayidx334.i, align 4, !dbg !1638, !tbaa !1183
  br label %if.end460.i, !dbg !1638

for.cond336.i:                                    ; preds = %land.rhs343.i
  %267 = trunc i64 %indvars.iv.next1094.i to i32, !dbg !1636
  %cmp337.i = icmp slt i32 %267, %sub.i, !dbg !1636
  br i1 %cmp337.i, label %land.rhs339.i, label %for.cond355.loopexit.i, !dbg !1636

land.rhs339.i:                                    ; preds = %for.cond336.i, %land.lhs.true299.i, %for.cond336.preheader.i
  %indvars.iv1093.i = phi i64 [ 0, %for.cond336.preheader.i ], [ 0, %land.lhs.true299.i ], [ %indvars.iv.next1094.i, %for.cond336.i ]
  %k.41022.i = phi i32 [ 0, %for.cond336.preheader.i ], [ 0, %land.lhs.true299.i ], [ %inc353.i, %for.cond336.i ]
  %arrayidx341.i = getelementptr inbounds i32* %213, i64 %indvars.iv1093.i, !dbg !1636
  %268 = load i32* %arrayidx341.i, align 4, !dbg !1636, !tbaa !1183
  %tobool342.i = icmp eq i32 %268, 0, !dbg !1636
  br i1 %tobool342.i, label %for.cond355.loopexit.i, label %land.rhs343.i, !dbg !1636

land.rhs343.i:                                    ; preds = %land.rhs339.i
  %arrayidx345.i = getelementptr inbounds i32* %212, i64 %indvars.iv1093.i, !dbg !1636
  %269 = load i32* %arrayidx345.i, align 4, !dbg !1636, !tbaa !1183
  %tobool346.i = icmp eq i32 %269, 0, !dbg !1636
  %indvars.iv.next1094.i = add i64 %indvars.iv1093.i, 1, !dbg !1636
  %inc353.i = add nsw i32 %k.41022.i, 1, !dbg !1636
  call void @llvm.dbg.value(metadata !{i32 %inc353.i}, i64 0, metadata !1595) #4, !dbg !1636
  br i1 %tobool346.i, label %for.cond355.loopexit.i, label %for.cond336.i

for.cond355.loopexit.i:                           ; preds = %land.rhs343.i, %land.rhs339.i, %for.cond336.i, %for.cond336.preheader.i
  %k.4.lcssa.i = phi i32 [ 0, %for.cond336.preheader.i ], [ %k.41022.i, %land.rhs343.i ], [ %k.41022.i, %land.rhs339.i ], [ %inc353.i, %for.cond336.i ]
  %cmp3561024.i = icmp slt i32 %k.4.lcssa.i, %sub.i, !dbg !1639
  br i1 %cmp3561024.i, label %land.rhs358.lr.ph.i, label %for.cond374.loopexit.i, !dbg !1639

land.rhs358.lr.ph.i:                              ; preds = %for.cond355.loopexit.i
  %270 = sext i32 %k.4.lcssa.i to i64
  br label %land.rhs358.i, !dbg !1639

for.cond355.i:                                    ; preds = %land.rhs362.i
  %271 = trunc i64 %indvars.iv.next1097.i to i32, !dbg !1639
  %cmp356.i = icmp slt i32 %271, %sub.i, !dbg !1639
  br i1 %cmp356.i, label %land.rhs358.i, label %for.cond374.loopexit.i, !dbg !1639

land.rhs358.i:                                    ; preds = %for.cond355.i, %land.rhs358.lr.ph.i
  %indvars.iv1096.i = phi i64 [ %270, %land.rhs358.lr.ph.i ], [ %indvars.iv.next1097.i, %for.cond355.i ]
  %k.51025.i = phi i32 [ %k.4.lcssa.i, %land.rhs358.lr.ph.i ], [ %inc372.i, %for.cond355.i ]
  %arrayidx360.i = getelementptr inbounds i32* %213, i64 %indvars.iv1096.i, !dbg !1639
  %272 = load i32* %arrayidx360.i, align 4, !dbg !1639, !tbaa !1183
  %tobool361.i = icmp eq i32 %272, 0, !dbg !1639
  br i1 %tobool361.i, label %land.rhs362.i, label %for.cond374.loopexit.i, !dbg !1639

land.rhs362.i:                                    ; preds = %land.rhs358.i
  %arrayidx364.i = getelementptr inbounds i32* %212, i64 %indvars.iv1096.i, !dbg !1639
  %273 = load i32* %arrayidx364.i, align 4, !dbg !1639, !tbaa !1183
  %tobool365.i = icmp eq i32 %273, 0, !dbg !1639
  %indvars.iv.next1097.i = add i64 %indvars.iv1096.i, 1, !dbg !1639
  %inc372.i = add nsw i32 %k.51025.i, 1, !dbg !1639
  call void @llvm.dbg.value(metadata !{i32 %inc372.i}, i64 0, metadata !1595) #4, !dbg !1639
  br i1 %tobool365.i, label %for.cond374.loopexit.i, label %for.cond355.i

for.cond374.loopexit.i:                           ; preds = %land.rhs362.i, %land.rhs358.i, %for.cond355.i, %for.cond355.loopexit.i
  %k.5.lcssa.i = phi i32 [ %k.4.lcssa.i, %for.cond355.loopexit.i ], [ %k.51025.i, %land.rhs362.i ], [ %k.51025.i, %land.rhs358.i ], [ %inc372.i, %for.cond355.i ]
  %cmp3751027.i = icmp slt i32 %k.5.lcssa.i, %sub.i, !dbg !1641
  br i1 %cmp3751027.i, label %land.rhs377.lr.ph.i, label %for.cond393.loopexit.i, !dbg !1641

land.rhs377.lr.ph.i:                              ; preds = %for.cond374.loopexit.i
  %274 = sext i32 %k.5.lcssa.i to i64
  br label %land.rhs377.i, !dbg !1641

for.cond374.i:                                    ; preds = %land.rhs381.i
  %275 = trunc i64 %indvars.iv.next1100.i to i32, !dbg !1641
  %cmp375.i = icmp slt i32 %275, %sub.i, !dbg !1641
  br i1 %cmp375.i, label %land.rhs377.i, label %for.cond393.loopexit.i, !dbg !1641

land.rhs377.i:                                    ; preds = %for.cond374.i, %land.rhs377.lr.ph.i
  %indvars.iv1099.i = phi i64 [ %274, %land.rhs377.lr.ph.i ], [ %indvars.iv.next1100.i, %for.cond374.i ]
  %k.61028.i = phi i32 [ %k.5.lcssa.i, %land.rhs377.lr.ph.i ], [ %inc391.i, %for.cond374.i ]
  %arrayidx379.i = getelementptr inbounds i32* %213, i64 %indvars.iv1099.i, !dbg !1641
  %276 = load i32* %arrayidx379.i, align 4, !dbg !1641, !tbaa !1183
  %tobool380.i = icmp eq i32 %276, 0, !dbg !1641
  br i1 %tobool380.i, label %for.cond393.loopexit.i, label %land.rhs381.i, !dbg !1641

land.rhs381.i:                                    ; preds = %land.rhs377.i
  %arrayidx383.i = getelementptr inbounds i32* %212, i64 %indvars.iv1099.i, !dbg !1641
  %277 = load i32* %arrayidx383.i, align 4, !dbg !1641, !tbaa !1183
  %lnot.i = icmp eq i32 %277, 0, !dbg !1641
  %indvars.iv.next1100.i = add i64 %indvars.iv1099.i, 1, !dbg !1641
  %inc391.i = add nsw i32 %k.61028.i, 1, !dbg !1641
  call void @llvm.dbg.value(metadata !{i32 %inc391.i}, i64 0, metadata !1595) #4, !dbg !1641
  br i1 %lnot.i, label %for.cond374.i, label %for.cond393.loopexit.i

for.cond393.loopexit.i:                           ; preds = %land.rhs381.i, %land.rhs377.i, %for.cond374.i, %for.cond374.loopexit.i
  %k.6.lcssa.i = phi i32 [ %k.5.lcssa.i, %for.cond374.loopexit.i ], [ %k.61028.i, %land.rhs381.i ], [ %k.61028.i, %land.rhs377.i ], [ %inc391.i, %for.cond374.i ]
  %cmp3941030.i = icmp slt i32 %k.6.lcssa.i, %sub.i, !dbg !1643
  br i1 %cmp3941030.i, label %for.body396.lr.ph.i, label %if.end434.i, !dbg !1643

for.body396.lr.ph.i:                              ; preds = %for.cond393.loopexit.i
  %278 = sext i32 %k.6.lcssa.i to i64
  br label %for.body396.i, !dbg !1643

for.body396.i:                                    ; preds = %lor.end408.i, %for.body396.lr.ph.i
  %indvars.iv1102.i = phi i64 [ %278, %for.body396.lr.ph.i ], [ %indvars.iv.next1103.i, %lor.end408.i ]
  %bOrder.01032.i = phi i1 [ false, %for.body396.lr.ph.i ], [ %281, %lor.end408.i ]
  br i1 %bOrder.01032.i, label %lor.end408.i, label %lor.rhs398.i, !dbg !1645

lor.rhs398.i:                                     ; preds = %for.body396.i
  %arrayidx400.i = getelementptr inbounds i32* %213, i64 %indvars.iv1102.i, !dbg !1645
  %279 = load i32* %arrayidx400.i, align 4, !dbg !1645, !tbaa !1183
  %tobool401.i = icmp eq i32 %279, 0, !dbg !1645
  br i1 %tobool401.i, label %lor.rhs402.i, label %lor.end408.i, !dbg !1645

lor.rhs402.i:                                     ; preds = %lor.rhs398.i
  %arrayidx404.i = getelementptr inbounds i32* %212, i64 %indvars.iv1102.i, !dbg !1645
  %280 = load i32* %arrayidx404.i, align 4, !dbg !1645, !tbaa !1183
  %tobool405.i = icmp ne i32 %280, 0, !dbg !1645
  br label %lor.end408.i, !dbg !1645

lor.end408.i:                                     ; preds = %lor.rhs402.i, %lor.rhs398.i, %for.body396.i
  %281 = phi i1 [ true, %for.body396.i ], [ true, %lor.rhs398.i ], [ %tobool405.i, %lor.rhs402.i ]
  %indvars.iv.next1103.i = add i64 %indvars.iv1102.i, 1, !dbg !1643
  %282 = trunc i64 %indvars.iv.next1103.i to i32, !dbg !1643
  %cmp394.i = icmp slt i32 %282, %sub.i, !dbg !1643
  br i1 %cmp394.i, label %for.body396.i, label %for.end412.i, !dbg !1643

for.end412.i:                                     ; preds = %lor.end408.i
  br i1 %281, label %if.then414.i, label %if.end434.i, !dbg !1646

if.then414.i:                                     ; preds = %for.end412.i
  %cmp415.i = icmp eq i32 %k.4.lcssa.i, %sub.i, !dbg !1647
  br i1 %cmp415.i, label %if.end434.i, label %if.then417.i, !dbg !1647

if.then417.i:                                     ; preds = %if.then414.i
  %inc418.i = add nsw i32 %warncount.0.ph1045.i, 1, !dbg !1648
  call void @llvm.dbg.value(metadata !{i32 %inc418.i}, i64 0, metadata !1541) #4, !dbg !1648
  %cmp419.not.i = icmp sgt i32 %warncount.0.ph1045.i, 9, !dbg !1558
  %brmerge.i = or i1 %cmp419.not.i, %tobool.not.i, !dbg !1558
  br i1 %brmerge.i, label %if.end425.i, label %if.then423.i, !dbg !1558

if.then423.i:                                     ; preds = %if.then417.i
  %call424.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([68 x i8]* @.str63, i64 0, i64 0), i32 %i.01040.i) #5, !dbg !1649
  br label %if.end425.i, !dbg !1649

if.end425.i:                                      ; preds = %if.then423.i, %if.then417.i
  %cmp426.not.i = icmp ne i32 %inc418.i, 10, !dbg !1650
  %brmerge986.i = or i1 %cmp426.not.i, %tobool.not.i, !dbg !1650
  br i1 %brmerge986.i, label %if.end434.i, label %if.then430.i, !dbg !1650

if.then430.i:                                     ; preds = %if.end425.i
  %283 = call i64 @fwrite(i8* getelementptr inbounds ([59 x i8]* @.str64, i64 0, i64 0), i64 58, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1651
  br label %if.end434.i, !dbg !1651

if.end434.i:                                      ; preds = %if.then430.i, %if.end425.i, %if.then414.i, %for.end412.i, %for.cond393.loopexit.i
  %nl_m.0.i = phi i32 [ %k.6.lcssa.i, %for.end412.i ], [ %sub.i, %if.end425.i ], [ %sub.i, %if.then414.i ], [ %sub.i, %if.then430.i ], [ %k.6.lcssa.i, %for.cond393.loopexit.i ]
  %nl_n.0.i = phi i32 [ %k.4.lcssa.i, %for.end412.i ], [ %sub.i, %if.end425.i ], [ %sub.i, %if.then414.i ], [ %sub.i, %if.then430.i ], [ %k.4.lcssa.i, %for.cond393.loopexit.i ]
  %nl_o.0.i = phi i32 [ %k.5.lcssa.i, %for.end412.i ], [ %sub.i, %if.end425.i ], [ %sub.i, %if.then414.i ], [ %sub.i, %if.then430.i ], [ %k.5.lcssa.i, %for.cond393.loopexit.i ]
  %warncount.2.i = phi i32 [ %warncount.0.ph1045.i, %for.end412.i ], [ %inc418.i, %if.end425.i ], [ %warncount.0.ph1045.i, %if.then414.i ], [ 10, %if.then430.i ], [ %warncount.0.ph1045.i, %for.cond393.loopexit.i ]
  %idxprom435.i = sext i32 %254 to i64, !dbg !1652
  %arrayidx436.i = getelementptr inbounds i32* %call8.i, i64 %idxprom435.i, !dbg !1652
  %284 = load i32* %arrayidx436.i, align 4, !dbg !1652, !tbaa !1183
  %mul437.i = mul nsw i32 %284, 3, !dbg !1652
  %idxprom438.i = sext i32 %mul437.i to i64, !dbg !1652
  %285 = load i32** %mno_index, align 8, !dbg !1652, !tbaa !1242
  %arrayidx440.i = getelementptr inbounds i32* %285, i64 %idxprom438.i, !dbg !1652
  store i32 %nl_m.0.i, i32* %arrayidx440.i, align 4, !dbg !1652, !tbaa !1183
  %286 = load i32* %arrayidx436.i, align 4, !dbg !1653, !tbaa !1183
  %mul443.i = mul nsw i32 %286, 3, !dbg !1653
  %add444.i = add nsw i32 %mul443.i, 1, !dbg !1653
  %idxprom445.i = sext i32 %add444.i to i64, !dbg !1653
  %arrayidx447.i = getelementptr inbounds i32* %285, i64 %idxprom445.i, !dbg !1653
  store i32 %nl_n.0.i, i32* %arrayidx447.i, align 4, !dbg !1653, !tbaa !1183
  %287 = load i32* %arrayidx436.i, align 4, !dbg !1654, !tbaa !1183
  %mul450.i = mul nsw i32 %287, 3, !dbg !1654
  %add451.i = add nsw i32 %mul450.i, 2, !dbg !1654
  %idxprom452.i = sext i32 %add451.i to i64, !dbg !1654
  %arrayidx454.i = getelementptr inbounds i32* %285, i64 %idxprom452.i, !dbg !1654
  store i32 %nl_o.0.i, i32* %arrayidx454.i, align 4, !dbg !1654, !tbaa !1183
  %288 = load i32* %arrayidx436.i, align 4, !dbg !1655, !tbaa !1183
  %idxprom457.i = sext i32 %288 to i64, !dbg !1655
  %289 = load i32** %solvent_type.i, align 8, !dbg !1655, !tbaa !1242
  %arrayidx459.i = getelementptr inbounds i32* %289, i64 %idxprom457.i, !dbg !1655
  store i32 1, i32* %arrayidx459.i, align 4, !dbg !1655, !tbaa !1183
  br label %if.end460.i

if.end460.i:                                      ; preds = %if.end434.i, %if.then329.i
  %290 = phi i32* [ %289, %if.end434.i ], [ %266, %if.then329.i ]
  %warncount.3.i = phi i32 [ %warncount.2.i, %if.end434.i ], [ %warncount.0.ph1045.i, %if.then329.i ]
  call void @llvm.dbg.value(metadata !{i32 %181}, i64 0, metadata !1590) #4, !dbg !1656
  br i1 %cmp451012.i, label %for.body464.lr.ph.i, label %for.end483.i, !dbg !1656

for.body464.lr.ph.i:                              ; preds = %if.end460.i
  %291 = load i32** %a507.i, align 8, !dbg !1556, !tbaa !1242
  %292 = load i32** %bPerturbed.i, align 8, !dbg !1556, !tbaa !1242
  %arrayidx474.i = getelementptr inbounds i32* %291, i64 %idxprom294.pre-phi.i, !dbg !1657
  br label %for.body464.i, !dbg !1656

for.body464.i:                                    ; preds = %for.inc481.i, %for.body464.lr.ph.i
  %indvars.iv1104.i = phi i64 [ %idxprom294.pre-phi.i, %for.body464.lr.ph.i ], [ %indvars.iv.next1105.i, %for.inc481.i ]
  %arrayidx467.i = getelementptr inbounds i32* %291, i64 %indvars.iv1104.i, !dbg !1556
  %293 = load i32* %arrayidx467.i, align 4, !dbg !1556, !tbaa !1183
  %idxprom468.i = sext i32 %293 to i64, !dbg !1556
  %arrayidx469.i = getelementptr inbounds i32* %292, i64 %idxprom468.i, !dbg !1556
  %294 = load i32* %arrayidx469.i, align 4, !dbg !1556, !tbaa !1183
  %tobool470.i = icmp eq i32 %294, 0, !dbg !1556
  br i1 %tobool470.i, label %for.inc481.i, label %if.then471.i, !dbg !1556

if.then471.i:                                     ; preds = %for.body464.i
  %295 = load i32* %arrayidx474.i, align 4, !dbg !1657, !tbaa !1183
  %idxprom475.i = sext i32 %295 to i64, !dbg !1657
  %arrayidx476.i = getelementptr inbounds i32* %call8.i, i64 %idxprom475.i, !dbg !1657
  %296 = load i32* %arrayidx476.i, align 4, !dbg !1657, !tbaa !1183
  %idxprom477.i = sext i32 %296 to i64, !dbg !1657
  %arrayidx479.i = getelementptr inbounds i32* %290, i64 %idxprom477.i, !dbg !1657
  store i32 0, i32* %arrayidx479.i, align 4, !dbg !1657, !tbaa !1183
  br label %for.inc481.i, !dbg !1657

for.inc481.i:                                     ; preds = %if.then471.i, %for.body464.i
  %indvars.iv.next1105.i = add i64 %indvars.iv1104.i, 1, !dbg !1656
  %297 = trunc i64 %indvars.iv.next1105.i to i32, !dbg !1656
  %cmp462.i = icmp slt i32 %297, %183, !dbg !1656
  br i1 %cmp462.i, label %for.body464.i, label %for.end483.i, !dbg !1656

for.end483.i:                                     ; preds = %for.inc481.i, %if.end460.i
  call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 281, i8* %call101.i) #5, !dbg !1658
  call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 282, i8* %call100.i) #5, !dbg !1659
  br label %if.end493.i, !dbg !1660

if.else484.i:                                     ; preds = %for.end97.i
  %298 = load i32** %a507.i, align 8, !dbg !1661, !tbaa !1242
  %arrayidx487.i = getelementptr inbounds i32* %298, i64 %198, !dbg !1661
  %299 = load i32* %arrayidx487.i, align 4, !dbg !1661, !tbaa !1183
  %idxprom488.i = sext i32 %299 to i64, !dbg !1661
  %arrayidx489.i = getelementptr inbounds i32* %call8.i, i64 %idxprom488.i, !dbg !1661
  %300 = load i32* %arrayidx489.i, align 4, !dbg !1661, !tbaa !1183
  %idxprom490.i = sext i32 %300 to i64, !dbg !1661
  %301 = load i32** %solvent_type.i, align 8, !dbg !1661, !tbaa !1242
  %arrayidx492.i = getelementptr inbounds i32* %301, i64 %idxprom490.i, !dbg !1661
  store i32 0, i32* %arrayidx492.i, align 4, !dbg !1661, !tbaa !1183
  br label %if.end493.i

if.end493.i:                                      ; preds = %if.else484.i, %for.end483.i
  %warncount.4.i = phi i32 [ %warncount.3.i, %for.end483.i ], [ %warncount.0.ph1045.i, %if.else484.i ]
  call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 290, i8* %call43.i) #5, !dbg !1663
  %302 = load i32* %nr11.i, align 4, !dbg !1545, !tbaa !1183
  %cmp1039.i = icmp slt i32 %add18.i839, %302, !dbg !1545
  br i1 %cmp1039.i, label %for.body.lr.ph.i, label %for.end520.i, !dbg !1545

for.body.lr.ph.i:                                 ; preds = %if.end493.i, %for.body.lr.ph.lr.ph.i
  %303 = phi i32 [ %177, %for.body.lr.ph.lr.ph.i ], [ %302, %if.end493.i ]
  %i.0.ph1046.i = phi i32 [ 0, %for.body.lr.ph.lr.ph.i ], [ %add18.i839, %if.end493.i ]
  %warncount.0.ph1045.i = phi i32 [ 0, %for.body.lr.ph.lr.ph.i ], [ %warncount.4.i, %if.end493.i ]
  %304 = load i32** %index.i, align 8, !dbg !1547, !tbaa !1242
  %305 = sext i32 %i.0.ph1046.i to i64
  %arrayidx17.phi.trans.insert.i = getelementptr inbounds i32* %304, i64 %305
  %.pre1113.i = load i32* %arrayidx17.phi.trans.insert.i, align 4, !dbg !1547, !tbaa !1183
  br label %for.body.i840, !dbg !1545

if.else494.i:                                     ; preds = %for.end.i
  call void @llvm.dbg.value(metadata !{i32 %181}, i64 0, metadata !1590) #4, !dbg !1572
  %cmp5031000.i = icmp slt i32 %181, %183, !dbg !1572
  br i1 %cmp5031000.i, label %for.body505.lr.ph.i, label %for.cond.loopexit.i, !dbg !1572

for.body505.lr.ph.i:                              ; preds = %if.else494.i
  %306 = load i32** %a507.i, align 8, !dbg !1549, !tbaa !1242
  %307 = load i32** %solvent_type.i, align 8, !dbg !1549, !tbaa !1242
  %308 = sext i32 %181 to i64
  br label %for.body505.i, !dbg !1572

for.body505.i:                                    ; preds = %for.body505.i, %for.body505.lr.ph.i
  %indvars.iv1066.i = phi i64 [ %308, %for.body505.lr.ph.i ], [ %indvars.iv.next1067.i, %for.body505.i ]
  %arrayidx508.i = getelementptr inbounds i32* %306, i64 %indvars.iv1066.i, !dbg !1549
  %309 = load i32* %arrayidx508.i, align 4, !dbg !1549, !tbaa !1183
  %idxprom509.i = sext i32 %309 to i64, !dbg !1549
  %arrayidx510.i = getelementptr inbounds i32* %call8.i, i64 %idxprom509.i, !dbg !1549
  %310 = load i32* %arrayidx510.i, align 4, !dbg !1549, !tbaa !1183
  %idxprom511.i = sext i32 %310 to i64, !dbg !1549
  %arrayidx513.i = getelementptr inbounds i32* %307, i64 %idxprom511.i, !dbg !1549
  store i32 0, i32* %arrayidx513.i, align 4, !dbg !1549, !tbaa !1183
  %indvars.iv.next1067.i = add i64 %indvars.iv1066.i, 1, !dbg !1572
  %311 = load i32* %arrayidx21.i, align 4, !dbg !1572, !tbaa !1183
  %312 = trunc i64 %indvars.iv.next1067.i to i32, !dbg !1572
  %cmp503.i = icmp slt i32 %312, %311, !dbg !1572
  br i1 %cmp503.i, label %for.body505.i, label %for.cond498.for.cond.loopexit_crit_edge.i, !dbg !1572

for.end520.i:                                     ; preds = %if.end493.i, %for.cond.loopexit.i, %for.cond.preheader.i
  %313 = load %struct._IO_FILE** @debug, align 8, !dbg !1664, !tbaa !1242
  %tobool521.i = icmp eq %struct._IO_FILE* %313, null, !dbg !1664
  br i1 %tobool521.i, label %if.end546.i, label %for.cond523.preheader.i, !dbg !1664

for.cond523.preheader.i:                          ; preds = %for.end520.i
  %314 = load i32* %nr.i834, align 4, !dbg !1665, !tbaa !1183
  %cmp525992.i = icmp sgt i32 %314, 0, !dbg !1665
  br i1 %cmp525992.i, label %for.body527.i, label %if.end546.i, !dbg !1665

for.body527.i:                                    ; preds = %for.cond523.preheader.i, %for.body527.for.body527_crit_edge.i
  %315 = phi %struct._IO_FILE* [ %.pre1111.i, %for.body527.for.body527_crit_edge.i ], [ %313, %for.cond523.preheader.i ]
  %indvars.iv1060.i = phi i64 [ %indvars.iv.next1061.i, %for.body527.for.body527_crit_edge.i ], [ 0, %for.cond523.preheader.i ]
  %316 = trunc i64 %indvars.iv1060.i to i32, !dbg !1668
  %mul528.i = mul nsw i32 %316, 3, !dbg !1668
  %idxprom529.i = sext i32 %mul528.i to i64, !dbg !1668
  %317 = load i32** %mno_index, align 8, !dbg !1668, !tbaa !1242
  %arrayidx531.i = getelementptr inbounds i32* %317, i64 %idxprom529.i, !dbg !1668
  %318 = load i32* %arrayidx531.i, align 4, !dbg !1668, !tbaa !1183
  %add533.i = add nsw i32 %mul528.i, 1, !dbg !1668
  %idxprom534.i = sext i32 %add533.i to i64, !dbg !1668
  %arrayidx536.i = getelementptr inbounds i32* %317, i64 %idxprom534.i, !dbg !1668
  %319 = load i32* %arrayidx536.i, align 4, !dbg !1668, !tbaa !1183
  %add538.i = add nsw i32 %mul528.i, 2, !dbg !1668
  %idxprom539.i = sext i32 %add538.i to i64, !dbg !1668
  %arrayidx541.i = getelementptr inbounds i32* %317, i64 %idxprom539.i, !dbg !1668
  %320 = load i32* %arrayidx541.i, align 4, !dbg !1668, !tbaa !1183
  %call542.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %315, i8* getelementptr inbounds ([42 x i8]* @.str65, i64 0, i64 0), i32 %316, i32 %318, i32 %319, i32 %320) #5, !dbg !1668
  %indvars.iv.next1061.i = add i64 %indvars.iv1060.i, 1, !dbg !1665
  %321 = load i32* %nr.i834, align 4, !dbg !1665, !tbaa !1183
  %322 = trunc i64 %indvars.iv.next1061.i to i32, !dbg !1665
  %cmp525.i = icmp slt i32 %322, %321, !dbg !1665
  br i1 %cmp525.i, label %for.body527.for.body527_crit_edge.i, label %if.end546.i, !dbg !1665

for.body527.for.body527_crit_edge.i:              ; preds = %for.body527.i
  %.pre1111.i = load %struct._IO_FILE** @debug, align 8, !dbg !1668, !tbaa !1242
  br label %for.body527.i, !dbg !1665

if.end546.i:                                      ; preds = %for.body527.i, %for.cond523.preheader.i, %for.end520.i
  %nMNOMol.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 39, !dbg !1669
  %nWatMol.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 41, !dbg !1670
  call void @llvm.dbg.value(metadata !246, i64 0, metadata !1671) #4, !dbg !1672
  %scevgep.i = getelementptr %struct.t_forcerec* %fr, i64 0, i32 40, i64 0
  %323 = bitcast i32* %nMNOMol.i to i8*, !dbg !1674
  call void @llvm.memset.p0i8.i64(i8* %323, i8 0, i64 20, i32 4, i1 false) #4, !dbg !1670
  %324 = load i32* %nr11.i, align 4, !dbg !1674, !tbaa !1183
  %cmp558989.i = icmp sgt i32 %324, 0, !dbg !1674
  br i1 %cmp558989.i, label %for.body560.lr.ph.i, label %if.end646.i, !dbg !1674

for.body560.lr.ph.i:                              ; preds = %if.end546.i
  %index562.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 2, !dbg !1676
  %a565.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 4, !dbg !1676
  %nodeid.i = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0, !dbg !1678
  %.pre1106.i = load i32** %index562.i, align 8, !dbg !1676, !tbaa !1242
  %.pre1107.i = load i32** %a565.i, align 8, !dbg !1676, !tbaa !1242
  br label %for.body560.i, !dbg !1674

for.body560.i:                                    ; preds = %for.inc627.i, %for.body560.lr.ph.i
  %indvars.iv1053.i = phi i64 [ 0, %for.body560.lr.ph.i ], [ %indvars.iv.next1054.i, %for.inc627.i ]
  %arrayidx563.i = getelementptr inbounds i32* %.pre1106.i, i64 %indvars.iv1053.i, !dbg !1676
  %325 = load i32* %arrayidx563.i, align 4, !dbg !1676, !tbaa !1183
  %idxprom564.i = sext i32 %325 to i64, !dbg !1676
  %arrayidx566.i = getelementptr inbounds i32* %.pre1107.i, i64 %idxprom564.i, !dbg !1676
  %326 = load i32* %arrayidx566.i, align 4, !dbg !1676, !tbaa !1183
  call void @llvm.dbg.value(metadata !{i32 %326}, i64 0, metadata !1590) #4, !dbg !1676
  %327 = load i32* %nodeid.i, align 4, !dbg !1678, !tbaa !1183
  %idxprom567.i = sext i32 %327 to i64, !dbg !1678
  %arrayidx569.i = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom567.i, !dbg !1678
  %328 = load i32* %arrayidx569.i, align 4, !dbg !1678, !tbaa !1183
  %cmp570.i = icmp slt i32 %326, %328, !dbg !1678
  br i1 %cmp570.i, label %for.inc627.i, label %land.lhs.true572.i, !dbg !1678

land.lhs.true572.i:                               ; preds = %for.body560.i
  %arrayidx579.i = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom567.i, !dbg !1678
  %329 = load i32* %arrayidx579.i, align 4, !dbg !1678, !tbaa !1183
  %add580.i = add nsw i32 %329, %328, !dbg !1678
  %cmp581.i = icmp slt i32 %326, %add580.i, !dbg !1678
  br i1 %cmp581.i, label %if.then583.i, label %for.inc627.i, !dbg !1678

if.then583.i:                                     ; preds = %land.lhs.true572.i
  %idxprom584.i = sext i32 %326 to i64, !dbg !1679
  %arrayidx585.i = getelementptr inbounds i32* %call8.i, i64 %idxprom584.i, !dbg !1679
  %330 = load i32* %arrayidx585.i, align 4, !dbg !1679, !tbaa !1183
  %idxprom586.i = sext i32 %330 to i64, !dbg !1679
  %331 = load i32** %solvent_type.i, align 8, !dbg !1679, !tbaa !1242
  %arrayidx588.i = getelementptr inbounds i32* %331, i64 %idxprom586.i, !dbg !1679
  %332 = load i32* %arrayidx588.i, align 4, !dbg !1679, !tbaa !1183
  switch i32 %332, label %for.inc627.i [
    i32 1, label %if.then591.i
    i32 2, label %if.then621.i
  ], !dbg !1679

if.then591.i:                                     ; preds = %if.then583.i
  %333 = load i32* %nMNOMol.i, align 4, !dbg !1681, !tbaa !1183
  %inc593.i = add nsw i32 %333, 1, !dbg !1681
  store i32 %inc593.i, i32* %nMNOMol.i, align 4, !dbg !1681, !tbaa !1183
  call void @llvm.dbg.value(metadata !246, i64 0, metadata !1671) #4, !dbg !1683
  %334 = load i32* %arrayidx585.i, align 4, !dbg !1685, !tbaa !1183
  %mul600.i = mul nsw i32 %334, 3, !dbg !1685
  %335 = sext i32 %mul600.i to i64, !dbg !1683
  br label %for.body597.i, !dbg !1683

for.body597.i:                                    ; preds = %for.body597.i, %if.then591.i
  %indvars.iv1048.i = phi i64 [ 0, %if.then591.i ], [ %indvars.iv.next1049.i, %for.body597.i ]
  %336 = add nsw i64 %indvars.iv1048.i, %335, !dbg !1685
  %337 = load i32** %mno_index, align 8, !dbg !1685, !tbaa !1242
  %arrayidx604.i = getelementptr inbounds i32* %337, i64 %336, !dbg !1685
  %338 = load i32* %arrayidx604.i, align 4, !dbg !1685, !tbaa !1183
  %conv605.i = sitofp i32 %338 to float, !dbg !1685
  %arrayidx608.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 40, i64 %indvars.iv1048.i, !dbg !1685
  %339 = load float* %arrayidx608.i, align 4, !dbg !1685, !tbaa !1186
  %add609.i = fadd float %339, %conv605.i, !dbg !1685
  store float %add609.i, float* %arrayidx608.i, align 4, !dbg !1685, !tbaa !1186
  %indvars.iv.next1049.i = add i64 %indvars.iv1048.i, 1, !dbg !1683
  %lftr.wideiv881 = trunc i64 %indvars.iv.next1049.i to i32, !dbg !1683
  %exitcond882 = icmp eq i32 %lftr.wideiv881, 3, !dbg !1683
  br i1 %exitcond882, label %for.inc627.i, label %for.body597.i, !dbg !1683

if.then621.i:                                     ; preds = %if.then583.i
  %340 = load i32* %nWatMol.i, align 4, !dbg !1686, !tbaa !1183
  %inc623.i = add nsw i32 %340, 1, !dbg !1686
  store i32 %inc623.i, i32* %nWatMol.i, align 4, !dbg !1686, !tbaa !1183
  br label %for.inc627.i, !dbg !1686

for.inc627.i:                                     ; preds = %for.body597.i, %if.then583.i, %land.lhs.true572.i, %for.body560.i, %if.then621.i
  %indvars.iv.next1054.i = add i64 %indvars.iv1053.i, 1, !dbg !1674
  %341 = load i32* %nr11.i, align 4, !dbg !1674, !tbaa !1183
  %342 = trunc i64 %indvars.iv.next1054.i to i32, !dbg !1674
  %cmp558.i = icmp slt i32 %342, %341, !dbg !1674
  br i1 %cmp558.i, label %for.body560.i, label %for.end629.i, !dbg !1674

for.end629.i:                                     ; preds = %for.inc627.i
  %.pre.i = load i32* %nMNOMol.i, align 4, !dbg !1687, !tbaa !1183
  %cmp631.i = icmp sgt i32 %.pre.i, 0, !dbg !1687
  br i1 %cmp631.i, label %for.body637.i.preheader, label %if.end646.i, !dbg !1687

for.body637.i.preheader:                          ; preds = %for.end629.i
  %conv639.i847 = sitofp i32 %.pre.i to float, !dbg !1688
  %343 = load float* %scevgep.i, align 4, !dbg !1688, !tbaa !1186
  %div.i849 = fdiv float %343, %conv639.i847, !dbg !1688
  store float %div.i849, float* %scevgep.i, align 4, !dbg !1688, !tbaa !1186
  br label %for.body637.for.body637_crit_edge.i, !dbg !1690

for.body637.for.body637_crit_edge.i:              ; preds = %for.body637.for.body637_crit_edge.i.for.body637.for.body637_crit_edge.i_crit_edge, %for.body637.i.preheader
  %.pre1110.i = phi i32 [ %.pre.i, %for.body637.i.preheader ], [ %.pre1110.i.pre, %for.body637.for.body637_crit_edge.i.for.body637.for.body637_crit_edge.i_crit_edge ]
  %indvars.iv.next.i843850 = phi i64 [ 1, %for.body637.i.preheader ], [ %indvars.iv.next.i843, %for.body637.for.body637_crit_edge.i.for.body637.for.body637_crit_edge.i_crit_edge ]
  %conv639.i = sitofp i32 %.pre1110.i to float, !dbg !1688
  %arrayidx642.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 40, i64 %indvars.iv.next.i843850, !dbg !1688
  %344 = load float* %arrayidx642.i, align 4, !dbg !1688, !tbaa !1186
  %div.i = fdiv float %344, %conv639.i, !dbg !1688
  store float %div.i, float* %arrayidx642.i, align 4, !dbg !1688, !tbaa !1186
  %indvars.iv.next.i843 = add i64 %indvars.iv.next.i843850, 1, !dbg !1690
  %lftr.wideiv = trunc i64 %indvars.iv.next.i843 to i32, !dbg !1690
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !1690
  br i1 %exitcond, label %if.end646.i, label %for.body637.for.body637_crit_edge.i.for.body637.for.body637_crit_edge.i_crit_edge, !dbg !1690

for.body637.for.body637_crit_edge.i.for.body637.for.body637_crit_edge.i_crit_edge: ; preds = %for.body637.for.body637_crit_edge.i
  %.pre1110.i.pre = load i32* %nMNOMol.i, align 4, !dbg !1688, !tbaa !1183
  br label %for.body637.for.body637_crit_edge.i, !dbg !1690

if.end646.i:                                      ; preds = %for.body637.for.body637_crit_edge.i, %for.end629.i, %if.end546.i
  %345 = bitcast i32* %call8.i to i8*, !dbg !1691
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str66, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 326, i8* %345) #5, !dbg !1691
  br i1 %tobool70, label %if.then648.i, label %if.end547, !dbg !1692

if.then648.i:                                     ; preds = %if.end646.i
  %346 = load i32* %nMNOMol.i, align 4, !dbg !1693, !tbaa !1183
  %nodeid650.i = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0, !dbg !1693
  %347 = load i32* %nodeid650.i, align 4, !dbg !1693, !tbaa !1183
  %call651.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([53 x i8]* @.str67, i64 0, i64 0), i32 %346, i32 %347) #5, !dbg !1693
  %348 = load i32* %nMNOMol.i, align 4, !dbg !1695, !tbaa !1183
  %cmp653.i = icmp sgt i32 %348, 0, !dbg !1695
  br i1 %cmp653.i, label %if.then655.i, label %if.end672.i, !dbg !1695

if.then655.i:                                     ; preds = %if.then648.i
  %arrayidx657.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 40, i64 1, !dbg !1696
  %349 = load float* %arrayidx657.i, align 4, !dbg !1696, !tbaa !1186
  %conv658.i = fpext float %349 to double, !dbg !1696
  %arrayidx660.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 40, i64 2, !dbg !1696
  %350 = load float* %arrayidx660.i, align 4, !dbg !1696, !tbaa !1186
  %sub663.i = fsub float %350, %349, !dbg !1696
  %conv664.i = fpext float %sub663.i to double, !dbg !1696
  %351 = load float* %scevgep.i, align 4, !dbg !1696, !tbaa !1186
  %sub669.i = fsub float %351, %350, !dbg !1696
  %conv670.i = fpext float %sub669.i to double, !dbg !1696
  %call671.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([65 x i8]* @.str68, i64 0, i64 0), double %conv658.i, double %conv664.i, double %conv670.i) #5, !dbg !1696
  br label %if.end672.i, !dbg !1696

if.end672.i:                                      ; preds = %if.then655.i, %if.then648.i
  %352 = load i32* %nWatMol.i, align 4, !dbg !1697, !tbaa !1183
  %353 = load i32* %nodeid650.i, align 4, !dbg !1697, !tbaa !1183
  %call675.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([51 x i8]* @.str69, i64 0, i64 0), i32 %352, i32 %353) #5, !dbg !1697
  br label %if.end547, !dbg !1698

if.end547:                                        ; preds = %if.end672.i, %if.end646.i, %for.end544
  ret void, !dbg !1699
}

; Function Attrs: optsize
declare i8* @check_box([3 x float]*) #2

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize
declare double @pow(double, double) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare float @calc_ewaldcoeff(float, float) #2

; Function Attrs: optsize
declare void @set_shift_consts(%struct._IO_FILE*, float, float, float*, %struct.t_forcerec*) #2

; Function Attrs: optsize
declare i32* @make_invblock(%struct.t_block*, i32) #2

; Function Attrs: optsize
declare void @make_tables(%struct._IO_FILE*, %struct.t_forcerec*, i32, i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @pr_forcerec(%struct._IO_FILE* nocapture %fp, %struct.t_forcerec* nocapture %fr, %struct.t_commrec* nocapture %cr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !874), !dbg !1700
  tail call void @llvm.dbg.value(metadata !{%struct.t_forcerec* %fr}, i64 0, metadata !875), !dbg !1700
  tail call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !876), !dbg !1700
  %rlist = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 1, !dbg !1701
  %0 = load float* %rlist, align 4, !dbg !1701, !tbaa !1186
  %conv = fpext float %0 to double, !dbg !1701
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str27, i64 0, i64 0), double %conv) #5, !dbg !1701
  %rcoulomb = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 23, !dbg !1702
  %1 = load float* %rcoulomb, align 4, !dbg !1702, !tbaa !1186
  %conv1 = fpext float %1 to double, !dbg !1702
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str28, i64 0, i64 0), double %conv1) #5, !dbg !1702
  %fudgeQQ = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 12, !dbg !1703
  %2 = load float* %fudgeQQ, align 4, !dbg !1703, !tbaa !1186
  %conv3 = fpext float %2 to double, !dbg !1703
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str29, i64 0, i64 0), double %conv3) #5, !dbg !1703
  %ndelta = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 37, !dbg !1704
  %3 = load i32* %ndelta, align 4, !dbg !1704, !tbaa !1183
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str31, i64 0, i64 0), i32 %3) #5, !dbg !1704
  %bGrid = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 43, !dbg !1705
  %4 = load i32* %bGrid, align 4, !dbg !1705, !tbaa !1183
  %idxprom = sext i32 %4 to i64, !dbg !1705
  %arrayidx = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %idxprom, !dbg !1705
  %5 = load i8** %arrayidx, align 8, !dbg !1705, !tbaa !1242
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str33, i64 0, i64 0), i8* %5) #5, !dbg !1705
  %bTwinRange = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 51, !dbg !1706
  %6 = load i32* %bTwinRange, align 4, !dbg !1706, !tbaa !1183
  %idxprom7 = sext i32 %6 to i64, !dbg !1706
  %arrayidx8 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %idxprom7, !dbg !1706
  %7 = load i8** %arrayidx8, align 8, !dbg !1706, !tbaa !1242
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str34, i64 0, i64 0), i8* %7) #5, !dbg !1706
  %ntab = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 16, !dbg !1707
  %8 = load i32* %ntab, align 4, !dbg !1707, !tbaa !1183
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str35, i64 0, i64 0), i32 %8) #5, !dbg !1707
  %9 = load i32* %ntab, align 4, !dbg !1708, !tbaa !1183
  %cmp = icmp sgt i32 %9, 0, !dbg !1708
  br i1 %cmp, label %if.then, label %if.end, !dbg !1708

if.then:                                          ; preds = %entry
  %rcoulomb_switch = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 22, !dbg !1709
  %10 = load float* %rcoulomb_switch, align 4, !dbg !1709, !tbaa !1186
  %conv13 = fpext float %10 to double, !dbg !1709
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str36, i64 0, i64 0), double %conv13) #5, !dbg !1709
  %11 = load float* %rcoulomb, align 4, !dbg !1711, !tbaa !1186
  %conv16 = fpext float %11 to double, !dbg !1711
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str28, i64 0, i64 0), double %conv16) #5, !dbg !1711
  br label %if.end, !dbg !1712

if.end:                                           ; preds = %if.then, %entry
  %nmol = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 59, !dbg !1713
  %12 = load i32* %nmol, align 4, !dbg !1713, !tbaa !1183
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str37, i64 0, i64 0), i32 %12) #5, !dbg !1713
  %nstcalc = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 62, !dbg !1714
  %13 = load i32* %nstcalc, align 4, !dbg !1714, !tbaa !1183
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str38, i64 0, i64 0), i32 %13) #5, !dbg !1714
  %call20 = tail call i32 @fflush(%struct._IO_FILE* %fp) #5, !dbg !1715
  ret void, !dbg !1716
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @ns(%struct._IO_FILE* %fp, %struct.t_forcerec* %fr, [3 x float]* %x, [3 x float]* nocapture %f, [3 x float]* %box, %struct.t_groups* %grps, %struct.t_grpopts* nocapture %opts, %struct.t_topology* %top, %struct.t_mdatoms* %md, %struct.t_commrec* %cr, %struct.t_nrnb* %nrnb, %struct.t_nsborder* %nsb, i32 %step, float %lambda, float* %dvdlambda) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !931), !dbg !1717
  tail call void @llvm.dbg.value(metadata !{%struct.t_forcerec* %fr}, i64 0, metadata !932), !dbg !1718
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !933), !dbg !1719
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %f}, i64 0, metadata !934), !dbg !1720
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !935), !dbg !1721
  tail call void @llvm.dbg.value(metadata !{%struct.t_groups* %grps}, i64 0, metadata !936), !dbg !1722
  tail call void @llvm.dbg.value(metadata !{%struct.t_grpopts* %opts}, i64 0, metadata !937), !dbg !1723
  tail call void @llvm.dbg.value(metadata !{%struct.t_topology* %top}, i64 0, metadata !938), !dbg !1724
  tail call void @llvm.dbg.value(metadata !{%struct.t_mdatoms* %md}, i64 0, metadata !939), !dbg !1725
  tail call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !940), !dbg !1726
  tail call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %nrnb}, i64 0, metadata !941), !dbg !1727
  tail call void @llvm.dbg.value(metadata !{%struct.t_nsborder* %nsb}, i64 0, metadata !942), !dbg !1728
  tail call void @llvm.dbg.value(metadata !{i32 %step}, i64 0, metadata !943), !dbg !1729
  tail call void @llvm.dbg.value(metadata !{float %lambda}, i64 0, metadata !944), !dbg !1730
  tail call void @llvm.dbg.value(metadata !{float* %dvdlambda}, i64 0, metadata !945), !dbg !1731
  %.b = load i1* @ns.bFirst, align 1
  br i1 %.b, label %if.end4, label %if.end, !dbg !1732

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !1503, i64 0, metadata !946), !dbg !1733
  %nodeid = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0, !dbg !1735
  %0 = load i32* %nodeid, align 4, !dbg !1735, !tbaa !1183
  %idxprom = sext i32 %0 to i64, !dbg !1735
  %arrayidx = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom, !dbg !1735
  %1 = load i32* %arrayidx, align 4, !dbg !1735, !tbaa !1183
  tail call void @init_neighbor_list(%struct._IO_FILE* %fp, %struct.t_forcerec* %fr, i32 %1) #5, !dbg !1735
  store i1 true, i1* @ns.bFirst, align 1
  br label %if.end4, !dbg !1736

if.end4:                                          ; preds = %entry, %if.end
  %bTwinRange = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 51, !dbg !1737
  %2 = load i32* %bTwinRange, align 4, !dbg !1737, !tbaa !1183
  %tobool5 = icmp eq i32 %2, 0, !dbg !1737
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !1737

if.then6:                                         ; preds = %if.end4
  %nlr = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 52, !dbg !1738
  store i32 0, i32* %nlr, align 4, !dbg !1738, !tbaa !1183
  br label %if.end7, !dbg !1738

if.end7:                                          ; preds = %if.end4, %if.then6
  %nodeid8 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !1739
  %3 = load i32* %nodeid8, align 4, !dbg !1739, !tbaa !1183
  %cmp = icmp eq i32 %3, 0, !dbg !1739
  br i1 %cmp, label %if.then9, label %if.else10, !dbg !1739

if.then9:                                         ; preds = %if.end7
  %cg0 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 35, !dbg !1740
  store i32 0, i32* %cg0, align 4, !dbg !1740, !tbaa !1183
  br label %if.end15, !dbg !1740

if.else10:                                        ; preds = %if.end7
  %sub = add nsw i32 %3, -1, !dbg !1741
  %idxprom12 = sext i32 %sub to i64, !dbg !1741
  %arrayidx13 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 10, i64 %idxprom12, !dbg !1741
  %4 = load i32* %arrayidx13, align 4, !dbg !1741, !tbaa !1183
  %cg014 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 35, !dbg !1741
  store i32 %4, i32* %cg014, align 4, !dbg !1741, !tbaa !1183
  br label %if.end15

if.end15:                                         ; preds = %if.else10, %if.then9
  %5 = load i32* %nodeid8, align 4, !dbg !1742, !tbaa !1183
  %idxprom17 = sext i32 %5 to i64, !dbg !1742
  %arrayidx19 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 10, i64 %idxprom17, !dbg !1742
  %6 = load i32* %arrayidx19, align 4, !dbg !1742, !tbaa !1183
  %hcg = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 36, !dbg !1742
  store i32 %6, i32* %hcg, align 4, !dbg !1742, !tbaa !1183
  %call20 = tail call i32 @search_neighbours(%struct._IO_FILE* %fp, %struct.t_forcerec* %fr, [3 x float]* %x, [3 x float]* %box, %struct.t_topology* %top, %struct.t_groups* %grps, %struct.t_commrec* %cr, %struct.t_nsborder* %nsb, %struct.t_nrnb* %nrnb, %struct.t_mdatoms* %md, float %lambda, float* %dvdlambda) #5, !dbg !1743
  tail call void @llvm.dbg.value(metadata !{i32 %call20}, i64 0, metadata !947), !dbg !1743
  %7 = load %struct._IO_FILE** @debug, align 8, !dbg !1744, !tbaa !1242
  %tobool21 = icmp eq %struct._IO_FILE* %7, null, !dbg !1744
  br i1 %tobool21, label %if.end27, label %if.then22, !dbg !1744

if.then22:                                        ; preds = %if.end15
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([14 x i8]* @.str40, i64 0, i64 0), i32 %call20) #5, !dbg !1745
  br label %if.end27, !dbg !1745

if.end27:                                         ; preds = %if.then22, %if.end15
  ret void, !dbg !1746
}

; Function Attrs: optsize
declare void @init_neighbor_list(%struct._IO_FILE*, %struct.t_forcerec*, i32) #2

; Function Attrs: optsize
declare i32 @search_neighbours(%struct._IO_FILE*, %struct.t_forcerec*, [3 x float]*, [3 x float]*, %struct.t_topology*, %struct.t_groups*, %struct.t_commrec*, %struct.t_nsborder*, %struct.t_nrnb*, %struct.t_mdatoms*, float, float*) #2

; Function Attrs: nounwind optsize uwtable
define void @force(%struct._IO_FILE* %fp, i32 %step, %struct.t_forcerec* %fr, %struct.t_inputrec* %ir, %struct.t_idef* %idef, %struct.t_nsborder* %nsb, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_nrnb* %nrnb, %struct.t_groups* nocapture %grps, %struct.t_mdatoms* %md, i32 %ngener, %struct.t_grpopts* nocapture %opts, [3 x float]* %x, [3 x float]* %f, float* %epot, %struct.t_fcdata* %fcd, i32 %bVerbose, [3 x float]* %box, float %lambda, %struct.t_graph* %graph, %struct.t_block* %excl, i32 %bNBFonly, [3 x float]* %lr_vir, float* %mu_tot, float %qsum, i32 %bGatherOnly) #0 {
entry:
  %nit = alloca i32, align 4
  %box_size = alloca [3 x float], align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !1025), !dbg !1747
  call void @llvm.dbg.value(metadata !{i32 %step}, i64 0, metadata !1026), !dbg !1747
  call void @llvm.dbg.value(metadata !{%struct.t_forcerec* %fr}, i64 0, metadata !1027), !dbg !1748
  call void @llvm.dbg.value(metadata !{%struct.t_inputrec* %ir}, i64 0, metadata !1028), !dbg !1748
  call void @llvm.dbg.value(metadata !{%struct.t_idef* %idef}, i64 0, metadata !1029), !dbg !1749
  call void @llvm.dbg.value(metadata !{%struct.t_nsborder* %nsb}, i64 0, metadata !1030), !dbg !1749
  call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !1031), !dbg !1750
  call void @llvm.dbg.value(metadata !{%struct.t_commrec* %mcr}, i64 0, metadata !1032), !dbg !1750
  call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %nrnb}, i64 0, metadata !1033), !dbg !1751
  call void @llvm.dbg.value(metadata !{%struct.t_groups* %grps}, i64 0, metadata !1034), !dbg !1752
  call void @llvm.dbg.value(metadata !{%struct.t_mdatoms* %md}, i64 0, metadata !1035), !dbg !1752
  call void @llvm.dbg.value(metadata !{i32 %ngener}, i64 0, metadata !1036), !dbg !1753
  call void @llvm.dbg.value(metadata !{%struct.t_grpopts* %opts}, i64 0, metadata !1037), !dbg !1753
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !1038), !dbg !1754
  call void @llvm.dbg.value(metadata !{[3 x float]* %f}, i64 0, metadata !1039), !dbg !1754
  call void @llvm.dbg.value(metadata !{float* %epot}, i64 0, metadata !1040), !dbg !1755
  call void @llvm.dbg.value(metadata !{%struct.t_fcdata* %fcd}, i64 0, metadata !1041), !dbg !1755
  call void @llvm.dbg.value(metadata !{i32 %bVerbose}, i64 0, metadata !1042), !dbg !1756
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !1043), !dbg !1756
  call void @llvm.dbg.value(metadata !{float %lambda}, i64 0, metadata !1044), !dbg !1757
  call void @llvm.dbg.value(metadata !{%struct.t_graph* %graph}, i64 0, metadata !1045), !dbg !1757
  call void @llvm.dbg.value(metadata !{%struct.t_block* %excl}, i64 0, metadata !1046), !dbg !1758
  call void @llvm.dbg.value(metadata !{i32 %bNBFonly}, i64 0, metadata !1047), !dbg !1758
  call void @llvm.dbg.value(metadata !{[3 x float]* %lr_vir}, i64 0, metadata !1048), !dbg !1759
  call void @llvm.dbg.value(metadata !{float* %mu_tot}, i64 0, metadata !1049), !dbg !1759
  call void @llvm.dbg.value(metadata !{float %qsum}, i64 0, metadata !1050), !dbg !1760
  call void @llvm.dbg.value(metadata !{i32 %bGatherOnly}, i64 0, metadata !1051), !dbg !1760
  call void @llvm.dbg.declare(metadata !{i32* %nit}, metadata !1053), !dbg !1761
  call void @llvm.dbg.declare(metadata !{[3 x float]* %box_size}, metadata !1055), !dbg !1762
  call void @llvm.dbg.value(metadata !1340, i64 0, metadata !1057), !dbg !1763
  call void @llvm.dbg.value(metadata !246, i64 0, metadata !1052), !dbg !1764
  br label %for.body, !dbg !1764

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv320 = phi i64 [ 0, %entry ], [ %indvars.iv.next321, %for.body ]
  %arrayidx2 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv320, i64 %indvars.iv320, !dbg !1766
  %0 = load float* %arrayidx2, align 4, !dbg !1766, !tbaa !1186
  %arrayidx4 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 %indvars.iv320, !dbg !1766
  store float %0, float* %arrayidx4, align 4, !dbg !1766, !tbaa !1186
  %indvars.iv.next321 = add i64 %indvars.iv320, 1, !dbg !1764
  %lftr.wideiv322 = trunc i64 %indvars.iv.next321 to i32, !dbg !1764
  %exitcond323 = icmp eq i32 %lftr.wideiv322, 3, !dbg !1764
  br i1 %exitcond323, label %for.end, label %for.body, !dbg !1764

for.end:                                          ; preds = %for.body
  %nmol = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 59, !dbg !1767
  %1 = load i32* %nmol, align 4, !dbg !1767, !tbaa !1183
  %cmp5 = icmp sgt i32 %1, 0, !dbg !1767
  br i1 %cmp5, label %land.lhs.true, label %if.end, !dbg !1767

land.lhs.true:                                    ; preds = %for.end
  %nstcalc = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 62, !dbg !1767
  %2 = load i32* %nstcalc, align 4, !dbg !1767, !tbaa !1183
  %cmp6 = icmp sgt i32 %2, 0, !dbg !1767
  br i1 %cmp6, label %_mod.exit, label %if.end, !dbg !1767

_mod.exit:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata !1768, i64 0, metadata !1769) #4, !dbg !1770
  call void @llvm.dbg.value(metadata !1771, i64 0, metadata !1772) #4, !dbg !1770
  %rem.i = srem i32 %step, %2, !dbg !1773
  %cmp8 = icmp eq i32 %rem.i, 0, !dbg !1767
  br i1 %cmp8, label %if.end.loopexit, label %if.end, !dbg !1775

if.end.loopexit:                                  ; preds = %_mod.exit
  %mol_epot = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 61, !dbg !1776
  %3 = load float** %mol_epot, align 8, !dbg !1776, !tbaa !1242
  %4 = bitcast float* %3 to i8*
  %5 = icmp sgt i32 %1, 1
  %.op = add i32 %1, -1, !dbg !1778
  %6 = zext i32 %.op to i64
  %.op324 = shl nuw nsw i64 %6, 2, !dbg !1778
  %.op324.op = add i64 %.op324, 4, !dbg !1778
  %7 = select i1 %5, i64 %.op324.op, i64 4, !dbg !1778
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 %7, i32 4, i1 false), !dbg !1776
  br label %if.end

if.end:                                           ; preds = %if.end.loopexit, %for.end, %land.lhs.true, %_mod.exit
  %bBHAM = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 64, !dbg !1779
  %8 = load i32* %bBHAM, align 4, !dbg !1779, !tbaa !1183
  %tobool18 = icmp eq i32 %8, 0, !dbg !1779
  %arrayidx19 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 2, !dbg !1779
  %arrayidx22 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 1, !dbg !1779
  %cond.in = select i1 %tobool18, float** %arrayidx22, float** %arrayidx19, !dbg !1779
  %cond = load float** %cond.in, align 8, !dbg !1779
  %arrayidx25 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 0, !dbg !1779
  %9 = load float** %arrayidx25, align 8, !dbg !1779, !tbaa !1242
  %arraydecay = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 0, !dbg !1779
  %arrayidx26 = getelementptr inbounds float* %epot, i64 42, !dbg !1779
  call void @do_fnbf(%struct._IO_FILE* %fp, %struct.t_commrec* %cr, %struct.t_forcerec* %fr, [3 x float]* %x, [3 x float]* %f, %struct.t_mdatoms* %md, float* %cond, float* %9, float* %arraydecay, %struct.t_nrnb* %nrnb, float %lambda, float* %arrayidx26, i32 0, i32 -1) #5, !dbg !1779
  %10 = load %struct._IO_FILE** @debug, align 8, !dbg !1780, !tbaa !1242
  %tobool27 = icmp eq %struct._IO_FILE* %10, null, !dbg !1780
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !1780

if.then28:                                        ; preds = %if.end
  %fshift = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58, !dbg !1781
  %11 = load [3 x float]** %fshift, align 8, !dbg !1781, !tbaa !1242
  call void @pr_rvecs(%struct._IO_FILE* %10, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str41, i64 0, i64 0), [3 x float]* %11, i32 27) #5, !dbg !1781
  br label %if.end29, !dbg !1781

if.end29:                                         ; preds = %if.end, %if.then28
  %tobool34 = icmp ne i32 %bNBFonly, 0, !dbg !1782
  br i1 %tobool34, label %if.end99, label %if.then35, !dbg !1782

if.then35:                                        ; preds = %if.end29
  call void @shift_self(%struct.t_graph* %graph, [3 x float]* %box, [3 x float]* %x) #5, !dbg !1783
  %arrayidx71 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !1785
  %12 = load float* %arrayidx71, align 4, !dbg !1785, !tbaa !1186
  %fabsf = call float @fabsf(float %12) #6, !dbg !1785
  %13 = fpext float %fabsf to double, !dbg !1785
  %cmp74 = fcmp ogt double %13, 1.200000e-38, !dbg !1785
  br i1 %cmp74, label %if.then89, label %lor.lhs.false, !dbg !1785

lor.lhs.false:                                    ; preds = %if.then35
  %arrayidx77 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !1785
  %14 = load float* %arrayidx77, align 4, !dbg !1785, !tbaa !1186
  %fabsf307 = call float @fabsf(float %14) #6, !dbg !1785
  %15 = fpext float %fabsf307 to double, !dbg !1785
  %cmp80 = fcmp ogt double %15, 1.200000e-38, !dbg !1785
  br i1 %cmp80, label %if.then89, label %lor.lhs.false82, !dbg !1785

lor.lhs.false82:                                  ; preds = %lor.lhs.false
  %arrayidx84 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !1785
  %16 = load float* %arrayidx84, align 4, !dbg !1785, !tbaa !1186
  %fabsf308 = call float @fabsf(float %16) #6, !dbg !1785
  %17 = fpext float %fabsf308 to double, !dbg !1785
  %cmp87 = fcmp ogt double %17, 1.200000e-38, !dbg !1785
  br i1 %cmp87, label %if.then89, label %if.else, !dbg !1785

if.then89:                                        ; preds = %lor.lhs.false82, %lor.lhs.false, %if.then35
  %nnodes90 = getelementptr inbounds %struct.t_graph* %graph, i64 0, i32 1, !dbg !1786
  %18 = load i32* %nnodes90, align 4, !dbg !1786, !tbaa !1183
  %mul = shl nsw i32 %18, 1, !dbg !1786
  %conv91 = sitofp i32 %mul to double, !dbg !1786
  %arrayidx92 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 89, !dbg !1786
  %19 = load double* %arrayidx92, align 8, !dbg !1786, !tbaa !1787
  %add = fadd double %19, %conv91, !dbg !1786
  store double %add, double* %arrayidx92, align 8, !dbg !1786, !tbaa !1787
  br label %if.end99, !dbg !1786

if.else:                                          ; preds = %lor.lhs.false82
  %nnodes93 = getelementptr inbounds %struct.t_graph* %graph, i64 0, i32 1, !dbg !1788
  %20 = load i32* %nnodes93, align 4, !dbg !1788, !tbaa !1183
  %conv94 = sitofp i32 %20 to double, !dbg !1788
  %arrayidx96 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 89, !dbg !1788
  %21 = load double* %arrayidx96, align 8, !dbg !1788, !tbaa !1787
  %add97 = fadd double %21, %conv94, !dbg !1788
  store double %add97, double* %arrayidx96, align 8, !dbg !1788, !tbaa !1787
  br label %if.end99

if.end99:                                         ; preds = %if.then89, %if.else, %if.end29
  %eeltype = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 33, !dbg !1789
  %22 = load i32* %eeltype, align 4, !dbg !1789, !tbaa !1183
  %.off = add i32 %22, -3, !dbg !1789
  %switch = icmp ult i32 %.off, 4, !dbg !1789
  br i1 %switch, label %if.then114, label %if.end160, !dbg !1789

if.then114:                                       ; preds = %if.end99
  switch i32 %22, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb118
    i32 3, label %sw.bb124
    i32 4, label %sw.bb128
  ], !dbg !1790

sw.bb:                                            ; preds = %if.then114
  %f_pme = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55, !dbg !1792
  %23 = load [3 x float]** %f_pme, align 8, !dbg !1792, !tbaa !1242
  %chargeT = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 8, !dbg !1792
  %24 = load float** %chargeT, align 8, !dbg !1792, !tbaa !1242
  %phi = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 24, !dbg !1792
  %25 = load float** %phi, align 8, !dbg !1792, !tbaa !1242
  %call117 = call float @do_pppm(%struct._IO_FILE* %fp, i32 0, [3 x float]* %x, [3 x float]* %23, float* %24, float* %arraydecay, float* %25, %struct.t_commrec* %cr, %struct.t_nsborder* %nsb, %struct.t_nrnb* %nrnb) #5, !dbg !1792
  call void @llvm.dbg.value(metadata !{float %call117}, i64 0, metadata !1056), !dbg !1792
  br label %sw.epilog, !dbg !1794

sw.bb118:                                         ; preds = %if.then114
  %nr = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1, !dbg !1795
  %26 = load i32* %nr, align 4, !dbg !1795, !tbaa !1183
  %f_pme119 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55, !dbg !1795
  %27 = load [3 x float]** %f_pme119, align 8, !dbg !1795, !tbaa !1242
  %chargeT120 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 8, !dbg !1795
  %28 = load float** %chargeT120, align 8, !dbg !1795, !tbaa !1242
  %phi122 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 24, !dbg !1795
  %29 = load float** %phi122, align 8, !dbg !1795, !tbaa !1242
  %call123 = call float @do_poisson(%struct._IO_FILE* %fp, i32 0, %struct.t_inputrec* %ir, i32 %26, [3 x float]* %x, [3 x float]* %27, float* %28, float* %arraydecay, float* %29, %struct.t_commrec* %cr, %struct.t_nrnb* %nrnb, i32* %nit, i32 1) #5, !dbg !1795
  call void @llvm.dbg.value(metadata !{float %call123}, i64 0, metadata !1056), !dbg !1795
  br label %sw.epilog, !dbg !1796

sw.bb124:                                         ; preds = %if.then114
  %f_pme125 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55, !dbg !1797
  %30 = load [3 x float]** %f_pme125, align 8, !dbg !1797, !tbaa !1242
  %chargeT126 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 8, !dbg !1797
  %31 = load float** %chargeT126, align 8, !dbg !1797, !tbaa !1242
  %ewaldcoeff = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 57, !dbg !1797
  %32 = load float* %ewaldcoeff, align 4, !dbg !1797, !tbaa !1186
  %call127 = call float @do_pme(%struct._IO_FILE* %fp, i32 0, %struct.t_inputrec* %ir, [3 x float]* %x, [3 x float]* %30, float* %31, [3 x float]* %box, %struct.t_commrec* %cr, %struct.t_nsborder* %nsb, %struct.t_nrnb* %nrnb, [3 x float]* %lr_vir, float %32, i32 %bGatherOnly) #5, !dbg !1797
  call void @llvm.dbg.value(metadata !{float %call127}, i64 0, metadata !1056), !dbg !1797
  br label %sw.epilog, !dbg !1798

sw.bb128:                                         ; preds = %if.then114
  %f_pme129 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55, !dbg !1799
  %33 = load [3 x float]** %f_pme129, align 8, !dbg !1799, !tbaa !1242
  %chargeT130 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 8, !dbg !1799
  %34 = load float** %chargeT130, align 8, !dbg !1799, !tbaa !1242
  %ewaldcoeff132 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 57, !dbg !1799
  %35 = load float* %ewaldcoeff132, align 4, !dbg !1799, !tbaa !1186
  %call133 = call float @do_ewald(%struct._IO_FILE* %fp, i32 0, %struct.t_inputrec* %ir, [3 x float]* %x, [3 x float]* %33, float* %34, float* %arraydecay, %struct.t_commrec* %cr, %struct.t_nsborder* %nsb, [3 x float]* %lr_vir, float %35) #5, !dbg !1799
  call void @llvm.dbg.value(metadata !{float %call133}, i64 0, metadata !1056), !dbg !1799
  br label %sw.epilog, !dbg !1800

sw.default:                                       ; preds = %if.then114
  call void @llvm.dbg.value(metadata !1340, i64 0, metadata !1056), !dbg !1801
  %idxprom135 = sext i32 %22 to i64, !dbg !1802
  %arrayidx136 = getelementptr inbounds [11 x i8*]* @eel_names, i64 0, i64 %idxprom135, !dbg !1802
  %36 = load i8** %arrayidx136, align 8, !dbg !1802, !tbaa !1242
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([45 x i8]* @.str49, i64 0, i64 0), i8* %36) #5, !dbg !1802
  %chargeT139.pre = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 8, !dbg !1803
  br label %sw.epilog, !dbg !1804

sw.epilog:                                        ; preds = %sw.default, %sw.bb128, %sw.bb124, %sw.bb118, %sw.bb
  %chargeT139.pre-phi = phi float** [ %chargeT139.pre, %sw.default ], [ %chargeT130, %sw.bb128 ], [ %chargeT126, %sw.bb124 ], [ %chargeT120, %sw.bb118 ], [ %chargeT, %sw.bb ], !dbg !1803
  %Vlr.0 = phi float [ 0.000000e+00, %sw.default ], [ %call133, %sw.bb128 ], [ %call127, %sw.bb124 ], [ %call123, %sw.bb118 ], [ %call117, %sw.bb ]
  %bEwald = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 56, !dbg !1805
  %37 = load i32* %bEwald, align 4, !dbg !1805, !tbaa !1183
  %tobool137 = icmp eq i32 %37, 0, !dbg !1805
  %38 = load float** %chargeT139.pre-phi, align 8, !dbg !1803, !tbaa !1242
  br i1 %tobool137, label %if.else142, label %if.then138, !dbg !1805

if.then138:                                       ; preds = %sw.epilog
  %ewald_geometry = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 22, !dbg !1803
  %39 = load i32* %ewald_geometry, align 4, !dbg !1803, !tbaa !1183
  %epsilon_surface = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 23, !dbg !1803
  %40 = load i32* %epsilon_surface, align 4, !dbg !1803, !tbaa !1183
  %conv140 = sitofp i32 %40 to float, !dbg !1803
  %call141 = call float @ewald_LRcorrection(%struct._IO_FILE* %fp, %struct.t_nsborder* %nsb, %struct.t_commrec* %cr, %struct.t_forcerec* %fr, float* %38, %struct.t_block* %excl, [3 x float]* %x, [3 x float]* %box, float* %mu_tot, float %qsum, i32 %39, float %conv140, [3 x float]* %lr_vir) #5, !dbg !1803
  call void @llvm.dbg.value(metadata !{float %call141}, i64 0, metadata !1057), !dbg !1803
  br label %if.end145, !dbg !1803

if.else142:                                       ; preds = %sw.epilog
  %call144 = call float @shift_LRcorrection(%struct._IO_FILE* %fp, %struct.t_nsborder* %nsb, %struct.t_commrec* %cr, %struct.t_forcerec* %fr, float* %38, %struct.t_block* %excl, [3 x float]* %x, i32 1, [3 x float]* %box, [3 x float]* %lr_vir) #5, !dbg !1806
  call void @llvm.dbg.value(metadata !{float %call144}, i64 0, metadata !1057), !dbg !1806
  br label %if.end145

if.end145:                                        ; preds = %if.else142, %if.then138
  %Vcorr.0 = phi float [ %call141, %if.then138 ], [ %call144, %if.else142 ]
  %add146 = fadd float %Vlr.0, %Vcorr.0, !dbg !1807
  %arrayidx147 = getelementptr inbounds float* %epot, i64 18, !dbg !1807
  store float %add146, float* %arrayidx147, align 4, !dbg !1807, !tbaa !1186
  %41 = load %struct._IO_FILE** @debug, align 8, !dbg !1808, !tbaa !1242
  %tobool148 = icmp eq %struct._IO_FILE* %41, null, !dbg !1808
  br i1 %tobool148, label %if.end163, label %if.end155, !dbg !1808

if.end155:                                        ; preds = %if.end145
  %conv150 = fpext float %Vlr.0 to double, !dbg !1809
  %conv151 = fpext float %Vcorr.0 to double, !dbg !1809
  %conv153 = fpext float %add146 to double, !dbg !1809
  %call154 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([37 x i8]* @.str50, i64 0, i64 0), double %conv150, double %conv151, double %conv153) #5, !dbg !1809
  %.pr = load %struct._IO_FILE** @debug, align 8, !dbg !1810, !tbaa !1242
  %tobool156 = icmp eq %struct._IO_FILE* %.pr, null, !dbg !1810
  br i1 %tobool156, label %if.end163, label %if.then157, !dbg !1810

if.then157:                                       ; preds = %if.end155
  call void @pr_rvecs(%struct._IO_FILE* %.pr, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str51, i64 0, i64 0), [3 x float]* %lr_vir, i32 3) #5, !dbg !1811
  %42 = load %struct._IO_FILE** @debug, align 8, !dbg !1813, !tbaa !1242
  %fshift158 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58, !dbg !1813
  %43 = load [3 x float]** %fshift158, align 8, !dbg !1813, !tbaa !1242
  call void @pr_rvecs(%struct._IO_FILE* %42, i32 0, i8* getelementptr inbounds ([28 x i8]* @.str52, i64 0, i64 0), [3 x float]* %43, i32 27) #5, !dbg !1813
  br label %if.end160, !dbg !1814

if.end160:                                        ; preds = %if.end99, %if.then157
  %.pr311.pr = load %struct._IO_FILE** @debug, align 8, !dbg !1815, !tbaa !1242
  %tobool161 = icmp eq %struct._IO_FILE* %.pr311.pr, null, !dbg !1815
  br i1 %tobool161, label %if.end163, label %if.then162, !dbg !1815

if.then162:                                       ; preds = %if.end160
  call void @print_nrnb(%struct._IO_FILE* %.pr311.pr, %struct.t_nrnb* %nrnb) #5, !dbg !1816
  br label %if.end163, !dbg !1816

if.end163:                                        ; preds = %if.end145, %if.end155, %if.end160, %if.then162
  br i1 %tobool34, label %if.end179, label %if.then165, !dbg !1817

if.then165:                                       ; preds = %if.end163
  %ngener166 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 3, !dbg !1818
  %44 = load i32* %ngener166, align 4, !dbg !1818, !tbaa !1183
  %arrayidx169 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 6, !dbg !1818
  %45 = load float** %arrayidx169, align 8, !dbg !1818, !tbaa !1242
  %arrayidx172 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 5, !dbg !1818
  %46 = load float** %arrayidx172, align 8, !dbg !1818, !tbaa !1242
  %bSepDVDL = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 32, !dbg !1818
  %47 = load i32* %bSepDVDL, align 4, !dbg !1818, !tbaa !1183
  %tobool173 = icmp eq i32 %47, 0, !dbg !1818
  br i1 %tobool173, label %land.end177, label %land.rhs174, !dbg !1818

land.rhs174:                                      ; preds = %if.then165
  %nstlog = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 8, !dbg !1820
  %48 = load i32* %nstlog, align 4, !dbg !1820, !tbaa !1183
  %call175 = call i32 @do_per_step(i32 %step, i32 %48) #5, !dbg !1820
  %tobool176 = icmp ne i32 %call175, 0, !dbg !1820
  br label %land.end177

land.end177:                                      ; preds = %if.then165, %land.rhs174
  %49 = phi i1 [ false, %if.then165 ], [ %tobool176, %land.rhs174 ]
  %land.ext178 = zext i1 %49 to i32
  call void @calc_bonds(%struct._IO_FILE* %fp, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_idef* %idef, [3 x float]* %x, [3 x float]* %f, %struct.t_forcerec* %fr, %struct.t_graph* %graph, float* %epot, %struct.t_nrnb* %nrnb, [3 x float]* %box, float %lambda, %struct.t_mdatoms* %md, i32 %44, float* %45, float* %46, %struct.t_fcdata* %fcd, i32 %step, i32 %land.ext178) #5
  br label %if.end179, !dbg !1821

if.end179:                                        ; preds = %if.end163, %land.end177
  %50 = load %struct._IO_FILE** @debug, align 8, !dbg !1822, !tbaa !1242
  %tobool180 = icmp eq %struct._IO_FILE* %50, null, !dbg !1822
  br i1 %tobool180, label %for.cond184.preheader, label %if.then181, !dbg !1822

if.then181:                                       ; preds = %if.end179
  %fshift182 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58, !dbg !1823
  %51 = load [3 x float]** %fshift182, align 8, !dbg !1823, !tbaa !1242
  call void @pr_rvecs(%struct._IO_FILE* %50, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str53, i64 0, i64 0), [3 x float]* %51, i32 27) #5, !dbg !1823
  br label %for.cond184.preheader, !dbg !1823

for.cond184.preheader:                            ; preds = %if.end179, %if.then181
  %arrayidx193 = getelementptr inbounds float* %epot, i64 37, !dbg !1824
  br label %for.body187, !dbg !1826

for.body187:                                      ; preds = %for.inc196, %for.cond184.preheader
  %indvars.iv = phi i64 [ 0, %for.cond184.preheader ], [ %indvars.iv.next, %for.inc196 ]
  %52 = trunc i64 %indvars.iv to i32, !dbg !1827
  %cmp188 = icmp eq i32 %52, 21, !dbg !1827
  br i1 %cmp188, label %for.inc196, label %if.then190, !dbg !1827

if.then190:                                       ; preds = %for.body187
  %arrayidx192 = getelementptr inbounds float* %epot, i64 %indvars.iv, !dbg !1824
  %53 = load float* %arrayidx192, align 4, !dbg !1824, !tbaa !1186
  %54 = load float* %arrayidx193, align 4, !dbg !1824, !tbaa !1186
  %add194 = fadd float %53, %54, !dbg !1824
  store float %add194, float* %arrayidx193, align 4, !dbg !1824, !tbaa !1186
  br label %for.inc196, !dbg !1824

for.inc196:                                       ; preds = %for.body187, %if.then190
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1826
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1826
  %exitcond = icmp eq i32 %lftr.wideiv, 37, !dbg !1826
  br i1 %exitcond, label %for.end198, label %for.body187, !dbg !1826

for.end198:                                       ; preds = %for.inc196
  ret void, !dbg !1828
}

; Function Attrs: optsize
declare void @do_fnbf(%struct._IO_FILE*, %struct.t_commrec*, %struct.t_forcerec*, [3 x float]*, [3 x float]*, %struct.t_mdatoms*, float*, float*, float*, %struct.t_nrnb*, float, float*, i32, i32) #2

; Function Attrs: optsize
declare void @pr_rvecs(%struct._IO_FILE*, i32, i8*, [3 x float]*, i32) #2

; Function Attrs: optsize
declare void @shift_self(%struct.t_graph*, [3 x float]*, [3 x float]*) #2

; Function Attrs: optsize
declare float @do_pppm(%struct._IO_FILE*, i32, [3 x float]*, [3 x float]*, float*, float*, float*, %struct.t_commrec*, %struct.t_nsborder*, %struct.t_nrnb*) #2

; Function Attrs: optsize
declare float @do_poisson(%struct._IO_FILE*, i32, %struct.t_inputrec*, i32, [3 x float]*, [3 x float]*, float*, float*, float*, %struct.t_commrec*, %struct.t_nrnb*, i32*, i32) #2

; Function Attrs: optsize
declare float @do_pme(%struct._IO_FILE*, i32, %struct.t_inputrec*, [3 x float]*, [3 x float]*, float*, [3 x float]*, %struct.t_commrec*, %struct.t_nsborder*, %struct.t_nrnb*, [3 x float]*, float, i32) #2

; Function Attrs: optsize
declare float @do_ewald(%struct._IO_FILE*, i32, %struct.t_inputrec*, [3 x float]*, [3 x float]*, float*, float*, %struct.t_commrec*, %struct.t_nsborder*, [3 x float]*, float) #2

; Function Attrs: optsize
declare float @ewald_LRcorrection(%struct._IO_FILE*, %struct.t_nsborder*, %struct.t_commrec*, %struct.t_forcerec*, float*, %struct.t_block*, [3 x float]*, [3 x float]*, float*, float, i32, float, [3 x float]*) #2

; Function Attrs: optsize
declare float @shift_LRcorrection(%struct._IO_FILE*, %struct.t_nsborder*, %struct.t_commrec*, %struct.t_forcerec*, float*, %struct.t_block*, [3 x float]*, i32, [3 x float]*, [3 x float]*) #2

; Function Attrs: optsize
declare void @print_nrnb(%struct._IO_FILE*, %struct.t_nrnb*) #2

; Function Attrs: optsize
declare void @calc_bonds(%struct._IO_FILE*, %struct.t_commrec*, %struct.t_commrec*, %struct.t_idef*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, float*, %struct.t_nrnb*, [3 x float]*, float, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*, i32, i32) #2

; Function Attrs: optsize
declare i32 @do_per_step(i32, i32) #2

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize
declare double @sqrt(double) #3

; Function Attrs: optsize
declare void @please_cite(%struct._IO_FILE*, i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !246, metadata !247, metadata !1175, metadata !246, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !10, metadata !15, metadata !28, metadata !35, metadata !83, metadata !89, metadata !94, metadata !105, metadata !239}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 38, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 38, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/enums.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9}
!6 = metadata !{i32 786472, metadata !"ebCGS", i64 0} ; [ DW_TAG_enumerator ] [ebCGS :: 0]
!7 = metadata !{i32 786472, metadata !"ebMOLS", i64 1} ; [ DW_TAG_enumerator ] [ebMOLS :: 1]
!8 = metadata !{i32 786472, metadata !"ebSBLOCKS", i64 2} ; [ DW_TAG_enumerator ] [ebSBLOCKS :: 2]
!9 = metadata !{i32 786472, metadata !"ebNR", i64 3} ; [ DW_TAG_enumerator ] [ebNR :: 3]
!10 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 75, i64 32, i64 32, i32 0, i32 0, null, metadata !11, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 75, size 32, align 32, offset 0] [from ]
!11 = metadata !{metadata !12, metadata !13, metadata !14}
!12 = metadata !{i32 786472, metadata !"ensGRID", i64 0} ; [ DW_TAG_enumerator ] [ensGRID :: 0]
!13 = metadata !{i32 786472, metadata !"ensSIMPLE", i64 1} ; [ DW_TAG_enumerator ] [ensSIMPLE :: 1]
!14 = metadata !{i32 786472, metadata !"ensNR", i64 2} ; [ DW_TAG_enumerator ] [ensNR :: 2]
!15 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 59, i64 32, i64 32, i32 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 59, size 32, align 32, offset 0] [from ]
!16 = metadata !{metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27}
!17 = metadata !{i32 786472, metadata !"eelCUT", i64 0} ; [ DW_TAG_enumerator ] [eelCUT :: 0]
!18 = metadata !{i32 786472, metadata !"eelRF", i64 1} ; [ DW_TAG_enumerator ] [eelRF :: 1]
!19 = metadata !{i32 786472, metadata !"eelGRF", i64 2} ; [ DW_TAG_enumerator ] [eelGRF :: 2]
!20 = metadata !{i32 786472, metadata !"eelPME", i64 3} ; [ DW_TAG_enumerator ] [eelPME :: 3]
!21 = metadata !{i32 786472, metadata !"eelEWALD", i64 4} ; [ DW_TAG_enumerator ] [eelEWALD :: 4]
!22 = metadata !{i32 786472, metadata !"eelPPPM", i64 5} ; [ DW_TAG_enumerator ] [eelPPPM :: 5]
!23 = metadata !{i32 786472, metadata !"eelPOISSON", i64 6} ; [ DW_TAG_enumerator ] [eelPOISSON :: 6]
!24 = metadata !{i32 786472, metadata !"eelSWITCH", i64 7} ; [ DW_TAG_enumerator ] [eelSWITCH :: 7]
!25 = metadata !{i32 786472, metadata !"eelSHIFT", i64 8} ; [ DW_TAG_enumerator ] [eelSHIFT :: 8]
!26 = metadata !{i32 786472, metadata !"eelUSER", i64 9} ; [ DW_TAG_enumerator ] [eelUSER :: 9]
!27 = metadata !{i32 786472, metadata !"eelNR", i64 10} ; [ DW_TAG_enumerator ] [eelNR :: 10]
!28 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 71, i64 32, i64 32, i32 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 71, size 32, align 32, offset 0] [from ]
!29 = metadata !{metadata !30, metadata !31, metadata !32, metadata !33, metadata !34}
!30 = metadata !{i32 786472, metadata !"evdwCUT", i64 0} ; [ DW_TAG_enumerator ] [evdwCUT :: 0]
!31 = metadata !{i32 786472, metadata !"evdwSWITCH", i64 1} ; [ DW_TAG_enumerator ] [evdwSWITCH :: 1]
!32 = metadata !{i32 786472, metadata !"evdwSHIFT", i64 2} ; [ DW_TAG_enumerator ] [evdwSHIFT :: 2]
!33 = metadata !{i32 786472, metadata !"evdwUSER", i64 3} ; [ DW_TAG_enumerator ] [evdwUSER :: 3]
!34 = metadata !{i32 786472, metadata !"evdwNR", i64 4} ; [ DW_TAG_enumerator ] [evdwNR :: 4]
!35 = metadata !{i32 786436, metadata !36, null, metadata !"", i32 49, i64 32, i64 32, i32 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 49, size 32, align 32, offset 0] [from ]
!36 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/idef.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!37 = metadata !{metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82}
!38 = metadata !{i32 786472, metadata !"F_BONDS", i64 0} ; [ DW_TAG_enumerator ] [F_BONDS :: 0]
!39 = metadata !{i32 786472, metadata !"F_G96BONDS", i64 1} ; [ DW_TAG_enumerator ] [F_G96BONDS :: 1]
!40 = metadata !{i32 786472, metadata !"F_MORSE", i64 2} ; [ DW_TAG_enumerator ] [F_MORSE :: 2]
!41 = metadata !{i32 786472, metadata !"F_CUBICBONDS", i64 3} ; [ DW_TAG_enumerator ] [F_CUBICBONDS :: 3]
!42 = metadata !{i32 786472, metadata !"F_CONNBONDS", i64 4} ; [ DW_TAG_enumerator ] [F_CONNBONDS :: 4]
!43 = metadata !{i32 786472, metadata !"F_HARMONIC", i64 5} ; [ DW_TAG_enumerator ] [F_HARMONIC :: 5]
!44 = metadata !{i32 786472, metadata !"F_ANGLES", i64 6} ; [ DW_TAG_enumerator ] [F_ANGLES :: 6]
!45 = metadata !{i32 786472, metadata !"F_G96ANGLES", i64 7} ; [ DW_TAG_enumerator ] [F_G96ANGLES :: 7]
!46 = metadata !{i32 786472, metadata !"F_PDIHS", i64 8} ; [ DW_TAG_enumerator ] [F_PDIHS :: 8]
!47 = metadata !{i32 786472, metadata !"F_RBDIHS", i64 9} ; [ DW_TAG_enumerator ] [F_RBDIHS :: 9]
!48 = metadata !{i32 786472, metadata !"F_IDIHS", i64 10} ; [ DW_TAG_enumerator ] [F_IDIHS :: 10]
!49 = metadata !{i32 786472, metadata !"F_LJ14", i64 11} ; [ DW_TAG_enumerator ] [F_LJ14 :: 11]
!50 = metadata !{i32 786472, metadata !"F_COUL14", i64 12} ; [ DW_TAG_enumerator ] [F_COUL14 :: 12]
!51 = metadata !{i32 786472, metadata !"F_LJ", i64 13} ; [ DW_TAG_enumerator ] [F_LJ :: 13]
!52 = metadata !{i32 786472, metadata !"F_BHAM", i64 14} ; [ DW_TAG_enumerator ] [F_BHAM :: 14]
!53 = metadata !{i32 786472, metadata !"F_LJLR", i64 15} ; [ DW_TAG_enumerator ] [F_LJLR :: 15]
!54 = metadata !{i32 786472, metadata !"F_DISPCORR", i64 16} ; [ DW_TAG_enumerator ] [F_DISPCORR :: 16]
!55 = metadata !{i32 786472, metadata !"F_SR", i64 17} ; [ DW_TAG_enumerator ] [F_SR :: 17]
!56 = metadata !{i32 786472, metadata !"F_LR", i64 18} ; [ DW_TAG_enumerator ] [F_LR :: 18]
!57 = metadata !{i32 786472, metadata !"F_WPOL", i64 19} ; [ DW_TAG_enumerator ] [F_WPOL :: 19]
!58 = metadata !{i32 786472, metadata !"F_POSRES", i64 20} ; [ DW_TAG_enumerator ] [F_POSRES :: 20]
!59 = metadata !{i32 786472, metadata !"F_DISRES", i64 21} ; [ DW_TAG_enumerator ] [F_DISRES :: 21]
!60 = metadata !{i32 786472, metadata !"F_DISRESVIOL", i64 22} ; [ DW_TAG_enumerator ] [F_DISRESVIOL :: 22]
!61 = metadata !{i32 786472, metadata !"F_ORIRES", i64 23} ; [ DW_TAG_enumerator ] [F_ORIRES :: 23]
!62 = metadata !{i32 786472, metadata !"F_ORIRESDEV", i64 24} ; [ DW_TAG_enumerator ] [F_ORIRESDEV :: 24]
!63 = metadata !{i32 786472, metadata !"F_ANGRES", i64 25} ; [ DW_TAG_enumerator ] [F_ANGRES :: 25]
!64 = metadata !{i32 786472, metadata !"F_ANGRESZ", i64 26} ; [ DW_TAG_enumerator ] [F_ANGRESZ :: 26]
!65 = metadata !{i32 786472, metadata !"F_SHAKE", i64 27} ; [ DW_TAG_enumerator ] [F_SHAKE :: 27]
!66 = metadata !{i32 786472, metadata !"F_SHAKENC", i64 28} ; [ DW_TAG_enumerator ] [F_SHAKENC :: 28]
!67 = metadata !{i32 786472, metadata !"F_SETTLE", i64 29} ; [ DW_TAG_enumerator ] [F_SETTLE :: 29]
!68 = metadata !{i32 786472, metadata !"F_DUMMY2", i64 30} ; [ DW_TAG_enumerator ] [F_DUMMY2 :: 30]
!69 = metadata !{i32 786472, metadata !"F_DUMMY3", i64 31} ; [ DW_TAG_enumerator ] [F_DUMMY3 :: 31]
!70 = metadata !{i32 786472, metadata !"F_DUMMY3FD", i64 32} ; [ DW_TAG_enumerator ] [F_DUMMY3FD :: 32]
!71 = metadata !{i32 786472, metadata !"F_DUMMY3FAD", i64 33} ; [ DW_TAG_enumerator ] [F_DUMMY3FAD :: 33]
!72 = metadata !{i32 786472, metadata !"F_DUMMY3OUT", i64 34} ; [ DW_TAG_enumerator ] [F_DUMMY3OUT :: 34]
!73 = metadata !{i32 786472, metadata !"F_DUMMY4FD", i64 35} ; [ DW_TAG_enumerator ] [F_DUMMY4FD :: 35]
!74 = metadata !{i32 786472, metadata !"F_EQM", i64 36} ; [ DW_TAG_enumerator ] [F_EQM :: 36]
!75 = metadata !{i32 786472, metadata !"F_EPOT", i64 37} ; [ DW_TAG_enumerator ] [F_EPOT :: 37]
!76 = metadata !{i32 786472, metadata !"F_EKIN", i64 38} ; [ DW_TAG_enumerator ] [F_EKIN :: 38]
!77 = metadata !{i32 786472, metadata !"F_ETOT", i64 39} ; [ DW_TAG_enumerator ] [F_ETOT :: 39]
!78 = metadata !{i32 786472, metadata !"F_TEMP", i64 40} ; [ DW_TAG_enumerator ] [F_TEMP :: 40]
!79 = metadata !{i32 786472, metadata !"F_PRES", i64 41} ; [ DW_TAG_enumerator ] [F_PRES :: 41]
!80 = metadata !{i32 786472, metadata !"F_DVDL", i64 42} ; [ DW_TAG_enumerator ] [F_DVDL :: 42]
!81 = metadata !{i32 786472, metadata !"F_DVDLKIN", i64 43} ; [ DW_TAG_enumerator ] [F_DVDLKIN :: 43]
!82 = metadata !{i32 786472, metadata !"F_NRE", i64 44} ; [ DW_TAG_enumerator ] [F_NRE :: 44]
!83 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 116, i64 32, i64 32, i32 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 116, size 32, align 32, offset 0] [from ]
!84 = metadata !{metadata !85, metadata !86, metadata !87, metadata !88}
!85 = metadata !{i32 786472, metadata !"edispcNO", i64 0} ; [ DW_TAG_enumerator ] [edispcNO :: 0]
!86 = metadata !{i32 786472, metadata !"edispcEnerPres", i64 1} ; [ DW_TAG_enumerator ] [edispcEnerPres :: 1]
!87 = metadata !{i32 786472, metadata !"edispcEner", i64 2} ; [ DW_TAG_enumerator ] [edispcEner :: 2]
!88 = metadata !{i32 786472, metadata !"edispcNR", i64 3} ; [ DW_TAG_enumerator ] [edispcNR :: 3]
!89 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 106, i64 32, i64 32, i32 0, i32 0, null, metadata !90, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 106, size 32, align 32, offset 0] [from ]
!90 = metadata !{metadata !91, metadata !92, metadata !93}
!91 = metadata !{i32 786472, metadata !"efepNO", i64 0} ; [ DW_TAG_enumerator ] [efepNO :: 0]
!92 = metadata !{i32 786472, metadata !"efepYES", i64 1} ; [ DW_TAG_enumerator ] [efepYES :: 1]
!93 = metadata !{i32 786472, metadata !"efepNR", i64 2} ; [ DW_TAG_enumerator ] [efepNR :: 2]
!94 = metadata !{i32 786436, metadata !95, null, metadata !"", i32 36, i64 32, i64 32, i32 0, i32 0, null, metadata !96, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 36, size 32, align 32, offset 0] [from ]
!95 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/group.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!96 = metadata !{metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104}
!97 = metadata !{i32 786472, metadata !"egCOUL", i64 0} ; [ DW_TAG_enumerator ] [egCOUL :: 0]
!98 = metadata !{i32 786472, metadata !"egLJ", i64 1} ; [ DW_TAG_enumerator ] [egLJ :: 1]
!99 = metadata !{i32 786472, metadata !"egBHAM", i64 2} ; [ DW_TAG_enumerator ] [egBHAM :: 2]
!100 = metadata !{i32 786472, metadata !"egLR", i64 3} ; [ DW_TAG_enumerator ] [egLR :: 3]
!101 = metadata !{i32 786472, metadata !"egLJLR", i64 4} ; [ DW_TAG_enumerator ] [egLJLR :: 4]
!102 = metadata !{i32 786472, metadata !"egCOUL14", i64 5} ; [ DW_TAG_enumerator ] [egCOUL14 :: 5]
!103 = metadata !{i32 786472, metadata !"egLJ14", i64 6} ; [ DW_TAG_enumerator ] [egLJ14 :: 6]
!104 = metadata !{i32 786472, metadata !"egNR", i64 7} ; [ DW_TAG_enumerator ] [egNR :: 7]
!105 = metadata !{i32 786436, metadata !106, null, metadata !"", i32 51, i64 32, i64 32, i32 0, i32 0, null, metadata !107, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 51, size 32, align 32, offset 0] [from ]
!106 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/nrnb.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!107 = metadata !{metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238}
!108 = metadata !{i32 786472, metadata !"eNR_INL0100", i64 0} ; [ DW_TAG_enumerator ] [eNR_INL0100 :: 0]
!109 = metadata !{i32 786472, metadata !"eNR_INL0110", i64 1} ; [ DW_TAG_enumerator ] [eNR_INL0110 :: 1]
!110 = metadata !{i32 786472, metadata !"eNR_INL0200", i64 2} ; [ DW_TAG_enumerator ] [eNR_INL0200 :: 2]
!111 = metadata !{i32 786472, metadata !"eNR_INL0210", i64 3} ; [ DW_TAG_enumerator ] [eNR_INL0210 :: 3]
!112 = metadata !{i32 786472, metadata !"eNR_INL0300", i64 4} ; [ DW_TAG_enumerator ] [eNR_INL0300 :: 4]
!113 = metadata !{i32 786472, metadata !"eNR_INL0310", i64 5} ; [ DW_TAG_enumerator ] [eNR_INL0310 :: 5]
!114 = metadata !{i32 786472, metadata !"eNR_INL0301", i64 6} ; [ DW_TAG_enumerator ] [eNR_INL0301 :: 6]
!115 = metadata !{i32 786472, metadata !"eNR_INL0302", i64 7} ; [ DW_TAG_enumerator ] [eNR_INL0302 :: 7]
!116 = metadata !{i32 786472, metadata !"eNR_INL0400", i64 8} ; [ DW_TAG_enumerator ] [eNR_INL0400 :: 8]
!117 = metadata !{i32 786472, metadata !"eNR_INL0410", i64 9} ; [ DW_TAG_enumerator ] [eNR_INL0410 :: 9]
!118 = metadata !{i32 786472, metadata !"eNR_INL0401", i64 10} ; [ DW_TAG_enumerator ] [eNR_INL0401 :: 10]
!119 = metadata !{i32 786472, metadata !"eNR_INL0402", i64 11} ; [ DW_TAG_enumerator ] [eNR_INL0402 :: 11]
!120 = metadata !{i32 786472, metadata !"eNR_INL1000", i64 12} ; [ DW_TAG_enumerator ] [eNR_INL1000 :: 12]
!121 = metadata !{i32 786472, metadata !"eNR_INL1010", i64 13} ; [ DW_TAG_enumerator ] [eNR_INL1010 :: 13]
!122 = metadata !{i32 786472, metadata !"eNR_INL1020", i64 14} ; [ DW_TAG_enumerator ] [eNR_INL1020 :: 14]
!123 = metadata !{i32 786472, metadata !"eNR_INL1030", i64 15} ; [ DW_TAG_enumerator ] [eNR_INL1030 :: 15]
!124 = metadata !{i32 786472, metadata !"eNR_INL1100", i64 16} ; [ DW_TAG_enumerator ] [eNR_INL1100 :: 16]
!125 = metadata !{i32 786472, metadata !"eNR_INL1110", i64 17} ; [ DW_TAG_enumerator ] [eNR_INL1110 :: 17]
!126 = metadata !{i32 786472, metadata !"eNR_INL1120", i64 18} ; [ DW_TAG_enumerator ] [eNR_INL1120 :: 18]
!127 = metadata !{i32 786472, metadata !"eNR_INL1130", i64 19} ; [ DW_TAG_enumerator ] [eNR_INL1130 :: 19]
!128 = metadata !{i32 786472, metadata !"eNR_INL1200", i64 20} ; [ DW_TAG_enumerator ] [eNR_INL1200 :: 20]
!129 = metadata !{i32 786472, metadata !"eNR_INL1210", i64 21} ; [ DW_TAG_enumerator ] [eNR_INL1210 :: 21]
!130 = metadata !{i32 786472, metadata !"eNR_INL1220", i64 22} ; [ DW_TAG_enumerator ] [eNR_INL1220 :: 22]
!131 = metadata !{i32 786472, metadata !"eNR_INL1230", i64 23} ; [ DW_TAG_enumerator ] [eNR_INL1230 :: 23]
!132 = metadata !{i32 786472, metadata !"eNR_INL1300", i64 24} ; [ DW_TAG_enumerator ] [eNR_INL1300 :: 24]
!133 = metadata !{i32 786472, metadata !"eNR_INL1310", i64 25} ; [ DW_TAG_enumerator ] [eNR_INL1310 :: 25]
!134 = metadata !{i32 786472, metadata !"eNR_INL1320", i64 26} ; [ DW_TAG_enumerator ] [eNR_INL1320 :: 26]
!135 = metadata !{i32 786472, metadata !"eNR_INL1330", i64 27} ; [ DW_TAG_enumerator ] [eNR_INL1330 :: 27]
!136 = metadata !{i32 786472, metadata !"eNR_INL1400", i64 28} ; [ DW_TAG_enumerator ] [eNR_INL1400 :: 28]
!137 = metadata !{i32 786472, metadata !"eNR_INL1410", i64 29} ; [ DW_TAG_enumerator ] [eNR_INL1410 :: 29]
!138 = metadata !{i32 786472, metadata !"eNR_INL1420", i64 30} ; [ DW_TAG_enumerator ] [eNR_INL1420 :: 30]
!139 = metadata !{i32 786472, metadata !"eNR_INL1430", i64 31} ; [ DW_TAG_enumerator ] [eNR_INL1430 :: 31]
!140 = metadata !{i32 786472, metadata !"eNR_INL2000", i64 32} ; [ DW_TAG_enumerator ] [eNR_INL2000 :: 32]
!141 = metadata !{i32 786472, metadata !"eNR_INL2010", i64 33} ; [ DW_TAG_enumerator ] [eNR_INL2010 :: 33]
!142 = metadata !{i32 786472, metadata !"eNR_INL2020", i64 34} ; [ DW_TAG_enumerator ] [eNR_INL2020 :: 34]
!143 = metadata !{i32 786472, metadata !"eNR_INL2030", i64 35} ; [ DW_TAG_enumerator ] [eNR_INL2030 :: 35]
!144 = metadata !{i32 786472, metadata !"eNR_INL2100", i64 36} ; [ DW_TAG_enumerator ] [eNR_INL2100 :: 36]
!145 = metadata !{i32 786472, metadata !"eNR_INL2110", i64 37} ; [ DW_TAG_enumerator ] [eNR_INL2110 :: 37]
!146 = metadata !{i32 786472, metadata !"eNR_INL2120", i64 38} ; [ DW_TAG_enumerator ] [eNR_INL2120 :: 38]
!147 = metadata !{i32 786472, metadata !"eNR_INL2130", i64 39} ; [ DW_TAG_enumerator ] [eNR_INL2130 :: 39]
!148 = metadata !{i32 786472, metadata !"eNR_INL2200", i64 40} ; [ DW_TAG_enumerator ] [eNR_INL2200 :: 40]
!149 = metadata !{i32 786472, metadata !"eNR_INL2210", i64 41} ; [ DW_TAG_enumerator ] [eNR_INL2210 :: 41]
!150 = metadata !{i32 786472, metadata !"eNR_INL2220", i64 42} ; [ DW_TAG_enumerator ] [eNR_INL2220 :: 42]
!151 = metadata !{i32 786472, metadata !"eNR_INL2230", i64 43} ; [ DW_TAG_enumerator ] [eNR_INL2230 :: 43]
!152 = metadata !{i32 786472, metadata !"eNR_INL2300", i64 44} ; [ DW_TAG_enumerator ] [eNR_INL2300 :: 44]
!153 = metadata !{i32 786472, metadata !"eNR_INL2310", i64 45} ; [ DW_TAG_enumerator ] [eNR_INL2310 :: 45]
!154 = metadata !{i32 786472, metadata !"eNR_INL2320", i64 46} ; [ DW_TAG_enumerator ] [eNR_INL2320 :: 46]
!155 = metadata !{i32 786472, metadata !"eNR_INL2330", i64 47} ; [ DW_TAG_enumerator ] [eNR_INL2330 :: 47]
!156 = metadata !{i32 786472, metadata !"eNR_INL2400", i64 48} ; [ DW_TAG_enumerator ] [eNR_INL2400 :: 48]
!157 = metadata !{i32 786472, metadata !"eNR_INL2410", i64 49} ; [ DW_TAG_enumerator ] [eNR_INL2410 :: 49]
!158 = metadata !{i32 786472, metadata !"eNR_INL2420", i64 50} ; [ DW_TAG_enumerator ] [eNR_INL2420 :: 50]
!159 = metadata !{i32 786472, metadata !"eNR_INL2430", i64 51} ; [ DW_TAG_enumerator ] [eNR_INL2430 :: 51]
!160 = metadata !{i32 786472, metadata !"eNR_INL3000", i64 52} ; [ DW_TAG_enumerator ] [eNR_INL3000 :: 52]
!161 = metadata !{i32 786472, metadata !"eNR_INL3001", i64 53} ; [ DW_TAG_enumerator ] [eNR_INL3001 :: 53]
!162 = metadata !{i32 786472, metadata !"eNR_INL3002", i64 54} ; [ DW_TAG_enumerator ] [eNR_INL3002 :: 54]
!163 = metadata !{i32 786472, metadata !"eNR_INL3010", i64 55} ; [ DW_TAG_enumerator ] [eNR_INL3010 :: 55]
!164 = metadata !{i32 786472, metadata !"eNR_INL3020", i64 56} ; [ DW_TAG_enumerator ] [eNR_INL3020 :: 56]
!165 = metadata !{i32 786472, metadata !"eNR_INL3030", i64 57} ; [ DW_TAG_enumerator ] [eNR_INL3030 :: 57]
!166 = metadata !{i32 786472, metadata !"eNR_INL3100", i64 58} ; [ DW_TAG_enumerator ] [eNR_INL3100 :: 58]
!167 = metadata !{i32 786472, metadata !"eNR_INL3110", i64 59} ; [ DW_TAG_enumerator ] [eNR_INL3110 :: 59]
!168 = metadata !{i32 786472, metadata !"eNR_INL3120", i64 60} ; [ DW_TAG_enumerator ] [eNR_INL3120 :: 60]
!169 = metadata !{i32 786472, metadata !"eNR_INL3130", i64 61} ; [ DW_TAG_enumerator ] [eNR_INL3130 :: 61]
!170 = metadata !{i32 786472, metadata !"eNR_INL3200", i64 62} ; [ DW_TAG_enumerator ] [eNR_INL3200 :: 62]
!171 = metadata !{i32 786472, metadata !"eNR_INL3210", i64 63} ; [ DW_TAG_enumerator ] [eNR_INL3210 :: 63]
!172 = metadata !{i32 786472, metadata !"eNR_INL3220", i64 64} ; [ DW_TAG_enumerator ] [eNR_INL3220 :: 64]
!173 = metadata !{i32 786472, metadata !"eNR_INL3230", i64 65} ; [ DW_TAG_enumerator ] [eNR_INL3230 :: 65]
!174 = metadata !{i32 786472, metadata !"eNR_INL3300", i64 66} ; [ DW_TAG_enumerator ] [eNR_INL3300 :: 66]
!175 = metadata !{i32 786472, metadata !"eNR_INL3301", i64 67} ; [ DW_TAG_enumerator ] [eNR_INL3301 :: 67]
!176 = metadata !{i32 786472, metadata !"eNR_INL3302", i64 68} ; [ DW_TAG_enumerator ] [eNR_INL3302 :: 68]
!177 = metadata !{i32 786472, metadata !"eNR_INL3310", i64 69} ; [ DW_TAG_enumerator ] [eNR_INL3310 :: 69]
!178 = metadata !{i32 786472, metadata !"eNR_INL3320", i64 70} ; [ DW_TAG_enumerator ] [eNR_INL3320 :: 70]
!179 = metadata !{i32 786472, metadata !"eNR_INL3330", i64 71} ; [ DW_TAG_enumerator ] [eNR_INL3330 :: 71]
!180 = metadata !{i32 786472, metadata !"eNR_INL3400", i64 72} ; [ DW_TAG_enumerator ] [eNR_INL3400 :: 72]
!181 = metadata !{i32 786472, metadata !"eNR_INL3401", i64 73} ; [ DW_TAG_enumerator ] [eNR_INL3401 :: 73]
!182 = metadata !{i32 786472, metadata !"eNR_INL3402", i64 74} ; [ DW_TAG_enumerator ] [eNR_INL3402 :: 74]
!183 = metadata !{i32 786472, metadata !"eNR_INL3410", i64 75} ; [ DW_TAG_enumerator ] [eNR_INL3410 :: 75]
!184 = metadata !{i32 786472, metadata !"eNR_INL3420", i64 76} ; [ DW_TAG_enumerator ] [eNR_INL3420 :: 76]
!185 = metadata !{i32 786472, metadata !"eNR_INL3430", i64 77} ; [ DW_TAG_enumerator ] [eNR_INL3430 :: 77]
!186 = metadata !{i32 786472, metadata !"eNR_INLOOP", i64 78} ; [ DW_TAG_enumerator ] [eNR_INLOOP :: 78]
!187 = metadata !{i32 786472, metadata !"eNR_INL_IATOM", i64 78} ; [ DW_TAG_enumerator ] [eNR_INL_IATOM :: 78]
!188 = metadata !{i32 786472, metadata !"eNR_WEIGHTS", i64 79} ; [ DW_TAG_enumerator ] [eNR_WEIGHTS :: 79]
!189 = metadata !{i32 786472, metadata !"eNR_SPREADQ", i64 80} ; [ DW_TAG_enumerator ] [eNR_SPREADQ :: 80]
!190 = metadata !{i32 786472, metadata !"eNR_SPREADQBSP", i64 81} ; [ DW_TAG_enumerator ] [eNR_SPREADQBSP :: 81]
!191 = metadata !{i32 786472, metadata !"eNR_GATHERF", i64 82} ; [ DW_TAG_enumerator ] [eNR_GATHERF :: 82]
!192 = metadata !{i32 786472, metadata !"eNR_GATHERFBSP", i64 83} ; [ DW_TAG_enumerator ] [eNR_GATHERFBSP :: 83]
!193 = metadata !{i32 786472, metadata !"eNR_FFT", i64 84} ; [ DW_TAG_enumerator ] [eNR_FFT :: 84]
!194 = metadata !{i32 786472, metadata !"eNR_CONV", i64 85} ; [ DW_TAG_enumerator ] [eNR_CONV :: 85]
!195 = metadata !{i32 786472, metadata !"eNR_SOLVEPME", i64 86} ; [ DW_TAG_enumerator ] [eNR_SOLVEPME :: 86]
!196 = metadata !{i32 786472, metadata !"eNR_NS", i64 87} ; [ DW_TAG_enumerator ] [eNR_NS :: 87]
!197 = metadata !{i32 786472, metadata !"eNR_RESETX", i64 88} ; [ DW_TAG_enumerator ] [eNR_RESETX :: 88]
!198 = metadata !{i32 786472, metadata !"eNR_SHIFTX", i64 89} ; [ DW_TAG_enumerator ] [eNR_SHIFTX :: 89]
!199 = metadata !{i32 786472, metadata !"eNR_CGCM", i64 90} ; [ DW_TAG_enumerator ] [eNR_CGCM :: 90]
!200 = metadata !{i32 786472, metadata !"eNR_FSUM", i64 91} ; [ DW_TAG_enumerator ] [eNR_FSUM :: 91]
!201 = metadata !{i32 786472, metadata !"eNR_BONDS", i64 92} ; [ DW_TAG_enumerator ] [eNR_BONDS :: 92]
!202 = metadata !{i32 786472, metadata !"eNR_G96BONDS", i64 93} ; [ DW_TAG_enumerator ] [eNR_G96BONDS :: 93]
!203 = metadata !{i32 786472, metadata !"eNR_ANGLES", i64 94} ; [ DW_TAG_enumerator ] [eNR_ANGLES :: 94]
!204 = metadata !{i32 786472, metadata !"eNR_G96ANGLES", i64 95} ; [ DW_TAG_enumerator ] [eNR_G96ANGLES :: 95]
!205 = metadata !{i32 786472, metadata !"eNR_PROPER", i64 96} ; [ DW_TAG_enumerator ] [eNR_PROPER :: 96]
!206 = metadata !{i32 786472, metadata !"eNR_IMPROPER", i64 97} ; [ DW_TAG_enumerator ] [eNR_IMPROPER :: 97]
!207 = metadata !{i32 786472, metadata !"eNR_RB", i64 98} ; [ DW_TAG_enumerator ] [eNR_RB :: 98]
!208 = metadata !{i32 786472, metadata !"eNR_DISRES", i64 99} ; [ DW_TAG_enumerator ] [eNR_DISRES :: 99]
!209 = metadata !{i32 786472, metadata !"eNR_ORIRES", i64 100} ; [ DW_TAG_enumerator ] [eNR_ORIRES :: 100]
!210 = metadata !{i32 786472, metadata !"eNR_POSRES", i64 101} ; [ DW_TAG_enumerator ] [eNR_POSRES :: 101]
!211 = metadata !{i32 786472, metadata !"eNR_ANGRES", i64 102} ; [ DW_TAG_enumerator ] [eNR_ANGRES :: 102]
!212 = metadata !{i32 786472, metadata !"eNR_ANGRESZ", i64 103} ; [ DW_TAG_enumerator ] [eNR_ANGRESZ :: 103]
!213 = metadata !{i32 786472, metadata !"eNR_MORSE", i64 104} ; [ DW_TAG_enumerator ] [eNR_MORSE :: 104]
!214 = metadata !{i32 786472, metadata !"eNR_CUBICBONDS", i64 105} ; [ DW_TAG_enumerator ] [eNR_CUBICBONDS :: 105]
!215 = metadata !{i32 786472, metadata !"eNR_WPOL", i64 106} ; [ DW_TAG_enumerator ] [eNR_WPOL :: 106]
!216 = metadata !{i32 786472, metadata !"eNR_VIRIAL", i64 107} ; [ DW_TAG_enumerator ] [eNR_VIRIAL :: 107]
!217 = metadata !{i32 786472, metadata !"eNR_UPDATE", i64 108} ; [ DW_TAG_enumerator ] [eNR_UPDATE :: 108]
!218 = metadata !{i32 786472, metadata !"eNR_EXTUPDATE", i64 109} ; [ DW_TAG_enumerator ] [eNR_EXTUPDATE :: 109]
!219 = metadata !{i32 786472, metadata !"eNR_STOPCM", i64 110} ; [ DW_TAG_enumerator ] [eNR_STOPCM :: 110]
!220 = metadata !{i32 786472, metadata !"eNR_PCOUPL", i64 111} ; [ DW_TAG_enumerator ] [eNR_PCOUPL :: 111]
!221 = metadata !{i32 786472, metadata !"eNR_EKIN", i64 112} ; [ DW_TAG_enumerator ] [eNR_EKIN :: 112]
!222 = metadata !{i32 786472, metadata !"eNR_LINCS", i64 113} ; [ DW_TAG_enumerator ] [eNR_LINCS :: 113]
!223 = metadata !{i32 786472, metadata !"eNR_LINCSMAT", i64 114} ; [ DW_TAG_enumerator ] [eNR_LINCSMAT :: 114]
!224 = metadata !{i32 786472, metadata !"eNR_SHAKE", i64 115} ; [ DW_TAG_enumerator ] [eNR_SHAKE :: 115]
!225 = metadata !{i32 786472, metadata !"eNR_SHAKE_V", i64 116} ; [ DW_TAG_enumerator ] [eNR_SHAKE_V :: 116]
!226 = metadata !{i32 786472, metadata !"eNR_SHAKE_RIJ", i64 117} ; [ DW_TAG_enumerator ] [eNR_SHAKE_RIJ :: 117]
!227 = metadata !{i32 786472, metadata !"eNR_SHAKE_VIR", i64 118} ; [ DW_TAG_enumerator ] [eNR_SHAKE_VIR :: 118]
!228 = metadata !{i32 786472, metadata !"eNR_SETTLE", i64 119} ; [ DW_TAG_enumerator ] [eNR_SETTLE :: 119]
!229 = metadata !{i32 786472, metadata !"eNR_PSHAKEINITLD", i64 120} ; [ DW_TAG_enumerator ] [eNR_PSHAKEINITLD :: 120]
!230 = metadata !{i32 786472, metadata !"eNR_PSHAKEINITMD", i64 121} ; [ DW_TAG_enumerator ] [eNR_PSHAKEINITMD :: 121]
!231 = metadata !{i32 786472, metadata !"eNR_PSHAKE", i64 122} ; [ DW_TAG_enumerator ] [eNR_PSHAKE :: 122]
!232 = metadata !{i32 786472, metadata !"eNR_DUM2", i64 123} ; [ DW_TAG_enumerator ] [eNR_DUM2 :: 123]
!233 = metadata !{i32 786472, metadata !"eNR_DUM3", i64 124} ; [ DW_TAG_enumerator ] [eNR_DUM3 :: 124]
!234 = metadata !{i32 786472, metadata !"eNR_DUM3FD", i64 125} ; [ DW_TAG_enumerator ] [eNR_DUM3FD :: 125]
!235 = metadata !{i32 786472, metadata !"eNR_DUM3FAD", i64 126} ; [ DW_TAG_enumerator ] [eNR_DUM3FAD :: 126]
!236 = metadata !{i32 786472, metadata !"eNR_DUM3OUT", i64 127} ; [ DW_TAG_enumerator ] [eNR_DUM3OUT :: 127]
!237 = metadata !{i32 786472, metadata !"eNR_DUM4FD", i64 128} ; [ DW_TAG_enumerator ] [eNR_DUM4FD :: 128]
!238 = metadata !{i32 786472, metadata !"eNRNB", i64 129} ; [ DW_TAG_enumerator ] [eNRNB :: 129]
!239 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 111, i64 32, i64 32, i32 0, i32 0, null, metadata !240, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 111, size 32, align 32, offset 0] [from ]
!240 = metadata !{metadata !241, metadata !242, metadata !243, metadata !244, metadata !245}
!241 = metadata !{i32 786472, metadata !"esolNO", i64 0} ; [ DW_TAG_enumerator ] [esolNO :: 0]
!242 = metadata !{i32 786472, metadata !"esolMNO", i64 1} ; [ DW_TAG_enumerator ] [esolMNO :: 1]
!243 = metadata !{i32 786472, metadata !"esolWATER", i64 2} ; [ DW_TAG_enumerator ] [esolWATER :: 2]
!244 = metadata !{i32 786472, metadata !"esolWATERWATER", i64 3} ; [ DW_TAG_enumerator ] [esolWATERWATER :: 3]
!245 = metadata !{i32 786472, metadata !"esolNR", i64 4} ; [ DW_TAG_enumerator ] [esolNR :: 4]
!246 = metadata !{i32 0}
!247 = metadata !{metadata !248, metadata !361, metadata !426, metadata !462, metadata !870, metadata !877, metadata !948, metadata !1058, metadata !1068, metadata !1103, metadata !1119, metadata !1130, metadata !1145, metadata !1165, metadata !1170}
!248 = metadata !{i32 786478, metadata !1, metadata !249, metadata !"mk_forcerec", metadata !"mk_forcerec", metadata !"", i32 64, metadata !250, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.t_forcerec* ()* @mk_forcerec, null, null, metadata !359, i32 65} ; [ DW_TAG_subprogram ] [line 64] [def] [scope 65] [mk_forcerec]
!249 = metadata !{i32 786473, metadata !1}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!250 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !251, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!251 = metadata !{metadata !252}
!252 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !253} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_forcerec]
!253 = metadata !{i32 786454, metadata !1, null, metadata !"t_forcerec", i32 149, i64 0, i64 0, i64 0, i32 0, metadata !254} ; [ DW_TAG_typedef ] [t_forcerec] [line 149, size 0, align 0, offset 0] [from ]
!254 = metadata !{i32 786451, metadata !255, null, metadata !"", i32 43, i64 22784, i64 64, i32 0, i32 0, null, metadata !256, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 43, size 22784, align 64, offset 0] [from ]
!255 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/forcerec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!256 = metadata !{metadata !257, metadata !259, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !299, metadata !300, metadata !301, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !311, metadata !312, metadata !315, metadata !316, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !357, metadata !358}
!257 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"ePBC", i32 45, i64 32, i64 32, i64 0, i32 0, metadata !258} ; [ DW_TAG_member ] [ePBC] [line 45, size 32, align 32, offset 0] [from int]
!258 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!259 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"rlist", i32 46, i64 32, i64 32, i64 32, i32 0, metadata !260} ; [ DW_TAG_member ] [rlist] [line 46, size 32, align 32, offset 32] [from real]
!260 = metadata !{i32 786454, metadata !255, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !261} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!261 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!262 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"rlistlong", i32 46, i64 32, i64 32, i64 64, i32 0, metadata !260} ; [ DW_TAG_member ] [rlistlong] [line 46, size 32, align 32, offset 64] [from real]
!263 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"zsquare", i32 49, i64 32, i64 32, i64 96, i32 0, metadata !260} ; [ DW_TAG_member ] [zsquare] [line 49, size 32, align 32, offset 96] [from real]
!264 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"temp", i32 49, i64 32, i64 32, i64 128, i32 0, metadata !260} ; [ DW_TAG_member ] [temp] [line 49, size 32, align 32, offset 128] [from real]
!265 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"epsilon_r", i32 50, i64 32, i64 32, i64 160, i32 0, metadata !260} ; [ DW_TAG_member ] [epsilon_r] [line 50, size 32, align 32, offset 160] [from real]
!266 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"epsfac", i32 50, i64 32, i64 32, i64 192, i32 0, metadata !260} ; [ DW_TAG_member ] [epsfac] [line 50, size 32, align 32, offset 192] [from real]
!267 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"bRF", i32 53, i64 32, i64 32, i64 224, i32 0, metadata !258} ; [ DW_TAG_member ] [bRF] [line 53, size 32, align 32, offset 224] [from int]
!268 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"kappa", i32 54, i64 32, i64 32, i64 256, i32 0, metadata !260} ; [ DW_TAG_member ] [kappa] [line 54, size 32, align 32, offset 256] [from real]
!269 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"k_rf", i32 54, i64 32, i64 32, i64 288, i32 0, metadata !260} ; [ DW_TAG_member ] [k_rf] [line 54, size 32, align 32, offset 288] [from real]
!270 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"c_rf", i32 54, i64 32, i64 32, i64 320, i32 0, metadata !260} ; [ DW_TAG_member ] [c_rf] [line 54, size 32, align 32, offset 320] [from real]
!271 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"avcsix", i32 57, i64 32, i64 32, i64 352, i32 0, metadata !260} ; [ DW_TAG_member ] [avcsix] [line 57, size 32, align 32, offset 352] [from real]
!272 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"fudgeQQ", i32 60, i64 32, i64 32, i64 384, i32 0, metadata !260} ; [ DW_TAG_member ] [fudgeQQ] [line 60, size 32, align 32, offset 384] [from real]
!273 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"bcoultab", i32 63, i64 32, i64 32, i64 416, i32 0, metadata !258} ; [ DW_TAG_member ] [bcoultab] [line 63, size 32, align 32, offset 416] [from int]
!274 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"bvdwtab", i32 64, i64 32, i64 32, i64 448, i32 0, metadata !258} ; [ DW_TAG_member ] [bvdwtab] [line 64, size 32, align 32, offset 448] [from int]
!275 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"rtab", i32 65, i64 32, i64 32, i64 480, i32 0, metadata !260} ; [ DW_TAG_member ] [rtab] [line 65, size 32, align 32, offset 480] [from real]
!276 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"ntab", i32 66, i64 32, i64 32, i64 512, i32 0, metadata !258} ; [ DW_TAG_member ] [ntab] [line 66, size 32, align 32, offset 512] [from int]
!277 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"tabscale", i32 67, i64 32, i64 32, i64 544, i32 0, metadata !260} ; [ DW_TAG_member ] [tabscale] [line 67, size 32, align 32, offset 544] [from real]
!278 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"coultab", i32 69, i64 64, i64 64, i64 576, i32 0, metadata !279} ; [ DW_TAG_member ] [coultab] [line 69, size 64, align 64, offset 576] [from ]
!279 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !260} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!280 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"vdwtab", i32 70, i64 64, i64 64, i64 640, i32 0, metadata !279} ; [ DW_TAG_member ] [vdwtab] [line 70, size 64, align 64, offset 640] [from ]
!281 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"coulvdwtab", i32 71, i64 64, i64 64, i64 704, i32 0, metadata !279} ; [ DW_TAG_member ] [coulvdwtab] [line 71, size 64, align 64, offset 704] [from ]
!282 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"coulvdw14tab", i32 72, i64 64, i64 64, i64 768, i32 0, metadata !279} ; [ DW_TAG_member ] [coulvdw14tab] [line 72, size 64, align 64, offset 768] [from ]
!283 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"rcoulomb_switch", i32 75, i64 32, i64 32, i64 832, i32 0, metadata !260} ; [ DW_TAG_member ] [rcoulomb_switch] [line 75, size 32, align 32, offset 832] [from real]
!284 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"rcoulomb", i32 75, i64 32, i64 32, i64 864, i32 0, metadata !260} ; [ DW_TAG_member ] [rcoulomb] [line 75, size 32, align 32, offset 864] [from real]
!285 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"phi", i32 76, i64 64, i64 64, i64 896, i32 0, metadata !279} ; [ DW_TAG_member ] [phi] [line 76, size 64, align 64, offset 896] [from ]
!286 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"rvdw_switch", i32 79, i64 32, i64 32, i64 960, i32 0, metadata !260} ; [ DW_TAG_member ] [rvdw_switch] [line 79, size 32, align 32, offset 960] [from real]
!287 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"rvdw", i32 79, i64 32, i64 32, i64 992, i32 0, metadata !260} ; [ DW_TAG_member ] [rvdw] [line 79, size 32, align 32, offset 992] [from real]
!288 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"bham_b_max", i32 80, i64 32, i64 32, i64 1024, i32 0, metadata !260} ; [ DW_TAG_member ] [bham_b_max] [line 80, size 32, align 32, offset 1024] [from real]
!289 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"tabscale_exp", i32 81, i64 32, i64 32, i64 1056, i32 0, metadata !260} ; [ DW_TAG_member ] [tabscale_exp] [line 81, size 32, align 32, offset 1056] [from real]
!290 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"efep", i32 84, i64 32, i64 32, i64 1088, i32 0, metadata !258} ; [ DW_TAG_member ] [efep] [line 84, size 32, align 32, offset 1088] [from int]
!291 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"sc_alpha", i32 85, i64 32, i64 32, i64 1120, i32 0, metadata !260} ; [ DW_TAG_member ] [sc_alpha] [line 85, size 32, align 32, offset 1120] [from real]
!292 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"sc_sigma6", i32 86, i64 32, i64 32, i64 1152, i32 0, metadata !260} ; [ DW_TAG_member ] [sc_sigma6] [line 86, size 32, align 32, offset 1152] [from real]
!293 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"bSepDVDL", i32 87, i64 32, i64 32, i64 1184, i32 0, metadata !258} ; [ DW_TAG_member ] [bSepDVDL] [line 87, size 32, align 32, offset 1184] [from int]
!294 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"eeltype", i32 90, i64 32, i64 32, i64 1216, i32 0, metadata !258} ; [ DW_TAG_member ] [eeltype] [line 90, size 32, align 32, offset 1216] [from int]
!295 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"vdwtype", i32 91, i64 32, i64 32, i64 1248, i32 0, metadata !258} ; [ DW_TAG_member ] [vdwtype] [line 91, size 32, align 32, offset 1248] [from int]
!296 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"cg0", i32 92, i64 32, i64 32, i64 1280, i32 0, metadata !258} ; [ DW_TAG_member ] [cg0] [line 92, size 32, align 32, offset 1280] [from int]
!297 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"hcg", i32 92, i64 32, i64 32, i64 1312, i32 0, metadata !258} ; [ DW_TAG_member ] [hcg] [line 92, size 32, align 32, offset 1312] [from int]
!298 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"ndelta", i32 93, i64 32, i64 32, i64 1344, i32 0, metadata !258} ; [ DW_TAG_member ] [ndelta] [line 93, size 32, align 32, offset 1344] [from int]
!299 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"bSolvOpt", i32 94, i64 32, i64 32, i64 1376, i32 0, metadata !258} ; [ DW_TAG_member ] [bSolvOpt] [line 94, size 32, align 32, offset 1376] [from int]
!300 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"nMNOMol", i32 95, i64 32, i64 32, i64 1408, i32 0, metadata !258} ; [ DW_TAG_member ] [nMNOMol] [line 95, size 32, align 32, offset 1408] [from int]
!301 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"nMNOav", i32 96, i64 96, i64 32, i64 1440, i32 0, metadata !302} ; [ DW_TAG_member ] [nMNOav] [line 96, size 96, align 32, offset 1440] [from ]
!302 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !260, metadata !303, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!303 = metadata !{metadata !304}
!304 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!305 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"nWatMol", i32 97, i64 32, i64 32, i64 1536, i32 0, metadata !258} ; [ DW_TAG_member ] [nWatMol] [line 97, size 32, align 32, offset 1536] [from int]
!306 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"Dimension", i32 98, i64 32, i64 32, i64 1568, i32 0, metadata !258} ; [ DW_TAG_member ] [Dimension] [line 98, size 32, align 32, offset 1568] [from int]
!307 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"bGrid", i32 99, i64 32, i64 32, i64 1600, i32 0, metadata !258} ; [ DW_TAG_member ] [bGrid] [line 99, size 32, align 32, offset 1600] [from int]
!308 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"bDomDecomp", i32 99, i64 32, i64 32, i64 1632, i32 0, metadata !258} ; [ DW_TAG_member ] [bDomDecomp] [line 99, size 32, align 32, offset 1632] [from int]
!309 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"solvent_type", i32 100, i64 64, i64 64, i64 1664, i32 0, metadata !310} ; [ DW_TAG_member ] [solvent_type] [line 100, size 64, align 64, offset 1664] [from ]
!310 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !258} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!311 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"mno_index", i32 101, i64 64, i64 64, i64 1728, i32 0, metadata !310} ; [ DW_TAG_member ] [mno_index] [line 101, size 64, align 64, offset 1728] [from ]
!312 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"cg_cm", i32 102, i64 64, i64 64, i64 1792, i32 0, metadata !313} ; [ DW_TAG_member ] [cg_cm] [line 102, size 64, align 64, offset 1792] [from ]
!313 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !314} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!314 = metadata !{i32 786454, metadata !255, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !302} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!315 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"shift_vec", i32 103, i64 64, i64 64, i64 1856, i32 0, metadata !313} ; [ DW_TAG_member ] [shift_vec] [line 103, size 64, align 64, offset 1856] [from ]
!316 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"nlist_sr", i32 108, i64 9984, i64 64, i64 1920, i32 0, metadata !317} ; [ DW_TAG_member ] [nlist_sr] [line 108, size 9984, align 64, offset 1920] [from ]
!317 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 9984, i64 64, i32 0, i32 0, metadata !318, metadata !339, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 9984, align 64, offset 0] [from t_nblist]
!318 = metadata !{i32 786454, metadata !255, null, metadata !"t_nblist", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !319} ; [ DW_TAG_typedef ] [t_nblist] [line 60, size 0, align 0, offset 0] [from ]
!319 = metadata !{i32 786451, metadata !320, null, metadata !"", i32 36, i64 768, i64 64, i32 0, i32 0, null, metadata !321, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 768, align 64, offset 0] [from ]
!320 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/nblist.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!321 = metadata !{metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !329, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338}
!322 = metadata !{i32 786445, metadata !320, metadata !319, metadata !"il_code", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !258} ; [ DW_TAG_member ] [il_code] [line 37, size 32, align 32, offset 0] [from int]
!323 = metadata !{i32 786445, metadata !320, metadata !319, metadata !"nri", i32 39, i64 32, i64 32, i64 32, i32 0, metadata !258} ; [ DW_TAG_member ] [nri] [line 39, size 32, align 32, offset 32] [from int]
!324 = metadata !{i32 786445, metadata !320, metadata !319, metadata !"maxnri", i32 39, i64 32, i64 32, i64 64, i32 0, metadata !258} ; [ DW_TAG_member ] [maxnri] [line 39, size 32, align 32, offset 64] [from int]
!325 = metadata !{i32 786445, metadata !320, metadata !319, metadata !"nrj", i32 40, i64 32, i64 32, i64 96, i32 0, metadata !258} ; [ DW_TAG_member ] [nrj] [line 40, size 32, align 32, offset 96] [from int]
!326 = metadata !{i32 786445, metadata !320, metadata !319, metadata !"maxnrj", i32 40, i64 32, i64 32, i64 128, i32 0, metadata !258} ; [ DW_TAG_member ] [maxnrj] [line 40, size 32, align 32, offset 128] [from int]
!327 = metadata !{i32 786445, metadata !320, metadata !319, metadata !"maxlen", i32 41, i64 32, i64 32, i64 160, i32 0, metadata !258} ; [ DW_TAG_member ] [maxlen] [line 41, size 32, align 32, offset 160] [from int]
!328 = metadata !{i32 786445, metadata !320, metadata !319, metadata !"solvent", i32 42, i64 32, i64 32, i64 192, i32 0, metadata !258} ; [ DW_TAG_member ] [solvent] [line 42, size 32, align 32, offset 192] [from int]
!329 = metadata !{i32 786445, metadata !320, metadata !319, metadata !"iinr", i32 43, i64 64, i64 64, i64 256, i32 0, metadata !330} ; [ DW_TAG_member ] [iinr] [line 43, size 64, align 64, offset 256] [from ]
!330 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !331} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!331 = metadata !{i32 786454, metadata !320, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !258} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!332 = metadata !{i32 786445, metadata !320, metadata !319, metadata !"gid", i32 44, i64 64, i64 64, i64 320, i32 0, metadata !310} ; [ DW_TAG_member ] [gid] [line 44, size 64, align 64, offset 320] [from ]
!333 = metadata !{i32 786445, metadata !320, metadata !319, metadata !"shift", i32 45, i64 64, i64 64, i64 384, i32 0, metadata !310} ; [ DW_TAG_member ] [shift] [line 45, size 64, align 64, offset 384] [from ]
!334 = metadata !{i32 786445, metadata !320, metadata !319, metadata !"jindex", i32 46, i64 64, i64 64, i64 448, i32 0, metadata !310} ; [ DW_TAG_member ] [jindex] [line 46, size 64, align 64, offset 448] [from ]
!335 = metadata !{i32 786445, metadata !320, metadata !319, metadata !"jjnr", i32 47, i64 64, i64 64, i64 512, i32 0, metadata !330} ; [ DW_TAG_member ] [jjnr] [line 47, size 64, align 64, offset 512] [from ]
!336 = metadata !{i32 786445, metadata !320, metadata !319, metadata !"nsatoms", i32 48, i64 64, i64 64, i64 576, i32 0, metadata !310} ; [ DW_TAG_member ] [nsatoms] [line 48, size 64, align 64, offset 576] [from ]
!337 = metadata !{i32 786445, metadata !320, metadata !319, metadata !"pad1", i32 58, i64 32, i64 32, i64 640, i32 0, metadata !258} ; [ DW_TAG_member ] [pad1] [line 58, size 32, align 32, offset 640] [from int]
!338 = metadata !{i32 786445, metadata !320, metadata !319, metadata !"pad2", i32 58, i64 64, i64 64, i64 704, i32 0, metadata !310} ; [ DW_TAG_member ] [pad2] [line 58, size 64, align 64, offset 704] [from ]
!339 = metadata !{metadata !340}
!340 = metadata !{i32 786465, i64 0, i64 13}      ; [ DW_TAG_subrange_type ] [0, 12]
!341 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"nlist_lr", i32 109, i64 9984, i64 64, i64 11904, i32 0, metadata !317} ; [ DW_TAG_member ] [nlist_lr] [line 109, size 9984, align 64, offset 11904] [from ]
!342 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"bTwinRange", i32 120, i64 32, i64 32, i64 21888, i32 0, metadata !258} ; [ DW_TAG_member ] [bTwinRange] [line 120, size 32, align 32, offset 21888] [from int]
!343 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"nlr", i32 121, i64 32, i64 32, i64 21920, i32 0, metadata !258} ; [ DW_TAG_member ] [nlr] [line 121, size 32, align 32, offset 21920] [from int]
!344 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"f_twin", i32 122, i64 64, i64 64, i64 21952, i32 0, metadata !313} ; [ DW_TAG_member ] [f_twin] [line 122, size 64, align 64, offset 21952] [from ]
!345 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"fshift_twin", i32 123, i64 64, i64 64, i64 22016, i32 0, metadata !313} ; [ DW_TAG_member ] [fshift_twin] [line 123, size 64, align 64, offset 22016] [from ]
!346 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"f_pme", i32 126, i64 64, i64 64, i64 22080, i32 0, metadata !313} ; [ DW_TAG_member ] [f_pme] [line 126, size 64, align 64, offset 22080] [from ]
!347 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"bEwald", i32 127, i64 32, i64 32, i64 22144, i32 0, metadata !258} ; [ DW_TAG_member ] [bEwald] [line 127, size 32, align 32, offset 22144] [from int]
!348 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"ewaldcoeff", i32 128, i64 32, i64 32, i64 22176, i32 0, metadata !260} ; [ DW_TAG_member ] [ewaldcoeff] [line 128, size 32, align 32, offset 22176] [from real]
!349 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"fshift", i32 131, i64 64, i64 64, i64 22208, i32 0, metadata !313} ; [ DW_TAG_member ] [fshift] [line 131, size 64, align 64, offset 22208] [from ]
!350 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"nmol", i32 134, i64 32, i64 32, i64 22272, i32 0, metadata !258} ; [ DW_TAG_member ] [nmol] [line 134, size 32, align 32, offset 22272] [from int]
!351 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"mol_nr", i32 135, i64 64, i64 64, i64 22336, i32 0, metadata !330} ; [ DW_TAG_member ] [mol_nr] [line 135, size 64, align 64, offset 22336] [from ]
!352 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"mol_epot", i32 136, i64 64, i64 64, i64 22400, i32 0, metadata !279} ; [ DW_TAG_member ] [mol_epot] [line 136, size 64, align 64, offset 22400] [from ]
!353 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"nstcalc", i32 137, i64 32, i64 32, i64 22464, i32 0, metadata !258} ; [ DW_TAG_member ] [nstcalc] [line 137, size 32, align 32, offset 22464] [from int]
!354 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"ntype", i32 140, i64 32, i64 32, i64 22496, i32 0, metadata !258} ; [ DW_TAG_member ] [ntype] [line 140, size 32, align 32, offset 22496] [from int]
!355 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"bBHAM", i32 141, i64 32, i64 32, i64 22528, i32 0, metadata !258} ; [ DW_TAG_member ] [bBHAM] [line 141, size 32, align 32, offset 22528] [from int]
!356 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"nbfp", i32 142, i64 64, i64 64, i64 22592, i32 0, metadata !279} ; [ DW_TAG_member ] [nbfp] [line 142, size 64, align 64, offset 22592] [from ]
!357 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"eg_excl", i32 145, i64 64, i64 64, i64 22656, i32 0, metadata !310} ; [ DW_TAG_member ] [eg_excl] [line 145, size 64, align 64, offset 22656] [from ]
!358 = metadata !{i32 786445, metadata !255, metadata !254, metadata !"fc_stepsize", i32 148, i64 32, i64 32, i64 22720, i32 0, metadata !260} ; [ DW_TAG_member ] [fc_stepsize] [line 148, size 32, align 32, offset 22720] [from real]
!359 = metadata !{metadata !360}
!360 = metadata !{i32 786688, metadata !248, metadata !"fr", metadata !249, i32 66, metadata !252, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fr] [line 66]
!361 = metadata !{i32 786478, metadata !1, metadata !249, metadata !"update_forcerec", metadata !"update_forcerec", metadata !"", i32 405, metadata !362, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_forcerec*, [3 x float]*)* @update_forcerec, null, null, metadata !422, i32 406} ; [ DW_TAG_subprogram ] [line 405] [def] [scope 406] [update_forcerec]
!362 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !363, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!363 = metadata !{null, metadata !364, metadata !252, metadata !421}
!364 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !365} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!365 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !366} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!366 = metadata !{i32 786451, metadata !367, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !368, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!367 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!368 = metadata !{metadata !369, metadata !370, metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !391, metadata !392, metadata !393, metadata !394, metadata !397, metadata !399, metadata !401, metadata !405, metadata !407, metadata !409, metadata !410, metadata !411, metadata !412, metadata !413, metadata !416, metadata !417}
!369 = metadata !{i32 786445, metadata !367, metadata !366, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !258} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!370 = metadata !{i32 786445, metadata !367, metadata !366, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !371} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!371 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !372} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!372 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!373 = metadata !{i32 786445, metadata !367, metadata !366, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !371} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!374 = metadata !{i32 786445, metadata !367, metadata !366, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !371} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!375 = metadata !{i32 786445, metadata !367, metadata !366, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !371} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!376 = metadata !{i32 786445, metadata !367, metadata !366, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !371} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!377 = metadata !{i32 786445, metadata !367, metadata !366, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !371} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!378 = metadata !{i32 786445, metadata !367, metadata !366, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !371} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!379 = metadata !{i32 786445, metadata !367, metadata !366, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !371} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!380 = metadata !{i32 786445, metadata !367, metadata !366, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !371} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!381 = metadata !{i32 786445, metadata !367, metadata !366, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !371} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!382 = metadata !{i32 786445, metadata !367, metadata !366, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !371} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!383 = metadata !{i32 786445, metadata !367, metadata !366, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !384} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!384 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !385} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!385 = metadata !{i32 786451, metadata !367, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !386, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!386 = metadata !{metadata !387, metadata !388, metadata !390}
!387 = metadata !{i32 786445, metadata !367, metadata !385, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !384} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!388 = metadata !{i32 786445, metadata !367, metadata !385, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !389} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!389 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !366} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!390 = metadata !{i32 786445, metadata !367, metadata !385, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !258} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!391 = metadata !{i32 786445, metadata !367, metadata !366, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !389} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!392 = metadata !{i32 786445, metadata !367, metadata !366, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !258} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!393 = metadata !{i32 786445, metadata !367, metadata !366, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !258} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!394 = metadata !{i32 786445, metadata !367, metadata !366, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !395} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!395 = metadata !{i32 786454, metadata !367, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !396} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!396 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!397 = metadata !{i32 786445, metadata !367, metadata !366, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !398} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!398 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!399 = metadata !{i32 786445, metadata !367, metadata !366, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !400} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!400 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!401 = metadata !{i32 786445, metadata !367, metadata !366, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !402} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!402 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !372, metadata !403, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!403 = metadata !{metadata !404}
!404 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!405 = metadata !{i32 786445, metadata !367, metadata !366, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !406} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!406 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!407 = metadata !{i32 786445, metadata !367, metadata !366, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !408} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!408 = metadata !{i32 786454, metadata !367, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !396} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!409 = metadata !{i32 786445, metadata !367, metadata !366, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !406} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!410 = metadata !{i32 786445, metadata !367, metadata !366, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !406} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!411 = metadata !{i32 786445, metadata !367, metadata !366, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !406} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!412 = metadata !{i32 786445, metadata !367, metadata !366, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !406} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!413 = metadata !{i32 786445, metadata !367, metadata !366, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !414} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!414 = metadata !{i32 786454, metadata !367, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !415} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!415 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!416 = metadata !{i32 786445, metadata !367, metadata !366, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !258} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!417 = metadata !{i32 786445, metadata !367, metadata !366, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !418} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!418 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !372, metadata !419, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!419 = metadata !{metadata !420}
!420 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!421 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !302} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!422 = metadata !{metadata !423, metadata !424, metadata !425}
!423 = metadata !{i32 786689, metadata !361, metadata !"log", metadata !249, i32 16777621, metadata !364, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 405]
!424 = metadata !{i32 786689, metadata !361, metadata !"fr", metadata !249, i32 33554837, metadata !252, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 405]
!425 = metadata !{i32 786689, metadata !361, metadata !"box", metadata !249, i32 50332053, metadata !421, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 405]
!426 = metadata !{i32 786478, metadata !1, metadata !249, metadata !"set_avcsix", metadata !"set_avcsix", metadata !"", i32 445, metadata !427, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_forcerec*, %struct.t_mdatoms*)* @set_avcsix, null, null, metadata !458, i32 446} ; [ DW_TAG_subprogram ] [line 445] [def] [scope 446] [set_avcsix]
!427 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !428, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!428 = metadata !{null, metadata !364, metadata !252, metadata !429}
!429 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !430} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_mdatoms]
!430 = metadata !{i32 786454, metadata !1, null, metadata !"t_mdatoms", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !431} ; [ DW_TAG_typedef ] [t_mdatoms] [line 51, size 0, align 0, offset 0] [from ]
!431 = metadata !{i32 786451, metadata !432, null, metadata !"", i32 40, i64 1408, i64 64, i32 0, i32 0, null, metadata !433, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 40, size 1408, align 64, offset 0] [from ]
!432 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/mdatom.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!433 = metadata !{metadata !434, metadata !435, metadata !436, metadata !437, metadata !438, metadata !439, metadata !440, metadata !441, metadata !442, metadata !443, metadata !444, metadata !445, metadata !446, metadata !447, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !454, metadata !455, metadata !456, metadata !457}
!434 = metadata !{i32 786445, metadata !432, metadata !431, metadata !"tmass", i32 41, i64 32, i64 32, i64 0, i32 0, metadata !260} ; [ DW_TAG_member ] [tmass] [line 41, size 32, align 32, offset 0] [from real]
!435 = metadata !{i32 786445, metadata !432, metadata !431, metadata !"nr", i32 42, i64 32, i64 32, i64 32, i32 0, metadata !258} ; [ DW_TAG_member ] [nr] [line 42, size 32, align 32, offset 32] [from int]
!436 = metadata !{i32 786445, metadata !432, metadata !431, metadata !"massA", i32 43, i64 64, i64 64, i64 64, i32 0, metadata !279} ; [ DW_TAG_member ] [massA] [line 43, size 64, align 64, offset 64] [from ]
!437 = metadata !{i32 786445, metadata !432, metadata !431, metadata !"massB", i32 43, i64 64, i64 64, i64 128, i32 0, metadata !279} ; [ DW_TAG_member ] [massB] [line 43, size 64, align 64, offset 128] [from ]
!438 = metadata !{i32 786445, metadata !432, metadata !431, metadata !"massT", i32 43, i64 64, i64 64, i64 192, i32 0, metadata !279} ; [ DW_TAG_member ] [massT] [line 43, size 64, align 64, offset 192] [from ]
!439 = metadata !{i32 786445, metadata !432, metadata !431, metadata !"invmass", i32 43, i64 64, i64 64, i64 256, i32 0, metadata !279} ; [ DW_TAG_member ] [invmass] [line 43, size 64, align 64, offset 256] [from ]
!440 = metadata !{i32 786445, metadata !432, metadata !431, metadata !"chargeA", i32 44, i64 64, i64 64, i64 320, i32 0, metadata !279} ; [ DW_TAG_member ] [chargeA] [line 44, size 64, align 64, offset 320] [from ]
!441 = metadata !{i32 786445, metadata !432, metadata !431, metadata !"chargeB", i32 44, i64 64, i64 64, i64 384, i32 0, metadata !279} ; [ DW_TAG_member ] [chargeB] [line 44, size 64, align 64, offset 384] [from ]
!442 = metadata !{i32 786445, metadata !432, metadata !431, metadata !"chargeT", i32 44, i64 64, i64 64, i64 448, i32 0, metadata !279} ; [ DW_TAG_member ] [chargeT] [line 44, size 64, align 64, offset 448] [from ]
!443 = metadata !{i32 786445, metadata !432, metadata !431, metadata !"bPerturbed", i32 45, i64 64, i64 64, i64 512, i32 0, metadata !310} ; [ DW_TAG_member ] [bPerturbed] [line 45, size 64, align 64, offset 512] [from ]
!444 = metadata !{i32 786445, metadata !432, metadata !431, metadata !"resnr", i32 46, i64 64, i64 64, i64 576, i32 0, metadata !310} ; [ DW_TAG_member ] [resnr] [line 46, size 64, align 64, offset 576] [from ]
!445 = metadata !{i32 786445, metadata !432, metadata !431, metadata !"typeA", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !310} ; [ DW_TAG_member ] [typeA] [line 47, size 64, align 64, offset 640] [from ]
!446 = metadata !{i32 786445, metadata !432, metadata !431, metadata !"typeB", i32 47, i64 64, i64 64, i64 704, i32 0, metadata !310} ; [ DW_TAG_member ] [typeB] [line 47, size 64, align 64, offset 704] [from ]
!447 = metadata !{i32 786445, metadata !432, metadata !431, metadata !"ptype", i32 48, i64 64, i64 64, i64 768, i32 0, metadata !448} ; [ DW_TAG_member ] [ptype] [line 48, size 64, align 64, offset 768] [from ]
!448 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !398} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!449 = metadata !{i32 786445, metadata !432, metadata !431, metadata !"cTC", i32 49, i64 64, i64 64, i64 832, i32 0, metadata !448} ; [ DW_TAG_member ] [cTC] [line 49, size 64, align 64, offset 832] [from ]
!450 = metadata !{i32 786445, metadata !432, metadata !431, metadata !"cENER", i32 49, i64 64, i64 64, i64 896, i32 0, metadata !448} ; [ DW_TAG_member ] [cENER] [line 49, size 64, align 64, offset 896] [from ]
!451 = metadata !{i32 786445, metadata !432, metadata !431, metadata !"cACC", i32 49, i64 64, i64 64, i64 960, i32 0, metadata !448} ; [ DW_TAG_member ] [cACC] [line 49, size 64, align 64, offset 960] [from ]
!452 = metadata !{i32 786445, metadata !432, metadata !431, metadata !"cFREEZE", i32 49, i64 64, i64 64, i64 1024, i32 0, metadata !448} ; [ DW_TAG_member ] [cFREEZE] [line 49, size 64, align 64, offset 1024] [from ]
!453 = metadata !{i32 786445, metadata !432, metadata !431, metadata !"cXTC", i32 49, i64 64, i64 64, i64 1088, i32 0, metadata !448} ; [ DW_TAG_member ] [cXTC] [line 49, size 64, align 64, offset 1088] [from ]
!454 = metadata !{i32 786445, metadata !432, metadata !431, metadata !"cVCM", i32 49, i64 64, i64 64, i64 1152, i32 0, metadata !448} ; [ DW_TAG_member ] [cVCM] [line 49, size 64, align 64, offset 1152] [from ]
!455 = metadata !{i32 786445, metadata !432, metadata !431, metadata !"cU1", i32 50, i64 64, i64 64, i64 1216, i32 0, metadata !448} ; [ DW_TAG_member ] [cU1] [line 50, size 64, align 64, offset 1216] [from ]
!456 = metadata !{i32 786445, metadata !432, metadata !431, metadata !"cU2", i32 50, i64 64, i64 64, i64 1280, i32 0, metadata !448} ; [ DW_TAG_member ] [cU2] [line 50, size 64, align 64, offset 1280] [from ]
!457 = metadata !{i32 786445, metadata !432, metadata !431, metadata !"cORF", i32 50, i64 64, i64 64, i64 1344, i32 0, metadata !448} ; [ DW_TAG_member ] [cORF] [line 50, size 64, align 64, offset 1344] [from ]
!458 = metadata !{metadata !459, metadata !460, metadata !461}
!459 = metadata !{i32 786689, metadata !426, metadata !"log", metadata !249, i32 16777661, metadata !364, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 445]
!460 = metadata !{i32 786689, metadata !426, metadata !"fr", metadata !249, i32 33554877, metadata !252, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 445]
!461 = metadata !{i32 786689, metadata !426, metadata !"mdatoms", metadata !249, i32 50332093, metadata !429, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mdatoms] [line 445]
!462 = metadata !{i32 786478, metadata !1, metadata !249, metadata !"init_forcerec", metadata !"init_forcerec", metadata !"", i32 493, metadata !463, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_forcerec*, %struct.t_inputrec*, %struct.t_topology*, %struct.t_commrec*, %struct.t_mdatoms*, %struct.t_nsborder*, [3 x float]*, i32, i8*, i32)* @init_forcerec, null, null, metadata !832, i32 504} ; [ DW_TAG_subprogram ] [line 493] [def] [scope 504] [init_forcerec]
!463 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !464, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!464 = metadata !{null, metadata !364, metadata !252, metadata !465, metadata !579, metadata !805, metadata !429, metadata !816, metadata !421, metadata !258, metadata !371, metadata !258}
!465 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !466} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_inputrec]
!466 = metadata !{i32 786454, metadata !1, null, metadata !"t_inputrec", i32 143, i64 0, i64 0, i64 0, i32 0, metadata !467} ; [ DW_TAG_typedef ] [t_inputrec] [line 143, size 0, align 0, offset 0] [from ]
!467 = metadata !{i32 786451, metadata !468, null, metadata !"", i32 55, i64 4736, i64 64, i32 0, i32 0, null, metadata !469, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 55, size 4736, align 64, offset 0] [from ]
!468 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/inputrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!469 = metadata !{metadata !470, metadata !471, metadata !472, metadata !473, metadata !474, metadata !475, metadata !476, metadata !477, metadata !478, metadata !479, metadata !480, metadata !481, metadata !482, metadata !483, metadata !484, metadata !485, metadata !486, metadata !487, metadata !488, metadata !489, metadata !490, metadata !491, metadata !492, metadata !493, metadata !494, metadata !495, metadata !496, metadata !497, metadata !498, metadata !499, metadata !500, metadata !501, metadata !505, metadata !506, metadata !507, metadata !508, metadata !509, metadata !510, metadata !511, metadata !512, metadata !513, metadata !514, metadata !515, metadata !516, metadata !517, metadata !518, metadata !519, metadata !520, metadata !521, metadata !522, metadata !523, metadata !524, metadata !525, metadata !526, metadata !527, metadata !528, metadata !529, metadata !530, metadata !531, metadata !532, metadata !533, metadata !534, metadata !535, metadata !536, metadata !537, metadata !538, metadata !539, metadata !540, metadata !541, metadata !542, metadata !543, metadata !544, metadata !545, metadata !546, metadata !547, metadata !548, metadata !549, metadata !550, metadata !551, metadata !552, metadata !553, metadata !570, metadata !578}
!470 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"eI", i32 56, i64 32, i64 32, i64 0, i32 0, metadata !258} ; [ DW_TAG_member ] [eI] [line 56, size 32, align 32, offset 0] [from int]
!471 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"nsteps", i32 57, i64 32, i64 32, i64 32, i32 0, metadata !258} ; [ DW_TAG_member ] [nsteps] [line 57, size 32, align 32, offset 32] [from int]
!472 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"ns_type", i32 58, i64 32, i64 32, i64 64, i32 0, metadata !258} ; [ DW_TAG_member ] [ns_type] [line 58, size 32, align 32, offset 64] [from int]
!473 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"nstlist", i32 59, i64 32, i64 32, i64 96, i32 0, metadata !258} ; [ DW_TAG_member ] [nstlist] [line 59, size 32, align 32, offset 96] [from int]
!474 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"ndelta", i32 60, i64 32, i64 32, i64 128, i32 0, metadata !258} ; [ DW_TAG_member ] [ndelta] [line 60, size 32, align 32, offset 128] [from int]
!475 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"bDomDecomp", i32 61, i64 32, i64 32, i64 160, i32 0, metadata !258} ; [ DW_TAG_member ] [bDomDecomp] [line 61, size 32, align 32, offset 160] [from int]
!476 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"decomp_dir", i32 62, i64 32, i64 32, i64 192, i32 0, metadata !258} ; [ DW_TAG_member ] [decomp_dir] [line 62, size 32, align 32, offset 192] [from int]
!477 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"nstcomm", i32 63, i64 32, i64 32, i64 224, i32 0, metadata !258} ; [ DW_TAG_member ] [nstcomm] [line 63, size 32, align 32, offset 224] [from int]
!478 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"nstlog", i32 65, i64 32, i64 32, i64 256, i32 0, metadata !258} ; [ DW_TAG_member ] [nstlog] [line 65, size 32, align 32, offset 256] [from int]
!479 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"nstxout", i32 66, i64 32, i64 32, i64 288, i32 0, metadata !258} ; [ DW_TAG_member ] [nstxout] [line 66, size 32, align 32, offset 288] [from int]
!480 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"nstvout", i32 67, i64 32, i64 32, i64 320, i32 0, metadata !258} ; [ DW_TAG_member ] [nstvout] [line 67, size 32, align 32, offset 320] [from int]
!481 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"nstfout", i32 68, i64 32, i64 32, i64 352, i32 0, metadata !258} ; [ DW_TAG_member ] [nstfout] [line 68, size 32, align 32, offset 352] [from int]
!482 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"nstenergy", i32 69, i64 32, i64 32, i64 384, i32 0, metadata !258} ; [ DW_TAG_member ] [nstenergy] [line 69, size 32, align 32, offset 384] [from int]
!483 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"nstxtcout", i32 70, i64 32, i64 32, i64 416, i32 0, metadata !258} ; [ DW_TAG_member ] [nstxtcout] [line 70, size 32, align 32, offset 416] [from int]
!484 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"init_t", i32 71, i64 32, i64 32, i64 448, i32 0, metadata !260} ; [ DW_TAG_member ] [init_t] [line 71, size 32, align 32, offset 448] [from real]
!485 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"delta_t", i32 72, i64 32, i64 32, i64 480, i32 0, metadata !260} ; [ DW_TAG_member ] [delta_t] [line 72, size 32, align 32, offset 480] [from real]
!486 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"xtcprec", i32 73, i64 32, i64 32, i64 512, i32 0, metadata !260} ; [ DW_TAG_member ] [xtcprec] [line 73, size 32, align 32, offset 512] [from real]
!487 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"nkx", i32 74, i64 32, i64 32, i64 544, i32 0, metadata !258} ; [ DW_TAG_member ] [nkx] [line 74, size 32, align 32, offset 544] [from int]
!488 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"nky", i32 74, i64 32, i64 32, i64 576, i32 0, metadata !258} ; [ DW_TAG_member ] [nky] [line 74, size 32, align 32, offset 576] [from int]
!489 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"nkz", i32 74, i64 32, i64 32, i64 608, i32 0, metadata !258} ; [ DW_TAG_member ] [nkz] [line 74, size 32, align 32, offset 608] [from int]
!490 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"pme_order", i32 76, i64 32, i64 32, i64 640, i32 0, metadata !258} ; [ DW_TAG_member ] [pme_order] [line 76, size 32, align 32, offset 640] [from int]
!491 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"ewald_rtol", i32 77, i64 32, i64 32, i64 672, i32 0, metadata !260} ; [ DW_TAG_member ] [ewald_rtol] [line 77, size 32, align 32, offset 672] [from real]
!492 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"ewald_geometry", i32 79, i64 32, i64 32, i64 704, i32 0, metadata !258} ; [ DW_TAG_member ] [ewald_geometry] [line 79, size 32, align 32, offset 704] [from int]
!493 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"epsilon_surface", i32 80, i64 32, i64 32, i64 736, i32 0, metadata !258} ; [ DW_TAG_member ] [epsilon_surface] [line 80, size 32, align 32, offset 736] [from int]
!494 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"bOptFFT", i32 81, i64 32, i64 32, i64 768, i32 0, metadata !258} ; [ DW_TAG_member ] [bOptFFT] [line 81, size 32, align 32, offset 768] [from int]
!495 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"ePBC", i32 82, i64 32, i64 32, i64 800, i32 0, metadata !258} ; [ DW_TAG_member ] [ePBC] [line 82, size 32, align 32, offset 800] [from int]
!496 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"bUncStart", i32 83, i64 32, i64 32, i64 832, i32 0, metadata !258} ; [ DW_TAG_member ] [bUncStart] [line 83, size 32, align 32, offset 832] [from int]
!497 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"etc", i32 84, i64 32, i64 32, i64 864, i32 0, metadata !258} ; [ DW_TAG_member ] [etc] [line 84, size 32, align 32, offset 864] [from int]
!498 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"epc", i32 85, i64 32, i64 32, i64 896, i32 0, metadata !258} ; [ DW_TAG_member ] [epc] [line 85, size 32, align 32, offset 896] [from int]
!499 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"epct", i32 86, i64 32, i64 32, i64 928, i32 0, metadata !258} ; [ DW_TAG_member ] [epct] [line 86, size 32, align 32, offset 928] [from int]
!500 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"tau_p", i32 87, i64 32, i64 32, i64 960, i32 0, metadata !260} ; [ DW_TAG_member ] [tau_p] [line 87, size 32, align 32, offset 960] [from real]
!501 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"ref_p", i32 88, i64 288, i64 32, i64 992, i32 0, metadata !502} ; [ DW_TAG_member ] [ref_p] [line 88, size 288, align 32, offset 992] [from tensor]
!502 = metadata !{i32 786454, metadata !468, null, metadata !"tensor", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !503} ; [ DW_TAG_typedef ] [tensor] [line 105, size 0, align 0, offset 0] [from ]
!503 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !260, metadata !504, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from real]
!504 = metadata !{metadata !304, metadata !304}
!505 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"compress", i32 89, i64 288, i64 32, i64 1280, i32 0, metadata !502} ; [ DW_TAG_member ] [compress] [line 89, size 288, align 32, offset 1280] [from tensor]
!506 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"bSimAnn", i32 90, i64 32, i64 32, i64 1568, i32 0, metadata !258} ; [ DW_TAG_member ] [bSimAnn] [line 90, size 32, align 32, offset 1568] [from int]
!507 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"zero_temp_time", i32 91, i64 32, i64 32, i64 1600, i32 0, metadata !260} ; [ DW_TAG_member ] [zero_temp_time] [line 91, size 32, align 32, offset 1600] [from real]
!508 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"rlist", i32 92, i64 32, i64 32, i64 1632, i32 0, metadata !260} ; [ DW_TAG_member ] [rlist] [line 92, size 32, align 32, offset 1632] [from real]
!509 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"coulombtype", i32 93, i64 32, i64 32, i64 1664, i32 0, metadata !258} ; [ DW_TAG_member ] [coulombtype] [line 93, size 32, align 32, offset 1664] [from int]
!510 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"rcoulomb_switch", i32 94, i64 32, i64 32, i64 1696, i32 0, metadata !260} ; [ DW_TAG_member ] [rcoulomb_switch] [line 94, size 32, align 32, offset 1696] [from real]
!511 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"rcoulomb", i32 95, i64 32, i64 32, i64 1728, i32 0, metadata !260} ; [ DW_TAG_member ] [rcoulomb] [line 95, size 32, align 32, offset 1728] [from real]
!512 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"vdwtype", i32 96, i64 32, i64 32, i64 1760, i32 0, metadata !258} ; [ DW_TAG_member ] [vdwtype] [line 96, size 32, align 32, offset 1760] [from int]
!513 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"rvdw_switch", i32 97, i64 32, i64 32, i64 1792, i32 0, metadata !260} ; [ DW_TAG_member ] [rvdw_switch] [line 97, size 32, align 32, offset 1792] [from real]
!514 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"rvdw", i32 98, i64 32, i64 32, i64 1824, i32 0, metadata !260} ; [ DW_TAG_member ] [rvdw] [line 98, size 32, align 32, offset 1824] [from real]
!515 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"epsilon_r", i32 99, i64 32, i64 32, i64 1856, i32 0, metadata !260} ; [ DW_TAG_member ] [epsilon_r] [line 99, size 32, align 32, offset 1856] [from real]
!516 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"eDispCorr", i32 100, i64 32, i64 32, i64 1888, i32 0, metadata !258} ; [ DW_TAG_member ] [eDispCorr] [line 100, size 32, align 32, offset 1888] [from int]
!517 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"shake_tol", i32 101, i64 32, i64 32, i64 1920, i32 0, metadata !260} ; [ DW_TAG_member ] [shake_tol] [line 101, size 32, align 32, offset 1920] [from real]
!518 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"fudgeQQ", i32 102, i64 32, i64 32, i64 1952, i32 0, metadata !260} ; [ DW_TAG_member ] [fudgeQQ] [line 102, size 32, align 32, offset 1952] [from real]
!519 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"efep", i32 103, i64 32, i64 32, i64 1984, i32 0, metadata !258} ; [ DW_TAG_member ] [efep] [line 103, size 32, align 32, offset 1984] [from int]
!520 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"init_lambda", i32 104, i64 32, i64 32, i64 2016, i32 0, metadata !260} ; [ DW_TAG_member ] [init_lambda] [line 104, size 32, align 32, offset 2016] [from real]
!521 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"delta_lambda", i32 105, i64 32, i64 32, i64 2048, i32 0, metadata !260} ; [ DW_TAG_member ] [delta_lambda] [line 105, size 32, align 32, offset 2048] [from real]
!522 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"sc_alpha", i32 106, i64 32, i64 32, i64 2080, i32 0, metadata !260} ; [ DW_TAG_member ] [sc_alpha] [line 106, size 32, align 32, offset 2080] [from real]
!523 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"sc_sigma", i32 107, i64 32, i64 32, i64 2112, i32 0, metadata !260} ; [ DW_TAG_member ] [sc_sigma] [line 107, size 32, align 32, offset 2112] [from real]
!524 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"dr_fc", i32 108, i64 32, i64 32, i64 2144, i32 0, metadata !260} ; [ DW_TAG_member ] [dr_fc] [line 108, size 32, align 32, offset 2144] [from real]
!525 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"eDisreWeighting", i32 109, i64 32, i64 32, i64 2176, i32 0, metadata !258} ; [ DW_TAG_member ] [eDisreWeighting] [line 109, size 32, align 32, offset 2176] [from int]
!526 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"bDisreMixed", i32 110, i64 32, i64 32, i64 2208, i32 0, metadata !258} ; [ DW_TAG_member ] [bDisreMixed] [line 110, size 32, align 32, offset 2208] [from int]
!527 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"nstdisreout", i32 111, i64 32, i64 32, i64 2240, i32 0, metadata !258} ; [ DW_TAG_member ] [nstdisreout] [line 111, size 32, align 32, offset 2240] [from int]
!528 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"dr_tau", i32 112, i64 32, i64 32, i64 2272, i32 0, metadata !260} ; [ DW_TAG_member ] [dr_tau] [line 112, size 32, align 32, offset 2272] [from real]
!529 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"orires_fc", i32 113, i64 32, i64 32, i64 2304, i32 0, metadata !260} ; [ DW_TAG_member ] [orires_fc] [line 113, size 32, align 32, offset 2304] [from real]
!530 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"orires_tau", i32 114, i64 32, i64 32, i64 2336, i32 0, metadata !260} ; [ DW_TAG_member ] [orires_tau] [line 114, size 32, align 32, offset 2336] [from real]
!531 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"nstorireout", i32 115, i64 32, i64 32, i64 2368, i32 0, metadata !258} ; [ DW_TAG_member ] [nstorireout] [line 115, size 32, align 32, offset 2368] [from int]
!532 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"em_stepsize", i32 116, i64 32, i64 32, i64 2400, i32 0, metadata !260} ; [ DW_TAG_member ] [em_stepsize] [line 116, size 32, align 32, offset 2400] [from real]
!533 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"em_tol", i32 117, i64 32, i64 32, i64 2432, i32 0, metadata !260} ; [ DW_TAG_member ] [em_tol] [line 117, size 32, align 32, offset 2432] [from real]
!534 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"niter", i32 118, i64 32, i64 32, i64 2464, i32 0, metadata !258} ; [ DW_TAG_member ] [niter] [line 118, size 32, align 32, offset 2464] [from int]
!535 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"fc_stepsize", i32 120, i64 32, i64 32, i64 2496, i32 0, metadata !258} ; [ DW_TAG_member ] [fc_stepsize] [line 120, size 32, align 32, offset 2496] [from int]
!536 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"nstcgsteep", i32 122, i64 32, i64 32, i64 2528, i32 0, metadata !258} ; [ DW_TAG_member ] [nstcgsteep] [line 122, size 32, align 32, offset 2528] [from int]
!537 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"eConstrAlg", i32 124, i64 32, i64 32, i64 2560, i32 0, metadata !258} ; [ DW_TAG_member ] [eConstrAlg] [line 124, size 32, align 32, offset 2560] [from int]
!538 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"nProjOrder", i32 125, i64 32, i64 32, i64 2592, i32 0, metadata !258} ; [ DW_TAG_member ] [nProjOrder] [line 125, size 32, align 32, offset 2592] [from int]
!539 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"LincsWarnAngle", i32 126, i64 32, i64 32, i64 2624, i32 0, metadata !260} ; [ DW_TAG_member ] [LincsWarnAngle] [line 126, size 32, align 32, offset 2624] [from real]
!540 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"bShakeSOR", i32 127, i64 32, i64 32, i64 2656, i32 0, metadata !258} ; [ DW_TAG_member ] [bShakeSOR] [line 127, size 32, align 32, offset 2656] [from int]
!541 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"bd_temp", i32 128, i64 32, i64 32, i64 2688, i32 0, metadata !260} ; [ DW_TAG_member ] [bd_temp] [line 128, size 32, align 32, offset 2688] [from real]
!542 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"bd_fric", i32 129, i64 32, i64 32, i64 2720, i32 0, metadata !260} ; [ DW_TAG_member ] [bd_fric] [line 129, size 32, align 32, offset 2720] [from real]
!543 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"ld_seed", i32 130, i64 32, i64 32, i64 2752, i32 0, metadata !258} ; [ DW_TAG_member ] [ld_seed] [line 130, size 32, align 32, offset 2752] [from int]
!544 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"cos_accel", i32 131, i64 32, i64 32, i64 2784, i32 0, metadata !260} ; [ DW_TAG_member ] [cos_accel] [line 131, size 32, align 32, offset 2784] [from real]
!545 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"userint1", i32 132, i64 32, i64 32, i64 2816, i32 0, metadata !258} ; [ DW_TAG_member ] [userint1] [line 132, size 32, align 32, offset 2816] [from int]
!546 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"userint2", i32 133, i64 32, i64 32, i64 2848, i32 0, metadata !258} ; [ DW_TAG_member ] [userint2] [line 133, size 32, align 32, offset 2848] [from int]
!547 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"userint3", i32 134, i64 32, i64 32, i64 2880, i32 0, metadata !258} ; [ DW_TAG_member ] [userint3] [line 134, size 32, align 32, offset 2880] [from int]
!548 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"userint4", i32 135, i64 32, i64 32, i64 2912, i32 0, metadata !258} ; [ DW_TAG_member ] [userint4] [line 135, size 32, align 32, offset 2912] [from int]
!549 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"userreal1", i32 136, i64 32, i64 32, i64 2944, i32 0, metadata !260} ; [ DW_TAG_member ] [userreal1] [line 136, size 32, align 32, offset 2944] [from real]
!550 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"userreal2", i32 137, i64 32, i64 32, i64 2976, i32 0, metadata !260} ; [ DW_TAG_member ] [userreal2] [line 137, size 32, align 32, offset 2976] [from real]
!551 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"userreal3", i32 138, i64 32, i64 32, i64 3008, i32 0, metadata !260} ; [ DW_TAG_member ] [userreal3] [line 138, size 32, align 32, offset 3008] [from real]
!552 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"userreal4", i32 139, i64 32, i64 32, i64 3040, i32 0, metadata !260} ; [ DW_TAG_member ] [userreal4] [line 139, size 32, align 32, offset 3040] [from real]
!553 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"opts", i32 140, i64 512, i64 64, i64 3072, i32 0, metadata !554} ; [ DW_TAG_member ] [opts] [line 140, size 512, align 64, offset 3072] [from t_grpopts]
!554 = metadata !{i32 786454, metadata !468, null, metadata !"t_grpopts", i32 53, i64 0, i64 0, i64 0, i32 0, metadata !555} ; [ DW_TAG_typedef ] [t_grpopts] [line 53, size 0, align 0, offset 0] [from ]
!555 = metadata !{i32 786451, metadata !468, null, metadata !"", i32 42, i64 512, i64 64, i32 0, i32 0, null, metadata !556, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 42, size 512, align 64, offset 0] [from ]
!556 = metadata !{metadata !557, metadata !558, metadata !559, metadata !560, metadata !561, metadata !562, metadata !563, metadata !564, metadata !565, metadata !569}
!557 = metadata !{i32 786445, metadata !468, metadata !555, metadata !"ngtc", i32 43, i64 32, i64 32, i64 0, i32 0, metadata !258} ; [ DW_TAG_member ] [ngtc] [line 43, size 32, align 32, offset 0] [from int]
!558 = metadata !{i32 786445, metadata !468, metadata !555, metadata !"ngacc", i32 44, i64 32, i64 32, i64 32, i32 0, metadata !258} ; [ DW_TAG_member ] [ngacc] [line 44, size 32, align 32, offset 32] [from int]
!559 = metadata !{i32 786445, metadata !468, metadata !555, metadata !"ngfrz", i32 45, i64 32, i64 32, i64 64, i32 0, metadata !258} ; [ DW_TAG_member ] [ngfrz] [line 45, size 32, align 32, offset 64] [from int]
!560 = metadata !{i32 786445, metadata !468, metadata !555, metadata !"ngener", i32 46, i64 32, i64 32, i64 96, i32 0, metadata !258} ; [ DW_TAG_member ] [ngener] [line 46, size 32, align 32, offset 96] [from int]
!561 = metadata !{i32 786445, metadata !468, metadata !555, metadata !"nrdf", i32 47, i64 64, i64 64, i64 128, i32 0, metadata !279} ; [ DW_TAG_member ] [nrdf] [line 47, size 64, align 64, offset 128] [from ]
!562 = metadata !{i32 786445, metadata !468, metadata !555, metadata !"ref_t", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !279} ; [ DW_TAG_member ] [ref_t] [line 48, size 64, align 64, offset 192] [from ]
!563 = metadata !{i32 786445, metadata !468, metadata !555, metadata !"tau_t", i32 49, i64 64, i64 64, i64 256, i32 0, metadata !279} ; [ DW_TAG_member ] [tau_t] [line 49, size 64, align 64, offset 256] [from ]
!564 = metadata !{i32 786445, metadata !468, metadata !555, metadata !"acc", i32 50, i64 64, i64 64, i64 320, i32 0, metadata !313} ; [ DW_TAG_member ] [acc] [line 50, size 64, align 64, offset 320] [from ]
!565 = metadata !{i32 786445, metadata !468, metadata !555, metadata !"nFreeze", i32 51, i64 64, i64 64, i64 384, i32 0, metadata !566} ; [ DW_TAG_member ] [nFreeze] [line 51, size 64, align 64, offset 384] [from ]
!566 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !567} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ivec]
!567 = metadata !{i32 786454, metadata !468, null, metadata !"ivec", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !568} ; [ DW_TAG_typedef ] [ivec] [line 107, size 0, align 0, offset 0] [from ]
!568 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !258, metadata !303, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!569 = metadata !{i32 786445, metadata !468, metadata !555, metadata !"eg_excl", i32 52, i64 64, i64 64, i64 448, i32 0, metadata !310} ; [ DW_TAG_member ] [eg_excl] [line 52, size 64, align 64, offset 448] [from ]
!570 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"ex", i32 141, i64 576, i64 64, i64 3584, i32 0, metadata !571} ; [ DW_TAG_member ] [ex] [line 141, size 576, align 64, offset 3584] [from ]
!571 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 576, i64 64, i32 0, i32 0, metadata !572, metadata !303, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 576, align 64, offset 0] [from t_cosines]
!572 = metadata !{i32 786454, metadata !468, null, metadata !"t_cosines", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !573} ; [ DW_TAG_typedef ] [t_cosines] [line 40, size 0, align 0, offset 0] [from ]
!573 = metadata !{i32 786451, metadata !468, null, metadata !"", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !574, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 64, offset 0] [from ]
!574 = metadata !{metadata !575, metadata !576, metadata !577}
!575 = metadata !{i32 786445, metadata !468, metadata !573, metadata !"n", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !258} ; [ DW_TAG_member ] [n] [line 37, size 32, align 32, offset 0] [from int]
!576 = metadata !{i32 786445, metadata !468, metadata !573, metadata !"a", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !279} ; [ DW_TAG_member ] [a] [line 38, size 64, align 64, offset 64] [from ]
!577 = metadata !{i32 786445, metadata !468, metadata !573, metadata !"phi", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !279} ; [ DW_TAG_member ] [phi] [line 39, size 64, align 64, offset 128] [from ]
!578 = metadata !{i32 786445, metadata !468, metadata !467, metadata !"et", i32 142, i64 576, i64 64, i64 4160, i32 0, metadata !571} ; [ DW_TAG_member ] [et] [line 142, size 576, align 64, offset 4160] [from ]
!579 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !580} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_topology]
!580 = metadata !{i32 786454, metadata !1, null, metadata !"t_topology", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !581} ; [ DW_TAG_typedef ] [t_topology] [line 42, size 0, align 0, offset 0] [from ]
!581 = metadata !{i32 786451, metadata !582, null, metadata !"", i32 36, i64 402112, i64 64, i32 0, i32 0, null, metadata !583, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 402112, align 64, offset 0] [from ]
!582 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/topology.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!583 = metadata !{metadata !584, metadata !586, metadata !723, metadata !788, metadata !790}
!584 = metadata !{i32 786445, metadata !582, metadata !581, metadata !"name", i32 37, i64 64, i64 64, i64 0, i32 0, metadata !585} ; [ DW_TAG_member ] [name] [line 37, size 64, align 64, offset 0] [from ]
!585 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !371} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!586 = metadata !{i32 786445, metadata !582, metadata !581, metadata !"idef", i32 38, i64 366336, i64 64, i64 64, i32 0, metadata !587} ; [ DW_TAG_member ] [idef] [line 38, size 366336, align 64, offset 64] [from t_idef]
!587 = metadata !{i32 786454, metadata !582, null, metadata !"t_idef", i32 188, i64 0, i64 0, i64 0, i32 0, metadata !588} ; [ DW_TAG_typedef ] [t_idef] [line 188, size 0, align 0, offset 0] [from ]
!588 = metadata !{i32 786451, metadata !36, null, metadata !"", i32 179, i64 366336, i64 64, i32 0, i32 0, null, metadata !589, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 179, size 366336, align 64, offset 0] [from ]
!589 = metadata !{metadata !590, metadata !591, metadata !592, metadata !593, metadata !596, metadata !708}
!590 = metadata !{i32 786445, metadata !36, metadata !588, metadata !"ntypes", i32 181, i64 32, i64 32, i64 0, i32 0, metadata !258} ; [ DW_TAG_member ] [ntypes] [line 181, size 32, align 32, offset 0] [from int]
!591 = metadata !{i32 786445, metadata !36, metadata !588, metadata !"nodeid", i32 182, i64 32, i64 32, i64 32, i32 0, metadata !258} ; [ DW_TAG_member ] [nodeid] [line 182, size 32, align 32, offset 32] [from int]
!592 = metadata !{i32 786445, metadata !36, metadata !588, metadata !"atnr", i32 183, i64 32, i64 32, i64 64, i32 0, metadata !258} ; [ DW_TAG_member ] [atnr] [line 183, size 32, align 32, offset 64] [from int]
!593 = metadata !{i32 786445, metadata !36, metadata !588, metadata !"functype", i32 184, i64 64, i64 64, i64 128, i32 0, metadata !594} ; [ DW_TAG_member ] [functype] [line 184, size 64, align 64, offset 128] [from ]
!594 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !595} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_functype]
!595 = metadata !{i32 786454, metadata !36, null, metadata !"t_functype", i32 133, i64 0, i64 0, i64 0, i32 0, metadata !258} ; [ DW_TAG_typedef ] [t_functype] [line 133, size 0, align 0, offset 0] [from int]
!596 = metadata !{i32 786445, metadata !36, metadata !588, metadata !"iparams", i32 185, i64 64, i64 64, i64 192, i32 0, metadata !597} ; [ DW_TAG_member ] [iparams] [line 185, size 64, align 64, offset 192] [from ]
!597 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !598} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_iparams]
!598 = metadata !{i32 786454, metadata !36, null, metadata !"t_iparams", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !599} ; [ DW_TAG_typedef ] [t_iparams] [line 131, size 0, align 0, offset 0] [from ]
!599 = metadata !{i32 786455, metadata !36, null, metadata !"", i32 97, i64 192, i64 32, i64 0, i32 0, null, metadata !600, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 97, size 192, align 32, offset 0] [from ]
!600 = metadata !{metadata !601, metadata !607, metadata !614, metadata !620, metadata !629, metadata !634, metadata !641, metadata !649, metadata !654, metadata !659, metadata !665, metadata !670, metadata !677, metadata !686, metadata !695, metadata !704}
!601 = metadata !{i32 786445, metadata !36, metadata !599, metadata !"bham", i32 105, i64 96, i64 32, i64 0, i32 0, metadata !602} ; [ DW_TAG_member ] [bham] [line 105, size 96, align 32, offset 0] [from ]
!602 = metadata !{i32 786451, metadata !36, metadata !599, metadata !"", i32 105, i64 96, i64 32, i32 0, i32 0, null, metadata !603, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 105, size 96, align 32, offset 0] [from ]
!603 = metadata !{metadata !604, metadata !605, metadata !606}
!604 = metadata !{i32 786445, metadata !36, metadata !602, metadata !"a", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !260} ; [ DW_TAG_member ] [a] [line 105, size 32, align 32, offset 0] [from real]
!605 = metadata !{i32 786445, metadata !36, metadata !602, metadata !"b", i32 105, i64 32, i64 32, i64 32, i32 0, metadata !260} ; [ DW_TAG_member ] [b] [line 105, size 32, align 32, offset 32] [from real]
!606 = metadata !{i32 786445, metadata !36, metadata !602, metadata !"c", i32 105, i64 32, i64 32, i64 64, i32 0, metadata !260} ; [ DW_TAG_member ] [c] [line 105, size 32, align 32, offset 64] [from real]
!607 = metadata !{i32 786445, metadata !36, metadata !599, metadata !"harmonic", i32 106, i64 128, i64 32, i64 0, i32 0, metadata !608} ; [ DW_TAG_member ] [harmonic] [line 106, size 128, align 32, offset 0] [from ]
!608 = metadata !{i32 786451, metadata !36, metadata !599, metadata !"", i32 106, i64 128, i64 32, i32 0, i32 0, null, metadata !609, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 106, size 128, align 32, offset 0] [from ]
!609 = metadata !{metadata !610, metadata !611, metadata !612, metadata !613}
!610 = metadata !{i32 786445, metadata !36, metadata !608, metadata !"rA", i32 106, i64 32, i64 32, i64 0, i32 0, metadata !260} ; [ DW_TAG_member ] [rA] [line 106, size 32, align 32, offset 0] [from real]
!611 = metadata !{i32 786445, metadata !36, metadata !608, metadata !"krA", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !260} ; [ DW_TAG_member ] [krA] [line 106, size 32, align 32, offset 32] [from real]
!612 = metadata !{i32 786445, metadata !36, metadata !608, metadata !"rB", i32 106, i64 32, i64 32, i64 64, i32 0, metadata !260} ; [ DW_TAG_member ] [rB] [line 106, size 32, align 32, offset 64] [from real]
!613 = metadata !{i32 786445, metadata !36, metadata !608, metadata !"krB", i32 106, i64 32, i64 32, i64 96, i32 0, metadata !260} ; [ DW_TAG_member ] [krB] [line 106, size 32, align 32, offset 96] [from real]
!614 = metadata !{i32 786445, metadata !36, metadata !599, metadata !"cubic", i32 108, i64 96, i64 32, i64 0, i32 0, metadata !615} ; [ DW_TAG_member ] [cubic] [line 108, size 96, align 32, offset 0] [from ]
!615 = metadata !{i32 786451, metadata !36, metadata !599, metadata !"", i32 108, i64 96, i64 32, i32 0, i32 0, null, metadata !616, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 108, size 96, align 32, offset 0] [from ]
!616 = metadata !{metadata !617, metadata !618, metadata !619}
!617 = metadata !{i32 786445, metadata !36, metadata !615, metadata !"b0", i32 108, i64 32, i64 32, i64 0, i32 0, metadata !260} ; [ DW_TAG_member ] [b0] [line 108, size 32, align 32, offset 0] [from real]
!618 = metadata !{i32 786445, metadata !36, metadata !615, metadata !"kb", i32 108, i64 32, i64 32, i64 32, i32 0, metadata !260} ; [ DW_TAG_member ] [kb] [line 108, size 32, align 32, offset 32] [from real]
!619 = metadata !{i32 786445, metadata !36, metadata !615, metadata !"kcub", i32 108, i64 32, i64 32, i64 64, i32 0, metadata !260} ; [ DW_TAG_member ] [kcub] [line 108, size 32, align 32, offset 64] [from real]
!620 = metadata !{i32 786445, metadata !36, metadata !599, metadata !"wpol", i32 110, i64 192, i64 32, i64 0, i32 0, metadata !621} ; [ DW_TAG_member ] [wpol] [line 110, size 192, align 32, offset 0] [from ]
!621 = metadata !{i32 786451, metadata !36, metadata !599, metadata !"", i32 110, i64 192, i64 32, i32 0, i32 0, null, metadata !622, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 110, size 192, align 32, offset 0] [from ]
!622 = metadata !{metadata !623, metadata !624, metadata !625, metadata !626, metadata !627, metadata !628}
!623 = metadata !{i32 786445, metadata !36, metadata !621, metadata !"kx", i32 110, i64 32, i64 32, i64 0, i32 0, metadata !260} ; [ DW_TAG_member ] [kx] [line 110, size 32, align 32, offset 0] [from real]
!624 = metadata !{i32 786445, metadata !36, metadata !621, metadata !"ky", i32 110, i64 32, i64 32, i64 32, i32 0, metadata !260} ; [ DW_TAG_member ] [ky] [line 110, size 32, align 32, offset 32] [from real]
!625 = metadata !{i32 786445, metadata !36, metadata !621, metadata !"kz", i32 110, i64 32, i64 32, i64 64, i32 0, metadata !260} ; [ DW_TAG_member ] [kz] [line 110, size 32, align 32, offset 64] [from real]
!626 = metadata !{i32 786445, metadata !36, metadata !621, metadata !"rOH", i32 110, i64 32, i64 32, i64 96, i32 0, metadata !260} ; [ DW_TAG_member ] [rOH] [line 110, size 32, align 32, offset 96] [from real]
!627 = metadata !{i32 786445, metadata !36, metadata !621, metadata !"rHH", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !260} ; [ DW_TAG_member ] [rHH] [line 110, size 32, align 32, offset 128] [from real]
!628 = metadata !{i32 786445, metadata !36, metadata !621, metadata !"rOD", i32 110, i64 32, i64 32, i64 160, i32 0, metadata !260} ; [ DW_TAG_member ] [rOD] [line 110, size 32, align 32, offset 160] [from real]
!629 = metadata !{i32 786445, metadata !36, metadata !599, metadata !"lj", i32 111, i64 64, i64 32, i64 0, i32 0, metadata !630} ; [ DW_TAG_member ] [lj] [line 111, size 64, align 32, offset 0] [from ]
!630 = metadata !{i32 786451, metadata !36, metadata !599, metadata !"", i32 111, i64 64, i64 32, i32 0, i32 0, null, metadata !631, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 111, size 64, align 32, offset 0] [from ]
!631 = metadata !{metadata !632, metadata !633}
!632 = metadata !{i32 786445, metadata !36, metadata !630, metadata !"c6", i32 111, i64 32, i64 32, i64 0, i32 0, metadata !260} ; [ DW_TAG_member ] [c6] [line 111, size 32, align 32, offset 0] [from real]
!633 = metadata !{i32 786445, metadata !36, metadata !630, metadata !"c12", i32 111, i64 32, i64 32, i64 32, i32 0, metadata !260} ; [ DW_TAG_member ] [c12] [line 111, size 32, align 32, offset 32] [from real]
!634 = metadata !{i32 786445, metadata !36, metadata !599, metadata !"lj14", i32 112, i64 128, i64 32, i64 0, i32 0, metadata !635} ; [ DW_TAG_member ] [lj14] [line 112, size 128, align 32, offset 0] [from ]
!635 = metadata !{i32 786451, metadata !36, metadata !599, metadata !"", i32 112, i64 128, i64 32, i32 0, i32 0, null, metadata !636, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 112, size 128, align 32, offset 0] [from ]
!636 = metadata !{metadata !637, metadata !638, metadata !639, metadata !640}
!637 = metadata !{i32 786445, metadata !36, metadata !635, metadata !"c6A", i32 112, i64 32, i64 32, i64 0, i32 0, metadata !260} ; [ DW_TAG_member ] [c6A] [line 112, size 32, align 32, offset 0] [from real]
!638 = metadata !{i32 786445, metadata !36, metadata !635, metadata !"c12A", i32 112, i64 32, i64 32, i64 32, i32 0, metadata !260} ; [ DW_TAG_member ] [c12A] [line 112, size 32, align 32, offset 32] [from real]
!639 = metadata !{i32 786445, metadata !36, metadata !635, metadata !"c6B", i32 112, i64 32, i64 32, i64 64, i32 0, metadata !260} ; [ DW_TAG_member ] [c6B] [line 112, size 32, align 32, offset 64] [from real]
!640 = metadata !{i32 786445, metadata !36, metadata !635, metadata !"c12B", i32 112, i64 32, i64 32, i64 96, i32 0, metadata !260} ; [ DW_TAG_member ] [c12B] [line 112, size 32, align 32, offset 96] [from real]
!641 = metadata !{i32 786445, metadata !36, metadata !599, metadata !"pdihs", i32 117, i64 160, i64 32, i64 0, i32 0, metadata !642} ; [ DW_TAG_member ] [pdihs] [line 117, size 160, align 32, offset 0] [from ]
!642 = metadata !{i32 786451, metadata !36, metadata !599, metadata !"", i32 117, i64 160, i64 32, i32 0, i32 0, null, metadata !643, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 117, size 160, align 32, offset 0] [from ]
!643 = metadata !{metadata !644, metadata !645, metadata !646, metadata !647, metadata !648}
!644 = metadata !{i32 786445, metadata !36, metadata !642, metadata !"phiA", i32 117, i64 32, i64 32, i64 0, i32 0, metadata !260} ; [ DW_TAG_member ] [phiA] [line 117, size 32, align 32, offset 0] [from real]
!645 = metadata !{i32 786445, metadata !36, metadata !642, metadata !"cpA", i32 117, i64 32, i64 32, i64 32, i32 0, metadata !260} ; [ DW_TAG_member ] [cpA] [line 117, size 32, align 32, offset 32] [from real]
!646 = metadata !{i32 786445, metadata !36, metadata !642, metadata !"mult", i32 117, i64 32, i64 32, i64 64, i32 0, metadata !258} ; [ DW_TAG_member ] [mult] [line 117, size 32, align 32, offset 64] [from int]
!647 = metadata !{i32 786445, metadata !36, metadata !642, metadata !"phiB", i32 117, i64 32, i64 32, i64 96, i32 0, metadata !260} ; [ DW_TAG_member ] [phiB] [line 117, size 32, align 32, offset 96] [from real]
!648 = metadata !{i32 786445, metadata !36, metadata !642, metadata !"cpB", i32 117, i64 32, i64 32, i64 128, i32 0, metadata !260} ; [ DW_TAG_member ] [cpB] [line 117, size 32, align 32, offset 128] [from real]
!649 = metadata !{i32 786445, metadata !36, metadata !599, metadata !"shake", i32 118, i64 64, i64 32, i64 0, i32 0, metadata !650} ; [ DW_TAG_member ] [shake] [line 118, size 64, align 32, offset 0] [from ]
!650 = metadata !{i32 786451, metadata !36, metadata !599, metadata !"", i32 118, i64 64, i64 32, i32 0, i32 0, null, metadata !651, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 118, size 64, align 32, offset 0] [from ]
!651 = metadata !{metadata !652, metadata !653}
!652 = metadata !{i32 786445, metadata !36, metadata !650, metadata !"dA", i32 118, i64 32, i64 32, i64 0, i32 0, metadata !260} ; [ DW_TAG_member ] [dA] [line 118, size 32, align 32, offset 0] [from real]
!653 = metadata !{i32 786445, metadata !36, metadata !650, metadata !"dB", i32 118, i64 32, i64 32, i64 32, i32 0, metadata !260} ; [ DW_TAG_member ] [dB] [line 118, size 32, align 32, offset 32] [from real]
!654 = metadata !{i32 786445, metadata !36, metadata !599, metadata !"settle", i32 123, i64 64, i64 32, i64 0, i32 0, metadata !655} ; [ DW_TAG_member ] [settle] [line 123, size 64, align 32, offset 0] [from ]
!655 = metadata !{i32 786451, metadata !36, metadata !599, metadata !"", i32 123, i64 64, i64 32, i32 0, i32 0, null, metadata !656, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 123, size 64, align 32, offset 0] [from ]
!656 = metadata !{metadata !657, metadata !658}
!657 = metadata !{i32 786445, metadata !36, metadata !655, metadata !"doh", i32 123, i64 32, i64 32, i64 0, i32 0, metadata !260} ; [ DW_TAG_member ] [doh] [line 123, size 32, align 32, offset 0] [from real]
!658 = metadata !{i32 786445, metadata !36, metadata !655, metadata !"dhh", i32 123, i64 32, i64 32, i64 32, i32 0, metadata !260} ; [ DW_TAG_member ] [dhh] [line 123, size 32, align 32, offset 32] [from real]
!659 = metadata !{i32 786445, metadata !36, metadata !599, metadata !"morse", i32 124, i64 96, i64 32, i64 0, i32 0, metadata !660} ; [ DW_TAG_member ] [morse] [line 124, size 96, align 32, offset 0] [from ]
!660 = metadata !{i32 786451, metadata !36, metadata !599, metadata !"", i32 124, i64 96, i64 32, i32 0, i32 0, null, metadata !661, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 124, size 96, align 32, offset 0] [from ]
!661 = metadata !{metadata !662, metadata !663, metadata !664}
!662 = metadata !{i32 786445, metadata !36, metadata !660, metadata !"b0", i32 124, i64 32, i64 32, i64 0, i32 0, metadata !260} ; [ DW_TAG_member ] [b0] [line 124, size 32, align 32, offset 0] [from real]
!663 = metadata !{i32 786445, metadata !36, metadata !660, metadata !"cb", i32 124, i64 32, i64 32, i64 32, i32 0, metadata !260} ; [ DW_TAG_member ] [cb] [line 124, size 32, align 32, offset 32] [from real]
!664 = metadata !{i32 786445, metadata !36, metadata !660, metadata !"beta", i32 124, i64 32, i64 32, i64 64, i32 0, metadata !260} ; [ DW_TAG_member ] [beta] [line 124, size 32, align 32, offset 64] [from real]
!665 = metadata !{i32 786445, metadata !36, metadata !599, metadata !"posres", i32 125, i64 192, i64 32, i64 0, i32 0, metadata !666} ; [ DW_TAG_member ] [posres] [line 125, size 192, align 32, offset 0] [from ]
!666 = metadata !{i32 786451, metadata !36, metadata !599, metadata !"", i32 125, i64 192, i64 32, i32 0, i32 0, null, metadata !667, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 125, size 192, align 32, offset 0] [from ]
!667 = metadata !{metadata !668, metadata !669}
!668 = metadata !{i32 786445, metadata !36, metadata !666, metadata !"pos0", i32 125, i64 96, i64 32, i64 0, i32 0, metadata !302} ; [ DW_TAG_member ] [pos0] [line 125, size 96, align 32, offset 0] [from ]
!669 = metadata !{i32 786445, metadata !36, metadata !666, metadata !"fc", i32 125, i64 96, i64 32, i64 96, i32 0, metadata !302} ; [ DW_TAG_member ] [fc] [line 125, size 96, align 32, offset 96] [from ]
!670 = metadata !{i32 786445, metadata !36, metadata !599, metadata !"rbdihs", i32 126, i64 192, i64 32, i64 0, i32 0, metadata !671} ; [ DW_TAG_member ] [rbdihs] [line 126, size 192, align 32, offset 0] [from ]
!671 = metadata !{i32 786451, metadata !36, metadata !599, metadata !"", i32 126, i64 192, i64 32, i32 0, i32 0, null, metadata !672, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 126, size 192, align 32, offset 0] [from ]
!672 = metadata !{metadata !673}
!673 = metadata !{i32 786445, metadata !36, metadata !671, metadata !"rbc", i32 126, i64 192, i64 32, i64 0, i32 0, metadata !674} ; [ DW_TAG_member ] [rbc] [line 126, size 192, align 32, offset 0] [from ]
!674 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !260, metadata !675, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from real]
!675 = metadata !{metadata !676}
!676 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!677 = metadata !{i32 786445, metadata !36, metadata !599, metadata !"dummy", i32 127, i64 192, i64 32, i64 0, i32 0, metadata !678} ; [ DW_TAG_member ] [dummy] [line 127, size 192, align 32, offset 0] [from ]
!678 = metadata !{i32 786451, metadata !36, metadata !599, metadata !"", i32 127, i64 192, i64 32, i32 0, i32 0, null, metadata !679, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 127, size 192, align 32, offset 0] [from ]
!679 = metadata !{metadata !680, metadata !681, metadata !682, metadata !683, metadata !684, metadata !685}
!680 = metadata !{i32 786445, metadata !36, metadata !678, metadata !"a", i32 127, i64 32, i64 32, i64 0, i32 0, metadata !260} ; [ DW_TAG_member ] [a] [line 127, size 32, align 32, offset 0] [from real]
!681 = metadata !{i32 786445, metadata !36, metadata !678, metadata !"b", i32 127, i64 32, i64 32, i64 32, i32 0, metadata !260} ; [ DW_TAG_member ] [b] [line 127, size 32, align 32, offset 32] [from real]
!682 = metadata !{i32 786445, metadata !36, metadata !678, metadata !"c", i32 127, i64 32, i64 32, i64 64, i32 0, metadata !260} ; [ DW_TAG_member ] [c] [line 127, size 32, align 32, offset 64] [from real]
!683 = metadata !{i32 786445, metadata !36, metadata !678, metadata !"d", i32 127, i64 32, i64 32, i64 96, i32 0, metadata !260} ; [ DW_TAG_member ] [d] [line 127, size 32, align 32, offset 96] [from real]
!684 = metadata !{i32 786445, metadata !36, metadata !678, metadata !"e", i32 127, i64 32, i64 32, i64 128, i32 0, metadata !260} ; [ DW_TAG_member ] [e] [line 127, size 32, align 32, offset 128] [from real]
!685 = metadata !{i32 786445, metadata !36, metadata !678, metadata !"f", i32 127, i64 32, i64 32, i64 160, i32 0, metadata !260} ; [ DW_TAG_member ] [f] [line 127, size 32, align 32, offset 160] [from real]
!686 = metadata !{i32 786445, metadata !36, metadata !599, metadata !"disres", i32 128, i64 192, i64 32, i64 0, i32 0, metadata !687} ; [ DW_TAG_member ] [disres] [line 128, size 192, align 32, offset 0] [from ]
!687 = metadata !{i32 786451, metadata !36, metadata !599, metadata !"", i32 128, i64 192, i64 32, i32 0, i32 0, null, metadata !688, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 128, size 192, align 32, offset 0] [from ]
!688 = metadata !{metadata !689, metadata !690, metadata !691, metadata !692, metadata !693, metadata !694}
!689 = metadata !{i32 786445, metadata !36, metadata !687, metadata !"low", i32 128, i64 32, i64 32, i64 0, i32 0, metadata !260} ; [ DW_TAG_member ] [low] [line 128, size 32, align 32, offset 0] [from real]
!690 = metadata !{i32 786445, metadata !36, metadata !687, metadata !"up1", i32 128, i64 32, i64 32, i64 32, i32 0, metadata !260} ; [ DW_TAG_member ] [up1] [line 128, size 32, align 32, offset 32] [from real]
!691 = metadata !{i32 786445, metadata !36, metadata !687, metadata !"up2", i32 128, i64 32, i64 32, i64 64, i32 0, metadata !260} ; [ DW_TAG_member ] [up2] [line 128, size 32, align 32, offset 64] [from real]
!692 = metadata !{i32 786445, metadata !36, metadata !687, metadata !"kfac", i32 128, i64 32, i64 32, i64 96, i32 0, metadata !260} ; [ DW_TAG_member ] [kfac] [line 128, size 32, align 32, offset 96] [from real]
!693 = metadata !{i32 786445, metadata !36, metadata !687, metadata !"type", i32 128, i64 32, i64 32, i64 128, i32 0, metadata !258} ; [ DW_TAG_member ] [type] [line 128, size 32, align 32, offset 128] [from int]
!694 = metadata !{i32 786445, metadata !36, metadata !687, metadata !"label", i32 128, i64 32, i64 32, i64 160, i32 0, metadata !258} ; [ DW_TAG_member ] [label] [line 128, size 32, align 32, offset 160] [from int]
!695 = metadata !{i32 786445, metadata !36, metadata !599, metadata !"orires", i32 129, i64 192, i64 32, i64 0, i32 0, metadata !696} ; [ DW_TAG_member ] [orires] [line 129, size 192, align 32, offset 0] [from ]
!696 = metadata !{i32 786451, metadata !36, metadata !599, metadata !"", i32 129, i64 192, i64 32, i32 0, i32 0, null, metadata !697, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 129, size 192, align 32, offset 0] [from ]
!697 = metadata !{metadata !698, metadata !699, metadata !700, metadata !701, metadata !702, metadata !703}
!698 = metadata !{i32 786445, metadata !36, metadata !696, metadata !"ex", i32 129, i64 32, i64 32, i64 0, i32 0, metadata !258} ; [ DW_TAG_member ] [ex] [line 129, size 32, align 32, offset 0] [from int]
!699 = metadata !{i32 786445, metadata !36, metadata !696, metadata !"pow", i32 129, i64 32, i64 32, i64 32, i32 0, metadata !258} ; [ DW_TAG_member ] [pow] [line 129, size 32, align 32, offset 32] [from int]
!700 = metadata !{i32 786445, metadata !36, metadata !696, metadata !"label", i32 129, i64 32, i64 32, i64 64, i32 0, metadata !258} ; [ DW_TAG_member ] [label] [line 129, size 32, align 32, offset 64] [from int]
!701 = metadata !{i32 786445, metadata !36, metadata !696, metadata !"c", i32 129, i64 32, i64 32, i64 96, i32 0, metadata !260} ; [ DW_TAG_member ] [c] [line 129, size 32, align 32, offset 96] [from real]
!702 = metadata !{i32 786445, metadata !36, metadata !696, metadata !"obs", i32 129, i64 32, i64 32, i64 128, i32 0, metadata !260} ; [ DW_TAG_member ] [obs] [line 129, size 32, align 32, offset 128] [from real]
!703 = metadata !{i32 786445, metadata !36, metadata !696, metadata !"kfac", i32 129, i64 32, i64 32, i64 160, i32 0, metadata !260} ; [ DW_TAG_member ] [kfac] [line 129, size 32, align 32, offset 160] [from real]
!704 = metadata !{i32 786445, metadata !36, metadata !599, metadata !"generic", i32 130, i64 192, i64 32, i64 0, i32 0, metadata !705} ; [ DW_TAG_member ] [generic] [line 130, size 192, align 32, offset 0] [from ]
!705 = metadata !{i32 786451, metadata !36, metadata !599, metadata !"", i32 130, i64 192, i64 32, i32 0, i32 0, null, metadata !706, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 130, size 192, align 32, offset 0] [from ]
!706 = metadata !{metadata !707}
!707 = metadata !{i32 786445, metadata !36, metadata !705, metadata !"buf", i32 130, i64 192, i64 32, i64 0, i32 0, metadata !674} ; [ DW_TAG_member ] [buf] [line 130, size 192, align 32, offset 0] [from ]
!708 = metadata !{i32 786445, metadata !36, metadata !588, metadata !"il", i32 187, i64 366080, i64 64, i64 256, i32 0, metadata !709} ; [ DW_TAG_member ] [il] [line 187, size 366080, align 64, offset 256] [from ]
!709 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 366080, i64 64, i32 0, i32 0, metadata !710, metadata !721, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 366080, align 64, offset 0] [from t_ilist]
!710 = metadata !{i32 786454, metadata !36, null, metadata !"t_ilist", i32 140, i64 0, i64 0, i64 0, i32 0, metadata !711} ; [ DW_TAG_typedef ] [t_ilist] [line 140, size 0, align 0, offset 0] [from ]
!711 = metadata !{i32 786451, metadata !36, null, metadata !"", i32 135, i64 8320, i64 64, i32 0, i32 0, null, metadata !712, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 135, size 8320, align 64, offset 0] [from ]
!712 = metadata !{metadata !713, metadata !714, metadata !718}
!713 = metadata !{i32 786445, metadata !36, metadata !711, metadata !"nr", i32 137, i64 32, i64 32, i64 0, i32 0, metadata !258} ; [ DW_TAG_member ] [nr] [line 137, size 32, align 32, offset 0] [from int]
!714 = metadata !{i32 786445, metadata !36, metadata !711, metadata !"multinr", i32 138, i64 8192, i64 32, i64 32, i32 0, metadata !715} ; [ DW_TAG_member ] [multinr] [line 138, size 8192, align 32, offset 32] [from ]
!715 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !258, metadata !716, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!716 = metadata !{metadata !717}
!717 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!718 = metadata !{i32 786445, metadata !36, metadata !711, metadata !"iatoms", i32 139, i64 64, i64 64, i64 8256, i32 0, metadata !719} ; [ DW_TAG_member ] [iatoms] [line 139, size 64, align 64, offset 8256] [from ]
!719 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !720} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_iatom]
!720 = metadata !{i32 786454, metadata !36, null, metadata !"t_iatom", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !331} ; [ DW_TAG_typedef ] [t_iatom] [line 45, size 0, align 0, offset 0] [from atom_id]
!721 = metadata !{metadata !722}
!722 = metadata !{i32 786465, i64 0, i64 44}      ; [ DW_TAG_subrange_type ] [0, 43]
!723 = metadata !{i32 786445, metadata !582, metadata !581, metadata !"atoms", i32 39, i64 10240, i64 64, i64 366400, i32 0, metadata !724} ; [ DW_TAG_member ] [atoms] [line 39, size 10240, align 64, offset 366400] [from t_atoms]
!724 = metadata !{i32 786454, metadata !582, null, metadata !"t_atoms", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !725} ; [ DW_TAG_typedef ] [t_atoms] [line 94, size 0, align 0, offset 0] [from ]
!725 = metadata !{i32 786451, metadata !726, null, metadata !"", i32 75, i64 10240, i64 64, i32 0, i32 0, null, metadata !727, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 75, size 10240, align 64, offset 0] [from ]
!726 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/atoms.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!727 = metadata !{metadata !728, metadata !729, metadata !748, metadata !750, metadata !751, metadata !752, metadata !753, metadata !754, metadata !755, metadata !756, metadata !766, metadata !773}
!728 = metadata !{i32 786445, metadata !726, metadata !725, metadata !"nr", i32 76, i64 32, i64 32, i64 0, i32 0, metadata !258} ; [ DW_TAG_member ] [nr] [line 76, size 32, align 32, offset 0] [from int]
!729 = metadata !{i32 786445, metadata !726, metadata !725, metadata !"atom", i32 77, i64 64, i64 64, i64 64, i32 0, metadata !730} ; [ DW_TAG_member ] [atom] [line 77, size 64, align 64, offset 64] [from ]
!730 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !731} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atom]
!731 = metadata !{i32 786454, metadata !726, null, metadata !"t_atom", i32 57, i64 0, i64 0, i64 0, i32 0, metadata !732} ; [ DW_TAG_typedef ] [t_atom] [line 57, size 0, align 0, offset 0] [from ]
!732 = metadata !{i32 786451, metadata !726, null, metadata !"", i32 48, i64 320, i64 32, i32 0, i32 0, null, metadata !733, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 320, align 32, offset 0] [from ]
!733 = metadata !{metadata !734, metadata !735, metadata !736, metadata !737, metadata !738, metadata !739, metadata !740, metadata !741, metadata !742, metadata !747}
!734 = metadata !{i32 786445, metadata !726, metadata !732, metadata !"m", i32 49, i64 32, i64 32, i64 0, i32 0, metadata !260} ; [ DW_TAG_member ] [m] [line 49, size 32, align 32, offset 0] [from real]
!735 = metadata !{i32 786445, metadata !726, metadata !732, metadata !"q", i32 49, i64 32, i64 32, i64 32, i32 0, metadata !260} ; [ DW_TAG_member ] [q] [line 49, size 32, align 32, offset 32] [from real]
!736 = metadata !{i32 786445, metadata !726, metadata !732, metadata !"mB", i32 50, i64 32, i64 32, i64 64, i32 0, metadata !260} ; [ DW_TAG_member ] [mB] [line 50, size 32, align 32, offset 64] [from real]
!737 = metadata !{i32 786445, metadata !726, metadata !732, metadata !"qB", i32 50, i64 32, i64 32, i64 96, i32 0, metadata !260} ; [ DW_TAG_member ] [qB] [line 50, size 32, align 32, offset 96] [from real]
!738 = metadata !{i32 786445, metadata !726, metadata !732, metadata !"type", i32 51, i64 16, i64 16, i64 128, i32 0, metadata !398} ; [ DW_TAG_member ] [type] [line 51, size 16, align 16, offset 128] [from unsigned short]
!739 = metadata !{i32 786445, metadata !726, metadata !732, metadata !"typeB", i32 52, i64 16, i64 16, i64 144, i32 0, metadata !398} ; [ DW_TAG_member ] [typeB] [line 52, size 16, align 16, offset 144] [from unsigned short]
!740 = metadata !{i32 786445, metadata !726, metadata !732, metadata !"ptype", i32 53, i64 32, i64 32, i64 160, i32 0, metadata !258} ; [ DW_TAG_member ] [ptype] [line 53, size 32, align 32, offset 160] [from int]
!741 = metadata !{i32 786445, metadata !726, metadata !732, metadata !"resnr", i32 54, i64 32, i64 32, i64 192, i32 0, metadata !258} ; [ DW_TAG_member ] [resnr] [line 54, size 32, align 32, offset 192] [from int]
!742 = metadata !{i32 786445, metadata !726, metadata !732, metadata !"grpnr", i32 55, i64 72, i64 8, i64 224, i32 0, metadata !743} ; [ DW_TAG_member ] [grpnr] [line 55, size 72, align 8, offset 224] [from ]
!743 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 72, i64 8, i32 0, i32 0, metadata !744, metadata !745, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 72, align 8, offset 0] [from unsigned char]
!744 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!745 = metadata !{metadata !746}
!746 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!747 = metadata !{i32 786445, metadata !726, metadata !732, metadata !"chain", i32 56, i64 8, i64 8, i64 296, i32 0, metadata !744} ; [ DW_TAG_member ] [chain] [line 56, size 8, align 8, offset 296] [from unsigned char]
!748 = metadata !{i32 786445, metadata !726, metadata !725, metadata !"atomname", i32 80, i64 64, i64 64, i64 128, i32 0, metadata !749} ; [ DW_TAG_member ] [atomname] [line 80, size 64, align 64, offset 128] [from ]
!749 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !585} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!750 = metadata !{i32 786445, metadata !726, metadata !725, metadata !"atomtype", i32 82, i64 64, i64 64, i64 192, i32 0, metadata !749} ; [ DW_TAG_member ] [atomtype] [line 82, size 64, align 64, offset 192] [from ]
!751 = metadata !{i32 786445, metadata !726, metadata !725, metadata !"atomtypeB", i32 84, i64 64, i64 64, i64 256, i32 0, metadata !749} ; [ DW_TAG_member ] [atomtypeB] [line 84, size 64, align 64, offset 256] [from ]
!752 = metadata !{i32 786445, metadata !726, metadata !725, metadata !"nres", i32 86, i64 32, i64 32, i64 320, i32 0, metadata !258} ; [ DW_TAG_member ] [nres] [line 86, size 32, align 32, offset 320] [from int]
!753 = metadata !{i32 786445, metadata !726, metadata !725, metadata !"resname", i32 87, i64 64, i64 64, i64 384, i32 0, metadata !749} ; [ DW_TAG_member ] [resname] [line 87, size 64, align 64, offset 384] [from ]
!754 = metadata !{i32 786445, metadata !726, metadata !725, metadata !"ngrpname", i32 89, i64 32, i64 32, i64 448, i32 0, metadata !258} ; [ DW_TAG_member ] [ngrpname] [line 89, size 32, align 32, offset 448] [from int]
!755 = metadata !{i32 786445, metadata !726, metadata !725, metadata !"grpname", i32 90, i64 64, i64 64, i64 512, i32 0, metadata !749} ; [ DW_TAG_member ] [grpname] [line 90, size 64, align 64, offset 512] [from ]
!756 = metadata !{i32 786445, metadata !726, metadata !725, metadata !"excl", i32 91, i64 8448, i64 64, i64 576, i32 0, metadata !757} ; [ DW_TAG_member ] [excl] [line 91, size 8448, align 64, offset 576] [from t_block]
!757 = metadata !{i32 786454, metadata !726, null, metadata !"t_block", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !758} ; [ DW_TAG_typedef ] [t_block] [line 52, size 0, align 0, offset 0] [from ]
!758 = metadata !{i32 786451, metadata !759, null, metadata !"", i32 36, i64 8448, i64 64, i32 0, i32 0, null, metadata !760, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 8448, align 64, offset 0] [from ]
!759 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/block.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!760 = metadata !{metadata !761, metadata !762, metadata !763, metadata !764, metadata !765}
!761 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"multinr", i32 37, i64 8192, i64 32, i64 0, i32 0, metadata !715} ; [ DW_TAG_member ] [multinr] [line 37, size 8192, align 32, offset 0] [from ]
!762 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"nr", i32 43, i64 32, i64 32, i64 8192, i32 0, metadata !258} ; [ DW_TAG_member ] [nr] [line 43, size 32, align 32, offset 8192] [from int]
!763 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"index", i32 44, i64 64, i64 64, i64 8256, i32 0, metadata !330} ; [ DW_TAG_member ] [index] [line 44, size 64, align 64, offset 8256] [from ]
!764 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"nra", i32 45, i64 32, i64 32, i64 8320, i32 0, metadata !258} ; [ DW_TAG_member ] [nra] [line 45, size 32, align 32, offset 8320] [from int]
!765 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"a", i32 46, i64 64, i64 64, i64 8384, i32 0, metadata !330} ; [ DW_TAG_member ] [a] [line 46, size 64, align 64, offset 8384] [from ]
!766 = metadata !{i32 786445, metadata !726, metadata !725, metadata !"grps", i32 92, i64 1152, i64 64, i64 9024, i32 0, metadata !767} ; [ DW_TAG_member ] [grps] [line 92, size 1152, align 64, offset 9024] [from ]
!767 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 64, i32 0, i32 0, metadata !768, metadata !745, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1152, align 64, offset 0] [from t_grps]
!768 = metadata !{i32 786454, metadata !726, null, metadata !"t_grps", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !769} ; [ DW_TAG_typedef ] [t_grps] [line 73, size 0, align 0, offset 0] [from ]
!769 = metadata !{i32 786451, metadata !726, null, metadata !"", i32 70, i64 128, i64 64, i32 0, i32 0, null, metadata !770, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 70, size 128, align 64, offset 0] [from ]
!770 = metadata !{metadata !771, metadata !772}
!771 = metadata !{i32 786445, metadata !726, metadata !769, metadata !"nr", i32 71, i64 32, i64 32, i64 0, i32 0, metadata !258} ; [ DW_TAG_member ] [nr] [line 71, size 32, align 32, offset 0] [from int]
!772 = metadata !{i32 786445, metadata !726, metadata !769, metadata !"nm_ind", i32 72, i64 64, i64 64, i64 64, i32 0, metadata !310} ; [ DW_TAG_member ] [nm_ind] [line 72, size 64, align 64, offset 64] [from ]
!773 = metadata !{i32 786445, metadata !726, metadata !725, metadata !"pdbinfo", i32 93, i64 64, i64 64, i64 10176, i32 0, metadata !774} ; [ DW_TAG_member ] [pdbinfo] [line 93, size 64, align 64, offset 10176] [from ]
!774 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !775} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_pdbinfo]
!775 = metadata !{i32 786454, metadata !726, null, metadata !"t_pdbinfo", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !776} ; [ DW_TAG_typedef ] [t_pdbinfo] [line 68, size 0, align 0, offset 0] [from ]
!776 = metadata !{i32 786451, metadata !726, null, metadata !"", i32 59, i64 416, i64 32, i32 0, i32 0, null, metadata !777, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 59, size 416, align 32, offset 0] [from ]
!777 = metadata !{metadata !778, metadata !779, metadata !780, metadata !781, metadata !783, metadata !784, metadata !785, metadata !786}
!778 = metadata !{i32 786445, metadata !726, metadata !776, metadata !"type", i32 60, i64 32, i64 32, i64 0, i32 0, metadata !258} ; [ DW_TAG_member ] [type] [line 60, size 32, align 32, offset 0] [from int]
!779 = metadata !{i32 786445, metadata !726, metadata !776, metadata !"atomnr", i32 61, i64 32, i64 32, i64 32, i32 0, metadata !258} ; [ DW_TAG_member ] [atomnr] [line 61, size 32, align 32, offset 32] [from int]
!780 = metadata !{i32 786445, metadata !726, metadata !776, metadata !"altloc", i32 62, i64 8, i64 8, i64 64, i32 0, metadata !372} ; [ DW_TAG_member ] [altloc] [line 62, size 8, align 8, offset 64] [from char]
!781 = metadata !{i32 786445, metadata !726, metadata !776, metadata !"pdbresnr", i32 63, i64 48, i64 8, i64 72, i32 0, metadata !782} ; [ DW_TAG_member ] [pdbresnr] [line 63, size 48, align 8, offset 72] [from ]
!782 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 48, i64 8, i32 0, i32 0, metadata !372, metadata !675, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 48, align 8, offset 0] [from char]
!783 = metadata !{i32 786445, metadata !726, metadata !776, metadata !"occup", i32 64, i64 32, i64 32, i64 128, i32 0, metadata !260} ; [ DW_TAG_member ] [occup] [line 64, size 32, align 32, offset 128] [from real]
!784 = metadata !{i32 786445, metadata !726, metadata !776, metadata !"bfac", i32 65, i64 32, i64 32, i64 160, i32 0, metadata !260} ; [ DW_TAG_member ] [bfac] [line 65, size 32, align 32, offset 160] [from real]
!785 = metadata !{i32 786445, metadata !726, metadata !776, metadata !"bAnisotropic", i32 66, i64 32, i64 32, i64 192, i32 0, metadata !258} ; [ DW_TAG_member ] [bAnisotropic] [line 66, size 32, align 32, offset 192] [from int]
!786 = metadata !{i32 786445, metadata !726, metadata !776, metadata !"uij", i32 67, i64 192, i64 32, i64 224, i32 0, metadata !787} ; [ DW_TAG_member ] [uij] [line 67, size 192, align 32, offset 224] [from ]
!787 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !258, metadata !675, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!788 = metadata !{i32 786445, metadata !582, metadata !581, metadata !"blocks", i32 40, i64 25344, i64 64, i64 376640, i32 0, metadata !789} ; [ DW_TAG_member ] [blocks] [line 40, size 25344, align 64, offset 376640] [from ]
!789 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 25344, i64 64, i32 0, i32 0, metadata !757, metadata !303, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 25344, align 64, offset 0] [from t_block]
!790 = metadata !{i32 786445, metadata !582, metadata !581, metadata !"symtab", i32 41, i64 128, i64 64, i64 401984, i32 0, metadata !791} ; [ DW_TAG_member ] [symtab] [line 41, size 128, align 64, offset 401984] [from t_symtab]
!791 = metadata !{i32 786454, metadata !582, null, metadata !"t_symtab", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !792} ; [ DW_TAG_typedef ] [t_symtab] [line 46, size 0, align 0, offset 0] [from ]
!792 = metadata !{i32 786451, metadata !793, null, metadata !"", i32 42, i64 128, i64 64, i32 0, i32 0, null, metadata !794, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 42, size 128, align 64, offset 0] [from ]
!793 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/symtab.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!794 = metadata !{metadata !795, metadata !796}
!795 = metadata !{i32 786445, metadata !793, metadata !792, metadata !"nr", i32 44, i64 32, i64 32, i64 0, i32 0, metadata !258} ; [ DW_TAG_member ] [nr] [line 44, size 32, align 32, offset 0] [from int]
!796 = metadata !{i32 786445, metadata !793, metadata !792, metadata !"symbuf", i32 45, i64 64, i64 64, i64 64, i32 0, metadata !797} ; [ DW_TAG_member ] [symbuf] [line 45, size 64, align 64, offset 64] [from ]
!797 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !798} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_symbuf]
!798 = metadata !{i32 786454, metadata !793, null, metadata !"t_symbuf", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !799} ; [ DW_TAG_typedef ] [t_symbuf] [line 40, size 0, align 0, offset 0] [from symbuf]
!799 = metadata !{i32 786451, metadata !793, null, metadata !"symbuf", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !800, i32 0, null, null} ; [ DW_TAG_structure_type ] [symbuf] [line 36, size 192, align 64, offset 0] [from ]
!800 = metadata !{metadata !801, metadata !802, metadata !803}
!801 = metadata !{i32 786445, metadata !793, metadata !799, metadata !"bufsize", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !258} ; [ DW_TAG_member ] [bufsize] [line 37, size 32, align 32, offset 0] [from int]
!802 = metadata !{i32 786445, metadata !793, metadata !799, metadata !"buf", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !585} ; [ DW_TAG_member ] [buf] [line 38, size 64, align 64, offset 64] [from ]
!803 = metadata !{i32 786445, metadata !793, metadata !799, metadata !"next", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !804} ; [ DW_TAG_member ] [next] [line 39, size 64, align 64, offset 128] [from ]
!804 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !799} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from symbuf]
!805 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !806} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_commrec]
!806 = metadata !{i32 786454, metadata !1, null, metadata !"t_commrec", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !807} ; [ DW_TAG_typedef ] [t_commrec] [line 40, size 0, align 0, offset 0] [from ]
!807 = metadata !{i32 786451, metadata !808, null, metadata !"", i32 36, i64 192, i64 32, i32 0, i32 0, null, metadata !809, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 32, offset 0] [from ]
!808 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/commrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!809 = metadata !{metadata !810, metadata !811, metadata !812, metadata !813, metadata !814, metadata !815}
!810 = metadata !{i32 786445, metadata !808, metadata !807, metadata !"nodeid", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !258} ; [ DW_TAG_member ] [nodeid] [line 37, size 32, align 32, offset 0] [from int]
!811 = metadata !{i32 786445, metadata !808, metadata !807, metadata !"nnodes", i32 37, i64 32, i64 32, i64 32, i32 0, metadata !258} ; [ DW_TAG_member ] [nnodes] [line 37, size 32, align 32, offset 32] [from int]
!812 = metadata !{i32 786445, metadata !808, metadata !807, metadata !"left", i32 38, i64 32, i64 32, i64 64, i32 0, metadata !258} ; [ DW_TAG_member ] [left] [line 38, size 32, align 32, offset 64] [from int]
!813 = metadata !{i32 786445, metadata !808, metadata !807, metadata !"right", i32 38, i64 32, i64 32, i64 96, i32 0, metadata !258} ; [ DW_TAG_member ] [right] [line 38, size 32, align 32, offset 96] [from int]
!814 = metadata !{i32 786445, metadata !808, metadata !807, metadata !"threadid", i32 39, i64 32, i64 32, i64 128, i32 0, metadata !258} ; [ DW_TAG_member ] [threadid] [line 39, size 32, align 32, offset 128] [from int]
!815 = metadata !{i32 786445, metadata !808, metadata !807, metadata !"nthreads", i32 39, i64 32, i64 32, i64 160, i32 0, metadata !258} ; [ DW_TAG_member ] [nthreads] [line 39, size 32, align 32, offset 160] [from int]
!816 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !817} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_nsborder]
!817 = metadata !{i32 786454, metadata !1, null, metadata !"t_nsborder", i32 59, i64 0, i64 0, i64 0, i32 0, metadata !818} ; [ DW_TAG_typedef ] [t_nsborder] [line 59, size 0, align 0, offset 0] [from ]
!818 = metadata !{i32 786451, metadata !819, null, metadata !"", i32 36, i64 32992, i64 32, i32 0, i32 0, null, metadata !820, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 32992, align 32, offset 0] [from ]
!819 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/nsborder.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!820 = metadata !{metadata !821, metadata !822, metadata !823, metadata !824, metadata !825, metadata !826, metadata !827, metadata !828, metadata !829, metadata !830, metadata !831}
!821 = metadata !{i32 786445, metadata !819, metadata !818, metadata !"nodeid", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !258} ; [ DW_TAG_member ] [nodeid] [line 37, size 32, align 32, offset 0] [from int]
!822 = metadata !{i32 786445, metadata !819, metadata !818, metadata !"nnodes", i32 38, i64 32, i64 32, i64 32, i32 0, metadata !258} ; [ DW_TAG_member ] [nnodes] [line 38, size 32, align 32, offset 32] [from int]
!823 = metadata !{i32 786445, metadata !819, metadata !818, metadata !"cgtotal", i32 39, i64 32, i64 32, i64 64, i32 0, metadata !258} ; [ DW_TAG_member ] [cgtotal] [line 39, size 32, align 32, offset 64] [from int]
!824 = metadata !{i32 786445, metadata !819, metadata !818, metadata !"natoms", i32 40, i64 32, i64 32, i64 96, i32 0, metadata !258} ; [ DW_TAG_member ] [natoms] [line 40, size 32, align 32, offset 96] [from int]
!825 = metadata !{i32 786445, metadata !819, metadata !818, metadata !"nstDlb", i32 41, i64 32, i64 32, i64 128, i32 0, metadata !258} ; [ DW_TAG_member ] [nstDlb] [line 41, size 32, align 32, offset 128] [from int]
!826 = metadata !{i32 786445, metadata !819, metadata !818, metadata !"shift", i32 43, i64 32, i64 32, i64 160, i32 0, metadata !258} ; [ DW_TAG_member ] [shift] [line 43, size 32, align 32, offset 160] [from int]
!827 = metadata !{i32 786445, metadata !819, metadata !818, metadata !"bshift", i32 43, i64 32, i64 32, i64 192, i32 0, metadata !258} ; [ DW_TAG_member ] [bshift] [line 43, size 32, align 32, offset 192] [from int]
!828 = metadata !{i32 786445, metadata !819, metadata !818, metadata !"homenr", i32 50, i64 8192, i64 32, i64 224, i32 0, metadata !715} ; [ DW_TAG_member ] [homenr] [line 50, size 8192, align 32, offset 224] [from ]
!829 = metadata !{i32 786445, metadata !819, metadata !818, metadata !"index", i32 51, i64 8192, i64 32, i64 8416, i32 0, metadata !715} ; [ DW_TAG_member ] [index] [line 51, size 8192, align 32, offset 8416] [from ]
!830 = metadata !{i32 786445, metadata !819, metadata !818, metadata !"cgload", i32 52, i64 8192, i64 32, i64 16608, i32 0, metadata !715} ; [ DW_TAG_member ] [cgload] [line 52, size 8192, align 32, offset 16608] [from ]
!831 = metadata !{i32 786445, metadata !819, metadata !818, metadata !"workload", i32 55, i64 8192, i64 32, i64 24800, i32 0, metadata !715} ; [ DW_TAG_member ] [workload] [line 55, size 8192, align 32, offset 24800] [from ]
!832 = metadata !{metadata !833, metadata !834, metadata !835, metadata !836, metadata !837, metadata !838, metadata !839, metadata !840, metadata !841, metadata !842, metadata !843, metadata !844, metadata !845, metadata !846, metadata !847, metadata !848, metadata !849, metadata !850, metadata !851, metadata !852, metadata !853, metadata !854, metadata !855, metadata !857, metadata !859, metadata !860, metadata !862, metadata !865, metadata !866, metadata !869}
!833 = metadata !{i32 786689, metadata !462, metadata !"fp", metadata !249, i32 16777709, metadata !364, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 493]
!834 = metadata !{i32 786689, metadata !462, metadata !"fr", metadata !249, i32 33554926, metadata !252, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 494]
!835 = metadata !{i32 786689, metadata !462, metadata !"ir", metadata !249, i32 50332143, metadata !465, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ir] [line 495]
!836 = metadata !{i32 786689, metadata !462, metadata !"top", metadata !249, i32 67109360, metadata !579, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [top] [line 496]
!837 = metadata !{i32 786689, metadata !462, metadata !"cr", metadata !249, i32 83886577, metadata !805, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 497]
!838 = metadata !{i32 786689, metadata !462, metadata !"mdatoms", metadata !249, i32 100663794, metadata !429, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mdatoms] [line 498]
!839 = metadata !{i32 786689, metadata !462, metadata !"nsb", metadata !249, i32 117441011, metadata !816, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsb] [line 499]
!840 = metadata !{i32 786689, metadata !462, metadata !"box", metadata !249, i32 134218228, metadata !421, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 500]
!841 = metadata !{i32 786689, metadata !462, metadata !"bMolEpot", metadata !249, i32 150995445, metadata !258, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bMolEpot] [line 501]
!842 = metadata !{i32 786689, metadata !462, metadata !"tabfn", metadata !249, i32 167772662, metadata !371, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tabfn] [line 502]
!843 = metadata !{i32 786689, metadata !462, metadata !"bNoSolvOpt", metadata !249, i32 184549879, metadata !258, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bNoSolvOpt] [line 503]
!844 = metadata !{i32 786688, metadata !462, metadata !"i", metadata !249, i32 505, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 505]
!845 = metadata !{i32 786688, metadata !462, metadata !"j", metadata !249, i32 505, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 505]
!846 = metadata !{i32 786688, metadata !462, metadata !"m", metadata !249, i32 505, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 505]
!847 = metadata !{i32 786688, metadata !462, metadata !"natoms", metadata !249, i32 505, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [natoms] [line 505]
!848 = metadata !{i32 786688, metadata !462, metadata !"ngrp", metadata !249, i32 505, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ngrp] [line 505]
!849 = metadata !{i32 786688, metadata !462, metadata !"tabelemsize", metadata !249, i32 505, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tabelemsize] [line 505]
!850 = metadata !{i32 786688, metadata !462, metadata !"q", metadata !249, i32 506, metadata !260, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q] [line 506]
!851 = metadata !{i32 786688, metadata !462, metadata !"zsq", metadata !249, i32 506, metadata !260, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zsq] [line 506]
!852 = metadata !{i32 786688, metadata !462, metadata !"nrdf", metadata !249, i32 506, metadata !260, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrdf] [line 506]
!853 = metadata !{i32 786688, metadata !462, metadata !"T", metadata !249, i32 506, metadata !260, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [T] [line 506]
!854 = metadata !{i32 786688, metadata !462, metadata !"box_size", metadata !249, i32 507, metadata !314, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [box_size] [line 507]
!855 = metadata !{i32 786688, metadata !462, metadata !"rtab", metadata !249, i32 508, metadata !856, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rtab] [line 508]
!856 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!857 = metadata !{i32 786688, metadata !462, metadata !"mols", metadata !249, i32 509, metadata !858, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mols] [line 509]
!858 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !757} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_block]
!859 = metadata !{i32 786688, metadata !462, metadata !"cgs", metadata !249, i32 509, metadata !858, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cgs] [line 509]
!860 = metadata !{i32 786688, metadata !462, metadata !"idef", metadata !249, i32 510, metadata !861, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idef] [line 510]
!861 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !587} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_idef]
!862 = metadata !{i32 786688, metadata !863, metadata !"bcoulsave", metadata !249, i32 718, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bcoulsave] [line 718]
!863 = metadata !{i32 786443, metadata !1, metadata !864, i32 717, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!864 = metadata !{i32 786443, metadata !1, metadata !462, i32 716, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!865 = metadata !{i32 786688, metadata !863, metadata !"bvdwsave", metadata !249, i32 718, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bvdwsave] [line 718]
!866 = metadata !{i32 786688, metadata !867, metadata !"ptr", metadata !249, i32 738, metadata !371, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 738]
!867 = metadata !{i32 786443, metadata !1, metadata !868, i32 737, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!868 = metadata !{i32 786443, metadata !1, metadata !462, i32 736, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!869 = metadata !{i32 786688, metadata !867, metadata !"envvar", metadata !249, i32 738, metadata !371, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [envvar] [line 738]
!870 = metadata !{i32 786478, metadata !1, metadata !249, metadata !"pr_forcerec", metadata !"pr_forcerec", metadata !"", i32 785, metadata !871, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_forcerec*, %struct.t_commrec*)* @pr_forcerec, null, null, metadata !873, i32 786} ; [ DW_TAG_subprogram ] [line 785] [def] [scope 786] [pr_forcerec]
!871 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !872, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!872 = metadata !{null, metadata !364, metadata !252, metadata !805}
!873 = metadata !{metadata !874, metadata !875, metadata !876}
!874 = metadata !{i32 786689, metadata !870, metadata !"fp", metadata !249, i32 16778001, metadata !364, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 785]
!875 = metadata !{i32 786689, metadata !870, metadata !"fr", metadata !249, i32 33555217, metadata !252, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 785]
!876 = metadata !{i32 786689, metadata !870, metadata !"cr", metadata !249, i32 50332433, metadata !805, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 785]
!877 = metadata !{i32 786478, metadata !1, metadata !249, metadata !"ns", metadata !"ns", metadata !"", i32 807, metadata !878, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_forcerec*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_groups*, %struct.t_grpopts*, %struct.t_topology*, %struct.t_mdatoms*, %struct.t_commrec*, %struct.t_nrnb*, %struct.t_nsborder*, i32, float, float*)* @ns, null, null, metadata !930, i32 822} ; [ DW_TAG_subprogram ] [line 807] [def] [scope 822] [ns]
!878 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !879, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!879 = metadata !{null, metadata !364, metadata !252, metadata !313, metadata !313, metadata !421, metadata !880, metadata !921, metadata !579, metadata !429, metadata !805, metadata !922, metadata !816, metadata !258, metadata !260, metadata !279}
!880 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !881} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_groups]
!881 = metadata !{i32 786454, metadata !1, null, metadata !"t_groups", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !882} ; [ DW_TAG_typedef ] [t_groups] [line 72, size 0, align 0, offset 0] [from ]
!882 = metadata !{i32 786451, metadata !95, null, metadata !"", i32 67, i64 768, i64 64, i32 0, i32 0, null, metadata !883, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 67, size 768, align 64, offset 0] [from ]
!883 = metadata !{metadata !884, metadata !893, metadata !903, metadata !914}
!884 = metadata !{i32 786445, metadata !95, metadata !882, metadata !"estat", i32 68, i64 512, i64 64, i64 0, i32 0, metadata !885} ; [ DW_TAG_member ] [estat] [line 68, size 512, align 64, offset 0] [from t_grp_ener]
!885 = metadata !{i32 786454, metadata !95, null, metadata !"t_grp_ener", i32 50, i64 0, i64 0, i64 0, i32 0, metadata !886} ; [ DW_TAG_typedef ] [t_grp_ener] [line 50, size 0, align 0, offset 0] [from ]
!886 = metadata !{i32 786451, metadata !95, null, metadata !"", i32 46, i64 512, i64 64, i32 0, i32 0, null, metadata !887, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 46, size 512, align 64, offset 0] [from ]
!887 = metadata !{metadata !888, metadata !889}
!888 = metadata !{i32 786445, metadata !95, metadata !886, metadata !"nn", i32 47, i64 32, i64 32, i64 0, i32 0, metadata !258} ; [ DW_TAG_member ] [nn] [line 47, size 32, align 32, offset 0] [from int]
!889 = metadata !{i32 786445, metadata !95, metadata !886, metadata !"ee", i32 48, i64 448, i64 64, i64 64, i32 0, metadata !890} ; [ DW_TAG_member ] [ee] [line 48, size 448, align 64, offset 64] [from ]
!890 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 448, i64 64, i32 0, i32 0, metadata !279, metadata !891, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 448, align 64, offset 0] [from ]
!891 = metadata !{metadata !892}
!892 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 6]
!893 = metadata !{i32 786445, metadata !95, metadata !882, metadata !"tcstat", i32 69, i64 64, i64 64, i64 512, i32 0, metadata !894} ; [ DW_TAG_member ] [tcstat] [line 69, size 64, align 64, offset 512] [from ]
!894 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !895} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_grp_tcstat]
!895 = metadata !{i32 786454, metadata !95, null, metadata !"t_grp_tcstat", i32 44, i64 0, i64 0, i64 0, i32 0, metadata !896} ; [ DW_TAG_typedef ] [t_grp_tcstat] [line 44, size 0, align 0, offset 0] [from ]
!896 = metadata !{i32 786451, metadata !95, null, metadata !"", i32 38, i64 416, i64 32, i32 0, i32 0, null, metadata !897, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 38, size 416, align 32, offset 0] [from ]
!897 = metadata !{metadata !898, metadata !899, metadata !900, metadata !901, metadata !902}
!898 = metadata !{i32 786445, metadata !95, metadata !896, metadata !"T", i32 39, i64 32, i64 32, i64 0, i32 0, metadata !260} ; [ DW_TAG_member ] [T] [line 39, size 32, align 32, offset 0] [from real]
!899 = metadata !{i32 786445, metadata !95, metadata !896, metadata !"lambda", i32 40, i64 32, i64 32, i64 32, i32 0, metadata !260} ; [ DW_TAG_member ] [lambda] [line 40, size 32, align 32, offset 32] [from real]
!900 = metadata !{i32 786445, metadata !95, metadata !896, metadata !"ekin", i32 41, i64 288, i64 32, i64 64, i32 0, metadata !502} ; [ DW_TAG_member ] [ekin] [line 41, size 288, align 32, offset 64] [from tensor]
!901 = metadata !{i32 786445, metadata !95, metadata !896, metadata !"xi", i32 42, i64 32, i64 32, i64 352, i32 0, metadata !260} ; [ DW_TAG_member ] [xi] [line 42, size 32, align 32, offset 352] [from real]
!902 = metadata !{i32 786445, metadata !95, metadata !896, metadata !"s", i32 43, i64 32, i64 32, i64 384, i32 0, metadata !260} ; [ DW_TAG_member ] [s] [line 43, size 32, align 32, offset 384] [from real]
!903 = metadata !{i32 786445, metadata !95, metadata !882, metadata !"grpstat", i32 70, i64 64, i64 64, i64 576, i32 0, metadata !904} ; [ DW_TAG_member ] [grpstat] [line 70, size 64, align 64, offset 576] [from ]
!904 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !905} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_grp_acc]
!905 = metadata !{i32 786454, metadata !95, null, metadata !"t_grp_acc", i32 59, i64 0, i64 0, i64 0, i32 0, metadata !906} ; [ DW_TAG_typedef ] [t_grp_acc] [line 59, size 0, align 0, offset 0] [from ]
!906 = metadata !{i32 786451, metadata !95, null, metadata !"", i32 52, i64 448, i64 64, i32 0, i32 0, null, metadata !907, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 52, size 448, align 64, offset 0] [from ]
!907 = metadata !{metadata !908, metadata !909, metadata !910, metadata !911, metadata !912, metadata !913}
!908 = metadata !{i32 786445, metadata !95, metadata !906, metadata !"nat", i32 53, i64 32, i64 32, i64 0, i32 0, metadata !258} ; [ DW_TAG_member ] [nat] [line 53, size 32, align 32, offset 0] [from int]
!909 = metadata !{i32 786445, metadata !95, metadata !906, metadata !"aid", i32 54, i64 64, i64 64, i64 64, i32 0, metadata !330} ; [ DW_TAG_member ] [aid] [line 54, size 64, align 64, offset 64] [from ]
!910 = metadata !{i32 786445, metadata !95, metadata !906, metadata !"M", i32 55, i64 32, i64 32, i64 128, i32 0, metadata !260} ; [ DW_TAG_member ] [M] [line 55, size 32, align 32, offset 128] [from real]
!911 = metadata !{i32 786445, metadata !95, metadata !906, metadata !"u", i32 56, i64 96, i64 32, i64 160, i32 0, metadata !314} ; [ DW_TAG_member ] [u] [line 56, size 96, align 32, offset 160] [from rvec]
!912 = metadata !{i32 786445, metadata !95, metadata !906, metadata !"uold", i32 57, i64 96, i64 32, i64 256, i32 0, metadata !314} ; [ DW_TAG_member ] [uold] [line 57, size 96, align 32, offset 256] [from rvec]
!913 = metadata !{i32 786445, metadata !95, metadata !906, metadata !"ut", i32 58, i64 96, i64 32, i64 352, i32 0, metadata !314} ; [ DW_TAG_member ] [ut] [line 58, size 96, align 32, offset 352] [from rvec]
!914 = metadata !{i32 786445, metadata !95, metadata !882, metadata !"cosacc", i32 71, i64 96, i64 32, i64 640, i32 0, metadata !915} ; [ DW_TAG_member ] [cosacc] [line 71, size 96, align 32, offset 640] [from t_cos_acc]
!915 = metadata !{i32 786454, metadata !95, null, metadata !"t_cos_acc", i32 65, i64 0, i64 0, i64 0, i32 0, metadata !916} ; [ DW_TAG_typedef ] [t_cos_acc] [line 65, size 0, align 0, offset 0] [from ]
!916 = metadata !{i32 786451, metadata !95, null, metadata !"", i32 61, i64 96, i64 32, i32 0, i32 0, null, metadata !917, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 61, size 96, align 32, offset 0] [from ]
!917 = metadata !{metadata !918, metadata !919, metadata !920}
!918 = metadata !{i32 786445, metadata !95, metadata !916, metadata !"cos_accel", i32 62, i64 32, i64 32, i64 0, i32 0, metadata !260} ; [ DW_TAG_member ] [cos_accel] [line 62, size 32, align 32, offset 0] [from real]
!919 = metadata !{i32 786445, metadata !95, metadata !916, metadata !"mvcos", i32 63, i64 32, i64 32, i64 32, i32 0, metadata !260} ; [ DW_TAG_member ] [mvcos] [line 63, size 32, align 32, offset 32] [from real]
!920 = metadata !{i32 786445, metadata !95, metadata !916, metadata !"vcos", i32 64, i64 32, i64 32, i64 64, i32 0, metadata !260} ; [ DW_TAG_member ] [vcos] [line 64, size 32, align 32, offset 64] [from real]
!921 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !554} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_grpopts]
!922 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !923} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_nrnb]
!923 = metadata !{i32 786454, metadata !1, null, metadata !"t_nrnb", i32 95, i64 0, i64 0, i64 0, i32 0, metadata !924} ; [ DW_TAG_typedef ] [t_nrnb] [line 95, size 0, align 0, offset 0] [from ]
!924 = metadata !{i32 786451, metadata !106, null, metadata !"", i32 93, i64 8256, i64 64, i32 0, i32 0, null, metadata !925, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 93, size 8256, align 64, offset 0] [from ]
!925 = metadata !{metadata !926}
!926 = metadata !{i32 786445, metadata !106, metadata !924, metadata !"n", i32 94, i64 8256, i64 64, i64 0, i32 0, metadata !927} ; [ DW_TAG_member ] [n] [line 94, size 8256, align 64, offset 0] [from ]
!927 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8256, i64 64, i32 0, i32 0, metadata !856, metadata !928, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8256, align 64, offset 0] [from double]
!928 = metadata !{metadata !929}
!929 = metadata !{i32 786465, i64 0, i64 129}     ; [ DW_TAG_subrange_type ] [0, 128]
!930 = metadata !{metadata !931, metadata !932, metadata !933, metadata !934, metadata !935, metadata !936, metadata !937, metadata !938, metadata !939, metadata !940, metadata !941, metadata !942, metadata !943, metadata !944, metadata !945, metadata !946, metadata !947}
!931 = metadata !{i32 786689, metadata !877, metadata !"fp", metadata !249, i32 16778023, metadata !364, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 807]
!932 = metadata !{i32 786689, metadata !877, metadata !"fr", metadata !249, i32 33555240, metadata !252, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 808]
!933 = metadata !{i32 786689, metadata !877, metadata !"x", metadata !249, i32 50332457, metadata !313, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 809]
!934 = metadata !{i32 786689, metadata !877, metadata !"f", metadata !249, i32 67109674, metadata !313, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 810]
!935 = metadata !{i32 786689, metadata !877, metadata !"box", metadata !249, i32 83886891, metadata !421, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 811]
!936 = metadata !{i32 786689, metadata !877, metadata !"grps", metadata !249, i32 100664108, metadata !880, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grps] [line 812]
!937 = metadata !{i32 786689, metadata !877, metadata !"opts", metadata !249, i32 117441325, metadata !921, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [opts] [line 813]
!938 = metadata !{i32 786689, metadata !877, metadata !"top", metadata !249, i32 134218542, metadata !579, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [top] [line 814]
!939 = metadata !{i32 786689, metadata !877, metadata !"md", metadata !249, i32 150995759, metadata !429, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [md] [line 815]
!940 = metadata !{i32 786689, metadata !877, metadata !"cr", metadata !249, i32 167772976, metadata !805, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 816]
!941 = metadata !{i32 786689, metadata !877, metadata !"nrnb", metadata !249, i32 184550193, metadata !922, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrnb] [line 817]
!942 = metadata !{i32 786689, metadata !877, metadata !"nsb", metadata !249, i32 201327410, metadata !816, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsb] [line 818]
!943 = metadata !{i32 786689, metadata !877, metadata !"step", metadata !249, i32 218104627, metadata !258, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 819]
!944 = metadata !{i32 786689, metadata !877, metadata !"lambda", metadata !249, i32 234881844, metadata !260, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 820]
!945 = metadata !{i32 786689, metadata !877, metadata !"dvdlambda", metadata !249, i32 251659061, metadata !279, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dvdlambda] [line 821]
!946 = metadata !{i32 786688, metadata !877, metadata !"ptr", metadata !249, i32 825, metadata !371, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 825]
!947 = metadata !{i32 786688, metadata !877, metadata !"nsearch", metadata !249, i32 826, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nsearch] [line 826]
!948 = metadata !{i32 786478, metadata !1, metadata !249, metadata !"force", metadata !"force", metadata !"", i32 872, metadata !949, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, %struct.t_forcerec*, %struct.t_inputrec*, %struct.t_idef*, %struct.t_nsborder*, %struct.t_commrec*, %struct.t_commrec*, %struct.t_nrnb*, %struct.t_groups*, %struct.t_mdatoms*, i32, %struct.t_grpopts*, [3 x float]*, [3 x float]*, float*, %struct.t_fcdata*, i32, [3 x float]*, float, %struct.t_graph*, %struct.t_block*, i32, [3 x float]*, float*, float, i32)* @force, null, null, metadata !1024, i32 886} ; [ DW_TAG_subprogram ] [line 872] [def] [scope 886] [force]
!949 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !950, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!950 = metadata !{null, metadata !364, metadata !258, metadata !252, metadata !465, metadata !861, metadata !816, metadata !805, metadata !805, metadata !922, metadata !880, metadata !429, metadata !258, metadata !921, metadata !313, metadata !313, metadata !279, metadata !951, metadata !258, metadata !421, metadata !260, metadata !1010, metadata !858, metadata !258, metadata !421, metadata !279, metadata !260, metadata !258}
!951 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !952} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_fcdata]
!952 = metadata !{i32 786454, metadata !1, null, metadata !"t_fcdata", i32 95, i64 0, i64 0, i64 0, i32 0, metadata !953} ; [ DW_TAG_typedef ] [t_fcdata] [line 95, size 0, align 0, offset 0] [from ]
!953 = metadata !{i32 786451, metadata !954, null, metadata !"", i32 92, i64 2048, i64 64, i32 0, i32 0, null, metadata !955, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 92, size 2048, align 64, offset 0] [from ]
!954 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/fcdata.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!955 = metadata !{metadata !956, metadata !975}
!956 = metadata !{i32 786445, metadata !954, metadata !953, metadata !"disres", i32 93, i64 640, i64 64, i64 0, i32 0, metadata !957} ; [ DW_TAG_member ] [disres] [line 93, size 640, align 64, offset 0] [from t_disresdata]
!957 = metadata !{i32 786454, metadata !954, null, metadata !"t_disresdata", i32 58, i64 0, i64 0, i64 0, i32 0, metadata !958} ; [ DW_TAG_typedef ] [t_disresdata] [line 58, size 0, align 0, offset 0] [from ]
!958 = metadata !{i32 786451, metadata !954, null, metadata !"", i32 39, i64 640, i64 64, i32 0, i32 0, null, metadata !959, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 39, size 640, align 64, offset 0] [from ]
!959 = metadata !{metadata !960, metadata !961, metadata !962, metadata !963, metadata !964, metadata !965, metadata !966, metadata !967, metadata !968, metadata !969, metadata !970, metadata !971, metadata !972, metadata !973, metadata !974}
!960 = metadata !{i32 786445, metadata !954, metadata !958, metadata !"dr_weighting", i32 40, i64 32, i64 32, i64 0, i32 0, metadata !258} ; [ DW_TAG_member ] [dr_weighting] [line 40, size 32, align 32, offset 0] [from int]
!961 = metadata !{i32 786445, metadata !954, metadata !958, metadata !"dr_bMixed", i32 41, i64 32, i64 32, i64 32, i32 0, metadata !258} ; [ DW_TAG_member ] [dr_bMixed] [line 41, size 32, align 32, offset 32] [from int]
!962 = metadata !{i32 786445, metadata !954, metadata !958, metadata !"dr_fc", i32 43, i64 32, i64 32, i64 64, i32 0, metadata !260} ; [ DW_TAG_member ] [dr_fc] [line 43, size 32, align 32, offset 64] [from real]
!963 = metadata !{i32 786445, metadata !954, metadata !958, metadata !"dr_tau", i32 46, i64 32, i64 32, i64 96, i32 0, metadata !260} ; [ DW_TAG_member ] [dr_tau] [line 46, size 32, align 32, offset 96] [from real]
!964 = metadata !{i32 786445, metadata !954, metadata !958, metadata !"ETerm", i32 47, i64 32, i64 32, i64 128, i32 0, metadata !260} ; [ DW_TAG_member ] [ETerm] [line 47, size 32, align 32, offset 128] [from real]
!965 = metadata !{i32 786445, metadata !954, metadata !958, metadata !"ETerm1", i32 48, i64 32, i64 32, i64 160, i32 0, metadata !260} ; [ DW_TAG_member ] [ETerm1] [line 48, size 32, align 32, offset 160] [from real]
!966 = metadata !{i32 786445, metadata !954, metadata !958, metadata !"exp_min_t_tau", i32 49, i64 32, i64 32, i64 192, i32 0, metadata !260} ; [ DW_TAG_member ] [exp_min_t_tau] [line 49, size 32, align 32, offset 192] [from real]
!967 = metadata !{i32 786445, metadata !954, metadata !958, metadata !"nr", i32 50, i64 32, i64 32, i64 224, i32 0, metadata !258} ; [ DW_TAG_member ] [nr] [line 50, size 32, align 32, offset 224] [from int]
!968 = metadata !{i32 786445, metadata !954, metadata !958, metadata !"npr", i32 51, i64 32, i64 32, i64 256, i32 0, metadata !258} ; [ DW_TAG_member ] [npr] [line 51, size 32, align 32, offset 256] [from int]
!969 = metadata !{i32 786445, metadata !954, metadata !958, metadata !"sumviol", i32 52, i64 32, i64 32, i64 288, i32 0, metadata !260} ; [ DW_TAG_member ] [sumviol] [line 52, size 32, align 32, offset 288] [from real]
!970 = metadata !{i32 786445, metadata !954, metadata !958, metadata !"rt", i32 53, i64 64, i64 64, i64 320, i32 0, metadata !279} ; [ DW_TAG_member ] [rt] [line 53, size 64, align 64, offset 320] [from ]
!971 = metadata !{i32 786445, metadata !954, metadata !958, metadata !"rav", i32 54, i64 64, i64 64, i64 384, i32 0, metadata !279} ; [ DW_TAG_member ] [rav] [line 54, size 64, align 64, offset 384] [from ]
!972 = metadata !{i32 786445, metadata !954, metadata !958, metadata !"Rtl_6", i32 55, i64 64, i64 64, i64 448, i32 0, metadata !279} ; [ DW_TAG_member ] [Rtl_6] [line 55, size 64, align 64, offset 448] [from ]
!973 = metadata !{i32 786445, metadata !954, metadata !958, metadata !"Rt_6", i32 56, i64 64, i64 64, i64 512, i32 0, metadata !279} ; [ DW_TAG_member ] [Rt_6] [line 56, size 64, align 64, offset 512] [from ]
!974 = metadata !{i32 786445, metadata !954, metadata !958, metadata !"Rav_6", i32 57, i64 64, i64 64, i64 576, i32 0, metadata !279} ; [ DW_TAG_member ] [Rav_6] [line 57, size 64, align 64, offset 576] [from ]
!975 = metadata !{i32 786445, metadata !954, metadata !953, metadata !"orires", i32 94, i64 1408, i64 64, i64 640, i32 0, metadata !976} ; [ DW_TAG_member ] [orires] [line 94, size 1408, align 64, offset 640] [from t_oriresdata]
!976 = metadata !{i32 786454, metadata !954, null, metadata !"t_oriresdata", i32 84, i64 0, i64 0, i64 0, i32 0, metadata !977} ; [ DW_TAG_typedef ] [t_oriresdata] [line 84, size 0, align 0, offset 0] [from ]
!977 = metadata !{i32 786451, metadata !954, null, metadata !"", i32 61, i64 1408, i64 64, i32 0, i32 0, null, metadata !978, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 61, size 1408, align 64, offset 0] [from ]
!978 = metadata !{metadata !979, metadata !980, metadata !981, metadata !982, metadata !983, metadata !984, metadata !985, metadata !986, metadata !987, metadata !988, metadata !989, metadata !990, metadata !992, metadata !994, metadata !1000, metadata !1001, metadata !1002, metadata !1003, metadata !1004, metadata !1005, metadata !1006, metadata !1007}
!979 = metadata !{i32 786445, metadata !954, metadata !977, metadata !"fc", i32 62, i64 32, i64 32, i64 0, i32 0, metadata !260} ; [ DW_TAG_member ] [fc] [line 62, size 32, align 32, offset 0] [from real]
!980 = metadata !{i32 786445, metadata !954, metadata !977, metadata !"edt", i32 63, i64 32, i64 32, i64 32, i32 0, metadata !260} ; [ DW_TAG_member ] [edt] [line 63, size 32, align 32, offset 32] [from real]
!981 = metadata !{i32 786445, metadata !954, metadata !977, metadata !"edt1", i32 64, i64 32, i64 32, i64 64, i32 0, metadata !260} ; [ DW_TAG_member ] [edt1] [line 64, size 32, align 32, offset 64] [from real]
!982 = metadata !{i32 786445, metadata !954, metadata !977, metadata !"exp_min_t_tau", i32 65, i64 32, i64 32, i64 96, i32 0, metadata !260} ; [ DW_TAG_member ] [exp_min_t_tau] [line 65, size 32, align 32, offset 96] [from real]
!983 = metadata !{i32 786445, metadata !954, metadata !977, metadata !"nr", i32 66, i64 32, i64 32, i64 128, i32 0, metadata !258} ; [ DW_TAG_member ] [nr] [line 66, size 32, align 32, offset 128] [from int]
!984 = metadata !{i32 786445, metadata !954, metadata !977, metadata !"nex", i32 67, i64 32, i64 32, i64 160, i32 0, metadata !258} ; [ DW_TAG_member ] [nex] [line 67, size 32, align 32, offset 160] [from int]
!985 = metadata !{i32 786445, metadata !954, metadata !977, metadata !"nref", i32 68, i64 32, i64 32, i64 192, i32 0, metadata !258} ; [ DW_TAG_member ] [nref] [line 68, size 32, align 32, offset 192] [from int]
!986 = metadata !{i32 786445, metadata !954, metadata !977, metadata !"invmref", i32 69, i64 32, i64 32, i64 224, i32 0, metadata !260} ; [ DW_TAG_member ] [invmref] [line 69, size 32, align 32, offset 224] [from real]
!987 = metadata !{i32 786445, metadata !954, metadata !977, metadata !"mref", i32 70, i64 64, i64 64, i64 256, i32 0, metadata !279} ; [ DW_TAG_member ] [mref] [line 70, size 64, align 64, offset 256] [from ]
!988 = metadata !{i32 786445, metadata !954, metadata !977, metadata !"xref", i32 71, i64 64, i64 64, i64 320, i32 0, metadata !313} ; [ DW_TAG_member ] [xref] [line 71, size 64, align 64, offset 320] [from ]
!989 = metadata !{i32 786445, metadata !954, metadata !977, metadata !"xtmp", i32 72, i64 64, i64 64, i64 384, i32 0, metadata !313} ; [ DW_TAG_member ] [xtmp] [line 72, size 64, align 64, offset 384] [from ]
!990 = metadata !{i32 786445, metadata !954, metadata !977, metadata !"R", i32 73, i64 288, i64 32, i64 448, i32 0, metadata !991} ; [ DW_TAG_member ] [R] [line 73, size 288, align 32, offset 448] [from matrix]
!991 = metadata !{i32 786454, metadata !954, null, metadata !"matrix", i32 103, i64 0, i64 0, i64 0, i32 0, metadata !503} ; [ DW_TAG_typedef ] [matrix] [line 103, size 0, align 0, offset 0] [from ]
!992 = metadata !{i32 786445, metadata !954, metadata !977, metadata !"S", i32 74, i64 64, i64 64, i64 768, i32 0, metadata !993} ; [ DW_TAG_member ] [S] [line 74, size 64, align 64, offset 768] [from ]
!993 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !502} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from tensor]
!994 = metadata !{i32 786445, metadata !954, metadata !977, metadata !"Dinsl", i32 75, i64 64, i64 64, i64 832, i32 0, metadata !995} ; [ DW_TAG_member ] [Dinsl] [line 75, size 64, align 64, offset 832] [from ]
!995 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !996} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec5]
!996 = metadata !{i32 786454, metadata !954, null, metadata !"rvec5", i32 36, i64 0, i64 0, i64 0, i32 0, metadata !997} ; [ DW_TAG_typedef ] [rvec5] [line 36, size 0, align 0, offset 0] [from ]
!997 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 32, i32 0, i32 0, metadata !260, metadata !998, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 32, offset 0] [from real]
!998 = metadata !{metadata !999}
!999 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!1000 = metadata !{i32 786445, metadata !954, metadata !977, metadata !"Dins", i32 76, i64 64, i64 64, i64 896, i32 0, metadata !995} ; [ DW_TAG_member ] [Dins] [line 76, size 64, align 64, offset 896] [from ]
!1001 = metadata !{i32 786445, metadata !954, metadata !977, metadata !"Dtav", i32 77, i64 64, i64 64, i64 960, i32 0, metadata !995} ; [ DW_TAG_member ] [Dtav] [line 77, size 64, align 64, offset 960] [from ]
!1002 = metadata !{i32 786445, metadata !954, metadata !977, metadata !"oinsl", i32 78, i64 64, i64 64, i64 1024, i32 0, metadata !279} ; [ DW_TAG_member ] [oinsl] [line 78, size 64, align 64, offset 1024] [from ]
!1003 = metadata !{i32 786445, metadata !954, metadata !977, metadata !"oins", i32 79, i64 64, i64 64, i64 1088, i32 0, metadata !279} ; [ DW_TAG_member ] [oins] [line 79, size 64, align 64, offset 1088] [from ]
!1004 = metadata !{i32 786445, metadata !954, metadata !977, metadata !"otav", i32 80, i64 64, i64 64, i64 1152, i32 0, metadata !279} ; [ DW_TAG_member ] [otav] [line 80, size 64, align 64, offset 1152] [from ]
!1005 = metadata !{i32 786445, metadata !954, metadata !977, metadata !"rmsdev", i32 81, i64 32, i64 32, i64 1216, i32 0, metadata !260} ; [ DW_TAG_member ] [rmsdev] [line 81, size 32, align 32, offset 1216] [from real]
!1006 = metadata !{i32 786445, metadata !954, metadata !977, metadata !"tmp", i32 82, i64 64, i64 64, i64 1280, i32 0, metadata !995} ; [ DW_TAG_member ] [tmp] [line 82, size 64, align 64, offset 1280] [from ]
!1007 = metadata !{i32 786445, metadata !954, metadata !977, metadata !"TMP", i32 83, i64 64, i64 64, i64 1344, i32 0, metadata !1008} ; [ DW_TAG_member ] [TMP] [line 83, size 64, align 64, offset 1344] [from ]
!1008 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1009} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1009 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !279} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1010 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1011} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_graph]
!1011 = metadata !{i32 786454, metadata !1, null, metadata !"t_graph", i32 47, i64 0, i64 0, i64 0, i32 0, metadata !1012} ; [ DW_TAG_typedef ] [t_graph] [line 47, size 0, align 0, offset 0] [from ]
!1012 = metadata !{i32 786451, metadata !1013, null, metadata !"", i32 38, i64 384, i64 64, i32 0, i32 0, null, metadata !1014, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 38, size 384, align 64, offset 0] [from ]
!1013 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/graph.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!1014 = metadata !{metadata !1015, metadata !1016, metadata !1017, metadata !1018, metadata !1019, metadata !1020, metadata !1021, metadata !1023}
!1015 = metadata !{i32 786445, metadata !1013, metadata !1012, metadata !"maxbond", i32 39, i64 32, i64 32, i64 0, i32 0, metadata !258} ; [ DW_TAG_member ] [maxbond] [line 39, size 32, align 32, offset 0] [from int]
!1016 = metadata !{i32 786445, metadata !1013, metadata !1012, metadata !"nnodes", i32 40, i64 32, i64 32, i64 32, i32 0, metadata !258} ; [ DW_TAG_member ] [nnodes] [line 40, size 32, align 32, offset 32] [from int]
!1017 = metadata !{i32 786445, metadata !1013, metadata !1012, metadata !"nbound", i32 41, i64 32, i64 32, i64 64, i32 0, metadata !258} ; [ DW_TAG_member ] [nbound] [line 41, size 32, align 32, offset 64] [from int]
!1018 = metadata !{i32 786445, metadata !1013, metadata !1012, metadata !"start", i32 42, i64 32, i64 32, i64 96, i32 0, metadata !258} ; [ DW_TAG_member ] [start] [line 42, size 32, align 32, offset 96] [from int]
!1019 = metadata !{i32 786445, metadata !1013, metadata !1012, metadata !"end", i32 43, i64 32, i64 32, i64 128, i32 0, metadata !258} ; [ DW_TAG_member ] [end] [line 43, size 32, align 32, offset 128] [from int]
!1020 = metadata !{i32 786445, metadata !1013, metadata !1012, metadata !"nedge", i32 44, i64 64, i64 64, i64 192, i32 0, metadata !310} ; [ DW_TAG_member ] [nedge] [line 44, size 64, align 64, offset 192] [from ]
!1021 = metadata !{i32 786445, metadata !1013, metadata !1012, metadata !"edge", i32 45, i64 64, i64 64, i64 256, i32 0, metadata !1022} ; [ DW_TAG_member ] [edge] [line 45, size 64, align 64, offset 256] [from ]
!1022 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !330} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1023 = metadata !{i32 786445, metadata !1013, metadata !1012, metadata !"ishift", i32 46, i64 64, i64 64, i64 320, i32 0, metadata !566} ; [ DW_TAG_member ] [ishift] [line 46, size 64, align 64, offset 320] [from ]
!1024 = metadata !{metadata !1025, metadata !1026, metadata !1027, metadata !1028, metadata !1029, metadata !1030, metadata !1031, metadata !1032, metadata !1033, metadata !1034, metadata !1035, metadata !1036, metadata !1037, metadata !1038, metadata !1039, metadata !1040, metadata !1041, metadata !1042, metadata !1043, metadata !1044, metadata !1045, metadata !1046, metadata !1047, metadata !1048, metadata !1049, metadata !1050, metadata !1051, metadata !1052, metadata !1053, metadata !1054, metadata !1055, metadata !1056, metadata !1057}
!1025 = metadata !{i32 786689, metadata !948, metadata !"fp", metadata !249, i32 16778088, metadata !364, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 872]
!1026 = metadata !{i32 786689, metadata !948, metadata !"step", metadata !249, i32 33555304, metadata !258, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 872]
!1027 = metadata !{i32 786689, metadata !948, metadata !"fr", metadata !249, i32 50332521, metadata !252, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 873]
!1028 = metadata !{i32 786689, metadata !948, metadata !"ir", metadata !249, i32 67109737, metadata !465, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ir] [line 873]
!1029 = metadata !{i32 786689, metadata !948, metadata !"idef", metadata !249, i32 83886954, metadata !861, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idef] [line 874]
!1030 = metadata !{i32 786689, metadata !948, metadata !"nsb", metadata !249, i32 100664170, metadata !816, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsb] [line 874]
!1031 = metadata !{i32 786689, metadata !948, metadata !"cr", metadata !249, i32 117441387, metadata !805, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 875]
!1032 = metadata !{i32 786689, metadata !948, metadata !"mcr", metadata !249, i32 134218603, metadata !805, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mcr] [line 875]
!1033 = metadata !{i32 786689, metadata !948, metadata !"nrnb", metadata !249, i32 150995820, metadata !922, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrnb] [line 876]
!1034 = metadata !{i32 786689, metadata !948, metadata !"grps", metadata !249, i32 167773037, metadata !880, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grps] [line 877]
!1035 = metadata !{i32 786689, metadata !948, metadata !"md", metadata !249, i32 184550253, metadata !429, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [md] [line 877]
!1036 = metadata !{i32 786689, metadata !948, metadata !"ngener", metadata !249, i32 201327470, metadata !258, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ngener] [line 878]
!1037 = metadata !{i32 786689, metadata !948, metadata !"opts", metadata !249, i32 218104686, metadata !921, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [opts] [line 878]
!1038 = metadata !{i32 786689, metadata !948, metadata !"x", metadata !249, i32 234881903, metadata !313, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 879]
!1039 = metadata !{i32 786689, metadata !948, metadata !"f", metadata !249, i32 251659119, metadata !313, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 879]
!1040 = metadata !{i32 786689, metadata !948, metadata !"epot", metadata !249, i32 268436336, metadata !279, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [epot] [line 880]
!1041 = metadata !{i32 786689, metadata !948, metadata !"fcd", metadata !249, i32 285213552, metadata !951, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fcd] [line 880]
!1042 = metadata !{i32 786689, metadata !948, metadata !"bVerbose", metadata !249, i32 301990769, metadata !258, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bVerbose] [line 881]
!1043 = metadata !{i32 786689, metadata !948, metadata !"box", metadata !249, i32 318767985, metadata !421, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 881]
!1044 = metadata !{i32 786689, metadata !948, metadata !"lambda", metadata !249, i32 335545202, metadata !260, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 882]
!1045 = metadata !{i32 786689, metadata !948, metadata !"graph", metadata !249, i32 352322418, metadata !1010, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [graph] [line 882]
!1046 = metadata !{i32 786689, metadata !948, metadata !"excl", metadata !249, i32 369099635, metadata !858, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [excl] [line 883]
!1047 = metadata !{i32 786689, metadata !948, metadata !"bNBFonly", metadata !249, i32 385876851, metadata !258, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bNBFonly] [line 883]
!1048 = metadata !{i32 786689, metadata !948, metadata !"lr_vir", metadata !249, i32 402654068, metadata !421, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lr_vir] [line 884]
!1049 = metadata !{i32 786689, metadata !948, metadata !"mu_tot", metadata !249, i32 419431284, metadata !279, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mu_tot] [line 884]
!1050 = metadata !{i32 786689, metadata !948, metadata !"qsum", metadata !249, i32 436208501, metadata !260, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [qsum] [line 885]
!1051 = metadata !{i32 786689, metadata !948, metadata !"bGatherOnly", metadata !249, i32 452985717, metadata !258, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bGatherOnly] [line 885]
!1052 = metadata !{i32 786688, metadata !948, metadata !"i", metadata !249, i32 887, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 887]
!1053 = metadata !{i32 786688, metadata !948, metadata !"nit", metadata !249, i32 887, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nit] [line 887]
!1054 = metadata !{i32 786688, metadata !948, metadata !"bDoEpot", metadata !249, i32 888, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bDoEpot] [line 888]
!1055 = metadata !{i32 786688, metadata !948, metadata !"box_size", metadata !249, i32 889, metadata !314, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [box_size] [line 889]
!1056 = metadata !{i32 786688, metadata !948, metadata !"Vlr", metadata !249, i32 890, metadata !260, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Vlr] [line 890]
!1057 = metadata !{i32 786688, metadata !948, metadata !"Vcorr", metadata !249, i32 890, metadata !260, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Vcorr] [line 890]
!1058 = metadata !{i32 786478, metadata !1059, metadata !1060, metadata !"_mod", metadata !"_mod", metadata !"", i32 587, metadata !1061, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1063, i32 588} ; [ DW_TAG_subprogram ] [line 587] [local] [def] [scope 588] [_mod]
!1059 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!1060 = metadata !{i32 786473, metadata !1059}    ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!1061 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1062, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1062 = metadata !{metadata !258, metadata !258, metadata !258, metadata !371, metadata !258}
!1063 = metadata !{metadata !1064, metadata !1065, metadata !1066, metadata !1067}
!1064 = metadata !{i32 786689, metadata !1058, metadata !"a", metadata !1060, i32 16777803, metadata !258, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 587]
!1065 = metadata !{i32 786689, metadata !1058, metadata !"b", metadata !1060, i32 33555019, metadata !258, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 587]
!1066 = metadata !{i32 786689, metadata !1058, metadata !"file", metadata !1060, i32 50332235, metadata !371, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 587]
!1067 = metadata !{i32 786689, metadata !1058, metadata !"line", metadata !1060, i32 67109451, metadata !258, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 587]
!1068 = metadata !{i32 786478, metadata !1, metadata !249, metadata !"check_solvent", metadata !"check_solvent", metadata !"", i32 123, metadata !1069, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1071, i32 125} ; [ DW_TAG_subprogram ] [line 123] [local] [def] [scope 125] [check_solvent]
!1069 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1070, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1070 = metadata !{null, metadata !364, metadata !579, metadata !252, metadata !429, metadata !816}
!1071 = metadata !{metadata !1072, metadata !1073, metadata !1074, metadata !1075, metadata !1076, metadata !1077, metadata !1079, metadata !1080, metadata !1081, metadata !1082, metadata !1083, metadata !1084, metadata !1085, metadata !1086, metadata !1087, metadata !1088, metadata !1089, metadata !1090, metadata !1091, metadata !1092, metadata !1093, metadata !1094, metadata !1095, metadata !1096, metadata !1097, metadata !1098, metadata !1099, metadata !1100, metadata !1101, metadata !1102}
!1072 = metadata !{i32 786689, metadata !1068, metadata !"fp", metadata !249, i32 16777339, metadata !364, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 123]
!1073 = metadata !{i32 786689, metadata !1068, metadata !"top", metadata !249, i32 33554555, metadata !579, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [top] [line 123]
!1074 = metadata !{i32 786689, metadata !1068, metadata !"fr", metadata !249, i32 50331771, metadata !252, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 123]
!1075 = metadata !{i32 786689, metadata !1068, metadata !"md", metadata !249, i32 67108988, metadata !429, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [md] [line 124]
!1076 = metadata !{i32 786689, metadata !1068, metadata !"nsb", metadata !249, i32 83886204, metadata !816, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsb] [line 124]
!1077 = metadata !{i32 786688, metadata !1078, metadata !"cgs", metadata !249, i32 130, metadata !858, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cgs] [line 130]
!1078 = metadata !{i32 786443, metadata !1, metadata !1068} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1079 = metadata !{i32 786688, metadata !1078, metadata !"excl", metadata !249, i32 130, metadata !858, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [excl] [line 130]
!1080 = metadata !{i32 786688, metadata !1078, metadata !"mols", metadata !249, i32 130, metadata !858, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mols] [line 130]
!1081 = metadata !{i32 786688, metadata !1078, metadata !"cgid", metadata !249, i32 131, metadata !330, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cgid] [line 131]
!1082 = metadata !{i32 786688, metadata !1078, metadata !"i", metadata !249, i32 132, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 132]
!1083 = metadata !{i32 786688, metadata !1078, metadata !"j", metadata !249, i32 132, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 132]
!1084 = metadata !{i32 786688, metadata !1078, metadata !"m", metadata !249, i32 132, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 132]
!1085 = metadata !{i32 786688, metadata !1078, metadata !"j0", metadata !249, i32 132, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j0] [line 132]
!1086 = metadata !{i32 786688, metadata !1078, metadata !"j1", metadata !249, i32 132, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j1] [line 132]
!1087 = metadata !{i32 786688, metadata !1078, metadata !"nj", metadata !249, i32 132, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nj] [line 132]
!1088 = metadata !{i32 786688, metadata !1078, metadata !"k", metadata !249, i32 132, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 132]
!1089 = metadata !{i32 786688, metadata !1078, metadata !"aj", metadata !249, i32 132, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aj] [line 132]
!1090 = metadata !{i32 786688, metadata !1078, metadata !"ak", metadata !249, i32 132, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ak] [line 132]
!1091 = metadata !{i32 786688, metadata !1078, metadata !"tjA", metadata !249, i32 132, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tjA] [line 132]
!1092 = metadata !{i32 786688, metadata !1078, metadata !"tjB", metadata !249, i32 132, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tjB] [line 132]
!1093 = metadata !{i32 786688, metadata !1078, metadata !"nl_m", metadata !249, i32 132, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nl_m] [line 132]
!1094 = metadata !{i32 786688, metadata !1078, metadata !"nl_n", metadata !249, i32 132, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nl_n] [line 132]
!1095 = metadata !{i32 786688, metadata !1078, metadata !"nl_o", metadata !249, i32 132, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nl_o] [line 132]
!1096 = metadata !{i32 786688, metadata !1078, metadata !"warncount", metadata !249, i32 133, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [warncount] [line 133]
!1097 = metadata !{i32 786688, metadata !1078, metadata !"bOneCG", metadata !249, i32 134, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bOneCG] [line 134]
!1098 = metadata !{i32 786688, metadata !1078, metadata !"bAllExcl", metadata !249, i32 135, metadata !310, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bAllExcl] [line 135]
!1099 = metadata !{i32 786688, metadata !1078, metadata !"bAE", metadata !249, i32 135, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bAE] [line 135]
!1100 = metadata !{i32 786688, metadata !1078, metadata !"bOrder", metadata !249, i32 135, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bOrder] [line 135]
!1101 = metadata !{i32 786688, metadata !1078, metadata !"bHaveLJ", metadata !249, i32 136, metadata !310, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bHaveLJ] [line 136]
!1102 = metadata !{i32 786688, metadata !1078, metadata !"bHaveCoul", metadata !249, i32 136, metadata !310, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bHaveCoul] [line 136]
!1103 = metadata !{i32 786478, metadata !1, metadata !249, metadata !"set_bham_b_max", metadata !"set_bham_b_max", metadata !"", i32 451, metadata !427, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1104, i32 452} ; [ DW_TAG_subprogram ] [line 451] [local] [def] [scope 452] [set_bham_b_max]
!1104 = metadata !{metadata !1105, metadata !1106, metadata !1107, metadata !1108, metadata !1109, metadata !1110, metadata !1111, metadata !1112, metadata !1113, metadata !1114, metadata !1115, metadata !1116, metadata !1117, metadata !1118}
!1105 = metadata !{i32 786689, metadata !1103, metadata !"log", metadata !249, i32 16777667, metadata !364, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 451]
!1106 = metadata !{i32 786689, metadata !1103, metadata !"fr", metadata !249, i32 33554883, metadata !252, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 451]
!1107 = metadata !{i32 786689, metadata !1103, metadata !"mdatoms", metadata !249, i32 50332099, metadata !429, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mdatoms] [line 451]
!1108 = metadata !{i32 786688, metadata !1103, metadata !"i", metadata !249, i32 453, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 453]
!1109 = metadata !{i32 786688, metadata !1103, metadata !"j", metadata !249, i32 453, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 453]
!1110 = metadata !{i32 786688, metadata !1103, metadata !"tpi", metadata !249, i32 453, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpi] [line 453]
!1111 = metadata !{i32 786688, metadata !1103, metadata !"tpj", metadata !249, i32 453, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpj] [line 453]
!1112 = metadata !{i32 786688, metadata !1103, metadata !"ntypes", metadata !249, i32 453, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ntypes] [line 453]
!1113 = metadata !{i32 786688, metadata !1103, metadata !"natoms", metadata !249, i32 453, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [natoms] [line 453]
!1114 = metadata !{i32 786688, metadata !1103, metadata !"type", metadata !249, i32 453, metadata !310, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 453]
!1115 = metadata !{i32 786688, metadata !1103, metadata !"b", metadata !249, i32 454, metadata !260, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 454]
!1116 = metadata !{i32 786688, metadata !1103, metadata !"bmin", metadata !249, i32 454, metadata !260, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bmin] [line 454]
!1117 = metadata !{i32 786688, metadata !1103, metadata !"nbfp", metadata !249, i32 455, metadata !279, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbfp] [line 455]
!1118 = metadata !{i32 786688, metadata !1103, metadata !"first", metadata !249, i32 456, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 456]
!1119 = metadata !{i32 786478, metadata !1, metadata !249, metadata !"mk_nbfp", metadata !"mk_nbfp", metadata !"", i32 95, metadata !1120, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1122, i32 96} ; [ DW_TAG_subprogram ] [line 95] [local] [def] [scope 96] [mk_nbfp]
!1120 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1121, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1121 = metadata !{metadata !279, metadata !861, metadata !258}
!1122 = metadata !{metadata !1123, metadata !1124, metadata !1125, metadata !1126, metadata !1127, metadata !1128, metadata !1129}
!1123 = metadata !{i32 786689, metadata !1119, metadata !"idef", metadata !249, i32 16777311, metadata !861, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idef] [line 95]
!1124 = metadata !{i32 786689, metadata !1119, metadata !"bBHAM", metadata !249, i32 33554527, metadata !258, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bBHAM] [line 95]
!1125 = metadata !{i32 786688, metadata !1119, metadata !"nbfp", metadata !249, i32 97, metadata !279, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbfp] [line 97]
!1126 = metadata !{i32 786688, metadata !1119, metadata !"i", metadata !249, i32 98, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 98]
!1127 = metadata !{i32 786688, metadata !1119, metadata !"j", metadata !249, i32 98, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 98]
!1128 = metadata !{i32 786688, metadata !1119, metadata !"k", metadata !249, i32 98, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 98]
!1129 = metadata !{i32 786688, metadata !1119, metadata !"atnr", metadata !249, i32 98, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [atnr] [line 98]
!1130 = metadata !{i32 786478, metadata !1, metadata !249, metadata !"calc_avcsix", metadata !"calc_avcsix", metadata !"", i32 412, metadata !1131, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1133, i32 414} ; [ DW_TAG_subprogram ] [line 412] [local] [def] [scope 414] [calc_avcsix]
!1131 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1132, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1132 = metadata !{metadata !856, metadata !364, metadata !279, metadata !258, metadata !258, metadata !310, metadata !258}
!1133 = metadata !{metadata !1134, metadata !1135, metadata !1136, metadata !1137, metadata !1138, metadata !1139, metadata !1140, metadata !1141, metadata !1142, metadata !1143, metadata !1144}
!1134 = metadata !{i32 786689, metadata !1130, metadata !"log", metadata !249, i32 16777628, metadata !364, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 412]
!1135 = metadata !{i32 786689, metadata !1130, metadata !"nbfp", metadata !249, i32 33554844, metadata !279, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nbfp] [line 412]
!1136 = metadata !{i32 786689, metadata !1130, metadata !"atnr", metadata !249, i32 50332060, metadata !258, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atnr] [line 412]
!1137 = metadata !{i32 786689, metadata !1130, metadata !"natoms", metadata !249, i32 67109277, metadata !258, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 413]
!1138 = metadata !{i32 786689, metadata !1130, metadata !"type", metadata !249, i32 83886493, metadata !310, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 413]
!1139 = metadata !{i32 786689, metadata !1130, metadata !"bBHAM", metadata !249, i32 100663709, metadata !258, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bBHAM] [line 413]
!1140 = metadata !{i32 786688, metadata !1130, metadata !"i", metadata !249, i32 415, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 415]
!1141 = metadata !{i32 786688, metadata !1130, metadata !"j", metadata !249, i32 415, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 415]
!1142 = metadata !{i32 786688, metadata !1130, metadata !"tpi", metadata !249, i32 415, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpi] [line 415]
!1143 = metadata !{i32 786688, metadata !1130, metadata !"tpj", metadata !249, i32 415, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpj] [line 415]
!1144 = metadata !{i32 786688, metadata !1130, metadata !"csix", metadata !249, i32 416, metadata !856, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [csix] [line 416]
!1145 = metadata !{i32 786478, metadata !1, metadata !249, metadata !"calc_rffac", metadata !"calc_rffac", metadata !"", i32 339, metadata !1146, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1148, i32 342} ; [ DW_TAG_subprogram ] [line 339] [local] [def] [scope 342] [calc_rffac]
!1146 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1147, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1147 = metadata !{null, metadata !364, metadata !258, metadata !260, metadata !260, metadata !260, metadata !260, metadata !421, metadata !279, metadata !279, metadata !279, metadata !279}
!1148 = metadata !{metadata !1149, metadata !1150, metadata !1151, metadata !1152, metadata !1153, metadata !1154, metadata !1155, metadata !1156, metadata !1157, metadata !1158, metadata !1159, metadata !1160, metadata !1161, metadata !1162, metadata !1163, metadata !1164}
!1149 = metadata !{i32 786689, metadata !1145, metadata !"log", metadata !249, i32 16777555, metadata !364, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 339]
!1150 = metadata !{i32 786689, metadata !1145, metadata !"eel", metadata !249, i32 33554771, metadata !258, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eel] [line 339]
!1151 = metadata !{i32 786689, metadata !1145, metadata !"eps", metadata !249, i32 50331987, metadata !260, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eps] [line 339]
!1152 = metadata !{i32 786689, metadata !1145, metadata !"Rc", metadata !249, i32 67109203, metadata !260, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Rc] [line 339]
!1153 = metadata !{i32 786689, metadata !1145, metadata !"Temp", metadata !249, i32 83886419, metadata !260, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Temp] [line 339]
!1154 = metadata !{i32 786689, metadata !1145, metadata !"zsq", metadata !249, i32 100663636, metadata !260, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [zsq] [line 340]
!1155 = metadata !{i32 786689, metadata !1145, metadata !"box", metadata !249, i32 117440852, metadata !421, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 340]
!1156 = metadata !{i32 786689, metadata !1145, metadata !"kappa", metadata !249, i32 134218069, metadata !279, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [kappa] [line 341]
!1157 = metadata !{i32 786689, metadata !1145, metadata !"epsfac", metadata !249, i32 150995285, metadata !279, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [epsfac] [line 341]
!1158 = metadata !{i32 786689, metadata !1145, metadata !"krf", metadata !249, i32 167772501, metadata !279, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [krf] [line 341]
!1159 = metadata !{i32 786689, metadata !1145, metadata !"crf", metadata !249, i32 184549717, metadata !279, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [crf] [line 341]
!1160 = metadata !{i32 786688, metadata !1145, metadata !"k1", metadata !249, i32 345, metadata !260, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k1] [line 345]
!1161 = metadata !{i32 786688, metadata !1145, metadata !"k2", metadata !249, i32 345, metadata !260, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k2] [line 345]
!1162 = metadata !{i32 786688, metadata !1145, metadata !"I", metadata !249, i32 345, metadata !260, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [I] [line 345]
!1163 = metadata !{i32 786688, metadata !1145, metadata !"vol", metadata !249, i32 345, metadata !260, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vol] [line 345]
!1164 = metadata !{i32 786688, metadata !1145, metadata !"rmin", metadata !249, i32 345, metadata !260, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rmin] [line 345]
!1165 = metadata !{i32 786478, metadata !1059, metadata !1060, metadata !"sqr", metadata !"sqr", metadata !"", i32 197, metadata !1166, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1168, i32 198} ; [ DW_TAG_subprogram ] [line 197] [local] [def] [scope 198] [sqr]
!1166 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1167, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1167 = metadata !{metadata !260, metadata !260}
!1168 = metadata !{metadata !1169}
!1169 = metadata !{i32 786689, metadata !1165, metadata !"x", metadata !1060, i32 16777413, metadata !260, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 197]
!1170 = metadata !{i32 786478, metadata !1059, metadata !1060, metadata !"det", metadata !"det", metadata !"", i32 478, metadata !1171, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1173, i32 479} ; [ DW_TAG_subprogram ] [line 478] [local] [def] [scope 479] [det]
!1171 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1172, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1172 = metadata !{metadata !260, metadata !421}
!1173 = metadata !{metadata !1174}
!1174 = metadata !{i32 786689, metadata !1170, metadata !"a", metadata !1060, i32 16777694, metadata !421, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 478]
!1175 = metadata !{metadata !1176, metadata !1177, metadata !1178}
!1176 = metadata !{i32 786484, i32 0, metadata !877, metadata !"bFirst", metadata !"bFirst", metadata !"", metadata !249, i32 823, metadata !258, i32 1, i32 1, null, null}
!1177 = metadata !{i32 786484, i32 0, metadata !877, metadata !"nDNL", metadata !"nDNL", metadata !"", metadata !249, i32 824, metadata !258, i32 1, i32 1, null, null}
!1178 = metadata !{i32 786484, i32 0, metadata !1145, metadata !"bFirst", metadata !"bFirst", metadata !"", metadata !249, i32 344, metadata !258, i32 1, i32 1, null, null}
!1179 = metadata !{i32 68, i32 0, metadata !248, null}
!1180 = metadata !{i32 70, i32 0, metadata !248, null}
!1181 = metadata !{i32 405, i32 0, metadata !361, null}
!1182 = metadata !{i32 407, i32 0, metadata !361, null}
!1183 = metadata !{metadata !"int", metadata !1184}
!1184 = metadata !{metadata !"omnipotent char", metadata !1185}
!1185 = metadata !{metadata !"Simple C/C++ TBAA"}
!1186 = metadata !{metadata !"float", metadata !1184}
!1187 = metadata !{i32 786689, metadata !1145, metadata !"log", metadata !249, i32 16777555, metadata !364, i32 0, metadata !1182} ; [ DW_TAG_arg_variable ] [log] [line 339]
!1188 = metadata !{i32 339, i32 0, metadata !1145, metadata !1182}
!1189 = metadata !{i32 786689, metadata !1145, metadata !"eel", metadata !249, i32 33554771, metadata !258, i32 0, metadata !1182} ; [ DW_TAG_arg_variable ] [eel] [line 339]
!1190 = metadata !{i32 786689, metadata !1145, metadata !"eps", metadata !249, i32 50331987, metadata !260, i32 0, metadata !1182} ; [ DW_TAG_arg_variable ] [eps] [line 339]
!1191 = metadata !{i32 786689, metadata !1145, metadata !"Rc", metadata !249, i32 67109203, metadata !260, i32 0, metadata !1182} ; [ DW_TAG_arg_variable ] [Rc] [line 339]
!1192 = metadata !{i32 786689, metadata !1145, metadata !"Temp", metadata !249, i32 83886419, metadata !260, i32 0, metadata !1182} ; [ DW_TAG_arg_variable ] [Temp] [line 339]
!1193 = metadata !{i32 786689, metadata !1145, metadata !"zsq", metadata !249, i32 100663636, metadata !260, i32 0, metadata !1182} ; [ DW_TAG_arg_variable ] [zsq] [line 340]
!1194 = metadata !{i32 340, i32 0, metadata !1145, metadata !1182}
!1195 = metadata !{i32 786689, metadata !1145, metadata !"box", metadata !249, i32 117440852, metadata !421, i32 0, metadata !1182} ; [ DW_TAG_arg_variable ] [box] [line 340]
!1196 = metadata !{i32 786689, metadata !1145, metadata !"kappa", metadata !249, i32 134218069, metadata !279, i32 0, metadata !1182} ; [ DW_TAG_arg_variable ] [kappa] [line 341]
!1197 = metadata !{i32 341, i32 0, metadata !1145, metadata !1182}
!1198 = metadata !{i32 786689, metadata !1145, metadata !"epsfac", metadata !249, i32 150995285, metadata !279, i32 0, metadata !1182} ; [ DW_TAG_arg_variable ] [epsfac] [line 341]
!1199 = metadata !{i32 786689, metadata !1145, metadata !"krf", metadata !249, i32 167772501, metadata !279, i32 0, metadata !1182} ; [ DW_TAG_arg_variable ] [krf] [line 341]
!1200 = metadata !{i32 786689, metadata !1145, metadata !"crf", metadata !249, i32 184549717, metadata !279, i32 0, metadata !1182} ; [ DW_TAG_arg_variable ] [crf] [line 341]
!1201 = metadata !{i32 347, i32 0, metadata !1145, metadata !1182}
!1202 = metadata !{i32 786689, metadata !1170, metadata !"a", metadata !1060, i32 16777694, metadata !421, i32 0, metadata !1203} ; [ DW_TAG_arg_variable ] [a] [line 478]
!1203 = metadata !{i32 348, i32 0, metadata !1204, metadata !1182}
!1204 = metadata !{i32 786443, metadata !1, metadata !1145, i32 347, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1205 = metadata !{i32 478, i32 0, metadata !1170, metadata !1203}
!1206 = metadata !{i32 480, i32 0, metadata !1170, metadata !1203}
!1207 = metadata !{i32 786688, metadata !1145, metadata !"vol", metadata !249, i32 345, metadata !260, i32 0, metadata !1182} ; [ DW_TAG_auto_variable ] [vol] [line 345]
!1208 = metadata !{i32 349, i32 0, metadata !1204, metadata !1182}
!1209 = metadata !{i32 786688, metadata !1145, metadata !"I", metadata !249, i32 345, metadata !260, i32 0, metadata !1182} ; [ DW_TAG_auto_variable ] [I] [line 345]
!1210 = metadata !{i32 350, i32 0, metadata !1204, metadata !1182}
!1211 = metadata !{i32 362, i32 0, metadata !1204, metadata !1182}
!1212 = metadata !{i32 352, i32 0, metadata !1213, metadata !1182}
!1213 = metadata !{i32 786443, metadata !1, metadata !1204, i32 350, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1214 = metadata !{i32 353, i32 0, metadata !1213, metadata !1182}
!1215 = metadata !{i32 356, i32 0, metadata !1213, metadata !1182}
!1216 = metadata !{i32 357, i32 0, metadata !1213, metadata !1182}
!1217 = metadata !{i32 363, i32 0, metadata !1218, metadata !1182}
!1218 = metadata !{i32 786443, metadata !1, metadata !1204, i32 362, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1219 = metadata !{i32 365, i32 0, metadata !1218, metadata !1182}
!1220 = metadata !{i32 367, i32 0, metadata !1221, metadata !1182}
!1221 = metadata !{i32 786443, metadata !1, metadata !1204, i32 366, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1222 = metadata !{i32 786688, metadata !1145, metadata !"k1", metadata !249, i32 345, metadata !260, i32 0, metadata !1182} ; [ DW_TAG_auto_variable ] [k1] [line 345]
!1223 = metadata !{i32 786689, metadata !1165, metadata !"x", metadata !1060, i32 16777413, metadata !260, i32 0, metadata !1224} ; [ DW_TAG_arg_variable ] [x] [line 197]
!1224 = metadata !{i32 368, i32 0, metadata !1221, metadata !1182}
!1225 = metadata !{i32 197, i32 0, metadata !1165, metadata !1224}
!1226 = metadata !{i32 199, i32 0, metadata !1227, metadata !1224}
!1227 = metadata !{i32 786443, metadata !1059, metadata !1165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!1228 = metadata !{i32 786688, metadata !1145, metadata !"k2", metadata !249, i32 345, metadata !260, i32 0, metadata !1182} ; [ DW_TAG_auto_variable ] [k2] [line 345]
!1229 = metadata !{i32 370, i32 0, metadata !1221, metadata !1182}
!1230 = metadata !{i32 371, i32 0, metadata !1221, metadata !1182}
!1231 = metadata !{i32 364, i32 0, metadata !1218, metadata !1182}
!1232 = metadata !{i32 373, i32 0, metadata !1204, metadata !1182}
!1233 = metadata !{i32 374, i32 0, metadata !1204, metadata !1182}
!1234 = metadata !{i32 786688, metadata !1145, metadata !"rmin", metadata !249, i32 345, metadata !260, i32 0, metadata !1182} ; [ DW_TAG_auto_variable ] [rmin] [line 345]
!1235 = metadata !{i32 376, i32 0, metadata !1204, metadata !1182}
!1236 = metadata !{i32 377, i32 0, metadata !1237, metadata !1182}
!1237 = metadata !{i32 786443, metadata !1, metadata !1204, i32 376, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1238 = metadata !{i32 378, i32 0, metadata !1237, metadata !1182}
!1239 = metadata !{i32 379, i32 0, metadata !1237, metadata !1182}
!1240 = metadata !{i32 381, i32 0, metadata !1241, metadata !1182}
!1241 = metadata !{i32 786443, metadata !1, metadata !1237, i32 380, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1242 = metadata !{metadata !"any pointer", metadata !1184}
!1243 = metadata !{i32 385, i32 0, metadata !1241, metadata !1182}
!1244 = metadata !{i32 388, i32 0, metadata !1241, metadata !1182}
!1245 = metadata !{i32 390, i32 0, metadata !1237, metadata !1182}
!1246 = metadata !{i32 396, i32 0, metadata !1247, metadata !1182}
!1247 = metadata !{i32 786443, metadata !1, metadata !1145, i32 392, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1248 = metadata !{i32 397, i32 0, metadata !1247, metadata !1182}
!1249 = metadata !{i32 398, i32 0, metadata !1247, metadata !1182}
!1250 = metadata !{i32 399, i32 0, metadata !1247, metadata !1182}
!1251 = metadata !{float 1.000000e+00}
!1252 = metadata !{i32 400, i32 0, metadata !1247, metadata !1182}
!1253 = metadata !{i32 401, i32 0, metadata !1247, metadata !1182}
!1254 = metadata !{i32 410, i32 0, metadata !361, null}
!1255 = metadata !{i32 445, i32 0, metadata !426, null}
!1256 = metadata !{i32 447, i32 0, metadata !426, null}
!1257 = metadata !{%struct._IO_FILE* null}
!1258 = metadata !{i32 786689, metadata !1130, metadata !"log", metadata !249, i32 16777628, metadata !364, i32 0, metadata !1256} ; [ DW_TAG_arg_variable ] [log] [line 412]
!1259 = metadata !{i32 412, i32 0, metadata !1130, metadata !1256}
!1260 = metadata !{double 0.000000e+00}
!1261 = metadata !{i32 786688, metadata !1130, metadata !"csix", metadata !249, i32 416, metadata !856, i32 0, metadata !1256} ; [ DW_TAG_auto_variable ] [csix] [line 416]
!1262 = metadata !{i32 419, i32 0, metadata !1130, metadata !1256}
!1263 = metadata !{i32 786688, metadata !1130, metadata !"i", metadata !249, i32 415, metadata !258, i32 0, metadata !1256} ; [ DW_TAG_auto_variable ] [i] [line 415]
!1264 = metadata !{i32 420, i32 0, metadata !1265, metadata !1256}
!1265 = metadata !{i32 786443, metadata !1, metadata !1130, i32 420, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1266 = metadata !{i32 432, i32 0, metadata !1267, metadata !1256}
!1267 = metadata !{i32 786443, metadata !1, metadata !1268, i32 426, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1268 = metadata !{i32 786443, metadata !1, metadata !1269, i32 426, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1269 = metadata !{i32 786443, metadata !1, metadata !1265, i32 420, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1270 = metadata !{i32 786688, metadata !1130, metadata !"j", metadata !249, i32 415, metadata !258, i32 0, metadata !1256} ; [ DW_TAG_auto_variable ] [j] [line 415]
!1271 = metadata !{i32 426, i32 0, metadata !1268, metadata !1256}
!1272 = metadata !{i32 421, i32 0, metadata !1269, metadata !1256}
!1273 = metadata !{i32 433, i32 0, metadata !1267, metadata !1256}
!1274 = metadata !{i32 427, i32 0, metadata !1267, metadata !1256}
!1275 = metadata !{i32 786688, metadata !1130, metadata !"tpj", metadata !249, i32 415, metadata !258, i32 0, metadata !1256} ; [ DW_TAG_auto_variable ] [tpj] [line 415]
!1276 = metadata !{i32 435, i32 0, metadata !1267, metadata !1256}
!1277 = metadata !{i32 438, i32 0, metadata !1130, metadata !1256}
!1278 = metadata !{i32 439, i32 0, metadata !1130, metadata !1256}
!1279 = metadata !{i32 440, i32 0, metadata !1130, metadata !1256}
!1280 = metadata !{i32 449, i32 0, metadata !426, null}
!1281 = metadata !{i32 493, i32 0, metadata !462, null}
!1282 = metadata !{i32 494, i32 0, metadata !462, null}
!1283 = metadata !{i32 495, i32 0, metadata !462, null}
!1284 = metadata !{i32 496, i32 0, metadata !462, null}
!1285 = metadata !{i32 497, i32 0, metadata !462, null}
!1286 = metadata !{i32 498, i32 0, metadata !462, null}
!1287 = metadata !{i32 499, i32 0, metadata !462, null}
!1288 = metadata !{i32 500, i32 0, metadata !462, null}
!1289 = metadata !{i32 501, i32 0, metadata !462, null}
!1290 = metadata !{i32 502, i32 0, metadata !462, null}
!1291 = metadata !{i32 503, i32 0, metadata !462, null}
!1292 = metadata !{i32 507, i32 0, metadata !462, null}
!1293 = metadata !{i32 512, i32 0, metadata !462, null}
!1294 = metadata !{i32 513, i32 0, metadata !462, null}
!1295 = metadata !{i32 516, i32 0, metadata !462, null}
!1296 = metadata !{i32 519, i32 0, metadata !462, null}
!1297 = metadata !{i32 522, i32 0, metadata !462, null}
!1298 = metadata !{i32 525, i32 0, metadata !462, null}
!1299 = metadata !{i32 526, i32 0, metadata !462, null}
!1300 = metadata !{i32 527, i32 0, metadata !462, null}
!1301 = metadata !{i32 530, i32 0, metadata !462, null}
!1302 = metadata !{i32 531, i32 0, metadata !462, null}
!1303 = metadata !{i32 532, i32 0, metadata !462, null}
!1304 = metadata !{i32 533, i32 0, metadata !462, null}
!1305 = metadata !{i32 534, i32 0, metadata !462, null}
!1306 = metadata !{i32 535, i32 0, metadata !462, null}
!1307 = metadata !{i32 536, i32 0, metadata !462, null}
!1308 = metadata !{i32 538, i32 0, metadata !462, null}
!1309 = metadata !{i32 539, i32 0, metadata !462, null}
!1310 = metadata !{i32 540, i32 0, metadata !462, null}
!1311 = metadata !{i32 541, i32 0, metadata !462, null}
!1312 = metadata !{i32 543, i32 0, metadata !462, null}
!1313 = metadata !{i32 551, i32 0, metadata !462, null}
!1314 = metadata !{i32 552, i32 0, metadata !1315, null}
!1315 = metadata !{i32 786443, metadata !1, metadata !462, i32 551, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1316 = metadata !{i32 553, i32 0, metadata !1315, null}
!1317 = metadata !{i32 557, i32 0, metadata !462, null}
!1318 = metadata !{i32 554, i32 0, metadata !1315, null}
!1319 = metadata !{i32 558, i32 0, metadata !1320, null}
!1320 = metadata !{i32 786443, metadata !1, metadata !462, i32 557, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1321 = metadata !{i32 559, i32 0, metadata !1320, null}
!1322 = metadata !{i32 560, i32 0, metadata !1320, null}
!1323 = metadata !{i32 565, i32 0, metadata !462, null}
!1324 = metadata !{i32 566, i32 0, metadata !462, null}
!1325 = metadata !{i32 569, i32 0, metadata !462, null}
!1326 = metadata !{i32 570, i32 0, metadata !462, null}
!1327 = metadata !{i32 571, i32 0, metadata !462, null}
!1328 = metadata !{i32 572, i32 0, metadata !462, null}
!1329 = metadata !{i32 579, i32 0, metadata !462, null}
!1330 = metadata !{i32 582, i32 0, metadata !462, null}
!1331 = metadata !{i32 583, i32 0, metadata !462, null}
!1332 = metadata !{i32 585, i32 0, metadata !462, null}
!1333 = metadata !{i32 587, i32 0, metadata !1334, null}
!1334 = metadata !{i32 786443, metadata !1, metadata !1335, i32 587, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1335 = metadata !{i32 786443, metadata !1, metadata !462, i32 585, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1336 = metadata !{i32 589, i32 0, metadata !1337, null}
!1337 = metadata !{i32 786443, metadata !1, metadata !1338, i32 589, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1338 = metadata !{i32 786443, metadata !1, metadata !1334, i32 587, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1339 = metadata !{i32 590, i32 0, metadata !1337, null}
!1340 = metadata !{float 0.000000e+00}
!1341 = metadata !{i32 588, i32 0, metadata !1338, null}
!1342 = metadata !{i32 591, i32 0, metadata !1338, null}
!1343 = metadata !{i32 596, i32 0, metadata !1338, null}
!1344 = metadata !{i32 598, i32 0, metadata !1335, null}
!1345 = metadata !{i32 600, i32 0, metadata !1335, null}
!1346 = metadata !{i32 601, i32 0, metadata !1335, null}
!1347 = metadata !{i32 602, i32 0, metadata !1348, null}
!1348 = metadata !{i32 786443, metadata !1, metadata !1335, i32 602, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1349 = metadata !{i32 603, i32 0, metadata !1350, null}
!1350 = metadata !{i32 786443, metadata !1, metadata !1348, i32 602, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1351 = metadata !{i32 604, i32 0, metadata !1350, null}
!1352 = metadata !{i32 606, i32 0, metadata !1335, null}
!1353 = metadata !{i32 607, i32 0, metadata !1335, null}
!1354 = metadata !{i32 608, i32 0, metadata !1335, null}
!1355 = metadata !{i32 609, i32 0, metadata !1335, null}
!1356 = metadata !{i32 623, i32 0, metadata !1357, null}
!1357 = metadata !{i32 786443, metadata !1, metadata !1358, i32 622, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1358 = metadata !{i32 786443, metadata !1, metadata !462, i32 611, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1359 = metadata !{i32 622, i32 0, metadata !1357, null}
!1360 = metadata !{i32 625, i32 0, metadata !1358, null}
!1361 = metadata !{i32 626, i32 0, metadata !1358, null}
!1362 = metadata !{i32 628, i32 0, metadata !1358, null}
!1363 = metadata !{i32 630, i32 0, metadata !1358, null}
!1364 = metadata !{i32 634, i32 0, metadata !462, null}
!1365 = metadata !{i32 635, i32 0, metadata !1366, null}
!1366 = metadata !{i32 786443, metadata !1, metadata !462, i32 634, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1367 = metadata !{i32 636, i32 0, metadata !1366, null}
!1368 = metadata !{i32 637, i32 0, metadata !1366, null}
!1369 = metadata !{i32 639, i32 0, metadata !462, null}
!1370 = metadata !{i32 640, i32 0, metadata !1371, null}
!1371 = metadata !{i32 786443, metadata !1, metadata !462, i32 639, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1372 = metadata !{i32 641, i32 0, metadata !1371, null}
!1373 = metadata !{i32 652, i32 0, metadata !462, null}
!1374 = metadata !{i32 653, i32 0, metadata !462, null}
!1375 = metadata !{i32 654, i32 0, metadata !462, null}
!1376 = metadata !{i32 655, i32 0, metadata !462, null}
!1377 = metadata !{i32 657, i32 0, metadata !462, null}
!1378 = metadata !{i32 658, i32 0, metadata !462, null}
!1379 = metadata !{i32 660, i32 0, metadata !462, null}
!1380 = metadata !{i32 661, i32 0, metadata !1381, null}
!1381 = metadata !{i32 786443, metadata !1, metadata !462, i32 660, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1382 = metadata !{i32 662, i32 0, metadata !1381, null}
!1383 = metadata !{i32 663, i32 0, metadata !1381, null}
!1384 = metadata !{i32 664, i32 0, metadata !1381, null}
!1385 = metadata !{i32 665, i32 0, metadata !1381, null}
!1386 = metadata !{i32 667, i32 0, metadata !462, null}
!1387 = metadata !{i32 668, i32 0, metadata !1388, null}
!1388 = metadata !{i32 786443, metadata !1, metadata !462, i32 667, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1389 = metadata !{i32 669, i32 0, metadata !1388, null}
!1390 = metadata !{i32 786689, metadata !1119, metadata !"bBHAM", metadata !249, i32 33554527, metadata !258, i32 0, metadata !1391} ; [ DW_TAG_arg_variable ] [bBHAM] [line 95]
!1391 = metadata !{i32 670, i32 0, metadata !1388, null}
!1392 = metadata !{i32 95, i32 0, metadata !1119, metadata !1391}
!1393 = metadata !{i32 100, i32 0, metadata !1119, metadata !1391}
!1394 = metadata !{i32 786688, metadata !1119, metadata !"atnr", metadata !249, i32 98, metadata !258, i32 0, metadata !1391} ; [ DW_TAG_auto_variable ] [atnr] [line 98]
!1395 = metadata !{i32 101, i32 0, metadata !1119, metadata !1391}
!1396 = metadata !{i32 102, i32 0, metadata !1397, metadata !1391}
!1397 = metadata !{i32 786443, metadata !1, metadata !1119, i32 101, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1398 = metadata !{i32 786688, metadata !1119, metadata !"nbfp", metadata !249, i32 97, metadata !279, i32 0, metadata !1391} ; [ DW_TAG_auto_variable ] [nbfp] [line 97]
!1399 = metadata !{i32 786688, metadata !1119, metadata !"k", metadata !249, i32 98, metadata !258, i32 0, metadata !1391} ; [ DW_TAG_auto_variable ] [k] [line 98]
!1400 = metadata !{i32 103, i32 0, metadata !1401, metadata !1391}
!1401 = metadata !{i32 786443, metadata !1, metadata !1397, i32 103, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1402 = metadata !{i32 786688, metadata !1119, metadata !"i", metadata !249, i32 98, metadata !258, i32 0, metadata !1391} ; [ DW_TAG_auto_variable ] [i] [line 98]
!1403 = metadata !{i32 105, i32 0, metadata !1404, metadata !1391}
!1404 = metadata !{i32 786443, metadata !1, metadata !1405, i32 104, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1405 = metadata !{i32 786443, metadata !1, metadata !1406, i32 104, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1406 = metadata !{i32 786443, metadata !1, metadata !1401, i32 103, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1407 = metadata !{i32 104, i32 0, metadata !1405, metadata !1391}
!1408 = metadata !{i32 106, i32 0, metadata !1404, metadata !1391}
!1409 = metadata !{i32 107, i32 0, metadata !1404, metadata !1391}
!1410 = metadata !{i32 112, i32 0, metadata !1411, metadata !1391}
!1411 = metadata !{i32 786443, metadata !1, metadata !1119, i32 111, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1412 = metadata !{i32 113, i32 0, metadata !1413, metadata !1391}
!1413 = metadata !{i32 786443, metadata !1, metadata !1411, i32 113, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1414 = metadata !{i32 115, i32 0, metadata !1415, metadata !1391}
!1415 = metadata !{i32 786443, metadata !1, metadata !1416, i32 114, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1416 = metadata !{i32 786443, metadata !1, metadata !1417, i32 114, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1417 = metadata !{i32 786443, metadata !1, metadata !1413, i32 113, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1418 = metadata !{i32 114, i32 0, metadata !1416, metadata !1391}
!1419 = metadata !{i32 116, i32 0, metadata !1415, metadata !1391}
!1420 = metadata !{i32 671, i32 0, metadata !1388, null}
!1421 = metadata !{i32 673, i32 0, metadata !462, null}
!1422 = metadata !{i32 676, i32 0, metadata !462, null}
!1423 = metadata !{i32 677, i32 0, metadata !462, null}
!1424 = metadata !{i32 678, i32 0, metadata !462, null}
!1425 = metadata !{i32 679, i32 0, metadata !1426, null}
!1426 = metadata !{i32 786443, metadata !1, metadata !462, i32 678, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1427 = metadata !{i32 680, i32 0, metadata !1426, null}
!1428 = metadata !{i32 682, i32 0, metadata !1426, null}
!1429 = metadata !{i32 683, i32 0, metadata !1426, null}
!1430 = metadata !{i32 689, i32 0, metadata !462, null}
!1431 = metadata !{i32 688, i32 0, metadata !462, null}
!1432 = metadata !{i32 692, i32 0, metadata !462, null}
!1433 = metadata !{i32 693, i32 0, metadata !462, null}
!1434 = metadata !{i32 694, i32 0, metadata !462, null}
!1435 = metadata !{i32 786689, metadata !1103, metadata !"log", metadata !249, i32 16777667, metadata !364, i32 0, metadata !1436} ; [ DW_TAG_arg_variable ] [log] [line 451]
!1436 = metadata !{i32 695, i32 0, metadata !462, null}
!1437 = metadata !{i32 451, i32 0, metadata !1103, metadata !1436}
!1438 = metadata !{i32 786689, metadata !1103, metadata !"fr", metadata !249, i32 33554883, metadata !252, i32 0, metadata !1436} ; [ DW_TAG_arg_variable ] [fr] [line 451]
!1439 = metadata !{i32 786689, metadata !1103, metadata !"mdatoms", metadata !249, i32 50332099, metadata !429, i32 0, metadata !1436} ; [ DW_TAG_arg_variable ] [mdatoms] [line 451]
!1440 = metadata !{i32 458, i32 0, metadata !1103, metadata !1436}
!1441 = metadata !{i32 459, i32 0, metadata !1103, metadata !1436}
!1442 = metadata !{i32 460, i32 0, metadata !1103, metadata !1436}
!1443 = metadata !{i32 786688, metadata !1103, metadata !"nbfp", metadata !249, i32 455, metadata !279, i32 0, metadata !1436} ; [ DW_TAG_auto_variable ] [nbfp] [line 455]
!1444 = metadata !{i32 461, i32 0, metadata !1103, metadata !1436}
!1445 = metadata !{i32 786688, metadata !1103, metadata !"ntypes", metadata !249, i32 453, metadata !258, i32 0, metadata !1436} ; [ DW_TAG_auto_variable ] [ntypes] [line 453]
!1446 = metadata !{i32 462, i32 0, metadata !1103, metadata !1436}
!1447 = metadata !{i32 786688, metadata !1103, metadata !"type", metadata !249, i32 453, metadata !310, i32 0, metadata !1436} ; [ DW_TAG_auto_variable ] [type] [line 453]
!1448 = metadata !{i32 463, i32 0, metadata !1103, metadata !1436}
!1449 = metadata !{i32 786688, metadata !1103, metadata !"natoms", metadata !249, i32 453, metadata !258, i32 0, metadata !1436} ; [ DW_TAG_auto_variable ] [natoms] [line 453]
!1450 = metadata !{float -1.000000e+00}
!1451 = metadata !{i32 786688, metadata !1103, metadata !"bmin", metadata !249, i32 454, metadata !260, i32 0, metadata !1436} ; [ DW_TAG_auto_variable ] [bmin] [line 454]
!1452 = metadata !{i32 465, i32 0, metadata !1103, metadata !1436}
!1453 = metadata !{i32 1}
!1454 = metadata !{i32 786688, metadata !1103, metadata !"first", metadata !249, i32 456, metadata !258, i32 0, metadata !1436} ; [ DW_TAG_auto_variable ] [first] [line 456]
!1455 = metadata !{i32 466, i32 0, metadata !1103, metadata !1436}
!1456 = metadata !{i32 468, i32 0, metadata !1103, metadata !1436}
!1457 = metadata !{i32 786688, metadata !1103, metadata !"i", metadata !249, i32 453, metadata !258, i32 0, metadata !1436} ; [ DW_TAG_auto_variable ] [i] [line 453]
!1458 = metadata !{i32 469, i32 0, metadata !1459, metadata !1436}
!1459 = metadata !{i32 786443, metadata !1, metadata !1103, i32 469, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1460 = metadata !{i32 470, i32 0, metadata !1461, metadata !1436}
!1461 = metadata !{i32 786443, metadata !1, metadata !1459, i32 469, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1462 = metadata !{i32 786688, metadata !1103, metadata !"tpi", metadata !249, i32 453, metadata !258, i32 0, metadata !1436} ; [ DW_TAG_auto_variable ] [tpi] [line 453]
!1463 = metadata !{i32 471, i32 0, metadata !1461, metadata !1436}
!1464 = metadata !{i32 472, i32 0, metadata !1461, metadata !1436}
!1465 = metadata !{i32 478, i32 0, metadata !1466, metadata !1436}
!1466 = metadata !{i32 786443, metadata !1, metadata !1467, i32 474, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1467 = metadata !{i32 786443, metadata !1, metadata !1461, i32 474, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1468 = metadata !{i32 474, i32 0, metadata !1467, metadata !1436}
!1469 = metadata !{i32 475, i32 0, metadata !1466, metadata !1436}
!1470 = metadata !{i32 786688, metadata !1103, metadata !"tpj", metadata !249, i32 453, metadata !258, i32 0, metadata !1436} ; [ DW_TAG_auto_variable ] [tpj] [line 453]
!1471 = metadata !{i32 476, i32 0, metadata !1466, metadata !1436}
!1472 = metadata !{i32 477, i32 0, metadata !1466, metadata !1436}
!1473 = metadata !{i32 786688, metadata !1103, metadata !"b", metadata !249, i32 454, metadata !260, i32 0, metadata !1436} ; [ DW_TAG_auto_variable ] [b] [line 454]
!1474 = metadata !{i32 479, i32 0, metadata !1466, metadata !1436}
!1475 = metadata !{i32 480, i32 0, metadata !1466, metadata !1436}
!1476 = metadata !{i32 481, i32 0, metadata !1466, metadata !1436}
!1477 = metadata !{i32 483, i32 0, metadata !1478, metadata !1436}
!1478 = metadata !{i32 786443, metadata !1, metadata !1466, i32 482, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1479 = metadata !{i32 484, i32 0, metadata !1478, metadata !1436}
!1480 = metadata !{i32 488, i32 0, metadata !1103, metadata !1436}
!1481 = metadata !{i32 489, i32 0, metadata !1103, metadata !1436}
!1482 = metadata !{i32 698, i32 0, metadata !462, null}
!1483 = metadata !{i32 716, i32 0, metadata !462, null}
!1484 = metadata !{i32 717, i32 0, metadata !864, null}
!1485 = metadata !{i32 723, i32 0, metadata !863, null}
!1486 = metadata !{i32 724, i32 0, metadata !863, null}
!1487 = metadata !{i32 725, i32 0, metadata !863, null}
!1488 = metadata !{i32 726, i32 0, metadata !863, null}
!1489 = metadata !{i32 727, i32 0, metadata !863, null}
!1490 = metadata !{i32 728, i32 0, metadata !863, null}
!1491 = metadata !{i32 729, i32 0, metadata !863, null}
!1492 = metadata !{i32 730, i32 0, metadata !863, null}
!1493 = metadata !{i32 731, i32 0, metadata !863, null}
!1494 = metadata !{i32 732, i32 0, metadata !863, null}
!1495 = metadata !{i32 733, i32 0, metadata !863, null}
!1496 = metadata !{i32 734, i32 0, metadata !864, null}
!1497 = metadata !{i32 735, i32 0, metadata !864, null}
!1498 = metadata !{i32 736, i32 0, metadata !462, null}
!1499 = metadata !{i32 737, i32 0, metadata !868, null}
!1500 = metadata !{null}
!1501 = metadata !{i32 738, i32 0, metadata !867, null}
!1502 = metadata !{i32 739, i32 0, metadata !867, null}
!1503 = metadata !{i8* null}
!1504 = metadata !{i32 741, i32 0, metadata !867, null}
!1505 = metadata !{i32 749, i32 0, metadata !867, null}
!1506 = metadata !{i32 750, i32 0, metadata !867, null}
!1507 = metadata !{i32 755, i32 0, metadata !868, null}
!1508 = metadata !{i32 758, i32 0, metadata !462, null}
!1509 = metadata !{i32 761, i32 0, metadata !462, null}
!1510 = metadata !{i32 762, i32 0, metadata !462, null}
!1511 = metadata !{i32 763, i32 0, metadata !462, null}
!1512 = metadata !{i32 768, i32 0, metadata !462, null}
!1513 = metadata !{i32 769, i32 0, metadata !462, null}
!1514 = metadata !{i32 770, i32 0, metadata !462, null}
!1515 = metadata !{i32 771, i32 0, metadata !1516, null}
!1516 = metadata !{i32 786443, metadata !1, metadata !462, i32 771, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1517 = metadata !{i32 773, i32 0, metadata !1518, null}
!1518 = metadata !{i32 786443, metadata !1, metadata !1519, i32 772, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1519 = metadata !{i32 786443, metadata !1, metadata !1516, i32 771, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1520 = metadata !{i32 774, i32 0, metadata !1521, null}
!1521 = metadata !{i32 786443, metadata !1, metadata !1519, i32 774, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1522 = metadata !{i32 772, i32 0, metadata !1518, null}
!1523 = metadata !{i32 775, i32 0, metadata !1521, null}
!1524 = metadata !{i32 777, i32 0, metadata !462, null}
!1525 = metadata !{i32 786689, metadata !1068, metadata !"fp", metadata !249, i32 16777339, metadata !364, i32 0, metadata !1526} ; [ DW_TAG_arg_variable ] [fp] [line 123]
!1526 = metadata !{i32 778, i32 0, metadata !462, null}
!1527 = metadata !{i32 123, i32 0, metadata !1068, metadata !1526}
!1528 = metadata !{i32 786689, metadata !1068, metadata !"top", metadata !249, i32 33554555, metadata !579, i32 0, metadata !1526} ; [ DW_TAG_arg_variable ] [top] [line 123]
!1529 = metadata !{i32 786689, metadata !1068, metadata !"fr", metadata !249, i32 50331771, metadata !252, i32 0, metadata !1526} ; [ DW_TAG_arg_variable ] [fr] [line 123]
!1530 = metadata !{i32 786689, metadata !1068, metadata !"md", metadata !249, i32 67108988, metadata !429, i32 0, metadata !1526} ; [ DW_TAG_arg_variable ] [md] [line 124]
!1531 = metadata !{i32 124, i32 0, metadata !1068, metadata !1526}
!1532 = metadata !{i32 786689, metadata !1068, metadata !"nsb", metadata !249, i32 83886204, metadata !816, i32 0, metadata !1526} ; [ DW_TAG_arg_variable ] [nsb] [line 124]
!1533 = metadata !{i32 138, i32 0, metadata !1078, metadata !1526}
!1534 = metadata !{i32 786688, metadata !1078, metadata !"cgs", metadata !249, i32 130, metadata !858, i32 0, metadata !1526} ; [ DW_TAG_auto_variable ] [cgs] [line 130]
!1535 = metadata !{i32 142, i32 0, metadata !1078, metadata !1526}
!1536 = metadata !{i32 143, i32 0, metadata !1078, metadata !1526}
!1537 = metadata !{i32 144, i32 0, metadata !1078, metadata !1526}
!1538 = metadata !{i32 145, i32 0, metadata !1078, metadata !1526}
!1539 = metadata !{i32 148, i32 0, metadata !1078, metadata !1526}
!1540 = metadata !{i32 786688, metadata !1078, metadata !"cgid", metadata !249, i32 131, metadata !330, i32 0, metadata !1526} ; [ DW_TAG_auto_variable ] [cgid] [line 131]
!1541 = metadata !{i32 786688, metadata !1078, metadata !"warncount", metadata !249, i32 133, metadata !258, i32 0, metadata !1526} ; [ DW_TAG_auto_variable ] [warncount] [line 133]
!1542 = metadata !{i32 150, i32 0, metadata !1078, metadata !1526}
!1543 = metadata !{i32 154, i32 0, metadata !1078, metadata !1526}
!1544 = metadata !{i32 153, i32 0, metadata !1078, metadata !1526}
!1545 = metadata !{i32 156, i32 0, metadata !1546, metadata !1526}
!1546 = metadata !{i32 786443, metadata !1, metadata !1078, i32 156, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1547 = metadata !{i32 160, i32 0, metadata !1548, metadata !1526}
!1548 = metadata !{i32 786443, metadata !1, metadata !1546, i32 156, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1549 = metadata !{i32 295, i32 0, metadata !1550, metadata !1526}
!1550 = metadata !{i32 786443, metadata !1, metadata !1551, i32 294, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1551 = metadata !{i32 786443, metadata !1, metadata !1552, i32 294, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1552 = metadata !{i32 786443, metadata !1, metadata !1548, i32 292, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1553 = metadata !{i32 234, i32 0, metadata !1554, metadata !1526}
!1554 = metadata !{i32 786443, metadata !1, metadata !1555, i32 189, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1555 = metadata !{i32 786443, metadata !1, metadata !1548, i32 166, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1556 = metadata !{i32 278, i32 0, metadata !1557, metadata !1526}
!1557 = metadata !{i32 786443, metadata !1, metadata !1554, i32 277, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1558 = metadata !{i32 261, i32 0, metadata !1559, metadata !1526}
!1559 = metadata !{i32 786443, metadata !1, metadata !1560, i32 259, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1560 = metadata !{i32 786443, metadata !1, metadata !1561, i32 254, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1561 = metadata !{i32 786443, metadata !1, metadata !1554, i32 236, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1562 = metadata !{i32 201, i32 0, metadata !1563, metadata !1526}
!1563 = metadata !{i32 786443, metadata !1, metadata !1564, i32 201, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1564 = metadata !{i32 786443, metadata !1, metadata !1565, i32 192, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1565 = metadata !{i32 786443, metadata !1, metadata !1554, i32 192, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1566 = metadata !{i32 178, i32 0, metadata !1567, metadata !1526}
!1567 = metadata !{i32 786443, metadata !1, metadata !1568, i32 178, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1568 = metadata !{i32 786443, metadata !1, metadata !1569, i32 171, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1569 = metadata !{i32 786443, metadata !1, metadata !1555, i32 171, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1570 = metadata !{i32 179, i32 0, metadata !1571, metadata !1526}
!1571 = metadata !{i32 786443, metadata !1, metadata !1567, i32 178, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1572 = metadata !{i32 294, i32 0, metadata !1551, metadata !1526}
!1573 = metadata !{i32 786688, metadata !1078, metadata !"bOneCG", metadata !249, i32 134, metadata !258, i32 0, metadata !1526} ; [ DW_TAG_auto_variable ] [bOneCG] [line 134]
!1574 = metadata !{i32 158, i32 0, metadata !1548, metadata !1526}
!1575 = metadata !{i32 786688, metadata !1078, metadata !"j0", metadata !249, i32 132, metadata !258, i32 0, metadata !1526} ; [ DW_TAG_auto_variable ] [j0] [line 132]
!1576 = metadata !{i32 161, i32 0, metadata !1548, metadata !1526}
!1577 = metadata !{i32 786688, metadata !1078, metadata !"j1", metadata !249, i32 132, metadata !258, i32 0, metadata !1526} ; [ DW_TAG_auto_variable ] [j1] [line 132]
!1578 = metadata !{i32 162, i32 0, metadata !1548, metadata !1526}
!1579 = metadata !{i32 786688, metadata !1078, metadata !"nj", metadata !249, i32 132, metadata !258, i32 0, metadata !1526} ; [ DW_TAG_auto_variable ] [nj] [line 132]
!1580 = metadata !{i32 163, i32 0, metadata !1581, metadata !1526}
!1581 = metadata !{i32 786443, metadata !1, metadata !1548, i32 163, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1582 = metadata !{i32 164, i32 0, metadata !1583, metadata !1526}
!1583 = metadata !{i32 786443, metadata !1, metadata !1581, i32 163, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1584 = metadata !{i32 134, i32 0, metadata !1078, metadata !1526}
!1585 = metadata !{i32 166, i32 0, metadata !1548, metadata !1526}
!1586 = metadata !{i32 168, i32 0, metadata !1555, metadata !1526}
!1587 = metadata !{i32 786688, metadata !1078, metadata !"bAllExcl", metadata !249, i32 135, metadata !310, i32 0, metadata !1526} ; [ DW_TAG_auto_variable ] [bAllExcl] [line 135]
!1588 = metadata !{i32 786688, metadata !1078, metadata !"bAE", metadata !249, i32 135, metadata !258, i32 0, metadata !1526} ; [ DW_TAG_auto_variable ] [bAE] [line 135]
!1589 = metadata !{i32 169, i32 0, metadata !1555, metadata !1526}
!1590 = metadata !{i32 786688, metadata !1078, metadata !"j", metadata !249, i32 132, metadata !258, i32 0, metadata !1526} ; [ DW_TAG_auto_variable ] [j] [line 132]
!1591 = metadata !{i32 171, i32 0, metadata !1569, metadata !1526}
!1592 = metadata !{i32 175, i32 0, metadata !1593, metadata !1526}
!1593 = metadata !{i32 786443, metadata !1, metadata !1568, i32 175, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1594 = metadata !{i32 176, i32 0, metadata !1593, metadata !1526}
!1595 = metadata !{i32 786688, metadata !1078, metadata !"k", metadata !249, i32 132, metadata !258, i32 0, metadata !1526} ; [ DW_TAG_auto_variable ] [k] [line 132]
!1596 = metadata !{i32 786688, metadata !1078, metadata !"ak", metadata !249, i32 132, metadata !258, i32 0, metadata !1526} ; [ DW_TAG_auto_variable ] [ak] [line 132]
!1597 = metadata !{i32 181, i32 0, metadata !1571, metadata !1526}
!1598 = metadata !{i32 182, i32 0, metadata !1571, metadata !1526}
!1599 = metadata !{i32 183, i32 0, metadata !1571, metadata !1526}
!1600 = metadata !{i32 186, i32 0, metadata !1601, metadata !1526}
!1601 = metadata !{i32 786443, metadata !1, metadata !1568, i32 186, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1602 = metadata !{i32 187, i32 0, metadata !1601, metadata !1526}
!1603 = metadata !{i32 135, i32 0, metadata !1078, metadata !1526}
!1604 = metadata !{i32 189, i32 0, metadata !1555, metadata !1526}
!1605 = metadata !{i32 190, i32 0, metadata !1554, metadata !1526}
!1606 = metadata !{i32 786688, metadata !1078, metadata !"bHaveCoul", metadata !249, i32 136, metadata !310, i32 0, metadata !1526} ; [ DW_TAG_auto_variable ] [bHaveCoul] [line 136]
!1607 = metadata !{i32 191, i32 0, metadata !1554, metadata !1526}
!1608 = metadata !{i32 786688, metadata !1078, metadata !"bHaveLJ", metadata !249, i32 136, metadata !310, i32 0, metadata !1526} ; [ DW_TAG_auto_variable ] [bHaveLJ] [line 136]
!1609 = metadata !{i32 192, i32 0, metadata !1565, metadata !1526}
!1610 = metadata !{i32 194, i32 0, metadata !1564, metadata !1526}
!1611 = metadata !{i32 231, i32 0, metadata !1554, metadata !1526}
!1612 = metadata !{i32 195, i32 0, metadata !1564, metadata !1526}
!1613 = metadata !{i32 786688, metadata !1078, metadata !"aj", metadata !249, i32 132, metadata !258, i32 0, metadata !1526} ; [ DW_TAG_auto_variable ] [aj] [line 132]
!1614 = metadata !{i32 196, i32 0, metadata !1564, metadata !1526}
!1615 = metadata !{i32 198, i32 0, metadata !1564, metadata !1526}
!1616 = metadata !{metadata !"short", metadata !1184}
!1617 = metadata !{i32 786688, metadata !1078, metadata !"tjA", metadata !249, i32 132, metadata !258, i32 0, metadata !1526} ; [ DW_TAG_auto_variable ] [tjA] [line 132]
!1618 = metadata !{i32 199, i32 0, metadata !1564, metadata !1526}
!1619 = metadata !{i32 786688, metadata !1078, metadata !"tjB", metadata !249, i32 132, metadata !258, i32 0, metadata !1526} ; [ DW_TAG_auto_variable ] [tjB] [line 132]
!1620 = metadata !{i32 200, i32 0, metadata !1564, metadata !1526}
!1621 = metadata !{i32 202, i32 0, metadata !1622, metadata !1526}
!1622 = metadata !{i32 786443, metadata !1, metadata !1563, i32 201, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1623 = metadata !{i32 203, i32 0, metadata !1622, metadata !1526}
!1624 = metadata !{i32 204, i32 0, metadata !1622, metadata !1526}
!1625 = metadata !{i32 205, i32 0, metadata !1622, metadata !1526}
!1626 = metadata !{i32 206, i32 0, metadata !1622, metadata !1526}
!1627 = metadata !{i32 207, i32 0, metadata !1622, metadata !1526}
!1628 = metadata !{i32 208, i32 0, metadata !1622, metadata !1526}
!1629 = metadata !{i32 209, i32 0, metadata !1622, metadata !1526}
!1630 = metadata !{i32 211, i32 0, metadata !1622, metadata !1526}
!1631 = metadata !{i32 212, i32 0, metadata !1622, metadata !1526}
!1632 = metadata !{i32 213, i32 0, metadata !1622, metadata !1526}
!1633 = metadata !{i32 214, i32 0, metadata !1622, metadata !1526}
!1634 = metadata !{i32 215, i32 0, metadata !1622, metadata !1526}
!1635 = metadata !{i32 232, i32 0, metadata !1554, metadata !1526}
!1636 = metadata !{i32 241, i32 0, metadata !1637, metadata !1526}
!1637 = metadata !{i32 786443, metadata !1, metadata !1561, i32 241, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1638 = metadata !{i32 235, i32 0, metadata !1554, metadata !1526}
!1639 = metadata !{i32 244, i32 0, metadata !1640, metadata !1526}
!1640 = metadata !{i32 786443, metadata !1, metadata !1561, i32 244, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1641 = metadata !{i32 247, i32 0, metadata !1642, metadata !1526}
!1642 = metadata !{i32 786443, metadata !1, metadata !1561, i32 247, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1643 = metadata !{i32 252, i32 0, metadata !1644, metadata !1526}
!1644 = metadata !{i32 786443, metadata !1, metadata !1561, i32 252, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1645 = metadata !{i32 253, i32 0, metadata !1644, metadata !1526}
!1646 = metadata !{i32 254, i32 0, metadata !1561, metadata !1526}
!1647 = metadata !{i32 259, i32 0, metadata !1560, metadata !1526}
!1648 = metadata !{i32 260, i32 0, metadata !1559, metadata !1526}
!1649 = metadata !{i32 262, i32 0, metadata !1559, metadata !1526}
!1650 = metadata !{i32 264, i32 0, metadata !1559, metadata !1526}
!1651 = metadata !{i32 265, i32 0, metadata !1559, metadata !1526}
!1652 = metadata !{i32 269, i32 0, metadata !1561, metadata !1526}
!1653 = metadata !{i32 270, i32 0, metadata !1561, metadata !1526}
!1654 = metadata !{i32 271, i32 0, metadata !1561, metadata !1526}
!1655 = metadata !{i32 272, i32 0, metadata !1561, metadata !1526}
!1656 = metadata !{i32 277, i32 0, metadata !1557, metadata !1526}
!1657 = metadata !{i32 279, i32 0, metadata !1557, metadata !1526}
!1658 = metadata !{i32 281, i32 0, metadata !1554, metadata !1526}
!1659 = metadata !{i32 282, i32 0, metadata !1554, metadata !1526}
!1660 = metadata !{i32 283, i32 0, metadata !1554, metadata !1526}
!1661 = metadata !{i32 288, i32 0, metadata !1662, metadata !1526}
!1662 = metadata !{i32 786443, metadata !1, metadata !1555, i32 284, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1663 = metadata !{i32 290, i32 0, metadata !1555, metadata !1526}
!1664 = metadata !{i32 299, i32 0, metadata !1078, metadata !1526}
!1665 = metadata !{i32 300, i32 0, metadata !1666, metadata !1526}
!1666 = metadata !{i32 786443, metadata !1, metadata !1667, i32 300, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1667 = metadata !{i32 786443, metadata !1, metadata !1078, i32 299, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1668 = metadata !{i32 301, i32 0, metadata !1666, metadata !1526}
!1669 = metadata !{i32 306, i32 0, metadata !1078, metadata !1526}
!1670 = metadata !{i32 307, i32 0, metadata !1078, metadata !1526}
!1671 = metadata !{i32 786688, metadata !1078, metadata !"m", metadata !249, i32 132, metadata !258, i32 0, metadata !1526} ; [ DW_TAG_auto_variable ] [m] [line 132]
!1672 = metadata !{i32 308, i32 0, metadata !1673, metadata !1526}
!1673 = metadata !{i32 786443, metadata !1, metadata !1078, i32 308, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1674 = metadata !{i32 310, i32 0, metadata !1675, metadata !1526}
!1675 = metadata !{i32 786443, metadata !1, metadata !1078, i32 310, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1676 = metadata !{i32 311, i32 0, metadata !1677, metadata !1526}
!1677 = metadata !{i32 786443, metadata !1, metadata !1675, i32 310, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1678 = metadata !{i32 312, i32 0, metadata !1677, metadata !1526}
!1679 = metadata !{i32 313, i32 0, metadata !1680, metadata !1526}
!1680 = metadata !{i32 786443, metadata !1, metadata !1677, i32 312, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1681 = metadata !{i32 314, i32 0, metadata !1682, metadata !1526}
!1682 = metadata !{i32 786443, metadata !1, metadata !1680, i32 313, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1683 = metadata !{i32 315, i32 0, metadata !1684, metadata !1526}
!1684 = metadata !{i32 786443, metadata !1, metadata !1682, i32 315, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1685 = metadata !{i32 316, i32 0, metadata !1684, metadata !1526}
!1686 = metadata !{i32 319, i32 0, metadata !1680, metadata !1526}
!1687 = metadata !{i32 322, i32 0, metadata !1078, metadata !1526}
!1688 = metadata !{i32 324, i32 0, metadata !1689, metadata !1526}
!1689 = metadata !{i32 786443, metadata !1, metadata !1078, i32 323, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1690 = metadata !{i32 323, i32 0, metadata !1689, metadata !1526}
!1691 = metadata !{i32 326, i32 0, metadata !1078, metadata !1526}
!1692 = metadata !{i32 328, i32 0, metadata !1078, metadata !1526}
!1693 = metadata !{i32 329, i32 0, metadata !1694, metadata !1526}
!1694 = metadata !{i32 786443, metadata !1, metadata !1078, i32 328, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1695 = metadata !{i32 331, i32 0, metadata !1694, metadata !1526}
!1696 = metadata !{i32 332, i32 0, metadata !1694, metadata !1526}
!1697 = metadata !{i32 334, i32 0, metadata !1694, metadata !1526}
!1698 = metadata !{i32 336, i32 0, metadata !1694, metadata !1526}
!1699 = metadata !{i32 779, i32 0, metadata !462, null}
!1700 = metadata !{i32 785, i32 0, metadata !870, null}
!1701 = metadata !{i32 787, i32 0, metadata !870, null}
!1702 = metadata !{i32 788, i32 0, metadata !870, null}
!1703 = metadata !{i32 789, i32 0, metadata !870, null}
!1704 = metadata !{i32 790, i32 0, metadata !870, null}
!1705 = metadata !{i32 791, i32 0, metadata !870, null}
!1706 = metadata !{i32 792, i32 0, metadata !870, null}
!1707 = metadata !{i32 795, i32 0, metadata !870, null}
!1708 = metadata !{i32 796, i32 0, metadata !870, null}
!1709 = metadata !{i32 797, i32 0, metadata !1710, null}
!1710 = metadata !{i32 786443, metadata !1, metadata !870, i32 796, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1711 = metadata !{i32 798, i32 0, metadata !1710, null}
!1712 = metadata !{i32 799, i32 0, metadata !1710, null}
!1713 = metadata !{i32 801, i32 0, metadata !870, null}
!1714 = metadata !{i32 802, i32 0, metadata !870, null}
!1715 = metadata !{i32 804, i32 0, metadata !870, null}
!1716 = metadata !{i32 805, i32 0, metadata !870, null}
!1717 = metadata !{i32 807, i32 0, metadata !877, null}
!1718 = metadata !{i32 808, i32 0, metadata !877, null}
!1719 = metadata !{i32 809, i32 0, metadata !877, null}
!1720 = metadata !{i32 810, i32 0, metadata !877, null}
!1721 = metadata !{i32 811, i32 0, metadata !877, null}
!1722 = metadata !{i32 812, i32 0, metadata !877, null}
!1723 = metadata !{i32 813, i32 0, metadata !877, null}
!1724 = metadata !{i32 814, i32 0, metadata !877, null}
!1725 = metadata !{i32 815, i32 0, metadata !877, null}
!1726 = metadata !{i32 816, i32 0, metadata !877, null}
!1727 = metadata !{i32 817, i32 0, metadata !877, null}
!1728 = metadata !{i32 818, i32 0, metadata !877, null}
!1729 = metadata !{i32 819, i32 0, metadata !877, null}
!1730 = metadata !{i32 820, i32 0, metadata !877, null}
!1731 = metadata !{i32 821, i32 0, metadata !877, null}
!1732 = metadata !{i32 828, i32 0, metadata !877, null}
!1733 = metadata !{i32 830, i32 0, metadata !1734, null}
!1734 = metadata !{i32 786443, metadata !1, metadata !877, i32 828, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1735 = metadata !{i32 840, i32 0, metadata !1734, null}
!1736 = metadata !{i32 843, i32 0, metadata !1734, null}
!1737 = metadata !{i32 845, i32 0, metadata !877, null}
!1738 = metadata !{i32 846, i32 0, metadata !877, null}
!1739 = metadata !{i32 852, i32 0, metadata !877, null}
!1740 = metadata !{i32 853, i32 0, metadata !877, null}
!1741 = metadata !{i32 855, i32 0, metadata !877, null}
!1742 = metadata !{i32 856, i32 0, metadata !877, null}
!1743 = metadata !{i32 858, i32 0, metadata !877, null}
!1744 = metadata !{i32 860, i32 0, metadata !877, null}
!1745 = metadata !{i32 861, i32 0, metadata !877, null}
!1746 = metadata !{i32 870, i32 0, metadata !877, null}
!1747 = metadata !{i32 872, i32 0, metadata !948, null}
!1748 = metadata !{i32 873, i32 0, metadata !948, null}
!1749 = metadata !{i32 874, i32 0, metadata !948, null}
!1750 = metadata !{i32 875, i32 0, metadata !948, null}
!1751 = metadata !{i32 876, i32 0, metadata !948, null}
!1752 = metadata !{i32 877, i32 0, metadata !948, null}
!1753 = metadata !{i32 878, i32 0, metadata !948, null}
!1754 = metadata !{i32 879, i32 0, metadata !948, null}
!1755 = metadata !{i32 880, i32 0, metadata !948, null}
!1756 = metadata !{i32 881, i32 0, metadata !948, null}
!1757 = metadata !{i32 882, i32 0, metadata !948, null}
!1758 = metadata !{i32 883, i32 0, metadata !948, null}
!1759 = metadata !{i32 884, i32 0, metadata !948, null}
!1760 = metadata !{i32 885, i32 0, metadata !948, null}
!1761 = metadata !{i32 887, i32 0, metadata !948, null}
!1762 = metadata !{i32 889, i32 0, metadata !948, null}
!1763 = metadata !{i32 890, i32 0, metadata !948, null}
!1764 = metadata !{i32 893, i32 0, metadata !1765, null}
!1765 = metadata !{i32 786443, metadata !1, metadata !948, i32 893, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1766 = metadata !{i32 894, i32 0, metadata !1765, null}
!1767 = metadata !{i32 896, i32 0, metadata !948, null}
!1768 = metadata !{null}
!1769 = metadata !{i32 786689, metadata !1058, metadata !"file", metadata !1060, i32 50332235, metadata !371, i32 0, metadata !1767} ; [ DW_TAG_arg_variable ] [file] [line 587]
!1770 = metadata !{i32 587, i32 0, metadata !1058, metadata !1767}
!1771 = metadata !{i32 896}
!1772 = metadata !{i32 786689, metadata !1058, metadata !"line", metadata !1060, i32 67109451, metadata !258, i32 0, metadata !1767} ; [ DW_TAG_arg_variable ] [line] [line 587]
!1773 = metadata !{i32 591, i32 0, metadata !1774, metadata !1767}
!1774 = metadata !{i32 786443, metadata !1059, metadata !1058} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!1775 = metadata !{i32 898, i32 0, metadata !948, null}
!1776 = metadata !{i32 900, i32 0, metadata !1777, null}
!1777 = metadata !{i32 786443, metadata !1, metadata !948, i32 899, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1778 = metadata !{i32 899, i32 0, metadata !1777, null}
!1779 = metadata !{i32 904, i32 0, metadata !948, null}
!1780 = metadata !{i32 910, i32 0, metadata !948, null}
!1781 = metadata !{i32 911, i32 0, metadata !948, null}
!1782 = metadata !{i32 921, i32 0, metadata !948, null}
!1783 = metadata !{i32 922, i32 0, metadata !1784, null}
!1784 = metadata !{i32 786443, metadata !1, metadata !948, i32 921, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1785 = metadata !{i32 932, i32 0, metadata !1784, null}
!1786 = metadata !{i32 933, i32 0, metadata !1784, null}
!1787 = metadata !{metadata !"double", metadata !1184}
!1788 = metadata !{i32 935, i32 0, metadata !1784, null}
!1789 = metadata !{i32 939, i32 0, metadata !948, null}
!1790 = metadata !{i32 940, i32 0, metadata !1791, null}
!1791 = metadata !{i32 786443, metadata !1, metadata !948, i32 939, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1792 = metadata !{i32 942, i32 0, metadata !1793, null}
!1793 = metadata !{i32 786443, metadata !1, metadata !1791, i32 940, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1794 = metadata !{i32 944, i32 0, metadata !1793, null}
!1795 = metadata !{i32 946, i32 0, metadata !1793, null}
!1796 = metadata !{i32 948, i32 0, metadata !1793, null}
!1797 = metadata !{i32 950, i32 0, metadata !1793, null}
!1798 = metadata !{i32 952, i32 0, metadata !1793, null}
!1799 = metadata !{i32 954, i32 0, metadata !1793, null}
!1800 = metadata !{i32 956, i32 0, metadata !1793, null}
!1801 = metadata !{i32 958, i32 0, metadata !1793, null}
!1802 = metadata !{i32 959, i32 0, metadata !1793, null}
!1803 = metadata !{i32 964, i32 0, metadata !1791, null}
!1804 = metadata !{i32 961, i32 0, metadata !1793, null}
!1805 = metadata !{i32 962, i32 0, metadata !1791, null}
!1806 = metadata !{i32 967, i32 0, metadata !1791, null}
!1807 = metadata !{i32 968, i32 0, metadata !1791, null}
!1808 = metadata !{i32 969, i32 0, metadata !1791, null}
!1809 = metadata !{i32 970, i32 0, metadata !1791, null}
!1810 = metadata !{i32 972, i32 0, metadata !1791, null}
!1811 = metadata !{i32 973, i32 0, metadata !1812, null}
!1812 = metadata !{i32 786443, metadata !1, metadata !1791, i32 972, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1813 = metadata !{i32 974, i32 0, metadata !1812, null}
!1814 = metadata !{i32 975, i32 0, metadata !1812, null}
!1815 = metadata !{i32 979, i32 0, metadata !948, null}
!1816 = metadata !{i32 980, i32 0, metadata !948, null}
!1817 = metadata !{i32 983, i32 0, metadata !948, null}
!1818 = metadata !{i32 984, i32 0, metadata !1819, null}
!1819 = metadata !{i32 786443, metadata !1, metadata !948, i32 983, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1820 = metadata !{i32 987, i32 0, metadata !1819, null}
!1821 = metadata !{i32 989, i32 0, metadata !1819, null}
!1822 = metadata !{i32 990, i32 0, metadata !948, null}
!1823 = metadata !{i32 991, i32 0, metadata !948, null}
!1824 = metadata !{i32 995, i32 0, metadata !1825, null}
!1825 = metadata !{i32 786443, metadata !1, metadata !948, i32 993, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/force.c]
!1826 = metadata !{i32 993, i32 0, metadata !1825, null}
!1827 = metadata !{i32 994, i32 0, metadata !1825, null}
!1828 = metadata !{i32 996, i32 0, metadata !948, null}
