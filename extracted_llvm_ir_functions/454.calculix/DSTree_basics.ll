; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._DSTree = type { %struct._Tree*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [81 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_basics.c\00", align 1
@.str2 = private unnamed_addr constant [62 x i8] c"\0A fatal error in DSTree_setDefaultFields(%p)\0A dstree is NULL\0A\00", align 1
@.str3 = private unnamed_addr constant [55 x i8] c"\0A fatal error in DSTree_clearData(%p)\0A dstree is NULL\0A\00", align 1
@.str4 = private unnamed_addr constant [50 x i8] c"\0A fatal error in DSTree_free(%p)\0A dstree is NULL\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._DSTree* @DSTree_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 16) #5
  %0 = bitcast i8* %call to %struct._DSTree*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 16, i32 27, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0)) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  tail call void @DSTree_setDefaultFields(%struct._DSTree* %0) #7
  ret %struct._DSTree* %0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @DSTree_setDefaultFields(%struct._DSTree* %dstree) #0 {
entry:
  %cmp = icmp eq %struct._DSTree* %dstree, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), %struct._DSTree* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %1 = bitcast %struct._DSTree* %dstree to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DSTree_clearData(%struct._DSTree* %dstree) #0 {
entry:
  %cmp = icmp eq %struct._DSTree* %dstree, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), %struct._DSTree* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %tree = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0
  %1 = load %struct._Tree** %tree, align 8, !tbaa !0
  %cmp1 = icmp eq %struct._Tree* %1, null
  br i1 %cmp1, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @Tree_clearData(%struct._Tree* %1) #5
  %2 = load %struct._Tree** %tree, align 8, !tbaa !0
  tail call void @Tree_free(%struct._Tree* %2) #5
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then2
  %mapIV = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1
  %3 = load %struct._IV** %mapIV, align 8, !tbaa !0
  %cmp6 = icmp eq %struct._IV* %3, null
  br i1 %cmp6, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end5
  tail call void @IV_free(%struct._IV* %3) #5
  br label %if.end9

if.end9:                                          ; preds = %if.end5, %if.then7
  tail call void @DSTree_setDefaultFields(%struct._DSTree* %dstree) #7
  ret void
}

; Function Attrs: optsize
declare void @Tree_clearData(%struct._Tree*) #3

; Function Attrs: optsize
declare void @Tree_free(%struct._Tree*) #3

; Function Attrs: optsize
declare void @IV_free(%struct._IV*) #3

; Function Attrs: nounwind optsize uwtable
define void @DSTree_free(%struct._DSTree* %dstree) #0 {
entry:
  %cmp = icmp eq %struct._DSTree* %dstree, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str4, i64 0, i64 0), %struct._DSTree* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  tail call void @DSTree_clearData(%struct._DSTree* %dstree) #7
  %1 = bitcast %struct._DSTree* %dstree to i8*
  tail call void @free(i8* %1) #5
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}