; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.dpmatrix_s = type { i32**, i32**, i32**, i32**, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }

@.str = private unnamed_addr constant [14 x i8] c"unknown state\00", align 1
@.str1 = private unnamed_addr constant [17 x i8] c"         *      \00", align 1
@.str2 = private unnamed_addr constant [13 x i8] c"    %c      \00", align 1
@Alphabet = external global [25 x i8]
@.str3 = private unnamed_addr constant [7 x i8] c"\0AN    \00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c"\0AM%-3d \00", align 1
@.str5 = private unnamed_addr constant [8 x i8] c"\0AI%-3d \00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"\0AE    \00", align 1
@.str7 = private unnamed_addr constant [7 x i8] c"\0AC    \00", align 1
@.str8 = private unnamed_addr constant [7 x i8] c"\0AJ    \00", align 1
@.str9 = private unnamed_addr constant [7 x i8] c"\0AB    \00", align 1
@.str10 = private unnamed_addr constant [8 x i8] c"\0AD%-3d \00", align 1
@.str12 = private unnamed_addr constant [10 x i8] c"%- #11.3e\00", align 1
@.str13 = private unnamed_addr constant [4 x i8] c"M%d\00", align 1
@.str14 = private unnamed_addr constant [4 x i8] c"D%d\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"I%d\00", align 1
@.str23 = private unnamed_addr constant [15 x i8] c"bad transition\00", align 1
@.str24 = private unnamed_addr constant [21 x i8] c"%d\09%s\09%d\09%s\09%-14.7g\09\00", align 1
@str = private unnamed_addr constant [2 x i8] c"\0A\00"

; Function Attrs: nounwind optsize uwtable
define void @DisplayPlan7Posteriors(i32 %L, %struct.plan7_s* %hmm, %struct.dpmatrix_s* nocapture %forward, %struct.dpmatrix_s* nocapture %backward, %struct.p7trace_s* %viterbi, %struct.p7trace_s* %optacc) #0 {
entry:
  %alignment = alloca [2 x %struct.p7trace_s*], align 16
  %arrayidx = getelementptr inbounds [2 x %struct.p7trace_s*]* %alignment, i64 0, i64 0
  store %struct.p7trace_s* %viterbi, %struct.p7trace_s** %arrayidx, align 16, !tbaa !0
  %arrayidx1 = getelementptr inbounds [2 x %struct.p7trace_s*]* %alignment, i64 0, i64 1
  store %struct.p7trace_s* %optacc, %struct.p7trace_s** %arrayidx1, align 8, !tbaa !0
  call void @DisplayPlan7PostAlign(i32 %L, %struct.plan7_s* %hmm, %struct.dpmatrix_s* %forward, %struct.dpmatrix_s* %backward, %struct.p7trace_s** %arrayidx, i32 2) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DisplayPlan7PostAlign(i32 %L, %struct.plan7_s* %hmm, %struct.dpmatrix_s* nocapture %forward, %struct.dpmatrix_s* nocapture %backward, %struct.p7trace_s** nocapture %alignment, i32 %A) #0 {
entry:
  %idxprom = sext i32 %L to i64
  %xmx = getelementptr inbounds %struct.dpmatrix_s* %forward, i64 0, i32 0
  %0 = load i32*** %xmx, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32** %0, i64 %idxprom
  %1 = load i32** %arrayidx, align 8, !tbaa !0
  %arrayidx1 = getelementptr inbounds i32* %1, i64 2
  %2 = load i32* %arrayidx1, align 4, !tbaa !3
  %arrayidx3 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 0
  %3 = load i32* %arrayidx3, align 4, !tbaa !3
  %add = add nsw i32 %3, %2
  %conv = sext i32 %A to i64
  %call = tail call noalias i8* @calloc(i64 %conv, i64 4) #5
  %4 = bitcast i8* %call to i32*
  %call5 = tail call noalias i8* @calloc(i64 %conv, i64 4) #5
  %5 = bitcast i8* %call5 to i32*
  %call7 = tail call noalias i8* @calloc(i64 %conv, i64 4) #5
  %6 = bitcast i8* %call7 to i32*
  %cmp793 = icmp slt i32 %L, 0
  br i1 %cmp793, label %for.end445, label %for.cond9.preheader.lr.ph

for.cond9.preheader.lr.ph:                        ; preds = %entry
  %cmp10785 = icmp sgt i32 %A, 0
  %arrayidx305 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 0
  %xmx308 = getelementptr inbounds %struct.dpmatrix_s* %backward, i64 0, i32 0
  %arrayidx323 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 1
  %arrayidx340 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 0
  %arrayidx358 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 1
  %arrayidx388 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 1
  %arrayidx405 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 0
  %arrayidx419 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 1
  %M91 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  %mmx = getelementptr inbounds %struct.dpmatrix_s* %forward, i64 0, i32 1
  %tsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30
  %mmx109 = getelementptr inbounds %struct.dpmatrix_s* %backward, i64 0, i32 1
  %imx = getelementptr inbounds %struct.dpmatrix_s* %backward, i64 0, i32 2
  %dmx = getelementptr inbounds %struct.dpmatrix_s* %backward, i64 0, i32 3
  %esc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 35
  %dmx187 = getelementptr inbounds %struct.dpmatrix_s* %forward, i64 0, i32 3
  %imx232 = getelementptr inbounds %struct.dpmatrix_s* %forward, i64 0, i32 2
  %bsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 34
  %7 = add i32 %L, 1
  br label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %for.inc443, %for.cond9.preheader.lr.ph
  %indvars.iv812 = phi i64 [ %indvars.iv.next813.pre-phi, %for.inc443 ], [ 0, %for.cond9.preheader.lr.ph ]
  %i.0794 = phi i32 [ %add316, %for.inc443 ], [ 0, %for.cond9.preheader.lr.ph ]
  br i1 %cmp10785, label %while.cond.preheader.lr.ph, label %for.cond9.preheader.for.cond57.loopexit_crit_edge

for.cond9.preheader.for.cond57.loopexit_crit_edge: ; preds = %for.cond9.preheader
  %indvars.iv.next813.pre = add i64 %indvars.iv812, 1
  br label %for.cond57.loopexit

while.cond.preheader.lr.ph:                       ; preds = %for.cond9.preheader
  %8 = add nsw i64 %indvars.iv812, 4294967295
  %9 = add nsw i64 %indvars.iv812, 1
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc, %while.cond.preheader.lr.ph
  %indvars.iv797 = phi i64 [ 0, %while.cond.preheader.lr.ph ], [ %indvars.iv.next798, %for.inc ]
  %arrayidx14 = getelementptr inbounds i32* %4, i64 %indvars.iv797
  %10 = load i32* %arrayidx14, align 4, !tbaa !3
  %idxprom15776 = sext i32 %10 to i64
  %arrayidx17 = getelementptr inbounds %struct.p7trace_s** %alignment, i64 %indvars.iv797
  %11 = load %struct.p7trace_s** %arrayidx17, align 8, !tbaa !0
  %pos777 = getelementptr inbounds %struct.p7trace_s* %11, i64 0, i32 3
  %12 = load i32** %pos777, align 8, !tbaa !0
  %arrayidx18778 = getelementptr inbounds i32* %12, i64 %idxprom15776
  %13 = load i32* %arrayidx18778, align 4, !tbaa !3
  %14 = trunc i64 %8 to i32
  %cmp19779 = icmp slt i32 %13, %14
  br i1 %cmp19779, label %land.rhs.lr.ph, label %while.cond30.loopexit

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %tlen.phi.trans.insert = getelementptr inbounds %struct.p7trace_s* %11, i64 0, i32 0
  %.pre818 = load i32* %tlen.phi.trans.insert, align 4, !tbaa !3
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %indvars.iv = phi i64 [ %idxprom15776, %land.rhs.lr.ph ], [ %indvars.iv.next, %while.body ]
  %sub25 = add nsw i32 %.pre818, -1
  %15 = trunc i64 %indvars.iv to i32
  %cmp26 = icmp slt i32 %15, %sub25
  br i1 %cmp26, label %while.body, label %while.cond30.loopexit

while.body:                                       ; preds = %land.rhs
  %indvars.iv.next = add i64 %indvars.iv, 1
  %16 = trunc i64 %indvars.iv.next to i32
  store i32 %16, i32* %arrayidx14, align 4, !tbaa !3
  %arrayidx18 = getelementptr inbounds i32* %12, i64 %indvars.iv.next
  %17 = load i32* %arrayidx18, align 4, !tbaa !3
  %cmp19 = icmp slt i32 %17, %14
  br i1 %cmp19, label %land.rhs, label %while.cond30.loopexit

while.cond30.loopexit:                            ; preds = %while.body, %land.rhs, %while.cond.preheader
  %arrayidx32 = getelementptr inbounds i32* %5, i64 %indvars.iv797
  %18 = load i32* %arrayidx32, align 4, !tbaa !3
  %idxprom33781 = sext i32 %18 to i64
  %arrayidx37783 = getelementptr inbounds i32* %12, i64 %idxprom33781
  %19 = load i32* %arrayidx37783, align 4, !tbaa !3
  %20 = trunc i64 %9 to i32
  %cmp39784 = icmp sgt i32 %19, %20
  br i1 %cmp39784, label %for.inc, label %land.rhs41

land.rhs41:                                       ; preds = %while.body51, %while.cond30.loopexit
  %indvars.iv795 = phi i64 [ %idxprom33781, %while.cond30.loopexit ], [ %indvars.iv.next796, %while.body51 ]
  %tlen46 = getelementptr inbounds %struct.p7trace_s* %11, i64 0, i32 0
  %21 = load i32* %tlen46, align 4, !tbaa !3
  %sub47 = add nsw i32 %21, -1
  %22 = trunc i64 %indvars.iv795 to i32
  %cmp48 = icmp slt i32 %22, %sub47
  br i1 %cmp48, label %while.body51, label %for.inc

while.body51:                                     ; preds = %land.rhs41
  %indvars.iv.next796 = add i64 %indvars.iv795, 1
  %23 = trunc i64 %indvars.iv.next796 to i32
  store i32 %23, i32* %arrayidx32, align 4, !tbaa !3
  %arrayidx37 = getelementptr inbounds i32* %12, i64 %indvars.iv.next796
  %24 = load i32* %arrayidx37, align 4, !tbaa !3
  %cmp39 = icmp sgt i32 %24, %20
  br i1 %cmp39, label %for.inc, label %land.rhs41

for.inc:                                          ; preds = %while.body51, %land.rhs41, %while.cond30.loopexit
  %indvars.iv.next798 = add i64 %indvars.iv797, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next798 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %A
  br i1 %exitcond, label %for.cond57.loopexit, label %while.cond.preheader

for.cond57.loopexit:                              ; preds = %for.inc, %for.cond9.preheader.for.cond57.loopexit_crit_edge
  %indvars.iv.next813.pre-phi = phi i64 [ %indvars.iv.next813.pre, %for.cond9.preheader.for.cond57.loopexit_crit_edge ], [ %9, %for.inc ]
  %25 = trunc i64 %indvars.iv812 to i32
  %cmp313 = icmp slt i32 %25, %L
  %add316 = add nsw i32 %i.0794, 1
  %cmp428 = icmp eq i32 %25, 0
  br label %for.body61

for.body61:                                       ; preds = %for.inc440, %for.cond57.loopexit
  %indvars.iv808 = phi i32 [ 1, %for.cond57.loopexit ], [ %indvars.iv.next809, %for.inc440 ]
  %26 = trunc i32 %indvars.iv808 to i8
  switch i8 %26, label %for.body87.lr.ph [
    i8 1, label %if.then
    i8 6, label %if.then
    i8 2, label %if.then71
    i8 3, label %if.then78
  ]

if.then:                                          ; preds = %for.body61, %for.body61
  %27 = load i32* %M91, align 4, !tbaa !3
  br label %if.end83

if.then71:                                        ; preds = %for.body61
  %28 = load i32* %M91, align 4, !tbaa !3
  %sub73 = add nsw i32 %28, -1
  br label %if.end83

if.then78:                                        ; preds = %for.body61
  %29 = load i32* %M91, align 4, !tbaa !3
  %sub80 = add nsw i32 %29, -1
  br label %if.end83

if.end83:                                         ; preds = %if.then71, %if.then78, %if.then
  %kmin.0 = phi i32 [ 1, %if.then ], [ 2, %if.then71 ], [ 1, %if.then78 ]
  %kmax.0 = phi i32 [ %27, %if.then ], [ %sub73, %if.then71 ], [ %sub80, %if.then78 ]
  %cmp85787 = icmp sgt i32 %kmin.0, %kmax.0
  br i1 %cmp85787, label %for.end296, label %for.body87.lr.ph

for.body87.lr.ph:                                 ; preds = %for.body61, %if.end83
  %kmax.0827 = phi i32 [ %kmax.0, %if.end83 ], [ 0, %for.body61 ]
  %kmin.0826 = phi i32 [ %kmin.0, %if.end83 ], [ 0, %for.body61 ]
  %30 = zext i32 %kmin.0826 to i64
  %31 = add i32 %kmax.0827, 1
  br label %for.body87

for.body87:                                       ; preds = %for.inc294, %for.body87.lr.ph
  %indvars.iv799 = phi i64 [ %indvars.iv.next800, %for.inc294 ], [ %30, %for.body87.lr.ph ]
  %k.0788 = phi i32 [ %inc295, %for.inc294 ], [ %kmin.0826, %for.body87.lr.ph ]
  switch i32 %indvars.iv808, label %for.inc294 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb179
    i32 3, label %sw.bb224
    i32 6, label %sw.bb273
  ]

sw.bb:                                            ; preds = %for.body87
  br i1 %cmp313, label %land.lhs.true, label %sw.bb.if.end140_crit_edge

sw.bb.if.end140_crit_edge:                        ; preds = %sw.bb
  %.pre820 = trunc i64 %indvars.iv799 to i32
  br label %if.end140

land.lhs.true:                                    ; preds = %sw.bb
  %32 = load i32* %M91, align 4, !tbaa !3
  %33 = trunc i64 %indvars.iv799 to i32
  %cmp92 = icmp slt i32 %33, %32
  br i1 %cmp92, label %if.end114.land.lhs.true117_crit_edge, label %land.lhs.true117

if.end114.land.lhs.true117_crit_edge:             ; preds = %land.lhs.true
  %34 = add nsw i64 %indvars.iv799, 1
  %add96 = add nsw i32 %k.0788, 1
  %35 = load i32*** %mmx, align 8, !tbaa !0
  %arrayidx99 = getelementptr inbounds i32** %35, i64 %indvars.iv812
  %36 = load i32** %arrayidx99, align 8, !tbaa !0
  %arrayidx100 = getelementptr inbounds i32* %36, i64 %indvars.iv799
  %37 = load i32* %arrayidx100, align 4, !tbaa !3
  %38 = load i32*** %tsc, align 8, !tbaa !0
  %39 = load i32** %38, align 8, !tbaa !0
  %arrayidx103 = getelementptr inbounds i32* %39, i64 %indvars.iv799
  %40 = load i32* %arrayidx103, align 4, !tbaa !3
  %41 = load i32*** %mmx109, align 8, !tbaa !0
  %arrayidx110 = getelementptr inbounds i32** %41, i64 %indvars.iv.next813.pre-phi
  %42 = load i32** %arrayidx110, align 8, !tbaa !0
  %arrayidx111 = getelementptr inbounds i32* %42, i64 %34
  %43 = load i32* %arrayidx111, align 4, !tbaa !3
  %add104 = sub i32 %37, %add
  %add112 = add i32 %add104, %40
  %sub113 = add i32 %add112, %43
  tail call void @PrintTransition(i8 signext 1, i32 %25, i32 %33, i8 signext 1, i32 %add316, i32 %add96, i32 %sub113, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #4
  %.pre = load i32* %M91, align 4, !tbaa !3
  br label %land.lhs.true117

land.lhs.true117:                                 ; preds = %if.end114.land.lhs.true117_crit_edge, %land.lhs.true
  %44 = phi i32 [ %.pre, %if.end114.land.lhs.true117_crit_edge ], [ %32, %land.lhs.true ]
  %cmp119 = icmp slt i32 %33, %44
  br i1 %cmp119, label %if.then121, label %if.end140

if.then121:                                       ; preds = %land.lhs.true117
  %45 = load i32*** %mmx, align 8, !tbaa !0
  %arrayidx126 = getelementptr inbounds i32** %45, i64 %indvars.iv812
  %46 = load i32** %arrayidx126, align 8, !tbaa !0
  %arrayidx127 = getelementptr inbounds i32* %46, i64 %indvars.iv799
  %47 = load i32* %arrayidx127, align 4, !tbaa !3
  %48 = load i32*** %tsc, align 8, !tbaa !0
  %arrayidx130 = getelementptr inbounds i32** %48, i64 1
  %49 = load i32** %arrayidx130, align 8, !tbaa !0
  %arrayidx131 = getelementptr inbounds i32* %49, i64 %indvars.iv799
  %50 = load i32* %arrayidx131, align 4, !tbaa !3
  %51 = load i32*** %imx, align 8, !tbaa !0
  %arrayidx136 = getelementptr inbounds i32** %51, i64 %indvars.iv.next813.pre-phi
  %52 = load i32** %arrayidx136, align 8, !tbaa !0
  %arrayidx137 = getelementptr inbounds i32* %52, i64 %indvars.iv799
  %53 = load i32* %arrayidx137, align 4, !tbaa !3
  %add132 = sub i32 %47, %add
  %add138 = add i32 %add132, %50
  %sub139 = add i32 %add138, %53
  tail call void @PrintTransition(i8 signext 1, i32 %25, i32 %33, i8 signext 3, i32 %add316, i32 %33, i32 %sub139, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #4
  br label %if.end140

if.end140:                                        ; preds = %land.lhs.true117, %sw.bb.if.end140_crit_edge, %if.then121
  %.pre-phi = phi i32 [ %.pre820, %sw.bb.if.end140_crit_edge ], [ %33, %if.then121 ], [ %33, %land.lhs.true117 ]
  %54 = load i32* %M91, align 4, !tbaa !3
  %sub142 = add nsw i32 %54, -1
  %cmp143 = icmp slt i32 %.pre-phi, %sub142
  br i1 %cmp143, label %if.then145, label %if.end164

if.then145:                                       ; preds = %if.end140
  %55 = add nsw i64 %indvars.iv799, 1
  %add146 = add nsw i32 %k.0788, 1
  %56 = load i32*** %mmx, align 8, !tbaa !0
  %arrayidx150 = getelementptr inbounds i32** %56, i64 %indvars.iv812
  %57 = load i32** %arrayidx150, align 8, !tbaa !0
  %arrayidx151 = getelementptr inbounds i32* %57, i64 %indvars.iv799
  %58 = load i32* %arrayidx151, align 4, !tbaa !3
  %59 = load i32*** %tsc, align 8, !tbaa !0
  %arrayidx154 = getelementptr inbounds i32** %59, i64 2
  %60 = load i32** %arrayidx154, align 8, !tbaa !0
  %arrayidx155 = getelementptr inbounds i32* %60, i64 %indvars.iv799
  %61 = load i32* %arrayidx155, align 4, !tbaa !3
  %62 = load i32*** %dmx, align 8, !tbaa !0
  %arrayidx160 = getelementptr inbounds i32** %62, i64 %indvars.iv812
  %63 = load i32** %arrayidx160, align 8, !tbaa !0
  %arrayidx161 = getelementptr inbounds i32* %63, i64 %55
  %64 = load i32* %arrayidx161, align 4, !tbaa !3
  %add156 = sub i32 %58, %add
  %add162 = add i32 %add156, %61
  %sub163 = add i32 %add162, %64
  tail call void @PrintTransition(i8 signext 1, i32 %25, i32 %.pre-phi, i8 signext 2, i32 %25, i32 %add146, i32 %sub163, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #4
  br label %if.end164

if.end164:                                        ; preds = %if.then145, %if.end140
  %65 = load i32*** %mmx, align 8, !tbaa !0
  %arrayidx168 = getelementptr inbounds i32** %65, i64 %indvars.iv812
  %66 = load i32** %arrayidx168, align 8, !tbaa !0
  %arrayidx169 = getelementptr inbounds i32* %66, i64 %indvars.iv799
  %67 = load i32* %arrayidx169, align 4, !tbaa !3
  %68 = load i32** %esc, align 8, !tbaa !0
  %arrayidx171 = getelementptr inbounds i32* %68, i64 %indvars.iv799
  %69 = load i32* %arrayidx171, align 4, !tbaa !3
  %70 = load i32*** %xmx308, align 8, !tbaa !0
  %arrayidx175 = getelementptr inbounds i32** %70, i64 %indvars.iv812
  %71 = load i32** %arrayidx175, align 8, !tbaa !0
  %arrayidx176 = getelementptr inbounds i32* %71, i64 1
  %72 = load i32* %arrayidx176, align 4, !tbaa !3
  %add172 = sub i32 %67, %add
  %add177 = add i32 %add172, %69
  %sub178 = add i32 %add177, %72
  tail call void @PrintTransition(i8 signext 1, i32 %25, i32 %.pre-phi, i8 signext 7, i32 %25, i32 0, i32 %sub178, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #4
  br label %for.inc294

sw.bb179:                                         ; preds = %for.body87
  %73 = add nsw i64 %indvars.iv799, 1
  %add184 = add nsw i32 %k.0788, 1
  br i1 %cmp313, label %if.then182, label %sw.bb179.if.end204_crit_edge

sw.bb179.if.end204_crit_edge:                     ; preds = %sw.bb179
  %.pre823 = trunc i64 %indvars.iv799 to i32
  br label %if.end204

if.then182:                                       ; preds = %sw.bb179
  %74 = load i32*** %dmx187, align 8, !tbaa !0
  %arrayidx188 = getelementptr inbounds i32** %74, i64 %indvars.iv812
  %75 = load i32** %arrayidx188, align 8, !tbaa !0
  %arrayidx189 = getelementptr inbounds i32* %75, i64 %indvars.iv799
  %76 = load i32* %arrayidx189, align 4, !tbaa !3
  %77 = load i32*** %tsc, align 8, !tbaa !0
  %arrayidx192 = getelementptr inbounds i32** %77, i64 5
  %78 = load i32** %arrayidx192, align 8, !tbaa !0
  %arrayidx193 = getelementptr inbounds i32* %78, i64 %indvars.iv799
  %79 = load i32* %arrayidx193, align 4, !tbaa !3
  %80 = load i32*** %mmx109, align 8, !tbaa !0
  %arrayidx200 = getelementptr inbounds i32** %80, i64 %indvars.iv.next813.pre-phi
  %81 = load i32** %arrayidx200, align 8, !tbaa !0
  %arrayidx201 = getelementptr inbounds i32* %81, i64 %73
  %82 = load i32* %arrayidx201, align 4, !tbaa !3
  %add194 = sub i32 %76, %add
  %add202 = add i32 %add194, %79
  %sub203 = add i32 %add202, %82
  %83 = trunc i64 %indvars.iv799 to i32
  tail call void @PrintTransition(i8 signext 2, i32 %25, i32 %83, i8 signext 1, i32 %add316, i32 %add184, i32 %sub203, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #4
  br label %if.end204

if.end204:                                        ; preds = %sw.bb179.if.end204_crit_edge, %if.then182
  %.pre-phi824 = phi i32 [ %.pre823, %sw.bb179.if.end204_crit_edge ], [ %83, %if.then182 ]
  %84 = load i32*** %dmx187, align 8, !tbaa !0
  %arrayidx209 = getelementptr inbounds i32** %84, i64 %indvars.iv812
  %85 = load i32** %arrayidx209, align 8, !tbaa !0
  %arrayidx210 = getelementptr inbounds i32* %85, i64 %indvars.iv799
  %86 = load i32* %arrayidx210, align 4, !tbaa !3
  %87 = load i32*** %tsc, align 8, !tbaa !0
  %arrayidx213 = getelementptr inbounds i32** %87, i64 6
  %88 = load i32** %arrayidx213, align 8, !tbaa !0
  %arrayidx214 = getelementptr inbounds i32* %88, i64 %indvars.iv799
  %89 = load i32* %arrayidx214, align 4, !tbaa !3
  %90 = load i32*** %dmx, align 8, !tbaa !0
  %arrayidx220 = getelementptr inbounds i32** %90, i64 %indvars.iv812
  %91 = load i32** %arrayidx220, align 8, !tbaa !0
  %arrayidx221 = getelementptr inbounds i32* %91, i64 %73
  %92 = load i32* %arrayidx221, align 4, !tbaa !3
  %add215 = sub i32 %86, %add
  %add222 = add i32 %add215, %89
  %sub223 = add i32 %add222, %92
  tail call void @PrintTransition(i8 signext 2, i32 %25, i32 %.pre-phi824, i8 signext 2, i32 %25, i32 %add184, i32 %sub223, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #4
  br label %for.inc294

sw.bb224:                                         ; preds = %for.body87
  br i1 %cmp313, label %if.then227, label %for.inc294

if.then227:                                       ; preds = %sw.bb224
  %93 = add nsw i64 %indvars.iv799, 1
  %add229 = add nsw i32 %k.0788, 1
  %94 = load i32*** %imx232, align 8, !tbaa !0
  %arrayidx233 = getelementptr inbounds i32** %94, i64 %indvars.iv812
  %95 = load i32** %arrayidx233, align 8, !tbaa !0
  %arrayidx234 = getelementptr inbounds i32* %95, i64 %indvars.iv799
  %96 = load i32* %arrayidx234, align 4, !tbaa !3
  %97 = load i32*** %tsc, align 8, !tbaa !0
  %arrayidx237 = getelementptr inbounds i32** %97, i64 3
  %98 = load i32** %arrayidx237, align 8, !tbaa !0
  %arrayidx238 = getelementptr inbounds i32* %98, i64 %indvars.iv799
  %99 = load i32* %arrayidx238, align 4, !tbaa !3
  %100 = load i32*** %mmx109, align 8, !tbaa !0
  %arrayidx245 = getelementptr inbounds i32** %100, i64 %indvars.iv.next813.pre-phi
  %101 = load i32** %arrayidx245, align 8, !tbaa !0
  %arrayidx246 = getelementptr inbounds i32* %101, i64 %93
  %102 = load i32* %arrayidx246, align 4, !tbaa !3
  %add239 = sub i32 %96, %add
  %add247 = add i32 %add239, %99
  %sub248 = add i32 %add247, %102
  %103 = trunc i64 %indvars.iv799 to i32
  tail call void @PrintTransition(i8 signext 3, i32 %25, i32 %103, i8 signext 1, i32 %add316, i32 %add229, i32 %sub248, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #4
  %104 = load i32*** %imx232, align 8, !tbaa !0
  %arrayidx257 = getelementptr inbounds i32** %104, i64 %indvars.iv812
  %105 = load i32** %arrayidx257, align 8, !tbaa !0
  %arrayidx258 = getelementptr inbounds i32* %105, i64 %indvars.iv799
  %106 = load i32* %arrayidx258, align 4, !tbaa !3
  %107 = load i32*** %tsc, align 8, !tbaa !0
  %arrayidx261 = getelementptr inbounds i32** %107, i64 4
  %108 = load i32** %arrayidx261, align 8, !tbaa !0
  %arrayidx262 = getelementptr inbounds i32* %108, i64 %indvars.iv799
  %109 = load i32* %arrayidx262, align 4, !tbaa !3
  %110 = load i32*** %imx, align 8, !tbaa !0
  %arrayidx268 = getelementptr inbounds i32** %110, i64 %indvars.iv.next813.pre-phi
  %111 = load i32** %arrayidx268, align 8, !tbaa !0
  %arrayidx269 = getelementptr inbounds i32* %111, i64 %indvars.iv799
  %112 = load i32* %arrayidx269, align 4, !tbaa !3
  %add263 = sub i32 %106, %add
  %add270 = add i32 %add263, %109
  %sub271 = add i32 %add270, %112
  tail call void @PrintTransition(i8 signext 3, i32 %25, i32 %103, i8 signext 3, i32 %add316, i32 %103, i32 %sub271, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #4
  br label %for.inc294

sw.bb273:                                         ; preds = %for.body87
  br i1 %cmp313, label %if.then276, label %for.inc294

if.then276:                                       ; preds = %sw.bb273
  %113 = load i32*** %xmx, align 8, !tbaa !0
  %arrayidx280 = getelementptr inbounds i32** %113, i64 %indvars.iv812
  %114 = load i32** %arrayidx280, align 8, !tbaa !0
  %115 = load i32* %114, align 4, !tbaa !3
  %116 = load i32** %bsc, align 8, !tbaa !0
  %arrayidx283 = getelementptr inbounds i32* %116, i64 %indvars.iv799
  %117 = load i32* %arrayidx283, align 4, !tbaa !3
  %118 = load i32*** %mmx109, align 8, !tbaa !0
  %arrayidx289 = getelementptr inbounds i32** %118, i64 %indvars.iv.next813.pre-phi
  %119 = load i32** %arrayidx289, align 8, !tbaa !0
  %arrayidx290 = getelementptr inbounds i32* %119, i64 %indvars.iv799
  %120 = load i32* %arrayidx290, align 4, !tbaa !3
  %add284 = sub i32 %115, %add
  %add291 = add i32 %add284, %117
  %sub292 = add i32 %add291, %120
  %121 = trunc i64 %indvars.iv799 to i32
  tail call void @PrintTransition(i8 signext 6, i32 %25, i32 0, i8 signext 1, i32 %add316, i32 %121, i32 %sub292, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #4
  br label %for.inc294

for.inc294:                                       ; preds = %sw.bb224, %if.end164, %if.end204, %if.then227, %if.then276, %sw.bb273, %for.body87
  %indvars.iv.next800 = add i64 %indvars.iv799, 1
  %inc295 = add nsw i32 %k.0788, 1
  %lftr.wideiv806 = trunc i64 %indvars.iv.next800 to i32
  %exitcond807 = icmp eq i32 %lftr.wideiv806, %31
  br i1 %exitcond807, label %for.end296, label %for.body87

for.end296:                                       ; preds = %for.inc294, %if.end83
  switch i32 %indvars.iv808, label %sw.default438 [
    i32 5, label %sw.bb298
    i32 10, label %sw.bb333
    i32 8, label %sw.bb368
    i32 7, label %sw.bb398
    i32 4, label %sw.bb427
    i32 1, label %for.inc440
    i32 2, label %for.inc440
    i32 3, label %for.inc440
    i32 6, label %for.inc440
    i32 9, label %for.inc440
  ]

sw.bb298:                                         ; preds = %for.end296
  %122 = load i32*** %xmx, align 8, !tbaa !0
  %arrayidx301 = getelementptr inbounds i32** %122, i64 %indvars.iv812
  %123 = load i32** %arrayidx301, align 8, !tbaa !0
  %arrayidx302 = getelementptr inbounds i32* %123, i64 4
  %124 = load i32* %arrayidx302, align 4, !tbaa !3
  %125 = load i32* %arrayidx305, align 4, !tbaa !3
  %126 = load i32*** %xmx308, align 8, !tbaa !0
  %arrayidx309 = getelementptr inbounds i32** %126, i64 %indvars.iv812
  %127 = load i32** %arrayidx309, align 8, !tbaa !0
  %128 = load i32* %127, align 4, !tbaa !3
  %add306 = sub i32 %124, %add
  %add311 = add i32 %add306, %125
  %sub312 = add i32 %add311, %128
  tail call void @PrintTransition(i8 signext 5, i32 %25, i32 0, i8 signext 6, i32 %25, i32 0, i32 %sub312, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #4
  br i1 %cmp313, label %if.then315, label %for.inc440

if.then315:                                       ; preds = %sw.bb298
  %129 = load i32*** %xmx, align 8, !tbaa !0
  %arrayidx319 = getelementptr inbounds i32** %129, i64 %indvars.iv812
  %130 = load i32** %arrayidx319, align 8, !tbaa !0
  %arrayidx320 = getelementptr inbounds i32* %130, i64 4
  %131 = load i32* %arrayidx320, align 4, !tbaa !3
  %132 = load i32* %arrayidx323, align 4, !tbaa !3
  %133 = load i32*** %xmx308, align 8, !tbaa !0
  %arrayidx328 = getelementptr inbounds i32** %133, i64 %indvars.iv.next813.pre-phi
  %134 = load i32** %arrayidx328, align 8, !tbaa !0
  %arrayidx329 = getelementptr inbounds i32* %134, i64 4
  %135 = load i32* %arrayidx329, align 4, !tbaa !3
  %add324 = sub i32 %131, %add
  %add330 = add i32 %add324, %132
  %sub331 = add i32 %add330, %135
  tail call void @PrintTransition(i8 signext 5, i32 %25, i32 0, i8 signext 5, i32 %add316, i32 0, i32 %sub331, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #4
  br label %for.inc440

sw.bb333:                                         ; preds = %for.end296
  %136 = load i32*** %xmx, align 8, !tbaa !0
  %arrayidx336 = getelementptr inbounds i32** %136, i64 %indvars.iv812
  %137 = load i32** %arrayidx336, align 8, !tbaa !0
  %arrayidx337 = getelementptr inbounds i32* %137, i64 3
  %138 = load i32* %arrayidx337, align 4, !tbaa !3
  %139 = load i32* %arrayidx340, align 4, !tbaa !3
  %140 = load i32*** %xmx308, align 8, !tbaa !0
  %arrayidx344 = getelementptr inbounds i32** %140, i64 %indvars.iv812
  %141 = load i32** %arrayidx344, align 8, !tbaa !0
  %142 = load i32* %141, align 4, !tbaa !3
  %add341 = sub i32 %138, %add
  %add346 = add i32 %add341, %139
  %sub347 = add i32 %add346, %142
  tail call void @PrintTransition(i8 signext 10, i32 %25, i32 0, i8 signext 6, i32 %25, i32 0, i32 %sub347, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #4
  br i1 %cmp313, label %if.then350, label %for.inc440

if.then350:                                       ; preds = %sw.bb333
  %143 = load i32*** %xmx, align 8, !tbaa !0
  %arrayidx354 = getelementptr inbounds i32** %143, i64 %indvars.iv812
  %144 = load i32** %arrayidx354, align 8, !tbaa !0
  %arrayidx355 = getelementptr inbounds i32* %144, i64 3
  %145 = load i32* %arrayidx355, align 4, !tbaa !3
  %146 = load i32* %arrayidx358, align 4, !tbaa !3
  %147 = load i32*** %xmx308, align 8, !tbaa !0
  %arrayidx363 = getelementptr inbounds i32** %147, i64 %indvars.iv.next813.pre-phi
  %148 = load i32** %arrayidx363, align 8, !tbaa !0
  %arrayidx364 = getelementptr inbounds i32* %148, i64 3
  %149 = load i32* %arrayidx364, align 4, !tbaa !3
  %add359 = sub i32 %145, %add
  %add365 = add i32 %add359, %146
  %sub366 = add i32 %add365, %149
  tail call void @PrintTransition(i8 signext 10, i32 %25, i32 0, i8 signext 10, i32 %add316, i32 0, i32 %sub366, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #4
  br label %for.inc440

sw.bb368:                                         ; preds = %for.end296
  %150 = load i32*** %xmx, align 8, !tbaa !0
  %arrayidx371 = getelementptr inbounds i32** %150, i64 %indvars.iv812
  %151 = load i32** %arrayidx371, align 8, !tbaa !0
  %arrayidx372 = getelementptr inbounds i32* %151, i64 2
  %152 = load i32* %arrayidx372, align 4, !tbaa !3
  %153 = load i32* %arrayidx3, align 4, !tbaa !3
  %add376 = sub i32 %152, %add
  %sub377 = add i32 %add376, %153
  tail call void @PrintTransition(i8 signext 8, i32 %25, i32 0, i8 signext 9, i32 %25, i32 0, i32 %sub377, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #4
  br i1 %cmp313, label %if.then380, label %for.inc440

if.then380:                                       ; preds = %sw.bb368
  %154 = load i32*** %xmx, align 8, !tbaa !0
  %arrayidx384 = getelementptr inbounds i32** %154, i64 %indvars.iv812
  %155 = load i32** %arrayidx384, align 8, !tbaa !0
  %arrayidx385 = getelementptr inbounds i32* %155, i64 2
  %156 = load i32* %arrayidx385, align 4, !tbaa !3
  %157 = load i32* %arrayidx388, align 4, !tbaa !3
  %158 = load i32*** %xmx308, align 8, !tbaa !0
  %arrayidx393 = getelementptr inbounds i32** %158, i64 %indvars.iv.next813.pre-phi
  %159 = load i32** %arrayidx393, align 8, !tbaa !0
  %arrayidx394 = getelementptr inbounds i32* %159, i64 2
  %160 = load i32* %arrayidx394, align 4, !tbaa !3
  %add389 = sub i32 %156, %add
  %add395 = add i32 %add389, %157
  %sub396 = add i32 %add395, %160
  tail call void @PrintTransition(i8 signext 8, i32 %25, i32 0, i8 signext 8, i32 %add316, i32 0, i32 %sub396, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #4
  br label %for.inc440

sw.bb398:                                         ; preds = %for.end296
  %161 = load i32*** %xmx, align 8, !tbaa !0
  %arrayidx401 = getelementptr inbounds i32** %161, i64 %indvars.iv812
  %162 = load i32** %arrayidx401, align 8, !tbaa !0
  %arrayidx402 = getelementptr inbounds i32* %162, i64 1
  %163 = load i32* %arrayidx402, align 4, !tbaa !3
  %164 = load i32* %arrayidx405, align 4, !tbaa !3
  %165 = load i32*** %xmx308, align 8, !tbaa !0
  %arrayidx409 = getelementptr inbounds i32** %165, i64 %indvars.iv812
  %166 = load i32** %arrayidx409, align 8, !tbaa !0
  %arrayidx410 = getelementptr inbounds i32* %166, i64 2
  %167 = load i32* %arrayidx410, align 4, !tbaa !3
  %add406 = sub i32 %163, %add
  %add411 = add i32 %add406, %164
  %sub412 = add i32 %add411, %167
  tail call void @PrintTransition(i8 signext 7, i32 %25, i32 0, i8 signext 8, i32 %25, i32 0, i32 %sub412, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #4
  %168 = load i32*** %xmx, align 8, !tbaa !0
  %arrayidx415 = getelementptr inbounds i32** %168, i64 %indvars.iv812
  %169 = load i32** %arrayidx415, align 8, !tbaa !0
  %arrayidx416 = getelementptr inbounds i32* %169, i64 1
  %170 = load i32* %arrayidx416, align 4, !tbaa !3
  %171 = load i32* %arrayidx419, align 4, !tbaa !3
  %172 = load i32*** %xmx308, align 8, !tbaa !0
  %arrayidx423 = getelementptr inbounds i32** %172, i64 %indvars.iv812
  %173 = load i32** %arrayidx423, align 8, !tbaa !0
  %arrayidx424 = getelementptr inbounds i32* %173, i64 3
  %174 = load i32* %arrayidx424, align 4, !tbaa !3
  %add420 = sub i32 %170, %add
  %add425 = add i32 %add420, %171
  %sub426 = add i32 %add425, %174
  tail call void @PrintTransition(i8 signext 7, i32 %25, i32 0, i8 signext 10, i32 %25, i32 0, i32 %sub426, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #4
  br label %for.inc440

sw.bb427:                                         ; preds = %for.end296
  br i1 %cmp428, label %if.then430, label %for.inc440

if.then430:                                       ; preds = %sw.bb427
  %175 = load i32*** %xmx308, align 8, !tbaa !0
  %arrayidx433 = getelementptr inbounds i32** %175, i64 %indvars.iv812
  %176 = load i32** %arrayidx433, align 8, !tbaa !0
  %arrayidx434 = getelementptr inbounds i32* %176, i64 4
  %177 = load i32* %arrayidx434, align 4, !tbaa !3
  %sub435 = sub nsw i32 %177, %add
  tail call void @PrintTransition(i8 signext 4, i32 0, i32 0, i8 signext 5, i32 0, i32 0, i32 %sub435, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #4
  br label %for.inc440

sw.default438:                                    ; preds = %for.end296
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([14 x i8]* @.str, i64 0, i64 0)) #5
  br label %for.inc440

for.inc440:                                       ; preds = %sw.bb398, %sw.default438, %if.then315, %sw.bb298, %if.then350, %sw.bb333, %if.then380, %sw.bb368, %if.then430, %sw.bb427, %for.end296, %for.end296, %for.end296, %for.end296, %for.end296
  %indvars.iv.next809 = add i32 %indvars.iv808, 1
  %lftr.wideiv810 = trunc i32 %indvars.iv.next809 to i8
  %exitcond811 = icmp eq i8 %lftr.wideiv810, 11
  br i1 %exitcond811, label %for.inc443, label %for.body61

for.inc443:                                       ; preds = %for.inc440
  %lftr.wideiv816 = trunc i64 %indvars.iv.next813.pre-phi to i32
  %exitcond817 = icmp eq i32 %lftr.wideiv816, %7
  br i1 %exitcond817, label %for.end445, label %for.cond9.preheader

for.end445:                                       ; preds = %for.inc443, %entry
  tail call void @free(i8* %call) #5
  tail call void @free(i8* %call5) #5
  tail call void @free(i8* %call7) #5
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind optsize uwtable
define void @PrintTransition(i8 signext %src, i32 %isrc, i32 %ksrc, i8 signext %dest, i32 %idest, i32 %kdest, i32 %sc, %struct.p7trace_s** nocapture %alignment, i32* nocapture %min, i32* nocapture %max, i32* nocapture %on, i32 %A) #0 {
entry:
  %src_str = alloca [6 x i8], align 2
  %dest_str = alloca [6 x i8], align 2
  %cmp331 = icmp sgt i32 %A, 0
  br i1 %cmp331, label %for.body, label %return

for.body:                                         ; preds = %entry, %for.inc144
  %indvars.iv345 = phi i64 [ %indvars.iv.next346, %for.inc144 ], [ 0, %entry ]
  %near.0333 = phi i32 [ %near.1.lcssa, %for.inc144 ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %on, i64 %indvars.iv345
  store i32 0, i32* %arrayidx, align 4, !tbaa !3
  %arrayidx2 = getelementptr inbounds i32* %min, i64 %indvars.iv345
  %0 = load i32* %arrayidx2, align 4, !tbaa !3
  %arrayidx5 = getelementptr inbounds i32* %max, i64 %indvars.iv345
  %1 = load i32* %arrayidx5, align 4, !tbaa !3
  %cmp6326 = icmp sgt i32 %0, %1
  br i1 %cmp6326, label %for.inc144, label %for.body7.lr.ph

for.body7.lr.ph:                                  ; preds = %for.body
  %arrayidx10 = getelementptr inbounds %struct.p7trace_s** %alignment, i64 %indvars.iv345
  %2 = sext i32 %0 to i64
  %.pre = load %struct.p7trace_s** %arrayidx10, align 8, !tbaa !0
  %pos11.phi.trans.insert = getelementptr inbounds %struct.p7trace_s* %.pre, i64 0, i32 3
  %.pre356 = load i32** %pos11.phi.trans.insert, align 8, !tbaa !0
  %statetype.phi.trans.insert = getelementptr inbounds %struct.p7trace_s* %.pre, i64 0, i32 1
  %.pre357 = load i8** %statetype.phi.trans.insert, align 8, !tbaa !0
  br label %for.body7

for.body7:                                        ; preds = %for.inc, %for.body7.lr.ph
  %3 = phi i32 [ %23, %for.inc ], [ %1, %for.body7.lr.ph ]
  %indvars.iv342 = phi i64 [ %12, %for.inc ], [ %2, %for.body7.lr.ph ]
  %indvars.iv337.in = phi i64 [ %indvars.iv337, %for.inc ], [ %2, %for.body7.lr.ph ]
  %near.1329 = phi i32 [ %near.3, %for.inc ], [ %near.0333, %for.body7.lr.ph ]
  %pos.0328 = phi i32 [ %pos.0., %for.inc ], [ 0, %for.body7.lr.ph ]
  %tpos.0327 = phi i32 [ %add, %for.inc ], [ %0, %for.body7.lr.ph ]
  %indvars.iv337 = add i64 %indvars.iv337.in, 1
  %arrayidx12 = getelementptr inbounds i32* %.pre356, i64 %indvars.iv342
  %4 = load i32* %arrayidx12, align 4, !tbaa !3
  %cmp13 = icmp eq i32 %4, 0
  %pos.0. = select i1 %cmp13, i32 %pos.0328, i32 %4
  %arrayidx22 = getelementptr inbounds i8* %.pre357, i64 %indvars.iv342
  %5 = load i8* %arrayidx22, align 1, !tbaa !1
  %cmp24 = icmp eq i8 %5, %src
  br i1 %cmp24, label %land.lhs.true, label %if.end36

land.lhs.true:                                    ; preds = %for.body7
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %.pre, i64 0, i32 2
  %6 = load i32** %nodeidx, align 8, !tbaa !0
  %arrayidx29 = getelementptr inbounds i32* %6, i64 %indvars.iv342
  %7 = load i32* %arrayidx29, align 4, !tbaa !3
  %cmp30 = icmp eq i32 %7, %ksrc
  %cmp33 = icmp eq i32 %pos.0., %isrc
  %or.cond = and i1 %cmp30, %cmp33
  %.near.1 = select i1 %or.cond, i32 1, i32 %near.1329
  br label %if.end36

if.end36:                                         ; preds = %land.lhs.true, %for.body7
  %near.2 = phi i32 [ %near.1329, %for.body7 ], [ %.near.1, %land.lhs.true ]
  %cmp44 = icmp eq i8 %5, %dest
  br i1 %cmp44, label %land.lhs.true46, label %if.end58

land.lhs.true46:                                  ; preds = %if.end36
  %nodeidx50 = getelementptr inbounds %struct.p7trace_s* %.pre, i64 0, i32 2
  %8 = load i32** %nodeidx50, align 8, !tbaa !0
  %arrayidx51 = getelementptr inbounds i32* %8, i64 %indvars.iv342
  %9 = load i32* %arrayidx51, align 4, !tbaa !3
  %cmp52 = icmp eq i32 %9, %kdest
  %cmp55 = icmp eq i32 %pos.0., %idest
  %or.cond316 = and i1 %cmp52, %cmp55
  %.near.2 = select i1 %or.cond316, i32 1, i32 %near.2
  br label %if.end58

if.end58:                                         ; preds = %if.end36, %land.lhs.true46
  %near.3 = phi i32 [ %.near.2, %land.lhs.true46 ], [ %near.2, %if.end36 ]
  %tlen = getelementptr inbounds %struct.p7trace_s* %.pre, i64 0, i32 0
  %10 = load i32* %tlen, align 4, !tbaa !3
  %sub = add nsw i32 %10, -1
  %11 = trunc i64 %indvars.iv342 to i32
  %cmp61 = icmp slt i32 %11, %sub
  %12 = add i64 %indvars.iv342, 1
  %add = add nsw i32 %tpos.0327, 1
  br i1 %cmp61, label %if.then63, label %for.inc

if.then63:                                        ; preds = %if.end58
  %cmp70 = icmp eq i8 %5, 6
  %13 = trunc i64 %12 to i32
  br i1 %cmp70, label %while.cond.preheader, label %if.end87

while.cond.preheader:                             ; preds = %if.then63
  %arrayidx77323 = getelementptr inbounds i8* %.pre357, i64 %12
  %14 = load i8* %arrayidx77323, align 1, !tbaa !1
  %cmp79324 = icmp eq i8 %14, 2
  br i1 %cmp79324, label %land.rhs, label %if.end87

while.cond:                                       ; preds = %land.rhs
  %idxprom73 = sext i32 %inc to i64
  %arrayidx77 = getelementptr inbounds i8* %.pre357, i64 %idxprom73
  %15 = load i8* %arrayidx77, align 1, !tbaa !1
  %cmp79 = icmp eq i8 %15, 2
  br i1 %cmp79, label %while.cond.land.rhs_crit_edge, label %if.end87

while.cond.land.rhs_crit_edge:                    ; preds = %while.cond
  %indvars.iv.next340 = add i64 %indvars.iv339, 1
  br label %land.rhs

land.rhs:                                         ; preds = %while.cond.preheader, %while.cond.land.rhs_crit_edge
  %indvars.iv339 = phi i64 [ %indvars.iv.next340, %while.cond.land.rhs_crit_edge ], [ %indvars.iv337, %while.cond.preheader ]
  %tnext.0325 = phi i32 [ %inc, %while.cond.land.rhs_crit_edge ], [ %add, %while.cond.preheader ]
  %16 = trunc i64 %indvars.iv339 to i32
  %cmp85 = icmp slt i32 %16, %sub
  %inc = add nsw i32 %tnext.0325, 1
  br i1 %cmp85, label %while.cond, label %if.end87

if.end87:                                         ; preds = %while.cond.preheader, %land.rhs, %while.cond, %if.then63
  %17 = phi i8 [ %5, %if.then63 ], [ 6, %while.cond ], [ 6, %land.rhs ], [ 6, %while.cond.preheader ]
  %tnext.1 = phi i32 [ %13, %if.then63 ], [ %inc, %while.cond ], [ %tnext.0325, %land.rhs ], [ %13, %while.cond.preheader ]
  %idxprom88 = sext i32 %tnext.1 to i64
  %arrayidx92 = getelementptr inbounds i32* %.pre356, i64 %idxprom88
  %18 = load i32* %arrayidx92, align 4, !tbaa !3
  %cmp93 = icmp eq i32 %18, 0
  %pos.0.. = select i1 %cmp93, i32 %pos.0., i32 %18
  %cmp104 = icmp eq i8 %17, %src
  br i1 %cmp104, label %land.lhs.true106, label %for.inc

land.lhs.true106:                                 ; preds = %if.end87
  %nodeidx110 = getelementptr inbounds %struct.p7trace_s* %.pre, i64 0, i32 2
  %19 = load i32** %nodeidx110, align 8, !tbaa !0
  %arrayidx111 = getelementptr inbounds i32* %19, i64 %indvars.iv342
  %20 = load i32* %arrayidx111, align 4, !tbaa !3
  %cmp112 = icmp eq i32 %20, %ksrc
  %cmp115 = icmp eq i32 %pos.0., %isrc
  %or.cond317 = and i1 %cmp112, %cmp115
  br i1 %or.cond317, label %land.lhs.true117, label %for.inc

land.lhs.true117:                                 ; preds = %land.lhs.true106
  %arrayidx123 = getelementptr inbounds i8* %.pre357, i64 %idxprom88
  %21 = load i8* %arrayidx123, align 1, !tbaa !1
  %cmp125 = icmp eq i8 %21, %dest
  br i1 %cmp125, label %land.lhs.true127, label %for.inc

land.lhs.true127:                                 ; preds = %land.lhs.true117
  %arrayidx132 = getelementptr inbounds i32* %19, i64 %idxprom88
  %22 = load i32* %arrayidx132, align 4, !tbaa !3
  %cmp133 = icmp eq i32 %22, %kdest
  %cmp136 = icmp eq i32 %pos.0.., %idest
  %or.cond318 = and i1 %cmp133, %cmp136
  br i1 %or.cond318, label %if.then138, label %for.inc

if.then138:                                       ; preds = %land.lhs.true127
  store i32 1, i32* %arrayidx, align 4, !tbaa !3
  %.pre354 = load i32* %arrayidx5, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %if.end58, %if.then138, %land.lhs.true127, %land.lhs.true117, %land.lhs.true106, %if.end87
  %23 = phi i32 [ %.pre354, %if.then138 ], [ %3, %land.lhs.true127 ], [ %3, %land.lhs.true117 ], [ %3, %land.lhs.true106 ], [ %3, %if.end87 ], [ %3, %if.end58 ]
  %cmp6 = icmp slt i32 %11, %23
  br i1 %cmp6, label %for.body7, label %for.inc144

for.inc144:                                       ; preds = %for.inc, %for.body
  %near.1.lcssa = phi i32 [ %near.0333, %for.body ], [ %near.3, %for.inc ]
  %indvars.iv.next346 = add i64 %indvars.iv345, 1
  %lftr.wideiv347 = trunc i64 %indvars.iv.next346 to i32
  %exitcond348 = icmp eq i32 %lftr.wideiv347, %A
  br i1 %exitcond348, label %for.end146, label %for.body

for.end146:                                       ; preds = %for.inc144
  %tobool = icmp eq i32 %near.1.lcssa, 0
  br i1 %tobool, label %return, label %if.end148

if.end148:                                        ; preds = %for.end146
  %conv149 = sext i8 %src to i32
  switch i32 %conv149, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb150
    i32 3, label %sw.bb153
    i32 4, label %sw.bb156
    i32 5, label %sw.bb159
    i32 6, label %sw.bb162
    i32 7, label %sw.bb165
    i32 8, label %sw.bb168
    i32 10, label %sw.bb171
    i32 9, label %sw.bb174
  ]

sw.bb:                                            ; preds = %if.end148
  %arraydecay = getelementptr inbounds [6 x i8]* %src_str, i64 0, i64 0
  %call = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0), i32 %ksrc) #5
  br label %sw.epilog

sw.bb150:                                         ; preds = %if.end148
  %arraydecay151 = getelementptr inbounds [6 x i8]* %src_str, i64 0, i64 0
  %call152 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay151, i8* getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), i32 %ksrc) #5
  br label %sw.epilog

sw.bb153:                                         ; preds = %if.end148
  %arraydecay154 = getelementptr inbounds [6 x i8]* %src_str, i64 0, i64 0
  %call155 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay154, i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i32 %ksrc) #5
  br label %sw.epilog

sw.bb156:                                         ; preds = %if.end148
  %24 = bitcast [6 x i8]* %src_str to i16*
  store i16 83, i16* %24, align 2
  br label %sw.epilog

sw.bb159:                                         ; preds = %if.end148
  %25 = bitcast [6 x i8]* %src_str to i16*
  store i16 78, i16* %25, align 2
  br label %sw.epilog

sw.bb162:                                         ; preds = %if.end148
  %26 = bitcast [6 x i8]* %src_str to i16*
  store i16 66, i16* %26, align 2
  br label %sw.epilog

sw.bb165:                                         ; preds = %if.end148
  %27 = bitcast [6 x i8]* %src_str to i16*
  store i16 69, i16* %27, align 2
  br label %sw.epilog

sw.bb168:                                         ; preds = %if.end148
  %28 = bitcast [6 x i8]* %src_str to i16*
  store i16 67, i16* %28, align 2
  br label %sw.epilog

sw.bb171:                                         ; preds = %if.end148
  %29 = bitcast [6 x i8]* %src_str to i16*
  store i16 74, i16* %29, align 2
  br label %sw.epilog

sw.bb174:                                         ; preds = %if.end148
  %30 = bitcast [6 x i8]* %src_str to i16*
  store i16 84, i16* %30, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end148
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([15 x i8]* @.str23, i64 0, i64 0)) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb174, %sw.bb171, %sw.bb168, %sw.bb165, %sw.bb162, %sw.bb159, %sw.bb156, %sw.bb153, %sw.bb150, %sw.bb
  %conv177 = sext i8 %dest to i32
  switch i32 %conv177, label %sw.default208 [
    i32 1, label %sw.bb178
    i32 2, label %sw.bb181
    i32 3, label %sw.bb184
    i32 4, label %sw.bb187
    i32 5, label %sw.bb190
    i32 6, label %sw.bb193
    i32 7, label %sw.bb196
    i32 8, label %sw.bb199
    i32 10, label %sw.bb202
    i32 9, label %sw.bb205
  ]

sw.bb178:                                         ; preds = %sw.epilog
  %arraydecay179 = getelementptr inbounds [6 x i8]* %dest_str, i64 0, i64 0
  %call180 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay179, i8* getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0), i32 %kdest) #5
  br label %sw.epilog209

sw.bb181:                                         ; preds = %sw.epilog
  %arraydecay182 = getelementptr inbounds [6 x i8]* %dest_str, i64 0, i64 0
  %call183 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay182, i8* getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), i32 %kdest) #5
  br label %sw.epilog209

sw.bb184:                                         ; preds = %sw.epilog
  %arraydecay185 = getelementptr inbounds [6 x i8]* %dest_str, i64 0, i64 0
  %call186 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay185, i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i32 %kdest) #5
  br label %sw.epilog209

sw.bb187:                                         ; preds = %sw.epilog
  %31 = bitcast [6 x i8]* %dest_str to i16*
  store i16 83, i16* %31, align 2
  br label %sw.epilog209

sw.bb190:                                         ; preds = %sw.epilog
  %32 = bitcast [6 x i8]* %dest_str to i16*
  store i16 78, i16* %32, align 2
  br label %sw.epilog209

sw.bb193:                                         ; preds = %sw.epilog
  %33 = bitcast [6 x i8]* %dest_str to i16*
  store i16 66, i16* %33, align 2
  br label %sw.epilog209

sw.bb196:                                         ; preds = %sw.epilog
  %34 = bitcast [6 x i8]* %dest_str to i16*
  store i16 69, i16* %34, align 2
  br label %sw.epilog209

sw.bb199:                                         ; preds = %sw.epilog
  %35 = bitcast [6 x i8]* %dest_str to i16*
  store i16 67, i16* %35, align 2
  br label %sw.epilog209

sw.bb202:                                         ; preds = %sw.epilog
  %36 = bitcast [6 x i8]* %dest_str to i16*
  store i16 74, i16* %36, align 2
  br label %sw.epilog209

sw.bb205:                                         ; preds = %sw.epilog
  %37 = bitcast [6 x i8]* %dest_str to i16*
  store i16 84, i16* %37, align 2
  br label %sw.epilog209

sw.default208:                                    ; preds = %sw.epilog
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([15 x i8]* @.str23, i64 0, i64 0)) #5
  br label %sw.epilog209

sw.epilog209:                                     ; preds = %sw.default208, %sw.bb205, %sw.bb202, %sw.bb199, %sw.bb196, %sw.bb193, %sw.bb190, %sw.bb187, %sw.bb184, %sw.bb181, %sw.bb178
  %arraydecay210 = getelementptr inbounds [6 x i8]* %src_str, i64 0, i64 0
  %arraydecay211 = getelementptr inbounds [6 x i8]* %dest_str, i64 0, i64 0
  %call212 = call float @Score2Prob(i32 %sc, float 1.000000e+00) #5
  %conv213 = fpext float %call212 to double
  %call214 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str24, i64 0, i64 0), i32 %isrc, i8* %arraydecay210, i32 %idest, i8* %arraydecay211, double %conv213) #5
  br i1 %cmp331, label %for.body218.lr.ph, label %for.end233

for.body218.lr.ph:                                ; preds = %sw.epilog209
  %sub225 = add nsw i32 %A, -1
  br label %for.body218

for.body218:                                      ; preds = %for.inc231, %for.body218.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body218.lr.ph ], [ %indvars.iv.next, %for.inc231 ]
  %arrayidx220 = getelementptr inbounds i32* %on, i64 %indvars.iv
  %38 = load i32* %arrayidx220, align 4, !tbaa !3
  %tobool221 = icmp eq i32 %38, 0
  br i1 %tobool221, label %if.end224, label %if.then222

if.then222:                                       ; preds = %for.body218
  %putchar315 = call i32 @putchar(i32 42) #3
  br label %if.end224

if.end224:                                        ; preds = %for.body218, %if.then222
  %39 = trunc i64 %indvars.iv to i32
  %cmp226 = icmp slt i32 %39, %sub225
  br i1 %cmp226, label %if.then228, label %for.inc231

if.then228:                                       ; preds = %if.end224
  %putchar314 = call i32 @putchar(i32 9) #3
  br label %for.inc231

for.inc231:                                       ; preds = %if.end224, %if.then228
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %A
  br i1 %exitcond, label %for.end233, label %for.body218

for.end233:                                       ; preds = %for.inc231, %sw.epilog209
  %putchar = call i32 @putchar(i32 10) #3
  br label %return

return:                                           ; preds = %entry, %for.end146, %for.end233
  ret void
}

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @DisplayPlan7Matrix(i8* nocapture %dsq, i32 %L, %struct.plan7_s* nocapture %hmm, %struct.dpmatrix_s* nocapture %mx) #0 {
entry:
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0)) #5
  %cmp218 = icmp slt i32 %L, 1
  br i1 %cmp218, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %0 = add i32 %L, 1
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv254 = phi i64 [ %indvars.iv.next255, %for.body ], [ 1, %for.body.lr.ph ]
  %arrayidx = getelementptr inbounds i8* %dsq, i64 %indvars.iv254
  %1 = load i8* %arrayidx, align 1, !tbaa !1
  %idxprom1 = sext i8 %1 to i64
  %arrayidx2 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %idxprom1
  %2 = load i8* %arrayidx2, align 1, !tbaa !1
  %conv3 = sext i8 %2 to i32
  %call4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str2, i64 0, i64 0), i32 %conv3) #5
  %indvars.iv.next255 = add i64 %indvars.iv254, 1
  %lftr.wideiv256 = trunc i64 %indvars.iv.next255 to i32
  %exitcond257 = icmp eq i32 %lftr.wideiv256, %0
  br i1 %exitcond257, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %call5 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0)) #5
  %cmp7216 = icmp slt i32 %L, 0
  br i1 %cmp7216, label %for.cond16.preheader, label %for.body9.lr.ph

for.body9.lr.ph:                                  ; preds = %for.end
  %xmx = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 0
  %3 = add i32 %L, 1
  br label %for.body9

for.cond16.preheader:                             ; preds = %for.body9, %for.end
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  %4 = load i32* %M, align 4, !tbaa !3
  %cmp17214 = icmp slt i32 %4, 1
  br i1 %cmp17214, label %for.end54, label %for.body19.lr.ph

for.body19.lr.ph:                                 ; preds = %for.cond16.preheader
  %mmx = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 1
  %5 = add i32 %L, 1
  br label %for.body19

for.body9:                                        ; preds = %for.body9, %for.body9.lr.ph
  %indvars.iv250 = phi i64 [ %indvars.iv.next251, %for.body9 ], [ 0, %for.body9.lr.ph ]
  %6 = load i32*** %xmx, align 8, !tbaa !0
  %arrayidx11 = getelementptr inbounds i32** %6, i64 %indvars.iv250
  %7 = load i32** %arrayidx11, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds i32* %7, i64 4
  %8 = load i32* %arrayidx12, align 4, !tbaa !3
  %conv.i = sitofp i32 %8 to double
  %div1.i = fdiv double %conv.i, 0x40968AC7B8CC7DEF
  %call.i = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), double %div1.i) #5
  %indvars.iv.next251 = add i64 %indvars.iv250, 1
  %lftr.wideiv252 = trunc i64 %indvars.iv.next251 to i32
  %exitcond253 = icmp eq i32 %lftr.wideiv252, %3
  br i1 %exitcond253, label %for.cond16.preheader, label %for.body9

for.cond35.preheader:                             ; preds = %for.inc32
  %cmp37210 = icmp sgt i32 %14, 1
  br i1 %cmp37210, label %for.body39.lr.ph, label %for.end54

for.body39.lr.ph:                                 ; preds = %for.cond35.preheader
  %imx = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 2
  %9 = add i32 %L, 1
  br label %for.body39

for.body19:                                       ; preds = %for.inc32, %for.body19.lr.ph
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %for.inc32 ], [ 1, %for.body19.lr.ph ]
  %10 = trunc i64 %indvars.iv248 to i32
  %call20 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i32 %10) #5
  br i1 %cmp7216, label %for.inc32, label %for.body24

for.body24:                                       ; preds = %for.body19, %for.body24
  %indvars.iv244 = phi i64 [ %indvars.iv.next245, %for.body24 ], [ 0, %for.body19 ]
  %11 = load i32*** %mmx, align 8, !tbaa !0
  %arrayidx27 = getelementptr inbounds i32** %11, i64 %indvars.iv244
  %12 = load i32** %arrayidx27, align 8, !tbaa !0
  %arrayidx28 = getelementptr inbounds i32* %12, i64 %indvars.iv248
  %13 = load i32* %arrayidx28, align 4, !tbaa !3
  %conv.i175 = sitofp i32 %13 to double
  %div1.i176 = fdiv double %conv.i175, 0x40968AC7B8CC7DEF
  %call.i177 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), double %div1.i176) #5
  %indvars.iv.next245 = add i64 %indvars.iv244, 1
  %lftr.wideiv246 = trunc i64 %indvars.iv.next245 to i32
  %exitcond247 = icmp eq i32 %lftr.wideiv246, %5
  br i1 %exitcond247, label %for.inc32, label %for.body24

for.inc32:                                        ; preds = %for.body24, %for.body19
  %indvars.iv.next249 = add i64 %indvars.iv248, 1
  %14 = load i32* %M, align 4, !tbaa !3
  %cmp17 = icmp slt i32 %10, %14
  br i1 %cmp17, label %for.body19, label %for.cond35.preheader

for.body39:                                       ; preds = %for.body39.lr.ph, %for.inc52
  %indvars.iv242 = phi i64 [ 1, %for.body39.lr.ph ], [ %indvars.iv.next243, %for.inc52 ]
  %15 = trunc i64 %indvars.iv242 to i32
  %call40 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i32 %15) #5
  br i1 %cmp7216, label %for.inc52, label %for.body44

for.body44:                                       ; preds = %for.body39, %for.body44
  %indvars.iv238 = phi i64 [ %indvars.iv.next239, %for.body44 ], [ 0, %for.body39 ]
  %16 = load i32*** %imx, align 8, !tbaa !0
  %arrayidx47 = getelementptr inbounds i32** %16, i64 %indvars.iv238
  %17 = load i32** %arrayidx47, align 8, !tbaa !0
  %arrayidx48 = getelementptr inbounds i32* %17, i64 %indvars.iv242
  %18 = load i32* %arrayidx48, align 4, !tbaa !3
  %conv.i178 = sitofp i32 %18 to double
  %div1.i179 = fdiv double %conv.i178, 0x40968AC7B8CC7DEF
  %call.i180 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), double %div1.i179) #5
  %indvars.iv.next239 = add i64 %indvars.iv238, 1
  %lftr.wideiv240 = trunc i64 %indvars.iv.next239 to i32
  %exitcond241 = icmp eq i32 %lftr.wideiv240, %9
  br i1 %exitcond241, label %for.inc52, label %for.body44

for.inc52:                                        ; preds = %for.body44, %for.body39
  %indvars.iv.next243 = add i64 %indvars.iv242, 1
  %19 = load i32* %M, align 4, !tbaa !3
  %20 = trunc i64 %indvars.iv.next243 to i32
  %cmp37 = icmp slt i32 %20, %19
  br i1 %cmp37, label %for.body39, label %for.end54

for.end54:                                        ; preds = %for.cond16.preheader, %for.inc52, %for.cond35.preheader
  %call55 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str6, i64 0, i64 0)) #5
  br i1 %cmp7216, label %for.end66.thread, label %for.body59.lr.ph

for.end66.thread:                                 ; preds = %for.end54
  %call67259 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str7, i64 0, i64 0)) #5
  br label %for.end78.thread

for.body59.lr.ph:                                 ; preds = %for.end54
  %xmx61 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 0
  %21 = add i32 %L, 1
  br label %for.body59

for.body59:                                       ; preds = %for.body59, %for.body59.lr.ph
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %for.body59 ], [ 0, %for.body59.lr.ph ]
  %22 = load i32*** %xmx61, align 8, !tbaa !0
  %arrayidx62 = getelementptr inbounds i32** %22, i64 %indvars.iv234
  %23 = load i32** %arrayidx62, align 8, !tbaa !0
  %arrayidx63 = getelementptr inbounds i32* %23, i64 1
  %24 = load i32* %arrayidx63, align 4, !tbaa !3
  %conv.i181 = sitofp i32 %24 to double
  %div1.i182 = fdiv double %conv.i181, 0x40968AC7B8CC7DEF
  %call.i183 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), double %div1.i182) #5
  %indvars.iv.next235 = add i64 %indvars.iv234, 1
  %lftr.wideiv236 = trunc i64 %indvars.iv.next235 to i32
  %exitcond237 = icmp eq i32 %lftr.wideiv236, %21
  br i1 %exitcond237, label %for.end66, label %for.body59

for.end66:                                        ; preds = %for.body59
  %call67 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str7, i64 0, i64 0)) #5
  br i1 %cmp7216, label %for.end78.thread, label %for.body71.lr.ph

for.body71.lr.ph:                                 ; preds = %for.end66
  %xmx73 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 0
  %25 = add i32 %L, 1
  br label %for.body71

for.body71:                                       ; preds = %for.body71, %for.body71.lr.ph
  %indvars.iv230 = phi i64 [ %indvars.iv.next231, %for.body71 ], [ 0, %for.body71.lr.ph ]
  %26 = load i32*** %xmx73, align 8, !tbaa !0
  %arrayidx74 = getelementptr inbounds i32** %26, i64 %indvars.iv230
  %27 = load i32** %arrayidx74, align 8, !tbaa !0
  %arrayidx75 = getelementptr inbounds i32* %27, i64 2
  %28 = load i32* %arrayidx75, align 4, !tbaa !3
  %conv.i184 = sitofp i32 %28 to double
  %div1.i185 = fdiv double %conv.i184, 0x40968AC7B8CC7DEF
  %call.i186 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), double %div1.i185) #5
  %indvars.iv.next231 = add i64 %indvars.iv230, 1
  %lftr.wideiv232 = trunc i64 %indvars.iv.next231 to i32
  %exitcond233 = icmp eq i32 %lftr.wideiv232, %25
  br i1 %exitcond233, label %for.end78, label %for.body71

for.end78.thread:                                 ; preds = %for.end66.thread, %for.end66
  %call79260 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str8, i64 0, i64 0)) #5
  br label %for.end90

for.end78:                                        ; preds = %for.body71
  %call79 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str8, i64 0, i64 0)) #5
  br i1 %cmp7216, label %for.end90.thread, label %for.body83.lr.ph

for.end90.thread:                                 ; preds = %for.end78
  %call91261 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str9, i64 0, i64 0)) #5
  br label %for.cond103.preheader

for.body83.lr.ph:                                 ; preds = %for.end78
  %xmx85 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 0
  %29 = add i32 %L, 1
  br label %for.body83

for.body83:                                       ; preds = %for.body83, %for.body83.lr.ph
  %indvars.iv226 = phi i64 [ %indvars.iv.next227, %for.body83 ], [ 0, %for.body83.lr.ph ]
  %30 = load i32*** %xmx85, align 8, !tbaa !0
  %arrayidx86 = getelementptr inbounds i32** %30, i64 %indvars.iv226
  %31 = load i32** %arrayidx86, align 8, !tbaa !0
  %arrayidx87 = getelementptr inbounds i32* %31, i64 3
  %32 = load i32* %arrayidx87, align 4, !tbaa !3
  %conv.i187 = sitofp i32 %32 to double
  %div1.i188 = fdiv double %conv.i187, 0x40968AC7B8CC7DEF
  %call.i189 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), double %div1.i188) #5
  %indvars.iv.next227 = add i64 %indvars.iv226, 1
  %lftr.wideiv228 = trunc i64 %indvars.iv.next227 to i32
  %exitcond229 = icmp eq i32 %lftr.wideiv228, %29
  br i1 %exitcond229, label %for.end90, label %for.body83

for.end90:                                        ; preds = %for.body83, %for.end78.thread
  %call91 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str9, i64 0, i64 0)) #5
  br i1 %cmp7216, label %for.cond103.preheader, label %for.body95.lr.ph

for.body95.lr.ph:                                 ; preds = %for.end90
  %xmx97 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 0
  %33 = add i32 %L, 1
  br label %for.body95

for.cond103.preheader:                            ; preds = %for.body95, %for.end90.thread, %for.end90
  %34 = load i32* %M, align 4, !tbaa !3
  %cmp105198 = icmp sgt i32 %34, 2
  br i1 %cmp105198, label %for.body107.lr.ph, label %for.end122

for.body107.lr.ph:                                ; preds = %for.cond103.preheader
  %dmx = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 3
  %35 = add i32 %L, 1
  br label %for.body107

for.body95:                                       ; preds = %for.body95, %for.body95.lr.ph
  %indvars.iv222 = phi i64 [ %indvars.iv.next223, %for.body95 ], [ 0, %for.body95.lr.ph ]
  %36 = load i32*** %xmx97, align 8, !tbaa !0
  %arrayidx98 = getelementptr inbounds i32** %36, i64 %indvars.iv222
  %37 = load i32** %arrayidx98, align 8, !tbaa !0
  %38 = load i32* %37, align 4, !tbaa !3
  %conv.i190 = sitofp i32 %38 to double
  %div1.i191 = fdiv double %conv.i190, 0x40968AC7B8CC7DEF
  %call.i192 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), double %div1.i191) #5
  %indvars.iv.next223 = add i64 %indvars.iv222, 1
  %lftr.wideiv224 = trunc i64 %indvars.iv.next223 to i32
  %exitcond225 = icmp eq i32 %lftr.wideiv224, %33
  br i1 %exitcond225, label %for.cond103.preheader, label %for.body95

for.body107:                                      ; preds = %for.body107.lr.ph, %for.inc120
  %indvars.iv220 = phi i64 [ 2, %for.body107.lr.ph ], [ %indvars.iv.next221, %for.inc120 ]
  %39 = trunc i64 %indvars.iv220 to i32
  %call108 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str10, i64 0, i64 0), i32 %39) #5
  br i1 %cmp7216, label %for.inc120, label %for.body112

for.body112:                                      ; preds = %for.body107, %for.body112
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body112 ], [ 0, %for.body107 ]
  %40 = load i32*** %dmx, align 8, !tbaa !0
  %arrayidx115 = getelementptr inbounds i32** %40, i64 %indvars.iv
  %41 = load i32** %arrayidx115, align 8, !tbaa !0
  %arrayidx116 = getelementptr inbounds i32* %41, i64 %indvars.iv220
  %42 = load i32* %arrayidx116, align 4, !tbaa !3
  %conv.i193 = sitofp i32 %42 to double
  %div1.i194 = fdiv double %conv.i193, 0x40968AC7B8CC7DEF
  %call.i195 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), double %div1.i194) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %35
  br i1 %exitcond, label %for.inc120, label %for.body112

for.inc120:                                       ; preds = %for.body112, %for.body107
  %indvars.iv.next221 = add i64 %indvars.iv220, 1
  %43 = load i32* %M, align 4, !tbaa !3
  %44 = trunc i64 %indvars.iv.next221 to i32
  %cmp105 = icmp slt i32 %44, %43
  br i1 %cmp105, label %for.body107, label %for.end122

for.end122:                                       ; preds = %for.inc120, %for.cond103.preheader
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([2 x i8]* @str, i64 0, i64 0))
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @PrintIscore(i32 %sc) #0 {
entry:
  %conv = sitofp i32 %sc to double
  %div1 = fdiv double %conv, 0x40968AC7B8CC7DEF
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), double %div1) #5
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #1

; Function Attrs: optsize
declare float @Score2Prob(i32, float) #2

; Function Attrs: nounwind
declare i32 @putchar(i32) #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { optsize }
attributes #5 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
