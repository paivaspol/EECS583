; ModuleID = '../../SPEC/benchspec/CPU2006/403.gcc/src/xmalloc.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@name = internal unnamed_addr global i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), align 8
@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [32 x i8] c"\0A%s%sCannot allocate %lu bytes\0A\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind optsize uwtable
define void @xmalloc_set_program_name(i8* %s) #0 {
entry:
  store i8* %s, i8** @name, align 8, !tbaa !0
  ret void
}

; Function Attrs: noreturn nounwind optsize uwtable
define void @xmalloc_failed(i64 %size) #1 {
entry:
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %1 = load i8** @name, align 8, !tbaa !0
  %2 = load i8* %1, align 1, !tbaa !1
  %tobool = icmp ne i8 %2, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0)
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([32 x i8]* @.str, i64 0, i64 0), i8* %1, i8* %cond, i64 %size) #4
  tail call void @xexit(i32 1) #5
  unreachable
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn optsize
declare void @xexit(i32) #3

; Function Attrs: nounwind optsize uwtable
define noalias i8* @xmalloc(i64 %size) #0 {
entry:
  %cmp = icmp eq i64 %size, 0
  %.size = select i1 %cmp, i64 1, i64 %size
  %call = tail call i8* @malloc(i64 %.size) #4
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  tail call void @xmalloc_failed(i64 %.size) #6
  unreachable

if.end2:                                          ; preds = %entry
  ret i8* %call
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize uwtable
define noalias i8* @xcalloc(i64 %nelem, i64 %elsize) #0 {
entry:
  %cmp = icmp eq i64 %nelem, 0
  %cmp1 = icmp eq i64 %elsize, 0
  %or.cond = or i1 %cmp, %cmp1
  %elsize.addr.0 = select i1 %or.cond, i64 1, i64 %elsize
  %nelem.addr.0 = select i1 %or.cond, i64 1, i64 %nelem
  %call = tail call i8* @calloc(i64 %nelem.addr.0, i64 %elsize.addr.0) #4
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %if.then2, label %if.end3

if.then2:                                         ; preds = %entry
  %mul = mul i64 %nelem.addr.0, %elsize.addr.0
  tail call void @xmalloc_failed(i64 %mul) #6
  unreachable

if.end3:                                          ; preds = %entry
  ret i8* %call
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind optsize uwtable
define i8* @xrealloc(i8* %oldmem, i64 %size) #0 {
entry:
  %cmp = icmp eq i64 %size, 0
  %.size = select i1 %cmp, i64 1, i64 %size
  %tobool = icmp eq i8* %oldmem, null
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %entry
  %call = tail call i8* @malloc(i64 %.size) #4
  br label %if.end3

if.else:                                          ; preds = %entry
  %call2 = tail call i8* @realloc(i8* %oldmem, i64 %.size) #4
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then1
  %newmem.0 = phi i8* [ %call2, %if.else ], [ %call, %if.then1 ]
  %tobool4 = icmp eq i8* %newmem.0, null
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  tail call void @xmalloc_failed(i64 %.size) #6
  unreachable

if.end6:                                          ; preds = %if.end3
  ret i8* %newmem.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }
attributes #6 = { noreturn optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
