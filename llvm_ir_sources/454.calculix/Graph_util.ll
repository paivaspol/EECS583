; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [57 x i8] c"\0A fatal error in Graph_externalDegree(%p,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [59 x i8] c"\0A fatal error in Graph_adjAndSize(%p,%d,%p,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [67 x i8] c"\0A fatal error in Graph_adjAndSize(%p,%d,%p,%p)\0A g->adjIVL == NULL\0A\00", align 1
@.str3 = private unnamed_addr constant [64 x i8] c"\0A fatal error in Graph_adjAndEwghts(%p,%d,%p,%p,%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [72 x i8] c"\0A fatal error in Graph_adjAndEwghts(%p,%d,%p,%p,%p)\0A g->adjIVL == NULL\0A\00", align 1
@.str5 = private unnamed_addr constant [91 x i8] c"\0A fatal error in Graph_adjAndEwghts(%p,%d,%p,%p,%p)\0A g->type = %d and g->ewghtIVL == NULL\0A\00", align 1
@.str6 = private unnamed_addr constant [46 x i8] c"\0A fatal error in Graph_sizeOf(%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [52 x i8] c"\0A fatal error in Graph_componentMap(%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [63 x i8] c"\0A fatal error in Graph_componentStats(%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [57 x i8] c"\0A fatal error in Graph_subGraph(%p,%d,%p,%p)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [84 x i8] c"\0A fatal error in Graph_subGraph(%p,%d,%p,%p)\0A g->type = 0 or 1 currently supported\0A\00", align 1
@.str11 = private unnamed_addr constant [51 x i8] c"\0A fatal error in Graph_isSymmetric(%p)\0A bad input\0A\00", align 1
@stdout = external global %struct._IO_FILE*
@.str12 = private unnamed_addr constant [44 x i8] c"\0A edge (%d,%d) present, edge (%d,%d) is not\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Graph_externalDegree(%struct._Graph* %g, i32 %v) #0 {
entry:
  %vsize = alloca i32, align 4
  %vadj = alloca i32*, align 8
  %cmp = icmp eq %struct._Graph* %g, null
  %cmp1 = icmp slt i32 %v, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nvtx = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1
  %0 = load i32* %nvtx, align 4, !tbaa !0
  %nvbnd = getelementptr inbounds %struct._Graph* %g, i64 0, i32 2
  %1 = load i32* %nvbnd, align 4, !tbaa !0
  %add = add nsw i32 %1, %0
  %cmp3 = icmp sgt i32 %add, %v
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), %struct._Graph* %g, i32 %v) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %vwghts4 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 7
  %3 = load i32** %vwghts4, align 8, !tbaa !3
  call void @Graph_adjAndSize(%struct._Graph* %g, i32 %v, i32* %vsize, i32** %vadj) #6
  %4 = load i32* %vsize, align 4, !tbaa !0
  %cmp526 = icmp sgt i32 %4, 0
  br i1 %cmp526, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %5 = load i32** %vadj, align 8, !tbaa !3
  %cmp8 = icmp eq i32* %3, null
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %weight.027 = phi i32 [ 0, %for.body.lr.ph ], [ %weight.1, %for.inc ]
  %arrayidx = getelementptr inbounds i32* %5, i64 %indvars.iv
  %6 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp6 = icmp eq i32 %6, %v
  br i1 %cmp6, label %for.inc, label %if.then7

if.then7:                                         ; preds = %for.body
  br i1 %cmp8, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then7
  %idxprom9 = sext i32 %6 to i64
  %arrayidx10 = getelementptr inbounds i32* %3, i64 %idxprom9
  %7 = load i32* %arrayidx10, align 4, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %if.then7, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ 1, %if.then7 ]
  %add11 = add nsw i32 %cond, %weight.027
  br label %for.inc

for.inc:                                          ; preds = %for.body, %cond.end
  %weight.1 = phi i32 [ %add11, %cond.end ], [ %weight.027, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %8 = trunc i64 %indvars.iv.next to i32
  %cmp5 = icmp slt i32 %8, %4
  br i1 %cmp5, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end
  %weight.0.lcssa = phi i32 [ 0, %if.end ], [ %weight.1, %for.inc ]
  ret i32 %weight.0.lcssa
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @Graph_adjAndSize(%struct._Graph* %g, i32 %jvtx, i32* %psize, i32** %padj) #0 {
entry:
  %cmp = icmp eq %struct._Graph* %g, null
  %cmp1 = icmp slt i32 %jvtx, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nvtx = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1
  %0 = load i32* %nvtx, align 4, !tbaa !0
  %nvbnd = getelementptr inbounds %struct._Graph* %g, i64 0, i32 2
  %1 = load i32* %nvbnd, align 4, !tbaa !0
  %add = add nsw i32 %1, %0
  %cmp3 = icmp sle i32 %add, %jvtx
  %cmp5 = icmp eq i32* %psize, null
  %or.cond29 = or i1 %cmp3, %cmp5
  %cmp7 = icmp eq i32** %padj, null
  %or.cond30 = or i1 %or.cond29, %cmp7
  br i1 %or.cond30, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([59 x i8]* @.str1, i64 0, i64 0), %struct._Graph* %g, i32 %jvtx, i32* %psize, i32** %padj) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %adjIVL = getelementptr inbounds %struct._Graph* %g, i64 0, i32 6
  %3 = load %struct._IVL** %adjIVL, align 8, !tbaa !3
  %cmp8 = icmp eq %struct._IVL* %3, null
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), %struct._Graph* %g, i32 %jvtx, i32* %psize, i32** %padj) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end11:                                         ; preds = %if.end
  tail call void @IVL_listAndSize(%struct._IVL* %3, i32 %jvtx, i32* %psize, i32** %padj) #4
  ret void
}

; Function Attrs: optsize
declare void @IVL_listAndSize(%struct._IVL*, i32, i32*, i32**) #3

; Function Attrs: nounwind optsize uwtable
define void @Graph_adjAndEweights(%struct._Graph* %g, i32 %jvtx, i32* %psize, i32** %padj, i32** %pewghts) #0 {
entry:
  %cmp = icmp eq %struct._Graph* %g, null
  %cmp1 = icmp slt i32 %jvtx, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nvtx = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1
  %0 = load i32* %nvtx, align 4, !tbaa !0
  %nvbnd = getelementptr inbounds %struct._Graph* %g, i64 0, i32 2
  %1 = load i32* %nvbnd, align 4, !tbaa !0
  %add = add nsw i32 %1, %0
  %cmp3 = icmp sle i32 %add, %jvtx
  %cmp5 = icmp eq i32* %psize, null
  %or.cond58 = or i1 %cmp3, %cmp5
  %cmp7 = icmp eq i32** %padj, null
  %or.cond59 = or i1 %or.cond58, %cmp7
  %cmp9 = icmp eq i32** %pewghts, null
  %or.cond60 = or i1 %or.cond59, %cmp9
  br i1 %or.cond60, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([64 x i8]* @.str3, i64 0, i64 0), %struct._Graph* %g, i32 %jvtx, i32* %psize, i32** %padj, i32** %pewghts) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %adjIVL = getelementptr inbounds %struct._Graph* %g, i64 0, i32 6
  %3 = load %struct._IVL** %adjIVL, align 8, !tbaa !3
  %cmp10 = icmp eq %struct._IVL* %3, null
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([72 x i8]* @.str4, i64 0, i64 0), %struct._Graph* %g, i32 %jvtx, i32* %psize, i32** %padj, i32** %pewghts) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end13:                                         ; preds = %if.end
  %type = getelementptr inbounds %struct._Graph* %g, i64 0, i32 0
  %5 = load i32* %type, align 4, !tbaa !0
  %cmp14 = icmp sgt i32 %5, 1
  br i1 %cmp14, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %if.end13
  %ewghtIVL = getelementptr inbounds %struct._Graph* %g, i64 0, i32 8
  %6 = load %struct._IVL** %ewghtIVL, align 8, !tbaa !3
  %cmp15 = icmp eq %struct._IVL* %6, null
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %land.lhs.true
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([91 x i8]* @.str5, i64 0, i64 0), %struct._Graph* %g, i32 %jvtx, i32* %psize, i32** %padj, i32** %pewghts, i32 %5) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end19:                                         ; preds = %land.lhs.true, %if.end13
  tail call void @IVL_listAndSize(%struct._IVL* %3, i32 %jvtx, i32* %psize, i32** %padj) #4
  %8 = load i32* %type, align 4, !tbaa !0
  %cmp22 = icmp sgt i32 %8, 1
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end19
  %ewghtIVL24 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 8
  %9 = load %struct._IVL** %ewghtIVL24, align 8, !tbaa !3
  tail call void @IVL_listAndSize(%struct._IVL* %9, i32 %jvtx, i32* %psize, i32** %pewghts) #4
  br label %if.end25

if.else:                                          ; preds = %if.end19
  store i32* null, i32** %pewghts, align 8, !tbaa !3
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then23
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @Graph_sizeOf(%struct._Graph* %g) #0 {
entry:
  %cmp = icmp eq %struct._Graph* %g, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str6, i64 0, i64 0), %struct._Graph* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %vwghts = getelementptr inbounds %struct._Graph* %g, i64 0, i32 7
  %1 = load i32** %vwghts, align 8, !tbaa !3
  %cmp1 = icmp eq i32* %1, null
  br i1 %cmp1, label %if.end6, label %if.then2

if.then2:                                         ; preds = %if.end
  %nvtx = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1
  %2 = load i32* %nvtx, align 4, !tbaa !0
  %nvbnd = getelementptr inbounds %struct._Graph* %g, i64 0, i32 2
  %3 = load i32* %nvbnd, align 4, !tbaa !0
  %add = add nsw i32 %3, %2
  %mul = shl i32 %add, 2
  %add4 = add i32 %mul, 48
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then2
  %nbytes.0 = phi i32 [ %add4, %if.then2 ], [ 48, %if.end ]
  %adjIVL = getelementptr inbounds %struct._Graph* %g, i64 0, i32 6
  %4 = load %struct._IVL** %adjIVL, align 8, !tbaa !3
  %cmp7 = icmp eq %struct._IVL* %4, null
  br i1 %cmp7, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.end6
  %call11 = tail call i32 @IVL_sizeOf(%struct._IVL* %4) #4
  %add12 = add nsw i32 %call11, %nbytes.0
  br label %if.end13

if.end13:                                         ; preds = %if.end6, %if.then9
  %nbytes.1 = phi i32 [ %add12, %if.then9 ], [ %nbytes.0, %if.end6 ]
  %ewghtIVL = getelementptr inbounds %struct._Graph* %g, i64 0, i32 8
  %5 = load %struct._IVL** %ewghtIVL, align 8, !tbaa !3
  %cmp14 = icmp eq %struct._IVL* %5, null
  br i1 %cmp14, label %if.end20, label %if.then16

if.then16:                                        ; preds = %if.end13
  %call18 = tail call i32 @IVL_sizeOf(%struct._IVL* %5) #4
  %add19 = add nsw i32 %call18, %nbytes.1
  br label %if.end20

if.end20:                                         ; preds = %if.end13, %if.then16
  %nbytes.2 = phi i32 [ %add19, %if.then16 ], [ %nbytes.1, %if.end13 ]
  ret i32 %nbytes.2
}

; Function Attrs: optsize
declare i32 @IVL_sizeOf(%struct._IVL*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @Graph_componentMap(%struct._Graph* %g) #0 {
entry:
  %usize = alloca i32, align 4
  %uadj = alloca i32*, align 8
  %cmp = icmp eq %struct._Graph* %g, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str7, i64 0, i64 0), %struct._Graph* null) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %nvtx1 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1
  %1 = load i32* %nvtx1, align 4, !tbaa !0
  %cmp2 = icmp slt i32 %1, 1
  br i1 %cmp2, label %return, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %call5 = call %struct._IV* @IV_new() #4
  call void @IV_init(%struct._IV* %call5, i32 %1, i32* null) #4
  %call6 = call i32* @IV_entries(%struct._IV* %call5) #4
  %call7 = call i32* @IVinit(i32 %1, i32 -1) #4
  br label %for.body

for.body:                                         ; preds = %for.inc35, %for.body.lr.ph
  %indvars.iv73 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next74, %for.inc35 ]
  %ncomp.070 = phi i32 [ 0, %for.body.lr.ph ], [ %ncomp.1, %for.inc35 ]
  %arrayidx = getelementptr inbounds i32* %call6, i64 %indvars.iv73
  %2 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp9 = icmp eq i32 %2, -1
  br i1 %cmp9, label %if.then10, label %for.inc35

if.then10:                                        ; preds = %for.body
  store i32 %ncomp.070, i32* %arrayidx, align 4, !tbaa !0
  %3 = trunc i64 %indvars.iv73 to i32
  store i32 %3, i32* %call7, align 4, !tbaa !0
  br label %while.body

while.cond.loopexit:                              ; preds = %for.inc, %while.body
  %last.1.lcssa = phi i32 [ %last.067, %while.body ], [ %last.2, %for.inc ]
  %4 = trunc i64 %indvars.iv71 to i32
  %cmp14 = icmp slt i32 %4, %last.1.lcssa
  br i1 %cmp14, label %while.cond.loopexit.while.body_crit_edge, label %while.end

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  %arrayidx16.phi.trans.insert = getelementptr inbounds i32* %call7, i64 %indvars.iv.next72
  %.pre75 = load i32* %arrayidx16.phi.trans.insert, align 4, !tbaa !0
  br label %while.body

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %if.then10
  %5 = phi i32 [ %.pre75, %while.cond.loopexit.while.body_crit_edge ], [ %3, %if.then10 ]
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %while.cond.loopexit.while.body_crit_edge ], [ 0, %if.then10 ]
  %last.067 = phi i32 [ %last.1.lcssa, %while.cond.loopexit.while.body_crit_edge ], [ 0, %if.then10 ]
  %indvars.iv.next72 = add i64 %indvars.iv71, 1
  call void @Graph_adjAndSize(%struct._Graph* %g, i32 %5, i32* %usize, i32** %uadj) #6
  %6 = load i32* %usize, align 4, !tbaa !0
  %cmp1863 = icmp sgt i32 %6, 0
  br i1 %cmp1863, label %for.body19.lr.ph, label %while.cond.loopexit

for.body19.lr.ph:                                 ; preds = %while.body
  %7 = load i32** %uadj, align 8, !tbaa !3
  br label %for.body19

for.body19:                                       ; preds = %for.body19.lr.ph, %for.inc
  %8 = phi i32 [ %6, %for.body19.lr.ph ], [ %11, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body19.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %last.164 = phi i32 [ %last.067, %for.body19.lr.ph ], [ %last.2, %for.inc ]
  %arrayidx21 = getelementptr inbounds i32* %7, i64 %indvars.iv
  %9 = load i32* %arrayidx21, align 4, !tbaa !0
  %idxprom22 = sext i32 %9 to i64
  %arrayidx23 = getelementptr inbounds i32* %call6, i64 %idxprom22
  %10 = load i32* %arrayidx23, align 4, !tbaa !0
  %cmp24 = icmp eq i32 %10, -1
  br i1 %cmp24, label %if.then25, label %for.inc

if.then25:                                        ; preds = %for.body19
  %inc26 = add nsw i32 %last.164, 1
  %idxprom27 = sext i32 %inc26 to i64
  %arrayidx28 = getelementptr inbounds i32* %call7, i64 %idxprom27
  store i32 %9, i32* %arrayidx28, align 4, !tbaa !0
  store i32 %ncomp.070, i32* %arrayidx23, align 4, !tbaa !0
  %.pre = load i32* %usize, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.body19, %if.then25
  %11 = phi i32 [ %.pre, %if.then25 ], [ %8, %for.body19 ]
  %last.2 = phi i32 [ %inc26, %if.then25 ], [ %last.164, %for.body19 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %12 = trunc i64 %indvars.iv.next to i32
  %cmp18 = icmp slt i32 %12, %11
  br i1 %cmp18, label %for.body19, label %while.cond.loopexit

while.end:                                        ; preds = %while.cond.loopexit
  %inc33 = add nsw i32 %ncomp.070, 1
  br label %for.inc35

for.inc35:                                        ; preds = %for.body, %while.end
  %ncomp.1 = phi i32 [ %inc33, %while.end ], [ %ncomp.070, %for.body ]
  %indvars.iv.next74 = add i64 %indvars.iv73, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next74 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %1
  br i1 %exitcond, label %for.end37, label %for.body

for.end37:                                        ; preds = %for.inc35
  call void @IVfree(i32* %call7) #4
  br label %return

return:                                           ; preds = %if.end, %for.end37
  %retval.0 = phi %struct._IV* [ %call5, %for.end37 ], [ null, %if.end ]
  ret %struct._IV* %retval.0
}

; Function Attrs: optsize
declare %struct._IV* @IV_new() #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @Graph_componentStats(%struct._Graph* %g, i32* %map, i32* %counts, i32* %weights) #0 {
entry:
  %v = alloca i32, align 4
  %cmp = icmp eq %struct._Graph* %g, null
  %cmp1 = icmp eq i32* %map, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %counts, null
  %or.cond50 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32* %weights, null
  %or.cond51 = or i1 %or.cond50, %cmp5
  br i1 %or.cond51, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([63 x i8]* @.str8, i64 0, i64 0), %struct._Graph* %g, i32* %map, i32* %counts, i32* %weights) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %nvtx6 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1
  %1 = load i32* %nvtx6, align 4, !tbaa !0
  %call7 = call i32 @IVmax(i32 %1, i32* %map, i32* %v) #4
  %add = add nsw i32 %call7, 1
  %vwghts8 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 7
  %2 = load i32** %vwghts8, align 8, !tbaa !3
  %cmp9 = icmp eq i32* %2, null
  store i32 0, i32* %v, align 4, !tbaa !0
  %cmp2152 = icmp sgt i32 %1, 0
  br i1 %cmp9, label %for.cond20.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  br i1 %cmp2152, label %for.body, label %if.end31

for.cond20.preheader:                             ; preds = %if.end
  br i1 %cmp2152, label %for.body22.lr.ph, label %for.end30

for.body22.lr.ph:                                 ; preds = %for.cond20.preheader
  %3 = icmp sgt i32 %1, 1
  br label %for.body22

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %4 = phi i32 [ %inc19, %for.body ], [ 0, %for.cond.preheader ]
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32* %map, i64 %idxprom
  %5 = load i32* %arrayidx, align 4, !tbaa !0
  %idxprom12 = sext i32 %5 to i64
  %arrayidx13 = getelementptr inbounds i32* %counts, i64 %idxprom12
  %6 = load i32* %arrayidx13, align 4, !tbaa !0
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %arrayidx13, align 4, !tbaa !0
  %arrayidx15 = getelementptr inbounds i32* %2, i64 %idxprom
  %7 = load i32* %arrayidx15, align 4, !tbaa !0
  %arrayidx17 = getelementptr inbounds i32* %weights, i64 %idxprom12
  %8 = load i32* %arrayidx17, align 4, !tbaa !0
  %add18 = add nsw i32 %8, %7
  store i32 %add18, i32* %arrayidx17, align 4, !tbaa !0
  %inc19 = add nsw i32 %4, 1
  store i32 %inc19, i32* %v, align 4, !tbaa !0
  %cmp11 = icmp slt i32 %inc19, %1
  br i1 %cmp11, label %for.body, label %if.end31

for.body22:                                       ; preds = %for.body22.lr.ph, %for.body22
  %inc2953 = phi i32 [ 0, %for.body22.lr.ph ], [ %inc29, %for.body22 ]
  %idxprom23 = sext i32 %inc2953 to i64
  %arrayidx24 = getelementptr inbounds i32* %map, i64 %idxprom23
  %9 = load i32* %arrayidx24, align 4, !tbaa !0
  %idxprom25 = sext i32 %9 to i64
  %arrayidx26 = getelementptr inbounds i32* %counts, i64 %idxprom25
  %10 = load i32* %arrayidx26, align 4, !tbaa !0
  %inc27 = add nsw i32 %10, 1
  store i32 %inc27, i32* %arrayidx26, align 4, !tbaa !0
  %inc29 = add nsw i32 %inc2953, 1
  %cmp21 = icmp slt i32 %inc29, %1
  br i1 %cmp21, label %for.body22, label %for.cond20.for.end30_crit_edge

for.cond20.for.end30_crit_edge:                   ; preds = %for.body22
  %smax = select i1 %3, i32 %1, i32 1
  store i32 %smax, i32* %v, align 4, !tbaa !0
  br label %for.end30

for.end30:                                        ; preds = %for.cond20.for.end30_crit_edge, %for.cond20.preheader
  call void @IVcopy(i32 %add, i32* %weights, i32* %counts) #4
  br label %if.end31

if.end31:                                         ; preds = %for.cond.preheader, %for.body, %for.end30
  ret void
}

; Function Attrs: optsize
declare i32 @IVmax(i32, i32*, i32*) #3

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._Graph* @Graph_subGraph(%struct._Graph* %g, i32 %icomp, i32* %compids, i32** %pmap) #0 {
entry:
  %vsize = alloca i32, align 4
  %vadj = alloca i32*, align 8
  %cmp = icmp eq %struct._Graph* %g, null
  %cmp1 = icmp slt i32 %icomp, 1
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %compids, null
  %or.cond279 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32** %pmap, null
  %or.cond280 = or i1 %or.cond279, %cmp5
  br i1 %or.cond280, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str9, i64 0, i64 0), %struct._Graph* %g, i32 %icomp, i32* %compids, i32** %pmap) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Graph* %g, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !0
  %2 = icmp ugt i32 %1, 1
  br i1 %2, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([84 x i8]* @.str10, i64 0, i64 0), %struct._Graph* %g, i32 %icomp, i32* %compids, i32** %pmap) #4
  call void @exit(i32 -1) #5
  unreachable

if.end12:                                         ; preds = %if.end
  %nvtx13 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1
  %4 = load i32* %nvtx13, align 4, !tbaa !0
  %nvbnd14 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 2
  %5 = load i32* %nvbnd14, align 4, !tbaa !0
  %add = add nsw i32 %5, %4
  %call15 = call i32* @IVinit(i32 %add, i32 -1) #4
  %call16 = call i32* @IVinit(i32 %add, i32 -1) #4
  %cmp17304 = icmp sgt i32 %4, 0
  br i1 %cmp17304, label %for.body, label %for.end67

for.cond26.preheader:                             ; preds = %for.inc
  %cmp27300 = icmp sgt i32 %count.1, 0
  br i1 %cmp27300, label %for.body28, label %for.end67

for.body:                                         ; preds = %if.end12, %for.inc
  %indvars.iv331 = phi i64 [ %indvars.iv.next332, %for.inc ], [ 0, %if.end12 ]
  %count.0306 = phi i32 [ %count.1, %for.inc ], [ 0, %if.end12 ]
  %arrayidx = getelementptr inbounds i32* %compids, i64 %indvars.iv331
  %6 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp18 = icmp eq i32 %6, %icomp
  br i1 %cmp18, label %if.then19, label %for.inc

if.then19:                                        ; preds = %for.body
  %idxprom20 = sext i32 %count.0306 to i64
  %arrayidx21 = getelementptr inbounds i32* %call15, i64 %idxprom20
  %7 = trunc i64 %indvars.iv331 to i32
  store i32 %7, i32* %arrayidx21, align 4, !tbaa !0
  %inc = add nsw i32 %count.0306, 1
  %arrayidx23 = getelementptr inbounds i32* %call16, i64 %indvars.iv331
  store i32 %count.0306, i32* %arrayidx23, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then19
  %count.1 = phi i32 [ %inc, %if.then19 ], [ %count.0306, %for.body ]
  %indvars.iv.next332 = add i64 %indvars.iv331, 1
  %lftr.wideiv333 = trunc i64 %indvars.iv.next332 to i32
  %exitcond334 = icmp eq i32 %lftr.wideiv333, %4
  br i1 %exitcond334, label %for.cond26.preheader, label %for.body

for.body28:                                       ; preds = %for.cond26.preheader, %for.inc65
  %indvars.iv327 = phi i64 [ %indvars.iv.next328, %for.inc65 ], [ 0, %for.cond26.preheader ]
  %count.2302 = phi i32 [ %count.3.lcssa, %for.inc65 ], [ %count.1, %for.cond26.preheader ]
  %arrayidx30 = getelementptr inbounds i32* %call15, i64 %indvars.iv327
  %8 = load i32* %arrayidx30, align 4, !tbaa !0
  call void @Graph_adjAndSize(%struct._Graph* %g, i32 %8, i32* %vsize, i32** %vadj) #6
  %9 = load i32* %vsize, align 4, !tbaa !0
  %cmp32296 = icmp sgt i32 %9, 0
  br i1 %cmp32296, label %for.body33.lr.ph, label %for.inc65

for.body33.lr.ph:                                 ; preds = %for.body28
  %10 = load i32** %vadj, align 8, !tbaa !3
  br label %for.body33

for.body33:                                       ; preds = %for.body33.lr.ph, %for.inc62
  %indvars.iv325 = phi i64 [ 0, %for.body33.lr.ph ], [ %indvars.iv.next326, %for.inc62 ]
  %count.3298 = phi i32 [ %count.2302, %for.body33.lr.ph ], [ %count.4, %for.inc62 ]
  %arrayidx35 = getelementptr inbounds i32* %10, i64 %indvars.iv325
  %11 = load i32* %arrayidx35, align 4, !tbaa !0
  %cmp36 = icmp slt i32 %11, %4
  %idxprom38 = sext i32 %11 to i64
  br i1 %cmp36, label %if.then37, label %if.else

if.then37:                                        ; preds = %for.body33
  %arrayidx39 = getelementptr inbounds i32* %compids, i64 %idxprom38
  %12 = load i32* %arrayidx39, align 4, !tbaa !0
  %cmp40 = icmp eq i32 %12, 0
  br i1 %cmp40, label %land.lhs.true, label %for.inc62

land.lhs.true:                                    ; preds = %if.then37
  %arrayidx42 = getelementptr inbounds i32* %call16, i64 %idxprom38
  %13 = load i32* %arrayidx42, align 4, !tbaa !0
  %cmp43 = icmp eq i32 %13, -1
  br i1 %cmp43, label %if.then44, label %for.inc62

if.then44:                                        ; preds = %land.lhs.true
  %idxprom45 = sext i32 %count.3298 to i64
  %arrayidx46 = getelementptr inbounds i32* %call15, i64 %idxprom45
  store i32 %11, i32* %arrayidx46, align 4, !tbaa !0
  %inc47 = add nsw i32 %count.3298, 1
  store i32 %count.3298, i32* %arrayidx42, align 4, !tbaa !0
  br label %for.inc62

if.else:                                          ; preds = %for.body33
  %arrayidx52 = getelementptr inbounds i32* %call16, i64 %idxprom38
  %14 = load i32* %arrayidx52, align 4, !tbaa !0
  %cmp53 = icmp eq i32 %14, -1
  br i1 %cmp53, label %if.then54, label %for.inc62

if.then54:                                        ; preds = %if.else
  %idxprom55 = sext i32 %count.3298 to i64
  %arrayidx56 = getelementptr inbounds i32* %call15, i64 %idxprom55
  store i32 %11, i32* %arrayidx56, align 4, !tbaa !0
  %inc57 = add nsw i32 %count.3298, 1
  store i32 %count.3298, i32* %arrayidx52, align 4, !tbaa !0
  br label %for.inc62

for.inc62:                                        ; preds = %if.then44, %land.lhs.true, %if.then37, %if.then54, %if.else
  %count.4 = phi i32 [ %inc47, %if.then44 ], [ %count.3298, %land.lhs.true ], [ %count.3298, %if.then37 ], [ %inc57, %if.then54 ], [ %count.3298, %if.else ]
  %indvars.iv.next326 = add i64 %indvars.iv325, 1
  %15 = load i32* %vsize, align 4, !tbaa !0
  %16 = trunc i64 %indvars.iv.next326 to i32
  %cmp32 = icmp slt i32 %16, %15
  br i1 %cmp32, label %for.body33, label %for.inc65

for.inc65:                                        ; preds = %for.inc62, %for.body28
  %count.3.lcssa = phi i32 [ %count.2302, %for.body28 ], [ %count.4, %for.inc62 ]
  %indvars.iv.next328 = add i64 %indvars.iv327, 1
  %lftr.wideiv329 = trunc i64 %indvars.iv.next328 to i32
  %exitcond330 = icmp eq i32 %lftr.wideiv329, %count.1
  br i1 %exitcond330, label %for.end67, label %for.body28

for.end67:                                        ; preds = %if.end12, %for.inc65, %for.cond26.preheader
  %cmp27300339 = phi i1 [ false, %for.cond26.preheader ], [ %cmp27300, %for.inc65 ], [ false, %if.end12 ]
  %count.0.lcssa338 = phi i32 [ %count.1, %for.cond26.preheader ], [ %count.1, %for.inc65 ], [ 0, %if.end12 ]
  %count.2.lcssa = phi i32 [ %count.1, %for.cond26.preheader ], [ %count.3.lcssa, %for.inc65 ], [ 0, %if.end12 ]
  %sub = sub nsw i32 %count.2.lcssa, %count.0.lcssa338
  %idxprom68 = sext i32 %count.0.lcssa338 to i64
  %arrayidx69 = getelementptr inbounds i32* %call15, i64 %idxprom68
  call void @IVqsortUp(i32 %sub, i32* %arrayidx69) #4
  %cmp71294 = icmp slt i32 %count.0.lcssa338, %count.2.lcssa
  br i1 %cmp71294, label %for.body72, label %for.end79

for.body72:                                       ; preds = %for.end67, %for.body72
  %indvars.iv321 = phi i64 [ %indvars.iv.next322, %for.body72 ], [ %idxprom68, %for.end67 ]
  %arrayidx74 = getelementptr inbounds i32* %call15, i64 %indvars.iv321
  %17 = load i32* %arrayidx74, align 4, !tbaa !0
  %idxprom75 = sext i32 %17 to i64
  %arrayidx76 = getelementptr inbounds i32* %call16, i64 %idxprom75
  %18 = trunc i64 %indvars.iv321 to i32
  store i32 %18, i32* %arrayidx76, align 4, !tbaa !0
  %indvars.iv.next322 = add i64 %indvars.iv321, 1
  %lftr.wideiv323 = trunc i64 %indvars.iv.next322 to i32
  %exitcond324 = icmp eq i32 %lftr.wideiv323, %count.2.lcssa
  br i1 %exitcond324, label %for.end79, label %for.body72

for.end79:                                        ; preds = %for.body72, %for.end67
  %call80 = call %struct._Graph* @Graph_new() #4
  %19 = load i32* %type, align 4, !tbaa !0
  call void @Graph_init1(%struct._Graph* %call80, i32 %19, i32 %count.0.lcssa338, i32 %sub, i32 0, i32 1, i32 3) #4
  br i1 %cmp27300339, label %for.body84.lr.ph, label %for.end101

for.body84.lr.ph:                                 ; preds = %for.end79
  %adjIVL = getelementptr inbounds %struct._Graph* %call80, i64 0, i32 6
  br label %for.body84

for.body84:                                       ; preds = %for.end98, %for.body84.lr.ph
  %indvars.iv317 = phi i64 [ 0, %for.body84.lr.ph ], [ %indvars.iv.next318, %for.end98 ]
  %arrayidx86 = getelementptr inbounds i32* %call15, i64 %indvars.iv317
  %20 = load i32* %arrayidx86, align 4, !tbaa !0
  call void @Graph_adjAndSize(%struct._Graph* %g, i32 %20, i32* %vsize, i32** %vadj) #6
  %21 = load %struct._IVL** %adjIVL, align 8, !tbaa !3
  %22 = load i32* %vsize, align 4, !tbaa !0
  %23 = load i32** %vadj, align 8, !tbaa !3
  %24 = trunc i64 %indvars.iv317 to i32
  call void @IVL_setPointerToList(%struct._IVL* %21, i32 %24, i32 %22, i32* %23) #4
  %25 = load i32* %vsize, align 4, !tbaa !0
  %cmp88289 = icmp sgt i32 %25, 0
  %26 = load i32** %vadj, align 8, !tbaa !3
  br i1 %cmp88289, label %for.body89, label %for.end98

for.body89:                                       ; preds = %for.body84, %for.body89
  %indvars.iv315 = phi i64 [ %indvars.iv.next316, %for.body89 ], [ 0, %for.body84 ]
  %arrayidx91 = getelementptr inbounds i32* %26, i64 %indvars.iv315
  %27 = load i32* %arrayidx91, align 4, !tbaa !0
  %idxprom92 = sext i32 %27 to i64
  %arrayidx93 = getelementptr inbounds i32* %call16, i64 %idxprom92
  %28 = load i32* %arrayidx93, align 4, !tbaa !0
  store i32 %28, i32* %arrayidx91, align 4, !tbaa !0
  %indvars.iv.next316 = add i64 %indvars.iv315, 1
  %29 = load i32* %vsize, align 4, !tbaa !0
  %30 = trunc i64 %indvars.iv.next316 to i32
  %cmp88 = icmp slt i32 %30, %29
  br i1 %cmp88, label %for.body89, label %for.end98

for.end98:                                        ; preds = %for.body84, %for.body89
  %.lcssa = phi i32 [ %29, %for.body89 ], [ %25, %for.body84 ]
  call void @IVqsortUp(i32 %.lcssa, i32* %26) #4
  %indvars.iv.next318 = add i64 %indvars.iv317, 1
  %lftr.wideiv319 = trunc i64 %indvars.iv.next318 to i32
  %exitcond320 = icmp eq i32 %lftr.wideiv319, %count.0.lcssa338
  br i1 %exitcond320, label %for.end101, label %for.body84

for.end101:                                       ; preds = %for.end98, %for.end79
  %cmp102 = icmp sgt i32 %sub, 0
  br i1 %cmp102, label %if.then103, label %if.end130

if.then103:                                       ; preds = %for.end101
  %call104 = call i32* @IVinit(i32 %add, i32 -1) #4
  br i1 %cmp71294, label %for.body107.lr.ph, label %for.end129

for.body107.lr.ph:                                ; preds = %if.then103
  %adjIVL126 = getelementptr inbounds %struct._Graph* %call80, i64 0, i32 6
  br label %for.body107

for.body107:                                      ; preds = %for.end125, %for.body107.lr.ph
  %indvars.iv310 = phi i64 [ %idxprom68, %for.body107.lr.ph ], [ %indvars.iv.next311, %for.end125 ]
  %arrayidx109 = getelementptr inbounds i32* %call15, i64 %indvars.iv310
  %31 = load i32* %arrayidx109, align 4, !tbaa !0
  call void @Graph_adjAndSize(%struct._Graph* %g, i32 %31, i32* %vsize, i32** %vadj) #6
  %32 = load i32* %vsize, align 4, !tbaa !0
  %cmp111284 = icmp sgt i32 %32, 0
  br i1 %cmp111284, label %for.body112.lr.ph, label %for.end125

for.body112.lr.ph:                                ; preds = %for.body107
  %33 = load i32** %vadj, align 8, !tbaa !3
  br label %for.body112

for.body112:                                      ; preds = %for.body112.lr.ph, %for.inc123
  %34 = phi i32 [ %32, %for.body112.lr.ph ], [ %37, %for.inc123 ]
  %indvars.iv308 = phi i64 [ 0, %for.body112.lr.ph ], [ %indvars.iv.next309, %for.inc123 ]
  %count.5286 = phi i32 [ 0, %for.body112.lr.ph ], [ %count.6, %for.inc123 ]
  %arrayidx114 = getelementptr inbounds i32* %33, i64 %indvars.iv308
  %35 = load i32* %arrayidx114, align 4, !tbaa !0
  %idxprom115 = sext i32 %35 to i64
  %arrayidx116 = getelementptr inbounds i32* %call16, i64 %idxprom115
  %36 = load i32* %arrayidx116, align 4, !tbaa !0
  %cmp117 = icmp eq i32 %36, -1
  br i1 %cmp117, label %for.inc123, label %if.then118

if.then118:                                       ; preds = %for.body112
  %inc119 = add nsw i32 %count.5286, 1
  %idxprom120 = sext i32 %count.5286 to i64
  %arrayidx121 = getelementptr inbounds i32* %call104, i64 %idxprom120
  store i32 %36, i32* %arrayidx121, align 4, !tbaa !0
  %.pre = load i32* %vsize, align 4, !tbaa !0
  br label %for.inc123

for.inc123:                                       ; preds = %for.body112, %if.then118
  %37 = phi i32 [ %.pre, %if.then118 ], [ %34, %for.body112 ]
  %count.6 = phi i32 [ %inc119, %if.then118 ], [ %count.5286, %for.body112 ]
  %indvars.iv.next309 = add i64 %indvars.iv308, 1
  %38 = trunc i64 %indvars.iv.next309 to i32
  %cmp111 = icmp slt i32 %38, %37
  br i1 %cmp111, label %for.body112, label %for.end125

for.end125:                                       ; preds = %for.inc123, %for.body107
  %count.5.lcssa = phi i32 [ 0, %for.body107 ], [ %count.6, %for.inc123 ]
  call void @IVqsortUp(i32 %count.5.lcssa, i32* %call104) #4
  %39 = load %struct._IVL** %adjIVL126, align 8, !tbaa !3
  %40 = trunc i64 %indvars.iv310 to i32
  call void @IVL_setList(%struct._IVL* %39, i32 %40, i32 %count.5.lcssa, i32* %call104) #4
  %indvars.iv.next311 = add i64 %indvars.iv310, 1
  %lftr.wideiv312 = trunc i64 %indvars.iv.next311 to i32
  %exitcond313 = icmp eq i32 %lftr.wideiv312, %count.2.lcssa
  br i1 %exitcond313, label %for.end129, label %for.body107

for.end129:                                       ; preds = %for.end125, %if.then103
  call void @IVfree(i32* %call104) #4
  br label %if.end130

if.end130:                                        ; preds = %for.end129, %for.end101
  %type131 = getelementptr inbounds %struct._Graph* %call80, i64 0, i32 0
  %41 = load i32* %type131, align 4, !tbaa !0
  %rem = srem i32 %41, 2
  %cmp132 = icmp eq i32 %rem, 1
  br i1 %cmp132, label %if.then133, label %if.else152

if.then133:                                       ; preds = %if.end130
  %totvwght = getelementptr inbounds %struct._Graph* %call80, i64 0, i32 4
  store i32 0, i32* %totvwght, align 4, !tbaa !0
  %cmp135282 = icmp sgt i32 %count.2.lcssa, 0
  br i1 %cmp135282, label %for.body136.lr.ph, label %if.end155

for.body136.lr.ph:                                ; preds = %if.then133
  %vwghts = getelementptr inbounds %struct._Graph* %g, i64 0, i32 7
  %42 = load i32** %vwghts, align 8, !tbaa !3
  %vwghts147 = getelementptr inbounds %struct._Graph* %call80, i64 0, i32 7
  %43 = load i32** %vwghts147, align 8, !tbaa !3
  br label %for.body136

for.body136:                                      ; preds = %for.body136.for.body136_crit_edge, %for.body136.lr.ph
  %44 = phi i32 [ 0, %for.body136.lr.ph ], [ %.pre335, %for.body136.for.body136_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body136.lr.ph ], [ %indvars.iv.next, %for.body136.for.body136_crit_edge ]
  %arrayidx138 = getelementptr inbounds i32* %call15, i64 %indvars.iv
  %45 = load i32* %arrayidx138, align 4, !tbaa !0
  %idxprom139 = sext i32 %45 to i64
  %arrayidx140 = getelementptr inbounds i32* %42, i64 %idxprom139
  %46 = load i32* %arrayidx140, align 4, !tbaa !0
  %add142 = add nsw i32 %44, %46
  store i32 %add142, i32* %totvwght, align 4, !tbaa !0
  %47 = load i32* %arrayidx140, align 4, !tbaa !0
  %arrayidx148 = getelementptr inbounds i32* %43, i64 %indvars.iv
  store i32 %47, i32* %arrayidx148, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %count.2.lcssa
  br i1 %exitcond, label %if.end155, label %for.body136.for.body136_crit_edge

for.body136.for.body136_crit_edge:                ; preds = %for.body136
  %.pre335 = load i32* %totvwght, align 4, !tbaa !0
  br label %for.body136

if.else152:                                       ; preds = %if.end130
  %nvtx153 = getelementptr inbounds %struct._Graph* %call80, i64 0, i32 1
  %48 = load i32* %nvtx153, align 4, !tbaa !0
  %totvwght154 = getelementptr inbounds %struct._Graph* %call80, i64 0, i32 4
  store i32 %48, i32* %totvwght154, align 4, !tbaa !0
  br label %if.end155

if.end155:                                        ; preds = %if.then133, %for.body136, %if.else152
  call void @IVfree(i32* %call16) #4
  %call156 = call i32* @IVinit(i32 %count.2.lcssa, i32 -1) #4
  store i32* %call156, i32** %pmap, align 8, !tbaa !3
  call void @IVcopy(i32 %count.2.lcssa, i32* %call156, i32* %call15) #4
  call void @IVfree(i32* %call15) #4
  ret %struct._Graph* %call80
}

; Function Attrs: optsize
declare void @IVqsortUp(i32, i32*) #3

; Function Attrs: optsize
declare %struct._Graph* @Graph_new() #3

; Function Attrs: optsize
declare void @Graph_init1(%struct._Graph*, i32, i32, i32, i32, i32, i32) #3

; Function Attrs: optsize
declare void @IVL_setPointerToList(%struct._IVL*, i32, i32, i32*) #3

; Function Attrs: optsize
declare void @IVL_setList(%struct._IVL*, i32, i32, i32*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @Graph_isSymmetric(%struct._Graph* %graph) #0 {
entry:
  %vsize = alloca i32, align 4
  %wsize = alloca i32, align 4
  %vadj = alloca i32*, align 8
  %wadj = alloca i32*, align 8
  %cmp = icmp eq %struct._Graph* %graph, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str11, i64 0, i64 0), %struct._Graph* null) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %nvtx1 = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 1
  %1 = load i32* %nvtx1, align 4, !tbaa !0
  %cmp246 = icmp sgt i32 %1, 0
  br i1 %cmp246, label %for.body, label %for.end23

for.body:                                         ; preds = %if.end, %for.inc21
  %v.048 = phi i32 [ %inc22, %for.inc21 ], [ 0, %if.end ]
  %rc.047 = phi i32 [ %rc.1.lcssa, %for.inc21 ], [ 1, %if.end ]
  call void @Graph_adjAndSize(%struct._Graph* %graph, i32 %v.048, i32* %vsize, i32** %vadj) #6
  %2 = load i32* %vsize, align 4, !tbaa !0
  %cmp442 = icmp sgt i32 %2, 0
  br i1 %cmp442, label %for.body5, label %for.inc21

for.body5:                                        ; preds = %for.body, %for.inc18
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %for.inc18 ], [ 0, %for.body ]
  %rc.143 = phi i32 [ %rc.2, %for.inc18 ], [ %rc.047, %for.body ]
  %3 = load i32** %vadj, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32* %3, i64 %indvars.iv52
  %4 = load i32* %arrayidx, align 4, !tbaa !0
  call void @Graph_adjAndSize(%struct._Graph* %graph, i32 %4, i32* %wsize, i32** %wadj) #6
  %5 = load i32* %wsize, align 4, !tbaa !0
  %cmp740 = icmp sgt i32 %5, 0
  br i1 %cmp740, label %for.body8.lr.ph, label %for.end

for.body8.lr.ph:                                  ; preds = %for.body5
  %6 = load i32** %wadj, align 8, !tbaa !3
  br label %for.body8

for.cond6:                                        ; preds = %for.body8
  %7 = trunc i64 %indvars.iv.next to i32
  %cmp7 = icmp slt i32 %7, %5
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.body8.lr.ph, %for.cond6
  %indvars.iv = phi i64 [ 0, %for.body8.lr.ph ], [ %indvars.iv.next, %for.cond6 ]
  %jj.041 = phi i32 [ 0, %for.body8.lr.ph ], [ %inc, %for.cond6 ]
  %arrayidx10 = getelementptr inbounds i32* %6, i64 %indvars.iv
  %8 = load i32* %arrayidx10, align 4, !tbaa !0
  %cmp11 = icmp eq i32 %8, %v.048
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %jj.041, 1
  br i1 %cmp11, label %for.end, label %for.cond6

for.end:                                          ; preds = %for.cond6, %for.body8, %for.body5
  %jj.0.lcssa = phi i32 [ 0, %for.body5 ], [ %jj.041, %for.body8 ], [ %inc, %for.cond6 ]
  %cmp14 = icmp eq i32 %jj.0.lcssa, %5
  br i1 %cmp14, label %if.then15, label %for.inc18

if.then15:                                        ; preds = %for.end
  %9 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([44 x i8]* @.str12, i64 0, i64 0), i32 %v.048, i32 %4, i32 %4, i32 %v.048) #4
  br label %for.inc18

for.inc18:                                        ; preds = %for.end, %if.then15
  %rc.2 = phi i32 [ 0, %if.then15 ], [ %rc.143, %for.end ]
  %indvars.iv.next53 = add i64 %indvars.iv52, 1
  %10 = load i32* %vsize, align 4, !tbaa !0
  %11 = trunc i64 %indvars.iv.next53 to i32
  %cmp4 = icmp slt i32 %11, %10
  br i1 %cmp4, label %for.body5, label %for.inc21

for.inc21:                                        ; preds = %for.inc18, %for.body
  %rc.1.lcssa = phi i32 [ %rc.047, %for.body ], [ %rc.2, %for.inc18 ]
  %inc22 = add nsw i32 %v.048, 1
  %exitcond = icmp eq i32 %inc22, %1
  br i1 %exitcond, label %for.end23, label %for.body

for.end23:                                        ; preds = %for.inc21, %if.end
  %rc.0.lcssa = phi i32 [ 1, %if.end ], [ %rc.1.lcssa, %for.inc21 ]
  ret i32 %rc.0.lcssa
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
