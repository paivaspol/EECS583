; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [47 x i8] c"\0A fatal error in Tree_init1(%p,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [50 x i8] c"\0A fatal error in Tree_init2(%p,%d,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [56 x i8] c"\0A fatal error in Tree_init3(%p,%d,%p,%p,%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [52 x i8] c"\0A fatal error in Tree_setFchSibRoot(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [46 x i8] c"\0A fatal error in Tree_setRoot(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Tree_init1(%struct._Tree* %tree, i32 %size) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  %cmp1 = icmp slt i32 %size, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str, i64 0, i64 0), %struct._Tree* %tree, i32 %size) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  tail call void @Tree_clearData(%struct._Tree* %tree) #4
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  store i32 %size, i32* %n, align 4, !tbaa !3
  %cmp2 = icmp sgt i32 %size, 0
  br i1 %cmp2, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32* @IVinit(i32 %size, i32 -1) #4
  %par = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2
  store i32* %call4, i32** %par, align 8, !tbaa !0
  %call5 = tail call i32* @IVinit(i32 %size, i32 -1) #4
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3
  store i32* %call5, i32** %fch, align 8, !tbaa !0
  %call6 = tail call i32* @IVinit(i32 %size, i32 -1) #4
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4
  store i32* %call6, i32** %sib, align 8, !tbaa !0
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @Tree_clearData(%struct._Tree*) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @Tree_init2(%struct._Tree* %tree, i32 %size, i32* %par) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  %cmp1 = icmp slt i32 %size, 1
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %par, null
  %or.cond14 = or i1 %or.cond, %cmp3
  br i1 %or.cond14, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str1, i64 0, i64 0), %struct._Tree* %tree, i32 %size, i32* %par) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  tail call void @Tree_init1(%struct._Tree* %tree, i32 %size) #6
  %par4 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2
  %1 = load i32** %par4, align 8, !tbaa !0
  tail call void @IVcopy(i32 %size, i32* %1, i32* %par) #4
  tail call void @Tree_setFchSibRoot(%struct._Tree* %tree) #6
  ret void
}

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @Tree_setFchSibRoot(%struct._Tree* %tree) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), %struct._Tree* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %n1 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %1 = load i32* %n1, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %1, 1
  br i1 %cmp2, label %return, label %for.body.lr.ph.lr.ph

for.body.lr.ph.lr.ph:                             ; preds = %if.end
  %par5 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2
  %2 = load i32** %par5, align 8, !tbaa !0
  %fch6 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3
  %3 = load i32** %fch6, align 8, !tbaa !0
  %sib7 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4
  %4 = load i32** %sib7, align 8, !tbaa !0
  tail call void @IVfill(i32 %1, i32* %3, i32 -1) #4
  %5 = load i32** %sib7, align 8, !tbaa !0
  tail call void @IVfill(i32 %1, i32* %5, i32 -1) #4
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.body.lr.ph.lr.ph, %if.else
  %u.04452.in = phi i32 [ %1, %for.body.lr.ph.lr.ph ], [ %u.046, %if.else ]
  %root.0.ph51 = phi i32 [ -1, %for.body.lr.ph.lr.ph ], [ %u.046, %if.else ]
  %6 = sext i32 %u.04452.in to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.then12
  %indvars.iv = phi i64 [ %6, %for.body.lr.ph ], [ %indvars.iv.next, %if.then12 ]
  %u.046.in = phi i32 [ %u.04452.in, %for.body.lr.ph ], [ %u.046, %if.then12 ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %u.046 = add nsw i32 %u.046.in, -1
  %arrayidx = getelementptr inbounds i32* %2, i64 %indvars.iv.next
  %7 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp11 = icmp eq i32 %7, -1
  br i1 %cmp11, label %if.else, label %if.then12

if.then12:                                        ; preds = %for.body
  %idxprom13 = sext i32 %7 to i64
  %arrayidx14 = getelementptr inbounds i32* %3, i64 %idxprom13
  %8 = load i32* %arrayidx14, align 4, !tbaa !3
  %arrayidx16 = getelementptr inbounds i32* %4, i64 %indvars.iv.next
  store i32 %8, i32* %arrayidx16, align 4, !tbaa !3
  %9 = trunc i64 %indvars.iv.next to i32
  store i32 %9, i32* %arrayidx14, align 4, !tbaa !3
  %cmp10 = icmp sgt i32 %9, 0
  br i1 %cmp10, label %for.body, label %for.end

if.else:                                          ; preds = %for.body
  %arrayidx20 = getelementptr inbounds i32* %4, i64 %indvars.iv.next
  store i32 %root.0.ph51, i32* %arrayidx20, align 4, !tbaa !3
  %cmp1045 = icmp sgt i32 %u.046, 0
  br i1 %cmp1045, label %for.body.lr.ph, label %for.end

for.end:                                          ; preds = %if.else, %if.then12
  %root.0.ph48 = phi i32 [ %root.0.ph51, %if.then12 ], [ %u.046, %if.else ]
  %root22 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1
  store i32 %root.0.ph48, i32* %root22, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.end, %for.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Tree_init3(%struct._Tree* %tree, i32 %size, i32* %par, i32* %fch, i32* %sib) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  %cmp1 = icmp slt i32 %size, 1
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %par, null
  %or.cond28 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32* %fch, null
  %or.cond29 = or i1 %or.cond28, %cmp5
  %cmp7 = icmp eq i32* %sib, null
  %or.cond30 = or i1 %or.cond29, %cmp7
  br i1 %or.cond30, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), %struct._Tree* %tree, i32 %size, i32* %par, i32* %fch, i32* %sib) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  tail call void @Tree_init1(%struct._Tree* %tree, i32 %size) #6
  %par8 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2
  %1 = load i32** %par8, align 8, !tbaa !0
  tail call void @IVcopy(i32 %size, i32* %1, i32* %par) #4
  %fch9 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3
  %2 = load i32** %fch9, align 8, !tbaa !0
  tail call void @IVcopy(i32 %size, i32* %2, i32* %fch) #4
  %sib10 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4
  %3 = load i32** %sib10, align 8, !tbaa !0
  tail call void @IVcopy(i32 %size, i32* %3, i32* %sib) #4
  tail call void @Tree_setRoot(%struct._Tree* %tree) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Tree_setRoot(%struct._Tree* %tree) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %n1 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %0 = load i32* %n1, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %0, 1
  br i1 %cmp2, label %if.then, label %for.body.lr.ph

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([46 x i8]* @.str4, i64 0, i64 0), %struct._Tree* %tree) #4
  tail call void @exit(i32 -1) #5
  unreachable

for.body.lr.ph:                                   ; preds = %lor.lhs.false
  %par4 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2
  %2 = load i32** %par4, align 8, !tbaa !0
  %sib5 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4
  %3 = load i32** %sib5, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %root.026 = phi i32 [ -1, %for.body.lr.ph ], [ %root.1, %for.inc ]
  %arrayidx = getelementptr inbounds i32* %2, i64 %indvars.iv
  %4 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp7 = icmp eq i32 %4, -1
  br i1 %cmp7, label %if.then8, label %for.inc

if.then8:                                         ; preds = %for.body
  %arrayidx10 = getelementptr inbounds i32* %3, i64 %indvars.iv
  store i32 %root.026, i32* %arrayidx10, align 4, !tbaa !3
  %5 = trunc i64 %indvars.iv to i32
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then8
  %root.1 = phi i32 [ %5, %if.then8 ], [ %root.026, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %0
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %root12 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1
  store i32 %root.1, i32* %root12, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare void @IVfill(i32, i32*, i32) #3

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
