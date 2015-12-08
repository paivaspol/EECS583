; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._DenseMtx = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._DenseMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }
%struct._Drand = type { double, double, double, double, double, double, double, double, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [47 x i8] c"\0A fatal error in DenseMtx_sort(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [59 x i8] c"\0A fatal error in DenseMtx_copyRow(%p,%d,%p,%d)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [58 x i8] c"\0A fatal error in DenseMtx_addRow(%p,%d,%p,%d)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [47 x i8] c"\0A fatal error in DenseMtx_zero(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [63 x i8] c"\0A fatal error in DenseMtx_fillRandomEntries(%p,%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [55 x i8] c"\0A fatal error in DenseMtx_checksums(%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [49 x i8] c"\0A fatal error in DenseMtx_maxabs(%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [51 x i8] c"\0A fatal error in DenseMtx_maxabs(%p)\0A bad type %d\0A\00", align 1
@.str8 = private unnamed_addr constant [49 x i8] c"\0A fatal error in DenseMtx_sub(%p,%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [72 x i8] c"\0A fatal error in DenseMtx_sub(%p,%p)\0A mtxB->type = %d, mtxA->type = %d\0A\00", align 1
@.str10 = private unnamed_addr constant [72 x i8] c"\0A fatal error in DenseMtx_sub(%p,%p)\0A mtxB->nrow = %d, mtxA->nrow = %d\0A\00", align 1
@.str11 = private unnamed_addr constant [72 x i8] c"\0A fatal error in DenseMtx_sub(%p,%p)\0A mtxB->ncol = %d, mtxA->ncol = %d\0A\00", align 1
@.str12 = private unnamed_addr constant [78 x i8] c"\0A fatal error in DenseMtx_sub(%p,%p)\0A mtxB->entries = %p, mtxA->entries = %p\0A\00", align 1
@.str13 = private unnamed_addr constant [58 x i8] c"\0A fatal error in DenseMtx_copyRowIntoVector()\0A bad input\0A\00", align 1
@.str14 = private unnamed_addr constant [69 x i8] c"\0A fatal error in DenseMtx_copyRowIntoVector()\0A irow = %d, nrow = %d\0A\00", align 1
@.str15 = private unnamed_addr constant [83 x i8] c"\0A fatal error in DenseMtx_copyVectorIntoRow()\0A bad input, mtx %p, irow %d, vec %p\0A\00", align 1
@.str16 = private unnamed_addr constant [69 x i8] c"\0A fatal error in DenseMtx_copyVectorIntoRow()\0A irow = %d, nrow = %d\0A\00", align 1
@.str17 = private unnamed_addr constant [82 x i8] c"\0A fatal error in DenseMtx_addVectorIntoRow()\0A bad input, mtx %p, irow %d, vec %p\0A\00", align 1
@.str18 = private unnamed_addr constant [68 x i8] c"\0A fatal error in DenseMtx_addVectorIntoRow()\0A irow = %d, nrow = %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_sort(%struct._DenseMtx* %mtx) #0 {
entry:
  %a2 = alloca %struct._A2, align 8
  %ncol = alloca i32, align 4
  %nrow = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str, i64 0, i64 0), %struct._DenseMtx* null) #6
  call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  call void @DenseMtx_rowIndices(%struct._DenseMtx* %mtx, i32* %nrow, i32** %rowind) #6
  call void @DenseMtx_columnIndices(%struct._DenseMtx* %mtx, i32* %ncol, i32** %colind) #6
  %1 = load i32* %nrow, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %1, 1
  br i1 %cmp1, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32* %ncol, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %2, 1
  br i1 %cmp2, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false
  %cmp556 = icmp sgt i32 %1, 1
  br i1 %cmp556, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %3 = load i32** %rowind, align 8, !tbaa !0
  %.pre62 = load i32* %3, align 4, !tbaa !3
  br label %for.body

for.cond:                                         ; preds = %for.body
  %4 = trunc i64 %indvars.iv.next60 to i32
  %cmp5 = icmp slt i32 %4, %1
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %5 = phi i32 [ %.pre62, %for.body.lr.ph ], [ %6, %for.cond ]
  %indvars.iv59 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next60, %for.cond ]
  %arrayidx7 = getelementptr inbounds i32* %3, i64 %indvars.iv59
  %6 = load i32* %arrayidx7, align 4, !tbaa !3
  %cmp8 = icmp sgt i32 %5, %6
  %indvars.iv.next60 = add i64 %indvars.iv59, 1
  br i1 %cmp8, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond, %for.body, %for.cond.preheader
  %sortRows.0 = phi i32 [ 0, %for.cond.preheader ], [ 1, %for.body ], [ 0, %for.cond ]
  %cmp1254 = icmp sgt i32 %2, 1
  br i1 %cmp1254, label %for.body13.lr.ph, label %for.end24

for.body13.lr.ph:                                 ; preds = %for.end
  %7 = load i32** %colind, align 8, !tbaa !0
  %.pre = load i32* %7, align 4, !tbaa !3
  br label %for.body13

for.cond11:                                       ; preds = %for.body13
  %8 = trunc i64 %indvars.iv.next to i32
  %cmp12 = icmp slt i32 %8, %2
  br i1 %cmp12, label %for.body13, label %for.end24

for.body13:                                       ; preds = %for.body13.lr.ph, %for.cond11
  %9 = phi i32 [ %.pre, %for.body13.lr.ph ], [ %10, %for.cond11 ]
  %indvars.iv = phi i64 [ 1, %for.body13.lr.ph ], [ %indvars.iv.next, %for.cond11 ]
  %arrayidx18 = getelementptr inbounds i32* %7, i64 %indvars.iv
  %10 = load i32* %arrayidx18, align 4, !tbaa !3
  %cmp19 = icmp sgt i32 %9, %10
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp19, label %if.end28, label %for.cond11

for.end24:                                        ; preds = %for.cond11, %for.end
  %cmp25 = icmp eq i32 %sortRows.0, 0
  br i1 %cmp25, label %return, label %if.end28

if.end28:                                         ; preds = %for.body13, %for.end24
  %sortColumns.053 = phi i32 [ 0, %for.end24 ], [ 1, %for.body13 ]
  call void @A2_setDefaultFields(%struct._A2* %a2) #6
  call void @DenseMtx_setA2(%struct._DenseMtx* %mtx, %struct._A2* %a2) #6
  %cmp29 = icmp eq i32 %sortRows.0, 1
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end28
  %11 = load i32* %nrow, align 4, !tbaa !3
  %12 = load i32** %rowind, align 8, !tbaa !0
  %call31 = call i32 @A2_sortRowsUp(%struct._A2* %a2, i32 %11, i32* %12) #6
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end28
  %cmp33 = icmp eq i32 %sortColumns.053, 1
  br i1 %cmp33, label %if.then34, label %return

if.then34:                                        ; preds = %if.end32
  %13 = load i32* %ncol, align 4, !tbaa !3
  %14 = load i32** %colind, align 8, !tbaa !0
  %call35 = call i32 @A2_sortColumnsUp(%struct._A2* %a2, i32 %13, i32* %14) #6
  br label %return

return:                                           ; preds = %for.end24, %if.end32, %if.then34, %if.end, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @DenseMtx_rowIndices(%struct._DenseMtx*, i32*, i32**) #3

; Function Attrs: optsize
declare void @DenseMtx_columnIndices(%struct._DenseMtx*, i32*, i32**) #3

; Function Attrs: optsize
declare void @A2_setDefaultFields(%struct._A2*) #3

; Function Attrs: optsize
declare void @DenseMtx_setA2(%struct._DenseMtx*, %struct._A2*) #3

; Function Attrs: optsize
declare i32 @A2_sortRowsUp(%struct._A2*, i32, i32*) #3

; Function Attrs: optsize
declare i32 @A2_sortColumnsUp(%struct._A2*, i32, i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_copyRow(%struct._DenseMtx* %mtxB, i32 %irowB, %struct._DenseMtx* %mtxA, i32 %irowA) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtxB, null
  %cmp1 = icmp slt i32 %irowB, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 3
  %0 = load i32* %nrow, align 4, !tbaa !3
  %cmp3 = icmp sle i32 %0, %irowB
  %cmp5 = icmp eq %struct._DenseMtx* %mtxA, null
  %or.cond121 = or i1 %cmp3, %cmp5
  %cmp7 = icmp slt i32 %irowA, 0
  %or.cond122 = or i1 %or.cond121, %cmp7
  br i1 %or.cond122, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false2
  %nrow9 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 3
  %1 = load i32* %nrow9, align 4, !tbaa !3
  %cmp10 = icmp sgt i32 %1, %irowA
  br i1 %cmp10, label %lor.lhs.false11, label %if.then

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %ncol12 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 4
  %2 = load i32* %ncol12, align 4, !tbaa !3
  %ncol13 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 4
  %3 = load i32* %ncol13, align 4, !tbaa !3
  %cmp14 = icmp eq i32 %2, %3
  br i1 %cmp14, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false11, %lor.lhs.false8, %entry
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([59 x i8]* @.str1, i64 0, i64 0), %struct._DenseMtx* %mtxB, i32 %irowB, %struct._DenseMtx* %mtxA, i32 %irowA) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false11
  %inc2 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 6
  %5 = load i32* %inc2, align 4, !tbaa !3
  %inc215 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 6
  %6 = load i32* %inc215, align 4, !tbaa !3
  %type = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 0
  %7 = load i32* %type, align 4, !tbaa !3
  switch i32 %7, label %if.end70 [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true31
  ]

land.lhs.true:                                    ; preds = %if.end
  %type17 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 0
  %8 = load i32* %type17, align 4, !tbaa !3
  %cmp18 = icmp eq i32 %8, 1
  br i1 %cmp18, label %if.then19, label %if.end70

if.then19:                                        ; preds = %land.lhs.true
  %entries = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 9
  %9 = load double** %entries, align 8, !tbaa !0
  %inc1 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 5
  %10 = load i32* %inc1, align 4, !tbaa !3
  %mul = mul nsw i32 %10, %irowA
  %idx.ext = sext i32 %mul to i64
  %entries20 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 9
  %11 = load double** %entries20, align 8, !tbaa !0
  %inc121 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 5
  %12 = load i32* %inc121, align 4, !tbaa !3
  %mul22 = mul nsw i32 %12, %irowB
  %idx.ext23 = sext i32 %mul22 to i64
  %cmp25123 = icmp sgt i32 %2, 0
  br i1 %cmp25123, label %for.body.lr.ph, label %if.end70

for.body.lr.ph:                                   ; preds = %if.then19
  %13 = sext i32 %6 to i64
  %14 = sext i32 %5 to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv132 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next133, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %ii.0124 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %add.ptr.sum = add i64 %indvars.iv132, %idx.ext
  %arrayidx = getelementptr inbounds double* %9, i64 %add.ptr.sum
  %15 = load double* %arrayidx, align 8, !tbaa !4
  %add.ptr24.sum = add i64 %indvars.iv, %idx.ext23
  %arrayidx27 = getelementptr inbounds double* %11, i64 %add.ptr24.sum
  store double %15, double* %arrayidx27, align 8, !tbaa !4
  %inc = add nsw i32 %ii.0124, 1
  %indvars.iv.next133 = add i64 %indvars.iv132, %14
  %indvars.iv.next = add i64 %indvars.iv, %13
  %exitcond = icmp eq i32 %inc, %2
  br i1 %exitcond, label %if.end70, label %for.body

land.lhs.true31:                                  ; preds = %if.end
  %type32 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 0
  %16 = load i32* %type32, align 4, !tbaa !3
  %cmp33 = icmp eq i32 %16, 2
  br i1 %cmp33, label %if.then34, label %if.end70

if.then34:                                        ; preds = %land.lhs.true31
  %entries35 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 9
  %17 = load double** %entries35, align 8, !tbaa !0
  %mul36 = shl i32 %irowA, 1
  %inc137 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 5
  %18 = load i32* %inc137, align 4, !tbaa !3
  %mul38 = mul nsw i32 %mul36, %18
  %idx.ext39 = sext i32 %mul38 to i64
  %entries41 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 9
  %19 = load double** %entries41, align 8, !tbaa !0
  %mul42 = shl i32 %irowB, 1
  %inc143 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 5
  %20 = load i32* %inc143, align 4, !tbaa !3
  %mul44 = mul nsw i32 %mul42, %20
  %idx.ext45 = sext i32 %mul44 to i64
  %cmp48128 = icmp sgt i32 %2, 0
  br i1 %cmp48128, label %for.body49.lr.ph, label %if.end70

for.body49.lr.ph:                                 ; preds = %if.then34
  %21 = sext i32 %6 to i64
  %22 = sext i32 %5 to i64
  br label %for.body49

for.body49:                                       ; preds = %for.body49, %for.body49.lr.ph
  %indvars.iv136 = phi i64 [ 0, %for.body49.lr.ph ], [ %indvars.iv.next137, %for.body49 ]
  %indvars.iv134 = phi i64 [ 0, %for.body49.lr.ph ], [ %indvars.iv.next135, %for.body49 ]
  %ii.1129 = phi i32 [ 0, %for.body49.lr.ph ], [ %inc65, %for.body49 ]
  %23 = trunc i64 %indvars.iv136 to i32
  %mul50 = shl nsw i32 %23, 1
  %idxprom51 = sext i32 %mul50 to i64
  %add.ptr40.sum = add i64 %idxprom51, %idx.ext39
  %arrayidx52 = getelementptr inbounds double* %17, i64 %add.ptr40.sum
  %24 = load double* %arrayidx52, align 8, !tbaa !4
  %25 = trunc i64 %indvars.iv134 to i32
  %mul53 = shl nsw i32 %25, 1
  %idxprom54 = sext i32 %mul53 to i64
  %add.ptr46.sum = add i64 %idxprom54, %idx.ext45
  %arrayidx55 = getelementptr inbounds double* %19, i64 %add.ptr46.sum
  store double %24, double* %arrayidx55, align 8, !tbaa !4
  %add57117 = or i32 %mul50, 1
  %idxprom58 = sext i32 %add57117 to i64
  %add.ptr40.sum118 = add i64 %idxprom58, %idx.ext39
  %arrayidx59 = getelementptr inbounds double* %17, i64 %add.ptr40.sum118
  %26 = load double* %arrayidx59, align 8, !tbaa !4
  %add61119 = or i32 %mul53, 1
  %idxprom62 = sext i32 %add61119 to i64
  %add.ptr46.sum120 = add i64 %idxprom62, %idx.ext45
  %arrayidx63 = getelementptr inbounds double* %19, i64 %add.ptr46.sum120
  store double %26, double* %arrayidx63, align 8, !tbaa !4
  %inc65 = add nsw i32 %ii.1129, 1
  %indvars.iv.next137 = add i64 %indvars.iv136, %22
  %indvars.iv.next135 = add i64 %indvars.iv134, %21
  %exitcond138 = icmp eq i32 %inc65, %2
  br i1 %exitcond138, label %if.end70, label %for.body49

if.end70:                                         ; preds = %if.end, %land.lhs.true, %if.then34, %for.body49, %if.then19, %for.body, %land.lhs.true31
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_copyRowAndIndex(%struct._DenseMtx* %mtxB, i32 %irowB, %struct._DenseMtx* %mtxA, i32 %irowA) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtxB, null
  %cmp1 = icmp slt i32 %irowB, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 3
  %0 = load i32* %nrow, align 4, !tbaa !3
  %cmp3 = icmp sle i32 %0, %irowB
  %cmp5 = icmp eq %struct._DenseMtx* %mtxA, null
  %or.cond35 = or i1 %cmp3, %cmp5
  %cmp7 = icmp slt i32 %irowA, 0
  %or.cond36 = or i1 %or.cond35, %cmp7
  br i1 %or.cond36, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false2
  %nrow9 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 3
  %1 = load i32* %nrow9, align 4, !tbaa !3
  %cmp10 = icmp sgt i32 %1, %irowA
  br i1 %cmp10, label %lor.lhs.false11, label %if.then

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %ncol = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 4
  %2 = load i32* %ncol, align 4, !tbaa !3
  %ncol12 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 4
  %3 = load i32* %ncol12, align 4, !tbaa !3
  %cmp13 = icmp eq i32 %2, %3
  br i1 %cmp13, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false11, %lor.lhs.false8, %entry
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([59 x i8]* @.str1, i64 0, i64 0), %struct._DenseMtx* %mtxB, i32 %irowB, %struct._DenseMtx* %mtxA, i32 %irowA) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false11
  tail call void @DenseMtx_copyRow(%struct._DenseMtx* %mtxB, i32 %irowB, %struct._DenseMtx* %mtxA, i32 %irowA) #8
  %idxprom = sext i32 %irowA to i64
  %rowind = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 7
  %5 = load i32** %rowind, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %5, i64 %idxprom
  %6 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom14 = sext i32 %irowB to i64
  %rowind15 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 7
  %7 = load i32** %rowind15, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds i32* %7, i64 %idxprom14
  store i32 %6, i32* %arrayidx16, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_addRow(%struct._DenseMtx* %mtxB, i32 %irowB, %struct._DenseMtx* %mtxA, i32 %irowA) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtxB, null
  %cmp1 = icmp slt i32 %irowB, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 3
  %0 = load i32* %nrow, align 4, !tbaa !3
  %cmp3 = icmp sle i32 %0, %irowB
  %cmp5 = icmp eq %struct._DenseMtx* %mtxA, null
  %or.cond124 = or i1 %cmp3, %cmp5
  %cmp7 = icmp slt i32 %irowA, 0
  %or.cond125 = or i1 %or.cond124, %cmp7
  br i1 %or.cond125, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false2
  %nrow9 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 3
  %1 = load i32* %nrow9, align 4, !tbaa !3
  %cmp10 = icmp sgt i32 %1, %irowA
  br i1 %cmp10, label %lor.lhs.false11, label %if.then

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %ncol12 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 4
  %2 = load i32* %ncol12, align 4, !tbaa !3
  %ncol13 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 4
  %3 = load i32* %ncol13, align 4, !tbaa !3
  %cmp14 = icmp eq i32 %2, %3
  br i1 %cmp14, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false11, %lor.lhs.false8, %entry
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([58 x i8]* @.str2, i64 0, i64 0), %struct._DenseMtx* %mtxB, i32 %irowB, %struct._DenseMtx* %mtxA, i32 %irowA) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false11
  %inc2 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 6
  %5 = load i32* %inc2, align 4, !tbaa !3
  %inc215 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 6
  %6 = load i32* %inc215, align 4, !tbaa !3
  %type = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 0
  %7 = load i32* %type, align 4, !tbaa !3
  switch i32 %7, label %if.end73 [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true32
  ]

land.lhs.true:                                    ; preds = %if.end
  %type17 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 0
  %8 = load i32* %type17, align 4, !tbaa !3
  %cmp18 = icmp eq i32 %8, 1
  br i1 %cmp18, label %if.then19, label %if.end73

if.then19:                                        ; preds = %land.lhs.true
  %entries = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 9
  %9 = load double** %entries, align 8, !tbaa !0
  %inc1 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 5
  %10 = load i32* %inc1, align 4, !tbaa !3
  %mul = mul nsw i32 %10, %irowA
  %idx.ext = sext i32 %mul to i64
  %entries20 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 9
  %11 = load double** %entries20, align 8, !tbaa !0
  %inc121 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 5
  %12 = load i32* %inc121, align 4, !tbaa !3
  %mul22 = mul nsw i32 %12, %irowB
  %idx.ext23 = sext i32 %mul22 to i64
  %cmp25126 = icmp sgt i32 %2, 0
  br i1 %cmp25126, label %for.body.lr.ph, label %if.end73

for.body.lr.ph:                                   ; preds = %if.then19
  %13 = sext i32 %6 to i64
  %14 = sext i32 %5 to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv135 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next136, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %ii.0127 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %add.ptr.sum = add i64 %indvars.iv135, %idx.ext
  %arrayidx = getelementptr inbounds double* %9, i64 %add.ptr.sum
  %15 = load double* %arrayidx, align 8, !tbaa !4
  %add.ptr24.sum = add i64 %indvars.iv, %idx.ext23
  %arrayidx27 = getelementptr inbounds double* %11, i64 %add.ptr24.sum
  %16 = load double* %arrayidx27, align 8, !tbaa !4
  %add = fadd double %15, %16
  store double %add, double* %arrayidx27, align 8, !tbaa !4
  %inc = add nsw i32 %ii.0127, 1
  %indvars.iv.next136 = add i64 %indvars.iv135, %14
  %indvars.iv.next = add i64 %indvars.iv, %13
  %exitcond = icmp eq i32 %inc, %2
  br i1 %exitcond, label %if.end73, label %for.body

land.lhs.true32:                                  ; preds = %if.end
  %type33 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 0
  %17 = load i32* %type33, align 4, !tbaa !3
  %cmp34 = icmp eq i32 %17, 2
  br i1 %cmp34, label %if.then35, label %if.end73

if.then35:                                        ; preds = %land.lhs.true32
  %entries36 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 9
  %18 = load double** %entries36, align 8, !tbaa !0
  %mul37 = shl i32 %irowA, 1
  %inc138 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 5
  %19 = load i32* %inc138, align 4, !tbaa !3
  %mul39 = mul nsw i32 %mul37, %19
  %idx.ext40 = sext i32 %mul39 to i64
  %entries42 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 9
  %20 = load double** %entries42, align 8, !tbaa !0
  %mul43 = shl i32 %irowB, 1
  %inc144 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 5
  %21 = load i32* %inc144, align 4, !tbaa !3
  %mul45 = mul nsw i32 %mul43, %21
  %idx.ext46 = sext i32 %mul45 to i64
  %cmp49131 = icmp sgt i32 %2, 0
  br i1 %cmp49131, label %for.body50.lr.ph, label %if.end73

for.body50.lr.ph:                                 ; preds = %if.then35
  %22 = sext i32 %6 to i64
  %23 = sext i32 %5 to i64
  br label %for.body50

for.body50:                                       ; preds = %for.body50, %for.body50.lr.ph
  %indvars.iv139 = phi i64 [ 0, %for.body50.lr.ph ], [ %indvars.iv.next140, %for.body50 ]
  %indvars.iv137 = phi i64 [ 0, %for.body50.lr.ph ], [ %indvars.iv.next138, %for.body50 ]
  %ii.1132 = phi i32 [ 0, %for.body50.lr.ph ], [ %inc68, %for.body50 ]
  %24 = trunc i64 %indvars.iv139 to i32
  %mul51 = shl nsw i32 %24, 1
  %idxprom52 = sext i32 %mul51 to i64
  %add.ptr41.sum = add i64 %idxprom52, %idx.ext40
  %arrayidx53 = getelementptr inbounds double* %18, i64 %add.ptr41.sum
  %25 = load double* %arrayidx53, align 8, !tbaa !4
  %26 = trunc i64 %indvars.iv137 to i32
  %mul54 = shl nsw i32 %26, 1
  %idxprom55 = sext i32 %mul54 to i64
  %add.ptr47.sum = add i64 %idxprom55, %idx.ext46
  %arrayidx56 = getelementptr inbounds double* %20, i64 %add.ptr47.sum
  %27 = load double* %arrayidx56, align 8, !tbaa !4
  %add57 = fadd double %25, %27
  store double %add57, double* %arrayidx56, align 8, !tbaa !4
  %add59120 = or i32 %mul51, 1
  %idxprom60 = sext i32 %add59120 to i64
  %add.ptr41.sum121 = add i64 %idxprom60, %idx.ext40
  %arrayidx61 = getelementptr inbounds double* %18, i64 %add.ptr41.sum121
  %28 = load double* %arrayidx61, align 8, !tbaa !4
  %add63122 = or i32 %mul54, 1
  %idxprom64 = sext i32 %add63122 to i64
  %add.ptr47.sum123 = add i64 %idxprom64, %idx.ext46
  %arrayidx65 = getelementptr inbounds double* %20, i64 %add.ptr47.sum123
  %29 = load double* %arrayidx65, align 8, !tbaa !4
  %add66 = fadd double %28, %29
  store double %add66, double* %arrayidx65, align 8, !tbaa !4
  %inc68 = add nsw i32 %ii.1132, 1
  %indvars.iv.next140 = add i64 %indvars.iv139, %23
  %indvars.iv.next138 = add i64 %indvars.iv137, %22
  %exitcond141 = icmp eq i32 %inc68, %2
  br i1 %exitcond141, label %if.end73, label %for.body50

if.end73:                                         ; preds = %if.end, %land.lhs.true, %if.then35, %for.body50, %if.then19, %for.body, %land.lhs.true32
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_zero(%struct._DenseMtx* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str3, i64 0, i64 0), %struct._DenseMtx* null) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  switch i32 %1, label %if.end12 [
    i32 1, label %if.then2
    i32 2, label %if.then5
  ]

if.then2:                                         ; preds = %if.end
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  %2 = load i32* %nrow, align 4, !tbaa !3
  %ncol = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  %3 = load i32* %ncol, align 4, !tbaa !3
  %mul = mul nsw i32 %3, %2
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9
  %4 = load double** %entries, align 8, !tbaa !0
  tail call void @DVzero(i32 %mul, double* %4) #6
  br label %if.end12

if.then5:                                         ; preds = %if.end
  %nrow6 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  %5 = load i32* %nrow6, align 4, !tbaa !3
  %mul7 = shl i32 %5, 1
  %ncol8 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  %6 = load i32* %ncol8, align 4, !tbaa !3
  %mul9 = mul nsw i32 %mul7, %6
  %entries10 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9
  %7 = load double** %entries10, align 8, !tbaa !0
  tail call void @DVzero(i32 %mul9, double* %7) #6
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then5, %if.then2
  ret void
}

; Function Attrs: optsize
declare void @DVzero(i32, double*) #3

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_fillRandomEntries(%struct._DenseMtx* %mtx, %struct._Drand* %drand) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  %cmp1 = icmp eq %struct._Drand* %drand, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), %struct._DenseMtx* %mtx, %struct._Drand* %drand) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  switch i32 %1, label %if.end13 [
    i32 1, label %if.then3
    i32 2, label %if.then6
  ]

if.then3:                                         ; preds = %if.end
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  %2 = load i32* %nrow, align 4, !tbaa !3
  %ncol = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  %3 = load i32* %ncol, align 4, !tbaa !3
  %mul = mul nsw i32 %3, %2
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9
  %4 = load double** %entries, align 8, !tbaa !0
  tail call void @Drand_fillDvector(%struct._Drand* %drand, i32 %mul, double* %4) #6
  br label %if.end13

if.then6:                                         ; preds = %if.end
  %nrow7 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  %5 = load i32* %nrow7, align 4, !tbaa !3
  %mul8 = shl i32 %5, 1
  %ncol9 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  %6 = load i32* %ncol9, align 4, !tbaa !3
  %mul10 = mul nsw i32 %mul8, %6
  %entries11 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9
  %7 = load double** %entries11, align 8, !tbaa !0
  tail call void @Drand_fillDvector(%struct._Drand* %drand, i32 %mul10, double* %7) #6
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then6, %if.then3
  ret void
}

; Function Attrs: optsize
declare void @Drand_fillDvector(%struct._Drand*, i32, double*) #3

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_checksums(%struct._DenseMtx* %mtx, double* %sums) #0 {
entry:
  %ncol = alloca i32, align 4
  %nrow = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  %cmp1 = icmp eq double* %sums, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), %struct._DenseMtx* %mtx, double* %sums) #6
  call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds double* %sums, i64 2
  %arrayidx2 = getelementptr inbounds double* %sums, i64 1
  %1 = bitcast double* %sums to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 24, i32 8, i1 false)
  call void @DenseMtx_rowIndices(%struct._DenseMtx* %mtx, i32* %nrow, i32** %rowind) #6
  %2 = load i32* %nrow, align 4, !tbaa !3
  %cmp495 = icmp sgt i32 %2, 0
  br i1 %cmp495, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %3 = load i32** %rowind, align 8, !tbaa !0
  %sums.promoted = load double* %sums, align 8, !tbaa !4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv103 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next104, %for.body ]
  %4 = phi double [ %sums.promoted, %for.body.lr.ph ], [ %add, %for.body ]
  %arrayidx5 = getelementptr inbounds i32* %3, i64 %indvars.iv103
  %5 = load i32* %arrayidx5, align 4, !tbaa !3
  %conv = sitofp i32 %5 to double
  %add = fadd double %4, %conv
  %indvars.iv.next104 = add i64 %indvars.iv103, 1
  %6 = trunc i64 %indvars.iv.next104 to i32
  %cmp4 = icmp slt i32 %6, %2
  br i1 %cmp4, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.body
  store double %add, double* %sums, align 8, !tbaa !4
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end
  call void @DenseMtx_columnIndices(%struct._DenseMtx* %mtx, i32* %ncol, i32** %colind) #6
  %7 = load i32* %ncol, align 4, !tbaa !3
  %cmp893 = icmp sgt i32 %7, 0
  br i1 %cmp893, label %for.body10.lr.ph, label %for.end18

for.body10.lr.ph:                                 ; preds = %for.end
  %8 = load i32** %colind, align 8, !tbaa !0
  %arrayidx2.promoted = load double* %arrayidx2, align 8, !tbaa !4
  br label %for.body10

for.body10:                                       ; preds = %for.body10.lr.ph, %for.body10
  %indvars.iv101 = phi i64 [ 0, %for.body10.lr.ph ], [ %indvars.iv.next102, %for.body10 ]
  %9 = phi double [ %arrayidx2.promoted, %for.body10.lr.ph ], [ %add15, %for.body10 ]
  %arrayidx12 = getelementptr inbounds i32* %8, i64 %indvars.iv101
  %10 = load i32* %arrayidx12, align 4, !tbaa !3
  %conv13 = sitofp i32 %10 to double
  %add15 = fadd double %9, %conv13
  %indvars.iv.next102 = add i64 %indvars.iv101, 1
  %11 = trunc i64 %indvars.iv.next102 to i32
  %cmp8 = icmp slt i32 %11, %7
  br i1 %cmp8, label %for.body10, label %for.cond7.for.end18_crit_edge

for.cond7.for.end18_crit_edge:                    ; preds = %for.body10
  store double %add15, double* %arrayidx2, align 8, !tbaa !4
  br label %for.end18

for.end18:                                        ; preds = %for.cond7.for.end18_crit_edge, %for.end
  %call19 = call double* @DenseMtx_entries(%struct._DenseMtx* %mtx) #6
  %12 = load i32* %nrow, align 4, !tbaa !3
  %13 = load i32* %ncol, align 4, !tbaa !3
  %mul = mul i32 %13, %12
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0
  %14 = load i32* %type, align 4, !tbaa !3
  switch i32 %14, label %if.end57 [
    i32 1, label %for.cond23.preheader
    i32 2, label %for.cond39.preheader
  ]

for.cond39.preheader:                             ; preds = %for.end18
  %cmp4091 = icmp sgt i32 %mul, 0
  br i1 %cmp4091, label %for.body42, label %if.end57

for.cond23.preheader:                             ; preds = %for.end18
  %cmp2488 = icmp sgt i32 %mul, 0
  br i1 %cmp2488, label %for.body26.lr.ph, label %if.end57

for.body26.lr.ph:                                 ; preds = %for.cond23.preheader
  %.pre = load double* %arrayidx, align 8, !tbaa !4
  br label %for.body26

for.body26:                                       ; preds = %for.body26, %for.body26.lr.ph
  %15 = phi double [ %.pre, %for.body26.lr.ph ], [ %add31, %for.body26 ]
  %indvars.iv = phi i64 [ 0, %for.body26.lr.ph ], [ %indvars.iv.next, %for.body26 ]
  %arrayidx28 = getelementptr inbounds double* %call19, i64 %indvars.iv
  %16 = load double* %arrayidx28, align 8, !tbaa !4
  %call29 = call double @fabs(double %16) #9
  %add31 = fadd double %call29, %15
  store double %add31, double* %arrayidx, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %mul
  br i1 %exitcond, label %if.end57, label %for.body26

for.body42:                                       ; preds = %for.cond39.preheader, %for.body42
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %for.body42 ], [ 0, %for.cond39.preheader ]
  %17 = trunc i64 %indvars.iv97 to i32
  %mul43 = shl nsw i32 %17, 1
  %idxprom44 = sext i32 %mul43 to i64
  %arrayidx45 = getelementptr inbounds double* %call19, i64 %idxprom44
  %18 = load double* %arrayidx45, align 8, !tbaa !4
  %add4787 = or i32 %mul43, 1
  %idxprom48 = sext i32 %add4787 to i64
  %arrayidx49 = getelementptr inbounds double* %call19, i64 %idxprom48
  %19 = load double* %arrayidx49, align 8, !tbaa !4
  %call50 = call double @Zabs(double %18, double %19) #6
  %20 = load double* %arrayidx, align 8, !tbaa !4
  %add52 = fadd double %call50, %20
  store double %add52, double* %arrayidx, align 8, !tbaa !4
  %indvars.iv.next98 = add i64 %indvars.iv97, 1
  %lftr.wideiv99 = trunc i64 %indvars.iv.next98 to i32
  %exitcond100 = icmp eq i32 %lftr.wideiv99, %mul
  br i1 %exitcond100, label %if.end57, label %for.body42

if.end57:                                         ; preds = %for.cond39.preheader, %for.body42, %for.cond23.preheader, %for.body26, %for.end18
  ret void
}

; Function Attrs: optsize
declare double* @DenseMtx_entries(%struct._DenseMtx*) #3

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #4

; Function Attrs: optsize
declare double @Zabs(double, double) #3

; Function Attrs: nounwind optsize uwtable
define double @DenseMtx_maxabs(%struct._DenseMtx* %mtx) #0 {
entry:
  %loc = alloca i32, align 4
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str6, i64 0, i64 0), %struct._DenseMtx* null) #6
  call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  switch i32 %1, label %if.else12 [
    i32 1, label %if.then2
    i32 2, label %if.then6
  ]

if.then2:                                         ; preds = %if.end
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  %2 = load i32* %nrow, align 4, !tbaa !3
  %ncol = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  %3 = load i32* %ncol, align 4, !tbaa !3
  %mul = mul nsw i32 %3, %2
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9
  %4 = load double** %entries, align 8, !tbaa !0
  %call3 = call double @DVmaxabs(i32 %mul, double* %4, i32* %loc) #6
  br label %if.end16

if.then6:                                         ; preds = %if.end
  %nrow7 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  %5 = load i32* %nrow7, align 4, !tbaa !3
  %ncol8 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  %6 = load i32* %ncol8, align 4, !tbaa !3
  %mul9 = mul nsw i32 %6, %5
  %entries10 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9
  %7 = load double** %entries10, align 8, !tbaa !0
  %call11 = call double @ZVmaxabs(i32 %mul9, double* %7) #6
  br label %if.end16

if.else12:                                        ; preds = %if.end
  %8 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([51 x i8]* @.str7, i64 0, i64 0), %struct._DenseMtx* %mtx, i32 %1) #6
  call void @exit(i32 -1) #7
  unreachable

if.end16:                                         ; preds = %if.then6, %if.then2
  %maxabs.0 = phi double [ %call3, %if.then2 ], [ %call11, %if.then6 ]
  ret double %maxabs.0
}

; Function Attrs: optsize
declare double @DVmaxabs(i32, double*, i32*) #3

; Function Attrs: optsize
declare double @ZVmaxabs(i32, double*) #3

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_sub(%struct._DenseMtx* %mtxB, %struct._DenseMtx* %mtxA) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtxB, null
  %cmp1 = icmp eq %struct._DenseMtx* %mtxA, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str8, i64 0, i64 0), %struct._DenseMtx* %mtxB, %struct._DenseMtx* %mtxA) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %type2 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 0
  %2 = load i32* %type2, align 4, !tbaa !3
  %cmp3 = icmp eq i32 %1, %2
  br i1 %cmp3, label %if.end8, label %if.then4

if.then4:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([72 x i8]* @.str9, i64 0, i64 0), %struct._DenseMtx* %mtxB, %struct._DenseMtx* %mtxA, i32 %1, i32 %2) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end8:                                          ; preds = %if.end
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 3
  %4 = load i32* %nrow, align 4, !tbaa !3
  %nrow9 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 3
  %5 = load i32* %nrow9, align 4, !tbaa !3
  %cmp10 = icmp eq i32 %4, %5
  br i1 %cmp10, label %if.end15, label %if.then11

if.then11:                                        ; preds = %if.end8
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([72 x i8]* @.str10, i64 0, i64 0), %struct._DenseMtx* %mtxB, %struct._DenseMtx* %mtxA, i32 %4, i32 %5) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end15:                                         ; preds = %if.end8
  %ncol = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 4
  %7 = load i32* %ncol, align 4, !tbaa !3
  %ncol16 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 4
  %8 = load i32* %ncol16, align 4, !tbaa !3
  %cmp17 = icmp eq i32 %7, %8
  br i1 %cmp17, label %if.end22, label %if.then18

if.then18:                                        ; preds = %if.end15
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([72 x i8]* @.str11, i64 0, i64 0), %struct._DenseMtx* %mtxB, %struct._DenseMtx* %mtxA, i32 %7, i32 %8) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end22:                                         ; preds = %if.end15
  %entries = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 9
  %10 = load double** %entries, align 8, !tbaa !0
  %cmp23 = icmp eq double* %10, null
  %entries29.phi.trans.insert = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 9
  %.pre = load double** %entries29.phi.trans.insert, align 8, !tbaa !0
  br i1 %cmp23, label %if.then27, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.end22
  %cmp26 = icmp eq double* %.pre, null
  br i1 %cmp26, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.end22, %lor.lhs.false24
  %11 = phi double* [ null, %lor.lhs.false24 ], [ %.pre, %if.end22 ]
  %12 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([78 x i8]* @.str12, i64 0, i64 0), %struct._DenseMtx* %mtxB, %struct._DenseMtx* %mtxA, double* %10, double* %11) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end31:                                         ; preds = %lor.lhs.false24
  switch i32 %1, label %if.else47 [
    i32 1, label %if.then34
    i32 2, label %if.then41
  ]

if.then34:                                        ; preds = %if.end31
  %mul = mul nsw i32 %7, %4
  tail call void @DVsub(i32 %mul, double* %10, double* %.pre) #6
  br label %if.end52

if.then41:                                        ; preds = %if.end31
  %mul44 = mul nsw i32 %7, %4
  tail call void @ZVsub(i32 %mul44, double* %10, double* %.pre) #6
  br label %if.end52

if.else47:                                        ; preds = %if.end31
  %13 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call50 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([72 x i8]* @.str9, i64 0, i64 0), %struct._DenseMtx* %mtxB, %struct._DenseMtx* %mtxA, i32 %1, i32 %1) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end52:                                         ; preds = %if.then41, %if.then34
  ret void
}

; Function Attrs: optsize
declare void @DVsub(i32, double*, double*) #3

; Function Attrs: optsize
declare void @ZVsub(i32, double*, double*) #3

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_copyRowIntoVector(%struct._DenseMtx* %mtx, i32 %irow, double* %vec) #0 {
entry:
  %nrow = alloca i32, align 4
  %ncol = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  %cmp1 = icmp slt i32 %irow, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %vec, null
  %or.cond76 = or i1 %or.cond, %cmp3
  br i1 %or.cond76, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([58 x i8]* @.str13, i64 0, i64 0), i64 57, i64 1, %struct._IO_FILE* %0)
  call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  call void @DenseMtx_rowIndices(%struct._DenseMtx* %mtx, i32* %nrow, i32** %rowind) #6
  %2 = load i32* %nrow, align 4, !tbaa !3
  %cmp4 = icmp sgt i32 %2, %irow
  br i1 %cmp4, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([69 x i8]* @.str14, i64 0, i64 0), i32 %irow, i32 %2) #6
  call void @exit(i32 -1) #7
  unreachable

if.end7:                                          ; preds = %if.end
  call void @DenseMtx_columnIndices(%struct._DenseMtx* %mtx, i32* %ncol, i32** %colind) #6
  %call8 = call i32 @DenseMtx_rowIncrement(%struct._DenseMtx* %mtx) #6
  %call9 = call i32 @DenseMtx_columnIncrement(%struct._DenseMtx* %mtx) #6
  %call10 = call double* @DenseMtx_entries(%struct._DenseMtx* %mtx) #6
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0
  %4 = load i32* %type, align 4, !tbaa !3
  switch i32 %4, label %if.end44 [
    i32 1, label %if.then12
    i32 2, label %if.then19
  ]

if.then12:                                        ; preds = %if.end7
  %5 = load i32* %ncol, align 4, !tbaa !3
  %cmp1377 = icmp sgt i32 %5, 0
  br i1 %cmp1377, label %for.body.lr.ph, label %if.end44

for.body.lr.ph:                                   ; preds = %if.then12
  %mul = mul nsw i32 %call8, %irow
  %6 = sext i32 %mul to i64
  %7 = sext i32 %call9 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv86 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next87, %for.body ]
  %indvars.iv = phi i64 [ %6, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %jj.079 = phi i32 [ 0, %for.body.lr.ph ], [ %inc16, %for.body ]
  %arrayidx = getelementptr inbounds double* %call10, i64 %indvars.iv
  %8 = load double* %arrayidx, align 8, !tbaa !4
  %arrayidx15 = getelementptr inbounds double* %vec, i64 %indvars.iv86
  store double %8, double* %arrayidx15, align 8, !tbaa !4
  %inc16 = add nsw i32 %jj.079, 1
  %indvars.iv.next87 = add i64 %indvars.iv86, 1
  %indvars.iv.next = add i64 %indvars.iv, %7
  %cmp13 = icmp slt i32 %inc16, %5
  br i1 %cmp13, label %for.body, label %if.end44

if.then19:                                        ; preds = %if.end7
  %9 = load i32* %ncol, align 4, !tbaa !3
  %cmp2282 = icmp sgt i32 %9, 0
  br i1 %cmp2282, label %for.body23.lr.ph, label %if.end44

for.body23.lr.ph:                                 ; preds = %if.then19
  %mul20 = mul nsw i32 %call8, %irow
  %10 = sext i32 %mul20 to i64
  %11 = sext i32 %call9 to i64
  br label %for.body23

for.body23:                                       ; preds = %for.body23.lr.ph, %for.body23
  %indvars.iv90 = phi i64 [ 0, %for.body23.lr.ph ], [ %indvars.iv.next91, %for.body23 ]
  %indvars.iv88 = phi i64 [ %10, %for.body23.lr.ph ], [ %indvars.iv.next89, %for.body23 ]
  %jj.184 = phi i32 [ 0, %for.body23.lr.ph ], [ %inc40, %for.body23 ]
  %12 = trunc i64 %indvars.iv88 to i32
  %mul24 = shl nsw i32 %12, 1
  %idxprom25 = sext i32 %mul24 to i64
  %arrayidx26 = getelementptr inbounds double* %call10, i64 %idxprom25
  %13 = load double* %arrayidx26, align 8, !tbaa !4
  %14 = trunc i64 %indvars.iv90 to i32
  %mul27 = shl nsw i32 %14, 1
  %idxprom28 = sext i32 %mul27 to i64
  %arrayidx29 = getelementptr inbounds double* %vec, i64 %idxprom28
  store double %13, double* %arrayidx29, align 8, !tbaa !4
  %add3174 = or i32 %mul24, 1
  %idxprom32 = sext i32 %add3174 to i64
  %arrayidx33 = getelementptr inbounds double* %call10, i64 %idxprom32
  %15 = load double* %arrayidx33, align 8, !tbaa !4
  %add3575 = or i32 %mul27, 1
  %idxprom36 = sext i32 %add3575 to i64
  %arrayidx37 = getelementptr inbounds double* %vec, i64 %idxprom36
  store double %15, double* %arrayidx37, align 8, !tbaa !4
  %inc40 = add nsw i32 %jj.184, 1
  %indvars.iv.next91 = add i64 %indvars.iv90, 1
  %indvars.iv.next89 = add i64 %indvars.iv88, %11
  %cmp22 = icmp slt i32 %inc40, %9
  br i1 %cmp22, label %for.body23, label %if.end44

if.end44:                                         ; preds = %if.then19, %for.body23, %if.then12, %for.body, %if.end7
  ret void
}

; Function Attrs: optsize
declare i32 @DenseMtx_rowIncrement(%struct._DenseMtx*) #3

; Function Attrs: optsize
declare i32 @DenseMtx_columnIncrement(%struct._DenseMtx*) #3

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_copyVectorIntoRow(%struct._DenseMtx* %mtx, i32 %irow, double* %vec) #0 {
entry:
  %nrow = alloca i32, align 4
  %ncol = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  %cmp1 = icmp slt i32 %irow, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %vec, null
  %or.cond79 = or i1 %or.cond, %cmp3
  br i1 %or.cond79, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([83 x i8]* @.str15, i64 0, i64 0), %struct._DenseMtx* %mtx, i32 %irow, double* %vec) #6
  call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  call void @DenseMtx_rowIndices(%struct._DenseMtx* %mtx, i32* %nrow, i32** %rowind) #6
  %1 = load i32* %nrow, align 4, !tbaa !3
  %cmp4 = icmp sgt i32 %1, %irow
  br i1 %cmp4, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([69 x i8]* @.str16, i64 0, i64 0), i32 %irow, i32 %1) #6
  call void @exit(i32 -1) #7
  unreachable

if.end7:                                          ; preds = %if.end
  call void @DenseMtx_columnIndices(%struct._DenseMtx* %mtx, i32* %ncol, i32** %colind) #6
  %call8 = call i32 @DenseMtx_rowIncrement(%struct._DenseMtx* %mtx) #6
  %call9 = call i32 @DenseMtx_columnIncrement(%struct._DenseMtx* %mtx) #6
  %call10 = call double* @DenseMtx_entries(%struct._DenseMtx* %mtx) #6
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0
  %3 = load i32* %type, align 4, !tbaa !3
  switch i32 %3, label %if.end44 [
    i32 1, label %if.then12
    i32 2, label %if.then19
  ]

if.then12:                                        ; preds = %if.end7
  %4 = load i32* %ncol, align 4, !tbaa !3
  %cmp1380 = icmp sgt i32 %4, 0
  br i1 %cmp1380, label %for.body.lr.ph, label %if.end44

for.body.lr.ph:                                   ; preds = %if.then12
  %mul = mul nsw i32 %call8, %irow
  %5 = sext i32 %mul to i64
  %6 = sext i32 %call9 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv89 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next90, %for.body ]
  %indvars.iv = phi i64 [ %5, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %jj.082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc16, %for.body ]
  %arrayidx = getelementptr inbounds double* %vec, i64 %indvars.iv89
  %7 = load double* %arrayidx, align 8, !tbaa !4
  %arrayidx15 = getelementptr inbounds double* %call10, i64 %indvars.iv
  store double %7, double* %arrayidx15, align 8, !tbaa !4
  %inc16 = add nsw i32 %jj.082, 1
  %indvars.iv.next90 = add i64 %indvars.iv89, 1
  %indvars.iv.next = add i64 %indvars.iv, %6
  %cmp13 = icmp slt i32 %inc16, %4
  br i1 %cmp13, label %for.body, label %if.end44

if.then19:                                        ; preds = %if.end7
  %8 = load i32* %ncol, align 4, !tbaa !3
  %cmp2285 = icmp sgt i32 %8, 0
  br i1 %cmp2285, label %for.body23.lr.ph, label %if.end44

for.body23.lr.ph:                                 ; preds = %if.then19
  %mul20 = mul nsw i32 %call8, %irow
  %9 = sext i32 %mul20 to i64
  %10 = sext i32 %call9 to i64
  br label %for.body23

for.body23:                                       ; preds = %for.body23.lr.ph, %for.body23
  %indvars.iv93 = phi i64 [ 0, %for.body23.lr.ph ], [ %indvars.iv.next94, %for.body23 ]
  %indvars.iv91 = phi i64 [ %9, %for.body23.lr.ph ], [ %indvars.iv.next92, %for.body23 ]
  %jj.187 = phi i32 [ 0, %for.body23.lr.ph ], [ %inc40, %for.body23 ]
  %11 = trunc i64 %indvars.iv93 to i32
  %mul24 = shl nsw i32 %11, 1
  %idxprom25 = sext i32 %mul24 to i64
  %arrayidx26 = getelementptr inbounds double* %vec, i64 %idxprom25
  %12 = load double* %arrayidx26, align 8, !tbaa !4
  %13 = trunc i64 %indvars.iv91 to i32
  %mul27 = shl nsw i32 %13, 1
  %idxprom28 = sext i32 %mul27 to i64
  %arrayidx29 = getelementptr inbounds double* %call10, i64 %idxprom28
  store double %12, double* %arrayidx29, align 8, !tbaa !4
  %add3177 = or i32 %mul24, 1
  %idxprom32 = sext i32 %add3177 to i64
  %arrayidx33 = getelementptr inbounds double* %vec, i64 %idxprom32
  %14 = load double* %arrayidx33, align 8, !tbaa !4
  %add3578 = or i32 %mul27, 1
  %idxprom36 = sext i32 %add3578 to i64
  %arrayidx37 = getelementptr inbounds double* %call10, i64 %idxprom36
  store double %14, double* %arrayidx37, align 8, !tbaa !4
  %inc40 = add nsw i32 %jj.187, 1
  %indvars.iv.next94 = add i64 %indvars.iv93, 1
  %indvars.iv.next92 = add i64 %indvars.iv91, %10
  %cmp22 = icmp slt i32 %inc40, %8
  br i1 %cmp22, label %for.body23, label %if.end44

if.end44:                                         ; preds = %if.then19, %for.body23, %if.then12, %for.body, %if.end7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_addVectorIntoRow(%struct._DenseMtx* %mtx, i32 %irow, double* %vec) #0 {
entry:
  %nrow = alloca i32, align 4
  %ncol = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  %cmp1 = icmp slt i32 %irow, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %vec, null
  %or.cond82 = or i1 %or.cond, %cmp3
  br i1 %or.cond82, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([82 x i8]* @.str17, i64 0, i64 0), %struct._DenseMtx* %mtx, i32 %irow, double* %vec) #6
  call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  call void @DenseMtx_rowIndices(%struct._DenseMtx* %mtx, i32* %nrow, i32** %rowind) #6
  %1 = load i32* %nrow, align 4, !tbaa !3
  %cmp4 = icmp sgt i32 %1, %irow
  br i1 %cmp4, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([68 x i8]* @.str18, i64 0, i64 0), i32 %irow, i32 %1) #6
  call void @exit(i32 -1) #7
  unreachable

if.end7:                                          ; preds = %if.end
  call void @DenseMtx_columnIndices(%struct._DenseMtx* %mtx, i32* %ncol, i32** %colind) #6
  %call8 = call i32 @DenseMtx_rowIncrement(%struct._DenseMtx* %mtx) #6
  %call9 = call i32 @DenseMtx_columnIncrement(%struct._DenseMtx* %mtx) #6
  %call10 = call double* @DenseMtx_entries(%struct._DenseMtx* %mtx) #6
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0
  %3 = load i32* %type, align 4, !tbaa !3
  switch i32 %3, label %if.end47 [
    i32 1, label %if.then12
    i32 2, label %if.then20
  ]

if.then12:                                        ; preds = %if.end7
  %4 = load i32* %ncol, align 4, !tbaa !3
  %cmp1383 = icmp sgt i32 %4, 0
  br i1 %cmp1383, label %for.body.lr.ph, label %if.end47

for.body.lr.ph:                                   ; preds = %if.then12
  %mul = mul nsw i32 %call8, %irow
  %5 = sext i32 %mul to i64
  %6 = sext i32 %call9 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv92 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next93, %for.body ]
  %indvars.iv = phi i64 [ %5, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %jj.085 = phi i32 [ 0, %for.body.lr.ph ], [ %inc16, %for.body ]
  %arrayidx = getelementptr inbounds double* %vec, i64 %indvars.iv92
  %7 = load double* %arrayidx, align 8, !tbaa !4
  %arrayidx15 = getelementptr inbounds double* %call10, i64 %indvars.iv
  %8 = load double* %arrayidx15, align 8, !tbaa !4
  %add = fadd double %7, %8
  store double %add, double* %arrayidx15, align 8, !tbaa !4
  %inc16 = add nsw i32 %jj.085, 1
  %indvars.iv.next93 = add i64 %indvars.iv92, 1
  %indvars.iv.next = add i64 %indvars.iv, %6
  %cmp13 = icmp slt i32 %inc16, %4
  br i1 %cmp13, label %for.body, label %if.end47

if.then20:                                        ; preds = %if.end7
  %9 = load i32* %ncol, align 4, !tbaa !3
  %cmp2388 = icmp sgt i32 %9, 0
  br i1 %cmp2388, label %for.body24.lr.ph, label %if.end47

for.body24.lr.ph:                                 ; preds = %if.then20
  %mul21 = mul nsw i32 %call8, %irow
  %10 = sext i32 %mul21 to i64
  %11 = sext i32 %call9 to i64
  br label %for.body24

for.body24:                                       ; preds = %for.body24.lr.ph, %for.body24
  %indvars.iv96 = phi i64 [ 0, %for.body24.lr.ph ], [ %indvars.iv.next97, %for.body24 ]
  %indvars.iv94 = phi i64 [ %10, %for.body24.lr.ph ], [ %indvars.iv.next95, %for.body24 ]
  %jj.190 = phi i32 [ 0, %for.body24.lr.ph ], [ %inc43, %for.body24 ]
  %12 = trunc i64 %indvars.iv96 to i32
  %mul25 = shl nsw i32 %12, 1
  %idxprom26 = sext i32 %mul25 to i64
  %arrayidx27 = getelementptr inbounds double* %vec, i64 %idxprom26
  %13 = load double* %arrayidx27, align 8, !tbaa !4
  %14 = trunc i64 %indvars.iv94 to i32
  %mul28 = shl nsw i32 %14, 1
  %idxprom29 = sext i32 %mul28 to i64
  %arrayidx30 = getelementptr inbounds double* %call10, i64 %idxprom29
  %15 = load double* %arrayidx30, align 8, !tbaa !4
  %add31 = fadd double %13, %15
  store double %add31, double* %arrayidx30, align 8, !tbaa !4
  %add3380 = or i32 %mul25, 1
  %idxprom34 = sext i32 %add3380 to i64
  %arrayidx35 = getelementptr inbounds double* %vec, i64 %idxprom34
  %16 = load double* %arrayidx35, align 8, !tbaa !4
  %add3781 = or i32 %mul28, 1
  %idxprom38 = sext i32 %add3781 to i64
  %arrayidx39 = getelementptr inbounds double* %call10, i64 %idxprom38
  %17 = load double* %arrayidx39, align 8, !tbaa !4
  %add40 = fadd double %16, %17
  store double %add40, double* %arrayidx39, align 8, !tbaa !4
  %inc43 = add nsw i32 %jj.190, 1
  %indvars.iv.next97 = add i64 %indvars.iv96, 1
  %indvars.iv.next95 = add i64 %indvars.iv94, %11
  %cmp23 = icmp slt i32 %inc43, %9
  br i1 %cmp23, label %for.body24, label %if.end47

if.end47:                                         ; preds = %if.then20, %for.body24, %if.then12, %for.body, %if.end7
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize readnone }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
