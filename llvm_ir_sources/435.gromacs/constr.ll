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
@low_constrain.nsettle = internal unnamed_addr global i32 0, align 4
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
@constrain_lincs.nc = internal unnamed_addr global i32 0, align 4
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
  %call = tail call fastcc i32 @low_constrain(%struct._IO_FILE* %log, %struct.t_topology* %top, %struct.t_inputrec* %ir, i32 %step, %struct.t_mdatoms* %md, i32 %start, i32 %homenr, [3 x float]* %x, [3 x float]* %xprime, [3 x float]* %min_proj, [3 x float]* %box, float %lambda, float* %dvdlambda, %struct.t_nrnb* %nrnb, i32 %bCoordinates, i32 0) #5
  ret i32 %call
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @low_constrain(%struct._IO_FILE* %log, %struct.t_topology* %top, %struct.t_inputrec* %ir, i32 %step, %struct.t_mdatoms* nocapture %md, i32 %start, i32 %homenr, [3 x float]* %x, [3 x float]* %xprime, [3 x float]* %min_proj, [3 x float]* %box, float %lambda, float* %dvdlambda, %struct.t_nrnb* %nrnb, i32 %bCoordinates, i32 %bInit) #0 {
entry:
  %buf.i = alloca [256 x i8], align 16
  %error = alloca i32, align 4
  %arrayidx = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 2
  %idef2 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1
  %tobool = icmp eq i32 %bInit, 0
  br i1 %tobool, label %if.else187, label %if.then

if.then:                                          ; preds = %entry
  %etc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 27
  %0 = load i32* %etc, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %epc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 28
  %1 = load i32* %epc, align 4, !tbaa !0
  %cmp3 = icmp eq i32 %1, 1
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  call void @please_cite(%struct._IO_FILE* %log, i8* getelementptr inbounds ([13 x i8]* @.str2, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then4, %lor.lhs.false
  %nr = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 29, i32 0
  %2 = load i32* %nr, align 4, !tbaa !0
  %div = sdiv i32 %2, 2
  store i32 %div, i32* @low_constrain.nsettle, align 4, !tbaa !0
  %cmp6 = icmp sgt i32 %2, 1
  br i1 %cmp6, label %if.then7, label %if.end36

if.then7:                                         ; preds = %if.end
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 461, i32 %div, i32 4) #6
  %3 = bitcast i8* %call to i32*
  store i32* %3, i32** @low_constrain.owptr, align 8, !tbaa !3
  %iatoms = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 29, i32 2
  %4 = load i32** %iatoms, align 8, !tbaa !3
  %5 = load i32* %4, align 4, !tbaa !0
  store i32 %5, i32* @low_constrain.settle_type, align 4, !tbaa !0
  %6 = load i32* %nr, align 4, !tbaa !0
  %cmp14419 = icmp sgt i32 %6, 0
  br i1 %cmp14419, label %for.body, label %for.end

for.body:                                         ; preds = %if.then7, %if.end26.for.body_crit_edge
  %7 = phi i32 [ %.pre440, %if.end26.for.body_crit_edge ], [ %5, %if.then7 ]
  %8 = phi i32* [ %11, %if.end26.for.body_crit_edge ], [ %3, %if.then7 ]
  %9 = phi i32* [ %12, %if.end26.for.body_crit_edge ], [ %4, %if.then7 ]
  %indvars.iv436 = phi i64 [ %indvars.iv.next437, %if.end26.for.body_crit_edge ], [ 0, %if.then7 ]
  %arrayidx18 = getelementptr inbounds i32* %9, i64 %indvars.iv436
  %10 = load i32* %arrayidx18, align 4, !tbaa !0
  %cmp19 = icmp eq i32 %10, %7
  br i1 %cmp19, label %if.end26, label %if.then20

if.then20:                                        ; preds = %for.body
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str5, i64 0, i64 0), i32 %7, i32 %10) #6
  %.pre = load i32** %iatoms, align 8, !tbaa !3
  %.pre439 = load i32** @low_constrain.owptr, align 8, !tbaa !3
  br label %if.end26

if.end26:                                         ; preds = %for.body, %if.then20
  %11 = phi i32* [ %8, %for.body ], [ %.pre439, %if.then20 ]
  %12 = phi i32* [ %9, %for.body ], [ %.pre, %if.then20 ]
  %13 = or i64 %indvars.iv436, 1
  %arrayidx31 = getelementptr inbounds i32* %12, i64 %13
  %14 = load i32* %arrayidx31, align 4, !tbaa !0
  %15 = trunc i64 %indvars.iv436 to i32
  %div32 = sdiv i32 %15, 2
  %idxprom33 = sext i32 %div32 to i64
  %arrayidx34 = getelementptr inbounds i32* %11, i64 %idxprom33
  store i32 %14, i32* %arrayidx34, align 4, !tbaa !0
  %indvars.iv.next437 = add i64 %indvars.iv436, 2
  %16 = load i32* %nr, align 4, !tbaa !0
  %17 = trunc i64 %indvars.iv.next437 to i32
  %cmp14 = icmp slt i32 %17, %16
  br i1 %cmp14, label %if.end26.for.body_crit_edge, label %for.end

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  %.pre440 = load i32* @low_constrain.settle_type, align 4, !tbaa !0
  br label %for.body

for.end:                                          ; preds = %if.end26, %if.then7
  call void @please_cite(%struct._IO_FILE* %log, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #6
  br label %if.end36

if.end36:                                         ; preds = %for.end, %if.end
  %nr39 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 27, i32 0
  %18 = load i32* %nr39, align 4, !tbaa !0
  %div40 = sdiv i32 %18, 3
  %cmp41 = icmp sgt i32 %18, 2
  br i1 %cmp41, label %if.then42, label %if.end173

if.then42:                                        ; preds = %if.end36
  %nodeid = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 1
  %19 = load i32* %nodeid, align 4, !tbaa !0
  %cmp43 = icmp sgt i32 %19, 0
  br i1 %cmp43, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.then42
  %sub = add nsw i32 %19, -1
  %idxprom45 = sext i32 %sub to i64
  %arrayidx46 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 2, i32 0, i64 %idxprom45
  %20 = load i32* %arrayidx46, align 4, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %if.then42, %cond.true
  %cond = phi i32 [ %20, %cond.true ], [ 0, %if.then42 ]
  %idxprom48 = sext i32 %19 to i64
  %arrayidx50 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 2, i32 0, i64 %idxprom48
  %21 = load i32* %arrayidx50, align 4, !tbaa !0
  %sub51 = sub nsw i32 %21, %cond
  store i32 %sub51, i32* @low_constrain.nblocks, align 4, !tbaa !0
  %22 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool52 = icmp eq %struct._IO_FILE* %22, null
  br i1 %tobool52, label %for.cond65.preheader.lr.ph, label %if.then53

if.then53:                                        ; preds = %cond.end
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([36 x i8]* @.str7, i64 0, i64 0), i32 %div40, i32 %cond, i32 %sub51) #6
  br label %for.cond65.preheader.lr.ph

for.cond65.preheader.lr.ph:                       ; preds = %if.then53, %cond.end
  %nr56 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1
  %23 = load i32* %nr56, align 4, !tbaa !0
  %call57 = call i32* @make_invblock(%struct.t_block* %arrayidx, i32 %23) #6
  %iatoms60 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 27, i32 2
  %24 = load i32** %iatoms60, align 8, !tbaa !3
  %call61 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 499, i32 %div40, i32 16) #6
  %25 = bitcast i8* %call61 to %struct.t_sortblock*
  br label %for.cond65.preheader

for.cond65.preheader:                             ; preds = %for.cond65.preheader.lr.ph, %for.end76
  %indvars.iv434 = phi i64 [ 0, %for.cond65.preheader.lr.ph ], [ %indvars.iv.next435, %for.end76 ]
  %iatom.0418 = phi i32* [ %24, %for.cond65.preheader.lr.ph ], [ %add.ptr, %for.end76 ]
  br label %for.body67

for.body67:                                       ; preds = %for.body67, %for.cond65.preheader
  %indvars.iv430 = phi i64 [ 0, %for.cond65.preheader ], [ %indvars.iv.next431, %for.body67 ]
  %arrayidx69 = getelementptr inbounds i32* %iatom.0418, i64 %indvars.iv430
  %26 = load i32* %arrayidx69, align 4, !tbaa !0
  %arrayidx74 = getelementptr inbounds %struct.t_sortblock* %25, i64 %indvars.iv434, i32 0, i64 %indvars.iv430
  store i32 %26, i32* %arrayidx74, align 4, !tbaa !0
  %indvars.iv.next431 = add i64 %indvars.iv430, 1
  %lftr.wideiv432 = trunc i64 %indvars.iv.next431 to i32
  %exitcond433 = icmp eq i32 %lftr.wideiv432, 3
  br i1 %exitcond433, label %for.end76, label %for.body67

for.end76:                                        ; preds = %for.body67
  %arrayidx77 = getelementptr inbounds i32* %iatom.0418, i64 1
  %27 = load i32* %arrayidx77, align 4, !tbaa !0
  %idxprom78 = sext i32 %27 to i64
  %arrayidx79 = getelementptr inbounds i32* %call57, i64 %idxprom78
  %28 = load i32* %arrayidx79, align 4, !tbaa !0
  %blocknr = getelementptr inbounds %struct.t_sortblock* %25, i64 %indvars.iv434, i32 1
  store i32 %28, i32* %blocknr, align 4, !tbaa !0
  %indvars.iv.next435 = add i64 %indvars.iv434, 1
  %add.ptr = getelementptr inbounds i32* %iatom.0418, i64 3
  %29 = trunc i64 %indvars.iv.next435 to i32
  %cmp63 = icmp slt i32 %29, %div40
  br i1 %cmp63, label %for.cond65.preheader, label %for.end84

for.end84:                                        ; preds = %for.end76
  %30 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool85 = icmp eq %struct._IO_FILE* %30, null
  br i1 %tobool85, label %if.end88, label %if.then86

if.then86:                                        ; preds = %for.end84
  call fastcc void @pr_sortblock(%struct._IO_FILE* %30, i8* getelementptr inbounds ([15 x i8]* @.str9, i64 0, i64 0), i32 %div40, %struct.t_sortblock* %25) #5
  %31 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %32 = call i64 @fwrite(i8* getelementptr inbounds ([27 x i8]* @.str10, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %31)
  br label %if.end88

if.end88:                                         ; preds = %for.end84, %if.then86
  %conv = sext i32 %div40 to i64
  call void @qsort(i8* %call61, i64 %conv, i64 16, i32 (i8*, i8*)* @pcomp) #6
  %33 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool89 = icmp eq %struct._IO_FILE* %33, null
  br i1 %tobool89, label %for.cond100.preheader.lr.ph, label %if.then90

if.then90:                                        ; preds = %if.end88
  %34 = load i32* @pcount, align 4, !tbaa !0
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([26 x i8]* @.str11, i64 0, i64 0), i32 %34) #6
  %35 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  call fastcc void @pr_sortblock(%struct._IO_FILE* %35, i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), i32 %div40, %struct.t_sortblock* %25) #5
  br label %for.cond100.preheader.lr.ph

for.cond100.preheader.lr.ph:                      ; preds = %if.then90, %if.end88
  %36 = load i32** %iatoms60, align 8, !tbaa !3
  br label %for.cond100.preheader

for.cond100.preheader:                            ; preds = %for.cond100.preheader.lr.ph, %for.inc114
  %indvars.iv428 = phi i64 [ 0, %for.cond100.preheader.lr.ph ], [ %indvars.iv.next429, %for.inc114 ]
  %iatom.1414 = phi i32* [ %36, %for.cond100.preheader.lr.ph ], [ %add.ptr116, %for.inc114 ]
  br label %for.body103

for.body103:                                      ; preds = %for.body103, %for.cond100.preheader
  %indvars.iv425 = phi i64 [ 0, %for.cond100.preheader ], [ %indvars.iv.next426, %for.body103 ]
  %arrayidx108 = getelementptr inbounds %struct.t_sortblock* %25, i64 %indvars.iv428, i32 0, i64 %indvars.iv425
  %37 = load i32* %arrayidx108, align 4, !tbaa !0
  %arrayidx110 = getelementptr inbounds i32* %iatom.1414, i64 %indvars.iv425
  store i32 %37, i32* %arrayidx110, align 4, !tbaa !0
  %indvars.iv.next426 = add i64 %indvars.iv425, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next426 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc114, label %for.body103

for.inc114:                                       ; preds = %for.body103
  %indvars.iv.next429 = add i64 %indvars.iv428, 1
  %add.ptr116 = getelementptr inbounds i32* %iatom.1414, i64 3
  %38 = trunc i64 %indvars.iv.next429 to i32
  %cmp97 = icmp slt i32 %38, %div40
  br i1 %cmp97, label %for.cond100.preheader, label %for.body123.lr.ph

for.body123.lr.ph:                                ; preds = %for.inc114
  %39 = load i32* @low_constrain.nblocks, align 4, !tbaa !0
  %add118 = add nsw i32 %39, 1
  %call119 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 528, i32 %add118, i32 4) #6
  %40 = bitcast i8* %call119 to i32*
  store i32* %40, i32** @low_constrain.sblock, align 8, !tbaa !3
  br label %for.body123

for.body123:                                      ; preds = %for.body123.lr.ph, %for.inc137
  %indvars.iv423 = phi i64 [ 0, %for.body123.lr.ph ], [ %indvars.iv.next424, %for.inc137 ]
  %j.1409 = phi i32 [ 0, %for.body123.lr.ph ], [ %j.2, %for.inc137 ]
  %bnr.0408 = phi i32 [ -2, %for.body123.lr.ph ], [ %bnr.1, %for.inc137 ]
  %blocknr126 = getelementptr inbounds %struct.t_sortblock* %25, i64 %indvars.iv423, i32 1
  %41 = load i32* %blocknr126, align 4, !tbaa !0
  %cmp127 = icmp eq i32 %41, %bnr.0408
  br i1 %cmp127, label %for.inc137, label %if.then129

if.then129:                                       ; preds = %for.body123
  %42 = trunc i64 %indvars.iv423 to i32
  %mul = mul nsw i32 %42, 3
  %inc133 = add nsw i32 %j.1409, 1
  %idxprom134 = sext i32 %j.1409 to i64
  %arrayidx135 = getelementptr inbounds i32* %40, i64 %idxprom134
  store i32 %mul, i32* %arrayidx135, align 4, !tbaa !0
  br label %for.inc137

for.inc137:                                       ; preds = %for.body123, %if.then129
  %bnr.1 = phi i32 [ %41, %if.then129 ], [ %bnr.0408, %for.body123 ]
  %j.2 = phi i32 [ %inc133, %if.then129 ], [ %j.1409, %for.body123 ]
  %indvars.iv.next424 = add i64 %indvars.iv423, 1
  %43 = trunc i64 %indvars.iv.next424 to i32
  %cmp121 = icmp slt i32 %43, %div40
  br i1 %cmp121, label %for.body123, label %for.end139

for.end139:                                       ; preds = %for.inc137
  %mul140 = mul nsw i32 %div40, 3
  %idxprom142 = sext i32 %j.2 to i64
  %arrayidx143 = getelementptr inbounds i32* %40, i64 %idxprom142
  store i32 %mul140, i32* %arrayidx143, align 4, !tbaa !0
  %44 = load i32* @low_constrain.nblocks, align 4, !tbaa !0
  %cmp145 = icmp eq i32 %j.2, %44
  %tobool147 = icmp eq %struct._IO_FILE* %log, null
  %or.cond = or i1 %cmp145, %tobool147
  br i1 %or.cond, label %if.end172, label %for.body154.lr.ph

for.body154.lr.ph:                                ; preds = %for.end139
  %inc141 = add nsw i32 %j.2, 1
  %call149 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([12 x i8]* @.str14, i64 0, i64 0), i32 %cond) #6
  %45 = load i32* @low_constrain.nblocks, align 4, !tbaa !0
  %call150 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([31 x i8]* @.str15, i64 0, i64 0), i32 %inc141, i32 %45, i32 %div40) #6
  br label %for.body154

for.cond162.preheader:                            ; preds = %for.body154
  %46 = load i32* @low_constrain.nblocks, align 4, !tbaa !0
  %cmp163403 = icmp slt i32 %46, 0
  br i1 %cmp163403, label %for.end171, label %for.body165

for.body154:                                      ; preds = %for.body154.lr.ph, %for.body154
  %indvars.iv421 = phi i64 [ 0, %for.body154.lr.ph ], [ %indvars.iv.next422, %for.body154 ]
  %blocknr157 = getelementptr inbounds %struct.t_sortblock* %25, i64 %indvars.iv421, i32 1
  %47 = load i32* %blocknr157, align 4, !tbaa !0
  %48 = trunc i64 %indvars.iv421 to i32
  %call158 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([28 x i8]* @.str16, i64 0, i64 0), i32 %48, i32 %47) #6
  %indvars.iv.next422 = add i64 %indvars.iv421, 1
  %49 = trunc i64 %indvars.iv.next422 to i32
  %cmp152 = icmp slt i32 %49, %div40
  br i1 %cmp152, label %for.body154, label %for.cond162.preheader

for.body165:                                      ; preds = %for.cond162.preheader, %for.body165
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body165 ], [ 0, %for.cond162.preheader ]
  %50 = load i32** @low_constrain.sblock, align 8, !tbaa !3
  %arrayidx167 = getelementptr inbounds i32* %50, i64 %indvars.iv
  %51 = load i32* %arrayidx167, align 4, !tbaa !0
  %52 = trunc i64 %indvars.iv to i32
  %call168 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([17 x i8]* @.str17, i64 0, i64 0), i32 %52, i32 %51) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %53 = load i32* @low_constrain.nblocks, align 4, !tbaa !0
  %cmp163 = icmp slt i32 %52, %53
  br i1 %cmp163, label %for.body165, label %for.end171

for.end171:                                       ; preds = %for.body165, %for.cond162.preheader
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([70 x i8]* @.str18, i64 0, i64 0)) #6
  br label %if.end172

if.end172:                                        ; preds = %for.end139, %for.end171
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 550, i8* %call61) #6
  %54 = bitcast i32* %call57 to i8*
  call void @save_free(i8* getelementptr inbounds ([11 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 551, i8* %54) #6
  %.pr = load i32* %nr39, align 4, !tbaa !0
  br label %if.end173

if.end173:                                        ; preds = %if.end172, %if.end36
  %55 = phi i32 [ %.pr, %if.end172 ], [ %18, %if.end36 ]
  %tobool177 = icmp eq i32 %55, 0
  br i1 %tobool177, label %if.end263, label %if.then178

if.then178:                                       ; preds = %if.end173
  %eConstrAlg = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 64
  %56 = load i32* %eConstrAlg, align 4, !tbaa !0
  %cmp179 = icmp eq i32 %56, 0
  %tobool182 = icmp eq i32 %bCoordinates, 0
  %or.cond399 = or i1 %cmp179, %tobool182
  %57 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  br i1 %or.cond399, label %if.then183, label %if.else

if.then183:                                       ; preds = %if.then178
  call void @please_cite(%struct._IO_FILE* %57, i8* getelementptr inbounds ([8 x i8]* @.str20, i64 0, i64 0)) #6
  %call184 = call fastcc i32 @constrain_lincs(%struct.t_topology* %top, %struct.t_inputrec* %ir, i32 0, %struct.t_mdatoms* %md, i32 %start, i32 %homenr, [3 x float]* null, [3 x float]* null, [3 x float]* null, float 0.000000e+00, float* null, i32 %bCoordinates, i32 1, %struct.t_nrnb* %nrnb) #5
  br label %if.end263

if.else:                                          ; preds = %if.then178
  call void @please_cite(%struct._IO_FILE* %57, i8* getelementptr inbounds ([12 x i8]* @.str21, i64 0, i64 0)) #6
  br label %if.end263

if.else187:                                       ; preds = %entry
  %58 = load i32* @low_constrain.nblocks, align 4, !tbaa !0
  %cmp188 = icmp sgt i32 %58, 0
  br i1 %cmp188, label %if.then190, label %if.end215

if.then190:                                       ; preds = %if.else187
  call void @_where(i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 568) #6
  %eConstrAlg191 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 64
  %59 = load i32* %eConstrAlg191, align 4, !tbaa !0
  switch i32 %59, label %if.end215 [
    i32 1, label %if.then194
    i32 0, label %if.then200
  ]

if.then194:                                       ; preds = %if.then190
  %60 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %invmass = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5
  %61 = load float** %invmass, align 8, !tbaa !3
  %62 = load i32* @low_constrain.nblocks, align 4, !tbaa !0
  %63 = load i32** @low_constrain.sblock, align 8, !tbaa !3
  %call195 = call i32 @bshakef(%struct._IO_FILE* %60, i32 %homenr, float* %61, i32 %62, i32* %63, %struct.t_idef* %idef2, %struct.t_inputrec* %ir, [3 x float]* %box, [3 x float]* %x, [3 x float]* %xprime, %struct.t_nrnb* %nrnb, float %lambda, float* %dvdlambda, i32 1) #6
  br label %if.end203

if.then200:                                       ; preds = %if.then190
  %call201 = call fastcc i32 @constrain_lincs(%struct.t_topology* %top, %struct.t_inputrec* %ir, i32 %step, %struct.t_mdatoms* %md, i32 %start, i32 %homenr, [3 x float]* %x, [3 x float]* %xprime, [3 x float]* %min_proj, float %lambda, float* %dvdlambda, i32 %bCoordinates, i32 0, %struct.t_nrnb* %nrnb) #5
  br label %if.end203

if.end203:                                        ; preds = %if.then200, %if.then194
  %bOK.0 = phi i32 [ %call195, %if.then194 ], [ %call201, %if.then200 ]
  %tobool204 = icmp eq i32 %bOK.0, 0
  %64 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %tobool208 = icmp ne %struct._IO_FILE* %64, null
  %or.cond264 = and i1 %tobool204, %tobool208
  br i1 %or.cond264, label %if.then209, label %if.end215

if.then209:                                       ; preds = %if.end203
  %65 = load i32* %eConstrAlg191, align 4, !tbaa !0
  %idxprom211 = sext i32 %65 to i64
  %arrayidx212 = getelementptr inbounds [3 x i8*]* @eshake_names, i64 0, i64 %idxprom211
  %66 = load i8** %arrayidx212, align 8, !tbaa !3
  %call213 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([45 x i8]* @.str22, i64 0, i64 0), i8* %66, i32 %step) #6
  br label %if.end215

if.end215:                                        ; preds = %if.then190, %if.then209, %if.end203, %if.else187
  %bOK.1 = phi i32 [ 0, %if.then209 ], [ %bOK.0, %if.end203 ], [ 1, %if.else187 ], [ 1, %if.then190 ]
  %67 = load i32* @low_constrain.nsettle, align 4, !tbaa !0
  %cmp216 = icmp sgt i32 %67, 0
  br i1 %cmp216, label %if.then218, label %if.end257

if.then218:                                       ; preds = %if.end215
  %68 = load i32** @low_constrain.owptr, align 8, !tbaa !3
  %69 = load i32* %68, align 4, !tbaa !0
  %idxprom220 = sext i32 %69 to i64
  %massA = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 2
  %70 = load float** %massA, align 8, !tbaa !3
  %arrayidx221 = getelementptr inbounds float* %70, i64 %idxprom220
  %71 = load float* %arrayidx221, align 4, !tbaa !4
  %add222 = add nsw i32 %69, 1
  %idxprom223 = sext i32 %add222 to i64
  %arrayidx225 = getelementptr inbounds float* %70, i64 %idxprom223
  %72 = load float* %arrayidx225, align 4, !tbaa !4
  %73 = load i32* @low_constrain.settle_type, align 4, !tbaa !0
  %idxprom226 = sext i32 %73 to i64
  %iparams = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 4
  %74 = load %union.t_iparams** %iparams, align 8, !tbaa !3
  %doh = getelementptr inbounds %union.t_iparams* %74, i64 %idxprom226, i32 0, i32 0
  %75 = load float* %doh, align 4, !tbaa !4
  %76 = getelementptr inbounds %union.t_iparams* %74, i64 %idxprom226, i32 0, i32 1
  %77 = load float* %76, align 4, !tbaa !4
  %78 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 0, i64 0
  %arraydecay236 = getelementptr inbounds [3 x float]* %xprime, i64 0, i64 0
  call void @csettle(%struct._IO_FILE* %78, i32 %67, i32* %68, float* %arraydecay, float* %arraydecay236, float %75, float %77, float %71, float %72, i32* %error) #6
  %79 = load i32* @low_constrain.nsettle, align 4, !tbaa !0
  %conv237 = sitofp i32 %79 to double
  %arrayidx238 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 119
  %80 = load double* %arrayidx238, align 8, !tbaa !5
  %add239 = fadd double %80, %conv237
  store double %add239, double* %arrayidx238, align 8, !tbaa !5
  %81 = load i32* %error, align 4, !tbaa !0
  %.lobit = lshr i32 %81, 31
  %tobool242 = icmp eq i32 %.lobit, 0
  %82 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %tobool246 = icmp ne %struct._IO_FILE* %82, null
  %or.cond266 = and i1 %tobool242, %tobool246
  br i1 %or.cond266, label %if.end257.thread, label %if.end257

if.end257.thread:                                 ; preds = %if.then218
  %init_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 14
  %83 = load float* %init_t, align 4, !tbaa !4
  %conv248 = sitofp i32 %step to float
  %delta_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %84 = load float* %delta_t, align 4, !tbaa !4
  %mul249 = fmul float %conv248, %84
  %add250 = fadd float %83, %mul249
  %conv251 = fpext float %add250 to double
  %idxprom252 = sext i32 %81 to i64
  %85 = load i32** @low_constrain.owptr, align 8, !tbaa !3
  %arrayidx253 = getelementptr inbounds i32* %85, i64 %idxprom252
  %86 = load i32* %arrayidx253, align 4, !tbaa !0
  %add254 = add nsw i32 %86, 1
  %call255 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([120 x i8]* @.str23, i64 0, i64 0), double %conv251, i32 %add254) #6
  br label %if.then261

if.end257:                                        ; preds = %if.then218, %if.end215
  %bOK.2 = phi i32 [ %.lobit, %if.then218 ], [ %bOK.1, %if.end215 ]
  %tobool258 = icmp eq i32 %bOK.2, 0
  br i1 %tobool258, label %if.then261, label %if.end263

if.then261:                                       ; preds = %if.end257.thread, %if.end257
  %atoms = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2
  %87 = getelementptr inbounds [256 x i8]* %buf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %87) #2
  %sub.i = add nsw i32 %step, -1
  %call.i = call i32 (i8*, i8*, ...)* @sprintf(i8* %87, i8* getelementptr inbounds ([11 x i8]* @.str24, i64 0, i64 0), i32 %sub.i) #6
  call void @write_sto_conf(i8* %87, i8* getelementptr inbounds ([22 x i8]* @.str25, i64 0, i64 0), %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* null, [3 x float]* %box) #6
  %call3.i = call i32 (i8*, i8*, ...)* @sprintf(i8* %87, i8* getelementptr inbounds ([11 x i8]* @.str24, i64 0, i64 0), i32 %step) #6
  call void @write_sto_conf(i8* %87, i8* getelementptr inbounds ([8 x i8]* @.str26, i64 0, i64 0), %struct.t_atoms* %atoms, [3 x float]* %xprime, [3 x float]* null, [3 x float]* %box) #6
  %88 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %tobool.i = icmp eq %struct._IO_FILE* %88, null
  br i1 %tobool.i, label %dump_confs.exit, label %if.then.i

if.then.i:                                        ; preds = %if.then261
  %89 = call i64 @fwrite(i8* getelementptr inbounds ([55 x i8]* @.str27, i64 0, i64 0), i64 54, i64 1, %struct._IO_FILE* %88) #2
  br label %dump_confs.exit

dump_confs.exit:                                  ; preds = %if.then261, %if.then.i
  %90 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %91 = call i64 @fwrite(i8* getelementptr inbounds ([55 x i8]* @.str27, i64 0, i64 0), i64 54, i64 1, %struct._IO_FILE* %90) #2
  call void @llvm.lifetime.end(i64 256, i8* %87) #2
  br label %if.end263

if.end263:                                        ; preds = %if.end173, %dump_confs.exit, %if.end257, %if.else, %if.then183
  %bOK.3 = phi i32 [ %call184, %if.then183 ], [ 1, %if.else ], [ 1, %if.end173 ], [ 0, %dump_confs.exit ], [ %bOK.2, %if.end257 ]
  ret i32 %bOK.3
}

; Function Attrs: nounwind optsize uwtable
define i32 @count_constraints(%struct.t_topology* nocapture %top, %struct.t_commrec* %cr) #0 {
entry:
  %nc = alloca i32, align 4
  %nr = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 29, i32 0
  %0 = load i32* %nr, align 4, !tbaa !0
  %mul = mul nsw i32 %0, 3
  %div = sdiv i32 %mul, 2
  %nr4 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 27, i32 0
  %1 = load i32* %nr4, align 4, !tbaa !0
  %div5 = sdiv i32 %1, 3
  %add = add nsw i32 %div5, %div
  store i32 %add, i32* %nc, align 4, !tbaa !0
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %2 = load i32* %nnodes, align 4, !tbaa !0
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %3 = load i32* %nthreads, align 4, !tbaa !0
  %cmp6 = icmp sgt i32 %3, 1
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @gmx_sumi(i32 1, i32* %nc, %struct.t_commrec* %cr) #6
  %.pre = load i32* %nc, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %4 = phi i32 [ %.pre, %if.then ], [ %add, %lor.lhs.false ]
  ret i32 %4
}

; Function Attrs: optsize
declare void @gmx_sumi(i32, i32*, %struct.t_commrec*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @init_constraints(%struct._IO_FILE* %log, %struct.t_topology* %top, %struct.t_inputrec* %ir, %struct.t_mdatoms* nocapture %md, i32 %start, i32 %homenr, i32 %bOnlyCoords, %struct.t_commrec* %cr) #0 {
entry:
  %call = tail call fastcc i32 @low_constrain(%struct._IO_FILE* %log, %struct.t_topology* %top, %struct.t_inputrec* %ir, i32 0, %struct.t_mdatoms* %md, i32 %start, i32 %homenr, [3 x float]* null, [3 x float]* null, [3 x float]* null, [3 x float]* null, float 0.000000e+00, float* null, %struct.t_nrnb* null, i32 %bOnlyCoords, i32 1) #5
  %call1 = tail call i32 @count_constraints(%struct.t_topology* %top, %struct.t_commrec* %cr) #5
  ret i32 %call1
}

; Function Attrs: nounwind optsize uwtable
define void @lincs_warning([3 x float]* nocapture %x, [3 x float]* nocapture %xprime, i32 %ncons, i32* nocapture %bla1, i32* nocapture %bla2, float* nocapture %bllen, float %wangle) #0 {
entry:
  %buf = alloca [4096 x i8], align 16
  %0 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %0) #2
  %conv = fpext float %wangle to double
  %mul = fmul double %conv, 0x3F91DF46A2529D39
  %call = call double @cos(double %mul) #6
  %conv1 = fptrunc double %call to float
  %call3 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([102 x i8]* @.str, i64 0, i64 0), double %conv) #6
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* %0) #6
  %2 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %tobool = icmp eq %struct._IO_FILE* %2, null
  br i1 %tobool, label %for.cond.preheader, label %if.then

if.then:                                          ; preds = %entry
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* %0) #6
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry, %if.then
  %cmp103 = icmp sgt i32 %ncons, 0
  br i1 %cmp103, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %bla1, i64 %indvars.iv
  %3 = load i32* %arrayidx, align 4, !tbaa !0
  %arrayidx10 = getelementptr inbounds i32* %bla2, i64 %indvars.iv
  %4 = load i32* %arrayidx10, align 4, !tbaa !0
  %idxprom11 = sext i32 %3 to i64
  %arraydecay13 = getelementptr inbounds [3 x float]* %x, i64 %idxprom11, i64 0
  %idxprom14 = sext i32 %4 to i64
  %arraydecay16 = getelementptr inbounds [3 x float]* %x, i64 %idxprom14, i64 0
  %5 = load float* %arraydecay13, align 4, !tbaa !4
  %6 = load float* %arraydecay16, align 4, !tbaa !4
  %sub.i = fsub float %5, %6
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom11, i64 1
  %7 = load float* %arrayidx2.i, align 4, !tbaa !4
  %arrayidx3.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom14, i64 1
  %8 = load float* %arrayidx3.i, align 4, !tbaa !4
  %sub4.i = fsub float %7, %8
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom11, i64 2
  %9 = load float* %arrayidx5.i, align 4, !tbaa !4
  %arrayidx6.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom14, i64 2
  %10 = load float* %arrayidx6.i, align 4, !tbaa !4
  %sub7.i = fsub float %9, %10
  %arraydecay20 = getelementptr inbounds [3 x float]* %xprime, i64 %idxprom11, i64 0
  %arraydecay23 = getelementptr inbounds [3 x float]* %xprime, i64 %idxprom14, i64 0
  %11 = load float* %arraydecay20, align 4, !tbaa !4
  %12 = load float* %arraydecay23, align 4, !tbaa !4
  %sub.i80 = fsub float %11, %12
  %arrayidx2.i81 = getelementptr inbounds [3 x float]* %xprime, i64 %idxprom11, i64 1
  %13 = load float* %arrayidx2.i81, align 4, !tbaa !4
  %arrayidx3.i82 = getelementptr inbounds [3 x float]* %xprime, i64 %idxprom14, i64 1
  %14 = load float* %arrayidx3.i82, align 4, !tbaa !4
  %sub4.i83 = fsub float %13, %14
  %arrayidx5.i84 = getelementptr inbounds [3 x float]* %xprime, i64 %idxprom11, i64 2
  %15 = load float* %arrayidx5.i84, align 4, !tbaa !4
  %arrayidx6.i85 = getelementptr inbounds [3 x float]* %xprime, i64 %idxprom14, i64 2
  %16 = load float* %arrayidx6.i85, align 4, !tbaa !4
  %sub7.i86 = fsub float %15, %16
  %mul.i89 = fmul float %sub.i, %sub.i
  %mul4.i91 = fmul float %sub4.i, %sub4.i
  %add.i92 = fadd float %mul.i89, %mul4.i91
  %mul7.i94 = fmul float %sub7.i, %sub7.i
  %add8.i95 = fadd float %add.i92, %mul7.i94
  %conv9.i96 = call float @sqrtf(float %add8.i95) #3
  %mul.i73 = fmul float %sub.i80, %sub.i80
  %mul4.i75 = fmul float %sub4.i83, %sub4.i83
  %add.i76 = fadd float %mul.i73, %mul4.i75
  %mul7.i78 = fmul float %sub7.i86, %sub7.i86
  %add8.i79 = fadd float %add.i76, %mul7.i78
  %conv9.i = call float @sqrtf(float %add8.i79) #3
  %mul.i = fmul float %sub.i, %sub.i80
  %mul4.i = fmul float %sub4.i, %sub4.i83
  %add.i = fadd float %mul.i, %mul4.i
  %mul7.i = fmul float %sub7.i, %sub7.i86
  %add8.i = fadd float %add.i, %mul7.i
  %mul32 = fmul float %conv9.i96, %conv9.i
  %div = fdiv float %add8.i, %mul32
  %cmp33 = fcmp olt float %div, %conv1
  br i1 %cmp33, label %if.then35, label %for.inc

if.then35:                                        ; preds = %for.body
  %add = add nsw i32 %3, 1
  %add37 = add nsw i32 %4, 1
  %conv38 = fpext float %div to double
  %call39 = call double @acos(double %conv38) #6
  %mul40 = fmul double %call39, 0x404CA5DC1A63C1F8
  %conv41 = fpext float %conv9.i96 to double
  %conv42 = fpext float %conv9.i to double
  %arrayidx44 = getelementptr inbounds float* %bllen, i64 %indvars.iv
  %17 = load float* %arrayidx44, align 4, !tbaa !4
  %conv45 = fpext float %17 to double
  %call46 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([39 x i8]* @.str1, i64 0, i64 0), i32 %add, i32 %add37, double %mul40, double %conv41, double %conv42, double %conv45) #6
  %18 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* %0) #6
  %19 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %tobool49 = icmp eq %struct._IO_FILE* %19, null
  br i1 %tobool49, label %for.inc, label %if.then50

if.then50:                                        ; preds = %if.then35
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %19, i8* %0) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then35, %for.body, %if.then50
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %ncons
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  call void @llvm.lifetime.end(i64 4096, i8* %0) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare double @cos(double) #3

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize
declare double @acos(double) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @cconerr(float* nocapture %max, float* nocapture %rms, i32* nocapture %imax, [3 x float]* nocapture %xprime, i32 %ncons, i32* nocapture %bla1, i32* nocapture %bla2, float* nocapture %bllen) #0 {
entry:
  %cmp65 = icmp sgt i32 %ncons, 0
  br i1 %cmp65, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %im.069 = phi i32 [ %im.1, %for.body ], [ 0, %entry ]
  %ma.068 = phi float [ %ma.1, %for.body ], [ 0.000000e+00, %entry ]
  %ms.067 = phi float [ %add36, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds i32* %bla1, i64 %indvars.iv
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %arrayidx2 = getelementptr inbounds i32* %bla2, i64 %indvars.iv
  %1 = load i32* %arrayidx2, align 4, !tbaa !0
  %idxprom3 = sext i32 %0 to i64
  %arrayidx5 = getelementptr inbounds [3 x float]* %xprime, i64 %idxprom3, i64 0
  %2 = load float* %arrayidx5, align 4, !tbaa !4
  %idxprom6 = sext i32 %1 to i64
  %arrayidx8 = getelementptr inbounds [3 x float]* %xprime, i64 %idxprom6, i64 0
  %3 = load float* %arrayidx8, align 4, !tbaa !4
  %sub = fsub float %2, %3
  %arrayidx11 = getelementptr inbounds [3 x float]* %xprime, i64 %idxprom3, i64 1
  %4 = load float* %arrayidx11, align 4, !tbaa !4
  %arrayidx14 = getelementptr inbounds [3 x float]* %xprime, i64 %idxprom6, i64 1
  %5 = load float* %arrayidx14, align 4, !tbaa !4
  %sub15 = fsub float %4, %5
  %arrayidx18 = getelementptr inbounds [3 x float]* %xprime, i64 %idxprom3, i64 2
  %6 = load float* %arrayidx18, align 4, !tbaa !4
  %arrayidx21 = getelementptr inbounds [3 x float]* %xprime, i64 %idxprom6, i64 2
  %7 = load float* %arrayidx21, align 4, !tbaa !4
  %sub22 = fsub float %6, %7
  %mul = fmul float %sub, %sub
  %mul23 = fmul float %sub15, %sub15
  %add = fadd float %mul, %mul23
  %mul24 = fmul float %sub22, %sub22
  %add25 = fadd float %add, %mul24
  %conv26 = tail call float @sqrtf(float %add25) #3
  %arrayidx28 = getelementptr inbounds float* %bllen, i64 %indvars.iv
  %8 = load float* %arrayidx28, align 4, !tbaa !4
  %div = fdiv float %conv26, %8
  %sub29 = fadd float %div, -1.000000e+00
  %fabsf = tail call float @fabsf(float %sub29) #7
  %cmp33 = fcmp ogt float %fabsf, %ma.068
  %ma.1 = select i1 %cmp33, float %fabsf, float %ma.068
  %9 = trunc i64 %indvars.iv to i32
  %im.1 = select i1 %cmp33, i32 %9, i32 %im.069
  %mul35 = fmul float %fabsf, %fabsf
  %add36 = fadd float %ms.067, %mul35
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %ncons
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %im.0.lcssa = phi i32 [ 0, %entry ], [ %im.1, %for.body ]
  %ma.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %ma.1, %for.body ]
  %ms.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add36, %for.body ]
  store float %ma.0.lcssa, float* %max, align 4, !tbaa !4
  %conv37 = sitofp i32 %ncons to float
  %div38 = fdiv float %ms.0.lcssa, %conv37
  %conv41 = tail call float @sqrtf(float %div38) #3
  store float %conv41, float* %rms, align 4, !tbaa !4
  store i32 %im.0.lcssa, i32* %imax, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #3

; Function Attrs: optsize
declare void @please_cite(%struct._IO_FILE*, i8*) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: optsize
declare i32* @make_invblock(%struct.t_block*, i32) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @pr_sortblock(%struct._IO_FILE* %fp, i8* %title, i32 %nsb, %struct.t_sortblock* nocapture %sb) #0 {
entry:
  %tobool = icmp eq %struct._IO_FILE* %fp, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str60, i64 0, i64 0), i8* %title) #6
  %cmp24 = icmp sgt i32 %nsb, 0
  br i1 %cmp24, label %for.body, label %if.end

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx1 = getelementptr inbounds %struct.t_sortblock* %sb, i64 %indvars.iv, i32 0, i64 0
  %0 = load i32* %arrayidx1, align 4, !tbaa !0
  %arrayidx5 = getelementptr inbounds %struct.t_sortblock* %sb, i64 %indvars.iv, i32 0, i64 1
  %1 = load i32* %arrayidx5, align 4, !tbaa !0
  %arrayidx9 = getelementptr inbounds %struct.t_sortblock* %sb, i64 %indvars.iv, i32 0, i64 2
  %2 = load i32* %arrayidx9, align 4, !tbaa !0
  %blocknr = getelementptr inbounds %struct.t_sortblock* %sb, i64 %indvars.iv, i32 1
  %3 = load i32* %blocknr, align 4, !tbaa !0
  %4 = trunc i64 %indvars.iv to i32
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([44 x i8]* @.str61, i64 0, i64 0), i32 %4, i32 %0, i32 %1, i32 %2, i32 %3) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nsb
  br i1 %exitcond, label %if.end, label %for.body

if.end:                                           ; preds = %if.then, %for.body, %entry
  ret void
}

; Function Attrs: optsize
declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define internal i32 @pcomp(i8* nocapture %p1, i8* nocapture %p2) #0 {
entry:
  %0 = load i32* @pcount, align 4, !tbaa !0
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @pcount, align 4, !tbaa !0
  %blocknr = getelementptr inbounds i8* %p1, i64 12
  %1 = bitcast i8* %blocknr to i32*
  %2 = load i32* %1, align 4, !tbaa !0
  %blocknr1 = getelementptr inbounds i8* %p2, i64 12
  %3 = bitcast i8* %blocknr1 to i32*
  %4 = load i32* %3, align 4, !tbaa !0
  %cmp = icmp eq i32 %2, %4
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sub = sub nsw i32 %2, %4
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds i8* %p1, i64 4
  %5 = bitcast i8* %arrayidx to i32*
  %6 = load i32* %5, align 4, !tbaa !0
  %arrayidx3 = getelementptr inbounds i8* %p1, i64 8
  %7 = bitcast i8* %arrayidx3 to i32*
  %8 = load i32* %7, align 4, !tbaa !0
  %cmp4 = icmp slt i32 %6, %8
  %. = select i1 %cmp4, i32 %6, i32 %8
  %arrayidx23 = getelementptr inbounds i8* %p2, i64 4
  %9 = bitcast i8* %arrayidx23 to i32*
  %10 = load i32* %9, align 4, !tbaa !0
  %arrayidx25 = getelementptr inbounds i8* %p2, i64 8
  %11 = bitcast i8* %arrayidx25 to i32*
  %12 = load i32* %11, align 4, !tbaa !0
  %cmp26 = icmp slt i32 %10, %12
  %.67 = select i1 %cmp26, i32 %10, i32 %12
  %cmp48 = icmp eq i32 %., %.67
  br i1 %cmp48, label %if.then49, label %if.else

if.then49:                                        ; preds = %if.end
  %cmp39 = icmp sgt i32 %10, %12
  %cmp13 = icmp sgt i32 %6, %8
  %cond47 = select i1 %cmp39, i32 %10, i32 %12
  %cond21 = select i1 %cmp13, i32 %6, i32 %8
  %sub50 = sub nsw i32 %cond21, %cond47
  br label %return

if.else:                                          ; preds = %if.end
  %sub51 = sub nsw i32 %., %.67
  br label %return

return:                                           ; preds = %if.else, %if.then49, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %sub50, %if.then49 ], [ %sub51, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @constrain_lincs(%struct.t_topology* nocapture %top, %struct.t_inputrec* nocapture %ir, i32 %step, %struct.t_mdatoms* nocapture %md, i32 %start, i32 %homenr, [3 x float]* %x, [3 x float]* %xprime, [3 x float]* %min_proj, float %lambda, float* nocapture %dvdlambda, i32 %bCoordinates, i32 %bInit, %struct.t_nrnb* nocapture %nrnb) #0 {
entry:
  %buf = alloca [4096 x i8], align 16
  %warn = alloca i32, align 4
  %p_imax = alloca i32, align 4
  %p_max = alloca float, align 4
  %p_rms = alloca float, align 4
  %0 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %0) #2
  %tobool = icmp eq i32 %bInit, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %nr = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 27, i32 0
  %1 = load i32* %nr, align 4, !tbaa !0
  %div = sdiv i32 %1, 3
  store i32 %div, i32* @constrain_lincs.nc, align 4, !tbaa !0
  %2 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %3 = load i32* %nr, align 4, !tbaa !0
  %div.i = sdiv i32 %3, 3
  store i32 0, i32* @constrain_lincs.nrtot, align 4, !tbaa !0
  %cmp.i = icmp sgt i32 %3, 2
  br i1 %cmp.i, label %for.body.lr.ph.i, label %if.end192

for.body.lr.ph.i:                                 ; preds = %if.then
  %iatoms.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 27, i32 2
  %4 = load i32** %iatoms.i, align 8, !tbaa !3
  %call.i = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 131, i32 %homenr, i32 8) #6
  %5 = bitcast i8* %call.i to i32**
  %call5.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 132, i32 %homenr, i32 4) #6
  %6 = bitcast i8* %call5.i to i32*
  %call6.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 133, i32 %homenr, i32 4) #6
  %7 = bitcast i8* %call6.i to i32*
  br label %for.body.i

for.body.i:                                       ; preds = %if.end60.i, %for.body.lr.ph.i
  %indvars.iv33.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next34.i, %if.end60.i ]
  %8 = trunc i64 %indvars.iv33.i to i32
  %mul.i = mul nsw i32 %8, 3
  %add.i = add nsw i32 %mul.i, 1
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx8.i = getelementptr inbounds i32* %4, i64 %idxprom.i
  %9 = load i32* %arrayidx8.i, align 4, !tbaa !0
  %sub.i = sub nsw i32 %9, %start
  %add10.i = add nsw i32 %mul.i, 2
  %idxprom11.i = sext i32 %add10.i to i64
  %arrayidx12.i = getelementptr inbounds i32* %4, i64 %idxprom11.i
  %10 = load i32* %arrayidx12.i, align 4, !tbaa !0
  %sub13.i = sub nsw i32 %10, %start
  %idxprom14.i = sext i32 %sub.i to i64
  %arrayidx15.i = getelementptr inbounds i32* %6, i64 %idxprom14.i
  %11 = load i32* %arrayidx15.i, align 4, !tbaa !0
  %arrayidx17.i = getelementptr inbounds i32* %7, i64 %idxprom14.i
  %12 = load i32* %arrayidx17.i, align 4, !tbaa !0
  %cmp18.i = icmp slt i32 %11, %12
  br i1 %cmp18.i, label %for.body.if.end_crit_edge.i, label %if.then19.i

for.body.if.end_crit_edge.i:                      ; preds = %for.body.i
  %arrayidx36.phi.trans.insert.i = getelementptr inbounds i32** %5, i64 %idxprom14.i
  %.pre41.i = load i32** %arrayidx36.phi.trans.insert.i, align 8, !tbaa !3
  br label %if.end.i

if.then19.i:                                      ; preds = %for.body.i
  %add22.i = add nsw i32 %12, 4
  store i32 %add22.i, i32* %arrayidx17.i, align 4, !tbaa !0
  %arrayidx24.i = getelementptr inbounds i32** %5, i64 %idxprom14.i
  %13 = load i32** %arrayidx24.i, align 8, !tbaa !3
  %14 = bitcast i32* %13 to i8*
  %mul27.i = shl i32 %add22.i, 2
  %call29.i = call i8* @save_realloc(i8* getelementptr inbounds ([9 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 140, i8* %14, i32 %mul27.i) #6
  %15 = bitcast i8* %call29.i to i32*
  store i32* %15, i32** %arrayidx24.i, align 8, !tbaa !3
  %.pre38.i = load i32* %arrayidx15.i, align 4, !tbaa !0
  br label %if.end.i

if.end.i:                                         ; preds = %if.then19.i, %for.body.if.end_crit_edge.i
  %16 = phi i32* [ %.pre41.i, %for.body.if.end_crit_edge.i ], [ %15, %if.then19.i ]
  %17 = phi i32 [ %11, %for.body.if.end_crit_edge.i ], [ %.pre38.i, %if.then19.i ]
  %idxprom34.i = sext i32 %17 to i64
  %arrayidx37.i = getelementptr inbounds i32* %16, i64 %idxprom34.i
  store i32 %8, i32* %arrayidx37.i, align 4, !tbaa !0
  %18 = load i32* %arrayidx15.i, align 4, !tbaa !0
  %inc.i = add nsw i32 %18, 1
  store i32 %inc.i, i32* %arrayidx15.i, align 4, !tbaa !0
  %idxprom40.i = sext i32 %sub13.i to i64
  %arrayidx41.i = getelementptr inbounds i32* %6, i64 %idxprom40.i
  %19 = load i32* %arrayidx41.i, align 4, !tbaa !0
  %arrayidx43.i = getelementptr inbounds i32* %7, i64 %idxprom40.i
  %20 = load i32* %arrayidx43.i, align 4, !tbaa !0
  %cmp44.i = icmp slt i32 %19, %20
  br i1 %cmp44.i, label %if.end.if.end60_crit_edge.i, label %if.then46.i

if.end.if.end60_crit_edge.i:                      ; preds = %if.end.i
  %arrayidx65.phi.trans.insert.i = getelementptr inbounds i32** %5, i64 %idxprom40.i
  %.pre42.i = load i32** %arrayidx65.phi.trans.insert.i, align 8, !tbaa !3
  br label %if.end60.i

if.then46.i:                                      ; preds = %if.end.i
  %add49.i = add nsw i32 %20, 4
  store i32 %add49.i, i32* %arrayidx43.i, align 4, !tbaa !0
  %arrayidx51.i = getelementptr inbounds i32** %5, i64 %idxprom40.i
  %21 = load i32** %arrayidx51.i, align 8, !tbaa !3
  %22 = bitcast i32* %21 to i8*
  %mul55.i = shl i32 %add49.i, 2
  %call57.i = call i8* @save_realloc(i8* getelementptr inbounds ([9 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 146, i8* %22, i32 %mul55.i) #6
  %23 = bitcast i8* %call57.i to i32*
  store i32* %23, i32** %arrayidx51.i, align 8, !tbaa !3
  %.pre39.i = load i32* %arrayidx41.i, align 4, !tbaa !0
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then46.i, %if.end.if.end60_crit_edge.i
  %24 = phi i32* [ %.pre42.i, %if.end.if.end60_crit_edge.i ], [ %23, %if.then46.i ]
  %25 = phi i32 [ %19, %if.end.if.end60_crit_edge.i ], [ %.pre39.i, %if.then46.i ]
  %idxprom63.i = sext i32 %25 to i64
  %arrayidx66.i = getelementptr inbounds i32* %24, i64 %idxprom63.i
  store i32 %8, i32* %arrayidx66.i, align 4, !tbaa !0
  %26 = load i32* %arrayidx41.i, align 4, !tbaa !0
  %inc69.i = add nsw i32 %26, 1
  store i32 %inc69.i, i32* %arrayidx41.i, align 4, !tbaa !0
  %indvars.iv.next34.i = add i64 %indvars.iv33.i, 1
  %27 = trunc i64 %indvars.iv.next34.i to i32
  %cmp7.i = icmp slt i32 %27, %div.i
  br i1 %cmp7.i, label %for.body.i, label %for.body74.lr.ph.i

for.body74.lr.ph.i:                               ; preds = %if.end60.i
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 151, i8* %call6.i) #6
  %.pre37.i = load i32* @constrain_lincs.nrtot, align 4, !tbaa !0
  br label %for.body74.i

for.body74.i:                                     ; preds = %for.body74.i, %for.body74.lr.ph.i
  %28 = phi i32 [ %.pre37.i, %for.body74.lr.ph.i ], [ %add91.i, %for.body74.i ]
  %indvars.iv31.i = phi i64 [ 0, %for.body74.lr.ph.i ], [ %indvars.iv.next32.i, %for.body74.i ]
  %29 = trunc i64 %indvars.iv31.i to i32
  %mul75.i = mul nsw i32 %29, 3
  %add76.i = add nsw i32 %mul75.i, 1
  %idxprom77.i = sext i32 %add76.i to i64
  %arrayidx78.i = getelementptr inbounds i32* %4, i64 %idxprom77.i
  %30 = load i32* %arrayidx78.i, align 4, !tbaa !0
  %sub79.i = sub nsw i32 %30, %start
  %add81.i = add nsw i32 %mul75.i, 2
  %idxprom82.i = sext i32 %add81.i to i64
  %arrayidx83.i = getelementptr inbounds i32* %4, i64 %idxprom82.i
  %31 = load i32* %arrayidx83.i, align 4, !tbaa !0
  %sub84.i = sub nsw i32 %31, %start
  %idxprom85.i = sext i32 %sub79.i to i64
  %arrayidx86.i = getelementptr inbounds i32* %6, i64 %idxprom85.i
  %32 = load i32* %arrayidx86.i, align 4, !tbaa !0
  %idxprom87.i = sext i32 %sub84.i to i64
  %arrayidx88.i = getelementptr inbounds i32* %6, i64 %idxprom87.i
  %33 = load i32* %arrayidx88.i, align 4, !tbaa !0
  %add89.i = add i32 %28, -2
  %sub90.i = add i32 %add89.i, %32
  %add91.i = add i32 %sub90.i, %33
  store i32 %add91.i, i32* @constrain_lincs.nrtot, align 4, !tbaa !0
  %indvars.iv.next32.i = add i64 %indvars.iv31.i, 1
  %34 = trunc i64 %indvars.iv.next32.i to i32
  %cmp72.i = icmp slt i32 %34, %div.i
  br i1 %cmp72.i, label %for.body74.i, label %for.body115.lr.ph.i

for.body115.lr.ph.i:                              ; preds = %for.body74.i
  %call95.i = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 159, i32 %div.i, i32 12) #6
  %35 = bitcast i8* %call95.i to [3 x float]*
  store [3 x float]* %35, [3 x float]** @constrain_lincs.r, align 8, !tbaa !3
  %call96.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 160, i32 %div.i, i32 4) #6
  %36 = bitcast i8* %call96.i to i32*
  store i32* %36, i32** @constrain_lincs.bla1, align 8, !tbaa !3
  %call97.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 161, i32 %div.i, i32 4) #6
  %37 = bitcast i8* %call97.i to i32*
  store i32* %37, i32** @constrain_lincs.bla2, align 8, !tbaa !3
  %add98.i = add nsw i32 %div.i, 1
  %call99.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 162, i32 %add98.i, i32 4) #6
  %38 = bitcast i8* %call99.i to i32*
  store i32* %38, i32** @constrain_lincs.blnr, align 8, !tbaa !3
  %call100.i = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 163, i32 %div.i, i32 4) #6
  %39 = bitcast i8* %call100.i to float*
  store float* %39, float** @constrain_lincs.bllen, align 8, !tbaa !3
  %call101.i = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 164, i32 %div.i, i32 4) #6
  %40 = bitcast i8* %call101.i to float*
  store float* %40, float** @constrain_lincs.blc, align 8, !tbaa !3
  %call102.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 165, i32 %div.i, i32 4) #6
  %41 = bitcast i8* %call102.i to float*
  store float* %41, float** @constrain_lincs.tmp1, align 8, !tbaa !3
  %call103.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 166, i32 %div.i, i32 4) #6
  %42 = bitcast i8* %call103.i to float*
  store float* %42, float** @constrain_lincs.tmp2, align 8, !tbaa !3
  %call104.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 167, i32 %div.i, i32 4) #6
  %43 = bitcast i8* %call104.i to float*
  store float* %43, float** @constrain_lincs.tmp3, align 8, !tbaa !3
  %call105.i = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 168, i32 %div.i, i32 4) #6
  %44 = bitcast i8* %call105.i to float*
  store float* %44, float** @constrain_lincs.lincslam, align 8, !tbaa !3
  %call106.i = call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str48, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 169, i32 %div.i, i32 4) #6
  %45 = bitcast i8* %call106.i to float*
  store float* %45, float** @constrain_lincs.bllen0, align 8, !tbaa !3
  %call107.i = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 170, i32 %div.i, i32 4) #6
  %46 = bitcast i8* %call107.i to float*
  store float* %46, float** @constrain_lincs.ddist, align 8, !tbaa !3
  %47 = load i32* @constrain_lincs.nrtot, align 4, !tbaa !0
  %call108.i = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 171, i32 %47, i32 4) #6
  %48 = bitcast i8* %call108.i to i32*
  store i32* %48, i32** @constrain_lincs.blbnb, align 8, !tbaa !3
  %49 = load i32* @constrain_lincs.nrtot, align 4, !tbaa !0
  %call109.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 172, i32 %49, i32 4) #6
  %50 = bitcast i8* %call109.i to float*
  store float* %50, float** @constrain_lincs.blcc, align 8, !tbaa !3
  %51 = load i32* @constrain_lincs.nrtot, align 4, !tbaa !0
  %call110.i = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str52, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 173, i32 %51, i32 4) #6
  %52 = bitcast i8* %call110.i to float*
  store float* %52, float** @constrain_lincs.blm, align 8, !tbaa !3
  %53 = load i32** @constrain_lincs.blnr, align 8, !tbaa !3
  store i32 0, i32* %53, align 4, !tbaa !0
  %iparams.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 4
  %invmass.i = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5
  br label %for.body115.i

for.body115.i:                                    ; preds = %for.end237.i, %for.body115.lr.ph.i
  %indvars.iv29.i = phi i64 [ 0, %for.body115.lr.ph.i ], [ %indvars.iv.next30.i, %for.end237.i ]
  %nZeroLen.014.i = phi i32 [ 0, %for.body115.lr.ph.i ], [ %nZeroLen.1.i, %for.end237.i ]
  %54 = trunc i64 %indvars.iv29.i to i32
  %mul116.i = mul nsw i32 %54, 3
  %add117.i = add nsw i32 %mul116.i, 1
  %idxprom118.i = sext i32 %add117.i to i64
  %arrayidx119.i = getelementptr inbounds i32* %4, i64 %idxprom118.i
  %55 = load i32* %arrayidx119.i, align 4, !tbaa !0
  %add120.i = add nsw i32 %mul116.i, 2
  %idxprom121.i = sext i32 %add120.i to i64
  %arrayidx122.i = getelementptr inbounds i32* %4, i64 %idxprom121.i
  %56 = load i32* %arrayidx122.i, align 4, !tbaa !0
  %idxprom123.i = sext i32 %mul116.i to i64
  %arrayidx124.i = getelementptr inbounds i32* %4, i64 %idxprom123.i
  %57 = load i32* %arrayidx124.i, align 4, !tbaa !0
  %idxprom125.i = sext i32 %57 to i64
  %58 = load %union.t_iparams** %iparams.i, align 8, !tbaa !3
  %dA.i = getelementptr inbounds %union.t_iparams* %58, i64 %idxprom125.i, i32 0, i32 0
  %59 = load float* %dA.i, align 4, !tbaa !4
  %60 = getelementptr inbounds %union.t_iparams* %58, i64 %idxprom125.i, i32 0, i32 1
  %61 = load float* %60, align 4, !tbaa !4
  %conv131.i = fpext float %59 to double
  %cmp132.i = fcmp olt double %conv131.i, 1.200000e-38
  br i1 %cmp132.i, label %land.lhs.true.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body115.i
  %conv134.i = fpext float %61 to double
  %cmp135.i = fcmp olt double %conv134.i, 1.200000e-38
  br i1 %cmp135.i, label %land.lhs.true.i, label %lor.lhs.false.if.end143_crit_edge.i

lor.lhs.false.if.end143_crit_edge.i:              ; preds = %lor.lhs.false.i
  %sub158.pre.i = fsub float %61, %59
  br label %if.end143.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i, %for.body115.i
  %sub137.i = fsub float %61, %59
  %fabsf.i = call float @fabsf(float %sub137.i) #7
  %62 = fpext float %fabsf.i to double
  %cmp140.i = fcmp ogt double %62, 1.200000e-38
  br i1 %cmp140.i, label %if.then142.i, label %if.end143.i

if.then142.i:                                     ; preds = %land.lhs.true.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([88 x i8]* @.str53, i64 0, i64 0)) #6
  br label %if.end143.i

if.end143.i:                                      ; preds = %if.then142.i, %land.lhs.true.i, %lor.lhs.false.if.end143_crit_edge.i
  %sub158.pre-phi.i = phi float [ %sub158.pre.i, %lor.lhs.false.if.end143_crit_edge.i ], [ %sub137.i, %if.then142.i ], [ %sub137.i, %land.lhs.true.i ]
  %inc148.i = zext i1 %cmp132.i to i32
  %nZeroLen.1.i = add nsw i32 %inc148.i, %nZeroLen.014.i
  %63 = load i32** @constrain_lincs.bla1, align 8, !tbaa !3
  %arrayidx151.i = getelementptr inbounds i32* %63, i64 %indvars.iv29.i
  store i32 %55, i32* %arrayidx151.i, align 4, !tbaa !0
  %64 = load i32** @constrain_lincs.bla2, align 8, !tbaa !3
  %arrayidx153.i = getelementptr inbounds i32* %64, i64 %indvars.iv29.i
  store i32 %56, i32* %arrayidx153.i, align 4, !tbaa !0
  %65 = load float** @constrain_lincs.bllen, align 8, !tbaa !3
  %arrayidx155.i = getelementptr inbounds float* %65, i64 %indvars.iv29.i
  store float %59, float* %arrayidx155.i, align 4, !tbaa !4
  %66 = load float** @constrain_lincs.bllen0, align 8, !tbaa !3
  %arrayidx157.i = getelementptr inbounds float* %66, i64 %indvars.iv29.i
  store float %59, float* %arrayidx157.i, align 4, !tbaa !4
  %67 = load float** @constrain_lincs.ddist, align 8, !tbaa !3
  %arrayidx160.i = getelementptr inbounds float* %67, i64 %indvars.iv29.i
  store float %sub158.pre-phi.i, float* %arrayidx160.i, align 4, !tbaa !4
  %idxprom161.i = sext i32 %55 to i64
  %68 = load float** %invmass.i, align 8, !tbaa !3
  %arrayidx162.i = getelementptr inbounds float* %68, i64 %idxprom161.i
  %69 = load float* %arrayidx162.i, align 4, !tbaa !4
  %idxprom163.i = sext i32 %56 to i64
  %arrayidx165.i = getelementptr inbounds float* %68, i64 %idxprom163.i
  %70 = load float* %arrayidx165.i, align 4, !tbaa !4
  %add166.i = fadd float %69, %70
  %conv167.i = fpext float %add166.i to double
  %call168.i = call double @sqrt(double %conv167.i) #6
  %div169.i = fdiv double 1.000000e+00, %call168.i
  %conv170.i = fptrunc double %div169.i to float
  %71 = load float** @constrain_lincs.blc, align 8, !tbaa !3
  %arrayidx172.i = getelementptr inbounds float* %71, i64 %indvars.iv29.i
  store float %conv170.i, float* %arrayidx172.i, align 4, !tbaa !4
  %72 = load i32** @constrain_lincs.blnr, align 8, !tbaa !3
  %arrayidx174.i = getelementptr inbounds i32* %72, i64 %indvars.iv29.i
  %73 = load i32* %arrayidx174.i, align 4, !tbaa !0
  %indvars.iv.next30.i = add i64 %indvars.iv29.i, 1
  %arrayidx177.i = getelementptr inbounds i32* %72, i64 %indvars.iv.next30.i
  store i32 %73, i32* %arrayidx177.i, align 4, !tbaa !0
  %sub179.i = sub nsw i32 %55, %start
  %idxprom180.i = sext i32 %sub179.i to i64
  %arrayidx181.i = getelementptr inbounds i32* %6, i64 %idxprom180.i
  %74 = load i32* %arrayidx181.i, align 4, !tbaa !0
  %cmp1829.i = icmp sgt i32 %74, 0
  br i1 %cmp1829.i, label %for.body184.lr.ph.i, label %for.cond208.loopexit.i

for.body184.lr.ph.i:                              ; preds = %if.end143.i
  %arrayidx188.i = getelementptr inbounds i32** %5, i64 %idxprom180.i
  %75 = load i32** %arrayidx188.i, align 8, !tbaa !3
  %76 = load i32** @constrain_lincs.blbnb, align 8, !tbaa !3
  br label %for.body184.i

for.body184.i:                                    ; preds = %for.inc205.i, %for.body184.lr.ph.i
  %77 = phi i32 [ %74, %for.body184.lr.ph.i ], [ %80, %for.inc205.i ]
  %indvars.iv25.i = phi i64 [ 0, %for.body184.lr.ph.i ], [ %indvars.iv.next26.i, %for.inc205.i ]
  %arrayidx189.i = getelementptr inbounds i32* %75, i64 %indvars.iv25.i
  %78 = load i32* %arrayidx189.i, align 4, !tbaa !0
  %cmp190.i = icmp eq i32 %78, %54
  br i1 %cmp190.i, label %for.inc205.i, label %if.then192.i

if.then192.i:                                     ; preds = %for.body184.i
  %79 = load i32* %arrayidx177.i, align 4, !tbaa !0
  %inc201.i = add nsw i32 %79, 1
  store i32 %inc201.i, i32* %arrayidx177.i, align 4, !tbaa !0
  %idxprom202.i = sext i32 %79 to i64
  %arrayidx203.i = getelementptr inbounds i32* %76, i64 %idxprom202.i
  store i32 %78, i32* %arrayidx203.i, align 4, !tbaa !0
  %.pre36.i = load i32* %arrayidx181.i, align 4, !tbaa !0
  br label %for.inc205.i

for.inc205.i:                                     ; preds = %if.then192.i, %for.body184.i
  %80 = phi i32 [ %77, %for.body184.i ], [ %.pre36.i, %if.then192.i ]
  %indvars.iv.next26.i = add i64 %indvars.iv25.i, 1
  %81 = trunc i64 %indvars.iv.next26.i to i32
  %cmp182.i = icmp slt i32 %81, %80
  br i1 %cmp182.i, label %for.body184.i, label %for.cond208.loopexit.i

for.cond208.loopexit.i:                           ; preds = %for.inc205.i, %if.end143.i
  %sub209.i = sub nsw i32 %56, %start
  %idxprom210.i = sext i32 %sub209.i to i64
  %arrayidx211.i = getelementptr inbounds i32* %6, i64 %idxprom210.i
  %82 = load i32* %arrayidx211.i, align 4, !tbaa !0
  %cmp21211.i = icmp sgt i32 %82, 0
  br i1 %cmp21211.i, label %for.body214.lr.ph.i, label %for.cond208.loopexit.for.end237_crit_edge.i

for.cond208.loopexit.for.end237_crit_edge.i:      ; preds = %for.cond208.loopexit.i
  %.pre40.i = load i32** @constrain_lincs.blbnb, align 8, !tbaa !3
  br label %for.end237.i

for.body214.lr.ph.i:                              ; preds = %for.cond208.loopexit.i
  %arrayidx218.i = getelementptr inbounds i32** %5, i64 %idxprom210.i
  %83 = load i32** %arrayidx218.i, align 8, !tbaa !3
  %84 = load i32** @constrain_lincs.blbnb, align 8, !tbaa !3
  br label %for.body214.i

for.body214.i:                                    ; preds = %for.inc235.i, %for.body214.lr.ph.i
  %85 = phi i32 [ %82, %for.body214.lr.ph.i ], [ %88, %for.inc235.i ]
  %indvars.iv27.i = phi i64 [ 0, %for.body214.lr.ph.i ], [ %indvars.iv.next28.i, %for.inc235.i ]
  %arrayidx219.i = getelementptr inbounds i32* %83, i64 %indvars.iv27.i
  %86 = load i32* %arrayidx219.i, align 4, !tbaa !0
  %cmp220.i = icmp eq i32 %86, %54
  br i1 %cmp220.i, label %for.inc235.i, label %if.then222.i

if.then222.i:                                     ; preds = %for.body214.i
  %87 = load i32* %arrayidx177.i, align 4, !tbaa !0
  %inc231.i = add nsw i32 %87, 1
  store i32 %inc231.i, i32* %arrayidx177.i, align 4, !tbaa !0
  %idxprom232.i = sext i32 %87 to i64
  %arrayidx233.i = getelementptr inbounds i32* %84, i64 %idxprom232.i
  store i32 %86, i32* %arrayidx233.i, align 4, !tbaa !0
  %.pre35.i = load i32* %arrayidx211.i, align 4, !tbaa !0
  br label %for.inc235.i

for.inc235.i:                                     ; preds = %if.then222.i, %for.body214.i
  %88 = phi i32 [ %85, %for.body214.i ], [ %.pre35.i, %if.then222.i ]
  %indvars.iv.next28.i = add i64 %indvars.iv27.i, 1
  %89 = trunc i64 %indvars.iv.next28.i to i32
  %cmp212.i = icmp slt i32 %89, %88
  br i1 %cmp212.i, label %for.body214.i, label %for.end237.i

for.end237.i:                                     ; preds = %for.inc235.i, %for.cond208.loopexit.for.end237_crit_edge.i
  %90 = phi i32* [ %.pre40.i, %for.cond208.loopexit.for.end237_crit_edge.i ], [ %84, %for.inc235.i ]
  %91 = load i32* %arrayidx174.i, align 4, !tbaa !0
  %idxprom240.i = sext i32 %91 to i64
  %arrayidx241.i = getelementptr inbounds i32* %90, i64 %idxprom240.i
  %92 = bitcast i32* %arrayidx241.i to i8*
  %93 = load i32* %arrayidx177.i, align 4, !tbaa !0
  %sub247.i = sub nsw i32 %93, %91
  %conv248.i = sext i32 %sub247.i to i64
  call void @qsort(i8* %92, i64 %conv248.i, i64 4, i32 (i8*, i8*)* @int_comp) #6
  %94 = trunc i64 %indvars.iv.next30.i to i32
  %cmp113.i = icmp slt i32 %94, %div.i
  br i1 %cmp113.i, label %for.body115.i, label %for.end251.i

for.end251.i:                                     ; preds = %for.end237.i
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 213, i8* %call5.i) #6
  %cmp2537.i = icmp sgt i32 %homenr, 0
  br i1 %cmp2537.i, label %for.body255.i, label %for.end260.i

for.body255.i:                                    ; preds = %for.end251.i, %for.body255.i
  %indvars.iv23.i = phi i64 [ %indvars.iv.next24.i, %for.body255.i ], [ 0, %for.end251.i ]
  %arrayidx257.i = getelementptr inbounds i32** %5, i64 %indvars.iv23.i
  %95 = load i32** %arrayidx257.i, align 8, !tbaa !3
  %96 = bitcast i32* %95 to i8*
  call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 215, i8* %96) #6
  %indvars.iv.next24.i = add i64 %indvars.iv23.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next24.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %homenr
  br i1 %exitcond, label %for.end260.i, label %for.body255.i

for.end260.i:                                     ; preds = %for.body255.i, %for.end251.i
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 216, i8* %call.i) #6
  %tobool.i = icmp eq %struct._IO_FILE* %2, null
  br i1 %tobool.i, label %for.body279.lr.ph.i, label %if.then261.i

if.then261.i:                                     ; preds = %for.end260.i
  %97 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8]* @.str55, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %2) #2
  %call263.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([31 x i8]* @.str56, i64 0, i64 0), i32 %div.i) #6
  %98 = load i32* @constrain_lincs.nrtot, align 4, !tbaa !0
  %conv264.i = sitofp i32 %98 to float
  %conv265.i = sitofp i32 %div.i to float
  %div266.i = fdiv float %conv264.i, %conv265.i
  %conv267.i = fpext float %div266.i to double
  %call268.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([67 x i8]* @.str57, i64 0, i64 0), double %conv267.i) #6
  %tobool269.i = icmp eq i32 %nZeroLen.1.i, 0
  br i1 %tobool269.i, label %if.end272.i, label %if.then270.i

if.then270.i:                                     ; preds = %if.then261.i
  %call271.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([41 x i8]* @.str58, i64 0, i64 0), i32 %nZeroLen.1.i) #6
  br label %if.end272.i

if.end272.i:                                      ; preds = %if.then270.i, %if.then261.i
  %fputc.i = call i32 @fputc(i32 10, %struct._IO_FILE* %2) #2
  %call274.i = call i32 @fflush(%struct._IO_FILE* %2) #6
  br label %for.body279.lr.ph.i

for.body279.lr.ph.i:                              ; preds = %if.end272.i, %for.end260.i
  %99 = load i32** @constrain_lincs.bla1, align 8, !tbaa !3
  %100 = load i32** @constrain_lincs.bla2, align 8, !tbaa !3
  %101 = load i32** @constrain_lincs.blnr, align 8, !tbaa !3
  %102 = load i32** @constrain_lincs.blbnb, align 8, !tbaa !3
  %103 = load float** @constrain_lincs.blc, align 8, !tbaa !3
  %104 = load float** @constrain_lincs.blcc, align 8, !tbaa !3
  %.pre.i = load i32* %101, align 4, !tbaa !0
  br label %for.body279.i

for.cond276.loopexit.i:                           ; preds = %if.end317.i, %for.body279.i
  %105 = trunc i64 %indvars.iv.next22.i to i32
  %cmp277.i = icmp slt i32 %105, %div.i
  br i1 %cmp277.i, label %for.body279.i, label %if.end192

for.body279.i:                                    ; preds = %for.cond276.loopexit.i, %for.body279.lr.ph.i
  %106 = phi i32 [ %.pre.i, %for.body279.lr.ph.i ], [ %109, %for.cond276.loopexit.i ]
  %indvars.iv21.i = phi i64 [ 0, %for.body279.lr.ph.i ], [ %indvars.iv.next22.i, %for.cond276.loopexit.i ]
  %arrayidx281.i = getelementptr inbounds i32* %99, i64 %indvars.iv21.i
  %107 = load i32* %arrayidx281.i, align 4, !tbaa !0
  %arrayidx283.i = getelementptr inbounds i32* %100, i64 %indvars.iv21.i
  %108 = load i32* %arrayidx283.i, align 4, !tbaa !0
  %indvars.iv.next22.i = add i64 %indvars.iv21.i, 1
  %arrayidx2892.i = getelementptr inbounds i32* %101, i64 %indvars.iv.next22.i
  %109 = load i32* %arrayidx2892.i, align 4, !tbaa !0
  %cmp2903.i = icmp slt i32 %106, %109
  br i1 %cmp2903.i, label %for.body292.lr.ph.i, label %for.cond276.loopexit.i

for.body292.lr.ph.i:                              ; preds = %for.body279.i
  %110 = load float** %invmass.i, align 8, !tbaa !3
  %arrayidx323.i = getelementptr inbounds float* %103, i64 %indvars.iv21.i
  %111 = sext i32 %106 to i64
  br label %for.body292.i

for.body292.i:                                    ; preds = %if.end317.i, %for.body292.lr.ph.i
  %indvars.iv.i = phi i64 [ %111, %for.body292.lr.ph.i ], [ %indvars.iv.next.i, %if.end317.i ]
  %arrayidx294.i = getelementptr inbounds i32* %102, i64 %indvars.iv.i
  %112 = load i32* %arrayidx294.i, align 4, !tbaa !0
  %idxprom295.i = sext i32 %112 to i64
  %arrayidx296.i = getelementptr inbounds i32* %99, i64 %idxprom295.i
  %113 = load i32* %arrayidx296.i, align 4, !tbaa !0
  %cmp297.i = icmp eq i32 %107, %113
  br i1 %cmp297.i, label %if.end317.i, label %lor.lhs.false310.i

lor.lhs.false310.i:                               ; preds = %for.body292.i
  %arrayidx30145.i = getelementptr inbounds i32* %100, i64 %idxprom295.i
  %114 = load i32* %arrayidx30145.i, align 4, !tbaa !0
  %cmp30246.i = icmp eq i32 %108, %114
  %.47.i = select i1 %cmp30246.i, float -1.000000e+00, float 1.000000e+00
  %cmp313.i = icmp eq i32 %107, %114
  %.1.i = select i1 %cmp313.i, i32 %107, i32 %108
  br label %if.end317.i

if.end317.i:                                      ; preds = %lor.lhs.false310.i, %for.body292.i
  %sign.043.i = phi float [ %.47.i, %lor.lhs.false310.i ], [ -1.000000e+00, %for.body292.i ]
  %cen.0.i = phi i32 [ %.1.i, %lor.lhs.false310.i ], [ %107, %for.body292.i ]
  %idxprom318.i = sext i32 %cen.0.i to i64
  %arrayidx320.i = getelementptr inbounds float* %110, i64 %idxprom318.i
  %115 = load float* %arrayidx320.i, align 4, !tbaa !4
  %mul321.i = fmul float %sign.043.i, %115
  %116 = load float* %arrayidx323.i, align 4, !tbaa !4
  %mul324.i = fmul float %mul321.i, %116
  %arrayidx326.i = getelementptr inbounds float* %103, i64 %idxprom295.i
  %117 = load float* %arrayidx326.i, align 4, !tbaa !4
  %mul327.i = fmul float %mul324.i, %117
  %arrayidx329.i = getelementptr inbounds float* %104, i64 %indvars.iv.i
  store float %mul327.i, float* %arrayidx329.i, align 4, !tbaa !4
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %118 = trunc i64 %indvars.iv.next.i to i32
  %cmp290.i = icmp slt i32 %118, %109
  br i1 %cmp290.i, label %for.body292.i, label %for.cond276.loopexit.i

if.else:                                          ; preds = %entry
  %119 = load i32* @constrain_lincs.nc, align 4, !tbaa !0
  %cmp = icmp eq i32 %119, 0
  br i1 %cmp, label %if.end192, label %if.then1

if.then1:                                         ; preds = %if.else
  %tobool2 = icmp eq i32 %bCoordinates, 0
  br i1 %tobool2, label %if.else177, label %if.then3

if.then3:                                         ; preds = %if.then1
  %delta_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %120 = load float* %delta_t, align 4, !tbaa !4
  %mul = fmul float %120, %120
  %conv5 = fdiv float 1.000000e+00, %mul
  %efep = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 46
  %121 = load i32* %efep, align 4, !tbaa !0
  %cmp6 = icmp eq i32 %121, 0
  br i1 %cmp6, label %for.cond17.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then3
  %cmp912 = icmp sgt i32 %119, 0
  br i1 %cmp912, label %for.body.lr.ph, label %for.end63

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %122 = load float** @constrain_lincs.bllen0, align 8, !tbaa !3
  %123 = load float** @constrain_lincs.ddist, align 8, !tbaa !3
  %124 = load float** @constrain_lincs.bllen, align 8, !tbaa !3
  br label %for.body

for.cond17.preheader:                             ; preds = %for.body, %if.then3
  %cmp1810 = icmp sgt i32 %119, 0
  br i1 %cmp1810, label %for.body20, label %for.end63

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv18 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next19, %for.body ]
  %arrayidx11 = getelementptr inbounds float* %122, i64 %indvars.iv18
  %125 = load float* %arrayidx11, align 4, !tbaa !4
  %arrayidx13 = getelementptr inbounds float* %123, i64 %indvars.iv18
  %126 = load float* %arrayidx13, align 4, !tbaa !4
  %mul14 = fmul float %126, %lambda
  %add = fadd float %125, %mul14
  %arrayidx16 = getelementptr inbounds float* %124, i64 %indvars.iv18
  store float %add, float* %arrayidx16, align 4, !tbaa !4
  %indvars.iv.next19 = add i64 %indvars.iv18, 1
  %127 = trunc i64 %indvars.iv.next19 to i32
  %cmp9 = icmp slt i32 %127, %119
  br i1 %cmp9, label %for.body, label %for.cond17.preheader

for.body20:                                       ; preds = %for.inc61, %for.cond17.preheader
  %128 = phi i32 [ %119, %for.cond17.preheader ], [ %142, %for.inc61 ]
  %indvars.iv16 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next17, %for.inc61 ]
  %129 = load float** @constrain_lincs.bllen0, align 8, !tbaa !3
  %arrayidx22 = getelementptr inbounds float* %129, i64 %indvars.iv16
  %130 = load float* %arrayidx22, align 4, !tbaa !4
  %conv23 = fpext float %130 to double
  %cmp24 = fcmp olt double %conv23, 1.200000e-38
  br i1 %cmp24, label %if.then26, label %for.inc61

if.then26:                                        ; preds = %for.body20
  %131 = load i32** @constrain_lincs.bla1, align 8, !tbaa !3
  %arrayidx28 = getelementptr inbounds i32* %131, i64 %indvars.iv16
  %132 = load i32* %arrayidx28, align 4, !tbaa !0
  %133 = load i32** @constrain_lincs.bla2, align 8, !tbaa !3
  %arrayidx30 = getelementptr inbounds i32* %133, i64 %indvars.iv16
  %134 = load i32* %arrayidx30, align 4, !tbaa !0
  %idxprom31 = sext i32 %132 to i64
  %arrayidx33 = getelementptr inbounds [3 x float]* %x, i64 %idxprom31, i64 0
  %135 = load float* %arrayidx33, align 4, !tbaa !4
  %idxprom34 = sext i32 %134 to i64
  %arrayidx36 = getelementptr inbounds [3 x float]* %x, i64 %idxprom34, i64 0
  %136 = load float* %arrayidx36, align 4, !tbaa !4
  %sub = fsub float %135, %136
  %mul.i2 = fmul float %sub, %sub
  %arrayidx39 = getelementptr inbounds [3 x float]* %x, i64 %idxprom31, i64 1
  %137 = load float* %arrayidx39, align 4, !tbaa !4
  %arrayidx42 = getelementptr inbounds [3 x float]* %x, i64 %idxprom34, i64 1
  %138 = load float* %arrayidx42, align 4, !tbaa !4
  %sub43 = fsub float %137, %138
  %mul.i3 = fmul float %sub43, %sub43
  %add45 = fadd float %mul.i2, %mul.i3
  %arrayidx48 = getelementptr inbounds [3 x float]* %x, i64 %idxprom31, i64 2
  %139 = load float* %arrayidx48, align 4, !tbaa !4
  %arrayidx51 = getelementptr inbounds [3 x float]* %x, i64 %idxprom34, i64 2
  %140 = load float* %arrayidx51, align 4, !tbaa !4
  %sub52 = fsub float %139, %140
  %mul.i4 = fmul float %sub52, %sub52
  %add54 = fadd float %add45, %mul.i4
  %conv57 = call float @sqrtf(float %add54) #3
  %141 = load float** @constrain_lincs.bllen, align 8, !tbaa !3
  %arrayidx59 = getelementptr inbounds float* %141, i64 %indvars.iv16
  store float %conv57, float* %arrayidx59, align 4, !tbaa !4
  %.pre20 = load i32* @constrain_lincs.nc, align 4, !tbaa !0
  br label %for.inc61

for.inc61:                                        ; preds = %for.body20, %if.then26
  %142 = phi i32 [ %128, %for.body20 ], [ %.pre20, %if.then26 ]
  %indvars.iv.next17 = add i64 %indvars.iv16, 1
  %143 = trunc i64 %indvars.iv.next17 to i32
  %cmp18 = icmp slt i32 %143, %142
  br i1 %cmp18, label %for.body20, label %for.end63

for.end63:                                        ; preds = %for.cond.preheader, %for.inc61, %for.cond17.preheader
  %LincsWarnAngle = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 66
  %144 = load float* %LincsWarnAngle, align 4, !tbaa !4
  %nstlog = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 8
  %145 = load i32* %nstlog, align 4, !tbaa !0
  %call64 = call i32 @do_per_step(i32 %step, i32 %145) #6
  %tobool65 = icmp ne i32 %call64, 0
  %cmp66 = icmp slt i32 %step, 0
  %or.cond = or i1 %tobool65, %cmp66
  br i1 %or.cond, label %if.then68, label %if.end69

if.then68:                                        ; preds = %for.end63
  %146 = load i32* @constrain_lincs.nc, align 4, !tbaa !0
  %147 = load i32** @constrain_lincs.bla1, align 8, !tbaa !3
  %148 = load i32** @constrain_lincs.bla2, align 8, !tbaa !3
  %149 = load float** @constrain_lincs.bllen, align 8, !tbaa !3
  call void @cconerr(float* %p_max, float* %p_rms, i32* %p_imax, [3 x float]* %xprime, i32 %146, i32* %147, i32* %148, float* %149) #5
  br label %if.end69

if.end69:                                         ; preds = %for.end63, %if.then68
  %eI = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 0
  %150 = load i32* %eI, align 4, !tbaa !0
  %.off = add i32 %150, -1
  %switch = icmp ult i32 %.off, 2
  %nProjOrder = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 65
  %151 = load i32* %nProjOrder, align 4, !tbaa !0
  %. = select i1 %switch, i32 %151, i32 1
  %152 = load i32* @constrain_lincs.nc, align 4, !tbaa !0
  %153 = load i32** @constrain_lincs.bla1, align 8, !tbaa !3
  %154 = load i32** @constrain_lincs.bla2, align 8, !tbaa !3
  %155 = load i32** @constrain_lincs.blnr, align 8, !tbaa !3
  %156 = load i32** @constrain_lincs.blbnb, align 8, !tbaa !3
  %157 = load float** @constrain_lincs.bllen, align 8, !tbaa !3
  %158 = load float** @constrain_lincs.blc, align 8, !tbaa !3
  %159 = load float** @constrain_lincs.blcc, align 8, !tbaa !3
  %160 = load float** @constrain_lincs.blm, align 8, !tbaa !3
  %invmass = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5
  %161 = load float** %invmass, align 8, !tbaa !3
  %162 = load [3 x float]** @constrain_lincs.r, align 8, !tbaa !3
  %163 = load float** @constrain_lincs.tmp1, align 8, !tbaa !3
  %164 = load float** @constrain_lincs.tmp2, align 8, !tbaa !3
  %165 = load float** @constrain_lincs.tmp3, align 8, !tbaa !3
  %166 = load float** @constrain_lincs.lincslam, align 8, !tbaa !3
  call void @clincs([3 x float]* %x, [3 x float]* %xprime, i32 %152, i32* %153, i32* %154, i32* %155, i32* %156, float* %157, float* %158, float* %159, float* %160, i32 %., i32 %151, float* %161, [3 x float]* %162, float* %163, float* %164, float* %165, float %144, i32* %warn, float* %166) #6
  %167 = load i32* %efep, align 4, !tbaa !0
  %cmp83 = icmp eq i32 %167, 0
  br i1 %cmp83, label %if.end101, label %for.cond86.preheader

for.cond86.preheader:                             ; preds = %if.end69
  %168 = load i32* @constrain_lincs.nc, align 4, !tbaa !0
  %cmp877 = icmp sgt i32 %168, 0
  br i1 %cmp877, label %for.body89.lr.ph, label %for.end99

for.body89.lr.ph:                                 ; preds = %for.cond86.preheader
  %169 = load float** @constrain_lincs.lincslam, align 8, !tbaa !3
  %170 = load float** @constrain_lincs.ddist, align 8, !tbaa !3
  br label %for.body89

for.body89:                                       ; preds = %for.body89.lr.ph, %for.body89
  %indvars.iv14 = phi i64 [ 0, %for.body89.lr.ph ], [ %indvars.iv.next15, %for.body89 ]
  %dvdl.09 = phi float [ 0.000000e+00, %for.body89.lr.ph ], [ %add96, %for.body89 ]
  %arrayidx91 = getelementptr inbounds float* %169, i64 %indvars.iv14
  %171 = load float* %arrayidx91, align 4, !tbaa !4
  %mul92 = fmul float %conv5, %171
  %arrayidx94 = getelementptr inbounds float* %170, i64 %indvars.iv14
  %172 = load float* %arrayidx94, align 4, !tbaa !4
  %mul95 = fmul float %mul92, %172
  %add96 = fadd float %dvdl.09, %mul95
  %indvars.iv.next15 = add i64 %indvars.iv14, 1
  %173 = trunc i64 %indvars.iv.next15 to i32
  %cmp87 = icmp slt i32 %173, %168
  br i1 %cmp87, label %for.body89, label %for.end99

for.end99:                                        ; preds = %for.body89, %for.cond86.preheader
  %dvdl.0.lcssa = phi float [ 0.000000e+00, %for.cond86.preheader ], [ %add96, %for.body89 ]
  %174 = load float* %dvdlambda, align 4, !tbaa !4
  %add100 = fadd float %dvdl.0.lcssa, %174
  store float %add100, float* %dvdlambda, align 4, !tbaa !4
  br label %if.end101

if.end101:                                        ; preds = %if.end69, %for.end99
  %175 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %tobool102 = icmp eq %struct._IO_FILE* %175, null
  br i1 %tobool102, label %if.end131, label %if.then103

if.then103:                                       ; preds = %if.end101
  %176 = load i32* %nstlog, align 4, !tbaa !0
  %call105 = call i32 @do_per_step(i32 %step, i32 %176) #6
  %tobool106 = icmp ne i32 %call105, 0
  %or.cond194 = or i1 %tobool106, %cmp66
  br i1 %or.cond194, label %if.then110, label %if.end131

if.then110:                                       ; preds = %if.then103
  %177 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %178 = call i64 @fwrite(i8* getelementptr inbounds ([61 x i8]* @.str28, i64 0, i64 0), i64 60, i64 1, %struct._IO_FILE* %177)
  %179 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %180 = load float* %p_max, align 4, !tbaa !4
  %conv112 = fpext float %180 to double
  %181 = load i32* %p_imax, align 4, !tbaa !0
  %idxprom113 = sext i32 %181 to i64
  %182 = load i32** @constrain_lincs.bla1, align 8, !tbaa !3
  %arrayidx114 = getelementptr inbounds i32* %182, i64 %idxprom113
  %183 = load i32* %arrayidx114, align 4, !tbaa !0
  %add115 = add nsw i32 %183, 1
  %184 = load i32** @constrain_lincs.bla2, align 8, !tbaa !3
  %arrayidx117 = getelementptr inbounds i32* %184, i64 %idxprom113
  %185 = load i32* %arrayidx117, align 4, !tbaa !0
  %add118 = add nsw i32 %185, 1
  %186 = load float* %p_rms, align 4, !tbaa !4
  %conv119 = fpext float %186 to double
  %call120 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %179, i8* getelementptr inbounds ([49 x i8]* @.str29, i64 0, i64 0), double %conv112, i32 %add115, i32 %add118, double %conv119) #6
  %187 = load i32* @constrain_lincs.nc, align 4, !tbaa !0
  %188 = load i32** @constrain_lincs.bla1, align 8, !tbaa !3
  %189 = load i32** @constrain_lincs.bla2, align 8, !tbaa !3
  %190 = load float** @constrain_lincs.bllen, align 8, !tbaa !3
  call void @cconerr(float* %p_max, float* %p_rms, i32* %p_imax, [3 x float]* %xprime, i32 %187, i32* %188, i32* %189, float* %190) #5
  %191 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %192 = load float* %p_max, align 4, !tbaa !4
  %conv121 = fpext float %192 to double
  %193 = load i32* %p_imax, align 4, !tbaa !0
  %idxprom122 = sext i32 %193 to i64
  %194 = load i32** @constrain_lincs.bla1, align 8, !tbaa !3
  %arrayidx123 = getelementptr inbounds i32* %194, i64 %idxprom122
  %195 = load i32* %arrayidx123, align 4, !tbaa !0
  %add124 = add nsw i32 %195, 1
  %196 = load i32** @constrain_lincs.bla2, align 8, !tbaa !3
  %arrayidx126 = getelementptr inbounds i32* %196, i64 %idxprom122
  %197 = load i32* %arrayidx126, align 4, !tbaa !0
  %add127 = add nsw i32 %197, 1
  %198 = load float* %p_rms, align 4, !tbaa !4
  %conv128 = fpext float %198 to double
  %call129 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %191, i8* getelementptr inbounds ([50 x i8]* @.str30, i64 0, i64 0), double %conv121, i32 %add124, i32 %add127, double %conv128) #6
  br label %if.end131

if.end131:                                        ; preds = %if.end101, %if.then110, %if.then103
  %199 = load i32* %warn, align 4, !tbaa !0
  %cmp132 = icmp sgt i32 %199, 0
  br i1 %cmp132, label %if.then134, label %if.end160

if.then134:                                       ; preds = %if.end131
  %200 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %tobool136 = icmp eq %struct._IO_FILE* %200, null
  br i1 %tobool136, label %if.then134.if.end156_crit_edge, label %if.then137

if.then134.if.end156_crit_edge:                   ; preds = %if.then134
  %.pre22 = load float* %p_max, align 4, !tbaa !4
  br label %if.end156

if.then137:                                       ; preds = %if.then134
  %201 = load i32* @constrain_lincs.nc, align 4, !tbaa !0
  %202 = load i32** @constrain_lincs.bla1, align 8, !tbaa !3
  %203 = load i32** @constrain_lincs.bla2, align 8, !tbaa !3
  %204 = load float** @constrain_lincs.bllen, align 8, !tbaa !3
  call void @cconerr(float* %p_max, float* %p_rms, i32* %p_imax, [3 x float]* %xprime, i32 %201, i32* %202, i32* %203, float* %204) #5
  %init_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 14
  %205 = load float* %init_t, align 4, !tbaa !4
  %conv138 = sitofp i32 %step to float
  %206 = load float* %delta_t, align 4, !tbaa !4
  %mul140 = fmul float %conv138, %206
  %add141 = fadd float %205, %mul140
  %conv142 = fpext float %add141 to double
  %207 = load float* %p_max, align 4, !tbaa !4
  %conv143 = fpext float %207 to double
  %208 = load i32* %p_imax, align 4, !tbaa !0
  %idxprom144 = sext i32 %208 to i64
  %209 = load i32** @constrain_lincs.bla1, align 8, !tbaa !3
  %arrayidx145 = getelementptr inbounds i32* %209, i64 %idxprom144
  %210 = load i32* %arrayidx145, align 4, !tbaa !0
  %add146 = add nsw i32 %210, 1
  %211 = load i32** @constrain_lincs.bla2, align 8, !tbaa !3
  %arrayidx148 = getelementptr inbounds i32* %211, i64 %idxprom144
  %212 = load i32* %arrayidx148, align 4, !tbaa !0
  %add149 = add nsw i32 %212, 1
  %213 = load float* %p_rms, align 4, !tbaa !4
  %conv150 = fpext float %213 to double
  %call151 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([126 x i8]* @.str31, i64 0, i64 0), i32 %step, double %conv142, double %conv143, i32 %add146, i32 %add149, double %conv150) #6
  %214 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %fputs = call i32 @fputs(i8* %0, %struct._IO_FILE* %214)
  %215 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %fputs1 = call i32 @fputs(i8* %0, %struct._IO_FILE* %215)
  %216 = load i32* @constrain_lincs.nc, align 4, !tbaa !0
  %217 = load i32** @constrain_lincs.bla1, align 8, !tbaa !3
  %218 = load i32** @constrain_lincs.bla2, align 8, !tbaa !3
  %219 = load float** @constrain_lincs.bllen, align 8, !tbaa !3
  call void @lincs_warning([3 x float]* %x, [3 x float]* %xprime, i32 %216, i32* %217, i32* %218, float* %219, float %144) #5
  br label %if.end156

if.end156:                                        ; preds = %if.then134.if.end156_crit_edge, %if.then137
  %220 = phi float [ %.pre22, %if.then134.if.end156_crit_edge ], [ %207, %if.then137 ]
  %cmp158 = fcmp olt float %220, 5.000000e-01
  %conv159 = zext i1 %cmp158 to i32
  br label %if.end160

if.end160:                                        ; preds = %if.end131, %if.end156
  %bOK.0 = phi i32 [ %conv159, %if.end156 ], [ 1, %if.end131 ]
  %221 = load i32* @constrain_lincs.nc, align 4, !tbaa !0
  %cmp1625 = icmp sgt i32 %221, 0
  br i1 %cmp1625, label %for.body164.lr.ph, label %if.end180

for.body164.lr.ph:                                ; preds = %if.end160
  %222 = load float** @constrain_lincs.bllen0, align 8, !tbaa !3
  %223 = load float** @constrain_lincs.bllen, align 8, !tbaa !3
  br label %for.body164

for.body164:                                      ; preds = %for.body164.lr.ph, %for.inc174
  %indvars.iv = phi i64 [ 0, %for.body164.lr.ph ], [ %indvars.iv.next, %for.inc174 ]
  %arrayidx166 = getelementptr inbounds float* %222, i64 %indvars.iv
  %224 = load float* %arrayidx166, align 4, !tbaa !4
  %conv167 = fpext float %224 to double
  %cmp168 = fcmp olt double %conv167, 1.200000e-38
  br i1 %cmp168, label %if.then170, label %for.inc174

if.then170:                                       ; preds = %for.body164
  %arrayidx172 = getelementptr inbounds float* %223, i64 %indvars.iv
  store float 0.000000e+00, float* %arrayidx172, align 4, !tbaa !4
  br label %for.inc174

for.inc174:                                       ; preds = %for.body164, %if.then170
  %indvars.iv.next = add i64 %indvars.iv, 1
  %225 = trunc i64 %indvars.iv.next to i32
  %cmp162 = icmp slt i32 %225, %221
  br i1 %cmp162, label %for.body164, label %if.end180

if.else177:                                       ; preds = %if.then1
  %226 = load i32** @constrain_lincs.bla1, align 8, !tbaa !3
  %227 = load i32** @constrain_lincs.bla2, align 8, !tbaa !3
  %228 = load i32** @constrain_lincs.blnr, align 8, !tbaa !3
  %229 = load i32** @constrain_lincs.blbnb, align 8, !tbaa !3
  %230 = load float** @constrain_lincs.blc, align 8, !tbaa !3
  %231 = load float** @constrain_lincs.blcc, align 8, !tbaa !3
  %232 = load float** @constrain_lincs.blm, align 8, !tbaa !3
  %nProjOrder178 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 65
  %233 = load i32* %nProjOrder178, align 4, !tbaa !0
  %invmass179 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5
  %234 = load float** %invmass179, align 8, !tbaa !3
  %235 = load [3 x float]** @constrain_lincs.r, align 8, !tbaa !3
  %236 = load float** @constrain_lincs.tmp1, align 8, !tbaa !3
  %237 = load float** @constrain_lincs.tmp2, align 8, !tbaa !3
  %238 = load float** @constrain_lincs.tmp3, align 8, !tbaa !3
  call void @clincsp([3 x float]* %x, [3 x float]* %xprime, [3 x float]* %min_proj, i32 %119, i32* %226, i32* %227, i32* %228, i32* %229, float* %230, float* %231, float* %232, i32 %233, float* %234, [3 x float]* %235, float* %236, float* %237, float* %238) #6
  %.pre = load i32* @constrain_lincs.nc, align 4, !tbaa !0
  br label %if.end180

if.end180:                                        ; preds = %if.end160, %for.inc174, %if.else177
  %239 = phi i32 [ %.pre, %if.else177 ], [ %221, %for.inc174 ], [ %221, %if.end160 ]
  %bOK.1 = phi i32 [ 1, %if.else177 ], [ %bOK.0, %for.inc174 ], [ %bOK.0, %if.end160 ]
  %conv181 = sitofp i32 %239 to double
  %arrayidx182 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 113
  %240 = load double* %arrayidx182, align 8, !tbaa !5
  %add183 = fadd double %240, %conv181
  store double %add183, double* %arrayidx182, align 8, !tbaa !5
  %nProjOrder184 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 65
  %241 = load i32* %nProjOrder184, align 4, !tbaa !0
  %add185 = add nsw i32 %241, 2
  %242 = load i32* @constrain_lincs.nrtot, align 4, !tbaa !0
  %mul186 = mul nsw i32 %add185, %242
  %conv187 = sitofp i32 %mul186 to double
  %arrayidx189 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 114
  %243 = load double* %arrayidx189, align 8, !tbaa !5
  %add190 = fadd double %243, %conv187
  store double %add190, double* %arrayidx189, align 8, !tbaa !5
  br label %if.end192

if.end192:                                        ; preds = %for.cond276.loopexit.i, %if.then, %if.else, %if.end180
  %bOK.2 = phi i32 [ %bOK.1, %if.end180 ], [ 1, %if.else ], [ 1, %if.then ], [ 1, %for.cond276.loopexit.i ]
  call void @llvm.lifetime.end(i64 4096, i8* %0) #2
  ret i32 %bOK.2
}

; Function Attrs: optsize
declare void @_where(i8*, i32) #1

; Function Attrs: optsize
declare i32 @bshakef(%struct._IO_FILE*, i32, float*, i32, i32*, %struct.t_idef*, %struct.t_inputrec*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_nrnb*, float, float*, i32) #1

; Function Attrs: optsize
declare void @csettle(%struct._IO_FILE*, i32, i32*, float*, float*, float, float, float, float, i32*) #1

; Function Attrs: optsize
declare void @write_sto_conf(i8*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, [3 x float]*) #1

; Function Attrs: optsize
declare i32 @do_per_step(i32, i32) #1

; Function Attrs: optsize
declare void @clincs([3 x float]*, [3 x float]*, i32, i32*, i32*, i32*, i32*, float*, float*, float*, float*, i32, i32, float*, [3 x float]*, float*, float*, float*, float, i32*, float*) #1

; Function Attrs: optsize
declare void @clincsp([3 x float]*, [3 x float]*, [3 x float]*, i32, i32*, i32*, i32*, i32*, float*, float*, float*, i32, float*, [3 x float]*, float*, float*, float*) #1

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind optsize readonly uwtable
define internal i32 @int_comp(i8* nocapture %a, i8* nocapture %b) #4 {
entry:
  %0 = bitcast i8* %a to i32*
  %1 = load i32* %0, align 4, !tbaa !0
  %2 = bitcast i8* %b to i32*
  %3 = load i32* %2, align 4, !tbaa !0
  %sub = sub nsw i32 %1, %3
  ret i32 %sub
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #3

declare float @fabsf(float)

; Function Attrs: nounwind
declare i32 @fputs(i8* nocapture, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}
