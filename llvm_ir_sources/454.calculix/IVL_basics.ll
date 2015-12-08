; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [75 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_basics.c\00", align 1
@.str2 = private unnamed_addr constant [53 x i8] c"\0A fatal error in IVL_setDefaultFields(%p)\0A bad input\00", align 1
@.str3 = private unnamed_addr constant [47 x i8] c"\0A fatal error in IVL_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [55 x i8] c"\0A fatal error in IVL_clearData(%p)\0A invalid type = %d\0A\00", align 1
@.str5 = private unnamed_addr constant [42 x i8] c"\0A fatal error in IVL_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._IVL* @IVL_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 48) #5
  %0 = bitcast i8* %call to %struct._IVL*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 48, i32 21, i8* getelementptr inbounds ([75 x i8]* @.str1, i64 0, i64 0)) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  tail call void @IVL_setDefaultFields(%struct._IVL* %0) #7
  ret %struct._IVL* %0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @IVL_setDefaultFields(%struct._IVL* %ivl) #0 {
entry:
  %cmp = icmp eq %struct._IVL* %ivl, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str2, i64 0, i64 0), %struct._IVL* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 0
  store i32 -1, i32* %type, align 4, !tbaa !3
  %maxnlist = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 1
  %incr = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 6
  %1 = bitcast i32* %maxnlist to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 28, i32 4, i1 false)
  store i32 1024, i32* %incr, align 4, !tbaa !3
  %chunk = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 7
  store %struct._Ichunk* null, %struct._Ichunk** %chunk, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @IVL_clearData(%struct._IVL* %ivl) #0 {
entry:
  %cmp = icmp eq %struct._IVL* %ivl, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str3, i64 0, i64 0), %struct._IVL* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  switch i32 %1, label %sw.default [
    i32 2, label %for.cond.preheader
    i32 1, label %while.cond.preheader
    i32 -1, label %sw.epilog
    i32 3, label %sw.epilog
  ]

while.cond.preheader:                             ; preds = %if.end
  %chunk14 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 7
  %2 = load %struct._Ichunk** %chunk14, align 8, !tbaa !0
  %cmp1575 = icmp eq %struct._Ichunk* %2, null
  br i1 %cmp1575, label %sw.epilog, label %while.body

for.cond.preheader:                               ; preds = %if.end
  %nlist = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2
  %3 = load i32* %nlist, align 4, !tbaa !3
  %cmp172 = icmp sgt i32 %3, 0
  br i1 %cmp172, label %for.body.lr.ph, label %sw.epilog

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %p_vec = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 5
  %sizes = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 4
  %tsize = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %4 = phi i32 [ %3, %for.body.lr.ph ], [ %11, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %5 = load i32*** %p_vec, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32** %5, i64 %indvars.iv
  %6 = load i32** %arrayidx, align 8, !tbaa !0
  %cmp2 = icmp eq i32* %6, null
  br i1 %cmp2, label %for.inc, label %if.then3

if.then3:                                         ; preds = %for.body
  tail call void @IVfree(i32* %6) #5
  %7 = load i32*** %p_vec, align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds i32** %7, i64 %indvars.iv
  store i32* null, i32** %arrayidx9, align 8, !tbaa !0
  %8 = load i32** %sizes, align 8, !tbaa !0
  %arrayidx11 = getelementptr inbounds i32* %8, i64 %indvars.iv
  %9 = load i32* %arrayidx11, align 4, !tbaa !3
  %10 = load i32* %tsize, align 4, !tbaa !3
  %sub = sub nsw i32 %10, %9
  store i32 %sub, i32* %tsize, align 4, !tbaa !3
  %.pre = load i32* %nlist, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then3
  %11 = phi i32 [ %4, %for.body ], [ %.pre, %if.then3 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %12 = trunc i64 %indvars.iv.next to i32
  %cmp1 = icmp slt i32 %12, %11
  br i1 %cmp1, label %for.body, label %sw.epilog

while.body:                                       ; preds = %while.cond.preheader, %if.then23
  %13 = phi %struct._Ichunk* [ %17, %if.then23 ], [ %2, %while.cond.preheader ]
  %next = getelementptr inbounds %struct._Ichunk* %13, i64 0, i32 3
  %14 = load %struct._Ichunk** %next, align 8, !tbaa !0
  store %struct._Ichunk* %14, %struct._Ichunk** %chunk14, align 8, !tbaa !0
  %base = getelementptr inbounds %struct._Ichunk* %13, i64 0, i32 2
  %15 = load i32** %base, align 8, !tbaa !0
  %cmp17 = icmp eq i32* %15, null
  br i1 %cmp17, label %if.then23, label %if.then18

if.then18:                                        ; preds = %while.body
  tail call void @IVfree(i32* %15) #5
  br label %if.then23

if.then23:                                        ; preds = %if.then18, %while.body
  %16 = bitcast %struct._Ichunk* %13 to i8*
  tail call void @free(i8* %16) #5
  %17 = load %struct._Ichunk** %chunk14, align 8, !tbaa !0
  %cmp15 = icmp eq %struct._Ichunk* %17, null
  br i1 %cmp15, label %sw.epilog, label %while.body

sw.default:                                       ; preds = %if.end
  %18 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([55 x i8]* @.str4, i64 0, i64 0), %struct._IVL* %ivl, i32 %1) #5
  tail call void @exit(i32 -1) #6
  unreachable

sw.epilog:                                        ; preds = %while.cond.preheader, %if.then23, %for.cond.preheader, %for.inc, %if.end, %if.end
  %sizes28 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 4
  %19 = load i32** %sizes28, align 8, !tbaa !0
  %cmp29 = icmp eq i32* %19, null
  br i1 %cmp29, label %if.end33, label %if.then30

if.then30:                                        ; preds = %sw.epilog
  tail call void @IVfree(i32* %19) #5
  store i32* null, i32** %sizes28, align 8, !tbaa !0
  br label %if.end33

if.end33:                                         ; preds = %sw.epilog, %if.then30
  %p_vec34 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 5
  %20 = load i32*** %p_vec34, align 8, !tbaa !0
  %cmp35 = icmp eq i32** %20, null
  br i1 %cmp35, label %if.end39, label %if.then36

if.then36:                                        ; preds = %if.end33
  tail call void @PIVfree(i32** %20) #5
  store i32** null, i32*** %p_vec34, align 8, !tbaa !0
  br label %if.end39

if.end39:                                         ; preds = %if.end33, %if.then36
  %maxnlist = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 1
  store i32 0, i32* %maxnlist, align 4, !tbaa !3
  %nlist40 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2
  store i32 0, i32* %nlist40, align 4, !tbaa !3
  tail call void @IVL_setDefaultFields(%struct._IVL* %ivl) #7
  ret void
}

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: optsize
declare void @PIVfree(i32**) #3

; Function Attrs: nounwind optsize uwtable
define noalias %struct._IVL* @IVL_free(%struct._IVL* %ivl) #0 {
entry:
  %cmp = icmp eq %struct._IVL* %ivl, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([42 x i8]* @.str5, i64 0, i64 0), %struct._IVL* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  tail call void @IVL_clearData(%struct._IVL* %ivl) #7
  %1 = bitcast %struct._IVL* %ivl to i8*
  tail call void @free(i8* %1) #5
  ret %struct._IVL* null
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
