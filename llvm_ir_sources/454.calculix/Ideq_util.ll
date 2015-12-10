; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._Ideq = type { i32, i32, i32, %struct._IV }
%struct._IV = type { i32, i32, i32, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [44 x i8] c"\0A fatal error in Ideq_clear(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [43 x i8] c"\0A fatal error in Ideq_head(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [53 x i8] c"\0A fatal error in Ideq_removeFromHead(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [54 x i8] c"\0A fatal error in Ideq_insertAtHead(%p,%d)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [43 x i8] c"\0A fatal error in Ideq_tail(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [53 x i8] c"\0A fatal error in Ideq_removeFromTail(%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [54 x i8] c"\0A fatal error in Ideq_insertAtTail(%p,%d)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @Ideq_clear(%struct._Ideq* %deq) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Ideq* %deq, i64 0, metadata !29, metadata !68), !dbg !69
  %1 = icmp eq %struct._Ideq* %deq, null, !dbg !70
  br i1 %1, label %2, label %5, !dbg !72

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !73, !tbaa !75
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([44 x i8]* @.str, i64 0, i64 0), %struct._Ideq* null) #4, !dbg !79
  tail call void @exit(i32 -1) #5, !dbg !80
  unreachable, !dbg !80

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 2, !dbg !81
  store i32 -1, i32* %6, align 4, !dbg !82, !tbaa !83
  %7 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 1, !dbg !87
  store i32 -1, i32* %7, align 4, !dbg !88, !tbaa !89
  ret void, !dbg !90
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Ideq_head(%struct._Ideq* %deq) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Ideq* %deq, i64 0, metadata !34, metadata !68), !dbg !91
  %1 = icmp eq %struct._Ideq* %deq, null, !dbg !92
  br i1 %1, label %2, label %5, !dbg !94

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !95, !tbaa !75
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([43 x i8]* @.str1, i64 0, i64 0), %struct._Ideq* null) #4, !dbg !97
  tail call void @exit(i32 -1) #5, !dbg !98
  unreachable, !dbg !98

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 1, !dbg !99
  %7 = load i32* %6, align 4, !dbg !99, !tbaa !89
  %8 = icmp eq i32 %7, -1, !dbg !101
  br i1 %8, label %15, label %9, !dbg !102

; <label>:9                                       ; preds = %5
  %10 = sext i32 %7 to i64, !dbg !103
  %11 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 3, !dbg !105
  %12 = load i32** %11, align 8, !dbg !105, !tbaa !106
  %13 = getelementptr inbounds i32* %12, i64 %10, !dbg !103
  %14 = load i32* %13, align 4, !dbg !103, !tbaa !107
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !35, metadata !68), !dbg !108
  br label %15

; <label>:15                                      ; preds = %5, %9
  %val.0 = phi i32 [ %14, %9 ], [ -1, %5 ]
  ret i32 %val.0, !dbg !109
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Ideq_removeFromHead(%struct._Ideq* %deq) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Ideq* %deq, i64 0, metadata !38, metadata !68), !dbg !110
  %1 = icmp eq %struct._Ideq* %deq, null, !dbg !111
  br i1 %1, label %2, label %5, !dbg !113

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !114, !tbaa !75
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([53 x i8]* @.str2, i64 0, i64 0), %struct._Ideq* null) #4, !dbg !116
  tail call void @exit(i32 -1) #5, !dbg !117
  unreachable, !dbg !117

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 1, !dbg !118
  %7 = load i32* %6, align 4, !dbg !118, !tbaa !89
  %8 = icmp eq i32 %7, -1, !dbg !120
  br i1 %8, label %27, label %9, !dbg !121

; <label>:9                                       ; preds = %5
  %10 = sext i32 %7 to i64, !dbg !122
  %11 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 3, !dbg !124
  %12 = load i32** %11, align 8, !dbg !124, !tbaa !106
  %13 = getelementptr inbounds i32* %12, i64 %10, !dbg !122
  %14 = load i32* %13, align 4, !dbg !122, !tbaa !107
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !39, metadata !68), !dbg !125
  %15 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 2, !dbg !126
  %16 = load i32* %15, align 4, !dbg !126, !tbaa !83
  %17 = icmp eq i32 %7, %16, !dbg !128
  br i1 %17, label %18, label %19, !dbg !129

; <label>:18                                      ; preds = %9
  store i32 -1, i32* %15, align 4, !dbg !130, !tbaa !83
  store i32 -1, i32* %6, align 4, !dbg !132, !tbaa !89
  br label %27, !dbg !133

; <label>:19                                      ; preds = %9
  %20 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 0, !dbg !134
  %21 = load i32* %20, align 4, !dbg !134, !tbaa !136
  %22 = add nsw i32 %21, -1, !dbg !137
  %23 = icmp eq i32 %7, %22, !dbg !138
  br i1 %23, label %24, label %25, !dbg !139

; <label>:24                                      ; preds = %19
  store i32 0, i32* %6, align 4, !dbg !140, !tbaa !89
  br label %27, !dbg !142

; <label>:25                                      ; preds = %19
  %26 = add nsw i32 %7, 1, !dbg !143
  store i32 %26, i32* %6, align 4, !dbg !143, !tbaa !89
  br label %27

; <label>:27                                      ; preds = %5, %18, %25, %24
  %val.0 = phi i32 [ %14, %18 ], [ %14, %24 ], [ %14, %25 ], [ -1, %5 ]
  ret i32 %val.0, !dbg !145
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Ideq_insertAtHead(%struct._Ideq* %deq, i32 %val) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Ideq* %deq, i64 0, metadata !44, metadata !68), !dbg !146
  tail call void @llvm.dbg.value(metadata i32 %val, i64 0, metadata !45, metadata !68), !dbg !147
  %1 = icmp eq %struct._Ideq* %deq, null, !dbg !148
  br i1 %1, label %2, label %5, !dbg !150

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !151, !tbaa !75
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), %struct._Ideq* null, i32 %val) #4, !dbg !153
  tail call void @exit(i32 -1) #5, !dbg !154
  unreachable, !dbg !154

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 3, !dbg !155
  %7 = load i32** %6, align 8, !dbg !155, !tbaa !106
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !48, metadata !68), !dbg !156
  %8 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 0, !dbg !157
  %9 = load i32* %8, align 4, !dbg !157, !tbaa !136
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !47, metadata !68), !dbg !158
  %10 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 1, !dbg !159
  %11 = load i32* %10, align 4, !dbg !159, !tbaa !89
  %12 = icmp eq i32 %11, -1, !dbg !161
  br i1 %12, label %13, label %15, !dbg !162

; <label>:13                                      ; preds = %5
  store i32 %val, i32* %7, align 4, !dbg !163, !tbaa !107
  %14 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 2, !dbg !165
  store i32 0, i32* %14, align 4, !dbg !166, !tbaa !83
  store i32 0, i32* %10, align 4, !dbg !167, !tbaa !89
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !46, metadata !68), !dbg !168
  br label %31, !dbg !169

; <label>:15                                      ; preds = %5
  %16 = icmp eq i32 %11, 0, !dbg !170
  %17 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 2, !dbg !173
  %18 = load i32* %17, align 4, !dbg !173, !tbaa !83
  br i1 %16, label %19, label %25, !dbg !176

; <label>:19                                      ; preds = %15
  %20 = add nsw i32 %9, -1, !dbg !177
  %21 = icmp eq i32 %18, %20, !dbg !178
  br i1 %21, label %31, label %22, !dbg !179

; <label>:22                                      ; preds = %19
  store i32 %20, i32* %10, align 4, !dbg !180, !tbaa !89
  %23 = sext i32 %20 to i64, !dbg !182
  %24 = getelementptr inbounds i32* %7, i64 %23, !dbg !182
  store i32 %val, i32* %24, align 4, !dbg !183, !tbaa !107
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !46, metadata !68), !dbg !168
  br label %31

; <label>:25                                      ; preds = %15
  %26 = add nsw i32 %11, -1, !dbg !184
  %27 = icmp eq i32 %18, %26, !dbg !186
  br i1 %27, label %31, label %28, !dbg !187

; <label>:28                                      ; preds = %25
  store i32 %26, i32* %10, align 4, !dbg !188, !tbaa !89
  %29 = sext i32 %26 to i64, !dbg !190
  %30 = getelementptr inbounds i32* %7, i64 %29, !dbg !190
  store i32 %val, i32* %30, align 4, !dbg !191, !tbaa !107
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !46, metadata !68), !dbg !168
  br label %31

; <label>:31                                      ; preds = %25, %19, %22, %28, %13
  %rc.0 = phi i32 [ 1, %13 ], [ 1, %22 ], [ 1, %28 ], [ -1, %19 ], [ -1, %25 ]
  ret i32 %rc.0, !dbg !192
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Ideq_tail(%struct._Ideq* %deq) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Ideq* %deq, i64 0, metadata !51, metadata !68), !dbg !193
  %1 = icmp eq %struct._Ideq* %deq, null, !dbg !194
  br i1 %1, label %2, label %5, !dbg !196

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !197, !tbaa !75
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([43 x i8]* @.str4, i64 0, i64 0), %struct._Ideq* null) #4, !dbg !199
  tail call void @exit(i32 -1) #5, !dbg !200
  unreachable, !dbg !200

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 2, !dbg !201
  %7 = load i32* %6, align 4, !dbg !201, !tbaa !83
  %8 = icmp eq i32 %7, -1, !dbg !203
  br i1 %8, label %15, label %9, !dbg !204

; <label>:9                                       ; preds = %5
  %10 = sext i32 %7 to i64, !dbg !205
  %11 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 3, !dbg !207
  %12 = load i32** %11, align 8, !dbg !207, !tbaa !106
  %13 = getelementptr inbounds i32* %12, i64 %10, !dbg !205
  %14 = load i32* %13, align 4, !dbg !205, !tbaa !107
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !52, metadata !68), !dbg !208
  br label %15

; <label>:15                                      ; preds = %5, %9
  %val.0 = phi i32 [ %14, %9 ], [ -1, %5 ]
  ret i32 %val.0, !dbg !209
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Ideq_removeFromTail(%struct._Ideq* %deq) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Ideq* %deq, i64 0, metadata !55, metadata !68), !dbg !210
  %1 = icmp eq %struct._Ideq* %deq, null, !dbg !211
  br i1 %1, label %2, label %5, !dbg !213

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !214, !tbaa !75
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([53 x i8]* @.str5, i64 0, i64 0), %struct._Ideq* null) #4, !dbg !216
  tail call void @exit(i32 -1) #5, !dbg !217
  unreachable, !dbg !217

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 2, !dbg !218
  %7 = load i32* %6, align 4, !dbg !218, !tbaa !83
  %8 = icmp eq i32 %7, -1, !dbg !220
  br i1 %8, label %27, label %9, !dbg !221

; <label>:9                                       ; preds = %5
  %10 = sext i32 %7 to i64, !dbg !222
  %11 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 3, !dbg !224
  %12 = load i32** %11, align 8, !dbg !224, !tbaa !106
  %13 = getelementptr inbounds i32* %12, i64 %10, !dbg !222
  %14 = load i32* %13, align 4, !dbg !222, !tbaa !107
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !56, metadata !68), !dbg !225
  %15 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 1, !dbg !226
  %16 = load i32* %15, align 4, !dbg !226, !tbaa !89
  %17 = icmp eq i32 %16, %7, !dbg !228
  br i1 %17, label %18, label %19, !dbg !229

; <label>:18                                      ; preds = %9
  store i32 -1, i32* %6, align 4, !dbg !230, !tbaa !83
  store i32 -1, i32* %15, align 4, !dbg !232, !tbaa !89
  br label %27, !dbg !233

; <label>:19                                      ; preds = %9
  %20 = icmp eq i32 %7, 0, !dbg !234
  br i1 %20, label %21, label %25, !dbg !236

; <label>:21                                      ; preds = %19
  %22 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 0, !dbg !237
  %23 = load i32* %22, align 4, !dbg !237, !tbaa !136
  %24 = add nsw i32 %23, -1, !dbg !239
  store i32 %24, i32* %6, align 4, !dbg !240, !tbaa !83
  br label %27, !dbg !241

; <label>:25                                      ; preds = %19
  %26 = add nsw i32 %7, -1, !dbg !242
  store i32 %26, i32* %6, align 4, !dbg !242, !tbaa !83
  br label %27

; <label>:27                                      ; preds = %5, %18, %25, %21
  %val.0 = phi i32 [ %14, %18 ], [ %14, %21 ], [ %14, %25 ], [ -1, %5 ]
  ret i32 %val.0, !dbg !244
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Ideq_insertAtTail(%struct._Ideq* %deq, i32 %val) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Ideq* %deq, i64 0, metadata !59, metadata !68), !dbg !245
  tail call void @llvm.dbg.value(metadata i32 %val, i64 0, metadata !60, metadata !68), !dbg !246
  %1 = icmp eq %struct._Ideq* %deq, null, !dbg !247
  br i1 %1, label %2, label %5, !dbg !249

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !250, !tbaa !75
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([54 x i8]* @.str6, i64 0, i64 0), %struct._Ideq* null, i32 %val) #4, !dbg !252
  tail call void @exit(i32 -1) #5, !dbg !253
  unreachable, !dbg !253

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 3, !dbg !254
  %7 = load i32** %6, align 8, !dbg !254, !tbaa !106
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !63, metadata !68), !dbg !255
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !62, metadata !68), !dbg !256
  %8 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 2, !dbg !257
  %9 = load i32* %8, align 4, !dbg !257, !tbaa !83
  %10 = icmp eq i32 %9, -1, !dbg !259
  br i1 %10, label %11, label %13, !dbg !260

; <label>:11                                      ; preds = %5
  store i32 %val, i32* %7, align 4, !dbg !261, !tbaa !107
  store i32 0, i32* %8, align 4, !dbg !263, !tbaa !83
  %12 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 1, !dbg !264
  store i32 0, i32* %12, align 4, !dbg !265, !tbaa !89
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !61, metadata !68), !dbg !266
  br label %31, !dbg !267

; <label>:13                                      ; preds = %5
  %14 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 0, !dbg !268
  %15 = load i32* %14, align 4, !dbg !268, !tbaa !136
  %16 = add nsw i32 %15, -1, !dbg !269
  %17 = icmp eq i32 %9, %16, !dbg !272
  br i1 %17, label %18, label %23, !dbg !273

; <label>:18                                      ; preds = %13
  %19 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 1, !dbg !274
  %20 = load i32* %19, align 4, !dbg !274, !tbaa !89
  %21 = icmp eq i32 %20, 0, !dbg !277
  br i1 %21, label %31, label %22, !dbg !278

; <label>:22                                      ; preds = %18
  store i32 0, i32* %8, align 4, !dbg !279, !tbaa !83
  store i32 %val, i32* %7, align 4, !dbg !281, !tbaa !107
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !61, metadata !68), !dbg !266
  br label %31

; <label>:23                                      ; preds = %13
  %24 = add nsw i32 %9, 1, !dbg !282
  %25 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 1, !dbg !284
  %26 = load i32* %25, align 4, !dbg !284, !tbaa !89
  %27 = icmp eq i32 %24, %26, !dbg !285
  br i1 %27, label %31, label %28, !dbg !286

; <label>:28                                      ; preds = %23
  store i32 %24, i32* %8, align 4, !dbg !287, !tbaa !83
  %29 = sext i32 %24 to i64, !dbg !289
  %30 = getelementptr inbounds i32* %7, i64 %29, !dbg !289
  store i32 %val, i32* %30, align 4, !dbg !290, !tbaa !107
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !61, metadata !68), !dbg !266
  br label %31

; <label>:31                                      ; preds = %23, %18, %22, %28, %11
  %rc.0 = phi i32 [ 1, %11 ], [ 1, %22 ], [ 1, %28 ], [ -1, %18 ], [ -1, %23 ]
  ret i32 %rc.0, !dbg !291
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!64, !65, !66}
!llvm.ident = !{!67}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !30, !36, !40, !49, !53, !57}
!6 = !DISubprogram(name: "Ideq_clear", scope: !1, file: !1, line: 14, type: !7, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Ideq*)* @Ideq_clear, variables: !28)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ideq", file: !11, line: 19, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/../Ideq.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ideq", file: !11, line: 20, size: 320, align: 64, elements: !13)
!13 = !{!14, !16, !17, !18}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !12, file: !11, line: 21, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !12, file: !11, line: 22, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !12, file: !11, line: 23, baseType: !15, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "iv", scope: !12, file: !11, line: 24, baseType: !19, size: 192, align: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !20, line: 20, baseType: !21)
!20 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!21 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !20, line: 21, size: 192, align: 64, elements: !22)
!22 = !{!23, !24, !25, !26}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !21, file: !20, line: 22, baseType: !15, size: 32, align: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !21, file: !20, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !21, file: !20, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !21, file: !20, line: 25, baseType: !27, size: 64, align: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!28 = !{!29}
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deq", arg: 1, scope: !6, file: !1, line: 15, type: !9)
!30 = !DISubprogram(name: "Ideq_head", scope: !1, file: !1, line: 41, type: !31, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Ideq*)* @Ideq_head, variables: !33)
!31 = !DISubroutineType(types: !32)
!32 = !{!15, !9}
!33 = !{!34, !35}
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deq", arg: 1, scope: !30, file: !1, line: 42, type: !9)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !30, file: !1, line: 44, type: !15)
!36 = !DISubprogram(name: "Ideq_removeFromHead", scope: !1, file: !1, line: 72, type: !31, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Ideq*)* @Ideq_removeFromHead, variables: !37)
!37 = !{!38, !39}
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deq", arg: 1, scope: !36, file: !1, line: 73, type: !9)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !36, file: !1, line: 75, type: !15)
!40 = !DISubprogram(name: "Ideq_insertAtHead", scope: !1, file: !1, line: 112, type: !41, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Ideq*, i32)* @Ideq_insertAtHead, variables: !43)
!41 = !DISubroutineType(types: !42)
!42 = !{!15, !9, !15}
!43 = !{!44, !45, !46, !47, !48}
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deq", arg: 1, scope: !40, file: !1, line: 113, type: !9)
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "val", arg: 2, scope: !40, file: !1, line: 114, type: !15)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !40, file: !1, line: 116, type: !15)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !40, file: !1, line: 116, type: !15)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ivec", scope: !40, file: !1, line: 117, type: !27)
!49 = !DISubprogram(name: "Ideq_tail", scope: !1, file: !1, line: 161, type: !31, isLocal: false, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Ideq*)* @Ideq_tail, variables: !50)
!50 = !{!51, !52}
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deq", arg: 1, scope: !49, file: !1, line: 162, type: !9)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !49, file: !1, line: 164, type: !15)
!53 = !DISubprogram(name: "Ideq_removeFromTail", scope: !1, file: !1, line: 192, type: !31, isLocal: false, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Ideq*)* @Ideq_removeFromTail, variables: !54)
!54 = !{!55, !56}
!55 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deq", arg: 1, scope: !53, file: !1, line: 193, type: !9)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !53, file: !1, line: 195, type: !15)
!57 = !DISubprogram(name: "Ideq_insertAtTail", scope: !1, file: !1, line: 232, type: !41, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Ideq*, i32)* @Ideq_insertAtTail, variables: !58)
!58 = !{!59, !60, !61, !62, !63}
!59 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deq", arg: 1, scope: !57, file: !1, line: 233, type: !9)
!60 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "val", arg: 2, scope: !57, file: !1, line: 234, type: !15)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !57, file: !1, line: 236, type: !15)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !57, file: !1, line: 236, type: !15)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ivec", scope: !57, file: !1, line: 237, type: !27)
!64 = !{i32 2, !"Dwarf Version", i32 2}
!65 = !{i32 2, !"Debug Info Version", i32 700000003}
!66 = !{i32 1, !"PIC Level", i32 2}
!67 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!68 = !DIExpression()
!69 = !DILocation(line: 15, column: 12, scope: !6)
!70 = !DILocation(line: 22, column: 10, scope: !71)
!71 = distinct !DILexicalBlock(scope: !6, file: !1, line: 22, column: 6)
!72 = !DILocation(line: 22, column: 6, scope: !6)
!73 = !DILocation(line: 23, column: 12, scope: !74)
!74 = distinct !DILexicalBlock(scope: !71, file: !1, line: 22, column: 20)
!75 = !{!76, !76, i64 0}
!76 = !{!"any pointer", !77, i64 0}
!77 = !{!"omnipotent char", !78, i64 0}
!78 = !{!"Simple C/C++ TBAA"}
!79 = !DILocation(line: 23, column: 4, scope: !74)
!80 = !DILocation(line: 25, column: 4, scope: !74)
!81 = !DILocation(line: 27, column: 18, scope: !6)
!82 = !DILocation(line: 27, column: 23, scope: !6)
!83 = !{!84, !85, i64 8}
!84 = !{!"_Ideq", !85, i64 0, !85, i64 4, !85, i64 8, !86, i64 16}
!85 = !{!"int", !77, i64 0}
!86 = !{!"_IV", !85, i64 0, !85, i64 4, !85, i64 8, !76, i64 16}
!87 = !DILocation(line: 27, column: 6, scope: !6)
!88 = !DILocation(line: 27, column: 11, scope: !6)
!89 = !{!84, !85, i64 4}
!90 = !DILocation(line: 29, column: 1, scope: !6)
!91 = !DILocation(line: 42, column: 12, scope: !30)
!92 = !DILocation(line: 50, column: 10, scope: !93)
!93 = distinct !DILexicalBlock(scope: !30, file: !1, line: 50, column: 6)
!94 = !DILocation(line: 50, column: 6, scope: !30)
!95 = !DILocation(line: 51, column: 12, scope: !96)
!96 = distinct !DILexicalBlock(scope: !93, file: !1, line: 50, column: 20)
!97 = !DILocation(line: 51, column: 4, scope: !96)
!98 = !DILocation(line: 53, column: 4, scope: !96)
!99 = !DILocation(line: 55, column: 11, scope: !100)
!100 = distinct !DILexicalBlock(scope: !30, file: !1, line: 55, column: 6)
!101 = !DILocation(line: 55, column: 16, scope: !100)
!102 = !DILocation(line: 55, column: 6, scope: !30)
!103 = !DILocation(line: 58, column: 11, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !1, line: 57, column: 8)
!105 = !DILocation(line: 58, column: 19, scope: !104)
!106 = !{!84, !76, i64 32}
!107 = !{!85, !85, i64 0}
!108 = !DILocation(line: 44, column: 7, scope: !30)
!109 = !DILocation(line: 60, column: 1, scope: !30)
!110 = !DILocation(line: 73, column: 12, scope: !36)
!111 = !DILocation(line: 81, column: 10, scope: !112)
!112 = distinct !DILexicalBlock(scope: !36, file: !1, line: 81, column: 6)
!113 = !DILocation(line: 81, column: 6, scope: !36)
!114 = !DILocation(line: 82, column: 12, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !1, line: 81, column: 20)
!116 = !DILocation(line: 82, column: 4, scope: !115)
!117 = !DILocation(line: 84, column: 4, scope: !115)
!118 = !DILocation(line: 86, column: 11, scope: !119)
!119 = distinct !DILexicalBlock(scope: !36, file: !1, line: 86, column: 6)
!120 = !DILocation(line: 86, column: 16, scope: !119)
!121 = !DILocation(line: 86, column: 6, scope: !36)
!122 = !DILocation(line: 89, column: 11, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !1, line: 88, column: 8)
!124 = !DILocation(line: 89, column: 19, scope: !123)
!125 = !DILocation(line: 75, column: 7, scope: !36)
!126 = !DILocation(line: 90, column: 27, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !1, line: 90, column: 9)
!128 = !DILocation(line: 90, column: 19, scope: !127)
!129 = !DILocation(line: 90, column: 9, scope: !123)
!130 = !DILocation(line: 91, column: 29, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !1, line: 90, column: 34)
!132 = !DILocation(line: 91, column: 17, scope: !131)
!133 = !DILocation(line: 92, column: 4, scope: !131)
!134 = !DILocation(line: 92, column: 37, scope: !135)
!135 = distinct !DILexicalBlock(scope: !127, file: !1, line: 92, column: 16)
!136 = !{!84, !85, i64 16}
!137 = !DILocation(line: 92, column: 42, scope: !135)
!138 = !DILocation(line: 92, column: 26, scope: !135)
!139 = !DILocation(line: 92, column: 16, scope: !127)
!140 = !DILocation(line: 93, column: 17, scope: !141)
!141 = distinct !DILexicalBlock(scope: !135, file: !1, line: 92, column: 48)
!142 = !DILocation(line: 94, column: 4, scope: !141)
!143 = !DILocation(line: 95, column: 16, scope: !144)
!144 = distinct !DILexicalBlock(scope: !135, file: !1, line: 94, column: 11)
!145 = !DILocation(line: 98, column: 1, scope: !36)
!146 = !DILocation(line: 113, column: 12, scope: !40)
!147 = !DILocation(line: 114, column: 11, scope: !40)
!148 = !DILocation(line: 123, column: 10, scope: !149)
!149 = distinct !DILexicalBlock(scope: !40, file: !1, line: 123, column: 6)
!150 = !DILocation(line: 123, column: 6, scope: !40)
!151 = !DILocation(line: 124, column: 12, scope: !152)
!152 = distinct !DILexicalBlock(scope: !149, file: !1, line: 123, column: 20)
!153 = !DILocation(line: 124, column: 4, scope: !152)
!154 = !DILocation(line: 126, column: 4, scope: !152)
!155 = !DILocation(line: 128, column: 16, scope: !40)
!156 = !DILocation(line: 117, column: 8, scope: !40)
!157 = !DILocation(line: 129, column: 16, scope: !40)
!158 = !DILocation(line: 116, column: 11, scope: !40)
!159 = !DILocation(line: 130, column: 11, scope: !160)
!160 = distinct !DILexicalBlock(scope: !40, file: !1, line: 130, column: 6)
!161 = !DILocation(line: 130, column: 16, scope: !160)
!162 = !DILocation(line: 130, column: 6, scope: !40)
!163 = !DILocation(line: 131, column: 12, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !1, line: 130, column: 24)
!165 = !DILocation(line: 132, column: 21, scope: !164)
!166 = !DILocation(line: 132, column: 26, scope: !164)
!167 = !DILocation(line: 132, column: 14, scope: !164)
!168 = !DILocation(line: 116, column: 7, scope: !40)
!169 = !DILocation(line: 134, column: 1, scope: !164)
!170 = !DILocation(line: 135, column: 19, scope: !171)
!171 = distinct !DILexicalBlock(scope: !172, file: !1, line: 135, column: 9)
!172 = distinct !DILexicalBlock(scope: !160, file: !1, line: 134, column: 8)
!173 = !DILocation(line: 136, column: 17, scope: !174)
!174 = distinct !DILexicalBlock(scope: !175, file: !1, line: 136, column: 12)
!175 = distinct !DILexicalBlock(scope: !171, file: !1, line: 135, column: 26)
!176 = !DILocation(line: 135, column: 9, scope: !172)
!177 = !DILocation(line: 136, column: 30, scope: !174)
!178 = !DILocation(line: 136, column: 22, scope: !174)
!179 = !DILocation(line: 136, column: 12, scope: !175)
!180 = !DILocation(line: 139, column: 26, scope: !181)
!181 = distinct !DILexicalBlock(scope: !174, file: !1, line: 138, column: 14)
!182 = !DILocation(line: 139, column: 10, scope: !181)
!183 = !DILocation(line: 139, column: 39, scope: !181)
!184 = !DILocation(line: 142, column: 39, scope: !185)
!185 = distinct !DILexicalBlock(scope: !171, file: !1, line: 142, column: 16)
!186 = !DILocation(line: 142, column: 26, scope: !185)
!187 = !DILocation(line: 142, column: 16, scope: !171)
!188 = !DILocation(line: 145, column: 12, scope: !189)
!189 = distinct !DILexicalBlock(scope: !185, file: !1, line: 144, column: 11)
!190 = !DILocation(line: 145, column: 7, scope: !189)
!191 = !DILocation(line: 145, column: 25, scope: !189)
!192 = !DILocation(line: 149, column: 1, scope: !40)
!193 = !DILocation(line: 162, column: 12, scope: !49)
!194 = !DILocation(line: 170, column: 10, scope: !195)
!195 = distinct !DILexicalBlock(scope: !49, file: !1, line: 170, column: 6)
!196 = !DILocation(line: 170, column: 6, scope: !49)
!197 = !DILocation(line: 171, column: 12, scope: !198)
!198 = distinct !DILexicalBlock(scope: !195, file: !1, line: 170, column: 20)
!199 = !DILocation(line: 171, column: 4, scope: !198)
!200 = !DILocation(line: 173, column: 4, scope: !198)
!201 = !DILocation(line: 175, column: 11, scope: !202)
!202 = distinct !DILexicalBlock(scope: !49, file: !1, line: 175, column: 6)
!203 = !DILocation(line: 175, column: 16, scope: !202)
!204 = !DILocation(line: 175, column: 6, scope: !49)
!205 = !DILocation(line: 178, column: 11, scope: !206)
!206 = distinct !DILexicalBlock(scope: !202, file: !1, line: 177, column: 8)
!207 = !DILocation(line: 178, column: 19, scope: !206)
!208 = !DILocation(line: 164, column: 7, scope: !49)
!209 = !DILocation(line: 180, column: 1, scope: !49)
!210 = !DILocation(line: 193, column: 12, scope: !53)
!211 = !DILocation(line: 201, column: 10, scope: !212)
!212 = distinct !DILexicalBlock(scope: !53, file: !1, line: 201, column: 6)
!213 = !DILocation(line: 201, column: 6, scope: !53)
!214 = !DILocation(line: 202, column: 12, scope: !215)
!215 = distinct !DILexicalBlock(scope: !212, file: !1, line: 201, column: 20)
!216 = !DILocation(line: 202, column: 4, scope: !215)
!217 = !DILocation(line: 204, column: 4, scope: !215)
!218 = !DILocation(line: 206, column: 11, scope: !219)
!219 = distinct !DILexicalBlock(scope: !53, file: !1, line: 206, column: 6)
!220 = !DILocation(line: 206, column: 16, scope: !219)
!221 = !DILocation(line: 206, column: 6, scope: !53)
!222 = !DILocation(line: 209, column: 11, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !1, line: 208, column: 8)
!224 = !DILocation(line: 209, column: 19, scope: !223)
!225 = !DILocation(line: 195, column: 7, scope: !53)
!226 = !DILocation(line: 210, column: 14, scope: !227)
!227 = distinct !DILexicalBlock(scope: !223, file: !1, line: 210, column: 9)
!228 = !DILocation(line: 210, column: 19, scope: !227)
!229 = !DILocation(line: 210, column: 9, scope: !223)
!230 = !DILocation(line: 211, column: 29, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !1, line: 210, column: 34)
!232 = !DILocation(line: 211, column: 17, scope: !231)
!233 = !DILocation(line: 212, column: 4, scope: !231)
!234 = !DILocation(line: 212, column: 26, scope: !235)
!235 = distinct !DILexicalBlock(scope: !227, file: !1, line: 212, column: 16)
!236 = !DILocation(line: 212, column: 16, scope: !227)
!237 = !DILocation(line: 213, column: 27, scope: !238)
!238 = distinct !DILexicalBlock(scope: !235, file: !1, line: 212, column: 33)
!239 = !DILocation(line: 213, column: 32, scope: !238)
!240 = !DILocation(line: 213, column: 17, scope: !238)
!241 = !DILocation(line: 214, column: 4, scope: !238)
!242 = !DILocation(line: 215, column: 16, scope: !243)
!243 = distinct !DILexicalBlock(scope: !235, file: !1, line: 214, column: 11)
!244 = !DILocation(line: 218, column: 1, scope: !53)
!245 = !DILocation(line: 233, column: 12, scope: !57)
!246 = !DILocation(line: 234, column: 11, scope: !57)
!247 = !DILocation(line: 243, column: 10, scope: !248)
!248 = distinct !DILexicalBlock(scope: !57, file: !1, line: 243, column: 6)
!249 = !DILocation(line: 243, column: 6, scope: !57)
!250 = !DILocation(line: 244, column: 12, scope: !251)
!251 = distinct !DILexicalBlock(scope: !248, file: !1, line: 243, column: 20)
!252 = !DILocation(line: 244, column: 4, scope: !251)
!253 = !DILocation(line: 246, column: 4, scope: !251)
!254 = !DILocation(line: 248, column: 16, scope: !57)
!255 = !DILocation(line: 237, column: 8, scope: !57)
!256 = !DILocation(line: 236, column: 11, scope: !57)
!257 = !DILocation(line: 250, column: 11, scope: !258)
!258 = distinct !DILexicalBlock(scope: !57, file: !1, line: 250, column: 6)
!259 = !DILocation(line: 250, column: 16, scope: !258)
!260 = !DILocation(line: 250, column: 6, scope: !57)
!261 = !DILocation(line: 251, column: 12, scope: !262)
!262 = distinct !DILexicalBlock(scope: !258, file: !1, line: 250, column: 24)
!263 = !DILocation(line: 252, column: 26, scope: !262)
!264 = !DILocation(line: 252, column: 9, scope: !262)
!265 = !DILocation(line: 252, column: 14, scope: !262)
!266 = !DILocation(line: 236, column: 7, scope: !57)
!267 = !DILocation(line: 254, column: 1, scope: !262)
!268 = !DILocation(line: 249, column: 16, scope: !57)
!269 = !DILocation(line: 255, column: 27, scope: !270)
!270 = distinct !DILexicalBlock(scope: !271, file: !1, line: 255, column: 9)
!271 = distinct !DILexicalBlock(scope: !258, file: !1, line: 254, column: 8)
!272 = !DILocation(line: 255, column: 19, scope: !270)
!273 = !DILocation(line: 255, column: 9, scope: !271)
!274 = !DILocation(line: 256, column: 17, scope: !275)
!275 = distinct !DILexicalBlock(scope: !276, file: !1, line: 256, column: 12)
!276 = distinct !DILexicalBlock(scope: !270, file: !1, line: 255, column: 33)
!277 = !DILocation(line: 256, column: 22, scope: !275)
!278 = !DILocation(line: 256, column: 12, scope: !276)
!279 = !DILocation(line: 259, column: 26, scope: !280)
!280 = distinct !DILexicalBlock(scope: !275, file: !1, line: 258, column: 14)
!281 = !DILocation(line: 259, column: 32, scope: !280)
!282 = !DILocation(line: 262, column: 26, scope: !283)
!283 = distinct !DILexicalBlock(scope: !270, file: !1, line: 262, column: 16)
!284 = !DILocation(line: 262, column: 38, scope: !283)
!285 = !DILocation(line: 262, column: 30, scope: !283)
!286 = !DILocation(line: 262, column: 16, scope: !270)
!287 = !DILocation(line: 265, column: 12, scope: !288)
!288 = distinct !DILexicalBlock(scope: !283, file: !1, line: 264, column: 11)
!289 = !DILocation(line: 265, column: 7, scope: !288)
!290 = !DILocation(line: 265, column: 25, scope: !288)
!291 = !DILocation(line: 269, column: 1, scope: !57)
