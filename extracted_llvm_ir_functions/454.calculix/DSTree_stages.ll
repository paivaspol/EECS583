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
  %cmp = icmp eq %struct._DSTree* %dstree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %tree1 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0
  %0 = load %struct._Tree** %tree1, align 8, !tbaa !0
  %cmp2 = icmp eq %struct._Tree* %0, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %n = getelementptr inbounds %struct._Tree* %0, i64 0, i32 0
  %1 = load i32* %n, align 4, !tbaa !3
  %cmp4 = icmp slt i32 %1, 1
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %mapIV6 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1
  %2 = load %struct._IV** %mapIV6, align 8, !tbaa !0
  %cmp7 = icmp eq %struct._IV* %2, null
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %entry
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), %struct._DSTree* %dstree) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false5
  call void @IV_sizeAndEntries(%struct._IV* %2, i32* %nvtx, i32** %map) #4
  %4 = load i32** %map, align 8, !tbaa !0
  %cmp8 = icmp eq i32* %4, null
  br i1 %cmp8, label %if.then11, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end
  %5 = load i32* %nvtx, align 4, !tbaa !3
  %cmp10 = icmp slt i32 %5, 1
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %lor.lhs.false9, %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), %struct._DSTree* %dstree) #4
  call void @exit(i32 -1) #5
  unreachable

if.end13:                                         ; preds = %lor.lhs.false9
  %call14 = call %struct._IV* @IV_new() #4
  call void @IV_init(%struct._IV* %call14, i32 %1, i32* null) #4
  call void @IV_fill(%struct._IV* %call14, i32 1) #4
  %call15 = call %struct._IV* @Tree_setHeightImetric(%struct._Tree* %0, %struct._IV* %call14) #4
  %call16 = call i32* @IV_entries(%struct._IV* %call15) #4
  %call17 = call %struct._IV* @IV_new() #4
  %7 = load i32* %nvtx, align 4, !tbaa !3
  call void @IV_init(%struct._IV* %call17, i32 %7, i32* null) #4
  %call18 = call i32* @IV_entries(%struct._IV* %call17) #4
  %8 = load i32* %nvtx, align 4, !tbaa !3
  %cmp1938 = icmp sgt i32 %8, 0
  br i1 %cmp1938, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end13
  %9 = load i32** %map, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32* %9, i64 %indvars.iv
  %10 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom20 = sext i32 %10 to i64
  %arrayidx21 = getelementptr inbounds i32* %call16, i64 %idxprom20
  %11 = load i32* %arrayidx21, align 4, !tbaa !3
  %sub = add nsw i32 %11, -1
  %arrayidx23 = getelementptr inbounds i32* %call18, i64 %indvars.iv
  store i32 %sub, i32* %arrayidx23, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %12 = load i32* %nvtx, align 4, !tbaa !3
  %13 = trunc i64 %indvars.iv.next to i32
  %cmp19 = icmp slt i32 %13, %12
  br i1 %cmp19, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end13
  call void @IV_free(%struct._IV* %call14) #4
  call void @IV_free(%struct._IV* %call15) #4
  ret %struct._IV* %call17
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @IV_sizeAndEntries(%struct._IV*, i32*, i32**) #3

; Function Attrs: optsize
declare %struct._IV* @IV_new() #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: optsize
declare void @IV_fill(%struct._IV*, i32) #3

; Function Attrs: optsize
declare %struct._IV* @Tree_setHeightImetric(%struct._Tree*, %struct._IV*) #3

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare void @IV_free(%struct._IV*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @DSTree_ND2stages(%struct._DSTree* %dstree) #0 {
entry:
  %nvtx = alloca i32, align 4
  %map = alloca i32*, align 8
  %cmp = icmp eq %struct._DSTree* %dstree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %tree1 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0
  %0 = load %struct._Tree** %tree1, align 8, !tbaa !0
  %cmp2 = icmp eq %struct._Tree* %0, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %n = getelementptr inbounds %struct._Tree* %0, i64 0, i32 0
  %1 = load i32* %n, align 4, !tbaa !3
  %cmp4 = icmp slt i32 %1, 1
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %mapIV6 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1
  %2 = load %struct._IV** %mapIV6, align 8, !tbaa !0
  %cmp7 = icmp eq %struct._IV* %2, null
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %entry
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), %struct._DSTree* %dstree) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false5
  call void @IV_sizeAndEntries(%struct._IV* %2, i32* %nvtx, i32** %map) #4
  %4 = load i32** %map, align 8, !tbaa !0
  %cmp8 = icmp eq i32* %4, null
  br i1 %cmp8, label %if.then11, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end
  %5 = load i32* %nvtx, align 4, !tbaa !3
  %cmp10 = icmp slt i32 %5, 1
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %lor.lhs.false9, %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([57 x i8]* @.str3, i64 0, i64 0), %struct._DSTree* %dstree) #4
  call void @exit(i32 -1) #5
  unreachable

if.end13:                                         ; preds = %lor.lhs.false9
  %call14 = call %struct._IV* @IV_new() #4
  call void @IV_init(%struct._IV* %call14, i32 %1, i32* null) #4
  call void @IV_fill(%struct._IV* %call14, i32 1) #4
  %call15 = call %struct._IV* @Tree_setHeightImetric(%struct._Tree* %0, %struct._IV* %call14) #4
  %call16 = call i32* @IV_entries(%struct._IV* %call15) #4
  %call17 = call %struct._IV* @IV_new() #4
  %7 = load i32* %nvtx, align 4, !tbaa !3
  call void @IV_init(%struct._IV* %call17, i32 %7, i32* null) #4
  %call18 = call i32* @IV_entries(%struct._IV* %call17) #4
  %8 = load i32* %nvtx, align 4, !tbaa !3
  %cmp1953 = icmp sgt i32 %8, 0
  br i1 %cmp1953, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end13
  %9 = load i32** %map, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds i32* %9, i64 %indvars.iv
  %10 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom20 = sext i32 %10 to i64
  %arrayidx21 = getelementptr inbounds i32* %call16, i64 %idxprom20
  %11 = load i32* %arrayidx21, align 4, !tbaa !3
  %sub = add nsw i32 %11, -1
  %arrayidx23 = getelementptr inbounds i32* %call18, i64 %indvars.iv
  %cmp26 = icmp sgt i32 %sub, 0
  br i1 %cmp26, label %if.then27, label %for.inc

if.then27:                                        ; preds = %for.body
  %div = sdiv i32 %11, 2
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then27
  %storemerge = phi i32 [ %div, %if.then27 ], [ %sub, %for.body ]
  store i32 %storemerge, i32* %arrayidx23, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %12 = load i32* %nvtx, align 4, !tbaa !3
  %13 = trunc i64 %indvars.iv.next to i32
  %cmp19 = icmp slt i32 %13, %12
  br i1 %cmp19, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end13
  call void @IV_free(%struct._IV* %call14) #4
  call void @IV_free(%struct._IV* %call15) #4
  ret %struct._IV* %call17
}

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @DSTree_MS2stages(%struct._DSTree* %dstree) #0 {
entry:
  %nvtx = alloca i32, align 4
  %map = alloca i32*, align 8
  %cmp = icmp eq %struct._DSTree* %dstree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %tree1 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0
  %0 = load %struct._Tree** %tree1, align 8, !tbaa !0
  %cmp2 = icmp eq %struct._Tree* %0, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %n = getelementptr inbounds %struct._Tree* %0, i64 0, i32 0
  %1 = load i32* %n, align 4, !tbaa !3
  %cmp4 = icmp slt i32 %1, 1
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %mapIV6 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1
  %2 = load %struct._IV** %mapIV6, align 8, !tbaa !0
  %cmp7 = icmp eq %struct._IV* %2, null
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %entry
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([50 x i8]* @.str4, i64 0, i64 0), %struct._DSTree* %dstree) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false5
  call void @IV_sizeAndEntries(%struct._IV* %2, i32* %nvtx, i32** %map) #4
  %4 = load i32** %map, align 8, !tbaa !0
  %cmp8 = icmp eq i32* %4, null
  br i1 %cmp8, label %if.then11, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end
  %5 = load i32* %nvtx, align 4, !tbaa !3
  %cmp10 = icmp slt i32 %5, 1
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %lor.lhs.false9, %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([57 x i8]* @.str5, i64 0, i64 0), %struct._DSTree* %dstree) #4
  call void @exit(i32 -1) #5
  unreachable

if.end13:                                         ; preds = %lor.lhs.false9
  %call14 = call %struct._IV* @IV_new() #4
  call void @IV_init(%struct._IV* %call14, i32 %1, i32* null) #4
  call void @IV_fill(%struct._IV* %call14, i32 1) #4
  %call15 = call %struct._IV* @Tree_setHeightImetric(%struct._Tree* %0, %struct._IV* %call14) #4
  %call16 = call i32* @IV_entries(%struct._IV* %call15) #4
  %call17 = call %struct._IV* @IV_new() #4
  %7 = load i32* %nvtx, align 4, !tbaa !3
  call void @IV_init(%struct._IV* %call17, i32 %7, i32* null) #4
  %call18 = call i32* @IV_entries(%struct._IV* %call17) #4
  %8 = load i32* %nvtx, align 4, !tbaa !3
  %cmp1949 = icmp sgt i32 %8, 0
  br i1 %cmp1949, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end13
  %9 = load i32** %map, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32* %9, i64 %indvars.iv
  %10 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom20 = sext i32 %10 to i64
  %arrayidx21 = getelementptr inbounds i32* %call16, i64 %idxprom20
  %11 = load i32* %arrayidx21, align 4, !tbaa !3
  %sub = add nsw i32 %11, -1
  %arrayidx23 = getelementptr inbounds i32* %call18, i64 %indvars.iv
  %cmp26 = icmp slt i32 %sub, 1
  %.sub = select i1 %cmp26, i32 %sub, i32 1
  store i32 %.sub, i32* %arrayidx23, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %12 = load i32* %nvtx, align 4, !tbaa !3
  %13 = trunc i64 %indvars.iv.next to i32
  %cmp19 = icmp slt i32 %13, %12
  br i1 %cmp19, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end13
  call void @IV_free(%struct._IV* %call14) #4
  call void @IV_free(%struct._IV* %call15) #4
  ret %struct._IV* %call17
}

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @DSTree_MS3stages(%struct._DSTree* %dstree) #0 {
entry:
  %nvtx = alloca i32, align 4
  %map = alloca i32*, align 8
  %cmp = icmp eq %struct._DSTree* %dstree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %tree1 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0
  %0 = load %struct._Tree** %tree1, align 8, !tbaa !0
  %cmp2 = icmp eq %struct._Tree* %0, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %n = getelementptr inbounds %struct._Tree* %0, i64 0, i32 0
  %1 = load i32* %n, align 4, !tbaa !3
  %cmp4 = icmp slt i32 %1, 1
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %mapIV6 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1
  %2 = load %struct._IV** %mapIV6, align 8, !tbaa !0
  %cmp7 = icmp eq %struct._IV* %2, null
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %entry
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([50 x i8]* @.str6, i64 0, i64 0), %struct._DSTree* %dstree) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false5
  call void @IV_sizeAndEntries(%struct._IV* %2, i32* %nvtx, i32** %map) #4
  %4 = load i32** %map, align 8, !tbaa !0
  %cmp8 = icmp eq i32* %4, null
  br i1 %cmp8, label %if.then11, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end
  %5 = load i32* %nvtx, align 4, !tbaa !3
  %cmp10 = icmp slt i32 %5, 1
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %lor.lhs.false9, %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([57 x i8]* @.str7, i64 0, i64 0), %struct._DSTree* %dstree) #4
  call void @exit(i32 -1) #5
  unreachable

if.end13:                                         ; preds = %lor.lhs.false9
  %call14 = call %struct._IV* @IV_new() #4
  call void @IV_init(%struct._IV* %call14, i32 %1, i32* null) #4
  call void @IV_fill(%struct._IV* %call14, i32 1) #4
  %call15 = call %struct._IV* @Tree_setHeightImetric(%struct._Tree* %0, %struct._IV* %call14) #4
  %call16 = call i32* @IV_entries(%struct._IV* %call15) #4
  %call17 = call i32 @IV_max(%struct._IV* %call15) #4
  %call18 = call %struct._IV* @IV_new() #4
  %7 = load i32* %nvtx, align 4, !tbaa !3
  call void @IV_init(%struct._IV* %call18, i32 %7, i32* null) #4
  %call19 = call i32* @IV_entries(%struct._IV* %call18) #4
  %8 = load i32* %nvtx, align 4, !tbaa !3
  %cmp2060 = icmp sgt i32 %8, 0
  br i1 %cmp2060, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end13
  %9 = load i32** %map, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds i32* %9, i64 %indvars.iv
  %10 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom21 = sext i32 %10 to i64
  %arrayidx22 = getelementptr inbounds i32* %call16, i64 %idxprom21
  %11 = load i32* %arrayidx22, align 4, !tbaa !3
  %sub = add nsw i32 %11, -1
  %arrayidx24 = getelementptr inbounds i32* %call19, i64 %indvars.iv
  store i32 %sub, i32* %arrayidx24, align 4, !tbaa !3
  %cmp27 = icmp sgt i32 %sub, 0
  br i1 %cmp27, label %if.then28, label %for.inc

if.then28:                                        ; preds = %for.body
  %mul = shl nsw i32 %sub, 1
  %cmp31 = icmp sgt i32 %mul, %call17
  br i1 %cmp31, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.then28
  store i32 2, i32* %arrayidx24, align 4, !tbaa !3
  br label %for.inc

if.else:                                          ; preds = %if.then28
  store i32 1, i32* %arrayidx24, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.else, %if.then32
  %indvars.iv.next = add i64 %indvars.iv, 1
  %12 = load i32* %nvtx, align 4, !tbaa !3
  %13 = trunc i64 %indvars.iv.next to i32
  %cmp20 = icmp slt i32 %13, %12
  br i1 %cmp20, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end13
  call void @IV_free(%struct._IV* %call14) #4
  call void @IV_free(%struct._IV* %call15) #4
  ret %struct._IV* %call18
}

; Function Attrs: optsize
declare i32 @IV_max(%struct._IV*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @DSTree_stagesViaDomainWeight(%struct._DSTree* %dstree, i32* %vwghts, %struct._DV* %cutoffDV) #0 {
entry:
  %cutoffs = alloca double*, align 8
  %nstage = alloca i32, align 4
  %nvtx = alloca i32, align 4
  %map = alloca i32*, align 8
  %cmp = icmp eq %struct._DSTree* %dstree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %tree1 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0
  %0 = load %struct._Tree** %tree1, align 8, !tbaa !0
  %cmp2 = icmp eq %struct._Tree* %0, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %n = getelementptr inbounds %struct._Tree* %0, i64 0, i32 0
  %1 = load i32* %n, align 4, !tbaa !3
  %cmp4 = icmp slt i32 %1, 1
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %mapIV6 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1
  %2 = load %struct._IV** %mapIV6, align 8, !tbaa !0
  %cmp7 = icmp eq %struct._IV* %2, null
  %cmp9 = icmp eq %struct._DV* %cutoffDV, null
  %or.cond = or i1 %cmp7, %cmp9
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %entry
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([68 x i8]* @.str8, i64 0, i64 0), %struct._DSTree* %dstree, i32* %vwghts, %struct._DV* %cutoffDV) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false5
  call void @IV_sizeAndEntries(%struct._IV* %2, i32* %nvtx, i32** %map) #4
  %4 = load i32** %map, align 8, !tbaa !0
  %cmp10 = icmp eq i32* %4, null
  br i1 %cmp10, label %if.then13, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.end
  %5 = load i32* %nvtx, align 4, !tbaa !3
  %cmp12 = icmp slt i32 %5, 1
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %lor.lhs.false11, %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([75 x i8]* @.str9, i64 0, i64 0), %struct._DSTree* %dstree, i32* %vwghts, %struct._DV* %cutoffDV) #4
  call void @exit(i32 -1) #5
  unreachable

if.end15:                                         ; preds = %lor.lhs.false11
  call void @DV_sizeAndEntries(%struct._DV* %cutoffDV, i32* %nstage, double** %cutoffs) #4
  %7 = load double** %cutoffs, align 8, !tbaa !0
  %cmp16 = icmp eq double* %7, null
  br i1 %cmp16, label %if.then19, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.end15
  %8 = load i32* %nstage, align 4, !tbaa !3
  %cmp18 = icmp slt i32 %8, 1
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %lor.lhs.false17, %if.end15
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([78 x i8]* @.str10, i64 0, i64 0), %struct._DSTree* %dstree, i32* %vwghts, %struct._DV* %cutoffDV) #4
  call void @exit(i32 -1) #5
  unreachable

if.end21:                                         ; preds = %lor.lhs.false17
  %call22 = call %struct._DV* @DV_new() #4
  call void @DV_init(%struct._DV* %call22, i32 %1, double* null) #4
  call void @DV_fill(%struct._DV* %call22, double 0.000000e+00) #4
  %call23 = call double* @DV_entries(%struct._DV* %call22) #4
  %cmp24 = icmp eq i32* %vwghts, null
  %10 = load i32* %nvtx, align 4, !tbaa !3
  %cmp26275 = icmp sgt i32 %10, 0
  br i1 %cmp24, label %for.cond.preheader, label %for.cond30.preheader

for.cond30.preheader:                             ; preds = %if.end21
  br i1 %cmp26275, label %for.body33.lr.ph, label %if.end48

for.body33.lr.ph:                                 ; preds = %for.cond30.preheader
  %11 = load i32** %map, align 8, !tbaa !0
  br label %for.body33

for.cond.preheader:                               ; preds = %if.end21
  br i1 %cmp26275, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %12 = load i32** %map, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv303 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next304, %for.body ]
  %arrayidx = getelementptr inbounds i32* %12, i64 %indvars.iv303
  %13 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom27 = sext i32 %13 to i64
  %arrayidx28 = getelementptr inbounds double* %call23, i64 %idxprom27
  %14 = load double* %arrayidx28, align 8, !tbaa !4
  %inc = fadd double %14, 1.000000e+00
  store double %inc, double* %arrayidx28, align 8, !tbaa !4
  %indvars.iv.next304 = add i64 %indvars.iv303, 1
  %15 = trunc i64 %indvars.iv.next304 to i32
  %cmp26 = icmp slt i32 %15, %10
  br i1 %cmp26, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %conv = sitofp i32 %10 to double
  br label %if.end48

for.body33:                                       ; preds = %for.body33.lr.ph, %for.body33
  %indvars.iv305 = phi i64 [ 0, %for.body33.lr.ph ], [ %indvars.iv.next306, %for.body33 ]
  %totvwght.0280 = phi double [ 0.000000e+00, %for.body33.lr.ph ], [ %add44, %for.body33 ]
  %arrayidx35 = getelementptr inbounds i32* %vwghts, i64 %indvars.iv305
  %16 = load i32* %arrayidx35, align 4, !tbaa !3
  %conv36 = sitofp i32 %16 to double
  %arrayidx38 = getelementptr inbounds i32* %11, i64 %indvars.iv305
  %17 = load i32* %arrayidx38, align 4, !tbaa !3
  %idxprom39 = sext i32 %17 to i64
  %arrayidx40 = getelementptr inbounds double* %call23, i64 %idxprom39
  %18 = load double* %arrayidx40, align 8, !tbaa !4
  %add = fadd double %conv36, %18
  store double %add, double* %arrayidx40, align 8, !tbaa !4
  %add44 = fadd double %totvwght.0280, %conv36
  %indvars.iv.next306 = add i64 %indvars.iv305, 1
  %19 = trunc i64 %indvars.iv.next306 to i32
  %cmp31 = icmp slt i32 %19, %10
  br i1 %cmp31, label %for.body33, label %if.end48

if.end48:                                         ; preds = %for.cond30.preheader, %for.body33, %for.end
  %totvwght.1 = phi double [ %conv, %for.end ], [ 0.000000e+00, %for.cond30.preheader ], [ %add44, %for.body33 ]
  %call49 = call %struct._DV* @Tree_setSubtreeDmetric(%struct._Tree* %0, %struct._DV* %call22) #4
  %call50 = call double* @DV_entries(%struct._DV* %call49) #4
  %cmp52273 = icmp sgt i32 %1, 0
  br i1 %cmp52273, label %for.body54, label %for.end59.thread

for.end59.thread:                                 ; preds = %if.end48
  %20 = load i32* %nstage, align 4, !tbaa !3
  %call60308 = call i32* @IVinit(i32 %20, i32 -1) #4
  br label %for.cond100.preheader

for.body54:                                       ; preds = %if.end48, %for.body54
  %indvars.iv299 = phi i64 [ %indvars.iv.next300, %for.body54 ], [ 0, %if.end48 ]
  %arrayidx56 = getelementptr inbounds double* %call50, i64 %indvars.iv299
  %21 = load double* %arrayidx56, align 8, !tbaa !4
  %div = fdiv double %21, %totvwght.1
  store double %div, double* %arrayidx56, align 8, !tbaa !4
  %indvars.iv.next300 = add i64 %indvars.iv299, 1
  %lftr.wideiv301 = trunc i64 %indvars.iv.next300 to i32
  %exitcond302 = icmp eq i32 %lftr.wideiv301, %1
  br i1 %exitcond302, label %for.end59, label %for.body54

for.end59:                                        ; preds = %for.body54
  %22 = load i32* %nstage, align 4, !tbaa !3
  %call60 = call i32* @IVinit(i32 %22, i32 -1) #4
  br i1 %cmp52273, label %for.cond65.preheader.lr.ph, label %for.cond100.preheader

for.cond65.preheader.lr.ph:                       ; preds = %for.end59
  %23 = load double** %cutoffs, align 8, !tbaa !0
  br label %for.cond65.preheader

for.cond65.preheader:                             ; preds = %for.inc97, %for.cond65.preheader.lr.ph
  %indvars.iv295 = phi i64 [ 0, %for.cond65.preheader.lr.ph ], [ %indvars.iv.next296, %for.inc97 ]
  %24 = load i32* %nstage, align 4, !tbaa !3
  %sub267 = add nsw i32 %24, -1
  %cmp66268 = icmp sgt i32 %sub267, 0
  br i1 %cmp66268, label %for.body68.lr.ph, label %for.end88

for.body68.lr.ph:                                 ; preds = %for.cond65.preheader
  %arrayidx72 = getelementptr inbounds double* %call50, i64 %indvars.iv295
  %25 = load double* %arrayidx72, align 8, !tbaa !4
  br label %for.body68

for.cond100.preheader:                            ; preds = %for.inc97, %for.end59, %for.end59.thread
  %call60309 = phi i32* [ %call60308, %for.end59.thread ], [ %call60, %for.end59 ], [ %call60, %for.inc97 ]
  %26 = load i32* %nstage, align 4, !tbaa !3
  %cmp101261 = icmp sgt i32 %26, 0
  br i1 %cmp101261, label %for.body103.lr.ph, label %for.end117

for.body103.lr.ph:                                ; preds = %for.cond100.preheader
  %27 = load double** %cutoffs, align 8, !tbaa !0
  br label %for.body103

for.body68:                                       ; preds = %for.body68.lr.ph, %for.inc86
  %indvars.iv292 = phi i64 [ 0, %for.body68.lr.ph ], [ %indvars.iv.next293.pre, %for.inc86 ]
  %istage.0269 = phi i32 [ 0, %for.body68.lr.ph ], [ %inc87, %for.inc86 ]
  %arrayidx70 = getelementptr inbounds double* %23, i64 %indvars.iv292
  %28 = load double* %arrayidx70, align 8, !tbaa !4
  %cmp73 = fcmp ugt double %28, %25
  %indvars.iv.next293.pre = add i64 %indvars.iv292, 1
  br i1 %cmp73, label %for.inc86, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body68
  %arrayidx79 = getelementptr inbounds double* %23, i64 %indvars.iv.next293.pre
  %29 = load double* %arrayidx79, align 8, !tbaa !4
  %cmp80 = fcmp olt double %25, %29
  br i1 %cmp80, label %if.then82, label %for.inc86

if.then82:                                        ; preds = %land.lhs.true
  %arrayidx84 = getelementptr inbounds i32* %call60, i64 %indvars.iv292
  store i32 1, i32* %arrayidx84, align 4, !tbaa !3
  %.pre307 = load i32* %nstage, align 4, !tbaa !3
  br label %for.end88

for.inc86:                                        ; preds = %for.body68, %land.lhs.true
  %inc87 = add nsw i32 %istage.0269, 1
  %30 = trunc i64 %indvars.iv.next293.pre to i32
  %cmp66 = icmp slt i32 %30, %sub267
  br i1 %cmp66, label %for.body68, label %for.end88

for.end88:                                        ; preds = %for.cond65.preheader, %for.inc86, %if.then82
  %31 = phi i32 [ %.pre307, %if.then82 ], [ %24, %for.inc86 ], [ %24, %for.cond65.preheader ]
  %istage.0266 = phi i32 [ %istage.0269, %if.then82 ], [ %inc87, %for.inc86 ], [ 0, %for.cond65.preheader ]
  %sub89 = add nsw i32 %31, -1
  %cmp90 = icmp eq i32 %istage.0266, %sub89
  br i1 %cmp90, label %if.then92, label %for.inc97

if.then92:                                        ; preds = %for.end88
  %idxprom94 = sext i32 %istage.0266 to i64
  %arrayidx95 = getelementptr inbounds i32* %call60, i64 %idxprom94
  store i32 1, i32* %arrayidx95, align 4, !tbaa !3
  br label %for.inc97

for.inc97:                                        ; preds = %for.end88, %if.then92
  %indvars.iv.next296 = add i64 %indvars.iv295, 1
  %lftr.wideiv297 = trunc i64 %indvars.iv.next296 to i32
  %exitcond298 = icmp eq i32 %lftr.wideiv297, %1
  br i1 %exitcond298, label %for.cond100.preheader, label %for.cond65.preheader

for.body103:                                      ; preds = %for.body103.lr.ph, %for.inc115
  %indvars.iv288 = phi i64 [ 0, %for.body103.lr.ph ], [ %indvars.iv.next289, %for.inc115 ]
  %jstage.0262 = phi i32 [ 0, %for.body103.lr.ph ], [ %jstage.1, %for.inc115 ]
  %arrayidx105 = getelementptr inbounds i32* %call60309, i64 %indvars.iv288
  %32 = load i32* %arrayidx105, align 4, !tbaa !3
  %cmp106 = icmp eq i32 %32, 1
  br i1 %cmp106, label %if.then108, label %for.inc115

if.then108:                                       ; preds = %for.body103
  %arrayidx110 = getelementptr inbounds double* %27, i64 %indvars.iv288
  %33 = load double* %arrayidx110, align 8, !tbaa !4
  %inc111 = add nsw i32 %jstage.0262, 1
  %idxprom112 = sext i32 %jstage.0262 to i64
  %arrayidx113 = getelementptr inbounds double* %27, i64 %idxprom112
  store double %33, double* %arrayidx113, align 8, !tbaa !4
  br label %for.inc115

for.inc115:                                       ; preds = %for.body103, %if.then108
  %jstage.1 = phi i32 [ %inc111, %if.then108 ], [ %jstage.0262, %for.body103 ]
  %indvars.iv.next289 = add i64 %indvars.iv288, 1
  %34 = trunc i64 %indvars.iv.next289 to i32
  %cmp101 = icmp slt i32 %34, %26
  br i1 %cmp101, label %for.body103, label %for.end117

for.end117:                                       ; preds = %for.inc115, %for.cond100.preheader
  %jstage.0.lcssa = phi i32 [ 0, %for.cond100.preheader ], [ %jstage.1, %for.inc115 ]
  store i32 %jstage.0.lcssa, i32* %nstage, align 4, !tbaa !3
  %call118 = call i32* @IVinit(i32 %1, i32 -1) #4
  br i1 %cmp52273, label %for.cond123.preheader.lr.ph, label %for.end159

for.cond123.preheader.lr.ph:                      ; preds = %for.end117
  %35 = load double** %cutoffs, align 8, !tbaa !0
  br label %for.cond123.preheader

for.cond123.preheader:                            ; preds = %for.inc157, %for.cond123.preheader.lr.ph
  %indvars.iv286 = phi i64 [ 0, %for.cond123.preheader.lr.ph ], [ %indvars.iv.next287, %for.inc157 ]
  %36 = load i32* %nstage, align 4, !tbaa !3
  %sub124256 = add nsw i32 %36, -1
  %cmp125257 = icmp sgt i32 %sub124256, 0
  br i1 %cmp125257, label %for.body127.lr.ph, label %for.end148

for.body127.lr.ph:                                ; preds = %for.cond123.preheader
  %arrayidx131 = getelementptr inbounds double* %call50, i64 %indvars.iv286
  %37 = load double* %arrayidx131, align 8, !tbaa !4
  br label %for.body127

for.body127:                                      ; preds = %for.body127.lr.ph, %for.inc146
  %indvars.iv283 = phi i64 [ 0, %for.body127.lr.ph ], [ %indvars.iv.next284.pre, %for.inc146 ]
  %istage.2258 = phi i32 [ 0, %for.body127.lr.ph ], [ %inc147, %for.inc146 ]
  %arrayidx129 = getelementptr inbounds double* %35, i64 %indvars.iv283
  %38 = load double* %arrayidx129, align 8, !tbaa !4
  %cmp132 = fcmp ugt double %38, %37
  %indvars.iv.next284.pre = add i64 %indvars.iv283, 1
  br i1 %cmp132, label %for.inc146, label %land.lhs.true134

land.lhs.true134:                                 ; preds = %for.body127
  %arrayidx139 = getelementptr inbounds double* %35, i64 %indvars.iv.next284.pre
  %39 = load double* %arrayidx139, align 8, !tbaa !4
  %cmp140 = fcmp olt double %37, %39
  br i1 %cmp140, label %if.then142, label %for.inc146

if.then142:                                       ; preds = %land.lhs.true134
  %arrayidx144 = getelementptr inbounds i32* %call118, i64 %indvars.iv286
  store i32 %istage.2258, i32* %arrayidx144, align 4, !tbaa !3
  %.pre = load i32* %nstage, align 4, !tbaa !3
  br label %for.end148

for.inc146:                                       ; preds = %for.body127, %land.lhs.true134
  %inc147 = add nsw i32 %istage.2258, 1
  %40 = trunc i64 %indvars.iv.next284.pre to i32
  %cmp125 = icmp slt i32 %40, %sub124256
  br i1 %cmp125, label %for.body127, label %for.end148

for.end148:                                       ; preds = %for.cond123.preheader, %for.inc146, %if.then142
  %41 = phi i32 [ %.pre, %if.then142 ], [ %36, %for.inc146 ], [ %36, %for.cond123.preheader ]
  %istage.2255 = phi i32 [ %istage.2258, %if.then142 ], [ %inc147, %for.inc146 ], [ 0, %for.cond123.preheader ]
  %sub149 = add nsw i32 %41, -1
  %cmp150 = icmp eq i32 %istage.2255, %sub149
  br i1 %cmp150, label %if.then152, label %for.inc157

if.then152:                                       ; preds = %for.end148
  %arrayidx155 = getelementptr inbounds i32* %call118, i64 %indvars.iv286
  store i32 %istage.2255, i32* %arrayidx155, align 4, !tbaa !3
  br label %for.inc157

for.inc157:                                       ; preds = %for.end148, %if.then152
  %indvars.iv.next287 = add i64 %indvars.iv286, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next287 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %1
  br i1 %exitcond, label %for.end159, label %for.cond123.preheader

for.end159:                                       ; preds = %for.inc157, %for.end117
  %call160 = call %struct._IV* @IV_new() #4
  %42 = load i32* %nvtx, align 4, !tbaa !3
  call void @IV_init(%struct._IV* %call160, i32 %42, i32* null) #4
  %call161 = call i32* @IV_entries(%struct._IV* %call160) #4
  %43 = load i32* %nvtx, align 4, !tbaa !3
  %cmp163252 = icmp sgt i32 %43, 0
  br i1 %cmp163252, label %for.body165.lr.ph, label %for.end174

for.body165.lr.ph:                                ; preds = %for.end159
  %44 = load i32** %map, align 8, !tbaa !0
  br label %for.body165

for.body165:                                      ; preds = %for.body165.lr.ph, %for.body165
  %indvars.iv = phi i64 [ 0, %for.body165.lr.ph ], [ %indvars.iv.next, %for.body165 ]
  %arrayidx167 = getelementptr inbounds i32* %44, i64 %indvars.iv
  %45 = load i32* %arrayidx167, align 4, !tbaa !3
  %idxprom168 = sext i32 %45 to i64
  %arrayidx169 = getelementptr inbounds i32* %call118, i64 %idxprom168
  %46 = load i32* %arrayidx169, align 4, !tbaa !3
  %arrayidx171 = getelementptr inbounds i32* %call161, i64 %indvars.iv
  store i32 %46, i32* %arrayidx171, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %47 = load i32* %nvtx, align 4, !tbaa !3
  %48 = trunc i64 %indvars.iv.next to i32
  %cmp163 = icmp slt i32 %48, %47
  br i1 %cmp163, label %for.body165, label %for.end174

for.end174:                                       ; preds = %for.body165, %for.end159
  call void @DV_free(%struct._DV* %call22) #4
  call void @DV_free(%struct._DV* %call49) #4
  call void @IVfree(i32* %call118) #4
  call void @IVfree(i32* %call60309) #4
  ret %struct._IV* %call160
}

; Function Attrs: optsize
declare void @DV_sizeAndEntries(%struct._DV*, i32*, double**) #3

; Function Attrs: optsize
declare %struct._DV* @DV_new() #3

; Function Attrs: optsize
declare void @DV_init(%struct._DV*, i32, double*) #3

; Function Attrs: optsize
declare void @DV_fill(%struct._DV*, double) #3

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #3

; Function Attrs: optsize
declare %struct._DV* @Tree_setSubtreeDmetric(%struct._Tree*, %struct._DV*) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @DV_free(%struct._DV*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}