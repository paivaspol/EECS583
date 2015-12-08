; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_pseudo.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._BPG = type { i32, i32, %struct._Graph* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [61 x i8] c"\0A fatal error in BPG_pseudoperipheralnode(%p,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [67 x i8] c"\0A fatal error in BPG_levelStructure(%p,%d,%p,%p,%p,%d)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @BPG_pseudoperipheralnode(%struct._BPG* %bpg, i32 %seed) #0 {
entry:
  %cmp = icmp eq %struct._BPG* %bpg, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), %struct._BPG* null, i32 %seed) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %seed, 0
  %sub = sub nsw i32 0, %seed
  %sub.seed = select i1 %cmp1, i32 %sub, i32 %seed
  %nX = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 0
  %1 = load i32* %nX, align 4, !tbaa !3
  %nY = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 1
  %2 = load i32* %nY, align 4, !tbaa !3
  %add = add nsw i32 %2, %1
  %rem = srem i32 %sub.seed, %add
  %call7 = tail call i32* @IVinit(i32 %add, i32 -1) #4
  %3 = load i32* %nX, align 4, !tbaa !3
  %4 = load i32* %nY, align 4, !tbaa !3
  %add10 = add nsw i32 %4, %3
  %call11 = tail call i32* @IVinit(i32 %add10, i32 -1) #4
  %5 = load i32* %nX, align 4, !tbaa !3
  %6 = load i32* %nY, align 4, !tbaa !3
  %add14 = add nsw i32 %6, %5
  %call15 = tail call i32* @IVinit(i32 %add14, i32 -1) #4
  %call16 = tail call i32 @BPG_levelStructure(%struct._BPG* %bpg, i32 %rem, i32* %call7, i32* %call11, i32* %call15, i32 1) #6
  %idxprom.pn57 = sext i32 %call16 to i64
  %idxprom17.pn.in.in58 = getelementptr inbounds i32* %call7, i64 %idxprom.pn57
  %idxprom17.pn.in59 = load i32* %idxprom17.pn.in.in58, align 4
  %idxprom17.pn60 = sext i32 %idxprom17.pn.in59 to i64
  %rad.0.in61 = getelementptr inbounds i32* %call11, i64 %idxprom17.pn60
  %rad.062 = load i32* %rad.0.in61, align 4
  %cmp1963 = icmp sgt i32 %rad.062, 0
  br i1 %cmp1963, label %while.body, label %while.end

while.body:                                       ; preds = %if.end, %while.body
  %rad.066 = phi i32 [ %rad.0, %while.body ], [ %rad.062, %if.end ]
  %idxprom17.pn.in65 = phi i32 [ %idxprom17.pn.in, %while.body ], [ %idxprom17.pn.in59, %if.end ]
  %tag.064 = phi i32 [ %inc, %while.body ], [ 1, %if.end ]
  %inc = add nsw i32 %tag.064, 1
  %call20 = tail call i32 @BPG_levelStructure(%struct._BPG* %bpg, i32 %idxprom17.pn.in65, i32* %call7, i32* %call11, i32* %call15, i32 %inc) #6
  %idxprom.pn = sext i32 %call20 to i64
  %idxprom17.pn.in.in = getelementptr inbounds i32* %call7, i64 %idxprom.pn
  %idxprom17.pn.in = load i32* %idxprom17.pn.in.in, align 4
  %idxprom17.pn = sext i32 %idxprom17.pn.in to i64
  %rad.0.in = getelementptr inbounds i32* %call11, i64 %idxprom17.pn
  %rad.0 = load i32* %rad.0.in, align 4
  %cmp19 = icmp slt i32 %rad.066, %rad.0
  br i1 %cmp19, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %if.end
  %root.0.lcssa = phi i32 [ undef, %if.end ], [ %idxprom17.pn.in65, %while.body ]
  tail call void @IVfree(i32* %call7) #4
  tail call void @IVfree(i32* %call11) #4
  tail call void @IVfree(i32* %call15) #4
  ret i32 %root.0.lcssa
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @BPG_levelStructure(%struct._BPG* %bpg, i32 %root, i32* %list, i32* %dist, i32* %mark, i32 %tag) #0 {
entry:
  %usize = alloca i32, align 4
  %vsize = alloca i32, align 4
  %uadj = alloca i32*, align 8
  %vadj = alloca i32*, align 8
  %cmp = icmp eq %struct._BPG* %bpg, null
  %cmp1 = icmp slt i32 %root, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nX = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 0
  %0 = load i32* %nX, align 4, !tbaa !3
  %nY = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 1
  %1 = load i32* %nY, align 4, !tbaa !3
  %add = add nsw i32 %1, %0
  %cmp3 = icmp sle i32 %add, %root
  %cmp5 = icmp eq i32* %list, null
  %or.cond80 = or i1 %cmp3, %cmp5
  %cmp7 = icmp eq i32* %dist, null
  %or.cond81 = or i1 %or.cond80, %cmp7
  %cmp9 = icmp eq i32* %mark, null
  %or.cond82 = or i1 %or.cond81, %cmp9
  br i1 %or.cond82, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), %struct._BPG* %bpg, i32 %root, i32* %list, i32* %dist, i32* %mark, i32 %tag) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  store i32 %root, i32* %list, align 4, !tbaa !3
  %idxprom = sext i32 %root to i64
  %arrayidx10 = getelementptr inbounds i32* %dist, i64 %idxprom
  store i32 0, i32* %arrayidx10, align 4, !tbaa !3
  %arrayidx12 = getelementptr inbounds i32* %mark, i64 %idxprom
  store i32 %tag, i32* %arrayidx12, align 4, !tbaa !3
  %graph = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 2
  br label %while.body

while.cond.loopexit:                              ; preds = %for.inc41, %while.body
  %last.1.lcssa = phi i32 [ %last.091, %while.body ], [ %last.2.lcssa, %for.inc41 ]
  %3 = trunc i64 %indvars.iv94 to i32
  %cmp13 = icmp slt i32 %3, %last.1.lcssa
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.loopexit, %if.end
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %while.cond.loopexit ], [ 0, %if.end ]
  %last.091 = phi i32 [ %last.1.lcssa, %while.cond.loopexit ], [ 0, %if.end ]
  %indvars.iv.next95 = add i64 %indvars.iv94, 1
  %arrayidx15 = getelementptr inbounds i32* %list, i64 %indvars.iv94
  %4 = load i32* %arrayidx15, align 4, !tbaa !3
  %5 = load %struct._Graph** %graph, align 8, !tbaa !0
  call void @Graph_adjAndSize(%struct._Graph* %5, i32 %4, i32* %usize, i32** %uadj) #4
  %6 = load i32* %usize, align 4, !tbaa !3
  %cmp1686 = icmp sgt i32 %6, 0
  br i1 %cmp1686, label %for.body.lr.ph, label %while.cond.loopexit

for.body.lr.ph:                                   ; preds = %while.body
  %idxprom34 = sext i32 %4 to i64
  %arrayidx35 = getelementptr inbounds i32* %dist, i64 %idxprom34
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc41
  %indvars.iv92 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next93, %for.inc41 ]
  %last.187 = phi i32 [ %last.091, %for.body.lr.ph ], [ %last.2.lcssa, %for.inc41 ]
  %7 = load i32** %uadj, align 8, !tbaa !0
  %arrayidx18 = getelementptr inbounds i32* %7, i64 %indvars.iv92
  %8 = load i32* %arrayidx18, align 4, !tbaa !3
  %9 = load %struct._Graph** %graph, align 8, !tbaa !0
  call void @Graph_adjAndSize(%struct._Graph* %9, i32 %8, i32* %vsize, i32** %vadj) #4
  %10 = load i32* %vsize, align 4, !tbaa !3
  %cmp2183 = icmp sgt i32 %10, 0
  br i1 %cmp2183, label %for.body22.lr.ph, label %for.inc41

for.body22.lr.ph:                                 ; preds = %for.body
  %11 = load i32** %vadj, align 8, !tbaa !0
  br label %for.body22

for.body22:                                       ; preds = %for.body22.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body22.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %last.284 = phi i32 [ %last.187, %for.body22.lr.ph ], [ %last.3, %for.inc ]
  %arrayidx24 = getelementptr inbounds i32* %11, i64 %indvars.iv
  %12 = load i32* %arrayidx24, align 4, !tbaa !3
  %idxprom25 = sext i32 %12 to i64
  %arrayidx26 = getelementptr inbounds i32* %mark, i64 %idxprom25
  %13 = load i32* %arrayidx26, align 4, !tbaa !3
  %cmp27 = icmp eq i32 %13, %tag
  br i1 %cmp27, label %for.inc, label %if.then28

if.then28:                                        ; preds = %for.body22
  store i32 %tag, i32* %arrayidx26, align 4, !tbaa !3
  %inc31 = add nsw i32 %last.284, 1
  %idxprom32 = sext i32 %inc31 to i64
  %arrayidx33 = getelementptr inbounds i32* %list, i64 %idxprom32
  store i32 %12, i32* %arrayidx33, align 4, !tbaa !3
  %14 = load i32* %arrayidx35, align 4, !tbaa !3
  %add36 = add nsw i32 %14, 1
  %arrayidx38 = getelementptr inbounds i32* %dist, i64 %idxprom25
  store i32 %add36, i32* %arrayidx38, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body22, %if.then28
  %last.3 = phi i32 [ %inc31, %if.then28 ], [ %last.284, %for.body22 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %15 = trunc i64 %indvars.iv.next to i32
  %cmp21 = icmp slt i32 %15, %10
  br i1 %cmp21, label %for.body22, label %for.inc41

for.inc41:                                        ; preds = %for.inc, %for.body
  %last.2.lcssa = phi i32 [ %last.187, %for.body ], [ %last.3, %for.inc ]
  %indvars.iv.next93 = add i64 %indvars.iv92, 1
  %16 = load i32* %usize, align 4, !tbaa !3
  %17 = trunc i64 %indvars.iv.next93 to i32
  %cmp16 = icmp slt i32 %17, %16
  br i1 %cmp16, label %for.body, label %while.cond.loopexit

while.end:                                        ; preds = %while.cond.loopexit
  ret i32 %last.1.lcssa
}

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
