; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [77 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_basics.c\00", align 1
@.str2 = private unnamed_addr constant [58 x i8] c"\0A fatal error in Tree_setDefaultFields(%p)\0A tree is NULL\0A\00", align 1
@.str3 = private unnamed_addr constant [51 x i8] c"\0A fatal error in Tree_clearData(%p)\0A tree is NULL\0A\00", align 1
@.str4 = private unnamed_addr constant [46 x i8] c"\0A fatal error in Tree_free(%p)\0A tree is NULL\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._Tree* @Tree_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 32) #5
  %0 = bitcast i8* %call to %struct._Tree*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 32, i32 27, i8* getelementptr inbounds ([77 x i8]* @.str1, i64 0, i64 0)) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  tail call void @Tree_setDefaultFields(%struct._Tree* %0) #7
  ret %struct._Tree* %0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @Tree_setDefaultFields(%struct._Tree* %tree) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str2, i64 0, i64 0), %struct._Tree* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  store i32 0, i32* %n, align 4, !tbaa !3
  %root = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1
  store i32 -1, i32* %root, align 4, !tbaa !3
  %par = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2
  %1 = bitcast i32** %par to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Tree_clearData(%struct._Tree* %tree) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), %struct._Tree* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %par = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2
  %1 = load i32** %par, align 8, !tbaa !0
  %cmp1 = icmp eq i32* %1, null
  br i1 %cmp1, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @IVfree(i32* %1) #5
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then2
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3
  %2 = load i32** %fch, align 8, !tbaa !0
  %cmp5 = icmp eq i32* %2, null
  br i1 %cmp5, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end4
  tail call void @IVfree(i32* %2) #5
  br label %if.end8

if.end8:                                          ; preds = %if.end4, %if.then6
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4
  %3 = load i32** %sib, align 8, !tbaa !0
  %cmp9 = icmp eq i32* %3, null
  br i1 %cmp9, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end8
  tail call void @IVfree(i32* %3) #5
  br label %if.end12

if.end12:                                         ; preds = %if.end8, %if.then10
  tail call void @Tree_setDefaultFields(%struct._Tree* %tree) #7
  ret void
}

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @Tree_free(%struct._Tree* %tree) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str4, i64 0, i64 0), %struct._Tree* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  tail call void @Tree_clearData(%struct._Tree* %tree) #7
  %1 = bitcast %struct._Tree* %tree to i8*
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
!3 = metadata !{metadata !"int", metadata !1}
