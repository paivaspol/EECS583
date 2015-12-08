; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/init.c'
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
%struct.t_parm = type { %struct.t_inputrec, [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]] }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct.t_tpxheader = type { i32, i32, i32, i32, i32, i32, i32, i32, float, float }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_comm_dummies = type { i32, i32, i32*, i32*, i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [95 x i8] c"run input file %s was made for %d nodes,\0A             while %s expected it to be for %d nodes.\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c"tpx\00", align 1
@.str2 = private unnamed_addr constant [52 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/init.c\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"*x\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"*v\00", align 1
@.str5 = private unnamed_addr constant [17 x i8] c"Input Parameters\00", align 1
@.str6 = private unnamed_addr constant [23 x i8] c"Neighbor Search Blocks\00", align 1
@.str7 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@stdlog = external global %struct._IO_FILE*
@.str9 = private unnamed_addr constant [16 x i8] c"Listing Scalars\00", align 1
@.str10 = private unnamed_addr constant [22 x i8] c"parameters of the run\00", align 1
@.str11 = private unnamed_addr constant [9 x i8] c"topology\00", align 1
@.str12 = private unnamed_addr constant [17 x i8] c"%s (nodeid=%d):\0A\00", align 1
@.str13 = private unnamed_addr constant [13 x i8] c"input record\00", align 1
@.str14 = private unnamed_addr constant [4 x i8] c"box\00", align 1
@.str15 = private unnamed_addr constant [5 x i8] c"ekin\00", align 1
@.str16 = private unnamed_addr constant [5 x i8] c"pres\00", align 1
@.str17 = private unnamed_addr constant [4 x i8] c"vir\00", align 1
@int_title.buf = internal global [256 x i8] zeroinitializer, align 16
@.str18 = private unnamed_addr constant [8 x i8] c"%s (%d)\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @check_nnodes_top(i8* %fn, %struct.t_topology* nocapture %top, i32 %nnodes) #0 {
entry:
  br label %land.rhs

for.cond:                                         ; preds = %land.rhs
  %0 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.rhs, label %for.end

land.rhs:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ 255, %entry ], [ %indvars.iv.next, %for.cond ]
  %i.09 = phi i32 [ 255, %entry ], [ %dec, %for.cond ]
  %arrayidx1 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 0, i64 %indvars.iv
  %1 = load i32* %arrayidx1, align 4, !tbaa !0
  %cmp2 = icmp eq i32 %1, 0
  %indvars.iv.next = add i64 %indvars.iv, -1
  %dec = add nsw i32 %i.09, -1
  br i1 %cmp2, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond, %land.rhs
  %i.0.lcssa = phi i32 [ %dec, %for.cond ], [ %i.09, %land.rhs ]
  %add = add nsw i32 %i.0.lcssa, 1
  %cmp3 = icmp eq i32 %add, %nnodes
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %call = tail call i8* @ShortProgram() #4
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([95 x i8]* @.str, i64 0, i64 0), i8* %fn, i32 %add, i8* %call, i32 %nnodes) #4
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: optsize
declare i8* @ShortProgram() #1

; Function Attrs: nounwind optsize uwtable
define void @init_single(%struct._IO_FILE* %log, %struct.t_parm* %parm, i8* %tpxfile, %struct.t_topology* %top, [3 x float]** nocapture %x, [3 x float]** nocapture %v, %struct.t_mdatoms** nocapture %mdatoms, %struct.t_nsborder* %nsb) #0 {
entry:
  %step = alloca i32, align 4
  %natoms = alloca i32, align 4
  %t = alloca float, align 4
  %lambda = alloca float, align 4
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str2, i64 0, i64 0), i32 110, i32 1, i32 40) #4
  %0 = bitcast i8* %call to %struct.t_tpxheader*
  call void @read_tpxheader(i8* %tpxfile, %struct.t_tpxheader* %0) #4
  %natoms1 = getelementptr inbounds i8* %call, i64 24
  %1 = bitcast i8* %natoms1 to i32*
  %2 = load i32* %1, align 4, !tbaa !0
  %call2 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str2, i64 0, i64 0), i32 113, i32 %2, i32 12) #4
  %3 = bitcast i8* %call2 to [3 x float]*
  store [3 x float]* %3, [3 x float]** %x, align 8, !tbaa !3
  %4 = load i32* %1, align 4, !tbaa !0
  %call4 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str2, i64 0, i64 0), i32 114, i32 %4, i32 12) #4
  %5 = bitcast i8* %call4 to [3 x float]*
  store [3 x float]* %5, [3 x float]** %v, align 8, !tbaa !3
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str2, i64 0, i64 0), i32 116, i8* %call) #4
  %ir = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0
  %arraydecay = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %6 = load [3 x float]** %x, align 8, !tbaa !3
  %7 = load [3 x float]** %v, align 8, !tbaa !3
  call void @read_tpx(i8* %tpxfile, i32* %step, float* %t, float* %lambda, %struct.t_inputrec* %ir, [3 x float]* %arraydecay, i32* %natoms, [3 x float]* %6, [3 x float]* %7, [3 x float]* null, %struct.t_topology* %top) #4
  call void @check_nnodes_top(i8* %tpxfile, %struct.t_topology* %top, i32 1) #5
  %atoms = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2
  %nFreeze = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 8
  %8 = load [3 x i32]** %nFreeze, align 8, !tbaa !3
  %eI = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 0
  %9 = load i32* %eI, align 4, !tbaa !0
  %cmp = icmp eq i32 %9, 3
  %conv = zext i1 %cmp to i32
  %delta_t = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15
  %10 = load float* %delta_t, align 4, !tbaa !4
  %bd_fric = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 69
  %11 = load float* %bd_fric, align 4, !tbaa !4
  %tau_t = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 6
  %12 = load float** %tau_t, align 8, !tbaa !3
  %efep = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 46
  %13 = load i32* %efep, align 4, !tbaa !0
  %cmp12 = icmp ne i32 %13, 0
  %conv13 = zext i1 %cmp12 to i32
  %call14 = call %struct.t_mdatoms* @atoms2md(%struct._IO_FILE* %log, %struct.t_atoms* %atoms, [3 x i32]* %8, i32 %conv, float %10, float %11, float* %12, i32 %conv13, i32 0) #4
  store %struct.t_mdatoms* %call14, %struct.t_mdatoms** %mdatoms, align 8, !tbaa !3
  %tobool = icmp eq %struct._IO_FILE* %log, null
  br i1 %tobool, label %if.end18.critedge, label %if.then

if.then:                                          ; preds = %entry
  call void @pr_inputrec(%struct._IO_FILE* %log, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str5, i64 0, i64 0), %struct.t_inputrec* %ir) #4
  %arrayidx = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0
  call void @calc_nsb(%struct._IO_FILE* %log, %struct.t_block* %arrayidx, i32 1, %struct.t_nsborder* %nsb, i32 0) #4
  call void @print_nsb(%struct._IO_FILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str6, i64 0, i64 0), %struct.t_nsborder* %nsb) #4
  br label %if.end18

if.end18.critedge:                                ; preds = %entry
  %arrayidx.c = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0
  call void @calc_nsb(%struct._IO_FILE* null, %struct.t_block* %arrayidx.c, i32 1, %struct.t_nsborder* %nsb, i32 0) #4
  br label %if.end18

if.end18:                                         ; preds = %if.end18.critedge, %if.then
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare void @read_tpxheader(i8*, %struct.t_tpxheader*) #1

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: optsize
declare void @read_tpx(i8*, i32*, float*, float*, %struct.t_inputrec*, [3 x float]*, i32*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_topology*) #1

; Function Attrs: optsize
declare %struct.t_mdatoms* @atoms2md(%struct._IO_FILE*, %struct.t_atoms*, [3 x i32]*, i32, float, float, float*, i32, i32) #1

; Function Attrs: optsize
declare void @pr_inputrec(%struct._IO_FILE*, i32, i8*, %struct.t_inputrec*) #1

; Function Attrs: optsize
declare void @calc_nsb(%struct._IO_FILE*, %struct.t_block*, i32, %struct.t_nsborder*, i32) #1

; Function Attrs: optsize
declare void @print_nsb(%struct._IO_FILE*, i8*, %struct.t_nsborder*) #1

; Function Attrs: nounwind optsize uwtable
define void @distribute_parts(i32 %left, i32 %right, i32 %nodeid, i32 %nnodes, %struct.t_parm* %parm, i8* %tpxfile, i32 %nstDlb) #0 {
entry:
  %natoms = alloca i32, align 4
  %step = alloca i32, align 4
  %t = alloca float, align 4
  %lambda = alloca float, align 4
  %tpx = alloca %struct.t_tpxheader, align 4
  %top = alloca %struct.t_topology, align 8
  %nsb = alloca %struct.t_nsborder, align 4
  %0 = bitcast %struct.t_tpxheader* %tpx to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #2
  %1 = bitcast %struct.t_topology* %top to i8*
  call void @llvm.lifetime.start(i64 50264, i8* %1) #2
  %2 = bitcast %struct.t_nsborder* %nsb to i8*
  call void @llvm.lifetime.start(i64 4124, i8* %2) #2
  call void @read_tpxheader(i8* %tpxfile, %struct.t_tpxheader* %tpx) #4
  %natoms1 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 6
  %3 = load i32* %natoms1, align 4, !tbaa !0
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str2, i64 0, i64 0), i32 147, i32 %3, i32 12) #4
  %4 = bitcast i8* %call to [3 x float]*
  %5 = load i32* %natoms1, align 4, !tbaa !0
  %call3 = call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str2, i64 0, i64 0), i32 148, i32 %5, i32 12) #4
  %6 = bitcast i8* %call3 to [3 x float]*
  %ir = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0
  %arraydecay = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  call void @read_tpx(i8* %tpxfile, i32* %step, float* %t, float* %lambda, %struct.t_inputrec* %ir, [3 x float]* %arraydecay, i32* %natoms, [3 x float]* %4, [3 x float]* %6, [3 x float]* null, %struct.t_topology* %top) #4
  call void @check_nnodes_top(i8* %tpxfile, %struct.t_topology* %top, i32 %nnodes) #5
  %7 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0
  call void @calc_nsb(%struct._IO_FILE* %7, %struct.t_block* %arrayidx, i32 %nnodes, %struct.t_nsborder* %nsb, i32 %nstDlb) #4
  call void @mv_data(i32 %left, i32 %right, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, %struct.t_topology* %top, [3 x float]* %4, [3 x float]* %6) #4
  call void @done_top(%struct.t_topology* %top) #4
  call void @save_free(i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str2, i64 0, i64 0), i32 156, i8* %call) #4
  call void @save_free(i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str2, i64 0, i64 0), i32 157, i8* %call3) #4
  call void @llvm.lifetime.end(i64 4124, i8* %2) #2
  call void @llvm.lifetime.end(i64 50264, i8* %1) #2
  call void @llvm.lifetime.end(i64 40, i8* %0) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare void @mv_data(i32, i32, %struct.t_parm*, %struct.t_nsborder*, %struct.t_topology*, [3 x float]*, [3 x float]*) #1

; Function Attrs: optsize
declare void @done_top(%struct.t_topology*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @init_parts(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_parm* %parm, %struct.t_topology* %top, [3 x float]** %x, [3 x float]** %v, %struct.t_mdatoms** nocapture %mdatoms, %struct.t_nsborder* %nsb, i32 %list, i32* %bParallelDummies, %struct.t_comm_dummies* %dummycomm) #0 {
entry:
  %left = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %0 = load i32* %left, align 4, !tbaa !0
  %right = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %1 = load i32* %right, align 4, !tbaa !0
  tail call void @ld_data(i32 %0, i32 %1, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, %struct.t_topology* %top, [3 x float]** %x, [3 x float]** %v) #4
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %2 = load i32* %nodeid, align 4, !tbaa !0
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i32* %left, align 4, !tbaa !0
  %4 = load i32* %right, align 4, !tbaa !0
  %5 = load [3 x float]** %x, align 8, !tbaa !3
  %6 = load [3 x float]** %v, align 8, !tbaa !3
  tail call void @mv_data(i32 %3, i32 %4, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, %struct.t_topology* %top, [3 x float]* %5, [3 x float]* %6) #4
  %.pre = load i32* %nodeid, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %7 = phi i32 [ 0, %entry ], [ %.pre, %if.then ]
  %ld_seed = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 70
  %8 = load i32* %ld_seed, align 4, !tbaa !0
  %add = add nsw i32 %8, %7
  store i32 %add, i32* %ld_seed, align 4, !tbaa !0
  tail call void @mdsplit_top(%struct._IO_FILE* %log, %struct.t_topology* %top, %struct.t_commrec* %cr, %struct.t_nsborder* %nsb, i32* %bParallelDummies, %struct.t_comm_dummies* %dummycomm) #4
  %tobool = icmp eq i32 %list, 0
  %tobool4 = icmp eq %struct._IO_FILE* %log, null
  %or.cond = or i1 %tobool, %tobool4
  br i1 %or.cond, label %if.end31, label %if.then5

if.then5:                                         ; preds = %if.end
  %and = and i32 %list, 1
  %tobool6 = icmp eq i32 %and, 0
  br i1 %tobool6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.then5
  tail call void @print_nsb(%struct._IO_FILE* %log, i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0), %struct.t_nsborder* %nsb) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.then7
  %and9 = and i32 %list, 2
  %tobool10 = icmp eq i32 %and9, 0
  br i1 %tobool10, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end8
  %9 = load i32* %nodeid, align 4, !tbaa !0
  tail call void @write_parm(%struct._IO_FILE* %log, i8* getelementptr inbounds ([22 x i8]* @.str10, i64 0, i64 0), i32 %9, %struct.t_parm* %parm) #5
  br label %if.end13

if.end13:                                         ; preds = %if.end8, %if.then11
  %and14 = and i32 %list, 8
  %tobool15 = icmp eq i32 %and14, 0
  br i1 %tobool15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end13
  %call.i = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([256 x i8]* @int_title.buf, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i32 0) #4
  %10 = load [3 x float]** %x, align 8, !tbaa !3
  %natoms = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  %11 = load i32* %natoms, align 4, !tbaa !0
  tail call void @pr_rvecs(%struct._IO_FILE* %log, i32 0, i8* getelementptr inbounds ([256 x i8]* @int_title.buf, i64 0, i64 0), [3 x float]* %10, i32 %11) #4
  br label %if.end17

if.end17:                                         ; preds = %if.end13, %if.then16
  %and18 = and i32 %list, 16
  %tobool19 = icmp eq i32 %and18, 0
  br i1 %tobool19, label %if.end23, label %if.then20

if.then20:                                        ; preds = %if.end17
  %call.i86 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([256 x i8]* @int_title.buf, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0), i32 0) #4
  %12 = load [3 x float]** %v, align 8, !tbaa !3
  %natoms22 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  %13 = load i32* %natoms22, align 4, !tbaa !0
  tail call void @pr_rvecs(%struct._IO_FILE* %log, i32 0, i8* getelementptr inbounds ([256 x i8]* @int_title.buf, i64 0, i64 0), [3 x float]* %12, i32 %13) #4
  br label %if.end23

if.end23:                                         ; preds = %if.end17, %if.then20
  %and24 = and i32 %list, 4
  %tobool25 = icmp eq i32 %and24, 0
  br i1 %tobool25, label %if.end29, label %if.then26

if.then26:                                        ; preds = %if.end23
  %14 = load i32* %nodeid, align 4, !tbaa !0
  %call.i87 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([256 x i8]* @int_title.buf, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str11, i64 0, i64 0), i32 %14) #4
  tail call void @pr_top(%struct._IO_FILE* %log, i32 0, i8* getelementptr inbounds ([256 x i8]* @int_title.buf, i64 0, i64 0), %struct.t_topology* %top) #4
  br label %if.end29

if.end29:                                         ; preds = %if.end23, %if.then26
  %call30 = tail call i32 @fflush(%struct._IO_FILE* %log) #4
  br label %if.end31

if.end31:                                         ; preds = %if.end, %if.end29
  %atoms = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2
  %nFreeze = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 8
  %15 = load [3 x i32]** %nFreeze, align 8, !tbaa !3
  %eI = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 0
  %16 = load i32* %eI, align 4, !tbaa !0
  %cmp34 = icmp eq i32 %16, 3
  %conv = zext i1 %cmp34 to i32
  %delta_t = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15
  %17 = load float* %delta_t, align 4, !tbaa !4
  %bd_fric = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 69
  %18 = load float* %bd_fric, align 4, !tbaa !4
  %tau_t = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 6
  %19 = load float** %tau_t, align 8, !tbaa !3
  %efep = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 46
  %20 = load i32* %efep, align 4, !tbaa !0
  %cmp40 = icmp ne i32 %20, 0
  %conv41 = zext i1 %cmp40 to i32
  %call42 = tail call %struct.t_mdatoms* @atoms2md(%struct._IO_FILE* %log, %struct.t_atoms* %atoms, [3 x i32]* %15, i32 %conv, float %17, float %18, float* %19, i32 %conv41, i32 0) #4
  store %struct.t_mdatoms* %call42, %struct.t_mdatoms** %mdatoms, align 8, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare void @ld_data(i32, i32, %struct.t_parm*, %struct.t_nsborder*, %struct.t_topology*, [3 x float]**, [3 x float]**) #1

; Function Attrs: optsize
declare void @mdsplit_top(%struct._IO_FILE*, %struct.t_topology*, %struct.t_commrec*, %struct.t_nsborder*, i32*, %struct.t_comm_dummies*) #1

; Function Attrs: nounwind optsize uwtable
define void @write_parm(%struct._IO_FILE* %log, i8* %title, i32 %nodeid, %struct.t_parm* %parm) #0 {
entry:
  %tobool = icmp eq %struct._IO_FILE* %log, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([17 x i8]* @.str12, i64 0, i64 0), i8* %title, i32 %nodeid) #4
  %ir = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0
  tail call void @pr_inputrec(%struct._IO_FILE* %log, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str13, i64 0, i64 0), %struct.t_inputrec* %ir) #4
  %arraydecay = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  tail call void @pr_rvecs(%struct._IO_FILE* %log, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), [3 x float]* %arraydecay, i32 3) #4
  %arraydecay1 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 5, i64 0
  tail call void @pr_rvecs(%struct._IO_FILE* %log, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0), [3 x float]* %arraydecay1, i32 3) #4
  %arraydecay2 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 4, i64 0
  tail call void @pr_rvecs(%struct._IO_FILE* %log, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str16, i64 0, i64 0), [3 x float]* %arraydecay2, i32 3) #4
  %arraydecay3 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 3, i64 0
  tail call void @pr_rvecs(%struct._IO_FILE* %log, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str17, i64 0, i64 0), [3 x float]* %arraydecay3, i32 3) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: optsize
declare void @pr_rvecs(%struct._IO_FILE*, i32, i8*, [3 x float]*, i32) #1

; Function Attrs: optsize
declare void @pr_top(%struct._IO_FILE*, i32, i8*, %struct.t_topology*) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
