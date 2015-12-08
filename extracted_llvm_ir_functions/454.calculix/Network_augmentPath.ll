; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_augmentPath.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Network = type { i32, i32, i32, %struct._Arc**, %struct._Arc**, %struct._ArcChunk*, i32, %struct._IO_FILE* }
%struct._Arc = type { i32, i32, i32, i32, %struct._Arc*, %struct._Arc* }
%struct._ArcChunk = type { i32, i32, %struct._Arc*, %struct._ArcChunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [59 x i8] c"\0A fatal error in Network_augmentPath(%p,%d,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [16 x i8] c"\0A\0A augment path\00", align 1
@.str2 = private unnamed_addr constant [20 x i8] c"\0A    w = %d, v = %d\00", align 1
@.str3 = private unnamed_addr constant [35 x i8] c"\0A   backward arc(%d,%d), flow = %d\00", align 1
@.str4 = private unnamed_addr constant [34 x i8] c"\0A   forward arc(%d,%d), flow = %d\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Network_augmentPath(%struct._Network* %network, i32 %delta, i32* %pred) #0 {
entry:
  %cmp = icmp eq %struct._Network* %network, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nnode1 = getelementptr inbounds %struct._Network* %network, i64 0, i32 0
  %0 = load i32* %nnode1, align 4, !tbaa !0
  %cmp2 = icmp slt i32 %0, 1
  %cmp4 = icmp slt i32 %delta, 1
  %or.cond = or i1 %cmp2, %cmp4
  %cmp6 = icmp eq i32* %pred, null
  %or.cond97 = or i1 %or.cond, %cmp6
  br i1 %or.cond97, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0), %struct._Network* %network, i32 %delta, i32* %pred) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %sub = add nsw i32 %0, -1
  %inheads7 = getelementptr inbounds %struct._Network* %network, i64 0, i32 3
  %2 = load %struct._Arc*** %inheads7, align 8, !tbaa !3
  %outheads8 = getelementptr inbounds %struct._Network* %network, i64 0, i32 4
  %3 = load %struct._Arc*** %outheads8, align 8, !tbaa !3
  %msglvl9 = getelementptr inbounds %struct._Network* %network, i64 0, i32 6
  %4 = load i32* %msglvl9, align 4, !tbaa !0
  %msgFile10 = getelementptr inbounds %struct._Network* %network, i64 0, i32 7
  %5 = load %struct._IO_FILE** %msgFile10, align 8, !tbaa !3
  %cmp11 = icmp sgt i32 %4, 2
  br i1 %cmp11, label %if.then12, label %while.body.preheader

if.then12:                                        ; preds = %if.end
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str1, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %5)
  %call14 = tail call i32 @fflush(%struct._IO_FILE* %5) #4
  br label %while.body.preheader

while.body.preheader:                             ; preds = %if.then12, %if.end
  %ntrav39 = getelementptr inbounds %struct._Network* %network, i64 0, i32 2
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %if.end52
  %w.0 = phi i32 [ %7, %if.end52 ], [ %sub, %while.body.preheader ]
  %idxprom = sext i32 %w.0 to i64
  %arrayidx = getelementptr inbounds i32* %pred, i64 %idxprom
  %7 = load i32* %arrayidx, align 4, !tbaa !0
  br i1 %cmp11, label %if.then17, label %if.end19

if.then17:                                        ; preds = %while.body
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([20 x i8]* @.str2, i64 0, i64 0), i32 %w.0, i32 %7) #4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %while.body
  %idxprom20 = sext i32 %7 to i64
  %arrayidx21 = getelementptr inbounds %struct._Arc** %2, i64 %idxprom20
  %arc.099 = load %struct._Arc** %arrayidx21, align 8
  %cond100 = icmp eq %struct._Arc* %arc.099, null
  br i1 %cond100, label %if.then33, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end19
  %.pre108 = load i32* %ntrav39, align 4, !tbaa !0
  br label %for.body

for.cond:                                         ; preds = %for.body
  %nextIn = getelementptr inbounds %struct._Arc* %arc.0101, i64 0, i32 5
  %arc.0 = load %struct._Arc** %nextIn, align 8
  %cond = icmp eq %struct._Arc* %arc.0, null
  br i1 %cond, label %if.then33, label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %8 = phi i32 [ %.pre108, %for.body.lr.ph ], [ %inc, %for.cond ]
  %arc.0101 = phi %struct._Arc* [ %arc.099, %for.body.lr.ph ], [ %arc.0, %for.cond ]
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %ntrav39, align 4, !tbaa !0
  %first = getelementptr inbounds %struct._Arc* %arc.0101, i64 0, i32 0
  %9 = load i32* %first, align 4, !tbaa !0
  %cmp23 = icmp eq i32 %9, %w.0
  br i1 %cmp23, label %if.then24, label %for.cond

if.then24:                                        ; preds = %for.body
  %flow = getelementptr inbounds %struct._Arc* %arc.0101, i64 0, i32 3
  %10 = load i32* %flow, align 4, !tbaa !0
  %sub25 = sub nsw i32 %10, %delta
  store i32 %sub25, i32* %flow, align 4, !tbaa !0
  br i1 %cmp11, label %if.then27, label %for.end

if.then27:                                        ; preds = %if.then24
  %call29 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([35 x i8]* @.str3, i64 0, i64 0), i32 %w.0, i32 %7, i32 %sub25) #4
  br label %for.end

for.end:                                          ; preds = %if.then24, %if.then27
  %cmp32 = icmp eq %struct._Arc* %arc.0101, null
  br i1 %cmp32, label %if.then33, label %if.end52

if.then33:                                        ; preds = %if.end19, %for.cond, %for.end
  %arrayidx35 = getelementptr inbounds %struct._Arc** %3, i64 %idxprom20
  %arc.1103 = load %struct._Arc** %arrayidx35, align 8
  %cmp37104 = icmp eq %struct._Arc* %arc.1103, null
  br i1 %cmp37104, label %if.end52, label %for.body38.lr.ph

for.body38.lr.ph:                                 ; preds = %if.then33
  %.pre = load i32* %ntrav39, align 4, !tbaa !0
  br label %for.body38

for.cond36:                                       ; preds = %for.body38
  %nextOut = getelementptr inbounds %struct._Arc* %arc.1105, i64 0, i32 4
  %arc.1 = load %struct._Arc** %nextOut, align 8
  %cmp37 = icmp eq %struct._Arc* %arc.1, null
  br i1 %cmp37, label %if.end52, label %for.body38

for.body38:                                       ; preds = %for.body38.lr.ph, %for.cond36
  %11 = phi i32 [ %.pre, %for.body38.lr.ph ], [ %inc40, %for.cond36 ]
  %arc.1105 = phi %struct._Arc* [ %arc.1103, %for.body38.lr.ph ], [ %arc.1, %for.cond36 ]
  %inc40 = add nsw i32 %11, 1
  store i32 %inc40, i32* %ntrav39, align 4, !tbaa !0
  %second = getelementptr inbounds %struct._Arc* %arc.1105, i64 0, i32 1
  %12 = load i32* %second, align 4, !tbaa !0
  %cmp41 = icmp eq i32 %12, %w.0
  br i1 %cmp41, label %if.then42, label %for.cond36

if.then42:                                        ; preds = %for.body38
  %flow43 = getelementptr inbounds %struct._Arc* %arc.1105, i64 0, i32 3
  %13 = load i32* %flow43, align 4, !tbaa !0
  %add = add nsw i32 %13, %delta
  store i32 %add, i32* %flow43, align 4, !tbaa !0
  br i1 %cmp11, label %if.then45, label %if.end52

if.then45:                                        ; preds = %if.then42
  %call47 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([34 x i8]* @.str4, i64 0, i64 0), i32 %7, i32 %w.0, i32 %add) #4
  br label %if.end52

if.end52:                                         ; preds = %if.then33, %for.cond36, %if.then45, %if.then42, %for.end
  %cmp53 = icmp eq i32 %7, 0
  br i1 %cmp53, label %while.end, label %while.body

while.end:                                        ; preds = %if.end52
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
