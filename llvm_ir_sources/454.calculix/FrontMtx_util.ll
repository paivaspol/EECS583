; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IV = type { i32, i32, i32, i32* }
%struct._FrontMtx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._Tree*, %struct._ETree*, %struct._IV*, %struct._IVL*, %struct._IVL*, %struct._IVL*, %struct._IVL*, %struct._IVL*, %struct._SubMtx**, %struct._SubMtx**, %struct._SubMtx**, %struct._SubMtx**, %struct._SubMtx**, %struct._I2Ohash*, %struct._I2Ohash*, %struct._SubMtxManager*, %struct._Lock*, %struct._PatchAndGoInfo*, i32 }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._ETree = type { i32, i32, %struct._Tree*, %struct._IV*, %struct._IV*, %struct._IV* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._I2Ohash = type { i32, i32, i32, %struct._I2OP*, %struct._I2OP*, %struct._I2OP** }
%struct._I2OP = type { i32, i32, i8*, %struct._I2OP* }
%struct._SubMtxManager = type { %struct._SubMtx*, %struct._Lock*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Lock = type { i8*, i32, i32 }
%struct._PatchAndGoInfo = type { i32, double, double, %struct._IV*, %struct._DV* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [59 x i8] c"\0A fatal error in FrontMtx_inertia(%p,%p,%p,%p)\0A bad input\0A\00", align 1
@stdout = external global %struct._IO_FILE*
@.str1 = private unnamed_addr constant [83 x i8] c"\0A fatal error in FrontMtx_inertia(%p,%p,%p,%p)\0A matrix is real and not symmetric \0A\00", align 1
@.str2 = private unnamed_addr constant [86 x i8] c"\0A fatal error in FrontMtx_inertia(%p,%p,%p,%p)\0A matrix is complex and not hermitian \0A\00", align 1
@.str3 = private unnamed_addr constant [60 x i8] c"\0A fatal error in FrontMtx_ownedRowsIV(%p,%d,%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [63 x i8] c"\0A fatal error in FrontMtx_ownedColumnsIV(%p,%d,%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [58 x i8] c"\0A fatal error in FrontMtx_makeUpperBlockIVL()\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [58 x i8] c"\0A fatal error in FrontMtx_makeLowerBlockIVL()\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [57 x i8] c"\0A fatal error in FrontMtx_nSolveOps()\0A frontmtx is NULL\0A\00", align 1
@.str8 = private unnamed_addr constant [75 x i8] c"\0A fatal error in FrontMtx_nSolveOps()\0A real type, invalid symmetryflag %d\0A\00", align 1
@.str9 = private unnamed_addr constant [78 x i8] c"\0A fatal error in FrontMtx_nSolveOps()\0A complex type, invalid symmetryflag %d\0A\00", align 1
@.str10 = private unnamed_addr constant [56 x i8] c"\0A fatal error in FrontMtx_nSolveOps()\0A invalid type %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @FrontMtx_colmapIV(%struct._FrontMtx* %frontmtx) #0 {
entry:
  %ncolJ = alloca i32, align 4
  %colindJ = alloca i32*, align 8
  %call = call i32 @FrontMtx_neqns(%struct._FrontMtx* %frontmtx) #5
  %call1 = call i32 @FrontMtx_nfront(%struct._FrontMtx* %frontmtx) #5
  %call2 = call %struct._IV* @IV_new() #5
  call void @IV_init(%struct._IV* %call2, i32 %call, i32* null) #5
  %call3 = call i32* @IV_entries(%struct._IV* %call2) #5
  call void @IVfill(i32 %call, i32* %call3, i32 -1) #5
  %cmp33 = icmp sgt i32 %call1, 0
  br i1 %cmp33, label %for.body, label %for.end17

for.body:                                         ; preds = %entry, %for.inc15
  %J.034 = phi i32 [ %inc16, %for.inc15 ], [ 0, %entry ]
  %call4 = call i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %J.034) #5
  %cmp5 = icmp sgt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %for.inc15

if.then:                                          ; preds = %for.body
  call void @FrontMtx_columnIndices(%struct._FrontMtx* %frontmtx, i32 %J.034, i32* %ncolJ, i32** %colindJ) #5
  %0 = load i32* %ncolJ, align 4, !tbaa !0
  %cmp6 = icmp sgt i32 %0, 0
  br i1 %cmp6, label %land.lhs.true, label %for.inc15

land.lhs.true:                                    ; preds = %if.then
  %1 = load i32** %colindJ, align 8, !tbaa !3
  %cmp7 = icmp eq i32* %1, null
  br i1 %cmp7, label %for.inc15, label %for.body11

for.body11:                                       ; preds = %land.lhs.true, %for.body11
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body11 ], [ 0, %land.lhs.true ]
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv
  %2 = load i32* %arrayidx, align 4, !tbaa !0
  %idxprom12 = sext i32 %2 to i64
  %arrayidx13 = getelementptr inbounds i32* %call3, i64 %idxprom12
  store i32 %J.034, i32* %arrayidx13, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %call4
  br i1 %exitcond, label %for.inc15, label %for.body11

for.inc15:                                        ; preds = %for.body11, %land.lhs.true, %for.body, %if.then
  %inc16 = add nsw i32 %J.034, 1
  %exitcond35 = icmp eq i32 %inc16, %call1
  br i1 %exitcond35, label %for.end17, label %for.body

for.end17:                                        ; preds = %for.inc15, %entry
  ret %struct._IV* %call2
}

; Function Attrs: optsize
declare i32 @FrontMtx_neqns(%struct._FrontMtx*) #1

; Function Attrs: optsize
declare i32 @FrontMtx_nfront(%struct._FrontMtx*) #1

; Function Attrs: optsize
declare %struct._IV* @IV_new() #1

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #1

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #1

; Function Attrs: optsize
declare void @IVfill(i32, i32*, i32) #1

; Function Attrs: optsize
declare i32 @FrontMtx_frontSize(%struct._FrontMtx*, i32) #1

; Function Attrs: optsize
declare void @FrontMtx_columnIndices(%struct._FrontMtx*, i32, i32*, i32**) #1

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @FrontMtx_rowmapIV(%struct._FrontMtx* %frontmtx) #0 {
entry:
  %nrowJ = alloca i32, align 4
  %rowindJ = alloca i32*, align 8
  %call = call i32 @FrontMtx_neqns(%struct._FrontMtx* %frontmtx) #5
  %call1 = call i32 @FrontMtx_nfront(%struct._FrontMtx* %frontmtx) #5
  %call2 = call %struct._IV* @IV_new() #5
  call void @IV_init(%struct._IV* %call2, i32 %call, i32* null) #5
  %call3 = call i32* @IV_entries(%struct._IV* %call2) #5
  call void @IVfill(i32 %call, i32* %call3, i32 -1) #5
  %cmp33 = icmp sgt i32 %call1, 0
  br i1 %cmp33, label %for.body, label %for.end17

for.body:                                         ; preds = %entry, %for.inc15
  %J.034 = phi i32 [ %inc16, %for.inc15 ], [ 0, %entry ]
  %call4 = call i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %J.034) #5
  %cmp5 = icmp sgt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %for.inc15

if.then:                                          ; preds = %for.body
  call void @FrontMtx_rowIndices(%struct._FrontMtx* %frontmtx, i32 %J.034, i32* %nrowJ, i32** %rowindJ) #5
  %0 = load i32* %nrowJ, align 4, !tbaa !0
  %cmp6 = icmp sgt i32 %0, 0
  br i1 %cmp6, label %land.lhs.true, label %for.inc15

land.lhs.true:                                    ; preds = %if.then
  %1 = load i32** %rowindJ, align 8, !tbaa !3
  %cmp7 = icmp eq i32* %1, null
  br i1 %cmp7, label %for.inc15, label %for.body11

for.body11:                                       ; preds = %land.lhs.true, %for.body11
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body11 ], [ 0, %land.lhs.true ]
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv
  %2 = load i32* %arrayidx, align 4, !tbaa !0
  %idxprom12 = sext i32 %2 to i64
  %arrayidx13 = getelementptr inbounds i32* %call3, i64 %idxprom12
  store i32 %J.034, i32* %arrayidx13, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %call4
  br i1 %exitcond, label %for.inc15, label %for.body11

for.inc15:                                        ; preds = %for.body11, %land.lhs.true, %for.body, %if.then
  %inc16 = add nsw i32 %J.034, 1
  %exitcond35 = icmp eq i32 %inc16, %call1
  br i1 %exitcond35, label %for.end17, label %for.body

for.end17:                                        ; preds = %for.inc15, %entry
  ret %struct._IV* %call2
}

; Function Attrs: optsize
declare void @FrontMtx_rowIndices(%struct._FrontMtx*, i32, i32*, i32**) #1

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_inertia(%struct._FrontMtx* %frontmtx, i32* %pnnegative, i32* %pnzero, i32* %pnpositive) #0 {
entry:
  %entries = alloca double*, align 8
  %nent = alloca i32, align 4
  %nJ = alloca i32, align 4
  %pivotsizes = alloca i32*, align 8
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  %cmp1 = icmp eq i32* %pnnegative, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %pnzero, null
  %or.cond349 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32* %pnpositive, null
  %or.cond350 = or i1 %or.cond349, %cmp5
  br i1 %or.cond350, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32* %pnnegative, i32* %pnzero, i32* %pnpositive) #5
  %1 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call6 = call i32 @fflush(%struct._IO_FILE* %1) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %type = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 2
  %2 = load i32* %type, align 4, !tbaa !0
  switch i32 %2, label %if.end21 [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true14
  ]

land.lhs.true:                                    ; preds = %if.end
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  %3 = load i32* %symmetryflag, align 4, !tbaa !0
  %cmp8 = icmp eq i32 %3, 0
  br i1 %cmp8, label %if.end21, label %if.then9

if.then9:                                         ; preds = %land.lhs.true
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([83 x i8]* @.str1, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32* %pnnegative, i32* %pnzero, i32* %pnpositive) #5
  %5 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call11 = call i32 @fflush(%struct._IO_FILE* %5) #5
  br label %if.end21

land.lhs.true14:                                  ; preds = %if.end
  %symmetryflag15 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  %6 = load i32* %symmetryflag15, align 4, !tbaa !0
  %cmp16 = icmp eq i32 %6, 1
  br i1 %cmp16, label %if.end21, label %if.then17

if.then17:                                        ; preds = %land.lhs.true14
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([86 x i8]* @.str2, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32* %pnnegative, i32* %pnzero, i32* %pnpositive) #5
  %8 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call19 = call i32 @fflush(%struct._IO_FILE* %8) #5
  br label %if.end21

if.end21:                                         ; preds = %if.end, %land.lhs.true, %land.lhs.true14, %if.then17, %if.then9
  %nfront22 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  %9 = load i32* %nfront22, align 4, !tbaa !0
  %cmp23389 = icmp sgt i32 %9, 0
  br i1 %cmp23389, label %for.body.lr.ph, label %for.end238

for.body.lr.ph:                                   ; preds = %if.end21
  %pivotingflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc236, %for.body.lr.ph
  %nzero.0393 = phi i32 [ 0, %for.body.lr.ph ], [ %nzero.15, %for.inc236 ]
  %npositive.0392 = phi i32 [ 0, %for.body.lr.ph ], [ %npositive.15, %for.inc236 ]
  %nnegative.0391 = phi i32 [ 0, %for.body.lr.ph ], [ %nnegative.15, %for.inc236 ]
  %J.0390 = phi i32 [ 0, %for.body.lr.ph ], [ %inc237, %for.inc236 ]
  %call24 = call %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx* %frontmtx, i32 %J.0390) #5
  %cmp25 = icmp eq %struct._SubMtx* %call24, null
  br i1 %cmp25, label %for.inc236, label %if.then26

if.then26:                                        ; preds = %for.body
  %10 = load i32* %pivotingflag, align 4, !tbaa !0
  %cmp27 = icmp eq i32 %10, 1
  br i1 %cmp27, label %if.else76, label %if.then28

if.then28:                                        ; preds = %if.then26
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %call24, i32* %nJ, double** %entries) #5
  %11 = load i32* %type, align 4, !tbaa !0
  switch i32 %11, label %for.inc236 [
    i32 1, label %for.cond32.preheader
    i32 2, label %for.cond52.preheader
  ]

for.cond32.preheader:                             ; preds = %if.then28
  %12 = load i32* %nJ, align 4, !tbaa !0
  %cmp33359 = icmp sgt i32 %12, 0
  br i1 %cmp33359, label %for.body34.lr.ph, label %for.inc236

for.body34.lr.ph:                                 ; preds = %for.cond32.preheader
  %13 = load double** %entries, align 8, !tbaa !3
  br label %for.body34

for.cond52.preheader:                             ; preds = %if.then28
  %14 = load i32* %nJ, align 4, !tbaa !0
  %cmp53351 = icmp sgt i32 %14, 0
  br i1 %cmp53351, label %for.body54.lr.ph, label %for.inc236

for.body54.lr.ph:                                 ; preds = %for.cond52.preheader
  %15 = load double** %entries, align 8, !tbaa !3
  br label %for.body54

for.body34:                                       ; preds = %for.body34.lr.ph, %for.inc
  %indvars.iv397 = phi i64 [ 0, %for.body34.lr.ph ], [ %indvars.iv.next398, %for.inc ]
  %nzero.1363 = phi i32 [ %nzero.0393, %for.body34.lr.ph ], [ %nzero.2, %for.inc ]
  %npositive.1362 = phi i32 [ %npositive.0392, %for.body34.lr.ph ], [ %npositive.2, %for.inc ]
  %nnegative.1361 = phi i32 [ %nnegative.0391, %for.body34.lr.ph ], [ %nnegative.2, %for.inc ]
  %arrayidx = getelementptr inbounds double* %13, i64 %indvars.iv397
  %16 = load double* %arrayidx, align 8, !tbaa !4
  %cmp35 = fcmp olt double %16, 0.000000e+00
  br i1 %cmp35, label %if.then36, label %if.else37

if.then36:                                        ; preds = %for.body34
  %inc = add nsw i32 %nnegative.1361, 1
  br label %for.inc

if.else37:                                        ; preds = %for.body34
  %cmp40 = fcmp ogt double %16, 0.000000e+00
  br i1 %cmp40, label %if.then41, label %if.else43

if.then41:                                        ; preds = %if.else37
  %inc42 = add nsw i32 %npositive.1362, 1
  br label %for.inc

if.else43:                                        ; preds = %if.else37
  %inc44 = add nsw i32 %nzero.1363, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then36, %if.else43, %if.then41
  %nnegative.2 = phi i32 [ %inc, %if.then36 ], [ %nnegative.1361, %if.then41 ], [ %nnegative.1361, %if.else43 ]
  %npositive.2 = phi i32 [ %npositive.1362, %if.then36 ], [ %inc42, %if.then41 ], [ %npositive.1362, %if.else43 ]
  %nzero.2 = phi i32 [ %nzero.1363, %if.then36 ], [ %nzero.1363, %if.then41 ], [ %inc44, %if.else43 ]
  %indvars.iv.next398 = add i64 %indvars.iv397, 1
  %17 = trunc i64 %indvars.iv.next398 to i32
  %cmp33 = icmp slt i32 %17, %12
  br i1 %cmp33, label %for.body34, label %for.inc236

for.body54:                                       ; preds = %for.body54.lr.ph, %for.inc71
  %indvars.iv = phi i64 [ 0, %for.body54.lr.ph ], [ %indvars.iv.next, %for.inc71 ]
  %nzero.3355 = phi i32 [ %nzero.0393, %for.body54.lr.ph ], [ %nzero.4, %for.inc71 ]
  %npositive.3354 = phi i32 [ %npositive.0392, %for.body54.lr.ph ], [ %npositive.4, %for.inc71 ]
  %nnegative.3353 = phi i32 [ %nnegative.0391, %for.body54.lr.ph ], [ %nnegative.4, %for.inc71 ]
  %18 = trunc i64 %indvars.iv to i32
  %mul = shl nsw i32 %18, 1
  %idxprom55 = sext i32 %mul to i64
  %arrayidx56 = getelementptr inbounds double* %15, i64 %idxprom55
  %19 = load double* %arrayidx56, align 8, !tbaa !4
  %cmp57 = fcmp olt double %19, 0.000000e+00
  br i1 %cmp57, label %if.then58, label %if.else60

if.then58:                                        ; preds = %for.body54
  %inc59 = add nsw i32 %nnegative.3353, 1
  br label %for.inc71

if.else60:                                        ; preds = %for.body54
  %cmp64 = fcmp ogt double %19, 0.000000e+00
  br i1 %cmp64, label %if.then65, label %if.else67

if.then65:                                        ; preds = %if.else60
  %inc66 = add nsw i32 %npositive.3354, 1
  br label %for.inc71

if.else67:                                        ; preds = %if.else60
  %inc68 = add nsw i32 %nzero.3355, 1
  br label %for.inc71

for.inc71:                                        ; preds = %if.then58, %if.else67, %if.then65
  %nnegative.4 = phi i32 [ %inc59, %if.then58 ], [ %nnegative.3353, %if.then65 ], [ %nnegative.3353, %if.else67 ]
  %npositive.4 = phi i32 [ %npositive.3354, %if.then58 ], [ %inc66, %if.then65 ], [ %npositive.3354, %if.else67 ]
  %nzero.4 = phi i32 [ %nzero.3355, %if.then58 ], [ %nzero.3355, %if.then65 ], [ %inc68, %if.else67 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %20 = trunc i64 %indvars.iv.next to i32
  %cmp53 = icmp slt i32 %20, %14
  br i1 %cmp53, label %for.body54, label %for.inc236

if.else76:                                        ; preds = %if.then26
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %call24, i32* %nJ, i32* %nent, i32** %pivotsizes, double** %entries) #5
  %21 = load i32* %type, align 4, !tbaa !0
  switch i32 %21, label %for.inc236 [
    i32 1, label %for.cond80.preheader
    i32 2, label %for.cond152.preheader
  ]

for.cond80.preheader:                             ; preds = %if.else76
  %22 = load i32* %nJ, align 4, !tbaa !0
  %cmp81379 = icmp sgt i32 %22, 0
  br i1 %cmp81379, label %for.body82, label %for.inc236

for.cond152.preheader:                            ; preds = %if.else76
  %23 = load i32* %nJ, align 4, !tbaa !0
  %cmp153368 = icmp sgt i32 %23, 0
  br i1 %cmp153368, label %for.body154, label %for.inc236

for.body82:                                       ; preds = %for.cond80.preheader, %for.inc145.for.body82_crit_edge
  %24 = phi i32 [ %31, %for.inc145.for.body82_crit_edge ], [ %22, %for.cond80.preheader ]
  %indvars.iv401 = phi i64 [ %indvars.iv.next402, %for.inc145.for.body82_crit_edge ], [ 0, %for.cond80.preheader ]
  %nzero.5385 = phi i32 [ %nzero.9, %for.inc145.for.body82_crit_edge ], [ %nzero.0393, %for.cond80.preheader ]
  %npositive.5384 = phi i32 [ %npositive.9, %for.inc145.for.body82_crit_edge ], [ %npositive.0392, %for.cond80.preheader ]
  %nnegative.5383 = phi i32 [ %nnegative.9, %for.inc145.for.body82_crit_edge ], [ %nnegative.0391, %for.cond80.preheader ]
  %irow.0382 = phi i32 [ %irow.1, %for.inc145.for.body82_crit_edge ], [ 0, %for.cond80.preheader ]
  %ii.2380 = phi i32 [ %ii.3, %for.inc145.for.body82_crit_edge ], [ 0, %for.cond80.preheader ]
  %25 = load i32** %pivotsizes, align 8, !tbaa !3
  %arrayidx84 = getelementptr inbounds i32* %25, i64 %indvars.iv401
  %26 = load i32* %arrayidx84, align 4, !tbaa !0
  %cmp85 = icmp eq i32 %26, 1
  %idxprom87 = sext i32 %ii.2380 to i64
  %27 = load double** %entries, align 8, !tbaa !3
  %arrayidx88 = getelementptr inbounds double* %27, i64 %idxprom87
  %28 = load double* %arrayidx88, align 8, !tbaa !4
  br i1 %cmp85, label %if.then86, label %if.else102

if.then86:                                        ; preds = %for.body82
  %cmp89 = fcmp olt double %28, 0.000000e+00
  br i1 %cmp89, label %if.then90, label %if.else92

if.then90:                                        ; preds = %if.then86
  %inc91 = add nsw i32 %nnegative.5383, 1
  br label %if.end99

if.else92:                                        ; preds = %if.then86
  %cmp93 = fcmp ogt double %28, 0.000000e+00
  br i1 %cmp93, label %if.then94, label %if.else96

if.then94:                                        ; preds = %if.else92
  %inc95 = add nsw i32 %npositive.5384, 1
  br label %if.end99

if.else96:                                        ; preds = %if.else92
  %inc97 = add nsw i32 %nzero.5385, 1
  br label %if.end99

if.end99:                                         ; preds = %if.then94, %if.else96, %if.then90
  %nnegative.6 = phi i32 [ %inc91, %if.then90 ], [ %nnegative.5383, %if.then94 ], [ %nnegative.5383, %if.else96 ]
  %npositive.6 = phi i32 [ %npositive.5384, %if.then90 ], [ %inc95, %if.then94 ], [ %npositive.5384, %if.else96 ]
  %nzero.6 = phi i32 [ %nzero.5385, %if.then90 ], [ %nzero.5385, %if.then94 ], [ %inc97, %if.else96 ]
  %inc100 = add nsw i32 %irow.0382, 1
  %inc101 = add nsw i32 %ii.2380, 1
  br label %for.inc145

if.else102:                                       ; preds = %for.body82
  %add = add nsw i32 %ii.2380, 1
  %idxprom105 = sext i32 %add to i64
  %arrayidx106 = getelementptr inbounds double* %27, i64 %idxprom105
  %29 = load double* %arrayidx106, align 8, !tbaa !4
  %add107 = add nsw i32 %ii.2380, 2
  %idxprom108 = sext i32 %add107 to i64
  %arrayidx109 = getelementptr inbounds double* %27, i64 %idxprom108
  %30 = load double* %arrayidx109, align 8, !tbaa !4
  %add110 = fadd double %28, %30
  %mul111 = fmul double %add110, 5.000000e-01
  %sub = fsub double %28, %30
  %mul112 = fmul double %sub, 2.500000e-01
  %mul114 = fmul double %sub, %mul112
  %mul115 = fmul double %29, %29
  %add116 = fadd double %mul115, %mul114
  %call117 = call double @sqrt(double %add116) #5
  %add118 = fadd double %call117, %mul111
  %cmp119 = fcmp olt double %add118, 0.000000e+00
  br i1 %cmp119, label %if.then120, label %if.else122

if.then120:                                       ; preds = %if.else102
  %inc121 = add nsw i32 %nnegative.5383, 1
  br label %if.end129

if.else122:                                       ; preds = %if.else102
  %cmp123 = fcmp ogt double %add118, 0.000000e+00
  br i1 %cmp123, label %if.then124, label %if.else126

if.then124:                                       ; preds = %if.else122
  %inc125 = add nsw i32 %npositive.5384, 1
  br label %if.end129

if.else126:                                       ; preds = %if.else122
  %inc127 = add nsw i32 %nzero.5385, 1
  br label %if.end129

if.end129:                                        ; preds = %if.then124, %if.else126, %if.then120
  %nnegative.7 = phi i32 [ %inc121, %if.then120 ], [ %nnegative.5383, %if.then124 ], [ %nnegative.5383, %if.else126 ]
  %npositive.7 = phi i32 [ %npositive.5384, %if.then120 ], [ %inc125, %if.then124 ], [ %npositive.5384, %if.else126 ]
  %nzero.7 = phi i32 [ %nzero.5385, %if.then120 ], [ %nzero.5385, %if.then124 ], [ %inc127, %if.else126 ]
  %sub130 = fsub double %mul111, %call117
  %cmp131 = fcmp olt double %sub130, 0.000000e+00
  br i1 %cmp131, label %if.then132, label %if.else134

if.then132:                                       ; preds = %if.end129
  %inc133 = add nsw i32 %nnegative.7, 1
  br label %if.end141

if.else134:                                       ; preds = %if.end129
  %cmp135 = fcmp ogt double %sub130, 0.000000e+00
  br i1 %cmp135, label %if.then136, label %if.else138

if.then136:                                       ; preds = %if.else134
  %inc137 = add nsw i32 %npositive.7, 1
  br label %if.end141

if.else138:                                       ; preds = %if.else134
  %inc139 = add nsw i32 %nzero.7, 1
  br label %if.end141

if.end141:                                        ; preds = %if.then136, %if.else138, %if.then132
  %nnegative.8 = phi i32 [ %inc133, %if.then132 ], [ %nnegative.7, %if.then136 ], [ %nnegative.7, %if.else138 ]
  %npositive.8 = phi i32 [ %npositive.7, %if.then132 ], [ %inc137, %if.then136 ], [ %npositive.7, %if.else138 ]
  %nzero.8 = phi i32 [ %nzero.7, %if.then132 ], [ %nzero.7, %if.then136 ], [ %inc139, %if.else138 ]
  %add142 = add nsw i32 %irow.0382, 2
  %add143 = add nsw i32 %ii.2380, 3
  %.pre403 = load i32* %nJ, align 4, !tbaa !0
  br label %for.inc145

for.inc145:                                       ; preds = %if.end99, %if.end141
  %31 = phi i32 [ %24, %if.end99 ], [ %.pre403, %if.end141 ]
  %ii.3 = phi i32 [ %inc101, %if.end99 ], [ %add143, %if.end141 ]
  %irow.1 = phi i32 [ %inc100, %if.end99 ], [ %add142, %if.end141 ]
  %nnegative.9 = phi i32 [ %nnegative.6, %if.end99 ], [ %nnegative.8, %if.end141 ]
  %npositive.9 = phi i32 [ %npositive.6, %if.end99 ], [ %npositive.8, %if.end141 ]
  %nzero.9 = phi i32 [ %nzero.6, %if.end99 ], [ %nzero.8, %if.end141 ]
  %cmp81 = icmp slt i32 %irow.1, %31
  br i1 %cmp81, label %for.inc145.for.body82_crit_edge, label %for.inc236

for.inc145.for.body82_crit_edge:                  ; preds = %for.inc145
  %indvars.iv.next402 = add i64 %indvars.iv401, 1
  br label %for.body82

for.body154:                                      ; preds = %for.cond152.preheader, %for.inc229.for.body154_crit_edge
  %32 = phi i32 [ %40, %for.inc229.for.body154_crit_edge ], [ %23, %for.cond152.preheader ]
  %indvars.iv399 = phi i64 [ %indvars.iv.next400, %for.inc229.for.body154_crit_edge ], [ 0, %for.cond152.preheader ]
  %nzero.10374 = phi i32 [ %nzero.14, %for.inc229.for.body154_crit_edge ], [ %nzero.0393, %for.cond152.preheader ]
  %npositive.10373 = phi i32 [ %npositive.14, %for.inc229.for.body154_crit_edge ], [ %npositive.0392, %for.cond152.preheader ]
  %nnegative.10372 = phi i32 [ %nnegative.14, %for.inc229.for.body154_crit_edge ], [ %nnegative.0391, %for.cond152.preheader ]
  %irow.2371 = phi i32 [ %irow.3, %for.inc229.for.body154_crit_edge ], [ 0, %for.cond152.preheader ]
  %ii.4369 = phi i32 [ %ii.5, %for.inc229.for.body154_crit_edge ], [ 0, %for.cond152.preheader ]
  %33 = load i32** %pivotsizes, align 8, !tbaa !3
  %arrayidx156 = getelementptr inbounds i32* %33, i64 %indvars.iv399
  %34 = load i32* %arrayidx156, align 4, !tbaa !0
  %cmp157 = icmp eq i32 %34, 1
  %mul159 = shl nsw i32 %ii.4369, 1
  %idxprom160 = sext i32 %mul159 to i64
  %35 = load double** %entries, align 8, !tbaa !3
  %arrayidx161 = getelementptr inbounds double* %35, i64 %idxprom160
  %36 = load double* %arrayidx161, align 8, !tbaa !4
  br i1 %cmp157, label %if.then158, label %if.else175

if.then158:                                       ; preds = %for.body154
  %cmp162 = fcmp olt double %36, 0.000000e+00
  br i1 %cmp162, label %if.then163, label %if.else165

if.then163:                                       ; preds = %if.then158
  %inc164 = add nsw i32 %nnegative.10372, 1
  br label %if.end172

if.else165:                                       ; preds = %if.then158
  %cmp166 = fcmp ogt double %36, 0.000000e+00
  br i1 %cmp166, label %if.then167, label %if.else169

if.then167:                                       ; preds = %if.else165
  %inc168 = add nsw i32 %npositive.10373, 1
  br label %if.end172

if.else169:                                       ; preds = %if.else165
  %inc170 = add nsw i32 %nzero.10374, 1
  br label %if.end172

if.end172:                                        ; preds = %if.then167, %if.else169, %if.then163
  %nnegative.11 = phi i32 [ %inc164, %if.then163 ], [ %nnegative.10372, %if.then167 ], [ %nnegative.10372, %if.else169 ]
  %npositive.11 = phi i32 [ %npositive.10373, %if.then163 ], [ %inc168, %if.then167 ], [ %npositive.10373, %if.else169 ]
  %nzero.11 = phi i32 [ %nzero.10374, %if.then163 ], [ %nzero.10374, %if.then167 ], [ %inc170, %if.else169 ]
  %inc173 = add nsw i32 %irow.2371, 1
  %inc174 = add nsw i32 %ii.4369, 1
  br label %for.inc229

if.else175:                                       ; preds = %for.body154
  %add180 = add nsw i32 %mul159, 2
  %idxprom181 = sext i32 %add180 to i64
  %arrayidx182 = getelementptr inbounds double* %35, i64 %idxprom181
  %37 = load double* %arrayidx182, align 8, !tbaa !4
  %add184 = add nsw i32 %mul159, 3
  %idxprom185 = sext i32 %add184 to i64
  %arrayidx186 = getelementptr inbounds double* %35, i64 %idxprom185
  %38 = load double* %arrayidx186, align 8, !tbaa !4
  %add188 = add nsw i32 %mul159, 4
  %idxprom189 = sext i32 %add188 to i64
  %arrayidx190 = getelementptr inbounds double* %35, i64 %idxprom189
  %39 = load double* %arrayidx190, align 8, !tbaa !4
  %add191 = fadd double %36, %39
  %mul192 = fmul double %add191, 5.000000e-01
  %sub193 = fsub double %36, %39
  %mul194 = fmul double %sub193, 2.500000e-01
  %mul196 = fmul double %sub193, %mul194
  %mul197 = fmul double %37, %37
  %add198 = fadd double %mul197, %mul196
  %mul199 = fmul double %38, %38
  %add200 = fadd double %mul199, %add198
  %call201 = call double @sqrt(double %add200) #5
  %add202 = fadd double %call201, %mul192
  %cmp203 = fcmp olt double %add202, 0.000000e+00
  br i1 %cmp203, label %if.then204, label %if.else206

if.then204:                                       ; preds = %if.else175
  %inc205 = add nsw i32 %nnegative.10372, 1
  br label %if.end213

if.else206:                                       ; preds = %if.else175
  %cmp207 = fcmp ogt double %add202, 0.000000e+00
  br i1 %cmp207, label %if.then208, label %if.else210

if.then208:                                       ; preds = %if.else206
  %inc209 = add nsw i32 %npositive.10373, 1
  br label %if.end213

if.else210:                                       ; preds = %if.else206
  %inc211 = add nsw i32 %nzero.10374, 1
  br label %if.end213

if.end213:                                        ; preds = %if.then208, %if.else210, %if.then204
  %nnegative.12 = phi i32 [ %inc205, %if.then204 ], [ %nnegative.10372, %if.then208 ], [ %nnegative.10372, %if.else210 ]
  %npositive.12 = phi i32 [ %npositive.10373, %if.then204 ], [ %inc209, %if.then208 ], [ %npositive.10373, %if.else210 ]
  %nzero.12 = phi i32 [ %nzero.10374, %if.then204 ], [ %nzero.10374, %if.then208 ], [ %inc211, %if.else210 ]
  %sub214 = fsub double %mul192, %call201
  %cmp215 = fcmp olt double %sub214, 0.000000e+00
  br i1 %cmp215, label %if.then216, label %if.else218

if.then216:                                       ; preds = %if.end213
  %inc217 = add nsw i32 %nnegative.12, 1
  br label %if.end225

if.else218:                                       ; preds = %if.end213
  %cmp219 = fcmp ogt double %sub214, 0.000000e+00
  br i1 %cmp219, label %if.then220, label %if.else222

if.then220:                                       ; preds = %if.else218
  %inc221 = add nsw i32 %npositive.12, 1
  br label %if.end225

if.else222:                                       ; preds = %if.else218
  %inc223 = add nsw i32 %nzero.12, 1
  br label %if.end225

if.end225:                                        ; preds = %if.then220, %if.else222, %if.then216
  %nnegative.13 = phi i32 [ %inc217, %if.then216 ], [ %nnegative.12, %if.then220 ], [ %nnegative.12, %if.else222 ]
  %npositive.13 = phi i32 [ %npositive.12, %if.then216 ], [ %inc221, %if.then220 ], [ %npositive.12, %if.else222 ]
  %nzero.13 = phi i32 [ %nzero.12, %if.then216 ], [ %nzero.12, %if.then220 ], [ %inc223, %if.else222 ]
  %add226 = add nsw i32 %irow.2371, 2
  %add227 = add nsw i32 %ii.4369, 3
  %.pre = load i32* %nJ, align 4, !tbaa !0
  br label %for.inc229

for.inc229:                                       ; preds = %if.end172, %if.end225
  %40 = phi i32 [ %32, %if.end172 ], [ %.pre, %if.end225 ]
  %ii.5 = phi i32 [ %inc174, %if.end172 ], [ %add227, %if.end225 ]
  %irow.3 = phi i32 [ %inc173, %if.end172 ], [ %add226, %if.end225 ]
  %nnegative.14 = phi i32 [ %nnegative.11, %if.end172 ], [ %nnegative.13, %if.end225 ]
  %npositive.14 = phi i32 [ %npositive.11, %if.end172 ], [ %npositive.13, %if.end225 ]
  %nzero.14 = phi i32 [ %nzero.11, %if.end172 ], [ %nzero.13, %if.end225 ]
  %cmp153 = icmp slt i32 %irow.3, %40
  br i1 %cmp153, label %for.inc229.for.body154_crit_edge, label %for.inc236

for.inc229.for.body154_crit_edge:                 ; preds = %for.inc229
  %indvars.iv.next400 = add i64 %indvars.iv399, 1
  br label %for.body154

for.inc236:                                       ; preds = %for.cond80.preheader, %for.inc145, %for.cond152.preheader, %for.inc229, %for.cond32.preheader, %for.inc, %for.cond52.preheader, %for.inc71, %if.else76, %if.then28, %for.body
  %nnegative.15 = phi i32 [ %nnegative.0391, %for.body ], [ %nnegative.0391, %if.then28 ], [ %nnegative.0391, %if.else76 ], [ %nnegative.0391, %for.cond52.preheader ], [ %nnegative.4, %for.inc71 ], [ %nnegative.0391, %for.cond32.preheader ], [ %nnegative.2, %for.inc ], [ %nnegative.0391, %for.cond152.preheader ], [ %nnegative.14, %for.inc229 ], [ %nnegative.0391, %for.cond80.preheader ], [ %nnegative.9, %for.inc145 ]
  %npositive.15 = phi i32 [ %npositive.0392, %for.body ], [ %npositive.0392, %if.then28 ], [ %npositive.0392, %if.else76 ], [ %npositive.0392, %for.cond52.preheader ], [ %npositive.4, %for.inc71 ], [ %npositive.0392, %for.cond32.preheader ], [ %npositive.2, %for.inc ], [ %npositive.0392, %for.cond152.preheader ], [ %npositive.14, %for.inc229 ], [ %npositive.0392, %for.cond80.preheader ], [ %npositive.9, %for.inc145 ]
  %nzero.15 = phi i32 [ %nzero.0393, %for.body ], [ %nzero.0393, %if.then28 ], [ %nzero.0393, %if.else76 ], [ %nzero.0393, %for.cond52.preheader ], [ %nzero.4, %for.inc71 ], [ %nzero.0393, %for.cond32.preheader ], [ %nzero.2, %for.inc ], [ %nzero.0393, %for.cond152.preheader ], [ %nzero.14, %for.inc229 ], [ %nzero.0393, %for.cond80.preheader ], [ %nzero.9, %for.inc145 ]
  %inc237 = add nsw i32 %J.0390, 1
  %exitcond = icmp eq i32 %inc237, %9
  br i1 %exitcond, label %for.end238, label %for.body

for.end238:                                       ; preds = %for.inc236, %if.end21
  %nzero.0.lcssa = phi i32 [ 0, %if.end21 ], [ %nzero.15, %for.inc236 ]
  %npositive.0.lcssa = phi i32 [ 0, %if.end21 ], [ %npositive.15, %for.inc236 ]
  %nnegative.0.lcssa = phi i32 [ 0, %if.end21 ], [ %nnegative.15, %for.inc236 ]
  store i32 %nnegative.0.lcssa, i32* %pnnegative, align 4, !tbaa !0
  store i32 %nzero.0.lcssa, i32* %pnzero, align 4, !tbaa !0
  store i32 %npositive.0.lcssa, i32* %pnpositive, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx*, i32) #1

; Function Attrs: optsize
declare void @SubMtx_diagonalInfo(%struct._SubMtx*, i32*, double**) #1

; Function Attrs: optsize
declare void @SubMtx_blockDiagonalInfo(%struct._SubMtx*, i32*, i32*, i32**, double**) #1

; Function Attrs: nounwind optsize
declare double @sqrt(double) #2

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @FrontMtx_ownedRowsIV(%struct._FrontMtx* %frontmtx, i32 %myid, %struct._IV* %ownersIV, i32 %msglvl, %struct._IO_FILE* nocapture %msgFile) #0 {
entry:
  %nrowJ = alloca i32, align 4
  %rowindJ = alloca i32*, align 8
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str3, i64 0, i64 0), %struct._FrontMtx* null, i32 %myid, %struct._IV* %ownersIV) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  %1 = load i32* %nfront1, align 4, !tbaa !0
  %neqns2 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 1
  %2 = load i32* %neqns2, align 4, !tbaa !0
  %call3 = call %struct._IV* @IV_new() #5
  %cmp4 = icmp eq %struct._IV* %ownersIV, null
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @IV_init(%struct._IV* %call3, i32 %2, i32* null) #5
  call void @IV_ramp(%struct._IV* %call3, i32 0, i32 1) #5
  br label %if.end32

if.else:                                          ; preds = %if.end
  %call6 = call i32* @IV_entries(%struct._IV* %ownersIV) #5
  %cmp766 = icmp sgt i32 %1, 0
  br i1 %cmp766, label %for.body, label %if.end32

for.body:                                         ; preds = %if.else, %for.inc
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.inc ], [ 0, %if.else ]
  %nowned.067 = phi i32 [ %nowned.1, %for.inc ], [ 0, %if.else ]
  %arrayidx = getelementptr inbounds i32* %call6, i64 %indvars.iv69
  %3 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp8 = icmp eq i32 %3, %myid
  br i1 %cmp8, label %if.then9, label %for.inc

if.then9:                                         ; preds = %for.body
  %4 = trunc i64 %indvars.iv69 to i32
  %call10 = call i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %4) #5
  %add = add nsw i32 %call10, %nowned.067
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then9
  %nowned.1 = phi i32 [ %add, %if.then9 ], [ %nowned.067, %for.body ]
  %indvars.iv.next70 = add i64 %indvars.iv69, 1
  %lftr.wideiv71 = trunc i64 %indvars.iv.next70 to i32
  %exitcond72 = icmp eq i32 %lftr.wideiv71, %1
  br i1 %exitcond72, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %cmp12 = icmp sgt i32 %nowned.1, 0
  br i1 %cmp12, label %if.then13, label %if.end32

if.then13:                                        ; preds = %for.end
  call void @IV_init(%struct._IV* %call3, i32 %nowned.1, i32* null) #5
  %call14 = call i32* @IV_entries(%struct._IV* %call3) #5
  br i1 %cmp766, label %for.body17, label %if.end32

for.body17:                                       ; preds = %if.then13, %for.inc28
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc28 ], [ 0, %if.then13 ]
  %offset.064 = phi i32 [ %offset.1, %for.inc28 ], [ 0, %if.then13 ]
  %arrayidx19 = getelementptr inbounds i32* %call6, i64 %indvars.iv
  %5 = load i32* %arrayidx19, align 4, !tbaa !0
  %cmp20 = icmp eq i32 %5, %myid
  br i1 %cmp20, label %if.then21, label %for.inc28

if.then21:                                        ; preds = %for.body17
  %6 = trunc i64 %indvars.iv to i32
  %call22 = call i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %6) #5
  %cmp23 = icmp sgt i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %for.inc28

if.then24:                                        ; preds = %if.then21
  call void @FrontMtx_rowIndices(%struct._FrontMtx* %frontmtx, i32 %6, i32* %nrowJ, i32** %rowindJ) #5
  %idx.ext = sext i32 %offset.064 to i64
  %add.ptr = getelementptr inbounds i32* %call14, i64 %idx.ext
  %7 = load i32** %rowindJ, align 8, !tbaa !3
  call void @IVcopy(i32 %call22, i32* %add.ptr, i32* %7) #5
  %add25 = add nsw i32 %call22, %offset.064
  br label %for.inc28

for.inc28:                                        ; preds = %for.body17, %if.then24, %if.then21
  %offset.1 = phi i32 [ %add25, %if.then24 ], [ %offset.064, %if.then21 ], [ %offset.064, %for.body17 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %1
  br i1 %exitcond, label %if.end32, label %for.body17

if.end32:                                         ; preds = %if.else, %if.then13, %for.inc28, %for.end, %if.then5
  ret %struct._IV* %call3
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare void @IV_ramp(%struct._IV*, i32, i32) #1

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #1

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @FrontMtx_ownedColumnsIV(%struct._FrontMtx* %frontmtx, i32 %myid, %struct._IV* %ownersIV, i32 %msglvl, %struct._IO_FILE* nocapture %msgFile) #0 {
entry:
  %ncolJ = alloca i32, align 4
  %colindJ = alloca i32*, align 8
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), %struct._FrontMtx* null, i32 %myid, %struct._IV* %ownersIV) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  %1 = load i32* %nfront1, align 4, !tbaa !0
  %neqns2 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 1
  %2 = load i32* %neqns2, align 4, !tbaa !0
  %call3 = call %struct._IV* @IV_new() #5
  %cmp4 = icmp eq %struct._IV* %ownersIV, null
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @IV_init(%struct._IV* %call3, i32 %2, i32* null) #5
  call void @IV_ramp(%struct._IV* %call3, i32 0, i32 1) #5
  br label %if.end32

if.else:                                          ; preds = %if.end
  %call6 = call i32* @IV_entries(%struct._IV* %ownersIV) #5
  %cmp766 = icmp sgt i32 %1, 0
  br i1 %cmp766, label %for.body, label %if.end32

for.body:                                         ; preds = %if.else, %for.inc
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.inc ], [ 0, %if.else ]
  %nowned.067 = phi i32 [ %nowned.1, %for.inc ], [ 0, %if.else ]
  %arrayidx = getelementptr inbounds i32* %call6, i64 %indvars.iv69
  %3 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp8 = icmp eq i32 %3, %myid
  br i1 %cmp8, label %if.then9, label %for.inc

if.then9:                                         ; preds = %for.body
  %4 = trunc i64 %indvars.iv69 to i32
  %call10 = call i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %4) #5
  %add = add nsw i32 %call10, %nowned.067
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then9
  %nowned.1 = phi i32 [ %add, %if.then9 ], [ %nowned.067, %for.body ]
  %indvars.iv.next70 = add i64 %indvars.iv69, 1
  %lftr.wideiv71 = trunc i64 %indvars.iv.next70 to i32
  %exitcond72 = icmp eq i32 %lftr.wideiv71, %1
  br i1 %exitcond72, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %cmp12 = icmp sgt i32 %nowned.1, 0
  br i1 %cmp12, label %if.then13, label %if.end32

if.then13:                                        ; preds = %for.end
  call void @IV_init(%struct._IV* %call3, i32 %nowned.1, i32* null) #5
  %call14 = call i32* @IV_entries(%struct._IV* %call3) #5
  br i1 %cmp766, label %for.body17, label %if.end32

for.body17:                                       ; preds = %if.then13, %for.inc28
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc28 ], [ 0, %if.then13 ]
  %offset.064 = phi i32 [ %offset.1, %for.inc28 ], [ 0, %if.then13 ]
  %arrayidx19 = getelementptr inbounds i32* %call6, i64 %indvars.iv
  %5 = load i32* %arrayidx19, align 4, !tbaa !0
  %cmp20 = icmp eq i32 %5, %myid
  br i1 %cmp20, label %if.then21, label %for.inc28

if.then21:                                        ; preds = %for.body17
  %6 = trunc i64 %indvars.iv to i32
  %call22 = call i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %6) #5
  %cmp23 = icmp sgt i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %for.inc28

if.then24:                                        ; preds = %if.then21
  call void @FrontMtx_columnIndices(%struct._FrontMtx* %frontmtx, i32 %6, i32* %ncolJ, i32** %colindJ) #5
  %idx.ext = sext i32 %offset.064 to i64
  %add.ptr = getelementptr inbounds i32* %call14, i64 %idx.ext
  %7 = load i32** %colindJ, align 8, !tbaa !3
  call void @IVcopy(i32 %call22, i32* %add.ptr, i32* %7) #5
  %add25 = add nsw i32 %call22, %offset.064
  br label %for.inc28

for.inc28:                                        ; preds = %for.body17, %if.then24, %if.then21
  %offset.1 = phi i32 [ %add25, %if.then24 ], [ %offset.064, %if.then21 ], [ %offset.064, %for.body17 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %1
  br i1 %exitcond, label %if.end32, label %for.body17

if.end32:                                         ; preds = %if.else, %if.then13, %for.inc28, %for.end, %if.then5
  ret %struct._IV* %call3
}

; Function Attrs: nounwind optsize uwtable
define %struct._IVL* @FrontMtx_makeUpperBlockIVL(%struct._FrontMtx* %frontmtx, %struct._IV* %colmapIV) #0 {
entry:
  %ncol = alloca i32, align 4
  %colind = alloca i32*, align 8
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  %cmp1 = icmp eq %struct._IV* %colmapIV, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([58 x i8]* @.str5, i64 0, i64 0), i64 57, i64 1, %struct._IO_FILE* %0)
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call i32 @FrontMtx_nfront(%struct._FrontMtx* %frontmtx) #5
  %call3 = call i32* @IV_entries(%struct._IV* %colmapIV) #5
  %call4 = call i32* @IVinit(i32 %call2, i32 -1) #5
  %call5 = call i32* @IVinit(i32 %call2, i32 -1) #5
  %call6 = call %struct._IVL* @IVL_new() #5
  call void @IVL_init1(%struct._IVL* %call6, i32 1, i32 %call2) #5
  %cmp771 = icmp sgt i32 %call2, 0
  br i1 %cmp771, label %for.body, label %for.end37

for.body:                                         ; preds = %if.end, %for.inc35
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %for.inc35 ], [ 0, %if.end ]
  %2 = trunc i64 %indvars.iv73 to i32
  %call8 = call i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %2) #5
  %cmp9 = icmp sgt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %for.inc35

if.then10:                                        ; preds = %for.body
  call void @FrontMtx_columnIndices(%struct._FrontMtx* %frontmtx, i32 %2, i32* %ncol, i32** %colind) #5
  %3 = load i32* %ncol, align 4, !tbaa !0
  %cmp11 = icmp sgt i32 %3, 0
  br i1 %cmp11, label %if.then12, label %for.inc35

if.then12:                                        ; preds = %if.then10
  %arrayidx = getelementptr inbounds i32* %call4, i64 %indvars.iv73
  store i32 %2, i32* %arrayidx, align 4, !tbaa !0
  store i32 %2, i32* %call5, align 4, !tbaa !0
  %4 = load i32* %ncol, align 4, !tbaa !0
  %cmp1668 = icmp slt i32 %call8, %4
  br i1 %cmp1668, label %for.body17.lr.ph, label %for.end

for.body17.lr.ph:                                 ; preds = %if.then12
  %5 = load i32** %colind, align 8, !tbaa !3
  %6 = sext i32 %call8 to i64
  br label %for.body17

for.body17:                                       ; preds = %for.body17.lr.ph, %for.inc
  %7 = phi i32 [ %4, %for.body17.lr.ph ], [ %11, %for.inc ]
  %indvars.iv = phi i64 [ %6, %for.body17.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %count.070 = phi i32 [ 1, %for.body17.lr.ph ], [ %count.1, %for.inc ]
  %arrayidx19 = getelementptr inbounds i32* %5, i64 %indvars.iv
  %8 = load i32* %arrayidx19, align 4, !tbaa !0
  %idxprom20 = sext i32 %8 to i64
  %arrayidx21 = getelementptr inbounds i32* %call3, i64 %idxprom20
  %9 = load i32* %arrayidx21, align 4, !tbaa !0
  %idxprom22 = sext i32 %9 to i64
  %arrayidx23 = getelementptr inbounds i32* %call4, i64 %idxprom22
  %10 = load i32* %arrayidx23, align 4, !tbaa !0
  %cmp24 = icmp eq i32 %10, %2
  br i1 %cmp24, label %for.inc, label %if.then25

if.then25:                                        ; preds = %for.body17
  store i32 %2, i32* %arrayidx23, align 4, !tbaa !0
  %inc28 = add nsw i32 %count.070, 1
  %idxprom29 = sext i32 %count.070 to i64
  %arrayidx30 = getelementptr inbounds i32* %call5, i64 %idxprom29
  store i32 %9, i32* %arrayidx30, align 4, !tbaa !0
  %.pre = load i32* %ncol, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.body17, %if.then25
  %11 = phi i32 [ %.pre, %if.then25 ], [ %7, %for.body17 ]
  %count.1 = phi i32 [ %inc28, %if.then25 ], [ %count.070, %for.body17 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %12 = trunc i64 %indvars.iv.next to i32
  %cmp16 = icmp slt i32 %12, %11
  br i1 %cmp16, label %for.body17, label %for.end

for.end:                                          ; preds = %for.inc, %if.then12
  %count.0.lcssa = phi i32 [ 1, %if.then12 ], [ %count.1, %for.inc ]
  call void @IVL_setList(%struct._IVL* %call6, i32 %2, i32 %count.0.lcssa, i32* %call5) #5
  br label %for.inc35

for.inc35:                                        ; preds = %for.body, %for.end, %if.then10
  %indvars.iv.next74 = add i64 %indvars.iv73, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next74 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %call2
  br i1 %exitcond, label %for.end37, label %for.body

for.end37:                                        ; preds = %for.inc35, %if.end
  call void @IVfree(i32* %call4) #5
  call void @IVfree(i32* %call5) #5
  ret %struct._IVL* %call6
}

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #1

; Function Attrs: optsize
declare %struct._IVL* @IVL_new() #1

; Function Attrs: optsize
declare void @IVL_init1(%struct._IVL*, i32, i32) #1

; Function Attrs: optsize
declare void @IVL_setList(%struct._IVL*, i32, i32, i32*) #1

; Function Attrs: optsize
declare void @IVfree(i32*) #1

; Function Attrs: nounwind optsize uwtable
define %struct._IVL* @FrontMtx_makeLowerBlockIVL(%struct._FrontMtx* %frontmtx, %struct._IV* %rowmapIV) #0 {
entry:
  %nrow = alloca i32, align 4
  %rowind = alloca i32*, align 8
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  %cmp1 = icmp eq %struct._IV* %rowmapIV, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([58 x i8]* @.str6, i64 0, i64 0), i64 57, i64 1, %struct._IO_FILE* %0)
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call i32 @FrontMtx_nfront(%struct._FrontMtx* %frontmtx) #5
  %call3 = call i32* @IV_entries(%struct._IV* %rowmapIV) #5
  %call4 = call i32* @IVinit(i32 %call2, i32 -1) #5
  %call5 = call i32* @IVinit(i32 %call2, i32 -1) #5
  %call6 = call %struct._IVL* @IVL_new() #5
  call void @IVL_init1(%struct._IVL* %call6, i32 1, i32 %call2) #5
  %cmp771 = icmp sgt i32 %call2, 0
  br i1 %cmp771, label %for.body, label %for.end37

for.body:                                         ; preds = %if.end, %for.inc35
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %for.inc35 ], [ 0, %if.end ]
  %2 = trunc i64 %indvars.iv73 to i32
  %call8 = call i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %2) #5
  %cmp9 = icmp sgt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %for.inc35

if.then10:                                        ; preds = %for.body
  call void @FrontMtx_rowIndices(%struct._FrontMtx* %frontmtx, i32 %2, i32* %nrow, i32** %rowind) #5
  %3 = load i32* %nrow, align 4, !tbaa !0
  %cmp11 = icmp sgt i32 %3, 0
  br i1 %cmp11, label %if.then12, label %for.inc35

if.then12:                                        ; preds = %if.then10
  %arrayidx = getelementptr inbounds i32* %call4, i64 %indvars.iv73
  store i32 %2, i32* %arrayidx, align 4, !tbaa !0
  store i32 %2, i32* %call5, align 4, !tbaa !0
  %4 = load i32* %nrow, align 4, !tbaa !0
  %cmp1668 = icmp slt i32 %call8, %4
  br i1 %cmp1668, label %for.body17.lr.ph, label %for.end

for.body17.lr.ph:                                 ; preds = %if.then12
  %5 = load i32** %rowind, align 8, !tbaa !3
  %6 = sext i32 %call8 to i64
  br label %for.body17

for.body17:                                       ; preds = %for.body17.lr.ph, %for.inc
  %7 = phi i32 [ %4, %for.body17.lr.ph ], [ %11, %for.inc ]
  %indvars.iv = phi i64 [ %6, %for.body17.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %count.070 = phi i32 [ 1, %for.body17.lr.ph ], [ %count.1, %for.inc ]
  %arrayidx19 = getelementptr inbounds i32* %5, i64 %indvars.iv
  %8 = load i32* %arrayidx19, align 4, !tbaa !0
  %idxprom20 = sext i32 %8 to i64
  %arrayidx21 = getelementptr inbounds i32* %call3, i64 %idxprom20
  %9 = load i32* %arrayidx21, align 4, !tbaa !0
  %idxprom22 = sext i32 %9 to i64
  %arrayidx23 = getelementptr inbounds i32* %call4, i64 %idxprom22
  %10 = load i32* %arrayidx23, align 4, !tbaa !0
  %cmp24 = icmp eq i32 %10, %2
  br i1 %cmp24, label %for.inc, label %if.then25

if.then25:                                        ; preds = %for.body17
  store i32 %2, i32* %arrayidx23, align 4, !tbaa !0
  %inc28 = add nsw i32 %count.070, 1
  %idxprom29 = sext i32 %count.070 to i64
  %arrayidx30 = getelementptr inbounds i32* %call5, i64 %idxprom29
  store i32 %9, i32* %arrayidx30, align 4, !tbaa !0
  %.pre = load i32* %nrow, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.body17, %if.then25
  %11 = phi i32 [ %.pre, %if.then25 ], [ %7, %for.body17 ]
  %count.1 = phi i32 [ %inc28, %if.then25 ], [ %count.070, %for.body17 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %12 = trunc i64 %indvars.iv.next to i32
  %cmp16 = icmp slt i32 %12, %11
  br i1 %cmp16, label %for.body17, label %for.end

for.end:                                          ; preds = %for.inc, %if.then12
  %count.0.lcssa = phi i32 [ 1, %if.then12 ], [ %count.1, %for.inc ]
  call void @IVL_setList(%struct._IVL* %call6, i32 %2, i32 %count.0.lcssa, i32* %call5) #5
  br label %for.inc35

for.inc35:                                        ; preds = %for.body, %for.end, %if.then10
  %indvars.iv.next74 = add i64 %indvars.iv73, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next74 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %call2
  br i1 %exitcond, label %for.end37, label %for.body

for.end37:                                        ; preds = %for.inc35, %if.end
  call void @IVfree(i32* %call4) #5
  call void @IVfree(i32* %call5) #5
  ret %struct._IVL* %call6
}

; Function Attrs: nounwind optsize uwtable
define i32 @FrontMtx_nSolveOps(%struct._FrontMtx* %frontmtx) #0 {
entry:
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([57 x i8]* @.str7, i64 0, i64 0), i64 56, i64 1, %struct._IO_FILE* %0)
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 2
  %2 = load i32* %type, align 4, !tbaa !0
  switch i32 %2, label %sw.default32 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
  ]

sw.bb:                                            ; preds = %if.end
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  %3 = load i32* %symmetryflag, align 4, !tbaa !0
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb1
    i32 2, label %sw.bb2
  ]

sw.bb1:                                           ; preds = %sw.bb
  %nentU = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 9
  %4 = load i32* %nentU, align 4, !tbaa !0
  %mul = shl i32 %4, 2
  %nentD = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 7
  %5 = load i32* %nentD, align 4, !tbaa !0
  %add = add nsw i32 %mul, %5
  br label %sw.epilog35

sw.bb2:                                           ; preds = %sw.bb
  %nentL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 8
  %6 = load i32* %nentL, align 4, !tbaa !0
  %nentD4 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 7
  %7 = load i32* %nentD4, align 4, !tbaa !0
  %nentU6 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 9
  %8 = load i32* %nentU6, align 4, !tbaa !0
  %tmp = add i32 %8, %6
  %tmp52 = shl i32 %tmp, 1
  %add8 = add i32 %tmp52, %7
  br label %sw.epilog35

sw.default:                                       ; preds = %sw.bb
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([75 x i8]* @.str8, i64 0, i64 0), i32 %3) #5
  tail call void @exit(i32 -1) #6
  unreachable

sw.bb11:                                          ; preds = %if.end
  %symmetryflag12 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  %10 = load i32* %symmetryflag12, align 4, !tbaa !0
  switch i32 %10, label %sw.default28 [
    i32 0, label %sw.bb13
    i32 1, label %sw.bb13
    i32 2, label %sw.bb19
  ]

sw.bb13:                                          ; preds = %sw.bb11, %sw.bb11
  %nentU14 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 9
  %11 = load i32* %nentU14, align 4, !tbaa !0
  %mul15 = shl i32 %11, 4
  %nentD16 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 7
  %12 = load i32* %nentD16, align 4, !tbaa !0
  %mul17 = shl i32 %12, 3
  %add18 = add nsw i32 %mul17, %mul15
  br label %sw.epilog35

sw.bb19:                                          ; preds = %sw.bb11
  %nentL20 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 8
  %13 = load i32* %nentL20, align 4, !tbaa !0
  %nentD22 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 7
  %14 = load i32* %nentD22, align 4, !tbaa !0
  %nentU25 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 9
  %15 = load i32* %nentU25, align 4, !tbaa !0
  %tmp53 = add i32 %14, %13
  %tmp54 = add i32 %tmp53, %15
  %tmp55 = shl i32 %tmp54, 3
  br label %sw.epilog35

sw.default28:                                     ; preds = %sw.bb11
  %16 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([78 x i8]* @.str9, i64 0, i64 0), i32 %10) #5
  tail call void @exit(i32 -1) #6
  unreachable

sw.default32:                                     ; preds = %if.end
  %17 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call34 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([56 x i8]* @.str10, i64 0, i64 0), i32 %2) #5
  tail call void @exit(i32 -1) #6
  unreachable

sw.epilog35:                                      ; preds = %sw.bb13, %sw.bb19, %sw.bb1, %sw.bb2
  %nsolveops.0 = phi i32 [ %tmp55, %sw.bb19 ], [ %add18, %sw.bb13 ], [ %add8, %sw.bb2 ], [ %add, %sw.bb1 ]
  ret i32 %nsolveops.0
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}