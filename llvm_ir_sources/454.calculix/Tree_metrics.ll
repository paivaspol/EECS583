; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IV = type { i32, i32, i32, i32* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [59 x i8] c"\0A fatal error in Tree_setSubtreeImetric(%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [57 x i8] c"\0A fatal error in Tree_setDepthImetric(%p,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [57 x i8] c"\0A fatal error in Tree_setDepthDmetric(%p,%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [58 x i8] c"\0A fatal error in Tree_setHeightImetric(%p,%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [58 x i8] c"\0A fatal error in Tree_setHeightDmetric(%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @Tree_setSubtreeImetric(%struct._Tree* %tree, %struct._IV* %vmetricIV) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %0 = load i32* %n, align 4, !tbaa !0
  %cmp1 = icmp slt i32 %0, 1
  %cmp3 = icmp eq %struct._IV* %vmetricIV, null
  %or.cond = or i1 %cmp1, %cmp3
  br i1 %or.cond, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call = tail call i32 @IV_size(%struct._IV* %vmetricIV) #4
  %cmp6 = icmp eq i32 %0, %call
  br i1 %cmp6, label %lor.lhs.false7, label %if.then

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %call8 = tail call i32* @IV_entries(%struct._IV* %vmetricIV) #4
  %cmp9 = icmp eq i32* %call8, null
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false7, %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0), %struct._Tree* %tree, %struct._IV* %vmetricIV) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false7
  %call11 = tail call %struct._IV* @IV_new() #4
  %2 = load i32* %n, align 4, !tbaa !0
  tail call void @IV_init(%struct._IV* %call11, i32 %2, i32* null) #4
  %call13 = tail call i32* @IV_entries(%struct._IV* %call11) #4
  %call14 = tail call i32 @Tree_postOTfirst(%struct._Tree* %tree) #4
  %cmp1557 = icmp eq i32 %call14, -1
  br i1 %cmp1557, label %for.end31, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc29
  %v.058 = phi i32 [ %call14, %for.body.lr.ph ], [ %call30, %for.inc29 ]
  %idxprom = sext i32 %v.058 to i64
  %arrayidx = getelementptr inbounds i32* %call8, i64 %idxprom
  %3 = load i32* %arrayidx, align 4, !tbaa !0
  %arrayidx17 = getelementptr inbounds i32* %call13, i64 %idxprom
  store i32 %3, i32* %arrayidx17, align 4, !tbaa !0
  %4 = load i32** %fch, align 8, !tbaa !3
  %arrayidx19 = getelementptr inbounds i32* %4, i64 %idxprom
  %u.054 = load i32* %arrayidx19, align 4
  %cmp2155 = icmp eq i32 %u.054, -1
  br i1 %cmp2155, label %for.inc29, label %for.body22.lr.ph

for.body22.lr.ph:                                 ; preds = %for.body
  %.pre = load i32** %sib, align 8, !tbaa !3
  br label %for.body22

for.body22:                                       ; preds = %for.body22.lr.ph, %for.body22
  %5 = phi i32 [ %3, %for.body22.lr.ph ], [ %add, %for.body22 ]
  %u.056 = phi i32 [ %u.054, %for.body22.lr.ph ], [ %u.0, %for.body22 ]
  %idxprom23 = sext i32 %u.056 to i64
  %arrayidx24 = getelementptr inbounds i32* %call13, i64 %idxprom23
  %6 = load i32* %arrayidx24, align 4, !tbaa !0
  %add = add nsw i32 %5, %6
  store i32 %add, i32* %arrayidx17, align 4, !tbaa !0
  %arrayidx28 = getelementptr inbounds i32* %.pre, i64 %idxprom23
  %u.0 = load i32* %arrayidx28, align 4
  %cmp21 = icmp eq i32 %u.0, -1
  br i1 %cmp21, label %for.inc29, label %for.body22

for.inc29:                                        ; preds = %for.body22, %for.body
  %call30 = tail call i32 @Tree_postOTnext(%struct._Tree* %tree, i32 %v.058) #4
  %cmp15 = icmp eq i32 %call30, -1
  br i1 %cmp15, label %for.end31, label %for.body

for.end31:                                        ; preds = %for.inc29, %if.end
  ret %struct._IV* %call11
}

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #1

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare %struct._IV* @IV_new() #1

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #1

; Function Attrs: optsize
declare i32 @Tree_postOTfirst(%struct._Tree*) #1

; Function Attrs: optsize
declare i32 @Tree_postOTnext(%struct._Tree*, i32) #1

; Function Attrs: nounwind optsize uwtable
define %struct._DV* @Tree_setSubtreeDmetric(%struct._Tree* %tree, %struct._DV* %vmetricDV) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %0 = load i32* %n, align 4, !tbaa !0
  %cmp1 = icmp slt i32 %0, 1
  %cmp3 = icmp eq %struct._DV* %vmetricDV, null
  %or.cond = or i1 %cmp1, %cmp3
  br i1 %or.cond, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call = tail call i32 @DV_size(%struct._DV* %vmetricDV) #4
  %cmp6 = icmp eq i32 %0, %call
  br i1 %cmp6, label %lor.lhs.false7, label %if.then

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %call8 = tail call double* @DV_entries(%struct._DV* %vmetricDV) #4
  %cmp9 = icmp eq double* %call8, null
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false7, %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0), %struct._Tree* %tree, %struct._DV* %vmetricDV) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false7
  %call11 = tail call %struct._DV* @DV_new() #4
  %2 = load i32* %n, align 4, !tbaa !0
  tail call void @DV_init(%struct._DV* %call11, i32 %2, double* null) #4
  %call13 = tail call double* @DV_entries(%struct._DV* %call11) #4
  %call14 = tail call i32 @Tree_postOTfirst(%struct._Tree* %tree) #4
  %cmp1557 = icmp eq i32 %call14, -1
  br i1 %cmp1557, label %for.end31, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc29
  %v.058 = phi i32 [ %call14, %for.body.lr.ph ], [ %call30, %for.inc29 ]
  %idxprom = sext i32 %v.058 to i64
  %arrayidx = getelementptr inbounds double* %call8, i64 %idxprom
  %3 = load double* %arrayidx, align 8, !tbaa !4
  %arrayidx17 = getelementptr inbounds double* %call13, i64 %idxprom
  store double %3, double* %arrayidx17, align 8, !tbaa !4
  %4 = load i32** %fch, align 8, !tbaa !3
  %arrayidx19 = getelementptr inbounds i32* %4, i64 %idxprom
  %u.054 = load i32* %arrayidx19, align 4
  %cmp2155 = icmp eq i32 %u.054, -1
  br i1 %cmp2155, label %for.inc29, label %for.body22.lr.ph

for.body22.lr.ph:                                 ; preds = %for.body
  %.pre = load i32** %sib, align 8, !tbaa !3
  br label %for.body22

for.body22:                                       ; preds = %for.body22.lr.ph, %for.body22
  %5 = phi double [ %3, %for.body22.lr.ph ], [ %add, %for.body22 ]
  %u.056 = phi i32 [ %u.054, %for.body22.lr.ph ], [ %u.0, %for.body22 ]
  %idxprom23 = sext i32 %u.056 to i64
  %arrayidx24 = getelementptr inbounds double* %call13, i64 %idxprom23
  %6 = load double* %arrayidx24, align 8, !tbaa !4
  %add = fadd double %6, %5
  store double %add, double* %arrayidx17, align 8, !tbaa !4
  %arrayidx28 = getelementptr inbounds i32* %.pre, i64 %idxprom23
  %u.0 = load i32* %arrayidx28, align 4
  %cmp21 = icmp eq i32 %u.0, -1
  br i1 %cmp21, label %for.inc29, label %for.body22

for.inc29:                                        ; preds = %for.body22, %for.body
  %call30 = tail call i32 @Tree_postOTnext(%struct._Tree* %tree, i32 %v.058) #4
  %cmp15 = icmp eq i32 %call30, -1
  br i1 %cmp15, label %for.end31, label %for.body

for.end31:                                        ; preds = %for.inc29, %if.end
  ret %struct._DV* %call11
}

; Function Attrs: optsize
declare i32 @DV_size(%struct._DV*) #1

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #1

; Function Attrs: optsize
declare %struct._DV* @DV_new() #1

; Function Attrs: optsize
declare void @DV_init(%struct._DV*, i32, double*) #1

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @Tree_setDepthImetric(%struct._Tree* %tree, %struct._IV* %vmetricIV) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %0 = load i32* %n, align 4, !tbaa !0
  %cmp1 = icmp slt i32 %0, 1
  %cmp3 = icmp eq %struct._IV* %vmetricIV, null
  %or.cond = or i1 %cmp1, %cmp3
  br i1 %or.cond, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call = tail call i32 @IV_size(%struct._IV* %vmetricIV) #4
  %cmp6 = icmp eq i32 %0, %call
  br i1 %cmp6, label %lor.lhs.false7, label %if.then

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %call8 = tail call i32* @IV_entries(%struct._IV* %vmetricIV) #4
  %cmp9 = icmp eq i32* %call8, null
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false7, %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), %struct._Tree* %tree, %struct._IV* %vmetricIV) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false7
  %call11 = tail call %struct._IV* @IV_new() #4
  %2 = load i32* %n, align 4, !tbaa !0
  tail call void @IV_init(%struct._IV* %call11, i32 %2, i32* null) #4
  %call13 = tail call i32* @IV_entries(%struct._IV* %call11) #4
  %call14 = tail call i32 @Tree_preOTfirst(%struct._Tree* %tree) #4
  %cmp1547 = icmp eq i32 %call14, -1
  br i1 %cmp1547, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %par = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %u.048 = phi i32 [ %call14, %for.body.lr.ph ], [ %call27, %for.inc ]
  %idxprom = sext i32 %u.048 to i64
  %arrayidx = getelementptr inbounds i32* %call8, i64 %idxprom
  %3 = load i32* %arrayidx, align 4, !tbaa !0
  %arrayidx17 = getelementptr inbounds i32* %call13, i64 %idxprom
  store i32 %3, i32* %arrayidx17, align 4, !tbaa !0
  %4 = load i32** %par, align 8, !tbaa !3
  %arrayidx19 = getelementptr inbounds i32* %4, i64 %idxprom
  %5 = load i32* %arrayidx19, align 4, !tbaa !0
  %cmp20 = icmp eq i32 %5, -1
  br i1 %cmp20, label %for.inc, label %if.then21

if.then21:                                        ; preds = %for.body
  %idxprom22 = sext i32 %5 to i64
  %arrayidx23 = getelementptr inbounds i32* %call13, i64 %idxprom22
  %6 = load i32* %arrayidx23, align 4, !tbaa !0
  %add = add nsw i32 %6, %3
  store i32 %add, i32* %arrayidx17, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then21
  %call27 = tail call i32 @Tree_preOTnext(%struct._Tree* %tree, i32 %u.048) #4
  %cmp15 = icmp eq i32 %call27, -1
  br i1 %cmp15, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end
  ret %struct._IV* %call11
}

; Function Attrs: optsize
declare i32 @Tree_preOTfirst(%struct._Tree*) #1

; Function Attrs: optsize
declare i32 @Tree_preOTnext(%struct._Tree*, i32) #1

; Function Attrs: nounwind optsize uwtable
define %struct._DV* @Tree_setDepthDmetric(%struct._Tree* %tree, %struct._DV* %vmetricDV) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %0 = load i32* %n, align 4, !tbaa !0
  %cmp1 = icmp slt i32 %0, 1
  %cmp3 = icmp eq %struct._DV* %vmetricDV, null
  %or.cond = or i1 %cmp1, %cmp3
  br i1 %or.cond, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call = tail call i32 @DV_size(%struct._DV* %vmetricDV) #4
  %cmp6 = icmp eq i32 %0, %call
  br i1 %cmp6, label %lor.lhs.false7, label %if.then

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %call8 = tail call double* @DV_entries(%struct._DV* %vmetricDV) #4
  %cmp9 = icmp eq double* %call8, null
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false7, %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([57 x i8]* @.str2, i64 0, i64 0), %struct._Tree* %tree, %struct._DV* %vmetricDV) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false7
  %call11 = tail call %struct._DV* @DV_new() #4
  %2 = load i32* %n, align 4, !tbaa !0
  tail call void @DV_init(%struct._DV* %call11, i32 %2, double* null) #4
  %call13 = tail call double* @DV_entries(%struct._DV* %call11) #4
  %call14 = tail call i32 @Tree_preOTfirst(%struct._Tree* %tree) #4
  %cmp1547 = icmp eq i32 %call14, -1
  br i1 %cmp1547, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %par = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %u.048 = phi i32 [ %call14, %for.body.lr.ph ], [ %call27, %for.inc ]
  %idxprom = sext i32 %u.048 to i64
  %arrayidx = getelementptr inbounds double* %call8, i64 %idxprom
  %3 = load double* %arrayidx, align 8, !tbaa !4
  %arrayidx17 = getelementptr inbounds double* %call13, i64 %idxprom
  store double %3, double* %arrayidx17, align 8, !tbaa !4
  %4 = load i32** %par, align 8, !tbaa !3
  %arrayidx19 = getelementptr inbounds i32* %4, i64 %idxprom
  %5 = load i32* %arrayidx19, align 4, !tbaa !0
  %cmp20 = icmp eq i32 %5, -1
  br i1 %cmp20, label %for.inc, label %if.then21

if.then21:                                        ; preds = %for.body
  %idxprom22 = sext i32 %5 to i64
  %arrayidx23 = getelementptr inbounds double* %call13, i64 %idxprom22
  %6 = load double* %arrayidx23, align 8, !tbaa !4
  %add = fadd double %3, %6
  store double %add, double* %arrayidx17, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then21
  %call27 = tail call i32 @Tree_preOTnext(%struct._Tree* %tree, i32 %u.048) #4
  %cmp15 = icmp eq i32 %call27, -1
  br i1 %cmp15, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end
  ret %struct._DV* %call11
}

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @Tree_setHeightImetric(%struct._Tree* %tree, %struct._IV* %vmetricIV) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  br i1 %cmp, label %if.then.thread, label %lor.lhs.false

if.then.thread:                                   ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call1069 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str3, i64 0, i64 0), %struct._Tree* null, %struct._IV* %vmetricIV) #4
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %1 = load i32* %n, align 4, !tbaa !0
  %cmp1 = icmp slt i32 %1, 1
  %cmp3 = icmp eq %struct._IV* %vmetricIV, null
  %or.cond = or i1 %cmp1, %cmp3
  br i1 %or.cond, label %if.then.thread70, label %lor.lhs.false4

if.then.thread70:                                 ; preds = %lor.lhs.false
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call1071 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([58 x i8]* @.str3, i64 0, i64 0), %struct._Tree* %tree, %struct._IV* %vmetricIV) #4
  br label %if.then12

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call = tail call i32 @IV_size(%struct._IV* %vmetricIV) #4
  %cmp6 = icmp eq i32 %1, %call
  br i1 %cmp6, label %lor.lhs.false7, label %if.then

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %call8 = tail call i32* @IV_entries(%struct._IV* %vmetricIV) #4
  %cmp9 = icmp eq i32* %call8, null
  br i1 %cmp9, label %if.then, label %if.end18

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false7
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([58 x i8]* @.str3, i64 0, i64 0), %struct._Tree* %tree, %struct._IV* %vmetricIV) #4
  br label %if.then12

if.then12:                                        ; preds = %if.then, %if.then.thread70
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call13 = tail call i32 @Tree_writeForHumanEye(%struct._Tree* %tree, %struct._IO_FILE* %4) #4
  br label %if.end

if.end:                                           ; preds = %if.then.thread, %if.then12
  %cmp14 = icmp eq %struct._IV* %vmetricIV, null
  br i1 %cmp14, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call16 = tail call i32 @IV_writeForHumanEye(%struct._IV* %vmetricIV, %struct._IO_FILE* %5) #4
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then15
  tail call void @exit(i32 -1) #5
  unreachable

if.end18:                                         ; preds = %lor.lhs.false7
  %call19 = tail call %struct._IV* @IV_new() #4
  %6 = load i32* %n, align 4, !tbaa !0
  tail call void @IV_init(%struct._IV* %call19, i32 %6, i32* null) #4
  %call21 = tail call i32* @IV_entries(%struct._IV* %call19) #4
  %call22 = tail call i32 @Tree_postOTfirst(%struct._Tree* %tree) #4
  %cmp2376 = icmp eq i32 %call22, -1
  br i1 %cmp2376, label %for.end42, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end18
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %v.077 = phi i32 [ %call22, %for.body.lr.ph ], [ %call41, %for.end ]
  %idxprom = sext i32 %v.077 to i64
  %7 = load i32** %fch, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32* %7, i64 %idxprom
  %u.072 = load i32* %arrayidx, align 4
  %cmp2573 = icmp eq i32 %u.072, -1
  br i1 %cmp2573, label %for.end, label %for.body26.lr.ph

for.body26.lr.ph:                                 ; preds = %for.body
  %8 = load i32** %sib, align 8, !tbaa !3
  br label %for.body26

for.body26:                                       ; preds = %for.body26.lr.ph, %for.body26
  %u.075 = phi i32 [ %u.072, %for.body26.lr.ph ], [ %u.0, %for.body26 ]
  %val.074 = phi i32 [ 0, %for.body26.lr.ph ], [ %.val.0, %for.body26 ]
  %idxprom27 = sext i32 %u.075 to i64
  %arrayidx28 = getelementptr inbounds i32* %call21, i64 %idxprom27
  %9 = load i32* %arrayidx28, align 4, !tbaa !0
  %cmp29 = icmp slt i32 %val.074, %9
  %.val.0 = select i1 %cmp29, i32 %9, i32 %val.074
  %arrayidx35 = getelementptr inbounds i32* %8, i64 %idxprom27
  %u.0 = load i32* %arrayidx35, align 4
  %cmp25 = icmp eq i32 %u.0, -1
  br i1 %cmp25, label %for.end, label %for.body26

for.end:                                          ; preds = %for.body26, %for.body
  %val.0.lcssa = phi i32 [ 0, %for.body ], [ %.val.0, %for.body26 ]
  %arrayidx37 = getelementptr inbounds i32* %call8, i64 %idxprom
  %10 = load i32* %arrayidx37, align 4, !tbaa !0
  %add = add nsw i32 %10, %val.0.lcssa
  %arrayidx39 = getelementptr inbounds i32* %call21, i64 %idxprom
  store i32 %add, i32* %arrayidx39, align 4, !tbaa !0
  %call41 = tail call i32 @Tree_postOTnext(%struct._Tree* %tree, i32 %v.077) #4
  %cmp23 = icmp eq i32 %call41, -1
  br i1 %cmp23, label %for.end42, label %for.body

for.end42:                                        ; preds = %for.end, %if.end18
  ret %struct._IV* %call19
}

; Function Attrs: optsize
declare i32 @Tree_writeForHumanEye(%struct._Tree*, %struct._IO_FILE*) #1

; Function Attrs: optsize
declare i32 @IV_writeForHumanEye(%struct._IV*, %struct._IO_FILE*) #1

; Function Attrs: nounwind optsize uwtable
define %struct._DV* @Tree_setHeightDmetric(%struct._Tree* %tree, %struct._DV* %vmetricDV) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %0 = load i32* %n, align 4, !tbaa !0
  %cmp1 = icmp slt i32 %0, 1
  %cmp3 = icmp eq %struct._DV* %vmetricDV, null
  %or.cond = or i1 %cmp1, %cmp3
  br i1 %or.cond, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call = tail call i32 @DV_size(%struct._DV* %vmetricDV) #4
  %cmp6 = icmp eq i32 %0, %call
  br i1 %cmp6, label %lor.lhs.false7, label %if.then

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %call8 = tail call double* @DV_entries(%struct._DV* %vmetricDV) #4
  %cmp9 = icmp eq double* %call8, null
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false7, %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([58 x i8]* @.str4, i64 0, i64 0), %struct._Tree* %tree, %struct._DV* %vmetricDV) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false7
  %call11 = tail call %struct._DV* @DV_new() #4
  %2 = load i32* %n, align 4, !tbaa !0
  tail call void @DV_init(%struct._DV* %call11, i32 %2, double* null) #4
  %call13 = tail call double* @DV_entries(%struct._DV* %call11) #4
  %call14 = tail call i32 @Tree_postOTfirst(%struct._Tree* %tree) #4
  %cmp1565 = icmp eq i32 %call14, -1
  br i1 %cmp1565, label %for.end37, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %v.066 = phi i32 [ %call14, %for.body.lr.ph ], [ %call36, %for.end ]
  %idxprom = sext i32 %v.066 to i64
  %3 = load i32** %fch, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32* %3, i64 %idxprom
  %u.060 = load i32* %arrayidx, align 4
  %cmp1761 = icmp eq i32 %u.060, -1
  br i1 %cmp1761, label %for.end, label %for.body18.lr.ph

for.body18.lr.ph:                                 ; preds = %for.body
  %4 = load i32** %sib, align 8, !tbaa !3
  br label %for.body18

for.body18:                                       ; preds = %for.body18.lr.ph, %for.inc
  %conv64 = phi double [ 0.000000e+00, %for.body18.lr.ph ], [ %conv, %for.inc ]
  %u.063 = phi i32 [ %u.060, %for.body18.lr.ph ], [ %u.0, %for.inc ]
  %val.062 = phi i32 [ 0, %for.body18.lr.ph ], [ %val.1, %for.inc ]
  %idxprom19 = sext i32 %u.063 to i64
  %arrayidx20 = getelementptr inbounds double* %call13, i64 %idxprom19
  %5 = load double* %arrayidx20, align 8, !tbaa !4
  %cmp21 = fcmp olt double %conv64, %5
  br i1 %cmp21, label %if.then23, label %for.inc

if.then23:                                        ; preds = %for.body18
  %conv26 = fptosi double %5 to i32
  br label %for.inc

for.inc:                                          ; preds = %for.body18, %if.then23
  %val.1 = phi i32 [ %conv26, %if.then23 ], [ %val.062, %for.body18 ]
  %arrayidx29 = getelementptr inbounds i32* %4, i64 %idxprom19
  %u.0 = load i32* %arrayidx29, align 4
  %cmp17 = icmp eq i32 %u.0, -1
  %conv = sitofp i32 %val.1 to double
  br i1 %cmp17, label %for.end, label %for.body18

for.end:                                          ; preds = %for.inc, %for.body
  %conv.lcssa = phi double [ 0.000000e+00, %for.body ], [ %conv, %for.inc ]
  %arrayidx32 = getelementptr inbounds double* %call8, i64 %idxprom
  %6 = load double* %arrayidx32, align 8, !tbaa !4
  %add = fadd double %conv.lcssa, %6
  %arrayidx34 = getelementptr inbounds double* %call13, i64 %idxprom
  store double %add, double* %arrayidx34, align 8, !tbaa !4
  %call36 = tail call i32 @Tree_postOTnext(%struct._Tree* %tree, i32 %v.066) #4
  %cmp15 = icmp eq i32 %call36, -1
  br i1 %cmp15, label %for.end37, label %for.body

for.end37:                                        ; preds = %for.end, %if.end
  ret %struct._DV* %call11
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
