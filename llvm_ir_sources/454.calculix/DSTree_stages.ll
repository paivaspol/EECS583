; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IV = type { i32, i32, i32, i32* }
%struct._DSTree = type { %struct._Tree*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A fatal error in DSTree_NDstages(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [56 x i8] c"\0A fatal error in DSTree_NDstages(%p)\0A bad mapIV object\0A\00", align 1
@.str2 = private unnamed_addr constant [50 x i8] c"\0A fatal error in DSTree_ND2stages(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [57 x i8] c"\0A fatal error in DSTree_ND2stages(%p)\0A bad mapIV object\0A\00", align 1
@.str4 = private unnamed_addr constant [50 x i8] c"\0A fatal error in DSTree_MS2stages(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [57 x i8] c"\0A fatal error in DSTree_MS2stages(%p)\0A bad mapIV object\0A\00", align 1
@.str6 = private unnamed_addr constant [50 x i8] c"\0A fatal error in DSTree_MS3stages(%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [57 x i8] c"\0A fatal error in DSTree_MS3stages(%p)\0A bad mapIV object\0A\00", align 1
@.str8 = private unnamed_addr constant [68 x i8] c"\0A fatal error in DSTree_stagesViaDomainWeight(%p,%p,%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [75 x i8] c"\0A fatal error in DSTree_stagesViaDomainWeight(%p,%p,%p)\0A bad mapIV object\0A\00", align 1
@.str10 = private unnamed_addr constant [78 x i8] c"\0A fatal error in DSTree_stagesViaDomainWeight(%p,%p,%p)\0A bad cutoffDV object\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @DSTree_NDstages(%struct._DSTree* %dstree) #0 {
entry:
  %nvtx = alloca i32, align 4
  %map = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._DSTree* %dstree}, i64 0, metadata !37), !dbg !130
  call void @llvm.dbg.declare(metadata !{i32* %nvtx}, metadata !39), !dbg !131
  call void @llvm.dbg.declare(metadata !{i32** %map}, metadata !42), !dbg !132
  %cmp = icmp eq %struct._DSTree* %dstree, null, !dbg !133
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !133

lor.lhs.false:                                    ; preds = %entry
  %tree1 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0, !dbg !133
  %0 = load %struct._Tree** %tree1, align 8, !dbg !133, !tbaa !134
  call void @llvm.dbg.value(metadata !{%struct._Tree* %0}, i64 0, metadata !48), !dbg !133
  %cmp2 = icmp eq %struct._Tree* %0, null, !dbg !133
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !133

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %n = getelementptr inbounds %struct._Tree* %0, i64 0, i32 0, !dbg !133
  %1 = load i32* %n, align 4, !dbg !133, !tbaa !137
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !38), !dbg !133
  %cmp4 = icmp slt i32 %1, 1, !dbg !133
  br i1 %cmp4, label %if.then, label %lor.lhs.false5, !dbg !133

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %mapIV6 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1, !dbg !133
  %2 = load %struct._IV** %mapIV6, align 8, !dbg !133, !tbaa !134
  call void @llvm.dbg.value(metadata !{%struct._IV* %2}, i64 0, metadata !45), !dbg !133
  %cmp7 = icmp eq %struct._IV* %2, null, !dbg !133
  br i1 %cmp7, label %if.then, label %if.end, !dbg !133

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %entry
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !138, !tbaa !134
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), %struct._DSTree* %dstree) #5, !dbg !138
  call void @exit(i32 -1) #6, !dbg !140
  unreachable, !dbg !140

if.end:                                           ; preds = %lor.lhs.false5
  call void @IV_sizeAndEntries(%struct._IV* %2, i32* %nvtx, i32** %map) #5, !dbg !141
  call void @llvm.dbg.value(metadata !{i32** %map}, i64 0, metadata !42), !dbg !142
  %4 = load i32** %map, align 8, !dbg !142, !tbaa !134
  %cmp8 = icmp eq i32* %4, null, !dbg !142
  br i1 %cmp8, label %if.then11, label %lor.lhs.false9, !dbg !142

lor.lhs.false9:                                   ; preds = %if.end
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !39), !dbg !142
  %5 = load i32* %nvtx, align 4, !dbg !142, !tbaa !137
  %cmp10 = icmp slt i32 %5, 1, !dbg !142
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !142

if.then11:                                        ; preds = %lor.lhs.false9, %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !143, !tbaa !134
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), %struct._DSTree* %dstree) #5, !dbg !143
  call void @exit(i32 -1) #6, !dbg !145
  unreachable, !dbg !145

if.end13:                                         ; preds = %lor.lhs.false9
  %call14 = call %struct._IV* @IV_new() #5, !dbg !146
  call void @llvm.dbg.value(metadata !{%struct._IV* %call14}, i64 0, metadata !47), !dbg !146
  call void @IV_init(%struct._IV* %call14, i32 %1, i32* null) #5, !dbg !147
  call void @IV_fill(%struct._IV* %call14, i32 1) #5, !dbg !148
  %call15 = call %struct._IV* @Tree_setHeightImetric(%struct._Tree* %0, %struct._IV* %call14) #5, !dbg !149
  call void @llvm.dbg.value(metadata !{%struct._IV* %call15}, i64 0, metadata !44), !dbg !149
  %call16 = call i32* @IV_entries(%struct._IV* %call15) #5, !dbg !150
  call void @llvm.dbg.value(metadata !{i32* %call16}, i64 0, metadata !41), !dbg !150
  %call17 = call %struct._IV* @IV_new() #5, !dbg !151
  call void @llvm.dbg.value(metadata !{%struct._IV* %call17}, i64 0, metadata !46), !dbg !151
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !39), !dbg !152
  %7 = load i32* %nvtx, align 4, !dbg !152, !tbaa !137
  call void @IV_init(%struct._IV* %call17, i32 %7, i32* null) #5, !dbg !152
  %call18 = call i32* @IV_entries(%struct._IV* %call17) #5, !dbg !153
  call void @llvm.dbg.value(metadata !{i32* %call18}, i64 0, metadata !43), !dbg !153
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !40), !dbg !154
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !39), !dbg !154
  %8 = load i32* %nvtx, align 4, !dbg !154, !tbaa !137
  %cmp1938 = icmp sgt i32 %8, 0, !dbg !154
  br i1 %cmp1938, label %for.body.lr.ph, label %for.end, !dbg !154

for.body.lr.ph:                                   ; preds = %if.end13
  call void @llvm.dbg.value(metadata !{i32** %map}, i64 0, metadata !42), !dbg !156
  %9 = load i32** %map, align 8, !dbg !156, !tbaa !134
  br label %for.body, !dbg !154

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata !{i32** %map}, i64 0, metadata !42), !dbg !156
  %arrayidx = getelementptr inbounds i32* %9, i64 %indvars.iv, !dbg !156
  %10 = load i32* %arrayidx, align 4, !dbg !156, !tbaa !137
  %idxprom20 = sext i32 %10 to i64, !dbg !156
  %arrayidx21 = getelementptr inbounds i32* %call16, i64 %idxprom20, !dbg !156
  %11 = load i32* %arrayidx21, align 4, !dbg !156, !tbaa !137
  %sub = add nsw i32 %11, -1, !dbg !156
  %arrayidx23 = getelementptr inbounds i32* %call18, i64 %indvars.iv, !dbg !156
  store i32 %sub, i32* %arrayidx23, align 4, !dbg !156, !tbaa !137
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !154
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !39), !dbg !154
  %12 = load i32* %nvtx, align 4, !dbg !154, !tbaa !137
  %13 = trunc i64 %indvars.iv.next to i32, !dbg !154
  %cmp19 = icmp slt i32 %13, %12, !dbg !154
  br i1 %cmp19, label %for.body, label %for.end, !dbg !154

for.end:                                          ; preds = %for.body, %if.end13
  call void @IV_free(%struct._IV* %call14) #5, !dbg !158
  call void @IV_free(%struct._IV* %call15) #5, !dbg !159
  ret %struct._IV* %call17, !dbg !160
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare void @IV_sizeAndEntries(%struct._IV*, i32*, i32**) #4

; Function Attrs: optsize
declare %struct._IV* @IV_new() #4

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #4

; Function Attrs: optsize
declare void @IV_fill(%struct._IV*, i32) #4

; Function Attrs: optsize
declare %struct._IV* @Tree_setHeightImetric(%struct._Tree*, %struct._IV*) #4

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #4

; Function Attrs: optsize
declare void @IV_free(%struct._IV*) #4

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @DSTree_ND2stages(%struct._DSTree* %dstree) #0 {
entry:
  %nvtx = alloca i32, align 4
  %map = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._DSTree* %dstree}, i64 0, metadata !51), !dbg !161
  call void @llvm.dbg.declare(metadata !{i32* %nvtx}, metadata !53), !dbg !162
  call void @llvm.dbg.declare(metadata !{i32** %map}, metadata !56), !dbg !163
  %cmp = icmp eq %struct._DSTree* %dstree, null, !dbg !164
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !164

lor.lhs.false:                                    ; preds = %entry
  %tree1 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0, !dbg !164
  %0 = load %struct._Tree** %tree1, align 8, !dbg !164, !tbaa !134
  call void @llvm.dbg.value(metadata !{%struct._Tree* %0}, i64 0, metadata !62), !dbg !164
  %cmp2 = icmp eq %struct._Tree* %0, null, !dbg !164
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !164

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %n = getelementptr inbounds %struct._Tree* %0, i64 0, i32 0, !dbg !164
  %1 = load i32* %n, align 4, !dbg !164, !tbaa !137
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !52), !dbg !164
  %cmp4 = icmp slt i32 %1, 1, !dbg !164
  br i1 %cmp4, label %if.then, label %lor.lhs.false5, !dbg !164

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %mapIV6 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1, !dbg !164
  %2 = load %struct._IV** %mapIV6, align 8, !dbg !164, !tbaa !134
  call void @llvm.dbg.value(metadata !{%struct._IV* %2}, i64 0, metadata !59), !dbg !164
  %cmp7 = icmp eq %struct._IV* %2, null, !dbg !164
  br i1 %cmp7, label %if.then, label %if.end, !dbg !164

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %entry
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !165, !tbaa !134
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), %struct._DSTree* %dstree) #5, !dbg !165
  call void @exit(i32 -1) #6, !dbg !167
  unreachable, !dbg !167

if.end:                                           ; preds = %lor.lhs.false5
  call void @IV_sizeAndEntries(%struct._IV* %2, i32* %nvtx, i32** %map) #5, !dbg !168
  call void @llvm.dbg.value(metadata !{i32** %map}, i64 0, metadata !56), !dbg !169
  %4 = load i32** %map, align 8, !dbg !169, !tbaa !134
  %cmp8 = icmp eq i32* %4, null, !dbg !169
  br i1 %cmp8, label %if.then11, label %lor.lhs.false9, !dbg !169

lor.lhs.false9:                                   ; preds = %if.end
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !53), !dbg !169
  %5 = load i32* %nvtx, align 4, !dbg !169, !tbaa !137
  %cmp10 = icmp slt i32 %5, 1, !dbg !169
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !169

if.then11:                                        ; preds = %lor.lhs.false9, %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !170, !tbaa !134
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([57 x i8]* @.str3, i64 0, i64 0), %struct._DSTree* %dstree) #5, !dbg !170
  call void @exit(i32 -1) #6, !dbg !172
  unreachable, !dbg !172

if.end13:                                         ; preds = %lor.lhs.false9
  %call14 = call %struct._IV* @IV_new() #5, !dbg !173
  call void @llvm.dbg.value(metadata !{%struct._IV* %call14}, i64 0, metadata !61), !dbg !173
  call void @IV_init(%struct._IV* %call14, i32 %1, i32* null) #5, !dbg !174
  call void @IV_fill(%struct._IV* %call14, i32 1) #5, !dbg !175
  %call15 = call %struct._IV* @Tree_setHeightImetric(%struct._Tree* %0, %struct._IV* %call14) #5, !dbg !176
  call void @llvm.dbg.value(metadata !{%struct._IV* %call15}, i64 0, metadata !58), !dbg !176
  %call16 = call i32* @IV_entries(%struct._IV* %call15) #5, !dbg !177
  call void @llvm.dbg.value(metadata !{i32* %call16}, i64 0, metadata !55), !dbg !177
  %call17 = call %struct._IV* @IV_new() #5, !dbg !178
  call void @llvm.dbg.value(metadata !{%struct._IV* %call17}, i64 0, metadata !60), !dbg !178
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !53), !dbg !179
  %7 = load i32* %nvtx, align 4, !dbg !179, !tbaa !137
  call void @IV_init(%struct._IV* %call17, i32 %7, i32* null) #5, !dbg !179
  %call18 = call i32* @IV_entries(%struct._IV* %call17) #5, !dbg !180
  call void @llvm.dbg.value(metadata !{i32* %call18}, i64 0, metadata !57), !dbg !180
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !54), !dbg !181
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !53), !dbg !181
  %8 = load i32* %nvtx, align 4, !dbg !181, !tbaa !137
  %cmp1953 = icmp sgt i32 %8, 0, !dbg !181
  br i1 %cmp1953, label %for.body.lr.ph, label %for.end, !dbg !181

for.body.lr.ph:                                   ; preds = %if.end13
  call void @llvm.dbg.value(metadata !{i32** %map}, i64 0, metadata !56), !dbg !183
  %9 = load i32** %map, align 8, !dbg !183, !tbaa !134
  br label %for.body, !dbg !181

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata !{i32** %map}, i64 0, metadata !56), !dbg !183
  %arrayidx = getelementptr inbounds i32* %9, i64 %indvars.iv, !dbg !183
  %10 = load i32* %arrayidx, align 4, !dbg !183, !tbaa !137
  %idxprom20 = sext i32 %10 to i64, !dbg !183
  %arrayidx21 = getelementptr inbounds i32* %call16, i64 %idxprom20, !dbg !183
  %11 = load i32* %arrayidx21, align 4, !dbg !183, !tbaa !137
  %sub = add nsw i32 %11, -1, !dbg !183
  %arrayidx23 = getelementptr inbounds i32* %call18, i64 %indvars.iv, !dbg !183
  %cmp26 = icmp sgt i32 %sub, 0, !dbg !185
  br i1 %cmp26, label %if.then27, label %for.inc, !dbg !185

if.then27:                                        ; preds = %for.body
  %div = sdiv i32 %11, 2, !dbg !186
  br label %for.inc, !dbg !188

for.inc:                                          ; preds = %for.body, %if.then27
  %storemerge = phi i32 [ %div, %if.then27 ], [ %sub, %for.body ]
  store i32 %storemerge, i32* %arrayidx23, align 4, !dbg !183, !tbaa !137
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !181
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !53), !dbg !181
  %12 = load i32* %nvtx, align 4, !dbg !181, !tbaa !137
  %13 = trunc i64 %indvars.iv.next to i32, !dbg !181
  %cmp19 = icmp slt i32 %13, %12, !dbg !181
  br i1 %cmp19, label %for.body, label %for.end, !dbg !181

for.end:                                          ; preds = %for.inc, %if.end13
  call void @IV_free(%struct._IV* %call14) #5, !dbg !189
  call void @IV_free(%struct._IV* %call15) #5, !dbg !190
  ret %struct._IV* %call17, !dbg !191
}

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @DSTree_MS2stages(%struct._DSTree* %dstree) #0 {
entry:
  %nvtx = alloca i32, align 4
  %map = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._DSTree* %dstree}, i64 0, metadata !65), !dbg !192
  call void @llvm.dbg.declare(metadata !{i32* %nvtx}, metadata !67), !dbg !193
  call void @llvm.dbg.declare(metadata !{i32** %map}, metadata !70), !dbg !194
  %cmp = icmp eq %struct._DSTree* %dstree, null, !dbg !195
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !195

lor.lhs.false:                                    ; preds = %entry
  %tree1 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0, !dbg !195
  %0 = load %struct._Tree** %tree1, align 8, !dbg !195, !tbaa !134
  call void @llvm.dbg.value(metadata !{%struct._Tree* %0}, i64 0, metadata !76), !dbg !195
  %cmp2 = icmp eq %struct._Tree* %0, null, !dbg !195
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !195

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %n = getelementptr inbounds %struct._Tree* %0, i64 0, i32 0, !dbg !195
  %1 = load i32* %n, align 4, !dbg !195, !tbaa !137
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !66), !dbg !195
  %cmp4 = icmp slt i32 %1, 1, !dbg !195
  br i1 %cmp4, label %if.then, label %lor.lhs.false5, !dbg !195

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %mapIV6 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1, !dbg !195
  %2 = load %struct._IV** %mapIV6, align 8, !dbg !195, !tbaa !134
  call void @llvm.dbg.value(metadata !{%struct._IV* %2}, i64 0, metadata !73), !dbg !195
  %cmp7 = icmp eq %struct._IV* %2, null, !dbg !195
  br i1 %cmp7, label %if.then, label %if.end, !dbg !195

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %entry
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !196, !tbaa !134
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([50 x i8]* @.str4, i64 0, i64 0), %struct._DSTree* %dstree) #5, !dbg !196
  call void @exit(i32 -1) #6, !dbg !198
  unreachable, !dbg !198

if.end:                                           ; preds = %lor.lhs.false5
  call void @IV_sizeAndEntries(%struct._IV* %2, i32* %nvtx, i32** %map) #5, !dbg !199
  call void @llvm.dbg.value(metadata !{i32** %map}, i64 0, metadata !70), !dbg !200
  %4 = load i32** %map, align 8, !dbg !200, !tbaa !134
  %cmp8 = icmp eq i32* %4, null, !dbg !200
  br i1 %cmp8, label %if.then11, label %lor.lhs.false9, !dbg !200

lor.lhs.false9:                                   ; preds = %if.end
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !67), !dbg !200
  %5 = load i32* %nvtx, align 4, !dbg !200, !tbaa !137
  %cmp10 = icmp slt i32 %5, 1, !dbg !200
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !200

if.then11:                                        ; preds = %lor.lhs.false9, %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !201, !tbaa !134
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([57 x i8]* @.str5, i64 0, i64 0), %struct._DSTree* %dstree) #5, !dbg !201
  call void @exit(i32 -1) #6, !dbg !203
  unreachable, !dbg !203

if.end13:                                         ; preds = %lor.lhs.false9
  %call14 = call %struct._IV* @IV_new() #5, !dbg !204
  call void @llvm.dbg.value(metadata !{%struct._IV* %call14}, i64 0, metadata !75), !dbg !204
  call void @IV_init(%struct._IV* %call14, i32 %1, i32* null) #5, !dbg !205
  call void @IV_fill(%struct._IV* %call14, i32 1) #5, !dbg !206
  %call15 = call %struct._IV* @Tree_setHeightImetric(%struct._Tree* %0, %struct._IV* %call14) #5, !dbg !207
  call void @llvm.dbg.value(metadata !{%struct._IV* %call15}, i64 0, metadata !72), !dbg !207
  %call16 = call i32* @IV_entries(%struct._IV* %call15) #5, !dbg !208
  call void @llvm.dbg.value(metadata !{i32* %call16}, i64 0, metadata !69), !dbg !208
  %call17 = call %struct._IV* @IV_new() #5, !dbg !209
  call void @llvm.dbg.value(metadata !{%struct._IV* %call17}, i64 0, metadata !74), !dbg !209
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !67), !dbg !210
  %7 = load i32* %nvtx, align 4, !dbg !210, !tbaa !137
  call void @IV_init(%struct._IV* %call17, i32 %7, i32* null) #5, !dbg !210
  %call18 = call i32* @IV_entries(%struct._IV* %call17) #5, !dbg !211
  call void @llvm.dbg.value(metadata !{i32* %call18}, i64 0, metadata !71), !dbg !211
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !68), !dbg !212
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !67), !dbg !212
  %8 = load i32* %nvtx, align 4, !dbg !212, !tbaa !137
  %cmp1949 = icmp sgt i32 %8, 0, !dbg !212
  br i1 %cmp1949, label %for.body.lr.ph, label %for.end, !dbg !212

for.body.lr.ph:                                   ; preds = %if.end13
  call void @llvm.dbg.value(metadata !{i32** %map}, i64 0, metadata !70), !dbg !214
  %9 = load i32** %map, align 8, !dbg !214, !tbaa !134
  br label %for.body, !dbg !212

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata !{i32** %map}, i64 0, metadata !70), !dbg !214
  %arrayidx = getelementptr inbounds i32* %9, i64 %indvars.iv, !dbg !214
  %10 = load i32* %arrayidx, align 4, !dbg !214, !tbaa !137
  %idxprom20 = sext i32 %10 to i64, !dbg !214
  %arrayidx21 = getelementptr inbounds i32* %call16, i64 %idxprom20, !dbg !214
  %11 = load i32* %arrayidx21, align 4, !dbg !214, !tbaa !137
  %sub = add nsw i32 %11, -1, !dbg !214
  %arrayidx23 = getelementptr inbounds i32* %call18, i64 %indvars.iv, !dbg !214
  %cmp26 = icmp slt i32 %sub, 1, !dbg !216
  %.sub = select i1 %cmp26, i32 %sub, i32 1, !dbg !216
  store i32 %.sub, i32* %arrayidx23, align 4, !dbg !214, !tbaa !137
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !212
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !67), !dbg !212
  %12 = load i32* %nvtx, align 4, !dbg !212, !tbaa !137
  %13 = trunc i64 %indvars.iv.next to i32, !dbg !212
  %cmp19 = icmp slt i32 %13, %12, !dbg !212
  br i1 %cmp19, label %for.body, label %for.end, !dbg !212

for.end:                                          ; preds = %for.body, %if.end13
  call void @IV_free(%struct._IV* %call14) #5, !dbg !217
  call void @IV_free(%struct._IV* %call15) #5, !dbg !218
  ret %struct._IV* %call17, !dbg !219
}

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @DSTree_MS3stages(%struct._DSTree* %dstree) #0 {
entry:
  %nvtx = alloca i32, align 4
  %map = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._DSTree* %dstree}, i64 0, metadata !79), !dbg !220
  call void @llvm.dbg.declare(metadata !{i32* %nvtx}, metadata !82), !dbg !221
  call void @llvm.dbg.declare(metadata !{i32** %map}, metadata !85), !dbg !222
  %cmp = icmp eq %struct._DSTree* %dstree, null, !dbg !223
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !223

lor.lhs.false:                                    ; preds = %entry
  %tree1 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0, !dbg !223
  %0 = load %struct._Tree** %tree1, align 8, !dbg !223, !tbaa !134
  call void @llvm.dbg.value(metadata !{%struct._Tree* %0}, i64 0, metadata !91), !dbg !223
  %cmp2 = icmp eq %struct._Tree* %0, null, !dbg !223
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !223

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %n = getelementptr inbounds %struct._Tree* %0, i64 0, i32 0, !dbg !223
  %1 = load i32* %n, align 4, !dbg !223, !tbaa !137
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !80), !dbg !223
  %cmp4 = icmp slt i32 %1, 1, !dbg !223
  br i1 %cmp4, label %if.then, label %lor.lhs.false5, !dbg !223

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %mapIV6 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1, !dbg !223
  %2 = load %struct._IV** %mapIV6, align 8, !dbg !223, !tbaa !134
  call void @llvm.dbg.value(metadata !{%struct._IV* %2}, i64 0, metadata !88), !dbg !223
  %cmp7 = icmp eq %struct._IV* %2, null, !dbg !223
  br i1 %cmp7, label %if.then, label %if.end, !dbg !223

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %entry
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !224, !tbaa !134
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([50 x i8]* @.str6, i64 0, i64 0), %struct._DSTree* %dstree) #5, !dbg !224
  call void @exit(i32 -1) #6, !dbg !226
  unreachable, !dbg !226

if.end:                                           ; preds = %lor.lhs.false5
  call void @IV_sizeAndEntries(%struct._IV* %2, i32* %nvtx, i32** %map) #5, !dbg !227
  call void @llvm.dbg.value(metadata !{i32** %map}, i64 0, metadata !85), !dbg !228
  %4 = load i32** %map, align 8, !dbg !228, !tbaa !134
  %cmp8 = icmp eq i32* %4, null, !dbg !228
  br i1 %cmp8, label %if.then11, label %lor.lhs.false9, !dbg !228

lor.lhs.false9:                                   ; preds = %if.end
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !82), !dbg !228
  %5 = load i32* %nvtx, align 4, !dbg !228, !tbaa !137
  %cmp10 = icmp slt i32 %5, 1, !dbg !228
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !228

if.then11:                                        ; preds = %lor.lhs.false9, %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !229, !tbaa !134
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([57 x i8]* @.str7, i64 0, i64 0), %struct._DSTree* %dstree) #5, !dbg !229
  call void @exit(i32 -1) #6, !dbg !231
  unreachable, !dbg !231

if.end13:                                         ; preds = %lor.lhs.false9
  %call14 = call %struct._IV* @IV_new() #5, !dbg !232
  call void @llvm.dbg.value(metadata !{%struct._IV* %call14}, i64 0, metadata !90), !dbg !232
  call void @IV_init(%struct._IV* %call14, i32 %1, i32* null) #5, !dbg !233
  call void @IV_fill(%struct._IV* %call14, i32 1) #5, !dbg !234
  %call15 = call %struct._IV* @Tree_setHeightImetric(%struct._Tree* %0, %struct._IV* %call14) #5, !dbg !235
  call void @llvm.dbg.value(metadata !{%struct._IV* %call15}, i64 0, metadata !87), !dbg !235
  %call16 = call i32* @IV_entries(%struct._IV* %call15) #5, !dbg !236
  call void @llvm.dbg.value(metadata !{i32* %call16}, i64 0, metadata !84), !dbg !236
  %call17 = call i32 @IV_max(%struct._IV* %call15) #5, !dbg !237
  call void @llvm.dbg.value(metadata !{i32 %call17}, i64 0, metadata !81), !dbg !237
  %call18 = call %struct._IV* @IV_new() #5, !dbg !238
  call void @llvm.dbg.value(metadata !{%struct._IV* %call18}, i64 0, metadata !89), !dbg !238
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !82), !dbg !239
  %7 = load i32* %nvtx, align 4, !dbg !239, !tbaa !137
  call void @IV_init(%struct._IV* %call18, i32 %7, i32* null) #5, !dbg !239
  %call19 = call i32* @IV_entries(%struct._IV* %call18) #5, !dbg !240
  call void @llvm.dbg.value(metadata !{i32* %call19}, i64 0, metadata !86), !dbg !240
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !83), !dbg !241
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !82), !dbg !241
  %8 = load i32* %nvtx, align 4, !dbg !241, !tbaa !137
  %cmp2060 = icmp sgt i32 %8, 0, !dbg !241
  br i1 %cmp2060, label %for.body.lr.ph, label %for.end, !dbg !241

for.body.lr.ph:                                   ; preds = %if.end13
  call void @llvm.dbg.value(metadata !{i32** %map}, i64 0, metadata !85), !dbg !243
  %9 = load i32** %map, align 8, !dbg !243, !tbaa !134
  br label %for.body, !dbg !241

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata !{i32** %map}, i64 0, metadata !85), !dbg !243
  %arrayidx = getelementptr inbounds i32* %9, i64 %indvars.iv, !dbg !243
  %10 = load i32* %arrayidx, align 4, !dbg !243, !tbaa !137
  %idxprom21 = sext i32 %10 to i64, !dbg !243
  %arrayidx22 = getelementptr inbounds i32* %call16, i64 %idxprom21, !dbg !243
  %11 = load i32* %arrayidx22, align 4, !dbg !243, !tbaa !137
  %sub = add nsw i32 %11, -1, !dbg !243
  %arrayidx24 = getelementptr inbounds i32* %call19, i64 %indvars.iv, !dbg !243
  store i32 %sub, i32* %arrayidx24, align 4, !dbg !243, !tbaa !137
  %cmp27 = icmp sgt i32 %sub, 0, !dbg !245
  br i1 %cmp27, label %if.then28, label %for.inc, !dbg !245

if.then28:                                        ; preds = %for.body
  %mul = shl nsw i32 %sub, 1, !dbg !246
  %cmp31 = icmp sgt i32 %mul, %call17, !dbg !246
  br i1 %cmp31, label %if.then32, label %if.else, !dbg !246

if.then32:                                        ; preds = %if.then28
  store i32 2, i32* %arrayidx24, align 4, !dbg !248, !tbaa !137
  br label %for.inc, !dbg !250

if.else:                                          ; preds = %if.then28
  store i32 1, i32* %arrayidx24, align 4, !dbg !251, !tbaa !137
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.else, %if.then32
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !241
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !82), !dbg !241
  %12 = load i32* %nvtx, align 4, !dbg !241, !tbaa !137
  %13 = trunc i64 %indvars.iv.next to i32, !dbg !241
  %cmp20 = icmp slt i32 %13, %12, !dbg !241
  br i1 %cmp20, label %for.body, label %for.end, !dbg !241

for.end:                                          ; preds = %for.inc, %if.end13
  call void @IV_free(%struct._IV* %call14) #5, !dbg !253
  call void @IV_free(%struct._IV* %call15) #5, !dbg !254
  ret %struct._IV* %call18, !dbg !255
}

; Function Attrs: optsize
declare i32 @IV_max(%struct._IV*) #4

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @DSTree_stagesViaDomainWeight(%struct._DSTree* %dstree, i32* %vwghts, %struct._DV* %cutoffDV) #0 {
entry:
  %cutoffs = alloca double*, align 8
  %nstage = alloca i32, align 4
  %nvtx = alloca i32, align 4
  %map = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._DSTree* %dstree}, i64 0, metadata !107), !dbg !256
  call void @llvm.dbg.value(metadata !{i32* %vwghts}, i64 0, metadata !108), !dbg !257
  call void @llvm.dbg.value(metadata !{%struct._DV* %cutoffDV}, i64 0, metadata !109), !dbg !258
  call void @llvm.dbg.declare(metadata !{double** %cutoffs}, metadata !111), !dbg !259
  call void @llvm.dbg.declare(metadata !{i32* %nstage}, metadata !120), !dbg !260
  call void @llvm.dbg.declare(metadata !{i32* %nvtx}, metadata !121), !dbg !260
  call void @llvm.dbg.declare(metadata !{i32** %map}, metadata !123), !dbg !261
  %cmp = icmp eq %struct._DSTree* %dstree, null, !dbg !262
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !262

lor.lhs.false:                                    ; preds = %entry
  %tree1 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0, !dbg !262
  %0 = load %struct._Tree** %tree1, align 8, !dbg !262, !tbaa !134
  call void @llvm.dbg.value(metadata !{%struct._Tree* %0}, i64 0, metadata !129), !dbg !262
  %cmp2 = icmp eq %struct._Tree* %0, null, !dbg !262
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !262

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %n = getelementptr inbounds %struct._Tree* %0, i64 0, i32 0, !dbg !262
  %1 = load i32* %n, align 4, !dbg !262, !tbaa !137
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !119), !dbg !262
  %cmp4 = icmp slt i32 %1, 1, !dbg !262
  br i1 %cmp4, label %if.then, label %lor.lhs.false5, !dbg !262

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %mapIV6 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1, !dbg !262
  %2 = load %struct._IV** %mapIV6, align 8, !dbg !262, !tbaa !134
  call void @llvm.dbg.value(metadata !{%struct._IV* %2}, i64 0, metadata !127), !dbg !262
  %cmp7 = icmp eq %struct._IV* %2, null, !dbg !262
  %cmp9 = icmp eq %struct._DV* %cutoffDV, null, !dbg !262
  %or.cond = or i1 %cmp7, %cmp9, !dbg !262
  br i1 %or.cond, label %if.then, label %if.end, !dbg !262

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %entry
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !263, !tbaa !134
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([68 x i8]* @.str8, i64 0, i64 0), %struct._DSTree* %dstree, i32* %vwghts, %struct._DV* %cutoffDV) #5, !dbg !263
  call void @exit(i32 -1) #6, !dbg !265
  unreachable, !dbg !265

if.end:                                           ; preds = %lor.lhs.false5
  call void @IV_sizeAndEntries(%struct._IV* %2, i32* %nvtx, i32** %map) #5, !dbg !266
  call void @llvm.dbg.value(metadata !{i32** %map}, i64 0, metadata !123), !dbg !267
  %4 = load i32** %map, align 8, !dbg !267, !tbaa !134
  %cmp10 = icmp eq i32* %4, null, !dbg !267
  br i1 %cmp10, label %if.then13, label %lor.lhs.false11, !dbg !267

lor.lhs.false11:                                  ; preds = %if.end
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !121), !dbg !267
  %5 = load i32* %nvtx, align 4, !dbg !267, !tbaa !137
  %cmp12 = icmp slt i32 %5, 1, !dbg !267
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !267

if.then13:                                        ; preds = %lor.lhs.false11, %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !268, !tbaa !134
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([75 x i8]* @.str9, i64 0, i64 0), %struct._DSTree* %dstree, i32* %vwghts, %struct._DV* %cutoffDV) #5, !dbg !268
  call void @exit(i32 -1) #6, !dbg !270
  unreachable, !dbg !270

if.end15:                                         ; preds = %lor.lhs.false11
  call void @DV_sizeAndEntries(%struct._DV* %cutoffDV, i32* %nstage, double** %cutoffs) #5, !dbg !271
  call void @llvm.dbg.value(metadata !{double** %cutoffs}, i64 0, metadata !111), !dbg !272
  %7 = load double** %cutoffs, align 8, !dbg !272, !tbaa !134
  %cmp16 = icmp eq double* %7, null, !dbg !272
  br i1 %cmp16, label %if.then19, label %lor.lhs.false17, !dbg !272

lor.lhs.false17:                                  ; preds = %if.end15
  call void @llvm.dbg.value(metadata !{i32* %nstage}, i64 0, metadata !120), !dbg !272
  %8 = load i32* %nstage, align 4, !dbg !272, !tbaa !137
  %cmp18 = icmp slt i32 %8, 1, !dbg !272
  br i1 %cmp18, label %if.then19, label %if.end21, !dbg !272

if.then19:                                        ; preds = %lor.lhs.false17, %if.end15
  %9 = load %struct._IO_FILE** @stderr, align 8, !dbg !273, !tbaa !134
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([78 x i8]* @.str10, i64 0, i64 0), %struct._DSTree* %dstree, i32* %vwghts, %struct._DV* %cutoffDV) #5, !dbg !273
  call void @exit(i32 -1) #6, !dbg !275
  unreachable, !dbg !275

if.end21:                                         ; preds = %lor.lhs.false17
  %call22 = call %struct._DV* @DV_new() #5, !dbg !276
  call void @llvm.dbg.value(metadata !{%struct._DV* %call22}, i64 0, metadata !114), !dbg !276
  call void @DV_init(%struct._DV* %call22, i32 %1, double* null) #5, !dbg !277
  call void @DV_fill(%struct._DV* %call22, double 0.000000e+00) #5, !dbg !278
  %call23 = call double* @DV_entries(%struct._DV* %call22) #5, !dbg !279
  call void @llvm.dbg.value(metadata !{double* %call23}, i64 0, metadata !112), !dbg !279
  call void @llvm.dbg.value(metadata !280, i64 0, metadata !110), !dbg !281
  %cmp24 = icmp eq i32* %vwghts, null, !dbg !282
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !122), !dbg !283
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !121), !dbg !283
  %10 = load i32* %nvtx, align 4, !dbg !283, !tbaa !137
  %cmp26275 = icmp sgt i32 %10, 0, !dbg !283
  br i1 %cmp24, label %for.cond.preheader, label %for.cond30.preheader, !dbg !282

for.cond30.preheader:                             ; preds = %if.end21
  br i1 %cmp26275, label %for.body33.lr.ph, label %if.end48, !dbg !286

for.body33.lr.ph:                                 ; preds = %for.cond30.preheader
  call void @llvm.dbg.value(metadata !{i32** %map}, i64 0, metadata !123), !dbg !289
  %11 = load i32** %map, align 8, !dbg !289, !tbaa !134
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !121), !dbg !286
  br label %for.body33, !dbg !286

for.cond.preheader:                               ; preds = %if.end21
  br i1 %cmp26275, label %for.body.lr.ph, label %for.end, !dbg !283

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  call void @llvm.dbg.value(metadata !{i32** %map}, i64 0, metadata !123), !dbg !291
  %12 = load i32** %map, align 8, !dbg !291, !tbaa !134
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !121), !dbg !283
  br label %for.body, !dbg !283

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv303 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next304, %for.body ]
  call void @llvm.dbg.value(metadata !{i32** %map}, i64 0, metadata !123), !dbg !291
  %arrayidx = getelementptr inbounds i32* %12, i64 %indvars.iv303, !dbg !291
  %13 = load i32* %arrayidx, align 4, !dbg !291, !tbaa !137
  %idxprom27 = sext i32 %13 to i64, !dbg !291
  %arrayidx28 = getelementptr inbounds double* %call23, i64 %idxprom27, !dbg !291
  %14 = load double* %arrayidx28, align 8, !dbg !291, !tbaa !293
  %inc = fadd double %14, 1.000000e+00, !dbg !291
  store double %inc, double* %arrayidx28, align 8, !dbg !291, !tbaa !293
  %indvars.iv.next304 = add i64 %indvars.iv303, 1, !dbg !283
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !121), !dbg !283
  %15 = trunc i64 %indvars.iv.next304 to i32, !dbg !283
  %cmp26 = icmp slt i32 %15, %10, !dbg !283
  br i1 %cmp26, label %for.body, label %for.end, !dbg !283

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %conv = sitofp i32 %10 to double, !dbg !294
  call void @llvm.dbg.value(metadata !{double %conv}, i64 0, metadata !110), !dbg !294
  br label %if.end48, !dbg !295

for.body33:                                       ; preds = %for.body33.lr.ph, %for.body33
  %indvars.iv305 = phi i64 [ 0, %for.body33.lr.ph ], [ %indvars.iv.next306, %for.body33 ]
  %totvwght.0280 = phi double [ 0.000000e+00, %for.body33.lr.ph ], [ %add44, %for.body33 ]
  %arrayidx35 = getelementptr inbounds i32* %vwghts, i64 %indvars.iv305, !dbg !289
  %16 = load i32* %arrayidx35, align 4, !dbg !289, !tbaa !137
  %conv36 = sitofp i32 %16 to double, !dbg !289
  call void @llvm.dbg.value(metadata !{i32** %map}, i64 0, metadata !123), !dbg !289
  %arrayidx38 = getelementptr inbounds i32* %11, i64 %indvars.iv305, !dbg !289
  %17 = load i32* %arrayidx38, align 4, !dbg !289, !tbaa !137
  %idxprom39 = sext i32 %17 to i64, !dbg !289
  %arrayidx40 = getelementptr inbounds double* %call23, i64 %idxprom39, !dbg !289
  %18 = load double* %arrayidx40, align 8, !dbg !289, !tbaa !293
  %add = fadd double %conv36, %18, !dbg !289
  store double %add, double* %arrayidx40, align 8, !dbg !289, !tbaa !293
  %add44 = fadd double %totvwght.0280, %conv36, !dbg !296
  call void @llvm.dbg.value(metadata !{double %add44}, i64 0, metadata !110), !dbg !296
  %indvars.iv.next306 = add i64 %indvars.iv305, 1, !dbg !286
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !121), !dbg !286
  %19 = trunc i64 %indvars.iv.next306 to i32, !dbg !286
  %cmp31 = icmp slt i32 %19, %10, !dbg !286
  br i1 %cmp31, label %for.body33, label %if.end48, !dbg !286

if.end48:                                         ; preds = %for.cond30.preheader, %for.body33, %for.end
  %totvwght.1 = phi double [ %conv, %for.end ], [ 0.000000e+00, %for.cond30.preheader ], [ %add44, %for.body33 ]
  %call49 = call %struct._DV* @Tree_setSubtreeDmetric(%struct._Tree* %0, %struct._DV* %call22) #5, !dbg !297
  call void @llvm.dbg.value(metadata !{%struct._DV* %call49}, i64 0, metadata !115), !dbg !297
  %call50 = call double* @DV_entries(%struct._DV* %call49) #5, !dbg !298
  call void @llvm.dbg.value(metadata !{double* %call50}, i64 0, metadata !113), !dbg !298
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !116), !dbg !299
  %cmp52273 = icmp sgt i32 %1, 0, !dbg !299
  br i1 %cmp52273, label %for.body54, label %for.end59.thread, !dbg !299

for.end59.thread:                                 ; preds = %if.end48
  call void @llvm.dbg.value(metadata !{i32* %nstage}, i64 0, metadata !120), !dbg !301
  %20 = load i32* %nstage, align 4, !dbg !301, !tbaa !137
  %call60308 = call i32* @IVinit(i32 %20, i32 -1) #5, !dbg !301
  call void @llvm.dbg.value(metadata !{i32* %call60309}, i64 0, metadata !124), !dbg !301
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !116), !dbg !302
  br label %for.cond100.preheader, !dbg !302

for.body54:                                       ; preds = %if.end48, %for.body54
  %indvars.iv299 = phi i64 [ %indvars.iv.next300, %for.body54 ], [ 0, %if.end48 ]
  %arrayidx56 = getelementptr inbounds double* %call50, i64 %indvars.iv299, !dbg !304
  %21 = load double* %arrayidx56, align 8, !dbg !304, !tbaa !293
  %div = fdiv double %21, %totvwght.1, !dbg !304
  store double %div, double* %arrayidx56, align 8, !dbg !304, !tbaa !293
  %indvars.iv.next300 = add i64 %indvars.iv299, 1, !dbg !299
  %lftr.wideiv301 = trunc i64 %indvars.iv.next300 to i32, !dbg !299
  %exitcond302 = icmp eq i32 %lftr.wideiv301, %1, !dbg !299
  br i1 %exitcond302, label %for.end59, label %for.body54, !dbg !299

for.end59:                                        ; preds = %for.body54
  call void @llvm.dbg.value(metadata !{i32* %nstage}, i64 0, metadata !120), !dbg !301
  %22 = load i32* %nstage, align 4, !dbg !301, !tbaa !137
  %call60 = call i32* @IVinit(i32 %22, i32 -1) #5, !dbg !301
  call void @llvm.dbg.value(metadata !{i32* %call60309}, i64 0, metadata !124), !dbg !301
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !116), !dbg !302
  br i1 %cmp52273, label %for.cond65.preheader.lr.ph, label %for.cond100.preheader, !dbg !302

for.cond65.preheader.lr.ph:                       ; preds = %for.end59
  call void @llvm.dbg.value(metadata !{double** %cutoffs}, i64 0, metadata !111), !dbg !306
  %23 = load double** %cutoffs, align 8, !dbg !306, !tbaa !134
  br label %for.cond65.preheader, !dbg !302

for.cond65.preheader:                             ; preds = %for.inc97, %for.cond65.preheader.lr.ph
  %indvars.iv295 = phi i64 [ 0, %for.cond65.preheader.lr.ph ], [ %indvars.iv.next296, %for.inc97 ]
  call void @llvm.dbg.value(metadata !{i32* %nstage}, i64 0, metadata !120), !dbg !310
  %24 = load i32* %nstage, align 4, !dbg !310, !tbaa !137
  %sub267 = add nsw i32 %24, -1, !dbg !310
  %cmp66268 = icmp sgt i32 %sub267, 0, !dbg !310
  br i1 %cmp66268, label %for.body68.lr.ph, label %for.end88, !dbg !310

for.body68.lr.ph:                                 ; preds = %for.cond65.preheader
  %arrayidx72 = getelementptr inbounds double* %call50, i64 %indvars.iv295, !dbg !306
  %25 = load double* %arrayidx72, align 8, !dbg !306, !tbaa !293
  call void @llvm.dbg.value(metadata !{i32* %nstage}, i64 0, metadata !120), !dbg !310
  br label %for.body68, !dbg !310

for.cond100.preheader:                            ; preds = %for.inc97, %for.end59, %for.end59.thread
  %call60309 = phi i32* [ %call60308, %for.end59.thread ], [ %call60, %for.end59 ], [ %call60, %for.inc97 ]
  call void @llvm.dbg.value(metadata !{i32* %nstage}, i64 0, metadata !120), !dbg !311
  %26 = load i32* %nstage, align 4, !dbg !311, !tbaa !137
  %cmp101261 = icmp sgt i32 %26, 0, !dbg !311
  br i1 %cmp101261, label %for.body103.lr.ph, label %for.end117, !dbg !311

for.body103.lr.ph:                                ; preds = %for.cond100.preheader
  call void @llvm.dbg.value(metadata !{double** %cutoffs}, i64 0, metadata !111), !dbg !313
  %27 = load double** %cutoffs, align 8, !dbg !313, !tbaa !134
  call void @llvm.dbg.value(metadata !{i32* %nstage}, i64 0, metadata !120), !dbg !311
  br label %for.body103, !dbg !311

for.body68:                                       ; preds = %for.body68.lr.ph, %for.inc86
  %indvars.iv292 = phi i64 [ 0, %for.body68.lr.ph ], [ %indvars.iv.next293.pre, %for.inc86 ]
  %istage.0269 = phi i32 [ 0, %for.body68.lr.ph ], [ %inc87, %for.inc86 ]
  call void @llvm.dbg.value(metadata !{double** %cutoffs}, i64 0, metadata !111), !dbg !306
  %arrayidx70 = getelementptr inbounds double* %23, i64 %indvars.iv292, !dbg !306
  %28 = load double* %arrayidx70, align 8, !dbg !306, !tbaa !293
  %cmp73 = fcmp ugt double %28, %25, !dbg !306
  %indvars.iv.next293.pre = add i64 %indvars.iv292, 1, !dbg !310
  br i1 %cmp73, label %for.inc86, label %land.lhs.true, !dbg !306

land.lhs.true:                                    ; preds = %for.body68
  %arrayidx79 = getelementptr inbounds double* %23, i64 %indvars.iv.next293.pre, !dbg !306
  %29 = load double* %arrayidx79, align 8, !dbg !306, !tbaa !293
  %cmp80 = fcmp olt double %25, %29, !dbg !306
  br i1 %cmp80, label %if.then82, label %for.inc86, !dbg !306

if.then82:                                        ; preds = %land.lhs.true
  %arrayidx84 = getelementptr inbounds i32* %call60, i64 %indvars.iv292, !dbg !316
  store i32 1, i32* %arrayidx84, align 4, !dbg !316, !tbaa !137
  call void @llvm.dbg.value(metadata !{i32* %nstage}, i64 0, metadata !120), !dbg !318
  %.pre307 = load i32* %nstage, align 4, !dbg !318, !tbaa !137
  br label %for.end88, !dbg !319

for.inc86:                                        ; preds = %for.body68, %land.lhs.true
  %inc87 = add nsw i32 %istage.0269, 1, !dbg !310
  call void @llvm.dbg.value(metadata !{i32 %inc87}, i64 0, metadata !117), !dbg !310
  call void @llvm.dbg.value(metadata !{i32* %nstage}, i64 0, metadata !120), !dbg !310
  %30 = trunc i64 %indvars.iv.next293.pre to i32, !dbg !310
  %cmp66 = icmp slt i32 %30, %sub267, !dbg !310
  br i1 %cmp66, label %for.body68, label %for.end88, !dbg !310

for.end88:                                        ; preds = %for.cond65.preheader, %for.inc86, %if.then82
  %31 = phi i32 [ %.pre307, %if.then82 ], [ %24, %for.inc86 ], [ %24, %for.cond65.preheader ]
  %istage.0266 = phi i32 [ %istage.0269, %if.then82 ], [ %inc87, %for.inc86 ], [ 0, %for.cond65.preheader ]
  call void @llvm.dbg.value(metadata !{i32* %nstage}, i64 0, metadata !120), !dbg !318
  %sub89 = add nsw i32 %31, -1, !dbg !318
  %cmp90 = icmp eq i32 %istage.0266, %sub89, !dbg !318
  br i1 %cmp90, label %if.then92, label %for.inc97, !dbg !318

if.then92:                                        ; preds = %for.end88
  %idxprom94 = sext i32 %istage.0266 to i64, !dbg !320
  %arrayidx95 = getelementptr inbounds i32* %call60, i64 %idxprom94, !dbg !320
  store i32 1, i32* %arrayidx95, align 4, !dbg !320, !tbaa !137
  br label %for.inc97, !dbg !322

for.inc97:                                        ; preds = %for.end88, %if.then92
  %indvars.iv.next296 = add i64 %indvars.iv295, 1, !dbg !302
  %lftr.wideiv297 = trunc i64 %indvars.iv.next296 to i32, !dbg !302
  %exitcond298 = icmp eq i32 %lftr.wideiv297, %1, !dbg !302
  br i1 %exitcond298, label %for.cond100.preheader, label %for.cond65.preheader, !dbg !302

for.body103:                                      ; preds = %for.body103.lr.ph, %for.inc115
  %indvars.iv288 = phi i64 [ 0, %for.body103.lr.ph ], [ %indvars.iv.next289, %for.inc115 ]
  %jstage.0262 = phi i32 [ 0, %for.body103.lr.ph ], [ %jstage.1, %for.inc115 ]
  %arrayidx105 = getelementptr inbounds i32* %call60309, i64 %indvars.iv288, !dbg !323
  %32 = load i32* %arrayidx105, align 4, !dbg !323, !tbaa !137
  %cmp106 = icmp eq i32 %32, 1, !dbg !323
  br i1 %cmp106, label %if.then108, label %for.inc115, !dbg !323

if.then108:                                       ; preds = %for.body103
  call void @llvm.dbg.value(metadata !{double** %cutoffs}, i64 0, metadata !111), !dbg !313
  %arrayidx110 = getelementptr inbounds double* %27, i64 %indvars.iv288, !dbg !313
  %33 = load double* %arrayidx110, align 8, !dbg !313, !tbaa !293
  %inc111 = add nsw i32 %jstage.0262, 1, !dbg !313
  call void @llvm.dbg.value(metadata !{i32 %inc111}, i64 0, metadata !118), !dbg !313
  %idxprom112 = sext i32 %jstage.0262 to i64, !dbg !313
  %arrayidx113 = getelementptr inbounds double* %27, i64 %idxprom112, !dbg !313
  store double %33, double* %arrayidx113, align 8, !dbg !313, !tbaa !293
  br label %for.inc115, !dbg !324

for.inc115:                                       ; preds = %for.body103, %if.then108
  %jstage.1 = phi i32 [ %inc111, %if.then108 ], [ %jstage.0262, %for.body103 ]
  %indvars.iv.next289 = add i64 %indvars.iv288, 1, !dbg !311
  call void @llvm.dbg.value(metadata !{i32* %nstage}, i64 0, metadata !120), !dbg !311
  %34 = trunc i64 %indvars.iv.next289 to i32, !dbg !311
  %cmp101 = icmp slt i32 %34, %26, !dbg !311
  br i1 %cmp101, label %for.body103, label %for.end117, !dbg !311

for.end117:                                       ; preds = %for.inc115, %for.cond100.preheader
  %jstage.0.lcssa = phi i32 [ 0, %for.cond100.preheader ], [ %jstage.1, %for.inc115 ]
  call void @llvm.dbg.value(metadata !{i32 %jstage.0.lcssa}, i64 0, metadata !120), !dbg !325
  store i32 %jstage.0.lcssa, i32* %nstage, align 4, !dbg !325, !tbaa !137
  %call118 = call i32* @IVinit(i32 %1, i32 -1) #5, !dbg !326
  call void @llvm.dbg.value(metadata !{i32* %call118}, i64 0, metadata !125), !dbg !326
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !116), !dbg !327
  br i1 %cmp52273, label %for.cond123.preheader.lr.ph, label %for.end159, !dbg !327

for.cond123.preheader.lr.ph:                      ; preds = %for.end117
  call void @llvm.dbg.value(metadata !{double** %cutoffs}, i64 0, metadata !111), !dbg !329
  %35 = load double** %cutoffs, align 8, !dbg !329, !tbaa !134
  br label %for.cond123.preheader, !dbg !327

for.cond123.preheader:                            ; preds = %for.inc157, %for.cond123.preheader.lr.ph
  %indvars.iv286 = phi i64 [ 0, %for.cond123.preheader.lr.ph ], [ %indvars.iv.next287, %for.inc157 ]
  call void @llvm.dbg.value(metadata !{i32* %nstage}, i64 0, metadata !120), !dbg !333
  %36 = load i32* %nstage, align 4, !dbg !333, !tbaa !137
  %sub124256 = add nsw i32 %36, -1, !dbg !333
  %cmp125257 = icmp sgt i32 %sub124256, 0, !dbg !333
  br i1 %cmp125257, label %for.body127.lr.ph, label %for.end148, !dbg !333

for.body127.lr.ph:                                ; preds = %for.cond123.preheader
  %arrayidx131 = getelementptr inbounds double* %call50, i64 %indvars.iv286, !dbg !329
  %37 = load double* %arrayidx131, align 8, !dbg !329, !tbaa !293
  call void @llvm.dbg.value(metadata !{i32* %nstage}, i64 0, metadata !120), !dbg !333
  br label %for.body127, !dbg !333

for.body127:                                      ; preds = %for.body127.lr.ph, %for.inc146
  %indvars.iv283 = phi i64 [ 0, %for.body127.lr.ph ], [ %indvars.iv.next284.pre, %for.inc146 ]
  %istage.2258 = phi i32 [ 0, %for.body127.lr.ph ], [ %inc147, %for.inc146 ]
  call void @llvm.dbg.value(metadata !{double** %cutoffs}, i64 0, metadata !111), !dbg !329
  %arrayidx129 = getelementptr inbounds double* %35, i64 %indvars.iv283, !dbg !329
  %38 = load double* %arrayidx129, align 8, !dbg !329, !tbaa !293
  %cmp132 = fcmp ugt double %38, %37, !dbg !329
  %indvars.iv.next284.pre = add i64 %indvars.iv283, 1, !dbg !333
  br i1 %cmp132, label %for.inc146, label %land.lhs.true134, !dbg !329

land.lhs.true134:                                 ; preds = %for.body127
  %arrayidx139 = getelementptr inbounds double* %35, i64 %indvars.iv.next284.pre, !dbg !329
  %39 = load double* %arrayidx139, align 8, !dbg !329, !tbaa !293
  %cmp140 = fcmp olt double %37, %39, !dbg !329
  br i1 %cmp140, label %if.then142, label %for.inc146, !dbg !329

if.then142:                                       ; preds = %land.lhs.true134
  %arrayidx144 = getelementptr inbounds i32* %call118, i64 %indvars.iv286, !dbg !334
  store i32 %istage.2258, i32* %arrayidx144, align 4, !dbg !334, !tbaa !137
  call void @llvm.dbg.value(metadata !{i32* %nstage}, i64 0, metadata !120), !dbg !336
  %.pre = load i32* %nstage, align 4, !dbg !336, !tbaa !137
  br label %for.end148, !dbg !337

for.inc146:                                       ; preds = %for.body127, %land.lhs.true134
  %inc147 = add nsw i32 %istage.2258, 1, !dbg !333
  call void @llvm.dbg.value(metadata !{i32 %inc147}, i64 0, metadata !117), !dbg !333
  call void @llvm.dbg.value(metadata !{i32* %nstage}, i64 0, metadata !120), !dbg !333
  %40 = trunc i64 %indvars.iv.next284.pre to i32, !dbg !333
  %cmp125 = icmp slt i32 %40, %sub124256, !dbg !333
  br i1 %cmp125, label %for.body127, label %for.end148, !dbg !333

for.end148:                                       ; preds = %for.cond123.preheader, %for.inc146, %if.then142
  %41 = phi i32 [ %.pre, %if.then142 ], [ %36, %for.inc146 ], [ %36, %for.cond123.preheader ]
  %istage.2255 = phi i32 [ %istage.2258, %if.then142 ], [ %inc147, %for.inc146 ], [ 0, %for.cond123.preheader ]
  call void @llvm.dbg.value(metadata !{i32* %nstage}, i64 0, metadata !120), !dbg !336
  %sub149 = add nsw i32 %41, -1, !dbg !336
  %cmp150 = icmp eq i32 %istage.2255, %sub149, !dbg !336
  br i1 %cmp150, label %if.then152, label %for.inc157, !dbg !336

if.then152:                                       ; preds = %for.end148
  %arrayidx155 = getelementptr inbounds i32* %call118, i64 %indvars.iv286, !dbg !338
  store i32 %istage.2255, i32* %arrayidx155, align 4, !dbg !338, !tbaa !137
  br label %for.inc157, !dbg !340

for.inc157:                                       ; preds = %for.end148, %if.then152
  %indvars.iv.next287 = add i64 %indvars.iv286, 1, !dbg !327
  %lftr.wideiv = trunc i64 %indvars.iv.next287 to i32, !dbg !327
  %exitcond = icmp eq i32 %lftr.wideiv, %1, !dbg !327
  br i1 %exitcond, label %for.end159, label %for.cond123.preheader, !dbg !327

for.end159:                                       ; preds = %for.inc157, %for.end117
  %call160 = call %struct._IV* @IV_new() #5, !dbg !341
  call void @llvm.dbg.value(metadata !{%struct._IV* %call160}, i64 0, metadata !128), !dbg !341
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !121), !dbg !342
  %42 = load i32* %nvtx, align 4, !dbg !342, !tbaa !137
  call void @IV_init(%struct._IV* %call160, i32 %42, i32* null) #5, !dbg !342
  %call161 = call i32* @IV_entries(%struct._IV* %call160) #5, !dbg !343
  call void @llvm.dbg.value(metadata !{i32* %call161}, i64 0, metadata !126), !dbg !343
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !122), !dbg !344
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !121), !dbg !344
  %43 = load i32* %nvtx, align 4, !dbg !344, !tbaa !137
  %cmp163252 = icmp sgt i32 %43, 0, !dbg !344
  br i1 %cmp163252, label %for.body165.lr.ph, label %for.end174, !dbg !344

for.body165.lr.ph:                                ; preds = %for.end159
  call void @llvm.dbg.value(metadata !{i32** %map}, i64 0, metadata !123), !dbg !346
  %44 = load i32** %map, align 8, !dbg !346, !tbaa !134
  br label %for.body165, !dbg !344

for.body165:                                      ; preds = %for.body165.lr.ph, %for.body165
  %indvars.iv = phi i64 [ 0, %for.body165.lr.ph ], [ %indvars.iv.next, %for.body165 ]
  call void @llvm.dbg.value(metadata !{i32** %map}, i64 0, metadata !123), !dbg !346
  %arrayidx167 = getelementptr inbounds i32* %44, i64 %indvars.iv, !dbg !346
  %45 = load i32* %arrayidx167, align 4, !dbg !346, !tbaa !137
  %idxprom168 = sext i32 %45 to i64, !dbg !346
  %arrayidx169 = getelementptr inbounds i32* %call118, i64 %idxprom168, !dbg !346
  %46 = load i32* %arrayidx169, align 4, !dbg !346, !tbaa !137
  %arrayidx171 = getelementptr inbounds i32* %call161, i64 %indvars.iv, !dbg !346
  store i32 %46, i32* %arrayidx171, align 4, !dbg !346, !tbaa !137
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !344
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !121), !dbg !344
  %47 = load i32* %nvtx, align 4, !dbg !344, !tbaa !137
  %48 = trunc i64 %indvars.iv.next to i32, !dbg !344
  %cmp163 = icmp slt i32 %48, %47, !dbg !344
  br i1 %cmp163, label %for.body165, label %for.end174, !dbg !344

for.end174:                                       ; preds = %for.body165, %for.end159
  call void @DV_free(%struct._DV* %call22) #5, !dbg !348
  call void @DV_free(%struct._DV* %call49) #5, !dbg !349
  call void @IVfree(i32* %call118) #5, !dbg !350
  call void @IVfree(i32* %call60309) #5, !dbg !351
  ret %struct._IV* %call160, !dbg !352
}

; Function Attrs: optsize
declare void @DV_sizeAndEntries(%struct._DV*, i32*, double**) #4

; Function Attrs: optsize
declare %struct._DV* @DV_new() #4

; Function Attrs: optsize
declare void @DV_init(%struct._DV*, i32, double*) #4

; Function Attrs: optsize
declare void @DV_fill(%struct._DV*, double) #4

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #4

; Function Attrs: optsize
declare %struct._DV* @Tree_setSubtreeDmetric(%struct._Tree*, %struct._DV*) #4

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #4

; Function Attrs: optsize
declare void @DV_free(%struct._DV*) #4

; Function Attrs: optsize
declare void @IVfree(i32*) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !49, metadata !63, metadata !77, metadata !92}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DSTree_NDstages", metadata !"DSTree_NDstages", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IV* (%struct._DSTree*)* @DSTree_NDstages, null, null, metadata !36, i32 18} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 18] [DSTree_NDstages]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !19}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IV]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DSTree]
!20 = metadata !{i32 786454, metadata !1, null, metadata !"DSTree", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [DSTree] [line 22, size 0, align 0, offset 0] [from _DSTree]
!21 = metadata !{i32 786451, metadata !22, null, metadata !"_DSTree", i32 23, i64 128, i64 64, i32 0, i32 0, null, metadata !23, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DSTree] [line 23, size 128, align 64, offset 0] [from ]
!22 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/../DSTree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!23 = metadata !{metadata !24, metadata !35}
!24 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"tree", i32 24, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_member ] [tree] [line 24, size 64, align 64, offset 0] [from ]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Tree]
!26 = metadata !{i32 786454, metadata !22, null, metadata !"Tree", i32 15, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [Tree] [line 15, size 0, align 0, offset 0] [from _Tree]
!27 = metadata !{i32 786451, metadata !28, null, metadata !"_Tree", i32 16, i64 256, i64 64, i32 0, i32 0, null, metadata !29, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Tree] [line 16, size 256, align 64, offset 0] [from ]
!28 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/../../Tree/Tree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!29 = metadata !{metadata !30, metadata !31, metadata !32, metadata !33, metadata !34}
!30 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"n", i32 17, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [n] [line 17, size 32, align 32, offset 0] [from int]
!31 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"root", i32 18, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [root] [line 18, size 32, align 32, offset 32] [from int]
!32 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"par", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !18} ; [ DW_TAG_member ] [par] [line 19, size 64, align 64, offset 64] [from ]
!33 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"fch", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [fch] [line 20, size 64, align 64, offset 128] [from ]
!34 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"sib", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !18} ; [ DW_TAG_member ] [sib] [line 21, size 64, align 64, offset 192] [from ]
!35 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"mapIV", i32 25, i64 64, i64 64, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [mapIV] [line 25, size 64, align 64, offset 64] [from ]
!36 = metadata !{metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48}
!37 = metadata !{i32 786689, metadata !4, metadata !"dstree", metadata !5, i32 16777233, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dstree] [line 17]
!38 = metadata !{i32 786688, metadata !4, metadata !"ndomsep", metadata !5, i32 19, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndomsep] [line 19]
!39 = metadata !{i32 786688, metadata !4, metadata !"nvtx", metadata !5, i32 19, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 19]
!40 = metadata !{i32 786688, metadata !4, metadata !"v", metadata !5, i32 19, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 19]
!41 = metadata !{i32 786688, metadata !4, metadata !"hmetric", metadata !5, i32 20, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmetric] [line 20]
!42 = metadata !{i32 786688, metadata !4, metadata !"map", metadata !5, i32 20, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [map] [line 20]
!43 = metadata !{i32 786688, metadata !4, metadata !"stages", metadata !5, i32 20, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stages] [line 20]
!44 = metadata !{i32 786688, metadata !4, metadata !"hmetricIV", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmetricIV] [line 21]
!45 = metadata !{i32 786688, metadata !4, metadata !"mapIV", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mapIV] [line 21]
!46 = metadata !{i32 786688, metadata !4, metadata !"stagesIV", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stagesIV] [line 21]
!47 = metadata !{i32 786688, metadata !4, metadata !"vmetricIV", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vmetricIV] [line 21]
!48 = metadata !{i32 786688, metadata !4, metadata !"tree", metadata !5, i32 22, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tree] [line 22]
!49 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DSTree_ND2stages", metadata !"DSTree_ND2stages", metadata !"", i32 82, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IV* (%struct._DSTree*)* @DSTree_ND2stages, null, null, metadata !50, i32 84} ; [ DW_TAG_subprogram ] [line 82] [def] [scope 84] [DSTree_ND2stages]
!50 = metadata !{metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62}
!51 = metadata !{i32 786689, metadata !49, metadata !"dstree", metadata !5, i32 16777299, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dstree] [line 83]
!52 = metadata !{i32 786688, metadata !49, metadata !"ndomsep", metadata !5, i32 85, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndomsep] [line 85]
!53 = metadata !{i32 786688, metadata !49, metadata !"nvtx", metadata !5, i32 85, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 85]
!54 = metadata !{i32 786688, metadata !49, metadata !"v", metadata !5, i32 85, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 85]
!55 = metadata !{i32 786688, metadata !49, metadata !"hmetric", metadata !5, i32 86, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmetric] [line 86]
!56 = metadata !{i32 786688, metadata !49, metadata !"map", metadata !5, i32 86, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [map] [line 86]
!57 = metadata !{i32 786688, metadata !49, metadata !"stages", metadata !5, i32 86, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stages] [line 86]
!58 = metadata !{i32 786688, metadata !49, metadata !"hmetricIV", metadata !5, i32 87, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmetricIV] [line 87]
!59 = metadata !{i32 786688, metadata !49, metadata !"mapIV", metadata !5, i32 87, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mapIV] [line 87]
!60 = metadata !{i32 786688, metadata !49, metadata !"stagesIV", metadata !5, i32 87, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stagesIV] [line 87]
!61 = metadata !{i32 786688, metadata !49, metadata !"vmetricIV", metadata !5, i32 87, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vmetricIV] [line 87]
!62 = metadata !{i32 786688, metadata !49, metadata !"tree", metadata !5, i32 88, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tree] [line 88]
!63 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DSTree_MS2stages", metadata !"DSTree_MS2stages", metadata !"", i32 151, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IV* (%struct._DSTree*)* @DSTree_MS2stages, null, null, metadata !64, i32 153} ; [ DW_TAG_subprogram ] [line 151] [def] [scope 153] [DSTree_MS2stages]
!64 = metadata !{metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76}
!65 = metadata !{i32 786689, metadata !63, metadata !"dstree", metadata !5, i32 16777368, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dstree] [line 152]
!66 = metadata !{i32 786688, metadata !63, metadata !"ndomsep", metadata !5, i32 154, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndomsep] [line 154]
!67 = metadata !{i32 786688, metadata !63, metadata !"nvtx", metadata !5, i32 154, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 154]
!68 = metadata !{i32 786688, metadata !63, metadata !"v", metadata !5, i32 154, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 154]
!69 = metadata !{i32 786688, metadata !63, metadata !"hmetric", metadata !5, i32 155, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmetric] [line 155]
!70 = metadata !{i32 786688, metadata !63, metadata !"map", metadata !5, i32 155, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [map] [line 155]
!71 = metadata !{i32 786688, metadata !63, metadata !"stages", metadata !5, i32 155, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stages] [line 155]
!72 = metadata !{i32 786688, metadata !63, metadata !"hmetricIV", metadata !5, i32 156, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmetricIV] [line 156]
!73 = metadata !{i32 786688, metadata !63, metadata !"mapIV", metadata !5, i32 156, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mapIV] [line 156]
!74 = metadata !{i32 786688, metadata !63, metadata !"stagesIV", metadata !5, i32 156, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stagesIV] [line 156]
!75 = metadata !{i32 786688, metadata !63, metadata !"vmetricIV", metadata !5, i32 156, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vmetricIV] [line 156]
!76 = metadata !{i32 786688, metadata !63, metadata !"tree", metadata !5, i32 157, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tree] [line 157]
!77 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DSTree_MS3stages", metadata !"DSTree_MS3stages", metadata !"", i32 220, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IV* (%struct._DSTree*)* @DSTree_MS3stages, null, null, metadata !78, i32 222} ; [ DW_TAG_subprogram ] [line 220] [def] [scope 222] [DSTree_MS3stages]
!78 = metadata !{metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91}
!79 = metadata !{i32 786689, metadata !77, metadata !"dstree", metadata !5, i32 16777437, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dstree] [line 221]
!80 = metadata !{i32 786688, metadata !77, metadata !"ndomsep", metadata !5, i32 223, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndomsep] [line 223]
!81 = metadata !{i32 786688, metadata !77, metadata !"nstage", metadata !5, i32 223, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nstage] [line 223]
!82 = metadata !{i32 786688, metadata !77, metadata !"nvtx", metadata !5, i32 223, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 223]
!83 = metadata !{i32 786688, metadata !77, metadata !"v", metadata !5, i32 223, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 223]
!84 = metadata !{i32 786688, metadata !77, metadata !"hmetric", metadata !5, i32 224, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmetric] [line 224]
!85 = metadata !{i32 786688, metadata !77, metadata !"map", metadata !5, i32 224, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [map] [line 224]
!86 = metadata !{i32 786688, metadata !77, metadata !"stages", metadata !5, i32 224, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stages] [line 224]
!87 = metadata !{i32 786688, metadata !77, metadata !"hmetricIV", metadata !5, i32 225, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmetricIV] [line 225]
!88 = metadata !{i32 786688, metadata !77, metadata !"mapIV", metadata !5, i32 225, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mapIV] [line 225]
!89 = metadata !{i32 786688, metadata !77, metadata !"stagesIV", metadata !5, i32 225, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stagesIV] [line 225]
!90 = metadata !{i32 786688, metadata !77, metadata !"vmetricIV", metadata !5, i32 225, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vmetricIV] [line 225]
!91 = metadata !{i32 786688, metadata !77, metadata !"tree", metadata !5, i32 226, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tree] [line 226]
!92 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DSTree_stagesViaDomainWeight", metadata !"DSTree_stagesViaDomainWeight", metadata !"", i32 294, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IV* (%struct._DSTree*, i32*, %struct._DV*)* @DSTree_stagesViaDomainWeight, null, null, metadata !106, i32 298} ; [ DW_TAG_subprogram ] [line 294] [def] [scope 298] [DSTree_stagesViaDomainWeight]
!93 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!94 = metadata !{metadata !8, metadata !19, metadata !18, metadata !95}
!95 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DV]
!96 = metadata !{i32 786454, metadata !1, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!97 = metadata !{i32 786451, metadata !98, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !99, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!98 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!99 = metadata !{metadata !100, metadata !101, metadata !102, metadata !103}
!100 = metadata !{i32 786445, metadata !98, metadata !97, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!101 = metadata !{i32 786445, metadata !98, metadata !97, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!102 = metadata !{i32 786445, metadata !98, metadata !97, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!103 = metadata !{i32 786445, metadata !98, metadata !97, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !104} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!104 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !105} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!105 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!106 = metadata !{metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129}
!107 = metadata !{i32 786689, metadata !92, metadata !"dstree", metadata !5, i32 16777511, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dstree] [line 295]
!108 = metadata !{i32 786689, metadata !92, metadata !"vwghts", metadata !5, i32 33554728, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vwghts] [line 296]
!109 = metadata !{i32 786689, metadata !92, metadata !"cutoffDV", metadata !5, i32 50331945, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cutoffDV] [line 297]
!110 = metadata !{i32 786688, metadata !92, metadata !"totvwght", metadata !5, i32 299, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [totvwght] [line 299]
!111 = metadata !{i32 786688, metadata !92, metadata !"cutoffs", metadata !5, i32 300, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cutoffs] [line 300]
!112 = metadata !{i32 786688, metadata !92, metadata !"nodewghts", metadata !5, i32 300, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nodewghts] [line 300]
!113 = metadata !{i32 786688, metadata !92, metadata !"subtreewghts", metadata !5, i32 300, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [subtreewghts] [line 300]
!114 = metadata !{i32 786688, metadata !92, metadata !"nodewghtDV", metadata !5, i32 301, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nodewghtDV] [line 301]
!115 = metadata !{i32 786688, metadata !92, metadata !"subtreeDV", metadata !5, i32 301, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [subtreeDV] [line 301]
!116 = metadata !{i32 786688, metadata !92, metadata !"ireg", metadata !5, i32 302, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ireg] [line 302]
!117 = metadata !{i32 786688, metadata !92, metadata !"istage", metadata !5, i32 302, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [istage] [line 302]
!118 = metadata !{i32 786688, metadata !92, metadata !"jstage", metadata !5, i32 302, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jstage] [line 302]
!119 = metadata !{i32 786688, metadata !92, metadata !"ndomsep", metadata !5, i32 302, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndomsep] [line 302]
!120 = metadata !{i32 786688, metadata !92, metadata !"nstage", metadata !5, i32 302, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nstage] [line 302]
!121 = metadata !{i32 786688, metadata !92, metadata !"nvtx", metadata !5, i32 302, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 302]
!122 = metadata !{i32 786688, metadata !92, metadata !"v", metadata !5, i32 302, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 302]
!123 = metadata !{i32 786688, metadata !92, metadata !"map", metadata !5, i32 303, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [map] [line 303]
!124 = metadata !{i32 786688, metadata !92, metadata !"mark", metadata !5, i32 303, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mark] [line 303]
!125 = metadata !{i32 786688, metadata !92, metadata !"regmap", metadata !5, i32 303, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [regmap] [line 303]
!126 = metadata !{i32 786688, metadata !92, metadata !"stages", metadata !5, i32 303, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stages] [line 303]
!127 = metadata !{i32 786688, metadata !92, metadata !"mapIV", metadata !5, i32 304, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mapIV] [line 304]
!128 = metadata !{i32 786688, metadata !92, metadata !"stagesIV", metadata !5, i32 304, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stagesIV] [line 304]
!129 = metadata !{i32 786688, metadata !92, metadata !"tree", metadata !5, i32 305, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tree] [line 305]
!130 = metadata !{i32 17, i32 0, metadata !4, null}
!131 = metadata !{i32 19, i32 0, metadata !4, null}
!132 = metadata !{i32 20, i32 0, metadata !4, null}
!133 = metadata !{i32 28, i32 0, metadata !4, null}
!134 = metadata !{metadata !"any pointer", metadata !135}
!135 = metadata !{metadata !"omnipotent char", metadata !136}
!136 = metadata !{metadata !"Simple C/C++ TBAA"}
!137 = metadata !{metadata !"int", metadata !135}
!138 = metadata !{i32 32, i32 0, metadata !139, null}
!139 = metadata !{i32 786443, metadata !1, metadata !4, i32 31, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!140 = metadata !{i32 34, i32 0, metadata !139, null}
!141 = metadata !{i32 36, i32 0, metadata !4, null}
!142 = metadata !{i32 37, i32 0, metadata !4, null}
!143 = metadata !{i32 38, i32 0, metadata !144, null}
!144 = metadata !{i32 786443, metadata !1, metadata !4, i32 37, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!145 = metadata !{i32 40, i32 0, metadata !144, null}
!146 = metadata !{i32 47, i32 0, metadata !4, null}
!147 = metadata !{i32 48, i32 0, metadata !4, null}
!148 = metadata !{i32 49, i32 0, metadata !4, null}
!149 = metadata !{i32 50, i32 0, metadata !4, null}
!150 = metadata !{i32 51, i32 0, metadata !4, null}
!151 = metadata !{i32 57, i32 0, metadata !4, null}
!152 = metadata !{i32 58, i32 0, metadata !4, null} ; [ DW_TAG_imported_module ]
!153 = metadata !{i32 59, i32 0, metadata !4, null}
!154 = metadata !{i32 60, i32 0, metadata !155, null}
!155 = metadata !{i32 786443, metadata !1, metadata !4, i32 60, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!156 = metadata !{i32 61, i32 0, metadata !157, null}
!157 = metadata !{i32 786443, metadata !1, metadata !155, i32 60, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!158 = metadata !{i32 68, i32 0, metadata !4, null}
!159 = metadata !{i32 69, i32 0, metadata !4, null}
!160 = metadata !{i32 71, i32 0, metadata !4, null}
!161 = metadata !{i32 83, i32 0, metadata !49, null}
!162 = metadata !{i32 85, i32 0, metadata !49, null}
!163 = metadata !{i32 86, i32 0, metadata !49, null}
!164 = metadata !{i32 94, i32 0, metadata !49, null}
!165 = metadata !{i32 98, i32 0, metadata !166, null}
!166 = metadata !{i32 786443, metadata !1, metadata !49, i32 97, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!167 = metadata !{i32 100, i32 0, metadata !166, null}
!168 = metadata !{i32 102, i32 0, metadata !49, null}
!169 = metadata !{i32 103, i32 0, metadata !49, null}
!170 = metadata !{i32 104, i32 0, metadata !171, null}
!171 = metadata !{i32 786443, metadata !1, metadata !49, i32 103, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!172 = metadata !{i32 106, i32 0, metadata !171, null}
!173 = metadata !{i32 113, i32 0, metadata !49, null}
!174 = metadata !{i32 114, i32 0, metadata !49, null}
!175 = metadata !{i32 115, i32 0, metadata !49, null}
!176 = metadata !{i32 116, i32 0, metadata !49, null}
!177 = metadata !{i32 117, i32 0, metadata !49, null}
!178 = metadata !{i32 123, i32 0, metadata !49, null}
!179 = metadata !{i32 124, i32 0, metadata !49, null}
!180 = metadata !{i32 125, i32 0, metadata !49, null}
!181 = metadata !{i32 126, i32 0, metadata !182, null}
!182 = metadata !{i32 786443, metadata !1, metadata !49, i32 126, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!183 = metadata !{i32 127, i32 0, metadata !184, null}
!184 = metadata !{i32 786443, metadata !1, metadata !182, i32 126, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!185 = metadata !{i32 128, i32 0, metadata !184, null}
!186 = metadata !{i32 129, i32 0, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !184, i32 128, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!188 = metadata !{i32 130, i32 0, metadata !187, null}
!189 = metadata !{i32 137, i32 0, metadata !49, null}
!190 = metadata !{i32 138, i32 0, metadata !49, null}
!191 = metadata !{i32 140, i32 0, metadata !49, null}
!192 = metadata !{i32 152, i32 0, metadata !63, null}
!193 = metadata !{i32 154, i32 0, metadata !63, null}
!194 = metadata !{i32 155, i32 0, metadata !63, null}
!195 = metadata !{i32 163, i32 0, metadata !63, null}
!196 = metadata !{i32 167, i32 0, metadata !197, null}
!197 = metadata !{i32 786443, metadata !1, metadata !63, i32 166, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!198 = metadata !{i32 169, i32 0, metadata !197, null}
!199 = metadata !{i32 171, i32 0, metadata !63, null}
!200 = metadata !{i32 172, i32 0, metadata !63, null}
!201 = metadata !{i32 173, i32 0, metadata !202, null}
!202 = metadata !{i32 786443, metadata !1, metadata !63, i32 172, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!203 = metadata !{i32 175, i32 0, metadata !202, null}
!204 = metadata !{i32 182, i32 0, metadata !63, null}
!205 = metadata !{i32 183, i32 0, metadata !63, null}
!206 = metadata !{i32 184, i32 0, metadata !63, null}
!207 = metadata !{i32 185, i32 0, metadata !63, null}
!208 = metadata !{i32 186, i32 0, metadata !63, null}
!209 = metadata !{i32 192, i32 0, metadata !63, null}
!210 = metadata !{i32 193, i32 0, metadata !63, null}
!211 = metadata !{i32 194, i32 0, metadata !63, null}
!212 = metadata !{i32 195, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !63, i32 195, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!214 = metadata !{i32 196, i32 0, metadata !215, null}
!215 = metadata !{i32 786443, metadata !1, metadata !213, i32 195, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!216 = metadata !{i32 197, i32 0, metadata !215, null}
!217 = metadata !{i32 206, i32 0, metadata !63, null}
!218 = metadata !{i32 207, i32 0, metadata !63, null}
!219 = metadata !{i32 209, i32 0, metadata !63, null}
!220 = metadata !{i32 221, i32 0, metadata !77, null}
!221 = metadata !{i32 223, i32 0, metadata !77, null}
!222 = metadata !{i32 224, i32 0, metadata !77, null}
!223 = metadata !{i32 232, i32 0, metadata !77, null}
!224 = metadata !{i32 236, i32 0, metadata !225, null}
!225 = metadata !{i32 786443, metadata !1, metadata !77, i32 235, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!226 = metadata !{i32 238, i32 0, metadata !225, null}
!227 = metadata !{i32 240, i32 0, metadata !77, null}
!228 = metadata !{i32 241, i32 0, metadata !77, null}
!229 = metadata !{i32 242, i32 0, metadata !230, null}
!230 = metadata !{i32 786443, metadata !1, metadata !77, i32 241, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!231 = metadata !{i32 244, i32 0, metadata !230, null}
!232 = metadata !{i32 251, i32 0, metadata !77, null}
!233 = metadata !{i32 252, i32 0, metadata !77, null}
!234 = metadata !{i32 253, i32 0, metadata !77, null}
!235 = metadata !{i32 254, i32 0, metadata !77, null}
!236 = metadata !{i32 255, i32 0, metadata !77, null}
!237 = metadata !{i32 256, i32 0, metadata !77, null}
!238 = metadata !{i32 262, i32 0, metadata !77, null}
!239 = metadata !{i32 263, i32 0, metadata !77, null}
!240 = metadata !{i32 264, i32 0, metadata !77, null}
!241 = metadata !{i32 265, i32 0, metadata !242, null}
!242 = metadata !{i32 786443, metadata !1, metadata !77, i32 265, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!243 = metadata !{i32 266, i32 0, metadata !244, null}
!244 = metadata !{i32 786443, metadata !1, metadata !242, i32 265, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!245 = metadata !{i32 267, i32 0, metadata !244, null}
!246 = metadata !{i32 268, i32 0, metadata !247, null}
!247 = metadata !{i32 786443, metadata !1, metadata !244, i32 267, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!248 = metadata !{i32 269, i32 0, metadata !249, null}
!249 = metadata !{i32 786443, metadata !1, metadata !247, i32 268, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!250 = metadata !{i32 270, i32 0, metadata !249, null}
!251 = metadata !{i32 271, i32 0, metadata !252, null}
!252 = metadata !{i32 786443, metadata !1, metadata !247, i32 270, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!253 = metadata !{i32 280, i32 0, metadata !77, null}
!254 = metadata !{i32 281, i32 0, metadata !77, null}
!255 = metadata !{i32 283, i32 0, metadata !77, null}
!256 = metadata !{i32 295, i32 0, metadata !92, null}
!257 = metadata !{i32 296, i32 0, metadata !92, null}
!258 = metadata !{i32 297, i32 0, metadata !92, null}
!259 = metadata !{i32 300, i32 0, metadata !92, null}
!260 = metadata !{i32 302, i32 0, metadata !92, null}
!261 = metadata !{i32 303, i32 0, metadata !92, null}
!262 = metadata !{i32 311, i32 0, metadata !92, null}
!263 = metadata !{i32 316, i32 0, metadata !264, null}
!264 = metadata !{i32 786443, metadata !1, metadata !92, i32 315, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!265 = metadata !{i32 319, i32 0, metadata !264, null}
!266 = metadata !{i32 321, i32 0, metadata !92, null}
!267 = metadata !{i32 322, i32 0, metadata !92, null}
!268 = metadata !{i32 323, i32 0, metadata !269, null}
!269 = metadata !{i32 786443, metadata !1, metadata !92, i32 322, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!270 = metadata !{i32 326, i32 0, metadata !269, null}
!271 = metadata !{i32 328, i32 0, metadata !92, null}
!272 = metadata !{i32 329, i32 0, metadata !92, null}
!273 = metadata !{i32 330, i32 0, metadata !274, null}
!274 = metadata !{i32 786443, metadata !1, metadata !92, i32 329, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!275 = metadata !{i32 333, i32 0, metadata !274, null}
!276 = metadata !{i32 344, i32 0, metadata !92, null}
!277 = metadata !{i32 345, i32 0, metadata !92, null}
!278 = metadata !{i32 346, i32 0, metadata !92, null}
!279 = metadata !{i32 347, i32 0, metadata !92, null}
!280 = metadata !{double 0.000000e+00}
!281 = metadata !{i32 348, i32 0, metadata !92, null}
!282 = metadata !{i32 349, i32 0, metadata !92, null}
!283 = metadata !{i32 350, i32 0, metadata !284, null}
!284 = metadata !{i32 786443, metadata !1, metadata !285, i32 350, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!285 = metadata !{i32 786443, metadata !1, metadata !92, i32 349, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!286 = metadata !{i32 355, i32 0, metadata !287, null}
!287 = metadata !{i32 786443, metadata !1, metadata !288, i32 355, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!288 = metadata !{i32 786443, metadata !1, metadata !92, i32 354, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!289 = metadata !{i32 356, i32 0, metadata !290, null}
!290 = metadata !{i32 786443, metadata !1, metadata !287, i32 355, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!291 = metadata !{i32 351, i32 0, metadata !292, null}
!292 = metadata !{i32 786443, metadata !1, metadata !284, i32 350, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!293 = metadata !{metadata !"double", metadata !135}
!294 = metadata !{i32 353, i32 0, metadata !285, null}
!295 = metadata !{i32 354, i32 0, metadata !285, null}
!296 = metadata !{i32 357, i32 0, metadata !290, null}
!297 = metadata !{i32 369, i32 0, metadata !92, null}
!298 = metadata !{i32 370, i32 0, metadata !92, null}
!299 = metadata !{i32 375, i32 0, metadata !300, null}
!300 = metadata !{i32 786443, metadata !1, metadata !92, i32 375, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!301 = metadata !{i32 387, i32 0, metadata !92, null}
!302 = metadata !{i32 388, i32 0, metadata !303, null}
!303 = metadata !{i32 786443, metadata !1, metadata !92, i32 388, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!304 = metadata !{i32 376, i32 0, metadata !305, null}
!305 = metadata !{i32 786443, metadata !1, metadata !300, i32 375, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!306 = metadata !{i32 395, i32 0, metadata !307, null}
!307 = metadata !{i32 786443, metadata !1, metadata !308, i32 394, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!308 = metadata !{i32 786443, metadata !1, metadata !309, i32 394, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!309 = metadata !{i32 786443, metadata !1, metadata !303, i32 388, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!310 = metadata !{i32 394, i32 0, metadata !308, null}
!311 = metadata !{i32 414, i32 0, metadata !312, null}
!312 = metadata !{i32 786443, metadata !1, metadata !92, i32 414, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!313 = metadata !{i32 420, i32 0, metadata !314, null}
!314 = metadata !{i32 786443, metadata !1, metadata !315, i32 415, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!315 = metadata !{i32 786443, metadata !1, metadata !312, i32 414, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!316 = metadata !{i32 397, i32 0, metadata !317, null}
!317 = metadata !{i32 786443, metadata !1, metadata !307, i32 396, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!318 = metadata !{i32 405, i32 0, metadata !309, null}
!319 = metadata !{i32 402, i32 0, metadata !317, null}
!320 = metadata !{i32 406, i32 0, metadata !321, null}
!321 = metadata !{i32 786443, metadata !1, metadata !309, i32 405, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!322 = metadata !{i32 407, i32 0, metadata !321, null}
!323 = metadata !{i32 415, i32 0, metadata !315, null}
!324 = metadata !{i32 421, i32 0, metadata !314, null}
!325 = metadata !{i32 423, i32 0, metadata !92, null}
!326 = metadata !{i32 429, i32 0, metadata !92, null}
!327 = metadata !{i32 430, i32 0, metadata !328, null}
!328 = metadata !{i32 786443, metadata !1, metadata !92, i32 430, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!329 = metadata !{i32 437, i32 0, metadata !330, null}
!330 = metadata !{i32 786443, metadata !1, metadata !331, i32 436, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!331 = metadata !{i32 786443, metadata !1, metadata !332, i32 436, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!332 = metadata !{i32 786443, metadata !1, metadata !328, i32 430, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!333 = metadata !{i32 436, i32 0, metadata !331, null}
!334 = metadata !{i32 443, i32 0, metadata !335, null}
!335 = metadata !{i32 786443, metadata !1, metadata !330, i32 438, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!336 = metadata !{i32 447, i32 0, metadata !332, null}
!337 = metadata !{i32 444, i32 0, metadata !335, null}
!338 = metadata !{i32 448, i32 0, metadata !339, null}
!339 = metadata !{i32 786443, metadata !1, metadata !332, i32 447, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!340 = metadata !{i32 453, i32 0, metadata !339, null}
!341 = metadata !{i32 464, i32 0, metadata !92, null}
!342 = metadata !{i32 465, i32 0, metadata !92, null}
!343 = metadata !{i32 466, i32 0, metadata !92, null}
!344 = metadata !{i32 467, i32 0, metadata !345, null}
!345 = metadata !{i32 786443, metadata !1, metadata !92, i32 467, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!346 = metadata !{i32 468, i32 0, metadata !347, null}
!347 = metadata !{i32 786443, metadata !1, metadata !345, i32 467, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_stages.c]
!348 = metadata !{i32 496, i32 0, metadata !92, null}
!349 = metadata !{i32 497, i32 0, metadata !92, null}
!350 = metadata !{i32 498, i32 0, metadata !92, null}
!351 = metadata !{i32 499, i32 0, metadata !92, null}
!352 = metadata !{i32 501, i32 0, metadata !92, null}
