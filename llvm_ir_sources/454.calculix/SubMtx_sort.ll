; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [51 x i8] c"\0A fatal error in SubMtx_sortRowsUp(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [94 x i8] c"\0A fatal error in SubMtx_sortRowsUp(%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str2 = private unnamed_addr constant [54 x i8] c"\0A fatal error in SubMtx_sortRowsUp(%p)\0A bad type = %d\00", align 1
@.str3 = private unnamed_addr constant [57 x i8] c"\0A fatal error in SubMtx_sortColumnsUp(%p)\0A bad type = %d\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_sortRowsUp(%struct._SubMtx* %mtx) #0 {
entry:
  %a2 = alloca %struct._A2, align 8
  %entries = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncol = alloca i32, align 4
  %nrow = alloca i32, align 4
  %rowind = alloca i32*, align 8
  %entries11 = alloca double*, align 8
  %nent = alloca i32, align 4
  %nrow12 = alloca i32, align 4
  %indices = alloca i32*, align 8
  %rowind13 = alloca i32*, align 8
  %sizes = alloca i32*, align 8
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), %struct._SubMtx* null) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([94 x i8]* @.str1, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %1) #4
  call void @exit(i32 -1) #5
  unreachable

if.end7:                                          ; preds = %if.end
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1
  %3 = load i32* %mode, align 4, !tbaa !3
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
  ]

sw.bb:                                            ; preds = %if.end7, %if.end7
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %ncol, i32* %inc1, i32* %inc2, double** %entries) #4
  call void @A2_setDefaultFields(%struct._A2* %a2) #4
  %4 = load i32* %type, align 4, !tbaa !3
  %5 = load i32* %nrow, align 4, !tbaa !3
  %6 = load i32* %ncol, align 4, !tbaa !3
  %7 = load i32* %inc1, align 4, !tbaa !3
  %8 = load i32* %inc2, align 4, !tbaa !3
  %9 = load double** %entries, align 8, !tbaa !0
  call void @A2_init(%struct._A2* %a2, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, double* %9) #4
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx, i32* %nrow, i32** %rowind) #4
  %10 = load i32* %nrow, align 4, !tbaa !3
  %11 = load i32** %rowind, align 8, !tbaa !0
  %call9 = call i32 @A2_sortRowsUp(%struct._A2* %a2, i32 %10, i32* %11) #4
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end7
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow12, i32* %nent, i32** %sizes, i32** %indices, double** %entries11) #4
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx, i32* %nrow12, i32** %rowind13) #4
  %12 = load i32* %nent, align 4, !tbaa !3
  %call14 = call i32* @IVinit(i32 %12, i32 -1) #4
  %13 = load i32* %nrow12, align 4, !tbaa !3
  %cmp15173 = icmp sgt i32 %13, 0
  br i1 %cmp15173, label %for.body.lr.ph, label %sw.bb10.for.end26_crit_edge

sw.bb10.for.end26_crit_edge:                      ; preds = %sw.bb10
  %.pre187 = load i32** %sizes, align 8, !tbaa !0
  br label %for.end26

for.body.lr.ph:                                   ; preds = %sw.bb10
  %14 = load i32** %rowind13, align 8, !tbaa !0
  %15 = load i32** %sizes, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc24
  %16 = phi i32 [ %13, %for.body.lr.ph ], [ %21, %for.inc24 ]
  %indvars.iv184 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next185, %for.inc24 ]
  %kk.0175 = phi i32 [ 0, %for.body.lr.ph ], [ %kk.1.lcssa, %for.inc24 ]
  %arrayidx = getelementptr inbounds i32* %14, i64 %indvars.iv184
  %17 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx17 = getelementptr inbounds i32* %15, i64 %indvars.iv184
  %18 = load i32* %arrayidx17, align 4, !tbaa !3
  %cmp19169 = icmp sgt i32 %18, 0
  br i1 %cmp19169, label %for.body20.lr.ph, label %for.inc24

for.body20.lr.ph:                                 ; preds = %for.body
  %19 = sext i32 %kk.0175 to i64
  br label %for.body20

for.body20:                                       ; preds = %for.body20, %for.body20.lr.ph
  %indvars.iv181 = phi i64 [ %19, %for.body20.lr.ph ], [ %indvars.iv.next182, %for.body20 ]
  %ii.0171 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc, %for.body20 ]
  %arrayidx22 = getelementptr inbounds i32* %call14, i64 %indvars.iv181
  store i32 %17, i32* %arrayidx22, align 4, !tbaa !3
  %inc = add nsw i32 %ii.0171, 1
  %indvars.iv.next182 = add i64 %indvars.iv181, 1
  %exitcond = icmp eq i32 %inc, %18
  br i1 %exitcond, label %for.cond18.for.inc24_crit_edge, label %for.body20

for.cond18.for.inc24_crit_edge:                   ; preds = %for.body20
  %20 = add i32 %kk.0175, %18
  %.pre186 = load i32* %nrow12, align 4, !tbaa !3
  br label %for.inc24

for.inc24:                                        ; preds = %for.cond18.for.inc24_crit_edge, %for.body
  %21 = phi i32 [ %.pre186, %for.cond18.for.inc24_crit_edge ], [ %16, %for.body ]
  %kk.1.lcssa = phi i32 [ %20, %for.cond18.for.inc24_crit_edge ], [ %kk.0175, %for.body ]
  %indvars.iv.next185 = add i64 %indvars.iv184, 1
  %22 = trunc i64 %indvars.iv.next185 to i32
  %cmp15 = icmp slt i32 %22, %21
  br i1 %cmp15, label %for.body, label %for.end26

for.end26:                                        ; preds = %for.inc24, %sw.bb10.for.end26_crit_edge
  %23 = phi i32* [ %.pre187, %sw.bb10.for.end26_crit_edge ], [ %15, %for.inc24 ]
  %.lcssa = phi i32 [ %13, %sw.bb10.for.end26_crit_edge ], [ %21, %for.inc24 ]
  call void @IVzero(i32 %.lcssa, i32* %23) #4
  %24 = load i32* %type, align 4, !tbaa !3
  switch i32 %24, label %if.end34 [
    i32 1, label %if.then29
    i32 2, label %if.then32
  ]

if.then29:                                        ; preds = %for.end26
  %25 = load i32* %nent, align 4, !tbaa !3
  %26 = load i32** %indices, align 8, !tbaa !0
  %27 = load double** %entries11, align 8, !tbaa !0
  call void @IV2DVqsortUp(i32 %25, i32* %call14, i32* %26, double* %27) #4
  br label %if.end34

if.then32:                                        ; preds = %for.end26
  %28 = load i32* %nent, align 4, !tbaa !3
  %29 = load i32** %indices, align 8, !tbaa !0
  %30 = load double** %entries11, align 8, !tbaa !0
  call void @IV2ZVqsortUp(i32 %28, i32* %call14, i32* %29, double* %30) #4
  br label %if.end34

if.end34:                                         ; preds = %for.end26, %if.then32, %if.then29
  %31 = load i32* %nrow12, align 4, !tbaa !3
  %32 = load i32** %rowind13, align 8, !tbaa !0
  call void @IVqsortUp(i32 %31, i32* %32) #4
  %33 = load i32* %call14, align 4, !tbaa !3
  %34 = load i32* %nent, align 4, !tbaa !3
  %cmp36160 = icmp sgt i32 %34, 1
  br i1 %cmp36160, label %while.body, label %while.cond72.preheader

while.cond72.preheader:                           ; preds = %if.end69, %if.end34
  %size.0.lcssa = phi i32 [ 1, %if.end34 ], [ %size.1, %if.end69 ]
  %rowid.0.lcssa = phi i32 [ %33, %if.end34 ], [ %rowid.1, %if.end69 ]
  %offset.0.lcssa = phi i32 [ 0, %if.end34 ], [ %offset.1, %if.end69 ]
  %jrow.0.lcssa = phi i32 [ 0, %if.end34 ], [ %jrow.2, %if.end69 ]
  %35 = load i32** %rowind13, align 8, !tbaa !0
  %36 = sext i32 %jrow.0.lcssa to i64
  br label %while.cond72

while.body:                                       ; preds = %if.end34, %if.end69
  %37 = phi i32 [ %49, %if.end69 ], [ %34, %if.end34 ]
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %if.end69 ], [ 1, %if.end34 ]
  %size.0165 = phi i32 [ %size.1, %if.end69 ], [ 1, %if.end34 ]
  %rowid.0164 = phi i32 [ %rowid.1, %if.end69 ], [ %33, %if.end34 ]
  %offset.0163 = phi i32 [ %offset.1, %if.end69 ], [ 0, %if.end34 ]
  %jrow.0161 = phi i32 [ %jrow.2, %if.end69 ], [ 0, %if.end34 ]
  %arrayidx38 = getelementptr inbounds i32* %call14, i64 %indvars.iv179
  %38 = load i32* %arrayidx38, align 4, !tbaa !3
  %cmp39 = icmp eq i32 %38, %rowid.0164
  br i1 %cmp39, label %if.then40, label %while.cond43.preheader

while.cond43.preheader:                           ; preds = %while.body
  %39 = load i32** %rowind13, align 8, !tbaa !0
  %40 = sext i32 %jrow.0161 to i64
  br label %while.cond43

if.then40:                                        ; preds = %while.body
  %inc41 = add nsw i32 %size.0165, 1
  br label %if.end69

while.cond43:                                     ; preds = %while.cond43, %while.cond43.preheader
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %while.cond43 ], [ %40, %while.cond43.preheader ]
  %jrow.1 = phi i32 [ %inc48, %while.cond43 ], [ %jrow.0161, %while.cond43.preheader ]
  %arrayidx45 = getelementptr inbounds i32* %39, i64 %indvars.iv177
  %41 = load i32* %arrayidx45, align 4, !tbaa !3
  %cmp46 = icmp eq i32 %rowid.0164, %41
  %indvars.iv.next178 = add i64 %indvars.iv177, 1
  %inc48 = add nsw i32 %jrow.1, 1
  br i1 %cmp46, label %while.end, label %while.cond43

while.end:                                        ; preds = %while.cond43
  %42 = load i32** %sizes, align 8, !tbaa !0
  %arrayidx50 = getelementptr inbounds i32* %42, i64 %indvars.iv177
  store i32 %size.0165, i32* %arrayidx50, align 4, !tbaa !3
  %43 = load i32* %type, align 4, !tbaa !3
  switch i32 %43, label %if.end65 [
    i32 1, label %if.then53
    i32 2, label %if.then59
  ]

if.then53:                                        ; preds = %while.end
  %44 = load i32** %indices, align 8, !tbaa !0
  %idx.ext = sext i32 %offset.0163 to i64
  %add.ptr = getelementptr inbounds i32* %44, i64 %idx.ext
  %45 = load double** %entries11, align 8, !tbaa !0
  %add.ptr55 = getelementptr inbounds double* %45, i64 %idx.ext
  call void @IVDVqsortUp(i32 %size.0165, i32* %add.ptr, double* %add.ptr55) #4
  br label %if.end65

if.then59:                                        ; preds = %while.end
  %46 = load i32** %indices, align 8, !tbaa !0
  %idx.ext60 = sext i32 %offset.0163 to i64
  %add.ptr61 = getelementptr inbounds i32* %46, i64 %idx.ext60
  %47 = load double** %entries11, align 8, !tbaa !0
  %mul = shl nsw i32 %offset.0163, 1
  %idx.ext62 = sext i32 %mul to i64
  %add.ptr63 = getelementptr inbounds double* %47, i64 %idx.ext62
  call void @IVZVqsortUp(i32 %size.0165, i32* %add.ptr61, double* %add.ptr63) #4
  br label %if.end65

if.end65:                                         ; preds = %while.end, %if.then59, %if.then53
  %48 = load i32* %arrayidx38, align 4, !tbaa !3
  %add = add nsw i32 %size.0165, %offset.0163
  %.pre = load i32* %nent, align 4, !tbaa !3
  br label %if.end69

if.end69:                                         ; preds = %if.end65, %if.then40
  %49 = phi i32 [ %37, %if.then40 ], [ %.pre, %if.end65 ]
  %jrow.2 = phi i32 [ %jrow.0161, %if.then40 ], [ %inc48, %if.end65 ]
  %offset.1 = phi i32 [ %offset.0163, %if.then40 ], [ %add, %if.end65 ]
  %rowid.1 = phi i32 [ %rowid.0164, %if.then40 ], [ %48, %if.end65 ]
  %size.1 = phi i32 [ %inc41, %if.then40 ], [ 1, %if.end65 ]
  %indvars.iv.next180 = add i64 %indvars.iv179, 1
  %50 = trunc i64 %indvars.iv.next180 to i32
  %cmp36 = icmp slt i32 %50, %49
  br i1 %cmp36, label %while.body, label %while.cond72.preheader

while.cond72:                                     ; preds = %while.cond72, %while.cond72.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond72 ], [ %36, %while.cond72.preheader ]
  %arrayidx74 = getelementptr inbounds i32* %35, i64 %indvars.iv
  %51 = load i32* %arrayidx74, align 4, !tbaa !3
  %cmp75 = icmp eq i32 %rowid.0.lcssa, %51
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp75, label %while.end78, label %while.cond72

while.end78:                                      ; preds = %while.cond72
  %52 = load i32** %sizes, align 8, !tbaa !0
  %arrayidx80 = getelementptr inbounds i32* %52, i64 %indvars.iv
  store i32 %size.0.lcssa, i32* %arrayidx80, align 4, !tbaa !3
  %53 = load i32* %type, align 4, !tbaa !3
  switch i32 %53, label %if.end98 [
    i32 1, label %if.then83
    i32 2, label %if.then91
  ]

if.then83:                                        ; preds = %while.end78
  %54 = load i32** %indices, align 8, !tbaa !0
  %idx.ext84 = sext i32 %offset.0.lcssa to i64
  %add.ptr85 = getelementptr inbounds i32* %54, i64 %idx.ext84
  %55 = load double** %entries11, align 8, !tbaa !0
  %add.ptr87 = getelementptr inbounds double* %55, i64 %idx.ext84
  call void @IVDVqsortUp(i32 %size.0.lcssa, i32* %add.ptr85, double* %add.ptr87) #4
  br label %if.end98

if.then91:                                        ; preds = %while.end78
  %56 = load i32** %indices, align 8, !tbaa !0
  %idx.ext92 = sext i32 %offset.0.lcssa to i64
  %add.ptr93 = getelementptr inbounds i32* %56, i64 %idx.ext92
  %57 = load double** %entries11, align 8, !tbaa !0
  %mul94 = shl nsw i32 %offset.0.lcssa, 1
  %idx.ext95 = sext i32 %mul94 to i64
  %add.ptr96 = getelementptr inbounds double* %57, i64 %idx.ext95
  call void @IVZVqsortUp(i32 %size.0.lcssa, i32* %add.ptr93, double* %add.ptr96) #4
  br label %if.end98

if.end98:                                         ; preds = %while.end78, %if.then91, %if.then83
  call void @IVfree(i32* %call14) #4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end7
  %58 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call100 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %1) #4
  call void @exit(i32 -1) #5
  unreachable

sw.epilog:                                        ; preds = %if.end98, %sw.bb
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @SubMtx_denseInfo(%struct._SubMtx*, i32*, i32*, i32*, i32*, double**) #3

; Function Attrs: optsize
declare void @A2_setDefaultFields(%struct._A2*) #3

; Function Attrs: optsize
declare void @A2_init(%struct._A2*, i32, i32, i32, i32, i32, double*) #3

; Function Attrs: optsize
declare void @SubMtx_rowIndices(%struct._SubMtx*, i32*, i32**) #3

; Function Attrs: optsize
declare i32 @A2_sortRowsUp(%struct._A2*, i32, i32*) #3

; Function Attrs: optsize
declare void @SubMtx_sparseRowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @IVzero(i32, i32*) #3

; Function Attrs: optsize
declare void @IV2DVqsortUp(i32, i32*, i32*, double*) #3

; Function Attrs: optsize
declare void @IV2ZVqsortUp(i32, i32*, i32*, double*) #3

; Function Attrs: optsize
declare void @IVqsortUp(i32, i32*) #3

; Function Attrs: optsize
declare void @IVDVqsortUp(i32, i32*, double*) #3

; Function Attrs: optsize
declare void @IVZVqsortUp(i32, i32*, double*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_sortColumnsUp(%struct._SubMtx* %mtx) #0 {
entry:
  %a2 = alloca %struct._A2, align 8
  %entries = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncol = alloca i32, align 4
  %nrow = alloca i32, align 4
  %colind = alloca i32*, align 8
  %entries2 = alloca double*, align 8
  %ncol3 = alloca i32, align 4
  %nent = alloca i32, align 4
  %colind4 = alloca i32*, align 8
  %indices = alloca i32*, align 8
  %sizes = alloca i32*, align 8
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1
  %0 = load i32* %mode, align 4, !tbaa !3
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry, %entry
  call void @A2_setDefaultFields(%struct._A2* %a2) #4
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %ncol, i32* %inc1, i32* %inc2, double** %entries) #4
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %2 = load i32* %nrow, align 4, !tbaa !3
  %3 = load i32* %ncol, align 4, !tbaa !3
  %4 = load i32* %inc1, align 4, !tbaa !3
  %5 = load i32* %inc2, align 4, !tbaa !3
  %6 = load double** %entries, align 8, !tbaa !0
  call void @A2_init(%struct._A2* %a2, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, double* %6) #4
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx, i32* %ncol, i32** %colind) #4
  %7 = load i32* %ncol, align 4, !tbaa !3
  %8 = load i32** %colind, align 8, !tbaa !0
  %call = call i32 @A2_sortColumnsUp(%struct._A2* %a2, i32 %7, i32* %8) #4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol3, i32* %nent, i32** %sizes, i32** %indices, double** %entries2) #4
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx, i32* %ncol3, i32** %colind4) #4
  %9 = load i32* %nent, align 4, !tbaa !3
  %call5 = call i32* @IVinit(i32 %9, i32 -1) #4
  %10 = load i32* %ncol3, align 4, !tbaa !3
  %cmp158 = icmp sgt i32 %10, 0
  br i1 %cmp158, label %for.body.lr.ph, label %sw.bb1.for.end16_crit_edge

sw.bb1.for.end16_crit_edge:                       ; preds = %sw.bb1
  %.pre172 = load i32** %sizes, align 8, !tbaa !0
  br label %for.end16

for.body.lr.ph:                                   ; preds = %sw.bb1
  %11 = load i32** %colind4, align 8, !tbaa !0
  %12 = load i32** %sizes, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc14
  %13 = phi i32 [ %10, %for.body.lr.ph ], [ %18, %for.inc14 ]
  %indvars.iv169 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next170, %for.inc14 ]
  %kk.0160 = phi i32 [ 0, %for.body.lr.ph ], [ %kk.1.lcssa, %for.inc14 ]
  %arrayidx = getelementptr inbounds i32* %11, i64 %indvars.iv169
  %14 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx7 = getelementptr inbounds i32* %12, i64 %indvars.iv169
  %15 = load i32* %arrayidx7, align 4, !tbaa !3
  %cmp9154 = icmp sgt i32 %15, 0
  br i1 %cmp9154, label %for.body10.lr.ph, label %for.inc14

for.body10.lr.ph:                                 ; preds = %for.body
  %16 = sext i32 %kk.0160 to i64
  br label %for.body10

for.body10:                                       ; preds = %for.body10, %for.body10.lr.ph
  %indvars.iv166 = phi i64 [ %16, %for.body10.lr.ph ], [ %indvars.iv.next167, %for.body10 ]
  %ii.0155 = phi i32 [ 0, %for.body10.lr.ph ], [ %inc, %for.body10 ]
  %arrayidx12 = getelementptr inbounds i32* %call5, i64 %indvars.iv166
  store i32 %14, i32* %arrayidx12, align 4, !tbaa !3
  %inc = add nsw i32 %ii.0155, 1
  %indvars.iv.next167 = add i64 %indvars.iv166, 1
  %exitcond = icmp eq i32 %inc, %15
  br i1 %exitcond, label %for.cond8.for.inc14_crit_edge, label %for.body10

for.cond8.for.inc14_crit_edge:                    ; preds = %for.body10
  %17 = add i32 %kk.0160, %15
  %.pre171 = load i32* %ncol3, align 4, !tbaa !3
  br label %for.inc14

for.inc14:                                        ; preds = %for.cond8.for.inc14_crit_edge, %for.body
  %18 = phi i32 [ %.pre171, %for.cond8.for.inc14_crit_edge ], [ %13, %for.body ]
  %kk.1.lcssa = phi i32 [ %17, %for.cond8.for.inc14_crit_edge ], [ %kk.0160, %for.body ]
  %indvars.iv.next170 = add i64 %indvars.iv169, 1
  %19 = trunc i64 %indvars.iv.next170 to i32
  %cmp = icmp slt i32 %19, %18
  br i1 %cmp, label %for.body, label %for.end16

for.end16:                                        ; preds = %for.inc14, %sw.bb1.for.end16_crit_edge
  %20 = phi i32* [ %.pre172, %sw.bb1.for.end16_crit_edge ], [ %12, %for.inc14 ]
  %.lcssa = phi i32 [ %10, %sw.bb1.for.end16_crit_edge ], [ %18, %for.inc14 ]
  call void @IVzero(i32 %.lcssa, i32* %20) #4
  %type17 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  %21 = load i32* %type17, align 4, !tbaa !3
  switch i32 %21, label %if.end22 [
    i32 1, label %if.then
    i32 2, label %if.then21
  ]

if.then:                                          ; preds = %for.end16
  %22 = load i32* %nent, align 4, !tbaa !3
  %23 = load i32** %indices, align 8, !tbaa !0
  %24 = load double** %entries2, align 8, !tbaa !0
  call void @IV2DVqsortUp(i32 %22, i32* %call5, i32* %23, double* %24) #4
  br label %if.end22

if.then21:                                        ; preds = %for.end16
  %25 = load i32* %nent, align 4, !tbaa !3
  %26 = load i32** %indices, align 8, !tbaa !0
  %27 = load double** %entries2, align 8, !tbaa !0
  call void @IV2ZVqsortUp(i32 %25, i32* %call5, i32* %26, double* %27) #4
  br label %if.end22

if.end22:                                         ; preds = %for.end16, %if.then21, %if.then
  %28 = load i32* %ncol3, align 4, !tbaa !3
  %29 = load i32** %colind4, align 8, !tbaa !0
  call void @IVqsortUp(i32 %28, i32* %29) #4
  %30 = load i32* %call5, align 4, !tbaa !3
  %31 = load i32* %nent, align 4, !tbaa !3
  %cmp24145 = icmp sgt i32 %31, 1
  br i1 %cmp24145, label %while.body, label %while.cond60.preheader

while.cond60.preheader:                           ; preds = %if.end57, %if.end22
  %colid.0.lcssa = phi i32 [ %30, %if.end22 ], [ %colid.1, %if.end57 ]
  %size.0.lcssa = phi i32 [ 1, %if.end22 ], [ %size.1, %if.end57 ]
  %offset.0.lcssa = phi i32 [ 0, %if.end22 ], [ %offset.1, %if.end57 ]
  %jcol.1.lcssa = phi i32 [ 0, %if.end22 ], [ %jcol.3, %if.end57 ]
  %32 = load i32** %colind4, align 8, !tbaa !0
  %33 = sext i32 %jcol.1.lcssa to i64
  br label %while.cond60

while.body:                                       ; preds = %if.end22, %if.end57
  %34 = phi i32 [ %46, %if.end57 ], [ %31, %if.end22 ]
  %indvars.iv164 = phi i64 [ %indvars.iv.next165, %if.end57 ], [ 1, %if.end22 ]
  %colid.0150 = phi i32 [ %colid.1, %if.end57 ], [ %30, %if.end22 ]
  %size.0149 = phi i32 [ %size.1, %if.end57 ], [ 1, %if.end22 ]
  %offset.0148 = phi i32 [ %offset.1, %if.end57 ], [ 0, %if.end22 ]
  %jcol.1146 = phi i32 [ %jcol.3, %if.end57 ], [ 0, %if.end22 ]
  %arrayidx26 = getelementptr inbounds i32* %call5, i64 %indvars.iv164
  %35 = load i32* %arrayidx26, align 4, !tbaa !3
  %cmp27 = icmp eq i32 %35, %colid.0150
  br i1 %cmp27, label %if.then28, label %while.cond31.preheader

while.cond31.preheader:                           ; preds = %while.body
  %36 = load i32** %colind4, align 8, !tbaa !0
  %37 = sext i32 %jcol.1146 to i64
  br label %while.cond31

if.then28:                                        ; preds = %while.body
  %inc29 = add nsw i32 %size.0149, 1
  br label %if.end57

while.cond31:                                     ; preds = %while.cond31, %while.cond31.preheader
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %while.cond31 ], [ %37, %while.cond31.preheader ]
  %jcol.2 = phi i32 [ %inc36, %while.cond31 ], [ %jcol.1146, %while.cond31.preheader ]
  %arrayidx33 = getelementptr inbounds i32* %36, i64 %indvars.iv162
  %38 = load i32* %arrayidx33, align 4, !tbaa !3
  %cmp34 = icmp eq i32 %colid.0150, %38
  %indvars.iv.next163 = add i64 %indvars.iv162, 1
  %inc36 = add nsw i32 %jcol.2, 1
  br i1 %cmp34, label %while.end, label %while.cond31

while.end:                                        ; preds = %while.cond31
  %39 = load i32** %sizes, align 8, !tbaa !0
  %arrayidx38 = getelementptr inbounds i32* %39, i64 %indvars.iv162
  store i32 %size.0149, i32* %arrayidx38, align 4, !tbaa !3
  %40 = load i32* %type17, align 4, !tbaa !3
  switch i32 %40, label %if.end53 [
    i32 1, label %if.then41
    i32 2, label %if.then47
  ]

if.then41:                                        ; preds = %while.end
  %41 = load i32** %indices, align 8, !tbaa !0
  %idx.ext = sext i32 %offset.0148 to i64
  %add.ptr = getelementptr inbounds i32* %41, i64 %idx.ext
  %42 = load double** %entries2, align 8, !tbaa !0
  %add.ptr43 = getelementptr inbounds double* %42, i64 %idx.ext
  call void @IVDVqsortUp(i32 %size.0149, i32* %add.ptr, double* %add.ptr43) #4
  br label %if.end53

if.then47:                                        ; preds = %while.end
  %43 = load i32** %indices, align 8, !tbaa !0
  %idx.ext48 = sext i32 %offset.0148 to i64
  %add.ptr49 = getelementptr inbounds i32* %43, i64 %idx.ext48
  %44 = load double** %entries2, align 8, !tbaa !0
  %mul = shl nsw i32 %offset.0148, 1
  %idx.ext50 = sext i32 %mul to i64
  %add.ptr51 = getelementptr inbounds double* %44, i64 %idx.ext50
  call void @IVZVqsortUp(i32 %size.0149, i32* %add.ptr49, double* %add.ptr51) #4
  br label %if.end53

if.end53:                                         ; preds = %while.end, %if.then47, %if.then41
  %45 = load i32* %arrayidx26, align 4, !tbaa !3
  %add = add nsw i32 %size.0149, %offset.0148
  %.pre = load i32* %nent, align 4, !tbaa !3
  br label %if.end57

if.end57:                                         ; preds = %if.end53, %if.then28
  %46 = phi i32 [ %34, %if.then28 ], [ %.pre, %if.end53 ]
  %jcol.3 = phi i32 [ %jcol.1146, %if.then28 ], [ %inc36, %if.end53 ]
  %offset.1 = phi i32 [ %offset.0148, %if.then28 ], [ %add, %if.end53 ]
  %size.1 = phi i32 [ %inc29, %if.then28 ], [ 1, %if.end53 ]
  %colid.1 = phi i32 [ %colid.0150, %if.then28 ], [ %45, %if.end53 ]
  %indvars.iv.next165 = add i64 %indvars.iv164, 1
  %47 = trunc i64 %indvars.iv.next165 to i32
  %cmp24 = icmp slt i32 %47, %46
  br i1 %cmp24, label %while.body, label %while.cond60.preheader

while.cond60:                                     ; preds = %while.cond60, %while.cond60.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond60 ], [ %33, %while.cond60.preheader ]
  %arrayidx62 = getelementptr inbounds i32* %32, i64 %indvars.iv
  %48 = load i32* %arrayidx62, align 4, !tbaa !3
  %cmp63 = icmp eq i32 %colid.0.lcssa, %48
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp63, label %while.end66, label %while.cond60

while.end66:                                      ; preds = %while.cond60
  %49 = load i32** %sizes, align 8, !tbaa !0
  %arrayidx68 = getelementptr inbounds i32* %49, i64 %indvars.iv
  store i32 %size.0.lcssa, i32* %arrayidx68, align 4, !tbaa !3
  %50 = load i32* %type17, align 4, !tbaa !3
  switch i32 %50, label %if.end86 [
    i32 1, label %if.then71
    i32 2, label %if.then79
  ]

if.then71:                                        ; preds = %while.end66
  %51 = load i32** %indices, align 8, !tbaa !0
  %idx.ext72 = sext i32 %offset.0.lcssa to i64
  %add.ptr73 = getelementptr inbounds i32* %51, i64 %idx.ext72
  %52 = load double** %entries2, align 8, !tbaa !0
  %add.ptr75 = getelementptr inbounds double* %52, i64 %idx.ext72
  call void @IVDVqsortUp(i32 %size.0.lcssa, i32* %add.ptr73, double* %add.ptr75) #4
  br label %if.end86

if.then79:                                        ; preds = %while.end66
  %53 = load i32** %indices, align 8, !tbaa !0
  %idx.ext80 = sext i32 %offset.0.lcssa to i64
  %add.ptr81 = getelementptr inbounds i32* %53, i64 %idx.ext80
  %54 = load double** %entries2, align 8, !tbaa !0
  %mul82 = shl nsw i32 %offset.0.lcssa, 1
  %idx.ext83 = sext i32 %mul82 to i64
  %add.ptr84 = getelementptr inbounds double* %54, i64 %idx.ext83
  call void @IVZVqsortUp(i32 %size.0.lcssa, i32* %add.ptr81, double* %add.ptr84) #4
  br label %if.end86

if.end86:                                         ; preds = %while.end66, %if.then79, %if.then71
  call void @IVfree(i32* %call5) #4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %55 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %type87 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  %56 = load i32* %type87, align 4, !tbaa !3
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([57 x i8]* @.str3, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %56) #4
  %57 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call89 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %mtx, %struct._IO_FILE* %57) #4
  call void @exit(i32 -1) #5
  unreachable

sw.epilog:                                        ; preds = %if.end86, %sw.bb
  ret void
}

; Function Attrs: optsize
declare void @SubMtx_columnIndices(%struct._SubMtx*, i32*, i32**) #3

; Function Attrs: optsize
declare i32 @A2_sortColumnsUp(%struct._A2*, i32, i32*) #3

; Function Attrs: optsize
declare void @SubMtx_sparseColumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #3

; Function Attrs: optsize
declare i32 @SubMtx_writeForHumanEye(%struct._SubMtx*, %struct._IO_FILE*) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
