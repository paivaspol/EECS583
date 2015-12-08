; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._ZV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [73 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_basics.c\00", align 1
@.str2 = private unnamed_addr constant [53 x i8] c"\0A fatal error in ZV_setDefaultFields(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [46 x i8] c"\0A fatal error in ZV_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [41 x i8] c"\0A fatal error in ZV_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._ZV* @ZV_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 24) #4
  %0 = bitcast i8* %call to %struct._ZV*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 24, i32 19, i8* getelementptr inbounds ([73 x i8]* @.str1, i64 0, i64 0)) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  tail call void @ZV_setDefaultFields(%struct._ZV* %0) #6
  ret %struct._ZV* %0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @ZV_setDefaultFields(%struct._ZV* %zv) #0 {
entry:
  %cmp = icmp eq %struct._ZV* %zv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str2, i64 0, i64 0), %struct._ZV* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 0
  store i32 0, i32* %size, align 4, !tbaa !3
  %maxsize = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 1
  store i32 0, i32* %maxsize, align 4, !tbaa !3
  %owned = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 2
  store i32 0, i32* %owned, align 4, !tbaa !3
  %vec = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 3
  store double* null, double** %vec, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ZV_clearData(%struct._ZV* %zv) #0 {
entry:
  %cmp = icmp eq %struct._ZV* %zv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str3, i64 0, i64 0), %struct._ZV* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %vec = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 3
  %1 = load double** %vec, align 8, !tbaa !0
  %cmp1 = icmp eq double* %1, null
  br i1 %cmp1, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %owned = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 2
  %2 = load i32* %owned, align 4, !tbaa !3
  %cmp2 = icmp eq i32 %2, 1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %land.lhs.true
  tail call void @DVfree(double* %1) #4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then3, %land.lhs.true
  tail call void @ZV_setDefaultFields(%struct._ZV* %zv) #6
  ret void
}

; Function Attrs: optsize
declare void @DVfree(double*) #3

; Function Attrs: nounwind optsize uwtable
define void @ZV_free(%struct._ZV* %zv) #0 {
entry:
  %cmp = icmp eq %struct._ZV* %zv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([41 x i8]* @.str4, i64 0, i64 0), %struct._ZV* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  tail call void @ZV_clearData(%struct._ZV* %zv) #6
  %1 = bitcast %struct._ZV* %zv to i8*
  tail call void @free(i8* %1) #4
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
