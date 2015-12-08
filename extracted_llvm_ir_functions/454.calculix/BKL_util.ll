; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._BKL = type { %struct._BPG*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [3 x i32], i32*, float }
%struct._BPG = type { i32, i32, %struct._Graph* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._Drand = type { double, double, double, double, double, double, double, double, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [56 x i8] c"\0A fatal error in BKL_setRandomColors(%p,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"\0A fatal error in BKL_setColorsWeights(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [65 x i8] c"\0A fatal error in BKL_setColorWeights(%p)\0A region %d has color %d\00", align 1
@.str3 = private unnamed_addr constant [49 x i8] c"\0A fatal error in BKL_segColor(%p,%d)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [51 x i8] c"\0A fatal error in BKL_flipDomain(%p,%d)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [57 x i8] c"\0A fatal error in BKL_flipDomain(%p,%d)\0A colors[%d] = %d\0A\00", align 1
@.str6 = private unnamed_addr constant [52 x i8] c"\0A fatal error in BKL_greyCodeDomain(%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [58 x i8] c"\0A fatal error in BKL_setInitPart(%p,%d,%d,%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [69 x i8] c"\0A fatal error in BKL_setInitPart(%p,%d,%d,%p)\0A list[] size exceeded\0A\00", align 1
@.str9 = private unnamed_addr constant [52 x i8] c"\0A fatal error in BKL_domAdjToSep(%p,%d)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @BKL_setRandomColors(%struct._BKL* %bkl, i32 %seed) #0 {
entry:
  %drand = alloca %struct._Drand, align 8
  %0 = bitcast %struct._Drand* %drand to i8*
  call void @llvm.lifetime.start(i64 72, i8* %0) #1
  %cmp = icmp eq %struct._BKL* %bkl, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %bpg = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 0
  %1 = load %struct._BPG** %bpg, align 8, !tbaa !0
  %cmp1 = icmp eq %struct._BPG* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), %struct._BKL* %bkl, i32 %seed) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %ndom2 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 1
  %3 = load i32* %ndom2, align 4, !tbaa !3
  %colors4 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10
  %4 = load i32** %colors4, align 8, !tbaa !0
  call void @Drand_setDefaultFields(%struct._Drand* %drand) #5
  call void @Drand_init(%struct._Drand* %drand) #5
  call void @Drand_setUniform(%struct._Drand* %drand, double 0.000000e+00, double 1.000000e+00) #5
  %cmp5 = icmp sgt i32 %seed, 0
  br i1 %cmp5, label %if.then6, label %for.cond.preheader

if.then6:                                         ; preds = %if.end
  call void @Drand_setSeed(%struct._Drand* %drand, i32 %seed) #5
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then6, %if.end
  %cmp821 = icmp sgt i32 %3, 0
  br i1 %cmp821, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %call9 = call double @Drand_value(%struct._Drand* %drand) #5
  %cmp10 = fcmp olt double %call9, 5.000000e-01
  %cond = select i1 %cmp10, i32 1, i32 2
  %arrayidx = getelementptr inbounds i32* %4, i64 %indvars.iv
  store i32 %cond, i32* %arrayidx, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %3
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  call void @BKL_setColorWeights(%struct._BKL* %bkl) #7
  call void @llvm.lifetime.end(i64 72, i8* %0) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare void @Drand_setDefaultFields(%struct._Drand*) #4

; Function Attrs: optsize
declare void @Drand_init(%struct._Drand*) #4

; Function Attrs: optsize
declare void @Drand_setUniform(%struct._Drand*, double, double) #4

; Function Attrs: optsize
declare void @Drand_setSeed(%struct._Drand*, i32) #4

; Function Attrs: optsize
declare double @Drand_value(%struct._Drand*) #4

; Function Attrs: nounwind optsize uwtable
define void @BKL_setColorWeights(%struct._BKL* %bkl) #0 {
entry:
  %cmp = icmp eq %struct._BKL* %bkl, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), %struct._BKL* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %colors1 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10
  %1 = load i32** %colors1, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 2
  store i32 0, i32* %arrayidx, align 4, !tbaa !3
  %arrayidx3 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 1
  store i32 0, i32* %arrayidx3, align 4, !tbaa !3
  %arrayidx5 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 0
  store i32 0, i32* %arrayidx5, align 4, !tbaa !3
  %ndom = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 1
  %2 = load i32* %ndom, align 4, !tbaa !3
  %cmp680 = icmp sgt i32 %2, 0
  br i1 %cmp680, label %for.body.lr.ph, label %for.cond19.preheader

for.body.lr.ph:                                   ; preds = %if.end
  %regwghts = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 12
  br label %for.body

for.cond19.preheader:                             ; preds = %if.end12, %if.end
  %.lcssa = phi i32 [ %2, %if.end ], [ %11, %if.end12 ]
  %nreg = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 3
  %3 = load i32* %nreg, align 4, !tbaa !3
  %cmp2075 = icmp slt i32 %.lcssa, %3
  br i1 %cmp2075, label %for.body21.lr.ph, label %for.end40

for.body21.lr.ph:                                 ; preds = %for.cond19.preheader
  %regwghts32 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 12
  %4 = sext i32 %.lcssa to i64
  br label %for.body21

for.body:                                         ; preds = %for.body.lr.ph, %if.end12
  %indvars.iv88 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next89, %if.end12 ]
  %ireg.081 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end12 ]
  %arrayidx7 = getelementptr inbounds i32* %1, i64 %indvars.iv88
  %5 = load i32* %arrayidx7, align 4, !tbaa !3
  %.off = add i32 %5, -1
  %6 = icmp ugt i32 %.off, 1
  br i1 %6, label %if.then10, label %if.end12

if.then10:                                        ; preds = %for.body
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([65 x i8]* @.str2, i64 0, i64 0), %struct._BKL* %bkl, i32 %ireg.081, i32 %5) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end12:                                         ; preds = %for.body
  %8 = load i32** %regwghts, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds i32* %8, i64 %indvars.iv88
  %9 = load i32* %arrayidx14, align 4, !tbaa !3
  %idxprom15 = sext i32 %5 to i64
  %arrayidx17 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 %idxprom15
  %10 = load i32* %arrayidx17, align 4, !tbaa !3
  %add = add nsw i32 %10, %9
  store i32 %add, i32* %arrayidx17, align 4, !tbaa !3
  %indvars.iv.next89 = add i64 %indvars.iv88, 1
  %inc = add nsw i32 %ireg.081, 1
  %11 = load i32* %ndom, align 4, !tbaa !3
  %12 = trunc i64 %indvars.iv.next89 to i32
  %cmp6 = icmp slt i32 %12, %11
  br i1 %cmp6, label %for.body, label %for.cond19.preheader

for.body21:                                       ; preds = %for.body21.lr.ph, %if.end28
  %indvars.iv = phi i64 [ %4, %for.body21.lr.ph ], [ %indvars.iv.next, %if.end28 ]
  %ireg.176 = phi i32 [ %.lcssa, %for.body21.lr.ph ], [ %inc39, %if.end28 ]
  %13 = trunc i64 %indvars.iv to i32
  %call22 = tail call i32 @BKL_segColor(%struct._BKL* %bkl, i32 %13) #7
  %14 = icmp ugt i32 %call22, 2
  br i1 %14, label %if.then26, label %if.end28

if.then26:                                        ; preds = %for.body21
  %15 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([65 x i8]* @.str2, i64 0, i64 0), %struct._BKL* %bkl, i32 %ireg.176, i32 %call22) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end28:                                         ; preds = %for.body21
  %arrayidx30 = getelementptr inbounds i32* %1, i64 %indvars.iv
  store i32 %call22, i32* %arrayidx30, align 4, !tbaa !3
  %16 = load i32** %regwghts32, align 8, !tbaa !0
  %arrayidx33 = getelementptr inbounds i32* %16, i64 %indvars.iv
  %17 = load i32* %arrayidx33, align 4, !tbaa !3
  %idxprom34 = sext i32 %call22 to i64
  %arrayidx36 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 %idxprom34
  %18 = load i32* %arrayidx36, align 4, !tbaa !3
  %add37 = add nsw i32 %18, %17
  store i32 %add37, i32* %arrayidx36, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc39 = add nsw i32 %ireg.176, 1
  %19 = load i32* %nreg, align 4, !tbaa !3
  %20 = trunc i64 %indvars.iv.next to i32
  %cmp20 = icmp slt i32 %20, %19
  br i1 %cmp20, label %for.body21, label %for.end40

for.end40:                                        ; preds = %if.end28, %for.cond19.preheader
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @BKL_segColor(%struct._BKL* %bkl, i32 %iseg) #0 {
entry:
  %size = alloca i32, align 4
  %adj = alloca i32*, align 8
  %cmp = icmp eq %struct._BKL* %bkl, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %ndom = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 1
  %0 = load i32* %ndom, align 4, !tbaa !3
  %cmp1 = icmp sgt i32 %0, %iseg
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %nreg = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 3
  %1 = load i32* %nreg, align 4, !tbaa !3
  %cmp3 = icmp sgt i32 %1, %iseg
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([49 x i8]* @.str3, i64 0, i64 0), %struct._BKL* %bkl, i32 %iseg) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %colors4 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10
  %3 = load i32** %colors4, align 8, !tbaa !0
  %bpg = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 0
  %4 = load %struct._BPG** %bpg, align 8, !tbaa !0
  %graph = getelementptr inbounds %struct._BPG* %4, i64 0, i32 2
  %5 = load %struct._Graph** %graph, align 8, !tbaa !0
  call void @Graph_adjAndSize(%struct._Graph* %5, i32 %iseg, i32* %size, i32** %adj) #5
  %6 = load i32* %size, align 4, !tbaa !3
  %cmp5 = icmp sgt i32 %6, 0
  br i1 %cmp5, label %if.then6, label %if.end16

if.then6:                                         ; preds = %if.end
  %7 = load i32** %adj, align 8, !tbaa !0
  %8 = load i32* %7, align 4, !tbaa !3
  %idxprom = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds i32* %3, i64 %idxprom
  %9 = load i32* %arrayidx7, align 4, !tbaa !3
  %cmp829 = icmp sgt i32 %6, 1
  br i1 %cmp829, label %for.body, label %if.end16

for.cond:                                         ; preds = %for.body
  %10 = trunc i64 %indvars.iv.next to i32
  %cmp8 = icmp slt i32 %10, %6
  br i1 %cmp8, label %for.body, label %if.end16

for.body:                                         ; preds = %if.then6, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 1, %if.then6 ]
  %arrayidx10 = getelementptr inbounds i32* %7, i64 %indvars.iv
  %11 = load i32* %arrayidx10, align 4, !tbaa !3
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds i32* %3, i64 %idxprom11
  %12 = load i32* %arrayidx12, align 4, !tbaa !3
  %cmp13 = icmp eq i32 %9, %12
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp13, label %for.cond, label %if.end16

if.end16:                                         ; preds = %if.then6, %for.body, %for.cond, %if.end
  %color.0 = phi i32 [ 0, %if.end ], [ %9, %if.then6 ], [ 0, %for.body ], [ %9, %for.cond ]
  ret i32 %color.0
}

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #4

; Function Attrs: nounwind optsize uwtable
define void @BKL_flipDomain(%struct._BKL* %bkl, i32 %idom) #0 {
entry:
  %size = alloca i32, align 4
  %adj = alloca i32*, align 8
  %cmp = icmp eq %struct._BKL* %bkl, null
  %cmp1 = icmp slt i32 %idom, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %ndom = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 1
  %0 = load i32* %ndom, align 4, !tbaa !3
  %cmp3 = icmp sgt i32 %0, %idom
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), %struct._BKL* %bkl, i32 %idom) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %colors4 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10
  %2 = load i32** %colors4, align 8, !tbaa !0
  %regwghts5 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 12
  %3 = load i32** %regwghts5, align 8, !tbaa !0
  %idxprom = sext i32 %idom to i64
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom
  %4 = load i32* %arrayidx, align 4, !tbaa !3
  switch i32 %4, label %sw.default [
    i32 1, label %sw.epilog
    i32 2, label %sw.bb6
  ]

sw.bb6:                                           ; preds = %if.end
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([57 x i8]* @.str5, i64 0, i64 0), %struct._BKL* %bkl, i32 %idom, i32 %idom, i32 %4) #5
  call void @exit(i32 -1) #6
  unreachable

sw.epilog:                                        ; preds = %if.end, %sw.bb6
  %newcolor.0 = phi i32 [ 1, %sw.bb6 ], [ 2, %if.end ]
  store i32 %newcolor.0, i32* %arrayidx, align 4, !tbaa !3
  %arrayidx13 = getelementptr inbounds i32* %3, i64 %idxprom
  %6 = load i32* %arrayidx13, align 4, !tbaa !3
  %idxprom14 = sext i32 %4 to i64
  %arrayidx15 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 %idxprom14
  %7 = load i32* %arrayidx15, align 4, !tbaa !3
  %sub = sub nsw i32 %7, %6
  store i32 %sub, i32* %arrayidx15, align 4, !tbaa !3
  %idxprom1678 = zext i32 %newcolor.0 to i64
  %arrayidx18 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 %idxprom1678
  %8 = load i32* %arrayidx18, align 4, !tbaa !3
  %add = add nsw i32 %8, %6
  store i32 %add, i32* %arrayidx18, align 4, !tbaa !3
  %bpg = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 0
  %9 = load %struct._BPG** %bpg, align 8, !tbaa !0
  %graph = getelementptr inbounds %struct._BPG* %9, i64 0, i32 2
  %10 = load %struct._Graph** %graph, align 8, !tbaa !0
  call void @Graph_adjAndSize(%struct._Graph* %10, i32 %idom, i32* %size, i32** %adj) #5
  %11 = load i32* %size, align 4, !tbaa !3
  %cmp1979 = icmp sgt i32 %11, 0
  br i1 %cmp1979, label %for.body, label %for.end

for.body:                                         ; preds = %sw.epilog, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %sw.epilog ]
  %12 = load i32** %adj, align 8, !tbaa !0
  %arrayidx21 = getelementptr inbounds i32* %12, i64 %indvars.iv
  %13 = load i32* %arrayidx21, align 4, !tbaa !3
  %idxprom22 = sext i32 %13 to i64
  %arrayidx23 = getelementptr inbounds i32* %3, i64 %idxprom22
  %14 = load i32* %arrayidx23, align 4, !tbaa !3
  %arrayidx25 = getelementptr inbounds i32* %2, i64 %idxprom22
  %15 = load i32* %arrayidx25, align 4, !tbaa !3
  %call26 = call i32 @BKL_segColor(%struct._BKL* %bkl, i32 %13) #7
  %cmp27 = icmp eq i32 %15, %call26
  br i1 %cmp27, label %for.inc, label %if.then28

if.then28:                                        ; preds = %for.body
  %idxprom29 = sext i32 %15 to i64
  %arrayidx31 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 %idxprom29
  %16 = load i32* %arrayidx31, align 4, !tbaa !3
  %sub32 = sub nsw i32 %16, %14
  store i32 %sub32, i32* %arrayidx31, align 4, !tbaa !3
  %idxprom33 = sext i32 %call26 to i64
  %arrayidx35 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 %idxprom33
  %17 = load i32* %arrayidx35, align 4, !tbaa !3
  %add36 = add nsw i32 %17, %14
  store i32 %add36, i32* %arrayidx35, align 4, !tbaa !3
  store i32 %call26, i32* %arrayidx25, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then28
  %indvars.iv.next = add i64 %indvars.iv, 1
  %18 = load i32* %size, align 4, !tbaa !3
  %19 = trunc i64 %indvars.iv.next to i32
  %cmp19 = icmp slt i32 %19, %18
  br i1 %cmp19, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %sw.epilog
  %nflips = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 7
  %20 = load i32* %nflips, align 4, !tbaa !3
  %inc40 = add nsw i32 %20, 1
  store i32 %inc40, i32* %nflips, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @BKL_greyCodeDomain(%struct._BKL* %bkl, i32 %count) #0 {
entry:
  %cmp = icmp eq %struct._BKL* %bkl, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %rem7 = srem i32 %count, 2
  %cmp18 = icmp eq i32 %rem7, 1
  br i1 %cmp18, label %if.then2, label %for.inc

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str6, i64 0, i64 0), %struct._BKL* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.then2:                                         ; preds = %for.inc, %for.cond.preheader
  %idom.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc ]
  ret i32 %idom.0.lcssa

for.inc:                                          ; preds = %for.cond.preheader, %for.inc
  %idom.010 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %chk.09 = phi i32 [ %mul, %for.inc ], [ 2, %for.cond.preheader ]
  %inc = add nsw i32 %idom.010, 1
  %mul = shl nsw i32 %chk.09, 1
  %rem = srem i32 %count, %mul
  %cmp1 = icmp eq i32 %rem, %chk.09
  br i1 %cmp1, label %if.then2, label %for.inc
}

; Function Attrs: nounwind optsize uwtable
define float @BKL_setInitPart(%struct._BKL* %bkl, i32 %flag, i32 %seed, i32* %domcolors) #0 {
entry:
  %dsize = alloca i32, align 4
  %ssize = alloca i32, align 4
  %dadj = alloca i32*, align 8
  %sadj = alloca i32*, align 8
  %drand = alloca %struct._Drand, align 8
  %cmp = icmp eq %struct._BKL* %bkl, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %flag.off = add i32 %flag, -1
  %0 = icmp ugt i32 %flag.off, 5
  br i1 %0, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %cmp5 = icmp eq i32 %flag, 6
  %cmp6 = icmp eq i32* %domcolors, null
  %or.cond = and i1 %cmp5, %cmp6
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([58 x i8]* @.str7, i64 0, i64 0), %struct._BKL* %bkl, i32 %flag, i32 %seed, i32* %domcolors) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false4
  %bpg7 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 0
  %2 = load %struct._BPG** %bpg7, align 8, !tbaa !0
  %ndom8 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 1
  %3 = load i32* %ndom8, align 4, !tbaa !3
  %colors9 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10
  %4 = load i32** %colors9, align 8, !tbaa !0
  switch i32 %3, label %if.else17 [
    i32 1, label %if.then12
    i32 2, label %if.then14
  ]

if.then12:                                        ; preds = %if.end
  store i32 1, i32* %4, align 4, !tbaa !3
  call void @BKL_setColorWeights(%struct._BKL* %bkl) #7
  br label %if.end95

if.then14:                                        ; preds = %if.end
  store i32 1, i32* %4, align 4, !tbaa !3
  %arrayidx16 = getelementptr inbounds i32* %4, i64 1
  store i32 2, i32* %arrayidx16, align 4, !tbaa !3
  call void @BKL_setColorWeights(%struct._BKL* %bkl) #7
  br label %if.end95

if.else17:                                        ; preds = %if.end
  switch i32 %flag, label %if.end95 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb25
    i32 3, label %sw.bb25
    i32 4, label %sw.bb37
    i32 5, label %sw.bb37
    i32 6, label %sw.bb93
  ]

sw.bb:                                            ; preds = %if.else17
  %5 = bitcast %struct._Drand* %drand to i8*
  call void @llvm.lifetime.start(i64 72, i8* %5) #1
  call void @Drand_setDefaultFields(%struct._Drand* %drand) #5
  call void @Drand_init(%struct._Drand* %drand) #5
  call void @Drand_setUniform(%struct._Drand* %drand, double 0.000000e+00, double 1.000000e+00) #5
  %cmp18 = icmp sgt i32 %seed, 0
  br i1 %cmp18, label %if.then19, label %for.cond.preheader

if.then19:                                        ; preds = %sw.bb
  call void @Drand_setSeed(%struct._Drand* %drand, i32 %seed) #5
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then19, %sw.bb
  %cmp21173 = icmp sgt i32 %3, 0
  br i1 %cmp21173, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %call22 = call double @Drand_value(%struct._Drand* %drand) #5
  %cmp23 = fcmp olt double %call22, 5.000000e-01
  %cond = select i1 %cmp23, i32 1, i32 2
  %arrayidx24 = getelementptr inbounds i32* %4, i64 %indvars.iv
  store i32 %cond, i32* %arrayidx24, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %3
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  call void @BKL_setColorWeights(%struct._BKL* %bkl) #7
  call void @llvm.lifetime.end(i64 72, i8* %5) #1
  br label %if.end95

sw.bb25:                                          ; preds = %if.else17, %if.else17
  call void @IVfill(i32 %3, i32* %4, i32 2) #5
  %cmp26 = icmp eq i32 %flag, 2
  br i1 %cmp26, label %if.then27, label %if.else30

if.then27:                                        ; preds = %sw.bb25
  %rem = srem i32 %seed, %3
  %idxprom28 = sext i32 %rem to i64
  %arrayidx29 = getelementptr inbounds i32* %4, i64 %idxprom28
  store i32 1, i32* %arrayidx29, align 4, !tbaa !3
  br label %if.end36

if.else30:                                        ; preds = %sw.bb25
  %6 = load %struct._BPG** %bpg7, align 8, !tbaa !0
  %rem32 = srem i32 %seed, %3
  %call33 = call i32 @BPG_pseudoperipheralnode(%struct._BPG* %6, i32 %rem32) #5
  %idxprom34 = sext i32 %call33 to i64
  %arrayidx35 = getelementptr inbounds i32* %4, i64 %idxprom34
  store i32 1, i32* %arrayidx35, align 4, !tbaa !3
  br label %if.end36

if.end36:                                         ; preds = %if.else30, %if.then27
  call void @BKL_setColorWeights(%struct._BKL* %bkl) #7
  br label %if.end95

sw.bb37:                                          ; preds = %if.else17, %if.else17
  call void @IVfill(i32 %3, i32* %4, i32 2) #5
  call void @BKL_setColorWeights(%struct._BKL* %bkl) #7
  %call38 = call i32* @IVinit(i32 %3, i32 -1) #5
  %call39 = call i32* @IVinit(i32 %3, i32 -1) #5
  %cmp40 = icmp eq i32 %flag, 4
  br i1 %cmp40, label %if.then41, label %if.else44

if.then41:                                        ; preds = %sw.bb37
  %rem42 = srem i32 %seed, %3
  br label %if.end49

if.else44:                                        ; preds = %sw.bb37
  %7 = load %struct._BPG** %bpg7, align 8, !tbaa !0
  %rem46 = srem i32 %seed, %3
  %call47 = call i32 @BPG_pseudoperipheralnode(%struct._BPG* %7, i32 %rem46) #5
  br label %if.end49

if.end49:                                         ; preds = %if.else44, %if.then41
  %storemerge = phi i32 [ %call47, %if.else44 ], [ %rem42, %if.then41 ]
  store i32 %storemerge, i32* %call38, align 4, !tbaa !3
  %idxprom51 = sext i32 %storemerge to i64
  %arrayidx52 = getelementptr inbounds i32* %call39, i64 %idxprom51
  store i32 1, i32* %arrayidx52, align 4, !tbaa !3
  %arrayidx57 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 1
  %arrayidx58 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 2
  %graph = getelementptr inbounds %struct._BPG* %2, i64 0, i32 2
  %sub = add nsw i32 %3, -1
  br label %while.body

while.cond.loopexit:                              ; preds = %for.inc90, %if.end61
  %last.1.lcssa = phi i32 [ %last.0185, %if.end61 ], [ %last.2.lcssa, %for.inc90 ]
  %8 = trunc i64 %indvars.iv190 to i32
  %cmp53 = icmp slt i32 %8, %last.1.lcssa
  br i1 %cmp53, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.loopexit, %if.end49
  %indvars.iv190 = phi i64 [ %indvars.iv.next191, %while.cond.loopexit ], [ 0, %if.end49 ]
  %last.0185 = phi i32 [ %last.1.lcssa, %while.cond.loopexit ], [ 0, %if.end49 ]
  %indvars.iv.next191 = add i64 %indvars.iv190, 1
  %arrayidx56 = getelementptr inbounds i32* %call38, i64 %indvars.iv190
  %9 = load i32* %arrayidx56, align 4, !tbaa !3
  call void @BKL_flipDomain(%struct._BKL* %bkl, i32 %9) #7
  %10 = load i32* %arrayidx57, align 4, !tbaa !3
  %11 = load i32* %arrayidx58, align 4, !tbaa !3
  %cmp59 = icmp slt i32 %10, %11
  br i1 %cmp59, label %if.end61, label %while.end

if.end61:                                         ; preds = %while.body
  %12 = load %struct._Graph** %graph, align 8, !tbaa !0
  call void @Graph_adjAndSize(%struct._Graph* %12, i32 %9, i32* %dsize, i32** %dadj) #5
  %13 = load i32* %dsize, align 4, !tbaa !3
  %cmp63180 = icmp sgt i32 %13, 0
  br i1 %cmp63180, label %for.body64, label %while.cond.loopexit

for.body64:                                       ; preds = %if.end61, %for.inc90
  %indvars.iv188 = phi i64 [ %indvars.iv.next189, %for.inc90 ], [ 0, %if.end61 ]
  %last.1181 = phi i32 [ %last.2.lcssa, %for.inc90 ], [ %last.0185, %if.end61 ]
  %14 = load i32** %dadj, align 8, !tbaa !0
  %arrayidx66 = getelementptr inbounds i32* %14, i64 %indvars.iv188
  %15 = load i32* %arrayidx66, align 4, !tbaa !3
  %16 = load %struct._Graph** %graph, align 8, !tbaa !0
  call void @Graph_adjAndSize(%struct._Graph* %16, i32 %15, i32* %ssize, i32** %sadj) #5
  %17 = load i32* %ssize, align 4, !tbaa !3
  %cmp69176 = icmp sgt i32 %17, 0
  br i1 %cmp69176, label %for.body70.lr.ph, label %for.inc90

for.body70.lr.ph:                                 ; preds = %for.body64
  %18 = load i32** %sadj, align 8, !tbaa !0
  br label %for.body70

for.body70:                                       ; preds = %for.body70.lr.ph, %for.inc87
  %19 = phi i32 [ %17, %for.body70.lr.ph ], [ %23, %for.inc87 ]
  %indvars.iv186 = phi i64 [ 0, %for.body70.lr.ph ], [ %indvars.iv.next187, %for.inc87 ]
  %last.2177 = phi i32 [ %last.1181, %for.body70.lr.ph ], [ %last.3, %for.inc87 ]
  %arrayidx72 = getelementptr inbounds i32* %18, i64 %indvars.iv186
  %20 = load i32* %arrayidx72, align 4, !tbaa !3
  %idxprom73 = sext i32 %20 to i64
  %arrayidx74 = getelementptr inbounds i32* %call39, i64 %idxprom73
  %21 = load i32* %arrayidx74, align 4, !tbaa !3
  %cmp75 = icmp eq i32 %21, -1
  br i1 %cmp75, label %if.then76, label %for.inc87

if.then76:                                        ; preds = %for.body70
  %cmp77 = icmp eq i32 %last.2177, %sub
  br i1 %cmp77, label %if.then78, label %if.end80

if.then78:                                        ; preds = %if.then76
  %22 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([69 x i8]* @.str8, i64 0, i64 0), %struct._BKL* %bkl, i32 %flag, i32 %seed, i32* %domcolors) #5
  call void @exit(i32 -1) #6
  unreachable

if.end80:                                         ; preds = %if.then76
  store i32 1, i32* %arrayidx74, align 4, !tbaa !3
  %inc83 = add nsw i32 %last.2177, 1
  %idxprom84 = sext i32 %inc83 to i64
  %arrayidx85 = getelementptr inbounds i32* %call38, i64 %idxprom84
  store i32 %20, i32* %arrayidx85, align 4, !tbaa !3
  %.pre = load i32* %ssize, align 4, !tbaa !3
  br label %for.inc87

for.inc87:                                        ; preds = %for.body70, %if.end80
  %23 = phi i32 [ %.pre, %if.end80 ], [ %19, %for.body70 ]
  %last.3 = phi i32 [ %inc83, %if.end80 ], [ %last.2177, %for.body70 ]
  %indvars.iv.next187 = add i64 %indvars.iv186, 1
  %24 = trunc i64 %indvars.iv.next187 to i32
  %cmp69 = icmp slt i32 %24, %23
  br i1 %cmp69, label %for.body70, label %for.inc90

for.inc90:                                        ; preds = %for.inc87, %for.body64
  %last.2.lcssa = phi i32 [ %last.1181, %for.body64 ], [ %last.3, %for.inc87 ]
  %indvars.iv.next189 = add i64 %indvars.iv188, 1
  %25 = load i32* %dsize, align 4, !tbaa !3
  %26 = trunc i64 %indvars.iv.next189 to i32
  %cmp63 = icmp slt i32 %26, %25
  br i1 %cmp63, label %for.body64, label %while.cond.loopexit

while.end:                                        ; preds = %while.cond.loopexit, %while.body
  call void @IVfree(i32* %call38) #5
  call void @IVfree(i32* %call39) #5
  call void @BKL_setColorWeights(%struct._BKL* %bkl) #7
  br label %if.end95

sw.bb93:                                          ; preds = %if.else17
  call void @IVcopy(i32 %3, i32* %4, i32* %domcolors) #5
  call void @BKL_setColorWeights(%struct._BKL* %bkl) #7
  br label %if.end95

if.end95:                                         ; preds = %if.then14, %if.else17, %sw.bb93, %while.end, %if.end36, %for.end, %if.then12
  %call96 = call float @BKL_evalfcn(%struct._BKL* %bkl) #5
  ret float %call96
}

; Function Attrs: optsize
declare void @IVfill(i32, i32*, i32) #4

; Function Attrs: optsize
declare i32 @BPG_pseudoperipheralnode(%struct._BPG*, i32) #4

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #4

; Function Attrs: optsize
declare void @IVfree(i32*) #4

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #4

; Function Attrs: optsize
declare float @BKL_evalfcn(%struct._BKL*) #4

; Function Attrs: nounwind optsize uwtable
define i32 @BKL_domAdjToSep(%struct._BKL* %bkl, i32 %dom) #0 {
entry:
  %size = alloca i32, align 4
  %adj = alloca i32*, align 8
  %cmp = icmp eq %struct._BKL* %bkl, null
  %cmp1 = icmp slt i32 %dom, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %ndom = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 1
  %0 = load i32* %ndom, align 4, !tbaa !3
  %cmp3 = icmp sgt i32 %0, %dom
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([52 x i8]* @.str9, i64 0, i64 0), %struct._BKL* %bkl, i32 %dom) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %colors4 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10
  %2 = load i32** %colors4, align 8, !tbaa !0
  %bpg = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 0
  %3 = load %struct._BPG** %bpg, align 8, !tbaa !0
  %graph = getelementptr inbounds %struct._BPG* %3, i64 0, i32 2
  %4 = load %struct._Graph** %graph, align 8, !tbaa !0
  call void @Graph_adjAndSize(%struct._Graph* %4, i32 %dom, i32* %size, i32** %adj) #5
  %5 = load i32* %size, align 4, !tbaa !3
  %cmp520 = icmp sgt i32 %5, 0
  br i1 %cmp520, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %if.end
  %6 = load i32** %adj, align 8, !tbaa !0
  br label %for.body

for.cond:                                         ; preds = %for.body
  %7 = trunc i64 %indvars.iv.next to i32
  %cmp5 = icmp slt i32 %7, %5
  br i1 %cmp5, label %for.body, label %return

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %arrayidx = getelementptr inbounds i32* %6, i64 %indvars.iv
  %8 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds i32* %2, i64 %idxprom6
  %9 = load i32* %arrayidx7, align 4, !tbaa !3
  %cmp8 = icmp eq i32 %9, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp8, label %return, label %for.cond

return:                                           ; preds = %for.cond, %for.body, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %for.body ], [ 0, %for.cond ]
  ret i32 %retval.0
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
