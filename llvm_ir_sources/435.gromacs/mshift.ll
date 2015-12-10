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
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !144), !dbg !550
  tail call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !145), !dbg !550
  tail call void @llvm.dbg.value(metadata !{%struct.t_graph* %g}, i64 0, metadata !146), !dbg !550
  %tobool = icmp eq %struct._IO_FILE* %log, null, !dbg !551
  br i1 %tobool, label %if.end44, label %if.then, !dbg !551

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0), i8* %title) #5, !dbg !552
  %maxbond = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 0, !dbg !554
  %0 = load i32* %maxbond, align 4, !dbg !554, !tbaa !555
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i32 %0) #5, !dbg !554
  %nnodes = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 1, !dbg !558
  %1 = load i32* %nnodes, align 4, !dbg !558, !tbaa !555
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0), i32 %1) #5, !dbg !558
  %nbound = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 2, !dbg !559
  %2 = load i32* %nbound, align 4, !dbg !559, !tbaa !555
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0), i32 %2) #5, !dbg !559
  %start = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3, !dbg !560
  %3 = load i32* %start, align 4, !dbg !560, !tbaa !555
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0), i32 %3) #5, !dbg !560
  %end = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 4, !dbg !561
  %4 = load i32* %end, align 4, !dbg !561, !tbaa !555
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i32 %4) #5, !dbg !561
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([48 x i8]* @.str6, i64 0, i64 0), i64 47, i64 1, %struct._IO_FILE* %log), !dbg !562
  tail call void @llvm.dbg.value(metadata !57, i64 0, metadata !147), !dbg !563
  %6 = load i32* %nnodes, align 4, !dbg !563, !tbaa !555
  %cmp82 = icmp sgt i32 %6, 0, !dbg !563
  br i1 %cmp82, label %for.body.lr.ph, label %for.end42, !dbg !563

for.body.lr.ph:                                   ; preds = %if.then
  %nedge = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 5, !dbg !565
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7, !dbg !566
  %edge = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 6, !dbg !568
  br label %for.body, !dbg !563

for.body:                                         ; preds = %for.inc40, %for.body.lr.ph
  %7 = phi i32 [ %6, %for.body.lr.ph ], [ %25, %for.inc40 ]
  %indvars.iv84 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next85.pre-phi, %for.inc40 ]
  %8 = load i32** %nedge, align 8, !dbg !565, !tbaa !570
  %arrayidx = getelementptr inbounds i32* %8, i64 %indvars.iv84, !dbg !565
  %9 = load i32* %arrayidx, align 4, !dbg !565, !tbaa !555
  %cmp8 = icmp sgt i32 %9, 0, !dbg !565
  br i1 %cmp8, label %if.then9, label %for.body.for.inc40_crit_edge, !dbg !565

for.body.for.inc40_crit_edge:                     ; preds = %for.body
  %indvars.iv.next85.pre = add i64 %indvars.iv84, 1, !dbg !563
  %.pre87 = trunc i64 %indvars.iv.next85.pre to i32, !dbg !563
  br label %for.inc40, !dbg !565

if.then9:                                         ; preds = %for.body
  %10 = load i32* %start, align 4, !dbg !566, !tbaa !555
  %11 = add i64 %indvars.iv84, 1, !dbg !566
  %12 = trunc i64 %11 to i32, !dbg !566
  %add11 = add i32 %12, %10, !dbg !566
  %13 = load [3 x i32]** %ishift, align 8, !dbg !566, !tbaa !570
  %arrayidx14 = getelementptr inbounds [3 x i32]* %13, i64 %indvars.iv84, i64 0, !dbg !566
  %14 = load i32* %arrayidx14, align 4, !dbg !566, !tbaa !555
  %arrayidx18 = getelementptr inbounds [3 x i32]* %13, i64 %indvars.iv84, i64 1, !dbg !566
  %15 = load i32* %arrayidx18, align 4, !dbg !566, !tbaa !555
  %arrayidx22 = getelementptr inbounds [3 x i32]* %13, i64 %indvars.iv84, i64 2, !dbg !566
  %16 = load i32* %arrayidx22, align 4, !dbg !566, !tbaa !555
  %call26 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0), i32 %add11, i32 %14, i32 %15, i32 %16, i32 %9) #5, !dbg !566
  tail call void @llvm.dbg.value(metadata !57, i64 0, metadata !148), !dbg !571
  %17 = load i32** %nedge, align 8, !dbg !571, !tbaa !570
  %arrayidx3079 = getelementptr inbounds i32* %17, i64 %indvars.iv84, !dbg !571
  %18 = load i32* %arrayidx3079, align 4, !dbg !571, !tbaa !555
  %cmp3180 = icmp sgt i32 %18, 0, !dbg !571
  br i1 %cmp3180, label %for.body32, label %for.end, !dbg !571

for.body32:                                       ; preds = %if.then9, %for.body32
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body32 ], [ 0, %if.then9 ]
  %19 = load i32*** %edge, align 8, !dbg !568, !tbaa !570
  %arrayidx35 = getelementptr inbounds i32** %19, i64 %indvars.iv84, !dbg !568
  %20 = load i32** %arrayidx35, align 8, !dbg !568, !tbaa !570
  %arrayidx36 = getelementptr inbounds i32* %20, i64 %indvars.iv, !dbg !568
  %21 = load i32* %arrayidx36, align 4, !dbg !568, !tbaa !555
  %add37 = add nsw i32 %21, 1, !dbg !568
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i32 %add37) #5, !dbg !568
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !571
  %22 = load i32** %nedge, align 8, !dbg !571, !tbaa !570
  %arrayidx30 = getelementptr inbounds i32* %22, i64 %indvars.iv84, !dbg !571
  %23 = load i32* %arrayidx30, align 4, !dbg !571, !tbaa !555
  %24 = trunc i64 %indvars.iv.next to i32, !dbg !571
  %cmp31 = icmp slt i32 %24, %23, !dbg !571
  br i1 %cmp31, label %for.body32, label %for.end, !dbg !571

for.end:                                          ; preds = %for.body32, %if.then9
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %log), !dbg !572
  %.pre = load i32* %nnodes, align 4, !dbg !563, !tbaa !555
  br label %for.inc40, !dbg !573

for.inc40:                                        ; preds = %for.body.for.inc40_crit_edge, %for.end
  %.pre-phi = phi i32 [ %.pre87, %for.body.for.inc40_crit_edge ], [ %12, %for.end ], !dbg !563
  %indvars.iv.next85.pre-phi = phi i64 [ %indvars.iv.next85.pre, %for.body.for.inc40_crit_edge ], [ %11, %for.end ], !dbg !563
  %25 = phi i32 [ %7, %for.body.for.inc40_crit_edge ], [ %.pre, %for.end ], !dbg !563
  %cmp = icmp slt i32 %.pre-phi, %25, !dbg !563
  br i1 %cmp, label %for.body, label %for.end42, !dbg !563

for.end42:                                        ; preds = %for.inc40, %if.then
  %call43 = tail call i32 @fflush(%struct._IO_FILE* %log) #5, !dbg !574
  br label %if.end44, !dbg !575

if.end44:                                         ; preds = %entry, %for.end42
  ret void, !dbg !576
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define %struct.t_graph* @mk_graph(%struct.t_idef* nocapture %idef, i32 %natoms, i32 %bShakeOnly, i32 %bSettle) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_idef* %idef}, i64 0, metadata !293), !dbg !577
  tail call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !294), !dbg !577
  tail call void @llvm.dbg.value(metadata !{i32 %bShakeOnly}, i64 0, metadata !295), !dbg !577
  tail call void @llvm.dbg.value(metadata !{i32 %bSettle}, i64 0, metadata !296), !dbg !577
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str11, i64 0, i64 0), i32 234, i32 1, i32 48) #5, !dbg !578
  tail call void @llvm.dbg.value(metadata !{%struct.t_graph* %18}, i64 0, metadata !297), !dbg !578
  tail call void @llvm.dbg.value(metadata !{%struct.t_graph* %18}, i64 0, metadata !579) #4, !dbg !581
  tail call void @llvm.dbg.value(metadata !{%struct.t_idef* %idef}, i64 0, metadata !582) #4, !dbg !581
  tail call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !583) #4, !dbg !581
  %start.i = getelementptr inbounds i8* %call, i64 12, !dbg !584
  %0 = bitcast i8* %start.i to i32*, !dbg !584
  store i32 %natoms, i32* %0, align 4, !dbg !584, !tbaa !555
  %end.i = getelementptr inbounds i8* %call, i64 16, !dbg !585
  %1 = bitcast i8* %end.i to i32*, !dbg !585
  store i32 0, i32* %1, align 4, !dbg !585, !tbaa !555
  %call.i = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str11, i64 0, i64 0), i32 212, i32 %natoms, i32 2) #5, !dbg !586
  %2 = bitcast i8* %call.i to i16*, !dbg !586
  tail call void @llvm.dbg.value(metadata !{i16* %2}, i64 0, metadata !587) #4, !dbg !586
  tail call void @llvm.dbg.value(metadata !57, i64 0, metadata !588) #4, !dbg !589
  %functype.i = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 3, !dbg !591
  br label %for.body.i, !dbg !589

for.body.i:                                       ; preds = %for.inc.i, %entry
  %indvars.iv47.i = phi i64 [ 0, %entry ], [ %indvars.iv.next48.i, %for.inc.i ]
  %flags.i = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv47.i, i32 5, !dbg !593
  %3 = load i64* %flags.i, align 8, !dbg !593, !tbaa !594
  %and.i = and i64 %3, 8, !dbg !593
  %tobool.i = icmp eq i64 %and.i, 0, !dbg !593
  br i1 %tobool.i, label %for.inc.i, label %if.then.i, !dbg !593

if.then.i:                                        ; preds = %for.body.i
  %4 = load i32** %functype.i, align 8, !dbg !591, !tbaa !570
  tail call void @llvm.dbg.value(metadata !{%struct.t_graph* %18}, i64 0, metadata !595) #4, !dbg !596
  tail call void @llvm.dbg.value(metadata !{i32* %4}, i64 0, metadata !597) #4, !dbg !596
  tail call void @llvm.dbg.value(metadata !{i16* %2}, i64 0, metadata !598) #4, !dbg !599
  tail call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !600) #4, !dbg !599
  %nr.i.i = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv47.i, i32 0, !dbg !601
  %5 = load i32* %nr.i.i, align 4, !dbg !601, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !602) #4, !dbg !601
  tail call void @llvm.dbg.value(metadata !57, i64 0, metadata !603) #4, !dbg !604
  %cmp119.i.i = icmp sgt i32 %5, 0, !dbg !604
  br i1 %cmp119.i.i, label %for.body.lr.ph.i.i, label %for.inc.i, !dbg !604

for.body.lr.ph.i.i:                               ; preds = %if.then.i
  %iatoms.i.i = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv47.i, i32 2, !dbg !606
  %6 = load i32** %iatoms.i.i, align 8, !dbg !606, !tbaa !570
  br label %for.body.i.i, !dbg !604

for.body.i.i:                                     ; preds = %for.inc70.i.i, %for.body.lr.ph.i.i
  %ia.0121.i.i = phi i32* [ %6, %for.body.lr.ph.i.i ], [ %add.ptr.i.i, %for.inc70.i.i ]
  %j.0120.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add72.i.i, %for.inc70.i.i ]
  %7 = load i32* %ia.0121.i.i, align 4, !dbg !607, !tbaa !555
  %idxprom.i.i = sext i32 %7 to i64, !dbg !607
  %arrayidx1.i.i = getelementptr inbounds i32* %4, i64 %idxprom.i.i, !dbg !607
  %8 = load i32* %arrayidx1.i.i, align 4, !dbg !607, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !609) #4, !dbg !607
  %idxprom2.i.i = sext i32 %8 to i64, !dbg !610
  %nratoms4.i.i = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %idxprom2.i.i, i32 2, !dbg !610
  %9 = load i32* %nratoms4.i.i, align 8, !dbg !610, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !611) #4, !dbg !610
  %cmp5.i.i = icmp eq i32 %8, 29, !dbg !612
  br i1 %cmp5.i.i, label %if.then.i.i, label %if.else.i.i, !dbg !612

if.then.i.i:                                      ; preds = %for.body.i.i
  %arrayidx6.i.i = getelementptr inbounds i32* %ia.0121.i.i, i64 1, !dbg !613
  %10 = load i32* %arrayidx6.i.i, align 4, !dbg !613, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !615) #4, !dbg !613
  %cmp7.i.i = icmp slt i32 %10, %natoms, !dbg !616
  br i1 %cmp7.i.i, label %if.then8.i.i, label %for.inc70.i.i, !dbg !616

if.then8.i.i:                                     ; preds = %if.then.i.i
  %idxprom9.i.i = sext i32 %10 to i64, !dbg !617
  %arrayidx10.i.i = getelementptr inbounds i16* %2, i64 %idxprom9.i.i, !dbg !617
  store i16 2, i16* %arrayidx10.i.i, align 2, !dbg !617, !tbaa !619
  %add.i.i = add nsw i32 %10, 1, !dbg !620
  %idxprom11.i.i = sext i32 %add.i.i to i64, !dbg !620
  %arrayidx12.i.i = getelementptr inbounds i16* %2, i64 %idxprom11.i.i, !dbg !620
  store i16 2, i16* %arrayidx12.i.i, align 2, !dbg !620, !tbaa !619
  %add13.i.i = add nsw i32 %10, 2, !dbg !621
  %idxprom14.i.i = sext i32 %add13.i.i to i64, !dbg !621
  %arrayidx15.i.i = getelementptr inbounds i16* %2, i64 %idxprom14.i.i, !dbg !621
  store i16 2, i16* %arrayidx15.i.i, align 2, !dbg !621, !tbaa !619
  %11 = load i32* %0, align 4, !dbg !622, !tbaa !555
  %cmp16.i.i = icmp slt i32 %11, %10, !dbg !622
  %..i.i = select i1 %cmp16.i.i, i32 %11, i32 %10, !dbg !622
  store i32 %..i.i, i32* %0, align 4, !dbg !622, !tbaa !555
  %12 = load i32* %1, align 4, !dbg !623, !tbaa !555
  %cmp21.i.i = icmp sgt i32 %12, %add13.i.i, !dbg !623
  %cond27.i.i = select i1 %cmp21.i.i, i32 %12, i32 %add13.i.i, !dbg !623
  store i32 %cond27.i.i, i32* %1, align 4, !dbg !623, !tbaa !555
  br label %for.inc70.i.i, !dbg !624

if.else.i.i:                                      ; preds = %for.body.i.i
  %flags.i.i = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %idxprom2.i.i, i32 5, !dbg !625
  %13 = load i64* %flags.i.i, align 8, !dbg !625, !tbaa !594
  %and.i.i = and i64 %13, 2, !dbg !625
  %tobool.i.i = icmp eq i64 %and.i.i, 0, !dbg !625
  %.115.i.i = select i1 %tobool.i.i, i32 %9, i32 2
  tail call void @llvm.dbg.value(metadata !57, i64 0, metadata !627) #4, !dbg !628
  %cmp35117.i.i = icmp sgt i32 %.115.i.i, 0, !dbg !628
  br i1 %cmp35117.i.i, label %for.body36.i.preheader.i, label %for.inc70.i.i, !dbg !628

for.body36.i.preheader.i:                         ; preds = %if.else.i.i
  %and61.i.i = and i64 %13, 8, !dbg !630
  %tobool62.i.i = icmp eq i64 %and61.i.i, 0, !dbg !630
  br label %for.body36.i.i, !dbg !628

for.body36.i.i:                                   ; preds = %for.cond34.backedge.i.i, %for.body36.i.preheader.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.cond34.backedge.i.i ], [ 0, %for.body36.i.preheader.i ]
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1, !dbg !628
  %arrayidx39.i.i = getelementptr inbounds i32* %ia.0121.i.i, i64 %indvars.iv.next.i.i, !dbg !633
  %14 = load i32* %arrayidx39.i.i, align 4, !dbg !633, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !615) #4, !dbg !633
  %cmp40.i.i = icmp slt i32 %14, %natoms, !dbg !634
  br i1 %cmp40.i.i, label %if.then41.i.i, label %for.cond34.backedge.i.i, !dbg !634

if.then41.i.i:                                    ; preds = %for.body36.i.i
  %15 = load i32* %0, align 4, !dbg !635, !tbaa !555
  %cmp43.i.i = icmp slt i32 %15, %14, !dbg !635
  %.116.i.i = select i1 %cmp43.i.i, i32 %15, i32 %14, !dbg !635
  store i32 %.116.i.i, i32* %0, align 4, !dbg !635, !tbaa !555
  %16 = load i32* %1, align 4, !dbg !636, !tbaa !555
  %cmp51.i.i = icmp sgt i32 %16, %14, !dbg !636
  %cond56.i.i = select i1 %cmp51.i.i, i32 %16, i32 %14, !dbg !636
  store i32 %cond56.i.i, i32* %1, align 4, !dbg !636, !tbaa !555
  br i1 %tobool62.i.i, label %for.cond34.backedge.i.i, label %if.then63.i.i, !dbg !630

for.cond34.backedge.i.i:                          ; preds = %if.then63.i.i, %if.then41.i.i, %for.body36.i.i
  %lftr.wideiv155 = trunc i64 %indvars.iv.next.i.i to i32, !dbg !628
  %exitcond156 = icmp eq i32 %lftr.wideiv155, %.115.i.i, !dbg !628
  br i1 %exitcond156, label %for.inc70.i.i, label %for.body36.i.i, !dbg !628

if.then63.i.i:                                    ; preds = %if.then41.i.i
  %idxprom64.i.i = sext i32 %14 to i64, !dbg !637
  %arrayidx65.i.i = getelementptr inbounds i16* %2, i64 %idxprom64.i.i, !dbg !637
  %17 = load i16* %arrayidx65.i.i, align 2, !dbg !637, !tbaa !619
  %inc.i.i = add i16 %17, 1, !dbg !637
  store i16 %inc.i.i, i16* %arrayidx65.i.i, align 2, !dbg !637, !tbaa !619
  br label %for.cond34.backedge.i.i, !dbg !637

for.inc70.i.i:                                    ; preds = %for.cond34.backedge.i.i, %if.else.i.i, %if.then8.i.i, %if.then.i.i
  %add71.i.i = add nsw i32 %9, 1, !dbg !604
  %add72.i.i = add nsw i32 %add71.i.i, %j.0120.i.i, !dbg !604
  tail call void @llvm.dbg.value(metadata !{i32 %add72.i.i}, i64 0, metadata !603) #4, !dbg !604
  %idx.ext.i.i = sext i32 %add71.i.i to i64, !dbg !604
  %add.ptr.i.i = getelementptr inbounds i32* %ia.0121.i.i, i64 %idx.ext.i.i, !dbg !604
  tail call void @llvm.dbg.value(metadata !{i32* %add.ptr.i.i}, i64 0, metadata !638) #4, !dbg !604
  %cmp.i.i = icmp slt i32 %add72.i.i, %5, !dbg !604
  br i1 %cmp.i.i, label %for.body.i.i, label %for.inc.i, !dbg !604

for.inc.i:                                        ; preds = %for.inc70.i.i, %if.then.i, %for.body.i
  %indvars.iv.next48.i = add i64 %indvars.iv47.i, 1, !dbg !589
  %lftr.wideiv157 = trunc i64 %indvars.iv.next48.i to i32, !dbg !589
  %exitcond158 = icmp eq i32 %lftr.wideiv157, 44, !dbg !589
  br i1 %exitcond158, label %for.end.i, label %for.body.i, !dbg !589

for.end.i:                                        ; preds = %for.inc.i
  %18 = bitcast i8* %call to %struct.t_graph*, !dbg !578
  tail call void @llvm.dbg.value(metadata !57, i64 0, metadata !639) #4, !dbg !640
  %19 = load i32* %0, align 4, !dbg !641, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %19}, i64 0, metadata !588) #4, !dbg !641
  %20 = load i32* %1, align 4, !dbg !641, !tbaa !555
  %cmp643.i = icmp sgt i32 %19, %20, !dbg !641
  br i1 %cmp643.i, label %for.end17.i, label %for.body7.lr.ph.i, !dbg !641

for.body7.lr.ph.i:                                ; preds = %for.end.i
  %21 = sext i32 %19 to i64
  br label %for.body7.i, !dbg !641

for.body7.i:                                      ; preds = %for.body7.i, %for.body7.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body7.i ], [ %21, %for.body7.lr.ph.i ]
  %nnb.045.i = phi i32 [ %nnb.0.conv.i, %for.body7.i ], [ 0, %for.body7.lr.ph.i ]
  %arrayidx9.i = getelementptr inbounds i16* %2, i64 %indvars.iv.i, !dbg !643
  %22 = load i16* %arrayidx9.i, align 2, !dbg !643, !tbaa !619
  %conv.i = sext i16 %22 to i32, !dbg !643
  %cmp10.i = icmp sgt i32 %nnb.045.i, %conv.i, !dbg !643
  %nnb.0.conv.i = select i1 %cmp10.i, i32 %nnb.045.i, i32 %conv.i, !dbg !643
  tail call void @llvm.dbg.value(metadata !{i32 %nnb.0.conv.i}, i64 0, metadata !639) #4, !dbg !643
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !641
  %23 = trunc i64 %indvars.iv.i to i32, !dbg !641
  %cmp6.i = icmp slt i32 %23, %20, !dbg !641
  br i1 %cmp6.i, label %for.body7.i, label %for.end17.i, !dbg !641

for.end17.i:                                      ; preds = %for.body7.i, %for.end.i
  %nnb.0.lcssa.i = phi i32 [ 0, %for.end.i ], [ %nnb.0.conv.i, %for.body7.i ]
  %24 = load %struct._IO_FILE** @stdlog, align 8, !dbg !644, !tbaa !570
  %tobool18.i = icmp eq %struct._IO_FILE* %24, null, !dbg !644
  br i1 %tobool18.i, label %calc_start_end.exit, label %if.then19.i, !dbg !644

if.then19.i:                                      ; preds = %for.end17.i
  %call20.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([36 x i8]* @.str24, i64 0, i64 0), i32 %nnb.0.lcssa.i) #5, !dbg !645
  br label %calc_start_end.exit, !dbg !645

calc_start_end.exit:                              ; preds = %for.end17.i, %if.then19.i
  tail call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str11, i64 0, i64 0), i32 224, i8* %call.i) #5, !dbg !646
  %add.i = add nsw i32 %nnb.0.lcssa.i, 6, !dbg !647
  %maxbond.i = bitcast i8* %call to i32*, !dbg !647
  store i32 %add.i, i32* %maxbond.i, align 4, !dbg !647, !tbaa !555
  %25 = load i32* %0, align 4, !dbg !648, !tbaa !555
  %26 = load i32* %1, align 4, !dbg !648, !tbaa !555
  %cmp = icmp slt i32 %25, %26, !dbg !648
  br i1 %cmp, label %if.else, label %if.then, !dbg !648

if.then:                                          ; preds = %calc_start_end.exit
  %nnodes = getelementptr inbounds i8* %call, i64 4, !dbg !649
  %27 = bitcast i8* %nnodes to i32*, !dbg !649
  store i32 0, i32* %27, align 4, !dbg !649, !tbaa !555
  br label %if.end84, !dbg !651

if.else:                                          ; preds = %calc_start_end.exit
  %sub = sub nsw i32 %26, %25, !dbg !652
  %add = add nsw i32 %sub, 1, !dbg !652
  %nnodes3 = getelementptr inbounds i8* %call, i64 4, !dbg !652
  %28 = bitcast i8* %nnodes3 to i32*, !dbg !652
  store i32 %add, i32* %28, align 4, !dbg !652, !tbaa !555
  %call5 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str11, i64 0, i64 0), i32 243, i32 %add, i32 12) #5, !dbg !654
  %29 = bitcast i8* %call5 to [3 x i32]*, !dbg !654
  %ishift = getelementptr inbounds i8* %call, i64 40, !dbg !654
  %30 = bitcast i8* %ishift to [3 x i32]**, !dbg !654
  store [3 x i32]* %29, [3 x i32]** %30, align 8, !dbg !654, !tbaa !570
  %31 = load i32* %28, align 4, !dbg !655, !tbaa !555
  %call7 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str11, i64 0, i64 0), i32 244, i32 %31, i32 4) #5, !dbg !655
  %32 = bitcast i8* %call7 to i32*, !dbg !655
  %nedge = getelementptr inbounds i8* %call, i64 24, !dbg !655
  %33 = bitcast i8* %nedge to i32**, !dbg !655
  store i32* %32, i32** %33, align 8, !dbg !655, !tbaa !570
  %34 = load %struct._IO_FILE** @debug, align 8, !dbg !656, !tbaa !570
  %tobool = icmp eq %struct._IO_FILE* %34, null, !dbg !656
  br i1 %tobool, label %if.end, label %if.then8, !dbg !656

if.then8:                                         ; preds = %if.else
  %35 = load i32* %28, align 4, !dbg !657, !tbaa !555
  %36 = load i32* %maxbond.i, align 4, !dbg !657, !tbaa !555
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([31 x i8]* @.str14, i64 0, i64 0), i32 %35, i32 %36) #5, !dbg !657
  br label %if.end, !dbg !657

if.end:                                           ; preds = %if.else, %if.then8
  %37 = load i32* %28, align 4, !dbg !658, !tbaa !555
  %call12 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str11, i64 0, i64 0), i32 252, i32 %37, i32 8) #5, !dbg !658
  %38 = bitcast i8* %call12 to i32**, !dbg !658
  %edge = getelementptr inbounds i8* %call, i64 32, !dbg !658
  %39 = bitcast i8* %edge to i32***, !dbg !658
  store i32** %38, i32*** %39, align 8, !dbg !658, !tbaa !570
  %40 = load i32* %maxbond.i, align 4, !dbg !659, !tbaa !555
  %41 = load i32* %28, align 4, !dbg !659, !tbaa !555
  %mul = mul nsw i32 %41, %40, !dbg !659
  %call15 = tail call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str11, i64 0, i64 0), i32 253, i32 %mul, i32 4) #5, !dbg !659
  %42 = bitcast i8* %call15 to i32*, !dbg !659
  %43 = load i32*** %39, align 8, !dbg !659, !tbaa !570
  store i32* %42, i32** %43, align 8, !dbg !659, !tbaa !570
  tail call void @llvm.dbg.value(metadata !660, i64 0, metadata !298), !dbg !661
  %44 = load i32* %28, align 4, !dbg !661, !tbaa !555
  %cmp18144 = icmp sgt i32 %44, 1, !dbg !661
  br i1 %cmp18144, label %for.body.lr.ph, label %for.end, !dbg !661

for.body.lr.ph:                                   ; preds = %if.end
  %45 = load i32* %maxbond.i, align 4, !dbg !663, !tbaa !555
  %idx.ext = sext i32 %45 to i64, !dbg !663
  br label %for.body, !dbg !661

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv152 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next153, %for.body ]
  %46 = add nsw i64 %indvars.iv152, -1, !dbg !663
  %47 = load i32*** %39, align 8, !dbg !663, !tbaa !570
  %arrayidx21 = getelementptr inbounds i32** %47, i64 %46, !dbg !663
  %48 = load i32** %arrayidx21, align 8, !dbg !663, !tbaa !570
  %add.ptr = getelementptr inbounds i32* %48, i64 %idx.ext, !dbg !663
  %arrayidx25 = getelementptr inbounds i32** %47, i64 %indvars.iv152, !dbg !663
  store i32* %add.ptr, i32** %arrayidx25, align 8, !dbg !663, !tbaa !570
  %indvars.iv.next153 = add i64 %indvars.iv152, 1, !dbg !661
  %49 = trunc i64 %indvars.iv.next153 to i32, !dbg !661
  %cmp18 = icmp slt i32 %49, %44, !dbg !661
  br i1 %cmp18, label %for.body, label %for.end, !dbg !661

for.end:                                          ; preds = %for.body, %if.end
  %tobool26 = icmp eq i32 %bShakeOnly, 0, !dbg !664
  br i1 %tobool26, label %for.body30, label %if.else58, !dbg !664

for.body30:                                       ; preds = %for.end, %for.inc38
  %indvars.iv148 = phi i64 [ %indvars.iv.next149, %for.inc38 ], [ 0, %for.end ]
  %flags = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv148, i32 5, !dbg !665
  %50 = load i64* %flags, align 8, !dbg !665, !tbaa !594
  %and = and i64 %50, 8, !dbg !665
  %tobool33 = icmp eq i64 %and, 0, !dbg !665
  br i1 %tobool33, label %for.inc38, label %if.then34, !dbg !665

if.then34:                                        ; preds = %for.body30
  %51 = load i32** %functype.i, align 8, !dbg !668, !tbaa !570
  %arrayidx36 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv148, !dbg !668
  tail call fastcc void @mk_igraph(%struct.t_graph* %18, i32* %51, %struct.t_ilist* %arrayidx36, i32 %natoms, i32 1) #6, !dbg !668
  br label %for.inc38, !dbg !668

for.inc38:                                        ; preds = %for.body30, %if.then34
  %indvars.iv.next149 = add i64 %indvars.iv148, 1, !dbg !669
  %lftr.wideiv150 = trunc i64 %indvars.iv.next149 to i32, !dbg !669
  %exitcond151 = icmp eq i32 %lftr.wideiv150, 44, !dbg !669
  br i1 %exitcond151, label %for.body43, label %for.body30, !dbg !669

for.body43:                                       ; preds = %for.inc38, %for.inc55
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %for.inc55 ], [ 0, %for.inc38 ]
  %flags46 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv146, i32 5, !dbg !670
  %52 = load i64* %flags46, align 8, !dbg !670, !tbaa !594
  %and47 = and i64 %52, 8, !dbg !670
  %tobool48 = icmp eq i64 %and47, 0, !dbg !670
  br i1 %tobool48, label %if.then49, label %for.inc55, !dbg !670

if.then49:                                        ; preds = %for.body43
  %53 = load i32** %functype.i, align 8, !dbg !673, !tbaa !570
  %arrayidx53 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv146, !dbg !673
  tail call fastcc void @mk_igraph(%struct.t_graph* %18, i32* %53, %struct.t_ilist* %arrayidx53, i32 %natoms, i32 0) #6, !dbg !673
  br label %for.inc55, !dbg !675

for.inc55:                                        ; preds = %for.body43, %if.then49
  %indvars.iv.next147 = add i64 %indvars.iv146, 1, !dbg !676
  %lftr.wideiv = trunc i64 %indvars.iv.next147 to i32, !dbg !676
  %exitcond = icmp eq i32 %lftr.wideiv, 44, !dbg !676
  br i1 %exitcond, label %if.end68, label %for.body43, !dbg !676

if.else58:                                        ; preds = %for.end
  %54 = load i32** %functype.i, align 8, !dbg !677, !tbaa !570
  %arrayidx61 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 27, !dbg !677
  tail call fastcc void @mk_igraph(%struct.t_graph* %18, i32* %54, %struct.t_ilist* %arrayidx61, i32 %natoms, i32 1) #6, !dbg !677
  %tobool62 = icmp eq i32 %bSettle, 0, !dbg !679
  br i1 %tobool62, label %if.end68, label %if.then63, !dbg !679

if.then63:                                        ; preds = %if.else58
  %55 = load i32** %functype.i, align 8, !dbg !680, !tbaa !570
  %arrayidx66 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 29, !dbg !680
  tail call fastcc void @mk_igraph(%struct.t_graph* %18, i32* %55, %struct.t_ilist* %arrayidx66, i32 %natoms, i32 1) #6, !dbg !680
  br label %if.end68, !dbg !680

if.end68:                                         ; preds = %for.inc55, %if.else58, %if.then63
  %nbound = getelementptr inbounds i8* %call, i64 8, !dbg !681
  %56 = bitcast i8* %nbound to i32*, !dbg !681
  store i32 0, i32* %56, align 4, !dbg !681, !tbaa !555
  tail call void @llvm.dbg.value(metadata !57, i64 0, metadata !298), !dbg !682
  %57 = load i32* %28, align 4, !dbg !682, !tbaa !555
  %cmp71140 = icmp sgt i32 %57, 0, !dbg !682
  br i1 %cmp71140, label %for.body72.lr.ph, label %if.end84, !dbg !682

for.body72.lr.ph:                                 ; preds = %if.end68
  %58 = load i32** %33, align 8, !dbg !684, !tbaa !570
  br label %for.body72, !dbg !682

for.body72:                                       ; preds = %for.body72.lr.ph, %for.inc81
  %59 = phi i32 [ 0, %for.body72.lr.ph ], [ %61, %for.inc81 ]
  %indvars.iv = phi i64 [ 0, %for.body72.lr.ph ], [ %indvars.iv.next, %for.inc81 ]
  %arrayidx75 = getelementptr inbounds i32* %58, i64 %indvars.iv, !dbg !684
  %60 = load i32* %arrayidx75, align 4, !dbg !684, !tbaa !555
  %cmp76 = icmp sgt i32 %60, 0, !dbg !684
  br i1 %cmp76, label %if.then77, label %for.inc81, !dbg !684

if.then77:                                        ; preds = %for.body72
  %inc79 = add nsw i32 %59, 1, !dbg !685
  store i32 %inc79, i32* %56, align 4, !dbg !685, !tbaa !555
  br label %for.inc81, !dbg !685

for.inc81:                                        ; preds = %for.body72, %if.then77
  %61 = phi i32 [ %59, %for.body72 ], [ %inc79, %if.then77 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !682
  %62 = trunc i64 %indvars.iv.next to i32, !dbg !682
  %cmp71 = icmp slt i32 %62, %57, !dbg !682
  br i1 %cmp71, label %for.body72, label %if.end84, !dbg !682

if.end84:                                         ; preds = %if.end68, %for.inc81, %if.then
  ret %struct.t_graph* %18, !dbg !686
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @mk_igraph(%struct.t_graph* nocapture %g, i32* nocapture %ftype, %struct.t_ilist* nocapture %il, i32 %natoms, i32 %bAll) #0 {
entry:
  %waterh = alloca [3 x i32], align 4
  call void @llvm.dbg.value(metadata !{%struct.t_graph* %g}, i64 0, metadata !491), !dbg !687
  call void @llvm.dbg.value(metadata !{i32* %ftype}, i64 0, metadata !492), !dbg !687
  call void @llvm.dbg.value(metadata !{%struct.t_ilist* %il}, i64 0, metadata !493), !dbg !687
  call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !494), !dbg !688
  call void @llvm.dbg.value(metadata !{i32 %bAll}, i64 0, metadata !495), !dbg !688
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %waterh}, metadata !497), !dbg !689
  %nr = getelementptr inbounds %struct.t_ilist* %il, i64 0, i32 0, !dbg !690
  %0 = load i32* %nr, align 4, !dbg !690, !tbaa !555
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !505), !dbg !690
  call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !496), !dbg !691
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !501), !dbg !692
  %cmp81 = icmp sgt i32 %0, 0, !dbg !693
  br i1 %cmp81, label %while.body.lr.ph, label %while.end, !dbg !693

while.body.lr.ph:                                 ; preds = %entry
  %iatoms = getelementptr inbounds %struct.t_ilist* %il, i64 0, i32 2, !dbg !691
  %1 = load i32** %iatoms, align 8, !dbg !691, !tbaa !570
  %arrayidx15 = getelementptr inbounds [3 x i32]* %waterh, i64 0, i64 0, !dbg !694
  %arrayidx17 = getelementptr inbounds [3 x i32]* %waterh, i64 0, i64 1, !dbg !698
  %arrayidx20 = getelementptr inbounds [3 x i32]* %waterh, i64 0, i64 2, !dbg !699
  %tobool31 = icmp eq i32 %bAll, 0, !dbg !700
  %start = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3, !dbg !701
  %nedge = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 5, !dbg !701
  br label %while.body, !dbg !693

while.body:                                       ; preds = %while.body.lr.ph, %if.end46
  %ia.083 = phi i32* [ %1, %while.body.lr.ph ], [ %add.ptr, %if.end46 ]
  %i.082 = phi i32 [ 0, %while.body.lr.ph ], [ %add49, %if.end46 ]
  %2 = load i32* %ia.083, align 4, !dbg !704, !tbaa !555
  %idxprom = sext i32 %2 to i64, !dbg !704
  %arrayidx1 = getelementptr inbounds i32* %ftype, i64 %idxprom, !dbg !704
  %3 = load i32* %arrayidx1, align 4, !dbg !704, !tbaa !555
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !500), !dbg !704
  %idxprom2 = sext i32 %3 to i64, !dbg !705
  %nratoms = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %idxprom2, i32 2, !dbg !705
  %4 = load i32* %nratoms, align 8, !dbg !705, !tbaa !555
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !503), !dbg !705
  %arrayidx4 = getelementptr inbounds i32* %ia.083, i64 1, !dbg !706
  %5 = load i32* %arrayidx4, align 4, !dbg !706, !tbaa !555
  %cmp5 = icmp slt i32 %5, %natoms, !dbg !706
  br i1 %cmp5, label %land.lhs.true, label %if.end46, !dbg !706

land.lhs.true:                                    ; preds = %while.body
  %flags = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %idxprom2, i32 5, !dbg !706
  %6 = load i64* %flags, align 8, !dbg !706, !tbaa !594
  %and = and i64 %6, 8, !dbg !706
  %tobool = icmp eq i64 %and, 0, !dbg !706
  br i1 %tobool, label %if.end46, label %if.then, !dbg !706

if.then:                                          ; preds = %land.lhs.true
  %idxprom8 = sext i32 %4 to i64, !dbg !707
  %arrayidx9 = getelementptr inbounds i32* %ia.083, i64 %idxprom8, !dbg !707
  %7 = load i32* %arrayidx9, align 4, !dbg !707, !tbaa !555
  %cmp10 = icmp slt i32 %7, %natoms, !dbg !707
  br i1 %cmp10, label %if.end, label %if.then11, !dbg !707

if.then11:                                        ; preds = %if.then
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([227 x i8]* @.str21, i64 0, i64 0), i32 %natoms, i32 %natoms) #5, !dbg !708
  br label %if.end, !dbg !708

if.end:                                           ; preds = %if.then, %if.then11
  %cmp12 = icmp eq i32 %3, 29, !dbg !709
  br i1 %cmp12, label %if.then13, label %if.else, !dbg !709

if.then13:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata !710, i64 0, metadata !504), !dbg !711
  %8 = load i32* %arrayidx4, align 4, !dbg !694, !tbaa !555
  store i32 %8, i32* %arrayidx15, align 4, !dbg !694, !tbaa !555
  %9 = load i32* %arrayidx4, align 4, !dbg !698, !tbaa !555
  %add = add nsw i32 %9, 1, !dbg !698
  store i32 %add, i32* %arrayidx17, align 4, !dbg !698, !tbaa !555
  %10 = load i32* %arrayidx4, align 4, !dbg !699, !tbaa !555
  %add19 = add nsw i32 %10, 2, !dbg !699
  store i32 %add19, i32* %arrayidx20, align 4, !dbg !699, !tbaa !555
  call void @llvm.dbg.value(metadata !{i32* %arrayidx15}, i64 0, metadata !499), !dbg !712
  br label %if.end30, !dbg !713

if.else:                                          ; preds = %if.end
  %11 = load i64* %flags, align 8, !dbg !714, !tbaa !594
  %and24 = and i64 %11, 2, !dbg !714
  %tobool25 = icmp eq i64 %and24, 0, !dbg !714
  %. = select i1 %tobool25, i32 %4, i32 2
  call void @llvm.dbg.value(metadata !{i32* %arrayidx4}, i64 0, metadata !499), !dbg !716
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then13
  %iap.0 = phi i32* [ %arrayidx15, %if.then13 ], [ %arrayidx4, %if.else ]
  %nbonded.1 = phi i32 [ 3, %if.then13 ], [ %., %if.else ]
  br i1 %tobool31, label %for.cond.preheader, label %if.then32, !dbg !700

for.cond.preheader:                               ; preds = %if.end30
  %cmp3479 = icmp sgt i32 %nbonded.1, 0, !dbg !717
  br i1 %cmp3479, label %for.body.lr.ph, label %if.end46, !dbg !717

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %12 = load i32* %start, align 4, !dbg !701, !tbaa !555
  %13 = load i32** %nedge, align 8, !dbg !701, !tbaa !570
  br label %for.body, !dbg !717

if.then32:                                        ; preds = %if.end30
  call fastcc void @add_gbond(%struct.t_graph* %g, i32* %iap.0, i32 %nbonded.1) #6, !dbg !718
  br label %if.end46, !dbg !718

for.cond:                                         ; preds = %for.body
  %14 = trunc i64 %indvars.iv.next to i32, !dbg !717
  %cmp34 = icmp slt i32 %14, %nbonded.1, !dbg !717
  br i1 %cmp34, label %for.body, label %if.end46, !dbg !717

for.body:                                         ; preds = %for.cond, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %arrayidx36 = getelementptr inbounds i32* %iap.0, i64 %indvars.iv, !dbg !701
  %15 = load i32* %arrayidx36, align 4, !dbg !701, !tbaa !555
  %sub = sub nsw i32 %15, %12, !dbg !701
  %idxprom37 = sext i32 %sub to i64, !dbg !701
  %arrayidx38 = getelementptr inbounds i32* %13, i64 %idxprom37, !dbg !701
  %16 = load i32* %arrayidx38, align 4, !dbg !701, !tbaa !555
  %cmp39 = icmp eq i32 %16, 0, !dbg !701
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !717
  br i1 %cmp39, label %if.then43, label %for.cond, !dbg !701

if.then43:                                        ; preds = %for.body
  call fastcc void @add_gbond(%struct.t_graph* %g, i32* %iap.0, i32 %nbonded.1) #6, !dbg !719
  br label %if.end46, !dbg !719

if.end46:                                         ; preds = %for.cond.preheader, %for.cond, %land.lhs.true, %if.then32, %if.then43, %while.body
  %add47 = add nsw i32 %4, 1, !dbg !720
  %idx.ext = sext i32 %add47 to i64, !dbg !720
  %add.ptr = getelementptr inbounds i32* %ia.083, i64 %idx.ext, !dbg !720
  call void @llvm.dbg.value(metadata !{i32* %add.ptr}, i64 0, metadata !496), !dbg !720
  %add49 = add nsw i32 %add47, %i.082, !dbg !721
  call void @llvm.dbg.value(metadata !{i32 %add49}, i64 0, metadata !501), !dbg !721
  %cmp = icmp slt i32 %add49, %0, !dbg !693
  br i1 %cmp, label %while.body, label %while.end, !dbg !693

while.end:                                        ; preds = %if.end46, %entry
  ret void, !dbg !722
}

; Function Attrs: nounwind optsize uwtable
define void @done_graph(%struct.t_graph* nocapture %g) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_graph* %g}, i64 0, metadata !303), !dbg !723
  %nnodes = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 1, !dbg !724
  %0 = load i32* %nnodes, align 4, !dbg !724, !tbaa !555
  %cmp = icmp sgt i32 %0, 0, !dbg !724
  br i1 %cmp, label %if.then, label %if.end, !dbg !724

if.then:                                          ; preds = %entry
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7, !dbg !725
  %1 = load [3 x i32]** %ishift, align 8, !dbg !725, !tbaa !570
  %2 = bitcast [3 x i32]* %1 to i8*, !dbg !725
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str11, i64 0, i64 0), i32 294, i8* %2) #5, !dbg !725
  %nedge = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 5, !dbg !727
  %3 = load i32** %nedge, align 8, !dbg !727, !tbaa !570
  %4 = bitcast i32* %3 to i8*, !dbg !727
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str11, i64 0, i64 0), i32 295, i8* %4) #5, !dbg !727
  %edge = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 6, !dbg !728
  %5 = load i32*** %edge, align 8, !dbg !728, !tbaa !570
  %6 = load i32** %5, align 8, !dbg !728, !tbaa !570
  %7 = bitcast i32* %6 to i8*, !dbg !728
  tail call void @save_free(i8* getelementptr inbounds ([11 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str11, i64 0, i64 0), i32 297, i8* %7) #5, !dbg !728
  %8 = load i32*** %edge, align 8, !dbg !729, !tbaa !570
  %9 = bitcast i32** %8 to i8*, !dbg !729
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str11, i64 0, i64 0), i32 298, i8* %9) #5, !dbg !729
  br label %if.end, !dbg !730

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !731
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind optsize uwtable
define void @mk_mshift(%struct._IO_FILE* %log, %struct.t_graph* nocapture %g, [3 x float]* nocapture %box, [3 x float]* nocapture %x) #0 {
entry:
  %dx.i.i = alloca [3 x float], align 4
  %hbox.i = alloca [3 x float], align 4
  %is_aj.i = alloca [3 x i32], align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !311), !dbg !732
  call void @llvm.dbg.value(metadata !{%struct.t_graph* %g}, i64 0, metadata !312), !dbg !732
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !313), !dbg !732
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !314), !dbg !732
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !323), !dbg !733
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !323), !dbg !734
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !317), !dbg !735
  %nnodes1 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 1, !dbg !735
  %0 = load i32* %nnodes1, align 4, !dbg !735, !tbaa !555
  %cmp140 = icmp sgt i32 %0, 0, !dbg !735
  br i1 %cmp140, label %for.body.lr.ph, label %for.end, !dbg !735

for.body.lr.ph:                                   ; preds = %entry
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7, !dbg !737
  %1 = load [3 x i32]** %ishift, align 8, !dbg !737, !tbaa !570
  br label %for.body, !dbg !735

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx2 = getelementptr inbounds [3 x i32]* %1, i64 %indvars.iv, i64 2, !dbg !737
  store i32 0, i32* %arrayidx2, align 4, !dbg !737, !tbaa !555
  %arrayidx6 = getelementptr inbounds [3 x i32]* %1, i64 %indvars.iv, i64 1, !dbg !737
  store i32 0, i32* %arrayidx6, align 4, !dbg !737, !tbaa !555
  %arrayidx10 = getelementptr inbounds [3 x i32]* %1, i64 %indvars.iv, i64 0, !dbg !737
  store i32 0, i32* %arrayidx10, align 4, !dbg !737, !tbaa !555
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !735
  %2 = load i32* %nnodes1, align 4, !dbg !735, !tbaa !555
  %3 = trunc i64 %indvars.iv.next to i32, !dbg !735
  %cmp = icmp slt i32 %3, %2, !dbg !735
  br i1 %cmp, label %for.body, label %for.end, !dbg !735

for.end:                                          ; preds = %for.body, %entry
  %.lcssa = phi i32 [ %0, %entry ], [ %2, %for.body ]
  %nbound = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 2, !dbg !739
  %4 = load i32* %nbound, align 4, !dbg !739, !tbaa !555
  %tobool = icmp eq i32 %4, 0, !dbg !739
  br i1 %tobool, label %if.end49, label %if.end, !dbg !739

if.end:                                           ; preds = %for.end
  call void @llvm.dbg.value(metadata !{i32 %.lcssa}, i64 0, metadata !316), !dbg !740
  %5 = load i32* @mk_mshift.negc, align 4, !dbg !741, !tbaa !555
  %cmp12 = icmp sgt i32 %.lcssa, %5, !dbg !741
  br i1 %cmp12, label %if.then13, label %if.end.if.end15_crit_edge, !dbg !741

if.end.if.end15_crit_edge:                        ; preds = %if.end
  %.pre148 = load i32** @mk_mshift.egc, align 8, !dbg !742, !tbaa !570
  br label %if.end15, !dbg !741

if.then13:                                        ; preds = %if.end
  store i32 %.lcssa, i32* @mk_mshift.negc, align 4, !dbg !743, !tbaa !555
  %6 = load i32** @mk_mshift.egc, align 8, !dbg !745, !tbaa !570
  %7 = bitcast i32* %6 to i8*, !dbg !745
  %mul = shl i32 %.lcssa, 2, !dbg !745
  %call = call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str11, i64 0, i64 0), i32 435, i8* %7, i32 %mul) #5, !dbg !745
  %8 = bitcast i8* %call to i32*, !dbg !745
  store i32* %8, i32** @mk_mshift.egc, align 8, !dbg !745, !tbaa !570
  br label %if.end15, !dbg !746

if.end15:                                         ; preds = %if.end.if.end15_crit_edge, %if.then13
  %9 = phi i32* [ %.pre148, %if.end.if.end15_crit_edge ], [ %8, %if.then13 ]
  %10 = bitcast i32* %9 to i8*, !dbg !742
  %conv16 = sext i32 %.lcssa to i64, !dbg !742
  %mul17 = shl nsw i64 %conv16, 2, !dbg !742
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 %mul17, i32 4, i1 false), !dbg !742
  %11 = load i32* %nbound, align 4, !dbg !747, !tbaa !555
  call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !318), !dbg !747
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !319), !dbg !748
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !320), !dbg !749
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !321), !dbg !750
  %cmp19133 = icmp sgt i32 %11, 0, !dbg !751
  br i1 %cmp19133, label %while.body.lr.ph, label %if.end49, !dbg !751

while.body.lr.ph:                                 ; preds = %if.end15
  %nedge.i = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 5, !dbg !752
  %12 = bitcast [3 x float]* %hbox.i to i8*, !dbg !756
  %13 = bitcast [3 x i32]* %is_aj.i to i8*, !dbg !756
  %arrayidx7.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !759
  %start.i = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3, !dbg !760
  %edge.i = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 6, !dbg !761
  %ishift.i = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7, !dbg !764
  %arraydecay43.i = getelementptr inbounds [3 x i32]* %is_aj.i, i64 0, i64 0, !dbg !764
  %14 = bitcast [3 x float]* %dx.i.i to i8*, !dbg !765
  %arraydecay.i.i = getelementptr inbounds [3 x float]* %dx.i.i, i64 0, i64 0, !dbg !766
  %arrayidx9.i.i.i = getelementptr inbounds [3 x float]* %dx.i.i, i64 0, i64 1, !dbg !767
  %arrayidx10.i.i.i = getelementptr inbounds [3 x float]* %dx.i.i, i64 0, i64 2, !dbg !768
  %arrayidx2.i3.i = getelementptr inbounds [3 x i32]* %is_aj.i, i64 0, i64 1, !dbg !769
  %arrayidx4.i.i = getelementptr inbounds [3 x i32]* %is_aj.i, i64 0, i64 2, !dbg !773
  %arrayidx12.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !759
  %arrayidx18.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !759
  br label %while.body, !dbg !751

while.cond.loopexit:                              ; preds = %mk_grey.exit, %if.end25
  %nG.1.lcssa = phi i32 [ %inc28, %if.end25 ], [ %add, %mk_grey.exit ]
  %nW.1.lcssa = phi i32 [ %dec, %if.end25 ], [ %sub, %mk_grey.exit ]
  %inc100.i105.lcssa = phi i32 [ %inc100.i104134, %if.end25 ], [ %inc100.i106, %mk_grey.exit ]
  %cmp19 = icmp sgt i32 %nW.1.lcssa, 0, !dbg !751
  br i1 %cmp19, label %while.body, label %while.end43, !dbg !751

while.body:                                       ; preds = %while.cond.loopexit, %while.body.lr.ph
  %fW.0138 = phi i32 [ 0, %while.body.lr.ph ], [ %retval.0.i115, %while.cond.loopexit ]
  %nG.0136 = phi i32 [ 0, %while.body.lr.ph ], [ %nG.1.lcssa, %while.cond.loopexit ]
  %nW.0135 = phi i32 [ %11, %while.body.lr.ph ], [ %nW.1.lcssa, %while.cond.loopexit ]
  %inc100.i104134 = phi i32 [ 0, %while.body.lr.ph ], [ %inc100.i105.lcssa, %while.cond.loopexit ]
  %15 = load i32** @mk_mshift.egc, align 8, !dbg !754, !tbaa !570
  tail call void @llvm.dbg.value(metadata !{i32 %fW.0138}, i64 0, metadata !774), !dbg !775
  tail call void @llvm.dbg.value(metadata !57, i64 0, metadata !776), !dbg !775
  tail call void @llvm.dbg.value(metadata !{%struct.t_graph* %g}, i64 0, metadata !777), !dbg !775
  tail call void @llvm.dbg.value(metadata !{i32* %15}, i64 0, metadata !778), !dbg !775
  tail call void @llvm.dbg.value(metadata !{i32 %fW.0138}, i64 0, metadata !779), !dbg !780
  %16 = load i32* %nnodes1, align 4, !dbg !780, !tbaa !555
  %cmp10.i = icmp sgt i32 %16, %fW.0138, !dbg !780
  br i1 %cmp10.i, label %for.body.lr.ph.i, label %if.then24, !dbg !780

for.body.lr.ph.i:                                 ; preds = %while.body
  %17 = load i32** %nedge.i, align 8, !dbg !752, !tbaa !570
  %18 = sext i32 %fW.0138 to i64
  br label %for.body.i, !dbg !780

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ %18, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %i.011.i = phi i32 [ %fW.0138, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i ]
  %arrayidx.i = getelementptr inbounds i32* %17, i64 %indvars.iv.i, !dbg !752
  %19 = load i32* %arrayidx.i, align 4, !dbg !752, !tbaa !555
  %cmp1.i = icmp sgt i32 %19, 0, !dbg !752
  br i1 %cmp1.i, label %land.lhs.true.i, label %for.inc.i, !dbg !752

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx3.i = getelementptr inbounds i32* %15, i64 %indvars.iv.i, !dbg !752
  %20 = load i32* %arrayidx3.i, align 4, !dbg !752, !tbaa !556
  %cmp4.i = icmp eq i32 %20, 0, !dbg !752
  br i1 %cmp4.i, label %first_colour.exit, label %for.inc.i, !dbg !752

for.inc.i:                                        ; preds = %land.lhs.true.i, %for.body.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !780
  %inc.i = add nsw i32 %i.011.i, 1, !dbg !780
  tail call void @llvm.dbg.value(metadata !{i32 %inc.i}, i64 0, metadata !779), !dbg !780
  %21 = trunc i64 %indvars.iv.next.i to i32, !dbg !780
  %cmp.i = icmp slt i32 %21, %16, !dbg !780
  br i1 %cmp.i, label %for.body.i, label %if.then24, !dbg !780

first_colour.exit:                                ; preds = %land.lhs.true.i
  call void @llvm.dbg.value(metadata !{i32 %retval.0.i115}, i64 0, metadata !321), !dbg !754
  %cmp22 = icmp eq i32 %i.011.i, -1, !dbg !754
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !754

if.then24:                                        ; preds = %for.inc.i, %while.body, %first_colour.exit
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str18, i64 0, i64 0), i32 %nW.0135) #5, !dbg !781
  %.pre = load i32** @mk_mshift.egc, align 8, !dbg !782, !tbaa !570
  br label %if.end25, !dbg !781

if.end25:                                         ; preds = %if.then24, %first_colour.exit
  %22 = phi i32* [ %.pre, %if.then24 ], [ %15, %first_colour.exit ]
  %retval.0.i115 = phi i32 [ -1, %if.then24 ], [ %i.011.i, %first_colour.exit ]
  %idxprom26 = sext i32 %retval.0.i115 to i64, !dbg !782
  %arrayidx27 = getelementptr inbounds i32* %22, i64 %idxprom26, !dbg !782
  store i32 1, i32* %arrayidx27, align 4, !dbg !782, !tbaa !556
  %inc28 = add nsw i32 %nG.0136, 1, !dbg !783
  call void @llvm.dbg.value(metadata !{i32 %inc28}, i64 0, metadata !319), !dbg !783
  %dec = add nsw i32 %nW.0135, -1, !dbg !784
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !318), !dbg !784
  call void @llvm.dbg.value(metadata !{i32 %retval.0.i115}, i64 0, metadata !322), !dbg !785
  call void @llvm.dbg.value(metadata !{i32 %retval.0.i115}, i64 0, metadata !322), !dbg !786
  call void @llvm.dbg.value(metadata !{i32 %retval.0.i115}, i64 0, metadata !322), !dbg !787
  %cmp30124 = icmp sgt i32 %nG.0136, -1, !dbg !788
  br i1 %cmp30124, label %while.body32, label %while.cond.loopexit, !dbg !788

while.body32:                                     ; preds = %mk_grey.exit, %if.end25
  %nG.1128 = phi i32 [ %inc28, %if.end25 ], [ %add, %mk_grey.exit ]
  %nW.1127 = phi i32 [ %dec, %if.end25 ], [ %sub, %mk_grey.exit ]
  %inc100.i105126 = phi i32 [ %inc100.i104134, %if.end25 ], [ %inc100.i106, %mk_grey.exit ]
  %sub.i112125 = phi i32 [ %retval.0.i115, %if.end25 ], [ %sub.i113, %mk_grey.exit ]
  %23 = load i32** @mk_mshift.egc, align 8, !dbg !786, !tbaa !570
  tail call void @llvm.dbg.value(metadata !{i32 %sub.i112125}, i64 0, metadata !789), !dbg !790
  tail call void @llvm.dbg.value(metadata !660, i64 0, metadata !791), !dbg !790
  tail call void @llvm.dbg.value(metadata !{%struct.t_graph* %g}, i64 0, metadata !792), !dbg !790
  tail call void @llvm.dbg.value(metadata !{i32* %23}, i64 0, metadata !793), !dbg !790
  tail call void @llvm.dbg.value(metadata !{i32 %sub.i112125}, i64 0, metadata !794), !dbg !795
  %24 = load i32* %nnodes1, align 4, !dbg !795, !tbaa !555
  %cmp10.i83 = icmp sgt i32 %24, %sub.i112125, !dbg !795
  br i1 %cmp10.i83, label %for.body.lr.ph.i85, label %if.then36, !dbg !795

for.body.lr.ph.i85:                               ; preds = %while.body32
  %25 = load i32** %nedge.i, align 8, !dbg !796, !tbaa !570
  %26 = sext i32 %sub.i112125 to i64
  br label %for.body.i90, !dbg !795

for.body.i90:                                     ; preds = %for.inc.i97, %for.body.lr.ph.i85
  %indvars.iv.i86 = phi i64 [ %26, %for.body.lr.ph.i85 ], [ %indvars.iv.next.i94, %for.inc.i97 ]
  %i.011.i87 = phi i32 [ %sub.i112125, %for.body.lr.ph.i85 ], [ %inc.i95, %for.inc.i97 ]
  %arrayidx.i88 = getelementptr inbounds i32* %25, i64 %indvars.iv.i86, !dbg !796
  %27 = load i32* %arrayidx.i88, align 4, !dbg !796, !tbaa !555
  %cmp1.i89 = icmp sgt i32 %27, 0, !dbg !796
  br i1 %cmp1.i89, label %land.lhs.true.i93, label %for.inc.i97, !dbg !796

land.lhs.true.i93:                                ; preds = %for.body.i90
  %arrayidx3.i91 = getelementptr inbounds i32* %23, i64 %indvars.iv.i86, !dbg !796
  %28 = load i32* %arrayidx3.i91, align 4, !dbg !796, !tbaa !556
  %cmp4.i92 = icmp eq i32 %28, 1, !dbg !796
  br i1 %cmp4.i92, label %first_colour.exit99, label %for.inc.i97, !dbg !796

for.inc.i97:                                      ; preds = %land.lhs.true.i93, %for.body.i90
  %indvars.iv.next.i94 = add i64 %indvars.iv.i86, 1, !dbg !795
  %inc.i95 = add nsw i32 %i.011.i87, 1, !dbg !795
  tail call void @llvm.dbg.value(metadata !{i32 %inc.i95}, i64 0, metadata !794), !dbg !795
  %29 = trunc i64 %indvars.iv.next.i94 to i32, !dbg !795
  %cmp.i96 = icmp slt i32 %29, %24, !dbg !795
  br i1 %cmp.i96, label %for.body.i90, label %if.then36, !dbg !795

first_colour.exit99:                              ; preds = %land.lhs.true.i93
  call void @llvm.dbg.value(metadata !{i32 %retval.0.i98118}, i64 0, metadata !322), !dbg !786
  call void @llvm.dbg.value(metadata !{i32 %retval.0.i98118}, i64 0, metadata !322), !dbg !786
  call void @llvm.dbg.value(metadata !{i32 %retval.0.i98118}, i64 0, metadata !322), !dbg !787
  %cmp34 = icmp eq i32 %i.011.i87, -1, !dbg !786
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !786

if.then36:                                        ; preds = %for.inc.i97, %while.body32, %first_colour.exit99
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([33 x i8]* @.str19, i64 0, i64 0), i32 %nG.1128) #5, !dbg !797
  %.pre147 = load i32** @mk_mshift.egc, align 8, !dbg !787, !tbaa !570
  br label %if.end37, !dbg !797

if.end37:                                         ; preds = %if.then36, %first_colour.exit99
  %30 = phi i32* [ %.pre147, %if.then36 ], [ %23, %first_colour.exit99 ]
  %retval.0.i98118 = phi i32 [ -1, %if.then36 ], [ %i.011.i87, %first_colour.exit99 ]
  %idxprom38 = sext i32 %retval.0.i98118 to i64, !dbg !787
  %arrayidx39 = getelementptr inbounds i32* %30, i64 %idxprom38, !dbg !787
  store i32 2, i32* %arrayidx39, align 4, !dbg !787, !tbaa !556
  call void @llvm.dbg.value(metadata !{i32 %dec41}, i64 0, metadata !319), !dbg !798
  %31 = load i32** @mk_mshift.egc, align 8, !dbg !757, !tbaa !570
  call void @llvm.lifetime.start(i64 12, i8* %12) #4, !dbg !756
  call void @llvm.lifetime.start(i64 12, i8* %13) #4, !dbg !756
  call void @llvm.dbg.value(metadata !799, i64 0, metadata !800) #4, !dbg !756
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !801) #4, !dbg !756
  call void @llvm.dbg.declare(metadata !{[3 x float]* %hbox.i}, metadata !424) #4, !dbg !802
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %is_aj.i}, metadata !426) #4, !dbg !803
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !804) #4, !dbg !805
  br label %for.body.i78, !dbg !805

for.body.i78:                                     ; preds = %for.body.i78, %if.end37
  %indvars.iv37.i = phi i64 [ 0, %if.end37 ], [ %indvars.iv.next38.i, %for.body.i78 ]
  %arrayidx2.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv37.i, i64 %indvars.iv37.i, !dbg !807
  %32 = load float* %arrayidx2.i, align 4, !dbg !807, !tbaa !808
  %conv3.i = fmul float %32, 5.000000e-01, !dbg !807
  %arrayidx5.i = getelementptr inbounds [3 x float]* %hbox.i, i64 0, i64 %indvars.iv37.i, !dbg !807
  store float %conv3.i, float* %arrayidx5.i, align 4, !dbg !807, !tbaa !808
  %indvars.iv.next38.i = add i64 %indvars.iv37.i, 1, !dbg !805
  %lftr.wideiv = trunc i64 %indvars.iv.next38.i to i32, !dbg !805
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !805
  br i1 %exitcond, label %for.end.i, label %for.body.i78, !dbg !805

for.end.i:                                        ; preds = %for.body.i78
  %dec41 = add nsw i32 %nG.1128, -1, !dbg !798
  %33 = load float* %arrayidx7.i, align 4, !dbg !759, !tbaa !808
  %fabsf.i = call float @fabsf(float %33) #7, !dbg !759
  %34 = fpext float %fabsf.i to double, !dbg !759
  %cmp9.i = fcmp ogt double %34, 1.200000e-38, !dbg !759
  br i1 %cmp9.i, label %lor.end.i, label %lor.lhs.false.i, !dbg !759

lor.lhs.false.i:                                  ; preds = %for.end.i
  %35 = load float* %arrayidx12.i, align 4, !dbg !759, !tbaa !808
  %fabsf1.i = call float @fabsf(float %35) #7, !dbg !759
  %36 = fpext float %fabsf1.i to double, !dbg !759
  %cmp15.i = fcmp ogt double %36, 1.200000e-38, !dbg !759
  br i1 %cmp15.i, label %lor.end.i, label %lor.rhs.i, !dbg !759

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %37 = load float* %arrayidx18.i, align 4, !dbg !759, !tbaa !808
  %fabsf2.i = call float @fabsf(float %37) #7, !dbg !759
  %38 = fpext float %fabsf2.i to double, !dbg !759
  %cmp21.i = fcmp ogt double %38, 1.200000e-38, !dbg !759
  br label %lor.end.i, !dbg !759

lor.end.i:                                        ; preds = %lor.rhs.i, %lor.lhs.false.i, %for.end.i
  %39 = phi i1 [ true, %lor.lhs.false.i ], [ true, %for.end.i ], [ %cmp21.i, %lor.rhs.i ]
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !809) #4, !dbg !810
  call void @llvm.dbg.value(metadata !{i32 %retval.0.i98118}, i64 0, metadata !811) #4, !dbg !812
  %40 = load i32* %start.i, align 4, !dbg !760, !tbaa !555
  call void @llvm.dbg.value(metadata !{i32 %40}, i64 0, metadata !813) #4, !dbg !760
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !814) #4, !dbg !815
  %41 = load i32** %nedge.i, align 8, !dbg !815, !tbaa !570
  %arrayidx2532.i = getelementptr inbounds i32* %41, i64 %idxprom38, !dbg !815
  %42 = load i32* %arrayidx2532.i, align 4, !dbg !815, !tbaa !555
  %cmp2633.i = icmp sgt i32 %42, 0, !dbg !815
  br i1 %cmp2633.i, label %for.body28.lr.ph.i, label %mk_grey.exit, !dbg !815

for.body28.lr.ph.i:                               ; preds = %lor.end.i
  %add.i = add nsw i32 %40, %retval.0.i98118, !dbg !764
  %idxprom33.i = sext i32 %add.i to i64, !dbg !764
  %arraydecay35.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom33.i, i64 0, !dbg !764
  %arrayidx2.i.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom33.i, i64 1, !dbg !816
  %arrayidx5.i.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom33.i, i64 2, !dbg !817
  %.pre.i = load [3 x i32]** %ishift.i, align 8, !dbg !764, !tbaa !570
  br label %for.body28.i, !dbg !815

for.body28.i:                                     ; preds = %for.inc103.i, %for.body28.lr.ph.i
  %sub.i109 = phi i32 [ %retval.0.i98118, %for.body28.lr.ph.i ], [ %sub.i110, %for.inc103.i ]
  %inc100.i107 = phi i32 [ %inc100.i105126, %for.body28.lr.ph.i ], [ %inc100.i108, %for.inc103.i ]
  %43 = phi i32* [ %41, %for.body28.lr.ph.i ], [ %81, %for.inc103.i ]
  %44 = phi [3 x i32]* [ %.pre.i, %for.body28.lr.ph.i ], [ %82, %for.inc103.i ]
  %indvars.iv.i80 = phi i64 [ 0, %for.body28.lr.ph.i ], [ %indvars.iv.next.i81, %for.inc103.i ]
  %ng.034.i = phi i32 [ 0, %for.body28.lr.ph.i ], [ %ng.1.i, %for.inc103.i ]
  %45 = load i32*** %edge.i, align 8, !dbg !761, !tbaa !570
  %arrayidx31.i = getelementptr inbounds i32** %45, i64 %idxprom38, !dbg !761
  %46 = load i32** %arrayidx31.i, align 8, !dbg !761, !tbaa !570
  %arrayidx32.i = getelementptr inbounds i32* %46, i64 %indvars.iv.i80, !dbg !761
  %47 = load i32* %arrayidx32.i, align 4, !dbg !761, !tbaa !555
  %sub.i = sub nsw i32 %47, %40, !dbg !761
  call void @llvm.dbg.value(metadata !{i32 %sub.i}, i64 0, metadata !818) #4, !dbg !761
  %idxprom37.i = sext i32 %47 to i64, !dbg !764
  %arraydecay39.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom37.i, i64 0, !dbg !764
  call void @llvm.lifetime.start(i64 12, i8* %14) #4, !dbg !765
  %48 = load float* %arraydecay35.i, align 4, !dbg !819, !tbaa !808
  %49 = load float* %arraydecay39.i, align 4, !dbg !819, !tbaa !808
  %sub.i.i.i = fsub float %48, %49, !dbg !819
  %50 = load float* %arrayidx2.i.i.i, align 4, !dbg !816, !tbaa !808
  %arrayidx3.i.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom37.i, i64 1, !dbg !816
  %51 = load float* %arrayidx3.i.i.i, align 4, !dbg !816, !tbaa !808
  %sub4.i.i.i = fsub float %50, %51, !dbg !816
  %52 = load float* %arrayidx5.i.i.i, align 4, !dbg !817, !tbaa !808
  %arrayidx6.i.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom37.i, i64 2, !dbg !817
  %53 = load float* %arrayidx6.i.i.i, align 4, !dbg !817, !tbaa !808
  %sub7.i.i.i = fsub float %52, %53, !dbg !817
  store float %sub.i.i.i, float* %arraydecay.i.i, align 4, !dbg !820, !tbaa !808
  store float %sub4.i.i.i, float* %arrayidx9.i.i.i, align 4, !dbg !767, !tbaa !808
  store float %sub7.i.i.i, float* %arrayidx10.i.i.i, align 4, !dbg !768, !tbaa !808
  br i1 %39, label %for.body.i.i, label %for.body.i19.i, !dbg !821

for.body.i.i:                                     ; preds = %for.body28.i, %for.inc50.for.body_crit_edge.i.i
  %54 = phi float [ %.pre.i.i, %for.inc50.for.body_crit_edge.i.i ], [ %sub7.i.i.i, %for.body28.i ]
  %indvars.iv92.i.i = phi i64 [ %indvars.iv.next93.i.i, %for.inc50.for.body_crit_edge.i.i ], [ 2, %for.body28.i ]
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %hbox.i, i64 0, i64 %indvars.iv92.i.i, !dbg !822
  %55 = load float* %arrayidx2.i.i, align 4, !dbg !822, !tbaa !808
  %sub.i.i = fsub float -0.000000e+00, %55, !dbg !822
  %cmp3.i.i = fcmp olt float %54, %sub.i.i, !dbg !822
  br i1 %cmp3.i.i, label %if.then.i.i, label %if.else.i.i, !dbg !822

if.then.i.i:                                      ; preds = %for.body.i.i
  %arrayidx5.i.i = getelementptr inbounds [3 x i32]* %44, i64 %idxprom38, i64 %indvars.iv92.i.i, !dbg !825
  %56 = load i32* %arrayidx5.i.i, align 4, !dbg !825, !tbaa !555
  %sub6.i.i = add nsw i32 %56, -1, !dbg !825
  %arrayidx8.i.i = getelementptr inbounds [3 x i32]* %is_aj.i, i64 0, i64 %indvars.iv92.i.i, !dbg !825
  store i32 %sub6.i.i, i32* %arrayidx8.i.i, align 4, !dbg !825, !tbaa !555
  %57 = trunc i64 %indvars.iv92.i.i to i32, !dbg !827
  %cmp1183.i.i = icmp sgt i32 %57, 0, !dbg !827
  br i1 %cmp1183.i.i, label %for.body12.i.i, label %if.end.i, !dbg !827

for.body12.i.i:                                   ; preds = %for.body12.i.i, %if.then.i.i
  %indvars.iv90.i.i = phi i64 [ %indvars.iv92.i.i, %if.then.i.i ], [ %indvars.iv.next91.i.i, %for.body12.i.i ], !dbg !829
  %indvars.iv.next91.i.i = add i64 %indvars.iv90.i.i, -1, !dbg !827
  %arrayidx16.i.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv92.i.i, i64 %indvars.iv.next91.i.i, !dbg !830
  %58 = load float* %arrayidx16.i.i, align 4, !dbg !830, !tbaa !808
  %arrayidx18.i.i = getelementptr inbounds [3 x float]* %dx.i.i, i64 0, i64 %indvars.iv.next91.i.i, !dbg !830
  %59 = load float* %arrayidx18.i.i, align 4, !dbg !830, !tbaa !808
  %add.i.i = fadd float %58, %59, !dbg !830
  store float %add.i.i, float* %arrayidx18.i.i, align 4, !dbg !830, !tbaa !808
  %60 = trunc i64 %indvars.iv.next91.i.i to i32, !dbg !827
  %cmp11.i.i = icmp sgt i32 %60, 0, !dbg !827
  br i1 %cmp11.i.i, label %for.body12.i.i, label %for.inc50.i.i, !dbg !827

if.else.i.i:                                      ; preds = %for.body.i.i
  %cmp23.i.i = fcmp ult float %54, %55, !dbg !831
  %arrayidx26.i.i = getelementptr inbounds [3 x i32]* %44, i64 %idxprom38, i64 %indvars.iv92.i.i, !dbg !832
  %61 = load i32* %arrayidx26.i.i, align 4, !dbg !832, !tbaa !555
  br i1 %cmp23.i.i, label %if.else44.i.i, label %if.then24.i.i, !dbg !831

if.then24.i.i:                                    ; preds = %if.else.i.i
  %add27.i.i = add nsw i32 %61, 1, !dbg !832
  %arrayidx29.i.i = getelementptr inbounds [3 x i32]* %is_aj.i, i64 0, i64 %indvars.iv92.i.i, !dbg !832
  store i32 %add27.i.i, i32* %arrayidx29.i.i, align 4, !dbg !832, !tbaa !555
  %62 = trunc i64 %indvars.iv92.i.i to i32, !dbg !834
  %cmp3279.i.i = icmp sgt i32 %62, 0, !dbg !834
  br i1 %cmp3279.i.i, label %for.body33.i.i, label %if.end.i, !dbg !834

for.body33.i.i:                                   ; preds = %for.body33.i.i, %if.then24.i.i
  %indvars.iv86.i.i = phi i64 [ %indvars.iv92.i.i, %if.then24.i.i ], [ %indvars.iv.next87.i.i, %for.body33.i.i ], !dbg !829
  %indvars.iv.next87.i.i = add i64 %indvars.iv86.i.i, -1, !dbg !834
  %arrayidx37.i.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv92.i.i, i64 %indvars.iv.next87.i.i, !dbg !836
  %63 = load float* %arrayidx37.i.i, align 4, !dbg !836, !tbaa !808
  %arrayidx39.i.i = getelementptr inbounds [3 x float]* %dx.i.i, i64 0, i64 %indvars.iv.next87.i.i, !dbg !836
  %64 = load float* %arrayidx39.i.i, align 4, !dbg !836, !tbaa !808
  %sub40.i.i = fsub float %64, %63, !dbg !836
  store float %sub40.i.i, float* %arrayidx39.i.i, align 4, !dbg !836, !tbaa !808
  %65 = trunc i64 %indvars.iv.next87.i.i to i32, !dbg !834
  %cmp32.i.i = icmp sgt i32 %65, 0, !dbg !834
  br i1 %cmp32.i.i, label %for.body33.i.i, label %for.inc50.i.i, !dbg !834

if.else44.i.i:                                    ; preds = %if.else.i.i
  %arrayidx48.i.i = getelementptr inbounds [3 x i32]* %is_aj.i, i64 0, i64 %indvars.iv92.i.i, !dbg !837
  store i32 %61, i32* %arrayidx48.i.i, align 4, !dbg !837, !tbaa !555
  %.pre94.i.i = trunc i64 %indvars.iv92.i.i to i32, !dbg !829
  br label %for.inc50.i.i

for.inc50.i.i:                                    ; preds = %for.body12.i.i, %for.body33.i.i, %if.else44.i.i
  %.pre-phi.i.i = phi i32 [ %.pre94.i.i, %if.else44.i.i ], [ %62, %for.body33.i.i ], [ %57, %for.body12.i.i ], !dbg !829
  %indvars.iv.next93.i.i = add i64 %indvars.iv92.i.i, -1, !dbg !829
  %cmp.i.i = icmp sgt i32 %.pre-phi.i.i, 0, !dbg !829
  br i1 %cmp.i.i, label %for.inc50.for.body_crit_edge.i.i, label %if.end.i, !dbg !829

for.inc50.for.body_crit_edge.i.i:                 ; preds = %for.inc50.i.i
  %arrayidx.phi.trans.insert.i.i = getelementptr inbounds [3 x float]* %dx.i.i, i64 0, i64 %indvars.iv.next93.i.i
  %.pre.i.i = load float* %arrayidx.phi.trans.insert.i.i, align 4, !dbg !822, !tbaa !808
  br label %for.body.i.i, !dbg !829

for.body.i19.i:                                   ; preds = %for.body28.i, %for.inc.for.body_crit_edge.i.i
  %66 = phi float [ %.pre.i29.i, %for.inc.for.body_crit_edge.i.i ], [ %sub.i.i.i, %for.body28.i ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.inc.for.body_crit_edge.i.i ], [ 0, %for.body28.i ]
  %arrayidx2.i16.i = getelementptr inbounds [3 x float]* %hbox.i, i64 0, i64 %indvars.iv.i.i, !dbg !838
  %67 = load float* %arrayidx2.i16.i, align 4, !dbg !838, !tbaa !808
  %sub.i17.i = fsub float -0.000000e+00, %67, !dbg !838
  %cmp3.i18.i = fcmp olt float %66, %sub.i17.i, !dbg !838
  br i1 %cmp3.i18.i, label %if.then.i23.i, label %if.else.i25.i, !dbg !838

if.then.i23.i:                                    ; preds = %for.body.i19.i
  %arrayidx5.i20.i = getelementptr inbounds [3 x i32]* %44, i64 %idxprom38, i64 %indvars.iv.i.i, !dbg !842
  %68 = load i32* %arrayidx5.i20.i, align 4, !dbg !842, !tbaa !555
  %sub6.i21.i = add nsw i32 %68, -1, !dbg !842
  %arrayidx8.i22.i = getelementptr inbounds [3 x i32]* %is_aj.i, i64 0, i64 %indvars.iv.i.i, !dbg !842
  store i32 %sub6.i21.i, i32* %arrayidx8.i22.i, align 4, !dbg !842, !tbaa !555
  br label %for.inc.i.i, !dbg !842

if.else.i25.i:                                    ; preds = %for.body.i19.i
  %cmp13.i.i = fcmp ult float %66, %67, !dbg !843
  %arrayidx16.i24.i = getelementptr inbounds [3 x i32]* %44, i64 %idxprom38, i64 %indvars.iv.i.i, !dbg !844
  %69 = load i32* %arrayidx16.i24.i, align 4, !dbg !844, !tbaa !555
  br i1 %cmp13.i.i, label %if.else19.i.i, label %if.then14.i.i, !dbg !843

if.then14.i.i:                                    ; preds = %if.else.i25.i
  %add.i26.i = add nsw i32 %69, 1, !dbg !844
  %arrayidx18.i27.i = getelementptr inbounds [3 x i32]* %is_aj.i, i64 0, i64 %indvars.iv.i.i, !dbg !844
  store i32 %add.i26.i, i32* %arrayidx18.i27.i, align 4, !dbg !844, !tbaa !555
  br label %for.inc.i.i, !dbg !844

if.else19.i.i:                                    ; preds = %if.else.i25.i
  %arrayidx23.i.i = getelementptr inbounds [3 x i32]* %is_aj.i, i64 0, i64 %indvars.iv.i.i, !dbg !845
  store i32 %69, i32* %arrayidx23.i.i, align 4, !dbg !845, !tbaa !555
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else19.i.i, %if.then14.i.i, %if.then.i23.i
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1, !dbg !846
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i.i to i32, !dbg !846
  %exitcond.i.i = icmp eq i32 %lftr.wideiv.i.i, 3, !dbg !846
  br i1 %exitcond.i.i, label %if.end.i, label %for.inc.for.body_crit_edge.i.i, !dbg !846

for.inc.for.body_crit_edge.i.i:                   ; preds = %for.inc.i.i
  %arrayidx.phi.trans.insert.i28.i = getelementptr inbounds [3 x float]* %dx.i.i, i64 0, i64 %indvars.iv.next.i.i
  %.pre.i29.i = load float* %arrayidx.phi.trans.insert.i28.i, align 4, !dbg !838, !tbaa !808
  br label %for.body.i19.i, !dbg !846

if.end.i:                                         ; preds = %for.inc50.i.i, %if.then24.i.i, %if.then.i.i, %for.inc.i.i
  %idxprom58.i = sext i32 %sub.i to i64, !dbg !847
  %arrayidx59.i = getelementptr inbounds i32* %31, i64 %idxprom58.i, !dbg !847
  %70 = load i32* %arrayidx59.i, align 4, !dbg !847, !tbaa !556
  %cmp60.i = icmp eq i32 %70, 0, !dbg !847
  br i1 %cmp60.i, label %if.then62.i, label %if.else75.i, !dbg !847

if.then62.i:                                      ; preds = %if.end.i
  %cmp63.i = icmp slt i32 %sub.i, %sub.i109, !dbg !848
  call void @llvm.dbg.value(metadata !{i32 %sub.i}, i64 0, metadata !322), !dbg !849
  call void @llvm.dbg.value(metadata !{i32 %sub.i}, i64 0, metadata !322), !dbg !786
  call void @llvm.dbg.value(metadata !{i32 %sub.i}, i64 0, metadata !322), !dbg !787
  %sub.i.sub.i109 = select i1 %cmp63.i, i32 %sub.i, i32 %sub.i109, !dbg !848
  store i32 1, i32* %arrayidx59.i, align 4, !dbg !850, !tbaa !556
  %71 = load [3 x i32]** %ishift.i, align 8, !dbg !771, !tbaa !570
  %arraydecay73.i = getelementptr inbounds [3 x i32]* %71, i64 %idxprom58.i, i64 0, !dbg !771
  call void @llvm.dbg.value(metadata !{i32* %arraydecay43.i}, i64 0, metadata !851) #4, !dbg !852
  call void @llvm.dbg.value(metadata !{i32* %arraydecay73.i}, i64 0, metadata !853) #4, !dbg !852
  %72 = load i32* %arraydecay43.i, align 4, !dbg !854, !tbaa !555
  store i32 %72, i32* %arraydecay73.i, align 4, !dbg !854, !tbaa !555
  %73 = load i32* %arrayidx2.i3.i, align 4, !dbg !769, !tbaa !555
  %arrayidx3.i.i = getelementptr inbounds [3 x i32]* %71, i64 %idxprom58.i, i64 1, !dbg !769
  store i32 %73, i32* %arrayidx3.i.i, align 4, !dbg !769, !tbaa !555
  %74 = load i32* %arrayidx4.i.i, align 4, !dbg !773, !tbaa !555
  %arrayidx5.i4.i = getelementptr inbounds [3 x i32]* %71, i64 %idxprom58.i, i64 2, !dbg !773
  store i32 %74, i32* %arrayidx5.i4.i, align 4, !dbg !773, !tbaa !555
  %inc74.i = add nsw i32 %ng.034.i, 1, !dbg !855
  call void @llvm.dbg.value(metadata !{i32 %inc74.i}, i64 0, metadata !809) #4, !dbg !855
  %.pre39.i = load i32** %nedge.i, align 8, !dbg !815, !tbaa !570
  br label %for.inc103.i, !dbg !856

if.else75.i:                                      ; preds = %if.end.i
  %75 = load i32* %arraydecay43.i, align 4, !dbg !857, !tbaa !555
  %arrayidx80.i = getelementptr inbounds [3 x i32]* %44, i64 %idxprom58.i, i64 0, !dbg !857
  %76 = load i32* %arrayidx80.i, align 4, !dbg !857, !tbaa !555
  %cmp81.i = icmp eq i32 %75, %76, !dbg !857
  br i1 %cmp81.i, label %lor.lhs.false83.i, label %if.then99.i, !dbg !857

lor.lhs.false83.i:                                ; preds = %if.else75.i
  %77 = load i32* %arrayidx2.i3.i, align 4, !dbg !857, !tbaa !555
  %arrayidx88.i = getelementptr inbounds [3 x i32]* %44, i64 %idxprom58.i, i64 1, !dbg !857
  %78 = load i32* %arrayidx88.i, align 4, !dbg !857, !tbaa !555
  %cmp89.i = icmp eq i32 %77, %78, !dbg !857
  br i1 %cmp89.i, label %lor.lhs.false91.i, label %if.then99.i, !dbg !857

lor.lhs.false91.i:                                ; preds = %lor.lhs.false83.i
  %79 = load i32* %arrayidx4.i.i, align 4, !dbg !857, !tbaa !555
  %arrayidx96.i = getelementptr inbounds [3 x i32]* %44, i64 %idxprom58.i, i64 2, !dbg !857
  %80 = load i32* %arrayidx96.i, align 4, !dbg !857, !tbaa !555
  %cmp97.i = icmp eq i32 %79, %80, !dbg !857
  br i1 %cmp97.i, label %for.inc103.i, label %if.then99.i, !dbg !857

if.then99.i:                                      ; preds = %lor.lhs.false91.i, %lor.lhs.false83.i, %if.else75.i
  %inc100.i = add nsw i32 %inc100.i107, 1, !dbg !858
  call void @llvm.dbg.value(metadata !{i32 %inc100.i}, i64 0, metadata !323), !dbg !858
  call void @llvm.dbg.value(metadata !{i32 %inc100.i}, i64 0, metadata !323), !dbg !734
  br label %for.inc103.i, !dbg !860

for.inc103.i:                                     ; preds = %if.then99.i, %lor.lhs.false91.i, %if.then62.i
  %sub.i110 = phi i32 [ %sub.i.sub.i109, %if.then62.i ], [ %sub.i109, %if.then99.i ], [ %sub.i109, %lor.lhs.false91.i ]
  %inc100.i108 = phi i32 [ %inc100.i107, %if.then62.i ], [ %inc100.i, %if.then99.i ], [ %inc100.i107, %lor.lhs.false91.i ]
  %81 = phi i32* [ %.pre39.i, %if.then62.i ], [ %43, %if.then99.i ], [ %43, %lor.lhs.false91.i ], !dbg !815
  %82 = phi [3 x i32]* [ %71, %if.then62.i ], [ %44, %if.then99.i ], [ %44, %lor.lhs.false91.i ]
  %ng.1.i = phi i32 [ %inc74.i, %if.then62.i ], [ %ng.034.i, %if.then99.i ], [ %ng.034.i, %lor.lhs.false91.i ]
  %indvars.iv.next.i81 = add i64 %indvars.iv.i80, 1, !dbg !815
  %arrayidx25.i = getelementptr inbounds i32* %81, i64 %idxprom38, !dbg !815
  %83 = load i32* %arrayidx25.i, align 4, !dbg !815, !tbaa !555
  %84 = trunc i64 %indvars.iv.next.i81 to i32, !dbg !815
  %cmp26.i = icmp slt i32 %84, %83, !dbg !815
  br i1 %cmp26.i, label %for.body28.i, label %mk_grey.exit, !dbg !815

mk_grey.exit:                                     ; preds = %for.inc103.i, %lor.end.i
  %sub.i113 = phi i32 [ %retval.0.i98118, %lor.end.i ], [ %sub.i110, %for.inc103.i ]
  %inc100.i106 = phi i32 [ %inc100.i105126, %lor.end.i ], [ %inc100.i108, %for.inc103.i ]
  %ng.0.lcssa.i = phi i32 [ 0, %lor.end.i ], [ %ng.1.i, %for.inc103.i ]
  call void @llvm.lifetime.end(i64 12, i8* %12) #4, !dbg !861
  call void @llvm.lifetime.end(i64 12, i8* %13) #4, !dbg !861
  call void @llvm.dbg.value(metadata !{i32 %ng.0.lcssa.i}, i64 0, metadata !315), !dbg !757
  %add = add nsw i32 %dec41, %ng.0.lcssa.i, !dbg !862
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !319), !dbg !862
  %sub = sub nsw i32 %nW.1127, %ng.0.lcssa.i, !dbg !863
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !318), !dbg !863
  %cmp30 = icmp sgt i32 %add, 0, !dbg !788
  br i1 %cmp30, label %while.body32, label %while.cond.loopexit, !dbg !788

while.end43:                                      ; preds = %while.cond.loopexit
  %cmp44 = icmp slt i32 %inc100.i105.lcssa, 1, !dbg !734
  %tobool46 = icmp eq %struct._IO_FILE* %log, null, !dbg !734
  %or.cond = or i1 %cmp44, %tobool46, !dbg !734
  br i1 %or.cond, label %if.end49, label %if.then47, !dbg !734

if.then47:                                        ; preds = %while.end43
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([56 x i8]* @.str20, i64 0, i64 0), i32 %inc100.i105.lcssa) #5, !dbg !864
  br label %if.end49, !dbg !864

if.end49:                                         ; preds = %if.end15, %while.end43, %for.end, %if.then47
  ret void, !dbg !864
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @shift_atom(%struct.t_graph* nocapture %g, [3 x float]* nocapture %box, [3 x float]* nocapture %x, [3 x float]* nocapture %x_s, i32 %ai) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_graph* %g}, i64 0, metadata !328), !dbg !865
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !329), !dbg !865
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !330), !dbg !865
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x_s}, i64 0, metadata !331), !dbg !865
  tail call void @llvm.dbg.value(metadata !{i32 %ai}, i64 0, metadata !332), !dbg !865
  %start = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3, !dbg !866
  %0 = load i32* %start, align 4, !dbg !866, !tbaa !555
  %sub = sub nsw i32 %ai, %0, !dbg !866
  %idxprom = sext i32 %sub to i64, !dbg !866
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7, !dbg !866
  %1 = load [3 x i32]** %ishift, align 8, !dbg !866, !tbaa !570
  %arrayidx1 = getelementptr inbounds [3 x i32]* %1, i64 %idxprom, i64 0, !dbg !866
  %2 = load i32* %arrayidx1, align 4, !dbg !866, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !333), !dbg !866
  %arrayidx7 = getelementptr inbounds [3 x i32]* %1, i64 %idxprom, i64 1, !dbg !867
  %3 = load i32* %arrayidx7, align 4, !dbg !867, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !334), !dbg !867
  %arrayidx13 = getelementptr inbounds [3 x i32]* %1, i64 %idxprom, i64 2, !dbg !868
  %4 = load i32* %arrayidx13, align 4, !dbg !868, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !335), !dbg !868
  %idxprom14 = sext i32 %ai to i64, !dbg !869
  %arrayidx16 = getelementptr inbounds [3 x float]* %x, i64 %idxprom14, i64 0, !dbg !869
  %5 = load float* %arrayidx16, align 4, !dbg !869, !tbaa !808
  %conv = sitofp i32 %2 to float, !dbg !869
  %arrayidx18 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !869
  %6 = load float* %arrayidx18, align 4, !dbg !869, !tbaa !808
  %mul = fmul float %conv, %6, !dbg !869
  %add = fadd float %5, %mul, !dbg !869
  %conv19 = sitofp i32 %3 to float, !dbg !869
  %arrayidx21 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !869
  %7 = load float* %arrayidx21, align 4, !dbg !869, !tbaa !808
  %mul22 = fmul float %conv19, %7, !dbg !869
  %add23 = fadd float %add, %mul22, !dbg !869
  %conv24 = sitofp i32 %4 to float, !dbg !869
  %arrayidx26 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !869
  %8 = load float* %arrayidx26, align 4, !dbg !869, !tbaa !808
  %mul27 = fmul float %conv24, %8, !dbg !869
  %add28 = fadd float %add23, %mul27, !dbg !869
  %arrayidx31 = getelementptr inbounds [3 x float]* %x_s, i64 %idxprom14, i64 0, !dbg !869
  store float %add28, float* %arrayidx31, align 4, !dbg !869, !tbaa !808
  %arrayidx34 = getelementptr inbounds [3 x float]* %x, i64 %idxprom14, i64 1, !dbg !870
  %9 = load float* %arrayidx34, align 4, !dbg !870, !tbaa !808
  %arrayidx37 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !870
  %10 = load float* %arrayidx37, align 4, !dbg !870, !tbaa !808
  %mul38 = fmul float %conv19, %10, !dbg !870
  %add39 = fadd float %9, %mul38, !dbg !870
  %arrayidx42 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !870
  %11 = load float* %arrayidx42, align 4, !dbg !870, !tbaa !808
  %mul43 = fmul float %conv24, %11, !dbg !870
  %add44 = fadd float %add39, %mul43, !dbg !870
  %arrayidx47 = getelementptr inbounds [3 x float]* %x_s, i64 %idxprom14, i64 1, !dbg !870
  store float %add44, float* %arrayidx47, align 4, !dbg !870, !tbaa !808
  %arrayidx50 = getelementptr inbounds [3 x float]* %x, i64 %idxprom14, i64 2, !dbg !871
  %12 = load float* %arrayidx50, align 4, !dbg !871, !tbaa !808
  %arrayidx53 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !871
  %13 = load float* %arrayidx53, align 4, !dbg !871, !tbaa !808
  %mul54 = fmul float %conv24, %13, !dbg !871
  %add55 = fadd float %12, %mul54, !dbg !871
  %arrayidx58 = getelementptr inbounds [3 x float]* %x_s, i64 %idxprom14, i64 2, !dbg !871
  store float %add55, float* %arrayidx58, align 4, !dbg !871, !tbaa !808
  ret void, !dbg !872
}

; Function Attrs: nounwind optsize uwtable
define void @unshift_atom(%struct.t_graph* nocapture %g, [3 x float]* nocapture %box, [3 x float]* nocapture %x, [3 x float]* nocapture %x_s, i32 %ai) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_graph* %g}, i64 0, metadata !338), !dbg !873
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !339), !dbg !873
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !340), !dbg !873
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x_s}, i64 0, metadata !341), !dbg !873
  tail call void @llvm.dbg.value(metadata !{i32 %ai}, i64 0, metadata !342), !dbg !873
  %start = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3, !dbg !874
  %0 = load i32* %start, align 4, !dbg !874, !tbaa !555
  %sub = sub nsw i32 %ai, %0, !dbg !874
  %idxprom = sext i32 %sub to i64, !dbg !874
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7, !dbg !874
  %1 = load [3 x i32]** %ishift, align 8, !dbg !874, !tbaa !570
  %arrayidx1 = getelementptr inbounds [3 x i32]* %1, i64 %idxprom, i64 0, !dbg !874
  %2 = load i32* %arrayidx1, align 4, !dbg !874, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !343), !dbg !874
  %arrayidx7 = getelementptr inbounds [3 x i32]* %1, i64 %idxprom, i64 1, !dbg !875
  %3 = load i32* %arrayidx7, align 4, !dbg !875, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !344), !dbg !875
  %arrayidx13 = getelementptr inbounds [3 x i32]* %1, i64 %idxprom, i64 2, !dbg !876
  %4 = load i32* %arrayidx13, align 4, !dbg !876, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !345), !dbg !876
  %idxprom14 = sext i32 %ai to i64, !dbg !877
  %arrayidx16 = getelementptr inbounds [3 x float]* %x, i64 %idxprom14, i64 0, !dbg !877
  %5 = load float* %arrayidx16, align 4, !dbg !877, !tbaa !808
  %conv = sitofp i32 %2 to float, !dbg !877
  %arrayidx18 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !877
  %6 = load float* %arrayidx18, align 4, !dbg !877, !tbaa !808
  %mul = fmul float %conv, %6, !dbg !877
  %sub19 = fsub float %5, %mul, !dbg !877
  %conv20 = sitofp i32 %3 to float, !dbg !877
  %arrayidx22 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !877
  %7 = load float* %arrayidx22, align 4, !dbg !877, !tbaa !808
  %mul23 = fmul float %conv20, %7, !dbg !877
  %sub24 = fsub float %sub19, %mul23, !dbg !877
  %conv25 = sitofp i32 %4 to float, !dbg !877
  %arrayidx27 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !877
  %8 = load float* %arrayidx27, align 4, !dbg !877, !tbaa !808
  %mul28 = fmul float %conv25, %8, !dbg !877
  %sub29 = fsub float %sub24, %mul28, !dbg !877
  %arrayidx32 = getelementptr inbounds [3 x float]* %x_s, i64 %idxprom14, i64 0, !dbg !877
  store float %sub29, float* %arrayidx32, align 4, !dbg !877, !tbaa !808
  %arrayidx35 = getelementptr inbounds [3 x float]* %x, i64 %idxprom14, i64 1, !dbg !878
  %9 = load float* %arrayidx35, align 4, !dbg !878, !tbaa !808
  %arrayidx38 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !878
  %10 = load float* %arrayidx38, align 4, !dbg !878, !tbaa !808
  %mul39 = fmul float %conv20, %10, !dbg !878
  %sub40 = fsub float %9, %mul39, !dbg !878
  %arrayidx43 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !878
  %11 = load float* %arrayidx43, align 4, !dbg !878, !tbaa !808
  %mul44 = fmul float %conv25, %11, !dbg !878
  %sub45 = fsub float %sub40, %mul44, !dbg !878
  %arrayidx48 = getelementptr inbounds [3 x float]* %x_s, i64 %idxprom14, i64 1, !dbg !878
  store float %sub45, float* %arrayidx48, align 4, !dbg !878, !tbaa !808
  %arrayidx51 = getelementptr inbounds [3 x float]* %x, i64 %idxprom14, i64 2, !dbg !879
  %12 = load float* %arrayidx51, align 4, !dbg !879, !tbaa !808
  %arrayidx54 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !879
  %13 = load float* %arrayidx54, align 4, !dbg !879, !tbaa !808
  %mul55 = fmul float %conv25, %13, !dbg !879
  %sub56 = fsub float %12, %mul55, !dbg !879
  %arrayidx59 = getelementptr inbounds [3 x float]* %x_s, i64 %idxprom14, i64 2, !dbg !879
  store float %sub56, float* %arrayidx59, align 4, !dbg !879, !tbaa !808
  ret void, !dbg !880
}

; Function Attrs: nounwind optsize uwtable
define void @shift_x(%struct.t_graph* nocapture %g, [3 x float]* nocapture %box, [3 x float]* nocapture %x, [3 x float]* nocapture %x_s) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_graph* %g}, i64 0, metadata !350), !dbg !881
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !351), !dbg !881
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !352), !dbg !881
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x_s}, i64 0, metadata !353), !dbg !881
  %start = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3, !dbg !882
  %0 = load i32* %start, align 4, !dbg !882, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !355), !dbg !882
  %nnodes = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 1, !dbg !883
  %1 = load i32* %nnodes, align 4, !dbg !883, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !356), !dbg !883
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7, !dbg !884
  %2 = load [3 x i32]** %ishift, align 8, !dbg !884, !tbaa !570
  tail call void @llvm.dbg.value(metadata !{[3 x i32]* %2}, i64 0, metadata !354), !dbg !884
  %arrayidx1 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !885
  %3 = load float* %arrayidx1, align 4, !dbg !885, !tbaa !808
  %fabsf = tail call float @fabsf(float %3) #7, !dbg !885
  %4 = fpext float %fabsf to double, !dbg !885
  %cmp = fcmp ogt double %4, 1.200000e-38, !dbg !885
  br i1 %cmp, label %for.cond.preheader, label %lor.lhs.false, !dbg !885

lor.lhs.false:                                    ; preds = %entry
  %arrayidx4 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !885
  %5 = load float* %arrayidx4, align 4, !dbg !885, !tbaa !808
  %fabsf181 = tail call float @fabsf(float %5) #7, !dbg !885
  %6 = fpext float %fabsf181 to double, !dbg !885
  %cmp7 = fcmp ogt double %6, 1.200000e-38, !dbg !885
  br i1 %cmp7, label %for.cond.preheader, label %lor.lhs.false9, !dbg !885

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %arrayidx11 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !885
  %7 = load float* %arrayidx11, align 4, !dbg !885, !tbaa !808
  %fabsf182 = tail call float @fabsf(float %7) #7, !dbg !885
  %8 = fpext float %fabsf182 to double, !dbg !885
  %cmp14 = fcmp ogt double %8, 1.200000e-38, !dbg !885
  br i1 %cmp14, label %for.cond.preheader, label %for.cond73.preheader, !dbg !885

for.cond73.preheader:                             ; preds = %lor.lhs.false9
  %cmp74187 = icmp sgt i32 %1, 0, !dbg !886
  br i1 %cmp74187, label %for.body76.lr.ph, label %if.end, !dbg !886

for.body76.lr.ph:                                 ; preds = %for.cond73.preheader
  %arrayidx91 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !889
  %arrayidx102 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !891
  %arrayidx113 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !892
  %9 = sext i32 %0 to i64
  br label %for.body76, !dbg !886

for.cond.preheader:                               ; preds = %lor.lhs.false9, %lor.lhs.false, %entry
  %cmp16183 = icmp sgt i32 %1, 0, !dbg !893
  br i1 %cmp16183, label %for.body.lr.ph, label %if.end, !dbg !893

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx31 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !896
  %arrayidx39 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !896
  %arrayidx50 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !898
  %arrayidx55 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !898
  %arrayidx66 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !899
  %10 = sext i32 %0 to i64
  br label %for.body, !dbg !893

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %11 = phi float [ %3, %for.body.lr.ph ], [ %.pre, %for.body.for.body_crit_edge ]
  %indvars.iv190 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next191, %for.body.for.body_crit_edge ], !dbg !893
  %indvars.iv = phi i64 [ %10, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx19 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv190, i64 0, !dbg !900
  %12 = load i32* %arrayidx19, align 4, !dbg !900, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !359), !dbg !900
  %arrayidx22 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv190, i64 1, !dbg !901
  %13 = load i32* %arrayidx22, align 4, !dbg !901, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !360), !dbg !901
  %arrayidx25 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv190, i64 2, !dbg !902
  %14 = load i32* %arrayidx25, align 4, !dbg !902, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !361), !dbg !902
  %arrayidx28 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0, !dbg !896
  %15 = load float* %arrayidx28, align 4, !dbg !896, !tbaa !808
  %conv29 = sitofp i32 %12 to float, !dbg !896
  %16 = load float* %arrayidx31, align 4, !dbg !896, !tbaa !808
  %mul = fmul float %conv29, %16, !dbg !896
  %add = fadd float %15, %mul, !dbg !896
  %conv32 = sitofp i32 %13 to float, !dbg !896
  %mul35 = fmul float %conv32, %11, !dbg !896
  %add36 = fadd float %add, %mul35, !dbg !896
  %conv37 = sitofp i32 %14 to float, !dbg !896
  %17 = load float* %arrayidx39, align 4, !dbg !896, !tbaa !808
  %mul40 = fmul float %conv37, %17, !dbg !896
  %add41 = fadd float %add36, %mul40, !dbg !896
  %arrayidx44 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv, i64 0, !dbg !896
  store float %add41, float* %arrayidx44, align 4, !dbg !896, !tbaa !808
  %arrayidx47 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1, !dbg !898
  %18 = load float* %arrayidx47, align 4, !dbg !898, !tbaa !808
  %19 = load float* %arrayidx50, align 4, !dbg !898, !tbaa !808
  %mul51 = fmul float %conv32, %19, !dbg !898
  %add52 = fadd float %18, %mul51, !dbg !898
  %20 = load float* %arrayidx55, align 4, !dbg !898, !tbaa !808
  %mul56 = fmul float %conv37, %20, !dbg !898
  %add57 = fadd float %add52, %mul56, !dbg !898
  %arrayidx60 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv, i64 1, !dbg !898
  store float %add57, float* %arrayidx60, align 4, !dbg !898, !tbaa !808
  %arrayidx63 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2, !dbg !899
  %21 = load float* %arrayidx63, align 4, !dbg !899, !tbaa !808
  %22 = load float* %arrayidx66, align 4, !dbg !899, !tbaa !808
  %mul67 = fmul float %conv37, %22, !dbg !899
  %add68 = fadd float %21, %mul67, !dbg !899
  %arrayidx71 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv, i64 2, !dbg !899
  store float %add68, float* %arrayidx71, align 4, !dbg !899, !tbaa !808
  %indvars.iv.next191 = add i64 %indvars.iv190, 1, !dbg !893
  %lftr.wideiv = trunc i64 %indvars.iv.next191 to i32, !dbg !893
  %exitcond = icmp eq i32 %lftr.wideiv, %1, !dbg !893
  br i1 %exitcond, label %if.end, label %for.body.for.body_crit_edge, !dbg !893

for.body.for.body_crit_edge:                      ; preds = %for.body
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !893
  %.pre = load float* %arrayidx1, align 4, !dbg !896, !tbaa !808
  br label %for.body, !dbg !893

for.body76:                                       ; preds = %for.body76, %for.body76.lr.ph
  %indvars.iv194 = phi i64 [ 0, %for.body76.lr.ph ], [ %indvars.iv.next195, %for.body76 ], !dbg !886
  %indvars.iv192 = phi i64 [ %9, %for.body76.lr.ph ], [ %indvars.iv.next193, %for.body76 ]
  %arrayidx79 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv194, i64 0, !dbg !903
  %23 = load i32* %arrayidx79, align 4, !dbg !903, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %23}, i64 0, metadata !359), !dbg !903
  %arrayidx82 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv194, i64 1, !dbg !904
  %24 = load i32* %arrayidx82, align 4, !dbg !904, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !360), !dbg !904
  %arrayidx85 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv194, i64 2, !dbg !905
  %25 = load i32* %arrayidx85, align 4, !dbg !905, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %25}, i64 0, metadata !361), !dbg !905
  %arrayidx88 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv192, i64 0, !dbg !889
  %26 = load float* %arrayidx88, align 4, !dbg !889, !tbaa !808
  %conv89 = sitofp i32 %23 to float, !dbg !889
  %27 = load float* %arrayidx91, align 4, !dbg !889, !tbaa !808
  %mul92 = fmul float %conv89, %27, !dbg !889
  %add93 = fadd float %26, %mul92, !dbg !889
  %arrayidx96 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv192, i64 0, !dbg !889
  store float %add93, float* %arrayidx96, align 4, !dbg !889, !tbaa !808
  %arrayidx99 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv192, i64 1, !dbg !891
  %28 = load float* %arrayidx99, align 4, !dbg !891, !tbaa !808
  %conv100 = sitofp i32 %24 to float, !dbg !891
  %29 = load float* %arrayidx102, align 4, !dbg !891, !tbaa !808
  %mul103 = fmul float %conv100, %29, !dbg !891
  %add104 = fadd float %28, %mul103, !dbg !891
  %arrayidx107 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv192, i64 1, !dbg !891
  store float %add104, float* %arrayidx107, align 4, !dbg !891, !tbaa !808
  %arrayidx110 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv192, i64 2, !dbg !892
  %30 = load float* %arrayidx110, align 4, !dbg !892, !tbaa !808
  %conv111 = sitofp i32 %25 to float, !dbg !892
  %31 = load float* %arrayidx113, align 4, !dbg !892, !tbaa !808
  %mul114 = fmul float %conv111, %31, !dbg !892
  %add115 = fadd float %30, %mul114, !dbg !892
  %arrayidx118 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv192, i64 2, !dbg !892
  store float %add115, float* %arrayidx118, align 4, !dbg !892, !tbaa !808
  %indvars.iv.next195 = add i64 %indvars.iv194, 1, !dbg !886
  %indvars.iv.next193 = add i64 %indvars.iv192, 1, !dbg !886
  %lftr.wideiv196 = trunc i64 %indvars.iv.next195 to i32, !dbg !886
  %exitcond197 = icmp eq i32 %lftr.wideiv196, %1, !dbg !886
  br i1 %exitcond197, label %if.end, label %for.body76, !dbg !886

if.end:                                           ; preds = %for.cond73.preheader, %for.body76, %for.cond.preheader, %for.body
  ret void, !dbg !906
}

; Function Attrs: nounwind optsize uwtable
define void @shift_self(%struct.t_graph* nocapture %g, [3 x float]* nocapture %box, [3 x float]* nocapture %x) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_graph* %g}, i64 0, metadata !366), !dbg !907
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !367), !dbg !907
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !368), !dbg !907
  %start = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3, !dbg !908
  %0 = load i32* %start, align 4, !dbg !908, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !370), !dbg !908
  %nnodes = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 1, !dbg !909
  %1 = load i32* %nnodes, align 4, !dbg !909, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !371), !dbg !909
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7, !dbg !910
  %2 = load [3 x i32]** %ishift, align 8, !dbg !910, !tbaa !570
  tail call void @llvm.dbg.value(metadata !{[3 x i32]* %2}, i64 0, metadata !369), !dbg !910
  %arrayidx1 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !911
  %3 = load float* %arrayidx1, align 4, !dbg !911, !tbaa !808
  %fabsf = tail call float @fabsf(float %3) #7, !dbg !911
  %4 = fpext float %fabsf to double, !dbg !911
  %cmp = fcmp ogt double %4, 1.200000e-38, !dbg !911
  br i1 %cmp, label %for.cond.preheader, label %lor.lhs.false, !dbg !911

lor.lhs.false:                                    ; preds = %entry
  %arrayidx4 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !911
  %5 = load float* %arrayidx4, align 4, !dbg !911, !tbaa !808
  %fabsf182 = tail call float @fabsf(float %5) #7, !dbg !911
  %6 = fpext float %fabsf182 to double, !dbg !911
  %cmp7 = fcmp ogt double %6, 1.200000e-38, !dbg !911
  br i1 %cmp7, label %for.cond.preheader, label %lor.lhs.false9, !dbg !911

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %arrayidx11 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !911
  %7 = load float* %arrayidx11, align 4, !dbg !911, !tbaa !808
  %fabsf183 = tail call float @fabsf(float %7) #7, !dbg !911
  %8 = fpext float %fabsf183 to double, !dbg !911
  %cmp14 = fcmp ogt double %8, 1.200000e-38, !dbg !911
  br i1 %cmp14, label %for.cond.preheader, label %for.cond73.preheader, !dbg !911

for.cond73.preheader:                             ; preds = %lor.lhs.false9
  %cmp74188 = icmp sgt i32 %1, 0, !dbg !912
  br i1 %cmp74188, label %for.body76.lr.ph, label %if.end, !dbg !912

for.body76.lr.ph:                                 ; preds = %for.cond73.preheader
  %arrayidx91 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !915
  %arrayidx102 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !917
  %arrayidx113 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !918
  %9 = sext i32 %0 to i64
  br label %for.body76, !dbg !912

for.cond.preheader:                               ; preds = %lor.lhs.false9, %lor.lhs.false, %entry
  %cmp16184 = icmp sgt i32 %1, 0, !dbg !919
  br i1 %cmp16184, label %for.body.lr.ph, label %if.end, !dbg !919

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx31 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !922
  %arrayidx39 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !922
  %arrayidx50 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !924
  %arrayidx55 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !924
  %arrayidx66 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !925
  %10 = sext i32 %0 to i64
  br label %for.body, !dbg !919

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %11 = phi float [ %3, %for.body.lr.ph ], [ %.pre, %for.body.for.body_crit_edge ]
  %indvars.iv191 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next192, %for.body.for.body_crit_edge ], !dbg !919
  %indvars.iv = phi i64 [ %10, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx19 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv191, i64 0, !dbg !926
  %12 = load i32* %arrayidx19, align 4, !dbg !926, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !374), !dbg !926
  %arrayidx22 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv191, i64 1, !dbg !927
  %13 = load i32* %arrayidx22, align 4, !dbg !927, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !375), !dbg !927
  %arrayidx25 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv191, i64 2, !dbg !928
  %14 = load i32* %arrayidx25, align 4, !dbg !928, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !376), !dbg !928
  %arrayidx28 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0, !dbg !922
  %15 = load float* %arrayidx28, align 4, !dbg !922, !tbaa !808
  %conv29 = sitofp i32 %12 to float, !dbg !922
  %16 = load float* %arrayidx31, align 4, !dbg !922, !tbaa !808
  %mul = fmul float %conv29, %16, !dbg !922
  %add = fadd float %15, %mul, !dbg !922
  %conv32 = sitofp i32 %13 to float, !dbg !922
  %mul35 = fmul float %conv32, %11, !dbg !922
  %add36 = fadd float %add, %mul35, !dbg !922
  %conv37 = sitofp i32 %14 to float, !dbg !922
  %17 = load float* %arrayidx39, align 4, !dbg !922, !tbaa !808
  %mul40 = fmul float %conv37, %17, !dbg !922
  %add41 = fadd float %add36, %mul40, !dbg !922
  store float %add41, float* %arrayidx28, align 4, !dbg !922, !tbaa !808
  %arrayidx47 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1, !dbg !924
  %18 = load float* %arrayidx47, align 4, !dbg !924, !tbaa !808
  %19 = load float* %arrayidx50, align 4, !dbg !924, !tbaa !808
  %mul51 = fmul float %conv32, %19, !dbg !924
  %add52 = fadd float %18, %mul51, !dbg !924
  %20 = load float* %arrayidx55, align 4, !dbg !924, !tbaa !808
  %mul56 = fmul float %conv37, %20, !dbg !924
  %add57 = fadd float %add52, %mul56, !dbg !924
  store float %add57, float* %arrayidx47, align 4, !dbg !924, !tbaa !808
  %arrayidx63 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2, !dbg !925
  %21 = load float* %arrayidx63, align 4, !dbg !925, !tbaa !808
  %22 = load float* %arrayidx66, align 4, !dbg !925, !tbaa !808
  %mul67 = fmul float %conv37, %22, !dbg !925
  %add68 = fadd float %21, %mul67, !dbg !925
  store float %add68, float* %arrayidx63, align 4, !dbg !925, !tbaa !808
  %indvars.iv.next192 = add i64 %indvars.iv191, 1, !dbg !919
  %lftr.wideiv = trunc i64 %indvars.iv.next192 to i32, !dbg !919
  %exitcond = icmp eq i32 %lftr.wideiv, %1, !dbg !919
  br i1 %exitcond, label %if.end, label %for.body.for.body_crit_edge, !dbg !919

for.body.for.body_crit_edge:                      ; preds = %for.body
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !919
  %.pre = load float* %arrayidx1, align 4, !dbg !922, !tbaa !808
  br label %for.body, !dbg !919

for.body76:                                       ; preds = %for.body76, %for.body76.lr.ph
  %indvars.iv195 = phi i64 [ 0, %for.body76.lr.ph ], [ %indvars.iv.next196, %for.body76 ], !dbg !912
  %indvars.iv193 = phi i64 [ %9, %for.body76.lr.ph ], [ %indvars.iv.next194, %for.body76 ]
  %arrayidx79 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv195, i64 0, !dbg !929
  %23 = load i32* %arrayidx79, align 4, !dbg !929, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %23}, i64 0, metadata !374), !dbg !929
  %arrayidx82 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv195, i64 1, !dbg !930
  %24 = load i32* %arrayidx82, align 4, !dbg !930, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !375), !dbg !930
  %arrayidx85 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv195, i64 2, !dbg !931
  %25 = load i32* %arrayidx85, align 4, !dbg !931, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %25}, i64 0, metadata !376), !dbg !931
  %arrayidx88 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv193, i64 0, !dbg !915
  %26 = load float* %arrayidx88, align 4, !dbg !915, !tbaa !808
  %conv89 = sitofp i32 %23 to float, !dbg !915
  %27 = load float* %arrayidx91, align 4, !dbg !915, !tbaa !808
  %mul92 = fmul float %conv89, %27, !dbg !915
  %add93 = fadd float %26, %mul92, !dbg !915
  store float %add93, float* %arrayidx88, align 4, !dbg !915, !tbaa !808
  %arrayidx99 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv193, i64 1, !dbg !917
  %28 = load float* %arrayidx99, align 4, !dbg !917, !tbaa !808
  %conv100 = sitofp i32 %24 to float, !dbg !917
  %29 = load float* %arrayidx102, align 4, !dbg !917, !tbaa !808
  %mul103 = fmul float %conv100, %29, !dbg !917
  %add104 = fadd float %28, %mul103, !dbg !917
  store float %add104, float* %arrayidx99, align 4, !dbg !917, !tbaa !808
  %arrayidx110 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv193, i64 2, !dbg !918
  %30 = load float* %arrayidx110, align 4, !dbg !918, !tbaa !808
  %conv111 = sitofp i32 %25 to float, !dbg !918
  %31 = load float* %arrayidx113, align 4, !dbg !918, !tbaa !808
  %mul114 = fmul float %conv111, %31, !dbg !918
  %add115 = fadd float %30, %mul114, !dbg !918
  store float %add115, float* %arrayidx110, align 4, !dbg !918, !tbaa !808
  %indvars.iv.next196 = add i64 %indvars.iv195, 1, !dbg !912
  %indvars.iv.next194 = add i64 %indvars.iv193, 1, !dbg !912
  %lftr.wideiv197 = trunc i64 %indvars.iv.next196 to i32, !dbg !912
  %exitcond198 = icmp eq i32 %lftr.wideiv197, %1, !dbg !912
  br i1 %exitcond198, label %if.end, label %for.body76, !dbg !912

if.end:                                           ; preds = %for.cond73.preheader, %for.body76, %for.cond.preheader, %for.body
  ret void, !dbg !932
}

; Function Attrs: nounwind optsize uwtable
define void @unshift_x(%struct.t_graph* nocapture %g, [3 x float]* nocapture %box, [3 x float]* nocapture %x, [3 x float]* nocapture %x_s) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_graph* %g}, i64 0, metadata !379), !dbg !933
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !380), !dbg !933
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !381), !dbg !933
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x_s}, i64 0, metadata !382), !dbg !933
  %start = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3, !dbg !934
  %0 = load i32* %start, align 4, !dbg !934, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !384), !dbg !934
  %nnodes = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 1, !dbg !935
  %1 = load i32* %nnodes, align 4, !dbg !935, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !385), !dbg !935
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7, !dbg !936
  %2 = load [3 x i32]** %ishift, align 8, !dbg !936, !tbaa !570
  tail call void @llvm.dbg.value(metadata !{[3 x i32]* %2}, i64 0, metadata !383), !dbg !936
  %arrayidx1 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !937
  %3 = load float* %arrayidx1, align 4, !dbg !937, !tbaa !808
  %fabsf = tail call float @fabsf(float %3) #7, !dbg !937
  %4 = fpext float %fabsf to double, !dbg !937
  %cmp = fcmp ogt double %4, 1.200000e-38, !dbg !937
  br i1 %cmp, label %for.cond.preheader, label %lor.lhs.false, !dbg !937

lor.lhs.false:                                    ; preds = %entry
  %arrayidx4 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !937
  %5 = load float* %arrayidx4, align 4, !dbg !937, !tbaa !808
  %fabsf181 = tail call float @fabsf(float %5) #7, !dbg !937
  %6 = fpext float %fabsf181 to double, !dbg !937
  %cmp7 = fcmp ogt double %6, 1.200000e-38, !dbg !937
  br i1 %cmp7, label %for.cond.preheader, label %lor.lhs.false9, !dbg !937

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %arrayidx11 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !937
  %7 = load float* %arrayidx11, align 4, !dbg !937, !tbaa !808
  %fabsf182 = tail call float @fabsf(float %7) #7, !dbg !937
  %8 = fpext float %fabsf182 to double, !dbg !937
  %cmp14 = fcmp ogt double %8, 1.200000e-38, !dbg !937
  br i1 %cmp14, label %for.cond.preheader, label %for.cond73.preheader, !dbg !937

for.cond73.preheader:                             ; preds = %lor.lhs.false9
  %cmp74187 = icmp sgt i32 %1, 0, !dbg !938
  br i1 %cmp74187, label %for.body76.lr.ph, label %if.end, !dbg !938

for.body76.lr.ph:                                 ; preds = %for.cond73.preheader
  %arrayidx91 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !941
  %arrayidx102 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !943
  %arrayidx113 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !944
  %9 = sext i32 %0 to i64
  br label %for.body76, !dbg !938

for.cond.preheader:                               ; preds = %lor.lhs.false9, %lor.lhs.false, %entry
  %cmp16183 = icmp sgt i32 %1, 0, !dbg !945
  br i1 %cmp16183, label %for.body.lr.ph, label %if.end, !dbg !945

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx31 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !948
  %arrayidx39 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !948
  %arrayidx50 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !950
  %arrayidx55 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !950
  %arrayidx66 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !951
  %10 = sext i32 %0 to i64
  br label %for.body, !dbg !945

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %11 = phi float [ %3, %for.body.lr.ph ], [ %.pre, %for.body.for.body_crit_edge ]
  %indvars.iv190 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next191, %for.body.for.body_crit_edge ], !dbg !945
  %indvars.iv = phi i64 [ %10, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx19 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv190, i64 0, !dbg !952
  %12 = load i32* %arrayidx19, align 4, !dbg !952, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !388), !dbg !952
  %arrayidx22 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv190, i64 1, !dbg !953
  %13 = load i32* %arrayidx22, align 4, !dbg !953, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !389), !dbg !953
  %arrayidx25 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv190, i64 2, !dbg !954
  %14 = load i32* %arrayidx25, align 4, !dbg !954, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !390), !dbg !954
  %arrayidx28 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv, i64 0, !dbg !948
  %15 = load float* %arrayidx28, align 4, !dbg !948, !tbaa !808
  %conv29 = sitofp i32 %12 to float, !dbg !948
  %16 = load float* %arrayidx31, align 4, !dbg !948, !tbaa !808
  %mul = fmul float %conv29, %16, !dbg !948
  %sub = fsub float %15, %mul, !dbg !948
  %conv32 = sitofp i32 %13 to float, !dbg !948
  %mul35 = fmul float %conv32, %11, !dbg !948
  %sub36 = fsub float %sub, %mul35, !dbg !948
  %conv37 = sitofp i32 %14 to float, !dbg !948
  %17 = load float* %arrayidx39, align 4, !dbg !948, !tbaa !808
  %mul40 = fmul float %conv37, %17, !dbg !948
  %sub41 = fsub float %sub36, %mul40, !dbg !948
  %arrayidx44 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0, !dbg !948
  store float %sub41, float* %arrayidx44, align 4, !dbg !948, !tbaa !808
  %arrayidx47 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv, i64 1, !dbg !950
  %18 = load float* %arrayidx47, align 4, !dbg !950, !tbaa !808
  %19 = load float* %arrayidx50, align 4, !dbg !950, !tbaa !808
  %mul51 = fmul float %conv32, %19, !dbg !950
  %sub52 = fsub float %18, %mul51, !dbg !950
  %20 = load float* %arrayidx55, align 4, !dbg !950, !tbaa !808
  %mul56 = fmul float %conv37, %20, !dbg !950
  %sub57 = fsub float %sub52, %mul56, !dbg !950
  %arrayidx60 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1, !dbg !950
  store float %sub57, float* %arrayidx60, align 4, !dbg !950, !tbaa !808
  %arrayidx63 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv, i64 2, !dbg !951
  %21 = load float* %arrayidx63, align 4, !dbg !951, !tbaa !808
  %22 = load float* %arrayidx66, align 4, !dbg !951, !tbaa !808
  %mul67 = fmul float %conv37, %22, !dbg !951
  %sub68 = fsub float %21, %mul67, !dbg !951
  %arrayidx71 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2, !dbg !951
  store float %sub68, float* %arrayidx71, align 4, !dbg !951, !tbaa !808
  %indvars.iv.next191 = add i64 %indvars.iv190, 1, !dbg !945
  %lftr.wideiv = trunc i64 %indvars.iv.next191 to i32, !dbg !945
  %exitcond = icmp eq i32 %lftr.wideiv, %1, !dbg !945
  br i1 %exitcond, label %if.end, label %for.body.for.body_crit_edge, !dbg !945

for.body.for.body_crit_edge:                      ; preds = %for.body
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !945
  %.pre = load float* %arrayidx1, align 4, !dbg !948, !tbaa !808
  br label %for.body, !dbg !945

for.body76:                                       ; preds = %for.body76, %for.body76.lr.ph
  %indvars.iv194 = phi i64 [ 0, %for.body76.lr.ph ], [ %indvars.iv.next195, %for.body76 ], !dbg !938
  %indvars.iv192 = phi i64 [ %9, %for.body76.lr.ph ], [ %indvars.iv.next193, %for.body76 ]
  %arrayidx79 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv194, i64 0, !dbg !955
  %23 = load i32* %arrayidx79, align 4, !dbg !955, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %23}, i64 0, metadata !388), !dbg !955
  %arrayidx82 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv194, i64 1, !dbg !956
  %24 = load i32* %arrayidx82, align 4, !dbg !956, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !389), !dbg !956
  %arrayidx85 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv194, i64 2, !dbg !957
  %25 = load i32* %arrayidx85, align 4, !dbg !957, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %25}, i64 0, metadata !390), !dbg !957
  %arrayidx88 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv192, i64 0, !dbg !941
  %26 = load float* %arrayidx88, align 4, !dbg !941, !tbaa !808
  %conv89 = sitofp i32 %23 to float, !dbg !941
  %27 = load float* %arrayidx91, align 4, !dbg !941, !tbaa !808
  %mul92 = fmul float %conv89, %27, !dbg !941
  %sub93 = fsub float %26, %mul92, !dbg !941
  %arrayidx96 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv192, i64 0, !dbg !941
  store float %sub93, float* %arrayidx96, align 4, !dbg !941, !tbaa !808
  %arrayidx99 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv192, i64 1, !dbg !943
  %28 = load float* %arrayidx99, align 4, !dbg !943, !tbaa !808
  %conv100 = sitofp i32 %24 to float, !dbg !943
  %29 = load float* %arrayidx102, align 4, !dbg !943, !tbaa !808
  %mul103 = fmul float %conv100, %29, !dbg !943
  %sub104 = fsub float %28, %mul103, !dbg !943
  %arrayidx107 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv192, i64 1, !dbg !943
  store float %sub104, float* %arrayidx107, align 4, !dbg !943, !tbaa !808
  %arrayidx110 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv192, i64 2, !dbg !944
  %30 = load float* %arrayidx110, align 4, !dbg !944, !tbaa !808
  %conv111 = sitofp i32 %25 to float, !dbg !944
  %31 = load float* %arrayidx113, align 4, !dbg !944, !tbaa !808
  %mul114 = fmul float %conv111, %31, !dbg !944
  %sub115 = fsub float %30, %mul114, !dbg !944
  %arrayidx118 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv192, i64 2, !dbg !944
  store float %sub115, float* %arrayidx118, align 4, !dbg !944, !tbaa !808
  %indvars.iv.next195 = add i64 %indvars.iv194, 1, !dbg !938
  %indvars.iv.next193 = add i64 %indvars.iv192, 1, !dbg !938
  %lftr.wideiv196 = trunc i64 %indvars.iv.next195 to i32, !dbg !938
  %exitcond197 = icmp eq i32 %lftr.wideiv196, %1, !dbg !938
  br i1 %exitcond197, label %if.end, label %for.body76, !dbg !938

if.end:                                           ; preds = %for.cond73.preheader, %for.body76, %for.cond.preheader, %for.body
  ret void, !dbg !958
}

; Function Attrs: nounwind optsize uwtable
define void @unshift_self(%struct.t_graph* nocapture %g, [3 x float]* nocapture %box, [3 x float]* nocapture %x) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_graph* %g}, i64 0, metadata !393), !dbg !959
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !394), !dbg !959
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !395), !dbg !959
  %start = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3, !dbg !960
  %0 = load i32* %start, align 4, !dbg !960, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !397), !dbg !960
  %nnodes = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 1, !dbg !961
  %1 = load i32* %nnodes, align 4, !dbg !961, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !398), !dbg !961
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7, !dbg !962
  %2 = load [3 x i32]** %ishift, align 8, !dbg !962, !tbaa !570
  tail call void @llvm.dbg.value(metadata !{[3 x i32]* %2}, i64 0, metadata !396), !dbg !962
  %arrayidx1 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !963
  %3 = load float* %arrayidx1, align 4, !dbg !963, !tbaa !808
  %fabsf = tail call float @fabsf(float %3) #7, !dbg !963
  %4 = fpext float %fabsf to double, !dbg !963
  %cmp = fcmp ogt double %4, 1.200000e-38, !dbg !963
  br i1 %cmp, label %for.cond.preheader, label %lor.lhs.false, !dbg !963

lor.lhs.false:                                    ; preds = %entry
  %arrayidx4 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !963
  %5 = load float* %arrayidx4, align 4, !dbg !963, !tbaa !808
  %fabsf182 = tail call float @fabsf(float %5) #7, !dbg !963
  %6 = fpext float %fabsf182 to double, !dbg !963
  %cmp7 = fcmp ogt double %6, 1.200000e-38, !dbg !963
  br i1 %cmp7, label %for.cond.preheader, label %lor.lhs.false9, !dbg !963

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %arrayidx11 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !963
  %7 = load float* %arrayidx11, align 4, !dbg !963, !tbaa !808
  %fabsf183 = tail call float @fabsf(float %7) #7, !dbg !963
  %8 = fpext float %fabsf183 to double, !dbg !963
  %cmp14 = fcmp ogt double %8, 1.200000e-38, !dbg !963
  br i1 %cmp14, label %for.cond.preheader, label %for.cond73.preheader, !dbg !963

for.cond73.preheader:                             ; preds = %lor.lhs.false9
  %cmp74188 = icmp sgt i32 %1, 0, !dbg !964
  br i1 %cmp74188, label %for.body76.lr.ph, label %if.end, !dbg !964

for.body76.lr.ph:                                 ; preds = %for.cond73.preheader
  %arrayidx91 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !967
  %arrayidx102 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !969
  %arrayidx113 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !970
  %9 = sext i32 %0 to i64
  br label %for.body76, !dbg !964

for.cond.preheader:                               ; preds = %lor.lhs.false9, %lor.lhs.false, %entry
  %cmp16184 = icmp sgt i32 %1, 0, !dbg !971
  br i1 %cmp16184, label %for.body.lr.ph, label %if.end, !dbg !971

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx31 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !974
  %arrayidx39 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !974
  %arrayidx50 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !976
  %arrayidx55 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !976
  %arrayidx66 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !977
  %10 = sext i32 %0 to i64
  br label %for.body, !dbg !971

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %11 = phi float [ %3, %for.body.lr.ph ], [ %.pre, %for.body.for.body_crit_edge ]
  %indvars.iv191 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next192, %for.body.for.body_crit_edge ], !dbg !971
  %indvars.iv = phi i64 [ %10, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx19 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv191, i64 0, !dbg !978
  %12 = load i32* %arrayidx19, align 4, !dbg !978, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !401), !dbg !978
  %arrayidx22 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv191, i64 1, !dbg !979
  %13 = load i32* %arrayidx22, align 4, !dbg !979, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !402), !dbg !979
  %arrayidx25 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv191, i64 2, !dbg !980
  %14 = load i32* %arrayidx25, align 4, !dbg !980, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !403), !dbg !980
  %arrayidx28 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0, !dbg !974
  %15 = load float* %arrayidx28, align 4, !dbg !974, !tbaa !808
  %conv29 = sitofp i32 %12 to float, !dbg !974
  %16 = load float* %arrayidx31, align 4, !dbg !974, !tbaa !808
  %mul = fmul float %conv29, %16, !dbg !974
  %sub = fsub float %15, %mul, !dbg !974
  %conv32 = sitofp i32 %13 to float, !dbg !974
  %mul35 = fmul float %conv32, %11, !dbg !974
  %sub36 = fsub float %sub, %mul35, !dbg !974
  %conv37 = sitofp i32 %14 to float, !dbg !974
  %17 = load float* %arrayidx39, align 4, !dbg !974, !tbaa !808
  %mul40 = fmul float %conv37, %17, !dbg !974
  %sub41 = fsub float %sub36, %mul40, !dbg !974
  store float %sub41, float* %arrayidx28, align 4, !dbg !974, !tbaa !808
  %arrayidx47 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1, !dbg !976
  %18 = load float* %arrayidx47, align 4, !dbg !976, !tbaa !808
  %19 = load float* %arrayidx50, align 4, !dbg !976, !tbaa !808
  %mul51 = fmul float %conv32, %19, !dbg !976
  %sub52 = fsub float %18, %mul51, !dbg !976
  %20 = load float* %arrayidx55, align 4, !dbg !976, !tbaa !808
  %mul56 = fmul float %conv37, %20, !dbg !976
  %sub57 = fsub float %sub52, %mul56, !dbg !976
  store float %sub57, float* %arrayidx47, align 4, !dbg !976, !tbaa !808
  %arrayidx63 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2, !dbg !977
  %21 = load float* %arrayidx63, align 4, !dbg !977, !tbaa !808
  %22 = load float* %arrayidx66, align 4, !dbg !977, !tbaa !808
  %mul67 = fmul float %conv37, %22, !dbg !977
  %sub68 = fsub float %21, %mul67, !dbg !977
  store float %sub68, float* %arrayidx63, align 4, !dbg !977, !tbaa !808
  %indvars.iv.next192 = add i64 %indvars.iv191, 1, !dbg !971
  %lftr.wideiv = trunc i64 %indvars.iv.next192 to i32, !dbg !971
  %exitcond = icmp eq i32 %lftr.wideiv, %1, !dbg !971
  br i1 %exitcond, label %if.end, label %for.body.for.body_crit_edge, !dbg !971

for.body.for.body_crit_edge:                      ; preds = %for.body
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !971
  %.pre = load float* %arrayidx1, align 4, !dbg !974, !tbaa !808
  br label %for.body, !dbg !971

for.body76:                                       ; preds = %for.body76, %for.body76.lr.ph
  %indvars.iv195 = phi i64 [ 0, %for.body76.lr.ph ], [ %indvars.iv.next196, %for.body76 ], !dbg !964
  %indvars.iv193 = phi i64 [ %9, %for.body76.lr.ph ], [ %indvars.iv.next194, %for.body76 ]
  %arrayidx79 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv195, i64 0, !dbg !981
  %23 = load i32* %arrayidx79, align 4, !dbg !981, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %23}, i64 0, metadata !401), !dbg !981
  %arrayidx82 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv195, i64 1, !dbg !982
  %24 = load i32* %arrayidx82, align 4, !dbg !982, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !402), !dbg !982
  %arrayidx85 = getelementptr inbounds [3 x i32]* %2, i64 %indvars.iv195, i64 2, !dbg !983
  %25 = load i32* %arrayidx85, align 4, !dbg !983, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %25}, i64 0, metadata !403), !dbg !983
  %arrayidx88 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv193, i64 0, !dbg !967
  %26 = load float* %arrayidx88, align 4, !dbg !967, !tbaa !808
  %conv89 = sitofp i32 %23 to float, !dbg !967
  %27 = load float* %arrayidx91, align 4, !dbg !967, !tbaa !808
  %mul92 = fmul float %conv89, %27, !dbg !967
  %sub93 = fsub float %26, %mul92, !dbg !967
  store float %sub93, float* %arrayidx88, align 4, !dbg !967, !tbaa !808
  %arrayidx99 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv193, i64 1, !dbg !969
  %28 = load float* %arrayidx99, align 4, !dbg !969, !tbaa !808
  %conv100 = sitofp i32 %24 to float, !dbg !969
  %29 = load float* %arrayidx102, align 4, !dbg !969, !tbaa !808
  %mul103 = fmul float %conv100, %29, !dbg !969
  %sub104 = fsub float %28, %mul103, !dbg !969
  store float %sub104, float* %arrayidx99, align 4, !dbg !969, !tbaa !808
  %arrayidx110 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv193, i64 2, !dbg !970
  %30 = load float* %arrayidx110, align 4, !dbg !970, !tbaa !808
  %conv111 = sitofp i32 %25 to float, !dbg !970
  %31 = load float* %arrayidx113, align 4, !dbg !970, !tbaa !808
  %mul114 = fmul float %conv111, %31, !dbg !970
  %sub115 = fsub float %30, %mul114, !dbg !970
  store float %sub115, float* %arrayidx110, align 4, !dbg !970, !tbaa !808
  %indvars.iv.next196 = add i64 %indvars.iv195, 1, !dbg !964
  %indvars.iv.next194 = add i64 %indvars.iv193, 1, !dbg !964
  %lftr.wideiv197 = trunc i64 %indvars.iv.next196 to i32, !dbg !964
  %exitcond198 = icmp eq i32 %lftr.wideiv197, %1, !dbg !964
  br i1 %exitcond198, label %if.end, label %for.body76, !dbg !964

if.end:                                           ; preds = %for.cond73.preheader, %for.body76, %for.cond.preheader, %for.body
  ret void, !dbg !984
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @add_gbond(%struct.t_graph* nocapture %g, i32* nocapture %ia, i32 %np) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_graph* %g}, i64 0, metadata !510), !dbg !985
  tail call void @llvm.dbg.value(metadata !{i32* %ia}, i64 0, metadata !511), !dbg !985
  tail call void @llvm.dbg.value(metadata !{i32 %np}, i64 0, metadata !512), !dbg !985
  tail call void @llvm.dbg.value(metadata !57, i64 0, metadata !513), !dbg !986
  %cmp82 = icmp sgt i32 %np, 0, !dbg !986
  br i1 %cmp82, label %for.body.lr.ph, label %for.end48, !dbg !986

for.body.lr.ph:                                   ; preds = %entry
  %start = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3, !dbg !988
  %nedge = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 5, !dbg !990
  %maxbond = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 0, !dbg !994
  %edge38 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 6, !dbg !996
  br label %for.body3.lr.ph, !dbg !986

for.body3.lr.ph:                                  ; preds = %for.body.lr.ph, %for.inc46
  %indvars.iv88 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next89, %for.inc46 ]
  %arrayidx = getelementptr inbounds i32* %ia, i64 %indvars.iv88, !dbg !997
  %0 = load i32* %arrayidx, align 4, !dbg !997, !tbaa !555
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !516), !dbg !997
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !517), !dbg !988
  tail call void @llvm.dbg.value(metadata !57, i64 0, metadata !514), !dbg !998
  %1 = load i32* %start, align 4, !dbg !988, !tbaa !555
  %sub = sub nsw i32 %0, %1, !dbg !988
  %idxprom6 = sext i32 %sub to i64, !dbg !990
  %add = add nsw i32 %0, 1, !dbg !999
  br label %for.body3, !dbg !998

for.body3:                                        ; preds = %for.inc43, %for.body3.lr.ph
  %indvars.iv86 = phi i64 [ 0, %for.body3.lr.ph ], [ %indvars.iv.next87, %for.inc43 ]
  %2 = trunc i64 %indvars.iv86 to i32, !dbg !1000
  %3 = trunc i64 %indvars.iv88 to i32, !dbg !1000
  %cmp4 = icmp eq i32 %3, %2, !dbg !1000
  br i1 %cmp4, label %for.inc43, label %for.cond5.preheader, !dbg !1000

for.cond5.preheader:                              ; preds = %for.body3
  %4 = load i32** %nedge, align 8, !dbg !990, !tbaa !570
  %arrayidx775 = getelementptr inbounds i32* %4, i64 %idxprom6, !dbg !990
  %5 = load i32* %arrayidx775, align 4, !dbg !990, !tbaa !555
  %cmp876 = icmp sgt i32 %5, 0, !dbg !990
  br i1 %cmp876, label %for.body9.lr.ph, label %for.end, !dbg !990

for.body9.lr.ph:                                  ; preds = %for.cond5.preheader
  %6 = load i32*** %edge38, align 8, !dbg !1001, !tbaa !570
  %arrayidx12 = getelementptr inbounds i32** %6, i64 %idxprom6, !dbg !1001
  %7 = load i32** %arrayidx12, align 8, !dbg !1001, !tbaa !570
  %arrayidx15 = getelementptr inbounds i32* %ia, i64 %indvars.iv86, !dbg !1001
  %8 = load i32* %arrayidx15, align 4, !dbg !1001, !tbaa !555
  br label %for.body9, !dbg !990

for.cond5:                                        ; preds = %for.body9
  %9 = trunc i64 %indvars.iv.next to i32, !dbg !990
  %cmp8 = icmp slt i32 %9, %5, !dbg !990
  br i1 %cmp8, label %for.body9, label %for.end, !dbg !990

for.body9:                                        ; preds = %for.body9.lr.ph, %for.cond5
  %indvars.iv = phi i64 [ 0, %for.body9.lr.ph ], [ %indvars.iv.next, %for.cond5 ]
  %l.077 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc, %for.cond5 ]
  %arrayidx13 = getelementptr inbounds i32* %7, i64 %indvars.iv, !dbg !1001
  %10 = load i32* %arrayidx13, align 4, !dbg !1001, !tbaa !555
  %cmp16 = icmp eq i32 %10, %8, !dbg !1001
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !990
  %inc = add nsw i32 %l.077, 1, !dbg !990
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !515), !dbg !990
  br i1 %cmp16, label %for.end, label %for.cond5, !dbg !1001

for.end:                                          ; preds = %for.cond5, %for.body9, %for.cond5.preheader
  %l.0.lcssa = phi i32 [ 0, %for.cond5.preheader ], [ %l.077, %for.body9 ], [ %inc, %for.cond5 ]
  %cmp21 = icmp eq i32 %l.0.lcssa, %5, !dbg !1002
  br i1 %cmp21, label %if.then22, label %for.inc43, !dbg !1002

if.then22:                                        ; preds = %for.end
  %11 = load i32* %maxbond, align 4, !dbg !994, !tbaa !555
  %cmp26 = icmp eq i32 %5, %11, !dbg !994
  br i1 %cmp26, label %if.then27, label %if.end29, !dbg !994

if.then27:                                        ; preds = %if.then22
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([39 x i8]* @.str22, i64 0, i64 0), i32 %5, i32 %add) #5, !dbg !999
  %.pre92 = load i32** %nedge, align 8, !dbg !996, !tbaa !570
  %arrayidx34.phi.trans.insert = getelementptr inbounds i32* %.pre92, i64 %idxprom6
  %.pre93 = load i32* %arrayidx34.phi.trans.insert, align 4, !dbg !996, !tbaa !555
  br label %if.end29, !dbg !999

if.end29:                                         ; preds = %if.then22, %if.then27
  %12 = phi i32 [ %.pre93, %if.then27 ], [ %5, %if.then22 ]
  %13 = phi i32* [ %.pre92, %if.then27 ], [ %4, %if.then22 ]
  %arrayidx31 = getelementptr inbounds i32* %ia, i64 %indvars.iv86, !dbg !996
  %14 = load i32* %arrayidx31, align 4, !dbg !996, !tbaa !555
  %arrayidx34 = getelementptr inbounds i32* %13, i64 %idxprom6, !dbg !996
  %inc35 = add nsw i32 %12, 1, !dbg !996
  store i32 %inc35, i32* %arrayidx34, align 4, !dbg !996, !tbaa !555
  %idxprom36 = sext i32 %12 to i64, !dbg !996
  %15 = load i32*** %edge38, align 8, !dbg !996, !tbaa !570
  %arrayidx39 = getelementptr inbounds i32** %15, i64 %idxprom6, !dbg !996
  %16 = load i32** %arrayidx39, align 8, !dbg !996, !tbaa !570
  %arrayidx40 = getelementptr inbounds i32* %16, i64 %idxprom36, !dbg !996
  store i32 %14, i32* %arrayidx40, align 4, !dbg !996, !tbaa !555
  br label %for.inc43, !dbg !1003

for.inc43:                                        ; preds = %for.body3, %if.end29, %for.end
  %indvars.iv.next87 = add i64 %indvars.iv86, 1, !dbg !998
  %lftr.wideiv = trunc i64 %indvars.iv.next87 to i32, !dbg !998
  %exitcond = icmp eq i32 %lftr.wideiv, %np, !dbg !998
  br i1 %exitcond, label %for.inc46, label %for.body3, !dbg !998

for.inc46:                                        ; preds = %for.inc43
  %indvars.iv.next89 = add i64 %indvars.iv88, 1, !dbg !986
  %lftr.wideiv90 = trunc i64 %indvars.iv.next89 to i32, !dbg !986
  %exitcond91 = icmp eq i32 %lftr.wideiv90, %np, !dbg !986
  br i1 %exitcond91, label %for.end48, label %for.body3.lr.ph, !dbg !986

for.end48:                                        ; preds = %for.inc46, %entry
  ret void, !dbg !1004
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #4

declare float @fabsf(float)

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !57, metadata !58, metadata !547, metadata !57, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !51}
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
!51 = metadata !{i32 786436, metadata !1, null, metadata !"", i32 58, i64 32, i64 32, i32 0, i32 0, null, metadata !52, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 58, size 32, align 32, offset 0] [from ]
!52 = metadata !{metadata !53, metadata !54, metadata !55, metadata !56}
!53 = metadata !{i32 786472, metadata !"egcolWhite", i64 0} ; [ DW_TAG_enumerator ] [egcolWhite :: 0]
!54 = metadata !{i32 786472, metadata !"egcolGrey", i64 1} ; [ DW_TAG_enumerator ] [egcolGrey :: 1]
!55 = metadata !{i32 786472, metadata !"egcolBlack", i64 2} ; [ DW_TAG_enumerator ] [egcolBlack :: 2]
!56 = metadata !{i32 786472, metadata !"egcolNR", i64 3} ; [ DW_TAG_enumerator ] [egcolNR :: 3]
!57 = metadata !{i32 0}
!58 = metadata !{metadata !59, metadata !149, metadata !299, metadata !304, metadata !324, metadata !336, metadata !346, metadata !362, metadata !377, metadata !391, metadata !404, metadata !427, metadata !437, metadata !450, metadata !463, metadata !477, metadata !486, metadata !506, metadata !518, metadata !530}
!59 = metadata !{i32 786478, metadata !1, metadata !60, metadata !"p_graph", metadata !"p_graph", metadata !"", i32 138, metadata !61, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*, %struct.t_graph*)* @p_graph, null, null, metadata !143, i32 139} ; [ DW_TAG_subprogram ] [line 138] [def] [scope 139] [p_graph]
!60 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!61 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!62 = metadata !{null, metadata !63, metadata !71, metadata !121}
!63 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!64 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !65} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!65 = metadata !{i32 786451, metadata !66, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !67, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!66 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!67 = metadata !{metadata !68, metadata !70, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !91, metadata !92, metadata !93, metadata !94, metadata !97, metadata !99, metadata !101, metadata !105, metadata !107, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !116, metadata !117}
!68 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !69} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!69 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!70 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !71} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!71 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !72} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!72 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!73 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !71} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!74 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !71} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!75 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !71} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!76 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !71} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!77 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !71} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!78 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !71} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!79 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !71} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!80 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !71} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!81 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !71} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!82 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !71} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!83 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !84} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!84 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !85} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!85 = metadata !{i32 786451, metadata !66, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !86, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!86 = metadata !{metadata !87, metadata !88, metadata !90}
!87 = metadata !{i32 786445, metadata !66, metadata !85, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !84} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!88 = metadata !{i32 786445, metadata !66, metadata !85, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !89} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!89 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !65} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!90 = metadata !{i32 786445, metadata !66, metadata !85, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !69} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!91 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !89} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!92 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !69} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!93 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !69} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!94 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !95} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!95 = metadata !{i32 786454, metadata !66, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!96 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!97 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !98} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!98 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!99 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !100} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!100 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!101 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !102} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!102 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !72, metadata !103, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!103 = metadata !{metadata !104}
!104 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!105 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !106} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!106 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!107 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !108} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!108 = metadata !{i32 786454, metadata !66, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!109 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !106} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!110 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !106} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!111 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !106} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!112 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !106} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!113 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !114} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!114 = metadata !{i32 786454, metadata !66, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !115} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!115 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!116 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !69} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!117 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !118} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!118 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !72, metadata !119, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!119 = metadata !{metadata !120}
!120 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!121 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !122} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_graph]
!122 = metadata !{i32 786454, metadata !1, null, metadata !"t_graph", i32 47, i64 0, i64 0, i64 0, i32 0, metadata !123} ; [ DW_TAG_typedef ] [t_graph] [line 47, size 0, align 0, offset 0] [from ]
!123 = metadata !{i32 786451, metadata !124, null, metadata !"", i32 38, i64 384, i64 64, i32 0, i32 0, null, metadata !125, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 38, size 384, align 64, offset 0] [from ]
!124 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/graph.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!125 = metadata !{metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !133, metadata !137}
!126 = metadata !{i32 786445, metadata !124, metadata !123, metadata !"maxbond", i32 39, i64 32, i64 32, i64 0, i32 0, metadata !69} ; [ DW_TAG_member ] [maxbond] [line 39, size 32, align 32, offset 0] [from int]
!127 = metadata !{i32 786445, metadata !124, metadata !123, metadata !"nnodes", i32 40, i64 32, i64 32, i64 32, i32 0, metadata !69} ; [ DW_TAG_member ] [nnodes] [line 40, size 32, align 32, offset 32] [from int]
!128 = metadata !{i32 786445, metadata !124, metadata !123, metadata !"nbound", i32 41, i64 32, i64 32, i64 64, i32 0, metadata !69} ; [ DW_TAG_member ] [nbound] [line 41, size 32, align 32, offset 64] [from int]
!129 = metadata !{i32 786445, metadata !124, metadata !123, metadata !"start", i32 42, i64 32, i64 32, i64 96, i32 0, metadata !69} ; [ DW_TAG_member ] [start] [line 42, size 32, align 32, offset 96] [from int]
!130 = metadata !{i32 786445, metadata !124, metadata !123, metadata !"end", i32 43, i64 32, i64 32, i64 128, i32 0, metadata !69} ; [ DW_TAG_member ] [end] [line 43, size 32, align 32, offset 128] [from int]
!131 = metadata !{i32 786445, metadata !124, metadata !123, metadata !"nedge", i32 44, i64 64, i64 64, i64 192, i32 0, metadata !132} ; [ DW_TAG_member ] [nedge] [line 44, size 64, align 64, offset 192] [from ]
!132 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !69} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!133 = metadata !{i32 786445, metadata !124, metadata !123, metadata !"edge", i32 45, i64 64, i64 64, i64 256, i32 0, metadata !134} ; [ DW_TAG_member ] [edge] [line 45, size 64, align 64, offset 256] [from ]
!134 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !135} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!135 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !136} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!136 = metadata !{i32 786454, metadata !124, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !69} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!137 = metadata !{i32 786445, metadata !124, metadata !123, metadata !"ishift", i32 46, i64 64, i64 64, i64 320, i32 0, metadata !138} ; [ DW_TAG_member ] [ishift] [line 46, size 64, align 64, offset 320] [from ]
!138 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !139} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ivec]
!139 = metadata !{i32 786454, metadata !124, null, metadata !"ivec", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_typedef ] [ivec] [line 107, size 0, align 0, offset 0] [from ]
!140 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !69, metadata !141, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!141 = metadata !{metadata !142}
!142 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!143 = metadata !{metadata !144, metadata !145, metadata !146, metadata !147, metadata !148}
!144 = metadata !{i32 786689, metadata !59, metadata !"log", metadata !60, i32 16777354, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 138]
!145 = metadata !{i32 786689, metadata !59, metadata !"title", metadata !60, i32 33554570, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 138]
!146 = metadata !{i32 786689, metadata !59, metadata !"g", metadata !60, i32 50331786, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 138]
!147 = metadata !{i32 786688, metadata !59, metadata !"i", metadata !60, i32 140, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 140]
!148 = metadata !{i32 786688, metadata !59, metadata !"j", metadata !60, i32 140, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 140]
!149 = metadata !{i32 786478, metadata !1, metadata !60, metadata !"mk_graph", metadata !"mk_graph", metadata !"", i32 229, metadata !150, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.t_graph* (%struct.t_idef*, i32, i32, i32)* @mk_graph, null, null, metadata !292, i32 230} ; [ DW_TAG_subprogram ] [line 229] [def] [scope 230] [mk_graph]
!150 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !151, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!151 = metadata !{metadata !121, metadata !152, metadata !69, metadata !69, metadata !69}
!152 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !153} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_idef]
!153 = metadata !{i32 786454, metadata !1, null, metadata !"t_idef", i32 188, i64 0, i64 0, i64 0, i32 0, metadata !154} ; [ DW_TAG_typedef ] [t_idef] [line 188, size 0, align 0, offset 0] [from ]
!154 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 179, i64 366336, i64 64, i32 0, i32 0, null, metadata !155, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 179, size 366336, align 64, offset 0] [from ]
!155 = metadata !{metadata !156, metadata !157, metadata !158, metadata !159, metadata !162, metadata !277}
!156 = metadata !{i32 786445, metadata !4, metadata !154, metadata !"ntypes", i32 181, i64 32, i64 32, i64 0, i32 0, metadata !69} ; [ DW_TAG_member ] [ntypes] [line 181, size 32, align 32, offset 0] [from int]
!157 = metadata !{i32 786445, metadata !4, metadata !154, metadata !"nodeid", i32 182, i64 32, i64 32, i64 32, i32 0, metadata !69} ; [ DW_TAG_member ] [nodeid] [line 182, size 32, align 32, offset 32] [from int]
!158 = metadata !{i32 786445, metadata !4, metadata !154, metadata !"atnr", i32 183, i64 32, i64 32, i64 64, i32 0, metadata !69} ; [ DW_TAG_member ] [atnr] [line 183, size 32, align 32, offset 64] [from int]
!159 = metadata !{i32 786445, metadata !4, metadata !154, metadata !"functype", i32 184, i64 64, i64 64, i64 128, i32 0, metadata !160} ; [ DW_TAG_member ] [functype] [line 184, size 64, align 64, offset 128] [from ]
!160 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !161} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_functype]
!161 = metadata !{i32 786454, metadata !4, null, metadata !"t_functype", i32 133, i64 0, i64 0, i64 0, i32 0, metadata !69} ; [ DW_TAG_typedef ] [t_functype] [line 133, size 0, align 0, offset 0] [from int]
!162 = metadata !{i32 786445, metadata !4, metadata !154, metadata !"iparams", i32 185, i64 64, i64 64, i64 192, i32 0, metadata !163} ; [ DW_TAG_member ] [iparams] [line 185, size 64, align 64, offset 192] [from ]
!163 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !164} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_iparams]
!164 = metadata !{i32 786454, metadata !4, null, metadata !"t_iparams", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !165} ; [ DW_TAG_typedef ] [t_iparams] [line 131, size 0, align 0, offset 0] [from ]
!165 = metadata !{i32 786455, metadata !4, null, metadata !"", i32 97, i64 192, i64 32, i64 0, i32 0, null, metadata !166, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 97, size 192, align 32, offset 0] [from ]
!166 = metadata !{metadata !167, metadata !175, metadata !182, metadata !188, metadata !197, metadata !202, metadata !209, metadata !217, metadata !222, metadata !227, metadata !233, metadata !239, metadata !246, metadata !255, metadata !264, metadata !273}
!167 = metadata !{i32 786445, metadata !4, metadata !165, metadata !"bham", i32 105, i64 96, i64 32, i64 0, i32 0, metadata !168} ; [ DW_TAG_member ] [bham] [line 105, size 96, align 32, offset 0] [from ]
!168 = metadata !{i32 786451, metadata !4, metadata !165, metadata !"", i32 105, i64 96, i64 32, i32 0, i32 0, null, metadata !169, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 105, size 96, align 32, offset 0] [from ]
!169 = metadata !{metadata !170, metadata !173, metadata !174}
!170 = metadata !{i32 786445, metadata !4, metadata !168, metadata !"a", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !171} ; [ DW_TAG_member ] [a] [line 105, size 32, align 32, offset 0] [from real]
!171 = metadata !{i32 786454, metadata !4, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !172} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!172 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!173 = metadata !{i32 786445, metadata !4, metadata !168, metadata !"b", i32 105, i64 32, i64 32, i64 32, i32 0, metadata !171} ; [ DW_TAG_member ] [b] [line 105, size 32, align 32, offset 32] [from real]
!174 = metadata !{i32 786445, metadata !4, metadata !168, metadata !"c", i32 105, i64 32, i64 32, i64 64, i32 0, metadata !171} ; [ DW_TAG_member ] [c] [line 105, size 32, align 32, offset 64] [from real]
!175 = metadata !{i32 786445, metadata !4, metadata !165, metadata !"harmonic", i32 106, i64 128, i64 32, i64 0, i32 0, metadata !176} ; [ DW_TAG_member ] [harmonic] [line 106, size 128, align 32, offset 0] [from ]
!176 = metadata !{i32 786451, metadata !4, metadata !165, metadata !"", i32 106, i64 128, i64 32, i32 0, i32 0, null, metadata !177, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 106, size 128, align 32, offset 0] [from ]
!177 = metadata !{metadata !178, metadata !179, metadata !180, metadata !181}
!178 = metadata !{i32 786445, metadata !4, metadata !176, metadata !"rA", i32 106, i64 32, i64 32, i64 0, i32 0, metadata !171} ; [ DW_TAG_member ] [rA] [line 106, size 32, align 32, offset 0] [from real]
!179 = metadata !{i32 786445, metadata !4, metadata !176, metadata !"krA", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !171} ; [ DW_TAG_member ] [krA] [line 106, size 32, align 32, offset 32] [from real]
!180 = metadata !{i32 786445, metadata !4, metadata !176, metadata !"rB", i32 106, i64 32, i64 32, i64 64, i32 0, metadata !171} ; [ DW_TAG_member ] [rB] [line 106, size 32, align 32, offset 64] [from real]
!181 = metadata !{i32 786445, metadata !4, metadata !176, metadata !"krB", i32 106, i64 32, i64 32, i64 96, i32 0, metadata !171} ; [ DW_TAG_member ] [krB] [line 106, size 32, align 32, offset 96] [from real]
!182 = metadata !{i32 786445, metadata !4, metadata !165, metadata !"cubic", i32 108, i64 96, i64 32, i64 0, i32 0, metadata !183} ; [ DW_TAG_member ] [cubic] [line 108, size 96, align 32, offset 0] [from ]
!183 = metadata !{i32 786451, metadata !4, metadata !165, metadata !"", i32 108, i64 96, i64 32, i32 0, i32 0, null, metadata !184, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 108, size 96, align 32, offset 0] [from ]
!184 = metadata !{metadata !185, metadata !186, metadata !187}
!185 = metadata !{i32 786445, metadata !4, metadata !183, metadata !"b0", i32 108, i64 32, i64 32, i64 0, i32 0, metadata !171} ; [ DW_TAG_member ] [b0] [line 108, size 32, align 32, offset 0] [from real]
!186 = metadata !{i32 786445, metadata !4, metadata !183, metadata !"kb", i32 108, i64 32, i64 32, i64 32, i32 0, metadata !171} ; [ DW_TAG_member ] [kb] [line 108, size 32, align 32, offset 32] [from real]
!187 = metadata !{i32 786445, metadata !4, metadata !183, metadata !"kcub", i32 108, i64 32, i64 32, i64 64, i32 0, metadata !171} ; [ DW_TAG_member ] [kcub] [line 108, size 32, align 32, offset 64] [from real]
!188 = metadata !{i32 786445, metadata !4, metadata !165, metadata !"wpol", i32 110, i64 192, i64 32, i64 0, i32 0, metadata !189} ; [ DW_TAG_member ] [wpol] [line 110, size 192, align 32, offset 0] [from ]
!189 = metadata !{i32 786451, metadata !4, metadata !165, metadata !"", i32 110, i64 192, i64 32, i32 0, i32 0, null, metadata !190, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 110, size 192, align 32, offset 0] [from ]
!190 = metadata !{metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196}
!191 = metadata !{i32 786445, metadata !4, metadata !189, metadata !"kx", i32 110, i64 32, i64 32, i64 0, i32 0, metadata !171} ; [ DW_TAG_member ] [kx] [line 110, size 32, align 32, offset 0] [from real]
!192 = metadata !{i32 786445, metadata !4, metadata !189, metadata !"ky", i32 110, i64 32, i64 32, i64 32, i32 0, metadata !171} ; [ DW_TAG_member ] [ky] [line 110, size 32, align 32, offset 32] [from real]
!193 = metadata !{i32 786445, metadata !4, metadata !189, metadata !"kz", i32 110, i64 32, i64 32, i64 64, i32 0, metadata !171} ; [ DW_TAG_member ] [kz] [line 110, size 32, align 32, offset 64] [from real]
!194 = metadata !{i32 786445, metadata !4, metadata !189, metadata !"rOH", i32 110, i64 32, i64 32, i64 96, i32 0, metadata !171} ; [ DW_TAG_member ] [rOH] [line 110, size 32, align 32, offset 96] [from real]
!195 = metadata !{i32 786445, metadata !4, metadata !189, metadata !"rHH", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !171} ; [ DW_TAG_member ] [rHH] [line 110, size 32, align 32, offset 128] [from real]
!196 = metadata !{i32 786445, metadata !4, metadata !189, metadata !"rOD", i32 110, i64 32, i64 32, i64 160, i32 0, metadata !171} ; [ DW_TAG_member ] [rOD] [line 110, size 32, align 32, offset 160] [from real]
!197 = metadata !{i32 786445, metadata !4, metadata !165, metadata !"lj", i32 111, i64 64, i64 32, i64 0, i32 0, metadata !198} ; [ DW_TAG_member ] [lj] [line 111, size 64, align 32, offset 0] [from ]
!198 = metadata !{i32 786451, metadata !4, metadata !165, metadata !"", i32 111, i64 64, i64 32, i32 0, i32 0, null, metadata !199, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 111, size 64, align 32, offset 0] [from ]
!199 = metadata !{metadata !200, metadata !201}
!200 = metadata !{i32 786445, metadata !4, metadata !198, metadata !"c6", i32 111, i64 32, i64 32, i64 0, i32 0, metadata !171} ; [ DW_TAG_member ] [c6] [line 111, size 32, align 32, offset 0] [from real]
!201 = metadata !{i32 786445, metadata !4, metadata !198, metadata !"c12", i32 111, i64 32, i64 32, i64 32, i32 0, metadata !171} ; [ DW_TAG_member ] [c12] [line 111, size 32, align 32, offset 32] [from real]
!202 = metadata !{i32 786445, metadata !4, metadata !165, metadata !"lj14", i32 112, i64 128, i64 32, i64 0, i32 0, metadata !203} ; [ DW_TAG_member ] [lj14] [line 112, size 128, align 32, offset 0] [from ]
!203 = metadata !{i32 786451, metadata !4, metadata !165, metadata !"", i32 112, i64 128, i64 32, i32 0, i32 0, null, metadata !204, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 112, size 128, align 32, offset 0] [from ]
!204 = metadata !{metadata !205, metadata !206, metadata !207, metadata !208}
!205 = metadata !{i32 786445, metadata !4, metadata !203, metadata !"c6A", i32 112, i64 32, i64 32, i64 0, i32 0, metadata !171} ; [ DW_TAG_member ] [c6A] [line 112, size 32, align 32, offset 0] [from real]
!206 = metadata !{i32 786445, metadata !4, metadata !203, metadata !"c12A", i32 112, i64 32, i64 32, i64 32, i32 0, metadata !171} ; [ DW_TAG_member ] [c12A] [line 112, size 32, align 32, offset 32] [from real]
!207 = metadata !{i32 786445, metadata !4, metadata !203, metadata !"c6B", i32 112, i64 32, i64 32, i64 64, i32 0, metadata !171} ; [ DW_TAG_member ] [c6B] [line 112, size 32, align 32, offset 64] [from real]
!208 = metadata !{i32 786445, metadata !4, metadata !203, metadata !"c12B", i32 112, i64 32, i64 32, i64 96, i32 0, metadata !171} ; [ DW_TAG_member ] [c12B] [line 112, size 32, align 32, offset 96] [from real]
!209 = metadata !{i32 786445, metadata !4, metadata !165, metadata !"pdihs", i32 117, i64 160, i64 32, i64 0, i32 0, metadata !210} ; [ DW_TAG_member ] [pdihs] [line 117, size 160, align 32, offset 0] [from ]
!210 = metadata !{i32 786451, metadata !4, metadata !165, metadata !"", i32 117, i64 160, i64 32, i32 0, i32 0, null, metadata !211, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 117, size 160, align 32, offset 0] [from ]
!211 = metadata !{metadata !212, metadata !213, metadata !214, metadata !215, metadata !216}
!212 = metadata !{i32 786445, metadata !4, metadata !210, metadata !"phiA", i32 117, i64 32, i64 32, i64 0, i32 0, metadata !171} ; [ DW_TAG_member ] [phiA] [line 117, size 32, align 32, offset 0] [from real]
!213 = metadata !{i32 786445, metadata !4, metadata !210, metadata !"cpA", i32 117, i64 32, i64 32, i64 32, i32 0, metadata !171} ; [ DW_TAG_member ] [cpA] [line 117, size 32, align 32, offset 32] [from real]
!214 = metadata !{i32 786445, metadata !4, metadata !210, metadata !"mult", i32 117, i64 32, i64 32, i64 64, i32 0, metadata !69} ; [ DW_TAG_member ] [mult] [line 117, size 32, align 32, offset 64] [from int]
!215 = metadata !{i32 786445, metadata !4, metadata !210, metadata !"phiB", i32 117, i64 32, i64 32, i64 96, i32 0, metadata !171} ; [ DW_TAG_member ] [phiB] [line 117, size 32, align 32, offset 96] [from real]
!216 = metadata !{i32 786445, metadata !4, metadata !210, metadata !"cpB", i32 117, i64 32, i64 32, i64 128, i32 0, metadata !171} ; [ DW_TAG_member ] [cpB] [line 117, size 32, align 32, offset 128] [from real]
!217 = metadata !{i32 786445, metadata !4, metadata !165, metadata !"shake", i32 118, i64 64, i64 32, i64 0, i32 0, metadata !218} ; [ DW_TAG_member ] [shake] [line 118, size 64, align 32, offset 0] [from ]
!218 = metadata !{i32 786451, metadata !4, metadata !165, metadata !"", i32 118, i64 64, i64 32, i32 0, i32 0, null, metadata !219, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 118, size 64, align 32, offset 0] [from ]
!219 = metadata !{metadata !220, metadata !221}
!220 = metadata !{i32 786445, metadata !4, metadata !218, metadata !"dA", i32 118, i64 32, i64 32, i64 0, i32 0, metadata !171} ; [ DW_TAG_member ] [dA] [line 118, size 32, align 32, offset 0] [from real]
!221 = metadata !{i32 786445, metadata !4, metadata !218, metadata !"dB", i32 118, i64 32, i64 32, i64 32, i32 0, metadata !171} ; [ DW_TAG_member ] [dB] [line 118, size 32, align 32, offset 32] [from real]
!222 = metadata !{i32 786445, metadata !4, metadata !165, metadata !"settle", i32 123, i64 64, i64 32, i64 0, i32 0, metadata !223} ; [ DW_TAG_member ] [settle] [line 123, size 64, align 32, offset 0] [from ]
!223 = metadata !{i32 786451, metadata !4, metadata !165, metadata !"", i32 123, i64 64, i64 32, i32 0, i32 0, null, metadata !224, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 123, size 64, align 32, offset 0] [from ]
!224 = metadata !{metadata !225, metadata !226}
!225 = metadata !{i32 786445, metadata !4, metadata !223, metadata !"doh", i32 123, i64 32, i64 32, i64 0, i32 0, metadata !171} ; [ DW_TAG_member ] [doh] [line 123, size 32, align 32, offset 0] [from real]
!226 = metadata !{i32 786445, metadata !4, metadata !223, metadata !"dhh", i32 123, i64 32, i64 32, i64 32, i32 0, metadata !171} ; [ DW_TAG_member ] [dhh] [line 123, size 32, align 32, offset 32] [from real]
!227 = metadata !{i32 786445, metadata !4, metadata !165, metadata !"morse", i32 124, i64 96, i64 32, i64 0, i32 0, metadata !228} ; [ DW_TAG_member ] [morse] [line 124, size 96, align 32, offset 0] [from ]
!228 = metadata !{i32 786451, metadata !4, metadata !165, metadata !"", i32 124, i64 96, i64 32, i32 0, i32 0, null, metadata !229, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 124, size 96, align 32, offset 0] [from ]
!229 = metadata !{metadata !230, metadata !231, metadata !232}
!230 = metadata !{i32 786445, metadata !4, metadata !228, metadata !"b0", i32 124, i64 32, i64 32, i64 0, i32 0, metadata !171} ; [ DW_TAG_member ] [b0] [line 124, size 32, align 32, offset 0] [from real]
!231 = metadata !{i32 786445, metadata !4, metadata !228, metadata !"cb", i32 124, i64 32, i64 32, i64 32, i32 0, metadata !171} ; [ DW_TAG_member ] [cb] [line 124, size 32, align 32, offset 32] [from real]
!232 = metadata !{i32 786445, metadata !4, metadata !228, metadata !"beta", i32 124, i64 32, i64 32, i64 64, i32 0, metadata !171} ; [ DW_TAG_member ] [beta] [line 124, size 32, align 32, offset 64] [from real]
!233 = metadata !{i32 786445, metadata !4, metadata !165, metadata !"posres", i32 125, i64 192, i64 32, i64 0, i32 0, metadata !234} ; [ DW_TAG_member ] [posres] [line 125, size 192, align 32, offset 0] [from ]
!234 = metadata !{i32 786451, metadata !4, metadata !165, metadata !"", i32 125, i64 192, i64 32, i32 0, i32 0, null, metadata !235, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 125, size 192, align 32, offset 0] [from ]
!235 = metadata !{metadata !236, metadata !238}
!236 = metadata !{i32 786445, metadata !4, metadata !234, metadata !"pos0", i32 125, i64 96, i64 32, i64 0, i32 0, metadata !237} ; [ DW_TAG_member ] [pos0] [line 125, size 96, align 32, offset 0] [from ]
!237 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !171, metadata !141, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!238 = metadata !{i32 786445, metadata !4, metadata !234, metadata !"fc", i32 125, i64 96, i64 32, i64 96, i32 0, metadata !237} ; [ DW_TAG_member ] [fc] [line 125, size 96, align 32, offset 96] [from ]
!239 = metadata !{i32 786445, metadata !4, metadata !165, metadata !"rbdihs", i32 126, i64 192, i64 32, i64 0, i32 0, metadata !240} ; [ DW_TAG_member ] [rbdihs] [line 126, size 192, align 32, offset 0] [from ]
!240 = metadata !{i32 786451, metadata !4, metadata !165, metadata !"", i32 126, i64 192, i64 32, i32 0, i32 0, null, metadata !241, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 126, size 192, align 32, offset 0] [from ]
!241 = metadata !{metadata !242}
!242 = metadata !{i32 786445, metadata !4, metadata !240, metadata !"rbc", i32 126, i64 192, i64 32, i64 0, i32 0, metadata !243} ; [ DW_TAG_member ] [rbc] [line 126, size 192, align 32, offset 0] [from ]
!243 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !171, metadata !244, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from real]
!244 = metadata !{metadata !245}
!245 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!246 = metadata !{i32 786445, metadata !4, metadata !165, metadata !"dummy", i32 127, i64 192, i64 32, i64 0, i32 0, metadata !247} ; [ DW_TAG_member ] [dummy] [line 127, size 192, align 32, offset 0] [from ]
!247 = metadata !{i32 786451, metadata !4, metadata !165, metadata !"", i32 127, i64 192, i64 32, i32 0, i32 0, null, metadata !248, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 127, size 192, align 32, offset 0] [from ]
!248 = metadata !{metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254}
!249 = metadata !{i32 786445, metadata !4, metadata !247, metadata !"a", i32 127, i64 32, i64 32, i64 0, i32 0, metadata !171} ; [ DW_TAG_member ] [a] [line 127, size 32, align 32, offset 0] [from real]
!250 = metadata !{i32 786445, metadata !4, metadata !247, metadata !"b", i32 127, i64 32, i64 32, i64 32, i32 0, metadata !171} ; [ DW_TAG_member ] [b] [line 127, size 32, align 32, offset 32] [from real]
!251 = metadata !{i32 786445, metadata !4, metadata !247, metadata !"c", i32 127, i64 32, i64 32, i64 64, i32 0, metadata !171} ; [ DW_TAG_member ] [c] [line 127, size 32, align 32, offset 64] [from real]
!252 = metadata !{i32 786445, metadata !4, metadata !247, metadata !"d", i32 127, i64 32, i64 32, i64 96, i32 0, metadata !171} ; [ DW_TAG_member ] [d] [line 127, size 32, align 32, offset 96] [from real]
!253 = metadata !{i32 786445, metadata !4, metadata !247, metadata !"e", i32 127, i64 32, i64 32, i64 128, i32 0, metadata !171} ; [ DW_TAG_member ] [e] [line 127, size 32, align 32, offset 128] [from real]
!254 = metadata !{i32 786445, metadata !4, metadata !247, metadata !"f", i32 127, i64 32, i64 32, i64 160, i32 0, metadata !171} ; [ DW_TAG_member ] [f] [line 127, size 32, align 32, offset 160] [from real]
!255 = metadata !{i32 786445, metadata !4, metadata !165, metadata !"disres", i32 128, i64 192, i64 32, i64 0, i32 0, metadata !256} ; [ DW_TAG_member ] [disres] [line 128, size 192, align 32, offset 0] [from ]
!256 = metadata !{i32 786451, metadata !4, metadata !165, metadata !"", i32 128, i64 192, i64 32, i32 0, i32 0, null, metadata !257, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 128, size 192, align 32, offset 0] [from ]
!257 = metadata !{metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263}
!258 = metadata !{i32 786445, metadata !4, metadata !256, metadata !"low", i32 128, i64 32, i64 32, i64 0, i32 0, metadata !171} ; [ DW_TAG_member ] [low] [line 128, size 32, align 32, offset 0] [from real]
!259 = metadata !{i32 786445, metadata !4, metadata !256, metadata !"up1", i32 128, i64 32, i64 32, i64 32, i32 0, metadata !171} ; [ DW_TAG_member ] [up1] [line 128, size 32, align 32, offset 32] [from real]
!260 = metadata !{i32 786445, metadata !4, metadata !256, metadata !"up2", i32 128, i64 32, i64 32, i64 64, i32 0, metadata !171} ; [ DW_TAG_member ] [up2] [line 128, size 32, align 32, offset 64] [from real]
!261 = metadata !{i32 786445, metadata !4, metadata !256, metadata !"kfac", i32 128, i64 32, i64 32, i64 96, i32 0, metadata !171} ; [ DW_TAG_member ] [kfac] [line 128, size 32, align 32, offset 96] [from real]
!262 = metadata !{i32 786445, metadata !4, metadata !256, metadata !"type", i32 128, i64 32, i64 32, i64 128, i32 0, metadata !69} ; [ DW_TAG_member ] [type] [line 128, size 32, align 32, offset 128] [from int]
!263 = metadata !{i32 786445, metadata !4, metadata !256, metadata !"label", i32 128, i64 32, i64 32, i64 160, i32 0, metadata !69} ; [ DW_TAG_member ] [label] [line 128, size 32, align 32, offset 160] [from int]
!264 = metadata !{i32 786445, metadata !4, metadata !165, metadata !"orires", i32 129, i64 192, i64 32, i64 0, i32 0, metadata !265} ; [ DW_TAG_member ] [orires] [line 129, size 192, align 32, offset 0] [from ]
!265 = metadata !{i32 786451, metadata !4, metadata !165, metadata !"", i32 129, i64 192, i64 32, i32 0, i32 0, null, metadata !266, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 129, size 192, align 32, offset 0] [from ]
!266 = metadata !{metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272}
!267 = metadata !{i32 786445, metadata !4, metadata !265, metadata !"ex", i32 129, i64 32, i64 32, i64 0, i32 0, metadata !69} ; [ DW_TAG_member ] [ex] [line 129, size 32, align 32, offset 0] [from int]
!268 = metadata !{i32 786445, metadata !4, metadata !265, metadata !"pow", i32 129, i64 32, i64 32, i64 32, i32 0, metadata !69} ; [ DW_TAG_member ] [pow] [line 129, size 32, align 32, offset 32] [from int]
!269 = metadata !{i32 786445, metadata !4, metadata !265, metadata !"label", i32 129, i64 32, i64 32, i64 64, i32 0, metadata !69} ; [ DW_TAG_member ] [label] [line 129, size 32, align 32, offset 64] [from int]
!270 = metadata !{i32 786445, metadata !4, metadata !265, metadata !"c", i32 129, i64 32, i64 32, i64 96, i32 0, metadata !171} ; [ DW_TAG_member ] [c] [line 129, size 32, align 32, offset 96] [from real]
!271 = metadata !{i32 786445, metadata !4, metadata !265, metadata !"obs", i32 129, i64 32, i64 32, i64 128, i32 0, metadata !171} ; [ DW_TAG_member ] [obs] [line 129, size 32, align 32, offset 128] [from real]
!272 = metadata !{i32 786445, metadata !4, metadata !265, metadata !"kfac", i32 129, i64 32, i64 32, i64 160, i32 0, metadata !171} ; [ DW_TAG_member ] [kfac] [line 129, size 32, align 32, offset 160] [from real]
!273 = metadata !{i32 786445, metadata !4, metadata !165, metadata !"generic", i32 130, i64 192, i64 32, i64 0, i32 0, metadata !274} ; [ DW_TAG_member ] [generic] [line 130, size 192, align 32, offset 0] [from ]
!274 = metadata !{i32 786451, metadata !4, metadata !165, metadata !"", i32 130, i64 192, i64 32, i32 0, i32 0, null, metadata !275, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 130, size 192, align 32, offset 0] [from ]
!275 = metadata !{metadata !276}
!276 = metadata !{i32 786445, metadata !4, metadata !274, metadata !"buf", i32 130, i64 192, i64 32, i64 0, i32 0, metadata !243} ; [ DW_TAG_member ] [buf] [line 130, size 192, align 32, offset 0] [from ]
!277 = metadata !{i32 786445, metadata !4, metadata !154, metadata !"il", i32 187, i64 366080, i64 64, i64 256, i32 0, metadata !278} ; [ DW_TAG_member ] [il] [line 187, size 366080, align 64, offset 256] [from ]
!278 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 366080, i64 64, i32 0, i32 0, metadata !279, metadata !290, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 366080, align 64, offset 0] [from t_ilist]
!279 = metadata !{i32 786454, metadata !4, null, metadata !"t_ilist", i32 140, i64 0, i64 0, i64 0, i32 0, metadata !280} ; [ DW_TAG_typedef ] [t_ilist] [line 140, size 0, align 0, offset 0] [from ]
!280 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 135, i64 8320, i64 64, i32 0, i32 0, null, metadata !281, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 135, size 8320, align 64, offset 0] [from ]
!281 = metadata !{metadata !282, metadata !283, metadata !287}
!282 = metadata !{i32 786445, metadata !4, metadata !280, metadata !"nr", i32 137, i64 32, i64 32, i64 0, i32 0, metadata !69} ; [ DW_TAG_member ] [nr] [line 137, size 32, align 32, offset 0] [from int]
!283 = metadata !{i32 786445, metadata !4, metadata !280, metadata !"multinr", i32 138, i64 8192, i64 32, i64 32, i32 0, metadata !284} ; [ DW_TAG_member ] [multinr] [line 138, size 8192, align 32, offset 32] [from ]
!284 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !69, metadata !285, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!285 = metadata !{metadata !286}
!286 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!287 = metadata !{i32 786445, metadata !4, metadata !280, metadata !"iatoms", i32 139, i64 64, i64 64, i64 8256, i32 0, metadata !288} ; [ DW_TAG_member ] [iatoms] [line 139, size 64, align 64, offset 8256] [from ]
!288 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !289} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_iatom]
!289 = metadata !{i32 786454, metadata !4, null, metadata !"t_iatom", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !136} ; [ DW_TAG_typedef ] [t_iatom] [line 45, size 0, align 0, offset 0] [from atom_id]
!290 = metadata !{metadata !291}
!291 = metadata !{i32 786465, i64 0, i64 44}      ; [ DW_TAG_subrange_type ] [0, 43]
!292 = metadata !{metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298}
!293 = metadata !{i32 786689, metadata !149, metadata !"idef", metadata !60, i32 16777445, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idef] [line 229]
!294 = metadata !{i32 786689, metadata !149, metadata !"natoms", metadata !60, i32 33554661, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 229]
!295 = metadata !{i32 786689, metadata !149, metadata !"bShakeOnly", metadata !60, i32 50331877, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bShakeOnly] [line 229]
!296 = metadata !{i32 786689, metadata !149, metadata !"bSettle", metadata !60, i32 67109093, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bSettle] [line 229]
!297 = metadata !{i32 786688, metadata !149, metadata !"g", metadata !60, i32 231, metadata !121, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 231]
!298 = metadata !{i32 786688, metadata !149, metadata !"i", metadata !60, i32 232, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 232]
!299 = metadata !{i32 786478, metadata !1, metadata !60, metadata !"done_graph", metadata !"done_graph", metadata !"", i32 291, metadata !300, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_graph*)* @done_graph, null, null, metadata !302, i32 292} ; [ DW_TAG_subprogram ] [line 291] [def] [scope 292] [done_graph]
!300 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !301, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!301 = metadata !{null, metadata !121}
!302 = metadata !{metadata !303}
!303 = metadata !{i32 786689, metadata !299, metadata !"g", metadata !60, i32 16777507, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 291]
!304 = metadata !{i32 786478, metadata !1, metadata !60, metadata !"mk_mshift", metadata !"mk_mshift", metadata !"", i32 412, metadata !305, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_graph*, [3 x float]*, [3 x float]*)* @mk_mshift, null, null, metadata !310, i32 413} ; [ DW_TAG_subprogram ] [line 412] [def] [scope 413] [mk_mshift]
!305 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !306, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!306 = metadata !{null, metadata !63, metadata !121, metadata !307, metadata !308}
!307 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !237} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!308 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !309} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!309 = metadata !{i32 786454, metadata !1, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !237} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!310 = metadata !{metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323}
!311 = metadata !{i32 786689, metadata !304, metadata !"log", metadata !60, i32 16777628, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 412]
!312 = metadata !{i32 786689, metadata !304, metadata !"g", metadata !60, i32 33554844, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 412]
!313 = metadata !{i32 786689, metadata !304, metadata !"box", metadata !60, i32 50332060, metadata !307, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 412]
!314 = metadata !{i32 786689, metadata !304, metadata !"x", metadata !60, i32 67109276, metadata !308, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 412]
!315 = metadata !{i32 786688, metadata !304, metadata !"ng", metadata !60, i32 414, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ng] [line 414]
!316 = metadata !{i32 786688, metadata !304, metadata !"nnodes", metadata !60, i32 414, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nnodes] [line 414]
!317 = metadata !{i32 786688, metadata !304, metadata !"i", metadata !60, i32 414, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 414]
!318 = metadata !{i32 786688, metadata !304, metadata !"nW", metadata !60, i32 415, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nW] [line 415]
!319 = metadata !{i32 786688, metadata !304, metadata !"nG", metadata !60, i32 415, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nG] [line 415]
!320 = metadata !{i32 786688, metadata !304, metadata !"nB", metadata !60, i32 415, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nB] [line 415]
!321 = metadata !{i32 786688, metadata !304, metadata !"fW", metadata !60, i32 416, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fW] [line 416]
!322 = metadata !{i32 786688, metadata !304, metadata !"fG", metadata !60, i32 416, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fG] [line 416]
!323 = metadata !{i32 786688, metadata !304, metadata !"nerror", metadata !60, i32 417, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nerror] [line 417]
!324 = metadata !{i32 786478, metadata !1, metadata !60, metadata !"shift_atom", metadata !"shift_atom", metadata !"", i32 499, metadata !325, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_graph*, [3 x float]*, [3 x float]*, [3 x float]*, i32)* @shift_atom, null, null, metadata !327, i32 500} ; [ DW_TAG_subprogram ] [line 499] [def] [scope 500] [shift_atom]
!325 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !326, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!326 = metadata !{null, metadata !121, metadata !307, metadata !308, metadata !308, metadata !136}
!327 = metadata !{metadata !328, metadata !329, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !335}
!328 = metadata !{i32 786689, metadata !324, metadata !"g", metadata !60, i32 16777715, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 499]
!329 = metadata !{i32 786689, metadata !324, metadata !"box", metadata !60, i32 33554931, metadata !307, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 499]
!330 = metadata !{i32 786689, metadata !324, metadata !"x", metadata !60, i32 50332147, metadata !308, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 499]
!331 = metadata !{i32 786689, metadata !324, metadata !"x_s", metadata !60, i32 67109363, metadata !308, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x_s] [line 499]
!332 = metadata !{i32 786689, metadata !324, metadata !"ai", metadata !60, i32 83886579, metadata !136, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ai] [line 499]
!333 = metadata !{i32 786688, metadata !324, metadata !"tx", metadata !60, i32 501, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tx] [line 501]
!334 = metadata !{i32 786688, metadata !324, metadata !"ty", metadata !60, i32 501, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ty] [line 501]
!335 = metadata !{i32 786688, metadata !324, metadata !"tz", metadata !60, i32 501, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tz] [line 501]
!336 = metadata !{i32 786478, metadata !1, metadata !60, metadata !"unshift_atom", metadata !"unshift_atom", metadata !"", i32 511, metadata !325, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_graph*, [3 x float]*, [3 x float]*, [3 x float]*, i32)* @unshift_atom, null, null, metadata !337, i32 512} ; [ DW_TAG_subprogram ] [line 511] [def] [scope 512] [unshift_atom]
!337 = metadata !{metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345}
!338 = metadata !{i32 786689, metadata !336, metadata !"g", metadata !60, i32 16777727, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 511]
!339 = metadata !{i32 786689, metadata !336, metadata !"box", metadata !60, i32 33554943, metadata !307, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 511]
!340 = metadata !{i32 786689, metadata !336, metadata !"x", metadata !60, i32 50332159, metadata !308, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 511]
!341 = metadata !{i32 786689, metadata !336, metadata !"x_s", metadata !60, i32 67109375, metadata !308, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x_s] [line 511]
!342 = metadata !{i32 786689, metadata !336, metadata !"ai", metadata !60, i32 83886591, metadata !136, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ai] [line 511]
!343 = metadata !{i32 786688, metadata !336, metadata !"tx", metadata !60, i32 513, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tx] [line 513]
!344 = metadata !{i32 786688, metadata !336, metadata !"ty", metadata !60, i32 513, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ty] [line 513]
!345 = metadata !{i32 786688, metadata !336, metadata !"tz", metadata !60, i32 513, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tz] [line 513]
!346 = metadata !{i32 786478, metadata !1, metadata !60, metadata !"shift_x", metadata !"shift_x", metadata !"", i32 523, metadata !347, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_graph*, [3 x float]*, [3 x float]*, [3 x float]*)* @shift_x, null, null, metadata !349, i32 524} ; [ DW_TAG_subprogram ] [line 523] [def] [scope 524] [shift_x]
!347 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !348, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!348 = metadata !{null, metadata !121, metadata !307, metadata !308, metadata !308}
!349 = metadata !{metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !357, metadata !358, metadata !359, metadata !360, metadata !361}
!350 = metadata !{i32 786689, metadata !346, metadata !"g", metadata !60, i32 16777739, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 523]
!351 = metadata !{i32 786689, metadata !346, metadata !"box", metadata !60, i32 33554955, metadata !307, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 523]
!352 = metadata !{i32 786689, metadata !346, metadata !"x", metadata !60, i32 50332171, metadata !308, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 523]
!353 = metadata !{i32 786689, metadata !346, metadata !"x_s", metadata !60, i32 67109387, metadata !308, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x_s] [line 523]
!354 = metadata !{i32 786688, metadata !346, metadata !"is", metadata !60, i32 525, metadata !138, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [is] [line 525]
!355 = metadata !{i32 786688, metadata !346, metadata !"g0", metadata !60, i32 526, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g0] [line 526]
!356 = metadata !{i32 786688, metadata !346, metadata !"gn", metadata !60, i32 526, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gn] [line 526]
!357 = metadata !{i32 786688, metadata !346, metadata !"i", metadata !60, i32 527, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 527]
!358 = metadata !{i32 786688, metadata !346, metadata !"j", metadata !60, i32 527, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 527]
!359 = metadata !{i32 786688, metadata !346, metadata !"tx", metadata !60, i32 527, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tx] [line 527]
!360 = metadata !{i32 786688, metadata !346, metadata !"ty", metadata !60, i32 527, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ty] [line 527]
!361 = metadata !{i32 786688, metadata !346, metadata !"tz", metadata !60, i32 527, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tz] [line 527]
!362 = metadata !{i32 786478, metadata !1, metadata !60, metadata !"shift_self", metadata !"shift_self", metadata !"", i32 557, metadata !363, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_graph*, [3 x float]*, [3 x float]*)* @shift_self, null, null, metadata !365, i32 558} ; [ DW_TAG_subprogram ] [line 557] [def] [scope 558] [shift_self]
!363 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !364, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!364 = metadata !{null, metadata !121, metadata !307, metadata !308}
!365 = metadata !{metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !375, metadata !376}
!366 = metadata !{i32 786689, metadata !362, metadata !"g", metadata !60, i32 16777773, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 557]
!367 = metadata !{i32 786689, metadata !362, metadata !"box", metadata !60, i32 33554989, metadata !307, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 557]
!368 = metadata !{i32 786689, metadata !362, metadata !"x", metadata !60, i32 50332205, metadata !308, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 557]
!369 = metadata !{i32 786688, metadata !362, metadata !"is", metadata !60, i32 559, metadata !138, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [is] [line 559]
!370 = metadata !{i32 786688, metadata !362, metadata !"g0", metadata !60, i32 560, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g0] [line 560]
!371 = metadata !{i32 786688, metadata !362, metadata !"gn", metadata !60, i32 560, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gn] [line 560]
!372 = metadata !{i32 786688, metadata !362, metadata !"i", metadata !60, i32 561, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 561]
!373 = metadata !{i32 786688, metadata !362, metadata !"j", metadata !60, i32 561, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 561]
!374 = metadata !{i32 786688, metadata !362, metadata !"tx", metadata !60, i32 561, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tx] [line 561]
!375 = metadata !{i32 786688, metadata !362, metadata !"ty", metadata !60, i32 561, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ty] [line 561]
!376 = metadata !{i32 786688, metadata !362, metadata !"tz", metadata !60, i32 561, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tz] [line 561]
!377 = metadata !{i32 786478, metadata !1, metadata !60, metadata !"unshift_x", metadata !"unshift_x", metadata !"", i32 594, metadata !347, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_graph*, [3 x float]*, [3 x float]*, [3 x float]*)* @unshift_x, null, null, metadata !378, i32 595} ; [ DW_TAG_subprogram ] [line 594] [def] [scope 595] [unshift_x]
!378 = metadata !{metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390}
!379 = metadata !{i32 786689, metadata !377, metadata !"g", metadata !60, i32 16777810, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 594]
!380 = metadata !{i32 786689, metadata !377, metadata !"box", metadata !60, i32 33555026, metadata !307, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 594]
!381 = metadata !{i32 786689, metadata !377, metadata !"x", metadata !60, i32 50332242, metadata !308, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 594]
!382 = metadata !{i32 786689, metadata !377, metadata !"x_s", metadata !60, i32 67109458, metadata !308, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x_s] [line 594]
!383 = metadata !{i32 786688, metadata !377, metadata !"is", metadata !60, i32 596, metadata !138, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [is] [line 596]
!384 = metadata !{i32 786688, metadata !377, metadata !"g0", metadata !60, i32 597, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g0] [line 597]
!385 = metadata !{i32 786688, metadata !377, metadata !"gn", metadata !60, i32 597, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gn] [line 597]
!386 = metadata !{i32 786688, metadata !377, metadata !"i", metadata !60, i32 598, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 598]
!387 = metadata !{i32 786688, metadata !377, metadata !"j", metadata !60, i32 598, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 598]
!388 = metadata !{i32 786688, metadata !377, metadata !"tx", metadata !60, i32 598, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tx] [line 598]
!389 = metadata !{i32 786688, metadata !377, metadata !"ty", metadata !60, i32 598, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ty] [line 598]
!390 = metadata !{i32 786688, metadata !377, metadata !"tz", metadata !60, i32 598, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tz] [line 598]
!391 = metadata !{i32 786478, metadata !1, metadata !60, metadata !"unshift_self", metadata !"unshift_self", metadata !"", i32 626, metadata !363, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_graph*, [3 x float]*, [3 x float]*)* @unshift_self, null, null, metadata !392, i32 627} ; [ DW_TAG_subprogram ] [line 626] [def] [scope 627] [unshift_self]
!392 = metadata !{metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403}
!393 = metadata !{i32 786689, metadata !391, metadata !"g", metadata !60, i32 16777842, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 626]
!394 = metadata !{i32 786689, metadata !391, metadata !"box", metadata !60, i32 33555058, metadata !307, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 626]
!395 = metadata !{i32 786689, metadata !391, metadata !"x", metadata !60, i32 50332274, metadata !308, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 626]
!396 = metadata !{i32 786688, metadata !391, metadata !"is", metadata !60, i32 628, metadata !138, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [is] [line 628]
!397 = metadata !{i32 786688, metadata !391, metadata !"g0", metadata !60, i32 629, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g0] [line 629]
!398 = metadata !{i32 786688, metadata !391, metadata !"gn", metadata !60, i32 629, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gn] [line 629]
!399 = metadata !{i32 786688, metadata !391, metadata !"i", metadata !60, i32 630, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 630]
!400 = metadata !{i32 786688, metadata !391, metadata !"j", metadata !60, i32 630, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 630]
!401 = metadata !{i32 786688, metadata !391, metadata !"tx", metadata !60, i32 630, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tx] [line 630]
!402 = metadata !{i32 786688, metadata !391, metadata !"ty", metadata !60, i32 630, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ty] [line 630]
!403 = metadata !{i32 786688, metadata !391, metadata !"tz", metadata !60, i32 630, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tz] [line 630]
!404 = metadata !{i32 786478, metadata !1, metadata !60, metadata !"mk_grey", metadata !"mk_grey", metadata !"", i32 354, metadata !405, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !409, i32 356} ; [ DW_TAG_subprogram ] [line 354] [local] [def] [scope 356] [mk_grey]
!405 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !406, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!406 = metadata !{metadata !69, metadata !63, metadata !69, metadata !407, metadata !121, metadata !132, metadata !307, metadata !308, metadata !132}
!407 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !408} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from egCol]
!408 = metadata !{i32 786454, metadata !1, null, metadata !"egCol", i32 58, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_typedef ] [egCol] [line 58, size 0, align 0, offset 0] [from ]
!409 = metadata !{metadata !410, metadata !411, metadata !412, metadata !413, metadata !414, metadata !415, metadata !416, metadata !417, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423, metadata !424, metadata !425, metadata !426}
!410 = metadata !{i32 786689, metadata !404, metadata !"log", metadata !60, i32 16777570, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 354]
!411 = metadata !{i32 786689, metadata !404, metadata !"nnodes", metadata !60, i32 33554786, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nnodes] [line 354]
!412 = metadata !{i32 786689, metadata !404, metadata !"egc", metadata !60, i32 50332002, metadata !407, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [egc] [line 354]
!413 = metadata !{i32 786689, metadata !404, metadata !"g", metadata !60, i32 67109218, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 354]
!414 = metadata !{i32 786689, metadata !404, metadata !"AtomI", metadata !60, i32 83886434, metadata !132, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [AtomI] [line 354]
!415 = metadata !{i32 786689, metadata !404, metadata !"box", metadata !60, i32 100663651, metadata !307, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 355]
!416 = metadata !{i32 786689, metadata !404, metadata !"x", metadata !60, i32 117440867, metadata !308, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 355]
!417 = metadata !{i32 786689, metadata !404, metadata !"nerror", metadata !60, i32 134218083, metadata !132, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nerror] [line 355]
!418 = metadata !{i32 786688, metadata !404, metadata !"m", metadata !60, i32 357, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 357]
!419 = metadata !{i32 786688, metadata !404, metadata !"j", metadata !60, i32 357, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 357]
!420 = metadata !{i32 786688, metadata !404, metadata !"ng", metadata !60, i32 357, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ng] [line 357]
!421 = metadata !{i32 786688, metadata !404, metadata !"ai", metadata !60, i32 357, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai] [line 357]
!422 = metadata !{i32 786688, metadata !404, metadata !"aj", metadata !60, i32 357, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aj] [line 357]
!423 = metadata !{i32 786688, metadata !404, metadata !"g0", metadata !60, i32 357, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g0] [line 357]
!424 = metadata !{i32 786688, metadata !404, metadata !"hbox", metadata !60, i32 358, metadata !309, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hbox] [line 358]
!425 = metadata !{i32 786688, metadata !404, metadata !"bTriclinic", metadata !60, i32 359, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bTriclinic] [line 359]
!426 = metadata !{i32 786688, metadata !404, metadata !"is_aj", metadata !60, i32 360, metadata !139, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [is_aj] [line 360]
!427 = metadata !{i32 786478, metadata !428, metadata !429, metadata !"copy_ivec", metadata !"copy_ivec", metadata !"", i32 277, metadata !430, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !434, i32 278} ; [ DW_TAG_subprogram ] [line 277] [local] [def] [scope 278] [copy_ivec]
!428 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!429 = metadata !{i32 786473, metadata !428}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!430 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !431, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!431 = metadata !{null, metadata !432, metadata !132}
!432 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !433} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!433 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !69} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!434 = metadata !{metadata !435, metadata !436}
!435 = metadata !{i32 786689, metadata !427, metadata !"a", metadata !429, i32 16777493, metadata !432, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 277]
!436 = metadata !{i32 786689, metadata !427, metadata !"b", metadata !429, i32 33554709, metadata !132, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 277]
!437 = metadata !{i32 786478, metadata !1, metadata !60, metadata !"mk_1shift", metadata !"mk_1shift", metadata !"", i32 333, metadata !438, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !441, i32 334} ; [ DW_TAG_subprogram ] [line 333] [local] [def] [scope 334] [mk_1shift]
!438 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !439, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!439 = metadata !{null, metadata !440, metadata !440, metadata !440, metadata !132, metadata !132}
!440 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !171} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!441 = metadata !{metadata !442, metadata !443, metadata !444, metadata !445, metadata !446, metadata !447, metadata !449}
!442 = metadata !{i32 786689, metadata !437, metadata !"hbox", metadata !60, i32 16777549, metadata !440, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hbox] [line 333]
!443 = metadata !{i32 786689, metadata !437, metadata !"xi", metadata !60, i32 33554765, metadata !440, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xi] [line 333]
!444 = metadata !{i32 786689, metadata !437, metadata !"xj", metadata !60, i32 50331981, metadata !440, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xj] [line 333]
!445 = metadata !{i32 786689, metadata !437, metadata !"mi", metadata !60, i32 67109197, metadata !132, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mi] [line 333]
!446 = metadata !{i32 786689, metadata !437, metadata !"mj", metadata !60, i32 83886413, metadata !132, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mj] [line 333]
!447 = metadata !{i32 786688, metadata !448, metadata !"m", metadata !60, i32 336, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 336]
!448 = metadata !{i32 786443, metadata !1, metadata !437} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!449 = metadata !{i32 786688, metadata !448, metadata !"dx", metadata !60, i32 337, metadata !309, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 337]
!450 = metadata !{i32 786478, metadata !428, metadata !429, metadata !"rvec_sub", metadata !"rvec_sub", metadata !"", i32 244, metadata !451, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !455, i32 245} ; [ DW_TAG_subprogram ] [line 244] [local] [def] [scope 245] [rvec_sub]
!451 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !452, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!452 = metadata !{null, metadata !453, metadata !453, metadata !440}
!453 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !454} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!454 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !171} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from real]
!455 = metadata !{metadata !456, metadata !457, metadata !458, metadata !459, metadata !461, metadata !462}
!456 = metadata !{i32 786689, metadata !450, metadata !"a", metadata !429, i32 16777460, metadata !453, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 244]
!457 = metadata !{i32 786689, metadata !450, metadata !"b", metadata !429, i32 33554676, metadata !453, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 244]
!458 = metadata !{i32 786689, metadata !450, metadata !"c", metadata !429, i32 50331892, metadata !440, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 244]
!459 = metadata !{i32 786688, metadata !460, metadata !"x", metadata !429, i32 246, metadata !171, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 246]
!460 = metadata !{i32 786443, metadata !428, metadata !450} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!461 = metadata !{i32 786688, metadata !460, metadata !"y", metadata !429, i32 246, metadata !171, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 246]
!462 = metadata !{i32 786688, metadata !460, metadata !"z", metadata !429, i32 246, metadata !171, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 246]
!463 = metadata !{i32 786478, metadata !1, metadata !60, metadata !"mk_1shift_tric", metadata !"mk_1shift_tric", metadata !"", i32 308, metadata !464, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !466, i32 309} ; [ DW_TAG_subprogram ] [line 308] [local] [def] [scope 309] [mk_1shift_tric]
!464 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !465, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!465 = metadata !{null, metadata !307, metadata !440, metadata !440, metadata !440, metadata !132, metadata !132}
!466 = metadata !{metadata !467, metadata !468, metadata !469, metadata !470, metadata !471, metadata !472, metadata !473, metadata !475, metadata !476}
!467 = metadata !{i32 786689, metadata !463, metadata !"box", metadata !60, i32 16777524, metadata !307, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 308]
!468 = metadata !{i32 786689, metadata !463, metadata !"hbox", metadata !60, i32 33554740, metadata !440, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hbox] [line 308]
!469 = metadata !{i32 786689, metadata !463, metadata !"xi", metadata !60, i32 50331956, metadata !440, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xi] [line 308]
!470 = metadata !{i32 786689, metadata !463, metadata !"xj", metadata !60, i32 67109172, metadata !440, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xj] [line 308]
!471 = metadata !{i32 786689, metadata !463, metadata !"mi", metadata !60, i32 83886388, metadata !132, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mi] [line 308]
!472 = metadata !{i32 786689, metadata !463, metadata !"mj", metadata !60, i32 100663604, metadata !132, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mj] [line 308]
!473 = metadata !{i32 786688, metadata !474, metadata !"m", metadata !60, i32 311, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 311]
!474 = metadata !{i32 786443, metadata !1, metadata !463} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!475 = metadata !{i32 786688, metadata !474, metadata !"d", metadata !60, i32 311, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 311]
!476 = metadata !{i32 786688, metadata !474, metadata !"dx", metadata !60, i32 312, metadata !309, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 312]
!477 = metadata !{i32 786478, metadata !1, metadata !60, metadata !"first_colour", metadata !"first_colour", metadata !"", i32 398, metadata !478, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !480, i32 402} ; [ DW_TAG_subprogram ] [line 398] [local] [def] [scope 402] [first_colour]
!478 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !479, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!479 = metadata !{metadata !69, metadata !69, metadata !408, metadata !121, metadata !407}
!480 = metadata !{metadata !481, metadata !482, metadata !483, metadata !484, metadata !485}
!481 = metadata !{i32 786689, metadata !477, metadata !"fC", metadata !60, i32 16777614, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fC] [line 398]
!482 = metadata !{i32 786689, metadata !477, metadata !"Col", metadata !60, i32 33554830, metadata !408, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Col] [line 398]
!483 = metadata !{i32 786689, metadata !477, metadata !"g", metadata !60, i32 50332046, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 398]
!484 = metadata !{i32 786689, metadata !477, metadata !"egc", metadata !60, i32 67109262, metadata !407, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [egc] [line 398]
!485 = metadata !{i32 786688, metadata !477, metadata !"i", metadata !60, i32 403, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 403]
!486 = metadata !{i32 786478, metadata !1, metadata !60, metadata !"mk_igraph", metadata !"mk_igraph", metadata !"", i32 83, metadata !487, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_graph*, i32*, %struct.t_ilist*, i32, i32)* @mk_igraph, null, null, metadata !490, i32 85} ; [ DW_TAG_subprogram ] [line 83] [local] [def] [scope 85] [mk_igraph]
!487 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !488, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!488 = metadata !{null, metadata !121, metadata !160, metadata !489, metadata !69, metadata !69}
!489 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !279} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_ilist]
!490 = metadata !{metadata !491, metadata !492, metadata !493, metadata !494, metadata !495, metadata !496, metadata !497, metadata !499, metadata !500, metadata !501, metadata !502, metadata !503, metadata !504, metadata !505}
!491 = metadata !{i32 786689, metadata !486, metadata !"g", metadata !60, i32 16777299, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 83]
!492 = metadata !{i32 786689, metadata !486, metadata !"ftype", metadata !60, i32 33554515, metadata !160, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ftype] [line 83]
!493 = metadata !{i32 786689, metadata !486, metadata !"il", metadata !60, i32 50331731, metadata !489, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [il] [line 83]
!494 = metadata !{i32 786689, metadata !486, metadata !"natoms", metadata !60, i32 67108948, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 84]
!495 = metadata !{i32 786689, metadata !486, metadata !"bAll", metadata !60, i32 83886164, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bAll] [line 84]
!496 = metadata !{i32 786688, metadata !486, metadata !"ia", metadata !60, i32 86, metadata !288, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ia] [line 86]
!497 = metadata !{i32 786688, metadata !486, metadata !"waterh", metadata !60, i32 86, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [waterh] [line 86]
!498 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !289, metadata !141, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from t_iatom]
!499 = metadata !{i32 786688, metadata !486, metadata !"iap", metadata !60, i32 86, metadata !288, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iap] [line 86]
!500 = metadata !{i32 786688, metadata !486, metadata !"tp", metadata !60, i32 87, metadata !289, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tp] [line 87]
!501 = metadata !{i32 786688, metadata !486, metadata !"i", metadata !60, i32 88, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 88]
!502 = metadata !{i32 786688, metadata !486, metadata !"j", metadata !60, i32 88, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 88]
!503 = metadata !{i32 786688, metadata !486, metadata !"np", metadata !60, i32 88, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [np] [line 88]
!504 = metadata !{i32 786688, metadata !486, metadata !"nbonded", metadata !60, i32 88, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbonded] [line 88]
!505 = metadata !{i32 786688, metadata !486, metadata !"end", metadata !60, i32 89, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [end] [line 89]
!506 = metadata !{i32 786478, metadata !1, metadata !60, metadata !"add_gbond", metadata !"add_gbond", metadata !"", i32 60, metadata !507, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_graph*, i32*, i32)* @add_gbond, null, null, metadata !509, i32 61} ; [ DW_TAG_subprogram ] [line 60] [local] [def] [scope 61] [add_gbond]
!507 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !508, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!508 = metadata !{null, metadata !121, metadata !288, metadata !69}
!509 = metadata !{metadata !510, metadata !511, metadata !512, metadata !513, metadata !514, metadata !515, metadata !516, metadata !517}
!510 = metadata !{i32 786689, metadata !506, metadata !"g", metadata !60, i32 16777276, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 60]
!511 = metadata !{i32 786689, metadata !506, metadata !"ia", metadata !60, i32 33554492, metadata !288, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ia] [line 60]
!512 = metadata !{i32 786689, metadata !506, metadata !"np", metadata !60, i32 50331708, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [np] [line 60]
!513 = metadata !{i32 786688, metadata !506, metadata !"j", metadata !60, i32 62, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 62]
!514 = metadata !{i32 786688, metadata !506, metadata !"k", metadata !60, i32 62, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 62]
!515 = metadata !{i32 786688, metadata !506, metadata !"l", metadata !60, i32 62, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 62]
!516 = metadata !{i32 786688, metadata !506, metadata !"aa", metadata !60, i32 63, metadata !136, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aa] [line 63]
!517 = metadata !{i32 786688, metadata !506, metadata !"inda", metadata !60, i32 63, metadata !136, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inda] [line 63]
!518 = metadata !{i32 786478, metadata !1, metadata !60, metadata !"calc_start_end", metadata !"calc_start_end", metadata !"", i32 204, metadata !519, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !521, i32 205} ; [ DW_TAG_subprogram ] [line 204] [local] [def] [scope 205] [calc_start_end]
!519 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !520, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!520 = metadata !{null, metadata !121, metadata !152, metadata !69}
!521 = metadata !{metadata !522, metadata !523, metadata !524, metadata !525, metadata !528, metadata !529}
!522 = metadata !{i32 786689, metadata !518, metadata !"g", metadata !60, i32 16777420, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 204]
!523 = metadata !{i32 786689, metadata !518, metadata !"idef", metadata !60, i32 33554636, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idef] [line 204]
!524 = metadata !{i32 786689, metadata !518, metadata !"natoms", metadata !60, i32 50331852, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 204]
!525 = metadata !{i32 786688, metadata !518, metadata !"nbond", metadata !60, i32 206, metadata !526, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbond] [line 206]
!526 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !527} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!527 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!528 = metadata !{i32 786688, metadata !518, metadata !"i", metadata !60, i32 207, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 207]
!529 = metadata !{i32 786688, metadata !518, metadata !"nnb", metadata !60, i32 207, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nnb] [line 207]
!530 = metadata !{i32 786478, metadata !1, metadata !60, metadata !"calc_1se", metadata !"calc_1se", metadata !"", i32 163, metadata !531, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !533, i32 165} ; [ DW_TAG_subprogram ] [line 163] [local] [def] [scope 165] [calc_1se]
!531 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !532, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!532 = metadata !{null, metadata !121, metadata !489, metadata !160, metadata !526, metadata !69}
!533 = metadata !{metadata !534, metadata !535, metadata !536, metadata !537, metadata !538, metadata !539, metadata !540, metadata !541, metadata !542, metadata !543, metadata !544, metadata !545, metadata !546}
!534 = metadata !{i32 786689, metadata !530, metadata !"g", metadata !60, i32 16777379, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 163]
!535 = metadata !{i32 786689, metadata !530, metadata !"il", metadata !60, i32 33554595, metadata !489, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [il] [line 163]
!536 = metadata !{i32 786689, metadata !530, metadata !"ftype", metadata !60, i32 50331811, metadata !160, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ftype] [line 163]
!537 = metadata !{i32 786689, metadata !530, metadata !"nbond", metadata !60, i32 67109028, metadata !526, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nbond] [line 164]
!538 = metadata !{i32 786689, metadata !530, metadata !"natoms", metadata !60, i32 83886244, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 164]
!539 = metadata !{i32 786688, metadata !530, metadata !"k", metadata !60, i32 166, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 166]
!540 = metadata !{i32 786688, metadata !530, metadata !"nratoms", metadata !60, i32 166, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nratoms] [line 166]
!541 = metadata !{i32 786688, metadata !530, metadata !"nbonded", metadata !60, i32 166, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbonded] [line 166]
!542 = metadata !{i32 786688, metadata !530, metadata !"tp", metadata !60, i32 166, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tp] [line 166]
!543 = metadata !{i32 786688, metadata !530, metadata !"end", metadata !60, i32 166, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [end] [line 166]
!544 = metadata !{i32 786688, metadata !530, metadata !"j", metadata !60, i32 166, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 166]
!545 = metadata !{i32 786688, metadata !530, metadata !"ia", metadata !60, i32 167, metadata !288, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ia] [line 167]
!546 = metadata !{i32 786688, metadata !530, metadata !"iaa", metadata !60, i32 167, metadata !289, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iaa] [line 167]
!547 = metadata !{metadata !548, metadata !549}
!548 = metadata !{i32 786484, i32 0, metadata !304, metadata !"negc", metadata !"negc", metadata !"", metadata !60, i32 418, metadata !69, i32 1, i32 1, i32* @mk_mshift.negc, null} ; [ DW_TAG_variable ] [negc] [line 418] [local] [def]
!549 = metadata !{i32 786484, i32 0, metadata !304, metadata !"egc", metadata !"egc", metadata !"", metadata !60, i32 419, metadata !407, i32 1, i32 1, i32** @mk_mshift.egc, null} ; [ DW_TAG_variable ] [egc] [line 419] [local] [def]
!550 = metadata !{i32 138, i32 0, metadata !59, null}
!551 = metadata !{i32 142, i32 0, metadata !59, null}
!552 = metadata !{i32 144, i32 0, metadata !553, null}
!553 = metadata !{i32 786443, metadata !1, metadata !59, i32 143, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!554 = metadata !{i32 145, i32 0, metadata !553, null}
!555 = metadata !{metadata !"int", metadata !556}
!556 = metadata !{metadata !"omnipotent char", metadata !557}
!557 = metadata !{metadata !"Simple C/C++ TBAA"}
!558 = metadata !{i32 146, i32 0, metadata !553, null}
!559 = metadata !{i32 147, i32 0, metadata !553, null}
!560 = metadata !{i32 148, i32 0, metadata !553, null}
!561 = metadata !{i32 149, i32 0, metadata !553, null}
!562 = metadata !{i32 150, i32 0, metadata !553, null}
!563 = metadata !{i32 151, i32 0, metadata !564, null}
!564 = metadata !{i32 786443, metadata !1, metadata !553, i32 151, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!565 = metadata !{i32 152, i32 0, metadata !564, null}
!566 = metadata !{i32 153, i32 0, metadata !567, null}
!567 = metadata !{i32 786443, metadata !1, metadata !564, i32 152, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!568 = metadata !{i32 156, i32 0, metadata !569, null}
!569 = metadata !{i32 786443, metadata !1, metadata !567, i32 155, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!570 = metadata !{metadata !"any pointer", metadata !556}
!571 = metadata !{i32 155, i32 0, metadata !569, null}
!572 = metadata !{i32 157, i32 0, metadata !567, null}
!573 = metadata !{i32 158, i32 0, metadata !567, null}
!574 = metadata !{i32 159, i32 0, metadata !553, null}
!575 = metadata !{i32 160, i32 0, metadata !553, null}
!576 = metadata !{i32 161, i32 0, metadata !59, null}
!577 = metadata !{i32 229, i32 0, metadata !149, null}
!578 = metadata !{i32 234, i32 0, metadata !149, null}
!579 = metadata !{i32 786689, metadata !518, metadata !"g", metadata !60, i32 16777420, metadata !121, i32 0, metadata !580} ; [ DW_TAG_arg_variable ] [g] [line 204]
!580 = metadata !{i32 236, i32 0, metadata !149, null}
!581 = metadata !{i32 204, i32 0, metadata !518, metadata !580}
!582 = metadata !{i32 786689, metadata !518, metadata !"idef", metadata !60, i32 33554636, metadata !152, i32 0, metadata !580} ; [ DW_TAG_arg_variable ] [idef] [line 204]
!583 = metadata !{i32 786689, metadata !518, metadata !"natoms", metadata !60, i32 50331852, metadata !69, i32 0, metadata !580} ; [ DW_TAG_arg_variable ] [natoms] [line 204]
!584 = metadata !{i32 209, i32 0, metadata !518, metadata !580}
!585 = metadata !{i32 210, i32 0, metadata !518, metadata !580}
!586 = metadata !{i32 212, i32 0, metadata !518, metadata !580}
!587 = metadata !{i32 786688, metadata !518, metadata !"nbond", metadata !60, i32 206, metadata !526, i32 0, metadata !580} ; [ DW_TAG_auto_variable ] [nbond] [line 206]
!588 = metadata !{i32 786688, metadata !518, metadata !"i", metadata !60, i32 207, metadata !69, i32 0, metadata !580} ; [ DW_TAG_auto_variable ] [i] [line 207]
!589 = metadata !{i32 213, i32 0, metadata !590, metadata !580}
!590 = metadata !{i32 786443, metadata !1, metadata !518, i32 213, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!591 = metadata !{i32 215, i32 0, metadata !592, metadata !580}
!592 = metadata !{i32 786443, metadata !1, metadata !590, i32 213, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!593 = metadata !{i32 214, i32 0, metadata !592, metadata !580}
!594 = metadata !{metadata !"long", metadata !556}
!595 = metadata !{i32 786689, metadata !530, metadata !"g", metadata !60, i32 16777379, metadata !121, i32 0, metadata !591} ; [ DW_TAG_arg_variable ] [g] [line 163]
!596 = metadata !{i32 163, i32 0, metadata !530, metadata !591}
!597 = metadata !{i32 786689, metadata !530, metadata !"ftype", metadata !60, i32 50331811, metadata !160, i32 0, metadata !591} ; [ DW_TAG_arg_variable ] [ftype] [line 163]
!598 = metadata !{i32 786689, metadata !530, metadata !"nbond", metadata !60, i32 67109028, metadata !526, i32 0, metadata !591} ; [ DW_TAG_arg_variable ] [nbond] [line 164]
!599 = metadata !{i32 164, i32 0, metadata !530, metadata !591}
!600 = metadata !{i32 786689, metadata !530, metadata !"natoms", metadata !60, i32 83886244, metadata !69, i32 0, metadata !591} ; [ DW_TAG_arg_variable ] [natoms] [line 164]
!601 = metadata !{i32 169, i32 0, metadata !530, metadata !591}
!602 = metadata !{i32 786688, metadata !530, metadata !"end", metadata !60, i32 166, metadata !69, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [end] [line 166]
!603 = metadata !{i32 786688, metadata !530, metadata !"j", metadata !60, i32 166, metadata !69, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [j] [line 166]
!604 = metadata !{i32 172, i32 0, metadata !605, metadata !591}
!605 = metadata !{i32 786443, metadata !1, metadata !530, i32 172, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!606 = metadata !{i32 171, i32 0, metadata !530, metadata !591}
!607 = metadata !{i32 173, i32 0, metadata !608, metadata !591}
!608 = metadata !{i32 786443, metadata !1, metadata !605, i32 172, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!609 = metadata !{i32 786688, metadata !530, metadata !"tp", metadata !60, i32 166, metadata !69, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [tp] [line 166]
!610 = metadata !{i32 174, i32 0, metadata !608, metadata !591}
!611 = metadata !{i32 786688, metadata !530, metadata !"nratoms", metadata !60, i32 166, metadata !69, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [nratoms] [line 166]
!612 = metadata !{i32 176, i32 0, metadata !608, metadata !591}
!613 = metadata !{i32 177, i32 0, metadata !614, metadata !591}
!614 = metadata !{i32 786443, metadata !1, metadata !608, i32 176, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!615 = metadata !{i32 786688, metadata !530, metadata !"iaa", metadata !60, i32 167, metadata !289, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [iaa] [line 167]
!616 = metadata !{i32 178, i32 0, metadata !614, metadata !591}
!617 = metadata !{i32 179, i32 0, metadata !618, metadata !591}
!618 = metadata !{i32 786443, metadata !1, metadata !614, i32 178, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!619 = metadata !{metadata !"short", metadata !556}
!620 = metadata !{i32 180, i32 0, metadata !618, metadata !591}
!621 = metadata !{i32 181, i32 0, metadata !618, metadata !591}
!622 = metadata !{i32 182, i32 0, metadata !618, metadata !591}
!623 = metadata !{i32 183, i32 0, metadata !618, metadata !591}
!624 = metadata !{i32 184, i32 0, metadata !618, metadata !591}
!625 = metadata !{i32 186, i32 0, metadata !626, metadata !591}
!626 = metadata !{i32 786443, metadata !1, metadata !608, i32 185, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!627 = metadata !{i32 786688, metadata !530, metadata !"k", metadata !60, i32 166, metadata !69, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [k] [line 166]
!628 = metadata !{i32 191, i32 0, metadata !629, metadata !591}
!629 = metadata !{i32 786443, metadata !1, metadata !626, i32 191, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!630 = metadata !{i32 196, i32 0, metadata !631, metadata !591}
!631 = metadata !{i32 786443, metadata !1, metadata !632, i32 193, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!632 = metadata !{i32 786443, metadata !1, metadata !629, i32 191, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!633 = metadata !{i32 192, i32 0, metadata !632, metadata !591}
!634 = metadata !{i32 193, i32 0, metadata !632, metadata !591}
!635 = metadata !{i32 194, i32 0, metadata !631, metadata !591}
!636 = metadata !{i32 195, i32 0, metadata !631, metadata !591}
!637 = metadata !{i32 197, i32 0, metadata !631, metadata !591}
!638 = metadata !{i32 786688, metadata !530, metadata !"ia", metadata !60, i32 167, metadata !288, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [ia] [line 167]
!639 = metadata !{i32 786688, metadata !518, metadata !"nnb", metadata !60, i32 207, metadata !69, i32 0, metadata !580} ; [ DW_TAG_auto_variable ] [nnb] [line 207]
!640 = metadata !{i32 218, i32 0, metadata !518, metadata !580}
!641 = metadata !{i32 219, i32 0, metadata !642, metadata !580}
!642 = metadata !{i32 786443, metadata !1, metadata !518, i32 219, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!643 = metadata !{i32 220, i32 0, metadata !642, metadata !580}
!644 = metadata !{i32 221, i32 0, metadata !518, metadata !580}
!645 = metadata !{i32 222, i32 0, metadata !518, metadata !580}
!646 = metadata !{i32 224, i32 0, metadata !518, metadata !580}
!647 = metadata !{i32 226, i32 0, metadata !518, metadata !580}
!648 = metadata !{i32 238, i32 0, metadata !149, null}
!649 = metadata !{i32 239, i32 0, metadata !650, null}
!650 = metadata !{i32 786443, metadata !1, metadata !149, i32 238, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!651 = metadata !{i32 240, i32 0, metadata !650, null}
!652 = metadata !{i32 242, i32 0, metadata !653, null}
!653 = metadata !{i32 786443, metadata !1, metadata !149, i32 241, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!654 = metadata !{i32 243, i32 0, metadata !653, null}
!655 = metadata !{i32 244, i32 0, metadata !653, null}
!656 = metadata !{i32 250, i32 0, metadata !653, null}
!657 = metadata !{i32 251, i32 0, metadata !653, null}
!658 = metadata !{i32 252, i32 0, metadata !653, null}
!659 = metadata !{i32 253, i32 0, metadata !653, null}
!660 = metadata !{i32 1}
!661 = metadata !{i32 255, i32 0, metadata !662, null}
!662 = metadata !{i32 786443, metadata !1, metadata !653, i32 255, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!663 = metadata !{i32 256, i32 0, metadata !662, null}
!664 = metadata !{i32 258, i32 0, metadata !653, null}
!665 = metadata !{i32 263, i32 0, metadata !666, null}
!666 = metadata !{i32 786443, metadata !1, metadata !667, i32 262, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!667 = metadata !{i32 786443, metadata !1, metadata !653, i32 258, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!668 = metadata !{i32 264, i32 0, metadata !666, null}
!669 = metadata !{i32 262, i32 0, metadata !666, null}
!670 = metadata !{i32 269, i32 0, metadata !671, null}
!671 = metadata !{i32 786443, metadata !1, metadata !672, i32 268, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!672 = metadata !{i32 786443, metadata !1, metadata !667, i32 268, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!673 = metadata !{i32 270, i32 0, metadata !674, null}
!674 = metadata !{i32 786443, metadata !1, metadata !671, i32 269, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!675 = metadata !{i32 271, i32 0, metadata !674, null}
!676 = metadata !{i32 268, i32 0, metadata !672, null}
!677 = metadata !{i32 276, i32 0, metadata !678, null}
!678 = metadata !{i32 786443, metadata !1, metadata !653, i32 274, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!679 = metadata !{i32 277, i32 0, metadata !678, null}
!680 = metadata !{i32 278, i32 0, metadata !678, null}
!681 = metadata !{i32 280, i32 0, metadata !653, null}
!682 = metadata !{i32 281, i32 0, metadata !683, null}
!683 = metadata !{i32 786443, metadata !1, metadata !653, i32 281, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!684 = metadata !{i32 282, i32 0, metadata !683, null}
!685 = metadata !{i32 283, i32 0, metadata !683, null}
!686 = metadata !{i32 288, i32 0, metadata !149, null}
!687 = metadata !{i32 83, i32 0, metadata !486, null}
!688 = metadata !{i32 84, i32 0, metadata !486, null}
!689 = metadata !{i32 86, i32 0, metadata !486, null}
!690 = metadata !{i32 91, i32 0, metadata !486, null}
!691 = metadata !{i32 92, i32 0, metadata !486, null}
!692 = metadata !{i32 94, i32 0, metadata !486, null}
!693 = metadata !{i32 95, i32 0, metadata !486, null}
!694 = metadata !{i32 110, i32 0, metadata !695, null}
!695 = metadata !{i32 786443, metadata !1, metadata !696, i32 107, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!696 = metadata !{i32 786443, metadata !1, metadata !697, i32 99, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!697 = metadata !{i32 786443, metadata !1, metadata !486, i32 95, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!698 = metadata !{i32 111, i32 0, metadata !695, null}
!699 = metadata !{i32 112, i32 0, metadata !695, null}
!700 = metadata !{i32 122, i32 0, metadata !696, null}
!701 = metadata !{i32 127, i32 0, metadata !702, null}
!702 = metadata !{i32 786443, metadata !1, metadata !703, i32 126, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!703 = metadata !{i32 786443, metadata !1, metadata !696, i32 124, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!704 = metadata !{i32 96, i32 0, metadata !697, null}
!705 = metadata !{i32 97, i32 0, metadata !697, null}
!706 = metadata !{i32 99, i32 0, metadata !697, null}
!707 = metadata !{i32 100, i32 0, metadata !696, null}
!708 = metadata !{i32 101, i32 0, metadata !696, null}
!709 = metadata !{i32 107, i32 0, metadata !696, null}
!710 = metadata !{i32 3}
!711 = metadata !{i32 109, i32 0, metadata !695, null}
!712 = metadata !{i32 113, i32 0, metadata !695, null}
!713 = metadata !{i32 114, i32 0, metadata !695, null}
!714 = metadata !{i32 115, i32 0, metadata !715, null}
!715 = metadata !{i32 786443, metadata !1, metadata !696, i32 114, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!716 = metadata !{i32 120, i32 0, metadata !715, null}
!717 = metadata !{i32 126, i32 0, metadata !702, null}
!718 = metadata !{i32 123, i32 0, metadata !696, null}
!719 = metadata !{i32 130, i32 0, metadata !703, null}
!720 = metadata !{i32 133, i32 0, metadata !697, null}
!721 = metadata !{i32 134, i32 0, metadata !697, null}
!722 = metadata !{i32 136, i32 0, metadata !486, null}
!723 = metadata !{i32 291, i32 0, metadata !299, null}
!724 = metadata !{i32 293, i32 0, metadata !299, null}
!725 = metadata !{i32 294, i32 0, metadata !726, null}
!726 = metadata !{i32 786443, metadata !1, metadata !299, i32 293, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!727 = metadata !{i32 295, i32 0, metadata !726, null}
!728 = metadata !{i32 297, i32 0, metadata !726, null}
!729 = metadata !{i32 298, i32 0, metadata !726, null}
!730 = metadata !{i32 299, i32 0, metadata !726, null}
!731 = metadata !{i32 300, i32 0, metadata !299, null}
!732 = metadata !{i32 412, i32 0, metadata !304, null}
!733 = metadata !{i32 417, i32 0, metadata !304, null}
!734 = metadata !{i32 488, i32 0, metadata !304, null}
!735 = metadata !{i32 425, i32 0, metadata !736, null}
!736 = metadata !{i32 786443, metadata !1, metadata !304, i32 425, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!737 = metadata !{i32 426, i32 0, metadata !738, null}
!738 = metadata !{i32 786443, metadata !1, metadata !736, i32 425, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!739 = metadata !{i32 429, i32 0, metadata !304, null}
!740 = metadata !{i32 432, i32 0, metadata !304, null}
!741 = metadata !{i32 433, i32 0, metadata !304, null}
!742 = metadata !{i32 437, i32 0, metadata !304, null}
!743 = metadata !{i32 434, i32 0, metadata !744, null}
!744 = metadata !{i32 786443, metadata !1, metadata !304, i32 433, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!745 = metadata !{i32 435, i32 0, metadata !744, null}
!746 = metadata !{i32 436, i32 0, metadata !744, null}
!747 = metadata !{i32 439, i32 0, metadata !304, null}
!748 = metadata !{i32 440, i32 0, metadata !304, null}
!749 = metadata !{i32 441, i32 0, metadata !304, null}
!750 = metadata !{i32 443, i32 0, metadata !304, null}
!751 = metadata !{i32 451, i32 0, metadata !304, null}
!752 = metadata !{i32 406, i32 0, metadata !753, metadata !754}
!753 = metadata !{i32 786443, metadata !1, metadata !477, i32 405, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!754 = metadata !{i32 456, i32 0, metadata !755, null}
!755 = metadata !{i32 786443, metadata !1, metadata !304, i32 451, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!756 = metadata !{i32 354, i32 0, metadata !404, metadata !757}
!757 = metadata !{i32 482, i32 0, metadata !758, null}
!758 = metadata !{i32 786443, metadata !1, metadata !755, i32 470, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!759 = metadata !{i32 364, i32 0, metadata !404, metadata !757}
!760 = metadata !{i32 369, i32 0, metadata !404, metadata !757}
!761 = metadata !{i32 372, i32 0, metadata !762, metadata !757}
!762 = metadata !{i32 786443, metadata !1, metadata !763, i32 371, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!763 = metadata !{i32 786443, metadata !1, metadata !404, i32 371, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!764 = metadata !{i32 375, i32 0, metadata !762, metadata !757}
!765 = metadata !{i32 308, i32 0, metadata !463, metadata !764}
!766 = metadata !{i32 314, i32 0, metadata !474, metadata !764}
!767 = metadata !{i32 253, i32 0, metadata !460, metadata !766}
!768 = metadata !{i32 254, i32 0, metadata !460, metadata !766}
!769 = metadata !{i32 280, i32 0, metadata !770, metadata !771}
!770 = metadata !{i32 786443, metadata !428, metadata !427} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!771 = metadata !{i32 384, i32 0, metadata !772, metadata !757}
!772 = metadata !{i32 786443, metadata !1, metadata !762, i32 379, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!773 = metadata !{i32 281, i32 0, metadata !770, metadata !771}
!774 = metadata !{i32 786689, metadata !477, metadata !"fC", metadata !60, i32 16777614, metadata !69, i32 0, metadata !754} ; [ DW_TAG_arg_variable ] [fC] [line 398]
!775 = metadata !{i32 398, i32 0, metadata !477, metadata !754}
!776 = metadata !{i32 786689, metadata !477, metadata !"Col", metadata !60, i32 33554830, metadata !408, i32 0, metadata !754} ; [ DW_TAG_arg_variable ] [Col] [line 398]
!777 = metadata !{i32 786689, metadata !477, metadata !"g", metadata !60, i32 50332046, metadata !121, i32 0, metadata !754} ; [ DW_TAG_arg_variable ] [g] [line 398]
!778 = metadata !{i32 786689, metadata !477, metadata !"egc", metadata !60, i32 67109262, metadata !407, i32 0, metadata !754} ; [ DW_TAG_arg_variable ] [egc] [line 398]
!779 = metadata !{i32 786688, metadata !477, metadata !"i", metadata !60, i32 403, metadata !69, i32 0, metadata !754} ; [ DW_TAG_auto_variable ] [i] [line 403]
!780 = metadata !{i32 405, i32 0, metadata !753, metadata !754}
!781 = metadata !{i32 457, i32 0, metadata !755, null}
!782 = metadata !{i32 460, i32 0, metadata !755, null}
!783 = metadata !{i32 461, i32 0, metadata !755, null}
!784 = metadata !{i32 462, i32 0, metadata !755, null}
!785 = metadata !{i32 465, i32 0, metadata !755, null}
!786 = metadata !{i32 471, i32 0, metadata !758, null}
!787 = metadata !{i32 475, i32 0, metadata !758, null}
!788 = metadata !{i32 470, i32 0, metadata !755, null}
!789 = metadata !{i32 786689, metadata !477, metadata !"fC", metadata !60, i32 16777614, metadata !69, i32 0, metadata !786} ; [ DW_TAG_arg_variable ] [fC] [line 398]
!790 = metadata !{i32 398, i32 0, metadata !477, metadata !786}
!791 = metadata !{i32 786689, metadata !477, metadata !"Col", metadata !60, i32 33554830, metadata !408, i32 0, metadata !786} ; [ DW_TAG_arg_variable ] [Col] [line 398]
!792 = metadata !{i32 786689, metadata !477, metadata !"g", metadata !60, i32 50332046, metadata !121, i32 0, metadata !786} ; [ DW_TAG_arg_variable ] [g] [line 398]
!793 = metadata !{i32 786689, metadata !477, metadata !"egc", metadata !60, i32 67109262, metadata !407, i32 0, metadata !786} ; [ DW_TAG_arg_variable ] [egc] [line 398]
!794 = metadata !{i32 786688, metadata !477, metadata !"i", metadata !60, i32 403, metadata !69, i32 0, metadata !786} ; [ DW_TAG_auto_variable ] [i] [line 403]
!795 = metadata !{i32 405, i32 0, metadata !753, metadata !786}
!796 = metadata !{i32 406, i32 0, metadata !753, metadata !786}
!797 = metadata !{i32 472, i32 0, metadata !758, null}
!798 = metadata !{i32 477, i32 0, metadata !758, null}
!799 = metadata !{%struct._IO_FILE* null}
!800 = metadata !{i32 786689, metadata !404, metadata !"log", metadata !60, i32 16777570, metadata !63, i32 0, metadata !757} ; [ DW_TAG_arg_variable ] [log] [line 354]
!801 = metadata !{i32 786689, metadata !404, metadata !"nnodes", metadata !60, i32 33554786, metadata !69, i32 0, metadata !757} ; [ DW_TAG_arg_variable ] [nnodes] [line 354]
!802 = metadata !{i32 358, i32 0, metadata !404, metadata !757}
!803 = metadata !{i32 360, i32 0, metadata !404, metadata !757}
!804 = metadata !{i32 786688, metadata !404, metadata !"m", metadata !60, i32 357, metadata !69, i32 0, metadata !757} ; [ DW_TAG_auto_variable ] [m] [line 357]
!805 = metadata !{i32 362, i32 0, metadata !806, metadata !757}
!806 = metadata !{i32 786443, metadata !1, metadata !404, i32 362, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!807 = metadata !{i32 363, i32 0, metadata !806, metadata !757}
!808 = metadata !{metadata !"float", metadata !556}
!809 = metadata !{i32 786688, metadata !404, metadata !"ng", metadata !60, i32 357, metadata !69, i32 0, metadata !757} ; [ DW_TAG_auto_variable ] [ng] [line 357]
!810 = metadata !{i32 366, i32 0, metadata !404, metadata !757}
!811 = metadata !{i32 786688, metadata !404, metadata !"ai", metadata !60, i32 357, metadata !69, i32 0, metadata !757} ; [ DW_TAG_auto_variable ] [ai] [line 357]
!812 = metadata !{i32 367, i32 0, metadata !404, metadata !757}
!813 = metadata !{i32 786688, metadata !404, metadata !"g0", metadata !60, i32 357, metadata !69, i32 0, metadata !757} ; [ DW_TAG_auto_variable ] [g0] [line 357]
!814 = metadata !{i32 786688, metadata !404, metadata !"j", metadata !60, i32 357, metadata !69, i32 0, metadata !757} ; [ DW_TAG_auto_variable ] [j] [line 357]
!815 = metadata !{i32 371, i32 0, metadata !763, metadata !757}
!816 = metadata !{i32 249, i32 0, metadata !460, metadata !766}
!817 = metadata !{i32 250, i32 0, metadata !460, metadata !766}
!818 = metadata !{i32 786688, metadata !404, metadata !"aj", metadata !60, i32 357, metadata !69, i32 0, metadata !757} ; [ DW_TAG_auto_variable ] [aj] [line 357]
!819 = metadata !{i32 248, i32 0, metadata !460, metadata !766}
!820 = metadata !{i32 252, i32 0, metadata !460, metadata !766}
!821 = metadata !{i32 374, i32 0, metadata !762, metadata !757}
!822 = metadata !{i32 320, i32 0, metadata !823, metadata !764}
!823 = metadata !{i32 786443, metadata !1, metadata !824, i32 316, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!824 = metadata !{i32 786443, metadata !1, metadata !474, i32 316, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!825 = metadata !{i32 321, i32 0, metadata !826, metadata !764}
!826 = metadata !{i32 786443, metadata !1, metadata !823, i32 320, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!827 = metadata !{i32 322, i32 0, metadata !828, metadata !764}
!828 = metadata !{i32 786443, metadata !1, metadata !826, i32 322, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!829 = metadata !{i32 316, i32 0, metadata !824, metadata !764}
!830 = metadata !{i32 323, i32 0, metadata !828, metadata !764}
!831 = metadata !{i32 324, i32 0, metadata !823, metadata !764}
!832 = metadata !{i32 325, i32 0, metadata !833, metadata !764}
!833 = metadata !{i32 786443, metadata !1, metadata !823, i32 324, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!834 = metadata !{i32 326, i32 0, metadata !835, metadata !764}
!835 = metadata !{i32 786443, metadata !1, metadata !833, i32 326, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!836 = metadata !{i32 327, i32 0, metadata !835, metadata !764}
!837 = metadata !{i32 329, i32 0, metadata !823, metadata !764}
!838 = metadata !{i32 345, i32 0, metadata !839, metadata !841}
!839 = metadata !{i32 786443, metadata !1, metadata !840, i32 341, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!840 = metadata !{i32 786443, metadata !1, metadata !448, i32 341, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!841 = metadata !{i32 377, i32 0, metadata !762, metadata !757}
!842 = metadata !{i32 346, i32 0, metadata !839, metadata !841}
!843 = metadata !{i32 347, i32 0, metadata !839, metadata !841}
!844 = metadata !{i32 348, i32 0, metadata !839, metadata !841}
!845 = metadata !{i32 350, i32 0, metadata !839, metadata !841}
!846 = metadata !{i32 341, i32 0, metadata !840, metadata !841}
!847 = metadata !{i32 379, i32 0, metadata !762, metadata !757}
!848 = metadata !{i32 380, i32 0, metadata !772, metadata !757}
!849 = metadata !{i32 381, i32 0, metadata !772, metadata !757}
!850 = metadata !{i32 382, i32 0, metadata !772, metadata !757}
!851 = metadata !{i32 786689, metadata !427, metadata !"a", metadata !429, i32 16777493, metadata !432, i32 0, metadata !771} ; [ DW_TAG_arg_variable ] [a] [line 277]
!852 = metadata !{i32 277, i32 0, metadata !427, metadata !771}
!853 = metadata !{i32 786689, metadata !427, metadata !"b", metadata !429, i32 33554709, metadata !132, i32 0, metadata !771} ; [ DW_TAG_arg_variable ] [b] [line 277]
!854 = metadata !{i32 279, i32 0, metadata !770, metadata !771}
!855 = metadata !{i32 386, i32 0, metadata !772, metadata !757}
!856 = metadata !{i32 387, i32 0, metadata !772, metadata !757}
!857 = metadata !{i32 388, i32 0, metadata !762, metadata !757}
!858 = metadata !{i32 392, i32 0, metadata !859, metadata !757}
!859 = metadata !{i32 786443, metadata !1, metadata !762, i32 391, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!860 = metadata !{i32 393, i32 0, metadata !859, metadata !757}
!861 = metadata !{i32 395, i32 0, metadata !404, metadata !757}
!862 = metadata !{i32 484, i32 0, metadata !758, null}
!863 = metadata !{i32 485, i32 0, metadata !758, null}
!864 = metadata !{i32 489, i32 0, metadata !304, null}
!865 = metadata !{i32 499, i32 0, metadata !324, null}
!866 = metadata !{i32 502, i32 0, metadata !324, null}
!867 = metadata !{i32 503, i32 0, metadata !324, null}
!868 = metadata !{i32 504, i32 0, metadata !324, null}
!869 = metadata !{i32 506, i32 0, metadata !324, null}
!870 = metadata !{i32 507, i32 0, metadata !324, null}
!871 = metadata !{i32 508, i32 0, metadata !324, null}
!872 = metadata !{i32 509, i32 0, metadata !324, null}
!873 = metadata !{i32 511, i32 0, metadata !336, null}
!874 = metadata !{i32 514, i32 0, metadata !336, null}
!875 = metadata !{i32 515, i32 0, metadata !336, null}
!876 = metadata !{i32 516, i32 0, metadata !336, null}
!877 = metadata !{i32 518, i32 0, metadata !336, null}
!878 = metadata !{i32 519, i32 0, metadata !336, null}
!879 = metadata !{i32 520, i32 0, metadata !336, null}
!880 = metadata !{i32 521, i32 0, metadata !336, null}
!881 = metadata !{i32 523, i32 0, metadata !346, null}
!882 = metadata !{i32 529, i32 0, metadata !346, null}
!883 = metadata !{i32 530, i32 0, metadata !346, null}
!884 = metadata !{i32 531, i32 0, metadata !346, null}
!885 = metadata !{i32 533, i32 0, metadata !346, null}
!886 = metadata !{i32 544, i32 0, metadata !887, null}
!887 = metadata !{i32 786443, metadata !1, metadata !888, i32 544, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!888 = metadata !{i32 786443, metadata !1, metadata !346, i32 543, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!889 = metadata !{i32 549, i32 0, metadata !890, null}
!890 = metadata !{i32 786443, metadata !1, metadata !887, i32 544, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!891 = metadata !{i32 550, i32 0, metadata !890, null}
!892 = metadata !{i32 551, i32 0, metadata !890, null}
!893 = metadata !{i32 534, i32 0, metadata !894, null}
!894 = metadata !{i32 786443, metadata !1, metadata !895, i32 534, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!895 = metadata !{i32 786443, metadata !1, metadata !346, i32 533, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!896 = metadata !{i32 539, i32 0, metadata !897, null}
!897 = metadata !{i32 786443, metadata !1, metadata !894, i32 534, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!898 = metadata !{i32 540, i32 0, metadata !897, null}
!899 = metadata !{i32 541, i32 0, metadata !897, null}
!900 = metadata !{i32 535, i32 0, metadata !897, null}
!901 = metadata !{i32 536, i32 0, metadata !897, null}
!902 = metadata !{i32 537, i32 0, metadata !897, null}
!903 = metadata !{i32 545, i32 0, metadata !890, null}
!904 = metadata !{i32 546, i32 0, metadata !890, null}
!905 = metadata !{i32 547, i32 0, metadata !890, null}
!906 = metadata !{i32 555, i32 0, metadata !346, null}
!907 = metadata !{i32 557, i32 0, metadata !362, null}
!908 = metadata !{i32 563, i32 0, metadata !362, null}
!909 = metadata !{i32 564, i32 0, metadata !362, null}
!910 = metadata !{i32 565, i32 0, metadata !362, null}
!911 = metadata !{i32 570, i32 0, metadata !362, null}
!912 = metadata !{i32 581, i32 0, metadata !913, null}
!913 = metadata !{i32 786443, metadata !1, metadata !914, i32 581, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!914 = metadata !{i32 786443, metadata !1, metadata !362, i32 580, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!915 = metadata !{i32 586, i32 0, metadata !916, null}
!916 = metadata !{i32 786443, metadata !1, metadata !913, i32 581, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!917 = metadata !{i32 587, i32 0, metadata !916, null}
!918 = metadata !{i32 588, i32 0, metadata !916, null}
!919 = metadata !{i32 571, i32 0, metadata !920, null}
!920 = metadata !{i32 786443, metadata !1, metadata !921, i32 571, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!921 = metadata !{i32 786443, metadata !1, metadata !362, i32 570, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!922 = metadata !{i32 576, i32 0, metadata !923, null}
!923 = metadata !{i32 786443, metadata !1, metadata !920, i32 571, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!924 = metadata !{i32 577, i32 0, metadata !923, null}
!925 = metadata !{i32 578, i32 0, metadata !923, null}
!926 = metadata !{i32 572, i32 0, metadata !923, null}
!927 = metadata !{i32 573, i32 0, metadata !923, null}
!928 = metadata !{i32 574, i32 0, metadata !923, null}
!929 = metadata !{i32 582, i32 0, metadata !916, null}
!930 = metadata !{i32 583, i32 0, metadata !916, null}
!931 = metadata !{i32 584, i32 0, metadata !916, null}
!932 = metadata !{i32 592, i32 0, metadata !362, null}
!933 = metadata !{i32 594, i32 0, metadata !377, null}
!934 = metadata !{i32 600, i32 0, metadata !377, null}
!935 = metadata !{i32 601, i32 0, metadata !377, null}
!936 = metadata !{i32 602, i32 0, metadata !377, null}
!937 = metadata !{i32 603, i32 0, metadata !377, null}
!938 = metadata !{i32 614, i32 0, metadata !939, null}
!939 = metadata !{i32 786443, metadata !1, metadata !940, i32 614, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!940 = metadata !{i32 786443, metadata !1, metadata !377, i32 613, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!941 = metadata !{i32 619, i32 0, metadata !942, null}
!942 = metadata !{i32 786443, metadata !1, metadata !939, i32 614, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!943 = metadata !{i32 620, i32 0, metadata !942, null}
!944 = metadata !{i32 621, i32 0, metadata !942, null}
!945 = metadata !{i32 604, i32 0, metadata !946, null}
!946 = metadata !{i32 786443, metadata !1, metadata !947, i32 604, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!947 = metadata !{i32 786443, metadata !1, metadata !377, i32 603, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!948 = metadata !{i32 609, i32 0, metadata !949, null}
!949 = metadata !{i32 786443, metadata !1, metadata !946, i32 604, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!950 = metadata !{i32 610, i32 0, metadata !949, null}
!951 = metadata !{i32 611, i32 0, metadata !949, null}
!952 = metadata !{i32 605, i32 0, metadata !949, null}
!953 = metadata !{i32 606, i32 0, metadata !949, null}
!954 = metadata !{i32 607, i32 0, metadata !949, null}
!955 = metadata !{i32 615, i32 0, metadata !942, null}
!956 = metadata !{i32 616, i32 0, metadata !942, null}
!957 = metadata !{i32 617, i32 0, metadata !942, null}
!958 = metadata !{i32 624, i32 0, metadata !377, null}
!959 = metadata !{i32 626, i32 0, metadata !391, null}
!960 = metadata !{i32 632, i32 0, metadata !391, null}
!961 = metadata !{i32 633, i32 0, metadata !391, null}
!962 = metadata !{i32 634, i32 0, metadata !391, null}
!963 = metadata !{i32 635, i32 0, metadata !391, null}
!964 = metadata !{i32 646, i32 0, metadata !965, null}
!965 = metadata !{i32 786443, metadata !1, metadata !966, i32 646, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!966 = metadata !{i32 786443, metadata !1, metadata !391, i32 645, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!967 = metadata !{i32 651, i32 0, metadata !968, null}
!968 = metadata !{i32 786443, metadata !1, metadata !965, i32 646, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!969 = metadata !{i32 652, i32 0, metadata !968, null}
!970 = metadata !{i32 653, i32 0, metadata !968, null}
!971 = metadata !{i32 636, i32 0, metadata !972, null}
!972 = metadata !{i32 786443, metadata !1, metadata !973, i32 636, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!973 = metadata !{i32 786443, metadata !1, metadata !391, i32 635, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!974 = metadata !{i32 641, i32 0, metadata !975, null}
!975 = metadata !{i32 786443, metadata !1, metadata !972, i32 636, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!976 = metadata !{i32 642, i32 0, metadata !975, null}
!977 = metadata !{i32 643, i32 0, metadata !975, null}
!978 = metadata !{i32 637, i32 0, metadata !975, null}
!979 = metadata !{i32 638, i32 0, metadata !975, null}
!980 = metadata !{i32 639, i32 0, metadata !975, null}
!981 = metadata !{i32 647, i32 0, metadata !968, null}
!982 = metadata !{i32 648, i32 0, metadata !968, null}
!983 = metadata !{i32 649, i32 0, metadata !968, null}
!984 = metadata !{i32 656, i32 0, metadata !391, null}
!985 = metadata !{i32 60, i32 0, metadata !506, null}
!986 = metadata !{i32 65, i32 0, metadata !987, null}
!987 = metadata !{i32 786443, metadata !1, metadata !506, i32 65, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!988 = metadata !{i32 67, i32 0, metadata !989, null}
!989 = metadata !{i32 786443, metadata !1, metadata !987, i32 65, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!990 = metadata !{i32 70, i32 0, metadata !991, null}
!991 = metadata !{i32 786443, metadata !1, metadata !992, i32 70, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!992 = metadata !{i32 786443, metadata !1, metadata !993, i32 69, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!993 = metadata !{i32 786443, metadata !1, metadata !989, i32 68, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!994 = metadata !{i32 74, i32 0, metadata !995, null}
!995 = metadata !{i32 786443, metadata !1, metadata !992, i32 73, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/mshift.c]
!996 = metadata !{i32 77, i32 0, metadata !995, null}
!997 = metadata !{i32 66, i32 0, metadata !989, null}
!998 = metadata !{i32 68, i32 0, metadata !993, null}
!999 = metadata !{i32 75, i32 0, metadata !995, null}
!1000 = metadata !{i32 69, i32 0, metadata !993, null}
!1001 = metadata !{i32 71, i32 0, metadata !991, null}
!1002 = metadata !{i32 73, i32 0, metadata !992, null}
!1003 = metadata !{i32 78, i32 0, metadata !995, null}
!1004 = metadata !{i32 81, i32 0, metadata !506, null}
