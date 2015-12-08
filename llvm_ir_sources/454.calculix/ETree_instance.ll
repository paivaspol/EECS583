; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_instance.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._ETree = type { i32, i32, %struct._Tree*, %struct._IV*, %struct._IV*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [46 x i8] c"\0A fatal error in ETree_nfront(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [44 x i8] c"\0A fatal error in ETree_nvtx(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [44 x i8] c"\0A fatal error in ETree_tree(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [44 x i8] c"\0A fatal error in ETree_root(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [43 x i8] c"\0A fatal error in ETree_par(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [43 x i8] c"\0A fatal error in ETree_fch(%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [43 x i8] c"\0A fatal error in ETree_sib(%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [50 x i8] c"\0A fatal error in ETree_nodwghtsIV(%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [48 x i8] c"\0A fatal error in ETree_nodwghts(%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [50 x i8] c"\0A fatal error in ETree_bndwghtsIV(%p)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [48 x i8] c"\0A fatal error in ETree_bndwghts(%p)\0A bad input\0A\00", align 1
@.str11 = private unnamed_addr constant [52 x i8] c"\0A fatal error in ETree_vtxToFrontIV(%p)\0A bad input\0A\00", align 1
@.str12 = private unnamed_addr constant [50 x i8] c"\0A fatal error in ETree_vtxToFront(%p)\0A bad input\0A\00", align 1
@.str13 = private unnamed_addr constant [52 x i8] c"\0A fatal error in ETree_frontSize(%p,%d)\0A bad input\0A\00", align 1
@.str14 = private unnamed_addr constant [60 x i8] c"\0A fatal error in ETree_frontBoundarySize(%p,%d)\0A bad input\0A\00", align 1
@.str15 = private unnamed_addr constant [57 x i8] c"\0A fatal error in ETree_maxNindAndNent(%p,%d)\0A bad input\0A\00", align 1
@.str16 = private unnamed_addr constant [59 x i8] c"\0A fatal error in ETree_maxNindAndNent(%p,%d)\0A bad symflag\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @ETree_nfront(%struct._ETree* %etree) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str, i64 0, i64 0), %struct._ETree* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %nfront = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  %1 = load i32* %nfront, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @ETree_nvtx(%struct._ETree* %etree) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str1, i64 0, i64 0), %struct._ETree* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %nvtx = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1
  %1 = load i32* %nvtx, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize uwtable
define %struct._Tree* @ETree_tree(%struct._ETree* %etree) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str2, i64 0, i64 0), %struct._ETree* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2
  %1 = load %struct._Tree** %tree, align 8, !tbaa !0
  ret %struct._Tree* %1
}

; Function Attrs: nounwind optsize uwtable
define i32 @ETree_root(%struct._ETree* %etree) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2
  %0 = load %struct._Tree** %tree, align 8, !tbaa !0
  %cmp1 = icmp eq %struct._Tree* %0, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([44 x i8]* @.str3, i64 0, i64 0), %struct._ETree* %etree) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %root = getelementptr inbounds %struct._Tree* %0, i64 0, i32 1
  %2 = load i32* %root, align 4, !tbaa !3
  ret i32 %2
}

; Function Attrs: nounwind optsize uwtable
define i32* @ETree_par(%struct._ETree* %etree) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2
  %0 = load %struct._Tree** %tree, align 8, !tbaa !0
  %cmp1 = icmp eq %struct._Tree* %0, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([43 x i8]* @.str4, i64 0, i64 0), %struct._ETree* %etree) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %par = getelementptr inbounds %struct._Tree* %0, i64 0, i32 2
  %2 = load i32** %par, align 8, !tbaa !0
  ret i32* %2
}

; Function Attrs: nounwind optsize uwtable
define i32* @ETree_fch(%struct._ETree* %etree) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2
  %0 = load %struct._Tree** %tree, align 8, !tbaa !0
  %cmp1 = icmp eq %struct._Tree* %0, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([43 x i8]* @.str5, i64 0, i64 0), %struct._ETree* %etree) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %fch = getelementptr inbounds %struct._Tree* %0, i64 0, i32 3
  %2 = load i32** %fch, align 8, !tbaa !0
  ret i32* %2
}

; Function Attrs: nounwind optsize uwtable
define i32* @ETree_sib(%struct._ETree* %etree) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2
  %0 = load %struct._Tree** %tree, align 8, !tbaa !0
  %cmp1 = icmp eq %struct._Tree* %0, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([43 x i8]* @.str6, i64 0, i64 0), %struct._ETree* %etree) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %sib = getelementptr inbounds %struct._Tree* %0, i64 0, i32 4
  %2 = load i32** %sib, align 8, !tbaa !0
  ret i32* %2
}

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @ETree_nodwghtsIV(%struct._ETree* %etree) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str7, i64 0, i64 0), %struct._ETree* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3
  %1 = load %struct._IV** %nodwghtsIV, align 8, !tbaa !0
  ret %struct._IV* %1
}

; Function Attrs: nounwind optsize uwtable
define i32* @ETree_nodwghts(%struct._ETree* %etree) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3
  %0 = load %struct._IV** %nodwghtsIV, align 8, !tbaa !0
  %cmp1 = icmp eq %struct._IV* %0, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([48 x i8]* @.str8, i64 0, i64 0), %struct._ETree* %etree) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call i32* @IV_entries(%struct._IV* %0) #4
  ret i32* %call3
}

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @ETree_bndwghtsIV(%struct._ETree* %etree) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str9, i64 0, i64 0), %struct._ETree* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4
  %1 = load %struct._IV** %bndwghtsIV, align 8, !tbaa !0
  ret %struct._IV* %1
}

; Function Attrs: nounwind optsize uwtable
define i32* @ETree_bndwghts(%struct._ETree* %etree) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4
  %0 = load %struct._IV** %bndwghtsIV, align 8, !tbaa !0
  %cmp1 = icmp eq %struct._IV* %0, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([48 x i8]* @.str10, i64 0, i64 0), %struct._ETree* %etree) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call i32* @IV_entries(%struct._IV* %0) #4
  ret i32* %call3
}

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @ETree_vtxToFrontIV(%struct._ETree* %etree) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str11, i64 0, i64 0), %struct._ETree* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5
  %1 = load %struct._IV** %vtxToFrontIV, align 8, !tbaa !0
  ret %struct._IV* %1
}

; Function Attrs: nounwind optsize uwtable
define i32* @ETree_vtxToFront(%struct._ETree* %etree) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5
  %0 = load %struct._IV** %vtxToFrontIV, align 8, !tbaa !0
  %cmp1 = icmp eq %struct._IV* %0, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([50 x i8]* @.str12, i64 0, i64 0), %struct._ETree* %etree) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call i32* @IV_entries(%struct._IV* %0) #4
  ret i32* %call3
}

; Function Attrs: nounwind optsize uwtable
define i32 @ETree_frontSize(%struct._ETree* %etree, i32 %J) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  %cmp1 = icmp slt i32 %J, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nfront = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  %0 = load i32* %nfront, align 4, !tbaa !3
  %cmp3 = icmp sgt i32 %0, %J
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([52 x i8]* @.str13, i64 0, i64 0), %struct._ETree* %etree, i32 %J) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %idxprom = sext i32 %J to i64
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3
  %2 = load %struct._IV** %nodwghtsIV, align 8, !tbaa !0
  %vec = getelementptr inbounds %struct._IV* %2, i64 0, i32 3
  %3 = load i32** %vec, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %3, i64 %idxprom
  %4 = load i32* %arrayidx, align 4, !tbaa !3
  ret i32 %4
}

; Function Attrs: nounwind optsize uwtable
define i32 @ETree_frontBoundarySize(%struct._ETree* %etree, i32 %J) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  %cmp1 = icmp slt i32 %J, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nfront = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  %0 = load i32* %nfront, align 4, !tbaa !3
  %cmp3 = icmp sgt i32 %0, %J
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([60 x i8]* @.str14, i64 0, i64 0), %struct._ETree* %etree, i32 %J) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %idxprom = sext i32 %J to i64
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4
  %2 = load %struct._IV** %bndwghtsIV, align 8, !tbaa !0
  %vec = getelementptr inbounds %struct._IV* %2, i64 0, i32 3
  %3 = load i32** %vec, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %3, i64 %idxprom
  %4 = load i32* %arrayidx, align 4, !tbaa !3
  ret i32 %4
}

; Function Attrs: nounwind optsize uwtable
define void @ETree_maxNindAndNent(%struct._ETree* %etree, i32 %symflag, i32* nocapture %pmaxnind, i32* nocapture %pmaxnent) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str15, i64 0, i64 0), %struct._ETree* null, i32 %symflag) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  %1 = load i32* %nfront1, align 4, !tbaa !3
  %call2 = tail call i32* @ETree_nodwghts(%struct._ETree* %etree) #6
  %call3 = tail call i32* @ETree_bndwghts(%struct._ETree* %etree) #6
  %cmp448 = icmp sgt i32 %1, 0
  br i1 %cmp448, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %sw.epilog
  %indvars.iv = phi i64 [ %indvars.iv.next, %sw.epilog ], [ 0, %if.end ]
  %maxnent.050 = phi i32 [ %maxnent.1, %sw.epilog ], [ 0, %if.end ]
  %maxnind.049 = phi i32 [ %nind.0.maxnind.0, %sw.epilog ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds i32* %call2, i64 %indvars.iv
  %2 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx6 = getelementptr inbounds i32* %call3, i64 %indvars.iv
  %3 = load i32* %arrayidx6, align 4, !tbaa !3
  switch i32 %symflag, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
  ]

sw.bb:                                            ; preds = %for.body, %for.body
  %add = add nsw i32 %3, %2
  %add7 = add nsw i32 %2, 1
  %mul = mul nsw i32 %add7, %2
  %div = sdiv i32 %mul, 2
  %mul8 = mul nsw i32 %3, %2
  %add9 = add nsw i32 %div, %mul8
  br label %sw.epilog

sw.bb10:                                          ; preds = %for.body
  %add11 = add nsw i32 %3, %2
  %mul12 = shl nsw i32 %add11, 1
  %mul13 = shl i32 %3, 1
  %add14 = add nsw i32 %mul13, %2
  %mul15 = mul nsw i32 %add14, %2
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([59 x i8]* @.str16, i64 0, i64 0), %struct._ETree* %etree, i32 %symflag) #4
  tail call void @exit(i32 -1) #5
  unreachable

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb
  %nent.0 = phi i32 [ %mul15, %sw.bb10 ], [ %add9, %sw.bb ]
  %nind.0 = phi i32 [ %mul12, %sw.bb10 ], [ %add, %sw.bb ]
  %cmp17 = icmp slt i32 %maxnind.049, %nind.0
  %nind.0.maxnind.0 = select i1 %cmp17, i32 %nind.0, i32 %maxnind.049
  %cmp20 = icmp slt i32 %maxnent.050, %nent.0
  %maxnent.1 = select i1 %cmp20, i32 %nent.0, i32 %maxnent.050
  %indvars.iv.next = add i64 %indvars.iv, 1
  %5 = trunc i64 %indvars.iv.next to i32
  %cmp4 = icmp slt i32 %5, %1
  br i1 %cmp4, label %for.body, label %for.end

for.end:                                          ; preds = %sw.epilog, %if.end
  %maxnent.0.lcssa = phi i32 [ 0, %if.end ], [ %maxnent.1, %sw.epilog ]
  %maxnind.0.lcssa = phi i32 [ 0, %if.end ], [ %nind.0.maxnind.0, %sw.epilog ]
  store i32 %maxnind.0.lcssa, i32* %pmaxnind, align 4, !tbaa !3
  store i32 %maxnent.0.lcssa, i32* %pmaxnent, align 4, !tbaa !3
  ret void
}

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
