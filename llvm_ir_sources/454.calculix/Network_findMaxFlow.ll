; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMaxFlow.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Network = type { i32, i32, i32, %struct._Arc**, %struct._Arc**, %struct._ArcChunk*, i32, %struct._IO_FILE* }
%struct._Arc = type { i32, i32, i32, i32, %struct._Arc*, %struct._Arc* }
%struct._ArcChunk = type { i32, i32, %struct._Arc*, %struct._ArcChunk* }
%struct._Ideq = type { i32, i32, i32, %struct._IV }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [45 x i8] c"\0A fatal error in findMaxFlow(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [18 x i8] c"\0A\0A findMaxFlow :\0A\00", align 1
@.str2 = private unnamed_addr constant [23 x i8] c"\0A checking out node %d\00", align 1
@.str3 = private unnamed_addr constant [41 x i8] c"\0A    delta = %d from findAugmentPath(%d)\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Network_findMaxFlow(%struct._Network* %network) #0 {
entry:
  %cmp = icmp eq %struct._Network* %network, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nnode1 = getelementptr inbounds %struct._Network* %network, i64 0, i32 0
  %0 = load i32* %nnode1, align 4, !tbaa !0
  %cmp2 = icmp slt i32 %0, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([45 x i8]* @.str, i64 0, i64 0), %struct._Network* %network) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %outheads3 = getelementptr inbounds %struct._Network* %network, i64 0, i32 4
  %2 = load %struct._Arc*** %outheads3, align 8, !tbaa !3
  %msglvl5 = getelementptr inbounds %struct._Network* %network, i64 0, i32 6
  %3 = load i32* %msglvl5, align 4, !tbaa !0
  %msgFile6 = getelementptr inbounds %struct._Network* %network, i64 0, i32 7
  %4 = load %struct._IO_FILE** %msgFile6, align 8, !tbaa !3
  %cmp7 = icmp sgt i32 %3, 2
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([18 x i8]* @.str1, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %4)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  %call11 = tail call %struct._Ideq* @Ideq_new() #5
  %call12 = tail call i32 @Ideq_resize(%struct._Ideq* %call11, i32 %0) #5
  %call13 = tail call i32* @IVinit(i32 %0, i32 -1) #5
  %call14 = tail call i32* @IVinit(i32 %0, i32 -1) #5
  %call15 = tail call i32* @IVinit(i32 %0, i32 0) #5
  %arc.069 = load %struct._Arc** %2, align 8
  %cmp1670 = icmp eq %struct._Arc* %arc.069, null
  br i1 %cmp1670, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end10
  %ntrav = getelementptr inbounds %struct._Network* %network, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %arc.072 = phi %struct._Arc* [ %arc.069, %for.body.lr.ph ], [ %arc.0, %for.inc ]
  %tag.071 = phi i32 [ 0, %for.body.lr.ph ], [ %tag.1.lcssa, %for.inc ]
  %6 = load i32* %ntrav, align 4, !tbaa !0
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %ntrav, align 4, !tbaa !0
  br i1 %cmp7, label %if.then18, label %while.cond.preheader

if.then18:                                        ; preds = %for.body
  %second = getelementptr inbounds %struct._Arc* %arc.072, i64 0, i32 1
  %7 = load i32* %second, align 4, !tbaa !0
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0), i32 %7) #5
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then18, %for.body
  %capacity = getelementptr inbounds %struct._Arc* %arc.072, i64 0, i32 2
  %8 = load i32* %capacity, align 4, !tbaa !0
  %flow = getelementptr inbounds %struct._Arc* %arc.072, i64 0, i32 3
  %9 = load i32* %flow, align 4, !tbaa !0
  %sub65 = sub nsw i32 %8, %9
  %cmp2166 = icmp sgt i32 %sub65, 0
  br i1 %cmp2166, label %while.body.lr.ph, label %for.inc

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %second22 = getelementptr inbounds %struct._Arc* %arc.072, i64 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end31
  %sub68 = phi i32 [ %sub65, %while.body.lr.ph ], [ %sub, %if.end31 ]
  %tag.167 = phi i32 [ %tag.071, %while.body.lr.ph ], [ %inc32, %if.end31 ]
  %10 = load i32* %second22, align 4, !tbaa !0
  %call23 = tail call i32 @Network_findAugmentingPath(%struct._Network* %network, i32 %10, i32 %sub68, i32 %tag.167, %struct._Ideq* %call11, i32* %call14, i32* %call15, i32* %call13) #5
  br i1 %cmp7, label %if.then25, label %if.end28

if.then25:                                        ; preds = %while.body
  %11 = load i32* %second22, align 4, !tbaa !0
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([41 x i8]* @.str3, i64 0, i64 0), i32 %call23, i32 %11) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %while.body
  %cmp29 = icmp eq i32 %call23, 0
  br i1 %cmp29, label %for.inc, label %if.end31

if.end31:                                         ; preds = %if.end28
  tail call void @Network_augmentPath(%struct._Network* %network, i32 %call23, i32* %call13) #5
  %inc32 = add nsw i32 %tag.167, 1
  %12 = load i32* %capacity, align 4, !tbaa !0
  %13 = load i32* %flow, align 4, !tbaa !0
  %sub = sub nsw i32 %12, %13
  %cmp21 = icmp sgt i32 %sub, 0
  br i1 %cmp21, label %while.body, label %for.inc

for.inc:                                          ; preds = %if.end31, %if.end28, %while.cond.preheader
  %tag.1.lcssa = phi i32 [ %tag.071, %while.cond.preheader ], [ %tag.167, %if.end28 ], [ %inc32, %if.end31 ]
  %nextOut = getelementptr inbounds %struct._Arc* %arc.072, i64 0, i32 4
  %arc.0 = load %struct._Arc** %nextOut, align 8
  %cmp16 = icmp eq %struct._Arc* %arc.0, null
  br i1 %cmp16, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end10
  tail call void @Ideq_free(%struct._Ideq* %call11) #5
  tail call void @IVfree(i32* %call13) #5
  tail call void @IVfree(i32* %call14) #5
  tail call void @IVfree(i32* %call15) #5
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare %struct._Ideq* @Ideq_new() #3

; Function Attrs: optsize
declare i32 @Ideq_resize(%struct._Ideq*, i32) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare i32 @Network_findAugmentingPath(%struct._Network*, i32, i32, i32, %struct._Ideq*, i32*, i32*, i32*) #3

; Function Attrs: optsize
declare void @Network_augmentPath(%struct._Network*, i32, i32*) #3

; Function Attrs: optsize
declare void @Ideq_free(%struct._Ideq*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
