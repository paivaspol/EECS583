; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_nrnb = type { [129 x double] }
%struct.t_sortblock = type { [3 x i32], i32 }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [102 x i8] c"bonds that rotated more than %g degrees:\0A atom 1 atom 2  angle  previous, current, constraint length\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@stdlog = external global %struct._IO_FILE*
@.str1 = private unnamed_addr constant [39 x i8] c" %6d %6d  %5.1f  %8.4f %8.4f    %8.4f\0A\00", align 1
@low_constrain.nblocks = internal global i32 0, align 4
@low_constrain.sblock = internal global i32* null, align 8
@low_constrain.nsettle = internal global i32 0, align 4
@low_constrain.settle_type = internal unnamed_addr global i32 0, align 4
@low_constrain.owptr = internal unnamed_addr global i32* null, align 8
@.str2 = private unnamed_addr constant [13 x i8] c"Berendsen84a\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"owptr\00", align 1
@.str4 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c\00", align 1
@.str5 = private unnamed_addr constant [38 x i8] c"More than one settle type (%d and %d)\00", align 1
@.str6 = private unnamed_addr constant [12 x i8] c"Miyamoto92a\00", align 1
@debug = external global %struct._IO_FILE*
@.str7 = private unnamed_addr constant [36 x i8] c"ncons: %d, bstart: %d, nblocks: %d\0A\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"sb\00", align 1
@.str9 = private unnamed_addr constant [15 x i8] c"Before sorting\00", align 1
@.str10 = private unnamed_addr constant [27 x i8] c"Going to sort constraints\0A\00", align 1
@.str11 = private unnamed_addr constant [26 x i8] c"I used %d calls to pcomp\0A\00", align 1
@pcount = internal unnamed_addr global i32 0, align 4
@.str12 = private unnamed_addr constant [14 x i8] c"After sorting\00", align 1
@.str13 = private unnamed_addr constant [7 x i8] c"sblock\00", align 1
@.str14 = private unnamed_addr constant [12 x i8] c"bstart: %d\0A\00", align 1
@.str15 = private unnamed_addr constant [31 x i8] c"j: %d, nblocks: %d, ncons: %d\0A\00", align 1
@.str16 = private unnamed_addr constant [28 x i8] c"i: %5d  sb[i].blocknr: %5u\0A\00", align 1
@.str17 = private unnamed_addr constant [17 x i8] c"sblock[%3d]=%5d\0A\00", align 1
@.str18 = private unnamed_addr constant [70 x i8] c"DEATH HORROR: top->blocks[ebSBLOCKS] does not match idef->il[F_SHAKE]\00", align 1
@.str19 = private unnamed_addr constant [11 x i8] c"inv_sblock\00", align 1
@.str20 = private unnamed_addr constant [8 x i8] c"Hess97a\00", align 1
@.str21 = private unnamed_addr constant [12 x i8] c"Ryckaert77a\00", align 1
@.str22 = private unnamed_addr constant [45 x i8] c"Constraint error in algorithm %s at step %d\0A\00", align 1
@eshake_names = external global [3 x i8*]
@.str23 = private unnamed_addr constant [120 x i8] c"\0At = %.3f ps: Water molecule starting at atom %d can not be settled.\0ACheck for bad contacts and/or reduce the timestep.\00", align 1
@.str24 = private unnamed_addr constant [11 x i8] c"step%d.pdb\00", align 1
@.str25 = private unnamed_addr constant [22 x i8] c"one step before crash\00", align 1
@.str26 = private unnamed_addr constant [8 x i8] c"crashed\00", align 1
@.str27 = private unnamed_addr constant [55 x i8] c"Wrote pdb files with previous and current coordinates\0A\00", align 1
@constrain_lincs.bla1 = internal global i32* null, align 8
@constrain_lincs.bla2 = internal global i32* null, align 8
@constrain_lincs.blnr = internal global i32* null, align 8
@constrain_lincs.blbnb = internal global i32* null, align 8
@constrain_lincs.nrtot = internal global i32 0, align 4
@constrain_lincs.r = internal global [3 x float]* null, align 8
@constrain_lincs.bllen = internal global float* null, align 8
@constrain_lincs.blc = internal global float* null, align 8
@constrain_lincs.blcc = internal global float* null, align 8
@constrain_lincs.blm = internal global float* null, align 8
@constrain_lincs.tmp1 = internal global float* null, align 8
@constrain_lincs.tmp2 = internal global float* null, align 8
@constrain_lincs.tmp3 = internal global float* null, align 8
@constrain_lincs.lincslam = internal global float* null, align 8
@constrain_lincs.bllen0 = internal global float* null, align 8
@constrain_lincs.ddist = internal global float* null, align 8
@constrain_lincs.nc = internal global i32 0, align 4
@.str28 = private unnamed_addr constant [61 x i8] c"   Rel. Constraint Deviation:  Max    between atoms     RMS\0A\00", align 1
@.str29 = private unnamed_addr constant [49 x i8] c"       Before LINCS         %.6f %6d %6d   %.6f\0A\00", align 1
@.str30 = private unnamed_addr constant [50 x i8] c"        After LINCS         %.6f %6d %6d   %.6f\0A\0A\00", align 1
@.str31 = private unnamed_addr constant [126 x i8] c"\0AStep %d, time %g (ps)  LINCS WARNING\0Arelative constraint deviation after LINCS:\0Amax %.6f (between atoms %d and %d) rms %.6f\0A\00", align 1
@.str33 = private unnamed_addr constant [5 x i8] c"at_c\00", align 1
@.str34 = private unnamed_addr constant [6 x i8] c"at_cn\00", align 1
@.str35 = private unnamed_addr constant [6 x i8] c"at_cm\00", align 1
@.str36 = private unnamed_addr constant [9 x i8] c"at_c[a1]\00", align 1
@.str37 = private unnamed_addr constant [9 x i8] c"at_c[a2]\00", align 1
@.str38 = private unnamed_addr constant [3 x i8] c"*r\00", align 1
@.str39 = private unnamed_addr constant [6 x i8] c"*bla1\00", align 1
@.str40 = private unnamed_addr constant [6 x i8] c"*bla2\00", align 1
@.str41 = private unnamed_addr constant [6 x i8] c"*blnr\00", align 1
@.str42 = private unnamed_addr constant [7 x i8] c"*bllen\00", align 1
@.str43 = private unnamed_addr constant [5 x i8] c"*blc\00", align 1
@.str44 = private unnamed_addr constant [6 x i8] c"*tmp1\00", align 1
@.str45 = private unnamed_addr constant [6 x i8] c"*tmp2\00", align 1
@.str46 = private unnamed_addr constant [6 x i8] c"*tmp3\00", align 1
@.str47 = private unnamed_addr constant [10 x i8] c"*lincslam\00", align 1
@.str48 = private unnamed_addr constant [8 x i8] c"*bllen0\00", align 1
@.str49 = private unnamed_addr constant [7 x i8] c"*ddist\00", align 1
@.str50 = private unnamed_addr constant [7 x i8] c"*blbnb\00", align 1
@.str51 = private unnamed_addr constant [6 x i8] c"*blcc\00", align 1
@.str52 = private unnamed_addr constant [5 x i8] c"*blm\00", align 1
@.str53 = private unnamed_addr constant [88 x i8] c"It is not allowed to have a constraint length zero and non-zero in the A and B topology\00", align 1
@.str54 = private unnamed_addr constant [8 x i8] c"at_c[i]\00", align 1
@.str55 = private unnamed_addr constant [40 x i8] c"\0AInitializing LINear Constraint Solver\0A\00", align 1
@.str56 = private unnamed_addr constant [31 x i8] c"  number of constraints is %d\0A\00", align 1
@.str57 = private unnamed_addr constant [67 x i8] c"  average number of constraints coupled to one constraint is %.1f\0A\00", align 1
@.str58 = private unnamed_addr constant [41 x i8] c"  found %d constraints with zero length\0A\00", align 1
@.str60 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str61 = private unnamed_addr constant [44 x i8] c"i: %5d, iatom: (%5d %5d %5d), blocknr: %5d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @constrain(%struct._IO_FILE* %log, %struct.t_topology* %top, %struct.t_inputrec* %ir, i32 %step, %struct.t_mdatoms* nocapture %md, i32 %start, i32 %homenr, [3 x float]* %x, [3 x float]* %xprime, [3 x float]* %min_proj, [3 x float]* %box, float %lambda, float* %dvdlambda, %struct.t_nrnb* %nrnb, i32 %bCoordinates) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !680), !dbg !1017
  tail call void @llvm.dbg.value(metadata !{%struct.t_topology* %top}, i64 0, metadata !681), !dbg !1017
  tail call void @llvm.dbg.value(metadata !{%struct.t_inputrec* %ir}, i64 0, metadata !682), !dbg !1017
  tail call void @llvm.dbg.value(metadata !{i32 %step}, i64 0, metadata !683), !dbg !1017
  tail call void @llvm.dbg.value(metadata !{%struct.t_mdatoms* %md}, i64 0, metadata !684), !dbg !1018
  tail call void @llvm.dbg.value(metadata !{i32 %start}, i64 0, metadata !685), !dbg !1018
  tail call void @llvm.dbg.value(metadata !{i32 %homenr}, i64 0, metadata !686), !dbg !1018
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !687), !dbg !1019
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %xprime}, i64 0, metadata !688), !dbg !1019
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %min_proj}, i64 0, metadata !689), !dbg !1019
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !690), !dbg !1019
  tail call void @llvm.dbg.value(metadata !{float %lambda}, i64 0, metadata !691), !dbg !1020
  tail call void @llvm.dbg.value(metadata !{float* %dvdlambda}, i64 0, metadata !692), !dbg !1020
  tail call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %nrnb}, i64 0, metadata !693), !dbg !1020
  tail call void @llvm.dbg.value(metadata !{i32 %bCoordinates}, i64 0, metadata !694), !dbg !1020
  %call = tail call fastcc i32 @low_constrain(%struct._IO_FILE* %log, %struct.t_topology* %top, %struct.t_inputrec* %ir, i32 %step, %struct.t_mdatoms* %md, i32 %start, i32 %homenr, [3 x float]* %x, [3 x float]* %xprime, [3 x float]* %min_proj, [3 x float]* %box, float %lambda, float* %dvdlambda, %struct.t_nrnb* %nrnb, i32 %bCoordinates, i32 0) #6, !dbg !1021
  ret i32 %call, !dbg !1021
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @low_constrain(%struct._IO_FILE* %log, %struct.t_topology* %top, %struct.t_inputrec* %ir, i32 %step, %struct.t_mdatoms* nocapture %md, i32 %start, i32 %homenr, [3 x float]* %x, [3 x float]* %xprime, [3 x float]* %min_proj, [3 x float]* %box, float %lambda, float* %dvdlambda, %struct.t_nrnb* %nrnb, i32 %bCoordinates, i32 %bInit) #0 {
entry:
  %buf.i = alloca [256 x i8], align 16
  %error = alloca i32, align 4
  %mO = alloca float, align 4
  %mH = alloca float, align 4
  %dOH = alloca float, align 4
  %dHH = alloca float, align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !801), !dbg !1022
  call void @llvm.dbg.value(metadata !{%struct.t_topology* %top}, i64 0, metadata !802), !dbg !1022
  call void @llvm.dbg.value(metadata !{%struct.t_inputrec* %ir}, i64 0, metadata !803), !dbg !1022
  call void @llvm.dbg.value(metadata !{i32 %step}, i64 0, metadata !804), !dbg !1023
  call void @llvm.dbg.value(metadata !{%struct.t_mdatoms* %md}, i64 0, metadata !805), !dbg !1023
  call void @llvm.dbg.value(metadata !{i32 %start}, i64 0, metadata !806), !dbg !1023
  call void @llvm.dbg.value(metadata !{i32 %homenr}, i64 0, metadata !807), !dbg !1023
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !808), !dbg !1024
  call void @llvm.dbg.value(metadata !{[3 x float]* %xprime}, i64 0, metadata !809), !dbg !1024
  call void @llvm.dbg.value(metadata !{[3 x float]* %min_proj}, i64 0, metadata !810), !dbg !1024
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !811), !dbg !1024
  call void @llvm.dbg.value(metadata !{float %lambda}, i64 0, metadata !812), !dbg !1025
  call void @llvm.dbg.value(metadata !{float* %dvdlambda}, i64 0, metadata !813), !dbg !1025
  call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %nrnb}, i64 0, metadata !814), !dbg !1025
  call void @llvm.dbg.value(metadata !{i32 %bCoordinates}, i64 0, metadata !815), !dbg !1026
  call void @llvm.dbg.value(metadata !{i32 %bInit}, i64 0, metadata !816), !dbg !1026
  %arrayidx = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 2, !dbg !1027
  call void @llvm.dbg.value(metadata !{%struct.t_block* %arrayidx}, i64 0, metadata !828), !dbg !1027
  %idef2 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, !dbg !1028
  call void @llvm.dbg.value(metadata !{%struct.t_idef* %idef2}, i64 0, metadata !830), !dbg !1028
  call void @llvm.dbg.declare(metadata !{i32* %error}, metadata !840), !dbg !1029
  call void @llvm.dbg.value(metadata !1030, i64 0, metadata !819), !dbg !1031
  %tobool = icmp eq i32 %bInit, 0, !dbg !1032
  br i1 %tobool, label %if.else187, label %if.then, !dbg !1032

if.then:                                          ; preds = %entry
  %etc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 27, !dbg !1033
  %0 = load i32* %etc, align 4, !dbg !1033, !tbaa !1035
  %cmp = icmp eq i32 %0, 1, !dbg !1033
  br i1 %cmp, label %if.then4, label %lor.lhs.false, !dbg !1033

lor.lhs.false:                                    ; preds = %if.then
  %epc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 28, !dbg !1033
  %1 = load i32* %epc, align 4, !dbg !1033, !tbaa !1035
  %cmp3 = icmp eq i32 %1, 1, !dbg !1033
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !1033

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  call void @please_cite(%struct._IO_FILE* %log, i8* getelementptr inbounds ([13 x i8]* @.str2, i64 0, i64 0)) #7, !dbg !1038
  br label %if.end, !dbg !1038

if.end:                                           ; preds = %if.then4, %lor.lhs.false
  %nr = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 29, i32 0, !dbg !1039
  %2 = load i32* %nr, align 4, !dbg !1039, !tbaa !1035
  %div = sdiv i32 %2, 2, !dbg !1039
  store i32 %div, i32* @low_constrain.nsettle, align 4, !dbg !1039, !tbaa !1035
  %cmp6 = icmp sgt i32 %2, 1, !dbg !1040
  br i1 %cmp6, label %if.then7, label %if.end36, !dbg !1040

if.then7:                                         ; preds = %if.end
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 461, i32 %div, i32 4) #7, !dbg !1041
  %3 = bitcast i8* %call to i32*, !dbg !1041
  store i32* %3, i32** @low_constrain.owptr, align 8, !dbg !1041, !tbaa !1043
  %iatoms = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 29, i32 2, !dbg !1044
  %4 = load i32** %iatoms, align 8, !dbg !1044, !tbaa !1043
  %5 = load i32* %4, align 4, !dbg !1044, !tbaa !1035
  store i32 %5, i32* @low_constrain.settle_type, align 4, !dbg !1044, !tbaa !1035
  call void @llvm.dbg.value(metadata !225, i64 0, metadata !835), !dbg !1045
  %6 = load i32* %nr, align 4, !dbg !1045, !tbaa !1035
  %cmp14419 = icmp sgt i32 %6, 0, !dbg !1045
  br i1 %cmp14419, label %for.body, label %for.end, !dbg !1045

for.body:                                         ; preds = %if.then7, %if.end26.for.body_crit_edge
  %7 = phi i32 [ %.pre440, %if.end26.for.body_crit_edge ], [ %5, %if.then7 ]
  %8 = phi i32* [ %11, %if.end26.for.body_crit_edge ], [ %3, %if.then7 ]
  %9 = phi i32* [ %12, %if.end26.for.body_crit_edge ], [ %4, %if.then7 ]
  %indvars.iv436 = phi i64 [ %indvars.iv.next437, %if.end26.for.body_crit_edge ], [ 0, %if.then7 ]
  %arrayidx18 = getelementptr inbounds i32* %9, i64 %indvars.iv436, !dbg !1047
  %10 = load i32* %arrayidx18, align 4, !dbg !1047, !tbaa !1035
  %cmp19 = icmp eq i32 %10, %7, !dbg !1047
  br i1 %cmp19, label %if.end26, label %if.then20, !dbg !1047

if.then20:                                        ; preds = %for.body
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str5, i64 0, i64 0), i32 %7, i32 %10) #7, !dbg !1049
  %.pre = load i32** %iatoms, align 8, !dbg !1050, !tbaa !1043
  %.pre439 = load i32** @low_constrain.owptr, align 8, !dbg !1050, !tbaa !1043
  br label %if.end26, !dbg !1049

if.end26:                                         ; preds = %for.body, %if.then20
  %11 = phi i32* [ %8, %for.body ], [ %.pre439, %if.then20 ], !dbg !1050
  %12 = phi i32* [ %9, %for.body ], [ %.pre, %if.then20 ], !dbg !1050
  %13 = or i64 %indvars.iv436, 1, !dbg !1050
  %arrayidx31 = getelementptr inbounds i32* %12, i64 %13, !dbg !1050
  %14 = load i32* %arrayidx31, align 4, !dbg !1050, !tbaa !1035
  %15 = trunc i64 %indvars.iv436 to i32, !dbg !1050
  %div32 = sdiv i32 %15, 2, !dbg !1050
  %idxprom33 = sext i32 %div32 to i64, !dbg !1050
  %arrayidx34 = getelementptr inbounds i32* %11, i64 %idxprom33, !dbg !1050
  store i32 %14, i32* %arrayidx34, align 4, !dbg !1050, !tbaa !1035
  %indvars.iv.next437 = add i64 %indvars.iv436, 2, !dbg !1045
  %16 = load i32* %nr, align 4, !dbg !1045, !tbaa !1035
  %17 = trunc i64 %indvars.iv.next437 to i32, !dbg !1045
  %cmp14 = icmp slt i32 %17, %16, !dbg !1045
  br i1 %cmp14, label %if.end26.for.body_crit_edge, label %for.end, !dbg !1045

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  %.pre440 = load i32* @low_constrain.settle_type, align 4, !dbg !1047, !tbaa !1035
  br label %for.body, !dbg !1045

for.end:                                          ; preds = %if.end26, %if.then7
  call void @please_cite(%struct._IO_FILE* %log, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #7, !dbg !1051
  br label %if.end36, !dbg !1052

if.end36:                                         ; preds = %for.end, %if.end
  %nr39 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 27, i32 0, !dbg !1053
  %18 = load i32* %nr39, align 4, !dbg !1053, !tbaa !1035
  %div40 = sdiv i32 %18, 3, !dbg !1053
  call void @llvm.dbg.value(metadata !{i32 %div40}, i64 0, metadata !838), !dbg !1053
  %cmp41 = icmp sgt i32 %18, 2, !dbg !1054
  br i1 %cmp41, label %if.then42, label %if.end173, !dbg !1054

if.then42:                                        ; preds = %if.end36
  %nodeid = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 1, !dbg !1055
  %19 = load i32* %nodeid, align 4, !dbg !1055, !tbaa !1035
  %cmp43 = icmp sgt i32 %19, 0, !dbg !1055
  br i1 %cmp43, label %cond.true, label %cond.end, !dbg !1055

cond.true:                                        ; preds = %if.then42
  %sub = add nsw i32 %19, -1, !dbg !1055
  %idxprom45 = sext i32 %sub to i64, !dbg !1055
  %arrayidx46 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 2, i32 0, i64 %idxprom45, !dbg !1055
  %20 = load i32* %arrayidx46, align 4, !dbg !1055, !tbaa !1035
  br label %cond.end, !dbg !1055

cond.end:                                         ; preds = %if.then42, %cond.true
  %cond = phi i32 [ %20, %cond.true ], [ 0, %if.then42 ], !dbg !1055
  call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !839), !dbg !1055
  %idxprom48 = sext i32 %19 to i64, !dbg !1057
  %arrayidx50 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 2, i32 0, i64 %idxprom48, !dbg !1057
  %21 = load i32* %arrayidx50, align 4, !dbg !1057, !tbaa !1035
  %sub51 = sub nsw i32 %21, %cond, !dbg !1057
  store i32 %sub51, i32* @low_constrain.nblocks, align 4, !dbg !1057, !tbaa !1035
  %22 = load %struct._IO_FILE** @debug, align 8, !dbg !1058, !tbaa !1043
  %tobool52 = icmp eq %struct._IO_FILE* %22, null, !dbg !1058
  br i1 %tobool52, label %for.cond65.preheader.lr.ph, label %if.then53, !dbg !1058

if.then53:                                        ; preds = %cond.end
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([36 x i8]* @.str7, i64 0, i64 0), i32 %div40, i32 %cond, i32 %sub51) #7, !dbg !1059
  br label %for.cond65.preheader.lr.ph, !dbg !1059

for.cond65.preheader.lr.ph:                       ; preds = %if.then53, %cond.end
  %nr56 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1, !dbg !1060
  %23 = load i32* %nr56, align 4, !dbg !1060, !tbaa !1035
  %call57 = call i32* @make_invblock(%struct.t_block* %arrayidx, i32 %23) #7, !dbg !1060
  call void @llvm.dbg.value(metadata !{i32* %call57}, i64 0, metadata !833), !dbg !1060
  %iatoms60 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 27, i32 2, !dbg !1061
  %24 = load i32** %iatoms60, align 8, !dbg !1061, !tbaa !1043
  call void @llvm.dbg.value(metadata !{i32* %24}, i64 0, metadata !832), !dbg !1061
  %call61 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 499, i32 %div40, i32 16) #7, !dbg !1062
  %25 = bitcast i8* %call61 to %struct.t_sortblock*, !dbg !1062
  call void @llvm.dbg.value(metadata !{%struct.t_sortblock* %25}, i64 0, metadata !820), !dbg !1062
  call void @llvm.dbg.value(metadata !225, i64 0, metadata !834), !dbg !1063
  br label %for.cond65.preheader, !dbg !1063

for.cond65.preheader:                             ; preds = %for.cond65.preheader.lr.ph, %for.end76
  %indvars.iv434 = phi i64 [ 0, %for.cond65.preheader.lr.ph ], [ %indvars.iv.next435, %for.end76 ]
  %iatom.0418 = phi i32* [ %24, %for.cond65.preheader.lr.ph ], [ %add.ptr, %for.end76 ]
  br label %for.body67, !dbg !1065

for.body67:                                       ; preds = %for.body67, %for.cond65.preheader
  %indvars.iv430 = phi i64 [ 0, %for.cond65.preheader ], [ %indvars.iv.next431, %for.body67 ]
  %arrayidx69 = getelementptr inbounds i32* %iatom.0418, i64 %indvars.iv430, !dbg !1068
  %26 = load i32* %arrayidx69, align 4, !dbg !1068, !tbaa !1035
  %arrayidx74 = getelementptr inbounds %struct.t_sortblock* %25, i64 %indvars.iv434, i32 0, i64 %indvars.iv430, !dbg !1068
  store i32 %26, i32* %arrayidx74, align 4, !dbg !1068, !tbaa !1035
  %indvars.iv.next431 = add i64 %indvars.iv430, 1, !dbg !1065
  %lftr.wideiv432 = trunc i64 %indvars.iv.next431 to i32, !dbg !1065
  %exitcond433 = icmp eq i32 %lftr.wideiv432, 3, !dbg !1065
  br i1 %exitcond433, label %for.end76, label %for.body67, !dbg !1065

for.end76:                                        ; preds = %for.body67
  %arrayidx77 = getelementptr inbounds i32* %iatom.0418, i64 1, !dbg !1069
  %27 = load i32* %arrayidx77, align 4, !dbg !1069, !tbaa !1035
  %idxprom78 = sext i32 %27 to i64, !dbg !1069
  %arrayidx79 = getelementptr inbounds i32* %call57, i64 %idxprom78, !dbg !1069
  %28 = load i32* %arrayidx79, align 4, !dbg !1069, !tbaa !1035
  %blocknr = getelementptr inbounds %struct.t_sortblock* %25, i64 %indvars.iv434, i32 1, !dbg !1069
  store i32 %28, i32* %blocknr, align 4, !dbg !1069, !tbaa !1035
  %indvars.iv.next435 = add i64 %indvars.iv434, 1, !dbg !1063
  %add.ptr = getelementptr inbounds i32* %iatom.0418, i64 3, !dbg !1063
  call void @llvm.dbg.value(metadata !{i32* %add.ptr}, i64 0, metadata !832), !dbg !1063
  %29 = trunc i64 %indvars.iv.next435 to i32, !dbg !1063
  %cmp63 = icmp slt i32 %29, %div40, !dbg !1063
  br i1 %cmp63, label %for.cond65.preheader, label %for.end84, !dbg !1063

for.end84:                                        ; preds = %for.end76
  %30 = load %struct._IO_FILE** @debug, align 8, !dbg !1070, !tbaa !1043
  %tobool85 = icmp eq %struct._IO_FILE* %30, null, !dbg !1070
  br i1 %tobool85, label %if.end88, label %if.then86, !dbg !1070

if.then86:                                        ; preds = %for.end84
  call fastcc void @pr_sortblock(%struct._IO_FILE* %30, i8* getelementptr inbounds ([15 x i8]* @.str9, i64 0, i64 0), i32 %div40, %struct.t_sortblock* %25) #6, !dbg !1071
  %31 = load %struct._IO_FILE** @debug, align 8, !dbg !1073, !tbaa !1043
  %32 = call i64 @fwrite(i8* getelementptr inbounds ([27 x i8]* @.str10, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %31), !dbg !1073
  br label %if.end88, !dbg !1074

if.end88:                                         ; preds = %for.end84, %if.then86
  %conv = sext i32 %div40 to i64, !dbg !1075
  call void @qsort(i8* %call61, i64 %conv, i64 16, i32 (i8*, i8*)* @pcomp) #7, !dbg !1075
  %33 = load %struct._IO_FILE** @debug, align 8, !dbg !1076, !tbaa !1043
  %tobool89 = icmp eq %struct._IO_FILE* %33, null, !dbg !1076
  br i1 %tobool89, label %for.cond100.preheader.lr.ph, label %if.then90, !dbg !1076

if.then90:                                        ; preds = %if.end88
  %34 = load i32* @pcount, align 4, !dbg !1077, !tbaa !1035
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([26 x i8]* @.str11, i64 0, i64 0), i32 %34) #7, !dbg !1077
  %35 = load %struct._IO_FILE** @debug, align 8, !dbg !1079, !tbaa !1043
  call fastcc void @pr_sortblock(%struct._IO_FILE* %35, i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), i32 %div40, %struct.t_sortblock* %25) #6, !dbg !1079
  br label %for.cond100.preheader.lr.ph, !dbg !1080

for.cond100.preheader.lr.ph:                      ; preds = %if.then90, %if.end88
  call void @llvm.dbg.value(metadata !{i32* %36}, i64 0, metadata !832), !dbg !1081
  call void @llvm.dbg.value(metadata !225, i64 0, metadata !834), !dbg !1082
  %36 = load i32** %iatoms60, align 8, !dbg !1081, !tbaa !1043
  br label %for.cond100.preheader, !dbg !1082

for.cond100.preheader:                            ; preds = %for.cond100.preheader.lr.ph, %for.inc114
  %indvars.iv428 = phi i64 [ 0, %for.cond100.preheader.lr.ph ], [ %indvars.iv.next429, %for.inc114 ]
  %iatom.1414 = phi i32* [ %36, %for.cond100.preheader.lr.ph ], [ %add.ptr116, %for.inc114 ]
  br label %for.body103, !dbg !1084

for.body103:                                      ; preds = %for.body103, %for.cond100.preheader
  %indvars.iv425 = phi i64 [ 0, %for.cond100.preheader ], [ %indvars.iv.next426, %for.body103 ]
  %arrayidx108 = getelementptr inbounds %struct.t_sortblock* %25, i64 %indvars.iv428, i32 0, i64 %indvars.iv425, !dbg !1086
  %37 = load i32* %arrayidx108, align 4, !dbg !1086, !tbaa !1035
  %arrayidx110 = getelementptr inbounds i32* %iatom.1414, i64 %indvars.iv425, !dbg !1086
  store i32 %37, i32* %arrayidx110, align 4, !dbg !1086, !tbaa !1035
  %indvars.iv.next426 = add i64 %indvars.iv425, 1, !dbg !1084
  %lftr.wideiv = trunc i64 %indvars.iv.next426 to i32, !dbg !1084
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !1084
  br i1 %exitcond, label %for.inc114, label %for.body103, !dbg !1084

for.inc114:                                       ; preds = %for.body103
  %indvars.iv.next429 = add i64 %indvars.iv428, 1, !dbg !1082
  %add.ptr116 = getelementptr inbounds i32* %iatom.1414, i64 3, !dbg !1082
  call void @llvm.dbg.value(metadata !{i32* %add.ptr116}, i64 0, metadata !832), !dbg !1082
  %38 = trunc i64 %indvars.iv.next429 to i32, !dbg !1082
  %cmp97 = icmp slt i32 %38, %div40, !dbg !1082
  br i1 %cmp97, label %for.cond100.preheader, label %for.body123.lr.ph, !dbg !1082

for.body123.lr.ph:                                ; preds = %for.inc114
  call void @llvm.dbg.value(metadata !225, i64 0, metadata !835), !dbg !1087
  %39 = load i32* @low_constrain.nblocks, align 4, !dbg !1088, !tbaa !1035
  %add118 = add nsw i32 %39, 1, !dbg !1088
  %call119 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 528, i32 %add118, i32 4) #7, !dbg !1088
  %40 = bitcast i8* %call119 to i32*, !dbg !1088
  store i32* %40, i32** @low_constrain.sblock, align 8, !dbg !1088, !tbaa !1043
  call void @llvm.dbg.value(metadata !1089, i64 0, metadata !837), !dbg !1090
  call void @llvm.dbg.value(metadata !225, i64 0, metadata !834), !dbg !1091
  br label %for.body123, !dbg !1091

for.body123:                                      ; preds = %for.body123.lr.ph, %for.inc137
  %indvars.iv423 = phi i64 [ 0, %for.body123.lr.ph ], [ %indvars.iv.next424, %for.inc137 ]
  %j.1409 = phi i32 [ 0, %for.body123.lr.ph ], [ %j.2, %for.inc137 ]
  %bnr.0408 = phi i32 [ -2, %for.body123.lr.ph ], [ %bnr.1, %for.inc137 ]
  %blocknr126 = getelementptr inbounds %struct.t_sortblock* %25, i64 %indvars.iv423, i32 1, !dbg !1093
  %41 = load i32* %blocknr126, align 4, !dbg !1093, !tbaa !1035
  %cmp127 = icmp eq i32 %41, %bnr.0408, !dbg !1093
  br i1 %cmp127, label %for.inc137, label %if.then129, !dbg !1093

if.then129:                                       ; preds = %for.body123
  call void @llvm.dbg.value(metadata !{i32 %41}, i64 0, metadata !837), !dbg !1095
  %42 = trunc i64 %indvars.iv423 to i32, !dbg !1097
  %mul = mul nsw i32 %42, 3, !dbg !1097
  %inc133 = add nsw i32 %j.1409, 1, !dbg !1097
  call void @llvm.dbg.value(metadata !{i32 %inc133}, i64 0, metadata !835), !dbg !1097
  %idxprom134 = sext i32 %j.1409 to i64, !dbg !1097
  %arrayidx135 = getelementptr inbounds i32* %40, i64 %idxprom134, !dbg !1097
  store i32 %mul, i32* %arrayidx135, align 4, !dbg !1097, !tbaa !1035
  br label %for.inc137, !dbg !1098

for.inc137:                                       ; preds = %for.body123, %if.then129
  %bnr.1 = phi i32 [ %41, %if.then129 ], [ %bnr.0408, %for.body123 ]
  %j.2 = phi i32 [ %inc133, %if.then129 ], [ %j.1409, %for.body123 ]
  %indvars.iv.next424 = add i64 %indvars.iv423, 1, !dbg !1091
  %43 = trunc i64 %indvars.iv.next424 to i32, !dbg !1091
  %cmp121 = icmp slt i32 %43, %div40, !dbg !1091
  br i1 %cmp121, label %for.body123, label %for.end139, !dbg !1091

for.end139:                                       ; preds = %for.inc137
  %mul140 = mul nsw i32 %div40, 3, !dbg !1099
  call void @llvm.dbg.value(metadata !{i32 %inc141}, i64 0, metadata !835), !dbg !1099
  %idxprom142 = sext i32 %j.2 to i64, !dbg !1099
  %arrayidx143 = getelementptr inbounds i32* %40, i64 %idxprom142, !dbg !1099
  store i32 %mul140, i32* %arrayidx143, align 4, !dbg !1099, !tbaa !1035
  %44 = load i32* @low_constrain.nblocks, align 4, !dbg !1100, !tbaa !1035
  %cmp145 = icmp eq i32 %j.2, %44, !dbg !1100
  %tobool147 = icmp eq %struct._IO_FILE* %log, null, !dbg !1100
  %or.cond = or i1 %cmp145, %tobool147, !dbg !1100
  br i1 %or.cond, label %if.end172, label %for.body154.lr.ph, !dbg !1100

for.body154.lr.ph:                                ; preds = %for.end139
  %inc141 = add nsw i32 %j.2, 1, !dbg !1099
  %call149 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([12 x i8]* @.str14, i64 0, i64 0), i32 %cond) #7, !dbg !1101
  %45 = load i32* @low_constrain.nblocks, align 4, !dbg !1103, !tbaa !1035
  %call150 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([31 x i8]* @.str15, i64 0, i64 0), i32 %inc141, i32 %45, i32 %div40) #7, !dbg !1103
  call void @llvm.dbg.value(metadata !225, i64 0, metadata !834), !dbg !1104
  br label %for.body154, !dbg !1104

for.cond162.preheader:                            ; preds = %for.body154
  %46 = load i32* @low_constrain.nblocks, align 4, !dbg !1106, !tbaa !1035
  %cmp163403 = icmp slt i32 %46, 0, !dbg !1106
  br i1 %cmp163403, label %for.end171, label %for.body165, !dbg !1106

for.body154:                                      ; preds = %for.body154.lr.ph, %for.body154
  %indvars.iv421 = phi i64 [ 0, %for.body154.lr.ph ], [ %indvars.iv.next422, %for.body154 ]
  %blocknr157 = getelementptr inbounds %struct.t_sortblock* %25, i64 %indvars.iv421, i32 1, !dbg !1108
  %47 = load i32* %blocknr157, align 4, !dbg !1108, !tbaa !1035
  %48 = trunc i64 %indvars.iv421 to i32, !dbg !1108
  %call158 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([28 x i8]* @.str16, i64 0, i64 0), i32 %48, i32 %47) #7, !dbg !1108
  %indvars.iv.next422 = add i64 %indvars.iv421, 1, !dbg !1104
  %49 = trunc i64 %indvars.iv.next422 to i32, !dbg !1104
  %cmp152 = icmp slt i32 %49, %div40, !dbg !1104
  br i1 %cmp152, label %for.body154, label %for.cond162.preheader, !dbg !1104

for.body165:                                      ; preds = %for.cond162.preheader, %for.body165
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body165 ], [ 0, %for.cond162.preheader ]
  %50 = load i32** @low_constrain.sblock, align 8, !dbg !1109, !tbaa !1043
  %arrayidx167 = getelementptr inbounds i32* %50, i64 %indvars.iv, !dbg !1109
  %51 = load i32* %arrayidx167, align 4, !dbg !1109, !tbaa !1035
  %52 = trunc i64 %indvars.iv to i32, !dbg !1109
  %call168 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([17 x i8]* @.str17, i64 0, i64 0), i32 %52, i32 %51) #7, !dbg !1109
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1106
  %53 = load i32* @low_constrain.nblocks, align 4, !dbg !1106, !tbaa !1035
  %cmp163 = icmp slt i32 %52, %53, !dbg !1106
  br i1 %cmp163, label %for.body165, label %for.end171, !dbg !1106

for.end171:                                       ; preds = %for.body165, %for.cond162.preheader
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([70 x i8]* @.str18, i64 0, i64 0)) #7, !dbg !1110
  br label %if.end172, !dbg !1111

if.end172:                                        ; preds = %for.end139, %for.end171
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 550, i8* %call61) #7, !dbg !1112
  %54 = bitcast i32* %call57 to i8*, !dbg !1113
  call void @save_free(i8* getelementptr inbounds ([11 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 551, i8* %54) #7, !dbg !1113
  %.pr = load i32* %nr39, align 4, !dbg !1114, !tbaa !1035
  br label %if.end173, !dbg !1115

if.end173:                                        ; preds = %if.end172, %if.end36
  %55 = phi i32 [ %.pr, %if.end172 ], [ %18, %if.end36 ], !dbg !1114
  %tobool177 = icmp eq i32 %55, 0, !dbg !1114
  br i1 %tobool177, label %if.end263, label %if.then178, !dbg !1114

if.then178:                                       ; preds = %if.end173
  %eConstrAlg = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 64, !dbg !1116
  %56 = load i32* %eConstrAlg, align 4, !dbg !1116, !tbaa !1035
  %cmp179 = icmp eq i32 %56, 0, !dbg !1116
  %tobool182 = icmp eq i32 %bCoordinates, 0, !dbg !1116
  %or.cond399 = or i1 %cmp179, %tobool182, !dbg !1116
  %57 = load %struct._IO_FILE** @stdlog, align 8, !dbg !1118, !tbaa !1043
  br i1 %or.cond399, label %if.then183, label %if.else, !dbg !1116

if.then183:                                       ; preds = %if.then178
  call void @please_cite(%struct._IO_FILE* %57, i8* getelementptr inbounds ([8 x i8]* @.str20, i64 0, i64 0)) #7, !dbg !1118
  %call184 = call fastcc i32 @constrain_lincs(%struct.t_topology* %top, %struct.t_inputrec* %ir, i32 0, %struct.t_mdatoms* %md, i32 %start, i32 %homenr, [3 x float]* null, [3 x float]* null, [3 x float]* null, float 0.000000e+00, float* null, i32 %bCoordinates, i32 1, %struct.t_nrnb* %nrnb) #6, !dbg !1120
  call void @llvm.dbg.value(metadata !{i32 %call184}, i64 0, metadata !819), !dbg !1120
  br label %if.end263, !dbg !1121

if.else:                                          ; preds = %if.then178
  call void @please_cite(%struct._IO_FILE* %57, i8* getelementptr inbounds ([12 x i8]* @.str21, i64 0, i64 0)) #7, !dbg !1122
  br label %if.end263

if.else187:                                       ; preds = %entry
  %58 = load i32* @low_constrain.nblocks, align 4, !dbg !1123, !tbaa !1035
  %cmp188 = icmp sgt i32 %58, 0, !dbg !1123
  br i1 %cmp188, label %if.then190, label %if.end215, !dbg !1123

if.then190:                                       ; preds = %if.else187
  call void @_where(i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 568) #7, !dbg !1124
  %eConstrAlg191 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 64, !dbg !1126
  %59 = load i32* %eConstrAlg191, align 4, !dbg !1126, !tbaa !1035
  switch i32 %59, label %if.end215 [
    i32 1, label %if.then194
    i32 0, label %if.then200
  ], !dbg !1126

if.then194:                                       ; preds = %if.then190
  %60 = load %struct._IO_FILE** @stdlog, align 8, !dbg !1127, !tbaa !1043
  %invmass = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5, !dbg !1127
  %61 = load float** %invmass, align 8, !dbg !1127, !tbaa !1043
  %62 = load i32* @low_constrain.nblocks, align 4, !dbg !1127, !tbaa !1035
  %63 = load i32** @low_constrain.sblock, align 8, !dbg !1127, !tbaa !1043
  %call195 = call i32 @bshakef(%struct._IO_FILE* %60, i32 %homenr, float* %61, i32 %62, i32* %63, %struct.t_idef* %idef2, %struct.t_inputrec* %ir, [3 x float]* %box, [3 x float]* %x, [3 x float]* %xprime, %struct.t_nrnb* %nrnb, float %lambda, float* %dvdlambda, i32 1) #7, !dbg !1127
  call void @llvm.dbg.value(metadata !{i32 %call195}, i64 0, metadata !819), !dbg !1127
  br label %if.end203, !dbg !1127

if.then200:                                       ; preds = %if.then190
  %call201 = call fastcc i32 @constrain_lincs(%struct.t_topology* %top, %struct.t_inputrec* %ir, i32 %step, %struct.t_mdatoms* %md, i32 %start, i32 %homenr, [3 x float]* %x, [3 x float]* %xprime, [3 x float]* %min_proj, float %lambda, float* %dvdlambda, i32 %bCoordinates, i32 0, %struct.t_nrnb* %nrnb) #6, !dbg !1128
  call void @llvm.dbg.value(metadata !{i32 %call201}, i64 0, metadata !819), !dbg !1128
  br label %if.end203, !dbg !1128

if.end203:                                        ; preds = %if.then200, %if.then194
  %bOK.0 = phi i32 [ %call195, %if.then194 ], [ %call201, %if.then200 ]
  %tobool204 = icmp eq i32 %bOK.0, 0, !dbg !1129
  %64 = load %struct._IO_FILE** @stdlog, align 8, !dbg !1129, !tbaa !1043
  %tobool208 = icmp ne %struct._IO_FILE* %64, null, !dbg !1129
  %or.cond264 = and i1 %tobool204, %tobool208, !dbg !1129
  br i1 %or.cond264, label %if.then209, label %if.end215, !dbg !1129

if.then209:                                       ; preds = %if.end203
  %65 = load i32* %eConstrAlg191, align 4, !dbg !1130, !tbaa !1035
  %idxprom211 = sext i32 %65 to i64, !dbg !1130
  %arrayidx212 = getelementptr inbounds [3 x i8*]* @eshake_names, i64 0, i64 %idxprom211, !dbg !1130
  %66 = load i8** %arrayidx212, align 8, !dbg !1130, !tbaa !1043
  %call213 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([45 x i8]* @.str22, i64 0, i64 0), i8* %66, i32 %step) #7, !dbg !1130
  br label %if.end215, !dbg !1130

if.end215:                                        ; preds = %if.then190, %if.then209, %if.end203, %if.else187
  %bOK.1 = phi i32 [ 0, %if.then209 ], [ %bOK.0, %if.end203 ], [ 1, %if.else187 ], [ 1, %if.then190 ]
  %67 = load i32* @low_constrain.nsettle, align 4, !dbg !1131, !tbaa !1035
  %cmp216 = icmp sgt i32 %67, 0, !dbg !1131
  br i1 %cmp216, label %if.then218, label %if.end257, !dbg !1131

if.then218:                                       ; preds = %if.end215
  call void @llvm.dbg.declare(metadata !{float* %mO}, metadata !844), !dbg !1132
  call void @llvm.dbg.declare(metadata !{float* %mH}, metadata !845), !dbg !1132
  call void @llvm.dbg.declare(metadata !{float* %dOH}, metadata !846), !dbg !1132
  call void @llvm.dbg.declare(metadata !{float* %dHH}, metadata !847), !dbg !1132
  %68 = load i32** @low_constrain.owptr, align 8, !dbg !1133, !tbaa !1043
  %69 = load i32* %68, align 4, !dbg !1133, !tbaa !1035
  call void @llvm.dbg.value(metadata !{i32 %69}, i64 0, metadata !841), !dbg !1133
  %idxprom220 = sext i32 %69 to i64, !dbg !1134
  %massA = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 2, !dbg !1134
  %70 = load float** %massA, align 8, !dbg !1134, !tbaa !1043
  %arrayidx221 = getelementptr inbounds float* %70, i64 %idxprom220, !dbg !1134
  %71 = load float* %arrayidx221, align 4, !dbg !1134, !tbaa !1135
  call void @llvm.dbg.value(metadata !{float %71}, i64 0, metadata !844), !dbg !1134
  store float %71, float* %mO, align 4, !dbg !1134, !tbaa !1135
  %add222 = add nsw i32 %69, 1, !dbg !1136
  %idxprom223 = sext i32 %add222 to i64, !dbg !1136
  %arrayidx225 = getelementptr inbounds float* %70, i64 %idxprom223, !dbg !1136
  %72 = load float* %arrayidx225, align 4, !dbg !1136, !tbaa !1135
  call void @llvm.dbg.value(metadata !{float %72}, i64 0, metadata !845), !dbg !1136
  store float %72, float* %mH, align 4, !dbg !1136, !tbaa !1135
  %73 = load i32* @low_constrain.settle_type, align 4, !dbg !1137, !tbaa !1035
  %idxprom226 = sext i32 %73 to i64, !dbg !1137
  %iparams = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 4, !dbg !1137
  %74 = load %union.t_iparams** %iparams, align 8, !dbg !1137, !tbaa !1043
  %doh = getelementptr inbounds %union.t_iparams* %74, i64 %idxprom226, i32 0, i32 0, !dbg !1137
  %75 = load float* %doh, align 4, !dbg !1137, !tbaa !1135
  call void @llvm.dbg.value(metadata !{float %75}, i64 0, metadata !846), !dbg !1137
  store float %75, float* %dOH, align 4, !dbg !1137, !tbaa !1135
  %76 = getelementptr inbounds %union.t_iparams* %74, i64 %idxprom226, i32 0, i32 1, !dbg !1138
  %77 = load float* %76, align 4, !dbg !1138, !tbaa !1135
  call void @llvm.dbg.value(metadata !{float %77}, i64 0, metadata !847), !dbg !1138
  store float %77, float* %dHH, align 4, !dbg !1138, !tbaa !1135
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 0, i64 0, !dbg !1139
  %arraydecay236 = getelementptr inbounds [3 x float]* %xprime, i64 0, i64 0, !dbg !1139
  call void @fsettle_(i32* @low_constrain.nsettle, i32* %68, float* %arraydecay, float* %arraydecay236, float* %dOH, float* %dHH, float* %mO, float* %mH, i32* %error) #7, !dbg !1139
  %78 = load i32* @low_constrain.nsettle, align 4, !dbg !1140, !tbaa !1035
  %conv237 = sitofp i32 %78 to double, !dbg !1140
  %arrayidx238 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 119, !dbg !1140
  %79 = load double* %arrayidx238, align 8, !dbg !1140, !tbaa !1141
  %add239 = fadd double %79, %conv237, !dbg !1140
  store double %add239, double* %arrayidx238, align 8, !dbg !1140, !tbaa !1141
  call void @llvm.dbg.value(metadata !{i32* %error}, i64 0, metadata !840), !dbg !1142
  %80 = load i32* %error, align 4, !dbg !1142, !tbaa !1035
  %.lobit = lshr i32 %80, 31, !dbg !1142
  call void @llvm.dbg.value(metadata !{i32 %.lobit}, i64 0, metadata !819), !dbg !1142
  %tobool242 = icmp eq i32 %.lobit, 0, !dbg !1143
  %81 = load %struct._IO_FILE** @stdlog, align 8, !dbg !1143, !tbaa !1043
  %tobool246 = icmp ne %struct._IO_FILE* %81, null, !dbg !1143
  %or.cond266 = and i1 %tobool242, %tobool246, !dbg !1143
  br i1 %or.cond266, label %if.end257.thread, label %if.end257, !dbg !1143

if.end257.thread:                                 ; preds = %if.then218
  %init_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 14, !dbg !1144
  %82 = load float* %init_t, align 4, !dbg !1144, !tbaa !1135
  %conv248 = sitofp i32 %step to float, !dbg !1144
  %delta_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15, !dbg !1144
  %83 = load float* %delta_t, align 4, !dbg !1144, !tbaa !1135
  %mul249 = fmul float %conv248, %83, !dbg !1144
  %add250 = fadd float %82, %mul249, !dbg !1144
  %conv251 = fpext float %add250 to double, !dbg !1144
  %idxprom252 = sext i32 %80 to i64, !dbg !1144
  %84 = load i32** @low_constrain.owptr, align 8, !dbg !1144, !tbaa !1043
  %arrayidx253 = getelementptr inbounds i32* %84, i64 %idxprom252, !dbg !1144
  %85 = load i32* %arrayidx253, align 4, !dbg !1144, !tbaa !1035
  %add254 = add nsw i32 %85, 1, !dbg !1144
  %call255 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([120 x i8]* @.str23, i64 0, i64 0), double %conv251, i32 %add254) #7, !dbg !1144
  br label %if.then261, !dbg !1145

if.end257:                                        ; preds = %if.then218, %if.end215
  %bOK.2 = phi i32 [ %.lobit, %if.then218 ], [ %bOK.1, %if.end215 ]
  %tobool258 = icmp eq i32 %bOK.2, 0, !dbg !1145
  br i1 %tobool258, label %if.then261, label %if.end263, !dbg !1145

if.then261:                                       ; preds = %if.end257.thread, %if.end257
  %atoms = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, !dbg !1146
  call void @llvm.dbg.value(metadata !{i32 %step}, i64 0, metadata !1147) #3, !dbg !1148
  call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !1149) #3, !dbg !1148
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !1150) #3, !dbg !1151
  call void @llvm.dbg.value(metadata !{[3 x float]* %xprime}, i64 0, metadata !1152) #3, !dbg !1151
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !1153) #3, !dbg !1151
  %86 = getelementptr inbounds [256 x i8]* %buf.i, i64 0, i64 0, !dbg !1154
  call void @llvm.lifetime.start(i64 256, i8* %86) #3, !dbg !1154
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %buf.i}, metadata !858) #3, !dbg !1154
  %sub.i = add nsw i32 %step, -1, !dbg !1155
  %call.i = call i32 (i8*, i8*, ...)* @sprintf(i8* %86, i8* getelementptr inbounds ([11 x i8]* @.str24, i64 0, i64 0), i32 %sub.i) #7, !dbg !1155
  call void @write_sto_conf(i8* %86, i8* getelementptr inbounds ([22 x i8]* @.str25, i64 0, i64 0), %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* null, [3 x float]* %box) #7, !dbg !1156
  %call3.i = call i32 (i8*, i8*, ...)* @sprintf(i8* %86, i8* getelementptr inbounds ([11 x i8]* @.str24, i64 0, i64 0), i32 %step) #7, !dbg !1157
  call void @write_sto_conf(i8* %86, i8* getelementptr inbounds ([8 x i8]* @.str26, i64 0, i64 0), %struct.t_atoms* %atoms, [3 x float]* %xprime, [3 x float]* null, [3 x float]* %box) #7, !dbg !1158
  %87 = load %struct._IO_FILE** @stdlog, align 8, !dbg !1159, !tbaa !1043
  %tobool.i = icmp eq %struct._IO_FILE* %87, null, !dbg !1159
  br i1 %tobool.i, label %dump_confs.exit, label %if.then.i, !dbg !1159

if.then.i:                                        ; preds = %if.then261
  %88 = call i64 @fwrite(i8* getelementptr inbounds ([55 x i8]* @.str27, i64 0, i64 0), i64 54, i64 1, %struct._IO_FILE* %87) #3, !dbg !1160
  br label %dump_confs.exit, !dbg !1160

dump_confs.exit:                                  ; preds = %if.then261, %if.then.i
  %89 = load %struct._IO_FILE** @stderr, align 8, !dbg !1161, !tbaa !1043
  %90 = call i64 @fwrite(i8* getelementptr inbounds ([55 x i8]* @.str27, i64 0, i64 0), i64 54, i64 1, %struct._IO_FILE* %89) #3, !dbg !1161
  call void @llvm.lifetime.end(i64 256, i8* %86) #3, !dbg !1162
  br label %if.end263, !dbg !1146

if.end263:                                        ; preds = %if.end173, %dump_confs.exit, %if.end257, %if.else, %if.then183
  %bOK.3 = phi i32 [ %call184, %if.then183 ], [ 1, %if.else ], [ 1, %if.end173 ], [ 0, %dump_confs.exit ], [ %bOK.2, %if.end257 ]
  ret i32 %bOK.3, !dbg !1163
}

; Function Attrs: nounwind optsize uwtable
define i32 @count_constraints(%struct.t_topology* nocapture %top, %struct.t_commrec* %cr) #0 {
entry:
  %nc = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct.t_topology* %top}, i64 0, metadata !710), !dbg !1164
  call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !711), !dbg !1164
  call void @llvm.dbg.declare(metadata !{i32* %nc}, metadata !712), !dbg !1165
  %nr = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 29, i32 0, !dbg !1166
  %0 = load i32* %nr, align 4, !dbg !1166, !tbaa !1035
  %mul = mul nsw i32 %0, 3, !dbg !1166
  %div = sdiv i32 %mul, 2, !dbg !1166
  %nr4 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 27, i32 0, !dbg !1166
  %1 = load i32* %nr4, align 4, !dbg !1166, !tbaa !1035
  %div5 = sdiv i32 %1, 3, !dbg !1166
  %add = add nsw i32 %div5, %div, !dbg !1166
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !712), !dbg !1166
  store i32 %add, i32* %nc, align 4, !dbg !1166, !tbaa !1035
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !1167
  %2 = load i32* %nnodes, align 4, !dbg !1167, !tbaa !1035
  %cmp = icmp sgt i32 %2, 1, !dbg !1167
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1167

lor.lhs.false:                                    ; preds = %entry
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5, !dbg !1167
  %3 = load i32* %nthreads, align 4, !dbg !1167, !tbaa !1035
  %cmp6 = icmp sgt i32 %3, 1, !dbg !1167
  br i1 %cmp6, label %if.then, label %if.end, !dbg !1167

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @gmx_sumi(i32 1, i32* %nc, %struct.t_commrec* %cr) #7, !dbg !1168
  call void @llvm.dbg.value(metadata !{i32* %nc}, i64 0, metadata !712), !dbg !1169
  %.pre = load i32* %nc, align 4, !dbg !1169, !tbaa !1035
  br label %if.end, !dbg !1168

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %4 = phi i32 [ %.pre, %if.then ], [ %add, %lor.lhs.false ]
  call void @llvm.dbg.value(metadata !{i32* %nc}, i64 0, metadata !712), !dbg !1169
  ret i32 %4, !dbg !1169
}

; Function Attrs: optsize
declare void @gmx_sumi(i32, i32*, %struct.t_commrec*) #2

; Function Attrs: nounwind optsize uwtable
define i32 @init_constraints(%struct._IO_FILE* %log, %struct.t_topology* %top, %struct.t_inputrec* %ir, %struct.t_mdatoms* nocapture %md, i32 %start, i32 %homenr, i32 %bOnlyCoords, %struct.t_commrec* %cr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !717), !dbg !1170
  tail call void @llvm.dbg.value(metadata !{%struct.t_topology* %top}, i64 0, metadata !718), !dbg !1170
  tail call void @llvm.dbg.value(metadata !{%struct.t_inputrec* %ir}, i64 0, metadata !719), !dbg !1170
  tail call void @llvm.dbg.value(metadata !{%struct.t_mdatoms* %md}, i64 0, metadata !720), !dbg !1171
  tail call void @llvm.dbg.value(metadata !{i32 %start}, i64 0, metadata !721), !dbg !1171
  tail call void @llvm.dbg.value(metadata !{i32 %homenr}, i64 0, metadata !722), !dbg !1171
  tail call void @llvm.dbg.value(metadata !{i32 %bOnlyCoords}, i64 0, metadata !723), !dbg !1171
  tail call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !724), !dbg !1172
  %call = tail call fastcc i32 @low_constrain(%struct._IO_FILE* %log, %struct.t_topology* %top, %struct.t_inputrec* %ir, i32 0, %struct.t_mdatoms* %md, i32 %start, i32 %homenr, [3 x float]* null, [3 x float]* null, [3 x float]* null, [3 x float]* null, float 0.000000e+00, float* null, %struct.t_nrnb* null, i32 %bOnlyCoords, i32 1) #6, !dbg !1173
  %call1 = tail call i32 @count_constraints(%struct.t_topology* %top, %struct.t_commrec* %cr) #6, !dbg !1174
  ret i32 %call1, !dbg !1174
}

; Function Attrs: nounwind optsize uwtable
define void @lincs_warning([3 x float]* nocapture %x, [3 x float]* nocapture %xprime, i32 %ncons, i32* nocapture %bla1, i32* nocapture %bla2, float* nocapture %bllen, float %wangle) #0 {
entry:
  %buf = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !729), !dbg !1175
  call void @llvm.dbg.value(metadata !{[3 x float]* %xprime}, i64 0, metadata !730), !dbg !1175
  call void @llvm.dbg.value(metadata !{i32 %ncons}, i64 0, metadata !731), !dbg !1176
  call void @llvm.dbg.value(metadata !{i32* %bla1}, i64 0, metadata !732), !dbg !1176
  call void @llvm.dbg.value(metadata !{i32* %bla2}, i64 0, metadata !733), !dbg !1176
  call void @llvm.dbg.value(metadata !{float* %bllen}, i64 0, metadata !734), !dbg !1176
  call void @llvm.dbg.value(metadata !{float %wangle}, i64 0, metadata !735), !dbg !1176
  call void @llvm.dbg.declare(metadata !1177, metadata !739), !dbg !1178
  call void @llvm.dbg.declare(metadata !1177, metadata !740), !dbg !1178
  %0 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0, !dbg !1179
  call void @llvm.lifetime.start(i64 4096, i8* %0) #3, !dbg !1179
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %buf}, metadata !745), !dbg !1179
  %conv = fpext float %wangle to double, !dbg !1180
  %mul = fmul double %conv, 0x3F91DF46A2529D39, !dbg !1180
  %call = call double @cos(double %mul) #7, !dbg !1180
  %conv1 = fptrunc double %call to float, !dbg !1180
  call void @llvm.dbg.value(metadata !{float %conv1}, i64 0, metadata !741), !dbg !1180
  %call3 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([102 x i8]* @.str, i64 0, i64 0), double %conv) #7, !dbg !1181
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !1182, !tbaa !1043
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* %0) #7, !dbg !1182
  %2 = load %struct._IO_FILE** @stdlog, align 8, !dbg !1183, !tbaa !1043
  %tobool = icmp eq %struct._IO_FILE* %2, null, !dbg !1183
  br i1 %tobool, label %for.cond.preheader, label %if.then, !dbg !1183

if.then:                                          ; preds = %entry
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* %0) #7, !dbg !1184
  br label %for.cond.preheader, !dbg !1184

for.cond.preheader:                               ; preds = %entry, %if.then
  %cmp103 = icmp sgt i32 %ncons, 0, !dbg !1185
  br i1 %cmp103, label %for.body, label %for.end, !dbg !1185

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %bla1, i64 %indvars.iv, !dbg !1187
  %3 = load i32* %arrayidx, align 4, !dbg !1187, !tbaa !1035
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !737), !dbg !1187
  %arrayidx10 = getelementptr inbounds i32* %bla2, i64 %indvars.iv, !dbg !1189
  %4 = load i32* %arrayidx10, align 4, !dbg !1189, !tbaa !1035
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !738), !dbg !1189
  %idxprom11 = sext i32 %3 to i64, !dbg !1190
  %arraydecay13 = getelementptr inbounds [3 x float]* %x, i64 %idxprom11, i64 0, !dbg !1190
  %idxprom14 = sext i32 %4 to i64, !dbg !1190
  %arraydecay16 = getelementptr inbounds [3 x float]* %x, i64 %idxprom14, i64 0, !dbg !1190
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay13}, i64 0, metadata !1191), !dbg !1192
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay16}, i64 0, metadata !1193), !dbg !1192
  tail call void @llvm.dbg.value(metadata !1194, i64 0, metadata !1195), !dbg !1192
  %5 = load float* %arraydecay13, align 4, !dbg !1196, !tbaa !1135
  %6 = load float* %arraydecay16, align 4, !dbg !1196, !tbaa !1135
  %sub.i = fsub float %5, %6, !dbg !1196
  tail call void @llvm.dbg.value(metadata !{float %sub.i}, i64 0, metadata !1197), !dbg !1196
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom11, i64 1, !dbg !1198
  %7 = load float* %arrayidx2.i, align 4, !dbg !1198, !tbaa !1135
  %arrayidx3.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom14, i64 1, !dbg !1198
  %8 = load float* %arrayidx3.i, align 4, !dbg !1198, !tbaa !1135
  %sub4.i = fsub float %7, %8, !dbg !1198
  tail call void @llvm.dbg.value(metadata !{float %sub4.i}, i64 0, metadata !1199), !dbg !1198
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom11, i64 2, !dbg !1200
  %9 = load float* %arrayidx5.i, align 4, !dbg !1200, !tbaa !1135
  %arrayidx6.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom14, i64 2, !dbg !1200
  %10 = load float* %arrayidx6.i, align 4, !dbg !1200, !tbaa !1135
  %sub7.i = fsub float %9, %10, !dbg !1200
  tail call void @llvm.dbg.value(metadata !{float %sub7.i}, i64 0, metadata !1201), !dbg !1200
  %arraydecay20 = getelementptr inbounds [3 x float]* %xprime, i64 %idxprom11, i64 0, !dbg !1202
  %arraydecay23 = getelementptr inbounds [3 x float]* %xprime, i64 %idxprom14, i64 0, !dbg !1202
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay20}, i64 0, metadata !1203), !dbg !1204
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay23}, i64 0, metadata !1205), !dbg !1204
  tail call void @llvm.dbg.value(metadata !1194, i64 0, metadata !1206), !dbg !1204
  %11 = load float* %arraydecay20, align 4, !dbg !1207, !tbaa !1135
  %12 = load float* %arraydecay23, align 4, !dbg !1207, !tbaa !1135
  %sub.i80 = fsub float %11, %12, !dbg !1207
  tail call void @llvm.dbg.value(metadata !{float %sub.i80}, i64 0, metadata !1208), !dbg !1207
  %arrayidx2.i81 = getelementptr inbounds [3 x float]* %xprime, i64 %idxprom11, i64 1, !dbg !1209
  %13 = load float* %arrayidx2.i81, align 4, !dbg !1209, !tbaa !1135
  %arrayidx3.i82 = getelementptr inbounds [3 x float]* %xprime, i64 %idxprom14, i64 1, !dbg !1209
  %14 = load float* %arrayidx3.i82, align 4, !dbg !1209, !tbaa !1135
  %sub4.i83 = fsub float %13, %14, !dbg !1209
  tail call void @llvm.dbg.value(metadata !{float %sub4.i83}, i64 0, metadata !1210), !dbg !1209
  %arrayidx5.i84 = getelementptr inbounds [3 x float]* %xprime, i64 %idxprom11, i64 2, !dbg !1211
  %15 = load float* %arrayidx5.i84, align 4, !dbg !1211, !tbaa !1135
  %arrayidx6.i85 = getelementptr inbounds [3 x float]* %xprime, i64 %idxprom14, i64 2, !dbg !1211
  %16 = load float* %arrayidx6.i85, align 4, !dbg !1211, !tbaa !1135
  %sub7.i86 = fsub float %15, %16, !dbg !1211
  tail call void @llvm.dbg.value(metadata !{float %sub7.i86}, i64 0, metadata !1212), !dbg !1211
  call void @llvm.dbg.value(metadata !1194, i64 0, metadata !1213) #3, !dbg !1215
  %mul.i89 = fmul float %sub.i, %sub.i, !dbg !1216
  %mul4.i91 = fmul float %sub4.i, %sub4.i, !dbg !1216
  %add.i92 = fadd float %mul.i89, %mul4.i91, !dbg !1216
  %mul7.i94 = fmul float %sub7.i, %sub7.i, !dbg !1216
  %add8.i95 = fadd float %add.i92, %mul7.i94, !dbg !1216
  %conv9.i96 = call float @sqrtf(float %add8.i95) #4, !dbg !1216
  call void @llvm.dbg.value(metadata !{float %conv9.i96}, i64 0, metadata !742), !dbg !1214
  call void @llvm.dbg.value(metadata !1194, i64 0, metadata !1217) #3, !dbg !1219
  %mul.i73 = fmul float %sub.i80, %sub.i80, !dbg !1220
  %mul4.i75 = fmul float %sub4.i83, %sub4.i83, !dbg !1220
  %add.i76 = fadd float %mul.i73, %mul4.i75, !dbg !1220
  %mul7.i78 = fmul float %sub7.i86, %sub7.i86, !dbg !1220
  %add8.i79 = fadd float %add.i76, %mul7.i78, !dbg !1220
  %conv9.i = call float @sqrtf(float %add8.i79) #4, !dbg !1220
  call void @llvm.dbg.value(metadata !{float %conv9.i}, i64 0, metadata !743), !dbg !1218
  tail call void @llvm.dbg.value(metadata !1194, i64 0, metadata !1221), !dbg !1223
  tail call void @llvm.dbg.value(metadata !1194, i64 0, metadata !1224), !dbg !1223
  %mul.i = fmul float %sub.i, %sub.i80, !dbg !1225
  %mul4.i = fmul float %sub4.i, %sub4.i83, !dbg !1225
  %add.i = fadd float %mul.i, %mul4.i, !dbg !1225
  %mul7.i = fmul float %sub7.i, %sub7.i86, !dbg !1225
  %add8.i = fadd float %add.i, %mul7.i, !dbg !1225
  %mul32 = fmul float %conv9.i96, %conv9.i, !dbg !1222
  %div = fdiv float %add8.i, %mul32, !dbg !1222
  call void @llvm.dbg.value(metadata !{float %div}, i64 0, metadata !744), !dbg !1222
  %cmp33 = fcmp olt float %div, %conv1, !dbg !1227
  br i1 %cmp33, label %if.then35, label %for.inc, !dbg !1227

if.then35:                                        ; preds = %for.body
  %add = add nsw i32 %3, 1, !dbg !1228
  %add37 = add nsw i32 %4, 1, !dbg !1228
  %conv38 = fpext float %div to double, !dbg !1230
  %call39 = call double @acos(double %conv38) #7, !dbg !1230
  %mul40 = fmul double %call39, 0x404CA5DC1A63C1F8, !dbg !1230
  %conv41 = fpext float %conv9.i96 to double, !dbg !1230
  %conv42 = fpext float %conv9.i to double, !dbg !1230
  %arrayidx44 = getelementptr inbounds float* %bllen, i64 %indvars.iv, !dbg !1230
  %17 = load float* %arrayidx44, align 4, !dbg !1230, !tbaa !1135
  %conv45 = fpext float %17 to double, !dbg !1230
  %call46 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([39 x i8]* @.str1, i64 0, i64 0), i32 %add, i32 %add37, double %mul40, double %conv41, double %conv42, double %conv45) #7, !dbg !1230
  %18 = load %struct._IO_FILE** @stderr, align 8, !dbg !1231, !tbaa !1043
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* %0) #7, !dbg !1231
  %19 = load %struct._IO_FILE** @stdlog, align 8, !dbg !1232, !tbaa !1043
  %tobool49 = icmp eq %struct._IO_FILE* %19, null, !dbg !1232
  br i1 %tobool49, label %for.inc, label %if.then50, !dbg !1232

if.then50:                                        ; preds = %if.then35
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %19, i8* %0) #7, !dbg !1233
  br label %for.inc, !dbg !1233

for.inc:                                          ; preds = %if.then35, %for.body, %if.then50
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1185
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1185
  %exitcond = icmp eq i32 %lftr.wideiv, %ncons, !dbg !1185
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1185

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  call void @llvm.lifetime.end(i64 4096, i8* %0) #3, !dbg !1234
  ret void, !dbg !1234
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare double @cos(double) #4

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind optsize
declare double @acos(double) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @cconerr(float* nocapture %max, float* nocapture %rms, i32* nocapture %imax, [3 x float]* nocapture %xprime, i32 %ncons, i32* nocapture %bla1, i32* nocapture %bla2, float* nocapture %bllen) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %max}, i64 0, metadata !753), !dbg !1235
  tail call void @llvm.dbg.value(metadata !{float* %rms}, i64 0, metadata !754), !dbg !1235
  tail call void @llvm.dbg.value(metadata !{i32* %imax}, i64 0, metadata !755), !dbg !1235
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %xprime}, i64 0, metadata !756), !dbg !1235
  tail call void @llvm.dbg.value(metadata !{i32 %ncons}, i64 0, metadata !757), !dbg !1236
  tail call void @llvm.dbg.value(metadata !{i32* %bla1}, i64 0, metadata !758), !dbg !1236
  tail call void @llvm.dbg.value(metadata !{i32* %bla2}, i64 0, metadata !759), !dbg !1236
  tail call void @llvm.dbg.value(metadata !{float* %bllen}, i64 0, metadata !760), !dbg !1236
  tail call void @llvm.dbg.value(metadata !1237, i64 0, metadata !763), !dbg !1238
  tail call void @llvm.dbg.value(metadata !1237, i64 0, metadata !764), !dbg !1239
  tail call void @llvm.dbg.value(metadata !225, i64 0, metadata !771), !dbg !1240
  tail call void @llvm.dbg.value(metadata !225, i64 0, metadata !768), !dbg !1241
  %cmp65 = icmp sgt i32 %ncons, 0, !dbg !1241
  br i1 %cmp65, label %for.body, label %for.end, !dbg !1241

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %im.069 = phi i32 [ %im.1, %for.body ], [ 0, %entry ]
  %ma.068 = phi float [ %ma.1, %for.body ], [ 0.000000e+00, %entry ]
  %ms.067 = phi float [ %add36, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds i32* %bla1, i64 %indvars.iv, !dbg !1243
  %0 = load i32* %arrayidx, align 4, !dbg !1243, !tbaa !1035
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !769), !dbg !1243
  %arrayidx2 = getelementptr inbounds i32* %bla2, i64 %indvars.iv, !dbg !1245
  %1 = load i32* %arrayidx2, align 4, !dbg !1245, !tbaa !1035
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !770), !dbg !1245
  %idxprom3 = sext i32 %0 to i64, !dbg !1246
  %arrayidx5 = getelementptr inbounds [3 x float]* %xprime, i64 %idxprom3, i64 0, !dbg !1246
  %2 = load float* %arrayidx5, align 4, !dbg !1246, !tbaa !1135
  %idxprom6 = sext i32 %1 to i64, !dbg !1246
  %arrayidx8 = getelementptr inbounds [3 x float]* %xprime, i64 %idxprom6, i64 0, !dbg !1246
  %3 = load float* %arrayidx8, align 4, !dbg !1246, !tbaa !1135
  %sub = fsub float %2, %3, !dbg !1246
  tail call void @llvm.dbg.value(metadata !{float %sub}, i64 0, metadata !765), !dbg !1246
  %arrayidx11 = getelementptr inbounds [3 x float]* %xprime, i64 %idxprom3, i64 1, !dbg !1247
  %4 = load float* %arrayidx11, align 4, !dbg !1247, !tbaa !1135
  %arrayidx14 = getelementptr inbounds [3 x float]* %xprime, i64 %idxprom6, i64 1, !dbg !1247
  %5 = load float* %arrayidx14, align 4, !dbg !1247, !tbaa !1135
  %sub15 = fsub float %4, %5, !dbg !1247
  tail call void @llvm.dbg.value(metadata !{float %sub15}, i64 0, metadata !766), !dbg !1247
  %arrayidx18 = getelementptr inbounds [3 x float]* %xprime, i64 %idxprom3, i64 2, !dbg !1248
  %6 = load float* %arrayidx18, align 4, !dbg !1248, !tbaa !1135
  %arrayidx21 = getelementptr inbounds [3 x float]* %xprime, i64 %idxprom6, i64 2, !dbg !1248
  %7 = load float* %arrayidx21, align 4, !dbg !1248, !tbaa !1135
  %sub22 = fsub float %6, %7, !dbg !1248
  tail call void @llvm.dbg.value(metadata !{float %sub22}, i64 0, metadata !767), !dbg !1248
  %mul = fmul float %sub, %sub, !dbg !1249
  %mul23 = fmul float %sub15, %sub15, !dbg !1249
  %add = fadd float %mul, %mul23, !dbg !1249
  %mul24 = fmul float %sub22, %sub22, !dbg !1249
  %add25 = fadd float %add, %mul24, !dbg !1249
  %conv26 = tail call float @sqrtf(float %add25) #4, !dbg !1249
  tail call void @llvm.dbg.value(metadata !{float %conv26}, i64 0, metadata !761), !dbg !1249
  %arrayidx28 = getelementptr inbounds float* %bllen, i64 %indvars.iv, !dbg !1250
  %8 = load float* %arrayidx28, align 4, !dbg !1250, !tbaa !1135
  %div = fdiv float %conv26, %8, !dbg !1250
  %sub29 = fadd float %div, -1.000000e+00, !dbg !1250
  %fabsf = tail call float @fabsf(float %sub29) #8, !dbg !1250
  tail call void @llvm.dbg.value(metadata !{float %fabsf}, i64 0, metadata !762), !dbg !1250
  %cmp33 = fcmp ogt float %fabsf, %ma.068, !dbg !1251
  tail call void @llvm.dbg.value(metadata !{float %fabsf}, i64 0, metadata !763), !dbg !1252
  tail call void @llvm.dbg.value(metadata !1254, i64 0, metadata !771), !dbg !1255
  %ma.1 = select i1 %cmp33, float %fabsf, float %ma.068, !dbg !1251
  %9 = trunc i64 %indvars.iv to i32, !dbg !1251
  %im.1 = select i1 %cmp33, i32 %9, i32 %im.069, !dbg !1251
  %mul35 = fmul float %fabsf, %fabsf, !dbg !1256
  %add36 = fadd float %ms.067, %mul35, !dbg !1256
  tail call void @llvm.dbg.value(metadata !{float %add36}, i64 0, metadata !764), !dbg !1256
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1241
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1241
  %exitcond = icmp eq i32 %lftr.wideiv, %ncons, !dbg !1241
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1241

for.end:                                          ; preds = %for.body, %entry
  %im.0.lcssa = phi i32 [ 0, %entry ], [ %im.1, %for.body ]
  %ma.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %ma.1, %for.body ]
  %ms.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add36, %for.body ]
  store float %ma.0.lcssa, float* %max, align 4, !dbg !1257, !tbaa !1135
  %conv37 = sitofp i32 %ncons to float, !dbg !1258
  %div38 = fdiv float %ms.0.lcssa, %conv37, !dbg !1258
  %conv41 = tail call float @sqrtf(float %div38) #4, !dbg !1258
  store float %conv41, float* %rms, align 4, !dbg !1258, !tbaa !1135
  store i32 %im.0.lcssa, i32* %imax, align 4, !dbg !1259, !tbaa !1035
  ret void, !dbg !1260
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #4

; Function Attrs: optsize
declare void @please_cite(%struct._IO_FILE*, i8*) #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: optsize
declare i32* @make_invblock(%struct.t_block*, i32) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @pr_sortblock(%struct._IO_FILE* %fp, i8* %title, i32 %nsb, %struct.t_sortblock* nocapture %sb) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !986), !dbg !1261
  tail call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !987), !dbg !1261
  tail call void @llvm.dbg.value(metadata !{i32 %nsb}, i64 0, metadata !988), !dbg !1261
  tail call void @llvm.dbg.value(metadata !{%struct.t_sortblock* %sb}, i64 0, metadata !989), !dbg !1261
  %tobool = icmp eq %struct._IO_FILE* %fp, null, !dbg !1262
  br i1 %tobool, label %if.end, label %if.then, !dbg !1262

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str60, i64 0, i64 0), i8* %title) #7, !dbg !1263
  tail call void @llvm.dbg.value(metadata !225, i64 0, metadata !990), !dbg !1265
  %cmp24 = icmp sgt i32 %nsb, 0, !dbg !1265
  br i1 %cmp24, label %for.body, label %if.end, !dbg !1265

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx1 = getelementptr inbounds %struct.t_sortblock* %sb, i64 %indvars.iv, i32 0, i64 0, !dbg !1267
  %0 = load i32* %arrayidx1, align 4, !dbg !1267, !tbaa !1035
  %arrayidx5 = getelementptr inbounds %struct.t_sortblock* %sb, i64 %indvars.iv, i32 0, i64 1, !dbg !1267
  %1 = load i32* %arrayidx5, align 4, !dbg !1267, !tbaa !1035
  %arrayidx9 = getelementptr inbounds %struct.t_sortblock* %sb, i64 %indvars.iv, i32 0, i64 2, !dbg !1267
  %2 = load i32* %arrayidx9, align 4, !dbg !1267, !tbaa !1035
  %blocknr = getelementptr inbounds %struct.t_sortblock* %sb, i64 %indvars.iv, i32 1, !dbg !1267
  %3 = load i32* %blocknr, align 4, !dbg !1267, !tbaa !1035
  %4 = trunc i64 %indvars.iv to i32, !dbg !1267
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([44 x i8]* @.str61, i64 0, i64 0), i32 %4, i32 %0, i32 %1, i32 %2, i32 %3) #7, !dbg !1267
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1265
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1265
  %exitcond = icmp eq i32 %lftr.wideiv, %nsb, !dbg !1265
  br i1 %exitcond, label %if.end, label %for.body, !dbg !1265

if.end:                                           ; preds = %if.then, %for.body, %entry
  ret void, !dbg !1268
}

; Function Attrs: optsize
declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define internal i32 @pcomp(i8* nocapture %p1, i8* nocapture %p2) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %p1}, i64 0, metadata !973), !dbg !1269
  tail call void @llvm.dbg.value(metadata !{i8* %p2}, i64 0, metadata !974), !dbg !1269
  %0 = load i32* @pcount, align 4, !dbg !1270, !tbaa !1035
  %inc = add nsw i32 %0, 1, !dbg !1270
  store i32 %inc, i32* @pcount, align 4, !dbg !1270, !tbaa !1035
  %blocknr = getelementptr inbounds i8* %p1, i64 12, !dbg !1271
  %1 = bitcast i8* %blocknr to i32*, !dbg !1271
  %2 = load i32* %1, align 4, !dbg !1271, !tbaa !1035
  %blocknr1 = getelementptr inbounds i8* %p2, i64 12, !dbg !1271
  %3 = bitcast i8* %blocknr1 to i32*, !dbg !1271
  %4 = load i32* %3, align 4, !dbg !1271, !tbaa !1035
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !975), !dbg !1271
  %cmp = icmp eq i32 %2, %4, !dbg !1272
  br i1 %cmp, label %if.end, label %if.then, !dbg !1272

if.then:                                          ; preds = %entry
  %sub = sub nsw i32 %2, %4, !dbg !1271
  br label %return, !dbg !1273

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds i8* %p1, i64 4, !dbg !1274
  %5 = bitcast i8* %arrayidx to i32*, !dbg !1274
  %6 = load i32* %5, align 4, !dbg !1274, !tbaa !1035
  %arrayidx3 = getelementptr inbounds i8* %p1, i64 8, !dbg !1274
  %7 = bitcast i8* %arrayidx3 to i32*, !dbg !1274
  %8 = load i32* %7, align 4, !dbg !1274, !tbaa !1035
  %cmp4 = icmp slt i32 %6, %8, !dbg !1274
  %. = select i1 %cmp4, i32 %6, i32 %8, !dbg !1274
  tail call void @llvm.dbg.value(metadata !{i32 %.}, i64 0, metadata !976), !dbg !1274
  tail call void @llvm.dbg.value(metadata !{i32 %cond21}, i64 0, metadata !978), !dbg !1275
  %arrayidx23 = getelementptr inbounds i8* %p2, i64 4, !dbg !1276
  %9 = bitcast i8* %arrayidx23 to i32*, !dbg !1276
  %10 = load i32* %9, align 4, !dbg !1276, !tbaa !1035
  %arrayidx25 = getelementptr inbounds i8* %p2, i64 8, !dbg !1276
  %11 = bitcast i8* %arrayidx25 to i32*, !dbg !1276
  %12 = load i32* %11, align 4, !dbg !1276, !tbaa !1035
  %cmp26 = icmp slt i32 %10, %12, !dbg !1276
  %.67 = select i1 %cmp26, i32 %10, i32 %12, !dbg !1276
  tail call void @llvm.dbg.value(metadata !{i32 %.67}, i64 0, metadata !977), !dbg !1276
  tail call void @llvm.dbg.value(metadata !{i32 %cond47}, i64 0, metadata !979), !dbg !1277
  %cmp48 = icmp eq i32 %., %.67, !dbg !1278
  br i1 %cmp48, label %if.then49, label %if.else, !dbg !1278

if.then49:                                        ; preds = %if.end
  %cmp39 = icmp sgt i32 %10, %12, !dbg !1277
  %cmp13 = icmp sgt i32 %6, %8, !dbg !1275
  %cond47 = select i1 %cmp39, i32 %10, i32 %12, !dbg !1277
  %cond21 = select i1 %cmp13, i32 %6, i32 %8, !dbg !1275
  %sub50 = sub nsw i32 %cond21, %cond47, !dbg !1279
  br label %return, !dbg !1279

if.else:                                          ; preds = %if.end
  %sub51 = sub nsw i32 %., %.67, !dbg !1280
  br label %return, !dbg !1280

return:                                           ; preds = %if.else, %if.then49, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %sub50, %if.then49 ], [ %sub51, %if.else ]
  ret i32 %retval.0, !dbg !1281
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @constrain_lincs(%struct.t_topology* nocapture %top, %struct.t_inputrec* %ir, i32 %step, %struct.t_mdatoms* nocapture %md, i32 %start, i32 %homenr, [3 x float]* %x, [3 x float]* %xprime, [3 x float]* %min_proj, float %lambda, float* nocapture %dvdlambda, i32 %bCoordinates, i32 %bInit, %struct.t_nrnb* nocapture %nrnb) #0 {
entry:
  %buf = alloca [4096 x i8], align 16
  %nit = alloca i32, align 4
  %warn = alloca i32, align 4
  %p_imax = alloca i32, align 4
  %wang = alloca float, align 4
  %p_max = alloca float, align 4
  %p_rms = alloca float, align 4
  call void @llvm.dbg.value(metadata !1282, i64 0, metadata !865), !dbg !1283
  call void @llvm.dbg.value(metadata !1284, i64 0, metadata !872), !dbg !1285
  call void @llvm.dbg.value(metadata !1286, i64 0, metadata !873), !dbg !1285
  call void @llvm.dbg.value(metadata !1287, i64 0, metadata !877), !dbg !1288
  call void @llvm.dbg.value(metadata !1030, i64 0, metadata !883), !dbg !1289
  %0 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0, !dbg !1290
  call void @llvm.lifetime.start(i64 4096, i8* %0) #3, !dbg !1290
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %buf}, metadata !884), !dbg !1290
  call void @llvm.dbg.declare(metadata !{i32* %nit}, metadata !888), !dbg !1291
  call void @llvm.dbg.declare(metadata !{i32* %warn}, metadata !889), !dbg !1291
  call void @llvm.dbg.declare(metadata !{i32* %p_imax}, metadata !890), !dbg !1291
  call void @llvm.dbg.declare(metadata !{float* %wang}, metadata !892), !dbg !1292
  call void @llvm.dbg.declare(metadata !{float* %p_max}, metadata !893), !dbg !1292
  call void @llvm.dbg.declare(metadata !{float* %p_rms}, metadata !894), !dbg !1292
  call void @llvm.dbg.value(metadata !1030, i64 0, metadata !897), !dbg !1293
  %tobool = icmp eq i32 %bInit, 0, !dbg !1294
  br i1 %tobool, label %if.else, label %if.then, !dbg !1294

if.then:                                          ; preds = %entry
  %nr = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 27, i32 0, !dbg !1295
  %1 = load i32* %nr, align 4, !dbg !1295, !tbaa !1035
  %div = sdiv i32 %1, 3, !dbg !1295
  store i32 %div, i32* @constrain_lincs.nc, align 4, !dbg !1295, !tbaa !1035
  %2 = load %struct._IO_FILE** @stdlog, align 8, !dbg !1297, !tbaa !1043
  call void @llvm.dbg.value(metadata !1298, i64 0, metadata !1299) #3, !dbg !1300
  call void @llvm.dbg.value(metadata !1301, i64 0, metadata !1302) #3, !dbg !1303
  call void @llvm.dbg.value(metadata !1304, i64 0, metadata !1305) #3, !dbg !1306
  call void @llvm.dbg.value(metadata !1307, i64 0, metadata !1308) #3, !dbg !1306
  call void @llvm.dbg.value(metadata !1309, i64 0, metadata !1310) #3, !dbg !1306
  call void @llvm.dbg.value(metadata !1311, i64 0, metadata !1312) #3, !dbg !1306
  call void @llvm.dbg.value(metadata !1313, i64 0, metadata !1314) #3, !dbg !1306
  call void @llvm.dbg.value(metadata !1315, i64 0, metadata !1316) #3, !dbg !1317
  call void @llvm.dbg.value(metadata !1318, i64 0, metadata !1319) #3, !dbg !1317
  call void @llvm.dbg.value(metadata !1320, i64 0, metadata !1321) #3, !dbg !1317
  call void @llvm.dbg.value(metadata !1322, i64 0, metadata !1323) #3, !dbg !1317
  call void @llvm.dbg.value(metadata !1324, i64 0, metadata !1325) #3, !dbg !1326
  call void @llvm.dbg.value(metadata !1327, i64 0, metadata !1328) #3, !dbg !1326
  call void @llvm.dbg.value(metadata !1329, i64 0, metadata !1330) #3, !dbg !1326
  call void @llvm.dbg.value(metadata !1331, i64 0, metadata !1332) #3, !dbg !1333
  call void @llvm.dbg.value(metadata !1334, i64 0, metadata !1335) #3, !dbg !1333
  call void @llvm.dbg.value(metadata !1336, i64 0, metadata !1337) #3, !dbg !1333
  call void @llvm.dbg.value(metadata !1237, i64 0, metadata !1338) #3, !dbg !1339
  %3 = load i32* %nr, align 4, !dbg !1340, !tbaa !1035
  %div.i = sdiv i32 %3, 3, !dbg !1340
  call void @llvm.dbg.value(metadata !{i32 %div.i}, i64 0, metadata !1341) #3, !dbg !1340
  store i32 0, i32* @constrain_lincs.nrtot, align 4, !dbg !1342, !tbaa !1035
  %cmp.i = icmp sgt i32 %3, 2, !dbg !1343
  br i1 %cmp.i, label %for.body.lr.ph.i, label %if.end206, !dbg !1343

for.body.lr.ph.i:                                 ; preds = %if.then
  %iatoms.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 27, i32 2, !dbg !1344
  %4 = load i32** %iatoms.i, align 8, !dbg !1344, !tbaa !1043
  call void @llvm.dbg.value(metadata !{i32* %4}, i64 0, metadata !1346) #3, !dbg !1344
  %call.i = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 131, i32 %homenr, i32 8) #7, !dbg !1347
  %5 = bitcast i8* %call.i to i32**, !dbg !1347
  call void @llvm.dbg.value(metadata !{i32** %5}, i64 0, metadata !1348) #3, !dbg !1347
  %call5.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 132, i32 %homenr, i32 4) #7, !dbg !1349
  %6 = bitcast i8* %call5.i to i32*, !dbg !1349
  call void @llvm.dbg.value(metadata !{i32* %6}, i64 0, metadata !1350) #3, !dbg !1349
  %call6.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 133, i32 %homenr, i32 4) #7, !dbg !1351
  %7 = bitcast i8* %call6.i to i32*, !dbg !1351
  call void @llvm.dbg.value(metadata !{i32* %7}, i64 0, metadata !1352) #3, !dbg !1351
  call void @llvm.dbg.value(metadata !225, i64 0, metadata !1353) #3, !dbg !1354
  br label %for.body.i, !dbg !1354

for.body.i:                                       ; preds = %if.end60.i, %for.body.lr.ph.i
  %indvars.iv33.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next34.i, %if.end60.i ]
  %8 = trunc i64 %indvars.iv33.i to i32, !dbg !1356
  %mul.i = mul nsw i32 %8, 3, !dbg !1356
  %add.i = add nsw i32 %mul.i, 1, !dbg !1356
  %idxprom.i = sext i32 %add.i to i64, !dbg !1356
  %arrayidx8.i = getelementptr inbounds i32* %4, i64 %idxprom.i, !dbg !1356
  %9 = load i32* %arrayidx8.i, align 4, !dbg !1356, !tbaa !1035
  %sub.i = sub nsw i32 %9, %start, !dbg !1356
  call void @llvm.dbg.value(metadata !{i32 %sub.i}, i64 0, metadata !1358) #3, !dbg !1356
  %add10.i = add nsw i32 %mul.i, 2, !dbg !1359
  %idxprom11.i = sext i32 %add10.i to i64, !dbg !1359
  %arrayidx12.i = getelementptr inbounds i32* %4, i64 %idxprom11.i, !dbg !1359
  %10 = load i32* %arrayidx12.i, align 4, !dbg !1359, !tbaa !1035
  %sub13.i = sub nsw i32 %10, %start, !dbg !1359
  call void @llvm.dbg.value(metadata !{i32 %sub13.i}, i64 0, metadata !1360) #3, !dbg !1359
  %idxprom14.i = sext i32 %sub.i to i64, !dbg !1361
  %arrayidx15.i = getelementptr inbounds i32* %6, i64 %idxprom14.i, !dbg !1361
  %11 = load i32* %arrayidx15.i, align 4, !dbg !1361, !tbaa !1035
  %arrayidx17.i = getelementptr inbounds i32* %7, i64 %idxprom14.i, !dbg !1361
  %12 = load i32* %arrayidx17.i, align 4, !dbg !1361, !tbaa !1035
  %cmp18.i = icmp slt i32 %11, %12, !dbg !1361
  br i1 %cmp18.i, label %for.body.if.end_crit_edge.i, label %if.then19.i, !dbg !1361

for.body.if.end_crit_edge.i:                      ; preds = %for.body.i
  %arrayidx36.phi.trans.insert.i = getelementptr inbounds i32** %5, i64 %idxprom14.i
  %.pre41.i = load i32** %arrayidx36.phi.trans.insert.i, align 8, !dbg !1362, !tbaa !1043
  br label %if.end.i, !dbg !1361

if.then19.i:                                      ; preds = %for.body.i
  %add22.i = add nsw i32 %12, 4, !dbg !1363
  store i32 %add22.i, i32* %arrayidx17.i, align 4, !dbg !1363, !tbaa !1035
  %arrayidx24.i = getelementptr inbounds i32** %5, i64 %idxprom14.i, !dbg !1365
  %13 = load i32** %arrayidx24.i, align 8, !dbg !1365, !tbaa !1043
  %14 = bitcast i32* %13 to i8*, !dbg !1365
  %mul27.i = shl i32 %add22.i, 2, !dbg !1365
  %call29.i = call i8* @save_realloc(i8* getelementptr inbounds ([9 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 140, i8* %14, i32 %mul27.i) #7, !dbg !1365
  %15 = bitcast i8* %call29.i to i32*, !dbg !1365
  store i32* %15, i32** %arrayidx24.i, align 8, !dbg !1365, !tbaa !1043
  %.pre38.i = load i32* %arrayidx15.i, align 4, !dbg !1362, !tbaa !1035
  br label %if.end.i, !dbg !1366

if.end.i:                                         ; preds = %if.then19.i, %for.body.if.end_crit_edge.i
  %16 = phi i32* [ %.pre41.i, %for.body.if.end_crit_edge.i ], [ %15, %if.then19.i ]
  %17 = phi i32 [ %11, %for.body.if.end_crit_edge.i ], [ %.pre38.i, %if.then19.i ]
  %idxprom34.i = sext i32 %17 to i64, !dbg !1362
  %arrayidx37.i = getelementptr inbounds i32* %16, i64 %idxprom34.i, !dbg !1362
  store i32 %8, i32* %arrayidx37.i, align 4, !dbg !1362, !tbaa !1035
  %18 = load i32* %arrayidx15.i, align 4, !dbg !1367, !tbaa !1035
  %inc.i = add nsw i32 %18, 1, !dbg !1367
  store i32 %inc.i, i32* %arrayidx15.i, align 4, !dbg !1367, !tbaa !1035
  %idxprom40.i = sext i32 %sub13.i to i64, !dbg !1368
  %arrayidx41.i = getelementptr inbounds i32* %6, i64 %idxprom40.i, !dbg !1368
  %19 = load i32* %arrayidx41.i, align 4, !dbg !1368, !tbaa !1035
  %arrayidx43.i = getelementptr inbounds i32* %7, i64 %idxprom40.i, !dbg !1368
  %20 = load i32* %arrayidx43.i, align 4, !dbg !1368, !tbaa !1035
  %cmp44.i = icmp slt i32 %19, %20, !dbg !1368
  br i1 %cmp44.i, label %if.end.if.end60_crit_edge.i, label %if.then46.i, !dbg !1368

if.end.if.end60_crit_edge.i:                      ; preds = %if.end.i
  %arrayidx65.phi.trans.insert.i = getelementptr inbounds i32** %5, i64 %idxprom40.i
  %.pre42.i = load i32** %arrayidx65.phi.trans.insert.i, align 8, !dbg !1369, !tbaa !1043
  br label %if.end60.i, !dbg !1368

if.then46.i:                                      ; preds = %if.end.i
  %add49.i = add nsw i32 %20, 4, !dbg !1370
  store i32 %add49.i, i32* %arrayidx43.i, align 4, !dbg !1370, !tbaa !1035
  %arrayidx51.i = getelementptr inbounds i32** %5, i64 %idxprom40.i, !dbg !1372
  %21 = load i32** %arrayidx51.i, align 8, !dbg !1372, !tbaa !1043
  %22 = bitcast i32* %21 to i8*, !dbg !1372
  %mul55.i = shl i32 %add49.i, 2, !dbg !1372
  %call57.i = call i8* @save_realloc(i8* getelementptr inbounds ([9 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 146, i8* %22, i32 %mul55.i) #7, !dbg !1372
  %23 = bitcast i8* %call57.i to i32*, !dbg !1372
  store i32* %23, i32** %arrayidx51.i, align 8, !dbg !1372, !tbaa !1043
  %.pre39.i = load i32* %arrayidx41.i, align 4, !dbg !1369, !tbaa !1035
  br label %if.end60.i, !dbg !1373

if.end60.i:                                       ; preds = %if.then46.i, %if.end.if.end60_crit_edge.i
  %24 = phi i32* [ %.pre42.i, %if.end.if.end60_crit_edge.i ], [ %23, %if.then46.i ]
  %25 = phi i32 [ %19, %if.end.if.end60_crit_edge.i ], [ %.pre39.i, %if.then46.i ]
  %idxprom63.i = sext i32 %25 to i64, !dbg !1369
  %arrayidx66.i = getelementptr inbounds i32* %24, i64 %idxprom63.i, !dbg !1369
  store i32 %8, i32* %arrayidx66.i, align 4, !dbg !1369, !tbaa !1035
  %26 = load i32* %arrayidx41.i, align 4, !dbg !1374, !tbaa !1035
  %inc69.i = add nsw i32 %26, 1, !dbg !1374
  store i32 %inc69.i, i32* %arrayidx41.i, align 4, !dbg !1374, !tbaa !1035
  %indvars.iv.next34.i = add i64 %indvars.iv33.i, 1, !dbg !1354
  %27 = trunc i64 %indvars.iv.next34.i to i32, !dbg !1354
  %cmp7.i = icmp slt i32 %27, %div.i, !dbg !1354
  br i1 %cmp7.i, label %for.body.i, label %for.body74.lr.ph.i, !dbg !1354

for.body74.lr.ph.i:                               ; preds = %if.end60.i
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 151, i8* %call6.i) #7, !dbg !1375
  call void @llvm.dbg.value(metadata !225, i64 0, metadata !1353) #3, !dbg !1376
  %.pre37.i = load i32* @constrain_lincs.nrtot, align 4, !dbg !1378, !tbaa !1035
  br label %for.body74.i, !dbg !1376

for.body74.i:                                     ; preds = %for.body74.i, %for.body74.lr.ph.i
  %28 = phi i32 [ %.pre37.i, %for.body74.lr.ph.i ], [ %add91.i, %for.body74.i ], !dbg !1380
  %indvars.iv31.i = phi i64 [ 0, %for.body74.lr.ph.i ], [ %indvars.iv.next32.i, %for.body74.i ]
  %29 = trunc i64 %indvars.iv31.i to i32, !dbg !1380
  %mul75.i = mul nsw i32 %29, 3, !dbg !1380
  %add76.i = add nsw i32 %mul75.i, 1, !dbg !1380
  %idxprom77.i = sext i32 %add76.i to i64, !dbg !1380
  %arrayidx78.i = getelementptr inbounds i32* %4, i64 %idxprom77.i, !dbg !1380
  %30 = load i32* %arrayidx78.i, align 4, !dbg !1380, !tbaa !1035
  %sub79.i = sub nsw i32 %30, %start, !dbg !1380
  call void @llvm.dbg.value(metadata !{i32 %sub79.i}, i64 0, metadata !1358) #3, !dbg !1380
  %add81.i = add nsw i32 %mul75.i, 2, !dbg !1381
  %idxprom82.i = sext i32 %add81.i to i64, !dbg !1381
  %arrayidx83.i = getelementptr inbounds i32* %4, i64 %idxprom82.i, !dbg !1381
  %31 = load i32* %arrayidx83.i, align 4, !dbg !1381, !tbaa !1035
  %sub84.i = sub nsw i32 %31, %start, !dbg !1381
  call void @llvm.dbg.value(metadata !{i32 %sub84.i}, i64 0, metadata !1360) #3, !dbg !1381
  %idxprom85.i = sext i32 %sub79.i to i64, !dbg !1378
  %arrayidx86.i = getelementptr inbounds i32* %6, i64 %idxprom85.i, !dbg !1378
  %32 = load i32* %arrayidx86.i, align 4, !dbg !1378, !tbaa !1035
  %idxprom87.i = sext i32 %sub84.i to i64, !dbg !1378
  %arrayidx88.i = getelementptr inbounds i32* %6, i64 %idxprom87.i, !dbg !1378
  %33 = load i32* %arrayidx88.i, align 4, !dbg !1378, !tbaa !1035
  %add89.i = add i32 %28, -2, !dbg !1378
  %sub90.i = add i32 %add89.i, %32, !dbg !1378
  %add91.i = add i32 %sub90.i, %33, !dbg !1378
  store i32 %add91.i, i32* @constrain_lincs.nrtot, align 4, !dbg !1378, !tbaa !1035
  %indvars.iv.next32.i = add i64 %indvars.iv31.i, 1, !dbg !1376
  %34 = trunc i64 %indvars.iv.next32.i to i32, !dbg !1376
  %cmp72.i = icmp slt i32 %34, %div.i, !dbg !1376
  br i1 %cmp72.i, label %for.body74.i, label %for.body115.lr.ph.i, !dbg !1376

for.body115.lr.ph.i:                              ; preds = %for.body74.i
  %call95.i = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 159, i32 %div.i, i32 12) #7, !dbg !1382
  %35 = bitcast i8* %call95.i to [3 x float]*, !dbg !1382
  store [3 x float]* %35, [3 x float]** @constrain_lincs.r, align 8, !dbg !1382, !tbaa !1043
  %call96.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 160, i32 %div.i, i32 4) #7, !dbg !1383
  %36 = bitcast i8* %call96.i to i32*, !dbg !1383
  store i32* %36, i32** @constrain_lincs.bla1, align 8, !dbg !1383, !tbaa !1043
  %call97.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 161, i32 %div.i, i32 4) #7, !dbg !1384
  %37 = bitcast i8* %call97.i to i32*, !dbg !1384
  store i32* %37, i32** @constrain_lincs.bla2, align 8, !dbg !1384, !tbaa !1043
  %add98.i = add nsw i32 %div.i, 1, !dbg !1385
  %call99.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 162, i32 %add98.i, i32 4) #7, !dbg !1385
  %38 = bitcast i8* %call99.i to i32*, !dbg !1385
  store i32* %38, i32** @constrain_lincs.blnr, align 8, !dbg !1385, !tbaa !1043
  %call100.i = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 163, i32 %div.i, i32 4) #7, !dbg !1386
  %39 = bitcast i8* %call100.i to float*, !dbg !1386
  store float* %39, float** @constrain_lincs.bllen, align 8, !dbg !1386, !tbaa !1043
  %call101.i = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 164, i32 %div.i, i32 4) #7, !dbg !1387
  %40 = bitcast i8* %call101.i to float*, !dbg !1387
  store float* %40, float** @constrain_lincs.blc, align 8, !dbg !1387, !tbaa !1043
  %call102.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 165, i32 %div.i, i32 4) #7, !dbg !1388
  %41 = bitcast i8* %call102.i to float*, !dbg !1388
  store float* %41, float** @constrain_lincs.tmp1, align 8, !dbg !1388, !tbaa !1043
  %call103.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 166, i32 %div.i, i32 4) #7, !dbg !1389
  %42 = bitcast i8* %call103.i to float*, !dbg !1389
  store float* %42, float** @constrain_lincs.tmp2, align 8, !dbg !1389, !tbaa !1043
  %call104.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 167, i32 %div.i, i32 4) #7, !dbg !1390
  %43 = bitcast i8* %call104.i to float*, !dbg !1390
  store float* %43, float** @constrain_lincs.tmp3, align 8, !dbg !1390, !tbaa !1043
  %call105.i = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 168, i32 %div.i, i32 4) #7, !dbg !1391
  %44 = bitcast i8* %call105.i to float*, !dbg !1391
  store float* %44, float** @constrain_lincs.lincslam, align 8, !dbg !1391, !tbaa !1043
  %call106.i = call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str48, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 169, i32 %div.i, i32 4) #7, !dbg !1392
  %45 = bitcast i8* %call106.i to float*, !dbg !1392
  store float* %45, float** @constrain_lincs.bllen0, align 8, !dbg !1392, !tbaa !1043
  %call107.i = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 170, i32 %div.i, i32 4) #7, !dbg !1393
  %46 = bitcast i8* %call107.i to float*, !dbg !1393
  store float* %46, float** @constrain_lincs.ddist, align 8, !dbg !1393, !tbaa !1043
  %47 = load i32* @constrain_lincs.nrtot, align 4, !dbg !1394, !tbaa !1035
  %call108.i = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 171, i32 %47, i32 4) #7, !dbg !1394
  %48 = bitcast i8* %call108.i to i32*, !dbg !1394
  store i32* %48, i32** @constrain_lincs.blbnb, align 8, !dbg !1394, !tbaa !1043
  %49 = load i32* @constrain_lincs.nrtot, align 4, !dbg !1395, !tbaa !1035
  %call109.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 172, i32 %49, i32 4) #7, !dbg !1395
  %50 = bitcast i8* %call109.i to float*, !dbg !1395
  store float* %50, float** @constrain_lincs.blcc, align 8, !dbg !1395, !tbaa !1043
  %51 = load i32* @constrain_lincs.nrtot, align 4, !dbg !1396, !tbaa !1035
  %call110.i = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str52, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 173, i32 %51, i32 4) #7, !dbg !1396
  %52 = bitcast i8* %call110.i to float*, !dbg !1396
  store float* %52, float** @constrain_lincs.blm, align 8, !dbg !1396, !tbaa !1043
  %53 = load i32** @constrain_lincs.blnr, align 8, !dbg !1397, !tbaa !1043
  store i32 0, i32* %53, align 4, !dbg !1397, !tbaa !1035
  call void @llvm.dbg.value(metadata !225, i64 0, metadata !1398) #3, !dbg !1399
  call void @llvm.dbg.value(metadata !225, i64 0, metadata !1353) #3, !dbg !1400
  %iparams.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 4, !dbg !1402
  %invmass.i = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5, !dbg !1404
  br label %for.body115.i, !dbg !1400

for.body115.i:                                    ; preds = %for.end237.i, %for.body115.lr.ph.i
  %indvars.iv29.i = phi i64 [ 0, %for.body115.lr.ph.i ], [ %indvars.iv.next30.i, %for.end237.i ]
  %nZeroLen.014.i = phi i32 [ 0, %for.body115.lr.ph.i ], [ %nZeroLen.1.i, %for.end237.i ]
  %54 = trunc i64 %indvars.iv29.i to i32, !dbg !1405
  %mul116.i = mul nsw i32 %54, 3, !dbg !1405
  call void @llvm.dbg.value(metadata !{i32 %mul116.i}, i64 0, metadata !1406) #3, !dbg !1405
  %add117.i = add nsw i32 %mul116.i, 1, !dbg !1407
  %idxprom118.i = sext i32 %add117.i to i64, !dbg !1407
  %arrayidx119.i = getelementptr inbounds i32* %4, i64 %idxprom118.i, !dbg !1407
  %55 = load i32* %arrayidx119.i, align 4, !dbg !1407, !tbaa !1035
  call void @llvm.dbg.value(metadata !{i32 %55}, i64 0, metadata !1358) #3, !dbg !1407
  %add120.i = add nsw i32 %mul116.i, 2, !dbg !1408
  %idxprom121.i = sext i32 %add120.i to i64, !dbg !1408
  %arrayidx122.i = getelementptr inbounds i32* %4, i64 %idxprom121.i, !dbg !1408
  %56 = load i32* %arrayidx122.i, align 4, !dbg !1408, !tbaa !1035
  call void @llvm.dbg.value(metadata !{i32 %56}, i64 0, metadata !1360) #3, !dbg !1408
  %idxprom123.i = sext i32 %mul116.i to i64, !dbg !1409
  %arrayidx124.i = getelementptr inbounds i32* %4, i64 %idxprom123.i, !dbg !1409
  %57 = load i32* %arrayidx124.i, align 4, !dbg !1409, !tbaa !1035
  call void @llvm.dbg.value(metadata !{i32 %57}, i64 0, metadata !1410) #3, !dbg !1409
  %idxprom125.i = sext i32 %57 to i64, !dbg !1402
  %58 = load %union.t_iparams** %iparams.i, align 8, !dbg !1402, !tbaa !1043
  %dA.i = getelementptr inbounds %union.t_iparams* %58, i64 %idxprom125.i, i32 0, i32 0, !dbg !1402
  %59 = load float* %dA.i, align 4, !dbg !1402, !tbaa !1135
  call void @llvm.dbg.value(metadata !{float %59}, i64 0, metadata !1338) #3, !dbg !1402
  %60 = getelementptr inbounds %union.t_iparams* %58, i64 %idxprom125.i, i32 0, i32 1, !dbg !1411
  %61 = load float* %60, align 4, !dbg !1411, !tbaa !1135
  call void @llvm.dbg.value(metadata !{float %61}, i64 0, metadata !1412) #3, !dbg !1411
  %conv131.i = fpext float %59 to double, !dbg !1413
  %cmp132.i = fcmp olt double %conv131.i, 1.200000e-38, !dbg !1413
  br i1 %cmp132.i, label %land.lhs.true.i, label %lor.lhs.false.i, !dbg !1413

lor.lhs.false.i:                                  ; preds = %for.body115.i
  %conv134.i = fpext float %61 to double, !dbg !1413
  %cmp135.i = fcmp olt double %conv134.i, 1.200000e-38, !dbg !1413
  br i1 %cmp135.i, label %land.lhs.true.i, label %lor.lhs.false.if.end143_crit_edge.i, !dbg !1413

lor.lhs.false.if.end143_crit_edge.i:              ; preds = %lor.lhs.false.i
  %sub158.pre.i = fsub float %61, %59, !dbg !1414
  br label %if.end143.i, !dbg !1413

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i, %for.body115.i
  %sub137.i = fsub float %61, %59, !dbg !1415
  %fabsf.i = call float @fabsf(float %sub137.i) #8, !dbg !1415
  %62 = fpext float %fabsf.i to double, !dbg !1415
  %cmp140.i = fcmp ogt double %62, 1.200000e-38, !dbg !1415
  br i1 %cmp140.i, label %if.then142.i, label %if.end143.i, !dbg !1415

if.then142.i:                                     ; preds = %land.lhs.true.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([88 x i8]* @.str53, i64 0, i64 0)) #7, !dbg !1416
  br label %if.end143.i, !dbg !1416

if.end143.i:                                      ; preds = %if.then142.i, %land.lhs.true.i, %lor.lhs.false.if.end143_crit_edge.i
  %sub158.pre-phi.i = phi float [ %sub158.pre.i, %lor.lhs.false.if.end143_crit_edge.i ], [ %sub137.i, %if.then142.i ], [ %sub137.i, %land.lhs.true.i ], !dbg !1414
  %inc148.i = zext i1 %cmp132.i to i32, !dbg !1417
  %nZeroLen.1.i = add nsw i32 %inc148.i, %nZeroLen.014.i, !dbg !1417
  %63 = load i32** @constrain_lincs.bla1, align 8, !dbg !1418, !tbaa !1043
  %arrayidx151.i = getelementptr inbounds i32* %63, i64 %indvars.iv29.i, !dbg !1418
  store i32 %55, i32* %arrayidx151.i, align 4, !dbg !1418, !tbaa !1035
  %64 = load i32** @constrain_lincs.bla2, align 8, !dbg !1419, !tbaa !1043
  %arrayidx153.i = getelementptr inbounds i32* %64, i64 %indvars.iv29.i, !dbg !1419
  store i32 %56, i32* %arrayidx153.i, align 4, !dbg !1419, !tbaa !1035
  %65 = load float** @constrain_lincs.bllen, align 8, !dbg !1420, !tbaa !1043
  %arrayidx155.i = getelementptr inbounds float* %65, i64 %indvars.iv29.i, !dbg !1420
  store float %59, float* %arrayidx155.i, align 4, !dbg !1420, !tbaa !1135
  %66 = load float** @constrain_lincs.bllen0, align 8, !dbg !1421, !tbaa !1043
  %arrayidx157.i = getelementptr inbounds float* %66, i64 %indvars.iv29.i, !dbg !1421
  store float %59, float* %arrayidx157.i, align 4, !dbg !1421, !tbaa !1135
  %67 = load float** @constrain_lincs.ddist, align 8, !dbg !1414, !tbaa !1043
  %arrayidx160.i = getelementptr inbounds float* %67, i64 %indvars.iv29.i, !dbg !1414
  store float %sub158.pre-phi.i, float* %arrayidx160.i, align 4, !dbg !1414, !tbaa !1135
  %idxprom161.i = sext i32 %55 to i64, !dbg !1404
  %68 = load float** %invmass.i, align 8, !dbg !1404, !tbaa !1043
  %arrayidx162.i = getelementptr inbounds float* %68, i64 %idxprom161.i, !dbg !1404
  %69 = load float* %arrayidx162.i, align 4, !dbg !1404, !tbaa !1135
  call void @llvm.dbg.value(metadata !{float %69}, i64 0, metadata !1422) #3, !dbg !1404
  %idxprom163.i = sext i32 %56 to i64, !dbg !1423
  %arrayidx165.i = getelementptr inbounds float* %68, i64 %idxprom163.i, !dbg !1423
  %70 = load float* %arrayidx165.i, align 4, !dbg !1423, !tbaa !1135
  call void @llvm.dbg.value(metadata !{float %70}, i64 0, metadata !1424) #3, !dbg !1423
  %add166.i = fadd float %69, %70, !dbg !1425
  %conv167.i = fpext float %add166.i to double, !dbg !1425
  %call168.i = call double @sqrt(double %conv167.i) #7, !dbg !1425
  %div169.i = fdiv double 1.000000e+00, %call168.i, !dbg !1425
  %conv170.i = fptrunc double %div169.i to float, !dbg !1425
  %71 = load float** @constrain_lincs.blc, align 8, !dbg !1425, !tbaa !1043
  %arrayidx172.i = getelementptr inbounds float* %71, i64 %indvars.iv29.i, !dbg !1425
  store float %conv170.i, float* %arrayidx172.i, align 4, !dbg !1425, !tbaa !1135
  %72 = load i32** @constrain_lincs.blnr, align 8, !dbg !1426, !tbaa !1043
  %arrayidx174.i = getelementptr inbounds i32* %72, i64 %indvars.iv29.i, !dbg !1426
  %73 = load i32* %arrayidx174.i, align 4, !dbg !1426, !tbaa !1035
  %indvars.iv.next30.i = add i64 %indvars.iv29.i, 1, !dbg !1400
  %arrayidx177.i = getelementptr inbounds i32* %72, i64 %indvars.iv.next30.i, !dbg !1426
  store i32 %73, i32* %arrayidx177.i, align 4, !dbg !1426, !tbaa !1035
  call void @llvm.dbg.value(metadata !225, i64 0, metadata !1427) #3, !dbg !1428
  %sub179.i = sub nsw i32 %55, %start, !dbg !1428
  %idxprom180.i = sext i32 %sub179.i to i64, !dbg !1428
  %arrayidx181.i = getelementptr inbounds i32* %6, i64 %idxprom180.i, !dbg !1428
  %74 = load i32* %arrayidx181.i, align 4, !dbg !1428, !tbaa !1035
  %cmp1829.i = icmp sgt i32 %74, 0, !dbg !1428
  br i1 %cmp1829.i, label %for.body184.lr.ph.i, label %for.cond208.loopexit.i, !dbg !1428

for.body184.lr.ph.i:                              ; preds = %if.end143.i
  %arrayidx188.i = getelementptr inbounds i32** %5, i64 %idxprom180.i, !dbg !1430
  %75 = load i32** %arrayidx188.i, align 8, !dbg !1430, !tbaa !1043
  %76 = load i32** @constrain_lincs.blbnb, align 8, !dbg !1431, !tbaa !1043
  br label %for.body184.i, !dbg !1428

for.body184.i:                                    ; preds = %for.inc205.i, %for.body184.lr.ph.i
  %77 = phi i32 [ %74, %for.body184.lr.ph.i ], [ %80, %for.inc205.i ]
  %indvars.iv25.i = phi i64 [ 0, %for.body184.lr.ph.i ], [ %indvars.iv.next26.i, %for.inc205.i ]
  %arrayidx189.i = getelementptr inbounds i32* %75, i64 %indvars.iv25.i, !dbg !1430
  %78 = load i32* %arrayidx189.i, align 4, !dbg !1430, !tbaa !1035
  %cmp190.i = icmp eq i32 %78, %54, !dbg !1430
  br i1 %cmp190.i, label %for.inc205.i, label %if.then192.i, !dbg !1430

if.then192.i:                                     ; preds = %for.body184.i
  %79 = load i32* %arrayidx177.i, align 4, !dbg !1431, !tbaa !1035
  %inc201.i = add nsw i32 %79, 1, !dbg !1431
  store i32 %inc201.i, i32* %arrayidx177.i, align 4, !dbg !1431, !tbaa !1035
  %idxprom202.i = sext i32 %79 to i64, !dbg !1431
  %arrayidx203.i = getelementptr inbounds i32* %76, i64 %idxprom202.i, !dbg !1431
  store i32 %78, i32* %arrayidx203.i, align 4, !dbg !1431, !tbaa !1035
  %.pre36.i = load i32* %arrayidx181.i, align 4, !dbg !1428, !tbaa !1035
  br label %for.inc205.i, !dbg !1431

for.inc205.i:                                     ; preds = %if.then192.i, %for.body184.i
  %80 = phi i32 [ %77, %for.body184.i ], [ %.pre36.i, %if.then192.i ], !dbg !1428
  %indvars.iv.next26.i = add i64 %indvars.iv25.i, 1, !dbg !1428
  %81 = trunc i64 %indvars.iv.next26.i to i32, !dbg !1428
  %cmp182.i = icmp slt i32 %81, %80, !dbg !1428
  br i1 %cmp182.i, label %for.body184.i, label %for.cond208.loopexit.i, !dbg !1428

for.cond208.loopexit.i:                           ; preds = %for.inc205.i, %if.end143.i
  %sub209.i = sub nsw i32 %56, %start, !dbg !1432
  %idxprom210.i = sext i32 %sub209.i to i64, !dbg !1432
  %arrayidx211.i = getelementptr inbounds i32* %6, i64 %idxprom210.i, !dbg !1432
  %82 = load i32* %arrayidx211.i, align 4, !dbg !1432, !tbaa !1035
  %cmp21211.i = icmp sgt i32 %82, 0, !dbg !1432
  br i1 %cmp21211.i, label %for.body214.lr.ph.i, label %for.cond208.loopexit.for.end237_crit_edge.i, !dbg !1432

for.cond208.loopexit.for.end237_crit_edge.i:      ; preds = %for.cond208.loopexit.i
  %.pre40.i = load i32** @constrain_lincs.blbnb, align 8, !dbg !1434, !tbaa !1043
  br label %for.end237.i, !dbg !1432

for.body214.lr.ph.i:                              ; preds = %for.cond208.loopexit.i
  %arrayidx218.i = getelementptr inbounds i32** %5, i64 %idxprom210.i, !dbg !1435
  %83 = load i32** %arrayidx218.i, align 8, !dbg !1435, !tbaa !1043
  %84 = load i32** @constrain_lincs.blbnb, align 8, !dbg !1436, !tbaa !1043
  br label %for.body214.i, !dbg !1432

for.body214.i:                                    ; preds = %for.inc235.i, %for.body214.lr.ph.i
  %85 = phi i32 [ %82, %for.body214.lr.ph.i ], [ %88, %for.inc235.i ]
  %indvars.iv27.i = phi i64 [ 0, %for.body214.lr.ph.i ], [ %indvars.iv.next28.i, %for.inc235.i ]
  %arrayidx219.i = getelementptr inbounds i32* %83, i64 %indvars.iv27.i, !dbg !1435
  %86 = load i32* %arrayidx219.i, align 4, !dbg !1435, !tbaa !1035
  %cmp220.i = icmp eq i32 %86, %54, !dbg !1435
  br i1 %cmp220.i, label %for.inc235.i, label %if.then222.i, !dbg !1435

if.then222.i:                                     ; preds = %for.body214.i
  %87 = load i32* %arrayidx177.i, align 4, !dbg !1436, !tbaa !1035
  %inc231.i = add nsw i32 %87, 1, !dbg !1436
  store i32 %inc231.i, i32* %arrayidx177.i, align 4, !dbg !1436, !tbaa !1035
  %idxprom232.i = sext i32 %87 to i64, !dbg !1436
  %arrayidx233.i = getelementptr inbounds i32* %84, i64 %idxprom232.i, !dbg !1436
  store i32 %86, i32* %arrayidx233.i, align 4, !dbg !1436, !tbaa !1035
  %.pre35.i = load i32* %arrayidx211.i, align 4, !dbg !1432, !tbaa !1035
  br label %for.inc235.i, !dbg !1436

for.inc235.i:                                     ; preds = %if.then222.i, %for.body214.i
  %88 = phi i32 [ %85, %for.body214.i ], [ %.pre35.i, %if.then222.i ], !dbg !1432
  %indvars.iv.next28.i = add i64 %indvars.iv27.i, 1, !dbg !1432
  %89 = trunc i64 %indvars.iv.next28.i to i32, !dbg !1432
  %cmp212.i = icmp slt i32 %89, %88, !dbg !1432
  br i1 %cmp212.i, label %for.body214.i, label %for.end237.i, !dbg !1432

for.end237.i:                                     ; preds = %for.inc235.i, %for.cond208.loopexit.for.end237_crit_edge.i
  %90 = phi i32* [ %.pre40.i, %for.cond208.loopexit.for.end237_crit_edge.i ], [ %84, %for.inc235.i ]
  %91 = load i32* %arrayidx174.i, align 4, !dbg !1434, !tbaa !1035
  %idxprom240.i = sext i32 %91 to i64, !dbg !1434
  %arrayidx241.i = getelementptr inbounds i32* %90, i64 %idxprom240.i, !dbg !1434
  %92 = bitcast i32* %arrayidx241.i to i8*, !dbg !1434
  %93 = load i32* %arrayidx177.i, align 4, !dbg !1434, !tbaa !1035
  %sub247.i = sub nsw i32 %93, %91, !dbg !1434
  %conv248.i = sext i32 %sub247.i to i64, !dbg !1434
  call void @qsort(i8* %92, i64 %conv248.i, i64 4, i32 (i8*, i8*)* @int_comp) #7, !dbg !1434
  %94 = trunc i64 %indvars.iv.next30.i to i32, !dbg !1400
  %cmp113.i = icmp slt i32 %94, %div.i, !dbg !1400
  br i1 %cmp113.i, label %for.body115.i, label %for.end251.i, !dbg !1400

for.end251.i:                                     ; preds = %for.end237.i
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 213, i8* %call5.i) #7, !dbg !1437
  call void @llvm.dbg.value(metadata !225, i64 0, metadata !1353) #3, !dbg !1438
  %cmp2537.i = icmp sgt i32 %homenr, 0, !dbg !1438
  br i1 %cmp2537.i, label %for.body255.i, label %for.end260.i, !dbg !1438

for.body255.i:                                    ; preds = %for.end251.i, %for.body255.i
  %indvars.iv23.i = phi i64 [ %indvars.iv.next24.i, %for.body255.i ], [ 0, %for.end251.i ]
  %arrayidx257.i = getelementptr inbounds i32** %5, i64 %indvars.iv23.i, !dbg !1440
  %95 = load i32** %arrayidx257.i, align 8, !dbg !1440, !tbaa !1043
  %96 = bitcast i32* %95 to i8*, !dbg !1440
  call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 215, i8* %96) #7, !dbg !1440
  %indvars.iv.next24.i = add i64 %indvars.iv23.i, 1, !dbg !1438
  %lftr.wideiv = trunc i64 %indvars.iv.next24.i to i32, !dbg !1438
  %exitcond = icmp eq i32 %lftr.wideiv, %homenr, !dbg !1438
  br i1 %exitcond, label %for.end260.i, label %for.body255.i, !dbg !1438

for.end260.i:                                     ; preds = %for.body255.i, %for.end251.i
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 216, i8* %call.i) #7, !dbg !1441
  %tobool.i = icmp eq %struct._IO_FILE* %2, null, !dbg !1442
  br i1 %tobool.i, label %for.body279.lr.ph.i, label %if.then261.i, !dbg !1442

if.then261.i:                                     ; preds = %for.end260.i
  %97 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8]* @.str55, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %2) #3, !dbg !1443
  %call263.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([31 x i8]* @.str56, i64 0, i64 0), i32 %div.i) #7, !dbg !1445
  %98 = load i32* @constrain_lincs.nrtot, align 4, !dbg !1446, !tbaa !1035
  %conv264.i = sitofp i32 %98 to float, !dbg !1446
  %conv265.i = sitofp i32 %div.i to float, !dbg !1446
  %div266.i = fdiv float %conv264.i, %conv265.i, !dbg !1446
  %conv267.i = fpext float %div266.i to double, !dbg !1446
  %call268.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([67 x i8]* @.str57, i64 0, i64 0), double %conv267.i) #7, !dbg !1446
  %tobool269.i = icmp eq i32 %nZeroLen.1.i, 0, !dbg !1447
  br i1 %tobool269.i, label %if.end272.i, label %if.then270.i, !dbg !1447

if.then270.i:                                     ; preds = %if.then261.i
  %call271.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([41 x i8]* @.str58, i64 0, i64 0), i32 %nZeroLen.1.i) #7, !dbg !1448
  br label %if.end272.i, !dbg !1448

if.end272.i:                                      ; preds = %if.then270.i, %if.then261.i
  %fputc.i = call i32 @fputc(i32 10, %struct._IO_FILE* %2) #3, !dbg !1449
  %call274.i = call i32 @fflush(%struct._IO_FILE* %2) #7, !dbg !1450
  br label %for.body279.lr.ph.i, !dbg !1451

for.body279.lr.ph.i:                              ; preds = %if.end272.i, %for.end260.i
  %99 = load i32** @constrain_lincs.bla1, align 8, !dbg !1452, !tbaa !1043
  %100 = load i32** @constrain_lincs.bla2, align 8, !dbg !1455, !tbaa !1043
  %101 = load i32** @constrain_lincs.blnr, align 8, !dbg !1456, !tbaa !1043
  %102 = load i32** @constrain_lincs.blbnb, align 8, !dbg !1458, !tbaa !1043
  %103 = load float** @constrain_lincs.blc, align 8, !dbg !1460, !tbaa !1043
  %104 = load float** @constrain_lincs.blcc, align 8, !dbg !1460, !tbaa !1043
  %.pre.i = load i32* %101, align 4, !dbg !1456, !tbaa !1035
  br label %for.body279.i, !dbg !1461

for.cond276.loopexit.i:                           ; preds = %if.end317.i, %for.body279.i
  %105 = trunc i64 %indvars.iv.next22.i to i32, !dbg !1461
  %cmp277.i = icmp slt i32 %105, %div.i, !dbg !1461
  br i1 %cmp277.i, label %for.body279.i, label %if.end206, !dbg !1461

for.body279.i:                                    ; preds = %for.cond276.loopexit.i, %for.body279.lr.ph.i
  %106 = phi i32 [ %.pre.i, %for.body279.lr.ph.i ], [ %109, %for.cond276.loopexit.i ], !dbg !1452
  %indvars.iv21.i = phi i64 [ 0, %for.body279.lr.ph.i ], [ %indvars.iv.next22.i, %for.cond276.loopexit.i ]
  %arrayidx281.i = getelementptr inbounds i32* %99, i64 %indvars.iv21.i, !dbg !1452
  %107 = load i32* %arrayidx281.i, align 4, !dbg !1452, !tbaa !1035
  call void @llvm.dbg.value(metadata !{i32 %107}, i64 0, metadata !1353) #3, !dbg !1452
  %arrayidx283.i = getelementptr inbounds i32* %100, i64 %indvars.iv21.i, !dbg !1455
  %108 = load i32* %arrayidx283.i, align 4, !dbg !1455, !tbaa !1035
  call void @llvm.dbg.value(metadata !{i32 %108}, i64 0, metadata !1406) #3, !dbg !1455
  call void @llvm.dbg.value(metadata !{i32 %106}, i64 0, metadata !1462) #3, !dbg !1456
  %indvars.iv.next22.i = add i64 %indvars.iv21.i, 1, !dbg !1461
  %arrayidx2892.i = getelementptr inbounds i32* %101, i64 %indvars.iv.next22.i, !dbg !1456
  %109 = load i32* %arrayidx2892.i, align 4, !dbg !1456, !tbaa !1035
  %cmp2903.i = icmp slt i32 %106, %109, !dbg !1456
  br i1 %cmp2903.i, label %for.body292.lr.ph.i, label %for.cond276.loopexit.i, !dbg !1456

for.body292.lr.ph.i:                              ; preds = %for.body279.i
  %110 = load float** %invmass.i, align 8, !dbg !1460, !tbaa !1043
  %arrayidx323.i = getelementptr inbounds float* %103, i64 %indvars.iv21.i, !dbg !1460
  %111 = sext i32 %106 to i64
  br label %for.body292.i, !dbg !1456

for.body292.i:                                    ; preds = %if.end317.i, %for.body292.lr.ph.i
  %indvars.iv.i = phi i64 [ %111, %for.body292.lr.ph.i ], [ %indvars.iv.next.i, %if.end317.i ]
  %arrayidx294.i = getelementptr inbounds i32* %102, i64 %indvars.iv.i, !dbg !1458
  %112 = load i32* %arrayidx294.i, align 4, !dbg !1458, !tbaa !1035
  call void @llvm.dbg.value(metadata !{i32 %112}, i64 0, metadata !1427) #3, !dbg !1458
  %idxprom295.i = sext i32 %112 to i64, !dbg !1463
  %arrayidx296.i = getelementptr inbounds i32* %99, i64 %idxprom295.i, !dbg !1463
  %113 = load i32* %arrayidx296.i, align 4, !dbg !1463, !tbaa !1035
  %cmp297.i = icmp eq i32 %107, %113, !dbg !1463
  br i1 %cmp297.i, label %if.end317.i, label %lor.lhs.false310.i, !dbg !1463

lor.lhs.false310.i:                               ; preds = %for.body292.i
  %arrayidx30145.i = getelementptr inbounds i32* %100, i64 %idxprom295.i, !dbg !1463
  %114 = load i32* %arrayidx30145.i, align 4, !dbg !1463, !tbaa !1035
  %cmp30246.i = icmp eq i32 %108, %114, !dbg !1463
  call void @llvm.dbg.value(metadata !1464, i64 0, metadata !1465) #3, !dbg !1466
  %.47.i = select i1 %cmp30246.i, float -1.000000e+00, float 1.000000e+00, !dbg !1463
  %cmp313.i = icmp eq i32 %107, %114, !dbg !1467
  call void @llvm.dbg.value(metadata !{i32 %108}, i64 0, metadata !1468) #3, !dbg !1469
  %.1.i = select i1 %cmp313.i, i32 %107, i32 %108, !dbg !1467
  br label %if.end317.i, !dbg !1467

if.end317.i:                                      ; preds = %lor.lhs.false310.i, %for.body292.i
  %sign.043.i = phi float [ %.47.i, %lor.lhs.false310.i ], [ -1.000000e+00, %for.body292.i ]
  %cen.0.i = phi i32 [ %.1.i, %lor.lhs.false310.i ], [ %107, %for.body292.i ]
  %idxprom318.i = sext i32 %cen.0.i to i64, !dbg !1460
  %arrayidx320.i = getelementptr inbounds float* %110, i64 %idxprom318.i, !dbg !1460
  %115 = load float* %arrayidx320.i, align 4, !dbg !1460, !tbaa !1135
  %mul321.i = fmul float %sign.043.i, %115, !dbg !1460
  %116 = load float* %arrayidx323.i, align 4, !dbg !1460, !tbaa !1135
  %mul324.i = fmul float %mul321.i, %116, !dbg !1460
  %arrayidx326.i = getelementptr inbounds float* %103, i64 %idxprom295.i, !dbg !1460
  %117 = load float* %arrayidx326.i, align 4, !dbg !1460, !tbaa !1135
  %mul327.i = fmul float %mul324.i, %117, !dbg !1460
  %arrayidx329.i = getelementptr inbounds float* %104, i64 %indvars.iv.i, !dbg !1460
  store float %mul327.i, float* %arrayidx329.i, align 4, !dbg !1460, !tbaa !1135
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !1456
  %118 = trunc i64 %indvars.iv.next.i to i32, !dbg !1456
  %cmp290.i = icmp slt i32 %118, %109, !dbg !1456
  br i1 %cmp290.i, label %for.body292.i, label %for.cond276.loopexit.i, !dbg !1456

if.else:                                          ; preds = %entry
  %119 = load i32* @constrain_lincs.nc, align 4, !dbg !1470, !tbaa !1035
  %cmp = icmp eq i32 %119, 0, !dbg !1470
  br i1 %cmp, label %if.end206, label %if.then1, !dbg !1470

if.then1:                                         ; preds = %if.else
  %tobool2 = icmp eq i32 %bCoordinates, 0, !dbg !1471
  br i1 %tobool2, label %if.else183, label %if.then3, !dbg !1471

if.then3:                                         ; preds = %if.then1
  %delta_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15, !dbg !1472
  %120 = load float* %delta_t, align 4, !dbg !1472, !tbaa !1135
  call void @llvm.dbg.value(metadata !{float %120}, i64 0, metadata !895), !dbg !1472
  %mul = fmul float %120, %120, !dbg !1473
  %conv5 = fdiv float 1.000000e+00, %mul, !dbg !1473
  call void @llvm.dbg.value(metadata !{float %conv5}, i64 0, metadata !896), !dbg !1473
  %efep = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 46, !dbg !1474
  %121 = load i32* %efep, align 4, !dbg !1474, !tbaa !1035
  %cmp6 = icmp eq i32 %121, 0, !dbg !1474
  br i1 %cmp6, label %for.cond17.preheader, label %for.cond.preheader, !dbg !1474

for.cond.preheader:                               ; preds = %if.then3
  %cmp912 = icmp sgt i32 %119, 0, !dbg !1475
  br i1 %cmp912, label %for.body.lr.ph, label %for.end63, !dbg !1475

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %122 = load float** @constrain_lincs.bllen0, align 8, !dbg !1477, !tbaa !1043
  %123 = load float** @constrain_lincs.ddist, align 8, !dbg !1477, !tbaa !1043
  %124 = load float** @constrain_lincs.bllen, align 8, !dbg !1477, !tbaa !1043
  br label %for.body, !dbg !1475

for.cond17.preheader:                             ; preds = %for.body, %if.then3
  %cmp1810 = icmp sgt i32 %119, 0, !dbg !1478
  br i1 %cmp1810, label %for.body20, label %for.end63, !dbg !1478

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv18 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next19, %for.body ]
  %arrayidx11 = getelementptr inbounds float* %122, i64 %indvars.iv18, !dbg !1477
  %125 = load float* %arrayidx11, align 4, !dbg !1477, !tbaa !1135
  %arrayidx13 = getelementptr inbounds float* %123, i64 %indvars.iv18, !dbg !1477
  %126 = load float* %arrayidx13, align 4, !dbg !1477, !tbaa !1135
  %mul14 = fmul float %126, %lambda, !dbg !1477
  %add = fadd float %125, %mul14, !dbg !1477
  %arrayidx16 = getelementptr inbounds float* %124, i64 %indvars.iv18, !dbg !1477
  store float %add, float* %arrayidx16, align 4, !dbg !1477, !tbaa !1135
  %indvars.iv.next19 = add i64 %indvars.iv18, 1, !dbg !1475
  %127 = trunc i64 %indvars.iv.next19 to i32, !dbg !1475
  %cmp9 = icmp slt i32 %127, %119, !dbg !1475
  br i1 %cmp9, label %for.body, label %for.cond17.preheader, !dbg !1475

for.body20:                                       ; preds = %for.inc61, %for.cond17.preheader
  %128 = phi i32 [ %119, %for.cond17.preheader ], [ %142, %for.inc61 ]
  %indvars.iv16 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next17, %for.inc61 ]
  %129 = load float** @constrain_lincs.bllen0, align 8, !dbg !1480, !tbaa !1043
  %arrayidx22 = getelementptr inbounds float* %129, i64 %indvars.iv16, !dbg !1480
  %130 = load float* %arrayidx22, align 4, !dbg !1480, !tbaa !1135
  %conv23 = fpext float %130 to double, !dbg !1480
  %cmp24 = fcmp olt double %conv23, 1.200000e-38, !dbg !1480
  br i1 %cmp24, label %if.then26, label %for.inc61, !dbg !1480

if.then26:                                        ; preds = %for.body20
  %131 = load i32** @constrain_lincs.bla1, align 8, !dbg !1481, !tbaa !1043
  %arrayidx28 = getelementptr inbounds i32* %131, i64 %indvars.iv16, !dbg !1481
  %132 = load i32* %arrayidx28, align 4, !dbg !1481, !tbaa !1035
  call void @llvm.dbg.value(metadata !{i32 %132}, i64 0, metadata !886), !dbg !1481
  %133 = load i32** @constrain_lincs.bla2, align 8, !dbg !1483, !tbaa !1043
  %arrayidx30 = getelementptr inbounds i32* %133, i64 %indvars.iv16, !dbg !1483
  %134 = load i32* %arrayidx30, align 4, !dbg !1483, !tbaa !1035
  call void @llvm.dbg.value(metadata !{i32 %134}, i64 0, metadata !887), !dbg !1483
  %idxprom31 = sext i32 %132 to i64, !dbg !1484
  %arrayidx33 = getelementptr inbounds [3 x float]* %x, i64 %idxprom31, i64 0, !dbg !1484
  %135 = load float* %arrayidx33, align 4, !dbg !1484, !tbaa !1135
  %idxprom34 = sext i32 %134 to i64, !dbg !1484
  %arrayidx36 = getelementptr inbounds [3 x float]* %x, i64 %idxprom34, i64 0, !dbg !1484
  %136 = load float* %arrayidx36, align 4, !dbg !1484, !tbaa !1135
  %sub = fsub float %135, %136, !dbg !1484
  tail call void @llvm.dbg.value(metadata !{float %sub}, i64 0, metadata !1485), !dbg !1486
  %mul.i2 = fmul float %sub, %sub, !dbg !1487
  %arrayidx39 = getelementptr inbounds [3 x float]* %x, i64 %idxprom31, i64 1, !dbg !1489
  %137 = load float* %arrayidx39, align 4, !dbg !1489, !tbaa !1135
  %arrayidx42 = getelementptr inbounds [3 x float]* %x, i64 %idxprom34, i64 1, !dbg !1489
  %138 = load float* %arrayidx42, align 4, !dbg !1489, !tbaa !1135
  %sub43 = fsub float %137, %138, !dbg !1489
  tail call void @llvm.dbg.value(metadata !{float %sub43}, i64 0, metadata !1490), !dbg !1491
  %mul.i3 = fmul float %sub43, %sub43, !dbg !1492
  %add45 = fadd float %mul.i2, %mul.i3, !dbg !1489
  %arrayidx48 = getelementptr inbounds [3 x float]* %x, i64 %idxprom31, i64 2, !dbg !1493
  %139 = load float* %arrayidx48, align 4, !dbg !1493, !tbaa !1135
  %arrayidx51 = getelementptr inbounds [3 x float]* %x, i64 %idxprom34, i64 2, !dbg !1493
  %140 = load float* %arrayidx51, align 4, !dbg !1493, !tbaa !1135
  %sub52 = fsub float %139, %140, !dbg !1493
  tail call void @llvm.dbg.value(metadata !{float %sub52}, i64 0, metadata !1494), !dbg !1495
  %mul.i4 = fmul float %sub52, %sub52, !dbg !1496
  %add54 = fadd float %add45, %mul.i4, !dbg !1493
  %conv57 = call float @sqrtf(float %add54) #4, !dbg !1493
  %141 = load float** @constrain_lincs.bllen, align 8, !dbg !1493, !tbaa !1043
  %arrayidx59 = getelementptr inbounds float* %141, i64 %indvars.iv16, !dbg !1493
  store float %conv57, float* %arrayidx59, align 4, !dbg !1493, !tbaa !1135
  %.pre20 = load i32* @constrain_lincs.nc, align 4, !dbg !1478, !tbaa !1035
  br label %for.inc61, !dbg !1497

for.inc61:                                        ; preds = %for.body20, %if.then26
  %142 = phi i32 [ %128, %for.body20 ], [ %.pre20, %if.then26 ], !dbg !1478
  %indvars.iv.next17 = add i64 %indvars.iv16, 1, !dbg !1478
  %143 = trunc i64 %indvars.iv.next17 to i32, !dbg !1478
  %cmp18 = icmp slt i32 %143, %142, !dbg !1478
  br i1 %cmp18, label %for.body20, label %for.end63, !dbg !1478

for.end63:                                        ; preds = %for.cond.preheader, %for.inc61, %for.cond17.preheader
  %LincsWarnAngle = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 66, !dbg !1498
  %144 = load float* %LincsWarnAngle, align 4, !dbg !1498, !tbaa !1135
  call void @llvm.dbg.value(metadata !{float %144}, i64 0, metadata !892), !dbg !1498
  store float %144, float* %wang, align 4, !dbg !1498, !tbaa !1135
  %nstlog = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 8, !dbg !1499
  %145 = load i32* %nstlog, align 4, !dbg !1499, !tbaa !1035
  %call64 = call i32 @do_per_step(i32 %step, i32 %145) #7, !dbg !1499
  %tobool65 = icmp ne i32 %call64, 0, !dbg !1499
  %cmp66 = icmp slt i32 %step, 0, !dbg !1499
  %or.cond = or i1 %tobool65, %cmp66, !dbg !1499
  br i1 %or.cond, label %if.then68, label %if.end69, !dbg !1499

if.then68:                                        ; preds = %for.end63
  %146 = load i32* @constrain_lincs.nc, align 4, !dbg !1500, !tbaa !1035
  %147 = load i32** @constrain_lincs.bla1, align 8, !dbg !1500, !tbaa !1043
  %148 = load i32** @constrain_lincs.bla2, align 8, !dbg !1500, !tbaa !1043
  %149 = load float** @constrain_lincs.bllen, align 8, !dbg !1500, !tbaa !1043
  call void @cconerr(float* %p_max, float* %p_rms, i32* %p_imax, [3 x float]* %xprime, i32 %146, i32* %147, i32* %148, float* %149) #6, !dbg !1500
  br label %if.end69, !dbg !1500

if.end69:                                         ; preds = %for.end63, %if.then68
  %eI = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 0, !dbg !1501
  %150 = load i32* %eI, align 4, !dbg !1501, !tbaa !1035
  %.off = add i32 %150, -1, !dbg !1501
  %switch = icmp ult i32 %.off, 2, !dbg !1501
  %nProjOrder = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 65, !dbg !1502
  br i1 %switch, label %if.then78, label %if.end80, !dbg !1501

if.then78:                                        ; preds = %if.end69
  %151 = load i32* %nProjOrder, align 4, !dbg !1502, !tbaa !1035
  call void @llvm.dbg.value(metadata !{i32 %151}, i64 0, metadata !888), !dbg !1502
  br label %if.end80, !dbg !1502

if.end80:                                         ; preds = %if.end69, %if.then78
  %storemerge = phi i32 [ %151, %if.then78 ], [ 1, %if.end69 ]
  call void @llvm.dbg.value(metadata !{i32 %storemerge}, i64 0, metadata !888), !dbg !1502
  store i32 %storemerge, i32* %nit, align 4, !dbg !1502, !tbaa !1035
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 0, i64 0, !dbg !1503
  %arraydecay83 = getelementptr inbounds [3 x float]* %xprime, i64 0, i64 0, !dbg !1503
  %152 = load i32** @constrain_lincs.bla1, align 8, !dbg !1503, !tbaa !1043
  %153 = load i32** @constrain_lincs.bla2, align 8, !dbg !1503, !tbaa !1043
  %154 = load i32** @constrain_lincs.blnr, align 8, !dbg !1503, !tbaa !1043
  %155 = load i32** @constrain_lincs.blbnb, align 8, !dbg !1503, !tbaa !1043
  %156 = load float** @constrain_lincs.bllen, align 8, !dbg !1503, !tbaa !1043
  %157 = load float** @constrain_lincs.blc, align 8, !dbg !1503, !tbaa !1043
  %158 = load float** @constrain_lincs.blcc, align 8, !dbg !1503, !tbaa !1043
  %159 = load float** @constrain_lincs.blm, align 8, !dbg !1503, !tbaa !1043
  %invmass = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5, !dbg !1503
  %160 = load float** %invmass, align 8, !dbg !1503, !tbaa !1043
  %161 = load [3 x float]** @constrain_lincs.r, align 8, !dbg !1503, !tbaa !1043
  %arraydecay86 = getelementptr inbounds [3 x float]* %161, i64 0, i64 0, !dbg !1503
  %162 = load float** @constrain_lincs.tmp1, align 8, !dbg !1503, !tbaa !1043
  %163 = load float** @constrain_lincs.tmp2, align 8, !dbg !1503, !tbaa !1043
  %164 = load float** @constrain_lincs.tmp3, align 8, !dbg !1503, !tbaa !1043
  %165 = load float** @constrain_lincs.lincslam, align 8, !dbg !1503, !tbaa !1043
  call void @flincs_(float* %arraydecay, float* %arraydecay83, i32* @constrain_lincs.nc, i32* %152, i32* %153, i32* %154, i32* %155, float* %156, float* %157, float* %158, float* %159, i32* %nit, i32* %nProjOrder, float* %160, float* %arraydecay86, float* %162, float* %163, float* %164, float* %wang, i32* %warn, float* %165) #7, !dbg !1503
  %166 = load i32* %efep, align 4, !dbg !1504, !tbaa !1035
  %cmp88 = icmp eq i32 %166, 0, !dbg !1504
  br i1 %cmp88, label %if.end106, label %for.cond91.preheader, !dbg !1504

for.cond91.preheader:                             ; preds = %if.end80
  %167 = load i32* @constrain_lincs.nc, align 4, !dbg !1505, !tbaa !1035
  %cmp927 = icmp sgt i32 %167, 0, !dbg !1505
  br i1 %cmp927, label %for.body94.lr.ph, label %for.end104, !dbg !1505

for.body94.lr.ph:                                 ; preds = %for.cond91.preheader
  %168 = load float** @constrain_lincs.lincslam, align 8, !dbg !1507, !tbaa !1043
  %169 = load float** @constrain_lincs.ddist, align 8, !dbg !1507, !tbaa !1043
  br label %for.body94, !dbg !1505

for.body94:                                       ; preds = %for.body94.lr.ph, %for.body94
  %indvars.iv14 = phi i64 [ 0, %for.body94.lr.ph ], [ %indvars.iv.next15, %for.body94 ]
  %dvdl.09 = phi float [ 0.000000e+00, %for.body94.lr.ph ], [ %add101, %for.body94 ]
  %arrayidx96 = getelementptr inbounds float* %168, i64 %indvars.iv14, !dbg !1507
  %170 = load float* %arrayidx96, align 4, !dbg !1507, !tbaa !1135
  %mul97 = fmul float %conv5, %170, !dbg !1507
  %arrayidx99 = getelementptr inbounds float* %169, i64 %indvars.iv14, !dbg !1507
  %171 = load float* %arrayidx99, align 4, !dbg !1507, !tbaa !1135
  %mul100 = fmul float %mul97, %171, !dbg !1507
  %add101 = fadd float %dvdl.09, %mul100, !dbg !1507
  call void @llvm.dbg.value(metadata !{float %add101}, i64 0, metadata !898), !dbg !1507
  %indvars.iv.next15 = add i64 %indvars.iv14, 1, !dbg !1505
  %172 = trunc i64 %indvars.iv.next15 to i32, !dbg !1505
  %cmp92 = icmp slt i32 %172, %167, !dbg !1505
  br i1 %cmp92, label %for.body94, label %for.end104, !dbg !1505

for.end104:                                       ; preds = %for.body94, %for.cond91.preheader
  %dvdl.0.lcssa = phi float [ 0.000000e+00, %for.cond91.preheader ], [ %add101, %for.body94 ]
  %173 = load float* %dvdlambda, align 4, !dbg !1508, !tbaa !1135
  %add105 = fadd float %dvdl.0.lcssa, %173, !dbg !1508
  store float %add105, float* %dvdlambda, align 4, !dbg !1508, !tbaa !1135
  br label %if.end106, !dbg !1509

if.end106:                                        ; preds = %if.end80, %for.end104
  %174 = load %struct._IO_FILE** @stdlog, align 8, !dbg !1510, !tbaa !1043
  %tobool107 = icmp eq %struct._IO_FILE* %174, null, !dbg !1510
  br i1 %tobool107, label %if.end136, label %if.then108, !dbg !1510

if.then108:                                       ; preds = %if.end106
  %175 = load i32* %nstlog, align 4, !dbg !1511, !tbaa !1035
  %call110 = call i32 @do_per_step(i32 %step, i32 %175) #7, !dbg !1511
  %tobool111 = icmp ne i32 %call110, 0, !dbg !1511
  %or.cond208 = or i1 %tobool111, %cmp66, !dbg !1511
  br i1 %or.cond208, label %if.then115, label %if.end136, !dbg !1511

if.then115:                                       ; preds = %if.then108
  %176 = load %struct._IO_FILE** @stdlog, align 8, !dbg !1513, !tbaa !1043
  %177 = call i64 @fwrite(i8* getelementptr inbounds ([61 x i8]* @.str28, i64 0, i64 0), i64 60, i64 1, %struct._IO_FILE* %176), !dbg !1513
  %178 = load %struct._IO_FILE** @stdlog, align 8, !dbg !1515, !tbaa !1043
  call void @llvm.dbg.value(metadata !{float* %p_max}, i64 0, metadata !893), !dbg !1515
  %179 = load float* %p_max, align 4, !dbg !1515, !tbaa !1135
  %conv117 = fpext float %179 to double, !dbg !1515
  call void @llvm.dbg.value(metadata !{i32* %p_imax}, i64 0, metadata !890), !dbg !1515
  %180 = load i32* %p_imax, align 4, !dbg !1515, !tbaa !1035
  %idxprom118 = sext i32 %180 to i64, !dbg !1515
  %181 = load i32** @constrain_lincs.bla1, align 8, !dbg !1515, !tbaa !1043
  %arrayidx119 = getelementptr inbounds i32* %181, i64 %idxprom118, !dbg !1515
  %182 = load i32* %arrayidx119, align 4, !dbg !1515, !tbaa !1035
  %add120 = add nsw i32 %182, 1, !dbg !1515
  %183 = load i32** @constrain_lincs.bla2, align 8, !dbg !1515, !tbaa !1043
  %arrayidx122 = getelementptr inbounds i32* %183, i64 %idxprom118, !dbg !1515
  %184 = load i32* %arrayidx122, align 4, !dbg !1515, !tbaa !1035
  %add123 = add nsw i32 %184, 1, !dbg !1515
  call void @llvm.dbg.value(metadata !{float* %p_rms}, i64 0, metadata !894), !dbg !1515
  %185 = load float* %p_rms, align 4, !dbg !1515, !tbaa !1135
  %conv124 = fpext float %185 to double, !dbg !1515
  %call125 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %178, i8* getelementptr inbounds ([49 x i8]* @.str29, i64 0, i64 0), double %conv117, i32 %add120, i32 %add123, double %conv124) #7, !dbg !1515
  %186 = load i32* @constrain_lincs.nc, align 4, !dbg !1516, !tbaa !1035
  %187 = load i32** @constrain_lincs.bla1, align 8, !dbg !1516, !tbaa !1043
  %188 = load i32** @constrain_lincs.bla2, align 8, !dbg !1516, !tbaa !1043
  %189 = load float** @constrain_lincs.bllen, align 8, !dbg !1516, !tbaa !1043
  call void @cconerr(float* %p_max, float* %p_rms, i32* %p_imax, [3 x float]* %xprime, i32 %186, i32* %187, i32* %188, float* %189) #6, !dbg !1516
  %190 = load %struct._IO_FILE** @stdlog, align 8, !dbg !1517, !tbaa !1043
  call void @llvm.dbg.value(metadata !{float* %p_max}, i64 0, metadata !893), !dbg !1517
  %191 = load float* %p_max, align 4, !dbg !1517, !tbaa !1135
  %conv126 = fpext float %191 to double, !dbg !1517
  call void @llvm.dbg.value(metadata !{i32* %p_imax}, i64 0, metadata !890), !dbg !1517
  %192 = load i32* %p_imax, align 4, !dbg !1517, !tbaa !1035
  %idxprom127 = sext i32 %192 to i64, !dbg !1517
  %193 = load i32** @constrain_lincs.bla1, align 8, !dbg !1517, !tbaa !1043
  %arrayidx128 = getelementptr inbounds i32* %193, i64 %idxprom127, !dbg !1517
  %194 = load i32* %arrayidx128, align 4, !dbg !1517, !tbaa !1035
  %add129 = add nsw i32 %194, 1, !dbg !1517
  %195 = load i32** @constrain_lincs.bla2, align 8, !dbg !1517, !tbaa !1043
  %arrayidx131 = getelementptr inbounds i32* %195, i64 %idxprom127, !dbg !1517
  %196 = load i32* %arrayidx131, align 4, !dbg !1517, !tbaa !1035
  %add132 = add nsw i32 %196, 1, !dbg !1517
  call void @llvm.dbg.value(metadata !{float* %p_rms}, i64 0, metadata !894), !dbg !1517
  %197 = load float* %p_rms, align 4, !dbg !1517, !tbaa !1135
  %conv133 = fpext float %197 to double, !dbg !1517
  %call134 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %190, i8* getelementptr inbounds ([50 x i8]* @.str30, i64 0, i64 0), double %conv126, i32 %add129, i32 %add132, double %conv133) #7, !dbg !1517
  br label %if.end136, !dbg !1518

if.end136:                                        ; preds = %if.end106, %if.then115, %if.then108
  call void @llvm.dbg.value(metadata !{i32* %warn}, i64 0, metadata !889), !dbg !1519
  %198 = load i32* %warn, align 4, !dbg !1519, !tbaa !1035
  %cmp137 = icmp sgt i32 %198, 0, !dbg !1519
  br i1 %cmp137, label %if.then139, label %if.end166, !dbg !1519

if.then139:                                       ; preds = %if.end136
  %199 = load %struct._IO_FILE** @stdlog, align 8, !dbg !1520, !tbaa !1043
  %tobool141 = icmp eq %struct._IO_FILE* %199, null, !dbg !1520
  br i1 %tobool141, label %if.then139.if.end162_crit_edge, label %if.then142, !dbg !1520

if.then139.if.end162_crit_edge:                   ; preds = %if.then139
  call void @llvm.dbg.value(metadata !{float* %p_max}, i64 0, metadata !893), !dbg !1522
  %.pre21 = load float* %p_max, align 4, !dbg !1522, !tbaa !1135
  br label %if.end162, !dbg !1520

if.then142:                                       ; preds = %if.then139
  %200 = load i32* @constrain_lincs.nc, align 4, !dbg !1523, !tbaa !1035
  %201 = load i32** @constrain_lincs.bla1, align 8, !dbg !1523, !tbaa !1043
  %202 = load i32** @constrain_lincs.bla2, align 8, !dbg !1523, !tbaa !1043
  %203 = load float** @constrain_lincs.bllen, align 8, !dbg !1523, !tbaa !1043
  call void @cconerr(float* %p_max, float* %p_rms, i32* %p_imax, [3 x float]* %xprime, i32 %200, i32* %201, i32* %202, float* %203) #6, !dbg !1523
  %init_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 14, !dbg !1525
  %204 = load float* %init_t, align 4, !dbg !1525, !tbaa !1135
  %conv144 = sitofp i32 %step to float, !dbg !1525
  %205 = load float* %delta_t, align 4, !dbg !1525, !tbaa !1135
  %mul146 = fmul float %conv144, %205, !dbg !1525
  %add147 = fadd float %204, %mul146, !dbg !1525
  %conv148 = fpext float %add147 to double, !dbg !1525
  call void @llvm.dbg.value(metadata !{float* %p_max}, i64 0, metadata !893), !dbg !1525
  %206 = load float* %p_max, align 4, !dbg !1525, !tbaa !1135
  %conv149 = fpext float %206 to double, !dbg !1525
  call void @llvm.dbg.value(metadata !{i32* %p_imax}, i64 0, metadata !890), !dbg !1525
  %207 = load i32* %p_imax, align 4, !dbg !1525, !tbaa !1035
  %idxprom150 = sext i32 %207 to i64, !dbg !1525
  %208 = load i32** @constrain_lincs.bla1, align 8, !dbg !1525, !tbaa !1043
  %arrayidx151 = getelementptr inbounds i32* %208, i64 %idxprom150, !dbg !1525
  %209 = load i32* %arrayidx151, align 4, !dbg !1525, !tbaa !1035
  %add152 = add nsw i32 %209, 1, !dbg !1525
  %210 = load i32** @constrain_lincs.bla2, align 8, !dbg !1525, !tbaa !1043
  %arrayidx154 = getelementptr inbounds i32* %210, i64 %idxprom150, !dbg !1525
  %211 = load i32* %arrayidx154, align 4, !dbg !1525, !tbaa !1035
  %add155 = add nsw i32 %211, 1, !dbg !1525
  call void @llvm.dbg.value(metadata !{float* %p_rms}, i64 0, metadata !894), !dbg !1525
  %212 = load float* %p_rms, align 4, !dbg !1525, !tbaa !1135
  %conv156 = fpext float %212 to double, !dbg !1525
  %call157 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([126 x i8]* @.str31, i64 0, i64 0), i32 %step, double %conv148, double %conv149, i32 %add152, i32 %add155, double %conv156) #7, !dbg !1525
  %213 = load %struct._IO_FILE** @stdlog, align 8, !dbg !1526, !tbaa !1043
  %fputs = call i32 @fputs(i8* %0, %struct._IO_FILE* %213), !dbg !1526
  %214 = load %struct._IO_FILE** @stderr, align 8, !dbg !1527, !tbaa !1043
  %fputs1 = call i32 @fputs(i8* %0, %struct._IO_FILE* %214), !dbg !1527
  %215 = load i32* @constrain_lincs.nc, align 4, !dbg !1528, !tbaa !1035
  %216 = load i32** @constrain_lincs.bla1, align 8, !dbg !1528, !tbaa !1043
  %217 = load i32** @constrain_lincs.bla2, align 8, !dbg !1528, !tbaa !1043
  %218 = load float** @constrain_lincs.bllen, align 8, !dbg !1528, !tbaa !1043
  call void @llvm.dbg.value(metadata !{float* %wang}, i64 0, metadata !892), !dbg !1528
  %219 = load float* %wang, align 4, !dbg !1528, !tbaa !1135
  call void @lincs_warning([3 x float]* %x, [3 x float]* %xprime, i32 %215, i32* %216, i32* %217, float* %218, float %219) #6, !dbg !1528
  br label %if.end162, !dbg !1529

if.end162:                                        ; preds = %if.then139.if.end162_crit_edge, %if.then142
  %220 = phi float [ %.pre21, %if.then139.if.end162_crit_edge ], [ %206, %if.then142 ]
  call void @llvm.dbg.value(metadata !{float* %p_max}, i64 0, metadata !893), !dbg !1522
  %cmp164 = fcmp olt float %220, 5.000000e-01, !dbg !1522
  %conv165 = zext i1 %cmp164 to i32, !dbg !1522
  call void @llvm.dbg.value(metadata !{i32 %conv165}, i64 0, metadata !897), !dbg !1522
  br label %if.end166, !dbg !1530

if.end166:                                        ; preds = %if.end136, %if.end162
  %bOK.0 = phi i32 [ %conv165, %if.end162 ], [ 1, %if.end136 ]
  call void @llvm.dbg.value(metadata !225, i64 0, metadata !885), !dbg !1531
  %221 = load i32* @constrain_lincs.nc, align 4, !dbg !1531, !tbaa !1035
  %cmp1685 = icmp sgt i32 %221, 0, !dbg !1531
  br i1 %cmp1685, label %for.body170.lr.ph, label %if.end194, !dbg !1531

for.body170.lr.ph:                                ; preds = %if.end166
  %222 = load float** @constrain_lincs.bllen0, align 8, !dbg !1533, !tbaa !1043
  %223 = load float** @constrain_lincs.bllen, align 8, !dbg !1534, !tbaa !1043
  br label %for.body170, !dbg !1531

for.body170:                                      ; preds = %for.body170.lr.ph, %for.inc180
  %indvars.iv = phi i64 [ 0, %for.body170.lr.ph ], [ %indvars.iv.next, %for.inc180 ]
  %arrayidx172 = getelementptr inbounds float* %222, i64 %indvars.iv, !dbg !1533
  %224 = load float* %arrayidx172, align 4, !dbg !1533, !tbaa !1135
  %conv173 = fpext float %224 to double, !dbg !1533
  %cmp174 = fcmp olt double %conv173, 1.200000e-38, !dbg !1533
  br i1 %cmp174, label %if.then176, label %for.inc180, !dbg !1533

if.then176:                                       ; preds = %for.body170
  %arrayidx178 = getelementptr inbounds float* %223, i64 %indvars.iv, !dbg !1534
  store float 0.000000e+00, float* %arrayidx178, align 4, !dbg !1534, !tbaa !1135
  br label %for.inc180, !dbg !1534

for.inc180:                                       ; preds = %for.body170, %if.then176
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1531
  %225 = trunc i64 %indvars.iv.next to i32, !dbg !1531
  %cmp168 = icmp slt i32 %225, %221, !dbg !1531
  br i1 %cmp168, label %for.body170, label %if.end194, !dbg !1531

if.else183:                                       ; preds = %if.then1
  %arraydecay185 = getelementptr inbounds [3 x float]* %x, i64 0, i64 0, !dbg !1535
  %arraydecay187 = getelementptr inbounds [3 x float]* %xprime, i64 0, i64 0, !dbg !1535
  %arraydecay189 = getelementptr inbounds [3 x float]* %min_proj, i64 0, i64 0, !dbg !1535
  %226 = load i32** @constrain_lincs.bla1, align 8, !dbg !1535, !tbaa !1043
  %227 = load i32** @constrain_lincs.bla2, align 8, !dbg !1535, !tbaa !1043
  %228 = load i32** @constrain_lincs.blnr, align 8, !dbg !1535, !tbaa !1043
  %229 = load i32** @constrain_lincs.blbnb, align 8, !dbg !1535, !tbaa !1043
  %230 = load float** @constrain_lincs.blc, align 8, !dbg !1535, !tbaa !1043
  %231 = load float** @constrain_lincs.blcc, align 8, !dbg !1535, !tbaa !1043
  %232 = load float** @constrain_lincs.blm, align 8, !dbg !1535, !tbaa !1043
  %nProjOrder190 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 65, !dbg !1535
  %invmass191 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5, !dbg !1535
  %233 = load float** %invmass191, align 8, !dbg !1535, !tbaa !1043
  %234 = load [3 x float]** @constrain_lincs.r, align 8, !dbg !1535, !tbaa !1043
  %arraydecay193 = getelementptr inbounds [3 x float]* %234, i64 0, i64 0, !dbg !1535
  %235 = load float** @constrain_lincs.tmp1, align 8, !dbg !1535, !tbaa !1043
  %236 = load float** @constrain_lincs.tmp2, align 8, !dbg !1535, !tbaa !1043
  %237 = load float** @constrain_lincs.tmp3, align 8, !dbg !1535, !tbaa !1043
  call void @flincsp_(float* %arraydecay185, float* %arraydecay187, float* %arraydecay189, i32* @constrain_lincs.nc, i32* %226, i32* %227, i32* %228, i32* %229, float* %230, float* %231, float* %232, i32* %nProjOrder190, float* %233, float* %arraydecay193, float* %235, float* %236, float* %237) #7, !dbg !1535
  %.pre = load i32* @constrain_lincs.nc, align 4, !dbg !1537, !tbaa !1035
  br label %if.end194

if.end194:                                        ; preds = %if.end166, %for.inc180, %if.else183
  %238 = phi i32 [ %.pre, %if.else183 ], [ %221, %for.inc180 ], [ %221, %if.end166 ]
  %bOK.1 = phi i32 [ 1, %if.else183 ], [ %bOK.0, %for.inc180 ], [ %bOK.0, %if.end166 ]
  %conv195 = sitofp i32 %238 to double, !dbg !1537
  %arrayidx196 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 113, !dbg !1537
  %239 = load double* %arrayidx196, align 8, !dbg !1537, !tbaa !1141
  %add197 = fadd double %239, %conv195, !dbg !1537
  store double %add197, double* %arrayidx196, align 8, !dbg !1537, !tbaa !1141
  %nProjOrder198 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 65, !dbg !1538
  %240 = load i32* %nProjOrder198, align 4, !dbg !1538, !tbaa !1035
  %add199 = add nsw i32 %240, 2, !dbg !1538
  %241 = load i32* @constrain_lincs.nrtot, align 4, !dbg !1538, !tbaa !1035
  %mul200 = mul nsw i32 %add199, %241, !dbg !1538
  %conv201 = sitofp i32 %mul200 to double, !dbg !1538
  %arrayidx203 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 114, !dbg !1538
  %242 = load double* %arrayidx203, align 8, !dbg !1538, !tbaa !1141
  %add204 = fadd double %242, %conv201, !dbg !1538
  store double %add204, double* %arrayidx203, align 8, !dbg !1538, !tbaa !1141
  br label %if.end206, !dbg !1539

if.end206:                                        ; preds = %for.cond276.loopexit.i, %if.then, %if.else, %if.end194
  %bOK.2 = phi i32 [ %bOK.1, %if.end194 ], [ 1, %if.else ], [ 1, %if.then ], [ 1, %for.cond276.loopexit.i ]
  call void @llvm.lifetime.end(i64 4096, i8* %0) #3, !dbg !1540
  ret i32 %bOK.2, !dbg !1540
}

; Function Attrs: optsize
declare void @_where(i8*, i32) #2

; Function Attrs: optsize
declare i32 @bshakef(%struct._IO_FILE*, i32, float*, i32, i32*, %struct.t_idef*, %struct.t_inputrec*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_nrnb*, float, float*, i32) #2

; Function Attrs: optsize
declare void @fsettle_(i32*, i32*, float*, float*, float*, float*, float*, float*, i32*) #2

; Function Attrs: optsize
declare void @write_sto_conf(i8*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, [3 x float]*) #2

; Function Attrs: optsize
declare i32 @do_per_step(i32, i32) #2

; Function Attrs: optsize
declare void @flincs_(float*, float*, i32*, i32*, i32*, i32*, i32*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*, float*, float*, i32*, float*) #2

; Function Attrs: optsize
declare void @flincsp_(float*, float*, float*, i32*, i32*, i32*, i32*, i32*, float*, float*, float*, i32*, float*, float*, float*, float*, float*) #2

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind optsize readonly uwtable
define internal i32 @int_comp(i8* nocapture %a, i8* nocapture %b) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %a}, i64 0, metadata !969), !dbg !1541
  tail call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !970), !dbg !1541
  %0 = bitcast i8* %a to i32*, !dbg !1542
  %1 = load i32* %0, align 4, !dbg !1542, !tbaa !1035
  %2 = bitcast i8* %b to i32*, !dbg !1542
  %3 = load i32* %2, align 4, !dbg !1542, !tbaa !1035
  %sub = sub nsw i32 %1, %3, !dbg !1542
  ret i32 %sub, !dbg !1542
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #4

declare float @fabsf(float)

; Function Attrs: nounwind
declare i32 @fputs(i8* nocapture, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !225, metadata !226, metadata !991, metadata !225, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !51, metadata !58, metadata !65, metadata !72, metadata !77, metadata !211, metadata !216}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 49, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 49, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/idef.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50}
!6 = metadata !{i32 786472, metadata !"F_BONDS", i64 0} ; [ DW_TAG_enumerator ] [F_BONDS :: 0]
!7 = metadata !{i32 786472, metadata !"F_G96BONDS", i64 1} ; [ DW_TAG_enumerator ] [F_G96BONDS :: 1]
!8 = metadata !{i32 786472, metadata !"F_MORSE", i64 2} ; [ DW_TAG_enumerator ] [F_MORSE :: 2]
!9 = metadata !{i32 786472, metadata !"F_CUBICBONDS", i64 3} ; [ DW_TAG_enumerator ] [F_CUBICBONDS :: 3]
!10 = metadata !{i32 786472, metadata !"F_CONNBONDS", i64 4} ; [ DW_TAG_enumerator ] [F_CONNBONDS :: 4]
!11 = metadata !{i32 786472, metadata !"F_HARMONIC", i64 5} ; [ DW_TAG_enumerator ] [F_HARMONIC :: 5]
!12 = metadata !{i32 786472, metadata !"F_ANGLES", i64 6} ; [ DW_TAG_enumerator ] [F_ANGLES :: 6]
!13 = metadata !{i32 786472, metadata !"F_G96ANGLES", i64 7} ; [ DW_TAG_enumerator ] [F_G96ANGLES :: 7]
!14 = metadata !{i32 786472, metadata !"F_PDIHS", i64 8} ; [ DW_TAG_enumerator ] [F_PDIHS :: 8]
!15 = metadata !{i32 786472, metadata !"F_RBDIHS", i64 9} ; [ DW_TAG_enumerator ] [F_RBDIHS :: 9]
!16 = metadata !{i32 786472, metadata !"F_IDIHS", i64 10} ; [ DW_TAG_enumerator ] [F_IDIHS :: 10]
!17 = metadata !{i32 786472, metadata !"F_LJ14", i64 11} ; [ DW_TAG_enumerator ] [F_LJ14 :: 11]
!18 = metadata !{i32 786472, metadata !"F_COUL14", i64 12} ; [ DW_TAG_enumerator ] [F_COUL14 :: 12]
!19 = metadata !{i32 786472, metadata !"F_LJ", i64 13} ; [ DW_TAG_enumerator ] [F_LJ :: 13]
!20 = metadata !{i32 786472, metadata !"F_BHAM", i64 14} ; [ DW_TAG_enumerator ] [F_BHAM :: 14]
!21 = metadata !{i32 786472, metadata !"F_LJLR", i64 15} ; [ DW_TAG_enumerator ] [F_LJLR :: 15]
!22 = metadata !{i32 786472, metadata !"F_DISPCORR", i64 16} ; [ DW_TAG_enumerator ] [F_DISPCORR :: 16]
!23 = metadata !{i32 786472, metadata !"F_SR", i64 17} ; [ DW_TAG_enumerator ] [F_SR :: 17]
!24 = metadata !{i32 786472, metadata !"F_LR", i64 18} ; [ DW_TAG_enumerator ] [F_LR :: 18]
!25 = metadata !{i32 786472, metadata !"F_WPOL", i64 19} ; [ DW_TAG_enumerator ] [F_WPOL :: 19]
!26 = metadata !{i32 786472, metadata !"F_POSRES", i64 20} ; [ DW_TAG_enumerator ] [F_POSRES :: 20]
!27 = metadata !{i32 786472, metadata !"F_DISRES", i64 21} ; [ DW_TAG_enumerator ] [F_DISRES :: 21]
!28 = metadata !{i32 786472, metadata !"F_DISRESVIOL", i64 22} ; [ DW_TAG_enumerator ] [F_DISRESVIOL :: 22]
!29 = metadata !{i32 786472, metadata !"F_ORIRES", i64 23} ; [ DW_TAG_enumerator ] [F_ORIRES :: 23]
!30 = metadata !{i32 786472, metadata !"F_ORIRESDEV", i64 24} ; [ DW_TAG_enumerator ] [F_ORIRESDEV :: 24]
!31 = metadata !{i32 786472, metadata !"F_ANGRES", i64 25} ; [ DW_TAG_enumerator ] [F_ANGRES :: 25]
!32 = metadata !{i32 786472, metadata !"F_ANGRESZ", i64 26} ; [ DW_TAG_enumerator ] [F_ANGRESZ :: 26]
!33 = metadata !{i32 786472, metadata !"F_SHAKE", i64 27} ; [ DW_TAG_enumerator ] [F_SHAKE :: 27]
!34 = metadata !{i32 786472, metadata !"F_SHAKENC", i64 28} ; [ DW_TAG_enumerator ] [F_SHAKENC :: 28]
!35 = metadata !{i32 786472, metadata !"F_SETTLE", i64 29} ; [ DW_TAG_enumerator ] [F_SETTLE :: 29]
!36 = metadata !{i32 786472, metadata !"F_DUMMY2", i64 30} ; [ DW_TAG_enumerator ] [F_DUMMY2 :: 30]
!37 = metadata !{i32 786472, metadata !"F_DUMMY3", i64 31} ; [ DW_TAG_enumerator ] [F_DUMMY3 :: 31]
!38 = metadata !{i32 786472, metadata !"F_DUMMY3FD", i64 32} ; [ DW_TAG_enumerator ] [F_DUMMY3FD :: 32]
!39 = metadata !{i32 786472, metadata !"F_DUMMY3FAD", i64 33} ; [ DW_TAG_enumerator ] [F_DUMMY3FAD :: 33]
!40 = metadata !{i32 786472, metadata !"F_DUMMY3OUT", i64 34} ; [ DW_TAG_enumerator ] [F_DUMMY3OUT :: 34]
!41 = metadata !{i32 786472, metadata !"F_DUMMY4FD", i64 35} ; [ DW_TAG_enumerator ] [F_DUMMY4FD :: 35]
!42 = metadata !{i32 786472, metadata !"F_EQM", i64 36} ; [ DW_TAG_enumerator ] [F_EQM :: 36]
!43 = metadata !{i32 786472, metadata !"F_EPOT", i64 37} ; [ DW_TAG_enumerator ] [F_EPOT :: 37]
!44 = metadata !{i32 786472, metadata !"F_EKIN", i64 38} ; [ DW_TAG_enumerator ] [F_EKIN :: 38]
!45 = metadata !{i32 786472, metadata !"F_ETOT", i64 39} ; [ DW_TAG_enumerator ] [F_ETOT :: 39]
!46 = metadata !{i32 786472, metadata !"F_TEMP", i64 40} ; [ DW_TAG_enumerator ] [F_TEMP :: 40]
!47 = metadata !{i32 786472, metadata !"F_PRES", i64 41} ; [ DW_TAG_enumerator ] [F_PRES :: 41]
!48 = metadata !{i32 786472, metadata !"F_DVDL", i64 42} ; [ DW_TAG_enumerator ] [F_DVDL :: 42]
!49 = metadata !{i32 786472, metadata !"F_DVDLKIN", i64 43} ; [ DW_TAG_enumerator ] [F_DVDLKIN :: 43]
!50 = metadata !{i32 786472, metadata !"F_NRE", i64 44} ; [ DW_TAG_enumerator ] [F_NRE :: 44]
!51 = metadata !{i32 786436, metadata !52, null, metadata !"", i32 38, i64 32, i64 32, i32 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 38, size 32, align 32, offset 0] [from ]
!52 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/enums.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!53 = metadata !{metadata !54, metadata !55, metadata !56, metadata !57}
!54 = metadata !{i32 786472, metadata !"ebCGS", i64 0} ; [ DW_TAG_enumerator ] [ebCGS :: 0]
!55 = metadata !{i32 786472, metadata !"ebMOLS", i64 1} ; [ DW_TAG_enumerator ] [ebMOLS :: 1]
!56 = metadata !{i32 786472, metadata !"ebSBLOCKS", i64 2} ; [ DW_TAG_enumerator ] [ebSBLOCKS :: 2]
!57 = metadata !{i32 786472, metadata !"ebNR", i64 3} ; [ DW_TAG_enumerator ] [ebNR :: 3]
!58 = metadata !{i32 786436, metadata !52, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !59, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [from ]
!59 = metadata !{metadata !60, metadata !61, metadata !62, metadata !63, metadata !64}
!60 = metadata !{i32 786472, metadata !"etcNO", i64 0} ; [ DW_TAG_enumerator ] [etcNO :: 0]
!61 = metadata !{i32 786472, metadata !"etcBERENDSEN", i64 1} ; [ DW_TAG_enumerator ] [etcBERENDSEN :: 1]
!62 = metadata !{i32 786472, metadata !"etcNOSEHOOVER", i64 2} ; [ DW_TAG_enumerator ] [etcNOSEHOOVER :: 2]
!63 = metadata !{i32 786472, metadata !"etcYES", i64 3} ; [ DW_TAG_enumerator ] [etcYES :: 3]
!64 = metadata !{i32 786472, metadata !"etcNR", i64 4} ; [ DW_TAG_enumerator ] [etcNR :: 4]
!65 = metadata !{i32 786436, metadata !52, null, metadata !"", i32 50, i64 32, i64 32, i32 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 50, size 32, align 32, offset 0] [from ]
!66 = metadata !{metadata !67, metadata !68, metadata !69, metadata !70, metadata !71}
!67 = metadata !{i32 786472, metadata !"epcNO", i64 0} ; [ DW_TAG_enumerator ] [epcNO :: 0]
!68 = metadata !{i32 786472, metadata !"epcBERENDSEN", i64 1} ; [ DW_TAG_enumerator ] [epcBERENDSEN :: 1]
!69 = metadata !{i32 786472, metadata !"epcPARRINELLORAHMAN", i64 2} ; [ DW_TAG_enumerator ] [epcPARRINELLORAHMAN :: 2]
!70 = metadata !{i32 786472, metadata !"epcISOTROPIC", i64 3} ; [ DW_TAG_enumerator ] [epcISOTROPIC :: 3]
!71 = metadata !{i32 786472, metadata !"epcNR", i64 4} ; [ DW_TAG_enumerator ] [epcNR :: 4]
!72 = metadata !{i32 786436, metadata !52, null, metadata !"", i32 83, i64 32, i64 32, i32 0, i32 0, null, metadata !73, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 83, size 32, align 32, offset 0] [from ]
!73 = metadata !{metadata !74, metadata !75, metadata !76}
!74 = metadata !{i32 786472, metadata !"estLINCS", i64 0} ; [ DW_TAG_enumerator ] [estLINCS :: 0]
!75 = metadata !{i32 786472, metadata !"estSHAKE", i64 1} ; [ DW_TAG_enumerator ] [estSHAKE :: 1]
!76 = metadata !{i32 786472, metadata !"estNR", i64 2} ; [ DW_TAG_enumerator ] [estNR :: 2]
!77 = metadata !{i32 786436, metadata !78, null, metadata !"", i32 51, i64 32, i64 32, i32 0, i32 0, null, metadata !79, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 51, size 32, align 32, offset 0] [from ]
!78 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/nrnb.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!79 = metadata !{metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210}
!80 = metadata !{i32 786472, metadata !"eNR_INL0100", i64 0} ; [ DW_TAG_enumerator ] [eNR_INL0100 :: 0]
!81 = metadata !{i32 786472, metadata !"eNR_INL0110", i64 1} ; [ DW_TAG_enumerator ] [eNR_INL0110 :: 1]
!82 = metadata !{i32 786472, metadata !"eNR_INL0200", i64 2} ; [ DW_TAG_enumerator ] [eNR_INL0200 :: 2]
!83 = metadata !{i32 786472, metadata !"eNR_INL0210", i64 3} ; [ DW_TAG_enumerator ] [eNR_INL0210 :: 3]
!84 = metadata !{i32 786472, metadata !"eNR_INL0300", i64 4} ; [ DW_TAG_enumerator ] [eNR_INL0300 :: 4]
!85 = metadata !{i32 786472, metadata !"eNR_INL0310", i64 5} ; [ DW_TAG_enumerator ] [eNR_INL0310 :: 5]
!86 = metadata !{i32 786472, metadata !"eNR_INL0301", i64 6} ; [ DW_TAG_enumerator ] [eNR_INL0301 :: 6]
!87 = metadata !{i32 786472, metadata !"eNR_INL0302", i64 7} ; [ DW_TAG_enumerator ] [eNR_INL0302 :: 7]
!88 = metadata !{i32 786472, metadata !"eNR_INL0400", i64 8} ; [ DW_TAG_enumerator ] [eNR_INL0400 :: 8]
!89 = metadata !{i32 786472, metadata !"eNR_INL0410", i64 9} ; [ DW_TAG_enumerator ] [eNR_INL0410 :: 9]
!90 = metadata !{i32 786472, metadata !"eNR_INL0401", i64 10} ; [ DW_TAG_enumerator ] [eNR_INL0401 :: 10]
!91 = metadata !{i32 786472, metadata !"eNR_INL0402", i64 11} ; [ DW_TAG_enumerator ] [eNR_INL0402 :: 11]
!92 = metadata !{i32 786472, metadata !"eNR_INL1000", i64 12} ; [ DW_TAG_enumerator ] [eNR_INL1000 :: 12]
!93 = metadata !{i32 786472, metadata !"eNR_INL1010", i64 13} ; [ DW_TAG_enumerator ] [eNR_INL1010 :: 13]
!94 = metadata !{i32 786472, metadata !"eNR_INL1020", i64 14} ; [ DW_TAG_enumerator ] [eNR_INL1020 :: 14]
!95 = metadata !{i32 786472, metadata !"eNR_INL1030", i64 15} ; [ DW_TAG_enumerator ] [eNR_INL1030 :: 15]
!96 = metadata !{i32 786472, metadata !"eNR_INL1100", i64 16} ; [ DW_TAG_enumerator ] [eNR_INL1100 :: 16]
!97 = metadata !{i32 786472, metadata !"eNR_INL1110", i64 17} ; [ DW_TAG_enumerator ] [eNR_INL1110 :: 17]
!98 = metadata !{i32 786472, metadata !"eNR_INL1120", i64 18} ; [ DW_TAG_enumerator ] [eNR_INL1120 :: 18]
!99 = metadata !{i32 786472, metadata !"eNR_INL1130", i64 19} ; [ DW_TAG_enumerator ] [eNR_INL1130 :: 19]
!100 = metadata !{i32 786472, metadata !"eNR_INL1200", i64 20} ; [ DW_TAG_enumerator ] [eNR_INL1200 :: 20]
!101 = metadata !{i32 786472, metadata !"eNR_INL1210", i64 21} ; [ DW_TAG_enumerator ] [eNR_INL1210 :: 21]
!102 = metadata !{i32 786472, metadata !"eNR_INL1220", i64 22} ; [ DW_TAG_enumerator ] [eNR_INL1220 :: 22]
!103 = metadata !{i32 786472, metadata !"eNR_INL1230", i64 23} ; [ DW_TAG_enumerator ] [eNR_INL1230 :: 23]
!104 = metadata !{i32 786472, metadata !"eNR_INL1300", i64 24} ; [ DW_TAG_enumerator ] [eNR_INL1300 :: 24]
!105 = metadata !{i32 786472, metadata !"eNR_INL1310", i64 25} ; [ DW_TAG_enumerator ] [eNR_INL1310 :: 25]
!106 = metadata !{i32 786472, metadata !"eNR_INL1320", i64 26} ; [ DW_TAG_enumerator ] [eNR_INL1320 :: 26]
!107 = metadata !{i32 786472, metadata !"eNR_INL1330", i64 27} ; [ DW_TAG_enumerator ] [eNR_INL1330 :: 27]
!108 = metadata !{i32 786472, metadata !"eNR_INL1400", i64 28} ; [ DW_TAG_enumerator ] [eNR_INL1400 :: 28]
!109 = metadata !{i32 786472, metadata !"eNR_INL1410", i64 29} ; [ DW_TAG_enumerator ] [eNR_INL1410 :: 29]
!110 = metadata !{i32 786472, metadata !"eNR_INL1420", i64 30} ; [ DW_TAG_enumerator ] [eNR_INL1420 :: 30]
!111 = metadata !{i32 786472, metadata !"eNR_INL1430", i64 31} ; [ DW_TAG_enumerator ] [eNR_INL1430 :: 31]
!112 = metadata !{i32 786472, metadata !"eNR_INL2000", i64 32} ; [ DW_TAG_enumerator ] [eNR_INL2000 :: 32]
!113 = metadata !{i32 786472, metadata !"eNR_INL2010", i64 33} ; [ DW_TAG_enumerator ] [eNR_INL2010 :: 33]
!114 = metadata !{i32 786472, metadata !"eNR_INL2020", i64 34} ; [ DW_TAG_enumerator ] [eNR_INL2020 :: 34]
!115 = metadata !{i32 786472, metadata !"eNR_INL2030", i64 35} ; [ DW_TAG_enumerator ] [eNR_INL2030 :: 35]
!116 = metadata !{i32 786472, metadata !"eNR_INL2100", i64 36} ; [ DW_TAG_enumerator ] [eNR_INL2100 :: 36]
!117 = metadata !{i32 786472, metadata !"eNR_INL2110", i64 37} ; [ DW_TAG_enumerator ] [eNR_INL2110 :: 37]
!118 = metadata !{i32 786472, metadata !"eNR_INL2120", i64 38} ; [ DW_TAG_enumerator ] [eNR_INL2120 :: 38]
!119 = metadata !{i32 786472, metadata !"eNR_INL2130", i64 39} ; [ DW_TAG_enumerator ] [eNR_INL2130 :: 39]
!120 = metadata !{i32 786472, metadata !"eNR_INL2200", i64 40} ; [ DW_TAG_enumerator ] [eNR_INL2200 :: 40]
!121 = metadata !{i32 786472, metadata !"eNR_INL2210", i64 41} ; [ DW_TAG_enumerator ] [eNR_INL2210 :: 41]
!122 = metadata !{i32 786472, metadata !"eNR_INL2220", i64 42} ; [ DW_TAG_enumerator ] [eNR_INL2220 :: 42]
!123 = metadata !{i32 786472, metadata !"eNR_INL2230", i64 43} ; [ DW_TAG_enumerator ] [eNR_INL2230 :: 43]
!124 = metadata !{i32 786472, metadata !"eNR_INL2300", i64 44} ; [ DW_TAG_enumerator ] [eNR_INL2300 :: 44]
!125 = metadata !{i32 786472, metadata !"eNR_INL2310", i64 45} ; [ DW_TAG_enumerator ] [eNR_INL2310 :: 45]
!126 = metadata !{i32 786472, metadata !"eNR_INL2320", i64 46} ; [ DW_TAG_enumerator ] [eNR_INL2320 :: 46]
!127 = metadata !{i32 786472, metadata !"eNR_INL2330", i64 47} ; [ DW_TAG_enumerator ] [eNR_INL2330 :: 47]
!128 = metadata !{i32 786472, metadata !"eNR_INL2400", i64 48} ; [ DW_TAG_enumerator ] [eNR_INL2400 :: 48]
!129 = metadata !{i32 786472, metadata !"eNR_INL2410", i64 49} ; [ DW_TAG_enumerator ] [eNR_INL2410 :: 49]
!130 = metadata !{i32 786472, metadata !"eNR_INL2420", i64 50} ; [ DW_TAG_enumerator ] [eNR_INL2420 :: 50]
!131 = metadata !{i32 786472, metadata !"eNR_INL2430", i64 51} ; [ DW_TAG_enumerator ] [eNR_INL2430 :: 51]
!132 = metadata !{i32 786472, metadata !"eNR_INL3000", i64 52} ; [ DW_TAG_enumerator ] [eNR_INL3000 :: 52]
!133 = metadata !{i32 786472, metadata !"eNR_INL3001", i64 53} ; [ DW_TAG_enumerator ] [eNR_INL3001 :: 53]
!134 = metadata !{i32 786472, metadata !"eNR_INL3002", i64 54} ; [ DW_TAG_enumerator ] [eNR_INL3002 :: 54]
!135 = metadata !{i32 786472, metadata !"eNR_INL3010", i64 55} ; [ DW_TAG_enumerator ] [eNR_INL3010 :: 55]
!136 = metadata !{i32 786472, metadata !"eNR_INL3020", i64 56} ; [ DW_TAG_enumerator ] [eNR_INL3020 :: 56]
!137 = metadata !{i32 786472, metadata !"eNR_INL3030", i64 57} ; [ DW_TAG_enumerator ] [eNR_INL3030 :: 57]
!138 = metadata !{i32 786472, metadata !"eNR_INL3100", i64 58} ; [ DW_TAG_enumerator ] [eNR_INL3100 :: 58]
!139 = metadata !{i32 786472, metadata !"eNR_INL3110", i64 59} ; [ DW_TAG_enumerator ] [eNR_INL3110 :: 59]
!140 = metadata !{i32 786472, metadata !"eNR_INL3120", i64 60} ; [ DW_TAG_enumerator ] [eNR_INL3120 :: 60]
!141 = metadata !{i32 786472, metadata !"eNR_INL3130", i64 61} ; [ DW_TAG_enumerator ] [eNR_INL3130 :: 61]
!142 = metadata !{i32 786472, metadata !"eNR_INL3200", i64 62} ; [ DW_TAG_enumerator ] [eNR_INL3200 :: 62]
!143 = metadata !{i32 786472, metadata !"eNR_INL3210", i64 63} ; [ DW_TAG_enumerator ] [eNR_INL3210 :: 63]
!144 = metadata !{i32 786472, metadata !"eNR_INL3220", i64 64} ; [ DW_TAG_enumerator ] [eNR_INL3220 :: 64]
!145 = metadata !{i32 786472, metadata !"eNR_INL3230", i64 65} ; [ DW_TAG_enumerator ] [eNR_INL3230 :: 65]
!146 = metadata !{i32 786472, metadata !"eNR_INL3300", i64 66} ; [ DW_TAG_enumerator ] [eNR_INL3300 :: 66]
!147 = metadata !{i32 786472, metadata !"eNR_INL3301", i64 67} ; [ DW_TAG_enumerator ] [eNR_INL3301 :: 67]
!148 = metadata !{i32 786472, metadata !"eNR_INL3302", i64 68} ; [ DW_TAG_enumerator ] [eNR_INL3302 :: 68]
!149 = metadata !{i32 786472, metadata !"eNR_INL3310", i64 69} ; [ DW_TAG_enumerator ] [eNR_INL3310 :: 69]
!150 = metadata !{i32 786472, metadata !"eNR_INL3320", i64 70} ; [ DW_TAG_enumerator ] [eNR_INL3320 :: 70]
!151 = metadata !{i32 786472, metadata !"eNR_INL3330", i64 71} ; [ DW_TAG_enumerator ] [eNR_INL3330 :: 71]
!152 = metadata !{i32 786472, metadata !"eNR_INL3400", i64 72} ; [ DW_TAG_enumerator ] [eNR_INL3400 :: 72]
!153 = metadata !{i32 786472, metadata !"eNR_INL3401", i64 73} ; [ DW_TAG_enumerator ] [eNR_INL3401 :: 73]
!154 = metadata !{i32 786472, metadata !"eNR_INL3402", i64 74} ; [ DW_TAG_enumerator ] [eNR_INL3402 :: 74]
!155 = metadata !{i32 786472, metadata !"eNR_INL3410", i64 75} ; [ DW_TAG_enumerator ] [eNR_INL3410 :: 75]
!156 = metadata !{i32 786472, metadata !"eNR_INL3420", i64 76} ; [ DW_TAG_enumerator ] [eNR_INL3420 :: 76]
!157 = metadata !{i32 786472, metadata !"eNR_INL3430", i64 77} ; [ DW_TAG_enumerator ] [eNR_INL3430 :: 77]
!158 = metadata !{i32 786472, metadata !"eNR_INLOOP", i64 78} ; [ DW_TAG_enumerator ] [eNR_INLOOP :: 78]
!159 = metadata !{i32 786472, metadata !"eNR_INL_IATOM", i64 78} ; [ DW_TAG_enumerator ] [eNR_INL_IATOM :: 78]
!160 = metadata !{i32 786472, metadata !"eNR_WEIGHTS", i64 79} ; [ DW_TAG_enumerator ] [eNR_WEIGHTS :: 79]
!161 = metadata !{i32 786472, metadata !"eNR_SPREADQ", i64 80} ; [ DW_TAG_enumerator ] [eNR_SPREADQ :: 80]
!162 = metadata !{i32 786472, metadata !"eNR_SPREADQBSP", i64 81} ; [ DW_TAG_enumerator ] [eNR_SPREADQBSP :: 81]
!163 = metadata !{i32 786472, metadata !"eNR_GATHERF", i64 82} ; [ DW_TAG_enumerator ] [eNR_GATHERF :: 82]
!164 = metadata !{i32 786472, metadata !"eNR_GATHERFBSP", i64 83} ; [ DW_TAG_enumerator ] [eNR_GATHERFBSP :: 83]
!165 = metadata !{i32 786472, metadata !"eNR_FFT", i64 84} ; [ DW_TAG_enumerator ] [eNR_FFT :: 84]
!166 = metadata !{i32 786472, metadata !"eNR_CONV", i64 85} ; [ DW_TAG_enumerator ] [eNR_CONV :: 85]
!167 = metadata !{i32 786472, metadata !"eNR_SOLVEPME", i64 86} ; [ DW_TAG_enumerator ] [eNR_SOLVEPME :: 86]
!168 = metadata !{i32 786472, metadata !"eNR_NS", i64 87} ; [ DW_TAG_enumerator ] [eNR_NS :: 87]
!169 = metadata !{i32 786472, metadata !"eNR_RESETX", i64 88} ; [ DW_TAG_enumerator ] [eNR_RESETX :: 88]
!170 = metadata !{i32 786472, metadata !"eNR_SHIFTX", i64 89} ; [ DW_TAG_enumerator ] [eNR_SHIFTX :: 89]
!171 = metadata !{i32 786472, metadata !"eNR_CGCM", i64 90} ; [ DW_TAG_enumerator ] [eNR_CGCM :: 90]
!172 = metadata !{i32 786472, metadata !"eNR_FSUM", i64 91} ; [ DW_TAG_enumerator ] [eNR_FSUM :: 91]
!173 = metadata !{i32 786472, metadata !"eNR_BONDS", i64 92} ; [ DW_TAG_enumerator ] [eNR_BONDS :: 92]
!174 = metadata !{i32 786472, metadata !"eNR_G96BONDS", i64 93} ; [ DW_TAG_enumerator ] [eNR_G96BONDS :: 93]
!175 = metadata !{i32 786472, metadata !"eNR_ANGLES", i64 94} ; [ DW_TAG_enumerator ] [eNR_ANGLES :: 94]
!176 = metadata !{i32 786472, metadata !"eNR_G96ANGLES", i64 95} ; [ DW_TAG_enumerator ] [eNR_G96ANGLES :: 95]
!177 = metadata !{i32 786472, metadata !"eNR_PROPER", i64 96} ; [ DW_TAG_enumerator ] [eNR_PROPER :: 96]
!178 = metadata !{i32 786472, metadata !"eNR_IMPROPER", i64 97} ; [ DW_TAG_enumerator ] [eNR_IMPROPER :: 97]
!179 = metadata !{i32 786472, metadata !"eNR_RB", i64 98} ; [ DW_TAG_enumerator ] [eNR_RB :: 98]
!180 = metadata !{i32 786472, metadata !"eNR_DISRES", i64 99} ; [ DW_TAG_enumerator ] [eNR_DISRES :: 99]
!181 = metadata !{i32 786472, metadata !"eNR_ORIRES", i64 100} ; [ DW_TAG_enumerator ] [eNR_ORIRES :: 100]
!182 = metadata !{i32 786472, metadata !"eNR_POSRES", i64 101} ; [ DW_TAG_enumerator ] [eNR_POSRES :: 101]
!183 = metadata !{i32 786472, metadata !"eNR_ANGRES", i64 102} ; [ DW_TAG_enumerator ] [eNR_ANGRES :: 102]
!184 = metadata !{i32 786472, metadata !"eNR_ANGRESZ", i64 103} ; [ DW_TAG_enumerator ] [eNR_ANGRESZ :: 103]
!185 = metadata !{i32 786472, metadata !"eNR_MORSE", i64 104} ; [ DW_TAG_enumerator ] [eNR_MORSE :: 104]
!186 = metadata !{i32 786472, metadata !"eNR_CUBICBONDS", i64 105} ; [ DW_TAG_enumerator ] [eNR_CUBICBONDS :: 105]
!187 = metadata !{i32 786472, metadata !"eNR_WPOL", i64 106} ; [ DW_TAG_enumerator ] [eNR_WPOL :: 106]
!188 = metadata !{i32 786472, metadata !"eNR_VIRIAL", i64 107} ; [ DW_TAG_enumerator ] [eNR_VIRIAL :: 107]
!189 = metadata !{i32 786472, metadata !"eNR_UPDATE", i64 108} ; [ DW_TAG_enumerator ] [eNR_UPDATE :: 108]
!190 = metadata !{i32 786472, metadata !"eNR_EXTUPDATE", i64 109} ; [ DW_TAG_enumerator ] [eNR_EXTUPDATE :: 109]
!191 = metadata !{i32 786472, metadata !"eNR_STOPCM", i64 110} ; [ DW_TAG_enumerator ] [eNR_STOPCM :: 110]
!192 = metadata !{i32 786472, metadata !"eNR_PCOUPL", i64 111} ; [ DW_TAG_enumerator ] [eNR_PCOUPL :: 111]
!193 = metadata !{i32 786472, metadata !"eNR_EKIN", i64 112} ; [ DW_TAG_enumerator ] [eNR_EKIN :: 112]
!194 = metadata !{i32 786472, metadata !"eNR_LINCS", i64 113} ; [ DW_TAG_enumerator ] [eNR_LINCS :: 113]
!195 = metadata !{i32 786472, metadata !"eNR_LINCSMAT", i64 114} ; [ DW_TAG_enumerator ] [eNR_LINCSMAT :: 114]
!196 = metadata !{i32 786472, metadata !"eNR_SHAKE", i64 115} ; [ DW_TAG_enumerator ] [eNR_SHAKE :: 115]
!197 = metadata !{i32 786472, metadata !"eNR_SHAKE_V", i64 116} ; [ DW_TAG_enumerator ] [eNR_SHAKE_V :: 116]
!198 = metadata !{i32 786472, metadata !"eNR_SHAKE_RIJ", i64 117} ; [ DW_TAG_enumerator ] [eNR_SHAKE_RIJ :: 117]
!199 = metadata !{i32 786472, metadata !"eNR_SHAKE_VIR", i64 118} ; [ DW_TAG_enumerator ] [eNR_SHAKE_VIR :: 118]
!200 = metadata !{i32 786472, metadata !"eNR_SETTLE", i64 119} ; [ DW_TAG_enumerator ] [eNR_SETTLE :: 119]
!201 = metadata !{i32 786472, metadata !"eNR_PSHAKEINITLD", i64 120} ; [ DW_TAG_enumerator ] [eNR_PSHAKEINITLD :: 120]
!202 = metadata !{i32 786472, metadata !"eNR_PSHAKEINITMD", i64 121} ; [ DW_TAG_enumerator ] [eNR_PSHAKEINITMD :: 121]
!203 = metadata !{i32 786472, metadata !"eNR_PSHAKE", i64 122} ; [ DW_TAG_enumerator ] [eNR_PSHAKE :: 122]
!204 = metadata !{i32 786472, metadata !"eNR_DUM2", i64 123} ; [ DW_TAG_enumerator ] [eNR_DUM2 :: 123]
!205 = metadata !{i32 786472, metadata !"eNR_DUM3", i64 124} ; [ DW_TAG_enumerator ] [eNR_DUM3 :: 124]
!206 = metadata !{i32 786472, metadata !"eNR_DUM3FD", i64 125} ; [ DW_TAG_enumerator ] [eNR_DUM3FD :: 125]
!207 = metadata !{i32 786472, metadata !"eNR_DUM3FAD", i64 126} ; [ DW_TAG_enumerator ] [eNR_DUM3FAD :: 126]
!208 = metadata !{i32 786472, metadata !"eNR_DUM3OUT", i64 127} ; [ DW_TAG_enumerator ] [eNR_DUM3OUT :: 127]
!209 = metadata !{i32 786472, metadata !"eNR_DUM4FD", i64 128} ; [ DW_TAG_enumerator ] [eNR_DUM4FD :: 128]
!210 = metadata !{i32 786472, metadata !"eNRNB", i64 129} ; [ DW_TAG_enumerator ] [eNRNB :: 129]
!211 = metadata !{i32 786436, metadata !52, null, metadata !"", i32 106, i64 32, i64 32, i32 0, i32 0, null, metadata !212, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 106, size 32, align 32, offset 0] [from ]
!212 = metadata !{metadata !213, metadata !214, metadata !215}
!213 = metadata !{i32 786472, metadata !"efepNO", i64 0} ; [ DW_TAG_enumerator ] [efepNO :: 0]
!214 = metadata !{i32 786472, metadata !"efepYES", i64 1} ; [ DW_TAG_enumerator ] [efepYES :: 1]
!215 = metadata !{i32 786472, metadata !"efepNR", i64 2} ; [ DW_TAG_enumerator ] [efepNR :: 2]
!216 = metadata !{i32 786436, metadata !52, null, metadata !"", i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !217, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 79, size 32, align 32, offset 0] [from ]
!217 = metadata !{metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224}
!218 = metadata !{i32 786472, metadata !"eiMD", i64 0} ; [ DW_TAG_enumerator ] [eiMD :: 0]
!219 = metadata !{i32 786472, metadata !"eiSteep", i64 1} ; [ DW_TAG_enumerator ] [eiSteep :: 1]
!220 = metadata !{i32 786472, metadata !"eiCG", i64 2} ; [ DW_TAG_enumerator ] [eiCG :: 2]
!221 = metadata !{i32 786472, metadata !"eiBD", i64 3} ; [ DW_TAG_enumerator ] [eiBD :: 3]
!222 = metadata !{i32 786472, metadata !"eiSD", i64 4} ; [ DW_TAG_enumerator ] [eiSD :: 4]
!223 = metadata !{i32 786472, metadata !"eiNM", i64 5} ; [ DW_TAG_enumerator ] [eiNM :: 5]
!224 = metadata !{i32 786472, metadata !"eiNR", i64 6} ; [ DW_TAG_enumerator ] [eiNR :: 6]
!225 = metadata !{i32 0}
!226 = metadata !{metadata !227, metadata !695, metadata !713, metadata !725, metadata !749, metadata !772, metadata !780, metadata !785, metadata !797, metadata !848, metadata !860, metadata !902, metadata !907, metadata !963, metadata !971, metadata !982}
!227 = metadata !{i32 786478, metadata !1, metadata !228, metadata !"constrain", metadata !"constrain", metadata !"", i32 615, metadata !229, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, %struct.t_topology*, %struct.t_inputrec*, i32, %struct.t_mdatoms*, i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, float, float*, %struct.t_nrnb*, i32)* @constrain, null, null, metadata !679, i32 619} ; [ DW_TAG_subprogram ] [line 615] [def] [scope 619] [constrain]
!228 = metadata !{i32 786473, metadata !1}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!229 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !230, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!230 = metadata !{metadata !231, metadata !232, metadata !289, metadata !523, metadata !231, metadata !640, metadata !231, metadata !231, metadata !624, metadata !624, metadata !624, metadata !669, metadata !315, metadata !620, metadata !670, metadata !231}
!231 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!232 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !233} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!233 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !234} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!234 = metadata !{i32 786451, metadata !235, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !236, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!235 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!236 = metadata !{metadata !237, metadata !238, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !259, metadata !260, metadata !261, metadata !262, metadata !265, metadata !267, metadata !269, metadata !273, metadata !275, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !284, metadata !285}
!237 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !231} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!238 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !239} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!239 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !240} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!240 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!241 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !239} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!242 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !239} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!243 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !239} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!244 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !239} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!245 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !239} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!246 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !239} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!247 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !239} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!248 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !239} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!249 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !239} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!250 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !239} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!251 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !252} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!252 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !253} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!253 = metadata !{i32 786451, metadata !235, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !254, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!254 = metadata !{metadata !255, metadata !256, metadata !258}
!255 = metadata !{i32 786445, metadata !235, metadata !253, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !252} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!256 = metadata !{i32 786445, metadata !235, metadata !253, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !257} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!257 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !234} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!258 = metadata !{i32 786445, metadata !235, metadata !253, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !231} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!259 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !257} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!260 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !231} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!261 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !231} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!262 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !263} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!263 = metadata !{i32 786454, metadata !235, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !264} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!264 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!265 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !266} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!266 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!267 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !268} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!268 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!269 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !270} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!270 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !240, metadata !271, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!271 = metadata !{metadata !272}
!272 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!273 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !274} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!274 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!275 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !276} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!276 = metadata !{i32 786454, metadata !235, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !264} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!277 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !274} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!278 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !274} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!279 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !274} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!280 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !274} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!281 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !282} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!282 = metadata !{i32 786454, metadata !235, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !283} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!283 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!284 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !231} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!285 = metadata !{i32 786445, metadata !235, metadata !234, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !286} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!286 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !240, metadata !287, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!287 = metadata !{metadata !288}
!288 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!289 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !290} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_topology]
!290 = metadata !{i32 786454, metadata !1, null, metadata !"t_topology", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !291} ; [ DW_TAG_typedef ] [t_topology] [line 42, size 0, align 0, offset 0] [from ]
!291 = metadata !{i32 786451, metadata !292, null, metadata !"", i32 36, i64 402112, i64 64, i32 0, i32 0, null, metadata !293, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 402112, align 64, offset 0] [from ]
!292 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/topology.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!293 = metadata !{metadata !294, metadata !296, metadata !439, metadata !506, metadata !508}
!294 = metadata !{i32 786445, metadata !292, metadata !291, metadata !"name", i32 37, i64 64, i64 64, i64 0, i32 0, metadata !295} ; [ DW_TAG_member ] [name] [line 37, size 64, align 64, offset 0] [from ]
!295 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !239} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!296 = metadata !{i32 786445, metadata !292, metadata !291, metadata !"idef", i32 38, i64 366336, i64 64, i64 64, i32 0, metadata !297} ; [ DW_TAG_member ] [idef] [line 38, size 366336, align 64, offset 64] [from t_idef]
!297 = metadata !{i32 786454, metadata !292, null, metadata !"t_idef", i32 188, i64 0, i64 0, i64 0, i32 0, metadata !298} ; [ DW_TAG_typedef ] [t_idef] [line 188, size 0, align 0, offset 0] [from ]
!298 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 179, i64 366336, i64 64, i32 0, i32 0, null, metadata !299, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 179, size 366336, align 64, offset 0] [from ]
!299 = metadata !{metadata !300, metadata !301, metadata !302, metadata !303, metadata !306, metadata !423}
!300 = metadata !{i32 786445, metadata !4, metadata !298, metadata !"ntypes", i32 181, i64 32, i64 32, i64 0, i32 0, metadata !231} ; [ DW_TAG_member ] [ntypes] [line 181, size 32, align 32, offset 0] [from int]
!301 = metadata !{i32 786445, metadata !4, metadata !298, metadata !"nodeid", i32 182, i64 32, i64 32, i64 32, i32 0, metadata !231} ; [ DW_TAG_member ] [nodeid] [line 182, size 32, align 32, offset 32] [from int]
!302 = metadata !{i32 786445, metadata !4, metadata !298, metadata !"atnr", i32 183, i64 32, i64 32, i64 64, i32 0, metadata !231} ; [ DW_TAG_member ] [atnr] [line 183, size 32, align 32, offset 64] [from int]
!303 = metadata !{i32 786445, metadata !4, metadata !298, metadata !"functype", i32 184, i64 64, i64 64, i64 128, i32 0, metadata !304} ; [ DW_TAG_member ] [functype] [line 184, size 64, align 64, offset 128] [from ]
!304 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !305} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_functype]
!305 = metadata !{i32 786454, metadata !4, null, metadata !"t_functype", i32 133, i64 0, i64 0, i64 0, i32 0, metadata !231} ; [ DW_TAG_typedef ] [t_functype] [line 133, size 0, align 0, offset 0] [from int]
!306 = metadata !{i32 786445, metadata !4, metadata !298, metadata !"iparams", i32 185, i64 64, i64 64, i64 192, i32 0, metadata !307} ; [ DW_TAG_member ] [iparams] [line 185, size 64, align 64, offset 192] [from ]
!307 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !308} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_iparams]
!308 = metadata !{i32 786454, metadata !4, null, metadata !"t_iparams", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !309} ; [ DW_TAG_typedef ] [t_iparams] [line 131, size 0, align 0, offset 0] [from ]
!309 = metadata !{i32 786455, metadata !4, null, metadata !"", i32 97, i64 192, i64 32, i64 0, i32 0, null, metadata !310, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 97, size 192, align 32, offset 0] [from ]
!310 = metadata !{metadata !311, metadata !319, metadata !326, metadata !332, metadata !341, metadata !346, metadata !353, metadata !361, metadata !366, metadata !371, metadata !377, metadata !385, metadata !392, metadata !401, metadata !410, metadata !419}
!311 = metadata !{i32 786445, metadata !4, metadata !309, metadata !"bham", i32 105, i64 96, i64 32, i64 0, i32 0, metadata !312} ; [ DW_TAG_member ] [bham] [line 105, size 96, align 32, offset 0] [from ]
!312 = metadata !{i32 786451, metadata !4, metadata !309, metadata !"", i32 105, i64 96, i64 32, i32 0, i32 0, null, metadata !313, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 105, size 96, align 32, offset 0] [from ]
!313 = metadata !{metadata !314, metadata !317, metadata !318}
!314 = metadata !{i32 786445, metadata !4, metadata !312, metadata !"a", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !315} ; [ DW_TAG_member ] [a] [line 105, size 32, align 32, offset 0] [from real]
!315 = metadata !{i32 786454, metadata !4, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !316} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!316 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!317 = metadata !{i32 786445, metadata !4, metadata !312, metadata !"b", i32 105, i64 32, i64 32, i64 32, i32 0, metadata !315} ; [ DW_TAG_member ] [b] [line 105, size 32, align 32, offset 32] [from real]
!318 = metadata !{i32 786445, metadata !4, metadata !312, metadata !"c", i32 105, i64 32, i64 32, i64 64, i32 0, metadata !315} ; [ DW_TAG_member ] [c] [line 105, size 32, align 32, offset 64] [from real]
!319 = metadata !{i32 786445, metadata !4, metadata !309, metadata !"harmonic", i32 106, i64 128, i64 32, i64 0, i32 0, metadata !320} ; [ DW_TAG_member ] [harmonic] [line 106, size 128, align 32, offset 0] [from ]
!320 = metadata !{i32 786451, metadata !4, metadata !309, metadata !"", i32 106, i64 128, i64 32, i32 0, i32 0, null, metadata !321, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 106, size 128, align 32, offset 0] [from ]
!321 = metadata !{metadata !322, metadata !323, metadata !324, metadata !325}
!322 = metadata !{i32 786445, metadata !4, metadata !320, metadata !"rA", i32 106, i64 32, i64 32, i64 0, i32 0, metadata !315} ; [ DW_TAG_member ] [rA] [line 106, size 32, align 32, offset 0] [from real]
!323 = metadata !{i32 786445, metadata !4, metadata !320, metadata !"krA", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !315} ; [ DW_TAG_member ] [krA] [line 106, size 32, align 32, offset 32] [from real]
!324 = metadata !{i32 786445, metadata !4, metadata !320, metadata !"rB", i32 106, i64 32, i64 32, i64 64, i32 0, metadata !315} ; [ DW_TAG_member ] [rB] [line 106, size 32, align 32, offset 64] [from real]
!325 = metadata !{i32 786445, metadata !4, metadata !320, metadata !"krB", i32 106, i64 32, i64 32, i64 96, i32 0, metadata !315} ; [ DW_TAG_member ] [krB] [line 106, size 32, align 32, offset 96] [from real]
!326 = metadata !{i32 786445, metadata !4, metadata !309, metadata !"cubic", i32 108, i64 96, i64 32, i64 0, i32 0, metadata !327} ; [ DW_TAG_member ] [cubic] [line 108, size 96, align 32, offset 0] [from ]
!327 = metadata !{i32 786451, metadata !4, metadata !309, metadata !"", i32 108, i64 96, i64 32, i32 0, i32 0, null, metadata !328, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 108, size 96, align 32, offset 0] [from ]
!328 = metadata !{metadata !329, metadata !330, metadata !331}
!329 = metadata !{i32 786445, metadata !4, metadata !327, metadata !"b0", i32 108, i64 32, i64 32, i64 0, i32 0, metadata !315} ; [ DW_TAG_member ] [b0] [line 108, size 32, align 32, offset 0] [from real]
!330 = metadata !{i32 786445, metadata !4, metadata !327, metadata !"kb", i32 108, i64 32, i64 32, i64 32, i32 0, metadata !315} ; [ DW_TAG_member ] [kb] [line 108, size 32, align 32, offset 32] [from real]
!331 = metadata !{i32 786445, metadata !4, metadata !327, metadata !"kcub", i32 108, i64 32, i64 32, i64 64, i32 0, metadata !315} ; [ DW_TAG_member ] [kcub] [line 108, size 32, align 32, offset 64] [from real]
!332 = metadata !{i32 786445, metadata !4, metadata !309, metadata !"wpol", i32 110, i64 192, i64 32, i64 0, i32 0, metadata !333} ; [ DW_TAG_member ] [wpol] [line 110, size 192, align 32, offset 0] [from ]
!333 = metadata !{i32 786451, metadata !4, metadata !309, metadata !"", i32 110, i64 192, i64 32, i32 0, i32 0, null, metadata !334, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 110, size 192, align 32, offset 0] [from ]
!334 = metadata !{metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340}
!335 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"kx", i32 110, i64 32, i64 32, i64 0, i32 0, metadata !315} ; [ DW_TAG_member ] [kx] [line 110, size 32, align 32, offset 0] [from real]
!336 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"ky", i32 110, i64 32, i64 32, i64 32, i32 0, metadata !315} ; [ DW_TAG_member ] [ky] [line 110, size 32, align 32, offset 32] [from real]
!337 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"kz", i32 110, i64 32, i64 32, i64 64, i32 0, metadata !315} ; [ DW_TAG_member ] [kz] [line 110, size 32, align 32, offset 64] [from real]
!338 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"rOH", i32 110, i64 32, i64 32, i64 96, i32 0, metadata !315} ; [ DW_TAG_member ] [rOH] [line 110, size 32, align 32, offset 96] [from real]
!339 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"rHH", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !315} ; [ DW_TAG_member ] [rHH] [line 110, size 32, align 32, offset 128] [from real]
!340 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"rOD", i32 110, i64 32, i64 32, i64 160, i32 0, metadata !315} ; [ DW_TAG_member ] [rOD] [line 110, size 32, align 32, offset 160] [from real]
!341 = metadata !{i32 786445, metadata !4, metadata !309, metadata !"lj", i32 111, i64 64, i64 32, i64 0, i32 0, metadata !342} ; [ DW_TAG_member ] [lj] [line 111, size 64, align 32, offset 0] [from ]
!342 = metadata !{i32 786451, metadata !4, metadata !309, metadata !"", i32 111, i64 64, i64 32, i32 0, i32 0, null, metadata !343, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 111, size 64, align 32, offset 0] [from ]
!343 = metadata !{metadata !344, metadata !345}
!344 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"c6", i32 111, i64 32, i64 32, i64 0, i32 0, metadata !315} ; [ DW_TAG_member ] [c6] [line 111, size 32, align 32, offset 0] [from real]
!345 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"c12", i32 111, i64 32, i64 32, i64 32, i32 0, metadata !315} ; [ DW_TAG_member ] [c12] [line 111, size 32, align 32, offset 32] [from real]
!346 = metadata !{i32 786445, metadata !4, metadata !309, metadata !"lj14", i32 112, i64 128, i64 32, i64 0, i32 0, metadata !347} ; [ DW_TAG_member ] [lj14] [line 112, size 128, align 32, offset 0] [from ]
!347 = metadata !{i32 786451, metadata !4, metadata !309, metadata !"", i32 112, i64 128, i64 32, i32 0, i32 0, null, metadata !348, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 112, size 128, align 32, offset 0] [from ]
!348 = metadata !{metadata !349, metadata !350, metadata !351, metadata !352}
!349 = metadata !{i32 786445, metadata !4, metadata !347, metadata !"c6A", i32 112, i64 32, i64 32, i64 0, i32 0, metadata !315} ; [ DW_TAG_member ] [c6A] [line 112, size 32, align 32, offset 0] [from real]
!350 = metadata !{i32 786445, metadata !4, metadata !347, metadata !"c12A", i32 112, i64 32, i64 32, i64 32, i32 0, metadata !315} ; [ DW_TAG_member ] [c12A] [line 112, size 32, align 32, offset 32] [from real]
!351 = metadata !{i32 786445, metadata !4, metadata !347, metadata !"c6B", i32 112, i64 32, i64 32, i64 64, i32 0, metadata !315} ; [ DW_TAG_member ] [c6B] [line 112, size 32, align 32, offset 64] [from real]
!352 = metadata !{i32 786445, metadata !4, metadata !347, metadata !"c12B", i32 112, i64 32, i64 32, i64 96, i32 0, metadata !315} ; [ DW_TAG_member ] [c12B] [line 112, size 32, align 32, offset 96] [from real]
!353 = metadata !{i32 786445, metadata !4, metadata !309, metadata !"pdihs", i32 117, i64 160, i64 32, i64 0, i32 0, metadata !354} ; [ DW_TAG_member ] [pdihs] [line 117, size 160, align 32, offset 0] [from ]
!354 = metadata !{i32 786451, metadata !4, metadata !309, metadata !"", i32 117, i64 160, i64 32, i32 0, i32 0, null, metadata !355, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 117, size 160, align 32, offset 0] [from ]
!355 = metadata !{metadata !356, metadata !357, metadata !358, metadata !359, metadata !360}
!356 = metadata !{i32 786445, metadata !4, metadata !354, metadata !"phiA", i32 117, i64 32, i64 32, i64 0, i32 0, metadata !315} ; [ DW_TAG_member ] [phiA] [line 117, size 32, align 32, offset 0] [from real]
!357 = metadata !{i32 786445, metadata !4, metadata !354, metadata !"cpA", i32 117, i64 32, i64 32, i64 32, i32 0, metadata !315} ; [ DW_TAG_member ] [cpA] [line 117, size 32, align 32, offset 32] [from real]
!358 = metadata !{i32 786445, metadata !4, metadata !354, metadata !"mult", i32 117, i64 32, i64 32, i64 64, i32 0, metadata !231} ; [ DW_TAG_member ] [mult] [line 117, size 32, align 32, offset 64] [from int]
!359 = metadata !{i32 786445, metadata !4, metadata !354, metadata !"phiB", i32 117, i64 32, i64 32, i64 96, i32 0, metadata !315} ; [ DW_TAG_member ] [phiB] [line 117, size 32, align 32, offset 96] [from real]
!360 = metadata !{i32 786445, metadata !4, metadata !354, metadata !"cpB", i32 117, i64 32, i64 32, i64 128, i32 0, metadata !315} ; [ DW_TAG_member ] [cpB] [line 117, size 32, align 32, offset 128] [from real]
!361 = metadata !{i32 786445, metadata !4, metadata !309, metadata !"shake", i32 118, i64 64, i64 32, i64 0, i32 0, metadata !362} ; [ DW_TAG_member ] [shake] [line 118, size 64, align 32, offset 0] [from ]
!362 = metadata !{i32 786451, metadata !4, metadata !309, metadata !"", i32 118, i64 64, i64 32, i32 0, i32 0, null, metadata !363, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 118, size 64, align 32, offset 0] [from ]
!363 = metadata !{metadata !364, metadata !365}
!364 = metadata !{i32 786445, metadata !4, metadata !362, metadata !"dA", i32 118, i64 32, i64 32, i64 0, i32 0, metadata !315} ; [ DW_TAG_member ] [dA] [line 118, size 32, align 32, offset 0] [from real]
!365 = metadata !{i32 786445, metadata !4, metadata !362, metadata !"dB", i32 118, i64 32, i64 32, i64 32, i32 0, metadata !315} ; [ DW_TAG_member ] [dB] [line 118, size 32, align 32, offset 32] [from real]
!366 = metadata !{i32 786445, metadata !4, metadata !309, metadata !"settle", i32 123, i64 64, i64 32, i64 0, i32 0, metadata !367} ; [ DW_TAG_member ] [settle] [line 123, size 64, align 32, offset 0] [from ]
!367 = metadata !{i32 786451, metadata !4, metadata !309, metadata !"", i32 123, i64 64, i64 32, i32 0, i32 0, null, metadata !368, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 123, size 64, align 32, offset 0] [from ]
!368 = metadata !{metadata !369, metadata !370}
!369 = metadata !{i32 786445, metadata !4, metadata !367, metadata !"doh", i32 123, i64 32, i64 32, i64 0, i32 0, metadata !315} ; [ DW_TAG_member ] [doh] [line 123, size 32, align 32, offset 0] [from real]
!370 = metadata !{i32 786445, metadata !4, metadata !367, metadata !"dhh", i32 123, i64 32, i64 32, i64 32, i32 0, metadata !315} ; [ DW_TAG_member ] [dhh] [line 123, size 32, align 32, offset 32] [from real]
!371 = metadata !{i32 786445, metadata !4, metadata !309, metadata !"morse", i32 124, i64 96, i64 32, i64 0, i32 0, metadata !372} ; [ DW_TAG_member ] [morse] [line 124, size 96, align 32, offset 0] [from ]
!372 = metadata !{i32 786451, metadata !4, metadata !309, metadata !"", i32 124, i64 96, i64 32, i32 0, i32 0, null, metadata !373, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 124, size 96, align 32, offset 0] [from ]
!373 = metadata !{metadata !374, metadata !375, metadata !376}
!374 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"b0", i32 124, i64 32, i64 32, i64 0, i32 0, metadata !315} ; [ DW_TAG_member ] [b0] [line 124, size 32, align 32, offset 0] [from real]
!375 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"cb", i32 124, i64 32, i64 32, i64 32, i32 0, metadata !315} ; [ DW_TAG_member ] [cb] [line 124, size 32, align 32, offset 32] [from real]
!376 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"beta", i32 124, i64 32, i64 32, i64 64, i32 0, metadata !315} ; [ DW_TAG_member ] [beta] [line 124, size 32, align 32, offset 64] [from real]
!377 = metadata !{i32 786445, metadata !4, metadata !309, metadata !"posres", i32 125, i64 192, i64 32, i64 0, i32 0, metadata !378} ; [ DW_TAG_member ] [posres] [line 125, size 192, align 32, offset 0] [from ]
!378 = metadata !{i32 786451, metadata !4, metadata !309, metadata !"", i32 125, i64 192, i64 32, i32 0, i32 0, null, metadata !379, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 125, size 192, align 32, offset 0] [from ]
!379 = metadata !{metadata !380, metadata !384}
!380 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"pos0", i32 125, i64 96, i64 32, i64 0, i32 0, metadata !381} ; [ DW_TAG_member ] [pos0] [line 125, size 96, align 32, offset 0] [from ]
!381 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !315, metadata !382, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!382 = metadata !{metadata !383}
!383 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!384 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"fc", i32 125, i64 96, i64 32, i64 96, i32 0, metadata !381} ; [ DW_TAG_member ] [fc] [line 125, size 96, align 32, offset 96] [from ]
!385 = metadata !{i32 786445, metadata !4, metadata !309, metadata !"rbdihs", i32 126, i64 192, i64 32, i64 0, i32 0, metadata !386} ; [ DW_TAG_member ] [rbdihs] [line 126, size 192, align 32, offset 0] [from ]
!386 = metadata !{i32 786451, metadata !4, metadata !309, metadata !"", i32 126, i64 192, i64 32, i32 0, i32 0, null, metadata !387, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 126, size 192, align 32, offset 0] [from ]
!387 = metadata !{metadata !388}
!388 = metadata !{i32 786445, metadata !4, metadata !386, metadata !"rbc", i32 126, i64 192, i64 32, i64 0, i32 0, metadata !389} ; [ DW_TAG_member ] [rbc] [line 126, size 192, align 32, offset 0] [from ]
!389 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !315, metadata !390, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from real]
!390 = metadata !{metadata !391}
!391 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!392 = metadata !{i32 786445, metadata !4, metadata !309, metadata !"dummy", i32 127, i64 192, i64 32, i64 0, i32 0, metadata !393} ; [ DW_TAG_member ] [dummy] [line 127, size 192, align 32, offset 0] [from ]
!393 = metadata !{i32 786451, metadata !4, metadata !309, metadata !"", i32 127, i64 192, i64 32, i32 0, i32 0, null, metadata !394, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 127, size 192, align 32, offset 0] [from ]
!394 = metadata !{metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400}
!395 = metadata !{i32 786445, metadata !4, metadata !393, metadata !"a", i32 127, i64 32, i64 32, i64 0, i32 0, metadata !315} ; [ DW_TAG_member ] [a] [line 127, size 32, align 32, offset 0] [from real]
!396 = metadata !{i32 786445, metadata !4, metadata !393, metadata !"b", i32 127, i64 32, i64 32, i64 32, i32 0, metadata !315} ; [ DW_TAG_member ] [b] [line 127, size 32, align 32, offset 32] [from real]
!397 = metadata !{i32 786445, metadata !4, metadata !393, metadata !"c", i32 127, i64 32, i64 32, i64 64, i32 0, metadata !315} ; [ DW_TAG_member ] [c] [line 127, size 32, align 32, offset 64] [from real]
!398 = metadata !{i32 786445, metadata !4, metadata !393, metadata !"d", i32 127, i64 32, i64 32, i64 96, i32 0, metadata !315} ; [ DW_TAG_member ] [d] [line 127, size 32, align 32, offset 96] [from real]
!399 = metadata !{i32 786445, metadata !4, metadata !393, metadata !"e", i32 127, i64 32, i64 32, i64 128, i32 0, metadata !315} ; [ DW_TAG_member ] [e] [line 127, size 32, align 32, offset 128] [from real]
!400 = metadata !{i32 786445, metadata !4, metadata !393, metadata !"f", i32 127, i64 32, i64 32, i64 160, i32 0, metadata !315} ; [ DW_TAG_member ] [f] [line 127, size 32, align 32, offset 160] [from real]
!401 = metadata !{i32 786445, metadata !4, metadata !309, metadata !"disres", i32 128, i64 192, i64 32, i64 0, i32 0, metadata !402} ; [ DW_TAG_member ] [disres] [line 128, size 192, align 32, offset 0] [from ]
!402 = metadata !{i32 786451, metadata !4, metadata !309, metadata !"", i32 128, i64 192, i64 32, i32 0, i32 0, null, metadata !403, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 128, size 192, align 32, offset 0] [from ]
!403 = metadata !{metadata !404, metadata !405, metadata !406, metadata !407, metadata !408, metadata !409}
!404 = metadata !{i32 786445, metadata !4, metadata !402, metadata !"low", i32 128, i64 32, i64 32, i64 0, i32 0, metadata !315} ; [ DW_TAG_member ] [low] [line 128, size 32, align 32, offset 0] [from real]
!405 = metadata !{i32 786445, metadata !4, metadata !402, metadata !"up1", i32 128, i64 32, i64 32, i64 32, i32 0, metadata !315} ; [ DW_TAG_member ] [up1] [line 128, size 32, align 32, offset 32] [from real]
!406 = metadata !{i32 786445, metadata !4, metadata !402, metadata !"up2", i32 128, i64 32, i64 32, i64 64, i32 0, metadata !315} ; [ DW_TAG_member ] [up2] [line 128, size 32, align 32, offset 64] [from real]
!407 = metadata !{i32 786445, metadata !4, metadata !402, metadata !"kfac", i32 128, i64 32, i64 32, i64 96, i32 0, metadata !315} ; [ DW_TAG_member ] [kfac] [line 128, size 32, align 32, offset 96] [from real]
!408 = metadata !{i32 786445, metadata !4, metadata !402, metadata !"type", i32 128, i64 32, i64 32, i64 128, i32 0, metadata !231} ; [ DW_TAG_member ] [type] [line 128, size 32, align 32, offset 128] [from int]
!409 = metadata !{i32 786445, metadata !4, metadata !402, metadata !"label", i32 128, i64 32, i64 32, i64 160, i32 0, metadata !231} ; [ DW_TAG_member ] [label] [line 128, size 32, align 32, offset 160] [from int]
!410 = metadata !{i32 786445, metadata !4, metadata !309, metadata !"orires", i32 129, i64 192, i64 32, i64 0, i32 0, metadata !411} ; [ DW_TAG_member ] [orires] [line 129, size 192, align 32, offset 0] [from ]
!411 = metadata !{i32 786451, metadata !4, metadata !309, metadata !"", i32 129, i64 192, i64 32, i32 0, i32 0, null, metadata !412, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 129, size 192, align 32, offset 0] [from ]
!412 = metadata !{metadata !413, metadata !414, metadata !415, metadata !416, metadata !417, metadata !418}
!413 = metadata !{i32 786445, metadata !4, metadata !411, metadata !"ex", i32 129, i64 32, i64 32, i64 0, i32 0, metadata !231} ; [ DW_TAG_member ] [ex] [line 129, size 32, align 32, offset 0] [from int]
!414 = metadata !{i32 786445, metadata !4, metadata !411, metadata !"pow", i32 129, i64 32, i64 32, i64 32, i32 0, metadata !231} ; [ DW_TAG_member ] [pow] [line 129, size 32, align 32, offset 32] [from int]
!415 = metadata !{i32 786445, metadata !4, metadata !411, metadata !"label", i32 129, i64 32, i64 32, i64 64, i32 0, metadata !231} ; [ DW_TAG_member ] [label] [line 129, size 32, align 32, offset 64] [from int]
!416 = metadata !{i32 786445, metadata !4, metadata !411, metadata !"c", i32 129, i64 32, i64 32, i64 96, i32 0, metadata !315} ; [ DW_TAG_member ] [c] [line 129, size 32, align 32, offset 96] [from real]
!417 = metadata !{i32 786445, metadata !4, metadata !411, metadata !"obs", i32 129, i64 32, i64 32, i64 128, i32 0, metadata !315} ; [ DW_TAG_member ] [obs] [line 129, size 32, align 32, offset 128] [from real]
!418 = metadata !{i32 786445, metadata !4, metadata !411, metadata !"kfac", i32 129, i64 32, i64 32, i64 160, i32 0, metadata !315} ; [ DW_TAG_member ] [kfac] [line 129, size 32, align 32, offset 160] [from real]
!419 = metadata !{i32 786445, metadata !4, metadata !309, metadata !"generic", i32 130, i64 192, i64 32, i64 0, i32 0, metadata !420} ; [ DW_TAG_member ] [generic] [line 130, size 192, align 32, offset 0] [from ]
!420 = metadata !{i32 786451, metadata !4, metadata !309, metadata !"", i32 130, i64 192, i64 32, i32 0, i32 0, null, metadata !421, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 130, size 192, align 32, offset 0] [from ]
!421 = metadata !{metadata !422}
!422 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"buf", i32 130, i64 192, i64 32, i64 0, i32 0, metadata !389} ; [ DW_TAG_member ] [buf] [line 130, size 192, align 32, offset 0] [from ]
!423 = metadata !{i32 786445, metadata !4, metadata !298, metadata !"il", i32 187, i64 366080, i64 64, i64 256, i32 0, metadata !424} ; [ DW_TAG_member ] [il] [line 187, size 366080, align 64, offset 256] [from ]
!424 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 366080, i64 64, i32 0, i32 0, metadata !425, metadata !437, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 366080, align 64, offset 0] [from t_ilist]
!425 = metadata !{i32 786454, metadata !4, null, metadata !"t_ilist", i32 140, i64 0, i64 0, i64 0, i32 0, metadata !426} ; [ DW_TAG_typedef ] [t_ilist] [line 140, size 0, align 0, offset 0] [from ]
!426 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 135, i64 8320, i64 64, i32 0, i32 0, null, metadata !427, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 135, size 8320, align 64, offset 0] [from ]
!427 = metadata !{metadata !428, metadata !429, metadata !433}
!428 = metadata !{i32 786445, metadata !4, metadata !426, metadata !"nr", i32 137, i64 32, i64 32, i64 0, i32 0, metadata !231} ; [ DW_TAG_member ] [nr] [line 137, size 32, align 32, offset 0] [from int]
!429 = metadata !{i32 786445, metadata !4, metadata !426, metadata !"multinr", i32 138, i64 8192, i64 32, i64 32, i32 0, metadata !430} ; [ DW_TAG_member ] [multinr] [line 138, size 8192, align 32, offset 32] [from ]
!430 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !231, metadata !431, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!431 = metadata !{metadata !432}
!432 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!433 = metadata !{i32 786445, metadata !4, metadata !426, metadata !"iatoms", i32 139, i64 64, i64 64, i64 8256, i32 0, metadata !434} ; [ DW_TAG_member ] [iatoms] [line 139, size 64, align 64, offset 8256] [from ]
!434 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !435} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_iatom]
!435 = metadata !{i32 786454, metadata !4, null, metadata !"t_iatom", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !436} ; [ DW_TAG_typedef ] [t_iatom] [line 45, size 0, align 0, offset 0] [from atom_id]
!436 = metadata !{i32 786454, metadata !4, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !231} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!437 = metadata !{metadata !438}
!438 = metadata !{i32 786465, i64 0, i64 44}      ; [ DW_TAG_subrange_type ] [0, 43]
!439 = metadata !{i32 786445, metadata !292, metadata !291, metadata !"atoms", i32 39, i64 10240, i64 64, i64 366400, i32 0, metadata !440} ; [ DW_TAG_member ] [atoms] [line 39, size 10240, align 64, offset 366400] [from t_atoms]
!440 = metadata !{i32 786454, metadata !292, null, metadata !"t_atoms", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !441} ; [ DW_TAG_typedef ] [t_atoms] [line 94, size 0, align 0, offset 0] [from ]
!441 = metadata !{i32 786451, metadata !442, null, metadata !"", i32 75, i64 10240, i64 64, i32 0, i32 0, null, metadata !443, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 75, size 10240, align 64, offset 0] [from ]
!442 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/atoms.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!443 = metadata !{metadata !444, metadata !445, metadata !464, metadata !466, metadata !467, metadata !468, metadata !469, metadata !470, metadata !471, metadata !472, metadata !483, metadata !491}
!444 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"nr", i32 76, i64 32, i64 32, i64 0, i32 0, metadata !231} ; [ DW_TAG_member ] [nr] [line 76, size 32, align 32, offset 0] [from int]
!445 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"atom", i32 77, i64 64, i64 64, i64 64, i32 0, metadata !446} ; [ DW_TAG_member ] [atom] [line 77, size 64, align 64, offset 64] [from ]
!446 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !447} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atom]
!447 = metadata !{i32 786454, metadata !442, null, metadata !"t_atom", i32 57, i64 0, i64 0, i64 0, i32 0, metadata !448} ; [ DW_TAG_typedef ] [t_atom] [line 57, size 0, align 0, offset 0] [from ]
!448 = metadata !{i32 786451, metadata !442, null, metadata !"", i32 48, i64 320, i64 32, i32 0, i32 0, null, metadata !449, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 320, align 32, offset 0] [from ]
!449 = metadata !{metadata !450, metadata !451, metadata !452, metadata !453, metadata !454, metadata !455, metadata !456, metadata !457, metadata !458, metadata !463}
!450 = metadata !{i32 786445, metadata !442, metadata !448, metadata !"m", i32 49, i64 32, i64 32, i64 0, i32 0, metadata !315} ; [ DW_TAG_member ] [m] [line 49, size 32, align 32, offset 0] [from real]
!451 = metadata !{i32 786445, metadata !442, metadata !448, metadata !"q", i32 49, i64 32, i64 32, i64 32, i32 0, metadata !315} ; [ DW_TAG_member ] [q] [line 49, size 32, align 32, offset 32] [from real]
!452 = metadata !{i32 786445, metadata !442, metadata !448, metadata !"mB", i32 50, i64 32, i64 32, i64 64, i32 0, metadata !315} ; [ DW_TAG_member ] [mB] [line 50, size 32, align 32, offset 64] [from real]
!453 = metadata !{i32 786445, metadata !442, metadata !448, metadata !"qB", i32 50, i64 32, i64 32, i64 96, i32 0, metadata !315} ; [ DW_TAG_member ] [qB] [line 50, size 32, align 32, offset 96] [from real]
!454 = metadata !{i32 786445, metadata !442, metadata !448, metadata !"type", i32 51, i64 16, i64 16, i64 128, i32 0, metadata !266} ; [ DW_TAG_member ] [type] [line 51, size 16, align 16, offset 128] [from unsigned short]
!455 = metadata !{i32 786445, metadata !442, metadata !448, metadata !"typeB", i32 52, i64 16, i64 16, i64 144, i32 0, metadata !266} ; [ DW_TAG_member ] [typeB] [line 52, size 16, align 16, offset 144] [from unsigned short]
!456 = metadata !{i32 786445, metadata !442, metadata !448, metadata !"ptype", i32 53, i64 32, i64 32, i64 160, i32 0, metadata !231} ; [ DW_TAG_member ] [ptype] [line 53, size 32, align 32, offset 160] [from int]
!457 = metadata !{i32 786445, metadata !442, metadata !448, metadata !"resnr", i32 54, i64 32, i64 32, i64 192, i32 0, metadata !231} ; [ DW_TAG_member ] [resnr] [line 54, size 32, align 32, offset 192] [from int]
!458 = metadata !{i32 786445, metadata !442, metadata !448, metadata !"grpnr", i32 55, i64 72, i64 8, i64 224, i32 0, metadata !459} ; [ DW_TAG_member ] [grpnr] [line 55, size 72, align 8, offset 224] [from ]
!459 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 72, i64 8, i32 0, i32 0, metadata !460, metadata !461, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 72, align 8, offset 0] [from unsigned char]
!460 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!461 = metadata !{metadata !462}
!462 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!463 = metadata !{i32 786445, metadata !442, metadata !448, metadata !"chain", i32 56, i64 8, i64 8, i64 296, i32 0, metadata !460} ; [ DW_TAG_member ] [chain] [line 56, size 8, align 8, offset 296] [from unsigned char]
!464 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"atomname", i32 80, i64 64, i64 64, i64 128, i32 0, metadata !465} ; [ DW_TAG_member ] [atomname] [line 80, size 64, align 64, offset 128] [from ]
!465 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !295} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!466 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"atomtype", i32 82, i64 64, i64 64, i64 192, i32 0, metadata !465} ; [ DW_TAG_member ] [atomtype] [line 82, size 64, align 64, offset 192] [from ]
!467 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"atomtypeB", i32 84, i64 64, i64 64, i64 256, i32 0, metadata !465} ; [ DW_TAG_member ] [atomtypeB] [line 84, size 64, align 64, offset 256] [from ]
!468 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"nres", i32 86, i64 32, i64 32, i64 320, i32 0, metadata !231} ; [ DW_TAG_member ] [nres] [line 86, size 32, align 32, offset 320] [from int]
!469 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"resname", i32 87, i64 64, i64 64, i64 384, i32 0, metadata !465} ; [ DW_TAG_member ] [resname] [line 87, size 64, align 64, offset 384] [from ]
!470 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"ngrpname", i32 89, i64 32, i64 32, i64 448, i32 0, metadata !231} ; [ DW_TAG_member ] [ngrpname] [line 89, size 32, align 32, offset 448] [from int]
!471 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"grpname", i32 90, i64 64, i64 64, i64 512, i32 0, metadata !465} ; [ DW_TAG_member ] [grpname] [line 90, size 64, align 64, offset 512] [from ]
!472 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"excl", i32 91, i64 8448, i64 64, i64 576, i32 0, metadata !473} ; [ DW_TAG_member ] [excl] [line 91, size 8448, align 64, offset 576] [from t_block]
!473 = metadata !{i32 786454, metadata !442, null, metadata !"t_block", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !474} ; [ DW_TAG_typedef ] [t_block] [line 52, size 0, align 0, offset 0] [from ]
!474 = metadata !{i32 786451, metadata !475, null, metadata !"", i32 36, i64 8448, i64 64, i32 0, i32 0, null, metadata !476, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 8448, align 64, offset 0] [from ]
!475 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/block.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!476 = metadata !{metadata !477, metadata !478, metadata !479, metadata !481, metadata !482}
!477 = metadata !{i32 786445, metadata !475, metadata !474, metadata !"multinr", i32 37, i64 8192, i64 32, i64 0, i32 0, metadata !430} ; [ DW_TAG_member ] [multinr] [line 37, size 8192, align 32, offset 0] [from ]
!478 = metadata !{i32 786445, metadata !475, metadata !474, metadata !"nr", i32 43, i64 32, i64 32, i64 8192, i32 0, metadata !231} ; [ DW_TAG_member ] [nr] [line 43, size 32, align 32, offset 8192] [from int]
!479 = metadata !{i32 786445, metadata !475, metadata !474, metadata !"index", i32 44, i64 64, i64 64, i64 8256, i32 0, metadata !480} ; [ DW_TAG_member ] [index] [line 44, size 64, align 64, offset 8256] [from ]
!480 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !436} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!481 = metadata !{i32 786445, metadata !475, metadata !474, metadata !"nra", i32 45, i64 32, i64 32, i64 8320, i32 0, metadata !231} ; [ DW_TAG_member ] [nra] [line 45, size 32, align 32, offset 8320] [from int]
!482 = metadata !{i32 786445, metadata !475, metadata !474, metadata !"a", i32 46, i64 64, i64 64, i64 8384, i32 0, metadata !480} ; [ DW_TAG_member ] [a] [line 46, size 64, align 64, offset 8384] [from ]
!483 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"grps", i32 92, i64 1152, i64 64, i64 9024, i32 0, metadata !484} ; [ DW_TAG_member ] [grps] [line 92, size 1152, align 64, offset 9024] [from ]
!484 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 64, i32 0, i32 0, metadata !485, metadata !461, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1152, align 64, offset 0] [from t_grps]
!485 = metadata !{i32 786454, metadata !442, null, metadata !"t_grps", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !486} ; [ DW_TAG_typedef ] [t_grps] [line 73, size 0, align 0, offset 0] [from ]
!486 = metadata !{i32 786451, metadata !442, null, metadata !"", i32 70, i64 128, i64 64, i32 0, i32 0, null, metadata !487, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 70, size 128, align 64, offset 0] [from ]
!487 = metadata !{metadata !488, metadata !489}
!488 = metadata !{i32 786445, metadata !442, metadata !486, metadata !"nr", i32 71, i64 32, i64 32, i64 0, i32 0, metadata !231} ; [ DW_TAG_member ] [nr] [line 71, size 32, align 32, offset 0] [from int]
!489 = metadata !{i32 786445, metadata !442, metadata !486, metadata !"nm_ind", i32 72, i64 64, i64 64, i64 64, i32 0, metadata !490} ; [ DW_TAG_member ] [nm_ind] [line 72, size 64, align 64, offset 64] [from ]
!490 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !231} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!491 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"pdbinfo", i32 93, i64 64, i64 64, i64 10176, i32 0, metadata !492} ; [ DW_TAG_member ] [pdbinfo] [line 93, size 64, align 64, offset 10176] [from ]
!492 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !493} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_pdbinfo]
!493 = metadata !{i32 786454, metadata !442, null, metadata !"t_pdbinfo", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !494} ; [ DW_TAG_typedef ] [t_pdbinfo] [line 68, size 0, align 0, offset 0] [from ]
!494 = metadata !{i32 786451, metadata !442, null, metadata !"", i32 59, i64 416, i64 32, i32 0, i32 0, null, metadata !495, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 59, size 416, align 32, offset 0] [from ]
!495 = metadata !{metadata !496, metadata !497, metadata !498, metadata !499, metadata !501, metadata !502, metadata !503, metadata !504}
!496 = metadata !{i32 786445, metadata !442, metadata !494, metadata !"type", i32 60, i64 32, i64 32, i64 0, i32 0, metadata !231} ; [ DW_TAG_member ] [type] [line 60, size 32, align 32, offset 0] [from int]
!497 = metadata !{i32 786445, metadata !442, metadata !494, metadata !"atomnr", i32 61, i64 32, i64 32, i64 32, i32 0, metadata !231} ; [ DW_TAG_member ] [atomnr] [line 61, size 32, align 32, offset 32] [from int]
!498 = metadata !{i32 786445, metadata !442, metadata !494, metadata !"altloc", i32 62, i64 8, i64 8, i64 64, i32 0, metadata !240} ; [ DW_TAG_member ] [altloc] [line 62, size 8, align 8, offset 64] [from char]
!499 = metadata !{i32 786445, metadata !442, metadata !494, metadata !"pdbresnr", i32 63, i64 48, i64 8, i64 72, i32 0, metadata !500} ; [ DW_TAG_member ] [pdbresnr] [line 63, size 48, align 8, offset 72] [from ]
!500 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 48, i64 8, i32 0, i32 0, metadata !240, metadata !390, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 48, align 8, offset 0] [from char]
!501 = metadata !{i32 786445, metadata !442, metadata !494, metadata !"occup", i32 64, i64 32, i64 32, i64 128, i32 0, metadata !315} ; [ DW_TAG_member ] [occup] [line 64, size 32, align 32, offset 128] [from real]
!502 = metadata !{i32 786445, metadata !442, metadata !494, metadata !"bfac", i32 65, i64 32, i64 32, i64 160, i32 0, metadata !315} ; [ DW_TAG_member ] [bfac] [line 65, size 32, align 32, offset 160] [from real]
!503 = metadata !{i32 786445, metadata !442, metadata !494, metadata !"bAnisotropic", i32 66, i64 32, i64 32, i64 192, i32 0, metadata !231} ; [ DW_TAG_member ] [bAnisotropic] [line 66, size 32, align 32, offset 192] [from int]
!504 = metadata !{i32 786445, metadata !442, metadata !494, metadata !"uij", i32 67, i64 192, i64 32, i64 224, i32 0, metadata !505} ; [ DW_TAG_member ] [uij] [line 67, size 192, align 32, offset 224] [from ]
!505 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !231, metadata !390, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!506 = metadata !{i32 786445, metadata !292, metadata !291, metadata !"blocks", i32 40, i64 25344, i64 64, i64 376640, i32 0, metadata !507} ; [ DW_TAG_member ] [blocks] [line 40, size 25344, align 64, offset 376640] [from ]
!507 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 25344, i64 64, i32 0, i32 0, metadata !473, metadata !382, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 25344, align 64, offset 0] [from t_block]
!508 = metadata !{i32 786445, metadata !292, metadata !291, metadata !"symtab", i32 41, i64 128, i64 64, i64 401984, i32 0, metadata !509} ; [ DW_TAG_member ] [symtab] [line 41, size 128, align 64, offset 401984] [from t_symtab]
!509 = metadata !{i32 786454, metadata !292, null, metadata !"t_symtab", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !510} ; [ DW_TAG_typedef ] [t_symtab] [line 46, size 0, align 0, offset 0] [from ]
!510 = metadata !{i32 786451, metadata !511, null, metadata !"", i32 42, i64 128, i64 64, i32 0, i32 0, null, metadata !512, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 42, size 128, align 64, offset 0] [from ]
!511 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/symtab.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!512 = metadata !{metadata !513, metadata !514}
!513 = metadata !{i32 786445, metadata !511, metadata !510, metadata !"nr", i32 44, i64 32, i64 32, i64 0, i32 0, metadata !231} ; [ DW_TAG_member ] [nr] [line 44, size 32, align 32, offset 0] [from int]
!514 = metadata !{i32 786445, metadata !511, metadata !510, metadata !"symbuf", i32 45, i64 64, i64 64, i64 64, i32 0, metadata !515} ; [ DW_TAG_member ] [symbuf] [line 45, size 64, align 64, offset 64] [from ]
!515 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !516} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_symbuf]
!516 = metadata !{i32 786454, metadata !511, null, metadata !"t_symbuf", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !517} ; [ DW_TAG_typedef ] [t_symbuf] [line 40, size 0, align 0, offset 0] [from symbuf]
!517 = metadata !{i32 786451, metadata !511, null, metadata !"symbuf", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !518, i32 0, null, null} ; [ DW_TAG_structure_type ] [symbuf] [line 36, size 192, align 64, offset 0] [from ]
!518 = metadata !{metadata !519, metadata !520, metadata !521}
!519 = metadata !{i32 786445, metadata !511, metadata !517, metadata !"bufsize", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !231} ; [ DW_TAG_member ] [bufsize] [line 37, size 32, align 32, offset 0] [from int]
!520 = metadata !{i32 786445, metadata !511, metadata !517, metadata !"buf", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !295} ; [ DW_TAG_member ] [buf] [line 38, size 64, align 64, offset 64] [from ]
!521 = metadata !{i32 786445, metadata !511, metadata !517, metadata !"next", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !522} ; [ DW_TAG_member ] [next] [line 39, size 64, align 64, offset 128] [from ]
!522 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !517} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from symbuf]
!523 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !524} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_inputrec]
!524 = metadata !{i32 786454, metadata !1, null, metadata !"t_inputrec", i32 143, i64 0, i64 0, i64 0, i32 0, metadata !525} ; [ DW_TAG_typedef ] [t_inputrec] [line 143, size 0, align 0, offset 0] [from ]
!525 = metadata !{i32 786451, metadata !526, null, metadata !"", i32 55, i64 4736, i64 64, i32 0, i32 0, null, metadata !527, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 55, size 4736, align 64, offset 0] [from ]
!526 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/inputrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!527 = metadata !{metadata !528, metadata !529, metadata !530, metadata !531, metadata !532, metadata !533, metadata !534, metadata !535, metadata !536, metadata !537, metadata !538, metadata !539, metadata !540, metadata !541, metadata !542, metadata !543, metadata !544, metadata !545, metadata !546, metadata !547, metadata !548, metadata !549, metadata !550, metadata !551, metadata !552, metadata !553, metadata !554, metadata !555, metadata !556, metadata !557, metadata !558, metadata !559, metadata !563, metadata !564, metadata !565, metadata !566, metadata !567, metadata !568, metadata !569, metadata !570, metadata !571, metadata !572, metadata !573, metadata !574, metadata !575, metadata !576, metadata !577, metadata !578, metadata !579, metadata !580, metadata !581, metadata !582, metadata !583, metadata !584, metadata !585, metadata !586, metadata !587, metadata !588, metadata !589, metadata !590, metadata !591, metadata !592, metadata !593, metadata !594, metadata !595, metadata !596, metadata !597, metadata !598, metadata !599, metadata !600, metadata !601, metadata !602, metadata !603, metadata !604, metadata !605, metadata !606, metadata !607, metadata !608, metadata !609, metadata !610, metadata !611, metadata !631, metadata !639}
!528 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"eI", i32 56, i64 32, i64 32, i64 0, i32 0, metadata !231} ; [ DW_TAG_member ] [eI] [line 56, size 32, align 32, offset 0] [from int]
!529 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"nsteps", i32 57, i64 32, i64 32, i64 32, i32 0, metadata !231} ; [ DW_TAG_member ] [nsteps] [line 57, size 32, align 32, offset 32] [from int]
!530 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"ns_type", i32 58, i64 32, i64 32, i64 64, i32 0, metadata !231} ; [ DW_TAG_member ] [ns_type] [line 58, size 32, align 32, offset 64] [from int]
!531 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"nstlist", i32 59, i64 32, i64 32, i64 96, i32 0, metadata !231} ; [ DW_TAG_member ] [nstlist] [line 59, size 32, align 32, offset 96] [from int]
!532 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"ndelta", i32 60, i64 32, i64 32, i64 128, i32 0, metadata !231} ; [ DW_TAG_member ] [ndelta] [line 60, size 32, align 32, offset 128] [from int]
!533 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"bDomDecomp", i32 61, i64 32, i64 32, i64 160, i32 0, metadata !231} ; [ DW_TAG_member ] [bDomDecomp] [line 61, size 32, align 32, offset 160] [from int]
!534 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"decomp_dir", i32 62, i64 32, i64 32, i64 192, i32 0, metadata !231} ; [ DW_TAG_member ] [decomp_dir] [line 62, size 32, align 32, offset 192] [from int]
!535 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"nstcomm", i32 63, i64 32, i64 32, i64 224, i32 0, metadata !231} ; [ DW_TAG_member ] [nstcomm] [line 63, size 32, align 32, offset 224] [from int]
!536 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"nstlog", i32 65, i64 32, i64 32, i64 256, i32 0, metadata !231} ; [ DW_TAG_member ] [nstlog] [line 65, size 32, align 32, offset 256] [from int]
!537 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"nstxout", i32 66, i64 32, i64 32, i64 288, i32 0, metadata !231} ; [ DW_TAG_member ] [nstxout] [line 66, size 32, align 32, offset 288] [from int]
!538 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"nstvout", i32 67, i64 32, i64 32, i64 320, i32 0, metadata !231} ; [ DW_TAG_member ] [nstvout] [line 67, size 32, align 32, offset 320] [from int]
!539 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"nstfout", i32 68, i64 32, i64 32, i64 352, i32 0, metadata !231} ; [ DW_TAG_member ] [nstfout] [line 68, size 32, align 32, offset 352] [from int]
!540 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"nstenergy", i32 69, i64 32, i64 32, i64 384, i32 0, metadata !231} ; [ DW_TAG_member ] [nstenergy] [line 69, size 32, align 32, offset 384] [from int]
!541 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"nstxtcout", i32 70, i64 32, i64 32, i64 416, i32 0, metadata !231} ; [ DW_TAG_member ] [nstxtcout] [line 70, size 32, align 32, offset 416] [from int]
!542 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"init_t", i32 71, i64 32, i64 32, i64 448, i32 0, metadata !315} ; [ DW_TAG_member ] [init_t] [line 71, size 32, align 32, offset 448] [from real]
!543 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"delta_t", i32 72, i64 32, i64 32, i64 480, i32 0, metadata !315} ; [ DW_TAG_member ] [delta_t] [line 72, size 32, align 32, offset 480] [from real]
!544 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"xtcprec", i32 73, i64 32, i64 32, i64 512, i32 0, metadata !315} ; [ DW_TAG_member ] [xtcprec] [line 73, size 32, align 32, offset 512] [from real]
!545 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"nkx", i32 74, i64 32, i64 32, i64 544, i32 0, metadata !231} ; [ DW_TAG_member ] [nkx] [line 74, size 32, align 32, offset 544] [from int]
!546 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"nky", i32 74, i64 32, i64 32, i64 576, i32 0, metadata !231} ; [ DW_TAG_member ] [nky] [line 74, size 32, align 32, offset 576] [from int]
!547 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"nkz", i32 74, i64 32, i64 32, i64 608, i32 0, metadata !231} ; [ DW_TAG_member ] [nkz] [line 74, size 32, align 32, offset 608] [from int]
!548 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"pme_order", i32 76, i64 32, i64 32, i64 640, i32 0, metadata !231} ; [ DW_TAG_member ] [pme_order] [line 76, size 32, align 32, offset 640] [from int]
!549 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"ewald_rtol", i32 77, i64 32, i64 32, i64 672, i32 0, metadata !315} ; [ DW_TAG_member ] [ewald_rtol] [line 77, size 32, align 32, offset 672] [from real]
!550 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"ewald_geometry", i32 79, i64 32, i64 32, i64 704, i32 0, metadata !231} ; [ DW_TAG_member ] [ewald_geometry] [line 79, size 32, align 32, offset 704] [from int]
!551 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"epsilon_surface", i32 80, i64 32, i64 32, i64 736, i32 0, metadata !231} ; [ DW_TAG_member ] [epsilon_surface] [line 80, size 32, align 32, offset 736] [from int]
!552 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"bOptFFT", i32 81, i64 32, i64 32, i64 768, i32 0, metadata !231} ; [ DW_TAG_member ] [bOptFFT] [line 81, size 32, align 32, offset 768] [from int]
!553 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"ePBC", i32 82, i64 32, i64 32, i64 800, i32 0, metadata !231} ; [ DW_TAG_member ] [ePBC] [line 82, size 32, align 32, offset 800] [from int]
!554 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"bUncStart", i32 83, i64 32, i64 32, i64 832, i32 0, metadata !231} ; [ DW_TAG_member ] [bUncStart] [line 83, size 32, align 32, offset 832] [from int]
!555 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"etc", i32 84, i64 32, i64 32, i64 864, i32 0, metadata !231} ; [ DW_TAG_member ] [etc] [line 84, size 32, align 32, offset 864] [from int]
!556 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"epc", i32 85, i64 32, i64 32, i64 896, i32 0, metadata !231} ; [ DW_TAG_member ] [epc] [line 85, size 32, align 32, offset 896] [from int]
!557 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"epct", i32 86, i64 32, i64 32, i64 928, i32 0, metadata !231} ; [ DW_TAG_member ] [epct] [line 86, size 32, align 32, offset 928] [from int]
!558 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"tau_p", i32 87, i64 32, i64 32, i64 960, i32 0, metadata !315} ; [ DW_TAG_member ] [tau_p] [line 87, size 32, align 32, offset 960] [from real]
!559 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"ref_p", i32 88, i64 288, i64 32, i64 992, i32 0, metadata !560} ; [ DW_TAG_member ] [ref_p] [line 88, size 288, align 32, offset 992] [from tensor]
!560 = metadata !{i32 786454, metadata !526, null, metadata !"tensor", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !561} ; [ DW_TAG_typedef ] [tensor] [line 105, size 0, align 0, offset 0] [from ]
!561 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !315, metadata !562, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from real]
!562 = metadata !{metadata !383, metadata !383}
!563 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"compress", i32 89, i64 288, i64 32, i64 1280, i32 0, metadata !560} ; [ DW_TAG_member ] [compress] [line 89, size 288, align 32, offset 1280] [from tensor]
!564 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"bSimAnn", i32 90, i64 32, i64 32, i64 1568, i32 0, metadata !231} ; [ DW_TAG_member ] [bSimAnn] [line 90, size 32, align 32, offset 1568] [from int]
!565 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"zero_temp_time", i32 91, i64 32, i64 32, i64 1600, i32 0, metadata !315} ; [ DW_TAG_member ] [zero_temp_time] [line 91, size 32, align 32, offset 1600] [from real]
!566 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"rlist", i32 92, i64 32, i64 32, i64 1632, i32 0, metadata !315} ; [ DW_TAG_member ] [rlist] [line 92, size 32, align 32, offset 1632] [from real]
!567 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"coulombtype", i32 93, i64 32, i64 32, i64 1664, i32 0, metadata !231} ; [ DW_TAG_member ] [coulombtype] [line 93, size 32, align 32, offset 1664] [from int]
!568 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"rcoulomb_switch", i32 94, i64 32, i64 32, i64 1696, i32 0, metadata !315} ; [ DW_TAG_member ] [rcoulomb_switch] [line 94, size 32, align 32, offset 1696] [from real]
!569 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"rcoulomb", i32 95, i64 32, i64 32, i64 1728, i32 0, metadata !315} ; [ DW_TAG_member ] [rcoulomb] [line 95, size 32, align 32, offset 1728] [from real]
!570 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"vdwtype", i32 96, i64 32, i64 32, i64 1760, i32 0, metadata !231} ; [ DW_TAG_member ] [vdwtype] [line 96, size 32, align 32, offset 1760] [from int]
!571 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"rvdw_switch", i32 97, i64 32, i64 32, i64 1792, i32 0, metadata !315} ; [ DW_TAG_member ] [rvdw_switch] [line 97, size 32, align 32, offset 1792] [from real]
!572 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"rvdw", i32 98, i64 32, i64 32, i64 1824, i32 0, metadata !315} ; [ DW_TAG_member ] [rvdw] [line 98, size 32, align 32, offset 1824] [from real]
!573 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"epsilon_r", i32 99, i64 32, i64 32, i64 1856, i32 0, metadata !315} ; [ DW_TAG_member ] [epsilon_r] [line 99, size 32, align 32, offset 1856] [from real]
!574 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"eDispCorr", i32 100, i64 32, i64 32, i64 1888, i32 0, metadata !231} ; [ DW_TAG_member ] [eDispCorr] [line 100, size 32, align 32, offset 1888] [from int]
!575 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"shake_tol", i32 101, i64 32, i64 32, i64 1920, i32 0, metadata !315} ; [ DW_TAG_member ] [shake_tol] [line 101, size 32, align 32, offset 1920] [from real]
!576 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"fudgeQQ", i32 102, i64 32, i64 32, i64 1952, i32 0, metadata !315} ; [ DW_TAG_member ] [fudgeQQ] [line 102, size 32, align 32, offset 1952] [from real]
!577 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"efep", i32 103, i64 32, i64 32, i64 1984, i32 0, metadata !231} ; [ DW_TAG_member ] [efep] [line 103, size 32, align 32, offset 1984] [from int]
!578 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"init_lambda", i32 104, i64 32, i64 32, i64 2016, i32 0, metadata !315} ; [ DW_TAG_member ] [init_lambda] [line 104, size 32, align 32, offset 2016] [from real]
!579 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"delta_lambda", i32 105, i64 32, i64 32, i64 2048, i32 0, metadata !315} ; [ DW_TAG_member ] [delta_lambda] [line 105, size 32, align 32, offset 2048] [from real]
!580 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"sc_alpha", i32 106, i64 32, i64 32, i64 2080, i32 0, metadata !315} ; [ DW_TAG_member ] [sc_alpha] [line 106, size 32, align 32, offset 2080] [from real]
!581 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"sc_sigma", i32 107, i64 32, i64 32, i64 2112, i32 0, metadata !315} ; [ DW_TAG_member ] [sc_sigma] [line 107, size 32, align 32, offset 2112] [from real]
!582 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"dr_fc", i32 108, i64 32, i64 32, i64 2144, i32 0, metadata !315} ; [ DW_TAG_member ] [dr_fc] [line 108, size 32, align 32, offset 2144] [from real]
!583 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"eDisreWeighting", i32 109, i64 32, i64 32, i64 2176, i32 0, metadata !231} ; [ DW_TAG_member ] [eDisreWeighting] [line 109, size 32, align 32, offset 2176] [from int]
!584 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"bDisreMixed", i32 110, i64 32, i64 32, i64 2208, i32 0, metadata !231} ; [ DW_TAG_member ] [bDisreMixed] [line 110, size 32, align 32, offset 2208] [from int]
!585 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"nstdisreout", i32 111, i64 32, i64 32, i64 2240, i32 0, metadata !231} ; [ DW_TAG_member ] [nstdisreout] [line 111, size 32, align 32, offset 2240] [from int]
!586 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"dr_tau", i32 112, i64 32, i64 32, i64 2272, i32 0, metadata !315} ; [ DW_TAG_member ] [dr_tau] [line 112, size 32, align 32, offset 2272] [from real]
!587 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"orires_fc", i32 113, i64 32, i64 32, i64 2304, i32 0, metadata !315} ; [ DW_TAG_member ] [orires_fc] [line 113, size 32, align 32, offset 2304] [from real]
!588 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"orires_tau", i32 114, i64 32, i64 32, i64 2336, i32 0, metadata !315} ; [ DW_TAG_member ] [orires_tau] [line 114, size 32, align 32, offset 2336] [from real]
!589 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"nstorireout", i32 115, i64 32, i64 32, i64 2368, i32 0, metadata !231} ; [ DW_TAG_member ] [nstorireout] [line 115, size 32, align 32, offset 2368] [from int]
!590 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"em_stepsize", i32 116, i64 32, i64 32, i64 2400, i32 0, metadata !315} ; [ DW_TAG_member ] [em_stepsize] [line 116, size 32, align 32, offset 2400] [from real]
!591 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"em_tol", i32 117, i64 32, i64 32, i64 2432, i32 0, metadata !315} ; [ DW_TAG_member ] [em_tol] [line 117, size 32, align 32, offset 2432] [from real]
!592 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"niter", i32 118, i64 32, i64 32, i64 2464, i32 0, metadata !231} ; [ DW_TAG_member ] [niter] [line 118, size 32, align 32, offset 2464] [from int]
!593 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"fc_stepsize", i32 120, i64 32, i64 32, i64 2496, i32 0, metadata !231} ; [ DW_TAG_member ] [fc_stepsize] [line 120, size 32, align 32, offset 2496] [from int]
!594 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"nstcgsteep", i32 122, i64 32, i64 32, i64 2528, i32 0, metadata !231} ; [ DW_TAG_member ] [nstcgsteep] [line 122, size 32, align 32, offset 2528] [from int]
!595 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"eConstrAlg", i32 124, i64 32, i64 32, i64 2560, i32 0, metadata !231} ; [ DW_TAG_member ] [eConstrAlg] [line 124, size 32, align 32, offset 2560] [from int]
!596 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"nProjOrder", i32 125, i64 32, i64 32, i64 2592, i32 0, metadata !231} ; [ DW_TAG_member ] [nProjOrder] [line 125, size 32, align 32, offset 2592] [from int]
!597 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"LincsWarnAngle", i32 126, i64 32, i64 32, i64 2624, i32 0, metadata !315} ; [ DW_TAG_member ] [LincsWarnAngle] [line 126, size 32, align 32, offset 2624] [from real]
!598 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"bShakeSOR", i32 127, i64 32, i64 32, i64 2656, i32 0, metadata !231} ; [ DW_TAG_member ] [bShakeSOR] [line 127, size 32, align 32, offset 2656] [from int]
!599 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"bd_temp", i32 128, i64 32, i64 32, i64 2688, i32 0, metadata !315} ; [ DW_TAG_member ] [bd_temp] [line 128, size 32, align 32, offset 2688] [from real]
!600 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"bd_fric", i32 129, i64 32, i64 32, i64 2720, i32 0, metadata !315} ; [ DW_TAG_member ] [bd_fric] [line 129, size 32, align 32, offset 2720] [from real]
!601 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"ld_seed", i32 130, i64 32, i64 32, i64 2752, i32 0, metadata !231} ; [ DW_TAG_member ] [ld_seed] [line 130, size 32, align 32, offset 2752] [from int]
!602 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"cos_accel", i32 131, i64 32, i64 32, i64 2784, i32 0, metadata !315} ; [ DW_TAG_member ] [cos_accel] [line 131, size 32, align 32, offset 2784] [from real]
!603 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"userint1", i32 132, i64 32, i64 32, i64 2816, i32 0, metadata !231} ; [ DW_TAG_member ] [userint1] [line 132, size 32, align 32, offset 2816] [from int]
!604 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"userint2", i32 133, i64 32, i64 32, i64 2848, i32 0, metadata !231} ; [ DW_TAG_member ] [userint2] [line 133, size 32, align 32, offset 2848] [from int]
!605 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"userint3", i32 134, i64 32, i64 32, i64 2880, i32 0, metadata !231} ; [ DW_TAG_member ] [userint3] [line 134, size 32, align 32, offset 2880] [from int]
!606 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"userint4", i32 135, i64 32, i64 32, i64 2912, i32 0, metadata !231} ; [ DW_TAG_member ] [userint4] [line 135, size 32, align 32, offset 2912] [from int]
!607 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"userreal1", i32 136, i64 32, i64 32, i64 2944, i32 0, metadata !315} ; [ DW_TAG_member ] [userreal1] [line 136, size 32, align 32, offset 2944] [from real]
!608 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"userreal2", i32 137, i64 32, i64 32, i64 2976, i32 0, metadata !315} ; [ DW_TAG_member ] [userreal2] [line 137, size 32, align 32, offset 2976] [from real]
!609 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"userreal3", i32 138, i64 32, i64 32, i64 3008, i32 0, metadata !315} ; [ DW_TAG_member ] [userreal3] [line 138, size 32, align 32, offset 3008] [from real]
!610 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"userreal4", i32 139, i64 32, i64 32, i64 3040, i32 0, metadata !315} ; [ DW_TAG_member ] [userreal4] [line 139, size 32, align 32, offset 3040] [from real]
!611 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"opts", i32 140, i64 512, i64 64, i64 3072, i32 0, metadata !612} ; [ DW_TAG_member ] [opts] [line 140, size 512, align 64, offset 3072] [from t_grpopts]
!612 = metadata !{i32 786454, metadata !526, null, metadata !"t_grpopts", i32 53, i64 0, i64 0, i64 0, i32 0, metadata !613} ; [ DW_TAG_typedef ] [t_grpopts] [line 53, size 0, align 0, offset 0] [from ]
!613 = metadata !{i32 786451, metadata !526, null, metadata !"", i32 42, i64 512, i64 64, i32 0, i32 0, null, metadata !614, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 42, size 512, align 64, offset 0] [from ]
!614 = metadata !{metadata !615, metadata !616, metadata !617, metadata !618, metadata !619, metadata !621, metadata !622, metadata !623, metadata !626, metadata !630}
!615 = metadata !{i32 786445, metadata !526, metadata !613, metadata !"ngtc", i32 43, i64 32, i64 32, i64 0, i32 0, metadata !231} ; [ DW_TAG_member ] [ngtc] [line 43, size 32, align 32, offset 0] [from int]
!616 = metadata !{i32 786445, metadata !526, metadata !613, metadata !"ngacc", i32 44, i64 32, i64 32, i64 32, i32 0, metadata !231} ; [ DW_TAG_member ] [ngacc] [line 44, size 32, align 32, offset 32] [from int]
!617 = metadata !{i32 786445, metadata !526, metadata !613, metadata !"ngfrz", i32 45, i64 32, i64 32, i64 64, i32 0, metadata !231} ; [ DW_TAG_member ] [ngfrz] [line 45, size 32, align 32, offset 64] [from int]
!618 = metadata !{i32 786445, metadata !526, metadata !613, metadata !"ngener", i32 46, i64 32, i64 32, i64 96, i32 0, metadata !231} ; [ DW_TAG_member ] [ngener] [line 46, size 32, align 32, offset 96] [from int]
!619 = metadata !{i32 786445, metadata !526, metadata !613, metadata !"nrdf", i32 47, i64 64, i64 64, i64 128, i32 0, metadata !620} ; [ DW_TAG_member ] [nrdf] [line 47, size 64, align 64, offset 128] [from ]
!620 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !315} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!621 = metadata !{i32 786445, metadata !526, metadata !613, metadata !"ref_t", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !620} ; [ DW_TAG_member ] [ref_t] [line 48, size 64, align 64, offset 192] [from ]
!622 = metadata !{i32 786445, metadata !526, metadata !613, metadata !"tau_t", i32 49, i64 64, i64 64, i64 256, i32 0, metadata !620} ; [ DW_TAG_member ] [tau_t] [line 49, size 64, align 64, offset 256] [from ]
!623 = metadata !{i32 786445, metadata !526, metadata !613, metadata !"acc", i32 50, i64 64, i64 64, i64 320, i32 0, metadata !624} ; [ DW_TAG_member ] [acc] [line 50, size 64, align 64, offset 320] [from ]
!624 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !625} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!625 = metadata !{i32 786454, metadata !526, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !381} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!626 = metadata !{i32 786445, metadata !526, metadata !613, metadata !"nFreeze", i32 51, i64 64, i64 64, i64 384, i32 0, metadata !627} ; [ DW_TAG_member ] [nFreeze] [line 51, size 64, align 64, offset 384] [from ]
!627 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !628} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ivec]
!628 = metadata !{i32 786454, metadata !526, null, metadata !"ivec", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !629} ; [ DW_TAG_typedef ] [ivec] [line 107, size 0, align 0, offset 0] [from ]
!629 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !231, metadata !382, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!630 = metadata !{i32 786445, metadata !526, metadata !613, metadata !"eg_excl", i32 52, i64 64, i64 64, i64 448, i32 0, metadata !490} ; [ DW_TAG_member ] [eg_excl] [line 52, size 64, align 64, offset 448] [from ]
!631 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"ex", i32 141, i64 576, i64 64, i64 3584, i32 0, metadata !632} ; [ DW_TAG_member ] [ex] [line 141, size 576, align 64, offset 3584] [from ]
!632 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 576, i64 64, i32 0, i32 0, metadata !633, metadata !382, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 576, align 64, offset 0] [from t_cosines]
!633 = metadata !{i32 786454, metadata !526, null, metadata !"t_cosines", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !634} ; [ DW_TAG_typedef ] [t_cosines] [line 40, size 0, align 0, offset 0] [from ]
!634 = metadata !{i32 786451, metadata !526, null, metadata !"", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !635, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 64, offset 0] [from ]
!635 = metadata !{metadata !636, metadata !637, metadata !638}
!636 = metadata !{i32 786445, metadata !526, metadata !634, metadata !"n", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !231} ; [ DW_TAG_member ] [n] [line 37, size 32, align 32, offset 0] [from int]
!637 = metadata !{i32 786445, metadata !526, metadata !634, metadata !"a", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !620} ; [ DW_TAG_member ] [a] [line 38, size 64, align 64, offset 64] [from ]
!638 = metadata !{i32 786445, metadata !526, metadata !634, metadata !"phi", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !620} ; [ DW_TAG_member ] [phi] [line 39, size 64, align 64, offset 128] [from ]
!639 = metadata !{i32 786445, metadata !526, metadata !525, metadata !"et", i32 142, i64 576, i64 64, i64 4160, i32 0, metadata !632} ; [ DW_TAG_member ] [et] [line 142, size 576, align 64, offset 4160] [from ]
!640 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !641} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_mdatoms]
!641 = metadata !{i32 786454, metadata !1, null, metadata !"t_mdatoms", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !642} ; [ DW_TAG_typedef ] [t_mdatoms] [line 51, size 0, align 0, offset 0] [from ]
!642 = metadata !{i32 786451, metadata !643, null, metadata !"", i32 40, i64 1408, i64 64, i32 0, i32 0, null, metadata !644, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 40, size 1408, align 64, offset 0] [from ]
!643 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/mdatom.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!644 = metadata !{metadata !645, metadata !646, metadata !647, metadata !648, metadata !649, metadata !650, metadata !651, metadata !652, metadata !653, metadata !654, metadata !655, metadata !656, metadata !657, metadata !658, metadata !660, metadata !661, metadata !662, metadata !663, metadata !664, metadata !665, metadata !666, metadata !667, metadata !668}
!645 = metadata !{i32 786445, metadata !643, metadata !642, metadata !"tmass", i32 41, i64 32, i64 32, i64 0, i32 0, metadata !315} ; [ DW_TAG_member ] [tmass] [line 41, size 32, align 32, offset 0] [from real]
!646 = metadata !{i32 786445, metadata !643, metadata !642, metadata !"nr", i32 42, i64 32, i64 32, i64 32, i32 0, metadata !231} ; [ DW_TAG_member ] [nr] [line 42, size 32, align 32, offset 32] [from int]
!647 = metadata !{i32 786445, metadata !643, metadata !642, metadata !"massA", i32 43, i64 64, i64 64, i64 64, i32 0, metadata !620} ; [ DW_TAG_member ] [massA] [line 43, size 64, align 64, offset 64] [from ]
!648 = metadata !{i32 786445, metadata !643, metadata !642, metadata !"massB", i32 43, i64 64, i64 64, i64 128, i32 0, metadata !620} ; [ DW_TAG_member ] [massB] [line 43, size 64, align 64, offset 128] [from ]
!649 = metadata !{i32 786445, metadata !643, metadata !642, metadata !"massT", i32 43, i64 64, i64 64, i64 192, i32 0, metadata !620} ; [ DW_TAG_member ] [massT] [line 43, size 64, align 64, offset 192] [from ]
!650 = metadata !{i32 786445, metadata !643, metadata !642, metadata !"invmass", i32 43, i64 64, i64 64, i64 256, i32 0, metadata !620} ; [ DW_TAG_member ] [invmass] [line 43, size 64, align 64, offset 256] [from ]
!651 = metadata !{i32 786445, metadata !643, metadata !642, metadata !"chargeA", i32 44, i64 64, i64 64, i64 320, i32 0, metadata !620} ; [ DW_TAG_member ] [chargeA] [line 44, size 64, align 64, offset 320] [from ]
!652 = metadata !{i32 786445, metadata !643, metadata !642, metadata !"chargeB", i32 44, i64 64, i64 64, i64 384, i32 0, metadata !620} ; [ DW_TAG_member ] [chargeB] [line 44, size 64, align 64, offset 384] [from ]
!653 = metadata !{i32 786445, metadata !643, metadata !642, metadata !"chargeT", i32 44, i64 64, i64 64, i64 448, i32 0, metadata !620} ; [ DW_TAG_member ] [chargeT] [line 44, size 64, align 64, offset 448] [from ]
!654 = metadata !{i32 786445, metadata !643, metadata !642, metadata !"bPerturbed", i32 45, i64 64, i64 64, i64 512, i32 0, metadata !490} ; [ DW_TAG_member ] [bPerturbed] [line 45, size 64, align 64, offset 512] [from ]
!655 = metadata !{i32 786445, metadata !643, metadata !642, metadata !"resnr", i32 46, i64 64, i64 64, i64 576, i32 0, metadata !490} ; [ DW_TAG_member ] [resnr] [line 46, size 64, align 64, offset 576] [from ]
!656 = metadata !{i32 786445, metadata !643, metadata !642, metadata !"typeA", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !490} ; [ DW_TAG_member ] [typeA] [line 47, size 64, align 64, offset 640] [from ]
!657 = metadata !{i32 786445, metadata !643, metadata !642, metadata !"typeB", i32 47, i64 64, i64 64, i64 704, i32 0, metadata !490} ; [ DW_TAG_member ] [typeB] [line 47, size 64, align 64, offset 704] [from ]
!658 = metadata !{i32 786445, metadata !643, metadata !642, metadata !"ptype", i32 48, i64 64, i64 64, i64 768, i32 0, metadata !659} ; [ DW_TAG_member ] [ptype] [line 48, size 64, align 64, offset 768] [from ]
!659 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !266} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!660 = metadata !{i32 786445, metadata !643, metadata !642, metadata !"cTC", i32 49, i64 64, i64 64, i64 832, i32 0, metadata !659} ; [ DW_TAG_member ] [cTC] [line 49, size 64, align 64, offset 832] [from ]
!661 = metadata !{i32 786445, metadata !643, metadata !642, metadata !"cENER", i32 49, i64 64, i64 64, i64 896, i32 0, metadata !659} ; [ DW_TAG_member ] [cENER] [line 49, size 64, align 64, offset 896] [from ]
!662 = metadata !{i32 786445, metadata !643, metadata !642, metadata !"cACC", i32 49, i64 64, i64 64, i64 960, i32 0, metadata !659} ; [ DW_TAG_member ] [cACC] [line 49, size 64, align 64, offset 960] [from ]
!663 = metadata !{i32 786445, metadata !643, metadata !642, metadata !"cFREEZE", i32 49, i64 64, i64 64, i64 1024, i32 0, metadata !659} ; [ DW_TAG_member ] [cFREEZE] [line 49, size 64, align 64, offset 1024] [from ]
!664 = metadata !{i32 786445, metadata !643, metadata !642, metadata !"cXTC", i32 49, i64 64, i64 64, i64 1088, i32 0, metadata !659} ; [ DW_TAG_member ] [cXTC] [line 49, size 64, align 64, offset 1088] [from ]
!665 = metadata !{i32 786445, metadata !643, metadata !642, metadata !"cVCM", i32 49, i64 64, i64 64, i64 1152, i32 0, metadata !659} ; [ DW_TAG_member ] [cVCM] [line 49, size 64, align 64, offset 1152] [from ]
!666 = metadata !{i32 786445, metadata !643, metadata !642, metadata !"cU1", i32 50, i64 64, i64 64, i64 1216, i32 0, metadata !659} ; [ DW_TAG_member ] [cU1] [line 50, size 64, align 64, offset 1216] [from ]
!667 = metadata !{i32 786445, metadata !643, metadata !642, metadata !"cU2", i32 50, i64 64, i64 64, i64 1280, i32 0, metadata !659} ; [ DW_TAG_member ] [cU2] [line 50, size 64, align 64, offset 1280] [from ]
!668 = metadata !{i32 786445, metadata !643, metadata !642, metadata !"cORF", i32 50, i64 64, i64 64, i64 1344, i32 0, metadata !659} ; [ DW_TAG_member ] [cORF] [line 50, size 64, align 64, offset 1344] [from ]
!669 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !381} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!670 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !671} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_nrnb]
!671 = metadata !{i32 786454, metadata !1, null, metadata !"t_nrnb", i32 95, i64 0, i64 0, i64 0, i32 0, metadata !672} ; [ DW_TAG_typedef ] [t_nrnb] [line 95, size 0, align 0, offset 0] [from ]
!672 = metadata !{i32 786451, metadata !78, null, metadata !"", i32 93, i64 8256, i64 64, i32 0, i32 0, null, metadata !673, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 93, size 8256, align 64, offset 0] [from ]
!673 = metadata !{metadata !674}
!674 = metadata !{i32 786445, metadata !78, metadata !672, metadata !"n", i32 94, i64 8256, i64 64, i64 0, i32 0, metadata !675} ; [ DW_TAG_member ] [n] [line 94, size 8256, align 64, offset 0] [from ]
!675 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8256, i64 64, i32 0, i32 0, metadata !676, metadata !677, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8256, align 64, offset 0] [from double]
!676 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!677 = metadata !{metadata !678}
!678 = metadata !{i32 786465, i64 0, i64 129}     ; [ DW_TAG_subrange_type ] [0, 128]
!679 = metadata !{metadata !680, metadata !681, metadata !682, metadata !683, metadata !684, metadata !685, metadata !686, metadata !687, metadata !688, metadata !689, metadata !690, metadata !691, metadata !692, metadata !693, metadata !694}
!680 = metadata !{i32 786689, metadata !227, metadata !"log", metadata !228, i32 16777831, metadata !232, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 615]
!681 = metadata !{i32 786689, metadata !227, metadata !"top", metadata !228, i32 33555047, metadata !289, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [top] [line 615]
!682 = metadata !{i32 786689, metadata !227, metadata !"ir", metadata !228, i32 50332263, metadata !523, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ir] [line 615]
!683 = metadata !{i32 786689, metadata !227, metadata !"step", metadata !228, i32 67109479, metadata !231, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 615]
!684 = metadata !{i32 786689, metadata !227, metadata !"md", metadata !228, i32 83886696, metadata !640, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [md] [line 616]
!685 = metadata !{i32 786689, metadata !227, metadata !"start", metadata !228, i32 100663912, metadata !231, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 616]
!686 = metadata !{i32 786689, metadata !227, metadata !"homenr", metadata !228, i32 117441128, metadata !231, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [homenr] [line 616]
!687 = metadata !{i32 786689, metadata !227, metadata !"x", metadata !228, i32 134218345, metadata !624, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 617]
!688 = metadata !{i32 786689, metadata !227, metadata !"xprime", metadata !228, i32 150995561, metadata !624, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xprime] [line 617]
!689 = metadata !{i32 786689, metadata !227, metadata !"min_proj", metadata !228, i32 167772777, metadata !624, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [min_proj] [line 617]
!690 = metadata !{i32 786689, metadata !227, metadata !"box", metadata !228, i32 184549993, metadata !669, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 617]
!691 = metadata !{i32 786689, metadata !227, metadata !"lambda", metadata !228, i32 201327210, metadata !315, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 618]
!692 = metadata !{i32 786689, metadata !227, metadata !"dvdlambda", metadata !228, i32 218104426, metadata !620, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dvdlambda] [line 618]
!693 = metadata !{i32 786689, metadata !227, metadata !"nrnb", metadata !228, i32 234881642, metadata !670, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrnb] [line 618]
!694 = metadata !{i32 786689, metadata !227, metadata !"bCoordinates", metadata !228, i32 251658858, metadata !231, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bCoordinates] [line 618]
!695 = metadata !{i32 786478, metadata !1, metadata !228, metadata !"count_constraints", metadata !"count_constraints", metadata !"", i32 624, metadata !696, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.t_topology*, %struct.t_commrec*)* @count_constraints, null, null, metadata !709, i32 625} ; [ DW_TAG_subprogram ] [line 624] [def] [scope 625] [count_constraints]
!696 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !697, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!697 = metadata !{metadata !231, metadata !289, metadata !698}
!698 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !699} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_commrec]
!699 = metadata !{i32 786454, metadata !1, null, metadata !"t_commrec", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !700} ; [ DW_TAG_typedef ] [t_commrec] [line 40, size 0, align 0, offset 0] [from ]
!700 = metadata !{i32 786451, metadata !701, null, metadata !"", i32 36, i64 192, i64 32, i32 0, i32 0, null, metadata !702, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 32, offset 0] [from ]
!701 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/commrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!702 = metadata !{metadata !703, metadata !704, metadata !705, metadata !706, metadata !707, metadata !708}
!703 = metadata !{i32 786445, metadata !701, metadata !700, metadata !"nodeid", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !231} ; [ DW_TAG_member ] [nodeid] [line 37, size 32, align 32, offset 0] [from int]
!704 = metadata !{i32 786445, metadata !701, metadata !700, metadata !"nnodes", i32 37, i64 32, i64 32, i64 32, i32 0, metadata !231} ; [ DW_TAG_member ] [nnodes] [line 37, size 32, align 32, offset 32] [from int]
!705 = metadata !{i32 786445, metadata !701, metadata !700, metadata !"left", i32 38, i64 32, i64 32, i64 64, i32 0, metadata !231} ; [ DW_TAG_member ] [left] [line 38, size 32, align 32, offset 64] [from int]
!706 = metadata !{i32 786445, metadata !701, metadata !700, metadata !"right", i32 38, i64 32, i64 32, i64 96, i32 0, metadata !231} ; [ DW_TAG_member ] [right] [line 38, size 32, align 32, offset 96] [from int]
!707 = metadata !{i32 786445, metadata !701, metadata !700, metadata !"threadid", i32 39, i64 32, i64 32, i64 128, i32 0, metadata !231} ; [ DW_TAG_member ] [threadid] [line 39, size 32, align 32, offset 128] [from int]
!708 = metadata !{i32 786445, metadata !701, metadata !700, metadata !"nthreads", i32 39, i64 32, i64 32, i64 160, i32 0, metadata !231} ; [ DW_TAG_member ] [nthreads] [line 39, size 32, align 32, offset 160] [from int]
!709 = metadata !{metadata !710, metadata !711, metadata !712}
!710 = metadata !{i32 786689, metadata !695, metadata !"top", metadata !228, i32 16777840, metadata !289, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [top] [line 624]
!711 = metadata !{i32 786689, metadata !695, metadata !"cr", metadata !228, i32 33555056, metadata !698, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 624]
!712 = metadata !{i32 786688, metadata !695, metadata !"nc", metadata !228, i32 626, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nc] [line 626]
!713 = metadata !{i32 786478, metadata !1, metadata !228, metadata !"init_constraints", metadata !"init_constraints", metadata !"", i32 635, metadata !714, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, %struct.t_topology*, %struct.t_inputrec*, %struct.t_mdatoms*, i32, i32, i32, %struct.t_commrec*)* @init_constraints, null, null, metadata !716, i32 638} ; [ DW_TAG_subprogram ] [line 635] [def] [scope 638] [init_constraints]
!714 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !715, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!715 = metadata !{metadata !231, metadata !232, metadata !289, metadata !523, metadata !640, metadata !231, metadata !231, metadata !231, metadata !698}
!716 = metadata !{metadata !717, metadata !718, metadata !719, metadata !720, metadata !721, metadata !722, metadata !723, metadata !724}
!717 = metadata !{i32 786689, metadata !713, metadata !"log", metadata !228, i32 16777851, metadata !232, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 635]
!718 = metadata !{i32 786689, metadata !713, metadata !"top", metadata !228, i32 33555067, metadata !289, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [top] [line 635]
!719 = metadata !{i32 786689, metadata !713, metadata !"ir", metadata !228, i32 50332283, metadata !523, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ir] [line 635]
!720 = metadata !{i32 786689, metadata !713, metadata !"md", metadata !228, i32 67109500, metadata !640, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [md] [line 636]
!721 = metadata !{i32 786689, metadata !713, metadata !"start", metadata !228, i32 83886716, metadata !231, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 636]
!722 = metadata !{i32 786689, metadata !713, metadata !"homenr", metadata !228, i32 100663932, metadata !231, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [homenr] [line 636]
!723 = metadata !{i32 786689, metadata !713, metadata !"bOnlyCoords", metadata !228, i32 117441148, metadata !231, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bOnlyCoords] [line 636]
!724 = metadata !{i32 786689, metadata !713, metadata !"cr", metadata !228, i32 134218365, metadata !698, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 637]
!725 = metadata !{i32 786478, metadata !1, metadata !228, metadata !"lincs_warning", metadata !"lincs_warning", metadata !"", i32 645, metadata !726, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ([3 x float]*, [3 x float]*, i32, i32*, i32*, float*, float)* @lincs_warning, null, null, metadata !728, i32 647} ; [ DW_TAG_subprogram ] [line 645] [def] [scope 647] [lincs_warning]
!726 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !727, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!727 = metadata !{null, metadata !624, metadata !624, metadata !231, metadata !490, metadata !490, metadata !620, metadata !315}
!728 = metadata !{metadata !729, metadata !730, metadata !731, metadata !732, metadata !733, metadata !734, metadata !735, metadata !736, metadata !737, metadata !738, metadata !739, metadata !740, metadata !741, metadata !742, metadata !743, metadata !744, metadata !745}
!729 = metadata !{i32 786689, metadata !725, metadata !"x", metadata !228, i32 16777861, metadata !624, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 645]
!730 = metadata !{i32 786689, metadata !725, metadata !"xprime", metadata !228, i32 33555077, metadata !624, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xprime] [line 645]
!731 = metadata !{i32 786689, metadata !725, metadata !"ncons", metadata !228, i32 50332294, metadata !231, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ncons] [line 646]
!732 = metadata !{i32 786689, metadata !725, metadata !"bla1", metadata !228, i32 67109510, metadata !490, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bla1] [line 646]
!733 = metadata !{i32 786689, metadata !725, metadata !"bla2", metadata !228, i32 83886726, metadata !490, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bla2] [line 646]
!734 = metadata !{i32 786689, metadata !725, metadata !"bllen", metadata !228, i32 100663942, metadata !620, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bllen] [line 646]
!735 = metadata !{i32 786689, metadata !725, metadata !"wangle", metadata !228, i32 117441158, metadata !315, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [wangle] [line 646]
!736 = metadata !{i32 786688, metadata !725, metadata !"b", metadata !228, i32 648, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 648]
!737 = metadata !{i32 786688, metadata !725, metadata !"i", metadata !228, i32 648, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 648]
!738 = metadata !{i32 786688, metadata !725, metadata !"j", metadata !228, i32 648, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 648]
!739 = metadata !{i32 786688, metadata !725, metadata !"v0", metadata !228, i32 649, metadata !625, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v0] [line 649]
!740 = metadata !{i32 786688, metadata !725, metadata !"v1", metadata !228, i32 649, metadata !625, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v1] [line 649]
!741 = metadata !{i32 786688, metadata !725, metadata !"wfac", metadata !228, i32 650, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wfac] [line 650]
!742 = metadata !{i32 786688, metadata !725, metadata !"d0", metadata !228, i32 650, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d0] [line 650]
!743 = metadata !{i32 786688, metadata !725, metadata !"d1", metadata !228, i32 650, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d1] [line 650]
!744 = metadata !{i32 786688, metadata !725, metadata !"cosine", metadata !228, i32 650, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cosine] [line 650]
!745 = metadata !{i32 786688, metadata !725, metadata !"buf", metadata !228, i32 651, metadata !746, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 651]
!746 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 8, i32 0, i32 0, metadata !240, metadata !747, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32768, align 8, offset 0] [from char]
!747 = metadata !{metadata !748}
!748 = metadata !{i32 786465, i64 0, i64 4096}    ; [ DW_TAG_subrange_type ] [0, 4095]
!749 = metadata !{i32 786478, metadata !1, metadata !228, metadata !"cconerr", metadata !"cconerr", metadata !"", i32 680, metadata !750, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float*, float*, i32*, [3 x float]*, i32, i32*, i32*, float*)* @cconerr, null, null, metadata !752, i32 683} ; [ DW_TAG_subprogram ] [line 680] [def] [scope 683] [cconerr]
!750 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !751, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!751 = metadata !{null, metadata !620, metadata !620, metadata !490, metadata !624, metadata !231, metadata !490, metadata !490, metadata !620}
!752 = metadata !{metadata !753, metadata !754, metadata !755, metadata !756, metadata !757, metadata !758, metadata !759, metadata !760, metadata !761, metadata !762, metadata !763, metadata !764, metadata !765, metadata !766, metadata !767, metadata !768, metadata !769, metadata !770, metadata !771}
!753 = metadata !{i32 786689, metadata !749, metadata !"max", metadata !228, i32 16777896, metadata !620, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [max] [line 680]
!754 = metadata !{i32 786689, metadata !749, metadata !"rms", metadata !228, i32 33555112, metadata !620, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rms] [line 680]
!755 = metadata !{i32 786689, metadata !749, metadata !"imax", metadata !228, i32 50332328, metadata !490, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [imax] [line 680]
!756 = metadata !{i32 786689, metadata !749, metadata !"xprime", metadata !228, i32 67109544, metadata !624, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xprime] [line 680]
!757 = metadata !{i32 786689, metadata !749, metadata !"ncons", metadata !228, i32 83886761, metadata !231, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ncons] [line 681]
!758 = metadata !{i32 786689, metadata !749, metadata !"bla1", metadata !228, i32 100663977, metadata !490, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bla1] [line 681]
!759 = metadata !{i32 786689, metadata !749, metadata !"bla2", metadata !228, i32 117441193, metadata !490, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bla2] [line 681]
!760 = metadata !{i32 786689, metadata !749, metadata !"bllen", metadata !228, i32 134218409, metadata !620, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bllen] [line 681]
!761 = metadata !{i32 786688, metadata !749, metadata !"len", metadata !228, i32 684, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 684]
!762 = metadata !{i32 786688, metadata !749, metadata !"d", metadata !228, i32 684, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 684]
!763 = metadata !{i32 786688, metadata !749, metadata !"ma", metadata !228, i32 684, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ma] [line 684]
!764 = metadata !{i32 786688, metadata !749, metadata !"ms", metadata !228, i32 684, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ms] [line 684]
!765 = metadata !{i32 786688, metadata !749, metadata !"tmp0", metadata !228, i32 684, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp0] [line 684]
!766 = metadata !{i32 786688, metadata !749, metadata !"tmp1", metadata !228, i32 684, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp1] [line 684]
!767 = metadata !{i32 786688, metadata !749, metadata !"tmp2", metadata !228, i32 684, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp2] [line 684]
!768 = metadata !{i32 786688, metadata !749, metadata !"b", metadata !228, i32 685, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 685]
!769 = metadata !{i32 786688, metadata !749, metadata !"i", metadata !228, i32 685, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 685]
!770 = metadata !{i32 786688, metadata !749, metadata !"j", metadata !228, i32 685, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 685]
!771 = metadata !{i32 786688, metadata !749, metadata !"im", metadata !228, i32 685, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [im] [line 685]
!772 = metadata !{i32 786478, metadata !773, metadata !774, metadata !"iprod", metadata !"iprod", metadata !"", i32 343, metadata !775, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !777, i32 344} ; [ DW_TAG_subprogram ] [line 343] [local] [def] [scope 344] [iprod]
!773 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!774 = metadata !{i32 786473, metadata !773}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!775 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !776, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!776 = metadata !{metadata !315, metadata !620, metadata !620}
!777 = metadata !{metadata !778, metadata !779}
!778 = metadata !{i32 786689, metadata !772, metadata !"a", metadata !774, i32 16777559, metadata !620, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 343]
!779 = metadata !{i32 786689, metadata !772, metadata !"b", metadata !774, i32 33554775, metadata !620, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 343]
!780 = metadata !{i32 786478, metadata !773, metadata !774, metadata !"norm", metadata !"norm", metadata !"", i32 358, metadata !781, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !783, i32 359} ; [ DW_TAG_subprogram ] [line 358] [local] [def] [scope 359] [norm]
!781 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !782, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!782 = metadata !{metadata !315, metadata !620}
!783 = metadata !{metadata !784}
!784 = metadata !{i32 786689, metadata !780, metadata !"a", metadata !774, i32 16777574, metadata !620, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 358]
!785 = metadata !{i32 786478, metadata !773, metadata !774, metadata !"rvec_sub", metadata !"rvec_sub", metadata !"", i32 244, metadata !786, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !790, i32 245} ; [ DW_TAG_subprogram ] [line 244] [local] [def] [scope 245] [rvec_sub]
!786 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !787, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!787 = metadata !{null, metadata !788, metadata !788, metadata !620}
!788 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !789} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!789 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !315} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from real]
!790 = metadata !{metadata !791, metadata !792, metadata !793, metadata !794, metadata !795, metadata !796}
!791 = metadata !{i32 786689, metadata !785, metadata !"a", metadata !774, i32 16777460, metadata !788, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 244]
!792 = metadata !{i32 786689, metadata !785, metadata !"b", metadata !774, i32 33554676, metadata !788, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 244]
!793 = metadata !{i32 786689, metadata !785, metadata !"c", metadata !774, i32 50331892, metadata !620, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 244]
!794 = metadata !{i32 786688, metadata !785, metadata !"x", metadata !774, i32 246, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 246]
!795 = metadata !{i32 786688, metadata !785, metadata !"y", metadata !774, i32 246, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 246]
!796 = metadata !{i32 786688, metadata !785, metadata !"z", metadata !774, i32 246, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 246]
!797 = metadata !{i32 786478, metadata !1, metadata !228, metadata !"low_constrain", metadata !"low_constrain", metadata !"", i32 424, metadata !798, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, %struct.t_topology*, %struct.t_inputrec*, i32, %struct.t_mdatoms*, i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, float, float*, %struct.t_nrnb*, i32, i32)* @low_constrain, null, null, metadata !800, i32 429} ; [ DW_TAG_subprogram ] [line 424] [local] [def] [scope 429] [low_constrain]
!798 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !799, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!799 = metadata !{metadata !231, metadata !232, metadata !289, metadata !523, metadata !231, metadata !640, metadata !231, metadata !231, metadata !624, metadata !624, metadata !624, metadata !669, metadata !315, metadata !620, metadata !670, metadata !231, metadata !231}
!800 = metadata !{metadata !801, metadata !802, metadata !803, metadata !804, metadata !805, metadata !806, metadata !807, metadata !808, metadata !809, metadata !810, metadata !811, metadata !812, metadata !813, metadata !814, metadata !815, metadata !816, metadata !817, metadata !819, metadata !820, metadata !828, metadata !830, metadata !832, metadata !833, metadata !834, metadata !835, metadata !836, metadata !837, metadata !838, metadata !839, metadata !840, metadata !841, metadata !844, metadata !845, metadata !846, metadata !847}
!801 = metadata !{i32 786689, metadata !797, metadata !"log", metadata !228, i32 16777640, metadata !232, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 424]
!802 = metadata !{i32 786689, metadata !797, metadata !"top", metadata !228, i32 33554856, metadata !289, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [top] [line 424]
!803 = metadata !{i32 786689, metadata !797, metadata !"ir", metadata !228, i32 50332072, metadata !523, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ir] [line 424]
!804 = metadata !{i32 786689, metadata !797, metadata !"step", metadata !228, i32 67109289, metadata !231, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 425]
!805 = metadata !{i32 786689, metadata !797, metadata !"md", metadata !228, i32 83886505, metadata !640, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [md] [line 425]
!806 = metadata !{i32 786689, metadata !797, metadata !"start", metadata !228, i32 100663721, metadata !231, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 425]
!807 = metadata !{i32 786689, metadata !797, metadata !"homenr", metadata !228, i32 117440937, metadata !231, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [homenr] [line 425]
!808 = metadata !{i32 786689, metadata !797, metadata !"x", metadata !228, i32 134218154, metadata !624, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 426]
!809 = metadata !{i32 786689, metadata !797, metadata !"xprime", metadata !228, i32 150995370, metadata !624, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xprime] [line 426]
!810 = metadata !{i32 786689, metadata !797, metadata !"min_proj", metadata !228, i32 167772586, metadata !624, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [min_proj] [line 426]
!811 = metadata !{i32 786689, metadata !797, metadata !"box", metadata !228, i32 184549802, metadata !669, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 426]
!812 = metadata !{i32 786689, metadata !797, metadata !"lambda", metadata !228, i32 201327019, metadata !315, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 427]
!813 = metadata !{i32 786689, metadata !797, metadata !"dvdlambda", metadata !228, i32 218104235, metadata !620, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dvdlambda] [line 427]
!814 = metadata !{i32 786689, metadata !797, metadata !"nrnb", metadata !228, i32 234881451, metadata !670, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrnb] [line 427]
!815 = metadata !{i32 786689, metadata !797, metadata !"bCoordinates", metadata !228, i32 251658668, metadata !231, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bCoordinates] [line 428]
!816 = metadata !{i32 786689, metadata !797, metadata !"bInit", metadata !228, i32 268435884, metadata !231, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bInit] [line 428]
!817 = metadata !{i32 786688, metadata !818, metadata !"buf", metadata !228, i32 436, metadata !746, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 436]
!818 = metadata !{i32 786443, metadata !1, metadata !797} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!819 = metadata !{i32 786688, metadata !818, metadata !"bOK", metadata !228, i32 437, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bOK] [line 437]
!820 = metadata !{i32 786688, metadata !818, metadata !"sb", metadata !228, i32 438, metadata !821, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sb] [line 438]
!821 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !822} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_sortblock]
!822 = metadata !{i32 786454, metadata !1, null, metadata !"t_sortblock", i32 50, i64 0, i64 0, i64 0, i32 0, metadata !823} ; [ DW_TAG_typedef ] [t_sortblock] [line 50, size 0, align 0, offset 0] [from ]
!823 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 47, i64 128, i64 32, i32 0, i32 0, null, metadata !824, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 47, size 128, align 32, offset 0] [from ]
!824 = metadata !{metadata !825, metadata !827}
!825 = metadata !{i32 786445, metadata !1, metadata !823, metadata !"iatom", i32 48, i64 96, i64 32, i64 0, i32 0, metadata !826} ; [ DW_TAG_member ] [iatom] [line 48, size 96, align 32, offset 0] [from ]
!826 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !436, metadata !382, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from atom_id]
!827 = metadata !{i32 786445, metadata !1, metadata !823, metadata !"blocknr", i32 49, i64 32, i64 32, i64 96, i32 0, metadata !436} ; [ DW_TAG_member ] [blocknr] [line 49, size 32, align 32, offset 96] [from atom_id]
!828 = metadata !{i32 786688, metadata !818, metadata !"blocks", metadata !228, i32 439, metadata !829, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [blocks] [line 439]
!829 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !473} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_block]
!830 = metadata !{i32 786688, metadata !818, metadata !"idef", metadata !228, i32 440, metadata !831, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idef] [line 440]
!831 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !297} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_idef]
!832 = metadata !{i32 786688, metadata !818, metadata !"iatom", metadata !228, i32 441, metadata !434, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iatom] [line 441]
!833 = metadata !{i32 786688, metadata !818, metadata !"inv_sblock", metadata !228, i32 442, metadata !480, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inv_sblock] [line 442]
!834 = metadata !{i32 786688, metadata !818, metadata !"i", metadata !228, i32 443, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 443]
!835 = metadata !{i32 786688, metadata !818, metadata !"j", metadata !228, i32 443, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 443]
!836 = metadata !{i32 786688, metadata !818, metadata !"m", metadata !228, i32 443, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 443]
!837 = metadata !{i32 786688, metadata !818, metadata !"bnr", metadata !228, i32 443, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bnr] [line 443]
!838 = metadata !{i32 786688, metadata !818, metadata !"ncons", metadata !228, i32 444, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncons] [line 444]
!839 = metadata !{i32 786688, metadata !818, metadata !"bstart", metadata !228, i32 444, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bstart] [line 444]
!840 = metadata !{i32 786688, metadata !818, metadata !"error", metadata !228, i32 444, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [error] [line 444]
!841 = metadata !{i32 786688, metadata !842, metadata !"ow1", metadata !228, i32 583, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ow1] [line 583]
!842 = metadata !{i32 786443, metadata !1, metadata !843, i32 582, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!843 = metadata !{i32 786443, metadata !1, metadata !818, i32 565, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!844 = metadata !{i32 786688, metadata !842, metadata !"mO", metadata !228, i32 584, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mO] [line 584]
!845 = metadata !{i32 786688, metadata !842, metadata !"mH", metadata !228, i32 584, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mH] [line 584]
!846 = metadata !{i32 786688, metadata !842, metadata !"dOH", metadata !228, i32 584, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dOH] [line 584]
!847 = metadata !{i32 786688, metadata !842, metadata !"dHH", metadata !228, i32 584, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dHH] [line 584]
!848 = metadata !{i32 786478, metadata !1, metadata !228, metadata !"dump_confs", metadata !"dump_confs", metadata !"", i32 87, metadata !849, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !852, i32 89} ; [ DW_TAG_subprogram ] [line 87] [local] [def] [scope 89] [dump_confs]
!849 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !850, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!850 = metadata !{null, metadata !231, metadata !851, metadata !624, metadata !624, metadata !669}
!851 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !440} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atoms]
!852 = metadata !{metadata !853, metadata !854, metadata !855, metadata !856, metadata !857, metadata !858}
!853 = metadata !{i32 786689, metadata !848, metadata !"step", metadata !228, i32 16777303, metadata !231, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 87]
!854 = metadata !{i32 786689, metadata !848, metadata !"atoms", metadata !228, i32 33554519, metadata !851, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 87]
!855 = metadata !{i32 786689, metadata !848, metadata !"x", metadata !228, i32 50331736, metadata !624, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 88]
!856 = metadata !{i32 786689, metadata !848, metadata !"xprime", metadata !228, i32 67108952, metadata !624, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xprime] [line 88]
!857 = metadata !{i32 786689, metadata !848, metadata !"box", metadata !228, i32 83886168, metadata !669, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 88]
!858 = metadata !{i32 786688, metadata !848, metadata !"buf", metadata !228, i32 90, metadata !859, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 90]
!859 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !240, metadata !431, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!860 = metadata !{i32 786478, metadata !1, metadata !228, metadata !"constrain_lincs", metadata !"constrain_lincs", metadata !"", i32 260, metadata !861, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.t_topology*, %struct.t_inputrec*, i32, %struct.t_mdatoms*, i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, float, float*, i32, i32, %struct.t_nrnb*)* @constrain_lincs, null, null, metadata !864, i32 266} ; [ DW_TAG_subprogram ] [line 260] [local] [def] [scope 266] [constrain_lincs]
!861 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !862, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!862 = metadata !{metadata !231, metadata !232, metadata !289, metadata !523, metadata !231, metadata !640, metadata !231, metadata !231, metadata !490, metadata !863, metadata !624, metadata !624, metadata !624, metadata !669, metadata !315, metadata !620, metadata !231, metadata !231, metadata !670, metadata !231}
!863 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !490} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!864 = metadata !{metadata !865, metadata !866, metadata !867, metadata !868, metadata !869, metadata !870, metadata !871, metadata !872, metadata !873, metadata !874, metadata !875, metadata !876, metadata !877, metadata !878, metadata !879, metadata !880, metadata !881, metadata !882, metadata !883, metadata !884, metadata !885, metadata !886, metadata !887, metadata !888, metadata !889, metadata !890, metadata !891, metadata !892, metadata !893, metadata !894, metadata !895, metadata !896, metadata !897, metadata !898}
!865 = metadata !{i32 786689, metadata !860, metadata !"log", metadata !228, i32 16777476, metadata !232, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 260]
!866 = metadata !{i32 786689, metadata !860, metadata !"top", metadata !228, i32 33554692, metadata !289, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [top] [line 260]
!867 = metadata !{i32 786689, metadata !860, metadata !"ir", metadata !228, i32 50331908, metadata !523, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ir] [line 260]
!868 = metadata !{i32 786689, metadata !860, metadata !"step", metadata !228, i32 67109125, metadata !231, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 261]
!869 = metadata !{i32 786689, metadata !860, metadata !"md", metadata !228, i32 83886341, metadata !640, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [md] [line 261]
!870 = metadata !{i32 786689, metadata !860, metadata !"start", metadata !228, i32 100663557, metadata !231, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 261]
!871 = metadata !{i32 786689, metadata !860, metadata !"homenr", metadata !228, i32 117440773, metadata !231, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [homenr] [line 261]
!872 = metadata !{i32 786689, metadata !860, metadata !"nbl", metadata !228, i32 134217990, metadata !490, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nbl] [line 262]
!873 = metadata !{i32 786689, metadata !860, metadata !"sbl", metadata !228, i32 150995206, metadata !863, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sbl] [line 262]
!874 = metadata !{i32 786689, metadata !860, metadata !"x", metadata !228, i32 167772423, metadata !624, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 263]
!875 = metadata !{i32 786689, metadata !860, metadata !"xprime", metadata !228, i32 184549639, metadata !624, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xprime] [line 263]
!876 = metadata !{i32 786689, metadata !860, metadata !"min_proj", metadata !228, i32 201326855, metadata !624, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [min_proj] [line 263]
!877 = metadata !{i32 786689, metadata !860, metadata !"box", metadata !228, i32 218104071, metadata !669, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 263]
!878 = metadata !{i32 786689, metadata !860, metadata !"lambda", metadata !228, i32 234881288, metadata !315, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 264]
!879 = metadata !{i32 786689, metadata !860, metadata !"dvdlambda", metadata !228, i32 251658504, metadata !620, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dvdlambda] [line 264]
!880 = metadata !{i32 786689, metadata !860, metadata !"bCoordinates", metadata !228, i32 268435720, metadata !231, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bCoordinates] [line 264]
!881 = metadata !{i32 786689, metadata !860, metadata !"bInit", metadata !228, i32 285212937, metadata !231, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bInit] [line 265]
!882 = metadata !{i32 786689, metadata !860, metadata !"nrnb", metadata !228, i32 301990153, metadata !670, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrnb] [line 265]
!883 = metadata !{i32 786689, metadata !860, metadata !"bDumpOnError", metadata !228, i32 318767369, metadata !231, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bDumpOnError] [line 265]
!884 = metadata !{i32 786688, metadata !860, metadata !"buf", metadata !228, i32 274, metadata !746, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 274]
!885 = metadata !{i32 786688, metadata !860, metadata !"b", metadata !228, i32 275, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 275]
!886 = metadata !{i32 786688, metadata !860, metadata !"i", metadata !228, i32 275, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 275]
!887 = metadata !{i32 786688, metadata !860, metadata !"j", metadata !228, i32 275, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 275]
!888 = metadata !{i32 786688, metadata !860, metadata !"nit", metadata !228, i32 275, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nit] [line 275]
!889 = metadata !{i32 786688, metadata !860, metadata !"warn", metadata !228, i32 275, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [warn] [line 275]
!890 = metadata !{i32 786688, metadata !860, metadata !"p_imax", metadata !228, i32 275, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p_imax] [line 275]
!891 = metadata !{i32 786688, metadata !860, metadata !"error", metadata !228, i32 275, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [error] [line 275]
!892 = metadata !{i32 786688, metadata !860, metadata !"wang", metadata !228, i32 276, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wang] [line 276]
!893 = metadata !{i32 786688, metadata !860, metadata !"p_max", metadata !228, i32 276, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p_max] [line 276]
!894 = metadata !{i32 786688, metadata !860, metadata !"p_rms", metadata !228, i32 276, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p_rms] [line 276]
!895 = metadata !{i32 786688, metadata !860, metadata !"dt", metadata !228, i32 277, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dt] [line 277]
!896 = metadata !{i32 786688, metadata !860, metadata !"dt_2", metadata !228, i32 277, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dt_2] [line 277]
!897 = metadata !{i32 786688, metadata !860, metadata !"bOK", metadata !228, i32 278, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bOK] [line 278]
!898 = metadata !{i32 786688, metadata !899, metadata !"dvdl", metadata !228, i32 344, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvdl] [line 344]
!899 = metadata !{i32 786443, metadata !1, metadata !900, i32 343, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!900 = metadata !{i32 786443, metadata !1, metadata !901, i32 296, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!901 = metadata !{i32 786443, metadata !1, metadata !860, i32 294, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!902 = metadata !{i32 786478, metadata !773, metadata !774, metadata !"sqr", metadata !"sqr", metadata !"", i32 197, metadata !903, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !905, i32 198} ; [ DW_TAG_subprogram ] [line 197] [local] [def] [scope 198] [sqr]
!903 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !904, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!904 = metadata !{metadata !315, metadata !315}
!905 = metadata !{metadata !906}
!906 = metadata !{i32 786689, metadata !902, metadata !"x", metadata !774, i32 16777413, metadata !315, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 197]
!907 = metadata !{i32 786478, metadata !1, metadata !228, metadata !"init_lincs", metadata !"init_lincs", metadata !"", i32 106, metadata !908, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !912, i32 113} ; [ DW_TAG_subprogram ] [line 106] [local] [def] [scope 113] [init_lincs]
!908 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !909, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!909 = metadata !{null, metadata !232, metadata !289, metadata !523, metadata !640, metadata !231, metadata !231, metadata !490, metadata !910, metadata !863, metadata !863, metadata !863, metadata !863, metadata !911, metadata !911, metadata !911, metadata !911, metadata !911, metadata !911, metadata !911, metadata !911, metadata !911, metadata !911}
!910 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !624} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!911 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !620} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!912 = metadata !{metadata !913, metadata !914, metadata !915, metadata !916, metadata !917, metadata !918, metadata !919, metadata !920, metadata !921, metadata !922, metadata !923, metadata !924, metadata !925, metadata !926, metadata !927, metadata !928, metadata !929, metadata !930, metadata !931, metadata !932, metadata !933, metadata !934, metadata !935, metadata !937, metadata !938, metadata !939, metadata !940, metadata !941, metadata !942, metadata !943, metadata !944, metadata !945, metadata !946, metadata !947, metadata !948, metadata !949, metadata !950, metadata !951, metadata !952, metadata !953, metadata !954, metadata !955, metadata !956, metadata !957, metadata !958, metadata !959, metadata !960, metadata !961, metadata !962}
!913 = metadata !{i32 786689, metadata !907, metadata !"log", metadata !228, i32 16777322, metadata !232, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 106]
!914 = metadata !{i32 786689, metadata !907, metadata !"top", metadata !228, i32 33554538, metadata !289, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [top] [line 106]
!915 = metadata !{i32 786689, metadata !907, metadata !"ir", metadata !228, i32 50331754, metadata !523, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ir] [line 106]
!916 = metadata !{i32 786689, metadata !907, metadata !"md", metadata !228, i32 67108971, metadata !640, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [md] [line 107]
!917 = metadata !{i32 786689, metadata !907, metadata !"start", metadata !228, i32 83886187, metadata !231, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 107]
!918 = metadata !{i32 786689, metadata !907, metadata !"homenr", metadata !228, i32 100663403, metadata !231, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [homenr] [line 107]
!919 = metadata !{i32 786689, metadata !907, metadata !"nrtot", metadata !228, i32 117440620, metadata !490, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrtot] [line 108]
!920 = metadata !{i32 786689, metadata !907, metadata !"r", metadata !228, i32 134217837, metadata !910, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 109]
!921 = metadata !{i32 786689, metadata !907, metadata !"bla1", metadata !228, i32 150995053, metadata !863, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bla1] [line 109]
!922 = metadata !{i32 786689, metadata !907, metadata !"bla2", metadata !228, i32 167772269, metadata !863, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bla2] [line 109]
!923 = metadata !{i32 786689, metadata !907, metadata !"blnr", metadata !228, i32 184549485, metadata !863, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [blnr] [line 109]
!924 = metadata !{i32 786689, metadata !907, metadata !"blbnb", metadata !228, i32 201326701, metadata !863, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [blbnb] [line 109]
!925 = metadata !{i32 786689, metadata !907, metadata !"bllen", metadata !228, i32 218103918, metadata !911, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bllen] [line 110]
!926 = metadata !{i32 786689, metadata !907, metadata !"blc", metadata !228, i32 234881134, metadata !911, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [blc] [line 110]
!927 = metadata !{i32 786689, metadata !907, metadata !"blcc", metadata !228, i32 251658350, metadata !911, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [blcc] [line 110]
!928 = metadata !{i32 786689, metadata !907, metadata !"blm", metadata !228, i32 268435566, metadata !911, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [blm] [line 110]
!929 = metadata !{i32 786689, metadata !907, metadata !"tmp1", metadata !228, i32 285212783, metadata !911, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tmp1] [line 111]
!930 = metadata !{i32 786689, metadata !907, metadata !"tmp2", metadata !228, i32 301989999, metadata !911, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tmp2] [line 111]
!931 = metadata !{i32 786689, metadata !907, metadata !"tmp3", metadata !228, i32 318767215, metadata !911, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tmp3] [line 111]
!932 = metadata !{i32 786689, metadata !907, metadata !"lincslam", metadata !228, i32 335544432, metadata !911, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lincslam] [line 112]
!933 = metadata !{i32 786689, metadata !907, metadata !"bllen0", metadata !228, i32 352321648, metadata !911, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bllen0] [line 112]
!934 = metadata !{i32 786689, metadata !907, metadata !"ddist", metadata !228, i32 369098864, metadata !911, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ddist] [line 112]
!935 = metadata !{i32 786688, metadata !936, metadata !"idef", metadata !228, i32 114, metadata !831, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idef] [line 114]
!936 = metadata !{i32 786443, metadata !1, metadata !907} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!937 = metadata !{i32 786688, metadata !936, metadata !"iatom", metadata !228, i32 115, metadata !434, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iatom] [line 115]
!938 = metadata !{i32 786688, metadata !936, metadata !"i", metadata !228, i32 116, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 116]
!939 = metadata !{i32 786688, metadata !936, metadata !"j", metadata !228, i32 116, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 116]
!940 = metadata !{i32 786688, metadata !936, metadata !"k", metadata !228, i32 116, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 116]
!941 = metadata !{i32 786688, metadata !936, metadata !"n", metadata !228, i32 116, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 116]
!942 = metadata !{i32 786688, metadata !936, metadata !"b1", metadata !228, i32 116, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b1] [line 116]
!943 = metadata !{i32 786688, metadata !936, metadata !"b", metadata !228, i32 116, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 116]
!944 = metadata !{i32 786688, metadata !936, metadata !"cen", metadata !228, i32 116, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cen] [line 116]
!945 = metadata !{i32 786688, metadata !936, metadata !"ncons", metadata !228, i32 117, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncons] [line 117]
!946 = metadata !{i32 786688, metadata !936, metadata !"nZeroLen", metadata !228, i32 117, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nZeroLen] [line 117]
!947 = metadata !{i32 786688, metadata !936, metadata !"type", metadata !228, i32 118, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 118]
!948 = metadata !{i32 786688, metadata !936, metadata !"a1", metadata !228, i32 118, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a1] [line 118]
!949 = metadata !{i32 786688, metadata !936, metadata !"a2", metadata !228, i32 118, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a2] [line 118]
!950 = metadata !{i32 786688, metadata !936, metadata !"b2", metadata !228, i32 118, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b2] [line 118]
!951 = metadata !{i32 786688, metadata !936, metadata !"nr", metadata !228, i32 118, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nr] [line 118]
!952 = metadata !{i32 786688, metadata !936, metadata !"n1", metadata !228, i32 118, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n1] [line 118]
!953 = metadata !{i32 786688, metadata !936, metadata !"n2", metadata !228, i32 118, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n2] [line 118]
!954 = metadata !{i32 786688, metadata !936, metadata !"nc4", metadata !228, i32 118, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nc4] [line 118]
!955 = metadata !{i32 786688, metadata !936, metadata !"len", metadata !228, i32 119, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 119]
!956 = metadata !{i32 786688, metadata !936, metadata !"len1", metadata !228, i32 119, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len1] [line 119]
!957 = metadata !{i32 786688, metadata !936, metadata !"sign", metadata !228, i32 119, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sign] [line 119]
!958 = metadata !{i32 786688, metadata !936, metadata !"im1", metadata !228, i32 120, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [im1] [line 120]
!959 = metadata !{i32 786688, metadata !936, metadata !"im2", metadata !228, i32 120, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [im2] [line 120]
!960 = metadata !{i32 786688, metadata !936, metadata !"at_c", metadata !228, i32 121, metadata !863, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [at_c] [line 121]
!961 = metadata !{i32 786688, metadata !936, metadata !"at_cn", metadata !228, i32 121, metadata !490, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [at_cn] [line 121]
!962 = metadata !{i32 786688, metadata !936, metadata !"at_cm", metadata !228, i32 121, metadata !490, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [at_cm] [line 121]
!963 = metadata !{i32 786478, metadata !1, metadata !228, metadata !"int_comp", metadata !"int_comp", metadata !"", i32 101, metadata !964, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @int_comp, null, null, metadata !968, i32 102} ; [ DW_TAG_subprogram ] [line 101] [local] [def] [scope 102] [int_comp]
!964 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !965, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!965 = metadata !{metadata !231, metadata !966, metadata !966}
!966 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !967} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!967 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!968 = metadata !{metadata !969, metadata !970}
!969 = metadata !{i32 786689, metadata !963, metadata !"a", metadata !228, i32 16777317, metadata !966, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 101]
!970 = metadata !{i32 786689, metadata !963, metadata !"b", metadata !228, i32 33554533, metadata !966, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 101]
!971 = metadata !{i32 786478, metadata !1, metadata !228, metadata !"pcomp", metadata !"pcomp", metadata !"", i32 54, metadata !964, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @pcomp, null, null, metadata !972, i32 55} ; [ DW_TAG_subprogram ] [line 54] [local] [def] [scope 55] [pcomp]
!972 = metadata !{metadata !973, metadata !974, metadata !975, metadata !976, metadata !977, metadata !978, metadata !979, metadata !980, metadata !981}
!973 = metadata !{i32 786689, metadata !971, metadata !"p1", metadata !228, i32 16777270, metadata !966, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p1] [line 54]
!974 = metadata !{i32 786689, metadata !971, metadata !"p2", metadata !228, i32 33554486, metadata !966, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p2] [line 54]
!975 = metadata !{i32 786688, metadata !971, metadata !"db", metadata !228, i32 56, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [db] [line 56]
!976 = metadata !{i32 786688, metadata !971, metadata !"min1", metadata !228, i32 57, metadata !436, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [min1] [line 57]
!977 = metadata !{i32 786688, metadata !971, metadata !"min2", metadata !228, i32 57, metadata !436, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [min2] [line 57]
!978 = metadata !{i32 786688, metadata !971, metadata !"max1", metadata !228, i32 57, metadata !436, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max1] [line 57]
!979 = metadata !{i32 786688, metadata !971, metadata !"max2", metadata !228, i32 57, metadata !436, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max2] [line 57]
!980 = metadata !{i32 786688, metadata !971, metadata !"a1", metadata !228, i32 58, metadata !821, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a1] [line 58]
!981 = metadata !{i32 786688, metadata !971, metadata !"a2", metadata !228, i32 59, metadata !821, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a2] [line 59]
!982 = metadata !{i32 786478, metadata !1, metadata !228, metadata !"pr_sortblock", metadata !"pr_sortblock", metadata !"", i32 410, metadata !983, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*, i32, %struct.t_sortblock*)* @pr_sortblock, null, null, metadata !985, i32 411} ; [ DW_TAG_subprogram ] [line 410] [local] [def] [scope 411] [pr_sortblock]
!983 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !984, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!984 = metadata !{null, metadata !232, metadata !239, metadata !231, metadata !821}
!985 = metadata !{metadata !986, metadata !987, metadata !988, metadata !989, metadata !990}
!986 = metadata !{i32 786689, metadata !982, metadata !"fp", metadata !228, i32 16777626, metadata !232, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 410]
!987 = metadata !{i32 786689, metadata !982, metadata !"title", metadata !228, i32 33554842, metadata !239, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 410]
!988 = metadata !{i32 786689, metadata !982, metadata !"nsb", metadata !228, i32 50332058, metadata !231, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsb] [line 410]
!989 = metadata !{i32 786689, metadata !982, metadata !"sb", metadata !228, i32 67109274, metadata !821, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sb] [line 410]
!990 = metadata !{i32 786688, metadata !982, metadata !"i", metadata !228, i32 412, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 412]
!991 = metadata !{metadata !992, metadata !993, metadata !994, metadata !995, metadata !996, metadata !997, metadata !998, metadata !999, metadata !1000, metadata !1001, metadata !1002, metadata !1003, metadata !1004, metadata !1005, metadata !1006, metadata !1007, metadata !1008, metadata !1009, metadata !1010, metadata !1011, metadata !1012, metadata !1013, metadata !1014, metadata !1015, metadata !1016}
!992 = metadata !{i32 786484, i32 0, metadata !797, metadata !"nblocks", metadata !"nblocks", metadata !"", metadata !228, i32 430, metadata !231, i32 1, i32 1, i32* @low_constrain.nblocks, null} ; [ DW_TAG_variable ] [nblocks] [line 430] [local] [def]
!993 = metadata !{i32 786484, i32 0, metadata !797, metadata !"sblock", metadata !"sblock", metadata !"", metadata !228, i32 431, metadata !490, i32 1, i32 1, i32** @low_constrain.sblock, null} ; [ DW_TAG_variable ] [sblock] [line 431] [local] [def]
!994 = metadata !{i32 786484, i32 0, metadata !797, metadata !"nsettle", metadata !"nsettle", metadata !"", metadata !228, i32 432, metadata !231, i32 1, i32 1, i32* @low_constrain.nsettle, null} ; [ DW_TAG_variable ] [nsettle] [line 432] [local] [def]
!995 = metadata !{i32 786484, i32 0, metadata !797, metadata !"settle_type", metadata !"settle_type", metadata !"", metadata !228, i32 432, metadata !231, i32 1, i32 1, i32* @low_constrain.settle_type, null} ; [ DW_TAG_variable ] [settle_type] [line 432] [local] [def]
!996 = metadata !{i32 786484, i32 0, metadata !797, metadata !"owptr", metadata !"owptr", metadata !"", metadata !228, i32 433, metadata !490, i32 1, i32 1, i32** @low_constrain.owptr, null} ; [ DW_TAG_variable ] [owptr] [line 433] [local] [def]
!997 = metadata !{i32 786484, i32 0, metadata !797, metadata !"bDumpOnError", metadata !"bDumpOnError", metadata !"", metadata !228, i32 434, metadata !231, i32 1, i32 1, null, null}
!998 = metadata !{i32 786484, i32 0, metadata !860, metadata !"bla1", metadata !"bla1", metadata !"", metadata !228, i32 267, metadata !490, i32 1, i32 1, i32** @constrain_lincs.bla1, null} ; [ DW_TAG_variable ] [bla1] [line 267] [local] [def]
!999 = metadata !{i32 786484, i32 0, metadata !860, metadata !"bla2", metadata !"bla2", metadata !"", metadata !228, i32 267, metadata !490, i32 1, i32 1, i32** @constrain_lincs.bla2, null} ; [ DW_TAG_variable ] [bla2] [line 267] [local] [def]
!1000 = metadata !{i32 786484, i32 0, metadata !860, metadata !"blnr", metadata !"blnr", metadata !"", metadata !228, i32 267, metadata !490, i32 1, i32 1, i32** @constrain_lincs.blnr, null} ; [ DW_TAG_variable ] [blnr] [line 267] [local] [def]
!1001 = metadata !{i32 786484, i32 0, metadata !860, metadata !"blbnb", metadata !"blbnb", metadata !"", metadata !228, i32 267, metadata !490, i32 1, i32 1, i32** @constrain_lincs.blbnb, null} ; [ DW_TAG_variable ] [blbnb] [line 267] [local] [def]
!1002 = metadata !{i32 786484, i32 0, metadata !860, metadata !"nrtot", metadata !"nrtot", metadata !"", metadata !228, i32 267, metadata !231, i32 1, i32 1, i32* @constrain_lincs.nrtot, null} ; [ DW_TAG_variable ] [nrtot] [line 267] [local] [def]
!1003 = metadata !{i32 786484, i32 0, metadata !860, metadata !"r", metadata !"r", metadata !"", metadata !228, i32 268, metadata !624, i32 1, i32 1, [3 x float]** @constrain_lincs.r, null} ; [ DW_TAG_variable ] [r] [line 268] [local] [def]
!1004 = metadata !{i32 786484, i32 0, metadata !860, metadata !"bllen", metadata !"bllen", metadata !"", metadata !228, i32 269, metadata !620, i32 1, i32 1, float** @constrain_lincs.bllen, null} ; [ DW_TAG_variable ] [bllen] [line 269] [local] [def]
!1005 = metadata !{i32 786484, i32 0, metadata !860, metadata !"blc", metadata !"blc", metadata !"", metadata !228, i32 269, metadata !620, i32 1, i32 1, float** @constrain_lincs.blc, null} ; [ DW_TAG_variable ] [blc] [line 269] [local] [def]
!1006 = metadata !{i32 786484, i32 0, metadata !860, metadata !"blcc", metadata !"blcc", metadata !"", metadata !228, i32 269, metadata !620, i32 1, i32 1, float** @constrain_lincs.blcc, null} ; [ DW_TAG_variable ] [blcc] [line 269] [local] [def]
!1007 = metadata !{i32 786484, i32 0, metadata !860, metadata !"blm", metadata !"blm", metadata !"", metadata !228, i32 269, metadata !620, i32 1, i32 1, float** @constrain_lincs.blm, null} ; [ DW_TAG_variable ] [blm] [line 269] [local] [def]
!1008 = metadata !{i32 786484, i32 0, metadata !860, metadata !"tmp1", metadata !"tmp1", metadata !"", metadata !228, i32 269, metadata !620, i32 1, i32 1, float** @constrain_lincs.tmp1, null} ; [ DW_TAG_variable ] [tmp1] [line 269] [local] [def]
!1009 = metadata !{i32 786484, i32 0, metadata !860, metadata !"tmp2", metadata !"tmp2", metadata !"", metadata !228, i32 269, metadata !620, i32 1, i32 1, float** @constrain_lincs.tmp2, null} ; [ DW_TAG_variable ] [tmp2] [line 269] [local] [def]
!1010 = metadata !{i32 786484, i32 0, metadata !860, metadata !"tmp3", metadata !"tmp3", metadata !"", metadata !228, i32 269, metadata !620, i32 1, i32 1, float** @constrain_lincs.tmp3, null} ; [ DW_TAG_variable ] [tmp3] [line 269] [local] [def]
!1011 = metadata !{i32 786484, i32 0, metadata !860, metadata !"lincslam", metadata !"lincslam", metadata !"", metadata !228, i32 269, metadata !620, i32 1, i32 1, float** @constrain_lincs.lincslam, null} ; [ DW_TAG_variable ] [lincslam] [line 269] [local] [def]
!1012 = metadata !{i32 786484, i32 0, metadata !860, metadata !"bllen0", metadata !"bllen0", metadata !"", metadata !228, i32 270, metadata !620, i32 1, i32 1, float** @constrain_lincs.bllen0, null} ; [ DW_TAG_variable ] [bllen0] [line 270] [local] [def]
!1013 = metadata !{i32 786484, i32 0, metadata !860, metadata !"ddist", metadata !"ddist", metadata !"", metadata !228, i32 270, metadata !620, i32 1, i32 1, float** @constrain_lincs.ddist, null} ; [ DW_TAG_variable ] [ddist] [line 270] [local] [def]
!1014 = metadata !{i32 786484, i32 0, metadata !860, metadata !"nc", metadata !"nc", metadata !"", metadata !228, i32 271, metadata !231, i32 1, i32 1, i32* @constrain_lincs.nc, null} ; [ DW_TAG_variable ] [nc] [line 271] [local] [def]
!1015 = metadata !{i32 786484, i32 0, metadata !860, metadata !"bItEqOrder", metadata !"bItEqOrder", metadata !"", metadata !228, i32 272, metadata !231, i32 1, i32 1, null, null}
!1016 = metadata !{i32 786484, i32 0, null, metadata !"pcount", metadata !"pcount", metadata !"", metadata !228, i32 52, metadata !231, i32 1, i32 1, i32* @pcount, null} ; [ DW_TAG_variable ] [pcount] [line 52] [local] [def]
!1017 = metadata !{i32 615, i32 0, metadata !227, null}
!1018 = metadata !{i32 616, i32 0, metadata !227, null}
!1019 = metadata !{i32 617, i32 0, metadata !227, null}
!1020 = metadata !{i32 618, i32 0, metadata !227, null}
!1021 = metadata !{i32 620, i32 0, metadata !227, null}
!1022 = metadata !{i32 424, i32 0, metadata !797, null}
!1023 = metadata !{i32 425, i32 0, metadata !797, null}
!1024 = metadata !{i32 426, i32 0, metadata !797, null}
!1025 = metadata !{i32 427, i32 0, metadata !797, null}
!1026 = metadata !{i32 428, i32 0, metadata !797, null}
!1027 = metadata !{i32 439, i32 0, metadata !818, null}
!1028 = metadata !{i32 440, i32 0, metadata !818, null}
!1029 = metadata !{i32 444, i32 0, metadata !818, null}
!1030 = metadata !{i32 1}
!1031 = metadata !{i32 446, i32 0, metadata !818, null}
!1032 = metadata !{i32 447, i32 0, metadata !818, null}
!1033 = metadata !{i32 450, i32 0, metadata !1034, null}
!1034 = metadata !{i32 786443, metadata !1, metadata !818, i32 447, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1035 = metadata !{metadata !"int", metadata !1036}
!1036 = metadata !{metadata !"omnipotent char", metadata !1037}
!1037 = metadata !{metadata !"Simple C/C++ TBAA"}
!1038 = metadata !{i32 451, i32 0, metadata !1034, null}
!1039 = metadata !{i32 459, i32 0, metadata !1034, null}
!1040 = metadata !{i32 460, i32 0, metadata !1034, null}
!1041 = metadata !{i32 461, i32 0, metadata !1042, null}
!1042 = metadata !{i32 786443, metadata !1, metadata !1034, i32 460, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1043 = metadata !{metadata !"any pointer", metadata !1036}
!1044 = metadata !{i32 462, i32 0, metadata !1042, null}
!1045 = metadata !{i32 463, i32 0, metadata !1046, null}
!1046 = metadata !{i32 786443, metadata !1, metadata !1042, i32 463, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1047 = metadata !{i32 464, i32 0, metadata !1048, null}
!1048 = metadata !{i32 786443, metadata !1, metadata !1046, i32 463, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1049 = metadata !{i32 465, i32 0, metadata !1048, null}
!1050 = metadata !{i32 467, i32 0, metadata !1048, null}
!1051 = metadata !{i32 476, i32 0, metadata !1042, null}
!1052 = metadata !{i32 477, i32 0, metadata !1042, null}
!1053 = metadata !{i32 479, i32 0, metadata !1034, null}
!1054 = metadata !{i32 480, i32 0, metadata !1034, null}
!1055 = metadata !{i32 482, i32 0, metadata !1056, null}
!1056 = metadata !{i32 786443, metadata !1, metadata !1034, i32 481, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1057 = metadata !{i32 483, i32 0, metadata !1056, null}
!1058 = metadata !{i32 484, i32 0, metadata !1056, null}
!1059 = metadata !{i32 485, i32 0, metadata !1056, null}
!1060 = metadata !{i32 489, i32 0, metadata !1056, null}
!1061 = metadata !{i32 498, i32 0, metadata !1056, null}
!1062 = metadata !{i32 499, i32 0, metadata !1056, null}
!1063 = metadata !{i32 500, i32 0, metadata !1064, null}
!1064 = metadata !{i32 786443, metadata !1, metadata !1056, i32 500, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1065 = metadata !{i32 501, i32 0, metadata !1066, null}
!1066 = metadata !{i32 786443, metadata !1, metadata !1067, i32 501, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1067 = metadata !{i32 786443, metadata !1, metadata !1064, i32 500, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1068 = metadata !{i32 502, i32 0, metadata !1066, null}
!1069 = metadata !{i32 503, i32 0, metadata !1067, null}
!1070 = metadata !{i32 507, i32 0, metadata !1056, null}
!1071 = metadata !{i32 508, i32 0, metadata !1072, null}
!1072 = metadata !{i32 786443, metadata !1, metadata !1056, i32 507, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1073 = metadata !{i32 509, i32 0, metadata !1072, null}
!1074 = metadata !{i32 510, i32 0, metadata !1072, null}
!1075 = metadata !{i32 512, i32 0, metadata !1056, null}
!1076 = metadata !{i32 514, i32 0, metadata !1056, null}
!1077 = metadata !{i32 515, i32 0, metadata !1078, null}
!1078 = metadata !{i32 786443, metadata !1, metadata !1056, i32 514, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1079 = metadata !{i32 516, i32 0, metadata !1078, null}
!1080 = metadata !{i32 517, i32 0, metadata !1078, null}
!1081 = metadata !{i32 519, i32 0, metadata !1056, null}
!1082 = metadata !{i32 520, i32 0, metadata !1083, null}
!1083 = metadata !{i32 786443, metadata !1, metadata !1056, i32 520, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1084 = metadata !{i32 521, i32 0, metadata !1085, null}
!1085 = metadata !{i32 786443, metadata !1, metadata !1083, i32 521, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1086 = metadata !{i32 522, i32 0, metadata !1085, null}
!1087 = metadata !{i32 527, i32 0, metadata !1056, null}
!1088 = metadata !{i32 528, i32 0, metadata !1056, null}
!1089 = metadata !{i32 -2}
!1090 = metadata !{i32 529, i32 0, metadata !1056, null}
!1091 = metadata !{i32 530, i32 0, metadata !1092, null}
!1092 = metadata !{i32 786443, metadata !1, metadata !1056, i32 530, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1093 = metadata !{i32 531, i32 0, metadata !1094, null}
!1094 = metadata !{i32 786443, metadata !1, metadata !1092, i32 530, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1095 = metadata !{i32 532, i32 0, metadata !1096, null}
!1096 = metadata !{i32 786443, metadata !1, metadata !1094, i32 531, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1097 = metadata !{i32 533, i32 0, metadata !1096, null}
!1098 = metadata !{i32 534, i32 0, metadata !1096, null}
!1099 = metadata !{i32 537, i32 0, metadata !1056, null}
!1100 = metadata !{i32 539, i32 0, metadata !1056, null}
!1101 = metadata !{i32 540, i32 0, metadata !1102, null}
!1102 = metadata !{i32 786443, metadata !1, metadata !1056, i32 539, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1103 = metadata !{i32 541, i32 0, metadata !1102, null}
!1104 = metadata !{i32 543, i32 0, metadata !1105, null}
!1105 = metadata !{i32 786443, metadata !1, metadata !1102, i32 543, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1106 = metadata !{i32 545, i32 0, metadata !1107, null}
!1107 = metadata !{i32 786443, metadata !1, metadata !1102, i32 545, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1108 = metadata !{i32 544, i32 0, metadata !1105, null}
!1109 = metadata !{i32 546, i32 0, metadata !1107, null}
!1110 = metadata !{i32 547, i32 0, metadata !1102, null}
!1111 = metadata !{i32 549, i32 0, metadata !1102, null}
!1112 = metadata !{i32 550, i32 0, metadata !1056, null}
!1113 = metadata !{i32 551, i32 0, metadata !1056, null}
!1114 = metadata !{i32 554, i32 0, metadata !1034, null}
!1115 = metadata !{i32 552, i32 0, metadata !1056, null}
!1116 = metadata !{i32 555, i32 0, metadata !1117, null}
!1117 = metadata !{i32 786443, metadata !1, metadata !1034, i32 554, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1118 = metadata !{i32 556, i32 0, metadata !1119, null}
!1119 = metadata !{i32 786443, metadata !1, metadata !1117, i32 555, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1120 = metadata !{i32 557, i32 0, metadata !1119, null}
!1121 = metadata !{i32 560, i32 0, metadata !1119, null}
!1122 = metadata !{i32 562, i32 0, metadata !1117, null}
!1123 = metadata !{i32 567, i32 0, metadata !843, null}
!1124 = metadata !{i32 568, i32 0, metadata !1125, null}
!1125 = metadata !{i32 786443, metadata !1, metadata !843, i32 567, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1126 = metadata !{i32 570, i32 0, metadata !1125, null}
!1127 = metadata !{i32 571, i32 0, metadata !1125, null}
!1128 = metadata !{i32 574, i32 0, metadata !1125, null}
!1129 = metadata !{i32 578, i32 0, metadata !1125, null}
!1130 = metadata !{i32 579, i32 0, metadata !1125, null}
!1131 = metadata !{i32 582, i32 0, metadata !843, null}
!1132 = metadata !{i32 584, i32 0, metadata !842, null}
!1133 = metadata !{i32 586, i32 0, metadata !842, null}
!1134 = metadata !{i32 587, i32 0, metadata !842, null}
!1135 = metadata !{metadata !"float", metadata !1036}
!1136 = metadata !{i32 588, i32 0, metadata !842, null}
!1137 = metadata !{i32 589, i32 0, metadata !842, null}
!1138 = metadata !{i32 590, i32 0, metadata !842, null}
!1139 = metadata !{i32 596, i32 0, metadata !842, null}
!1140 = metadata !{i32 602, i32 0, metadata !842, null}
!1141 = metadata !{metadata !"double", metadata !1036}
!1142 = metadata !{i32 603, i32 0, metadata !842, null}
!1143 = metadata !{i32 604, i32 0, metadata !842, null}
!1144 = metadata !{i32 605, i32 0, metadata !842, null}
!1145 = metadata !{i32 609, i32 0, metadata !843, null}
!1146 = metadata !{i32 610, i32 0, metadata !843, null}
!1147 = metadata !{i32 786689, metadata !848, metadata !"step", metadata !228, i32 16777303, metadata !231, i32 0, metadata !1146} ; [ DW_TAG_arg_variable ] [step] [line 87]
!1148 = metadata !{i32 87, i32 0, metadata !848, metadata !1146}
!1149 = metadata !{i32 786689, metadata !848, metadata !"atoms", metadata !228, i32 33554519, metadata !851, i32 0, metadata !1146} ; [ DW_TAG_arg_variable ] [atoms] [line 87]
!1150 = metadata !{i32 786689, metadata !848, metadata !"x", metadata !228, i32 50331736, metadata !624, i32 0, metadata !1146} ; [ DW_TAG_arg_variable ] [x] [line 88]
!1151 = metadata !{i32 88, i32 0, metadata !848, metadata !1146}
!1152 = metadata !{i32 786689, metadata !848, metadata !"xprime", metadata !228, i32 67108952, metadata !624, i32 0, metadata !1146} ; [ DW_TAG_arg_variable ] [xprime] [line 88]
!1153 = metadata !{i32 786689, metadata !848, metadata !"box", metadata !228, i32 83886168, metadata !669, i32 0, metadata !1146} ; [ DW_TAG_arg_variable ] [box] [line 88]
!1154 = metadata !{i32 90, i32 0, metadata !848, metadata !1146}
!1155 = metadata !{i32 92, i32 0, metadata !848, metadata !1146}
!1156 = metadata !{i32 93, i32 0, metadata !848, metadata !1146}
!1157 = metadata !{i32 94, i32 0, metadata !848, metadata !1146}
!1158 = metadata !{i32 95, i32 0, metadata !848, metadata !1146}
!1159 = metadata !{i32 96, i32 0, metadata !848, metadata !1146}
!1160 = metadata !{i32 97, i32 0, metadata !848, metadata !1146}
!1161 = metadata !{i32 98, i32 0, metadata !848, metadata !1146}
!1162 = metadata !{i32 99, i32 0, metadata !848, metadata !1146}
!1163 = metadata !{i32 613, i32 0, metadata !818, null}
!1164 = metadata !{i32 624, i32 0, metadata !695, null}
!1165 = metadata !{i32 626, i32 0, metadata !695, null}
!1166 = metadata !{i32 628, i32 0, metadata !695, null}
!1167 = metadata !{i32 629, i32 0, metadata !695, null}
!1168 = metadata !{i32 630, i32 0, metadata !695, null}
!1169 = metadata !{i32 632, i32 0, metadata !695, null}
!1170 = metadata !{i32 635, i32 0, metadata !713, null}
!1171 = metadata !{i32 636, i32 0, metadata !713, null}
!1172 = metadata !{i32 637, i32 0, metadata !713, null}
!1173 = metadata !{i32 639, i32 0, metadata !713, null}
!1174 = metadata !{i32 642, i32 0, metadata !713, null}
!1175 = metadata !{i32 645, i32 0, metadata !725, null}
!1176 = metadata !{i32 646, i32 0, metadata !725, null}
!1177 = metadata !{[3 x float]* undef}
!1178 = metadata !{i32 649, i32 0, metadata !725, null}
!1179 = metadata !{i32 651, i32 0, metadata !725, null}
!1180 = metadata !{i32 653, i32 0, metadata !725, null}
!1181 = metadata !{i32 655, i32 0, metadata !725, null}
!1182 = metadata !{i32 658, i32 0, metadata !725, null}
!1183 = metadata !{i32 659, i32 0, metadata !725, null}
!1184 = metadata !{i32 660, i32 0, metadata !725, null}
!1185 = metadata !{i32 662, i32 0, metadata !1186, null}
!1186 = metadata !{i32 786443, metadata !1, metadata !725, i32 662, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1187 = metadata !{i32 663, i32 0, metadata !1188, null}
!1188 = metadata !{i32 786443, metadata !1, metadata !1186, i32 662, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1189 = metadata !{i32 664, i32 0, metadata !1188, null}
!1190 = metadata !{i32 665, i32 0, metadata !1188, null}
!1191 = metadata !{i32 786689, metadata !785, metadata !"a", metadata !774, i32 16777460, metadata !788, i32 0, metadata !1190} ; [ DW_TAG_arg_variable ] [a] [line 244]
!1192 = metadata !{i32 244, i32 0, metadata !785, metadata !1190}
!1193 = metadata !{i32 786689, metadata !785, metadata !"b", metadata !774, i32 33554676, metadata !788, i32 0, metadata !1190} ; [ DW_TAG_arg_variable ] [b] [line 244]
!1194 = metadata !{float* undef}
!1195 = metadata !{i32 786689, metadata !785, metadata !"c", metadata !774, i32 50331892, metadata !620, i32 0, metadata !1190} ; [ DW_TAG_arg_variable ] [c] [line 244]
!1196 = metadata !{i32 248, i32 0, metadata !785, metadata !1190}
!1197 = metadata !{i32 786688, metadata !785, metadata !"x", metadata !774, i32 246, metadata !315, i32 0, metadata !1190} ; [ DW_TAG_auto_variable ] [x] [line 246]
!1198 = metadata !{i32 249, i32 0, metadata !785, metadata !1190}
!1199 = metadata !{i32 786688, metadata !785, metadata !"y", metadata !774, i32 246, metadata !315, i32 0, metadata !1190} ; [ DW_TAG_auto_variable ] [y] [line 246]
!1200 = metadata !{i32 250, i32 0, metadata !785, metadata !1190}
!1201 = metadata !{i32 786688, metadata !785, metadata !"z", metadata !774, i32 246, metadata !315, i32 0, metadata !1190} ; [ DW_TAG_auto_variable ] [z] [line 246]
!1202 = metadata !{i32 666, i32 0, metadata !1188, null}
!1203 = metadata !{i32 786689, metadata !785, metadata !"a", metadata !774, i32 16777460, metadata !788, i32 0, metadata !1202} ; [ DW_TAG_arg_variable ] [a] [line 244]
!1204 = metadata !{i32 244, i32 0, metadata !785, metadata !1202}
!1205 = metadata !{i32 786689, metadata !785, metadata !"b", metadata !774, i32 33554676, metadata !788, i32 0, metadata !1202} ; [ DW_TAG_arg_variable ] [b] [line 244]
!1206 = metadata !{i32 786689, metadata !785, metadata !"c", metadata !774, i32 50331892, metadata !620, i32 0, metadata !1202} ; [ DW_TAG_arg_variable ] [c] [line 244]
!1207 = metadata !{i32 248, i32 0, metadata !785, metadata !1202}
!1208 = metadata !{i32 786688, metadata !785, metadata !"x", metadata !774, i32 246, metadata !315, i32 0, metadata !1202} ; [ DW_TAG_auto_variable ] [x] [line 246]
!1209 = metadata !{i32 249, i32 0, metadata !785, metadata !1202}
!1210 = metadata !{i32 786688, metadata !785, metadata !"y", metadata !774, i32 246, metadata !315, i32 0, metadata !1202} ; [ DW_TAG_auto_variable ] [y] [line 246]
!1211 = metadata !{i32 250, i32 0, metadata !785, metadata !1202}
!1212 = metadata !{i32 786688, metadata !785, metadata !"z", metadata !774, i32 246, metadata !315, i32 0, metadata !1202} ; [ DW_TAG_auto_variable ] [z] [line 246]
!1213 = metadata !{i32 786689, metadata !780, metadata !"a", metadata !774, i32 16777574, metadata !620, i32 0, metadata !1214} ; [ DW_TAG_arg_variable ] [a] [line 358]
!1214 = metadata !{i32 667, i32 0, metadata !1188, null}
!1215 = metadata !{i32 358, i32 0, metadata !780, metadata !1214}
!1216 = metadata !{i32 360, i32 0, metadata !780, metadata !1214}
!1217 = metadata !{i32 786689, metadata !780, metadata !"a", metadata !774, i32 16777574, metadata !620, i32 0, metadata !1218} ; [ DW_TAG_arg_variable ] [a] [line 358]
!1218 = metadata !{i32 668, i32 0, metadata !1188, null}
!1219 = metadata !{i32 358, i32 0, metadata !780, metadata !1218}
!1220 = metadata !{i32 360, i32 0, metadata !780, metadata !1218}
!1221 = metadata !{i32 786689, metadata !772, metadata !"a", metadata !774, i32 16777559, metadata !620, i32 0, metadata !1222} ; [ DW_TAG_arg_variable ] [a] [line 343]
!1222 = metadata !{i32 669, i32 0, metadata !1188, null}
!1223 = metadata !{i32 343, i32 0, metadata !772, metadata !1222}
!1224 = metadata !{i32 786689, metadata !772, metadata !"b", metadata !774, i32 33554775, metadata !620, i32 0, metadata !1222} ; [ DW_TAG_arg_variable ] [b] [line 343]
!1225 = metadata !{i32 345, i32 0, metadata !1226, metadata !1222}
!1226 = metadata !{i32 786443, metadata !773, metadata !772} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!1227 = metadata !{i32 670, i32 0, metadata !1188, null}
!1228 = metadata !{i32 671, i32 0, metadata !1229, null}
!1229 = metadata !{i32 786443, metadata !1, metadata !1188, i32 670, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1230 = metadata !{i32 672, i32 0, metadata !1229, null}
!1231 = metadata !{i32 673, i32 0, metadata !1229, null}
!1232 = metadata !{i32 674, i32 0, metadata !1229, null}
!1233 = metadata !{i32 675, i32 0, metadata !1229, null}
!1234 = metadata !{i32 678, i32 0, metadata !725, null}
!1235 = metadata !{i32 680, i32 0, metadata !749, null}
!1236 = metadata !{i32 681, i32 0, metadata !749, null}
!1237 = metadata !{float 0.000000e+00}
!1238 = metadata !{i32 687, i32 0, metadata !749, null}
!1239 = metadata !{i32 688, i32 0, metadata !749, null}
!1240 = metadata !{i32 689, i32 0, metadata !749, null}
!1241 = metadata !{i32 690, i32 0, metadata !1242, null}
!1242 = metadata !{i32 786443, metadata !1, metadata !749, i32 690, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1243 = metadata !{i32 691, i32 0, metadata !1244, null}
!1244 = metadata !{i32 786443, metadata !1, metadata !1242, i32 690, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1245 = metadata !{i32 692, i32 0, metadata !1244, null}
!1246 = metadata !{i32 693, i32 0, metadata !1244, null}
!1247 = metadata !{i32 694, i32 0, metadata !1244, null}
!1248 = metadata !{i32 695, i32 0, metadata !1244, null}
!1249 = metadata !{i32 696, i32 0, metadata !1244, null}
!1250 = metadata !{i32 697, i32 0, metadata !1244, null}
!1251 = metadata !{i32 698, i32 0, metadata !1244, null}
!1252 = metadata !{i32 699, i32 0, metadata !1253, null}
!1253 = metadata !{i32 786443, metadata !1, metadata !1244, i32 698, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1254 = metadata !{i32 undef}
!1255 = metadata !{i32 700, i32 0, metadata !1253, null}
!1256 = metadata !{i32 702, i32 0, metadata !1244, null}
!1257 = metadata !{i32 704, i32 0, metadata !749, null}
!1258 = metadata !{i32 705, i32 0, metadata !749, null}
!1259 = metadata !{i32 706, i32 0, metadata !749, null}
!1260 = metadata !{i32 707, i32 0, metadata !749, null}
!1261 = metadata !{i32 410, i32 0, metadata !982, null}
!1262 = metadata !{i32 414, i32 0, metadata !982, null}
!1263 = metadata !{i32 416, i32 0, metadata !1264, null}
!1264 = metadata !{i32 786443, metadata !1, metadata !982, i32 415, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1265 = metadata !{i32 417, i32 0, metadata !1266, null}
!1266 = metadata !{i32 786443, metadata !1, metadata !1264, i32 417, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1267 = metadata !{i32 418, i32 0, metadata !1266, null}
!1268 = metadata !{i32 422, i32 0, metadata !982, null}
!1269 = metadata !{i32 54, i32 0, metadata !971, null}
!1270 = metadata !{i32 61, i32 0, metadata !971, null}
!1271 = metadata !{i32 63, i32 0, metadata !971, null}
!1272 = metadata !{i32 65, i32 0, metadata !971, null}
!1273 = metadata !{i32 66, i32 0, metadata !971, null}
!1274 = metadata !{i32 68, i32 0, metadata !971, null}
!1275 = metadata !{i32 69, i32 0, metadata !971, null}
!1276 = metadata !{i32 70, i32 0, metadata !971, null}
!1277 = metadata !{i32 71, i32 0, metadata !971, null}
!1278 = metadata !{i32 73, i32 0, metadata !971, null}
!1279 = metadata !{i32 74, i32 0, metadata !971, null}
!1280 = metadata !{i32 76, i32 0, metadata !971, null}
!1281 = metadata !{i32 77, i32 0, metadata !971, null}
!1282 = metadata !{%struct._IO_FILE* null}
!1283 = metadata !{i32 260, i32 0, metadata !860, null}
!1284 = metadata !{i32* null}
!1285 = metadata !{i32 262, i32 0, metadata !860, null}
!1286 = metadata !{i32** null}
!1287 = metadata !{[3 x float]* null}
!1288 = metadata !{i32 263, i32 0, metadata !860, null}
!1289 = metadata !{i32 265, i32 0, metadata !860, null}
!1290 = metadata !{i32 274, i32 0, metadata !860, null}
!1291 = metadata !{i32 275, i32 0, metadata !860, null}
!1292 = metadata !{i32 276, i32 0, metadata !860, null}
!1293 = metadata !{i32 280, i32 0, metadata !860, null}
!1294 = metadata !{i32 281, i32 0, metadata !860, null}
!1295 = metadata !{i32 282, i32 0, metadata !1296, null}
!1296 = metadata !{i32 786443, metadata !1, metadata !860, i32 281, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1297 = metadata !{i32 283, i32 0, metadata !1296, null}
!1298 = metadata !{%struct.t_inputrec* null}
!1299 = metadata !{i32 786689, metadata !907, metadata !"ir", metadata !228, i32 50331754, metadata !523, i32 0, metadata !1297} ; [ DW_TAG_arg_variable ] [ir] [line 106]
!1300 = metadata !{i32 106, i32 0, metadata !907, metadata !1297}
!1301 = metadata !{i32* @constrain_lincs.nrtot}
!1302 = metadata !{i32 786689, metadata !907, metadata !"nrtot", metadata !228, i32 117440620, metadata !490, i32 0, metadata !1297} ; [ DW_TAG_arg_variable ] [nrtot] [line 108]
!1303 = metadata !{i32 108, i32 0, metadata !907, metadata !1297}
!1304 = metadata !{[3 x float]** @constrain_lincs.r}
!1305 = metadata !{i32 786689, metadata !907, metadata !"r", metadata !228, i32 134217837, metadata !910, i32 0, metadata !1297} ; [ DW_TAG_arg_variable ] [r] [line 109]
!1306 = metadata !{i32 109, i32 0, metadata !907, metadata !1297}
!1307 = metadata !{i32** @constrain_lincs.bla1}
!1308 = metadata !{i32 786689, metadata !907, metadata !"bla1", metadata !228, i32 150995053, metadata !863, i32 0, metadata !1297} ; [ DW_TAG_arg_variable ] [bla1] [line 109]
!1309 = metadata !{i32** @constrain_lincs.bla2}
!1310 = metadata !{i32 786689, metadata !907, metadata !"bla2", metadata !228, i32 167772269, metadata !863, i32 0, metadata !1297} ; [ DW_TAG_arg_variable ] [bla2] [line 109]
!1311 = metadata !{i32** @constrain_lincs.blnr}
!1312 = metadata !{i32 786689, metadata !907, metadata !"blnr", metadata !228, i32 184549485, metadata !863, i32 0, metadata !1297} ; [ DW_TAG_arg_variable ] [blnr] [line 109]
!1313 = metadata !{i32** @constrain_lincs.blbnb}
!1314 = metadata !{i32 786689, metadata !907, metadata !"blbnb", metadata !228, i32 201326701, metadata !863, i32 0, metadata !1297} ; [ DW_TAG_arg_variable ] [blbnb] [line 109]
!1315 = metadata !{float** @constrain_lincs.bllen}
!1316 = metadata !{i32 786689, metadata !907, metadata !"bllen", metadata !228, i32 218103918, metadata !911, i32 0, metadata !1297} ; [ DW_TAG_arg_variable ] [bllen] [line 110]
!1317 = metadata !{i32 110, i32 0, metadata !907, metadata !1297}
!1318 = metadata !{float** @constrain_lincs.blc}
!1319 = metadata !{i32 786689, metadata !907, metadata !"blc", metadata !228, i32 234881134, metadata !911, i32 0, metadata !1297} ; [ DW_TAG_arg_variable ] [blc] [line 110]
!1320 = metadata !{float** @constrain_lincs.blcc}
!1321 = metadata !{i32 786689, metadata !907, metadata !"blcc", metadata !228, i32 251658350, metadata !911, i32 0, metadata !1297} ; [ DW_TAG_arg_variable ] [blcc] [line 110]
!1322 = metadata !{float** @constrain_lincs.blm}
!1323 = metadata !{i32 786689, metadata !907, metadata !"blm", metadata !228, i32 268435566, metadata !911, i32 0, metadata !1297} ; [ DW_TAG_arg_variable ] [blm] [line 110]
!1324 = metadata !{float** @constrain_lincs.tmp1}
!1325 = metadata !{i32 786689, metadata !907, metadata !"tmp1", metadata !228, i32 285212783, metadata !911, i32 0, metadata !1297} ; [ DW_TAG_arg_variable ] [tmp1] [line 111]
!1326 = metadata !{i32 111, i32 0, metadata !907, metadata !1297}
!1327 = metadata !{float** @constrain_lincs.tmp2}
!1328 = metadata !{i32 786689, metadata !907, metadata !"tmp2", metadata !228, i32 301989999, metadata !911, i32 0, metadata !1297} ; [ DW_TAG_arg_variable ] [tmp2] [line 111]
!1329 = metadata !{float** @constrain_lincs.tmp3}
!1330 = metadata !{i32 786689, metadata !907, metadata !"tmp3", metadata !228, i32 318767215, metadata !911, i32 0, metadata !1297} ; [ DW_TAG_arg_variable ] [tmp3] [line 111]
!1331 = metadata !{float** @constrain_lincs.lincslam}
!1332 = metadata !{i32 786689, metadata !907, metadata !"lincslam", metadata !228, i32 335544432, metadata !911, i32 0, metadata !1297} ; [ DW_TAG_arg_variable ] [lincslam] [line 112]
!1333 = metadata !{i32 112, i32 0, metadata !907, metadata !1297}
!1334 = metadata !{float** @constrain_lincs.bllen0}
!1335 = metadata !{i32 786689, metadata !907, metadata !"bllen0", metadata !228, i32 352321648, metadata !911, i32 0, metadata !1297} ; [ DW_TAG_arg_variable ] [bllen0] [line 112]
!1336 = metadata !{float** @constrain_lincs.ddist}
!1337 = metadata !{i32 786689, metadata !907, metadata !"ddist", metadata !228, i32 369098864, metadata !911, i32 0, metadata !1297} ; [ DW_TAG_arg_variable ] [ddist] [line 112]
!1338 = metadata !{i32 786688, metadata !936, metadata !"len", metadata !228, i32 119, metadata !315, i32 0, metadata !1297} ; [ DW_TAG_auto_variable ] [len] [line 119]
!1339 = metadata !{i32 119, i32 0, metadata !936, metadata !1297}
!1340 = metadata !{i32 123, i32 0, metadata !936, metadata !1297}
!1341 = metadata !{i32 786688, metadata !936, metadata !"ncons", metadata !228, i32 117, metadata !231, i32 0, metadata !1297} ; [ DW_TAG_auto_variable ] [ncons] [line 117]
!1342 = metadata !{i32 124, i32 0, metadata !936, metadata !1297}
!1343 = metadata !{i32 126, i32 0, metadata !936, metadata !1297}
!1344 = metadata !{i32 128, i32 0, metadata !1345, metadata !1297}
!1345 = metadata !{i32 786443, metadata !1, metadata !936, i32 126, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1346 = metadata !{i32 786688, metadata !936, metadata !"iatom", metadata !228, i32 115, metadata !434, i32 0, metadata !1297} ; [ DW_TAG_auto_variable ] [iatom] [line 115]
!1347 = metadata !{i32 131, i32 0, metadata !1345, metadata !1297}
!1348 = metadata !{i32 786688, metadata !936, metadata !"at_c", metadata !228, i32 121, metadata !863, i32 0, metadata !1297} ; [ DW_TAG_auto_variable ] [at_c] [line 121]
!1349 = metadata !{i32 132, i32 0, metadata !1345, metadata !1297}
!1350 = metadata !{i32 786688, metadata !936, metadata !"at_cn", metadata !228, i32 121, metadata !490, i32 0, metadata !1297} ; [ DW_TAG_auto_variable ] [at_cn] [line 121]
!1351 = metadata !{i32 133, i32 0, metadata !1345, metadata !1297}
!1352 = metadata !{i32 786688, metadata !936, metadata !"at_cm", metadata !228, i32 121, metadata !490, i32 0, metadata !1297} ; [ DW_TAG_auto_variable ] [at_cm] [line 121]
!1353 = metadata !{i32 786688, metadata !936, metadata !"i", metadata !228, i32 116, metadata !231, i32 0, metadata !1297} ; [ DW_TAG_auto_variable ] [i] [line 116]
!1354 = metadata !{i32 135, i32 0, metadata !1355, metadata !1297}
!1355 = metadata !{i32 786443, metadata !1, metadata !1345, i32 135, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1356 = metadata !{i32 136, i32 0, metadata !1357, metadata !1297}
!1357 = metadata !{i32 786443, metadata !1, metadata !1355, i32 135, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1358 = metadata !{i32 786688, metadata !936, metadata !"a1", metadata !228, i32 118, metadata !231, i32 0, metadata !1297} ; [ DW_TAG_auto_variable ] [a1] [line 118]
!1359 = metadata !{i32 137, i32 0, metadata !1357, metadata !1297}
!1360 = metadata !{i32 786688, metadata !936, metadata !"a2", metadata !228, i32 118, metadata !231, i32 0, metadata !1297} ; [ DW_TAG_auto_variable ] [a2] [line 118]
!1361 = metadata !{i32 138, i32 0, metadata !1357, metadata !1297}
!1362 = metadata !{i32 142, i32 0, metadata !1357, metadata !1297}
!1363 = metadata !{i32 139, i32 0, metadata !1364, metadata !1297}
!1364 = metadata !{i32 786443, metadata !1, metadata !1357, i32 138, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1365 = metadata !{i32 140, i32 0, metadata !1364, metadata !1297}
!1366 = metadata !{i32 141, i32 0, metadata !1364, metadata !1297}
!1367 = metadata !{i32 143, i32 0, metadata !1357, metadata !1297}
!1368 = metadata !{i32 144, i32 0, metadata !1357, metadata !1297}
!1369 = metadata !{i32 148, i32 0, metadata !1357, metadata !1297}
!1370 = metadata !{i32 145, i32 0, metadata !1371, metadata !1297}
!1371 = metadata !{i32 786443, metadata !1, metadata !1357, i32 144, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1372 = metadata !{i32 146, i32 0, metadata !1371, metadata !1297}
!1373 = metadata !{i32 147, i32 0, metadata !1371, metadata !1297}
!1374 = metadata !{i32 149, i32 0, metadata !1357, metadata !1297}
!1375 = metadata !{i32 151, i32 0, metadata !1345, metadata !1297}
!1376 = metadata !{i32 153, i32 0, metadata !1377, metadata !1297}
!1377 = metadata !{i32 786443, metadata !1, metadata !1345, i32 153, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1378 = metadata !{i32 156, i32 0, metadata !1379, metadata !1297}
!1379 = metadata !{i32 786443, metadata !1, metadata !1377, i32 153, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1380 = metadata !{i32 154, i32 0, metadata !1379, metadata !1297}
!1381 = metadata !{i32 155, i32 0, metadata !1379, metadata !1297}
!1382 = metadata !{i32 159, i32 0, metadata !1345, metadata !1297}
!1383 = metadata !{i32 160, i32 0, metadata !1345, metadata !1297}
!1384 = metadata !{i32 161, i32 0, metadata !1345, metadata !1297}
!1385 = metadata !{i32 162, i32 0, metadata !1345, metadata !1297}
!1386 = metadata !{i32 163, i32 0, metadata !1345, metadata !1297}
!1387 = metadata !{i32 164, i32 0, metadata !1345, metadata !1297}
!1388 = metadata !{i32 165, i32 0, metadata !1345, metadata !1297}
!1389 = metadata !{i32 166, i32 0, metadata !1345, metadata !1297}
!1390 = metadata !{i32 167, i32 0, metadata !1345, metadata !1297}
!1391 = metadata !{i32 168, i32 0, metadata !1345, metadata !1297}
!1392 = metadata !{i32 169, i32 0, metadata !1345, metadata !1297}
!1393 = metadata !{i32 170, i32 0, metadata !1345, metadata !1297}
!1394 = metadata !{i32 171, i32 0, metadata !1345, metadata !1297}
!1395 = metadata !{i32 172, i32 0, metadata !1345, metadata !1297}
!1396 = metadata !{i32 173, i32 0, metadata !1345, metadata !1297}
!1397 = metadata !{i32 176, i32 0, metadata !1345, metadata !1297}
!1398 = metadata !{i32 786688, metadata !936, metadata !"nZeroLen", metadata !228, i32 117, metadata !231, i32 0, metadata !1297} ; [ DW_TAG_auto_variable ] [nZeroLen] [line 117]
!1399 = metadata !{i32 177, i32 0, metadata !1345, metadata !1297}
!1400 = metadata !{i32 178, i32 0, metadata !1401, metadata !1297}
!1401 = metadata !{i32 786443, metadata !1, metadata !1345, i32 178, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1402 = metadata !{i32 184, i32 0, metadata !1403, metadata !1297}
!1403 = metadata !{i32 786443, metadata !1, metadata !1401, i32 178, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1404 = metadata !{i32 197, i32 0, metadata !1403, metadata !1297}
!1405 = metadata !{i32 179, i32 0, metadata !1403, metadata !1297}
!1406 = metadata !{i32 786688, metadata !936, metadata !"j", metadata !228, i32 116, metadata !231, i32 0, metadata !1297} ; [ DW_TAG_auto_variable ] [j] [line 116]
!1407 = metadata !{i32 180, i32 0, metadata !1403, metadata !1297}
!1408 = metadata !{i32 181, i32 0, metadata !1403, metadata !1297}
!1409 = metadata !{i32 183, i32 0, metadata !1403, metadata !1297}
!1410 = metadata !{i32 786688, metadata !936, metadata !"type", metadata !228, i32 118, metadata !231, i32 0, metadata !1297} ; [ DW_TAG_auto_variable ] [type] [line 118]
!1411 = metadata !{i32 185, i32 0, metadata !1403, metadata !1297}
!1412 = metadata !{i32 786688, metadata !936, metadata !"len1", metadata !228, i32 119, metadata !315, i32 0, metadata !1297} ; [ DW_TAG_auto_variable ] [len1] [line 119]
!1413 = metadata !{i32 186, i32 0, metadata !1403, metadata !1297}
!1414 = metadata !{i32 196, i32 0, metadata !1403, metadata !1297}
!1415 = metadata !{i32 187, i32 0, metadata !1403, metadata !1297}
!1416 = metadata !{i32 188, i32 0, metadata !1403, metadata !1297}
!1417 = metadata !{i32 190, i32 0, metadata !1403, metadata !1297}
!1418 = metadata !{i32 192, i32 0, metadata !1403, metadata !1297}
!1419 = metadata !{i32 193, i32 0, metadata !1403, metadata !1297}
!1420 = metadata !{i32 194, i32 0, metadata !1403, metadata !1297}
!1421 = metadata !{i32 195, i32 0, metadata !1403, metadata !1297}
!1422 = metadata !{i32 786688, metadata !936, metadata !"im1", metadata !228, i32 120, metadata !315, i32 0, metadata !1297} ; [ DW_TAG_auto_variable ] [im1] [line 120]
!1423 = metadata !{i32 198, i32 0, metadata !1403, metadata !1297}
!1424 = metadata !{i32 786688, metadata !936, metadata !"im2", metadata !228, i32 120, metadata !315, i32 0, metadata !1297} ; [ DW_TAG_auto_variable ] [im2] [line 120]
!1425 = metadata !{i32 199, i32 0, metadata !1403, metadata !1297}
!1426 = metadata !{i32 201, i32 0, metadata !1403, metadata !1297}
!1427 = metadata !{i32 786688, metadata !936, metadata !"k", metadata !228, i32 116, metadata !231, i32 0, metadata !1297} ; [ DW_TAG_auto_variable ] [k] [line 116]
!1428 = metadata !{i32 202, i32 0, metadata !1429, metadata !1297}
!1429 = metadata !{i32 786443, metadata !1, metadata !1403, i32 202, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1430 = metadata !{i32 203, i32 0, metadata !1429, metadata !1297}
!1431 = metadata !{i32 204, i32 0, metadata !1429, metadata !1297}
!1432 = metadata !{i32 205, i32 0, metadata !1433, metadata !1297}
!1433 = metadata !{i32 786443, metadata !1, metadata !1403, i32 205, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1434 = metadata !{i32 209, i32 0, metadata !1403, metadata !1297}
!1435 = metadata !{i32 206, i32 0, metadata !1433, metadata !1297}
!1436 = metadata !{i32 207, i32 0, metadata !1433, metadata !1297}
!1437 = metadata !{i32 213, i32 0, metadata !1345, metadata !1297}
!1438 = metadata !{i32 214, i32 0, metadata !1439, metadata !1297}
!1439 = metadata !{i32 786443, metadata !1, metadata !1345, i32 214, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1440 = metadata !{i32 215, i32 0, metadata !1439, metadata !1297}
!1441 = metadata !{i32 216, i32 0, metadata !1345, metadata !1297}
!1442 = metadata !{i32 218, i32 0, metadata !1345, metadata !1297}
!1443 = metadata !{i32 220, i32 0, metadata !1444, metadata !1297}
!1444 = metadata !{i32 786443, metadata !1, metadata !1345, i32 219, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1445 = metadata !{i32 221, i32 0, metadata !1444, metadata !1297}
!1446 = metadata !{i32 222, i32 0, metadata !1444, metadata !1297}
!1447 = metadata !{i32 224, i32 0, metadata !1444, metadata !1297}
!1448 = metadata !{i32 225, i32 0, metadata !1444, metadata !1297}
!1449 = metadata !{i32 226, i32 0, metadata !1444, metadata !1297}
!1450 = metadata !{i32 227, i32 0, metadata !1444, metadata !1297}
!1451 = metadata !{i32 228, i32 0, metadata !1444, metadata !1297}
!1452 = metadata !{i32 232, i32 0, metadata !1453, metadata !1297}
!1453 = metadata !{i32 786443, metadata !1, metadata !1454, i32 231, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1454 = metadata !{i32 786443, metadata !1, metadata !1345, i32 231, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1455 = metadata !{i32 233, i32 0, metadata !1453, metadata !1297}
!1456 = metadata !{i32 234, i32 0, metadata !1457, metadata !1297}
!1457 = metadata !{i32 786443, metadata !1, metadata !1453, i32 234, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1458 = metadata !{i32 235, i32 0, metadata !1459, metadata !1297}
!1459 = metadata !{i32 786443, metadata !1, metadata !1457, i32 234, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1460 = metadata !{i32 244, i32 0, metadata !1459, metadata !1297}
!1461 = metadata !{i32 231, i32 0, metadata !1454, metadata !1297}
!1462 = metadata !{i32 786688, metadata !936, metadata !"n", metadata !228, i32 116, metadata !231, i32 0, metadata !1297} ; [ DW_TAG_auto_variable ] [n] [line 116]
!1463 = metadata !{i32 236, i32 0, metadata !1459, metadata !1297}
!1464 = metadata !{float 1.000000e+00}
!1465 = metadata !{i32 786688, metadata !936, metadata !"sign", metadata !228, i32 119, metadata !315, i32 0, metadata !1297} ; [ DW_TAG_auto_variable ] [sign] [line 119]
!1466 = metadata !{i32 239, i32 0, metadata !1459, metadata !1297}
!1467 = metadata !{i32 240, i32 0, metadata !1459, metadata !1297}
!1468 = metadata !{i32 786688, metadata !936, metadata !"cen", metadata !228, i32 116, metadata !231, i32 0, metadata !1297} ; [ DW_TAG_auto_variable ] [cen] [line 116]
!1469 = metadata !{i32 243, i32 0, metadata !1459, metadata !1297}
!1470 = metadata !{i32 294, i32 0, metadata !860, null}
!1471 = metadata !{i32 296, i32 0, metadata !901, null}
!1472 = metadata !{i32 297, i32 0, metadata !900, null}
!1473 = metadata !{i32 298, i32 0, metadata !900, null}
!1474 = metadata !{i32 300, i32 0, metadata !900, null}
!1475 = metadata !{i32 301, i32 0, metadata !1476, null}
!1476 = metadata !{i32 786443, metadata !1, metadata !900, i32 301, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1477 = metadata !{i32 302, i32 0, metadata !1476, null}
!1478 = metadata !{i32 305, i32 0, metadata !1479, null}
!1479 = metadata !{i32 786443, metadata !1, metadata !900, i32 305, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1480 = metadata !{i32 306, i32 0, metadata !1479, null}
!1481 = metadata !{i32 307, i32 0, metadata !1482, null}
!1482 = metadata !{i32 786443, metadata !1, metadata !1479, i32 306, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1483 = metadata !{i32 308, i32 0, metadata !1482, null}
!1484 = metadata !{i32 309, i32 0, metadata !1482, null}
!1485 = metadata !{i32 786689, metadata !902, metadata !"x", metadata !774, i32 16777413, metadata !315, i32 0, metadata !1484} ; [ DW_TAG_arg_variable ] [x] [line 197]
!1486 = metadata !{i32 197, i32 0, metadata !902, metadata !1484}
!1487 = metadata !{i32 199, i32 0, metadata !1488, metadata !1484}
!1488 = metadata !{i32 786443, metadata !773, metadata !902} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!1489 = metadata !{i32 310, i32 0, metadata !1482, null}
!1490 = metadata !{i32 786689, metadata !902, metadata !"x", metadata !774, i32 16777413, metadata !315, i32 0, metadata !1489} ; [ DW_TAG_arg_variable ] [x] [line 197]
!1491 = metadata !{i32 197, i32 0, metadata !902, metadata !1489}
!1492 = metadata !{i32 199, i32 0, metadata !1488, metadata !1489}
!1493 = metadata !{i32 311, i32 0, metadata !1482, null}
!1494 = metadata !{i32 786689, metadata !902, metadata !"x", metadata !774, i32 16777413, metadata !315, i32 0, metadata !1493} ; [ DW_TAG_arg_variable ] [x] [line 197]
!1495 = metadata !{i32 197, i32 0, metadata !902, metadata !1493}
!1496 = metadata !{i32 199, i32 0, metadata !1488, metadata !1493}
!1497 = metadata !{i32 312, i32 0, metadata !1482, null}
!1498 = metadata !{i32 314, i32 0, metadata !900, null}
!1499 = metadata !{i32 316, i32 0, metadata !900, null}
!1500 = metadata !{i32 317, i32 0, metadata !900, null}
!1501 = metadata !{i32 319, i32 0, metadata !900, null}
!1502 = metadata !{i32 322, i32 0, metadata !900, null}
!1503 = metadata !{i32 333, i32 0, metadata !900, null}
!1504 = metadata !{i32 343, i32 0, metadata !900, null}
!1505 = metadata !{i32 346, i32 0, metadata !1506, null}
!1506 = metadata !{i32 786443, metadata !1, metadata !899, i32 346, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1507 = metadata !{i32 347, i32 0, metadata !1506, null}
!1508 = metadata !{i32 348, i32 0, metadata !899, null}
!1509 = metadata !{i32 349, i32 0, metadata !899, null}
!1510 = metadata !{i32 351, i32 0, metadata !900, null}
!1511 = metadata !{i32 353, i32 0, metadata !1512, null}
!1512 = metadata !{i32 786443, metadata !1, metadata !900, i32 352, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1513 = metadata !{i32 355, i32 0, metadata !1514, null}
!1514 = metadata !{i32 786443, metadata !1, metadata !1512, i32 354, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1515 = metadata !{i32 356, i32 0, metadata !1514, null}
!1516 = metadata !{i32 358, i32 0, metadata !1514, null}
!1517 = metadata !{i32 359, i32 0, metadata !1514, null}
!1518 = metadata !{i32 361, i32 0, metadata !1514, null}
!1519 = metadata !{i32 364, i32 0, metadata !900, null}
!1520 = metadata !{i32 366, i32 0, metadata !1521, null}
!1521 = metadata !{i32 786443, metadata !1, metadata !900, i32 365, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1522 = metadata !{i32 378, i32 0, metadata !1521, null}
!1523 = metadata !{i32 368, i32 0, metadata !1524, null}
!1524 = metadata !{i32 786443, metadata !1, metadata !1521, i32 367, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1525 = metadata !{i32 369, i32 0, metadata !1524, null}
!1526 = metadata !{i32 374, i32 0, metadata !1524, null}
!1527 = metadata !{i32 375, i32 0, metadata !1524, null}
!1528 = metadata !{i32 376, i32 0, metadata !1524, null}
!1529 = metadata !{i32 377, i32 0, metadata !1524, null}
!1530 = metadata !{i32 379, i32 0, metadata !1521, null}
!1531 = metadata !{i32 380, i32 0, metadata !1532, null}
!1532 = metadata !{i32 786443, metadata !1, metadata !900, i32 380, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1533 = metadata !{i32 381, i32 0, metadata !1532, null}
!1534 = metadata !{i32 382, i32 0, metadata !1532, null}
!1535 = metadata !{i32 392, i32 0, metadata !1536, null}
!1536 = metadata !{i32 786443, metadata !1, metadata !901, i32 385, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/constr.c]
!1537 = metadata !{i32 404, i32 0, metadata !901, null}
!1538 = metadata !{i32 405, i32 0, metadata !901, null}
!1539 = metadata !{i32 406, i32 0, metadata !901, null}
!1540 = metadata !{i32 408, i32 0, metadata !860, null}
!1541 = metadata !{i32 101, i32 0, metadata !963, null}
!1542 = metadata !{i32 103, i32 0, metadata !963, null}
