; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [50 x i8] c"\0A fatal error in Tree_postOTfirst(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [52 x i8] c"\0A fatal error in Tree_postOTnext(%p,%d)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [49 x i8] c"\0A fatal error in Tree_preOTfirst(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [51 x i8] c"\0A fatal error in Tree_preOTnext(%p,%d)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [46 x i8] c"\0A fatal error in Tree_nleaves(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [45 x i8] c"\0A fatal error in Tree_nroots(%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [48 x i8] c"\0A fatal error in Tree_nchild(%p,%d)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [56 x i8] c"\0A fatal error in Tree_nchild(%p,%d)\0A v = %d, size = %d\0A\00", align 1
@.str8 = private unnamed_addr constant [47 x i8] c"\0A fatal error in Tree_nchildIV(%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [45 x i8] c"\0A fatal error in Tree_height(%p)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [48 x i8] c"\0A fatal error in Tree_maxNchild(%p)\0A bad input\0A\00", align 1
@.str11 = private unnamed_addr constant [45 x i8] c"\0A fatal error in Tree_sizeOf(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_postOTfirst(%struct._Tree* %tree) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %0 = load i32* %n, align 4, !tbaa !0
  %cmp1 = icmp slt i32 %0, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), %struct._Tree* %tree) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %root = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1
  %2 = load i32* %root, align 4, !tbaa !0
  %cmp2 = icmp eq i32 %2, -1
  br i1 %cmp2, label %if.end8, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3
  %3 = load i32** %fch, align 8, !tbaa !3
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %while.cond
  %v.0 = phi i32 [ %4, %while.cond ], [ %2, %while.cond.preheader ]
  %idxprom = sext i32 %v.0 to i64
  %arrayidx = getelementptr inbounds i32* %3, i64 %idxprom
  %4 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp4 = icmp eq i32 %4, -1
  br i1 %cmp4, label %if.end8, label %while.cond

if.end8:                                          ; preds = %while.cond, %if.end
  %v.1 = phi i32 [ -1, %if.end ], [ %v.0, %while.cond ]
  ret i32 %v.1
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_postOTnext(%struct._Tree* %tree, i32 %v) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %0 = load i32* %n, align 4, !tbaa !0
  %notlhs = icmp sgt i32 %0, 0
  %notrhs = icmp sgt i32 %v, -1
  %or.cond.not = and i1 %notrhs, %notlhs
  %cmp6 = icmp sgt i32 %0, %v
  %or.cond35 = and i1 %or.cond.not, %cmp6
  br i1 %or.cond35, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), %struct._Tree* %tree, i32 %v) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %idxprom = sext i32 %v to i64
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4
  %2 = load i32** %sib, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom
  %3 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp7 = icmp eq i32 %3, -1
  br i1 %cmp7, label %if.else, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3
  %4 = load i32** %fch, align 8, !tbaa !3
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %while.cond
  %v.addr.0 = phi i32 [ %5, %while.cond ], [ %3, %while.cond.preheader ]
  %idxprom12 = sext i32 %v.addr.0 to i64
  %arrayidx13 = getelementptr inbounds i32* %4, i64 %idxprom12
  %5 = load i32* %arrayidx13, align 4, !tbaa !0
  %cmp14 = icmp eq i32 %5, -1
  br i1 %cmp14, label %if.end20, label %while.cond

if.else:                                          ; preds = %if.end
  %par = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2
  %6 = load i32** %par, align 8, !tbaa !3
  %arrayidx19 = getelementptr inbounds i32* %6, i64 %idxprom
  %7 = load i32* %arrayidx19, align 4, !tbaa !0
  br label %if.end20

if.end20:                                         ; preds = %while.cond, %if.else
  %v.addr.1 = phi i32 [ %7, %if.else ], [ %v.addr.0, %while.cond ]
  ret i32 %v.addr.1
}

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_preOTfirst(%struct._Tree* %tree) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %0 = load i32* %n, align 4, !tbaa !0
  %cmp1 = icmp slt i32 %0, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0), %struct._Tree* %tree) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %root = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1
  %2 = load i32* %root, align 4, !tbaa !0
  ret i32 %2
}

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_preOTnext(%struct._Tree* %tree, i32 %v) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %0 = load i32* %n, align 4, !tbaa !0
  %notlhs = icmp sgt i32 %0, 0
  %notrhs = icmp sgt i32 %v, -1
  %or.cond.not = and i1 %notrhs, %notlhs
  %cmp6 = icmp sgt i32 %0, %v
  %or.cond41 = and i1 %or.cond.not, %cmp6
  br i1 %or.cond41, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), %struct._Tree* %tree, i32 %v) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %idxprom = sext i32 %v to i64
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3
  %2 = load i32** %fch, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom
  %3 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp7 = icmp eq i32 %3, -1
  br i1 %cmp7, label %while.cond.preheader, label %if.end24

while.cond.preheader:                             ; preds = %if.end
  %par = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4
  %4 = load i32** %sib, align 8, !tbaa !3
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %land.rhs
  %v.addr.0 = phi i32 [ %7, %land.rhs ], [ %v, %while.cond.preheader ]
  %idxprom12 = sext i32 %v.addr.0 to i64
  %arrayidx13 = getelementptr inbounds i32* %4, i64 %idxprom12
  %5 = load i32* %arrayidx13, align 4, !tbaa !0
  %cmp14 = icmp eq i32 %5, -1
  br i1 %cmp14, label %land.rhs, label %if.end24

land.rhs:                                         ; preds = %while.cond
  %6 = load i32** %par, align 8, !tbaa !3
  %arrayidx16 = getelementptr inbounds i32* %6, i64 %idxprom12
  %7 = load i32* %arrayidx16, align 4, !tbaa !0
  %cmp17 = icmp eq i32 %7, -1
  br i1 %cmp17, label %if.end24, label %while.cond

if.end24:                                         ; preds = %while.cond, %land.rhs, %if.end
  %v.addr.1 = phi i32 [ %3, %if.end ], [ -1, %land.rhs ], [ %5, %while.cond ]
  ret i32 %v.addr.1
}

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_nleaves(%struct._Tree* %tree) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %0 = load i32* %n, align 4, !tbaa !0
  %cmp1 = icmp slt i32 %0, 1
  br i1 %cmp1, label %if.then, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %lor.lhs.false
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3
  %1 = load i32** %fch, align 8, !tbaa !3
  br label %for.body

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([46 x i8]* @.str4, i64 0, i64 0), %struct._Tree* %tree) #4
  tail call void @exit(i32 -1) #5
  unreachable

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %nleaf.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc.nleaf.0, %for.body ]
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv
  %3 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp4 = icmp eq i32 %3, -1
  %inc = zext i1 %cmp4 to i32
  %inc.nleaf.0 = add nsw i32 %inc, %nleaf.016
  %indvars.iv.next = add i64 %indvars.iv, 1
  %4 = trunc i64 %indvars.iv.next to i32
  %cmp3 = icmp slt i32 %4, %0
  br i1 %cmp3, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  ret i32 %inc.nleaf.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_nroots(%struct._Tree* %tree) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %0 = load i32* %n, align 4, !tbaa !0
  %cmp1 = icmp slt i32 %0, 1
  br i1 %cmp1, label %if.then, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %lor.lhs.false
  %par = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2
  %1 = load i32** %par, align 8, !tbaa !3
  br label %for.body

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([45 x i8]* @.str5, i64 0, i64 0), %struct._Tree* %tree) #4
  tail call void @exit(i32 -1) #5
  unreachable

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %nroot.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc.nroot.0, %for.body ]
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv
  %3 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp4 = icmp eq i32 %3, -1
  %inc = zext i1 %cmp4 to i32
  %inc.nroot.0 = add nsw i32 %inc, %nroot.016
  %indvars.iv.next = add i64 %indvars.iv, 1
  %4 = trunc i64 %indvars.iv.next to i32
  %cmp3 = icmp slt i32 %4, %0
  br i1 %cmp3, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  ret i32 %inc.nroot.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_nchild(%struct._Tree* %tree, i32 %v) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %0 = load i32* %n, align 4, !tbaa !0
  %cmp1 = icmp slt i32 %0, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([48 x i8]* @.str6, i64 0, i64 0), %struct._Tree* %tree, i32 %v) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %cmp2 = icmp sgt i32 %v, -1
  %cmp5 = icmp sgt i32 %0, %v
  %or.cond = and i1 %cmp2, %cmp5
  br i1 %or.cond, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([56 x i8]* @.str7, i64 0, i64 0), %struct._Tree* %tree, i32 %v, i32 %v, i32 %0) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end9:                                          ; preds = %if.end
  %idxprom = sext i32 %v to i64
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3
  %3 = load i32** %fch, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32* %3, i64 %idxprom
  %w.026 = load i32* %arrayidx, align 4
  %cmp1027 = icmp eq i32 %w.026, -1
  br i1 %cmp1027, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end9
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4
  %4 = load i32** %sib, align 8, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %w.029 = phi i32 [ %w.026, %for.body.lr.ph ], [ %w.0, %for.body ]
  %nchild.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %inc = add nsw i32 %nchild.028, 1
  %idxprom11 = sext i32 %w.029 to i64
  %arrayidx12 = getelementptr inbounds i32* %4, i64 %idxprom11
  %w.0 = load i32* %arrayidx12, align 4
  %cmp10 = icmp eq i32 %w.0, -1
  br i1 %cmp10, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end9
  %nchild.0.lcssa = phi i32 [ 0, %if.end9 ], [ %inc, %for.body ]
  ret i32 %nchild.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @Tree_nchildIV(%struct._Tree* %tree) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %n1 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %0 = load i32* %n1, align 4, !tbaa !0
  %cmp2 = icmp slt i32 %0, 1
  br i1 %cmp2, label %if.then, label %for.body.lr.ph

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([47 x i8]* @.str8, i64 0, i64 0), %struct._Tree* %tree) #4
  tail call void @exit(i32 -1) #5
  unreachable

for.body.lr.ph:                                   ; preds = %lor.lhs.false
  %call3 = tail call %struct._IV* @IV_new() #4
  tail call void @IV_init(%struct._IV* %call3, i32 %0, i32* null) #4
  tail call void @IV_fill(%struct._IV* %call3, i32 0) #4
  %par4 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2
  %2 = load i32** %par4, align 8, !tbaa !3
  %call5 = tail call i32* @IV_entries(%struct._IV* %call3) #4
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds i32* %2, i64 %indvars.iv
  %3 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp7 = icmp eq i32 %3, -1
  br i1 %cmp7, label %for.inc, label %if.then8

if.then8:                                         ; preds = %for.body
  %idxprom9 = sext i32 %3 to i64
  %arrayidx10 = getelementptr inbounds i32* %call5, i64 %idxprom9
  %4 = load i32* %arrayidx10, align 4, !tbaa !0
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %arrayidx10, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then8
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %0
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  ret %struct._IV* %call3
}

; Function Attrs: optsize
declare %struct._IV* @IV_new() #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: optsize
declare void @IV_fill(%struct._IV*, i32) #3

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_height(%struct._Tree* %tree) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %0 = load i32* %n, align 4, !tbaa !0
  %cmp1 = icmp slt i32 %0, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([45 x i8]* @.str9, i64 0, i64 0), %struct._Tree* %tree) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call i32* @IVinit(i32 %0, i32 1) #4
  %call4 = tail call i32 @Tree_postOTfirst(%struct._Tree* %tree) #6
  %cmp595 = icmp eq i32 %call4, -1
  br i1 %cmp595, label %if.end.for.end30_crit_edge, label %for.body.lr.ph

if.end.for.end30_crit_edge:                       ; preds = %if.end
  %sib34.pre = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4
  br label %for.end30

for.body.lr.ph:                                   ; preds = %if.end
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end25
  %v.096 = phi i32 [ %call4, %for.body.lr.ph ], [ %call29, %if.end25 ]
  %idxprom = sext i32 %v.096 to i64
  %2 = load i32** %fch, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom
  %3 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp6 = icmp eq i32 %3, -1
  br i1 %cmp6, label %if.end25, label %if.else

if.else:                                          ; preds = %for.body
  %idxprom8 = sext i32 %3 to i64
  %arrayidx9 = getelementptr inbounds i32* %call3, i64 %idxprom8
  %4 = load i32* %arrayidx9, align 4, !tbaa !0
  %5 = load i32** %sib, align 8, !tbaa !3
  %arrayidx11 = getelementptr inbounds i32* %5, i64 %idxprom8
  %u.090 = load i32* %arrayidx11, align 4
  %cmp1391 = icmp eq i32 %u.090, -1
  br i1 %cmp1391, label %for.end, label %for.body14

for.body14:                                       ; preds = %if.else, %for.body14
  %u.093 = phi i32 [ %u.0, %for.body14 ], [ %u.090, %if.else ]
  %vheight.092 = phi i32 [ %.vheight.0, %for.body14 ], [ %4, %if.else ]
  %idxprom15 = sext i32 %u.093 to i64
  %arrayidx16 = getelementptr inbounds i32* %call3, i64 %idxprom15
  %6 = load i32* %arrayidx16, align 4, !tbaa !0
  %cmp17 = icmp slt i32 %vheight.092, %6
  %.vheight.0 = select i1 %cmp17, i32 %6, i32 %vheight.092
  %arrayidx24 = getelementptr inbounds i32* %5, i64 %idxprom15
  %u.0 = load i32* %arrayidx24, align 4
  %cmp13 = icmp eq i32 %u.0, -1
  br i1 %cmp13, label %for.end, label %for.body14

for.end:                                          ; preds = %for.body14, %if.else
  %vheight.0.lcssa = phi i32 [ %4, %if.else ], [ %.vheight.0, %for.body14 ]
  %inc = add nsw i32 %vheight.0.lcssa, 1
  br label %if.end25

if.end25:                                         ; preds = %for.body, %for.end
  %vheight.2 = phi i32 [ %inc, %for.end ], [ 1, %for.body ]
  %arrayidx27 = getelementptr inbounds i32* %call3, i64 %idxprom
  store i32 %vheight.2, i32* %arrayidx27, align 4, !tbaa !0
  %call29 = tail call i32 @Tree_postOTnext(%struct._Tree* %tree, i32 %v.096) #6
  %cmp5 = icmp eq i32 %call29, -1
  br i1 %cmp5, label %for.end30, label %for.body

for.end30:                                        ; preds = %if.end25, %if.end.for.end30_crit_edge
  %sib34.pre-phi = phi i32** [ %sib34.pre, %if.end.for.end30_crit_edge ], [ %sib, %if.end25 ]
  %root = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1
  %7 = load i32* %root, align 4, !tbaa !0
  %idxprom31 = sext i32 %7 to i64
  %arrayidx32 = getelementptr inbounds i32* %call3, i64 %idxprom31
  %8 = load i32* %arrayidx32, align 4, !tbaa !0
  %9 = load i32** %sib34.pre-phi, align 8, !tbaa !3
  %arrayidx35 = getelementptr inbounds i32* %9, i64 %idxprom31
  %v.186 = load i32* %arrayidx35, align 4
  %cmp3787 = icmp eq i32 %v.186, -1
  br i1 %cmp3787, label %for.end50, label %for.body38

for.body38:                                       ; preds = %for.end30, %for.body38
  %v.189 = phi i32 [ %v.1, %for.body38 ], [ %v.186, %for.end30 ]
  %vheight.388 = phi i32 [ %.vheight.3, %for.body38 ], [ %8, %for.end30 ]
  %idxprom39 = sext i32 %v.189 to i64
  %arrayidx40 = getelementptr inbounds i32* %call3, i64 %idxprom39
  %10 = load i32* %arrayidx40, align 4, !tbaa !0
  %cmp41 = icmp slt i32 %vheight.388, %10
  %.vheight.3 = select i1 %cmp41, i32 %10, i32 %vheight.388
  %arrayidx49 = getelementptr inbounds i32* %9, i64 %idxprom39
  %v.1 = load i32* %arrayidx49, align 4
  %cmp37 = icmp eq i32 %v.1, -1
  br i1 %cmp37, label %for.end50, label %for.body38

for.end50:                                        ; preds = %for.body38, %for.end30
  %vheight.3.lcssa = phi i32 [ %8, %for.end30 ], [ %.vheight.3, %for.body38 ]
  tail call void @IVfree(i32* %call3) #4
  ret i32 %vheight.3.lcssa
}

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_maxNchild(%struct._Tree* %tree) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str10, i64 0, i64 0), %struct._Tree* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %n1 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %1 = load i32* %n1, align 4, !tbaa !0
  %fch2 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3
  %2 = load i32** %fch2, align 8, !tbaa !3
  %sib3 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4
  %3 = load i32** %sib3, align 8, !tbaa !3
  %cmp430 = icmp sgt i32 %1, 0
  br i1 %cmp430, label %for.body, label %for.end15

for.body:                                         ; preds = %if.end, %for.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.end ], [ 0, %if.end ]
  %maxnchild.032 = phi i32 [ %nchild.0.maxnchild.0, %for.end ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds i32* %2, i64 %indvars.iv
  %u.026 = load i32* %arrayidx, align 4
  %cmp627 = icmp eq i32 %u.026, -1
  br i1 %cmp627, label %for.end, label %for.body7

for.body7:                                        ; preds = %for.body, %for.body7
  %u.029 = phi i32 [ %u.0, %for.body7 ], [ %u.026, %for.body ]
  %nchild.028 = phi i32 [ %inc, %for.body7 ], [ 0, %for.body ]
  %inc = add nsw i32 %nchild.028, 1
  %idxprom8 = sext i32 %u.029 to i64
  %arrayidx9 = getelementptr inbounds i32* %3, i64 %idxprom8
  %u.0 = load i32* %arrayidx9, align 4
  %cmp6 = icmp eq i32 %u.0, -1
  br i1 %cmp6, label %for.end, label %for.body7

for.end:                                          ; preds = %for.body7, %for.body
  %nchild.0.lcssa = phi i32 [ 0, %for.body ], [ %inc, %for.body7 ]
  %cmp10 = icmp slt i32 %maxnchild.032, %nchild.0.lcssa
  %nchild.0.maxnchild.0 = select i1 %cmp10, i32 %nchild.0.lcssa, i32 %maxnchild.032
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %1
  br i1 %exitcond, label %for.end15, label %for.body

for.end15:                                        ; preds = %for.end, %if.end
  %maxnchild.0.lcssa = phi i32 [ 0, %if.end ], [ %nchild.0.maxnchild.0, %for.end ]
  ret i32 %maxnchild.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_sizeOf(%struct._Tree* %tree) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str11, i64 0, i64 0), %struct._Tree* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %1 = load i32* %n, align 4, !tbaa !0
  %mul1 = mul i32 %1, 12
  %add = add i32 %mul1, 32
  ret i32 %add
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
