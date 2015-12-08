; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_instance.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [42 x i8] c"\0A fatal error in IVL_type(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [46 x i8] c"\0A fatal error in IVL_maxnlist(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [43 x i8] c"\0A fatal error in IVL_nlist(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [43 x i8] c"\0A fatal error in IVL_tsize(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [42 x i8] c"\0A fatal error in IVL_incr(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [48 x i8] c"\0A fatal error in IVL_setincr(%p,%d)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @IVL_type(%struct._IVL* %ivl) #0 {
entry:
  %cmp = icmp eq %struct._IVL* %ivl, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([42 x i8]* @.str, i64 0, i64 0), %struct._IVL* null) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @IVL_maxnlist(%struct._IVL* %ivl) #0 {
entry:
  %cmp = icmp eq %struct._IVL* %ivl, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str1, i64 0, i64 0), %struct._IVL* null) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %maxnlist = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 1
  %1 = load i32* %maxnlist, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize uwtable
define i32 @IVL_nlist(%struct._IVL* %ivl) #0 {
entry:
  %cmp = icmp eq %struct._IVL* %ivl, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8]* @.str2, i64 0, i64 0), %struct._IVL* null) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %nlist = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2
  %1 = load i32* %nlist, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize uwtable
define i32 @IVL_tsize(%struct._IVL* %ivl) #0 {
entry:
  %cmp = icmp eq %struct._IVL* %ivl, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8]* @.str3, i64 0, i64 0), %struct._IVL* null) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %tsize = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 3
  %1 = load i32* %tsize, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize uwtable
define i32 @IVL_incr(%struct._IVL* %ivl) #0 {
entry:
  %cmp = icmp eq %struct._IVL* %ivl, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([42 x i8]* @.str4, i64 0, i64 0), %struct._IVL* null) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %incr = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 6
  %1 = load i32* %incr, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize uwtable
define void @IVL_setincr(%struct._IVL* %ivl, i32 %incr) #0 {
entry:
  %cmp = icmp eq %struct._IVL* %ivl, null
  %cmp1 = icmp slt i32 %incr, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str5, i64 0, i64 0), %struct._IVL* %ivl, i32 %incr) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %incr2 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 6
  store i32 %incr, i32* %incr2, align 4, !tbaa !3
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }
attributes #4 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
