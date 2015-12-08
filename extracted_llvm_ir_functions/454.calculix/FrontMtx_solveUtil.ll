; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._FrontMtx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._Tree*, %struct._ETree*, %struct._IV*, %struct._IVL*, %struct._IVL*, %struct._IVL*, %struct._IVL*, %struct._IVL*, %struct._SubMtx**, %struct._SubMtx**, %struct._SubMtx**, %struct._SubMtx**, %struct._SubMtx**, %struct._I2Ohash*, %struct._I2Ohash*, %struct._SubMtxManager*, %struct._Lock*, %struct._PatchAndGoInfo*, i32 }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._ETree = type { i32, i32, %struct._Tree*, %struct._IV*, %struct._IV*, %struct._IV* }
%struct._IV = type { i32, i32, i32, i32* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._I2Ohash = type { i32, i32, i32, %struct._I2OP*, %struct._I2OP*, %struct._I2OP** }
%struct._I2OP = type { i32, i32, i8*, %struct._I2OP* }
%struct._SubMtxManager = type { %struct._SubMtx*, %struct._Lock*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Lock = type { i8*, i32, i32 }
%struct._PatchAndGoInfo = type { i32, double, double, %struct._IV*, %struct._DV* }
%struct._DenseMtx = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._DenseMtx* }
%struct._SubMtxList = type { i32, %struct._SubMtx**, i32*, %struct._Lock*, i8*, i32 }
%struct._IP = type { i32, %struct._IP* }
%struct._Ideq = type { i32, i32, i32, %struct._IV }

@.str = private unnamed_addr constant [17 x i8] c"\0A rhsmtx->rowind\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"\0A rowmap\00", align 1
@stderr = external global %struct._IO_FILE*
@.str2 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str3 = private unnamed_addr constant [88 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c\00", align 1
@.str4 = private unnamed_addr constant [47 x i8] c"\0A ALLOCATE error : bytes %zd, line %d, file %s\00", align 1
@.str5 = private unnamed_addr constant [41 x i8] c"\0A fatal error in load rhs(%d), BJ = NULL\00", align 1
@.str6 = private unnamed_addr constant [27 x i8] c"\0A\0A rhs for J = %d, BJ = %p\00", align 1
@.str7 = private unnamed_addr constant [11 x i8] c"\0A\0A BJ = %p\00", align 1
@.str8 = private unnamed_addr constant [48 x i8] c"\0A 2. fatal error in forwardVisit(%d), BJ = NULL\00", align 1
@.str9 = private unnamed_addr constant [27 x i8] c"\0A\0A aggregate count is zero\00", align 1
@.str10 = private unnamed_addr constant [30 x i8] c"\0A\0A updDone = %c, aggDone = %c\00", align 1
@.str11 = private unnamed_addr constant [23 x i8] c"\0A\0A after forward solve\00", align 1
@.str12 = private unnamed_addr constant [34 x i8] c"\0A\0A putting BJ into aggregate list\00", align 1
@.str13 = private unnamed_addr constant [12 x i8] c"\0A\0A DJJ = %p\00", align 1
@.str14 = private unnamed_addr constant [33 x i8] c"\0A\0A b_{%d,*} after diagonal solve\00", align 1
@.str15 = private unnamed_addr constant [45 x i8] c"\0A inside FrontMtx_backwardVisit(%d), nJ = %d\00", align 1
@.str16 = private unnamed_addr constant [17 x i8] c"\0A heads[%d] = %p\00", align 1
@.str17 = private unnamed_addr constant [11 x i8] c"\0A\0A ZJ = %p\00", align 1
@.str18 = private unnamed_addr constant [15 x i8] c"\0A updDone = %c\00", align 1
@.str19 = private unnamed_addr constant [49 x i8] c"\0A 2. fatal error in backwardVisit(%d), ZJ = NULL\00", align 1
@.str20 = private unnamed_addr constant [15 x i8] c"\0A aggDone = %c\00", align 1
@.str21 = private unnamed_addr constant [24 x i8] c"\0A\0A after backward solve\00", align 1
@.str22 = private unnamed_addr constant [18 x i8] c"\0A status[%d] = %c\00", align 1
@.str23 = private unnamed_addr constant [17 x i8] c"\0A solmtx->rowind\00", align 1
@.str24 = private unnamed_addr constant [9 x i8] c"\0A colmap\00", align 1
@.str25 = private unnamed_addr constant [60 x i8] c"\0A fatal error in storeSolution(%d)\0A thread %d, xmtxJ = NULL\00", align 1
@.str26 = private unnamed_addr constant [32 x i8] c"\0A storing solution for front %d\00", align 1
@.str27 = private unnamed_addr constant [21 x i8] c"\0A global row indices\00", align 1
@.str28 = private unnamed_addr constant [20 x i8] c"\0A local row indices\00", align 1
@.str29 = private unnamed_addr constant [31 x i8] c"\0A linking L(%d,%d) to L(%d,%d)\00", align 1
@.str30 = private unnamed_addr constant [27 x i8] c"\0A WHOA, heads[nfront] = %p\00", align 1
@.str31 = private unnamed_addr constant [31 x i8] c"\0A linking U(%d,%d) to U(%d,%d)\00", align 1
@.str32 = private unnamed_addr constant [24 x i8] c"\0A\0A frontIsDone[%d] = %c\00", align 1
@.str33 = private unnamed_addr constant [25 x i8] c"\0A\0A before solve: XK = %p\00", align 1
@.str34 = private unnamed_addr constant [12 x i8] c"\0A\0A UJK = %p\00", align 1
@.str35 = private unnamed_addr constant [25 x i8] c"\0A\0A after update: ZJ = %p\00", align 1
@.str36 = private unnamed_addr constant [61 x i8] c"\0A fatal error in assembleAggregates()\0A BJ = %p, aggList = %p\00", align 1
@.str37 = private unnamed_addr constant [31 x i8] c"\0A\0A aggregate list is not-empty\00", align 1
@.str38 = private unnamed_addr constant [58 x i8] c"\0A\0A BJ(%d,%d) : nrow %d, ncol %d, inc1 %d, inc2 %d, ent %p\00", align 1
@.str40 = private unnamed_addr constant [60 x i8] c"\0A BJhat(%d,%d) : nrow %d, ncol %d, inc1 %d, inc2 %d, ent %p\00", align 1
@.str41 = private unnamed_addr constant [14 x i8] c"\0A fatal error\00", align 1
@.str42 = private unnamed_addr constant [6 x i8] c"\0A\0A BJ\00", align 1
@.str43 = private unnamed_addr constant [9 x i8] c"\0A\0A BJhat\00", align 1
@.str44 = private unnamed_addr constant [21 x i8] c"\0A\0A BJ after assembly\00", align 1
@.str45 = private unnamed_addr constant [40 x i8] c"\0A\0A frontIsDone[%d] = %c, p_mtx[%d] = %p\00", align 1
@.str46 = private unnamed_addr constant [25 x i8] c"\0A\0A before solve: YI = %p\00", align 1
@.str47 = private unnamed_addr constant [12 x i8] c"\0A\0A LJI = %p\00", align 1
@.str48 = private unnamed_addr constant [12 x i8] c"\0A\0A UIJ = %p\00", align 1
@.str49 = private unnamed_addr constant [25 x i8] c"\0A\0A after update: BJ = %p\00", align 1
@.str50 = private unnamed_addr constant [48 x i8] c"\0A 1. fatal error in forwardVisit(%d), BJ = NULL\00", align 1

; Function Attrs: nounwind optsize uwtable
define noalias %struct._SubMtx** @FrontMtx_loadRightHandSide(%struct._FrontMtx* %frontmtx, %struct._DenseMtx* %rhsmtx, i32* %owners, i32 %myid, %struct._SubMtxManager* %mtxmanager, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  %bJ = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncolJ = alloca i32, align 4
  %neqns = alloca i32, align 4
  %nrhs = alloca i32, align 4
  %nrowJ = alloca i32, align 4
  %rowindJ = alloca i32*, align 8
  %nrow = getelementptr inbounds %struct._DenseMtx* %rhsmtx, i64 0, i32 3
  %0 = load i32* %nrow, align 4, !tbaa !0
  %neqns1 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 1
  %1 = load i32* %neqns1, align 4, !tbaa !0
  store i32 %1, i32* %neqns, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.end16, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32* @IVinit(i32 %1, i32 -1) #5
  %rowind2 = getelementptr inbounds %struct._DenseMtx* %rhsmtx, i64 0, i32 7
  %2 = load i32** %rowind2, align 8, !tbaa !3
  %cmp3 = icmp sgt i32 %msglvl, 2
  br i1 %cmp3, label %if.then4, label %for.cond.preheader

if.then4:                                         ; preds = %if.then
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %msgFile)
  %4 = load i32* %nrow, align 4, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %4, i32* %2) #5
  %call7 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then4, %if.then
  %cmp8316 = icmp sgt i32 %0, 0
  br i1 %cmp8316, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv344 = phi i64 [ %indvars.iv.next345, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %2, i64 %indvars.iv344
  %5 = load i32* %arrayidx, align 4, !tbaa !0
  %idxprom9 = sext i32 %5 to i64
  %arrayidx10 = getelementptr inbounds i32* %call, i64 %idxprom9
  %6 = trunc i64 %indvars.iv344 to i32
  store i32 %6, i32* %arrayidx10, align 4, !tbaa !0
  %indvars.iv.next345 = add i64 %indvars.iv344, 1
  %lftr.wideiv346 = trunc i64 %indvars.iv.next345 to i32
  %exitcond347 = icmp eq i32 %lftr.wideiv346, %0
  br i1 %exitcond347, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %cmp11 = icmp sgt i32 %msglvl, 1
  br i1 %cmp11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %for.end
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %msgFile)
  %8 = load i32* %neqns, align 4, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %8, i32* %call) #5
  %call14 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end16

if.end16:                                         ; preds = %entry, %for.end, %if.then12
  %localrhs.0 = phi i32 [ 84, %if.then12 ], [ 84, %for.end ], [ 70, %entry ]
  %rowind.0 = phi i32* [ %2, %if.then12 ], [ %2, %for.end ], [ undef, %entry ]
  %rowmap.0 = phi i32* [ %call, %if.then12 ], [ %call, %for.end ], [ undef, %entry ]
  %call17 = call i32 @FrontMtx_nfront(%struct._FrontMtx* %frontmtx) #5
  %cmp18 = icmp sgt i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.else29

if.then19:                                        ; preds = %if.end16
  %conv = sext i32 %call17 to i64
  %mul = shl nsw i64 %conv, 3
  %call20 = call noalias i8* @malloc(i64 %mul) #5
  %9 = bitcast i8* %call20 to %struct._SubMtx**
  %cmp21 = icmp eq i8* %call20, null
  br i1 %cmp21, label %if.then23, label %for.body51.lr.ph

if.then23:                                        ; preds = %if.then19
  %10 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0), i64 %mul, i32 80, i8* getelementptr inbounds ([88 x i8]* @.str3, i64 0, i64 0)) #5
  call void @exit(i32 -1) #6
  unreachable

if.else29:                                        ; preds = %if.end16
  %cmp30 = icmp eq i32 %call17, 0
  br i1 %cmp30, label %for.end47, label %if.else33

if.else33:                                        ; preds = %if.else29
  %11 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %conv34 = sext i32 %call17 to i64
  %mul35 = shl nsw i64 %conv34, 3
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([47 x i8]* @.str4, i64 0, i64 0), i64 %mul35, i32 80, i8* getelementptr inbounds ([88 x i8]* @.str3, i64 0, i64 0)) #5
  call void @exit(i32 -1) #6
  unreachable

for.end47:                                        ; preds = %if.else29
  call void @DenseMtx_dimensions(%struct._DenseMtx* %rhsmtx, i32* %neqns, i32* %nrhs) #5
  br label %for.end190

for.body51.lr.ph:                                 ; preds = %if.then19
  %12 = add i32 %call17, -1
  %13 = zext i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 3
  %15 = add i64 %14, 8
  call void @llvm.memset.p0i8.i64(i8* %call20, i8 0, i64 %15, i32 8, i1 false)
  call void @DenseMtx_dimensions(%struct._DenseMtx* %rhsmtx, i32* %neqns, i32* %nrhs) #5
  %cmp52 = icmp eq i32* %owners, null
  %cmp63 = icmp eq i32 %localrhs.0, 84
  %type = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 2
  %cmp161 = icmp sgt i32 %msglvl, 3
  %mul153 = shl nsw i32 %0, 1
  %idx.ext154 = sext i32 %mul153 to i64
  %idx.ext114 = sext i32 %0 to i64
  br label %for.body51

for.body51:                                       ; preds = %for.body51.lr.ph, %for.inc188
  %indvars.iv337 = phi i64 [ 0, %for.body51.lr.ph ], [ %indvars.iv.next338, %for.inc188 ]
  %J.1312 = phi i32 [ 0, %for.body51.lr.ph ], [ %inc189, %for.inc188 ]
  br i1 %cmp52, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body51
  %arrayidx55 = getelementptr inbounds i32* %owners, i64 %indvars.iv337
  %16 = load i32* %arrayidx55, align 4, !tbaa !0
  %cmp56 = icmp eq i32 %16, %myid
  br i1 %cmp56, label %land.lhs.true, label %for.inc188

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body51
  %17 = trunc i64 %indvars.iv337 to i32
  %call58 = call i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %17) #5
  %cmp59 = icmp sgt i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %for.inc188

if.then61:                                        ; preds = %land.lhs.true
  call void @FrontMtx_rowIndices(%struct._FrontMtx* %frontmtx, i32 %17, i32* %nrowJ, i32** %rowindJ) #5
  br i1 %cmp63, label %for.body69.lr.ph, label %if.end79

for.body69.lr.ph:                                 ; preds = %if.then61
  %18 = load i32** %rowindJ, align 8, !tbaa !3
  br label %for.body69

for.body69:                                       ; preds = %for.body69, %for.body69.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body69.lr.ph ], [ %indvars.iv.next, %for.body69 ]
  %arrayidx71 = getelementptr inbounds i32* %18, i64 %indvars.iv
  %19 = load i32* %arrayidx71, align 4, !tbaa !0
  %idxprom72 = sext i32 %19 to i64
  %arrayidx73 = getelementptr inbounds i32* %rowmap.0, i64 %idxprom72
  %20 = load i32* %arrayidx73, align 4, !tbaa !0
  store i32 %20, i32* %arrayidx71, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %call58
  br i1 %exitcond, label %if.end79, label %for.body69

if.end79:                                         ; preds = %for.body69, %if.then61
  %21 = load i32* %type, align 4, !tbaa !0
  %22 = load i32* %nrhs, align 4, !tbaa !0
  %mul80 = mul nsw i32 %22, %call58
  %call81 = call i32 @SubMtx_nbytesNeeded(i32 %21, i32 1, i32 %call58, i32 %22, i32 %mul80) #5
  %call82 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %mtxmanager, i32 %call81) #5
  %23 = load i32* %type, align 4, !tbaa !0
  %24 = load i32* %nrhs, align 4, !tbaa !0
  %mul84 = mul nsw i32 %24, %call58
  call void @SubMtx_init(%struct._SubMtx* %call82, i32 %23, i32 1, i32 %17, i32 0, i32 %call58, i32 %24, i32 %mul84) #5
  %arrayidx86 = getelementptr inbounds %struct._SubMtx** %9, i64 %indvars.iv337
  store %struct._SubMtx* %call82, %struct._SubMtx** %arrayidx86, align 8, !tbaa !3
  %cmp87 = icmp eq %struct._SubMtx* %call82, null
  br i1 %cmp87, label %if.then89, label %if.end91

if.then89:                                        ; preds = %if.end79
  %25 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call90 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([41 x i8]* @.str5, i64 0, i64 0), i32 %J.1312) #5
  call void @exit(i32 -1) #6
  unreachable

if.end91:                                         ; preds = %if.end79
  %call92 = call double* @DenseMtx_entries(%struct._DenseMtx* %rhsmtx) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %call82, i32* %nrowJ, i32* %ncolJ, i32* %inc1, i32* %inc2, double** %bJ) #5
  %26 = load i32* %type, align 4, !tbaa !0
  switch i32 %26, label %if.end160 [
    i32 1, label %for.cond97.preheader
    i32 2, label %for.cond124.preheader
  ]

for.cond97.preheader:                             ; preds = %if.end91
  %27 = load i32* %nrhs, align 4, !tbaa !0
  %cmp98303 = icmp sgt i32 %27, 0
  br i1 %cmp98303, label %for.cond101.preheader.lr.ph, label %if.end160

for.cond101.preheader.lr.ph:                      ; preds = %for.cond97.preheader
  %idx.ext = sext i32 %call58 to i64
  %28 = load i32** %rowindJ, align 8, !tbaa !3
  %bJ.promoted306 = load double** %bJ, align 8, !tbaa !3
  %bJ.promoted306328 = bitcast double* %bJ.promoted306 to i8*
  %29 = icmp sgt i32 %27, 1
  %.op349 = add i32 %27, -1
  %30 = zext i32 %.op349 to i64
  %.op350 = shl nuw nsw i64 %30, 3
  %.op350.op = add i64 %.op350, 8
  %31 = select i1 %29, i64 %.op350.op, i64 8
  %32 = mul i64 %31, %idx.ext
  %uglygep330 = getelementptr i8* %bJ.promoted306328, i64 %32
  br label %for.body104.lr.ph

for.cond124.preheader:                            ; preds = %if.end91
  %33 = load i32* %nrhs, align 4, !tbaa !0
  %cmp125296 = icmp sgt i32 %33, 0
  br i1 %cmp125296, label %for.cond128.preheader.lr.ph, label %if.end160

for.cond128.preheader.lr.ph:                      ; preds = %for.cond124.preheader
  %mul150 = shl nsw i32 %call58, 1
  %idx.ext151 = sext i32 %mul150 to i64
  %34 = load i32** %rowindJ, align 8, !tbaa !3
  %bJ.promoted = load double** %bJ, align 8, !tbaa !3
  %bJ.promoted322 = bitcast double* %bJ.promoted to i8*
  %35 = icmp sgt i32 %33, 1
  %.op = add i32 %33, -1
  %36 = zext i32 %.op to i64
  %.op348 = shl nuw nsw i64 %36, 3
  %.op348.op = add i64 %.op348, 8
  %37 = select i1 %35, i64 %.op348.op, i64 8
  %38 = shl i32 %call58, 1
  %39 = sext i32 %38 to i64
  %40 = mul i64 %37, %39
  %uglygep = getelementptr i8* %bJ.promoted322, i64 %40
  br label %for.body131.lr.ph

for.body104.lr.ph:                                ; preds = %for.end113, %for.cond101.preheader.lr.ph
  %add.ptr307 = phi double* [ %bJ.promoted306, %for.cond101.preheader.lr.ph ], [ %add.ptr, %for.end113 ]
  %rhs.0305 = phi double* [ %call92, %for.cond101.preheader.lr.ph ], [ %add.ptr115, %for.end113 ]
  %jrhs.0304 = phi i32 [ 0, %for.cond101.preheader.lr.ph ], [ %inc117, %for.end113 ]
  br label %for.body104

for.body104:                                      ; preds = %for.body104, %for.body104.lr.ph
  %indvars.iv324 = phi i64 [ 0, %for.body104.lr.ph ], [ %indvars.iv.next325, %for.body104 ]
  %arrayidx106 = getelementptr inbounds i32* %28, i64 %indvars.iv324
  %41 = load i32* %arrayidx106, align 4, !tbaa !0
  %idxprom107 = sext i32 %41 to i64
  %arrayidx108 = getelementptr inbounds double* %rhs.0305, i64 %idxprom107
  %42 = load double* %arrayidx108, align 8, !tbaa !4
  %arrayidx110 = getelementptr inbounds double* %add.ptr307, i64 %indvars.iv324
  store double %42, double* %arrayidx110, align 8, !tbaa !4
  %indvars.iv.next325 = add i64 %indvars.iv324, 1
  %lftr.wideiv326 = trunc i64 %indvars.iv.next325 to i32
  %exitcond327 = icmp eq i32 %lftr.wideiv326, %call58
  br i1 %exitcond327, label %for.end113, label %for.body104

for.end113:                                       ; preds = %for.body104
  %add.ptr = getelementptr inbounds double* %add.ptr307, i64 %idx.ext
  %add.ptr115 = getelementptr inbounds double* %rhs.0305, i64 %idx.ext114
  %inc117 = add nsw i32 %jrhs.0304, 1
  %cmp98 = icmp slt i32 %inc117, %27
  br i1 %cmp98, label %for.body104.lr.ph, label %for.cond97.if.end160.loopexit302_crit_edge

for.body131.lr.ph:                                ; preds = %for.end149, %for.cond128.preheader.lr.ph
  %add.ptr152299 = phi double* [ %bJ.promoted, %for.cond128.preheader.lr.ph ], [ %add.ptr152, %for.end149 ]
  %rhs.1298 = phi double* [ %call92, %for.cond128.preheader.lr.ph ], [ %add.ptr155, %for.end149 ]
  %jrhs.1297 = phi i32 [ 0, %for.cond128.preheader.lr.ph ], [ %inc157, %for.end149 ]
  br label %for.body131

for.body131:                                      ; preds = %for.body131, %for.body131.lr.ph
  %indvars.iv318 = phi i64 [ 0, %for.body131.lr.ph ], [ %indvars.iv.next319, %for.body131 ]
  %arrayidx133 = getelementptr inbounds i32* %34, i64 %indvars.iv318
  %43 = load i32* %arrayidx133, align 4, !tbaa !0
  %mul134 = shl nsw i32 %43, 1
  %idxprom135 = sext i32 %mul134 to i64
  %arrayidx136 = getelementptr inbounds double* %rhs.1298, i64 %idxprom135
  %44 = load double* %arrayidx136, align 8, !tbaa !4
  %45 = trunc i64 %indvars.iv318 to i32
  %mul137 = shl nsw i32 %45, 1
  %idxprom138 = sext i32 %mul137 to i64
  %arrayidx139 = getelementptr inbounds double* %add.ptr152299, i64 %idxprom138
  store double %44, double* %arrayidx139, align 8, !tbaa !4
  %add290 = or i32 %mul134, 1
  %idxprom141 = sext i32 %add290 to i64
  %arrayidx142 = getelementptr inbounds double* %rhs.1298, i64 %idxprom141
  %46 = load double* %arrayidx142, align 8, !tbaa !4
  %add144291 = or i32 %mul137, 1
  %idxprom145 = sext i32 %add144291 to i64
  %arrayidx146 = getelementptr inbounds double* %add.ptr152299, i64 %idxprom145
  store double %46, double* %arrayidx146, align 8, !tbaa !4
  %indvars.iv.next319 = add i64 %indvars.iv318, 1
  %lftr.wideiv320 = trunc i64 %indvars.iv.next319 to i32
  %exitcond321 = icmp eq i32 %lftr.wideiv320, %call58
  br i1 %exitcond321, label %for.end149, label %for.body131

for.end149:                                       ; preds = %for.body131
  %add.ptr152 = getelementptr inbounds double* %add.ptr152299, i64 %idx.ext151
  %add.ptr155 = getelementptr inbounds double* %rhs.1298, i64 %idx.ext154
  %inc157 = add nsw i32 %jrhs.1297, 1
  %cmp125 = icmp slt i32 %inc157, %33
  br i1 %cmp125, label %for.body131.lr.ph, label %for.cond124.if.end160.loopexit_crit_edge

for.cond124.if.end160.loopexit_crit_edge:         ; preds = %for.end149
  %uglygep323 = bitcast i8* %uglygep to double*
  store double* %uglygep323, double** %bJ, align 8, !tbaa !3
  br label %if.end160

for.cond97.if.end160.loopexit302_crit_edge:       ; preds = %for.end113
  %uglygep330331 = bitcast i8* %uglygep330 to double*
  store double* %uglygep330331, double** %bJ, align 8, !tbaa !3
  br label %if.end160

if.end160:                                        ; preds = %for.cond97.preheader, %for.cond97.if.end160.loopexit302_crit_edge, %for.cond124.preheader, %for.cond124.if.end160.loopexit_crit_edge, %if.end91
  br i1 %cmp161, label %if.then163, label %if.end168

if.then163:                                       ; preds = %if.end160
  %call164 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([27 x i8]* @.str6, i64 0, i64 0), i32 %17, %struct._SubMtx* %call82) #5
  %call165 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  %call166 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call82, %struct._IO_FILE* %msgFile) #5
  %call167 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end168

if.end168:                                        ; preds = %if.then163, %if.end160
  br i1 %cmp63, label %for.body176.lr.ph, label %for.inc188

for.body176.lr.ph:                                ; preds = %if.end168
  %47 = load i32** %rowindJ, align 8, !tbaa !3
  br label %for.body176

for.body176:                                      ; preds = %for.body176, %for.body176.lr.ph
  %indvars.iv332 = phi i64 [ 0, %for.body176.lr.ph ], [ %indvars.iv.next333, %for.body176 ]
  %arrayidx178 = getelementptr inbounds i32* %47, i64 %indvars.iv332
  %48 = load i32* %arrayidx178, align 4, !tbaa !0
  %idxprom179 = sext i32 %48 to i64
  %arrayidx180 = getelementptr inbounds i32* %rowind.0, i64 %idxprom179
  %49 = load i32* %arrayidx180, align 4, !tbaa !0
  store i32 %49, i32* %arrayidx178, align 4, !tbaa !0
  %indvars.iv.next333 = add i64 %indvars.iv332, 1
  %lftr.wideiv334 = trunc i64 %indvars.iv.next333 to i32
  %exitcond335 = icmp eq i32 %lftr.wideiv334, %call58
  br i1 %exitcond335, label %for.inc188, label %for.body176

for.inc188:                                       ; preds = %for.body176, %lor.lhs.false, %land.lhs.true, %if.end168
  %indvars.iv.next338 = add i64 %indvars.iv337, 1
  %inc189 = add nsw i32 %J.1312, 1
  %50 = trunc i64 %indvars.iv.next338 to i32
  %cmp49 = icmp slt i32 %50, %call17
  br i1 %cmp49, label %for.body51, label %for.end190

for.end190:                                       ; preds = %for.inc188, %for.end47
  %p_agg.0353 = phi %struct._SubMtx** [ null, %for.end47 ], [ %9, %for.inc188 ]
  %cmp192 = icmp eq i32 %localrhs.0, 84
  br i1 %cmp192, label %if.then194, label %if.end195

if.then194:                                       ; preds = %for.end190
  call void @IVfree(i32* %rowmap.0) #5
  br label %if.end195

if.end195:                                        ; preds = %if.then194, %for.end190
  ret %struct._SubMtx** %p_agg.0353
}

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @IVfprintf(%struct._IO_FILE*, i32, i32*) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare i32 @FrontMtx_nfront(%struct._FrontMtx*) #1

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare void @DenseMtx_dimensions(%struct._DenseMtx*, i32*, i32*) #1

; Function Attrs: optsize
declare i32 @FrontMtx_frontSize(%struct._FrontMtx*, i32) #1

; Function Attrs: optsize
declare void @FrontMtx_rowIndices(%struct._FrontMtx*, i32, i32*, i32**) #1

; Function Attrs: optsize
declare i32 @SubMtx_nbytesNeeded(i32, i32, i32, i32, i32) #1

; Function Attrs: optsize
declare %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager*, i32) #1

; Function Attrs: optsize
declare void @SubMtx_init(%struct._SubMtx*, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: optsize
declare double* @DenseMtx_entries(%struct._DenseMtx*) #1

; Function Attrs: optsize
declare void @SubMtx_denseInfo(%struct._SubMtx*, i32*, i32*, i32*, i32*, double**) #1

; Function Attrs: optsize
declare i32 @SubMtx_writeForHumanEye(%struct._SubMtx*, %struct._IO_FILE*) #1

; Function Attrs: optsize
declare void @IVfree(i32*) #1

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_forwardVisit(%struct._FrontMtx* %frontmtx, i32 %J, i32 %nrhs, i32* %owners, i32 %myid, %struct._SubMtxManager* %mtxmanager, %struct._SubMtxList* %aggList, %struct._SubMtx** nocapture %p_mtx, i8* nocapture %frontIsDone, %struct._IP** nocapture %heads, %struct._SubMtx** nocapture %p_agg, i8* nocapture %status, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  %call = tail call i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %J) #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32* %owners, null
  %idxprom4.pre = sext i32 %J to i64
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %arrayidx = getelementptr inbounds i32* %owners, i64 %idxprom4.pre
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp2 = icmp eq i32 %0, %myid
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then, %lor.lhs.false
  %arrayidx5 = getelementptr inbounds i8* %frontIsDone, i64 %idxprom4.pre
  store i8 89, i8* %arrayidx5, align 1, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then3, %lor.lhs.false
  %idxprom6 = sext i32 %J to i64
  %arrayidx7 = getelementptr inbounds i8* %status, i64 %idxprom6
  store i8 70, i8* %arrayidx7, align 1, !tbaa !1
  br label %return

if.end8:                                          ; preds = %entry
  %idxprom9 = sext i32 %J to i64
  %arrayidx10 = getelementptr inbounds %struct._IP** %heads, i64 %idxprom9
  %1 = load %struct._IP** %arrayidx10, align 8, !tbaa !3
  %cmp11 = icmp eq %struct._IP* %1, null
  br i1 %cmp11, label %if.end28, label %if.then12

if.then12:                                        ; preds = %if.end8
  %arrayidx14 = getelementptr inbounds %struct._SubMtx** %p_agg, i64 %idxprom9
  %2 = load %struct._SubMtx** %arrayidx14, align 8, !tbaa !3
  %cmp15 = icmp eq %struct._SubMtx* %2, null
  br i1 %cmp15, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.then12
  %type = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 2
  %3 = load i32* %type, align 4, !tbaa !0
  %call17 = tail call fastcc %struct._SubMtx* @initBJ(i32 %3, i32 %J, i32 %call, i32 %nrhs, %struct._SubMtxManager* %mtxmanager) #7
  store %struct._SubMtx* %call17, %struct._SubMtx** %arrayidx14, align 8, !tbaa !3
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.then12
  %BJ.0 = phi %struct._SubMtx* [ %call17, %if.then16 ], [ %2, %if.then12 ]
  %cmp21 = icmp sgt i32 %msglvl, 3
  br i1 %cmp21, label %if.then22, label %if.end27

if.then22:                                        ; preds = %if.end20
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([11 x i8]* @.str7, i64 0, i64 0), %struct._SubMtx* %BJ.0) #5
  %call24 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  %call25 = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %BJ.0, %struct._IO_FILE* %msgFile) #5
  %call26 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end27

if.end27:                                         ; preds = %if.end20, %if.then22
  %4 = load %struct._IP** %arrayidx10, align 8, !tbaa !3
  store %struct._IP* null, %struct._IP** %arrayidx10, align 8, !tbaa !3
  %cmp135.i = icmp eq %struct._IP* %4, null
  br i1 %cmp135.i, label %if.end28, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end27
  %symmetryflag.i = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.backedge.i, %for.body.lr.ph.i
  %ip.0136.i = phi %struct._IP* [ %4, %for.body.lr.ph.i ], [ %6, %for.cond.backedge.i ]
  %val.i = getelementptr inbounds %struct._IP* %ip.0136.i, i64 0, i32 0
  %5 = load i32* %val.i, align 4, !tbaa !0
  %next.i = getelementptr inbounds %struct._IP* %ip.0136.i, i64 0, i32 1
  %6 = load %struct._IP** %next.i, align 8, !tbaa !3
  %idxprom4.i = sext i32 %5 to i64
  %arrayidx5.i = getelementptr inbounds i8* %frontIsDone, i64 %idxprom4.i
  br i1 %cmp21, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  %7 = load i8* %arrayidx5.i, align 1, !tbaa !1
  %conv.i = sext i8 %7 to i32
  %arrayidx7.i = getelementptr inbounds %struct._SubMtx** %p_mtx, i64 %idxprom4.i
  %8 = load %struct._SubMtx** %arrayidx7.i, align 8, !tbaa !3
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([40 x i8]* @.str45, i64 0, i64 0), i32 %5, i32 %conv.i, i32 %5, %struct._SubMtx* %8) #5
  %call8.i = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i
  %9 = load i8* %arrayidx5.i, align 1, !tbaa !1
  %cmp12.i = icmp eq i8 %9, 89
  br i1 %cmp12.i, label %if.then14.i, label %if.else74.i

if.then14.i:                                      ; preds = %if.end.i
  %arrayidx16.i = getelementptr inbounds %struct._SubMtx** %p_mtx, i64 %idxprom4.i
  %10 = load %struct._SubMtx** %arrayidx16.i, align 8, !tbaa !3
  %cmp17.i = icmp eq %struct._SubMtx* %10, null
  br i1 %cmp17.i, label %for.cond.backedge.i, label %if.then19.i

for.cond.backedge.i:                              ; preds = %if.else74.i, %if.then68.i, %if.end65.i, %if.then14.i
  %cmp.i = icmp eq %struct._IP* %6, null
  br i1 %cmp.i, label %if.end28.loopexit, label %for.body.i

if.then19.i:                                      ; preds = %if.then14.i
  br i1 %cmp21, label %if.then22.i, label %if.end26.i

if.then22.i:                                      ; preds = %if.then19.i
  %call23.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([25 x i8]* @.str46, i64 0, i64 0), %struct._SubMtx* %10) #5
  %call24.i = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %10, %struct._IO_FILE* %msgFile) #5
  %call25.i = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then19.i, %if.then22.i
  %11 = load i32* %symmetryflag.i, align 4, !tbaa !0
  %cmp27.i = icmp eq i32 %11, 2
  br i1 %cmp27.i, label %if.then29.i, label %if.else.i

if.then29.i:                                      ; preds = %if.end26.i
  %call30.i = tail call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %J, i32 %5) #5
  %cmp31.i = icmp eq %struct._SubMtx* %call30.i, null
  br i1 %cmp31.i, label %if.end65.i, label %if.then33.i

if.then33.i:                                      ; preds = %if.then29.i
  br i1 %cmp21, label %if.then36.i, label %if.end40.i

if.then36.i:                                      ; preds = %if.then33.i
  %call37.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([12 x i8]* @.str47, i64 0, i64 0), %struct._SubMtx* %call30.i) #5
  %call38.i = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call30.i, %struct._IO_FILE* %msgFile) #5
  %call39.i = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then36.i, %if.then33.i
  tail call void @SubMtx_solveupd(%struct._SubMtx* %BJ.0, %struct._SubMtx* %call30.i, %struct._SubMtx* %10) #5
  br label %if.end65.i

if.else.i:                                        ; preds = %if.end26.i
  %call42.i = tail call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %5, i32 %J) #5
  %cmp43.i = icmp eq %struct._SubMtx* %call42.i, null
  br i1 %cmp43.i, label %if.end65.i, label %if.then45.i

if.then45.i:                                      ; preds = %if.else.i
  br i1 %cmp21, label %if.then48.i, label %if.end52.i

if.then48.i:                                      ; preds = %if.then45.i
  %call49.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([12 x i8]* @.str48, i64 0, i64 0), %struct._SubMtx* %call42.i) #5
  %call50.i = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call42.i, %struct._IO_FILE* %msgFile) #5
  %call51.i = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then48.i, %if.then45.i
  %12 = load i32* %symmetryflag.i, align 4, !tbaa !0
  switch i32 %12, label %if.end65.i [
    i32 0, label %if.then56.i
    i32 1, label %if.then61.i
  ]

if.then56.i:                                      ; preds = %if.end52.i
  tail call void @SubMtx_solveupdT(%struct._SubMtx* %BJ.0, %struct._SubMtx* %call42.i, %struct._SubMtx* %10) #5
  br label %if.end65.i

if.then61.i:                                      ; preds = %if.end52.i
  tail call void @SubMtx_solveupdH(%struct._SubMtx* %BJ.0, %struct._SubMtx* %call42.i, %struct._SubMtx* %10) #5
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then61.i, %if.then56.i, %if.end52.i, %if.else.i, %if.end40.i, %if.then29.i
  br i1 %cmp21, label %if.then68.i, label %for.cond.backedge.i

if.then68.i:                                      ; preds = %if.end65.i
  %call69.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([25 x i8]* @.str49, i64 0, i64 0), %struct._SubMtx* %BJ.0) #5
  %call70.i = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %BJ.0, %struct._IO_FILE* %msgFile) #5
  %call71.i = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %for.cond.backedge.i

if.else74.i:                                      ; preds = %if.end.i
  %13 = load %struct._IP** %arrayidx10, align 8, !tbaa !3
  store %struct._IP* %13, %struct._IP** %next.i, align 8, !tbaa !3
  store %struct._IP* %ip.0136.i, %struct._IP** %arrayidx10, align 8, !tbaa !3
  br label %for.cond.backedge.i

if.end28.loopexit:                                ; preds = %for.cond.backedge.i
  %.pre = load %struct._IP** %arrayidx10, align 8, !tbaa !3
  %phitmp = icmp eq %struct._IP* %.pre, null
  br label %if.end28

if.end28:                                         ; preds = %if.end28.loopexit, %if.end27, %if.end8
  %14 = phi i1 [ %phitmp, %if.end28.loopexit ], [ true, %if.end27 ], [ true, %if.end8 ]
  %. = select i1 %14, i32 89, i32 78
  %cmp34 = icmp eq %struct._SubMtxList* %aggList, null
  br i1 %cmp34, label %if.end55, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end28
  %arrayidx36 = getelementptr inbounds i32* %owners, i64 %idxprom9
  %15 = load i32* %arrayidx36, align 4, !tbaa !0
  %cmp37 = icmp eq i32 %15, %myid
  br i1 %cmp37, label %if.then38, label %if.end55

if.then38:                                        ; preds = %land.lhs.true
  %arrayidx40 = getelementptr inbounds %struct._SubMtx** %p_agg, i64 %idxprom9
  %16 = load %struct._SubMtx** %arrayidx40, align 8, !tbaa !3
  %cmp41 = icmp eq %struct._SubMtx* %16, null
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.then38
  %17 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call43 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([48 x i8]* @.str8, i64 0, i64 0), i32 %J) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end44:                                         ; preds = %if.then38
  tail call fastcc void @assembleAggregates(i32 %J, %struct._SubMtx* %16, %struct._SubMtxList* %aggList, %struct._SubMtxManager* %mtxmanager, i32 %msglvl, %struct._IO_FILE* %msgFile) #7
  %call45 = tail call i32 @SubMtxList_isCountZero(%struct._SubMtxList* %aggList, i32 %J) #5
  %cmp46 = icmp eq i32 %call45, 1
  br i1 %cmp46, label %if.then47, label %if.end55

if.then47:                                        ; preds = %if.end44
  %cmp48 = icmp sgt i32 %msglvl, 3
  br i1 %cmp48, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.then47
  %18 = tail call i64 @fwrite(i8* getelementptr inbounds ([27 x i8]* @.str9, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %msgFile)
  %call51 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.then47
  tail call fastcc void @assembleAggregates(i32 %J, %struct._SubMtx* %16, %struct._SubMtxList* %aggList, %struct._SubMtxManager* %mtxmanager, i32 %msglvl, %struct._IO_FILE* %msgFile) #7
  br label %if.end55

if.end55:                                         ; preds = %land.lhs.true, %if.end28, %if.end44, %if.end52
  %aggDone.0 = phi i32 [ 89, %if.end52 ], [ 78, %if.end44 ], [ 89, %if.end28 ], [ 89, %land.lhs.true ]
  %cmp56 = icmp sgt i32 %msglvl, 3
  br i1 %cmp56, label %if.then57, label %if.end61

if.then57:                                        ; preds = %if.end55
  %call59 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([30 x i8]* @.str10, i64 0, i64 0), i32 %., i32 %aggDone.0) #5
  %call60 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %if.end55
  %cmp67 = icmp eq i32 %aggDone.0, 89
  %or.cond = and i1 %14, %cmp67
  br i1 %or.cond, label %if.then69, label %return

if.then69:                                        ; preds = %if.end61
  %arrayidx71 = getelementptr inbounds %struct._SubMtx** %p_agg, i64 %idxprom9
  %19 = load %struct._SubMtx** %arrayidx71, align 8, !tbaa !3
  %cmp72 = icmp eq i32* %owners, null
  br i1 %cmp72, label %if.then79, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %if.then69
  %arrayidx76 = getelementptr inbounds i32* %owners, i64 %idxprom9
  %20 = load i32* %arrayidx76, align 4, !tbaa !0
  %cmp77 = icmp eq i32 %20, %myid
  br i1 %cmp77, label %if.then79, label %if.else119

if.then79:                                        ; preds = %lor.lhs.false74, %if.then69
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  %21 = load i32* %symmetryflag, align 4, !tbaa !0
  %cmp80 = icmp eq i32 %21, 2
  br i1 %cmp80, label %if.then82, label %if.else88

if.then82:                                        ; preds = %if.then79
  %call83 = tail call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %J, i32 %J) #5
  %cmp84 = icmp eq %struct._SubMtx* %call83, null
  br i1 %cmp84, label %if.end105, label %if.then86

if.then86:                                        ; preds = %if.then82
  tail call void @SubMtx_solve(%struct._SubMtx* %call83, %struct._SubMtx* %19) #5
  br label %if.end105

if.else88:                                        ; preds = %if.then79
  %call89 = tail call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J, i32 %J) #5
  %cmp90 = icmp eq %struct._SubMtx* %call89, null
  br i1 %cmp90, label %if.end105, label %if.then92

if.then92:                                        ; preds = %if.else88
  %22 = load i32* %symmetryflag, align 4, !tbaa !0
  switch i32 %22, label %if.end105 [
    i32 0, label %if.then96
    i32 1, label %if.then101
  ]

if.then96:                                        ; preds = %if.then92
  tail call void @SubMtx_solveT(%struct._SubMtx* %call89, %struct._SubMtx* %19) #5
  br label %if.end105

if.then101:                                       ; preds = %if.then92
  tail call void @SubMtx_solveH(%struct._SubMtx* %call89, %struct._SubMtx* %19) #5
  br label %if.end105

if.end105:                                        ; preds = %if.then92, %if.then82, %if.else88, %if.then101, %if.then96, %if.then86
  %cmp106 = icmp sgt i32 %msglvl, 1
  br i1 %cmp106, label %if.then108, label %if.end112

if.then108:                                       ; preds = %if.end105
  %23 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str11, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %msgFile)
  %call110 = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %19, %struct._IO_FILE* %msgFile) #5
  %call111 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end112

if.end112:                                        ; preds = %if.then108, %if.end105
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx71, align 8, !tbaa !3
  %arrayidx116 = getelementptr inbounds %struct._SubMtx** %p_mtx, i64 %idxprom9
  store %struct._SubMtx* %19, %struct._SubMtx** %arrayidx116, align 8, !tbaa !3
  %arrayidx118 = getelementptr inbounds i8* %frontIsDone, i64 %idxprom9
  store i8 89, i8* %arrayidx118, align 1, !tbaa !1
  br label %if.end132

if.else119:                                       ; preds = %lor.lhs.false74
  %cmp120 = icmp eq %struct._SubMtx* %19, null
  br i1 %cmp120, label %if.end132, label %if.then122

if.then122:                                       ; preds = %if.else119
  br i1 %cmp56, label %if.then125, label %if.end128

if.then125:                                       ; preds = %if.then122
  %24 = tail call i64 @fwrite(i8* getelementptr inbounds ([34 x i8]* @.str12, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %msgFile)
  %call127 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end128

if.end128:                                        ; preds = %if.then125, %if.then122
  tail call void @SubMtxList_addObjectToList(%struct._SubMtxList* %aggList, %struct._SubMtx* %19, i32 %J) #5
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx71, align 8, !tbaa !3
  br label %if.end132

if.end132:                                        ; preds = %if.else119, %if.end128, %if.end112
  %arrayidx134 = getelementptr inbounds i8* %status, i64 %idxprom9
  store i8 70, i8* %arrayidx134, align 1, !tbaa !1
  br label %return

return:                                           ; preds = %if.end61, %if.end132, %if.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct._SubMtx* @initBJ(i32 %type, i32 %J, i32 %nJ, i32 %nrhs, %struct._SubMtxManager* %mtxmanager) #0 {
entry:
  %nJ.addr = alloca i32, align 4
  %nrhs.addr = alloca i32, align 4
  %entries = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  store i32 %nJ, i32* %nJ.addr, align 4, !tbaa !0
  store i32 %nrhs, i32* %nrhs.addr, align 4, !tbaa !0
  %mul = mul nsw i32 %nrhs, %nJ
  %call = call i32 @SubMtx_nbytesNeeded(i32 %type, i32 1, i32 %nJ, i32 %nrhs, i32 %mul) #5
  %call1 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %mtxmanager, i32 %call) #5
  %cmp = icmp eq %struct._SubMtx* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str50, i64 0, i64 0), i32 %J) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i32* %nJ.addr, align 4, !tbaa !0
  %2 = load i32* %nrhs.addr, align 4, !tbaa !0
  %mul3 = mul nsw i32 %2, %1
  call void @SubMtx_init(%struct._SubMtx* %call1, i32 %type, i32 1, i32 %J, i32 0, i32 %1, i32 %2, i32 %mul3) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %call1, i32* %nJ.addr, i32* %nrhs.addr, i32* %inc1, i32* %inc2, double** %entries) #5
  switch i32 %type, label %if.end12 [
    i32 1, label %if.then5
    i32 2, label %if.then8
  ]

if.then5:                                         ; preds = %if.end
  %3 = load i32* %nJ.addr, align 4, !tbaa !0
  %4 = load i32* %nrhs.addr, align 4, !tbaa !0
  %mul6 = mul nsw i32 %4, %3
  %5 = load double** %entries, align 8, !tbaa !3
  call void @DVzero(i32 %mul6, double* %5) #5
  br label %if.end12

if.then8:                                         ; preds = %if.end
  %6 = load i32* %nJ.addr, align 4, !tbaa !0
  %mul9 = shl i32 %6, 1
  %7 = load i32* %nrhs.addr, align 4, !tbaa !0
  %mul10 = mul nsw i32 %mul9, %7
  %8 = load double** %entries, align 8, !tbaa !3
  call void @DVzero(i32 %mul10, double* %8) #5
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then8, %if.then5
  ret %struct._SubMtx* %call1
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @assembleAggregates(i32 %J, %struct._SubMtx* %BJ, %struct._SubMtxList* %aggList, %struct._SubMtxManager* %mtxmanager, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  %entBJ = alloca double*, align 8
  %entBJhat = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc1hat = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %inc2hat = alloca i32, align 4
  %ncol = alloca i32, align 4
  %ncolhat = alloca i32, align 4
  %nrow = alloca i32, align 4
  %nrowhat = alloca i32, align 4
  %cmp = icmp eq %struct._SubMtx* %BJ, null
  %cmp1 = icmp eq %struct._SubMtxList* %aggList, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str36, i64 0, i64 0), %struct._SubMtx* %BJ, %struct._SubMtxList* %aggList) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %rowid = getelementptr inbounds %struct._SubMtx* %BJ, i64 0, i32 2
  %1 = load i32* %rowid, align 4, !tbaa !0
  %call2 = call i32 @SubMtxList_isListNonempty(%struct._SubMtxList* %aggList, i32 %1) #5
  %tobool = icmp eq i32 %call2, 0
  br i1 %tobool, label %if.end63, label %if.then3

if.then3:                                         ; preds = %if.end
  %cmp4 = icmp sgt i32 %msglvl, 3
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.then3
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str37, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %msgFile)
  %call7 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.then3
  call void @SubMtx_denseInfo(%struct._SubMtx* %BJ, i32* %nrow, i32* %ncol, i32* %inc1, i32* %inc2, double** %entBJ) #5
  %cmp9 = icmp sgt i32 %msglvl, 2
  br i1 %cmp9, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end8
  %3 = load i32* %rowid, align 4, !tbaa !0
  %colid = getelementptr inbounds %struct._SubMtx* %BJ, i64 0, i32 3
  %4 = load i32* %colid, align 4, !tbaa !0
  %5 = load i32* %nrow, align 4, !tbaa !0
  %6 = load i32* %ncol, align 4, !tbaa !0
  %7 = load i32* %inc1, align 4, !tbaa !0
  %8 = load i32* %inc2, align 4, !tbaa !0
  %9 = load double** %entBJ, align 8, !tbaa !3
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([58 x i8]* @.str38, i64 0, i64 0), i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, double* %9) #5
  %call13 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end8
  %call15 = call %struct._SubMtx* @SubMtxList_getList(%struct._SubMtxList* %aggList, i32 %J) #5
  %cmp16101 = icmp eq %struct._SubMtx* %call15, null
  br i1 %cmp16101, label %for.end, label %if.end20

if.end20:                                         ; preds = %if.end14, %for.inc
  %BJhat.0102 = phi %struct._SubMtx* [ %39, %for.inc ], [ %call15, %if.end14 ]
  call void @SubMtx_denseInfo(%struct._SubMtx* %BJhat.0102, i32* %nrowhat, i32* %ncolhat, i32* %inc1hat, i32* %inc2hat, double** %entBJhat) #5
  br i1 %cmp9, label %if.then22, label %if.end27

if.then22:                                        ; preds = %if.end20
  %rowid23 = getelementptr inbounds %struct._SubMtx* %BJhat.0102, i64 0, i32 2
  %10 = load i32* %rowid23, align 4, !tbaa !0
  %colid24 = getelementptr inbounds %struct._SubMtx* %BJhat.0102, i64 0, i32 3
  %11 = load i32* %colid24, align 4, !tbaa !0
  %12 = load i32* %nrowhat, align 4, !tbaa !0
  %13 = load i32* %ncolhat, align 4, !tbaa !0
  %14 = load i32* %inc1hat, align 4, !tbaa !0
  %15 = load i32* %inc2hat, align 4, !tbaa !0
  %16 = load double** %entBJhat, align 8, !tbaa !3
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([60 x i8]* @.str40, i64 0, i64 0), i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, double* %16) #5
  %call26 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end20
  %17 = load i32* %nrow, align 4, !tbaa !0
  %18 = load i32* %nrowhat, align 4, !tbaa !0
  %cmp28 = icmp eq i32 %17, %18
  br i1 %cmp28, label %lor.lhs.false29, label %if.then37

lor.lhs.false29:                                  ; preds = %if.end27
  %19 = load i32* %ncol, align 4, !tbaa !0
  %20 = load i32* %ncolhat, align 4, !tbaa !0
  %cmp30 = icmp eq i32 %19, %20
  br i1 %cmp30, label %lor.lhs.false31, label %if.then37

lor.lhs.false31:                                  ; preds = %lor.lhs.false29
  %21 = load i32* %inc1, align 4, !tbaa !0
  %22 = load i32* %inc1hat, align 4, !tbaa !0
  %cmp32 = icmp eq i32 %21, %22
  br i1 %cmp32, label %lor.lhs.false33, label %if.then37

lor.lhs.false33:                                  ; preds = %lor.lhs.false31
  %23 = load i32* %inc2, align 4, !tbaa !0
  %24 = load i32* %inc2hat, align 4, !tbaa !0
  %cmp34 = icmp eq i32 %23, %24
  br i1 %cmp34, label %lor.lhs.false35, label %if.then37

lor.lhs.false35:                                  ; preds = %lor.lhs.false33
  %25 = load double** %entBJhat, align 8, !tbaa !3
  %cmp36 = icmp eq double* %25, null
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %lor.lhs.false33, %lor.lhs.false31, %lor.lhs.false29, %if.end27, %lor.lhs.false35
  %26 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str41, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %26)
  call void @exit(i32 -1) #6
  unreachable

if.end39:                                         ; preds = %lor.lhs.false35
  br i1 %cmp4, label %if.then41, label %if.end47

if.then41:                                        ; preds = %if.end39
  %28 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8]* @.str42, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %msgFile)
  %call43 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %BJ, %struct._IO_FILE* %msgFile) #5
  %29 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str43, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %msgFile)
  %call45 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %BJhat.0102, %struct._IO_FILE* %msgFile) #5
  %call46 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end47

if.end47:                                         ; preds = %if.then41, %if.end39
  %type = getelementptr inbounds %struct._SubMtx* %BJhat.0102, i64 0, i32 0
  %30 = load i32* %type, align 4, !tbaa !0
  switch i32 %30, label %for.inc [
    i32 1, label %if.then49
    i32 2, label %if.then52
  ]

if.then49:                                        ; preds = %if.end47
  %31 = load i32* %nrow, align 4, !tbaa !0
  %32 = load i32* %ncol, align 4, !tbaa !0
  %mul = mul nsw i32 %32, %31
  %33 = load double** %entBJ, align 8, !tbaa !3
  %34 = load double** %entBJhat, align 8, !tbaa !3
  call void @DVadd(i32 %mul, double* %33, double* %34) #5
  br label %for.inc

if.then52:                                        ; preds = %if.end47
  %35 = load i32* %nrow, align 4, !tbaa !0
  %mul53 = shl i32 %35, 1
  %36 = load i32* %ncol, align 4, !tbaa !0
  %mul54 = mul nsw i32 %mul53, %36
  %37 = load double** %entBJ, align 8, !tbaa !3
  %38 = load double** %entBJhat, align 8, !tbaa !3
  call void @DVadd(i32 %mul54, double* %37, double* %38) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end47, %if.then49, %if.then52
  %next = getelementptr inbounds %struct._SubMtx* %BJhat.0102, i64 0, i32 9
  %39 = load %struct._SubMtx** %next, align 8, !tbaa !3
  %cmp16 = icmp eq %struct._SubMtx* %39, null
  br i1 %cmp16, label %for.end, label %if.end20

for.end:                                          ; preds = %for.inc, %if.end14
  call void @SubMtxManager_releaseListOfObjects(%struct._SubMtxManager* %mtxmanager, %struct._SubMtx* %call15) #5
  br i1 %cmp4, label %if.then58, label %if.end63

if.then58:                                        ; preds = %for.end
  %40 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str44, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %msgFile)
  %call60 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %BJ, %struct._IO_FILE* %msgFile) #5
  %call61 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end63

if.end63:                                         ; preds = %if.end, %for.end, %if.then58
  ret void
}

; Function Attrs: optsize
declare i32 @SubMtxList_isCountZero(%struct._SubMtxList*, i32) #1

; Function Attrs: optsize
declare %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx*, i32, i32) #1

; Function Attrs: optsize
declare void @SubMtx_solve(%struct._SubMtx*, %struct._SubMtx*) #1

; Function Attrs: optsize
declare %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx*, i32, i32) #1

; Function Attrs: optsize
declare void @SubMtx_solveT(%struct._SubMtx*, %struct._SubMtx*) #1

; Function Attrs: optsize
declare void @SubMtx_solveH(%struct._SubMtx*, %struct._SubMtx*) #1

; Function Attrs: optsize
declare void @SubMtxList_addObjectToList(%struct._SubMtxList*, %struct._SubMtx*, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_diagonalVisit(%struct._FrontMtx* %frontmtx, i32 %J, i32* %owners, i32 %myid, %struct._SubMtx** nocapture %p_mtx, i8* nocapture %frontIsDone, %struct._SubMtx** nocapture %p_agg, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  %cmp = icmp eq i32* %owners, null
  %idxprom2.pre = sext i32 %J to i64
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds i32* %owners, i64 %idxprom2.pre
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp1 = icmp eq i32 %0, %myid
  br i1 %cmp1, label %if.then, label %if.end30

if.then:                                          ; preds = %entry, %lor.lhs.false
  %arrayidx3 = getelementptr inbounds %struct._SubMtx** %p_mtx, i64 %idxprom2.pre
  %1 = load %struct._SubMtx** %arrayidx3, align 8, !tbaa !3
  %cmp4 = icmp eq %struct._SubMtx* %1, null
  br i1 %cmp4, label %if.end27, label %if.then5

if.then5:                                         ; preds = %if.then
  %cmp6 = icmp sgt i32 %msglvl, 3
  br i1 %cmp6, label %if.end16.thread, label %if.end16

if.end16.thread:                                  ; preds = %if.then5
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([11 x i8]* @.str7, i64 0, i64 0), %struct._SubMtx* %1) #5
  %call8 = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %1, %struct._IO_FILE* %msgFile) #5
  %call9 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  %call1055 = tail call %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx* %frontmtx, i32 %J) #5
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([12 x i8]* @.str13, i64 0, i64 0), %struct._SubMtx* %call1055) #5
  %call14 = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call1055, %struct._IO_FILE* %msgFile) #5
  %call15 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  tail call void @SubMtx_solve(%struct._SubMtx* %call1055, %struct._SubMtx* %1) #5
  br label %if.then18

if.end16:                                         ; preds = %if.then5
  %call10 = tail call %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx* %frontmtx, i32 %J) #5
  tail call void @SubMtx_solve(%struct._SubMtx* %call10, %struct._SubMtx* %1) #5
  %cmp17 = icmp sgt i32 %msglvl, 1
  br i1 %cmp17, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end16.thread, %if.end16
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([33 x i8]* @.str14, i64 0, i64 0), i32 %J) #5
  %call20 = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %1, %struct._IO_FILE* %msgFile) #5
  %call21 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end16
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx3, align 8, !tbaa !3
  %arrayidx26 = getelementptr inbounds %struct._SubMtx** %p_agg, i64 %idxprom2.pre
  store %struct._SubMtx* %1, %struct._SubMtx** %arrayidx26, align 8, !tbaa !3
  br label %if.end27

if.end27:                                         ; preds = %if.then, %if.end22
  %arrayidx29 = getelementptr inbounds i8* %frontIsDone, i64 %idxprom2.pre
  store i8 89, i8* %arrayidx29, align 1, !tbaa !1
  br label %if.end30

if.end30:                                         ; preds = %if.end27, %lor.lhs.false
  ret void
}

; Function Attrs: optsize
declare %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx*, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_backwardVisit(%struct._FrontMtx* %frontmtx, i32 %J, i32 %nrhs, i32* %owners, i32 %myid, %struct._SubMtxManager* %mtxmanager, %struct._SubMtxList* %aggList, %struct._SubMtx** nocapture %p_mtx, i8* nocapture %frontIsDone, %struct._IP** nocapture %heads, %struct._SubMtx** nocapture %p_agg, i8* nocapture %status, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  %cmp = icmp sgt i32 %msglvl, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %J) #5
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([45 x i8]* @.str15, i64 0, i64 0), i32 %J, i32 %call) #5
  %call2 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call3 = tail call i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %J) #5
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end14

if.then5:                                         ; preds = %if.end
  %cmp6 = icmp eq i32* %owners, null
  %idxprom9.pre = sext i32 %J to i64
  br i1 %cmp6, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then5
  %arrayidx = getelementptr inbounds i32* %owners, i64 %idxprom9.pre
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp7 = icmp eq i32 %0, %myid
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.then5, %lor.lhs.false
  %arrayidx10 = getelementptr inbounds i8* %frontIsDone, i64 %idxprom9.pre
  store i8 89, i8* %arrayidx10, align 1, !tbaa !1
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %lor.lhs.false
  %idxprom12 = sext i32 %J to i64
  %arrayidx13 = getelementptr inbounds i8* %status, i64 %idxprom12
  store i8 70, i8* %arrayidx13, align 1, !tbaa !1
  br label %return

if.end14:                                         ; preds = %if.end
  %idxprom17 = sext i32 %J to i64
  %arrayidx18 = getelementptr inbounds %struct._IP** %heads, i64 %idxprom17
  br i1 %cmp, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.end14
  %1 = load %struct._IP** %arrayidx18, align 8, !tbaa !3
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([17 x i8]* @.str16, i64 0, i64 0), i32 %J, %struct._IP* %1) #5
  %call20 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end21

if.end21:                                         ; preds = %if.end14, %if.then16
  %2 = load %struct._IP** %arrayidx18, align 8, !tbaa !3
  %cmp24 = icmp eq %struct._IP* %2, null
  br i1 %cmp24, label %if.end40, label %if.then25

if.then25:                                        ; preds = %if.end21
  %arrayidx27 = getelementptr inbounds %struct._SubMtx** %p_agg, i64 %idxprom17
  %3 = load %struct._SubMtx** %arrayidx27, align 8, !tbaa !3
  %cmp28 = icmp eq %struct._SubMtx* %3, null
  br i1 %cmp28, label %if.then29, label %if.end33

if.then29:                                        ; preds = %if.then25
  %type = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 2
  %4 = load i32* %type, align 4, !tbaa !0
  %call30 = tail call fastcc %struct._SubMtx* @initBJ(i32 %4, i32 %J, i32 %call3, i32 %nrhs, %struct._SubMtxManager* %mtxmanager) #7
  store %struct._SubMtx* %call30, %struct._SubMtx** %arrayidx27, align 8, !tbaa !3
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.then25
  %ZJ.0 = phi %struct._SubMtx* [ %call30, %if.then29 ], [ %3, %if.then25 ]
  %cmp34 = icmp sgt i32 %msglvl, 3
  br i1 %cmp34, label %if.then35, label %if.end39

if.then35:                                        ; preds = %if.end33
  %call36 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([11 x i8]* @.str17, i64 0, i64 0), %struct._SubMtx* %ZJ.0) #5
  %call37 = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %ZJ.0, %struct._IO_FILE* %msgFile) #5
  %call38 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end39

if.end39:                                         ; preds = %if.end33, %if.then35
  %5 = load %struct._IP** %arrayidx18, align 8, !tbaa !3
  store %struct._IP* null, %struct._IP** %arrayidx18, align 8, !tbaa !3
  %cmp86.i = icmp eq %struct._IP* %5, null
  br i1 %cmp86.i, label %if.end40, label %for.body.i

for.body.i:                                       ; preds = %if.end39, %for.cond.backedge.i
  %ip.087.i = phi %struct._IP* [ %7, %for.cond.backedge.i ], [ %5, %if.end39 ]
  %val.i = getelementptr inbounds %struct._IP* %ip.087.i, i64 0, i32 0
  %6 = load i32* %val.i, align 4, !tbaa !0
  %next.i = getelementptr inbounds %struct._IP* %ip.087.i, i64 0, i32 1
  %7 = load %struct._IP** %next.i, align 8, !tbaa !3
  %idxprom4.i = sext i32 %6 to i64
  %arrayidx5.i = getelementptr inbounds i8* %frontIsDone, i64 %idxprom4.i
  br i1 %cmp34, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  %8 = load i8* %arrayidx5.i, align 1, !tbaa !1
  %conv.i = sext i8 %8 to i32
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([24 x i8]* @.str32, i64 0, i64 0), i32 %6, i32 %conv.i) #5
  %call6.i = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i
  %9 = load i8* %arrayidx5.i, align 1, !tbaa !1
  %cmp10.i = icmp eq i8 %9, 89
  br i1 %cmp10.i, label %if.then12.i, label %if.else.i

if.then12.i:                                      ; preds = %if.end.i
  %arrayidx14.i = getelementptr inbounds %struct._SubMtx** %p_mtx, i64 %idxprom4.i
  %10 = load %struct._SubMtx** %arrayidx14.i, align 8, !tbaa !3
  %cmp15.i = icmp eq %struct._SubMtx* %10, null
  br i1 %cmp15.i, label %for.cond.backedge.i, label %if.then17.i

for.cond.backedge.i:                              ; preds = %if.else.i, %if.then39.i, %if.end36.i, %if.then12.i
  %cmp.i = icmp eq %struct._IP* %7, null
  br i1 %cmp.i, label %if.end40.loopexit, label %for.body.i

if.then17.i:                                      ; preds = %if.then12.i
  br i1 %cmp34, label %if.then20.i, label %if.end24.i

if.then20.i:                                      ; preds = %if.then17.i
  %call21.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([25 x i8]* @.str33, i64 0, i64 0), %struct._SubMtx* %10) #5
  %call22.i = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %10, %struct._IO_FILE* %msgFile) #5
  %call23.i = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then20.i, %if.then17.i
  %call25.i = tail call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J, i32 %6) #5
  %cmp26.i = icmp eq %struct._SubMtx* %call25.i, null
  br i1 %cmp26.i, label %if.end36.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.end24.i
  br i1 %cmp34, label %if.then31.i, label %if.end35.i

if.then31.i:                                      ; preds = %if.then28.i
  %call32.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([12 x i8]* @.str34, i64 0, i64 0), %struct._SubMtx* %call25.i) #5
  %call33.i = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call25.i, %struct._IO_FILE* %msgFile) #5
  %call34.i = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then31.i, %if.then28.i
  tail call void @SubMtx_solveupd(%struct._SubMtx* %ZJ.0, %struct._SubMtx* %call25.i, %struct._SubMtx* %10) #5
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.end35.i, %if.end24.i
  br i1 %cmp34, label %if.then39.i, label %for.cond.backedge.i

if.then39.i:                                      ; preds = %if.end36.i
  %call40.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([25 x i8]* @.str35, i64 0, i64 0), %struct._SubMtx* %ZJ.0) #5
  %call41.i = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %ZJ.0, %struct._IO_FILE* %msgFile) #5
  %call42.i = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %for.cond.backedge.i

if.else.i:                                        ; preds = %if.end.i
  %11 = load %struct._IP** %arrayidx18, align 8, !tbaa !3
  store %struct._IP* %11, %struct._IP** %next.i, align 8, !tbaa !3
  store %struct._IP* %ip.087.i, %struct._IP** %arrayidx18, align 8, !tbaa !3
  br label %for.cond.backedge.i

if.end40.loopexit:                                ; preds = %for.cond.backedge.i
  %.pre = load %struct._IP** %arrayidx18, align 8, !tbaa !3
  %phitmp = icmp eq %struct._IP* %.pre, null
  br label %if.end40

if.end40:                                         ; preds = %if.end40.loopexit, %if.end39, %if.end21
  %12 = phi i1 [ %phitmp, %if.end40.loopexit ], [ true, %if.end39 ], [ true, %if.end21 ]
  br i1 %cmp, label %if.then47, label %if.end50

if.then47:                                        ; preds = %if.end40
  %. = select i1 %12, i32 89, i32 78
  %call48 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0), i32 %.) #5
  %call49 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end40
  %cmp51 = icmp eq %struct._SubMtxList* %aggList, null
  br i1 %cmp51, label %if.end77, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end50
  %arrayidx54 = getelementptr inbounds i32* %owners, i64 %idxprom17
  %13 = load i32* %arrayidx54, align 4, !tbaa !0
  %cmp55 = icmp eq i32 %13, %myid
  br i1 %cmp55, label %if.then57, label %if.end77

if.then57:                                        ; preds = %land.lhs.true
  %arrayidx59 = getelementptr inbounds %struct._SubMtx** %p_agg, i64 %idxprom17
  %14 = load %struct._SubMtx** %arrayidx59, align 8, !tbaa !3
  %cmp60 = icmp eq %struct._SubMtx* %14, null
  br i1 %cmp60, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.then57
  %15 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call63 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([49 x i8]* @.str19, i64 0, i64 0), i32 %J) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end64:                                         ; preds = %if.then57
  tail call fastcc void @assembleAggregates(i32 %J, %struct._SubMtx* %14, %struct._SubMtxList* %aggList, %struct._SubMtxManager* %mtxmanager, i32 %msglvl, %struct._IO_FILE* %msgFile) #7
  %call65 = tail call i32 @SubMtxList_isCountZero(%struct._SubMtxList* %aggList, i32 %J) #5
  %cmp66 = icmp eq i32 %call65, 1
  br i1 %cmp66, label %if.then68, label %if.end77

if.then68:                                        ; preds = %if.end64
  %cmp69 = icmp sgt i32 %msglvl, 3
  br i1 %cmp69, label %if.then71, label %if.end74

if.then71:                                        ; preds = %if.then68
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([27 x i8]* @.str9, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %msgFile)
  %call73 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %if.then68
  tail call fastcc void @assembleAggregates(i32 %J, %struct._SubMtx* %14, %struct._SubMtxList* %aggList, %struct._SubMtxManager* %mtxmanager, i32 %msglvl, %struct._IO_FILE* %msgFile) #7
  br label %if.end77

if.end77:                                         ; preds = %land.lhs.true, %if.end50, %if.end64, %if.end74
  %aggDone.0 = phi i32 [ 89, %if.end74 ], [ 78, %if.end64 ], [ 89, %if.end50 ], [ 89, %land.lhs.true ]
  br i1 %cmp, label %if.then80, label %if.end84

if.then80:                                        ; preds = %if.end77
  %call82 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([15 x i8]* @.str20, i64 0, i64 0), i32 %aggDone.0) #5
  %call83 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end84

if.end84:                                         ; preds = %if.then80, %if.end77
  %cmp90 = icmp eq i32 %aggDone.0, 89
  %or.cond = and i1 %12, %cmp90
  br i1 %or.cond, label %if.then92, label %if.end131

if.then92:                                        ; preds = %if.end84
  %arrayidx94 = getelementptr inbounds %struct._SubMtx** %p_agg, i64 %idxprom17
  %17 = load %struct._SubMtx** %arrayidx94, align 8, !tbaa !3
  %cmp95 = icmp eq i32* %owners, null
  br i1 %cmp95, label %if.then102, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %if.then92
  %arrayidx99 = getelementptr inbounds i32* %owners, i64 %idxprom17
  %18 = load i32* %arrayidx99, align 4, !tbaa !0
  %cmp100 = icmp eq i32 %18, %myid
  br i1 %cmp100, label %if.then102, label %if.else121

if.then102:                                       ; preds = %lor.lhs.false97, %if.then92
  %call103 = tail call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J, i32 %J) #5
  %cmp104 = icmp eq %struct._SubMtx* %call103, null
  br i1 %cmp104, label %if.end107, label %if.then106

if.then106:                                       ; preds = %if.then102
  tail call void @SubMtx_solve(%struct._SubMtx* %call103, %struct._SubMtx* %17) #5
  br label %if.end107

if.end107:                                        ; preds = %if.then102, %if.then106
  br i1 %cmp, label %if.then110, label %if.end114

if.then110:                                       ; preds = %if.end107
  %19 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str21, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %msgFile)
  %call112 = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %17, %struct._IO_FILE* %msgFile) #5
  %call113 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end114

if.end114:                                        ; preds = %if.then110, %if.end107
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx94, align 8, !tbaa !3
  %arrayidx118 = getelementptr inbounds %struct._SubMtx** %p_mtx, i64 %idxprom17
  store %struct._SubMtx* %17, %struct._SubMtx** %arrayidx118, align 8, !tbaa !3
  %arrayidx120 = getelementptr inbounds i8* %frontIsDone, i64 %idxprom17
  store i8 89, i8* %arrayidx120, align 1, !tbaa !1
  br label %if.end128

if.else121:                                       ; preds = %lor.lhs.false97
  %cmp122 = icmp eq %struct._SubMtx* %17, null
  br i1 %cmp122, label %if.end128, label %if.then124

if.then124:                                       ; preds = %if.else121
  tail call void @SubMtxList_addObjectToList(%struct._SubMtxList* %aggList, %struct._SubMtx* %17, i32 %J) #5
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx94, align 8, !tbaa !3
  br label %if.end128

if.end128:                                        ; preds = %if.else121, %if.then124, %if.end114
  %arrayidx130 = getelementptr inbounds i8* %status, i64 %idxprom17
  store i8 70, i8* %arrayidx130, align 1, !tbaa !1
  br label %if.end131

if.end131:                                        ; preds = %if.end128, %if.end84
  br i1 %cmp, label %if.then134, label %return

if.then134:                                       ; preds = %if.end131
  %arrayidx136 = getelementptr inbounds i8* %status, i64 %idxprom17
  %20 = load i8* %arrayidx136, align 1, !tbaa !1
  %conv137 = sext i8 %20 to i32
  %call138 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([18 x i8]* @.str22, i64 0, i64 0), i32 %J, i32 %conv137) #5
  %call139 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %return

return:                                           ; preds = %if.end131, %if.then134, %if.end11
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_storeSolution(%struct._FrontMtx* %frontmtx, i32* %owners, i32 %myid, %struct._SubMtxManager* %manager, %struct._SubMtx** nocapture %p_mtx, %struct._DenseMtx* %solmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  %xJ = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncolJ = alloca i32, align 4
  %neqns = alloca i32, align 4
  %nrhs = alloca i32, align 4
  %nrowJ = alloca i32, align 4
  %colindJ = alloca i32*, align 8
  %nrow = getelementptr inbounds %struct._DenseMtx* %solmtx, i64 0, i32 3
  %0 = load i32* %nrow, align 4, !tbaa !0
  %neqns1 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 1
  %1 = load i32* %neqns1, align 4, !tbaa !0
  store i32 %1, i32* %neqns, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.end16, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32* @IVinit(i32 %1, i32 -1) #5
  %rowind2 = getelementptr inbounds %struct._DenseMtx* %solmtx, i64 0, i32 7
  %2 = load i32** %rowind2, align 8, !tbaa !3
  %cmp3 = icmp sgt i32 %msglvl, 1
  br i1 %cmp3, label %if.then4, label %for.cond.preheader

if.then4:                                         ; preds = %if.then
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str23, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %msgFile)
  %4 = load i32* %nrow, align 4, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %4, i32* %2) #5
  %call7 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then4, %if.then
  %cmp8269 = icmp sgt i32 %0, 0
  br i1 %cmp8269, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv292 = phi i64 [ %indvars.iv.next293, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %2, i64 %indvars.iv292
  %5 = load i32* %arrayidx, align 4, !tbaa !0
  %idxprom9 = sext i32 %5 to i64
  %arrayidx10 = getelementptr inbounds i32* %call, i64 %idxprom9
  %6 = trunc i64 %indvars.iv292 to i32
  store i32 %6, i32* %arrayidx10, align 4, !tbaa !0
  %indvars.iv.next293 = add i64 %indvars.iv292, 1
  %lftr.wideiv294 = trunc i64 %indvars.iv.next293 to i32
  %exitcond295 = icmp eq i32 %lftr.wideiv294, %0
  br i1 %exitcond295, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  br i1 %cmp3, label %if.then12, label %if.end16

if.then12:                                        ; preds = %for.end
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str24, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %msgFile)
  %8 = load i32* %neqns, align 4, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %8, i32* %call) #5
  %call14 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end16

if.end16:                                         ; preds = %entry, %for.end, %if.then12
  %localsol.0 = phi i32 [ 84, %if.then12 ], [ 84, %for.end ], [ 70, %entry ]
  %colmap.0 = phi i32* [ %call, %if.then12 ], [ %call, %for.end ], [ undef, %entry ]
  %rowind.0 = phi i32* [ %2, %if.then12 ], [ %2, %for.end ], [ undef, %entry ]
  call void @DenseMtx_dimensions(%struct._DenseMtx* %solmtx, i32* %neqns, i32* %nrhs) #5
  %call17 = call i32 @FrontMtx_nfront(%struct._FrontMtx* %frontmtx) #5
  %cmp19266 = icmp sgt i32 %call17, 0
  br i1 %cmp19266, label %for.body20.lr.ph, label %for.end157

for.body20.lr.ph:                                 ; preds = %if.end16
  %cmp21 = icmp eq i32* %owners, null
  %cmp34 = icmp sgt i32 %msglvl, 1
  %cmp40 = icmp eq i32 %localsol.0, 84
  %type = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 2
  br label %for.body20

for.body20:                                       ; preds = %for.body20.lr.ph, %for.inc155
  %indvars.iv290 = phi i64 [ 0, %for.body20.lr.ph ], [ %indvars.iv.next291, %for.inc155 ]
  %J.0267 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc156, %for.inc155 ]
  br i1 %cmp21, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body20
  %arrayidx23 = getelementptr inbounds i32* %owners, i64 %indvars.iv290
  %9 = load i32* %arrayidx23, align 4, !tbaa !0
  %cmp24 = icmp eq i32 %9, %myid
  br i1 %cmp24, label %land.lhs.true, label %for.inc155

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body20
  %10 = trunc i64 %indvars.iv290 to i32
  %call25 = call i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %10) #5
  %cmp26 = icmp sgt i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %for.inc155

if.then27:                                        ; preds = %land.lhs.true
  call void @FrontMtx_columnIndices(%struct._FrontMtx* %frontmtx, i32 %10, i32* %ncolJ, i32** %colindJ) #5
  %arrayidx29 = getelementptr inbounds %struct._SubMtx** %p_mtx, i64 %indvars.iv290
  %11 = load %struct._SubMtx** %arrayidx29, align 8, !tbaa !3
  %cmp30 = icmp eq %struct._SubMtx* %11, null
  br i1 %cmp30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.then27
  %12 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([60 x i8]* @.str25, i64 0, i64 0), i32 %J.0267, i32 %myid) #5
  call void @exit(i32 -1) #6
  unreachable

if.end33:                                         ; preds = %if.then27
  br i1 %cmp34, label %if.then35, label %if.end39

if.then35:                                        ; preds = %if.end33
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([32 x i8]* @.str26, i64 0, i64 0), i32 %10) #5
  %call37 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %11, %struct._IO_FILE* %msgFile) #5
  %call38 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.end33
  br i1 %cmp40, label %if.then42, label %if.end68

if.then42:                                        ; preds = %if.end39
  br i1 %cmp34, label %if.then45, label %for.body52.lr.ph

if.then45:                                        ; preds = %if.then42
  %13 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str27, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %msgFile)
  %14 = load i32** %colindJ, align 8, !tbaa !3
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %call25, i32* %14) #5
  %call47 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %for.body52.lr.ph

for.body52.lr.ph:                                 ; preds = %if.then42, %if.then45
  %15 = load i32** %colindJ, align 8, !tbaa !3
  br label %for.body52

for.body52:                                       ; preds = %for.body52, %for.body52.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body52.lr.ph ], [ %indvars.iv.next, %for.body52 ]
  %arrayidx54 = getelementptr inbounds i32* %15, i64 %indvars.iv
  %16 = load i32* %arrayidx54, align 4, !tbaa !0
  %idxprom55 = sext i32 %16 to i64
  %arrayidx56 = getelementptr inbounds i32* %colmap.0, i64 %idxprom55
  %17 = load i32* %arrayidx56, align 4, !tbaa !0
  store i32 %17, i32* %arrayidx54, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %call25
  br i1 %exitcond, label %for.end61, label %for.body52

for.end61:                                        ; preds = %for.body52
  br i1 %cmp34, label %if.then64, label %if.end68

if.then64:                                        ; preds = %for.end61
  %18 = call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str28, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %msgFile)
  %19 = load i32** %colindJ, align 8, !tbaa !3
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %call25, i32* %19) #5
  %call66 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end68

if.end68:                                         ; preds = %for.end61, %if.then64, %if.end39
  %call69 = call double* @DenseMtx_entries(%struct._DenseMtx* %solmtx) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %11, i32* %nrowJ, i32* %ncolJ, i32* %inc1, i32* %inc2, double** %xJ) #5
  %20 = load i32* %type, align 4, !tbaa !0
  switch i32 %20, label %if.end135 [
    i32 1, label %for.cond73.preheader
    i32 2, label %for.cond100.preheader
  ]

for.cond73.preheader:                             ; preds = %if.end68
  %21 = load i32* %nrhs, align 4, !tbaa !0
  %cmp74258 = icmp sgt i32 %21, 0
  br i1 %cmp74258, label %for.cond77.preheader.lr.ph, label %if.end135

for.cond77.preheader.lr.ph:                       ; preds = %for.cond73.preheader
  %22 = load i32* %neqns, align 4, !tbaa !0
  %idx.ext = sext i32 %22 to i64
  %idx.ext90 = sext i32 %call25 to i64
  %23 = load i32** %colindJ, align 8, !tbaa !3
  %xJ.promoted261 = load double** %xJ, align 8, !tbaa !3
  %xJ.promoted261281 = bitcast double* %xJ.promoted261 to i8*
  %24 = icmp sgt i32 %21, 1
  %.op297 = add i32 %21, -1
  %25 = zext i32 %.op297 to i64
  %.op298 = shl nuw nsw i64 %25, 3
  %.op298.op = add i64 %.op298, 8
  %26 = select i1 %24, i64 %.op298.op, i64 8
  %27 = mul i64 %26, %idx.ext90
  %uglygep283 = getelementptr i8* %xJ.promoted261281, i64 %27
  br label %for.body80.lr.ph

for.cond100.preheader:                            ; preds = %if.end68
  %28 = load i32* %nrhs, align 4, !tbaa !0
  %cmp101251 = icmp sgt i32 %28, 0
  br i1 %cmp101251, label %for.cond104.preheader.lr.ph, label %if.end135

for.cond104.preheader.lr.ph:                      ; preds = %for.cond100.preheader
  %29 = load i32* %neqns, align 4, !tbaa !0
  %mul125 = shl nsw i32 %29, 1
  %idx.ext126 = sext i32 %mul125 to i64
  %mul128 = shl nsw i32 %call25, 1
  %idx.ext129 = sext i32 %mul128 to i64
  %30 = load i32** %colindJ, align 8, !tbaa !3
  %xJ.promoted = load double** %xJ, align 8, !tbaa !3
  %xJ.promoted275 = bitcast double* %xJ.promoted to i8*
  %31 = icmp sgt i32 %28, 1
  %.op = add i32 %28, -1
  %32 = zext i32 %.op to i64
  %.op296 = shl nuw nsw i64 %32, 3
  %.op296.op = add i64 %.op296, 8
  %33 = select i1 %31, i64 %.op296.op, i64 8
  %34 = shl i32 %call25, 1
  %35 = sext i32 %34 to i64
  %36 = mul i64 %33, %35
  %uglygep = getelementptr i8* %xJ.promoted275, i64 %36
  br label %for.body107.lr.ph

for.body80.lr.ph:                                 ; preds = %for.end89, %for.cond77.preheader.lr.ph
  %add.ptr91262 = phi double* [ %xJ.promoted261, %for.cond77.preheader.lr.ph ], [ %add.ptr91, %for.end89 ]
  %sol.0260 = phi double* [ %call69, %for.cond77.preheader.lr.ph ], [ %add.ptr, %for.end89 ]
  %jrhs.0259 = phi i32 [ 0, %for.cond77.preheader.lr.ph ], [ %inc93, %for.end89 ]
  br label %for.body80

for.body80:                                       ; preds = %for.body80, %for.body80.lr.ph
  %indvars.iv277 = phi i64 [ 0, %for.body80.lr.ph ], [ %indvars.iv.next278, %for.body80 ]
  %arrayidx82 = getelementptr inbounds i32* %23, i64 %indvars.iv277
  %37 = load i32* %arrayidx82, align 4, !tbaa !0
  %arrayidx84 = getelementptr inbounds double* %add.ptr91262, i64 %indvars.iv277
  %38 = load double* %arrayidx84, align 8, !tbaa !4
  %idxprom85 = sext i32 %37 to i64
  %arrayidx86 = getelementptr inbounds double* %sol.0260, i64 %idxprom85
  store double %38, double* %arrayidx86, align 8, !tbaa !4
  %indvars.iv.next278 = add i64 %indvars.iv277, 1
  %lftr.wideiv279 = trunc i64 %indvars.iv.next278 to i32
  %exitcond280 = icmp eq i32 %lftr.wideiv279, %call25
  br i1 %exitcond280, label %for.end89, label %for.body80

for.end89:                                        ; preds = %for.body80
  %add.ptr = getelementptr inbounds double* %sol.0260, i64 %idx.ext
  %add.ptr91 = getelementptr inbounds double* %add.ptr91262, i64 %idx.ext90
  %inc93 = add nsw i32 %jrhs.0259, 1
  %cmp74 = icmp slt i32 %inc93, %21
  br i1 %cmp74, label %for.body80.lr.ph, label %for.cond73.if.end135.loopexit257_crit_edge

for.body107.lr.ph:                                ; preds = %for.end124, %for.cond104.preheader.lr.ph
  %add.ptr130254 = phi double* [ %xJ.promoted, %for.cond104.preheader.lr.ph ], [ %add.ptr130, %for.end124 ]
  %sol.1253 = phi double* [ %call69, %for.cond104.preheader.lr.ph ], [ %add.ptr127, %for.end124 ]
  %jrhs.1252 = phi i32 [ 0, %for.cond104.preheader.lr.ph ], [ %inc132, %for.end124 ]
  br label %for.body107

for.body107:                                      ; preds = %for.body107, %for.body107.lr.ph
  %indvars.iv271 = phi i64 [ 0, %for.body107.lr.ph ], [ %indvars.iv.next272, %for.body107 ]
  %arrayidx109 = getelementptr inbounds i32* %30, i64 %indvars.iv271
  %39 = load i32* %arrayidx109, align 4, !tbaa !0
  %40 = trunc i64 %indvars.iv271 to i32
  %mul = shl nsw i32 %40, 1
  %idxprom110 = sext i32 %mul to i64
  %arrayidx111 = getelementptr inbounds double* %add.ptr130254, i64 %idxprom110
  %41 = load double* %arrayidx111, align 8, !tbaa !4
  %mul112 = shl nsw i32 %39, 1
  %idxprom113 = sext i32 %mul112 to i64
  %arrayidx114 = getelementptr inbounds double* %sol.1253, i64 %idxprom113
  store double %41, double* %arrayidx114, align 8, !tbaa !4
  %add245 = or i32 %mul, 1
  %idxprom116 = sext i32 %add245 to i64
  %arrayidx117 = getelementptr inbounds double* %add.ptr130254, i64 %idxprom116
  %42 = load double* %arrayidx117, align 8, !tbaa !4
  %add119246 = or i32 %mul112, 1
  %idxprom120 = sext i32 %add119246 to i64
  %arrayidx121 = getelementptr inbounds double* %sol.1253, i64 %idxprom120
  store double %42, double* %arrayidx121, align 8, !tbaa !4
  %indvars.iv.next272 = add i64 %indvars.iv271, 1
  %lftr.wideiv273 = trunc i64 %indvars.iv.next272 to i32
  %exitcond274 = icmp eq i32 %lftr.wideiv273, %call25
  br i1 %exitcond274, label %for.end124, label %for.body107

for.end124:                                       ; preds = %for.body107
  %add.ptr127 = getelementptr inbounds double* %sol.1253, i64 %idx.ext126
  %add.ptr130 = getelementptr inbounds double* %add.ptr130254, i64 %idx.ext129
  %inc132 = add nsw i32 %jrhs.1252, 1
  %cmp101 = icmp slt i32 %inc132, %28
  br i1 %cmp101, label %for.body107.lr.ph, label %for.cond100.if.end135.loopexit_crit_edge

for.cond100.if.end135.loopexit_crit_edge:         ; preds = %for.end124
  %uglygep276 = bitcast i8* %uglygep to double*
  store double* %uglygep276, double** %xJ, align 8, !tbaa !3
  br label %if.end135

for.cond73.if.end135.loopexit257_crit_edge:       ; preds = %for.end89
  %uglygep283284 = bitcast i8* %uglygep283 to double*
  store double* %uglygep283284, double** %xJ, align 8, !tbaa !3
  br label %if.end135

if.end135:                                        ; preds = %for.cond73.preheader, %for.cond73.if.end135.loopexit257_crit_edge, %for.cond100.preheader, %for.cond100.if.end135.loopexit_crit_edge, %if.end68
  call void @SubMtxManager_releaseObject(%struct._SubMtxManager* %manager, %struct._SubMtx* %11) #5
  br i1 %cmp40, label %for.body143.lr.ph, label %for.inc155

for.body143.lr.ph:                                ; preds = %if.end135
  %43 = load i32** %colindJ, align 8, !tbaa !3
  br label %for.body143

for.body143:                                      ; preds = %for.body143, %for.body143.lr.ph
  %indvars.iv285 = phi i64 [ 0, %for.body143.lr.ph ], [ %indvars.iv.next286, %for.body143 ]
  %arrayidx145 = getelementptr inbounds i32* %43, i64 %indvars.iv285
  %44 = load i32* %arrayidx145, align 4, !tbaa !0
  %idxprom146 = sext i32 %44 to i64
  %arrayidx147 = getelementptr inbounds i32* %rowind.0, i64 %idxprom146
  %45 = load i32* %arrayidx147, align 4, !tbaa !0
  store i32 %45, i32* %arrayidx145, align 4, !tbaa !0
  %indvars.iv.next286 = add i64 %indvars.iv285, 1
  %lftr.wideiv287 = trunc i64 %indvars.iv.next286 to i32
  %exitcond288 = icmp eq i32 %lftr.wideiv287, %call25
  br i1 %exitcond288, label %for.inc155, label %for.body143

for.inc155:                                       ; preds = %for.body143, %lor.lhs.false, %land.lhs.true, %if.end135
  %indvars.iv.next291 = add i64 %indvars.iv290, 1
  %inc156 = add nsw i32 %J.0267, 1
  %46 = trunc i64 %indvars.iv.next291 to i32
  %cmp19 = icmp slt i32 %46, %call17
  br i1 %cmp19, label %for.body20, label %for.end157

for.end157:                                       ; preds = %for.inc155, %if.end16
  %cmp159 = icmp eq i32 %localsol.0, 84
  br i1 %cmp159, label %if.then161, label %if.end162

if.then161:                                       ; preds = %for.end157
  call void @IVfree(i32* %colmap.0) #5
  br label %if.end162

if.end162:                                        ; preds = %if.then161, %for.end157
  ret void
}

; Function Attrs: optsize
declare void @FrontMtx_columnIndices(%struct._FrontMtx*, i32, i32*, i32**) #1

; Function Attrs: optsize
declare void @SubMtxManager_releaseObject(%struct._SubMtxManager*, %struct._SubMtx*) #1

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_loadActiveRoots(%struct._FrontMtx* nocapture %frontmtx, i8* nocapture %status, i8 signext %activeFlag, %struct._Ideq* %dequeue) #0 {
entry:
  %tree = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 10
  %0 = load %struct._Tree** %tree, align 8, !tbaa !3
  %sib1 = getelementptr inbounds %struct._Tree* %0, i64 0, i32 4
  %1 = load i32** %sib1, align 8, !tbaa !3
  %root = getelementptr inbounds %struct._Tree* %0, i64 0, i32 1
  %J.012 = load i32* %root, align 4
  %cmp13 = icmp eq i32 %J.012, -1
  br i1 %cmp13, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %J.014 = phi i32 [ %J.0, %for.inc ], [ %J.012, %entry ]
  %idxprom = sext i32 %J.014 to i64
  %arrayidx = getelementptr inbounds i8* %status, i64 %idxprom
  %2 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp4 = icmp eq i8 %2, %activeFlag
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %call = tail call i32 @Ideq_insertAtTail(%struct._Ideq* %dequeue, i32 %J.014) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %arrayidx7 = getelementptr inbounds i32* %1, i64 %idxprom
  %J.0 = load i32* %arrayidx7, align 4
  %cmp = icmp eq i32 %J.0, -1
  br i1 %cmp, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: optsize
declare i32 @Ideq_insertAtTail(%struct._Ideq*, i32) #1

; Function Attrs: nounwind optsize uwtable
define noalias %struct._IP** @FrontMtx_forwardSetup(%struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* nocapture %msgFile) #0 {
entry:
  %nadj = alloca i32, align 4
  %adj = alloca i32*, align 8
  %call = call i32 @FrontMtx_nLowerBlocks(%struct._FrontMtx* %frontmtx) #5
  %call1 = call i32 @FrontMtx_nfront(%struct._FrontMtx* %frontmtx) #5
  %add = add i32 %call1, 2
  %cmp = icmp sgt i32 %add, 0
  br i1 %cmp, label %if.then, label %if.else11

if.then:                                          ; preds = %entry
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 3
  %call3 = call noalias i8* @malloc(i64 %mul) #5
  %0 = bitcast i8* %call3 to %struct._IP**
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %if.then6, label %if.end22

if.then6:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0), i64 %mul, i32 1029, i8* getelementptr inbounds ([88 x i8]* @.str3, i64 0, i64 0)) #5
  call void @exit(i32 -1) #6
  unreachable

if.else11:                                        ; preds = %entry
  %cmp13 = icmp eq i32 %add, 0
  br i1 %cmp13, label %if.end22, label %if.else16

if.else16:                                        ; preds = %if.else11
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %conv18 = sext i32 %add to i64
  %mul19 = shl nsw i64 %conv18, 3
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([47 x i8]* @.str4, i64 0, i64 0), i64 %mul19, i32 1029, i8* getelementptr inbounds ([88 x i8]* @.str3, i64 0, i64 0)) #5
  call void @exit(i32 -1) #6
  unreachable

if.end22:                                         ; preds = %if.else11, %if.then
  %heads.0 = phi %struct._IP** [ %0, %if.then ], [ null, %if.else11 ]
  %add23 = add i32 %call1, 1
  %cmp24113 = icmp slt i32 %add23, 0
  br i1 %cmp24113, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end22
  %heads.0118 = bitcast %struct._IP** %heads.0 to i8*
  %3 = zext i32 %add23 to i64
  %4 = shl nuw nsw i64 %3, 3
  %5 = add i64 %4, 8
  call void @llvm.memset.p0i8.i64(i8* %heads.0118, i8 0, i64 %5, i32 8, i1 false)
  br label %for.end

for.end:                                          ; preds = %for.body.lr.ph, %if.end22
  %call26 = call %struct._IP* @IP_init(i32 %call, i32 1) #5
  %idxprom28 = sext i32 %add23 to i64
  %arrayidx29 = getelementptr inbounds %struct._IP** %heads.0, i64 %idxprom28
  store %struct._IP* %call26, %struct._IP** %arrayidx29, align 8, !tbaa !3
  %idxprom30 = sext i32 %call1 to i64
  %arrayidx31 = getelementptr inbounds %struct._IP** %heads.0, i64 %idxprom30
  store %struct._IP* %call26, %struct._IP** %arrayidx31, align 8, !tbaa !3
  %cmp33111 = icmp sgt i32 %call1, 0
  br i1 %cmp33111, label %for.body35.lr.ph, label %for.end71

for.body35.lr.ph:                                 ; preds = %for.end
  %cmp54 = icmp sgt i32 %msglvl, 3
  br label %for.body35

for.body35:                                       ; preds = %for.inc69, %for.body35.lr.ph
  %J.1112 = phi i32 [ 0, %for.body35.lr.ph ], [ %inc70, %for.inc69 ]
  call void @FrontMtx_lowerAdjFronts(%struct._FrontMtx* %frontmtx, i32 %J.1112, i32* %nadj, i32** %adj) #5
  %6 = load i32* %nadj, align 4, !tbaa !0
  %cmp37109 = icmp sgt i32 %6, 0
  br i1 %cmp37109, label %for.body39, label %for.inc69

for.body39:                                       ; preds = %for.inc66, %for.body35
  %indvars.iv = phi i64 [ 0, %for.body35 ], [ %indvars.iv.next, %for.inc66 ]
  %7 = load i32** %adj, align 8, !tbaa !3
  %arrayidx41 = getelementptr inbounds i32* %7, i64 %indvars.iv
  %8 = load i32* %arrayidx41, align 4, !tbaa !0
  %cmp42 = icmp sgt i32 %8, %J.1112
  br i1 %cmp42, label %if.then44, label %for.inc66

if.then44:                                        ; preds = %for.body39
  %9 = load %struct._IP** %arrayidx31, align 8, !tbaa !3
  %next = getelementptr inbounds %struct._IP* %9, i64 0, i32 1
  %10 = load %struct._IP** %next, align 8, !tbaa !3
  store %struct._IP* %10, %struct._IP** %arrayidx31, align 8, !tbaa !3
  %val = getelementptr inbounds %struct._IP* %9, i64 0, i32 0
  store i32 %J.1112, i32* %val, align 4, !tbaa !0
  %idxprom49 = sext i32 %8 to i64
  %arrayidx50 = getelementptr inbounds %struct._IP** %heads.0, i64 %idxprom49
  %11 = load %struct._IP** %arrayidx50, align 8, !tbaa !3
  store %struct._IP* %11, %struct._IP** %next, align 8, !tbaa !3
  store %struct._IP* %9, %struct._IP** %arrayidx50, align 8, !tbaa !3
  br i1 %cmp54, label %if.then56, label %for.inc66

if.then56:                                        ; preds = %if.then44
  %cmp58 = icmp eq %struct._IP* %11, null
  br i1 %cmp58, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.then56
  %val61 = getelementptr inbounds %struct._IP* %11, i64 0, i32 0
  %12 = load i32* %val61, align 4, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %if.then56, %cond.false
  %cond = phi i32 [ %12, %cond.false ], [ -1, %if.then56 ]
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([31 x i8]* @.str29, i64 0, i64 0), i32 %8, i32 %J.1112, i32 %8, i32 %cond) #5
  %call63 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %for.inc66

for.inc66:                                        ; preds = %if.then44, %for.body39, %cond.end
  %indvars.iv.next = add i64 %indvars.iv, 1
  %13 = load i32* %nadj, align 4, !tbaa !0
  %14 = trunc i64 %indvars.iv.next to i32
  %cmp37 = icmp slt i32 %14, %13
  br i1 %cmp37, label %for.body39, label %for.inc69

for.inc69:                                        ; preds = %for.inc66, %for.body35
  %inc70 = add nsw i32 %J.1112, 1
  %exitcond = icmp eq i32 %inc70, %call1
  br i1 %exitcond, label %for.end71, label %for.body35

for.end71:                                        ; preds = %for.inc69, %for.end
  ret %struct._IP** %heads.0
}

; Function Attrs: optsize
declare i32 @FrontMtx_nLowerBlocks(%struct._FrontMtx*) #1

; Function Attrs: optsize
declare %struct._IP* @IP_init(i32, i32) #1

; Function Attrs: optsize
declare void @FrontMtx_lowerAdjFronts(%struct._FrontMtx*, i32, i32*, i32**) #1

; Function Attrs: nounwind optsize uwtable
define noalias %struct._IP** @FrontMtx_backwardSetup(%struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* nocapture %msgFile) #0 {
entry:
  %nadj = alloca i32, align 4
  %adj = alloca i32*, align 8
  %call = call i32 @FrontMtx_nfront(%struct._FrontMtx* %frontmtx) #5
  %call1 = call i32 @FrontMtx_nLowerBlocks(%struct._FrontMtx* %frontmtx) #5
  %add = add i32 %call, 2
  %cmp = icmp sgt i32 %add, 0
  br i1 %cmp, label %if.then, label %if.else11

if.then:                                          ; preds = %entry
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 3
  %call3 = call noalias i8* @malloc(i64 %mul) #5
  %0 = bitcast i8* %call3 to %struct._IP**
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %if.then6, label %if.end22

if.then6:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0), i64 %mul, i32 1071, i8* getelementptr inbounds ([88 x i8]* @.str3, i64 0, i64 0)) #5
  call void @exit(i32 -1) #6
  unreachable

if.else11:                                        ; preds = %entry
  %cmp13 = icmp eq i32 %add, 0
  br i1 %cmp13, label %if.end22, label %if.else16

if.else16:                                        ; preds = %if.else11
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %conv18 = sext i32 %add to i64
  %mul19 = shl nsw i64 %conv18, 3
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([47 x i8]* @.str4, i64 0, i64 0), i64 %mul19, i32 1071, i8* getelementptr inbounds ([88 x i8]* @.str3, i64 0, i64 0)) #5
  call void @exit(i32 -1) #6
  unreachable

if.end22:                                         ; preds = %if.else11, %if.then
  %heads.0 = phi %struct._IP** [ %0, %if.then ], [ null, %if.else11 ]
  %add23 = add i32 %call, 1
  %cmp24126 = icmp slt i32 %add23, 0
  br i1 %cmp24126, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end22
  %heads.0132 = bitcast %struct._IP** %heads.0 to i8*
  %3 = zext i32 %add23 to i64
  %4 = shl nuw nsw i64 %3, 3
  %5 = add i64 %4, 8
  call void @llvm.memset.p0i8.i64(i8* %heads.0132, i8 0, i64 %5, i32 8, i1 false)
  br label %for.end

for.end:                                          ; preds = %for.body.lr.ph, %if.end22
  %call26 = call %struct._IP* @IP_init(i32 %call1, i32 1) #5
  %idxprom28 = sext i32 %add23 to i64
  %arrayidx29 = getelementptr inbounds %struct._IP** %heads.0, i64 %idxprom28
  store %struct._IP* %call26, %struct._IP** %arrayidx29, align 8, !tbaa !3
  %idxprom30 = sext i32 %call to i64
  %arrayidx31 = getelementptr inbounds %struct._IP** %heads.0, i64 %idxprom30
  store %struct._IP* %call26, %struct._IP** %arrayidx31, align 8, !tbaa !3
  %cmp33124 = icmp sgt i32 %call, 0
  br i1 %cmp33124, label %for.body35.lr.ph, label %for.end80

for.body35.lr.ph:                                 ; preds = %for.end
  %cmp63 = icmp sgt i32 %msglvl, 3
  br label %for.body35

for.body35:                                       ; preds = %for.body35.lr.ph, %for.inc78
  %indvars.iv128 = phi i64 [ 0, %for.body35.lr.ph ], [ %indvars.iv.next129, %for.inc78 ]
  %6 = trunc i64 %indvars.iv128 to i32
  call void @FrontMtx_upperAdjFronts(%struct._FrontMtx* %frontmtx, i32 %6, i32* %nadj, i32** %adj) #5
  %7 = load i32* %nadj, align 4, !tbaa !0
  %cmp37122 = icmp sgt i32 %7, 0
  br i1 %cmp37122, label %for.body39.lr.ph, label %for.inc78

for.body39.lr.ph:                                 ; preds = %for.body35
  %arrayidx59 = getelementptr inbounds %struct._IP** %heads.0, i64 %indvars.iv128
  br label %for.body39

for.body39:                                       ; preds = %for.inc75, %for.body39.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body39.lr.ph ], [ %indvars.iv.next, %for.inc75 ]
  %8 = load i32** %adj, align 8, !tbaa !3
  %arrayidx41 = getelementptr inbounds i32* %8, i64 %indvars.iv
  %9 = load i32* %arrayidx41, align 4, !tbaa !0
  %cmp42 = icmp sgt i32 %9, %6
  br i1 %cmp42, label %if.then44, label %for.inc75

if.then44:                                        ; preds = %for.body39
  %10 = load %struct._IP** %arrayidx31, align 8, !tbaa !3
  %cmp47 = icmp eq %struct._IP* %10, null
  br i1 %cmp47, label %if.then49, label %if.end53

if.then49:                                        ; preds = %if.then44
  %11 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([27 x i8]* @.str30, i64 0, i64 0), %struct._IP* null) #5
  call void @exit(i32 -1) #6
  unreachable

if.end53:                                         ; preds = %if.then44
  %next = getelementptr inbounds %struct._IP* %10, i64 0, i32 1
  %12 = load %struct._IP** %next, align 8, !tbaa !3
  store %struct._IP* %12, %struct._IP** %arrayidx31, align 8, !tbaa !3
  %val = getelementptr inbounds %struct._IP* %10, i64 0, i32 0
  store i32 %9, i32* %val, align 4, !tbaa !0
  %13 = load %struct._IP** %arrayidx59, align 8, !tbaa !3
  store %struct._IP* %13, %struct._IP** %next, align 8, !tbaa !3
  store %struct._IP* %10, %struct._IP** %arrayidx59, align 8, !tbaa !3
  br i1 %cmp63, label %if.then65, label %for.inc75

if.then65:                                        ; preds = %if.end53
  %cmp67 = icmp eq %struct._IP* %13, null
  br i1 %cmp67, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.then65
  %val70 = getelementptr inbounds %struct._IP* %13, i64 0, i32 0
  %14 = load i32* %val70, align 4, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %if.then65, %cond.false
  %cond = phi i32 [ %14, %cond.false ], [ -1, %if.then65 ]
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([31 x i8]* @.str31, i64 0, i64 0), i32 %6, i32 %9, i32 %6, i32 %cond) #5
  %call72 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %for.inc75

for.inc75:                                        ; preds = %if.end53, %for.body39, %cond.end
  %indvars.iv.next = add i64 %indvars.iv, 1
  %15 = load i32* %nadj, align 4, !tbaa !0
  %16 = trunc i64 %indvars.iv.next to i32
  %cmp37 = icmp slt i32 %16, %15
  br i1 %cmp37, label %for.body39, label %for.inc78

for.inc78:                                        ; preds = %for.inc75, %for.body35
  %indvars.iv.next129 = add i64 %indvars.iv128, 1
  %17 = trunc i64 %indvars.iv.next129 to i32
  %cmp33 = icmp slt i32 %17, %call
  br i1 %cmp33, label %for.body35, label %for.end80

for.end80:                                        ; preds = %for.inc78, %for.end
  ret %struct._IP** %heads.0
}

; Function Attrs: optsize
declare void @FrontMtx_upperAdjFronts(%struct._FrontMtx*, i32, i32*, i32**) #1

; Function Attrs: optsize
declare void @SubMtx_solveupd(%struct._SubMtx*, %struct._SubMtx*, %struct._SubMtx*) #1

; Function Attrs: optsize
declare i32 @SubMtxList_isListNonempty(%struct._SubMtxList*, i32) #1

; Function Attrs: optsize
declare %struct._SubMtx* @SubMtxList_getList(%struct._SubMtxList*, i32) #1

; Function Attrs: optsize
declare void @DVadd(i32, double*, double*) #1

; Function Attrs: optsize
declare void @SubMtxManager_releaseListOfObjects(%struct._SubMtxManager*, %struct._SubMtx*) #1

; Function Attrs: optsize
declare void @SubMtx_solveupdT(%struct._SubMtx*, %struct._SubMtx*, %struct._SubMtx*) #1

; Function Attrs: optsize
declare void @SubMtx_solveupdH(%struct._SubMtx*, %struct._SubMtx*, %struct._SubMtx*) #1

; Function Attrs: optsize
declare void @DVzero(i32, double*) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
