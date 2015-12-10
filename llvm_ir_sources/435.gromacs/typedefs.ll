; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/typedefs.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }
%struct.t_topology = type { i8**, %struct.t_idef, %struct.t_atoms, [3 x %struct.t_block], %struct.t_symtab }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%union.t_iparams = type { %struct.anon.2 }
%struct.anon.2 = type { float, float, float, float, float, float }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_symtab = type { i32, %struct.symbuf* }
%struct.symbuf = type { i32, i8**, %struct.symbuf* }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }

@.str = private unnamed_addr constant [13 x i8] c"block->index\00", align 1
@.str1 = private unnamed_addr constant [56 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/typedefs.c\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"grp->a\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"grp->index\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"block->a\00", align 1
@.str5 = private unnamed_addr constant [9 x i8] c"at->atom\00", align 1
@.str6 = private unnamed_addr constant [12 x i8] c"at->resname\00", align 1
@.str7 = private unnamed_addr constant [13 x i8] c"at->atomname\00", align 1
@.str8 = private unnamed_addr constant [12 x i8] c"ir->ex[m].a\00", align 1
@.str9 = private unnamed_addr constant [14 x i8] c"ir->ex[m].phi\00", align 1
@.str10 = private unnamed_addr constant [12 x i8] c"ir->et[m].a\00", align 1
@.str11 = private unnamed_addr constant [14 x i8] c"ir->et[m].phi\00", align 1
@.str12 = private unnamed_addr constant [14 x i8] c"ir->opts.nrdf\00", align 1
@.str13 = private unnamed_addr constant [15 x i8] c"ir->opts.ref_t\00", align 1
@.str14 = private unnamed_addr constant [15 x i8] c"ir->opts.tau_t\00", align 1
@.str15 = private unnamed_addr constant [13 x i8] c"ir->opts.acc\00", align 1
@.str16 = private unnamed_addr constant [17 x i8] c"ir->opts.nFreeze\00", align 1
@.str17 = private unnamed_addr constant [16 x i8] c"atoms->atomname\00", align 1
@.str18 = private unnamed_addr constant [15 x i8] c"atoms->resname\00", align 1
@.str19 = private unnamed_addr constant [12 x i8] c"atoms->atom\00", align 1
@.str20 = private unnamed_addr constant [15 x i8] c"atoms->grpname\00", align 1
@.str21 = private unnamed_addr constant [15 x i8] c"atoms->pdbinfo\00", align 1
@.str22 = private unnamed_addr constant [20 x i8] c"*atoms->atomname[i]\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @init_block(%struct.t_block* nocapture %block) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_block* %block}, i64 0, metadata !46), !dbg !439
  %block11 = bitcast %struct.t_block* %block to i8*
  %nr = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1, !dbg !440
  store i32 0, i32* %nr, align 4, !dbg !440, !tbaa !441
  %nra = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3, !dbg !444
  store i32 0, i32* %nra, align 4, !dbg !444, !tbaa !441
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 44, i32 1, i32 4) #4, !dbg !445
  %0 = bitcast i8* %call to i32*, !dbg !445
  %index = getelementptr inbounds %struct.t_block* %block, i64 0, i32 2, !dbg !445
  store i32* %0, i32** %index, align 8, !dbg !445, !tbaa !446
  store i32 0, i32* %0, align 4, !dbg !447, !tbaa !441
  %a = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4, !dbg !448
  store i32* null, i32** %a, align 8, !dbg !448, !tbaa !446
  tail call void @llvm.dbg.value(metadata !23, i64 0, metadata !47), !dbg !449
  call void @llvm.memset.p0i8.i64(i8* %block11, i8 0, i64 1024, i32 4, i1 false), !dbg !451
  ret void, !dbg !452
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @init_atom(%struct.t_atoms* nocapture %at) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_atoms* %at}, i64 0, metadata !116), !dbg !453
  %nr.i = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 9, i32 1, !dbg !454
  store i32 0, i32* %nr.i, align 4, !dbg !454, !tbaa !441
  %nra.i = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 9, i32 3, !dbg !456
  store i32 0, i32* %nra.i, align 4, !dbg !456, !tbaa !441
  %call.i = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 44, i32 1, i32 4) #4, !dbg !457
  %0 = bitcast i8* %call.i to i32*, !dbg !457
  %index.i = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 9, i32 2, !dbg !457
  store i32* %0, i32** %index.i, align 8, !dbg !457, !tbaa !446
  store i32 0, i32* %0, align 4, !dbg !458, !tbaa !441
  %a.i = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 9, i32 4, !dbg !459
  store i32* null, i32** %a.i, align 8, !dbg !459, !tbaa !446
  tail call void @llvm.dbg.value(metadata !23, i64 0, metadata !460) #2, !dbg !461
  %nr = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 0, !dbg !462
  store i32 0, i32* %nr, align 4, !dbg !462, !tbaa !441
  %ngrpname = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 7, !dbg !463
  store i32 0, i32* %ngrpname, align 4, !dbg !463, !tbaa !441
  %atom = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 1, !dbg !464
  %resname = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 6, !dbg !465
  store i8*** null, i8**** %resname, align 8, !dbg !465, !tbaa !446
  %grpname = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 8, !dbg !466
  %pdbinfo = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 11, !dbg !467
  store %struct.t_pdbinfo* null, %struct.t_pdbinfo** %pdbinfo, align 8, !dbg !467, !tbaa !446
  tail call void @llvm.dbg.value(metadata !23, i64 0, metadata !117), !dbg !468
  %1 = bitcast %struct.t_atom** %atom to i8*, !dbg !468
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 8, i1 false), !dbg !464
  %2 = bitcast i8**** %grpname to i8*, !dbg !468
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 1032, i32 8, i1 false), !dbg !470
  br label %for.body, !dbg !468

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %nr1 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 10, i64 %indvars.iv, i32 0, !dbg !471
  store i32 0, i32* %nr1, align 4, !dbg !471, !tbaa !441
  %nm_ind = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 10, i64 %indvars.iv, i32 1, !dbg !473
  store i32* null, i32** %nm_ind, align 8, !dbg !473, !tbaa !446
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !468
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !468
  %exitcond = icmp eq i32 %lftr.wideiv, 9, !dbg !468
  br i1 %exitcond, label %for.end, label %for.body, !dbg !468

for.end:                                          ; preds = %for.body
  ret void, !dbg !474
}

; Function Attrs: nounwind optsize uwtable
define void @init_top(%struct.t_topology* %top) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_topology* %top}, i64 0, metadata !282), !dbg !475
  %name = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0, !dbg !476
  store i8** null, i8*** %name, align 8, !dbg !476, !tbaa !446
  %symtab = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 4, !dbg !477
  tail call void @open_symtab(%struct.t_symtab* %symtab) #4, !dbg !477
  %atoms = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, !dbg !478
  tail call void @init_atom(%struct.t_atoms* %atoms) #5, !dbg !478
  tail call void @llvm.dbg.value(metadata !23, i64 0, metadata !283), !dbg !479
  br label %for.body, !dbg !479

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv, !dbg !481
  tail call void @llvm.dbg.value(metadata !{%struct.t_block* %arrayidx}, i64 0, metadata !482) #2, !dbg !483
  %block11.i = bitcast %struct.t_block* %arrayidx to i8*
  %nr.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv, i32 1, !dbg !484
  store i32 0, i32* %nr.i, align 4, !dbg !484, !tbaa !441
  %nra.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv, i32 3, !dbg !485
  store i32 0, i32* %nra.i, align 4, !dbg !485, !tbaa !441
  %call.i = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 44, i32 1, i32 4) #4, !dbg !486
  %0 = bitcast i8* %call.i to i32*, !dbg !486
  %index.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv, i32 2, !dbg !486
  store i32* %0, i32** %index.i, align 8, !dbg !486, !tbaa !446
  store i32 0, i32* %0, align 4, !dbg !487, !tbaa !441
  %a.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv, i32 4, !dbg !488
  store i32* null, i32** %a.i, align 8, !dbg !488, !tbaa !446
  tail call void @llvm.dbg.value(metadata !23, i64 0, metadata !489) #2, !dbg !490
  tail call void @llvm.memset.p0i8.i64(i8* %block11.i, i8 0, i64 1024, i32 4, i1 false) #2, !dbg !491
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !479
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !479
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !479
  br i1 %exitcond, label %for.end, label %for.body, !dbg !479

for.end:                                          ; preds = %for.body
  ret void, !dbg !492
}

; Function Attrs: optsize
declare void @open_symtab(%struct.t_symtab*) #1

; Function Attrs: nounwind optsize uwtable
define void @init_inputrec(%struct.t_inputrec* nocapture %ir) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_inputrec* %ir}, i64 0, metadata !405), !dbg !493
  %0 = bitcast %struct.t_inputrec* %ir to i8*, !dbg !494
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 592, i32 8, i1 false), !dbg !494
  ret void, !dbg !495
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind optsize uwtable
define void @stupid_fill(%struct.t_block* nocapture %grp, i32 %natom, i32 %bOneIndexGroup) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_block* %grp}, i64 0, metadata !410), !dbg !496
  tail call void @llvm.dbg.value(metadata !{i32 %natom}, i64 0, metadata !411), !dbg !496
  tail call void @llvm.dbg.value(metadata !{i32 %bOneIndexGroup}, i64 0, metadata !412), !dbg !496
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 92, i32 %natom, i32 4) #4, !dbg !497
  %0 = bitcast i8* %call to i32*, !dbg !497
  %a = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 4, !dbg !497
  store i32* %0, i32** %a, align 8, !dbg !497, !tbaa !446
  tail call void @llvm.dbg.value(metadata !23, i64 0, metadata !413), !dbg !498
  %cmp46 = icmp sgt i32 %natom, 0, !dbg !498
  br i1 %cmp46, label %for.body, label %for.end, !dbg !498

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %0, i64 %indvars.iv48, !dbg !500
  %1 = trunc i64 %indvars.iv48 to i32, !dbg !500
  store i32 %1, i32* %arrayidx, align 4, !dbg !500, !tbaa !441
  %indvars.iv.next49 = add i64 %indvars.iv48, 1, !dbg !498
  %lftr.wideiv50 = trunc i64 %indvars.iv.next49 to i32, !dbg !498
  %exitcond51 = icmp eq i32 %lftr.wideiv50, %natom, !dbg !498
  br i1 %exitcond51, label %for.end, label %for.body, !dbg !498

for.end:                                          ; preds = %for.body, %entry
  %nra = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 3, !dbg !501
  store i32 %natom, i32* %nra, align 4, !dbg !501, !tbaa !441
  %tobool = icmp eq i32 %bOneIndexGroup, 0, !dbg !502
  br i1 %tobool, label %if.else, label %if.then, !dbg !502

if.then:                                          ; preds = %for.end
  %call2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 98, i32 2, i32 4) #4, !dbg !503
  %2 = bitcast i8* %call2 to i32*, !dbg !503
  %index = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 2, !dbg !503
  store i32* %2, i32** %index, align 8, !dbg !503, !tbaa !446
  store i32 0, i32* %2, align 4, !dbg !505, !tbaa !441
  %arrayidx6 = getelementptr inbounds i8* %call2, i64 4, !dbg !506
  %3 = bitcast i8* %arrayidx6 to i32*, !dbg !506
  store i32 %natom, i32* %3, align 4, !dbg !506, !tbaa !441
  %nr = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 1, !dbg !507
  store i32 1, i32* %nr, align 4, !dbg !507, !tbaa !441
  br label %if.end, !dbg !508

if.else:                                          ; preds = %for.end
  %add = add i32 %natom, 1, !dbg !509
  %call7 = tail call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 104, i32 %add, i32 4) #4, !dbg !509
  %4 = bitcast i8* %call7 to i32*, !dbg !509
  %index8 = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 2, !dbg !509
  store i32* %4, i32** %index8, align 8, !dbg !509, !tbaa !446
  tail call void @llvm.dbg.value(metadata !23, i64 0, metadata !413), !dbg !511
  %cmp1044 = icmp slt i32 %natom, 0, !dbg !511
  br i1 %cmp1044, label %for.end17, label %for.body11, !dbg !511

for.body11:                                       ; preds = %if.else, %for.body11
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body11 ], [ 0, %if.else ]
  %arrayidx14 = getelementptr inbounds i32* %4, i64 %indvars.iv, !dbg !513
  %5 = trunc i64 %indvars.iv to i32, !dbg !513
  store i32 %5, i32* %arrayidx14, align 4, !dbg !513, !tbaa !441
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !511
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !511
  %exitcond = icmp eq i32 %lftr.wideiv, %add, !dbg !511
  br i1 %exitcond, label %for.end17, label %for.body11, !dbg !511

for.end17:                                        ; preds = %for.body11, %if.else
  %nr18 = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 1, !dbg !514
  store i32 %natom, i32* %nr18, align 4, !dbg !514, !tbaa !441
  br label %if.end

if.end:                                           ; preds = %for.end17, %if.then
  %sub = add nsw i32 %natom, -1, !dbg !515
  %arrayidx19 = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 0, i64 0, !dbg !515
  store i32 %sub, i32* %arrayidx19, align 4, !dbg !515, !tbaa !441
  ret void, !dbg !516
}

; Function Attrs: nounwind optsize uwtable
define void @done_block(%struct.t_block* nocapture %block) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_block* %block}, i64 0, metadata !416), !dbg !517
  %nr = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1, !dbg !518
  store i32 0, i32* %nr, align 4, !dbg !518, !tbaa !441
  %nra = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3, !dbg !519
  store i32 0, i32* %nra, align 4, !dbg !519, !tbaa !441
  %index = getelementptr inbounds %struct.t_block* %block, i64 0, i32 2, !dbg !520
  %0 = load i32** %index, align 8, !dbg !520, !tbaa !446
  %1 = bitcast i32* %0 to i8*, !dbg !520
  tail call void @save_free(i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 116, i8* %1) #4, !dbg !520
  %a = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4, !dbg !521
  %2 = load i32** %a, align 8, !dbg !521, !tbaa !446
  %3 = bitcast i32* %2 to i8*, !dbg !521
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 117, i8* %3) #4, !dbg !521
  ret void, !dbg !522
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @done_atom(%struct.t_atoms* nocapture %at) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_atoms* %at}, i64 0, metadata !419), !dbg !523
  %excl = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 9, !dbg !524
  tail call void @done_block(%struct.t_block* %excl) #5, !dbg !524
  %nr = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 0, !dbg !525
  store i32 0, i32* %nr, align 4, !dbg !525, !tbaa !441
  %nres = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 5, !dbg !526
  store i32 0, i32* %nres, align 4, !dbg !526, !tbaa !441
  %atom = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 1, !dbg !527
  %0 = load %struct.t_atom** %atom, align 8, !dbg !527, !tbaa !446
  %1 = bitcast %struct.t_atom* %0 to i8*, !dbg !527
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 125, i8* %1) #4, !dbg !527
  %resname = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 6, !dbg !528
  %2 = load i8**** %resname, align 8, !dbg !528, !tbaa !446
  %3 = bitcast i8*** %2 to i8*, !dbg !528
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 126, i8* %3) #4, !dbg !528
  %atomname = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 2, !dbg !529
  %4 = load i8**** %atomname, align 8, !dbg !529, !tbaa !446
  %5 = bitcast i8*** %4 to i8*, !dbg !529
  tail call void @save_free(i8* getelementptr inbounds ([13 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 127, i8* %5) #4, !dbg !529
  ret void, !dbg !530
}

; Function Attrs: nounwind optsize uwtable
define void @done_top(%struct.t_topology* %top) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_topology* %top}, i64 0, metadata !422), !dbg !531
  %atoms = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, !dbg !532
  tail call void @done_atom(%struct.t_atoms* %atoms) #5, !dbg !532
  %symtab = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 4, !dbg !533
  tail call void @done_symtab(%struct.t_symtab* %symtab) #4, !dbg !533
  tail call void @llvm.dbg.value(metadata !23, i64 0, metadata !423), !dbg !534
  br label %for.body, !dbg !534

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv, !dbg !536
  tail call void @done_block(%struct.t_block* %arrayidx) #5, !dbg !536
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !534
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !534
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !534
  br i1 %exitcond, label %for.end, label %for.body, !dbg !534

for.end:                                          ; preds = %for.body
  ret void, !dbg !537
}

; Function Attrs: optsize
declare void @done_symtab(%struct.t_symtab*) #1

; Function Attrs: nounwind optsize uwtable
define void @done_inputrec(%struct.t_inputrec* nocapture %ir) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_inputrec* %ir}, i64 0, metadata !426), !dbg !538
  tail call void @llvm.dbg.value(metadata !23, i64 0, metadata !427), !dbg !539
  br label %for.body, !dbg !539

for.body:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %a = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv, i32 1, !dbg !541
  %0 = load float** %a, align 8, !dbg !541, !tbaa !446
  %tobool = icmp eq float* %0, null, !dbg !541
  br i1 %tobool, label %if.end, label %if.then, !dbg !541

if.then:                                          ; preds = %for.body
  %1 = bitcast float* %0 to i8*, !dbg !541
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 145, i8* %1) #4, !dbg !541
  br label %if.end, !dbg !541

if.end:                                           ; preds = %for.body, %if.then
  %phi = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv, i32 2, !dbg !543
  %2 = load float** %phi, align 8, !dbg !543, !tbaa !446
  %tobool8 = icmp eq float* %2, null, !dbg !543
  br i1 %tobool8, label %if.end14, label %if.then9, !dbg !543

if.then9:                                         ; preds = %if.end
  %3 = bitcast float* %2 to i8*, !dbg !543
  tail call void @save_free(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 146, i8* %3) #4, !dbg !543
  br label %if.end14, !dbg !543

if.end14:                                         ; preds = %if.end, %if.then9
  %a17 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv, i32 1, !dbg !544
  %4 = load float** %a17, align 8, !dbg !544, !tbaa !446
  %tobool18 = icmp eq float* %4, null, !dbg !544
  br i1 %tobool18, label %if.end24, label %if.then19, !dbg !544

if.then19:                                        ; preds = %if.end14
  %5 = bitcast float* %4 to i8*, !dbg !544
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 147, i8* %5) #4, !dbg !544
  br label %if.end24, !dbg !544

if.end24:                                         ; preds = %if.end14, %if.then19
  %phi28 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv, i32 2, !dbg !545
  %6 = load float** %phi28, align 8, !dbg !545, !tbaa !446
  %tobool29 = icmp eq float* %6, null, !dbg !545
  br i1 %tobool29, label %for.inc, label %if.then30, !dbg !545

if.then30:                                        ; preds = %if.end24
  %7 = bitcast float* %6 to i8*, !dbg !545
  tail call void @save_free(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 148, i8* %7) #4, !dbg !545
  br label %for.inc, !dbg !545

for.inc:                                          ; preds = %if.end24, %if.then30
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !539
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !539
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !539
  br i1 %exitcond, label %for.end, label %for.body, !dbg !539

for.end:                                          ; preds = %for.inc
  %nrdf = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 4, !dbg !546
  %8 = load float** %nrdf, align 8, !dbg !546, !tbaa !446
  %tobool36 = icmp eq float* %8, null, !dbg !546
  br i1 %tobool36, label %if.end40, label %if.then37, !dbg !546

if.then37:                                        ; preds = %for.end
  %9 = bitcast float* %8 to i8*, !dbg !546
  tail call void @save_free(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 150, i8* %9) #4, !dbg !546
  br label %if.end40, !dbg !546

if.end40:                                         ; preds = %for.end, %if.then37
  %ref_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 5, !dbg !547
  %10 = load float** %ref_t, align 8, !dbg !547, !tbaa !446
  %tobool42 = icmp eq float* %10, null, !dbg !547
  br i1 %tobool42, label %if.end46, label %if.then43, !dbg !547

if.then43:                                        ; preds = %if.end40
  %11 = bitcast float* %10 to i8*, !dbg !547
  tail call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 151, i8* %11) #4, !dbg !547
  br label %if.end46, !dbg !547

if.end46:                                         ; preds = %if.end40, %if.then43
  %tau_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 6, !dbg !548
  %12 = load float** %tau_t, align 8, !dbg !548, !tbaa !446
  %tobool48 = icmp eq float* %12, null, !dbg !548
  br i1 %tobool48, label %if.end52, label %if.then49, !dbg !548

if.then49:                                        ; preds = %if.end46
  %13 = bitcast float* %12 to i8*, !dbg !548
  tail call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 152, i8* %13) #4, !dbg !548
  br label %if.end52, !dbg !548

if.end52:                                         ; preds = %if.end46, %if.then49
  %acc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 7, !dbg !549
  %14 = load [3 x float]** %acc, align 8, !dbg !549, !tbaa !446
  %tobool54 = icmp eq [3 x float]* %14, null, !dbg !549
  br i1 %tobool54, label %if.end58, label %if.then55, !dbg !549

if.then55:                                        ; preds = %if.end52
  %15 = bitcast [3 x float]* %14 to i8*, !dbg !549
  tail call void @save_free(i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 153, i8* %15) #4, !dbg !549
  br label %if.end58, !dbg !549

if.end58:                                         ; preds = %if.end52, %if.then55
  %nFreeze = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 8, !dbg !550
  %16 = load [3 x i32]** %nFreeze, align 8, !dbg !550, !tbaa !446
  %tobool60 = icmp eq [3 x i32]* %16, null, !dbg !550
  br i1 %tobool60, label %if.end64, label %if.then61, !dbg !550

if.then61:                                        ; preds = %if.end58
  %17 = bitcast [3 x i32]* %16 to i8*, !dbg !550
  tail call void @save_free(i8* getelementptr inbounds ([17 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 154, i8* %17) #4, !dbg !550
  br label %if.end64, !dbg !550

if.end64:                                         ; preds = %if.end58, %if.then61
  ret void, !dbg !551
}

; Function Attrs: nounwind optsize uwtable
define void @init_t_atoms(%struct.t_atoms* nocapture %atoms, i32 %natoms, i32 %bPdbinfo) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !432), !dbg !552
  tail call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !433), !dbg !552
  tail call void @llvm.dbg.value(metadata !{i32 %bPdbinfo}, i64 0, metadata !434), !dbg !552
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !553
  store i32 %natoms, i32* %nr, align 4, !dbg !553, !tbaa !441
  %nres = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5, !dbg !554
  store i32 0, i32* %nres, align 4, !dbg !554, !tbaa !441
  %ngrpname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 7, !dbg !555
  store i32 0, i32* %ngrpname, align 4, !dbg !555, !tbaa !441
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 162, i32 %natoms, i32 8) #4, !dbg !556
  %0 = bitcast i8* %call to i8***, !dbg !556
  %atomname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2, !dbg !556
  store i8*** %0, i8**** %atomname, align 8, !dbg !556, !tbaa !446
  %atomtype = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 3, !dbg !557
  %1 = bitcast i8**** %atomtype to i8*, !dbg !558
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 16, i32 8, i1 false), !dbg !559
  %call1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 165, i32 %natoms, i32 8) #4, !dbg !558
  %2 = bitcast i8* %call1 to i8***, !dbg !558
  %resname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6, !dbg !558
  store i8*** %2, i8**** %resname, align 8, !dbg !558, !tbaa !446
  %call2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 166, i32 %natoms, i32 40) #4, !dbg !560
  %3 = bitcast i8* %call2 to %struct.t_atom*, !dbg !560
  %atom = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !560
  store %struct.t_atom* %3, %struct.t_atom** %atom, align 8, !dbg !560, !tbaa !446
  %call3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 167, i32 %natoms, i32 8) #4, !dbg !561
  %4 = bitcast i8* %call3 to i8***, !dbg !561
  %grpname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 8, !dbg !561
  store i8*** %4, i8**** %grpname, align 8, !dbg !561, !tbaa !446
  %tobool = icmp eq i32 %bPdbinfo, 0, !dbg !562
  br i1 %tobool, label %if.else, label %if.then, !dbg !562

if.then:                                          ; preds = %entry
  %call4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 169, i32 %natoms, i32 52) #4, !dbg !563
  %5 = bitcast i8* %call4 to %struct.t_pdbinfo*, !dbg !563
  %pdbinfo = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 11, !dbg !563
  store %struct.t_pdbinfo* %5, %struct.t_pdbinfo** %pdbinfo, align 8, !dbg !563, !tbaa !446
  br label %if.end, !dbg !563

if.else:                                          ; preds = %entry
  %pdbinfo5 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 11, !dbg !564
  store %struct.t_pdbinfo* null, %struct.t_pdbinfo** %pdbinfo5, align 8, !dbg !564, !tbaa !446
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %excl = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 9, !dbg !565
  tail call void @llvm.dbg.value(metadata !{%struct.t_block* %excl}, i64 0, metadata !566) #2, !dbg !567
  %block11.i = bitcast %struct.t_block* %excl to i8*
  %nr.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 9, i32 1, !dbg !568
  store i32 0, i32* %nr.i, align 4, !dbg !568, !tbaa !441
  %nra.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 9, i32 3, !dbg !569
  store i32 0, i32* %nra.i, align 4, !dbg !569, !tbaa !441
  %call.i = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 44, i32 1, i32 4) #4, !dbg !570
  %6 = bitcast i8* %call.i to i32*, !dbg !570
  %index.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 9, i32 2, !dbg !570
  store i32* %6, i32** %index.i, align 8, !dbg !570, !tbaa !446
  store i32 0, i32* %6, align 4, !dbg !571, !tbaa !441
  %a.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 9, i32 4, !dbg !572
  store i32* null, i32** %a.i, align 8, !dbg !572, !tbaa !446
  tail call void @llvm.dbg.value(metadata !23, i64 0, metadata !573) #2, !dbg !574
  tail call void @llvm.memset.p0i8.i64(i8* %block11.i, i8 0, i64 1024, i32 4, i1 false) #2, !dbg !575
  ret void, !dbg !576
}

; Function Attrs: nounwind optsize uwtable
define void @free_t_atoms(%struct.t_atoms* nocapture %atoms) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !437), !dbg !577
  tail call void @llvm.dbg.value(metadata !23, i64 0, metadata !438), !dbg !578
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !578
  %0 = load i32* %nr, align 4, !dbg !578, !tbaa !441
  %cmp20 = icmp sgt i32 %0, 0, !dbg !578
  %atomname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2, !dbg !580
  br i1 %cmp20, label %for.body, label %for.end, !dbg !578

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %1 = load i8**** %atomname, align 8, !dbg !580, !tbaa !446
  %arrayidx = getelementptr inbounds i8*** %1, i64 %indvars.iv, !dbg !580
  %2 = load i8*** %arrayidx, align 8, !dbg !580, !tbaa !446
  %3 = load i8** %2, align 8, !dbg !580, !tbaa !446
  tail call void @save_free(i8* getelementptr inbounds ([20 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 180, i8* %3) #4, !dbg !580
  %4 = load i8**** %atomname, align 8, !dbg !582, !tbaa !446
  %arrayidx3 = getelementptr inbounds i8*** %4, i64 %indvars.iv, !dbg !582
  %5 = load i8*** %arrayidx3, align 8, !dbg !582, !tbaa !446
  store i8* null, i8** %5, align 8, !dbg !582, !tbaa !446
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !578
  %6 = load i32* %nr, align 4, !dbg !578, !tbaa !441
  %7 = trunc i64 %indvars.iv.next to i32, !dbg !578
  %cmp = icmp slt i32 %7, %6, !dbg !578
  br i1 %cmp, label %for.body, label %for.end, !dbg !578

for.end:                                          ; preds = %entry, %for.body
  %8 = load i8**** %atomname, align 8, !dbg !583, !tbaa !446
  %9 = bitcast i8*** %8 to i8*, !dbg !583
  tail call void @save_free(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 183, i8* %9) #4, !dbg !583
  %resname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6, !dbg !584
  %10 = load i8**** %resname, align 8, !dbg !584, !tbaa !446
  %11 = bitcast i8*** %10 to i8*, !dbg !584
  tail call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 185, i8* %11) #4, !dbg !584
  %atom = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !585
  %12 = load %struct.t_atom** %atom, align 8, !dbg !585, !tbaa !446
  %13 = bitcast %struct.t_atom* %12 to i8*, !dbg !585
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 186, i8* %13) #4, !dbg !585
  %pdbinfo = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 11, !dbg !586
  %14 = load %struct.t_pdbinfo** %pdbinfo, align 8, !dbg !586, !tbaa !446
  %tobool = icmp eq %struct.t_pdbinfo* %14, null, !dbg !586
  br i1 %tobool, label %if.end, label %if.then, !dbg !586

if.then:                                          ; preds = %for.end
  %15 = bitcast %struct.t_pdbinfo* %14 to i8*, !dbg !587
  tail call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 188, i8* %15) #4, !dbg !587
  br label %if.end, !dbg !587

if.end:                                           ; preds = %for.end, %if.then
  store i32 0, i32* %nr, align 4, !dbg !588, !tbaa !441
  %nres = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5, !dbg !589
  store i32 0, i32* %nres, align 4, !dbg !589, !tbaa !441
  %excl = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 9, !dbg !590
  tail call void @done_block(%struct.t_block* %excl) #5, !dbg !590
  ret void, !dbg !591
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !23, metadata !24, metadata !23, metadata !23, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/typedefs.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/typedefs.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !16}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 41, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 41, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/atoms.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15}
!6 = metadata !{i32 786472, metadata !"egcTC", i64 0} ; [ DW_TAG_enumerator ] [egcTC :: 0]
!7 = metadata !{i32 786472, metadata !"egcENER", i64 1} ; [ DW_TAG_enumerator ] [egcENER :: 1]
!8 = metadata !{i32 786472, metadata !"egcACC", i64 2} ; [ DW_TAG_enumerator ] [egcACC :: 2]
!9 = metadata !{i32 786472, metadata !"egcFREEZE", i64 3} ; [ DW_TAG_enumerator ] [egcFREEZE :: 3]
!10 = metadata !{i32 786472, metadata !"egcUser1", i64 4} ; [ DW_TAG_enumerator ] [egcUser1 :: 4]
!11 = metadata !{i32 786472, metadata !"egcUser2", i64 5} ; [ DW_TAG_enumerator ] [egcUser2 :: 5]
!12 = metadata !{i32 786472, metadata !"egcVCM", i64 6} ; [ DW_TAG_enumerator ] [egcVCM :: 6]
!13 = metadata !{i32 786472, metadata !"egcXTC", i64 7} ; [ DW_TAG_enumerator ] [egcXTC :: 7]
!14 = metadata !{i32 786472, metadata !"egcORFIT", i64 8} ; [ DW_TAG_enumerator ] [egcORFIT :: 8]
!15 = metadata !{i32 786472, metadata !"egcNR", i64 9} ; [ DW_TAG_enumerator ] [egcNR :: 9]
!16 = metadata !{i32 786436, metadata !17, null, metadata !"", i32 38, i64 32, i64 32, i32 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 38, size 32, align 32, offset 0] [from ]
!17 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/enums.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!18 = metadata !{metadata !19, metadata !20, metadata !21, metadata !22}
!19 = metadata !{i32 786472, metadata !"ebCGS", i64 0} ; [ DW_TAG_enumerator ] [ebCGS :: 0]
!20 = metadata !{i32 786472, metadata !"ebMOLS", i64 1} ; [ DW_TAG_enumerator ] [ebMOLS :: 1]
!21 = metadata !{i32 786472, metadata !"ebSBLOCKS", i64 2} ; [ DW_TAG_enumerator ] [ebSBLOCKS :: 2]
!22 = metadata !{i32 786472, metadata !"ebNR", i64 3} ; [ DW_TAG_enumerator ] [ebNR :: 3]
!23 = metadata !{i32 0}
!24 = metadata !{metadata !25, metadata !48, metadata !118, metadata !284, metadata !406, metadata !414, metadata !417, metadata !420, metadata !424, metadata !428, metadata !435}
!25 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"init_block", metadata !"init_block", metadata !"", i32 38, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_block*)* @init_block, null, null, metadata !45, i32 39} ; [ DW_TAG_subprogram ] [line 38] [def] [scope 39] [init_block]
!26 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/typedefs.c]
!27 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{null, metadata !29}
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_block]
!30 = metadata !{i32 786454, metadata !1, null, metadata !"t_block", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [t_block] [line 52, size 0, align 0, offset 0] [from ]
!31 = metadata !{i32 786451, metadata !32, null, metadata !"", i32 36, i64 8448, i64 64, i32 0, i32 0, null, metadata !33, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 8448, align 64, offset 0] [from ]
!32 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/block.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!33 = metadata !{metadata !34, metadata !39, metadata !40, metadata !43, metadata !44}
!34 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"multinr", i32 37, i64 8192, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [multinr] [line 37, size 8192, align 32, offset 0] [from ]
!35 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !36, metadata !37, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!36 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!37 = metadata !{metadata !38}
!38 = metadata !{i32 786465, i64 0, i64 256}      ; [ DW_TAG_subrange_type ] [0, 255]
!39 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"nr", i32 43, i64 32, i64 32, i64 8192, i32 0, metadata !36} ; [ DW_TAG_member ] [nr] [line 43, size 32, align 32, offset 8192] [from int]
!40 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"index", i32 44, i64 64, i64 64, i64 8256, i32 0, metadata !41} ; [ DW_TAG_member ] [index] [line 44, size 64, align 64, offset 8256] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!42 = metadata !{i32 786454, metadata !32, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!43 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"nra", i32 45, i64 32, i64 32, i64 8320, i32 0, metadata !36} ; [ DW_TAG_member ] [nra] [line 45, size 32, align 32, offset 8320] [from int]
!44 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"a", i32 46, i64 64, i64 64, i64 8384, i32 0, metadata !41} ; [ DW_TAG_member ] [a] [line 46, size 64, align 64, offset 8384] [from ]
!45 = metadata !{metadata !46, metadata !47}
!46 = metadata !{i32 786689, metadata !25, metadata !"block", metadata !26, i32 16777254, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [block] [line 38]
!47 = metadata !{i32 786688, metadata !25, metadata !"i", metadata !26, i32 40, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 40]
!48 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"init_atom", metadata !"init_atom", metadata !"", i32 51, metadata !49, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_atoms*)* @init_atom, null, null, metadata !115, i32 52} ; [ DW_TAG_subprogram ] [line 51] [def] [scope 52] [init_atom]
!49 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !50, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!50 = metadata !{null, metadata !51}
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atoms]
!52 = metadata !{i32 786454, metadata !1, null, metadata !"t_atoms", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [t_atoms] [line 94, size 0, align 0, offset 0] [from ]
!53 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 75, i64 10240, i64 64, i32 0, i32 0, null, metadata !54, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 75, size 10240, align 64, offset 0] [from ]
!54 = metadata !{metadata !55, metadata !56, metadata !78, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !98}
!55 = metadata !{i32 786445, metadata !4, metadata !53, metadata !"nr", i32 76, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [nr] [line 76, size 32, align 32, offset 0] [from int]
!56 = metadata !{i32 786445, metadata !4, metadata !53, metadata !"atom", i32 77, i64 64, i64 64, i64 64, i32 0, metadata !57} ; [ DW_TAG_member ] [atom] [line 77, size 64, align 64, offset 64] [from ]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atom]
!58 = metadata !{i32 786454, metadata !4, null, metadata !"t_atom", i32 57, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [t_atom] [line 57, size 0, align 0, offset 0] [from ]
!59 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 48, i64 320, i64 32, i32 0, i32 0, null, metadata !60, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 320, align 32, offset 0] [from ]
!60 = metadata !{metadata !61, metadata !64, metadata !65, metadata !66, metadata !67, metadata !69, metadata !70, metadata !71, metadata !72, metadata !77}
!61 = metadata !{i32 786445, metadata !4, metadata !59, metadata !"m", i32 49, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [m] [line 49, size 32, align 32, offset 0] [from real]
!62 = metadata !{i32 786454, metadata !4, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!63 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!64 = metadata !{i32 786445, metadata !4, metadata !59, metadata !"q", i32 49, i64 32, i64 32, i64 32, i32 0, metadata !62} ; [ DW_TAG_member ] [q] [line 49, size 32, align 32, offset 32] [from real]
!65 = metadata !{i32 786445, metadata !4, metadata !59, metadata !"mB", i32 50, i64 32, i64 32, i64 64, i32 0, metadata !62} ; [ DW_TAG_member ] [mB] [line 50, size 32, align 32, offset 64] [from real]
!66 = metadata !{i32 786445, metadata !4, metadata !59, metadata !"qB", i32 50, i64 32, i64 32, i64 96, i32 0, metadata !62} ; [ DW_TAG_member ] [qB] [line 50, size 32, align 32, offset 96] [from real]
!67 = metadata !{i32 786445, metadata !4, metadata !59, metadata !"type", i32 51, i64 16, i64 16, i64 128, i32 0, metadata !68} ; [ DW_TAG_member ] [type] [line 51, size 16, align 16, offset 128] [from unsigned short]
!68 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!69 = metadata !{i32 786445, metadata !4, metadata !59, metadata !"typeB", i32 52, i64 16, i64 16, i64 144, i32 0, metadata !68} ; [ DW_TAG_member ] [typeB] [line 52, size 16, align 16, offset 144] [from unsigned short]
!70 = metadata !{i32 786445, metadata !4, metadata !59, metadata !"ptype", i32 53, i64 32, i64 32, i64 160, i32 0, metadata !36} ; [ DW_TAG_member ] [ptype] [line 53, size 32, align 32, offset 160] [from int]
!71 = metadata !{i32 786445, metadata !4, metadata !59, metadata !"resnr", i32 54, i64 32, i64 32, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [resnr] [line 54, size 32, align 32, offset 192] [from int]
!72 = metadata !{i32 786445, metadata !4, metadata !59, metadata !"grpnr", i32 55, i64 72, i64 8, i64 224, i32 0, metadata !73} ; [ DW_TAG_member ] [grpnr] [line 55, size 72, align 8, offset 224] [from ]
!73 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 72, i64 8, i32 0, i32 0, metadata !74, metadata !75, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 72, align 8, offset 0] [from unsigned char]
!74 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!75 = metadata !{metadata !76}
!76 = metadata !{i32 786465, i64 0, i64 9}        ; [ DW_TAG_subrange_type ] [0, 8]
!77 = metadata !{i32 786445, metadata !4, metadata !59, metadata !"chain", i32 56, i64 8, i64 8, i64 296, i32 0, metadata !74} ; [ DW_TAG_member ] [chain] [line 56, size 8, align 8, offset 296] [from unsigned char]
!78 = metadata !{i32 786445, metadata !4, metadata !53, metadata !"atomname", i32 80, i64 64, i64 64, i64 128, i32 0, metadata !79} ; [ DW_TAG_member ] [atomname] [line 80, size 64, align 64, offset 128] [from ]
!79 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !80} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!80 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !81} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!81 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !82} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!82 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!83 = metadata !{i32 786445, metadata !4, metadata !53, metadata !"atomtype", i32 82, i64 64, i64 64, i64 192, i32 0, metadata !79} ; [ DW_TAG_member ] [atomtype] [line 82, size 64, align 64, offset 192] [from ]
!84 = metadata !{i32 786445, metadata !4, metadata !53, metadata !"atomtypeB", i32 84, i64 64, i64 64, i64 256, i32 0, metadata !79} ; [ DW_TAG_member ] [atomtypeB] [line 84, size 64, align 64, offset 256] [from ]
!85 = metadata !{i32 786445, metadata !4, metadata !53, metadata !"nres", i32 86, i64 32, i64 32, i64 320, i32 0, metadata !36} ; [ DW_TAG_member ] [nres] [line 86, size 32, align 32, offset 320] [from int]
!86 = metadata !{i32 786445, metadata !4, metadata !53, metadata !"resname", i32 87, i64 64, i64 64, i64 384, i32 0, metadata !79} ; [ DW_TAG_member ] [resname] [line 87, size 64, align 64, offset 384] [from ]
!87 = metadata !{i32 786445, metadata !4, metadata !53, metadata !"ngrpname", i32 89, i64 32, i64 32, i64 448, i32 0, metadata !36} ; [ DW_TAG_member ] [ngrpname] [line 89, size 32, align 32, offset 448] [from int]
!88 = metadata !{i32 786445, metadata !4, metadata !53, metadata !"grpname", i32 90, i64 64, i64 64, i64 512, i32 0, metadata !79} ; [ DW_TAG_member ] [grpname] [line 90, size 64, align 64, offset 512] [from ]
!89 = metadata !{i32 786445, metadata !4, metadata !53, metadata !"excl", i32 91, i64 8448, i64 64, i64 576, i32 0, metadata !30} ; [ DW_TAG_member ] [excl] [line 91, size 8448, align 64, offset 576] [from t_block]
!90 = metadata !{i32 786445, metadata !4, metadata !53, metadata !"grps", i32 92, i64 1152, i64 64, i64 9024, i32 0, metadata !91} ; [ DW_TAG_member ] [grps] [line 92, size 1152, align 64, offset 9024] [from ]
!91 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 64, i32 0, i32 0, metadata !92, metadata !75, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1152, align 64, offset 0] [from t_grps]
!92 = metadata !{i32 786454, metadata !4, null, metadata !"t_grps", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !93} ; [ DW_TAG_typedef ] [t_grps] [line 73, size 0, align 0, offset 0] [from ]
!93 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 70, i64 128, i64 64, i32 0, i32 0, null, metadata !94, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 70, size 128, align 64, offset 0] [from ]
!94 = metadata !{metadata !95, metadata !96}
!95 = metadata !{i32 786445, metadata !4, metadata !93, metadata !"nr", i32 71, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [nr] [line 71, size 32, align 32, offset 0] [from int]
!96 = metadata !{i32 786445, metadata !4, metadata !93, metadata !"nm_ind", i32 72, i64 64, i64 64, i64 64, i32 0, metadata !97} ; [ DW_TAG_member ] [nm_ind] [line 72, size 64, align 64, offset 64] [from ]
!97 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!98 = metadata !{i32 786445, metadata !4, metadata !53, metadata !"pdbinfo", i32 93, i64 64, i64 64, i64 10176, i32 0, metadata !99} ; [ DW_TAG_member ] [pdbinfo] [line 93, size 64, align 64, offset 10176] [from ]
!99 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !100} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_pdbinfo]
!100 = metadata !{i32 786454, metadata !4, null, metadata !"t_pdbinfo", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_typedef ] [t_pdbinfo] [line 68, size 0, align 0, offset 0] [from ]
!101 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 59, i64 416, i64 32, i32 0, i32 0, null, metadata !102, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 59, size 416, align 32, offset 0] [from ]
!102 = metadata !{metadata !103, metadata !104, metadata !105, metadata !106, metadata !110, metadata !111, metadata !112, metadata !113}
!103 = metadata !{i32 786445, metadata !4, metadata !101, metadata !"type", i32 60, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [type] [line 60, size 32, align 32, offset 0] [from int]
!104 = metadata !{i32 786445, metadata !4, metadata !101, metadata !"atomnr", i32 61, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [atomnr] [line 61, size 32, align 32, offset 32] [from int]
!105 = metadata !{i32 786445, metadata !4, metadata !101, metadata !"altloc", i32 62, i64 8, i64 8, i64 64, i32 0, metadata !82} ; [ DW_TAG_member ] [altloc] [line 62, size 8, align 8, offset 64] [from char]
!106 = metadata !{i32 786445, metadata !4, metadata !101, metadata !"pdbresnr", i32 63, i64 48, i64 8, i64 72, i32 0, metadata !107} ; [ DW_TAG_member ] [pdbresnr] [line 63, size 48, align 8, offset 72] [from ]
!107 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 48, i64 8, i32 0, i32 0, metadata !82, metadata !108, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 48, align 8, offset 0] [from char]
!108 = metadata !{metadata !109}
!109 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!110 = metadata !{i32 786445, metadata !4, metadata !101, metadata !"occup", i32 64, i64 32, i64 32, i64 128, i32 0, metadata !62} ; [ DW_TAG_member ] [occup] [line 64, size 32, align 32, offset 128] [from real]
!111 = metadata !{i32 786445, metadata !4, metadata !101, metadata !"bfac", i32 65, i64 32, i64 32, i64 160, i32 0, metadata !62} ; [ DW_TAG_member ] [bfac] [line 65, size 32, align 32, offset 160] [from real]
!112 = metadata !{i32 786445, metadata !4, metadata !101, metadata !"bAnisotropic", i32 66, i64 32, i64 32, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [bAnisotropic] [line 66, size 32, align 32, offset 192] [from int]
!113 = metadata !{i32 786445, metadata !4, metadata !101, metadata !"uij", i32 67, i64 192, i64 32, i64 224, i32 0, metadata !114} ; [ DW_TAG_member ] [uij] [line 67, size 192, align 32, offset 224] [from ]
!114 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !36, metadata !108, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!115 = metadata !{metadata !116, metadata !117}
!116 = metadata !{i32 786689, metadata !48, metadata !"at", metadata !26, i32 16777267, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [at] [line 51]
!117 = metadata !{i32 786688, metadata !48, metadata !"i", metadata !26, i32 53, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 53]
!118 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"init_top", metadata !"init_top", metadata !"", i32 72, metadata !119, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_topology*)* @init_top, null, null, metadata !281, i32 73} ; [ DW_TAG_subprogram ] [line 72] [def] [scope 73] [init_top]
!119 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !120, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!120 = metadata !{null, metadata !121}
!121 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !122} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_topology]
!122 = metadata !{i32 786454, metadata !1, null, metadata !"t_topology", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !123} ; [ DW_TAG_typedef ] [t_topology] [line 42, size 0, align 0, offset 0] [from ]
!123 = metadata !{i32 786451, metadata !124, null, metadata !"", i32 36, i64 402112, i64 64, i32 0, i32 0, null, metadata !125, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 402112, align 64, offset 0] [from ]
!124 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/topology.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!125 = metadata !{metadata !126, metadata !127, metadata !263, metadata !264, metadata !266}
!126 = metadata !{i32 786445, metadata !124, metadata !123, metadata !"name", i32 37, i64 64, i64 64, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [name] [line 37, size 64, align 64, offset 0] [from ]
!127 = metadata !{i32 786445, metadata !124, metadata !123, metadata !"idef", i32 38, i64 366336, i64 64, i64 64, i32 0, metadata !128} ; [ DW_TAG_member ] [idef] [line 38, size 366336, align 64, offset 64] [from t_idef]
!128 = metadata !{i32 786454, metadata !124, null, metadata !"t_idef", i32 188, i64 0, i64 0, i64 0, i32 0, metadata !129} ; [ DW_TAG_typedef ] [t_idef] [line 188, size 0, align 0, offset 0] [from ]
!129 = metadata !{i32 786451, metadata !130, null, metadata !"", i32 179, i64 366336, i64 64, i32 0, i32 0, null, metadata !131, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 179, size 366336, align 64, offset 0] [from ]
!130 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/idef.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!131 = metadata !{metadata !132, metadata !133, metadata !134, metadata !135, metadata !138, metadata !251}
!132 = metadata !{i32 786445, metadata !130, metadata !129, metadata !"ntypes", i32 181, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [ntypes] [line 181, size 32, align 32, offset 0] [from int]
!133 = metadata !{i32 786445, metadata !130, metadata !129, metadata !"nodeid", i32 182, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [nodeid] [line 182, size 32, align 32, offset 32] [from int]
!134 = metadata !{i32 786445, metadata !130, metadata !129, metadata !"atnr", i32 183, i64 32, i64 32, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [atnr] [line 183, size 32, align 32, offset 64] [from int]
!135 = metadata !{i32 786445, metadata !130, metadata !129, metadata !"functype", i32 184, i64 64, i64 64, i64 128, i32 0, metadata !136} ; [ DW_TAG_member ] [functype] [line 184, size 64, align 64, offset 128] [from ]
!136 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !137} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_functype]
!137 = metadata !{i32 786454, metadata !130, null, metadata !"t_functype", i32 133, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ] [t_functype] [line 133, size 0, align 0, offset 0] [from int]
!138 = metadata !{i32 786445, metadata !130, metadata !129, metadata !"iparams", i32 185, i64 64, i64 64, i64 192, i32 0, metadata !139} ; [ DW_TAG_member ] [iparams] [line 185, size 64, align 64, offset 192] [from ]
!139 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !140} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_iparams]
!140 = metadata !{i32 786454, metadata !130, null, metadata !"t_iparams", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !141} ; [ DW_TAG_typedef ] [t_iparams] [line 131, size 0, align 0, offset 0] [from ]
!141 = metadata !{i32 786455, metadata !130, null, metadata !"", i32 97, i64 192, i64 32, i64 0, i32 0, null, metadata !142, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 97, size 192, align 32, offset 0] [from ]
!142 = metadata !{metadata !143, metadata !149, metadata !156, metadata !162, metadata !171, metadata !176, metadata !183, metadata !191, metadata !196, metadata !201, metadata !207, metadata !215, metadata !220, metadata !229, metadata !238, metadata !247}
!143 = metadata !{i32 786445, metadata !130, metadata !141, metadata !"bham", i32 105, i64 96, i64 32, i64 0, i32 0, metadata !144} ; [ DW_TAG_member ] [bham] [line 105, size 96, align 32, offset 0] [from ]
!144 = metadata !{i32 786451, metadata !130, metadata !141, metadata !"", i32 105, i64 96, i64 32, i32 0, i32 0, null, metadata !145, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 105, size 96, align 32, offset 0] [from ]
!145 = metadata !{metadata !146, metadata !147, metadata !148}
!146 = metadata !{i32 786445, metadata !130, metadata !144, metadata !"a", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [a] [line 105, size 32, align 32, offset 0] [from real]
!147 = metadata !{i32 786445, metadata !130, metadata !144, metadata !"b", i32 105, i64 32, i64 32, i64 32, i32 0, metadata !62} ; [ DW_TAG_member ] [b] [line 105, size 32, align 32, offset 32] [from real]
!148 = metadata !{i32 786445, metadata !130, metadata !144, metadata !"c", i32 105, i64 32, i64 32, i64 64, i32 0, metadata !62} ; [ DW_TAG_member ] [c] [line 105, size 32, align 32, offset 64] [from real]
!149 = metadata !{i32 786445, metadata !130, metadata !141, metadata !"harmonic", i32 106, i64 128, i64 32, i64 0, i32 0, metadata !150} ; [ DW_TAG_member ] [harmonic] [line 106, size 128, align 32, offset 0] [from ]
!150 = metadata !{i32 786451, metadata !130, metadata !141, metadata !"", i32 106, i64 128, i64 32, i32 0, i32 0, null, metadata !151, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 106, size 128, align 32, offset 0] [from ]
!151 = metadata !{metadata !152, metadata !153, metadata !154, metadata !155}
!152 = metadata !{i32 786445, metadata !130, metadata !150, metadata !"rA", i32 106, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [rA] [line 106, size 32, align 32, offset 0] [from real]
!153 = metadata !{i32 786445, metadata !130, metadata !150, metadata !"krA", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !62} ; [ DW_TAG_member ] [krA] [line 106, size 32, align 32, offset 32] [from real]
!154 = metadata !{i32 786445, metadata !130, metadata !150, metadata !"rB", i32 106, i64 32, i64 32, i64 64, i32 0, metadata !62} ; [ DW_TAG_member ] [rB] [line 106, size 32, align 32, offset 64] [from real]
!155 = metadata !{i32 786445, metadata !130, metadata !150, metadata !"krB", i32 106, i64 32, i64 32, i64 96, i32 0, metadata !62} ; [ DW_TAG_member ] [krB] [line 106, size 32, align 32, offset 96] [from real]
!156 = metadata !{i32 786445, metadata !130, metadata !141, metadata !"cubic", i32 108, i64 96, i64 32, i64 0, i32 0, metadata !157} ; [ DW_TAG_member ] [cubic] [line 108, size 96, align 32, offset 0] [from ]
!157 = metadata !{i32 786451, metadata !130, metadata !141, metadata !"", i32 108, i64 96, i64 32, i32 0, i32 0, null, metadata !158, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 108, size 96, align 32, offset 0] [from ]
!158 = metadata !{metadata !159, metadata !160, metadata !161}
!159 = metadata !{i32 786445, metadata !130, metadata !157, metadata !"b0", i32 108, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [b0] [line 108, size 32, align 32, offset 0] [from real]
!160 = metadata !{i32 786445, metadata !130, metadata !157, metadata !"kb", i32 108, i64 32, i64 32, i64 32, i32 0, metadata !62} ; [ DW_TAG_member ] [kb] [line 108, size 32, align 32, offset 32] [from real]
!161 = metadata !{i32 786445, metadata !130, metadata !157, metadata !"kcub", i32 108, i64 32, i64 32, i64 64, i32 0, metadata !62} ; [ DW_TAG_member ] [kcub] [line 108, size 32, align 32, offset 64] [from real]
!162 = metadata !{i32 786445, metadata !130, metadata !141, metadata !"wpol", i32 110, i64 192, i64 32, i64 0, i32 0, metadata !163} ; [ DW_TAG_member ] [wpol] [line 110, size 192, align 32, offset 0] [from ]
!163 = metadata !{i32 786451, metadata !130, metadata !141, metadata !"", i32 110, i64 192, i64 32, i32 0, i32 0, null, metadata !164, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 110, size 192, align 32, offset 0] [from ]
!164 = metadata !{metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170}
!165 = metadata !{i32 786445, metadata !130, metadata !163, metadata !"kx", i32 110, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [kx] [line 110, size 32, align 32, offset 0] [from real]
!166 = metadata !{i32 786445, metadata !130, metadata !163, metadata !"ky", i32 110, i64 32, i64 32, i64 32, i32 0, metadata !62} ; [ DW_TAG_member ] [ky] [line 110, size 32, align 32, offset 32] [from real]
!167 = metadata !{i32 786445, metadata !130, metadata !163, metadata !"kz", i32 110, i64 32, i64 32, i64 64, i32 0, metadata !62} ; [ DW_TAG_member ] [kz] [line 110, size 32, align 32, offset 64] [from real]
!168 = metadata !{i32 786445, metadata !130, metadata !163, metadata !"rOH", i32 110, i64 32, i64 32, i64 96, i32 0, metadata !62} ; [ DW_TAG_member ] [rOH] [line 110, size 32, align 32, offset 96] [from real]
!169 = metadata !{i32 786445, metadata !130, metadata !163, metadata !"rHH", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !62} ; [ DW_TAG_member ] [rHH] [line 110, size 32, align 32, offset 128] [from real]
!170 = metadata !{i32 786445, metadata !130, metadata !163, metadata !"rOD", i32 110, i64 32, i64 32, i64 160, i32 0, metadata !62} ; [ DW_TAG_member ] [rOD] [line 110, size 32, align 32, offset 160] [from real]
!171 = metadata !{i32 786445, metadata !130, metadata !141, metadata !"lj", i32 111, i64 64, i64 32, i64 0, i32 0, metadata !172} ; [ DW_TAG_member ] [lj] [line 111, size 64, align 32, offset 0] [from ]
!172 = metadata !{i32 786451, metadata !130, metadata !141, metadata !"", i32 111, i64 64, i64 32, i32 0, i32 0, null, metadata !173, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 111, size 64, align 32, offset 0] [from ]
!173 = metadata !{metadata !174, metadata !175}
!174 = metadata !{i32 786445, metadata !130, metadata !172, metadata !"c6", i32 111, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [c6] [line 111, size 32, align 32, offset 0] [from real]
!175 = metadata !{i32 786445, metadata !130, metadata !172, metadata !"c12", i32 111, i64 32, i64 32, i64 32, i32 0, metadata !62} ; [ DW_TAG_member ] [c12] [line 111, size 32, align 32, offset 32] [from real]
!176 = metadata !{i32 786445, metadata !130, metadata !141, metadata !"lj14", i32 112, i64 128, i64 32, i64 0, i32 0, metadata !177} ; [ DW_TAG_member ] [lj14] [line 112, size 128, align 32, offset 0] [from ]
!177 = metadata !{i32 786451, metadata !130, metadata !141, metadata !"", i32 112, i64 128, i64 32, i32 0, i32 0, null, metadata !178, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 112, size 128, align 32, offset 0] [from ]
!178 = metadata !{metadata !179, metadata !180, metadata !181, metadata !182}
!179 = metadata !{i32 786445, metadata !130, metadata !177, metadata !"c6A", i32 112, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [c6A] [line 112, size 32, align 32, offset 0] [from real]
!180 = metadata !{i32 786445, metadata !130, metadata !177, metadata !"c12A", i32 112, i64 32, i64 32, i64 32, i32 0, metadata !62} ; [ DW_TAG_member ] [c12A] [line 112, size 32, align 32, offset 32] [from real]
!181 = metadata !{i32 786445, metadata !130, metadata !177, metadata !"c6B", i32 112, i64 32, i64 32, i64 64, i32 0, metadata !62} ; [ DW_TAG_member ] [c6B] [line 112, size 32, align 32, offset 64] [from real]
!182 = metadata !{i32 786445, metadata !130, metadata !177, metadata !"c12B", i32 112, i64 32, i64 32, i64 96, i32 0, metadata !62} ; [ DW_TAG_member ] [c12B] [line 112, size 32, align 32, offset 96] [from real]
!183 = metadata !{i32 786445, metadata !130, metadata !141, metadata !"pdihs", i32 117, i64 160, i64 32, i64 0, i32 0, metadata !184} ; [ DW_TAG_member ] [pdihs] [line 117, size 160, align 32, offset 0] [from ]
!184 = metadata !{i32 786451, metadata !130, metadata !141, metadata !"", i32 117, i64 160, i64 32, i32 0, i32 0, null, metadata !185, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 117, size 160, align 32, offset 0] [from ]
!185 = metadata !{metadata !186, metadata !187, metadata !188, metadata !189, metadata !190}
!186 = metadata !{i32 786445, metadata !130, metadata !184, metadata !"phiA", i32 117, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [phiA] [line 117, size 32, align 32, offset 0] [from real]
!187 = metadata !{i32 786445, metadata !130, metadata !184, metadata !"cpA", i32 117, i64 32, i64 32, i64 32, i32 0, metadata !62} ; [ DW_TAG_member ] [cpA] [line 117, size 32, align 32, offset 32] [from real]
!188 = metadata !{i32 786445, metadata !130, metadata !184, metadata !"mult", i32 117, i64 32, i64 32, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [mult] [line 117, size 32, align 32, offset 64] [from int]
!189 = metadata !{i32 786445, metadata !130, metadata !184, metadata !"phiB", i32 117, i64 32, i64 32, i64 96, i32 0, metadata !62} ; [ DW_TAG_member ] [phiB] [line 117, size 32, align 32, offset 96] [from real]
!190 = metadata !{i32 786445, metadata !130, metadata !184, metadata !"cpB", i32 117, i64 32, i64 32, i64 128, i32 0, metadata !62} ; [ DW_TAG_member ] [cpB] [line 117, size 32, align 32, offset 128] [from real]
!191 = metadata !{i32 786445, metadata !130, metadata !141, metadata !"shake", i32 118, i64 64, i64 32, i64 0, i32 0, metadata !192} ; [ DW_TAG_member ] [shake] [line 118, size 64, align 32, offset 0] [from ]
!192 = metadata !{i32 786451, metadata !130, metadata !141, metadata !"", i32 118, i64 64, i64 32, i32 0, i32 0, null, metadata !193, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 118, size 64, align 32, offset 0] [from ]
!193 = metadata !{metadata !194, metadata !195}
!194 = metadata !{i32 786445, metadata !130, metadata !192, metadata !"dA", i32 118, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [dA] [line 118, size 32, align 32, offset 0] [from real]
!195 = metadata !{i32 786445, metadata !130, metadata !192, metadata !"dB", i32 118, i64 32, i64 32, i64 32, i32 0, metadata !62} ; [ DW_TAG_member ] [dB] [line 118, size 32, align 32, offset 32] [from real]
!196 = metadata !{i32 786445, metadata !130, metadata !141, metadata !"settle", i32 123, i64 64, i64 32, i64 0, i32 0, metadata !197} ; [ DW_TAG_member ] [settle] [line 123, size 64, align 32, offset 0] [from ]
!197 = metadata !{i32 786451, metadata !130, metadata !141, metadata !"", i32 123, i64 64, i64 32, i32 0, i32 0, null, metadata !198, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 123, size 64, align 32, offset 0] [from ]
!198 = metadata !{metadata !199, metadata !200}
!199 = metadata !{i32 786445, metadata !130, metadata !197, metadata !"doh", i32 123, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [doh] [line 123, size 32, align 32, offset 0] [from real]
!200 = metadata !{i32 786445, metadata !130, metadata !197, metadata !"dhh", i32 123, i64 32, i64 32, i64 32, i32 0, metadata !62} ; [ DW_TAG_member ] [dhh] [line 123, size 32, align 32, offset 32] [from real]
!201 = metadata !{i32 786445, metadata !130, metadata !141, metadata !"morse", i32 124, i64 96, i64 32, i64 0, i32 0, metadata !202} ; [ DW_TAG_member ] [morse] [line 124, size 96, align 32, offset 0] [from ]
!202 = metadata !{i32 786451, metadata !130, metadata !141, metadata !"", i32 124, i64 96, i64 32, i32 0, i32 0, null, metadata !203, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 124, size 96, align 32, offset 0] [from ]
!203 = metadata !{metadata !204, metadata !205, metadata !206}
!204 = metadata !{i32 786445, metadata !130, metadata !202, metadata !"b0", i32 124, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [b0] [line 124, size 32, align 32, offset 0] [from real]
!205 = metadata !{i32 786445, metadata !130, metadata !202, metadata !"cb", i32 124, i64 32, i64 32, i64 32, i32 0, metadata !62} ; [ DW_TAG_member ] [cb] [line 124, size 32, align 32, offset 32] [from real]
!206 = metadata !{i32 786445, metadata !130, metadata !202, metadata !"beta", i32 124, i64 32, i64 32, i64 64, i32 0, metadata !62} ; [ DW_TAG_member ] [beta] [line 124, size 32, align 32, offset 64] [from real]
!207 = metadata !{i32 786445, metadata !130, metadata !141, metadata !"posres", i32 125, i64 192, i64 32, i64 0, i32 0, metadata !208} ; [ DW_TAG_member ] [posres] [line 125, size 192, align 32, offset 0] [from ]
!208 = metadata !{i32 786451, metadata !130, metadata !141, metadata !"", i32 125, i64 192, i64 32, i32 0, i32 0, null, metadata !209, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 125, size 192, align 32, offset 0] [from ]
!209 = metadata !{metadata !210, metadata !214}
!210 = metadata !{i32 786445, metadata !130, metadata !208, metadata !"pos0", i32 125, i64 96, i64 32, i64 0, i32 0, metadata !211} ; [ DW_TAG_member ] [pos0] [line 125, size 96, align 32, offset 0] [from ]
!211 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !62, metadata !212, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!212 = metadata !{metadata !213}
!213 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!214 = metadata !{i32 786445, metadata !130, metadata !208, metadata !"fc", i32 125, i64 96, i64 32, i64 96, i32 0, metadata !211} ; [ DW_TAG_member ] [fc] [line 125, size 96, align 32, offset 96] [from ]
!215 = metadata !{i32 786445, metadata !130, metadata !141, metadata !"rbdihs", i32 126, i64 192, i64 32, i64 0, i32 0, metadata !216} ; [ DW_TAG_member ] [rbdihs] [line 126, size 192, align 32, offset 0] [from ]
!216 = metadata !{i32 786451, metadata !130, metadata !141, metadata !"", i32 126, i64 192, i64 32, i32 0, i32 0, null, metadata !217, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 126, size 192, align 32, offset 0] [from ]
!217 = metadata !{metadata !218}
!218 = metadata !{i32 786445, metadata !130, metadata !216, metadata !"rbc", i32 126, i64 192, i64 32, i64 0, i32 0, metadata !219} ; [ DW_TAG_member ] [rbc] [line 126, size 192, align 32, offset 0] [from ]
!219 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !62, metadata !108, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from real]
!220 = metadata !{i32 786445, metadata !130, metadata !141, metadata !"dummy", i32 127, i64 192, i64 32, i64 0, i32 0, metadata !221} ; [ DW_TAG_member ] [dummy] [line 127, size 192, align 32, offset 0] [from ]
!221 = metadata !{i32 786451, metadata !130, metadata !141, metadata !"", i32 127, i64 192, i64 32, i32 0, i32 0, null, metadata !222, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 127, size 192, align 32, offset 0] [from ]
!222 = metadata !{metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228}
!223 = metadata !{i32 786445, metadata !130, metadata !221, metadata !"a", i32 127, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [a] [line 127, size 32, align 32, offset 0] [from real]
!224 = metadata !{i32 786445, metadata !130, metadata !221, metadata !"b", i32 127, i64 32, i64 32, i64 32, i32 0, metadata !62} ; [ DW_TAG_member ] [b] [line 127, size 32, align 32, offset 32] [from real]
!225 = metadata !{i32 786445, metadata !130, metadata !221, metadata !"c", i32 127, i64 32, i64 32, i64 64, i32 0, metadata !62} ; [ DW_TAG_member ] [c] [line 127, size 32, align 32, offset 64] [from real]
!226 = metadata !{i32 786445, metadata !130, metadata !221, metadata !"d", i32 127, i64 32, i64 32, i64 96, i32 0, metadata !62} ; [ DW_TAG_member ] [d] [line 127, size 32, align 32, offset 96] [from real]
!227 = metadata !{i32 786445, metadata !130, metadata !221, metadata !"e", i32 127, i64 32, i64 32, i64 128, i32 0, metadata !62} ; [ DW_TAG_member ] [e] [line 127, size 32, align 32, offset 128] [from real]
!228 = metadata !{i32 786445, metadata !130, metadata !221, metadata !"f", i32 127, i64 32, i64 32, i64 160, i32 0, metadata !62} ; [ DW_TAG_member ] [f] [line 127, size 32, align 32, offset 160] [from real]
!229 = metadata !{i32 786445, metadata !130, metadata !141, metadata !"disres", i32 128, i64 192, i64 32, i64 0, i32 0, metadata !230} ; [ DW_TAG_member ] [disres] [line 128, size 192, align 32, offset 0] [from ]
!230 = metadata !{i32 786451, metadata !130, metadata !141, metadata !"", i32 128, i64 192, i64 32, i32 0, i32 0, null, metadata !231, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 128, size 192, align 32, offset 0] [from ]
!231 = metadata !{metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237}
!232 = metadata !{i32 786445, metadata !130, metadata !230, metadata !"low", i32 128, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [low] [line 128, size 32, align 32, offset 0] [from real]
!233 = metadata !{i32 786445, metadata !130, metadata !230, metadata !"up1", i32 128, i64 32, i64 32, i64 32, i32 0, metadata !62} ; [ DW_TAG_member ] [up1] [line 128, size 32, align 32, offset 32] [from real]
!234 = metadata !{i32 786445, metadata !130, metadata !230, metadata !"up2", i32 128, i64 32, i64 32, i64 64, i32 0, metadata !62} ; [ DW_TAG_member ] [up2] [line 128, size 32, align 32, offset 64] [from real]
!235 = metadata !{i32 786445, metadata !130, metadata !230, metadata !"kfac", i32 128, i64 32, i64 32, i64 96, i32 0, metadata !62} ; [ DW_TAG_member ] [kfac] [line 128, size 32, align 32, offset 96] [from real]
!236 = metadata !{i32 786445, metadata !130, metadata !230, metadata !"type", i32 128, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [type] [line 128, size 32, align 32, offset 128] [from int]
!237 = metadata !{i32 786445, metadata !130, metadata !230, metadata !"label", i32 128, i64 32, i64 32, i64 160, i32 0, metadata !36} ; [ DW_TAG_member ] [label] [line 128, size 32, align 32, offset 160] [from int]
!238 = metadata !{i32 786445, metadata !130, metadata !141, metadata !"orires", i32 129, i64 192, i64 32, i64 0, i32 0, metadata !239} ; [ DW_TAG_member ] [orires] [line 129, size 192, align 32, offset 0] [from ]
!239 = metadata !{i32 786451, metadata !130, metadata !141, metadata !"", i32 129, i64 192, i64 32, i32 0, i32 0, null, metadata !240, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 129, size 192, align 32, offset 0] [from ]
!240 = metadata !{metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246}
!241 = metadata !{i32 786445, metadata !130, metadata !239, metadata !"ex", i32 129, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [ex] [line 129, size 32, align 32, offset 0] [from int]
!242 = metadata !{i32 786445, metadata !130, metadata !239, metadata !"pow", i32 129, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [pow] [line 129, size 32, align 32, offset 32] [from int]
!243 = metadata !{i32 786445, metadata !130, metadata !239, metadata !"label", i32 129, i64 32, i64 32, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [label] [line 129, size 32, align 32, offset 64] [from int]
!244 = metadata !{i32 786445, metadata !130, metadata !239, metadata !"c", i32 129, i64 32, i64 32, i64 96, i32 0, metadata !62} ; [ DW_TAG_member ] [c] [line 129, size 32, align 32, offset 96] [from real]
!245 = metadata !{i32 786445, metadata !130, metadata !239, metadata !"obs", i32 129, i64 32, i64 32, i64 128, i32 0, metadata !62} ; [ DW_TAG_member ] [obs] [line 129, size 32, align 32, offset 128] [from real]
!246 = metadata !{i32 786445, metadata !130, metadata !239, metadata !"kfac", i32 129, i64 32, i64 32, i64 160, i32 0, metadata !62} ; [ DW_TAG_member ] [kfac] [line 129, size 32, align 32, offset 160] [from real]
!247 = metadata !{i32 786445, metadata !130, metadata !141, metadata !"generic", i32 130, i64 192, i64 32, i64 0, i32 0, metadata !248} ; [ DW_TAG_member ] [generic] [line 130, size 192, align 32, offset 0] [from ]
!248 = metadata !{i32 786451, metadata !130, metadata !141, metadata !"", i32 130, i64 192, i64 32, i32 0, i32 0, null, metadata !249, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 130, size 192, align 32, offset 0] [from ]
!249 = metadata !{metadata !250}
!250 = metadata !{i32 786445, metadata !130, metadata !248, metadata !"buf", i32 130, i64 192, i64 32, i64 0, i32 0, metadata !219} ; [ DW_TAG_member ] [buf] [line 130, size 192, align 32, offset 0] [from ]
!251 = metadata !{i32 786445, metadata !130, metadata !129, metadata !"il", i32 187, i64 366080, i64 64, i64 256, i32 0, metadata !252} ; [ DW_TAG_member ] [il] [line 187, size 366080, align 64, offset 256] [from ]
!252 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 366080, i64 64, i32 0, i32 0, metadata !253, metadata !261, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 366080, align 64, offset 0] [from t_ilist]
!253 = metadata !{i32 786454, metadata !130, null, metadata !"t_ilist", i32 140, i64 0, i64 0, i64 0, i32 0, metadata !254} ; [ DW_TAG_typedef ] [t_ilist] [line 140, size 0, align 0, offset 0] [from ]
!254 = metadata !{i32 786451, metadata !130, null, metadata !"", i32 135, i64 8320, i64 64, i32 0, i32 0, null, metadata !255, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 135, size 8320, align 64, offset 0] [from ]
!255 = metadata !{metadata !256, metadata !257, metadata !258}
!256 = metadata !{i32 786445, metadata !130, metadata !254, metadata !"nr", i32 137, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [nr] [line 137, size 32, align 32, offset 0] [from int]
!257 = metadata !{i32 786445, metadata !130, metadata !254, metadata !"multinr", i32 138, i64 8192, i64 32, i64 32, i32 0, metadata !35} ; [ DW_TAG_member ] [multinr] [line 138, size 8192, align 32, offset 32] [from ]
!258 = metadata !{i32 786445, metadata !130, metadata !254, metadata !"iatoms", i32 139, i64 64, i64 64, i64 8256, i32 0, metadata !259} ; [ DW_TAG_member ] [iatoms] [line 139, size 64, align 64, offset 8256] [from ]
!259 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !260} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_iatom]
!260 = metadata !{i32 786454, metadata !130, null, metadata !"t_iatom", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !42} ; [ DW_TAG_typedef ] [t_iatom] [line 45, size 0, align 0, offset 0] [from atom_id]
!261 = metadata !{metadata !262}
!262 = metadata !{i32 786465, i64 0, i64 44}      ; [ DW_TAG_subrange_type ] [0, 43]
!263 = metadata !{i32 786445, metadata !124, metadata !123, metadata !"atoms", i32 39, i64 10240, i64 64, i64 366400, i32 0, metadata !52} ; [ DW_TAG_member ] [atoms] [line 39, size 10240, align 64, offset 366400] [from t_atoms]
!264 = metadata !{i32 786445, metadata !124, metadata !123, metadata !"blocks", i32 40, i64 25344, i64 64, i64 376640, i32 0, metadata !265} ; [ DW_TAG_member ] [blocks] [line 40, size 25344, align 64, offset 376640] [from ]
!265 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 25344, i64 64, i32 0, i32 0, metadata !30, metadata !212, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 25344, align 64, offset 0] [from t_block]
!266 = metadata !{i32 786445, metadata !124, metadata !123, metadata !"symtab", i32 41, i64 128, i64 64, i64 401984, i32 0, metadata !267} ; [ DW_TAG_member ] [symtab] [line 41, size 128, align 64, offset 401984] [from t_symtab]
!267 = metadata !{i32 786454, metadata !124, null, metadata !"t_symtab", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !268} ; [ DW_TAG_typedef ] [t_symtab] [line 46, size 0, align 0, offset 0] [from ]
!268 = metadata !{i32 786451, metadata !269, null, metadata !"", i32 42, i64 128, i64 64, i32 0, i32 0, null, metadata !270, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 42, size 128, align 64, offset 0] [from ]
!269 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/symtab.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!270 = metadata !{metadata !271, metadata !272}
!271 = metadata !{i32 786445, metadata !269, metadata !268, metadata !"nr", i32 44, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [nr] [line 44, size 32, align 32, offset 0] [from int]
!272 = metadata !{i32 786445, metadata !269, metadata !268, metadata !"symbuf", i32 45, i64 64, i64 64, i64 64, i32 0, metadata !273} ; [ DW_TAG_member ] [symbuf] [line 45, size 64, align 64, offset 64] [from ]
!273 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !274} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_symbuf]
!274 = metadata !{i32 786454, metadata !269, null, metadata !"t_symbuf", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !275} ; [ DW_TAG_typedef ] [t_symbuf] [line 40, size 0, align 0, offset 0] [from symbuf]
!275 = metadata !{i32 786451, metadata !269, null, metadata !"symbuf", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !276, i32 0, null, null} ; [ DW_TAG_structure_type ] [symbuf] [line 36, size 192, align 64, offset 0] [from ]
!276 = metadata !{metadata !277, metadata !278, metadata !279}
!277 = metadata !{i32 786445, metadata !269, metadata !275, metadata !"bufsize", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [bufsize] [line 37, size 32, align 32, offset 0] [from int]
!278 = metadata !{i32 786445, metadata !269, metadata !275, metadata !"buf", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !80} ; [ DW_TAG_member ] [buf] [line 38, size 64, align 64, offset 64] [from ]
!279 = metadata !{i32 786445, metadata !269, metadata !275, metadata !"next", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !280} ; [ DW_TAG_member ] [next] [line 39, size 64, align 64, offset 128] [from ]
!280 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !275} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from symbuf]
!281 = metadata !{metadata !282, metadata !283}
!282 = metadata !{i32 786689, metadata !118, metadata !"top", metadata !26, i32 16777288, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [top] [line 72]
!283 = metadata !{i32 786688, metadata !118, metadata !"i", metadata !26, i32 74, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 74]
!284 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"init_inputrec", metadata !"init_inputrec", metadata !"", i32 83, metadata !285, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_inputrec*)* @init_inputrec, null, null, metadata !404, i32 84} ; [ DW_TAG_subprogram ] [line 83] [def] [scope 84] [init_inputrec]
!285 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !286, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!286 = metadata !{null, metadata !287}
!287 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !288} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_inputrec]
!288 = metadata !{i32 786454, metadata !1, null, metadata !"t_inputrec", i32 143, i64 0, i64 0, i64 0, i32 0, metadata !289} ; [ DW_TAG_typedef ] [t_inputrec] [line 143, size 0, align 0, offset 0] [from ]
!289 = metadata !{i32 786451, metadata !290, null, metadata !"", i32 55, i64 4736, i64 64, i32 0, i32 0, null, metadata !291, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 55, size 4736, align 64, offset 0] [from ]
!290 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/inputrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!291 = metadata !{metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !327, metadata !328, metadata !329, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !357, metadata !358, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !375, metadata !395, metadata !403}
!292 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"eI", i32 56, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [eI] [line 56, size 32, align 32, offset 0] [from int]
!293 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"nsteps", i32 57, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [nsteps] [line 57, size 32, align 32, offset 32] [from int]
!294 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"ns_type", i32 58, i64 32, i64 32, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [ns_type] [line 58, size 32, align 32, offset 64] [from int]
!295 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"nstlist", i32 59, i64 32, i64 32, i64 96, i32 0, metadata !36} ; [ DW_TAG_member ] [nstlist] [line 59, size 32, align 32, offset 96] [from int]
!296 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"ndelta", i32 60, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [ndelta] [line 60, size 32, align 32, offset 128] [from int]
!297 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"bDomDecomp", i32 61, i64 32, i64 32, i64 160, i32 0, metadata !36} ; [ DW_TAG_member ] [bDomDecomp] [line 61, size 32, align 32, offset 160] [from int]
!298 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"decomp_dir", i32 62, i64 32, i64 32, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [decomp_dir] [line 62, size 32, align 32, offset 192] [from int]
!299 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"nstcomm", i32 63, i64 32, i64 32, i64 224, i32 0, metadata !36} ; [ DW_TAG_member ] [nstcomm] [line 63, size 32, align 32, offset 224] [from int]
!300 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"nstlog", i32 65, i64 32, i64 32, i64 256, i32 0, metadata !36} ; [ DW_TAG_member ] [nstlog] [line 65, size 32, align 32, offset 256] [from int]
!301 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"nstxout", i32 66, i64 32, i64 32, i64 288, i32 0, metadata !36} ; [ DW_TAG_member ] [nstxout] [line 66, size 32, align 32, offset 288] [from int]
!302 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"nstvout", i32 67, i64 32, i64 32, i64 320, i32 0, metadata !36} ; [ DW_TAG_member ] [nstvout] [line 67, size 32, align 32, offset 320] [from int]
!303 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"nstfout", i32 68, i64 32, i64 32, i64 352, i32 0, metadata !36} ; [ DW_TAG_member ] [nstfout] [line 68, size 32, align 32, offset 352] [from int]
!304 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"nstenergy", i32 69, i64 32, i64 32, i64 384, i32 0, metadata !36} ; [ DW_TAG_member ] [nstenergy] [line 69, size 32, align 32, offset 384] [from int]
!305 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"nstxtcout", i32 70, i64 32, i64 32, i64 416, i32 0, metadata !36} ; [ DW_TAG_member ] [nstxtcout] [line 70, size 32, align 32, offset 416] [from int]
!306 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"init_t", i32 71, i64 32, i64 32, i64 448, i32 0, metadata !62} ; [ DW_TAG_member ] [init_t] [line 71, size 32, align 32, offset 448] [from real]
!307 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"delta_t", i32 72, i64 32, i64 32, i64 480, i32 0, metadata !62} ; [ DW_TAG_member ] [delta_t] [line 72, size 32, align 32, offset 480] [from real]
!308 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"xtcprec", i32 73, i64 32, i64 32, i64 512, i32 0, metadata !62} ; [ DW_TAG_member ] [xtcprec] [line 73, size 32, align 32, offset 512] [from real]
!309 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"nkx", i32 74, i64 32, i64 32, i64 544, i32 0, metadata !36} ; [ DW_TAG_member ] [nkx] [line 74, size 32, align 32, offset 544] [from int]
!310 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"nky", i32 74, i64 32, i64 32, i64 576, i32 0, metadata !36} ; [ DW_TAG_member ] [nky] [line 74, size 32, align 32, offset 576] [from int]
!311 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"nkz", i32 74, i64 32, i64 32, i64 608, i32 0, metadata !36} ; [ DW_TAG_member ] [nkz] [line 74, size 32, align 32, offset 608] [from int]
!312 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"pme_order", i32 76, i64 32, i64 32, i64 640, i32 0, metadata !36} ; [ DW_TAG_member ] [pme_order] [line 76, size 32, align 32, offset 640] [from int]
!313 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"ewald_rtol", i32 77, i64 32, i64 32, i64 672, i32 0, metadata !62} ; [ DW_TAG_member ] [ewald_rtol] [line 77, size 32, align 32, offset 672] [from real]
!314 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"ewald_geometry", i32 79, i64 32, i64 32, i64 704, i32 0, metadata !36} ; [ DW_TAG_member ] [ewald_geometry] [line 79, size 32, align 32, offset 704] [from int]
!315 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"epsilon_surface", i32 80, i64 32, i64 32, i64 736, i32 0, metadata !36} ; [ DW_TAG_member ] [epsilon_surface] [line 80, size 32, align 32, offset 736] [from int]
!316 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"bOptFFT", i32 81, i64 32, i64 32, i64 768, i32 0, metadata !36} ; [ DW_TAG_member ] [bOptFFT] [line 81, size 32, align 32, offset 768] [from int]
!317 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"ePBC", i32 82, i64 32, i64 32, i64 800, i32 0, metadata !36} ; [ DW_TAG_member ] [ePBC] [line 82, size 32, align 32, offset 800] [from int]
!318 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"bUncStart", i32 83, i64 32, i64 32, i64 832, i32 0, metadata !36} ; [ DW_TAG_member ] [bUncStart] [line 83, size 32, align 32, offset 832] [from int]
!319 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"etc", i32 84, i64 32, i64 32, i64 864, i32 0, metadata !36} ; [ DW_TAG_member ] [etc] [line 84, size 32, align 32, offset 864] [from int]
!320 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"epc", i32 85, i64 32, i64 32, i64 896, i32 0, metadata !36} ; [ DW_TAG_member ] [epc] [line 85, size 32, align 32, offset 896] [from int]
!321 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"epct", i32 86, i64 32, i64 32, i64 928, i32 0, metadata !36} ; [ DW_TAG_member ] [epct] [line 86, size 32, align 32, offset 928] [from int]
!322 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"tau_p", i32 87, i64 32, i64 32, i64 960, i32 0, metadata !62} ; [ DW_TAG_member ] [tau_p] [line 87, size 32, align 32, offset 960] [from real]
!323 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"ref_p", i32 88, i64 288, i64 32, i64 992, i32 0, metadata !324} ; [ DW_TAG_member ] [ref_p] [line 88, size 288, align 32, offset 992] [from tensor]
!324 = metadata !{i32 786454, metadata !290, null, metadata !"tensor", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !325} ; [ DW_TAG_typedef ] [tensor] [line 105, size 0, align 0, offset 0] [from ]
!325 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !62, metadata !326, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from real]
!326 = metadata !{metadata !213, metadata !213}
!327 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"compress", i32 89, i64 288, i64 32, i64 1280, i32 0, metadata !324} ; [ DW_TAG_member ] [compress] [line 89, size 288, align 32, offset 1280] [from tensor]
!328 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"bSimAnn", i32 90, i64 32, i64 32, i64 1568, i32 0, metadata !36} ; [ DW_TAG_member ] [bSimAnn] [line 90, size 32, align 32, offset 1568] [from int]
!329 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"zero_temp_time", i32 91, i64 32, i64 32, i64 1600, i32 0, metadata !62} ; [ DW_TAG_member ] [zero_temp_time] [line 91, size 32, align 32, offset 1600] [from real]
!330 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"rlist", i32 92, i64 32, i64 32, i64 1632, i32 0, metadata !62} ; [ DW_TAG_member ] [rlist] [line 92, size 32, align 32, offset 1632] [from real]
!331 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"coulombtype", i32 93, i64 32, i64 32, i64 1664, i32 0, metadata !36} ; [ DW_TAG_member ] [coulombtype] [line 93, size 32, align 32, offset 1664] [from int]
!332 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"rcoulomb_switch", i32 94, i64 32, i64 32, i64 1696, i32 0, metadata !62} ; [ DW_TAG_member ] [rcoulomb_switch] [line 94, size 32, align 32, offset 1696] [from real]
!333 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"rcoulomb", i32 95, i64 32, i64 32, i64 1728, i32 0, metadata !62} ; [ DW_TAG_member ] [rcoulomb] [line 95, size 32, align 32, offset 1728] [from real]
!334 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"vdwtype", i32 96, i64 32, i64 32, i64 1760, i32 0, metadata !36} ; [ DW_TAG_member ] [vdwtype] [line 96, size 32, align 32, offset 1760] [from int]
!335 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"rvdw_switch", i32 97, i64 32, i64 32, i64 1792, i32 0, metadata !62} ; [ DW_TAG_member ] [rvdw_switch] [line 97, size 32, align 32, offset 1792] [from real]
!336 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"rvdw", i32 98, i64 32, i64 32, i64 1824, i32 0, metadata !62} ; [ DW_TAG_member ] [rvdw] [line 98, size 32, align 32, offset 1824] [from real]
!337 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"epsilon_r", i32 99, i64 32, i64 32, i64 1856, i32 0, metadata !62} ; [ DW_TAG_member ] [epsilon_r] [line 99, size 32, align 32, offset 1856] [from real]
!338 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"eDispCorr", i32 100, i64 32, i64 32, i64 1888, i32 0, metadata !36} ; [ DW_TAG_member ] [eDispCorr] [line 100, size 32, align 32, offset 1888] [from int]
!339 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"shake_tol", i32 101, i64 32, i64 32, i64 1920, i32 0, metadata !62} ; [ DW_TAG_member ] [shake_tol] [line 101, size 32, align 32, offset 1920] [from real]
!340 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"fudgeQQ", i32 102, i64 32, i64 32, i64 1952, i32 0, metadata !62} ; [ DW_TAG_member ] [fudgeQQ] [line 102, size 32, align 32, offset 1952] [from real]
!341 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"efep", i32 103, i64 32, i64 32, i64 1984, i32 0, metadata !36} ; [ DW_TAG_member ] [efep] [line 103, size 32, align 32, offset 1984] [from int]
!342 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"init_lambda", i32 104, i64 32, i64 32, i64 2016, i32 0, metadata !62} ; [ DW_TAG_member ] [init_lambda] [line 104, size 32, align 32, offset 2016] [from real]
!343 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"delta_lambda", i32 105, i64 32, i64 32, i64 2048, i32 0, metadata !62} ; [ DW_TAG_member ] [delta_lambda] [line 105, size 32, align 32, offset 2048] [from real]
!344 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"sc_alpha", i32 106, i64 32, i64 32, i64 2080, i32 0, metadata !62} ; [ DW_TAG_member ] [sc_alpha] [line 106, size 32, align 32, offset 2080] [from real]
!345 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"sc_sigma", i32 107, i64 32, i64 32, i64 2112, i32 0, metadata !62} ; [ DW_TAG_member ] [sc_sigma] [line 107, size 32, align 32, offset 2112] [from real]
!346 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"dr_fc", i32 108, i64 32, i64 32, i64 2144, i32 0, metadata !62} ; [ DW_TAG_member ] [dr_fc] [line 108, size 32, align 32, offset 2144] [from real]
!347 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"eDisreWeighting", i32 109, i64 32, i64 32, i64 2176, i32 0, metadata !36} ; [ DW_TAG_member ] [eDisreWeighting] [line 109, size 32, align 32, offset 2176] [from int]
!348 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"bDisreMixed", i32 110, i64 32, i64 32, i64 2208, i32 0, metadata !36} ; [ DW_TAG_member ] [bDisreMixed] [line 110, size 32, align 32, offset 2208] [from int]
!349 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"nstdisreout", i32 111, i64 32, i64 32, i64 2240, i32 0, metadata !36} ; [ DW_TAG_member ] [nstdisreout] [line 111, size 32, align 32, offset 2240] [from int]
!350 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"dr_tau", i32 112, i64 32, i64 32, i64 2272, i32 0, metadata !62} ; [ DW_TAG_member ] [dr_tau] [line 112, size 32, align 32, offset 2272] [from real]
!351 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"orires_fc", i32 113, i64 32, i64 32, i64 2304, i32 0, metadata !62} ; [ DW_TAG_member ] [orires_fc] [line 113, size 32, align 32, offset 2304] [from real]
!352 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"orires_tau", i32 114, i64 32, i64 32, i64 2336, i32 0, metadata !62} ; [ DW_TAG_member ] [orires_tau] [line 114, size 32, align 32, offset 2336] [from real]
!353 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"nstorireout", i32 115, i64 32, i64 32, i64 2368, i32 0, metadata !36} ; [ DW_TAG_member ] [nstorireout] [line 115, size 32, align 32, offset 2368] [from int]
!354 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"em_stepsize", i32 116, i64 32, i64 32, i64 2400, i32 0, metadata !62} ; [ DW_TAG_member ] [em_stepsize] [line 116, size 32, align 32, offset 2400] [from real]
!355 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"em_tol", i32 117, i64 32, i64 32, i64 2432, i32 0, metadata !62} ; [ DW_TAG_member ] [em_tol] [line 117, size 32, align 32, offset 2432] [from real]
!356 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"niter", i32 118, i64 32, i64 32, i64 2464, i32 0, metadata !36} ; [ DW_TAG_member ] [niter] [line 118, size 32, align 32, offset 2464] [from int]
!357 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"fc_stepsize", i32 120, i64 32, i64 32, i64 2496, i32 0, metadata !36} ; [ DW_TAG_member ] [fc_stepsize] [line 120, size 32, align 32, offset 2496] [from int]
!358 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"nstcgsteep", i32 122, i64 32, i64 32, i64 2528, i32 0, metadata !36} ; [ DW_TAG_member ] [nstcgsteep] [line 122, size 32, align 32, offset 2528] [from int]
!359 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"eConstrAlg", i32 124, i64 32, i64 32, i64 2560, i32 0, metadata !36} ; [ DW_TAG_member ] [eConstrAlg] [line 124, size 32, align 32, offset 2560] [from int]
!360 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"nProjOrder", i32 125, i64 32, i64 32, i64 2592, i32 0, metadata !36} ; [ DW_TAG_member ] [nProjOrder] [line 125, size 32, align 32, offset 2592] [from int]
!361 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"LincsWarnAngle", i32 126, i64 32, i64 32, i64 2624, i32 0, metadata !62} ; [ DW_TAG_member ] [LincsWarnAngle] [line 126, size 32, align 32, offset 2624] [from real]
!362 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"bShakeSOR", i32 127, i64 32, i64 32, i64 2656, i32 0, metadata !36} ; [ DW_TAG_member ] [bShakeSOR] [line 127, size 32, align 32, offset 2656] [from int]
!363 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"bd_temp", i32 128, i64 32, i64 32, i64 2688, i32 0, metadata !62} ; [ DW_TAG_member ] [bd_temp] [line 128, size 32, align 32, offset 2688] [from real]
!364 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"bd_fric", i32 129, i64 32, i64 32, i64 2720, i32 0, metadata !62} ; [ DW_TAG_member ] [bd_fric] [line 129, size 32, align 32, offset 2720] [from real]
!365 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"ld_seed", i32 130, i64 32, i64 32, i64 2752, i32 0, metadata !36} ; [ DW_TAG_member ] [ld_seed] [line 130, size 32, align 32, offset 2752] [from int]
!366 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"cos_accel", i32 131, i64 32, i64 32, i64 2784, i32 0, metadata !62} ; [ DW_TAG_member ] [cos_accel] [line 131, size 32, align 32, offset 2784] [from real]
!367 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"userint1", i32 132, i64 32, i64 32, i64 2816, i32 0, metadata !36} ; [ DW_TAG_member ] [userint1] [line 132, size 32, align 32, offset 2816] [from int]
!368 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"userint2", i32 133, i64 32, i64 32, i64 2848, i32 0, metadata !36} ; [ DW_TAG_member ] [userint2] [line 133, size 32, align 32, offset 2848] [from int]
!369 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"userint3", i32 134, i64 32, i64 32, i64 2880, i32 0, metadata !36} ; [ DW_TAG_member ] [userint3] [line 134, size 32, align 32, offset 2880] [from int]
!370 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"userint4", i32 135, i64 32, i64 32, i64 2912, i32 0, metadata !36} ; [ DW_TAG_member ] [userint4] [line 135, size 32, align 32, offset 2912] [from int]
!371 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"userreal1", i32 136, i64 32, i64 32, i64 2944, i32 0, metadata !62} ; [ DW_TAG_member ] [userreal1] [line 136, size 32, align 32, offset 2944] [from real]
!372 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"userreal2", i32 137, i64 32, i64 32, i64 2976, i32 0, metadata !62} ; [ DW_TAG_member ] [userreal2] [line 137, size 32, align 32, offset 2976] [from real]
!373 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"userreal3", i32 138, i64 32, i64 32, i64 3008, i32 0, metadata !62} ; [ DW_TAG_member ] [userreal3] [line 138, size 32, align 32, offset 3008] [from real]
!374 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"userreal4", i32 139, i64 32, i64 32, i64 3040, i32 0, metadata !62} ; [ DW_TAG_member ] [userreal4] [line 139, size 32, align 32, offset 3040] [from real]
!375 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"opts", i32 140, i64 512, i64 64, i64 3072, i32 0, metadata !376} ; [ DW_TAG_member ] [opts] [line 140, size 512, align 64, offset 3072] [from t_grpopts]
!376 = metadata !{i32 786454, metadata !290, null, metadata !"t_grpopts", i32 53, i64 0, i64 0, i64 0, i32 0, metadata !377} ; [ DW_TAG_typedef ] [t_grpopts] [line 53, size 0, align 0, offset 0] [from ]
!377 = metadata !{i32 786451, metadata !290, null, metadata !"", i32 42, i64 512, i64 64, i32 0, i32 0, null, metadata !378, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 42, size 512, align 64, offset 0] [from ]
!378 = metadata !{metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !385, metadata !386, metadata !387, metadata !390, metadata !394}
!379 = metadata !{i32 786445, metadata !290, metadata !377, metadata !"ngtc", i32 43, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [ngtc] [line 43, size 32, align 32, offset 0] [from int]
!380 = metadata !{i32 786445, metadata !290, metadata !377, metadata !"ngacc", i32 44, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [ngacc] [line 44, size 32, align 32, offset 32] [from int]
!381 = metadata !{i32 786445, metadata !290, metadata !377, metadata !"ngfrz", i32 45, i64 32, i64 32, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [ngfrz] [line 45, size 32, align 32, offset 64] [from int]
!382 = metadata !{i32 786445, metadata !290, metadata !377, metadata !"ngener", i32 46, i64 32, i64 32, i64 96, i32 0, metadata !36} ; [ DW_TAG_member ] [ngener] [line 46, size 32, align 32, offset 96] [from int]
!383 = metadata !{i32 786445, metadata !290, metadata !377, metadata !"nrdf", i32 47, i64 64, i64 64, i64 128, i32 0, metadata !384} ; [ DW_TAG_member ] [nrdf] [line 47, size 64, align 64, offset 128] [from ]
!384 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!385 = metadata !{i32 786445, metadata !290, metadata !377, metadata !"ref_t", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !384} ; [ DW_TAG_member ] [ref_t] [line 48, size 64, align 64, offset 192] [from ]
!386 = metadata !{i32 786445, metadata !290, metadata !377, metadata !"tau_t", i32 49, i64 64, i64 64, i64 256, i32 0, metadata !384} ; [ DW_TAG_member ] [tau_t] [line 49, size 64, align 64, offset 256] [from ]
!387 = metadata !{i32 786445, metadata !290, metadata !377, metadata !"acc", i32 50, i64 64, i64 64, i64 320, i32 0, metadata !388} ; [ DW_TAG_member ] [acc] [line 50, size 64, align 64, offset 320] [from ]
!388 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !389} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!389 = metadata !{i32 786454, metadata !290, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !211} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!390 = metadata !{i32 786445, metadata !290, metadata !377, metadata !"nFreeze", i32 51, i64 64, i64 64, i64 384, i32 0, metadata !391} ; [ DW_TAG_member ] [nFreeze] [line 51, size 64, align 64, offset 384] [from ]
!391 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !392} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ivec]
!392 = metadata !{i32 786454, metadata !290, null, metadata !"ivec", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !393} ; [ DW_TAG_typedef ] [ivec] [line 107, size 0, align 0, offset 0] [from ]
!393 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !36, metadata !212, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!394 = metadata !{i32 786445, metadata !290, metadata !377, metadata !"eg_excl", i32 52, i64 64, i64 64, i64 448, i32 0, metadata !97} ; [ DW_TAG_member ] [eg_excl] [line 52, size 64, align 64, offset 448] [from ]
!395 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"ex", i32 141, i64 576, i64 64, i64 3584, i32 0, metadata !396} ; [ DW_TAG_member ] [ex] [line 141, size 576, align 64, offset 3584] [from ]
!396 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 576, i64 64, i32 0, i32 0, metadata !397, metadata !212, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 576, align 64, offset 0] [from t_cosines]
!397 = metadata !{i32 786454, metadata !290, null, metadata !"t_cosines", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !398} ; [ DW_TAG_typedef ] [t_cosines] [line 40, size 0, align 0, offset 0] [from ]
!398 = metadata !{i32 786451, metadata !290, null, metadata !"", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !399, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 64, offset 0] [from ]
!399 = metadata !{metadata !400, metadata !401, metadata !402}
!400 = metadata !{i32 786445, metadata !290, metadata !398, metadata !"n", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [n] [line 37, size 32, align 32, offset 0] [from int]
!401 = metadata !{i32 786445, metadata !290, metadata !398, metadata !"a", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !384} ; [ DW_TAG_member ] [a] [line 38, size 64, align 64, offset 64] [from ]
!402 = metadata !{i32 786445, metadata !290, metadata !398, metadata !"phi", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !384} ; [ DW_TAG_member ] [phi] [line 39, size 64, align 64, offset 128] [from ]
!403 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"et", i32 142, i64 576, i64 64, i64 4160, i32 0, metadata !396} ; [ DW_TAG_member ] [et] [line 142, size 576, align 64, offset 4160] [from ]
!404 = metadata !{metadata !405}
!405 = metadata !{i32 786689, metadata !284, metadata !"ir", metadata !26, i32 16777299, metadata !287, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ir] [line 83]
!406 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"stupid_fill", metadata !"stupid_fill", metadata !"", i32 88, metadata !407, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_block*, i32, i32)* @stupid_fill, null, null, metadata !409, i32 89} ; [ DW_TAG_subprogram ] [line 88] [def] [scope 89] [stupid_fill]
!407 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !408, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!408 = metadata !{null, metadata !29, metadata !36, metadata !36}
!409 = metadata !{metadata !410, metadata !411, metadata !412, metadata !413}
!410 = metadata !{i32 786689, metadata !406, metadata !"grp", metadata !26, i32 16777304, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grp] [line 88]
!411 = metadata !{i32 786689, metadata !406, metadata !"natom", metadata !26, i32 33554520, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natom] [line 88]
!412 = metadata !{i32 786689, metadata !406, metadata !"bOneIndexGroup", metadata !26, i32 50331736, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bOneIndexGroup] [line 88]
!413 = metadata !{i32 786688, metadata !406, metadata !"i", metadata !26, i32 90, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 90]
!414 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"done_block", metadata !"done_block", metadata !"", i32 112, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_block*)* @done_block, null, null, metadata !415, i32 113} ; [ DW_TAG_subprogram ] [line 112] [def] [scope 113] [done_block]
!415 = metadata !{metadata !416}
!416 = metadata !{i32 786689, metadata !414, metadata !"block", metadata !26, i32 16777328, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [block] [line 112]
!417 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"done_atom", metadata !"done_atom", metadata !"", i32 120, metadata !49, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_atoms*)* @done_atom, null, null, metadata !418, i32 121} ; [ DW_TAG_subprogram ] [line 120] [def] [scope 121] [done_atom]
!418 = metadata !{metadata !419}
!419 = metadata !{i32 786689, metadata !417, metadata !"at", metadata !26, i32 16777336, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [at] [line 120]
!420 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"done_top", metadata !"done_top", metadata !"", i32 130, metadata !119, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_topology*)* @done_top, null, null, metadata !421, i32 131} ; [ DW_TAG_subprogram ] [line 130] [def] [scope 131] [done_top]
!421 = metadata !{metadata !422, metadata !423}
!422 = metadata !{i32 786689, metadata !420, metadata !"top", metadata !26, i32 16777346, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [top] [line 130]
!423 = metadata !{i32 786688, metadata !420, metadata !"i", metadata !26, i32 132, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 132]
!424 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"done_inputrec", metadata !"done_inputrec", metadata !"", i32 140, metadata !285, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_inputrec*)* @done_inputrec, null, null, metadata !425, i32 141} ; [ DW_TAG_subprogram ] [line 140] [def] [scope 141] [done_inputrec]
!425 = metadata !{metadata !426, metadata !427}
!426 = metadata !{i32 786689, metadata !424, metadata !"ir", metadata !26, i32 16777356, metadata !287, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ir] [line 140]
!427 = metadata !{i32 786688, metadata !424, metadata !"m", metadata !26, i32 142, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 142]
!428 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"init_t_atoms", metadata !"init_t_atoms", metadata !"", i32 157, metadata !429, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_atoms*, i32, i32)* @init_t_atoms, null, null, metadata !431, i32 158} ; [ DW_TAG_subprogram ] [line 157] [def] [scope 158] [init_t_atoms]
!429 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !430, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!430 = metadata !{null, metadata !51, metadata !36, metadata !36}
!431 = metadata !{metadata !432, metadata !433, metadata !434}
!432 = metadata !{i32 786689, metadata !428, metadata !"atoms", metadata !26, i32 16777373, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 157]
!433 = metadata !{i32 786689, metadata !428, metadata !"natoms", metadata !26, i32 33554589, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 157]
!434 = metadata !{i32 786689, metadata !428, metadata !"bPdbinfo", metadata !26, i32 50331805, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bPdbinfo] [line 157]
!435 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"free_t_atoms", metadata !"free_t_atoms", metadata !"", i32 175, metadata !49, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_atoms*)* @free_t_atoms, null, null, metadata !436, i32 176} ; [ DW_TAG_subprogram ] [line 175] [def] [scope 176] [free_t_atoms]
!436 = metadata !{metadata !437, metadata !438}
!437 = metadata !{i32 786689, metadata !435, metadata !"atoms", metadata !26, i32 16777391, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 175]
!438 = metadata !{i32 786688, metadata !435, metadata !"i", metadata !26, i32 177, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 177]
!439 = metadata !{i32 38, i32 0, metadata !25, null}
!440 = metadata !{i32 42, i32 0, metadata !25, null}
!441 = metadata !{metadata !"int", metadata !442}
!442 = metadata !{metadata !"omnipotent char", metadata !443}
!443 = metadata !{metadata !"Simple C/C++ TBAA"}
!444 = metadata !{i32 43, i32 0, metadata !25, null}
!445 = metadata !{i32 44, i32 0, metadata !25, null}
!446 = metadata !{metadata !"any pointer", metadata !442}
!447 = metadata !{i32 45, i32 0, metadata !25, null}
!448 = metadata !{i32 46, i32 0, metadata !25, null}
!449 = metadata !{i32 47, i32 0, metadata !450, null}
!450 = metadata !{i32 786443, metadata !1, metadata !25, i32 47, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/typedefs.c]
!451 = metadata !{i32 48, i32 0, metadata !450, null}
!452 = metadata !{i32 49, i32 0, metadata !25, null}
!453 = metadata !{i32 51, i32 0, metadata !48, null}
!454 = metadata !{i32 42, i32 0, metadata !25, metadata !455}
!455 = metadata !{i32 55, i32 0, metadata !48, null}
!456 = metadata !{i32 43, i32 0, metadata !25, metadata !455}
!457 = metadata !{i32 44, i32 0, metadata !25, metadata !455}
!458 = metadata !{i32 45, i32 0, metadata !25, metadata !455}
!459 = metadata !{i32 46, i32 0, metadata !25, metadata !455}
!460 = metadata !{i32 786688, metadata !25, metadata !"i", metadata !26, i32 40, metadata !36, i32 0, metadata !455} ; [ DW_TAG_auto_variable ] [i] [line 40]
!461 = metadata !{i32 47, i32 0, metadata !450, metadata !455}
!462 = metadata !{i32 56, i32 0, metadata !48, null}
!463 = metadata !{i32 58, i32 0, metadata !48, null} ; [ DW_TAG_imported_module ]
!464 = metadata !{i32 59, i32 0, metadata !48, null}
!465 = metadata !{i32 60, i32 0, metadata !48, null}
!466 = metadata !{i32 64, i32 0, metadata !48, null}
!467 = metadata !{i32 65, i32 0, metadata !48, null}
!468 = metadata !{i32 66, i32 0, metadata !469, null}
!469 = metadata !{i32 786443, metadata !1, metadata !48, i32 66, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/typedefs.c]
!470 = metadata !{i32 48, i32 0, metadata !450, metadata !455}
!471 = metadata !{i32 67, i32 0, metadata !472, null}
!472 = metadata !{i32 786443, metadata !1, metadata !469, i32 66, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/typedefs.c]
!473 = metadata !{i32 68, i32 0, metadata !472, null}
!474 = metadata !{i32 70, i32 0, metadata !48, null}
!475 = metadata !{i32 72, i32 0, metadata !118, null}
!476 = metadata !{i32 76, i32 0, metadata !118, null}
!477 = metadata !{i32 77, i32 0, metadata !118, null}
!478 = metadata !{i32 78, i32 0, metadata !118, null}
!479 = metadata !{i32 79, i32 0, metadata !480, null}
!480 = metadata !{i32 786443, metadata !1, metadata !118, i32 79, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/typedefs.c]
!481 = metadata !{i32 80, i32 0, metadata !480, null}
!482 = metadata !{i32 786689, metadata !25, metadata !"block", metadata !26, i32 16777254, metadata !29, i32 0, metadata !481} ; [ DW_TAG_arg_variable ] [block] [line 38]
!483 = metadata !{i32 38, i32 0, metadata !25, metadata !481}
!484 = metadata !{i32 42, i32 0, metadata !25, metadata !481}
!485 = metadata !{i32 43, i32 0, metadata !25, metadata !481}
!486 = metadata !{i32 44, i32 0, metadata !25, metadata !481}
!487 = metadata !{i32 45, i32 0, metadata !25, metadata !481}
!488 = metadata !{i32 46, i32 0, metadata !25, metadata !481}
!489 = metadata !{i32 786688, metadata !25, metadata !"i", metadata !26, i32 40, metadata !36, i32 0, metadata !481} ; [ DW_TAG_auto_variable ] [i] [line 40]
!490 = metadata !{i32 47, i32 0, metadata !450, metadata !481}
!491 = metadata !{i32 48, i32 0, metadata !450, metadata !481}
!492 = metadata !{i32 81, i32 0, metadata !118, null}
!493 = metadata !{i32 83, i32 0, metadata !284, null}
!494 = metadata !{i32 85, i32 0, metadata !284, null}
!495 = metadata !{i32 86, i32 0, metadata !284, null}
!496 = metadata !{i32 88, i32 0, metadata !406, null}
!497 = metadata !{i32 92, i32 0, metadata !406, null}
!498 = metadata !{i32 93, i32 0, metadata !499, null}
!499 = metadata !{i32 786443, metadata !1, metadata !406, i32 93, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/typedefs.c]
!500 = metadata !{i32 94, i32 0, metadata !499, null}
!501 = metadata !{i32 95, i32 0, metadata !406, null}
!502 = metadata !{i32 97, i32 0, metadata !406, null}
!503 = metadata !{i32 98, i32 0, metadata !504, null}
!504 = metadata !{i32 786443, metadata !1, metadata !406, i32 97, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/typedefs.c]
!505 = metadata !{i32 99, i32 0, metadata !504, null}
!506 = metadata !{i32 100, i32 0, metadata !504, null}
!507 = metadata !{i32 101, i32 0, metadata !504, null}
!508 = metadata !{i32 102, i32 0, metadata !504, null}
!509 = metadata !{i32 104, i32 0, metadata !510, null}
!510 = metadata !{i32 786443, metadata !1, metadata !406, i32 103, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/typedefs.c]
!511 = metadata !{i32 105, i32 0, metadata !512, null}
!512 = metadata !{i32 786443, metadata !1, metadata !510, i32 105, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/typedefs.c]
!513 = metadata !{i32 106, i32 0, metadata !512, null}
!514 = metadata !{i32 107, i32 0, metadata !510, null}
!515 = metadata !{i32 109, i32 0, metadata !406, null}
!516 = metadata !{i32 110, i32 0, metadata !406, null}
!517 = metadata !{i32 112, i32 0, metadata !414, null}
!518 = metadata !{i32 114, i32 0, metadata !414, null}
!519 = metadata !{i32 115, i32 0, metadata !414, null}
!520 = metadata !{i32 116, i32 0, metadata !414, null}
!521 = metadata !{i32 117, i32 0, metadata !414, null}
!522 = metadata !{i32 118, i32 0, metadata !414, null}
!523 = metadata !{i32 120, i32 0, metadata !417, null}
!524 = metadata !{i32 122, i32 0, metadata !417, null}
!525 = metadata !{i32 123, i32 0, metadata !417, null}
!526 = metadata !{i32 124, i32 0, metadata !417, null}
!527 = metadata !{i32 125, i32 0, metadata !417, null}
!528 = metadata !{i32 126, i32 0, metadata !417, null}
!529 = metadata !{i32 127, i32 0, metadata !417, null}
!530 = metadata !{i32 128, i32 0, metadata !417, null}
!531 = metadata !{i32 130, i32 0, metadata !420, null}
!532 = metadata !{i32 134, i32 0, metadata !420, null}
!533 = metadata !{i32 135, i32 0, metadata !420, null}
!534 = metadata !{i32 136, i32 0, metadata !535, null}
!535 = metadata !{i32 786443, metadata !1, metadata !420, i32 136, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/typedefs.c]
!536 = metadata !{i32 137, i32 0, metadata !535, null}
!537 = metadata !{i32 138, i32 0, metadata !420, null}
!538 = metadata !{i32 140, i32 0, metadata !424, null}
!539 = metadata !{i32 144, i32 0, metadata !540, null}
!540 = metadata !{i32 786443, metadata !1, metadata !424, i32 144, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/typedefs.c]
!541 = metadata !{i32 145, i32 0, metadata !542, null}
!542 = metadata !{i32 786443, metadata !1, metadata !540, i32 144, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/typedefs.c]
!543 = metadata !{i32 146, i32 0, metadata !542, null}
!544 = metadata !{i32 147, i32 0, metadata !542, null}
!545 = metadata !{i32 148, i32 0, metadata !542, null}
!546 = metadata !{i32 150, i32 0, metadata !424, null}
!547 = metadata !{i32 151, i32 0, metadata !424, null}
!548 = metadata !{i32 152, i32 0, metadata !424, null}
!549 = metadata !{i32 153, i32 0, metadata !424, null}
!550 = metadata !{i32 154, i32 0, metadata !424, null}
!551 = metadata !{i32 155, i32 0, metadata !424, null}
!552 = metadata !{i32 157, i32 0, metadata !428, null}
!553 = metadata !{i32 159, i32 0, metadata !428, null}
!554 = metadata !{i32 160, i32 0, metadata !428, null}
!555 = metadata !{i32 161, i32 0, metadata !428, null}
!556 = metadata !{i32 162, i32 0, metadata !428, null}
!557 = metadata !{i32 163, i32 0, metadata !428, null}
!558 = metadata !{i32 165, i32 0, metadata !428, null}
!559 = metadata !{i32 164, i32 0, metadata !428, null}
!560 = metadata !{i32 166, i32 0, metadata !428, null}
!561 = metadata !{i32 167, i32 0, metadata !428, null}
!562 = metadata !{i32 168, i32 0, metadata !428, null}
!563 = metadata !{i32 169, i32 0, metadata !428, null}
!564 = metadata !{i32 171, i32 0, metadata !428, null}
!565 = metadata !{i32 172, i32 0, metadata !428, null}
!566 = metadata !{i32 786689, metadata !25, metadata !"block", metadata !26, i32 16777254, metadata !29, i32 0, metadata !565} ; [ DW_TAG_arg_variable ] [block] [line 38]
!567 = metadata !{i32 38, i32 0, metadata !25, metadata !565}
!568 = metadata !{i32 42, i32 0, metadata !25, metadata !565}
!569 = metadata !{i32 43, i32 0, metadata !25, metadata !565}
!570 = metadata !{i32 44, i32 0, metadata !25, metadata !565}
!571 = metadata !{i32 45, i32 0, metadata !25, metadata !565}
!572 = metadata !{i32 46, i32 0, metadata !25, metadata !565}
!573 = metadata !{i32 786688, metadata !25, metadata !"i", metadata !26, i32 40, metadata !36, i32 0, metadata !565} ; [ DW_TAG_auto_variable ] [i] [line 40]
!574 = metadata !{i32 47, i32 0, metadata !450, metadata !565}
!575 = metadata !{i32 48, i32 0, metadata !450, metadata !565}
!576 = metadata !{i32 173, i32 0, metadata !428, null}
!577 = metadata !{i32 175, i32 0, metadata !435, null}
!578 = metadata !{i32 179, i32 0, metadata !579, null}
!579 = metadata !{i32 786443, metadata !1, metadata !435, i32 179, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/typedefs.c]
!580 = metadata !{i32 180, i32 0, metadata !581, null}
!581 = metadata !{i32 786443, metadata !1, metadata !579, i32 179, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/typedefs.c]
!582 = metadata !{i32 181, i32 0, metadata !581, null}
!583 = metadata !{i32 183, i32 0, metadata !435, null}
!584 = metadata !{i32 185, i32 0, metadata !435, null}
!585 = metadata !{i32 186, i32 0, metadata !435, null}
!586 = metadata !{i32 187, i32 0, metadata !435, null}
!587 = metadata !{i32 188, i32 0, metadata !435, null}
!588 = metadata !{i32 189, i32 0, metadata !435, null}
!589 = metadata !{i32 190, i32 0, metadata !435, null}
!590 = metadata !{i32 191, i32 0, metadata !435, null}
!591 = metadata !{i32 192, i32 0, metadata !435, null}
