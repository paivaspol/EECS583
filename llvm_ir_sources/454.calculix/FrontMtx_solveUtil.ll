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
  call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !259), !dbg !522
  call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %rhsmtx}, i64 0, metadata !260), !dbg !523
  call void @llvm.dbg.value(metadata !{i32* %owners}, i64 0, metadata !261), !dbg !524
  call void @llvm.dbg.value(metadata !{i32 %myid}, i64 0, metadata !262), !dbg !525
  call void @llvm.dbg.value(metadata !{%struct._SubMtxManager* %mtxmanager}, i64 0, metadata !263), !dbg !526
  call void @llvm.dbg.value(metadata !{i32 %msglvl}, i64 0, metadata !264), !dbg !527
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %msgFile}, i64 0, metadata !265), !dbg !528
  call void @llvm.dbg.declare(metadata !{double** %bJ}, metadata !269), !dbg !529
  call void @llvm.dbg.declare(metadata !{i32* %inc1}, metadata !271), !dbg !530
  call void @llvm.dbg.declare(metadata !{i32* %inc2}, metadata !272), !dbg !530
  call void @llvm.dbg.declare(metadata !{i32* %ncolJ}, metadata !278), !dbg !530
  call void @llvm.dbg.declare(metadata !{i32* %neqns}, metadata !279), !dbg !531
  call void @llvm.dbg.declare(metadata !{i32* %nrhs}, metadata !282), !dbg !531
  call void @llvm.dbg.declare(metadata !{i32* %nrowJ}, metadata !284), !dbg !531
  call void @llvm.dbg.declare(metadata !{i32** %rowindJ}, metadata !286), !dbg !532
  %nrow = getelementptr inbounds %struct._DenseMtx* %rhsmtx, i64 0, i32 3, !dbg !533
  %0 = load i32* %nrow, align 4, !dbg !533, !tbaa !534
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !283), !dbg !533
  %neqns1 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 1, !dbg !537
  %1 = load i32* %neqns1, align 4, !dbg !537, !tbaa !534
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !279), !dbg !537
  store i32 %1, i32* %neqns, align 4, !dbg !537, !tbaa !534
  %cmp = icmp eq i32 %0, %1, !dbg !538
  br i1 %cmp, label %if.end16, label %if.then, !dbg !538

if.then:                                          ; preds = %entry
  %call = call i32* @IVinit(i32 %1, i32 -1) #6, !dbg !539
  call void @llvm.dbg.value(metadata !{i32* %call}, i64 0, metadata !287), !dbg !539
  %rowind2 = getelementptr inbounds %struct._DenseMtx* %rhsmtx, i64 0, i32 7, !dbg !541
  %2 = load i32** %rowind2, align 8, !dbg !541, !tbaa !542
  call void @llvm.dbg.value(metadata !{i32* %2}, i64 0, metadata !285), !dbg !541
  %cmp3 = icmp sgt i32 %msglvl, 2, !dbg !543
  br i1 %cmp3, label %if.then4, label %for.cond.preheader, !dbg !543

if.then4:                                         ; preds = %if.then
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %msgFile), !dbg !544
  %4 = load i32* %nrow, align 4, !dbg !546, !tbaa !534
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %4, i32* %2) #6, !dbg !546
  %call7 = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !547
  br label %for.cond.preheader, !dbg !548

for.cond.preheader:                               ; preds = %if.then4, %if.then
  %cmp8316 = icmp sgt i32 %0, 0, !dbg !549
  br i1 %cmp8316, label %for.body, label %for.end, !dbg !549

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv344 = phi i64 [ %indvars.iv.next345, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %2, i64 %indvars.iv344, !dbg !551
  %5 = load i32* %arrayidx, align 4, !dbg !551, !tbaa !534
  %idxprom9 = sext i32 %5 to i64, !dbg !551
  %arrayidx10 = getelementptr inbounds i32* %call, i64 %idxprom9, !dbg !551
  %6 = trunc i64 %indvars.iv344 to i32, !dbg !551
  store i32 %6, i32* %arrayidx10, align 4, !dbg !551, !tbaa !534
  %indvars.iv.next345 = add i64 %indvars.iv344, 1, !dbg !549
  %lftr.wideiv346 = trunc i64 %indvars.iv.next345 to i32, !dbg !549
  %exitcond347 = icmp eq i32 %lftr.wideiv346, %0, !dbg !549
  br i1 %exitcond347, label %for.end, label %for.body, !dbg !549

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %cmp11 = icmp sgt i32 %msglvl, 1, !dbg !553
  br i1 %cmp11, label %if.then12, label %if.end16, !dbg !553

if.then12:                                        ; preds = %for.end
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %msgFile), !dbg !554
  call void @llvm.dbg.value(metadata !{i32* %neqns}, i64 0, metadata !279), !dbg !556
  %8 = load i32* %neqns, align 4, !dbg !556, !tbaa !534
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %8, i32* %call) #6, !dbg !556
  %call14 = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !557
  br label %if.end16, !dbg !558

if.end16:                                         ; preds = %entry, %for.end, %if.then12
  %localrhs.0 = phi i32 [ 84, %if.then12 ], [ 84, %for.end ], [ 70, %entry ]
  %rowind.0 = phi i32* [ %2, %if.then12 ], [ %2, %for.end ], [ undef, %entry ]
  %rowmap.0 = phi i32* [ %call, %if.then12 ], [ %call, %for.end ], [ undef, %entry ]
  %call17 = call i32 @FrontMtx_nfront(%struct._FrontMtx* %frontmtx) #6, !dbg !559
  call void @llvm.dbg.value(metadata !{i32 %call17}, i64 0, metadata !280), !dbg !559
  %cmp18 = icmp sgt i32 %call17, 0, !dbg !560
  br i1 %cmp18, label %if.then19, label %if.else29, !dbg !560

if.then19:                                        ; preds = %if.end16
  %conv = sext i32 %call17 to i64, !dbg !561
  %mul = shl nsw i64 %conv, 3, !dbg !561
  %call20 = call noalias i8* @malloc(i64 %mul) #6, !dbg !561
  %9 = bitcast i8* %call20 to %struct._SubMtx**, !dbg !561
  call void @llvm.dbg.value(metadata !{%struct._SubMtx** %9}, i64 0, metadata !268), !dbg !561
  %cmp21 = icmp eq i8* %call20, null, !dbg !561
  br i1 %cmp21, label %if.then23, label %for.body51.lr.ph, !dbg !561

if.then23:                                        ; preds = %if.then19
  %10 = load %struct._IO_FILE** @stderr, align 8, !dbg !563, !tbaa !542
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0), i64 %mul, i32 80, i8* getelementptr inbounds ([88 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !563
  call void @exit(i32 -1) #7, !dbg !563
  unreachable, !dbg !563

if.else29:                                        ; preds = %if.end16
  %cmp30 = icmp eq i32 %call17, 0, !dbg !560
  br i1 %cmp30, label %for.end47, label %if.else33, !dbg !560

if.else33:                                        ; preds = %if.else29
  %11 = load %struct._IO_FILE** @stderr, align 8, !dbg !565, !tbaa !542
  %conv34 = sext i32 %call17 to i64, !dbg !565
  %mul35 = shl nsw i64 %conv34, 3, !dbg !565
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([47 x i8]* @.str4, i64 0, i64 0), i64 %mul35, i32 80, i8* getelementptr inbounds ([88 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !565
  call void @exit(i32 -1) #7, !dbg !565
  unreachable, !dbg !565

for.end47:                                        ; preds = %if.else29
  call void @DenseMtx_dimensions(%struct._DenseMtx* %rhsmtx, i32* %neqns, i32* %nrhs) #6, !dbg !567
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !275), !dbg !568
  br label %for.end190

for.body51.lr.ph:                                 ; preds = %if.then19
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !275), !dbg !570
  %12 = add i32 %call17, -1, !dbg !570
  %13 = zext i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 3, !dbg !570
  %15 = add i64 %14, 8, !dbg !570
  call void @llvm.memset.p0i8.i64(i8* %call20, i8 0, i64 %15, i32 8, i1 false), !dbg !572
  call void @DenseMtx_dimensions(%struct._DenseMtx* %rhsmtx, i32* %neqns, i32* %nrhs) #6, !dbg !567
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !275), !dbg !568
  %cmp52 = icmp eq i32* %owners, null, !dbg !574
  %cmp63 = icmp eq i32 %localrhs.0, 84, !dbg !576
  %type = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 2, !dbg !578
  %cmp161 = icmp sgt i32 %msglvl, 3, !dbg !579
  %mul153 = shl nsw i32 %0, 1, !dbg !580
  %idx.ext154 = sext i32 %mul153 to i64, !dbg !580
  %idx.ext114 = sext i32 %0 to i64, !dbg !584
  br label %for.body51, !dbg !568

for.body51:                                       ; preds = %for.body51.lr.ph, %for.inc188
  %indvars.iv337 = phi i64 [ 0, %for.body51.lr.ph ], [ %indvars.iv.next338, %for.inc188 ]
  %J.1312 = phi i32 [ 0, %for.body51.lr.ph ], [ %inc189, %for.inc188 ]
  br i1 %cmp52, label %land.lhs.true, label %lor.lhs.false, !dbg !574

lor.lhs.false:                                    ; preds = %for.body51
  %arrayidx55 = getelementptr inbounds i32* %owners, i64 %indvars.iv337, !dbg !574
  %16 = load i32* %arrayidx55, align 4, !dbg !574, !tbaa !534
  %cmp56 = icmp eq i32 %16, %myid, !dbg !574
  br i1 %cmp56, label %land.lhs.true, label %for.inc188, !dbg !574

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body51
  %17 = trunc i64 %indvars.iv337 to i32, !dbg !588
  %call58 = call i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %17) #6, !dbg !588
  call void @llvm.dbg.value(metadata !{i32 %call58}, i64 0, metadata !281), !dbg !588
  %cmp59 = icmp sgt i32 %call58, 0, !dbg !588
  br i1 %cmp59, label %if.then61, label %for.inc188, !dbg !588

if.then61:                                        ; preds = %land.lhs.true
  call void @FrontMtx_rowIndices(%struct._FrontMtx* %frontmtx, i32 %17, i32* %nrowJ, i32** %rowindJ) #6, !dbg !589
  br i1 %cmp63, label %for.body69.lr.ph, label %if.end79, !dbg !576

for.body69.lr.ph:                                 ; preds = %if.then61
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !286), !dbg !590
  %18 = load i32** %rowindJ, align 8, !dbg !590, !tbaa !542
  br label %for.body69, !dbg !594

for.body69:                                       ; preds = %for.body69, %for.body69.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body69.lr.ph ], [ %indvars.iv.next, %for.body69 ]
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !286), !dbg !590
  %arrayidx71 = getelementptr inbounds i32* %18, i64 %indvars.iv, !dbg !590
  %19 = load i32* %arrayidx71, align 4, !dbg !590, !tbaa !534
  %idxprom72 = sext i32 %19 to i64, !dbg !590
  %arrayidx73 = getelementptr inbounds i32* %rowmap.0, i64 %idxprom72, !dbg !590
  %20 = load i32* %arrayidx73, align 4, !dbg !590, !tbaa !534
  store i32 %20, i32* %arrayidx71, align 4, !dbg !590, !tbaa !534
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !594
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !594
  %exitcond = icmp eq i32 %lftr.wideiv, %call58, !dbg !594
  br i1 %exitcond, label %if.end79, label %for.body69, !dbg !594

if.end79:                                         ; preds = %for.body69, %if.then61
  %21 = load i32* %type, align 4, !dbg !578, !tbaa !534
  call void @llvm.dbg.value(metadata !{i32* %nrhs}, i64 0, metadata !282), !dbg !578
  %22 = load i32* %nrhs, align 4, !dbg !578, !tbaa !534
  %mul80 = mul nsw i32 %22, %call58, !dbg !578
  %call81 = call i32 @SubMtx_nbytesNeeded(i32 %21, i32 1, i32 %call58, i32 %22, i32 %mul80) #6, !dbg !578
  call void @llvm.dbg.value(metadata !{i32 %call81}, i64 0, metadata !277), !dbg !578
  %call82 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %mtxmanager, i32 %call81) #6, !dbg !595
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call82}, i64 0, metadata !267), !dbg !595
  %23 = load i32* %type, align 4, !dbg !596, !tbaa !534
  call void @llvm.dbg.value(metadata !{i32* %nrhs}, i64 0, metadata !282), !dbg !596
  %24 = load i32* %nrhs, align 4, !dbg !596, !tbaa !534
  %mul84 = mul nsw i32 %24, %call58, !dbg !596
  call void @SubMtx_init(%struct._SubMtx* %call82, i32 %23, i32 1, i32 %17, i32 0, i32 %call58, i32 %24, i32 %mul84) #6, !dbg !596
  %arrayidx86 = getelementptr inbounds %struct._SubMtx** %9, i64 %indvars.iv337, !dbg !597
  store %struct._SubMtx* %call82, %struct._SubMtx** %arrayidx86, align 8, !dbg !597, !tbaa !542
  %cmp87 = icmp eq %struct._SubMtx* %call82, null, !dbg !598
  br i1 %cmp87, label %if.then89, label %if.end91, !dbg !598

if.then89:                                        ; preds = %if.end79
  %25 = load %struct._IO_FILE** @stderr, align 8, !dbg !599, !tbaa !542
  %call90 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([41 x i8]* @.str5, i64 0, i64 0), i32 %J.1312) #6, !dbg !599
  call void @exit(i32 -1) #7, !dbg !601
  unreachable, !dbg !601

if.end91:                                         ; preds = %if.end79
  %call92 = call double* @DenseMtx_entries(%struct._DenseMtx* %rhsmtx) #6, !dbg !602
  call void @llvm.dbg.value(metadata !{double* %call92}, i64 0, metadata !270), !dbg !602
  call void @SubMtx_denseInfo(%struct._SubMtx* %call82, i32* %nrowJ, i32* %ncolJ, i32* %inc1, i32* %inc2, double** %bJ) #6, !dbg !603
  %26 = load i32* %type, align 4, !dbg !604, !tbaa !534
  switch i32 %26, label %if.end160 [
    i32 1, label %for.cond97.preheader
    i32 2, label %for.cond124.preheader
  ], !dbg !604

for.cond97.preheader:                             ; preds = %if.end91
  call void @llvm.dbg.value(metadata !{i32* %nrhs}, i64 0, metadata !282), !dbg !605
  %27 = load i32* %nrhs, align 4, !dbg !605, !tbaa !534
  %cmp98303 = icmp sgt i32 %27, 0, !dbg !605
  br i1 %cmp98303, label %for.cond101.preheader.lr.ph, label %if.end160, !dbg !605

for.cond101.preheader.lr.ph:                      ; preds = %for.cond97.preheader
  %idx.ext = sext i32 %call58 to i64, !dbg !606
  call void @llvm.dbg.value(metadata !{i32* %nrhs}, i64 0, metadata !282), !dbg !605
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !286), !dbg !607
  %28 = load i32** %rowindJ, align 8, !dbg !607, !tbaa !542
  call void @llvm.dbg.value(metadata !{double** %bJ}, i64 0, metadata !269), !dbg !606
  %bJ.promoted306 = load double** %bJ, align 8, !dbg !606, !tbaa !542
  %bJ.promoted306328 = bitcast double* %bJ.promoted306 to i8*
  %29 = icmp sgt i32 %27, 1
  %.op349 = add i32 %27, -1, !dbg !605
  %30 = zext i32 %.op349 to i64
  %.op350 = shl nuw nsw i64 %30, 3, !dbg !605
  %.op350.op = add i64 %.op350, 8, !dbg !605
  %31 = select i1 %29, i64 %.op350.op, i64 8, !dbg !605
  %32 = mul i64 %31, %idx.ext, !dbg !605
  %uglygep330 = getelementptr i8* %bJ.promoted306328, i64 %32
  br label %for.body104.lr.ph, !dbg !605

for.cond124.preheader:                            ; preds = %if.end91
  call void @llvm.dbg.value(metadata !{i32* %nrhs}, i64 0, metadata !282), !dbg !610
  %33 = load i32* %nrhs, align 4, !dbg !610, !tbaa !534
  %cmp125296 = icmp sgt i32 %33, 0, !dbg !610
  br i1 %cmp125296, label %for.cond128.preheader.lr.ph, label %if.end160, !dbg !610

for.cond128.preheader.lr.ph:                      ; preds = %for.cond124.preheader
  %mul150 = shl nsw i32 %call58, 1, !dbg !611
  %idx.ext151 = sext i32 %mul150 to i64, !dbg !611
  call void @llvm.dbg.value(metadata !{i32* %nrhs}, i64 0, metadata !282), !dbg !610
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !286), !dbg !612
  %34 = load i32** %rowindJ, align 8, !dbg !612, !tbaa !542
  call void @llvm.dbg.value(metadata !{double** %bJ}, i64 0, metadata !269), !dbg !611
  %bJ.promoted = load double** %bJ, align 8, !dbg !611, !tbaa !542
  %bJ.promoted322 = bitcast double* %bJ.promoted to i8*
  %35 = icmp sgt i32 %33, 1
  %.op = add i32 %33, -1, !dbg !610
  %36 = zext i32 %.op to i64
  %.op348 = shl nuw nsw i64 %36, 3, !dbg !610
  %.op348.op = add i64 %.op348, 8, !dbg !610
  %37 = select i1 %35, i64 %.op348.op, i64 8, !dbg !610
  %38 = shl i32 %call58, 1, !dbg !610
  %39 = sext i32 %38 to i64
  %40 = mul i64 %37, %39, !dbg !610
  %uglygep = getelementptr i8* %bJ.promoted322, i64 %40
  br label %for.body131.lr.ph, !dbg !610

for.body104.lr.ph:                                ; preds = %for.end113, %for.cond101.preheader.lr.ph
  %add.ptr307 = phi double* [ %bJ.promoted306, %for.cond101.preheader.lr.ph ], [ %add.ptr, %for.end113 ]
  %rhs.0305 = phi double* [ %call92, %for.cond101.preheader.lr.ph ], [ %add.ptr115, %for.end113 ]
  %jrhs.0304 = phi i32 [ 0, %for.cond101.preheader.lr.ph ], [ %inc117, %for.end113 ]
  br label %for.body104, !dbg !615

for.body104:                                      ; preds = %for.body104, %for.body104.lr.ph
  %indvars.iv324 = phi i64 [ 0, %for.body104.lr.ph ], [ %indvars.iv.next325, %for.body104 ]
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !286), !dbg !607
  %arrayidx106 = getelementptr inbounds i32* %28, i64 %indvars.iv324, !dbg !607
  %41 = load i32* %arrayidx106, align 4, !dbg !607, !tbaa !534
  call void @llvm.dbg.value(metadata !{i32 %41}, i64 0, metadata !276), !dbg !607
  %idxprom107 = sext i32 %41 to i64, !dbg !616
  %arrayidx108 = getelementptr inbounds double* %rhs.0305, i64 %idxprom107, !dbg !616
  %42 = load double* %arrayidx108, align 8, !dbg !616, !tbaa !617
  call void @llvm.dbg.value(metadata !{double** %bJ}, i64 0, metadata !269), !dbg !616
  %arrayidx110 = getelementptr inbounds double* %add.ptr307, i64 %indvars.iv324, !dbg !616
  store double %42, double* %arrayidx110, align 8, !dbg !616, !tbaa !617
  %indvars.iv.next325 = add i64 %indvars.iv324, 1, !dbg !615
  %lftr.wideiv326 = trunc i64 %indvars.iv.next325 to i32, !dbg !615
  %exitcond327 = icmp eq i32 %lftr.wideiv326, %call58, !dbg !615
  br i1 %exitcond327, label %for.end113, label %for.body104, !dbg !615

for.end113:                                       ; preds = %for.body104
  call void @llvm.dbg.value(metadata !{double** %bJ}, i64 0, metadata !269), !dbg !606
  %add.ptr = getelementptr inbounds double* %add.ptr307, i64 %idx.ext, !dbg !606
  call void @llvm.dbg.value(metadata !{double* %uglygep330331}, i64 0, metadata !269), !dbg !606
  %add.ptr115 = getelementptr inbounds double* %rhs.0305, i64 %idx.ext114, !dbg !584
  call void @llvm.dbg.value(metadata !{double* %add.ptr115}, i64 0, metadata !270), !dbg !584
  %inc117 = add nsw i32 %jrhs.0304, 1, !dbg !605
  call void @llvm.dbg.value(metadata !{i32 %inc117}, i64 0, metadata !274), !dbg !605
  call void @llvm.dbg.value(metadata !{i32* %nrhs}, i64 0, metadata !282), !dbg !605
  %cmp98 = icmp slt i32 %inc117, %27, !dbg !605
  br i1 %cmp98, label %for.body104.lr.ph, label %for.cond97.if.end160.loopexit302_crit_edge, !dbg !605

for.body131.lr.ph:                                ; preds = %for.end149, %for.cond128.preheader.lr.ph
  %add.ptr152299 = phi double* [ %bJ.promoted, %for.cond128.preheader.lr.ph ], [ %add.ptr152, %for.end149 ]
  %rhs.1298 = phi double* [ %call92, %for.cond128.preheader.lr.ph ], [ %add.ptr155, %for.end149 ]
  %jrhs.1297 = phi i32 [ 0, %for.cond128.preheader.lr.ph ], [ %inc157, %for.end149 ]
  br label %for.body131, !dbg !618

for.body131:                                      ; preds = %for.body131, %for.body131.lr.ph
  %indvars.iv318 = phi i64 [ 0, %for.body131.lr.ph ], [ %indvars.iv.next319, %for.body131 ]
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !286), !dbg !612
  %arrayidx133 = getelementptr inbounds i32* %34, i64 %indvars.iv318, !dbg !612
  %43 = load i32* %arrayidx133, align 4, !dbg !612, !tbaa !534
  call void @llvm.dbg.value(metadata !{i32 %43}, i64 0, metadata !276), !dbg !612
  %mul134 = shl nsw i32 %43, 1, !dbg !619
  %idxprom135 = sext i32 %mul134 to i64, !dbg !619
  %arrayidx136 = getelementptr inbounds double* %rhs.1298, i64 %idxprom135, !dbg !619
  %44 = load double* %arrayidx136, align 8, !dbg !619, !tbaa !617
  %45 = trunc i64 %indvars.iv318 to i32, !dbg !619
  %mul137 = shl nsw i32 %45, 1, !dbg !619
  %idxprom138 = sext i32 %mul137 to i64, !dbg !619
  call void @llvm.dbg.value(metadata !{double** %bJ}, i64 0, metadata !269), !dbg !619
  %arrayidx139 = getelementptr inbounds double* %add.ptr152299, i64 %idxprom138, !dbg !619
  store double %44, double* %arrayidx139, align 8, !dbg !619, !tbaa !617
  %add290 = or i32 %mul134, 1, !dbg !620
  %idxprom141 = sext i32 %add290 to i64, !dbg !620
  %arrayidx142 = getelementptr inbounds double* %rhs.1298, i64 %idxprom141, !dbg !620
  %46 = load double* %arrayidx142, align 8, !dbg !620, !tbaa !617
  %add144291 = or i32 %mul137, 1, !dbg !620
  %idxprom145 = sext i32 %add144291 to i64, !dbg !620
  call void @llvm.dbg.value(metadata !{double** %bJ}, i64 0, metadata !269), !dbg !620
  %arrayidx146 = getelementptr inbounds double* %add.ptr152299, i64 %idxprom145, !dbg !620
  store double %46, double* %arrayidx146, align 8, !dbg !620, !tbaa !617
  %indvars.iv.next319 = add i64 %indvars.iv318, 1, !dbg !618
  %lftr.wideiv320 = trunc i64 %indvars.iv.next319 to i32, !dbg !618
  %exitcond321 = icmp eq i32 %lftr.wideiv320, %call58, !dbg !618
  br i1 %exitcond321, label %for.end149, label %for.body131, !dbg !618

for.end149:                                       ; preds = %for.body131
  call void @llvm.dbg.value(metadata !{double** %bJ}, i64 0, metadata !269), !dbg !611
  %add.ptr152 = getelementptr inbounds double* %add.ptr152299, i64 %idx.ext151, !dbg !611
  call void @llvm.dbg.value(metadata !{double* %uglygep323}, i64 0, metadata !269), !dbg !611
  %add.ptr155 = getelementptr inbounds double* %rhs.1298, i64 %idx.ext154, !dbg !580
  call void @llvm.dbg.value(metadata !{double* %add.ptr155}, i64 0, metadata !270), !dbg !580
  %inc157 = add nsw i32 %jrhs.1297, 1, !dbg !610
  call void @llvm.dbg.value(metadata !{i32 %inc157}, i64 0, metadata !274), !dbg !610
  call void @llvm.dbg.value(metadata !{i32* %nrhs}, i64 0, metadata !282), !dbg !610
  %cmp125 = icmp slt i32 %inc157, %33, !dbg !610
  br i1 %cmp125, label %for.body131.lr.ph, label %for.cond124.if.end160.loopexit_crit_edge, !dbg !610

for.cond124.if.end160.loopexit_crit_edge:         ; preds = %for.end149
  %uglygep323 = bitcast i8* %uglygep to double*
  call void @llvm.dbg.value(metadata !{double* %uglygep323}, i64 0, metadata !269), !dbg !611
  store double* %uglygep323, double** %bJ, align 8, !dbg !611, !tbaa !542
  br label %if.end160, !dbg !610

for.cond97.if.end160.loopexit302_crit_edge:       ; preds = %for.end113
  %uglygep330331 = bitcast i8* %uglygep330 to double*
  call void @llvm.dbg.value(metadata !{double* %uglygep330331}, i64 0, metadata !269), !dbg !606
  store double* %uglygep330331, double** %bJ, align 8, !dbg !606, !tbaa !542
  br label %if.end160, !dbg !605

if.end160:                                        ; preds = %for.cond97.preheader, %for.cond97.if.end160.loopexit302_crit_edge, %for.cond124.preheader, %for.cond124.if.end160.loopexit_crit_edge, %if.end91
  br i1 %cmp161, label %if.then163, label %if.end168, !dbg !579

if.then163:                                       ; preds = %if.end160
  %call164 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([27 x i8]* @.str6, i64 0, i64 0), i32 %17, %struct._SubMtx* %call82) #6, !dbg !621
  %call165 = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !623
  %call166 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call82, %struct._IO_FILE* %msgFile) #6, !dbg !624
  %call167 = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !625
  br label %if.end168, !dbg !626

if.end168:                                        ; preds = %if.then163, %if.end160
  br i1 %cmp63, label %for.body176.lr.ph, label %for.inc188, !dbg !627

for.body176.lr.ph:                                ; preds = %if.end168
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !286), !dbg !628
  %47 = load i32** %rowindJ, align 8, !dbg !628, !tbaa !542
  br label %for.body176, !dbg !632

for.body176:                                      ; preds = %for.body176, %for.body176.lr.ph
  %indvars.iv332 = phi i64 [ 0, %for.body176.lr.ph ], [ %indvars.iv.next333, %for.body176 ]
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !286), !dbg !628
  %arrayidx178 = getelementptr inbounds i32* %47, i64 %indvars.iv332, !dbg !628
  %48 = load i32* %arrayidx178, align 4, !dbg !628, !tbaa !534
  %idxprom179 = sext i32 %48 to i64, !dbg !628
  %arrayidx180 = getelementptr inbounds i32* %rowind.0, i64 %idxprom179, !dbg !628
  %49 = load i32* %arrayidx180, align 4, !dbg !628, !tbaa !534
  store i32 %49, i32* %arrayidx178, align 4, !dbg !628, !tbaa !534
  %indvars.iv.next333 = add i64 %indvars.iv332, 1, !dbg !632
  %lftr.wideiv334 = trunc i64 %indvars.iv.next333 to i32, !dbg !632
  %exitcond335 = icmp eq i32 %lftr.wideiv334, %call58, !dbg !632
  br i1 %exitcond335, label %for.inc188, label %for.body176, !dbg !632

for.inc188:                                       ; preds = %for.body176, %lor.lhs.false, %land.lhs.true, %if.end168
  %indvars.iv.next338 = add i64 %indvars.iv337, 1, !dbg !568
  %inc189 = add nsw i32 %J.1312, 1, !dbg !568
  call void @llvm.dbg.value(metadata !{i32 %inc189}, i64 0, metadata !275), !dbg !568
  %50 = trunc i64 %indvars.iv.next338 to i32, !dbg !568
  %cmp49 = icmp slt i32 %50, %call17, !dbg !568
  br i1 %cmp49, label %for.body51, label %for.end190, !dbg !568

for.end190:                                       ; preds = %for.inc188, %for.end47
  %p_agg.0353 = phi %struct._SubMtx** [ null, %for.end47 ], [ %9, %for.inc188 ]
  %cmp192 = icmp eq i32 %localrhs.0, 84, !dbg !633
  br i1 %cmp192, label %if.then194, label %if.end195, !dbg !633

if.then194:                                       ; preds = %for.end190
  call void @IVfree(i32* %rowmap.0) #6, !dbg !634
  br label %if.end195, !dbg !636

if.end195:                                        ; preds = %if.then194, %for.end190
  ret %struct._SubMtx** %p_agg.0353, !dbg !637
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @IVfprintf(%struct._IO_FILE*, i32, i32*) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #3

; Function Attrs: optsize
declare i32 @FrontMtx_nfront(%struct._FrontMtx*) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: optsize
declare void @DenseMtx_dimensions(%struct._DenseMtx*, i32*, i32*) #2

; Function Attrs: optsize
declare i32 @FrontMtx_frontSize(%struct._FrontMtx*, i32) #2

; Function Attrs: optsize
declare void @FrontMtx_rowIndices(%struct._FrontMtx*, i32, i32*, i32**) #2

; Function Attrs: optsize
declare i32 @SubMtx_nbytesNeeded(i32, i32, i32, i32, i32) #2

; Function Attrs: optsize
declare %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager*, i32) #2

; Function Attrs: optsize
declare void @SubMtx_init(%struct._SubMtx*, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: optsize
declare double* @DenseMtx_entries(%struct._DenseMtx*) #2

; Function Attrs: optsize
declare void @SubMtx_denseInfo(%struct._SubMtx*, i32*, i32*, i32*, i32*, double**) #2

; Function Attrs: optsize
declare i32 @SubMtx_writeForHumanEye(%struct._SubMtx*, %struct._IO_FILE*) #2

; Function Attrs: optsize
declare void @IVfree(i32*) #2

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_forwardVisit(%struct._FrontMtx* %frontmtx, i32 %J, i32 %nrhs, i32* %owners, i32 %myid, %struct._SubMtxManager* %mtxmanager, %struct._SubMtxList* %aggList, %struct._SubMtx** nocapture %p_mtx, i8* nocapture %frontIsDone, %struct._IP** nocapture %heads, %struct._SubMtx** nocapture %p_agg, i8* nocapture %status, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !313), !dbg !638
  tail call void @llvm.dbg.value(metadata !{i32 %J}, i64 0, metadata !314), !dbg !639
  tail call void @llvm.dbg.value(metadata !{i32 %nrhs}, i64 0, metadata !315), !dbg !640
  tail call void @llvm.dbg.value(metadata !{i32* %owners}, i64 0, metadata !316), !dbg !641
  tail call void @llvm.dbg.value(metadata !{i32 %myid}, i64 0, metadata !317), !dbg !642
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtxManager* %mtxmanager}, i64 0, metadata !318), !dbg !643
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtxList* %aggList}, i64 0, metadata !319), !dbg !644
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx** %p_mtx}, i64 0, metadata !320), !dbg !645
  tail call void @llvm.dbg.value(metadata !{i8* %frontIsDone}, i64 0, metadata !321), !dbg !646
  tail call void @llvm.dbg.value(metadata !{%struct._IP** %heads}, i64 0, metadata !322), !dbg !647
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx** %p_agg}, i64 0, metadata !323), !dbg !648
  tail call void @llvm.dbg.value(metadata !{i8* %status}, i64 0, metadata !324), !dbg !649
  tail call void @llvm.dbg.value(metadata !{i32 %msglvl}, i64 0, metadata !325), !dbg !650
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %msgFile}, i64 0, metadata !326), !dbg !651
  %call = tail call i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %J) #6, !dbg !652
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !332), !dbg !652
  %cmp = icmp eq i32 %call, 0, !dbg !652
  br i1 %cmp, label %if.then, label %if.end8, !dbg !652

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32* %owners, null, !dbg !653
  %idxprom4.pre = sext i32 %J to i64, !dbg !655
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !653

lor.lhs.false:                                    ; preds = %if.then
  %arrayidx = getelementptr inbounds i32* %owners, i64 %idxprom4.pre, !dbg !653
  %0 = load i32* %arrayidx, align 4, !dbg !653, !tbaa !534
  %cmp2 = icmp eq i32 %0, %myid, !dbg !653
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !653

if.then3:                                         ; preds = %if.then, %lor.lhs.false
  %arrayidx5 = getelementptr inbounds i8* %frontIsDone, i64 %idxprom4.pre, !dbg !655
  store i8 89, i8* %arrayidx5, align 1, !dbg !655, !tbaa !535
  br label %if.end, !dbg !657

if.end:                                           ; preds = %if.then3, %lor.lhs.false
  %idxprom6 = sext i32 %J to i64, !dbg !658
  %arrayidx7 = getelementptr inbounds i8* %status, i64 %idxprom6, !dbg !658
  store i8 70, i8* %arrayidx7, align 1, !dbg !658, !tbaa !535
  br label %return, !dbg !659

if.end8:                                          ; preds = %entry
  %idxprom9 = sext i32 %J to i64, !dbg !660
  %arrayidx10 = getelementptr inbounds %struct._IP** %heads, i64 %idxprom9, !dbg !660
  %1 = load %struct._IP** %arrayidx10, align 8, !dbg !660, !tbaa !542
  %cmp11 = icmp eq %struct._IP* %1, null, !dbg !660
  br i1 %cmp11, label %if.end28, label %if.then12, !dbg !660

if.then12:                                        ; preds = %if.end8
  %arrayidx14 = getelementptr inbounds %struct._SubMtx** %p_agg, i64 %idxprom9, !dbg !661
  %2 = load %struct._SubMtx** %arrayidx14, align 8, !dbg !661, !tbaa !542
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %2}, i64 0, metadata !329), !dbg !661
  %cmp15 = icmp eq %struct._SubMtx* %2, null, !dbg !661
  br i1 %cmp15, label %if.then16, label %if.end20, !dbg !661

if.then16:                                        ; preds = %if.then12
  %type = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 2, !dbg !663
  %3 = load i32* %type, align 4, !dbg !663, !tbaa !534
  %call17 = tail call fastcc %struct._SubMtx* @initBJ(i32 %3, i32 %J, i32 %call, i32 %nrhs, %struct._SubMtxManager* %mtxmanager) #8, !dbg !663
  store %struct._SubMtx* %call17, %struct._SubMtx** %arrayidx14, align 8, !dbg !663, !tbaa !542
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call17}, i64 0, metadata !329), !dbg !663
  br label %if.end20, !dbg !665

if.end20:                                         ; preds = %if.then16, %if.then12
  %BJ.0 = phi %struct._SubMtx* [ %call17, %if.then16 ], [ %2, %if.then12 ]
  %cmp21 = icmp sgt i32 %msglvl, 3, !dbg !666
  br i1 %cmp21, label %if.then22, label %if.end27, !dbg !666

if.then22:                                        ; preds = %if.end20
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([11 x i8]* @.str7, i64 0, i64 0), %struct._SubMtx* %BJ.0) #6, !dbg !667
  %call24 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !669
  %call25 = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %BJ.0, %struct._IO_FILE* %msgFile) #6, !dbg !670
  %call26 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !671
  br label %if.end27, !dbg !672

if.end27:                                         ; preds = %if.end20, %if.then22
  tail call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !673) #5, !dbg !675
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %BJ.0}, i64 0, metadata !676) #5, !dbg !677
  tail call void @llvm.dbg.value(metadata !{i32 %J}, i64 0, metadata !678) #5, !dbg !679
  tail call void @llvm.dbg.value(metadata !{%struct._IP** %heads}, i64 0, metadata !680) #5, !dbg !681
  tail call void @llvm.dbg.value(metadata !{i8* %frontIsDone}, i64 0, metadata !682) #5, !dbg !683
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx** %p_mtx}, i64 0, metadata !684) #5, !dbg !685
  tail call void @llvm.dbg.value(metadata !{i32 %msglvl}, i64 0, metadata !686) #5, !dbg !687
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %msgFile}, i64 0, metadata !688) #5, !dbg !689
  %4 = load %struct._IP** %arrayidx10, align 8, !dbg !690, !tbaa !542
  tail call void @llvm.dbg.value(metadata !{%struct._IP* %4}, i64 0, metadata !692) #5, !dbg !690
  store %struct._IP* null, %struct._IP** %arrayidx10, align 8, !dbg !690, !tbaa !542
  %cmp135.i = icmp eq %struct._IP* %4, null, !dbg !690
  br i1 %cmp135.i, label %if.end28, label %for.body.lr.ph.i, !dbg !690

for.body.lr.ph.i:                                 ; preds = %if.end27
  %symmetryflag.i = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3, !dbg !693
  br label %for.body.i, !dbg !690

for.body.i:                                       ; preds = %for.cond.backedge.i, %for.body.lr.ph.i
  %ip.0136.i = phi %struct._IP* [ %4, %for.body.lr.ph.i ], [ %6, %for.cond.backedge.i ]
  %val.i = getelementptr inbounds %struct._IP* %ip.0136.i, i64 0, i32 0, !dbg !697
  %5 = load i32* %val.i, align 4, !dbg !697, !tbaa !534
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !698) #5, !dbg !697
  %next.i = getelementptr inbounds %struct._IP* %ip.0136.i, i64 0, i32 1, !dbg !697
  %6 = load %struct._IP** %next.i, align 8, !dbg !697, !tbaa !542
  tail call void @llvm.dbg.value(metadata !{%struct._IP* %6}, i64 0, metadata !699) #5, !dbg !697
  %idxprom4.i = sext i32 %5 to i64, !dbg !700
  %arrayidx5.i = getelementptr inbounds i8* %frontIsDone, i64 %idxprom4.i, !dbg !700
  br i1 %cmp21, label %if.then.i, label %if.end.i, !dbg !702

if.then.i:                                        ; preds = %for.body.i
  %7 = load i8* %arrayidx5.i, align 1, !dbg !700, !tbaa !535
  %conv.i = sext i8 %7 to i32, !dbg !700
  %arrayidx7.i = getelementptr inbounds %struct._SubMtx** %p_mtx, i64 %idxprom4.i, !dbg !700
  %8 = load %struct._SubMtx** %arrayidx7.i, align 8, !dbg !700, !tbaa !542
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([40 x i8]* @.str45, i64 0, i64 0), i32 %5, i32 %conv.i, i32 %5, %struct._SubMtx* %8) #6, !dbg !700
  %call8.i = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !703
  br label %if.end.i, !dbg !704

if.end.i:                                         ; preds = %if.then.i, %for.body.i
  %9 = load i8* %arrayidx5.i, align 1, !dbg !705, !tbaa !535
  %cmp12.i = icmp eq i8 %9, 89, !dbg !705
  br i1 %cmp12.i, label %if.then14.i, label %if.else74.i, !dbg !705

if.then14.i:                                      ; preds = %if.end.i
  %arrayidx16.i = getelementptr inbounds %struct._SubMtx** %p_mtx, i64 %idxprom4.i, !dbg !706
  %10 = load %struct._SubMtx** %arrayidx16.i, align 8, !dbg !706, !tbaa !542
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %10}, i64 0, metadata !707) #5, !dbg !706
  %cmp17.i = icmp eq %struct._SubMtx* %10, null, !dbg !706
  br i1 %cmp17.i, label %for.cond.backedge.i, label %if.then19.i, !dbg !706

for.cond.backedge.i:                              ; preds = %if.else74.i, %if.then68.i, %if.end65.i, %if.then14.i
  %cmp.i = icmp eq %struct._IP* %6, null, !dbg !690
  br i1 %cmp.i, label %if.end28.loopexit, label %for.body.i, !dbg !690

if.then19.i:                                      ; preds = %if.then14.i
  br i1 %cmp21, label %if.then22.i, label %if.end26.i, !dbg !708

if.then22.i:                                      ; preds = %if.then19.i
  %call23.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([25 x i8]* @.str46, i64 0, i64 0), %struct._SubMtx* %10) #6, !dbg !709
  %call24.i = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %10, %struct._IO_FILE* %msgFile) #6, !dbg !711
  %call25.i = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !712
  br label %if.end26.i, !dbg !713

if.end26.i:                                       ; preds = %if.then19.i, %if.then22.i
  %11 = load i32* %symmetryflag.i, align 4, !dbg !693, !tbaa !534
  %cmp27.i = icmp eq i32 %11, 2, !dbg !693
  br i1 %cmp27.i, label %if.then29.i, label %if.else.i, !dbg !693

if.then29.i:                                      ; preds = %if.end26.i
  %call30.i = tail call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %J, i32 %5) #6, !dbg !714
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call30.i}, i64 0, metadata !716) #5, !dbg !714
  %cmp31.i = icmp eq %struct._SubMtx* %call30.i, null, !dbg !714
  br i1 %cmp31.i, label %if.end65.i, label %if.then33.i, !dbg !714

if.then33.i:                                      ; preds = %if.then29.i
  br i1 %cmp21, label %if.then36.i, label %if.end40.i, !dbg !717

if.then36.i:                                      ; preds = %if.then33.i
  %call37.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([12 x i8]* @.str47, i64 0, i64 0), %struct._SubMtx* %call30.i) #6, !dbg !719
  %call38.i = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call30.i, %struct._IO_FILE* %msgFile) #6, !dbg !721
  %call39.i = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !722
  br label %if.end40.i, !dbg !723

if.end40.i:                                       ; preds = %if.then36.i, %if.then33.i
  tail call void @SubMtx_solveupd(%struct._SubMtx* %BJ.0, %struct._SubMtx* %call30.i, %struct._SubMtx* %10) #6, !dbg !724
  br label %if.end65.i, !dbg !725

if.else.i:                                        ; preds = %if.end26.i
  %call42.i = tail call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %5, i32 %J) #6, !dbg !726
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call42.i}, i64 0, metadata !728) #5, !dbg !726
  %cmp43.i = icmp eq %struct._SubMtx* %call42.i, null, !dbg !726
  br i1 %cmp43.i, label %if.end65.i, label %if.then45.i, !dbg !726

if.then45.i:                                      ; preds = %if.else.i
  br i1 %cmp21, label %if.then48.i, label %if.end52.i, !dbg !729

if.then48.i:                                      ; preds = %if.then45.i
  %call49.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([12 x i8]* @.str48, i64 0, i64 0), %struct._SubMtx* %call42.i) #6, !dbg !731
  %call50.i = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call42.i, %struct._IO_FILE* %msgFile) #6, !dbg !733
  %call51.i = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !734
  br label %if.end52.i, !dbg !735

if.end52.i:                                       ; preds = %if.then48.i, %if.then45.i
  %12 = load i32* %symmetryflag.i, align 4, !dbg !736, !tbaa !534
  switch i32 %12, label %if.end65.i [
    i32 0, label %if.then56.i
    i32 1, label %if.then61.i
  ], !dbg !736

if.then56.i:                                      ; preds = %if.end52.i
  tail call void @SubMtx_solveupdT(%struct._SubMtx* %BJ.0, %struct._SubMtx* %call42.i, %struct._SubMtx* %10) #6, !dbg !737
  br label %if.end65.i, !dbg !739

if.then61.i:                                      ; preds = %if.end52.i
  tail call void @SubMtx_solveupdH(%struct._SubMtx* %BJ.0, %struct._SubMtx* %call42.i, %struct._SubMtx* %10) #6, !dbg !740
  br label %if.end65.i, !dbg !742

if.end65.i:                                       ; preds = %if.then61.i, %if.then56.i, %if.end52.i, %if.else.i, %if.end40.i, %if.then29.i
  br i1 %cmp21, label %if.then68.i, label %for.cond.backedge.i, !dbg !743

if.then68.i:                                      ; preds = %if.end65.i
  %call69.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([25 x i8]* @.str49, i64 0, i64 0), %struct._SubMtx* %BJ.0) #6, !dbg !744
  %call70.i = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %BJ.0, %struct._IO_FILE* %msgFile) #6, !dbg !746
  %call71.i = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !747
  br label %for.cond.backedge.i, !dbg !748

if.else74.i:                                      ; preds = %if.end.i
  %13 = load %struct._IP** %arrayidx10, align 8, !dbg !749, !tbaa !542
  store %struct._IP* %13, %struct._IP** %next.i, align 8, !dbg !749, !tbaa !542
  store %struct._IP* %ip.0136.i, %struct._IP** %arrayidx10, align 8, !dbg !751, !tbaa !542
  br label %for.cond.backedge.i

if.end28.loopexit:                                ; preds = %for.cond.backedge.i
  %.pre = load %struct._IP** %arrayidx10, align 8, !dbg !752, !tbaa !542
  %phitmp = icmp eq %struct._IP* %.pre, null
  br label %if.end28

if.end28:                                         ; preds = %if.end28.loopexit, %if.end27, %if.end8
  %14 = phi i1 [ %phitmp, %if.end28.loopexit ], [ true, %if.end27 ], [ true, %if.end8 ]
  %. = select i1 %14, i32 89, i32 78, !dbg !753
  %cmp34 = icmp eq %struct._SubMtxList* %aggList, null, !dbg !755
  br i1 %cmp34, label %if.end55, label %land.lhs.true, !dbg !755

land.lhs.true:                                    ; preds = %if.end28
  %arrayidx36 = getelementptr inbounds i32* %owners, i64 %idxprom9, !dbg !755
  %15 = load i32* %arrayidx36, align 4, !dbg !755, !tbaa !534
  %cmp37 = icmp eq i32 %15, %myid, !dbg !755
  br i1 %cmp37, label %if.then38, label %if.end55, !dbg !755

if.then38:                                        ; preds = %land.lhs.true
  tail call void @llvm.dbg.value(metadata !756, i64 0, metadata !327), !dbg !757
  %arrayidx40 = getelementptr inbounds %struct._SubMtx** %p_agg, i64 %idxprom9, !dbg !759
  %16 = load %struct._SubMtx** %arrayidx40, align 8, !dbg !759, !tbaa !542
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %16}, i64 0, metadata !329), !dbg !759
  %cmp41 = icmp eq %struct._SubMtx* %16, null, !dbg !759
  br i1 %cmp41, label %if.then42, label %if.end44, !dbg !759

if.then42:                                        ; preds = %if.then38
  %17 = load %struct._IO_FILE** @stderr, align 8, !dbg !760, !tbaa !542
  %call43 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([48 x i8]* @.str8, i64 0, i64 0), i32 %J) #6, !dbg !760
  tail call void @exit(i32 -1) #7, !dbg !762
  unreachable, !dbg !762

if.end44:                                         ; preds = %if.then38
  tail call fastcc void @assembleAggregates(i32 %J, %struct._SubMtx* %16, %struct._SubMtxList* %aggList, %struct._SubMtxManager* %mtxmanager, i32 %msglvl, %struct._IO_FILE* %msgFile) #8, !dbg !763
  %call45 = tail call i32 @SubMtxList_isCountZero(%struct._SubMtxList* %aggList, i32 %J) #6, !dbg !764
  %cmp46 = icmp eq i32 %call45, 1, !dbg !764
  br i1 %cmp46, label %if.then47, label %if.end55, !dbg !764

if.then47:                                        ; preds = %if.end44
  %cmp48 = icmp sgt i32 %msglvl, 3, !dbg !765
  br i1 %cmp48, label %if.then49, label %if.end52, !dbg !765

if.then49:                                        ; preds = %if.then47
  %18 = tail call i64 @fwrite(i8* getelementptr inbounds ([27 x i8]* @.str9, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %msgFile), !dbg !767
  %call51 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !769
  br label %if.end52, !dbg !770

if.end52:                                         ; preds = %if.then49, %if.then47
  tail call fastcc void @assembleAggregates(i32 %J, %struct._SubMtx* %16, %struct._SubMtxList* %aggList, %struct._SubMtxManager* %mtxmanager, i32 %msglvl, %struct._IO_FILE* %msgFile) #8, !dbg !771
  tail call void @llvm.dbg.value(metadata !772, i64 0, metadata !327), !dbg !773
  br label %if.end55, !dbg !774

if.end55:                                         ; preds = %land.lhs.true, %if.end28, %if.end44, %if.end52
  %aggDone.0 = phi i32 [ 89, %if.end52 ], [ 78, %if.end44 ], [ 89, %if.end28 ], [ 89, %land.lhs.true ]
  %cmp56 = icmp sgt i32 %msglvl, 3, !dbg !775
  br i1 %cmp56, label %if.then57, label %if.end61, !dbg !775

if.then57:                                        ; preds = %if.end55
  %call59 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([30 x i8]* @.str10, i64 0, i64 0), i32 %., i32 %aggDone.0) #6, !dbg !776
  %call60 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !778
  br label %if.end61, !dbg !779

if.end61:                                         ; preds = %if.then57, %if.end55
  %cmp67 = icmp eq i32 %aggDone.0, 89, !dbg !780
  %or.cond = and i1 %14, %cmp67, !dbg !780
  br i1 %or.cond, label %if.then69, label %return, !dbg !780

if.then69:                                        ; preds = %if.end61
  %arrayidx71 = getelementptr inbounds %struct._SubMtx** %p_agg, i64 %idxprom9, !dbg !781
  %19 = load %struct._SubMtx** %arrayidx71, align 8, !dbg !781, !tbaa !542
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %19}, i64 0, metadata !329), !dbg !781
  %cmp72 = icmp eq i32* %owners, null, !dbg !783
  br i1 %cmp72, label %if.then79, label %lor.lhs.false74, !dbg !783

lor.lhs.false74:                                  ; preds = %if.then69
  %arrayidx76 = getelementptr inbounds i32* %owners, i64 %idxprom9, !dbg !783
  %20 = load i32* %arrayidx76, align 4, !dbg !783, !tbaa !534
  %cmp77 = icmp eq i32 %20, %myid, !dbg !783
  br i1 %cmp77, label %if.then79, label %if.else119, !dbg !783

if.then79:                                        ; preds = %lor.lhs.false74, %if.then69
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3, !dbg !784
  %21 = load i32* %symmetryflag, align 4, !dbg !784, !tbaa !534
  %cmp80 = icmp eq i32 %21, 2, !dbg !784
  br i1 %cmp80, label %if.then82, label %if.else88, !dbg !784

if.then82:                                        ; preds = %if.then79
  %call83 = tail call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %J, i32 %J) #6, !dbg !786
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call83}, i64 0, metadata !330), !dbg !786
  %cmp84 = icmp eq %struct._SubMtx* %call83, null, !dbg !788
  br i1 %cmp84, label %if.end105, label %if.then86, !dbg !788

if.then86:                                        ; preds = %if.then82
  tail call void @SubMtx_solve(%struct._SubMtx* %call83, %struct._SubMtx* %19) #6, !dbg !789
  br label %if.end105, !dbg !791

if.else88:                                        ; preds = %if.then79
  %call89 = tail call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J, i32 %J) #6, !dbg !792
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call89}, i64 0, metadata !331), !dbg !792
  %cmp90 = icmp eq %struct._SubMtx* %call89, null, !dbg !794
  br i1 %cmp90, label %if.end105, label %if.then92, !dbg !794

if.then92:                                        ; preds = %if.else88
  %22 = load i32* %symmetryflag, align 4, !dbg !795, !tbaa !534
  switch i32 %22, label %if.end105 [
    i32 0, label %if.then96
    i32 1, label %if.then101
  ], !dbg !795

if.then96:                                        ; preds = %if.then92
  tail call void @SubMtx_solveT(%struct._SubMtx* %call89, %struct._SubMtx* %19) #6, !dbg !797
  br label %if.end105, !dbg !799

if.then101:                                       ; preds = %if.then92
  tail call void @SubMtx_solveH(%struct._SubMtx* %call89, %struct._SubMtx* %19) #6, !dbg !800
  br label %if.end105, !dbg !802

if.end105:                                        ; preds = %if.then92, %if.then82, %if.else88, %if.then101, %if.then96, %if.then86
  %cmp106 = icmp sgt i32 %msglvl, 1, !dbg !803
  br i1 %cmp106, label %if.then108, label %if.end112, !dbg !803

if.then108:                                       ; preds = %if.end105
  %23 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str11, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %msgFile), !dbg !804
  %call110 = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %19, %struct._IO_FILE* %msgFile) #6, !dbg !806
  %call111 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !807
  br label %if.end112, !dbg !808

if.end112:                                        ; preds = %if.then108, %if.end105
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx71, align 8, !dbg !809, !tbaa !542
  %arrayidx116 = getelementptr inbounds %struct._SubMtx** %p_mtx, i64 %idxprom9, !dbg !810
  store %struct._SubMtx* %19, %struct._SubMtx** %arrayidx116, align 8, !dbg !810, !tbaa !542
  %arrayidx118 = getelementptr inbounds i8* %frontIsDone, i64 %idxprom9, !dbg !811
  store i8 89, i8* %arrayidx118, align 1, !dbg !811, !tbaa !535
  br label %if.end132, !dbg !812

if.else119:                                       ; preds = %lor.lhs.false74
  %cmp120 = icmp eq %struct._SubMtx* %19, null, !dbg !813
  br i1 %cmp120, label %if.end132, label %if.then122, !dbg !813

if.then122:                                       ; preds = %if.else119
  br i1 %cmp56, label %if.then125, label %if.end128, !dbg !814

if.then125:                                       ; preds = %if.then122
  %24 = tail call i64 @fwrite(i8* getelementptr inbounds ([34 x i8]* @.str12, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %msgFile), !dbg !816
  %call127 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !818
  br label %if.end128, !dbg !819

if.end128:                                        ; preds = %if.then125, %if.then122
  tail call void @SubMtxList_addObjectToList(%struct._SubMtxList* %aggList, %struct._SubMtx* %19, i32 %J) #6, !dbg !820
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx71, align 8, !dbg !821, !tbaa !542
  br label %if.end132, !dbg !822

if.end132:                                        ; preds = %if.else119, %if.end128, %if.end112
  %arrayidx134 = getelementptr inbounds i8* %status, i64 %idxprom9, !dbg !823
  store i8 70, i8* %arrayidx134, align 1, !dbg !823, !tbaa !535
  br label %return, !dbg !824

return:                                           ; preds = %if.end61, %if.end132, %if.end
  ret void, !dbg !825
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct._SubMtx* @initBJ(i32 %type, i32 %J, i32 %nJ, i32 %nrhs, %struct._SubMtxManager* %mtxmanager) #0 {
entry:
  %nJ.addr = alloca i32, align 4
  %nrhs.addr = alloca i32, align 4
  %entries = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32 %nJ}, i64 0, metadata !512), !dbg !826
  store i32 %nJ, i32* %nJ.addr, align 4, !tbaa !534
  call void @llvm.dbg.declare(metadata !{i32* %nJ.addr}, metadata !512), !dbg !826
  call void @llvm.dbg.value(metadata !{i32 %nrhs}, i64 0, metadata !513), !dbg !827
  store i32 %nrhs, i32* %nrhs.addr, align 4, !tbaa !534
  call void @llvm.dbg.declare(metadata !{i32* %nrhs.addr}, metadata !513), !dbg !827
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !515), !dbg !828
  call void @llvm.dbg.value(metadata !829, i64 0, metadata !516), !dbg !830
  call void @llvm.dbg.declare(metadata !{double** %entries}, metadata !518), !dbg !831
  call void @llvm.dbg.declare(metadata !{i32* %inc1}, metadata !519), !dbg !832
  call void @llvm.dbg.declare(metadata !{i32* %inc2}, metadata !520), !dbg !832
  call void @llvm.dbg.value(metadata !{i32* %nJ.addr}, i64 0, metadata !512), !dbg !833
  %mul = mul nsw i32 %nrhs, %nJ, !dbg !833
  %call = call i32 @SubMtx_nbytesNeeded(i32 %type, i32 1, i32 %nJ, i32 %nrhs, i32 %mul) #6, !dbg !833
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !521), !dbg !833
  %call1 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %mtxmanager, i32 %call) #6, !dbg !834
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call1}, i64 0, metadata !517), !dbg !834
  %cmp = icmp eq %struct._SubMtx* %call1, null, !dbg !835
  br i1 %cmp, label %if.then, label %if.end, !dbg !835

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !836, !tbaa !542
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str50, i64 0, i64 0), i32 %J) #6, !dbg !836
  call void @exit(i32 -1) #7, !dbg !838
  unreachable, !dbg !838

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata !{i32* %nJ.addr}, i64 0, metadata !512), !dbg !839
  %1 = load i32* %nJ.addr, align 4, !dbg !839, !tbaa !534
  call void @llvm.dbg.value(metadata !{i32* %nrhs.addr}, i64 0, metadata !513), !dbg !839
  %2 = load i32* %nrhs.addr, align 4, !dbg !839, !tbaa !534
  %mul3 = mul nsw i32 %2, %1, !dbg !839
  call void @SubMtx_init(%struct._SubMtx* %call1, i32 %type, i32 1, i32 %J, i32 0, i32 %1, i32 %2, i32 %mul3) #6, !dbg !839
  call void @SubMtx_denseInfo(%struct._SubMtx* %call1, i32* %nJ.addr, i32* %nrhs.addr, i32* %inc1, i32* %inc2, double** %entries) #6, !dbg !840
  switch i32 %type, label %if.end12 [
    i32 1, label %if.then5
    i32 2, label %if.then8
  ], !dbg !841

if.then5:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata !{i32* %nJ.addr}, i64 0, metadata !512), !dbg !842
  %3 = load i32* %nJ.addr, align 4, !dbg !842, !tbaa !534
  call void @llvm.dbg.value(metadata !{i32* %nrhs.addr}, i64 0, metadata !513), !dbg !842
  %4 = load i32* %nrhs.addr, align 4, !dbg !842, !tbaa !534
  %mul6 = mul nsw i32 %4, %3, !dbg !842
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !518), !dbg !842
  %5 = load double** %entries, align 8, !dbg !842, !tbaa !542
  call void @DVzero(i32 %mul6, double* %5) #6, !dbg !842
  br label %if.end12, !dbg !844

if.then8:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata !{i32* %nJ.addr}, i64 0, metadata !512), !dbg !845
  %6 = load i32* %nJ.addr, align 4, !dbg !845, !tbaa !534
  %mul9 = shl i32 %6, 1, !dbg !845
  call void @llvm.dbg.value(metadata !{i32* %nrhs.addr}, i64 0, metadata !513), !dbg !845
  %7 = load i32* %nrhs.addr, align 4, !dbg !845, !tbaa !534
  %mul10 = mul nsw i32 %mul9, %7, !dbg !845
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !518), !dbg !845
  %8 = load double** %entries, align 8, !dbg !845, !tbaa !542
  call void @DVzero(i32 %mul10, double* %8) #6, !dbg !845
  br label %if.end12, !dbg !847

if.end12:                                         ; preds = %if.end, %if.then8, %if.then5
  ret %struct._SubMtx* %call1, !dbg !848
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
  call void @llvm.dbg.value(metadata !{i32 %J}, i64 0, metadata !472), !dbg !849
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %BJ}, i64 0, metadata !473), !dbg !850
  call void @llvm.dbg.value(metadata !{%struct._SubMtxList* %aggList}, i64 0, metadata !474), !dbg !851
  call void @llvm.dbg.value(metadata !{%struct._SubMtxManager* %mtxmanager}, i64 0, metadata !475), !dbg !852
  call void @llvm.dbg.value(metadata !{i32 %msglvl}, i64 0, metadata !476), !dbg !853
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %msgFile}, i64 0, metadata !477), !dbg !854
  call void @llvm.dbg.declare(metadata !{double** %entBJ}, metadata !480), !dbg !855
  call void @llvm.dbg.declare(metadata !{double** %entBJhat}, metadata !481), !dbg !855
  call void @llvm.dbg.declare(metadata !{i32* %inc1}, metadata !482), !dbg !856
  call void @llvm.dbg.declare(metadata !{i32* %inc1hat}, metadata !483), !dbg !856
  call void @llvm.dbg.declare(metadata !{i32* %inc2}, metadata !484), !dbg !856
  call void @llvm.dbg.declare(metadata !{i32* %inc2hat}, metadata !485), !dbg !856
  call void @llvm.dbg.declare(metadata !{i32* %ncol}, metadata !486), !dbg !856
  call void @llvm.dbg.declare(metadata !{i32* %ncolhat}, metadata !487), !dbg !856
  call void @llvm.dbg.declare(metadata !{i32* %nrow}, metadata !488), !dbg !856
  call void @llvm.dbg.declare(metadata !{i32* %nrowhat}, metadata !489), !dbg !856
  %cmp = icmp eq %struct._SubMtx* %BJ, null, !dbg !857
  %cmp1 = icmp eq %struct._SubMtxList* %aggList, null, !dbg !857
  %or.cond = or i1 %cmp, %cmp1, !dbg !857
  br i1 %or.cond, label %if.then, label %if.end, !dbg !857

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !858, !tbaa !542
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str36, i64 0, i64 0), %struct._SubMtx* %BJ, %struct._SubMtxList* %aggList) #6, !dbg !858
  call void @exit(i32 -1) #7, !dbg !860
  unreachable, !dbg !860

if.end:                                           ; preds = %entry
  %rowid = getelementptr inbounds %struct._SubMtx* %BJ, i64 0, i32 2, !dbg !861
  %1 = load i32* %rowid, align 4, !dbg !861, !tbaa !534
  %call2 = call i32 @SubMtxList_isListNonempty(%struct._SubMtxList* %aggList, i32 %1) #6, !dbg !861
  %tobool = icmp eq i32 %call2, 0, !dbg !861
  br i1 %tobool, label %if.end63, label %if.then3, !dbg !861

if.then3:                                         ; preds = %if.end
  %cmp4 = icmp sgt i32 %msglvl, 3, !dbg !862
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !862

if.then5:                                         ; preds = %if.then3
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str37, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %msgFile), !dbg !864
  %call7 = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !866
  br label %if.end8, !dbg !867

if.end8:                                          ; preds = %if.then5, %if.then3
  call void @SubMtx_denseInfo(%struct._SubMtx* %BJ, i32* %nrow, i32* %ncol, i32* %inc1, i32* %inc2, double** %entBJ) #6, !dbg !868
  %cmp9 = icmp sgt i32 %msglvl, 2, !dbg !869
  br i1 %cmp9, label %if.then10, label %if.end14, !dbg !869

if.then10:                                        ; preds = %if.end8
  %3 = load i32* %rowid, align 4, !dbg !870, !tbaa !534
  %colid = getelementptr inbounds %struct._SubMtx* %BJ, i64 0, i32 3, !dbg !870
  %4 = load i32* %colid, align 4, !dbg !870, !tbaa !534
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !488), !dbg !870
  %5 = load i32* %nrow, align 4, !dbg !870, !tbaa !534
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !486), !dbg !870
  %6 = load i32* %ncol, align 4, !dbg !870, !tbaa !534
  call void @llvm.dbg.value(metadata !{i32* %inc1}, i64 0, metadata !482), !dbg !870
  %7 = load i32* %inc1, align 4, !dbg !870, !tbaa !534
  call void @llvm.dbg.value(metadata !{i32* %inc2}, i64 0, metadata !484), !dbg !870
  %8 = load i32* %inc2, align 4, !dbg !870, !tbaa !534
  call void @llvm.dbg.value(metadata !{double** %entBJ}, i64 0, metadata !480), !dbg !870
  %9 = load double** %entBJ, align 8, !dbg !870, !tbaa !542
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([58 x i8]* @.str38, i64 0, i64 0), i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, double* %9) #6, !dbg !870
  %call13 = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !872
  br label %if.end14, !dbg !873

if.end14:                                         ; preds = %if.then10, %if.end8
  %call15 = call %struct._SubMtx* @SubMtxList_getList(%struct._SubMtxList* %aggList, i32 %J) #6, !dbg !874
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call15}, i64 0, metadata !479), !dbg !874
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call15}, i64 0, metadata !478), !dbg !875
  %cmp16101 = icmp eq %struct._SubMtx* %call15, null, !dbg !875
  br i1 %cmp16101, label %for.end, label %if.end20, !dbg !875

if.end20:                                         ; preds = %if.end14, %for.inc
  %BJhat.0102 = phi %struct._SubMtx* [ %39, %for.inc ], [ %call15, %if.end14 ]
  call void @SubMtx_denseInfo(%struct._SubMtx* %BJhat.0102, i32* %nrowhat, i32* %ncolhat, i32* %inc1hat, i32* %inc2hat, double** %entBJhat) #6, !dbg !877
  br i1 %cmp9, label %if.then22, label %if.end27, !dbg !879

if.then22:                                        ; preds = %if.end20
  %rowid23 = getelementptr inbounds %struct._SubMtx* %BJhat.0102, i64 0, i32 2, !dbg !880
  %10 = load i32* %rowid23, align 4, !dbg !880, !tbaa !534
  %colid24 = getelementptr inbounds %struct._SubMtx* %BJhat.0102, i64 0, i32 3, !dbg !880
  %11 = load i32* %colid24, align 4, !dbg !880, !tbaa !534
  call void @llvm.dbg.value(metadata !{i32* %nrowhat}, i64 0, metadata !489), !dbg !880
  %12 = load i32* %nrowhat, align 4, !dbg !880, !tbaa !534
  call void @llvm.dbg.value(metadata !{i32* %ncolhat}, i64 0, metadata !487), !dbg !880
  %13 = load i32* %ncolhat, align 4, !dbg !880, !tbaa !534
  call void @llvm.dbg.value(metadata !{i32* %inc1hat}, i64 0, metadata !483), !dbg !880
  %14 = load i32* %inc1hat, align 4, !dbg !880, !tbaa !534
  call void @llvm.dbg.value(metadata !{i32* %inc2hat}, i64 0, metadata !485), !dbg !880
  %15 = load i32* %inc2hat, align 4, !dbg !880, !tbaa !534
  call void @llvm.dbg.value(metadata !{double** %entBJhat}, i64 0, metadata !481), !dbg !880
  %16 = load double** %entBJhat, align 8, !dbg !880, !tbaa !542
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([60 x i8]* @.str40, i64 0, i64 0), i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, double* %16) #6, !dbg !880
  %call26 = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !882
  br label %if.end27, !dbg !883

if.end27:                                         ; preds = %if.then22, %if.end20
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !488), !dbg !884
  %17 = load i32* %nrow, align 4, !dbg !884, !tbaa !534
  call void @llvm.dbg.value(metadata !{i32* %nrowhat}, i64 0, metadata !489), !dbg !884
  %18 = load i32* %nrowhat, align 4, !dbg !884, !tbaa !534
  %cmp28 = icmp eq i32 %17, %18, !dbg !884
  br i1 %cmp28, label %lor.lhs.false29, label %if.then37, !dbg !884

lor.lhs.false29:                                  ; preds = %if.end27
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !486), !dbg !884
  %19 = load i32* %ncol, align 4, !dbg !884, !tbaa !534
  call void @llvm.dbg.value(metadata !{i32* %ncolhat}, i64 0, metadata !487), !dbg !884
  %20 = load i32* %ncolhat, align 4, !dbg !884, !tbaa !534
  %cmp30 = icmp eq i32 %19, %20, !dbg !884
  br i1 %cmp30, label %lor.lhs.false31, label %if.then37, !dbg !884

lor.lhs.false31:                                  ; preds = %lor.lhs.false29
  call void @llvm.dbg.value(metadata !{i32* %inc1}, i64 0, metadata !482), !dbg !884
  %21 = load i32* %inc1, align 4, !dbg !884, !tbaa !534
  call void @llvm.dbg.value(metadata !{i32* %inc1hat}, i64 0, metadata !483), !dbg !884
  %22 = load i32* %inc1hat, align 4, !dbg !884, !tbaa !534
  %cmp32 = icmp eq i32 %21, %22, !dbg !884
  br i1 %cmp32, label %lor.lhs.false33, label %if.then37, !dbg !884

lor.lhs.false33:                                  ; preds = %lor.lhs.false31
  call void @llvm.dbg.value(metadata !{i32* %inc2}, i64 0, metadata !484), !dbg !884
  %23 = load i32* %inc2, align 4, !dbg !884, !tbaa !534
  call void @llvm.dbg.value(metadata !{i32* %inc2hat}, i64 0, metadata !485), !dbg !884
  %24 = load i32* %inc2hat, align 4, !dbg !884, !tbaa !534
  %cmp34 = icmp eq i32 %23, %24, !dbg !884
  br i1 %cmp34, label %lor.lhs.false35, label %if.then37, !dbg !884

lor.lhs.false35:                                  ; preds = %lor.lhs.false33
  call void @llvm.dbg.value(metadata !{double** %entBJhat}, i64 0, metadata !481), !dbg !884
  %25 = load double** %entBJhat, align 8, !dbg !884, !tbaa !542
  %cmp36 = icmp eq double* %25, null, !dbg !884
  br i1 %cmp36, label %if.then37, label %if.end39, !dbg !884

if.then37:                                        ; preds = %lor.lhs.false33, %lor.lhs.false31, %lor.lhs.false29, %if.end27, %lor.lhs.false35
  %26 = load %struct._IO_FILE** @stderr, align 8, !dbg !885, !tbaa !542
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str41, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %26), !dbg !885
  call void @exit(i32 -1) #7, !dbg !887
  unreachable, !dbg !887

if.end39:                                         ; preds = %lor.lhs.false35
  br i1 %cmp4, label %if.then41, label %if.end47, !dbg !888

if.then41:                                        ; preds = %if.end39
  %28 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8]* @.str42, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %msgFile), !dbg !889
  %call43 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %BJ, %struct._IO_FILE* %msgFile) #6, !dbg !891
  %29 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str43, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %msgFile), !dbg !892
  %call45 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %BJhat.0102, %struct._IO_FILE* %msgFile) #6, !dbg !893
  %call46 = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !894
  br label %if.end47, !dbg !895

if.end47:                                         ; preds = %if.then41, %if.end39
  %type = getelementptr inbounds %struct._SubMtx* %BJhat.0102, i64 0, i32 0, !dbg !896
  %30 = load i32* %type, align 4, !dbg !896, !tbaa !534
  switch i32 %30, label %for.inc [
    i32 1, label %if.then49
    i32 2, label %if.then52
  ], !dbg !896

if.then49:                                        ; preds = %if.end47
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !488), !dbg !897
  %31 = load i32* %nrow, align 4, !dbg !897, !tbaa !534
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !486), !dbg !897
  %32 = load i32* %ncol, align 4, !dbg !897, !tbaa !534
  %mul = mul nsw i32 %32, %31, !dbg !897
  call void @llvm.dbg.value(metadata !{double** %entBJ}, i64 0, metadata !480), !dbg !897
  %33 = load double** %entBJ, align 8, !dbg !897, !tbaa !542
  call void @llvm.dbg.value(metadata !{double** %entBJhat}, i64 0, metadata !481), !dbg !897
  %34 = load double** %entBJhat, align 8, !dbg !897, !tbaa !542
  call void @DVadd(i32 %mul, double* %33, double* %34) #6, !dbg !897
  br label %for.inc, !dbg !899

if.then52:                                        ; preds = %if.end47
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !488), !dbg !900
  %35 = load i32* %nrow, align 4, !dbg !900, !tbaa !534
  %mul53 = shl i32 %35, 1, !dbg !900
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !486), !dbg !900
  %36 = load i32* %ncol, align 4, !dbg !900, !tbaa !534
  %mul54 = mul nsw i32 %mul53, %36, !dbg !900
  call void @llvm.dbg.value(metadata !{double** %entBJ}, i64 0, metadata !480), !dbg !900
  %37 = load double** %entBJ, align 8, !dbg !900, !tbaa !542
  call void @llvm.dbg.value(metadata !{double** %entBJhat}, i64 0, metadata !481), !dbg !900
  %38 = load double** %entBJhat, align 8, !dbg !900, !tbaa !542
  call void @DVadd(i32 %mul54, double* %37, double* %38) #6, !dbg !900
  br label %for.inc, !dbg !902

for.inc:                                          ; preds = %if.end47, %if.then49, %if.then52
  %next = getelementptr inbounds %struct._SubMtx* %BJhat.0102, i64 0, i32 9, !dbg !875
  %39 = load %struct._SubMtx** %next, align 8, !dbg !875, !tbaa !542
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %39}, i64 0, metadata !478), !dbg !875
  %cmp16 = icmp eq %struct._SubMtx* %39, null, !dbg !875
  br i1 %cmp16, label %for.end, label %if.end20, !dbg !875

for.end:                                          ; preds = %for.inc, %if.end14
  call void @SubMtxManager_releaseListOfObjects(%struct._SubMtxManager* %mtxmanager, %struct._SubMtx* %call15) #6, !dbg !903
  br i1 %cmp4, label %if.then58, label %if.end63, !dbg !904

if.then58:                                        ; preds = %for.end
  %40 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str44, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %msgFile), !dbg !905
  %call60 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %BJ, %struct._IO_FILE* %msgFile) #6, !dbg !907
  %call61 = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !908
  br label %if.end63, !dbg !909

if.end63:                                         ; preds = %if.end, %for.end, %if.then58
  ret void, !dbg !910
}

; Function Attrs: optsize
declare i32 @SubMtxList_isCountZero(%struct._SubMtxList*, i32) #2

; Function Attrs: optsize
declare %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx*, i32, i32) #2

; Function Attrs: optsize
declare void @SubMtx_solve(%struct._SubMtx*, %struct._SubMtx*) #2

; Function Attrs: optsize
declare %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx*, i32, i32) #2

; Function Attrs: optsize
declare void @SubMtx_solveT(%struct._SubMtx*, %struct._SubMtx*) #2

; Function Attrs: optsize
declare void @SubMtx_solveH(%struct._SubMtx*, %struct._SubMtx*) #2

; Function Attrs: optsize
declare void @SubMtxList_addObjectToList(%struct._SubMtxList*, %struct._SubMtx*, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_diagonalVisit(%struct._FrontMtx* %frontmtx, i32 %J, i32* %owners, i32 %myid, %struct._SubMtx** nocapture %p_mtx, i8* nocapture %frontIsDone, %struct._SubMtx** nocapture %p_agg, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !337), !dbg !911
  tail call void @llvm.dbg.value(metadata !{i32 %J}, i64 0, metadata !338), !dbg !912
  tail call void @llvm.dbg.value(metadata !{i32* %owners}, i64 0, metadata !339), !dbg !913
  tail call void @llvm.dbg.value(metadata !{i32 %myid}, i64 0, metadata !340), !dbg !914
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx** %p_mtx}, i64 0, metadata !341), !dbg !915
  tail call void @llvm.dbg.value(metadata !{i8* %frontIsDone}, i64 0, metadata !342), !dbg !916
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx** %p_agg}, i64 0, metadata !343), !dbg !917
  tail call void @llvm.dbg.value(metadata !{i32 %msglvl}, i64 0, metadata !344), !dbg !918
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %msgFile}, i64 0, metadata !345), !dbg !919
  %cmp = icmp eq i32* %owners, null, !dbg !920
  %idxprom2.pre = sext i32 %J to i64, !dbg !921
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !920

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds i32* %owners, i64 %idxprom2.pre, !dbg !920
  %0 = load i32* %arrayidx, align 4, !dbg !920, !tbaa !534
  %cmp1 = icmp eq i32 %0, %myid, !dbg !920
  br i1 %cmp1, label %if.then, label %if.end30, !dbg !920

if.then:                                          ; preds = %entry, %lor.lhs.false
  %arrayidx3 = getelementptr inbounds %struct._SubMtx** %p_mtx, i64 %idxprom2.pre, !dbg !921
  %1 = load %struct._SubMtx** %arrayidx3, align 8, !dbg !921, !tbaa !542
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %1}, i64 0, metadata !346), !dbg !921
  %cmp4 = icmp eq %struct._SubMtx* %1, null, !dbg !921
  br i1 %cmp4, label %if.end27, label %if.then5, !dbg !921

if.then5:                                         ; preds = %if.then
  %cmp6 = icmp sgt i32 %msglvl, 3, !dbg !922
  br i1 %cmp6, label %if.end16.thread, label %if.end16, !dbg !922

if.end16.thread:                                  ; preds = %if.then5
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([11 x i8]* @.str7, i64 0, i64 0), %struct._SubMtx* %1) #6, !dbg !924
  %call8 = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %1, %struct._IO_FILE* %msgFile) #6, !dbg !926
  %call9 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !927
  %call1055 = tail call %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx* %frontmtx, i32 %J) #6, !dbg !928
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call10}, i64 0, metadata !348), !dbg !928
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([12 x i8]* @.str13, i64 0, i64 0), %struct._SubMtx* %call1055) #6, !dbg !929
  %call14 = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call1055, %struct._IO_FILE* %msgFile) #6, !dbg !931
  %call15 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !932
  tail call void @SubMtx_solve(%struct._SubMtx* %call1055, %struct._SubMtx* %1) #6, !dbg !933
  br label %if.then18, !dbg !934

if.end16:                                         ; preds = %if.then5
  %call10 = tail call %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx* %frontmtx, i32 %J) #6, !dbg !928
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call10}, i64 0, metadata !348), !dbg !928
  tail call void @SubMtx_solve(%struct._SubMtx* %call10, %struct._SubMtx* %1) #6, !dbg !933
  %cmp17 = icmp sgt i32 %msglvl, 1, !dbg !934
  br i1 %cmp17, label %if.then18, label %if.end22, !dbg !934

if.then18:                                        ; preds = %if.end16.thread, %if.end16
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([33 x i8]* @.str14, i64 0, i64 0), i32 %J) #6, !dbg !935
  %call20 = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %1, %struct._IO_FILE* %msgFile) #6, !dbg !937
  %call21 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !938
  br label %if.end22, !dbg !939

if.end22:                                         ; preds = %if.then18, %if.end16
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx3, align 8, !dbg !940, !tbaa !542
  %arrayidx26 = getelementptr inbounds %struct._SubMtx** %p_agg, i64 %idxprom2.pre, !dbg !941
  store %struct._SubMtx* %1, %struct._SubMtx** %arrayidx26, align 8, !dbg !941, !tbaa !542
  br label %if.end27, !dbg !942

if.end27:                                         ; preds = %if.then, %if.end22
  %arrayidx29 = getelementptr inbounds i8* %frontIsDone, i64 %idxprom2.pre, !dbg !943
  store i8 89, i8* %arrayidx29, align 1, !dbg !943, !tbaa !535
  br label %if.end30, !dbg !944

if.end30:                                         ; preds = %if.end27, %lor.lhs.false
  ret void, !dbg !945
}

; Function Attrs: optsize
declare %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx*, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_backwardVisit(%struct._FrontMtx* %frontmtx, i32 %J, i32 %nrhs, i32* %owners, i32 %myid, %struct._SubMtxManager* %mtxmanager, %struct._SubMtxList* %aggList, %struct._SubMtx** nocapture %p_mtx, i8* nocapture %frontIsDone, %struct._IP** nocapture %heads, %struct._SubMtx** nocapture %p_agg, i8* nocapture %status, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !351), !dbg !946
  tail call void @llvm.dbg.value(metadata !{i32 %J}, i64 0, metadata !352), !dbg !947
  tail call void @llvm.dbg.value(metadata !{i32 %nrhs}, i64 0, metadata !353), !dbg !948
  tail call void @llvm.dbg.value(metadata !{i32* %owners}, i64 0, metadata !354), !dbg !949
  tail call void @llvm.dbg.value(metadata !{i32 %myid}, i64 0, metadata !355), !dbg !950
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtxManager* %mtxmanager}, i64 0, metadata !356), !dbg !951
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtxList* %aggList}, i64 0, metadata !357), !dbg !952
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx** %p_mtx}, i64 0, metadata !358), !dbg !953
  tail call void @llvm.dbg.value(metadata !{i8* %frontIsDone}, i64 0, metadata !359), !dbg !954
  tail call void @llvm.dbg.value(metadata !{%struct._IP** %heads}, i64 0, metadata !360), !dbg !955
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx** %p_agg}, i64 0, metadata !361), !dbg !956
  tail call void @llvm.dbg.value(metadata !{i8* %status}, i64 0, metadata !362), !dbg !957
  tail call void @llvm.dbg.value(metadata !{i32 %msglvl}, i64 0, metadata !363), !dbg !958
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %msgFile}, i64 0, metadata !364), !dbg !959
  %cmp = icmp sgt i32 %msglvl, 1, !dbg !960
  br i1 %cmp, label %if.then, label %if.end, !dbg !960

if.then:                                          ; preds = %entry
  %call = tail call i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %J) #6, !dbg !961
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([45 x i8]* @.str15, i64 0, i64 0), i32 %J, i32 %call) #6, !dbg !961
  %call2 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !963
  br label %if.end, !dbg !964

if.end:                                           ; preds = %if.then, %entry
  %call3 = tail call i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %J) #6, !dbg !965
  tail call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !369), !dbg !965
  %cmp4 = icmp eq i32 %call3, 0, !dbg !965
  br i1 %cmp4, label %if.then5, label %if.end14, !dbg !965

if.then5:                                         ; preds = %if.end
  %cmp6 = icmp eq i32* %owners, null, !dbg !966
  %idxprom9.pre = sext i32 %J to i64, !dbg !968
  br i1 %cmp6, label %if.then8, label %lor.lhs.false, !dbg !966

lor.lhs.false:                                    ; preds = %if.then5
  %arrayidx = getelementptr inbounds i32* %owners, i64 %idxprom9.pre, !dbg !966
  %0 = load i32* %arrayidx, align 4, !dbg !966, !tbaa !534
  %cmp7 = icmp eq i32 %0, %myid, !dbg !966
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !966

if.then8:                                         ; preds = %if.then5, %lor.lhs.false
  %arrayidx10 = getelementptr inbounds i8* %frontIsDone, i64 %idxprom9.pre, !dbg !968
  store i8 89, i8* %arrayidx10, align 1, !dbg !968, !tbaa !535
  br label %if.end11, !dbg !970

if.end11:                                         ; preds = %if.then8, %lor.lhs.false
  %idxprom12 = sext i32 %J to i64, !dbg !971
  %arrayidx13 = getelementptr inbounds i8* %status, i64 %idxprom12, !dbg !971
  store i8 70, i8* %arrayidx13, align 1, !dbg !971, !tbaa !535
  br label %return, !dbg !972

if.end14:                                         ; preds = %if.end
  %idxprom17 = sext i32 %J to i64, !dbg !973
  %arrayidx18 = getelementptr inbounds %struct._IP** %heads, i64 %idxprom17, !dbg !973
  br i1 %cmp, label %if.then16, label %if.end21, !dbg !975

if.then16:                                        ; preds = %if.end14
  %1 = load %struct._IP** %arrayidx18, align 8, !dbg !973, !tbaa !542
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([17 x i8]* @.str16, i64 0, i64 0), i32 %J, %struct._IP* %1) #6, !dbg !973
  %call20 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !976
  br label %if.end21, !dbg !977

if.end21:                                         ; preds = %if.end14, %if.then16
  %2 = load %struct._IP** %arrayidx18, align 8, !dbg !978, !tbaa !542
  %cmp24 = icmp eq %struct._IP* %2, null, !dbg !978
  br i1 %cmp24, label %if.end40, label %if.then25, !dbg !978

if.then25:                                        ; preds = %if.end21
  %arrayidx27 = getelementptr inbounds %struct._SubMtx** %p_agg, i64 %idxprom17, !dbg !979
  %3 = load %struct._SubMtx** %arrayidx27, align 8, !dbg !979, !tbaa !542
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %3}, i64 0, metadata !368), !dbg !979
  %cmp28 = icmp eq %struct._SubMtx* %3, null, !dbg !979
  br i1 %cmp28, label %if.then29, label %if.end33, !dbg !979

if.then29:                                        ; preds = %if.then25
  %type = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 2, !dbg !981
  %4 = load i32* %type, align 4, !dbg !981, !tbaa !534
  %call30 = tail call fastcc %struct._SubMtx* @initBJ(i32 %4, i32 %J, i32 %call3, i32 %nrhs, %struct._SubMtxManager* %mtxmanager) #8, !dbg !981
  store %struct._SubMtx* %call30, %struct._SubMtx** %arrayidx27, align 8, !dbg !981, !tbaa !542
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call30}, i64 0, metadata !368), !dbg !981
  br label %if.end33, !dbg !983

if.end33:                                         ; preds = %if.then29, %if.then25
  %ZJ.0 = phi %struct._SubMtx* [ %call30, %if.then29 ], [ %3, %if.then25 ]
  %cmp34 = icmp sgt i32 %msglvl, 3, !dbg !984
  br i1 %cmp34, label %if.then35, label %if.end39, !dbg !984

if.then35:                                        ; preds = %if.end33
  %call36 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([11 x i8]* @.str17, i64 0, i64 0), %struct._SubMtx* %ZJ.0) #6, !dbg !985
  %call37 = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %ZJ.0, %struct._IO_FILE* %msgFile) #6, !dbg !987
  %call38 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !988
  br label %if.end39, !dbg !989

if.end39:                                         ; preds = %if.end33, %if.then35
  tail call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !990) #5, !dbg !992
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %ZJ.0}, i64 0, metadata !993) #5, !dbg !994
  tail call void @llvm.dbg.value(metadata !{i32 %J}, i64 0, metadata !995) #5, !dbg !996
  tail call void @llvm.dbg.value(metadata !{%struct._IP** %heads}, i64 0, metadata !997) #5, !dbg !998
  tail call void @llvm.dbg.value(metadata !{i8* %frontIsDone}, i64 0, metadata !999) #5, !dbg !1000
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx** %p_mtx}, i64 0, metadata !1001) #5, !dbg !1002
  tail call void @llvm.dbg.value(metadata !{i32 %msglvl}, i64 0, metadata !1003) #5, !dbg !1004
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %msgFile}, i64 0, metadata !1005) #5, !dbg !1006
  %5 = load %struct._IP** %arrayidx18, align 8, !dbg !1007, !tbaa !542
  tail call void @llvm.dbg.value(metadata !{%struct._IP* %5}, i64 0, metadata !1009) #5, !dbg !1007
  store %struct._IP* null, %struct._IP** %arrayidx18, align 8, !dbg !1007, !tbaa !542
  %cmp86.i = icmp eq %struct._IP* %5, null, !dbg !1007
  br i1 %cmp86.i, label %if.end40, label %for.body.i, !dbg !1007

for.body.i:                                       ; preds = %if.end39, %for.cond.backedge.i
  %ip.087.i = phi %struct._IP* [ %7, %for.cond.backedge.i ], [ %5, %if.end39 ]
  %val.i = getelementptr inbounds %struct._IP* %ip.087.i, i64 0, i32 0, !dbg !1010
  %6 = load i32* %val.i, align 4, !dbg !1010, !tbaa !534
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !1012) #5, !dbg !1010
  %next.i = getelementptr inbounds %struct._IP* %ip.087.i, i64 0, i32 1, !dbg !1010
  %7 = load %struct._IP** %next.i, align 8, !dbg !1010, !tbaa !542
  tail call void @llvm.dbg.value(metadata !{%struct._IP* %7}, i64 0, metadata !1013) #5, !dbg !1010
  %idxprom4.i = sext i32 %6 to i64, !dbg !1014
  %arrayidx5.i = getelementptr inbounds i8* %frontIsDone, i64 %idxprom4.i, !dbg !1014
  br i1 %cmp34, label %if.then.i, label %if.end.i, !dbg !1016

if.then.i:                                        ; preds = %for.body.i
  %8 = load i8* %arrayidx5.i, align 1, !dbg !1014, !tbaa !535
  %conv.i = sext i8 %8 to i32, !dbg !1014
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([24 x i8]* @.str32, i64 0, i64 0), i32 %6, i32 %conv.i) #6, !dbg !1014
  %call6.i = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !1017
  br label %if.end.i, !dbg !1018

if.end.i:                                         ; preds = %if.then.i, %for.body.i
  %9 = load i8* %arrayidx5.i, align 1, !dbg !1019, !tbaa !535
  %cmp10.i = icmp eq i8 %9, 89, !dbg !1019
  br i1 %cmp10.i, label %if.then12.i, label %if.else.i, !dbg !1019

if.then12.i:                                      ; preds = %if.end.i
  %arrayidx14.i = getelementptr inbounds %struct._SubMtx** %p_mtx, i64 %idxprom4.i, !dbg !1020
  %10 = load %struct._SubMtx** %arrayidx14.i, align 8, !dbg !1020, !tbaa !542
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %10}, i64 0, metadata !1022) #5, !dbg !1020
  %cmp15.i = icmp eq %struct._SubMtx* %10, null, !dbg !1020
  br i1 %cmp15.i, label %for.cond.backedge.i, label %if.then17.i, !dbg !1020

for.cond.backedge.i:                              ; preds = %if.else.i, %if.then39.i, %if.end36.i, %if.then12.i
  %cmp.i = icmp eq %struct._IP* %7, null, !dbg !1007
  br i1 %cmp.i, label %if.end40.loopexit, label %for.body.i, !dbg !1007

if.then17.i:                                      ; preds = %if.then12.i
  br i1 %cmp34, label %if.then20.i, label %if.end24.i, !dbg !1023

if.then20.i:                                      ; preds = %if.then17.i
  %call21.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([25 x i8]* @.str33, i64 0, i64 0), %struct._SubMtx* %10) #6, !dbg !1025
  %call22.i = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %10, %struct._IO_FILE* %msgFile) #6, !dbg !1027
  %call23.i = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !1028
  br label %if.end24.i, !dbg !1029

if.end24.i:                                       ; preds = %if.then20.i, %if.then17.i
  %call25.i = tail call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J, i32 %6) #6, !dbg !1030
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call25.i}, i64 0, metadata !1031) #5, !dbg !1030
  %cmp26.i = icmp eq %struct._SubMtx* %call25.i, null, !dbg !1030
  br i1 %cmp26.i, label %if.end36.i, label %if.then28.i, !dbg !1030

if.then28.i:                                      ; preds = %if.end24.i
  br i1 %cmp34, label %if.then31.i, label %if.end35.i, !dbg !1032

if.then31.i:                                      ; preds = %if.then28.i
  %call32.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([12 x i8]* @.str34, i64 0, i64 0), %struct._SubMtx* %call25.i) #6, !dbg !1034
  %call33.i = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call25.i, %struct._IO_FILE* %msgFile) #6, !dbg !1036
  %call34.i = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !1037
  br label %if.end35.i, !dbg !1038

if.end35.i:                                       ; preds = %if.then31.i, %if.then28.i
  tail call void @SubMtx_solveupd(%struct._SubMtx* %ZJ.0, %struct._SubMtx* %call25.i, %struct._SubMtx* %10) #6, !dbg !1039
  br label %if.end36.i, !dbg !1040

if.end36.i:                                       ; preds = %if.end35.i, %if.end24.i
  br i1 %cmp34, label %if.then39.i, label %for.cond.backedge.i, !dbg !1041

if.then39.i:                                      ; preds = %if.end36.i
  %call40.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([25 x i8]* @.str35, i64 0, i64 0), %struct._SubMtx* %ZJ.0) #6, !dbg !1042
  %call41.i = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %ZJ.0, %struct._IO_FILE* %msgFile) #6, !dbg !1044
  %call42.i = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !1045
  br label %for.cond.backedge.i, !dbg !1046

if.else.i:                                        ; preds = %if.end.i
  %11 = load %struct._IP** %arrayidx18, align 8, !dbg !1047, !tbaa !542
  store %struct._IP* %11, %struct._IP** %next.i, align 8, !dbg !1047, !tbaa !542
  store %struct._IP* %ip.087.i, %struct._IP** %arrayidx18, align 8, !dbg !1049, !tbaa !542
  br label %for.cond.backedge.i

if.end40.loopexit:                                ; preds = %for.cond.backedge.i
  %.pre = load %struct._IP** %arrayidx18, align 8, !dbg !1050, !tbaa !542
  %phitmp = icmp eq %struct._IP* %.pre, null
  br label %if.end40

if.end40:                                         ; preds = %if.end40.loopexit, %if.end39, %if.end21
  %12 = phi i1 [ %phitmp, %if.end40.loopexit ], [ true, %if.end39 ], [ true, %if.end21 ]
  br i1 %cmp, label %if.then47, label %if.end50, !dbg !1051

if.then47:                                        ; preds = %if.end40
  %. = select i1 %12, i32 89, i32 78, !dbg !1052
  %call48 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0), i32 %.) #6, !dbg !1054
  %call49 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !1056
  br label %if.end50, !dbg !1057

if.end50:                                         ; preds = %if.then47, %if.end40
  %cmp51 = icmp eq %struct._SubMtxList* %aggList, null, !dbg !1058
  br i1 %cmp51, label %if.end77, label %land.lhs.true, !dbg !1058

land.lhs.true:                                    ; preds = %if.end50
  %arrayidx54 = getelementptr inbounds i32* %owners, i64 %idxprom17, !dbg !1058
  %13 = load i32* %arrayidx54, align 4, !dbg !1058, !tbaa !534
  %cmp55 = icmp eq i32 %13, %myid, !dbg !1058
  br i1 %cmp55, label %if.then57, label %if.end77, !dbg !1058

if.then57:                                        ; preds = %land.lhs.true
  tail call void @llvm.dbg.value(metadata !756, i64 0, metadata !365), !dbg !1059
  %arrayidx59 = getelementptr inbounds %struct._SubMtx** %p_agg, i64 %idxprom17, !dbg !1061
  %14 = load %struct._SubMtx** %arrayidx59, align 8, !dbg !1061, !tbaa !542
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %14}, i64 0, metadata !368), !dbg !1061
  %cmp60 = icmp eq %struct._SubMtx* %14, null, !dbg !1061
  br i1 %cmp60, label %if.then62, label %if.end64, !dbg !1061

if.then62:                                        ; preds = %if.then57
  %15 = load %struct._IO_FILE** @stderr, align 8, !dbg !1062, !tbaa !542
  %call63 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([49 x i8]* @.str19, i64 0, i64 0), i32 %J) #6, !dbg !1062
  tail call void @exit(i32 -1) #7, !dbg !1064
  unreachable, !dbg !1064

if.end64:                                         ; preds = %if.then57
  tail call fastcc void @assembleAggregates(i32 %J, %struct._SubMtx* %14, %struct._SubMtxList* %aggList, %struct._SubMtxManager* %mtxmanager, i32 %msglvl, %struct._IO_FILE* %msgFile) #8, !dbg !1065
  %call65 = tail call i32 @SubMtxList_isCountZero(%struct._SubMtxList* %aggList, i32 %J) #6, !dbg !1066
  %cmp66 = icmp eq i32 %call65, 1, !dbg !1066
  br i1 %cmp66, label %if.then68, label %if.end77, !dbg !1066

if.then68:                                        ; preds = %if.end64
  %cmp69 = icmp sgt i32 %msglvl, 3, !dbg !1067
  br i1 %cmp69, label %if.then71, label %if.end74, !dbg !1067

if.then71:                                        ; preds = %if.then68
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([27 x i8]* @.str9, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %msgFile), !dbg !1069
  %call73 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !1071
  br label %if.end74, !dbg !1072

if.end74:                                         ; preds = %if.then71, %if.then68
  tail call fastcc void @assembleAggregates(i32 %J, %struct._SubMtx* %14, %struct._SubMtxList* %aggList, %struct._SubMtxManager* %mtxmanager, i32 %msglvl, %struct._IO_FILE* %msgFile) #8, !dbg !1073
  tail call void @llvm.dbg.value(metadata !772, i64 0, metadata !365), !dbg !1074
  br label %if.end77, !dbg !1075

if.end77:                                         ; preds = %land.lhs.true, %if.end50, %if.end64, %if.end74
  %aggDone.0 = phi i32 [ 89, %if.end74 ], [ 78, %if.end64 ], [ 89, %if.end50 ], [ 89, %land.lhs.true ]
  br i1 %cmp, label %if.then80, label %if.end84, !dbg !1076

if.then80:                                        ; preds = %if.end77
  %call82 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([15 x i8]* @.str20, i64 0, i64 0), i32 %aggDone.0) #6, !dbg !1077
  %call83 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !1079
  br label %if.end84, !dbg !1080

if.end84:                                         ; preds = %if.then80, %if.end77
  %cmp90 = icmp eq i32 %aggDone.0, 89, !dbg !1081
  %or.cond = and i1 %12, %cmp90, !dbg !1081
  br i1 %or.cond, label %if.then92, label %if.end131, !dbg !1081

if.then92:                                        ; preds = %if.end84
  %arrayidx94 = getelementptr inbounds %struct._SubMtx** %p_agg, i64 %idxprom17, !dbg !1082
  %17 = load %struct._SubMtx** %arrayidx94, align 8, !dbg !1082, !tbaa !542
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %17}, i64 0, metadata !368), !dbg !1082
  %cmp95 = icmp eq i32* %owners, null, !dbg !1084
  br i1 %cmp95, label %if.then102, label %lor.lhs.false97, !dbg !1084

lor.lhs.false97:                                  ; preds = %if.then92
  %arrayidx99 = getelementptr inbounds i32* %owners, i64 %idxprom17, !dbg !1084
  %18 = load i32* %arrayidx99, align 4, !dbg !1084, !tbaa !534
  %cmp100 = icmp eq i32 %18, %myid, !dbg !1084
  br i1 %cmp100, label %if.then102, label %if.else121, !dbg !1084

if.then102:                                       ; preds = %lor.lhs.false97, %if.then92
  %call103 = tail call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J, i32 %J) #6, !dbg !1085
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call103}, i64 0, metadata !367), !dbg !1085
  %cmp104 = icmp eq %struct._SubMtx* %call103, null, !dbg !1087
  br i1 %cmp104, label %if.end107, label %if.then106, !dbg !1087

if.then106:                                       ; preds = %if.then102
  tail call void @SubMtx_solve(%struct._SubMtx* %call103, %struct._SubMtx* %17) #6, !dbg !1088
  br label %if.end107, !dbg !1090

if.end107:                                        ; preds = %if.then102, %if.then106
  br i1 %cmp, label %if.then110, label %if.end114, !dbg !1091

if.then110:                                       ; preds = %if.end107
  %19 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str21, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %msgFile), !dbg !1092
  %call112 = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %17, %struct._IO_FILE* %msgFile) #6, !dbg !1094
  %call113 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !1095
  br label %if.end114, !dbg !1096

if.end114:                                        ; preds = %if.then110, %if.end107
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx94, align 8, !dbg !1097, !tbaa !542
  %arrayidx118 = getelementptr inbounds %struct._SubMtx** %p_mtx, i64 %idxprom17, !dbg !1098
  store %struct._SubMtx* %17, %struct._SubMtx** %arrayidx118, align 8, !dbg !1098, !tbaa !542
  %arrayidx120 = getelementptr inbounds i8* %frontIsDone, i64 %idxprom17, !dbg !1099
  store i8 89, i8* %arrayidx120, align 1, !dbg !1099, !tbaa !535
  br label %if.end128, !dbg !1100

if.else121:                                       ; preds = %lor.lhs.false97
  %cmp122 = icmp eq %struct._SubMtx* %17, null, !dbg !1101
  br i1 %cmp122, label %if.end128, label %if.then124, !dbg !1101

if.then124:                                       ; preds = %if.else121
  tail call void @SubMtxList_addObjectToList(%struct._SubMtxList* %aggList, %struct._SubMtx* %17, i32 %J) #6, !dbg !1102
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx94, align 8, !dbg !1104, !tbaa !542
  br label %if.end128, !dbg !1105

if.end128:                                        ; preds = %if.else121, %if.then124, %if.end114
  %arrayidx130 = getelementptr inbounds i8* %status, i64 %idxprom17, !dbg !1106
  store i8 70, i8* %arrayidx130, align 1, !dbg !1106, !tbaa !535
  br label %if.end131, !dbg !1107

if.end131:                                        ; preds = %if.end128, %if.end84
  br i1 %cmp, label %if.then134, label %return, !dbg !1108

if.then134:                                       ; preds = %if.end131
  %arrayidx136 = getelementptr inbounds i8* %status, i64 %idxprom17, !dbg !1109
  %20 = load i8* %arrayidx136, align 1, !dbg !1109, !tbaa !535
  %conv137 = sext i8 %20 to i32, !dbg !1109
  %call138 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([18 x i8]* @.str22, i64 0, i64 0), i32 %J, i32 %conv137) #6, !dbg !1109
  %call139 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !1111
  br label %return, !dbg !1112

return:                                           ; preds = %if.end131, %if.then134, %if.end11
  ret void, !dbg !1113
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
  call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !374), !dbg !1114
  call void @llvm.dbg.value(metadata !{i32* %owners}, i64 0, metadata !375), !dbg !1115
  call void @llvm.dbg.value(metadata !{i32 %myid}, i64 0, metadata !376), !dbg !1116
  call void @llvm.dbg.value(metadata !{%struct._SubMtxManager* %manager}, i64 0, metadata !377), !dbg !1117
  call void @llvm.dbg.value(metadata !{%struct._SubMtx** %p_mtx}, i64 0, metadata !378), !dbg !1118
  call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %solmtx}, i64 0, metadata !379), !dbg !1119
  call void @llvm.dbg.value(metadata !{i32 %msglvl}, i64 0, metadata !380), !dbg !1120
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %msgFile}, i64 0, metadata !381), !dbg !1121
  call void @llvm.dbg.declare(metadata !{double** %xJ}, metadata !385), !dbg !1122
  call void @llvm.dbg.declare(metadata !{i32* %inc1}, metadata !386), !dbg !1123
  call void @llvm.dbg.declare(metadata !{i32* %inc2}, metadata !387), !dbg !1123
  call void @llvm.dbg.declare(metadata !{i32* %ncolJ}, metadata !392), !dbg !1124
  call void @llvm.dbg.declare(metadata !{i32* %neqns}, metadata !393), !dbg !1124
  call void @llvm.dbg.declare(metadata !{i32* %nrhs}, metadata !396), !dbg !1124
  call void @llvm.dbg.declare(metadata !{i32* %nrowJ}, metadata !398), !dbg !1124
  call void @llvm.dbg.declare(metadata !{i32** %colindJ}, metadata !399), !dbg !1125
  %nrow = getelementptr inbounds %struct._DenseMtx* %solmtx, i64 0, i32 3, !dbg !1126
  %0 = load i32* %nrow, align 4, !dbg !1126, !tbaa !534
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !397), !dbg !1126
  %neqns1 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 1, !dbg !1126
  %1 = load i32* %neqns1, align 4, !dbg !1126, !tbaa !534
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !393), !dbg !1126
  store i32 %1, i32* %neqns, align 4, !dbg !1126, !tbaa !534
  %cmp = icmp eq i32 %0, %1, !dbg !1126
  br i1 %cmp, label %if.end16, label %if.then, !dbg !1126

if.then:                                          ; preds = %entry
  %call = call i32* @IVinit(i32 %1, i32 -1) #6, !dbg !1127
  call void @llvm.dbg.value(metadata !{i32* %call}, i64 0, metadata !400), !dbg !1127
  %rowind2 = getelementptr inbounds %struct._DenseMtx* %solmtx, i64 0, i32 7, !dbg !1129
  %2 = load i32** %rowind2, align 8, !dbg !1129, !tbaa !542
  call void @llvm.dbg.value(metadata !{i32* %2}, i64 0, metadata !401), !dbg !1129
  %cmp3 = icmp sgt i32 %msglvl, 1, !dbg !1130
  br i1 %cmp3, label %if.then4, label %for.cond.preheader, !dbg !1130

if.then4:                                         ; preds = %if.then
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str23, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %msgFile), !dbg !1131
  %4 = load i32* %nrow, align 4, !dbg !1133, !tbaa !534
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %4, i32* %2) #6, !dbg !1133
  %call7 = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !1134
  br label %for.cond.preheader, !dbg !1135

for.cond.preheader:                               ; preds = %if.then4, %if.then
  %cmp8269 = icmp sgt i32 %0, 0, !dbg !1136
  br i1 %cmp8269, label %for.body, label %for.end, !dbg !1136

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv292 = phi i64 [ %indvars.iv.next293, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %2, i64 %indvars.iv292, !dbg !1138
  %5 = load i32* %arrayidx, align 4, !dbg !1138, !tbaa !534
  %idxprom9 = sext i32 %5 to i64, !dbg !1138
  %arrayidx10 = getelementptr inbounds i32* %call, i64 %idxprom9, !dbg !1138
  %6 = trunc i64 %indvars.iv292 to i32, !dbg !1138
  store i32 %6, i32* %arrayidx10, align 4, !dbg !1138, !tbaa !534
  %indvars.iv.next293 = add i64 %indvars.iv292, 1, !dbg !1136
  %lftr.wideiv294 = trunc i64 %indvars.iv.next293 to i32, !dbg !1136
  %exitcond295 = icmp eq i32 %lftr.wideiv294, %0, !dbg !1136
  br i1 %exitcond295, label %for.end, label %for.body, !dbg !1136

for.end:                                          ; preds = %for.body, %for.cond.preheader
  call void @llvm.dbg.value(metadata !1140, i64 0, metadata !382), !dbg !1141
  br i1 %cmp3, label %if.then12, label %if.end16, !dbg !1142

if.then12:                                        ; preds = %for.end
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str24, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %msgFile), !dbg !1143
  call void @llvm.dbg.value(metadata !{i32* %neqns}, i64 0, metadata !393), !dbg !1145
  %8 = load i32* %neqns, align 4, !dbg !1145, !tbaa !534
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %8, i32* %call) #6, !dbg !1145
  %call14 = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !1146
  br label %if.end16, !dbg !1147

if.end16:                                         ; preds = %entry, %for.end, %if.then12
  %localsol.0 = phi i32 [ 84, %if.then12 ], [ 84, %for.end ], [ 70, %entry ]
  %colmap.0 = phi i32* [ %call, %if.then12 ], [ %call, %for.end ], [ undef, %entry ]
  %rowind.0 = phi i32* [ %2, %if.then12 ], [ %2, %for.end ], [ undef, %entry ]
  call void @DenseMtx_dimensions(%struct._DenseMtx* %solmtx, i32* %neqns, i32* %nrhs) #6, !dbg !1148
  %call17 = call i32 @FrontMtx_nfront(%struct._FrontMtx* %frontmtx) #6, !dbg !1149
  call void @llvm.dbg.value(metadata !{i32 %call17}, i64 0, metadata !394), !dbg !1149
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !390), !dbg !1150
  %cmp19266 = icmp sgt i32 %call17, 0, !dbg !1150
  br i1 %cmp19266, label %for.body20.lr.ph, label %for.end157, !dbg !1150

for.body20.lr.ph:                                 ; preds = %if.end16
  %cmp21 = icmp eq i32* %owners, null, !dbg !1152
  %cmp34 = icmp sgt i32 %msglvl, 1, !dbg !1154
  %cmp40 = icmp eq i32 %localsol.0, 84, !dbg !1156
  %type = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 2, !dbg !1157
  br label %for.body20, !dbg !1150

for.body20:                                       ; preds = %for.body20.lr.ph, %for.inc155
  %indvars.iv290 = phi i64 [ 0, %for.body20.lr.ph ], [ %indvars.iv.next291, %for.inc155 ]
  %J.0267 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc156, %for.inc155 ]
  br i1 %cmp21, label %land.lhs.true, label %lor.lhs.false, !dbg !1152

lor.lhs.false:                                    ; preds = %for.body20
  %arrayidx23 = getelementptr inbounds i32* %owners, i64 %indvars.iv290, !dbg !1152
  %9 = load i32* %arrayidx23, align 4, !dbg !1152, !tbaa !534
  %cmp24 = icmp eq i32 %9, %myid, !dbg !1152
  br i1 %cmp24, label %land.lhs.true, label %for.inc155, !dbg !1152

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body20
  %10 = trunc i64 %indvars.iv290 to i32, !dbg !1158
  %call25 = call i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %10) #6, !dbg !1158
  call void @llvm.dbg.value(metadata !{i32 %call25}, i64 0, metadata !395), !dbg !1158
  %cmp26 = icmp sgt i32 %call25, 0, !dbg !1158
  br i1 %cmp26, label %if.then27, label %for.inc155, !dbg !1158

if.then27:                                        ; preds = %land.lhs.true
  call void @FrontMtx_columnIndices(%struct._FrontMtx* %frontmtx, i32 %10, i32* %ncolJ, i32** %colindJ) #6, !dbg !1159
  %arrayidx29 = getelementptr inbounds %struct._SubMtx** %p_mtx, i64 %indvars.iv290, !dbg !1160
  %11 = load %struct._SubMtx** %arrayidx29, align 8, !dbg !1160, !tbaa !542
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %11}, i64 0, metadata !383), !dbg !1160
  %cmp30 = icmp eq %struct._SubMtx* %11, null, !dbg !1161
  br i1 %cmp30, label %if.then31, label %if.end33, !dbg !1161

if.then31:                                        ; preds = %if.then27
  %12 = load %struct._IO_FILE** @stderr, align 8, !dbg !1162, !tbaa !542
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([60 x i8]* @.str25, i64 0, i64 0), i32 %J.0267, i32 %myid) #6, !dbg !1162
  call void @exit(i32 -1) #7, !dbg !1164
  unreachable, !dbg !1164

if.end33:                                         ; preds = %if.then27
  br i1 %cmp34, label %if.then35, label %if.end39, !dbg !1154

if.then35:                                        ; preds = %if.end33
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([32 x i8]* @.str26, i64 0, i64 0), i32 %10) #6, !dbg !1165
  %call37 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %11, %struct._IO_FILE* %msgFile) #6, !dbg !1167
  %call38 = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !1168
  br label %if.end39, !dbg !1169

if.end39:                                         ; preds = %if.then35, %if.end33
  br i1 %cmp40, label %if.then42, label %if.end68, !dbg !1156

if.then42:                                        ; preds = %if.end39
  br i1 %cmp34, label %if.then45, label %for.body52.lr.ph, !dbg !1170

if.then45:                                        ; preds = %if.then42
  %13 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str27, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %msgFile), !dbg !1172
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !399), !dbg !1174
  %14 = load i32** %colindJ, align 8, !dbg !1174, !tbaa !542
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %call25, i32* %14) #6, !dbg !1174
  %call47 = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !1175
  br label %for.body52.lr.ph, !dbg !1176

for.body52.lr.ph:                                 ; preds = %if.then42, %if.then45
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !399), !dbg !1177
  %15 = load i32** %colindJ, align 8, !dbg !1177, !tbaa !542
  br label %for.body52, !dbg !1180

for.body52:                                       ; preds = %for.body52, %for.body52.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body52.lr.ph ], [ %indvars.iv.next, %for.body52 ]
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !399), !dbg !1177
  %arrayidx54 = getelementptr inbounds i32* %15, i64 %indvars.iv, !dbg !1177
  %16 = load i32* %arrayidx54, align 4, !dbg !1177, !tbaa !534
  %idxprom55 = sext i32 %16 to i64, !dbg !1177
  %arrayidx56 = getelementptr inbounds i32* %colmap.0, i64 %idxprom55, !dbg !1177
  %17 = load i32* %arrayidx56, align 4, !dbg !1177, !tbaa !534
  store i32 %17, i32* %arrayidx54, align 4, !dbg !1177, !tbaa !534
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1180
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1180
  %exitcond = icmp eq i32 %lftr.wideiv, %call25, !dbg !1180
  br i1 %exitcond, label %for.end61, label %for.body52, !dbg !1180

for.end61:                                        ; preds = %for.body52
  br i1 %cmp34, label %if.then64, label %if.end68, !dbg !1181

if.then64:                                        ; preds = %for.end61
  %18 = call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str28, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %msgFile), !dbg !1182
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !399), !dbg !1184
  %19 = load i32** %colindJ, align 8, !dbg !1184, !tbaa !542
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %call25, i32* %19) #6, !dbg !1184
  %call66 = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !1185
  br label %if.end68, !dbg !1186

if.end68:                                         ; preds = %for.end61, %if.then64, %if.end39
  %call69 = call double* @DenseMtx_entries(%struct._DenseMtx* %solmtx) #6, !dbg !1187
  call void @llvm.dbg.value(metadata !{double* %call69}, i64 0, metadata !384), !dbg !1187
  call void @SubMtx_denseInfo(%struct._SubMtx* %11, i32* %nrowJ, i32* %ncolJ, i32* %inc1, i32* %inc2, double** %xJ) #6, !dbg !1188
  %20 = load i32* %type, align 4, !dbg !1157, !tbaa !534
  switch i32 %20, label %if.end135 [
    i32 1, label %for.cond73.preheader
    i32 2, label %for.cond100.preheader
  ], !dbg !1157

for.cond73.preheader:                             ; preds = %if.end68
  call void @llvm.dbg.value(metadata !{i32* %nrhs}, i64 0, metadata !396), !dbg !1189
  %21 = load i32* %nrhs, align 4, !dbg !1189, !tbaa !534
  %cmp74258 = icmp sgt i32 %21, 0, !dbg !1189
  br i1 %cmp74258, label %for.cond77.preheader.lr.ph, label %if.end135, !dbg !1189

for.cond77.preheader.lr.ph:                       ; preds = %for.cond73.preheader
  call void @llvm.dbg.value(metadata !{i32* %neqns}, i64 0, metadata !393), !dbg !1192
  %22 = load i32* %neqns, align 4, !dbg !1192, !tbaa !534
  %idx.ext = sext i32 %22 to i64, !dbg !1192
  %idx.ext90 = sext i32 %call25 to i64, !dbg !1194
  call void @llvm.dbg.value(metadata !{i32* %nrhs}, i64 0, metadata !396), !dbg !1189
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !399), !dbg !1195
  %23 = load i32** %colindJ, align 8, !dbg !1195, !tbaa !542
  call void @llvm.dbg.value(metadata !{double** %xJ}, i64 0, metadata !385), !dbg !1194
  %xJ.promoted261 = load double** %xJ, align 8, !dbg !1194, !tbaa !542
  %xJ.promoted261281 = bitcast double* %xJ.promoted261 to i8*
  %24 = icmp sgt i32 %21, 1
  %.op297 = add i32 %21, -1, !dbg !1189
  %25 = zext i32 %.op297 to i64
  %.op298 = shl nuw nsw i64 %25, 3, !dbg !1189
  %.op298.op = add i64 %.op298, 8, !dbg !1189
  %26 = select i1 %24, i64 %.op298.op, i64 8, !dbg !1189
  %27 = mul i64 %26, %idx.ext90, !dbg !1189
  %uglygep283 = getelementptr i8* %xJ.promoted261281, i64 %27
  br label %for.body80.lr.ph, !dbg !1189

for.cond100.preheader:                            ; preds = %if.end68
  call void @llvm.dbg.value(metadata !{i32* %nrhs}, i64 0, metadata !396), !dbg !1198
  %28 = load i32* %nrhs, align 4, !dbg !1198, !tbaa !534
  %cmp101251 = icmp sgt i32 %28, 0, !dbg !1198
  br i1 %cmp101251, label %for.cond104.preheader.lr.ph, label %if.end135, !dbg !1198

for.cond104.preheader.lr.ph:                      ; preds = %for.cond100.preheader
  call void @llvm.dbg.value(metadata !{i32* %neqns}, i64 0, metadata !393), !dbg !1201
  %29 = load i32* %neqns, align 4, !dbg !1201, !tbaa !534
  %mul125 = shl nsw i32 %29, 1, !dbg !1201
  %idx.ext126 = sext i32 %mul125 to i64, !dbg !1201
  %mul128 = shl nsw i32 %call25, 1, !dbg !1203
  %idx.ext129 = sext i32 %mul128 to i64, !dbg !1203
  call void @llvm.dbg.value(metadata !{i32* %nrhs}, i64 0, metadata !396), !dbg !1198
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !399), !dbg !1204
  %30 = load i32** %colindJ, align 8, !dbg !1204, !tbaa !542
  call void @llvm.dbg.value(metadata !{double** %xJ}, i64 0, metadata !385), !dbg !1203
  %xJ.promoted = load double** %xJ, align 8, !dbg !1203, !tbaa !542
  %xJ.promoted275 = bitcast double* %xJ.promoted to i8*
  %31 = icmp sgt i32 %28, 1
  %.op = add i32 %28, -1, !dbg !1198
  %32 = zext i32 %.op to i64
  %.op296 = shl nuw nsw i64 %32, 3, !dbg !1198
  %.op296.op = add i64 %.op296, 8, !dbg !1198
  %33 = select i1 %31, i64 %.op296.op, i64 8, !dbg !1198
  %34 = shl i32 %call25, 1, !dbg !1198
  %35 = sext i32 %34 to i64
  %36 = mul i64 %33, %35, !dbg !1198
  %uglygep = getelementptr i8* %xJ.promoted275, i64 %36
  br label %for.body107.lr.ph, !dbg !1198

for.body80.lr.ph:                                 ; preds = %for.end89, %for.cond77.preheader.lr.ph
  %add.ptr91262 = phi double* [ %xJ.promoted261, %for.cond77.preheader.lr.ph ], [ %add.ptr91, %for.end89 ]
  %sol.0260 = phi double* [ %call69, %for.cond77.preheader.lr.ph ], [ %add.ptr, %for.end89 ]
  %jrhs.0259 = phi i32 [ 0, %for.cond77.preheader.lr.ph ], [ %inc93, %for.end89 ]
  br label %for.body80, !dbg !1207

for.body80:                                       ; preds = %for.body80, %for.body80.lr.ph
  %indvars.iv277 = phi i64 [ 0, %for.body80.lr.ph ], [ %indvars.iv.next278, %for.body80 ]
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !399), !dbg !1195
  %arrayidx82 = getelementptr inbounds i32* %23, i64 %indvars.iv277, !dbg !1195
  %37 = load i32* %arrayidx82, align 4, !dbg !1195, !tbaa !534
  call void @llvm.dbg.value(metadata !{i32 %37}, i64 0, metadata !391), !dbg !1195
  call void @llvm.dbg.value(metadata !{double** %xJ}, i64 0, metadata !385), !dbg !1208
  %arrayidx84 = getelementptr inbounds double* %add.ptr91262, i64 %indvars.iv277, !dbg !1208
  %38 = load double* %arrayidx84, align 8, !dbg !1208, !tbaa !617
  %idxprom85 = sext i32 %37 to i64, !dbg !1208
  %arrayidx86 = getelementptr inbounds double* %sol.0260, i64 %idxprom85, !dbg !1208
  store double %38, double* %arrayidx86, align 8, !dbg !1208, !tbaa !617
  %indvars.iv.next278 = add i64 %indvars.iv277, 1, !dbg !1207
  %lftr.wideiv279 = trunc i64 %indvars.iv.next278 to i32, !dbg !1207
  %exitcond280 = icmp eq i32 %lftr.wideiv279, %call25, !dbg !1207
  br i1 %exitcond280, label %for.end89, label %for.body80, !dbg !1207

for.end89:                                        ; preds = %for.body80
  call void @llvm.dbg.value(metadata !{i32* %neqns}, i64 0, metadata !393), !dbg !1192
  %add.ptr = getelementptr inbounds double* %sol.0260, i64 %idx.ext, !dbg !1192
  call void @llvm.dbg.value(metadata !{double* %add.ptr}, i64 0, metadata !384), !dbg !1192
  call void @llvm.dbg.value(metadata !{double** %xJ}, i64 0, metadata !385), !dbg !1194
  %add.ptr91 = getelementptr inbounds double* %add.ptr91262, i64 %idx.ext90, !dbg !1194
  call void @llvm.dbg.value(metadata !{double* %uglygep283284}, i64 0, metadata !385), !dbg !1194
  %inc93 = add nsw i32 %jrhs.0259, 1, !dbg !1189
  call void @llvm.dbg.value(metadata !{i32 %inc93}, i64 0, metadata !389), !dbg !1189
  call void @llvm.dbg.value(metadata !{i32* %nrhs}, i64 0, metadata !396), !dbg !1189
  %cmp74 = icmp slt i32 %inc93, %21, !dbg !1189
  br i1 %cmp74, label %for.body80.lr.ph, label %for.cond73.if.end135.loopexit257_crit_edge, !dbg !1189

for.body107.lr.ph:                                ; preds = %for.end124, %for.cond104.preheader.lr.ph
  %add.ptr130254 = phi double* [ %xJ.promoted, %for.cond104.preheader.lr.ph ], [ %add.ptr130, %for.end124 ]
  %sol.1253 = phi double* [ %call69, %for.cond104.preheader.lr.ph ], [ %add.ptr127, %for.end124 ]
  %jrhs.1252 = phi i32 [ 0, %for.cond104.preheader.lr.ph ], [ %inc132, %for.end124 ]
  br label %for.body107, !dbg !1209

for.body107:                                      ; preds = %for.body107, %for.body107.lr.ph
  %indvars.iv271 = phi i64 [ 0, %for.body107.lr.ph ], [ %indvars.iv.next272, %for.body107 ]
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !399), !dbg !1204
  %arrayidx109 = getelementptr inbounds i32* %30, i64 %indvars.iv271, !dbg !1204
  %39 = load i32* %arrayidx109, align 4, !dbg !1204, !tbaa !534
  call void @llvm.dbg.value(metadata !{i32 %39}, i64 0, metadata !391), !dbg !1204
  %40 = trunc i64 %indvars.iv271 to i32, !dbg !1210
  %mul = shl nsw i32 %40, 1, !dbg !1210
  %idxprom110 = sext i32 %mul to i64, !dbg !1210
  call void @llvm.dbg.value(metadata !{double** %xJ}, i64 0, metadata !385), !dbg !1210
  %arrayidx111 = getelementptr inbounds double* %add.ptr130254, i64 %idxprom110, !dbg !1210
  %41 = load double* %arrayidx111, align 8, !dbg !1210, !tbaa !617
  %mul112 = shl nsw i32 %39, 1, !dbg !1210
  %idxprom113 = sext i32 %mul112 to i64, !dbg !1210
  %arrayidx114 = getelementptr inbounds double* %sol.1253, i64 %idxprom113, !dbg !1210
  store double %41, double* %arrayidx114, align 8, !dbg !1210, !tbaa !617
  %add245 = or i32 %mul, 1, !dbg !1211
  %idxprom116 = sext i32 %add245 to i64, !dbg !1211
  call void @llvm.dbg.value(metadata !{double** %xJ}, i64 0, metadata !385), !dbg !1211
  %arrayidx117 = getelementptr inbounds double* %add.ptr130254, i64 %idxprom116, !dbg !1211
  %42 = load double* %arrayidx117, align 8, !dbg !1211, !tbaa !617
  %add119246 = or i32 %mul112, 1, !dbg !1211
  %idxprom120 = sext i32 %add119246 to i64, !dbg !1211
  %arrayidx121 = getelementptr inbounds double* %sol.1253, i64 %idxprom120, !dbg !1211
  store double %42, double* %arrayidx121, align 8, !dbg !1211, !tbaa !617
  %indvars.iv.next272 = add i64 %indvars.iv271, 1, !dbg !1209
  %lftr.wideiv273 = trunc i64 %indvars.iv.next272 to i32, !dbg !1209
  %exitcond274 = icmp eq i32 %lftr.wideiv273, %call25, !dbg !1209
  br i1 %exitcond274, label %for.end124, label %for.body107, !dbg !1209

for.end124:                                       ; preds = %for.body107
  call void @llvm.dbg.value(metadata !{i32* %neqns}, i64 0, metadata !393), !dbg !1201
  %add.ptr127 = getelementptr inbounds double* %sol.1253, i64 %idx.ext126, !dbg !1201
  call void @llvm.dbg.value(metadata !{double* %add.ptr127}, i64 0, metadata !384), !dbg !1201
  call void @llvm.dbg.value(metadata !{double** %xJ}, i64 0, metadata !385), !dbg !1203
  %add.ptr130 = getelementptr inbounds double* %add.ptr130254, i64 %idx.ext129, !dbg !1203
  call void @llvm.dbg.value(metadata !{double* %uglygep276}, i64 0, metadata !385), !dbg !1203
  %inc132 = add nsw i32 %jrhs.1252, 1, !dbg !1198
  call void @llvm.dbg.value(metadata !{i32 %inc132}, i64 0, metadata !389), !dbg !1198
  call void @llvm.dbg.value(metadata !{i32* %nrhs}, i64 0, metadata !396), !dbg !1198
  %cmp101 = icmp slt i32 %inc132, %28, !dbg !1198
  br i1 %cmp101, label %for.body107.lr.ph, label %for.cond100.if.end135.loopexit_crit_edge, !dbg !1198

for.cond100.if.end135.loopexit_crit_edge:         ; preds = %for.end124
  %uglygep276 = bitcast i8* %uglygep to double*
  call void @llvm.dbg.value(metadata !{double* %uglygep276}, i64 0, metadata !385), !dbg !1203
  store double* %uglygep276, double** %xJ, align 8, !dbg !1203, !tbaa !542
  br label %if.end135, !dbg !1198

for.cond73.if.end135.loopexit257_crit_edge:       ; preds = %for.end89
  %uglygep283284 = bitcast i8* %uglygep283 to double*
  call void @llvm.dbg.value(metadata !{double* %uglygep283284}, i64 0, metadata !385), !dbg !1194
  store double* %uglygep283284, double** %xJ, align 8, !dbg !1194, !tbaa !542
  br label %if.end135, !dbg !1189

if.end135:                                        ; preds = %for.cond73.preheader, %for.cond73.if.end135.loopexit257_crit_edge, %for.cond100.preheader, %for.cond100.if.end135.loopexit_crit_edge, %if.end68
  call void @SubMtxManager_releaseObject(%struct._SubMtxManager* %manager, %struct._SubMtx* %11) #6, !dbg !1212
  br i1 %cmp40, label %for.body143.lr.ph, label %for.inc155, !dbg !1213

for.body143.lr.ph:                                ; preds = %if.end135
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !399), !dbg !1214
  %43 = load i32** %colindJ, align 8, !dbg !1214, !tbaa !542
  br label %for.body143, !dbg !1218

for.body143:                                      ; preds = %for.body143, %for.body143.lr.ph
  %indvars.iv285 = phi i64 [ 0, %for.body143.lr.ph ], [ %indvars.iv.next286, %for.body143 ]
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !399), !dbg !1214
  %arrayidx145 = getelementptr inbounds i32* %43, i64 %indvars.iv285, !dbg !1214
  %44 = load i32* %arrayidx145, align 4, !dbg !1214, !tbaa !534
  %idxprom146 = sext i32 %44 to i64, !dbg !1214
  %arrayidx147 = getelementptr inbounds i32* %rowind.0, i64 %idxprom146, !dbg !1214
  %45 = load i32* %arrayidx147, align 4, !dbg !1214, !tbaa !534
  store i32 %45, i32* %arrayidx145, align 4, !dbg !1214, !tbaa !534
  %indvars.iv.next286 = add i64 %indvars.iv285, 1, !dbg !1218
  %lftr.wideiv287 = trunc i64 %indvars.iv.next286 to i32, !dbg !1218
  %exitcond288 = icmp eq i32 %lftr.wideiv287, %call25, !dbg !1218
  br i1 %exitcond288, label %for.inc155, label %for.body143, !dbg !1218

for.inc155:                                       ; preds = %for.body143, %lor.lhs.false, %land.lhs.true, %if.end135
  %indvars.iv.next291 = add i64 %indvars.iv290, 1, !dbg !1150
  %inc156 = add nsw i32 %J.0267, 1, !dbg !1150
  call void @llvm.dbg.value(metadata !{i32 %inc156}, i64 0, metadata !390), !dbg !1150
  %46 = trunc i64 %indvars.iv.next291 to i32, !dbg !1150
  %cmp19 = icmp slt i32 %46, %call17, !dbg !1150
  br i1 %cmp19, label %for.body20, label %for.end157, !dbg !1150

for.end157:                                       ; preds = %for.inc155, %if.end16
  %cmp159 = icmp eq i32 %localsol.0, 84, !dbg !1219
  br i1 %cmp159, label %if.then161, label %if.end162, !dbg !1219

if.then161:                                       ; preds = %for.end157
  call void @IVfree(i32* %colmap.0) #6, !dbg !1220
  br label %if.end162, !dbg !1222

if.end162:                                        ; preds = %if.then161, %for.end157
  ret void, !dbg !1223
}

; Function Attrs: optsize
declare void @FrontMtx_columnIndices(%struct._FrontMtx*, i32, i32*, i32**) #2

; Function Attrs: optsize
declare void @SubMtxManager_releaseObject(%struct._SubMtxManager*, %struct._SubMtx*) #2

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_loadActiveRoots(%struct._FrontMtx* nocapture %frontmtx, i8* nocapture %status, i8 signext %activeFlag, %struct._Ideq* %dequeue) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !415), !dbg !1224
  tail call void @llvm.dbg.value(metadata !{i8* %status}, i64 0, metadata !416), !dbg !1225
  tail call void @llvm.dbg.value(metadata !{i8 %activeFlag}, i64 0, metadata !417), !dbg !1226
  tail call void @llvm.dbg.value(metadata !{%struct._Ideq* %dequeue}, i64 0, metadata !418), !dbg !1227
  %tree = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 10, !dbg !1228
  %0 = load %struct._Tree** %tree, align 8, !dbg !1228, !tbaa !542
  %sib1 = getelementptr inbounds %struct._Tree* %0, i64 0, i32 4, !dbg !1228
  %1 = load i32** %sib1, align 8, !dbg !1228, !tbaa !542
  tail call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !420), !dbg !1228
  %root = getelementptr inbounds %struct._Tree* %0, i64 0, i32 1, !dbg !1229
  %J.012 = load i32* %root, align 4, !dbg !1229
  %cmp13 = icmp eq i32 %J.012, -1, !dbg !1229
  br i1 %cmp13, label %for.end, label %for.body, !dbg !1229

for.body:                                         ; preds = %entry, %for.inc
  %J.014 = phi i32 [ %J.0, %for.inc ], [ %J.012, %entry ]
  %idxprom = sext i32 %J.014 to i64, !dbg !1231
  %arrayidx = getelementptr inbounds i8* %status, i64 %idxprom, !dbg !1231
  %2 = load i8* %arrayidx, align 1, !dbg !1231, !tbaa !535
  %cmp4 = icmp eq i8 %2, %activeFlag, !dbg !1231
  br i1 %cmp4, label %if.then, label %for.inc, !dbg !1231

if.then:                                          ; preds = %for.body
  %call = tail call i32 @Ideq_insertAtTail(%struct._Ideq* %dequeue, i32 %J.014) #6, !dbg !1233
  br label %for.inc, !dbg !1235

for.inc:                                          ; preds = %for.body, %if.then
  %arrayidx7 = getelementptr inbounds i32* %1, i64 %idxprom, !dbg !1229
  %J.0 = load i32* %arrayidx7, align 4, !dbg !1229
  %cmp = icmp eq i32 %J.0, -1, !dbg !1229
  br i1 %cmp, label %for.end, label %for.body, !dbg !1229

for.end:                                          ; preds = %for.inc, %entry
  ret void, !dbg !1236
}

; Function Attrs: optsize
declare i32 @Ideq_insertAtTail(%struct._Ideq*, i32) #2

; Function Attrs: nounwind optsize uwtable
define noalias %struct._IP** @FrontMtx_forwardSetup(%struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* nocapture %msgFile) #0 {
entry:
  %nadj = alloca i32, align 4
  %adj = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !425), !dbg !1237
  call void @llvm.dbg.value(metadata !{i32 %msglvl}, i64 0, metadata !426), !dbg !1238
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %msgFile}, i64 0, metadata !427), !dbg !1239
  call void @llvm.dbg.declare(metadata !{i32* %nadj}, metadata !431), !dbg !1240
  call void @llvm.dbg.declare(metadata !{i32** %adj}, metadata !434), !dbg !1241
  %call = call i32 @FrontMtx_nLowerBlocks(%struct._FrontMtx* %frontmtx) #6, !dbg !1242
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !432), !dbg !1242
  %call1 = call i32 @FrontMtx_nfront(%struct._FrontMtx* %frontmtx) #6, !dbg !1243
  call void @llvm.dbg.value(metadata !{i32 %call1}, i64 0, metadata !433), !dbg !1243
  %add = add i32 %call1, 2, !dbg !1244
  %cmp = icmp sgt i32 %add, 0, !dbg !1244
  br i1 %cmp, label %if.then, label %if.else11, !dbg !1244

if.then:                                          ; preds = %entry
  %conv = sext i32 %add to i64, !dbg !1245
  %mul = shl nsw i64 %conv, 3, !dbg !1245
  %call3 = call noalias i8* @malloc(i64 %mul) #6, !dbg !1245
  %0 = bitcast i8* %call3 to %struct._IP**, !dbg !1245
  call void @llvm.dbg.value(metadata !{%struct._IP** %0}, i64 0, metadata !436), !dbg !1245
  %cmp4 = icmp eq i8* %call3, null, !dbg !1245
  br i1 %cmp4, label %if.then6, label %if.end22, !dbg !1245

if.then6:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !1247, !tbaa !542
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0), i64 %mul, i32 1029, i8* getelementptr inbounds ([88 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !1247
  call void @exit(i32 -1) #7, !dbg !1247
  unreachable, !dbg !1247

if.else11:                                        ; preds = %entry
  %cmp13 = icmp eq i32 %add, 0, !dbg !1244
  br i1 %cmp13, label %if.end22, label %if.else16, !dbg !1244

if.else16:                                        ; preds = %if.else11
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !1249, !tbaa !542
  %conv18 = sext i32 %add to i64, !dbg !1249
  %mul19 = shl nsw i64 %conv18, 3, !dbg !1249
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([47 x i8]* @.str4, i64 0, i64 0), i64 %mul19, i32 1029, i8* getelementptr inbounds ([88 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !1249
  call void @exit(i32 -1) #7, !dbg !1249
  unreachable, !dbg !1249

if.end22:                                         ; preds = %if.else11, %if.then
  %heads.0 = phi %struct._IP** [ %0, %if.then ], [ null, %if.else11 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !429), !dbg !1251
  %add23 = add i32 %call1, 1, !dbg !1251
  %cmp24113 = icmp slt i32 %add23, 0, !dbg !1251
  br i1 %cmp24113, label %for.end, label %for.body.lr.ph, !dbg !1251

for.body.lr.ph:                                   ; preds = %if.end22
  %heads.0118 = bitcast %struct._IP** %heads.0 to i8*
  %3 = zext i32 %add23 to i64
  %4 = shl nuw nsw i64 %3, 3, !dbg !1251
  %5 = add i64 %4, 8, !dbg !1251
  call void @llvm.memset.p0i8.i64(i8* %heads.0118, i8 0, i64 %5, i32 8, i1 false), !dbg !1253
  br label %for.end, !dbg !1251

for.end:                                          ; preds = %for.body.lr.ph, %if.end22
  %call26 = call %struct._IP* @IP_init(i32 %call, i32 1) #6, !dbg !1255
  %idxprom28 = sext i32 %add23 to i64, !dbg !1255
  %arrayidx29 = getelementptr inbounds %struct._IP** %heads.0, i64 %idxprom28, !dbg !1255
  store %struct._IP* %call26, %struct._IP** %arrayidx29, align 8, !dbg !1255, !tbaa !542
  %idxprom30 = sext i32 %call1 to i64, !dbg !1255
  %arrayidx31 = getelementptr inbounds %struct._IP** %heads.0, i64 %idxprom30, !dbg !1255
  store %struct._IP* %call26, %struct._IP** %arrayidx31, align 8, !dbg !1255, !tbaa !542
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !429), !dbg !1256
  %cmp33111 = icmp sgt i32 %call1, 0, !dbg !1256
  br i1 %cmp33111, label %for.body35.lr.ph, label %for.end71, !dbg !1256

for.body35.lr.ph:                                 ; preds = %for.end
  %cmp54 = icmp sgt i32 %msglvl, 3, !dbg !1258
  br label %for.body35, !dbg !1256

for.body35:                                       ; preds = %for.inc69, %for.body35.lr.ph
  %J.1112 = phi i32 [ 0, %for.body35.lr.ph ], [ %inc70, %for.inc69 ]
  call void @FrontMtx_lowerAdjFronts(%struct._FrontMtx* %frontmtx, i32 %J.1112, i32* %nadj, i32** %adj) #6, !dbg !1263
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !428), !dbg !1264
  call void @llvm.dbg.value(metadata !{i32* %nadj}, i64 0, metadata !431), !dbg !1264
  %6 = load i32* %nadj, align 4, !dbg !1264, !tbaa !534
  %cmp37109 = icmp sgt i32 %6, 0, !dbg !1264
  br i1 %cmp37109, label %for.body39, label %for.inc69, !dbg !1264

for.body39:                                       ; preds = %for.inc66, %for.body35
  %indvars.iv = phi i64 [ 0, %for.body35 ], [ %indvars.iv.next, %for.inc66 ]
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !434), !dbg !1265
  %7 = load i32** %adj, align 8, !dbg !1265, !tbaa !542
  %arrayidx41 = getelementptr inbounds i32* %7, i64 %indvars.iv, !dbg !1265
  %8 = load i32* %arrayidx41, align 4, !dbg !1265, !tbaa !534
  call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !430), !dbg !1265
  %cmp42 = icmp sgt i32 %8, %J.1112, !dbg !1265
  br i1 %cmp42, label %if.then44, label %for.inc66, !dbg !1265

if.then44:                                        ; preds = %for.body39
  %9 = load %struct._IP** %arrayidx31, align 8, !dbg !1266, !tbaa !542
  call void @llvm.dbg.value(metadata !{%struct._IP* %9}, i64 0, metadata !435), !dbg !1266
  %next = getelementptr inbounds %struct._IP* %9, i64 0, i32 1, !dbg !1266
  %10 = load %struct._IP** %next, align 8, !dbg !1266, !tbaa !542
  store %struct._IP* %10, %struct._IP** %arrayidx31, align 8, !dbg !1266, !tbaa !542
  %val = getelementptr inbounds %struct._IP* %9, i64 0, i32 0, !dbg !1267
  store i32 %J.1112, i32* %val, align 4, !dbg !1267, !tbaa !534
  %idxprom49 = sext i32 %8 to i64, !dbg !1267
  %arrayidx50 = getelementptr inbounds %struct._IP** %heads.0, i64 %idxprom49, !dbg !1267
  %11 = load %struct._IP** %arrayidx50, align 8, !dbg !1267, !tbaa !542
  store %struct._IP* %11, %struct._IP** %next, align 8, !dbg !1267, !tbaa !542
  store %struct._IP* %9, %struct._IP** %arrayidx50, align 8, !dbg !1267, !tbaa !542
  br i1 %cmp54, label %if.then56, label %for.inc66, !dbg !1258

if.then56:                                        ; preds = %if.then44
  %cmp58 = icmp eq %struct._IP* %11, null, !dbg !1268
  br i1 %cmp58, label %cond.end, label %cond.false, !dbg !1268

cond.false:                                       ; preds = %if.then56
  %val61 = getelementptr inbounds %struct._IP* %11, i64 0, i32 0, !dbg !1268
  %12 = load i32* %val61, align 4, !dbg !1268, !tbaa !534
  br label %cond.end, !dbg !1268

cond.end:                                         ; preds = %if.then56, %cond.false
  %cond = phi i32 [ %12, %cond.false ], [ -1, %if.then56 ], !dbg !1268
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([31 x i8]* @.str29, i64 0, i64 0), i32 %8, i32 %J.1112, i32 %8, i32 %cond) #6, !dbg !1268
  %call63 = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !1270
  br label %for.inc66, !dbg !1271

for.inc66:                                        ; preds = %if.then44, %for.body39, %cond.end
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1264
  call void @llvm.dbg.value(metadata !{i32* %nadj}, i64 0, metadata !431), !dbg !1264
  %13 = load i32* %nadj, align 4, !dbg !1264, !tbaa !534
  %14 = trunc i64 %indvars.iv.next to i32, !dbg !1264
  %cmp37 = icmp slt i32 %14, %13, !dbg !1264
  br i1 %cmp37, label %for.body39, label %for.inc69, !dbg !1264

for.inc69:                                        ; preds = %for.inc66, %for.body35
  %inc70 = add nsw i32 %J.1112, 1, !dbg !1256
  call void @llvm.dbg.value(metadata !{i32 %inc70}, i64 0, metadata !429), !dbg !1256
  %exitcond = icmp eq i32 %inc70, %call1, !dbg !1256
  br i1 %exitcond, label %for.end71, label %for.body35, !dbg !1256

for.end71:                                        ; preds = %for.inc69, %for.end
  ret %struct._IP** %heads.0, !dbg !1272
}

; Function Attrs: optsize
declare i32 @FrontMtx_nLowerBlocks(%struct._FrontMtx*) #2

; Function Attrs: optsize
declare %struct._IP* @IP_init(i32, i32) #2

; Function Attrs: optsize
declare void @FrontMtx_lowerAdjFronts(%struct._FrontMtx*, i32, i32*, i32**) #2

; Function Attrs: nounwind optsize uwtable
define noalias %struct._IP** @FrontMtx_backwardSetup(%struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* nocapture %msgFile) #0 {
entry:
  %nadj = alloca i32, align 4
  %adj = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !439), !dbg !1273
  call void @llvm.dbg.value(metadata !{i32 %msglvl}, i64 0, metadata !440), !dbg !1274
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %msgFile}, i64 0, metadata !441), !dbg !1275
  call void @llvm.dbg.declare(metadata !{i32* %nadj}, metadata !447), !dbg !1276
  call void @llvm.dbg.declare(metadata !{i32** %adj}, metadata !450), !dbg !1277
  %call = call i32 @FrontMtx_nfront(%struct._FrontMtx* %frontmtx) #6, !dbg !1278
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !449), !dbg !1278
  %call1 = call i32 @FrontMtx_nLowerBlocks(%struct._FrontMtx* %frontmtx) #6, !dbg !1279
  call void @llvm.dbg.value(metadata !{i32 %call1}, i64 0, metadata !448), !dbg !1279
  %add = add i32 %call, 2, !dbg !1280
  %cmp = icmp sgt i32 %add, 0, !dbg !1280
  br i1 %cmp, label %if.then, label %if.else11, !dbg !1280

if.then:                                          ; preds = %entry
  %conv = sext i32 %add to i64, !dbg !1281
  %mul = shl nsw i64 %conv, 3, !dbg !1281
  %call3 = call noalias i8* @malloc(i64 %mul) #6, !dbg !1281
  %0 = bitcast i8* %call3 to %struct._IP**, !dbg !1281
  call void @llvm.dbg.value(metadata !{%struct._IP** %0}, i64 0, metadata !443), !dbg !1281
  %cmp4 = icmp eq i8* %call3, null, !dbg !1281
  br i1 %cmp4, label %if.then6, label %if.end22, !dbg !1281

if.then6:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !1283, !tbaa !542
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0), i64 %mul, i32 1071, i8* getelementptr inbounds ([88 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !1283
  call void @exit(i32 -1) #7, !dbg !1283
  unreachable, !dbg !1283

if.else11:                                        ; preds = %entry
  %cmp13 = icmp eq i32 %add, 0, !dbg !1280
  br i1 %cmp13, label %if.end22, label %if.else16, !dbg !1280

if.else16:                                        ; preds = %if.else11
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !1285, !tbaa !542
  %conv18 = sext i32 %add to i64, !dbg !1285
  %mul19 = shl nsw i64 %conv18, 3, !dbg !1285
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([47 x i8]* @.str4, i64 0, i64 0), i64 %mul19, i32 1071, i8* getelementptr inbounds ([88 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !1285
  call void @exit(i32 -1) #7, !dbg !1285
  unreachable, !dbg !1285

if.end22:                                         ; preds = %if.else11, %if.then
  %heads.0 = phi %struct._IP** [ %0, %if.then ], [ null, %if.else11 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !445), !dbg !1287
  %add23 = add i32 %call, 1, !dbg !1287
  %cmp24126 = icmp slt i32 %add23, 0, !dbg !1287
  br i1 %cmp24126, label %for.end, label %for.body.lr.ph, !dbg !1287

for.body.lr.ph:                                   ; preds = %if.end22
  %heads.0132 = bitcast %struct._IP** %heads.0 to i8*
  %3 = zext i32 %add23 to i64
  %4 = shl nuw nsw i64 %3, 3, !dbg !1287
  %5 = add i64 %4, 8, !dbg !1287
  call void @llvm.memset.p0i8.i64(i8* %heads.0132, i8 0, i64 %5, i32 8, i1 false), !dbg !1289
  br label %for.end, !dbg !1287

for.end:                                          ; preds = %for.body.lr.ph, %if.end22
  %call26 = call %struct._IP* @IP_init(i32 %call1, i32 1) #6, !dbg !1291
  %idxprom28 = sext i32 %add23 to i64, !dbg !1291
  %arrayidx29 = getelementptr inbounds %struct._IP** %heads.0, i64 %idxprom28, !dbg !1291
  store %struct._IP* %call26, %struct._IP** %arrayidx29, align 8, !dbg !1291, !tbaa !542
  %idxprom30 = sext i32 %call to i64, !dbg !1291
  %arrayidx31 = getelementptr inbounds %struct._IP** %heads.0, i64 %idxprom30, !dbg !1291
  store %struct._IP* %call26, %struct._IP** %arrayidx31, align 8, !dbg !1291, !tbaa !542
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !445), !dbg !1292
  %cmp33124 = icmp sgt i32 %call, 0, !dbg !1292
  br i1 %cmp33124, label %for.body35.lr.ph, label %for.end80, !dbg !1292

for.body35.lr.ph:                                 ; preds = %for.end
  %cmp63 = icmp sgt i32 %msglvl, 3, !dbg !1294
  br label %for.body35, !dbg !1292

for.body35:                                       ; preds = %for.body35.lr.ph, %for.inc78
  %indvars.iv128 = phi i64 [ 0, %for.body35.lr.ph ], [ %indvars.iv.next129, %for.inc78 ]
  %6 = trunc i64 %indvars.iv128 to i32, !dbg !1299
  call void @FrontMtx_upperAdjFronts(%struct._FrontMtx* %frontmtx, i32 %6, i32* %nadj, i32** %adj) #6, !dbg !1299
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !444), !dbg !1300
  call void @llvm.dbg.value(metadata !{i32* %nadj}, i64 0, metadata !447), !dbg !1300
  %7 = load i32* %nadj, align 4, !dbg !1300, !tbaa !534
  %cmp37122 = icmp sgt i32 %7, 0, !dbg !1300
  br i1 %cmp37122, label %for.body39.lr.ph, label %for.inc78, !dbg !1300

for.body39.lr.ph:                                 ; preds = %for.body35
  %arrayidx59 = getelementptr inbounds %struct._IP** %heads.0, i64 %indvars.iv128, !dbg !1301
  br label %for.body39, !dbg !1300

for.body39:                                       ; preds = %for.inc75, %for.body39.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body39.lr.ph ], [ %indvars.iv.next, %for.inc75 ]
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !450), !dbg !1302
  %8 = load i32** %adj, align 8, !dbg !1302, !tbaa !542
  %arrayidx41 = getelementptr inbounds i32* %8, i64 %indvars.iv, !dbg !1302
  %9 = load i32* %arrayidx41, align 4, !dbg !1302, !tbaa !534
  call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !446), !dbg !1302
  %cmp42 = icmp sgt i32 %9, %6, !dbg !1302
  br i1 %cmp42, label %if.then44, label %for.inc75, !dbg !1302

if.then44:                                        ; preds = %for.body39
  %10 = load %struct._IP** %arrayidx31, align 8, !dbg !1303, !tbaa !542
  %cmp47 = icmp eq %struct._IP* %10, null, !dbg !1303
  br i1 %cmp47, label %if.then49, label %if.end53, !dbg !1303

if.then49:                                        ; preds = %if.then44
  %11 = load %struct._IO_FILE** @stderr, align 8, !dbg !1304, !tbaa !542
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([27 x i8]* @.str30, i64 0, i64 0), %struct._IP* null) #6, !dbg !1304
  call void @exit(i32 -1) #7, !dbg !1306
  unreachable, !dbg !1306

if.end53:                                         ; preds = %if.then44
  call void @llvm.dbg.value(metadata !1307, i64 0, metadata !442), !dbg !1308
  %next = getelementptr inbounds %struct._IP* %10, i64 0, i32 1, !dbg !1308
  %12 = load %struct._IP** %next, align 8, !dbg !1308, !tbaa !542
  store %struct._IP* %12, %struct._IP** %arrayidx31, align 8, !dbg !1308, !tbaa !542
  %val = getelementptr inbounds %struct._IP* %10, i64 0, i32 0, !dbg !1301
  store i32 %9, i32* %val, align 4, !dbg !1301, !tbaa !534
  %13 = load %struct._IP** %arrayidx59, align 8, !dbg !1301, !tbaa !542
  store %struct._IP* %13, %struct._IP** %next, align 8, !dbg !1301, !tbaa !542
  store %struct._IP* %10, %struct._IP** %arrayidx59, align 8, !dbg !1301, !tbaa !542
  br i1 %cmp63, label %if.then65, label %for.inc75, !dbg !1294

if.then65:                                        ; preds = %if.end53
  %cmp67 = icmp eq %struct._IP* %13, null, !dbg !1309
  br i1 %cmp67, label %cond.end, label %cond.false, !dbg !1309

cond.false:                                       ; preds = %if.then65
  %val70 = getelementptr inbounds %struct._IP* %13, i64 0, i32 0, !dbg !1309
  %14 = load i32* %val70, align 4, !dbg !1309, !tbaa !534
  br label %cond.end, !dbg !1309

cond.end:                                         ; preds = %if.then65, %cond.false
  %cond = phi i32 [ %14, %cond.false ], [ -1, %if.then65 ], !dbg !1309
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([31 x i8]* @.str31, i64 0, i64 0), i32 %6, i32 %9, i32 %6, i32 %cond) #6, !dbg !1309
  %call72 = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !1311
  br label %for.inc75, !dbg !1312

for.inc75:                                        ; preds = %if.end53, %for.body39, %cond.end
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1300
  call void @llvm.dbg.value(metadata !{i32* %nadj}, i64 0, metadata !447), !dbg !1300
  %15 = load i32* %nadj, align 4, !dbg !1300, !tbaa !534
  %16 = trunc i64 %indvars.iv.next to i32, !dbg !1300
  %cmp37 = icmp slt i32 %16, %15, !dbg !1300
  br i1 %cmp37, label %for.body39, label %for.inc78, !dbg !1300

for.inc78:                                        ; preds = %for.inc75, %for.body35
  %indvars.iv.next129 = add i64 %indvars.iv128, 1, !dbg !1292
  %17 = trunc i64 %indvars.iv.next129 to i32, !dbg !1292
  %cmp33 = icmp slt i32 %17, %call, !dbg !1292
  br i1 %cmp33, label %for.body35, label %for.end80, !dbg !1292

for.end80:                                        ; preds = %for.inc78, %for.end
  ret %struct._IP** %heads.0, !dbg !1313
}

; Function Attrs: optsize
declare void @FrontMtx_upperAdjFronts(%struct._FrontMtx*, i32, i32*, i32**) #2

; Function Attrs: optsize
declare void @SubMtx_solveupd(%struct._SubMtx*, %struct._SubMtx*, %struct._SubMtx*) #2

; Function Attrs: optsize
declare i32 @SubMtxList_isListNonempty(%struct._SubMtxList*, i32) #2

; Function Attrs: optsize
declare %struct._SubMtx* @SubMtxList_getList(%struct._SubMtxList*, i32) #2

; Function Attrs: optsize
declare void @DVadd(i32, double*, double*) #2

; Function Attrs: optsize
declare void @SubMtxManager_releaseListOfObjects(%struct._SubMtxManager*, %struct._SubMtx*) #2

; Function Attrs: optsize
declare void @SubMtx_solveupdT(%struct._SubMtx*, %struct._SubMtx*, %struct._SubMtx*) #2

; Function Attrs: optsize
declare void @SubMtx_solveupdH(%struct._SubMtx*, %struct._SubMtx*, %struct._SubMtx*) #2

; Function Attrs: optsize
declare void @DVzero(i32, double*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !288, metadata !333, metadata !349, metadata !370, metadata !402, metadata !421, metadata !437, metadata !451, metadata !468, metadata !490, metadata !506}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_loadRightHandSide", metadata !"FrontMtx_loadRightHandSide", metadata !"", i32 26, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._SubMtx** (%struct._FrontMtx*, %struct._DenseMtx*, i32*, i32, %struct._SubMtxManager*, i32, %struct._IO_FILE*)* @FrontMtx_loadRightHandSide, null, null, metadata !258, i32 34} ; [ DW_TAG_subprogram ] [line 26] [def] [scope 34] [FrontMtx_loadRightHandSide]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !37, metadata !183, metadata !61, metadata !15, metadata !145, metadata !15, metadata !202}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtx]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"SubMtx", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [SubMtx] [line 43, size 0, align 0, offset 0] [from _SubMtx]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_SubMtx", i32 44, i64 576, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_SubMtx] [line 44, size 576, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../SubMtx/SubMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !25, metadata !34}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"type", i32 45, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [type] [line 45, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"mode", i32 46, i64 32, i64 32, i64 32, i32 0, metadata !15} ; [ DW_TAG_member ] [mode] [line 46, size 32, align 32, offset 32] [from int]
!17 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"rowid", i32 47, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [rowid] [line 47, size 32, align 32, offset 64] [from int]
!18 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"colid", i32 48, i64 32, i64 32, i64 96, i32 0, metadata !15} ; [ DW_TAG_member ] [colid] [line 48, size 32, align 32, offset 96] [from int]
!19 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nrow", i32 49, i64 32, i64 32, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [nrow] [line 49, size 32, align 32, offset 128] [from int]
!20 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"ncol", i32 50, i64 32, i64 32, i64 160, i32 0, metadata !15} ; [ DW_TAG_member ] [ncol] [line 50, size 32, align 32, offset 160] [from int]
!21 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nent", i32 51, i64 32, i64 32, i64 192, i32 0, metadata !15} ; [ DW_TAG_member ] [nent] [line 51, size 32, align 32, offset 192] [from int]
!22 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"entries", i32 52, i64 64, i64 64, i64 256, i32 0, metadata !23} ; [ DW_TAG_member ] [entries] [line 52, size 64, align 64, offset 256] [from ]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!24 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!25 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"wrkDV", i32 53, i64 192, i64 64, i64 320, i32 0, metadata !26} ; [ DW_TAG_member ] [wrkDV] [line 53, size 192, align 64, offset 320] [from DV]
!26 = metadata !{i32 786454, metadata !12, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!27 = metadata !{i32 786451, metadata !28, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !29, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!28 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!29 = metadata !{metadata !30, metadata !31, metadata !32, metadata !33}
!30 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!31 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !15} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!32 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!33 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !23} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!34 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"next", i32 54, i64 64, i64 64, i64 512, i32 0, metadata !35} ; [ DW_TAG_member ] [next] [line 54, size 64, align 64, offset 512] [from ]
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtx]
!36 = metadata !{i32 786454, metadata !12, null, metadata !"SubMtx", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [SubMtx] [line 43, size 0, align 0, offset 0] [from _SubMtx]
!37 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FrontMtx]
!38 = metadata !{i32 786454, metadata !1, null, metadata !"FrontMtx", i32 96, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ] [FrontMtx] [line 96, size 0, align 0, offset 0] [from _FrontMtx]
!39 = metadata !{i32 786451, metadata !40, null, metadata !"_FrontMtx", i32 97, i64 1536, i64 64, i32 0, i32 0, null, metadata !41, i32 0, null, null} ; [ DW_TAG_structure_type ] [_FrontMtx] [line 97, size 1536, align 64, offset 0] [from ]
!40 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../FrontMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!41 = metadata !{metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !64, metadata !85, metadata !86, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !143, metadata !144, metadata !169, metadata !170, metadata !182}
!42 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"nfront", i32 98, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [nfront] [line 98, size 32, align 32, offset 0] [from int]
!43 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"neqns", i32 99, i64 32, i64 32, i64 32, i32 0, metadata !15} ; [ DW_TAG_member ] [neqns] [line 99, size 32, align 32, offset 32] [from int]
!44 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"type", i32 100, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [type] [line 100, size 32, align 32, offset 64] [from int]
!45 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"symmetryflag", i32 101, i64 32, i64 32, i64 96, i32 0, metadata !15} ; [ DW_TAG_member ] [symmetryflag] [line 101, size 32, align 32, offset 96] [from int]
!46 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"sparsityflag", i32 102, i64 32, i64 32, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [sparsityflag] [line 102, size 32, align 32, offset 128] [from int]
!47 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"pivotingflag", i32 103, i64 32, i64 32, i64 160, i32 0, metadata !15} ; [ DW_TAG_member ] [pivotingflag] [line 103, size 32, align 32, offset 160] [from int]
!48 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"dataMode", i32 104, i64 32, i64 32, i64 192, i32 0, metadata !15} ; [ DW_TAG_member ] [dataMode] [line 104, size 32, align 32, offset 192] [from int]
!49 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"nentD", i32 105, i64 32, i64 32, i64 224, i32 0, metadata !15} ; [ DW_TAG_member ] [nentD] [line 105, size 32, align 32, offset 224] [from int]
!50 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"nentL", i32 106, i64 32, i64 32, i64 256, i32 0, metadata !15} ; [ DW_TAG_member ] [nentL] [line 106, size 32, align 32, offset 256] [from int]
!51 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"nentU", i32 107, i64 32, i64 32, i64 288, i32 0, metadata !15} ; [ DW_TAG_member ] [nentU] [line 107, size 32, align 32, offset 288] [from int]
!52 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"tree", i32 108, i64 64, i64 64, i64 320, i32 0, metadata !53} ; [ DW_TAG_member ] [tree] [line 108, size 64, align 64, offset 320] [from ]
!53 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Tree]
!54 = metadata !{i32 786454, metadata !40, null, metadata !"Tree", i32 15, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ] [Tree] [line 15, size 0, align 0, offset 0] [from _Tree]
!55 = metadata !{i32 786451, metadata !56, null, metadata !"_Tree", i32 16, i64 256, i64 64, i32 0, i32 0, null, metadata !57, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Tree] [line 16, size 256, align 64, offset 0] [from ]
!56 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../Tree/Tree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!57 = metadata !{metadata !58, metadata !59, metadata !60, metadata !62, metadata !63}
!58 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"n", i32 17, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [n] [line 17, size 32, align 32, offset 0] [from int]
!59 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"root", i32 18, i64 32, i64 32, i64 32, i32 0, metadata !15} ; [ DW_TAG_member ] [root] [line 18, size 32, align 32, offset 32] [from int]
!60 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"par", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !61} ; [ DW_TAG_member ] [par] [line 19, size 64, align 64, offset 64] [from ]
!61 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!62 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"fch", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !61} ; [ DW_TAG_member ] [fch] [line 20, size 64, align 64, offset 128] [from ]
!63 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"sib", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !61} ; [ DW_TAG_member ] [sib] [line 21, size 64, align 64, offset 192] [from ]
!64 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"frontETree", i32 109, i64 64, i64 64, i64 384, i32 0, metadata !65} ; [ DW_TAG_member ] [frontETree] [line 109, size 64, align 64, offset 384] [from ]
!65 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !66} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ETree]
!66 = metadata !{i32 786454, metadata !40, null, metadata !"ETree", i32 31, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_typedef ] [ETree] [line 31, size 0, align 0, offset 0] [from _ETree]
!67 = metadata !{i32 786451, metadata !68, null, metadata !"_ETree", i32 32, i64 320, i64 64, i32 0, i32 0, null, metadata !69, i32 0, null, null} ; [ DW_TAG_structure_type ] [_ETree] [line 32, size 320, align 64, offset 0] [from ]
!68 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../ETree/ETree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!69 = metadata !{metadata !70, metadata !71, metadata !72, metadata !73, metadata !83, metadata !84}
!70 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"nfront", i32 33, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [nfront] [line 33, size 32, align 32, offset 0] [from int]
!71 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"nvtx", i32 34, i64 32, i64 32, i64 32, i32 0, metadata !15} ; [ DW_TAG_member ] [nvtx] [line 34, size 32, align 32, offset 32] [from int]
!72 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"tree", i32 35, i64 64, i64 64, i64 64, i32 0, metadata !53} ; [ DW_TAG_member ] [tree] [line 35, size 64, align 64, offset 64] [from ]
!73 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"nodwghtsIV", i32 36, i64 64, i64 64, i64 128, i32 0, metadata !74} ; [ DW_TAG_member ] [nodwghtsIV] [line 36, size 64, align 64, offset 128] [from ]
!74 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !75} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IV]
!75 = metadata !{i32 786454, metadata !68, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !76} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!76 = metadata !{i32 786451, metadata !77, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !78, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!77 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!78 = metadata !{metadata !79, metadata !80, metadata !81, metadata !82}
!79 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!80 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !15} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!81 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!82 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !61} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!83 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"bndwghtsIV", i32 37, i64 64, i64 64, i64 192, i32 0, metadata !74} ; [ DW_TAG_member ] [bndwghtsIV] [line 37, size 64, align 64, offset 192] [from ]
!84 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"vtxToFrontIV", i32 38, i64 64, i64 64, i64 256, i32 0, metadata !74} ; [ DW_TAG_member ] [vtxToFrontIV] [line 38, size 64, align 64, offset 256] [from ]
!85 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"frontsizesIV", i32 110, i64 64, i64 64, i64 448, i32 0, metadata !74} ; [ DW_TAG_member ] [frontsizesIV] [line 110, size 64, align 64, offset 448] [from ]
!86 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"symbfacIVL", i32 111, i64 64, i64 64, i64 512, i32 0, metadata !87} ; [ DW_TAG_member ] [symbfacIVL] [line 111, size 64, align 64, offset 512] [from ]
!87 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IVL]
!88 = metadata !{i32 786454, metadata !40, null, metadata !"IVL", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [IVL] [line 55, size 0, align 0, offset 0] [from _IVL]
!89 = metadata !{i32 786451, metadata !90, null, metadata !"_IVL", i32 79, i64 384, i64 64, i32 0, i32 0, null, metadata !91, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IVL] [line 79, size 384, align 64, offset 0] [from ]
!90 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../IVL/IVL.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!91 = metadata !{metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !99, metadata !100}
!92 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"type", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [type] [line 80, size 32, align 32, offset 0] [from int]
!93 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"maxnlist", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !15} ; [ DW_TAG_member ] [maxnlist] [line 81, size 32, align 32, offset 32] [from int]
!94 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"nlist", i32 82, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [nlist] [line 82, size 32, align 32, offset 64] [from int]
!95 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"tsize", i32 83, i64 32, i64 32, i64 96, i32 0, metadata !15} ; [ DW_TAG_member ] [tsize] [line 83, size 32, align 32, offset 96] [from int]
!96 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"sizes", i32 84, i64 64, i64 64, i64 128, i32 0, metadata !61} ; [ DW_TAG_member ] [sizes] [line 84, size 64, align 64, offset 128] [from ]
!97 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"p_vec", i32 85, i64 64, i64 64, i64 192, i32 0, metadata !98} ; [ DW_TAG_member ] [p_vec] [line 85, size 64, align 64, offset 192] [from ]
!98 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!99 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"incr", i32 86, i64 32, i64 32, i64 256, i32 0, metadata !15} ; [ DW_TAG_member ] [incr] [line 86, size 32, align 32, offset 256] [from int]
!100 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"chunk", i32 87, i64 64, i64 64, i64 320, i32 0, metadata !101} ; [ DW_TAG_member ] [chunk] [line 87, size 64, align 64, offset 320] [from ]
!101 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !102} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Ichunk]
!102 = metadata !{i32 786454, metadata !90, null, metadata !"Ichunk", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [Ichunk] [line 56, size 0, align 0, offset 0] [from _Ichunk]
!103 = metadata !{i32 786451, metadata !90, null, metadata !"_Ichunk", i32 102, i64 192, i64 64, i32 0, i32 0, null, metadata !104, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Ichunk] [line 102, size 192, align 64, offset 0] [from ]
!104 = metadata !{metadata !105, metadata !106, metadata !107, metadata !108}
!105 = metadata !{i32 786445, metadata !90, metadata !103, metadata !"size", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [size] [line 103, size 32, align 32, offset 0] [from int]
!106 = metadata !{i32 786445, metadata !90, metadata !103, metadata !"inuse", i32 104, i64 32, i64 32, i64 32, i32 0, metadata !15} ; [ DW_TAG_member ] [inuse] [line 104, size 32, align 32, offset 32] [from int]
!107 = metadata !{i32 786445, metadata !90, metadata !103, metadata !"base", i32 105, i64 64, i64 64, i64 64, i32 0, metadata !61} ; [ DW_TAG_member ] [base] [line 105, size 64, align 64, offset 64] [from ]
!108 = metadata !{i32 786445, metadata !90, metadata !103, metadata !"next", i32 106, i64 64, i64 64, i64 128, i32 0, metadata !101} ; [ DW_TAG_member ] [next] [line 106, size 64, align 64, offset 128] [from ]
!109 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"rowadjIVL", i32 112, i64 64, i64 64, i64 576, i32 0, metadata !87} ; [ DW_TAG_member ] [rowadjIVL] [line 112, size 64, align 64, offset 576] [from ]
!110 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"coladjIVL", i32 113, i64 64, i64 64, i64 640, i32 0, metadata !87} ; [ DW_TAG_member ] [coladjIVL] [line 113, size 64, align 64, offset 640] [from ]
!111 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"lowerblockIVL", i32 114, i64 64, i64 64, i64 704, i32 0, metadata !87} ; [ DW_TAG_member ] [lowerblockIVL] [line 114, size 64, align 64, offset 704] [from ]
!112 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"upperblockIVL", i32 115, i64 64, i64 64, i64 768, i32 0, metadata !87} ; [ DW_TAG_member ] [upperblockIVL] [line 115, size 64, align 64, offset 768] [from ]
!113 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"p_mtxDJJ", i32 116, i64 64, i64 64, i64 832, i32 0, metadata !8} ; [ DW_TAG_member ] [p_mtxDJJ] [line 116, size 64, align 64, offset 832] [from ]
!114 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"p_mtxUJJ", i32 117, i64 64, i64 64, i64 896, i32 0, metadata !8} ; [ DW_TAG_member ] [p_mtxUJJ] [line 117, size 64, align 64, offset 896] [from ]
!115 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"p_mtxUJN", i32 118, i64 64, i64 64, i64 960, i32 0, metadata !8} ; [ DW_TAG_member ] [p_mtxUJN] [line 118, size 64, align 64, offset 960] [from ]
!116 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"p_mtxLJJ", i32 119, i64 64, i64 64, i64 1024, i32 0, metadata !8} ; [ DW_TAG_member ] [p_mtxLJJ] [line 119, size 64, align 64, offset 1024] [from ]
!117 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"p_mtxLNJ", i32 120, i64 64, i64 64, i64 1088, i32 0, metadata !8} ; [ DW_TAG_member ] [p_mtxLNJ] [line 120, size 64, align 64, offset 1088] [from ]
!118 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"lowerhash", i32 121, i64 64, i64 64, i64 1152, i32 0, metadata !119} ; [ DW_TAG_member ] [lowerhash] [line 121, size 64, align 64, offset 1152] [from ]
!119 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !120} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from I2Ohash]
!120 = metadata !{i32 786454, metadata !40, null, metadata !"I2Ohash", i32 6, i64 0, i64 0, i64 0, i32 0, metadata !121} ; [ DW_TAG_typedef ] [I2Ohash] [line 6, size 0, align 0, offset 0] [from _I2Ohash]
!121 = metadata !{i32 786451, metadata !122, null, metadata !"_I2Ohash", i32 7, i64 320, i64 64, i32 0, i32 0, null, metadata !123, i32 0, null, null} ; [ DW_TAG_structure_type ] [_I2Ohash] [line 7, size 320, align 64, offset 0] [from ]
!122 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../I2Ohash/I2Ohash.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!123 = metadata !{metadata !124, metadata !125, metadata !126, metadata !127, metadata !140, metadata !141}
!124 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"nlist", i32 8, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [nlist] [line 8, size 32, align 32, offset 0] [from int]
!125 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"grow", i32 9, i64 32, i64 32, i64 32, i32 0, metadata !15} ; [ DW_TAG_member ] [grow] [line 9, size 32, align 32, offset 32] [from int]
!126 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"nitem", i32 10, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [nitem] [line 10, size 32, align 32, offset 64] [from int]
!127 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"baseI2OP", i32 11, i64 64, i64 64, i64 128, i32 0, metadata !128} ; [ DW_TAG_member ] [baseI2OP] [line 11, size 64, align 64, offset 128] [from ]
!128 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !129} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from I2OP]
!129 = metadata !{i32 786454, metadata !122, null, metadata !"I2OP", i32 5, i64 0, i64 0, i64 0, i32 0, metadata !130} ; [ DW_TAG_typedef ] [I2OP] [line 5, size 0, align 0, offset 0] [from _I2OP]
!130 = metadata !{i32 786451, metadata !131, null, metadata !"_I2OP", i32 6, i64 192, i64 64, i32 0, i32 0, null, metadata !132, i32 0, null, null} ; [ DW_TAG_structure_type ] [_I2OP] [line 6, size 192, align 64, offset 0] [from ]
!131 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../Utilities/I2OP.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!132 = metadata !{metadata !133, metadata !134, metadata !135, metadata !137}
!133 = metadata !{i32 786445, metadata !131, metadata !130, metadata !"value0", i32 7, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [value0] [line 7, size 32, align 32, offset 0] [from int]
!134 = metadata !{i32 786445, metadata !131, metadata !130, metadata !"value1", i32 8, i64 32, i64 32, i64 32, i32 0, metadata !15} ; [ DW_TAG_member ] [value1] [line 8, size 32, align 32, offset 32] [from int]
!135 = metadata !{i32 786445, metadata !131, metadata !130, metadata !"value2", i32 9, i64 64, i64 64, i64 64, i32 0, metadata !136} ; [ DW_TAG_member ] [value2] [line 9, size 64, align 64, offset 64] [from ]
!136 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!137 = metadata !{i32 786445, metadata !131, metadata !130, metadata !"next", i32 10, i64 64, i64 64, i64 128, i32 0, metadata !138} ; [ DW_TAG_member ] [next] [line 10, size 64, align 64, offset 128] [from ]
!138 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !139} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from I2OP]
!139 = metadata !{i32 786454, metadata !131, null, metadata !"I2OP", i32 5, i64 0, i64 0, i64 0, i32 0, metadata !130} ; [ DW_TAG_typedef ] [I2OP] [line 5, size 0, align 0, offset 0] [from _I2OP]
!140 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"freeI2OP", i32 12, i64 64, i64 64, i64 192, i32 0, metadata !128} ; [ DW_TAG_member ] [freeI2OP] [line 12, size 64, align 64, offset 192] [from ]
!141 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"heads", i32 13, i64 64, i64 64, i64 256, i32 0, metadata !142} ; [ DW_TAG_member ] [heads] [line 13, size 64, align 64, offset 256] [from ]
!142 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !128} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!143 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"upperhash", i32 122, i64 64, i64 64, i64 1216, i32 0, metadata !119} ; [ DW_TAG_member ] [upperhash] [line 122, size 64, align 64, offset 1216] [from ]
!144 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"manager", i32 123, i64 64, i64 64, i64 1280, i32 0, metadata !145} ; [ DW_TAG_member ] [manager] [line 123, size 64, align 64, offset 1280] [from ]
!145 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !146} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtxManager]
!146 = metadata !{i32 786454, metadata !40, null, metadata !"SubMtxManager", i32 9, i64 0, i64 0, i64 0, i32 0, metadata !147} ; [ DW_TAG_typedef ] [SubMtxManager] [line 9, size 0, align 0, offset 0] [from _SubMtxManager]
!147 = metadata !{i32 786451, metadata !148, null, metadata !"_SubMtxManager", i32 10, i64 448, i64 64, i32 0, i32 0, null, metadata !149, i32 0, null, null} ; [ DW_TAG_structure_type ] [_SubMtxManager] [line 10, size 448, align 64, offset 0] [from ]
!148 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../SubMtxManager/SubMtxManager.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!149 = metadata !{metadata !150, metadata !151, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168}
!150 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"head", i32 11, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [head] [line 11, size 64, align 64, offset 0] [from ]
!151 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"lock", i32 12, i64 64, i64 64, i64 64, i32 0, metadata !152} ; [ DW_TAG_member ] [lock] [line 12, size 64, align 64, offset 64] [from ]
!152 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !153} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Lock]
!153 = metadata !{i32 786454, metadata !148, null, metadata !"Lock", i32 36, i64 0, i64 0, i64 0, i32 0, metadata !154} ; [ DW_TAG_typedef ] [Lock] [line 36, size 0, align 0, offset 0] [from _Lock]
!154 = metadata !{i32 786451, metadata !155, null, metadata !"_Lock", i32 37, i64 128, i64 64, i32 0, i32 0, null, metadata !156, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Lock] [line 37, size 128, align 64, offset 0] [from ]
!155 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../Lock/Lock.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!156 = metadata !{metadata !157, metadata !158, metadata !159}
!157 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"mutex", i32 45, i64 64, i64 64, i64 0, i32 0, metadata !136} ; [ DW_TAG_member ] [mutex] [line 45, size 64, align 64, offset 0] [from ]
!158 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"nlocks", i32 47, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [nlocks] [line 47, size 32, align 32, offset 64] [from int]
!159 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"nunlocks", i32 48, i64 32, i64 32, i64 96, i32 0, metadata !15} ; [ DW_TAG_member ] [nunlocks] [line 48, size 32, align 32, offset 96] [from int]
!160 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"mode", i32 13, i64 32, i64 32, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [mode] [line 13, size 32, align 32, offset 128] [from int]
!161 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nactive", i32 14, i64 32, i64 32, i64 160, i32 0, metadata !15} ; [ DW_TAG_member ] [nactive] [line 14, size 32, align 32, offset 160] [from int]
!162 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nbytesactive", i32 15, i64 32, i64 32, i64 192, i32 0, metadata !15} ; [ DW_TAG_member ] [nbytesactive] [line 15, size 32, align 32, offset 192] [from int]
!163 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nbytesrequested", i32 16, i64 32, i64 32, i64 224, i32 0, metadata !15} ; [ DW_TAG_member ] [nbytesrequested] [line 16, size 32, align 32, offset 224] [from int]
!164 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nbytesalloc", i32 17, i64 32, i64 32, i64 256, i32 0, metadata !15} ; [ DW_TAG_member ] [nbytesalloc] [line 17, size 32, align 32, offset 256] [from int]
!165 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nrequests", i32 18, i64 32, i64 32, i64 288, i32 0, metadata !15} ; [ DW_TAG_member ] [nrequests] [line 18, size 32, align 32, offset 288] [from int]
!166 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nreleases", i32 19, i64 32, i64 32, i64 320, i32 0, metadata !15} ; [ DW_TAG_member ] [nreleases] [line 19, size 32, align 32, offset 320] [from int]
!167 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nlocks", i32 20, i64 32, i64 32, i64 352, i32 0, metadata !15} ; [ DW_TAG_member ] [nlocks] [line 20, size 32, align 32, offset 352] [from int]
!168 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nunlocks", i32 21, i64 32, i64 32, i64 384, i32 0, metadata !15} ; [ DW_TAG_member ] [nunlocks] [line 21, size 32, align 32, offset 384] [from int]
!169 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"lock", i32 124, i64 64, i64 64, i64 1344, i32 0, metadata !152} ; [ DW_TAG_member ] [lock] [line 124, size 64, align 64, offset 1344] [from ]
!170 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"patchinfo", i32 125, i64 64, i64 64, i64 1408, i32 0, metadata !171} ; [ DW_TAG_member ] [patchinfo] [line 125, size 64, align 64, offset 1408] [from ]
!171 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !172} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from PatchAndGoInfo]
!172 = metadata !{i32 786454, metadata !40, null, metadata !"PatchAndGoInfo", i32 31, i64 0, i64 0, i64 0, i32 0, metadata !173} ; [ DW_TAG_typedef ] [PatchAndGoInfo] [line 31, size 0, align 0, offset 0] [from _PatchAndGoInfo]
!173 = metadata !{i32 786451, metadata !174, null, metadata !"_PatchAndGoInfo", i32 32, i64 320, i64 64, i32 0, i32 0, null, metadata !175, i32 0, null, null} ; [ DW_TAG_structure_type ] [_PatchAndGoInfo] [line 32, size 320, align 64, offset 0] [from ]
!174 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../PatchAndGoInfo/PatchAndGoInfo.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!175 = metadata !{metadata !176, metadata !177, metadata !178, metadata !179, metadata !180}
!176 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"strategy", i32 33, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [strategy] [line 33, size 32, align 32, offset 0] [from int]
!177 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"toosmall", i32 34, i64 64, i64 64, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [toosmall] [line 34, size 64, align 64, offset 64] [from double]
!178 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"fudge", i32 35, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [fudge] [line 35, size 64, align 64, offset 128] [from double]
!179 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"fudgeIV", i32 36, i64 64, i64 64, i64 192, i32 0, metadata !74} ; [ DW_TAG_member ] [fudgeIV] [line 36, size 64, align 64, offset 192] [from ]
!180 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"fudgeDV", i32 37, i64 64, i64 64, i64 256, i32 0, metadata !181} ; [ DW_TAG_member ] [fudgeDV] [line 37, size 64, align 64, offset 256] [from ]
!181 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DV]
!182 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"nlocks", i32 126, i64 32, i64 32, i64 1472, i32 0, metadata !15} ; [ DW_TAG_member ] [nlocks] [line 126, size 32, align 32, offset 1472] [from int]
!183 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !184} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DenseMtx]
!184 = metadata !{i32 786454, metadata !1, null, metadata !"DenseMtx", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !185} ; [ DW_TAG_typedef ] [DenseMtx] [line 28, size 0, align 0, offset 0] [from _DenseMtx]
!185 = metadata !{i32 786451, metadata !186, null, metadata !"_DenseMtx", i32 29, i64 704, i64 64, i32 0, i32 0, null, metadata !187, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DenseMtx] [line 29, size 704, align 64, offset 0] [from ]
!186 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../DenseMtx/DenseMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!187 = metadata !{metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199}
!188 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"type", i32 30, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [type] [line 30, size 32, align 32, offset 0] [from int]
!189 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"rowid", i32 31, i64 32, i64 32, i64 32, i32 0, metadata !15} ; [ DW_TAG_member ] [rowid] [line 31, size 32, align 32, offset 32] [from int]
!190 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"colid", i32 32, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [colid] [line 32, size 32, align 32, offset 64] [from int]
!191 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"nrow", i32 33, i64 32, i64 32, i64 96, i32 0, metadata !15} ; [ DW_TAG_member ] [nrow] [line 33, size 32, align 32, offset 96] [from int]
!192 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"ncol", i32 34, i64 32, i64 32, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [ncol] [line 34, size 32, align 32, offset 128] [from int]
!193 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"inc1", i32 35, i64 32, i64 32, i64 160, i32 0, metadata !15} ; [ DW_TAG_member ] [inc1] [line 35, size 32, align 32, offset 160] [from int]
!194 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"inc2", i32 36, i64 32, i64 32, i64 192, i32 0, metadata !15} ; [ DW_TAG_member ] [inc2] [line 36, size 32, align 32, offset 192] [from int]
!195 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"rowind", i32 37, i64 64, i64 64, i64 256, i32 0, metadata !61} ; [ DW_TAG_member ] [rowind] [line 37, size 64, align 64, offset 256] [from ]
!196 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"colind", i32 38, i64 64, i64 64, i64 320, i32 0, metadata !61} ; [ DW_TAG_member ] [colind] [line 38, size 64, align 64, offset 320] [from ]
!197 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"entries", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !23} ; [ DW_TAG_member ] [entries] [line 39, size 64, align 64, offset 384] [from ]
!198 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"wrkDV", i32 40, i64 192, i64 64, i64 448, i32 0, metadata !26} ; [ DW_TAG_member ] [wrkDV] [line 40, size 192, align 64, offset 448] [from DV]
!199 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"next", i32 41, i64 64, i64 64, i64 640, i32 0, metadata !200} ; [ DW_TAG_member ] [next] [line 41, size 64, align 64, offset 640] [from ]
!200 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !201} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DenseMtx]
!201 = metadata !{i32 786454, metadata !186, null, metadata !"DenseMtx", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !185} ; [ DW_TAG_typedef ] [DenseMtx] [line 28, size 0, align 0, offset 0] [from _DenseMtx]
!202 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !203} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!203 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !204} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!204 = metadata !{i32 786451, metadata !205, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !206, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!205 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!206 = metadata !{metadata !207, metadata !208, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !229, metadata !230, metadata !231, metadata !232, metadata !235, metadata !237, metadata !239, metadata !243, metadata !244, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !253, metadata !254}
!207 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!208 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !209} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!209 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !210} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!210 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!211 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !209} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!212 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !209} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!213 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !209} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!214 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !209} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!215 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !209} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!216 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !209} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!217 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !209} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!218 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !209} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!219 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !209} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!220 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !209} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!221 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !222} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!222 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !223} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!223 = metadata !{i32 786451, metadata !205, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !224, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!224 = metadata !{metadata !225, metadata !226, metadata !228}
!225 = metadata !{i32 786445, metadata !205, metadata !223, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !222} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!226 = metadata !{i32 786445, metadata !205, metadata !223, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !227} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!227 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !204} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!228 = metadata !{i32 786445, metadata !205, metadata !223, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!229 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !227} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!230 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !15} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!231 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !15} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!232 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !233} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!233 = metadata !{i32 786454, metadata !205, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !234} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!234 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!235 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !236} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!236 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!237 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !238} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!238 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!239 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !240} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!240 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !210, metadata !241, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!241 = metadata !{metadata !242}
!242 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!243 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !136} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!244 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !245} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!245 = metadata !{i32 786454, metadata !205, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !234} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!246 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !136} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!247 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !136} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!248 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !136} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!249 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !136} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!250 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !251} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!251 = metadata !{i32 786454, metadata !205, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !252} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!252 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!253 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !15} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!254 = metadata !{i32 786445, metadata !205, metadata !204, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !255} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!255 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !210, metadata !256, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!256 = metadata !{metadata !257}
!257 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!258 = metadata !{metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287}
!259 = metadata !{i32 786689, metadata !4, metadata !"frontmtx", metadata !5, i32 16777243, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 27]
!260 = metadata !{i32 786689, metadata !4, metadata !"rhsmtx", metadata !5, i32 33554460, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rhsmtx] [line 28]
!261 = metadata !{i32 786689, metadata !4, metadata !"owners", metadata !5, i32 50331677, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [owners] [line 29]
!262 = metadata !{i32 786689, metadata !4, metadata !"myid", metadata !5, i32 67108894, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [myid] [line 30]
!263 = metadata !{i32 786689, metadata !4, metadata !"mtxmanager", metadata !5, i32 83886111, metadata !145, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxmanager] [line 31]
!264 = metadata !{i32 786689, metadata !4, metadata !"msglvl", metadata !5, i32 100663328, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msglvl] [line 32]
!265 = metadata !{i32 786689, metadata !4, metadata !"msgFile", metadata !5, i32 117440545, metadata !202, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msgFile] [line 33]
!266 = metadata !{i32 786688, metadata !4, metadata !"localrhs", metadata !5, i32 35, metadata !210, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [localrhs] [line 35]
!267 = metadata !{i32 786688, metadata !4, metadata !"BJ", metadata !5, i32 36, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [BJ] [line 36]
!268 = metadata !{i32 786688, metadata !4, metadata !"p_agg", metadata !5, i32 37, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p_agg] [line 37]
!269 = metadata !{i32 786688, metadata !4, metadata !"bJ", metadata !5, i32 38, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bJ] [line 38]
!270 = metadata !{i32 786688, metadata !4, metadata !"rhs", metadata !5, i32 38, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rhs] [line 38]
!271 = metadata !{i32 786688, metadata !4, metadata !"inc1", metadata !5, i32 39, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 39]
!272 = metadata !{i32 786688, metadata !4, metadata !"inc2", metadata !5, i32 39, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 39]
!273 = metadata !{i32 786688, metadata !4, metadata !"irow", metadata !5, i32 39, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 39]
!274 = metadata !{i32 786688, metadata !4, metadata !"jrhs", metadata !5, i32 39, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jrhs] [line 39]
!275 = metadata !{i32 786688, metadata !4, metadata !"J", metadata !5, i32 39, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 39]
!276 = metadata !{i32 786688, metadata !4, metadata !"kk", metadata !5, i32 39, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 39]
!277 = metadata !{i32 786688, metadata !4, metadata !"nbytes", metadata !5, i32 39, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes] [line 39]
!278 = metadata !{i32 786688, metadata !4, metadata !"ncolJ", metadata !5, i32 39, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolJ] [line 39]
!279 = metadata !{i32 786688, metadata !4, metadata !"neqns", metadata !5, i32 40, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [neqns] [line 40]
!280 = metadata !{i32 786688, metadata !4, metadata !"nfront", metadata !5, i32 40, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 40]
!281 = metadata !{i32 786688, metadata !4, metadata !"nJ", metadata !5, i32 40, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nJ] [line 40]
!282 = metadata !{i32 786688, metadata !4, metadata !"nrhs", metadata !5, i32 40, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrhs] [line 40]
!283 = metadata !{i32 786688, metadata !4, metadata !"nrowInRhs", metadata !5, i32 40, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowInRhs] [line 40]
!284 = metadata !{i32 786688, metadata !4, metadata !"nrowJ", metadata !5, i32 40, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowJ] [line 40]
!285 = metadata !{i32 786688, metadata !4, metadata !"rowind", metadata !5, i32 41, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowind] [line 41]
!286 = metadata !{i32 786688, metadata !4, metadata !"rowindJ", metadata !5, i32 41, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowindJ] [line 41]
!287 = metadata !{i32 786688, metadata !4, metadata !"rowmap", metadata !5, i32 41, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowmap] [line 41]
!288 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_forwardVisit", metadata !"FrontMtx_forwardVisit", metadata !"", i32 174, metadata !289, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._FrontMtx*, i32, i32, i32*, i32, %struct._SubMtxManager*, %struct._SubMtxList*, %struct._SubMtx**, i8*, %struct._IP**, %struct._SubMtx**, i8*, i32, %struct._IO_FILE*)* @FrontMtx_forwardVisit, null, null, metadata !312, i32 189} ; [ DW_TAG_subprogram ] [line 174] [def] [scope 189] [FrontMtx_forwardVisit]
!289 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !290, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!290 = metadata !{null, metadata !37, metadata !15, metadata !15, metadata !61, metadata !15, metadata !145, metadata !291, metadata !8, metadata !209, metadata !302, metadata !8, metadata !209, metadata !15, metadata !202}
!291 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !292} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtxList]
!292 = metadata !{i32 786454, metadata !1, null, metadata !"SubMtxList", i32 24, i64 0, i64 0, i64 0, i32 0, metadata !293} ; [ DW_TAG_typedef ] [SubMtxList] [line 24, size 0, align 0, offset 0] [from _SubMtxList]
!293 = metadata !{i32 786451, metadata !294, null, metadata !"_SubMtxList", i32 25, i64 384, i64 64, i32 0, i32 0, null, metadata !295, i32 0, null, null} ; [ DW_TAG_structure_type ] [_SubMtxList] [line 25, size 384, align 64, offset 0] [from ]
!294 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../SubMtxList/SubMtxList.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!295 = metadata !{metadata !296, metadata !297, metadata !298, metadata !299, metadata !300, metadata !301}
!296 = metadata !{i32 786445, metadata !294, metadata !293, metadata !"nlist", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [nlist] [line 26, size 32, align 32, offset 0] [from int]
!297 = metadata !{i32 786445, metadata !294, metadata !293, metadata !"heads", i32 27, i64 64, i64 64, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [heads] [line 27, size 64, align 64, offset 64] [from ]
!298 = metadata !{i32 786445, metadata !294, metadata !293, metadata !"counts", i32 28, i64 64, i64 64, i64 128, i32 0, metadata !61} ; [ DW_TAG_member ] [counts] [line 28, size 64, align 64, offset 128] [from ]
!299 = metadata !{i32 786445, metadata !294, metadata !293, metadata !"lock", i32 29, i64 64, i64 64, i64 192, i32 0, metadata !152} ; [ DW_TAG_member ] [lock] [line 29, size 64, align 64, offset 192] [from ]
!300 = metadata !{i32 786445, metadata !294, metadata !293, metadata !"flags", i32 30, i64 64, i64 64, i64 256, i32 0, metadata !209} ; [ DW_TAG_member ] [flags] [line 30, size 64, align 64, offset 256] [from ]
!301 = metadata !{i32 786445, metadata !294, metadata !293, metadata !"nlocks", i32 31, i64 32, i64 32, i64 320, i32 0, metadata !15} ; [ DW_TAG_member ] [nlocks] [line 31, size 32, align 32, offset 320] [from int]
!302 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !303} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!303 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !304} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IP]
!304 = metadata !{i32 786454, metadata !1, null, metadata !"IP", i32 10, i64 0, i64 0, i64 0, i32 0, metadata !305} ; [ DW_TAG_typedef ] [IP] [line 10, size 0, align 0, offset 0] [from _IP]
!305 = metadata !{i32 786451, metadata !306, null, metadata !"_IP", i32 11, i64 128, i64 64, i32 0, i32 0, null, metadata !307, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IP] [line 11, size 128, align 64, offset 0] [from ]
!306 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../Utilities/IP.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!307 = metadata !{metadata !308, metadata !309}
!308 = metadata !{i32 786445, metadata !306, metadata !305, metadata !"val", i32 12, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [val] [line 12, size 32, align 32, offset 0] [from int]
!309 = metadata !{i32 786445, metadata !306, metadata !305, metadata !"next", i32 13, i64 64, i64 64, i64 64, i32 0, metadata !310} ; [ DW_TAG_member ] [next] [line 13, size 64, align 64, offset 64] [from ]
!310 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !311} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IP]
!311 = metadata !{i32 786454, metadata !306, null, metadata !"IP", i32 10, i64 0, i64 0, i64 0, i32 0, metadata !305} ; [ DW_TAG_typedef ] [IP] [line 10, size 0, align 0, offset 0] [from _IP]
!312 = metadata !{metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !329, metadata !330, metadata !331, metadata !332}
!313 = metadata !{i32 786689, metadata !288, metadata !"frontmtx", metadata !5, i32 16777391, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 175]
!314 = metadata !{i32 786689, metadata !288, metadata !"J", metadata !5, i32 33554608, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [J] [line 176]
!315 = metadata !{i32 786689, metadata !288, metadata !"nrhs", metadata !5, i32 50331825, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrhs] [line 177]
!316 = metadata !{i32 786689, metadata !288, metadata !"owners", metadata !5, i32 67109042, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [owners] [line 178]
!317 = metadata !{i32 786689, metadata !288, metadata !"myid", metadata !5, i32 83886259, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [myid] [line 179]
!318 = metadata !{i32 786689, metadata !288, metadata !"mtxmanager", metadata !5, i32 100663476, metadata !145, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxmanager] [line 180]
!319 = metadata !{i32 786689, metadata !288, metadata !"aggList", metadata !5, i32 117440693, metadata !291, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aggList] [line 181]
!320 = metadata !{i32 786689, metadata !288, metadata !"p_mtx", metadata !5, i32 134217910, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p_mtx] [line 182]
!321 = metadata !{i32 786689, metadata !288, metadata !"frontIsDone", metadata !5, i32 150995127, metadata !209, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontIsDone] [line 183]
!322 = metadata !{i32 786689, metadata !288, metadata !"heads", metadata !5, i32 167772344, metadata !302, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [heads] [line 184]
!323 = metadata !{i32 786689, metadata !288, metadata !"p_agg", metadata !5, i32 184549561, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p_agg] [line 185]
!324 = metadata !{i32 786689, metadata !288, metadata !"status", metadata !5, i32 201326778, metadata !209, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 186]
!325 = metadata !{i32 786689, metadata !288, metadata !"msglvl", metadata !5, i32 218103995, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msglvl] [line 187]
!326 = metadata !{i32 786689, metadata !288, metadata !"msgFile", metadata !5, i32 234881212, metadata !202, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msgFile] [line 188]
!327 = metadata !{i32 786688, metadata !288, metadata !"aggDone", metadata !5, i32 190, metadata !210, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aggDone] [line 190]
!328 = metadata !{i32 786688, metadata !288, metadata !"updDone", metadata !5, i32 190, metadata !210, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [updDone] [line 190]
!329 = metadata !{i32 786688, metadata !288, metadata !"BJ", metadata !5, i32 191, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [BJ] [line 191]
!330 = metadata !{i32 786688, metadata !288, metadata !"LJJ", metadata !5, i32 191, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [LJJ] [line 191]
!331 = metadata !{i32 786688, metadata !288, metadata !"UJJ", metadata !5, i32 191, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [UJJ] [line 191]
!332 = metadata !{i32 786688, metadata !288, metadata !"nJ", metadata !5, i32 192, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nJ] [line 192]
!333 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_diagonalVisit", metadata !"FrontMtx_diagonalVisit", metadata !"", i32 334, metadata !334, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._FrontMtx*, i32, i32*, i32, %struct._SubMtx**, i8*, %struct._SubMtx**, i32, %struct._IO_FILE*)* @FrontMtx_diagonalVisit, null, null, metadata !336, i32 344} ; [ DW_TAG_subprogram ] [line 334] [def] [scope 344] [FrontMtx_diagonalVisit]
!334 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !335, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!335 = metadata !{null, metadata !37, metadata !15, metadata !61, metadata !15, metadata !8, metadata !209, metadata !8, metadata !15, metadata !202}
!336 = metadata !{metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !348}
!337 = metadata !{i32 786689, metadata !333, metadata !"frontmtx", metadata !5, i32 16777551, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 335]
!338 = metadata !{i32 786689, metadata !333, metadata !"J", metadata !5, i32 33554768, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [J] [line 336]
!339 = metadata !{i32 786689, metadata !333, metadata !"owners", metadata !5, i32 50331985, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [owners] [line 337]
!340 = metadata !{i32 786689, metadata !333, metadata !"myid", metadata !5, i32 67109202, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [myid] [line 338]
!341 = metadata !{i32 786689, metadata !333, metadata !"p_mtx", metadata !5, i32 83886419, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p_mtx] [line 339]
!342 = metadata !{i32 786689, metadata !333, metadata !"frontIsDone", metadata !5, i32 100663636, metadata !209, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontIsDone] [line 340]
!343 = metadata !{i32 786689, metadata !333, metadata !"p_agg", metadata !5, i32 117440853, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p_agg] [line 341]
!344 = metadata !{i32 786689, metadata !333, metadata !"msglvl", metadata !5, i32 134218070, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msglvl] [line 342]
!345 = metadata !{i32 786689, metadata !333, metadata !"msgFile", metadata !5, i32 150995287, metadata !202, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msgFile] [line 343]
!346 = metadata !{i32 786688, metadata !347, metadata !"BJ", metadata !5, i32 346, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [BJ] [line 346]
!347 = metadata !{i32 786443, metadata !1, metadata !333, i32 345, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!348 = metadata !{i32 786688, metadata !347, metadata !"DJJ", metadata !5, i32 346, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [DJJ] [line 346]
!349 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_backwardVisit", metadata !"FrontMtx_backwardVisit", metadata !"", i32 382, metadata !289, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._FrontMtx*, i32, i32, i32*, i32, %struct._SubMtxManager*, %struct._SubMtxList*, %struct._SubMtx**, i8*, %struct._IP**, %struct._SubMtx**, i8*, i32, %struct._IO_FILE*)* @FrontMtx_backwardVisit, null, null, metadata !350, i32 397} ; [ DW_TAG_subprogram ] [line 382] [def] [scope 397] [FrontMtx_backwardVisit]
!350 = metadata !{metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !357, metadata !358, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369}
!351 = metadata !{i32 786689, metadata !349, metadata !"frontmtx", metadata !5, i32 16777599, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 383]
!352 = metadata !{i32 786689, metadata !349, metadata !"J", metadata !5, i32 33554816, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [J] [line 384]
!353 = metadata !{i32 786689, metadata !349, metadata !"nrhs", metadata !5, i32 50332033, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrhs] [line 385]
!354 = metadata !{i32 786689, metadata !349, metadata !"owners", metadata !5, i32 67109250, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [owners] [line 386]
!355 = metadata !{i32 786689, metadata !349, metadata !"myid", metadata !5, i32 83886467, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [myid] [line 387]
!356 = metadata !{i32 786689, metadata !349, metadata !"mtxmanager", metadata !5, i32 100663684, metadata !145, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxmanager] [line 388]
!357 = metadata !{i32 786689, metadata !349, metadata !"aggList", metadata !5, i32 117440901, metadata !291, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aggList] [line 389]
!358 = metadata !{i32 786689, metadata !349, metadata !"p_mtx", metadata !5, i32 134218118, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p_mtx] [line 390]
!359 = metadata !{i32 786689, metadata !349, metadata !"frontIsDone", metadata !5, i32 150995335, metadata !209, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontIsDone] [line 391]
!360 = metadata !{i32 786689, metadata !349, metadata !"heads", metadata !5, i32 167772552, metadata !302, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [heads] [line 392]
!361 = metadata !{i32 786689, metadata !349, metadata !"p_agg", metadata !5, i32 184549769, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p_agg] [line 393]
!362 = metadata !{i32 786689, metadata !349, metadata !"status", metadata !5, i32 201326986, metadata !209, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 394]
!363 = metadata !{i32 786689, metadata !349, metadata !"msglvl", metadata !5, i32 218104203, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msglvl] [line 395]
!364 = metadata !{i32 786689, metadata !349, metadata !"msgFile", metadata !5, i32 234881420, metadata !202, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msgFile] [line 396]
!365 = metadata !{i32 786688, metadata !349, metadata !"aggDone", metadata !5, i32 398, metadata !210, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aggDone] [line 398]
!366 = metadata !{i32 786688, metadata !349, metadata !"updDone", metadata !5, i32 398, metadata !210, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [updDone] [line 398]
!367 = metadata !{i32 786688, metadata !349, metadata !"UJJ", metadata !5, i32 399, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [UJJ] [line 399]
!368 = metadata !{i32 786688, metadata !349, metadata !"ZJ", metadata !5, i32 399, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ZJ] [line 399]
!369 = metadata !{i32 786688, metadata !349, metadata !"nJ", metadata !5, i32 400, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nJ] [line 400]
!370 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_storeSolution", metadata !"FrontMtx_storeSolution", metadata !"", i32 543, metadata !371, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._FrontMtx*, i32*, i32, %struct._SubMtxManager*, %struct._SubMtx**, %struct._DenseMtx*, i32, %struct._IO_FILE*)* @FrontMtx_storeSolution, null, null, metadata !373, i32 552} ; [ DW_TAG_subprogram ] [line 543] [def] [scope 552] [FrontMtx_storeSolution]
!371 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !372, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!372 = metadata !{null, metadata !37, metadata !61, metadata !15, metadata !145, metadata !8, metadata !183, metadata !15, metadata !202}
!373 = metadata !{metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401}
!374 = metadata !{i32 786689, metadata !370, metadata !"frontmtx", metadata !5, i32 16777760, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 544]
!375 = metadata !{i32 786689, metadata !370, metadata !"owners", metadata !5, i32 33554977, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [owners] [line 545]
!376 = metadata !{i32 786689, metadata !370, metadata !"myid", metadata !5, i32 50332194, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [myid] [line 546]
!377 = metadata !{i32 786689, metadata !370, metadata !"manager", metadata !5, i32 67109411, metadata !145, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [manager] [line 547]
!378 = metadata !{i32 786689, metadata !370, metadata !"p_mtx", metadata !5, i32 83886628, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p_mtx] [line 548]
!379 = metadata !{i32 786689, metadata !370, metadata !"solmtx", metadata !5, i32 100663845, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [solmtx] [line 549]
!380 = metadata !{i32 786689, metadata !370, metadata !"msglvl", metadata !5, i32 117441062, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msglvl] [line 550]
!381 = metadata !{i32 786689, metadata !370, metadata !"msgFile", metadata !5, i32 134218279, metadata !202, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msgFile] [line 551]
!382 = metadata !{i32 786688, metadata !370, metadata !"localsol", metadata !5, i32 553, metadata !210, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [localsol] [line 553]
!383 = metadata !{i32 786688, metadata !370, metadata !"xmtxJ", metadata !5, i32 554, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmtxJ] [line 554]
!384 = metadata !{i32 786688, metadata !370, metadata !"sol", metadata !5, i32 555, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sol] [line 555]
!385 = metadata !{i32 786688, metadata !370, metadata !"xJ", metadata !5, i32 555, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xJ] [line 555]
!386 = metadata !{i32 786688, metadata !370, metadata !"inc1", metadata !5, i32 556, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 556]
!387 = metadata !{i32 786688, metadata !370, metadata !"inc2", metadata !5, i32 556, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 556]
!388 = metadata !{i32 786688, metadata !370, metadata !"irow", metadata !5, i32 556, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 556]
!389 = metadata !{i32 786688, metadata !370, metadata !"jrhs", metadata !5, i32 556, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jrhs] [line 556]
!390 = metadata !{i32 786688, metadata !370, metadata !"J", metadata !5, i32 556, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 556]
!391 = metadata !{i32 786688, metadata !370, metadata !"kk", metadata !5, i32 556, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 556]
!392 = metadata !{i32 786688, metadata !370, metadata !"ncolJ", metadata !5, i32 557, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolJ] [line 557]
!393 = metadata !{i32 786688, metadata !370, metadata !"neqns", metadata !5, i32 557, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [neqns] [line 557]
!394 = metadata !{i32 786688, metadata !370, metadata !"nfront", metadata !5, i32 557, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 557]
!395 = metadata !{i32 786688, metadata !370, metadata !"nJ", metadata !5, i32 557, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nJ] [line 557]
!396 = metadata !{i32 786688, metadata !370, metadata !"nrhs", metadata !5, i32 557, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrhs] [line 557]
!397 = metadata !{i32 786688, metadata !370, metadata !"nrowInSol", metadata !5, i32 557, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowInSol] [line 557]
!398 = metadata !{i32 786688, metadata !370, metadata !"nrowJ", metadata !5, i32 557, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowJ] [line 557]
!399 = metadata !{i32 786688, metadata !370, metadata !"colindJ", metadata !5, i32 558, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colindJ] [line 558]
!400 = metadata !{i32 786688, metadata !370, metadata !"colmap", metadata !5, i32 558, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colmap] [line 558]
!401 = metadata !{i32 786688, metadata !370, metadata !"rowind", metadata !5, i32 558, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowind] [line 558]
!402 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_loadActiveRoots", metadata !"FrontMtx_loadActiveRoots", metadata !"", i32 981, metadata !403, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._FrontMtx*, i8*, i8, %struct._Ideq*)* @FrontMtx_loadActiveRoots, null, null, metadata !414, i32 986} ; [ DW_TAG_subprogram ] [line 981] [def] [scope 986] [FrontMtx_loadActiveRoots]
!403 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !404, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!404 = metadata !{null, metadata !37, metadata !209, metadata !210, metadata !405}
!405 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !406} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Ideq]
!406 = metadata !{i32 786454, metadata !1, null, metadata !"Ideq", i32 19, i64 0, i64 0, i64 0, i32 0, metadata !407} ; [ DW_TAG_typedef ] [Ideq] [line 19, size 0, align 0, offset 0] [from _Ideq]
!407 = metadata !{i32 786451, metadata !408, null, metadata !"_Ideq", i32 20, i64 320, i64 64, i32 0, i32 0, null, metadata !409, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Ideq] [line 20, size 320, align 64, offset 0] [from ]
!408 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../Ideq/Ideq.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!409 = metadata !{metadata !410, metadata !411, metadata !412, metadata !413}
!410 = metadata !{i32 786445, metadata !408, metadata !407, metadata !"maxsize", i32 21, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [maxsize] [line 21, size 32, align 32, offset 0] [from int]
!411 = metadata !{i32 786445, metadata !408, metadata !407, metadata !"head", i32 22, i64 32, i64 32, i64 32, i32 0, metadata !15} ; [ DW_TAG_member ] [head] [line 22, size 32, align 32, offset 32] [from int]
!412 = metadata !{i32 786445, metadata !408, metadata !407, metadata !"tail", i32 23, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [tail] [line 23, size 32, align 32, offset 64] [from int]
!413 = metadata !{i32 786445, metadata !408, metadata !407, metadata !"iv", i32 24, i64 192, i64 64, i64 128, i32 0, metadata !75} ; [ DW_TAG_member ] [iv] [line 24, size 192, align 64, offset 128] [from IV]
!414 = metadata !{metadata !415, metadata !416, metadata !417, metadata !418, metadata !419, metadata !420}
!415 = metadata !{i32 786689, metadata !402, metadata !"frontmtx", metadata !5, i32 16778198, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 982]
!416 = metadata !{i32 786689, metadata !402, metadata !"status", metadata !5, i32 33555415, metadata !209, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 983]
!417 = metadata !{i32 786689, metadata !402, metadata !"activeFlag", metadata !5, i32 50332632, metadata !210, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [activeFlag] [line 984]
!418 = metadata !{i32 786689, metadata !402, metadata !"dequeue", metadata !5, i32 67109849, metadata !405, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dequeue] [line 985]
!419 = metadata !{i32 786688, metadata !402, metadata !"J", metadata !5, i32 987, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 987]
!420 = metadata !{i32 786688, metadata !402, metadata !"sib", metadata !5, i32 988, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sib] [line 988]
!421 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_forwardSetup", metadata !"FrontMtx_forwardSetup", metadata !"", i32 1013, metadata !422, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IP** (%struct._FrontMtx*, i32, %struct._IO_FILE*)* @FrontMtx_forwardSetup, null, null, metadata !424, i32 1017} ; [ DW_TAG_subprogram ] [line 1013] [def] [scope 1017] [FrontMtx_forwardSetup]
!422 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !423, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!423 = metadata !{metadata !302, metadata !37, metadata !15, metadata !202}
!424 = metadata !{metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433, metadata !434, metadata !435, metadata !436}
!425 = metadata !{i32 786689, metadata !421, metadata !"frontmtx", metadata !5, i32 16778230, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 1014]
!426 = metadata !{i32 786689, metadata !421, metadata !"msglvl", metadata !5, i32 33555447, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msglvl] [line 1015]
!427 = metadata !{i32 786689, metadata !421, metadata !"msgFile", metadata !5, i32 50332664, metadata !202, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msgFile] [line 1016]
!428 = metadata !{i32 786688, metadata !421, metadata !"ii", metadata !5, i32 1018, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1018]
!429 = metadata !{i32 786688, metadata !421, metadata !"J", metadata !5, i32 1018, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 1018]
!430 = metadata !{i32 786688, metadata !421, metadata !"K", metadata !5, i32 1018, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [K] [line 1018]
!431 = metadata !{i32 786688, metadata !421, metadata !"nadj", metadata !5, i32 1018, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nadj] [line 1018]
!432 = metadata !{i32 786688, metadata !421, metadata !"nblock", metadata !5, i32 1018, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nblock] [line 1018]
!433 = metadata !{i32 786688, metadata !421, metadata !"nfront", metadata !5, i32 1018, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 1018]
!434 = metadata !{i32 786688, metadata !421, metadata !"adj", metadata !5, i32 1019, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [adj] [line 1019]
!435 = metadata !{i32 786688, metadata !421, metadata !"ip", metadata !5, i32 1020, metadata !303, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ip] [line 1020]
!436 = metadata !{i32 786688, metadata !421, metadata !"heads", metadata !5, i32 1021, metadata !302, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [heads] [line 1021]
!437 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_backwardSetup", metadata !"FrontMtx_backwardSetup", metadata !"", i32 1059, metadata !422, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IP** (%struct._FrontMtx*, i32, %struct._IO_FILE*)* @FrontMtx_backwardSetup, null, null, metadata !438, i32 1063} ; [ DW_TAG_subprogram ] [line 1059] [def] [scope 1063] [FrontMtx_backwardSetup]
!438 = metadata !{metadata !439, metadata !440, metadata !441, metadata !442, metadata !443, metadata !444, metadata !445, metadata !446, metadata !447, metadata !448, metadata !449, metadata !450}
!439 = metadata !{i32 786689, metadata !437, metadata !"frontmtx", metadata !5, i32 16778276, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 1060]
!440 = metadata !{i32 786689, metadata !437, metadata !"msglvl", metadata !5, i32 33555493, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msglvl] [line 1061]
!441 = metadata !{i32 786689, metadata !437, metadata !"msgFile", metadata !5, i32 50332710, metadata !202, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msgFile] [line 1062]
!442 = metadata !{i32 786688, metadata !437, metadata !"ip", metadata !5, i32 1064, metadata !303, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ip] [line 1064]
!443 = metadata !{i32 786688, metadata !437, metadata !"heads", metadata !5, i32 1065, metadata !302, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [heads] [line 1065]
!444 = metadata !{i32 786688, metadata !437, metadata !"ii", metadata !5, i32 1066, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1066]
!445 = metadata !{i32 786688, metadata !437, metadata !"J", metadata !5, i32 1066, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 1066]
!446 = metadata !{i32 786688, metadata !437, metadata !"K", metadata !5, i32 1066, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [K] [line 1066]
!447 = metadata !{i32 786688, metadata !437, metadata !"nadj", metadata !5, i32 1066, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nadj] [line 1066]
!448 = metadata !{i32 786688, metadata !437, metadata !"nblock", metadata !5, i32 1066, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nblock] [line 1066]
!449 = metadata !{i32 786688, metadata !437, metadata !"nfront", metadata !5, i32 1066, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 1066]
!450 = metadata !{i32 786688, metadata !437, metadata !"adj", metadata !5, i32 1067, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [adj] [line 1067]
!451 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"computeBackwardUpdates", metadata !"computeBackwardUpdates", metadata !"", i32 906, metadata !452, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !454, i32 915} ; [ DW_TAG_subprogram ] [line 906] [local] [def] [scope 915] [computeBackwardUpdates]
!452 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !453, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!453 = metadata !{null, metadata !37, metadata !9, metadata !15, metadata !302, metadata !209, metadata !8, metadata !15, metadata !202}
!454 = metadata !{metadata !455, metadata !456, metadata !457, metadata !458, metadata !459, metadata !460, metadata !461, metadata !462, metadata !463, metadata !464, metadata !465, metadata !466, metadata !467}
!455 = metadata !{i32 786689, metadata !451, metadata !"frontmtx", metadata !5, i32 16778123, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 907]
!456 = metadata !{i32 786689, metadata !451, metadata !"ZJ", metadata !5, i32 33555340, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ZJ] [line 908]
!457 = metadata !{i32 786689, metadata !451, metadata !"J", metadata !5, i32 50332557, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [J] [line 909]
!458 = metadata !{i32 786689, metadata !451, metadata !"heads", metadata !5, i32 67109774, metadata !302, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [heads] [line 910]
!459 = metadata !{i32 786689, metadata !451, metadata !"frontIsDone", metadata !5, i32 83886991, metadata !209, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontIsDone] [line 911]
!460 = metadata !{i32 786689, metadata !451, metadata !"p_mtx", metadata !5, i32 100664208, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p_mtx] [line 912]
!461 = metadata !{i32 786689, metadata !451, metadata !"msglvl", metadata !5, i32 117441425, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msglvl] [line 913]
!462 = metadata !{i32 786689, metadata !451, metadata !"msgFile", metadata !5, i32 134218642, metadata !202, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msgFile] [line 914]
!463 = metadata !{i32 786688, metadata !451, metadata !"UJK", metadata !5, i32 916, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [UJK] [line 916]
!464 = metadata !{i32 786688, metadata !451, metadata !"XK", metadata !5, i32 916, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [XK] [line 916]
!465 = metadata !{i32 786688, metadata !451, metadata !"K", metadata !5, i32 917, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [K] [line 917]
!466 = metadata !{i32 786688, metadata !451, metadata !"ip", metadata !5, i32 918, metadata !303, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ip] [line 918]
!467 = metadata !{i32 786688, metadata !451, metadata !"nextip", metadata !5, i32 918, metadata !303, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nextip] [line 918]
!468 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"assembleAggregates", metadata !"assembleAggregates", metadata !"", i32 823, metadata !469, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, %struct._SubMtx*, %struct._SubMtxList*, %struct._SubMtxManager*, i32, %struct._IO_FILE*)* @assembleAggregates, null, null, metadata !471, i32 830} ; [ DW_TAG_subprogram ] [line 823] [local] [def] [scope 830] [assembleAggregates]
!469 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !470, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!470 = metadata !{null, metadata !15, metadata !9, metadata !291, metadata !145, metadata !15, metadata !202}
!471 = metadata !{metadata !472, metadata !473, metadata !474, metadata !475, metadata !476, metadata !477, metadata !478, metadata !479, metadata !480, metadata !481, metadata !482, metadata !483, metadata !484, metadata !485, metadata !486, metadata !487, metadata !488, metadata !489}
!472 = metadata !{i32 786689, metadata !468, metadata !"J", metadata !5, i32 16778040, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [J] [line 824]
!473 = metadata !{i32 786689, metadata !468, metadata !"BJ", metadata !5, i32 33555257, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [BJ] [line 825]
!474 = metadata !{i32 786689, metadata !468, metadata !"aggList", metadata !5, i32 50332474, metadata !291, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aggList] [line 826]
!475 = metadata !{i32 786689, metadata !468, metadata !"mtxmanager", metadata !5, i32 67109691, metadata !145, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxmanager] [line 827]
!476 = metadata !{i32 786689, metadata !468, metadata !"msglvl", metadata !5, i32 83886908, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msglvl] [line 828]
!477 = metadata !{i32 786689, metadata !468, metadata !"msgFile", metadata !5, i32 100664125, metadata !202, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msgFile] [line 829]
!478 = metadata !{i32 786688, metadata !468, metadata !"BJhat", metadata !5, i32 831, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [BJhat] [line 831]
!479 = metadata !{i32 786688, metadata !468, metadata !"BJhead", metadata !5, i32 831, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [BJhead] [line 831]
!480 = metadata !{i32 786688, metadata !468, metadata !"entBJ", metadata !5, i32 832, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entBJ] [line 832]
!481 = metadata !{i32 786688, metadata !468, metadata !"entBJhat", metadata !5, i32 832, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entBJhat] [line 832]
!482 = metadata !{i32 786688, metadata !468, metadata !"inc1", metadata !5, i32 833, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 833]
!483 = metadata !{i32 786688, metadata !468, metadata !"inc1hat", metadata !5, i32 833, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1hat] [line 833]
!484 = metadata !{i32 786688, metadata !468, metadata !"inc2", metadata !5, i32 833, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 833]
!485 = metadata !{i32 786688, metadata !468, metadata !"inc2hat", metadata !5, i32 833, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2hat] [line 833]
!486 = metadata !{i32 786688, metadata !468, metadata !"ncol", metadata !5, i32 833, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 833]
!487 = metadata !{i32 786688, metadata !468, metadata !"ncolhat", metadata !5, i32 833, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolhat] [line 833]
!488 = metadata !{i32 786688, metadata !468, metadata !"nrow", metadata !5, i32 833, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 833]
!489 = metadata !{i32 786688, metadata !468, metadata !"nrowhat", metadata !5, i32 833, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowhat] [line 833]
!490 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"computeForwardUpdates", metadata !"computeForwardUpdates", metadata !"", i32 733, metadata !452, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !491, i32 742} ; [ DW_TAG_subprogram ] [line 733] [local] [def] [scope 742] [computeForwardUpdates]
!491 = metadata !{metadata !492, metadata !493, metadata !494, metadata !495, metadata !496, metadata !497, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !503, metadata !504, metadata !505}
!492 = metadata !{i32 786689, metadata !490, metadata !"frontmtx", metadata !5, i32 16777950, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 734]
!493 = metadata !{i32 786689, metadata !490, metadata !"BJ", metadata !5, i32 33555167, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [BJ] [line 735]
!494 = metadata !{i32 786689, metadata !490, metadata !"J", metadata !5, i32 50332384, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [J] [line 736]
!495 = metadata !{i32 786689, metadata !490, metadata !"heads", metadata !5, i32 67109601, metadata !302, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [heads] [line 737]
!496 = metadata !{i32 786689, metadata !490, metadata !"frontIsDone", metadata !5, i32 83886818, metadata !209, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontIsDone] [line 738]
!497 = metadata !{i32 786689, metadata !490, metadata !"p_mtx", metadata !5, i32 100664035, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p_mtx] [line 739]
!498 = metadata !{i32 786689, metadata !490, metadata !"msglvl", metadata !5, i32 117441252, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msglvl] [line 740]
!499 = metadata !{i32 786689, metadata !490, metadata !"msgFile", metadata !5, i32 134218469, metadata !202, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msgFile] [line 741]
!500 = metadata !{i32 786688, metadata !490, metadata !"LJI", metadata !5, i32 743, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [LJI] [line 743]
!501 = metadata !{i32 786688, metadata !490, metadata !"UIJ", metadata !5, i32 743, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [UIJ] [line 743]
!502 = metadata !{i32 786688, metadata !490, metadata !"YI", metadata !5, i32 743, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [YI] [line 743]
!503 = metadata !{i32 786688, metadata !490, metadata !"I", metadata !5, i32 744, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [I] [line 744]
!504 = metadata !{i32 786688, metadata !490, metadata !"ip", metadata !5, i32 745, metadata !303, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ip] [line 745]
!505 = metadata !{i32 786688, metadata !490, metadata !"nextip", metadata !5, i32 745, metadata !303, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nextip] [line 745]
!506 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"initBJ", metadata !"initBJ", metadata !"", i32 689, metadata !507, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._SubMtx* (i32, i32, i32, i32, %struct._SubMtxManager*)* @initBJ, null, null, metadata !509, i32 697} ; [ DW_TAG_subprogram ] [line 689] [local] [def] [scope 697] [initBJ]
!507 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !508, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!508 = metadata !{metadata !9, metadata !15, metadata !15, metadata !15, metadata !15, metadata !145, metadata !15, metadata !202}
!509 = metadata !{metadata !510, metadata !511, metadata !512, metadata !513, metadata !514, metadata !515, metadata !516, metadata !517, metadata !518, metadata !519, metadata !520, metadata !521}
!510 = metadata !{i32 786689, metadata !506, metadata !"type", metadata !5, i32 16777906, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 690]
!511 = metadata !{i32 786689, metadata !506, metadata !"J", metadata !5, i32 33555123, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [J] [line 691]
!512 = metadata !{i32 786689, metadata !506, metadata !"nJ", metadata !5, i32 50332340, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nJ] [line 692]
!513 = metadata !{i32 786689, metadata !506, metadata !"nrhs", metadata !5, i32 67109557, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrhs] [line 693]
!514 = metadata !{i32 786689, metadata !506, metadata !"mtxmanager", metadata !5, i32 83886774, metadata !145, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxmanager] [line 694]
!515 = metadata !{i32 786689, metadata !506, metadata !"msglvl", metadata !5, i32 100663991, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msglvl] [line 695]
!516 = metadata !{i32 786689, metadata !506, metadata !"msgFile", metadata !5, i32 117441208, metadata !202, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msgFile] [line 696]
!517 = metadata !{i32 786688, metadata !506, metadata !"BJ", metadata !5, i32 698, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [BJ] [line 698]
!518 = metadata !{i32 786688, metadata !506, metadata !"entries", metadata !5, i32 699, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 699]
!519 = metadata !{i32 786688, metadata !506, metadata !"inc1", metadata !5, i32 700, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 700]
!520 = metadata !{i32 786688, metadata !506, metadata !"inc2", metadata !5, i32 700, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 700]
!521 = metadata !{i32 786688, metadata !506, metadata !"nbytes", metadata !5, i32 700, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes] [line 700]
!522 = metadata !{i32 27, i32 0, metadata !4, null}
!523 = metadata !{i32 28, i32 0, metadata !4, null}
!524 = metadata !{i32 29, i32 0, metadata !4, null}
!525 = metadata !{i32 30, i32 0, metadata !4, null}
!526 = metadata !{i32 31, i32 0, metadata !4, null}
!527 = metadata !{i32 32, i32 0, metadata !4, null}
!528 = metadata !{i32 33, i32 0, metadata !4, null}
!529 = metadata !{i32 38, i32 0, metadata !4, null}
!530 = metadata !{i32 39, i32 0, metadata !4, null}
!531 = metadata !{i32 40, i32 0, metadata !4, null}
!532 = metadata !{i32 41, i32 0, metadata !4, null}
!533 = metadata !{i32 43, i32 0, metadata !4, null}
!534 = metadata !{metadata !"int", metadata !535}
!535 = metadata !{metadata !"omnipotent char", metadata !536}
!536 = metadata !{metadata !"Simple C/C++ TBAA"}
!537 = metadata !{i32 44, i32 0, metadata !4, null}
!538 = metadata !{i32 45, i32 0, metadata !4, null}
!539 = metadata !{i32 55, i32 0, metadata !540, null}
!540 = metadata !{i32 786443, metadata !1, metadata !4, i32 45, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!541 = metadata !{i32 56, i32 0, metadata !540, null}
!542 = metadata !{metadata !"any pointer", metadata !535}
!543 = metadata !{i32 57, i32 0, metadata !540, null}
!544 = metadata !{i32 58, i32 0, metadata !545, null} ; [ DW_TAG_imported_module ]
!545 = metadata !{i32 786443, metadata !1, metadata !540, i32 57, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!546 = metadata !{i32 59, i32 0, metadata !545, null}
!547 = metadata !{i32 60, i32 0, metadata !545, null}
!548 = metadata !{i32 61, i32 0, metadata !545, null}
!549 = metadata !{i32 62, i32 0, metadata !550, null}
!550 = metadata !{i32 786443, metadata !1, metadata !540, i32 62, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!551 = metadata !{i32 63, i32 0, metadata !552, null}
!552 = metadata !{i32 786443, metadata !1, metadata !550, i32 62, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!553 = metadata !{i32 65, i32 0, metadata !540, null}
!554 = metadata !{i32 66, i32 0, metadata !555, null}
!555 = metadata !{i32 786443, metadata !1, metadata !540, i32 65, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!556 = metadata !{i32 67, i32 0, metadata !555, null}
!557 = metadata !{i32 68, i32 0, metadata !555, null}
!558 = metadata !{i32 69, i32 0, metadata !555, null}
!559 = metadata !{i32 79, i32 0, metadata !4, null}
!560 = metadata !{i32 80, i32 0, metadata !4, null}
!561 = metadata !{i32 80, i32 0, metadata !562, null}
!562 = metadata !{i32 786443, metadata !1, metadata !4, i32 80, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!563 = metadata !{i32 80, i32 0, metadata !564, null}
!564 = metadata !{i32 786443, metadata !1, metadata !562, i32 80, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!565 = metadata !{i32 80, i32 0, metadata !566, null}
!566 = metadata !{i32 786443, metadata !1, metadata !4, i32 80, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!567 = metadata !{i32 84, i32 0, metadata !4, null}
!568 = metadata !{i32 85, i32 0, metadata !569, null}
!569 = metadata !{i32 786443, metadata !1, metadata !4, i32 85, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!570 = metadata !{i32 81, i32 0, metadata !571, null}
!571 = metadata !{i32 786443, metadata !1, metadata !4, i32 81, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!572 = metadata !{i32 82, i32 0, metadata !573, null}
!573 = metadata !{i32 786443, metadata !1, metadata !571, i32 81, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!574 = metadata !{i32 86, i32 0, metadata !575, null}
!575 = metadata !{i32 786443, metadata !1, metadata !569, i32 85, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!576 = metadata !{i32 89, i32 0, metadata !577, null}
!577 = metadata !{i32 786443, metadata !1, metadata !575, i32 87, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!578 = metadata !{i32 104, i32 0, metadata !577, null}
!579 = metadata !{i32 142, i32 0, metadata !577, null}
!580 = metadata !{i32 139, i32 0, metadata !581, null}
!581 = metadata !{i32 786443, metadata !1, metadata !582, i32 132, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!582 = metadata !{i32 786443, metadata !1, metadata !583, i32 132, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!583 = metadata !{i32 786443, metadata !1, metadata !577, i32 131, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!584 = metadata !{i32 129, i32 0, metadata !585, null}
!585 = metadata !{i32 786443, metadata !1, metadata !586, i32 123, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!586 = metadata !{i32 786443, metadata !1, metadata !587, i32 123, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!587 = metadata !{i32 786443, metadata !1, metadata !577, i32 122, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!588 = metadata !{i32 87, i32 0, metadata !575, null}
!589 = metadata !{i32 88, i32 0, metadata !577, null}
!590 = metadata !{i32 96, i32 0, metadata !591, null}
!591 = metadata !{i32 786443, metadata !1, metadata !592, i32 95, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!592 = metadata !{i32 786443, metadata !1, metadata !593, i32 95, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!593 = metadata !{i32 786443, metadata !1, metadata !577, i32 89, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!594 = metadata !{i32 95, i32 0, metadata !592, null}
!595 = metadata !{i32 106, i32 0, metadata !577, null}
!596 = metadata !{i32 107, i32 0, metadata !577, null}
!597 = metadata !{i32 109, i32 0, metadata !577, null}
!598 = metadata !{i32 110, i32 0, metadata !577, null}
!599 = metadata !{i32 111, i32 0, metadata !600, null}
!600 = metadata !{i32 786443, metadata !1, metadata !577, i32 110, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!601 = metadata !{i32 113, i32 0, metadata !600, null}
!602 = metadata !{i32 120, i32 0, metadata !577, null}
!603 = metadata !{i32 121, i32 0, metadata !577, null}
!604 = metadata !{i32 122, i32 0, metadata !577, null}
!605 = metadata !{i32 123, i32 0, metadata !586, null}
!606 = metadata !{i32 128, i32 0, metadata !585, null}
!607 = metadata !{i32 125, i32 0, metadata !608, null}
!608 = metadata !{i32 786443, metadata !1, metadata !609, i32 124, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!609 = metadata !{i32 786443, metadata !1, metadata !585, i32 124, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!610 = metadata !{i32 132, i32 0, metadata !582, null}
!611 = metadata !{i32 138, i32 0, metadata !581, null}
!612 = metadata !{i32 134, i32 0, metadata !613, null}
!613 = metadata !{i32 786443, metadata !1, metadata !614, i32 133, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!614 = metadata !{i32 786443, metadata !1, metadata !581, i32 133, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!615 = metadata !{i32 124, i32 0, metadata !609, null}
!616 = metadata !{i32 126, i32 0, metadata !608, null}
!617 = metadata !{metadata !"double", metadata !535}
!618 = metadata !{i32 133, i32 0, metadata !614, null}
!619 = metadata !{i32 135, i32 0, metadata !613, null}
!620 = metadata !{i32 136, i32 0, metadata !613, null}
!621 = metadata !{i32 143, i32 0, metadata !622, null}
!622 = metadata !{i32 786443, metadata !1, metadata !577, i32 142, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!623 = metadata !{i32 144, i32 0, metadata !622, null}
!624 = metadata !{i32 145, i32 0, metadata !622, null}
!625 = metadata !{i32 146, i32 0, metadata !622, null}
!626 = metadata !{i32 147, i32 0, metadata !622, null}
!627 = metadata !{i32 148, i32 0, metadata !577, null}
!628 = metadata !{i32 155, i32 0, metadata !629, null}
!629 = metadata !{i32 786443, metadata !1, metadata !630, i32 154, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!630 = metadata !{i32 786443, metadata !1, metadata !631, i32 154, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!631 = metadata !{i32 786443, metadata !1, metadata !577, i32 148, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!632 = metadata !{i32 154, i32 0, metadata !630, null}
!633 = metadata !{i32 160, i32 0, metadata !4, null}
!634 = metadata !{i32 161, i32 0, metadata !635, null}
!635 = metadata !{i32 786443, metadata !1, metadata !4, i32 160, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!636 = metadata !{i32 162, i32 0, metadata !635, null}
!637 = metadata !{i32 163, i32 0, metadata !4, null}
!638 = metadata !{i32 175, i32 0, metadata !288, null}
!639 = metadata !{i32 176, i32 0, metadata !288, null}
!640 = metadata !{i32 177, i32 0, metadata !288, null}
!641 = metadata !{i32 178, i32 0, metadata !288, null}
!642 = metadata !{i32 179, i32 0, metadata !288, null}
!643 = metadata !{i32 180, i32 0, metadata !288, null}
!644 = metadata !{i32 181, i32 0, metadata !288, null}
!645 = metadata !{i32 182, i32 0, metadata !288, null}
!646 = metadata !{i32 183, i32 0, metadata !288, null}
!647 = metadata !{i32 184, i32 0, metadata !288, null}
!648 = metadata !{i32 185, i32 0, metadata !288, null}
!649 = metadata !{i32 186, i32 0, metadata !288, null}
!650 = metadata !{i32 187, i32 0, metadata !288, null}
!651 = metadata !{i32 188, i32 0, metadata !288, null}
!652 = metadata !{i32 194, i32 0, metadata !288, null}
!653 = metadata !{i32 200, i32 0, metadata !654, null}
!654 = metadata !{i32 786443, metadata !1, metadata !288, i32 194, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!655 = metadata !{i32 201, i32 0, metadata !656, null}
!656 = metadata !{i32 786443, metadata !1, metadata !654, i32 200, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!657 = metadata !{i32 202, i32 0, metadata !656, null}
!658 = metadata !{i32 203, i32 0, metadata !654, null}
!659 = metadata !{i32 204, i32 0, metadata !654, null}
!660 = metadata !{i32 206, i32 0, metadata !288, null}
!661 = metadata !{i32 212, i32 0, metadata !662, null}
!662 = metadata !{i32 786443, metadata !1, metadata !288, i32 206, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!663 = metadata !{i32 218, i32 0, metadata !664, null}
!664 = metadata !{i32 786443, metadata !1, metadata !662, i32 212, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!665 = metadata !{i32 220, i32 0, metadata !664, null}
!666 = metadata !{i32 221, i32 0, metadata !662, null}
!667 = metadata !{i32 222, i32 0, metadata !668, null}
!668 = metadata !{i32 786443, metadata !1, metadata !662, i32 221, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!669 = metadata !{i32 223, i32 0, metadata !668, null}
!670 = metadata !{i32 224, i32 0, metadata !668, null}
!671 = metadata !{i32 225, i32 0, metadata !668, null}
!672 = metadata !{i32 226, i32 0, metadata !668, null}
!673 = metadata !{i32 786689, metadata !490, metadata !"frontmtx", metadata !5, i32 16777950, metadata !37, i32 0, metadata !674} ; [ DW_TAG_arg_variable ] [frontmtx] [line 734]
!674 = metadata !{i32 232, i32 0, metadata !662, null}
!675 = metadata !{i32 734, i32 0, metadata !490, metadata !674}
!676 = metadata !{i32 786689, metadata !490, metadata !"BJ", metadata !5, i32 33555167, metadata !9, i32 0, metadata !674} ; [ DW_TAG_arg_variable ] [BJ] [line 735]
!677 = metadata !{i32 735, i32 0, metadata !490, metadata !674}
!678 = metadata !{i32 786689, metadata !490, metadata !"J", metadata !5, i32 50332384, metadata !15, i32 0, metadata !674} ; [ DW_TAG_arg_variable ] [J] [line 736]
!679 = metadata !{i32 736, i32 0, metadata !490, metadata !674}
!680 = metadata !{i32 786689, metadata !490, metadata !"heads", metadata !5, i32 67109601, metadata !302, i32 0, metadata !674} ; [ DW_TAG_arg_variable ] [heads] [line 737]
!681 = metadata !{i32 737, i32 0, metadata !490, metadata !674}
!682 = metadata !{i32 786689, metadata !490, metadata !"frontIsDone", metadata !5, i32 83886818, metadata !209, i32 0, metadata !674} ; [ DW_TAG_arg_variable ] [frontIsDone] [line 738]
!683 = metadata !{i32 738, i32 0, metadata !490, metadata !674}
!684 = metadata !{i32 786689, metadata !490, metadata !"p_mtx", metadata !5, i32 100664035, metadata !8, i32 0, metadata !674} ; [ DW_TAG_arg_variable ] [p_mtx] [line 739]
!685 = metadata !{i32 739, i32 0, metadata !490, metadata !674}
!686 = metadata !{i32 786689, metadata !490, metadata !"msglvl", metadata !5, i32 117441252, metadata !15, i32 0, metadata !674} ; [ DW_TAG_arg_variable ] [msglvl] [line 740]
!687 = metadata !{i32 740, i32 0, metadata !490, metadata !674}
!688 = metadata !{i32 786689, metadata !490, metadata !"msgFile", metadata !5, i32 134218469, metadata !202, i32 0, metadata !674} ; [ DW_TAG_arg_variable ] [msgFile] [line 741]
!689 = metadata !{i32 741, i32 0, metadata !490, metadata !674}
!690 = metadata !{i32 751, i32 0, metadata !691, metadata !674}
!691 = metadata !{i32 786443, metadata !1, metadata !490, i32 751, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!692 = metadata !{i32 786688, metadata !490, metadata !"ip", metadata !5, i32 745, metadata !303, i32 0, metadata !674} ; [ DW_TAG_auto_variable ] [ip] [line 745]
!693 = metadata !{i32 773, i32 0, metadata !694, metadata !674}
!694 = metadata !{i32 786443, metadata !1, metadata !695, i32 762, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!695 = metadata !{i32 786443, metadata !1, metadata !696, i32 761, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!696 = metadata !{i32 786443, metadata !1, metadata !691, i32 753, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!697 = metadata !{i32 754, i32 0, metadata !696, metadata !674}
!698 = metadata !{i32 786688, metadata !490, metadata !"I", metadata !5, i32 744, metadata !15, i32 0, metadata !674} ; [ DW_TAG_auto_variable ] [I] [line 744]
!699 = metadata !{i32 786688, metadata !490, metadata !"nextip", metadata !5, i32 745, metadata !303, i32 0, metadata !674} ; [ DW_TAG_auto_variable ] [nextip] [line 745]
!700 = metadata !{i32 756, i32 0, metadata !701, metadata !674}
!701 = metadata !{i32 786443, metadata !1, metadata !696, i32 755, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!702 = metadata !{i32 755, i32 0, metadata !696, metadata !674}
!703 = metadata !{i32 759, i32 0, metadata !701, metadata !674}
!704 = metadata !{i32 760, i32 0, metadata !701, metadata !674}
!705 = metadata !{i32 761, i32 0, metadata !696, metadata !674}
!706 = metadata !{i32 762, i32 0, metadata !695, metadata !674}
!707 = metadata !{i32 786688, metadata !490, metadata !"YI", metadata !5, i32 743, metadata !9, i32 0, metadata !674} ; [ DW_TAG_auto_variable ] [YI] [line 743]
!708 = metadata !{i32 768, i32 0, metadata !694, metadata !674}
!709 = metadata !{i32 769, i32 0, metadata !710, metadata !674}
!710 = metadata !{i32 786443, metadata !1, metadata !694, i32 768, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!711 = metadata !{i32 770, i32 0, metadata !710, metadata !674}
!712 = metadata !{i32 771, i32 0, metadata !710, metadata !674}
!713 = metadata !{i32 772, i32 0, metadata !710, metadata !674}
!714 = metadata !{i32 774, i32 0, metadata !715, metadata !674}
!715 = metadata !{i32 786443, metadata !1, metadata !694, i32 773, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!716 = metadata !{i32 786688, metadata !490, metadata !"LJI", metadata !5, i32 743, metadata !9, i32 0, metadata !674} ; [ DW_TAG_auto_variable ] [LJI] [line 743]
!717 = metadata !{i32 775, i32 0, metadata !718, metadata !674}
!718 = metadata !{i32 786443, metadata !1, metadata !715, i32 774, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!719 = metadata !{i32 776, i32 0, metadata !720, metadata !674}
!720 = metadata !{i32 786443, metadata !1, metadata !718, i32 775, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!721 = metadata !{i32 777, i32 0, metadata !720, metadata !674}
!722 = metadata !{i32 778, i32 0, metadata !720, metadata !674}
!723 = metadata !{i32 779, i32 0, metadata !720, metadata !674}
!724 = metadata !{i32 780, i32 0, metadata !718, metadata !674}
!725 = metadata !{i32 781, i32 0, metadata !718, metadata !674}
!726 = metadata !{i32 783, i32 0, metadata !727, metadata !674}
!727 = metadata !{i32 786443, metadata !1, metadata !694, i32 782, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!728 = metadata !{i32 786688, metadata !490, metadata !"UIJ", metadata !5, i32 743, metadata !9, i32 0, metadata !674} ; [ DW_TAG_auto_variable ] [UIJ] [line 743]
!729 = metadata !{i32 784, i32 0, metadata !730, metadata !674}
!730 = metadata !{i32 786443, metadata !1, metadata !727, i32 783, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!731 = metadata !{i32 785, i32 0, metadata !732, metadata !674}
!732 = metadata !{i32 786443, metadata !1, metadata !730, i32 784, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!733 = metadata !{i32 786, i32 0, metadata !732, metadata !674}
!734 = metadata !{i32 787, i32 0, metadata !732, metadata !674}
!735 = metadata !{i32 788, i32 0, metadata !732, metadata !674}
!736 = metadata !{i32 789, i32 0, metadata !730, metadata !674}
!737 = metadata !{i32 790, i32 0, metadata !738, metadata !674}
!738 = metadata !{i32 786443, metadata !1, metadata !730, i32 789, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!739 = metadata !{i32 791, i32 0, metadata !738, metadata !674}
!740 = metadata !{i32 792, i32 0, metadata !741, metadata !674}
!741 = metadata !{i32 786443, metadata !1, metadata !730, i32 791, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!742 = metadata !{i32 793, i32 0, metadata !741, metadata !674}
!743 = metadata !{i32 796, i32 0, metadata !694, metadata !674}
!744 = metadata !{i32 797, i32 0, metadata !745, metadata !674}
!745 = metadata !{i32 786443, metadata !1, metadata !694, i32 796, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!746 = metadata !{i32 798, i32 0, metadata !745, metadata !674}
!747 = metadata !{i32 799, i32 0, metadata !745, metadata !674}
!748 = metadata !{i32 800, i32 0, metadata !745, metadata !674}
!749 = metadata !{i32 808, i32 0, metadata !750, metadata !674}
!750 = metadata !{i32 786443, metadata !1, metadata !696, i32 802, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!751 = metadata !{i32 809, i32 0, metadata !750, metadata !674}
!752 = metadata !{i32 235, i32 0, metadata !288, null}
!753 = metadata !{i32 237, i32 0, metadata !754, null}
!754 = metadata !{i32 786443, metadata !1, metadata !288, i32 235, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!755 = metadata !{i32 240, i32 0, metadata !288, null}
!756 = metadata !{i8 78}
!757 = metadata !{i32 246, i32 0, metadata !758, null}
!758 = metadata !{i32 786443, metadata !1, metadata !288, i32 240, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!759 = metadata !{i32 247, i32 0, metadata !758, null}
!760 = metadata !{i32 248, i32 0, metadata !761, null}
!761 = metadata !{i32 786443, metadata !1, metadata !758, i32 247, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!762 = metadata !{i32 250, i32 0, metadata !761, null}
!763 = metadata !{i32 252, i32 0, metadata !758, null}
!764 = metadata !{i32 254, i32 0, metadata !758, null}
!765 = metadata !{i32 255, i32 0, metadata !766, null}
!766 = metadata !{i32 786443, metadata !1, metadata !758, i32 254, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!767 = metadata !{i32 256, i32 0, metadata !768, null}
!768 = metadata !{i32 786443, metadata !1, metadata !766, i32 255, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!769 = metadata !{i32 257, i32 0, metadata !768, null}
!770 = metadata !{i32 258, i32 0, metadata !768, null}
!771 = metadata !{i32 259, i32 0, metadata !766, null}
!772 = metadata !{i8 89}
!773 = metadata !{i32 261, i32 0, metadata !766, null}
!774 = metadata !{i32 262, i32 0, metadata !766, null}
!775 = metadata !{i32 266, i32 0, metadata !288, null}
!776 = metadata !{i32 267, i32 0, metadata !777, null}
!777 = metadata !{i32 786443, metadata !1, metadata !288, i32 266, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!778 = metadata !{i32 269, i32 0, metadata !777, null}
!779 = metadata !{i32 270, i32 0, metadata !777, null}
!780 = metadata !{i32 271, i32 0, metadata !288, null}
!781 = metadata !{i32 272, i32 0, metadata !782, null}
!782 = metadata !{i32 786443, metadata !1, metadata !288, i32 271, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!783 = metadata !{i32 273, i32 0, metadata !782, null}
!784 = metadata !{i32 279, i32 0, metadata !785, null}
!785 = metadata !{i32 786443, metadata !1, metadata !782, i32 273, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!786 = metadata !{i32 280, i32 0, metadata !787, null}
!787 = metadata !{i32 786443, metadata !1, metadata !785, i32 279, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!788 = metadata !{i32 281, i32 0, metadata !787, null}
!789 = metadata !{i32 282, i32 0, metadata !790, null}
!790 = metadata !{i32 786443, metadata !1, metadata !787, i32 281, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!791 = metadata !{i32 283, i32 0, metadata !790, null}
!792 = metadata !{i32 285, i32 0, metadata !793, null}
!793 = metadata !{i32 786443, metadata !1, metadata !785, i32 284, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!794 = metadata !{i32 286, i32 0, metadata !793, null}
!795 = metadata !{i32 287, i32 0, metadata !796, null}
!796 = metadata !{i32 786443, metadata !1, metadata !793, i32 286, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!797 = metadata !{i32 288, i32 0, metadata !798, null}
!798 = metadata !{i32 786443, metadata !1, metadata !796, i32 287, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!799 = metadata !{i32 289, i32 0, metadata !798, null}
!800 = metadata !{i32 290, i32 0, metadata !801, null}
!801 = metadata !{i32 786443, metadata !1, metadata !796, i32 289, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!802 = metadata !{i32 291, i32 0, metadata !801, null}
!803 = metadata !{i32 294, i32 0, metadata !785, null}
!804 = metadata !{i32 295, i32 0, metadata !805, null}
!805 = metadata !{i32 786443, metadata !1, metadata !785, i32 294, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!806 = metadata !{i32 296, i32 0, metadata !805, null}
!807 = metadata !{i32 297, i32 0, metadata !805, null}
!808 = metadata !{i32 298, i32 0, metadata !805, null}
!809 = metadata !{i32 305, i32 0, metadata !785, null}
!810 = metadata !{i32 306, i32 0, metadata !785, null}
!811 = metadata !{i32 307, i32 0, metadata !785, null}
!812 = metadata !{i32 308, i32 0, metadata !785, null}
!813 = metadata !{i32 308, i32 0, metadata !782, null}
!814 = metadata !{i32 314, i32 0, metadata !815, null}
!815 = metadata !{i32 786443, metadata !1, metadata !782, i32 308, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!816 = metadata !{i32 315, i32 0, metadata !817, null}
!817 = metadata !{i32 786443, metadata !1, metadata !815, i32 314, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!818 = metadata !{i32 316, i32 0, metadata !817, null}
!819 = metadata !{i32 317, i32 0, metadata !817, null}
!820 = metadata !{i32 318, i32 0, metadata !815, null}
!821 = metadata !{i32 319, i32 0, metadata !815, null}
!822 = metadata !{i32 320, i32 0, metadata !815, null}
!823 = metadata !{i32 321, i32 0, metadata !782, null}
!824 = metadata !{i32 322, i32 0, metadata !782, null}
!825 = metadata !{i32 323, i32 0, metadata !288, null}
!826 = metadata !{i32 692, i32 0, metadata !506, null}
!827 = metadata !{i32 693, i32 0, metadata !506, null}
!828 = metadata !{i32 695, i32 0, metadata !506, null}
!829 = metadata !{%struct._IO_FILE* null}
!830 = metadata !{i32 696, i32 0, metadata !506, null}
!831 = metadata !{i32 699, i32 0, metadata !506, null}
!832 = metadata !{i32 700, i32 0, metadata !506, null}
!833 = metadata !{i32 707, i32 0, metadata !506, null}
!834 = metadata !{i32 709, i32 0, metadata !506, null}
!835 = metadata !{i32 710, i32 0, metadata !506, null}
!836 = metadata !{i32 711, i32 0, metadata !837, null}
!837 = metadata !{i32 786443, metadata !1, metadata !506, i32 710, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!838 = metadata !{i32 713, i32 0, metadata !837, null}
!839 = metadata !{i32 715, i32 0, metadata !506, null}
!840 = metadata !{i32 716, i32 0, metadata !506, null}
!841 = metadata !{i32 717, i32 0, metadata !506, null}
!842 = metadata !{i32 718, i32 0, metadata !843, null}
!843 = metadata !{i32 786443, metadata !1, metadata !506, i32 717, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!844 = metadata !{i32 719, i32 0, metadata !843, null}
!845 = metadata !{i32 720, i32 0, metadata !846, null}
!846 = metadata !{i32 786443, metadata !1, metadata !506, i32 719, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!847 = metadata !{i32 721, i32 0, metadata !846, null}
!848 = metadata !{i32 722, i32 0, metadata !506, null}
!849 = metadata !{i32 824, i32 0, metadata !468, null}
!850 = metadata !{i32 825, i32 0, metadata !468, null}
!851 = metadata !{i32 826, i32 0, metadata !468, null}
!852 = metadata !{i32 827, i32 0, metadata !468, null}
!853 = metadata !{i32 828, i32 0, metadata !468, null}
!854 = metadata !{i32 829, i32 0, metadata !468, null}
!855 = metadata !{i32 832, i32 0, metadata !468, null}
!856 = metadata !{i32 833, i32 0, metadata !468, null}
!857 = metadata !{i32 835, i32 0, metadata !468, null}
!858 = metadata !{i32 836, i32 0, metadata !859, null}
!859 = metadata !{i32 786443, metadata !1, metadata !468, i32 835, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!860 = metadata !{i32 839, i32 0, metadata !859, null}
!861 = metadata !{i32 841, i32 0, metadata !468, null}
!862 = metadata !{i32 842, i32 0, metadata !863, null}
!863 = metadata !{i32 786443, metadata !1, metadata !468, i32 841, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!864 = metadata !{i32 843, i32 0, metadata !865, null}
!865 = metadata !{i32 786443, metadata !1, metadata !863, i32 842, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!866 = metadata !{i32 844, i32 0, metadata !865, null}
!867 = metadata !{i32 845, i32 0, metadata !865, null}
!868 = metadata !{i32 846, i32 0, metadata !863, null}
!869 = metadata !{i32 847, i32 0, metadata !863, null}
!870 = metadata !{i32 848, i32 0, metadata !871, null}
!871 = metadata !{i32 786443, metadata !1, metadata !863, i32 847, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!872 = metadata !{i32 851, i32 0, metadata !871, null}
!873 = metadata !{i32 852, i32 0, metadata !871, null}
!874 = metadata !{i32 853, i32 0, metadata !863, null}
!875 = metadata !{i32 854, i32 0, metadata !876, null}
!876 = metadata !{i32 786443, metadata !1, metadata !863, i32 854, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!877 = metadata !{i32 861, i32 0, metadata !878, null}
!878 = metadata !{i32 786443, metadata !1, metadata !876, i32 854, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!879 = metadata !{i32 863, i32 0, metadata !878, null}
!880 = metadata !{i32 864, i32 0, metadata !881, null}
!881 = metadata !{i32 786443, metadata !1, metadata !878, i32 863, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!882 = metadata !{i32 868, i32 0, metadata !881, null}
!883 = metadata !{i32 869, i32 0, metadata !881, null}
!884 = metadata !{i32 870, i32 0, metadata !878, null}
!885 = metadata !{i32 872, i32 0, metadata !886, null}
!886 = metadata !{i32 786443, metadata !1, metadata !878, i32 871, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!887 = metadata !{i32 873, i32 0, metadata !886, null}
!888 = metadata !{i32 875, i32 0, metadata !878, null}
!889 = metadata !{i32 876, i32 0, metadata !890, null}
!890 = metadata !{i32 786443, metadata !1, metadata !878, i32 875, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!891 = metadata !{i32 877, i32 0, metadata !890, null}
!892 = metadata !{i32 878, i32 0, metadata !890, null}
!893 = metadata !{i32 879, i32 0, metadata !890, null}
!894 = metadata !{i32 880, i32 0, metadata !890, null}
!895 = metadata !{i32 881, i32 0, metadata !890, null}
!896 = metadata !{i32 882, i32 0, metadata !878, null}
!897 = metadata !{i32 883, i32 0, metadata !898, null}
!898 = metadata !{i32 786443, metadata !1, metadata !878, i32 882, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!899 = metadata !{i32 884, i32 0, metadata !898, null}
!900 = metadata !{i32 885, i32 0, metadata !901, null}
!901 = metadata !{i32 786443, metadata !1, metadata !878, i32 884, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!902 = metadata !{i32 886, i32 0, metadata !901, null}
!903 = metadata !{i32 888, i32 0, metadata !863, null}
!904 = metadata !{i32 889, i32 0, metadata !863, null}
!905 = metadata !{i32 890, i32 0, metadata !906, null}
!906 = metadata !{i32 786443, metadata !1, metadata !863, i32 889, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!907 = metadata !{i32 891, i32 0, metadata !906, null}
!908 = metadata !{i32 892, i32 0, metadata !906, null}
!909 = metadata !{i32 893, i32 0, metadata !906, null}
!910 = metadata !{i32 895, i32 0, metadata !468, null}
!911 = metadata !{i32 335, i32 0, metadata !333, null}
!912 = metadata !{i32 336, i32 0, metadata !333, null}
!913 = metadata !{i32 337, i32 0, metadata !333, null}
!914 = metadata !{i32 338, i32 0, metadata !333, null}
!915 = metadata !{i32 339, i32 0, metadata !333, null}
!916 = metadata !{i32 340, i32 0, metadata !333, null}
!917 = metadata !{i32 341, i32 0, metadata !333, null}
!918 = metadata !{i32 342, i32 0, metadata !333, null}
!919 = metadata !{i32 343, i32 0, metadata !333, null}
!920 = metadata !{i32 345, i32 0, metadata !333, null}
!921 = metadata !{i32 348, i32 0, metadata !347, null}
!922 = metadata !{i32 349, i32 0, metadata !923, null}
!923 = metadata !{i32 786443, metadata !1, metadata !347, i32 348, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!924 = metadata !{i32 350, i32 0, metadata !925, null}
!925 = metadata !{i32 786443, metadata !1, metadata !923, i32 349, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!926 = metadata !{i32 351, i32 0, metadata !925, null}
!927 = metadata !{i32 352, i32 0, metadata !925, null}
!928 = metadata !{i32 354, i32 0, metadata !923, null}
!929 = metadata !{i32 356, i32 0, metadata !930, null}
!930 = metadata !{i32 786443, metadata !1, metadata !923, i32 355, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!931 = metadata !{i32 357, i32 0, metadata !930, null}
!932 = metadata !{i32 358, i32 0, metadata !930, null}
!933 = metadata !{i32 360, i32 0, metadata !923, null}
!934 = metadata !{i32 361, i32 0, metadata !923, null}
!935 = metadata !{i32 362, i32 0, metadata !936, null}
!936 = metadata !{i32 786443, metadata !1, metadata !923, i32 361, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!937 = metadata !{i32 363, i32 0, metadata !936, null}
!938 = metadata !{i32 364, i32 0, metadata !936, null}
!939 = metadata !{i32 365, i32 0, metadata !936, null}
!940 = metadata !{i32 366, i32 0, metadata !923, null}
!941 = metadata !{i32 367, i32 0, metadata !923, null}
!942 = metadata !{i32 368, i32 0, metadata !923, null}
!943 = metadata !{i32 369, i32 0, metadata !347, null}
!944 = metadata !{i32 370, i32 0, metadata !347, null}
!945 = metadata !{i32 371, i32 0, metadata !333, null}
!946 = metadata !{i32 383, i32 0, metadata !349, null}
!947 = metadata !{i32 384, i32 0, metadata !349, null}
!948 = metadata !{i32 385, i32 0, metadata !349, null}
!949 = metadata !{i32 386, i32 0, metadata !349, null}
!950 = metadata !{i32 387, i32 0, metadata !349, null}
!951 = metadata !{i32 388, i32 0, metadata !349, null}
!952 = metadata !{i32 389, i32 0, metadata !349, null}
!953 = metadata !{i32 390, i32 0, metadata !349, null}
!954 = metadata !{i32 391, i32 0, metadata !349, null}
!955 = metadata !{i32 392, i32 0, metadata !349, null}
!956 = metadata !{i32 393, i32 0, metadata !349, null}
!957 = metadata !{i32 394, i32 0, metadata !349, null}
!958 = metadata !{i32 395, i32 0, metadata !349, null}
!959 = metadata !{i32 396, i32 0, metadata !349, null}
!960 = metadata !{i32 402, i32 0, metadata !349, null}
!961 = metadata !{i32 404, i32 0, metadata !962, null}
!962 = metadata !{i32 786443, metadata !1, metadata !349, i32 402, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!963 = metadata !{i32 405, i32 0, metadata !962, null}
!964 = metadata !{i32 406, i32 0, metadata !962, null}
!965 = metadata !{i32 407, i32 0, metadata !349, null}
!966 = metadata !{i32 413, i32 0, metadata !967, null}
!967 = metadata !{i32 786443, metadata !1, metadata !349, i32 407, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!968 = metadata !{i32 414, i32 0, metadata !969, null}
!969 = metadata !{i32 786443, metadata !1, metadata !967, i32 413, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!970 = metadata !{i32 415, i32 0, metadata !969, null}
!971 = metadata !{i32 416, i32 0, metadata !967, null}
!972 = metadata !{i32 417, i32 0, metadata !967, null}
!973 = metadata !{i32 420, i32 0, metadata !974, null}
!974 = metadata !{i32 786443, metadata !1, metadata !349, i32 419, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!975 = metadata !{i32 419, i32 0, metadata !349, null}
!976 = metadata !{i32 421, i32 0, metadata !974, null}
!977 = metadata !{i32 422, i32 0, metadata !974, null}
!978 = metadata !{i32 423, i32 0, metadata !349, null}
!979 = metadata !{i32 429, i32 0, metadata !980, null}
!980 = metadata !{i32 786443, metadata !1, metadata !349, i32 423, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!981 = metadata !{i32 435, i32 0, metadata !982, null}
!982 = metadata !{i32 786443, metadata !1, metadata !980, i32 429, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!983 = metadata !{i32 437, i32 0, metadata !982, null}
!984 = metadata !{i32 438, i32 0, metadata !980, null}
!985 = metadata !{i32 439, i32 0, metadata !986, null}
!986 = metadata !{i32 786443, metadata !1, metadata !980, i32 438, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!987 = metadata !{i32 440, i32 0, metadata !986, null}
!988 = metadata !{i32 441, i32 0, metadata !986, null}
!989 = metadata !{i32 442, i32 0, metadata !986, null}
!990 = metadata !{i32 786689, metadata !451, metadata !"frontmtx", metadata !5, i32 16778123, metadata !37, i32 0, metadata !991} ; [ DW_TAG_arg_variable ] [frontmtx] [line 907]
!991 = metadata !{i32 448, i32 0, metadata !980, null}
!992 = metadata !{i32 907, i32 0, metadata !451, metadata !991}
!993 = metadata !{i32 786689, metadata !451, metadata !"ZJ", metadata !5, i32 33555340, metadata !9, i32 0, metadata !991} ; [ DW_TAG_arg_variable ] [ZJ] [line 908]
!994 = metadata !{i32 908, i32 0, metadata !451, metadata !991}
!995 = metadata !{i32 786689, metadata !451, metadata !"J", metadata !5, i32 50332557, metadata !15, i32 0, metadata !991} ; [ DW_TAG_arg_variable ] [J] [line 909]
!996 = metadata !{i32 909, i32 0, metadata !451, metadata !991}
!997 = metadata !{i32 786689, metadata !451, metadata !"heads", metadata !5, i32 67109774, metadata !302, i32 0, metadata !991} ; [ DW_TAG_arg_variable ] [heads] [line 910]
!998 = metadata !{i32 910, i32 0, metadata !451, metadata !991}
!999 = metadata !{i32 786689, metadata !451, metadata !"frontIsDone", metadata !5, i32 83886991, metadata !209, i32 0, metadata !991} ; [ DW_TAG_arg_variable ] [frontIsDone] [line 911]
!1000 = metadata !{i32 911, i32 0, metadata !451, metadata !991}
!1001 = metadata !{i32 786689, metadata !451, metadata !"p_mtx", metadata !5, i32 100664208, metadata !8, i32 0, metadata !991} ; [ DW_TAG_arg_variable ] [p_mtx] [line 912]
!1002 = metadata !{i32 912, i32 0, metadata !451, metadata !991}
!1003 = metadata !{i32 786689, metadata !451, metadata !"msglvl", metadata !5, i32 117441425, metadata !15, i32 0, metadata !991} ; [ DW_TAG_arg_variable ] [msglvl] [line 913]
!1004 = metadata !{i32 913, i32 0, metadata !451, metadata !991}
!1005 = metadata !{i32 786689, metadata !451, metadata !"msgFile", metadata !5, i32 134218642, metadata !202, i32 0, metadata !991} ; [ DW_TAG_arg_variable ] [msgFile] [line 914]
!1006 = metadata !{i32 914, i32 0, metadata !451, metadata !991}
!1007 = metadata !{i32 924, i32 0, metadata !1008, metadata !991}
!1008 = metadata !{i32 786443, metadata !1, metadata !451, i32 924, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1009 = metadata !{i32 786688, metadata !451, metadata !"ip", metadata !5, i32 918, metadata !303, i32 0, metadata !991} ; [ DW_TAG_auto_variable ] [ip] [line 918]
!1010 = metadata !{i32 927, i32 0, metadata !1011, metadata !991}
!1011 = metadata !{i32 786443, metadata !1, metadata !1008, i32 926, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1012 = metadata !{i32 786688, metadata !451, metadata !"K", metadata !5, i32 917, metadata !15, i32 0, metadata !991} ; [ DW_TAG_auto_variable ] [K] [line 917]
!1013 = metadata !{i32 786688, metadata !451, metadata !"nextip", metadata !5, i32 918, metadata !303, i32 0, metadata !991} ; [ DW_TAG_auto_variable ] [nextip] [line 918]
!1014 = metadata !{i32 929, i32 0, metadata !1015, metadata !991}
!1015 = metadata !{i32 786443, metadata !1, metadata !1011, i32 928, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1016 = metadata !{i32 928, i32 0, metadata !1011, metadata !991}
!1017 = metadata !{i32 931, i32 0, metadata !1015, metadata !991}
!1018 = metadata !{i32 932, i32 0, metadata !1015, metadata !991}
!1019 = metadata !{i32 933, i32 0, metadata !1011, metadata !991}
!1020 = metadata !{i32 934, i32 0, metadata !1021, metadata !991}
!1021 = metadata !{i32 786443, metadata !1, metadata !1011, i32 933, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1022 = metadata !{i32 786688, metadata !451, metadata !"XK", metadata !5, i32 916, metadata !9, i32 0, metadata !991} ; [ DW_TAG_auto_variable ] [XK] [line 916]
!1023 = metadata !{i32 940, i32 0, metadata !1024, metadata !991}
!1024 = metadata !{i32 786443, metadata !1, metadata !1021, i32 934, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1025 = metadata !{i32 941, i32 0, metadata !1026, metadata !991}
!1026 = metadata !{i32 786443, metadata !1, metadata !1024, i32 940, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1027 = metadata !{i32 942, i32 0, metadata !1026, metadata !991}
!1028 = metadata !{i32 943, i32 0, metadata !1026, metadata !991}
!1029 = metadata !{i32 944, i32 0, metadata !1026, metadata !991}
!1030 = metadata !{i32 945, i32 0, metadata !1024, metadata !991}
!1031 = metadata !{i32 786688, metadata !451, metadata !"UJK", metadata !5, i32 916, metadata !9, i32 0, metadata !991} ; [ DW_TAG_auto_variable ] [UJK] [line 916]
!1032 = metadata !{i32 946, i32 0, metadata !1033, metadata !991}
!1033 = metadata !{i32 786443, metadata !1, metadata !1024, i32 945, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1034 = metadata !{i32 947, i32 0, metadata !1035, metadata !991}
!1035 = metadata !{i32 786443, metadata !1, metadata !1033, i32 946, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1036 = metadata !{i32 948, i32 0, metadata !1035, metadata !991}
!1037 = metadata !{i32 949, i32 0, metadata !1035, metadata !991}
!1038 = metadata !{i32 950, i32 0, metadata !1035, metadata !991}
!1039 = metadata !{i32 951, i32 0, metadata !1033, metadata !991}
!1040 = metadata !{i32 952, i32 0, metadata !1033, metadata !991}
!1041 = metadata !{i32 953, i32 0, metadata !1024, metadata !991}
!1042 = metadata !{i32 954, i32 0, metadata !1043, metadata !991}
!1043 = metadata !{i32 786443, metadata !1, metadata !1024, i32 953, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1044 = metadata !{i32 955, i32 0, metadata !1043, metadata !991}
!1045 = metadata !{i32 956, i32 0, metadata !1043, metadata !991}
!1046 = metadata !{i32 957, i32 0, metadata !1043, metadata !991}
!1047 = metadata !{i32 965, i32 0, metadata !1048, metadata !991}
!1048 = metadata !{i32 786443, metadata !1, metadata !1011, i32 959, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1049 = metadata !{i32 966, i32 0, metadata !1048, metadata !991}
!1050 = metadata !{i32 451, i32 0, metadata !349, null}
!1051 = metadata !{i32 456, i32 0, metadata !349, null}
!1052 = metadata !{i32 453, i32 0, metadata !1053, null}
!1053 = metadata !{i32 786443, metadata !1, metadata !349, i32 451, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1054 = metadata !{i32 457, i32 0, metadata !1055, null}
!1055 = metadata !{i32 786443, metadata !1, metadata !349, i32 456, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1056 = metadata !{i32 458, i32 0, metadata !1055, null}
!1057 = metadata !{i32 459, i32 0, metadata !1055, null}
!1058 = metadata !{i32 460, i32 0, metadata !349, null}
!1059 = metadata !{i32 466, i32 0, metadata !1060, null}
!1060 = metadata !{i32 786443, metadata !1, metadata !349, i32 460, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1061 = metadata !{i32 467, i32 0, metadata !1060, null}
!1062 = metadata !{i32 468, i32 0, metadata !1063, null}
!1063 = metadata !{i32 786443, metadata !1, metadata !1060, i32 467, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1064 = metadata !{i32 470, i32 0, metadata !1063, null}
!1065 = metadata !{i32 472, i32 0, metadata !1060, null}
!1066 = metadata !{i32 474, i32 0, metadata !1060, null}
!1067 = metadata !{i32 475, i32 0, metadata !1068, null}
!1068 = metadata !{i32 786443, metadata !1, metadata !1060, i32 474, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1069 = metadata !{i32 476, i32 0, metadata !1070, null}
!1070 = metadata !{i32 786443, metadata !1, metadata !1068, i32 475, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1071 = metadata !{i32 477, i32 0, metadata !1070, null}
!1072 = metadata !{i32 478, i32 0, metadata !1070, null}
!1073 = metadata !{i32 479, i32 0, metadata !1068, null}
!1074 = metadata !{i32 481, i32 0, metadata !1068, null}
!1075 = metadata !{i32 482, i32 0, metadata !1068, null}
!1076 = metadata !{i32 486, i32 0, metadata !349, null}
!1077 = metadata !{i32 487, i32 0, metadata !1078, null}
!1078 = metadata !{i32 786443, metadata !1, metadata !349, i32 486, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1079 = metadata !{i32 488, i32 0, metadata !1078, null}
!1080 = metadata !{i32 489, i32 0, metadata !1078, null}
!1081 = metadata !{i32 490, i32 0, metadata !349, null}
!1082 = metadata !{i32 491, i32 0, metadata !1083, null}
!1083 = metadata !{i32 786443, metadata !1, metadata !349, i32 490, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1084 = metadata !{i32 492, i32 0, metadata !1083, null}
!1085 = metadata !{i32 498, i32 0, metadata !1086, null}
!1086 = metadata !{i32 786443, metadata !1, metadata !1083, i32 492, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1087 = metadata !{i32 499, i32 0, metadata !1086, null}
!1088 = metadata !{i32 500, i32 0, metadata !1089, null}
!1089 = metadata !{i32 786443, metadata !1, metadata !1086, i32 499, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1090 = metadata !{i32 501, i32 0, metadata !1089, null}
!1091 = metadata !{i32 502, i32 0, metadata !1086, null}
!1092 = metadata !{i32 503, i32 0, metadata !1093, null}
!1093 = metadata !{i32 786443, metadata !1, metadata !1086, i32 502, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1094 = metadata !{i32 504, i32 0, metadata !1093, null}
!1095 = metadata !{i32 505, i32 0, metadata !1093, null}
!1096 = metadata !{i32 506, i32 0, metadata !1093, null}
!1097 = metadata !{i32 513, i32 0, metadata !1086, null}
!1098 = metadata !{i32 514, i32 0, metadata !1086, null}
!1099 = metadata !{i32 515, i32 0, metadata !1086, null}
!1100 = metadata !{i32 516, i32 0, metadata !1086, null}
!1101 = metadata !{i32 516, i32 0, metadata !1083, null}
!1102 = metadata !{i32 522, i32 0, metadata !1103, null}
!1103 = metadata !{i32 786443, metadata !1, metadata !1083, i32 516, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1104 = metadata !{i32 523, i32 0, metadata !1103, null}
!1105 = metadata !{i32 524, i32 0, metadata !1103, null}
!1106 = metadata !{i32 525, i32 0, metadata !1083, null}
!1107 = metadata !{i32 526, i32 0, metadata !1083, null}
!1108 = metadata !{i32 527, i32 0, metadata !349, null}
!1109 = metadata !{i32 528, i32 0, metadata !1110, null}
!1110 = metadata !{i32 786443, metadata !1, metadata !349, i32 527, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1111 = metadata !{i32 529, i32 0, metadata !1110, null}
!1112 = metadata !{i32 530, i32 0, metadata !1110, null}
!1113 = metadata !{i32 531, i32 0, metadata !349, null}
!1114 = metadata !{i32 544, i32 0, metadata !370, null}
!1115 = metadata !{i32 545, i32 0, metadata !370, null}
!1116 = metadata !{i32 546, i32 0, metadata !370, null}
!1117 = metadata !{i32 547, i32 0, metadata !370, null}
!1118 = metadata !{i32 548, i32 0, metadata !370, null}
!1119 = metadata !{i32 549, i32 0, metadata !370, null}
!1120 = metadata !{i32 550, i32 0, metadata !370, null}
!1121 = metadata !{i32 551, i32 0, metadata !370, null}
!1122 = metadata !{i32 555, i32 0, metadata !370, null}
!1123 = metadata !{i32 556, i32 0, metadata !370, null}
!1124 = metadata !{i32 557, i32 0, metadata !370, null}
!1125 = metadata !{i32 558, i32 0, metadata !370, null}
!1126 = metadata !{i32 560, i32 0, metadata !370, null}
!1127 = metadata !{i32 570, i32 0, metadata !1128, null}
!1128 = metadata !{i32 786443, metadata !1, metadata !370, i32 560, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1129 = metadata !{i32 571, i32 0, metadata !1128, null}
!1130 = metadata !{i32 572, i32 0, metadata !1128, null}
!1131 = metadata !{i32 573, i32 0, metadata !1132, null}
!1132 = metadata !{i32 786443, metadata !1, metadata !1128, i32 572, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1133 = metadata !{i32 574, i32 0, metadata !1132, null}
!1134 = metadata !{i32 575, i32 0, metadata !1132, null}
!1135 = metadata !{i32 576, i32 0, metadata !1132, null}
!1136 = metadata !{i32 577, i32 0, metadata !1137, null}
!1137 = metadata !{i32 786443, metadata !1, metadata !1128, i32 577, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1138 = metadata !{i32 578, i32 0, metadata !1139, null}
!1139 = metadata !{i32 786443, metadata !1, metadata !1137, i32 577, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1140 = metadata !{i8 84}
!1141 = metadata !{i32 580, i32 0, metadata !1128, null}
!1142 = metadata !{i32 581, i32 0, metadata !1128, null}
!1143 = metadata !{i32 582, i32 0, metadata !1144, null}
!1144 = metadata !{i32 786443, metadata !1, metadata !1128, i32 581, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1145 = metadata !{i32 583, i32 0, metadata !1144, null}
!1146 = metadata !{i32 584, i32 0, metadata !1144, null}
!1147 = metadata !{i32 585, i32 0, metadata !1144, null}
!1148 = metadata !{i32 589, i32 0, metadata !370, null}
!1149 = metadata !{i32 590, i32 0, metadata !370, null}
!1150 = metadata !{i32 591, i32 0, metadata !1151, null}
!1151 = metadata !{i32 786443, metadata !1, metadata !370, i32 591, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1152 = metadata !{i32 592, i32 0, metadata !1153, null}
!1153 = metadata !{i32 786443, metadata !1, metadata !1151, i32 591, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1154 = metadata !{i32 602, i32 0, metadata !1155, null}
!1155 = metadata !{i32 786443, metadata !1, metadata !1153, i32 593, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1156 = metadata !{i32 607, i32 0, metadata !1155, null}
!1157 = metadata !{i32 634, i32 0, metadata !1155, null}
!1158 = metadata !{i32 593, i32 0, metadata !1153, null}
!1159 = metadata !{i32 594, i32 0, metadata !1155, null}
!1160 = metadata !{i32 595, i32 0, metadata !1155, null}
!1161 = metadata !{i32 596, i32 0, metadata !1155, null}
!1162 = metadata !{i32 597, i32 0, metadata !1163, null}
!1163 = metadata !{i32 786443, metadata !1, metadata !1155, i32 596, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1164 = metadata !{i32 600, i32 0, metadata !1163, null}
!1165 = metadata !{i32 603, i32 0, metadata !1166, null}
!1166 = metadata !{i32 786443, metadata !1, metadata !1155, i32 602, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1167 = metadata !{i32 604, i32 0, metadata !1166, null}
!1168 = metadata !{i32 605, i32 0, metadata !1166, null}
!1169 = metadata !{i32 606, i32 0, metadata !1166, null}
!1170 = metadata !{i32 613, i32 0, metadata !1171, null}
!1171 = metadata !{i32 786443, metadata !1, metadata !1155, i32 607, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1172 = metadata !{i32 614, i32 0, metadata !1173, null}
!1173 = metadata !{i32 786443, metadata !1, metadata !1171, i32 613, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1174 = metadata !{i32 615, i32 0, metadata !1173, null}
!1175 = metadata !{i32 616, i32 0, metadata !1173, null}
!1176 = metadata !{i32 617, i32 0, metadata !1173, null}
!1177 = metadata !{i32 619, i32 0, metadata !1178, null}
!1178 = metadata !{i32 786443, metadata !1, metadata !1179, i32 618, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1179 = metadata !{i32 786443, metadata !1, metadata !1171, i32 618, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1180 = metadata !{i32 618, i32 0, metadata !1179, null}
!1181 = metadata !{i32 621, i32 0, metadata !1171, null}
!1182 = metadata !{i32 622, i32 0, metadata !1183, null}
!1183 = metadata !{i32 786443, metadata !1, metadata !1171, i32 621, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1184 = metadata !{i32 623, i32 0, metadata !1183, null}
!1185 = metadata !{i32 624, i32 0, metadata !1183, null}
!1186 = metadata !{i32 625, i32 0, metadata !1183, null}
!1187 = metadata !{i32 632, i32 0, metadata !1155, null}
!1188 = metadata !{i32 633, i32 0, metadata !1155, null}
!1189 = metadata !{i32 635, i32 0, metadata !1190, null}
!1190 = metadata !{i32 786443, metadata !1, metadata !1191, i32 635, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1191 = metadata !{i32 786443, metadata !1, metadata !1155, i32 634, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1192 = metadata !{i32 640, i32 0, metadata !1193, null}
!1193 = metadata !{i32 786443, metadata !1, metadata !1190, i32 635, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1194 = metadata !{i32 641, i32 0, metadata !1193, null}
!1195 = metadata !{i32 637, i32 0, metadata !1196, null}
!1196 = metadata !{i32 786443, metadata !1, metadata !1197, i32 636, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1197 = metadata !{i32 786443, metadata !1, metadata !1193, i32 636, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1198 = metadata !{i32 644, i32 0, metadata !1199, null}
!1199 = metadata !{i32 786443, metadata !1, metadata !1200, i32 644, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1200 = metadata !{i32 786443, metadata !1, metadata !1155, i32 643, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1201 = metadata !{i32 650, i32 0, metadata !1202, null}
!1202 = metadata !{i32 786443, metadata !1, metadata !1199, i32 644, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1203 = metadata !{i32 651, i32 0, metadata !1202, null}
!1204 = metadata !{i32 646, i32 0, metadata !1205, null}
!1205 = metadata !{i32 786443, metadata !1, metadata !1206, i32 645, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1206 = metadata !{i32 786443, metadata !1, metadata !1202, i32 645, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1207 = metadata !{i32 636, i32 0, metadata !1197, null}
!1208 = metadata !{i32 638, i32 0, metadata !1196, null}
!1209 = metadata !{i32 645, i32 0, metadata !1206, null}
!1210 = metadata !{i32 647, i32 0, metadata !1205, null}
!1211 = metadata !{i32 648, i32 0, metadata !1205, null}
!1212 = metadata !{i32 657, i32 0, metadata !1155, null}
!1213 = metadata !{i32 658, i32 0, metadata !1155, null}
!1214 = metadata !{i32 665, i32 0, metadata !1215, null}
!1215 = metadata !{i32 786443, metadata !1, metadata !1216, i32 664, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1216 = metadata !{i32 786443, metadata !1, metadata !1217, i32 664, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1217 = metadata !{i32 786443, metadata !1, metadata !1155, i32 658, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1218 = metadata !{i32 664, i32 0, metadata !1216, null}
!1219 = metadata !{i32 670, i32 0, metadata !370, null}
!1220 = metadata !{i32 671, i32 0, metadata !1221, null}
!1221 = metadata !{i32 786443, metadata !1, metadata !370, i32 670, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1222 = metadata !{i32 672, i32 0, metadata !1221, null}
!1223 = metadata !{i32 678, i32 0, metadata !370, null}
!1224 = metadata !{i32 982, i32 0, metadata !402, null}
!1225 = metadata !{i32 983, i32 0, metadata !402, null}
!1226 = metadata !{i32 984, i32 0, metadata !402, null}
!1227 = metadata !{i32 985, i32 0, metadata !402, null}
!1228 = metadata !{i32 990, i32 0, metadata !402, null}
!1229 = metadata !{i32 991, i32 0, metadata !1230, null}
!1230 = metadata !{i32 786443, metadata !1, metadata !402, i32 991, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1231 = metadata !{i32 992, i32 0, metadata !1232, null}
!1232 = metadata !{i32 786443, metadata !1, metadata !1230, i32 991, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1233 = metadata !{i32 993, i32 0, metadata !1234, null}
!1234 = metadata !{i32 786443, metadata !1, metadata !1232, i32 992, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1235 = metadata !{i32 994, i32 0, metadata !1234, null}
!1236 = metadata !{i32 996, i32 0, metadata !402, null}
!1237 = metadata !{i32 1014, i32 0, metadata !421, null}
!1238 = metadata !{i32 1015, i32 0, metadata !421, null}
!1239 = metadata !{i32 1016, i32 0, metadata !421, null}
!1240 = metadata !{i32 1018, i32 0, metadata !421, null}
!1241 = metadata !{i32 1019, i32 0, metadata !421, null}
!1242 = metadata !{i32 1027, i32 0, metadata !421, null}
!1243 = metadata !{i32 1028, i32 0, metadata !421, null}
!1244 = metadata !{i32 1029, i32 0, metadata !421, null}
!1245 = metadata !{i32 1029, i32 0, metadata !1246, null}
!1246 = metadata !{i32 786443, metadata !1, metadata !421, i32 1029, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1247 = metadata !{i32 1029, i32 0, metadata !1248, null}
!1248 = metadata !{i32 786443, metadata !1, metadata !1246, i32 1029, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1249 = metadata !{i32 1029, i32 0, metadata !1250, null}
!1250 = metadata !{i32 786443, metadata !1, metadata !421, i32 1029, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1251 = metadata !{i32 1030, i32 0, metadata !1252, null}
!1252 = metadata !{i32 786443, metadata !1, metadata !421, i32 1030, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1253 = metadata !{i32 1031, i32 0, metadata !1254, null}
!1254 = metadata !{i32 786443, metadata !1, metadata !1252, i32 1030, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1255 = metadata !{i32 1033, i32 0, metadata !421, null}
!1256 = metadata !{i32 1034, i32 0, metadata !1257, null}
!1257 = metadata !{i32 786443, metadata !1, metadata !421, i32 1034, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1258 = metadata !{i32 1040, i32 0, metadata !1259, null}
!1259 = metadata !{i32 786443, metadata !1, metadata !1260, i32 1037, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1260 = metadata !{i32 786443, metadata !1, metadata !1261, i32 1036, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1261 = metadata !{i32 786443, metadata !1, metadata !1262, i32 1036, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1262 = metadata !{i32 786443, metadata !1, metadata !1257, i32 1034, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1263 = metadata !{i32 1035, i32 0, metadata !1262, null}
!1264 = metadata !{i32 1036, i32 0, metadata !1261, null}
!1265 = metadata !{i32 1037, i32 0, metadata !1260, null}
!1266 = metadata !{i32 1038, i32 0, metadata !1259, null}
!1267 = metadata !{i32 1039, i32 0, metadata !1259, null}
!1268 = metadata !{i32 1041, i32 0, metadata !1269, null}
!1269 = metadata !{i32 786443, metadata !1, metadata !1259, i32 1040, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1270 = metadata !{i32 1043, i32 0, metadata !1269, null}
!1271 = metadata !{i32 1044, i32 0, metadata !1269, null}
!1272 = metadata !{i32 1048, i32 0, metadata !421, null}
!1273 = metadata !{i32 1060, i32 0, metadata !437, null}
!1274 = metadata !{i32 1061, i32 0, metadata !437, null}
!1275 = metadata !{i32 1062, i32 0, metadata !437, null}
!1276 = metadata !{i32 1066, i32 0, metadata !437, null}
!1277 = metadata !{i32 1067, i32 0, metadata !437, null}
!1278 = metadata !{i32 1069, i32 0, metadata !437, null}
!1279 = metadata !{i32 1070, i32 0, metadata !437, null}
!1280 = metadata !{i32 1071, i32 0, metadata !437, null}
!1281 = metadata !{i32 1071, i32 0, metadata !1282, null}
!1282 = metadata !{i32 786443, metadata !1, metadata !437, i32 1071, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1283 = metadata !{i32 1071, i32 0, metadata !1284, null}
!1284 = metadata !{i32 786443, metadata !1, metadata !1282, i32 1071, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1285 = metadata !{i32 1071, i32 0, metadata !1286, null}
!1286 = metadata !{i32 786443, metadata !1, metadata !437, i32 1071, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1287 = metadata !{i32 1072, i32 0, metadata !1288, null}
!1288 = metadata !{i32 786443, metadata !1, metadata !437, i32 1072, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1289 = metadata !{i32 1073, i32 0, metadata !1290, null}
!1290 = metadata !{i32 786443, metadata !1, metadata !1288, i32 1072, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1291 = metadata !{i32 1075, i32 0, metadata !437, null}
!1292 = metadata !{i32 1076, i32 0, metadata !1293, null}
!1293 = metadata !{i32 786443, metadata !1, metadata !437, i32 1076, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1294 = metadata !{i32 1087, i32 0, metadata !1295, null}
!1295 = metadata !{i32 786443, metadata !1, metadata !1296, i32 1079, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1296 = metadata !{i32 786443, metadata !1, metadata !1297, i32 1078, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1297 = metadata !{i32 786443, metadata !1, metadata !1298, i32 1078, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1298 = metadata !{i32 786443, metadata !1, metadata !1293, i32 1076, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1299 = metadata !{i32 1077, i32 0, metadata !1298, null}
!1300 = metadata !{i32 1078, i32 0, metadata !1297, null}
!1301 = metadata !{i32 1086, i32 0, metadata !1295, null}
!1302 = metadata !{i32 1079, i32 0, metadata !1296, null}
!1303 = metadata !{i32 1080, i32 0, metadata !1295, null}
!1304 = metadata !{i32 1081, i32 0, metadata !1305, null}
!1305 = metadata !{i32 786443, metadata !1, metadata !1295, i32 1080, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1306 = metadata !{i32 1083, i32 0, metadata !1305, null}
!1307 = metadata !{%struct._IP* null}
!1308 = metadata !{i32 1085, i32 0, metadata !1295, null}
!1309 = metadata !{i32 1088, i32 0, metadata !1310, null}
!1310 = metadata !{i32 786443, metadata !1, metadata !1295, i32 1087, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_solveUtil.c]
!1311 = metadata !{i32 1090, i32 0, metadata !1310, null}
!1312 = metadata !{i32 1091, i32 0, metadata !1310, null}
!1313 = metadata !{i32 1095, i32 0, metadata !437, null}
