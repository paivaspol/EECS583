; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/dummies.c'
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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_nrnb = type { [129 x double] }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_comm_dummies = type { i32, i32, i32*, i32*, i32, i32, i32*, i32* }

@interaction_function = external global [44 x %struct.t_interaction_function]
@.str = private unnamed_addr constant [37 x i8] c"No such dummy type %d in %s, line %d\00", align 1
@.str1 = private unnamed_addr constant [55 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/dummies.c\00", align 1
@nextbuf = internal unnamed_addr global [3 x float]* null, align 8
@prevbuf = internal unnamed_addr global [3 x float]* null, align 8
@move_construct_x.bFirst = internal unnamed_addr global i1 false
@.str2 = private unnamed_addr constant [8 x i8] c"nextbuf\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"prevbuf\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @construct_dummies(%struct._IO_FILE* nocapture %log, [3 x float]* %x, %struct.t_nrnb* nocapture %nrnb, float %dt, [3 x float]* %v, %struct.t_idef* nocapture %idef, %struct.t_graph* %graph, %struct.t_commrec* nocapture %cr, [3 x float]* %box, %struct.t_comm_dummies* %dummycomm) #0 {
entry:
  %tobool = icmp ne %struct.t_comm_dummies* %dummycomm, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @unshift_self(%struct.t_graph* %graph, [3 x float]* %box, [3 x float]* %x) #4
  %.b.i = load i1* @move_construct_x.bFirst, align 1
  br i1 %.b.i, label %entry.for.cond.preheader_crit_edge.i, label %if.then.i

entry.for.cond.preheader_crit_edge.i:             ; preds = %if.then
  %nprevconstr6.pre.i = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 4
  br label %for.cond.preheader.i

if.then.i:                                        ; preds = %if.then
  %nnextdum.i = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 1
  %0 = load i32* %nnextdum.i, align 4, !tbaa !0
  %nnextconstr.i = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 5
  %1 = load i32* %nnextconstr.i, align 4, !tbaa !0
  %add.i = add nsw i32 %1, %0
  %mul.i = shl i32 %add.i, 1
  %add1.i = add nsw i32 %mul.i, 100
  %call.i = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 71, i32 %add1.i, i32 12) #4
  %2 = bitcast i8* %call.i to [3 x float]*
  store [3 x float]* %2, [3 x float]** @nextbuf, align 8, !tbaa !3
  %nprevdum.i = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 0
  %3 = load i32* %nprevdum.i, align 4, !tbaa !0
  %nprevconstr.i = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 4
  %4 = load i32* %nprevconstr.i, align 4, !tbaa !0
  %add2.i = add nsw i32 %4, %3
  %mul3.i = shl i32 %add2.i, 1
  %add4.i = add nsw i32 %mul3.i, 100
  %call5.i = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 72, i32 %add4.i, i32 12) #4
  %5 = bitcast i8* %call5.i to [3 x float]*
  store [3 x float]* %5, [3 x float]** @prevbuf, align 8, !tbaa !3
  store i1 true, i1* @move_construct_x.bFirst, align 1
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then.i, %entry.for.cond.preheader_crit_edge.i
  %nprevconstr6.pre-phi.i = phi i32* [ %nprevconstr6.pre.i, %entry.for.cond.preheader_crit_edge.i ], [ %nprevconstr.i, %if.then.i ]
  %6 = load i32* %nprevconstr6.pre-phi.i, align 4, !tbaa !0
  %cmp174.i = icmp sgt i32 %6, 0
  br i1 %cmp174.i, label %for.body.lr.ph.i, label %for.cond12.preheader.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %idxprevconstr.i = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 6
  %7 = load i32** %idxprevconstr.i, align 8, !tbaa !3
  %8 = load [3 x float]** @prevbuf, align 8, !tbaa !3
  br label %for.body.i

for.cond12.preheader.i:                           ; preds = %for.body.i, %for.cond.preheader.i
  %nprevdum13.i = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 0
  %9 = load i32* %nprevdum13.i, align 4, !tbaa !0
  %cmp14171.i = icmp sgt i32 %9, 0
  br i1 %cmp14171.i, label %for.body15.lr.ph.i, label %for.end28.i

for.body15.lr.ph.i:                               ; preds = %for.cond12.preheader.i
  %idxprevdum.i = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 2
  %10 = load i32** %idxprevdum.i, align 8, !tbaa !3
  %11 = load [3 x float]** @prevbuf, align 8, !tbaa !3
  %12 = sext i32 %6 to i64
  br label %for.body15.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv183.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next184.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds i32* %7, i64 %indvars.iv183.i
  %13 = load i32* %arrayidx.i, align 4, !tbaa !0
  %idxprom7.i = sext i32 %13 to i64
  %arraydecay.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom7.i, i64 0
  %arraydecay11.i = getelementptr inbounds [3 x float]* %8, i64 %indvars.iv183.i, i64 0
  %14 = load float* %arraydecay.i, align 4, !tbaa !4
  store float %14, float* %arraydecay11.i, align 4, !tbaa !4
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom7.i, i64 1
  %15 = load float* %arrayidx2.i.i, align 4, !tbaa !4
  %arrayidx3.i.i = getelementptr inbounds [3 x float]* %8, i64 %indvars.iv183.i, i64 1
  store float %15, float* %arrayidx3.i.i, align 4, !tbaa !4
  %arrayidx4.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom7.i, i64 2
  %16 = load float* %arrayidx4.i.i, align 4, !tbaa !4
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %8, i64 %indvars.iv183.i, i64 2
  store float %16, float* %arrayidx5.i.i, align 4, !tbaa !4
  %indvars.iv.next184.i = add i64 %indvars.iv183.i, 1
  %lftr.wideiv400 = trunc i64 %indvars.iv.next184.i to i32
  %exitcond401 = icmp eq i32 %lftr.wideiv400, %6
  br i1 %exitcond401, label %for.cond12.preheader.i, label %for.body.i

for.body15.i:                                     ; preds = %for.body15.i, %for.body15.lr.ph.i
  %indvars.iv180.i = phi i64 [ 0, %for.body15.lr.ph.i ], [ %indvars.iv.next181.i, %for.body15.i ]
  %arrayidx17.i = getelementptr inbounds i32* %10, i64 %indvars.iv180.i
  %17 = load i32* %arrayidx17.i, align 4, !tbaa !0
  %idxprom18.i = sext i32 %17 to i64
  %arraydecay20.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom18.i, i64 0
  %18 = add nsw i64 %indvars.iv180.i, %12
  %arraydecay25.i = getelementptr inbounds [3 x float]* %11, i64 %18, i64 0
  %19 = load float* %arraydecay20.i, align 4, !tbaa !4
  store float %19, float* %arraydecay25.i, align 4, !tbaa !4
  %arrayidx2.i163.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom18.i, i64 1
  %20 = load float* %arrayidx2.i163.i, align 4, !tbaa !4
  %arrayidx3.i164.i = getelementptr inbounds [3 x float]* %11, i64 %18, i64 1
  store float %20, float* %arrayidx3.i164.i, align 4, !tbaa !4
  %arrayidx4.i165.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom18.i, i64 2
  %21 = load float* %arrayidx4.i165.i, align 4, !tbaa !4
  %arrayidx5.i166.i = getelementptr inbounds [3 x float]* %11, i64 %18, i64 2
  store float %21, float* %arrayidx5.i166.i, align 4, !tbaa !4
  %indvars.iv.next181.i = add i64 %indvars.iv180.i, 1
  %lftr.wideiv398 = trunc i64 %indvars.iv.next181.i to i32
  %exitcond399 = icmp eq i32 %lftr.wideiv398, %9
  br i1 %exitcond399, label %for.end28.i, label %for.body15.i

for.end28.i:                                      ; preds = %for.body15.i, %for.cond12.preheader.i
  %or.cond.i = or i1 %cmp174.i, %cmp14171.i
  br i1 %or.cond.i, label %if.then33.i, label %if.end39.i

if.then33.i:                                      ; preds = %for.end28.i
  %left.i = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %22 = load i32* %left.i, align 4, !tbaa !0
  %23 = load [3 x float]** @prevbuf, align 8, !tbaa !3
  %24 = bitcast [3 x float]* %23 to i8*
  %add36.i = add nsw i32 %9, %6
  %mul37.i = mul i32 %add36.i, 12
  tail call void @gmx_tx(i32 %22, i8* %24, i32 %mul37.i) #4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then33.i, %for.end28.i
  %nnextconstr40.i = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 5
  %25 = load i32* %nnextconstr40.i, align 4, !tbaa !0
  %cmp41.i = icmp sgt i32 %25, 0
  %nnextdum49.phi.trans.insert.i = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 1
  %.pre185.i = load i32* %nnextdum49.phi.trans.insert.i, align 4, !tbaa !0
  %cmp45.i = icmp sgt i32 %.pre185.i, 0
  %or.cond187.i = or i1 %cmp41.i, %cmp45.i
  br i1 %or.cond187.i, label %if.then47.i, label %if.end54.i

if.then47.i:                                      ; preds = %if.end39.i
  %right.i = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %26 = load i32* %right.i, align 4, !tbaa !0
  %27 = load [3 x float]** @nextbuf, align 8, !tbaa !3
  %28 = bitcast [3 x float]* %27 to i8*
  %add50.i = add nsw i32 %.pre185.i, %25
  %mul52.i = mul i32 %add50.i, 12
  tail call void @gmx_rx(i32 %26, i8* %28, i32 %mul52.i) #4
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.end39.i, %if.then47.i
  %29 = load i32* %nprevconstr6.pre-phi.i, align 4, !tbaa !0
  %cmp56.i = icmp sgt i32 %29, 0
  br i1 %cmp56.i, label %if.then62.i, label %lor.lhs.false58.i

lor.lhs.false58.i:                                ; preds = %if.end54.i
  %30 = load i32* %nprevdum13.i, align 4, !tbaa !0
  %cmp60.i = icmp sgt i32 %30, 0
  br i1 %cmp60.i, label %if.then62.i, label %if.end64.i

if.then62.i:                                      ; preds = %lor.lhs.false58.i, %if.end54.i
  %left63.i = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %31 = load i32* %left63.i, align 4, !tbaa !0
  tail call void @gmx_tx_wait(i32 %31) #4
  br label %if.end64.i

if.end64.i:                                       ; preds = %lor.lhs.false58.i, %if.then62.i
  %32 = load i32* %nnextconstr40.i, align 4, !tbaa !0
  %cmp66.i = icmp sgt i32 %32, 0
  br i1 %cmp66.i, label %for.cond75.preheader.i, label %lor.lhs.false68.i

lor.lhs.false68.i:                                ; preds = %if.end64.i
  %33 = load i32* %nnextdum49.phi.trans.insert.i, align 4, !tbaa !0
  %cmp70.i = icmp sgt i32 %33, 0
  br i1 %cmp70.i, label %for.cond75.preheader.i, label %move_construct_x.exit

for.cond75.preheader.i:                           ; preds = %lor.lhs.false68.i, %if.end64.i
  %right73.i = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %34 = load i32* %right73.i, align 4, !tbaa !0
  tail call void @gmx_rx_wait(i32 %34) #4
  %.pre.i = load i32* %nnextconstr40.i, align 4, !tbaa !0
  %cmp77169.i = icmp sgt i32 %.pre.i, 0
  br i1 %cmp77169.i, label %for.body79.lr.ph.i, label %for.cond91.preheader.i

for.body79.lr.ph.i:                               ; preds = %for.cond75.preheader.i
  %35 = load [3 x float]** @nextbuf, align 8, !tbaa !3
  %idxnextconstr.i = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 7
  %36 = load i32** %idxnextconstr.i, align 8, !tbaa !3
  br label %for.body79.i

for.cond91.preheader.i:                           ; preds = %for.body79.i, %for.cond75.preheader.i
  %.pr = load i32* %nnextdum49.phi.trans.insert.i, align 4, !tbaa !0
  %cmp93167.i = icmp sgt i32 %.pr, 0
  br i1 %cmp93167.i, label %for.body95.lr.ph.i, label %move_construct_x.exit

for.body95.lr.ph.i:                               ; preds = %for.cond91.preheader.i
  %37 = load [3 x float]** @nextbuf, align 8, !tbaa !3
  %idxnextdum.i = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 3
  %38 = load i32** %idxnextdum.i, align 8, !tbaa !3
  %39 = sext i32 %.pre.i to i64
  br label %for.body95.i

for.body79.i:                                     ; preds = %for.body79.i, %for.body79.lr.ph.i
  %indvars.iv178.i = phi i64 [ 0, %for.body79.lr.ph.i ], [ %indvars.iv.next179.i, %for.body79.i ]
  %arraydecay82.i = getelementptr inbounds [3 x float]* %35, i64 %indvars.iv178.i, i64 0
  %arrayidx84.i = getelementptr inbounds i32* %36, i64 %indvars.iv178.i
  %40 = load i32* %arrayidx84.i, align 4, !tbaa !0
  %idxprom85.i = sext i32 %40 to i64
  %arraydecay87.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom85.i, i64 0
  %41 = load float* %arraydecay82.i, align 4, !tbaa !4
  store float %41, float* %arraydecay87.i, align 4, !tbaa !4
  %arrayidx2.i159.i = getelementptr inbounds [3 x float]* %35, i64 %indvars.iv178.i, i64 1
  %42 = load float* %arrayidx2.i159.i, align 4, !tbaa !4
  %arrayidx3.i160.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom85.i, i64 1
  store float %42, float* %arrayidx3.i160.i, align 4, !tbaa !4
  %arrayidx4.i161.i = getelementptr inbounds [3 x float]* %35, i64 %indvars.iv178.i, i64 2
  %43 = load float* %arrayidx4.i161.i, align 4, !tbaa !4
  %arrayidx5.i162.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom85.i, i64 2
  store float %43, float* %arrayidx5.i162.i, align 4, !tbaa !4
  %indvars.iv.next179.i = add i64 %indvars.iv178.i, 1
  %lftr.wideiv396 = trunc i64 %indvars.iv.next179.i to i32
  %exitcond397 = icmp eq i32 %lftr.wideiv396, %.pre.i
  br i1 %exitcond397, label %for.cond91.preheader.i, label %for.body79.i

for.body95.i:                                     ; preds = %for.body95.i, %for.body95.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body95.lr.ph.i ], [ %indvars.iv.next.i, %for.body95.i ]
  %44 = add nsw i64 %indvars.iv.i, %39
  %arraydecay100.i = getelementptr inbounds [3 x float]* %37, i64 %44, i64 0
  %arrayidx102.i = getelementptr inbounds i32* %38, i64 %indvars.iv.i
  %45 = load i32* %arrayidx102.i, align 4, !tbaa !0
  %idxprom103.i = sext i32 %45 to i64
  %arraydecay105.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom103.i, i64 0
  %46 = load float* %arraydecay100.i, align 4, !tbaa !4
  store float %46, float* %arraydecay105.i, align 4, !tbaa !4
  %arrayidx2.i155.i = getelementptr inbounds [3 x float]* %37, i64 %44, i64 1
  %47 = load float* %arrayidx2.i155.i, align 4, !tbaa !4
  %arrayidx3.i156.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom103.i, i64 1
  store float %47, float* %arrayidx3.i156.i, align 4, !tbaa !4
  %arrayidx4.i157.i = getelementptr inbounds [3 x float]* %37, i64 %44, i64 2
  %48 = load float* %arrayidx4.i157.i, align 4, !tbaa !4
  %arrayidx5.i158.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom103.i, i64 2
  store float %48, float* %arrayidx5.i158.i, align 4, !tbaa !4
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv394 = trunc i64 %indvars.iv.next.i to i32
  %exitcond395 = icmp eq i32 %lftr.wideiv394, %.pr
  br i1 %exitcond395, label %move_construct_x.exit, label %for.body95.i

move_construct_x.exit:                            ; preds = %for.body95.i, %lor.lhs.false68.i, %for.cond91.preheader.i
  tail call void @shift_self(%struct.t_graph* %graph, [3 x float]* %box, [3 x float]* %x) #4
  br label %if.end

if.end:                                           ; preds = %move_construct_x.exit, %entry
  %iparams = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4
  %49 = load %union.t_iparams** %iparams, align 8, !tbaa !3
  %tobool1 = icmp ne [3 x float]* %v, null
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %conv3 = fdiv float 1.000000e+00, %dt
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then2
  %inv_dt.0 = phi float [ %conv3, %if.then2 ], [ 1.000000e+00, %if.end ]
  br label %for.body

for.body:                                         ; preds = %for.inc, %if.end4
  %indvars.iv = phi i64 [ 0, %if.end4 ], [ %indvars.iv.next, %for.inc ]
  %flags = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv, i32 5
  %50 = load i64* %flags, align 8, !tbaa !5
  %and = and i64 %50, 2
  %tobool6 = icmp eq i64 %and, 0
  br i1 %tobool6, label %for.inc, label %if.then7

if.then7:                                         ; preds = %for.body
  %nr = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv, i32 0
  %51 = load i32* %nr, align 4, !tbaa !0
  %cmp16386 = icmp sgt i32 %51, 0
  br i1 %cmp16386, label %for.body18.lr.ph, label %for.inc

for.body18.lr.ph:                                 ; preds = %if.then7
  %iatoms = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv, i32 2
  %nratoms = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv, i32 2
  %52 = load i32** %iatoms, align 8, !tbaa !3
  %53 = load i32* %nratoms, align 8, !tbaa !0
  %add = add nsw i32 %53, 1
  %idx.ext = sext i32 %add to i64
  br label %for.body18

for.body18:                                       ; preds = %for.body18.lr.ph, %if.end148
  %ia.0388 = phi i32* [ %52, %for.body18.lr.ph ], [ %add.ptr, %if.end148 ]
  %i.0387 = phi i32 [ 0, %for.body18.lr.ph ], [ %add149, %if.end148 ]
  %54 = load i32* %ia.0388, align 4, !tbaa !0
  %arrayidx20 = getelementptr inbounds i32* %ia.0388, i64 1
  %55 = load i32* %arrayidx20, align 4, !tbaa !0
  %arrayidx21 = getelementptr inbounds i32* %ia.0388, i64 2
  %56 = load i32* %arrayidx21, align 4, !tbaa !0
  %arrayidx22 = getelementptr inbounds i32* %ia.0388, i64 3
  %57 = load i32* %arrayidx22, align 4, !tbaa !0
  %idxprom23 = sext i32 %54 to i64
  %a = getelementptr inbounds %union.t_iparams* %49, i64 %idxprom23, i32 0, i32 0
  %58 = load float* %a, align 4, !tbaa !4
  %idxprom25 = sext i32 %55 to i64
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %idxprom25, i64 0
  %59 = load float* %arraydecay, align 4, !tbaa !4
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom25, i64 1
  %60 = load float* %arrayidx2.i, align 4, !tbaa !4
  %arrayidx4.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom25, i64 2
  %61 = load float* %arrayidx4.i, align 4, !tbaa !4
  %62 = trunc i64 %indvars.iv to i32
  switch i32 %62, label %sw.default [
    i32 30, label %sw.bb
    i32 31, label %sw.bb37
    i32 32, label %sw.bb54
    i32 33, label %sw.bb72
    i32 34, label %sw.bb90
    i32 35, label %sw.bb111
  ]

sw.bb:                                            ; preds = %for.body18
  %idxprom28 = sext i32 %56 to i64
  %arraydecay30 = getelementptr inbounds [3 x float]* %x, i64 %idxprom28, i64 0
  %idxprom31 = sext i32 %57 to i64
  %arraydecay33 = getelementptr inbounds [3 x float]* %x, i64 %idxprom31, i64 0
  %conv1.i = fsub float 1.000000e+00, %58
  %63 = load float* %arraydecay30, align 4, !tbaa !4
  %mul.i266 = fmul float %conv1.i, %63
  %64 = load float* %arraydecay33, align 4, !tbaa !4
  %mul3.i267 = fmul float %58, %64
  %add.i268 = fadd float %mul.i266, %mul3.i267
  store float %add.i268, float* %arraydecay, align 4, !tbaa !4
  %arrayidx5.i269 = getelementptr inbounds [3 x float]* %x, i64 %idxprom28, i64 1
  %65 = load float* %arrayidx5.i269, align 4, !tbaa !4
  %mul6.i = fmul float %conv1.i, %65
  %arrayidx7.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom31, i64 1
  %66 = load float* %arrayidx7.i, align 4, !tbaa !4
  %mul8.i = fmul float %58, %66
  %add9.i = fadd float %mul6.i, %mul8.i
  store float %add9.i, float* %arrayidx2.i, align 4, !tbaa !4
  %arrayidx11.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom28, i64 2
  %67 = load float* %arrayidx11.i, align 4, !tbaa !4
  %mul12.i = fmul float %conv1.i, %67
  %arrayidx13.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom31, i64 2
  %68 = load float* %arrayidx13.i, align 4, !tbaa !4
  %mul14.i = fmul float %58, %68
  %add15.i = fadd float %mul12.i, %mul14.i
  store float %add15.i, float* %arrayidx4.i, align 4, !tbaa !4
  br label %sw.epilog

sw.bb37:                                          ; preds = %for.body18
  %arrayidx38 = getelementptr inbounds i32* %ia.0388, i64 4
  %69 = load i32* %arrayidx38, align 4, !tbaa !0
  %70 = getelementptr inbounds %union.t_iparams* %49, i64 %idxprom23, i32 0, i32 1
  %71 = load float* %70, align 4, !tbaa !4
  %idxprom42 = sext i32 %56 to i64
  %arraydecay44 = getelementptr inbounds [3 x float]* %x, i64 %idxprom42, i64 0
  %idxprom45 = sext i32 %57 to i64
  %arraydecay47 = getelementptr inbounds [3 x float]* %x, i64 %idxprom45, i64 0
  %idxprom48 = sext i32 %69 to i64
  %arraydecay50 = getelementptr inbounds [3 x float]* %x, i64 %idxprom48, i64 0
  %conv.i = fpext float %58 to double
  %sub.i = fsub double 1.000000e+00, %conv.i
  %conv1.i270 = fpext float %71 to double
  %sub2.i = fsub double %sub.i, %conv1.i270
  %conv3.i = fptrunc double %sub2.i to float
  %72 = load float* %arraydecay44, align 4, !tbaa !4
  %mul.i271 = fmul float %72, %conv3.i
  %73 = load float* %arraydecay47, align 4, !tbaa !4
  %mul5.i = fmul float %58, %73
  %add.i272 = fadd float %mul5.i, %mul.i271
  %74 = load float* %arraydecay50, align 4, !tbaa !4
  %mul7.i = fmul float %71, %74
  %add8.i = fadd float %mul7.i, %add.i272
  store float %add8.i, float* %arraydecay, align 4, !tbaa !4
  %arrayidx10.i273 = getelementptr inbounds [3 x float]* %x, i64 %idxprom42, i64 1
  %75 = load float* %arrayidx10.i273, align 4, !tbaa !4
  %mul11.i = fmul float %conv3.i, %75
  %arrayidx12.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom45, i64 1
  %76 = load float* %arrayidx12.i, align 4, !tbaa !4
  %mul13.i = fmul float %58, %76
  %add14.i = fadd float %mul11.i, %mul13.i
  %arrayidx15.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom48, i64 1
  %77 = load float* %arrayidx15.i, align 4, !tbaa !4
  %mul16.i = fmul float %71, %77
  %add17.i = fadd float %add14.i, %mul16.i
  store float %add17.i, float* %arrayidx2.i, align 4, !tbaa !4
  %arrayidx19.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom42, i64 2
  %78 = load float* %arrayidx19.i, align 4, !tbaa !4
  %mul20.i = fmul float %conv3.i, %78
  %arrayidx21.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom45, i64 2
  %79 = load float* %arrayidx21.i, align 4, !tbaa !4
  %mul22.i = fmul float %58, %79
  %add23.i = fadd float %mul20.i, %mul22.i
  %arrayidx24.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom48, i64 2
  %80 = load float* %arrayidx24.i, align 4, !tbaa !4
  %mul25.i = fmul float %71, %80
  %add26.i = fadd float %add23.i, %mul25.i
  store float %add26.i, float* %arrayidx4.i, align 4, !tbaa !4
  br label %sw.epilog

sw.bb54:                                          ; preds = %for.body18
  %arrayidx55 = getelementptr inbounds i32* %ia.0388, i64 4
  %81 = load i32* %arrayidx55, align 4, !tbaa !0
  %82 = getelementptr inbounds %union.t_iparams* %49, i64 %idxprom23, i32 0, i32 1
  %83 = load float* %82, align 4, !tbaa !4
  %idxprom60 = sext i32 %56 to i64
  %arraydecay62 = getelementptr inbounds [3 x float]* %x, i64 %idxprom60, i64 0
  %idxprom63 = sext i32 %57 to i64
  %arraydecay65 = getelementptr inbounds [3 x float]* %x, i64 %idxprom63, i64 0
  %idxprom66 = sext i32 %81 to i64
  %arraydecay68 = getelementptr inbounds [3 x float]* %x, i64 %idxprom66, i64 0
  %84 = load float* %arraydecay65, align 4, !tbaa !4
  %85 = load float* %arraydecay62, align 4, !tbaa !4
  %sub.i.i = fsub float %84, %85
  %arrayidx2.i.i274 = getelementptr inbounds [3 x float]* %x, i64 %idxprom63, i64 1
  %86 = load float* %arrayidx2.i.i274, align 4, !tbaa !4
  %arrayidx3.i.i275 = getelementptr inbounds [3 x float]* %x, i64 %idxprom60, i64 1
  %87 = load float* %arrayidx3.i.i275, align 4, !tbaa !4
  %sub4.i.i = fsub float %86, %87
  %arrayidx5.i.i276 = getelementptr inbounds [3 x float]* %x, i64 %idxprom63, i64 2
  %88 = load float* %arrayidx5.i.i276, align 4, !tbaa !4
  %arrayidx6.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom60, i64 2
  %89 = load float* %arrayidx6.i.i, align 4, !tbaa !4
  %sub7.i.i = fsub float %88, %89
  %90 = load float* %arraydecay68, align 4, !tbaa !4
  %sub.i49.i = fsub float %90, %84
  %arrayidx2.i50.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom66, i64 1
  %91 = load float* %arrayidx2.i50.i, align 4, !tbaa !4
  %sub4.i52.i = fsub float %91, %86
  %arrayidx5.i53.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom66, i64 2
  %92 = load float* %arrayidx5.i53.i, align 4, !tbaa !4
  %sub7.i55.i = fsub float %92, %88
  %mul.i277 = fmul float %58, %sub.i49.i
  %add.i278 = fadd float %sub.i.i, %mul.i277
  %mul6.i279 = fmul float %58, %sub4.i52.i
  %add7.i = fadd float %sub4.i.i, %mul6.i279
  %mul11.i280 = fmul float %58, %sub7.i55.i
  %add12.i = fadd float %sub7.i.i, %mul11.i280
  %conv.i281 = fpext float %83 to double
  %mul.i.i = fmul float %add.i278, %add.i278
  %mul4.i.i = fmul float %add7.i, %add7.i
  %add.i.i = fadd float %mul.i.i, %mul4.i.i
  %mul7.i.i = fmul float %add12.i, %add12.i
  %add8.i.i = fadd float %add.i.i, %mul7.i.i
  %conv16.i = fpext float %add8.i.i to double
  %call17.i = tail call double @sqrt(double %conv16.i) #4
  %div.i = fdiv double 1.000000e+00, %call17.i
  %mul18.i = fmul double %conv.i281, %div.i
  %conv19.i = fptrunc double %mul18.i to float
  %93 = load float* %arraydecay62, align 4, !tbaa !4
  %mul22.i282 = fmul float %add.i278, %conv19.i
  %add23.i283 = fadd float %93, %mul22.i282
  store float %add23.i283, float* %arraydecay, align 4, !tbaa !4
  %94 = load float* %arrayidx3.i.i275, align 4, !tbaa !4
  %mul27.i = fmul float %add7.i, %conv19.i
  %add28.i = fadd float %94, %mul27.i
  store float %add28.i, float* %arrayidx2.i, align 4, !tbaa !4
  %95 = load float* %arrayidx6.i.i, align 4, !tbaa !4
  %mul32.i = fmul float %add12.i, %conv19.i
  %add33.i = fadd float %95, %mul32.i
  store float %add33.i, float* %arrayidx4.i, align 4, !tbaa !4
  br label %sw.epilog

sw.bb72:                                          ; preds = %for.body18
  %arrayidx73 = getelementptr inbounds i32* %ia.0388, i64 4
  %96 = load i32* %arrayidx73, align 4, !tbaa !0
  %97 = getelementptr inbounds %union.t_iparams* %49, i64 %idxprom23, i32 0, i32 1
  %98 = load float* %97, align 4, !tbaa !4
  %idxprom78 = sext i32 %56 to i64
  %arraydecay80 = getelementptr inbounds [3 x float]* %x, i64 %idxprom78, i64 0
  %idxprom81 = sext i32 %57 to i64
  %arraydecay83 = getelementptr inbounds [3 x float]* %x, i64 %idxprom81, i64 0
  %idxprom84 = sext i32 %96 to i64
  %arraydecay86 = getelementptr inbounds [3 x float]* %x, i64 %idxprom84, i64 0
  %99 = load float* %arraydecay83, align 4, !tbaa !4
  %100 = load float* %arraydecay80, align 4, !tbaa !4
  %sub.i.i284 = fsub float %99, %100
  %arrayidx2.i.i285 = getelementptr inbounds [3 x float]* %x, i64 %idxprom81, i64 1
  %101 = load float* %arrayidx2.i.i285, align 4, !tbaa !4
  %arrayidx3.i.i286 = getelementptr inbounds [3 x float]* %x, i64 %idxprom78, i64 1
  %102 = load float* %arrayidx3.i.i286, align 4, !tbaa !4
  %sub4.i.i287 = fsub float %101, %102
  %arrayidx5.i.i288 = getelementptr inbounds [3 x float]* %x, i64 %idxprom81, i64 2
  %103 = load float* %arrayidx5.i.i288, align 4, !tbaa !4
  %arrayidx6.i.i289 = getelementptr inbounds [3 x float]* %x, i64 %idxprom78, i64 2
  %104 = load float* %arrayidx6.i.i289, align 4, !tbaa !4
  %sub7.i.i290 = fsub float %103, %104
  %105 = load float* %arraydecay86, align 4, !tbaa !4
  %sub.i92.i = fsub float %105, %99
  %arrayidx2.i93.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom84, i64 1
  %106 = load float* %arrayidx2.i93.i, align 4, !tbaa !4
  %sub4.i95.i = fsub float %106, %101
  %arrayidx5.i96.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom84, i64 2
  %107 = load float* %arrayidx5.i96.i, align 4, !tbaa !4
  %sub7.i98.i = fsub float %107, %103
  %mul.i83.i = fmul float %sub.i.i284, %sub.i.i284
  %mul4.i86.i = fmul float %sub4.i.i287, %sub4.i.i287
  %add.i87.i = fadd float %mul.i83.i, %mul4.i86.i
  %mul7.i90.i = fmul float %sub7.i.i290, %sub7.i.i290
  %add8.i91.i = fadd float %add.i87.i, %mul7.i90.i
  %conv.i291 = fpext float %add8.i91.i to double
  %call4.i = tail call double @sqrt(double %conv.i291) #4
  %div.i292 = fdiv double 1.000000e+00, %call4.i
  %conv5.i = fptrunc double %div.i292 to float
  %mul.i293 = fmul float %conv5.i, %conv5.i
  %mul.i74.i = fmul float %sub.i.i284, %sub.i92.i
  %mul4.i77.i = fmul float %sub4.i.i287, %sub4.i95.i
  %add.i78.i = fadd float %mul.i74.i, %mul4.i77.i
  %mul7.i81.i = fmul float %sub7.i.i290, %sub7.i98.i
  %add8.i82.i = fadd float %add.i78.i, %mul7.i81.i
  %mul9.i = fmul float %add8.i82.i, %mul.i293
  %mul11.i294 = fmul float %sub.i.i284, %mul9.i
  %sub.i295 = fsub float %sub.i92.i, %mul11.i294
  %mul15.i = fmul float %sub4.i.i287, %mul9.i
  %sub16.i = fsub float %sub4.i95.i, %mul15.i
  %mul20.i296 = fmul float %sub7.i.i290, %mul9.i
  %sub21.i = fsub float %sub7.i98.i, %mul20.i296
  %mul23.i = fmul float %58, %conv5.i
  %conv24.i = fpext float %98 to double
  %mul.i.i297 = fmul float %sub.i295, %sub.i295
  %mul4.i.i298 = fmul float %sub16.i, %sub16.i
  %add.i.i299 = fadd float %mul.i.i297, %mul4.i.i298
  %mul7.i.i300 = fmul float %sub21.i, %sub21.i
  %add8.i.i301 = fadd float %mul7.i.i300, %add.i.i299
  %conv28.i = fpext float %add8.i.i301 to double
  %call29.i = tail call double @sqrt(double %conv28.i) #4
  %div30.i = fdiv double 1.000000e+00, %call29.i
  %mul31.i = fmul double %conv24.i, %div30.i
  %conv32.i = fptrunc double %mul31.i to float
  %108 = load float* %arraydecay80, align 4, !tbaa !4
  %mul35.i = fmul float %sub.i.i284, %mul23.i
  %add.i302 = fadd float %108, %mul35.i
  %mul37.i303 = fmul float %conv32.i, %sub.i295
  %add38.i = fadd float %add.i302, %mul37.i303
  store float %add38.i, float* %arraydecay, align 4, !tbaa !4
  %109 = load float* %arrayidx3.i.i286, align 4, !tbaa !4
  %mul42.i = fmul float %sub4.i.i287, %mul23.i
  %add43.i = fadd float %mul42.i, %109
  %mul45.i = fmul float %conv32.i, %sub16.i
  %add46.i = fadd float %add43.i, %mul45.i
  store float %add46.i, float* %arrayidx2.i, align 4, !tbaa !4
  %110 = load float* %arrayidx6.i.i289, align 4, !tbaa !4
  %mul50.i = fmul float %sub7.i.i290, %mul23.i
  %add51.i = fadd float %mul50.i, %110
  %mul53.i = fmul float %conv32.i, %sub21.i
  %add54.i = fadd float %add51.i, %mul53.i
  store float %add54.i, float* %arrayidx4.i, align 4, !tbaa !4
  br label %sw.epilog

sw.bb90:                                          ; preds = %for.body18
  %arrayidx91 = getelementptr inbounds i32* %ia.0388, i64 4
  %111 = load i32* %arrayidx91, align 4, !tbaa !0
  %112 = getelementptr inbounds %union.t_iparams* %49, i64 %idxprom23, i32 0, i32 1
  %113 = load float* %112, align 4, !tbaa !4
  %114 = getelementptr inbounds %union.t_iparams* %49, i64 %idxprom23, i32 0, i32 2
  %115 = load float* %114, align 4, !tbaa !4
  %idxprom99 = sext i32 %56 to i64
  %arraydecay101 = getelementptr inbounds [3 x float]* %x, i64 %idxprom99, i64 0
  %idxprom102 = sext i32 %57 to i64
  %arraydecay104 = getelementptr inbounds [3 x float]* %x, i64 %idxprom102, i64 0
  %idxprom105 = sext i32 %111 to i64
  %arraydecay107 = getelementptr inbounds [3 x float]* %x, i64 %idxprom105, i64 0
  %116 = load float* %arraydecay104, align 4, !tbaa !4
  %117 = load float* %arraydecay101, align 4, !tbaa !4
  %sub.i.i304 = fsub float %116, %117
  %arrayidx2.i.i305 = getelementptr inbounds [3 x float]* %x, i64 %idxprom102, i64 1
  %118 = load float* %arrayidx2.i.i305, align 4, !tbaa !4
  %arrayidx3.i.i306 = getelementptr inbounds [3 x float]* %x, i64 %idxprom99, i64 1
  %119 = load float* %arrayidx3.i.i306, align 4, !tbaa !4
  %sub4.i.i307 = fsub float %118, %119
  %arrayidx5.i.i308 = getelementptr inbounds [3 x float]* %x, i64 %idxprom102, i64 2
  %120 = load float* %arrayidx5.i.i308, align 4, !tbaa !4
  %arrayidx6.i.i309 = getelementptr inbounds [3 x float]* %x, i64 %idxprom99, i64 2
  %121 = load float* %arrayidx6.i.i309, align 4, !tbaa !4
  %sub7.i.i310 = fsub float %120, %121
  %122 = load float* %arraydecay107, align 4, !tbaa !4
  %sub.i50.i = fsub float %122, %117
  %arrayidx2.i51.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom105, i64 1
  %123 = load float* %arrayidx2.i51.i, align 4, !tbaa !4
  %sub4.i53.i = fsub float %123, %119
  %arrayidx5.i54.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom105, i64 2
  %124 = load float* %arrayidx5.i54.i, align 4, !tbaa !4
  %sub7.i56.i = fsub float %124, %121
  %mul.i.i311 = fmul float %sub4.i.i307, %sub7.i56.i
  %mul4.i.i312 = fmul float %sub7.i.i310, %sub4.i53.i
  %sub.i49.i313 = fsub float %mul.i.i311, %mul4.i.i312
  %mul8.i.i = fmul float %sub7.i.i310, %sub.i50.i
  %mul11.i.i = fmul float %sub.i.i304, %sub7.i56.i
  %sub12.i.i = fsub float %mul8.i.i, %mul11.i.i
  %mul16.i.i = fmul float %sub.i.i304, %sub4.i53.i
  %mul19.i.i = fmul float %sub4.i.i307, %sub.i50.i
  %sub20.i.i = fsub float %mul16.i.i, %mul19.i.i
  %mul.i314 = fmul float %58, %sub.i.i304
  %add.i315 = fadd float %117, %mul.i314
  %mul7.i316 = fmul float %113, %sub.i50.i
  %add8.i317 = fadd float %add.i315, %mul7.i316
  %mul10.i = fmul float %115, %sub.i49.i313
  %add11.i = fadd float %add8.i317, %mul10.i
  store float %add11.i, float* %arraydecay, align 4, !tbaa !4
  %125 = load float* %arrayidx3.i.i306, align 4, !tbaa !4
  %mul15.i318 = fmul float %58, %sub4.i.i307
  %add16.i = fadd float %mul15.i318, %125
  %mul18.i319 = fmul float %113, %sub4.i53.i
  %add19.i = fadd float %mul18.i319, %add16.i
  %mul21.i = fmul float %115, %sub12.i.i
  %add22.i = fadd float %add19.i, %mul21.i
  store float %add22.i, float* %arrayidx2.i, align 4, !tbaa !4
  %126 = load float* %arrayidx6.i.i309, align 4, !tbaa !4
  %mul26.i = fmul float %58, %sub7.i.i310
  %add27.i = fadd float %mul26.i, %126
  %mul29.i = fmul float %113, %sub7.i56.i
  %add30.i = fadd float %mul29.i, %add27.i
  %mul32.i320 = fmul float %115, %sub20.i.i
  %add33.i321 = fadd float %mul32.i320, %add30.i
  store float %add33.i321, float* %arrayidx4.i, align 4, !tbaa !4
  br label %sw.epilog

sw.bb111:                                         ; preds = %for.body18
  %arrayidx112 = getelementptr inbounds i32* %ia.0388, i64 4
  %127 = load i32* %arrayidx112, align 4, !tbaa !0
  %arrayidx113 = getelementptr inbounds i32* %ia.0388, i64 5
  %128 = load i32* %arrayidx113, align 4, !tbaa !0
  %129 = getelementptr inbounds %union.t_iparams* %49, i64 %idxprom23, i32 0, i32 1
  %130 = load float* %129, align 4, !tbaa !4
  %131 = getelementptr inbounds %union.t_iparams* %49, i64 %idxprom23, i32 0, i32 2
  %132 = load float* %131, align 4, !tbaa !4
  %idxprom122 = sext i32 %56 to i64
  %arraydecay124 = getelementptr inbounds [3 x float]* %x, i64 %idxprom122, i64 0
  %idxprom125 = sext i32 %57 to i64
  %arraydecay127 = getelementptr inbounds [3 x float]* %x, i64 %idxprom125, i64 0
  %idxprom128 = sext i32 %127 to i64
  %arraydecay130 = getelementptr inbounds [3 x float]* %x, i64 %idxprom128, i64 0
  %idxprom131 = sext i32 %128 to i64
  %arraydecay133 = getelementptr inbounds [3 x float]* %x, i64 %idxprom131, i64 0
  %133 = load float* %arraydecay127, align 4, !tbaa !4
  %134 = load float* %arraydecay124, align 4, !tbaa !4
  %sub.i.i323 = fsub float %133, %134
  %arrayidx2.i.i324 = getelementptr inbounds [3 x float]* %x, i64 %idxprom125, i64 1
  %135 = load float* %arrayidx2.i.i324, align 4, !tbaa !4
  %arrayidx3.i.i325 = getelementptr inbounds [3 x float]* %x, i64 %idxprom122, i64 1
  %136 = load float* %arrayidx3.i.i325, align 4, !tbaa !4
  %sub4.i.i326 = fsub float %135, %136
  %arrayidx5.i.i327 = getelementptr inbounds [3 x float]* %x, i64 %idxprom125, i64 2
  %137 = load float* %arrayidx5.i.i327, align 4, !tbaa !4
  %arrayidx6.i.i328 = getelementptr inbounds [3 x float]* %x, i64 %idxprom122, i64 2
  %138 = load float* %arrayidx6.i.i328, align 4, !tbaa !4
  %sub7.i.i329 = fsub float %137, %138
  %139 = load float* %arraydecay130, align 4, !tbaa !4
  %sub.i71.i = fsub float %139, %133
  %arrayidx2.i72.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom128, i64 1
  %140 = load float* %arrayidx2.i72.i, align 4, !tbaa !4
  %sub4.i74.i = fsub float %140, %135
  %arrayidx5.i75.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom128, i64 2
  %141 = load float* %arrayidx5.i75.i, align 4, !tbaa !4
  %sub7.i77.i = fsub float %141, %137
  %142 = load float* %arraydecay133, align 4, !tbaa !4
  %sub.i62.i = fsub float %142, %133
  %arrayidx2.i63.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom131, i64 1
  %143 = load float* %arrayidx2.i63.i, align 4, !tbaa !4
  %sub4.i65.i = fsub float %143, %135
  %arrayidx5.i66.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom131, i64 2
  %144 = load float* %arrayidx5.i66.i, align 4, !tbaa !4
  %sub7.i68.i = fsub float %144, %137
  %mul.i330 = fmul float %58, %sub.i71.i
  %add.i331 = fadd float %sub.i.i323, %mul.i330
  %mul5.i332 = fmul float %130, %sub.i62.i
  %add6.i = fadd float %add.i331, %mul5.i332
  %mul10.i333 = fmul float %58, %sub4.i74.i
  %add11.i334 = fadd float %sub4.i.i326, %mul10.i333
  %mul13.i335 = fmul float %130, %sub4.i65.i
  %add14.i336 = fadd float %add11.i334, %mul13.i335
  %mul18.i337 = fmul float %58, %sub7.i77.i
  %add19.i338 = fadd float %sub7.i.i329, %mul18.i337
  %mul21.i339 = fmul float %130, %sub7.i68.i
  %add22.i340 = fadd float %add19.i338, %mul21.i339
  %conv.i341 = fpext float %132 to double
  %mul.i.i342 = fmul float %add6.i, %add6.i
  %mul4.i.i343 = fmul float %add14.i336, %add14.i336
  %add.i.i344 = fadd float %mul.i.i342, %mul4.i.i343
  %mul7.i.i345 = fmul float %add22.i340, %add22.i340
  %add8.i.i346 = fadd float %add.i.i344, %mul7.i.i345
  %conv26.i = fpext float %add8.i.i346 to double
  %call27.i = tail call double @sqrt(double %conv26.i) #4
  %div.i347 = fdiv double 1.000000e+00, %call27.i
  %mul28.i = fmul double %conv.i341, %div.i347
  %conv29.i = fptrunc double %mul28.i to float
  %145 = load float* %arraydecay124, align 4, !tbaa !4
  %mul32.i348 = fmul float %add6.i, %conv29.i
  %add33.i349 = fadd float %145, %mul32.i348
  store float %add33.i349, float* %arraydecay, align 4, !tbaa !4
  %146 = load float* %arrayidx3.i.i325, align 4, !tbaa !4
  %mul37.i350 = fmul float %add14.i336, %conv29.i
  %add38.i351 = fadd float %146, %mul37.i350
  store float %add38.i351, float* %arrayidx2.i, align 4, !tbaa !4
  %147 = load float* %arrayidx6.i.i328, align 4, !tbaa !4
  %mul42.i352 = fmul float %add22.i340, %conv29.i
  %add43.i353 = fadd float %147, %mul42.i352
  store float %add43.i353, float* %arrayidx4.i, align 4, !tbaa !4
  br label %sw.epilog

sw.default:                                       ; preds = %for.body18
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([37 x i8]* @.str, i64 0, i64 0), i32 %62, i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 440) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb111, %sw.bb90, %sw.bb72, %sw.bb54, %sw.bb37, %sw.bb
  br i1 %tobool1, label %if.then138, label %if.end148

if.then138:                                       ; preds = %sw.epilog
  %148 = load float* %arraydecay, align 4, !tbaa !4
  %sub.i354 = fsub float %148, %59
  %149 = load float* %arrayidx2.i, align 4, !tbaa !4
  %sub4.i = fsub float %149, %60
  %150 = load float* %arrayidx4.i, align 4, !tbaa !4
  %sub7.i = fsub float %150, %61
  %arraydecay147 = getelementptr inbounds [3 x float]* %v, i64 %idxprom25, i64 0
  %mul.i359 = fmul float %inv_dt.0, %sub.i354
  store float %mul.i359, float* %arraydecay147, align 4, !tbaa !4
  %mul3.i361 = fmul float %inv_dt.0, %sub4.i
  %arrayidx4.i362 = getelementptr inbounds [3 x float]* %v, i64 %idxprom25, i64 1
  store float %mul3.i361, float* %arrayidx4.i362, align 4, !tbaa !4
  %mul6.i364 = fmul float %inv_dt.0, %sub7.i
  %arrayidx7.i365 = getelementptr inbounds [3 x float]* %v, i64 %idxprom25, i64 2
  store float %mul6.i364, float* %arrayidx7.i365, align 4, !tbaa !4
  br label %if.end148

if.end148:                                        ; preds = %if.then138, %sw.epilog
  %add149 = add nsw i32 %i.0387, %add
  %add.ptr = getelementptr inbounds i32* %ia.0388, i64 %idx.ext
  %cmp16 = icmp slt i32 %add149, %51
  br i1 %cmp16, label %for.body18, label %for.inc

for.inc:                                          ; preds = %if.then7, %if.end148, %for.body
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv392 = trunc i64 %indvars.iv.next to i32
  %exitcond393 = icmp eq i32 %lftr.wideiv392, 44
  br i1 %exitcond393, label %for.end152, label %for.body

for.end152:                                       ; preds = %for.inc
  br i1 %tobool, label %if.then154, label %if.end155

if.then154:                                       ; preds = %for.end152
  tail call void @unshift_self(%struct.t_graph* %graph, [3 x float]* %box, [3 x float]* %x) #4
  %nnextdum.i366 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 1
  %151 = load i32* %nnextdum.i366, align 4, !tbaa !0
  %mul.i367 = mul i32 %151, 12
  %nprevdum.i368 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 0
  %152 = load i32* %nprevdum.i368, align 4, !tbaa !0
  %mul3.i369 = mul i32 %152, 12
  %cmp97.i = icmp sgt i32 %151, 0
  br i1 %cmp97.i, label %for.body.lr.ph.i371, label %if.end42.i

for.body.lr.ph.i371:                              ; preds = %if.then154
  %idxnextdum.i370 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 3
  %153 = load i32** %idxnextdum.i370, align 8, !tbaa !3
  %154 = load [3 x float]** @nextbuf, align 8, !tbaa !3
  br label %for.body.i378

for.body.i378:                                    ; preds = %for.body.i378, %for.body.lr.ph.i371
  %indvars.iv9.i = phi i64 [ 0, %for.body.lr.ph.i371 ], [ %indvars.iv.next10.i, %for.body.i378 ]
  %arrayidx.i372 = getelementptr inbounds i32* %153, i64 %indvars.iv9.i
  %155 = load i32* %arrayidx.i372, align 4, !tbaa !0
  %idxprom11.i = sext i32 %155 to i64
  %arraydecay.i373 = getelementptr inbounds [3 x float]* %x, i64 %idxprom11.i, i64 0
  %arraydecay15.i = getelementptr inbounds [3 x float]* %154, i64 %indvars.iv9.i, i64 0
  %156 = load float* %arraydecay.i373, align 4, !tbaa !4
  store float %156, float* %arraydecay15.i, align 4, !tbaa !4
  %arrayidx2.i.i374 = getelementptr inbounds [3 x float]* %x, i64 %idxprom11.i, i64 1
  %157 = load float* %arrayidx2.i.i374, align 4, !tbaa !4
  %arrayidx3.i.i375 = getelementptr inbounds [3 x float]* %154, i64 %indvars.iv9.i, i64 1
  store float %157, float* %arrayidx3.i.i375, align 4, !tbaa !4
  %arrayidx4.i.i376 = getelementptr inbounds [3 x float]* %x, i64 %idxprom11.i, i64 2
  %158 = load float* %arrayidx4.i.i376, align 4, !tbaa !4
  %arrayidx5.i.i377 = getelementptr inbounds [3 x float]* %154, i64 %indvars.iv9.i, i64 2
  store float %158, float* %arrayidx5.i.i377, align 4, !tbaa !4
  %indvars.iv.next10.i = add i64 %indvars.iv9.i, 1
  %lftr.wideiv390 = trunc i64 %indvars.iv.next10.i to i32
  %exitcond391 = icmp eq i32 %lftr.wideiv390, %151
  br i1 %exitcond391, label %if.then41.i, label %for.body.i378

if.then41.i:                                      ; preds = %for.body.i378
  %right.i379 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %159 = load i32* %right.i379, align 4, !tbaa !0
  %160 = bitcast [3 x float]* %154 to i8*
  tail call void @gmx_tx(i32 %159, i8* %160, i32 %mul.i367) #4
  %.pre.i380 = load i32* %nprevdum.i368, align 4, !tbaa !0
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then41.i, %if.then154
  %161 = phi i32 [ %.pre.i380, %if.then41.i ], [ %152, %if.then154 ]
  %cmp44.i = icmp sgt i32 %161, 0
  br i1 %cmp44.i, label %if.then46.i, label %if.end47.i

if.then46.i:                                      ; preds = %if.end42.i
  %left.i381 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %162 = load i32* %left.i381, align 4, !tbaa !0
  %163 = load [3 x float]** @prevbuf, align 8, !tbaa !3
  %164 = bitcast [3 x float]* %163 to i8*
  tail call void @gmx_rx(i32 %162, i8* %164, i32 %mul3.i369) #4
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.end42.i, %if.then46.i
  %165 = load i32* %nnextdum.i366, align 4, !tbaa !0
  %cmp49.i = icmp sgt i32 %165, 0
  br i1 %cmp49.i, label %if.then51.i, label %if.end53.i

if.then51.i:                                      ; preds = %if.end47.i
  %right52.i = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %166 = load i32* %right52.i, align 4, !tbaa !0
  tail call void @gmx_tx_wait(i32 %166) #4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.end47.i, %if.then51.i
  %167 = load i32* %nprevdum.i368, align 4, !tbaa !0
  %cmp55.i = icmp sgt i32 %167, 0
  br i1 %cmp55.i, label %for.cond60.preheader.i, label %move_dummy_xv.exit

for.cond60.preheader.i:                           ; preds = %if.end53.i
  %left58.i = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %168 = load i32* %left58.i, align 4, !tbaa !0
  tail call void @gmx_rx_wait(i32 %168) #4
  %.pre11.i = load i32* %nprevdum.i368, align 4, !tbaa !0
  %cmp625.i = icmp sgt i32 %.pre11.i, 0
  br i1 %cmp625.i, label %for.body64.lr.ph.i, label %move_dummy_xv.exit

for.body64.lr.ph.i:                               ; preds = %for.cond60.preheader.i
  %169 = load [3 x float]** @prevbuf, align 8, !tbaa !3
  %idxprevdum.i382 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 2
  %170 = load i32** %idxprevdum.i382, align 8, !tbaa !3
  br label %for.body64.i

for.body64.i:                                     ; preds = %for.body64.i, %for.body64.lr.ph.i
  %indvars.iv.i383 = phi i64 [ 0, %for.body64.lr.ph.i ], [ %indvars.iv.next.i384, %for.body64.i ]
  %arraydecay67.i = getelementptr inbounds [3 x float]* %169, i64 %indvars.iv.i383, i64 0
  %arrayidx69.i = getelementptr inbounds i32* %170, i64 %indvars.iv.i383
  %171 = load i32* %arrayidx69.i, align 4, !tbaa !0
  %idxprom70.i = sext i32 %171 to i64
  %arraydecay72.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom70.i, i64 0
  %172 = load float* %arraydecay67.i, align 4, !tbaa !4
  store float %172, float* %arraydecay72.i, align 4, !tbaa !4
  %arrayidx2.i1.i = getelementptr inbounds [3 x float]* %169, i64 %indvars.iv.i383, i64 1
  %173 = load float* %arrayidx2.i1.i, align 4, !tbaa !4
  %arrayidx3.i2.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom70.i, i64 1
  store float %173, float* %arrayidx3.i2.i, align 4, !tbaa !4
  %arrayidx4.i3.i = getelementptr inbounds [3 x float]* %169, i64 %indvars.iv.i383, i64 2
  %174 = load float* %arrayidx4.i3.i, align 4, !tbaa !4
  %arrayidx5.i4.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom70.i, i64 2
  store float %174, float* %arrayidx5.i4.i, align 4, !tbaa !4
  %indvars.iv.next.i384 = add i64 %indvars.iv.i383, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i384 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %.pre11.i
  br i1 %exitcond, label %move_dummy_xv.exit, label %for.body64.i

move_dummy_xv.exit:                               ; preds = %for.body64.i, %if.end53.i, %for.cond60.preheader.i
  tail call void @shift_self(%struct.t_graph* %graph, [3 x float]* %box, [3 x float]* %x) #4
  br label %if.end155

if.end155:                                        ; preds = %move_dummy_xv.exit, %for.end152
  ret void
}

; Function Attrs: optsize
declare void @unshift_self(%struct.t_graph*, [3 x float]*, [3 x float]*) #1

; Function Attrs: optsize
declare void @shift_self(%struct.t_graph*, [3 x float]*, [3 x float]*) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @spread_dummy_f(%struct._IO_FILE* nocapture %log, [3 x float]* nocapture %x, [3 x float]* %f, %struct.t_nrnb* nocapture %nrnb, %struct.t_idef* nocapture %idef, %struct.t_comm_dummies* %dummycomm, %struct.t_commrec* nocapture %cr) #0 {
entry:
  %f1.i = alloca [3 x float], align 4
  %f2.i = alloca [3 x float], align 4
  %tobool = icmp ne %struct.t_comm_dummies* %dummycomm, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %nprevdum.i = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 0
  %0 = load i32* %nprevdum.i, align 4, !tbaa !0
  %cmp93.i = icmp sgt i32 %0, 0
  br i1 %cmp93.i, label %for.body.lr.ph.i, label %if.end.i

for.body.lr.ph.i:                                 ; preds = %if.then
  %idxprevdum.i = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 2
  %1 = load i32** %idxprevdum.i, align 8, !tbaa !3
  %2 = load [3 x float]** @prevbuf, align 8, !tbaa !3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv98.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next99.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds i32* %1, i64 %indvars.iv98.i
  %3 = load i32* %arrayidx.i, align 4, !tbaa !0
  %idxprom1.i = sext i32 %3 to i64
  %arraydecay.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom1.i, i64 0
  %arraydecay5.i = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv98.i, i64 0
  %4 = load float* %arraydecay.i, align 4, !tbaa !4
  store float %4, float* %arraydecay5.i, align 4, !tbaa !4
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom1.i, i64 1
  %5 = load float* %arrayidx2.i.i, align 4, !tbaa !4
  %arrayidx3.i.i = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv98.i, i64 1
  store float %5, float* %arrayidx3.i.i, align 4, !tbaa !4
  %arrayidx4.i.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom1.i, i64 2
  %6 = load float* %arrayidx4.i.i, align 4, !tbaa !4
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv98.i, i64 2
  store float %6, float* %arrayidx5.i.i, align 4, !tbaa !4
  %indvars.iv.next99.i = add i64 %indvars.iv98.i, 1
  %lftr.wideiv537 = trunc i64 %indvars.iv.next99.i to i32
  %exitcond538 = icmp eq i32 %lftr.wideiv537, %0
  br i1 %exitcond538, label %if.then.i, label %for.body.i

if.then.i:                                        ; preds = %for.body.i
  %left.i = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %7 = load i32* %left.i, align 4, !tbaa !0
  %8 = bitcast [3 x float]* %2 to i8*
  %mul.i = mul i32 %0, 12
  call void @gmx_tx(i32 %7, i8* %8, i32 %mul.i) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then
  %nnextdum.i = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 1
  %9 = load i32* %nnextdum.i, align 4, !tbaa !0
  %cmp10.i = icmp sgt i32 %9, 0
  br i1 %cmp10.i, label %if.then12.i, label %if.end17.i

if.then12.i:                                      ; preds = %if.end.i
  %right.i = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %10 = load i32* %right.i, align 4, !tbaa !0
  %11 = load [3 x float]** @nextbuf, align 8, !tbaa !3
  %12 = bitcast [3 x float]* %11 to i8*
  %mul15.i = mul i32 %9, 12
  call void @gmx_rx(i32 %10, i8* %12, i32 %mul15.i) #4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end.i, %if.then12.i
  %13 = load i32* %nprevdum.i, align 4, !tbaa !0
  %cmp19.i = icmp sgt i32 %13, 0
  br i1 %cmp19.i, label %if.then21.i, label %if.end23.i

if.then21.i:                                      ; preds = %if.end17.i
  %left22.i = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %14 = load i32* %left22.i, align 4, !tbaa !0
  call void @gmx_tx_wait(i32 %14) #4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end17.i, %if.then21.i
  %15 = load i32* %nnextdum.i, align 4, !tbaa !0
  %cmp25.i = icmp sgt i32 %15, 0
  br i1 %cmp25.i, label %for.cond30.preheader.i, label %for.cond46.preheader.i

for.cond30.preheader.i:                           ; preds = %if.end23.i
  %right28.i = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %16 = load i32* %right28.i, align 4, !tbaa !0
  call void @gmx_rx_wait(i32 %16) #4
  %.pre.i = load i32* %nnextdum.i, align 4, !tbaa !0
  %cmp3291.i = icmp sgt i32 %.pre.i, 0
  br i1 %cmp3291.i, label %for.body34.lr.ph.i, label %for.cond46.preheader.i

for.body34.lr.ph.i:                               ; preds = %for.cond30.preheader.i
  %17 = load [3 x float]** @nextbuf, align 8, !tbaa !3
  %idxnextdum.i = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 3
  %18 = load i32** %idxnextdum.i, align 8, !tbaa !3
  br label %for.body34.i

for.cond46.preheader.i:                           ; preds = %for.body34.i, %for.cond30.preheader.i, %if.end23.i
  %nnextconstr.i = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 5
  %19 = load i32* %nnextconstr.i, align 4, !tbaa !0
  %cmp4789.i = icmp sgt i32 %19, 0
  br i1 %cmp4789.i, label %for.body49.lr.ph.i, label %if.end

for.body49.lr.ph.i:                               ; preds = %for.cond46.preheader.i
  %idxnextconstr.i = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 7
  %20 = load i32** %idxnextconstr.i, align 8, !tbaa !3
  br label %for.body49.i

for.body34.i:                                     ; preds = %for.body34.i, %for.body34.lr.ph.i
  %indvars.iv96.i = phi i64 [ 0, %for.body34.lr.ph.i ], [ %indvars.iv.next97.i, %for.body34.i ]
  %arraydecay37.i = getelementptr inbounds [3 x float]* %17, i64 %indvars.iv96.i, i64 0
  %arrayidx39.i = getelementptr inbounds i32* %18, i64 %indvars.iv96.i
  %21 = load i32* %arrayidx39.i, align 4, !tbaa !0
  %idxprom40.i = sext i32 %21 to i64
  %arraydecay42.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom40.i, i64 0
  %22 = load float* %arraydecay37.i, align 4, !tbaa !4
  store float %22, float* %arraydecay42.i, align 4, !tbaa !4
  %arrayidx2.i85.i = getelementptr inbounds [3 x float]* %17, i64 %indvars.iv96.i, i64 1
  %23 = load float* %arrayidx2.i85.i, align 4, !tbaa !4
  %arrayidx3.i86.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom40.i, i64 1
  store float %23, float* %arrayidx3.i86.i, align 4, !tbaa !4
  %arrayidx4.i87.i = getelementptr inbounds [3 x float]* %17, i64 %indvars.iv96.i, i64 2
  %24 = load float* %arrayidx4.i87.i, align 4, !tbaa !4
  %arrayidx5.i88.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom40.i, i64 2
  store float %24, float* %arrayidx5.i88.i, align 4, !tbaa !4
  %indvars.iv.next97.i = add i64 %indvars.iv96.i, 1
  %lftr.wideiv535 = trunc i64 %indvars.iv.next97.i to i32
  %exitcond536 = icmp eq i32 %lftr.wideiv535, %.pre.i
  br i1 %exitcond536, label %for.cond46.preheader.i, label %for.body34.i

for.body49.i:                                     ; preds = %for.body49.i, %for.body49.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body49.lr.ph.i ], [ %indvars.iv.next.i, %for.body49.i ]
  %arrayidx51.i = getelementptr inbounds i32* %20, i64 %indvars.iv.i
  %25 = load i32* %arrayidx51.i, align 4, !tbaa !0
  %idxprom52.i = sext i32 %25 to i64
  %arraydecay54.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom52.i, i64 0
  store float 0.000000e+00, float* %arraydecay54.i, align 4, !tbaa !4
  %arrayidx1.i.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom52.i, i64 1
  store float 0.000000e+00, float* %arrayidx1.i.i, align 4, !tbaa !4
  %arrayidx2.i84.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom52.i, i64 2
  store float 0.000000e+00, float* %arrayidx2.i84.i, align 4, !tbaa !4
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv533 = trunc i64 %indvars.iv.next.i to i32
  %exitcond534 = icmp eq i32 %lftr.wideiv533, %19
  br i1 %exitcond534, label %if.end, label %for.body49.i

if.end:                                           ; preds = %for.body49.i, %for.cond46.preheader.i, %entry
  %iparams = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4
  %26 = load %union.t_iparams** %iparams, align 8, !tbaa !3
  %27 = bitcast [3 x float]* %f1.i to i8*
  %28 = bitcast [3 x float]* %f2.i to i8*
  %arraydecay47.i = getelementptr inbounds [3 x float]* %f1.i, i64 0, i64 0
  %arrayidx9.i166.i = getelementptr inbounds [3 x float]* %f1.i, i64 0, i64 1
  %arrayidx10.i167.i = getelementptr inbounds [3 x float]* %f1.i, i64 0, i64 2
  %arraydecay50.i = getelementptr inbounds [3 x float]* %f2.i, i64 0, i64 0
  %arrayidx9.i157.i = getelementptr inbounds [3 x float]* %f2.i, i64 0, i64 1
  %arrayidx10.i158.i = getelementptr inbounds [3 x float]* %f2.i, i64 0, i64 2
  br label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %indvars.iv = phi i64 [ 43, %if.end ], [ %indvars.iv.next, %for.inc ]
  %nd2.0523 = phi i32 [ 0, %if.end ], [ %nd2.3, %for.inc ]
  %nd4FD.0522 = phi i32 [ 0, %if.end ], [ %nd4FD.3, %for.inc ]
  %nd3OUT.0521 = phi i32 [ 0, %if.end ], [ %nd3OUT.3, %for.inc ]
  %nd3FAD.0520 = phi i32 [ 0, %if.end ], [ %nd3FAD.3, %for.inc ]
  %nd3FD.0519 = phi i32 [ 0, %if.end ], [ %nd3FD.3, %for.inc ]
  %nd3.0518 = phi i32 [ 0, %if.end ], [ %nd3.3, %for.inc ]
  %flags = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv, i32 5
  %29 = load i64* %flags, align 8, !tbaa !5
  %and = and i64 %29, 2
  %tobool1 = icmp eq i64 %and, 0
  br i1 %tobool1, label %for.inc, label %if.then2

if.then2:                                         ; preds = %for.body
  %nr = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv, i32 0
  %30 = load i32* %nr, align 4, !tbaa !0
  %cmp11504 = icmp sgt i32 %30, 0
  br i1 %cmp11504, label %for.body12.lr.ph, label %for.inc

for.body12.lr.ph:                                 ; preds = %if.then2
  %iatoms = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv, i32 2
  %nratoms = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv, i32 2
  %31 = load i32** %iatoms, align 8, !tbaa !3
  %32 = load i32* %nratoms, align 8, !tbaa !0
  %add = add nsw i32 %32, 1
  %idx.ext = sext i32 %add to i64
  br label %for.body12

for.body12:                                       ; preds = %for.body12.lr.ph, %sw.epilog
  %ia.0512 = phi i32* [ %31, %for.body12.lr.ph ], [ %add.ptr, %sw.epilog ]
  %i.0511 = phi i32 [ 0, %for.body12.lr.ph ], [ %add174, %sw.epilog ]
  %nd2.1510 = phi i32 [ %nd2.0523, %for.body12.lr.ph ], [ %nd2.2, %sw.epilog ]
  %nd4FD.1509 = phi i32 [ %nd4FD.0522, %for.body12.lr.ph ], [ %nd4FD.2, %sw.epilog ]
  %nd3OUT.1508 = phi i32 [ %nd3OUT.0521, %for.body12.lr.ph ], [ %nd3OUT.2, %sw.epilog ]
  %nd3FAD.1507 = phi i32 [ %nd3FAD.0520, %for.body12.lr.ph ], [ %nd3FAD.2, %sw.epilog ]
  %nd3FD.1506 = phi i32 [ %nd3FD.0519, %for.body12.lr.ph ], [ %nd3FD.2, %sw.epilog ]
  %nd3.1505 = phi i32 [ %nd3.0518, %for.body12.lr.ph ], [ %nd3.2, %sw.epilog ]
  %33 = load i32* %ia.0512, align 4, !tbaa !0
  %arrayidx14 = getelementptr inbounds i32* %ia.0512, i64 1
  %34 = load i32* %arrayidx14, align 4, !tbaa !0
  %arrayidx15 = getelementptr inbounds i32* %ia.0512, i64 2
  %35 = load i32* %arrayidx15, align 4, !tbaa !0
  %arrayidx16 = getelementptr inbounds i32* %ia.0512, i64 3
  %36 = load i32* %arrayidx16, align 4, !tbaa !0
  %idxprom17 = sext i32 %33 to i64
  %a = getelementptr inbounds %union.t_iparams* %26, i64 %idxprom17, i32 0, i32 0
  %37 = load float* %a, align 4, !tbaa !4
  %38 = trunc i64 %indvars.iv to i32
  switch i32 %38, label %sw.default [
    i32 30, label %sw.bb
    i32 31, label %sw.bb27
    i32 32, label %sw.bb45
    i32 33, label %sw.bb73
    i32 34, label %sw.bb101
    i32 35, label %sw.bb132
  ]

sw.bb:                                            ; preds = %for.body12
  %idxprom19 = sext i32 %35 to i64
  %arraydecay = getelementptr inbounds [3 x float]* %f, i64 %idxprom19, i64 0
  %idxprom21 = sext i32 %36 to i64
  %arraydecay23 = getelementptr inbounds [3 x float]* %f, i64 %idxprom21, i64 0
  %idxprom24 = sext i32 %34 to i64
  %arraydecay26 = getelementptr inbounds [3 x float]* %f, i64 %idxprom24, i64 0
  %conv1.i = fsub float 1.000000e+00, %37
  %39 = load float* %arraydecay26, align 4, !tbaa !4
  %arrayidx2.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom24, i64 1
  %40 = load float* %arrayidx2.i, align 4, !tbaa !4
  %arrayidx3.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom24, i64 2
  %41 = load float* %arrayidx3.i, align 4, !tbaa !4
  %mul.i334 = fmul float %conv1.i, %39
  %42 = load float* %arraydecay, align 4, !tbaa !4
  %add.i = fadd float %mul.i334, %42
  store float %add.i, float* %arraydecay, align 4, !tbaa !4
  %mul5.i = fmul float %conv1.i, %40
  %arrayidx6.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom19, i64 1
  %43 = load float* %arrayidx6.i, align 4, !tbaa !4
  %add7.i = fadd float %mul5.i, %43
  store float %add7.i, float* %arrayidx6.i, align 4, !tbaa !4
  %mul8.i = fmul float %conv1.i, %41
  %arrayidx9.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom19, i64 2
  %44 = load float* %arrayidx9.i, align 4, !tbaa !4
  %add10.i = fadd float %mul8.i, %44
  store float %add10.i, float* %arrayidx9.i, align 4, !tbaa !4
  %mul11.i = fmul float %37, %39
  %45 = load float* %arraydecay23, align 4, !tbaa !4
  %add13.i = fadd float %mul11.i, %45
  store float %add13.i, float* %arraydecay23, align 4, !tbaa !4
  %mul14.i = fmul float %37, %40
  %arrayidx15.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom21, i64 1
  %46 = load float* %arrayidx15.i, align 4, !tbaa !4
  %add16.i = fadd float %mul14.i, %46
  store float %add16.i, float* %arrayidx15.i, align 4, !tbaa !4
  %mul17.i = fmul float %37, %41
  %arrayidx18.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom21, i64 2
  %47 = load float* %arrayidx18.i, align 4, !tbaa !4
  %add19.i = fadd float %mul17.i, %47
  store float %add19.i, float* %arrayidx18.i, align 4, !tbaa !4
  %inc = add nsw i32 %nd2.1510, 1
  br label %sw.epilog

sw.bb27:                                          ; preds = %for.body12
  %arrayidx28 = getelementptr inbounds i32* %ia.0512, i64 4
  %48 = load i32* %arrayidx28, align 4, !tbaa !0
  %49 = getelementptr inbounds %union.t_iparams* %26, i64 %idxprom17, i32 0, i32 1
  %50 = load float* %49, align 4, !tbaa !4
  %idxprom32 = sext i32 %35 to i64
  %arraydecay34 = getelementptr inbounds [3 x float]* %f, i64 %idxprom32, i64 0
  %idxprom35 = sext i32 %36 to i64
  %arraydecay37 = getelementptr inbounds [3 x float]* %f, i64 %idxprom35, i64 0
  %idxprom38 = sext i32 %48 to i64
  %arraydecay40 = getelementptr inbounds [3 x float]* %f, i64 %idxprom38, i64 0
  %idxprom41 = sext i32 %34 to i64
  %arraydecay43 = getelementptr inbounds [3 x float]* %f, i64 %idxprom41, i64 0
  %conv.i = fpext float %37 to double
  %sub.i = fsub double 1.000000e+00, %conv.i
  %conv1.i335 = fpext float %50 to double
  %sub2.i = fsub double %sub.i, %conv1.i335
  %conv3.i = fptrunc double %sub2.i to float
  %51 = load float* %arraydecay43, align 4, !tbaa !4
  %arrayidx4.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom41, i64 1
  %52 = load float* %arrayidx4.i, align 4, !tbaa !4
  %arrayidx5.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom41, i64 2
  %53 = load float* %arrayidx5.i, align 4, !tbaa !4
  %mul.i336 = fmul float %51, %conv3.i
  %54 = load float* %arraydecay34, align 4, !tbaa !4
  %add.i337 = fadd float %mul.i336, %54
  store float %add.i337, float* %arraydecay34, align 4, !tbaa !4
  %mul7.i = fmul float %52, %conv3.i
  %arrayidx8.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom32, i64 1
  %55 = load float* %arrayidx8.i, align 4, !tbaa !4
  %add9.i = fadd float %mul7.i, %55
  store float %add9.i, float* %arrayidx8.i, align 4, !tbaa !4
  %mul10.i = fmul float %conv3.i, %53
  %arrayidx11.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom32, i64 2
  %56 = load float* %arrayidx11.i, align 4, !tbaa !4
  %add12.i = fadd float %mul10.i, %56
  store float %add12.i, float* %arrayidx11.i, align 4, !tbaa !4
  %mul13.i = fmul float %37, %51
  %57 = load float* %arraydecay37, align 4, !tbaa !4
  %add15.i = fadd float %mul13.i, %57
  store float %add15.i, float* %arraydecay37, align 4, !tbaa !4
  %mul16.i = fmul float %37, %52
  %arrayidx17.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom35, i64 1
  %58 = load float* %arrayidx17.i, align 4, !tbaa !4
  %add18.i = fadd float %mul16.i, %58
  store float %add18.i, float* %arrayidx17.i, align 4, !tbaa !4
  %mul19.i = fmul float %37, %53
  %arrayidx20.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom35, i64 2
  %59 = load float* %arrayidx20.i, align 4, !tbaa !4
  %add21.i = fadd float %mul19.i, %59
  store float %add21.i, float* %arrayidx20.i, align 4, !tbaa !4
  %mul22.i = fmul float %50, %51
  %60 = load float* %arraydecay40, align 4, !tbaa !4
  %add24.i = fadd float %mul22.i, %60
  store float %add24.i, float* %arraydecay40, align 4, !tbaa !4
  %mul25.i = fmul float %50, %52
  %arrayidx26.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom38, i64 1
  %61 = load float* %arrayidx26.i, align 4, !tbaa !4
  %add27.i = fadd float %mul25.i, %61
  store float %add27.i, float* %arrayidx26.i, align 4, !tbaa !4
  %mul28.i = fmul float %50, %53
  %arrayidx29.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom38, i64 2
  %62 = load float* %arrayidx29.i, align 4, !tbaa !4
  %add30.i = fadd float %mul28.i, %62
  store float %add30.i, float* %arrayidx29.i, align 4, !tbaa !4
  %inc44 = add nsw i32 %nd3.1505, 1
  br label %sw.epilog

sw.bb45:                                          ; preds = %for.body12
  %arrayidx46 = getelementptr inbounds i32* %ia.0512, i64 4
  %63 = load i32* %arrayidx46, align 4, !tbaa !0
  %64 = getelementptr inbounds %union.t_iparams* %26, i64 %idxprom17, i32 0, i32 1
  %65 = load float* %64, align 4, !tbaa !4
  %idxprom51 = sext i32 %35 to i64
  %arraydecay53 = getelementptr inbounds [3 x float]* %x, i64 %idxprom51, i64 0
  %idxprom54 = sext i32 %36 to i64
  %arraydecay56 = getelementptr inbounds [3 x float]* %x, i64 %idxprom54, i64 0
  %idxprom57 = sext i32 %63 to i64
  %arraydecay59 = getelementptr inbounds [3 x float]* %x, i64 %idxprom57, i64 0
  %arraydecay62 = getelementptr inbounds [3 x float]* %f, i64 %idxprom51, i64 0
  %arraydecay65 = getelementptr inbounds [3 x float]* %f, i64 %idxprom54, i64 0
  %arraydecay68 = getelementptr inbounds [3 x float]* %f, i64 %idxprom57, i64 0
  %idxprom69 = sext i32 %34 to i64
  %arraydecay71 = getelementptr inbounds [3 x float]* %f, i64 %idxprom69, i64 0
  %66 = load float* %arraydecay56, align 4, !tbaa !4
  %67 = load float* %arraydecay53, align 4, !tbaa !4
  %sub.i.i = fsub float %66, %67
  %arrayidx2.i.i338 = getelementptr inbounds [3 x float]* %x, i64 %idxprom54, i64 1
  %68 = load float* %arrayidx2.i.i338, align 4, !tbaa !4
  %arrayidx3.i.i339 = getelementptr inbounds [3 x float]* %x, i64 %idxprom51, i64 1
  %69 = load float* %arrayidx3.i.i339, align 4, !tbaa !4
  %sub4.i.i = fsub float %68, %69
  %arrayidx5.i.i340 = getelementptr inbounds [3 x float]* %x, i64 %idxprom54, i64 2
  %70 = load float* %arrayidx5.i.i340, align 4, !tbaa !4
  %arrayidx6.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom51, i64 2
  %71 = load float* %arrayidx6.i.i, align 4, !tbaa !4
  %sub7.i.i = fsub float %70, %71
  %72 = load float* %arraydecay59, align 4, !tbaa !4
  %sub.i123.i = fsub float %72, %66
  %arrayidx2.i124.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom57, i64 1
  %73 = load float* %arrayidx2.i124.i, align 4, !tbaa !4
  %sub4.i126.i = fsub float %73, %68
  %arrayidx5.i127.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom57, i64 2
  %74 = load float* %arrayidx5.i127.i, align 4, !tbaa !4
  %sub7.i129.i = fsub float %74, %70
  %mul.i341 = fmul float %37, %sub.i123.i
  %add.i342 = fadd float %sub.i.i, %mul.i341
  %mul6.i = fmul float %37, %sub4.i126.i
  %add7.i343 = fadd float %sub4.i.i, %mul6.i
  %mul11.i344 = fmul float %37, %sub7.i129.i
  %add12.i345 = fadd float %sub7.i.i, %mul11.i344
  %mul.i114.i = fmul float %add.i342, %add.i342
  %mul4.i117.i = fmul float %add7.i343, %add7.i343
  %add.i118.i = fadd float %mul.i114.i, %mul4.i117.i
  %mul7.i121.i = fmul float %add12.i345, %add12.i345
  %add8.i122.i = fadd float %add.i118.i, %mul7.i121.i
  %conv.i346 = fpext float %add8.i122.i to double
  %call16.i = call double @sqrt(double %conv.i346) #4
  %div.i = fdiv double 1.000000e+00, %call16.i
  %conv17.i = fptrunc double %div.i to float
  %mul18.i = fmul float %65, %conv17.i
  %75 = load float* %arraydecay71, align 4, !tbaa !4
  %mul.i.i = fmul float %add.i342, %75
  %arrayidx3.i111.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom69, i64 1
  %76 = load float* %arrayidx3.i111.i, align 4, !tbaa !4
  %mul4.i.i = fmul float %add7.i343, %76
  %add.i.i = fadd float %mul.i.i, %mul4.i.i
  %arrayidx6.i113.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom69, i64 2
  %77 = load float* %arrayidx6.i113.i, align 4, !tbaa !4
  %mul7.i.i = fmul float %add12.i345, %77
  %add8.i.i = fadd float %add.i.i, %mul7.i.i
  %mul21.i = fmul float %conv17.i, %add8.i.i
  %mul22.i347 = fmul float %conv17.i, %mul21.i
  %mul27.i = fmul float %add.i342, %mul22.i347
  %sub.i348 = fsub float %75, %mul27.i
  %mul28.i349 = fmul float %mul18.i, %sub.i348
  %mul31.i = fmul float %add7.i343, %mul22.i347
  %sub32.i = fsub float %76, %mul31.i
  %mul33.i = fmul float %mul18.i, %sub32.i
  %mul36.i = fmul float %add12.i345, %mul22.i347
  %sub37.i = fsub float %77, %mul36.i
  %mul38.i = fmul float %mul18.i, %sub37.i
  %sub40.i = fsub float 1.000000e+00, %37
  %sub42.i = fsub float %75, %mul28.i349
  %78 = load float* %arraydecay62, align 4, !tbaa !4
  %add44.i = fadd float %78, %sub42.i
  store float %add44.i, float* %arraydecay62, align 4, !tbaa !4
  %sub46.i = fsub float %76, %mul33.i
  %arrayidx47.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom51, i64 1
  %79 = load float* %arrayidx47.i, align 4, !tbaa !4
  %add48.i = fadd float %79, %sub46.i
  store float %add48.i, float* %arrayidx47.i, align 4, !tbaa !4
  %sub50.i = fsub float %77, %mul38.i
  %arrayidx51.i350 = getelementptr inbounds [3 x float]* %f, i64 %idxprom51, i64 2
  %80 = load float* %arrayidx51.i350, align 4, !tbaa !4
  %add52.i = fadd float %80, %sub50.i
  store float %add52.i, float* %arrayidx51.i350, align 4, !tbaa !4
  %mul54.i = fmul float %sub40.i, %mul28.i349
  %81 = load float* %arraydecay65, align 4, !tbaa !4
  %add56.i = fadd float %81, %mul54.i
  store float %add56.i, float* %arraydecay65, align 4, !tbaa !4
  %mul58.i = fmul float %sub40.i, %mul33.i
  %arrayidx59.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom54, i64 1
  %82 = load float* %arrayidx59.i, align 4, !tbaa !4
  %add60.i = fadd float %82, %mul58.i
  store float %add60.i, float* %arrayidx59.i, align 4, !tbaa !4
  %mul62.i = fmul float %sub40.i, %mul38.i
  %arrayidx63.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom54, i64 2
  %83 = load float* %arrayidx63.i, align 4, !tbaa !4
  %add64.i = fadd float %83, %mul62.i
  store float %add64.i, float* %arrayidx63.i, align 4, !tbaa !4
  %mul66.i = fmul float %37, %mul28.i349
  %84 = load float* %arraydecay68, align 4, !tbaa !4
  %add68.i = fadd float %84, %mul66.i
  store float %add68.i, float* %arraydecay68, align 4, !tbaa !4
  %mul70.i = fmul float %37, %mul33.i
  %arrayidx71.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom57, i64 1
  %85 = load float* %arrayidx71.i, align 4, !tbaa !4
  %add72.i = fadd float %85, %mul70.i
  store float %add72.i, float* %arrayidx71.i, align 4, !tbaa !4
  %mul74.i = fmul float %37, %mul38.i
  %arrayidx75.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom57, i64 2
  %86 = load float* %arrayidx75.i, align 4, !tbaa !4
  %add76.i = fadd float %mul74.i, %86
  store float %add76.i, float* %arrayidx75.i, align 4, !tbaa !4
  %inc72 = add nsw i32 %nd3FD.1506, 1
  br label %sw.epilog

sw.bb73:                                          ; preds = %for.body12
  %arrayidx74 = getelementptr inbounds i32* %ia.0512, i64 4
  %87 = load i32* %arrayidx74, align 4, !tbaa !0
  %88 = getelementptr inbounds %union.t_iparams* %26, i64 %idxprom17, i32 0, i32 1
  %89 = load float* %88, align 4, !tbaa !4
  %idxprom79 = sext i32 %35 to i64
  %arraydecay81 = getelementptr inbounds [3 x float]* %x, i64 %idxprom79, i64 0
  %idxprom82 = sext i32 %36 to i64
  %arraydecay84 = getelementptr inbounds [3 x float]* %x, i64 %idxprom82, i64 0
  %idxprom85 = sext i32 %87 to i64
  %arraydecay87 = getelementptr inbounds [3 x float]* %x, i64 %idxprom85, i64 0
  %arraydecay93 = getelementptr inbounds [3 x float]* %f, i64 %idxprom82, i64 0
  %idxprom97 = sext i32 %34 to i64
  %arraydecay99 = getelementptr inbounds [3 x float]* %f, i64 %idxprom97, i64 0
  call void @llvm.lifetime.start(i64 12, i8* %27) #3
  call void @llvm.lifetime.start(i64 12, i8* %28) #3
  %90 = load float* %arraydecay84, align 4, !tbaa !4
  %91 = load float* %arraydecay81, align 4, !tbaa !4
  %sub.i.i351 = fsub float %90, %91
  %arrayidx2.i.i352 = getelementptr inbounds [3 x float]* %x, i64 %idxprom82, i64 1
  %92 = load float* %arrayidx2.i.i352, align 4, !tbaa !4
  %arrayidx3.i.i353 = getelementptr inbounds [3 x float]* %x, i64 %idxprom79, i64 1
  %93 = load float* %arrayidx3.i.i353, align 4, !tbaa !4
  %sub4.i.i354 = fsub float %92, %93
  %arrayidx5.i.i355 = getelementptr inbounds [3 x float]* %x, i64 %idxprom82, i64 2
  %94 = load float* %arrayidx5.i.i355, align 4, !tbaa !4
  %arrayidx6.i.i356 = getelementptr inbounds [3 x float]* %x, i64 %idxprom79, i64 2
  %95 = load float* %arrayidx6.i.i356, align 4, !tbaa !4
  %sub7.i.i357 = fsub float %94, %95
  %96 = load float* %arraydecay87, align 4, !tbaa !4
  %sub.i225.i = fsub float %96, %90
  %arrayidx2.i226.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom85, i64 1
  %97 = load float* %arrayidx2.i226.i, align 4, !tbaa !4
  %sub4.i228.i = fsub float %97, %92
  %arrayidx5.i229.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom85, i64 2
  %98 = load float* %arrayidx5.i229.i, align 4, !tbaa !4
  %sub7.i231.i = fsub float %98, %94
  %mul.i216.i = fmul float %sub.i.i351, %sub.i.i351
  %mul4.i219.i = fmul float %sub4.i.i354, %sub4.i.i354
  %add.i220.i = fadd float %mul.i216.i, %mul4.i219.i
  %mul7.i223.i = fmul float %sub7.i.i357, %sub7.i.i357
  %add8.i224.i = fadd float %add.i220.i, %mul7.i223.i
  %conv.i358 = fpext float %add8.i224.i to double
  %call4.i = call double @sqrt(double %conv.i358) #4
  %div.i359 = fdiv double 1.000000e+00, %call4.i
  %conv5.i = fptrunc double %div.i359 to float
  %mul.i360 = fmul float %conv5.i, %conv5.i
  %mul.i207.i = fmul float %sub.i.i351, %sub.i225.i
  %mul4.i210.i = fmul float %sub4.i.i354, %sub4.i228.i
  %add.i211.i = fadd float %mul.i207.i, %mul4.i210.i
  %mul7.i214.i = fmul float %sub7.i.i357, %sub7.i231.i
  %add8.i215.i = fadd float %add.i211.i, %mul7.i214.i
  %mul9.i = fmul float %add8.i215.i, %mul.i360
  %mul11.i361 = fmul float %sub.i.i351, %mul9.i
  %sub.i362 = fsub float %sub.i225.i, %mul11.i361
  %mul15.i363 = fmul float %sub4.i.i354, %mul9.i
  %sub16.i = fsub float %sub4.i228.i, %mul15.i363
  %mul20.i = fmul float %sub7.i.i357, %mul9.i
  %sub21.i = fsub float %sub7.i231.i, %mul20.i
  %mul.i198.i = fmul float %sub.i362, %sub.i362
  %mul4.i201.i = fmul float %sub16.i, %sub16.i
  %add.i202.i = fadd float %mul.i198.i, %mul4.i201.i
  %mul7.i205.i = fmul float %sub21.i, %sub21.i
  %add8.i206.i = fadd float %mul7.i205.i, %add.i202.i
  %conv26.i = fpext float %add8.i206.i to double
  %call27.i = call double @sqrt(double %conv26.i) #4
  %div28.i = fdiv double 1.000000e+00, %call27.i
  %conv29.i = fptrunc double %div28.i to float
  %mul30.i = fmul float %37, %conv5.i
  %mul31.i364 = fmul float %89, %conv29.i
  %99 = load float* %arraydecay99, align 4, !tbaa !4
  %mul.i189.i = fmul float %sub.i.i351, %99
  %arrayidx3.i191.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom97, i64 1
  %100 = load float* %arrayidx3.i191.i, align 4, !tbaa !4
  %mul4.i192.i = fmul float %sub4.i.i354, %100
  %add.i193.i = fadd float %mul.i189.i, %mul4.i192.i
  %arrayidx6.i195.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom97, i64 2
  %101 = load float* %arrayidx6.i195.i, align 4, !tbaa !4
  %mul7.i196.i = fmul float %sub7.i.i357, %101
  %add8.i197.i = fadd float %add.i193.i, %mul7.i196.i
  %mul34.i = fmul float %mul.i360, %add8.i197.i
  %mul.i182.i = fmul float %sub.i.i351, %mul34.i
  %mul3.i184.i = fmul float %sub4.i.i354, %mul34.i
  %mul6.i187.i = fmul float %sub7.i.i357, %mul34.i
  %mul.i177.i = fmul float %99, %sub.i362
  %mul4.i.i365 = fmul float %100, %sub16.i
  %add.i.i366 = fadd float %mul.i177.i, %mul4.i.i365
  %mul7.i.i367 = fmul float %sub21.i, %101
  %add8.i.i368 = fadd float %mul7.i.i367, %add.i.i366
  %mul39.i = fmul float %conv29.i, %add8.i.i368
  %mul40.i = fmul float %conv29.i, %mul39.i
  %mul.i170.i = fmul float %sub.i362, %mul40.i
  %mul3.i172.i = fmul float %sub16.i, %mul40.i
  %mul6.i175.i = fmul float %sub21.i, %mul40.i
  %mul43.i = fmul float %mul31.i364, %mul34.i
  %sub.i159.i = fsub float %99, %mul.i182.i
  %sub4.i162.i = fsub float %100, %mul3.i184.i
  %sub7.i165.i = fsub float %101, %mul6.i187.i
  store float %sub4.i162.i, float* %arrayidx9.i166.i, align 4, !tbaa !4
  store float %sub7.i165.i, float* %arrayidx10.i167.i, align 4, !tbaa !4
  %sub.i150.i = fsub float %sub.i159.i, %mul.i170.i
  %sub4.i153.i = fsub float %sub4.i162.i, %mul3.i172.i
  %sub7.i156.i = fsub float %sub7.i165.i, %mul6.i175.i
  store float %sub4.i153.i, float* %arrayidx9.i157.i, align 4, !tbaa !4
  store float %sub7.i156.i, float* %arrayidx10.i158.i, align 4, !tbaa !4
  %mul53.i500 = fmul float %mul30.i, %sub.i159.i
  store float %mul53.i500, float* %arraydecay47.i, align 4, !tbaa !4
  %mul56.i502 = fmul float %mul31.i364, %sub.i150.i
  store float %mul56.i502, float* %arraydecay50.i, align 4, !tbaa !4
  br label %for.body.for.body_crit_edge.i

for.body.for.body_crit_edge.i:                    ; preds = %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge, %sw.bb73
  %.pre268.i = phi float [ %sub4.i153.i, %sw.bb73 ], [ %.pre268.i.pre, %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge ]
  %.pre.i372 = phi float [ %sub4.i162.i, %sw.bb73 ], [ %.pre.i372.pre, %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge ]
  %indvars.iv.next.i370503 = phi i64 [ 1, %sw.bb73 ], [ %indvars.iv.next.i370, %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge ]
  %arrayidx52.phi.trans.insert.i = getelementptr inbounds [3 x float]* %f1.i, i64 0, i64 %indvars.iv.next.i370503
  %arrayidx55.phi.trans.insert.i = getelementptr inbounds [3 x float]* %f2.i, i64 0, i64 %indvars.iv.next.i370503
  %mul53.i = fmul float %mul30.i, %.pre.i372
  store float %mul53.i, float* %arrayidx52.phi.trans.insert.i, align 4, !tbaa !4
  %mul56.i = fmul float %mul31.i364, %.pre268.i
  store float %mul56.i, float* %arrayidx55.phi.trans.insert.i, align 4, !tbaa !4
  %indvars.iv.next.i370 = add i64 %indvars.iv.next.i370503, 1
  %lftr.wideiv531 = trunc i64 %indvars.iv.next.i370 to i32
  %exitcond532 = icmp eq i32 %lftr.wideiv531, 3
  br i1 %exitcond532, label %spread_dum3FAD.exit, label %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge

for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge: ; preds = %for.body.for.body_crit_edge.i
  %arrayidx52.phi.trans.insert.i.phi.trans.insert = getelementptr inbounds [3 x float]* %f1.i, i64 0, i64 %indvars.iv.next.i370
  %.pre.i372.pre = load float* %arrayidx52.phi.trans.insert.i.phi.trans.insert, align 4, !tbaa !4
  %arrayidx55.phi.trans.insert.i.phi.trans.insert = getelementptr inbounds [3 x float]* %f2.i, i64 0, i64 %indvars.iv.next.i370
  %.pre268.i.pre = load float* %arrayidx55.phi.trans.insert.i.phi.trans.insert, align 4, !tbaa !4
  br label %for.body.for.body_crit_edge.i

spread_dum3FAD.exit:                              ; preds = %for.body.for.body_crit_edge.i
  %arraydecay90 = getelementptr inbounds [3 x float]* %f, i64 %idxprom79, i64 0
  %arraydecay96 = getelementptr inbounds [3 x float]* %f, i64 %idxprom85, i64 0
  %mul3.i.i = fmul float %sub16.i, %mul43.i
  %mul.i.i373 = fmul float %sub.i362, %mul43.i
  %mul6.i.i = fmul float %sub21.i, %mul43.i
  %add.i374 = fadd float %mul9.i, 1.000000e+00
  %102 = load float* %arraydecay47.i, align 4, !tbaa !4
  %sub59.i = fsub float %99, %102
  %103 = load float* %arraydecay50.i, align 4, !tbaa !4
  %mul61.i = fmul float %mul9.i, %103
  %add62.i = fadd float %sub59.i, %mul61.i
  %add64.i375 = fadd float %mul.i.i373, %add62.i
  %104 = load float* %arraydecay90, align 4, !tbaa !4
  %add66.i = fadd float %104, %add64.i375
  store float %add66.i, float* %arraydecay90, align 4, !tbaa !4
  %105 = load float* %arrayidx3.i191.i, align 4, !tbaa !4
  %106 = load float* %arrayidx9.i166.i, align 4, !tbaa !4
  %sub69.i = fsub float %105, %106
  %107 = load float* %arrayidx9.i157.i, align 4, !tbaa !4
  %mul71.i = fmul float %mul9.i, %107
  %add72.i376 = fadd float %sub69.i, %mul71.i
  %add74.i = fadd float %mul3.i.i, %add72.i376
  %arrayidx75.i377 = getelementptr inbounds [3 x float]* %f, i64 %idxprom79, i64 1
  %108 = load float* %arrayidx75.i377, align 4, !tbaa !4
  %add76.i378 = fadd float %108, %add74.i
  store float %add76.i378, float* %arrayidx75.i377, align 4, !tbaa !4
  %109 = load float* %arrayidx6.i195.i, align 4, !tbaa !4
  %110 = load float* %arrayidx10.i167.i, align 4, !tbaa !4
  %sub79.i = fsub float %109, %110
  %111 = load float* %arrayidx10.i158.i, align 4, !tbaa !4
  %mul81.i = fmul float %mul9.i, %111
  %add82.i = fadd float %sub79.i, %mul81.i
  %add84.i = fadd float %mul6.i.i, %add82.i
  %arrayidx85.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom79, i64 2
  %112 = load float* %arrayidx85.i, align 4, !tbaa !4
  %add86.i = fadd float %112, %add84.i
  store float %add86.i, float* %arrayidx85.i, align 4, !tbaa !4
  %mul89.i = fmul float %add.i374, %103
  %sub90.i = fsub float %102, %mul89.i
  %sub92.i = fsub float %sub90.i, %mul.i.i373
  %113 = load float* %arraydecay93, align 4, !tbaa !4
  %add94.i = fadd float %sub92.i, %113
  store float %add94.i, float* %arraydecay93, align 4, !tbaa !4
  %mul97.i = fmul float %add.i374, %107
  %sub98.i = fsub float %106, %mul97.i
  %sub100.i = fsub float %sub98.i, %mul3.i.i
  %arrayidx101.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom82, i64 1
  %114 = load float* %arrayidx101.i, align 4, !tbaa !4
  %add102.i = fadd float %sub100.i, %114
  store float %add102.i, float* %arrayidx101.i, align 4, !tbaa !4
  %mul105.i = fmul float %add.i374, %111
  %sub106.i = fsub float %110, %mul105.i
  %sub108.i = fsub float %sub106.i, %mul6.i.i
  %arrayidx109.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom82, i64 2
  %115 = load float* %arrayidx109.i, align 4, !tbaa !4
  %add110.i = fadd float %sub108.i, %115
  store float %add110.i, float* %arrayidx109.i, align 4, !tbaa !4
  %116 = load float* %arraydecay96, align 4, !tbaa !4
  %add113.i = fadd float %103, %116
  store float %add113.i, float* %arraydecay96, align 4, !tbaa !4
  %arrayidx115.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom85, i64 1
  %117 = load float* %arrayidx115.i, align 4, !tbaa !4
  %add116.i = fadd float %107, %117
  store float %add116.i, float* %arrayidx115.i, align 4, !tbaa !4
  %arrayidx118.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom85, i64 2
  %118 = load float* %arrayidx118.i, align 4, !tbaa !4
  %add119.i = fadd float %111, %118
  store float %add119.i, float* %arrayidx118.i, align 4, !tbaa !4
  call void @llvm.lifetime.end(i64 12, i8* %27) #3
  call void @llvm.lifetime.end(i64 12, i8* %28) #3
  %inc100 = add nsw i32 %nd3FAD.1507, 1
  br label %sw.epilog

sw.bb101:                                         ; preds = %for.body12
  %arrayidx102 = getelementptr inbounds i32* %ia.0512, i64 4
  %119 = load i32* %arrayidx102, align 4, !tbaa !0
  %120 = getelementptr inbounds %union.t_iparams* %26, i64 %idxprom17, i32 0, i32 1
  %121 = load float* %120, align 4, !tbaa !4
  %122 = getelementptr inbounds %union.t_iparams* %26, i64 %idxprom17, i32 0, i32 2
  %123 = load float* %122, align 4, !tbaa !4
  %idxprom110 = sext i32 %35 to i64
  %arraydecay112 = getelementptr inbounds [3 x float]* %x, i64 %idxprom110, i64 0
  %idxprom113 = sext i32 %36 to i64
  %arraydecay115 = getelementptr inbounds [3 x float]* %x, i64 %idxprom113, i64 0
  %idxprom116 = sext i32 %119 to i64
  %arraydecay118 = getelementptr inbounds [3 x float]* %x, i64 %idxprom116, i64 0
  %idxprom128 = sext i32 %34 to i64
  %arraydecay130 = getelementptr inbounds [3 x float]* %f, i64 %idxprom128, i64 0
  call void @llvm.lifetime.start(i64 12, i8* %27)
  call void @llvm.lifetime.start(i64 12, i8* %28)
  %124 = load float* %arraydecay115, align 4, !tbaa !4
  %125 = load float* %arraydecay112, align 4, !tbaa !4
  %sub.i.i380 = fsub float %124, %125
  %arrayidx2.i.i381 = getelementptr inbounds [3 x float]* %x, i64 %idxprom113, i64 1
  %126 = load float* %arrayidx2.i.i381, align 4, !tbaa !4
  %arrayidx3.i.i382 = getelementptr inbounds [3 x float]* %x, i64 %idxprom110, i64 1
  %127 = load float* %arrayidx3.i.i382, align 4, !tbaa !4
  %sub4.i.i383 = fsub float %126, %127
  %arrayidx5.i.i384 = getelementptr inbounds [3 x float]* %x, i64 %idxprom113, i64 2
  %128 = load float* %arrayidx5.i.i384, align 4, !tbaa !4
  %arrayidx6.i.i385 = getelementptr inbounds [3 x float]* %x, i64 %idxprom110, i64 2
  %129 = load float* %arrayidx6.i.i385, align 4, !tbaa !4
  %sub7.i.i386 = fsub float %128, %129
  %130 = load float* %arraydecay118, align 4, !tbaa !4
  %sub.i114.i = fsub float %130, %125
  %arrayidx2.i115.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom116, i64 1
  %131 = load float* %arrayidx2.i115.i, align 4, !tbaa !4
  %sub4.i117.i = fsub float %131, %127
  %arrayidx5.i118.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom116, i64 2
  %132 = load float* %arrayidx5.i118.i, align 4, !tbaa !4
  %sub7.i120.i = fsub float %132, %129
  %133 = load float* %arraydecay130, align 4, !tbaa !4
  %mul.i387 = fmul float %123, %133
  %arrayidx2.i388 = getelementptr inbounds [3 x float]* %f, i64 %idxprom128, i64 1
  %134 = load float* %arrayidx2.i388, align 4, !tbaa !4
  %mul3.i = fmul float %123, %134
  %arrayidx4.i389 = getelementptr inbounds [3 x float]* %f, i64 %idxprom128, i64 2
  %135 = load float* %arrayidx4.i389, align 4, !tbaa !4
  %mul5.i390 = fmul float %123, %135
  %mul7.i391 = fmul float %37, %133
  %mul9.i392 = fmul float %sub7.i120.i, %mul3.i
  %sub.i393 = fsub float %mul7.i391, %mul9.i392
  %mul11.i394 = fmul float %sub4.i117.i, %mul5.i390
  %add.i395 = fadd float %sub.i393, %mul11.i394
  store float %add.i395, float* %arraydecay47.i, align 4, !tbaa !4
  %mul14.i396 = fmul float %sub7.i120.i, %mul.i387
  %mul16.i397 = fmul float %37, %134
  %add17.i = fadd float %mul14.i396, %mul16.i397
  %mul19.i398 = fmul float %sub.i114.i, %mul5.i390
  %sub20.i = fsub float %add17.i, %mul19.i398
  store float %sub20.i, float* %arrayidx9.i166.i, align 4, !tbaa !4
  %136 = fmul float %sub4.i117.i, %mul.i387
  %mul26.i = fmul float %sub.i114.i, %mul3.i
  %add27.i399 = fsub float %mul26.i, %136
  %mul29.i = fmul float %37, %135
  %add30.i400 = fadd float %mul29.i, %add27.i399
  store float %add30.i400, float* %arrayidx10.i167.i, align 4, !tbaa !4
  %mul33.i401 = fmul float %121, %133
  %mul35.i = fmul float %sub7.i.i386, %mul3.i
  %add36.i = fadd float %mul33.i401, %mul35.i
  %mul38.i402 = fmul float %sub4.i.i383, %mul5.i390
  %sub39.i = fsub float %add36.i, %mul38.i402
  store float %sub39.i, float* %arraydecay50.i, align 4, !tbaa !4
  %137 = fmul float %sub7.i.i386, %mul.i387
  %mul45.i = fmul float %121, %134
  %add46.i = fsub float %mul45.i, %137
  %mul48.i = fmul float %sub.i.i380, %mul5.i390
  %add49.i = fadd float %add46.i, %mul48.i
  store float %add49.i, float* %arrayidx9.i157.i, align 4, !tbaa !4
  %mul52.i = fmul float %sub4.i.i383, %mul.i387
  %mul54.i403 = fmul float %sub.i.i380, %mul3.i
  %sub55.i = fsub float %mul52.i, %mul54.i403
  %mul57.i = fmul float %121, %135
  %add58.i = fadd float %mul57.i, %sub55.i
  store float %add58.i, float* %arrayidx10.i158.i, align 4, !tbaa !4
  br label %for.body.i410

for.body.i410:                                    ; preds = %for.body.for.body_crit_edge.i412, %sw.bb101
  %138 = phi float [ %sub39.i, %sw.bb101 ], [ %.pre131.i, %for.body.for.body_crit_edge.i412 ]
  %139 = phi float [ %add.i395, %sw.bb101 ], [ %.pre130.i, %for.body.for.body_crit_edge.i412 ]
  %140 = phi float [ %133, %sw.bb101 ], [ %.pre.i411, %for.body.for.body_crit_edge.i412 ]
  %indvars.iv.i405 = phi i64 [ 0, %sw.bb101 ], [ %indvars.iv.next.i407, %for.body.for.body_crit_edge.i412 ]
  %sub63.i = fsub float %140, %139
  %sub66.i = fsub float %sub63.i, %138
  %arrayidx68.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom110, i64 %indvars.iv.i405
  %141 = load float* %arrayidx68.i, align 4, !tbaa !4
  %add69.i = fadd float %141, %sub66.i
  store float %add69.i, float* %arrayidx68.i, align 4, !tbaa !4
  %arrayidx73.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom113, i64 %indvars.iv.i405
  %142 = load float* %arrayidx73.i, align 4, !tbaa !4
  %add74.i406 = fadd float %139, %142
  store float %add74.i406, float* %arrayidx73.i, align 4, !tbaa !4
  %arrayidx78.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom116, i64 %indvars.iv.i405
  %143 = load float* %arrayidx78.i, align 4, !tbaa !4
  %add79.i = fadd float %138, %143
  store float %add79.i, float* %arrayidx78.i, align 4, !tbaa !4
  %indvars.iv.next.i407 = add i64 %indvars.iv.i405, 1
  %lftr.wideiv529 = trunc i64 %indvars.iv.i405 to i32
  %exitcond530 = icmp eq i32 %lftr.wideiv529, 2
  br i1 %exitcond530, label %spread_dum3OUT.exit, label %for.body.for.body_crit_edge.i412

for.body.for.body_crit_edge.i412:                 ; preds = %for.body.i410
  %arrayidx60.phi.trans.insert.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom128, i64 %indvars.iv.next.i407
  %.pre.i411 = load float* %arrayidx60.phi.trans.insert.i, align 4, !tbaa !4
  %arrayidx62.phi.trans.insert.i = getelementptr inbounds [3 x float]* %f1.i, i64 0, i64 %indvars.iv.next.i407
  %.pre130.i = load float* %arrayidx62.phi.trans.insert.i, align 4, !tbaa !4
  %arrayidx65.phi.trans.insert.i = getelementptr inbounds [3 x float]* %f2.i, i64 0, i64 %indvars.iv.next.i407
  %.pre131.i = load float* %arrayidx65.phi.trans.insert.i, align 4, !tbaa !4
  br label %for.body.i410

spread_dum3OUT.exit:                              ; preds = %for.body.i410
  call void @llvm.lifetime.end(i64 12, i8* %27)
  call void @llvm.lifetime.end(i64 12, i8* %28)
  %inc131 = add nsw i32 %nd3OUT.1508, 1
  br label %sw.epilog

sw.bb132:                                         ; preds = %for.body12
  %arrayidx133 = getelementptr inbounds i32* %ia.0512, i64 4
  %144 = load i32* %arrayidx133, align 4, !tbaa !0
  %arrayidx134 = getelementptr inbounds i32* %ia.0512, i64 5
  %145 = load i32* %arrayidx134, align 4, !tbaa !0
  %146 = getelementptr inbounds %union.t_iparams* %26, i64 %idxprom17, i32 0, i32 1
  %147 = load float* %146, align 4, !tbaa !4
  %148 = getelementptr inbounds %union.t_iparams* %26, i64 %idxprom17, i32 0, i32 2
  %149 = load float* %148, align 4, !tbaa !4
  %idxprom143 = sext i32 %35 to i64
  %arraydecay145 = getelementptr inbounds [3 x float]* %x, i64 %idxprom143, i64 0
  %idxprom146 = sext i32 %36 to i64
  %arraydecay148 = getelementptr inbounds [3 x float]* %x, i64 %idxprom146, i64 0
  %idxprom149 = sext i32 %144 to i64
  %arraydecay151 = getelementptr inbounds [3 x float]* %x, i64 %idxprom149, i64 0
  %idxprom152 = sext i32 %145 to i64
  %arraydecay154 = getelementptr inbounds [3 x float]* %x, i64 %idxprom152, i64 0
  %arraydecay157 = getelementptr inbounds [3 x float]* %f, i64 %idxprom143, i64 0
  %arraydecay160 = getelementptr inbounds [3 x float]* %f, i64 %idxprom146, i64 0
  %arraydecay163 = getelementptr inbounds [3 x float]* %f, i64 %idxprom149, i64 0
  %arraydecay166 = getelementptr inbounds [3 x float]* %f, i64 %idxprom152, i64 0
  %idxprom167 = sext i32 %34 to i64
  %arraydecay169 = getelementptr inbounds [3 x float]* %f, i64 %idxprom167, i64 0
  %150 = load float* %arraydecay148, align 4, !tbaa !4
  %151 = load float* %arraydecay145, align 4, !tbaa !4
  %sub.i.i414 = fsub float %150, %151
  %arrayidx2.i.i415 = getelementptr inbounds [3 x float]* %x, i64 %idxprom146, i64 1
  %152 = load float* %arrayidx2.i.i415, align 4, !tbaa !4
  %arrayidx3.i.i416 = getelementptr inbounds [3 x float]* %x, i64 %idxprom143, i64 1
  %153 = load float* %arrayidx3.i.i416, align 4, !tbaa !4
  %sub4.i.i417 = fsub float %152, %153
  %arrayidx5.i.i418 = getelementptr inbounds [3 x float]* %x, i64 %idxprom146, i64 2
  %154 = load float* %arrayidx5.i.i418, align 4, !tbaa !4
  %arrayidx6.i.i419 = getelementptr inbounds [3 x float]* %x, i64 %idxprom143, i64 2
  %155 = load float* %arrayidx6.i.i419, align 4, !tbaa !4
  %sub7.i.i420 = fsub float %154, %155
  %156 = load float* %arraydecay151, align 4, !tbaa !4
  %sub.i167.i = fsub float %156, %150
  %arrayidx2.i168.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom149, i64 1
  %157 = load float* %arrayidx2.i168.i, align 4, !tbaa !4
  %sub4.i170.i = fsub float %157, %152
  %arrayidx5.i171.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom149, i64 2
  %158 = load float* %arrayidx5.i171.i, align 4, !tbaa !4
  %sub7.i173.i = fsub float %158, %154
  %159 = load float* %arraydecay154, align 4, !tbaa !4
  %sub.i158.i = fsub float %159, %150
  %arrayidx2.i159.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom152, i64 1
  %160 = load float* %arrayidx2.i159.i, align 4, !tbaa !4
  %sub4.i161.i = fsub float %160, %152
  %arrayidx5.i162.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom152, i64 2
  %161 = load float* %arrayidx5.i162.i, align 4, !tbaa !4
  %sub7.i164.i = fsub float %161, %154
  %mul.i421 = fmul float %37, %sub.i167.i
  %add.i422 = fadd float %sub.i.i414, %mul.i421
  %mul5.i423 = fmul float %147, %sub.i158.i
  %add6.i = fadd float %add.i422, %mul5.i423
  %mul10.i424 = fmul float %37, %sub4.i170.i
  %add11.i = fadd float %sub4.i.i417, %mul10.i424
  %mul13.i425 = fmul float %147, %sub4.i161.i
  %add14.i = fadd float %add11.i, %mul13.i425
  %mul18.i426 = fmul float %37, %sub7.i173.i
  %add19.i427 = fadd float %sub7.i.i420, %mul18.i426
  %mul21.i428 = fmul float %147, %sub7.i164.i
  %add22.i = fadd float %add19.i427, %mul21.i428
  %mul.i149.i = fmul float %add6.i, %add6.i
  %mul4.i152.i = fmul float %add14.i, %add14.i
  %add.i153.i = fadd float %mul.i149.i, %mul4.i152.i
  %mul7.i156.i = fmul float %add22.i, %add22.i
  %add8.i157.i = fadd float %add.i153.i, %mul7.i156.i
  %conv.i429 = fpext float %add8.i157.i to double
  %call26.i = call double @sqrt(double %conv.i429) #4
  %div.i430 = fdiv double 1.000000e+00, %call26.i
  %conv27.i = fptrunc double %div.i430 to float
  %mul28.i431 = fmul float %149, %conv27.i
  %162 = load float* %arraydecay169, align 4, !tbaa !4
  %mul.i.i432 = fmul float %add6.i, %162
  %arrayidx3.i146.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom167, i64 1
  %163 = load float* %arrayidx3.i146.i, align 4, !tbaa !4
  %mul4.i.i433 = fmul float %add14.i, %163
  %add.i.i434 = fadd float %mul.i.i432, %mul4.i.i433
  %arrayidx6.i148.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom167, i64 2
  %164 = load float* %arrayidx6.i148.i, align 4, !tbaa !4
  %mul7.i.i435 = fmul float %add22.i, %164
  %add8.i.i436 = fadd float %add.i.i434, %mul7.i.i435
  %mul31.i437 = fmul float %conv27.i, %add8.i.i436
  %mul32.i = fmul float %conv27.i, %mul31.i437
  %mul37.i = fmul float %add6.i, %mul32.i
  %sub.i438 = fsub float %162, %mul37.i
  %mul38.i439 = fmul float %mul28.i431, %sub.i438
  %mul41.i = fmul float %add14.i, %mul32.i
  %sub42.i440 = fsub float %163, %mul41.i
  %mul43.i441 = fmul float %mul28.i431, %sub42.i440
  %mul46.i = fmul float %add22.i, %mul32.i
  %sub47.i = fsub float %164, %mul46.i
  %mul48.i442 = fmul float %mul28.i431, %sub47.i
  %sub50.i443 = fsub float 1.000000e+00, %37
  %sub51.i = fsub float %sub50.i443, %147
  %sub53.i = fsub float %162, %mul38.i439
  %165 = load float* %arraydecay157, align 4, !tbaa !4
  %add55.i = fadd float %165, %sub53.i
  store float %add55.i, float* %arraydecay157, align 4, !tbaa !4
  %sub57.i = fsub float %163, %mul43.i441
  %arrayidx58.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom143, i64 1
  %166 = load float* %arrayidx58.i, align 4, !tbaa !4
  %add59.i = fadd float %166, %sub57.i
  store float %add59.i, float* %arrayidx58.i, align 4, !tbaa !4
  %sub61.i = fsub float %164, %mul48.i442
  %arrayidx62.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom143, i64 2
  %167 = load float* %arrayidx62.i, align 4, !tbaa !4
  %add63.i = fadd float %167, %sub61.i
  store float %add63.i, float* %arrayidx62.i, align 4, !tbaa !4
  %mul65.i = fmul float %sub51.i, %mul38.i439
  %168 = load float* %arraydecay160, align 4, !tbaa !4
  %add67.i = fadd float %168, %mul65.i
  store float %add67.i, float* %arraydecay160, align 4, !tbaa !4
  %mul69.i = fmul float %sub51.i, %mul43.i441
  %arrayidx70.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom146, i64 1
  %169 = load float* %arrayidx70.i, align 4, !tbaa !4
  %add71.i = fadd float %169, %mul69.i
  store float %add71.i, float* %arrayidx70.i, align 4, !tbaa !4
  %mul73.i = fmul float %sub51.i, %mul48.i442
  %arrayidx74.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom146, i64 2
  %170 = load float* %arrayidx74.i, align 4, !tbaa !4
  %add75.i = fadd float %170, %mul73.i
  store float %add75.i, float* %arrayidx74.i, align 4, !tbaa !4
  %mul77.i = fmul float %37, %mul38.i439
  %171 = load float* %arraydecay163, align 4, !tbaa !4
  %add79.i444 = fadd float %171, %mul77.i
  store float %add79.i444, float* %arraydecay163, align 4, !tbaa !4
  %mul81.i445 = fmul float %37, %mul43.i441
  %arrayidx82.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom149, i64 1
  %172 = load float* %arrayidx82.i, align 4, !tbaa !4
  %add83.i = fadd float %172, %mul81.i445
  store float %add83.i, float* %arrayidx82.i, align 4, !tbaa !4
  %mul85.i = fmul float %37, %mul48.i442
  %arrayidx86.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom149, i64 2
  %173 = load float* %arrayidx86.i, align 4, !tbaa !4
  %add87.i = fadd float %mul85.i, %173
  store float %add87.i, float* %arrayidx86.i, align 4, !tbaa !4
  %mul89.i446 = fmul float %147, %mul38.i439
  %174 = load float* %arraydecay166, align 4, !tbaa !4
  %add91.i = fadd float %mul89.i446, %174
  store float %add91.i, float* %arraydecay166, align 4, !tbaa !4
  %mul93.i = fmul float %147, %mul43.i441
  %arrayidx94.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom152, i64 1
  %175 = load float* %arrayidx94.i, align 4, !tbaa !4
  %add95.i = fadd float %mul93.i, %175
  store float %add95.i, float* %arrayidx94.i, align 4, !tbaa !4
  %mul97.i447 = fmul float %147, %mul48.i442
  %arrayidx98.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom152, i64 2
  %176 = load float* %arrayidx98.i, align 4, !tbaa !4
  %add99.i = fadd float %mul97.i447, %176
  store float %add99.i, float* %arrayidx98.i, align 4, !tbaa !4
  %inc170 = add nsw i32 %nd4FD.1509, 1
  br label %sw.epilog

sw.default:                                       ; preds = %for.body12
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([37 x i8]* @.str, i64 0, i64 0), i32 %38, i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 783) #4
  %idxprom171.pre = sext i32 %34 to i64
  %arraydecay173.pre = getelementptr inbounds [3 x float]* %f, i64 %idxprom171.pre, i64 0
  %arrayidx1.i.pre = getelementptr inbounds [3 x float]* %f, i64 %idxprom171.pre, i64 1
  %arrayidx2.i448.pre = getelementptr inbounds [3 x float]* %f, i64 %idxprom171.pre, i64 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb132, %spread_dum3OUT.exit, %spread_dum3FAD.exit, %sw.bb45, %sw.bb27, %sw.bb
  %arrayidx2.i448.pre-phi = phi float* [ %arrayidx2.i448.pre, %sw.default ], [ %arrayidx6.i148.i, %sw.bb132 ], [ %arrayidx4.i389, %spread_dum3OUT.exit ], [ %arrayidx6.i195.i, %spread_dum3FAD.exit ], [ %arrayidx6.i113.i, %sw.bb45 ], [ %arrayidx5.i, %sw.bb27 ], [ %arrayidx3.i, %sw.bb ]
  %arrayidx1.i.pre-phi = phi float* [ %arrayidx1.i.pre, %sw.default ], [ %arrayidx3.i146.i, %sw.bb132 ], [ %arrayidx2.i388, %spread_dum3OUT.exit ], [ %arrayidx3.i191.i, %spread_dum3FAD.exit ], [ %arrayidx3.i111.i, %sw.bb45 ], [ %arrayidx4.i, %sw.bb27 ], [ %arrayidx2.i, %sw.bb ]
  %arraydecay173.pre-phi = phi float* [ %arraydecay173.pre, %sw.default ], [ %arraydecay169, %sw.bb132 ], [ %arraydecay130, %spread_dum3OUT.exit ], [ %arraydecay99, %spread_dum3FAD.exit ], [ %arraydecay71, %sw.bb45 ], [ %arraydecay43, %sw.bb27 ], [ %arraydecay26, %sw.bb ]
  %nd3.2 = phi i32 [ %nd3.1505, %sw.default ], [ %nd3.1505, %sw.bb132 ], [ %nd3.1505, %spread_dum3OUT.exit ], [ %nd3.1505, %spread_dum3FAD.exit ], [ %nd3.1505, %sw.bb45 ], [ %inc44, %sw.bb27 ], [ %nd3.1505, %sw.bb ]
  %nd3FD.2 = phi i32 [ %nd3FD.1506, %sw.default ], [ %nd3FD.1506, %sw.bb132 ], [ %nd3FD.1506, %spread_dum3OUT.exit ], [ %nd3FD.1506, %spread_dum3FAD.exit ], [ %inc72, %sw.bb45 ], [ %nd3FD.1506, %sw.bb27 ], [ %nd3FD.1506, %sw.bb ]
  %nd3FAD.2 = phi i32 [ %nd3FAD.1507, %sw.default ], [ %nd3FAD.1507, %sw.bb132 ], [ %nd3FAD.1507, %spread_dum3OUT.exit ], [ %inc100, %spread_dum3FAD.exit ], [ %nd3FAD.1507, %sw.bb45 ], [ %nd3FAD.1507, %sw.bb27 ], [ %nd3FAD.1507, %sw.bb ]
  %nd3OUT.2 = phi i32 [ %nd3OUT.1508, %sw.default ], [ %nd3OUT.1508, %sw.bb132 ], [ %inc131, %spread_dum3OUT.exit ], [ %nd3OUT.1508, %spread_dum3FAD.exit ], [ %nd3OUT.1508, %sw.bb45 ], [ %nd3OUT.1508, %sw.bb27 ], [ %nd3OUT.1508, %sw.bb ]
  %nd4FD.2 = phi i32 [ %nd4FD.1509, %sw.default ], [ %inc170, %sw.bb132 ], [ %nd4FD.1509, %spread_dum3OUT.exit ], [ %nd4FD.1509, %spread_dum3FAD.exit ], [ %nd4FD.1509, %sw.bb45 ], [ %nd4FD.1509, %sw.bb27 ], [ %nd4FD.1509, %sw.bb ]
  %nd2.2 = phi i32 [ %nd2.1510, %sw.default ], [ %nd2.1510, %sw.bb132 ], [ %nd2.1510, %spread_dum3OUT.exit ], [ %nd2.1510, %spread_dum3FAD.exit ], [ %nd2.1510, %sw.bb45 ], [ %nd2.1510, %sw.bb27 ], [ %inc, %sw.bb ]
  store float 0.000000e+00, float* %arraydecay173.pre-phi, align 4, !tbaa !4
  store float 0.000000e+00, float* %arrayidx1.i.pre-phi, align 4, !tbaa !4
  store float 0.000000e+00, float* %arrayidx2.i448.pre-phi, align 4, !tbaa !4
  %add174 = add nsw i32 %i.0511, %add
  %add.ptr = getelementptr inbounds i32* %ia.0512, i64 %idx.ext
  %cmp11 = icmp slt i32 %add174, %30
  br i1 %cmp11, label %for.body12, label %for.inc

for.inc:                                          ; preds = %if.then2, %sw.epilog, %for.body
  %nd3.3 = phi i32 [ %nd3.0518, %for.body ], [ %nd3.0518, %if.then2 ], [ %nd3.2, %sw.epilog ]
  %nd3FD.3 = phi i32 [ %nd3FD.0519, %for.body ], [ %nd3FD.0519, %if.then2 ], [ %nd3FD.2, %sw.epilog ]
  %nd3FAD.3 = phi i32 [ %nd3FAD.0520, %for.body ], [ %nd3FAD.0520, %if.then2 ], [ %nd3FAD.2, %sw.epilog ]
  %nd3OUT.3 = phi i32 [ %nd3OUT.0521, %for.body ], [ %nd3OUT.0521, %if.then2 ], [ %nd3OUT.2, %sw.epilog ]
  %nd4FD.3 = phi i32 [ %nd4FD.0522, %for.body ], [ %nd4FD.0522, %if.then2 ], [ %nd4FD.2, %sw.epilog ]
  %nd2.3 = phi i32 [ %nd2.0523, %for.body ], [ %nd2.0523, %if.then2 ], [ %nd2.2, %sw.epilog ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %177 = trunc i64 %indvars.iv to i32
  %cmp = icmp sgt i32 %177, 0
  br i1 %cmp, label %for.body, label %for.end177

for.end177:                                       ; preds = %for.inc
  %conv = sitofp i32 %nd2.3 to double
  %arrayidx178 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 123
  %178 = load double* %arrayidx178, align 8, !tbaa !6
  %add179 = fadd double %conv, %178
  store double %add179, double* %arrayidx178, align 8, !tbaa !6
  %conv180 = sitofp i32 %nd3.3 to double
  %arrayidx182 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 124
  %179 = load double* %arrayidx182, align 8, !tbaa !6
  %add183 = fadd double %conv180, %179
  store double %add183, double* %arrayidx182, align 8, !tbaa !6
  %conv184 = sitofp i32 %nd3FD.3 to double
  %arrayidx186 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 125
  %180 = load double* %arrayidx186, align 8, !tbaa !6
  %add187 = fadd double %conv184, %180
  store double %add187, double* %arrayidx186, align 8, !tbaa !6
  %conv188 = sitofp i32 %nd3FAD.3 to double
  %arrayidx190 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 126
  %181 = load double* %arrayidx190, align 8, !tbaa !6
  %add191 = fadd double %conv188, %181
  store double %add191, double* %arrayidx190, align 8, !tbaa !6
  %conv192 = sitofp i32 %nd3OUT.3 to double
  %arrayidx194 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 127
  %182 = load double* %arrayidx194, align 8, !tbaa !6
  %add195 = fadd double %conv192, %182
  store double %add195, double* %arrayidx194, align 8, !tbaa !6
  %conv196 = sitofp i32 %nd4FD.3 to double
  %arrayidx198 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 128
  %183 = load double* %arrayidx198, align 8, !tbaa !6
  %add199 = fadd double %conv196, %183
  store double %add199, double* %arrayidx198, align 8, !tbaa !6
  br i1 %tobool, label %if.then201, label %if.end202

if.then201:                                       ; preds = %for.end177
  %nnextconstr.i449 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 5
  %184 = load i32* %nnextconstr.i449, align 4, !tbaa !0
  %cmp92.i = icmp sgt i32 %184, 0
  br i1 %cmp92.i, label %for.body.lr.ph.i451, label %if.end.i467

for.body.lr.ph.i451:                              ; preds = %if.then201
  %idxnextconstr.i450 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 7
  %185 = load i32** %idxnextconstr.i450, align 8, !tbaa !3
  %186 = load [3 x float]** @nextbuf, align 8, !tbaa !3
  br label %for.body.i461

for.body.i461:                                    ; preds = %for.body.i461, %for.body.lr.ph.i451
  %indvars.iv97.i = phi i64 [ 0, %for.body.lr.ph.i451 ], [ %indvars.iv.next98.i, %for.body.i461 ]
  %arrayidx.i452 = getelementptr inbounds i32* %185, i64 %indvars.iv97.i
  %187 = load i32* %arrayidx.i452, align 4, !tbaa !0
  %idxprom1.i453 = sext i32 %187 to i64
  %arraydecay.i454 = getelementptr inbounds [3 x float]* %f, i64 %idxprom1.i453, i64 0
  %arraydecay5.i455 = getelementptr inbounds [3 x float]* %186, i64 %indvars.iv97.i, i64 0
  %188 = load float* %arraydecay.i454, align 4, !tbaa !4
  store float %188, float* %arraydecay5.i455, align 4, !tbaa !4
  %arrayidx2.i.i456 = getelementptr inbounds [3 x float]* %f, i64 %idxprom1.i453, i64 1
  %189 = load float* %arrayidx2.i.i456, align 4, !tbaa !4
  %arrayidx3.i.i457 = getelementptr inbounds [3 x float]* %186, i64 %indvars.iv97.i, i64 1
  store float %189, float* %arrayidx3.i.i457, align 4, !tbaa !4
  %arrayidx4.i.i458 = getelementptr inbounds [3 x float]* %f, i64 %idxprom1.i453, i64 2
  %190 = load float* %arrayidx4.i.i458, align 4, !tbaa !4
  %arrayidx5.i.i459 = getelementptr inbounds [3 x float]* %186, i64 %indvars.iv97.i, i64 2
  store float %190, float* %arrayidx5.i.i459, align 4, !tbaa !4
  %indvars.iv.next98.i = add i64 %indvars.iv97.i, 1
  %lftr.wideiv527 = trunc i64 %indvars.iv.next98.i to i32
  %exitcond528 = icmp eq i32 %lftr.wideiv527, %184
  br i1 %exitcond528, label %if.then.i465, label %for.body.i461

if.then.i465:                                     ; preds = %for.body.i461
  %right.i463 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %191 = load i32* %right.i463, align 4, !tbaa !0
  %192 = bitcast [3 x float]* %186 to i8*
  %mul.i464 = mul i32 %184, 12
  call void @gmx_tx(i32 %191, i8* %192, i32 %mul.i464) #4
  br label %if.end.i467

if.end.i467:                                      ; preds = %if.then.i465, %if.then201
  %nprevconstr.i = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 4
  %193 = load i32* %nprevconstr.i, align 4, !tbaa !0
  %cmp10.i466 = icmp sgt i32 %193, 0
  br i1 %cmp10.i466, label %if.then12.i470, label %if.end17.i472

if.then12.i470:                                   ; preds = %if.end.i467
  %left.i468 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %194 = load i32* %left.i468, align 4, !tbaa !0
  %195 = load [3 x float]** @prevbuf, align 8, !tbaa !3
  %196 = bitcast [3 x float]* %195 to i8*
  %mul15.i469 = mul i32 %193, 12
  call void @gmx_rx(i32 %194, i8* %196, i32 %mul15.i469) #4
  br label %if.end17.i472

if.end17.i472:                                    ; preds = %if.end.i467, %if.then12.i470
  %197 = load i32* %nnextconstr.i449, align 4, !tbaa !0
  %cmp19.i471 = icmp sgt i32 %197, 0
  br i1 %cmp19.i471, label %if.then21.i473, label %if.end23.i475

if.then21.i473:                                   ; preds = %if.end17.i472
  %right22.i = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %198 = load i32* %right22.i, align 4, !tbaa !0
  call void @gmx_tx_wait(i32 %198) #4
  br label %if.end23.i475

if.end23.i475:                                    ; preds = %if.end17.i472, %if.then21.i473
  %199 = load i32* %nprevconstr.i, align 4, !tbaa !0
  %cmp25.i474 = icmp sgt i32 %199, 0
  br i1 %cmp25.i474, label %for.cond30.preheader.i477, label %for.cond46.preheader.i480

for.cond30.preheader.i477:                        ; preds = %if.end23.i475
  %left28.i = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %200 = load i32* %left28.i, align 4, !tbaa !0
  call void @gmx_rx_wait(i32 %200) #4
  %.pre.i476 = load i32* %nprevconstr.i, align 4, !tbaa !0
  %cmp3290.i = icmp sgt i32 %.pre.i476, 0
  br i1 %cmp3290.i, label %for.body34.lr.ph.i478, label %for.cond46.preheader.i480

for.body34.lr.ph.i478:                            ; preds = %for.cond30.preheader.i477
  %idxprevconstr.i = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 6
  %201 = load i32** %idxprevconstr.i, align 8, !tbaa !3
  %202 = load [3 x float]** @prevbuf, align 8, !tbaa !3
  br label %for.body34.i489

for.cond46.preheader.i480:                        ; preds = %for.body34.i489, %for.cond30.preheader.i477, %if.end23.i475
  %nprevdum.i479 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 0
  %203 = load i32* %nprevdum.i479, align 4, !tbaa !0
  %cmp4788.i = icmp sgt i32 %203, 0
  br i1 %cmp4788.i, label %for.body49.lr.ph.i482, label %if.end202

for.body49.lr.ph.i482:                            ; preds = %for.cond46.preheader.i480
  %idxprevdum.i481 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 2
  %204 = load i32** %idxprevdum.i481, align 8, !tbaa !3
  br label %for.body49.i498

for.body34.i489:                                  ; preds = %for.body34.i489, %for.body34.lr.ph.i478
  %indvars.iv95.i = phi i64 [ 0, %for.body34.lr.ph.i478 ], [ %indvars.iv.next96.i, %for.body34.i489 ]
  %arrayidx36.i = getelementptr inbounds i32* %201, i64 %indvars.iv95.i
  %205 = load i32* %arrayidx36.i, align 4, !tbaa !0
  %idxprom37.i = sext i32 %205 to i64
  %arraydecay39.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom37.i, i64 0
  %arraydecay42.i483 = getelementptr inbounds [3 x float]* %202, i64 %indvars.iv95.i, i64 0
  %206 = load float* %arraydecay39.i, align 4, !tbaa !4
  %207 = load float* %arraydecay42.i483, align 4, !tbaa !4
  %add.i.i484 = fadd float %206, %207
  %arrayidx2.i85.i485 = getelementptr inbounds [3 x float]* %f, i64 %idxprom37.i, i64 1
  %208 = load float* %arrayidx2.i85.i485, align 4, !tbaa !4
  %arrayidx3.i86.i486 = getelementptr inbounds [3 x float]* %202, i64 %indvars.iv95.i, i64 1
  %209 = load float* %arrayidx3.i86.i486, align 4, !tbaa !4
  %add4.i.i = fadd float %208, %209
  %arrayidx5.i87.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom37.i, i64 2
  %210 = load float* %arrayidx5.i87.i, align 4, !tbaa !4
  %arrayidx6.i.i487 = getelementptr inbounds [3 x float]* %202, i64 %indvars.iv95.i, i64 2
  %211 = load float* %arrayidx6.i.i487, align 4, !tbaa !4
  %add7.i.i = fadd float %210, %211
  store float %add.i.i484, float* %arraydecay39.i, align 4, !tbaa !4
  store float %add4.i.i, float* %arrayidx2.i85.i485, align 4, !tbaa !4
  store float %add7.i.i, float* %arrayidx5.i87.i, align 4, !tbaa !4
  %indvars.iv.next96.i = add i64 %indvars.iv95.i, 1
  %lftr.wideiv525 = trunc i64 %indvars.iv.next96.i to i32
  %exitcond526 = icmp eq i32 %lftr.wideiv525, %.pre.i476
  br i1 %exitcond526, label %for.cond46.preheader.i480, label %for.body34.i489

for.body49.i498:                                  ; preds = %for.body49.i498, %for.body49.lr.ph.i482
  %indvars.iv.i490 = phi i64 [ 0, %for.body49.lr.ph.i482 ], [ %indvars.iv.next.i496, %for.body49.i498 ]
  %arrayidx51.i491 = getelementptr inbounds i32* %204, i64 %indvars.iv.i490
  %212 = load i32* %arrayidx51.i491, align 4, !tbaa !0
  %idxprom52.i492 = sext i32 %212 to i64
  %arraydecay54.i493 = getelementptr inbounds [3 x float]* %f, i64 %idxprom52.i492, i64 0
  store float 0.000000e+00, float* %arraydecay54.i493, align 4, !tbaa !4
  %arrayidx1.i.i494 = getelementptr inbounds [3 x float]* %f, i64 %idxprom52.i492, i64 1
  store float 0.000000e+00, float* %arrayidx1.i.i494, align 4, !tbaa !4
  %arrayidx2.i84.i495 = getelementptr inbounds [3 x float]* %f, i64 %idxprom52.i492, i64 2
  store float 0.000000e+00, float* %arrayidx2.i84.i495, align 4, !tbaa !4
  %indvars.iv.next.i496 = add i64 %indvars.iv.i490, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i496 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %203
  br i1 %exitcond, label %if.end202, label %for.body49.i498

if.end202:                                        ; preds = %for.body49.i498, %for.cond46.preheader.i480, %for.end177
  ret void
}

; Function Attrs: optsize
declare void @gmx_tx(i32, i8*, i32) #1

; Function Attrs: optsize
declare void @gmx_rx(i32, i8*, i32) #1

; Function Attrs: optsize
declare void @gmx_tx_wait(i32) #1

; Function Attrs: optsize
declare void @gmx_rx_wait(i32) #1

; Function Attrs: nounwind optsize
declare double @sqrt(double) #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
!5 = metadata !{metadata !"long", metadata !1}
!6 = metadata !{metadata !"double", metadata !1}
