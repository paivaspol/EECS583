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
  tail call void @llvm.dbg.value(metadata !{%struct._Network* %network}, i64 0, metadata !117), !dbg !143
  tail call void @llvm.dbg.value(metadata !{%struct._Ideq* %deq}, i64 0, metadata !118), !dbg !144
  tail call void @llvm.dbg.value(metadata !{i32* %mark}, i64 0, metadata !119), !dbg !145
  %cmp = icmp eq %struct._Network* %network, null, !dbg !146
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !146

lor.lhs.false:                                    ; preds = %entry
  %nnode1 = getelementptr inbounds %struct._Network* %network, i64 0, i32 0, !dbg !146
  %0 = load i32* %nnode1, align 4, !dbg !146, !tbaa !147
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !125), !dbg !146
  %cmp2 = icmp slt i32 %0, 1, !dbg !146
  %cmp4 = icmp eq %struct._Ideq* %deq, null, !dbg !146
  %or.cond = or i1 %cmp2, %cmp4, !dbg !146
  %cmp6 = icmp eq i32* %mark, null, !dbg !146
  %or.cond147 = or i1 %or.cond, %cmp6, !dbg !146
  br i1 %or.cond147, label %if.then, label %if.end, !dbg !146

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !150, !tbaa !152
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([68 x i8]* @.str, i64 0, i64 0), %struct._Network* %network, %struct._Ideq* %deq, i32* %mark) #6, !dbg !150
  tail call void @exit(i32 -1) #7, !dbg !153
  unreachable, !dbg !153

if.end:                                           ; preds = %lor.lhs.false
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !126), !dbg !154
  %inheads7 = getelementptr inbounds %struct._Network* %network, i64 0, i32 3, !dbg !155
  %2 = load %struct._Arc*** %inheads7, align 8, !dbg !155, !tbaa !152
  tail call void @llvm.dbg.value(metadata !{%struct._Arc** %2}, i64 0, metadata !121), !dbg !155
  %outheads8 = getelementptr inbounds %struct._Network* %network, i64 0, i32 4, !dbg !156
  %3 = load %struct._Arc*** %outheads8, align 8, !dbg !156, !tbaa !152
  tail call void @llvm.dbg.value(metadata !{%struct._Arc** %3}, i64 0, metadata !122), !dbg !156
  %msglvl9 = getelementptr inbounds %struct._Network* %network, i64 0, i32 6, !dbg !157
  %4 = load i32* %msglvl9, align 4, !dbg !157, !tbaa !147
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !124), !dbg !157
  %msgFile10 = getelementptr inbounds %struct._Network* %network, i64 0, i32 7, !dbg !158
  %5 = load %struct._IO_FILE** %msgFile10, align 8, !dbg !158, !tbaa !152
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %5}, i64 0, metadata !123), !dbg !158
  %cmp11 = icmp sgt i32 %4, 2, !dbg !159
  br i1 %cmp11, label %if.then12, label %if.end15, !dbg !159

if.then12:                                        ; preds = %if.end
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str1, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %5), !dbg !160
  %call14 = tail call i32 @fflush(%struct._IO_FILE* %5) #6, !dbg !162
  br label %if.end15, !dbg !163

if.end15:                                         ; preds = %if.then12, %if.end
  tail call void @IVfill(i32 %0, i32* %mark, i32 2) #6, !dbg !164
  store i32 1, i32* %mark, align 4, !dbg !165, !tbaa !147
  tail call void @Ideq_clear(%struct._Ideq* %deq) #6, !dbg !166
  %call16 = tail call i32 @Ideq_insertAtHead(%struct._Ideq* %deq, i32 0) #6, !dbg !167
  %call17156 = tail call i32 @Ideq_removeFromHead(%struct._Ideq* %deq) #6, !dbg !168
  tail call void @llvm.dbg.value(metadata !{i32 %call17156}, i64 0, metadata !127), !dbg !168
  %cmp18157 = icmp eq i32 %call17156, -1, !dbg !168
  br i1 %cmp18157, label %while.end, label %while.body, !dbg !168

while.cond.loopexit:                              ; preds = %for.inc78, %for.end
  %call17 = tail call i32 @Ideq_removeFromHead(%struct._Ideq* %deq) #6, !dbg !168
  tail call void @llvm.dbg.value(metadata !{i32 %call17158}, i64 0, metadata !127), !dbg !168
  %cmp18 = icmp eq i32 %call17, -1, !dbg !168
  br i1 %cmp18, label %while.end, label %while.body, !dbg !168

while.body:                                       ; preds = %if.end15, %while.cond.loopexit
  %call17158 = phi i32 [ %call17, %while.cond.loopexit ], [ %call17156, %if.end15 ]
  br i1 %cmp11, label %if.then20, label %if.end23, !dbg !169

if.then20:                                        ; preds = %while.body
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0), i32 %call17158) #6, !dbg !171
  %call22 = tail call i32 @fflush(%struct._IO_FILE* %5) #6, !dbg !173
  br label %if.end23, !dbg !174

if.end23:                                         ; preds = %if.then20, %while.body
  %idxprom24 = sext i32 %call17158 to i64, !dbg !175
  %arrayidx25 = getelementptr inbounds %struct._Arc** %3, i64 %idxprom24, !dbg !175
  %arc.0148 = load %struct._Arc** %arrayidx25, align 8, !dbg !175
  %cmp26149 = icmp eq %struct._Arc* %arc.0148, null, !dbg !175
  br i1 %cmp26149, label %for.end, label %for.body, !dbg !175

for.body:                                         ; preds = %if.end23, %for.inc
  %arc.0150 = phi %struct._Arc* [ %arc.0, %for.inc ], [ %arc.0148, %if.end23 ]
  %second = getelementptr inbounds %struct._Arc* %arc.0150, i64 0, i32 1, !dbg !177
  %7 = load i32* %second, align 4, !dbg !177, !tbaa !147
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !128), !dbg !177
  %idxprom27 = sext i32 %7 to i64, !dbg !179
  %arrayidx28 = getelementptr inbounds i32* %mark, i64 %idxprom27, !dbg !179
  %8 = load i32* %arrayidx28, align 4, !dbg !179, !tbaa !147
  %cmp29 = icmp eq i32 %8, 1, !dbg !179
  br i1 %cmp29, label %for.inc, label %if.then30, !dbg !179

if.then30:                                        ; preds = %for.body
  %flow = getelementptr inbounds %struct._Arc* %arc.0150, i64 0, i32 3, !dbg !180
  br i1 %cmp11, label %if.then32, label %if.then30.if.end35_crit_edge, !dbg !183

if.then30.if.end35_crit_edge:                     ; preds = %if.then30
  %capacity37.pre = getelementptr inbounds %struct._Arc* %arc.0150, i64 0, i32 2, !dbg !184
  br label %if.end35, !dbg !183

if.then32:                                        ; preds = %if.then30
  %9 = load i32* %flow, align 4, !dbg !180, !tbaa !147
  %capacity = getelementptr inbounds %struct._Arc* %arc.0150, i64 0, i32 2, !dbg !180
  %10 = load i32* %capacity, align 4, !dbg !180, !tbaa !147
  %call33 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([43 x i8]* @.str3, i64 0, i64 0), i32 %call17158, i32 %7, i32 %9, i32 %10) #6, !dbg !180
  %call34 = tail call i32 @fflush(%struct._IO_FILE* %5) #6, !dbg !185
  br label %if.end35, !dbg !186

if.end35:                                         ; preds = %if.then30.if.end35_crit_edge, %if.then32
  %capacity37.pre-phi = phi i32* [ %capacity37.pre, %if.then30.if.end35_crit_edge ], [ %capacity, %if.then32 ], !dbg !184
  %11 = load i32* %flow, align 4, !dbg !184, !tbaa !147
  %12 = load i32* %capacity37.pre-phi, align 4, !dbg !184, !tbaa !147
  %cmp38 = icmp slt i32 %11, %12, !dbg !184
  br i1 %cmp38, label %if.then39, label %for.inc, !dbg !184

if.then39:                                        ; preds = %if.end35
  br i1 %cmp11, label %if.then41, label %if.end44, !dbg !187

if.then41:                                        ; preds = %if.then39
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([17 x i8]* @.str4, i64 0, i64 0), i32 %7) #6, !dbg !189
  %call43 = tail call i32 @fflush(%struct._IO_FILE* %5) #6, !dbg !191
  br label %if.end44, !dbg !192

if.end44:                                         ; preds = %if.then41, %if.then39
  %call45 = tail call i32 @Ideq_insertAtTail(%struct._Ideq* %deq, i32 %7) #6, !dbg !193
  store i32 1, i32* %arrayidx28, align 4, !dbg !194, !tbaa !147
  br label %for.inc, !dbg !195

for.inc:                                          ; preds = %for.body, %if.end44, %if.end35
  %nextOut = getelementptr inbounds %struct._Arc* %arc.0150, i64 0, i32 4, !dbg !175
  %arc.0 = load %struct._Arc** %nextOut, align 8, !dbg !175
  %cmp26 = icmp eq %struct._Arc* %arc.0, null, !dbg !175
  br i1 %cmp26, label %for.end, label %for.body, !dbg !175

for.end:                                          ; preds = %for.inc, %if.end23
  %arrayidx51 = getelementptr inbounds %struct._Arc** %2, i64 %idxprom24, !dbg !196
  %arc.1152 = load %struct._Arc** %arrayidx51, align 8, !dbg !196
  %cmp53153 = icmp eq %struct._Arc* %arc.1152, null, !dbg !196
  br i1 %cmp53153, label %while.cond.loopexit, label %for.body54, !dbg !196

for.body54:                                       ; preds = %for.end, %for.inc78
  %arc.1154 = phi %struct._Arc* [ %arc.1, %for.inc78 ], [ %arc.1152, %for.end ]
  %first = getelementptr inbounds %struct._Arc* %arc.1154, i64 0, i32 0, !dbg !198
  %13 = load i32* %first, align 4, !dbg !198, !tbaa !147
  tail call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !128), !dbg !198
  %idxprom55 = sext i32 %13 to i64, !dbg !200
  %arrayidx56 = getelementptr inbounds i32* %mark, i64 %idxprom55, !dbg !200
  %14 = load i32* %arrayidx56, align 4, !dbg !200, !tbaa !147
  %cmp57 = icmp eq i32 %14, 1, !dbg !200
  br i1 %cmp57, label %for.inc78, label %if.then58, !dbg !200

if.then58:                                        ; preds = %for.body54
  %flow61 = getelementptr inbounds %struct._Arc* %arc.1154, i64 0, i32 3, !dbg !201
  br i1 %cmp11, label %if.then60, label %if.end64, !dbg !204

if.then60:                                        ; preds = %if.then58
  %15 = load i32* %flow61, align 4, !dbg !201, !tbaa !147
  %call62 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([29 x i8]* @.str5, i64 0, i64 0), i32 %13, i32 %call17158, i32 %15) #6, !dbg !201
  %call63 = tail call i32 @fflush(%struct._IO_FILE* %5) #6, !dbg !205
  br label %if.end64, !dbg !206

if.end64:                                         ; preds = %if.then58, %if.then60
  %16 = load i32* %flow61, align 4, !dbg !207, !tbaa !147
  %cmp66 = icmp sgt i32 %16, 0, !dbg !207
  br i1 %cmp66, label %if.then67, label %for.inc78, !dbg !207

if.then67:                                        ; preds = %if.end64
  br i1 %cmp11, label %if.then69, label %if.end72, !dbg !208

if.then69:                                        ; preds = %if.then67
  %call70 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([17 x i8]* @.str4, i64 0, i64 0), i32 %13) #6, !dbg !210
  %call71 = tail call i32 @fflush(%struct._IO_FILE* %5) #6, !dbg !212
  br label %if.end72, !dbg !213

if.end72:                                         ; preds = %if.then69, %if.then67
  %call73 = tail call i32 @Ideq_insertAtTail(%struct._Ideq* %deq, i32 %13) #6, !dbg !214
  store i32 1, i32* %arrayidx56, align 4, !dbg !215, !tbaa !147
  br label %for.inc78, !dbg !216

for.inc78:                                        ; preds = %for.body54, %if.end72, %if.end64
  %nextIn = getelementptr inbounds %struct._Arc* %arc.1154, i64 0, i32 5, !dbg !196
  %arc.1 = load %struct._Arc** %nextIn, align 8, !dbg !196
  %cmp53 = icmp eq %struct._Arc* %arc.1, null, !dbg !196
  br i1 %cmp53, label %while.cond.loopexit, label %for.body54, !dbg !196

while.end:                                        ; preds = %while.cond.loopexit, %if.end15
  br i1 %cmp11, label %if.then81, label %if.end84, !dbg !217

if.then81:                                        ; preds = %while.end
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str6, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %5), !dbg !218
  %call83 = tail call i32 @fflush(%struct._IO_FILE* %5) #6, !dbg !220
  br label %if.end84, !dbg !221

if.end84:                                         ; preds = %if.then81, %while.end
  ret void, !dbg !222
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
  tail call void @llvm.dbg.value(metadata !{%struct._Network* %network}, i64 0, metadata !131), !dbg !223
  tail call void @llvm.dbg.value(metadata !{%struct._Ideq* %deq}, i64 0, metadata !132), !dbg !224
  tail call void @llvm.dbg.value(metadata !{i32* %mark}, i64 0, metadata !133), !dbg !225
  %cmp = icmp eq %struct._Network* %network, null, !dbg !226
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !226

lor.lhs.false:                                    ; preds = %entry
  %nnode1 = getelementptr inbounds %struct._Network* %network, i64 0, i32 0, !dbg !226
  %0 = load i32* %nnode1, align 4, !dbg !226, !tbaa !147
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !139), !dbg !226
  %cmp2 = icmp slt i32 %0, 1, !dbg !226
  %cmp4 = icmp eq %struct._Ideq* %deq, null, !dbg !226
  %or.cond = or i1 %cmp2, %cmp4, !dbg !226
  %cmp6 = icmp eq i32* %mark, null, !dbg !226
  %or.cond141 = or i1 %or.cond, %cmp6, !dbg !226
  br i1 %or.cond141, label %if.then, label %if.end, !dbg !226

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !227, !tbaa !152
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([66 x i8]* @.str7, i64 0, i64 0), %struct._Network* %network, %struct._Ideq* %deq, i32* %mark) #6, !dbg !227
  tail call void @exit(i32 -1) #7, !dbg !229
  unreachable, !dbg !229

if.end:                                           ; preds = %lor.lhs.false
  %sub = add nsw i32 %0, -1, !dbg !230
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !140), !dbg !230
  %inheads7 = getelementptr inbounds %struct._Network* %network, i64 0, i32 3, !dbg !231
  %2 = load %struct._Arc*** %inheads7, align 8, !dbg !231, !tbaa !152
  tail call void @llvm.dbg.value(metadata !{%struct._Arc** %2}, i64 0, metadata !135), !dbg !231
  %outheads8 = getelementptr inbounds %struct._Network* %network, i64 0, i32 4, !dbg !232
  %3 = load %struct._Arc*** %outheads8, align 8, !dbg !232, !tbaa !152
  tail call void @llvm.dbg.value(metadata !{%struct._Arc** %3}, i64 0, metadata !136), !dbg !232
  %msglvl9 = getelementptr inbounds %struct._Network* %network, i64 0, i32 6, !dbg !233
  %4 = load i32* %msglvl9, align 4, !dbg !233, !tbaa !147
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !138), !dbg !233
  %msgFile10 = getelementptr inbounds %struct._Network* %network, i64 0, i32 7, !dbg !234
  %5 = load %struct._IO_FILE** %msgFile10, align 8, !dbg !234, !tbaa !152
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %5}, i64 0, metadata !137), !dbg !234
  %cmp11 = icmp sgt i32 %4, 2, !dbg !235
  br i1 %cmp11, label %if.then12, label %if.end15, !dbg !235

if.then12:                                        ; preds = %if.end
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str8, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %5), !dbg !236
  %call14 = tail call i32 @fflush(%struct._IO_FILE* %5) #6, !dbg !238
  br label %if.end15, !dbg !239

if.end15:                                         ; preds = %if.then12, %if.end
  tail call void @IVfill(i32 %0, i32* %mark, i32 1) #6, !dbg !240
  %idxprom = sext i32 %sub to i64, !dbg !241
  %arrayidx = getelementptr inbounds i32* %mark, i64 %idxprom, !dbg !241
  store i32 2, i32* %arrayidx, align 4, !dbg !241, !tbaa !147
  tail call void @Ideq_clear(%struct._Ideq* %deq) #6, !dbg !242
  %call16 = tail call i32 @Ideq_insertAtHead(%struct._Ideq* %deq, i32 %sub) #6, !dbg !243
  %call17150 = tail call i32 @Ideq_removeFromHead(%struct._Ideq* %deq) #6, !dbg !244
  tail call void @llvm.dbg.value(metadata !{i32 %call17150}, i64 0, metadata !141), !dbg !244
  %cmp18151 = icmp eq i32 %call17150, -1, !dbg !244
  br i1 %cmp18151, label %while.end, label %while.body, !dbg !244

while.cond.loopexit:                              ; preds = %for.inc78, %for.end
  %call17 = tail call i32 @Ideq_removeFromHead(%struct._Ideq* %deq) #6, !dbg !244
  tail call void @llvm.dbg.value(metadata !{i32 %call17152}, i64 0, metadata !141), !dbg !244
  %cmp18 = icmp eq i32 %call17, -1, !dbg !244
  br i1 %cmp18, label %while.end, label %while.body, !dbg !244

while.body:                                       ; preds = %if.end15, %while.cond.loopexit
  %call17152 = phi i32 [ %call17, %while.cond.loopexit ], [ %call17150, %if.end15 ]
  br i1 %cmp11, label %if.then20, label %if.end23, !dbg !245

if.then20:                                        ; preds = %while.body
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0), i32 %call17152) #6, !dbg !247
  %call22 = tail call i32 @fflush(%struct._IO_FILE* %5) #6, !dbg !249
  br label %if.end23, !dbg !250

if.end23:                                         ; preds = %if.then20, %while.body
  %idxprom24 = sext i32 %call17152 to i64, !dbg !251
  %arrayidx25 = getelementptr inbounds %struct._Arc** %3, i64 %idxprom24, !dbg !251
  %arc.0142 = load %struct._Arc** %arrayidx25, align 8, !dbg !251
  %cmp26143 = icmp eq %struct._Arc* %arc.0142, null, !dbg !251
  br i1 %cmp26143, label %for.end, label %for.body, !dbg !251

for.body:                                         ; preds = %if.end23, %for.inc
  %arc.0144 = phi %struct._Arc* [ %arc.0, %for.inc ], [ %arc.0142, %if.end23 ]
  %second = getelementptr inbounds %struct._Arc* %arc.0144, i64 0, i32 1, !dbg !253
  %7 = load i32* %second, align 4, !dbg !253, !tbaa !147
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !142), !dbg !253
  %idxprom27 = sext i32 %7 to i64, !dbg !255
  %arrayidx28 = getelementptr inbounds i32* %mark, i64 %idxprom27, !dbg !255
  %8 = load i32* %arrayidx28, align 4, !dbg !255, !tbaa !147
  %cmp29 = icmp eq i32 %8, 2, !dbg !255
  br i1 %cmp29, label %for.inc, label %if.then30, !dbg !255

if.then30:                                        ; preds = %for.body
  %flow = getelementptr inbounds %struct._Arc* %arc.0144, i64 0, i32 3, !dbg !256
  br i1 %cmp11, label %if.then32, label %if.end35, !dbg !259

if.then32:                                        ; preds = %if.then30
  %9 = load i32* %flow, align 4, !dbg !256, !tbaa !147
  %capacity = getelementptr inbounds %struct._Arc* %arc.0144, i64 0, i32 2, !dbg !256
  %10 = load i32* %capacity, align 4, !dbg !256, !tbaa !147
  %call33 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([43 x i8]* @.str3, i64 0, i64 0), i32 %call17152, i32 %7, i32 %9, i32 %10) #6, !dbg !256
  %call34 = tail call i32 @fflush(%struct._IO_FILE* %5) #6, !dbg !260
  br label %if.end35, !dbg !261

if.end35:                                         ; preds = %if.then30, %if.then32
  %11 = load i32* %flow, align 4, !dbg !262, !tbaa !147
  %cmp37 = icmp sgt i32 %11, 0, !dbg !262
  br i1 %cmp37, label %if.then38, label %for.inc, !dbg !262

if.then38:                                        ; preds = %if.end35
  br i1 %cmp11, label %if.then40, label %if.end43, !dbg !263

if.then40:                                        ; preds = %if.then38
  %call41 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([17 x i8]* @.str4, i64 0, i64 0), i32 %7) #6, !dbg !265
  %call42 = tail call i32 @fflush(%struct._IO_FILE* %5) #6, !dbg !267
  br label %if.end43, !dbg !268

if.end43:                                         ; preds = %if.then40, %if.then38
  %call44 = tail call i32 @Ideq_insertAtTail(%struct._Ideq* %deq, i32 %7) #6, !dbg !269
  store i32 2, i32* %arrayidx28, align 4, !dbg !270, !tbaa !147
  br label %for.inc, !dbg !271

for.inc:                                          ; preds = %for.body, %if.end43, %if.end35
  %nextOut = getelementptr inbounds %struct._Arc* %arc.0144, i64 0, i32 4, !dbg !251
  %arc.0 = load %struct._Arc** %nextOut, align 8, !dbg !251
  %cmp26 = icmp eq %struct._Arc* %arc.0, null, !dbg !251
  br i1 %cmp26, label %for.end, label %for.body, !dbg !251

for.end:                                          ; preds = %for.inc, %if.end23
  %arrayidx50 = getelementptr inbounds %struct._Arc** %2, i64 %idxprom24, !dbg !272
  %arc.1146 = load %struct._Arc** %arrayidx50, align 8, !dbg !272
  %cmp52147 = icmp eq %struct._Arc* %arc.1146, null, !dbg !272
  br i1 %cmp52147, label %while.cond.loopexit, label %for.body53, !dbg !272

for.body53:                                       ; preds = %for.end, %for.inc78
  %arc.1148 = phi %struct._Arc* [ %arc.1, %for.inc78 ], [ %arc.1146, %for.end ]
  %first = getelementptr inbounds %struct._Arc* %arc.1148, i64 0, i32 0, !dbg !274
  %12 = load i32* %first, align 4, !dbg !274, !tbaa !147
  tail call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !142), !dbg !274
  %idxprom54 = sext i32 %12 to i64, !dbg !276
  %arrayidx55 = getelementptr inbounds i32* %mark, i64 %idxprom54, !dbg !276
  %13 = load i32* %arrayidx55, align 4, !dbg !276, !tbaa !147
  %cmp56 = icmp eq i32 %13, 2, !dbg !276
  br i1 %cmp56, label %for.inc78, label %if.then57, !dbg !276

if.then57:                                        ; preds = %for.body53
  %flow60 = getelementptr inbounds %struct._Arc* %arc.1148, i64 0, i32 3, !dbg !277
  br i1 %cmp11, label %if.then59, label %if.end63, !dbg !280

if.then59:                                        ; preds = %if.then57
  %14 = load i32* %flow60, align 4, !dbg !277, !tbaa !147
  %call61 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([29 x i8]* @.str5, i64 0, i64 0), i32 %12, i32 %call17152, i32 %14) #6, !dbg !277
  %call62 = tail call i32 @fflush(%struct._IO_FILE* %5) #6, !dbg !281
  br label %if.end63, !dbg !282

if.end63:                                         ; preds = %if.then57, %if.then59
  %15 = load i32* %flow60, align 4, !dbg !283, !tbaa !147
  %capacity65 = getelementptr inbounds %struct._Arc* %arc.1148, i64 0, i32 2, !dbg !283
  %16 = load i32* %capacity65, align 4, !dbg !283, !tbaa !147
  %cmp66 = icmp slt i32 %15, %16, !dbg !283
  br i1 %cmp66, label %if.then67, label %for.inc78, !dbg !283

if.then67:                                        ; preds = %if.end63
  br i1 %cmp11, label %if.then69, label %if.end72, !dbg !284

if.then69:                                        ; preds = %if.then67
  %call70 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([17 x i8]* @.str4, i64 0, i64 0), i32 %12) #6, !dbg !286
  %call71 = tail call i32 @fflush(%struct._IO_FILE* %5) #6, !dbg !288
  br label %if.end72, !dbg !289

if.end72:                                         ; preds = %if.then69, %if.then67
  %call73 = tail call i32 @Ideq_insertAtTail(%struct._Ideq* %deq, i32 %12) #6, !dbg !290
  store i32 2, i32* %arrayidx55, align 4, !dbg !291, !tbaa !147
  br label %for.inc78, !dbg !292

for.inc78:                                        ; preds = %for.body53, %if.end72, %if.end63
  %nextIn = getelementptr inbounds %struct._Arc* %arc.1148, i64 0, i32 5, !dbg !272
  %arc.1 = load %struct._Arc** %nextIn, align 8, !dbg !272
  %cmp52 = icmp eq %struct._Arc* %arc.1, null, !dbg !272
  br i1 %cmp52, label %while.cond.loopexit, label %for.body53, !dbg !272

while.end:                                        ; preds = %while.cond.loopexit, %if.end15
  ret void, !dbg !293
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !129}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Network_findMincutFromSource", metadata !"Network_findMincutFromSource", metadata !"", i32 21, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Network*, %struct._Ideq*, i32*)* @Network_findMincutFromSource, null, null, metadata !116, i32 25} ; [ DW_TAG_subprogram ] [line 21] [def] [scope 25] [Network_findMincutFromSource]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !98, metadata !115}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Network]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"Network", i32 12, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Network] [line 12, size 0, align 0, offset 0] [from _Network]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_Network", i32 34, i64 448, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Network] [line 34, size 448, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/../Network.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !29, metadata !30, metadata !39, metadata !40}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nnode", i32 35, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nnode] [line 35, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"narc", i32 36, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [narc] [line 36, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ntrav", i32 37, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [ntrav] [line 37, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"inheads", i32 38, i64 64, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [inheads] [line 38, size 64, align 64, offset 128] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Arc]
!20 = metadata !{i32 786454, metadata !11, null, metadata !"Arc", i32 13, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [Arc] [line 13, size 0, align 0, offset 0] [from _Arc]
!21 = metadata !{i32 786451, metadata !11, null, metadata !"_Arc", i32 53, i64 256, i64 64, i32 0, i32 0, null, metadata !22, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Arc] [line 53, size 256, align 64, offset 0] [from ]
!22 = metadata !{metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28}
!23 = metadata !{i32 786445, metadata !11, metadata !21, metadata !"first", i32 54, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [first] [line 54, size 32, align 32, offset 0] [from int]
!24 = metadata !{i32 786445, metadata !11, metadata !21, metadata !"second", i32 55, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [second] [line 55, size 32, align 32, offset 32] [from int]
!25 = metadata !{i32 786445, metadata !11, metadata !21, metadata !"capacity", i32 56, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [capacity] [line 56, size 32, align 32, offset 64] [from int]
!26 = metadata !{i32 786445, metadata !11, metadata !21, metadata !"flow", i32 57, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [flow] [line 57, size 32, align 32, offset 96] [from int]
!27 = metadata !{i32 786445, metadata !11, metadata !21, metadata !"nextOut", i32 58, i64 64, i64 64, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [nextOut] [line 58, size 64, align 64, offset 128] [from ]
!28 = metadata !{i32 786445, metadata !11, metadata !21, metadata !"nextIn", i32 59, i64 64, i64 64, i64 192, i32 0, metadata !19} ; [ DW_TAG_member ] [nextIn] [line 59, size 64, align 64, offset 192] [from ]
!29 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"outheads", i32 39, i64 64, i64 64, i64 192, i32 0, metadata !18} ; [ DW_TAG_member ] [outheads] [line 39, size 64, align 64, offset 192] [from ]
!30 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"chunk", i32 40, i64 64, i64 64, i64 256, i32 0, metadata !31} ; [ DW_TAG_member ] [chunk] [line 40, size 64, align 64, offset 256] [from ]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ArcChunk]
!32 = metadata !{i32 786454, metadata !11, null, metadata !"ArcChunk", i32 14, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_typedef ] [ArcChunk] [line 14, size 0, align 0, offset 0] [from _ArcChunk]
!33 = metadata !{i32 786451, metadata !11, null, metadata !"_ArcChunk", i32 74, i64 192, i64 64, i32 0, i32 0, null, metadata !34, i32 0, null, null} ; [ DW_TAG_structure_type ] [_ArcChunk] [line 74, size 192, align 64, offset 0] [from ]
!34 = metadata !{metadata !35, metadata !36, metadata !37, metadata !38}
!35 = metadata !{i32 786445, metadata !11, metadata !33, metadata !"size", i32 75, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 75, size 32, align 32, offset 0] [from int]
!36 = metadata !{i32 786445, metadata !11, metadata !33, metadata !"inuse", i32 76, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [inuse] [line 76, size 32, align 32, offset 32] [from int]
!37 = metadata !{i32 786445, metadata !11, metadata !33, metadata !"base", i32 77, i64 64, i64 64, i64 64, i32 0, metadata !19} ; [ DW_TAG_member ] [base] [line 77, size 64, align 64, offset 64] [from ]
!38 = metadata !{i32 786445, metadata !11, metadata !33, metadata !"next", i32 78, i64 64, i64 64, i64 128, i32 0, metadata !31} ; [ DW_TAG_member ] [next] [line 78, size 64, align 64, offset 128] [from ]
!39 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"msglvl", i32 41, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [msglvl] [line 41, size 32, align 32, offset 320] [from int]
!40 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"msgFile", i32 42, i64 64, i64 64, i64 384, i32 0, metadata !41} ; [ DW_TAG_member ] [msgFile] [line 42, size 64, align 64, offset 384] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!42 = metadata !{i32 786454, metadata !11, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!43 = metadata !{i32 786451, metadata !44, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !45, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!44 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!45 = metadata !{metadata !46, metadata !47, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !68, metadata !69, metadata !70, metadata !71, metadata !74, metadata !76, metadata !78, metadata !82, metadata !84, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !93, metadata !94}
!46 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
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
!67 = metadata !{i32 786445, metadata !44, metadata !62, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!68 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !66} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!69 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!70 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
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
!93 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !14} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!94 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !95} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!95 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !49, metadata !96, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!96 = metadata !{metadata !97}
!97 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!98 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !99} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Ideq]
!99 = metadata !{i32 786454, metadata !1, null, metadata !"Ideq", i32 19, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_typedef ] [Ideq] [line 19, size 0, align 0, offset 0] [from _Ideq]
!100 = metadata !{i32 786451, metadata !101, null, metadata !"_Ideq", i32 20, i64 320, i64 64, i32 0, i32 0, null, metadata !102, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Ideq] [line 20, size 320, align 64, offset 0] [from ]
!101 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/../../Ideq/Ideq.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!102 = metadata !{metadata !103, metadata !104, metadata !105, metadata !106}
!103 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"maxsize", i32 21, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 21, size 32, align 32, offset 0] [from int]
!104 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"head", i32 22, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [head] [line 22, size 32, align 32, offset 32] [from int]
!105 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"tail", i32 23, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [tail] [line 23, size 32, align 32, offset 64] [from int]
!106 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"iv", i32 24, i64 192, i64 64, i64 128, i32 0, metadata !107} ; [ DW_TAG_member ] [iv] [line 24, size 192, align 64, offset 128] [from IV]
!107 = metadata !{i32 786454, metadata !101, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !108} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!108 = metadata !{i32 786451, metadata !109, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !110, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!109 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!110 = metadata !{metadata !111, metadata !112, metadata !113, metadata !114}
!111 = metadata !{i32 786445, metadata !109, metadata !108, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!112 = metadata !{i32 786445, metadata !109, metadata !108, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!113 = metadata !{i32 786445, metadata !109, metadata !108, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!114 = metadata !{i32 786445, metadata !109, metadata !108, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !115} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!115 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!116 = metadata !{metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128}
!117 = metadata !{i32 786689, metadata !4, metadata !"network", metadata !5, i32 16777238, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [network] [line 22]
!118 = metadata !{i32 786689, metadata !4, metadata !"deq", metadata !5, i32 33554455, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [deq] [line 23]
!119 = metadata !{i32 786689, metadata !4, metadata !"mark", metadata !5, i32 50331672, metadata !115, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mark] [line 24]
!120 = metadata !{i32 786688, metadata !4, metadata !"arc", metadata !5, i32 26, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arc] [line 26]
!121 = metadata !{i32 786688, metadata !4, metadata !"inheads", metadata !5, i32 27, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inheads] [line 27]
!122 = metadata !{i32 786688, metadata !4, metadata !"outheads", metadata !5, i32 27, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outheads] [line 27]
!123 = metadata !{i32 786688, metadata !4, metadata !"msgFile", metadata !5, i32 28, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msgFile] [line 28]
!124 = metadata !{i32 786688, metadata !4, metadata !"msglvl", metadata !5, i32 29, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msglvl] [line 29]
!125 = metadata !{i32 786688, metadata !4, metadata !"nnode", metadata !5, i32 29, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nnode] [line 29]
!126 = metadata !{i32 786688, metadata !4, metadata !"source", metadata !5, i32 29, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [source] [line 29]
!127 = metadata !{i32 786688, metadata !4, metadata !"x", metadata !5, i32 29, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 29]
!128 = metadata !{i32 786688, metadata !4, metadata !"z", metadata !5, i32 29, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 29]
!129 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Network_findMincutFromSink", metadata !"Network_findMincutFromSink", metadata !"", i32 133, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Network*, %struct._Ideq*, i32*)* @Network_findMincutFromSink, null, null, metadata !130, i32 137} ; [ DW_TAG_subprogram ] [line 133] [def] [scope 137] [Network_findMincutFromSink]
!130 = metadata !{metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142}
!131 = metadata !{i32 786689, metadata !129, metadata !"network", metadata !5, i32 16777350, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [network] [line 134]
!132 = metadata !{i32 786689, metadata !129, metadata !"deq", metadata !5, i32 33554567, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [deq] [line 135]
!133 = metadata !{i32 786689, metadata !129, metadata !"mark", metadata !5, i32 50331784, metadata !115, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mark] [line 136]
!134 = metadata !{i32 786688, metadata !129, metadata !"arc", metadata !5, i32 138, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arc] [line 138]
!135 = metadata !{i32 786688, metadata !129, metadata !"inheads", metadata !5, i32 139, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inheads] [line 139]
!136 = metadata !{i32 786688, metadata !129, metadata !"outheads", metadata !5, i32 139, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outheads] [line 139]
!137 = metadata !{i32 786688, metadata !129, metadata !"msgFile", metadata !5, i32 140, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msgFile] [line 140]
!138 = metadata !{i32 786688, metadata !129, metadata !"msglvl", metadata !5, i32 141, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msglvl] [line 141]
!139 = metadata !{i32 786688, metadata !129, metadata !"nnode", metadata !5, i32 141, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nnode] [line 141]
!140 = metadata !{i32 786688, metadata !129, metadata !"sink", metadata !5, i32 141, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sink] [line 141]
!141 = metadata !{i32 786688, metadata !129, metadata !"x", metadata !5, i32 141, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 141]
!142 = metadata !{i32 786688, metadata !129, metadata !"z", metadata !5, i32 141, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 141]
!143 = metadata !{i32 22, i32 0, metadata !4, null}
!144 = metadata !{i32 23, i32 0, metadata !4, null}
!145 = metadata !{i32 24, i32 0, metadata !4, null}
!146 = metadata !{i32 35, i32 0, metadata !4, null}
!147 = metadata !{metadata !"int", metadata !148}
!148 = metadata !{metadata !"omnipotent char", metadata !149}
!149 = metadata !{metadata !"Simple C/C++ TBAA"}
!150 = metadata !{i32 37, i32 0, metadata !151, null}
!151 = metadata !{i32 786443, metadata !1, metadata !4, i32 36, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!152 = metadata !{metadata !"any pointer", metadata !148}
!153 = metadata !{i32 40, i32 0, metadata !151, null}
!154 = metadata !{i32 42, i32 0, metadata !4, null}
!155 = metadata !{i32 43, i32 0, metadata !4, null}
!156 = metadata !{i32 44, i32 0, metadata !4, null}
!157 = metadata !{i32 45, i32 0, metadata !4, null}
!158 = metadata !{i32 46, i32 0, metadata !4, null}
!159 = metadata !{i32 47, i32 0, metadata !4, null}
!160 = metadata !{i32 48, i32 0, metadata !161, null}
!161 = metadata !{i32 786443, metadata !1, metadata !4, i32 47, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!162 = metadata !{i32 49, i32 0, metadata !161, null}
!163 = metadata !{i32 50, i32 0, metadata !161, null}
!164 = metadata !{i32 56, i32 0, metadata !4, null}
!165 = metadata !{i32 57, i32 0, metadata !4, null}
!166 = metadata !{i32 66, i32 0, metadata !4, null}
!167 = metadata !{i32 67, i32 0, metadata !4, null}
!168 = metadata !{i32 68, i32 0, metadata !4, null}
!169 = metadata !{i32 69, i32 0, metadata !170, null}
!170 = metadata !{i32 786443, metadata !1, metadata !4, i32 68, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!171 = metadata !{i32 70, i32 0, metadata !172, null}
!172 = metadata !{i32 786443, metadata !1, metadata !170, i32 69, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!173 = metadata !{i32 71, i32 0, metadata !172, null}
!174 = metadata !{i32 72, i32 0, metadata !172, null}
!175 = metadata !{i32 73, i32 0, metadata !176, null}
!176 = metadata !{i32 786443, metadata !1, metadata !170, i32 73, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!177 = metadata !{i32 74, i32 0, metadata !178, null}
!178 = metadata !{i32 786443, metadata !1, metadata !176, i32 73, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!179 = metadata !{i32 75, i32 0, metadata !178, null}
!180 = metadata !{i32 77, i32 0, metadata !181, null}
!181 = metadata !{i32 786443, metadata !1, metadata !182, i32 76, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!182 = metadata !{i32 786443, metadata !1, metadata !178, i32 75, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!183 = metadata !{i32 76, i32 0, metadata !182, null}
!184 = metadata !{i32 82, i32 0, metadata !182, null}
!185 = metadata !{i32 80, i32 0, metadata !181, null}
!186 = metadata !{i32 81, i32 0, metadata !181, null}
!187 = metadata !{i32 83, i32 0, metadata !188, null}
!188 = metadata !{i32 786443, metadata !1, metadata !182, i32 82, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!189 = metadata !{i32 84, i32 0, metadata !190, null}
!190 = metadata !{i32 786443, metadata !1, metadata !188, i32 83, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!191 = metadata !{i32 85, i32 0, metadata !190, null}
!192 = metadata !{i32 86, i32 0, metadata !190, null}
!193 = metadata !{i32 87, i32 0, metadata !188, null}
!194 = metadata !{i32 88, i32 0, metadata !188, null}
!195 = metadata !{i32 89, i32 0, metadata !188, null}
!196 = metadata !{i32 92, i32 0, metadata !197, null}
!197 = metadata !{i32 786443, metadata !1, metadata !170, i32 92, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!198 = metadata !{i32 93, i32 0, metadata !199, null}
!199 = metadata !{i32 786443, metadata !1, metadata !197, i32 92, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!200 = metadata !{i32 94, i32 0, metadata !199, null}
!201 = metadata !{i32 96, i32 0, metadata !202, null}
!202 = metadata !{i32 786443, metadata !1, metadata !203, i32 95, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!203 = metadata !{i32 786443, metadata !1, metadata !199, i32 94, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!204 = metadata !{i32 95, i32 0, metadata !203, null}
!205 = metadata !{i32 98, i32 0, metadata !202, null}
!206 = metadata !{i32 99, i32 0, metadata !202, null}
!207 = metadata !{i32 100, i32 0, metadata !203, null}
!208 = metadata !{i32 101, i32 0, metadata !209, null}
!209 = metadata !{i32 786443, metadata !1, metadata !203, i32 100, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!210 = metadata !{i32 102, i32 0, metadata !211, null}
!211 = metadata !{i32 786443, metadata !1, metadata !209, i32 101, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!212 = metadata !{i32 103, i32 0, metadata !211, null}
!213 = metadata !{i32 104, i32 0, metadata !211, null}
!214 = metadata !{i32 105, i32 0, metadata !209, null}
!215 = metadata !{i32 106, i32 0, metadata !209, null}
!216 = metadata !{i32 107, i32 0, metadata !209, null}
!217 = metadata !{i32 111, i32 0, metadata !4, null}
!218 = metadata !{i32 112, i32 0, metadata !219, null}
!219 = metadata !{i32 786443, metadata !1, metadata !4, i32 111, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!220 = metadata !{i32 113, i32 0, metadata !219, null}
!221 = metadata !{i32 114, i32 0, metadata !219, null}
!222 = metadata !{i32 115, i32 0, metadata !4, null}
!223 = metadata !{i32 134, i32 0, metadata !129, null}
!224 = metadata !{i32 135, i32 0, metadata !129, null}
!225 = metadata !{i32 136, i32 0, metadata !129, null}
!226 = metadata !{i32 147, i32 0, metadata !129, null}
!227 = metadata !{i32 149, i32 0, metadata !228, null}
!228 = metadata !{i32 786443, metadata !1, metadata !129, i32 148, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!229 = metadata !{i32 152, i32 0, metadata !228, null}
!230 = metadata !{i32 154, i32 0, metadata !129, null}
!231 = metadata !{i32 155, i32 0, metadata !129, null}
!232 = metadata !{i32 156, i32 0, metadata !129, null}
!233 = metadata !{i32 157, i32 0, metadata !129, null}
!234 = metadata !{i32 158, i32 0, metadata !129, null}
!235 = metadata !{i32 159, i32 0, metadata !129, null}
!236 = metadata !{i32 160, i32 0, metadata !237, null}
!237 = metadata !{i32 786443, metadata !1, metadata !129, i32 159, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!238 = metadata !{i32 161, i32 0, metadata !237, null}
!239 = metadata !{i32 162, i32 0, metadata !237, null}
!240 = metadata !{i32 168, i32 0, metadata !129, null}
!241 = metadata !{i32 169, i32 0, metadata !129, null}
!242 = metadata !{i32 178, i32 0, metadata !129, null}
!243 = metadata !{i32 179, i32 0, metadata !129, null}
!244 = metadata !{i32 180, i32 0, metadata !129, null}
!245 = metadata !{i32 181, i32 0, metadata !246, null}
!246 = metadata !{i32 786443, metadata !1, metadata !129, i32 180, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!247 = metadata !{i32 182, i32 0, metadata !248, null}
!248 = metadata !{i32 786443, metadata !1, metadata !246, i32 181, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!249 = metadata !{i32 183, i32 0, metadata !248, null}
!250 = metadata !{i32 184, i32 0, metadata !248, null}
!251 = metadata !{i32 185, i32 0, metadata !252, null}
!252 = metadata !{i32 786443, metadata !1, metadata !246, i32 185, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!253 = metadata !{i32 186, i32 0, metadata !254, null}
!254 = metadata !{i32 786443, metadata !1, metadata !252, i32 185, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!255 = metadata !{i32 187, i32 0, metadata !254, null}
!256 = metadata !{i32 189, i32 0, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !258, i32 188, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!258 = metadata !{i32 786443, metadata !1, metadata !254, i32 187, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!259 = metadata !{i32 188, i32 0, metadata !258, null}
!260 = metadata !{i32 192, i32 0, metadata !257, null}
!261 = metadata !{i32 193, i32 0, metadata !257, null}
!262 = metadata !{i32 194, i32 0, metadata !258, null}
!263 = metadata !{i32 195, i32 0, metadata !264, null}
!264 = metadata !{i32 786443, metadata !1, metadata !258, i32 194, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!265 = metadata !{i32 196, i32 0, metadata !266, null}
!266 = metadata !{i32 786443, metadata !1, metadata !264, i32 195, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!267 = metadata !{i32 197, i32 0, metadata !266, null}
!268 = metadata !{i32 198, i32 0, metadata !266, null}
!269 = metadata !{i32 199, i32 0, metadata !264, null}
!270 = metadata !{i32 200, i32 0, metadata !264, null}
!271 = metadata !{i32 201, i32 0, metadata !264, null}
!272 = metadata !{i32 204, i32 0, metadata !273, null}
!273 = metadata !{i32 786443, metadata !1, metadata !246, i32 204, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!274 = metadata !{i32 205, i32 0, metadata !275, null}
!275 = metadata !{i32 786443, metadata !1, metadata !273, i32 204, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!276 = metadata !{i32 206, i32 0, metadata !275, null}
!277 = metadata !{i32 208, i32 0, metadata !278, null}
!278 = metadata !{i32 786443, metadata !1, metadata !279, i32 207, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!279 = metadata !{i32 786443, metadata !1, metadata !275, i32 206, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!280 = metadata !{i32 207, i32 0, metadata !279, null}
!281 = metadata !{i32 210, i32 0, metadata !278, null}
!282 = metadata !{i32 211, i32 0, metadata !278, null}
!283 = metadata !{i32 212, i32 0, metadata !279, null}
!284 = metadata !{i32 213, i32 0, metadata !285, null}
!285 = metadata !{i32 786443, metadata !1, metadata !279, i32 212, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!286 = metadata !{i32 214, i32 0, metadata !287, null}
!287 = metadata !{i32 786443, metadata !1, metadata !285, i32 213, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMincut.c]
!288 = metadata !{i32 215, i32 0, metadata !287, null}
!289 = metadata !{i32 216, i32 0, metadata !287, null}
!290 = metadata !{i32 217, i32 0, metadata !285, null}
!291 = metadata !{i32 218, i32 0, metadata !285, null}
!292 = metadata !{i32 219, i32 0, metadata !285, null}
!293 = metadata !{i32 223, i32 0, metadata !129, null}
