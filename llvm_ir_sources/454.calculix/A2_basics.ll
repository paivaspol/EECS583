; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [73 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_basics.c\00", align 1
@.str2 = private unnamed_addr constant [52 x i8] c"\0A fatal error in A2_setDefaultFields(%p)\0A bad input\00", align 1
@.str3 = private unnamed_addr constant [46 x i8] c"\0A fatal error in A2_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [41 x i8] c"\0A fatal error in A2_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._A2* @A2_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 32) #5
  %0 = bitcast i8* %call to %struct._A2*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 32, i32 21, i8* getelementptr inbounds ([73 x i8]* @.str1, i64 0, i64 0)) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  tail call void @A2_setDefaultFields(%struct._A2* %0) #7
  ret %struct._A2* %0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @A2_setDefaultFields(%struct._A2* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str2, i64 0, i64 0), %struct._A2* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  store i32 1, i32* %type, align 4, !tbaa !3
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %1 = bitcast i32* %n1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 28, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @A2_clearData(%struct._A2* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str3, i64 0, i64 0), %struct._A2* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %nowned = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 5
  %1 = load i32* %nowned, align 4, !tbaa !3
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %2 = load double** %entries, align 8, !tbaa !0
  %cmp2 = icmp eq double* %2, null
  br i1 %cmp2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  tail call void @DVfree(double* %2) #5
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %if.then3, %if.end
  tail call void @A2_setDefaultFields(%struct._A2* %mtx) #7
  ret void
}

; Function Attrs: optsize
declare void @DVfree(double*) #3

; Function Attrs: nounwind optsize uwtable
define void @A2_free(%struct._A2* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([41 x i8]* @.str4, i64 0, i64 0), %struct._A2* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  tail call void @A2_clearData(%struct._A2* %mtx) #7
  %1 = bitcast %struct._A2* %mtx to i8*
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
