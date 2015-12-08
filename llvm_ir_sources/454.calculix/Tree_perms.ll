; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_perms.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [58 x i8] c"\0A fatal error in Tree_fillNewToOldPerm(%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [58 x i8] c"\0A fatal error in Tree_fillOldToNewPerm(%p,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [58 x i8] c"\0A fatal error in Tree_fillBothPerms(%p,%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Tree_fillNewToOldPerm(%struct._Tree* %tree, i32* %newToOld) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %0 = load i32* %n, align 4, !tbaa !0
  %cmp1 = icmp slt i32 %0, 1
  %cmp3 = icmp eq i32* %newToOld, null
  %or.cond = or i1 %cmp1, %cmp3
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([58 x i8]* @.str, i64 0, i64 0), %struct._Tree* %tree, i32* %newToOld) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %call4 = tail call i32 @Tree_postOTfirst(%struct._Tree* %tree) #4
  %cmp515 = icmp eq i32 %call4, -1
  br i1 %cmp515, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end ]
  %v.017 = phi i32 [ %call6, %for.body ], [ %call4, %if.end ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds i32* %newToOld, i64 %indvars.iv
  store i32 %v.017, i32* %arrayidx, align 4, !tbaa !0
  %call6 = tail call i32 @Tree_postOTnext(%struct._Tree* %tree, i32 %v.017) #4
  %cmp5 = icmp eq i32 %call6, -1
  br i1 %cmp5, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32 @Tree_postOTfirst(%struct._Tree*) #3

; Function Attrs: optsize
declare i32 @Tree_postOTnext(%struct._Tree*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @Tree_fillOldToNewPerm(%struct._Tree* %tree, i32* %oldToNew) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %0 = load i32* %n, align 4, !tbaa !0
  %cmp1 = icmp slt i32 %0, 1
  %cmp3 = icmp eq i32* %oldToNew, null
  %or.cond = or i1 %cmp1, %cmp3
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([58 x i8]* @.str1, i64 0, i64 0), %struct._Tree* %tree, i32* %oldToNew) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %call4 = tail call i32 @Tree_postOTfirst(%struct._Tree* %tree) #4
  %cmp515 = icmp eq i32 %call4, -1
  br i1 %cmp515, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %v.017 = phi i32 [ %call6, %for.body ], [ %call4, %if.end ]
  %i.016 = phi i32 [ %inc, %for.body ], [ 0, %if.end ]
  %inc = add nsw i32 %i.016, 1
  %idxprom = sext i32 %v.017 to i64
  %arrayidx = getelementptr inbounds i32* %oldToNew, i64 %idxprom
  store i32 %i.016, i32* %arrayidx, align 4, !tbaa !0
  %call6 = tail call i32 @Tree_postOTnext(%struct._Tree* %tree, i32 %v.017) #4
  %cmp5 = icmp eq i32 %call6, -1
  br i1 %cmp5, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Tree_fillBothPerms(%struct._Tree* %tree, i32* %newToOld, i32* %oldToNew) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %0 = load i32* %n, align 4, !tbaa !0
  %cmp1 = icmp slt i32 %0, 1
  %cmp3 = icmp eq i32* %newToOld, null
  %or.cond = or i1 %cmp1, %cmp3
  %cmp5 = icmp eq i32* %oldToNew, null
  %or.cond23 = or i1 %or.cond, %cmp5
  br i1 %or.cond23, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([58 x i8]* @.str2, i64 0, i64 0), %struct._Tree* %tree, i32* %newToOld, i32* %oldToNew) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %call6 = tail call i32 @Tree_postOTfirst(%struct._Tree* %tree) #4
  %cmp724 = icmp eq i32 %call6, -1
  br i1 %cmp724, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end ]
  %v.026 = phi i32 [ %call10, %for.body ], [ %call6, %if.end ]
  %arrayidx = getelementptr inbounds i32* %newToOld, i64 %indvars.iv
  store i32 %v.026, i32* %arrayidx, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %idxprom8 = sext i32 %v.026 to i64
  %arrayidx9 = getelementptr inbounds i32* %oldToNew, i64 %idxprom8
  %2 = trunc i64 %indvars.iv to i32
  store i32 %2, i32* %arrayidx9, align 4, !tbaa !0
  %call10 = tail call i32 @Tree_postOTnext(%struct._Tree* %tree, i32 %v.026) #4
  %cmp7 = icmp eq i32 %call10, -1
  br i1 %cmp7, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
