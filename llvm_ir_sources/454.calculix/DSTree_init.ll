; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._DSTree = type { %struct._Tree*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [52 x i8] c"\0A fatal error in DSTree_init1(%p,%d,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [52 x i8] c"\0A fatal error in DSTree_init2(%p,%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @DSTree_init1(%struct._DSTree* %dstree, i32 %ndomsep, i32 %nvtx) #0 {
entry:
  %cmp = icmp eq %struct._DSTree* %dstree, null
  %cmp1 = icmp slt i32 %ndomsep, 1
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), %struct._DSTree* %dstree, i32 %ndomsep, i32 %nvtx) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  tail call void @DSTree_clearData(%struct._DSTree* %dstree) #4
  %call2 = tail call %struct._Tree* @Tree_new() #4
  %tree = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0
  store %struct._Tree* %call2, %struct._Tree** %tree, align 8, !tbaa !0
  tail call void @Tree_init1(%struct._Tree* %call2, i32 %ndomsep) #4
  %call4 = tail call %struct._IV* @IV_new() #4
  %mapIV = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1
  store %struct._IV* %call4, %struct._IV** %mapIV, align 8, !tbaa !0
  tail call void @IV_init(%struct._IV* %call4, i32 %nvtx, i32* null) #4
  %1 = load %struct._IV** %mapIV, align 8, !tbaa !0
  tail call void @IV_fill(%struct._IV* %1, i32 -1) #4
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @DSTree_clearData(%struct._DSTree*) #3

; Function Attrs: optsize
declare %struct._Tree* @Tree_new() #3

; Function Attrs: optsize
declare void @Tree_init1(%struct._Tree*, i32) #3

; Function Attrs: optsize
declare %struct._IV* @IV_new() #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: optsize
declare void @IV_fill(%struct._IV*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @DSTree_init2(%struct._DSTree* %dstree, %struct._Tree* %tree, %struct._IV* %mapIV) #0 {
entry:
  %cmp = icmp eq %struct._DSTree* %dstree, null
  %cmp1 = icmp eq %struct._Tree* %tree, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %0 = load i32* %n, align 4, !tbaa !3
  %cmp3 = icmp slt i32 %0, 1
  %cmp5 = icmp eq %struct._IV* %mapIV, null
  %or.cond21 = or i1 %cmp3, %cmp5
  br i1 %or.cond21, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false2
  %call = tail call i32 @IV_size(%struct._IV* %mapIV) #4
  %cmp7 = icmp slt i32 %call, 1
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), %struct._DSTree* %dstree, %struct._Tree* %tree, %struct._IV* %mapIV) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false6
  tail call void @DSTree_clearData(%struct._DSTree* %dstree) #4
  %tree9 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0
  store %struct._Tree* %tree, %struct._Tree** %tree9, align 8, !tbaa !0
  %mapIV10 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1
  store %struct._IV* %mapIV, %struct._IV** %mapIV10, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #3

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
