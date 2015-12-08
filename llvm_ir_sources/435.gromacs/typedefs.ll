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
  %block11 = bitcast %struct.t_block* %block to i8*
  %nr = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1
  store i32 0, i32* %nr, align 4, !tbaa !0
  %nra = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3
  store i32 0, i32* %nra, align 4, !tbaa !0
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 44, i32 1, i32 4) #3
  %0 = bitcast i8* %call to i32*
  %index = getelementptr inbounds %struct.t_block* %block, i64 0, i32 2
  store i32* %0, i32** %index, align 8, !tbaa !3
  store i32 0, i32* %0, align 4, !tbaa !0
  %a = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4
  store i32* null, i32** %a, align 8, !tbaa !3
  call void @llvm.memset.p0i8.i64(i8* %block11, i8 0, i64 1024, i32 4, i1 false)
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @init_atom(%struct.t_atoms* nocapture %at) #0 {
entry:
  %nr.i = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 9, i32 1
  store i32 0, i32* %nr.i, align 4, !tbaa !0
  %nra.i = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 9, i32 3
  store i32 0, i32* %nra.i, align 4, !tbaa !0
  %call.i = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 44, i32 1, i32 4) #3
  %0 = bitcast i8* %call.i to i32*
  %index.i = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 9, i32 2
  store i32* %0, i32** %index.i, align 8, !tbaa !3
  store i32 0, i32* %0, align 4, !tbaa !0
  %a.i = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 9, i32 4
  store i32* null, i32** %a.i, align 8, !tbaa !3
  %nr = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 0
  store i32 0, i32* %nr, align 4, !tbaa !0
  %ngrpname = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 7
  store i32 0, i32* %ngrpname, align 4, !tbaa !0
  %atom = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 1
  %resname = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 6
  store i8*** null, i8**** %resname, align 8, !tbaa !3
  %grpname = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 8
  %pdbinfo = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 11
  store %struct.t_pdbinfo* null, %struct.t_pdbinfo** %pdbinfo, align 8, !tbaa !3
  %1 = bitcast %struct.t_atom** %atom to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 8, i1 false)
  %2 = bitcast i8**** %grpname to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 1032, i32 8, i1 false)
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %nr1 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 10, i64 %indvars.iv, i32 0
  store i32 0, i32* %nr1, align 4, !tbaa !0
  %nm_ind = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 10, i64 %indvars.iv, i32 1
  store i32* null, i32** %nm_ind, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 9
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @init_top(%struct.t_topology* %top) #0 {
entry:
  %name = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0
  store i8** null, i8*** %name, align 8, !tbaa !3
  %symtab = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 4
  tail call void @open_symtab(%struct.t_symtab* %symtab) #3
  %atoms = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2
  tail call void @init_atom(%struct.t_atoms* %atoms) #4
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv
  %block11.i = bitcast %struct.t_block* %arrayidx to i8*
  %nr.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv, i32 1
  store i32 0, i32* %nr.i, align 4, !tbaa !0
  %nra.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv, i32 3
  store i32 0, i32* %nra.i, align 4, !tbaa !0
  %call.i = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 44, i32 1, i32 4) #3
  %0 = bitcast i8* %call.i to i32*
  %index.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv, i32 2
  store i32* %0, i32** %index.i, align 8, !tbaa !3
  store i32 0, i32* %0, align 4, !tbaa !0
  %a.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv, i32 4
  store i32* null, i32** %a.i, align 8, !tbaa !3
  tail call void @llvm.memset.p0i8.i64(i8* %block11.i, i8 0, i64 1024, i32 4, i1 false) #2
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: optsize
declare void @open_symtab(%struct.t_symtab*) #1

; Function Attrs: nounwind optsize uwtable
define void @init_inputrec(%struct.t_inputrec* nocapture %ir) #0 {
entry:
  %0 = bitcast %struct.t_inputrec* %ir to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 592, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind optsize uwtable
define void @stupid_fill(%struct.t_block* nocapture %grp, i32 %natom, i32 %bOneIndexGroup) #0 {
entry:
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 92, i32 %natom, i32 4) #3
  %0 = bitcast i8* %call to i32*
  %a = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 4
  store i32* %0, i32** %a, align 8, !tbaa !3
  %cmp46 = icmp sgt i32 %natom, 0
  br i1 %cmp46, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %0, i64 %indvars.iv48
  %1 = trunc i64 %indvars.iv48 to i32
  store i32 %1, i32* %arrayidx, align 4, !tbaa !0
  %indvars.iv.next49 = add i64 %indvars.iv48, 1
  %lftr.wideiv50 = trunc i64 %indvars.iv.next49 to i32
  %exitcond51 = icmp eq i32 %lftr.wideiv50, %natom
  br i1 %exitcond51, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %nra = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 3
  store i32 %natom, i32* %nra, align 4, !tbaa !0
  %tobool = icmp eq i32 %bOneIndexGroup, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.end
  %call2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 98, i32 2, i32 4) #3
  %2 = bitcast i8* %call2 to i32*
  %index = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 2
  store i32* %2, i32** %index, align 8, !tbaa !3
  store i32 0, i32* %2, align 4, !tbaa !0
  %arrayidx6 = getelementptr inbounds i8* %call2, i64 4
  %3 = bitcast i8* %arrayidx6 to i32*
  store i32 %natom, i32* %3, align 4, !tbaa !0
  %nr = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 1
  store i32 1, i32* %nr, align 4, !tbaa !0
  br label %if.end

if.else:                                          ; preds = %for.end
  %add = add i32 %natom, 1
  %call7 = tail call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 104, i32 %add, i32 4) #3
  %4 = bitcast i8* %call7 to i32*
  %index8 = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 2
  store i32* %4, i32** %index8, align 8, !tbaa !3
  %cmp1044 = icmp slt i32 %natom, 0
  br i1 %cmp1044, label %for.end17, label %for.body11

for.body11:                                       ; preds = %if.else, %for.body11
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body11 ], [ 0, %if.else ]
  %arrayidx14 = getelementptr inbounds i32* %4, i64 %indvars.iv
  %5 = trunc i64 %indvars.iv to i32
  store i32 %5, i32* %arrayidx14, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %add
  br i1 %exitcond, label %for.end17, label %for.body11

for.end17:                                        ; preds = %for.body11, %if.else
  %nr18 = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 1
  store i32 %natom, i32* %nr18, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %for.end17, %if.then
  %sub = add nsw i32 %natom, -1
  %arrayidx19 = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 0, i64 0
  store i32 %sub, i32* %arrayidx19, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @done_block(%struct.t_block* nocapture %block) #0 {
entry:
  %nr = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1
  store i32 0, i32* %nr, align 4, !tbaa !0
  %nra = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3
  store i32 0, i32* %nra, align 4, !tbaa !0
  %index = getelementptr inbounds %struct.t_block* %block, i64 0, i32 2
  %0 = load i32** %index, align 8, !tbaa !3
  %1 = bitcast i32* %0 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 116, i8* %1) #3
  %a = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4
  %2 = load i32** %a, align 8, !tbaa !3
  %3 = bitcast i32* %2 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 117, i8* %3) #3
  ret void
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @done_atom(%struct.t_atoms* nocapture %at) #0 {
entry:
  %excl = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 9
  tail call void @done_block(%struct.t_block* %excl) #4
  %nr = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 0
  store i32 0, i32* %nr, align 4, !tbaa !0
  %nres = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 5
  store i32 0, i32* %nres, align 4, !tbaa !0
  %atom = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 1
  %0 = load %struct.t_atom** %atom, align 8, !tbaa !3
  %1 = bitcast %struct.t_atom* %0 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 125, i8* %1) #3
  %resname = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 6
  %2 = load i8**** %resname, align 8, !tbaa !3
  %3 = bitcast i8*** %2 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 126, i8* %3) #3
  %atomname = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 2
  %4 = load i8**** %atomname, align 8, !tbaa !3
  %5 = bitcast i8*** %4 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([13 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 127, i8* %5) #3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @done_top(%struct.t_topology* %top) #0 {
entry:
  %atoms = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2
  tail call void @done_atom(%struct.t_atoms* %atoms) #4
  %symtab = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 4
  tail call void @done_symtab(%struct.t_symtab* %symtab) #3
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv
  tail call void @done_block(%struct.t_block* %arrayidx) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: optsize
declare void @done_symtab(%struct.t_symtab*) #1

; Function Attrs: nounwind optsize uwtable
define void @done_inputrec(%struct.t_inputrec* nocapture %ir) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %a = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv, i32 1
  %0 = load float** %a, align 8, !tbaa !3
  %tobool = icmp eq float* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %1 = bitcast float* %0 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 145, i8* %1) #3
  br label %if.end

if.end:                                           ; preds = %for.body, %if.then
  %phi = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv, i32 2
  %2 = load float** %phi, align 8, !tbaa !3
  %tobool8 = icmp eq float* %2, null
  br i1 %tobool8, label %if.end14, label %if.then9

if.then9:                                         ; preds = %if.end
  %3 = bitcast float* %2 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 146, i8* %3) #3
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then9
  %a17 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv, i32 1
  %4 = load float** %a17, align 8, !tbaa !3
  %tobool18 = icmp eq float* %4, null
  br i1 %tobool18, label %if.end24, label %if.then19

if.then19:                                        ; preds = %if.end14
  %5 = bitcast float* %4 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 147, i8* %5) #3
  br label %if.end24

if.end24:                                         ; preds = %if.end14, %if.then19
  %phi28 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv, i32 2
  %6 = load float** %phi28, align 8, !tbaa !3
  %tobool29 = icmp eq float* %6, null
  br i1 %tobool29, label %for.inc, label %if.then30

if.then30:                                        ; preds = %if.end24
  %7 = bitcast float* %6 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 148, i8* %7) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end24, %if.then30
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %nrdf = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 4
  %8 = load float** %nrdf, align 8, !tbaa !3
  %tobool36 = icmp eq float* %8, null
  br i1 %tobool36, label %if.end40, label %if.then37

if.then37:                                        ; preds = %for.end
  %9 = bitcast float* %8 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 150, i8* %9) #3
  br label %if.end40

if.end40:                                         ; preds = %for.end, %if.then37
  %ref_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 5
  %10 = load float** %ref_t, align 8, !tbaa !3
  %tobool42 = icmp eq float* %10, null
  br i1 %tobool42, label %if.end46, label %if.then43

if.then43:                                        ; preds = %if.end40
  %11 = bitcast float* %10 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 151, i8* %11) #3
  br label %if.end46

if.end46:                                         ; preds = %if.end40, %if.then43
  %tau_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 6
  %12 = load float** %tau_t, align 8, !tbaa !3
  %tobool48 = icmp eq float* %12, null
  br i1 %tobool48, label %if.end52, label %if.then49

if.then49:                                        ; preds = %if.end46
  %13 = bitcast float* %12 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 152, i8* %13) #3
  br label %if.end52

if.end52:                                         ; preds = %if.end46, %if.then49
  %acc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 7
  %14 = load [3 x float]** %acc, align 8, !tbaa !3
  %tobool54 = icmp eq [3 x float]* %14, null
  br i1 %tobool54, label %if.end58, label %if.then55

if.then55:                                        ; preds = %if.end52
  %15 = bitcast [3 x float]* %14 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 153, i8* %15) #3
  br label %if.end58

if.end58:                                         ; preds = %if.end52, %if.then55
  %nFreeze = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 8
  %16 = load [3 x i32]** %nFreeze, align 8, !tbaa !3
  %tobool60 = icmp eq [3 x i32]* %16, null
  br i1 %tobool60, label %if.end64, label %if.then61

if.then61:                                        ; preds = %if.end58
  %17 = bitcast [3 x i32]* %16 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([17 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 154, i8* %17) #3
  br label %if.end64

if.end64:                                         ; preds = %if.end58, %if.then61
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @init_t_atoms(%struct.t_atoms* nocapture %atoms, i32 %natoms, i32 %bPdbinfo) #0 {
entry:
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  store i32 %natoms, i32* %nr, align 4, !tbaa !0
  %nres = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5
  store i32 0, i32* %nres, align 4, !tbaa !0
  %ngrpname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 7
  store i32 0, i32* %ngrpname, align 4, !tbaa !0
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 162, i32 %natoms, i32 8) #3
  %0 = bitcast i8* %call to i8***
  %atomname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2
  store i8*** %0, i8**** %atomname, align 8, !tbaa !3
  %atomtype = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 3
  %1 = bitcast i8**** %atomtype to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 16, i32 8, i1 false)
  %call1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 165, i32 %natoms, i32 8) #3
  %2 = bitcast i8* %call1 to i8***
  %resname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6
  store i8*** %2, i8**** %resname, align 8, !tbaa !3
  %call2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 166, i32 %natoms, i32 40) #3
  %3 = bitcast i8* %call2 to %struct.t_atom*
  %atom = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  store %struct.t_atom* %3, %struct.t_atom** %atom, align 8, !tbaa !3
  %call3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 167, i32 %natoms, i32 8) #3
  %4 = bitcast i8* %call3 to i8***
  %grpname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 8
  store i8*** %4, i8**** %grpname, align 8, !tbaa !3
  %tobool = icmp eq i32 %bPdbinfo, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 169, i32 %natoms, i32 52) #3
  %5 = bitcast i8* %call4 to %struct.t_pdbinfo*
  %pdbinfo = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 11
  store %struct.t_pdbinfo* %5, %struct.t_pdbinfo** %pdbinfo, align 8, !tbaa !3
  br label %if.end

if.else:                                          ; preds = %entry
  %pdbinfo5 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 11
  store %struct.t_pdbinfo* null, %struct.t_pdbinfo** %pdbinfo5, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %excl = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 9
  %block11.i = bitcast %struct.t_block* %excl to i8*
  %nr.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 9, i32 1
  store i32 0, i32* %nr.i, align 4, !tbaa !0
  %nra.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 9, i32 3
  store i32 0, i32* %nra.i, align 4, !tbaa !0
  %call.i = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 44, i32 1, i32 4) #3
  %6 = bitcast i8* %call.i to i32*
  %index.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 9, i32 2
  store i32* %6, i32** %index.i, align 8, !tbaa !3
  store i32 0, i32* %6, align 4, !tbaa !0
  %a.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 9, i32 4
  store i32* null, i32** %a.i, align 8, !tbaa !3
  tail call void @llvm.memset.p0i8.i64(i8* %block11.i, i8 0, i64 1024, i32 4, i1 false) #2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @free_t_atoms(%struct.t_atoms* nocapture %atoms) #0 {
entry:
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %0 = load i32* %nr, align 4, !tbaa !0
  %cmp20 = icmp sgt i32 %0, 0
  %atomname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %1 = load i8**** %atomname, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8*** %1, i64 %indvars.iv
  %2 = load i8*** %arrayidx, align 8, !tbaa !3
  %3 = load i8** %2, align 8, !tbaa !3
  tail call void @save_free(i8* getelementptr inbounds ([20 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 180, i8* %3) #3
  %4 = load i8**** %atomname, align 8, !tbaa !3
  %arrayidx3 = getelementptr inbounds i8*** %4, i64 %indvars.iv
  %5 = load i8*** %arrayidx3, align 8, !tbaa !3
  store i8* null, i8** %5, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %6 = load i32* %nr, align 4, !tbaa !0
  %7 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %7, %6
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %entry, %for.body
  %8 = load i8**** %atomname, align 8, !tbaa !3
  %9 = bitcast i8*** %8 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 183, i8* %9) #3
  %resname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6
  %10 = load i8**** %resname, align 8, !tbaa !3
  %11 = bitcast i8*** %10 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 185, i8* %11) #3
  %atom = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %12 = load %struct.t_atom** %atom, align 8, !tbaa !3
  %13 = bitcast %struct.t_atom* %12 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 186, i8* %13) #3
  %pdbinfo = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 11
  %14 = load %struct.t_pdbinfo** %pdbinfo, align 8, !tbaa !3
  %tobool = icmp eq %struct.t_pdbinfo* %14, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %15 = bitcast %struct.t_pdbinfo* %14 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 188, i8* %15) #3
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  store i32 0, i32* %nr, align 4, !tbaa !0
  %nres = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5
  store i32 0, i32* %nres, align 4, !tbaa !0
  %excl = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 9
  tail call void @done_block(%struct.t_block* %excl) #4
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
