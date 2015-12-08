; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c'
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
@.str = private unnamed_addr constant [68 x i8] c"\0A fatal error in Network_findMincutFromSource(%p,%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [31 x i8] c"\0A Network_findMincutFromSource\00", align 1
@.str2 = private unnamed_addr constant [23 x i8] c"\0A checking out node %d\00", align 1
@.str3 = private unnamed_addr constant [43 x i8] c"\0A    out-arc (%d,%d), flow %d, capacity %d\00", align 1
@.str4 = private unnamed_addr constant [17 x i8] c", adding %d to X\00", align 1
@.str5 = private unnamed_addr constant [29 x i8] c"\0A    in-arc (%d,%d), flow %d\00", align 1
@.str6 = private unnamed_addr constant [31 x i8] c"\0A leaving FindMincutFromSource\00", align 1
@.str7 = private unnamed_addr constant [66 x i8] c"\0A fatal error in Network_findMincutFromSink(%p,%p,%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [29 x i8] c"\0A Network_findMincutFromSink\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Network_findMincutFromSource(%struct._Network* %network, %struct._Ideq* %deq, i32* %mark) #0 {
entry:
  %cmp = icmp eq %struct._Network* %network, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nnode1 = getelementptr inbounds %struct._Network* %network, i64 0, i32 0
  %0 = load i32* %nnode1, align 4, !tbaa !0
  %cmp2 = icmp slt i32 %0, 1
  %cmp4 = icmp eq %struct._Ideq* %deq, null
  %or.cond = or i1 %cmp2, %cmp4
  %cmp6 = icmp eq i32* %mark, null
  %or.cond147 = or i1 %or.cond, %cmp6
  br i1 %or.cond147, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([68 x i8]* @.str, i64 0, i64 0), %struct._Network* %network, %struct._Ideq* %deq, i32* %mark) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %inheads7 = getelementptr inbounds %struct._Network* %network, i64 0, i32 3
  %2 = load %struct._Arc*** %inheads7, align 8, !tbaa !3
  %outheads8 = getelementptr inbounds %struct._Network* %network, i64 0, i32 4
  %3 = load %struct._Arc*** %outheads8, align 8, !tbaa !3
  %msglvl9 = getelementptr inbounds %struct._Network* %network, i64 0, i32 6
  %4 = load i32* %msglvl9, align 4, !tbaa !0
  %msgFile10 = getelementptr inbounds %struct._Network* %network, i64 0, i32 7
  %5 = load %struct._IO_FILE** %msgFile10, align 8, !tbaa !3
  %cmp11 = icmp sgt i32 %4, 2
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str1, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %5)
  %call14 = tail call i32 @fflush(%struct._IO_FILE* %5) #5
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end
  tail call void @IVfill(i32 %0, i32* %mark, i32 2) #5
  store i32 1, i32* %mark, align 4, !tbaa !0
  tail call void @Ideq_clear(%struct._Ideq* %deq) #5
  %call16 = tail call i32 @Ideq_insertAtHead(%struct._Ideq* %deq, i32 0) #5
  %call17156 = tail call i32 @Ideq_removeFromHead(%struct._Ideq* %deq) #5
  %cmp18157 = icmp eq i32 %call17156, -1
  br i1 %cmp18157, label %while.end, label %while.body

while.cond.loopexit:                              ; preds = %for.inc78, %for.end
  %call17 = tail call i32 @Ideq_removeFromHead(%struct._Ideq* %deq) #5
  %cmp18 = icmp eq i32 %call17, -1
  br i1 %cmp18, label %while.end, label %while.body

while.body:                                       ; preds = %if.end15, %while.cond.loopexit
  %call17158 = phi i32 [ %call17, %while.cond.loopexit ], [ %call17156, %if.end15 ]
  br i1 %cmp11, label %if.then20, label %if.end23

if.then20:                                        ; preds = %while.body
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0), i32 %call17158) #5
  %call22 = tail call i32 @fflush(%struct._IO_FILE* %5) #5
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %while.body
  %idxprom24 = sext i32 %call17158 to i64
  %arrayidx25 = getelementptr inbounds %struct._Arc** %3, i64 %idxprom24
  %arc.0148 = load %struct._Arc** %arrayidx25, align 8
  %cmp26149 = icmp eq %struct._Arc* %arc.0148, null
  br i1 %cmp26149, label %for.end, label %for.body

for.body:                                         ; preds = %if.end23, %for.inc
  %arc.0150 = phi %struct._Arc* [ %arc.0, %for.inc ], [ %arc.0148, %if.end23 ]
  %second = getelementptr inbounds %struct._Arc* %arc.0150, i64 0, i32 1
  %7 = load i32* %second, align 4, !tbaa !0
  %idxprom27 = sext i32 %7 to i64
  %arrayidx28 = getelementptr inbounds i32* %mark, i64 %idxprom27
  %8 = load i32* %arrayidx28, align 4, !tbaa !0
  %cmp29 = icmp eq i32 %8, 1
  br i1 %cmp29, label %for.inc, label %if.then30

if.then30:                                        ; preds = %for.body
  %flow = getelementptr inbounds %struct._Arc* %arc.0150, i64 0, i32 3
  br i1 %cmp11, label %if.then32, label %if.then30.if.end35_crit_edge

if.then30.if.end35_crit_edge:                     ; preds = %if.then30
  %capacity37.pre = getelementptr inbounds %struct._Arc* %arc.0150, i64 0, i32 2
  br label %if.end35

if.then32:                                        ; preds = %if.then30
  %9 = load i32* %flow, align 4, !tbaa !0
  %capacity = getelementptr inbounds %struct._Arc* %arc.0150, i64 0, i32 2
  %10 = load i32* %capacity, align 4, !tbaa !0
  %call33 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([43 x i8]* @.str3, i64 0, i64 0), i32 %call17158, i32 %7, i32 %9, i32 %10) #5
  %call34 = tail call i32 @fflush(%struct._IO_FILE* %5) #5
  br label %if.end35

if.end35:                                         ; preds = %if.then30.if.end35_crit_edge, %if.then32
  %capacity37.pre-phi = phi i32* [ %capacity37.pre, %if.then30.if.end35_crit_edge ], [ %capacity, %if.then32 ]
  %11 = load i32* %flow, align 4, !tbaa !0
  %12 = load i32* %capacity37.pre-phi, align 4, !tbaa !0
  %cmp38 = icmp slt i32 %11, %12
  br i1 %cmp38, label %if.then39, label %for.inc

if.then39:                                        ; preds = %if.end35
  br i1 %cmp11, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.then39
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([17 x i8]* @.str4, i64 0, i64 0), i32 %7) #5
  %call43 = tail call i32 @fflush(%struct._IO_FILE* %5) #5
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.then39
  %call45 = tail call i32 @Ideq_insertAtTail(%struct._Ideq* %deq, i32 %7) #5
  store i32 1, i32* %arrayidx28, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end44, %if.end35
  %nextOut = getelementptr inbounds %struct._Arc* %arc.0150, i64 0, i32 4
  %arc.0 = load %struct._Arc** %nextOut, align 8
  %cmp26 = icmp eq %struct._Arc* %arc.0, null
  br i1 %cmp26, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end23
  %arrayidx51 = getelementptr inbounds %struct._Arc** %2, i64 %idxprom24
  %arc.1152 = load %struct._Arc** %arrayidx51, align 8
  %cmp53153 = icmp eq %struct._Arc* %arc.1152, null
  br i1 %cmp53153, label %while.cond.loopexit, label %for.body54

for.body54:                                       ; preds = %for.end, %for.inc78
  %arc.1154 = phi %struct._Arc* [ %arc.1, %for.inc78 ], [ %arc.1152, %for.end ]
  %first = getelementptr inbounds %struct._Arc* %arc.1154, i64 0, i32 0
  %13 = load i32* %first, align 4, !tbaa !0
  %idxprom55 = sext i32 %13 to i64
  %arrayidx56 = getelementptr inbounds i32* %mark, i64 %idxprom55
  %14 = load i32* %arrayidx56, align 4, !tbaa !0
  %cmp57 = icmp eq i32 %14, 1
  br i1 %cmp57, label %for.inc78, label %if.then58

if.then58:                                        ; preds = %for.body54
  %flow61 = getelementptr inbounds %struct._Arc* %arc.1154, i64 0, i32 3
  br i1 %cmp11, label %if.then60, label %if.end64

if.then60:                                        ; preds = %if.then58
  %15 = load i32* %flow61, align 4, !tbaa !0
  %call62 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([29 x i8]* @.str5, i64 0, i64 0), i32 %13, i32 %call17158, i32 %15) #5
  %call63 = tail call i32 @fflush(%struct._IO_FILE* %5) #5
  br label %if.end64

if.end64:                                         ; preds = %if.then58, %if.then60
  %16 = load i32* %flow61, align 4, !tbaa !0
  %cmp66 = icmp sgt i32 %16, 0
  br i1 %cmp66, label %if.then67, label %for.inc78

if.then67:                                        ; preds = %if.end64
  br i1 %cmp11, label %if.then69, label %if.end72

if.then69:                                        ; preds = %if.then67
  %call70 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([17 x i8]* @.str4, i64 0, i64 0), i32 %13) #5
  %call71 = tail call i32 @fflush(%struct._IO_FILE* %5) #5
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.then67
  %call73 = tail call i32 @Ideq_insertAtTail(%struct._Ideq* %deq, i32 %13) #5
  store i32 1, i32* %arrayidx56, align 4, !tbaa !0
  br label %for.inc78

for.inc78:                                        ; preds = %for.body54, %if.end72, %if.end64
  %nextIn = getelementptr inbounds %struct._Arc* %arc.1154, i64 0, i32 5
  %arc.1 = load %struct._Arc** %nextIn, align 8
  %cmp53 = icmp eq %struct._Arc* %arc.1, null
  br i1 %cmp53, label %while.cond.loopexit, label %for.body54

while.end:                                        ; preds = %while.cond.loopexit, %if.end15
  br i1 %cmp11, label %if.then81, label %if.end84

if.then81:                                        ; preds = %while.end
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str6, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %5)
  %call83 = tail call i32 @fflush(%struct._IO_FILE* %5) #5
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %while.end
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare void @IVfill(i32, i32*, i32) #3

; Function Attrs: optsize
declare void @Ideq_clear(%struct._Ideq*) #3

; Function Attrs: optsize
declare i32 @Ideq_insertAtHead(%struct._Ideq*, i32) #3

; Function Attrs: optsize
declare i32 @Ideq_removeFromHead(%struct._Ideq*) #3

; Function Attrs: optsize
declare i32 @Ideq_insertAtTail(%struct._Ideq*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @Network_findMincutFromSink(%struct._Network* %network, %struct._Ideq* %deq, i32* %mark) #0 {
entry:
  %cmp = icmp eq %struct._Network* %network, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nnode1 = getelementptr inbounds %struct._Network* %network, i64 0, i32 0
  %0 = load i32* %nnode1, align 4, !tbaa !0
  %cmp2 = icmp slt i32 %0, 1
  %cmp4 = icmp eq %struct._Ideq* %deq, null
  %or.cond = or i1 %cmp2, %cmp4
  %cmp6 = icmp eq i32* %mark, null
  %or.cond141 = or i1 %or.cond, %cmp6
  br i1 %or.cond141, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([66 x i8]* @.str7, i64 0, i64 0), %struct._Network* %network, %struct._Ideq* %deq, i32* %mark) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %sub = add nsw i32 %0, -1
  %inheads7 = getelementptr inbounds %struct._Network* %network, i64 0, i32 3
  %2 = load %struct._Arc*** %inheads7, align 8, !tbaa !3
  %outheads8 = getelementptr inbounds %struct._Network* %network, i64 0, i32 4
  %3 = load %struct._Arc*** %outheads8, align 8, !tbaa !3
  %msglvl9 = getelementptr inbounds %struct._Network* %network, i64 0, i32 6
  %4 = load i32* %msglvl9, align 4, !tbaa !0
  %msgFile10 = getelementptr inbounds %struct._Network* %network, i64 0, i32 7
  %5 = load %struct._IO_FILE** %msgFile10, align 8, !tbaa !3
  %cmp11 = icmp sgt i32 %4, 2
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str8, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %5)
  %call14 = tail call i32 @fflush(%struct._IO_FILE* %5) #5
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end
  tail call void @IVfill(i32 %0, i32* %mark, i32 1) #5
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32* %mark, i64 %idxprom
  store i32 2, i32* %arrayidx, align 4, !tbaa !0
  tail call void @Ideq_clear(%struct._Ideq* %deq) #5
  %call16 = tail call i32 @Ideq_insertAtHead(%struct._Ideq* %deq, i32 %sub) #5
  %call17150 = tail call i32 @Ideq_removeFromHead(%struct._Ideq* %deq) #5
  %cmp18151 = icmp eq i32 %call17150, -1
  br i1 %cmp18151, label %while.end, label %while.body

while.cond.loopexit:                              ; preds = %for.inc78, %for.end
  %call17 = tail call i32 @Ideq_removeFromHead(%struct._Ideq* %deq) #5
  %cmp18 = icmp eq i32 %call17, -1
  br i1 %cmp18, label %while.end, label %while.body

while.body:                                       ; preds = %if.end15, %while.cond.loopexit
  %call17152 = phi i32 [ %call17, %while.cond.loopexit ], [ %call17150, %if.end15 ]
  br i1 %cmp11, label %if.then20, label %if.end23

if.then20:                                        ; preds = %while.body
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0), i32 %call17152) #5
  %call22 = tail call i32 @fflush(%struct._IO_FILE* %5) #5
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %while.body
  %idxprom24 = sext i32 %call17152 to i64
  %arrayidx25 = getelementptr inbounds %struct._Arc** %3, i64 %idxprom24
  %arc.0142 = load %struct._Arc** %arrayidx25, align 8
  %cmp26143 = icmp eq %struct._Arc* %arc.0142, null
  br i1 %cmp26143, label %for.end, label %for.body

for.body:                                         ; preds = %if.end23, %for.inc
  %arc.0144 = phi %struct._Arc* [ %arc.0, %for.inc ], [ %arc.0142, %if.end23 ]
  %second = getelementptr inbounds %struct._Arc* %arc.0144, i64 0, i32 1
  %7 = load i32* %second, align 4, !tbaa !0
  %idxprom27 = sext i32 %7 to i64
  %arrayidx28 = getelementptr inbounds i32* %mark, i64 %idxprom27
  %8 = load i32* %arrayidx28, align 4, !tbaa !0
  %cmp29 = icmp eq i32 %8, 2
  br i1 %cmp29, label %for.inc, label %if.then30

if.then30:                                        ; preds = %for.body
  %flow = getelementptr inbounds %struct._Arc* %arc.0144, i64 0, i32 3
  br i1 %cmp11, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.then30
  %9 = load i32* %flow, align 4, !tbaa !0
  %capacity = getelementptr inbounds %struct._Arc* %arc.0144, i64 0, i32 2
  %10 = load i32* %capacity, align 4, !tbaa !0
  %call33 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([43 x i8]* @.str3, i64 0, i64 0), i32 %call17152, i32 %7, i32 %9, i32 %10) #5
  %call34 = tail call i32 @fflush(%struct._IO_FILE* %5) #5
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.then32
  %11 = load i32* %flow, align 4, !tbaa !0
  %cmp37 = icmp sgt i32 %11, 0
  br i1 %cmp37, label %if.then38, label %for.inc

if.then38:                                        ; preds = %if.end35
  br i1 %cmp11, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.then38
  %call41 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([17 x i8]* @.str4, i64 0, i64 0), i32 %7) #5
  %call42 = tail call i32 @fflush(%struct._IO_FILE* %5) #5
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.then38
  %call44 = tail call i32 @Ideq_insertAtTail(%struct._Ideq* %deq, i32 %7) #5
  store i32 2, i32* %arrayidx28, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end43, %if.end35
  %nextOut = getelementptr inbounds %struct._Arc* %arc.0144, i64 0, i32 4
  %arc.0 = load %struct._Arc** %nextOut, align 8
  %cmp26 = icmp eq %struct._Arc* %arc.0, null
  br i1 %cmp26, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end23
  %arrayidx50 = getelementptr inbounds %struct._Arc** %2, i64 %idxprom24
  %arc.1146 = load %struct._Arc** %arrayidx50, align 8
  %cmp52147 = icmp eq %struct._Arc* %arc.1146, null
  br i1 %cmp52147, label %while.cond.loopexit, label %for.body53

for.body53:                                       ; preds = %for.end, %for.inc78
  %arc.1148 = phi %struct._Arc* [ %arc.1, %for.inc78 ], [ %arc.1146, %for.end ]
  %first = getelementptr inbounds %struct._Arc* %arc.1148, i64 0, i32 0
  %12 = load i32* %first, align 4, !tbaa !0
  %idxprom54 = sext i32 %12 to i64
  %arrayidx55 = getelementptr inbounds i32* %mark, i64 %idxprom54
  %13 = load i32* %arrayidx55, align 4, !tbaa !0
  %cmp56 = icmp eq i32 %13, 2
  br i1 %cmp56, label %for.inc78, label %if.then57

if.then57:                                        ; preds = %for.body53
  %flow60 = getelementptr inbounds %struct._Arc* %arc.1148, i64 0, i32 3
  br i1 %cmp11, label %if.then59, label %if.end63

if.then59:                                        ; preds = %if.then57
  %14 = load i32* %flow60, align 4, !tbaa !0
  %call61 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([29 x i8]* @.str5, i64 0, i64 0), i32 %12, i32 %call17152, i32 %14) #5
  %call62 = tail call i32 @fflush(%struct._IO_FILE* %5) #5
  br label %if.end63

if.end63:                                         ; preds = %if.then57, %if.then59
  %15 = load i32* %flow60, align 4, !tbaa !0
  %capacity65 = getelementptr inbounds %struct._Arc* %arc.1148, i64 0, i32 2
  %16 = load i32* %capacity65, align 4, !tbaa !0
  %cmp66 = icmp slt i32 %15, %16
  br i1 %cmp66, label %if.then67, label %for.inc78

if.then67:                                        ; preds = %if.end63
  br i1 %cmp11, label %if.then69, label %if.end72

if.then69:                                        ; preds = %if.then67
  %call70 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([17 x i8]* @.str4, i64 0, i64 0), i32 %12) #5
  %call71 = tail call i32 @fflush(%struct._IO_FILE* %5) #5
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.then67
  %call73 = tail call i32 @Ideq_insertAtTail(%struct._Ideq* %deq, i32 %12) #5
  store i32 2, i32* %arrayidx55, align 4, !tbaa !0
  br label %for.inc78

for.inc78:                                        ; preds = %for.body53, %if.end72, %if.end63
  %nextIn = getelementptr inbounds %struct._Arc* %arc.1148, i64 0, i32 5
  %arc.1 = load %struct._Arc** %nextIn, align 8
  %cmp52 = icmp eq %struct._Arc* %arc.1, null
  br i1 %cmp52, label %while.cond.loopexit, label %for.body53

while.end:                                        ; preds = %while.cond.loopexit, %if.end15
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
