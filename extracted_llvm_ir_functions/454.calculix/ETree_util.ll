; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._ETree = type { i32, i32, %struct._Tree*, %struct._IV*, %struct._IV*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._IV = type { i32, i32, i32, i32* }
%struct._DV = type { i32, i32, i32, double* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [46 x i8] c"\0A fatal error in ETree_sizeOf(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"\0A fatal error in ETree_nFactorIndices(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [57 x i8] c"\0A fatal error in ETree_nFactorEntries(%p,%d)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [56 x i8] c"\0A fatal error in ETree_nFactorOps(%p,%d,%d)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [67 x i8] c"\0A fatal error in ETree_nFactorEntriesInFront(%p,%d,%d)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [69 x i8] c"\0A fatal error in ETree_nFactorEntriesInFront(%p,%d,%d)\0A bad symflag\0A\00", align 1
@.str6 = private unnamed_addr constant [68 x i8] c"\0A fatal error in ETree_nInternalOpsInFront(%p,%d,%d,%d)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [70 x i8] c"\0A fatal error in ETree_nInternalOpsInFront(%p,%d,%d,%d)\0A bad symflag\0A\00", align 1
@.str8 = private unnamed_addr constant [67 x i8] c"\0A fatal error in ETree_nInternalOpsInFront(%p,%d,%d,%d)\0A bad type\0A\00", align 1
@.str9 = private unnamed_addr constant [68 x i8] c"\0A fatal error in ETree_nExternalOpsInFront(%p,%d,%d,%d)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [57 x i8] c"\0A fatal error in ETree_backwardOps(%p,%p,%p)\0A bad input\0A\00", align 1
@.str11 = private unnamed_addr constant [58 x i8] c"\0A fatal error in ETree_factorEntriesIV(%p,%d)\0A bad input\0A\00", align 1
@.str12 = private unnamed_addr constant [50 x i8] c"\0A fatal error in ETree_forwardOps(%p)\0A bad input\0A\00", align 1
@.str13 = private unnamed_addr constant [49 x i8] c"\0A fatal error in ETree_expand(%p,%p)\0A bad input\0A\00", align 1
@.str14 = private unnamed_addr constant [64 x i8] c"\0A fatal error in ETree_spliceTwoETrees(%p,%p,%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @ETree_sizeOf(%struct._ETree* %etree) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str, i64 0, i64 0), %struct._ETree* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2
  %1 = load %struct._Tree** %tree, align 8, !tbaa !0
  %cmp1 = icmp eq %struct._Tree* %1, null
  br i1 %cmp1, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  %call4 = tail call i32 @Tree_sizeOf(%struct._Tree* %1) #4
  %add = add nsw i32 %call4, 40
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then2
  %nbytes.0 = phi i32 [ %add, %if.then2 ], [ 40, %if.end ]
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3
  %2 = load %struct._IV** %nodwghtsIV, align 8, !tbaa !0
  %cmp6 = icmp eq %struct._IV* %2, null
  br i1 %cmp6, label %if.end17, label %if.end11

if.end11:                                         ; preds = %if.end5
  %call9 = tail call i32 @IV_sizeOf(%struct._IV* %2) #4
  %add10 = add nsw i32 %call9, %nbytes.0
  %.pr = load %struct._IV** %nodwghtsIV, align 8, !tbaa !0
  %cmp13 = icmp eq %struct._IV* %.pr, null
  br i1 %cmp13, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.end11
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4
  %3 = load %struct._IV** %bndwghtsIV, align 8, !tbaa !0
  %call15 = tail call i32 @IV_sizeOf(%struct._IV* %3) #4
  %add16 = add nsw i32 %call15, %add10
  br label %if.end17

if.end17:                                         ; preds = %if.end5, %if.end11, %if.then14
  %nbytes.2 = phi i32 [ %add16, %if.then14 ], [ %add10, %if.end11 ], [ %nbytes.0, %if.end5 ]
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5
  %4 = load %struct._IV** %vtxToFrontIV, align 8, !tbaa !0
  %cmp18 = icmp eq %struct._IV* %4, null
  br i1 %cmp18, label %if.end23, label %if.then19

if.then19:                                        ; preds = %if.end17
  %call21 = tail call i32 @IV_sizeOf(%struct._IV* %4) #4
  %add22 = add nsw i32 %call21, %nbytes.2
  br label %if.end23

if.end23:                                         ; preds = %if.end17, %if.then19
  %nbytes.3 = phi i32 [ %add22, %if.then19 ], [ %nbytes.2, %if.end17 ]
  ret i32 %nbytes.3
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32 @Tree_sizeOf(%struct._Tree*) #3

; Function Attrs: optsize
declare i32 @IV_sizeOf(%struct._IV*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @ETree_nFactorIndices(%struct._ETree* %etree) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  %0 = load i32* %nfront1, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %0, 1
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %nvtx4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1
  %1 = load i32* %nvtx4, align 4, !tbaa !3
  %cmp5 = icmp slt i32 %1, 1
  br i1 %cmp5, label %if.then, label %for.body.lr.ph

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), %struct._ETree* %etree) #4
  tail call void @exit(i32 -1) #5
  unreachable

for.body.lr.ph:                                   ; preds = %lor.lhs.false3
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3
  %3 = load %struct._IV** %nodwghtsIV, align 8, !tbaa !0
  %call6 = tail call i32* @IV_entries(%struct._IV* %3) #4
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4
  %4 = load %struct._IV** %bndwghtsIV, align 8, !tbaa !0
  %call7 = tail call i32* @IV_entries(%struct._IV* %4) #4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %nind.023 = phi i32 [ 0, %for.body.lr.ph ], [ %add11, %for.body ]
  %arrayidx = getelementptr inbounds i32* %call6, i64 %indvars.iv
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx10 = getelementptr inbounds i32* %call7, i64 %indvars.iv
  %6 = load i32* %arrayidx10, align 4, !tbaa !3
  %add = add i32 %5, %nind.023
  %add11 = add i32 %add, %6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %0
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret i32 %add11
}

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @ETree_nFactorEntries(%struct._ETree* %etree, i32 %symflag) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  %0 = load i32* %nfront1, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %0, 1
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %nvtx4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1
  %1 = load i32* %nvtx4, align 4, !tbaa !3
  %cmp5 = icmp slt i32 %1, 1
  br i1 %cmp5, label %if.then, label %for.body

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([57 x i8]* @.str2, i64 0, i64 0), %struct._ETree* %etree, i32 %symflag) #4
  tail call void @exit(i32 -1) #5
  unreachable

for.body:                                         ; preds = %lor.lhs.false3, %for.body
  %nzf.019 = phi i32 [ %conv8, %for.body ], [ 0, %lor.lhs.false3 ]
  %J.018 = phi i32 [ %inc, %for.body ], [ 0, %lor.lhs.false3 ]
  %call7 = tail call double @ETree_nFactorEntriesInFront(%struct._ETree* %etree, i32 %symflag, i32 %J.018) #6
  %conv = sitofp i32 %nzf.019 to double
  %add = fadd double %conv, %call7
  %conv8 = fptosi double %add to i32
  %inc = add nsw i32 %J.018, 1
  %exitcond = icmp eq i32 %inc, %0
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret i32 %conv8
}

; Function Attrs: nounwind optsize uwtable
define double @ETree_nFactorEntriesInFront(%struct._ETree* %etree, i32 %symflag, i32 %J) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nfront = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  %0 = load i32* %nfront, align 4, !tbaa !3
  %notlhs = icmp sgt i32 %0, 0
  %notrhs = icmp sgt i32 %J, -1
  %or.cond.not = and i1 %notrhs, %notlhs
  %cmp6 = icmp sgt i32 %0, %J
  %or.cond36 = and i1 %or.cond.not, %cmp6
  br i1 %or.cond36, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([67 x i8]* @.str4, i64 0, i64 0), %struct._ETree* %etree, i32 %symflag, i32 %J) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3
  %2 = load %struct._IV** %nodwghtsIV, align 8, !tbaa !0
  %call7 = tail call i32 @IV_entry(%struct._IV* %2, i32 %J) #4
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4
  %3 = load %struct._IV** %bndwghtsIV, align 8, !tbaa !0
  %call8 = tail call i32 @IV_entry(%struct._IV* %3, i32 %J) #4
  switch i32 %symflag, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %add = add nsw i32 %call7, 1
  %mul = mul nsw i32 %add, %call7
  %div = sdiv i32 %mul, 2
  %mul9 = mul nsw i32 %call8, %call7
  %add10 = add nsw i32 %div, %mul9
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %mul14 = shl i32 %call8, 1
  %tmp = add i32 %mul14, %call7
  %tmp37 = mul i32 %tmp, %call7
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([69 x i8]* @.str5, i64 0, i64 0), %struct._ETree* %etree, i32 %symflag, i32 %J) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb
  %nent.0 = phi i32 [ undef, %sw.default ], [ %tmp37, %sw.bb11 ], [ %add10, %sw.bb ]
  %conv = sitofp i32 %nent.0 to double
  ret double %conv
}

; Function Attrs: nounwind optsize uwtable
define double @ETree_nFactorOps(%struct._ETree* %etree, i32 %type, i32 %symflag) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  %0 = load i32* %nfront1, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %0, 1
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %nvtx4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1
  %1 = load i32* %nvtx4, align 4, !tbaa !3
  %cmp5 = icmp slt i32 %1, 1
  br i1 %cmp5, label %if.then, label %for.body

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), %struct._ETree* %etree, i32 %type, i32 %symflag) #4
  tail call void @exit(i32 -1) #5
  unreachable

for.body:                                         ; preds = %lor.lhs.false3, %for.body
  %ops.025 = phi double [ %add9, %for.body ], [ 0.000000e+00, %lor.lhs.false3 ]
  %J.024 = phi i32 [ %inc, %for.body ], [ 0, %lor.lhs.false3 ]
  %call7 = tail call double @ETree_nInternalOpsInFront(%struct._ETree* %etree, i32 %type, i32 %symflag, i32 %J.024) #6
  %call8 = tail call double @ETree_nExternalOpsInFront(%struct._ETree* %etree, i32 %type, i32 %symflag, i32 %J.024) #6
  %add = fadd double %call7, %call8
  %add9 = fadd double %ops.025, %add
  %inc = add nsw i32 %J.024, 1
  %exitcond = icmp eq i32 %inc, %0
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret double %add9
}

; Function Attrs: nounwind optsize uwtable
define double @ETree_nInternalOpsInFront(%struct._ETree* %etree, i32 %type, i32 %symflag, i32 %J) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nfront = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  %0 = load i32* %nfront, align 4, !tbaa !3
  %notlhs = icmp sgt i32 %0, 0
  %notrhs = icmp sgt i32 %J, -1
  %or.cond.not = and i1 %notrhs, %notlhs
  %cmp6 = icmp sgt i32 %0, %J
  %or.cond62 = and i1 %or.cond.not, %cmp6
  br i1 %or.cond62, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([68 x i8]* @.str6, i64 0, i64 0), %struct._ETree* %etree, i32 %type, i32 %symflag, i32 %J) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %call7 = tail call i32 @ETree_frontSize(%struct._ETree* %etree, i32 %J) #4
  %conv = sitofp i32 %call7 to double
  %call8 = tail call i32 @ETree_frontBoundarySize(%struct._ETree* %etree, i32 %J) #4
  %conv9 = sitofp i32 %call8 to double
  switch i32 %symflag, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb16
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %add = fadd double %conv, 1.000000e+00
  %mul = fmul double %conv, %add
  %mul10 = fmul double %conv, 2.000000e+00
  %add11 = fadd double %mul10, 1.000000e+00
  %mul12 = fmul double %mul, %add11
  %div = fdiv double %mul12, 6.000000e+00
  %mul13 = fmul double %conv, %conv9
  %mul14 = fmul double %conv, %mul13
  %add15 = fadd double %mul14, %div
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  %mul17 = fmul double %conv, 2.000000e+00
  %mul18 = fmul double %conv, %mul17
  %add19 = fadd double %mul18, 1.000000e+00
  %mul20 = fmul double %conv, %add19
  %div21 = fdiv double %mul20, 3.000000e+00
  %mul22 = fmul double %conv9, 2.000000e+00
  %mul23 = fmul double %conv, %mul22
  %mul24 = fmul double %conv, %mul23
  %add25 = fadd double %mul24, %div21
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call26 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([70 x i8]* @.str7, i64 0, i64 0), %struct._ETree* %etree, i32 %type, i32 %symflag, i32 %J) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb16, %sw.bb
  %ops.0 = phi double [ undef, %sw.default ], [ %add25, %sw.bb16 ], [ %add15, %sw.bb ]
  switch i32 %type, label %sw.default29 [
    i32 1, label %sw.epilog31
    i32 2, label %sw.bb27
  ]

sw.bb27:                                          ; preds = %sw.epilog
  %mul28 = fmul double %ops.0, 4.000000e+00
  br label %sw.epilog31

sw.default29:                                     ; preds = %sw.epilog
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([67 x i8]* @.str8, i64 0, i64 0), %struct._ETree* %etree, i32 %type, i32 %symflag, i32 %J) #4
  br label %sw.epilog31

sw.epilog31:                                      ; preds = %sw.default29, %sw.bb27, %sw.epilog
  %ops.1 = phi double [ %ops.0, %sw.default29 ], [ %mul28, %sw.bb27 ], [ %ops.0, %sw.epilog ]
  ret double %ops.1
}

; Function Attrs: nounwind optsize uwtable
define double @ETree_nExternalOpsInFront(%struct._ETree* %etree, i32 %type, i32 %symflag, i32 %J) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nfront = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  %0 = load i32* %nfront, align 4, !tbaa !3
  %notlhs = icmp sgt i32 %0, 0
  %notrhs = icmp sgt i32 %J, -1
  %or.cond.not = and i1 %notrhs, %notlhs
  %cmp6 = icmp sgt i32 %0, %J
  %or.cond40 = and i1 %or.cond.not, %cmp6
  br i1 %or.cond40, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), %struct._ETree* %etree, i32 %J, i32 %type, i32 %symflag) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3
  %2 = load %struct._IV** %nodwghtsIV, align 8, !tbaa !0
  %call7 = tail call i32 @IV_entry(%struct._IV* %2, i32 %J) #4
  %conv = sitofp i32 %call7 to double
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4
  %3 = load %struct._IV** %bndwghtsIV, align 8, !tbaa !0
  %call8 = tail call i32 @IV_entry(%struct._IV* %3, i32 %J) #4
  %conv9 = sitofp i32 %call8 to double
  switch i32 %symflag, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %add = fadd double %conv9, 1.000000e+00
  %mul = fmul double %conv9, %add
  %mul10 = fmul double %conv, %mul
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %mul12 = fmul double %conv, 2.000000e+00
  %mul13 = fmul double %mul12, %conv9
  %mul14 = fmul double %conv9, %mul13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb11, %sw.bb
  %ops.0 = phi double [ undef, %if.end ], [ %mul14, %sw.bb11 ], [ %mul10, %sw.bb ]
  switch i32 %type, label %sw.default17 [
    i32 1, label %sw.epilog19
    i32 2, label %sw.bb15
  ]

sw.bb15:                                          ; preds = %sw.epilog
  %mul16 = fmul double %ops.0, 4.000000e+00
  br label %sw.epilog19

sw.default17:                                     ; preds = %sw.epilog
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), %struct._ETree* %etree, i32 %J, i32 %type, i32 %symflag) #4
  br label %sw.epilog19

sw.epilog19:                                      ; preds = %sw.default17, %sw.bb15, %sw.epilog
  %ops.1 = phi double [ %ops.0, %sw.default17 ], [ %mul16, %sw.bb15 ], [ %ops.0, %sw.epilog ]
  ret double %ops.1
}

; Function Attrs: optsize
declare i32 @IV_entry(%struct._IV*, i32) #3

; Function Attrs: optsize
declare i32 @ETree_frontSize(%struct._ETree*, i32) #3

; Function Attrs: optsize
declare i32 @ETree_frontBoundarySize(%struct._ETree*, i32) #3

; Function Attrs: nounwind optsize uwtable
define %struct._DV* @ETree_backwardOps(%struct._ETree* %etree, i32 %type, i32 %symflag, i32* %vwghts, %struct._IVL* %symbfacIVL) #0 {
entry:
  %size = alloca i32, align 4
  %indices = alloca i32*, align 8
  %cmp = icmp eq %struct._ETree* %etree, null
  %cmp1 = icmp eq %struct._IVL* %symbfacIVL, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str10, i64 0, i64 0), %struct._ETree* %etree, i32* %vwghts, %struct._IVL* %symbfacIVL) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %nfront2 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  %1 = load i32* %nfront2, align 4, !tbaa !3
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5
  %2 = load %struct._IV** %vtxToFrontIV, align 8, !tbaa !0
  %call3 = call i32* @IV_entries(%struct._IV* %2) #4
  %call4 = call i32* @IVinit(i32 %1, i32 -1) #4
  %call5 = call i32* @IVinit(i32 %1, i32 -1) #4
  %call6 = call i32* @IVinit(i32 %1, i32 0) #4
  %call7 = call %struct._DV* @DV_new() #4
  call void @DV_init(%struct._DV* %call7, i32 %1, double* null) #4
  %call8 = call double* @DV_entries(%struct._DV* %call7) #4
  call void @DV_fill(%struct._DV* %call7, double 0.000000e+00) #4
  %cmp9233 = icmp sgt i32 %1, 0
  br i1 %cmp9233, label %for.body.lr.ph, label %for.end118

for.body.lr.ph:                                   ; preds = %if.end
  %cmp105 = icmp eq i32 %symflag, 2
  %3 = icmp ult i32 %symflag, 2
  %cmp22 = icmp eq i32* %vwghts, null
  br label %for.body

for.body:                                         ; preds = %for.inc116, %for.body.lr.ph
  %indvars.iv239 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next240, %for.inc116 ]
  %opsKbndK.0236 = phi double [ undef, %for.body.lr.ph ], [ %opsKbndK.1.lcssa, %for.inc116 ]
  %opsKK.0235 = phi double [ undef, %for.body.lr.ph ], [ %opsKK.1.lcssa, %for.inc116 ]
  %4 = trunc i64 %indvars.iv239 to i32
  %call10 = call double @ETree_nInternalOpsInFront(%struct._ETree* %etree, i32 %type, i32 %symflag, i32 %4) #6
  %arrayidx = getelementptr inbounds double* %call8, i64 %indvars.iv239
  %5 = load double* %arrayidx, align 8, !tbaa !4
  %add = fadd double %call10, %5
  store double %add, double* %arrayidx, align 8, !tbaa !4
  %call11 = call i32 @ETree_frontSize(%struct._ETree* %etree, i32 %4) #4
  %call12 = call i32 @ETree_frontBoundarySize(%struct._ETree* %etree, i32 %4) #4
  call void @IVL_listAndSize(%struct._IVL* %symbfacIVL, i32 %4, i32* %size, i32** %indices) #4
  %6 = load i32* %size, align 4, !tbaa !3
  %cmp14222 = icmp sgt i32 %6, 0
  br i1 %cmp14222, label %for.body15.lr.ph, label %for.end.thread

for.end.thread:                                   ; preds = %for.body
  call void @IVqsortUp(i32 0, i32* %call4) #4
  br label %for.inc116

for.body15.lr.ph:                                 ; preds = %for.body
  %7 = load i32** %indices, align 8, !tbaa !0
  br label %for.body15

for.body15:                                       ; preds = %for.body15.lr.ph, %for.inc
  %8 = phi i32 [ %6, %for.body15.lr.ph ], [ %14, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body15.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %nadj.0223 = phi i32 [ 0, %for.body15.lr.ph ], [ %nadj.2, %for.inc ]
  %arrayidx17 = getelementptr inbounds i32* %7, i64 %indvars.iv
  %9 = load i32* %arrayidx17, align 4, !tbaa !3
  %idxprom18 = sext i32 %9 to i64
  %arrayidx19 = getelementptr inbounds i32* %call3, i64 %idxprom18
  %10 = load i32* %arrayidx19, align 4, !tbaa !3
  %cmp20 = icmp eq i32 %10, %4
  br i1 %cmp20, label %for.inc, label %if.then21

if.then21:                                        ; preds = %for.body15
  br i1 %cmp22, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.then21
  %arrayidx24 = getelementptr inbounds i32* %vwghts, i64 %idxprom18
  %11 = load i32* %arrayidx24, align 4, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %if.then21, %cond.false
  %cond = phi i32 [ %11, %cond.false ], [ 1, %if.then21 ]
  %idxprom25 = sext i32 %10 to i64
  %arrayidx26 = getelementptr inbounds i32* %call5, i64 %idxprom25
  %12 = load i32* %arrayidx26, align 4, !tbaa !3
  %cmp27 = icmp eq i32 %12, %4
  %arrayidx37.pre = getelementptr inbounds i32* %call6, i64 %idxprom25
  br i1 %cmp27, label %if.end35, label %if.then28

if.then28:                                        ; preds = %cond.end
  store i32 0, i32* %arrayidx37.pre, align 4, !tbaa !3
  store i32 %4, i32* %arrayidx26, align 4, !tbaa !3
  %inc = add nsw i32 %nadj.0223, 1
  %idxprom33 = sext i32 %nadj.0223 to i64
  %arrayidx34 = getelementptr inbounds i32* %call4, i64 %idxprom33
  store i32 %10, i32* %arrayidx34, align 4, !tbaa !3
  br label %if.end35

if.end35:                                         ; preds = %cond.end, %if.then28
  %nadj.1 = phi i32 [ %inc, %if.then28 ], [ %nadj.0223, %cond.end ]
  %13 = load i32* %arrayidx37.pre, align 4, !tbaa !3
  %add38 = add nsw i32 %13, %cond
  store i32 %add38, i32* %arrayidx37.pre, align 4, !tbaa !3
  %.pre = load i32* %size, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body15, %if.end35
  %14 = phi i32 [ %.pre, %if.end35 ], [ %8, %for.body15 ]
  %nadj.2 = phi i32 [ %nadj.1, %if.end35 ], [ %nadj.0223, %for.body15 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %15 = trunc i64 %indvars.iv.next to i32
  %cmp14 = icmp slt i32 %15, %14
  br i1 %cmp14, label %for.body15, label %for.end

for.end:                                          ; preds = %for.inc
  call void @IVqsortUp(i32 %nadj.2, i32* %call4) #4
  %cmp42225 = icmp sgt i32 %nadj.2, 0
  br i1 %cmp42225, label %for.body43.lr.ph, label %for.inc116

for.body43.lr.ph:                                 ; preds = %for.end
  %mul = shl nsw i32 %call11, 1
  %mul72 = shl nsw i32 %call11, 3
  %mul82 = shl i32 %call11, 2
  br label %for.body43

for.body43:                                       ; preds = %for.inc113, %for.body43.lr.ph
  %indvars.iv237 = phi i64 [ 0, %for.body43.lr.ph ], [ %indvars.iv.next238, %for.inc113 ]
  %opsKbndK.1229 = phi double [ %opsKbndK.0236, %for.body43.lr.ph ], [ %opsKbndK.2206, %for.inc113 ]
  %opsKK.1228 = phi double [ %opsKK.0235, %for.body43.lr.ph ], [ %opsKK.2205, %for.inc113 ]
  %bndwghtJ.0227 = phi i32 [ %call12, %for.body43.lr.ph ], [ %sub, %for.inc113 ]
  %arrayidx45 = getelementptr inbounds i32* %call4, i64 %indvars.iv237
  %16 = load i32* %arrayidx45, align 4, !tbaa !3
  %idxprom46 = sext i32 %16 to i64
  %arrayidx47 = getelementptr inbounds i32* %call6, i64 %idxprom46
  %17 = load i32* %arrayidx47, align 4, !tbaa !3
  %sub = sub nsw i32 %bndwghtJ.0227, %17
  switch i32 %type, label %if.end98 [
    i32 1, label %if.then49
    i32 2, label %if.then71
  ]

if.then49:                                        ; preds = %for.body43
  %mul50 = mul nsw i32 %17, %mul
  %mul51 = mul nsw i32 %mul50, %sub
  %conv = sitofp i32 %mul51 to double
  switch i32 %symflag, label %if.end98.thread [
    i32 0, label %if.then54
    i32 2, label %if.end98.thread211
  ]

if.then54:                                        ; preds = %if.then49
  %mul55 = mul nsw i32 %17, %call11
  %add56 = add nsw i32 %17, 1
  %mul57 = mul nsw i32 %mul55, %add56
  %conv58 = sitofp i32 %mul57 to double
  br label %if.end98.thread

if.then71:                                        ; preds = %for.body43
  %mul73 = mul nsw i32 %17, %mul72
  %mul74 = mul nsw i32 %mul73, %sub
  %conv75 = sitofp i32 %mul74 to double
  br i1 %3, label %if.then81, label %if.else87

if.then81:                                        ; preds = %if.then71
  %mul83 = mul nsw i32 %mul82, %17
  %add84 = add nsw i32 %17, 1
  %mul85 = mul nsw i32 %mul83, %add84
  %conv86 = sitofp i32 %mul85 to double
  br label %if.end98.thread

if.else87:                                        ; preds = %if.then71
  br i1 %cmp105, label %if.end98.thread211, label %if.end98.thread

if.end98.thread:                                  ; preds = %if.then49, %if.else87, %if.then81, %if.then54
  %opsKK.2.ph = phi double [ %opsKK.1228, %if.then49 ], [ %opsKK.1228, %if.else87 ], [ %conv86, %if.then81 ], [ %conv58, %if.then54 ]
  %opsKbndK.2.ph = phi double [ %conv, %if.then49 ], [ %conv75, %if.else87 ], [ %conv75, %if.then81 ], [ %conv, %if.then54 ]
  %add99200 = fadd double %opsKK.2.ph, %opsKbndK.2.ph
  %arrayidx103202 = getelementptr inbounds double* %call8, i64 %idxprom46
  %18 = load double* %arrayidx103202, align 8, !tbaa !4
  %add104203 = fadd double %18, %add99200
  br label %for.inc113

if.end98.thread211:                               ; preds = %if.then49, %if.else87
  %mul50.sink = phi i32 [ %mul73, %if.else87 ], [ %mul50, %if.then49 ]
  %opsKbndK.2.ph210 = phi double [ %conv75, %if.else87 ], [ %conv, %if.then49 ]
  %mul64 = mul nsw i32 %mul50.sink, %17
  %conv65 = sitofp i32 %mul64 to double
  %add99212 = fadd double %opsKbndK.2.ph210, %conv65
  %arrayidx103214 = getelementptr inbounds double* %call8, i64 %idxprom46
  %19 = load double* %arrayidx103214, align 8, !tbaa !4
  %add104215 = fadd double %19, %add99212
  br label %if.then107

if.end98:                                         ; preds = %for.body43
  %add99 = fadd double %opsKK.1228, %opsKbndK.1229
  %arrayidx103 = getelementptr inbounds double* %call8, i64 %idxprom46
  %20 = load double* %arrayidx103, align 8, !tbaa !4
  %add104 = fadd double %add99, %20
  br i1 %cmp105, label %if.then107, label %for.inc113

if.then107:                                       ; preds = %if.end98.thread211, %if.end98
  %add104221 = phi double [ %add104215, %if.end98.thread211 ], [ %add104, %if.end98 ]
  %arrayidx103220 = phi double* [ %arrayidx103214, %if.end98.thread211 ], [ %arrayidx103, %if.end98 ]
  %opsKbndK.2218 = phi double [ %opsKbndK.2.ph210, %if.end98.thread211 ], [ %opsKbndK.1229, %if.end98 ]
  %opsKK.2217 = phi double [ %conv65, %if.end98.thread211 ], [ %opsKK.1228, %if.end98 ]
  %add111 = fadd double %add104221, %opsKbndK.2218
  br label %for.inc113

for.inc113:                                       ; preds = %if.end98.thread, %if.end98, %if.then107
  %arrayidx103207 = phi double* [ %arrayidx103220, %if.then107 ], [ %arrayidx103, %if.end98 ], [ %arrayidx103202, %if.end98.thread ]
  %opsKbndK.2206 = phi double [ %opsKbndK.2218, %if.then107 ], [ %opsKbndK.1229, %if.end98 ], [ %opsKbndK.2.ph, %if.end98.thread ]
  %opsKK.2205 = phi double [ %opsKK.2217, %if.then107 ], [ %opsKK.1228, %if.end98 ], [ %opsKK.2.ph, %if.end98.thread ]
  %storemerge = phi double [ %add111, %if.then107 ], [ %add104, %if.end98 ], [ %add104203, %if.end98.thread ]
  store double %storemerge, double* %arrayidx103207, align 8, !tbaa !4
  %indvars.iv.next238 = add i64 %indvars.iv237, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next238 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nadj.2
  br i1 %exitcond, label %for.inc116, label %for.body43

for.inc116:                                       ; preds = %for.inc113, %for.end.thread, %for.end
  %opsKbndK.1.lcssa = phi double [ %opsKbndK.0236, %for.end ], [ %opsKbndK.0236, %for.end.thread ], [ %opsKbndK.2206, %for.inc113 ]
  %opsKK.1.lcssa = phi double [ %opsKK.0235, %for.end ], [ %opsKK.0235, %for.end.thread ], [ %opsKK.2205, %for.inc113 ]
  %indvars.iv.next240 = add i64 %indvars.iv239, 1
  %lftr.wideiv241 = trunc i64 %indvars.iv.next240 to i32
  %exitcond242 = icmp eq i32 %lftr.wideiv241, %1
  br i1 %exitcond242, label %for.end118, label %for.body

for.end118:                                       ; preds = %for.inc116, %if.end
  call void @IVfree(i32* %call4) #4
  call void @IVfree(i32* %call5) #4
  call void @IVfree(i32* %call6) #4
  ret %struct._DV* %call7
}

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare %struct._DV* @DV_new() #3

; Function Attrs: optsize
declare void @DV_init(%struct._DV*, i32, double*) #3

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #3

; Function Attrs: optsize
declare void @DV_fill(%struct._DV*, double) #3

; Function Attrs: optsize
declare void @IVL_listAndSize(%struct._IVL*, i32, i32*, i32**) #3

; Function Attrs: optsize
declare void @IVqsortUp(i32, i32*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @ETree_factorEntriesIV(%struct._ETree* %etree, i32 %symflag) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str11, i64 0, i64 0), %struct._ETree* null, i32 %symflag) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ETree_nfront(%struct._ETree* %etree) #4
  %call2 = tail call %struct._IV* @IV_new() #4
  tail call void @IV_init(%struct._IV* %call2, i32 %call1, i32* null) #4
  %call3 = tail call i32* @IV_entries(%struct._IV* %call2) #4
  tail call void @IV_fill(%struct._IV* %call2, i32 0) #4
  %cmp417 = icmp sgt i32 %call1, 0
  br i1 %cmp417, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end ]
  %1 = trunc i64 %indvars.iv to i32
  %call5 = tail call double @ETree_nFactorEntriesInFront(%struct._ETree* %etree, i32 %symflag, i32 %1) #6
  %conv = fptosi double %call5 to i32
  %arrayidx = getelementptr inbounds i32* %call3, i64 %indvars.iv
  store i32 %conv, i32* %arrayidx, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %call1
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  ret %struct._IV* %call2
}

; Function Attrs: optsize
declare i32 @ETree_nfront(%struct._ETree*) #3

; Function Attrs: optsize
declare %struct._IV* @IV_new() #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: optsize
declare void @IV_fill(%struct._IV*, i32) #3

; Function Attrs: nounwind optsize uwtable
define %struct._DV* @ETree_forwardOps(%struct._ETree* %etree, i32 %type, i32 %symflag) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str12, i64 0, i64 0), %struct._ETree* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  %1 = load i32* %nfront1, align 4, !tbaa !3
  %call2 = tail call %struct._DV* @DV_new() #4
  tail call void @DV_init(%struct._DV* %call2, i32 %1, double* null) #4
  %call3 = tail call double* @DV_entries(%struct._DV* %call2) #4
  tail call void @DV_fill(%struct._DV* %call2, double 0.000000e+00) #4
  %cmp422 = icmp sgt i32 %1, 0
  br i1 %cmp422, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end ]
  %2 = trunc i64 %indvars.iv to i32
  %call5 = tail call double @ETree_nInternalOpsInFront(%struct._ETree* %etree, i32 %type, i32 %symflag, i32 %2) #6
  %call6 = tail call double @ETree_nExternalOpsInFront(%struct._ETree* %etree, i32 %type, i32 %symflag, i32 %2) #6
  %add = fadd double %call5, %call6
  %arrayidx = getelementptr inbounds double* %call3, i64 %indvars.iv
  %3 = load double* %arrayidx, align 8, !tbaa !4
  %add7 = fadd double %3, %add
  store double %add7, double* %arrayidx, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %1
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  ret %struct._DV* %call2
}

; Function Attrs: nounwind optsize uwtable
define %struct._ETree* @ETree_expand(%struct._ETree* %etree, %struct._IV* %eqmapIV) #0 {
entry:
  %ndof = alloca i32, align 4
  %map = alloca i32*, align 8
  %cmp = icmp eq %struct._ETree* %etree, null
  %cmp1 = icmp eq %struct._IV* %eqmapIV, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), %struct._ETree* %etree, %struct._IV* %eqmapIV) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %nfront2 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  %1 = load i32* %nfront2, align 4, !tbaa !3
  call void @IV_sizeAndEntries(%struct._IV* %eqmapIV, i32* %ndof, i32** %map) #4
  %call3 = call %struct._ETree* @ETree_new() #4
  %2 = load i32* %ndof, align 4, !tbaa !3
  call void @ETree_init1(%struct._ETree* %call3, i32 %1, i32 %2) #4
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %call3, i64 0, i32 3
  %3 = load %struct._IV** %nodwghtsIV, align 8, !tbaa !0
  %nodwghtsIV4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3
  %4 = load %struct._IV** %nodwghtsIV4, align 8, !tbaa !0
  call void @IV_copy(%struct._IV* %3, %struct._IV* %4) #4
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %call3, i64 0, i32 4
  %5 = load %struct._IV** %bndwghtsIV, align 8, !tbaa !0
  %bndwghtsIV5 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4
  %6 = load %struct._IV** %bndwghtsIV5, align 8, !tbaa !0
  call void @IV_copy(%struct._IV* %5, %struct._IV* %6) #4
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2
  %7 = load %struct._Tree** %tree, align 8, !tbaa !0
  %root = getelementptr inbounds %struct._Tree* %7, i64 0, i32 1
  %8 = load i32* %root, align 4, !tbaa !3
  %tree6 = getelementptr inbounds %struct._ETree* %call3, i64 0, i32 2
  %9 = load %struct._Tree** %tree6, align 8, !tbaa !0
  %root7 = getelementptr inbounds %struct._Tree* %9, i64 0, i32 1
  store i32 %8, i32* %root7, align 4, !tbaa !3
  %par = getelementptr inbounds %struct._Tree* %9, i64 0, i32 2
  %10 = load i32** %par, align 8, !tbaa !0
  %par10 = getelementptr inbounds %struct._Tree* %7, i64 0, i32 2
  %11 = load i32** %par10, align 8, !tbaa !0
  call void @IVcopy(i32 %1, i32* %10, i32* %11) #4
  %12 = load %struct._Tree** %tree6, align 8, !tbaa !0
  %fch = getelementptr inbounds %struct._Tree* %12, i64 0, i32 3
  %13 = load i32** %fch, align 8, !tbaa !0
  %14 = load %struct._Tree** %tree, align 8, !tbaa !0
  %fch13 = getelementptr inbounds %struct._Tree* %14, i64 0, i32 3
  %15 = load i32** %fch13, align 8, !tbaa !0
  call void @IVcopy(i32 %1, i32* %13, i32* %15) #4
  %16 = load %struct._Tree** %tree6, align 8, !tbaa !0
  %sib = getelementptr inbounds %struct._Tree* %16, i64 0, i32 4
  %17 = load i32** %sib, align 8, !tbaa !0
  %18 = load %struct._Tree** %tree, align 8, !tbaa !0
  %sib16 = getelementptr inbounds %struct._Tree* %18, i64 0, i32 4
  %19 = load i32** %sib16, align 8, !tbaa !0
  call void @IVcopy(i32 %1, i32* %17, i32* %19) #4
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5
  %20 = load %struct._IV** %vtxToFrontIV, align 8, !tbaa !0
  %call17 = call i32* @IV_entries(%struct._IV* %20) #4
  %vtxToFrontIV18 = getelementptr inbounds %struct._ETree* %call3, i64 0, i32 5
  %21 = load %struct._IV** %vtxToFrontIV18, align 8, !tbaa !0
  %call19 = call i32* @IV_entries(%struct._IV* %21) #4
  %22 = load i32* %ndof, align 4, !tbaa !3
  %cmp2050 = icmp sgt i32 %22, 0
  br i1 %cmp2050, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %23 = load i32** %map, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32* %23, i64 %indvars.iv
  %24 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom21 = sext i32 %24 to i64
  %arrayidx22 = getelementptr inbounds i32* %call17, i64 %idxprom21
  %25 = load i32* %arrayidx22, align 4, !tbaa !3
  %arrayidx24 = getelementptr inbounds i32* %call19, i64 %indvars.iv
  store i32 %25, i32* %arrayidx24, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %26 = load i32* %ndof, align 4, !tbaa !3
  %27 = trunc i64 %indvars.iv.next to i32
  %cmp20 = icmp slt i32 %27, %26
  br i1 %cmp20, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end
  ret %struct._ETree* %call3
}

; Function Attrs: optsize
declare void @IV_sizeAndEntries(%struct._IV*, i32*, i32**) #3

; Function Attrs: optsize
declare %struct._ETree* @ETree_new() #3

; Function Attrs: optsize
declare void @ETree_init1(%struct._ETree*, i32, i32) #3

; Function Attrs: optsize
declare void @IV_copy(%struct._IV*, %struct._IV*) #3

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._ETree* @ETree_spliceTwoETrees(%struct._ETree* %etree0, %struct._Graph* %graph0, %struct._IV* %mapIV, %struct._ETree* %etree1) #0 {
entry:
  %vadj = alloca i32*, align 8
  %vsize = alloca i32, align 4
  %cmp = icmp eq %struct._ETree* %etree0, null
  %cmp1 = icmp eq %struct._Graph* %graph0, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct._IV* %mapIV, null
  %or.cond261 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq %struct._ETree* %etree1, null
  %or.cond262 = or i1 %or.cond261, %cmp5
  br i1 %or.cond262, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([64 x i8]* @.str14, i64 0, i64 0), %struct._ETree* %etree0, %struct._Graph* %graph0, %struct._IV* %mapIV, %struct._ETree* %etree1) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %nfront = getelementptr inbounds %struct._ETree* %etree0, i64 0, i32 0
  %1 = load i32* %nfront, align 4, !tbaa !3
  %nvtx6 = getelementptr inbounds %struct._ETree* %etree0, i64 0, i32 1
  %2 = load i32* %nvtx6, align 4, !tbaa !3
  %tree = getelementptr inbounds %struct._ETree* %etree0, i64 0, i32 2
  %3 = load %struct._Tree** %tree, align 8, !tbaa !0
  %par = getelementptr inbounds %struct._Tree* %3, i64 0, i32 2
  %4 = load i32** %par, align 8, !tbaa !0
  %sib = getelementptr inbounds %struct._Tree* %3, i64 0, i32 4
  %5 = load i32** %sib, align 8, !tbaa !0
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree0, i64 0, i32 3
  %6 = load %struct._IV** %nodwghtsIV, align 8, !tbaa !0
  %call9 = call i32* @IV_entries(%struct._IV* %6) #4
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree0, i64 0, i32 4
  %7 = load %struct._IV** %bndwghtsIV, align 8, !tbaa !0
  %call10 = call i32* @IV_entries(%struct._IV* %7) #4
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree0, i64 0, i32 5
  %8 = load %struct._IV** %vtxToFrontIV, align 8, !tbaa !0
  %call11 = call i32* @IV_entries(%struct._IV* %8) #4
  %nfront12 = getelementptr inbounds %struct._ETree* %etree1, i64 0, i32 0
  %9 = load i32* %nfront12, align 4, !tbaa !3
  %tree13 = getelementptr inbounds %struct._ETree* %etree1, i64 0, i32 2
  %10 = load %struct._Tree** %tree13, align 8, !tbaa !0
  %par14 = getelementptr inbounds %struct._Tree* %10, i64 0, i32 2
  %11 = load i32** %par14, align 8, !tbaa !0
  %bndwghtsIV15 = getelementptr inbounds %struct._ETree* %etree1, i64 0, i32 4
  %12 = load %struct._IV** %bndwghtsIV15, align 8, !tbaa !0
  %call16 = call i32* @IV_entries(%struct._IV* %12) #4
  %nodwghtsIV17 = getelementptr inbounds %struct._ETree* %etree1, i64 0, i32 3
  %13 = load %struct._IV** %nodwghtsIV17, align 8, !tbaa !0
  %call18 = call i32* @IV_entries(%struct._IV* %13) #4
  %vtxToFrontIV19 = getelementptr inbounds %struct._ETree* %etree1, i64 0, i32 5
  %14 = load %struct._IV** %vtxToFrontIV19, align 8, !tbaa !0
  %call20 = call i32* @IV_entries(%struct._IV* %14) #4
  %call21 = call i32* @IV_entries(%struct._IV* %mapIV) #4
  %add = add nsw i32 %9, %1
  %call22 = call %struct._ETree* @ETree_new() #4
  %15 = load i32* %nvtx6, align 4, !tbaa !3
  call void @ETree_init1(%struct._ETree* %call22, i32 %add, i32 %15) #4
  %tree24 = getelementptr inbounds %struct._ETree* %call22, i64 0, i32 2
  %16 = load %struct._Tree** %tree24, align 8, !tbaa !0
  %par25 = getelementptr inbounds %struct._Tree* %16, i64 0, i32 2
  %17 = load i32** %par25, align 8, !tbaa !0
  %nodwghtsIV26 = getelementptr inbounds %struct._ETree* %call22, i64 0, i32 3
  %18 = load %struct._IV** %nodwghtsIV26, align 8, !tbaa !0
  %call27 = call i32* @IV_entries(%struct._IV* %18) #4
  %bndwghtsIV28 = getelementptr inbounds %struct._ETree* %call22, i64 0, i32 4
  %19 = load %struct._IV** %bndwghtsIV28, align 8, !tbaa !0
  %call29 = call i32* @IV_entries(%struct._IV* %19) #4
  %vtxToFrontIV30 = getelementptr inbounds %struct._ETree* %call22, i64 0, i32 5
  %20 = load %struct._IV** %vtxToFrontIV30, align 8, !tbaa !0
  %call31 = call i32* @IV_entries(%struct._IV* %20) #4
  %cmp32280 = icmp sgt i32 %1, 0
  br i1 %cmp32280, label %for.body, label %for.cond43.preheader

for.cond43.preheader:                             ; preds = %for.body, %if.end
  %cmp44278 = icmp sgt i32 %9, 0
  br i1 %cmp44278, label %for.body45.lr.ph, label %for.cond65.preheader

for.body45.lr.ph:                                 ; preds = %for.cond43.preheader
  %21 = sext i32 %1 to i64
  br label %for.body45

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv295 = phi i64 [ %indvars.iv.next296, %for.body ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds i32* %4, i64 %indvars.iv295
  %22 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx34 = getelementptr inbounds i32* %17, i64 %indvars.iv295
  store i32 %22, i32* %arrayidx34, align 4, !tbaa !3
  %arrayidx36 = getelementptr inbounds i32* %call9, i64 %indvars.iv295
  %23 = load i32* %arrayidx36, align 4, !tbaa !3
  %arrayidx38 = getelementptr inbounds i32* %call27, i64 %indvars.iv295
  store i32 %23, i32* %arrayidx38, align 4, !tbaa !3
  %arrayidx40 = getelementptr inbounds i32* %call10, i64 %indvars.iv295
  %24 = load i32* %arrayidx40, align 4, !tbaa !3
  %arrayidx42 = getelementptr inbounds i32* %call29, i64 %indvars.iv295
  store i32 %24, i32* %arrayidx42, align 4, !tbaa !3
  %indvars.iv.next296 = add i64 %indvars.iv295, 1
  %lftr.wideiv297 = trunc i64 %indvars.iv.next296 to i32
  %exitcond298 = icmp eq i32 %lftr.wideiv297, %1
  br i1 %exitcond298, label %for.cond43.preheader, label %for.body

for.cond65.preheader:                             ; preds = %for.body45, %for.cond43.preheader
  %cmp66276 = icmp sgt i32 %2, 0
  br i1 %cmp66276, label %for.body67, label %for.end84

for.body45:                                       ; preds = %for.body45, %for.body45.lr.ph
  %indvars.iv288 = phi i64 [ 0, %for.body45.lr.ph ], [ %indvars.iv.next289, %for.body45 ]
  %arrayidx47 = getelementptr inbounds i32* %11, i64 %indvars.iv288
  %25 = load i32* %arrayidx47, align 4, !tbaa !3
  %add48 = add nsw i32 %25, %1
  %26 = add nsw i64 %indvars.iv288, %21
  %arrayidx51 = getelementptr inbounds i32* %17, i64 %26
  store i32 %add48, i32* %arrayidx51, align 4, !tbaa !3
  %arrayidx53 = getelementptr inbounds i32* %call18, i64 %indvars.iv288
  %27 = load i32* %arrayidx53, align 4, !tbaa !3
  %arrayidx56 = getelementptr inbounds i32* %call27, i64 %26
  store i32 %27, i32* %arrayidx56, align 4, !tbaa !3
  %arrayidx58 = getelementptr inbounds i32* %call16, i64 %indvars.iv288
  %28 = load i32* %arrayidx58, align 4, !tbaa !3
  %arrayidx61 = getelementptr inbounds i32* %call29, i64 %26
  store i32 %28, i32* %arrayidx61, align 4, !tbaa !3
  %indvars.iv.next289 = add i64 %indvars.iv288, 1
  %lftr.wideiv291 = trunc i64 %indvars.iv.next289 to i32
  %exitcond292 = icmp eq i32 %lftr.wideiv291, %9
  br i1 %exitcond292, label %for.cond65.preheader, label %for.body45

for.body67:                                       ; preds = %for.cond65.preheader, %for.inc82
  %indvars.iv284 = phi i64 [ %indvars.iv.next285, %for.inc82 ], [ 0, %for.cond65.preheader ]
  %arrayidx69 = getelementptr inbounds i32* %call11, i64 %indvars.iv284
  %29 = load i32* %arrayidx69, align 4, !tbaa !3
  %cmp70 = icmp sgt i32 %29, -1
  br i1 %cmp70, label %if.then71, label %if.else

if.then71:                                        ; preds = %for.body67
  %arrayidx73 = getelementptr inbounds i32* %call31, i64 %indvars.iv284
  store i32 %29, i32* %arrayidx73, align 4, !tbaa !3
  br label %for.inc82

if.else:                                          ; preds = %for.body67
  %arrayidx75 = getelementptr inbounds i32* %call21, i64 %indvars.iv284
  %30 = load i32* %arrayidx75, align 4, !tbaa !3
  %idxprom76 = sext i32 %30 to i64
  %arrayidx77 = getelementptr inbounds i32* %call20, i64 %idxprom76
  %31 = load i32* %arrayidx77, align 4, !tbaa !3
  %add78 = add nsw i32 %31, %1
  %arrayidx80 = getelementptr inbounds i32* %call31, i64 %indvars.iv284
  store i32 %add78, i32* %arrayidx80, align 4, !tbaa !3
  br label %for.inc82

for.inc82:                                        ; preds = %if.then71, %if.else
  %indvars.iv.next285 = add i64 %indvars.iv284, 1
  %lftr.wideiv286 = trunc i64 %indvars.iv.next285 to i32
  %exitcond287 = icmp eq i32 %lftr.wideiv286, %2
  br i1 %exitcond287, label %for.end84, label %for.body67

for.end84:                                        ; preds = %for.inc82, %for.cond65.preheader
  %call85 = call i32* @IVinit(i32 %1, i32 -1) #4
  %call86 = call i32* @IVinit(i32 %2, i32 -1) #4
  br i1 %cmp66276, label %for.body89, label %for.end103

for.body89:                                       ; preds = %for.end84, %for.inc101
  %indvars.iv282 = phi i64 [ %indvars.iv.next283, %for.inc101 ], [ 0, %for.end84 ]
  %arrayidx91 = getelementptr inbounds i32* %call11, i64 %indvars.iv282
  %32 = load i32* %arrayidx91, align 4, !tbaa !3
  %cmp92 = icmp sgt i32 %32, -1
  br i1 %cmp92, label %if.then93, label %for.inc101

if.then93:                                        ; preds = %for.body89
  %idxprom94 = sext i32 %32 to i64
  %arrayidx95 = getelementptr inbounds i32* %call85, i64 %idxprom94
  %33 = load i32* %arrayidx95, align 4, !tbaa !3
  %arrayidx97 = getelementptr inbounds i32* %call86, i64 %indvars.iv282
  store i32 %33, i32* %arrayidx97, align 4, !tbaa !3
  %34 = trunc i64 %indvars.iv282 to i32
  store i32 %34, i32* %arrayidx95, align 4, !tbaa !3
  br label %for.inc101

for.inc101:                                       ; preds = %for.body89, %if.then93
  %indvars.iv.next283 = add i64 %indvars.iv282, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next283 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond, label %for.end103, label %for.body89

for.end103:                                       ; preds = %for.inc101, %for.end84
  %call104 = call i32* @IVinit(i32 %2, i32 -1) #4
  %35 = load %struct._Tree** %tree, align 8, !tbaa !0
  %root = getelementptr inbounds %struct._Tree* %35, i64 0, i32 1
  %J.2271 = load i32* %root, align 4
  %cmp107272 = icmp eq i32 %J.2271, -1
  br i1 %cmp107272, label %for.end156, label %for.body108

for.body108:                                      ; preds = %for.end103, %for.inc153
  %J.2273 = phi i32 [ %J.2, %for.inc153 ], [ %J.2271, %for.end103 ]
  %idxprom109 = sext i32 %J.2273 to i64
  %arrayidx110 = getelementptr inbounds i32* %call85, i64 %idxprom109
  %v.2266 = load i32* %arrayidx110, align 4
  %cmp112267 = icmp eq i32 %v.2266, -1
  br i1 %cmp112267, label %for.inc153, label %for.body113

for.body113:                                      ; preds = %for.body108, %for.inc143
  %v.2269 = phi i32 [ %v.2, %for.inc143 ], [ %v.2266, %for.body108 ]
  %K.0268 = phi i32 [ %K.1.lcssa, %for.inc143 ], [ %9, %for.body108 ]
  call void @Graph_adjAndSize(%struct._Graph* %graph0, i32 %v.2269, i32* %vsize, i32** %vadj) #4
  %36 = load i32* %vsize, align 4, !tbaa !3
  %cmp115263 = icmp sgt i32 %36, 0
  br i1 %cmp115263, label %for.body116.lr.ph, label %for.inc143

for.body116.lr.ph:                                ; preds = %for.body113
  %37 = load i32** %vadj, align 8, !tbaa !0
  br label %for.body116

for.body116:                                      ; preds = %for.body116.lr.ph, %for.inc140
  %38 = phi i32 [ %36, %for.body116.lr.ph ], [ %44, %for.inc140 ]
  %indvars.iv = phi i64 [ 0, %for.body116.lr.ph ], [ %indvars.iv.next, %for.inc140 ]
  %K.1264 = phi i32 [ %K.0268, %for.body116.lr.ph ], [ %K.2, %for.inc140 ]
  %arrayidx118 = getelementptr inbounds i32* %37, i64 %indvars.iv
  %39 = load i32* %arrayidx118, align 4, !tbaa !3
  %idxprom119 = sext i32 %39 to i64
  %arrayidx120 = getelementptr inbounds i32* %call11, i64 %idxprom119
  %40 = load i32* %arrayidx120, align 4, !tbaa !3
  %cmp121 = icmp slt i32 %40, 0
  br i1 %cmp121, label %if.then122, label %for.inc140

if.then122:                                       ; preds = %for.body116
  %arrayidx124 = getelementptr inbounds i32* %call21, i64 %idxprom119
  %41 = load i32* %arrayidx124, align 4, !tbaa !3
  %idxprom125 = sext i32 %41 to i64
  %arrayidx126 = getelementptr inbounds i32* %call104, i64 %idxprom125
  %42 = load i32* %arrayidx126, align 4, !tbaa !3
  %cmp127 = icmp eq i32 %42, %J.2273
  br i1 %cmp127, label %for.inc140, label %if.then128

if.then128:                                       ; preds = %if.then122
  store i32 %J.2273, i32* %arrayidx126, align 4, !tbaa !3
  %arrayidx132 = getelementptr inbounds i32* %call20, i64 %idxprom125
  %43 = load i32* %arrayidx132, align 4, !tbaa !3
  %cmp133 = icmp sgt i32 %K.1264, %43
  %.K.1 = select i1 %cmp133, i32 %43, i32 %K.1264
  %.pre = load i32* %vsize, align 4, !tbaa !3
  br label %for.inc140

for.inc140:                                       ; preds = %if.then128, %if.then122, %for.body116
  %44 = phi i32 [ %38, %if.then122 ], [ %38, %for.body116 ], [ %.pre, %if.then128 ]
  %K.2 = phi i32 [ %K.1264, %if.then122 ], [ %K.1264, %for.body116 ], [ %.K.1, %if.then128 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %45 = trunc i64 %indvars.iv.next to i32
  %cmp115 = icmp slt i32 %45, %44
  br i1 %cmp115, label %for.body116, label %for.inc143

for.inc143:                                       ; preds = %for.inc140, %for.body113
  %K.1.lcssa = phi i32 [ %K.0268, %for.body113 ], [ %K.2, %for.inc140 ]
  %idxprom144 = sext i32 %v.2269 to i64
  %arrayidx145 = getelementptr inbounds i32* %call86, i64 %idxprom144
  %v.2 = load i32* %arrayidx145, align 4
  %cmp112 = icmp eq i32 %v.2, -1
  br i1 %cmp112, label %for.end146, label %for.body113

for.end146:                                       ; preds = %for.inc143
  %cmp147 = icmp slt i32 %K.1.lcssa, %9
  br i1 %cmp147, label %if.then148, label %for.inc153

if.then148:                                       ; preds = %for.end146
  %add149 = add nsw i32 %K.1.lcssa, %1
  %arrayidx151 = getelementptr inbounds i32* %17, i64 %idxprom109
  store i32 %add149, i32* %arrayidx151, align 4, !tbaa !3
  br label %for.inc153

for.inc153:                                       ; preds = %for.body108, %for.end146, %if.then148
  %arrayidx155 = getelementptr inbounds i32* %5, i64 %idxprom109
  %J.2 = load i32* %arrayidx155, align 4
  %cmp107 = icmp eq i32 %J.2, -1
  br i1 %cmp107, label %for.end156, label %for.body108

for.end156:                                       ; preds = %for.inc153, %for.end103
  %46 = load %struct._Tree** %tree24, align 8, !tbaa !0
  call void @Tree_setFchSibRoot(%struct._Tree* %46) #4
  call void @IVfree(i32* %call85) #4
  call void @IVfree(i32* %call86) #4
  call void @IVfree(i32* %call104) #4
  ret %struct._ETree* %call22
}

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #3

; Function Attrs: optsize
declare void @Tree_setFchSibRoot(%struct._Tree*) #3

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
!4 = metadata !{metadata !"double", metadata !1}
