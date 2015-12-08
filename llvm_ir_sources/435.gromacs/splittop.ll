; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/splittop.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_interaction_function = type { i8*, i8*, i32, i32, i32, i64, i32, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* }
%union.t_iparams = type { %struct.anon.2 }
%struct.anon.2 = type { float, float, float, float, float, float }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_graph = type { i32, i32, i32, i32, i32, i32*, i32**, [3 x i32]* }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_fcdata = type { %struct.t_disresdata, %struct.t_oriresdata }
%struct.t_disresdata = type { i32, i32, float, float, float, float, float, i32, i32, float, float*, float*, float*, float*, float* }
%struct.t_oriresdata = type { float, float, float, float, i32, i32, i32, float, float*, [3 x float]*, [3 x float]*, [3 x [3 x float]], [3 x [3 x float]]*, [5 x float]*, [5 x float]*, [5 x float]*, float*, float*, float*, float, [5 x float]*, float*** }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct.t_comm_dummies = type { i32, i32, i32*, i32*, i32, i32, i32*, i32* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_topology = type { i8**, %struct.t_idef, %struct.t_atoms, [3 x %struct.t_block], %struct.t_symtab }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }
%struct.t_symtab = type { i32, %struct.symbuf* }
%struct.symbuf = type { i32, i8**, %struct.symbuf* }

@.str = private unnamed_addr constant [8 x i8] c"newlist\00", align 1
@.str1 = private unnamed_addr constant [56 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/splittop.c\00", align 1
@.str2 = private unnamed_addr constant [11 x i8] c"idxprevdum\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"idxnextdum\00", align 1
@.str4 = private unnamed_addr constant [14 x i8] c"idxprevconstr\00", align 1
@.str5 = private unnamed_addr constant [14 x i8] c"idxnextconstr\00", align 1
@interaction_function = external global [44 x %struct.t_interaction_function]
@.str6 = private unnamed_addr constant [280 x i8] c"Dummy particle %d and its constructing atoms are not on the same or adjacent\0A nodes. This is necessary to avoid a lot\0A of extra communication. The easiest way to ensure this is to place dummies\0A close to the constructing atoms.\0A Sorry, but you will have to rework your topology!\0A\00", align 1
@.str7 = private unnamed_addr constant [113 x i8] c"Negative number of atoms (%d) on node %d\0AYou have probably not used the same value for -np with grompp and mdrun\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"ia\00", align 1
@.str9 = private unnamed_addr constant [11 x i8] c"il->iatoms\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @create_dummylist(i32 %nindex, i32* nocapture %list, i32* nocapture %targetn, i32** nocapture %listptr) #0 {
entry:
  %cmp99 = icmp sgt i32 %nindex, 0
  br i1 %cmp99, label %for.body, label %for.end20.thread

for.end20.thread:                                 ; preds = %entry
  store i32 %nindex, i32* %targetn, align 4, !tbaa !0
  %call126 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 61, i32 %nindex, i32 4) #2
  %0 = bitcast i8* %call126 to i32*
  br label %for.end49

for.cond.loopexit:                                ; preds = %for.inc15, %for.body
  %nindex.addr.1.lcssa = phi i32 [ %nindex.addr.0101, %for.body ], [ %nindex.addr.2, %for.inc15 ]
  %cmp = icmp slt i32 %2, %nindex.addr.1.lcssa
  %indvars.iv.next120 = add i64 %indvars.iv119, 1
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %entry, %for.cond.loopexit
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %for.cond.loopexit ], [ 0, %entry ]
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %for.cond.loopexit ], [ 1, %entry ]
  %nindex.addr.0101 = phi i32 [ %nindex.addr.1.lcssa, %for.cond.loopexit ], [ %nindex, %entry ]
  %i.0100 = phi i32 [ %add, %for.cond.loopexit ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %list, i64 %indvars.iv124
  %1 = load i32* %arrayidx, align 4, !tbaa !0
  %indvars.iv.next125 = add i64 %indvars.iv124, 1
  %add = add nsw i32 %i.0100, 1
  %2 = trunc i64 %indvars.iv.next125 to i32
  %cmp295 = icmp slt i32 %2, %nindex.addr.0101
  br i1 %cmp295, label %for.body3, label %for.cond.loopexit

for.body3:                                        ; preds = %for.body, %for.inc15
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %for.inc15 ], [ %indvars.iv119, %for.body ]
  %nindex.addr.197 = phi i32 [ %nindex.addr.2, %for.inc15 ], [ %nindex.addr.0101, %for.body ]
  %j.096 = phi i32 [ %inc16, %for.inc15 ], [ %add, %for.body ]
  %arrayidx5 = getelementptr inbounds i32* %list, i64 %indvars.iv121
  %3 = load i32* %arrayidx5, align 4, !tbaa !0
  %cmp6 = icmp eq i32 %3, %1
  br i1 %cmp6, label %for.cond7.preheader, label %for.inc15

for.cond7.preheader:                              ; preds = %for.body3
  %sub = add i32 %nindex.addr.197, -1
  %4 = trunc i64 %indvars.iv121 to i32
  %cmp892 = icmp slt i32 %4, %sub
  br i1 %cmp892, label %for.body9, label %for.inc15

for.body9:                                        ; preds = %for.cond7.preheader, %for.body9
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %for.body9 ], [ %indvars.iv121, %for.cond7.preheader ]
  %k.093 = phi i32 [ %add10, %for.body9 ], [ %j.096, %for.cond7.preheader ]
  %add10 = add nsw i32 %k.093, 1
  %idxprom11 = sext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds i32* %list, i64 %idxprom11
  %5 = load i32* %arrayidx12, align 4, !tbaa !0
  %arrayidx14 = getelementptr inbounds i32* %list, i64 %indvars.iv111
  store i32 %5, i32* %arrayidx14, align 4, !tbaa !0
  %indvars.iv.next112 = add i64 %indvars.iv111, 1
  %lftr.wideiv114 = trunc i64 %indvars.iv.next112 to i32
  %exitcond115 = icmp eq i32 %lftr.wideiv114, %sub
  br i1 %exitcond115, label %for.inc15, label %for.body9

for.inc15:                                        ; preds = %for.cond7.preheader, %for.body9, %for.body3
  %nindex.addr.2 = phi i32 [ %nindex.addr.197, %for.body3 ], [ %sub, %for.body9 ], [ %sub, %for.cond7.preheader ]
  %inc16 = add nsw i32 %j.096, 1
  %cmp2 = icmp slt i32 %inc16, %nindex.addr.2
  %indvars.iv.next122 = add i64 %indvars.iv121, 1
  br i1 %cmp2, label %for.body3, label %for.cond.loopexit

for.end20:                                        ; preds = %for.cond.loopexit
  store i32 %nindex.addr.1.lcssa, i32* %targetn, align 4, !tbaa !0
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 61, i32 %nindex.addr.1.lcssa, i32 4) #2
  %6 = bitcast i8* %call to i32*
  %cmp2290 = icmp sgt i32 %nindex.addr.1.lcssa, 0
  br i1 %cmp2290, label %for.body26.lr.ph, label %for.end49

for.body26.lr.ph:                                 ; preds = %for.end40, %for.end20
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %for.end40 ], [ 0, %for.end20 ]
  br label %for.body26

for.body26:                                       ; preds = %for.inc38, %for.body26.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body26.lr.ph ], [ %indvars.iv.next, %for.inc38 ]
  %inr.089 = phi i32 [ -1, %for.body26.lr.ph ], [ %inr.1, %for.inc38 ]
  %arrayidx28 = getelementptr inbounds i32* %list, i64 %indvars.iv
  %7 = load i32* %arrayidx28, align 4, !tbaa !0
  %cmp29 = icmp sgt i32 %7, 0
  br i1 %cmp29, label %land.lhs.true, label %for.inc38

land.lhs.true:                                    ; preds = %for.body26
  %cmp30 = icmp eq i32 %inr.089, -1
  br i1 %cmp30, label %if.then36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %idxprom33 = sext i32 %inr.089 to i64
  %arrayidx34 = getelementptr inbounds i32* %list, i64 %idxprom33
  %8 = load i32* %arrayidx34, align 4, !tbaa !0
  %cmp35 = icmp slt i32 %7, %8
  br i1 %cmp35, label %if.then36, label %for.inc38

if.then36:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %9 = trunc i64 %indvars.iv to i32
  br label %for.inc38

for.inc38:                                        ; preds = %for.body26, %lor.lhs.false, %if.then36
  %inr.1 = phi i32 [ %9, %if.then36 ], [ %inr.089, %lor.lhs.false ], [ %inr.089, %for.body26 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nindex.addr.1.lcssa
  br i1 %exitcond, label %for.end40, label %for.body26

for.end40:                                        ; preds = %for.inc38
  %idxprom41 = sext i32 %inr.1 to i64
  %arrayidx42 = getelementptr inbounds i32* %list, i64 %idxprom41
  %10 = load i32* %arrayidx42, align 4, !tbaa !0
  %arrayidx44 = getelementptr inbounds i32* %6, i64 %indvars.iv103
  store i32 %10, i32* %arrayidx44, align 4, !tbaa !0
  store i32 -1, i32* %arrayidx42, align 4, !tbaa !0
  %indvars.iv.next104 = add i64 %indvars.iv103, 1
  %lftr.wideiv105 = trunc i64 %indvars.iv.next104 to i32
  %exitcond106 = icmp eq i32 %lftr.wideiv105, %nindex.addr.1.lcssa
  br i1 %exitcond106, label %for.end49, label %for.body26.lr.ph

for.end49:                                        ; preds = %for.end40, %for.end20.thread, %for.end20
  %11 = phi i32* [ %0, %for.end20.thread ], [ %6, %for.end20 ], [ %6, %for.end40 ]
  store i32* %11, i32** %listptr, align 8, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @setup_parallel_dummies(%struct.t_idef* nocapture %idef, %struct.t_commrec* nocapture %cr, %struct.t_nsborder* nocapture %nsb, %struct.t_comm_dummies* nocapture %dummycomm) #0 {
entry:
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 93, i32 100, i32 4) #2
  %0 = bitcast i8* %call to i32*
  %call1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 94, i32 100, i32 4) #2
  %1 = bitcast i8* %call1 to i32*
  %call2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 95, i32 100, i32 4) #2
  %2 = bitcast i8* %call2 to i32*
  %call3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 96, i32 100, i32 4) #2
  %3 = bitcast i8* %call3 to i32*
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc232, %entry
  %indvars.iv407 = phi i64 [ 0, %entry ], [ %indvars.iv.next408, %for.inc232 ]
  %nnextconstr.0398 = phi i32 [ 0, %entry ], [ %nnextconstr.5, %for.inc232 ]
  %nprevconstr.0397 = phi i32 [ 0, %entry ], [ %nprevconstr.5, %for.inc232 ]
  %nnextdum.0396 = phi i32 [ 0, %entry ], [ %nnextdum.4, %for.inc232 ]
  %nprevdum.0395 = phi i32 [ 0, %entry ], [ %nprevdum.4, %for.inc232 ]
  %idxnextconstr.0394 = phi i32* [ %3, %entry ], [ %idxnextconstr.6, %for.inc232 ]
  %idxprevconstr.0393 = phi i32* [ %2, %entry ], [ %idxprevconstr.6, %for.inc232 ]
  %idxnextdum.0392 = phi i32* [ %1, %entry ], [ %idxnextdum.5, %for.inc232 ]
  %idxprevdum.0391 = phi i32* [ %0, %entry ], [ %idxprevdum.5, %for.inc232 ]
  %found.0390 = phi i32 [ 0, %entry ], [ %found.9, %for.inc232 ]
  %flags = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv407, i32 5
  %4 = load i64* %flags, align 8, !tbaa !4
  %and = and i64 %4, 2
  %tobool = icmp eq i64 %and, 0
  br i1 %tobool, label %for.inc232, label %if.then

if.then:                                          ; preds = %for.body
  %nr = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv407, i32 0
  %5 = load i32* %nr, align 4, !tbaa !0
  %cmp12366 = icmp sgt i32 %5, 0
  br i1 %cmp12366, label %for.body13.lr.ph, label %for.inc232

for.body13.lr.ph:                                 ; preds = %if.then
  %iatoms = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv407, i32 2
  %nratoms = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv407, i32 2
  %6 = load i32** %iatoms, align 8, !tbaa !3
  %7 = load i32* %nratoms, align 8, !tbaa !0
  %add227 = add nsw i32 %7, 1
  %idx.ext = sext i32 %add227 to i64
  br label %for.body13

for.body13:                                       ; preds = %for.body13.lr.ph, %if.end226
  %nnextconstr.1378 = phi i32 [ %nnextconstr.0398, %for.body13.lr.ph ], [ %nnextconstr.4, %if.end226 ]
  %nprevconstr.1377 = phi i32 [ %nprevconstr.0397, %for.body13.lr.ph ], [ %nprevconstr.4, %if.end226 ]
  %nnextdum.1376 = phi i32 [ %nnextdum.0396, %for.body13.lr.ph ], [ %nnextdum.3, %if.end226 ]
  %nprevdum.1375 = phi i32 [ %nprevdum.0395, %for.body13.lr.ph ], [ %nprevdum.3, %if.end226 ]
  %idxnextconstr.1374 = phi i32* [ %idxnextconstr.0394, %for.body13.lr.ph ], [ %idxnextconstr.5, %if.end226 ]
  %idxprevconstr.1373 = phi i32* [ %idxprevconstr.0393, %for.body13.lr.ph ], [ %idxprevconstr.5, %if.end226 ]
  %idxnextdum.1372 = phi i32* [ %idxnextdum.0392, %for.body13.lr.ph ], [ %idxnextdum.4, %if.end226 ]
  %idxprevdum.1371 = phi i32* [ %idxprevdum.0391, %for.body13.lr.ph ], [ %idxprevdum.4, %if.end226 ]
  %ia.0369 = phi i32* [ %6, %for.body13.lr.ph ], [ %add.ptr, %if.end226 ]
  %found.1368 = phi i32 [ %found.0390, %for.body13.lr.ph ], [ %found.8, %if.end226 ]
  %i.0367 = phi i32 [ 0, %for.body13.lr.ph ], [ %add228, %if.end226 ]
  %8 = trunc i64 %indvars.iv407 to i32
  switch i32 %8, label %if.else18 [
    i32 30, label %if.end19
    i32 35, label %if.then17
  ]

if.then17:                                        ; preds = %for.body13
  br label %if.end19

if.else18:                                        ; preds = %for.body13
  br label %if.end19

if.end19:                                         ; preds = %for.body13, %if.then17, %if.else18
  %nconstr.0 = phi i32 [ 6, %if.then17 ], [ 5, %if.else18 ], [ 4, %for.body13 ]
  %arrayidx20 = getelementptr inbounds i32* %ia.0369, i64 1
  %9 = load i32* %arrayidx20, align 4, !tbaa !0
  br label %for.body23

for.body23:                                       ; preds = %if.end19, %for.body23
  %indvars.iv = phi i64 [ 2, %if.end19 ], [ %indvars.iv.next, %for.body23 ]
  %minidx.0356 = phi i32 [ %9, %if.end19 ], [ %.minidx.0, %for.body23 ]
  %arrayidx25 = getelementptr inbounds i32* %ia.0369, i64 %indvars.iv
  %10 = load i32* %arrayidx25, align 4, !tbaa !0
  %cmp26 = icmp slt i32 %10, %minidx.0356
  %.minidx.0 = select i1 %cmp26, i32 %10, i32 %minidx.0356
  %indvars.iv.next = add i64 %indvars.iv, 1
  %11 = trunc i64 %indvars.iv.next to i32
  %cmp22 = icmp slt i32 %11, %nconstr.0
  br i1 %cmp22, label %for.body23, label %while.cond

while.cond:                                       ; preds = %for.body23, %while.cond
  %indvars.iv399 = phi i64 [ %indvars.iv.next400, %while.cond ], [ 0, %for.body23 ]
  %minhome.0 = phi i32 [ %inc37, %while.cond ], [ 0, %for.body23 ]
  %arrayidx32 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %indvars.iv399
  %12 = load i32* %arrayidx32, align 4, !tbaa !0
  %arrayidx34 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %indvars.iv399
  %13 = load i32* %arrayidx34, align 4, !tbaa !0
  %add35 = add nsw i32 %13, %12
  %cmp36 = icmp slt i32 %.minidx.0, %add35
  %indvars.iv.next400 = add i64 %indvars.iv399, 1
  %inc37 = add nsw i32 %minhome.0, 1
  br i1 %cmp36, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load i32* %nodeid, align 4, !tbaa !0
  %cmp38 = icmp eq i32 %minhome.0, %14
  br i1 %cmp38, label %if.then39, label %if.else126

if.then39:                                        ; preds = %while.end
  %idxprom42 = sext i32 %minhome.0 to i64
  %arrayidx44 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom42
  %15 = load i32* %arrayidx44, align 4, !tbaa !0
  %cmp45 = icmp slt i32 %9, %15
  br i1 %cmp45, label %if.then57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then39
  %arrayidx54 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom42
  %16 = load i32* %arrayidx54, align 4, !tbaa !0
  %add55 = add nsw i32 %16, %15
  %cmp56 = icmp slt i32 %9, %add55
  br i1 %cmp56, label %if.end69, label %if.then57

if.then57:                                        ; preds = %lor.lhs.false, %if.then39
  %rem = srem i32 %nnextdum.1376, 100
  %cmp58 = icmp eq i32 %rem, 0
  %cmp59 = icmp sgt i32 %nnextdum.1376, 0
  %or.cond = and i1 %cmp58, %cmp59
  br i1 %or.cond, label %if.then60, label %if.end64

if.then60:                                        ; preds = %if.then57
  %17 = bitcast i32* %idxnextdum.1372 to i8*
  %add61 = shl i32 %nnextdum.1376, 2
  %mul = add i32 %add61, 400
  %call63 = tail call i8* @save_realloc(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 131, i8* %17, i32 %mul) #2
  %18 = bitcast i8* %call63 to i32*
  %.pre = load i32* %arrayidx20, align 4, !tbaa !0
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %if.then57
  %19 = phi i32 [ %.pre, %if.then60 ], [ %9, %if.then57 ]
  %idxnextdum.2 = phi i32* [ %18, %if.then60 ], [ %idxnextdum.1372, %if.then57 ]
  %inc66 = add nsw i32 %nnextdum.1376, 1
  %idxprom67 = sext i32 %nnextdum.1376 to i64
  %arrayidx68 = getelementptr inbounds i32* %idxnextdum.2, i64 %idxprom67
  store i32 %19, i32* %arrayidx68, align 4, !tbaa !0
  br label %if.end69

if.end69:                                         ; preds = %lor.lhs.false, %if.end64
  %found.2 = phi i32 [ 1, %if.end64 ], [ %found.1368, %lor.lhs.false ]
  %idxnextdum.3 = phi i32* [ %idxnextdum.2, %if.end64 ], [ %idxnextdum.1372, %lor.lhs.false ]
  %nnextdum.2 = phi i32 [ %inc66, %if.end64 ], [ %nnextdum.1376, %lor.lhs.false ]
  br label %for.body74

for.body74:                                       ; preds = %if.end69, %for.inc123
  %indvars.iv405 = phi i64 [ 2, %if.end69 ], [ %indvars.iv.next406, %for.inc123 ]
  %nnextconstr.2365 = phi i32 [ %nnextconstr.1378, %if.end69 ], [ %nnextconstr.3, %for.inc123 ]
  %idxnextconstr.2364 = phi i32* [ %idxnextconstr.1374, %if.end69 ], [ %idxnextconstr.4, %for.inc123 ]
  %found.3363 = phi i32 [ %found.2, %if.end69 ], [ %found.4, %for.inc123 ]
  %arrayidx76 = getelementptr inbounds i32* %ia.0369, i64 %indvars.iv405
  %20 = load i32* %arrayidx76, align 4, !tbaa !0
  br label %while.cond77

while.cond77:                                     ; preds = %while.cond77, %for.body74
  %indvars.iv403 = phi i64 [ %indvars.iv.next404, %while.cond77 ], [ 0, %for.body74 ]
  %ihome.0 = phi i32 [ %inc88, %while.cond77 ], [ 0, %for.body74 ]
  %arrayidx80 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %indvars.iv403
  %21 = load i32* %arrayidx80, align 4, !tbaa !0
  %arrayidx83 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %indvars.iv403
  %22 = load i32* %arrayidx83, align 4, !tbaa !0
  %add84 = add nsw i32 %22, %21
  %cmp85 = icmp slt i32 %20, %add84
  %indvars.iv.next404 = add i64 %indvars.iv403, 1
  %inc88 = add nsw i32 %ihome.0, 1
  br i1 %cmp85, label %while.end89, label %while.cond77

while.end89:                                      ; preds = %while.cond77
  %23 = load i32* %nodeid, align 4, !tbaa !0
  %add91 = add nsw i32 %23, 1
  %cmp92 = icmp sgt i32 %ihome.0, %add91
  br i1 %cmp92, label %if.then94, label %if.else96

if.then94:                                        ; preds = %while.end89
  %24 = load i32* %arrayidx20, align 4, !tbaa !0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([280 x i8]* @.str6, i64 0, i64 0), i32 %24) #2
  br label %for.inc123

if.else96:                                        ; preds = %while.end89
  %25 = load i32* %nnodes, align 4, !tbaa !0
  %rem99 = srem i32 %add91, %25
  %cmp100 = icmp eq i32 %ihome.0, %rem99
  br i1 %cmp100, label %if.then102, label %for.inc123

if.then102:                                       ; preds = %if.else96
  %rem103 = srem i32 %nnextconstr.2365, 100
  %cmp104 = icmp eq i32 %rem103, 0
  %cmp107 = icmp sgt i32 %nnextconstr.2365, 0
  %or.cond243 = and i1 %cmp104, %cmp107
  br i1 %or.cond243, label %if.then109, label %if.end115

if.then109:                                       ; preds = %if.then102
  %26 = bitcast i32* %idxnextconstr.2364 to i8*
  %add110 = shl i32 %nnextconstr.2365, 2
  %mul112 = add i32 %add110, 400
  %call114 = tail call i8* @save_realloc(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 151, i8* %26, i32 %mul112) #2
  %27 = bitcast i8* %call114 to i32*
  %.pre409 = load i32* %arrayidx76, align 4, !tbaa !0
  br label %if.end115

if.end115:                                        ; preds = %if.then109, %if.then102
  %28 = phi i32 [ %.pre409, %if.then109 ], [ %20, %if.then102 ]
  %idxnextconstr.3 = phi i32* [ %27, %if.then109 ], [ %idxnextconstr.2364, %if.then102 ]
  %inc118 = add nsw i32 %nnextconstr.2365, 1
  %idxprom119 = sext i32 %nnextconstr.2365 to i64
  %arrayidx120 = getelementptr inbounds i32* %idxnextconstr.3, i64 %idxprom119
  store i32 %28, i32* %arrayidx120, align 4, !tbaa !0
  br label %for.inc123

for.inc123:                                       ; preds = %if.then94, %if.end115, %if.else96
  %found.4 = phi i32 [ %found.3363, %if.then94 ], [ 1, %if.end115 ], [ %found.3363, %if.else96 ]
  %idxnextconstr.4 = phi i32* [ %idxnextconstr.2364, %if.then94 ], [ %idxnextconstr.3, %if.end115 ], [ %idxnextconstr.2364, %if.else96 ]
  %nnextconstr.3 = phi i32 [ %nnextconstr.2365, %if.then94 ], [ %inc118, %if.end115 ], [ %nnextconstr.2365, %if.else96 ]
  %indvars.iv.next406 = add i64 %indvars.iv405, 1
  %29 = trunc i64 %indvars.iv.next406 to i32
  %cmp72 = icmp slt i32 %29, %nconstr.0
  br i1 %cmp72, label %for.body74, label %if.end226

if.else126:                                       ; preds = %while.end
  %sub = add nsw i32 %14, -1
  %30 = load i32* %nnodes, align 4, !tbaa !0
  %add129 = add nsw i32 %sub, %30
  %rem131 = srem i32 %add129, %30
  %cmp132 = icmp eq i32 %minhome.0, %rem131
  br i1 %cmp132, label %if.then134, label %if.end226

if.then134:                                       ; preds = %if.else126
  %idxprom137 = sext i32 %14 to i64
  %arrayidx139 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom137
  %31 = load i32* %arrayidx139, align 4, !tbaa !0
  %cmp140 = icmp slt i32 %9, %31
  br i1 %cmp140, label %if.end173, label %land.lhs.true142

land.lhs.true142:                                 ; preds = %if.then134
  %arrayidx151 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom137
  %32 = load i32* %arrayidx151, align 4, !tbaa !0
  %add152 = add nsw i32 %32, %31
  %cmp153 = icmp slt i32 %9, %add152
  br i1 %cmp153, label %if.then155, label %if.end173

if.then155:                                       ; preds = %land.lhs.true142
  %rem156 = srem i32 %nprevdum.1375, 100
  %cmp157 = icmp eq i32 %rem156, 0
  %cmp160 = icmp sgt i32 %nprevdum.1375, 0
  %or.cond244 = and i1 %cmp157, %cmp160
  br i1 %or.cond244, label %if.then162, label %if.end168

if.then162:                                       ; preds = %if.then155
  %33 = bitcast i32* %idxprevdum.1371 to i8*
  %add163 = shl i32 %nprevdum.1375, 2
  %mul165 = add i32 %add163, 400
  %call167 = tail call i8* @save_realloc(i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 161, i8* %33, i32 %mul165) #2
  %34 = bitcast i8* %call167 to i32*
  %.pre411 = load i32* %arrayidx20, align 4, !tbaa !0
  br label %if.end168

if.end168:                                        ; preds = %if.then162, %if.then155
  %35 = phi i32 [ %.pre411, %if.then162 ], [ %9, %if.then155 ]
  %idxprevdum.2 = phi i32* [ %34, %if.then162 ], [ %idxprevdum.1371, %if.then155 ]
  %inc170 = add nsw i32 %nprevdum.1375, 1
  %idxprom171 = sext i32 %nprevdum.1375 to i64
  %arrayidx172 = getelementptr inbounds i32* %idxprevdum.2, i64 %idxprom171
  store i32 %35, i32* %arrayidx172, align 4, !tbaa !0
  br label %if.end173

if.end173:                                        ; preds = %if.then134, %if.end168, %land.lhs.true142
  %found.5 = phi i32 [ 1, %if.end168 ], [ %found.1368, %land.lhs.true142 ], [ %found.1368, %if.then134 ]
  %idxprevdum.3 = phi i32* [ %idxprevdum.2, %if.end168 ], [ %idxprevdum.1371, %land.lhs.true142 ], [ %idxprevdum.1371, %if.then134 ]
  %nprevdum.2 = phi i32 [ %inc170, %if.end168 ], [ %nprevdum.1375, %land.lhs.true142 ], [ %nprevdum.1375, %if.then134 ]
  br label %for.body178

for.body178:                                      ; preds = %for.inc222, %if.end173
  %indvars.iv401 = phi i64 [ 2, %if.end173 ], [ %indvars.iv.next402, %for.inc222 ]
  %nprevconstr.2360 = phi i32 [ %nprevconstr.1377, %if.end173 ], [ %nprevconstr.3, %for.inc222 ]
  %idxprevconstr.2359 = phi i32* [ %idxprevconstr.1373, %if.end173 ], [ %idxprevconstr.4, %for.inc222 ]
  %found.6358 = phi i32 [ %found.5, %if.end173 ], [ %found.7, %for.inc222 ]
  %arrayidx180 = getelementptr inbounds i32* %ia.0369, i64 %indvars.iv401
  %36 = load i32* %arrayidx180, align 4, !tbaa !0
  %37 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom184 = sext i32 %37 to i64
  %arrayidx186 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom184
  %38 = load i32* %arrayidx186, align 4, !tbaa !0
  %cmp187 = icmp slt i32 %36, %38
  br i1 %cmp187, label %for.inc222, label %land.lhs.true189

land.lhs.true189:                                 ; preds = %for.body178
  %39 = load i32* %arrayidx20, align 4, !tbaa !0
  %arrayidx198 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom184
  %40 = load i32* %arrayidx198, align 4, !tbaa !0
  %add199 = add nsw i32 %40, %38
  %cmp200 = icmp slt i32 %39, %add199
  br i1 %cmp200, label %if.then202, label %for.inc222

if.then202:                                       ; preds = %land.lhs.true189
  %rem203 = srem i32 %nprevconstr.2360, 100
  %cmp204 = icmp eq i32 %rem203, 0
  %cmp207 = icmp sgt i32 %nprevconstr.2360, 0
  %or.cond245 = and i1 %cmp204, %cmp207
  br i1 %or.cond245, label %if.then209, label %if.end215

if.then209:                                       ; preds = %if.then202
  %41 = bitcast i32* %idxprevconstr.2359 to i8*
  %add210 = shl i32 %nprevconstr.2360, 2
  %mul212 = add i32 %add210, 400
  %call214 = tail call i8* @save_realloc(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 170, i8* %41, i32 %mul212) #2
  %42 = bitcast i8* %call214 to i32*
  %.pre410 = load i32* %arrayidx180, align 4, !tbaa !0
  br label %if.end215

if.end215:                                        ; preds = %if.then209, %if.then202
  %43 = phi i32 [ %.pre410, %if.then209 ], [ %36, %if.then202 ]
  %idxprevconstr.3 = phi i32* [ %42, %if.then209 ], [ %idxprevconstr.2359, %if.then202 ]
  %inc218 = add nsw i32 %nprevconstr.2360, 1
  %idxprom219 = sext i32 %nprevconstr.2360 to i64
  %arrayidx220 = getelementptr inbounds i32* %idxprevconstr.3, i64 %idxprom219
  store i32 %43, i32* %arrayidx220, align 4, !tbaa !0
  br label %for.inc222

for.inc222:                                       ; preds = %for.body178, %land.lhs.true189, %if.end215
  %found.7 = phi i32 [ 1, %if.end215 ], [ %found.6358, %land.lhs.true189 ], [ %found.6358, %for.body178 ]
  %idxprevconstr.4 = phi i32* [ %idxprevconstr.3, %if.end215 ], [ %idxprevconstr.2359, %land.lhs.true189 ], [ %idxprevconstr.2359, %for.body178 ]
  %nprevconstr.3 = phi i32 [ %inc218, %if.end215 ], [ %nprevconstr.2360, %land.lhs.true189 ], [ %nprevconstr.2360, %for.body178 ]
  %indvars.iv.next402 = add i64 %indvars.iv401, 1
  %44 = trunc i64 %indvars.iv.next402 to i32
  %cmp176 = icmp slt i32 %44, %nconstr.0
  br i1 %cmp176, label %for.body178, label %if.end226

if.end226:                                        ; preds = %for.inc123, %for.inc222, %if.else126
  %found.8 = phi i32 [ %found.1368, %if.else126 ], [ %found.7, %for.inc222 ], [ %found.4, %for.inc123 ]
  %idxprevdum.4 = phi i32* [ %idxprevdum.1371, %if.else126 ], [ %idxprevdum.3, %for.inc222 ], [ %idxprevdum.1371, %for.inc123 ]
  %idxnextdum.4 = phi i32* [ %idxnextdum.1372, %if.else126 ], [ %idxnextdum.1372, %for.inc222 ], [ %idxnextdum.3, %for.inc123 ]
  %idxprevconstr.5 = phi i32* [ %idxprevconstr.1373, %if.else126 ], [ %idxprevconstr.4, %for.inc222 ], [ %idxprevconstr.1373, %for.inc123 ]
  %idxnextconstr.5 = phi i32* [ %idxnextconstr.1374, %if.else126 ], [ %idxnextconstr.1374, %for.inc222 ], [ %idxnextconstr.4, %for.inc123 ]
  %nprevdum.3 = phi i32 [ %nprevdum.1375, %if.else126 ], [ %nprevdum.2, %for.inc222 ], [ %nprevdum.1375, %for.inc123 ]
  %nnextdum.3 = phi i32 [ %nnextdum.1376, %if.else126 ], [ %nnextdum.1376, %for.inc222 ], [ %nnextdum.2, %for.inc123 ]
  %nprevconstr.4 = phi i32 [ %nprevconstr.1377, %if.else126 ], [ %nprevconstr.3, %for.inc222 ], [ %nprevconstr.1377, %for.inc123 ]
  %nnextconstr.4 = phi i32 [ %nnextconstr.1378, %if.else126 ], [ %nnextconstr.1378, %for.inc222 ], [ %nnextconstr.3, %for.inc123 ]
  %add228 = add nsw i32 %i.0367, %add227
  %add.ptr = getelementptr inbounds i32* %ia.0369, i64 %idx.ext
  %cmp12 = icmp slt i32 %add228, %5
  br i1 %cmp12, label %for.body13, label %for.inc232

for.inc232:                                       ; preds = %if.then, %if.end226, %for.body
  %found.9 = phi i32 [ %found.0390, %for.body ], [ %found.0390, %if.then ], [ %found.8, %if.end226 ]
  %idxprevdum.5 = phi i32* [ %idxprevdum.0391, %for.body ], [ %idxprevdum.0391, %if.then ], [ %idxprevdum.4, %if.end226 ]
  %idxnextdum.5 = phi i32* [ %idxnextdum.0392, %for.body ], [ %idxnextdum.0392, %if.then ], [ %idxnextdum.4, %if.end226 ]
  %idxprevconstr.6 = phi i32* [ %idxprevconstr.0393, %for.body ], [ %idxprevconstr.0393, %if.then ], [ %idxprevconstr.5, %if.end226 ]
  %idxnextconstr.6 = phi i32* [ %idxnextconstr.0394, %for.body ], [ %idxnextconstr.0394, %if.then ], [ %idxnextconstr.5, %if.end226 ]
  %nprevdum.4 = phi i32 [ %nprevdum.0395, %for.body ], [ %nprevdum.0395, %if.then ], [ %nprevdum.3, %if.end226 ]
  %nnextdum.4 = phi i32 [ %nnextdum.0396, %for.body ], [ %nnextdum.0396, %if.then ], [ %nnextdum.3, %if.end226 ]
  %nprevconstr.5 = phi i32 [ %nprevconstr.0397, %for.body ], [ %nprevconstr.0397, %if.then ], [ %nprevconstr.4, %if.end226 ]
  %nnextconstr.5 = phi i32 [ %nnextconstr.0398, %for.body ], [ %nnextconstr.0398, %if.then ], [ %nnextconstr.4, %if.end226 ]
  %indvars.iv.next408 = add i64 %indvars.iv407, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next408 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 44
  br i1 %exitcond, label %for.end234, label %for.body

for.end234:                                       ; preds = %for.inc232
  %nprevdum235 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 0
  %idxprevdum236 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 2
  tail call void @create_dummylist(i32 %nprevdum.4, i32* %idxprevdum.5, i32* %nprevdum235, i32** %idxprevdum236) #3
  %nnextdum237 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 1
  %idxnextdum238 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 3
  tail call void @create_dummylist(i32 %nnextdum.4, i32* %idxnextdum.5, i32* %nnextdum237, i32** %idxnextdum238) #3
  %nprevconstr239 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 4
  %idxprevconstr240 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 6
  tail call void @create_dummylist(i32 %nprevconstr.5, i32* %idxprevconstr.6, i32* %nprevconstr239, i32** %idxprevconstr240) #3
  %nnextconstr241 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 5
  %idxnextconstr242 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 7
  tail call void @create_dummylist(i32 %nnextconstr.5, i32* %idxnextconstr.6, i32* %nnextconstr241, i32** %idxnextconstr242) #3
  %45 = bitcast i32* %idxprevdum.5 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 192, i8* %45) #2
  %46 = bitcast i32* %idxnextdum.5 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 193, i8* %46) #2
  %47 = bitcast i32* %idxprevconstr.6 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 194, i8* %47) #2
  %48 = bitcast i32* %idxnextconstr.6 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 195, i8* %48) #2
  ret i32 %found.9
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @mdsplit_top(%struct._IO_FILE* nocapture %log, %struct.t_topology* nocapture %top, %struct.t_commrec* nocapture %cr, %struct.t_nsborder* nocapture %nsb, i32* nocapture %bParallelDummies, %struct.t_comm_dummies* nocapture %dummycomm) #0 {
entry:
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %0 = load i32* %nnodes, align 4, !tbaa !0
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %idef = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1
  %call = tail call i32 @setup_parallel_dummies(%struct.t_idef* %idef, %struct.t_commrec* %cr, %struct.t_nsborder* %nsb, %struct.t_comm_dummies* %dummycomm) #3
  store i32 %call, i32* %bParallelDummies, align 4, !tbaa !0
  %nodeid.i.i = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  br label %for.body.i

for.body.i:                                       ; preds = %split_ilist.exit.i, %if.end
  %indvars.iv.i = phi i64 [ 0, %if.end ], [ %indvars.iv.next.i, %split_ilist.exit.i ]
  %1 = load i32* %nodeid.i.i, align 4, !tbaa !0
  %cmp.i.i = icmp eq i32 %1, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %for.body.i
  %sub.i.i = add nsw i32 %1, -1
  %idxprom.i.i = sext i32 %sub.i.i to i64
  %arrayidx.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv.i, i32 1, i64 %idxprom.i.i
  %2 = load i32* %arrayidx.i.i, align 4, !tbaa !0
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %for.body.i
  %start.0.i.i = phi i32 [ %2, %if.else.i.i ], [ 0, %for.body.i ]
  %idxprom3.i.i = sext i32 %1 to i64
  %arrayidx5.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv.i, i32 1, i64 %idxprom3.i.i
  %3 = load i32* %arrayidx5.i.i, align 4, !tbaa !0
  %sub6.i.i = sub i32 %3, %start.0.i.i
  %cmp7.i.i = icmp slt i32 %sub6.i.i, 0
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.end10.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([113 x i8]* @.str7, i64 0, i64 0), i32 %sub6.i.i, i32 %1) #2
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then8.i.i, %if.end.i.i
  %call.i.i = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 222, i32 %sub6.i.i, i32 4) #2
  %4 = bitcast i8* %call.i.i to i32*
  %cmp112.i.i = icmp sgt i32 %sub6.i.i, 0
  %iatoms.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv.i, i32 2
  %5 = load i32** %iatoms.i.i, align 8, !tbaa !3
  br i1 %cmp112.i.i, label %for.body.lr.ph.i.i, label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end10.i.i
  %6 = sext i32 %start.0.i.i to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i, %for.body.lr.ph.i.i
  %indvars.iv4.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next5.i.i, %for.body.i.i ]
  %7 = add nsw i64 %indvars.iv4.i.i, %6
  %arrayidx13.i.i = getelementptr inbounds i32* %5, i64 %7
  %8 = load i32* %arrayidx13.i.i, align 4, !tbaa !0
  %arrayidx15.i.i = getelementptr inbounds i32* %4, i64 %indvars.iv4.i.i
  store i32 %8, i32* %arrayidx15.i.i, align 4, !tbaa !0
  %indvars.iv.next5.i.i = add i64 %indvars.iv4.i.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next5.i.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %sub6.i.i
  br i1 %exitcond, label %for.end.i.i, label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i, %if.end10.i.i
  %9 = bitcast i32* %5 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 227, i8* %9) #2
  store i32* %4, i32** %iatoms.i.i, align 8, !tbaa !3
  br label %for.body20.i.i

for.body20.i.i:                                   ; preds = %for.body20.i.i, %for.end.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.end.i.i ], [ %indvars.iv.next.i.i, %for.body20.i.i ]
  %arrayidx23.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv.i, i32 1, i64 %indvars.iv.i.i
  store i32 %sub6.i.i, i32* %arrayidx23.i.i, align 4, !tbaa !0
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1
  %lftr.wideiv5 = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond6 = icmp eq i32 %lftr.wideiv5, 256
  br i1 %exitcond6, label %split_ilist.exit.i, label %for.body20.i.i

split_ilist.exit.i:                               ; preds = %for.body20.i.i
  %nr27.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv.i, i32 0
  store i32 %sub6.i.i, i32* %nr27.i.i, align 4, !tbaa !0
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv7 = trunc i64 %indvars.iv.next.i to i32
  %exitcond8 = icmp eq i32 %lftr.wideiv7, 44
  br i1 %exitcond8, label %return, label %for.body.i

return:                                           ; preds = %split_ilist.exit.i, %entry
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }
attributes #3 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
