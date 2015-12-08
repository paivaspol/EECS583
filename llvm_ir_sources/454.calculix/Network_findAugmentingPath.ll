; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findAugmentingPath.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Network = type { i32, i32, i32, %struct._Arc**, %struct._Arc**, %struct._ArcChunk*, i32, %struct._IO_FILE* }
%struct._Arc = type { i32, i32, i32, i32, %struct._Arc*, %struct._Arc* }
%struct._ArcChunk = type { i32, i32, %struct._Arc*, %struct._ArcChunk* }
%struct._Ideq = type { i32, i32, i32, %struct._IV }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [81 x i8] c"\0A fatal error in Network_findAugmentingPath(%p,%d,%d,%d,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [50 x i8] c"\0A try to find augmenting path starting at node %d\00", align 1
@.str2 = private unnamed_addr constant [39 x i8] c"\0A node %d removed from head of dequeue\00", align 1
@.str3 = private unnamed_addr constant [43 x i8] c"\0A    out-arc (%d,%d), flow %d, capacity %d\00", align 1
@.str4 = private unnamed_addr constant [29 x i8] c", now a tree arc, delta = %d\00", align 1
@.str5 = private unnamed_addr constant [42 x i8] c"\0A    in-arc (%d,%d), flow %d, capacity %d\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Network_findAugmentingPath(%struct._Network* %network, i32 %node, i32 %delta, i32 %tag, %struct._Ideq* %deq, i32* %tags, i32* %deltas, i32* %pred) #0 {
entry:
  %cmp = icmp eq %struct._Network* %network, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nnode1 = getelementptr inbounds %struct._Network* %network, i64 0, i32 0
  %0 = load i32* %nnode1, align 4, !tbaa !0
  %cmp2 = icmp slt i32 %0, 1
  %cmp4 = icmp slt i32 %node, 1
  %or.cond = or i1 %cmp2, %cmp4
  br i1 %or.cond, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %sub = add nsw i32 %0, -1
  %cmp6 = icmp sle i32 %sub, %node
  %cmp8 = icmp eq %struct._Ideq* %deq, null
  %or.cond234 = or i1 %cmp6, %cmp8
  %cmp10 = icmp eq i32* %tags, null
  %or.cond235 = or i1 %or.cond234, %cmp10
  %cmp12 = icmp eq i32* %deltas, null
  %or.cond236 = or i1 %or.cond235, %cmp12
  %cmp14 = icmp eq i32* %pred, null
  %or.cond237 = or i1 %or.cond236, %cmp14
  br i1 %or.cond237, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([81 x i8]* @.str, i64 0, i64 0), %struct._Network* %network, i32 %node, i32 %delta, i32 %tag, %struct._Ideq* %deq, i32* %tags, i32* %deltas, i32* %pred) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false5
  %inheads15 = getelementptr inbounds %struct._Network* %network, i64 0, i32 3
  %2 = load %struct._Arc*** %inheads15, align 8, !tbaa !3
  %outheads16 = getelementptr inbounds %struct._Network* %network, i64 0, i32 4
  %3 = load %struct._Arc*** %outheads16, align 8, !tbaa !3
  %msglvl17 = getelementptr inbounds %struct._Network* %network, i64 0, i32 6
  %4 = load i32* %msglvl17, align 4, !tbaa !0
  %msgFile18 = getelementptr inbounds %struct._Network* %network, i64 0, i32 7
  %5 = load %struct._IO_FILE** %msgFile18, align 8, !tbaa !3
  %cmp19 = icmp sgt i32 %4, 2
  br i1 %cmp19, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([50 x i8]* @.str1, i64 0, i64 0), i32 %node) #4
  %call22 = tail call i32 @fflush(%struct._IO_FILE* %5) #4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end
  tail call void @Ideq_clear(%struct._Ideq* %deq) #4
  %call24 = tail call i32 @Ideq_insertAtHead(%struct._Ideq* %deq, i32 %node) #4
  %idxprom = sext i32 %node to i64
  %arrayidx = getelementptr inbounds i32* %tags, i64 %idxprom
  store i32 %tag, i32* %arrayidx, align 4, !tbaa !0
  store i32 %tag, i32* %tags, align 4, !tbaa !0
  %arrayidx29 = getelementptr inbounds i32* %deltas, i64 %idxprom
  store i32 %delta, i32* %arrayidx29, align 4, !tbaa !0
  %arrayidx31 = getelementptr inbounds i32* %pred, i64 %idxprom
  store i32 0, i32* %arrayidx31, align 4, !tbaa !0
  %idxprom32 = sext i32 %sub to i64
  %arrayidx33 = getelementptr inbounds i32* %tags, i64 %idxprom32
  %6 = load i32* %arrayidx33, align 4, !tbaa !0
  %cmp34245 = icmp eq i32 %6, %tag
  br i1 %cmp34245, label %return, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end23
  %ntrav88 = getelementptr inbounds %struct._Network* %network, i64 0, i32 2
  br label %while.body

while.cond.loopexit:                              ; preds = %for.inc127, %for.end
  %7 = load i32* %arrayidx33, align 4, !tbaa !0
  %cmp34 = icmp eq i32 %7, %tag
  br i1 %cmp34, label %return, label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.loopexit
  %call35 = tail call i32 @Ideq_removeFromHead(%struct._Ideq* %deq) #4
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %return, label %if.end38

if.end38:                                         ; preds = %while.body
  br i1 %cmp19, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end38
  %call41 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([39 x i8]* @.str2, i64 0, i64 0), i32 %call35) #4
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end38
  %idxprom43 = sext i32 %call35 to i64
  %arrayidx44 = getelementptr inbounds %struct._Arc** %3, i64 %idxprom43
  %arc.0238 = load %struct._Arc** %arrayidx44, align 8
  %cmp45239 = icmp eq %struct._Arc* %arc.0238, null
  br i1 %cmp45239, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end42
  %arrayidx60 = getelementptr inbounds i32* %deltas, i64 %idxprom43
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %arc.0240 = phi %struct._Arc* [ %arc.0238, %for.body.lr.ph ], [ %arc.0, %for.inc ]
  %8 = load i32* %ntrav88, align 4, !tbaa !0
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %ntrav88, align 4, !tbaa !0
  %second = getelementptr inbounds %struct._Arc* %arc.0240, i64 0, i32 1
  %9 = load i32* %second, align 4, !tbaa !0
  br i1 %cmp19, label %if.then47, label %if.end50

if.then47:                                        ; preds = %for.body
  %first = getelementptr inbounds %struct._Arc* %arc.0240, i64 0, i32 0
  %10 = load i32* %first, align 4, !tbaa !0
  %flow = getelementptr inbounds %struct._Arc* %arc.0240, i64 0, i32 3
  %11 = load i32* %flow, align 4, !tbaa !0
  %capacity = getelementptr inbounds %struct._Arc* %arc.0240, i64 0, i32 2
  %12 = load i32* %capacity, align 4, !tbaa !0
  %call49 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([43 x i8]* @.str3, i64 0, i64 0), i32 %10, i32 %9, i32 %11, i32 %12) #4
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %for.body
  %idxprom51 = sext i32 %9 to i64
  %arrayidx52 = getelementptr inbounds i32* %tags, i64 %idxprom51
  %13 = load i32* %arrayidx52, align 4, !tbaa !0
  %cmp53 = icmp eq i32 %13, %tag
  br i1 %cmp53, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end50
  %capacity54 = getelementptr inbounds %struct._Arc* %arc.0240, i64 0, i32 2
  %14 = load i32* %capacity54, align 4, !tbaa !0
  %flow55 = getelementptr inbounds %struct._Arc* %arc.0240, i64 0, i32 3
  %15 = load i32* %flow55, align 4, !tbaa !0
  %sub56 = sub nsw i32 %14, %15
  %cmp57 = icmp sgt i32 %sub56, 0
  br i1 %cmp57, label %if.then58, label %for.inc

if.then58:                                        ; preds = %land.lhs.true
  %16 = load i32* %arrayidx60, align 4, !tbaa !0
  %cmp61 = icmp sgt i32 %sub56, %16
  %.sub56 = select i1 %cmp61, i32 %16, i32 %sub56
  %arrayidx67 = getelementptr inbounds i32* %deltas, i64 %idxprom51
  store i32 %.sub56, i32* %arrayidx67, align 4, !tbaa !0
  br i1 %cmp19, label %if.then69, label %if.end73

if.then69:                                        ; preds = %if.then58
  %call72 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([29 x i8]* @.str4, i64 0, i64 0), i32 %.sub56) #4
  br label %if.end73

if.end73:                                         ; preds = %if.then69, %if.then58
  store i32 %tag, i32* %arrayidx52, align 4, !tbaa !0
  %arrayidx77 = getelementptr inbounds i32* %pred, i64 %idxprom51
  store i32 %call35, i32* %arrayidx77, align 4, !tbaa !0
  %cmp78 = icmp eq i32 %9, %sub
  br i1 %cmp78, label %return, label %if.end80

if.end80:                                         ; preds = %if.end73
  %call81 = tail call i32 @Ideq_insertAtHead(%struct._Ideq* %deq, i32 %9) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end50, %land.lhs.true, %if.end80
  %nextOut = getelementptr inbounds %struct._Arc* %arc.0240, i64 0, i32 4
  %arc.0 = load %struct._Arc** %nextOut, align 8
  %cmp45 = icmp eq %struct._Arc* %arc.0, null
  br i1 %cmp45, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end42
  %arrayidx84 = getelementptr inbounds %struct._Arc** %2, i64 %idxprom43
  %arc.1241 = load %struct._Arc** %arrayidx84, align 8
  %cmp86242 = icmp eq %struct._Arc* %arc.1241, null
  br i1 %cmp86242, label %while.cond.loopexit, label %for.body87.lr.ph

for.body87.lr.ph:                                 ; preds = %for.end
  %arrayidx107 = getelementptr inbounds i32* %deltas, i64 %idxprom43
  br label %for.body87

for.body87:                                       ; preds = %for.inc127, %for.body87.lr.ph
  %arc.1243 = phi %struct._Arc* [ %arc.1241, %for.body87.lr.ph ], [ %arc.1, %for.inc127 ]
  %17 = load i32* %ntrav88, align 4, !tbaa !0
  %inc89 = add nsw i32 %17, 1
  store i32 %inc89, i32* %ntrav88, align 4, !tbaa !0
  %first90 = getelementptr inbounds %struct._Arc* %arc.1243, i64 0, i32 0
  %18 = load i32* %first90, align 4, !tbaa !0
  br i1 %cmp19, label %if.then92, label %if.end98

if.then92:                                        ; preds = %for.body87
  %second94 = getelementptr inbounds %struct._Arc* %arc.1243, i64 0, i32 1
  %19 = load i32* %second94, align 4, !tbaa !0
  %flow95 = getelementptr inbounds %struct._Arc* %arc.1243, i64 0, i32 3
  %20 = load i32* %flow95, align 4, !tbaa !0
  %capacity96 = getelementptr inbounds %struct._Arc* %arc.1243, i64 0, i32 2
  %21 = load i32* %capacity96, align 4, !tbaa !0
  %call97 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([42 x i8]* @.str5, i64 0, i64 0), i32 %18, i32 %19, i32 %20, i32 %21) #4
  br label %if.end98

if.end98:                                         ; preds = %if.then92, %for.body87
  %idxprom99 = sext i32 %18 to i64
  %arrayidx100 = getelementptr inbounds i32* %tags, i64 %idxprom99
  %22 = load i32* %arrayidx100, align 4, !tbaa !0
  %cmp101 = icmp eq i32 %22, %tag
  br i1 %cmp101, label %for.inc127, label %land.lhs.true102

land.lhs.true102:                                 ; preds = %if.end98
  %flow103 = getelementptr inbounds %struct._Arc* %arc.1243, i64 0, i32 3
  %23 = load i32* %flow103, align 4, !tbaa !0
  %cmp104 = icmp sgt i32 %23, 0
  br i1 %cmp104, label %if.then105, label %for.inc127

if.then105:                                       ; preds = %land.lhs.true102
  %24 = load i32* %arrayidx107, align 4, !tbaa !0
  %cmp108 = icmp sgt i32 %23, %24
  %. = select i1 %cmp108, i32 %24, i32 %23
  %arrayidx114 = getelementptr inbounds i32* %deltas, i64 %idxprom99
  store i32 %., i32* %arrayidx114, align 4, !tbaa !0
  br i1 %cmp19, label %if.then116, label %if.end120

if.then116:                                       ; preds = %if.then105
  %call119 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([29 x i8]* @.str4, i64 0, i64 0), i32 %.) #4
  br label %if.end120

if.end120:                                        ; preds = %if.then116, %if.then105
  store i32 %tag, i32* %arrayidx100, align 4, !tbaa !0
  %arrayidx124 = getelementptr inbounds i32* %pred, i64 %idxprom99
  store i32 %call35, i32* %arrayidx124, align 4, !tbaa !0
  %call125 = tail call i32 @Ideq_insertAtTail(%struct._Ideq* %deq, i32 %18) #4
  br label %for.inc127

for.inc127:                                       ; preds = %if.end98, %land.lhs.true102, %if.end120
  %nextIn = getelementptr inbounds %struct._Arc* %arc.1243, i64 0, i32 5
  %arc.1 = load %struct._Arc** %nextIn, align 8
  %cmp86 = icmp eq %struct._Arc* %arc.1, null
  br i1 %cmp86, label %while.cond.loopexit, label %for.body87

return:                                           ; preds = %if.end23, %while.body, %while.cond.loopexit, %if.end73
  %retval.0 = phi i32 [ %.sub56, %if.end73 ], [ 0, %while.cond.loopexit ], [ 0, %while.body ], [ 0, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare void @Ideq_clear(%struct._Ideq*) #3

; Function Attrs: optsize
declare i32 @Ideq_insertAtHead(%struct._Ideq*, i32) #3

; Function Attrs: optsize
declare i32 @Ideq_removeFromHead(%struct._Ideq*) #3

; Function Attrs: optsize
declare i32 @Ideq_insertAtTail(%struct._Ideq*, i32) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
