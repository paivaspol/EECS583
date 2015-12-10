; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Ideq = type { i32, i32, i32, %struct._IV }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [44 x i8] c"\0A fatal error in Ideq_clear(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [43 x i8] c"\0A fatal error in Ideq_head(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [53 x i8] c"\0A fatal error in Ideq_removeFromHead(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [54 x i8] c"\0A fatal error in Ideq_insertAtHead(%p,%d)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [43 x i8] c"\0A fatal error in Ideq_tail(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [53 x i8] c"\0A fatal error in Ideq_removeFromTail(%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [54 x i8] c"\0A fatal error in Ideq_insertAtTail(%p,%d)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Ideq_clear(%struct._Ideq* %deq) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Ideq* %deq}, i64 0, metadata !28), !dbg !63
  %cmp = icmp eq %struct._Ideq* %deq, null, !dbg !64
  br i1 %cmp, label %if.then, label %if.end, !dbg !64

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !65, !tbaa !67
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str, i64 0, i64 0), %struct._Ideq* null) #4, !dbg !65
  tail call void @exit(i32 -1) #5, !dbg !70
  unreachable, !dbg !70

if.end:                                           ; preds = %entry
  %tail = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 2, !dbg !71
  store i32 -1, i32* %tail, align 4, !dbg !71, !tbaa !72
  %head = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 1, !dbg !71
  store i32 -1, i32* %head, align 4, !dbg !71, !tbaa !72
  ret void, !dbg !73
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @Ideq_head(%struct._Ideq* %deq) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Ideq* %deq}, i64 0, metadata !33), !dbg !74
  %cmp = icmp eq %struct._Ideq* %deq, null, !dbg !75
  br i1 %cmp, label %if.then, label %if.end, !dbg !75

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !76, !tbaa !67
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8]* @.str1, i64 0, i64 0), %struct._Ideq* null) #4, !dbg !76
  tail call void @exit(i32 -1) #5, !dbg !78
  unreachable, !dbg !78

if.end:                                           ; preds = %entry
  %head = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 1, !dbg !79
  %1 = load i32* %head, align 4, !dbg !79, !tbaa !72
  %cmp1 = icmp eq i32 %1, -1, !dbg !79
  br i1 %cmp1, label %if.end4, label %if.else, !dbg !79

if.else:                                          ; preds = %if.end
  %idxprom = sext i32 %1 to i64, !dbg !80
  %vec = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 3, !dbg !80
  %2 = load i32** %vec, align 8, !dbg !80, !tbaa !67
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom, !dbg !80
  %3 = load i32* %arrayidx, align 4, !dbg !80, !tbaa !72
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !34), !dbg !80
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.else
  %val.0 = phi i32 [ %3, %if.else ], [ -1, %if.end ]
  ret i32 %val.0, !dbg !82
}

; Function Attrs: nounwind optsize uwtable
define i32 @Ideq_removeFromHead(%struct._Ideq* %deq) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Ideq* %deq}, i64 0, metadata !37), !dbg !83
  %cmp = icmp eq %struct._Ideq* %deq, null, !dbg !84
  br i1 %cmp, label %if.then, label %if.end, !dbg !84

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !85, !tbaa !67
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str2, i64 0, i64 0), %struct._Ideq* null) #4, !dbg !85
  tail call void @exit(i32 -1) #5, !dbg !87
  unreachable, !dbg !87

if.end:                                           ; preds = %entry
  %head = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 1, !dbg !88
  %1 = load i32* %head, align 4, !dbg !88, !tbaa !72
  %cmp1 = icmp eq i32 %1, -1, !dbg !88
  br i1 %cmp1, label %if.end19, label %if.else, !dbg !88

if.else:                                          ; preds = %if.end
  %idxprom = sext i32 %1 to i64, !dbg !89
  %vec = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 3, !dbg !89
  %2 = load i32** %vec, align 8, !dbg !89, !tbaa !67
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom, !dbg !89
  %3 = load i32* %arrayidx, align 4, !dbg !89, !tbaa !72
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !38), !dbg !89
  %tail = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 2, !dbg !91
  %4 = load i32* %tail, align 4, !dbg !91, !tbaa !72
  %cmp5 = icmp eq i32 %1, %4, !dbg !91
  br i1 %cmp5, label %if.then6, label %if.else9, !dbg !91

if.then6:                                         ; preds = %if.else
  store i32 -1, i32* %tail, align 4, !dbg !92, !tbaa !72
  store i32 -1, i32* %head, align 4, !dbg !92, !tbaa !72
  br label %if.end19, !dbg !94

if.else9:                                         ; preds = %if.else
  %size = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 0, !dbg !95
  %5 = load i32* %size, align 4, !dbg !95, !tbaa !72
  %sub = add nsw i32 %5, -1, !dbg !95
  %cmp12 = icmp eq i32 %1, %sub, !dbg !95
  br i1 %cmp12, label %if.then13, label %if.else15, !dbg !95

if.then13:                                        ; preds = %if.else9
  store i32 0, i32* %head, align 4, !dbg !96, !tbaa !72
  br label %if.end19, !dbg !98

if.else15:                                        ; preds = %if.else9
  %inc = add nsw i32 %1, 1, !dbg !99
  store i32 %inc, i32* %head, align 4, !dbg !99, !tbaa !72
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then6, %if.else15, %if.then13
  %val.0 = phi i32 [ %3, %if.then6 ], [ %3, %if.then13 ], [ %3, %if.else15 ], [ -1, %if.end ]
  ret i32 %val.0, !dbg !101
}

; Function Attrs: nounwind optsize uwtable
define i32 @Ideq_insertAtHead(%struct._Ideq* %deq, i32 %val) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Ideq* %deq}, i64 0, metadata !43), !dbg !102
  tail call void @llvm.dbg.value(metadata !{i32 %val}, i64 0, metadata !44), !dbg !103
  %cmp = icmp eq %struct._Ideq* %deq, null, !dbg !104
  br i1 %cmp, label %if.then, label %if.end, !dbg !104

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !105, !tbaa !67
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), %struct._Ideq* null, i32 %val) #4, !dbg !105
  tail call void @exit(i32 -1) #5, !dbg !107
  unreachable, !dbg !107

if.end:                                           ; preds = %entry
  %vec = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 3, !dbg !108
  %1 = load i32** %vec, align 8, !dbg !108, !tbaa !67
  tail call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !47), !dbg !108
  %size2 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 0, !dbg !109
  %2 = load i32* %size2, align 4, !dbg !109, !tbaa !72
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !46), !dbg !109
  %head = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 1, !dbg !110
  %3 = load i32* %head, align 4, !dbg !110, !tbaa !72
  %cmp3 = icmp eq i32 %3, -1, !dbg !110
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !110

if.then4:                                         ; preds = %if.end
  store i32 %val, i32* %1, align 4, !dbg !111, !tbaa !72
  %tail = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 2, !dbg !113
  store i32 0, i32* %tail, align 4, !dbg !113, !tbaa !72
  store i32 0, i32* %head, align 4, !dbg !113, !tbaa !72
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !45), !dbg !115
  br label %if.end29, !dbg !116

if.else:                                          ; preds = %if.end
  %cmp7 = icmp eq i32 %3, 0, !dbg !117
  %tail9 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 2, !dbg !119
  %4 = load i32* %tail9, align 4, !dbg !119, !tbaa !72
  br i1 %cmp7, label %if.then8, label %if.else17, !dbg !117

if.then8:                                         ; preds = %if.else
  %sub = add nsw i32 %2, -1, !dbg !119
  %cmp10 = icmp eq i32 %4, %sub, !dbg !119
  br i1 %cmp10, label %if.end29, label %if.else12, !dbg !119

if.else12:                                        ; preds = %if.then8
  store i32 %sub, i32* %head, align 4, !dbg !121, !tbaa !72
  %idxprom = sext i32 %sub to i64, !dbg !121
  %arrayidx15 = getelementptr inbounds i32* %1, i64 %idxprom, !dbg !121
  store i32 %val, i32* %arrayidx15, align 4, !dbg !121, !tbaa !72
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !45), !dbg !123
  br label %if.end29

if.else17:                                        ; preds = %if.else
  %sub20 = add nsw i32 %3, -1, !dbg !124
  %cmp21 = icmp eq i32 %4, %sub20, !dbg !124
  br i1 %cmp21, label %if.end29, label %if.else23, !dbg !124

if.else23:                                        ; preds = %if.else17
  store i32 %sub20, i32* %head, align 4, !dbg !125, !tbaa !72
  %idxprom25 = sext i32 %sub20 to i64, !dbg !125
  %arrayidx26 = getelementptr inbounds i32* %1, i64 %idxprom25, !dbg !125
  store i32 %val, i32* %arrayidx26, align 4, !dbg !125, !tbaa !72
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !45), !dbg !127
  br label %if.end29

if.end29:                                         ; preds = %if.else17, %if.then8, %if.else12, %if.else23, %if.then4
  %rc.0 = phi i32 [ 1, %if.then4 ], [ 1, %if.else12 ], [ 1, %if.else23 ], [ -1, %if.then8 ], [ -1, %if.else17 ]
  ret i32 %rc.0, !dbg !128
}

; Function Attrs: nounwind optsize uwtable
define i32 @Ideq_tail(%struct._Ideq* %deq) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Ideq* %deq}, i64 0, metadata !50), !dbg !129
  %cmp = icmp eq %struct._Ideq* %deq, null, !dbg !130
  br i1 %cmp, label %if.then, label %if.end, !dbg !130

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !131, !tbaa !67
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8]* @.str4, i64 0, i64 0), %struct._Ideq* null) #4, !dbg !131
  tail call void @exit(i32 -1) #5, !dbg !133
  unreachable, !dbg !133

if.end:                                           ; preds = %entry
  %tail = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 2, !dbg !134
  %1 = load i32* %tail, align 4, !dbg !134, !tbaa !72
  %cmp1 = icmp eq i32 %1, -1, !dbg !134
  br i1 %cmp1, label %if.end4, label %if.else, !dbg !134

if.else:                                          ; preds = %if.end
  %idxprom = sext i32 %1 to i64, !dbg !135
  %vec = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 3, !dbg !135
  %2 = load i32** %vec, align 8, !dbg !135, !tbaa !67
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom, !dbg !135
  %3 = load i32* %arrayidx, align 4, !dbg !135, !tbaa !72
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !51), !dbg !135
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.else
  %val.0 = phi i32 [ %3, %if.else ], [ -1, %if.end ]
  ret i32 %val.0, !dbg !137
}

; Function Attrs: nounwind optsize uwtable
define i32 @Ideq_removeFromTail(%struct._Ideq* %deq) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Ideq* %deq}, i64 0, metadata !54), !dbg !138
  %cmp = icmp eq %struct._Ideq* %deq, null, !dbg !139
  br i1 %cmp, label %if.then, label %if.end, !dbg !139

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !140, !tbaa !67
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str5, i64 0, i64 0), %struct._Ideq* null) #4, !dbg !140
  tail call void @exit(i32 -1) #5, !dbg !142
  unreachable, !dbg !142

if.end:                                           ; preds = %entry
  %tail = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 2, !dbg !143
  %1 = load i32* %tail, align 4, !dbg !143, !tbaa !72
  %cmp1 = icmp eq i32 %1, -1, !dbg !143
  br i1 %cmp1, label %if.end19, label %if.else, !dbg !143

if.else:                                          ; preds = %if.end
  %idxprom = sext i32 %1 to i64, !dbg !144
  %vec = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 3, !dbg !144
  %2 = load i32** %vec, align 8, !dbg !144, !tbaa !67
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom, !dbg !144
  %3 = load i32* %arrayidx, align 4, !dbg !144, !tbaa !72
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !55), !dbg !144
  %head = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 1, !dbg !146
  %4 = load i32* %head, align 4, !dbg !146, !tbaa !72
  %cmp5 = icmp eq i32 %4, %1, !dbg !146
  br i1 %cmp5, label %if.then6, label %if.else9, !dbg !146

if.then6:                                         ; preds = %if.else
  store i32 -1, i32* %tail, align 4, !dbg !147, !tbaa !72
  store i32 -1, i32* %head, align 4, !dbg !147, !tbaa !72
  br label %if.end19, !dbg !149

if.else9:                                         ; preds = %if.else
  %cmp11 = icmp eq i32 %1, 0, !dbg !150
  br i1 %cmp11, label %if.then12, label %if.else15, !dbg !150

if.then12:                                        ; preds = %if.else9
  %size = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 0, !dbg !151
  %5 = load i32* %size, align 4, !dbg !151, !tbaa !72
  %sub = add nsw i32 %5, -1, !dbg !151
  store i32 %sub, i32* %tail, align 4, !dbg !151, !tbaa !72
  br label %if.end19, !dbg !153

if.else15:                                        ; preds = %if.else9
  %dec = add nsw i32 %1, -1, !dbg !154
  store i32 %dec, i32* %tail, align 4, !dbg !154, !tbaa !72
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then6, %if.else15, %if.then12
  %val.0 = phi i32 [ %3, %if.then6 ], [ %3, %if.then12 ], [ %3, %if.else15 ], [ -1, %if.end ]
  ret i32 %val.0, !dbg !156
}

; Function Attrs: nounwind optsize uwtable
define i32 @Ideq_insertAtTail(%struct._Ideq* %deq, i32 %val) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Ideq* %deq}, i64 0, metadata !58), !dbg !157
  tail call void @llvm.dbg.value(metadata !{i32 %val}, i64 0, metadata !59), !dbg !158
  %cmp = icmp eq %struct._Ideq* %deq, null, !dbg !159
  br i1 %cmp, label %if.then, label %if.end, !dbg !159

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !160, !tbaa !67
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str6, i64 0, i64 0), %struct._Ideq* null, i32 %val) #4, !dbg !160
  tail call void @exit(i32 -1) #5, !dbg !162
  unreachable, !dbg !162

if.end:                                           ; preds = %entry
  %vec = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 3, !dbg !163
  %1 = load i32** %vec, align 8, !dbg !163, !tbaa !67
  tail call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !62), !dbg !163
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !61), !dbg !164
  %tail = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 2, !dbg !165
  %2 = load i32* %tail, align 4, !dbg !165, !tbaa !72
  %cmp3 = icmp eq i32 %2, -1, !dbg !165
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !165

if.then4:                                         ; preds = %if.end
  store i32 %val, i32* %1, align 4, !dbg !166, !tbaa !72
  store i32 0, i32* %tail, align 4, !dbg !168, !tbaa !72
  %head = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 1, !dbg !168
  store i32 0, i32* %head, align 4, !dbg !168, !tbaa !72
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !60), !dbg !169
  br label %if.end26, !dbg !170

if.else:                                          ; preds = %if.end
  %size2 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 0, !dbg !164
  %3 = load i32* %size2, align 4, !dbg !164, !tbaa !72
  %sub = add nsw i32 %3, -1, !dbg !171
  %cmp7 = icmp eq i32 %2, %sub, !dbg !171
  br i1 %cmp7, label %if.then8, label %if.else16, !dbg !171

if.then8:                                         ; preds = %if.else
  %head9 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 1, !dbg !173
  %4 = load i32* %head9, align 4, !dbg !173, !tbaa !72
  %cmp10 = icmp eq i32 %4, 0, !dbg !173
  br i1 %cmp10, label %if.end26, label %if.else12, !dbg !173

if.else12:                                        ; preds = %if.then8
  store i32 0, i32* %tail, align 4, !dbg !175, !tbaa !72
  store i32 %val, i32* %1, align 4, !dbg !175, !tbaa !72
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !60), !dbg !177
  br label %if.end26

if.else16:                                        ; preds = %if.else
  %add = add nsw i32 %2, 1, !dbg !178
  %head18 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 1, !dbg !178
  %5 = load i32* %head18, align 4, !dbg !178, !tbaa !72
  %cmp19 = icmp eq i32 %add, %5, !dbg !178
  br i1 %cmp19, label %if.end26, label %if.else21, !dbg !178

if.else21:                                        ; preds = %if.else16
  store i32 %add, i32* %tail, align 4, !dbg !179, !tbaa !72
  %idxprom = sext i32 %add to i64, !dbg !179
  %arrayidx23 = getelementptr inbounds i32* %1, i64 %idxprom, !dbg !179
  store i32 %val, i32* %arrayidx23, align 4, !dbg !179, !tbaa !72
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !60), !dbg !181
  br label %if.end26

if.end26:                                         ; preds = %if.else16, %if.then8, %if.else12, %if.else21, %if.then4
  %rc.0 = phi i32 [ 1, %if.then4 ], [ 1, %if.else12 ], [ 1, %if.else21 ], [ -1, %if.then8 ], [ -1, %if.else16 ]
  ret i32 %rc.0, !dbg !182
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !29, metadata !35, metadata !39, metadata !48, metadata !52, metadata !56}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Ideq_clear", metadata !"Ideq_clear", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Ideq*)* @Ideq_clear, null, null, metadata !27, i32 16} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 16] [Ideq_clear]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Ideq]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"Ideq", i32 19, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Ideq] [line 19, size 0, align 0, offset 0] [from _Ideq]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_Ideq", i32 20, i64 320, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Ideq] [line 20, size 320, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/../Ideq.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"maxsize", i32 21, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 21, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"head", i32 22, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [head] [line 22, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"tail", i32 23, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [tail] [line 23, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"iv", i32 24, i64 192, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [iv] [line 24, size 192, align 64, offset 128] [from IV]
!18 = metadata !{i32 786454, metadata !11, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!19 = metadata !{i32 786451, metadata !20, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !21, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!20 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!21 = metadata !{metadata !22, metadata !23, metadata !24, metadata !25}
!22 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!23 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!24 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!25 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 786689, metadata !4, metadata !"deq", metadata !5, i32 16777231, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [deq] [line 15]
!29 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Ideq_head", metadata !"Ideq_head", metadata !"", i32 41, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Ideq*)* @Ideq_head, null, null, metadata !32, i32 43} ; [ DW_TAG_subprogram ] [line 41] [def] [scope 43] [Ideq_head]
!30 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!31 = metadata !{metadata !14, metadata !8}
!32 = metadata !{metadata !33, metadata !34}
!33 = metadata !{i32 786689, metadata !29, metadata !"deq", metadata !5, i32 16777258, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [deq] [line 42]
!34 = metadata !{i32 786688, metadata !29, metadata !"val", metadata !5, i32 44, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 44]
!35 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Ideq_removeFromHead", metadata !"Ideq_removeFromHead", metadata !"", i32 72, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Ideq*)* @Ideq_removeFromHead, null, null, metadata !36, i32 74} ; [ DW_TAG_subprogram ] [line 72] [def] [scope 74] [Ideq_removeFromHead]
!36 = metadata !{metadata !37, metadata !38}
!37 = metadata !{i32 786689, metadata !35, metadata !"deq", metadata !5, i32 16777289, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [deq] [line 73]
!38 = metadata !{i32 786688, metadata !35, metadata !"val", metadata !5, i32 75, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 75]
!39 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Ideq_insertAtHead", metadata !"Ideq_insertAtHead", metadata !"", i32 112, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Ideq*, i32)* @Ideq_insertAtHead, null, null, metadata !42, i32 115} ; [ DW_TAG_subprogram ] [line 112] [def] [scope 115] [Ideq_insertAtHead]
!40 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!41 = metadata !{metadata !14, metadata !8, metadata !14}
!42 = metadata !{metadata !43, metadata !44, metadata !45, metadata !46, metadata !47}
!43 = metadata !{i32 786689, metadata !39, metadata !"deq", metadata !5, i32 16777329, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [deq] [line 113]
!44 = metadata !{i32 786689, metadata !39, metadata !"val", metadata !5, i32 33554546, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [val] [line 114]
!45 = metadata !{i32 786688, metadata !39, metadata !"rc", metadata !5, i32 116, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 116]
!46 = metadata !{i32 786688, metadata !39, metadata !"size", metadata !5, i32 116, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 116]
!47 = metadata !{i32 786688, metadata !39, metadata !"ivec", metadata !5, i32 117, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec] [line 117]
!48 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Ideq_tail", metadata !"Ideq_tail", metadata !"", i32 161, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Ideq*)* @Ideq_tail, null, null, metadata !49, i32 163} ; [ DW_TAG_subprogram ] [line 161] [def] [scope 163] [Ideq_tail]
!49 = metadata !{metadata !50, metadata !51}
!50 = metadata !{i32 786689, metadata !48, metadata !"deq", metadata !5, i32 16777378, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [deq] [line 162]
!51 = metadata !{i32 786688, metadata !48, metadata !"val", metadata !5, i32 164, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 164]
!52 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Ideq_removeFromTail", metadata !"Ideq_removeFromTail", metadata !"", i32 192, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Ideq*)* @Ideq_removeFromTail, null, null, metadata !53, i32 194} ; [ DW_TAG_subprogram ] [line 192] [def] [scope 194] [Ideq_removeFromTail]
!53 = metadata !{metadata !54, metadata !55}
!54 = metadata !{i32 786689, metadata !52, metadata !"deq", metadata !5, i32 16777409, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [deq] [line 193]
!55 = metadata !{i32 786688, metadata !52, metadata !"val", metadata !5, i32 195, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 195]
!56 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Ideq_insertAtTail", metadata !"Ideq_insertAtTail", metadata !"", i32 232, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Ideq*, i32)* @Ideq_insertAtTail, null, null, metadata !57, i32 235} ; [ DW_TAG_subprogram ] [line 232] [def] [scope 235] [Ideq_insertAtTail]
!57 = metadata !{metadata !58, metadata !59, metadata !60, metadata !61, metadata !62}
!58 = metadata !{i32 786689, metadata !56, metadata !"deq", metadata !5, i32 16777449, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [deq] [line 233]
!59 = metadata !{i32 786689, metadata !56, metadata !"val", metadata !5, i32 33554666, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [val] [line 234]
!60 = metadata !{i32 786688, metadata !56, metadata !"rc", metadata !5, i32 236, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 236]
!61 = metadata !{i32 786688, metadata !56, metadata !"size", metadata !5, i32 236, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 236]
!62 = metadata !{i32 786688, metadata !56, metadata !"ivec", metadata !5, i32 237, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec] [line 237]
!63 = metadata !{i32 15, i32 0, metadata !4, null}
!64 = metadata !{i32 22, i32 0, metadata !4, null}
!65 = metadata !{i32 23, i32 0, metadata !66, null}
!66 = metadata !{i32 786443, metadata !1, metadata !4, i32 22, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c]
!67 = metadata !{metadata !"any pointer", metadata !68}
!68 = metadata !{metadata !"omnipotent char", metadata !69}
!69 = metadata !{metadata !"Simple C/C++ TBAA"}
!70 = metadata !{i32 25, i32 0, metadata !66, null}
!71 = metadata !{i32 27, i32 0, metadata !4, null}
!72 = metadata !{metadata !"int", metadata !68}
!73 = metadata !{i32 29, i32 0, metadata !4, null}
!74 = metadata !{i32 42, i32 0, metadata !29, null}
!75 = metadata !{i32 50, i32 0, metadata !29, null}
!76 = metadata !{i32 51, i32 0, metadata !77, null}
!77 = metadata !{i32 786443, metadata !1, metadata !29, i32 50, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c]
!78 = metadata !{i32 53, i32 0, metadata !77, null}
!79 = metadata !{i32 55, i32 0, metadata !29, null}
!80 = metadata !{i32 58, i32 0, metadata !81, null} ; [ DW_TAG_imported_module ]
!81 = metadata !{i32 786443, metadata !1, metadata !29, i32 57, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c]
!82 = metadata !{i32 60, i32 0, metadata !29, null}
!83 = metadata !{i32 73, i32 0, metadata !35, null}
!84 = metadata !{i32 81, i32 0, metadata !35, null}
!85 = metadata !{i32 82, i32 0, metadata !86, null}
!86 = metadata !{i32 786443, metadata !1, metadata !35, i32 81, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c]
!87 = metadata !{i32 84, i32 0, metadata !86, null}
!88 = metadata !{i32 86, i32 0, metadata !35, null}
!89 = metadata !{i32 89, i32 0, metadata !90, null}
!90 = metadata !{i32 786443, metadata !1, metadata !35, i32 88, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c]
!91 = metadata !{i32 90, i32 0, metadata !90, null}
!92 = metadata !{i32 91, i32 0, metadata !93, null}
!93 = metadata !{i32 786443, metadata !1, metadata !90, i32 90, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c]
!94 = metadata !{i32 92, i32 0, metadata !93, null}
!95 = metadata !{i32 92, i32 0, metadata !90, null}
!96 = metadata !{i32 93, i32 0, metadata !97, null}
!97 = metadata !{i32 786443, metadata !1, metadata !90, i32 92, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c]
!98 = metadata !{i32 94, i32 0, metadata !97, null}
!99 = metadata !{i32 95, i32 0, metadata !100, null}
!100 = metadata !{i32 786443, metadata !1, metadata !90, i32 94, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c]
!101 = metadata !{i32 98, i32 0, metadata !35, null}
!102 = metadata !{i32 113, i32 0, metadata !39, null}
!103 = metadata !{i32 114, i32 0, metadata !39, null}
!104 = metadata !{i32 123, i32 0, metadata !39, null}
!105 = metadata !{i32 124, i32 0, metadata !106, null}
!106 = metadata !{i32 786443, metadata !1, metadata !39, i32 123, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c]
!107 = metadata !{i32 126, i32 0, metadata !106, null}
!108 = metadata !{i32 128, i32 0, metadata !39, null}
!109 = metadata !{i32 129, i32 0, metadata !39, null}
!110 = metadata !{i32 130, i32 0, metadata !39, null}
!111 = metadata !{i32 131, i32 0, metadata !112, null}
!112 = metadata !{i32 786443, metadata !1, metadata !39, i32 130, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c]
!113 = metadata !{i32 132, i32 0, metadata !112, null}
!114 = metadata !{i32 1}
!115 = metadata !{i32 133, i32 0, metadata !112, null}
!116 = metadata !{i32 134, i32 0, metadata !112, null}
!117 = metadata !{i32 135, i32 0, metadata !118, null}
!118 = metadata !{i32 786443, metadata !1, metadata !39, i32 134, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c]
!119 = metadata !{i32 136, i32 0, metadata !120, null}
!120 = metadata !{i32 786443, metadata !1, metadata !118, i32 135, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c]
!121 = metadata !{i32 139, i32 0, metadata !122, null}
!122 = metadata !{i32 786443, metadata !1, metadata !120, i32 138, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c]
!123 = metadata !{i32 140, i32 0, metadata !122, null}
!124 = metadata !{i32 142, i32 0, metadata !118, null}
!125 = metadata !{i32 145, i32 0, metadata !126, null}
!126 = metadata !{i32 786443, metadata !1, metadata !118, i32 144, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c]
!127 = metadata !{i32 146, i32 0, metadata !126, null}
!128 = metadata !{i32 149, i32 0, metadata !39, null}
!129 = metadata !{i32 162, i32 0, metadata !48, null}
!130 = metadata !{i32 170, i32 0, metadata !48, null}
!131 = metadata !{i32 171, i32 0, metadata !132, null}
!132 = metadata !{i32 786443, metadata !1, metadata !48, i32 170, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c]
!133 = metadata !{i32 173, i32 0, metadata !132, null}
!134 = metadata !{i32 175, i32 0, metadata !48, null}
!135 = metadata !{i32 178, i32 0, metadata !136, null}
!136 = metadata !{i32 786443, metadata !1, metadata !48, i32 177, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c]
!137 = metadata !{i32 180, i32 0, metadata !48, null}
!138 = metadata !{i32 193, i32 0, metadata !52, null}
!139 = metadata !{i32 201, i32 0, metadata !52, null}
!140 = metadata !{i32 202, i32 0, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !52, i32 201, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c]
!142 = metadata !{i32 204, i32 0, metadata !141, null}
!143 = metadata !{i32 206, i32 0, metadata !52, null}
!144 = metadata !{i32 209, i32 0, metadata !145, null}
!145 = metadata !{i32 786443, metadata !1, metadata !52, i32 208, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c]
!146 = metadata !{i32 210, i32 0, metadata !145, null}
!147 = metadata !{i32 211, i32 0, metadata !148, null}
!148 = metadata !{i32 786443, metadata !1, metadata !145, i32 210, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c]
!149 = metadata !{i32 212, i32 0, metadata !148, null}
!150 = metadata !{i32 212, i32 0, metadata !145, null}
!151 = metadata !{i32 213, i32 0, metadata !152, null}
!152 = metadata !{i32 786443, metadata !1, metadata !145, i32 212, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c]
!153 = metadata !{i32 214, i32 0, metadata !152, null}
!154 = metadata !{i32 215, i32 0, metadata !155, null}
!155 = metadata !{i32 786443, metadata !1, metadata !145, i32 214, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c]
!156 = metadata !{i32 218, i32 0, metadata !52, null}
!157 = metadata !{i32 233, i32 0, metadata !56, null}
!158 = metadata !{i32 234, i32 0, metadata !56, null}
!159 = metadata !{i32 243, i32 0, metadata !56, null}
!160 = metadata !{i32 244, i32 0, metadata !161, null}
!161 = metadata !{i32 786443, metadata !1, metadata !56, i32 243, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c]
!162 = metadata !{i32 246, i32 0, metadata !161, null}
!163 = metadata !{i32 248, i32 0, metadata !56, null}
!164 = metadata !{i32 249, i32 0, metadata !56, null}
!165 = metadata !{i32 250, i32 0, metadata !56, null}
!166 = metadata !{i32 251, i32 0, metadata !167, null}
!167 = metadata !{i32 786443, metadata !1, metadata !56, i32 250, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c]
!168 = metadata !{i32 252, i32 0, metadata !167, null}
!169 = metadata !{i32 253, i32 0, metadata !167, null}
!170 = metadata !{i32 254, i32 0, metadata !167, null}
!171 = metadata !{i32 255, i32 0, metadata !172, null}
!172 = metadata !{i32 786443, metadata !1, metadata !56, i32 254, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c]
!173 = metadata !{i32 256, i32 0, metadata !174, null}
!174 = metadata !{i32 786443, metadata !1, metadata !172, i32 255, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c]
!175 = metadata !{i32 259, i32 0, metadata !176, null}
!176 = metadata !{i32 786443, metadata !1, metadata !174, i32 258, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c]
!177 = metadata !{i32 260, i32 0, metadata !176, null}
!178 = metadata !{i32 262, i32 0, metadata !172, null}
!179 = metadata !{i32 265, i32 0, metadata !180, null}
!180 = metadata !{i32 786443, metadata !1, metadata !172, i32 264, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c]
!181 = metadata !{i32 266, i32 0, metadata !180, null}
!182 = metadata !{i32 269, i32 0, metadata !56, null}
