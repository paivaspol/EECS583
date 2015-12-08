; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._ETree = type { i32, i32, %struct._Tree*, %struct._IV*, %struct._IV*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [61 x i8] c"\0A fatal error in ETree_transform(%p,%p,%d,%d,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [62 x i8] c"\0A fatal error in ETree_transform2(%p,%p,%d,%d,%d)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [60 x i8] c"\0A fatal error in ETree_mergeFrontsOne(%p,%d,%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [83 x i8] c"\0A fatal error in ETree_mergeFrontsOne(%p,%d,%p)\0A size(nzerosIV) = %d, nfront = %d\0A\00", align 1
@.str4 = private unnamed_addr constant [60 x i8] c"\0A fatal error in ETree_mergeFrontsAll(%p,%d,%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [25 x i8] c"\0A nfront = %d, nvtx = %d\00", align 1
@.str6 = private unnamed_addr constant [83 x i8] c"\0A fatal error in ETree_mergeFrontsAll(%p,%d,%p)\0A size(nzerosIV) = %d, nfront = %d\0A\00", align 1
@.str7 = private unnamed_addr constant [57 x i8] c"\0A fatal error in ETree_mergeFrontsAny(%p,%d)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [83 x i8] c"\0A fatal error in ETree_mergeFrontsAny(%p,%d,%p)\0A size(nzerosIV) = %d, nfront = %d\0A\00", align 1
@.str9 = private unnamed_addr constant [60 x i8] c"\0A fatal error in ETree_splitFronts(%p,%p,%d,%d)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [83 x i8] c"\0A fatal error in ETree_splitFronts(%p,%p,%d,%d)\0A J = %d, sizeJ = %d, nodwght = %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._ETree* @ETree_transform(%struct._ETree* %etree, i32* %vwghts, i32 %maxzeros, i32 %maxfrontsize, i32 %seed) #0 {
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
  %cmp7 = icmp slt i32 %maxfrontsize, 1
  %or.cond = or i1 %cmp5, %cmp7
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), %struct._ETree* %etree, i32* %vwghts, i32 %maxzeros, i32 %maxfrontsize, i32 %seed) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false3
  %call8 = tail call %struct._IV* @IV_new() #4
  tail call void @IV_init(%struct._IV* %call8, i32 %0, i32* null) #4
  tail call void @IV_fill(%struct._IV* %call8, i32 0) #4
  %call9 = tail call %struct._ETree* @ETree_mergeFrontsOne(%struct._ETree* %etree, i32 %maxzeros, %struct._IV* %call8) #6
  tail call void @ETree_free(%struct._ETree* %etree) #4
  %call10 = tail call %struct._ETree* @ETree_mergeFrontsAll(%struct._ETree* %call9, i32 %maxzeros, %struct._IV* %call8) #6
  tail call void @ETree_free(%struct._ETree* %call9) #4
  %call11 = tail call %struct._ETree* @ETree_mergeFrontsAny(%struct._ETree* %call10, i32 %maxzeros, %struct._IV* %call8) #6
  tail call void @ETree_free(%struct._ETree* %call10) #4
  %call12 = tail call %struct._ETree* @ETree_splitFronts(%struct._ETree* %call11, i32* %vwghts, i32 %maxfrontsize, i32 %seed) #6
  tail call void @ETree_free(%struct._ETree* %call11) #4
  tail call void @IV_free(%struct._IV* %call8) #4
  ret %struct._ETree* %call12
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
declare void @IV_fill(%struct._IV*, i32) #3

; Function Attrs: nounwind optsize uwtable
define %struct._ETree* @ETree_mergeFrontsOne(%struct._ETree* %etree, i32 %maxzeros, %struct._IV* %nzerosIV) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  %cmp1 = icmp eq %struct._IV* %nzerosIV, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nfront3 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  %0 = load i32* %nfront3, align 4, !tbaa !0
  %cmp4 = icmp slt i32 %0, 1
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %nvtx6 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1
  %1 = load i32* %nvtx6, align 4, !tbaa !0
  %cmp7 = icmp slt i32 %1, 1
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false2, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([60 x i8]* @.str2, i64 0, i64 0), %struct._ETree* %etree, i32 %maxzeros, %struct._IV* %nzerosIV) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false5
  %call8 = tail call i32 @IV_size(%struct._IV* %nzerosIV) #4
  %cmp9 = icmp eq i32 %call8, %0
  br i1 %cmp9, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call11 = tail call i32 @IV_size(%struct._IV* %nzerosIV) #4
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([83 x i8]* @.str3, i64 0, i64 0), %struct._ETree* %etree, i32 %maxzeros, %struct._IV* %nzerosIV, i32 %call11, i32 %0) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end13:                                         ; preds = %if.end
  %call14 = tail call i32* @IV_entries(%struct._IV* %nzerosIV) #4
  %tree15 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2
  %4 = load %struct._Tree** %tree15, align 8, !tbaa !3
  %call16 = tail call i32* @ETree_fch(%struct._ETree* %etree) #4
  %call17 = tail call i32* @ETree_sib(%struct._ETree* %etree) #4
  %call18 = tail call i32* @IVinit(i32 %0, i32 0) #4
  %call19 = tail call i32* @ETree_nodwghts(%struct._ETree* %etree) #4
  tail call void @IVcopy(i32 %0, i32* %call18, i32* %call19) #4
  %call20 = tail call i32* @ETree_bndwghts(%struct._ETree* %etree) #4
  %call21 = tail call i32* @IVinit(i32 %0, i32 -1) #4
  tail call void @IVramp(i32 %0, i32* %call21, i32 0, i32 1) #4
  %call22 = tail call i32 @Tree_postOTfirst(%struct._Tree* %4) #4
  %cmp23215 = icmp eq i32 %call22, -1
  br i1 %cmp23215, label %for.end, label %for.body

for.body:                                         ; preds = %if.end13, %for.inc
  %K.0216 = phi i32 [ %call56, %for.inc ], [ %call22, %if.end13 ]
  %idxprom = sext i32 %K.0216 to i64
  %arrayidx = getelementptr inbounds i32* %call16, i64 %idxprom
  %5 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp24 = icmp eq i32 %5, -1
  br i1 %cmp24, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %idxprom25 = sext i32 %5 to i64
  %arrayidx26 = getelementptr inbounds i32* %call17, i64 %idxprom25
  %6 = load i32* %arrayidx26, align 4, !tbaa !0
  %cmp27 = icmp eq i32 %6, -1
  br i1 %cmp27, label %if.then28, label %for.inc

if.then28:                                        ; preds = %land.lhs.true
  %arrayidx30 = getelementptr inbounds i32* %call18, i64 %idxprom25
  %7 = load i32* %arrayidx30, align 4, !tbaa !0
  %arrayidx32 = getelementptr inbounds i32* %call18, i64 %idxprom
  %8 = load i32* %arrayidx32, align 4, !tbaa !0
  %arrayidx34 = getelementptr inbounds i32* %call20, i64 %idxprom
  %9 = load i32* %arrayidx34, align 4, !tbaa !0
  %add = add nsw i32 %9, %8
  %arrayidx36 = getelementptr inbounds i32* %call20, i64 %idxprom25
  %10 = load i32* %arrayidx36, align 4, !tbaa !0
  %sub = sub i32 %add, %10
  %mul = mul nsw i32 %sub, %7
  %arrayidx38 = getelementptr inbounds i32* %call14, i64 %idxprom25
  %11 = load i32* %arrayidx38, align 4, !tbaa !0
  %add39 = add nsw i32 %mul, %11
  %cmp40 = icmp sgt i32 %add39, %maxzeros
  br i1 %cmp40, label %for.inc, label %if.then41

if.then41:                                        ; preds = %if.then28
  %arrayidx43 = getelementptr inbounds i32* %call21, i64 %idxprom25
  store i32 %K.0216, i32* %arrayidx43, align 4, !tbaa !0
  %12 = load i32* %arrayidx30, align 4, !tbaa !0
  %13 = load i32* %arrayidx32, align 4, !tbaa !0
  %add48 = add nsw i32 %13, %12
  store i32 %add48, i32* %arrayidx32, align 4, !tbaa !0
  %14 = load i32* %arrayidx38, align 4, !tbaa !0
  %add51 = add nsw i32 %14, %mul
  %arrayidx53 = getelementptr inbounds i32* %call14, i64 %idxprom
  store i32 %add51, i32* %arrayidx53, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %if.then28, %for.body, %land.lhs.true, %if.then41
  %call56 = tail call i32 @Tree_postOTnext(%struct._Tree* %4, i32 %K.0216) #4
  %cmp23 = icmp eq i32 %call56, -1
  br i1 %cmp23, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end13
  %call57 = tail call %struct._IV* @IV_new() #4
  tail call void @IV_init(%struct._IV* %call57, i32 %0, i32* null) #4
  %call58 = tail call i32* @IV_entries(%struct._IV* %call57) #4
  %cmp60212 = icmp sgt i32 %0, 0
  br i1 %cmp60212, label %for.body61, label %for.end93

for.cond79.preheader:                             ; preds = %for.inc76
  br i1 %cmp60212, label %for.body81, label %for.end93

for.body61:                                       ; preds = %for.end, %for.inc76
  %indvars.iv221 = phi i64 [ %indvars.iv.next222, %for.inc76 ], [ 0, %for.end ]
  %J.0214 = phi i32 [ %inc77, %for.inc76 ], [ 0, %for.end ]
  %nnew.0213 = phi i32 [ %nnew.1, %for.inc76 ], [ 0, %for.end ]
  %arrayidx63 = getelementptr inbounds i32* %call21, i64 %indvars.iv221
  %15 = load i32* %arrayidx63, align 4, !tbaa !0
  %16 = trunc i64 %indvars.iv221 to i32
  %cmp64 = icmp eq i32 %15, %16
  br i1 %cmp64, label %if.then65, label %while.cond

if.then65:                                        ; preds = %for.body61
  %inc = add nsw i32 %nnew.0213, 1
  %arrayidx67 = getelementptr inbounds i32* %call58, i64 %indvars.iv221
  store i32 %nnew.0213, i32* %arrayidx67, align 4, !tbaa !0
  br label %for.inc76

while.cond:                                       ; preds = %for.body61, %while.cond
  %K.1 = phi i32 [ %17, %while.cond ], [ %J.0214, %for.body61 ]
  %idxprom68 = sext i32 %K.1 to i64
  %arrayidx69 = getelementptr inbounds i32* %call21, i64 %idxprom68
  %17 = load i32* %arrayidx69, align 4, !tbaa !0
  %cmp70 = icmp eq i32 %17, %K.1
  br i1 %cmp70, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 %K.1, i32* %arrayidx63, align 4, !tbaa !0
  br label %for.inc76

for.inc76:                                        ; preds = %if.then65, %while.end
  %nnew.1 = phi i32 [ %inc, %if.then65 ], [ %nnew.0213, %while.end ]
  %indvars.iv.next222 = add i64 %indvars.iv221, 1
  %inc77 = add nsw i32 %J.0214, 1
  %lftr.wideiv223 = trunc i64 %indvars.iv.next222 to i32
  %exitcond224 = icmp eq i32 %lftr.wideiv223, %0
  br i1 %exitcond224, label %for.cond79.preheader, label %for.body61

for.body81:                                       ; preds = %for.cond79.preheader, %for.inc91
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %for.inc91 ], [ 0, %for.cond79.preheader ]
  %arrayidx83 = getelementptr inbounds i32* %call21, i64 %indvars.iv217
  %18 = load i32* %arrayidx83, align 4, !tbaa !0
  %19 = trunc i64 %indvars.iv217 to i32
  %cmp84 = icmp eq i32 %18, %19
  br i1 %cmp84, label %for.inc91, label %if.then85

if.then85:                                        ; preds = %for.body81
  %idxprom86 = sext i32 %18 to i64
  %arrayidx87 = getelementptr inbounds i32* %call58, i64 %idxprom86
  %20 = load i32* %arrayidx87, align 4, !tbaa !0
  %arrayidx89 = getelementptr inbounds i32* %call58, i64 %indvars.iv217
  store i32 %20, i32* %arrayidx89, align 4, !tbaa !0
  br label %for.inc91

for.inc91:                                        ; preds = %for.body81, %if.then85
  %indvars.iv.next218 = add i64 %indvars.iv217, 1
  %lftr.wideiv219 = trunc i64 %indvars.iv.next218 to i32
  %exitcond220 = icmp eq i32 %lftr.wideiv219, %0
  br i1 %exitcond220, label %for.end93, label %for.body81

for.end93:                                        ; preds = %for.end, %for.inc91, %for.cond79.preheader
  %nnew.0.lcssa225 = phi i32 [ %nnew.1, %for.cond79.preheader ], [ %nnew.1, %for.inc91 ], [ 0, %for.end ]
  %call94 = tail call %struct._ETree* @ETree_compress(%struct._ETree* %etree, %struct._IV* %call57) #4
  %call95 = tail call i32* @IVinit(i32 %0, i32 0) #4
  tail call void @IVcopy(i32 %0, i32* %call95, i32* %call14) #4
  tail call void @IV_setSize(%struct._IV* %nzerosIV, i32 %nnew.0.lcssa225) #4
  %call96 = tail call i32* @IV_entries(%struct._IV* %nzerosIV) #4
  br i1 %cmp60212, label %for.body99, label %for.end113

for.body99:                                       ; preds = %for.end93, %for.inc111
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc111 ], [ 0, %for.end93 ]
  %arrayidx101 = getelementptr inbounds i32* %call21, i64 %indvars.iv
  %21 = load i32* %arrayidx101, align 4, !tbaa !0
  %22 = trunc i64 %indvars.iv to i32
  %cmp102 = icmp eq i32 %21, %22
  br i1 %cmp102, label %if.then103, label %for.inc111

if.then103:                                       ; preds = %for.body99
  %arrayidx105 = getelementptr inbounds i32* %call95, i64 %indvars.iv
  %23 = load i32* %arrayidx105, align 4, !tbaa !0
  %arrayidx107 = getelementptr inbounds i32* %call58, i64 %indvars.iv
  %24 = load i32* %arrayidx107, align 4, !tbaa !0
  %idxprom108 = sext i32 %24 to i64
  %arrayidx109 = getelementptr inbounds i32* %call96, i64 %idxprom108
  store i32 %23, i32* %arrayidx109, align 4, !tbaa !0
  br label %for.inc111

for.inc111:                                       ; preds = %for.body99, %if.then103
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %0
  br i1 %exitcond, label %for.end113, label %for.body99

for.end113:                                       ; preds = %for.inc111, %for.end93
  tail call void @IVfree(i32* %call95) #4
  tail call void @IVfree(i32* %call18) #4
  tail call void @IVfree(i32* %call21) #4
  tail call void @IV_free(%struct._IV* %call57) #4
  ret %struct._ETree* %call94
}

; Function Attrs: optsize
declare void @ETree_free(%struct._ETree*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._ETree* @ETree_mergeFrontsAll(%struct._ETree* %etree, i32 %maxzeros, %struct._IV* %nzerosIV) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  %cmp1 = icmp eq %struct._IV* %nzerosIV, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nfront3 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  %0 = load i32* %nfront3, align 4, !tbaa !0
  %cmp4 = icmp slt i32 %0, 1
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %nvtx6 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1
  %1 = load i32* %nvtx6, align 4, !tbaa !0
  %cmp7 = icmp slt i32 %1, 1
  br i1 %cmp7, label %if.then, label %if.end13

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false2, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([60 x i8]* @.str4, i64 0, i64 0), %struct._ETree* %etree, i32 %maxzeros, %struct._IV* %nzerosIV) #4
  br i1 %cmp, label %if.end, label %if.then9

if.then9:                                         ; preds = %if.then
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %nfront10 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  %4 = load i32* %nfront10, align 4, !tbaa !0
  %nvtx11 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1
  %5 = load i32* %nvtx11, align 4, !tbaa !0
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([25 x i8]* @.str5, i64 0, i64 0), i32 %4, i32 %5) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then9
  tail call void @exit(i32 -1) #5
  unreachable

if.end13:                                         ; preds = %lor.lhs.false5
  %call14 = tail call i32 @IV_size(%struct._IV* %nzerosIV) #4
  %cmp15 = icmp eq i32 %call14, %0
  br i1 %cmp15, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end13
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call17 = tail call i32 @IV_size(%struct._IV* %nzerosIV) #4
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([83 x i8]* @.str6, i64 0, i64 0), %struct._ETree* %etree, i32 %maxzeros, %struct._IV* %nzerosIV, i32 %call17, i32 %0) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end19:                                         ; preds = %if.end13
  %call20 = tail call i32* @IV_entries(%struct._IV* %nzerosIV) #4
  %tree21 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2
  %7 = load %struct._Tree** %tree21, align 8, !tbaa !3
  %call22 = tail call i32* @ETree_fch(%struct._ETree* %etree) #4
  %call23 = tail call i32* @ETree_sib(%struct._ETree* %etree) #4
  %call24 = tail call i32* @IVinit(i32 %0, i32 0) #4
  %call25 = tail call i32* @ETree_nodwghts(%struct._ETree* %etree) #4
  tail call void @IVcopy(i32 %0, i32* %call24, i32* %call25) #4
  %call26 = tail call i32* @ETree_bndwghts(%struct._ETree* %etree) #4
  %call27 = tail call i32* @IVinit(i32 %0, i32 -1) #4
  tail call void @IVramp(i32 %0, i32* %call27, i32 0, i32 1) #4
  %call28 = tail call i32 @Tree_postOTfirst(%struct._Tree* %7) #4
  %cmp29284 = icmp eq i32 %call28, -1
  br i1 %cmp29284, label %for.end91, label %for.body

for.body:                                         ; preds = %if.end19, %for.inc89
  %K.0285 = phi i32 [ %call90, %for.inc89 ], [ %call28, %if.end19 ]
  %idxprom = sext i32 %K.0285 to i64
  %arrayidx = getelementptr inbounds i32* %call22, i64 %idxprom
  %8 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp30 = icmp eq i32 %8, -1
  br i1 %cmp30, label %for.inc89, label %for.body42.lr.ph

for.body42.lr.ph:                                 ; preds = %for.body
  %arrayidx33 = getelementptr inbounds i32* %call24, i64 %idxprom
  %9 = load i32* %arrayidx33, align 4, !tbaa !0
  %arrayidx35 = getelementptr inbounds i32* %call26, i64 %idxprom
  %10 = load i32* %arrayidx35, align 4, !tbaa !0
  %add = add nsw i32 %10, %9
  %arrayidx37 = getelementptr inbounds i32* %call20, i64 %idxprom
  %11 = load i32* %arrayidx37, align 4, !tbaa !0
  %mul = shl nsw i32 %11, 1
  br label %for.body42

for.body42:                                       ; preds = %for.body42.lr.ph, %for.body42
  %cost.0278 = phi i32 [ %mul, %for.body42.lr.ph ], [ %add62, %for.body42 ]
  %J.0277 = phi i32 [ %8, %for.body42.lr.ph ], [ %15, %for.body42 ]
  %Jall.0276 = phi i32 [ 0, %for.body42.lr.ph ], [ %add45, %for.body42 ]
  %idxprom43 = sext i32 %J.0277 to i64
  %arrayidx44 = getelementptr inbounds i32* %call24, i64 %idxprom43
  %12 = load i32* %arrayidx44, align 4, !tbaa !0
  %add45 = add nsw i32 %12, %Jall.0276
  %mul50 = mul nsw i32 %12, %12
  %arrayidx55 = getelementptr inbounds i32* %call26, i64 %idxprom43
  %13 = load i32* %arrayidx55, align 4, !tbaa !0
  %sub56 = sub i32 %add, %13
  %mul57 = mul i32 %sub56, %12
  %arrayidx60 = getelementptr inbounds i32* %call20, i64 %idxprom43
  %14 = load i32* %arrayidx60, align 4, !tbaa !0
  %tmp = add i32 %mul57, %14
  %tmp267 = shl i32 %tmp, 1
  %add58 = sub i32 %cost.0278, %mul50
  %add62 = add i32 %add58, %tmp267
  %arrayidx64 = getelementptr inbounds i32* %call23, i64 %idxprom43
  %15 = load i32* %arrayidx64, align 4, !tbaa !0
  %cmp41 = icmp eq i32 %15, -1
  br i1 %cmp41, label %for.end, label %for.body42

for.end:                                          ; preds = %for.body42
  %mul65 = mul nsw i32 %add45, %add45
  %add66 = add nsw i32 %add62, %mul65
  %div = sdiv i32 %add66, 2
  %cmp67 = icmp sgt i32 %div, %maxzeros
  br i1 %cmp67, label %for.inc89, label %for.body73

for.body73:                                       ; preds = %for.end, %for.body73
  %J.1283 = phi i32 [ %J.1, %for.body73 ], [ %8, %for.end ]
  %idxprom74 = sext i32 %J.1283 to i64
  %arrayidx75 = getelementptr inbounds i32* %call27, i64 %idxprom74
  store i32 %K.0285, i32* %arrayidx75, align 4, !tbaa !0
  %arrayidx77 = getelementptr inbounds i32* %call24, i64 %idxprom74
  %16 = load i32* %arrayidx77, align 4, !tbaa !0
  %17 = load i32* %arrayidx33, align 4, !tbaa !0
  %add80 = add nsw i32 %17, %16
  store i32 %add80, i32* %arrayidx33, align 4, !tbaa !0
  %arrayidx83 = getelementptr inbounds i32* %call23, i64 %idxprom74
  %J.1 = load i32* %arrayidx83, align 4
  %cmp72 = icmp eq i32 %J.1, -1
  br i1 %cmp72, label %for.end84, label %for.body73

for.end84:                                        ; preds = %for.body73
  store i32 %div, i32* %arrayidx37, align 4, !tbaa !0
  br label %for.inc89

for.inc89:                                        ; preds = %for.end, %for.body, %for.end84
  %call90 = tail call i32 @Tree_postOTnext(%struct._Tree* %7, i32 %K.0285) #4
  %cmp29 = icmp eq i32 %call90, -1
  br i1 %cmp29, label %for.end91, label %for.body

for.end91:                                        ; preds = %for.inc89, %if.end19
  %call92 = tail call %struct._IV* @IV_new() #4
  tail call void @IV_init(%struct._IV* %call92, i32 %0, i32* null) #4
  %call93 = tail call i32* @IV_entries(%struct._IV* %call92) #4
  %cmp95272 = icmp sgt i32 %0, 0
  br i1 %cmp95272, label %for.body96, label %for.end128

for.cond114.preheader:                            ; preds = %for.inc111
  br i1 %cmp95272, label %for.body116, label %for.end128

for.body96:                                       ; preds = %for.end91, %for.inc111
  %indvars.iv290 = phi i64 [ %indvars.iv.next291, %for.inc111 ], [ 0, %for.end91 ]
  %J.2274 = phi i32 [ %inc112, %for.inc111 ], [ 0, %for.end91 ]
  %nnew.0273 = phi i32 [ %nnew.1, %for.inc111 ], [ 0, %for.end91 ]
  %arrayidx98 = getelementptr inbounds i32* %call27, i64 %indvars.iv290
  %18 = load i32* %arrayidx98, align 4, !tbaa !0
  %19 = trunc i64 %indvars.iv290 to i32
  %cmp99 = icmp eq i32 %18, %19
  br i1 %cmp99, label %if.then100, label %while.cond

if.then100:                                       ; preds = %for.body96
  %inc = add nsw i32 %nnew.0273, 1
  %arrayidx102 = getelementptr inbounds i32* %call93, i64 %indvars.iv290
  store i32 %nnew.0273, i32* %arrayidx102, align 4, !tbaa !0
  br label %for.inc111

while.cond:                                       ; preds = %for.body96, %while.cond
  %K.1 = phi i32 [ %20, %while.cond ], [ %J.2274, %for.body96 ]
  %idxprom103 = sext i32 %K.1 to i64
  %arrayidx104 = getelementptr inbounds i32* %call27, i64 %idxprom103
  %20 = load i32* %arrayidx104, align 4, !tbaa !0
  %cmp105 = icmp eq i32 %20, %K.1
  br i1 %cmp105, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 %K.1, i32* %arrayidx98, align 4, !tbaa !0
  br label %for.inc111

for.inc111:                                       ; preds = %if.then100, %while.end
  %nnew.1 = phi i32 [ %inc, %if.then100 ], [ %nnew.0273, %while.end ]
  %indvars.iv.next291 = add i64 %indvars.iv290, 1
  %inc112 = add nsw i32 %J.2274, 1
  %lftr.wideiv292 = trunc i64 %indvars.iv.next291 to i32
  %exitcond293 = icmp eq i32 %lftr.wideiv292, %0
  br i1 %exitcond293, label %for.cond114.preheader, label %for.body96

for.body116:                                      ; preds = %for.cond114.preheader, %for.inc126
  %indvars.iv286 = phi i64 [ %indvars.iv.next287, %for.inc126 ], [ 0, %for.cond114.preheader ]
  %arrayidx118 = getelementptr inbounds i32* %call27, i64 %indvars.iv286
  %21 = load i32* %arrayidx118, align 4, !tbaa !0
  %22 = trunc i64 %indvars.iv286 to i32
  %cmp119 = icmp eq i32 %21, %22
  br i1 %cmp119, label %for.inc126, label %if.then120

if.then120:                                       ; preds = %for.body116
  %idxprom121 = sext i32 %21 to i64
  %arrayidx122 = getelementptr inbounds i32* %call93, i64 %idxprom121
  %23 = load i32* %arrayidx122, align 4, !tbaa !0
  %arrayidx124 = getelementptr inbounds i32* %call93, i64 %indvars.iv286
  store i32 %23, i32* %arrayidx124, align 4, !tbaa !0
  br label %for.inc126

for.inc126:                                       ; preds = %for.body116, %if.then120
  %indvars.iv.next287 = add i64 %indvars.iv286, 1
  %lftr.wideiv288 = trunc i64 %indvars.iv.next287 to i32
  %exitcond289 = icmp eq i32 %lftr.wideiv288, %0
  br i1 %exitcond289, label %for.end128, label %for.body116

for.end128:                                       ; preds = %for.end91, %for.inc126, %for.cond114.preheader
  %nnew.0.lcssa294 = phi i32 [ %nnew.1, %for.cond114.preheader ], [ %nnew.1, %for.inc126 ], [ 0, %for.end91 ]
  %call129 = tail call %struct._ETree* @ETree_compress(%struct._ETree* %etree, %struct._IV* %call92) #4
  %call130 = tail call i32* @IVinit(i32 %0, i32 0) #4
  tail call void @IVcopy(i32 %0, i32* %call130, i32* %call20) #4
  tail call void @IV_setSize(%struct._IV* %nzerosIV, i32 %nnew.0.lcssa294) #4
  %call131 = tail call i32* @IV_entries(%struct._IV* %nzerosIV) #4
  br i1 %cmp95272, label %for.body134, label %for.end148

for.body134:                                      ; preds = %for.end128, %for.inc146
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc146 ], [ 0, %for.end128 ]
  %arrayidx136 = getelementptr inbounds i32* %call27, i64 %indvars.iv
  %24 = load i32* %arrayidx136, align 4, !tbaa !0
  %25 = trunc i64 %indvars.iv to i32
  %cmp137 = icmp eq i32 %24, %25
  br i1 %cmp137, label %if.then138, label %for.inc146

if.then138:                                       ; preds = %for.body134
  %arrayidx140 = getelementptr inbounds i32* %call130, i64 %indvars.iv
  %26 = load i32* %arrayidx140, align 4, !tbaa !0
  %arrayidx142 = getelementptr inbounds i32* %call93, i64 %indvars.iv
  %27 = load i32* %arrayidx142, align 4, !tbaa !0
  %idxprom143 = sext i32 %27 to i64
  %arrayidx144 = getelementptr inbounds i32* %call131, i64 %idxprom143
  store i32 %26, i32* %arrayidx144, align 4, !tbaa !0
  br label %for.inc146

for.inc146:                                       ; preds = %for.body134, %if.then138
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %0
  br i1 %exitcond, label %for.end148, label %for.body134

for.end148:                                       ; preds = %for.inc146, %for.end128
  tail call void @IVfree(i32* %call130) #4
  tail call void @IVfree(i32* %call24) #4
  tail call void @IVfree(i32* %call27) #4
  tail call void @IV_free(%struct._IV* %call92) #4
  ret %struct._ETree* %call129
}

; Function Attrs: nounwind optsize uwtable
define %struct._ETree* @ETree_mergeFrontsAny(%struct._ETree* %etree, i32 %maxzeros, %struct._IV* %nzerosIV) #0 {
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
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([57 x i8]* @.str7, i64 0, i64 0), %struct._ETree* %etree, i32 %maxzeros) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false3
  %call6 = tail call i32 @IV_size(%struct._IV* %nzerosIV) #4
  %cmp7 = icmp eq i32 %call6, %0
  br i1 %cmp7, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call9 = tail call i32 @IV_size(%struct._IV* %nzerosIV) #4
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([83 x i8]* @.str8, i64 0, i64 0), %struct._ETree* %etree, i32 %maxzeros, %struct._IV* %nzerosIV, i32 %call9, i32 %0) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32* @IV_entries(%struct._IV* %nzerosIV) #4
  %tree13 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2
  %4 = load %struct._Tree** %tree13, align 8, !tbaa !3
  %call14 = tail call i32* @IVinit(i32 %0, i32 0) #4
  %call15 = tail call i32* @IVinit(i32 %0, i32 0) #4
  %call16 = tail call i32* @IVinit(i32 %0, i32 -1) #4
  %call17 = tail call i32* @IVinit(i32 %0, i32 -1) #4
  %call18 = tail call i32* @IVinit(i32 %0, i32 -1) #4
  %par19 = getelementptr inbounds %struct._Tree* %4, i64 0, i32 2
  %5 = load i32** %par19, align 8, !tbaa !3
  tail call void @IVcopy(i32 %0, i32* %call16, i32* %5) #4
  %fch20 = getelementptr inbounds %struct._Tree* %4, i64 0, i32 3
  %6 = load i32** %fch20, align 8, !tbaa !3
  tail call void @IVcopy(i32 %0, i32* %call17, i32* %6) #4
  %sib21 = getelementptr inbounds %struct._Tree* %4, i64 0, i32 4
  %7 = load i32** %sib21, align 8, !tbaa !3
  tail call void @IVcopy(i32 %0, i32* %call18, i32* %7) #4
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3
  %8 = load %struct._IV** %nodwghtsIV, align 8, !tbaa !3
  %call22 = tail call i32* @IV_entries(%struct._IV* %8) #4
  tail call void @IVcopy(i32 %0, i32* %call14, i32* %call22) #4
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4
  %9 = load %struct._IV** %bndwghtsIV, align 8, !tbaa !3
  %call23 = tail call i32* @IV_entries(%struct._IV* %9) #4
  tail call void @IVcopy(i32 %0, i32* %call15, i32* %call23) #4
  %call24 = tail call i32* @IVinit(i32 %0, i32 -1) #4
  tail call void @IVramp(i32 %0, i32* %call24, i32 0, i32 1) #4
  %call25 = tail call i32* @IVinit(i32 %0, i32 0) #4
  %call26 = tail call i32 @Tree_postOTfirst(%struct._Tree* %4) #4
  %cmp27184 = icmp eq i32 %call26, -1
  br i1 %cmp27184, label %for.end, label %for.body

for.body:                                         ; preds = %if.end11, %visitAny.exit
  %J.0185 = phi i32 [ %call28, %visitAny.exit ], [ %call26, %if.end11 ]
  %idxprom.i = sext i32 %J.0185 to i64
  %arrayidx52.i = getelementptr inbounds i32* %call16, i64 %idxprom.i
  %arrayidx.i = getelementptr inbounds i32* %call17, i64 %idxprom.i
  %10 = load i32* %arrayidx.i, align 4, !tbaa !0
  %cmp225.i = icmp eq i32 %10, -1
  br i1 %cmp225.i, label %visitAny.exit, label %for.cond.preheader.lr.ph.i

for.cond.preheader.lr.ph.i:                       ; preds = %for.body
  %arrayidx41.i = getelementptr inbounds i32* %call12, i64 %idxprom.i
  %arrayidx116.i = getelementptr inbounds i32* %call14, i64 %idxprom.i
  %arrayidx11.i = getelementptr inbounds i32* %call15, i64 %idxprom.i
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end110.i, %for.cond.preheader.lr.ph.i
  %11 = phi i32 [ %10, %for.cond.preheader.lr.ph.i ], [ %36, %if.end110.i ]
  %cmp3212.i = icmp eq i32 %11, -1
  br i1 %cmp3212.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.preheader.i, %for.inc.i
  %bestJ.0214.i = phi i32 [ %bestJ.1.i, %for.inc.i ], [ -1, %for.cond.preheader.i ]
  %J.0213.i = phi i32 [ %20, %for.inc.i ], [ %11, %for.cond.preheader.i ]
  %idxprom4.i = sext i32 %J.0213.i to i64
  %arrayidx5.i = getelementptr inbounds i32* %call12, i64 %idxprom4.i
  %12 = load i32* %arrayidx5.i, align 4, !tbaa !0
  %arrayidx7.i = getelementptr inbounds i32* %call14, i64 %idxprom4.i
  %13 = load i32* %arrayidx7.i, align 4, !tbaa !0
  %14 = load i32* %arrayidx116.i, align 4, !tbaa !0
  %15 = load i32* %arrayidx11.i, align 4, !tbaa !0
  %add.i = add nsw i32 %15, %14
  %arrayidx13.i = getelementptr inbounds i32* %call15, i64 %idxprom4.i
  %16 = load i32* %arrayidx13.i, align 4, !tbaa !0
  %sub.i = sub i32 %add.i, %16
  %mul.i = mul nsw i32 %sub.i, %13
  %add14.i = add nsw i32 %mul.i, %12
  %arrayidx16.i = getelementptr inbounds i32* %call25, i64 %idxprom4.i
  store i32 %add14.i, i32* %arrayidx16.i, align 4, !tbaa !0
  %cmp17.i = icmp eq i32 %bestJ.0214.i, -1
  br i1 %cmp17.i, label %if.then34.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %idxprom20.i = sext i32 %bestJ.0214.i to i64
  %arrayidx21.i = getelementptr inbounds i32* %call25, i64 %idxprom20.i
  %17 = load i32* %arrayidx21.i, align 4, !tbaa !0
  %cmp22.i = icmp slt i32 %add14.i, %17
  br i1 %cmp22.i, label %if.then34.i, label %lor.lhs.false23.i

lor.lhs.false23.i:                                ; preds = %lor.lhs.false.i
  %cmp28.i = icmp eq i32 %add14.i, %17
  br i1 %cmp28.i, label %land.lhs.true.i, label %for.inc.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false23.i
  %18 = load i32* %arrayidx7.i, align 4, !tbaa !0
  %arrayidx32.i = getelementptr inbounds i32* %call14, i64 %idxprom20.i
  %19 = load i32* %arrayidx32.i, align 4, !tbaa !0
  %cmp33.i = icmp slt i32 %18, %19
  br i1 %cmp33.i, label %if.then34.i, label %for.inc.i

if.then34.i:                                      ; preds = %land.lhs.true.i, %lor.lhs.false.i, %for.body.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then34.i, %land.lhs.true.i, %lor.lhs.false23.i
  %bestJ.1.i = phi i32 [ %J.0213.i, %if.then34.i ], [ %bestJ.0214.i, %land.lhs.true.i ], [ %bestJ.0214.i, %lor.lhs.false23.i ]
  %arrayidx37.i = getelementptr inbounds i32* %call18, i64 %idxprom4.i
  %20 = load i32* %arrayidx37.i, align 4, !tbaa !0
  %cmp3.i = icmp eq i32 %20, -1
  br i1 %cmp3.i, label %for.end.i, label %for.body.i

for.end.i:                                        ; preds = %for.inc.i, %for.cond.preheader.i
  %bestJ.0.lcssa.i = phi i32 [ -1, %for.cond.preheader.i ], [ %bestJ.1.i, %for.inc.i ]
  %idxprom38.i = sext i32 %bestJ.0.lcssa.i to i64
  %arrayidx39.i = getelementptr inbounds i32* %call25, i64 %idxprom38.i
  %21 = load i32* %arrayidx39.i, align 4, !tbaa !0
  %22 = load i32* %arrayidx41.i, align 4, !tbaa !0
  %add42.i = add nsw i32 %22, %21
  %cmp43.i = icmp sgt i32 %add42.i, %maxzeros
  br i1 %cmp43.i, label %visitAny.exit, label %lor.lhs.false44.i

lor.lhs.false44.i:                                ; preds = %for.end.i
  %23 = load i32* %arrayidx.i, align 4, !tbaa !0
  %idxprom47.i = sext i32 %23 to i64
  %arrayidx48.i = getelementptr inbounds i32* %call18, i64 %idxprom47.i
  %24 = load i32* %arrayidx48.i, align 4, !tbaa !0
  %cmp49.i = icmp eq i32 %24, -1
  br i1 %cmp49.i, label %for.cond58.preheader.i, label %land.lhs.true50.i

land.lhs.true50.i:                                ; preds = %lor.lhs.false44.i
  %25 = load i32* %arrayidx52.i, align 4, !tbaa !0
  %cmp53.i = icmp eq i32 %25, -1
  br i1 %cmp53.i, label %visitAny.exit, label %for.cond58.preheader.i

for.cond58.preheader.i:                           ; preds = %land.lhs.true50.i, %lor.lhs.false44.i
  %cmp59216.i = icmp eq i32 %23, %bestJ.0.lcssa.i
  br i1 %cmp59216.i, label %for.end64.i, label %for.body60.i.preheader

for.body60.i.preheader:                           ; preds = %for.cond58.preheader.i
  %cmp59.i181 = icmp eq i32 %24, %bestJ.0.lcssa.i
  br i1 %cmp59.i181, label %for.end64.i, label %for.body60.for.body60_crit_edge.i

for.body60.for.body60_crit_edge.i:                ; preds = %for.body60.i.preheader, %for.body60.for.body60_crit_edge.i
  %J.1.i182 = phi i32 [ %J.1.pre.i, %for.body60.for.body60_crit_edge.i ], [ %24, %for.body60.i.preheader ]
  %idxprom62.phi.trans.insert.i = sext i32 %J.1.i182 to i64
  %arrayidx63.phi.trans.insert.i = getelementptr inbounds i32* %call18, i64 %idxprom62.phi.trans.insert.i
  %J.1.pre.i = load i32* %arrayidx63.phi.trans.insert.i, align 4
  %cmp59.i = icmp eq i32 %J.1.pre.i, %bestJ.0.lcssa.i
  br i1 %cmp59.i, label %for.end64.i, label %for.body60.for.body60_crit_edge.i

for.end64.i:                                      ; preds = %for.body60.i.preheader, %for.body60.for.body60_crit_edge.i, %for.cond58.preheader.i
  %prevJ.0.lcssa.i = phi i32 [ -1, %for.cond58.preheader.i ], [ %23, %for.body60.i.preheader ], [ %J.1.i182, %for.body60.for.body60_crit_edge.i ]
  %arrayidx66.i = getelementptr inbounds i32* %call18, i64 %idxprom38.i
  %26 = load i32* %arrayidx66.i, align 4, !tbaa !0
  %arrayidx68.i = getelementptr inbounds i32* %call17, i64 %idxprom38.i
  %27 = load i32* %arrayidx68.i, align 4, !tbaa !0
  %cmp69.i = icmp eq i32 %27, -1
  br i1 %cmp69.i, label %if.then70.i, label %if.else78.i

if.then70.i:                                      ; preds = %for.end64.i
  %cmp71.i = icmp eq i32 %prevJ.0.lcssa.i, -1
  br i1 %cmp71.i, label %if.then72.i, label %if.else.i

if.then72.i:                                      ; preds = %if.then70.i
  store i32 %26, i32* %arrayidx.i, align 4, !tbaa !0
  br label %if.end110.i

if.else.i:                                        ; preds = %if.then70.i
  %idxprom75.i = sext i32 %prevJ.0.lcssa.i to i64
  %arrayidx76.i = getelementptr inbounds i32* %call18, i64 %idxprom75.i
  store i32 %26, i32* %arrayidx76.i, align 4, !tbaa !0
  br label %if.end110.i

if.else78.i:                                      ; preds = %for.end64.i
  %idxprom81.i = sext i32 %27 to i64
  %arrayidx82.i = getelementptr inbounds i32* %call16, i64 %idxprom81.i
  store i32 %J.0185, i32* %arrayidx82.i, align 4, !tbaa !0
  %arrayidx84.i = getelementptr inbounds i32* %call18, i64 %idxprom81.i
  %28 = load i32* %arrayidx84.i, align 4, !tbaa !0
  %cmp85.i = icmp eq i32 %28, -1
  br i1 %cmp85.i, label %if.end96.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.else78.i
  %idxprom87219.i = sext i32 %28 to i64
  %arrayidx88220.i = getelementptr inbounds i32* %call18, i64 %idxprom87219.i
  %29 = load i32* %arrayidx88220.i, align 4, !tbaa !0
  %cmp89221.i = icmp eq i32 %29, -1
  %arrayidx91222.i = getelementptr inbounds i32* %call16, i64 %idxprom87219.i
  store i32 %J.0185, i32* %arrayidx91222.i, align 4, !tbaa !0
  br i1 %cmp89221.i, label %if.end96.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.preheader.i, %while.body.i
  %arrayidx88223.i = phi i32* [ %arrayidx88.i, %while.body.i ], [ %arrayidx88220.i, %while.cond.preheader.i ]
  %30 = load i32* %arrayidx88223.i, align 4, !tbaa !0
  %idxprom87.i = sext i32 %30 to i64
  %arrayidx88.i = getelementptr inbounds i32* %call18, i64 %idxprom87.i
  %31 = load i32* %arrayidx88.i, align 4, !tbaa !0
  %cmp89.i = icmp eq i32 %31, -1
  %arrayidx91.i = getelementptr inbounds i32* %call16, i64 %idxprom87.i
  store i32 %J.0185, i32* %arrayidx91.i, align 4, !tbaa !0
  br i1 %cmp89.i, label %if.end96.i, label %while.body.i

if.end96.i:                                       ; preds = %while.body.i, %while.cond.preheader.i, %if.else78.i
  %lastI.1.i = phi i32 [ -1, %if.else78.i ], [ %28, %while.cond.preheader.i ], [ %30, %while.body.i ]
  %cmp97.i = icmp eq i32 %prevJ.0.lcssa.i, -1
  br i1 %cmp97.i, label %if.then98.i, label %if.else101.i

if.then98.i:                                      ; preds = %if.end96.i
  store i32 %27, i32* %arrayidx.i, align 4, !tbaa !0
  br label %if.end104.i

if.else101.i:                                     ; preds = %if.end96.i
  %idxprom102.i = sext i32 %prevJ.0.lcssa.i to i64
  %arrayidx103.i = getelementptr inbounds i32* %call18, i64 %idxprom102.i
  store i32 %27, i32* %arrayidx103.i, align 4, !tbaa !0
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.else101.i, %if.then98.i
  %cmp105.i = icmp eq i32 %lastI.1.i, -1
  br i1 %cmp105.i, label %if.end110.i, label %if.then106.i

if.then106.i:                                     ; preds = %if.end104.i
  %idxprom107.i = sext i32 %lastI.1.i to i64
  %arrayidx108.i = getelementptr inbounds i32* %call18, i64 %idxprom107.i
  store i32 %26, i32* %arrayidx108.i, align 4, !tbaa !0
  br label %if.end110.i

if.end110.i:                                      ; preds = %if.then106.i, %if.end104.i, %if.else.i, %if.then72.i
  %arrayidx112.i = getelementptr inbounds i32* %call24, i64 %idxprom38.i
  store i32 %J.0185, i32* %arrayidx112.i, align 4, !tbaa !0
  %arrayidx114.i = getelementptr inbounds i32* %call14, i64 %idxprom38.i
  %32 = load i32* %arrayidx114.i, align 4, !tbaa !0
  %33 = load i32* %arrayidx116.i, align 4, !tbaa !0
  %add117.i = add nsw i32 %33, %32
  store i32 %add117.i, i32* %arrayidx116.i, align 4, !tbaa !0
  %34 = load i32* %arrayidx39.i, align 4, !tbaa !0
  %35 = load i32* %arrayidx41.i, align 4, !tbaa !0
  %add122.i = add nsw i32 %35, %34
  store i32 %add122.i, i32* %arrayidx41.i, align 4, !tbaa !0
  %36 = load i32* %arrayidx.i, align 4, !tbaa !0
  %cmp.i = icmp eq i32 %36, -1
  br i1 %cmp.i, label %visitAny.exit, label %for.cond.preheader.i

visitAny.exit:                                    ; preds = %for.end.i, %land.lhs.true50.i, %if.end110.i, %for.body
  %call28 = tail call i32 @Tree_postOTnext(%struct._Tree* %4, i32 %J.0185) #4
  %cmp27 = icmp eq i32 %call28, -1
  br i1 %cmp27, label %for.end, label %for.body

for.end:                                          ; preds = %visitAny.exit, %if.end11
  %call29 = tail call %struct._IV* @IV_new() #4
  tail call void @IV_init(%struct._IV* %call29, i32 %0, i32* null) #4
  %call30 = tail call i32* @IV_entries(%struct._IV* %call29) #4
  %call31 = tail call i32* @IVinit(i32 %0, i32 -1) #4
  %cmp33178 = icmp sgt i32 %0, 0
  br i1 %cmp33178, label %for.body34, label %for.end61

for.cond50.preheader:                             ; preds = %for.inc47
  br i1 %cmp33178, label %for.body52, label %for.end61

for.body34:                                       ; preds = %for.end, %for.inc47
  %indvars.iv192 = phi i64 [ %indvars.iv.next193, %for.inc47 ], [ 0, %for.end ]
  %J.1180 = phi i32 [ %inc48, %for.inc47 ], [ 0, %for.end ]
  %nnew.0179 = phi i32 [ %nnew.1, %for.inc47 ], [ 0, %for.end ]
  %arrayidx = getelementptr inbounds i32* %call24, i64 %indvars.iv192
  %37 = load i32* %arrayidx, align 4, !tbaa !0
  %38 = trunc i64 %indvars.iv192 to i32
  %cmp35 = icmp eq i32 %37, %38
  br i1 %cmp35, label %if.else, label %while.cond

while.cond:                                       ; preds = %for.body34, %while.cond
  %K.0 = phi i32 [ %39, %while.cond ], [ %J.1180, %for.body34 ]
  %idxprom37 = sext i32 %K.0 to i64
  %arrayidx38 = getelementptr inbounds i32* %call24, i64 %idxprom37
  %39 = load i32* %arrayidx38, align 4, !tbaa !0
  %cmp39 = icmp eq i32 %39, %K.0
  br i1 %cmp39, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 %K.0, i32* %arrayidx, align 4, !tbaa !0
  br label %for.inc47

if.else:                                          ; preds = %for.body34
  %inc = add nsw i32 %nnew.0179, 1
  %arrayidx45 = getelementptr inbounds i32* %call31, i64 %indvars.iv192
  store i32 %nnew.0179, i32* %arrayidx45, align 4, !tbaa !0
  br label %for.inc47

for.inc47:                                        ; preds = %while.end, %if.else
  %nnew.1 = phi i32 [ %nnew.0179, %while.end ], [ %inc, %if.else ]
  %indvars.iv.next193 = add i64 %indvars.iv192, 1
  %inc48 = add nsw i32 %J.1180, 1
  %lftr.wideiv194 = trunc i64 %indvars.iv.next193 to i32
  %exitcond195 = icmp eq i32 %lftr.wideiv194, %0
  br i1 %exitcond195, label %for.cond50.preheader, label %for.body34

for.body52:                                       ; preds = %for.cond50.preheader, %for.body52
  %indvars.iv188 = phi i64 [ %indvars.iv.next189, %for.body52 ], [ 0, %for.cond50.preheader ]
  %arrayidx54 = getelementptr inbounds i32* %call24, i64 %indvars.iv188
  %40 = load i32* %arrayidx54, align 4, !tbaa !0
  %idxprom55 = sext i32 %40 to i64
  %arrayidx56 = getelementptr inbounds i32* %call31, i64 %idxprom55
  %41 = load i32* %arrayidx56, align 4, !tbaa !0
  %arrayidx58 = getelementptr inbounds i32* %call30, i64 %indvars.iv188
  store i32 %41, i32* %arrayidx58, align 4, !tbaa !0
  %indvars.iv.next189 = add i64 %indvars.iv188, 1
  %lftr.wideiv190 = trunc i64 %indvars.iv.next189 to i32
  %exitcond191 = icmp eq i32 %lftr.wideiv190, %0
  br i1 %exitcond191, label %for.end61, label %for.body52

for.end61:                                        ; preds = %for.end, %for.body52, %for.cond50.preheader
  %nnew.0.lcssa196 = phi i32 [ %nnew.1, %for.cond50.preheader ], [ %nnew.1, %for.body52 ], [ 0, %for.end ]
  %call62 = tail call %struct._ETree* @ETree_compress(%struct._ETree* %etree, %struct._IV* %call29) #4
  %call63 = tail call i32* @IVinit(i32 %0, i32 0) #4
  tail call void @IVcopy(i32 %0, i32* %call63, i32* %call12) #4
  tail call void @IV_setSize(%struct._IV* %nzerosIV, i32 %nnew.0.lcssa196) #4
  %call64 = tail call i32* @IV_entries(%struct._IV* %nzerosIV) #4
  br i1 %cmp33178, label %for.body67, label %for.end81

for.body67:                                       ; preds = %for.end61, %for.inc79
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc79 ], [ 0, %for.end61 ]
  %arrayidx69 = getelementptr inbounds i32* %call24, i64 %indvars.iv
  %42 = load i32* %arrayidx69, align 4, !tbaa !0
  %43 = trunc i64 %indvars.iv to i32
  %cmp70 = icmp eq i32 %42, %43
  br i1 %cmp70, label %if.then71, label %for.inc79

if.then71:                                        ; preds = %for.body67
  %arrayidx73 = getelementptr inbounds i32* %call63, i64 %indvars.iv
  %44 = load i32* %arrayidx73, align 4, !tbaa !0
  %arrayidx75 = getelementptr inbounds i32* %call30, i64 %indvars.iv
  %45 = load i32* %arrayidx75, align 4, !tbaa !0
  %idxprom76 = sext i32 %45 to i64
  %arrayidx77 = getelementptr inbounds i32* %call64, i64 %idxprom76
  store i32 %44, i32* %arrayidx77, align 4, !tbaa !0
  br label %for.inc79

for.inc79:                                        ; preds = %for.body67, %if.then71
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %0
  br i1 %exitcond, label %for.end81, label %for.body67

for.end81:                                        ; preds = %for.inc79, %for.end61
  tail call void @IVfree(i32* %call63) #4
  tail call void @IVfree(i32* %call16) #4
  tail call void @IVfree(i32* %call17) #4
  tail call void @IVfree(i32* %call18) #4
  tail call void @IVfree(i32* %call14) #4
  tail call void @IVfree(i32* %call15) #4
  tail call void @IVfree(i32* %call24) #4
  tail call void @IVfree(i32* %call25) #4
  tail call void @IVfree(i32* %call31) #4
  tail call void @IV_free(%struct._IV* %call29) #4
  ret %struct._ETree* %call62
}

; Function Attrs: nounwind optsize uwtable
define %struct._ETree* @ETree_splitFronts(%struct._ETree* %etree, i32* %vwghts, i32 %maxfrontsize, i32 %seed) #0 {
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
  %cmp7 = icmp slt i32 %maxfrontsize, 1
  %or.cond321 = or i1 %cmp5, %cmp7
  br i1 %or.cond321, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([60 x i8]* @.str9, i64 0, i64 0), %struct._ETree* %etree, i32* %vwghts, i32 %maxfrontsize, i32 %seed) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false3
  %tree8 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2
  %3 = load %struct._Tree** %tree8, align 8, !tbaa !3
  %fch9 = getelementptr inbounds %struct._Tree* %3, i64 0, i32 3
  %4 = load i32** %fch9, align 8, !tbaa !3
  %sib10 = getelementptr inbounds %struct._Tree* %3, i64 0, i32 4
  %5 = load i32** %sib10, align 8, !tbaa !3
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3
  %6 = load %struct._IV** %nodwghtsIV, align 8, !tbaa !3
  %call11 = tail call i32* @IV_entries(%struct._IV* %6) #4
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4
  %7 = load %struct._IV** %bndwghtsIV, align 8, !tbaa !3
  %call12 = tail call i32* @IV_entries(%struct._IV* %7) #4
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5
  %8 = load %struct._IV** %vtxToFrontIV, align 8, !tbaa !3
  %call13 = tail call i32* @IV_entries(%struct._IV* %8) #4
  %call14 = tail call i32* @IVinit(i32 %1, i32 -1) #4
  %call15 = tail call i32* @IVinit(i32 %0, i32 -1) #4
  %call16 = tail call i32* @IVinit(i32 %1, i32 -1) #4
  %call17 = tail call i32* @IVinit(i32 %1, i32 -1) #4
  %call18 = tail call i32* @IVinit(i32 %1, i32 -1) #4
  %call19 = tail call i32* @IVinit(i32 %0, i32 -1) #4
  %call20 = tail call i32* @IVinit(i32 %1, i32 -1) #4
  %call21 = tail call i32* @IVinit(i32 %1, i32 -1) #4
  %cmp22355 = icmp sgt i32 %1, 0
  br i1 %cmp22355, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv369 = phi i64 [ %indvars.iv.next370, %for.body ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds i32* %call13, i64 %indvars.iv369
  %9 = load i32* %arrayidx, align 4, !tbaa !0
  %idxprom23 = sext i32 %9 to i64
  %arrayidx24 = getelementptr inbounds i32* %call19, i64 %idxprom23
  %10 = load i32* %arrayidx24, align 4, !tbaa !0
  %arrayidx26 = getelementptr inbounds i32* %call20, i64 %indvars.iv369
  store i32 %10, i32* %arrayidx26, align 4, !tbaa !0
  %11 = trunc i64 %indvars.iv369 to i32
  store i32 %11, i32* %arrayidx24, align 4, !tbaa !0
  %indvars.iv.next370 = add i64 %indvars.iv369, 1
  %lftr.wideiv371 = trunc i64 %indvars.iv.next370 to i32
  %exitcond372 = icmp eq i32 %lftr.wideiv371, %1
  br i1 %exitcond372, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  %call29 = tail call i32 @Tree_postOTfirst(%struct._Tree* %3) #4
  %cmp31350 = icmp eq i32 %call29, -1
  br i1 %cmp31350, label %for.end165, label %for.body32.lr.ph

for.body32.lr.ph:                                 ; preds = %for.end
  %add96 = add i32 %maxfrontsize, -1
  %cmp107 = icmp sgt i32 %seed, 0
  %cmp117 = icmp eq i32* %vwghts, null
  br label %for.body32

for.body32:                                       ; preds = %for.body32.lr.ph, %for.inc163
  %J.0353 = phi i32 [ %call29, %for.body32.lr.ph ], [ %call164, %for.inc163 ]
  %Jnew.0352 = phi i32 [ undef, %for.body32.lr.ph ], [ %Jnew.2, %for.inc163 ]
  %nfront2.0351 = phi i32 [ 0, %for.body32.lr.ph ], [ %nfront2.2, %for.inc163 ]
  %idxprom33 = sext i32 %J.0353 to i64
  %arrayidx34 = getelementptr inbounds i32* %call19, i64 %idxprom33
  %v.1322 = load i32* %arrayidx34, align 4
  %cmp36323 = icmp eq i32 %v.1322, -1
  br i1 %cmp36323, label %for.end47, label %for.body37

for.body37:                                       ; preds = %for.body32, %cond.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %cond.end ], [ 0, %for.body32 ]
  %v.1326 = phi i32 [ %v.1, %cond.end ], [ %v.1322, %for.body32 ]
  %count.0325 = phi i32 [ %inc38, %cond.end ], [ 0, %for.body32 ]
  %sizeJ.0324 = phi i32 [ %add, %cond.end ], [ 0, %for.body32 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc38 = add nsw i32 %count.0325, 1
  %arrayidx40 = getelementptr inbounds i32* %call21, i64 %indvars.iv
  store i32 %v.1326, i32* %arrayidx40, align 4, !tbaa !0
  %idxprom45.pre = sext i32 %v.1326 to i64
  br i1 %cmp117, label %cond.end, label %cond.true

cond.true:                                        ; preds = %for.body37
  %arrayidx43 = getelementptr inbounds i32* %vwghts, i64 %idxprom45.pre
  %12 = load i32* %arrayidx43, align 4, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %for.body37, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ 1, %for.body37 ]
  %add = add nsw i32 %cond, %sizeJ.0324
  %arrayidx46 = getelementptr inbounds i32* %call20, i64 %idxprom45.pre
  %v.1 = load i32* %arrayidx46, align 4
  %cmp36 = icmp eq i32 %v.1, -1
  br i1 %cmp36, label %for.end47, label %for.body37

for.end47:                                        ; preds = %cond.end, %for.body32
  %count.0.lcssa = phi i32 [ 0, %for.body32 ], [ %inc38, %cond.end ]
  %sizeJ.0.lcssa = phi i32 [ 0, %for.body32 ], [ %add, %cond.end ]
  %arrayidx49 = getelementptr inbounds i32* %call11, i64 %idxprom33
  %13 = load i32* %arrayidx49, align 4, !tbaa !0
  %cmp50 = icmp eq i32 %sizeJ.0.lcssa, %13
  br i1 %cmp50, label %if.end55, label %if.then51

if.then51:                                        ; preds = %for.end47
  %14 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call54 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([83 x i8]* @.str10, i64 0, i64 0), %struct._ETree* %etree, i32* %vwghts, i32 %maxfrontsize, i32 %seed, i32 %J.0353, i32 %sizeJ.0.lcssa, i32 %13) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end55:                                         ; preds = %for.end47
  %cmp56 = icmp sgt i32 %sizeJ.0.lcssa, %maxfrontsize
  br i1 %cmp56, label %lor.lhs.false57, label %if.then61

lor.lhs.false57:                                  ; preds = %if.end55
  %arrayidx59 = getelementptr inbounds i32* %4, i64 %idxprom33
  %15 = load i32* %arrayidx59, align 4, !tbaa !0
  %cmp60 = icmp eq i32 %15, -1
  br i1 %cmp60, label %if.then61, label %if.else

if.then61:                                        ; preds = %if.end55, %lor.lhs.false57
  %inc62 = add nsw i32 %nfront2.0351, 1
  %cmp64343 = icmp sgt i32 %count.0.lcssa, 0
  br i1 %cmp64343, label %for.body65, label %for.end72

for.body65:                                       ; preds = %if.then61, %for.body65
  %indvars.iv364 = phi i64 [ %indvars.iv.next365, %for.body65 ], [ 0, %if.then61 ]
  %arrayidx67 = getelementptr inbounds i32* %call21, i64 %indvars.iv364
  %16 = load i32* %arrayidx67, align 4, !tbaa !0
  %idxprom68 = sext i32 %16 to i64
  %arrayidx69 = getelementptr inbounds i32* %call16, i64 %idxprom68
  store i32 %nfront2.0351, i32* %arrayidx69, align 4, !tbaa !0
  %indvars.iv.next365 = add i64 %indvars.iv364, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next365 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %count.0.lcssa
  br i1 %exitcond, label %for.end72, label %for.body65

for.end72:                                        ; preds = %for.body65, %if.then61
  %arrayidx74 = getelementptr inbounds i32* %4, i64 %idxprom33
  %I.0345 = load i32* %arrayidx74, align 4
  %cmp76346 = icmp eq i32 %I.0345, -1
  br i1 %cmp76346, label %for.end85, label %for.body77

for.body77:                                       ; preds = %for.end72, %for.body77
  %I.0347 = phi i32 [ %I.0, %for.body77 ], [ %I.0345, %for.end72 ]
  %idxprom78 = sext i32 %I.0347 to i64
  %arrayidx79 = getelementptr inbounds i32* %call15, i64 %idxprom78
  %17 = load i32* %arrayidx79, align 4, !tbaa !0
  %idxprom80 = sext i32 %17 to i64
  %arrayidx81 = getelementptr inbounds i32* %call14, i64 %idxprom80
  store i32 %nfront2.0351, i32* %arrayidx81, align 4, !tbaa !0
  %arrayidx84 = getelementptr inbounds i32* %5, i64 %idxprom78
  %I.0 = load i32* %arrayidx84, align 4
  %cmp76 = icmp eq i32 %I.0, -1
  br i1 %cmp76, label %for.end85, label %for.body77

for.end85:                                        ; preds = %for.body77, %for.end72
  %18 = load i32* %arrayidx49, align 4, !tbaa !0
  %idxprom88 = sext i32 %nfront2.0351 to i64
  %arrayidx89 = getelementptr inbounds i32* %call17, i64 %idxprom88
  store i32 %18, i32* %arrayidx89, align 4, !tbaa !0
  %arrayidx91 = getelementptr inbounds i32* %call12, i64 %idxprom33
  %19 = load i32* %arrayidx91, align 4, !tbaa !0
  %arrayidx93 = getelementptr inbounds i32* %call18, i64 %idxprom88
  store i32 %19, i32* %arrayidx93, align 4, !tbaa !0
  %arrayidx95 = getelementptr inbounds i32* %call15, i64 %idxprom33
  store i32 %nfront2.0351, i32* %arrayidx95, align 4, !tbaa !0
  br label %for.inc163

if.else:                                          ; preds = %lor.lhs.false57
  %sub = add i32 %add96, %sizeJ.0.lcssa
  %div = sdiv i32 %sub, %maxfrontsize
  %div97 = sdiv i32 %sizeJ.0.lcssa, %div
  %rem = srem i32 %sizeJ.0.lcssa, %div
  %not.cmp98 = icmp ne i32 %rem, 0
  %inc100 = zext i1 %not.cmp98 to i32
  %div97.inc100 = add nsw i32 %inc100, %div97
  %arrayidx105 = getelementptr inbounds i32* %call12, i64 %idxprom33
  %20 = load i32* %arrayidx105, align 4, !tbaa !0
  %add106 = add nsw i32 %20, %sizeJ.0.lcssa
  br i1 %cmp107, label %if.then108, label %while.cond.preheader

if.then108:                                       ; preds = %if.else
  tail call void @IVshuffle(i32 %count.0.lcssa, i32* %call21, i32 %seed) #4
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then108, %if.else
  %cmp110336 = icmp sgt i32 %count.0.lcssa, 0
  br i1 %cmp110336, label %while.body.lr.ph, label %while.end159

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %21 = sext i32 %nfront2.0351 to i64
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end153
  %indvars.iv362 = phi i64 [ %21, %while.body.lr.ph ], [ %indvars.iv.next363, %if.end153 ]
  %ii.1340 = phi i32 [ 0, %while.body.lr.ph ], [ %ii.2.lcssa, %if.end153 ]
  %nbnd.0339 = phi i32 [ %add106, %while.body.lr.ph ], [ %sub156, %if.end153 ]
  %nfront2.1338 = phi i32 [ %nfront2.0351, %while.body.lr.ph ], [ %inc111, %if.end153 ]
  %prev.0337 = phi i32 [ -1, %while.body.lr.ph ], [ %.pre-phi, %if.end153 ]
  %indvars.iv.next363 = add i64 %indvars.iv362, 1
  %inc111 = add nsw i32 %nfront2.1338, 1
  %cmp113328 = icmp slt i32 %ii.1340, %count.0.lcssa
  br i1 %cmp113328, label %while.body114.lr.ph, label %while.end

while.body114.lr.ph:                              ; preds = %while.body
  %22 = sext i32 %ii.1340 to i64
  br label %while.body114

while.body114:                                    ; preds = %while.body114.lr.ph, %if.then128
  %indvars.iv360 = phi i64 [ %22, %while.body114.lr.ph ], [ %indvars.iv.next361, %if.then128 ]
  %ii.2330 = phi i32 [ %ii.1340, %while.body114.lr.ph ], [ %inc132, %if.then128 ]
  %size.0329 = phi i32 [ 0, %while.body114.lr.ph ], [ %add124, %if.then128 ]
  %arrayidx116 = getelementptr inbounds i32* %call21, i64 %indvars.iv360
  %23 = load i32* %arrayidx116, align 4, !tbaa !0
  br i1 %cmp117, label %cond.end122, label %cond.true118

cond.true118:                                     ; preds = %while.body114
  %idxprom119 = sext i32 %23 to i64
  %arrayidx120 = getelementptr inbounds i32* %vwghts, i64 %idxprom119
  %24 = load i32* %arrayidx120, align 4, !tbaa !0
  br label %cond.end122

cond.end122:                                      ; preds = %while.body114, %cond.true118
  %cond123 = phi i32 [ %24, %cond.true118 ], [ 1, %while.body114 ]
  %add124 = add nsw i32 %cond123, %size.0329
  %cmp125 = icmp sge i32 %div97.inc100, %add124
  %cmp127 = icmp eq i32 %size.0329, 0
  %or.cond = or i1 %cmp125, %cmp127
  br i1 %or.cond, label %if.then128, label %while.end

if.then128:                                       ; preds = %cond.end122
  %idxprom129 = sext i32 %23 to i64
  %arrayidx130 = getelementptr inbounds i32* %call16, i64 %idxprom129
  %25 = trunc i64 %indvars.iv362 to i32
  store i32 %25, i32* %arrayidx130, align 4, !tbaa !0
  %indvars.iv.next361 = add i64 %indvars.iv360, 1
  %inc132 = add nsw i32 %ii.2330, 1
  %26 = trunc i64 %indvars.iv.next361 to i32
  %cmp113 = icmp slt i32 %26, %count.0.lcssa
  br i1 %cmp113, label %while.body114, label %while.end

while.end:                                        ; preds = %if.then128, %cond.end122, %while.body
  %ii.2.lcssa = phi i32 [ %ii.1340, %while.body ], [ %ii.2330, %cond.end122 ], [ %inc132, %if.then128 ]
  %size.0.lcssa = phi i32 [ 0, %while.body ], [ %size.0329, %cond.end122 ], [ %add124, %if.then128 ]
  %cmp135 = icmp eq i32 %prev.0337, -1
  br i1 %cmp135, label %for.cond139.preheader, label %if.else150

for.cond139.preheader:                            ; preds = %while.end
  %I.1333 = load i32* %arrayidx59, align 4
  %cmp140334 = icmp eq i32 %I.1333, -1
  br i1 %cmp140334, label %for.cond139.preheader.if.end153.loopexit_crit_edge, label %for.body141

for.cond139.preheader.if.end153.loopexit_crit_edge: ; preds = %for.cond139.preheader
  %.pre.pre = trunc i64 %indvars.iv362 to i32
  br label %if.end153

for.body141:                                      ; preds = %for.cond139.preheader, %for.body141
  %I.1335 = phi i32 [ %I.1, %for.body141 ], [ %I.1333, %for.cond139.preheader ]
  %idxprom142 = sext i32 %I.1335 to i64
  %arrayidx143 = getelementptr inbounds i32* %call15, i64 %idxprom142
  %27 = load i32* %arrayidx143, align 4, !tbaa !0
  %idxprom144 = sext i32 %27 to i64
  %arrayidx145 = getelementptr inbounds i32* %call14, i64 %idxprom144
  %28 = trunc i64 %indvars.iv362 to i32
  store i32 %28, i32* %arrayidx145, align 4, !tbaa !0
  %arrayidx148 = getelementptr inbounds i32* %5, i64 %idxprom142
  %I.1 = load i32* %arrayidx148, align 4
  %cmp140 = icmp eq i32 %I.1, -1
  br i1 %cmp140, label %if.end153, label %for.body141

if.else150:                                       ; preds = %while.end
  %idxprom151 = sext i32 %prev.0337 to i64
  %arrayidx152 = getelementptr inbounds i32* %call14, i64 %idxprom151
  %29 = trunc i64 %indvars.iv362 to i32
  store i32 %29, i32* %arrayidx152, align 4, !tbaa !0
  br label %if.end153

if.end153:                                        ; preds = %for.cond139.preheader.if.end153.loopexit_crit_edge, %for.body141, %if.else150
  %.pre-phi = phi i32 [ %29, %if.else150 ], [ %.pre.pre, %for.cond139.preheader.if.end153.loopexit_crit_edge ], [ %28, %for.body141 ]
  %arrayidx155 = getelementptr inbounds i32* %call17, i64 %indvars.iv362
  store i32 %size.0.lcssa, i32* %arrayidx155, align 4, !tbaa !0
  %sub156 = sub nsw i32 %nbnd.0339, %size.0.lcssa
  %arrayidx158 = getelementptr inbounds i32* %call18, i64 %indvars.iv362
  store i32 %sub156, i32* %arrayidx158, align 4, !tbaa !0
  %cmp110 = icmp slt i32 %ii.2.lcssa, %count.0.lcssa
  br i1 %cmp110, label %while.body, label %while.end159

while.end159:                                     ; preds = %if.end153, %while.cond.preheader
  %Jnew.1.lcssa = phi i32 [ %Jnew.0352, %while.cond.preheader ], [ %nfront2.1338, %if.end153 ]
  %nfront2.1.lcssa = phi i32 [ %nfront2.0351, %while.cond.preheader ], [ %inc111, %if.end153 ]
  %arrayidx161 = getelementptr inbounds i32* %call15, i64 %idxprom33
  store i32 %Jnew.1.lcssa, i32* %arrayidx161, align 4, !tbaa !0
  br label %for.inc163

for.inc163:                                       ; preds = %for.end85, %while.end159
  %nfront2.2 = phi i32 [ %inc62, %for.end85 ], [ %nfront2.1.lcssa, %while.end159 ]
  %Jnew.2 = phi i32 [ %nfront2.0351, %for.end85 ], [ %Jnew.1.lcssa, %while.end159 ]
  %call164 = tail call i32 @Tree_postOTnext(%struct._Tree* %3, i32 %J.0353) #4
  %cmp31 = icmp eq i32 %call164, -1
  br i1 %cmp31, label %for.end165, label %for.body32

for.end165:                                       ; preds = %for.inc163, %for.end
  %nfront2.0.lcssa = phi i32 [ 0, %for.end ], [ %nfront2.2, %for.inc163 ]
  %call166 = tail call %struct._ETree* @ETree_new() #4
  tail call void @ETree_init1(%struct._ETree* %call166, i32 %nfront2.0.lcssa, i32 %1) #4
  %tree167 = getelementptr inbounds %struct._ETree* %call166, i64 0, i32 2
  %30 = load %struct._Tree** %tree167, align 8, !tbaa !3
  %par = getelementptr inbounds %struct._Tree* %30, i64 0, i32 2
  %31 = load i32** %par, align 8, !tbaa !3
  tail call void @IVcopy(i32 %nfront2.0.lcssa, i32* %31, i32* %call14) #4
  %32 = load %struct._Tree** %tree167, align 8, !tbaa !3
  tail call void @Tree_setFchSibRoot(%struct._Tree* %32) #4
  %vtxToFrontIV169 = getelementptr inbounds %struct._ETree* %call166, i64 0, i32 5
  %33 = load %struct._IV** %vtxToFrontIV169, align 8, !tbaa !3
  %call170 = tail call i32* @IV_entries(%struct._IV* %33) #4
  tail call void @IVcopy(i32 %1, i32* %call170, i32* %call16) #4
  %nodwghtsIV171 = getelementptr inbounds %struct._ETree* %call166, i64 0, i32 3
  %34 = load %struct._IV** %nodwghtsIV171, align 8, !tbaa !3
  %call172 = tail call i32* @IV_entries(%struct._IV* %34) #4
  tail call void @IVcopy(i32 %nfront2.0.lcssa, i32* %call172, i32* %call17) #4
  %bndwghtsIV173 = getelementptr inbounds %struct._ETree* %call166, i64 0, i32 4
  %35 = load %struct._IV** %bndwghtsIV173, align 8, !tbaa !3
  %call174 = tail call i32* @IV_entries(%struct._IV* %35) #4
  tail call void @IVcopy(i32 %nfront2.0.lcssa, i32* %call174, i32* %call18) #4
  tail call void @IVfree(i32* %call14) #4
  tail call void @IVfree(i32* %call15) #4
  tail call void @IVfree(i32* %call16) #4
  tail call void @IVfree(i32* %call17) #4
  tail call void @IVfree(i32* %call18) #4
  tail call void @IVfree(i32* %call19) #4
  tail call void @IVfree(i32* %call20) #4
  tail call void @IVfree(i32* %call21) #4
  ret %struct._ETree* %call166
}

; Function Attrs: optsize
declare void @IV_free(%struct._IV*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._ETree* @ETree_transform2(%struct._ETree* %etree, i32* %vwghts, i32 %maxzeros, i32 %maxfrontsize, i32 %seed) #0 {
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
  %cmp7 = icmp slt i32 %maxfrontsize, 1
  %or.cond = or i1 %cmp5, %cmp7
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([62 x i8]* @.str1, i64 0, i64 0), %struct._ETree* %etree, i32* %vwghts, i32 %maxzeros, i32 %maxfrontsize, i32 %seed) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false3
  %call8 = tail call %struct._IV* @IV_new() #4
  tail call void @IV_init(%struct._IV* %call8, i32 %0, i32* null) #4
  tail call void @IV_fill(%struct._IV* %call8, i32 0) #4
  %call9 = tail call %struct._ETree* @ETree_mergeFrontsOne(%struct._ETree* %etree, i32 %maxzeros, %struct._IV* %call8) #6
  tail call void @ETree_free(%struct._ETree* %etree) #4
  %call10 = tail call %struct._ETree* @ETree_mergeFrontsAll(%struct._ETree* %call9, i32 %maxzeros, %struct._IV* %call8) #6
  tail call void @ETree_free(%struct._ETree* %call9) #4
  %call11 = tail call %struct._ETree* @ETree_splitFronts(%struct._ETree* %call10, i32* %vwghts, i32 %maxfrontsize, i32 %seed) #6
  tail call void @ETree_free(%struct._ETree* %call10) #4
  tail call void @IV_free(%struct._IV* %call8) #4
  ret %struct._ETree* %call11
}

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #3

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare i32* @ETree_fch(%struct._ETree*) #3

; Function Attrs: optsize
declare i32* @ETree_sib(%struct._ETree*) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: optsize
declare i32* @ETree_nodwghts(%struct._ETree*) #3

; Function Attrs: optsize
declare i32* @ETree_bndwghts(%struct._ETree*) #3

; Function Attrs: optsize
declare void @IVramp(i32, i32*, i32, i32) #3

; Function Attrs: optsize
declare i32 @Tree_postOTfirst(%struct._Tree*) #3

; Function Attrs: optsize
declare i32 @Tree_postOTnext(%struct._Tree*, i32) #3

; Function Attrs: optsize
declare %struct._ETree* @ETree_compress(%struct._ETree*, %struct._IV*) #3

; Function Attrs: optsize
declare void @IV_setSize(%struct._IV*, i32) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: optsize
declare void @IVshuffle(i32, i32*, i32) #3

; Function Attrs: optsize
declare %struct._ETree* @ETree_new() #3

; Function Attrs: optsize
declare void @ETree_init1(%struct._ETree*, i32, i32) #3

; Function Attrs: optsize
declare void @Tree_setFchSibRoot(%struct._Tree*) #3

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
