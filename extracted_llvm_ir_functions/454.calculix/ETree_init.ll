; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._ETree = type { i32, i32, %struct._Tree*, %struct._IV*, %struct._IV*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._IV = type { i32, i32, i32, i32* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [51 x i8] c"\0A fatal error in ETree_init1(%p,%d,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [56 x i8] c"\0A fatal error in ETree_initFromGraph(%p,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [62 x i8] c"\0A fatal error in ETree_initFromGraph(%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [81 x i8] c"\0A fatal error in ETree_initFromGraphWithPerms(%p,%p,%p,%p)\0A uold = %d, unew = %d\00", align 1
@.str4 = private unnamed_addr constant [20 x i8] c"\0A oldToNew[%d] = %d\00", align 1
@.str5 = private unnamed_addr constant [20 x i8] c"\0A newToOld[%d] = %d\00", align 1
@.str6 = private unnamed_addr constant [68 x i8] c"\0A fatal error in ETree_initFromDenseMatrix(%p,%d,%d,%d)\0A bad input\0A\00", align 1
@stdout = external global %struct._IO_FILE*
@.str7 = private unnamed_addr constant [47 x i8] c"\0A front = %d, first = %d, last = %d, nent = %d\00", align 1
@.str8 = private unnamed_addr constant [133 x i8] c"\0A factor ops = %.0f, %5.1f per cent of total\0A solve ops  = %.0f, %5.1f per cent of total\0A update ops = %.0f, %5.1f per cent of total\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str10 = private unnamed_addr constant [23 x i8] c"\0A no file to read from\00", align 1
@.str11 = private unnamed_addr constant [46 x i8] c"\0A CPU %8.3f : read in frontETree from file %s\00", align 1
@.str12 = private unnamed_addr constant [49 x i8] c"\0A return value %d from ETree_readFromFile(%p,%s)\00", align 1
@.str13 = private unnamed_addr constant [43 x i8] c"\0A\0A after reading ETree object from file %s\00", align 1
@.str14 = private unnamed_addr constant [30 x i8] c"\0A CPU %8.3f : get permutation\00", align 1
@.str15 = private unnamed_addr constant [31 x i8] c"\0A\0A vertex old-to-new IV object\00", align 1
@.str16 = private unnamed_addr constant [35 x i8] c"\0A\0A before permuting the vertex map\00", align 1
@.str17 = private unnamed_addr constant [28 x i8] c"\0A CPU %8.3f : permute ETree\00", align 1
@.str18 = private unnamed_addr constant [34 x i8] c"\0A\0A after permuting the vertex map\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @ETree_init1(%struct._ETree* %etree, i32 %nfront, i32 %nvtx) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  %cmp1 = icmp slt i32 %nfront, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %nvtx, %nfront
  %or.cond39 = or i1 %or.cond, %cmp3
  br i1 %or.cond39, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), %struct._ETree* %etree, i32 %nfront, i32 %nvtx) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  tail call void @ETree_clearData(%struct._ETree* %etree) #6
  %nfront4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  store i32 %nfront, i32* %nfront4, align 4, !tbaa !3
  %nvtx5 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1
  store i32 %nvtx, i32* %nvtx5, align 4, !tbaa !3
  %call6 = tail call %struct._Tree* @Tree_new() #6
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2
  store %struct._Tree* %call6, %struct._Tree** %tree, align 8, !tbaa !0
  tail call void @Tree_init1(%struct._Tree* %call6, i32 %nfront) #6
  %call8 = tail call %struct._IV* @IV_new() #6
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3
  store %struct._IV* %call8, %struct._IV** %nodwghtsIV, align 8, !tbaa !0
  tail call void @IV_init(%struct._IV* %call8, i32 %nfront, i32* null) #6
  %1 = load %struct._IV** %nodwghtsIV, align 8, !tbaa !0
  tail call void @IV_fill(%struct._IV* %1, i32 0) #6
  %call11 = tail call %struct._IV* @IV_new() #6
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4
  store %struct._IV* %call11, %struct._IV** %bndwghtsIV, align 8, !tbaa !0
  tail call void @IV_init(%struct._IV* %call11, i32 %nfront, i32* null) #6
  %2 = load %struct._IV** %bndwghtsIV, align 8, !tbaa !0
  tail call void @IV_fill(%struct._IV* %2, i32 0) #6
  %call14 = tail call %struct._IV* @IV_new() #6
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5
  store %struct._IV* %call14, %struct._IV** %vtxToFrontIV, align 8, !tbaa !0
  tail call void @IV_init(%struct._IV* %call14, i32 %nvtx, i32* null) #6
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @ETree_clearData(%struct._ETree*) #3

; Function Attrs: optsize
declare %struct._Tree* @Tree_new() #3

; Function Attrs: optsize
declare void @Tree_init1(%struct._Tree*, i32) #3

; Function Attrs: optsize
declare %struct._IV* @IV_new() #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: optsize
declare void @IV_fill(%struct._IV*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @ETree_initFromGraph(%struct._ETree* %etree, %struct._Graph* %g) #0 {
entry:
  %vsize = alloca i32, align 4
  %vadj = alloca i32*, align 8
  %cmp = icmp eq %struct._ETree* %etree, null
  %cmp1 = icmp eq %struct._Graph* %g, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nvtx3 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1
  %0 = load i32* %nvtx3, align 4, !tbaa !3
  %cmp4 = icmp slt i32 %0, 1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), %struct._ETree* %etree, %struct._Graph* %g) #6
  call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  call void @ETree_init1(%struct._ETree* %etree, i32 %0, i32 %0) #8
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3
  %2 = load %struct._IV** %nodwghtsIV, align 8, !tbaa !0
  %call5 = call i32* @IV_entries(%struct._IV* %2) #6
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4
  %3 = load %struct._IV** %bndwghtsIV, align 8, !tbaa !0
  %call6 = call i32* @IV_entries(%struct._IV* %3) #6
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2
  %4 = load %struct._Tree** %tree, align 8, !tbaa !0
  %par7 = getelementptr inbounds %struct._Tree* %4, i64 0, i32 2
  %5 = load i32** %par7, align 8, !tbaa !0
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5
  %6 = load %struct._IV** %vtxToFrontIV, align 8, !tbaa !0
  call void @IV_ramp(%struct._IV* %6, i32 0, i32 1) #6
  %vwghts = getelementptr inbounds %struct._Graph* %g, i64 0, i32 7
  %7 = load i32** %vwghts, align 8, !tbaa !0
  %cmp8 = icmp eq i32* %7, null
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  call void @IVfill(i32 %0, i32* %call5, i32 1) #6
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @IVcopy(i32 %0, i32* %call5, i32* %7) #6
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then9
  %call12 = call i32* @IVinit(i32 %0, i32 -1) #6
  call void @IVramp(i32 %0, i32* %call12, i32 0, i32 1) #6
  %cmp1384 = icmp sgt i32 %0, 0
  br i1 %cmp1384, label %for.body, label %for.end38

for.body:                                         ; preds = %if.end11, %for.inc36
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %for.inc36 ], [ 0, %if.end11 ]
  %8 = trunc i64 %indvars.iv87 to i32
  call void @Graph_adjAndSize(%struct._Graph* %g, i32 %8, i32* %vsize, i32** %vadj) #6
  %9 = load i32* %vsize, align 4, !tbaa !3
  %cmp1582 = icmp sgt i32 %9, 0
  br i1 %cmp1582, label %for.body16.lr.ph, label %for.inc36

for.body16.lr.ph:                                 ; preds = %for.body
  %arrayidx22 = getelementptr inbounds i32* %call5, i64 %indvars.iv87
  %.pre = load i32** %vadj, align 8, !tbaa !0
  br label %for.body16

for.body16:                                       ; preds = %for.body16.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body16.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds i32* %.pre, i64 %indvars.iv
  %u.079 = load i32* %arrayidx, align 4
  %cmp1780 = icmp slt i32 %u.079, %8
  br i1 %cmp1780, label %land.rhs, label %for.inc

land.rhs:                                         ; preds = %for.body16, %if.end31
  %u.081 = phi i32 [ %u.0, %if.end31 ], [ %u.079, %for.body16 ]
  %idxprom18 = sext i32 %u.081 to i64
  %arrayidx19 = getelementptr inbounds i32* %call12, i64 %idxprom18
  %10 = load i32* %arrayidx19, align 4, !tbaa !3
  %cmp20 = icmp eq i32 %10, %8
  br i1 %cmp20, label %for.inc, label %while.body

while.body:                                       ; preds = %land.rhs
  %11 = load i32* %arrayidx22, align 4, !tbaa !3
  %arrayidx24 = getelementptr inbounds i32* %call6, i64 %idxprom18
  %12 = load i32* %arrayidx24, align 4, !tbaa !3
  %add = add nsw i32 %12, %11
  store i32 %add, i32* %arrayidx24, align 4, !tbaa !3
  %13 = load i32* %arrayidx19, align 4, !tbaa !3
  %cmp27 = icmp eq i32 %13, %u.081
  %arrayidx30 = getelementptr inbounds i32* %5, i64 %idxprom18
  br i1 %cmp27, label %if.then28, label %if.end31

if.then28:                                        ; preds = %while.body
  store i32 %8, i32* %arrayidx30, align 4, !tbaa !3
  br label %if.end31

if.end31:                                         ; preds = %while.body, %if.then28
  store i32 %8, i32* %arrayidx19, align 4, !tbaa !3
  %u.0 = load i32* %arrayidx30, align 4
  %cmp17 = icmp slt i32 %u.0, %8
  br i1 %cmp17, label %land.rhs, label %for.inc

for.inc:                                          ; preds = %if.end31, %land.rhs, %for.body16
  %indvars.iv.next = add i64 %indvars.iv, 1
  %14 = load i32* %vsize, align 4, !tbaa !3
  %15 = trunc i64 %indvars.iv.next to i32
  %cmp15 = icmp slt i32 %15, %14
  br i1 %cmp15, label %for.body16, label %for.inc36

for.inc36:                                        ; preds = %for.inc, %for.body
  %indvars.iv.next88 = add i64 %indvars.iv87, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next88 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %0
  br i1 %exitcond, label %for.end38, label %for.body

for.end38:                                        ; preds = %for.inc36, %if.end11
  call void @IVfree(i32* %call12) #6
  %16 = load %struct._Tree** %tree, align 8, !tbaa !0
  call void @Tree_setFchSibRoot(%struct._Tree* %16) #6
  ret void
}

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare void @IV_ramp(%struct._IV*, i32, i32) #3

; Function Attrs: optsize
declare void @IVfill(i32, i32*, i32) #3

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @IVramp(i32, i32*, i32, i32) #3

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: optsize
declare void @Tree_setFchSibRoot(%struct._Tree*) #3

; Function Attrs: nounwind optsize uwtable
define void @ETree_initFromGraphWithPerms(%struct._ETree* %etree, %struct._Graph* %g, i32* %newToOld, i32* %oldToNew) #0 {
entry:
  %vsize = alloca i32, align 4
  %vadj = alloca i32*, align 8
  %cmp = icmp eq %struct._ETree* %etree, null
  %cmp1 = icmp eq %struct._Graph* %g, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nvtx3 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1
  %0 = load i32* %nvtx3, align 4, !tbaa !3
  %cmp4 = icmp slt i32 %0, 1
  %cmp6 = icmp eq i32* %newToOld, null
  %or.cond180 = or i1 %cmp4, %cmp6
  %cmp8 = icmp eq i32* %oldToNew, null
  %or.cond181 = or i1 %or.cond180, %cmp8
  br i1 %or.cond181, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false2
  %cmp9196 = icmp sgt i32 %0, 0
  br i1 %cmp9196, label %for.body, label %for.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), %struct._ETree* %etree, %struct._Graph* %g, i32* %newToOld, i32* %oldToNew) #6
  call void @exit(i32 -1) #7
  unreachable

for.cond:                                         ; preds = %lor.lhs.false13
  %inc = add nsw i32 %unew.0197, 1
  %2 = trunc i64 %indvars.iv.next211 to i32
  %cmp9 = icmp slt i32 %2, %0
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %indvars.iv210 = phi i64 [ %indvars.iv.next211, %for.cond ], [ 0, %for.cond.preheader ]
  %unew.0197 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %newToOld, i64 %indvars.iv210
  %3 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp10 = icmp sgt i32 %3, -1
  %cmp12 = icmp slt i32 %3, %0
  %or.cond182 = and i1 %cmp10, %cmp12
  br i1 %or.cond182, label %lor.lhs.false13, label %if.then17

lor.lhs.false13:                                  ; preds = %for.body
  %idxprom14 = sext i32 %3 to i64
  %arrayidx15 = getelementptr inbounds i32* %oldToNew, i64 %idxprom14
  %4 = load i32* %arrayidx15, align 4, !tbaa !3
  %5 = trunc i64 %indvars.iv210 to i32
  %cmp16 = icmp eq i32 %4, %5
  %indvars.iv.next211 = add i64 %indvars.iv210, 1
  br i1 %cmp16, label %for.cond, label %if.then17

if.then17:                                        ; preds = %for.body, %lor.lhs.false13
  %cmp12.lcssa = phi i1 [ %cmp12, %for.body ], [ true, %lor.lhs.false13 ]
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([81 x i8]* @.str3, i64 0, i64 0), %struct._ETree* %etree, %struct._Graph* %g, i32* %newToOld, i32* %oldToNew, i32 %3, i32 %unew.0197) #6
  %or.cond183 = and i1 %cmp10, %cmp12.lcssa
  br i1 %or.cond183, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.then17
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %idxprom22 = sext i32 %3 to i64
  %arrayidx23 = getelementptr inbounds i32* %oldToNew, i64 %idxprom22
  %8 = load i32* %arrayidx23, align 4, !tbaa !3
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([20 x i8]* @.str4, i64 0, i64 0), i32 %3, i32 %8) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.then17
  %cmp26.not = icmp slt i32 %unew.0197, 0
  br i1 %cmp26.not, label %if.end33, label %if.then29

if.then29:                                        ; preds = %if.end25
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %10 = load i32* %arrayidx, align 4, !tbaa !3
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([20 x i8]* @.str5, i64 0, i64 0), i32 %unew.0197, i32 %10) #6
  br label %if.end33

if.end33:                                         ; preds = %if.end25, %if.then29
  call void @exit(i32 -1) #7
  unreachable

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  call void @ETree_init1(%struct._ETree* %etree, i32 %0, i32 %0) #8
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3
  %11 = load %struct._IV** %nodwghtsIV, align 8, !tbaa !0
  %call35 = call i32* @IV_entries(%struct._IV* %11) #6
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4
  %12 = load %struct._IV** %bndwghtsIV, align 8, !tbaa !0
  %call36 = call i32* @IV_entries(%struct._IV* %12) #6
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2
  %13 = load %struct._Tree** %tree, align 8, !tbaa !0
  %par37 = getelementptr inbounds %struct._Tree* %13, i64 0, i32 2
  %14 = load i32** %par37, align 8, !tbaa !0
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5
  %15 = load %struct._IV** %vtxToFrontIV, align 8, !tbaa !0
  %call38 = call i32* @IV_entries(%struct._IV* %15) #6
  call void @IVcopy(i32 %0, i32* %call38, i32* %oldToNew) #6
  %vwghts = getelementptr inbounds %struct._Graph* %g, i64 0, i32 7
  %16 = load i32** %vwghts, align 8, !tbaa !0
  %cmp39 = icmp eq i32* %16, null
  br i1 %cmp39, label %if.then40, label %for.cond41.preheader

for.cond41.preheader:                             ; preds = %for.end
  br i1 %cmp9196, label %for.body43, label %if.end54

if.then40:                                        ; preds = %for.end
  call void @IVfill(i32 %0, i32* %call35, i32 1) #6
  br label %if.end54

for.body43:                                       ; preds = %for.cond41.preheader, %for.body43
  %indvars.iv201 = phi i64 [ %indvars.iv.next202, %for.body43 ], [ 0, %for.cond41.preheader ]
  %arrayidx46 = getelementptr inbounds i32* %16, i64 %indvars.iv201
  %17 = load i32* %arrayidx46, align 4, !tbaa !3
  %arrayidx48 = getelementptr inbounds i32* %oldToNew, i64 %indvars.iv201
  %18 = load i32* %arrayidx48, align 4, !tbaa !3
  %idxprom49 = sext i32 %18 to i64
  %arrayidx50 = getelementptr inbounds i32* %call35, i64 %idxprom49
  store i32 %17, i32* %arrayidx50, align 4, !tbaa !3
  %indvars.iv.next202 = add i64 %indvars.iv201, 1
  %lftr.wideiv203 = trunc i64 %indvars.iv.next202 to i32
  %exitcond204 = icmp eq i32 %lftr.wideiv203, %0
  br i1 %exitcond204, label %if.end54, label %for.body43

if.end54:                                         ; preds = %for.cond41.preheader, %for.body43, %if.then40
  %call55 = call i32* @IVinit(i32 %0, i32 -1) #6
  call void @IVramp(i32 %0, i32* %call55, i32 0, i32 1) #6
  br i1 %cmp9196, label %for.body58, label %for.end95

for.body58:                                       ; preds = %if.end54, %for.inc93
  %indvars.iv199 = phi i64 [ %indvars.iv.next200, %for.inc93 ], [ 0, %if.end54 ]
  %arrayidx60 = getelementptr inbounds i32* %newToOld, i64 %indvars.iv199
  %19 = load i32* %arrayidx60, align 4, !tbaa !3
  call void @Graph_adjAndSize(%struct._Graph* %g, i32 %19, i32* %vsize, i32** %vadj) #6
  %20 = load i32* %vsize, align 4, !tbaa !3
  %cmp62187 = icmp sgt i32 %20, 0
  br i1 %cmp62187, label %for.body63.lr.ph, label %for.inc93

for.body63.lr.ph:                                 ; preds = %for.body58
  %arrayidx75 = getelementptr inbounds i32* %call35, i64 %indvars.iv199
  %.pre = load i32** %vadj, align 8, !tbaa !0
  br label %for.body63

for.body63:                                       ; preds = %for.body63.lr.ph, %for.inc90
  %21 = phi i32 [ %20, %for.body63.lr.ph ], [ %28, %for.inc90 ]
  %indvars.iv = phi i64 [ 0, %for.body63.lr.ph ], [ %indvars.iv.next, %for.inc90 ]
  %arrayidx65 = getelementptr inbounds i32* %.pre, i64 %indvars.iv
  %22 = load i32* %arrayidx65, align 4, !tbaa !3
  %cmp66 = icmp slt i32 %22, %0
  br i1 %cmp66, label %if.then67, label %for.inc90

if.then67:                                        ; preds = %for.body63
  %idxprom68 = sext i32 %22 to i64
  %arrayidx69 = getelementptr inbounds i32* %oldToNew, i64 %idxprom68
  %unew.1184 = load i32* %arrayidx69, align 4
  %23 = trunc i64 %indvars.iv199 to i32
  %cmp70185 = icmp slt i32 %unew.1184, %23
  br i1 %cmp70185, label %land.rhs, label %for.inc90.loopexit

land.rhs:                                         ; preds = %if.then67, %if.end84
  %unew.1186 = phi i32 [ %unew.1, %if.end84 ], [ %unew.1184, %if.then67 ]
  %idxprom71 = sext i32 %unew.1186 to i64
  %arrayidx72 = getelementptr inbounds i32* %call55, i64 %idxprom71
  %24 = load i32* %arrayidx72, align 4, !tbaa !3
  %cmp73 = icmp eq i32 %24, %23
  br i1 %cmp73, label %for.inc90.loopexit, label %while.body

while.body:                                       ; preds = %land.rhs
  %25 = load i32* %arrayidx75, align 4, !tbaa !3
  %arrayidx77 = getelementptr inbounds i32* %call36, i64 %idxprom71
  %26 = load i32* %arrayidx77, align 4, !tbaa !3
  %add = add nsw i32 %26, %25
  store i32 %add, i32* %arrayidx77, align 4, !tbaa !3
  %27 = load i32* %arrayidx72, align 4, !tbaa !3
  %cmp80 = icmp eq i32 %27, %unew.1186
  %arrayidx83 = getelementptr inbounds i32* %14, i64 %idxprom71
  br i1 %cmp80, label %if.then81, label %if.end84

if.then81:                                        ; preds = %while.body
  store i32 %23, i32* %arrayidx83, align 4, !tbaa !3
  br label %if.end84

if.end84:                                         ; preds = %while.body, %if.then81
  store i32 %23, i32* %arrayidx72, align 4, !tbaa !3
  %unew.1 = load i32* %arrayidx83, align 4
  %cmp70 = icmp slt i32 %unew.1, %23
  br i1 %cmp70, label %land.rhs, label %for.inc90.loopexit

for.inc90.loopexit:                               ; preds = %if.end84, %land.rhs, %if.then67
  %.pre212 = load i32* %vsize, align 4, !tbaa !3
  br label %for.inc90

for.inc90:                                        ; preds = %for.inc90.loopexit, %for.body63
  %28 = phi i32 [ %.pre212, %for.inc90.loopexit ], [ %21, %for.body63 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %29 = trunc i64 %indvars.iv.next to i32
  %cmp62 = icmp slt i32 %29, %28
  br i1 %cmp62, label %for.body63, label %for.inc93

for.inc93:                                        ; preds = %for.inc90, %for.body58
  %indvars.iv.next200 = add i64 %indvars.iv199, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next200 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %0
  br i1 %exitcond, label %for.end95, label %for.body58

for.end95:                                        ; preds = %for.inc93, %if.end54
  call void @IVfree(i32* %call55) #6
  %30 = load %struct._Tree** %tree, align 8, !tbaa !0
  call void @Tree_setFchSibRoot(%struct._Tree* %30) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ETree_initFromDenseMatrix(%struct._ETree* %etree, i32 %n, i32 %option, i32 %param) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  %cmp1 = icmp slt i32 %n, 1
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %option.off = add i32 %option, -1
  %0 = icmp ugt i32 %option.off, 1
  %cmp7 = icmp slt i32 %param, 1
  %or.cond307 = or i1 %0, %cmp7
  br i1 %or.cond307, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([68 x i8]* @.str6, i64 0, i64 0), %struct._ETree* %etree, i32 %n, i32 %option, i32 %param) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  tail call void @ETree_clearData(%struct._ETree* %etree) #6
  switch i32 %option, label %if.end98 [
    i32 1, label %if.then9
    i32 2, label %while.cond.preheader
  ]

while.cond.preheader:                             ; preds = %if.end
  %cmp32346 = icmp sgt i32 %n, 0
  br i1 %cmp32346, label %while.body, label %while.end50

if.then9:                                         ; preds = %if.end
  %add = add i32 %n, -1
  %sub = add i32 %add, %param
  %div = sdiv i32 %sub, %param
  tail call void @ETree_init1(%struct._ETree* %etree, i32 %div, i32 %n) #8
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3
  %2 = load %struct._IV** %nodwghtsIV, align 8, !tbaa !0
  %call10 = tail call i32* @IV_entries(%struct._IV* %2) #6
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4
  %3 = load %struct._IV** %bndwghtsIV, align 8, !tbaa !0
  %call11 = tail call i32* @IV_entries(%struct._IV* %3) #6
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5
  %4 = load %struct._IV** %vtxToFrontIV, align 8, !tbaa !0
  %call12 = tail call i32* @IV_entries(%struct._IV* %4) #6
  %cmp13327 = icmp sgt i32 %n, 0
  br i1 %cmp13327, label %for.body, label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.body, %if.then9
  %cmp16324 = icmp sgt i32 %div, 0
  br i1 %cmp16324, label %for.body17, label %if.end98

for.body:                                         ; preds = %if.then9, %for.body
  %indvars.iv366 = phi i64 [ %indvars.iv.next367, %for.body ], [ 0, %if.then9 ]
  %5 = trunc i64 %indvars.iv366 to i32
  %div14 = sdiv i32 %5, %param
  %arrayidx = getelementptr inbounds i32* %call12, i64 %indvars.iv366
  store i32 %div14, i32* %arrayidx, align 4, !tbaa !3
  %indvars.iv.next367 = add i64 %indvars.iv366, 1
  %lftr.wideiv368 = trunc i64 %indvars.iv.next367 to i32
  %exitcond369 = icmp eq i32 %lftr.wideiv368, %n
  br i1 %exitcond369, label %for.cond15.preheader, label %for.body

for.body17:                                       ; preds = %for.cond15.preheader, %for.body17
  %indvars.iv362 = phi i64 [ %indvars.iv.next363, %for.body17 ], [ 0, %for.cond15.preheader ]
  %bnd.0326 = phi i32 [ %sub23, %for.body17 ], [ %n, %for.cond15.preheader ]
  %cmp18 = icmp sge i32 %bnd.0326, %param
  %cond = select i1 %cmp18, i32 %param, i32 %bnd.0326
  %arrayidx20 = getelementptr inbounds i32* %call10, i64 %indvars.iv362
  store i32 %cond, i32* %arrayidx20, align 4, !tbaa !3
  %sub23 = sub nsw i32 %bnd.0326, %cond
  %arrayidx25 = getelementptr inbounds i32* %call11, i64 %indvars.iv362
  store i32 %sub23, i32* %arrayidx25, align 4, !tbaa !3
  %indvars.iv.next363 = add i64 %indvars.iv362, 1
  %lftr.wideiv364 = trunc i64 %indvars.iv.next363 to i32
  %exitcond365 = icmp eq i32 %lftr.wideiv364, %div
  br i1 %exitcond365, label %if.end98, label %for.body17

while.body:                                       ; preds = %while.cond.preheader, %while.end
  %first.0348 = phi i32 [ %last.0.lcssa, %while.end ], [ 0, %while.cond.preheader ]
  %nfront.0347 = phi i32 [ %inc49, %while.end ], [ 0, %while.cond.preheader ]
  %last.0341 = add nsw i32 %first.0348, 1
  %cmp37342 = icmp slt i32 %last.0341, %n
  br i1 %cmp37342, label %land.rhs.lr.ph, label %while.end

land.rhs.lr.ph:                                   ; preds = %while.body
  %sub33 = sub nsw i32 %n, %first.0348
  %mul = shl i32 %sub33, 1
  %sub34 = add nsw i32 %mul, -1
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body43
  %last.0344 = phi i32 [ %last.0341, %land.rhs.lr.ph ], [ %last.0, %while.body43 ]
  %nent.0343 = phi i32 [ %sub34, %land.rhs.lr.ph ], [ %sub41, %while.body43 ]
  %sub38 = sub nsw i32 %n, %last.0344
  %mul39 = shl nsw i32 %sub38, 1
  %add40 = add i32 %nent.0343, -1
  %sub41 = add i32 %add40, %mul39
  %cmp42 = icmp sgt i32 %sub41, %param
  br i1 %cmp42, label %while.end, label %while.body43

while.body43:                                     ; preds = %land.rhs
  %last.0 = add nsw i32 %last.0344, 1
  %cmp37 = icmp slt i32 %last.0, %n
  br i1 %cmp37, label %land.rhs, label %while.end

while.end:                                        ; preds = %while.body43, %land.rhs, %while.body
  %last.0.lcssa = phi i32 [ %last.0341, %while.body ], [ %last.0344, %land.rhs ], [ %last.0, %while.body43 ]
  %inc49 = add nsw i32 %nfront.0347, 1
  %cmp32 = icmp slt i32 %last.0.lcssa, %n
  br i1 %cmp32, label %while.body, label %while.end50

while.end50:                                      ; preds = %while.end, %while.cond.preheader
  %nfront.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %inc49, %while.end ]
  tail call void @ETree_init1(%struct._ETree* %etree, i32 %nfront.0.lcssa, i32 %n) #8
  %nodwghtsIV51 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3
  %6 = load %struct._IV** %nodwghtsIV51, align 8, !tbaa !0
  %call52 = tail call i32* @IV_entries(%struct._IV* %6) #6
  %bndwghtsIV53 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4
  %7 = load %struct._IV** %bndwghtsIV53, align 8, !tbaa !0
  %call54 = tail call i32* @IV_entries(%struct._IV* %7) #6
  %vtxToFrontIV55 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5
  %8 = load %struct._IV** %vtxToFrontIV55, align 8, !tbaa !0
  %call56 = tail call i32* @IV_entries(%struct._IV* %8) #6
  br i1 %cmp32346, label %while.body60.lr.ph, label %if.end98

while.body60.lr.ph:                               ; preds = %while.end50
  %sub90 = add i32 %n, -1
  br label %while.body60

while.body60:                                     ; preds = %while.body60.lr.ph, %while.end84
  %indvars.iv377 = phi i64 [ 0, %while.body60.lr.ph ], [ %indvars.iv.next378, %while.end84 ]
  %first.1340 = phi i32 [ 0, %while.body60.lr.ph ], [ %last.1.lcssa, %while.end84 ]
  %sub61 = sub nsw i32 %n, %first.1340
  %mul62 = shl i32 %sub61, 1
  %sub63 = add nsw i32 %mul62, -1
  %idxprom64 = sext i32 %first.1340 to i64
  %arrayidx65 = getelementptr inbounds i32* %call56, i64 %idxprom64
  %9 = trunc i64 %indvars.iv377 to i32
  store i32 %9, i32* %arrayidx65, align 4, !tbaa !3
  %last.1329 = add i32 %first.1340, 1
  %cmp68330 = icmp slt i32 %last.1329, %n
  br i1 %cmp68330, label %land.rhs69.lr.ph, label %while.end84

land.rhs69.lr.ph:                                 ; preds = %while.body60
  %10 = sext i32 %last.1329 to i64
  br label %land.rhs69

land.rhs69:                                       ; preds = %land.rhs69.lr.ph, %while.body76
  %indvars.iv374 = phi i64 [ %10, %land.rhs69.lr.ph ], [ %indvars.iv.next375, %while.body76 ]
  %last.1333 = phi i32 [ %last.1329, %land.rhs69.lr.ph ], [ %last.1, %while.body76 ]
  %last.1.in332 = phi i32 [ %first.1340, %land.rhs69.lr.ph ], [ %11, %while.body76 ]
  %nent.1331 = phi i32 [ %sub63, %land.rhs69.lr.ph ], [ %sub73, %while.body76 ]
  %11 = trunc i64 %indvars.iv374 to i32
  %sub70 = sub nsw i32 %n, %11
  %mul71 = shl nsw i32 %sub70, 1
  %add72 = add i32 %nent.1331, -1
  %sub73 = add i32 %add72, %mul71
  %cmp74 = icmp sgt i32 %sub73, %param
  br i1 %cmp74, label %while.end84, label %while.body76

while.body76:                                     ; preds = %land.rhs69
  %arrayidx78 = getelementptr inbounds i32* %call56, i64 %indvars.iv374
  store i32 %9, i32* %arrayidx78, align 4, !tbaa !3
  %last.1 = add nsw i32 %last.1333, 1
  %cmp68 = icmp slt i32 %last.1, %n
  %indvars.iv.next375 = add i64 %indvars.iv374, 1
  br i1 %cmp68, label %land.rhs69, label %while.end84

while.end84:                                      ; preds = %while.body76, %land.rhs69, %while.body60
  %last.1.lcssa = phi i32 [ %last.1329, %while.body60 ], [ %last.1333, %land.rhs69 ], [ %last.1, %while.body76 ]
  %last.1.in.lcssa = phi i32 [ %first.1340, %while.body60 ], [ %last.1.in332, %land.rhs69 ], [ %last.1333, %while.body76 ]
  %nent.1.lcssa = phi i32 [ %sub63, %while.body60 ], [ %nent.1331, %land.rhs69 ], [ %sub73, %while.body76 ]
  %12 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %call85 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([47 x i8]* @.str7, i64 0, i64 0), i32 %9, i32 %first.1340, i32 %last.1.in.lcssa, i32 %nent.1.lcssa) #6
  %sub86 = sub i32 1, %first.1340
  %add87 = add i32 %sub86, %last.1.in.lcssa
  %arrayidx89 = getelementptr inbounds i32* %call52, i64 %indvars.iv377
  store i32 %add87, i32* %arrayidx89, align 4, !tbaa !3
  %sub91 = sub i32 %sub90, %last.1.in.lcssa
  %arrayidx93 = getelementptr inbounds i32* %call54, i64 %indvars.iv377
  store i32 %sub91, i32* %arrayidx93, align 4, !tbaa !3
  %indvars.iv.next378 = add i64 %indvars.iv377, 1
  %cmp59 = icmp slt i32 %last.1.lcssa, %n
  br i1 %cmp59, label %while.body60, label %if.end98

if.end98:                                         ; preds = %while.end50, %while.end84, %for.cond15.preheader, %for.body17, %if.end
  %nfront.1 = phi i32 [ undef, %if.end ], [ %div, %for.body17 ], [ %div, %for.cond15.preheader ], [ %nfront.0.lcssa, %while.end84 ], [ %nfront.0.lcssa, %while.end50 ]
  %bndwghts.0 = phi i32* [ undef, %if.end ], [ %call11, %for.body17 ], [ %call11, %for.cond15.preheader ], [ %call54, %while.end84 ], [ %call54, %while.end50 ]
  %nodwghts.0 = phi i32* [ undef, %if.end ], [ %call10, %for.body17 ], [ %call10, %for.cond15.preheader ], [ %call52, %while.end84 ], [ %call52, %while.end50 ]
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2
  %13 = load %struct._Tree** %tree, align 8, !tbaa !0
  %par99 = getelementptr inbounds %struct._Tree* %13, i64 0, i32 2
  %14 = load i32** %par99, align 8, !tbaa !0
  tail call void @IVramp(i32 %nfront.1, i32* %14, i32 1, i32 1) #6
  %sub100 = add nsw i32 %nfront.1, -1
  %idxprom101 = sext i32 %sub100 to i64
  %arrayidx102 = getelementptr inbounds i32* %14, i64 %idxprom101
  store i32 -1, i32* %arrayidx102, align 4, !tbaa !3
  %15 = load %struct._Tree** %tree, align 8, !tbaa !0
  tail call void @Tree_setFchSibRoot(%struct._Tree* %15) #6
  %add107 = add nsw i32 %nfront.1, 1
  %mul108 = mul nsw i32 %add107, %nfront.1
  %div109 = sdiv i32 %mul108, 2
  %call110 = tail call i32* @IVinit(i32 %div109, i32 -1) #6
  %cmp112314 = icmp sgt i32 %nfront.1, 0
  br i1 %cmp112314, label %for.body113, label %for.end155

for.body113:                                      ; preds = %if.end98, %for.inc153
  %indvars.iv358 = phi i64 [ %indvars.iv.next359, %for.inc153 ], [ 0, %if.end98 ]
  %indvars.iv356 = phi i32 [ %indvars.iv.next357, %for.inc153 ], [ 0, %if.end98 ]
  %indvars.iv354 = phi i32 [ %indvars.iv.next355, %for.inc153 ], [ 1, %if.end98 ]
  %updops.0319 = phi double [ %updops.1.lcssa, %for.inc153 ], [ 0.000000e+00, %if.end98 ]
  %solops.0318 = phi double [ %add127, %for.inc153 ], [ 0.000000e+00, %if.end98 ]
  %facops.0317 = phi double [ %add122, %for.inc153 ], [ 0.000000e+00, %if.end98 ]
  %count.0315 = phi i32 [ %count.1.lcssa, %for.inc153 ], [ 0, %if.end98 ]
  %arrayidx115 = getelementptr inbounds i32* %nodwghts.0, i64 %indvars.iv358
  %16 = load i32* %arrayidx115, align 4, !tbaa !3
  %arrayidx117 = getelementptr inbounds i32* %bndwghts.0, i64 %indvars.iv358
  %17 = load i32* %arrayidx117, align 4, !tbaa !3
  %mul118 = shl i32 %16, 1
  %mul119 = mul i32 %mul118, %16
  %mul120 = mul i32 %mul119, %16
  %div121 = sdiv i32 %mul120, 3
  %conv = sitofp i32 %div121 to double
  %add122 = fadd double %facops.0317, %conv
  %mul125 = mul nsw i32 %mul119, %17
  %conv126 = sitofp i32 %mul125 to double
  %add127 = fadd double %solops.0318, %conv126
  %add128 = fadd double %add122, %add127
  %conv129 = fptosi double %add128 to i32
  %idxprom131 = sext i32 %count.0315 to i64
  %arrayidx132 = getelementptr inbounds i32* %call110, i64 %idxprom131
  store i32 %conv129, i32* %arrayidx132, align 4, !tbaa !3
  %count.1308 = add i32 %count.0315, 1
  %18 = trunc i64 %indvars.iv358 to i32
  %cmp134309 = icmp sgt i32 %18, 0
  br i1 %cmp134309, label %for.body136.lr.ph, label %for.inc153

for.body136.lr.ph:                                ; preds = %for.body113
  %mul141 = shl i32 %17, 1
  %add142 = add nsw i32 %mul141, %16
  %mul140 = mul i32 %mul118, %add142
  %19 = sext i32 %count.1308 to i64
  br label %for.body136

for.body136:                                      ; preds = %for.body136, %for.body136.lr.ph
  %indvars.iv352 = phi i64 [ 0, %for.body136.lr.ph ], [ %indvars.iv.next353, %for.body136 ]
  %indvars.iv = phi i64 [ %19, %for.body136.lr.ph ], [ %indvars.iv.next, %for.body136 ]
  %updops.1311 = phi double [ %updops.0319, %for.body136.lr.ph ], [ %add145, %for.body136 ]
  %arrayidx138 = getelementptr inbounds i32* %nodwghts.0, i64 %indvars.iv352
  %20 = load i32* %arrayidx138, align 4, !tbaa !3
  %mul143 = mul i32 %mul140, %20
  %conv144 = sitofp i32 %mul143 to double
  %add145 = fadd double %updops.1311, %conv144
  %conv146 = fptosi double %add145 to i32
  %arrayidx149 = getelementptr inbounds i32* %call110, i64 %indvars.iv
  store i32 %conv146, i32* %arrayidx149, align 4, !tbaa !3
  %indvars.iv.next353 = add i64 %indvars.iv352, 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next353 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %indvars.iv356
  br i1 %exitcond, label %for.cond133.for.inc153_crit_edge, label %for.body136

for.cond133.for.inc153_crit_edge:                 ; preds = %for.body136
  %21 = add i32 %count.0315, %indvars.iv354
  br label %for.inc153

for.inc153:                                       ; preds = %for.cond133.for.inc153_crit_edge, %for.body113
  %count.1.lcssa = phi i32 [ %21, %for.cond133.for.inc153_crit_edge ], [ %count.1308, %for.body113 ]
  %updops.1.lcssa = phi double [ %add145, %for.cond133.for.inc153_crit_edge ], [ %updops.0319, %for.body113 ]
  %indvars.iv.next359 = add i64 %indvars.iv358, 1
  %indvars.iv.next357 = add i32 %indvars.iv356, 1
  %indvars.iv.next355 = add i32 %indvars.iv354, 1
  %lftr.wideiv360 = trunc i64 %indvars.iv.next359 to i32
  %exitcond361 = icmp eq i32 %lftr.wideiv360, %nfront.1
  br i1 %exitcond361, label %for.end155, label %for.body113

for.end155:                                       ; preds = %for.inc153, %if.end98
  %updops.0.lcssa = phi double [ 0.000000e+00, %if.end98 ], [ %updops.1.lcssa, %for.inc153 ]
  %solops.0.lcssa = phi double [ 0.000000e+00, %if.end98 ], [ %add127, %for.inc153 ]
  %facops.0.lcssa = phi double [ 0.000000e+00, %if.end98 ], [ %add122, %for.inc153 ]
  %count.0.lcssa = phi i32 [ 0, %if.end98 ], [ %count.1.lcssa, %for.inc153 ]
  tail call void @IVqsortUp(i32 %count.0.lcssa, i32* %call110) #6
  tail call void @IVfree(i32* %call110) #6
  %22 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %mul156 = fmul double %facops.0.lcssa, 1.000000e+02
  %add157 = fadd double %facops.0.lcssa, %solops.0.lcssa
  %add158 = fadd double %add157, %updops.0.lcssa
  %div159 = fdiv double %mul156, %add158
  %mul160 = fmul double %solops.0.lcssa, 1.000000e+02
  %div163 = fdiv double %mul160, %add158
  %mul164 = fmul double %updops.0.lcssa, 1.000000e+02
  %div167 = fdiv double %mul164, %add158
  %call168 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([133 x i8]* @.str8, i64 0, i64 0), double %facops.0.lcssa, double %div159, double %solops.0.lcssa, double %div163, double %updops.0.lcssa, double %div167) #6
  ret void
}

; Function Attrs: optsize
declare void @IVqsortUp(i32, i32*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @ETree_initFromFile(%struct._ETree* %frontETree, i8* %inETreeFileName, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  %call = tail call i32 @strcmp(i8* %inETreeFileName, i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0)) #9
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str10, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %msgFile)
  tail call void @exit(i32 0) #7
  unreachable

if.end:                                           ; preds = %entry
  tail call void @ETree_setDefaultFields(%struct._ETree* %frontETree) #6
  %call2 = tail call i32 @ETree_readFromFile(%struct._ETree* %frontETree, i8* %inETreeFileName) #6
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([46 x i8]* @.str11, i64 0, i64 0), double 0.000000e+00, i8* %inETreeFileName) #6
  %cmp4 = icmp eq i32 %call2, 1
  br i1 %cmp4, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([49 x i8]* @.str12, i64 0, i64 0), i32 %call2, %struct._ETree* %frontETree, i8* %inETreeFileName) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end7:                                          ; preds = %if.end
  %cmp8 = icmp sgt i32 %msglvl, 1
  br i1 %cmp8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.end7
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([43 x i8]* @.str13, i64 0, i64 0), i8* %inETreeFileName) #6
  %cmp11 = icmp eq i32 %msglvl, 2
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then9
  %call13 = tail call i32 @ETree_writeStats(%struct._ETree* %frontETree, %struct._IO_FILE* %msgFile) #6
  br label %if.end16

if.else:                                          ; preds = %if.then9
  %call14 = tail call i32 @ETree_writeForHumanEye(%struct._ETree* %frontETree, %struct._IO_FILE* %msgFile) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.else, %if.end7
  %call17 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6
  %call18 = tail call %struct._IV* @ETree_oldToNewVtxPerm(%struct._ETree* %frontETree) #6
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([30 x i8]* @.str14, i64 0, i64 0), double 0.000000e+00) #6
  br i1 %cmp8, label %if.then22, label %if.end55.critedge

if.then22:                                        ; preds = %if.end16
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str15, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %msgFile)
  %cmp24 = icmp eq i32 %msglvl, 2
  br i1 %cmp24, label %if.then36, label %if.else38

if.then36:                                        ; preds = %if.then22
  %call26 = tail call i32 @IV_writeStats(%struct._IV* %call18, %struct._IO_FILE* %msgFile) #6
  %call30100 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str16, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %msgFile)
  %call37 = tail call i32 @ETree_writeStats(%struct._ETree* %frontETree, %struct._IO_FILE* %msgFile) #6
  br label %if.then46

if.else38:                                        ; preds = %if.then22
  %call28 = tail call i32 @IV_writeForHumanEye(%struct._IV* %call18, %struct._IO_FILE* %msgFile) #6
  %call30 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str16, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %msgFile)
  %call39 = tail call i32 @ETree_writeForHumanEye(%struct._ETree* %frontETree, %struct._IO_FILE* %msgFile) #6
  br label %if.then46

if.then46:                                        ; preds = %if.then36, %if.else38
  %call41 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6
  tail call void @ETree_permuteVertices(%struct._ETree* %frontETree, %struct._IV* %call18) #6
  %call44 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([28 x i8]* @.str17, i64 0, i64 0), double 0.000000e+00) #6
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([34 x i8]* @.str18, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %msgFile)
  br i1 %cmp24, label %if.then49, label %if.else51

if.then49:                                        ; preds = %if.then46
  %call50 = tail call i32 @ETree_writeStats(%struct._ETree* %frontETree, %struct._IO_FILE* %msgFile) #6
  br label %if.end53

if.else51:                                        ; preds = %if.then46
  %call52 = tail call i32 @ETree_writeForHumanEye(%struct._ETree* %frontETree, %struct._IO_FILE* %msgFile) #6
  br label %if.end53

if.end53:                                         ; preds = %if.else51, %if.then49
  %call54 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6
  br label %if.end55

if.end55.critedge:                                ; preds = %if.end16
  tail call void @ETree_permuteVertices(%struct._ETree* %frontETree, %struct._IV* %call18) #6
  %call44.c = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([28 x i8]* @.str17, i64 0, i64 0), double 0.000000e+00) #6
  br label %if.end55

if.end55:                                         ; preds = %if.end55.critedge, %if.end53
  ret %struct._IV* %call18
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: optsize
declare void @ETree_setDefaultFields(%struct._ETree*) #3

; Function Attrs: optsize
declare i32 @ETree_readFromFile(%struct._ETree*, i8*) #3

; Function Attrs: optsize
declare i32 @ETree_writeStats(%struct._ETree*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare i32 @ETree_writeForHumanEye(%struct._ETree*, %struct._IO_FILE*) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare %struct._IV* @ETree_oldToNewVtxPerm(%struct._ETree*) #3

; Function Attrs: optsize
declare i32 @IV_writeStats(%struct._IV*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare i32 @IV_writeForHumanEye(%struct._IV*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare void @ETree_permuteVertices(%struct._ETree*, %struct._IV*) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize readonly }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
