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
  tail call void @llvm.dbg.value(metadata !{%struct._Network* %network}, i64 0, metadata !117), !dbg !136
  tail call void @llvm.dbg.value(metadata !{i32 %node}, i64 0, metadata !118), !dbg !137
  tail call void @llvm.dbg.value(metadata !{i32 %delta}, i64 0, metadata !119), !dbg !138
  tail call void @llvm.dbg.value(metadata !{i32 %tag}, i64 0, metadata !120), !dbg !139
  tail call void @llvm.dbg.value(metadata !{%struct._Ideq* %deq}, i64 0, metadata !121), !dbg !140
  tail call void @llvm.dbg.value(metadata !{i32* %tags}, i64 0, metadata !122), !dbg !141
  tail call void @llvm.dbg.value(metadata !{i32* %deltas}, i64 0, metadata !123), !dbg !142
  tail call void @llvm.dbg.value(metadata !{i32* %pred}, i64 0, metadata !124), !dbg !143
  %cmp = icmp eq %struct._Network* %network, null, !dbg !144
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !144

lor.lhs.false:                                    ; preds = %entry
  %nnode1 = getelementptr inbounds %struct._Network* %network, i64 0, i32 0, !dbg !144
  %0 = load i32* %nnode1, align 4, !dbg !144, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !130), !dbg !144
  %cmp2 = icmp slt i32 %0, 1, !dbg !144
  %cmp4 = icmp slt i32 %node, 1, !dbg !144
  %or.cond = or i1 %cmp2, %cmp4, !dbg !144
  br i1 %or.cond, label %if.then, label %lor.lhs.false5, !dbg !144

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %sub = add nsw i32 %0, -1, !dbg !144
  %cmp6 = icmp sle i32 %sub, %node, !dbg !144
  %cmp8 = icmp eq %struct._Ideq* %deq, null, !dbg !144
  %or.cond234 = or i1 %cmp6, %cmp8, !dbg !144
  %cmp10 = icmp eq i32* %tags, null, !dbg !144
  %or.cond235 = or i1 %or.cond234, %cmp10, !dbg !144
  %cmp12 = icmp eq i32* %deltas, null, !dbg !144
  %or.cond236 = or i1 %or.cond235, %cmp12, !dbg !144
  %cmp14 = icmp eq i32* %pred, null, !dbg !144
  %or.cond237 = or i1 %or.cond236, %cmp14, !dbg !144
  br i1 %or.cond237, label %if.then, label %if.end, !dbg !144

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !148, !tbaa !150
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([81 x i8]* @.str, i64 0, i64 0), %struct._Network* %network, i32 %node, i32 %delta, i32 %tag, %struct._Ideq* %deq, i32* %tags, i32* %deltas, i32* %pred) #5, !dbg !148
  tail call void @exit(i32 -1) #6, !dbg !151
  unreachable, !dbg !151

if.end:                                           ; preds = %lor.lhs.false5
  %inheads15 = getelementptr inbounds %struct._Network* %network, i64 0, i32 3, !dbg !152
  %2 = load %struct._Arc*** %inheads15, align 8, !dbg !152, !tbaa !150
  tail call void @llvm.dbg.value(metadata !{%struct._Arc** %2}, i64 0, metadata !126), !dbg !152
  %outheads16 = getelementptr inbounds %struct._Network* %network, i64 0, i32 4, !dbg !153
  %3 = load %struct._Arc*** %outheads16, align 8, !dbg !153, !tbaa !150
  tail call void @llvm.dbg.value(metadata !{%struct._Arc** %3}, i64 0, metadata !127), !dbg !153
  %msglvl17 = getelementptr inbounds %struct._Network* %network, i64 0, i32 6, !dbg !154
  %4 = load i32* %msglvl17, align 4, !dbg !154, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !129), !dbg !154
  %msgFile18 = getelementptr inbounds %struct._Network* %network, i64 0, i32 7, !dbg !155
  %5 = load %struct._IO_FILE** %msgFile18, align 8, !dbg !155, !tbaa !150
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %5}, i64 0, metadata !128), !dbg !155
  %cmp19 = icmp sgt i32 %4, 2, !dbg !156
  br i1 %cmp19, label %if.then20, label %if.end23, !dbg !156

if.then20:                                        ; preds = %if.end
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([50 x i8]* @.str1, i64 0, i64 0), i32 %node) #5, !dbg !157
  %call22 = tail call i32 @fflush(%struct._IO_FILE* %5) #5, !dbg !159
  br label %if.end23, !dbg !160

if.end23:                                         ; preds = %if.then20, %if.end
  tail call void @Ideq_clear(%struct._Ideq* %deq) #5, !dbg !161
  %call24 = tail call i32 @Ideq_insertAtHead(%struct._Ideq* %deq, i32 %node) #5, !dbg !162
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !133), !dbg !163
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !132), !dbg !164
  %idxprom = sext i32 %node to i64, !dbg !165
  %arrayidx = getelementptr inbounds i32* %tags, i64 %idxprom, !dbg !165
  store i32 %tag, i32* %arrayidx, align 4, !dbg !165, !tbaa !145
  store i32 %tag, i32* %tags, align 4, !dbg !165, !tbaa !145
  %arrayidx29 = getelementptr inbounds i32* %deltas, i64 %idxprom, !dbg !166
  store i32 %delta, i32* %arrayidx29, align 4, !dbg !166, !tbaa !145
  %arrayidx31 = getelementptr inbounds i32* %pred, i64 %idxprom, !dbg !167
  store i32 0, i32* %arrayidx31, align 4, !dbg !167, !tbaa !145
  %idxprom32 = sext i32 %sub to i64, !dbg !168
  %arrayidx33 = getelementptr inbounds i32* %tags, i64 %idxprom32, !dbg !168
  %6 = load i32* %arrayidx33, align 4, !dbg !168, !tbaa !145
  %cmp34245 = icmp eq i32 %6, %tag, !dbg !168
  br i1 %cmp34245, label %return, label %while.body.lr.ph, !dbg !168

while.body.lr.ph:                                 ; preds = %if.end23
  %ntrav88 = getelementptr inbounds %struct._Network* %network, i64 0, i32 2, !dbg !169
  br label %while.body, !dbg !168

while.cond.loopexit:                              ; preds = %for.inc127, %for.end
  %7 = load i32* %arrayidx33, align 4, !dbg !168, !tbaa !145
  %cmp34 = icmp eq i32 %7, %tag, !dbg !168
  br i1 %cmp34, label %return, label %while.body, !dbg !168

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.loopexit
  %call35 = tail call i32 @Ideq_removeFromHead(%struct._Ideq* %deq) #5, !dbg !173
  tail call void @llvm.dbg.value(metadata !{i32 %call35}, i64 0, metadata !134), !dbg !173
  %cmp36 = icmp slt i32 %call35, 0, !dbg !174
  br i1 %cmp36, label %return, label %if.end38, !dbg !174

if.end38:                                         ; preds = %while.body
  br i1 %cmp19, label %if.then40, label %if.end42, !dbg !175

if.then40:                                        ; preds = %if.end38
  %call41 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([39 x i8]* @.str2, i64 0, i64 0), i32 %call35) #5, !dbg !176
  br label %if.end42, !dbg !178

if.end42:                                         ; preds = %if.then40, %if.end38
  %idxprom43 = sext i32 %call35 to i64, !dbg !179
  %arrayidx44 = getelementptr inbounds %struct._Arc** %3, i64 %idxprom43, !dbg !179
  %arc.0238 = load %struct._Arc** %arrayidx44, align 8, !dbg !179
  %cmp45239 = icmp eq %struct._Arc* %arc.0238, null, !dbg !179
  br i1 %cmp45239, label %for.end, label %for.body.lr.ph, !dbg !179

for.body.lr.ph:                                   ; preds = %if.end42
  %arrayidx60 = getelementptr inbounds i32* %deltas, i64 %idxprom43, !dbg !181
  br label %for.body, !dbg !179

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %arc.0240 = phi %struct._Arc* [ %arc.0238, %for.body.lr.ph ], [ %arc.0, %for.inc ]
  %8 = load i32* %ntrav88, align 4, !dbg !184, !tbaa !145
  %inc = add nsw i32 %8, 1, !dbg !184
  store i32 %inc, i32* %ntrav88, align 4, !dbg !184, !tbaa !145
  %second = getelementptr inbounds %struct._Arc* %arc.0240, i64 0, i32 1, !dbg !185
  %9 = load i32* %second, align 4, !dbg !185, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !135), !dbg !185
  br i1 %cmp19, label %if.then47, label %if.end50, !dbg !186

if.then47:                                        ; preds = %for.body
  %first = getelementptr inbounds %struct._Arc* %arc.0240, i64 0, i32 0, !dbg !187
  %10 = load i32* %first, align 4, !dbg !187, !tbaa !145
  %flow = getelementptr inbounds %struct._Arc* %arc.0240, i64 0, i32 3, !dbg !187
  %11 = load i32* %flow, align 4, !dbg !187, !tbaa !145
  %capacity = getelementptr inbounds %struct._Arc* %arc.0240, i64 0, i32 2, !dbg !187
  %12 = load i32* %capacity, align 4, !dbg !187, !tbaa !145
  %call49 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([43 x i8]* @.str3, i64 0, i64 0), i32 %10, i32 %9, i32 %11, i32 %12) #5, !dbg !187
  br label %if.end50, !dbg !189

if.end50:                                         ; preds = %if.then47, %for.body
  %idxprom51 = sext i32 %9 to i64, !dbg !190
  %arrayidx52 = getelementptr inbounds i32* %tags, i64 %idxprom51, !dbg !190
  %13 = load i32* %arrayidx52, align 4, !dbg !190, !tbaa !145
  %cmp53 = icmp eq i32 %13, %tag, !dbg !190
  br i1 %cmp53, label %for.inc, label %land.lhs.true, !dbg !190

land.lhs.true:                                    ; preds = %if.end50
  %capacity54 = getelementptr inbounds %struct._Arc* %arc.0240, i64 0, i32 2, !dbg !190
  %14 = load i32* %capacity54, align 4, !dbg !190, !tbaa !145
  %flow55 = getelementptr inbounds %struct._Arc* %arc.0240, i64 0, i32 3, !dbg !190
  %15 = load i32* %flow55, align 4, !dbg !190, !tbaa !145
  %sub56 = sub nsw i32 %14, %15, !dbg !190
  tail call void @llvm.dbg.value(metadata !{i32 %sub56}, i64 0, metadata !131), !dbg !190
  %cmp57 = icmp sgt i32 %sub56, 0, !dbg !190
  br i1 %cmp57, label %if.then58, label %for.inc, !dbg !190

if.then58:                                        ; preds = %land.lhs.true
  %16 = load i32* %arrayidx60, align 4, !dbg !181, !tbaa !145
  %cmp61 = icmp sgt i32 %sub56, %16, !dbg !181
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !131), !dbg !191
  %.sub56 = select i1 %cmp61, i32 %16, i32 %sub56, !dbg !181
  %arrayidx67 = getelementptr inbounds i32* %deltas, i64 %idxprom51, !dbg !193
  store i32 %.sub56, i32* %arrayidx67, align 4, !dbg !193, !tbaa !145
  br i1 %cmp19, label %if.then69, label %if.end73, !dbg !194

if.then69:                                        ; preds = %if.then58
  %call72 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([29 x i8]* @.str4, i64 0, i64 0), i32 %.sub56) #5, !dbg !195
  br label %if.end73, !dbg !197

if.end73:                                         ; preds = %if.then69, %if.then58
  store i32 %tag, i32* %arrayidx52, align 4, !dbg !198, !tbaa !145
  %arrayidx77 = getelementptr inbounds i32* %pred, i64 %idxprom51, !dbg !199
  store i32 %call35, i32* %arrayidx77, align 4, !dbg !199, !tbaa !145
  %cmp78 = icmp eq i32 %9, %sub, !dbg !200
  br i1 %cmp78, label %return, label %if.end80, !dbg !200

if.end80:                                         ; preds = %if.end73
  %call81 = tail call i32 @Ideq_insertAtHead(%struct._Ideq* %deq, i32 %9) #5, !dbg !201
  br label %for.inc, !dbg !202

for.inc:                                          ; preds = %if.end50, %land.lhs.true, %if.end80
  %nextOut = getelementptr inbounds %struct._Arc* %arc.0240, i64 0, i32 4, !dbg !179
  %arc.0 = load %struct._Arc** %nextOut, align 8, !dbg !179
  %cmp45 = icmp eq %struct._Arc* %arc.0, null, !dbg !179
  br i1 %cmp45, label %for.end, label %for.body, !dbg !179

for.end:                                          ; preds = %for.inc, %if.end42
  %arrayidx84 = getelementptr inbounds %struct._Arc** %2, i64 %idxprom43, !dbg !203
  %arc.1241 = load %struct._Arc** %arrayidx84, align 8, !dbg !203
  %cmp86242 = icmp eq %struct._Arc* %arc.1241, null, !dbg !203
  br i1 %cmp86242, label %while.cond.loopexit, label %for.body87.lr.ph, !dbg !203

for.body87.lr.ph:                                 ; preds = %for.end
  %arrayidx107 = getelementptr inbounds i32* %deltas, i64 %idxprom43, !dbg !204
  br label %for.body87, !dbg !203

for.body87:                                       ; preds = %for.inc127, %for.body87.lr.ph
  %arc.1243 = phi %struct._Arc* [ %arc.1241, %for.body87.lr.ph ], [ %arc.1, %for.inc127 ]
  %17 = load i32* %ntrav88, align 4, !dbg !169, !tbaa !145
  %inc89 = add nsw i32 %17, 1, !dbg !169
  store i32 %inc89, i32* %ntrav88, align 4, !dbg !169, !tbaa !145
  %first90 = getelementptr inbounds %struct._Arc* %arc.1243, i64 0, i32 0, !dbg !206
  %18 = load i32* %first90, align 4, !dbg !206, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !135), !dbg !206
  br i1 %cmp19, label %if.then92, label %if.end98, !dbg !207

if.then92:                                        ; preds = %for.body87
  %second94 = getelementptr inbounds %struct._Arc* %arc.1243, i64 0, i32 1, !dbg !208
  %19 = load i32* %second94, align 4, !dbg !208, !tbaa !145
  %flow95 = getelementptr inbounds %struct._Arc* %arc.1243, i64 0, i32 3, !dbg !208
  %20 = load i32* %flow95, align 4, !dbg !208, !tbaa !145
  %capacity96 = getelementptr inbounds %struct._Arc* %arc.1243, i64 0, i32 2, !dbg !208
  %21 = load i32* %capacity96, align 4, !dbg !208, !tbaa !145
  %call97 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([42 x i8]* @.str5, i64 0, i64 0), i32 %18, i32 %19, i32 %20, i32 %21) #5, !dbg !208
  br label %if.end98, !dbg !210

if.end98:                                         ; preds = %if.then92, %for.body87
  %idxprom99 = sext i32 %18 to i64, !dbg !211
  %arrayidx100 = getelementptr inbounds i32* %tags, i64 %idxprom99, !dbg !211
  %22 = load i32* %arrayidx100, align 4, !dbg !211, !tbaa !145
  %cmp101 = icmp eq i32 %22, %tag, !dbg !211
  br i1 %cmp101, label %for.inc127, label %land.lhs.true102, !dbg !211

land.lhs.true102:                                 ; preds = %if.end98
  %flow103 = getelementptr inbounds %struct._Arc* %arc.1243, i64 0, i32 3, !dbg !211
  %23 = load i32* %flow103, align 4, !dbg !211, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %23}, i64 0, metadata !131), !dbg !211
  %cmp104 = icmp sgt i32 %23, 0, !dbg !211
  br i1 %cmp104, label %if.then105, label %for.inc127, !dbg !211

if.then105:                                       ; preds = %land.lhs.true102
  %24 = load i32* %arrayidx107, align 4, !dbg !204, !tbaa !145
  %cmp108 = icmp sgt i32 %23, %24, !dbg !204
  tail call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !131), !dbg !212
  %. = select i1 %cmp108, i32 %24, i32 %23, !dbg !204
  %arrayidx114 = getelementptr inbounds i32* %deltas, i64 %idxprom99, !dbg !214
  store i32 %., i32* %arrayidx114, align 4, !dbg !214, !tbaa !145
  br i1 %cmp19, label %if.then116, label %if.end120, !dbg !215

if.then116:                                       ; preds = %if.then105
  %call119 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([29 x i8]* @.str4, i64 0, i64 0), i32 %.) #5, !dbg !216
  br label %if.end120, !dbg !218

if.end120:                                        ; preds = %if.then116, %if.then105
  store i32 %tag, i32* %arrayidx100, align 4, !dbg !219, !tbaa !145
  %arrayidx124 = getelementptr inbounds i32* %pred, i64 %idxprom99, !dbg !220
  store i32 %call35, i32* %arrayidx124, align 4, !dbg !220, !tbaa !145
  %call125 = tail call i32 @Ideq_insertAtTail(%struct._Ideq* %deq, i32 %18) #5, !dbg !221
  br label %for.inc127, !dbg !222

for.inc127:                                       ; preds = %if.end98, %land.lhs.true102, %if.end120
  %nextIn = getelementptr inbounds %struct._Arc* %arc.1243, i64 0, i32 5, !dbg !203
  %arc.1 = load %struct._Arc** %nextIn, align 8, !dbg !203
  %cmp86 = icmp eq %struct._Arc* %arc.1, null, !dbg !203
  br i1 %cmp86, label %while.cond.loopexit, label %for.body87, !dbg !203

return:                                           ; preds = %if.end23, %while.body, %while.cond.loopexit, %if.end73
  %retval.0 = phi i32 [ %.sub56, %if.end73 ], [ 0, %while.cond.loopexit ], [ 0, %while.body ], [ 0, %if.end23 ]
  ret i32 %retval.0, !dbg !223
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

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findAugmentingPath.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findAugmentingPath.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Network_findAugmentingPath", metadata !"Network_findAugmentingPath", metadata !"", i32 24, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Network*, i32, i32, i32, %struct._Ideq*, i32*, i32*, i32*)* @Network_findAugmentingPath, null, null, metadata !116, i32 33} ; [ DW_TAG_subprogram ] [line 24] [def] [scope 33] [Network_findAugmentingPath]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findAugmentingPath.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !8, metadata !8, metadata !8, metadata !98, metadata !115, metadata !115, metadata !115}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Network]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"Network", i32 12, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [Network] [line 12, size 0, align 0, offset 0] [from _Network]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_Network", i32 34, i64 448, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Network] [line 34, size 448, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/../Network.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !17, metadata !29, metadata !30, metadata !39, metadata !40}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nnode", i32 35, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [nnode] [line 35, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"narc", i32 36, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [narc] [line 36, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"ntrav", i32 37, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [ntrav] [line 37, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"inheads", i32 38, i64 64, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [inheads] [line 38, size 64, align 64, offset 128] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Arc]
!20 = metadata !{i32 786454, metadata !12, null, metadata !"Arc", i32 13, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [Arc] [line 13, size 0, align 0, offset 0] [from _Arc]
!21 = metadata !{i32 786451, metadata !12, null, metadata !"_Arc", i32 53, i64 256, i64 64, i32 0, i32 0, null, metadata !22, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Arc] [line 53, size 256, align 64, offset 0] [from ]
!22 = metadata !{metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28}
!23 = metadata !{i32 786445, metadata !12, metadata !21, metadata !"first", i32 54, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [first] [line 54, size 32, align 32, offset 0] [from int]
!24 = metadata !{i32 786445, metadata !12, metadata !21, metadata !"second", i32 55, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [second] [line 55, size 32, align 32, offset 32] [from int]
!25 = metadata !{i32 786445, metadata !12, metadata !21, metadata !"capacity", i32 56, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [capacity] [line 56, size 32, align 32, offset 64] [from int]
!26 = metadata !{i32 786445, metadata !12, metadata !21, metadata !"flow", i32 57, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [flow] [line 57, size 32, align 32, offset 96] [from int]
!27 = metadata !{i32 786445, metadata !12, metadata !21, metadata !"nextOut", i32 58, i64 64, i64 64, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [nextOut] [line 58, size 64, align 64, offset 128] [from ]
!28 = metadata !{i32 786445, metadata !12, metadata !21, metadata !"nextIn", i32 59, i64 64, i64 64, i64 192, i32 0, metadata !19} ; [ DW_TAG_member ] [nextIn] [line 59, size 64, align 64, offset 192] [from ]
!29 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"outheads", i32 39, i64 64, i64 64, i64 192, i32 0, metadata !18} ; [ DW_TAG_member ] [outheads] [line 39, size 64, align 64, offset 192] [from ]
!30 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"chunk", i32 40, i64 64, i64 64, i64 256, i32 0, metadata !31} ; [ DW_TAG_member ] [chunk] [line 40, size 64, align 64, offset 256] [from ]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ArcChunk]
!32 = metadata !{i32 786454, metadata !12, null, metadata !"ArcChunk", i32 14, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_typedef ] [ArcChunk] [line 14, size 0, align 0, offset 0] [from _ArcChunk]
!33 = metadata !{i32 786451, metadata !12, null, metadata !"_ArcChunk", i32 74, i64 192, i64 64, i32 0, i32 0, null, metadata !34, i32 0, null, null} ; [ DW_TAG_structure_type ] [_ArcChunk] [line 74, size 192, align 64, offset 0] [from ]
!34 = metadata !{metadata !35, metadata !36, metadata !37, metadata !38}
!35 = metadata !{i32 786445, metadata !12, metadata !33, metadata !"size", i32 75, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 75, size 32, align 32, offset 0] [from int]
!36 = metadata !{i32 786445, metadata !12, metadata !33, metadata !"inuse", i32 76, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [inuse] [line 76, size 32, align 32, offset 32] [from int]
!37 = metadata !{i32 786445, metadata !12, metadata !33, metadata !"base", i32 77, i64 64, i64 64, i64 64, i32 0, metadata !19} ; [ DW_TAG_member ] [base] [line 77, size 64, align 64, offset 64] [from ]
!38 = metadata !{i32 786445, metadata !12, metadata !33, metadata !"next", i32 78, i64 64, i64 64, i64 128, i32 0, metadata !31} ; [ DW_TAG_member ] [next] [line 78, size 64, align 64, offset 128] [from ]
!39 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"msglvl", i32 41, i64 32, i64 32, i64 320, i32 0, metadata !8} ; [ DW_TAG_member ] [msglvl] [line 41, size 32, align 32, offset 320] [from int]
!40 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"msgFile", i32 42, i64 64, i64 64, i64 384, i32 0, metadata !41} ; [ DW_TAG_member ] [msgFile] [line 42, size 64, align 64, offset 384] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!42 = metadata !{i32 786454, metadata !12, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!43 = metadata !{i32 786451, metadata !44, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !45, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!44 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!45 = metadata !{metadata !46, metadata !47, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !68, metadata !69, metadata !70, metadata !71, metadata !74, metadata !76, metadata !78, metadata !82, metadata !84, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !93, metadata !94}
!46 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!47 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !48} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!48 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!49 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!50 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !48} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!51 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !48} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!52 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !48} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!53 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !48} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!54 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !48} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!55 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !48} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!56 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !48} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!57 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !48} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!58 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !48} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!59 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !48} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!60 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !61} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!61 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!62 = metadata !{i32 786451, metadata !44, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !63, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!63 = metadata !{metadata !64, metadata !65, metadata !67}
!64 = metadata !{i32 786445, metadata !44, metadata !62, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!65 = metadata !{i32 786445, metadata !44, metadata !62, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !66} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!66 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!67 = metadata !{i32 786445, metadata !44, metadata !62, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!68 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !66} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!69 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !8} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!70 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!71 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !72} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!72 = metadata !{i32 786454, metadata !44, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!73 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!74 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !75} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!75 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!76 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !77} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!77 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!78 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !79} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!79 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !49, metadata !80, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!80 = metadata !{metadata !81}
!81 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!82 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !83} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!83 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!84 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !85} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!85 = metadata !{i32 786454, metadata !44, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!86 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !83} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!87 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !83} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!88 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !83} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!89 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !83} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!90 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !91} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!91 = metadata !{i32 786454, metadata !44, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!92 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!93 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !8} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!94 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !95} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!95 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !49, metadata !96, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!96 = metadata !{metadata !97}
!97 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!98 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !99} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Ideq]
!99 = metadata !{i32 786454, metadata !1, null, metadata !"Ideq", i32 19, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_typedef ] [Ideq] [line 19, size 0, align 0, offset 0] [from _Ideq]
!100 = metadata !{i32 786451, metadata !101, null, metadata !"_Ideq", i32 20, i64 320, i64 64, i32 0, i32 0, null, metadata !102, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Ideq] [line 20, size 320, align 64, offset 0] [from ]
!101 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/../../Ideq/Ideq.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!102 = metadata !{metadata !103, metadata !104, metadata !105, metadata !106}
!103 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"maxsize", i32 21, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 21, size 32, align 32, offset 0] [from int]
!104 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"head", i32 22, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [head] [line 22, size 32, align 32, offset 32] [from int]
!105 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"tail", i32 23, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [tail] [line 23, size 32, align 32, offset 64] [from int]
!106 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"iv", i32 24, i64 192, i64 64, i64 128, i32 0, metadata !107} ; [ DW_TAG_member ] [iv] [line 24, size 192, align 64, offset 128] [from IV]
!107 = metadata !{i32 786454, metadata !101, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !108} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!108 = metadata !{i32 786451, metadata !109, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !110, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!109 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!110 = metadata !{metadata !111, metadata !112, metadata !113, metadata !114}
!111 = metadata !{i32 786445, metadata !109, metadata !108, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!112 = metadata !{i32 786445, metadata !109, metadata !108, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!113 = metadata !{i32 786445, metadata !109, metadata !108, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!114 = metadata !{i32 786445, metadata !109, metadata !108, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !115} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!115 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!116 = metadata !{metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135}
!117 = metadata !{i32 786689, metadata !4, metadata !"network", metadata !5, i32 16777241, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [network] [line 25]
!118 = metadata !{i32 786689, metadata !4, metadata !"node", metadata !5, i32 33554458, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [node] [line 26]
!119 = metadata !{i32 786689, metadata !4, metadata !"delta", metadata !5, i32 50331675, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [delta] [line 27]
!120 = metadata !{i32 786689, metadata !4, metadata !"tag", metadata !5, i32 67108892, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tag] [line 28]
!121 = metadata !{i32 786689, metadata !4, metadata !"deq", metadata !5, i32 83886109, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [deq] [line 29]
!122 = metadata !{i32 786689, metadata !4, metadata !"tags", metadata !5, i32 100663326, metadata !115, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tags] [line 30]
!123 = metadata !{i32 786689, metadata !4, metadata !"deltas", metadata !5, i32 117440543, metadata !115, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [deltas] [line 31]
!124 = metadata !{i32 786689, metadata !4, metadata !"pred", metadata !5, i32 134217760, metadata !115, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pred] [line 32]
!125 = metadata !{i32 786688, metadata !4, metadata !"arc", metadata !5, i32 34, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arc] [line 34]
!126 = metadata !{i32 786688, metadata !4, metadata !"inheads", metadata !5, i32 35, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inheads] [line 35]
!127 = metadata !{i32 786688, metadata !4, metadata !"outheads", metadata !5, i32 35, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outheads] [line 35]
!128 = metadata !{i32 786688, metadata !4, metadata !"msgFile", metadata !5, i32 36, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msgFile] [line 36]
!129 = metadata !{i32 786688, metadata !4, metadata !"msglvl", metadata !5, i32 37, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msglvl] [line 37]
!130 = metadata !{i32 786688, metadata !4, metadata !"nnode", metadata !5, i32 37, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nnode] [line 37]
!131 = metadata !{i32 786688, metadata !4, metadata !"resid", metadata !5, i32 37, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [resid] [line 37]
!132 = metadata !{i32 786688, metadata !4, metadata !"sink", metadata !5, i32 37, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sink] [line 37]
!133 = metadata !{i32 786688, metadata !4, metadata !"source", metadata !5, i32 37, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [source] [line 37]
!134 = metadata !{i32 786688, metadata !4, metadata !"v", metadata !5, i32 37, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 37]
!135 = metadata !{i32 786688, metadata !4, metadata !"w", metadata !5, i32 37, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 37]
!136 = metadata !{i32 25, i32 0, metadata !4, null}
!137 = metadata !{i32 26, i32 0, metadata !4, null}
!138 = metadata !{i32 27, i32 0, metadata !4, null}
!139 = metadata !{i32 28, i32 0, metadata !4, null}
!140 = metadata !{i32 29, i32 0, metadata !4, null}
!141 = metadata !{i32 30, i32 0, metadata !4, null}
!142 = metadata !{i32 31, i32 0, metadata !4, null}
!143 = metadata !{i32 32, i32 0, metadata !4, null}
!144 = metadata !{i32 43, i32 0, metadata !4, null}
!145 = metadata !{metadata !"int", metadata !146}
!146 = metadata !{metadata !"omnipotent char", metadata !147}
!147 = metadata !{metadata !"Simple C/C++ TBAA"}
!148 = metadata !{i32 46, i32 0, metadata !149, null}
!149 = metadata !{i32 786443, metadata !1, metadata !4, i32 45, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findAugmentingPath.c]
!150 = metadata !{metadata !"any pointer", metadata !146}
!151 = metadata !{i32 50, i32 0, metadata !149, null}
!152 = metadata !{i32 52, i32 0, metadata !4, null}
!153 = metadata !{i32 53, i32 0, metadata !4, null}
!154 = metadata !{i32 54, i32 0, metadata !4, null}
!155 = metadata !{i32 55, i32 0, metadata !4, null}
!156 = metadata !{i32 56, i32 0, metadata !4, null}
!157 = metadata !{i32 57, i32 0, metadata !158, null}
!158 = metadata !{i32 786443, metadata !1, metadata !4, i32 56, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findAugmentingPath.c]
!159 = metadata !{i32 60, i32 0, metadata !158, null}
!160 = metadata !{i32 61, i32 0, metadata !158, null}
!161 = metadata !{i32 68, i32 0, metadata !4, null}
!162 = metadata !{i32 69, i32 0, metadata !4, null}
!163 = metadata !{i32 70, i32 0, metadata !4, null}
!164 = metadata !{i32 71, i32 0, metadata !4, null}
!165 = metadata !{i32 72, i32 0, metadata !4, null}
!166 = metadata !{i32 73, i32 0, metadata !4, null}
!167 = metadata !{i32 74, i32 0, metadata !4, null}
!168 = metadata !{i32 80, i32 0, metadata !4, null}
!169 = metadata !{i32 128, i32 0, metadata !170, null}
!170 = metadata !{i32 786443, metadata !1, metadata !171, i32 127, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findAugmentingPath.c]
!171 = metadata !{i32 786443, metadata !1, metadata !172, i32 127, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findAugmentingPath.c]
!172 = metadata !{i32 786443, metadata !1, metadata !4, i32 80, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findAugmentingPath.c]
!173 = metadata !{i32 81, i32 0, metadata !172, null}
!174 = metadata !{i32 82, i32 0, metadata !172, null}
!175 = metadata !{i32 90, i32 0, metadata !172, null}
!176 = metadata !{i32 91, i32 0, metadata !177, null}
!177 = metadata !{i32 786443, metadata !1, metadata !172, i32 90, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findAugmentingPath.c]
!178 = metadata !{i32 92, i32 0, metadata !177, null}
!179 = metadata !{i32 98, i32 0, metadata !180, null}
!180 = metadata !{i32 786443, metadata !1, metadata !172, i32 98, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findAugmentingPath.c]
!181 = metadata !{i32 106, i32 0, metadata !182, null}
!182 = metadata !{i32 786443, metadata !1, metadata !183, i32 105, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findAugmentingPath.c]
!183 = metadata !{i32 786443, metadata !1, metadata !180, i32 98, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findAugmentingPath.c]
!184 = metadata !{i32 99, i32 0, metadata !183, null}
!185 = metadata !{i32 100, i32 0, metadata !183, null}
!186 = metadata !{i32 101, i32 0, metadata !183, null}
!187 = metadata !{i32 102, i32 0, metadata !188, null}
!188 = metadata !{i32 786443, metadata !1, metadata !183, i32 101, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findAugmentingPath.c]
!189 = metadata !{i32 104, i32 0, metadata !188, null}
!190 = metadata !{i32 105, i32 0, metadata !183, null}
!191 = metadata !{i32 107, i32 0, metadata !192, null}
!192 = metadata !{i32 786443, metadata !1, metadata !182, i32 106, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findAugmentingPath.c]
!193 = metadata !{i32 109, i32 0, metadata !182, null}
!194 = metadata !{i32 110, i32 0, metadata !182, null}
!195 = metadata !{i32 111, i32 0, metadata !196, null}
!196 = metadata !{i32 786443, metadata !1, metadata !182, i32 110, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findAugmentingPath.c]
!197 = metadata !{i32 113, i32 0, metadata !196, null}
!198 = metadata !{i32 114, i32 0, metadata !182, null}
!199 = metadata !{i32 115, i32 0, metadata !182, null}
!200 = metadata !{i32 116, i32 0, metadata !182, null}
!201 = metadata !{i32 119, i32 0, metadata !182, null}
!202 = metadata !{i32 120, i32 0, metadata !182, null}
!203 = metadata !{i32 127, i32 0, metadata !171, null}
!204 = metadata !{i32 135, i32 0, metadata !205, null}
!205 = metadata !{i32 786443, metadata !1, metadata !170, i32 134, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findAugmentingPath.c]
!206 = metadata !{i32 129, i32 0, metadata !170, null}
!207 = metadata !{i32 130, i32 0, metadata !170, null}
!208 = metadata !{i32 131, i32 0, metadata !209, null}
!209 = metadata !{i32 786443, metadata !1, metadata !170, i32 130, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findAugmentingPath.c]
!210 = metadata !{i32 133, i32 0, metadata !209, null}
!211 = metadata !{i32 134, i32 0, metadata !170, null}
!212 = metadata !{i32 136, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !205, i32 135, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findAugmentingPath.c]
!214 = metadata !{i32 138, i32 0, metadata !205, null}
!215 = metadata !{i32 139, i32 0, metadata !205, null}
!216 = metadata !{i32 140, i32 0, metadata !217, null}
!217 = metadata !{i32 786443, metadata !1, metadata !205, i32 139, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findAugmentingPath.c]
!218 = metadata !{i32 142, i32 0, metadata !217, null}
!219 = metadata !{i32 143, i32 0, metadata !205, null}
!220 = metadata !{i32 144, i32 0, metadata !205, null}
!221 = metadata !{i32 145, i32 0, metadata !205, null}
!222 = metadata !{i32 146, i32 0, metadata !205, null}
!223 = metadata !{i32 154, i32 0, metadata !4, null}
