; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [81 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_basics.c\00", align 1
@.str2 = private unnamed_addr constant [56 x i8] c"\0A fatal error in SubMtx_setDefaultFields(%p)\0A bad input\00", align 1
@.str3 = private unnamed_addr constant [50 x i8] c"\0A fatal error in SubMtx_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [45 x i8] c"\0A fatal error in SubMtx_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._SubMtx* @SubMtx_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 72) #4
  %0 = bitcast i8* %call to %struct._SubMtx*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 72, i32 21, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0)) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  tail call void @SubMtx_setDefaultFields(%struct._SubMtx* %0) #6
  ret %struct._SubMtx* %0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_setDefaultFields(%struct._SubMtx* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), %struct._SubMtx* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  store i32 1, i32* %type, align 4, !tbaa !3
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1
  store i32 1, i32* %mode, align 4, !tbaa !3
  %rowid = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 2
  store i32 -1, i32* %rowid, align 4, !tbaa !3
  %colid = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 3
  store i32 -1, i32* %colid, align 4, !tbaa !3
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4
  store i32 0, i32* %nrow, align 4, !tbaa !3
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5
  store i32 0, i32* %ncol, align 4, !tbaa !3
  %nent = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 6
  store i32 0, i32* %nent, align 4, !tbaa !3
  %next = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 9
  store %struct._SubMtx* null, %struct._SubMtx** %next, align 8, !tbaa !0
  %wrkDV = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8
  tail call void @DV_setDefaultFields(%struct._DV* %wrkDV) #4
  ret void
}

; Function Attrs: optsize
declare void @DV_setDefaultFields(%struct._DV*) #3

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_clearData(%struct._SubMtx* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str3, i64 0, i64 0), %struct._SubMtx* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %wrkDV = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8
  tail call void @DV_clearData(%struct._DV* %wrkDV) #4
  tail call void @SubMtx_setDefaultFields(%struct._SubMtx* %mtx) #6
  ret void
}

; Function Attrs: optsize
declare void @DV_clearData(%struct._DV*) #3

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_free(%struct._SubMtx* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str4, i64 0, i64 0), %struct._SubMtx* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  tail call void @SubMtx_clearData(%struct._SubMtx* %mtx) #6
  %1 = bitcast %struct._SubMtx* %mtx to i8*
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
