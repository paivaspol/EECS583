; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_permute.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IV = type { i32, i32, i32, i32* }
%struct._ETree = type { i32, i32, %struct._Tree*, %struct._IV*, %struct._IV*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [57 x i8] c"\0A fatal error in ETree_newToOldFrontPerm(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [57 x i8] c"\0A fatal error in ETree_oldToNewFrontPerm(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [55 x i8] c"\0A fatal error in ETree_newToOldVtxPerm(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [55 x i8] c"\0A fatal error in ETree_oldToNewVtxPerm(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [58 x i8] c"\0A fatal error in ETree_permuteVertices(%p,%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [49 x i8] c"\0A etree->nvtx = %d, IV_size(vtxOldToNewIV) = %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @ETree_newToOldFrontPerm(%struct._ETree* %etree) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  %0 = load i32* %nfront1, align 4, !tbaa !0
  %cmp2 = icmp slt i32 %0, 1
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %nvtx4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1
  %1 = load i32* %nvtx4, align 4, !tbaa !0
  %cmp5 = icmp slt i32 %1, 1
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), %struct._ETree* %etree) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false3
  %call6 = tail call %struct._IV* @IV_new() #4
  tail call void @IV_init(%struct._IV* %call6, i32 %0, i32* null) #4
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2
  %3 = load %struct._Tree** %tree, align 8, !tbaa !3
  %call7 = tail call i32* @IV_entries(%struct._IV* %call6) #4
  tail call void @Tree_fillNewToOldPerm(%struct._Tree* %3, i32* %call7) #4
  ret %struct._IV* %call6
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare %struct._IV* @IV_new() #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: optsize
declare void @Tree_fillNewToOldPerm(%struct._Tree*, i32*) #3

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @ETree_oldToNewFrontPerm(%struct._ETree* %etree) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  %0 = load i32* %nfront1, align 4, !tbaa !0
  %cmp2 = icmp slt i32 %0, 1
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %nvtx4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1
  %1 = load i32* %nvtx4, align 4, !tbaa !0
  %cmp5 = icmp slt i32 %1, 1
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), %struct._ETree* %etree) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false3
  %call6 = tail call %struct._IV* @IV_new() #4
  tail call void @IV_init(%struct._IV* %call6, i32 %0, i32* null) #4
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2
  %3 = load %struct._Tree** %tree, align 8, !tbaa !3
  %call7 = tail call i32* @IV_entries(%struct._IV* %call6) #4
  tail call void @Tree_fillOldToNewPerm(%struct._Tree* %3, i32* %call7) #4
  ret %struct._IV* %call6
}

; Function Attrs: optsize
declare void @Tree_fillOldToNewPerm(%struct._Tree*, i32*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @ETree_newToOldVtxPerm(%struct._ETree* %etree) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  %0 = load i32* %nfront1, align 4, !tbaa !0
  %cmp2 = icmp slt i32 %0, 1
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %nvtx4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1
  %1 = load i32* %nvtx4, align 4, !tbaa !0
  %cmp5 = icmp slt i32 %1, 1
  br i1 %cmp5, label %if.then, label %for.body.lr.ph

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), %struct._ETree* %etree) #4
  tail call void @exit(i32 -1) #5
  unreachable

for.body.lr.ph:                                   ; preds = %lor.lhs.false3
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5
  %3 = load %struct._IV** %vtxToFrontIV, align 8, !tbaa !3
  %call6 = tail call i32* @IV_entries(%struct._IV* %3) #4
  %call7 = tail call %struct._IV* @IV_new() #4
  tail call void @IV_init(%struct._IV* %call7, i32 %1, i32* null) #4
  %call8 = tail call i32* @IV_entries(%struct._IV* %call7) #4
  %call9 = tail call i32* @IVinit(i32 %0, i32 -1) #4
  %call10 = tail call i32* @IVinit(i32 %1, i32 -1) #4
  %4 = sext i32 %1 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv73 = phi i64 [ %4, %for.body.lr.ph ], [ %indvars.iv.next74, %for.body ]
  %indvars.iv.next74 = add i64 %indvars.iv73, -1
  %arrayidx = getelementptr inbounds i32* %call6, i64 %indvars.iv.next74
  %5 = load i32* %arrayidx, align 4, !tbaa !0
  %idxprom12 = sext i32 %5 to i64
  %arrayidx13 = getelementptr inbounds i32* %call9, i64 %idxprom12
  %6 = load i32* %arrayidx13, align 4, !tbaa !0
  %arrayidx15 = getelementptr inbounds i32* %call10, i64 %indvars.iv.next74
  store i32 %6, i32* %arrayidx15, align 4, !tbaa !0
  %7 = trunc i64 %indvars.iv.next74 to i32
  store i32 %7, i32* %arrayidx13, align 4, !tbaa !0
  %cmp11 = icmp sgt i32 %7, 0
  br i1 %cmp11, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2
  %8 = load %struct._Tree** %tree, align 8, !tbaa !3
  %call18 = tail call i32 @Tree_postOTfirst(%struct._Tree* %8) #4
  %cmp2067 = icmp eq i32 %call18, -1
  br i1 %cmp2067, label %for.end36, label %for.body21

for.body21:                                       ; preds = %for.end, %for.inc33
  %count.069 = phi i32 [ %count.1.lcssa, %for.inc33 ], [ 0, %for.end ]
  %front.068 = phi i32 [ %call35, %for.inc33 ], [ %call18, %for.end ]
  %idxprom22 = sext i32 %front.068 to i64
  %arrayidx23 = getelementptr inbounds i32* %call9, i64 %idxprom22
  %v.163 = load i32* %arrayidx23, align 4
  %cmp2564 = icmp eq i32 %v.163, -1
  br i1 %cmp2564, label %for.inc33, label %for.body26.lr.ph

for.body26.lr.ph:                                 ; preds = %for.body21
  %9 = sext i32 %count.069 to i64
  br label %for.body26

for.body26:                                       ; preds = %for.body26.lr.ph, %for.body26
  %indvars.iv = phi i64 [ %9, %for.body26.lr.ph ], [ %indvars.iv.next, %for.body26 ]
  %v.166 = phi i32 [ %v.163, %for.body26.lr.ph ], [ %v.1, %for.body26 ]
  %count.165 = phi i32 [ %count.069, %for.body26.lr.ph ], [ %inc, %for.body26 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %count.165, 1
  %arrayidx28 = getelementptr inbounds i32* %call8, i64 %indvars.iv
  store i32 %v.166, i32* %arrayidx28, align 4, !tbaa !0
  %idxprom30 = sext i32 %v.166 to i64
  %arrayidx31 = getelementptr inbounds i32* %call10, i64 %idxprom30
  %v.1 = load i32* %arrayidx31, align 4
  %cmp25 = icmp eq i32 %v.1, -1
  br i1 %cmp25, label %for.inc33, label %for.body26

for.inc33:                                        ; preds = %for.body26, %for.body21
  %count.1.lcssa = phi i32 [ %count.069, %for.body21 ], [ %inc, %for.body26 ]
  %10 = load %struct._Tree** %tree, align 8, !tbaa !3
  %call35 = tail call i32 @Tree_postOTnext(%struct._Tree* %10, i32 %front.068) #4
  %cmp20 = icmp eq i32 %call35, -1
  br i1 %cmp20, label %for.end36, label %for.body21

for.end36:                                        ; preds = %for.inc33, %for.end
  tail call void @IVfree(i32* %call9) #4
  tail call void @IVfree(i32* %call10) #4
  ret %struct._IV* %call7
}

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare i32 @Tree_postOTfirst(%struct._Tree*) #3

; Function Attrs: optsize
declare i32 @Tree_postOTnext(%struct._Tree*, i32) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @ETree_oldToNewVtxPerm(%struct._ETree* %etree) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  %0 = load i32* %nfront1, align 4, !tbaa !0
  %cmp2 = icmp slt i32 %0, 1
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %nvtx4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1
  %1 = load i32* %nvtx4, align 4, !tbaa !0
  %cmp5 = icmp slt i32 %1, 1
  br i1 %cmp5, label %if.then, label %for.body.lr.ph

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), %struct._ETree* %etree) #4
  tail call void @exit(i32 -1) #5
  unreachable

for.body.lr.ph:                                   ; preds = %lor.lhs.false3
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5
  %3 = load %struct._IV** %vtxToFrontIV, align 8, !tbaa !3
  %call6 = tail call i32* @IV_entries(%struct._IV* %3) #4
  %call7 = tail call %struct._IV* @IV_new() #4
  tail call void @IV_init(%struct._IV* %call7, i32 %1, i32* null) #4
  %call8 = tail call i32* @IV_entries(%struct._IV* %call7) #4
  %call9 = tail call i32* @IVinit(i32 %0, i32 -1) #4
  %call10 = tail call i32* @IVinit(i32 %1, i32 -1) #4
  %4 = sext i32 %1 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ %4, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %arrayidx = getelementptr inbounds i32* %call6, i64 %indvars.iv.next
  %5 = load i32* %arrayidx, align 4, !tbaa !0
  %idxprom12 = sext i32 %5 to i64
  %arrayidx13 = getelementptr inbounds i32* %call9, i64 %idxprom12
  %6 = load i32* %arrayidx13, align 4, !tbaa !0
  %arrayidx15 = getelementptr inbounds i32* %call10, i64 %indvars.iv.next
  store i32 %6, i32* %arrayidx15, align 4, !tbaa !0
  %7 = trunc i64 %indvars.iv.next to i32
  store i32 %7, i32* %arrayidx13, align 4, !tbaa !0
  %cmp11 = icmp sgt i32 %7, 0
  br i1 %cmp11, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2
  %8 = load %struct._Tree** %tree, align 8, !tbaa !3
  %call18 = tail call i32 @Tree_postOTfirst(%struct._Tree* %8) #4
  %cmp2067 = icmp eq i32 %call18, -1
  br i1 %cmp2067, label %for.end36, label %for.body21

for.body21:                                       ; preds = %for.end, %for.inc33
  %count.069 = phi i32 [ %count.1.lcssa, %for.inc33 ], [ 0, %for.end ]
  %front.068 = phi i32 [ %call35, %for.inc33 ], [ %call18, %for.end ]
  %idxprom22 = sext i32 %front.068 to i64
  %arrayidx23 = getelementptr inbounds i32* %call9, i64 %idxprom22
  %v.163 = load i32* %arrayidx23, align 4
  %cmp2564 = icmp eq i32 %v.163, -1
  br i1 %cmp2564, label %for.inc33, label %for.body26

for.body26:                                       ; preds = %for.body21, %for.body26
  %v.166 = phi i32 [ %v.1, %for.body26 ], [ %v.163, %for.body21 ]
  %count.165 = phi i32 [ %inc, %for.body26 ], [ %count.069, %for.body21 ]
  %inc = add nsw i32 %count.165, 1
  %idxprom27 = sext i32 %v.166 to i64
  %arrayidx28 = getelementptr inbounds i32* %call8, i64 %idxprom27
  store i32 %count.165, i32* %arrayidx28, align 4, !tbaa !0
  %arrayidx31 = getelementptr inbounds i32* %call10, i64 %idxprom27
  %v.1 = load i32* %arrayidx31, align 4
  %cmp25 = icmp eq i32 %v.1, -1
  br i1 %cmp25, label %for.inc33, label %for.body26

for.inc33:                                        ; preds = %for.body26, %for.body21
  %count.1.lcssa = phi i32 [ %count.069, %for.body21 ], [ %inc, %for.body26 ]
  %9 = load %struct._Tree** %tree, align 8, !tbaa !3
  %call35 = tail call i32 @Tree_postOTnext(%struct._Tree* %9, i32 %front.068) #4
  %cmp20 = icmp eq i32 %call35, -1
  br i1 %cmp20, label %for.end36, label %for.body21

for.end36:                                        ; preds = %for.inc33, %for.end
  tail call void @IVfree(i32* %call9) #4
  tail call void @IVfree(i32* %call10) #4
  ret %struct._IV* %call7
}

; Function Attrs: nounwind optsize uwtable
define void @ETree_permuteVertices(%struct._ETree* %etree, %struct._IV* %vtxOldToNewIV) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  %cmp1 = icmp eq %struct._IV* %vtxOldToNewIV, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then.thread, label %lor.lhs.false2

if.then.thread:                                   ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call743 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str4, i64 0, i64 0), %struct._ETree* %etree, %struct._IV* %vtxOldToNewIV) #4
  br label %if.end

lor.lhs.false2:                                   ; preds = %entry
  %nvtx3 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1
  %1 = load i32* %nvtx3, align 4, !tbaa !0
  %cmp4 = icmp slt i32 %1, 1
  br i1 %cmp4, label %if.then.thread44, label %lor.lhs.false5

if.then.thread44:                                 ; preds = %lor.lhs.false2
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call745 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([58 x i8]* @.str4, i64 0, i64 0), %struct._ETree* %etree, %struct._IV* %vtxOldToNewIV) #4
  br label %if.then10

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %call = tail call i32 @IV_size(%struct._IV* %vtxOldToNewIV) #4
  %cmp6 = icmp eq i32 %1, %call
  br i1 %cmp6, label %for.body.lr.ph, label %if.then

if.then:                                          ; preds = %lor.lhs.false5
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([58 x i8]* @.str4, i64 0, i64 0), %struct._ETree* %etree, %struct._IV* %vtxOldToNewIV) #4
  br label %if.then10

if.then10:                                        ; preds = %if.then, %if.then.thread44
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %5 = load i32* %nvtx3, align 4, !tbaa !0
  %call12 = tail call i32 @IV_size(%struct._IV* %vtxOldToNewIV) #4
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([49 x i8]* @.str5, i64 0, i64 0), i32 %5, i32 %call12) #4
  br label %if.end

if.end:                                           ; preds = %if.then.thread, %if.then10
  tail call void @exit(i32 -1) #5
  unreachable

for.body.lr.ph:                                   ; preds = %lor.lhs.false5
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5
  %6 = load %struct._IV** %vtxToFrontIV, align 8, !tbaa !3
  %call15 = tail call i32* @IV_entries(%struct._IV* %6) #4
  %call16 = tail call i32* @IV_entries(%struct._IV* %vtxOldToNewIV) #4
  %call17 = tail call i32* @IVinit(i32 %1, i32 -1) #4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32* %call15, i64 %indvars.iv
  %7 = load i32* %arrayidx, align 4, !tbaa !0
  %arrayidx20 = getelementptr inbounds i32* %call16, i64 %indvars.iv
  %8 = load i32* %arrayidx20, align 4, !tbaa !0
  %idxprom21 = sext i32 %8 to i64
  %arrayidx22 = getelementptr inbounds i32* %call17, i64 %idxprom21
  store i32 %7, i32* %arrayidx22, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %1
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  tail call void @IVcopy(i32 %1, i32* %call15, i32* %call17) #4
  tail call void @IVfree(i32* %call17) #4
  ret void
}

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #3

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

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
