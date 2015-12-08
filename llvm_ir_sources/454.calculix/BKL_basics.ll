; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._BKL = type { %struct._BPG*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [3 x i32], i32*, float }
%struct._BPG = type { i32, i32, %struct._Graph* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [75 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_basics.c\00", align 1
@.str2 = private unnamed_addr constant [54 x i8] c"\0A fatal error in BKL_setDefaultFields(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [47 x i8] c"\0A fatal error in BKL_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [42 x i8] c"\0A fatal error in BKL_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._BKL* @BKL_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 88) #5
  %0 = bitcast i8* %call to %struct._BKL*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 88, i32 19, i8* getelementptr inbounds ([75 x i8]* @.str1, i64 0, i64 0)) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  tail call void @BKL_setDefaultFields(%struct._BKL* %0) #7
  ret %struct._BKL* %0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @BKL_setDefaultFields(%struct._BKL* %bkl) #0 {
entry:
  %cmp = icmp eq %struct._BKL* %bkl, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), %struct._BKL* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %colors = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10
  %alpha = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 13
  store float 0.000000e+00, float* %alpha, align 4, !tbaa !3
  %regwghts = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 12
  store i32* null, i32** %regwghts, align 8, !tbaa !0
  %1 = bitcast %struct._BKL* %bkl to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 44, i32 8, i1 false)
  %2 = bitcast i32** %colors to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 20, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @BKL_clearData(%struct._BKL* %bkl) #0 {
entry:
  %cmp = icmp eq %struct._BKL* %bkl, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str3, i64 0, i64 0), %struct._BKL* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %colors = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10
  %1 = load i32** %colors, align 8, !tbaa !0
  %cmp1 = icmp eq i32* %1, null
  br i1 %cmp1, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @IVfree(i32* %1) #5
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then2
  %bpg = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 0
  %2 = load %struct._BPG** %bpg, align 8, !tbaa !0
  %cmp5 = icmp eq %struct._BPG* %2, null
  br i1 %cmp5, label %if.end16, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end4
  %graph = getelementptr inbounds %struct._BPG* %2, i64 0, i32 2
  %3 = load %struct._Graph** %graph, align 8, !tbaa !0
  %cmp7 = icmp eq %struct._Graph* %3, null
  br i1 %cmp7, label %if.end16, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true
  %vwghts = getelementptr inbounds %struct._Graph* %3, i64 0, i32 7
  %4 = load i32** %vwghts, align 8, !tbaa !0
  %cmp11 = icmp eq i32* %4, null
  br i1 %cmp11, label %land.lhs.true12, label %if.end16

land.lhs.true12:                                  ; preds = %land.lhs.true8
  %regwghts = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 12
  %5 = load i32** %regwghts, align 8, !tbaa !0
  %cmp13 = icmp eq i32* %5, null
  br i1 %cmp13, label %if.end16, label %if.then14

if.then14:                                        ; preds = %land.lhs.true12
  tail call void @IVfree(i32* %5) #5
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true12, %land.lhs.true, %if.end4, %if.then14, %land.lhs.true8
  tail call void @BKL_setDefaultFields(%struct._BKL* %bkl) #7
  ret void
}

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @BKL_free(%struct._BKL* %bkl) #0 {
entry:
  %cmp = icmp eq %struct._BKL* %bkl, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([42 x i8]* @.str4, i64 0, i64 0), %struct._BKL* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  tail call void @BKL_clearData(%struct._BKL* %bkl) #7
  %1 = bitcast %struct._BKL* %bkl to i8*
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
!3 = metadata !{metadata !"float", metadata !1}
