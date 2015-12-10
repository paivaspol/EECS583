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
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !852), !dbg !1236
  call void @llvm.dbg.value(metadata !{i32 %nfile}, i64 0, metadata !853), !dbg !1236
  call void @llvm.dbg.value(metadata !{%struct.t_filenm* %fnm}, i64 0, metadata !854), !dbg !1236
  call void @llvm.dbg.value(metadata !{%struct.t_parm* %parm}, i64 0, metadata !855), !dbg !1237
  call void @llvm.dbg.value(metadata !{%struct.t_topology* %top}, i64 0, metadata !856), !dbg !1237
  call void @llvm.dbg.value(metadata !{%struct.t_groups* %grps}, i64 0, metadata !857), !dbg !1238
  call void @llvm.dbg.value(metadata !{%struct.t_nsborder* %nsb}, i64 0, metadata !858), !dbg !1238
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !859), !dbg !1239
  call void @llvm.dbg.value(metadata !{[3 x float]* %grad}, i64 0, metadata !860), !dbg !1239
  call void @llvm.dbg.value(metadata !{[3 x float]* %buf}, i64 0, metadata !861), !dbg !1239
  call void @llvm.dbg.value(metadata !{%struct.t_mdatoms* %mdatoms}, i64 0, metadata !862), !dbg !1239
  call void @llvm.dbg.value(metadata !{[3 x float]* %ekin}, i64 0, metadata !863), !dbg !1240
  call void @llvm.dbg.value(metadata !{float* %ener}, i64 0, metadata !864), !dbg !1240
  call void @llvm.dbg.value(metadata !{%struct.t_fcdata* %fcd}, i64 0, metadata !865), !dbg !1240
  call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %nrnb}, i64 0, metadata !866), !dbg !1240
  call void @llvm.dbg.value(metadata !{i32 %bVerbose}, i64 0, metadata !867), !dbg !1241
  call void @llvm.dbg.value(metadata !{i32 %bDummies}, i64 0, metadata !868), !dbg !1241
  call void @llvm.dbg.value(metadata !{%struct.t_comm_dummies* %dummycomm}, i64 0, metadata !869), !dbg !1241
  call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !870), !dbg !1242
  call void @llvm.dbg.value(metadata !{%struct.t_commrec* %mcr}, i64 0, metadata !871), !dbg !1242
  call void @llvm.dbg.value(metadata !{%struct.t_graph* %graph}, i64 0, metadata !872), !dbg !1242
  call void @llvm.dbg.value(metadata !{%struct.t_forcerec* %fr}, i64 0, metadata !873), !dbg !1243
  call void @llvm.dbg.value(metadata !{float* %box_size}, i64 0, metadata !874), !dbg !1243
  call void @llvm.dbg.declare(metadata !{double* %gpa}, metadata !875), !dbg !1244
  call void @llvm.dbg.declare(metadata !{double* %gpb}, metadata !876), !dbg !1244
  call void @llvm.dbg.declare(metadata !{float* %lambda}, metadata !877), !dbg !1245
  call void @llvm.dbg.value(metadata !1246, i64 0, metadata !888), !dbg !1247
  call void @llvm.dbg.value(metadata !1246, i64 0, metadata !889), !dbg !1247
  call void @llvm.dbg.value(metadata !1246, i64 0, metadata !890), !dbg !1247
  call void @llvm.dbg.value(metadata !1246, i64 0, metadata !892), !dbg !1247
  call void @llvm.dbg.declare(metadata !{%struct.t_vcm** %vcm}, metadata !896), !dbg !1248
  %0 = bitcast %struct.t_nrnb* %mynrnb to i8*, !dbg !1249
  call void @llvm.lifetime.start(i64 1032, i8* %0) #2, !dbg !1249
  call void @llvm.dbg.declare(metadata !{%struct.t_nrnb* %mynrnb}, metadata !954), !dbg !1249
  call void @llvm.dbg.value(metadata !1250, i64 0, metadata !955), !dbg !1251
  call void @llvm.dbg.declare(metadata !{i32* %bLR}, metadata !957), !dbg !1251
  call void @llvm.dbg.declare(metadata !{i32* %bLJLR}, metadata !958), !dbg !1251
  call void @llvm.dbg.declare(metadata !{i32* %bBHAM}, metadata !959), !dbg !1251
  call void @llvm.dbg.declare(metadata !{i32* %b14}, metadata !960), !dbg !1251
  call void @llvm.dbg.declare(metadata !{[3 x float]* %mu_tot}, metadata !963), !dbg !1252
  %1 = bitcast [3 x [3 x float]]* %force_vir to i8*, !dbg !1253
  call void @llvm.lifetime.start(i64 36, i8* %1) #2, !dbg !1253
  call void @llvm.dbg.declare(metadata !{[3 x [3 x float]]* %force_vir}, metadata !965), !dbg !1253
  %2 = bitcast [3 x [3 x float]]* %shake_vir to i8*, !dbg !1253
  call void @llvm.lifetime.start(i64 36, i8* %2) #2, !dbg !1253
  call void @llvm.dbg.declare(metadata !{[3 x [3 x float]]* %shake_vir}, metadata !966), !dbg !1253
  %3 = bitcast [3 x [3 x float]]* %pme_vir to i8*, !dbg !1253
  call void @llvm.lifetime.start(i64 36, i8* %3) #2, !dbg !1253
  call void @llvm.dbg.declare(metadata !{[3 x [3 x float]]* %pme_vir}, metadata !967), !dbg !1253
  call void @llvm.dbg.value(metadata !126, i64 0, metadata !969), !dbg !1254
  %ir = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, !dbg !1254
  %nstcgsteep = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 63, !dbg !1254
  %4 = load i32* %nstcgsteep, align 4, !dbg !1254, !tbaa !1255
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !970), !dbg !1254
  call void @llvm.dbg.value(metadata !126, i64 0, metadata !972), !dbg !1258
  call void @llvm.dbg.declare(metadata !{i32* %nfmax}, metadata !975), !dbg !1259
  call void @llvm.dbg.declare(metadata !{i32* %start}, metadata !976), !dbg !1259
  call void @llvm.dbg.declare(metadata !{i32* %end}, metadata !977), !dbg !1259
  call void @llvm.dbg.declare(metadata !{float* %terminate}, metadata !980), !dbg !1260
  call void @llvm.dbg.value(metadata !1246, i64 0, metadata !980), !dbg !1260
  store float 0.000000e+00, float* %terminate, align 4, !dbg !1260, !tbaa !1261
  %arraydecay = getelementptr inbounds [3 x float]* %mu_tot, i64 0, i64 0, !dbg !1262
  call fastcc void @init_em(%struct._IO_FILE* %log, i8* getelementptr inbounds ([20 x i8]* @.str, i64 0, i64 0), %struct.t_parm* %parm, float* %lambda, %struct.t_nrnb* %mynrnb, float* %arraydecay, float* %box_size, %struct.t_forcerec* %fr, %struct.t_mdatoms* %mdatoms, %struct.t_topology* %top, %struct.t_nsborder* %nsb, %struct.t_commrec* %cr, %struct.t_vcm** %vcm, i32* %start, i32* %end) #5, !dbg !1262
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !1263
  %5 = load i32* %nodeid, align 4, !dbg !1263, !tbaa !1255
  %call = call i64 @print_date_and_time(%struct._IO_FILE* %log, i32 %5, i8* getelementptr inbounds ([28 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !1263
  call void @llvm.dbg.value(metadata !{i64 %call}, i64 0, metadata !964), !dbg !1263
  %natoms = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3, !dbg !1264
  %6 = load i32* %natoms, align 4, !dbg !1264, !tbaa !1255
  %call1 = call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 220, i32 %6, i32 12) #6, !dbg !1264
  %7 = bitcast i8* %call1 to [3 x float]*, !dbg !1264
  call void @llvm.dbg.value(metadata !{[3 x float]* %7}, i64 0, metadata !883), !dbg !1264
  %8 = load i32* %natoms, align 4, !dbg !1265, !tbaa !1255
  %call3 = call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 221, i32 %8, i32 12) #6, !dbg !1265
  %9 = bitcast i8* %call3 to [3 x float]*, !dbg !1265
  call void @llvm.dbg.value(metadata !{[3 x float]* %9}, i64 0, metadata !884), !dbg !1265
  %10 = load i32* %natoms, align 4, !dbg !1266, !tbaa !1255
  %call5 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 222, i32 %10, i32 12) #6, !dbg !1266
  %11 = bitcast i8* %call5 to [3 x float]*, !dbg !1266
  call void @llvm.dbg.value(metadata !{[3 x float]* %11}, i64 0, metadata !885), !dbg !1266
  call void @set_pot_bools(%struct.t_inputrec* %ir, %struct.t_topology* %top, i32* %bLR, i32* %bLJLR, i32* %bBHAM, i32* %b14) #6, !dbg !1267
  %12 = load i32* %nodeid, align 4, !dbg !1268, !tbaa !1255
  %cmp = icmp eq i32 %12, 0, !dbg !1268
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1268

land.lhs.true:                                    ; preds = %entry
  %threadid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4, !dbg !1268
  %13 = load i32* %threadid, align 4, !dbg !1268, !tbaa !1255
  %cmp8 = icmp eq i32 %13, 0, !dbg !1268
  br i1 %cmp8, label %if.then, label %if.end, !dbg !1268

if.then:                                          ; preds = %land.lhs.true
  %call9 = call i8* @ftp2fn(i32 8, i32 %nfile, %struct.t_filenm* %fnm) #6, !dbg !1269
  %call10 = call i32 @open_enx(i8* %call9, i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #6, !dbg !1269
  call void @llvm.dbg.value(metadata !{i32 %call10}, i64 0, metadata !971), !dbg !1269
  br label %if.end, !dbg !1269

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %fp_ene.0 = phi i32 [ %call10, %if.then ], [ -1, %land.lhs.true ], [ -1, %entry ]
  %atoms = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, !dbg !1270
  %idef = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, !dbg !1270
  call void @llvm.dbg.value(metadata !{i32* %bLR}, i64 0, metadata !957), !dbg !1270
  %14 = load i32* %bLR, align 4, !dbg !1270, !tbaa !1255
  call void @llvm.dbg.value(metadata !{i32* %bLJLR}, i64 0, metadata !958), !dbg !1270
  %15 = load i32* %bLJLR, align 4, !dbg !1270, !tbaa !1255
  call void @llvm.dbg.value(metadata !{i32* %bBHAM}, i64 0, metadata !959), !dbg !1270
  %16 = load i32* %bBHAM, align 4, !dbg !1270, !tbaa !1255
  call void @llvm.dbg.value(metadata !{i32* %b14}, i64 0, metadata !960), !dbg !1270
  %17 = load i32* %b14, align 4, !dbg !1270, !tbaa !1255
  %efep = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 46, !dbg !1270
  %18 = load i32* %efep, align 4, !dbg !1270, !tbaa !1255
  %cmp12 = icmp ne i32 %18, 0, !dbg !1270
  %conv = zext i1 %cmp12 to i32, !dbg !1270
  %epc = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 28, !dbg !1270
  %19 = load i32* %epc, align 4, !dbg !1270, !tbaa !1255
  %eDispCorr = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 43, !dbg !1270
  %20 = load i32* %eDispCorr, align 4, !dbg !1270, !tbaa !1255
  %arrayidx16 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 32, i64 1, i64 0, !dbg !1271
  %21 = load float* %arrayidx16, align 4, !dbg !1271, !tbaa !1261
  %fabsf = call float @fabsf(float %21) #7, !dbg !1271
  %22 = fpext float %fabsf to double, !dbg !1271
  %cmp19 = fcmp ogt double %22, 1.200000e-38, !dbg !1271
  br i1 %cmp19, label %lor.end, label %lor.lhs.false, !dbg !1271

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx24 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 32, i64 2, i64 0, !dbg !1271
  %23 = load float* %arrayidx24, align 4, !dbg !1271, !tbaa !1261
  %fabsf1002 = call float @fabsf(float %23) #7, !dbg !1271
  %24 = fpext float %fabsf1002 to double, !dbg !1271
  %cmp27 = fcmp ogt double %24, 1.200000e-38, !dbg !1271
  br i1 %cmp27, label %lor.end, label %lor.rhs, !dbg !1271

lor.rhs:                                          ; preds = %lor.lhs.false
  %arrayidx32 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 32, i64 2, i64 1, !dbg !1271
  %25 = load float* %arrayidx32, align 4, !dbg !1271, !tbaa !1261
  %fabsf1003 = call float @fabsf(float %25) #7, !dbg !1271
  %26 = fpext float %fabsf1003 to double, !dbg !1271
  %cmp35 = fcmp ogt double %26, 1.200000e-38, !dbg !1271
  br label %lor.end, !dbg !1271

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.end
  %27 = phi i1 [ true, %lor.lhs.false ], [ true, %if.end ], [ %cmp35, %lor.rhs ]
  %lor.ext = zext i1 %27 to i32, !dbg !1271
  %etc = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 27, !dbg !1271
  %28 = load i32* %etc, align 4, !dbg !1271, !tbaa !1255
  %cmp38 = icmp eq i32 %28, 2, !dbg !1271
  %conv39 = zext i1 %cmp38 to i32, !dbg !1271
  %call40 = call %struct.t_mdebin* @init_mdebin(i32 %fp_ene.0, %struct.t_groups* %grps, %struct.t_atoms* %atoms, %struct.t_idef* %idef, i32 %14, i32 %15, i32 %16, i32 %17, i32 %conv, i32 %19, i32 %20, i32 %lor.ext, i32 %conv39, %struct.t_commrec* %cr) #6, !dbg !1271
  call void @llvm.dbg.value(metadata !{%struct.t_mdebin* %call40}, i64 0, metadata !913), !dbg !1271
  %arraydecay41 = getelementptr inbounds [3 x [3 x float]]* %force_vir, i64 0, i64 0, !dbg !1272
  call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay41}, i64 0, metadata !1273) #2, !dbg !1274
  call void @llvm.dbg.value(metadata !1246, i64 0, metadata !1275) #2, !dbg !1276
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 16, i1 false) #2, !dbg !1277
  %arraydecay42 = getelementptr inbounds [3 x [3 x float]]* %shake_vir, i64 0, i64 0, !dbg !1278
  call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay42}, i64 0, metadata !1279) #2, !dbg !1280
  call void @llvm.dbg.value(metadata !1246, i64 0, metadata !1281) #2, !dbg !1282
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 36, i32 16, i1 false) #2, !dbg !1283
  %ePBC = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 0, !dbg !1284
  %29 = load i32* %ePBC, align 4, !dbg !1284, !tbaa !1255
  %cmp43 = icmp eq i32 %29, 1, !dbg !1284
  br i1 %cmp43, label %if.end46, label %if.then45, !dbg !1284

if.then45:                                        ; preds = %lor.end
  call void @do_pbc_first(%struct._IO_FILE* %log, %struct.t_parm* %parm, float* %box_size, %struct.t_forcerec* %fr, %struct.t_graph* %graph, [3 x float]* %x) #6, !dbg !1285
  br label %if.end46, !dbg !1285

if.end46:                                         ; preds = %lor.end, %if.then45
  %nsteps = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 1, !dbg !1286
  %30 = load i32* %nsteps, align 4, !dbg !1286, !tbaa !1255
  call void @llvm.dbg.value(metadata !{i32 %30}, i64 0, metadata !968), !dbg !1286
  %31 = load i32* %nodeid, align 4, !dbg !1287, !tbaa !1255
  %cmp49 = icmp eq i32 %31, 0, !dbg !1287
  br i1 %cmp49, label %land.lhs.true51, label %if.end57, !dbg !1287

land.lhs.true51:                                  ; preds = %if.end46
  %threadid52 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4, !dbg !1287
  %32 = load i32* %threadid52, align 4, !dbg !1287, !tbaa !1255
  %cmp53 = icmp eq i32 %32, 0, !dbg !1287
  br i1 %cmp53, label %if.then55, label %if.end57, !dbg !1287

if.then55:                                        ; preds = %land.lhs.true51
  %33 = load %struct._IO_FILE** @stderr, align 8, !dbg !1288, !tbaa !1289
  %em_tol = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 60, !dbg !1288
  %34 = load float* %em_tol, align 4, !dbg !1288, !tbaa !1261
  call fastcc void @sp_header(%struct._IO_FILE* %33, i8* getelementptr inbounds ([20 x i8]* @.str, i64 0, i64 0), float %34, i32 %30) #5, !dbg !1288
  br label %if.end57, !dbg !1288

if.end57:                                         ; preds = %if.then55, %land.lhs.true51, %if.end46
  %em_tol59 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 60, !dbg !1290
  %35 = load float* %em_tol59, align 4, !dbg !1290, !tbaa !1261
  call fastcc void @sp_header(%struct._IO_FILE* %log, i8* getelementptr inbounds ([20 x i8]* @.str, i64 0, i64 0), float %35, i32 %30) #5, !dbg !1290
  %tobool = icmp ne i32 %bDummies, 0, !dbg !1291
  br i1 %tobool, label %if.then60, label %if.end65, !dbg !1291

if.then60:                                        ; preds = %if.end57
  %36 = load i32* %nodeid, align 4, !dbg !1292, !tbaa !1255
  %idxprom = sext i32 %36 to i64, !dbg !1292
  %arrayidx62 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %idxprom, !dbg !1292
  %arraydecay64 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0, !dbg !1292
  call void @construct_dummies(%struct._IO_FILE* %log, [3 x float]* %x, %struct.t_nrnb* %arrayidx62, float 1.000000e+00, [3 x float]* null, %struct.t_idef* %idef, %struct.t_graph* %graph, %struct.t_commrec* %cr, [3 x float]* %arraydecay64, %struct.t_comm_dummies* %dummycomm) #6, !dbg !1292
  br label %if.end65, !dbg !1292

if.end65:                                         ; preds = %if.then60, %if.end57
  %arraydecay67 = getelementptr inbounds [3 x [3 x float]]* %pme_vir, i64 0, i64 0, !dbg !1293
  %37 = load i32* %nodeid, align 4, !dbg !1293, !tbaa !1255
  %idxprom69 = sext i32 %37 to i64, !dbg !1293
  %arrayidx70 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %idxprom69, !dbg !1293
  %tobool71 = icmp ne i32 %bVerbose, 0, !dbg !1293
  br i1 %tobool71, label %land.rhs, label %land.end, !dbg !1293

land.rhs:                                         ; preds = %if.end65
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !1293
  %38 = load i32* %nnodes, align 4, !dbg !1293, !tbaa !1255
  %cmp72 = icmp sgt i32 %38, 1, !dbg !1293
  br i1 %cmp72, label %land.end, label %lor.rhs74, !dbg !1293

lor.rhs74:                                        ; preds = %land.rhs
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5, !dbg !1293
  %39 = load i32* %nthreads, align 4, !dbg !1293, !tbaa !1255
  %phitmp1006 = icmp slt i32 %39, 2, !dbg !1293
  br label %land.end, !dbg !1293

land.end:                                         ; preds = %land.rhs, %lor.rhs74, %if.end65
  %40 = phi i1 [ false, %if.end65 ], [ false, %land.rhs ], [ %phitmp1006, %lor.rhs74 ]
  %land.ext = zext i1 %40 to i32
  call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !877), !dbg !1245
  %41 = load float* %lambda, align 4, !tbaa !1261
  call void @do_force(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, [3 x float]* %arraydecay41, [3 x float]* %arraydecay67, i32 0, %struct.t_nrnb* %arrayidx70, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %x, [3 x float]* %buf, [3 x float]* %9, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, float* %ener, %struct.t_fcdata* %fcd, i32 %land.ext, float %41, %struct.t_graph* %graph, i32 1, i32 0, %struct.t_forcerec* %fr, float* %arraydecay, i32 0) #6
  call void @_where(i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 265) #6, !dbg !1294
  br i1 %tobool, label %if.then81, label %if.end86, !dbg !1295

if.then81:                                        ; preds = %land.end
  %42 = load i32* %nodeid, align 4, !dbg !1296, !tbaa !1255
  %idxprom83 = sext i32 %42 to i64, !dbg !1296
  %arrayidx84 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %idxprom83, !dbg !1296
  call void @spread_dummy_f(%struct._IO_FILE* %log, [3 x float]* %x, [3 x float]* %9, %struct.t_nrnb* %arrayidx84, %struct.t_idef* %idef, %struct.t_comm_dummies* %dummycomm, %struct.t_commrec* %cr) #6, !dbg !1296
  br label %if.end86, !dbg !1296

if.end86:                                         ; preds = %if.then81, %land.end
  %opts = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, !dbg !1297
  call void @sum_epot(%struct.t_grpopts* %opts, %struct.t_groups* %grps, float* %ener) #6, !dbg !1297
  call void @_where(i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 273) #6, !dbg !1298
  call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay41}, i64 0, metadata !1299) #2, !dbg !1301
  call void @llvm.dbg.value(metadata !1246, i64 0, metadata !1302) #2, !dbg !1303
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 16, i1 false) #2, !dbg !1304
  call void @_where(i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 277) #6, !dbg !1305
  %nnodes89 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !1306
  %43 = load i32* %nnodes89, align 4, !dbg !1306, !tbaa !1255
  %cmp90 = icmp sgt i32 %43, 1, !dbg !1306
  br i1 %cmp90, label %if.then96, label %lor.lhs.false92, !dbg !1306

lor.lhs.false92:                                  ; preds = %if.end86
  %nthreads93 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5, !dbg !1306
  %44 = load i32* %nthreads93, align 4, !dbg !1306, !tbaa !1255
  %cmp94 = icmp sgt i32 %44, 1, !dbg !1306
  br i1 %cmp94, label %if.then96, label %if.end101, !dbg !1306

if.then96:                                        ; preds = %lor.lhs.false92, %if.end86
  call void @llvm.dbg.value(metadata !{%struct.t_vcm** %vcm}, i64 0, metadata !896), !dbg !1307
  %45 = load %struct.t_vcm** %vcm, align 8, !dbg !1307, !tbaa !1289
  call void @global_stat(%struct._IO_FILE* %log, %struct.t_commrec* %cr, float* %ener, [3 x float]* %arraydecay41, [3 x float]* %arraydecay42, %struct.t_grpopts* %opts, %struct.t_groups* %grps, %struct.t_nrnb* %mynrnb, %struct.t_nrnb* %nrnb, %struct.t_vcm* %45, float* %terminate) #6, !dbg !1307
  br label %if.end101, !dbg !1307

if.end101:                                        ; preds = %if.then96, %lor.lhs.false92
  call void @_where(i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 283) #6, !dbg !1308
  %46 = load i32* %nodeid, align 4, !dbg !1309, !tbaa !1255
  %cmp103 = icmp eq i32 %46, 0, !dbg !1309
  br i1 %cmp103, label %land.lhs.true105, label %if.end125, !dbg !1309

land.lhs.true105:                                 ; preds = %if.end101
  %threadid106 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4, !dbg !1309
  %47 = load i32* %threadid106, align 4, !dbg !1309, !tbaa !1255
  %cmp107 = icmp eq i32 %47, 0, !dbg !1309
  br i1 %cmp107, label %if.then109, label %if.end125, !dbg !1309

if.then109:                                       ; preds = %land.lhs.true105
  %tmass = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 0, !dbg !1310
  %48 = load float* %tmass, align 4, !dbg !1310, !tbaa !1261
  %arraydecay112 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0, !dbg !1310
  %arraydecay115 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 3, i64 0, !dbg !1310
  %arraydecay116 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 4, i64 0, !dbg !1310
  %49 = load i32* %etc, align 4, !dbg !1310, !tbaa !1255
  %cmp120 = icmp eq i32 %49, 2, !dbg !1310
  %conv121 = zext i1 %cmp120 to i32, !dbg !1310
  call void @upd_mdebin(%struct.t_mdebin* %call40, %struct._IO_FILE* null, float %48, i32 0, float 0.000000e+00, float* %ener, [3 x float]* %arraydecay112, [3 x float]* %arraydecay42, [3 x float]* %arraydecay41, [3 x float]* %arraydecay115, [3 x float]* %arraydecay116, %struct.t_groups* %grps, float* %arraydecay, i32 %conv121) #6, !dbg !1310
  call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !877), !dbg !1312
  call void @print_ebin_header(%struct._IO_FILE* %log, i32 0, float 0.000000e+00, float %41, float 0.000000e+00) #6, !dbg !1312
  call void @print_ebin(i32 %fp_ene.0, i32 1, i32 0, i32 0, %struct._IO_FILE* %log, i32 0, float 0.000000e+00, i32 0, i32 1, %struct.t_mdebin* %call40, %struct.t_fcdata* %fcd, %struct.t_atoms* %atoms) #6, !dbg !1313
  br label %if.end125, !dbg !1314

if.end125:                                        ; preds = %if.then109, %land.lhs.true105, %if.end101
  call void @_where(i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 296) #6, !dbg !1315
  %arrayidx126 = getelementptr inbounds float* %ener, i64 37, !dbg !1316
  %50 = load float* %arrayidx126, align 4, !dbg !1316, !tbaa !1261
  call void @llvm.dbg.value(metadata !{float %50}, i64 0, metadata !888), !dbg !1316
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !976), !dbg !1317
  %51 = load i32* %start, align 4, !dbg !1317, !tbaa !1255
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !977), !dbg !1317
  %52 = load i32* %end, align 4, !dbg !1317, !tbaa !1255
  %call129 = call fastcc float @f_norm(%struct.t_commrec* %cr, %struct.t_grpopts* %opts, %struct.t_mdatoms* %mdatoms, i32 %51, i32 %52, [3 x float]* %9) #5, !dbg !1317
  call void @llvm.dbg.value(metadata !{float %call129}, i64 0, metadata !893), !dbg !1317
  call void @llvm.dbg.value(metadata !{float %call129}, i64 0, metadata !895), !dbg !1318
  %53 = load i32* %nodeid, align 4, !dbg !1319, !tbaa !1255
  %cmp131 = icmp eq i32 %53, 0, !dbg !1319
  %threadid134 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4, !dbg !1319
  br i1 %cmp131, label %land.lhs.true133, label %for.cond.preheader, !dbg !1319

land.lhs.true133:                                 ; preds = %if.end125
  %54 = load i32* %threadid134, align 4, !dbg !1319, !tbaa !1255
  %cmp135 = icmp eq i32 %54, 0, !dbg !1319
  br i1 %cmp135, label %if.then137, label %for.cond.preheader, !dbg !1319

if.then137:                                       ; preds = %land.lhs.true133
  %55 = load %struct._IO_FILE** @stderr, align 8, !dbg !1320, !tbaa !1289
  %conv138 = fpext float %call129 to double, !dbg !1320
  %call139 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([31 x i8]* @.str7, i64 0, i64 0), double %conv138) #6, !dbg !1320
  %56 = load %struct._IO_FILE** @stderr, align 8, !dbg !1322, !tbaa !1289
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %56), !dbg !1322
  br label %for.cond.preheader, !dbg !1323

for.cond.preheader:                               ; preds = %if.end125, %land.lhs.true133, %if.then137
  %not.cmp144 = icmp slt i32 %30, 1, !dbg !1324
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !976), !dbg !1326
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !977), !dbg !1326
  %cmp1551008 = icmp slt i32 %51, %52, !dbg !1326
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !976), !dbg !1329
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !977), !dbg !1329
  %em_stepsize = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 59, !dbg !1330
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !976), !dbg !1331
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !977), !dbg !1331
  %nstlist = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 3, !dbg !1334
  %arraydecay251 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0, !dbg !1335
  %nthreads264 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5, !dbg !1336
  call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !877), !dbg !1245
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !976), !dbg !1337
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !977), !dbg !1337
  call void @llvm.dbg.value(metadata !{%struct.t_vcm** %vcm}, i64 0, metadata !896), !dbg !1339
  %57 = load %struct.t_vcm** %vcm, align 8, !dbg !1339, !tbaa !1289
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !977), !dbg !1337
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !977), !dbg !1331
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !976), !dbg !1340
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !977), !dbg !1340
  call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !877), !dbg !1245
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !976), !dbg !1342
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !977), !dbg !1342
  call void @llvm.dbg.value(metadata !{%struct.t_vcm** %vcm}, i64 0, metadata !896), !dbg !1343
  %tobool484 = icmp eq i32 %4, 0, !dbg !1344
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !976), !dbg !1345
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !977), !dbg !1345
  %left = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2, !dbg !1347
  %right = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3, !dbg !1347
  %nnodes507 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1, !dbg !1347
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !976), !dbg !1347
  %tmass524 = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 0, !dbg !1348
  %arraydecay531 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 3, i64 0, !dbg !1348
  %arraydecay533 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 4, i64 0, !dbg !1348
  call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !877), !dbg !1350
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !977), !dbg !1345
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !977), !dbg !1340
  %cFREEZE = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 17, !dbg !1351
  %nFreeze = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 8, !dbg !1353
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !977), !dbg !1326
  %58 = sext i32 %51 to i64
  br label %lor.rhs143, !dbg !1324

lor.rhs143:                                       ; preds = %if.end542, %for.cond.preheader
  %count.01056 = phi i32 [ 1, %for.cond.preheader ], [ %inc548, %if.end542 ]
  %EpotA.01055 = phi float [ %50, %for.cond.preheader ], [ %116, %if.end542 ]
  %bDone.01054 = phi i32 [ 0, %for.cond.preheader ], [ %conv546, %if.end542 ]
  %beta.01053 = phi float [ 0.000000e+00, %for.cond.preheader ], [ %beta.1, %if.end542 ]
  %fnorm_old.01052 = phi float [ %call129, %for.cond.preheader ], [ %call467, %if.end542 ]
  %phitmp = icmp ne i32 %count.01056, %30
  %phitmp. = or i1 %phitmp, %not.cmp144, !dbg !1324
  br i1 %phitmp., label %for.body, label %for.end549

for.body:                                         ; preds = %lor.rhs143
  call void @llvm.dbg.value(metadata !1355, i64 0, metadata !875), !dbg !1356
  store double 0.000000e+00, double* %gpa, align 8, !dbg !1356, !tbaa !1357
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !976), !dbg !1326
  call void @llvm.dbg.value(metadata !{i32 %51}, i64 0, metadata !973), !dbg !1326
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !977), !dbg !1326
  br i1 %cmp1551008, label %for.body157.lr.ph, label %for.end198, !dbg !1326

for.body157.lr.ph:                                ; preds = %for.body
  %59 = load i16** %cFREEZE, align 8, !dbg !1351, !tbaa !1289
  %60 = load [3 x i32]** %nFreeze, align 8, !dbg !1353, !tbaa !1289
  br label %for.body157, !dbg !1326

for.body157:                                      ; preds = %for.body157.lr.ph, %for.inc196
  %61 = phi double [ 0.000000e+00, %for.body157.lr.ph ], [ %68, %for.inc196 ]
  %indvars.iv1057 = phi i64 [ %58, %for.body157.lr.ph ], [ %indvars.iv.next1058, %for.inc196 ]
  %arrayidx159 = getelementptr inbounds i16* %59, i64 %indvars.iv1057, !dbg !1351
  %62 = load i16* %arrayidx159, align 2, !dbg !1351, !tbaa !1358
  call void @llvm.dbg.value(metadata !126, i64 0, metadata !974), !dbg !1359
  %idxprom166 = zext i16 %62 to i64, !dbg !1353
  br label %for.body164, !dbg !1359

for.body164:                                      ; preds = %for.inc, %for.body157
  %63 = phi double [ %61, %for.body157 ], [ %68, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body157 ], [ %indvars.iv.next, %for.inc ]
  %arrayidx170 = getelementptr inbounds [3 x i32]* %60, i64 %idxprom166, i64 %indvars.iv, !dbg !1353
  %64 = load i32* %arrayidx170, align 4, !dbg !1353, !tbaa !1255
  %tobool171 = icmp eq i32 %64, 0, !dbg !1353
  br i1 %tobool171, label %if.then172, label %for.inc, !dbg !1353

if.then172:                                       ; preds = %for.body164
  %arrayidx176 = getelementptr inbounds [3 x float]* %9, i64 %indvars.iv1057, i64 %indvars.iv, !dbg !1360
  %65 = load float* %arrayidx176, align 4, !dbg !1360, !tbaa !1261
  %arrayidx180 = getelementptr inbounds [3 x float]* %7, i64 %indvars.iv1057, i64 %indvars.iv, !dbg !1360
  %66 = load float* %arrayidx180, align 4, !dbg !1360, !tbaa !1261
  %mul = fmul float %beta.01053, %66, !dbg !1360
  %add = fadd float %65, %mul, !dbg !1360
  store float %add, float* %arrayidx180, align 4, !dbg !1360, !tbaa !1261
  call void @llvm.dbg.value(metadata !{double* %gpa}, i64 0, metadata !875), !dbg !1362
  %67 = load float* %arrayidx176, align 4, !dbg !1362, !tbaa !1261
  %mul193 = fmul float %add, %67, !dbg !1362
  %conv194 = fpext float %mul193 to double, !dbg !1362
  %sub = fsub double %63, %conv194, !dbg !1362
  call void @llvm.dbg.value(metadata !{double %sub}, i64 0, metadata !875), !dbg !1362
  store double %sub, double* %gpa, align 8, !dbg !1362, !tbaa !1357
  br label %for.inc, !dbg !1363

for.inc:                                          ; preds = %for.body164, %if.then172
  %68 = phi double [ %63, %for.body164 ], [ %sub, %if.then172 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1359
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1359
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !1359
  br i1 %exitcond, label %for.inc196, label %for.body164, !dbg !1359

for.inc196:                                       ; preds = %for.inc
  %indvars.iv.next1058 = add i64 %indvars.iv1057, 1, !dbg !1326
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !977), !dbg !1326
  %69 = trunc i64 %indvars.iv.next1058 to i32, !dbg !1326
  %cmp155 = icmp slt i32 %69, %52, !dbg !1326
  br i1 %cmp155, label %for.body157, label %for.end198, !dbg !1326

for.end198:                                       ; preds = %for.inc196, %for.body
  %70 = load i32* %nnodes89, align 4, !dbg !1364, !tbaa !1255
  %cmp200 = icmp sgt i32 %70, 1, !dbg !1364
  br i1 %cmp200, label %if.then206, label %lor.lhs.false202, !dbg !1364

lor.lhs.false202:                                 ; preds = %for.end198
  %71 = load i32* %nthreads264, align 4, !dbg !1364, !tbaa !1255
  %cmp204 = icmp sgt i32 %71, 1, !dbg !1364
  br i1 %cmp204, label %if.then206, label %while.body.lr.ph, !dbg !1364

if.then206:                                       ; preds = %lor.lhs.false202, %for.end198
  call void @gmx_sumd(i32 1, double* %gpa, %struct.t_commrec* %cr) #6, !dbg !1365
  br label %while.body.lr.ph, !dbg !1365

while.body.lr.ph:                                 ; preds = %lor.lhs.false202, %if.then206
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !976), !dbg !1329
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !977), !dbg !1329
  %call210 = call fastcc float @f_norm(%struct.t_commrec* %cr, %struct.t_grpopts* %opts, %struct.t_mdatoms* %mdatoms, i32 %51, i32 %52, [3 x float]* %7) #5, !dbg !1329
  call void @llvm.dbg.value(metadata !{float %call210}, i64 0, metadata !894), !dbg !1329
  call void @llvm.dbg.value(metadata !1246, i64 0, metadata !890), !dbg !1366
  %72 = load float* %em_stepsize, align 4, !dbg !1330, !tbaa !1261
  %div = fdiv float %72, %call210, !dbg !1330
  call void @llvm.dbg.value(metadata !{float %div}, i64 0, metadata !891), !dbg !1330
  call void @llvm.dbg.value(metadata !126, i64 0, metadata !978), !dbg !1367
  call void @llvm.dbg.value(metadata !1250, i64 0, metadata !962), !dbg !1368
  br label %while.body, !dbg !1369

while.body:                                       ; preds = %if.else344, %while.body.lr.ph
  %EpotA.11026 = phi float [ %EpotA.01055, %while.body.lr.ph ], [ %91, %if.else344 ]
  %a.01025 = phi float [ 0.000000e+00, %while.body.lr.ph ], [ %b.01024, %if.else344 ]
  %b.01024 = phi float [ %div, %while.body.lr.ph ], [ %add345, %if.else344 ]
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !976), !dbg !1331
  call void @llvm.dbg.value(metadata !{i32 %51}, i64 0, metadata !973), !dbg !1331
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !977), !dbg !1331
  br i1 %cmp1551008, label %for.cond217.preheader, label %for.end240, !dbg !1331

for.cond217.preheader:                            ; preds = %while.body, %for.inc238
  %indvars.iv1063 = phi i64 [ %indvars.iv.next1064, %for.inc238 ], [ %58, %while.body ]
  br label %for.body220, !dbg !1370

for.body220:                                      ; preds = %for.body220, %for.cond217.preheader
  %indvars.iv1059 = phi i64 [ 0, %for.cond217.preheader ], [ %indvars.iv.next1060, %for.body220 ]
  %arrayidx224 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv1063, i64 %indvars.iv1059, !dbg !1373
  %73 = load float* %arrayidx224, align 4, !dbg !1373, !tbaa !1261
  %arrayidx228 = getelementptr inbounds [3 x float]* %7, i64 %indvars.iv1063, i64 %indvars.iv1059, !dbg !1373
  %74 = load float* %arrayidx228, align 4, !dbg !1373, !tbaa !1261
  %mul229 = fmul float %b.01024, %74, !dbg !1373
  %add230 = fadd float %73, %mul229, !dbg !1373
  %arrayidx234 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv1063, i64 %indvars.iv1059, !dbg !1373
  store float %add230, float* %arrayidx234, align 4, !dbg !1373, !tbaa !1261
  %indvars.iv.next1060 = add i64 %indvars.iv1059, 1, !dbg !1370
  %lftr.wideiv1061 = trunc i64 %indvars.iv.next1060 to i32, !dbg !1370
  %exitcond1062 = icmp eq i32 %lftr.wideiv1061, 3, !dbg !1370
  br i1 %exitcond1062, label %for.inc238, label %for.body220, !dbg !1370

for.inc238:                                       ; preds = %for.body220
  %indvars.iv.next1064 = add i64 %indvars.iv1063, 1, !dbg !1331
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !977), !dbg !1331
  %75 = trunc i64 %indvars.iv.next1064 to i32, !dbg !1331
  %cmp214 = icmp slt i32 %75, %52, !dbg !1331
  br i1 %cmp214, label %for.cond217.preheader, label %for.end240, !dbg !1331

for.end240:                                       ; preds = %for.inc238, %while.body
  %76 = load i32* %nstlist, align 4, !dbg !1334, !tbaa !1255
  %cmp242 = icmp sgt i32 %76, 0, !dbg !1334
  %conv243 = zext i1 %cmp242 to i32, !dbg !1334
  call void @llvm.dbg.value(metadata !{i32 %conv243}, i64 0, metadata !955), !dbg !1334
  br i1 %tobool, label %if.then245, label %if.end252, !dbg !1375

if.then245:                                       ; preds = %for.end240
  %77 = load i32* %nodeid, align 4, !dbg !1335, !tbaa !1255
  %idxprom247 = sext i32 %77 to i64, !dbg !1335
  %arrayidx248 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %idxprom247, !dbg !1335
  call void @construct_dummies(%struct._IO_FILE* %log, [3 x float]* %11, %struct.t_nrnb* %arrayidx248, float 1.000000e+00, [3 x float]* null, %struct.t_idef* %idef, %struct.t_graph* %graph, %struct.t_commrec* %cr, [3 x float]* %arraydecay251, %struct.t_comm_dummies* %dummycomm) #6, !dbg !1335
  br label %if.end252, !dbg !1335

if.end252:                                        ; preds = %if.then245, %for.end240
  %78 = load i32* %nodeid, align 4, !dbg !1336, !tbaa !1255
  %idxprom256 = sext i32 %78 to i64, !dbg !1336
  %arrayidx257 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %idxprom256, !dbg !1336
  br i1 %tobool71, label %land.rhs259, label %land.end270, !dbg !1336

land.rhs259:                                      ; preds = %if.end252
  %79 = load i32* %nnodes89, align 4, !dbg !1336, !tbaa !1255
  %cmp261 = icmp sgt i32 %79, 1, !dbg !1336
  br i1 %cmp261, label %land.end270, label %lor.rhs263, !dbg !1336

lor.rhs263:                                       ; preds = %land.rhs259
  %80 = load i32* %nthreads264, align 4, !dbg !1336, !tbaa !1255
  %phitmp1005 = icmp slt i32 %80, 2, !dbg !1336
  br label %land.end270, !dbg !1336

land.end270:                                      ; preds = %land.rhs259, %lor.rhs263, %if.end252
  %81 = phi i1 [ false, %if.end252 ], [ false, %land.rhs259 ], [ %phitmp1005, %lor.rhs263 ]
  %land.ext271 = zext i1 %81 to i32
  call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !877), !dbg !1245
  call void @do_force(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, [3 x float]* %arraydecay41, [3 x float]* %arraydecay67, i32 %count.01056, %struct.t_nrnb* %arrayidx257, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %11, [3 x float]* %buf, [3 x float]* %9, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, float* %ener, %struct.t_fcdata* %fcd, i32 %land.ext271, float %41, %struct.t_graph* %graph, i32 %conv243, i32 0, %struct.t_forcerec* %fr, float* %arraydecay, i32 0) #6
  br i1 %tobool, label %if.then274, label %if.end279, !dbg !1376

if.then274:                                       ; preds = %land.end270
  %82 = load i32* %nodeid, align 4, !dbg !1377, !tbaa !1255
  %idxprom276 = sext i32 %82 to i64, !dbg !1377
  %arrayidx277 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %idxprom276, !dbg !1377
  call void @spread_dummy_f(%struct._IO_FILE* %log, [3 x float]* %11, [3 x float]* %9, %struct.t_nrnb* %arrayidx277, %struct.t_idef* %idef, %struct.t_comm_dummies* %dummycomm, %struct.t_commrec* %cr) #6, !dbg !1377
  br label %if.end279, !dbg !1377

if.end279:                                        ; preds = %if.then274, %land.end270
  call void @sum_epot(%struct.t_grpopts* %opts, %struct.t_groups* %grps, float* %ener) #6, !dbg !1378
  call void @_where(i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 371) #6, !dbg !1379
  %83 = load i32* %nstlist, align 4, !dbg !1380, !tbaa !1255
  %cmp284 = icmp sgt i32 %83, 0, !dbg !1380
  %conv285 = zext i1 %cmp284 to i32, !dbg !1380
  call void @llvm.dbg.value(metadata !{i32 %conv285}, i64 0, metadata !955), !dbg !1380
  call void @llvm.dbg.value(metadata !1355, i64 0, metadata !876), !dbg !1381
  store double 0.000000e+00, double* %gpb, align 8, !dbg !1381, !tbaa !1357
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !976), !dbg !1337
  call void @llvm.dbg.value(metadata !{i32 %51}, i64 0, metadata !973), !dbg !1337
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !977), !dbg !1337
  br i1 %cmp1551008, label %for.cond290.preheader, label %for.end310, !dbg !1337

for.cond290.preheader:                            ; preds = %if.end279, %for.inc308
  %indvars.iv1069 = phi i64 [ %indvars.iv.next1070, %for.inc308 ], [ %58, %if.end279 ]
  %sub304.lcssa1018 = phi double [ %sub304, %for.inc308 ], [ 0.000000e+00, %if.end279 ]
  br label %for.body293, !dbg !1382

for.body293:                                      ; preds = %for.body293, %for.cond290.preheader
  %indvars.iv1065 = phi i64 [ 0, %for.cond290.preheader ], [ %indvars.iv.next1066, %for.body293 ]
  %sub3041014 = phi double [ %sub304.lcssa1018, %for.cond290.preheader ], [ %sub304, %for.body293 ], !dbg !1384
  %arrayidx297 = getelementptr inbounds [3 x float]* %7, i64 %indvars.iv1069, i64 %indvars.iv1065, !dbg !1384
  %84 = load float* %arrayidx297, align 4, !dbg !1384, !tbaa !1261
  %arrayidx301 = getelementptr inbounds [3 x float]* %9, i64 %indvars.iv1069, i64 %indvars.iv1065, !dbg !1384
  %85 = load float* %arrayidx301, align 4, !dbg !1384, !tbaa !1261
  %mul302 = fmul float %84, %85, !dbg !1384
  %conv303 = fpext float %mul302 to double, !dbg !1384
  call void @llvm.dbg.value(metadata !{double* %gpb}, i64 0, metadata !876), !dbg !1384
  %sub304 = fsub double %sub3041014, %conv303, !dbg !1384
  call void @llvm.dbg.value(metadata !{double %sub304}, i64 0, metadata !876), !dbg !1384
  %indvars.iv.next1066 = add i64 %indvars.iv1065, 1, !dbg !1382
  %lftr.wideiv1067 = trunc i64 %indvars.iv.next1066 to i32, !dbg !1382
  %exitcond1068 = icmp eq i32 %lftr.wideiv1067, 3, !dbg !1382
  br i1 %exitcond1068, label %for.inc308, label %for.body293, !dbg !1382

for.inc308:                                       ; preds = %for.body293
  %indvars.iv.next1070 = add i64 %indvars.iv1069, 1, !dbg !1337
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !977), !dbg !1337
  %86 = trunc i64 %indvars.iv.next1070 to i32, !dbg !1337
  %cmp287 = icmp slt i32 %86, %52, !dbg !1337
  br i1 %cmp287, label %for.cond290.preheader, label %for.cond286.for.end310_crit_edge, !dbg !1337

for.cond286.for.end310_crit_edge:                 ; preds = %for.inc308
  call void @llvm.dbg.value(metadata !{double %sub304}, i64 0, metadata !876), !dbg !1384
  store double %sub304, double* %gpb, align 8, !dbg !1384, !tbaa !1357
  br label %for.end310, !dbg !1337

for.end310:                                       ; preds = %for.cond286.for.end310_crit_edge, %if.end279
  %87 = load i32* %nnodes89, align 4, !dbg !1385, !tbaa !1255
  %cmp312 = icmp sgt i32 %87, 1, !dbg !1385
  br i1 %cmp312, label %if.then318, label %lor.lhs.false314, !dbg !1385

lor.lhs.false314:                                 ; preds = %for.end310
  %88 = load i32* %nthreads264, align 4, !dbg !1385, !tbaa !1255
  %cmp316 = icmp sgt i32 %88, 1, !dbg !1385
  br i1 %cmp316, label %if.then318, label %if.end319, !dbg !1385

if.then318:                                       ; preds = %lor.lhs.false314, %for.end310
  call void @gmx_sumd(i32 1, double* %gpb, %struct.t_commrec* %cr) #6, !dbg !1386
  br label %if.end319, !dbg !1386

if.end319:                                        ; preds = %if.then318, %lor.lhs.false314
  call void @sum_epot(%struct.t_grpopts* %opts, %struct.t_groups* %grps, float* %ener) #6, !dbg !1387
  call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay41}, i64 0, metadata !1388) #2, !dbg !1390
  call void @llvm.dbg.value(metadata !1246, i64 0, metadata !1391) #2, !dbg !1392
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 16, i1 false) #2, !dbg !1393
  call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay42}, i64 0, metadata !1394) #2, !dbg !1396
  call void @llvm.dbg.value(metadata !1246, i64 0, metadata !1397) #2, !dbg !1398
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 36, i32 16, i1 false) #2, !dbg !1399
  %89 = load i32* %nnodes89, align 4, !dbg !1400, !tbaa !1255
  %cmp325 = icmp sgt i32 %89, 1, !dbg !1400
  br i1 %cmp325, label %if.then331, label %lor.lhs.false327, !dbg !1400

lor.lhs.false327:                                 ; preds = %if.end319
  %90 = load i32* %nthreads264, align 4, !dbg !1400, !tbaa !1255
  %cmp329 = icmp sgt i32 %90, 1, !dbg !1400
  br i1 %cmp329, label %if.then331, label %if.end336, !dbg !1400

if.then331:                                       ; preds = %lor.lhs.false327, %if.end319
  call void @llvm.dbg.value(metadata !{%struct.t_vcm** %vcm}, i64 0, metadata !896), !dbg !1339
  call void @global_stat(%struct._IO_FILE* %log, %struct.t_commrec* %cr, float* %ener, [3 x float]* %arraydecay41, [3 x float]* %arraydecay42, %struct.t_grpopts* %opts, %struct.t_groups* %grps, %struct.t_nrnb* %mynrnb, %struct.t_nrnb* %nrnb, %struct.t_vcm* %57, float* %terminate) #6, !dbg !1339
  br label %if.end336, !dbg !1339

if.end336:                                        ; preds = %if.then331, %lor.lhs.false327
  %91 = load float* %arrayidx126, align 4, !dbg !1401, !tbaa !1261
  call void @llvm.dbg.value(metadata !{float %91}, i64 0, metadata !889), !dbg !1401
  call void @llvm.dbg.value(metadata !{double* %gpb}, i64 0, metadata !876), !dbg !1402
  %92 = load double* %gpb, align 8, !dbg !1402, !tbaa !1357
  %cmp338 = fcmp ult double %92, 0.000000e+00, !dbg !1402
  %cmp341 = fcmp ult float %91, %EpotA.11026, !dbg !1402
  %or.cond = and i1 %cmp338, %cmp341, !dbg !1402
  br i1 %or.cond, label %if.else344, label %while.end, !dbg !1402

if.else344:                                       ; preds = %if.end336
  call void @llvm.dbg.value(metadata !{float %b.01024}, i64 0, metadata !890), !dbg !1403
  call void @llvm.dbg.value(metadata !{float %91}, i64 0, metadata !888), !dbg !1405
  call void @llvm.dbg.value(metadata !{double %92}, i64 0, metadata !875), !dbg !1406
  store double %92, double* %gpa, align 8, !dbg !1406, !tbaa !1357
  %add345 = fadd float %b.01024, %b.01024, !dbg !1407
  call void @llvm.dbg.value(metadata !{float %add345}, i64 0, metadata !891), !dbg !1407
  br label %while.body, !dbg !1369

while.end:                                        ; preds = %if.end336
  call void @llvm.dbg.value(metadata !{double* %gpa}, i64 0, metadata !875), !dbg !1408
  %.pre = load double* %gpa, align 8, !dbg !1408, !tbaa !1357
  %sub348 = fsub float %EpotA.11026, %91, !dbg !1408
  %conv349 = fpext float %sub348 to double, !dbg !1408
  %mul350 = fmul double %conv349, 3.000000e+00, !dbg !1408
  %sub351 = fsub float %b.01024, %a.01025, !dbg !1408
  %conv352 = fpext float %sub351 to double, !dbg !1408
  %div353 = fdiv double %mul350, %conv352, !dbg !1408
  call void @llvm.dbg.value(metadata !{double* %gpa}, i64 0, metadata !875), !dbg !1408
  %add354 = fadd double %div353, %.pre, !dbg !1408
  call void @llvm.dbg.value(metadata !{double* %gpb}, i64 0, metadata !876), !dbg !1408
  %add355 = fadd double %add354, %92, !dbg !1408
  %conv356 = fptrunc double %add355 to float, !dbg !1408
  call void @llvm.dbg.value(metadata !{float %conv356}, i64 0, metadata !880), !dbg !1408
  %mul357 = fmul float %conv356, %conv356, !dbg !1409
  %conv358 = fpext float %mul357 to double, !dbg !1409
  %mul359 = fmul double %.pre, %92, !dbg !1409
  %sub360 = fsub double %conv358, %mul359, !dbg !1409
  %conv361 = fptrunc double %sub360 to float, !dbg !1409
  call void @llvm.dbg.value(metadata !{float %conv361}, i64 0, metadata !881), !dbg !1409
  %conv362 = fpext float %conv361 to double, !dbg !1410
  %cmp363 = fcmp olt float %conv361, 0.000000e+00, !dbg !1410
  br i1 %cmp363, label %if.then365, label %if.end380, !dbg !1410

if.then365:                                       ; preds = %while.end
  %93 = load %struct._IO_FILE** @stderr, align 8, !dbg !1411, !tbaa !1289
  %call367 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([21 x i8]* @.str9, i64 0, i64 0), double %conv362) #6, !dbg !1411
  %94 = load %struct._IO_FILE** @stderr, align 8, !dbg !1413, !tbaa !1289
  %conv368 = fpext float %conv356 to double, !dbg !1413
  %call369 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), double %conv368) #6, !dbg !1413
  %95 = load %struct._IO_FILE** @stderr, align 8, !dbg !1414, !tbaa !1289
  call void @llvm.dbg.value(metadata !{double* %gpa}, i64 0, metadata !875), !dbg !1414
  %96 = load double* %gpa, align 8, !dbg !1414, !tbaa !1357
  call void @llvm.dbg.value(metadata !{double* %gpb}, i64 0, metadata !876), !dbg !1414
  %97 = load double* %gpb, align 8, !dbg !1414, !tbaa !1357
  %call370 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([28 x i8]* @.str11, i64 0, i64 0), double %96, double %97) #6, !dbg !1414
  %98 = load %struct._IO_FILE** @stderr, align 8, !dbg !1415, !tbaa !1289
  %conv371 = fpext float %a.01025 to double, !dbg !1415
  %conv372 = fpext float %b.01024 to double, !dbg !1415
  %call373 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([24 x i8]* @.str12, i64 0, i64 0), double %conv371, double %conv372) #6, !dbg !1415
  %99 = load %struct._IO_FILE** @stderr, align 8, !dbg !1416, !tbaa !1289
  %conv374 = fpext float %EpotA.11026 to double, !dbg !1416
  %conv375 = fpext float %91 to double, !dbg !1416
  %call376 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([32 x i8]* @.str13, i64 0, i64 0), double %conv374, double %conv375) #6, !dbg !1416
  %100 = load %struct._IO_FILE** @stderr, align 8, !dbg !1417, !tbaa !1289
  %call378 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([43 x i8]* @.str14, i64 0, i64 0), double %conv362) #6, !dbg !1417
  %101 = load %struct._IO_FILE** @stderr, align 8, !dbg !1418, !tbaa !1289
  %102 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str15, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %101), !dbg !1418
  br label %for.end549, !dbg !1419

if.end380:                                        ; preds = %while.end
  %conv383 = call float @sqrtf(float %conv361) #4, !dbg !1420
  call void @llvm.dbg.value(metadata !{float %conv383}, i64 0, metadata !881), !dbg !1420
  %conv384 = fpext float %b.01024 to double, !dbg !1421
  call void @llvm.dbg.value(metadata !{double* %gpb}, i64 0, metadata !876), !dbg !1421
  %103 = load double* %gpb, align 8, !dbg !1421, !tbaa !1357
  %conv385 = fpext float %conv383 to double, !dbg !1421
  %add386 = fadd double %103, %conv385, !dbg !1421
  %conv387 = fpext float %conv356 to double, !dbg !1421
  %sub388 = fsub double %add386, %conv387, !dbg !1421
  %mul391 = fmul double %conv352, %sub388, !dbg !1421
  call void @llvm.dbg.value(metadata !{double* %gpa}, i64 0, metadata !875), !dbg !1421
  %104 = load double* %gpa, align 8, !dbg !1421, !tbaa !1357
  %sub392 = fsub double %103, %104, !dbg !1421
  %mul394 = fmul double %conv385, 2.000000e+00, !dbg !1421
  %add395 = fadd double %mul394, %sub392, !dbg !1421
  %div396 = fdiv double %mul391, %add395, !dbg !1421
  %sub397 = fsub double %conv384, %div396, !dbg !1421
  %conv398 = fptrunc double %sub397 to float, !dbg !1421
  call void @llvm.dbg.value(metadata !{float %conv398}, i64 0, metadata !882), !dbg !1421
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !976), !dbg !1340
  call void @llvm.dbg.value(metadata !{i32 %51}, i64 0, metadata !973), !dbg !1340
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !977), !dbg !1340
  br i1 %cmp1551008, label %for.cond403.preheader, label %for.end426, !dbg !1340

for.cond403.preheader:                            ; preds = %if.end380, %for.inc424
  %indvars.iv1081 = phi i64 [ %indvars.iv.next1082, %for.inc424 ], [ %58, %if.end380 ]
  br label %for.body406, !dbg !1422

for.body406:                                      ; preds = %for.body406, %for.cond403.preheader
  %indvars.iv1077 = phi i64 [ 0, %for.cond403.preheader ], [ %indvars.iv.next1078, %for.body406 ]
  %arrayidx410 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv1081, i64 %indvars.iv1077, !dbg !1424
  %105 = load float* %arrayidx410, align 4, !dbg !1424, !tbaa !1261
  %arrayidx414 = getelementptr inbounds [3 x float]* %7, i64 %indvars.iv1081, i64 %indvars.iv1077, !dbg !1424
  %106 = load float* %arrayidx414, align 4, !dbg !1424, !tbaa !1261
  %mul415 = fmul float %conv398, %106, !dbg !1424
  %add416 = fadd float %105, %mul415, !dbg !1424
  %arrayidx420 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv1081, i64 %indvars.iv1077, !dbg !1424
  store float %add416, float* %arrayidx420, align 4, !dbg !1424, !tbaa !1261
  %indvars.iv.next1078 = add i64 %indvars.iv1077, 1, !dbg !1422
  %lftr.wideiv1079 = trunc i64 %indvars.iv.next1078 to i32, !dbg !1422
  %exitcond1080 = icmp eq i32 %lftr.wideiv1079, 3, !dbg !1422
  br i1 %exitcond1080, label %for.inc424, label %for.body406, !dbg !1422

for.inc424:                                       ; preds = %for.body406
  %indvars.iv.next1082 = add i64 %indvars.iv1081, 1, !dbg !1340
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !977), !dbg !1340
  %107 = trunc i64 %indvars.iv.next1082 to i32, !dbg !1340
  %cmp400 = icmp slt i32 %107, %52, !dbg !1340
  br i1 %cmp400, label %for.cond403.preheader, label %for.end426, !dbg !1340

for.end426:                                       ; preds = %for.inc424, %if.end380
  br i1 %tobool, label %if.then428, label %if.end435, !dbg !1425

if.then428:                                       ; preds = %for.end426
  %108 = load i32* %nodeid, align 4, !dbg !1426, !tbaa !1255
  %idxprom430 = sext i32 %108 to i64, !dbg !1426
  %arrayidx431 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %idxprom430, !dbg !1426
  call void @construct_dummies(%struct._IO_FILE* %log, [3 x float]* %11, %struct.t_nrnb* %arrayidx431, float 1.000000e+00, [3 x float]* null, %struct.t_idef* %idef, %struct.t_graph* %graph, %struct.t_commrec* %cr, [3 x float]* %arraydecay251, %struct.t_comm_dummies* %dummycomm) #6, !dbg !1426
  br label %if.end435, !dbg !1426

if.end435:                                        ; preds = %if.then428, %for.end426
  %109 = load i32* %nodeid, align 4, !dbg !1427, !tbaa !1255
  %idxprom439 = sext i32 %109 to i64, !dbg !1427
  %arrayidx440 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %idxprom439, !dbg !1427
  br i1 %tobool71, label %land.rhs442, label %land.end453, !dbg !1427

land.rhs442:                                      ; preds = %if.end435
  %110 = load i32* %nnodes89, align 4, !dbg !1427, !tbaa !1255
  %cmp444 = icmp sgt i32 %110, 1, !dbg !1427
  br i1 %cmp444, label %land.end453, label %lor.rhs446, !dbg !1427

lor.rhs446:                                       ; preds = %land.rhs442
  %111 = load i32* %nthreads264, align 4, !dbg !1427, !tbaa !1255
  %phitmp1004 = icmp slt i32 %111, 2, !dbg !1427
  br label %land.end453, !dbg !1427

land.end453:                                      ; preds = %land.rhs442, %lor.rhs446, %if.end435
  %112 = phi i1 [ false, %if.end435 ], [ false, %land.rhs442 ], [ %phitmp1004, %lor.rhs446 ]
  %land.ext454 = zext i1 %112 to i32
  call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !877), !dbg !1245
  call void @do_force(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, [3 x float]* %arraydecay41, [3 x float]* %arraydecay67, i32 %count.01056, %struct.t_nrnb* %arrayidx440, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %11, [3 x float]* %buf, [3 x float]* %9, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, float* %ener, %struct.t_fcdata* %fcd, i32 %land.ext454, float %41, %struct.t_graph* %graph, i32 %conv285, i32 0, %struct.t_forcerec* %fr, float* %arraydecay, i32 0) #6
  br i1 %tobool, label %if.then457, label %if.end462, !dbg !1428

if.then457:                                       ; preds = %land.end453
  %113 = load i32* %nodeid, align 4, !dbg !1429, !tbaa !1255
  %idxprom459 = sext i32 %113 to i64, !dbg !1429
  %arrayidx460 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %idxprom459, !dbg !1429
  call void @spread_dummy_f(%struct._IO_FILE* %log, [3 x float]* %11, [3 x float]* %9, %struct.t_nrnb* %arrayidx460, %struct.t_idef* %idef, %struct.t_comm_dummies* %dummycomm, %struct.t_commrec* %cr) #6, !dbg !1429
  br label %if.end462, !dbg !1429

if.end462:                                        ; preds = %if.then457, %land.end453
  call void @sum_epot(%struct.t_grpopts* %opts, %struct.t_groups* %grps, float* %ener) #6, !dbg !1430
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !976), !dbg !1342
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !977), !dbg !1342
  %call467 = call fastcc float @f_norm(%struct.t_commrec* %cr, %struct.t_grpopts* %opts, %struct.t_mdatoms* %mdatoms, i32 %51, i32 %52, [3 x float]* %9) #5, !dbg !1342
  call void @llvm.dbg.value(metadata !{float %call467}, i64 0, metadata !893), !dbg !1342
  call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay41}, i64 0, metadata !1431) #2, !dbg !1433
  call void @llvm.dbg.value(metadata !1246, i64 0, metadata !1434) #2, !dbg !1435
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 16, i1 false) #2, !dbg !1436
  call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay42}, i64 0, metadata !1437) #2, !dbg !1439
  call void @llvm.dbg.value(metadata !1246, i64 0, metadata !1440) #2, !dbg !1441
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 36, i32 16, i1 false) #2, !dbg !1442
  %114 = load i32* %nnodes89, align 4, !dbg !1443, !tbaa !1255
  %cmp471 = icmp sgt i32 %114, 1, !dbg !1443
  br i1 %cmp471, label %if.then477, label %lor.lhs.false473, !dbg !1443

lor.lhs.false473:                                 ; preds = %if.end462
  %115 = load i32* %nthreads264, align 4, !dbg !1443, !tbaa !1255
  %cmp475 = icmp sgt i32 %115, 1, !dbg !1443
  br i1 %cmp475, label %if.then477, label %if.end482, !dbg !1443

if.then477:                                       ; preds = %lor.lhs.false473, %if.end462
  call void @llvm.dbg.value(metadata !{%struct.t_vcm** %vcm}, i64 0, metadata !896), !dbg !1343
  call void @global_stat(%struct._IO_FILE* %log, %struct.t_commrec* %cr, float* %ener, [3 x float]* %arraydecay41, [3 x float]* %arraydecay42, %struct.t_grpopts* %opts, %struct.t_groups* %grps, %struct.t_nrnb* %mynrnb, %struct.t_nrnb* %nrnb, %struct.t_vcm* %57, float* %terminate) #6, !dbg !1343
  br label %if.end482, !dbg !1343

if.end482:                                        ; preds = %if.then477, %lor.lhs.false473
  %116 = load float* %arrayidx126, align 4, !dbg !1444, !tbaa !1261
  call void @llvm.dbg.value(metadata !{float %116}, i64 0, metadata !888), !dbg !1444
  br i1 %tobool484, label %if.else489, label %land.lhs.true485, !dbg !1344

land.lhs.true485:                                 ; preds = %if.end482
  %rem = srem i32 %count.01056, %4, !dbg !1344
  %cmp486 = icmp eq i32 %rem, 0, !dbg !1344
  br i1 %cmp486, label %if.end493, label %if.else489, !dbg !1344

if.else489:                                       ; preds = %if.end482, %land.lhs.true485
  %mul490 = fmul float %call467, %call467, !dbg !1445
  %mul491 = fmul float %fnorm_old.01052, %fnorm_old.01052, !dbg !1445
  %div492 = fdiv float %mul490, %mul491, !dbg !1445
  call void @llvm.dbg.value(metadata !{float %div492}, i64 0, metadata !892), !dbg !1445
  br label %if.end493

if.end493:                                        ; preds = %land.lhs.true485, %if.else489
  %beta.1 = phi float [ %div492, %if.else489 ], [ 0.000000e+00, %land.lhs.true485 ]
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !976), !dbg !1345
  call void @llvm.dbg.value(metadata !{i32 %51}, i64 0, metadata !973), !dbg !1345
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !977), !dbg !1345
  br i1 %cmp1551008, label %for.body497, label %for.end506, !dbg !1345

for.body497:                                      ; preds = %if.end493, %for.body497
  %indvars.iv1083 = phi i64 [ %indvars.iv.next1084, %for.body497 ], [ %58, %if.end493 ]
  %arraydecay500 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv1083, i64 0, !dbg !1446
  %arraydecay503 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv1083, i64 0, !dbg !1446
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay500}, i64 0, metadata !1447), !dbg !1448
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay503}, i64 0, metadata !1449), !dbg !1448
  %117 = load float* %arraydecay500, align 4, !dbg !1450, !tbaa !1261
  store float %117, float* %arraydecay503, align 4, !dbg !1450, !tbaa !1261
  %arrayidx2.i = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv1083, i64 1, !dbg !1451
  %118 = load float* %arrayidx2.i, align 4, !dbg !1451, !tbaa !1261
  %arrayidx3.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv1083, i64 1, !dbg !1451
  store float %118, float* %arrayidx3.i, align 4, !dbg !1451, !tbaa !1261
  %arrayidx4.i = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv1083, i64 2, !dbg !1452
  %119 = load float* %arrayidx4.i, align 4, !dbg !1452, !tbaa !1261
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv1083, i64 2, !dbg !1452
  store float %119, float* %arrayidx5.i, align 4, !dbg !1452, !tbaa !1261
  %indvars.iv.next1084 = add i64 %indvars.iv1083, 1, !dbg !1345
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !977), !dbg !1345
  %120 = trunc i64 %indvars.iv.next1084 to i32, !dbg !1345
  %cmp495 = icmp slt i32 %120, %52, !dbg !1345
  br i1 %cmp495, label %for.body497, label %for.end506, !dbg !1345

for.end506:                                       ; preds = %for.body497, %if.end493
  call void @llvm.dbg.value(metadata !{float %call467}, i64 0, metadata !895), !dbg !1453
  %121 = load i32* %left, align 4, !dbg !1347, !tbaa !1255
  %122 = load i32* %right, align 4, !dbg !1347, !tbaa !1255
  %123 = load i32* %nnodes507, align 4, !dbg !1347, !tbaa !1255
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !976), !dbg !1347
  %call510 = call fastcc float @f_max(i32 %121, i32 %122, i32 %123, %struct.t_grpopts* %opts, %struct.t_mdatoms* %mdatoms, i32 %51, i32 %52, [3 x float]* %9, i32* %nfmax) #5, !dbg !1347
  call void @llvm.dbg.value(metadata !{float %call510}, i64 0, metadata !878), !dbg !1347
  br i1 %tobool71, label %land.lhs.true512, label %if.end542, !dbg !1454

land.lhs.true512:                                 ; preds = %for.end506
  %124 = load i32* %nodeid, align 4, !dbg !1454, !tbaa !1255
  %cmp514 = icmp eq i32 %124, 0, !dbg !1454
  br i1 %cmp514, label %land.lhs.true516, label %if.end542, !dbg !1454

land.lhs.true516:                                 ; preds = %land.lhs.true512
  %125 = load i32* %threadid134, align 4, !dbg !1454, !tbaa !1255
  %cmp518 = icmp eq i32 %125, 0, !dbg !1454
  br i1 %cmp518, label %if.then520, label %if.end542, !dbg !1454

if.then520:                                       ; preds = %land.lhs.true516
  %126 = load %struct._IO_FILE** @stderr, align 8, !dbg !1455, !tbaa !1289
  %conv521 = fpext float %116 to double, !dbg !1455
  %conv522 = fpext float %call510 to double, !dbg !1455
  call void @llvm.dbg.value(metadata !{i32* %nfmax}, i64 0, metadata !975), !dbg !1455
  %127 = load i32* %nfmax, align 4, !dbg !1455, !tbaa !1255
  %call523 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([53 x i8]* @.str16, i64 0, i64 0), i32 %count.01056, double %conv521, double %conv522, i32 %127) #6, !dbg !1455
  %128 = load float* %tmass524, align 4, !dbg !1348, !tbaa !1261
  %conv525 = sitofp i32 %count.01056 to float, !dbg !1348
  %129 = load i32* %etc, align 4, !dbg !1348, !tbaa !1255
  %cmp537 = icmp eq i32 %129, 2, !dbg !1348
  %conv538 = zext i1 %cmp537 to i32, !dbg !1348
  call void @upd_mdebin(%struct.t_mdebin* %call40, %struct._IO_FILE* null, float %128, i32 %count.01056, float %conv525, float* %ener, [3 x float]* %arraydecay251, [3 x float]* %arraydecay42, [3 x float]* %arraydecay41, [3 x float]* %arraydecay531, [3 x float]* %arraydecay533, %struct.t_groups* %grps, float* %arraydecay, i32 %conv538) #6, !dbg !1348
  call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !877), !dbg !1350
  call void @print_ebin_header(%struct._IO_FILE* %log, i32 %count.01056, float %conv525, float %41, float 0.000000e+00) #6, !dbg !1350
  call void @print_ebin(i32 %fp_ene.0, i32 1, i32 0, i32 0, %struct._IO_FILE* %log, i32 %count.01056, float %conv525, i32 0, i32 1, %struct.t_mdebin* %call40, %struct.t_fcdata* %fcd, %struct.t_atoms* %atoms) #6, !dbg !1456
  br label %if.end542, !dbg !1457

if.end542:                                        ; preds = %if.then520, %land.lhs.true516, %land.lhs.true512, %for.end506
  %130 = load float* %em_tol59, align 4, !dbg !1458, !tbaa !1261
  %cmp545 = fcmp olt float %call510, %130, !dbg !1458
  %conv546 = zext i1 %cmp545 to i32, !dbg !1458
  call void @llvm.dbg.value(metadata !{i32 %conv546}, i64 0, metadata !956), !dbg !1458
  %inc548 = add nsw i32 %count.01056, 1, !dbg !1459
  call void @llvm.dbg.value(metadata !{i32 %inc548}, i64 0, metadata !972), !dbg !1459
  br i1 %cmp545, label %for.end549, label %lor.rhs143, !dbg !1324

for.end549:                                       ; preds = %lor.rhs143, %if.end542, %if.then365
  %count.01051 = phi i32 [ %count.01056, %if.then365 ], [ %30, %lor.rhs143 ], [ %inc548, %if.end542 ]
  %bDone.01048 = phi i32 [ %bDone.01054, %if.then365 ], [ %bDone.01054, %lor.rhs143 ], [ %conv546, %if.end542 ]
  %EpotA.3 = phi float [ %EpotA.11026, %if.then365 ], [ %EpotA.01055, %lor.rhs143 ], [ %116, %if.end542 ]
  %131 = load i32* %nodeid, align 4, !dbg !1460, !tbaa !1255
  %cmp551 = icmp eq i32 %131, 0, !dbg !1460
  br i1 %cmp551, label %land.lhs.true553, label %if.end559, !dbg !1460

land.lhs.true553:                                 ; preds = %for.end549
  %132 = load i32* %threadid134, align 4, !dbg !1460, !tbaa !1255
  %cmp555 = icmp eq i32 %132, 0, !dbg !1460
  br i1 %cmp555, label %if.then557, label %if.end559, !dbg !1460

if.then557:                                       ; preds = %land.lhs.true553
  %133 = load %struct._IO_FILE** @stderr, align 8, !dbg !1461, !tbaa !1289
  %134 = call i64 @fwrite(i8* getelementptr inbounds ([37 x i8]* @.str17, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %133), !dbg !1461
  br label %if.end559, !dbg !1461

if.end559:                                        ; preds = %if.then557, %land.lhs.true553, %for.end549
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !886), !dbg !1462
  call void @llvm.dbg.value(metadata !{[3 x float]* %9}, i64 0, metadata !887), !dbg !1463
  %call560 = call i8* @ftp2fn(i32 3, i32 %nfile, %struct.t_filenm* %fnm) #6, !dbg !1464
  %conv561 = sitofp i32 %count.01051 to float, !dbg !1464
  call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !877), !dbg !1464
  %135 = load i32* %natoms, align 4, !dbg !1464, !tbaa !1255
  %call565 = call i32 @write_traj(%struct._IO_FILE* %log, %struct.t_commrec* %cr, i8* %call560, %struct.t_nsborder* %nsb, i32 %count.01051, float %conv561, float %41, %struct.t_nrnb* %nrnb, i32 %135, [3 x float]* %x, [3 x float]* null, [3 x float]* %9, [3 x float]* %arraydecay251) #6, !dbg !1464
  %136 = load i32* %nodeid, align 4, !dbg !1465, !tbaa !1255
  %cmp567 = icmp eq i32 %136, 0, !dbg !1465
  br i1 %cmp567, label %land.lhs.true569, label %if.end578, !dbg !1465

land.lhs.true569:                                 ; preds = %if.end559
  %137 = load i32* %threadid134, align 4, !dbg !1465, !tbaa !1255
  %cmp571 = icmp eq i32 %137, 0, !dbg !1465
  br i1 %cmp571, label %if.then573, label %if.end578, !dbg !1465

if.then573:                                       ; preds = %land.lhs.true569
  %call574 = call i8* @ftp2fn(i32 12, i32 %nfile, %struct.t_filenm* %fnm) #6, !dbg !1466
  %name = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0, !dbg !1466
  %138 = load i8*** %name, align 8, !dbg !1466, !tbaa !1289
  %139 = load i8** %138, align 8, !dbg !1466, !tbaa !1289
  call void @write_sto_conf(i8* %call574, i8* %139, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* null, [3 x float]* %arraydecay251) #6, !dbg !1466
  br label %if.end578, !dbg !1466

if.end578:                                        ; preds = %if.then573, %land.lhs.true569, %if.end559
  %140 = load i32* %left, align 4, !dbg !1467, !tbaa !1255
  %141 = load i32* %right, align 4, !dbg !1467, !tbaa !1255
  %142 = load i32* %nnodes507, align 4, !dbg !1467, !tbaa !1255
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !976), !dbg !1467
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !977), !dbg !1467
  %call584 = call fastcc float @f_max(i32 %140, i32 %141, i32 %142, %struct.t_grpopts* %opts, %struct.t_mdatoms* %mdatoms, i32 %51, i32 %52, [3 x float]* %9, i32* %nfmax) #5, !dbg !1467
  call void @llvm.dbg.value(metadata !{float %call584}, i64 0, metadata !878), !dbg !1467
  %143 = load i32* %nodeid, align 4, !dbg !1468, !tbaa !1255
  %cmp586 = icmp eq i32 %143, 0, !dbg !1468
  br i1 %cmp586, label %land.lhs.true588, label %if.end597, !dbg !1468

land.lhs.true588:                                 ; preds = %if.end578
  %144 = load i32* %threadid134, align 4, !dbg !1468, !tbaa !1255
  %cmp590 = icmp eq i32 %144, 0, !dbg !1468
  br i1 %cmp590, label %if.then592, label %if.end597, !dbg !1468

if.then592:                                       ; preds = %land.lhs.true588
  %145 = load %struct._IO_FILE** @stderr, align 8, !dbg !1469, !tbaa !1289
  %146 = load float* %em_tol59, align 4, !dbg !1469, !tbaa !1261
  call fastcc void @print_converged(%struct._IO_FILE* %145, i8* getelementptr inbounds ([20 x i8]* @.str, i64 0, i64 0), float %146, i32 %count.01051, i32 %bDone.01048, i32 %30, float %EpotA.3, float %call584) #5, !dbg !1469
  %147 = load float* %em_tol59, align 4, !dbg !1471, !tbaa !1261
  call fastcc void @print_converged(%struct._IO_FILE* %log, i8* getelementptr inbounds ([20 x i8]* @.str, i64 0, i64 0), float %147, i32 %count.01051, i32 %bDone.01048, i32 %30, float %EpotA.3, float %call584) #5, !dbg !1471
  call void @close_enx(i32 %fp_ene.0) #6, !dbg !1472
  br label %if.end597, !dbg !1473

if.end597:                                        ; preds = %if.then592, %land.lhs.true588, %if.end578
  store i32 %count.01051, i32* %nsteps, align 4, !dbg !1474, !tbaa !1255
  call void @llvm.lifetime.end(i64 36, i8* %3) #2, !dbg !1475
  call void @llvm.lifetime.end(i64 36, i8* %2) #2, !dbg !1475
  call void @llvm.lifetime.end(i64 36, i8* %1) #2, !dbg !1475
  call void @llvm.lifetime.end(i64 1032, i8* %0) #2, !dbg !1475
  ret i64 %call, !dbg !1475
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @init_em(%struct._IO_FILE* %log, i8* %title, %struct.t_parm* %parm, float* nocapture %lambda, %struct.t_nrnb* %mynrnb, float* nocapture %mu_tot, float* %box_size, %struct.t_forcerec* nocapture %fr, %struct.t_mdatoms* %mdatoms, %struct.t_topology* %top, %struct.t_nsborder* nocapture %nsb, %struct.t_commrec* %cr, %struct.t_vcm** nocapture %vcm, i32* nocapture %start, i32* nocapture %end) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !1212), !dbg !1476
  tail call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !1213), !dbg !1476
  tail call void @llvm.dbg.value(metadata !{%struct.t_parm* %parm}, i64 0, metadata !1214), !dbg !1477
  tail call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !1215), !dbg !1477
  tail call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %mynrnb}, i64 0, metadata !1216), !dbg !1477
  tail call void @llvm.dbg.value(metadata !{float* %mu_tot}, i64 0, metadata !1217), !dbg !1477
  tail call void @llvm.dbg.value(metadata !{float* %box_size}, i64 0, metadata !1218), !dbg !1477
  tail call void @llvm.dbg.value(metadata !{%struct.t_forcerec* %fr}, i64 0, metadata !1219), !dbg !1478
  tail call void @llvm.dbg.value(metadata !{%struct.t_mdatoms* %mdatoms}, i64 0, metadata !1220), !dbg !1478
  tail call void @llvm.dbg.value(metadata !{%struct.t_topology* %top}, i64 0, metadata !1221), !dbg !1478
  tail call void @llvm.dbg.value(metadata !{%struct.t_nsborder* %nsb}, i64 0, metadata !1222), !dbg !1478
  tail call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !1223), !dbg !1479
  tail call void @llvm.dbg.value(metadata !{%struct.t_vcm** %vcm}, i64 0, metadata !1224), !dbg !1479
  tail call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !1225), !dbg !1479
  tail call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !1226), !dbg !1479
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([15 x i8]* @.str43, i64 0, i64 0), i8* %title) #6, !dbg !1480
  %efep = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 46, !dbg !1482
  %0 = load i32* %efep, align 4, !dbg !1482, !tbaa !1255
  %cmp = icmp eq i32 %0, 0, !dbg !1482
  br i1 %cmp, label %if.end, label %if.then, !dbg !1482

if.then:                                          ; preds = %entry
  %init_lambda = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 47, !dbg !1483
  %1 = load float* %init_lambda, align 4, !dbg !1483, !tbaa !1261
  br label %if.end, !dbg !1483

if.end:                                           ; preds = %entry, %if.then
  %storemerge = phi float [ %1, %if.then ], [ 0.000000e+00, %entry ]
  store float %storemerge, float* %lambda, align 4, !dbg !1483, !tbaa !1261
  tail call void @init_nrnb(%struct.t_nrnb* %mynrnb) #6, !dbg !1484
  tail call void @llvm.dbg.value(metadata !{float* %mu_tot}, i64 0, metadata !1485), !dbg !1487
  store float 0.000000e+00, float* %mu_tot, align 4, !dbg !1488, !tbaa !1261
  %arrayidx1.i = getelementptr inbounds float* %mu_tot, i64 1, !dbg !1490
  store float 0.000000e+00, float* %arrayidx1.i, align 4, !dbg !1490, !tbaa !1261
  %arrayidx2.i = getelementptr inbounds float* %mu_tot, i64 2, !dbg !1491
  store float 0.000000e+00, float* %arrayidx2.i, align 4, !dbg !1491, !tbaa !1261
  %arraydecay = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0, !dbg !1492
  %shift_vec = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 48, !dbg !1492
  %2 = load [3 x float]** %shift_vec, align 8, !dbg !1492, !tbaa !1289
  tail call void @calc_shifts([3 x float]* %arraydecay, float* %box_size, [3 x float]* %2) #6, !dbg !1492
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !1493
  %3 = load i32* %nodeid, align 4, !dbg !1493, !tbaa !1255
  %idxprom = sext i32 %3 to i64, !dbg !1493
  %arrayidx = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom, !dbg !1493
  %4 = load i32* %arrayidx, align 4, !dbg !1493, !tbaa !1255
  store i32 %4, i32* %start, align 4, !dbg !1493, !tbaa !1255
  %5 = load i32* %nodeid, align 4, !dbg !1494, !tbaa !1255
  %idxprom3 = sext i32 %5 to i64, !dbg !1494
  %arrayidx4 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom3, !dbg !1494
  %6 = load i32* %arrayidx4, align 4, !dbg !1494, !tbaa !1255
  %add = add nsw i32 %6, %4, !dbg !1494
  store i32 %add, i32* %end, align 4, !dbg !1494, !tbaa !1255
  %7 = load float* %lambda, align 4, !dbg !1495, !tbaa !1261
  tail call void @init_mdatoms(%struct.t_mdatoms* %mdatoms, float %7, i32 1) #6, !dbg !1495
  %8 = load i32* %start, align 4, !dbg !1496, !tbaa !1255
  %nodeid5 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0, !dbg !1496
  %9 = load i32* %nodeid5, align 4, !dbg !1496, !tbaa !1255
  %idxprom6 = sext i32 %9 to i64, !dbg !1496
  %arrayidx8 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom6, !dbg !1496
  %10 = load i32* %arrayidx8, align 4, !dbg !1496, !tbaa !1255
  %nstcomm = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 7, !dbg !1496
  %11 = load i32* %nstcomm, align 4, !dbg !1496, !tbaa !1255
  %call10 = tail call %struct.t_vcm* @init_vcm(%struct._IO_FILE* %log, %struct.t_topology* %top, %struct.t_commrec* %cr, %struct.t_mdatoms* %mdatoms, i32 %8, i32 %10, i32 %11) #6, !dbg !1496
  store %struct.t_vcm* %call10, %struct.t_vcm** %vcm, align 8, !dbg !1496, !tbaa !1289
  ret void, !dbg !1497
}

; Function Attrs: optsize
declare i64 @print_date_and_time(%struct._IO_FILE*, i32, i8*) #3

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: optsize
declare void @set_pot_bools(%struct.t_inputrec*, %struct.t_topology*, i32*, i32*, i32*, i32*) #3

; Function Attrs: optsize
declare i32 @open_enx(i8*, i8*) #3

; Function Attrs: optsize
declare i8* @ftp2fn(i32, i32, %struct.t_filenm*) #3

; Function Attrs: optsize
declare %struct.t_mdebin* @init_mdebin(i32, %struct.t_groups*, %struct.t_atoms*, %struct.t_idef*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.t_commrec*) #3

; Function Attrs: optsize
declare void @do_pbc_first(%struct._IO_FILE*, %struct.t_parm*, float*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @sp_header(%struct._IO_FILE* nocapture %out, i8* %minimizer, float %ftol, i32 %nsteps) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !1196), !dbg !1498
  tail call void @llvm.dbg.value(metadata !{i8* %minimizer}, i64 0, metadata !1197), !dbg !1498
  tail call void @llvm.dbg.value(metadata !{float %ftol}, i64 0, metadata !1198), !dbg !1498
  tail call void @llvm.dbg.value(metadata !{i32 %nsteps}, i64 0, metadata !1199), !dbg !1498
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([5 x i8]* @.str40, i64 0, i64 0), i8* %minimizer) #6, !dbg !1499
  %conv = fpext float %ftol to double, !dbg !1500
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([31 x i8]* @.str41, i64 0, i64 0), double %conv) #6, !dbg !1500
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([29 x i8]* @.str42, i64 0, i64 0), i32 %nsteps) #6, !dbg !1501
  ret void, !dbg !1502
}

; Function Attrs: optsize
declare void @construct_dummies(%struct._IO_FILE*, [3 x float]*, %struct.t_nrnb*, float, [3 x float]*, %struct.t_idef*, %struct.t_graph*, %struct.t_commrec*, [3 x float]*, %struct.t_comm_dummies*) #3

; Function Attrs: optsize
declare void @do_force(%struct._IO_FILE*, %struct.t_commrec*, %struct.t_commrec*, %struct.t_parm*, %struct.t_nsborder*, [3 x float]*, [3 x float]*, i32, %struct.t_nrnb*, %struct.t_topology*, %struct.t_groups*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_mdatoms*, float*, %struct.t_fcdata*, i32, float, %struct.t_graph*, i32, i32, %struct.t_forcerec*, float*, i32) #3

; Function Attrs: optsize
declare void @_where(i8*, i32) #3

; Function Attrs: optsize
declare void @spread_dummy_f(%struct._IO_FILE*, [3 x float]*, [3 x float]*, %struct.t_nrnb*, %struct.t_idef*, %struct.t_comm_dummies*, %struct.t_commrec*) #3

; Function Attrs: optsize
declare void @sum_epot(%struct.t_grpopts*, %struct.t_groups*, float*) #3

; Function Attrs: optsize
declare void @global_stat(%struct._IO_FILE*, %struct.t_commrec*, float*, [3 x float]*, [3 x float]*, %struct.t_grpopts*, %struct.t_groups*, %struct.t_nrnb*, %struct.t_nrnb*, %struct.t_vcm*, float*) #3

; Function Attrs: optsize
declare void @upd_mdebin(%struct.t_mdebin*, %struct._IO_FILE*, float, i32, float, float*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_groups*, float*, i32) #3

; Function Attrs: optsize
declare void @print_ebin_header(%struct._IO_FILE*, i32, float, float, float) #3

; Function Attrs: optsize
declare void @print_ebin(i32, i32, i32, i32, %struct._IO_FILE*, i32, float, i32, i32, %struct.t_mdebin*, %struct.t_fcdata*, %struct.t_atoms*) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc float @f_norm(%struct.t_commrec* %cr, %struct.t_grpopts* nocapture %opts, %struct.t_mdatoms* nocapture %mdatoms, i32 %start, i32 %end, [3 x float]* nocapture %grad) #0 {
entry:
  %fnorm2 = alloca double, align 8
  call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !1181), !dbg !1503
  call void @llvm.dbg.value(metadata !{%struct.t_grpopts* %opts}, i64 0, metadata !1182), !dbg !1504
  call void @llvm.dbg.value(metadata !{%struct.t_mdatoms* %mdatoms}, i64 0, metadata !1183), !dbg !1504
  call void @llvm.dbg.value(metadata !{i32 %start}, i64 0, metadata !1184), !dbg !1505
  call void @llvm.dbg.value(metadata !{i32 %end}, i64 0, metadata !1185), !dbg !1505
  call void @llvm.dbg.value(metadata !{[3 x float]* %grad}, i64 0, metadata !1186), !dbg !1505
  call void @llvm.dbg.declare(metadata !{double* %fnorm2}, metadata !1187), !dbg !1506
  call void @llvm.dbg.value(metadata !1355, i64 0, metadata !1187), !dbg !1507
  store double 0.000000e+00, double* %fnorm2, align 8, !dbg !1507, !tbaa !1357
  call void @llvm.dbg.value(metadata !{i32 %start}, i64 0, metadata !1189), !dbg !1508
  %cmp34 = icmp slt i32 %start, %end, !dbg !1508
  br i1 %cmp34, label %for.body.lr.ph, label %for.end16, !dbg !1508

for.body.lr.ph:                                   ; preds = %entry
  %cFREEZE = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 17, !dbg !1510
  %0 = load i16** %cFREEZE, align 8, !dbg !1510, !tbaa !1289
  %nFreeze = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 8, !dbg !1512
  %1 = load [3 x i32]** %nFreeze, align 8, !dbg !1512, !tbaa !1289
  %2 = sext i32 %start to i64
  br label %for.body, !dbg !1508

for.body:                                         ; preds = %for.body.lr.ph, %for.inc14
  %3 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %8, %for.inc14 ]
  %indvars.iv36 = phi i64 [ %2, %for.body.lr.ph ], [ %indvars.iv.next37, %for.inc14 ]
  %arrayidx = getelementptr inbounds i16* %0, i64 %indvars.iv36, !dbg !1510
  %4 = load i16* %arrayidx, align 2, !dbg !1510, !tbaa !1358
  call void @llvm.dbg.value(metadata !126, i64 0, metadata !1190), !dbg !1514
  %idxprom6 = zext i16 %4 to i64, !dbg !1512
  br label %for.body4, !dbg !1514

for.body4:                                        ; preds = %for.inc, %for.body
  %5 = phi double [ %3, %for.body ], [ %8, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.inc ]
  %arrayidx8 = getelementptr inbounds [3 x i32]* %1, i64 %idxprom6, i64 %indvars.iv, !dbg !1512
  %6 = load i32* %arrayidx8, align 4, !dbg !1512, !tbaa !1255
  %tobool = icmp eq i32 %6, 0, !dbg !1512
  br i1 %tobool, label %if.then, label %for.inc, !dbg !1512

if.then:                                          ; preds = %for.body4
  %arrayidx12 = getelementptr inbounds [3 x float]* %grad, i64 %indvars.iv36, i64 %indvars.iv, !dbg !1515
  %7 = load float* %arrayidx12, align 4, !dbg !1515, !tbaa !1261
  tail call void @llvm.dbg.value(metadata !{float %7}, i64 0, metadata !1516), !dbg !1517
  %mul.i = fmul float %7, %7, !dbg !1518
  %conv13 = fpext float %mul.i to double, !dbg !1515
  call void @llvm.dbg.value(metadata !{double* %fnorm2}, i64 0, metadata !1187), !dbg !1515
  %add = fadd double %5, %conv13, !dbg !1515
  call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !1187), !dbg !1515
  store double %add, double* %fnorm2, align 8, !dbg !1515, !tbaa !1357
  br label %for.inc, !dbg !1515

for.inc:                                          ; preds = %for.body4, %if.then
  %8 = phi double [ %5, %for.body4 ], [ %add, %if.then ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1514
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1514
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !1514
  br i1 %exitcond, label %for.inc14, label %for.body4, !dbg !1514

for.inc14:                                        ; preds = %for.inc
  %indvars.iv.next37 = add i64 %indvars.iv36, 1, !dbg !1508
  %9 = trunc i64 %indvars.iv.next37 to i32, !dbg !1508
  %cmp = icmp slt i32 %9, %end, !dbg !1508
  br i1 %cmp, label %for.body, label %for.end16, !dbg !1508

for.end16:                                        ; preds = %for.inc14, %entry
  %10 = phi double [ 0.000000e+00, %entry ], [ %8, %for.inc14 ]
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !1520
  %11 = load i32* %nnodes, align 4, !dbg !1520, !tbaa !1255
  %cmp17 = icmp sgt i32 %11, 1, !dbg !1520
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !1520

lor.lhs.false:                                    ; preds = %for.end16
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5, !dbg !1520
  %12 = load i32* %nthreads, align 4, !dbg !1520, !tbaa !1255
  %cmp19 = icmp sgt i32 %12, 1, !dbg !1520
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !1520

if.then21:                                        ; preds = %lor.lhs.false, %for.end16
  call void @gmx_sumd(i32 1, double* %fnorm2, %struct.t_commrec* %cr) #6, !dbg !1521
  call void @llvm.dbg.value(metadata !{double* %fnorm2}, i64 0, metadata !1187), !dbg !1522
  %.pre = load double* %fnorm2, align 8, !dbg !1522, !tbaa !1357
  br label %if.end22, !dbg !1521

if.end22:                                         ; preds = %if.then21, %lor.lhs.false
  %13 = phi double [ %.pre, %if.then21 ], [ %10, %lor.lhs.false ]
  call void @llvm.dbg.value(metadata !{double* %fnorm2}, i64 0, metadata !1187), !dbg !1522
  %call23 = call double @sqrt(double %13) #6, !dbg !1522
  %conv24 = fptrunc double %call23 to float, !dbg !1522
  ret float %conv24, !dbg !1522
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #4

; Function Attrs: optsize
declare void @gmx_sumd(i32, double*, %struct.t_commrec*) #3

; Function Attrs: nounwind optsize
declare double @sqrt(double) #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc float @f_max(i32 %left, i32 %right, i32 %nnodes, %struct.t_grpopts* nocapture %opts, %struct.t_mdatoms* nocapture %mdatoms, i32 %start, i32 %end, [3 x float]* nocapture %grad, i32* %nfmax) #0 {
entry:
  %fmax2 = alloca float, align 4
  %fmax2_0 = alloca float, align 4
  %nfm = alloca float, align 4
  call void @llvm.dbg.value(metadata !{i32 %left}, i64 0, metadata !1146), !dbg !1523
  call void @llvm.dbg.value(metadata !{i32 %right}, i64 0, metadata !1147), !dbg !1523
  call void @llvm.dbg.value(metadata !{i32 %nnodes}, i64 0, metadata !1148), !dbg !1523
  call void @llvm.dbg.value(metadata !{%struct.t_grpopts* %opts}, i64 0, metadata !1149), !dbg !1524
  call void @llvm.dbg.value(metadata !{%struct.t_mdatoms* %mdatoms}, i64 0, metadata !1150), !dbg !1524
  call void @llvm.dbg.value(metadata !{i32 %start}, i64 0, metadata !1151), !dbg !1525
  call void @llvm.dbg.value(metadata !{i32 %end}, i64 0, metadata !1152), !dbg !1525
  call void @llvm.dbg.value(metadata !{[3 x float]* %grad}, i64 0, metadata !1153), !dbg !1525
  call void @llvm.dbg.value(metadata !{i32* %nfmax}, i64 0, metadata !1154), !dbg !1525
  call void @llvm.dbg.declare(metadata !{float* %fmax2}, metadata !1155), !dbg !1526
  call void @llvm.dbg.declare(metadata !{float* %fmax2_0}, metadata !1156), !dbg !1526
  call void @llvm.dbg.declare(metadata !{float* %nfm}, metadata !1158), !dbg !1526
  call void @llvm.dbg.value(metadata !1246, i64 0, metadata !1155), !dbg !1527
  store float 0.000000e+00, float* %fmax2, align 4, !dbg !1527, !tbaa !1261
  call void @llvm.dbg.value(metadata !1528, i64 0, metadata !1158), !dbg !1529
  store float -1.000000e+00, float* %nfm, align 4, !dbg !1529, !tbaa !1261
  call void @llvm.dbg.value(metadata !{i32 %start}, i64 0, metadata !1159), !dbg !1530
  %cmp65 = icmp slt i32 %start, %end, !dbg !1530
  br i1 %cmp65, label %for.body.lr.ph, label %for.end20, !dbg !1530

for.body.lr.ph:                                   ; preds = %entry
  %cFREEZE = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 17, !dbg !1532
  %0 = load i16** %cFREEZE, align 8, !dbg !1532, !tbaa !1289
  %nFreeze = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 8, !dbg !1534
  %1 = load [3 x i32]** %nFreeze, align 8, !dbg !1534, !tbaa !1289
  %2 = sext i32 %start to i64
  br label %for.body, !dbg !1530

for.body:                                         ; preds = %for.body.lr.ph, %for.inc18
  %3 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %9, %for.inc18 ]
  %4 = phi float [ -1.000000e+00, %for.body.lr.ph ], [ %10, %for.inc18 ]
  %indvars.iv68 = phi i64 [ %2, %for.body.lr.ph ], [ %indvars.iv.next69, %for.inc18 ]
  %arrayidx = getelementptr inbounds i16* %0, i64 %indvars.iv68, !dbg !1532
  %5 = load i16* %arrayidx, align 2, !dbg !1532, !tbaa !1358
  call void @llvm.dbg.value(metadata !1246, i64 0, metadata !1157), !dbg !1536
  call void @llvm.dbg.value(metadata !126, i64 0, metadata !1160), !dbg !1537
  %idxprom6 = zext i16 %5 to i64, !dbg !1534
  br label %for.body4, !dbg !1537

for.body4:                                        ; preds = %for.inc, %for.body
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.inc ]
  %fam.064 = phi float [ 0.000000e+00, %for.body ], [ %fam.1, %for.inc ]
  %arrayidx8 = getelementptr inbounds [3 x i32]* %1, i64 %idxprom6, i64 %indvars.iv, !dbg !1534
  %6 = load i32* %arrayidx8, align 4, !dbg !1534, !tbaa !1255
  %tobool = icmp eq i32 %6, 0, !dbg !1534
  br i1 %tobool, label %if.then, label %for.inc, !dbg !1534

if.then:                                          ; preds = %for.body4
  %arrayidx12 = getelementptr inbounds [3 x float]* %grad, i64 %indvars.iv68, i64 %indvars.iv, !dbg !1538
  %7 = load float* %arrayidx12, align 4, !dbg !1538, !tbaa !1261
  tail call void @llvm.dbg.value(metadata !{float %7}, i64 0, metadata !1539), !dbg !1540
  %mul.i = fmul float %7, %7, !dbg !1541
  %add = fadd float %fam.064, %mul.i, !dbg !1538
  call void @llvm.dbg.value(metadata !{float %add}, i64 0, metadata !1157), !dbg !1538
  br label %for.inc, !dbg !1538

for.inc:                                          ; preds = %for.body4, %if.then
  %fam.1 = phi float [ %fam.064, %for.body4 ], [ %add, %if.then ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1537
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1537
  %exitcond67 = icmp eq i32 %lftr.wideiv, 3, !dbg !1537
  br i1 %exitcond67, label %for.end, label %for.body4, !dbg !1537

for.end:                                          ; preds = %for.inc
  call void @llvm.dbg.value(metadata !{float* %fmax2}, i64 0, metadata !1155), !dbg !1542
  %cmp13 = fcmp ogt float %fam.1, %3, !dbg !1542
  br i1 %cmp13, label %if.then15, label %for.inc18, !dbg !1542

if.then15:                                        ; preds = %for.end
  call void @llvm.dbg.value(metadata !{float %fam.1}, i64 0, metadata !1155), !dbg !1543
  store float %fam.1, float* %fmax2, align 4, !dbg !1543, !tbaa !1261
  %8 = trunc i64 %indvars.iv68 to i32, !dbg !1545
  %conv16 = sitofp i32 %8 to float, !dbg !1545
  call void @llvm.dbg.value(metadata !{float %conv16}, i64 0, metadata !1158), !dbg !1545
  store float %conv16, float* %nfm, align 4, !dbg !1545, !tbaa !1261
  br label %for.inc18, !dbg !1546

for.inc18:                                        ; preds = %for.end, %if.then15
  %9 = phi float [ %3, %for.end ], [ %fam.1, %if.then15 ]
  %10 = phi float [ %4, %for.end ], [ %conv16, %if.then15 ]
  %indvars.iv.next69 = add i64 %indvars.iv68, 1, !dbg !1530
  %11 = trunc i64 %indvars.iv.next69 to i32, !dbg !1530
  %cmp = icmp slt i32 %11, %end, !dbg !1530
  br i1 %cmp, label %for.body, label %for.end20, !dbg !1530

for.end20:                                        ; preds = %for.inc18, %entry
  %12 = phi float [ 0.000000e+00, %entry ], [ %9, %for.inc18 ]
  %13 = phi float [ -1.000000e+00, %entry ], [ %10, %for.inc18 ]
  call void @llvm.dbg.value(metadata !{float* %nfm}, i64 0, metadata !1158), !dbg !1547
  %conv21 = fptosi float %13 to i32, !dbg !1547
  store i32 %conv21, i32* %nfmax, align 4, !dbg !1547, !tbaa !1255
  %cmp22 = icmp sgt i32 %nnodes, 1, !dbg !1548
  br i1 %cmp22, label %for.cond25.preheader, label %if.end37, !dbg !1548

for.cond25.preheader:                             ; preds = %for.end20
  %sub = add i32 %nnodes, -1, !dbg !1549
  %cmp2661 = icmp sgt i32 %sub, 0, !dbg !1549
  br i1 %cmp2661, label %for.body28.lr.ph, label %if.end37, !dbg !1549

for.body28.lr.ph:                                 ; preds = %for.cond25.preheader
  %14 = bitcast float* %fmax2 to i8*, !dbg !1552
  %15 = bitcast float* %fmax2_0 to i8*, !dbg !1554
  %16 = bitcast i32* %nfmax to i8*, !dbg !1555
  %17 = bitcast float* %nfm to i8*, !dbg !1556
  br label %for.body28, !dbg !1549

for.body28:                                       ; preds = %for.inc34, %for.body28.lr.ph
  %i.162 = phi i32 [ 0, %for.body28.lr.ph ], [ %inc35, %for.inc34 ]
  call void @gmx_tx(i32 %left, i8* %14, i32 4) #6, !dbg !1552
  call void @gmx_rx(i32 %right, i8* %15, i32 4) #6, !dbg !1554
  call void @gmx_wait(i32 %left, i32 %right) #6, !dbg !1557
  call void @gmx_tx(i32 %left, i8* %16, i32 4) #6, !dbg !1555
  call void @gmx_rx(i32 %right, i8* %17, i32 4) #6, !dbg !1556
  call void @gmx_wait(i32 %left, i32 %right) #6, !dbg !1558
  call void @llvm.dbg.value(metadata !{float* %fmax2_0}, i64 0, metadata !1156), !dbg !1559
  %18 = load float* %fmax2_0, align 4, !dbg !1559, !tbaa !1261
  call void @llvm.dbg.value(metadata !{float* %fmax2}, i64 0, metadata !1155), !dbg !1559
  %19 = load float* %fmax2, align 4, !dbg !1559, !tbaa !1261
  %cmp29 = fcmp ogt float %18, %19, !dbg !1559
  br i1 %cmp29, label %if.then31, label %for.inc34, !dbg !1559

if.then31:                                        ; preds = %for.body28
  call void @llvm.dbg.value(metadata !{float %18}, i64 0, metadata !1155), !dbg !1560
  store float %18, float* %fmax2, align 4, !dbg !1560, !tbaa !1261
  call void @llvm.dbg.value(metadata !{float* %nfm}, i64 0, metadata !1158), !dbg !1562
  %20 = load float* %nfm, align 4, !dbg !1562, !tbaa !1261
  %conv32 = fptosi float %20 to i32, !dbg !1562
  store i32 %conv32, i32* %nfmax, align 4, !dbg !1562, !tbaa !1255
  br label %for.inc34, !dbg !1563

for.inc34:                                        ; preds = %for.body28, %if.then31
  %21 = phi float [ %19, %for.body28 ], [ %18, %if.then31 ]
  %inc35 = add nsw i32 %i.162, 1, !dbg !1549
  call void @llvm.dbg.value(metadata !{i32 %inc35}, i64 0, metadata !1159), !dbg !1549
  %exitcond = icmp eq i32 %inc35, %sub, !dbg !1549
  br i1 %exitcond, label %if.end37, label %for.body28, !dbg !1549

if.end37:                                         ; preds = %for.cond25.preheader, %for.inc34, %for.end20
  %22 = phi float [ %12, %for.end20 ], [ %12, %for.cond25.preheader ], [ %21, %for.inc34 ]
  call void @llvm.dbg.value(metadata !{float* %fmax2}, i64 0, metadata !1155), !dbg !1564
  %conv40 = call float @sqrtf(float %22) #4, !dbg !1564
  ret float %conv40, !dbg !1564
}

; Function Attrs: optsize
declare i32 @write_traj(%struct._IO_FILE*, %struct.t_commrec*, i8*, %struct.t_nsborder*, i32, float, float, %struct.t_nrnb*, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*) #3

; Function Attrs: optsize
declare void @write_sto_conf(i8*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, [3 x float]*) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @print_converged(%struct._IO_FILE* nocapture %fp, i8* %alg, float %ftol, i32 %count, i32 %bDone, i32 %nsteps, float %epot, float %fmax) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !1133), !dbg !1565
  tail call void @llvm.dbg.value(metadata !{i8* %alg}, i64 0, metadata !1134), !dbg !1565
  tail call void @llvm.dbg.value(metadata !{float %ftol}, i64 0, metadata !1135), !dbg !1565
  tail call void @llvm.dbg.value(metadata !{i32 %count}, i64 0, metadata !1136), !dbg !1565
  tail call void @llvm.dbg.value(metadata !{i32 %bDone}, i64 0, metadata !1137), !dbg !1565
  tail call void @llvm.dbg.value(metadata !{i32 %nsteps}, i64 0, metadata !1138), !dbg !1566
  tail call void @llvm.dbg.value(metadata !{float %epot}, i64 0, metadata !1139), !dbg !1566
  tail call void @llvm.dbg.value(metadata !{float %fmax}, i64 0, metadata !1140), !dbg !1566
  %tobool = icmp eq i32 %bDone, 0, !dbg !1567
  br i1 %tobool, label %if.else, label %if.then, !dbg !1567

if.then:                                          ; preds = %entry
  %conv = fpext float %ftol to double, !dbg !1568
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([33 x i8]* @.str36, i64 0, i64 0), i8* %alg, double %conv, i32 %count) #6, !dbg !1568
  br label %if.end, !dbg !1568

if.else:                                          ; preds = %entry
  %cmp = icmp slt i32 %count, %nsteps, !dbg !1569
  %cond = select i1 %cmp, i32 %count, i32 %nsteps, !dbg !1569
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([34 x i8]* @.str37, i64 0, i64 0), i8* %alg, i32 %cond) #6, !dbg !1569
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv3 = fpext float %epot to double, !dbg !1570
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([30 x i8]* @.str38, i64 0, i64 0), double %conv3) #6, !dbg !1570
  %conv5 = fpext float %fmax to double, !dbg !1571
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([23 x i8]* @.str39, i64 0, i64 0), double %conv5) #6, !dbg !1571
  ret void, !dbg !1572
}

; Function Attrs: optsize
declare void @close_enx(i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

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
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !983), !dbg !1573
  call void @llvm.dbg.value(metadata !{i32 %nfile}, i64 0, metadata !984), !dbg !1573
  call void @llvm.dbg.value(metadata !{%struct.t_filenm* %fnm}, i64 0, metadata !985), !dbg !1573
  call void @llvm.dbg.value(metadata !{%struct.t_parm* %parm}, i64 0, metadata !986), !dbg !1574
  call void @llvm.dbg.value(metadata !{%struct.t_topology* %top}, i64 0, metadata !987), !dbg !1574
  call void @llvm.dbg.value(metadata !{%struct.t_groups* %grps}, i64 0, metadata !988), !dbg !1575
  call void @llvm.dbg.value(metadata !{%struct.t_nsborder* %nsb}, i64 0, metadata !989), !dbg !1575
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !990), !dbg !1576
  call void @llvm.dbg.value(metadata !{[3 x float]* %grad}, i64 0, metadata !991), !dbg !1576
  call void @llvm.dbg.value(metadata !{[3 x float]* %buf}, i64 0, metadata !992), !dbg !1576
  call void @llvm.dbg.value(metadata !{%struct.t_mdatoms* %mdatoms}, i64 0, metadata !993), !dbg !1576
  call void @llvm.dbg.value(metadata !{[3 x float]* %ekin}, i64 0, metadata !994), !dbg !1577
  call void @llvm.dbg.value(metadata !{float* %ener}, i64 0, metadata !995), !dbg !1577
  call void @llvm.dbg.value(metadata !{%struct.t_fcdata* %fcd}, i64 0, metadata !996), !dbg !1577
  call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %nrnb}, i64 0, metadata !997), !dbg !1577
  call void @llvm.dbg.value(metadata !{i32 %bVerbose}, i64 0, metadata !998), !dbg !1578
  call void @llvm.dbg.value(metadata !{i32 %bDummies}, i64 0, metadata !999), !dbg !1578
  call void @llvm.dbg.value(metadata !{%struct.t_comm_dummies* %dummycomm}, i64 0, metadata !1000), !dbg !1578
  call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !1001), !dbg !1579
  call void @llvm.dbg.value(metadata !{%struct.t_commrec* %mcr}, i64 0, metadata !1002), !dbg !1579
  call void @llvm.dbg.value(metadata !{%struct.t_graph* %graph}, i64 0, metadata !1003), !dbg !1579
  call void @llvm.dbg.value(metadata !{%struct.t_forcerec* %fr}, i64 0, metadata !1004), !dbg !1580
  call void @llvm.dbg.value(metadata !{float* %box_size}, i64 0, metadata !1005), !dbg !1580
  call void @llvm.dbg.declare(metadata !{float* %lambda}, metadata !1008), !dbg !1581
  call void @llvm.dbg.declare(metadata !{[2 x [3 x float]*]* %pos}, metadata !1010), !dbg !1582
  call void @llvm.dbg.declare(metadata !{[2 x [3 x float]*]* %force}, metadata !1014), !dbg !1582
  call void @llvm.dbg.value(metadata !1583, i64 0, metadata !1015), !dbg !1582
  call void @llvm.dbg.declare(metadata !{[2 x float]* %Fmax}, metadata !1018), !dbg !1584
  call void @llvm.dbg.declare(metadata !{[2 x float]* %Epot}, metadata !1020), !dbg !1585
  call void @llvm.dbg.declare(metadata !{float* %dvdlambda}, metadata !1022), !dbg !1586
  call void @llvm.dbg.declare(metadata !{%struct.t_vcm** %vcm}, metadata !1023), !dbg !1587
  %0 = bitcast %struct.t_nrnb* %mynrnb to i8*, !dbg !1588
  call void @llvm.lifetime.start(i64 1032, i8* %0) #2, !dbg !1588
  call void @llvm.dbg.declare(metadata !{%struct.t_nrnb* %mynrnb}, metadata !1026), !dbg !1588
  call void @llvm.dbg.declare(metadata !{i32* %bLR}, metadata !1029), !dbg !1589
  call void @llvm.dbg.declare(metadata !{i32* %bLJLR}, metadata !1030), !dbg !1589
  call void @llvm.dbg.declare(metadata !{i32* %bBHAM}, metadata !1031), !dbg !1589
  call void @llvm.dbg.declare(metadata !{i32* %b14}, metadata !1032), !dbg !1589
  %1 = bitcast [3 x [3 x float]]* %force_vir to i8*, !dbg !1590
  call void @llvm.lifetime.start(i64 36, i8* %1) #2, !dbg !1590
  call void @llvm.dbg.declare(metadata !{[3 x [3 x float]]* %force_vir}, metadata !1034), !dbg !1590
  %2 = bitcast [3 x [3 x float]]* %shake_vir to i8*, !dbg !1590
  call void @llvm.lifetime.start(i64 36, i8* %2) #2, !dbg !1590
  call void @llvm.dbg.declare(metadata !{[3 x [3 x float]]* %shake_vir}, metadata !1035), !dbg !1590
  %3 = bitcast [3 x [3 x float]]* %pme_vir to i8*, !dbg !1590
  call void @llvm.lifetime.start(i64 36, i8* %3) #2, !dbg !1590
  call void @llvm.dbg.declare(metadata !{[3 x [3 x float]]* %pme_vir}, metadata !1036), !dbg !1590
  call void @llvm.dbg.declare(metadata !{[3 x float]* %mu_tot}, metadata !1037), !dbg !1591
  call void @llvm.dbg.declare(metadata !{i32* %nfmax}, metadata !1038), !dbg !1592
  call void @llvm.dbg.value(metadata !126, i64 0, metadata !1040), !dbg !1593
  call void @llvm.dbg.declare(metadata !{i32* %start}, metadata !1043), !dbg !1594
  call void @llvm.dbg.declare(metadata !{i32* %end}, metadata !1044), !dbg !1594
  call void @llvm.dbg.value(metadata !126, i64 0, metadata !1046), !dbg !1595
  call void @llvm.dbg.value(metadata !126, i64 0, metadata !1047), !dbg !1596
  call void @llvm.dbg.declare(metadata !{float* %terminate}, metadata !1049), !dbg !1597
  call void @llvm.dbg.value(metadata !1246, i64 0, metadata !1049), !dbg !1597
  store float 0.000000e+00, float* %terminate, align 4, !dbg !1597, !tbaa !1261
  %arraydecay = getelementptr inbounds [3 x float]* %mu_tot, i64 0, i64 0, !dbg !1598
  call fastcc void @init_em(%struct._IO_FILE* %log, i8* getelementptr inbounds ([18 x i8]* @.str18, i64 0, i64 0), %struct.t_parm* %parm, float* %lambda, %struct.t_nrnb* %mynrnb, float* %arraydecay, float* %box_size, %struct.t_forcerec* %fr, %struct.t_mdatoms* %mdatoms, %struct.t_topology* %top, %struct.t_nsborder* %nsb, %struct.t_commrec* %cr, %struct.t_vcm** %vcm, i32* %start, i32* %end) #5, !dbg !1598
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !1599
  %4 = load i32* %nodeid, align 4, !dbg !1599, !tbaa !1255
  %call = call i64 @print_date_and_time(%struct._IO_FILE* %log, i32 %4, i8* getelementptr inbounds ([26 x i8]* @.str19, i64 0, i64 0)) #6, !dbg !1599
  call void @llvm.dbg.value(metadata !{i64 %call}, i64 0, metadata !1033), !dbg !1599
  call void @llvm.dbg.value(metadata !126, i64 0, metadata !1041), !dbg !1600
  %natoms = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3, !dbg !1602
  br label %for.body, !dbg !1600

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv918 = phi i64 [ 0, %entry ], [ %indvars.iv.next919, %for.body ]
  %5 = load i32* %natoms, align 4, !dbg !1602, !tbaa !1255
  %call1 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 571, i32 %5, i32 12) #6, !dbg !1602
  %6 = bitcast i8* %call1 to [3 x float]*, !dbg !1602
  %arrayidx = getelementptr inbounds [2 x [3 x float]*]* %pos, i64 0, i64 %indvars.iv918, !dbg !1602
  store [3 x float]* %6, [3 x float]** %arrayidx, align 8, !dbg !1602, !tbaa !1289
  %7 = load i32* %natoms, align 4, !dbg !1604, !tbaa !1255
  %call3 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 572, i32 %7, i32 12) #6, !dbg !1604
  %8 = bitcast i8* %call3 to [3 x float]*, !dbg !1604
  %arrayidx5 = getelementptr inbounds [2 x [3 x float]*]* %force, i64 0, i64 %indvars.iv918, !dbg !1604
  store [3 x float]* %8, [3 x float]** %arrayidx5, align 8, !dbg !1604, !tbaa !1289
  %indvars.iv.next919 = add i64 %indvars.iv918, 1, !dbg !1600
  %lftr.wideiv920 = trunc i64 %indvars.iv.next919 to i32, !dbg !1600
  %exitcond921 = icmp eq i32 %lftr.wideiv920, 2, !dbg !1600
  br i1 %exitcond921, label %for.end, label %for.body, !dbg !1600

for.end:                                          ; preds = %for.body
  %ir = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, !dbg !1605
  call void @set_pot_bools(%struct.t_inputrec* %ir, %struct.t_topology* %top, i32* %bLR, i32* %bLJLR, i32* %bBHAM, i32* %b14) #6, !dbg !1605
  %9 = load i32* %nodeid, align 4, !dbg !1606, !tbaa !1255
  %cmp7 = icmp eq i32 %9, 0, !dbg !1606
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !1606

land.lhs.true:                                    ; preds = %for.end
  %threadid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4, !dbg !1606
  %10 = load i32* %threadid, align 4, !dbg !1606, !tbaa !1255
  %cmp8 = icmp eq i32 %10, 0, !dbg !1606
  br i1 %cmp8, label %if.then, label %if.end, !dbg !1606

if.then:                                          ; preds = %land.lhs.true
  %call9 = call i8* @ftp2fn(i32 8, i32 %nfile, %struct.t_filenm* %fnm) #6, !dbg !1607
  %call10 = call i32 @open_enx(i8* %call9, i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #6, !dbg !1607
  call void @llvm.dbg.value(metadata !{i32 %call10}, i64 0, metadata !1024), !dbg !1607
  br label %if.end, !dbg !1607

if.end:                                           ; preds = %for.end, %land.lhs.true, %if.then
  %fp_ene.0 = phi i32 [ %call10, %if.then ], [ -1, %land.lhs.true ], [ -1, %for.end ]
  %atoms = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, !dbg !1608
  %idef = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, !dbg !1608
  call void @llvm.dbg.value(metadata !{i32* %bLR}, i64 0, metadata !1029), !dbg !1608
  %11 = load i32* %bLR, align 4, !dbg !1608, !tbaa !1255
  call void @llvm.dbg.value(metadata !{i32* %bLJLR}, i64 0, metadata !1030), !dbg !1608
  %12 = load i32* %bLJLR, align 4, !dbg !1608, !tbaa !1255
  call void @llvm.dbg.value(metadata !{i32* %bBHAM}, i64 0, metadata !1031), !dbg !1608
  %13 = load i32* %bBHAM, align 4, !dbg !1608, !tbaa !1255
  call void @llvm.dbg.value(metadata !{i32* %b14}, i64 0, metadata !1032), !dbg !1608
  %14 = load i32* %b14, align 4, !dbg !1608, !tbaa !1255
  %efep = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 46, !dbg !1608
  %15 = load i32* %efep, align 4, !dbg !1608, !tbaa !1255
  %cmp12 = icmp ne i32 %15, 0, !dbg !1608
  %conv = zext i1 %cmp12 to i32, !dbg !1608
  %epc = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 28, !dbg !1608
  %16 = load i32* %epc, align 4, !dbg !1608, !tbaa !1255
  %eDispCorr = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 43, !dbg !1608
  %17 = load i32* %eDispCorr, align 4, !dbg !1608, !tbaa !1255
  %arrayidx17 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 32, i64 1, i64 0, !dbg !1609
  %18 = load float* %arrayidx17, align 4, !dbg !1609, !tbaa !1261
  %fabsf = call float @fabsf(float %18) #7, !dbg !1609
  %19 = fpext float %fabsf to double, !dbg !1609
  %cmp20 = fcmp ogt double %19, 1.200000e-38, !dbg !1609
  br i1 %cmp20, label %lor.end, label %lor.lhs.false, !dbg !1609

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx25 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 32, i64 2, i64 0, !dbg !1609
  %20 = load float* %arrayidx25, align 4, !dbg !1609, !tbaa !1261
  %fabsf870 = call float @fabsf(float %20) #7, !dbg !1609
  %21 = fpext float %fabsf870 to double, !dbg !1609
  %cmp28 = fcmp ogt double %21, 1.200000e-38, !dbg !1609
  br i1 %cmp28, label %lor.end, label %lor.rhs, !dbg !1609

lor.rhs:                                          ; preds = %lor.lhs.false
  %arrayidx33 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 32, i64 2, i64 1, !dbg !1609
  %22 = load float* %arrayidx33, align 4, !dbg !1609, !tbaa !1261
  %fabsf871 = call float @fabsf(float %22) #7, !dbg !1609
  %23 = fpext float %fabsf871 to double, !dbg !1609
  %cmp36 = fcmp ogt double %23, 1.200000e-38, !dbg !1609
  br label %lor.end, !dbg !1609

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.end
  %24 = phi i1 [ true, %lor.lhs.false ], [ true, %if.end ], [ %cmp36, %lor.rhs ]
  %lor.ext = zext i1 %24 to i32, !dbg !1609
  %etc = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 27, !dbg !1609
  %25 = load i32* %etc, align 4, !dbg !1609, !tbaa !1255
  %cmp39 = icmp eq i32 %25, 2, !dbg !1609
  %conv40 = zext i1 %cmp39 to i32, !dbg !1609
  %call41 = call %struct.t_mdebin* @init_mdebin(i32 %fp_ene.0, %struct.t_groups* %grps, %struct.t_atoms* %atoms, %struct.t_idef* %idef, i32 %11, i32 %12, i32 %13, i32 %14, i32 %conv, i32 %16, i32 %17, i32 %lor.ext, i32 %conv40, %struct.t_commrec* %cr) #6, !dbg !1609
  call void @llvm.dbg.value(metadata !{%struct.t_mdebin* %call41}, i64 0, metadata !1025), !dbg !1609
  %arraydecay42 = getelementptr inbounds [3 x [3 x float]]* %force_vir, i64 0, i64 0, !dbg !1610
  call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay42}, i64 0, metadata !1611) #2, !dbg !1612
  call void @llvm.dbg.value(metadata !1246, i64 0, metadata !1613) #2, !dbg !1614
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 16, i1 false) #2, !dbg !1615
  %arraydecay43 = getelementptr inbounds [3 x [3 x float]]* %shake_vir, i64 0, i64 0, !dbg !1616
  call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay43}, i64 0, metadata !1617) #2, !dbg !1618
  call void @llvm.dbg.value(metadata !1246, i64 0, metadata !1619) #2, !dbg !1620
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 36, i32 16, i1 false) #2, !dbg !1621
  %ePBC = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 0, !dbg !1622
  %26 = load i32* %ePBC, align 4, !dbg !1622, !tbaa !1255
  %cmp44 = icmp eq i32 %26, 1, !dbg !1622
  br i1 %cmp44, label %if.end47, label %if.then46, !dbg !1622

if.then46:                                        ; preds = %lor.end
  call void @do_pbc_first(%struct._IO_FILE* %log, %struct.t_parm* %parm, float* %box_size, %struct.t_forcerec* %fr, %struct.t_graph* %graph, [3 x float]* %x) #6, !dbg !1623
  br label %if.end47, !dbg !1623

if.end47:                                         ; preds = %lor.end, %if.then46
  %27 = load %struct._IO_FILE** @stdlog, align 8, !dbg !1624, !tbaa !1289
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !1043), !dbg !1624
  %28 = load i32* %start, align 4, !dbg !1624, !tbaa !1255
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !1044), !dbg !1624
  %29 = load i32* %end, align 4, !dbg !1624, !tbaa !1255
  %call49 = call i32 @init_constraints(%struct._IO_FILE* %27, %struct.t_topology* %top, %struct.t_inputrec* %ir, %struct.t_mdatoms* %mdatoms, i32 %28, i32 %29, i32 0, %struct.t_commrec* %cr) #6, !dbg !1624
  call void @llvm.dbg.value(metadata !{i32 %call49}, i64 0, metadata !1048), !dbg !1624
  %tobool = icmp ne i32 %call49, 0, !dbg !1625
  br i1 %tobool, label %if.then50, label %if.end53, !dbg !1625

if.then50:                                        ; preds = %if.end47
  %30 = load i32* %natoms, align 4, !dbg !1626, !tbaa !1255
  %call52 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 603, i32 %30, i32 12) #6, !dbg !1626
  %31 = bitcast i8* %call52 to [3 x float]*, !dbg !1626
  call void @llvm.dbg.value(metadata !{[3 x float]* %31}, i64 0, metadata !1015), !dbg !1626
  br label %if.end53, !dbg !1626

if.end53:                                         ; preds = %if.then50, %if.end47
  %xcf.0 = phi [3 x float]* [ %31, %if.then50 ], [ null, %if.end47 ]
  call void @llvm.dbg.value(metadata !126, i64 0, metadata !1041), !dbg !1627
  %32 = load i32* %natoms, align 4, !dbg !1627, !tbaa !1255
  %cmp56897 = icmp sgt i32 %32, 0, !dbg !1627
  br i1 %cmp56897, label %for.body58.lr.ph, label %for.end77, !dbg !1627

for.body58.lr.ph:                                 ; preds = %if.end53
  %arrayidx64 = getelementptr inbounds [2 x [3 x float]*]* %pos, i64 0, i64 0, !dbg !1629
  %33 = load [3 x float]** %arrayidx64, align 16, !dbg !1629, !tbaa !1289
  %arrayidx72 = getelementptr inbounds [2 x [3 x float]*]* %pos, i64 0, i64 1, !dbg !1631
  %34 = load [3 x float]** %arrayidx72, align 8, !dbg !1631, !tbaa !1289
  br label %for.body58, !dbg !1627

for.body58:                                       ; preds = %for.body58.lr.ph, %for.body58
  %indvars.iv916 = phi i64 [ 0, %for.body58.lr.ph ], [ %indvars.iv.next917, %for.body58 ]
  %arraydecay61 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv916, i64 0, !dbg !1629
  %arraydecay66 = getelementptr inbounds [3 x float]* %33, i64 %indvars.iv916, i64 0, !dbg !1629
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay61}, i64 0, metadata !1632), !dbg !1633
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay66}, i64 0, metadata !1634), !dbg !1633
  %35 = load float* %arraydecay61, align 4, !dbg !1635, !tbaa !1261
  store float %35, float* %arraydecay66, align 4, !dbg !1635, !tbaa !1261
  %arrayidx2.i872 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv916, i64 1, !dbg !1636
  %36 = load float* %arrayidx2.i872, align 4, !dbg !1636, !tbaa !1261
  %arrayidx3.i873 = getelementptr inbounds [3 x float]* %33, i64 %indvars.iv916, i64 1, !dbg !1636
  store float %36, float* %arrayidx3.i873, align 4, !dbg !1636, !tbaa !1261
  %arrayidx4.i874 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv916, i64 2, !dbg !1637
  %37 = load float* %arrayidx4.i874, align 4, !dbg !1637, !tbaa !1261
  %arrayidx5.i875 = getelementptr inbounds [3 x float]* %33, i64 %indvars.iv916, i64 2, !dbg !1637
  store float %37, float* %arrayidx5.i875, align 4, !dbg !1637, !tbaa !1261
  %arraydecay74 = getelementptr inbounds [3 x float]* %34, i64 %indvars.iv916, i64 0, !dbg !1631
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay61}, i64 0, metadata !1638), !dbg !1639
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay74}, i64 0, metadata !1640), !dbg !1639
  %38 = load float* %arraydecay61, align 4, !dbg !1641, !tbaa !1261
  store float %38, float* %arraydecay74, align 4, !dbg !1641, !tbaa !1261
  %39 = load float* %arrayidx2.i872, align 4, !dbg !1642, !tbaa !1261
  %arrayidx3.i877 = getelementptr inbounds [3 x float]* %34, i64 %indvars.iv916, i64 1, !dbg !1642
  store float %39, float* %arrayidx3.i877, align 4, !dbg !1642, !tbaa !1261
  %40 = load float* %arrayidx4.i874, align 4, !dbg !1643, !tbaa !1261
  %arrayidx5.i879 = getelementptr inbounds [3 x float]* %34, i64 %indvars.iv916, i64 2, !dbg !1643
  store float %40, float* %arrayidx5.i879, align 4, !dbg !1643, !tbaa !1261
  %indvars.iv.next917 = add i64 %indvars.iv916, 1, !dbg !1627
  %41 = trunc i64 %indvars.iv.next917 to i32, !dbg !1627
  %cmp56 = icmp slt i32 %41, %32, !dbg !1627
  br i1 %cmp56, label %for.body58, label %for.end77, !dbg !1627

for.end77:                                        ; preds = %for.body58, %if.end53
  %em_stepsize = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 59, !dbg !1644
  %42 = load float* %em_stepsize, align 4, !dbg !1644, !tbaa !1261
  call void @llvm.dbg.value(metadata !{float %42}, i64 0, metadata !1021), !dbg !1644
  call void @llvm.dbg.value(metadata !1246, i64 0, metadata !1006), !dbg !1645
  %nsteps80 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 1, !dbg !1646
  %43 = load i32* %nsteps80, align 4, !dbg !1646, !tbaa !1255
  call void @llvm.dbg.value(metadata !{i32 %43}, i64 0, metadata !1039), !dbg !1646
  %44 = load i32* %nodeid, align 4, !dbg !1647, !tbaa !1255
  %cmp82 = icmp eq i32 %44, 0, !dbg !1647
  %threadid85 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4, !dbg !1647
  br i1 %cmp82, label %land.lhs.true84, label %if.end90, !dbg !1647

land.lhs.true84:                                  ; preds = %for.end77
  %45 = load i32* %threadid85, align 4, !dbg !1647, !tbaa !1255
  %cmp86 = icmp eq i32 %45, 0, !dbg !1647
  br i1 %cmp86, label %if.then88, label %if.end90, !dbg !1647

if.then88:                                        ; preds = %land.lhs.true84
  %46 = load %struct._IO_FILE** @stderr, align 8, !dbg !1648, !tbaa !1289
  %em_tol = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 60, !dbg !1648
  %47 = load float* %em_tol, align 4, !dbg !1648, !tbaa !1261
  call fastcc void @sp_header(%struct._IO_FILE* %46, i8* getelementptr inbounds ([18 x i8]* @.str18, i64 0, i64 0), float %47, i32 %43) #5, !dbg !1648
  br label %if.end90, !dbg !1648

if.end90:                                         ; preds = %for.end77, %if.then88, %land.lhs.true84
  %em_tol92 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 60, !dbg !1649
  %48 = load float* %em_tol92, align 4, !dbg !1649, !tbaa !1261
  call fastcc void @sp_header(%struct._IO_FILE* %log, i8* getelementptr inbounds ([18 x i8]* @.str18, i64 0, i64 0), float %48, i32 %43) #5, !dbg !1649
  call void @llvm.dbg.value(metadata !126, i64 0, metadata !1040), !dbg !1650
  call void @llvm.dbg.value(metadata !126, i64 0, metadata !1027), !dbg !1651
  call void @llvm.dbg.value(metadata !126, i64 0, metadata !1028), !dbg !1652
  %cmp95 = icmp sgt i32 %43, 0, !dbg !1653
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !1043), !dbg !1655
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !1044), !dbg !1655
  %cmp105883 = icmp slt i32 %28, %29, !dbg !1655
  %cFREEZE = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 17, !dbg !1657
  %nFreeze = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 8, !dbg !1659
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !1044), !dbg !1655
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !1043), !dbg !1661
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !1044), !dbg !1661
  %arraydecay171 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0, !dbg !1661
  call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !1008), !dbg !1661
  %49 = load float* %lambda, align 4, !dbg !1661, !tbaa !1261
  %tobool174 = icmp ne i32 %bDummies, 0, !dbg !1663
  %arraydecay187 = getelementptr inbounds [3 x [3 x float]]* %pme_vir, i64 0, i64 0, !dbg !1664
  %tobool197 = icmp ne i32 %bVerbose, 0, !dbg !1664
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !1664
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5, !dbg !1664
  call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !1008), !dbg !1581
  %nstlist = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 3
  %opts232 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, !dbg !1665
  call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !1008), !dbg !1666
  %left = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2, !dbg !1667
  %right = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3, !dbg !1667
  %nnodes245 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1, !dbg !1667
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !1043), !dbg !1667
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !1044), !dbg !1667
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !1043), !dbg !1669
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !1044), !dbg !1669
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !1043), !dbg !1671
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !1044), !dbg !1671
  call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !1008), !dbg !1671
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !1043), !dbg !1672
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !1044), !dbg !1672
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !1044), !dbg !1672
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !1044), !dbg !1669
  call void @llvm.dbg.value(metadata !{%struct.t_vcm** %vcm}, i64 0, metadata !1023), !dbg !1674
  %50 = load %struct.t_vcm** %vcm, align 8, !dbg !1674, !tbaa !1289
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !1043), !dbg !1675
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !1044), !dbg !1675
  %arrayidx355 = getelementptr inbounds float* %ener, i64 37, !dbg !1676
  %tmass = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 0, !dbg !1677
  %arraydecay411 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 3, i64 0, !dbg !1677
  %arraydecay412 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 4, i64 0, !dbg !1677
  %nstdisreout = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 54, !dbg !1680
  %nstorireout = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 58, !dbg !1681
  %nstfout = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 11, !dbg !1682
  %nstxout = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 9, !dbg !1684
  call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !1008), !dbg !1685
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !1043), !dbg !1687
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !1044), !dbg !1687
  %51 = sext i32 %28 to i64
  br label %while.body, !dbg !1688

while.body:                                       ; preds = %if.end90, %if.end500
  %stepsize.0896 = phi float [ 0.000000e+00, %if.end90 ], [ %div491, %if.end500 ]
  %steps_accepted.0895 = phi i32 [ 0, %if.end90 ], [ %steps_accepted.1, %if.end500 ]
  %Min.0894 = phi i32 [ 0, %if.end90 ], [ %Min.1, %if.end500 ]
  %count.0893 = phi i32 [ 0, %if.end90 ], [ %inc501, %if.end500 ]
  %bDone.0892 = phi i32 [ 0, %if.end90 ], [ %bDone.1, %if.end500 ]
  %ustep.0891 = phi float [ %42, %if.end90 ], [ %ustep.1, %if.end500 ]
  %cmp98 = icmp eq i32 %count.0893, %43, !dbg !1653
  %cmp98. = and i1 %cmp95, %cmp98, !dbg !1653
  %land.ext = zext i1 %cmp98. to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext}, i64 0, metadata !1028), !dbg !1589
  %cmp101 = icmp sgt i32 %count.0893, 0, !dbg !1689
  %brmerge.demorgan = and i1 %cmp101, %cmp105883, !dbg !1689
  br i1 %brmerge.demorgan, label %for.body107.lr.ph, label %if.end162, !dbg !1689

for.body107.lr.ph:                                ; preds = %while.body
  %52 = load i16** %cFREEZE, align 8, !dbg !1657, !tbaa !1289
  %53 = load [3 x i32]** %nFreeze, align 8, !dbg !1659, !tbaa !1289
  %idxprom124 = sext i32 %Min.0894 to i64, !dbg !1690
  %arrayidx125 = getelementptr inbounds [2 x [3 x float]*]* %pos, i64 0, i64 %idxprom124, !dbg !1690
  %54 = load [3 x float]** %arrayidx125, align 8, !dbg !1690, !tbaa !1289
  %arrayidx145 = getelementptr inbounds [2 x [3 x float]*]* %force, i64 0, i64 %idxprom124, !dbg !1691
  %sub150 = sub nsw i32 1, %Min.0894, !dbg !1691
  %idxprom151 = sext i32 %sub150 to i64, !dbg !1691
  %arrayidx152 = getelementptr inbounds [2 x [3 x float]*]* %pos, i64 0, i64 %idxprom151, !dbg !1691
  br label %for.body107, !dbg !1655

for.body107:                                      ; preds = %for.body107.lr.ph, %for.inc159
  %indvars.iv902 = phi i64 [ %51, %for.body107.lr.ph ], [ %indvars.iv.next903, %for.inc159 ]
  %arrayidx109 = getelementptr inbounds i16* %52, i64 %indvars.iv902, !dbg !1657
  %55 = load i16* %arrayidx109, align 2, !dbg !1657, !tbaa !1358
  call void @llvm.dbg.value(metadata !126, i64 0, metadata !1042), !dbg !1692
  %idxprom116 = zext i16 %55 to i64, !dbg !1659
  br label %for.body114, !dbg !1692

for.body114:                                      ; preds = %for.inc156, %for.body107
  %indvars.iv900 = phi i64 [ 0, %for.body107 ], [ %indvars.iv.next901, %for.inc156 ]
  %arrayidx119 = getelementptr inbounds [3 x i32]* %53, i64 %idxprom116, i64 %indvars.iv900, !dbg !1659
  %56 = load i32* %arrayidx119, align 4, !dbg !1659, !tbaa !1255
  %tobool120 = icmp eq i32 %56, 0, !dbg !1659
  %arrayidx127 = getelementptr inbounds [3 x float]* %54, i64 %indvars.iv902, i64 %indvars.iv900, !dbg !1690
  %57 = load float* %arrayidx127, align 4, !dbg !1690, !tbaa !1261
  br i1 %tobool120, label %if.else135, label %if.then121, !dbg !1659

if.then121:                                       ; preds = %for.body114
  %58 = load [3 x float]** %arrayidx152, align 8, !dbg !1690, !tbaa !1289
  %arrayidx134 = getelementptr inbounds [3 x float]* %58, i64 %indvars.iv902, i64 %indvars.iv900, !dbg !1690
  store float %57, float* %arrayidx134, align 4, !dbg !1690, !tbaa !1261
  br label %for.inc156, !dbg !1690

if.else135:                                       ; preds = %for.body114
  %59 = load [3 x float]** %arrayidx145, align 8, !dbg !1691, !tbaa !1289
  %arrayidx147 = getelementptr inbounds [3 x float]* %59, i64 %indvars.iv902, i64 %indvars.iv900, !dbg !1691
  %60 = load float* %arrayidx147, align 4, !dbg !1691, !tbaa !1261
  %mul = fmul float %stepsize.0896, %60, !dbg !1691
  %add = fadd float %57, %mul, !dbg !1691
  %61 = load [3 x float]** %arrayidx152, align 8, !dbg !1691, !tbaa !1289
  %arrayidx154 = getelementptr inbounds [3 x float]* %61, i64 %indvars.iv902, i64 %indvars.iv900, !dbg !1691
  store float %add, float* %arrayidx154, align 4, !dbg !1691, !tbaa !1261
  br label %for.inc156

for.inc156:                                       ; preds = %if.then121, %if.else135
  %indvars.iv.next901 = add i64 %indvars.iv900, 1, !dbg !1692
  %lftr.wideiv = trunc i64 %indvars.iv.next901 to i32, !dbg !1692
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !1692
  br i1 %exitcond, label %for.inc159, label %for.body114, !dbg !1692

for.inc159:                                       ; preds = %for.inc156
  %indvars.iv.next903 = add i64 %indvars.iv902, 1, !dbg !1655
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !1044), !dbg !1655
  %62 = trunc i64 %indvars.iv.next903 to i32, !dbg !1655
  %cmp105 = icmp slt i32 %62, %29, !dbg !1655
  br i1 %cmp105, label %for.body107, label %if.end162, !dbg !1655

if.end162:                                        ; preds = %while.body, %for.inc159
  br i1 %tobool, label %if.then164, label %if.end173, !dbg !1693

if.then164:                                       ; preds = %if.end162
  call void @llvm.dbg.value(metadata !1246, i64 0, metadata !1022), !dbg !1694
  store float 0.000000e+00, float* %dvdlambda, align 4, !dbg !1694, !tbaa !1261
  %63 = load %struct._IO_FILE** @stdlog, align 8, !dbg !1661, !tbaa !1289
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !1043), !dbg !1661
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !1044), !dbg !1661
  %idxprom166 = sext i32 %Min.0894 to i64, !dbg !1661
  %arrayidx167 = getelementptr inbounds [2 x [3 x float]*]* %pos, i64 0, i64 %idxprom166, !dbg !1661
  %64 = load [3 x float]** %arrayidx167, align 8, !dbg !1661, !tbaa !1289
  %sub168 = sub nsw i32 1, %Min.0894, !dbg !1661
  %idxprom169 = sext i32 %sub168 to i64, !dbg !1661
  %arrayidx170 = getelementptr inbounds [2 x [3 x float]*]* %pos, i64 0, i64 %idxprom169, !dbg !1661
  %65 = load [3 x float]** %arrayidx170, align 8, !dbg !1661, !tbaa !1289
  call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !1008), !dbg !1661
  %call172 = call i32 @constrain(%struct._IO_FILE* %63, %struct.t_topology* %top, %struct.t_inputrec* %ir, i32 %count.0893, %struct.t_mdatoms* %mdatoms, i32 %28, i32 %29, [3 x float]* %64, [3 x float]* %65, [3 x float]* null, [3 x float]* %arraydecay171, float %49, float* %dvdlambda, %struct.t_nrnb* %nrnb, i32 1) #6, !dbg !1661
  br label %if.end173, !dbg !1695

if.end173:                                        ; preds = %if.then164, %if.end162
  %sub176 = sub nsw i32 1, %Min.0894, !dbg !1696
  %idxprom177 = sext i32 %sub176 to i64, !dbg !1696
  %arrayidx178 = getelementptr inbounds [2 x [3 x float]*]* %pos, i64 0, i64 %idxprom177, !dbg !1696
  br i1 %tobool174, label %if.then175, label %if.end185, !dbg !1663

if.then175:                                       ; preds = %if.end173
  %66 = load [3 x float]** %arrayidx178, align 8, !dbg !1696, !tbaa !1289
  %67 = load i32* %nodeid, align 4, !dbg !1696, !tbaa !1255
  %idxprom180 = sext i32 %67 to i64, !dbg !1696
  %arrayidx181 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %idxprom180, !dbg !1696
  call void @construct_dummies(%struct._IO_FILE* %log, [3 x float]* %66, %struct.t_nrnb* %arrayidx181, float 1.000000e+00, [3 x float]* null, %struct.t_idef* %idef, %struct.t_graph* %graph, %struct.t_commrec* %cr, [3 x float]* %arraydecay171, %struct.t_comm_dummies* %dummycomm) #6, !dbg !1696
  br label %if.end185, !dbg !1696

if.end185:                                        ; preds = %if.end173, %if.then175
  %68 = load i32* %nodeid, align 4, !dbg !1664, !tbaa !1255
  %idxprom189 = sext i32 %68 to i64, !dbg !1664
  %arrayidx190 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %idxprom189, !dbg !1664
  %69 = load [3 x float]** %arrayidx178, align 8, !dbg !1664, !tbaa !1289
  %arrayidx196 = getelementptr inbounds [2 x [3 x float]*]* %force, i64 0, i64 %idxprom177, !dbg !1664
  %70 = load [3 x float]** %arrayidx196, align 8, !dbg !1664, !tbaa !1289
  br i1 %tobool197, label %land.rhs198, label %land.end207, !dbg !1664

land.rhs198:                                      ; preds = %if.end185
  %71 = load i32* %nnodes, align 4, !dbg !1664, !tbaa !1255
  %cmp199 = icmp sgt i32 %71, 1, !dbg !1664
  br i1 %cmp199, label %land.end207, label %lor.rhs201, !dbg !1664

lor.rhs201:                                       ; preds = %land.rhs198
  %72 = load i32* %nthreads, align 4, !dbg !1664, !tbaa !1255
  %phitmp = icmp slt i32 %72, 2, !dbg !1664
  br label %land.end207, !dbg !1664

land.end207:                                      ; preds = %land.rhs198, %lor.rhs201, %if.end185
  %73 = phi i1 [ false, %if.end185 ], [ false, %land.rhs198 ], [ %phitmp, %lor.rhs201 ]
  %land.ext208 = zext i1 %73 to i32
  call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !1008), !dbg !1581
  %74 = load i32* %nstlist, align 4, !tbaa !1255
  %cmp210 = icmp sgt i32 %74, 0
  %cmp213 = icmp eq i32 %count.0893, 0
  %.cmp213 = or i1 %cmp210, %cmp213
  %lor.ext216 = zext i1 %.cmp213 to i32
  call void @do_force(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, [3 x float]* %arraydecay42, [3 x float]* %arraydecay187, i32 %count.0893, %struct.t_nrnb* %arrayidx190, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %69, [3 x float]* %buf, [3 x float]* %70, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, float* %ener, %struct.t_fcdata* %fcd, i32 %land.ext208, float %49, %struct.t_graph* %graph, i32 %lor.ext216, i32 0, %struct.t_forcerec* %fr, float* %arraydecay, i32 0) #6
  br i1 %tobool174, label %if.then219, label %if.end230, !dbg !1697

if.then219:                                       ; preds = %land.end207
  %75 = load i32* %nodeid, align 4, !dbg !1698, !tbaa !1255
  %idxprom227 = sext i32 %75 to i64, !dbg !1698
  %arrayidx228 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %idxprom227, !dbg !1698
  call void @spread_dummy_f(%struct._IO_FILE* %log, [3 x float]* %69, [3 x float]* %70, %struct.t_nrnb* %arrayidx228, %struct.t_idef* %idef, %struct.t_comm_dummies* %dummycomm, %struct.t_commrec* %cr) #6, !dbg !1698
  br label %if.end230, !dbg !1698

if.end230:                                        ; preds = %if.then219, %land.end207
  call void @sum_epot(%struct.t_grpopts* %opts232, %struct.t_groups* %grps, float* %ener) #6, !dbg !1665
  %76 = load i32* %nodeid, align 4, !dbg !1699, !tbaa !1255
  %cmp234 = icmp eq i32 %76, 0, !dbg !1699
  br i1 %cmp234, label %land.lhs.true236, label %if.end242, !dbg !1699

land.lhs.true236:                                 ; preds = %if.end230
  %77 = load i32* %threadid85, align 4, !dbg !1699, !tbaa !1255
  %cmp238 = icmp eq i32 %77, 0, !dbg !1699
  br i1 %cmp238, label %if.then240, label %if.end242, !dbg !1699

if.then240:                                       ; preds = %land.lhs.true236
  %conv241 = sitofp i32 %count.0893 to float, !dbg !1666
  call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !1008), !dbg !1666
  call void @print_ebin_header(%struct._IO_FILE* %log, i32 %count.0893, float %conv241, float %49, float 0.000000e+00) #6, !dbg !1666
  br label %if.end242, !dbg !1666

if.end242:                                        ; preds = %if.then240, %land.lhs.true236, %if.end230
  br i1 %tobool, label %if.then244, label %if.end327, !dbg !1700

if.then244:                                       ; preds = %if.end242
  %78 = load i32* %left, align 4, !dbg !1667, !tbaa !1255
  %79 = load i32* %right, align 4, !dbg !1667, !tbaa !1255
  %80 = load i32* %nnodes245, align 4, !dbg !1667, !tbaa !1255
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !1043), !dbg !1667
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !1044), !dbg !1667
  %call251 = call fastcc float @f_max(i32 %78, i32 %79, i32 %80, %struct.t_grpopts* %opts232, %struct.t_mdatoms* %mdatoms, i32 %28, i32 %29, [3 x float]* %70, i32* %nfmax) #5, !dbg !1667
  call void @llvm.dbg.value(metadata !{float %call251}, i64 0, metadata !1009), !dbg !1667
  %div = fdiv float %ustep.0891, %call251, !dbg !1701
  call void @llvm.dbg.value(metadata !{float %div}, i64 0, metadata !1007), !dbg !1701
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !1043), !dbg !1669
  call void @llvm.dbg.value(metadata !{i32 %28}, i64 0, metadata !1041), !dbg !1669
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !1044), !dbg !1669
  br i1 %cmp105883, label %for.cond256.preheader, label %for.end285.thread, !dbg !1669

for.end285.thread:                                ; preds = %if.then244
  call void @llvm.dbg.value(metadata !1246, i64 0, metadata !1022), !dbg !1702
  store float 0.000000e+00, float* %dvdlambda, align 4, !dbg !1702, !tbaa !1261
  %81 = load %struct._IO_FILE** @stdlog, align 8, !dbg !1671, !tbaa !1289
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !1043), !dbg !1671
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !1044), !dbg !1671
  call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !1008), !dbg !1671
  %call292924 = call i32 @constrain(%struct._IO_FILE* %81, %struct.t_topology* %top, %struct.t_inputrec* %ir, i32 %count.0893, %struct.t_mdatoms* %mdatoms, i32 %28, i32 %29, [3 x float]* %69, [3 x float]* %xcf.0, [3 x float]* null, [3 x float]* %arraydecay171, float %49, float* %dvdlambda, %struct.t_nrnb* %nrnb, i32 1) #6, !dbg !1671
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !1043), !dbg !1672
  call void @llvm.dbg.value(metadata !{i32 %28}, i64 0, metadata !1041), !dbg !1672
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !1044), !dbg !1672
  br label %if.end327, !dbg !1672

for.cond256.preheader:                            ; preds = %if.then244, %for.inc283
  %indvars.iv908 = phi i64 [ %indvars.iv.next909, %for.inc283 ], [ %51, %if.then244 ]
  br label %for.body259, !dbg !1703

for.body259:                                      ; preds = %for.body259, %for.cond256.preheader
  %indvars.iv904 = phi i64 [ 0, %for.cond256.preheader ], [ %indvars.iv.next905, %for.body259 ]
  %arrayidx266 = getelementptr inbounds [3 x float]* %69, i64 %indvars.iv908, i64 %indvars.iv904, !dbg !1705
  %82 = load float* %arrayidx266, align 4, !dbg !1705, !tbaa !1261
  %arrayidx273 = getelementptr inbounds [3 x float]* %70, i64 %indvars.iv908, i64 %indvars.iv904, !dbg !1705
  %83 = load float* %arrayidx273, align 4, !dbg !1705, !tbaa !1261
  %mul274 = fmul float %div, %83, !dbg !1705
  %add275 = fadd float %82, %mul274, !dbg !1705
  %arrayidx279 = getelementptr inbounds [3 x float]* %xcf.0, i64 %indvars.iv908, i64 %indvars.iv904, !dbg !1705
  store float %add275, float* %arrayidx279, align 4, !dbg !1705, !tbaa !1261
  %indvars.iv.next905 = add i64 %indvars.iv904, 1, !dbg !1703
  %lftr.wideiv906 = trunc i64 %indvars.iv.next905 to i32, !dbg !1703
  %exitcond907 = icmp eq i32 %lftr.wideiv906, 3, !dbg !1703
  br i1 %exitcond907, label %for.inc283, label %for.body259, !dbg !1703

for.inc283:                                       ; preds = %for.body259
  %indvars.iv.next909 = add i64 %indvars.iv908, 1, !dbg !1669
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !1044), !dbg !1669
  %84 = trunc i64 %indvars.iv.next909 to i32, !dbg !1669
  %cmp253 = icmp slt i32 %84, %29, !dbg !1669
  br i1 %cmp253, label %for.cond256.preheader, label %for.end285, !dbg !1669

for.end285:                                       ; preds = %for.inc283
  call void @llvm.dbg.value(metadata !1246, i64 0, metadata !1022), !dbg !1702
  store float 0.000000e+00, float* %dvdlambda, align 4, !dbg !1702, !tbaa !1261
  %85 = load %struct._IO_FILE** @stdlog, align 8, !dbg !1671, !tbaa !1289
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !1043), !dbg !1671
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !1044), !dbg !1671
  call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !1008), !dbg !1671
  %call292 = call i32 @constrain(%struct._IO_FILE* %85, %struct.t_topology* %top, %struct.t_inputrec* %ir, i32 %count.0893, %struct.t_mdatoms* %mdatoms, i32 %28, i32 %29, [3 x float]* %69, [3 x float]* %xcf.0, [3 x float]* null, [3 x float]* %arraydecay171, float %49, float* %dvdlambda, %struct.t_nrnb* %nrnb, i32 1) #6, !dbg !1671
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !1043), !dbg !1672
  call void @llvm.dbg.value(metadata !{i32 %28}, i64 0, metadata !1041), !dbg !1672
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !1044), !dbg !1672
  br i1 %cmp105883, label %for.cond297.preheader, label %if.end327, !dbg !1672

for.cond297.preheader:                            ; preds = %for.end285, %for.inc324
  %indvars.iv914 = phi i64 [ %indvars.iv.next915, %for.inc324 ], [ %51, %for.end285 ]
  br label %for.body300, !dbg !1706

for.body300:                                      ; preds = %for.body300, %for.cond297.preheader
  %indvars.iv910 = phi i64 [ 0, %for.cond297.preheader ], [ %indvars.iv.next911, %for.body300 ]
  %arrayidx304 = getelementptr inbounds [3 x float]* %xcf.0, i64 %indvars.iv914, i64 %indvars.iv910, !dbg !1708
  %86 = load float* %arrayidx304, align 4, !dbg !1708, !tbaa !1261
  %arrayidx311 = getelementptr inbounds [3 x float]* %69, i64 %indvars.iv914, i64 %indvars.iv910, !dbg !1708
  %87 = load float* %arrayidx311, align 4, !dbg !1708, !tbaa !1261
  %sub312 = fsub float %86, %87, !dbg !1708
  %div313 = fdiv float %sub312, %div, !dbg !1708
  %arrayidx320 = getelementptr inbounds [3 x float]* %70, i64 %indvars.iv914, i64 %indvars.iv910, !dbg !1708
  store float %div313, float* %arrayidx320, align 4, !dbg !1708, !tbaa !1261
  %indvars.iv.next911 = add i64 %indvars.iv910, 1, !dbg !1706
  %lftr.wideiv912 = trunc i64 %indvars.iv.next911 to i32, !dbg !1706
  %exitcond913 = icmp eq i32 %lftr.wideiv912, 3, !dbg !1706
  br i1 %exitcond913, label %for.inc324, label %for.body300, !dbg !1706

for.inc324:                                       ; preds = %for.body300
  %indvars.iv.next915 = add i64 %indvars.iv914, 1, !dbg !1672
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !1044), !dbg !1672
  %88 = trunc i64 %indvars.iv.next915 to i32, !dbg !1672
  %cmp294 = icmp slt i32 %88, %29, !dbg !1672
  br i1 %cmp294, label %for.cond297.preheader, label %if.end327, !dbg !1672

if.end327:                                        ; preds = %for.end285, %for.end285.thread, %for.inc324, %if.end242
  call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay42}, i64 0, metadata !1709) #2, !dbg !1711
  call void @llvm.dbg.value(metadata !1246, i64 0, metadata !1712) #2, !dbg !1713
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 16, i1 false) #2, !dbg !1714
  call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay43}, i64 0, metadata !1715) #2, !dbg !1717
  call void @llvm.dbg.value(metadata !1246, i64 0, metadata !1718) #2, !dbg !1719
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 36, i32 16, i1 false) #2, !dbg !1720
  %89 = load i32* %nnodes, align 4, !dbg !1721, !tbaa !1255
  %cmp331 = icmp sgt i32 %89, 1, !dbg !1721
  br i1 %cmp331, label %if.then337, label %lor.lhs.false333, !dbg !1721

lor.lhs.false333:                                 ; preds = %if.end327
  %90 = load i32* %nthreads, align 4, !dbg !1721, !tbaa !1255
  %cmp335 = icmp sgt i32 %90, 1, !dbg !1721
  br i1 %cmp335, label %if.then337, label %if.end342, !dbg !1721

if.then337:                                       ; preds = %lor.lhs.false333, %if.end327
  call void @llvm.dbg.value(metadata !{%struct.t_vcm** %vcm}, i64 0, metadata !1023), !dbg !1674
  call void @global_stat(%struct._IO_FILE* %log, %struct.t_commrec* %cr, float* %ener, [3 x float]* %arraydecay42, [3 x float]* %arraydecay43, %struct.t_grpopts* %opts232, %struct.t_groups* %grps, %struct.t_nrnb* %mynrnb, %struct.t_nrnb* %nrnb, %struct.t_vcm* %50, float* %terminate) #6, !dbg !1674
  br label %if.end342, !dbg !1674

if.end342:                                        ; preds = %if.then337, %lor.lhs.false333
  %91 = load i32* %left, align 4, !dbg !1675, !tbaa !1255
  %92 = load i32* %right, align 4, !dbg !1675, !tbaa !1255
  %93 = load i32* %nnodes245, align 4, !dbg !1675, !tbaa !1255
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !1043), !dbg !1675
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !1044), !dbg !1675
  %call351 = call fastcc float @f_max(i32 %91, i32 %92, i32 %93, %struct.t_grpopts* %opts232, %struct.t_mdatoms* %mdatoms, i32 %28, i32 %29, [3 x float]* %70, i32* %nfmax) #5, !dbg !1675
  %arrayidx354 = getelementptr inbounds [2 x float]* %Fmax, i64 0, i64 %idxprom177, !dbg !1675
  store float %call351, float* %arrayidx354, align 4, !dbg !1675, !tbaa !1261
  %94 = load float* %arrayidx355, align 4, !dbg !1676, !tbaa !1261
  %arrayidx358 = getelementptr inbounds [2 x float]* %Epot, i64 0, i64 %idxprom177, !dbg !1676
  store float %94, float* %arrayidx358, align 4, !dbg !1676, !tbaa !1261
  br i1 %cmp213, label %if.then361, label %if.end368, !dbg !1722

if.then361:                                       ; preds = %if.end342
  %add365 = fadd float %94, 1.000000e+00, !dbg !1723
  %idxprom366 = sext i32 %Min.0894 to i64, !dbg !1723
  %arrayidx367 = getelementptr inbounds [2 x float]* %Epot, i64 0, i64 %idxprom366, !dbg !1723
  store float %add365, float* %arrayidx367, align 4, !dbg !1723, !tbaa !1261
  br label %if.end368, !dbg !1723

if.end368:                                        ; preds = %if.then361, %if.end342
  %95 = load i32* %nodeid, align 4, !dbg !1724, !tbaa !1255
  %cmp370 = icmp eq i32 %95, 0, !dbg !1724
  br i1 %cmp370, label %land.lhs.true372, label %if.end426, !dbg !1724

land.lhs.true372:                                 ; preds = %if.end368
  %96 = load i32* %threadid85, align 4, !dbg !1724, !tbaa !1255
  %cmp374 = icmp eq i32 %96, 0, !dbg !1724
  br i1 %cmp374, label %if.then376, label %if.end426, !dbg !1724

if.then376:                                       ; preds = %land.lhs.true372
  br i1 %tobool197, label %if.then378, label %if.then376.if.end397_crit_edge, !dbg !1725

if.then376.if.end397_crit_edge:                   ; preds = %if.then376
  %.pre922 = load float* %arrayidx358, align 4, !dbg !1726, !tbaa !1261
  %idxprom401.phi.trans.insert = sext i32 %Min.0894 to i64
  %arrayidx402.phi.trans.insert = getelementptr inbounds [2 x float]* %Epot, i64 0, i64 %idxprom401.phi.trans.insert
  %.pre923 = load float* %arrayidx402.phi.trans.insert, align 4, !dbg !1726, !tbaa !1261
  br label %if.end397, !dbg !1725

if.then378:                                       ; preds = %if.then376
  %97 = load %struct._IO_FILE** @stderr, align 8, !dbg !1727, !tbaa !1289
  %conv379 = fpext float %ustep.0891 to double, !dbg !1727
  %98 = load float* %arrayidx358, align 4, !dbg !1727, !tbaa !1261
  %conv383 = fpext float %98 to double, !dbg !1727
  %conv387 = fpext float %call351 to double, !dbg !1727
  call void @llvm.dbg.value(metadata !{i32* %nfmax}, i64 0, metadata !1038), !dbg !1727
  %99 = load i32* %nfmax, align 4, !dbg !1727, !tbaa !1255
  %add388 = add nsw i32 %99, 1, !dbg !1727
  %idxprom392 = sext i32 %Min.0894 to i64, !dbg !1727
  %arrayidx393 = getelementptr inbounds [2 x float]* %Epot, i64 0, i64 %idxprom392, !dbg !1727
  %100 = load float* %arrayidx393, align 4, !dbg !1727, !tbaa !1261
  %cmp394 = fcmp olt float %98, %100, !dbg !1727
  %cond = select i1 %cmp394, i32 10, i32 13, !dbg !1727
  %call396 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([64 x i8]* @.str23, i64 0, i64 0), i32 %count.0893, double %conv379, double %conv383, double %conv387, i32 %add388, i32 %cond) #6, !dbg !1727
  br label %if.end397, !dbg !1729

if.end397:                                        ; preds = %if.then376.if.end397_crit_edge, %if.then378
  %101 = phi float [ %.pre923, %if.then376.if.end397_crit_edge ], [ %100, %if.then378 ]
  %102 = phi float [ %.pre922, %if.then376.if.end397_crit_edge ], [ %98, %if.then378 ]
  %cmp403 = fcmp olt float %102, %101, !dbg !1726
  br i1 %cmp403, label %if.then405, label %if.end426, !dbg !1726

if.then405:                                       ; preds = %if.end397
  %103 = load float* %tmass, align 4, !dbg !1677, !tbaa !1261
  %conv406 = sitofp i32 %count.0893 to float, !dbg !1677
  %104 = load i32* %etc, align 4, !dbg !1677, !tbaa !1255
  %cmp416 = icmp eq i32 %104, 2, !dbg !1677
  %conv417 = zext i1 %cmp416 to i32, !dbg !1677
  call void @upd_mdebin(%struct.t_mdebin* %call41, %struct._IO_FILE* null, float %103, i32 %count.0893, float %conv406, float* %ener, [3 x float]* %arraydecay171, [3 x float]* %arraydecay43, [3 x float]* %arraydecay42, [3 x float]* %arraydecay411, [3 x float]* %arraydecay412, %struct.t_groups* %grps, float* %arraydecay, i32 %conv417) #6, !dbg !1677
  %105 = load i32* %nstdisreout, align 4, !dbg !1680, !tbaa !1255
  %call419 = call i32 @do_per_step(i32 %steps_accepted.0895, i32 %105) #6, !dbg !1680
  %106 = load i32* %nstorireout, align 4, !dbg !1681, !tbaa !1255
  %call421 = call i32 @do_per_step(i32 %steps_accepted.0895, i32 %106) #6, !dbg !1681
  call void @print_ebin(i32 %fp_ene.0, i32 1, i32 %call419, i32 %call421, %struct._IO_FILE* %log, i32 %count.0893, float %conv406, i32 0, i32 1, %struct.t_mdebin* %call41, %struct.t_fcdata* %fcd, %struct.t_atoms* %atoms) #6, !dbg !1681
  %call424 = call i32 @fflush(%struct._IO_FILE* %log) #6, !dbg !1730
  br label %if.end426, !dbg !1731

if.end426:                                        ; preds = %if.end397, %if.then405, %land.lhs.true372, %if.end368
  br i1 %cmp213, label %if.then437, label %lor.lhs.false429, !dbg !1732

lor.lhs.false429:                                 ; preds = %if.end426
  %107 = load float* %arrayidx358, align 4, !dbg !1732, !tbaa !1261
  %idxprom433 = sext i32 %Min.0894 to i64, !dbg !1732
  %arrayidx434 = getelementptr inbounds [2 x float]* %Epot, i64 0, i64 %idxprom433, !dbg !1732
  %108 = load float* %arrayidx434, align 4, !dbg !1732, !tbaa !1261
  %cmp435 = fcmp olt float %107, %108, !dbg !1732
  br i1 %cmp435, label %if.then437, label %if.else478, !dbg !1732

if.then437:                                       ; preds = %lor.lhs.false429, %if.end426
  %inc438 = add nsw i32 %steps_accepted.0895, 1, !dbg !1733
  call void @llvm.dbg.value(metadata !{i32 %inc438}, i64 0, metadata !1047), !dbg !1733
  %109 = load i32* %nstfout, align 4, !dbg !1682, !tbaa !1255
  %call440 = call i32 @do_per_step(i32 %inc438, i32 %109) #6, !dbg !1682
  call void @llvm.dbg.value(metadata !{[3 x float]* %70}, i64 0, metadata !1017), !dbg !1734
  %110 = load i32* %nstxout, align 4, !dbg !1684, !tbaa !1255
  %call449 = call i32 @do_per_step(i32 %inc438, i32 %110) #6, !dbg !1684
  %tobool450 = icmp eq i32 %call449, 0, !dbg !1684
  br i1 %tobool450, label %if.end462, label %if.then451, !dbg !1684

if.then451:                                       ; preds = %if.then437
  %tobool441 = icmp eq i32 %call440, 0, !dbg !1682
  %. = select i1 %tobool441, [3 x float]* null, [3 x float]* %70, !dbg !1682
  call void @llvm.dbg.value(metadata !{[3 x float]* %69}, i64 0, metadata !1016), !dbg !1735
  %call455 = call i8* @ftp2fn(i32 3, i32 %nfile, %struct.t_filenm* %fnm) #6, !dbg !1685
  %conv456 = sitofp i32 %count.0893 to float, !dbg !1685
  call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !1008), !dbg !1685
  %111 = load i32* %natoms, align 4, !dbg !1685, !tbaa !1255
  %call460 = call i32 @write_traj(%struct._IO_FILE* %log, %struct.t_commrec* %cr, i8* %call455, %struct.t_nsborder* %nsb, i32 %count.0893, float %conv456, float %49, %struct.t_nrnb* %nrnb, i32 %111, [3 x float]* %69, [3 x float]* null, [3 x float]* %., [3 x float]* %arraydecay171) #6, !dbg !1685
  br label %if.end462, !dbg !1736

if.end462:                                        ; preds = %if.then437, %if.then451
  %112 = load float* %em_tol92, align 4, !dbg !1737, !tbaa !1261
  %cmp468 = fcmp olt float %call351, %112, !dbg !1737
  %conv469 = zext i1 %cmp468 to i32, !dbg !1737
  call void @llvm.dbg.value(metadata !{i32 %conv469}, i64 0, metadata !1027), !dbg !1737
  call void @llvm.dbg.value(metadata !{i32 %sub176}, i64 0, metadata !1046), !dbg !1738
  br i1 %cmp101, label %if.then473, label %if.end482, !dbg !1739

if.then473:                                       ; preds = %if.end462
  %conv474 = fpext float %ustep.0891 to double, !dbg !1740
  %mul475 = fmul double %conv474, 1.200000e+00, !dbg !1740
  %conv476 = fptrunc double %mul475 to float, !dbg !1740
  call void @llvm.dbg.value(metadata !{float %conv476}, i64 0, metadata !1021), !dbg !1740
  br label %if.end482, !dbg !1740

if.else478:                                       ; preds = %lor.lhs.false429
  %conv481 = fmul float %ustep.0891, 5.000000e-01, !dbg !1741
  call void @llvm.dbg.value(metadata !{float %conv481}, i64 0, metadata !1021), !dbg !1741
  %arrayidx489.phi.trans.insert = getelementptr inbounds [2 x [3 x float]*]* %force, i64 0, i64 %idxprom433
  %.pre = load [3 x float]** %arrayidx489.phi.trans.insert, align 8, !dbg !1687, !tbaa !1289
  br label %if.end482

if.end482:                                        ; preds = %if.end462, %if.then473, %if.else478
  %113 = phi [3 x float]* [ %70, %if.then473 ], [ %70, %if.end462 ], [ %.pre, %if.else478 ]
  %ustep.1 = phi float [ %conv476, %if.then473 ], [ %ustep.0891, %if.end462 ], [ %conv481, %if.else478 ]
  %bDone.1 = phi i32 [ %conv469, %if.then473 ], [ %conv469, %if.end462 ], [ %bDone.0892, %if.else478 ]
  %Min.1 = phi i32 [ %sub176, %if.then473 ], [ %sub176, %if.end462 ], [ %Min.0894, %if.else478 ]
  %steps_accepted.1 = phi i32 [ %inc438, %if.then473 ], [ %inc438, %if.end462 ], [ %steps_accepted.0895, %if.else478 ]
  %114 = load i32* %left, align 4, !dbg !1687, !tbaa !1255
  %115 = load i32* %right, align 4, !dbg !1687, !tbaa !1255
  %116 = load i32* %nnodes245, align 4, !dbg !1687, !tbaa !1255
  call void @llvm.dbg.value(metadata !{i32* %start}, i64 0, metadata !1043), !dbg !1687
  call void @llvm.dbg.value(metadata !{i32* %end}, i64 0, metadata !1044), !dbg !1687
  %idxprom488 = sext i32 %Min.1 to i64, !dbg !1687
  %arrayidx489 = getelementptr inbounds [2 x [3 x float]*]* %force, i64 0, i64 %idxprom488, !dbg !1687
  %call490 = call fastcc float @f_max(i32 %114, i32 %115, i32 %116, %struct.t_grpopts* %opts232, %struct.t_mdatoms* %mdatoms, i32 %28, i32 %29, [3 x float]* %113, i32* %nfmax) #5, !dbg !1687
  call void @llvm.dbg.value(metadata !{float %call490}, i64 0, metadata !1009), !dbg !1687
  %div491 = fdiv float %ustep.1, %call490, !dbg !1742
  call void @llvm.dbg.value(metadata !{float %div491}, i64 0, metadata !1006), !dbg !1742
  %conv492 = fpext float %ustep.1 to double, !dbg !1743
  %cmp493 = fcmp olt double %conv492, 1.000000e-06, !dbg !1743
  br i1 %cmp493, label %if.then495, label %if.end500, !dbg !1743

if.then495:                                       ; preds = %if.end482
  %117 = load %struct._IO_FILE** @stderr, align 8, !dbg !1744, !tbaa !1289
  %118 = load float* %em_tol92, align 4, !dbg !1744, !tbaa !1261
  call fastcc void @warn_step(%struct._IO_FILE* %117, float %ustep.1, float %118, i32 %call49) #5, !dbg !1744
  %119 = load float* %em_tol92, align 4, !dbg !1746, !tbaa !1261
  call fastcc void @warn_step(%struct._IO_FILE* %log, float %ustep.1, float %119, i32 %call49) #5, !dbg !1746
  call void @llvm.dbg.value(metadata !1250, i64 0, metadata !1028), !dbg !1747
  br label %if.end500, !dbg !1748

if.end500:                                        ; preds = %if.then495, %if.end482
  %bAbort.1 = phi i32 [ 1, %if.then495 ], [ %land.ext, %if.end482 ]
  %inc501 = add nsw i32 %count.0893, 1, !dbg !1749
  call void @llvm.dbg.value(metadata !{i32 %inc501}, i64 0, metadata !1040), !dbg !1749
  %120 = or i32 %bAbort.1, %bDone.1, !dbg !1688
  %121 = icmp eq i32 %120, 0, !dbg !1688
  br i1 %121, label %while.body, label %while.end, !dbg !1688

while.end:                                        ; preds = %if.end500
  %122 = load i32* %nodeid, align 4, !dbg !1750, !tbaa !1255
  %cmp503 = icmp eq i32 %122, 0, !dbg !1750
  br i1 %cmp503, label %land.lhs.true505, label %if.end511, !dbg !1750

land.lhs.true505:                                 ; preds = %while.end
  %123 = load i32* %threadid85, align 4, !dbg !1750, !tbaa !1255
  %cmp507 = icmp eq i32 %123, 0, !dbg !1750
  br i1 %cmp507, label %if.then509, label %if.end511, !dbg !1750

if.then509:                                       ; preds = %land.lhs.true505
  %124 = load %struct._IO_FILE** @stderr, align 8, !dbg !1751, !tbaa !1289
  %125 = call i64 @fwrite(i8* getelementptr inbounds ([37 x i8]* @.str17, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %124), !dbg !1751
  br label %if.end511, !dbg !1751

if.end511:                                        ; preds = %land.lhs.true505, %while.end, %if.then509
  %arrayidx513 = getelementptr inbounds [2 x [3 x float]*]* %pos, i64 0, i64 %idxprom488, !dbg !1752
  %126 = load [3 x float]** %arrayidx513, align 8, !dbg !1752, !tbaa !1289
  call void @llvm.dbg.value(metadata !{[3 x float]* %126}, i64 0, metadata !1016), !dbg !1752
  %127 = load [3 x float]** %arrayidx489, align 8, !dbg !1753, !tbaa !1289
  call void @llvm.dbg.value(metadata !{[3 x float]* %127}, i64 0, metadata !1017), !dbg !1753
  %call516 = call i8* @ftp2fn(i32 3, i32 %nfile, %struct.t_filenm* %fnm) #6, !dbg !1754
  %conv517 = sitofp i32 %inc501 to float, !dbg !1754
  call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !1008), !dbg !1754
  %128 = load i32* %natoms, align 4, !dbg !1754, !tbaa !1255
  %call521 = call i32 @write_traj(%struct._IO_FILE* %log, %struct.t_commrec* %cr, i8* %call516, %struct.t_nsborder* %nsb, i32 %inc501, float %conv517, float %49, %struct.t_nrnb* %nrnb, i32 %128, [3 x float]* %126, [3 x float]* null, [3 x float]* %127, [3 x float]* %arraydecay171) #6, !dbg !1754
  %129 = load i32* %nodeid, align 4, !dbg !1755, !tbaa !1255
  %cmp523 = icmp eq i32 %129, 0, !dbg !1755
  br i1 %cmp523, label %land.lhs.true525, label %for.cond547.preheader, !dbg !1755

land.lhs.true525:                                 ; preds = %if.end511
  %130 = load i32* %threadid85, align 4, !dbg !1755, !tbaa !1255
  %cmp527 = icmp eq i32 %130, 0, !dbg !1755
  br i1 %cmp527, label %if.then529, label %for.cond547.preheader, !dbg !1755

if.then529:                                       ; preds = %land.lhs.true525
  %call530 = call i8* @ftp2fn(i32 12, i32 %nfile, %struct.t_filenm* %fnm) #6, !dbg !1756
  %name = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0, !dbg !1756
  %131 = load i8*** %name, align 8, !dbg !1756, !tbaa !1289
  %132 = load i8** %131, align 8, !dbg !1756, !tbaa !1289
  call void @write_sto_conf(i8* %call530, i8* %132, %struct.t_atoms* %atoms, [3 x float]* %126, [3 x float]* null, [3 x float]* %arraydecay171) #6, !dbg !1756
  %133 = load %struct._IO_FILE** @stderr, align 8, !dbg !1758, !tbaa !1289
  %134 = load float* %em_tol92, align 4, !dbg !1758, !tbaa !1261
  %arrayidx537 = getelementptr inbounds [2 x float]* %Epot, i64 0, i64 %idxprom488, !dbg !1758
  %135 = load float* %arrayidx537, align 4, !dbg !1758, !tbaa !1261
  %arrayidx539 = getelementptr inbounds [2 x float]* %Fmax, i64 0, i64 %idxprom488, !dbg !1758
  %136 = load float* %arrayidx539, align 4, !dbg !1758, !tbaa !1261
  call fastcc void @print_converged(%struct._IO_FILE* %133, i8* getelementptr inbounds ([18 x i8]* @.str18, i64 0, i64 0), float %134, i32 %inc501, i32 %bDone.1, i32 %43, float %135, float %136) #5, !dbg !1758
  %137 = load float* %em_tol92, align 4, !dbg !1759, !tbaa !1261
  call fastcc void @print_converged(%struct._IO_FILE* %log, i8* getelementptr inbounds ([18 x i8]* @.str18, i64 0, i64 0), float %137, i32 %inc501, i32 %bDone.1, i32 %43, float %135, float %136) #5, !dbg !1759
  call void @close_enx(i32 %fp_ene.0) #6, !dbg !1760
  br label %for.cond547.preheader, !dbg !1761

for.cond547.preheader:                            ; preds = %if.then529, %land.lhs.true525, %if.end511
  %138 = load i32* %natoms, align 4, !dbg !1762, !tbaa !1255
  %cmp549880 = icmp sgt i32 %138, 0, !dbg !1762
  br i1 %cmp549880, label %for.body551, label %for.end562, !dbg !1762

for.body551:                                      ; preds = %for.cond547.preheader, %for.body551
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body551 ], [ 0, %for.cond547.preheader ]
  %arraydecay556 = getelementptr inbounds [3 x float]* %126, i64 %indvars.iv, i64 0, !dbg !1764
  %arraydecay559 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0, !dbg !1764
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay556}, i64 0, metadata !1765), !dbg !1766
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay559}, i64 0, metadata !1767), !dbg !1766
  %139 = load float* %arraydecay556, align 4, !dbg !1768, !tbaa !1261
  store float %139, float* %arraydecay559, align 4, !dbg !1768, !tbaa !1261
  %arrayidx2.i = getelementptr inbounds [3 x float]* %126, i64 %indvars.iv, i64 1, !dbg !1769
  %140 = load float* %arrayidx2.i, align 4, !dbg !1769, !tbaa !1261
  %arrayidx3.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1, !dbg !1769
  store float %140, float* %arrayidx3.i, align 4, !dbg !1769, !tbaa !1261
  %arrayidx4.i = getelementptr inbounds [3 x float]* %126, i64 %indvars.iv, i64 2, !dbg !1770
  %141 = load float* %arrayidx4.i, align 4, !dbg !1770, !tbaa !1261
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2, !dbg !1770
  store float %141, float* %arrayidx5.i, align 4, !dbg !1770, !tbaa !1261
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1762
  %142 = trunc i64 %indvars.iv.next to i32, !dbg !1762
  %cmp549 = icmp slt i32 %142, %138, !dbg !1762
  br i1 %cmp549, label %for.body551, label %for.end562, !dbg !1762

for.end562:                                       ; preds = %for.body551, %for.cond547.preheader
  store i32 %inc501, i32* %nsteps80, align 4, !dbg !1771, !tbaa !1255
  call void @llvm.lifetime.end(i64 36, i8* %3) #2, !dbg !1772
  call void @llvm.lifetime.end(i64 36, i8* %2) #2, !dbg !1772
  call void @llvm.lifetime.end(i64 36, i8* %1) #2, !dbg !1772
  call void @llvm.lifetime.end(i64 1032, i8* %0) #2, !dbg !1772
  ret i64 %call, !dbg !1772
}

; Function Attrs: optsize
declare i32 @init_constraints(%struct._IO_FILE*, %struct.t_topology*, %struct.t_inputrec*, %struct.t_mdatoms*, i32, i32, i32, %struct.t_commrec*) #3

; Function Attrs: optsize
declare i32 @constrain(%struct._IO_FILE*, %struct.t_topology*, %struct.t_inputrec*, i32, %struct.t_mdatoms*, i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, float, float*, %struct.t_nrnb*, i32) #3

; Function Attrs: optsize
declare i32 @do_per_step(i32, i32) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @warn_step(%struct._IO_FILE* nocapture %fp, float %ustep, float %ftol, i32 %bConstrain) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !1125), !dbg !1773
  tail call void @llvm.dbg.value(metadata !{float %ustep}, i64 0, metadata !1126), !dbg !1773
  tail call void @llvm.dbg.value(metadata !{float %ftol}, i64 0, metadata !1127), !dbg !1773
  tail call void @llvm.dbg.value(metadata !{i32 %bConstrain}, i64 0, metadata !1128), !dbg !1773
  %conv = fpext float %ustep to double, !dbg !1774
  %conv1 = fpext float %ftol to double, !dbg !1774
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([100 x i8]* @.str34, i64 0, i64 0), double %conv, double %conv1) #6, !dbg !1774
  %tobool = icmp eq i32 %bConstrain, 0, !dbg !1775
  br i1 %tobool, label %if.end, label %if.then, !dbg !1775

if.then:                                          ; preds = %entry
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([127 x i8]* @.str35, i64 0, i64 0), i64 126, i64 1, %struct._IO_FILE* %fp), !dbg !1776
  br label %if.end, !dbg !1776

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !1777
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
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !1062), !dbg !1778
  call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !1063), !dbg !1778
  call void @llvm.dbg.value(metadata !{i32 %nfile}, i64 0, metadata !1064), !dbg !1778
  call void @llvm.dbg.value(metadata !{%struct.t_filenm* %fnm}, i64 0, metadata !1065), !dbg !1778
  call void @llvm.dbg.value(metadata !{i32 %bVerbose}, i64 0, metadata !1066), !dbg !1779
  call void @llvm.dbg.value(metadata !{i32 %bCompact}, i64 0, metadata !1067), !dbg !1779
  call void @llvm.dbg.value(metadata !{i32 %stepout}, i64 0, metadata !1068), !dbg !1779
  call void @llvm.dbg.value(metadata !{%struct.t_parm* %parm}, i64 0, metadata !1069), !dbg !1780
  call void @llvm.dbg.value(metadata !{%struct.t_groups* %grps}, i64 0, metadata !1070), !dbg !1780
  call void @llvm.dbg.value(metadata !{%struct.t_topology* %top}, i64 0, metadata !1071), !dbg !1781
  call void @llvm.dbg.value(metadata !{float* %ener}, i64 0, metadata !1072), !dbg !1781
  call void @llvm.dbg.value(metadata !{%struct.t_fcdata* %fcd}, i64 0, metadata !1073), !dbg !1781
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !1074), !dbg !1782
  call void @llvm.dbg.value(metadata !{[3 x float]* %vold}, i64 0, metadata !1075), !dbg !1782
  call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !1076), !dbg !1782
  call void @llvm.dbg.value(metadata !{[3 x float]* %vt}, i64 0, metadata !1077), !dbg !1782
  call void @llvm.dbg.value(metadata !{[3 x float]* %f}, i64 0, metadata !1078), !dbg !1782
  call void @llvm.dbg.value(metadata !{[3 x float]* %buf}, i64 0, metadata !1079), !dbg !1783
  call void @llvm.dbg.value(metadata !{%struct.t_mdatoms* %mdatoms}, i64 0, metadata !1080), !dbg !1783
  call void @llvm.dbg.value(metadata !{%struct.t_nsborder* %nsb}, i64 0, metadata !1081), !dbg !1784
  call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %nrnb}, i64 0, metadata !1082), !dbg !1784
  call void @llvm.dbg.value(metadata !{%struct.t_graph* %graph}, i64 0, metadata !1083), !dbg !1785
  call void @llvm.dbg.value(metadata !{%struct.t_edsamyn* %edyn}, i64 0, metadata !1084), !dbg !1785
  call void @llvm.dbg.value(metadata !{%struct.t_forcerec* %fr}, i64 0, metadata !1085), !dbg !1786
  call void @llvm.dbg.value(metadata !{float* %box_size}, i64 0, metadata !1086), !dbg !1786
  call void @llvm.dbg.declare(metadata !{i32* %bLR}, metadata !1099), !dbg !1787
  call void @llvm.dbg.declare(metadata !{i32* %bLJLR}, metadata !1100), !dbg !1787
  call void @llvm.dbg.declare(metadata !{i32* %bBHAM}, metadata !1101), !dbg !1787
  call void @llvm.dbg.declare(metadata !{i32* %b14}, metadata !1102), !dbg !1787
  %0 = bitcast [3 x [3 x float]]* %force_vir to i8*, !dbg !1788
  call void @llvm.lifetime.start(i64 36, i8* %0) #2, !dbg !1788
  call void @llvm.dbg.declare(metadata !{[3 x [3 x float]]* %force_vir}, metadata !1104), !dbg !1788
  %1 = bitcast [3 x [3 x float]]* %pme_vir to i8*, !dbg !1788
  call void @llvm.lifetime.start(i64 36, i8* %1) #2, !dbg !1788
  call void @llvm.dbg.declare(metadata !{[3 x [3 x float]]* %pme_vir}, metadata !1106), !dbg !1788
  %2 = bitcast %struct.t_nrnb* %mynrnb to i8*, !dbg !1789
  call void @llvm.lifetime.start(i64 1032, i8* %2) #2, !dbg !1789
  call void @llvm.dbg.declare(metadata !{%struct.t_nrnb* %mynrnb}, metadata !1107), !dbg !1789
  call void @llvm.dbg.declare(metadata !{i32* %nfmax}, metadata !1110), !dbg !1790
  call void @llvm.dbg.declare(metadata !{[3 x float]* %mu_tot}, metadata !1111), !dbg !1791
  call void @llvm.dbg.value(metadata !1792, i64 0, metadata !1118), !dbg !1793
  %atoms = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, !dbg !1794
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !1794
  %3 = load i32* %nr, align 4, !dbg !1794, !tbaa !1255
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 841, i32 %3, i32 12) #6, !dbg !1794
  %4 = bitcast i8* %call to [3 x float]*, !dbg !1794
  call void @llvm.dbg.value(metadata !{[3 x float]* %4}, i64 0, metadata !1120), !dbg !1794
  call void @llvm.dbg.value(metadata !1583, i64 0, metadata !1113), !dbg !1795
  call void @llvm.dbg.value(metadata !1583, i64 0, metadata !1114), !dbg !1796
  %ir = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, !dbg !1797
  %init_t = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 14, !dbg !1797
  %5 = load float* %init_t, align 4, !dbg !1797, !tbaa !1261
  call void @llvm.dbg.value(metadata !{float %5}, i64 0, metadata !1094), !dbg !1797
  %init_lambda = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 47, !dbg !1798
  %6 = load float* %init_lambda, align 4, !dbg !1798, !tbaa !1261
  call void @llvm.dbg.value(metadata !{float %6}, i64 0, metadata !1095), !dbg !1798
  call void @llvm.dbg.value(metadata !{float %5}, i64 0, metadata !1092), !dbg !1799
  call void @llvm.dbg.value(metadata !{float %6}, i64 0, metadata !1093), !dbg !1800
  call void @llvm.dbg.value(metadata !126, i64 0, metadata !1098), !dbg !1801
  call void @init_nrnb(%struct.t_nrnb* %mynrnb) #6, !dbg !1802
  %ePBC = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 0, !dbg !1803
  %7 = load i32* %ePBC, align 4, !dbg !1803, !tbaa !1255
  %cmp = icmp ne i32 %7, 1, !dbg !1803
  br i1 %cmp, label %if.then, label %if.end, !dbg !1804

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0, !dbg !1805
  %shift_vec = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 48, !dbg !1805
  %8 = load [3 x float]** %shift_vec, align 8, !dbg !1805, !tbaa !1289
  call void @calc_shifts([3 x float]* %arraydecay, float* %box_size, [3 x float]* %8) #6, !dbg !1805
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([25 x i8]* @.str25, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %log), !dbg !1807
  call void @mk_mshift(%struct._IO_FILE* %log, %struct.t_graph* %graph, [3 x float]* %arraydecay, [3 x float]* %x) #6, !dbg !1808
  call void @shift_self(%struct.t_graph* %graph, [3 x float]* %arraydecay, [3 x float]* %x) #6, !dbg !1809
  br label %if.end, !dbg !1810

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata !1811, i64 0, metadata !1088), !dbg !1812
  call void @set_pot_bools(%struct.t_inputrec* %ir, %struct.t_topology* %top, i32* %bLR, i32* %bLJLR, i32* %bBHAM, i32* %b14) #6, !dbg !1813
  %idef = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, !dbg !1814
  call void @llvm.dbg.value(metadata !{i32* %bLR}, i64 0, metadata !1099), !dbg !1814
  %10 = load i32* %bLR, align 4, !dbg !1814, !tbaa !1255
  call void @llvm.dbg.value(metadata !{i32* %bLJLR}, i64 0, metadata !1100), !dbg !1814
  %11 = load i32* %bLJLR, align 4, !dbg !1814, !tbaa !1255
  call void @llvm.dbg.value(metadata !{i32* %bBHAM}, i64 0, metadata !1101), !dbg !1814
  %12 = load i32* %bBHAM, align 4, !dbg !1814, !tbaa !1255
  call void @llvm.dbg.value(metadata !{i32* %b14}, i64 0, metadata !1102), !dbg !1814
  %13 = load i32* %b14, align 4, !dbg !1814, !tbaa !1255
  %efep = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 46, !dbg !1814
  %14 = load i32* %efep, align 4, !dbg !1814, !tbaa !1255
  %cmp10 = icmp ne i32 %14, 0, !dbg !1814
  %conv11 = zext i1 %cmp10 to i32, !dbg !1814
  %epc = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 28, !dbg !1814
  %15 = load i32* %epc, align 4, !dbg !1814, !tbaa !1255
  %eDispCorr = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 43, !dbg !1814
  %16 = load i32* %eDispCorr, align 4, !dbg !1814, !tbaa !1255
  %arrayidx15 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 32, i64 1, i64 0, !dbg !1815
  %17 = load float* %arrayidx15, align 4, !dbg !1815, !tbaa !1261
  %fabsf = call float @fabsf(float %17) #7, !dbg !1815
  %18 = fpext float %fabsf to double, !dbg !1815
  %cmp18 = fcmp ogt double %18, 1.200000e-38, !dbg !1815
  br i1 %cmp18, label %lor.end, label %lor.lhs.false, !dbg !1815

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx23 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 32, i64 2, i64 0, !dbg !1815
  %19 = load float* %arrayidx23, align 4, !dbg !1815, !tbaa !1261
  %fabsf508 = call float @fabsf(float %19) #7, !dbg !1815
  %20 = fpext float %fabsf508 to double, !dbg !1815
  %cmp26 = fcmp ogt double %20, 1.200000e-38, !dbg !1815
  br i1 %cmp26, label %lor.end, label %lor.rhs, !dbg !1815

lor.rhs:                                          ; preds = %lor.lhs.false
  %arrayidx31 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 32, i64 2, i64 1, !dbg !1815
  %21 = load float* %arrayidx31, align 4, !dbg !1815, !tbaa !1261
  %fabsf509 = call float @fabsf(float %21) #7, !dbg !1815
  %22 = fpext float %fabsf509 to double, !dbg !1815
  %cmp34 = fcmp ogt double %22, 1.200000e-38, !dbg !1815
  br label %lor.end, !dbg !1815

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.end
  %23 = phi i1 [ true, %lor.lhs.false ], [ true, %if.end ], [ %cmp34, %lor.rhs ]
  %lor.ext = zext i1 %23 to i32, !dbg !1815
  %etc = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 27, !dbg !1815
  %24 = load i32* %etc, align 4, !dbg !1815, !tbaa !1255
  %cmp37 = icmp eq i32 %24, 2, !dbg !1815
  %conv38 = zext i1 %cmp37 to i32, !dbg !1815
  %call39 = call %struct.t_mdebin* @init_mdebin(i32 -1, %struct.t_groups* %grps, %struct.t_atoms* %atoms, %struct.t_idef* %idef, i32 %10, i32 %11, i32 %12, i32 %13, i32 %conv11, i32 %15, i32 %16, i32 %lor.ext, i32 %conv38, %struct.t_commrec* %cr) #6, !dbg !1815
  call void @llvm.dbg.value(metadata !{%struct.t_mdebin* %call39}, i64 0, metadata !1087), !dbg !1815
  %opts = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, !dbg !1816
  %arraydecay41 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 5, i64 0, !dbg !1816
  %call42 = call float @sum_ekin(%struct.t_grpopts* %opts, %struct.t_groups* %grps, [3 x float]* %arraydecay41, i32 0) #6, !dbg !1816
  %arrayidx43 = getelementptr inbounds float* %ener, i64 40, !dbg !1816
  store float %call42, float* %arrayidx43, align 4, !dbg !1816, !tbaa !1261
  %25 = load i32* %etc, align 4, !dbg !1817, !tbaa !1255
  switch i32 %25, label %if.end62 [
    i32 1, label %if.then48
    i32 2, label %if.then56
  ], !dbg !1817

if.then48:                                        ; preds = %lor.end
  %delta_t = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15, !dbg !1818
  %26 = load float* %delta_t, align 4, !dbg !1818, !tbaa !1261
  call void @berendsen_tcoupl(%struct.t_grpopts* %opts, %struct.t_groups* %grps, float %26, float %6) #6, !dbg !1818
  br label %if.end62, !dbg !1818

if.then56:                                        ; preds = %lor.end
  %delta_t60 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15, !dbg !1819
  %27 = load float* %delta_t60, align 4, !dbg !1819, !tbaa !1261
  call void @nosehoover_tcoupl(%struct.t_grpopts* %opts, %struct.t_groups* %grps, float %27, float %6) #6, !dbg !1819
  br label %if.end62, !dbg !1819

if.end62:                                         ; preds = %lor.end, %if.then56, %if.then48
  call void @_where(i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 883) #6, !dbg !1820
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !1821
  %28 = load i32* %nodeid, align 4, !dbg !1821, !tbaa !1255
  %call63 = call i64 @print_date_and_time(%struct._IO_FILE* %log, i32 %28, i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0)) #6, !dbg !1821
  call void @llvm.dbg.value(metadata !{i64 %call63}, i64 0, metadata !1091), !dbg !1821
  %29 = load i32* %nodeid, align 4, !dbg !1822, !tbaa !1255
  %cmp65 = icmp eq i32 %29, 0, !dbg !1822
  br i1 %cmp65, label %land.lhs.true, label %if.end73, !dbg !1822

land.lhs.true:                                    ; preds = %if.end62
  %threadid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4, !dbg !1822
  %30 = load i32* %threadid, align 4, !dbg !1822, !tbaa !1255
  %cmp67 = icmp eq i32 %30, 0, !dbg !1822
  br i1 %cmp67, label %if.then69, label %if.end73, !dbg !1822

if.then69:                                        ; preds = %land.lhs.true
  %31 = load %struct._IO_FILE** @stderr, align 8, !dbg !1823, !tbaa !1289
  %name = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0, !dbg !1823
  %32 = load i8*** %name, align 8, !dbg !1823, !tbaa !1289
  %33 = load i8** %32, align 8, !dbg !1823, !tbaa !1289
  %34 = load i32* %nr, align 4, !dbg !1823, !tbaa !1255
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([32 x i8]* @.str27, i64 0, i64 0), i8* %33, i32 %34) #6, !dbg !1823
  br label %if.end73, !dbg !1825

if.end73:                                         ; preds = %if.then69, %land.lhs.true, %if.end62
  %arraydecay74 = getelementptr inbounds [3 x [3 x float]]* %force_vir, i64 0, i64 0, !dbg !1826
  call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay74}, i64 0, metadata !1827) #2, !dbg !1828
  call void @llvm.dbg.value(metadata !1246, i64 0, metadata !1829) #2, !dbg !1830
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 36, i32 16, i1 false) #2, !dbg !1831
  call void @llvm.dbg.value(metadata !1250, i64 0, metadata !1096), !dbg !1832
  %arraydecay76 = getelementptr inbounds [3 x [3 x float]]* %pme_vir, i64 0, i64 0, !dbg !1833
  %tobool77 = icmp ne i32 %bVerbose, 0, !dbg !1833
  br i1 %tobool77, label %land.rhs, label %land.end, !dbg !1833

land.rhs:                                         ; preds = %if.end73
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !1833
  %35 = load i32* %nnodes, align 4, !dbg !1833, !tbaa !1255
  %cmp78 = icmp sgt i32 %35, 1, !dbg !1833
  br i1 %cmp78, label %land.end, label %lor.rhs80, !dbg !1833

lor.rhs80:                                        ; preds = %land.rhs
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5, !dbg !1833
  %36 = load i32* %nthreads, align 4, !dbg !1833, !tbaa !1255
  %phitmp512 = icmp slt i32 %36, 2, !dbg !1833
  br label %land.end, !dbg !1833

land.end:                                         ; preds = %land.rhs, %lor.rhs80, %if.end73
  %37 = phi i1 [ false, %if.end73 ], [ false, %land.rhs ], [ %phitmp512, %lor.rhs80 ]
  %land.ext = zext i1 %37 to i32
  %arraydecay85 = getelementptr inbounds [3 x float]* %mu_tot, i64 0, i64 0
  call void @do_force(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* null, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, [3 x float]* %arraydecay74, [3 x float]* %arraydecay76, i32 0, %struct.t_nrnb* %mynrnb, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, float* %ener, %struct.t_fcdata* %fcd, i32 %land.ext, float %6, %struct.t_graph* %graph, i32 1, i32 0, %struct.t_forcerec* %fr, float* %arraydecay85, i32 0) #6
  call void @llvm.dbg.value(metadata !126, i64 0, metadata !1096), !dbg !1834
  br i1 %cmp, label %if.then87, label %if.end90, !dbg !1835

if.then87:                                        ; preds = %land.end
  %arraydecay89 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0, !dbg !1836
  call void @unshift_self(%struct.t_graph* %graph, [3 x float]* %arraydecay89, [3 x float]* %x) #6, !dbg !1836
  br label %if.end90, !dbg !1836

if.end90:                                         ; preds = %if.then87, %land.end
  %left = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2, !dbg !1837
  %38 = load i32* %left, align 4, !dbg !1837, !tbaa !1255
  %right = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3, !dbg !1837
  %39 = load i32* %right, align 4, !dbg !1837, !tbaa !1255
  %nnodes91 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1, !dbg !1837
  %40 = load i32* %nnodes91, align 4, !dbg !1837, !tbaa !1255
  %41 = load i32* %nr, align 4, !dbg !1837, !tbaa !1255
  %call96 = call fastcc float @f_max(i32 %38, i32 %39, i32 %40, %struct.t_grpopts* %opts, %struct.t_mdatoms* %mdatoms, i32 0, i32 %41, [3 x float]* %f, i32* %nfmax) #5, !dbg !1837
  call void @llvm.dbg.value(metadata !{float %call96}, i64 0, metadata !1119), !dbg !1837
  %42 = load %struct._IO_FILE** @stderr, align 8, !dbg !1838, !tbaa !1289
  %conv97 = fpext float %call96 to double, !dbg !1838
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([22 x i8]* @.str28, i64 0, i64 0), double %conv97) #6, !dbg !1838
  %cmp100 = fcmp ogt double %conv97, 1.000000e-03, !dbg !1839
  br i1 %cmp100, label %if.then102, label %if.end107, !dbg !1839

if.then102:                                       ; preds = %if.end90
  %43 = load %struct._IO_FILE** @stderr, align 8, !dbg !1840, !tbaa !1289
  %44 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str29, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %43), !dbg !1840
  %45 = load %struct._IO_FILE** @stderr, align 8, !dbg !1842, !tbaa !1289
  %46 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8]* @.str30, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %45), !dbg !1842
  %47 = load %struct._IO_FILE** @stderr, align 8, !dbg !1843, !tbaa !1289
  %48 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @.str31, i64 0, i64 0), i64 44, i64 1, %struct._IO_FILE* %47), !dbg !1843
  %49 = load %struct._IO_FILE** @stderr, align 8, !dbg !1844, !tbaa !1289
  %50 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @.str32, i64 0, i64 0), i64 44, i64 1, %struct._IO_FILE* %49), !dbg !1844
  br label %if.end107, !dbg !1845

if.end107:                                        ; preds = %if.then102, %if.end90
  %51 = load i32* %nr, align 4, !dbg !1846, !tbaa !1255
  %nsteps = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 1, !dbg !1846
  store i32 %51, i32* %nsteps, align 4, !dbg !1846, !tbaa !1255
  call void @llvm.dbg.value(metadata !126, i64 0, metadata !1089), !dbg !1847
  %cmp113520 = icmp sgt i32 %51, 0, !dbg !1847
  br i1 %cmp113520, label %for.cond115.preheader.lr.ph, label %for.end279, !dbg !1847

for.cond115.preheader.lr.ph:                      ; preds = %if.end107
  %nnodes132 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !1849
  %nthreads136 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5, !dbg !1849
  %arraydecay148 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0, !dbg !1853
  %natoms = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3, !dbg !1854
  %threadid265 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4, !dbg !1855
  %tobool77.not = xor i1 %tobool77, true, !dbg !1855
  br label %for.cond115.preheader, !dbg !1847

for.cond115.preheader:                            ; preds = %for.cond115.preheader.lr.ph, %for.inc277
  %indvars.iv535 = phi i64 [ 0, %for.cond115.preheader.lr.ph ], [ %indvars.iv.next536, %for.inc277 ]
  %step.0521 = phi i32 [ 0, %for.cond115.preheader.lr.ph ], [ %inc278, %for.inc277 ]
  %52 = trunc i64 %indvars.iv535 to i32, !dbg !1849
  %sext = mul i64 %indvars.iv535, 12884901888, !dbg !1856
  %53 = lshr exact i64 %sext, 32, !dbg !1856
  br label %for.body118, !dbg !1856

for.body118:                                      ; preds = %for.inc258, %for.cond115.preheader
  %indvars.iv530 = phi i64 [ 0, %for.cond115.preheader ], [ %indvars.iv.next531, %for.inc258 ]
  %arrayidx121 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv535, i64 %indvars.iv530, !dbg !1857
  %54 = load float* %arrayidx121, align 4, !dbg !1857, !tbaa !1261
  %sub = fadd float %54, 0xBEB0C6F7A0000000, !dbg !1857
  store float %sub, float* %arrayidx121, align 4, !dbg !1857, !tbaa !1261
  call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay74}, i64 0, metadata !1858) #2, !dbg !1860
  call void @llvm.dbg.value(metadata !1246, i64 0, metadata !1861) #2, !dbg !1862
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 36, i32 16, i1 false) #2, !dbg !1863
  %55 = add nsw i64 %indvars.iv530, %53, !dbg !1849
  %56 = trunc i64 %55 to i32, !dbg !1849
  %mul129 = shl nsw i32 %56, 1, !dbg !1849
  br i1 %tobool77, label %land.rhs131, label %land.end142, !dbg !1849

land.rhs131:                                      ; preds = %for.body118
  %57 = load i32* %nnodes132, align 4, !dbg !1849, !tbaa !1255
  %cmp133 = icmp sgt i32 %57, 1, !dbg !1849
  br i1 %cmp133, label %land.end142, label %lor.rhs135, !dbg !1849

lor.rhs135:                                       ; preds = %land.rhs131
  %58 = load i32* %nthreads136, align 4, !dbg !1849, !tbaa !1255
  %phitmp511 = icmp slt i32 %58, 2, !dbg !1849
  br label %land.end142, !dbg !1849

land.end142:                                      ; preds = %land.rhs131, %lor.rhs135, %for.body118
  %59 = phi i1 [ false, %for.body118 ], [ false, %land.rhs131 ], [ %phitmp511, %lor.rhs135 ]
  %land.ext143 = zext i1 %59 to i32
  call void @do_force(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* null, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, [3 x float]* %arraydecay74, [3 x float]* %arraydecay76, i32 %mul129, %struct.t_nrnb* %mynrnb, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, float* %ener, %struct.t_fcdata* %fcd, i32 %land.ext143, float %6, %struct.t_graph* %graph, i32 0, i32 0, %struct.t_forcerec* %fr, float* %arraydecay85, i32 0) #6
  br i1 %cmp, label %if.then146, label %for.cond150.preheader, !dbg !1864

if.then146:                                       ; preds = %land.end142
  call void @unshift_self(%struct.t_graph* %graph, [3 x float]* %arraydecay148, [3 x float]* %x) #6, !dbg !1853
  br label %for.cond150.preheader, !dbg !1853

for.cond150.preheader:                            ; preds = %if.then146, %land.end142
  %60 = load i32* %nr, align 4, !dbg !1865, !tbaa !1255
  %cmp153514 = icmp sgt i32 %60, 0, !dbg !1865
  br i1 %cmp153514, label %for.cond156.preheader, label %for.end170, !dbg !1865

for.cond156.preheader:                            ; preds = %for.cond150.preheader, %for.inc168
  %indvars.iv522 = phi i64 [ %indvars.iv.next523, %for.inc168 ], [ 0, %for.cond150.preheader ]
  br label %for.body159, !dbg !1867

for.body159:                                      ; preds = %for.body159, %for.cond156.preheader
  %indvars.iv = phi i64 [ 0, %for.cond156.preheader ], [ %indvars.iv.next, %for.body159 ]
  %arrayidx163 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv522, i64 %indvars.iv, !dbg !1870
  %61 = load float* %arrayidx163, align 4, !dbg !1870, !tbaa !1261
  %arrayidx167 = getelementptr inbounds [3 x float]* %4, i64 %indvars.iv522, i64 %indvars.iv, !dbg !1870
  store float %61, float* %arrayidx167, align 4, !dbg !1870, !tbaa !1261
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1867
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1867
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !1867
  br i1 %exitcond, label %for.inc168, label %for.body159, !dbg !1867

for.inc168:                                       ; preds = %for.body159
  %indvars.iv.next523 = add i64 %indvars.iv522, 1, !dbg !1865
  %62 = trunc i64 %indvars.iv.next523 to i32, !dbg !1865
  %cmp153 = icmp slt i32 %62, %60, !dbg !1865
  br i1 %cmp153, label %for.cond156.preheader, label %for.end170, !dbg !1865

for.end170:                                       ; preds = %for.inc168, %for.cond150.preheader
  %63 = load float* %arrayidx121, align 4, !dbg !1872, !tbaa !1261
  %conv179 = fadd float %63, 0x3EC0C6F7A0000000, !dbg !1872
  store float %conv179, float* %arrayidx121, align 4, !dbg !1872, !tbaa !1261
  call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay74}, i64 0, metadata !1873) #2, !dbg !1875
  call void @llvm.dbg.value(metadata !1246, i64 0, metadata !1876) #2, !dbg !1877
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 36, i32 16, i1 false) #2, !dbg !1878
  %add190510 = or i32 %mul129, 1, !dbg !1879
  br i1 %tobool77, label %land.rhs192, label %land.end203, !dbg !1879

land.rhs192:                                      ; preds = %for.end170
  %64 = load i32* %nnodes132, align 4, !dbg !1879, !tbaa !1255
  %cmp194 = icmp sgt i32 %64, 1, !dbg !1879
  br i1 %cmp194, label %land.end203, label %lor.rhs196, !dbg !1879

lor.rhs196:                                       ; preds = %land.rhs192
  %65 = load i32* %nthreads136, align 4, !dbg !1879, !tbaa !1255
  %phitmp = icmp slt i32 %65, 2, !dbg !1879
  br label %land.end203, !dbg !1879

land.end203:                                      ; preds = %land.rhs192, %lor.rhs196, %for.end170
  %66 = phi i1 [ false, %for.end170 ], [ false, %land.rhs192 ], [ %phitmp, %lor.rhs196 ]
  %land.ext204 = zext i1 %66 to i32
  call void @do_force(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* null, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, [3 x float]* %arraydecay74, [3 x float]* %arraydecay76, i32 %add190510, %struct.t_nrnb* %mynrnb, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, float* %ener, %struct.t_fcdata* %fcd, i32 %land.ext204, float %6, %struct.t_graph* %graph, i32 0, i32 0, %struct.t_forcerec* %fr, float* %arraydecay85, i32 0) #6
  br i1 %cmp, label %if.then207, label %for.cond211.preheader, !dbg !1880

if.then207:                                       ; preds = %land.end203
  call void @unshift_self(%struct.t_graph* %graph, [3 x float]* %arraydecay148, [3 x float]* %x) #6, !dbg !1881
  br label %for.cond211.preheader, !dbg !1881

for.cond211.preheader:                            ; preds = %if.then207, %land.end203
  %67 = load i32* %nr, align 4, !dbg !1882, !tbaa !1255
  %cmp214517 = icmp sgt i32 %67, 0, !dbg !1882
  br i1 %cmp214517, label %for.cond217.preheader, label %for.end240, !dbg !1882

for.cond217.preheader:                            ; preds = %for.cond211.preheader, %for.inc238
  %indvars.iv528 = phi i64 [ %indvars.iv.next529, %for.inc238 ], [ 0, %for.cond211.preheader ]
  br label %for.body220, !dbg !1884

for.body220:                                      ; preds = %for.body220, %for.cond217.preheader
  %indvars.iv524 = phi i64 [ 0, %for.cond217.preheader ], [ %indvars.iv.next525, %for.body220 ]
  %arrayidx224 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv528, i64 %indvars.iv524, !dbg !1887
  %68 = load float* %arrayidx224, align 4, !dbg !1887, !tbaa !1261
  %arrayidx228 = getelementptr inbounds [3 x float]* %4, i64 %indvars.iv528, i64 %indvars.iv524, !dbg !1887
  %69 = load float* %arrayidx228, align 4, !dbg !1887, !tbaa !1261
  %sub229 = fsub float %68, %69, !dbg !1887
  %div = fdiv float %sub229, 0x3EC0C6F7A0000000, !dbg !1887
  store float %div, float* %arrayidx228, align 4, !dbg !1887, !tbaa !1261
  %indvars.iv.next525 = add i64 %indvars.iv524, 1, !dbg !1884
  %lftr.wideiv526 = trunc i64 %indvars.iv.next525 to i32, !dbg !1884
  %exitcond527 = icmp eq i32 %lftr.wideiv526, 3, !dbg !1884
  br i1 %exitcond527, label %for.inc238, label %for.body220, !dbg !1884

for.inc238:                                       ; preds = %for.body220
  %indvars.iv.next529 = add i64 %indvars.iv528, 1, !dbg !1882
  %70 = trunc i64 %indvars.iv.next529 to i32, !dbg !1882
  %cmp214 = icmp slt i32 %70, %67, !dbg !1882
  br i1 %cmp214, label %for.cond217.preheader, label %for.end240, !dbg !1882

for.end240:                                       ; preds = %for.inc238, %for.cond211.preheader
  call void @llvm.dbg.value(metadata !{[3 x float]* %4}, i64 0, metadata !1112), !dbg !1889
  %call241 = call i8* @ftp2fn(i32 39, i32 %nfile, %struct.t_filenm* %fnm) #6, !dbg !1854
  %71 = load i32* %natoms, align 4, !dbg !1854, !tbaa !1255
  %call244 = call i32 @write_traj(%struct._IO_FILE* %log, %struct.t_commrec* %cr, i8* %call241, %struct.t_nsborder* %nsb, i32 %52, float %5, float %6, %struct.t_nrnb* %nrnb, i32 %71, [3 x float]* %4, [3 x float]* null, [3 x float]* null, [3 x float]* %arraydecay148) #6, !dbg !1854
  %72 = load float* %arrayidx121, align 4, !dbg !1890, !tbaa !1261
  %sub249 = fadd float %72, 0xBEB0C6F7A0000000, !dbg !1890
  store float %sub249, float* %arrayidx121, align 4, !dbg !1890, !tbaa !1261
  br i1 %tobool77, label %if.then255, label %for.inc258, !dbg !1891

if.then255:                                       ; preds = %for.end240
  %call256 = call i32 @fflush(%struct._IO_FILE* %log) #6, !dbg !1892
  br label %for.inc258, !dbg !1892

for.inc258:                                       ; preds = %for.end240, %if.then255
  %indvars.iv.next531 = add i64 %indvars.iv530, 1, !dbg !1856
  %lftr.wideiv533 = trunc i64 %indvars.iv.next531 to i32, !dbg !1856
  %exitcond534 = icmp eq i32 %lftr.wideiv533, 3, !dbg !1856
  br i1 %exitcond534, label %for.end260, label %for.body118, !dbg !1856

for.end260:                                       ; preds = %for.inc258
  %73 = load i32* %nodeid, align 4, !dbg !1855, !tbaa !1255
  %cmp262 = icmp eq i32 %73, 0, !dbg !1855
  br i1 %cmp262, label %land.lhs.true264, label %for.inc277, !dbg !1855

land.lhs.true264:                                 ; preds = %for.end260
  %74 = load i32* %threadid265, align 4, !dbg !1855, !tbaa !1255
  %cmp266.not = icmp ne i32 %74, 0, !dbg !1855
  %brmerge = or i1 %cmp266.not, %tobool77.not, !dbg !1855
  br i1 %brmerge, label %for.inc277, label %if.then270, !dbg !1855

if.then270:                                       ; preds = %land.lhs.true264
  %75 = load %struct._IO_FILE** @stderr, align 8, !dbg !1893, !tbaa !1289
  %76 = add nsw i64 %indvars.iv535, 1, !dbg !1893
  %77 = load i32* %nr, align 4, !dbg !1893, !tbaa !1255
  %78 = trunc i64 %76 to i32, !dbg !1893
  %call274 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([28 x i8]* @.str33, i64 0, i64 0), i32 %78, i32 %77) #6, !dbg !1893
  %79 = load %struct._IO_FILE** @stderr, align 8, !dbg !1895, !tbaa !1289
  %call275 = call i32 @fflush(%struct._IO_FILE* %79) #6, !dbg !1895
  br label %for.inc277, !dbg !1896

for.inc277:                                       ; preds = %land.lhs.true264, %for.end260, %if.then270
  %indvars.iv.next536 = add i64 %indvars.iv535, 1, !dbg !1847
  %inc278 = add nsw i32 %step.0521, 1, !dbg !1847
  call void @llvm.dbg.value(metadata !{i32 %inc278}, i64 0, metadata !1089), !dbg !1847
  %80 = load i32* %nsteps, align 4, !dbg !1847, !tbaa !1255
  %81 = trunc i64 %indvars.iv.next536 to i32, !dbg !1847
  %cmp113 = icmp slt i32 %81, %80, !dbg !1847
  br i1 %cmp113, label %for.cond115.preheader, label %for.end279, !dbg !1847

for.end279:                                       ; preds = %for.inc277, %if.end107
  %step.0.lcssa = phi i32 [ 0, %if.end107 ], [ %inc278, %for.inc277 ]
  %conv280 = sitofp i32 %step.0.lcssa to float, !dbg !1897
  %delta_t282 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15, !dbg !1897
  %82 = load float* %delta_t282, align 4, !dbg !1897, !tbaa !1261
  %mul283 = fmul float %conv280, %82, !dbg !1897
  %add284 = fadd float %5, %mul283, !dbg !1897
  call void @llvm.dbg.value(metadata !{float %add284}, i64 0, metadata !1092), !dbg !1897
  %83 = load i32* %nodeid, align 4, !dbg !1898, !tbaa !1255
  %cmp290 = icmp eq i32 %83, 0, !dbg !1898
  br i1 %cmp290, label %land.lhs.true292, label %if.end299, !dbg !1898

land.lhs.true292:                                 ; preds = %for.end279
  %threadid293 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4, !dbg !1898
  %84 = load i32* %threadid293, align 4, !dbg !1898, !tbaa !1255
  %cmp294 = icmp eq i32 %84, 0, !dbg !1898
  br i1 %cmp294, label %if.then296, label %if.end299, !dbg !1898

if.then296:                                       ; preds = %land.lhs.true292
  call void @print_ebin(i32 -1, i32 0, i32 0, i32 0, %struct._IO_FILE* %log, i32 %step.0.lcssa, float %add284, i32 1, i32 0, %struct.t_mdebin* %call39, %struct.t_fcdata* %fcd, %struct.t_atoms* %atoms) #6, !dbg !1899
  call void @print_ebin(i32 -1, i32 0, i32 0, i32 0, %struct._IO_FILE* %log, i32 %step.0.lcssa, float %add284, i32 2, i32 0, %struct.t_mdebin* %call39, %struct.t_fcdata* %fcd, %struct.t_atoms* %atoms) #6, !dbg !1901
  %.pre = load float* %delta_t282, align 4, !dbg !1902, !tbaa !1261
  br label %if.end299, !dbg !1903

if.end299:                                        ; preds = %if.then296, %land.lhs.true292, %for.end279
  %85 = phi float [ %.pre, %if.then296 ], [ %82, %land.lhs.true292 ], [ %82, %for.end279 ]
  %arraydecay304 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0, !dbg !1902
  call void @construct_dummies(%struct._IO_FILE* %log, [3 x float]* %x, %struct.t_nrnb* %mynrnb, float %85, [3 x float]* %v, %struct.t_idef* %idef, %struct.t_graph* %graph, %struct.t_commrec* %cr, [3 x float]* %arraydecay304, %struct.t_comm_dummies* null) #6, !dbg !1902
  call void @llvm.lifetime.end(i64 1032, i8* %2) #2, !dbg !1904
  call void @llvm.lifetime.end(i64 36, i8* %1) #2, !dbg !1904
  call void @llvm.lifetime.end(i64 36, i8* %0) #2, !dbg !1904
  ret i64 %call63, !dbg !1904
}

; Function Attrs: optsize
declare void @init_nrnb(%struct.t_nrnb*) #3

; Function Attrs: optsize
declare void @calc_shifts([3 x float]*, float*, [3 x float]*) #3

; Function Attrs: optsize
declare void @mk_mshift(%struct._IO_FILE*, %struct.t_graph*, [3 x float]*, [3 x float]*) #3

; Function Attrs: optsize
declare void @shift_self(%struct.t_graph*, [3 x float]*, [3 x float]*) #3

; Function Attrs: optsize
declare float @sum_ekin(%struct.t_grpopts*, %struct.t_groups*, [3 x float]*, i32) #3

; Function Attrs: optsize
declare void @berendsen_tcoupl(%struct.t_grpopts*, %struct.t_groups*, float, float) #3

; Function Attrs: optsize
declare void @nosehoover_tcoupl(%struct.t_grpopts*, %struct.t_groups*, float, float) #3

; Function Attrs: optsize
declare void @unshift_self(%struct.t_graph*, [3 x float]*, [3 x float]*) #3

; Function Attrs: optsize
declare void @gmx_tx(i32, i8*, i32) #3

; Function Attrs: optsize
declare void @gmx_rx(i32, i8*, i32) #3

; Function Attrs: optsize
declare void @gmx_wait(i32, i32) #3

; Function Attrs: optsize
declare void @init_mdatoms(%struct.t_mdatoms*, float, i32) #3

; Function Attrs: optsize
declare %struct.t_vcm* @init_vcm(%struct._IO_FILE*, %struct.t_topology*, %struct.t_commrec*, %struct.t_mdatoms*, i32, i32, i32) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #4

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !126, metadata !127, metadata !1232, metadata !126, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !53, metadata !59, metadata !66, metadata !71, metadata !78}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 37, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 37, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/filenm.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52}
!6 = metadata !{i32 786472, metadata !"efMDP", i64 0} ; [ DW_TAG_enumerator ] [efMDP :: 0]
!7 = metadata !{i32 786472, metadata !"efGCT", i64 1} ; [ DW_TAG_enumerator ] [efGCT :: 1]
!8 = metadata !{i32 786472, metadata !"efTRX", i64 2} ; [ DW_TAG_enumerator ] [efTRX :: 2]
!9 = metadata !{i32 786472, metadata !"efTRN", i64 3} ; [ DW_TAG_enumerator ] [efTRN :: 3]
!10 = metadata !{i32 786472, metadata !"efTRR", i64 4} ; [ DW_TAG_enumerator ] [efTRR :: 4]
!11 = metadata !{i32 786472, metadata !"efTRJ", i64 5} ; [ DW_TAG_enumerator ] [efTRJ :: 5]
!12 = metadata !{i32 786472, metadata !"efXTC", i64 6} ; [ DW_TAG_enumerator ] [efXTC :: 6]
!13 = metadata !{i32 786472, metadata !"efG87", i64 7} ; [ DW_TAG_enumerator ] [efG87 :: 7]
!14 = metadata !{i32 786472, metadata !"efENX", i64 8} ; [ DW_TAG_enumerator ] [efENX :: 8]
!15 = metadata !{i32 786472, metadata !"efEDR", i64 9} ; [ DW_TAG_enumerator ] [efEDR :: 9]
!16 = metadata !{i32 786472, metadata !"efENE", i64 10} ; [ DW_TAG_enumerator ] [efENE :: 10]
!17 = metadata !{i32 786472, metadata !"efSTX", i64 11} ; [ DW_TAG_enumerator ] [efSTX :: 11]
!18 = metadata !{i32 786472, metadata !"efSTO", i64 12} ; [ DW_TAG_enumerator ] [efSTO :: 12]
!19 = metadata !{i32 786472, metadata !"efGRO", i64 13} ; [ DW_TAG_enumerator ] [efGRO :: 13]
!20 = metadata !{i32 786472, metadata !"efG96", i64 14} ; [ DW_TAG_enumerator ] [efG96 :: 14]
!21 = metadata !{i32 786472, metadata !"efPDB", i64 15} ; [ DW_TAG_enumerator ] [efPDB :: 15]
!22 = metadata !{i32 786472, metadata !"efBRK", i64 16} ; [ DW_TAG_enumerator ] [efBRK :: 16]
!23 = metadata !{i32 786472, metadata !"efENT", i64 17} ; [ DW_TAG_enumerator ] [efENT :: 17]
!24 = metadata !{i32 786472, metadata !"efLOG", i64 18} ; [ DW_TAG_enumerator ] [efLOG :: 18]
!25 = metadata !{i32 786472, metadata !"efXVG", i64 19} ; [ DW_TAG_enumerator ] [efXVG :: 19]
!26 = metadata !{i32 786472, metadata !"efOUT", i64 20} ; [ DW_TAG_enumerator ] [efOUT :: 20]
!27 = metadata !{i32 786472, metadata !"efNDX", i64 21} ; [ DW_TAG_enumerator ] [efNDX :: 21]
!28 = metadata !{i32 786472, metadata !"efTOP", i64 22} ; [ DW_TAG_enumerator ] [efTOP :: 22]
!29 = metadata !{i32 786472, metadata !"efITP", i64 23} ; [ DW_TAG_enumerator ] [efITP :: 23]
!30 = metadata !{i32 786472, metadata !"efTPX", i64 24} ; [ DW_TAG_enumerator ] [efTPX :: 24]
!31 = metadata !{i32 786472, metadata !"efTPS", i64 25} ; [ DW_TAG_enumerator ] [efTPS :: 25]
!32 = metadata !{i32 786472, metadata !"efTPR", i64 26} ; [ DW_TAG_enumerator ] [efTPR :: 26]
!33 = metadata !{i32 786472, metadata !"efTPA", i64 27} ; [ DW_TAG_enumerator ] [efTPA :: 27]
!34 = metadata !{i32 786472, metadata !"efTPB", i64 28} ; [ DW_TAG_enumerator ] [efTPB :: 28]
!35 = metadata !{i32 786472, metadata !"efTEX", i64 29} ; [ DW_TAG_enumerator ] [efTEX :: 29]
!36 = metadata !{i32 786472, metadata !"efRTP", i64 30} ; [ DW_TAG_enumerator ] [efRTP :: 30]
!37 = metadata !{i32 786472, metadata !"efATP", i64 31} ; [ DW_TAG_enumerator ] [efATP :: 31]
!38 = metadata !{i32 786472, metadata !"efHDB", i64 32} ; [ DW_TAG_enumerator ] [efHDB :: 32]
!39 = metadata !{i32 786472, metadata !"efDAT", i64 33} ; [ DW_TAG_enumerator ] [efDAT :: 33]
!40 = metadata !{i32 786472, metadata !"efDLG", i64 34} ; [ DW_TAG_enumerator ] [efDLG :: 34]
!41 = metadata !{i32 786472, metadata !"efMAP", i64 35} ; [ DW_TAG_enumerator ] [efMAP :: 35]
!42 = metadata !{i32 786472, metadata !"efEPS", i64 36} ; [ DW_TAG_enumerator ] [efEPS :: 36]
!43 = metadata !{i32 786472, metadata !"efMAT", i64 37} ; [ DW_TAG_enumerator ] [efMAT :: 37]
!44 = metadata !{i32 786472, metadata !"efM2P", i64 38} ; [ DW_TAG_enumerator ] [efM2P :: 38]
!45 = metadata !{i32 786472, metadata !"efMTX", i64 39} ; [ DW_TAG_enumerator ] [efMTX :: 39]
!46 = metadata !{i32 786472, metadata !"efEDI", i64 40} ; [ DW_TAG_enumerator ] [efEDI :: 40]
!47 = metadata !{i32 786472, metadata !"efEDO", i64 41} ; [ DW_TAG_enumerator ] [efEDO :: 41]
!48 = metadata !{i32 786472, metadata !"efPPA", i64 42} ; [ DW_TAG_enumerator ] [efPPA :: 42]
!49 = metadata !{i32 786472, metadata !"efPDO", i64 43} ; [ DW_TAG_enumerator ] [efPDO :: 43]
!50 = metadata !{i32 786472, metadata !"efHAT", i64 44} ; [ DW_TAG_enumerator ] [efHAT :: 44]
!51 = metadata !{i32 786472, metadata !"efXPM", i64 45} ; [ DW_TAG_enumerator ] [efXPM :: 45]
!52 = metadata !{i32 786472, metadata !"efNR", i64 46} ; [ DW_TAG_enumerator ] [efNR :: 46]
!53 = metadata !{i32 786436, metadata !54, null, metadata !"", i32 106, i64 32, i64 32, i32 0, i32 0, null, metadata !55, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 106, size 32, align 32, offset 0] [from ]
!54 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/enums.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!55 = metadata !{metadata !56, metadata !57, metadata !58}
!56 = metadata !{i32 786472, metadata !"efepNO", i64 0} ; [ DW_TAG_enumerator ] [efepNO :: 0]
!57 = metadata !{i32 786472, metadata !"efepYES", i64 1} ; [ DW_TAG_enumerator ] [efepYES :: 1]
!58 = metadata !{i32 786472, metadata !"efepNR", i64 2} ; [ DW_TAG_enumerator ] [efepNR :: 2]
!59 = metadata !{i32 786436, metadata !54, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [from ]
!60 = metadata !{metadata !61, metadata !62, metadata !63, metadata !64, metadata !65}
!61 = metadata !{i32 786472, metadata !"etcNO", i64 0} ; [ DW_TAG_enumerator ] [etcNO :: 0]
!62 = metadata !{i32 786472, metadata !"etcBERENDSEN", i64 1} ; [ DW_TAG_enumerator ] [etcBERENDSEN :: 1]
!63 = metadata !{i32 786472, metadata !"etcNOSEHOOVER", i64 2} ; [ DW_TAG_enumerator ] [etcNOSEHOOVER :: 2]
!64 = metadata !{i32 786472, metadata !"etcYES", i64 3} ; [ DW_TAG_enumerator ] [etcYES :: 3]
!65 = metadata !{i32 786472, metadata !"etcNR", i64 4} ; [ DW_TAG_enumerator ] [etcNR :: 4]
!66 = metadata !{i32 786436, metadata !54, null, metadata !"", i32 42, i64 32, i64 32, i32 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 42, size 32, align 32, offset 0] [from ]
!67 = metadata !{metadata !68, metadata !69, metadata !70}
!68 = metadata !{i32 786472, metadata !"epbcXYZ", i64 0} ; [ DW_TAG_enumerator ] [epbcXYZ :: 0]
!69 = metadata !{i32 786472, metadata !"epbcNONE", i64 1} ; [ DW_TAG_enumerator ] [epbcNONE :: 1]
!70 = metadata !{i32 786472, metadata !"epbcNR", i64 2} ; [ DW_TAG_enumerator ] [epbcNR :: 2]
!71 = metadata !{i32 786436, metadata !72, null, metadata !"", i32 50, i64 32, i64 32, i32 0, i32 0, null, metadata !73, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 50, size 32, align 32, offset 0] [from ]
!72 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/ebin.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!73 = metadata !{metadata !74, metadata !75, metadata !76, metadata !77}
!74 = metadata !{i32 786472, metadata !"eprNORMAL", i64 0} ; [ DW_TAG_enumerator ] [eprNORMAL :: 0]
!75 = metadata !{i32 786472, metadata !"eprAVER", i64 1} ; [ DW_TAG_enumerator ] [eprAVER :: 1]
!76 = metadata !{i32 786472, metadata !"eprRMS", i64 2} ; [ DW_TAG_enumerator ] [eprRMS :: 2]
!77 = metadata !{i32 786472, metadata !"eprNR", i64 3} ; [ DW_TAG_enumerator ] [eprNR :: 3]
!78 = metadata !{i32 786436, metadata !79, null, metadata !"", i32 49, i64 32, i64 32, i32 0, i32 0, null, metadata !80, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 49, size 32, align 32, offset 0] [from ]
!79 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/idef.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!80 = metadata !{metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125}
!81 = metadata !{i32 786472, metadata !"F_BONDS", i64 0} ; [ DW_TAG_enumerator ] [F_BONDS :: 0]
!82 = metadata !{i32 786472, metadata !"F_G96BONDS", i64 1} ; [ DW_TAG_enumerator ] [F_G96BONDS :: 1]
!83 = metadata !{i32 786472, metadata !"F_MORSE", i64 2} ; [ DW_TAG_enumerator ] [F_MORSE :: 2]
!84 = metadata !{i32 786472, metadata !"F_CUBICBONDS", i64 3} ; [ DW_TAG_enumerator ] [F_CUBICBONDS :: 3]
!85 = metadata !{i32 786472, metadata !"F_CONNBONDS", i64 4} ; [ DW_TAG_enumerator ] [F_CONNBONDS :: 4]
!86 = metadata !{i32 786472, metadata !"F_HARMONIC", i64 5} ; [ DW_TAG_enumerator ] [F_HARMONIC :: 5]
!87 = metadata !{i32 786472, metadata !"F_ANGLES", i64 6} ; [ DW_TAG_enumerator ] [F_ANGLES :: 6]
!88 = metadata !{i32 786472, metadata !"F_G96ANGLES", i64 7} ; [ DW_TAG_enumerator ] [F_G96ANGLES :: 7]
!89 = metadata !{i32 786472, metadata !"F_PDIHS", i64 8} ; [ DW_TAG_enumerator ] [F_PDIHS :: 8]
!90 = metadata !{i32 786472, metadata !"F_RBDIHS", i64 9} ; [ DW_TAG_enumerator ] [F_RBDIHS :: 9]
!91 = metadata !{i32 786472, metadata !"F_IDIHS", i64 10} ; [ DW_TAG_enumerator ] [F_IDIHS :: 10]
!92 = metadata !{i32 786472, metadata !"F_LJ14", i64 11} ; [ DW_TAG_enumerator ] [F_LJ14 :: 11]
!93 = metadata !{i32 786472, metadata !"F_COUL14", i64 12} ; [ DW_TAG_enumerator ] [F_COUL14 :: 12]
!94 = metadata !{i32 786472, metadata !"F_LJ", i64 13} ; [ DW_TAG_enumerator ] [F_LJ :: 13]
!95 = metadata !{i32 786472, metadata !"F_BHAM", i64 14} ; [ DW_TAG_enumerator ] [F_BHAM :: 14]
!96 = metadata !{i32 786472, metadata !"F_LJLR", i64 15} ; [ DW_TAG_enumerator ] [F_LJLR :: 15]
!97 = metadata !{i32 786472, metadata !"F_DISPCORR", i64 16} ; [ DW_TAG_enumerator ] [F_DISPCORR :: 16]
!98 = metadata !{i32 786472, metadata !"F_SR", i64 17} ; [ DW_TAG_enumerator ] [F_SR :: 17]
!99 = metadata !{i32 786472, metadata !"F_LR", i64 18} ; [ DW_TAG_enumerator ] [F_LR :: 18]
!100 = metadata !{i32 786472, metadata !"F_WPOL", i64 19} ; [ DW_TAG_enumerator ] [F_WPOL :: 19]
!101 = metadata !{i32 786472, metadata !"F_POSRES", i64 20} ; [ DW_TAG_enumerator ] [F_POSRES :: 20]
!102 = metadata !{i32 786472, metadata !"F_DISRES", i64 21} ; [ DW_TAG_enumerator ] [F_DISRES :: 21]
!103 = metadata !{i32 786472, metadata !"F_DISRESVIOL", i64 22} ; [ DW_TAG_enumerator ] [F_DISRESVIOL :: 22]
!104 = metadata !{i32 786472, metadata !"F_ORIRES", i64 23} ; [ DW_TAG_enumerator ] [F_ORIRES :: 23]
!105 = metadata !{i32 786472, metadata !"F_ORIRESDEV", i64 24} ; [ DW_TAG_enumerator ] [F_ORIRESDEV :: 24]
!106 = metadata !{i32 786472, metadata !"F_ANGRES", i64 25} ; [ DW_TAG_enumerator ] [F_ANGRES :: 25]
!107 = metadata !{i32 786472, metadata !"F_ANGRESZ", i64 26} ; [ DW_TAG_enumerator ] [F_ANGRESZ :: 26]
!108 = metadata !{i32 786472, metadata !"F_SHAKE", i64 27} ; [ DW_TAG_enumerator ] [F_SHAKE :: 27]
!109 = metadata !{i32 786472, metadata !"F_SHAKENC", i64 28} ; [ DW_TAG_enumerator ] [F_SHAKENC :: 28]
!110 = metadata !{i32 786472, metadata !"F_SETTLE", i64 29} ; [ DW_TAG_enumerator ] [F_SETTLE :: 29]
!111 = metadata !{i32 786472, metadata !"F_DUMMY2", i64 30} ; [ DW_TAG_enumerator ] [F_DUMMY2 :: 30]
!112 = metadata !{i32 786472, metadata !"F_DUMMY3", i64 31} ; [ DW_TAG_enumerator ] [F_DUMMY3 :: 31]
!113 = metadata !{i32 786472, metadata !"F_DUMMY3FD", i64 32} ; [ DW_TAG_enumerator ] [F_DUMMY3FD :: 32]
!114 = metadata !{i32 786472, metadata !"F_DUMMY3FAD", i64 33} ; [ DW_TAG_enumerator ] [F_DUMMY3FAD :: 33]
!115 = metadata !{i32 786472, metadata !"F_DUMMY3OUT", i64 34} ; [ DW_TAG_enumerator ] [F_DUMMY3OUT :: 34]
!116 = metadata !{i32 786472, metadata !"F_DUMMY4FD", i64 35} ; [ DW_TAG_enumerator ] [F_DUMMY4FD :: 35]
!117 = metadata !{i32 786472, metadata !"F_EQM", i64 36} ; [ DW_TAG_enumerator ] [F_EQM :: 36]
!118 = metadata !{i32 786472, metadata !"F_EPOT", i64 37} ; [ DW_TAG_enumerator ] [F_EPOT :: 37]
!119 = metadata !{i32 786472, metadata !"F_EKIN", i64 38} ; [ DW_TAG_enumerator ] [F_EKIN :: 38]
!120 = metadata !{i32 786472, metadata !"F_ETOT", i64 39} ; [ DW_TAG_enumerator ] [F_ETOT :: 39]
!121 = metadata !{i32 786472, metadata !"F_TEMP", i64 40} ; [ DW_TAG_enumerator ] [F_TEMP :: 40]
!122 = metadata !{i32 786472, metadata !"F_PRES", i64 41} ; [ DW_TAG_enumerator ] [F_PRES :: 41]
!123 = metadata !{i32 786472, metadata !"F_DVDL", i64 42} ; [ DW_TAG_enumerator ] [F_DVDL :: 42]
!124 = metadata !{i32 786472, metadata !"F_DVDLKIN", i64 43} ; [ DW_TAG_enumerator ] [F_DVDLKIN :: 43]
!125 = metadata !{i32 786472, metadata !"F_NRE", i64 44} ; [ DW_TAG_enumerator ] [F_NRE :: 44]
!126 = metadata !{i32 0}
!127 = metadata !{metadata !128, metadata !981, metadata !1050, metadata !1121, metadata !1129, metadata !1141, metadata !1162, metadata !1169, metadata !1177, metadata !1192, metadata !1200, metadata !1207, metadata !1227}
!128 = metadata !{i32 786478, metadata !1, metadata !129, metadata !"do_cg", metadata !"do_cg", metadata !"", i32 185, metadata !130, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (%struct._IO_FILE*, i32, %struct.t_filenm*, %struct.t_parm*, %struct.t_topology*, %struct.t_groups*, %struct.t_nsborder*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_mdatoms*, [3 x float]*, float*, %struct.t_fcdata*, %struct.t_nrnb*, i32, i32, %struct.t_comm_dummies*, %struct.t_commrec*, %struct.t_commrec*, %struct.t_graph*, %struct.t_forcerec*, float*)* @do_cg, null, null, metadata !851, i32 193} ; [ DW_TAG_subprogram ] [line 185] [def] [scope 193] [do_cg]
!129 = metadata !{i32 786473, metadata !1}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!130 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!131 = metadata !{metadata !132, metadata !135, metadata !141, metadata !192, metadata !200, metadata !334, metadata !562, metadata !604, metadata !309, metadata !309, metadata !309, metadata !620, metadata !649, metadata !305, metadata !650, metadata !708, metadata !141, metadata !141, metadata !718, metadata !731, metadata !731, metadata !742, metadata !756, metadata !305}
!132 = metadata !{i32 786454, metadata !1, null, metadata !"time_t", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !133} ; [ DW_TAG_typedef ] [time_t] [line 75, size 0, align 0, offset 0] [from __time_t]
!133 = metadata !{i32 786454, metadata !1, null, metadata !"__time_t", i32 139, i64 0, i64 0, i64 0, i32 0, metadata !134} ; [ DW_TAG_typedef ] [__time_t] [line 139, size 0, align 0, offset 0] [from long int]
!134 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!135 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !136} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!136 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !137} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!137 = metadata !{i32 786451, metadata !138, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !139, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!138 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!139 = metadata !{metadata !140, metadata !142, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !163, metadata !164, metadata !165, metadata !166, metadata !168, metadata !170, metadata !172, metadata !176, metadata !178, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !187, metadata !188}
!140 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!141 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!142 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !143} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!143 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !144} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!144 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!145 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !143} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!146 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !143} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!147 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !143} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!148 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !143} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!149 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !143} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!150 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !143} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!151 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !143} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!152 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !143} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!153 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !143} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!154 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !143} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!155 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !156} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!156 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !157} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!157 = metadata !{i32 786451, metadata !138, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !158, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!158 = metadata !{metadata !159, metadata !160, metadata !162}
!159 = metadata !{i32 786445, metadata !138, metadata !157, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !156} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!160 = metadata !{i32 786445, metadata !138, metadata !157, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !161} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!161 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !137} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!162 = metadata !{i32 786445, metadata !138, metadata !157, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !141} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!163 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !161} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!164 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !141} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!165 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !141} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!166 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !167} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!167 = metadata !{i32 786454, metadata !138, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !134} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!168 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !169} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!169 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!170 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !171} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!171 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!172 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !173} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!173 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !144, metadata !174, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!174 = metadata !{metadata !175}
!175 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!176 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !177} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!177 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!178 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !179} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!179 = metadata !{i32 786454, metadata !138, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !134} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!180 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !177} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!181 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !177} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!182 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !177} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!183 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !177} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!184 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !185} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!185 = metadata !{i32 786454, metadata !138, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !186} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!186 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!187 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !141} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!188 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !189} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!189 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !144, metadata !190, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!190 = metadata !{metadata !191}
!191 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!192 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !193} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_filenm]
!193 = metadata !{i32 786454, metadata !1, null, metadata !"t_filenm", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !194} ; [ DW_TAG_typedef ] [t_filenm] [line 62, size 0, align 0, offset 0] [from ]
!194 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 57, i64 256, i64 64, i32 0, i32 0, null, metadata !195, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 57, size 256, align 64, offset 0] [from ]
!195 = metadata !{metadata !196, metadata !197, metadata !198, metadata !199}
!196 = metadata !{i32 786445, metadata !4, metadata !194, metadata !"ftp", i32 58, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [ftp] [line 58, size 32, align 32, offset 0] [from int]
!197 = metadata !{i32 786445, metadata !4, metadata !194, metadata !"opt", i32 59, i64 64, i64 64, i64 64, i32 0, metadata !143} ; [ DW_TAG_member ] [opt] [line 59, size 64, align 64, offset 64] [from ]
!198 = metadata !{i32 786445, metadata !4, metadata !194, metadata !"fn", i32 60, i64 64, i64 64, i64 128, i32 0, metadata !143} ; [ DW_TAG_member ] [fn] [line 60, size 64, align 64, offset 128] [from ]
!199 = metadata !{i32 786445, metadata !4, metadata !194, metadata !"flag", i32 61, i64 64, i64 64, i64 192, i32 0, metadata !186} ; [ DW_TAG_member ] [flag] [line 61, size 64, align 64, offset 192] [from long unsigned int]
!200 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !201} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_parm]
!201 = metadata !{i32 786454, metadata !1, null, metadata !"t_parm", i32 44, i64 0, i64 0, i64 0, i32 0, metadata !202} ; [ DW_TAG_typedef ] [t_parm] [line 44, size 0, align 0, offset 0] [from ]
!202 = metadata !{i32 786451, metadata !203, null, metadata !"", i32 36, i64 6208, i64 64, i32 0, i32 0, null, metadata !204, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 6208, align 64, offset 0] [from ]
!203 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/parm.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!204 = metadata !{metadata !205, metadata !328, metadata !330, metadata !331, metadata !332, metadata !333}
!205 = metadata !{i32 786445, metadata !203, metadata !202, metadata !"ir", i32 38, i64 4736, i64 64, i64 0, i32 0, metadata !206} ; [ DW_TAG_member ] [ir] [line 38, size 4736, align 64, offset 0] [from t_inputrec]
!206 = metadata !{i32 786454, metadata !203, null, metadata !"t_inputrec", i32 143, i64 0, i64 0, i64 0, i32 0, metadata !207} ; [ DW_TAG_typedef ] [t_inputrec] [line 143, size 0, align 0, offset 0] [from ]
!207 = metadata !{i32 786451, metadata !208, null, metadata !"", i32 55, i64 4736, i64 64, i32 0, i32 0, null, metadata !209, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 55, size 4736, align 64, offset 0] [from ]
!208 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/inputrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!209 = metadata !{metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !319, metadata !327}
!210 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"eI", i32 56, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [eI] [line 56, size 32, align 32, offset 0] [from int]
!211 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"nsteps", i32 57, i64 32, i64 32, i64 32, i32 0, metadata !141} ; [ DW_TAG_member ] [nsteps] [line 57, size 32, align 32, offset 32] [from int]
!212 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"ns_type", i32 58, i64 32, i64 32, i64 64, i32 0, metadata !141} ; [ DW_TAG_member ] [ns_type] [line 58, size 32, align 32, offset 64] [from int]
!213 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"nstlist", i32 59, i64 32, i64 32, i64 96, i32 0, metadata !141} ; [ DW_TAG_member ] [nstlist] [line 59, size 32, align 32, offset 96] [from int]
!214 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"ndelta", i32 60, i64 32, i64 32, i64 128, i32 0, metadata !141} ; [ DW_TAG_member ] [ndelta] [line 60, size 32, align 32, offset 128] [from int]
!215 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"bDomDecomp", i32 61, i64 32, i64 32, i64 160, i32 0, metadata !141} ; [ DW_TAG_member ] [bDomDecomp] [line 61, size 32, align 32, offset 160] [from int]
!216 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"decomp_dir", i32 62, i64 32, i64 32, i64 192, i32 0, metadata !141} ; [ DW_TAG_member ] [decomp_dir] [line 62, size 32, align 32, offset 192] [from int]
!217 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"nstcomm", i32 63, i64 32, i64 32, i64 224, i32 0, metadata !141} ; [ DW_TAG_member ] [nstcomm] [line 63, size 32, align 32, offset 224] [from int]
!218 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"nstlog", i32 65, i64 32, i64 32, i64 256, i32 0, metadata !141} ; [ DW_TAG_member ] [nstlog] [line 65, size 32, align 32, offset 256] [from int]
!219 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"nstxout", i32 66, i64 32, i64 32, i64 288, i32 0, metadata !141} ; [ DW_TAG_member ] [nstxout] [line 66, size 32, align 32, offset 288] [from int]
!220 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"nstvout", i32 67, i64 32, i64 32, i64 320, i32 0, metadata !141} ; [ DW_TAG_member ] [nstvout] [line 67, size 32, align 32, offset 320] [from int]
!221 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"nstfout", i32 68, i64 32, i64 32, i64 352, i32 0, metadata !141} ; [ DW_TAG_member ] [nstfout] [line 68, size 32, align 32, offset 352] [from int]
!222 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"nstenergy", i32 69, i64 32, i64 32, i64 384, i32 0, metadata !141} ; [ DW_TAG_member ] [nstenergy] [line 69, size 32, align 32, offset 384] [from int]
!223 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"nstxtcout", i32 70, i64 32, i64 32, i64 416, i32 0, metadata !141} ; [ DW_TAG_member ] [nstxtcout] [line 70, size 32, align 32, offset 416] [from int]
!224 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"init_t", i32 71, i64 32, i64 32, i64 448, i32 0, metadata !225} ; [ DW_TAG_member ] [init_t] [line 71, size 32, align 32, offset 448] [from real]
!225 = metadata !{i32 786454, metadata !208, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !226} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!226 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!227 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"delta_t", i32 72, i64 32, i64 32, i64 480, i32 0, metadata !225} ; [ DW_TAG_member ] [delta_t] [line 72, size 32, align 32, offset 480] [from real]
!228 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"xtcprec", i32 73, i64 32, i64 32, i64 512, i32 0, metadata !225} ; [ DW_TAG_member ] [xtcprec] [line 73, size 32, align 32, offset 512] [from real]
!229 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"nkx", i32 74, i64 32, i64 32, i64 544, i32 0, metadata !141} ; [ DW_TAG_member ] [nkx] [line 74, size 32, align 32, offset 544] [from int]
!230 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"nky", i32 74, i64 32, i64 32, i64 576, i32 0, metadata !141} ; [ DW_TAG_member ] [nky] [line 74, size 32, align 32, offset 576] [from int]
!231 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"nkz", i32 74, i64 32, i64 32, i64 608, i32 0, metadata !141} ; [ DW_TAG_member ] [nkz] [line 74, size 32, align 32, offset 608] [from int]
!232 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"pme_order", i32 76, i64 32, i64 32, i64 640, i32 0, metadata !141} ; [ DW_TAG_member ] [pme_order] [line 76, size 32, align 32, offset 640] [from int]
!233 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"ewald_rtol", i32 77, i64 32, i64 32, i64 672, i32 0, metadata !225} ; [ DW_TAG_member ] [ewald_rtol] [line 77, size 32, align 32, offset 672] [from real]
!234 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"ewald_geometry", i32 79, i64 32, i64 32, i64 704, i32 0, metadata !141} ; [ DW_TAG_member ] [ewald_geometry] [line 79, size 32, align 32, offset 704] [from int]
!235 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"epsilon_surface", i32 80, i64 32, i64 32, i64 736, i32 0, metadata !141} ; [ DW_TAG_member ] [epsilon_surface] [line 80, size 32, align 32, offset 736] [from int]
!236 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"bOptFFT", i32 81, i64 32, i64 32, i64 768, i32 0, metadata !141} ; [ DW_TAG_member ] [bOptFFT] [line 81, size 32, align 32, offset 768] [from int]
!237 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"ePBC", i32 82, i64 32, i64 32, i64 800, i32 0, metadata !141} ; [ DW_TAG_member ] [ePBC] [line 82, size 32, align 32, offset 800] [from int]
!238 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"bUncStart", i32 83, i64 32, i64 32, i64 832, i32 0, metadata !141} ; [ DW_TAG_member ] [bUncStart] [line 83, size 32, align 32, offset 832] [from int]
!239 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"etc", i32 84, i64 32, i64 32, i64 864, i32 0, metadata !141} ; [ DW_TAG_member ] [etc] [line 84, size 32, align 32, offset 864] [from int]
!240 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"epc", i32 85, i64 32, i64 32, i64 896, i32 0, metadata !141} ; [ DW_TAG_member ] [epc] [line 85, size 32, align 32, offset 896] [from int]
!241 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"epct", i32 86, i64 32, i64 32, i64 928, i32 0, metadata !141} ; [ DW_TAG_member ] [epct] [line 86, size 32, align 32, offset 928] [from int]
!242 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"tau_p", i32 87, i64 32, i64 32, i64 960, i32 0, metadata !225} ; [ DW_TAG_member ] [tau_p] [line 87, size 32, align 32, offset 960] [from real]
!243 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"ref_p", i32 88, i64 288, i64 32, i64 992, i32 0, metadata !244} ; [ DW_TAG_member ] [ref_p] [line 88, size 288, align 32, offset 992] [from tensor]
!244 = metadata !{i32 786454, metadata !208, null, metadata !"tensor", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !245} ; [ DW_TAG_typedef ] [tensor] [line 105, size 0, align 0, offset 0] [from ]
!245 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !225, metadata !246, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from real]
!246 = metadata !{metadata !247, metadata !247}
!247 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!248 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"compress", i32 89, i64 288, i64 32, i64 1280, i32 0, metadata !244} ; [ DW_TAG_member ] [compress] [line 89, size 288, align 32, offset 1280] [from tensor]
!249 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"bSimAnn", i32 90, i64 32, i64 32, i64 1568, i32 0, metadata !141} ; [ DW_TAG_member ] [bSimAnn] [line 90, size 32, align 32, offset 1568] [from int]
!250 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"zero_temp_time", i32 91, i64 32, i64 32, i64 1600, i32 0, metadata !225} ; [ DW_TAG_member ] [zero_temp_time] [line 91, size 32, align 32, offset 1600] [from real]
!251 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"rlist", i32 92, i64 32, i64 32, i64 1632, i32 0, metadata !225} ; [ DW_TAG_member ] [rlist] [line 92, size 32, align 32, offset 1632] [from real]
!252 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"coulombtype", i32 93, i64 32, i64 32, i64 1664, i32 0, metadata !141} ; [ DW_TAG_member ] [coulombtype] [line 93, size 32, align 32, offset 1664] [from int]
!253 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"rcoulomb_switch", i32 94, i64 32, i64 32, i64 1696, i32 0, metadata !225} ; [ DW_TAG_member ] [rcoulomb_switch] [line 94, size 32, align 32, offset 1696] [from real]
!254 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"rcoulomb", i32 95, i64 32, i64 32, i64 1728, i32 0, metadata !225} ; [ DW_TAG_member ] [rcoulomb] [line 95, size 32, align 32, offset 1728] [from real]
!255 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"vdwtype", i32 96, i64 32, i64 32, i64 1760, i32 0, metadata !141} ; [ DW_TAG_member ] [vdwtype] [line 96, size 32, align 32, offset 1760] [from int]
!256 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"rvdw_switch", i32 97, i64 32, i64 32, i64 1792, i32 0, metadata !225} ; [ DW_TAG_member ] [rvdw_switch] [line 97, size 32, align 32, offset 1792] [from real]
!257 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"rvdw", i32 98, i64 32, i64 32, i64 1824, i32 0, metadata !225} ; [ DW_TAG_member ] [rvdw] [line 98, size 32, align 32, offset 1824] [from real]
!258 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"epsilon_r", i32 99, i64 32, i64 32, i64 1856, i32 0, metadata !225} ; [ DW_TAG_member ] [epsilon_r] [line 99, size 32, align 32, offset 1856] [from real]
!259 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"eDispCorr", i32 100, i64 32, i64 32, i64 1888, i32 0, metadata !141} ; [ DW_TAG_member ] [eDispCorr] [line 100, size 32, align 32, offset 1888] [from int]
!260 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"shake_tol", i32 101, i64 32, i64 32, i64 1920, i32 0, metadata !225} ; [ DW_TAG_member ] [shake_tol] [line 101, size 32, align 32, offset 1920] [from real]
!261 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"fudgeQQ", i32 102, i64 32, i64 32, i64 1952, i32 0, metadata !225} ; [ DW_TAG_member ] [fudgeQQ] [line 102, size 32, align 32, offset 1952] [from real]
!262 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"efep", i32 103, i64 32, i64 32, i64 1984, i32 0, metadata !141} ; [ DW_TAG_member ] [efep] [line 103, size 32, align 32, offset 1984] [from int]
!263 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"init_lambda", i32 104, i64 32, i64 32, i64 2016, i32 0, metadata !225} ; [ DW_TAG_member ] [init_lambda] [line 104, size 32, align 32, offset 2016] [from real]
!264 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"delta_lambda", i32 105, i64 32, i64 32, i64 2048, i32 0, metadata !225} ; [ DW_TAG_member ] [delta_lambda] [line 105, size 32, align 32, offset 2048] [from real]
!265 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"sc_alpha", i32 106, i64 32, i64 32, i64 2080, i32 0, metadata !225} ; [ DW_TAG_member ] [sc_alpha] [line 106, size 32, align 32, offset 2080] [from real]
!266 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"sc_sigma", i32 107, i64 32, i64 32, i64 2112, i32 0, metadata !225} ; [ DW_TAG_member ] [sc_sigma] [line 107, size 32, align 32, offset 2112] [from real]
!267 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"dr_fc", i32 108, i64 32, i64 32, i64 2144, i32 0, metadata !225} ; [ DW_TAG_member ] [dr_fc] [line 108, size 32, align 32, offset 2144] [from real]
!268 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"eDisreWeighting", i32 109, i64 32, i64 32, i64 2176, i32 0, metadata !141} ; [ DW_TAG_member ] [eDisreWeighting] [line 109, size 32, align 32, offset 2176] [from int]
!269 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"bDisreMixed", i32 110, i64 32, i64 32, i64 2208, i32 0, metadata !141} ; [ DW_TAG_member ] [bDisreMixed] [line 110, size 32, align 32, offset 2208] [from int]
!270 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"nstdisreout", i32 111, i64 32, i64 32, i64 2240, i32 0, metadata !141} ; [ DW_TAG_member ] [nstdisreout] [line 111, size 32, align 32, offset 2240] [from int]
!271 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"dr_tau", i32 112, i64 32, i64 32, i64 2272, i32 0, metadata !225} ; [ DW_TAG_member ] [dr_tau] [line 112, size 32, align 32, offset 2272] [from real]
!272 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"orires_fc", i32 113, i64 32, i64 32, i64 2304, i32 0, metadata !225} ; [ DW_TAG_member ] [orires_fc] [line 113, size 32, align 32, offset 2304] [from real]
!273 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"orires_tau", i32 114, i64 32, i64 32, i64 2336, i32 0, metadata !225} ; [ DW_TAG_member ] [orires_tau] [line 114, size 32, align 32, offset 2336] [from real]
!274 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"nstorireout", i32 115, i64 32, i64 32, i64 2368, i32 0, metadata !141} ; [ DW_TAG_member ] [nstorireout] [line 115, size 32, align 32, offset 2368] [from int]
!275 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"em_stepsize", i32 116, i64 32, i64 32, i64 2400, i32 0, metadata !225} ; [ DW_TAG_member ] [em_stepsize] [line 116, size 32, align 32, offset 2400] [from real]
!276 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"em_tol", i32 117, i64 32, i64 32, i64 2432, i32 0, metadata !225} ; [ DW_TAG_member ] [em_tol] [line 117, size 32, align 32, offset 2432] [from real]
!277 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"niter", i32 118, i64 32, i64 32, i64 2464, i32 0, metadata !141} ; [ DW_TAG_member ] [niter] [line 118, size 32, align 32, offset 2464] [from int]
!278 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"fc_stepsize", i32 120, i64 32, i64 32, i64 2496, i32 0, metadata !141} ; [ DW_TAG_member ] [fc_stepsize] [line 120, size 32, align 32, offset 2496] [from int]
!279 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"nstcgsteep", i32 122, i64 32, i64 32, i64 2528, i32 0, metadata !141} ; [ DW_TAG_member ] [nstcgsteep] [line 122, size 32, align 32, offset 2528] [from int]
!280 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"eConstrAlg", i32 124, i64 32, i64 32, i64 2560, i32 0, metadata !141} ; [ DW_TAG_member ] [eConstrAlg] [line 124, size 32, align 32, offset 2560] [from int]
!281 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"nProjOrder", i32 125, i64 32, i64 32, i64 2592, i32 0, metadata !141} ; [ DW_TAG_member ] [nProjOrder] [line 125, size 32, align 32, offset 2592] [from int]
!282 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"LincsWarnAngle", i32 126, i64 32, i64 32, i64 2624, i32 0, metadata !225} ; [ DW_TAG_member ] [LincsWarnAngle] [line 126, size 32, align 32, offset 2624] [from real]
!283 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"bShakeSOR", i32 127, i64 32, i64 32, i64 2656, i32 0, metadata !141} ; [ DW_TAG_member ] [bShakeSOR] [line 127, size 32, align 32, offset 2656] [from int]
!284 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"bd_temp", i32 128, i64 32, i64 32, i64 2688, i32 0, metadata !225} ; [ DW_TAG_member ] [bd_temp] [line 128, size 32, align 32, offset 2688] [from real]
!285 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"bd_fric", i32 129, i64 32, i64 32, i64 2720, i32 0, metadata !225} ; [ DW_TAG_member ] [bd_fric] [line 129, size 32, align 32, offset 2720] [from real]
!286 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"ld_seed", i32 130, i64 32, i64 32, i64 2752, i32 0, metadata !141} ; [ DW_TAG_member ] [ld_seed] [line 130, size 32, align 32, offset 2752] [from int]
!287 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"cos_accel", i32 131, i64 32, i64 32, i64 2784, i32 0, metadata !225} ; [ DW_TAG_member ] [cos_accel] [line 131, size 32, align 32, offset 2784] [from real]
!288 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"userint1", i32 132, i64 32, i64 32, i64 2816, i32 0, metadata !141} ; [ DW_TAG_member ] [userint1] [line 132, size 32, align 32, offset 2816] [from int]
!289 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"userint2", i32 133, i64 32, i64 32, i64 2848, i32 0, metadata !141} ; [ DW_TAG_member ] [userint2] [line 133, size 32, align 32, offset 2848] [from int]
!290 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"userint3", i32 134, i64 32, i64 32, i64 2880, i32 0, metadata !141} ; [ DW_TAG_member ] [userint3] [line 134, size 32, align 32, offset 2880] [from int]
!291 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"userint4", i32 135, i64 32, i64 32, i64 2912, i32 0, metadata !141} ; [ DW_TAG_member ] [userint4] [line 135, size 32, align 32, offset 2912] [from int]
!292 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"userreal1", i32 136, i64 32, i64 32, i64 2944, i32 0, metadata !225} ; [ DW_TAG_member ] [userreal1] [line 136, size 32, align 32, offset 2944] [from real]
!293 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"userreal2", i32 137, i64 32, i64 32, i64 2976, i32 0, metadata !225} ; [ DW_TAG_member ] [userreal2] [line 137, size 32, align 32, offset 2976] [from real]
!294 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"userreal3", i32 138, i64 32, i64 32, i64 3008, i32 0, metadata !225} ; [ DW_TAG_member ] [userreal3] [line 138, size 32, align 32, offset 3008] [from real]
!295 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"userreal4", i32 139, i64 32, i64 32, i64 3040, i32 0, metadata !225} ; [ DW_TAG_member ] [userreal4] [line 139, size 32, align 32, offset 3040] [from real]
!296 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"opts", i32 140, i64 512, i64 64, i64 3072, i32 0, metadata !297} ; [ DW_TAG_member ] [opts] [line 140, size 512, align 64, offset 3072] [from t_grpopts]
!297 = metadata !{i32 786454, metadata !208, null, metadata !"t_grpopts", i32 53, i64 0, i64 0, i64 0, i32 0, metadata !298} ; [ DW_TAG_typedef ] [t_grpopts] [line 53, size 0, align 0, offset 0] [from ]
!298 = metadata !{i32 786451, metadata !208, null, metadata !"", i32 42, i64 512, i64 64, i32 0, i32 0, null, metadata !299, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 42, size 512, align 64, offset 0] [from ]
!299 = metadata !{metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !306, metadata !307, metadata !308, metadata !313, metadata !317}
!300 = metadata !{i32 786445, metadata !208, metadata !298, metadata !"ngtc", i32 43, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [ngtc] [line 43, size 32, align 32, offset 0] [from int]
!301 = metadata !{i32 786445, metadata !208, metadata !298, metadata !"ngacc", i32 44, i64 32, i64 32, i64 32, i32 0, metadata !141} ; [ DW_TAG_member ] [ngacc] [line 44, size 32, align 32, offset 32] [from int]
!302 = metadata !{i32 786445, metadata !208, metadata !298, metadata !"ngfrz", i32 45, i64 32, i64 32, i64 64, i32 0, metadata !141} ; [ DW_TAG_member ] [ngfrz] [line 45, size 32, align 32, offset 64] [from int]
!303 = metadata !{i32 786445, metadata !208, metadata !298, metadata !"ngener", i32 46, i64 32, i64 32, i64 96, i32 0, metadata !141} ; [ DW_TAG_member ] [ngener] [line 46, size 32, align 32, offset 96] [from int]
!304 = metadata !{i32 786445, metadata !208, metadata !298, metadata !"nrdf", i32 47, i64 64, i64 64, i64 128, i32 0, metadata !305} ; [ DW_TAG_member ] [nrdf] [line 47, size 64, align 64, offset 128] [from ]
!305 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !225} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!306 = metadata !{i32 786445, metadata !208, metadata !298, metadata !"ref_t", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !305} ; [ DW_TAG_member ] [ref_t] [line 48, size 64, align 64, offset 192] [from ]
!307 = metadata !{i32 786445, metadata !208, metadata !298, metadata !"tau_t", i32 49, i64 64, i64 64, i64 256, i32 0, metadata !305} ; [ DW_TAG_member ] [tau_t] [line 49, size 64, align 64, offset 256] [from ]
!308 = metadata !{i32 786445, metadata !208, metadata !298, metadata !"acc", i32 50, i64 64, i64 64, i64 320, i32 0, metadata !309} ; [ DW_TAG_member ] [acc] [line 50, size 64, align 64, offset 320] [from ]
!309 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !310} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!310 = metadata !{i32 786454, metadata !208, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !311} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!311 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !225, metadata !312, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!312 = metadata !{metadata !247}
!313 = metadata !{i32 786445, metadata !208, metadata !298, metadata !"nFreeze", i32 51, i64 64, i64 64, i64 384, i32 0, metadata !314} ; [ DW_TAG_member ] [nFreeze] [line 51, size 64, align 64, offset 384] [from ]
!314 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !315} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ivec]
!315 = metadata !{i32 786454, metadata !208, null, metadata !"ivec", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !316} ; [ DW_TAG_typedef ] [ivec] [line 107, size 0, align 0, offset 0] [from ]
!316 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !141, metadata !312, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!317 = metadata !{i32 786445, metadata !208, metadata !298, metadata !"eg_excl", i32 52, i64 64, i64 64, i64 448, i32 0, metadata !318} ; [ DW_TAG_member ] [eg_excl] [line 52, size 64, align 64, offset 448] [from ]
!318 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !141} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!319 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"ex", i32 141, i64 576, i64 64, i64 3584, i32 0, metadata !320} ; [ DW_TAG_member ] [ex] [line 141, size 576, align 64, offset 3584] [from ]
!320 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 576, i64 64, i32 0, i32 0, metadata !321, metadata !312, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 576, align 64, offset 0] [from t_cosines]
!321 = metadata !{i32 786454, metadata !208, null, metadata !"t_cosines", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !322} ; [ DW_TAG_typedef ] [t_cosines] [line 40, size 0, align 0, offset 0] [from ]
!322 = metadata !{i32 786451, metadata !208, null, metadata !"", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !323, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 64, offset 0] [from ]
!323 = metadata !{metadata !324, metadata !325, metadata !326}
!324 = metadata !{i32 786445, metadata !208, metadata !322, metadata !"n", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [n] [line 37, size 32, align 32, offset 0] [from int]
!325 = metadata !{i32 786445, metadata !208, metadata !322, metadata !"a", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !305} ; [ DW_TAG_member ] [a] [line 38, size 64, align 64, offset 64] [from ]
!326 = metadata !{i32 786445, metadata !208, metadata !322, metadata !"phi", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !305} ; [ DW_TAG_member ] [phi] [line 39, size 64, align 64, offset 128] [from ]
!327 = metadata !{i32 786445, metadata !208, metadata !207, metadata !"et", i32 142, i64 576, i64 64, i64 4160, i32 0, metadata !320} ; [ DW_TAG_member ] [et] [line 142, size 576, align 64, offset 4160] [from ]
!328 = metadata !{i32 786445, metadata !203, metadata !202, metadata !"box", i32 39, i64 288, i64 32, i64 4736, i32 0, metadata !329} ; [ DW_TAG_member ] [box] [line 39, size 288, align 32, offset 4736] [from matrix]
!329 = metadata !{i32 786454, metadata !203, null, metadata !"matrix", i32 103, i64 0, i64 0, i64 0, i32 0, metadata !245} ; [ DW_TAG_typedef ] [matrix] [line 103, size 0, align 0, offset 0] [from ]
!330 = metadata !{i32 786445, metadata !203, metadata !202, metadata !"boxv", i32 40, i64 288, i64 32, i64 5024, i32 0, metadata !329} ; [ DW_TAG_member ] [boxv] [line 40, size 288, align 32, offset 5024] [from matrix]
!331 = metadata !{i32 786445, metadata !203, metadata !202, metadata !"vir", i32 41, i64 288, i64 32, i64 5312, i32 0, metadata !244} ; [ DW_TAG_member ] [vir] [line 41, size 288, align 32, offset 5312] [from tensor]
!332 = metadata !{i32 786445, metadata !203, metadata !202, metadata !"pres", i32 42, i64 288, i64 32, i64 5600, i32 0, metadata !244} ; [ DW_TAG_member ] [pres] [line 42, size 288, align 32, offset 5600] [from tensor]
!333 = metadata !{i32 786445, metadata !203, metadata !202, metadata !"ekin", i32 43, i64 288, i64 32, i64 5888, i32 0, metadata !244} ; [ DW_TAG_member ] [ekin] [line 43, size 288, align 32, offset 5888] [from tensor]
!334 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !335} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_topology]
!335 = metadata !{i32 786454, metadata !1, null, metadata !"t_topology", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !336} ; [ DW_TAG_typedef ] [t_topology] [line 42, size 0, align 0, offset 0] [from ]
!336 = metadata !{i32 786451, metadata !337, null, metadata !"", i32 36, i64 402112, i64 64, i32 0, i32 0, null, metadata !338, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 402112, align 64, offset 0] [from ]
!337 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/topology.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!338 = metadata !{metadata !339, metadata !341, metadata !479, metadata !545, metadata !547}
!339 = metadata !{i32 786445, metadata !337, metadata !336, metadata !"name", i32 37, i64 64, i64 64, i64 0, i32 0, metadata !340} ; [ DW_TAG_member ] [name] [line 37, size 64, align 64, offset 0] [from ]
!340 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !143} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!341 = metadata !{i32 786445, metadata !337, metadata !336, metadata !"idef", i32 38, i64 366336, i64 64, i64 64, i32 0, metadata !342} ; [ DW_TAG_member ] [idef] [line 38, size 366336, align 64, offset 64] [from t_idef]
!342 = metadata !{i32 786454, metadata !337, null, metadata !"t_idef", i32 188, i64 0, i64 0, i64 0, i32 0, metadata !343} ; [ DW_TAG_typedef ] [t_idef] [line 188, size 0, align 0, offset 0] [from ]
!343 = metadata !{i32 786451, metadata !79, null, metadata !"", i32 179, i64 366336, i64 64, i32 0, i32 0, null, metadata !344, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 179, size 366336, align 64, offset 0] [from ]
!344 = metadata !{metadata !345, metadata !346, metadata !347, metadata !348, metadata !351, metadata !463}
!345 = metadata !{i32 786445, metadata !79, metadata !343, metadata !"ntypes", i32 181, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [ntypes] [line 181, size 32, align 32, offset 0] [from int]
!346 = metadata !{i32 786445, metadata !79, metadata !343, metadata !"nodeid", i32 182, i64 32, i64 32, i64 32, i32 0, metadata !141} ; [ DW_TAG_member ] [nodeid] [line 182, size 32, align 32, offset 32] [from int]
!347 = metadata !{i32 786445, metadata !79, metadata !343, metadata !"atnr", i32 183, i64 32, i64 32, i64 64, i32 0, metadata !141} ; [ DW_TAG_member ] [atnr] [line 183, size 32, align 32, offset 64] [from int]
!348 = metadata !{i32 786445, metadata !79, metadata !343, metadata !"functype", i32 184, i64 64, i64 64, i64 128, i32 0, metadata !349} ; [ DW_TAG_member ] [functype] [line 184, size 64, align 64, offset 128] [from ]
!349 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !350} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_functype]
!350 = metadata !{i32 786454, metadata !79, null, metadata !"t_functype", i32 133, i64 0, i64 0, i64 0, i32 0, metadata !141} ; [ DW_TAG_typedef ] [t_functype] [line 133, size 0, align 0, offset 0] [from int]
!351 = metadata !{i32 786445, metadata !79, metadata !343, metadata !"iparams", i32 185, i64 64, i64 64, i64 192, i32 0, metadata !352} ; [ DW_TAG_member ] [iparams] [line 185, size 64, align 64, offset 192] [from ]
!352 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !353} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_iparams]
!353 = metadata !{i32 786454, metadata !79, null, metadata !"t_iparams", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !354} ; [ DW_TAG_typedef ] [t_iparams] [line 131, size 0, align 0, offset 0] [from ]
!354 = metadata !{i32 786455, metadata !79, null, metadata !"", i32 97, i64 192, i64 32, i64 0, i32 0, null, metadata !355, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 97, size 192, align 32, offset 0] [from ]
!355 = metadata !{metadata !356, metadata !362, metadata !369, metadata !375, metadata !384, metadata !389, metadata !396, metadata !404, metadata !409, metadata !414, metadata !420, metadata !425, metadata !432, metadata !441, metadata !450, metadata !459}
!356 = metadata !{i32 786445, metadata !79, metadata !354, metadata !"bham", i32 105, i64 96, i64 32, i64 0, i32 0, metadata !357} ; [ DW_TAG_member ] [bham] [line 105, size 96, align 32, offset 0] [from ]
!357 = metadata !{i32 786451, metadata !79, metadata !354, metadata !"", i32 105, i64 96, i64 32, i32 0, i32 0, null, metadata !358, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 105, size 96, align 32, offset 0] [from ]
!358 = metadata !{metadata !359, metadata !360, metadata !361}
!359 = metadata !{i32 786445, metadata !79, metadata !357, metadata !"a", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !225} ; [ DW_TAG_member ] [a] [line 105, size 32, align 32, offset 0] [from real]
!360 = metadata !{i32 786445, metadata !79, metadata !357, metadata !"b", i32 105, i64 32, i64 32, i64 32, i32 0, metadata !225} ; [ DW_TAG_member ] [b] [line 105, size 32, align 32, offset 32] [from real]
!361 = metadata !{i32 786445, metadata !79, metadata !357, metadata !"c", i32 105, i64 32, i64 32, i64 64, i32 0, metadata !225} ; [ DW_TAG_member ] [c] [line 105, size 32, align 32, offset 64] [from real]
!362 = metadata !{i32 786445, metadata !79, metadata !354, metadata !"harmonic", i32 106, i64 128, i64 32, i64 0, i32 0, metadata !363} ; [ DW_TAG_member ] [harmonic] [line 106, size 128, align 32, offset 0] [from ]
!363 = metadata !{i32 786451, metadata !79, metadata !354, metadata !"", i32 106, i64 128, i64 32, i32 0, i32 0, null, metadata !364, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 106, size 128, align 32, offset 0] [from ]
!364 = metadata !{metadata !365, metadata !366, metadata !367, metadata !368}
!365 = metadata !{i32 786445, metadata !79, metadata !363, metadata !"rA", i32 106, i64 32, i64 32, i64 0, i32 0, metadata !225} ; [ DW_TAG_member ] [rA] [line 106, size 32, align 32, offset 0] [from real]
!366 = metadata !{i32 786445, metadata !79, metadata !363, metadata !"krA", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !225} ; [ DW_TAG_member ] [krA] [line 106, size 32, align 32, offset 32] [from real]
!367 = metadata !{i32 786445, metadata !79, metadata !363, metadata !"rB", i32 106, i64 32, i64 32, i64 64, i32 0, metadata !225} ; [ DW_TAG_member ] [rB] [line 106, size 32, align 32, offset 64] [from real]
!368 = metadata !{i32 786445, metadata !79, metadata !363, metadata !"krB", i32 106, i64 32, i64 32, i64 96, i32 0, metadata !225} ; [ DW_TAG_member ] [krB] [line 106, size 32, align 32, offset 96] [from real]
!369 = metadata !{i32 786445, metadata !79, metadata !354, metadata !"cubic", i32 108, i64 96, i64 32, i64 0, i32 0, metadata !370} ; [ DW_TAG_member ] [cubic] [line 108, size 96, align 32, offset 0] [from ]
!370 = metadata !{i32 786451, metadata !79, metadata !354, metadata !"", i32 108, i64 96, i64 32, i32 0, i32 0, null, metadata !371, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 108, size 96, align 32, offset 0] [from ]
!371 = metadata !{metadata !372, metadata !373, metadata !374}
!372 = metadata !{i32 786445, metadata !79, metadata !370, metadata !"b0", i32 108, i64 32, i64 32, i64 0, i32 0, metadata !225} ; [ DW_TAG_member ] [b0] [line 108, size 32, align 32, offset 0] [from real]
!373 = metadata !{i32 786445, metadata !79, metadata !370, metadata !"kb", i32 108, i64 32, i64 32, i64 32, i32 0, metadata !225} ; [ DW_TAG_member ] [kb] [line 108, size 32, align 32, offset 32] [from real]
!374 = metadata !{i32 786445, metadata !79, metadata !370, metadata !"kcub", i32 108, i64 32, i64 32, i64 64, i32 0, metadata !225} ; [ DW_TAG_member ] [kcub] [line 108, size 32, align 32, offset 64] [from real]
!375 = metadata !{i32 786445, metadata !79, metadata !354, metadata !"wpol", i32 110, i64 192, i64 32, i64 0, i32 0, metadata !376} ; [ DW_TAG_member ] [wpol] [line 110, size 192, align 32, offset 0] [from ]
!376 = metadata !{i32 786451, metadata !79, metadata !354, metadata !"", i32 110, i64 192, i64 32, i32 0, i32 0, null, metadata !377, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 110, size 192, align 32, offset 0] [from ]
!377 = metadata !{metadata !378, metadata !379, metadata !380, metadata !381, metadata !382, metadata !383}
!378 = metadata !{i32 786445, metadata !79, metadata !376, metadata !"kx", i32 110, i64 32, i64 32, i64 0, i32 0, metadata !225} ; [ DW_TAG_member ] [kx] [line 110, size 32, align 32, offset 0] [from real]
!379 = metadata !{i32 786445, metadata !79, metadata !376, metadata !"ky", i32 110, i64 32, i64 32, i64 32, i32 0, metadata !225} ; [ DW_TAG_member ] [ky] [line 110, size 32, align 32, offset 32] [from real]
!380 = metadata !{i32 786445, metadata !79, metadata !376, metadata !"kz", i32 110, i64 32, i64 32, i64 64, i32 0, metadata !225} ; [ DW_TAG_member ] [kz] [line 110, size 32, align 32, offset 64] [from real]
!381 = metadata !{i32 786445, metadata !79, metadata !376, metadata !"rOH", i32 110, i64 32, i64 32, i64 96, i32 0, metadata !225} ; [ DW_TAG_member ] [rOH] [line 110, size 32, align 32, offset 96] [from real]
!382 = metadata !{i32 786445, metadata !79, metadata !376, metadata !"rHH", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !225} ; [ DW_TAG_member ] [rHH] [line 110, size 32, align 32, offset 128] [from real]
!383 = metadata !{i32 786445, metadata !79, metadata !376, metadata !"rOD", i32 110, i64 32, i64 32, i64 160, i32 0, metadata !225} ; [ DW_TAG_member ] [rOD] [line 110, size 32, align 32, offset 160] [from real]
!384 = metadata !{i32 786445, metadata !79, metadata !354, metadata !"lj", i32 111, i64 64, i64 32, i64 0, i32 0, metadata !385} ; [ DW_TAG_member ] [lj] [line 111, size 64, align 32, offset 0] [from ]
!385 = metadata !{i32 786451, metadata !79, metadata !354, metadata !"", i32 111, i64 64, i64 32, i32 0, i32 0, null, metadata !386, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 111, size 64, align 32, offset 0] [from ]
!386 = metadata !{metadata !387, metadata !388}
!387 = metadata !{i32 786445, metadata !79, metadata !385, metadata !"c6", i32 111, i64 32, i64 32, i64 0, i32 0, metadata !225} ; [ DW_TAG_member ] [c6] [line 111, size 32, align 32, offset 0] [from real]
!388 = metadata !{i32 786445, metadata !79, metadata !385, metadata !"c12", i32 111, i64 32, i64 32, i64 32, i32 0, metadata !225} ; [ DW_TAG_member ] [c12] [line 111, size 32, align 32, offset 32] [from real]
!389 = metadata !{i32 786445, metadata !79, metadata !354, metadata !"lj14", i32 112, i64 128, i64 32, i64 0, i32 0, metadata !390} ; [ DW_TAG_member ] [lj14] [line 112, size 128, align 32, offset 0] [from ]
!390 = metadata !{i32 786451, metadata !79, metadata !354, metadata !"", i32 112, i64 128, i64 32, i32 0, i32 0, null, metadata !391, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 112, size 128, align 32, offset 0] [from ]
!391 = metadata !{metadata !392, metadata !393, metadata !394, metadata !395}
!392 = metadata !{i32 786445, metadata !79, metadata !390, metadata !"c6A", i32 112, i64 32, i64 32, i64 0, i32 0, metadata !225} ; [ DW_TAG_member ] [c6A] [line 112, size 32, align 32, offset 0] [from real]
!393 = metadata !{i32 786445, metadata !79, metadata !390, metadata !"c12A", i32 112, i64 32, i64 32, i64 32, i32 0, metadata !225} ; [ DW_TAG_member ] [c12A] [line 112, size 32, align 32, offset 32] [from real]
!394 = metadata !{i32 786445, metadata !79, metadata !390, metadata !"c6B", i32 112, i64 32, i64 32, i64 64, i32 0, metadata !225} ; [ DW_TAG_member ] [c6B] [line 112, size 32, align 32, offset 64] [from real]
!395 = metadata !{i32 786445, metadata !79, metadata !390, metadata !"c12B", i32 112, i64 32, i64 32, i64 96, i32 0, metadata !225} ; [ DW_TAG_member ] [c12B] [line 112, size 32, align 32, offset 96] [from real]
!396 = metadata !{i32 786445, metadata !79, metadata !354, metadata !"pdihs", i32 117, i64 160, i64 32, i64 0, i32 0, metadata !397} ; [ DW_TAG_member ] [pdihs] [line 117, size 160, align 32, offset 0] [from ]
!397 = metadata !{i32 786451, metadata !79, metadata !354, metadata !"", i32 117, i64 160, i64 32, i32 0, i32 0, null, metadata !398, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 117, size 160, align 32, offset 0] [from ]
!398 = metadata !{metadata !399, metadata !400, metadata !401, metadata !402, metadata !403}
!399 = metadata !{i32 786445, metadata !79, metadata !397, metadata !"phiA", i32 117, i64 32, i64 32, i64 0, i32 0, metadata !225} ; [ DW_TAG_member ] [phiA] [line 117, size 32, align 32, offset 0] [from real]
!400 = metadata !{i32 786445, metadata !79, metadata !397, metadata !"cpA", i32 117, i64 32, i64 32, i64 32, i32 0, metadata !225} ; [ DW_TAG_member ] [cpA] [line 117, size 32, align 32, offset 32] [from real]
!401 = metadata !{i32 786445, metadata !79, metadata !397, metadata !"mult", i32 117, i64 32, i64 32, i64 64, i32 0, metadata !141} ; [ DW_TAG_member ] [mult] [line 117, size 32, align 32, offset 64] [from int]
!402 = metadata !{i32 786445, metadata !79, metadata !397, metadata !"phiB", i32 117, i64 32, i64 32, i64 96, i32 0, metadata !225} ; [ DW_TAG_member ] [phiB] [line 117, size 32, align 32, offset 96] [from real]
!403 = metadata !{i32 786445, metadata !79, metadata !397, metadata !"cpB", i32 117, i64 32, i64 32, i64 128, i32 0, metadata !225} ; [ DW_TAG_member ] [cpB] [line 117, size 32, align 32, offset 128] [from real]
!404 = metadata !{i32 786445, metadata !79, metadata !354, metadata !"shake", i32 118, i64 64, i64 32, i64 0, i32 0, metadata !405} ; [ DW_TAG_member ] [shake] [line 118, size 64, align 32, offset 0] [from ]
!405 = metadata !{i32 786451, metadata !79, metadata !354, metadata !"", i32 118, i64 64, i64 32, i32 0, i32 0, null, metadata !406, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 118, size 64, align 32, offset 0] [from ]
!406 = metadata !{metadata !407, metadata !408}
!407 = metadata !{i32 786445, metadata !79, metadata !405, metadata !"dA", i32 118, i64 32, i64 32, i64 0, i32 0, metadata !225} ; [ DW_TAG_member ] [dA] [line 118, size 32, align 32, offset 0] [from real]
!408 = metadata !{i32 786445, metadata !79, metadata !405, metadata !"dB", i32 118, i64 32, i64 32, i64 32, i32 0, metadata !225} ; [ DW_TAG_member ] [dB] [line 118, size 32, align 32, offset 32] [from real]
!409 = metadata !{i32 786445, metadata !79, metadata !354, metadata !"settle", i32 123, i64 64, i64 32, i64 0, i32 0, metadata !410} ; [ DW_TAG_member ] [settle] [line 123, size 64, align 32, offset 0] [from ]
!410 = metadata !{i32 786451, metadata !79, metadata !354, metadata !"", i32 123, i64 64, i64 32, i32 0, i32 0, null, metadata !411, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 123, size 64, align 32, offset 0] [from ]
!411 = metadata !{metadata !412, metadata !413}
!412 = metadata !{i32 786445, metadata !79, metadata !410, metadata !"doh", i32 123, i64 32, i64 32, i64 0, i32 0, metadata !225} ; [ DW_TAG_member ] [doh] [line 123, size 32, align 32, offset 0] [from real]
!413 = metadata !{i32 786445, metadata !79, metadata !410, metadata !"dhh", i32 123, i64 32, i64 32, i64 32, i32 0, metadata !225} ; [ DW_TAG_member ] [dhh] [line 123, size 32, align 32, offset 32] [from real]
!414 = metadata !{i32 786445, metadata !79, metadata !354, metadata !"morse", i32 124, i64 96, i64 32, i64 0, i32 0, metadata !415} ; [ DW_TAG_member ] [morse] [line 124, size 96, align 32, offset 0] [from ]
!415 = metadata !{i32 786451, metadata !79, metadata !354, metadata !"", i32 124, i64 96, i64 32, i32 0, i32 0, null, metadata !416, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 124, size 96, align 32, offset 0] [from ]
!416 = metadata !{metadata !417, metadata !418, metadata !419}
!417 = metadata !{i32 786445, metadata !79, metadata !415, metadata !"b0", i32 124, i64 32, i64 32, i64 0, i32 0, metadata !225} ; [ DW_TAG_member ] [b0] [line 124, size 32, align 32, offset 0] [from real]
!418 = metadata !{i32 786445, metadata !79, metadata !415, metadata !"cb", i32 124, i64 32, i64 32, i64 32, i32 0, metadata !225} ; [ DW_TAG_member ] [cb] [line 124, size 32, align 32, offset 32] [from real]
!419 = metadata !{i32 786445, metadata !79, metadata !415, metadata !"beta", i32 124, i64 32, i64 32, i64 64, i32 0, metadata !225} ; [ DW_TAG_member ] [beta] [line 124, size 32, align 32, offset 64] [from real]
!420 = metadata !{i32 786445, metadata !79, metadata !354, metadata !"posres", i32 125, i64 192, i64 32, i64 0, i32 0, metadata !421} ; [ DW_TAG_member ] [posres] [line 125, size 192, align 32, offset 0] [from ]
!421 = metadata !{i32 786451, metadata !79, metadata !354, metadata !"", i32 125, i64 192, i64 32, i32 0, i32 0, null, metadata !422, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 125, size 192, align 32, offset 0] [from ]
!422 = metadata !{metadata !423, metadata !424}
!423 = metadata !{i32 786445, metadata !79, metadata !421, metadata !"pos0", i32 125, i64 96, i64 32, i64 0, i32 0, metadata !311} ; [ DW_TAG_member ] [pos0] [line 125, size 96, align 32, offset 0] [from ]
!424 = metadata !{i32 786445, metadata !79, metadata !421, metadata !"fc", i32 125, i64 96, i64 32, i64 96, i32 0, metadata !311} ; [ DW_TAG_member ] [fc] [line 125, size 96, align 32, offset 96] [from ]
!425 = metadata !{i32 786445, metadata !79, metadata !354, metadata !"rbdihs", i32 126, i64 192, i64 32, i64 0, i32 0, metadata !426} ; [ DW_TAG_member ] [rbdihs] [line 126, size 192, align 32, offset 0] [from ]
!426 = metadata !{i32 786451, metadata !79, metadata !354, metadata !"", i32 126, i64 192, i64 32, i32 0, i32 0, null, metadata !427, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 126, size 192, align 32, offset 0] [from ]
!427 = metadata !{metadata !428}
!428 = metadata !{i32 786445, metadata !79, metadata !426, metadata !"rbc", i32 126, i64 192, i64 32, i64 0, i32 0, metadata !429} ; [ DW_TAG_member ] [rbc] [line 126, size 192, align 32, offset 0] [from ]
!429 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !225, metadata !430, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from real]
!430 = metadata !{metadata !431}
!431 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!432 = metadata !{i32 786445, metadata !79, metadata !354, metadata !"dummy", i32 127, i64 192, i64 32, i64 0, i32 0, metadata !433} ; [ DW_TAG_member ] [dummy] [line 127, size 192, align 32, offset 0] [from ]
!433 = metadata !{i32 786451, metadata !79, metadata !354, metadata !"", i32 127, i64 192, i64 32, i32 0, i32 0, null, metadata !434, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 127, size 192, align 32, offset 0] [from ]
!434 = metadata !{metadata !435, metadata !436, metadata !437, metadata !438, metadata !439, metadata !440}
!435 = metadata !{i32 786445, metadata !79, metadata !433, metadata !"a", i32 127, i64 32, i64 32, i64 0, i32 0, metadata !225} ; [ DW_TAG_member ] [a] [line 127, size 32, align 32, offset 0] [from real]
!436 = metadata !{i32 786445, metadata !79, metadata !433, metadata !"b", i32 127, i64 32, i64 32, i64 32, i32 0, metadata !225} ; [ DW_TAG_member ] [b] [line 127, size 32, align 32, offset 32] [from real]
!437 = metadata !{i32 786445, metadata !79, metadata !433, metadata !"c", i32 127, i64 32, i64 32, i64 64, i32 0, metadata !225} ; [ DW_TAG_member ] [c] [line 127, size 32, align 32, offset 64] [from real]
!438 = metadata !{i32 786445, metadata !79, metadata !433, metadata !"d", i32 127, i64 32, i64 32, i64 96, i32 0, metadata !225} ; [ DW_TAG_member ] [d] [line 127, size 32, align 32, offset 96] [from real]
!439 = metadata !{i32 786445, metadata !79, metadata !433, metadata !"e", i32 127, i64 32, i64 32, i64 128, i32 0, metadata !225} ; [ DW_TAG_member ] [e] [line 127, size 32, align 32, offset 128] [from real]
!440 = metadata !{i32 786445, metadata !79, metadata !433, metadata !"f", i32 127, i64 32, i64 32, i64 160, i32 0, metadata !225} ; [ DW_TAG_member ] [f] [line 127, size 32, align 32, offset 160] [from real]
!441 = metadata !{i32 786445, metadata !79, metadata !354, metadata !"disres", i32 128, i64 192, i64 32, i64 0, i32 0, metadata !442} ; [ DW_TAG_member ] [disres] [line 128, size 192, align 32, offset 0] [from ]
!442 = metadata !{i32 786451, metadata !79, metadata !354, metadata !"", i32 128, i64 192, i64 32, i32 0, i32 0, null, metadata !443, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 128, size 192, align 32, offset 0] [from ]
!443 = metadata !{metadata !444, metadata !445, metadata !446, metadata !447, metadata !448, metadata !449}
!444 = metadata !{i32 786445, metadata !79, metadata !442, metadata !"low", i32 128, i64 32, i64 32, i64 0, i32 0, metadata !225} ; [ DW_TAG_member ] [low] [line 128, size 32, align 32, offset 0] [from real]
!445 = metadata !{i32 786445, metadata !79, metadata !442, metadata !"up1", i32 128, i64 32, i64 32, i64 32, i32 0, metadata !225} ; [ DW_TAG_member ] [up1] [line 128, size 32, align 32, offset 32] [from real]
!446 = metadata !{i32 786445, metadata !79, metadata !442, metadata !"up2", i32 128, i64 32, i64 32, i64 64, i32 0, metadata !225} ; [ DW_TAG_member ] [up2] [line 128, size 32, align 32, offset 64] [from real]
!447 = metadata !{i32 786445, metadata !79, metadata !442, metadata !"kfac", i32 128, i64 32, i64 32, i64 96, i32 0, metadata !225} ; [ DW_TAG_member ] [kfac] [line 128, size 32, align 32, offset 96] [from real]
!448 = metadata !{i32 786445, metadata !79, metadata !442, metadata !"type", i32 128, i64 32, i64 32, i64 128, i32 0, metadata !141} ; [ DW_TAG_member ] [type] [line 128, size 32, align 32, offset 128] [from int]
!449 = metadata !{i32 786445, metadata !79, metadata !442, metadata !"label", i32 128, i64 32, i64 32, i64 160, i32 0, metadata !141} ; [ DW_TAG_member ] [label] [line 128, size 32, align 32, offset 160] [from int]
!450 = metadata !{i32 786445, metadata !79, metadata !354, metadata !"orires", i32 129, i64 192, i64 32, i64 0, i32 0, metadata !451} ; [ DW_TAG_member ] [orires] [line 129, size 192, align 32, offset 0] [from ]
!451 = metadata !{i32 786451, metadata !79, metadata !354, metadata !"", i32 129, i64 192, i64 32, i32 0, i32 0, null, metadata !452, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 129, size 192, align 32, offset 0] [from ]
!452 = metadata !{metadata !453, metadata !454, metadata !455, metadata !456, metadata !457, metadata !458}
!453 = metadata !{i32 786445, metadata !79, metadata !451, metadata !"ex", i32 129, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [ex] [line 129, size 32, align 32, offset 0] [from int]
!454 = metadata !{i32 786445, metadata !79, metadata !451, metadata !"pow", i32 129, i64 32, i64 32, i64 32, i32 0, metadata !141} ; [ DW_TAG_member ] [pow] [line 129, size 32, align 32, offset 32] [from int]
!455 = metadata !{i32 786445, metadata !79, metadata !451, metadata !"label", i32 129, i64 32, i64 32, i64 64, i32 0, metadata !141} ; [ DW_TAG_member ] [label] [line 129, size 32, align 32, offset 64] [from int]
!456 = metadata !{i32 786445, metadata !79, metadata !451, metadata !"c", i32 129, i64 32, i64 32, i64 96, i32 0, metadata !225} ; [ DW_TAG_member ] [c] [line 129, size 32, align 32, offset 96] [from real]
!457 = metadata !{i32 786445, metadata !79, metadata !451, metadata !"obs", i32 129, i64 32, i64 32, i64 128, i32 0, metadata !225} ; [ DW_TAG_member ] [obs] [line 129, size 32, align 32, offset 128] [from real]
!458 = metadata !{i32 786445, metadata !79, metadata !451, metadata !"kfac", i32 129, i64 32, i64 32, i64 160, i32 0, metadata !225} ; [ DW_TAG_member ] [kfac] [line 129, size 32, align 32, offset 160] [from real]
!459 = metadata !{i32 786445, metadata !79, metadata !354, metadata !"generic", i32 130, i64 192, i64 32, i64 0, i32 0, metadata !460} ; [ DW_TAG_member ] [generic] [line 130, size 192, align 32, offset 0] [from ]
!460 = metadata !{i32 786451, metadata !79, metadata !354, metadata !"", i32 130, i64 192, i64 32, i32 0, i32 0, null, metadata !461, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 130, size 192, align 32, offset 0] [from ]
!461 = metadata !{metadata !462}
!462 = metadata !{i32 786445, metadata !79, metadata !460, metadata !"buf", i32 130, i64 192, i64 32, i64 0, i32 0, metadata !429} ; [ DW_TAG_member ] [buf] [line 130, size 192, align 32, offset 0] [from ]
!463 = metadata !{i32 786445, metadata !79, metadata !343, metadata !"il", i32 187, i64 366080, i64 64, i64 256, i32 0, metadata !464} ; [ DW_TAG_member ] [il] [line 187, size 366080, align 64, offset 256] [from ]
!464 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 366080, i64 64, i32 0, i32 0, metadata !465, metadata !477, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 366080, align 64, offset 0] [from t_ilist]
!465 = metadata !{i32 786454, metadata !79, null, metadata !"t_ilist", i32 140, i64 0, i64 0, i64 0, i32 0, metadata !466} ; [ DW_TAG_typedef ] [t_ilist] [line 140, size 0, align 0, offset 0] [from ]
!466 = metadata !{i32 786451, metadata !79, null, metadata !"", i32 135, i64 8320, i64 64, i32 0, i32 0, null, metadata !467, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 135, size 8320, align 64, offset 0] [from ]
!467 = metadata !{metadata !468, metadata !469, metadata !473}
!468 = metadata !{i32 786445, metadata !79, metadata !466, metadata !"nr", i32 137, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [nr] [line 137, size 32, align 32, offset 0] [from int]
!469 = metadata !{i32 786445, metadata !79, metadata !466, metadata !"multinr", i32 138, i64 8192, i64 32, i64 32, i32 0, metadata !470} ; [ DW_TAG_member ] [multinr] [line 138, size 8192, align 32, offset 32] [from ]
!470 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !141, metadata !471, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!471 = metadata !{metadata !472}
!472 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!473 = metadata !{i32 786445, metadata !79, metadata !466, metadata !"iatoms", i32 139, i64 64, i64 64, i64 8256, i32 0, metadata !474} ; [ DW_TAG_member ] [iatoms] [line 139, size 64, align 64, offset 8256] [from ]
!474 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !475} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_iatom]
!475 = metadata !{i32 786454, metadata !79, null, metadata !"t_iatom", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !476} ; [ DW_TAG_typedef ] [t_iatom] [line 45, size 0, align 0, offset 0] [from atom_id]
!476 = metadata !{i32 786454, metadata !79, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !141} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!477 = metadata !{metadata !478}
!478 = metadata !{i32 786465, i64 0, i64 44}      ; [ DW_TAG_subrange_type ] [0, 43]
!479 = metadata !{i32 786445, metadata !337, metadata !336, metadata !"atoms", i32 39, i64 10240, i64 64, i64 366400, i32 0, metadata !480} ; [ DW_TAG_member ] [atoms] [line 39, size 10240, align 64, offset 366400] [from t_atoms]
!480 = metadata !{i32 786454, metadata !337, null, metadata !"t_atoms", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !481} ; [ DW_TAG_typedef ] [t_atoms] [line 94, size 0, align 0, offset 0] [from ]
!481 = metadata !{i32 786451, metadata !482, null, metadata !"", i32 75, i64 10240, i64 64, i32 0, i32 0, null, metadata !483, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 75, size 10240, align 64, offset 0] [from ]
!482 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/atoms.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!483 = metadata !{metadata !484, metadata !485, metadata !504, metadata !506, metadata !507, metadata !508, metadata !509, metadata !510, metadata !511, metadata !512, metadata !523, metadata !530}
!484 = metadata !{i32 786445, metadata !482, metadata !481, metadata !"nr", i32 76, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [nr] [line 76, size 32, align 32, offset 0] [from int]
!485 = metadata !{i32 786445, metadata !482, metadata !481, metadata !"atom", i32 77, i64 64, i64 64, i64 64, i32 0, metadata !486} ; [ DW_TAG_member ] [atom] [line 77, size 64, align 64, offset 64] [from ]
!486 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !487} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atom]
!487 = metadata !{i32 786454, metadata !482, null, metadata !"t_atom", i32 57, i64 0, i64 0, i64 0, i32 0, metadata !488} ; [ DW_TAG_typedef ] [t_atom] [line 57, size 0, align 0, offset 0] [from ]
!488 = metadata !{i32 786451, metadata !482, null, metadata !"", i32 48, i64 320, i64 32, i32 0, i32 0, null, metadata !489, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 320, align 32, offset 0] [from ]
!489 = metadata !{metadata !490, metadata !491, metadata !492, metadata !493, metadata !494, metadata !495, metadata !496, metadata !497, metadata !498, metadata !503}
!490 = metadata !{i32 786445, metadata !482, metadata !488, metadata !"m", i32 49, i64 32, i64 32, i64 0, i32 0, metadata !225} ; [ DW_TAG_member ] [m] [line 49, size 32, align 32, offset 0] [from real]
!491 = metadata !{i32 786445, metadata !482, metadata !488, metadata !"q", i32 49, i64 32, i64 32, i64 32, i32 0, metadata !225} ; [ DW_TAG_member ] [q] [line 49, size 32, align 32, offset 32] [from real]
!492 = metadata !{i32 786445, metadata !482, metadata !488, metadata !"mB", i32 50, i64 32, i64 32, i64 64, i32 0, metadata !225} ; [ DW_TAG_member ] [mB] [line 50, size 32, align 32, offset 64] [from real]
!493 = metadata !{i32 786445, metadata !482, metadata !488, metadata !"qB", i32 50, i64 32, i64 32, i64 96, i32 0, metadata !225} ; [ DW_TAG_member ] [qB] [line 50, size 32, align 32, offset 96] [from real]
!494 = metadata !{i32 786445, metadata !482, metadata !488, metadata !"type", i32 51, i64 16, i64 16, i64 128, i32 0, metadata !169} ; [ DW_TAG_member ] [type] [line 51, size 16, align 16, offset 128] [from unsigned short]
!495 = metadata !{i32 786445, metadata !482, metadata !488, metadata !"typeB", i32 52, i64 16, i64 16, i64 144, i32 0, metadata !169} ; [ DW_TAG_member ] [typeB] [line 52, size 16, align 16, offset 144] [from unsigned short]
!496 = metadata !{i32 786445, metadata !482, metadata !488, metadata !"ptype", i32 53, i64 32, i64 32, i64 160, i32 0, metadata !141} ; [ DW_TAG_member ] [ptype] [line 53, size 32, align 32, offset 160] [from int]
!497 = metadata !{i32 786445, metadata !482, metadata !488, metadata !"resnr", i32 54, i64 32, i64 32, i64 192, i32 0, metadata !141} ; [ DW_TAG_member ] [resnr] [line 54, size 32, align 32, offset 192] [from int]
!498 = metadata !{i32 786445, metadata !482, metadata !488, metadata !"grpnr", i32 55, i64 72, i64 8, i64 224, i32 0, metadata !499} ; [ DW_TAG_member ] [grpnr] [line 55, size 72, align 8, offset 224] [from ]
!499 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 72, i64 8, i32 0, i32 0, metadata !500, metadata !501, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 72, align 8, offset 0] [from unsigned char]
!500 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!501 = metadata !{metadata !502}
!502 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!503 = metadata !{i32 786445, metadata !482, metadata !488, metadata !"chain", i32 56, i64 8, i64 8, i64 296, i32 0, metadata !500} ; [ DW_TAG_member ] [chain] [line 56, size 8, align 8, offset 296] [from unsigned char]
!504 = metadata !{i32 786445, metadata !482, metadata !481, metadata !"atomname", i32 80, i64 64, i64 64, i64 128, i32 0, metadata !505} ; [ DW_TAG_member ] [atomname] [line 80, size 64, align 64, offset 128] [from ]
!505 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !340} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!506 = metadata !{i32 786445, metadata !482, metadata !481, metadata !"atomtype", i32 82, i64 64, i64 64, i64 192, i32 0, metadata !505} ; [ DW_TAG_member ] [atomtype] [line 82, size 64, align 64, offset 192] [from ]
!507 = metadata !{i32 786445, metadata !482, metadata !481, metadata !"atomtypeB", i32 84, i64 64, i64 64, i64 256, i32 0, metadata !505} ; [ DW_TAG_member ] [atomtypeB] [line 84, size 64, align 64, offset 256] [from ]
!508 = metadata !{i32 786445, metadata !482, metadata !481, metadata !"nres", i32 86, i64 32, i64 32, i64 320, i32 0, metadata !141} ; [ DW_TAG_member ] [nres] [line 86, size 32, align 32, offset 320] [from int]
!509 = metadata !{i32 786445, metadata !482, metadata !481, metadata !"resname", i32 87, i64 64, i64 64, i64 384, i32 0, metadata !505} ; [ DW_TAG_member ] [resname] [line 87, size 64, align 64, offset 384] [from ]
!510 = metadata !{i32 786445, metadata !482, metadata !481, metadata !"ngrpname", i32 89, i64 32, i64 32, i64 448, i32 0, metadata !141} ; [ DW_TAG_member ] [ngrpname] [line 89, size 32, align 32, offset 448] [from int]
!511 = metadata !{i32 786445, metadata !482, metadata !481, metadata !"grpname", i32 90, i64 64, i64 64, i64 512, i32 0, metadata !505} ; [ DW_TAG_member ] [grpname] [line 90, size 64, align 64, offset 512] [from ]
!512 = metadata !{i32 786445, metadata !482, metadata !481, metadata !"excl", i32 91, i64 8448, i64 64, i64 576, i32 0, metadata !513} ; [ DW_TAG_member ] [excl] [line 91, size 8448, align 64, offset 576] [from t_block]
!513 = metadata !{i32 786454, metadata !482, null, metadata !"t_block", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !514} ; [ DW_TAG_typedef ] [t_block] [line 52, size 0, align 0, offset 0] [from ]
!514 = metadata !{i32 786451, metadata !515, null, metadata !"", i32 36, i64 8448, i64 64, i32 0, i32 0, null, metadata !516, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 8448, align 64, offset 0] [from ]
!515 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/block.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!516 = metadata !{metadata !517, metadata !518, metadata !519, metadata !521, metadata !522}
!517 = metadata !{i32 786445, metadata !515, metadata !514, metadata !"multinr", i32 37, i64 8192, i64 32, i64 0, i32 0, metadata !470} ; [ DW_TAG_member ] [multinr] [line 37, size 8192, align 32, offset 0] [from ]
!518 = metadata !{i32 786445, metadata !515, metadata !514, metadata !"nr", i32 43, i64 32, i64 32, i64 8192, i32 0, metadata !141} ; [ DW_TAG_member ] [nr] [line 43, size 32, align 32, offset 8192] [from int]
!519 = metadata !{i32 786445, metadata !515, metadata !514, metadata !"index", i32 44, i64 64, i64 64, i64 8256, i32 0, metadata !520} ; [ DW_TAG_member ] [index] [line 44, size 64, align 64, offset 8256] [from ]
!520 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !476} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!521 = metadata !{i32 786445, metadata !515, metadata !514, metadata !"nra", i32 45, i64 32, i64 32, i64 8320, i32 0, metadata !141} ; [ DW_TAG_member ] [nra] [line 45, size 32, align 32, offset 8320] [from int]
!522 = metadata !{i32 786445, metadata !515, metadata !514, metadata !"a", i32 46, i64 64, i64 64, i64 8384, i32 0, metadata !520} ; [ DW_TAG_member ] [a] [line 46, size 64, align 64, offset 8384] [from ]
!523 = metadata !{i32 786445, metadata !482, metadata !481, metadata !"grps", i32 92, i64 1152, i64 64, i64 9024, i32 0, metadata !524} ; [ DW_TAG_member ] [grps] [line 92, size 1152, align 64, offset 9024] [from ]
!524 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 64, i32 0, i32 0, metadata !525, metadata !501, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1152, align 64, offset 0] [from t_grps]
!525 = metadata !{i32 786454, metadata !482, null, metadata !"t_grps", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !526} ; [ DW_TAG_typedef ] [t_grps] [line 73, size 0, align 0, offset 0] [from ]
!526 = metadata !{i32 786451, metadata !482, null, metadata !"", i32 70, i64 128, i64 64, i32 0, i32 0, null, metadata !527, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 70, size 128, align 64, offset 0] [from ]
!527 = metadata !{metadata !528, metadata !529}
!528 = metadata !{i32 786445, metadata !482, metadata !526, metadata !"nr", i32 71, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [nr] [line 71, size 32, align 32, offset 0] [from int]
!529 = metadata !{i32 786445, metadata !482, metadata !526, metadata !"nm_ind", i32 72, i64 64, i64 64, i64 64, i32 0, metadata !318} ; [ DW_TAG_member ] [nm_ind] [line 72, size 64, align 64, offset 64] [from ]
!530 = metadata !{i32 786445, metadata !482, metadata !481, metadata !"pdbinfo", i32 93, i64 64, i64 64, i64 10176, i32 0, metadata !531} ; [ DW_TAG_member ] [pdbinfo] [line 93, size 64, align 64, offset 10176] [from ]
!531 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !532} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_pdbinfo]
!532 = metadata !{i32 786454, metadata !482, null, metadata !"t_pdbinfo", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !533} ; [ DW_TAG_typedef ] [t_pdbinfo] [line 68, size 0, align 0, offset 0] [from ]
!533 = metadata !{i32 786451, metadata !482, null, metadata !"", i32 59, i64 416, i64 32, i32 0, i32 0, null, metadata !534, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 59, size 416, align 32, offset 0] [from ]
!534 = metadata !{metadata !535, metadata !536, metadata !537, metadata !538, metadata !540, metadata !541, metadata !542, metadata !543}
!535 = metadata !{i32 786445, metadata !482, metadata !533, metadata !"type", i32 60, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [type] [line 60, size 32, align 32, offset 0] [from int]
!536 = metadata !{i32 786445, metadata !482, metadata !533, metadata !"atomnr", i32 61, i64 32, i64 32, i64 32, i32 0, metadata !141} ; [ DW_TAG_member ] [atomnr] [line 61, size 32, align 32, offset 32] [from int]
!537 = metadata !{i32 786445, metadata !482, metadata !533, metadata !"altloc", i32 62, i64 8, i64 8, i64 64, i32 0, metadata !144} ; [ DW_TAG_member ] [altloc] [line 62, size 8, align 8, offset 64] [from char]
!538 = metadata !{i32 786445, metadata !482, metadata !533, metadata !"pdbresnr", i32 63, i64 48, i64 8, i64 72, i32 0, metadata !539} ; [ DW_TAG_member ] [pdbresnr] [line 63, size 48, align 8, offset 72] [from ]
!539 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 48, i64 8, i32 0, i32 0, metadata !144, metadata !430, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 48, align 8, offset 0] [from char]
!540 = metadata !{i32 786445, metadata !482, metadata !533, metadata !"occup", i32 64, i64 32, i64 32, i64 128, i32 0, metadata !225} ; [ DW_TAG_member ] [occup] [line 64, size 32, align 32, offset 128] [from real]
!541 = metadata !{i32 786445, metadata !482, metadata !533, metadata !"bfac", i32 65, i64 32, i64 32, i64 160, i32 0, metadata !225} ; [ DW_TAG_member ] [bfac] [line 65, size 32, align 32, offset 160] [from real]
!542 = metadata !{i32 786445, metadata !482, metadata !533, metadata !"bAnisotropic", i32 66, i64 32, i64 32, i64 192, i32 0, metadata !141} ; [ DW_TAG_member ] [bAnisotropic] [line 66, size 32, align 32, offset 192] [from int]
!543 = metadata !{i32 786445, metadata !482, metadata !533, metadata !"uij", i32 67, i64 192, i64 32, i64 224, i32 0, metadata !544} ; [ DW_TAG_member ] [uij] [line 67, size 192, align 32, offset 224] [from ]
!544 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !141, metadata !430, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!545 = metadata !{i32 786445, metadata !337, metadata !336, metadata !"blocks", i32 40, i64 25344, i64 64, i64 376640, i32 0, metadata !546} ; [ DW_TAG_member ] [blocks] [line 40, size 25344, align 64, offset 376640] [from ]
!546 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 25344, i64 64, i32 0, i32 0, metadata !513, metadata !312, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 25344, align 64, offset 0] [from t_block]
!547 = metadata !{i32 786445, metadata !337, metadata !336, metadata !"symtab", i32 41, i64 128, i64 64, i64 401984, i32 0, metadata !548} ; [ DW_TAG_member ] [symtab] [line 41, size 128, align 64, offset 401984] [from t_symtab]
!548 = metadata !{i32 786454, metadata !337, null, metadata !"t_symtab", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !549} ; [ DW_TAG_typedef ] [t_symtab] [line 46, size 0, align 0, offset 0] [from ]
!549 = metadata !{i32 786451, metadata !550, null, metadata !"", i32 42, i64 128, i64 64, i32 0, i32 0, null, metadata !551, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 42, size 128, align 64, offset 0] [from ]
!550 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/symtab.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!551 = metadata !{metadata !552, metadata !553}
!552 = metadata !{i32 786445, metadata !550, metadata !549, metadata !"nr", i32 44, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [nr] [line 44, size 32, align 32, offset 0] [from int]
!553 = metadata !{i32 786445, metadata !550, metadata !549, metadata !"symbuf", i32 45, i64 64, i64 64, i64 64, i32 0, metadata !554} ; [ DW_TAG_member ] [symbuf] [line 45, size 64, align 64, offset 64] [from ]
!554 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !555} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_symbuf]
!555 = metadata !{i32 786454, metadata !550, null, metadata !"t_symbuf", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !556} ; [ DW_TAG_typedef ] [t_symbuf] [line 40, size 0, align 0, offset 0] [from symbuf]
!556 = metadata !{i32 786451, metadata !550, null, metadata !"symbuf", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !557, i32 0, null, null} ; [ DW_TAG_structure_type ] [symbuf] [line 36, size 192, align 64, offset 0] [from ]
!557 = metadata !{metadata !558, metadata !559, metadata !560}
!558 = metadata !{i32 786445, metadata !550, metadata !556, metadata !"bufsize", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [bufsize] [line 37, size 32, align 32, offset 0] [from int]
!559 = metadata !{i32 786445, metadata !550, metadata !556, metadata !"buf", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !340} ; [ DW_TAG_member ] [buf] [line 38, size 64, align 64, offset 64] [from ]
!560 = metadata !{i32 786445, metadata !550, metadata !556, metadata !"next", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !561} ; [ DW_TAG_member ] [next] [line 39, size 64, align 64, offset 128] [from ]
!561 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !556} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from symbuf]
!562 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !563} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_groups]
!563 = metadata !{i32 786454, metadata !1, null, metadata !"t_groups", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !564} ; [ DW_TAG_typedef ] [t_groups] [line 72, size 0, align 0, offset 0] [from ]
!564 = metadata !{i32 786451, metadata !565, null, metadata !"", i32 67, i64 768, i64 64, i32 0, i32 0, null, metadata !566, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 67, size 768, align 64, offset 0] [from ]
!565 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/group.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!566 = metadata !{metadata !567, metadata !576, metadata !586, metadata !597}
!567 = metadata !{i32 786445, metadata !565, metadata !564, metadata !"estat", i32 68, i64 512, i64 64, i64 0, i32 0, metadata !568} ; [ DW_TAG_member ] [estat] [line 68, size 512, align 64, offset 0] [from t_grp_ener]
!568 = metadata !{i32 786454, metadata !565, null, metadata !"t_grp_ener", i32 50, i64 0, i64 0, i64 0, i32 0, metadata !569} ; [ DW_TAG_typedef ] [t_grp_ener] [line 50, size 0, align 0, offset 0] [from ]
!569 = metadata !{i32 786451, metadata !565, null, metadata !"", i32 46, i64 512, i64 64, i32 0, i32 0, null, metadata !570, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 46, size 512, align 64, offset 0] [from ]
!570 = metadata !{metadata !571, metadata !572}
!571 = metadata !{i32 786445, metadata !565, metadata !569, metadata !"nn", i32 47, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [nn] [line 47, size 32, align 32, offset 0] [from int]
!572 = metadata !{i32 786445, metadata !565, metadata !569, metadata !"ee", i32 48, i64 448, i64 64, i64 64, i32 0, metadata !573} ; [ DW_TAG_member ] [ee] [line 48, size 448, align 64, offset 64] [from ]
!573 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 448, i64 64, i32 0, i32 0, metadata !305, metadata !574, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 448, align 64, offset 0] [from ]
!574 = metadata !{metadata !575}
!575 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 6]
!576 = metadata !{i32 786445, metadata !565, metadata !564, metadata !"tcstat", i32 69, i64 64, i64 64, i64 512, i32 0, metadata !577} ; [ DW_TAG_member ] [tcstat] [line 69, size 64, align 64, offset 512] [from ]
!577 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !578} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_grp_tcstat]
!578 = metadata !{i32 786454, metadata !565, null, metadata !"t_grp_tcstat", i32 44, i64 0, i64 0, i64 0, i32 0, metadata !579} ; [ DW_TAG_typedef ] [t_grp_tcstat] [line 44, size 0, align 0, offset 0] [from ]
!579 = metadata !{i32 786451, metadata !565, null, metadata !"", i32 38, i64 416, i64 32, i32 0, i32 0, null, metadata !580, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 38, size 416, align 32, offset 0] [from ]
!580 = metadata !{metadata !581, metadata !582, metadata !583, metadata !584, metadata !585}
!581 = metadata !{i32 786445, metadata !565, metadata !579, metadata !"T", i32 39, i64 32, i64 32, i64 0, i32 0, metadata !225} ; [ DW_TAG_member ] [T] [line 39, size 32, align 32, offset 0] [from real]
!582 = metadata !{i32 786445, metadata !565, metadata !579, metadata !"lambda", i32 40, i64 32, i64 32, i64 32, i32 0, metadata !225} ; [ DW_TAG_member ] [lambda] [line 40, size 32, align 32, offset 32] [from real]
!583 = metadata !{i32 786445, metadata !565, metadata !579, metadata !"ekin", i32 41, i64 288, i64 32, i64 64, i32 0, metadata !244} ; [ DW_TAG_member ] [ekin] [line 41, size 288, align 32, offset 64] [from tensor]
!584 = metadata !{i32 786445, metadata !565, metadata !579, metadata !"xi", i32 42, i64 32, i64 32, i64 352, i32 0, metadata !225} ; [ DW_TAG_member ] [xi] [line 42, size 32, align 32, offset 352] [from real]
!585 = metadata !{i32 786445, metadata !565, metadata !579, metadata !"s", i32 43, i64 32, i64 32, i64 384, i32 0, metadata !225} ; [ DW_TAG_member ] [s] [line 43, size 32, align 32, offset 384] [from real]
!586 = metadata !{i32 786445, metadata !565, metadata !564, metadata !"grpstat", i32 70, i64 64, i64 64, i64 576, i32 0, metadata !587} ; [ DW_TAG_member ] [grpstat] [line 70, size 64, align 64, offset 576] [from ]
!587 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !588} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_grp_acc]
!588 = metadata !{i32 786454, metadata !565, null, metadata !"t_grp_acc", i32 59, i64 0, i64 0, i64 0, i32 0, metadata !589} ; [ DW_TAG_typedef ] [t_grp_acc] [line 59, size 0, align 0, offset 0] [from ]
!589 = metadata !{i32 786451, metadata !565, null, metadata !"", i32 52, i64 448, i64 64, i32 0, i32 0, null, metadata !590, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 52, size 448, align 64, offset 0] [from ]
!590 = metadata !{metadata !591, metadata !592, metadata !593, metadata !594, metadata !595, metadata !596}
!591 = metadata !{i32 786445, metadata !565, metadata !589, metadata !"nat", i32 53, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [nat] [line 53, size 32, align 32, offset 0] [from int]
!592 = metadata !{i32 786445, metadata !565, metadata !589, metadata !"aid", i32 54, i64 64, i64 64, i64 64, i32 0, metadata !520} ; [ DW_TAG_member ] [aid] [line 54, size 64, align 64, offset 64] [from ]
!593 = metadata !{i32 786445, metadata !565, metadata !589, metadata !"M", i32 55, i64 32, i64 32, i64 128, i32 0, metadata !225} ; [ DW_TAG_member ] [M] [line 55, size 32, align 32, offset 128] [from real]
!594 = metadata !{i32 786445, metadata !565, metadata !589, metadata !"u", i32 56, i64 96, i64 32, i64 160, i32 0, metadata !310} ; [ DW_TAG_member ] [u] [line 56, size 96, align 32, offset 160] [from rvec]
!595 = metadata !{i32 786445, metadata !565, metadata !589, metadata !"uold", i32 57, i64 96, i64 32, i64 256, i32 0, metadata !310} ; [ DW_TAG_member ] [uold] [line 57, size 96, align 32, offset 256] [from rvec]
!596 = metadata !{i32 786445, metadata !565, metadata !589, metadata !"ut", i32 58, i64 96, i64 32, i64 352, i32 0, metadata !310} ; [ DW_TAG_member ] [ut] [line 58, size 96, align 32, offset 352] [from rvec]
!597 = metadata !{i32 786445, metadata !565, metadata !564, metadata !"cosacc", i32 71, i64 96, i64 32, i64 640, i32 0, metadata !598} ; [ DW_TAG_member ] [cosacc] [line 71, size 96, align 32, offset 640] [from t_cos_acc]
!598 = metadata !{i32 786454, metadata !565, null, metadata !"t_cos_acc", i32 65, i64 0, i64 0, i64 0, i32 0, metadata !599} ; [ DW_TAG_typedef ] [t_cos_acc] [line 65, size 0, align 0, offset 0] [from ]
!599 = metadata !{i32 786451, metadata !565, null, metadata !"", i32 61, i64 96, i64 32, i32 0, i32 0, null, metadata !600, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 61, size 96, align 32, offset 0] [from ]
!600 = metadata !{metadata !601, metadata !602, metadata !603}
!601 = metadata !{i32 786445, metadata !565, metadata !599, metadata !"cos_accel", i32 62, i64 32, i64 32, i64 0, i32 0, metadata !225} ; [ DW_TAG_member ] [cos_accel] [line 62, size 32, align 32, offset 0] [from real]
!602 = metadata !{i32 786445, metadata !565, metadata !599, metadata !"mvcos", i32 63, i64 32, i64 32, i64 32, i32 0, metadata !225} ; [ DW_TAG_member ] [mvcos] [line 63, size 32, align 32, offset 32] [from real]
!603 = metadata !{i32 786445, metadata !565, metadata !599, metadata !"vcos", i32 64, i64 32, i64 32, i64 64, i32 0, metadata !225} ; [ DW_TAG_member ] [vcos] [line 64, size 32, align 32, offset 64] [from real]
!604 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !605} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_nsborder]
!605 = metadata !{i32 786454, metadata !1, null, metadata !"t_nsborder", i32 59, i64 0, i64 0, i64 0, i32 0, metadata !606} ; [ DW_TAG_typedef ] [t_nsborder] [line 59, size 0, align 0, offset 0] [from ]
!606 = metadata !{i32 786451, metadata !607, null, metadata !"", i32 36, i64 32992, i64 32, i32 0, i32 0, null, metadata !608, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 32992, align 32, offset 0] [from ]
!607 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/nsborder.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!608 = metadata !{metadata !609, metadata !610, metadata !611, metadata !612, metadata !613, metadata !614, metadata !615, metadata !616, metadata !617, metadata !618, metadata !619}
!609 = metadata !{i32 786445, metadata !607, metadata !606, metadata !"nodeid", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [nodeid] [line 37, size 32, align 32, offset 0] [from int]
!610 = metadata !{i32 786445, metadata !607, metadata !606, metadata !"nnodes", i32 38, i64 32, i64 32, i64 32, i32 0, metadata !141} ; [ DW_TAG_member ] [nnodes] [line 38, size 32, align 32, offset 32] [from int]
!611 = metadata !{i32 786445, metadata !607, metadata !606, metadata !"cgtotal", i32 39, i64 32, i64 32, i64 64, i32 0, metadata !141} ; [ DW_TAG_member ] [cgtotal] [line 39, size 32, align 32, offset 64] [from int]
!612 = metadata !{i32 786445, metadata !607, metadata !606, metadata !"natoms", i32 40, i64 32, i64 32, i64 96, i32 0, metadata !141} ; [ DW_TAG_member ] [natoms] [line 40, size 32, align 32, offset 96] [from int]
!613 = metadata !{i32 786445, metadata !607, metadata !606, metadata !"nstDlb", i32 41, i64 32, i64 32, i64 128, i32 0, metadata !141} ; [ DW_TAG_member ] [nstDlb] [line 41, size 32, align 32, offset 128] [from int]
!614 = metadata !{i32 786445, metadata !607, metadata !606, metadata !"shift", i32 43, i64 32, i64 32, i64 160, i32 0, metadata !141} ; [ DW_TAG_member ] [shift] [line 43, size 32, align 32, offset 160] [from int]
!615 = metadata !{i32 786445, metadata !607, metadata !606, metadata !"bshift", i32 43, i64 32, i64 32, i64 192, i32 0, metadata !141} ; [ DW_TAG_member ] [bshift] [line 43, size 32, align 32, offset 192] [from int]
!616 = metadata !{i32 786445, metadata !607, metadata !606, metadata !"homenr", i32 50, i64 8192, i64 32, i64 224, i32 0, metadata !470} ; [ DW_TAG_member ] [homenr] [line 50, size 8192, align 32, offset 224] [from ]
!617 = metadata !{i32 786445, metadata !607, metadata !606, metadata !"index", i32 51, i64 8192, i64 32, i64 8416, i32 0, metadata !470} ; [ DW_TAG_member ] [index] [line 51, size 8192, align 32, offset 8416] [from ]
!618 = metadata !{i32 786445, metadata !607, metadata !606, metadata !"cgload", i32 52, i64 8192, i64 32, i64 16608, i32 0, metadata !470} ; [ DW_TAG_member ] [cgload] [line 52, size 8192, align 32, offset 16608] [from ]
!619 = metadata !{i32 786445, metadata !607, metadata !606, metadata !"workload", i32 55, i64 8192, i64 32, i64 24800, i32 0, metadata !470} ; [ DW_TAG_member ] [workload] [line 55, size 8192, align 32, offset 24800] [from ]
!620 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !621} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_mdatoms]
!621 = metadata !{i32 786454, metadata !1, null, metadata !"t_mdatoms", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !622} ; [ DW_TAG_typedef ] [t_mdatoms] [line 51, size 0, align 0, offset 0] [from ]
!622 = metadata !{i32 786451, metadata !623, null, metadata !"", i32 40, i64 1408, i64 64, i32 0, i32 0, null, metadata !624, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 40, size 1408, align 64, offset 0] [from ]
!623 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/mdatom.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!624 = metadata !{metadata !625, metadata !626, metadata !627, metadata !628, metadata !629, metadata !630, metadata !631, metadata !632, metadata !633, metadata !634, metadata !635, metadata !636, metadata !637, metadata !638, metadata !640, metadata !641, metadata !642, metadata !643, metadata !644, metadata !645, metadata !646, metadata !647, metadata !648}
!625 = metadata !{i32 786445, metadata !623, metadata !622, metadata !"tmass", i32 41, i64 32, i64 32, i64 0, i32 0, metadata !225} ; [ DW_TAG_member ] [tmass] [line 41, size 32, align 32, offset 0] [from real]
!626 = metadata !{i32 786445, metadata !623, metadata !622, metadata !"nr", i32 42, i64 32, i64 32, i64 32, i32 0, metadata !141} ; [ DW_TAG_member ] [nr] [line 42, size 32, align 32, offset 32] [from int]
!627 = metadata !{i32 786445, metadata !623, metadata !622, metadata !"massA", i32 43, i64 64, i64 64, i64 64, i32 0, metadata !305} ; [ DW_TAG_member ] [massA] [line 43, size 64, align 64, offset 64] [from ]
!628 = metadata !{i32 786445, metadata !623, metadata !622, metadata !"massB", i32 43, i64 64, i64 64, i64 128, i32 0, metadata !305} ; [ DW_TAG_member ] [massB] [line 43, size 64, align 64, offset 128] [from ]
!629 = metadata !{i32 786445, metadata !623, metadata !622, metadata !"massT", i32 43, i64 64, i64 64, i64 192, i32 0, metadata !305} ; [ DW_TAG_member ] [massT] [line 43, size 64, align 64, offset 192] [from ]
!630 = metadata !{i32 786445, metadata !623, metadata !622, metadata !"invmass", i32 43, i64 64, i64 64, i64 256, i32 0, metadata !305} ; [ DW_TAG_member ] [invmass] [line 43, size 64, align 64, offset 256] [from ]
!631 = metadata !{i32 786445, metadata !623, metadata !622, metadata !"chargeA", i32 44, i64 64, i64 64, i64 320, i32 0, metadata !305} ; [ DW_TAG_member ] [chargeA] [line 44, size 64, align 64, offset 320] [from ]
!632 = metadata !{i32 786445, metadata !623, metadata !622, metadata !"chargeB", i32 44, i64 64, i64 64, i64 384, i32 0, metadata !305} ; [ DW_TAG_member ] [chargeB] [line 44, size 64, align 64, offset 384] [from ]
!633 = metadata !{i32 786445, metadata !623, metadata !622, metadata !"chargeT", i32 44, i64 64, i64 64, i64 448, i32 0, metadata !305} ; [ DW_TAG_member ] [chargeT] [line 44, size 64, align 64, offset 448] [from ]
!634 = metadata !{i32 786445, metadata !623, metadata !622, metadata !"bPerturbed", i32 45, i64 64, i64 64, i64 512, i32 0, metadata !318} ; [ DW_TAG_member ] [bPerturbed] [line 45, size 64, align 64, offset 512] [from ]
!635 = metadata !{i32 786445, metadata !623, metadata !622, metadata !"resnr", i32 46, i64 64, i64 64, i64 576, i32 0, metadata !318} ; [ DW_TAG_member ] [resnr] [line 46, size 64, align 64, offset 576] [from ]
!636 = metadata !{i32 786445, metadata !623, metadata !622, metadata !"typeA", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !318} ; [ DW_TAG_member ] [typeA] [line 47, size 64, align 64, offset 640] [from ]
!637 = metadata !{i32 786445, metadata !623, metadata !622, metadata !"typeB", i32 47, i64 64, i64 64, i64 704, i32 0, metadata !318} ; [ DW_TAG_member ] [typeB] [line 47, size 64, align 64, offset 704] [from ]
!638 = metadata !{i32 786445, metadata !623, metadata !622, metadata !"ptype", i32 48, i64 64, i64 64, i64 768, i32 0, metadata !639} ; [ DW_TAG_member ] [ptype] [line 48, size 64, align 64, offset 768] [from ]
!639 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !169} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!640 = metadata !{i32 786445, metadata !623, metadata !622, metadata !"cTC", i32 49, i64 64, i64 64, i64 832, i32 0, metadata !639} ; [ DW_TAG_member ] [cTC] [line 49, size 64, align 64, offset 832] [from ]
!641 = metadata !{i32 786445, metadata !623, metadata !622, metadata !"cENER", i32 49, i64 64, i64 64, i64 896, i32 0, metadata !639} ; [ DW_TAG_member ] [cENER] [line 49, size 64, align 64, offset 896] [from ]
!642 = metadata !{i32 786445, metadata !623, metadata !622, metadata !"cACC", i32 49, i64 64, i64 64, i64 960, i32 0, metadata !639} ; [ DW_TAG_member ] [cACC] [line 49, size 64, align 64, offset 960] [from ]
!643 = metadata !{i32 786445, metadata !623, metadata !622, metadata !"cFREEZE", i32 49, i64 64, i64 64, i64 1024, i32 0, metadata !639} ; [ DW_TAG_member ] [cFREEZE] [line 49, size 64, align 64, offset 1024] [from ]
!644 = metadata !{i32 786445, metadata !623, metadata !622, metadata !"cXTC", i32 49, i64 64, i64 64, i64 1088, i32 0, metadata !639} ; [ DW_TAG_member ] [cXTC] [line 49, size 64, align 64, offset 1088] [from ]
!645 = metadata !{i32 786445, metadata !623, metadata !622, metadata !"cVCM", i32 49, i64 64, i64 64, i64 1152, i32 0, metadata !639} ; [ DW_TAG_member ] [cVCM] [line 49, size 64, align 64, offset 1152] [from ]
!646 = metadata !{i32 786445, metadata !623, metadata !622, metadata !"cU1", i32 50, i64 64, i64 64, i64 1216, i32 0, metadata !639} ; [ DW_TAG_member ] [cU1] [line 50, size 64, align 64, offset 1216] [from ]
!647 = metadata !{i32 786445, metadata !623, metadata !622, metadata !"cU2", i32 50, i64 64, i64 64, i64 1280, i32 0, metadata !639} ; [ DW_TAG_member ] [cU2] [line 50, size 64, align 64, offset 1280] [from ]
!648 = metadata !{i32 786445, metadata !623, metadata !622, metadata !"cORF", i32 50, i64 64, i64 64, i64 1344, i32 0, metadata !639} ; [ DW_TAG_member ] [cORF] [line 50, size 64, align 64, offset 1344] [from ]
!649 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !311} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!650 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !651} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_fcdata]
!651 = metadata !{i32 786454, metadata !1, null, metadata !"t_fcdata", i32 95, i64 0, i64 0, i64 0, i32 0, metadata !652} ; [ DW_TAG_typedef ] [t_fcdata] [line 95, size 0, align 0, offset 0] [from ]
!652 = metadata !{i32 786451, metadata !653, null, metadata !"", i32 92, i64 2048, i64 64, i32 0, i32 0, null, metadata !654, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 92, size 2048, align 64, offset 0] [from ]
!653 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/fcdata.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!654 = metadata !{metadata !655, metadata !674}
!655 = metadata !{i32 786445, metadata !653, metadata !652, metadata !"disres", i32 93, i64 640, i64 64, i64 0, i32 0, metadata !656} ; [ DW_TAG_member ] [disres] [line 93, size 640, align 64, offset 0] [from t_disresdata]
!656 = metadata !{i32 786454, metadata !653, null, metadata !"t_disresdata", i32 58, i64 0, i64 0, i64 0, i32 0, metadata !657} ; [ DW_TAG_typedef ] [t_disresdata] [line 58, size 0, align 0, offset 0] [from ]
!657 = metadata !{i32 786451, metadata !653, null, metadata !"", i32 39, i64 640, i64 64, i32 0, i32 0, null, metadata !658, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 39, size 640, align 64, offset 0] [from ]
!658 = metadata !{metadata !659, metadata !660, metadata !661, metadata !662, metadata !663, metadata !664, metadata !665, metadata !666, metadata !667, metadata !668, metadata !669, metadata !670, metadata !671, metadata !672, metadata !673}
!659 = metadata !{i32 786445, metadata !653, metadata !657, metadata !"dr_weighting", i32 40, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [dr_weighting] [line 40, size 32, align 32, offset 0] [from int]
!660 = metadata !{i32 786445, metadata !653, metadata !657, metadata !"dr_bMixed", i32 41, i64 32, i64 32, i64 32, i32 0, metadata !141} ; [ DW_TAG_member ] [dr_bMixed] [line 41, size 32, align 32, offset 32] [from int]
!661 = metadata !{i32 786445, metadata !653, metadata !657, metadata !"dr_fc", i32 43, i64 32, i64 32, i64 64, i32 0, metadata !225} ; [ DW_TAG_member ] [dr_fc] [line 43, size 32, align 32, offset 64] [from real]
!662 = metadata !{i32 786445, metadata !653, metadata !657, metadata !"dr_tau", i32 46, i64 32, i64 32, i64 96, i32 0, metadata !225} ; [ DW_TAG_member ] [dr_tau] [line 46, size 32, align 32, offset 96] [from real]
!663 = metadata !{i32 786445, metadata !653, metadata !657, metadata !"ETerm", i32 47, i64 32, i64 32, i64 128, i32 0, metadata !225} ; [ DW_TAG_member ] [ETerm] [line 47, size 32, align 32, offset 128] [from real]
!664 = metadata !{i32 786445, metadata !653, metadata !657, metadata !"ETerm1", i32 48, i64 32, i64 32, i64 160, i32 0, metadata !225} ; [ DW_TAG_member ] [ETerm1] [line 48, size 32, align 32, offset 160] [from real]
!665 = metadata !{i32 786445, metadata !653, metadata !657, metadata !"exp_min_t_tau", i32 49, i64 32, i64 32, i64 192, i32 0, metadata !225} ; [ DW_TAG_member ] [exp_min_t_tau] [line 49, size 32, align 32, offset 192] [from real]
!666 = metadata !{i32 786445, metadata !653, metadata !657, metadata !"nr", i32 50, i64 32, i64 32, i64 224, i32 0, metadata !141} ; [ DW_TAG_member ] [nr] [line 50, size 32, align 32, offset 224] [from int]
!667 = metadata !{i32 786445, metadata !653, metadata !657, metadata !"npr", i32 51, i64 32, i64 32, i64 256, i32 0, metadata !141} ; [ DW_TAG_member ] [npr] [line 51, size 32, align 32, offset 256] [from int]
!668 = metadata !{i32 786445, metadata !653, metadata !657, metadata !"sumviol", i32 52, i64 32, i64 32, i64 288, i32 0, metadata !225} ; [ DW_TAG_member ] [sumviol] [line 52, size 32, align 32, offset 288] [from real]
!669 = metadata !{i32 786445, metadata !653, metadata !657, metadata !"rt", i32 53, i64 64, i64 64, i64 320, i32 0, metadata !305} ; [ DW_TAG_member ] [rt] [line 53, size 64, align 64, offset 320] [from ]
!670 = metadata !{i32 786445, metadata !653, metadata !657, metadata !"rav", i32 54, i64 64, i64 64, i64 384, i32 0, metadata !305} ; [ DW_TAG_member ] [rav] [line 54, size 64, align 64, offset 384] [from ]
!671 = metadata !{i32 786445, metadata !653, metadata !657, metadata !"Rtl_6", i32 55, i64 64, i64 64, i64 448, i32 0, metadata !305} ; [ DW_TAG_member ] [Rtl_6] [line 55, size 64, align 64, offset 448] [from ]
!672 = metadata !{i32 786445, metadata !653, metadata !657, metadata !"Rt_6", i32 56, i64 64, i64 64, i64 512, i32 0, metadata !305} ; [ DW_TAG_member ] [Rt_6] [line 56, size 64, align 64, offset 512] [from ]
!673 = metadata !{i32 786445, metadata !653, metadata !657, metadata !"Rav_6", i32 57, i64 64, i64 64, i64 576, i32 0, metadata !305} ; [ DW_TAG_member ] [Rav_6] [line 57, size 64, align 64, offset 576] [from ]
!674 = metadata !{i32 786445, metadata !653, metadata !652, metadata !"orires", i32 94, i64 1408, i64 64, i64 640, i32 0, metadata !675} ; [ DW_TAG_member ] [orires] [line 94, size 1408, align 64, offset 640] [from t_oriresdata]
!675 = metadata !{i32 786454, metadata !653, null, metadata !"t_oriresdata", i32 84, i64 0, i64 0, i64 0, i32 0, metadata !676} ; [ DW_TAG_typedef ] [t_oriresdata] [line 84, size 0, align 0, offset 0] [from ]
!676 = metadata !{i32 786451, metadata !653, null, metadata !"", i32 61, i64 1408, i64 64, i32 0, i32 0, null, metadata !677, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 61, size 1408, align 64, offset 0] [from ]
!677 = metadata !{metadata !678, metadata !679, metadata !680, metadata !681, metadata !682, metadata !683, metadata !684, metadata !685, metadata !686, metadata !687, metadata !688, metadata !689, metadata !690, metadata !692, metadata !698, metadata !699, metadata !700, metadata !701, metadata !702, metadata !703, metadata !704, metadata !705}
!678 = metadata !{i32 786445, metadata !653, metadata !676, metadata !"fc", i32 62, i64 32, i64 32, i64 0, i32 0, metadata !225} ; [ DW_TAG_member ] [fc] [line 62, size 32, align 32, offset 0] [from real]
!679 = metadata !{i32 786445, metadata !653, metadata !676, metadata !"edt", i32 63, i64 32, i64 32, i64 32, i32 0, metadata !225} ; [ DW_TAG_member ] [edt] [line 63, size 32, align 32, offset 32] [from real]
!680 = metadata !{i32 786445, metadata !653, metadata !676, metadata !"edt1", i32 64, i64 32, i64 32, i64 64, i32 0, metadata !225} ; [ DW_TAG_member ] [edt1] [line 64, size 32, align 32, offset 64] [from real]
!681 = metadata !{i32 786445, metadata !653, metadata !676, metadata !"exp_min_t_tau", i32 65, i64 32, i64 32, i64 96, i32 0, metadata !225} ; [ DW_TAG_member ] [exp_min_t_tau] [line 65, size 32, align 32, offset 96] [from real]
!682 = metadata !{i32 786445, metadata !653, metadata !676, metadata !"nr", i32 66, i64 32, i64 32, i64 128, i32 0, metadata !141} ; [ DW_TAG_member ] [nr] [line 66, size 32, align 32, offset 128] [from int]
!683 = metadata !{i32 786445, metadata !653, metadata !676, metadata !"nex", i32 67, i64 32, i64 32, i64 160, i32 0, metadata !141} ; [ DW_TAG_member ] [nex] [line 67, size 32, align 32, offset 160] [from int]
!684 = metadata !{i32 786445, metadata !653, metadata !676, metadata !"nref", i32 68, i64 32, i64 32, i64 192, i32 0, metadata !141} ; [ DW_TAG_member ] [nref] [line 68, size 32, align 32, offset 192] [from int]
!685 = metadata !{i32 786445, metadata !653, metadata !676, metadata !"invmref", i32 69, i64 32, i64 32, i64 224, i32 0, metadata !225} ; [ DW_TAG_member ] [invmref] [line 69, size 32, align 32, offset 224] [from real]
!686 = metadata !{i32 786445, metadata !653, metadata !676, metadata !"mref", i32 70, i64 64, i64 64, i64 256, i32 0, metadata !305} ; [ DW_TAG_member ] [mref] [line 70, size 64, align 64, offset 256] [from ]
!687 = metadata !{i32 786445, metadata !653, metadata !676, metadata !"xref", i32 71, i64 64, i64 64, i64 320, i32 0, metadata !309} ; [ DW_TAG_member ] [xref] [line 71, size 64, align 64, offset 320] [from ]
!688 = metadata !{i32 786445, metadata !653, metadata !676, metadata !"xtmp", i32 72, i64 64, i64 64, i64 384, i32 0, metadata !309} ; [ DW_TAG_member ] [xtmp] [line 72, size 64, align 64, offset 384] [from ]
!689 = metadata !{i32 786445, metadata !653, metadata !676, metadata !"R", i32 73, i64 288, i64 32, i64 448, i32 0, metadata !329} ; [ DW_TAG_member ] [R] [line 73, size 288, align 32, offset 448] [from matrix]
!690 = metadata !{i32 786445, metadata !653, metadata !676, metadata !"S", i32 74, i64 64, i64 64, i64 768, i32 0, metadata !691} ; [ DW_TAG_member ] [S] [line 74, size 64, align 64, offset 768] [from ]
!691 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !244} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from tensor]
!692 = metadata !{i32 786445, metadata !653, metadata !676, metadata !"Dinsl", i32 75, i64 64, i64 64, i64 832, i32 0, metadata !693} ; [ DW_TAG_member ] [Dinsl] [line 75, size 64, align 64, offset 832] [from ]
!693 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !694} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec5]
!694 = metadata !{i32 786454, metadata !653, null, metadata !"rvec5", i32 36, i64 0, i64 0, i64 0, i32 0, metadata !695} ; [ DW_TAG_typedef ] [rvec5] [line 36, size 0, align 0, offset 0] [from ]
!695 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 32, i32 0, i32 0, metadata !225, metadata !696, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 32, offset 0] [from real]
!696 = metadata !{metadata !697}
!697 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!698 = metadata !{i32 786445, metadata !653, metadata !676, metadata !"Dins", i32 76, i64 64, i64 64, i64 896, i32 0, metadata !693} ; [ DW_TAG_member ] [Dins] [line 76, size 64, align 64, offset 896] [from ]
!699 = metadata !{i32 786445, metadata !653, metadata !676, metadata !"Dtav", i32 77, i64 64, i64 64, i64 960, i32 0, metadata !693} ; [ DW_TAG_member ] [Dtav] [line 77, size 64, align 64, offset 960] [from ]
!700 = metadata !{i32 786445, metadata !653, metadata !676, metadata !"oinsl", i32 78, i64 64, i64 64, i64 1024, i32 0, metadata !305} ; [ DW_TAG_member ] [oinsl] [line 78, size 64, align 64, offset 1024] [from ]
!701 = metadata !{i32 786445, metadata !653, metadata !676, metadata !"oins", i32 79, i64 64, i64 64, i64 1088, i32 0, metadata !305} ; [ DW_TAG_member ] [oins] [line 79, size 64, align 64, offset 1088] [from ]
!702 = metadata !{i32 786445, metadata !653, metadata !676, metadata !"otav", i32 80, i64 64, i64 64, i64 1152, i32 0, metadata !305} ; [ DW_TAG_member ] [otav] [line 80, size 64, align 64, offset 1152] [from ]
!703 = metadata !{i32 786445, metadata !653, metadata !676, metadata !"rmsdev", i32 81, i64 32, i64 32, i64 1216, i32 0, metadata !225} ; [ DW_TAG_member ] [rmsdev] [line 81, size 32, align 32, offset 1216] [from real]
!704 = metadata !{i32 786445, metadata !653, metadata !676, metadata !"tmp", i32 82, i64 64, i64 64, i64 1280, i32 0, metadata !693} ; [ DW_TAG_member ] [tmp] [line 82, size 64, align 64, offset 1280] [from ]
!705 = metadata !{i32 786445, metadata !653, metadata !676, metadata !"TMP", i32 83, i64 64, i64 64, i64 1344, i32 0, metadata !706} ; [ DW_TAG_member ] [TMP] [line 83, size 64, align 64, offset 1344] [from ]
!706 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !707} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!707 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !305} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!708 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !709} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_nrnb]
!709 = metadata !{i32 786454, metadata !1, null, metadata !"t_nrnb", i32 95, i64 0, i64 0, i64 0, i32 0, metadata !710} ; [ DW_TAG_typedef ] [t_nrnb] [line 95, size 0, align 0, offset 0] [from ]
!710 = metadata !{i32 786451, metadata !711, null, metadata !"", i32 93, i64 8256, i64 64, i32 0, i32 0, null, metadata !712, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 93, size 8256, align 64, offset 0] [from ]
!711 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/nrnb.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!712 = metadata !{metadata !713}
!713 = metadata !{i32 786445, metadata !711, metadata !710, metadata !"n", i32 94, i64 8256, i64 64, i64 0, i32 0, metadata !714} ; [ DW_TAG_member ] [n] [line 94, size 8256, align 64, offset 0] [from ]
!714 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8256, i64 64, i32 0, i32 0, metadata !715, metadata !716, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8256, align 64, offset 0] [from double]
!715 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!716 = metadata !{metadata !717}
!717 = metadata !{i32 786465, i64 0, i64 129}     ; [ DW_TAG_subrange_type ] [0, 128]
!718 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !719} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_comm_dummies]
!719 = metadata !{i32 786454, metadata !1, null, metadata !"t_comm_dummies", i32 53, i64 0, i64 0, i64 0, i32 0, metadata !720} ; [ DW_TAG_typedef ] [t_comm_dummies] [line 53, size 0, align 0, offset 0] [from ]
!720 = metadata !{i32 786451, metadata !721, null, metadata !"", i32 44, i64 384, i64 64, i32 0, i32 0, null, metadata !722, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 44, size 384, align 64, offset 0] [from ]
!721 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/dummies.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!722 = metadata !{metadata !723, metadata !724, metadata !725, metadata !726, metadata !727, metadata !728, metadata !729, metadata !730}
!723 = metadata !{i32 786445, metadata !721, metadata !720, metadata !"nprevdum", i32 45, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [nprevdum] [line 45, size 32, align 32, offset 0] [from int]
!724 = metadata !{i32 786445, metadata !721, metadata !720, metadata !"nnextdum", i32 46, i64 32, i64 32, i64 32, i32 0, metadata !141} ; [ DW_TAG_member ] [nnextdum] [line 46, size 32, align 32, offset 32] [from int]
!725 = metadata !{i32 786445, metadata !721, metadata !720, metadata !"idxprevdum", i32 47, i64 64, i64 64, i64 64, i32 0, metadata !318} ; [ DW_TAG_member ] [idxprevdum] [line 47, size 64, align 64, offset 64] [from ]
!726 = metadata !{i32 786445, metadata !721, metadata !720, metadata !"idxnextdum", i32 48, i64 64, i64 64, i64 128, i32 0, metadata !318} ; [ DW_TAG_member ] [idxnextdum] [line 48, size 64, align 64, offset 128] [from ]
!727 = metadata !{i32 786445, metadata !721, metadata !720, metadata !"nprevconstr", i32 49, i64 32, i64 32, i64 192, i32 0, metadata !141} ; [ DW_TAG_member ] [nprevconstr] [line 49, size 32, align 32, offset 192] [from int]
!728 = metadata !{i32 786445, metadata !721, metadata !720, metadata !"nnextconstr", i32 50, i64 32, i64 32, i64 224, i32 0, metadata !141} ; [ DW_TAG_member ] [nnextconstr] [line 50, size 32, align 32, offset 224] [from int]
!729 = metadata !{i32 786445, metadata !721, metadata !720, metadata !"idxprevconstr", i32 51, i64 64, i64 64, i64 256, i32 0, metadata !318} ; [ DW_TAG_member ] [idxprevconstr] [line 51, size 64, align 64, offset 256] [from ]
!730 = metadata !{i32 786445, metadata !721, metadata !720, metadata !"idxnextconstr", i32 52, i64 64, i64 64, i64 320, i32 0, metadata !318} ; [ DW_TAG_member ] [idxnextconstr] [line 52, size 64, align 64, offset 320] [from ]
!731 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !732} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_commrec]
!732 = metadata !{i32 786454, metadata !1, null, metadata !"t_commrec", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !733} ; [ DW_TAG_typedef ] [t_commrec] [line 40, size 0, align 0, offset 0] [from ]
!733 = metadata !{i32 786451, metadata !734, null, metadata !"", i32 36, i64 192, i64 32, i32 0, i32 0, null, metadata !735, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 32, offset 0] [from ]
!734 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/commrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!735 = metadata !{metadata !736, metadata !737, metadata !738, metadata !739, metadata !740, metadata !741}
!736 = metadata !{i32 786445, metadata !734, metadata !733, metadata !"nodeid", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [nodeid] [line 37, size 32, align 32, offset 0] [from int]
!737 = metadata !{i32 786445, metadata !734, metadata !733, metadata !"nnodes", i32 37, i64 32, i64 32, i64 32, i32 0, metadata !141} ; [ DW_TAG_member ] [nnodes] [line 37, size 32, align 32, offset 32] [from int]
!738 = metadata !{i32 786445, metadata !734, metadata !733, metadata !"left", i32 38, i64 32, i64 32, i64 64, i32 0, metadata !141} ; [ DW_TAG_member ] [left] [line 38, size 32, align 32, offset 64] [from int]
!739 = metadata !{i32 786445, metadata !734, metadata !733, metadata !"right", i32 38, i64 32, i64 32, i64 96, i32 0, metadata !141} ; [ DW_TAG_member ] [right] [line 38, size 32, align 32, offset 96] [from int]
!740 = metadata !{i32 786445, metadata !734, metadata !733, metadata !"threadid", i32 39, i64 32, i64 32, i64 128, i32 0, metadata !141} ; [ DW_TAG_member ] [threadid] [line 39, size 32, align 32, offset 128] [from int]
!741 = metadata !{i32 786445, metadata !734, metadata !733, metadata !"nthreads", i32 39, i64 32, i64 32, i64 160, i32 0, metadata !141} ; [ DW_TAG_member ] [nthreads] [line 39, size 32, align 32, offset 160] [from int]
!742 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !743} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_graph]
!743 = metadata !{i32 786454, metadata !1, null, metadata !"t_graph", i32 47, i64 0, i64 0, i64 0, i32 0, metadata !744} ; [ DW_TAG_typedef ] [t_graph] [line 47, size 0, align 0, offset 0] [from ]
!744 = metadata !{i32 786451, metadata !745, null, metadata !"", i32 38, i64 384, i64 64, i32 0, i32 0, null, metadata !746, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 38, size 384, align 64, offset 0] [from ]
!745 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/graph.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!746 = metadata !{metadata !747, metadata !748, metadata !749, metadata !750, metadata !751, metadata !752, metadata !753, metadata !755}
!747 = metadata !{i32 786445, metadata !745, metadata !744, metadata !"maxbond", i32 39, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [maxbond] [line 39, size 32, align 32, offset 0] [from int]
!748 = metadata !{i32 786445, metadata !745, metadata !744, metadata !"nnodes", i32 40, i64 32, i64 32, i64 32, i32 0, metadata !141} ; [ DW_TAG_member ] [nnodes] [line 40, size 32, align 32, offset 32] [from int]
!749 = metadata !{i32 786445, metadata !745, metadata !744, metadata !"nbound", i32 41, i64 32, i64 32, i64 64, i32 0, metadata !141} ; [ DW_TAG_member ] [nbound] [line 41, size 32, align 32, offset 64] [from int]
!750 = metadata !{i32 786445, metadata !745, metadata !744, metadata !"start", i32 42, i64 32, i64 32, i64 96, i32 0, metadata !141} ; [ DW_TAG_member ] [start] [line 42, size 32, align 32, offset 96] [from int]
!751 = metadata !{i32 786445, metadata !745, metadata !744, metadata !"end", i32 43, i64 32, i64 32, i64 128, i32 0, metadata !141} ; [ DW_TAG_member ] [end] [line 43, size 32, align 32, offset 128] [from int]
!752 = metadata !{i32 786445, metadata !745, metadata !744, metadata !"nedge", i32 44, i64 64, i64 64, i64 192, i32 0, metadata !318} ; [ DW_TAG_member ] [nedge] [line 44, size 64, align 64, offset 192] [from ]
!753 = metadata !{i32 786445, metadata !745, metadata !744, metadata !"edge", i32 45, i64 64, i64 64, i64 256, i32 0, metadata !754} ; [ DW_TAG_member ] [edge] [line 45, size 64, align 64, offset 256] [from ]
!754 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !520} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!755 = metadata !{i32 786445, metadata !745, metadata !744, metadata !"ishift", i32 46, i64 64, i64 64, i64 320, i32 0, metadata !314} ; [ DW_TAG_member ] [ishift] [line 46, size 64, align 64, offset 320] [from ]
!756 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !757} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_forcerec]
!757 = metadata !{i32 786454, metadata !1, null, metadata !"t_forcerec", i32 149, i64 0, i64 0, i64 0, i32 0, metadata !758} ; [ DW_TAG_typedef ] [t_forcerec] [line 149, size 0, align 0, offset 0] [from ]
!758 = metadata !{i32 786451, metadata !759, null, metadata !"", i32 43, i64 22784, i64 64, i32 0, i32 0, null, metadata !760, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 43, size 22784, align 64, offset 0] [from ]
!759 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/forcerec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!760 = metadata !{metadata !761, metadata !762, metadata !763, metadata !764, metadata !765, metadata !766, metadata !767, metadata !768, metadata !769, metadata !770, metadata !771, metadata !772, metadata !773, metadata !774, metadata !775, metadata !776, metadata !777, metadata !778, metadata !779, metadata !780, metadata !781, metadata !782, metadata !783, metadata !784, metadata !785, metadata !786, metadata !787, metadata !788, metadata !789, metadata !790, metadata !791, metadata !792, metadata !793, metadata !794, metadata !795, metadata !796, metadata !797, metadata !798, metadata !799, metadata !800, metadata !801, metadata !802, metadata !803, metadata !804, metadata !805, metadata !806, metadata !807, metadata !808, metadata !809, metadata !810, metadata !833, metadata !834, metadata !835, metadata !836, metadata !837, metadata !838, metadata !839, metadata !840, metadata !841, metadata !842, metadata !843, metadata !844, metadata !845, metadata !846, metadata !847, metadata !848, metadata !849, metadata !850}
!761 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"ePBC", i32 45, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [ePBC] [line 45, size 32, align 32, offset 0] [from int]
!762 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"rlist", i32 46, i64 32, i64 32, i64 32, i32 0, metadata !225} ; [ DW_TAG_member ] [rlist] [line 46, size 32, align 32, offset 32] [from real]
!763 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"rlistlong", i32 46, i64 32, i64 32, i64 64, i32 0, metadata !225} ; [ DW_TAG_member ] [rlistlong] [line 46, size 32, align 32, offset 64] [from real]
!764 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"zsquare", i32 49, i64 32, i64 32, i64 96, i32 0, metadata !225} ; [ DW_TAG_member ] [zsquare] [line 49, size 32, align 32, offset 96] [from real]
!765 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"temp", i32 49, i64 32, i64 32, i64 128, i32 0, metadata !225} ; [ DW_TAG_member ] [temp] [line 49, size 32, align 32, offset 128] [from real]
!766 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"epsilon_r", i32 50, i64 32, i64 32, i64 160, i32 0, metadata !225} ; [ DW_TAG_member ] [epsilon_r] [line 50, size 32, align 32, offset 160] [from real]
!767 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"epsfac", i32 50, i64 32, i64 32, i64 192, i32 0, metadata !225} ; [ DW_TAG_member ] [epsfac] [line 50, size 32, align 32, offset 192] [from real]
!768 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"bRF", i32 53, i64 32, i64 32, i64 224, i32 0, metadata !141} ; [ DW_TAG_member ] [bRF] [line 53, size 32, align 32, offset 224] [from int]
!769 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"kappa", i32 54, i64 32, i64 32, i64 256, i32 0, metadata !225} ; [ DW_TAG_member ] [kappa] [line 54, size 32, align 32, offset 256] [from real]
!770 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"k_rf", i32 54, i64 32, i64 32, i64 288, i32 0, metadata !225} ; [ DW_TAG_member ] [k_rf] [line 54, size 32, align 32, offset 288] [from real]
!771 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"c_rf", i32 54, i64 32, i64 32, i64 320, i32 0, metadata !225} ; [ DW_TAG_member ] [c_rf] [line 54, size 32, align 32, offset 320] [from real]
!772 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"avcsix", i32 57, i64 32, i64 32, i64 352, i32 0, metadata !225} ; [ DW_TAG_member ] [avcsix] [line 57, size 32, align 32, offset 352] [from real]
!773 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"fudgeQQ", i32 60, i64 32, i64 32, i64 384, i32 0, metadata !225} ; [ DW_TAG_member ] [fudgeQQ] [line 60, size 32, align 32, offset 384] [from real]
!774 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"bcoultab", i32 63, i64 32, i64 32, i64 416, i32 0, metadata !141} ; [ DW_TAG_member ] [bcoultab] [line 63, size 32, align 32, offset 416] [from int]
!775 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"bvdwtab", i32 64, i64 32, i64 32, i64 448, i32 0, metadata !141} ; [ DW_TAG_member ] [bvdwtab] [line 64, size 32, align 32, offset 448] [from int]
!776 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"rtab", i32 65, i64 32, i64 32, i64 480, i32 0, metadata !225} ; [ DW_TAG_member ] [rtab] [line 65, size 32, align 32, offset 480] [from real]
!777 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"ntab", i32 66, i64 32, i64 32, i64 512, i32 0, metadata !141} ; [ DW_TAG_member ] [ntab] [line 66, size 32, align 32, offset 512] [from int]
!778 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"tabscale", i32 67, i64 32, i64 32, i64 544, i32 0, metadata !225} ; [ DW_TAG_member ] [tabscale] [line 67, size 32, align 32, offset 544] [from real]
!779 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"coultab", i32 69, i64 64, i64 64, i64 576, i32 0, metadata !305} ; [ DW_TAG_member ] [coultab] [line 69, size 64, align 64, offset 576] [from ]
!780 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"vdwtab", i32 70, i64 64, i64 64, i64 640, i32 0, metadata !305} ; [ DW_TAG_member ] [vdwtab] [line 70, size 64, align 64, offset 640] [from ]
!781 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"coulvdwtab", i32 71, i64 64, i64 64, i64 704, i32 0, metadata !305} ; [ DW_TAG_member ] [coulvdwtab] [line 71, size 64, align 64, offset 704] [from ]
!782 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"coulvdw14tab", i32 72, i64 64, i64 64, i64 768, i32 0, metadata !305} ; [ DW_TAG_member ] [coulvdw14tab] [line 72, size 64, align 64, offset 768] [from ]
!783 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"rcoulomb_switch", i32 75, i64 32, i64 32, i64 832, i32 0, metadata !225} ; [ DW_TAG_member ] [rcoulomb_switch] [line 75, size 32, align 32, offset 832] [from real]
!784 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"rcoulomb", i32 75, i64 32, i64 32, i64 864, i32 0, metadata !225} ; [ DW_TAG_member ] [rcoulomb] [line 75, size 32, align 32, offset 864] [from real]
!785 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"phi", i32 76, i64 64, i64 64, i64 896, i32 0, metadata !305} ; [ DW_TAG_member ] [phi] [line 76, size 64, align 64, offset 896] [from ]
!786 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"rvdw_switch", i32 79, i64 32, i64 32, i64 960, i32 0, metadata !225} ; [ DW_TAG_member ] [rvdw_switch] [line 79, size 32, align 32, offset 960] [from real]
!787 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"rvdw", i32 79, i64 32, i64 32, i64 992, i32 0, metadata !225} ; [ DW_TAG_member ] [rvdw] [line 79, size 32, align 32, offset 992] [from real]
!788 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"bham_b_max", i32 80, i64 32, i64 32, i64 1024, i32 0, metadata !225} ; [ DW_TAG_member ] [bham_b_max] [line 80, size 32, align 32, offset 1024] [from real]
!789 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"tabscale_exp", i32 81, i64 32, i64 32, i64 1056, i32 0, metadata !225} ; [ DW_TAG_member ] [tabscale_exp] [line 81, size 32, align 32, offset 1056] [from real]
!790 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"efep", i32 84, i64 32, i64 32, i64 1088, i32 0, metadata !141} ; [ DW_TAG_member ] [efep] [line 84, size 32, align 32, offset 1088] [from int]
!791 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"sc_alpha", i32 85, i64 32, i64 32, i64 1120, i32 0, metadata !225} ; [ DW_TAG_member ] [sc_alpha] [line 85, size 32, align 32, offset 1120] [from real]
!792 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"sc_sigma6", i32 86, i64 32, i64 32, i64 1152, i32 0, metadata !225} ; [ DW_TAG_member ] [sc_sigma6] [line 86, size 32, align 32, offset 1152] [from real]
!793 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"bSepDVDL", i32 87, i64 32, i64 32, i64 1184, i32 0, metadata !141} ; [ DW_TAG_member ] [bSepDVDL] [line 87, size 32, align 32, offset 1184] [from int]
!794 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"eeltype", i32 90, i64 32, i64 32, i64 1216, i32 0, metadata !141} ; [ DW_TAG_member ] [eeltype] [line 90, size 32, align 32, offset 1216] [from int]
!795 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"vdwtype", i32 91, i64 32, i64 32, i64 1248, i32 0, metadata !141} ; [ DW_TAG_member ] [vdwtype] [line 91, size 32, align 32, offset 1248] [from int]
!796 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"cg0", i32 92, i64 32, i64 32, i64 1280, i32 0, metadata !141} ; [ DW_TAG_member ] [cg0] [line 92, size 32, align 32, offset 1280] [from int]
!797 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"hcg", i32 92, i64 32, i64 32, i64 1312, i32 0, metadata !141} ; [ DW_TAG_member ] [hcg] [line 92, size 32, align 32, offset 1312] [from int]
!798 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"ndelta", i32 93, i64 32, i64 32, i64 1344, i32 0, metadata !141} ; [ DW_TAG_member ] [ndelta] [line 93, size 32, align 32, offset 1344] [from int]
!799 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"bSolvOpt", i32 94, i64 32, i64 32, i64 1376, i32 0, metadata !141} ; [ DW_TAG_member ] [bSolvOpt] [line 94, size 32, align 32, offset 1376] [from int]
!800 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"nMNOMol", i32 95, i64 32, i64 32, i64 1408, i32 0, metadata !141} ; [ DW_TAG_member ] [nMNOMol] [line 95, size 32, align 32, offset 1408] [from int]
!801 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"nMNOav", i32 96, i64 96, i64 32, i64 1440, i32 0, metadata !311} ; [ DW_TAG_member ] [nMNOav] [line 96, size 96, align 32, offset 1440] [from ]
!802 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"nWatMol", i32 97, i64 32, i64 32, i64 1536, i32 0, metadata !141} ; [ DW_TAG_member ] [nWatMol] [line 97, size 32, align 32, offset 1536] [from int]
!803 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"Dimension", i32 98, i64 32, i64 32, i64 1568, i32 0, metadata !141} ; [ DW_TAG_member ] [Dimension] [line 98, size 32, align 32, offset 1568] [from int]
!804 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"bGrid", i32 99, i64 32, i64 32, i64 1600, i32 0, metadata !141} ; [ DW_TAG_member ] [bGrid] [line 99, size 32, align 32, offset 1600] [from int]
!805 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"bDomDecomp", i32 99, i64 32, i64 32, i64 1632, i32 0, metadata !141} ; [ DW_TAG_member ] [bDomDecomp] [line 99, size 32, align 32, offset 1632] [from int]
!806 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"solvent_type", i32 100, i64 64, i64 64, i64 1664, i32 0, metadata !318} ; [ DW_TAG_member ] [solvent_type] [line 100, size 64, align 64, offset 1664] [from ]
!807 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"mno_index", i32 101, i64 64, i64 64, i64 1728, i32 0, metadata !318} ; [ DW_TAG_member ] [mno_index] [line 101, size 64, align 64, offset 1728] [from ]
!808 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"cg_cm", i32 102, i64 64, i64 64, i64 1792, i32 0, metadata !309} ; [ DW_TAG_member ] [cg_cm] [line 102, size 64, align 64, offset 1792] [from ]
!809 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"shift_vec", i32 103, i64 64, i64 64, i64 1856, i32 0, metadata !309} ; [ DW_TAG_member ] [shift_vec] [line 103, size 64, align 64, offset 1856] [from ]
!810 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"nlist_sr", i32 108, i64 9984, i64 64, i64 1920, i32 0, metadata !811} ; [ DW_TAG_member ] [nlist_sr] [line 108, size 9984, align 64, offset 1920] [from ]
!811 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 9984, i64 64, i32 0, i32 0, metadata !812, metadata !831, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 9984, align 64, offset 0] [from t_nblist]
!812 = metadata !{i32 786454, metadata !759, null, metadata !"t_nblist", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !813} ; [ DW_TAG_typedef ] [t_nblist] [line 60, size 0, align 0, offset 0] [from ]
!813 = metadata !{i32 786451, metadata !814, null, metadata !"", i32 36, i64 768, i64 64, i32 0, i32 0, null, metadata !815, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 768, align 64, offset 0] [from ]
!814 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/nblist.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!815 = metadata !{metadata !816, metadata !817, metadata !818, metadata !819, metadata !820, metadata !821, metadata !822, metadata !823, metadata !824, metadata !825, metadata !826, metadata !827, metadata !828, metadata !829, metadata !830}
!816 = metadata !{i32 786445, metadata !814, metadata !813, metadata !"il_code", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [il_code] [line 37, size 32, align 32, offset 0] [from int]
!817 = metadata !{i32 786445, metadata !814, metadata !813, metadata !"nri", i32 39, i64 32, i64 32, i64 32, i32 0, metadata !141} ; [ DW_TAG_member ] [nri] [line 39, size 32, align 32, offset 32] [from int]
!818 = metadata !{i32 786445, metadata !814, metadata !813, metadata !"maxnri", i32 39, i64 32, i64 32, i64 64, i32 0, metadata !141} ; [ DW_TAG_member ] [maxnri] [line 39, size 32, align 32, offset 64] [from int]
!819 = metadata !{i32 786445, metadata !814, metadata !813, metadata !"nrj", i32 40, i64 32, i64 32, i64 96, i32 0, metadata !141} ; [ DW_TAG_member ] [nrj] [line 40, size 32, align 32, offset 96] [from int]
!820 = metadata !{i32 786445, metadata !814, metadata !813, metadata !"maxnrj", i32 40, i64 32, i64 32, i64 128, i32 0, metadata !141} ; [ DW_TAG_member ] [maxnrj] [line 40, size 32, align 32, offset 128] [from int]
!821 = metadata !{i32 786445, metadata !814, metadata !813, metadata !"maxlen", i32 41, i64 32, i64 32, i64 160, i32 0, metadata !141} ; [ DW_TAG_member ] [maxlen] [line 41, size 32, align 32, offset 160] [from int]
!822 = metadata !{i32 786445, metadata !814, metadata !813, metadata !"solvent", i32 42, i64 32, i64 32, i64 192, i32 0, metadata !141} ; [ DW_TAG_member ] [solvent] [line 42, size 32, align 32, offset 192] [from int]
!823 = metadata !{i32 786445, metadata !814, metadata !813, metadata !"iinr", i32 43, i64 64, i64 64, i64 256, i32 0, metadata !520} ; [ DW_TAG_member ] [iinr] [line 43, size 64, align 64, offset 256] [from ]
!824 = metadata !{i32 786445, metadata !814, metadata !813, metadata !"gid", i32 44, i64 64, i64 64, i64 320, i32 0, metadata !318} ; [ DW_TAG_member ] [gid] [line 44, size 64, align 64, offset 320] [from ]
!825 = metadata !{i32 786445, metadata !814, metadata !813, metadata !"shift", i32 45, i64 64, i64 64, i64 384, i32 0, metadata !318} ; [ DW_TAG_member ] [shift] [line 45, size 64, align 64, offset 384] [from ]
!826 = metadata !{i32 786445, metadata !814, metadata !813, metadata !"jindex", i32 46, i64 64, i64 64, i64 448, i32 0, metadata !318} ; [ DW_TAG_member ] [jindex] [line 46, size 64, align 64, offset 448] [from ]
!827 = metadata !{i32 786445, metadata !814, metadata !813, metadata !"jjnr", i32 47, i64 64, i64 64, i64 512, i32 0, metadata !520} ; [ DW_TAG_member ] [jjnr] [line 47, size 64, align 64, offset 512] [from ]
!828 = metadata !{i32 786445, metadata !814, metadata !813, metadata !"nsatoms", i32 48, i64 64, i64 64, i64 576, i32 0, metadata !318} ; [ DW_TAG_member ] [nsatoms] [line 48, size 64, align 64, offset 576] [from ]
!829 = metadata !{i32 786445, metadata !814, metadata !813, metadata !"pad1", i32 58, i64 32, i64 32, i64 640, i32 0, metadata !141} ; [ DW_TAG_member ] [pad1] [line 58, size 32, align 32, offset 640] [from int]
!830 = metadata !{i32 786445, metadata !814, metadata !813, metadata !"pad2", i32 58, i64 64, i64 64, i64 704, i32 0, metadata !318} ; [ DW_TAG_member ] [pad2] [line 58, size 64, align 64, offset 704] [from ]
!831 = metadata !{metadata !832}
!832 = metadata !{i32 786465, i64 0, i64 13}      ; [ DW_TAG_subrange_type ] [0, 12]
!833 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"nlist_lr", i32 109, i64 9984, i64 64, i64 11904, i32 0, metadata !811} ; [ DW_TAG_member ] [nlist_lr] [line 109, size 9984, align 64, offset 11904] [from ]
!834 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"bTwinRange", i32 120, i64 32, i64 32, i64 21888, i32 0, metadata !141} ; [ DW_TAG_member ] [bTwinRange] [line 120, size 32, align 32, offset 21888] [from int]
!835 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"nlr", i32 121, i64 32, i64 32, i64 21920, i32 0, metadata !141} ; [ DW_TAG_member ] [nlr] [line 121, size 32, align 32, offset 21920] [from int]
!836 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"f_twin", i32 122, i64 64, i64 64, i64 21952, i32 0, metadata !309} ; [ DW_TAG_member ] [f_twin] [line 122, size 64, align 64, offset 21952] [from ]
!837 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"fshift_twin", i32 123, i64 64, i64 64, i64 22016, i32 0, metadata !309} ; [ DW_TAG_member ] [fshift_twin] [line 123, size 64, align 64, offset 22016] [from ]
!838 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"f_pme", i32 126, i64 64, i64 64, i64 22080, i32 0, metadata !309} ; [ DW_TAG_member ] [f_pme] [line 126, size 64, align 64, offset 22080] [from ]
!839 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"bEwald", i32 127, i64 32, i64 32, i64 22144, i32 0, metadata !141} ; [ DW_TAG_member ] [bEwald] [line 127, size 32, align 32, offset 22144] [from int]
!840 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"ewaldcoeff", i32 128, i64 32, i64 32, i64 22176, i32 0, metadata !225} ; [ DW_TAG_member ] [ewaldcoeff] [line 128, size 32, align 32, offset 22176] [from real]
!841 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"fshift", i32 131, i64 64, i64 64, i64 22208, i32 0, metadata !309} ; [ DW_TAG_member ] [fshift] [line 131, size 64, align 64, offset 22208] [from ]
!842 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"nmol", i32 134, i64 32, i64 32, i64 22272, i32 0, metadata !141} ; [ DW_TAG_member ] [nmol] [line 134, size 32, align 32, offset 22272] [from int]
!843 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"mol_nr", i32 135, i64 64, i64 64, i64 22336, i32 0, metadata !520} ; [ DW_TAG_member ] [mol_nr] [line 135, size 64, align 64, offset 22336] [from ]
!844 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"mol_epot", i32 136, i64 64, i64 64, i64 22400, i32 0, metadata !305} ; [ DW_TAG_member ] [mol_epot] [line 136, size 64, align 64, offset 22400] [from ]
!845 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"nstcalc", i32 137, i64 32, i64 32, i64 22464, i32 0, metadata !141} ; [ DW_TAG_member ] [nstcalc] [line 137, size 32, align 32, offset 22464] [from int]
!846 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"ntype", i32 140, i64 32, i64 32, i64 22496, i32 0, metadata !141} ; [ DW_TAG_member ] [ntype] [line 140, size 32, align 32, offset 22496] [from int]
!847 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"bBHAM", i32 141, i64 32, i64 32, i64 22528, i32 0, metadata !141} ; [ DW_TAG_member ] [bBHAM] [line 141, size 32, align 32, offset 22528] [from int]
!848 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"nbfp", i32 142, i64 64, i64 64, i64 22592, i32 0, metadata !305} ; [ DW_TAG_member ] [nbfp] [line 142, size 64, align 64, offset 22592] [from ]
!849 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"eg_excl", i32 145, i64 64, i64 64, i64 22656, i32 0, metadata !318} ; [ DW_TAG_member ] [eg_excl] [line 145, size 64, align 64, offset 22656] [from ]
!850 = metadata !{i32 786445, metadata !759, metadata !758, metadata !"fc_stepsize", i32 148, i64 32, i64 32, i64 22720, i32 0, metadata !225} ; [ DW_TAG_member ] [fc_stepsize] [line 148, size 32, align 32, offset 22720] [from real]
!851 = metadata !{metadata !852, metadata !853, metadata !854, metadata !855, metadata !856, metadata !857, metadata !858, metadata !859, metadata !860, metadata !861, metadata !862, metadata !863, metadata !864, metadata !865, metadata !866, metadata !867, metadata !868, metadata !869, metadata !870, metadata !871, metadata !872, metadata !873, metadata !874, metadata !875, metadata !876, metadata !877, metadata !878, metadata !879, metadata !880, metadata !881, metadata !882, metadata !883, metadata !884, metadata !885, metadata !886, metadata !887, metadata !888, metadata !889, metadata !890, metadata !891, metadata !892, metadata !893, metadata !894, metadata !895, metadata !896, metadata !913, metadata !954, metadata !955, metadata !956, metadata !957, metadata !958, metadata !959, metadata !960, metadata !961, metadata !962, metadata !963, metadata !964, metadata !965, metadata !966, metadata !967, metadata !968, metadata !969, metadata !970, metadata !971, metadata !972, metadata !973, metadata !974, metadata !975, metadata !976, metadata !977, metadata !978, metadata !979, metadata !980}
!852 = metadata !{i32 786689, metadata !128, metadata !"log", metadata !129, i32 16777401, metadata !135, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 185]
!853 = metadata !{i32 786689, metadata !128, metadata !"nfile", metadata !129, i32 33554617, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nfile] [line 185]
!854 = metadata !{i32 786689, metadata !128, metadata !"fnm", metadata !129, i32 50331833, metadata !192, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 185]
!855 = metadata !{i32 786689, metadata !128, metadata !"parm", metadata !129, i32 67109050, metadata !200, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [parm] [line 186]
!856 = metadata !{i32 786689, metadata !128, metadata !"top", metadata !129, i32 83886266, metadata !334, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [top] [line 186]
!857 = metadata !{i32 786689, metadata !128, metadata !"grps", metadata !129, i32 100663483, metadata !562, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grps] [line 187]
!858 = metadata !{i32 786689, metadata !128, metadata !"nsb", metadata !129, i32 117440699, metadata !604, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsb] [line 187]
!859 = metadata !{i32 786689, metadata !128, metadata !"x", metadata !129, i32 134217916, metadata !309, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 188]
!860 = metadata !{i32 786689, metadata !128, metadata !"grad", metadata !129, i32 150995132, metadata !309, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grad] [line 188]
!861 = metadata !{i32 786689, metadata !128, metadata !"buf", metadata !129, i32 167772348, metadata !309, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 188]
!862 = metadata !{i32 786689, metadata !128, metadata !"mdatoms", metadata !129, i32 184549564, metadata !620, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mdatoms] [line 188]
!863 = metadata !{i32 786689, metadata !128, metadata !"ekin", metadata !129, i32 201326781, metadata !649, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ekin] [line 189]
!864 = metadata !{i32 786689, metadata !128, metadata !"ener", metadata !129, i32 218103997, metadata !305, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ener] [line 189]
!865 = metadata !{i32 786689, metadata !128, metadata !"fcd", metadata !129, i32 234881213, metadata !650, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fcd] [line 189]
!866 = metadata !{i32 786689, metadata !128, metadata !"nrnb", metadata !129, i32 251658429, metadata !708, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrnb] [line 189]
!867 = metadata !{i32 786689, metadata !128, metadata !"bVerbose", metadata !129, i32 268435646, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bVerbose] [line 190]
!868 = metadata !{i32 786689, metadata !128, metadata !"bDummies", metadata !129, i32 285212862, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bDummies] [line 190]
!869 = metadata !{i32 786689, metadata !128, metadata !"dummycomm", metadata !129, i32 301990078, metadata !718, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dummycomm] [line 190]
!870 = metadata !{i32 786689, metadata !128, metadata !"cr", metadata !129, i32 318767295, metadata !731, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 191]
!871 = metadata !{i32 786689, metadata !128, metadata !"mcr", metadata !129, i32 335544511, metadata !731, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mcr] [line 191]
!872 = metadata !{i32 786689, metadata !128, metadata !"graph", metadata !129, i32 352321727, metadata !742, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [graph] [line 191]
!873 = metadata !{i32 786689, metadata !128, metadata !"fr", metadata !129, i32 369098944, metadata !756, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 192]
!874 = metadata !{i32 786689, metadata !128, metadata !"box_size", metadata !129, i32 385876160, metadata !305, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box_size] [line 192]
!875 = metadata !{i32 786688, metadata !128, metadata !"gpa", metadata !129, i32 195, metadata !715, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gpa] [line 195]
!876 = metadata !{i32 786688, metadata !128, metadata !"gpb", metadata !129, i32 195, metadata !715, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gpb] [line 195]
!877 = metadata !{i32 786688, metadata !128, metadata !"lambda", metadata !129, i32 196, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lambda] [line 196]
!878 = metadata !{i32 786688, metadata !128, metadata !"fmax", metadata !129, i32 196, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fmax] [line 196]
!879 = metadata !{i32 786688, metadata !128, metadata !"testf", metadata !129, i32 196, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [testf] [line 196]
!880 = metadata !{i32 786688, metadata !128, metadata !"zet", metadata !129, i32 196, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zet] [line 196]
!881 = metadata !{i32 786688, metadata !128, metadata !"w", metadata !129, i32 196, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 196]
!882 = metadata !{i32 786688, metadata !128, metadata !"smin", metadata !129, i32 196, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [smin] [line 196]
!883 = metadata !{i32 786688, metadata !128, metadata !"p", metadata !129, i32 197, metadata !309, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 197]
!884 = metadata !{i32 786688, metadata !128, metadata !"f", metadata !129, i32 197, metadata !309, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 197]
!885 = metadata !{i32 786688, metadata !128, metadata !"xprime", metadata !129, i32 197, metadata !309, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xprime] [line 197]
!886 = metadata !{i32 786688, metadata !128, metadata !"xx", metadata !129, i32 197, metadata !309, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xx] [line 197]
!887 = metadata !{i32 786688, metadata !128, metadata !"ff", metadata !129, i32 197, metadata !309, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ff] [line 197]
!888 = metadata !{i32 786688, metadata !128, metadata !"EpotA", metadata !129, i32 198, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [EpotA] [line 198]
!889 = metadata !{i32 786688, metadata !128, metadata !"EpotB", metadata !129, i32 198, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [EpotB] [line 198]
!890 = metadata !{i32 786688, metadata !128, metadata !"a", metadata !129, i32 198, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 198]
!891 = metadata !{i32 786688, metadata !128, metadata !"b", metadata !129, i32 198, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 198]
!892 = metadata !{i32 786688, metadata !128, metadata !"beta", metadata !129, i32 198, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [beta] [line 198]
!893 = metadata !{i32 786688, metadata !128, metadata !"fnorm", metadata !129, i32 199, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fnorm] [line 199]
!894 = metadata !{i32 786688, metadata !128, metadata !"pnorm", metadata !129, i32 199, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pnorm] [line 199]
!895 = metadata !{i32 786688, metadata !128, metadata !"fnorm_old", metadata !129, i32 199, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fnorm_old] [line 199]
!896 = metadata !{i32 786688, metadata !128, metadata !"vcm", metadata !129, i32 200, metadata !897, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vcm] [line 200]
!897 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !898} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_vcm]
!898 = metadata !{i32 786454, metadata !1, null, metadata !"t_vcm", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !899} ; [ DW_TAG_typedef ] [t_vcm] [line 56, size 0, align 0, offset 0] [from ]
!899 = metadata !{i32 786451, metadata !900, null, metadata !"", i32 44, i64 640, i64 64, i32 0, i32 0, null, metadata !901, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 44, size 640, align 64, offset 0] [from ]
!900 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!901 = metadata !{metadata !902, metadata !903, metadata !904, metadata !905, metadata !906, metadata !907, metadata !908, metadata !909, metadata !910, metadata !911, metadata !912}
!902 = metadata !{i32 786445, metadata !900, metadata !899, metadata !"nr", i32 45, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [nr] [line 45, size 32, align 32, offset 0] [from int]
!903 = metadata !{i32 786445, metadata !900, metadata !899, metadata !"mode", i32 46, i64 32, i64 32, i64 32, i32 0, metadata !141} ; [ DW_TAG_member ] [mode] [line 46, size 32, align 32, offset 32] [from int]
!904 = metadata !{i32 786445, metadata !900, metadata !899, metadata !"group_p", i32 47, i64 64, i64 64, i64 64, i32 0, metadata !309} ; [ DW_TAG_member ] [group_p] [line 47, size 64, align 64, offset 64] [from ]
!905 = metadata !{i32 786445, metadata !900, metadata !899, metadata !"group_v", i32 48, i64 64, i64 64, i64 128, i32 0, metadata !309} ; [ DW_TAG_member ] [group_v] [line 48, size 64, align 64, offset 128] [from ]
!906 = metadata !{i32 786445, metadata !900, metadata !899, metadata !"group_x", i32 49, i64 64, i64 64, i64 192, i32 0, metadata !309} ; [ DW_TAG_member ] [group_x] [line 49, size 64, align 64, offset 192] [from ]
!907 = metadata !{i32 786445, metadata !900, metadata !899, metadata !"group_j", i32 50, i64 64, i64 64, i64 256, i32 0, metadata !309} ; [ DW_TAG_member ] [group_j] [line 50, size 64, align 64, offset 256] [from ]
!908 = metadata !{i32 786445, metadata !900, metadata !899, metadata !"group_w", i32 51, i64 64, i64 64, i64 320, i32 0, metadata !309} ; [ DW_TAG_member ] [group_w] [line 51, size 64, align 64, offset 320] [from ]
!909 = metadata !{i32 786445, metadata !900, metadata !899, metadata !"group_i", i32 52, i64 64, i64 64, i64 384, i32 0, metadata !691} ; [ DW_TAG_member ] [group_i] [line 52, size 64, align 64, offset 384] [from ]
!910 = metadata !{i32 786445, metadata !900, metadata !899, metadata !"group_mass", i32 53, i64 64, i64 64, i64 448, i32 0, metadata !305} ; [ DW_TAG_member ] [group_mass] [line 53, size 64, align 64, offset 448] [from ]
!911 = metadata !{i32 786445, metadata !900, metadata !899, metadata !"group_name", i32 54, i64 64, i64 64, i64 512, i32 0, metadata !340} ; [ DW_TAG_member ] [group_name] [line 54, size 64, align 64, offset 512] [from ]
!912 = metadata !{i32 786445, metadata !900, metadata !899, metadata !"group_id", i32 55, i64 64, i64 64, i64 576, i32 0, metadata !639} ; [ DW_TAG_member ] [group_id] [line 55, size 64, align 64, offset 576] [from ]
!913 = metadata !{i32 786688, metadata !128, metadata !"mdebin", metadata !129, i32 201, metadata !914, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mdebin] [line 201]
!914 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !915} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_mdebin]
!915 = metadata !{i32 786454, metadata !1, null, metadata !"t_mdebin", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !916} ; [ DW_TAG_typedef ] [t_mdebin] [line 51, size 0, align 0, offset 0] [from ]
!916 = metadata !{i32 786451, metadata !917, null, metadata !"", i32 46, i64 704, i64 64, i32 0, i32 0, null, metadata !918, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 46, size 704, align 64, offset 0] [from ]
!917 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/mdebin.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!918 = metadata !{metadata !919, metadata !936, metadata !937, metadata !938, metadata !939, metadata !940, metadata !941, metadata !942, metadata !943, metadata !944, metadata !945, metadata !946, metadata !947, metadata !948, metadata !949, metadata !950, metadata !951, metadata !952, metadata !953}
!919 = metadata !{i32 786445, metadata !917, metadata !916, metadata !"ebin", i32 47, i64 64, i64 64, i64 0, i32 0, metadata !920} ; [ DW_TAG_member ] [ebin] [line 47, size 64, align 64, offset 0] [from ]
!920 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !921} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_ebin]
!921 = metadata !{i32 786454, metadata !917, null, metadata !"t_ebin", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !922} ; [ DW_TAG_typedef ] [t_ebin] [line 48, size 0, align 0, offset 0] [from ]
!922 = metadata !{i32 786451, metadata !72, null, metadata !"", i32 44, i64 192, i64 64, i32 0, i32 0, null, metadata !923, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 44, size 192, align 64, offset 0] [from ]
!923 = metadata !{metadata !924, metadata !925, metadata !926}
!924 = metadata !{i32 786445, metadata !72, metadata !922, metadata !"nener", i32 45, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [nener] [line 45, size 32, align 32, offset 0] [from int]
!925 = metadata !{i32 786445, metadata !72, metadata !922, metadata !"enm", i32 46, i64 64, i64 64, i64 64, i32 0, metadata !340} ; [ DW_TAG_member ] [enm] [line 46, size 64, align 64, offset 64] [from ]
!926 = metadata !{i32 786445, metadata !72, metadata !922, metadata !"e", i32 47, i64 64, i64 64, i64 128, i32 0, metadata !927} ; [ DW_TAG_member ] [e] [line 47, size 64, align 64, offset 128] [from ]
!927 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !928} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_energy]
!928 = metadata !{i32 786454, metadata !72, null, metadata !"t_energy", i32 41, i64 0, i64 0, i64 0, i32 0, metadata !929} ; [ DW_TAG_typedef ] [t_energy] [line 41, size 0, align 0, offset 0] [from ]
!929 = metadata !{i32 786451, metadata !930, null, metadata !"", i32 36, i64 256, i64 64, i32 0, i32 0, null, metadata !931, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 256, align 64, offset 0] [from ]
!930 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/energy.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!931 = metadata !{metadata !932, metadata !933, metadata !934, metadata !935}
!932 = metadata !{i32 786445, metadata !930, metadata !929, metadata !"e", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !225} ; [ DW_TAG_member ] [e] [line 37, size 32, align 32, offset 0] [from real]
!933 = metadata !{i32 786445, metadata !930, metadata !929, metadata !"eav", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !715} ; [ DW_TAG_member ] [eav] [line 38, size 64, align 64, offset 64] [from double]
!934 = metadata !{i32 786445, metadata !930, metadata !929, metadata !"esum", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !715} ; [ DW_TAG_member ] [esum] [line 39, size 64, align 64, offset 128] [from double]
!935 = metadata !{i32 786445, metadata !930, metadata !929, metadata !"e2sum", i32 40, i64 32, i64 32, i64 192, i32 0, metadata !225} ; [ DW_TAG_member ] [e2sum] [line 40, size 32, align 32, offset 192] [from real]
!936 = metadata !{i32 786445, metadata !917, metadata !916, metadata !"ie", i32 48, i64 32, i64 32, i64 64, i32 0, metadata !141} ; [ DW_TAG_member ] [ie] [line 48, size 32, align 32, offset 64] [from int]
!937 = metadata !{i32 786445, metadata !917, metadata !916, metadata !"ib", i32 48, i64 32, i64 32, i64 96, i32 0, metadata !141} ; [ DW_TAG_member ] [ib] [line 48, size 32, align 32, offset 96] [from int]
!938 = metadata !{i32 786445, metadata !917, metadata !916, metadata !"isvir", i32 48, i64 32, i64 32, i64 128, i32 0, metadata !141} ; [ DW_TAG_member ] [isvir] [line 48, size 32, align 32, offset 128] [from int]
!939 = metadata !{i32 786445, metadata !917, metadata !916, metadata !"ifvir", i32 48, i64 32, i64 32, i64 160, i32 0, metadata !141} ; [ DW_TAG_member ] [ifvir] [line 48, size 32, align 32, offset 160] [from int]
!940 = metadata !{i32 786445, metadata !917, metadata !916, metadata !"ipres", i32 48, i64 32, i64 32, i64 192, i32 0, metadata !141} ; [ DW_TAG_member ] [ipres] [line 48, size 32, align 32, offset 192] [from int]
!941 = metadata !{i32 786445, metadata !917, metadata !916, metadata !"ivir", i32 48, i64 32, i64 32, i64 224, i32 0, metadata !141} ; [ DW_TAG_member ] [ivir] [line 48, size 32, align 32, offset 224] [from int]
!942 = metadata !{i32 786445, metadata !917, metadata !916, metadata !"isurft", i32 48, i64 32, i64 32, i64 256, i32 0, metadata !141} ; [ DW_TAG_member ] [isurft] [line 48, size 32, align 32, offset 256] [from int]
!943 = metadata !{i32 786445, metadata !917, metadata !916, metadata !"itc", i32 48, i64 32, i64 32, i64 288, i32 0, metadata !141} ; [ DW_TAG_member ] [itc] [line 48, size 32, align 32, offset 288] [from int]
!944 = metadata !{i32 786445, metadata !917, metadata !916, metadata !"iu", i32 48, i64 32, i64 32, i64 320, i32 0, metadata !141} ; [ DW_TAG_member ] [iu] [line 48, size 32, align 32, offset 320] [from int]
!945 = metadata !{i32 786445, metadata !917, metadata !916, metadata !"imu", i32 48, i64 32, i64 32, i64 352, i32 0, metadata !141} ; [ DW_TAG_member ] [imu] [line 48, size 32, align 32, offset 352] [from int]
!946 = metadata !{i32 786445, metadata !917, metadata !916, metadata !"ivcos", i32 48, i64 32, i64 32, i64 384, i32 0, metadata !141} ; [ DW_TAG_member ] [ivcos] [line 48, size 32, align 32, offset 384] [from int]
!947 = metadata !{i32 786445, metadata !917, metadata !916, metadata !"ivisc", i32 48, i64 32, i64 32, i64 416, i32 0, metadata !141} ; [ DW_TAG_member ] [ivisc] [line 48, size 32, align 32, offset 416] [from int]
!948 = metadata !{i32 786445, metadata !917, metadata !916, metadata !"nE", i32 49, i64 32, i64 32, i64 448, i32 0, metadata !141} ; [ DW_TAG_member ] [nE] [line 49, size 32, align 32, offset 448] [from int]
!949 = metadata !{i32 786445, metadata !917, metadata !916, metadata !"nEg", i32 49, i64 32, i64 32, i64 480, i32 0, metadata !141} ; [ DW_TAG_member ] [nEg] [line 49, size 32, align 32, offset 480] [from int]
!950 = metadata !{i32 786445, metadata !917, metadata !916, metadata !"nEc", i32 49, i64 32, i64 32, i64 512, i32 0, metadata !141} ; [ DW_TAG_member ] [nEc] [line 49, size 32, align 32, offset 512] [from int]
!951 = metadata !{i32 786445, metadata !917, metadata !916, metadata !"nTC", i32 49, i64 32, i64 32, i64 544, i32 0, metadata !141} ; [ DW_TAG_member ] [nTC] [line 49, size 32, align 32, offset 544] [from int]
!952 = metadata !{i32 786445, metadata !917, metadata !916, metadata !"nU", i32 49, i64 32, i64 32, i64 576, i32 0, metadata !141} ; [ DW_TAG_member ] [nU] [line 49, size 32, align 32, offset 576] [from int]
!953 = metadata !{i32 786445, metadata !917, metadata !916, metadata !"igrp", i32 50, i64 64, i64 64, i64 640, i32 0, metadata !318} ; [ DW_TAG_member ] [igrp] [line 50, size 64, align 64, offset 640] [from ]
!954 = metadata !{i32 786688, metadata !128, metadata !"mynrnb", metadata !129, i32 202, metadata !709, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mynrnb] [line 202]
!955 = metadata !{i32 786688, metadata !128, metadata !"bNS", metadata !129, i32 203, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bNS] [line 203]
!956 = metadata !{i32 786688, metadata !128, metadata !"bDone", metadata !129, i32 203, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bDone] [line 203]
!957 = metadata !{i32 786688, metadata !128, metadata !"bLR", metadata !129, i32 203, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bLR] [line 203]
!958 = metadata !{i32 786688, metadata !128, metadata !"bLJLR", metadata !129, i32 203, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bLJLR] [line 203]
!959 = metadata !{i32 786688, metadata !128, metadata !"bBHAM", metadata !129, i32 203, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bBHAM] [line 203]
!960 = metadata !{i32 786688, metadata !128, metadata !"b14", metadata !129, i32 203, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b14] [line 203]
!961 = metadata !{i32 786688, metadata !128, metadata !"bRand", metadata !129, i32 203, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bRand] [line 203]
!962 = metadata !{i32 786688, metadata !128, metadata !"brerun", metadata !129, i32 203, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [brerun] [line 203]
!963 = metadata !{i32 786688, metadata !128, metadata !"mu_tot", metadata !129, i32 204, metadata !310, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mu_tot] [line 204]
!964 = metadata !{i32 786688, metadata !128, metadata !"start_t", metadata !129, i32 205, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [start_t] [line 205]
!965 = metadata !{i32 786688, metadata !128, metadata !"force_vir", metadata !129, i32 206, metadata !244, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [force_vir] [line 206]
!966 = metadata !{i32 786688, metadata !128, metadata !"shake_vir", metadata !129, i32 206, metadata !244, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shake_vir] [line 206]
!967 = metadata !{i32 786688, metadata !128, metadata !"pme_vir", metadata !129, i32 206, metadata !244, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pme_vir] [line 206]
!968 = metadata !{i32 786688, metadata !128, metadata !"number_steps", metadata !129, i32 207, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [number_steps] [line 207]
!969 = metadata !{i32 786688, metadata !128, metadata !"naccept", metadata !129, i32 207, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [naccept] [line 207]
!970 = metadata !{i32 786688, metadata !128, metadata !"nstcg", metadata !129, i32 207, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nstcg] [line 207]
!971 = metadata !{i32 786688, metadata !128, metadata !"fp_ene", metadata !129, i32 208, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp_ene] [line 208]
!972 = metadata !{i32 786688, metadata !128, metadata !"count", metadata !129, i32 208, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 208]
!973 = metadata !{i32 786688, metadata !128, metadata !"i", metadata !129, i32 209, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 209]
!974 = metadata !{i32 786688, metadata !128, metadata !"m", metadata !129, i32 209, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 209]
!975 = metadata !{i32 786688, metadata !128, metadata !"nfmax", metadata !129, i32 209, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfmax] [line 209]
!976 = metadata !{i32 786688, metadata !128, metadata !"start", metadata !129, i32 209, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [start] [line 209]
!977 = metadata !{i32 786688, metadata !128, metadata !"end", metadata !129, i32 209, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [end] [line 209]
!978 = metadata !{i32 786688, metadata !128, metadata !"niti", metadata !129, i32 209, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [niti] [line 209]
!979 = metadata !{i32 786688, metadata !128, metadata !"gf", metadata !129, i32 209, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gf] [line 209]
!980 = metadata !{i32 786688, metadata !128, metadata !"terminate", metadata !129, i32 211, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate] [line 211]
!981 = metadata !{i32 786478, metadata !1, metadata !129, metadata !"do_steep", metadata !"do_steep", metadata !"", i32 529, metadata !130, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (%struct._IO_FILE*, i32, %struct.t_filenm*, %struct.t_parm*, %struct.t_topology*, %struct.t_groups*, %struct.t_nsborder*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_mdatoms*, [3 x float]*, float*, %struct.t_fcdata*, %struct.t_nrnb*, i32, i32, %struct.t_comm_dummies*, %struct.t_commrec*, %struct.t_commrec*, %struct.t_graph*, %struct.t_forcerec*, float*)* @do_steep, null, null, metadata !982, i32 537} ; [ DW_TAG_subprogram ] [line 529] [def] [scope 537] [do_steep]
!982 = metadata !{metadata !983, metadata !984, metadata !985, metadata !986, metadata !987, metadata !988, metadata !989, metadata !990, metadata !991, metadata !992, metadata !993, metadata !994, metadata !995, metadata !996, metadata !997, metadata !998, metadata !999, metadata !1000, metadata !1001, metadata !1002, metadata !1003, metadata !1004, metadata !1005, metadata !1006, metadata !1007, metadata !1008, metadata !1009, metadata !1010, metadata !1014, metadata !1015, metadata !1016, metadata !1017, metadata !1018, metadata !1020, metadata !1021, metadata !1022, metadata !1023, metadata !1024, metadata !1025, metadata !1026, metadata !1027, metadata !1028, metadata !1029, metadata !1030, metadata !1031, metadata !1032, metadata !1033, metadata !1034, metadata !1035, metadata !1036, metadata !1037, metadata !1038, metadata !1039, metadata !1040, metadata !1041, metadata !1042, metadata !1043, metadata !1044, metadata !1045, metadata !1046, metadata !1047, metadata !1048, metadata !1049}
!983 = metadata !{i32 786689, metadata !981, metadata !"log", metadata !129, i32 16777745, metadata !135, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 529]
!984 = metadata !{i32 786689, metadata !981, metadata !"nfile", metadata !129, i32 33554961, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nfile] [line 529]
!985 = metadata !{i32 786689, metadata !981, metadata !"fnm", metadata !129, i32 50332177, metadata !192, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 529]
!986 = metadata !{i32 786689, metadata !981, metadata !"parm", metadata !129, i32 67109394, metadata !200, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [parm] [line 530]
!987 = metadata !{i32 786689, metadata !981, metadata !"top", metadata !129, i32 83886610, metadata !334, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [top] [line 530]
!988 = metadata !{i32 786689, metadata !981, metadata !"grps", metadata !129, i32 100663827, metadata !562, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grps] [line 531]
!989 = metadata !{i32 786689, metadata !981, metadata !"nsb", metadata !129, i32 117441043, metadata !604, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsb] [line 531]
!990 = metadata !{i32 786689, metadata !981, metadata !"x", metadata !129, i32 134218260, metadata !309, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 532]
!991 = metadata !{i32 786689, metadata !981, metadata !"grad", metadata !129, i32 150995476, metadata !309, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grad] [line 532]
!992 = metadata !{i32 786689, metadata !981, metadata !"buf", metadata !129, i32 167772692, metadata !309, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 532]
!993 = metadata !{i32 786689, metadata !981, metadata !"mdatoms", metadata !129, i32 184549908, metadata !620, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mdatoms] [line 532]
!994 = metadata !{i32 786689, metadata !981, metadata !"ekin", metadata !129, i32 201327125, metadata !649, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ekin] [line 533]
!995 = metadata !{i32 786689, metadata !981, metadata !"ener", metadata !129, i32 218104341, metadata !305, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ener] [line 533]
!996 = metadata !{i32 786689, metadata !981, metadata !"fcd", metadata !129, i32 234881557, metadata !650, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fcd] [line 533]
!997 = metadata !{i32 786689, metadata !981, metadata !"nrnb", metadata !129, i32 251658773, metadata !708, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrnb] [line 533]
!998 = metadata !{i32 786689, metadata !981, metadata !"bVerbose", metadata !129, i32 268435990, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bVerbose] [line 534]
!999 = metadata !{i32 786689, metadata !981, metadata !"bDummies", metadata !129, i32 285213206, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bDummies] [line 534]
!1000 = metadata !{i32 786689, metadata !981, metadata !"dummycomm", metadata !129, i32 301990422, metadata !718, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dummycomm] [line 534]
!1001 = metadata !{i32 786689, metadata !981, metadata !"cr", metadata !129, i32 318767639, metadata !731, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 535]
!1002 = metadata !{i32 786689, metadata !981, metadata !"mcr", metadata !129, i32 335544855, metadata !731, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mcr] [line 535]
!1003 = metadata !{i32 786689, metadata !981, metadata !"graph", metadata !129, i32 352322071, metadata !742, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [graph] [line 535]
!1004 = metadata !{i32 786689, metadata !981, metadata !"fr", metadata !129, i32 369099288, metadata !756, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 536]
!1005 = metadata !{i32 786689, metadata !981, metadata !"box_size", metadata !129, i32 385876504, metadata !305, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box_size] [line 536]
!1006 = metadata !{i32 786688, metadata !981, metadata !"stepsize", metadata !129, i32 539, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stepsize] [line 539]
!1007 = metadata !{i32 786688, metadata !981, metadata !"constepsize", metadata !129, i32 539, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [constepsize] [line 539]
!1008 = metadata !{i32 786688, metadata !981, metadata !"lambda", metadata !129, i32 539, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lambda] [line 539]
!1009 = metadata !{i32 786688, metadata !981, metadata !"fmax", metadata !129, i32 539, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fmax] [line 539]
!1010 = metadata !{i32 786688, metadata !981, metadata !"pos", metadata !129, i32 540, metadata !1011, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 540]
!1011 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 64, i32 0, i32 0, metadata !309, metadata !1012, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 64, offset 0] [from ]
!1012 = metadata !{metadata !1013}
!1013 = metadata !{i32 786465, i64 0, i64 2}      ; [ DW_TAG_subrange_type ] [0, 1]
!1014 = metadata !{i32 786688, metadata !981, metadata !"force", metadata !129, i32 540, metadata !1011, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [force] [line 540]
!1015 = metadata !{i32 786688, metadata !981, metadata !"xcf", metadata !129, i32 540, metadata !309, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xcf] [line 540]
!1016 = metadata !{i32 786688, metadata !981, metadata !"xx", metadata !129, i32 541, metadata !309, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xx] [line 541]
!1017 = metadata !{i32 786688, metadata !981, metadata !"ff", metadata !129, i32 541, metadata !309, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ff] [line 541]
!1018 = metadata !{i32 786688, metadata !981, metadata !"Fmax", metadata !129, i32 542, metadata !1019, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Fmax] [line 542]
!1019 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !225, metadata !1012, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from real]
!1020 = metadata !{i32 786688, metadata !981, metadata !"Epot", metadata !129, i32 543, metadata !1019, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Epot] [line 543]
!1021 = metadata !{i32 786688, metadata !981, metadata !"ustep", metadata !129, i32 544, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ustep] [line 544]
!1022 = metadata !{i32 786688, metadata !981, metadata !"dvdlambda", metadata !129, i32 544, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvdlambda] [line 544]
!1023 = metadata !{i32 786688, metadata !981, metadata !"vcm", metadata !129, i32 545, metadata !897, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vcm] [line 545]
!1024 = metadata !{i32 786688, metadata !981, metadata !"fp_ene", metadata !129, i32 546, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp_ene] [line 546]
!1025 = metadata !{i32 786688, metadata !981, metadata !"mdebin", metadata !129, i32 547, metadata !914, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mdebin] [line 547]
!1026 = metadata !{i32 786688, metadata !981, metadata !"mynrnb", metadata !129, i32 548, metadata !709, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mynrnb] [line 548]
!1027 = metadata !{i32 786688, metadata !981, metadata !"bDone", metadata !129, i32 549, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bDone] [line 549]
!1028 = metadata !{i32 786688, metadata !981, metadata !"bAbort", metadata !129, i32 549, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bAbort] [line 549]
!1029 = metadata !{i32 786688, metadata !981, metadata !"bLR", metadata !129, i32 549, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bLR] [line 549]
!1030 = metadata !{i32 786688, metadata !981, metadata !"bLJLR", metadata !129, i32 549, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bLJLR] [line 549]
!1031 = metadata !{i32 786688, metadata !981, metadata !"bBHAM", metadata !129, i32 549, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bBHAM] [line 549]
!1032 = metadata !{i32 786688, metadata !981, metadata !"b14", metadata !129, i32 549, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b14] [line 549]
!1033 = metadata !{i32 786688, metadata !981, metadata !"start_t", metadata !129, i32 550, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [start_t] [line 550]
!1034 = metadata !{i32 786688, metadata !981, metadata !"force_vir", metadata !129, i32 551, metadata !244, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [force_vir] [line 551]
!1035 = metadata !{i32 786688, metadata !981, metadata !"shake_vir", metadata !129, i32 551, metadata !244, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shake_vir] [line 551]
!1036 = metadata !{i32 786688, metadata !981, metadata !"pme_vir", metadata !129, i32 551, metadata !244, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pme_vir] [line 551]
!1037 = metadata !{i32 786688, metadata !981, metadata !"mu_tot", metadata !129, i32 552, metadata !310, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mu_tot] [line 552]
!1038 = metadata !{i32 786688, metadata !981, metadata !"nfmax", metadata !129, i32 553, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfmax] [line 553]
!1039 = metadata !{i32 786688, metadata !981, metadata !"nsteps", metadata !129, i32 553, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nsteps] [line 553]
!1040 = metadata !{i32 786688, metadata !981, metadata !"count", metadata !129, i32 554, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 554]
!1041 = metadata !{i32 786688, metadata !981, metadata !"i", metadata !129, i32 555, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 555]
!1042 = metadata !{i32 786688, metadata !981, metadata !"m", metadata !129, i32 555, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 555]
!1043 = metadata !{i32 786688, metadata !981, metadata !"start", metadata !129, i32 555, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [start] [line 555]
!1044 = metadata !{i32 786688, metadata !981, metadata !"end", metadata !129, i32 555, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [end] [line 555]
!1045 = metadata !{i32 786688, metadata !981, metadata !"gf", metadata !129, i32 555, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gf] [line 555]
!1046 = metadata !{i32 786688, metadata !981, metadata !"Min", metadata !129, i32 556, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Min] [line 556]
!1047 = metadata !{i32 786688, metadata !981, metadata !"steps_accepted", metadata !129, i32 557, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [steps_accepted] [line 557]
!1048 = metadata !{i32 786688, metadata !981, metadata !"bConstrain", metadata !129, i32 558, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bConstrain] [line 558]
!1049 = metadata !{i32 786688, metadata !981, metadata !"terminate", metadata !129, i32 560, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate] [line 560]
!1050 = metadata !{i32 786478, metadata !1, metadata !129, metadata !"do_nm", metadata !"do_nm", metadata !"", i32 816, metadata !1051, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (%struct._IO_FILE*, %struct.t_commrec*, i32, %struct.t_filenm*, i32, i32, i32, %struct.t_parm*, %struct.t_groups*, %struct.t_topology*, float*, %struct.t_fcdata*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_mdatoms*, %struct.t_nsborder*, %struct.t_nrnb*, %struct.t_graph*, %struct.t_edsamyn*, %struct.t_forcerec*, float*)* @do_nm, null, null, metadata !1061, i32 825} ; [ DW_TAG_subprogram ] [line 816] [def] [scope 825] [do_nm]
!1051 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1052, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1052 = metadata !{metadata !132, metadata !135, metadata !731, metadata !141, metadata !192, metadata !141, metadata !141, metadata !141, metadata !200, metadata !562, metadata !334, metadata !305, metadata !650, metadata !309, metadata !309, metadata !309, metadata !309, metadata !309, metadata !309, metadata !620, metadata !604, metadata !708, metadata !742, metadata !1053, metadata !756, metadata !305}
!1053 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1054} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_edsamyn]
!1054 = metadata !{i32 786454, metadata !1, null, metadata !"t_edsamyn", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !1055} ; [ DW_TAG_typedef ] [t_edsamyn] [line 40, size 0, align 0, offset 0] [from ]
!1055 = metadata !{i32 786451, metadata !1056, null, metadata !"", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !1057, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 64, offset 0] [from ]
!1056 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/edsams.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!1057 = metadata !{metadata !1058, metadata !1059, metadata !1060}
!1058 = metadata !{i32 786445, metadata !1056, metadata !1055, metadata !"bEdsam", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [bEdsam] [line 37, size 32, align 32, offset 0] [from int]
!1059 = metadata !{i32 786445, metadata !1056, metadata !1055, metadata !"edinam", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !143} ; [ DW_TAG_member ] [edinam] [line 38, size 64, align 64, offset 64] [from ]
!1060 = metadata !{i32 786445, metadata !1056, metadata !1055, metadata !"edonam", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !143} ; [ DW_TAG_member ] [edonam] [line 39, size 64, align 64, offset 128] [from ]
!1061 = metadata !{metadata !1062, metadata !1063, metadata !1064, metadata !1065, metadata !1066, metadata !1067, metadata !1068, metadata !1069, metadata !1070, metadata !1071, metadata !1072, metadata !1073, metadata !1074, metadata !1075, metadata !1076, metadata !1077, metadata !1078, metadata !1079, metadata !1080, metadata !1081, metadata !1082, metadata !1083, metadata !1084, metadata !1085, metadata !1086, metadata !1087, metadata !1088, metadata !1089, metadata !1090, metadata !1091, metadata !1092, metadata !1093, metadata !1094, metadata !1095, metadata !1096, metadata !1097, metadata !1098, metadata !1099, metadata !1100, metadata !1101, metadata !1102, metadata !1103, metadata !1104, metadata !1105, metadata !1106, metadata !1107, metadata !1108, metadata !1109, metadata !1110, metadata !1111, metadata !1112, metadata !1113, metadata !1114, metadata !1115, metadata !1116, metadata !1117, metadata !1118, metadata !1119, metadata !1120}
!1062 = metadata !{i32 786689, metadata !1050, metadata !"log", metadata !129, i32 16778032, metadata !135, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 816]
!1063 = metadata !{i32 786689, metadata !1050, metadata !"cr", metadata !129, i32 33555248, metadata !731, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 816]
!1064 = metadata !{i32 786689, metadata !1050, metadata !"nfile", metadata !129, i32 50332464, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nfile] [line 816]
!1065 = metadata !{i32 786689, metadata !1050, metadata !"fnm", metadata !129, i32 67109680, metadata !192, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 816]
!1066 = metadata !{i32 786689, metadata !1050, metadata !"bVerbose", metadata !129, i32 83886897, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bVerbose] [line 817]
!1067 = metadata !{i32 786689, metadata !1050, metadata !"bCompact", metadata !129, i32 100664113, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bCompact] [line 817]
!1068 = metadata !{i32 786689, metadata !1050, metadata !"stepout", metadata !129, i32 117441329, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stepout] [line 817]
!1069 = metadata !{i32 786689, metadata !1050, metadata !"parm", metadata !129, i32 134218546, metadata !200, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [parm] [line 818]
!1070 = metadata !{i32 786689, metadata !1050, metadata !"grps", metadata !129, i32 150995762, metadata !562, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grps] [line 818]
!1071 = metadata !{i32 786689, metadata !1050, metadata !"top", metadata !129, i32 167772979, metadata !334, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [top] [line 819]
!1072 = metadata !{i32 786689, metadata !1050, metadata !"ener", metadata !129, i32 184550195, metadata !305, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ener] [line 819]
!1073 = metadata !{i32 786689, metadata !1050, metadata !"fcd", metadata !129, i32 201327411, metadata !650, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fcd] [line 819]
!1074 = metadata !{i32 786689, metadata !1050, metadata !"x", metadata !129, i32 218104628, metadata !309, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 820]
!1075 = metadata !{i32 786689, metadata !1050, metadata !"vold", metadata !129, i32 234881844, metadata !309, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vold] [line 820]
!1076 = metadata !{i32 786689, metadata !1050, metadata !"v", metadata !129, i32 251659060, metadata !309, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 820]
!1077 = metadata !{i32 786689, metadata !1050, metadata !"vt", metadata !129, i32 268436276, metadata !309, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vt] [line 820]
!1078 = metadata !{i32 786689, metadata !1050, metadata !"f", metadata !129, i32 285213492, metadata !309, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 820]
!1079 = metadata !{i32 786689, metadata !1050, metadata !"buf", metadata !129, i32 301990709, metadata !309, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 821]
!1080 = metadata !{i32 786689, metadata !1050, metadata !"mdatoms", metadata !129, i32 318767925, metadata !620, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mdatoms] [line 821]
!1081 = metadata !{i32 786689, metadata !1050, metadata !"nsb", metadata !129, i32 335545142, metadata !604, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsb] [line 822]
!1082 = metadata !{i32 786689, metadata !1050, metadata !"nrnb", metadata !129, i32 352322358, metadata !708, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrnb] [line 822]
!1083 = metadata !{i32 786689, metadata !1050, metadata !"graph", metadata !129, i32 369099575, metadata !742, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [graph] [line 823]
!1084 = metadata !{i32 786689, metadata !1050, metadata !"edyn", metadata !129, i32 385876791, metadata !1053, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [edyn] [line 823]
!1085 = metadata !{i32 786689, metadata !1050, metadata !"fr", metadata !129, i32 402654008, metadata !756, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 824]
!1086 = metadata !{i32 786689, metadata !1050, metadata !"box_size", metadata !129, i32 419431224, metadata !305, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box_size] [line 824]
!1087 = metadata !{i32 786688, metadata !1050, metadata !"mdebin", metadata !129, i32 826, metadata !914, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mdebin] [line 826]
!1088 = metadata !{i32 786688, metadata !1050, metadata !"fp_ene", metadata !129, i32 827, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp_ene] [line 827]
!1089 = metadata !{i32 786688, metadata !1050, metadata !"step", metadata !129, i32 827, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [step] [line 827]
!1090 = metadata !{i32 786688, metadata !1050, metadata !"nre", metadata !129, i32 827, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nre] [line 827]
!1091 = metadata !{i32 786688, metadata !1050, metadata !"start_t", metadata !129, i32 828, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [start_t] [line 828]
!1092 = metadata !{i32 786688, metadata !1050, metadata !"t", metadata !129, i32 829, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 829]
!1093 = metadata !{i32 786688, metadata !1050, metadata !"lambda", metadata !129, i32 829, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lambda] [line 829]
!1094 = metadata !{i32 786688, metadata !1050, metadata !"t0", metadata !129, i32 829, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t0] [line 829]
!1095 = metadata !{i32 786688, metadata !1050, metadata !"lam0", metadata !129, i32 829, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lam0] [line 829]
!1096 = metadata !{i32 786688, metadata !1050, metadata !"bNS", metadata !129, i32 830, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bNS] [line 830]
!1097 = metadata !{i32 786688, metadata !1050, metadata !"bStopCM", metadata !129, i32 830, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bStopCM] [line 830]
!1098 = metadata !{i32 786688, metadata !1050, metadata !"bTYZ", metadata !129, i32 830, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bTYZ] [line 830]
!1099 = metadata !{i32 786688, metadata !1050, metadata !"bLR", metadata !129, i32 830, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bLR] [line 830]
!1100 = metadata !{i32 786688, metadata !1050, metadata !"bLJLR", metadata !129, i32 830, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bLJLR] [line 830]
!1101 = metadata !{i32 786688, metadata !1050, metadata !"bBHAM", metadata !129, i32 830, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bBHAM] [line 830]
!1102 = metadata !{i32 786688, metadata !1050, metadata !"b14", metadata !129, i32 830, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b14] [line 830]
!1103 = metadata !{i32 786688, metadata !1050, metadata !"bBox", metadata !129, i32 830, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bBox] [line 830]
!1104 = metadata !{i32 786688, metadata !1050, metadata !"force_vir", metadata !129, i32 831, metadata !244, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [force_vir] [line 831]
!1105 = metadata !{i32 786688, metadata !1050, metadata !"shake_vir", metadata !129, i32 831, metadata !244, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shake_vir] [line 831]
!1106 = metadata !{i32 786688, metadata !1050, metadata !"pme_vir", metadata !129, i32 831, metadata !244, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pme_vir] [line 831]
!1107 = metadata !{i32 786688, metadata !1050, metadata !"mynrnb", metadata !129, i32 832, metadata !709, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mynrnb] [line 832]
!1108 = metadata !{i32 786688, metadata !1050, metadata !"i", metadata !129, i32 833, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 833]
!1109 = metadata !{i32 786688, metadata !1050, metadata !"m", metadata !129, i32 833, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 833]
!1110 = metadata !{i32 786688, metadata !1050, metadata !"nfmax", metadata !129, i32 833, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfmax] [line 833]
!1111 = metadata !{i32 786688, metadata !1050, metadata !"mu_tot", metadata !129, i32 834, metadata !310, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mu_tot] [line 834]
!1112 = metadata !{i32 786688, metadata !1050, metadata !"xx", metadata !129, i32 835, metadata !309, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xx] [line 835]
!1113 = metadata !{i32 786688, metadata !1050, metadata !"vv", metadata !129, i32 835, metadata !309, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vv] [line 835]
!1114 = metadata !{i32 786688, metadata !1050, metadata !"ff", metadata !129, i32 835, metadata !309, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ff] [line 835]
!1115 = metadata !{i32 786688, metadata !1050, metadata !"idum", metadata !129, i32 838, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idum] [line 838]
!1116 = metadata !{i32 786688, metadata !1050, metadata !"jdum", metadata !129, i32 838, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jdum] [line 838]
!1117 = metadata !{i32 786688, metadata !1050, metadata !"kdum", metadata !129, i32 838, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kdum] [line 838]
!1118 = metadata !{i32 786688, metadata !1050, metadata !"der_range", metadata !129, i32 839, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [der_range] [line 839]
!1119 = metadata !{i32 786688, metadata !1050, metadata !"fmax", metadata !129, i32 839, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fmax] [line 839]
!1120 = metadata !{i32 786688, metadata !1050, metadata !"dfdx", metadata !129, i32 840, metadata !309, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfdx] [line 840]
!1121 = metadata !{i32 786478, metadata !1, metadata !129, metadata !"warn_step", metadata !"warn_step", metadata !"", i32 70, metadata !1122, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, float, float, i32)* @warn_step, null, null, metadata !1124, i32 71} ; [ DW_TAG_subprogram ] [line 70] [local] [def] [scope 71] [warn_step]
!1122 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1123, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1123 = metadata !{null, metadata !135, metadata !225, metadata !225, metadata !141}
!1124 = metadata !{metadata !1125, metadata !1126, metadata !1127, metadata !1128}
!1125 = metadata !{i32 786689, metadata !1121, metadata !"fp", metadata !129, i32 16777286, metadata !135, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 70]
!1126 = metadata !{i32 786689, metadata !1121, metadata !"ustep", metadata !129, i32 33554502, metadata !225, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ustep] [line 70]
!1127 = metadata !{i32 786689, metadata !1121, metadata !"ftol", metadata !129, i32 50331718, metadata !225, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ftol] [line 70]
!1128 = metadata !{i32 786689, metadata !1121, metadata !"bConstrain", metadata !129, i32 67108934, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bConstrain] [line 70]
!1129 = metadata !{i32 786478, metadata !1, metadata !129, metadata !"print_converged", metadata !"print_converged", metadata !"", i32 81, metadata !1130, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*, float, i32, i32, i32, float, float)* @print_converged, null, null, metadata !1132, i32 83} ; [ DW_TAG_subprogram ] [line 81] [local] [def] [scope 83] [print_converged]
!1130 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1131, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1131 = metadata !{null, metadata !135, metadata !143, metadata !225, metadata !141, metadata !141, metadata !141, metadata !225, metadata !225}
!1132 = metadata !{metadata !1133, metadata !1134, metadata !1135, metadata !1136, metadata !1137, metadata !1138, metadata !1139, metadata !1140}
!1133 = metadata !{i32 786689, metadata !1129, metadata !"fp", metadata !129, i32 16777297, metadata !135, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 81]
!1134 = metadata !{i32 786689, metadata !1129, metadata !"alg", metadata !129, i32 33554513, metadata !143, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alg] [line 81]
!1135 = metadata !{i32 786689, metadata !1129, metadata !"ftol", metadata !129, i32 50331729, metadata !225, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ftol] [line 81]
!1136 = metadata !{i32 786689, metadata !1129, metadata !"count", metadata !129, i32 67108945, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 81]
!1137 = metadata !{i32 786689, metadata !1129, metadata !"bDone", metadata !129, i32 83886161, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bDone] [line 81]
!1138 = metadata !{i32 786689, metadata !1129, metadata !"nsteps", metadata !129, i32 100663378, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsteps] [line 82]
!1139 = metadata !{i32 786689, metadata !1129, metadata !"epot", metadata !129, i32 117440594, metadata !225, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [epot] [line 82]
!1140 = metadata !{i32 786689, metadata !1129, metadata !"fmax", metadata !129, i32 134217810, metadata !225, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmax] [line 82]
!1141 = metadata !{i32 786478, metadata !1, metadata !129, metadata !"f_max", metadata !"f_max", metadata !"", i32 92, metadata !1142, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i32, i32, i32, %struct.t_grpopts*, %struct.t_mdatoms*, i32, i32, [3 x float]*, i32*)* @f_max, null, null, metadata !1145, i32 95} ; [ DW_TAG_subprogram ] [line 92] [local] [def] [scope 95] [f_max]
!1142 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1143, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1143 = metadata !{metadata !225, metadata !141, metadata !141, metadata !141, metadata !1144, metadata !620, metadata !141, metadata !141, metadata !309, metadata !318}
!1144 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !297} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_grpopts]
!1145 = metadata !{metadata !1146, metadata !1147, metadata !1148, metadata !1149, metadata !1150, metadata !1151, metadata !1152, metadata !1153, metadata !1154, metadata !1155, metadata !1156, metadata !1157, metadata !1158, metadata !1159, metadata !1160, metadata !1161}
!1146 = metadata !{i32 786689, metadata !1141, metadata !"left", metadata !129, i32 16777308, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [left] [line 92]
!1147 = metadata !{i32 786689, metadata !1141, metadata !"right", metadata !129, i32 33554524, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [right] [line 92]
!1148 = metadata !{i32 786689, metadata !1141, metadata !"nnodes", metadata !129, i32 50331740, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nnodes] [line 92]
!1149 = metadata !{i32 786689, metadata !1141, metadata !"opts", metadata !129, i32 67108957, metadata !1144, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [opts] [line 93]
!1150 = metadata !{i32 786689, metadata !1141, metadata !"mdatoms", metadata !129, i32 83886173, metadata !620, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mdatoms] [line 93]
!1151 = metadata !{i32 786689, metadata !1141, metadata !"start", metadata !129, i32 100663390, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 94]
!1152 = metadata !{i32 786689, metadata !1141, metadata !"end", metadata !129, i32 117440606, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 94]
!1153 = metadata !{i32 786689, metadata !1141, metadata !"grad", metadata !129, i32 134217822, metadata !309, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grad] [line 94]
!1154 = metadata !{i32 786689, metadata !1141, metadata !"nfmax", metadata !129, i32 150995038, metadata !318, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nfmax] [line 94]
!1155 = metadata !{i32 786688, metadata !1141, metadata !"fmax2", metadata !129, i32 96, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fmax2] [line 96]
!1156 = metadata !{i32 786688, metadata !1141, metadata !"fmax2_0", metadata !129, i32 96, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fmax2_0] [line 96]
!1157 = metadata !{i32 786688, metadata !1141, metadata !"fam", metadata !129, i32 96, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fam] [line 96]
!1158 = metadata !{i32 786688, metadata !1141, metadata !"nfm", metadata !129, i32 96, metadata !225, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfm] [line 96]
!1159 = metadata !{i32 786688, metadata !1141, metadata !"i", metadata !129, i32 97, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 97]
!1160 = metadata !{i32 786688, metadata !1141, metadata !"m", metadata !129, i32 97, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 97]
!1161 = metadata !{i32 786688, metadata !1141, metadata !"gf", metadata !129, i32 97, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gf] [line 97]
!1162 = metadata !{i32 786478, metadata !1163, metadata !1164, metadata !"sqr", metadata !"sqr", metadata !"", i32 197, metadata !1165, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1167, i32 198} ; [ DW_TAG_subprogram ] [line 197] [local] [def] [scope 198] [sqr]
!1163 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!1164 = metadata !{i32 786473, metadata !1163}    ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!1165 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1166, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1166 = metadata !{metadata !225, metadata !225}
!1167 = metadata !{metadata !1168}
!1168 = metadata !{i32 786689, metadata !1162, metadata !"x", metadata !1164, i32 16777413, metadata !225, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 197]
!1169 = metadata !{i32 786478, metadata !1163, metadata !1164, metadata !"copy_rvec", metadata !"copy_rvec", metadata !"", i32 270, metadata !1170, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1174, i32 271} ; [ DW_TAG_subprogram ] [line 270] [local] [def] [scope 271] [copy_rvec]
!1170 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1171, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1171 = metadata !{null, metadata !1172, metadata !305}
!1172 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1173} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1173 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !225} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from real]
!1174 = metadata !{metadata !1175, metadata !1176}
!1175 = metadata !{i32 786689, metadata !1169, metadata !"a", metadata !1164, i32 16777486, metadata !1172, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1176 = metadata !{i32 786689, metadata !1169, metadata !"b", metadata !1164, i32 33554702, metadata !305, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1177 = metadata !{i32 786478, metadata !1, metadata !129, metadata !"f_norm", metadata !"f_norm", metadata !"", i32 134, metadata !1178, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct.t_commrec*, %struct.t_grpopts*, %struct.t_mdatoms*, i32, i32, [3 x float]*)* @f_norm, null, null, metadata !1180, i32 137} ; [ DW_TAG_subprogram ] [line 134] [local] [def] [scope 137] [f_norm]
!1178 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1179, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1179 = metadata !{metadata !225, metadata !731, metadata !1144, metadata !620, metadata !141, metadata !141, metadata !309}
!1180 = metadata !{metadata !1181, metadata !1182, metadata !1183, metadata !1184, metadata !1185, metadata !1186, metadata !1187, metadata !1189, metadata !1190, metadata !1191}
!1181 = metadata !{i32 786689, metadata !1177, metadata !"cr", metadata !129, i32 16777350, metadata !731, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 134]
!1182 = metadata !{i32 786689, metadata !1177, metadata !"opts", metadata !129, i32 33554567, metadata !1144, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [opts] [line 135]
!1183 = metadata !{i32 786689, metadata !1177, metadata !"mdatoms", metadata !129, i32 50331783, metadata !620, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mdatoms] [line 135]
!1184 = metadata !{i32 786689, metadata !1177, metadata !"start", metadata !129, i32 67109000, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 136]
!1185 = metadata !{i32 786689, metadata !1177, metadata !"end", metadata !129, i32 83886216, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 136]
!1186 = metadata !{i32 786689, metadata !1177, metadata !"grad", metadata !129, i32 100663432, metadata !309, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grad] [line 136]
!1187 = metadata !{i32 786688, metadata !1188, metadata !"fnorm2", metadata !129, i32 138, metadata !715, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fnorm2] [line 138]
!1188 = metadata !{i32 786443, metadata !1, metadata !1177} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1189 = metadata !{i32 786688, metadata !1188, metadata !"i", metadata !129, i32 139, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 139]
!1190 = metadata !{i32 786688, metadata !1188, metadata !"m", metadata !129, i32 139, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 139]
!1191 = metadata !{i32 786688, metadata !1188, metadata !"gf", metadata !129, i32 139, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gf] [line 139]
!1192 = metadata !{i32 786478, metadata !1, metadata !129, metadata !"sp_header", metadata !"sp_header", metadata !"", i32 63, metadata !1193, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*, float, i32)* @sp_header, null, null, metadata !1195, i32 64} ; [ DW_TAG_subprogram ] [line 63] [local] [def] [scope 64] [sp_header]
!1193 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1194, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1194 = metadata !{null, metadata !135, metadata !143, metadata !225, metadata !141}
!1195 = metadata !{metadata !1196, metadata !1197, metadata !1198, metadata !1199}
!1196 = metadata !{i32 786689, metadata !1192, metadata !"out", metadata !129, i32 16777279, metadata !135, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 63]
!1197 = metadata !{i32 786689, metadata !1192, metadata !"minimizer", metadata !129, i32 33554495, metadata !143, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [minimizer] [line 63]
!1198 = metadata !{i32 786689, metadata !1192, metadata !"ftol", metadata !129, i32 50331711, metadata !225, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ftol] [line 63]
!1199 = metadata !{i32 786689, metadata !1192, metadata !"nsteps", metadata !129, i32 67108927, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsteps] [line 63]
!1200 = metadata !{i32 786478, metadata !1163, metadata !1164, metadata !"clear_mat", metadata !"clear_mat", metadata !"", i32 334, metadata !1201, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1203, i32 335} ; [ DW_TAG_subprogram ] [line 334] [local] [def] [scope 335] [clear_mat]
!1201 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1202, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1202 = metadata !{null, metadata !649}
!1203 = metadata !{metadata !1204, metadata !1205}
!1204 = metadata !{i32 786689, metadata !1200, metadata !"a", metadata !1164, i32 16777550, metadata !649, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 334]
!1205 = metadata !{i32 786688, metadata !1206, metadata !"nul", metadata !1164, i32 336, metadata !1173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!1206 = metadata !{i32 786443, metadata !1163, metadata !1200} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!1207 = metadata !{i32 786478, metadata !1, metadata !129, metadata !"init_em", metadata !"init_em", metadata !"", i32 157, metadata !1208, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*, %struct.t_parm*, float*, %struct.t_nrnb*, float*, float*, %struct.t_forcerec*, %struct.t_mdatoms*, %struct.t_topology*, %struct.t_nsborder*, %struct.t_commrec*, %struct.t_vcm**, i32*, i32*)* @init_em, null, null, metadata !1211, i32 161} ; [ DW_TAG_subprogram ] [line 157] [local] [def] [scope 161] [init_em]
!1208 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1209, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1209 = metadata !{null, metadata !135, metadata !143, metadata !200, metadata !305, metadata !708, metadata !305, metadata !305, metadata !756, metadata !620, metadata !334, metadata !604, metadata !731, metadata !1210, metadata !318, metadata !318}
!1210 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !897} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1211 = metadata !{metadata !1212, metadata !1213, metadata !1214, metadata !1215, metadata !1216, metadata !1217, metadata !1218, metadata !1219, metadata !1220, metadata !1221, metadata !1222, metadata !1223, metadata !1224, metadata !1225, metadata !1226}
!1212 = metadata !{i32 786689, metadata !1207, metadata !"log", metadata !129, i32 16777373, metadata !135, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 157]
!1213 = metadata !{i32 786689, metadata !1207, metadata !"title", metadata !129, i32 33554589, metadata !143, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 157]
!1214 = metadata !{i32 786689, metadata !1207, metadata !"parm", metadata !129, i32 50331806, metadata !200, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [parm] [line 158]
!1215 = metadata !{i32 786689, metadata !1207, metadata !"lambda", metadata !129, i32 67109022, metadata !305, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 158]
!1216 = metadata !{i32 786689, metadata !1207, metadata !"mynrnb", metadata !129, i32 83886238, metadata !708, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mynrnb] [line 158]
!1217 = metadata !{i32 786689, metadata !1207, metadata !"mu_tot", metadata !129, i32 100663454, metadata !305, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mu_tot] [line 158]
!1218 = metadata !{i32 786689, metadata !1207, metadata !"box_size", metadata !129, i32 117440670, metadata !305, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box_size] [line 158]
!1219 = metadata !{i32 786689, metadata !1207, metadata !"fr", metadata !129, i32 134217887, metadata !756, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 159]
!1220 = metadata !{i32 786689, metadata !1207, metadata !"mdatoms", metadata !129, i32 150995103, metadata !620, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mdatoms] [line 159]
!1221 = metadata !{i32 786689, metadata !1207, metadata !"top", metadata !129, i32 167772319, metadata !334, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [top] [line 159]
!1222 = metadata !{i32 786689, metadata !1207, metadata !"nsb", metadata !129, i32 184549535, metadata !604, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsb] [line 159]
!1223 = metadata !{i32 786689, metadata !1207, metadata !"cr", metadata !129, i32 201326752, metadata !731, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 160]
!1224 = metadata !{i32 786689, metadata !1207, metadata !"vcm", metadata !129, i32 218103968, metadata !1210, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vcm] [line 160]
!1225 = metadata !{i32 786689, metadata !1207, metadata !"start", metadata !129, i32 234881184, metadata !318, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 160]
!1226 = metadata !{i32 786689, metadata !1207, metadata !"end", metadata !129, i32 251658400, metadata !318, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 160]
!1227 = metadata !{i32 786478, metadata !1163, metadata !1164, metadata !"clear_rvec", metadata !"clear_rvec", metadata !"", i32 316, metadata !1228, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1230, i32 317} ; [ DW_TAG_subprogram ] [line 316] [local] [def] [scope 317] [clear_rvec]
!1228 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1229, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1229 = metadata !{null, metadata !305}
!1230 = metadata !{metadata !1231}
!1231 = metadata !{i32 786689, metadata !1227, metadata !"a", metadata !1164, i32 16777532, metadata !305, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 316]
!1232 = metadata !{metadata !1233, metadata !1234, metadata !1235, metadata !1235, metadata !1235}
!1233 = metadata !{i32 786484, i32 0, metadata !128, metadata !"CG", metadata !"CG", metadata !"", metadata !129, i32 194, metadata !143, i32 1, i32 1, null, null}
!1234 = metadata !{i32 786484, i32 0, metadata !981, metadata !"SD", metadata !"SD", metadata !"", metadata !129, i32 538, metadata !143, i32 1, i32 1, null, null}
!1235 = metadata !{i32 786484, i32 0, metadata !1164, metadata !"nul", metadata !"nul", metadata !"nul", metadata !1164, i32 336, metadata !1173, i32 1, i32 1, float 0.000000e+00, null} ; [ DW_TAG_variable ] [nul] [line 336] [local] [def]
!1236 = metadata !{i32 185, i32 0, metadata !128, null}
!1237 = metadata !{i32 186, i32 0, metadata !128, null}
!1238 = metadata !{i32 187, i32 0, metadata !128, null}
!1239 = metadata !{i32 188, i32 0, metadata !128, null}
!1240 = metadata !{i32 189, i32 0, metadata !128, null}
!1241 = metadata !{i32 190, i32 0, metadata !128, null}
!1242 = metadata !{i32 191, i32 0, metadata !128, null}
!1243 = metadata !{i32 192, i32 0, metadata !128, null}
!1244 = metadata !{i32 195, i32 0, metadata !128, null}
!1245 = metadata !{i32 196, i32 0, metadata !128, null}
!1246 = metadata !{float 0.000000e+00}
!1247 = metadata !{i32 198, i32 0, metadata !128, null}
!1248 = metadata !{i32 200, i32 0, metadata !128, null}
!1249 = metadata !{i32 202, i32 0, metadata !128, null}
!1250 = metadata !{i32 1}
!1251 = metadata !{i32 203, i32 0, metadata !128, null}
!1252 = metadata !{i32 204, i32 0, metadata !128, null}
!1253 = metadata !{i32 206, i32 0, metadata !128, null}
!1254 = metadata !{i32 207, i32 0, metadata !128, null}
!1255 = metadata !{metadata !"int", metadata !1256}
!1256 = metadata !{metadata !"omnipotent char", metadata !1257}
!1257 = metadata !{metadata !"Simple C/C++ TBAA"}
!1258 = metadata !{i32 208, i32 0, metadata !128, null}
!1259 = metadata !{i32 209, i32 0, metadata !128, null}
!1260 = metadata !{i32 211, i32 0, metadata !128, null}
!1261 = metadata !{metadata !"float", metadata !1256}
!1262 = metadata !{i32 213, i32 0, metadata !128, null}
!1263 = metadata !{i32 217, i32 0, metadata !128, null}
!1264 = metadata !{i32 220, i32 0, metadata !128, null}
!1265 = metadata !{i32 221, i32 0, metadata !128, null}
!1266 = metadata !{i32 222, i32 0, metadata !128, null}
!1267 = metadata !{i32 225, i32 0, metadata !128, null}
!1268 = metadata !{i32 228, i32 0, metadata !128, null}
!1269 = metadata !{i32 229, i32 0, metadata !128, null}
!1270 = metadata !{i32 234, i32 0, metadata !128, null}
!1271 = metadata !{i32 236, i32 0, metadata !128, null}
!1272 = metadata !{i32 240, i32 0, metadata !128, null}
!1273 = metadata !{i32 786689, metadata !1200, metadata !"a", metadata !1164, i32 16777550, metadata !649, i32 0, metadata !1272} ; [ DW_TAG_arg_variable ] [a] [line 334]
!1274 = metadata !{i32 334, i32 0, metadata !1200, metadata !1272}
!1275 = metadata !{i32 786688, metadata !1206, metadata !"nul", metadata !1164, i32 336, metadata !1173, i32 0, metadata !1272} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!1276 = metadata !{i32 336, i32 0, metadata !1206, metadata !1272}
!1277 = metadata !{i32 338, i32 0, metadata !1206, metadata !1272}
!1278 = metadata !{i32 241, i32 0, metadata !128, null}
!1279 = metadata !{i32 786689, metadata !1200, metadata !"a", metadata !1164, i32 16777550, metadata !649, i32 0, metadata !1278} ; [ DW_TAG_arg_variable ] [a] [line 334]
!1280 = metadata !{i32 334, i32 0, metadata !1200, metadata !1278}
!1281 = metadata !{i32 786688, metadata !1206, metadata !"nul", metadata !1164, i32 336, metadata !1173, i32 0, metadata !1278} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!1282 = metadata !{i32 336, i32 0, metadata !1206, metadata !1278}
!1283 = metadata !{i32 338, i32 0, metadata !1206, metadata !1278}
!1284 = metadata !{i32 243, i32 0, metadata !128, null}
!1285 = metadata !{i32 245, i32 0, metadata !128, null}
!1286 = metadata !{i32 248, i32 0, metadata !128, null}
!1287 = metadata !{i32 250, i32 0, metadata !128, null}
!1288 = metadata !{i32 251, i32 0, metadata !128, null}
!1289 = metadata !{metadata !"any pointer", metadata !1256}
!1290 = metadata !{i32 252, i32 0, metadata !128, null}
!1291 = metadata !{i32 254, i32 0, metadata !128, null}
!1292 = metadata !{i32 255, i32 0, metadata !128, null}
!1293 = metadata !{i32 262, i32 0, metadata !128, null}
!1294 = metadata !{i32 265, i32 0, metadata !128, null}
!1295 = metadata !{i32 268, i32 0, metadata !128, null}
!1296 = metadata !{i32 269, i32 0, metadata !128, null}
!1297 = metadata !{i32 272, i32 0, metadata !128, null}
!1298 = metadata !{i32 273, i32 0, metadata !128, null}
!1299 = metadata !{i32 786689, metadata !1200, metadata !"a", metadata !1164, i32 16777550, metadata !649, i32 0, metadata !1300} ; [ DW_TAG_arg_variable ] [a] [line 334]
!1300 = metadata !{i32 276, i32 0, metadata !128, null}
!1301 = metadata !{i32 334, i32 0, metadata !1200, metadata !1300}
!1302 = metadata !{i32 786688, metadata !1206, metadata !"nul", metadata !1164, i32 336, metadata !1173, i32 0, metadata !1300} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!1303 = metadata !{i32 336, i32 0, metadata !1206, metadata !1300}
!1304 = metadata !{i32 338, i32 0, metadata !1206, metadata !1300}
!1305 = metadata !{i32 277, i32 0, metadata !128, null}
!1306 = metadata !{i32 280, i32 0, metadata !128, null}
!1307 = metadata !{i32 281, i32 0, metadata !128, null}
!1308 = metadata !{i32 283, i32 0, metadata !128, null}
!1309 = metadata !{i32 285, i32 0, metadata !128, null}
!1310 = metadata !{i32 287, i32 0, metadata !1311, null}
!1311 = metadata !{i32 786443, metadata !1, metadata !128, i32 285, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1312 = metadata !{i32 292, i32 0, metadata !1311, null}
!1313 = metadata !{i32 293, i32 0, metadata !1311, null}
!1314 = metadata !{i32 295, i32 0, metadata !1311, null}
!1315 = metadata !{i32 296, i32 0, metadata !128, null}
!1316 = metadata !{i32 299, i32 0, metadata !128, null}
!1317 = metadata !{i32 304, i32 0, metadata !128, null}
!1318 = metadata !{i32 305, i32 0, metadata !128, null}
!1319 = metadata !{i32 308, i32 0, metadata !128, null}
!1320 = metadata !{i32 309, i32 0, metadata !1321, null}
!1321 = metadata !{i32 786443, metadata !1, metadata !128, i32 308, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1322 = metadata !{i32 310, i32 0, metadata !1321, null}
!1323 = metadata !{i32 311, i32 0, metadata !1321, null}
!1324 = metadata !{i32 317, i32 0, metadata !1325, null}
!1325 = metadata !{i32 786443, metadata !1, metadata !128, i32 317, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1326 = metadata !{i32 322, i32 0, metadata !1327, null}
!1327 = metadata !{i32 786443, metadata !1, metadata !1328, i32 322, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1328 = metadata !{i32 786443, metadata !1, metadata !1325, i32 318, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1329 = metadata !{i32 332, i32 0, metadata !1328, null}
!1330 = metadata !{i32 338, i32 0, metadata !1328, null}
!1331 = metadata !{i32 344, i32 0, metadata !1332, null}
!1332 = metadata !{i32 786443, metadata !1, metadata !1333, i32 344, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1333 = metadata !{i32 786443, metadata !1, metadata !1328, i32 343, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1334 = metadata !{i32 349, i32 0, metadata !1333, null}
!1335 = metadata !{i32 352, i32 0, metadata !1333, null}
!1336 = metadata !{i32 360, i32 0, metadata !1333, null}
!1337 = metadata !{i32 376, i32 0, metadata !1338, null}
!1338 = metadata !{i32 786443, metadata !1, metadata !1333, i32 376, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1339 = metadata !{i32 392, i32 0, metadata !1333, null}
!1340 = metadata !{i32 426, i32 0, metadata !1341, null}
!1341 = metadata !{i32 786443, metadata !1, metadata !1328, i32 426, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1342 = metadata !{i32 449, i32 0, metadata !1328, null}
!1343 = metadata !{i32 457, i32 0, metadata !1328, null}
!1344 = metadata !{i32 464, i32 0, metadata !1328, null}
!1345 = metadata !{i32 470, i32 0, metadata !1346, null}
!1346 = metadata !{i32 786443, metadata !1, metadata !1328, i32 470, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1347 = metadata !{i32 475, i32 0, metadata !1328, null}
!1348 = metadata !{i32 483, i32 0, metadata !1349, null}
!1349 = metadata !{i32 786443, metadata !1, metadata !1328, i32 479, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1350 = metadata !{i32 488, i32 0, metadata !1349, null}
!1351 = metadata !{i32 323, i32 0, metadata !1352, null}
!1352 = metadata !{i32 786443, metadata !1, metadata !1327, i32 322, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1353 = metadata !{i32 325, i32 0, metadata !1354, null}
!1354 = metadata !{i32 786443, metadata !1, metadata !1352, i32 324, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1355 = metadata !{double 0.000000e+00}
!1356 = metadata !{i32 321, i32 0, metadata !1328, null}
!1357 = metadata !{metadata !"double", metadata !1256}
!1358 = metadata !{metadata !"short", metadata !1256}
!1359 = metadata !{i32 324, i32 0, metadata !1354, null}
!1360 = metadata !{i32 326, i32 0, metadata !1361, null}
!1361 = metadata !{i32 786443, metadata !1, metadata !1354, i32 325, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1362 = metadata !{i32 327, i32 0, metadata !1361, null}
!1363 = metadata !{i32 328, i32 0, metadata !1361, null}
!1364 = metadata !{i32 330, i32 0, metadata !1328, null}
!1365 = metadata !{i32 331, i32 0, metadata !1328, null}
!1366 = metadata !{i32 334, i32 0, metadata !1328, null}
!1367 = metadata !{i32 339, i32 0, metadata !1328, null}
!1368 = metadata !{i32 342, i32 0, metadata !1328, null}
!1369 = metadata !{i32 343, i32 0, metadata !1328, null}
!1370 = metadata !{i32 345, i32 0, metadata !1371, null}
!1371 = metadata !{i32 786443, metadata !1, metadata !1372, i32 345, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1372 = metadata !{i32 786443, metadata !1, metadata !1332, i32 344, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1373 = metadata !{i32 346, i32 0, metadata !1374, null}
!1374 = metadata !{i32 786443, metadata !1, metadata !1371, i32 345, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1375 = metadata !{i32 351, i32 0, metadata !1333, null}
!1376 = metadata !{i32 366, i32 0, metadata !1333, null}
!1377 = metadata !{i32 367, i32 0, metadata !1333, null}
!1378 = metadata !{i32 370, i32 0, metadata !1333, null}
!1379 = metadata !{i32 371, i32 0, metadata !1333, null}
!1380 = metadata !{i32 373, i32 0, metadata !1333, null}
!1381 = metadata !{i32 375, i32 0, metadata !1333, null}
!1382 = metadata !{i32 377, i32 0, metadata !1383, null}
!1383 = metadata !{i32 786443, metadata !1, metadata !1338, i32 377, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1384 = metadata !{i32 378, i32 0, metadata !1383, null}
!1385 = metadata !{i32 380, i32 0, metadata !1333, null}
!1386 = metadata !{i32 381, i32 0, metadata !1333, null}
!1387 = metadata !{i32 384, i32 0, metadata !1333, null}
!1388 = metadata !{i32 786689, metadata !1200, metadata !"a", metadata !1164, i32 16777550, metadata !649, i32 0, metadata !1389} ; [ DW_TAG_arg_variable ] [a] [line 334]
!1389 = metadata !{i32 387, i32 0, metadata !1333, null}
!1390 = metadata !{i32 334, i32 0, metadata !1200, metadata !1389}
!1391 = metadata !{i32 786688, metadata !1206, metadata !"nul", metadata !1164, i32 336, metadata !1173, i32 0, metadata !1389} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!1392 = metadata !{i32 336, i32 0, metadata !1206, metadata !1389}
!1393 = metadata !{i32 338, i32 0, metadata !1206, metadata !1389}
!1394 = metadata !{i32 786689, metadata !1200, metadata !"a", metadata !1164, i32 16777550, metadata !649, i32 0, metadata !1395} ; [ DW_TAG_arg_variable ] [a] [line 334]
!1395 = metadata !{i32 388, i32 0, metadata !1333, null}
!1396 = metadata !{i32 334, i32 0, metadata !1200, metadata !1395}
!1397 = metadata !{i32 786688, metadata !1206, metadata !"nul", metadata !1164, i32 336, metadata !1173, i32 0, metadata !1395} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!1398 = metadata !{i32 336, i32 0, metadata !1206, metadata !1395}
!1399 = metadata !{i32 338, i32 0, metadata !1206, metadata !1395}
!1400 = metadata !{i32 391, i32 0, metadata !1333, null}
!1401 = metadata !{i32 395, i32 0, metadata !1333, null}
!1402 = metadata !{i32 397, i32 0, metadata !1333, null}
!1403 = metadata !{i32 400, i32 0, metadata !1404, null}
!1404 = metadata !{i32 786443, metadata !1, metadata !1333, i32 399, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1405 = metadata !{i32 401, i32 0, metadata !1404, null}
!1406 = metadata !{i32 402, i32 0, metadata !1404, null}
!1407 = metadata !{i32 403, i32 0, metadata !1404, null}
!1408 = metadata !{i32 410, i32 0, metadata !1328, null}
!1409 = metadata !{i32 411, i32 0, metadata !1328, null}
!1410 = metadata !{i32 412, i32 0, metadata !1328, null}
!1411 = metadata !{i32 413, i32 0, metadata !1412, null}
!1412 = metadata !{i32 786443, metadata !1, metadata !1328, i32 412, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1413 = metadata !{i32 414, i32 0, metadata !1412, null}
!1414 = metadata !{i32 415, i32 0, metadata !1412, null}
!1415 = metadata !{i32 416, i32 0, metadata !1412, null}
!1416 = metadata !{i32 417, i32 0, metadata !1412, null}
!1417 = metadata !{i32 418, i32 0, metadata !1412, null}
!1418 = metadata !{i32 419, i32 0, metadata !1412, null}
!1419 = metadata !{i32 420, i32 0, metadata !1412, null}
!1420 = metadata !{i32 422, i32 0, metadata !1328, null}
!1421 = metadata !{i32 423, i32 0, metadata !1328, null}
!1422 = metadata !{i32 427, i32 0, metadata !1423, null}
!1423 = metadata !{i32 786443, metadata !1, metadata !1341, i32 427, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1424 = metadata !{i32 428, i32 0, metadata !1423, null}
!1425 = metadata !{i32 430, i32 0, metadata !1328, null}
!1426 = metadata !{i32 431, i32 0, metadata !1328, null}
!1427 = metadata !{i32 438, i32 0, metadata !1328, null}
!1428 = metadata !{i32 444, i32 0, metadata !1328, null}
!1429 = metadata !{i32 445, i32 0, metadata !1328, null}
!1430 = metadata !{i32 448, i32 0, metadata !1328, null}
!1431 = metadata !{i32 786689, metadata !1200, metadata !"a", metadata !1164, i32 16777550, metadata !649, i32 0, metadata !1432} ; [ DW_TAG_arg_variable ] [a] [line 334]
!1432 = metadata !{i32 452, i32 0, metadata !1328, null}
!1433 = metadata !{i32 334, i32 0, metadata !1200, metadata !1432}
!1434 = metadata !{i32 786688, metadata !1206, metadata !"nul", metadata !1164, i32 336, metadata !1173, i32 0, metadata !1432} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!1435 = metadata !{i32 336, i32 0, metadata !1206, metadata !1432}
!1436 = metadata !{i32 338, i32 0, metadata !1206, metadata !1432}
!1437 = metadata !{i32 786689, metadata !1200, metadata !"a", metadata !1164, i32 16777550, metadata !649, i32 0, metadata !1438} ; [ DW_TAG_arg_variable ] [a] [line 334]
!1438 = metadata !{i32 453, i32 0, metadata !1328, null}
!1439 = metadata !{i32 334, i32 0, metadata !1200, metadata !1438}
!1440 = metadata !{i32 786688, metadata !1206, metadata !"nul", metadata !1164, i32 336, metadata !1173, i32 0, metadata !1438} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!1441 = metadata !{i32 336, i32 0, metadata !1206, metadata !1438}
!1442 = metadata !{i32 338, i32 0, metadata !1206, metadata !1438}
!1443 = metadata !{i32 456, i32 0, metadata !1328, null}
!1444 = metadata !{i32 460, i32 0, metadata !1328, null}
!1445 = metadata !{i32 467, i32 0, metadata !1328, null}
!1446 = metadata !{i32 471, i32 0, metadata !1346, null}
!1447 = metadata !{i32 786689, metadata !1169, metadata !"a", metadata !1164, i32 16777486, metadata !1172, i32 0, metadata !1446} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1448 = metadata !{i32 270, i32 0, metadata !1169, metadata !1446}
!1449 = metadata !{i32 786689, metadata !1169, metadata !"b", metadata !1164, i32 33554702, metadata !305, i32 0, metadata !1446} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1450 = metadata !{i32 272, i32 0, metadata !1169, metadata !1446}
!1451 = metadata !{i32 273, i32 0, metadata !1169, metadata !1446}
!1452 = metadata !{i32 274, i32 0, metadata !1169, metadata !1446}
!1453 = metadata !{i32 472, i32 0, metadata !1328, null}
!1454 = metadata !{i32 479, i32 0, metadata !1328, null}
!1455 = metadata !{i32 480, i32 0, metadata !1349, null}
!1456 = metadata !{i32 489, i32 0, metadata !1349, null}
!1457 = metadata !{i32 491, i32 0, metadata !1349, null}
!1458 = metadata !{i32 494, i32 0, metadata !1328, null}
!1459 = metadata !{i32 318, i32 0, metadata !1325, null}
!1460 = metadata !{i32 502, i32 0, metadata !128, null}
!1461 = metadata !{i32 503, i32 0, metadata !128, null}
!1462 = metadata !{i32 504, i32 0, metadata !128, null}
!1463 = metadata !{i32 505, i32 0, metadata !128, null}
!1464 = metadata !{i32 506, i32 0, metadata !128, null}
!1465 = metadata !{i32 509, i32 0, metadata !128, null}
!1466 = metadata !{i32 510, i32 0, metadata !128, null}
!1467 = metadata !{i32 513, i32 0, metadata !128, null}
!1468 = metadata !{i32 515, i32 0, metadata !128, null}
!1469 = metadata !{i32 516, i32 0, metadata !1470, null}
!1470 = metadata !{i32 786443, metadata !1, metadata !128, i32 515, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1471 = metadata !{i32 518, i32 0, metadata !1470, null}
!1472 = metadata !{i32 520, i32 0, metadata !1470, null}
!1473 = metadata !{i32 521, i32 0, metadata !1470, null}
!1474 = metadata !{i32 524, i32 0, metadata !128, null}
!1475 = metadata !{i32 527, i32 0, metadata !128, null}
!1476 = metadata !{i32 157, i32 0, metadata !1207, null}
!1477 = metadata !{i32 158, i32 0, metadata !1207, null}
!1478 = metadata !{i32 159, i32 0, metadata !1207, null}
!1479 = metadata !{i32 160, i32 0, metadata !1207, null}
!1480 = metadata !{i32 162, i32 0, metadata !1481, null}
!1481 = metadata !{i32 786443, metadata !1, metadata !1207} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1482 = metadata !{i32 165, i32 0, metadata !1481, null}
!1483 = metadata !{i32 166, i32 0, metadata !1481, null}
!1484 = metadata !{i32 170, i32 0, metadata !1481, null}
!1485 = metadata !{i32 786689, metadata !1227, metadata !"a", metadata !1164, i32 16777532, metadata !305, i32 0, metadata !1486} ; [ DW_TAG_arg_variable ] [a] [line 316]
!1486 = metadata !{i32 172, i32 0, metadata !1481, null}
!1487 = metadata !{i32 316, i32 0, metadata !1227, metadata !1486}
!1488 = metadata !{i32 321, i32 0, metadata !1489, metadata !1486}
!1489 = metadata !{i32 786443, metadata !1163, metadata !1227} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!1490 = metadata !{i32 322, i32 0, metadata !1489, metadata !1486}
!1491 = metadata !{i32 323, i32 0, metadata !1489, metadata !1486}
!1492 = metadata !{i32 173, i32 0, metadata !1481, null}
!1493 = metadata !{i32 175, i32 0, metadata !1481, null}
!1494 = metadata !{i32 176, i32 0, metadata !1481, null}
!1495 = metadata !{i32 179, i32 0, metadata !1481, null}
!1496 = metadata !{i32 181, i32 0, metadata !1481, null}
!1497 = metadata !{i32 183, i32 0, metadata !1481, null}
!1498 = metadata !{i32 63, i32 0, metadata !1192, null}
!1499 = metadata !{i32 65, i32 0, metadata !1192, null}
!1500 = metadata !{i32 66, i32 0, metadata !1192, null}
!1501 = metadata !{i32 67, i32 0, metadata !1192, null}
!1502 = metadata !{i32 68, i32 0, metadata !1192, null}
!1503 = metadata !{i32 134, i32 0, metadata !1177, null}
!1504 = metadata !{i32 135, i32 0, metadata !1177, null}
!1505 = metadata !{i32 136, i32 0, metadata !1177, null}
!1506 = metadata !{i32 138, i32 0, metadata !1188, null}
!1507 = metadata !{i32 142, i32 0, metadata !1188, null}
!1508 = metadata !{i32 144, i32 0, metadata !1509, null}
!1509 = metadata !{i32 786443, metadata !1, metadata !1188, i32 144, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1510 = metadata !{i32 145, i32 0, metadata !1511, null}
!1511 = metadata !{i32 786443, metadata !1, metadata !1509, i32 144, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1512 = metadata !{i32 147, i32 0, metadata !1513, null}
!1513 = metadata !{i32 786443, metadata !1, metadata !1511, i32 146, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1514 = metadata !{i32 146, i32 0, metadata !1513, null}
!1515 = metadata !{i32 148, i32 0, metadata !1513, null}
!1516 = metadata !{i32 786689, metadata !1162, metadata !"x", metadata !1164, i32 16777413, metadata !225, i32 0, metadata !1515} ; [ DW_TAG_arg_variable ] [x] [line 197]
!1517 = metadata !{i32 197, i32 0, metadata !1162, metadata !1515}
!1518 = metadata !{i32 199, i32 0, metadata !1519, metadata !1515}
!1519 = metadata !{i32 786443, metadata !1163, metadata !1162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!1520 = metadata !{i32 151, i32 0, metadata !1188, null}
!1521 = metadata !{i32 152, i32 0, metadata !1188, null}
!1522 = metadata !{i32 154, i32 0, metadata !1188, null}
!1523 = metadata !{i32 92, i32 0, metadata !1141, null}
!1524 = metadata !{i32 93, i32 0, metadata !1141, null}
!1525 = metadata !{i32 94, i32 0, metadata !1141, null}
!1526 = metadata !{i32 96, i32 0, metadata !1141, null}
!1527 = metadata !{i32 102, i32 0, metadata !1141, null}
!1528 = metadata !{float -1.000000e+00}
!1529 = metadata !{i32 103, i32 0, metadata !1141, null}
!1530 = metadata !{i32 104, i32 0, metadata !1531, null}
!1531 = metadata !{i32 786443, metadata !1, metadata !1141, i32 104, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1532 = metadata !{i32 105, i32 0, metadata !1533, null}
!1533 = metadata !{i32 786443, metadata !1, metadata !1531, i32 104, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1534 = metadata !{i32 108, i32 0, metadata !1535, null}
!1535 = metadata !{i32 786443, metadata !1, metadata !1533, i32 107, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1536 = metadata !{i32 106, i32 0, metadata !1533, null}
!1537 = metadata !{i32 107, i32 0, metadata !1535, null}
!1538 = metadata !{i32 109, i32 0, metadata !1535, null}
!1539 = metadata !{i32 786689, metadata !1162, metadata !"x", metadata !1164, i32 16777413, metadata !225, i32 0, metadata !1538} ; [ DW_TAG_arg_variable ] [x] [line 197]
!1540 = metadata !{i32 197, i32 0, metadata !1162, metadata !1538}
!1541 = metadata !{i32 199, i32 0, metadata !1519, metadata !1538}
!1542 = metadata !{i32 110, i32 0, metadata !1533, null}
!1543 = metadata !{i32 111, i32 0, metadata !1544, null}
!1544 = metadata !{i32 786443, metadata !1, metadata !1533, i32 110, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1545 = metadata !{i32 112, i32 0, metadata !1544, null}
!1546 = metadata !{i32 113, i32 0, metadata !1544, null}
!1547 = metadata !{i32 116, i32 0, metadata !1141, null}
!1548 = metadata !{i32 117, i32 0, metadata !1141, null}
!1549 = metadata !{i32 118, i32 0, metadata !1550, null}
!1550 = metadata !{i32 786443, metadata !1, metadata !1551, i32 118, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1551 = metadata !{i32 786443, metadata !1, metadata !1141, i32 117, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1552 = metadata !{i32 119, i32 0, metadata !1553, null}
!1553 = metadata !{i32 786443, metadata !1, metadata !1550, i32 118, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1554 = metadata !{i32 120, i32 0, metadata !1553, null}
!1555 = metadata !{i32 122, i32 0, metadata !1553, null}
!1556 = metadata !{i32 123, i32 0, metadata !1553, null}
!1557 = metadata !{i32 121, i32 0, metadata !1553, null}
!1558 = metadata !{i32 124, i32 0, metadata !1553, null}
!1559 = metadata !{i32 125, i32 0, metadata !1553, null}
!1560 = metadata !{i32 126, i32 0, metadata !1561, null}
!1561 = metadata !{i32 786443, metadata !1, metadata !1553, i32 125, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1562 = metadata !{i32 127, i32 0, metadata !1561, null}
!1563 = metadata !{i32 128, i32 0, metadata !1561, null}
!1564 = metadata !{i32 131, i32 0, metadata !1141, null}
!1565 = metadata !{i32 81, i32 0, metadata !1129, null}
!1566 = metadata !{i32 82, i32 0, metadata !1129, null}
!1567 = metadata !{i32 84, i32 0, metadata !1129, null}
!1568 = metadata !{i32 85, i32 0, metadata !1129, null}
!1569 = metadata !{i32 87, i32 0, metadata !1129, null}
!1570 = metadata !{i32 88, i32 0, metadata !1129, null}
!1571 = metadata !{i32 89, i32 0, metadata !1129, null}
!1572 = metadata !{i32 90, i32 0, metadata !1129, null}
!1573 = metadata !{i32 529, i32 0, metadata !981, null}
!1574 = metadata !{i32 530, i32 0, metadata !981, null}
!1575 = metadata !{i32 531, i32 0, metadata !981, null}
!1576 = metadata !{i32 532, i32 0, metadata !981, null}
!1577 = metadata !{i32 533, i32 0, metadata !981, null}
!1578 = metadata !{i32 534, i32 0, metadata !981, null}
!1579 = metadata !{i32 535, i32 0, metadata !981, null}
!1580 = metadata !{i32 536, i32 0, metadata !981, null}
!1581 = metadata !{i32 539, i32 0, metadata !981, null}
!1582 = metadata !{i32 540, i32 0, metadata !981, null}
!1583 = metadata !{[3 x float]* null}
!1584 = metadata !{i32 542, i32 0, metadata !981, null}
!1585 = metadata !{i32 543, i32 0, metadata !981, null}
!1586 = metadata !{i32 544, i32 0, metadata !981, null}
!1587 = metadata !{i32 545, i32 0, metadata !981, null}
!1588 = metadata !{i32 548, i32 0, metadata !981, null}
!1589 = metadata !{i32 549, i32 0, metadata !981, null}
!1590 = metadata !{i32 551, i32 0, metadata !981, null}
!1591 = metadata !{i32 552, i32 0, metadata !981, null}
!1592 = metadata !{i32 553, i32 0, metadata !981, null}
!1593 = metadata !{i32 554, i32 0, metadata !981, null}
!1594 = metadata !{i32 555, i32 0, metadata !981, null}
!1595 = metadata !{i32 556, i32 0, metadata !981, null}
!1596 = metadata !{i32 557, i32 0, metadata !981, null}
!1597 = metadata !{i32 560, i32 0, metadata !981, null}
!1598 = metadata !{i32 563, i32 0, metadata !981, null}
!1599 = metadata !{i32 567, i32 0, metadata !981, null}
!1600 = metadata !{i32 570, i32 0, metadata !1601, null}
!1601 = metadata !{i32 786443, metadata !1, metadata !981, i32 570, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1602 = metadata !{i32 571, i32 0, metadata !1603, null}
!1603 = metadata !{i32 786443, metadata !1, metadata !1601, i32 570, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1604 = metadata !{i32 572, i32 0, metadata !1603, null}
!1605 = metadata !{i32 576, i32 0, metadata !981, null}
!1606 = metadata !{i32 579, i32 0, metadata !981, null}
!1607 = metadata !{i32 580, i32 0, metadata !981, null}
!1608 = metadata !{i32 585, i32 0, metadata !981, null}
!1609 = metadata !{i32 587, i32 0, metadata !981, null}
!1610 = metadata !{i32 591, i32 0, metadata !981, null}
!1611 = metadata !{i32 786689, metadata !1200, metadata !"a", metadata !1164, i32 16777550, metadata !649, i32 0, metadata !1610} ; [ DW_TAG_arg_variable ] [a] [line 334]
!1612 = metadata !{i32 334, i32 0, metadata !1200, metadata !1610}
!1613 = metadata !{i32 786688, metadata !1206, metadata !"nul", metadata !1164, i32 336, metadata !1173, i32 0, metadata !1610} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!1614 = metadata !{i32 336, i32 0, metadata !1206, metadata !1610}
!1615 = metadata !{i32 338, i32 0, metadata !1206, metadata !1610}
!1616 = metadata !{i32 592, i32 0, metadata !981, null}
!1617 = metadata !{i32 786689, metadata !1200, metadata !"a", metadata !1164, i32 16777550, metadata !649, i32 0, metadata !1616} ; [ DW_TAG_arg_variable ] [a] [line 334]
!1618 = metadata !{i32 334, i32 0, metadata !1200, metadata !1616}
!1619 = metadata !{i32 786688, metadata !1206, metadata !"nul", metadata !1164, i32 336, metadata !1173, i32 0, metadata !1616} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!1620 = metadata !{i32 336, i32 0, metadata !1206, metadata !1616}
!1621 = metadata !{i32 338, i32 0, metadata !1206, metadata !1616}
!1622 = metadata !{i32 594, i32 0, metadata !981, null}
!1623 = metadata !{i32 596, i32 0, metadata !981, null}
!1624 = metadata !{i32 599, i32 0, metadata !981, null}
!1625 = metadata !{i32 602, i32 0, metadata !981, null}
!1626 = metadata !{i32 603, i32 0, metadata !981, null}
!1627 = metadata !{i32 606, i32 0, metadata !1628, null}
!1628 = metadata !{i32 786443, metadata !1, metadata !981, i32 606, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1629 = metadata !{i32 607, i32 0, metadata !1630, null}
!1630 = metadata !{i32 786443, metadata !1, metadata !1628, i32 606, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1631 = metadata !{i32 608, i32 0, metadata !1630, null}
!1632 = metadata !{i32 786689, metadata !1169, metadata !"a", metadata !1164, i32 16777486, metadata !1172, i32 0, metadata !1629} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1633 = metadata !{i32 270, i32 0, metadata !1169, metadata !1629}
!1634 = metadata !{i32 786689, metadata !1169, metadata !"b", metadata !1164, i32 33554702, metadata !305, i32 0, metadata !1629} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1635 = metadata !{i32 272, i32 0, metadata !1169, metadata !1629}
!1636 = metadata !{i32 273, i32 0, metadata !1169, metadata !1629}
!1637 = metadata !{i32 274, i32 0, metadata !1169, metadata !1629}
!1638 = metadata !{i32 786689, metadata !1169, metadata !"a", metadata !1164, i32 16777486, metadata !1172, i32 0, metadata !1631} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1639 = metadata !{i32 270, i32 0, metadata !1169, metadata !1631}
!1640 = metadata !{i32 786689, metadata !1169, metadata !"b", metadata !1164, i32 33554702, metadata !305, i32 0, metadata !1631} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1641 = metadata !{i32 272, i32 0, metadata !1169, metadata !1631}
!1642 = metadata !{i32 273, i32 0, metadata !1169, metadata !1631}
!1643 = metadata !{i32 274, i32 0, metadata !1169, metadata !1631}
!1644 = metadata !{i32 614, i32 0, metadata !981, null}
!1645 = metadata !{i32 615, i32 0, metadata !981, null}
!1646 = metadata !{i32 618, i32 0, metadata !981, null}
!1647 = metadata !{i32 620, i32 0, metadata !981, null}
!1648 = metadata !{i32 622, i32 0, metadata !981, null}
!1649 = metadata !{i32 623, i32 0, metadata !981, null}
!1650 = metadata !{i32 631, i32 0, metadata !981, null}
!1651 = metadata !{i32 632, i32 0, metadata !981, null}
!1652 = metadata !{i32 633, i32 0, metadata !981, null}
!1653 = metadata !{i32 635, i32 0, metadata !1654, null}
!1654 = metadata !{i32 786443, metadata !1, metadata !981, i32 634, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1655 = metadata !{i32 639, i32 0, metadata !1656, null}
!1656 = metadata !{i32 786443, metadata !1, metadata !1654, i32 639, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1657 = metadata !{i32 640, i32 0, metadata !1658, null}
!1658 = metadata !{i32 786443, metadata !1, metadata !1656, i32 639, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1659 = metadata !{i32 642, i32 0, metadata !1660, null}
!1660 = metadata !{i32 786443, metadata !1, metadata !1658, i32 641, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1661 = metadata !{i32 650, i32 0, metadata !1662, null}
!1662 = metadata !{i32 786443, metadata !1, metadata !1654, i32 648, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1663 = metadata !{i32 655, i32 0, metadata !1654, null}
!1664 = metadata !{i32 663, i32 0, metadata !1654, null}
!1665 = metadata !{i32 674, i32 0, metadata !1654, null}
!1666 = metadata !{i32 677, i32 0, metadata !1654, null}
!1667 = metadata !{i32 680, i32 0, metadata !1668, null}
!1668 = metadata !{i32 786443, metadata !1, metadata !1654, i32 679, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1669 = metadata !{i32 683, i32 0, metadata !1670, null}
!1670 = metadata !{i32 786443, metadata !1, metadata !1668, i32 683, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1671 = metadata !{i32 688, i32 0, metadata !1668, null}
!1672 = metadata !{i32 691, i32 0, metadata !1673, null}
!1673 = metadata !{i32 786443, metadata !1, metadata !1668, i32 691, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1674 = metadata !{i32 702, i32 0, metadata !1654, null}
!1675 = metadata !{i32 706, i32 0, metadata !1654, null}
!1676 = metadata !{i32 708, i32 0, metadata !1654, null}
!1677 = metadata !{i32 722, i32 0, metadata !1678, null}
!1678 = metadata !{i32 786443, metadata !1, metadata !1679, i32 720, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1679 = metadata !{i32 786443, metadata !1, metadata !1654, i32 713, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1680 = metadata !{i32 726, i32 0, metadata !1678, null}
!1681 = metadata !{i32 727, i32 0, metadata !1678, null}
!1682 = metadata !{i32 740, i32 0, metadata !1683, null}
!1683 = metadata !{i32 786443, metadata !1, metadata !1654, i32 738, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1684 = metadata !{i32 744, i32 0, metadata !1683, null}
!1685 = metadata !{i32 746, i32 0, metadata !1686, null}
!1686 = metadata !{i32 786443, metadata !1, metadata !1683, i32 744, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1687 = metadata !{i32 769, i32 0, metadata !1654, null}
!1688 = metadata !{i32 634, i32 0, metadata !981, null}
!1689 = metadata !{i32 638, i32 0, metadata !1654, null}
!1690 = metadata !{i32 643, i32 0, metadata !1660, null}
!1691 = metadata !{i32 645, i32 0, metadata !1660, null}
!1692 = metadata !{i32 641, i32 0, metadata !1660, null}
!1693 = metadata !{i32 648, i32 0, metadata !1654, null}
!1694 = metadata !{i32 649, i32 0, metadata !1662, null}
!1695 = metadata !{i32 653, i32 0, metadata !1662, null}
!1696 = metadata !{i32 656, i32 0, metadata !1654, null}
!1697 = metadata !{i32 669, i32 0, metadata !1654, null}
!1698 = metadata !{i32 670, i32 0, metadata !1654, null}
!1699 = metadata !{i32 676, i32 0, metadata !1654, null}
!1700 = metadata !{i32 679, i32 0, metadata !1654, null}
!1701 = metadata !{i32 682, i32 0, metadata !1668, null}
!1702 = metadata !{i32 687, i32 0, metadata !1668, null}
!1703 = metadata !{i32 684, i32 0, metadata !1704, null}
!1704 = metadata !{i32 786443, metadata !1, metadata !1670, i32 684, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1705 = metadata !{i32 685, i32 0, metadata !1704, null}
!1706 = metadata !{i32 692, i32 0, metadata !1707, null}
!1707 = metadata !{i32 786443, metadata !1, metadata !1673, i32 692, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1708 = metadata !{i32 693, i32 0, metadata !1707, null}
!1709 = metadata !{i32 786689, metadata !1200, metadata !"a", metadata !1164, i32 16777550, metadata !649, i32 0, metadata !1710} ; [ DW_TAG_arg_variable ] [a] [line 334]
!1710 = metadata !{i32 697, i32 0, metadata !1654, null}
!1711 = metadata !{i32 334, i32 0, metadata !1200, metadata !1710}
!1712 = metadata !{i32 786688, metadata !1206, metadata !"nul", metadata !1164, i32 336, metadata !1173, i32 0, metadata !1710} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!1713 = metadata !{i32 336, i32 0, metadata !1206, metadata !1710}
!1714 = metadata !{i32 338, i32 0, metadata !1206, metadata !1710}
!1715 = metadata !{i32 786689, metadata !1200, metadata !"a", metadata !1164, i32 16777550, metadata !649, i32 0, metadata !1716} ; [ DW_TAG_arg_variable ] [a] [line 334]
!1716 = metadata !{i32 698, i32 0, metadata !1654, null}
!1717 = metadata !{i32 334, i32 0, metadata !1200, metadata !1716}
!1718 = metadata !{i32 786688, metadata !1206, metadata !"nul", metadata !1164, i32 336, metadata !1173, i32 0, metadata !1716} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!1719 = metadata !{i32 336, i32 0, metadata !1206, metadata !1716}
!1720 = metadata !{i32 338, i32 0, metadata !1206, metadata !1716}
!1721 = metadata !{i32 701, i32 0, metadata !1654, null}
!1722 = metadata !{i32 709, i32 0, metadata !1654, null}
!1723 = metadata !{i32 710, i32 0, metadata !1654, null}
!1724 = metadata !{i32 713, i32 0, metadata !1654, null}
!1725 = metadata !{i32 714, i32 0, metadata !1679, null}
!1726 = metadata !{i32 720, i32 0, metadata !1679, null}
!1727 = metadata !{i32 715, i32 0, metadata !1728, null}
!1728 = metadata !{i32 786443, metadata !1, metadata !1679, i32 714, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1729 = metadata !{i32 718, i32 0, metadata !1728, null}
!1730 = metadata !{i32 729, i32 0, metadata !1678, null}
!1731 = metadata !{i32 730, i32 0, metadata !1678, null}
!1732 = metadata !{i32 738, i32 0, metadata !1654, null}
!1733 = metadata !{i32 739, i32 0, metadata !1683, null}
!1734 = metadata !{i32 741, i32 0, metadata !1683, null}
!1735 = metadata !{i32 745, i32 0, metadata !1686, null}
!1736 = metadata !{i32 749, i32 0, metadata !1686, null}
!1737 = metadata !{i32 753, i32 0, metadata !1683, null}
!1738 = metadata !{i32 758, i32 0, metadata !1683, null}
!1739 = metadata !{i32 761, i32 0, metadata !1683, null}
!1740 = metadata !{i32 762, i32 0, metadata !1683, null}
!1741 = metadata !{i32 766, i32 0, metadata !1654, null}
!1742 = metadata !{i32 771, i32 0, metadata !1654, null}
!1743 = metadata !{i32 777, i32 0, metadata !1654, null}
!1744 = metadata !{i32 779, i32 0, metadata !1745, null}
!1745 = metadata !{i32 786443, metadata !1, metadata !1654, i32 777, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1746 = metadata !{i32 780, i32 0, metadata !1745, null}
!1747 = metadata !{i32 781, i32 0, metadata !1745, null}
!1748 = metadata !{i32 782, i32 0, metadata !1745, null}
!1749 = metadata !{i32 784, i32 0, metadata !1654, null}
!1750 = metadata !{i32 788, i32 0, metadata !981, null}
!1751 = metadata !{i32 789, i32 0, metadata !981, null}
!1752 = metadata !{i32 790, i32 0, metadata !981, null}
!1753 = metadata !{i32 791, i32 0, metadata !981, null}
!1754 = metadata !{i32 792, i32 0, metadata !981, null}
!1755 = metadata !{i32 795, i32 0, metadata !981, null}
!1756 = metadata !{i32 796, i32 0, metadata !1757, null}
!1757 = metadata !{i32 786443, metadata !1, metadata !981, i32 795, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1758 = metadata !{i32 799, i32 0, metadata !1757, null}
!1759 = metadata !{i32 800, i32 0, metadata !1757, null}
!1760 = metadata !{i32 801, i32 0, metadata !1757, null}
!1761 = metadata !{i32 802, i32 0, metadata !1757, null}
!1762 = metadata !{i32 807, i32 0, metadata !1763, null}
!1763 = metadata !{i32 786443, metadata !1, metadata !981, i32 807, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1764 = metadata !{i32 808, i32 0, metadata !1763, null}
!1765 = metadata !{i32 786689, metadata !1169, metadata !"a", metadata !1164, i32 16777486, metadata !1172, i32 0, metadata !1764} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1766 = metadata !{i32 270, i32 0, metadata !1169, metadata !1764}
!1767 = metadata !{i32 786689, metadata !1169, metadata !"b", metadata !1164, i32 33554702, metadata !305, i32 0, metadata !1764} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1768 = metadata !{i32 272, i32 0, metadata !1169, metadata !1764}
!1769 = metadata !{i32 273, i32 0, metadata !1169, metadata !1764}
!1770 = metadata !{i32 274, i32 0, metadata !1169, metadata !1764}
!1771 = metadata !{i32 811, i32 0, metadata !981, null}
!1772 = metadata !{i32 814, i32 0, metadata !981, null}
!1773 = metadata !{i32 70, i32 0, metadata !1121, null}
!1774 = metadata !{i32 72, i32 0, metadata !1121, null}
!1775 = metadata !{i32 76, i32 0, metadata !1121, null}
!1776 = metadata !{i32 77, i32 0, metadata !1121, null}
!1777 = metadata !{i32 79, i32 0, metadata !1121, null}
!1778 = metadata !{i32 816, i32 0, metadata !1050, null}
!1779 = metadata !{i32 817, i32 0, metadata !1050, null}
!1780 = metadata !{i32 818, i32 0, metadata !1050, null}
!1781 = metadata !{i32 819, i32 0, metadata !1050, null}
!1782 = metadata !{i32 820, i32 0, metadata !1050, null}
!1783 = metadata !{i32 821, i32 0, metadata !1050, null}
!1784 = metadata !{i32 822, i32 0, metadata !1050, null}
!1785 = metadata !{i32 823, i32 0, metadata !1050, null}
!1786 = metadata !{i32 824, i32 0, metadata !1050, null}
!1787 = metadata !{i32 830, i32 0, metadata !1050, null}
!1788 = metadata !{i32 831, i32 0, metadata !1050, null}
!1789 = metadata !{i32 832, i32 0, metadata !1050, null}
!1790 = metadata !{i32 833, i32 0, metadata !1050, null}
!1791 = metadata !{i32 834, i32 0, metadata !1050, null}
!1792 = metadata !{float 0x3EB0C6F7A0000000}
!1793 = metadata !{i32 839, i32 0, metadata !1050, null}
!1794 = metadata !{i32 841, i32 0, metadata !1050, null}
!1795 = metadata !{i32 843, i32 0, metadata !1050, null}
!1796 = metadata !{i32 844, i32 0, metadata !1050, null}
!1797 = metadata !{i32 849, i32 0, metadata !1050, null}
!1798 = metadata !{i32 850, i32 0, metadata !1050, null}
!1799 = metadata !{i32 851, i32 0, metadata !1050, null}
!1800 = metadata !{i32 852, i32 0, metadata !1050, null}
!1801 = metadata !{i32 856, i32 0, metadata !1050, null}
!1802 = metadata !{i32 860, i32 0, metadata !1050, null}
!1803 = metadata !{i32 862, i32 0, metadata !1050, null}
!1804 = metadata !{i32 863, i32 0, metadata !1050, null}
!1805 = metadata !{i32 864, i32 0, metadata !1806, null}
!1806 = metadata !{i32 786443, metadata !1, metadata !1050, i32 863, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1807 = metadata !{i32 865, i32 0, metadata !1806, null}
!1808 = metadata !{i32 866, i32 0, metadata !1806, null}
!1809 = metadata !{i32 867, i32 0, metadata !1806, null}
!1810 = metadata !{i32 868, i32 0, metadata !1806, null}
!1811 = metadata !{i32 -1}
!1812 = metadata !{i32 870, i32 0, metadata !1050, null}
!1813 = metadata !{i32 871, i32 0, metadata !1050, null}
!1814 = metadata !{i32 872, i32 0, metadata !1050, null}
!1815 = metadata !{i32 874, i32 0, metadata !1050, null}
!1816 = metadata !{i32 877, i32 0, metadata !1050, null}
!1817 = metadata !{i32 878, i32 0, metadata !1050, null}
!1818 = metadata !{i32 879, i32 0, metadata !1050, null}
!1819 = metadata !{i32 881, i32 0, metadata !1050, null}
!1820 = metadata !{i32 883, i32 0, metadata !1050, null}
!1821 = metadata !{i32 886, i32 0, metadata !1050, null}
!1822 = metadata !{i32 887, i32 0, metadata !1050, null}
!1823 = metadata !{i32 888, i32 0, metadata !1824, null}
!1824 = metadata !{i32 786443, metadata !1, metadata !1050, i32 887, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1825 = metadata !{i32 890, i32 0, metadata !1824, null}
!1826 = metadata !{i32 893, i32 0, metadata !1050, null}
!1827 = metadata !{i32 786689, metadata !1200, metadata !"a", metadata !1164, i32 16777550, metadata !649, i32 0, metadata !1826} ; [ DW_TAG_arg_variable ] [a] [line 334]
!1828 = metadata !{i32 334, i32 0, metadata !1200, metadata !1826}
!1829 = metadata !{i32 786688, metadata !1206, metadata !"nul", metadata !1164, i32 336, metadata !1173, i32 0, metadata !1826} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!1830 = metadata !{i32 336, i32 0, metadata !1206, metadata !1826}
!1831 = metadata !{i32 338, i32 0, metadata !1206, metadata !1826}
!1832 = metadata !{i32 895, i32 0, metadata !1050, null}
!1833 = metadata !{i32 896, i32 0, metadata !1050, null}
!1834 = metadata !{i32 899, i32 0, metadata !1050, null}
!1835 = metadata !{i32 900, i32 0, metadata !1050, null}
!1836 = metadata !{i32 902, i32 0, metadata !1050, null}
!1837 = metadata !{i32 906, i32 0, metadata !1050, null}
!1838 = metadata !{i32 908, i32 0, metadata !1050, null}
!1839 = metadata !{i32 909, i32 0, metadata !1050, null}
!1840 = metadata !{i32 910, i32 0, metadata !1841, null}
!1841 = metadata !{i32 786443, metadata !1, metadata !1050, i32 909, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1842 = metadata !{i32 911, i32 0, metadata !1841, null}
!1843 = metadata !{i32 912, i32 0, metadata !1841, null}
!1844 = metadata !{i32 913, i32 0, metadata !1841, null}
!1845 = metadata !{i32 914, i32 0, metadata !1841, null}
!1846 = metadata !{i32 927, i32 0, metadata !1050, null}
!1847 = metadata !{i32 929, i32 0, metadata !1848, null}
!1848 = metadata !{i32 786443, metadata !1, metadata !1050, i32 929, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1849 = metadata !{i32 937, i32 0, metadata !1850, null}
!1850 = metadata !{i32 786443, metadata !1, metadata !1851, i32 931, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1851 = metadata !{i32 786443, metadata !1, metadata !1852, i32 931, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1852 = metadata !{i32 786443, metadata !1, metadata !1848, i32 929, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1853 = metadata !{i32 943, i32 0, metadata !1850, null}
!1854 = metadata !{i32 971, i32 0, metadata !1850, null}
!1855 = metadata !{i32 984, i32 0, metadata !1852, null}
!1856 = metadata !{i32 931, i32 0, metadata !1851, null}
!1857 = metadata !{i32 933, i32 0, metadata !1850, null}
!1858 = metadata !{i32 786689, metadata !1200, metadata !"a", metadata !1164, i32 16777550, metadata !649, i32 0, metadata !1859} ; [ DW_TAG_arg_variable ] [a] [line 334]
!1859 = metadata !{i32 935, i32 0, metadata !1850, null}
!1860 = metadata !{i32 334, i32 0, metadata !1200, metadata !1859}
!1861 = metadata !{i32 786688, metadata !1206, metadata !"nul", metadata !1164, i32 336, metadata !1173, i32 0, metadata !1859} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!1862 = metadata !{i32 336, i32 0, metadata !1206, metadata !1859}
!1863 = metadata !{i32 338, i32 0, metadata !1206, metadata !1859}
!1864 = metadata !{i32 941, i32 0, metadata !1850, null}
!1865 = metadata !{i32 945, i32 0, metadata !1866, null}
!1866 = metadata !{i32 786443, metadata !1, metadata !1850, i32 945, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1867 = metadata !{i32 946, i32 0, metadata !1868, null}
!1868 = metadata !{i32 786443, metadata !1, metadata !1869, i32 946, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1869 = metadata !{i32 786443, metadata !1, metadata !1866, i32 945, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1870 = metadata !{i32 947, i32 0, metadata !1871, null}
!1871 = metadata !{i32 786443, metadata !1, metadata !1868, i32 946, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1872 = metadata !{i32 951, i32 0, metadata !1850, null}
!1873 = metadata !{i32 786689, metadata !1200, metadata !"a", metadata !1164, i32 16777550, metadata !649, i32 0, metadata !1874} ; [ DW_TAG_arg_variable ] [a] [line 334]
!1874 = metadata !{i32 953, i32 0, metadata !1850, null}
!1875 = metadata !{i32 334, i32 0, metadata !1200, metadata !1874}
!1876 = metadata !{i32 786688, metadata !1206, metadata !"nul", metadata !1164, i32 336, metadata !1173, i32 0, metadata !1874} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!1877 = metadata !{i32 336, i32 0, metadata !1206, metadata !1874}
!1878 = metadata !{i32 338, i32 0, metadata !1206, metadata !1874}
!1879 = metadata !{i32 955, i32 0, metadata !1850, null}
!1880 = metadata !{i32 959, i32 0, metadata !1850, null}
!1881 = metadata !{i32 961, i32 0, metadata !1850, null}
!1882 = metadata !{i32 963, i32 0, metadata !1883, null}
!1883 = metadata !{i32 786443, metadata !1, metadata !1850, i32 963, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1884 = metadata !{i32 964, i32 0, metadata !1885, null}
!1885 = metadata !{i32 786443, metadata !1, metadata !1886, i32 964, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1886 = metadata !{i32 786443, metadata !1, metadata !1883, i32 963, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1887 = metadata !{i32 965, i32 0, metadata !1888, null}
!1888 = metadata !{i32 786443, metadata !1, metadata !1885, i32 964, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1889 = metadata !{i32 970, i32 0, metadata !1850, null}
!1890 = metadata !{i32 975, i32 0, metadata !1850, null}
!1891 = metadata !{i32 977, i32 0, metadata !1850, null}
!1892 = metadata !{i32 978, i32 0, metadata !1850, null}
!1893 = metadata !{i32 985, i32 0, metadata !1894, null}
!1894 = metadata !{i32 786443, metadata !1, metadata !1852, i32 984, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1895 = metadata !{i32 986, i32 0, metadata !1894, null}
!1896 = metadata !{i32 987, i32 0, metadata !1894, null}
!1897 = metadata !{i32 989, i32 0, metadata !1050, null}
!1898 = metadata !{i32 992, i32 0, metadata !1050, null}
!1899 = metadata !{i32 993, i32 0, metadata !1900, null}
!1900 = metadata !{i32 786443, metadata !1, metadata !1050, i32 992, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/minimize.c]
!1901 = metadata !{i32 995, i32 0, metadata !1900, null}
!1902 = metadata !{i32 1005, i32 0, metadata !1050, null}
!1903 = metadata !{i32 997, i32 0, metadata !1900, null}
!1904 = metadata !{i32 1011, i32 0, metadata !1050, null}
