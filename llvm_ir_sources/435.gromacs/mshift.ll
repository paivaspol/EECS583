; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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

@.str = private unnamed_addr constant [12 x i8] c"graph:  %s\0A\00", align 1
@.str1 = private unnamed_addr constant [12 x i8] c"maxbond:%d\0A\00", align 1
@.str2 = private unnamed_addr constant [12 x i8] c"nnodes: %d\0A\00", align 1
@.str3 = private unnamed_addr constant [12 x i8] c"nbound: %d\0A\00", align 1
@.str4 = private unnamed_addr constant [12 x i8] c"start:  %d\0A\00", align 1
@.str5 = private unnamed_addr constant [12 x i8] c"end:    %d\0A\00", align 1
@.str6 = private unnamed_addr constant [48 x i8] c" atom shiftx shifty shiftz nedg   e1   e2 etc.\0A\00", align 1
@.str7 = private unnamed_addr constant [16 x i8] c"%5d%7d%7d%7d%5d\00", align 1
@.str8 = private unnamed_addr constant [4 x i8] c"%5u\00", align 1
@.str10 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str11 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c\00", align 1
@.str12 = private unnamed_addr constant [10 x i8] c"g->ishift\00", align 1
@.str13 = private unnamed_addr constant [9 x i8] c"g->nedge\00", align 1
@debug = external global %struct._IO_FILE*
@.str14 = private unnamed_addr constant [31 x i8] c"MSHIFT: nnodes=%d, maxbond=%d\0A\00", align 1
@.str15 = private unnamed_addr constant [8 x i8] c"g->edge\00", align 1
@.str16 = private unnamed_addr constant [11 x i8] c"g->edge[0]\00", align 1
@interaction_function = external global [44 x %struct.t_interaction_function]
@mk_mshift.negc = internal unnamed_addr global i32 0, align 4
@mk_mshift.egc = internal unnamed_addr global i32* null, align 8
@.str17 = private unnamed_addr constant [4 x i8] c"egc\00", align 1
@.str18 = private unnamed_addr constant [34 x i8] c"No WHITE nodes found while nW=%d\0A\00", align 1
@.str19 = private unnamed_addr constant [33 x i8] c"No GREY nodes found while nG=%d\0A\00", align 1
@.str20 = private unnamed_addr constant [56 x i8] c"There were %d inconsistent shifts. Check your topology\0A\00", align 1
@.str21 = private unnamed_addr constant [227 x i8] c"Molecule in topology has atom numbers below and above natoms (%d).\0AYou are probably trying to use a trajectory which does not match the first %d atoms of the run input file.\0AYou can make a matching run input file with tpbconv.\00", align 1
@.str22 = private unnamed_addr constant [39 x i8] c"More than %d bonds per atom (atom %d)\0A\00", align 1
@.str23 = private unnamed_addr constant [6 x i8] c"nbond\00", align 1
@stdlog = external global %struct._IO_FILE*
@.str24 = private unnamed_addr constant [36 x i8] c"Max number of bonds per atom is %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @p_graph(%struct._IO_FILE* %log, i8* %title, %struct.t_graph* nocapture %g) #0 {
entry:
  %tobool = icmp eq %struct._IO_FILE* %log, null
  br i1 %tobool, label %if.end44, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0), i8* %title) #4
  %maxbond = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 0
  %0 = load i32* %maxbond, align 4, !tbaa !0
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i32 %0) #4
  %nnodes = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 1
  %1 = load i32* %nnodes, align 4, !tbaa !0
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0), i32 %1) #4
  %nbound = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 2
  %2 = load i32* %nbound, align 4, !tbaa !0
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0), i32 %2) #4
  %start = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %3 = load i32* %start, align 4, !tbaa !0
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0), i32 %3) #4
  %end = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 4
  %4 = load i32* %end, align 4, !tbaa !0
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i32 %4) #4
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([48 x i8]* @.str6, i64 0, i64 0), i64 47, i64 1, %struct._IO_FILE* %log)
  %6 = load i32* %nnodes, align 4, !tbaa !0
  %cmp82 = icmp sgt i32 %6, 0
  br i1 %cmp82, label %for.body.lr.ph, label %for.end42

for.body.lr.ph:                                   ; preds = %if.then
  %nedge = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 5
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %edge = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc40, %for.body.lr.ph
  %7 = phi i32 [ %6, %for.body.lr.ph ], [ %25, %for.inc40 ]
  %indvars.iv84 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next85.pre-phi, %for.inc40 ]
  %8 = load i32** %nedge, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32* %8, i64 %indvars.iv84
  %9 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp8 = icmp sgt i32 %9, 0
  br i1 %cmp8, label %if.then9, label %for.body.for.inc40_crit_edge

for.body.for.inc40_crit_edge:                     ; preds = %for.body
  %indvars.iv.next85.pre = add i64 %indvars.iv84, 1
  %.pre87 = trunc i64 %indvars.iv.next85.pre to i32
  br label %for.inc40

if.then9:                                         ; preds = %for.body
  %10 = load i32* %start, align 4, !tbaa !0
  %11 = add i64 %indvars.iv84, 1
  %12 = trunc i64 %11 to i32
  %add11 = add i32 %12, %10
  %13 = load [3 x i32]** %ishift, align 8, !tbaa !3
  %arrayidx14 = getelementptr inbounds [3 x i32]* %13, i64 %indvars.iv84, i64 0
  %14 = load i32* %arrayidx14, align 4, !tbaa !0
  %arrayidx18 = getelementptr inbounds [3 x i32]* %13, i64 %indvars.iv84, i64 1
  %15 = load i32* %arrayidx18, align 4, !tbaa !0
  %arrayidx22 = getelementptr inbounds [3 x i32]* %13, i64 %indvars.iv84, i64 2
  %16 = load i32* %arrayidx22, align 4, !tbaa !0
  %call26 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0), i32 %add11, i32 %14, i32 %15, i32 %16, i32 %9) #4
  %17 = load i32** %nedge, align 8, !tbaa !3
  %arrayidx3079 = getelementptr inbounds i32* %17, i64 %indvars.iv84
  %18 = load i32* %arrayidx3079, align 4, !tbaa !0
  %cmp3180 = icmp sgt i32 %18, 0
  br i1 %cmp3180, label %for.body32, label %for.end

for.body32:                                       ; preds = %if.then9, %for.body32
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body32 ], [ 0, %if.then9 ]
  %19 = load i32*** %edge, align 8, !tbaa !3
  %arrayidx35 = getelementptr inbounds i32** %19, i64 %indvars.iv84
  %20 = load i32** %arrayidx35, align 8, !tbaa !3
  %arrayidx36 = getelementptr inbounds i32* %20, i64 %indvars.iv
  %21 = load i32* %arrayidx36, align 4, !tbaa !0
  %add37 = add nsw i32 %21, 1
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i32 %add37) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %22 = load i32** %nedge, align 8, !tbaa !3
  %arrayidx30 = getelementptr inbounds i32* %22, i64 %indvars.iv84
  %23 = load i32* %arrayidx30, align 4, !tbaa !0
  %24 = trunc i64 %indvars.iv.next to i32
  %cmp31 = icmp slt i32 %24, %23
  br i1 %cmp31, label %for.body32, label %for.end

for.end:                                          ; preds = %for.body32, %if.then9
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %log)
  %.pre = load i32* %nnodes, align 4, !tbaa !0
  br label %for.inc40

for.inc40:                                        ; preds = %for.body.for.inc40_crit_edge, %for.end
  %.pre-phi = phi i32 [ %.pre87, %for.body.for.inc40_crit_edge ], [ %12, %for.end ]
  %indvars.iv.next85.pre-phi = phi i64 [ %indvars.iv.next85.pre, %for.body.for.inc40_crit_edge ], [ %11, %for.end ]
  %25 = phi i32 [ %7, %for.body.for.inc40_crit_edge ], [ %.pre, %for.end ]
  %cmp = icmp slt i32 %.pre-phi, %25
  br i1 %cmp, label %for.body, label %for.end42

for.end42:                                        ; preds = %for.inc40, %if.then
  %call43 = tail call i32 @fflush(%struct._IO_FILE* %log) #4
  br label %if.end44

if.end44:                                         ; preds = %entry, %for.end42
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define %struct.t_graph* @mk_graph(%struct.t_idef* nocapture %idef, i32 %natoms, i32 %bShakeOnly, i32 %bSettle) #0 {
entry:
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str11, i64 0, i64 0), i32 234, i32 1, i32 48) #4
  %start.i = getelementptr inbounds i8* %call, i64 12
  %0 = bitcast i8* %start.i to i32*
  store i32 %natoms, i32* %0, align 4, !tbaa !0
  %end.i = getelementptr inbounds i8* %call, i64 16
  %1 = bitcast i8* %end.i to i32*
  store i32 0, i32* %1, align 4, !tbaa !0
  %call.i = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str11, i64 0, i64 0), i32 212, i32 %natoms, i32 2) #4
  %2 = bitcast i8* %call.i to i16*
  %functype.i = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %entry
  %indvars.iv47.i = phi i64 [ 0, %entry ], [ %indvars.iv.next48.i, %for.inc.i ]
  %flags.i = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv47.i, i32 5
  %3 = load i64* %flags.i, align 8, !tbaa !4
  %and.i = and i64 %3, 8
  %tobool.i = icmp eq i64 %and.i, 0
  br i1 %tobool.i, label %for.inc.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  %4 = load i32** %functype.i, align 8, !tbaa !3
  %nr.i.i = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv47.i, i32 0
  %5 = load i32* %nr.i.i, align 4, !tbaa !0
  %cmp119.i.i = icmp sgt i32 %5, 0
  br i1 %cmp119.i.i, label %for.body.lr.ph.i.i, label %for.inc.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i
  %iatoms.i.i = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv47.i, i32 2
  %6 = load i32** %iatoms.i.i, align 8, !tbaa !3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc70.i.i, %for.body.lr.ph.i.i
  %ia.0121.i.i = phi i32* [ %6, %for.body.lr.ph.i.i ], [ %add.ptr.i.i, %for.inc70.i.i ]
  %j.0120.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add72.i.i, %for.inc70.i.i ]
  %7 = load i32* %ia.0121.i.i, align 4, !tbaa !0
  %idxprom.i.i = sext i32 %7 to i64
  %arrayidx1.i.i = getelementptr inbounds i32* %4, i64 %idxprom.i.i
  %8 = load i32* %arrayidx1.i.i, align 4, !tbaa !0
  %idxprom2.i.i = sext i32 %8 to i64
  %nratoms4.i.i = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %idxprom2.i.i, i32 2
  %9 = load i32* %nratoms4.i.i, align 8, !tbaa !0
  %cmp5.i.i = icmp eq i32 %8, 29
  br i1 %cmp5.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %arrayidx6.i.i = getelementptr inbounds i32* %ia.0121.i.i, i64 1
  %10 = load i32* %arrayidx6.i.i, align 4, !tbaa !0
  %cmp7.i.i = icmp slt i32 %10, %natoms
  br i1 %cmp7.i.i, label %if.then8.i.i, label %for.inc70.i.i

if.then8.i.i:                                     ; preds = %if.then.i.i
  %idxprom9.i.i = sext i32 %10 to i64
  %arrayidx10.i.i = getelementptr inbounds i16* %2, i64 %idxprom9.i.i
  store i16 2, i16* %arrayidx10.i.i, align 2, !tbaa !5
  %add.i.i = add nsw i32 %10, 1
  %idxprom11.i.i = sext i32 %add.i.i to i64
  %arrayidx12.i.i = getelementptr inbounds i16* %2, i64 %idxprom11.i.i
  store i16 2, i16* %arrayidx12.i.i, align 2, !tbaa !5
  %add13.i.i = add nsw i32 %10, 2
  %idxprom14.i.i = sext i32 %add13.i.i to i64
  %arrayidx15.i.i = getelementptr inbounds i16* %2, i64 %idxprom14.i.i
  store i16 2, i16* %arrayidx15.i.i, align 2, !tbaa !5
  %11 = load i32* %0, align 4, !tbaa !0
  %cmp16.i.i = icmp slt i32 %11, %10
  %..i.i = select i1 %cmp16.i.i, i32 %11, i32 %10
  store i32 %..i.i, i32* %0, align 4, !tbaa !0
  %12 = load i32* %1, align 4, !tbaa !0
  %cmp21.i.i = icmp sgt i32 %12, %add13.i.i
  %cond27.i.i = select i1 %cmp21.i.i, i32 %12, i32 %add13.i.i
  store i32 %cond27.i.i, i32* %1, align 4, !tbaa !0
  br label %for.inc70.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  %flags.i.i = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %idxprom2.i.i, i32 5
  %13 = load i64* %flags.i.i, align 8, !tbaa !4
  %and.i.i = and i64 %13, 2
  %tobool.i.i = icmp eq i64 %and.i.i, 0
  %.115.i.i = select i1 %tobool.i.i, i32 %9, i32 2
  %cmp35117.i.i = icmp sgt i32 %.115.i.i, 0
  br i1 %cmp35117.i.i, label %for.body36.i.preheader.i, label %for.inc70.i.i

for.body36.i.preheader.i:                         ; preds = %if.else.i.i
  %and61.i.i = and i64 %13, 8
  %tobool62.i.i = icmp eq i64 %and61.i.i, 0
  br label %for.body36.i.i

for.body36.i.i:                                   ; preds = %for.cond34.backedge.i.i, %for.body36.i.preheader.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.cond34.backedge.i.i ], [ 0, %for.body36.i.preheader.i ]
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1
  %arrayidx39.i.i = getelementptr inbounds i32* %ia.0121.i.i, i64 %indvars.iv.next.i.i
  %14 = load i32* %arrayidx39.i.i, align 4, !tbaa !0
  %cmp40.i.i = icmp slt i32 %14, %natoms
  br i1 %cmp40.i.i, label %if.then41.i.i, label %for.cond34.backedge.i.i

if.then41.i.i:                                    ; preds = %for.body36.i.i
  %15 = load i32* %0, align 4, !tbaa !0
  %cmp43.i.i = icmp slt i32 %15, %14
  %.116.i.i = select i1 %cmp43.i.i, i32 %15, i32 %14
  store i32 %.116.i.i, i32* %0, align 4, !tbaa !0
  %16 = load i32* %1, align 4, !tbaa !0
  %cmp51.i.i = icmp sgt i32 %16, %14
  %cond56.i.i = select i1 %cmp51.i.i, i32 %16, i32 %14
  store i32 %cond56.i.i, i32* %1, align 4, !tbaa !0
  br i1 %tobool62.i.i, label %for.cond34.backedge.i.i, label %if.then63.i.i

for.cond34.backedge.i.i:                          ; preds = %if.then63.i.i, %if.then41.i.i, %for.body36.i.i
  %lftr.wideiv155 = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond156 = icmp eq i32 %lftr.wideiv155, %.115.i.i
  br i1 %exitcond156, label %for.inc70.i.i, label %for.body36.i.i

if.then63.i.i:                                    ; preds = %if.then41.i.i
  %idxprom64.i.i = sext i32 %14 to i64
  %arrayidx65.i.i = getelementptr inbounds i16* %2, i64 %idxprom64.i.i
  %17 = load i16* %arrayidx65.i.i, align 2, !tbaa !5
  %inc.i.i = add i16 %17, 1
  store i16 %inc.i.i, i16* %arrayidx65.i.i, align 2, !tbaa !5
  br label %for.cond34.backedge.i.i

for.inc70.i.i:                                    ; preds = %for.cond34.backedge.i.i, %if.else.i.i, %if.then8.i.i, %if.then.i.i
  %add71.i.i = add nsw i32 %9, 1
  %add72.i.i = add nsw i32 %add71.i.i, %j.0120.i.i
  %idx.ext.i.i = sext i32 %add71.i.i to i64
  %add.ptr.i.i = getelementptr inbounds i32* %ia.0121.i.i, i64 %idx.ext.i.i
  %cmp.i.i = icmp slt i32 %add72.i.i, %5
  br i1 %cmp.i.i, label %for.body.i.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.inc70.i.i, %if.then.i, %for.body.i
  %indvars.iv.next48.i = add i64 %indvars.iv47.i, 1
  %lftr.wideiv157 = trunc i64 %indvars.iv.next48.i to i32
  %exitcond158 = icmp eq i32 %lftr.wideiv157, 44
  br i1 %exitcond158, label %for.end.i, label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %18 = bitcast i8* %call to %struct.t_graph*
  %19 = load i32* %0, align 4, !tbaa !0
  %20 = load i32* %1, align 4, !tbaa !0
  %cmp643.i = icmp sgt i32 %19, %20
  br i1 %cmp643.i, label %for.end17.i, label %for.body7.lr.ph.i

for.body7.lr.ph.i:                                ; preds = %for.end.i
  %21 = sext i32 %19 to i64
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.body7.i, %for.body7.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body7.i ], [ %21, %for.body7.lr.ph.i ]
  %nnb.045.i = phi i32 [ %nnb.0.conv.i, %for.body7.i ], [ 0, %for.body7.lr.ph.i ]
  %arrayidx9.i = getelementptr inbounds i16* %2, i64 %indvars.iv.i
  %22 = load i16* %arrayidx9.i, align 2, !tbaa !5
  %conv.i = sext i16 %22 to i32
  %cmp10.i = icmp sgt i32 %nnb.045.i, %conv.i
  %nnb.0.conv.i = select i1 %cmp10.i, i32 %nnb.045.i, i32 %conv.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %23 = trunc i64 %indvars.iv.i to i32
  %cmp6.i = icmp slt i32 %23, %20
  br i1 %cmp6.i, label %for.body7.i, label %for.end17.i

for.end17.i:                                      ; preds = %for.body7.i, %for.end.i
  %nnb.0.lcssa.i = phi i32 [ 0, %for.end.i ], [ %nnb.0.conv.i, %for.body7.i ]
  %24 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %tobool18.i = icmp eq %struct._IO_FILE* %24, null
  br i1 %tobool18.i, label %calc_start_end.exit, label %if.then19.i

if.then19.i:                                      ; preds = %for.end17.i
  %call20.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([36 x i8]* @.str24, i64 0, i64 0), i32 %nnb.0.lcssa.i) #4
  br label %calc_start_end.exit

calc_start_end.exit:                              ; preds = %for.end17.i, %if.then19.i
  tail call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str11, i64 0, i64 0), i32 224, i8* %call.i) #4
  %add.i = add nsw i32 %nnb.0.lcssa.i, 6
  %maxbond.i = bitcast i8* %call to i32*
  store i32 %add.i, i32* %maxbond.i, align 4, !tbaa !0
  %25 = load i32* %0, align 4, !tbaa !0
  %26 = load i32* %1, align 4, !tbaa !0
  %cmp = icmp slt i32 %25, %26
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %calc_start_end.exit
  %nnodes = getelementptr inbounds i8* %call, i64 4
  %27 = bitcast i8* %nnodes to i32*
  store i32 0, i32* %27, align 4, !tbaa !0
  br label %if.end84

if.else:                                          ; preds = %calc_start_end.exit
  %sub = sub nsw i32 %26, %25
  %add = add nsw i32 %sub, 1
  %nnodes3 = getelementptr inbounds i8* %call, i64 4
  %28 = bitcast i8* %nnodes3 to i32*
  store i32 %add, i32* %28, align 4, !tbaa !0
  %call5 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str11, i64 0, i64 0), i32 243, i32 %add, i32 12) #4
  %29 = bitcast i8* %call5 to [3 x i32]*
  %ishift = getelementptr inbounds i8* %call, i64 40
  %30 = bitcast i8* %ishift to [3 x i32]**
  store [3 x i32]* %29, [3 x i32]** %30, align 8, !tbaa !3
  %31 = load i32* %28, align 4, !tbaa !0
  %call7 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str11, i64 0, i64 0), i32 244, i32 %31, i32 4) #4
  %32 = bitcast i8* %call7 to i32*
  %nedge = getelementptr inbounds i8* %call, i64 24
  %33 = bitcast i8* %nedge to i32**
  store i32* %32, i32** %33, align 8, !tbaa !3
  %34 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool = icmp eq %struct._IO_FILE* %34, null
  br i1 %tobool, label %if.end, label %if.then8

if.then8:                                         ; preds = %if.else
  %35 = load i32* %28, align 4, !tbaa !0
  %36 = load i32* %maxbond.i, align 4, !tbaa !0
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([31 x i8]* @.str14, i64 0, i64 0), i32 %35, i32 %36) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then8
  %37 = load i32* %28, align 4, !tbaa !0
  %call12 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str11, i64 0, i64 0), i32 252, i32 %37, i32 8) #4
  %38 = bitcast i8* %call12 to i32**
  %edge = getelementptr inbounds i8* %call, i64 32
  %39 = bitcast i8* %edge to i32***
  store i32** %38, i32*** %39, align 8, !tbaa !3
  %40 = load i32* %maxbond.i, align 4, !tbaa !0
  %41 = load i32* %28, align 4, !tbaa !0
  %mul = mul nsw i32 %41, %40
  %call15 = tail call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str11, i64 0, i64 0), i32 253, i32 %mul, i32 4) #4
  %42 = bitcast i8* %call15 to i32*
  %43 = load i32*** %39, align 8, !tbaa !3
  store i32* %42, i32** %43, align 8, !tbaa !3
  %44 = load i32* %28, align 4, !tbaa !0
  %cmp18144 = icmp sgt i32 %44, 1
  br i1 %cmp18144, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %45 = load i32* %maxbond.i, align 4, !tbaa !0
  %idx.ext = sext i32 %45 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv152 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next153, %for.body ]
  %46 = add nsw i64 %indvars.iv152, -1
  %47 = load i32*** %39, align 8, !tbaa !3
  %arrayidx21 = getelementptr inbounds i32** %47, i64 %46
  %48 = load i32** %arrayidx21, align 8, !tbaa !3
  %add.ptr = getelementptr inbounds i32* %48, i64 %idx.ext
  %arrayidx25 = getelementptr inbounds i32** %47, i64 %indvars.iv152
  store i32* %add.ptr, i32** %arrayidx25, align 8, !tbaa !3
  %indvars.iv.next153 = add i64 %indvars.iv152, 1
  %49 = trunc i64 %indvars.iv.next153 to i32
  %cmp18 = icmp slt i32 %49, %44
  br i1 %cmp18, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end
  %tobool26 = icmp eq i32 %bShakeOnly, 0
  br i1 %tobool26, label %for.body30, label %if.else58

for.body30:                                       ; preds = %for.end, %for.inc38
  %indvars.iv148 = phi i64 [ %indvars.iv.next149, %for.inc38 ], [ 0, %for.end ]
  %flags = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv148, i32 5
  %50 = load i64* %flags, align 8, !tbaa !4
  %and = and i64 %50, 8
  %tobool33 = icmp eq i64 %and, 0
  br i1 %tobool33, label %for.inc38, label %if.then34

if.then34:                                        ; preds = %for.body30
  %51 = load i32** %functype.i, align 8, !tbaa !3
  %arrayidx36 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv148
  tail call fastcc void @mk_igraph(%struct.t_graph* %18, i32* %51, %struct.t_ilist* %arrayidx36, i32 %natoms, i32 1) #5
  br label %for.inc38

for.inc38:                                        ; preds = %for.body30, %if.then34
  %indvars.iv.next149 = add i64 %indvars.iv148, 1
  %lftr.wideiv150 = trunc i64 %indvars.iv.next149 to i32
  %exitcond151 = icmp eq i32 %lftr.wideiv150, 44
  br i1 %exitcond151, label %for.body43, label %for.body30

for.body43:                                       ; preds = %for.inc38, %for.inc55
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %for.inc55 ], [ 0, %for.inc38 ]
  %flags46 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv146, i32 5
  %52 = load i64* %flags46, align 8, !tbaa !4
  %and47 = and i64 %52, 8
  %tobool48 = icmp eq i64 %and47, 0
  br i1 %tobool48, label %if.then49, label %for.inc55

if.then49:                                        ; preds = %for.body43
  %53 = load i32** %functype.i, align 8, !tbaa !3
  %arrayidx53 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv146
  tail call fastcc void @mk_igraph(%struct.t_graph* %18, i32* %53, %struct.t_ilist* %arrayidx53, i32 %natoms, i32 0) #5
  br label %for.inc55

for.inc55:                                        ; preds = %for.body43, %if.then49
  %indvars.iv.next147 = add i64 %indvars.iv146, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next147 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 44
  br i1 %exitcond, label %if.end68, label %for.body43

if.else58:                                        ; preds = %for.end
  %54 = load i32** %functype.i, align 8, !tbaa !3
  %arrayidx61 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 27
  tail call fastcc void @mk_igraph(%struct.t_graph* %18, i32* %54, %struct.t_ilist* %arrayidx61, i32 %natoms, i32 1) #5
  %tobool62 = icmp eq i32 %bSettle, 0
  br i1 %tobool62, label %if.end68, label %if.then63

if.then63:                                        ; preds = %if.else58
  %55 = load i32** %functype.i, align 8, !tbaa !3
  %arrayidx66 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 29
  tail call fastcc void @mk_igraph(%struct.t_graph* %18, i32* %55, %struct.t_ilist* %arrayidx66, i32 %natoms, i32 1) #5
  br label %if.end68

if.end68:                                         ; preds = %for.inc55, %if.else58, %if.then63
  %nbound = getelementptr inbounds i8* %call, i64 8
  %56 = bitcast i8* %nbound to i32*
  store i32 0, i32* %56, align 4, !tbaa !0
  %57 = load i32* %28, align 4, !tbaa !0
  %cmp71140 = icmp sgt i32 %57, 0
  br i1 %cmp71140, label %for.body72.lr.ph, label %if.end84

for.body72.lr.ph:                                 ; preds = %if.end68
  %58 = load i32** %33, align 8, !tbaa !3
  br label %for.body72

for.body72:                                       ; preds = %for.body72.lr.ph, %for.inc81
  %59 = phi i32 [ 0, %for.body72.lr.ph ], [ %61, %for.inc81 ]
  %indvars.iv = phi i64 [ 0, %for.body72.lr.ph ], [ %indvars.iv.next, %for.inc81 ]
  %arrayidx75 = getelementptr inbounds i32* %58, i64 %indvars.iv
  %60 = load i32* %arrayidx75, align 4, !tbaa !0
  %cmp76 = icmp sgt i32 %60, 0
  br i1 %cmp76, label %if.then77, label %for.inc81

if.then77:                                        ; preds = %for.body72
  %inc79 = add nsw i32 %59, 1
  store i32 %inc79, i32* %56, align 4, !tbaa !0
  br label %for.inc81

for.inc81:                                        ; preds = %for.body72, %if.then77
  %61 = phi i32 [ %59, %for.body72 ], [ %inc79, %if.then77 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %62 = trunc i64 %indvars.iv.next to i32
  %cmp71 = icmp slt i32 %62, %57
  br i1 %cmp71, label %for.body72, label %if.end84

if.end84:                                         ; preds = %if.end68, %for.inc81, %if.then
  ret %struct.t_graph* %18
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @mk_igraph(%struct.t_graph* nocapture %g, i32* nocapture %ftype, %struct.t_ilist* nocapture %il, i32 %natoms, i32 %bAll) #0 {
entry:
  %waterh = alloca [3 x i32], align 4
  %nr = getelementptr inbounds %struct.t_ilist* %il, i64 0, i32 0
  %0 = load i32* %nr, align 4, !tbaa !0
  %cmp81 = icmp sgt i32 %0, 0
  br i1 %cmp81, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %iatoms = getelementptr inbounds %struct.t_ilist* %il, i64 0, i32 2
  %1 = load i32** %iatoms, align 8, !tbaa !3
  %arrayidx15 = getelementptr inbounds [3 x i32]* %waterh, i64 0, i64 0
  %arrayidx17 = getelementptr inbounds [3 x i32]* %waterh, i64 0, i64 1
  %arrayidx20 = getelementptr inbounds [3 x i32]* %waterh, i64 0, i64 2
  %tobool31 = icmp eq i32 %bAll, 0
  %start = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %nedge = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 5
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end46
  %ia.083 = phi i32* [ %1, %while.body.lr.ph ], [ %add.ptr, %if.end46 ]
  %i.082 = phi i32 [ 0, %while.body.lr.ph ], [ %add49, %if.end46 ]
  %2 = load i32* %ia.083, align 4, !tbaa !0
  %idxprom = sext i32 %2 to i64
  %arrayidx1 = getelementptr inbounds i32* %ftype, i64 %idxprom
  %3 = load i32* %arrayidx1, align 4, !tbaa !0
  %idxprom2 = sext i32 %3 to i64
  %nratoms = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %idxprom2, i32 2
  %4 = load i32* %nratoms, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds i32* %ia.083, i64 1
  %5 = load i32* %arrayidx4, align 4, !tbaa !0
  %cmp5 = icmp slt i32 %5, %natoms
  br i1 %cmp5, label %land.lhs.true, label %if.end46

land.lhs.true:                                    ; preds = %while.body
  %flags = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %idxprom2, i32 5
  %6 = load i64* %flags, align 8, !tbaa !4
  %and = and i64 %6, 8
  %tobool = icmp eq i64 %and, 0
  br i1 %tobool, label %if.end46, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %idxprom8 = sext i32 %4 to i64
  %arrayidx9 = getelementptr inbounds i32* %ia.083, i64 %idxprom8
  %7 = load i32* %arrayidx9, align 4, !tbaa !0
  %cmp10 = icmp slt i32 %7, %natoms
  br i1 %cmp10, label %if.end, label %if.then11

if.then11:                                        ; preds = %if.then
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([227 x i8]* @.str21, i64 0, i64 0), i32 %natoms, i32 %natoms) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then11
  %cmp12 = icmp eq i32 %3, 29
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end
  %8 = load i32* %arrayidx4, align 4, !tbaa !0
  store i32 %8, i32* %arrayidx15, align 4, !tbaa !0
  %9 = load i32* %arrayidx4, align 4, !tbaa !0
  %add = add nsw i32 %9, 1
  store i32 %add, i32* %arrayidx17, align 4, !tbaa !0
  %10 = load i32* %arrayidx4, align 4, !tbaa !0
  %add19 = add nsw i32 %10, 2
  store i32 %add19, i32* %arrayidx20, align 4, !tbaa !0
  br label %if.end30

if.else:                                          ; preds = %if.end
  %11 = load i64* %flags, align 8, !tbaa !4
  %and24 = and i64 %11, 2
  %tobool25 = icmp eq i64 %and24, 0
  %. = select i1 %tobool25, i32 %4, i32 2
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then13
  %iap.0 = phi i32* [ %arrayidx15, %if.then13 ], [ %arrayidx4, %if.else ]
  %nbonded.1 = phi i32 [ 3, %if.then13 ], [ %., %if.else ]
  br i1 %tobool31, label %for.cond.preheader, label %if.then32

for.cond.preheader:                               ; preds = %if.end30
  %cmp3479 = icmp sgt i32 %nbonded.1, 0
  br i1 %cmp3479, label %for.body.lr.ph, label %if.end46

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %12 = load i32* %start, align 4, !tbaa !0
  %13 = load i32** %nedge, align 8, !tbaa !3
  br label %for.body

if.then32:                                        ; preds = %if.end30
  call fastcc void @add_gbond(%struct.t_graph* %g, i32* %iap.0, i32 %nbonded.1) #5
  br label %if.end46

for.cond:                                         ; preds = %for.body
  %14 = trunc i64 %indvars.iv.next to i32
  %cmp34 = icmp slt i32 %14, %nbonded.1
  br i1 %cmp34, label %for.body, label %if.end46

for.body:                                         ; preds = %for.cond, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %arrayidx36 = getelementptr inbounds i32* %iap.0, i64 %indvars.iv
  %15 = load i32* %arrayidx36, align 4, !tbaa !0
  %sub = sub nsw i32 %15, %12
  %idxprom37 = sext i32 %sub to i64
  %arrayidx38 = getelementptr inbounds i32* %13, i64 %idxprom37
  %16 = load i32* %arrayidx38, align 4, !tbaa !0
  %cmp39 = icmp eq i32 %16, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp39, label %if.then43, label %for.cond

if.then43:                                        ; preds = %for.body
  call fastcc void @add_gbond(%struct.t_graph* %g, i32* %iap.0, i32 %nbonded.1) #5
  br label %if.end46

if.end46:                                         ; preds = %for.cond.preheader, %for.cond, %land.lhs.true, %if.then32, %if.then43, %while.body
  %add47 = add nsw i32 %4, 1
  %idx.ext = sext i32 %add47 to i64
  %add.ptr = getelementptr inbounds i32* %ia.083, i64 %idx.ext
  %add49 = add nsw i32 %add47, %i.082
  %cmp = icmp slt i32 %add49, %0
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %if.end46, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @done_graph(%struct.t_graph* nocapture %g) #0 {
entry:
  %nnodes = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 1
  %0 = load i32* %nnodes, align 4, !tbaa !0
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %1 = load [3 x i32]** %ishift, align 8, !tbaa !3
  %2 = bitcast [3 x i32]* %1 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str11, i64 0, i64 0), i32 294, i8* %2) #4
  %nedge = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 5
  %3 = load i32** %nedge, align 8, !tbaa !3
  %4 = bitcast i32* %3 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str11, i64 0, i64 0), i32 295, i8* %4) #4
  %edge = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 6
  %5 = load i32*** %edge, align 8, !tbaa !3
  %6 = load i32** %5, align 8, !tbaa !3
  %7 = bitcast i32* %6 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([11 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str11, i64 0, i64 0), i32 297, i8* %7) #4
  %8 = load i32*** %edge, align 8, !tbaa !3
  %9 = bitcast i32** %8 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str11, i64 0, i64 0), i32 298, i8* %9) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @mk_mshift(%struct._IO_FILE* %log, %struct.t_graph* nocapture %g, [3 x float]* nocapture %box, [3 x float]* nocapture %x) #0 {
entry:
  %dx.i.i = alloca [3 x float], align 4
  %hbox.i = alloca [3 x float], align 4
  %is_aj.i = alloca [3 x i32], align 4
  %nnodes1 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 1
  %0 = load i32* %nnodes1, align 4, !tbaa !0
  %cmp140 = icmp sgt i32 %0, 0
  br i1 %cmp140, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %1 = load [3 x i32]** %ishift, align 8, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx2 = getelementptr inbounds [3 x i32]* %1, i64 %indvars.iv, i64 2
  store i32 0, i32* %arrayidx2, align 4, !tbaa !0
  %arrayidx6 = getelementptr inbounds [3 x i32]* %1, i64 %indvars.iv, i64 1
  store i32 0, i32* %arrayidx6, align 4, !tbaa !0
  %arrayidx10 = getelementptr inbounds [3 x i32]* %1, i64 %indvars.iv, i64 0
  store i32 0, i32* %arrayidx10, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %2 = load i32* %nnodes1, align 4, !tbaa !0
  %3 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %3, %2
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %.lcssa = phi i32 [ %0, %entry ], [ %2, %for.body ]
  %nbound = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 2
  %4 = load i32* %nbound, align 4, !tbaa !0
  %tobool = icmp eq i32 %4, 0
  br i1 %tobool, label %if.end49, label %if.end

if.end:                                           ; preds = %for.end
  %5 = load i32* @mk_mshift.negc, align 4, !tbaa !0
  %cmp12 = icmp sgt i32 %.lcssa, %5
  br i1 %cmp12, label %if.then13, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  %.pre148 = load i32** @mk_mshift.egc, align 8, !tbaa !3
  br label %if.end15

if.then13:                                        ; preds = %if.end
  store i32 %.lcssa, i32* @mk_mshift.negc, align 4, !tbaa !0
  %6 = load i32** @mk_mshift.egc, align 8, !tbaa !3
  %7 = bitcast i32* %6 to i8*
  %mul = shl i32 %.lcssa, 2
  %call = call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str11, i64 0, i64 0), i32 435, i8* %7, i32 %mul) #4
  %8 = bitcast i8* %call to i32*
  store i32* %8, i32** @mk_mshift.egc, align 8, !tbaa !3
  br label %if.end15

if.end15:                                         ; preds = %if.end.if.end15_crit_edge, %if.then13
  %9 = phi i32* [ %.pre148, %if.end.if.end15_crit_edge ], [ %8, %if.then13 ]
  %10 = bitcast i32* %9 to i8*
  %conv16 = sext i32 %.lcssa to i64
  %mul17 = shl nsw i64 %conv16, 2
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 %mul17, i32 4, i1 false)
  %11 = load i32* %nbound, align 4, !tbaa !0
  %cmp19133 = icmp sgt i32 %11, 0
  br i1 %cmp19133, label %while.body.lr.ph, label %if.end49

while.body.lr.ph:                                 ; preds = %if.end15
  %nedge.i = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 5
  %12 = bitcast [3 x float]* %hbox.i to i8*
  %13 = bitcast [3 x i32]* %is_aj.i to i8*
  %arrayidx7.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %start.i = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %edge.i = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 6
  %ishift.i = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %arraydecay43.i = getelementptr inbounds [3 x i32]* %is_aj.i, i64 0, i64 0
  %14 = bitcast [3 x float]* %dx.i.i to i8*
  %arraydecay.i.i = getelementptr inbounds [3 x float]* %dx.i.i, i64 0, i64 0
  %arrayidx9.i.i.i = getelementptr inbounds [3 x float]* %dx.i.i, i64 0, i64 1
  %arrayidx10.i.i.i = getelementptr inbounds [3 x float]* %dx.i.i, i64 0, i64 2
  %arrayidx2.i3.i = getelementptr inbounds [3 x i32]* %is_aj.i, i64 0, i64 1
  %arrayidx4.i.i = getelementptr inbounds [3 x i32]* %is_aj.i, i64 0, i64 2
  %arrayidx12.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %arrayidx18.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  br label %while.body

while.cond.loopexit:                              ; preds = %mk_grey.exit, %if.end25
  %nG.1.lcssa = phi i32 [ %inc28, %if.end25 ], [ %add, %mk_grey.exit ]
  %nW.1.lcssa = phi i32 [ %dec, %if.end25 ], [ %sub, %mk_grey.exit ]
  %inc100.i105.lcssa = phi i32 [ %inc100.i104134, %if.end25 ], [ %inc100.i106, %mk_grey.exit ]
  %cmp19 = icmp sgt i32 %nW.1.lcssa, 0
  br i1 %cmp19, label %while.body, label %while.end43

while.body:                                       ; preds = %while.cond.loopexit, %while.body.lr.ph
  %fW.0138 = phi i32 [ 0, %while.body.lr.ph ], [ %retval.0.i115, %while.cond.loopexit ]
  %nG.0136 = phi i32 [ 0, %while.body.lr.ph ], [ %nG.1.lcssa, %while.cond.loopexit ]
  %nW.0135 = phi i32 [ %11, %while.body.lr.ph ], [ %nW.1.lcssa, %while.cond.loopexit ]
  %inc100.i104134 = phi i32 [ 0, %while.body.lr.ph ], [ %inc100.i105.lcssa, %while.cond.loopexit ]
  %15 = load i32** @mk_mshift.egc, align 8, !tbaa !3
  %16 = load i32* %nnodes1, align 4, !tbaa !0
  %cmp10.i = icmp sgt i32 %16, %fW.0138
  br i1 %cmp10.i, label %for.body.lr.ph.i, label %if.then24

for.body.lr.ph.i:                                 ; preds = %while.body
  %17 = load i32** %nedge.i, align 8, !tbaa !3
  %18 = sext i32 %fW.0138 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ %18, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %i.011.i = phi i32 [ %fW.0138, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i ]
  %arrayidx.i = getelementptr inbounds i32* %17, i64 %indvars.iv.i
  %19 = load i32* %arrayidx.i, align 4, !tbaa !0
  %cmp1.i = icmp sgt i32 %19, 0
  br i1 %cmp1.i, label %land.lhs.true.i, label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx3.i = getelementptr inbounds i32* %15, i64 %indvars.iv.i
  %20 = load i32* %arrayidx3.i, align 4, !tbaa !1
  %cmp4.i = icmp eq i32 %20, 0
  br i1 %cmp4.i, label %first_colour.exit, label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i, %for.body.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %inc.i = add nsw i32 %i.011.i, 1
  %21 = trunc i64 %indvars.iv.next.i to i32
  %cmp.i = icmp slt i32 %21, %16
  br i1 %cmp.i, label %for.body.i, label %if.then24

first_colour.exit:                                ; preds = %land.lhs.true.i
  %cmp22 = icmp eq i32 %i.011.i, -1
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.inc.i, %while.body, %first_colour.exit
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str18, i64 0, i64 0), i32 %nW.0135) #4
  %.pre = load i32** @mk_mshift.egc, align 8, !tbaa !3
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %first_colour.exit
  %22 = phi i32* [ %.pre, %if.then24 ], [ %15, %first_colour.exit ]
  %retval.0.i115 = phi i32 [ -1, %if.then24 ], [ %i.011.i, %first_colour.exit ]
  %idxprom26 = sext i32 %retval.0.i115 to i64
  %arrayidx27 = getelementptr inbounds i32* %22, i64 %idxprom26
  store i32 1, i32* %arrayidx27, align 4, !tbaa !1
  %inc28 = add nsw i32 %nG.0136, 1
  %dec = add nsw i32 %nW.0135, -1
  %cmp30124 = icmp sgt i32 %nG.0136, -1
  br i1 %cmp30124, label %while.body32, label %while.cond.loopexit

while.body32:                                     ; preds = %mk_grey.exit, %if.end25
  %nG.1128 = phi i32 [ %inc28, %if.end25 ], [ %add, %mk_grey.exit ]
  %nW.1127 = phi i32 [ %dec, %if.end25 ], [ %sub, %mk_grey.exit ]
  %inc100.i105126 = phi i32 [ %inc100.i104134, %if.end25 ], [ %inc100.i106, %mk_grey.exit ]
  %sub.i112125 = phi i32 [ %retval.0.i115, %if.end25 ], [ %sub.i113, %mk_grey.exit ]
  %23 = load i32** @mk_mshift.egc, align 8, !tbaa !3
  %24 = load i32* %nnodes1, align 4, !tbaa !0
  %cmp10.i83 = icmp sgt i32 %24, %sub.i112125
  br i1 %cmp10.i83, label %for.body.lr.ph.i85, label %if.then36

for.body.lr.ph.i85:                               ; preds = %while.body32
  %25 = load i32** %nedge.i, align 8, !tbaa !3
  %26 = sext i32 %sub.i112125 to i64
  br label %for.body.i90

for.body.i90:                                     ; preds = %for.inc.i97, %for.body.lr.ph.i85
  %indvars.iv.i86 = phi i64 [ %26, %for.body.lr.ph.i85 ], [ %indvars.iv.next.i94, %for.inc.i97 ]
  %i.011.i87 = phi i32 [ %sub.i112125, %for.body.lr.ph.i85 ], [ %inc.i95, %for.inc.i97 ]
  %arrayidx.i88 = getelementptr inbounds i32* %25, i64 %indvars.iv.i86
  %27 = load i32* %arrayidx.i88, align 4, !tbaa !0
  %cmp1.i89 = icmp sgt i32 %27, 0
  br i1 %cmp1.i89, label %land.lhs.true.i93, label %for.inc.i97

land.lhs.true.i93:                                ; preds = %for.body.i90
  %arrayidx3.i91 = getelementptr inbounds i32* %23, i64 %indvars.iv.i86
  %28 = load i32* %arrayidx3.i91, align 4, !tbaa !1
  %cmp4.i92 = icmp eq i32 %28, 1
  br i1 %cmp4.i92, label %first_colour.exit99, label %for.inc.i97

for.inc.i97:                                      ; preds = %land.lhs.true.i93, %for.body.i90
  %indvars.iv.next.i94 = add i64 %indvars.iv.i86, 1
  %inc.i95 = add nsw i32 %i.011.i87, 1
  %29 = trunc i64 %indvars.iv.next.i94 to i32
  %cmp.i96 = icmp slt i32 %29, %24
  br i1 %cmp.i96, label %for.body.i90, label %if.then36

first_colour.exit99:                              ; preds = %land.lhs.true.i93
  %cmp34 = icmp eq i32 %i.011.i87, -1
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %for.inc.i97, %while.body32, %first_colour.exit99
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([33 x i8]* @.str19, i64 0, i64 0), i32 %nG.1128) #4
  %.pre147 = load i32** @mk_mshift.egc, align 8, !tbaa !3
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %first_colour.exit99
  %30 = phi i32* [ %.pre147, %if.then36 ], [ %23, %first_colour.exit99 ]
  %retval.0.i98118 = phi i32 [ -1, %if.then36 ], [ %i.011.i87, %first_colour.exit99 ]
  %idxprom38 = sext i32 %retval.0.i98118 to i64
  %arrayidx39 = getelementptr inbounds i32* %30, i64 %idxprom38
  store i32 2, i32* %arrayidx39, align 4, !tbaa !1
  %31 = load i32** @mk_mshift.egc, align 8, !tbaa !3
  call void @llvm.lifetime.start(i64 12, i8* %12) #3
  call void @llvm.lifetime.start(i64 12, i8* %13) #3
  br label %for.body.i78

for.body.i78:                                     ; preds = %for.body.i78, %if.end37
  %indvars.iv37.i = phi i64 [ 0, %if.end37 ], [ %indvars.iv.next38.i, %for.body.i78 ]
  %arrayidx2.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv37.i, i64 %indvars.iv37.i
  %32 = load float* %arrayidx2.i, align 4, !tbaa !6
  %conv3.i = fmul float %32, 5.000000e-01
  %arrayidx5.i = getelementptr inbounds [3 x float]* %hbox.i, i64 0, i64 %indvars.iv37.i
  store float %conv3.i, float* %arrayidx5.i, align 4, !tbaa !6
  %indvars.iv.next38.i = add i64 %indvars.iv37.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next38.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end.i, label %for.body.i78

for.end.i:                                        ; preds = %for.body.i78
  %dec41 = add nsw i32 %nG.1128, -1
  %33 = load float* %arrayidx7.i, align 4, !tbaa !6
  %fabsf.i = call float @fabsf(float %33) #6
  %34 = fpext float %fabsf.i to double
  %cmp9.i = fcmp ogt double %34, 1.200000e-38
  br i1 %cmp9.i, label %lor.end.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.end.i
  %35 = load float* %arrayidx12.i, align 4, !tbaa !6
  %fabsf1.i = call float @fabsf(float %35) #6
  %36 = fpext float %fabsf1.i to double
  %cmp15.i = fcmp ogt double %36, 1.200000e-38
  br i1 %cmp15.i, label %lor.end.i, label %lor.rhs.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %37 = load float* %arrayidx18.i, align 4, !tbaa !6
  %fabsf2.i = call float @fabsf(float %37) #6
  %38 = fpext float %fabsf2.i to double
  %cmp21.i = fcmp ogt double %38, 1.200000e-38
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %lor.lhs.false.i, %for.end.i
  %39 = phi i1 [ true, %lor.lhs.false.i ], [ true, %for.end.i ], [ %cmp21.i, %lor.rhs.i ]
  %40 = load i32* %start.i, align 4, !tbaa !0
  %41 = load i32** %nedge.i, align 8, !tbaa !3
  %arrayidx2532.i = getelementptr inbounds i32* %41, i64 %idxprom38
  %42 = load i32* %arrayidx2532.i, align 4, !tbaa !0
  %cmp2633.i = icmp sgt i32 %42, 0
  br i1 %cmp2633.i, label %for.body28.lr.ph.i, label %mk_grey.exit

for.body28.lr.ph.i:                               ; preds = %lor.end.i
  %add.i = add nsw i32 %40, %retval.0.i98118
  %idxprom33.i = sext i32 %add.i to i64
  %arraydecay35.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom33.i, i64 0
  %arrayidx2.i.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom33.i, i64 1
  %arrayidx5.i.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom33.i, i64 2
  %.pre.i = load [3 x i32]** %ishift.i, align 8, !tbaa !3
  br label %for.body28.i

for.body28.i:                                     ; preds = %for.inc103.i, %for.body28.lr.ph.i
  %sub.i109 = phi i32 [ %retval.0.i98118, %for.body28.lr.ph.i ], [ %sub.i110, %for.inc103.i ]
  %inc100.i107 = phi i32 [ %inc100.i105126, %for.body28.lr.ph.i ], [ %inc100.i108, %for.inc103.i ]
  %43 = phi i32* [ %41, %for.body28.lr.ph.i ], [ %81, %for.inc103.i ]
  %44 = phi [3 x i32]* [ %.pre.i, %for.body28.lr.ph.i ], [ %82, %for.inc103.i ]
  %indvars.iv.i80 = phi i64 [ 0, %for.body28.lr.ph.i ], [ %indvars.iv.next.i81, %for.inc103.i ]
  %ng.034.i = phi i32 [ 0, %for.body28.lr.ph.i ], [ %ng.1.i, %for.inc103.i ]
  %45 = load i32*** %edge.i, align 8, !tbaa !3
  %arrayidx31.i = getelementptr inbounds i32** %45, i64 %idxprom38
  %46 = load i32** %arrayidx31.i, align 8, !tbaa !3
  %arrayidx32.i = getelementptr inbounds i32* %46, i64 %indvars.iv.i80
  %47 = load i32* %arrayidx32.i, align 4, !tbaa !0
  %sub.i = sub nsw i32 %47, %40
  %idxprom37.i = sext i32 %47 to i64
  %arraydecay39.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom37.i, i64 0
  call void @llvm.lifetime.start(i64 12, i8* %14) #3
  %48 = load float* %arraydecay35.i, align 4, !tbaa !6
  %49 = load float* %arraydecay39.i, align 4, !tbaa !6
  %sub.i.i.i = fsub float %48, %49
  %50 = load float* %arrayidx2.i.i.i, align 4, !tbaa !6
  %arrayidx3.i.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom37.i, i64 1
  %51 = load float* %arrayidx3.i.i.i, align 4, !tbaa !6
  %sub4.i.i.i = fsub float %50, %51
  %52 = load float* %arrayidx5.i.i.i, align 4, !tbaa !6
  %arrayidx6.i.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom37.i, i64 2
  %53 = load float* %arrayidx6.i.i.i, align 4, !tbaa !6
  %sub7.i.i.i = fsub float %52, %53
  store float %sub.i.i.i, float* %arraydecay.i.i, align 4, !tbaa !6
  store float %sub4.i.i.i, float* %arrayidx9.i.i.i, align 4, !tbaa !6
  store float %sub7.i.i.i, float* %arrayidx10.i.i.i, align 4, !tbaa !6
  br i1 %39, label %for.body.i.i, label %for.body.i19.i

for.body.i.i:                                     ; preds = %for.body28.i, %for.inc50.for.body_crit_edge.i.i
  %54 = phi float [ %.pre.i.i, %for.inc50.for.body_crit_edge.i.i ], [ %sub7.i.i.i, %for.body28.i ]
  %indvars.iv92.i.i = phi i64 [ %indvars.iv.next93.i.i, %for.inc50.for.body_crit_edge.i.i ], [ 2, %for.body28.i ]
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %hbox.i, i64 0, i64 %indvars.iv92.i.i
  %55 = load float* %arrayidx2.i.i, align 4, !tbaa !6
  %sub.i.i = fsub float -0.000000e+00, %55
  %cmp3.i.i = fcmp olt float %54, %sub.i.i
  br i1 %cmp3.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %arrayidx5.i.i = getelementptr inbounds [3 x i32]* %44, i64 %idxprom38, i64 %indvars.iv92.i.i
  %56 = load i32* %arrayidx5.i.i, align 4, !tbaa !0
  %sub6.i.i = add nsw i32 %56, -1
  %arrayidx8.i.i = getelementptr inbounds [3 x i32]* %is_aj.i, i64 0, i64 %indvars.iv92.i.i
  store i32 %sub6.i.i, i32* %arrayidx8.i.i, align 4, !tbaa !0
  %57 = trunc i64 %indvars.iv92.i.i to i32
  %cmp1183.i.i = icmp sgt i32 %57, 0
  br i1 %cmp1183.i.i, label %for.body12.i.i, label %if.end.i

for.body12.i.i:                                   ; preds = %for.body12.i.i, %if.then.i.i
  %indvars.iv90.i.i = phi i64 [ %indvars.iv92.i.i, %if.then.i.i ], [ %indvars.iv.next91.i.i, %for.body12.i.i ]
  %indvars.iv.next91.i.i = add i64 %indvars.iv90.i.i, -1
  %arrayidx16.i.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv92.i.i, i64 %indvars.iv.next91.i.i
  %58 = load float* %arrayidx16.i.i, align 4, !tbaa !6
  %arrayidx18.i.i = getelementptr inbounds [3 x float]* %dx.i.i, i64 0, i64 %indvars.iv.next91.i.i
  %59 = load float* %arrayidx18.i.i, align 4, !tbaa !6
  %add.i.i = fadd float %58, %59
  store float %add.i.i, float* %arrayidx18.i.i, align 4, !tbaa !6
  %60 = trunc i64 %indvars.iv.next91.i.i to i32
  %cmp11.i.i = icmp sgt i32 %60, 0
  br i1 %cmp11.i.i, label %for.body12.i.i, label %for.inc50.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  %cmp23.i.i = fcmp ult float %54, %55
  %arrayidx26.i.i = getelementptr inbounds [3 x i32]* %44, i64 %idxprom38, i64 %indvars.iv92.i.i
  %61 = load i32* %arrayidx26.i.i, align 4, !tbaa !0
  br i1 %cmp23.i.i, label %if.else44.i.i, label %if.then24.i.i

if.then24.i.i:                                    ; preds = %if.else.i.i
  %add27.i.i = add nsw i32 %61, 1
  %arrayidx29.i.i = getelementptr inbounds [3 x i32]* %is_aj.i, i64 0, i64 %indvars.iv92.i.i
  store i32 %add27.i.i, i32* %arrayidx29.i.i, align 4, !tbaa !0
  %62 = trunc i64 %indvars.iv92.i.i to i32
  %cmp3279.i.i = icmp sgt i32 %62, 0
  br i1 %cmp3279.i.i, label %for.body33.i.i, label %if.end.i

for.body33.i.i:                                   ; preds = %for.body33.i.i, %if.then24.i.i
  %indvars.iv86.i.i = phi i64 [ %indvars.iv92.i.i, %if.then24.i.i ], [ %indvars.iv.next87.i.i, %for.body33.i.i ]
  %indvars.iv.next87.i.i = add i64 %indvars.iv86.i.i, -1
  %arrayidx37.i.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv92.i.i, i64 %indvars.iv.next87.i.i
  %63 = load float* %arrayidx37.i.i, align 4, !tbaa !6
  %arrayidx39.i.i = getelementptr inbounds [3 x float]* %dx.i.i, i64 0, i64 %indvars.iv.next87.i.i
  %64 = load float* %arrayidx39.i.i, align 4, !tbaa !6
  %sub40.i.i = fsub float %64, %63
  store float %sub40.i.i, float* %arrayidx39.i.i, align 4, !tbaa !6
  %65 = trunc i64 %indvars.iv.next87.i.i to i32
  %cmp32.i.i = icmp sgt i32 %65, 0
  br i1 %cmp32.i.i, label %for.body33.i.i, label %for.inc50.i.i

if.else44.i.i:                                    ; preds = %if.else.i.i
  %arrayidx48.i.i = getelementptr inbounds [3 x i32]* %is_aj.i, i64 0, i64 %indvars.iv92.i.i
  store i32 %61, i32* %arrayidx48.i.i, align 4, !tbaa !0
  %.pre94.i.i = trunc i64 %indvars.iv92.i.i to i32
  br label %for.inc50.i.i

for.inc50.i.i:                                    ; preds = %for.body12.i.i, %for.body33.i.i, %if.else44.i.i
  %.pre-phi.i.i = phi i32 [ %.pre94.i.i, %if.else44.i.i ], [ %62, %for.body33.i.i ], [ %57, %for.body12.i.i ]
  %indvars.iv.next93.i.i = add i64 %indvars.iv92.i.i, -1
  %cmp.i.i = icmp sgt i32 %.pre-phi.i.i, 0
  br i1 %cmp.i.i, label %for.inc50.for.body_crit_edge.i.i, label %if.end.i

for.inc50.for.body_crit_edge.i.i:                 ; preds = %for.inc50.i.i
  %arrayidx.phi.trans.insert.i.i = getelementptr inbounds [3 x float]* %dx.i.i, i64 0, i64 %indvars.iv.next93.i.i
  %.pre.i.i = load float* %arrayidx.phi.trans.insert.i.i, align 4, !tbaa !6
  br label %for.body.i.i

for.body.i19.i:                                   ; preds = %for.body28.i, %for.inc.for.body_crit_edge.i.i
  %66 = phi float [ %.pre.i29.i, %for.inc.for.body_crit_edge.i.i ], [ %sub.i.i.i, %for.body28.i ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.inc.for.body_crit_edge.i.i ], [ 0, %for.body28.i ]
  %arrayidx2.i16.i = getelementptr inbounds [3 x float]* %hbox.i, i64 0, i64 %indvars.iv.i.i
  %67 = load float* %arrayidx2.i16.i, align 4, !tbaa !6
  %sub.i17.i = fsub float -0.000000e+00, %67
  %cmp3.i18.i = fcmp olt float %66, %sub.i17.i
  br i1 %cmp3.i18.i, label %if.then.i23.i, label %if.else.i25.i

if.then.i23.i:                                    ; preds = %for.body.i19.i
  %arrayidx5.i20.i = getelementptr inbounds [3 x i32]* %44, i64 %idxprom38, i64 %indvars.iv.i.i
  %68 = load i32* %arrayidx5.i20.i, align 4, !tbaa !0
  %sub6.i21.i = add nsw i32 %68, -1
  %arrayidx8.i22.i = getelementptr inbounds [3 x i32]* %is_aj.i, i64 0, i64 %indvars.iv.i.i
  store i32 %sub6.i21.i, i32* %arrayidx8.i22.i, align 4, !tbaa !0
  br label %for.inc.i.i

if.else.i25.i:                                    ; preds = %for.body.i19.i
  %cmp13.i.i = fcmp ult float %66, %67
  %arrayidx16.i24.i = getelementptr inbounds [3 x i32]* %44, i64 %idxprom38, i64 %indvars.iv.i.i
  %69 = load i32* %arrayidx16.i24.i, align 4, !tbaa !0
  br i1 %cmp13.i.i, label %if.else19.i.i, label %if.then14.i.i

if.then14.i.i:                                    ; preds = %if.else.i25.i
  %add.i26.i = add nsw i32 %69, 1
  %arrayidx18.i27.i = getelementptr inbounds [3 x i32]* %is_aj.i, i64 0, i64 %indvars.iv.i.i
  store i32 %add.i26.i, i32* %arrayidx18.i27.i, align 4, !tbaa !0
  br label %for.inc.i.i

if.else19.i.i:                                    ; preds = %if.else.i25.i
  %arrayidx23.i.i = getelementptr inbounds [3 x i32]* %is_aj.i, i64 0, i64 %indvars.iv.i.i
  store i32 %69, i32* %arrayidx23.i.i, align 4, !tbaa !0
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else19.i.i, %if.then14.i.i, %if.then.i23.i
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond.i.i = icmp eq i32 %lftr.wideiv.i.i, 3
  br i1 %exitcond.i.i, label %if.end.i, label %for.inc.for.body_crit_edge.i.i

for.inc.for.body_crit_edge.i.i:                   ; preds = %for.inc.i.i
  %arrayidx.phi.trans.insert.i28.i = getelementptr inbounds [3 x float]* %dx.i.i, i64 0, i64 %indvars.iv.next.i.i
  %.pre.i29.i = load float* %arrayidx.phi.trans.insert.i28.i, align 4, !tbaa !6
  br label %for.body.i19.i

if.end.i:                                         ; preds = %for.inc50.i.i, %if.then24.i.i, %if.then.i.i, %for.inc.i.i
  %idxprom58.i = sext i32 %sub.i to i64
  %arrayidx59.i = getelementptr inbounds i32* %31, i64 %idxprom58.i
  %70 = load i32* %arrayidx59.i, align 4, !tbaa !1
  %cmp60.i = icmp eq i32 %70, 0
  br i1 %cmp60.i, label %if.then62.i, label %if.else75.i

if.then62.i:                                      ; preds = %if.end.i
  %cmp63.i = icmp slt i32 %sub.i, %sub.i109
  %sub.i.sub.i109 = select i1 %cmp63.i, i32 %sub.i, i32 %sub.i109
  store i32 1, i32* %arrayidx59.i, align 4, !tbaa !1
  %71 = load [3 x i32]** %ishift.i, align 8, !tbaa !3
  %arraydecay73.i = getelementptr inbounds [3 x i32]* %71, i64 %idxprom58.i, i64 0
  %72 = load i32* %arraydecay43.i, align 4, !tbaa !0
  store i32 %72, i32* %arraydecay73.i, align 4, !tbaa !0
  %73 = load i32* %arrayidx2.i3.i, align 4, !tbaa !0
  %arrayidx3.i.i = getelementptr inbounds [3 x i32]* %71, i64 %idxprom58.i, i64 1
  store i32 %73, i32* %arrayidx3.i.i, align 4, !tbaa !0
  %74 = load i32* %arrayidx4.i.i, align 4, !tbaa !0
  %arrayidx5.i4.i = getelementptr inbounds [3 x i32]* %71, i64 %idxprom58.i, i64 2
  store i32 %74, i32* %arrayidx5.i4.i, align 4, !tbaa !0
  %inc74.i = add nsw i32 %ng.034.i, 1
  %.pre39.i = load i32** %nedge.i, align 8, !tbaa !3
  br label %for.inc103.i

if.else75.i:                                      ; preds = %if.end.i
  %75 = load i32* %arraydecay43.i, align 4, !tbaa !0
  %arrayidx80.i = getelementptr inbounds [3 x i32]* %44, i64 %idxprom58.i, i64 0
  %76 = load i32* %arrayidx80.i, align 4, !tbaa !0
  %cmp81.i = icmp eq i32 %75, %76
  br i1 %cmp81.i, label %lor.lhs.false83.i, label %if.then99.i

lor.lhs.false83.i:                                ; preds = %if.else75.i
  %77 = load i32* %arrayidx2.i3.i, align 4, !tbaa !0
  %arrayidx88.i = getelementptr inbounds [3 x i32]* %44, i64 %idxprom58.i, i64 1
  %78 = load i32* %arrayidx88.i, align 4, !tbaa !0
  %cmp89.i = icmp eq i32 %77, %78
  br i1 %cmp89.i, label %lor.lhs.false91.i, label %if.then99.i

lor.lhs.false91.i:                                ; preds = %lor.lhs.false83.i
  %79 = load i32* %arrayidx4.i.i, align 4, !tbaa !0
  %arrayidx96.i = getelementptr inbounds [3 x i32]* %44, i64 %idxprom58.i, i64 2
  %80 = load i32* %arrayidx96.i, align 4, !tbaa !0
  %cmp97.i = icmp eq i32 %79, %80
  br i1 %cmp97.i, label %for.inc103.i, label %if.then99.i

if.then99.i:                                      ; preds = %lor.lhs.false91.i, %lor.lhs.false83.i, %if.else75.i
  %inc100.i = add nsw i32 %inc100.i107, 1
  br label %for.inc103.i

for.inc103.i:                                     ; preds = %if.then99.i, %lor.lhs.false91.i, %if.then62.i
  %sub.i110 = phi i32 [ %sub.i.sub.i109, %if.then62.i ], [ %sub.i109, %if.then99.i ], [ %sub.i109, %lor.lhs.false91.i ]
  %inc100.i108 = phi i32 [ %inc100.i107, %if.then62.i ], [ %inc100.i, %if.then99.i ], [ %inc100.i107, %lor.lhs.false91.i ]
  %81 = phi i32* [ %.pre39.i, %if.then62.i ], [ %43, %if.then99.i ], [ %43, %lor.lhs.false91.i ]
  %82 = phi [3 x i32]* [ %71, %if.then62.i ], [ %44, %if.then99.i ], [ %44, %lor.lhs.false91.i ]
  %ng.1.i = phi i32 [ %inc74.i, %if.then62.i ], [ %ng.034.i, %if.then99.i ], [ %ng.034.i, %lor.lhs.false91.i ]
  %indvars.iv.next.i81 = add i64 %indvars.iv.i80, 1
  %arrayidx25.i = getelementptr inbounds i32* %81, i64 %idxprom38
  %83 = load i32* %arrayidx25.i, align 4, !tbaa !0
  %84 = trunc i64 %indvars.iv.next.i81 to i32
  %cmp26.i = icmp slt i32 %84, %83
  br i1 %cmp26.i, label %for.body28.i, label %mk_grey.exit

mk_grey.exit:                                     ; preds = %for.inc103.i, %lor.end.i
  %sub.i113 = phi i32 [ %retval.0.i98118, %lor.end.i ], [ %sub.i110, %for.inc103.i ]
  %inc100.i106 = phi i32 [ %inc100.i105126, %lor.end.i ], [ %inc100.i108, %for.inc103.i ]
  %ng.0.lcssa.i = phi i32 [ 0, %lor.end.i ], [ %ng.1.i, %for.inc103.i ]
  call void @llvm.lifetime.end(i64 12, i8* %12) #3
  call void @llvm.lifetime.end(i64 12, i8* %13) #3
  %add = add nsw i32 %dec41, %ng.0.lcssa.i
  %sub = sub nsw i32 %nW.1127, %ng.0.lcssa.i
  %cmp30 = icmp sgt i32 %add, 0
  br i1 %cmp30, label %while.body32, label %while.cond.loopexit

while.end43:                                      ; preds = %while.cond.loopexit
  %cmp44 = icmp slt i32 %inc100.i105.lcssa, 1
  %tobool46 = icmp eq %struct._IO_FILE* %log, null
  %or.cond = or i1 %cmp44, %tobool46
  br i1 %or.cond, label %if.end49, label %if.then47

if.then47:                                        ; preds = %while.end43
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([56 x i8]* @.str20, i64 0, i64 0), i32 %inc100.i105.lcssa) #4
  br label %if.end49

if.end49:                                         ; preds = %if.end15, %while.end43, %for.end, %if.then47
  ret void
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @shift_atom(%struct.t_graph* nocapture %g, [3 x float]* nocapture %box, [3 x float]* nocapture %x, [3 x float]* nocapture %x_s, i32 %ai) #0 {
entry:
  %start = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %0 = load i32* %start, align 4, !tbaa !0
  %sub = sub nsw i32 %ai, %0
  %idxprom = sext i32 %sub to i64
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %1 = load [3 x i32]** %ishift, align 8, !tbaa !3
  %arrayidx1 = getelementptr inbounds [3 x i32]* %1, i64 %idxprom, i64 0
  %2 = load i32* %arrayidx1, align 4, !tbaa !0
  %arrayidx7 = getelementptr inbounds [3 x i32]* %1, i64 %idxprom, i64 1
  %3 = load i32* %arrayidx7, align 4, !tbaa !0
  %arrayidx13 = getelementptr inbounds [3 x i32]* %1, i64 %idxprom, i64 2
  %4 = load i32* %arrayidx13, align 4, !tbaa !0
  %idxprom14 = sext i32 %ai to i64
  %arrayidx16 = getelementptr inbounds [3 x float]* %x, i64 %idxprom14, i64 0
  %5 = load float* %arrayidx16, align 4, !tbaa !6
  %conv = sitofp i32 %2 to float
  %arrayidx18 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %6 = load float* %arrayidx18, align 4, !tbaa !6
  %mul = fmul float %conv, %6
  %add = fadd float %5, %mul
  %conv19 = sitofp i32 %3 to float
  %arrayidx21 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %7 = load float* %arrayidx21, align 4, !tbaa !6
  %mul22 = fmul float %conv19, %7
  %add23 = fadd float %add, %mul22
  %conv24 = sitofp i32 %4 to float
  %arrayidx26 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %8 = load float* %arrayidx26, align 4, !tbaa !6
  %mul27 = fmul float %conv24, %8
  %add28 = fadd float %add23, %mul27
  %arrayidx31 = getelementptr inbounds [3 x float]* %x_s, i64 %idxprom14, i64 0
  store float %add28, float* %arrayidx31, align 4, !tbaa !6
  %arrayidx34 = getelementptr inbounds [3 x float]* %x, i64 %idxprom14, i64 1
  %9 = load float* %arrayidx34, align 4, !tbaa !6
  %arrayidx37 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %10 = load float* %arrayidx37, align 4, !tbaa !6
  %mul38 = fmul float %conv19, %10
  %add39 = fadd float %9, %mul38
  %arrayidx42 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %11 = load float* %arrayidx42, align 4, !tbaa !6
  %mul43 = fmul float %conv24, %11
  %add44 = fadd float %add39, %mul43
  %arrayidx47 = getelementptr inbounds [3 x float]* %x_s, i64 %idxprom14, i64 1
  store float %add44, float* %arrayidx47, align 4, !tbaa !6
  %arrayidx50 = getelementptr inbounds [3 x float]* %x, i64 %idxprom14, i64 2
  %12 = load float* %arrayidx50, align 4, !tbaa !6
  %arrayidx53 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %13 = load float* %arrayidx53, align 4, !tbaa !6
  %mul54 = fmul float %conv24, %13
  %add55 = fadd float %12, %mul54
  %arrayidx58 = getelementptr inbounds [3 x float]* %x_s, i64 %idxprom14, i64 2
  store float %add55, float* %arrayidx58, align 4, !tbaa !6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @unshift_atom(%struct.t_graph* nocapture %g, [3 x float]* nocapture %box, [3 x float]* nocapture %x, [3 x float]* nocapture %x_s, i32 %ai) #0 {
entry:
  %start = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %0 = load i32* %start, align 4, !tbaa !0
  %sub = sub nsw i32 %ai, %0
  %idxprom = sext i32 %sub to i64
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %1 = load [3 x i32]** %ishift, align 8, !tbaa !3
  %arrayidx1 = getelementptr inbounds [3 x i32]* %1, i64 %idxprom, i64 0
  %2 = load i32* %arrayidx1, align 4, !tbaa !0
  %arrayidx7 = getelementptr inbounds [3 x i32]* %1, i64 %idxprom, i64 1
  %3 = load i32* %arrayidx7, align 4, !tbaa !0
  %arrayidx13 = getelementptr inbounds [3 x i32]* %1, i64 %idxprom, i64 2
  %4 = load i32* %arrayidx13, align 4, !tbaa !0
  %idxprom14 = sext i32 %ai to i64
  %arrayidx16 = getelementptr inbounds [3 x float]* %x, i64 %idxprom14, i64 0
  %5 = load float* %arrayidx16, align 4, !tbaa !6
  %conv = sitofp i32 %2 to float
  %arrayidx18 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %6 = load float* %arrayidx18, align 4, !tbaa !6
  %mul = fmul float %conv, %6
  %sub19 = fsub float %5, %mul
  %conv20 = sitofp i32 %3 to float
  %arrayidx22 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %7 = load float* %arrayidx22, align 4, !tbaa !6
  %mul23 = fmul float %conv20, %7
  %sub24 = fsub float %sub19, %mul23
  %conv25 = sitofp i32 %4 to float
  %arrayidx27 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %8 = load float* %arrayidx27, align 4, !tbaa !6
  %mul28 = fmul float %conv25, %8
  %sub29 = fsub float %sub24, %mul28
  %arrayidx32 = getelementptr inbounds [3 x float]* %x_s, i64 %idxprom14, i64 0
  store float %sub29, float* %arrayidx32, align 4, !tbaa !6
  %arrayidx35 = getelementptr inbounds [3 x float]* %x, i64 %idxprom14, i64 1
  %9 = load float* %arrayidx35, align 4, !tbaa !6
  %arrayidx38 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %10 = load float* %arrayidx38, align 4, !tbaa !6
  %mul39 = fmul float %conv20, %10
  %sub40 = fsub float %9, %mul39
  %arrayidx43 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %11 = load float* %arrayidx43, align 4, !tbaa !6
  %mul44 = fmul float %conv25, %11
  %sub45 = fsub float %sub40, %mul44
  %arrayidx48 = getelementptr inbounds [3 x float]* %x_s, i64 %idxprom14, i64 1
  store float %sub45, float* %arrayidx48, align 4, !tbaa !6
  %arrayidx51 = getelementptr inbounds [3 x float]* %x, i64 %idxprom14, i64 2
  %12 = load float* %arrayidx51, align 4, !tbaa !6
  %arrayidx54 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %13 = load float* %arrayidx54, align 4, !tbaa !6
  %mul55 = fmul float %conv25, %13
  %sub56 = fsub float %12, %mul55
  %arrayidx59 = getelementptr inbounds [3 x float]* %x_s, i64 %idxprom14, i64 2
  store float %sub56, float* %arrayidx59, align 4, !tbaa !6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @shift_x(%struct.t_graph* nocapture %g, [3 x float]* nocapture %box, [3 x float]* nocapture %x, [3 x float]* nocapture %x_s) #0 {
entry:
  %start = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %0 = load i32* %start, align 4, !tbaa !0
  %nnodes = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 1
  %1 = load i32* %nnodes, align 4, !tbaa !0
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %2 = load [3 x i32]** %ishift, align 8, !tbaa !3
  %arrayidx1 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %3 = load float* %arrayidx1, align 4, !tbaa !6
  %fabsf = tail call float @fabsf(float %3) #6
  %4 = fpext float %fabsf to double
  %cmp = fcmp ogt double %4, 1.200000e-38
  br i1 %cmp, label %for.cond.preheader, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %arrayidx4 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %5 = load float* %arrayidx4, align 4, !tbaa !6
  %fabsf181 = tail call float @fabsf(float %5) #6
  %6 = fpext float %fabsf181 to double
  %cmp7 = fcmp ogt double %6, 1.200000e-38
  br i1 %cmp7, label %for.cond.preheader, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %arrayidx11 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %7 = load float* %arrayidx11, align 4, !tbaa !6
  %fabsf182 = tail call float @fabsf(float %7) #6
  %8 = fpext float %fabsf182 to double
  %cmp14 = fcmp ogt double %8, 1.200000e-38
  br i1 %cmp14, label %for.cond.preheader, label %for.cond73.preheader

for.cond73.preheader:                             ; preds = %lor.lhs.false9
  %cmp74187 = icmp sgt i32 %1, 0
  br i1 %cmp74187, label %for.body76.lr.ph, label %if.end

for.body76.lr.ph:                                 ; preds = %for.cond73.preheader
  %arrayidx91 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %arrayidx102 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %arrayidx113 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %9 = sext i32 %0 to i64
  br label %for.body76

for.cond.preheader:                               ; preds = %lor.lhs.false9, %lor.lhs.false, %entry
  %cmp16183 = icmp sgt i32 %1, 0
  br i1 %cmp16183, label %for.body.lr.ph, label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx31 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %arrayidx39 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %arrayidx50 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %arrayidx55 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %arrayidx66 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %10 = sext i32 %0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %11 = phi float [ %3, %for.body.lr.ph ], [ %.pre, %for.body.for.body_crit_edge ]
  %indvars.iv190 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next191, %for.body.for.body_crit_edge ]
  %indvars.iv = phi i64 [ %10, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx19 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv190, i64 0
  %12 = load i32* %arrayidx19, align 4, !tbaa !0
  %arrayidx22 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv190, i64 1
  %13 = load i32* %arrayidx22, align 4, !tbaa !0
  %arrayidx25 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv190, i64 2
  %14 = load i32* %arrayidx25, align 4, !tbaa !0
  %arrayidx28 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %15 = load float* %arrayidx28, align 4, !tbaa !6
  %conv29 = sitofp i32 %12 to float
  %16 = load float* %arrayidx31, align 4, !tbaa !6
  %mul = fmul float %conv29, %16
  %add = fadd float %15, %mul
  %conv32 = sitofp i32 %13 to float
  %mul35 = fmul float %conv32, %11
  %add36 = fadd float %add, %mul35
  %conv37 = sitofp i32 %14 to float
  %17 = load float* %arrayidx39, align 4, !tbaa !6
  %mul40 = fmul float %conv37, %17
  %add41 = fadd float %add36, %mul40
  %arrayidx44 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv, i64 0
  store float %add41, float* %arrayidx44, align 4, !tbaa !6
  %arrayidx47 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  %18 = load float* %arrayidx47, align 4, !tbaa !6
  %19 = load float* %arrayidx50, align 4, !tbaa !6
  %mul51 = fmul float %conv32, %19
  %add52 = fadd float %18, %mul51
  %20 = load float* %arrayidx55, align 4, !tbaa !6
  %mul56 = fmul float %conv37, %20
  %add57 = fadd float %add52, %mul56
  %arrayidx60 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv, i64 1
  store float %add57, float* %arrayidx60, align 4, !tbaa !6
  %arrayidx63 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2
  %21 = load float* %arrayidx63, align 4, !tbaa !6
  %22 = load float* %arrayidx66, align 4, !tbaa !6
  %mul67 = fmul float %conv37, %22
  %add68 = fadd float %21, %mul67
  %arrayidx71 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv, i64 2
  store float %add68, float* %arrayidx71, align 4, !tbaa !6
  %indvars.iv.next191 = add i64 %indvars.iv190, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next191 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %1
  br i1 %exitcond, label %if.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  %indvars.iv.next = add i64 %indvars.iv, 1
  %.pre = load float* %arrayidx1, align 4, !tbaa !6
  br label %for.body

for.body76:                                       ; preds = %for.body76, %for.body76.lr.ph
  %indvars.iv194 = phi i64 [ 0, %for.body76.lr.ph ], [ %indvars.iv.next195, %for.body76 ]
  %indvars.iv192 = phi i64 [ %9, %for.body76.lr.ph ], [ %indvars.iv.next193, %for.body76 ]
  %arrayidx79 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv194, i64 0
  %23 = load i32* %arrayidx79, align 4, !tbaa !0
  %arrayidx82 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv194, i64 1
  %24 = load i32* %arrayidx82, align 4, !tbaa !0
  %arrayidx85 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv194, i64 2
  %25 = load i32* %arrayidx85, align 4, !tbaa !0
  %arrayidx88 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv192, i64 0
  %26 = load float* %arrayidx88, align 4, !tbaa !6
  %conv89 = sitofp i32 %23 to float
  %27 = load float* %arrayidx91, align 4, !tbaa !6
  %mul92 = fmul float %conv89, %27
  %add93 = fadd float %26, %mul92
  %arrayidx96 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv192, i64 0
  store float %add93, float* %arrayidx96, align 4, !tbaa !6
  %arrayidx99 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv192, i64 1
  %28 = load float* %arrayidx99, align 4, !tbaa !6
  %conv100 = sitofp i32 %24 to float
  %29 = load float* %arrayidx102, align 4, !tbaa !6
  %mul103 = fmul float %conv100, %29
  %add104 = fadd float %28, %mul103
  %arrayidx107 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv192, i64 1
  store float %add104, float* %arrayidx107, align 4, !tbaa !6
  %arrayidx110 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv192, i64 2
  %30 = load float* %arrayidx110, align 4, !tbaa !6
  %conv111 = sitofp i32 %25 to float
  %31 = load float* %arrayidx113, align 4, !tbaa !6
  %mul114 = fmul float %conv111, %31
  %add115 = fadd float %30, %mul114
  %arrayidx118 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv192, i64 2
  store float %add115, float* %arrayidx118, align 4, !tbaa !6
  %indvars.iv.next195 = add i64 %indvars.iv194, 1
  %indvars.iv.next193 = add i64 %indvars.iv192, 1
  %lftr.wideiv196 = trunc i64 %indvars.iv.next195 to i32
  %exitcond197 = icmp eq i32 %lftr.wideiv196, %1
  br i1 %exitcond197, label %if.end, label %for.body76

if.end:                                           ; preds = %for.cond73.preheader, %for.body76, %for.cond.preheader, %for.body
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @shift_self(%struct.t_graph* nocapture %g, [3 x float]* nocapture %box, [3 x float]* nocapture %x) #0 {
entry:
  %start = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %0 = load i32* %start, align 4, !tbaa !0
  %nnodes = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 1
  %1 = load i32* %nnodes, align 4, !tbaa !0
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %2 = load [3 x i32]** %ishift, align 8, !tbaa !3
  %arrayidx1 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %3 = load float* %arrayidx1, align 4, !tbaa !6
  %fabsf = tail call float @fabsf(float %3) #6
  %4 = fpext float %fabsf to double
  %cmp = fcmp ogt double %4, 1.200000e-38
  br i1 %cmp, label %for.cond.preheader, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %arrayidx4 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %5 = load float* %arrayidx4, align 4, !tbaa !6
  %fabsf182 = tail call float @fabsf(float %5) #6
  %6 = fpext float %fabsf182 to double
  %cmp7 = fcmp ogt double %6, 1.200000e-38
  br i1 %cmp7, label %for.cond.preheader, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %arrayidx11 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %7 = load float* %arrayidx11, align 4, !tbaa !6
  %fabsf183 = tail call float @fabsf(float %7) #6
  %8 = fpext float %fabsf183 to double
  %cmp14 = fcmp ogt double %8, 1.200000e-38
  br i1 %cmp14, label %for.cond.preheader, label %for.cond73.preheader

for.cond73.preheader:                             ; preds = %lor.lhs.false9
  %cmp74188 = icmp sgt i32 %1, 0
  br i1 %cmp74188, label %for.body76.lr.ph, label %if.end

for.body76.lr.ph:                                 ; preds = %for.cond73.preheader
  %arrayidx91 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %arrayidx102 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %arrayidx113 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %9 = sext i32 %0 to i64
  br label %for.body76

for.cond.preheader:                               ; preds = %lor.lhs.false9, %lor.lhs.false, %entry
  %cmp16184 = icmp sgt i32 %1, 0
  br i1 %cmp16184, label %for.body.lr.ph, label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx31 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %arrayidx39 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %arrayidx50 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %arrayidx55 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %arrayidx66 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %10 = sext i32 %0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %11 = phi float [ %3, %for.body.lr.ph ], [ %.pre, %for.body.for.body_crit_edge ]
  %indvars.iv191 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next192, %for.body.for.body_crit_edge ]
  %indvars.iv = phi i64 [ %10, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx19 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv191, i64 0
  %12 = load i32* %arrayidx19, align 4, !tbaa !0
  %arrayidx22 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv191, i64 1
  %13 = load i32* %arrayidx22, align 4, !tbaa !0
  %arrayidx25 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv191, i64 2
  %14 = load i32* %arrayidx25, align 4, !tbaa !0
  %arrayidx28 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %15 = load float* %arrayidx28, align 4, !tbaa !6
  %conv29 = sitofp i32 %12 to float
  %16 = load float* %arrayidx31, align 4, !tbaa !6
  %mul = fmul float %conv29, %16
  %add = fadd float %15, %mul
  %conv32 = sitofp i32 %13 to float
  %mul35 = fmul float %conv32, %11
  %add36 = fadd float %add, %mul35
  %conv37 = sitofp i32 %14 to float
  %17 = load float* %arrayidx39, align 4, !tbaa !6
  %mul40 = fmul float %conv37, %17
  %add41 = fadd float %add36, %mul40
  store float %add41, float* %arrayidx28, align 4, !tbaa !6
  %arrayidx47 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  %18 = load float* %arrayidx47, align 4, !tbaa !6
  %19 = load float* %arrayidx50, align 4, !tbaa !6
  %mul51 = fmul float %conv32, %19
  %add52 = fadd float %18, %mul51
  %20 = load float* %arrayidx55, align 4, !tbaa !6
  %mul56 = fmul float %conv37, %20
  %add57 = fadd float %add52, %mul56
  store float %add57, float* %arrayidx47, align 4, !tbaa !6
  %arrayidx63 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2
  %21 = load float* %arrayidx63, align 4, !tbaa !6
  %22 = load float* %arrayidx66, align 4, !tbaa !6
  %mul67 = fmul float %conv37, %22
  %add68 = fadd float %21, %mul67
  store float %add68, float* %arrayidx63, align 4, !tbaa !6
  %indvars.iv.next192 = add i64 %indvars.iv191, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next192 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %1
  br i1 %exitcond, label %if.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  %indvars.iv.next = add i64 %indvars.iv, 1
  %.pre = load float* %arrayidx1, align 4, !tbaa !6
  br label %for.body

for.body76:                                       ; preds = %for.body76, %for.body76.lr.ph
  %indvars.iv195 = phi i64 [ 0, %for.body76.lr.ph ], [ %indvars.iv.next196, %for.body76 ]
  %indvars.iv193 = phi i64 [ %9, %for.body76.lr.ph ], [ %indvars.iv.next194, %for.body76 ]
  %arrayidx79 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv195, i64 0
  %23 = load i32* %arrayidx79, align 4, !tbaa !0
  %arrayidx82 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv195, i64 1
  %24 = load i32* %arrayidx82, align 4, !tbaa !0
  %arrayidx85 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv195, i64 2
  %25 = load i32* %arrayidx85, align 4, !tbaa !0
  %arrayidx88 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv193, i64 0
  %26 = load float* %arrayidx88, align 4, !tbaa !6
  %conv89 = sitofp i32 %23 to float
  %27 = load float* %arrayidx91, align 4, !tbaa !6
  %mul92 = fmul float %conv89, %27
  %add93 = fadd float %26, %mul92
  store float %add93, float* %arrayidx88, align 4, !tbaa !6
  %arrayidx99 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv193, i64 1
  %28 = load float* %arrayidx99, align 4, !tbaa !6
  %conv100 = sitofp i32 %24 to float
  %29 = load float* %arrayidx102, align 4, !tbaa !6
  %mul103 = fmul float %conv100, %29
  %add104 = fadd float %28, %mul103
  store float %add104, float* %arrayidx99, align 4, !tbaa !6
  %arrayidx110 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv193, i64 2
  %30 = load float* %arrayidx110, align 4, !tbaa !6
  %conv111 = sitofp i32 %25 to float
  %31 = load float* %arrayidx113, align 4, !tbaa !6
  %mul114 = fmul float %conv111, %31
  %add115 = fadd float %30, %mul114
  store float %add115, float* %arrayidx110, align 4, !tbaa !6
  %indvars.iv.next196 = add i64 %indvars.iv195, 1
  %indvars.iv.next194 = add i64 %indvars.iv193, 1
  %lftr.wideiv197 = trunc i64 %indvars.iv.next196 to i32
  %exitcond198 = icmp eq i32 %lftr.wideiv197, %1
  br i1 %exitcond198, label %if.end, label %for.body76

if.end:                                           ; preds = %for.cond73.preheader, %for.body76, %for.cond.preheader, %for.body
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @unshift_x(%struct.t_graph* nocapture %g, [3 x float]* nocapture %box, [3 x float]* nocapture %x, [3 x float]* nocapture %x_s) #0 {
entry:
  %start = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %0 = load i32* %start, align 4, !tbaa !0
  %nnodes = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 1
  %1 = load i32* %nnodes, align 4, !tbaa !0
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %2 = load [3 x i32]** %ishift, align 8, !tbaa !3
  %arrayidx1 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %3 = load float* %arrayidx1, align 4, !tbaa !6
  %fabsf = tail call float @fabsf(float %3) #6
  %4 = fpext float %fabsf to double
  %cmp = fcmp ogt double %4, 1.200000e-38
  br i1 %cmp, label %for.cond.preheader, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %arrayidx4 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %5 = load float* %arrayidx4, align 4, !tbaa !6
  %fabsf181 = tail call float @fabsf(float %5) #6
  %6 = fpext float %fabsf181 to double
  %cmp7 = fcmp ogt double %6, 1.200000e-38
  br i1 %cmp7, label %for.cond.preheader, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %arrayidx11 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %7 = load float* %arrayidx11, align 4, !tbaa !6
  %fabsf182 = tail call float @fabsf(float %7) #6
  %8 = fpext float %fabsf182 to double
  %cmp14 = fcmp ogt double %8, 1.200000e-38
  br i1 %cmp14, label %for.cond.preheader, label %for.cond73.preheader

for.cond73.preheader:                             ; preds = %lor.lhs.false9
  %cmp74187 = icmp sgt i32 %1, 0
  br i1 %cmp74187, label %for.body76.lr.ph, label %if.end

for.body76.lr.ph:                                 ; preds = %for.cond73.preheader
  %arrayidx91 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %arrayidx102 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %arrayidx113 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %9 = sext i32 %0 to i64
  br label %for.body76

for.cond.preheader:                               ; preds = %lor.lhs.false9, %lor.lhs.false, %entry
  %cmp16183 = icmp sgt i32 %1, 0
  br i1 %cmp16183, label %for.body.lr.ph, label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx31 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %arrayidx39 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %arrayidx50 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %arrayidx55 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %arrayidx66 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %10 = sext i32 %0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %11 = phi float [ %3, %for.body.lr.ph ], [ %.pre, %for.body.for.body_crit_edge ]
  %indvars.iv190 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next191, %for.body.for.body_crit_edge ]
  %indvars.iv = phi i64 [ %10, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx19 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv190, i64 0
  %12 = load i32* %arrayidx19, align 4, !tbaa !0
  %arrayidx22 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv190, i64 1
  %13 = load i32* %arrayidx22, align 4, !tbaa !0
  %arrayidx25 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv190, i64 2
  %14 = load i32* %arrayidx25, align 4, !tbaa !0
  %arrayidx28 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv, i64 0
  %15 = load float* %arrayidx28, align 4, !tbaa !6
  %conv29 = sitofp i32 %12 to float
  %16 = load float* %arrayidx31, align 4, !tbaa !6
  %mul = fmul float %conv29, %16
  %sub = fsub float %15, %mul
  %conv32 = sitofp i32 %13 to float
  %mul35 = fmul float %conv32, %11
  %sub36 = fsub float %sub, %mul35
  %conv37 = sitofp i32 %14 to float
  %17 = load float* %arrayidx39, align 4, !tbaa !6
  %mul40 = fmul float %conv37, %17
  %sub41 = fsub float %sub36, %mul40
  %arrayidx44 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  store float %sub41, float* %arrayidx44, align 4, !tbaa !6
  %arrayidx47 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv, i64 1
  %18 = load float* %arrayidx47, align 4, !tbaa !6
  %19 = load float* %arrayidx50, align 4, !tbaa !6
  %mul51 = fmul float %conv32, %19
  %sub52 = fsub float %18, %mul51
  %20 = load float* %arrayidx55, align 4, !tbaa !6
  %mul56 = fmul float %conv37, %20
  %sub57 = fsub float %sub52, %mul56
  %arrayidx60 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  store float %sub57, float* %arrayidx60, align 4, !tbaa !6
  %arrayidx63 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv, i64 2
  %21 = load float* %arrayidx63, align 4, !tbaa !6
  %22 = load float* %arrayidx66, align 4, !tbaa !6
  %mul67 = fmul float %conv37, %22
  %sub68 = fsub float %21, %mul67
  %arrayidx71 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2
  store float %sub68, float* %arrayidx71, align 4, !tbaa !6
  %indvars.iv.next191 = add i64 %indvars.iv190, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next191 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %1
  br i1 %exitcond, label %if.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  %indvars.iv.next = add i64 %indvars.iv, 1
  %.pre = load float* %arrayidx1, align 4, !tbaa !6
  br label %for.body

for.body76:                                       ; preds = %for.body76, %for.body76.lr.ph
  %indvars.iv194 = phi i64 [ 0, %for.body76.lr.ph ], [ %indvars.iv.next195, %for.body76 ]
  %indvars.iv192 = phi i64 [ %9, %for.body76.lr.ph ], [ %indvars.iv.next193, %for.body76 ]
  %arrayidx79 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv194, i64 0
  %23 = load i32* %arrayidx79, align 4, !tbaa !0
  %arrayidx82 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv194, i64 1
  %24 = load i32* %arrayidx82, align 4, !tbaa !0
  %arrayidx85 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv194, i64 2
  %25 = load i32* %arrayidx85, align 4, !tbaa !0
  %arrayidx88 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv192, i64 0
  %26 = load float* %arrayidx88, align 4, !tbaa !6
  %conv89 = sitofp i32 %23 to float
  %27 = load float* %arrayidx91, align 4, !tbaa !6
  %mul92 = fmul float %conv89, %27
  %sub93 = fsub float %26, %mul92
  %arrayidx96 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv192, i64 0
  store float %sub93, float* %arrayidx96, align 4, !tbaa !6
  %arrayidx99 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv192, i64 1
  %28 = load float* %arrayidx99, align 4, !tbaa !6
  %conv100 = sitofp i32 %24 to float
  %29 = load float* %arrayidx102, align 4, !tbaa !6
  %mul103 = fmul float %conv100, %29
  %sub104 = fsub float %28, %mul103
  %arrayidx107 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv192, i64 1
  store float %sub104, float* %arrayidx107, align 4, !tbaa !6
  %arrayidx110 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv192, i64 2
  %30 = load float* %arrayidx110, align 4, !tbaa !6
  %conv111 = sitofp i32 %25 to float
  %31 = load float* %arrayidx113, align 4, !tbaa !6
  %mul114 = fmul float %conv111, %31
  %sub115 = fsub float %30, %mul114
  %arrayidx118 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv192, i64 2
  store float %sub115, float* %arrayidx118, align 4, !tbaa !6
  %indvars.iv.next195 = add i64 %indvars.iv194, 1
  %indvars.iv.next193 = add i64 %indvars.iv192, 1
  %lftr.wideiv196 = trunc i64 %indvars.iv.next195 to i32
  %exitcond197 = icmp eq i32 %lftr.wideiv196, %1
  br i1 %exitcond197, label %if.end, label %for.body76

if.end:                                           ; preds = %for.cond73.preheader, %for.body76, %for.cond.preheader, %for.body
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @unshift_self(%struct.t_graph* nocapture %g, [3 x float]* nocapture %box, [3 x float]* nocapture %x) #0 {
entry:
  %start = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %0 = load i32* %start, align 4, !tbaa !0
  %nnodes = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 1
  %1 = load i32* %nnodes, align 4, !tbaa !0
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %2 = load [3 x i32]** %ishift, align 8, !tbaa !3
  %arrayidx1 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %3 = load float* %arrayidx1, align 4, !tbaa !6
  %fabsf = tail call float @fabsf(float %3) #6
  %4 = fpext float %fabsf to double
  %cmp = fcmp ogt double %4, 1.200000e-38
  br i1 %cmp, label %for.cond.preheader, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %arrayidx4 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %5 = load float* %arrayidx4, align 4, !tbaa !6
  %fabsf182 = tail call float @fabsf(float %5) #6
  %6 = fpext float %fabsf182 to double
  %cmp7 = fcmp ogt double %6, 1.200000e-38
  br i1 %cmp7, label %for.cond.preheader, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %arrayidx11 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %7 = load float* %arrayidx11, align 4, !tbaa !6
  %fabsf183 = tail call float @fabsf(float %7) #6
  %8 = fpext float %fabsf183 to double
  %cmp14 = fcmp ogt double %8, 1.200000e-38
  br i1 %cmp14, label %for.cond.preheader, label %for.cond73.preheader

for.cond73.preheader:                             ; preds = %lor.lhs.false9
  %cmp74188 = icmp sgt i32 %1, 0
  br i1 %cmp74188, label %for.body76.lr.ph, label %if.end

for.body76.lr.ph:                                 ; preds = %for.cond73.preheader
  %arrayidx91 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %arrayidx102 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %arrayidx113 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %9 = sext i32 %0 to i64
  br label %for.body76

for.cond.preheader:                               ; preds = %lor.lhs.false9, %lor.lhs.false, %entry
  %cmp16184 = icmp sgt i32 %1, 0
  br i1 %cmp16184, label %for.body.lr.ph, label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx31 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %arrayidx39 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %arrayidx50 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %arrayidx55 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %arrayidx66 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %10 = sext i32 %0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %11 = phi float [ %3, %for.body.lr.ph ], [ %.pre, %for.body.for.body_crit_edge ]
  %indvars.iv191 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next192, %for.body.for.body_crit_edge ]
  %indvars.iv = phi i64 [ %10, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx19 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv191, i64 0
  %12 = load i32* %arrayidx19, align 4, !tbaa !0
  %arrayidx22 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv191, i64 1
  %13 = load i32* %arrayidx22, align 4, !tbaa !0
  %arrayidx25 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv191, i64 2
  %14 = load i32* %arrayidx25, align 4, !tbaa !0
  %arrayidx28 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %15 = load float* %arrayidx28, align 4, !tbaa !6
  %conv29 = sitofp i32 %12 to float
  %16 = load float* %arrayidx31, align 4, !tbaa !6
  %mul = fmul float %conv29, %16
  %sub = fsub float %15, %mul
  %conv32 = sitofp i32 %13 to float
  %mul35 = fmul float %conv32, %11
  %sub36 = fsub float %sub, %mul35
  %conv37 = sitofp i32 %14 to float
  %17 = load float* %arrayidx39, align 4, !tbaa !6
  %mul40 = fmul float %conv37, %17
  %sub41 = fsub float %sub36, %mul40
  store float %sub41, float* %arrayidx28, align 4, !tbaa !6
  %arrayidx47 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  %18 = load float* %arrayidx47, align 4, !tbaa !6
  %19 = load float* %arrayidx50, align 4, !tbaa !6
  %mul51 = fmul float %conv32, %19
  %sub52 = fsub float %18, %mul51
  %20 = load float* %arrayidx55, align 4, !tbaa !6
  %mul56 = fmul float %conv37, %20
  %sub57 = fsub float %sub52, %mul56
  store float %sub57, float* %arrayidx47, align 4, !tbaa !6
  %arrayidx63 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2
  %21 = load float* %arrayidx63, align 4, !tbaa !6
  %22 = load float* %arrayidx66, align 4, !tbaa !6
  %mul67 = fmul float %conv37, %22
  %sub68 = fsub float %21, %mul67
  store float %sub68, float* %arrayidx63, align 4, !tbaa !6
  %indvars.iv.next192 = add i64 %indvars.iv191, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next192 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %1
  br i1 %exitcond, label %if.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  %indvars.iv.next = add i64 %indvars.iv, 1
  %.pre = load float* %arrayidx1, align 4, !tbaa !6
  br label %for.body

for.body76:                                       ; preds = %for.body76, %for.body76.lr.ph
  %indvars.iv195 = phi i64 [ 0, %for.body76.lr.ph ], [ %indvars.iv.next196, %for.body76 ]
  %indvars.iv193 = phi i64 [ %9, %for.body76.lr.ph ], [ %indvars.iv.next194, %for.body76 ]
  %arrayidx79 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv195, i64 0
  %23 = load i32* %arrayidx79, align 4, !tbaa !0
  %arrayidx82 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv195, i64 1
  %24 = load i32* %arrayidx82, align 4, !tbaa !0
  %arrayidx85 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv195, i64 2
  %25 = load i32* %arrayidx85, align 4, !tbaa !0
  %arrayidx88 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv193, i64 0
  %26 = load float* %arrayidx88, align 4, !tbaa !6
  %conv89 = sitofp i32 %23 to float
  %27 = load float* %arrayidx91, align 4, !tbaa !6
  %mul92 = fmul float %conv89, %27
  %sub93 = fsub float %26, %mul92
  store float %sub93, float* %arrayidx88, align 4, !tbaa !6
  %arrayidx99 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv193, i64 1
  %28 = load float* %arrayidx99, align 4, !tbaa !6
  %conv100 = sitofp i32 %24 to float
  %29 = load float* %arrayidx102, align 4, !tbaa !6
  %mul103 = fmul float %conv100, %29
  %sub104 = fsub float %28, %mul103
  store float %sub104, float* %arrayidx99, align 4, !tbaa !6
  %arrayidx110 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv193, i64 2
  %30 = load float* %arrayidx110, align 4, !tbaa !6
  %conv111 = sitofp i32 %25 to float
  %31 = load float* %arrayidx113, align 4, !tbaa !6
  %mul114 = fmul float %conv111, %31
  %sub115 = fsub float %30, %mul114
  store float %sub115, float* %arrayidx110, align 4, !tbaa !6
  %indvars.iv.next196 = add i64 %indvars.iv195, 1
  %indvars.iv.next194 = add i64 %indvars.iv193, 1
  %lftr.wideiv197 = trunc i64 %indvars.iv.next196 to i32
  %exitcond198 = icmp eq i32 %lftr.wideiv197, %1
  br i1 %exitcond198, label %if.end, label %for.body76

if.end:                                           ; preds = %for.cond73.preheader, %for.body76, %for.cond.preheader, %for.body
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @add_gbond(%struct.t_graph* nocapture %g, i32* nocapture %ia, i32 %np) #0 {
entry:
  %cmp82 = icmp sgt i32 %np, 0
  br i1 %cmp82, label %for.body.lr.ph, label %for.end48

for.body.lr.ph:                                   ; preds = %entry
  %start = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %nedge = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 5
  %maxbond = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 0
  %edge38 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 6
  br label %for.body3.lr.ph

for.body3.lr.ph:                                  ; preds = %for.body.lr.ph, %for.inc46
  %indvars.iv88 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next89, %for.inc46 ]
  %arrayidx = getelementptr inbounds i32* %ia, i64 %indvars.iv88
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %1 = load i32* %start, align 4, !tbaa !0
  %sub = sub nsw i32 %0, %1
  %idxprom6 = sext i32 %sub to i64
  %add = add nsw i32 %0, 1
  br label %for.body3

for.body3:                                        ; preds = %for.inc43, %for.body3.lr.ph
  %indvars.iv86 = phi i64 [ 0, %for.body3.lr.ph ], [ %indvars.iv.next87, %for.inc43 ]
  %2 = trunc i64 %indvars.iv86 to i32
  %3 = trunc i64 %indvars.iv88 to i32
  %cmp4 = icmp eq i32 %3, %2
  br i1 %cmp4, label %for.inc43, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.body3
  %4 = load i32** %nedge, align 8, !tbaa !3
  %arrayidx775 = getelementptr inbounds i32* %4, i64 %idxprom6
  %5 = load i32* %arrayidx775, align 4, !tbaa !0
  %cmp876 = icmp sgt i32 %5, 0
  br i1 %cmp876, label %for.body9.lr.ph, label %for.end

for.body9.lr.ph:                                  ; preds = %for.cond5.preheader
  %6 = load i32*** %edge38, align 8, !tbaa !3
  %arrayidx12 = getelementptr inbounds i32** %6, i64 %idxprom6
  %7 = load i32** %arrayidx12, align 8, !tbaa !3
  %arrayidx15 = getelementptr inbounds i32* %ia, i64 %indvars.iv86
  %8 = load i32* %arrayidx15, align 4, !tbaa !0
  br label %for.body9

for.cond5:                                        ; preds = %for.body9
  %9 = trunc i64 %indvars.iv.next to i32
  %cmp8 = icmp slt i32 %9, %5
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.body9.lr.ph, %for.cond5
  %indvars.iv = phi i64 [ 0, %for.body9.lr.ph ], [ %indvars.iv.next, %for.cond5 ]
  %l.077 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc, %for.cond5 ]
  %arrayidx13 = getelementptr inbounds i32* %7, i64 %indvars.iv
  %10 = load i32* %arrayidx13, align 4, !tbaa !0
  %cmp16 = icmp eq i32 %10, %8
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %l.077, 1
  br i1 %cmp16, label %for.end, label %for.cond5

for.end:                                          ; preds = %for.cond5, %for.body9, %for.cond5.preheader
  %l.0.lcssa = phi i32 [ 0, %for.cond5.preheader ], [ %l.077, %for.body9 ], [ %inc, %for.cond5 ]
  %cmp21 = icmp eq i32 %l.0.lcssa, %5
  br i1 %cmp21, label %if.then22, label %for.inc43

if.then22:                                        ; preds = %for.end
  %11 = load i32* %maxbond, align 4, !tbaa !0
  %cmp26 = icmp eq i32 %5, %11
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.then22
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([39 x i8]* @.str22, i64 0, i64 0), i32 %5, i32 %add) #4
  %.pre92 = load i32** %nedge, align 8, !tbaa !3
  %arrayidx34.phi.trans.insert = getelementptr inbounds i32* %.pre92, i64 %idxprom6
  %.pre93 = load i32* %arrayidx34.phi.trans.insert, align 4, !tbaa !0
  br label %if.end29

if.end29:                                         ; preds = %if.then22, %if.then27
  %12 = phi i32 [ %.pre93, %if.then27 ], [ %5, %if.then22 ]
  %13 = phi i32* [ %.pre92, %if.then27 ], [ %4, %if.then22 ]
  %arrayidx31 = getelementptr inbounds i32* %ia, i64 %indvars.iv86
  %14 = load i32* %arrayidx31, align 4, !tbaa !0
  %arrayidx34 = getelementptr inbounds i32* %13, i64 %idxprom6
  %inc35 = add nsw i32 %12, 1
  store i32 %inc35, i32* %arrayidx34, align 4, !tbaa !0
  %idxprom36 = sext i32 %12 to i64
  %15 = load i32*** %edge38, align 8, !tbaa !3
  %arrayidx39 = getelementptr inbounds i32** %15, i64 %idxprom6
  %16 = load i32** %arrayidx39, align 8, !tbaa !3
  %arrayidx40 = getelementptr inbounds i32* %16, i64 %idxprom36
  store i32 %14, i32* %arrayidx40, align 4, !tbaa !0
  br label %for.inc43

for.inc43:                                        ; preds = %for.body3, %if.end29, %for.end
  %indvars.iv.next87 = add i64 %indvars.iv86, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next87 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %np
  br i1 %exitcond, label %for.inc46, label %for.body3

for.inc46:                                        ; preds = %for.inc43
  %indvars.iv.next89 = add i64 %indvars.iv88, 1
  %lftr.wideiv90 = trunc i64 %indvars.iv.next89 to i32
  %exitcond91 = icmp eq i32 %lftr.wideiv90, %np
  br i1 %exitcond91, label %for.end48, label %for.body3.lr.ph

for.end48:                                        ; preds = %for.inc46, %entry
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

declare float @fabsf(float)

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
!6 = metadata !{metadata !"float", metadata !1}
