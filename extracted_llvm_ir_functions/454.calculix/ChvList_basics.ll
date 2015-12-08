; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._ChvList = type { i32, %struct._Chv**, i32*, %struct._Lock*, i8*, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }
%struct._Lock = type { i8*, i32, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [83 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_basics.c\00", align 1
@.str2 = private unnamed_addr constant [57 x i8] c"\0A fatal error in ChvList_setDefaultFields(%p)\0A bad input\00", align 1
@.str3 = private unnamed_addr constant [51 x i8] c"\0A fatal error in ChvList_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [46 x i8] c"\0A fatal error in ChvList_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._ChvList* @ChvList_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 48) #5
  %0 = bitcast i8* %call to %struct._ChvList*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 48, i32 21, i8* getelementptr inbounds ([83 x i8]* @.str1, i64 0, i64 0)) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  tail call void @ChvList_setDefaultFields(%struct._ChvList* %0) #7
  ret %struct._ChvList* %0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @ChvList_setDefaultFields(%struct._ChvList* %chvlist) #0 {
entry:
  %cmp = icmp eq %struct._ChvList* %chvlist, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str2, i64 0, i64 0), %struct._ChvList* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %nlist = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 0
  store i32 0, i32* %nlist, align 4, !tbaa !3
  %heads = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 1
  %1 = bitcast %struct._Chv*** %heads to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ChvList_clearData(%struct._ChvList* %chvlist) #0 {
entry:
  %cmp = icmp eq %struct._ChvList* %chvlist, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), %struct._ChvList* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %heads = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 1
  %1 = load %struct._Chv*** %heads, align 8, !tbaa !0
  %cmp1 = icmp eq %struct._Chv** %1, null
  br i1 %cmp1, label %if.end9, label %if.then5

if.then5:                                         ; preds = %if.end
  %2 = bitcast %struct._Chv** %1 to i8*
  tail call void @free(i8* %2) #5
  store %struct._Chv** null, %struct._Chv*** %heads, align 8, !tbaa !0
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then5
  %counts = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 2
  %3 = load i32** %counts, align 8, !tbaa !0
  %cmp10 = icmp eq i32* %3, null
  br i1 %cmp10, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end9
  tail call void @IVfree(i32* %3) #5
  br label %if.end13

if.end13:                                         ; preds = %if.end9, %if.then11
  %flags = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 4
  %4 = load i8** %flags, align 8, !tbaa !0
  %cmp14 = icmp eq i8* %4, null
  br i1 %cmp14, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end13
  tail call void @CVfree(i8* %4) #5
  br label %if.end17

if.end17:                                         ; preds = %if.end13, %if.then15
  %lock = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 3
  %5 = load %struct._Lock** %lock, align 8, !tbaa !0
  %cmp18 = icmp eq %struct._Lock* %5, null
  br i1 %cmp18, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end17
  tail call void @Lock_free(%struct._Lock* %5) #5
  br label %if.end21

if.end21:                                         ; preds = %if.end17, %if.then19
  tail call void @ChvList_setDefaultFields(%struct._ChvList* %chvlist) #7
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: optsize
declare void @CVfree(i8*) #3

; Function Attrs: optsize
declare void @Lock_free(%struct._Lock*) #3

; Function Attrs: nounwind optsize uwtable
define void @ChvList_free(%struct._ChvList* %chvlist) #0 {
entry:
  %cmp = icmp eq %struct._ChvList* %chvlist, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str4, i64 0, i64 0), %struct._ChvList* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  tail call void @ChvList_clearData(%struct._ChvList* %chvlist) #7
  %1 = bitcast %struct._ChvList* %chvlist to i8*
  tail call void @free(i8* %1) #5
  ret void
}

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
