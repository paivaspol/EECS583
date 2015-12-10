; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [56 x i8] c"\0A fatal error in SubMtx_scale1vec(%p,%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [99 x i8] c"\0A fatal error in SubMtx_scale1vec(%p,%p,%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str2 = private unnamed_addr constant [95 x i8] c"\0A fatal error in SubMtx_scale1vec(%p,%p,%p)\0A hermitian matrix, type %d is not SPOOLES_COMPLEX\0A\00", align 1
@.str3 = private unnamed_addr constant [161 x i8] c"\0A fatal error in SubMtx_scale1vec()\0A matrix mode not supported\0A must be SUBMTX_DIAGONAL,\0A      or SUBMTX_BLOCK_DIAGONAL_SYM\0A      or SUBMTX_BLOCK_DIAGONAL_HERM\0A\00", align 1
@.str4 = private unnamed_addr constant [62 x i8] c"\0A fatal error in SubMtx_scale2vec(%p,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [105 x i8] c"\0A fatal error in SubMtx_scale2vec(%p,%p,%p,%p,%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str6 = private unnamed_addr constant [101 x i8] c"\0A fatal error in SubMtx_scale2vec(%p,%p,%p,%p,%p)\0A hermitian matrix, type %d is not SPOOLES_COMPLEX\0A\00", align 1
@.str7 = private unnamed_addr constant [161 x i8] c"\0A fatal error in SubMtx_scale2vec()\0A matrix type not supported\0A must be SUBMTX_DIAGONAL,\0A      or SUBMTX_BLOCK_DIAGONAL_SYM\0A      or SUBMTX_BLOCK_DIAGONAL_HERM\0A\00", align 1
@.str8 = private unnamed_addr constant [68 x i8] c"\0A fatal error in SubMtx_scale3vec(%p,%p,%p,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [111 x i8] c"\0A fatal error in SubMtx_scale3vec(%p,%p,%p,%p,%p,%p,%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str10 = private unnamed_addr constant [107 x i8] c"\0A fatal error in SubMtx_scale3vec(%p,%p,%p,%p,%p,%p,%p)\0A hermitian matrix, type %d is not SPOOLES_COMPLEX\0A\00", align 1
@.str11 = private unnamed_addr constant [161 x i8] c"\0A fatal error in SubMtx_scale3vec()\0A matrix type not supported\0A must be SUBMTX_DIAGONAL,\0A      or SUBMTX_BLOCK_DIAGONAL_SYM\0A      or SUBMTX_BLOCK_DIAGONAL_HERM\0A\00", align 1
@.str12 = private unnamed_addr constant [57 x i8] c"\0A fatal error in SubMtx_scale1vec()\0A pivotsizes[%d] = %d\00", align 1
@.str13 = private unnamed_addr constant [57 x i8] c"\0A fatal error in SubMtx_scale2vec()\0A pivotsizes[%d] = %d\00", align 1
@.str14 = private unnamed_addr constant [57 x i8] c"\0A fatal error in SubMtx_scale3vec()\0A pivotsizes[%d] = %d\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_scale1vec(%struct._SubMtx* %mtxA, double* %y0, double* %x0) #0 {
entry:
  %entries.i62 = alloca double*, align 8
  %nentA.i63 = alloca i32, align 4
  %nrowA.i64 = alloca i32, align 4
  %pivotsizes.i65 = alloca i32*, align 8
  %entries.i = alloca double*, align 8
  %nentA.i = alloca i32, align 4
  %nrowA.i46 = alloca i32, align 4
  %pivotsizes.i = alloca i32*, align 8
  %entriesA.i = alloca double*, align 8
  %nrowA.i = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !37), !dbg !448
  call void @llvm.dbg.value(metadata !{double* %y0}, i64 0, metadata !38), !dbg !449
  call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !39), !dbg !450
  %cmp = icmp eq %struct._SubMtx* %mtxA, null, !dbg !451
  %cmp1 = icmp eq double* %y0, null, !dbg !451
  %or.cond = or i1 %cmp, %cmp1, !dbg !451
  %cmp3 = icmp eq double* %x0, null, !dbg !451
  %or.cond45 = or i1 %or.cond, %cmp3, !dbg !451
  br i1 %or.cond45, label %if.then, label %if.end, !dbg !451

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !452, !tbaa !454
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), %struct._SubMtx* %mtxA, double* %y0, double* %x0) #6, !dbg !452
  call void @exit(i32 -1) #7, !dbg !457
  unreachable, !dbg !457

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 0, !dbg !458
  %1 = load i32* %type, align 4, !dbg !458, !tbaa !459
  %.off = add i32 %1, -1, !dbg !458
  %switch = icmp ult i32 %.off, 2, !dbg !458
  br i1 %switch, label %if.end11, label %if.then8, !dbg !458

if.then8:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !460, !tbaa !454
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([99 x i8]* @.str1, i64 0, i64 0), %struct._SubMtx* %mtxA, double* %y0, double* %x0, i32 %1) #6, !dbg !460
  call void @exit(i32 -1) #7, !dbg !462
  unreachable, !dbg !462

if.end11:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 1, !dbg !463
  %3 = load i32* %mode, align 4, !dbg !463, !tbaa !459
  switch i32 %3, label %sw.default [
    i32 7, label %sw.bb
    i32 8, label %sw.bb12
    i32 9, label %sw.bb13
  ], !dbg !463

sw.bb:                                            ; preds = %if.end11
  %4 = bitcast double** %entriesA.i to i8*, !dbg !464
  call void @llvm.lifetime.start(i64 8, i8* %4) #5, !dbg !464
  %5 = bitcast i32* %nrowA.i to i8*, !dbg !464
  call void @llvm.lifetime.start(i64 4, i8* %5) #5, !dbg !464
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !467) #5, !dbg !464
  call void @llvm.dbg.value(metadata !{double* %y0}, i64 0, metadata !468) #5, !dbg !469
  call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !470) #5, !dbg !471
  call void @llvm.dbg.declare(metadata !{double** %entriesA.i}, metadata !387) #5, !dbg !472
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i}, metadata !388) #5, !dbg !473
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i, double** %entriesA.i) #6, !dbg !474
  %6 = load i32* %type, align 4, !dbg !475, !tbaa !459
  switch i32 %6, label %sw.epilog [
    i32 1, label %for.cond.preheader.i
    i32 2, label %for.cond10.preheader.i
  ], !dbg !475

for.cond10.preheader.i:                           ; preds = %sw.bb
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !476) #5, !dbg !477
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !388), !dbg !477
  %7 = load i32* %nrowA.i, align 4, !dbg !477, !tbaa !459
  %cmp1159.i = icmp sgt i32 %7, 0, !dbg !477
  br i1 %cmp1159.i, label %for.body12.lr.ph.i, label %sw.epilog, !dbg !477

for.body12.lr.ph.i:                               ; preds = %for.cond10.preheader.i
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !479) #5, !dbg !480
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !387), !dbg !480
  %8 = load double** %entriesA.i, align 8, !dbg !480, !tbaa !454
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !476) #5, !dbg !477
  br label %for.body12.i, !dbg !477

for.cond.preheader.i:                             ; preds = %sw.bb
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !476) #5, !dbg !482
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !388), !dbg !482
  %9 = load i32* %nrowA.i, align 4, !dbg !482, !tbaa !459
  %cmp156.i = icmp sgt i32 %9, 0, !dbg !482
  br i1 %cmp156.i, label %for.body.lr.ph.i, label %sw.epilog, !dbg !482

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !479) #5, !dbg !484
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !387), !dbg !484
  %10 = load double** %entriesA.i, align 8, !dbg !484, !tbaa !454
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !476) #5, !dbg !482
  br label %for.body.i, !dbg !482

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !479) #5, !dbg !484
  %arrayidx.i = getelementptr inbounds double* %10, i64 %indvars.iv.i, !dbg !484
  %11 = load double* %arrayidx.i, align 8, !dbg !484, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %11}, i64 0, metadata !487) #5, !dbg !484
  %arrayidx3.i = getelementptr inbounds double* %x0, i64 %indvars.iv.i, !dbg !488
  %12 = load double* %arrayidx3.i, align 8, !dbg !488, !tbaa !486
  %mul.i = fmul double %11, %12, !dbg !488
  %arrayidx5.i = getelementptr inbounds double* %y0, i64 %indvars.iv.i, !dbg !488
  store double %mul.i, double* %arrayidx5.i, align 8, !dbg !488, !tbaa !486
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !482
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !476) #5, !dbg !482
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32, !dbg !482
  %exitcond = icmp eq i32 %lftr.wideiv, %9, !dbg !482
  br i1 %exitcond, label %sw.epilog, label %for.body.i, !dbg !482

for.body12.i:                                     ; preds = %for.body12.i, %for.body12.lr.ph.i
  %indvars.iv65.i = phi i64 [ 1, %for.body12.lr.ph.i ], [ %indvars.iv.next66.i, %for.body12.i ], !dbg !477
  %indvars.iv63.i = phi i64 [ 0, %for.body12.lr.ph.i ], [ %indvars.iv.next64.i, %for.body12.i ]
  %irowA9.061.i = phi i32 [ 0, %for.body12.lr.ph.i ], [ %inc30.i, %for.body12.i ]
  %arrayidx14.i = getelementptr inbounds double* %x0, i64 %indvars.iv63.i, !dbg !489
  %13 = load double* %arrayidx14.i, align 8, !dbg !489, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %13}, i64 0, metadata !490) #5, !dbg !489
  %arrayidx16.i = getelementptr inbounds double* %x0, i64 %indvars.iv65.i, !dbg !489
  %14 = load double* %arrayidx16.i, align 8, !dbg !489, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %14}, i64 0, metadata !491) #5, !dbg !489
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !479) #5, !dbg !480
  %arrayidx18.i = getelementptr inbounds double* %8, i64 %indvars.iv63.i, !dbg !480
  %15 = load double* %arrayidx18.i, align 8, !dbg !480, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %15}, i64 0, metadata !492) #5, !dbg !480
  %arrayidx20.i = getelementptr inbounds double* %8, i64 %indvars.iv65.i, !dbg !480
  %16 = load double* %arrayidx20.i, align 8, !dbg !480, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %16}, i64 0, metadata !493) #5, !dbg !480
  %mul21.i = fmul double %13, %15, !dbg !494
  %mul22.i = fmul double %14, %16, !dbg !494
  %sub.i = fsub double %mul21.i, %mul22.i, !dbg !494
  %arrayidx24.i = getelementptr inbounds double* %y0, i64 %indvars.iv63.i, !dbg !494
  store double %sub.i, double* %arrayidx24.i, align 8, !dbg !494, !tbaa !486
  %mul25.i = fmul double %14, %15, !dbg !494
  %mul26.i = fmul double %13, %16, !dbg !494
  %add.i = fadd double %mul25.i, %mul26.i, !dbg !494
  %arrayidx28.i = getelementptr inbounds double* %y0, i64 %indvars.iv65.i, !dbg !494
  store double %add.i, double* %arrayidx28.i, align 8, !dbg !494, !tbaa !486
  %inc30.i = add nsw i32 %irowA9.061.i, 1, !dbg !495
  call void @llvm.dbg.value(metadata !{i32 %inc30.i}, i64 0, metadata !496) #5, !dbg !495
  %indvars.iv.next64.i = add i64 %indvars.iv63.i, 2, !dbg !477
  %indvars.iv.next66.i = add i64 %indvars.iv65.i, 2, !dbg !477
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !476) #5, !dbg !477
  %exitcond102 = icmp eq i32 %inc30.i, %7, !dbg !477
  br i1 %exitcond102, label %sw.epilog, label %for.body12.i, !dbg !477

sw.bb12:                                          ; preds = %if.end11
  %17 = bitcast double** %entries.i to i8*, !dbg !497
  call void @llvm.lifetime.start(i64 8, i8* %17) #5, !dbg !497
  %18 = bitcast i32* %nentA.i to i8*, !dbg !497
  call void @llvm.lifetime.start(i64 4, i8* %18) #5, !dbg !497
  %19 = bitcast i32* %nrowA.i46 to i8*, !dbg !497
  call void @llvm.lifetime.start(i64 4, i8* %19) #5, !dbg !497
  %20 = bitcast i32** %pivotsizes.i to i8*, !dbg !497
  call void @llvm.lifetime.start(i64 8, i8* %20) #5, !dbg !497
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !499) #5, !dbg !497
  call void @llvm.dbg.value(metadata !{double* %y0}, i64 0, metadata !500) #5, !dbg !501
  call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !502) #5, !dbg !503
  call void @llvm.dbg.declare(metadata !{double** %entries.i}, metadata !198) #5, !dbg !504
  call void @llvm.dbg.declare(metadata !{i32* %nentA.i}, metadata !199) #5, !dbg !505
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i46}, metadata !200) #5, !dbg !505
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes.i}, metadata !201) #5, !dbg !506
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i46, i32* %nentA.i, i32** %pivotsizes.i, double** %entries.i) #6, !dbg !507
  %21 = load i32* %type, align 4, !dbg !508, !tbaa !459
  switch i32 %21, label %sw.epilog [
    i32 1, label %for.cond.preheader.i48
    i32 2, label %for.cond54.preheader.i
  ], !dbg !508

for.cond54.preheader.i:                           ; preds = %sw.bb12
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i46}, i64 0, metadata !509) #5, !dbg !510
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i46}, i64 0, metadata !200), !dbg !510
  %22 = load i32* %nrowA.i46, align 4, !dbg !510, !tbaa !459
  %cmp55269.i = icmp sgt i32 %22, 0, !dbg !510
  br i1 %cmp55269.i, label %for.body56.lr.ph.i, label %sw.epilog, !dbg !510

for.body56.lr.ph.i:                               ; preds = %for.cond54.preheader.i
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i}, i64 0, metadata !511) #5, !dbg !512
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i}, i64 0, metadata !201), !dbg !512
  %23 = load i32** %pivotsizes.i, align 8, !dbg !512, !tbaa !454
  call void @llvm.dbg.value(metadata !{double** %entries.i}, i64 0, metadata !513) #5, !dbg !514
  call void @llvm.dbg.value(metadata !{double** %entries.i}, i64 0, metadata !198), !dbg !514
  %24 = load double** %entries.i, align 8, !dbg !514, !tbaa !454
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i46}, i64 0, metadata !509) #5, !dbg !510
  call void @llvm.dbg.value(metadata !{double** %entries.i}, i64 0, metadata !513) #5, !dbg !515
  br label %for.body56.i, !dbg !510

for.cond.preheader.i48:                           ; preds = %sw.bb12
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i46}, i64 0, metadata !509) #5, !dbg !516
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i46}, i64 0, metadata !200), !dbg !516
  %25 = load i32* %nrowA.i46, align 4, !dbg !516, !tbaa !459
  %cmp1262.i = icmp sgt i32 %25, 0, !dbg !516
  br i1 %cmp1262.i, label %for.body.lr.ph.i49, label %sw.epilog, !dbg !516

for.body.lr.ph.i49:                               ; preds = %for.cond.preheader.i48
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i}, i64 0, metadata !511) #5, !dbg !517
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i}, i64 0, metadata !201), !dbg !517
  %26 = load i32** %pivotsizes.i, align 8, !dbg !517, !tbaa !454
  call void @llvm.dbg.value(metadata !{double** %entries.i}, i64 0, metadata !513) #5, !dbg !518
  call void @llvm.dbg.value(metadata !{double** %entries.i}, i64 0, metadata !198), !dbg !518
  %27 = load double** %entries.i, align 8, !dbg !518, !tbaa !454
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i46}, i64 0, metadata !509) #5, !dbg !516
  call void @llvm.dbg.value(metadata !{double** %entries.i}, i64 0, metadata !513) #5, !dbg !519
  br label %for.body.i52, !dbg !516

for.body.i52:                                     ; preds = %for.inc.i, %for.body.lr.ph.i49
  %indvars.iv.i50 = phi i64 [ 0, %for.body.lr.ph.i49 ], [ %indvars.iv.next.i59, %for.inc.i ]
  %ipivot.0265.i = phi i32 [ 0, %for.body.lr.ph.i49 ], [ %inc46.i, %for.inc.i ]
  %irowA.0264.i = phi i32 [ 0, %for.body.lr.ph.i49 ], [ %irowA.1.i, %for.inc.i ]
  %kk.0263.i = phi i32 [ 0, %for.body.lr.ph.i49 ], [ %kk.1.i, %for.inc.i ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i}, i64 0, metadata !511) #5, !dbg !517
  %arrayidx.i51 = getelementptr inbounds i32* %26, i64 %indvars.iv.i50, !dbg !517
  %28 = load i32* %arrayidx.i51, align 4, !dbg !517, !tbaa !459
  switch i32 %28, label %if.else42.i [
    i32 1, label %if.then3.i
    i32 2, label %if.then14.i
  ], !dbg !517

if.then3.i:                                       ; preds = %for.body.i52
  %idxprom4.i = sext i32 %kk.0263.i to i64, !dbg !518
  call void @llvm.dbg.value(metadata !{double** %entries.i}, i64 0, metadata !513) #5, !dbg !518
  %arrayidx5.i53 = getelementptr inbounds double* %27, i64 %idxprom4.i, !dbg !518
  %29 = load double* %arrayidx5.i53, align 8, !dbg !518, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %29}, i64 0, metadata !520) #5, !dbg !518
  %idxprom6.i = sext i32 %irowA.0264.i to i64, !dbg !521
  %arrayidx7.i = getelementptr inbounds double* %x0, i64 %idxprom6.i, !dbg !521
  %30 = load double* %arrayidx7.i, align 8, !dbg !521, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %30}, i64 0, metadata !522) #5, !dbg !521
  %mul.i54 = fmul double %29, %30, !dbg !523
  %arrayidx9.i = getelementptr inbounds double* %y0, i64 %idxprom6.i, !dbg !523
  store double %mul.i54, double* %arrayidx9.i, align 8, !dbg !523, !tbaa !486
  %inc.i = add nsw i32 %kk.0263.i, 1, !dbg !524
  call void @llvm.dbg.value(metadata !{i32 %inc.i}, i64 0, metadata !525) #5, !dbg !524
  %inc10.i = add nsw i32 %irowA.0264.i, 1, !dbg !524
  call void @llvm.dbg.value(metadata !{i32 %inc10.i}, i64 0, metadata !526) #5, !dbg !524
  br label %for.inc.i, !dbg !527

if.then14.i:                                      ; preds = %for.body.i52
  %idxprom17.i = sext i32 %kk.0263.i to i64, !dbg !519
  call void @llvm.dbg.value(metadata !{double** %entries.i}, i64 0, metadata !513) #5, !dbg !519
  %arrayidx18.i55 = getelementptr inbounds double* %27, i64 %idxprom17.i, !dbg !519
  %31 = load double* %arrayidx18.i55, align 8, !dbg !519, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %31}, i64 0, metadata !528) #5, !dbg !519
  %add.i56 = add nsw i32 %kk.0263.i, 1, !dbg !529
  %idxprom19.i = sext i32 %add.i56 to i64, !dbg !529
  %arrayidx20.i57 = getelementptr inbounds double* %27, i64 %idxprom19.i, !dbg !529
  %32 = load double* %arrayidx20.i57, align 8, !dbg !529, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %32}, i64 0, metadata !530) #5, !dbg !529
  %add21.i = add nsw i32 %kk.0263.i, 2, !dbg !531
  %idxprom22.i = sext i32 %add21.i to i64, !dbg !531
  %arrayidx23.i = getelementptr inbounds double* %27, i64 %idxprom22.i, !dbg !531
  %33 = load double* %arrayidx23.i, align 8, !dbg !531, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %33}, i64 0, metadata !532) #5, !dbg !531
  %idxprom24.i = sext i32 %irowA.0264.i to i64, !dbg !533
  %arrayidx25.i = getelementptr inbounds double* %x0, i64 %idxprom24.i, !dbg !533
  %34 = load double* %arrayidx25.i, align 8, !dbg !533, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %34}, i64 0, metadata !534) #5, !dbg !533
  %add26.i = add nsw i32 %irowA.0264.i, 1, !dbg !535
  %idxprom27.i = sext i32 %add26.i to i64, !dbg !535
  %arrayidx28.i58 = getelementptr inbounds double* %x0, i64 %idxprom27.i, !dbg !535
  %35 = load double* %arrayidx28.i58, align 8, !dbg !535, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %35}, i64 0, metadata !536) #5, !dbg !535
  %mul29.i = fmul double %31, %34, !dbg !537
  %mul30.i = fmul double %32, %35, !dbg !537
  %add31.i = fadd double %mul29.i, %mul30.i, !dbg !537
  %arrayidx33.i = getelementptr inbounds double* %y0, i64 %idxprom24.i, !dbg !537
  store double %add31.i, double* %arrayidx33.i, align 8, !dbg !537, !tbaa !486
  %mul34.i = fmul double %32, %34, !dbg !538
  %mul35.i = fmul double %33, %35, !dbg !538
  %add36.i = fadd double %mul34.i, %mul35.i, !dbg !538
  %arrayidx39.i = getelementptr inbounds double* %y0, i64 %idxprom27.i, !dbg !538
  store double %add36.i, double* %arrayidx39.i, align 8, !dbg !538, !tbaa !486
  %add40.i = add nsw i32 %kk.0263.i, 3, !dbg !539
  call void @llvm.dbg.value(metadata !{i32 %add40.i}, i64 0, metadata !525) #5, !dbg !539
  %add41.i = add nsw i32 %irowA.0264.i, 2, !dbg !539
  call void @llvm.dbg.value(metadata !{i32 %add41.i}, i64 0, metadata !526) #5, !dbg !539
  br label %for.inc.i

if.else42.i:                                      ; preds = %for.body.i52
  %36 = load %struct._IO_FILE** @stderr, align 8, !dbg !540, !tbaa !454
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0), i32 %ipivot.0265.i, i32 %28) #6, !dbg !540
  call void @exit(i32 -1) #7, !dbg !542
  unreachable, !dbg !542

for.inc.i:                                        ; preds = %if.then14.i, %if.then3.i
  %kk.1.i = phi i32 [ %inc.i, %if.then3.i ], [ %add40.i, %if.then14.i ]
  %irowA.1.i = phi i32 [ %inc10.i, %if.then3.i ], [ %add41.i, %if.then14.i ]
  %indvars.iv.next.i59 = add i64 %indvars.iv.i50, 1, !dbg !516
  %inc46.i = add nsw i32 %ipivot.0265.i, 1, !dbg !516
  call void @llvm.dbg.value(metadata !{i32 %inc46.i}, i64 0, metadata !543) #5, !dbg !516
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i46}, i64 0, metadata !509) #5, !dbg !516
  %cmp1.i60 = icmp slt i32 %irowA.1.i, %25, !dbg !516
  br i1 %cmp1.i60, label %for.body.i52, label %sw.epilog, !dbg !516

for.body56.i:                                     ; preds = %for.inc163.i, %for.body56.lr.ph.i
  %indvars.iv280.i = phi i64 [ 0, %for.body56.lr.ph.i ], [ %indvars.iv.next281.i, %for.inc163.i ]
  %iloc.0274.i = phi i32 [ 1, %for.body56.lr.ph.i ], [ %iloc.1.i, %for.inc163.i ]
  %ipivot51.0273.i = phi i32 [ 0, %for.body56.lr.ph.i ], [ %inc164.i, %for.inc163.i ]
  %irowA52.0272.i = phi i32 [ 0, %for.body56.lr.ph.i ], [ %irowA52.1.i, %for.inc163.i ]
  %kk53.0271.i = phi i32 [ 0, %for.body56.lr.ph.i ], [ %kk53.1.i, %for.inc163.i ]
  %rloc.0270.i = phi i32 [ 0, %for.body56.lr.ph.i ], [ %rloc.1.i, %for.inc163.i ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i}, i64 0, metadata !511) #5, !dbg !512
  %arrayidx58.i = getelementptr inbounds i32* %23, i64 %indvars.iv280.i, !dbg !512
  %37 = load i32* %arrayidx58.i, align 4, !dbg !512, !tbaa !459
  switch i32 %37, label %if.else157.i [
    i32 1, label %if.then60.i
    i32 2, label %if.then87.i
  ], !dbg !512

if.then60.i:                                      ; preds = %for.body56.i
  %idxprom61.i = sext i32 %kk53.0271.i to i64, !dbg !514
  call void @llvm.dbg.value(metadata !{double** %entries.i}, i64 0, metadata !513) #5, !dbg !514
  %arrayidx62.i = getelementptr inbounds double* %24, i64 %idxprom61.i, !dbg !514
  %38 = load double* %arrayidx62.i, align 8, !dbg !514, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %38}, i64 0, metadata !544) #5, !dbg !514
  %add63.i = add nsw i32 %kk53.0271.i, 1, !dbg !514
  %idxprom64.i = sext i32 %add63.i to i64, !dbg !514
  %arrayidx65.i = getelementptr inbounds double* %24, i64 %idxprom64.i, !dbg !514
  %39 = load double* %arrayidx65.i, align 8, !dbg !514, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %39}, i64 0, metadata !545) #5, !dbg !514
  %idxprom66.i = sext i32 %rloc.0270.i to i64, !dbg !546
  %arrayidx67.i = getelementptr inbounds double* %x0, i64 %idxprom66.i, !dbg !546
  %40 = load double* %arrayidx67.i, align 8, !dbg !546, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %40}, i64 0, metadata !547) #5, !dbg !546
  %idxprom68.i = sext i32 %iloc.0274.i to i64, !dbg !546
  %arrayidx69.i = getelementptr inbounds double* %x0, i64 %idxprom68.i, !dbg !546
  %41 = load double* %arrayidx69.i, align 8, !dbg !546, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %41}, i64 0, metadata !548) #5, !dbg !546
  %mul70.i = fmul double %38, %40, !dbg !549
  %mul71.i = fmul double %39, %41, !dbg !549
  %sub.i61 = fsub double %mul70.i, %mul71.i, !dbg !549
  %arrayidx73.i = getelementptr inbounds double* %y0, i64 %idxprom66.i, !dbg !549
  store double %sub.i61, double* %arrayidx73.i, align 8, !dbg !549, !tbaa !486
  %mul74.i = fmul double %38, %41, !dbg !549
  %mul75.i = fmul double %39, %40, !dbg !549
  %add76.i = fadd double %mul75.i, %mul74.i, !dbg !549
  %arrayidx78.i = getelementptr inbounds double* %y0, i64 %idxprom68.i, !dbg !549
  store double %add76.i, double* %arrayidx78.i, align 8, !dbg !549, !tbaa !486
  %add79.i = add nsw i32 %kk53.0271.i, 2, !dbg !550
  call void @llvm.dbg.value(metadata !{i32 %add79.i}, i64 0, metadata !551) #5, !dbg !550
  %inc80.i = add nsw i32 %irowA52.0272.i, 1, !dbg !550
  call void @llvm.dbg.value(metadata !{i32 %inc80.i}, i64 0, metadata !552) #5, !dbg !550
  %add81.i = add nsw i32 %rloc.0270.i, 2, !dbg !550
  call void @llvm.dbg.value(metadata !{i32 %add81.i}, i64 0, metadata !553) #5, !dbg !550
  %add82.i = add nsw i32 %iloc.0274.i, 2, !dbg !550
  call void @llvm.dbg.value(metadata !{i32 %add82.i}, i64 0, metadata !554) #5, !dbg !550
  br label %for.inc163.i, !dbg !555

if.then87.i:                                      ; preds = %for.body56.i
  %idxprom90.i = sext i32 %kk53.0271.i to i64, !dbg !515
  call void @llvm.dbg.value(metadata !{double** %entries.i}, i64 0, metadata !513) #5, !dbg !515
  %arrayidx91.i = getelementptr inbounds double* %24, i64 %idxprom90.i, !dbg !515
  %42 = load double* %arrayidx91.i, align 8, !dbg !515, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %42}, i64 0, metadata !556) #5, !dbg !515
  %add92.i = add nsw i32 %kk53.0271.i, 1, !dbg !515
  %idxprom93.i = sext i32 %add92.i to i64, !dbg !515
  %arrayidx94.i = getelementptr inbounds double* %24, i64 %idxprom93.i, !dbg !515
  %43 = load double* %arrayidx94.i, align 8, !dbg !515, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %43}, i64 0, metadata !557) #5, !dbg !515
  %add95.i = add nsw i32 %kk53.0271.i, 2, !dbg !558
  %idxprom96.i = sext i32 %add95.i to i64, !dbg !558
  %arrayidx97.i = getelementptr inbounds double* %24, i64 %idxprom96.i, !dbg !558
  %44 = load double* %arrayidx97.i, align 8, !dbg !558, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %44}, i64 0, metadata !559) #5, !dbg !558
  %add98.i = add nsw i32 %kk53.0271.i, 3, !dbg !558
  %idxprom99.i = sext i32 %add98.i to i64, !dbg !558
  %arrayidx100.i = getelementptr inbounds double* %24, i64 %idxprom99.i, !dbg !558
  %45 = load double* %arrayidx100.i, align 8, !dbg !558, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %45}, i64 0, metadata !560) #5, !dbg !558
  %add101.i = add nsw i32 %kk53.0271.i, 4, !dbg !561
  %idxprom102.i = sext i32 %add101.i to i64, !dbg !561
  %arrayidx103.i = getelementptr inbounds double* %24, i64 %idxprom102.i, !dbg !561
  %46 = load double* %arrayidx103.i, align 8, !dbg !561, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %46}, i64 0, metadata !562) #5, !dbg !561
  %add104.i = add nsw i32 %kk53.0271.i, 5, !dbg !561
  %idxprom105.i = sext i32 %add104.i to i64, !dbg !561
  %arrayidx106.i = getelementptr inbounds double* %24, i64 %idxprom105.i, !dbg !561
  %47 = load double* %arrayidx106.i, align 8, !dbg !561, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %47}, i64 0, metadata !563) #5, !dbg !561
  call void @llvm.dbg.value(metadata !{i32 %rloc.0270.i}, i64 0, metadata !564) #5, !dbg !565
  call void @llvm.dbg.value(metadata !{i32 %iloc.0274.i}, i64 0, metadata !566) #5, !dbg !565
  %add107.i = add nsw i32 %rloc.0270.i, 2, !dbg !567
  call void @llvm.dbg.value(metadata !{i32 %add107.i}, i64 0, metadata !568) #5, !dbg !567
  %add108.i = add nsw i32 %iloc.0274.i, 2, !dbg !567
  call void @llvm.dbg.value(metadata !{i32 %add108.i}, i64 0, metadata !569) #5, !dbg !567
  %idxprom109.i = sext i32 %rloc.0270.i to i64, !dbg !570
  %arrayidx110.i = getelementptr inbounds double* %x0, i64 %idxprom109.i, !dbg !570
  %48 = load double* %arrayidx110.i, align 8, !dbg !570, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %48}, i64 0, metadata !571) #5, !dbg !570
  %idxprom111.i = sext i32 %iloc.0274.i to i64, !dbg !570
  %arrayidx112.i = getelementptr inbounds double* %x0, i64 %idxprom111.i, !dbg !570
  %49 = load double* %arrayidx112.i, align 8, !dbg !570, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %49}, i64 0, metadata !572) #5, !dbg !570
  %idxprom113.i = sext i32 %add107.i to i64, !dbg !573
  %arrayidx114.i = getelementptr inbounds double* %x0, i64 %idxprom113.i, !dbg !573
  %50 = load double* %arrayidx114.i, align 8, !dbg !573, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %50}, i64 0, metadata !574) #5, !dbg !573
  %idxprom115.i = sext i32 %add108.i to i64, !dbg !573
  %arrayidx116.i = getelementptr inbounds double* %x0, i64 %idxprom115.i, !dbg !573
  %51 = load double* %arrayidx116.i, align 8, !dbg !573, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %51}, i64 0, metadata !575) #5, !dbg !573
  %mul117.i = fmul double %42, %48, !dbg !576
  %mul118.i = fmul double %43, %49, !dbg !576
  %sub119.i = fsub double %mul117.i, %mul118.i, !dbg !576
  %mul120.i = fmul double %44, %50, !dbg !576
  %add121.i = fadd double %sub119.i, %mul120.i, !dbg !576
  %mul122.i = fmul double %45, %51, !dbg !576
  %sub123.i = fsub double %add121.i, %mul122.i, !dbg !576
  %arrayidx125.i = getelementptr inbounds double* %y0, i64 %idxprom109.i, !dbg !576
  store double %sub123.i, double* %arrayidx125.i, align 8, !dbg !576, !tbaa !486
  %mul126.i = fmul double %42, %49, !dbg !577
  %mul127.i = fmul double %43, %48, !dbg !577
  %add128.i = fadd double %mul127.i, %mul126.i, !dbg !577
  %mul129.i = fmul double %44, %51, !dbg !577
  %add130.i = fadd double %add128.i, %mul129.i, !dbg !577
  %mul131.i = fmul double %45, %50, !dbg !577
  %add132.i = fadd double %mul131.i, %add130.i, !dbg !577
  %arrayidx134.i = getelementptr inbounds double* %y0, i64 %idxprom111.i, !dbg !577
  store double %add132.i, double* %arrayidx134.i, align 8, !dbg !577, !tbaa !486
  %mul135.i = fmul double %44, %48, !dbg !578
  %mul136.i = fmul double %45, %49, !dbg !578
  %sub137.i = fsub double %mul135.i, %mul136.i, !dbg !578
  %mul138.i = fmul double %46, %50, !dbg !578
  %add139.i = fadd double %sub137.i, %mul138.i, !dbg !578
  %mul140.i = fmul double %47, %51, !dbg !578
  %sub141.i = fsub double %add139.i, %mul140.i, !dbg !578
  %arrayidx143.i = getelementptr inbounds double* %y0, i64 %idxprom113.i, !dbg !578
  store double %sub141.i, double* %arrayidx143.i, align 8, !dbg !578, !tbaa !486
  %mul144.i = fmul double %44, %49, !dbg !579
  %mul145.i = fmul double %45, %48, !dbg !579
  %add146.i = fadd double %mul145.i, %mul144.i, !dbg !579
  %mul147.i = fmul double %46, %51, !dbg !579
  %add148.i = fadd double %add146.i, %mul147.i, !dbg !579
  %mul149.i = fmul double %47, %50, !dbg !579
  %add150.i = fadd double %mul149.i, %add148.i, !dbg !579
  %arrayidx152.i = getelementptr inbounds double* %y0, i64 %idxprom115.i, !dbg !579
  store double %add150.i, double* %arrayidx152.i, align 8, !dbg !579, !tbaa !486
  %add153.i = add nsw i32 %kk53.0271.i, 6, !dbg !580
  call void @llvm.dbg.value(metadata !{i32 %add153.i}, i64 0, metadata !551) #5, !dbg !580
  %add154.i = add nsw i32 %irowA52.0272.i, 2, !dbg !580
  call void @llvm.dbg.value(metadata !{i32 %add154.i}, i64 0, metadata !552) #5, !dbg !580
  %add155.i = add nsw i32 %rloc.0270.i, 4, !dbg !580
  call void @llvm.dbg.value(metadata !{i32 %add155.i}, i64 0, metadata !553) #5, !dbg !580
  %add156.i = add nsw i32 %iloc.0274.i, 4, !dbg !580
  call void @llvm.dbg.value(metadata !{i32 %add156.i}, i64 0, metadata !554) #5, !dbg !580
  br label %for.inc163.i

if.else157.i:                                     ; preds = %for.body56.i
  %52 = load %struct._IO_FILE** @stderr, align 8, !dbg !581, !tbaa !454
  %call160.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([57 x i8]* @.str12, i64 0, i64 0), i32 %ipivot51.0273.i, i32 %37) #6, !dbg !581
  call void @exit(i32 -1) #7, !dbg !583
  unreachable, !dbg !583

for.inc163.i:                                     ; preds = %if.then87.i, %if.then60.i
  %rloc.1.i = phi i32 [ %add81.i, %if.then60.i ], [ %add155.i, %if.then87.i ]
  %kk53.1.i = phi i32 [ %add79.i, %if.then60.i ], [ %add153.i, %if.then87.i ]
  %irowA52.1.i = phi i32 [ %inc80.i, %if.then60.i ], [ %add154.i, %if.then87.i ]
  %iloc.1.i = phi i32 [ %add82.i, %if.then60.i ], [ %add156.i, %if.then87.i ]
  %indvars.iv.next281.i = add i64 %indvars.iv280.i, 1, !dbg !510
  %inc164.i = add nsw i32 %ipivot51.0273.i, 1, !dbg !584
  call void @llvm.dbg.value(metadata !{i32 %inc164.i}, i64 0, metadata !585) #5, !dbg !584
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i46}, i64 0, metadata !509) #5, !dbg !510
  %cmp55.i = icmp slt i32 %irowA52.1.i, %22, !dbg !510
  br i1 %cmp55.i, label %for.body56.i, label %sw.epilog, !dbg !510

sw.bb13:                                          ; preds = %if.end11
  %cmp15 = icmp eq i32 %1, 2, !dbg !586
  br i1 %cmp15, label %if.end19, label %if.then16, !dbg !586

if.then16:                                        ; preds = %sw.bb13
  %53 = load %struct._IO_FILE** @stderr, align 8, !dbg !587, !tbaa !454
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([95 x i8]* @.str2, i64 0, i64 0), %struct._SubMtx* %mtxA, double* %y0, double* %x0, i32 %1) #6, !dbg !587
  call void @exit(i32 -1) #7, !dbg !589
  unreachable, !dbg !589

if.end19:                                         ; preds = %sw.bb13
  %54 = bitcast double** %entries.i62 to i8*, !dbg !590
  call void @llvm.lifetime.start(i64 8, i8* %54) #5, !dbg !590
  %55 = bitcast i32* %nentA.i63 to i8*, !dbg !590
  call void @llvm.lifetime.start(i64 4, i8* %55) #5, !dbg !590
  %56 = bitcast i32* %nrowA.i64 to i8*, !dbg !590
  call void @llvm.lifetime.start(i64 4, i8* %56) #5, !dbg !590
  %57 = bitcast i32** %pivotsizes.i65 to i8*, !dbg !590
  call void @llvm.lifetime.start(i64 8, i8* %57) #5, !dbg !590
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !592) #5, !dbg !590
  call void @llvm.dbg.value(metadata !{double* %y0}, i64 0, metadata !593) #5, !dbg !594
  call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !595) #5, !dbg !596
  call void @llvm.dbg.declare(metadata !{double** %entries.i62}, metadata !65) #5, !dbg !597
  call void @llvm.dbg.declare(metadata !{i32* %nentA.i63}, metadata !70) #5, !dbg !598
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i64}, metadata !71) #5, !dbg !598
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes.i65}, metadata !73) #5, !dbg !599
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i64, i32* %nentA.i63, i32** %pivotsizes.i65, double** %entries.i62) #6, !dbg !600
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !601) #5, !dbg !602
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !603) #5, !dbg !602
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !604) #5, !dbg !602
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !605) #5, !dbg !602
  call void @llvm.dbg.value(metadata !606, i64 0, metadata !607) #5, !dbg !602
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i64}, i64 0, metadata !608) #5, !dbg !602
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i64}, i64 0, metadata !71), !dbg !602
  %58 = load i32* %nrowA.i64, align 4, !dbg !602, !tbaa !459
  %cmp143.i = icmp sgt i32 %58, 0, !dbg !602
  br i1 %cmp143.i, label %for.body.lr.ph.i66, label %sw.epilog, !dbg !602

for.body.lr.ph.i66:                               ; preds = %if.end19
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i65}, i64 0, metadata !609) #5, !dbg !610
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i65}, i64 0, metadata !73), !dbg !610
  %59 = load i32** %pivotsizes.i65, align 8, !dbg !610, !tbaa !454
  call void @llvm.dbg.value(metadata !{double** %entries.i62}, i64 0, metadata !611) #5, !dbg !612
  call void @llvm.dbg.value(metadata !{double** %entries.i62}, i64 0, metadata !65), !dbg !612
  %60 = load double** %entries.i62, align 8, !dbg !612, !tbaa !454
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i64}, i64 0, metadata !608) #5, !dbg !602
  call void @llvm.dbg.value(metadata !{double** %entries.i62}, i64 0, metadata !611) #5, !dbg !613
  br label %for.body.i69, !dbg !602

for.body.i69:                                     ; preds = %for.inc.i89, %for.body.lr.ph.i66
  %indvars.iv.i67 = phi i64 [ 0, %for.body.lr.ph.i66 ], [ %indvars.iv.next.i88, %for.inc.i89 ]
  %iloc.0148.i = phi i32 [ 1, %for.body.lr.ph.i66 ], [ %iloc.1.i87, %for.inc.i89 ]
  %ipivot.0147.i = phi i32 [ 0, %for.body.lr.ph.i66 ], [ %inc84.i, %for.inc.i89 ]
  %irowA.0146.i = phi i32 [ 0, %for.body.lr.ph.i66 ], [ %irowA.1.i86, %for.inc.i89 ]
  %kk.0145.i = phi i32 [ 0, %for.body.lr.ph.i66 ], [ %kk.1.i85, %for.inc.i89 ]
  %rloc.0144.i = phi i32 [ 0, %for.body.lr.ph.i66 ], [ %rloc.1.i84, %for.inc.i89 ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i65}, i64 0, metadata !609) #5, !dbg !610
  %arrayidx.i68 = getelementptr inbounds i32* %59, i64 %indvars.iv.i67, !dbg !610
  %61 = load i32* %arrayidx.i68, align 4, !dbg !610, !tbaa !459
  switch i32 %61, label %if.else80.i [
    i32 1, label %if.then.i
    i32 2, label %if.then22.i
  ], !dbg !610

if.then.i:                                        ; preds = %for.body.i69
  %idxprom2.i = sext i32 %kk.0145.i to i64, !dbg !612
  call void @llvm.dbg.value(metadata !{double** %entries.i62}, i64 0, metadata !611) #5, !dbg !612
  %arrayidx3.i70 = getelementptr inbounds double* %60, i64 %idxprom2.i, !dbg !612
  %62 = load double* %arrayidx3.i70, align 8, !dbg !612, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %62}, i64 0, metadata !614) #5, !dbg !612
  call void @llvm.dbg.value(metadata !615, i64 0, metadata !616) #5, !dbg !612
  %inc4.i = add nsw i32 %kk.0145.i, 2, !dbg !612
  call void @llvm.dbg.value(metadata !{i32 %inc4.i}, i64 0, metadata !603) #5, !dbg !612
  %idxprom5.i = sext i32 %rloc.0144.i to i64, !dbg !617
  %arrayidx6.i = getelementptr inbounds double* %x0, i64 %idxprom5.i, !dbg !617
  %63 = load double* %arrayidx6.i, align 8, !dbg !617, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %63}, i64 0, metadata !618) #5, !dbg !617
  %idxprom7.i = sext i32 %iloc.0148.i to i64, !dbg !617
  %arrayidx8.i = getelementptr inbounds double* %x0, i64 %idxprom7.i, !dbg !617
  %64 = load double* %arrayidx8.i, align 8, !dbg !617, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %64}, i64 0, metadata !619) #5, !dbg !617
  %mul.i71 = fmul double %62, %63, !dbg !620
  %mul9.i = fmul double %64, 0.000000e+00, !dbg !620
  %sub.i72 = fsub double %mul.i71, %mul9.i, !dbg !620
  %arrayidx11.i = getelementptr inbounds double* %y0, i64 %idxprom5.i, !dbg !620
  store double %sub.i72, double* %arrayidx11.i, align 8, !dbg !620, !tbaa !486
  %mul12.i = fmul double %62, %64, !dbg !620
  %mul13.i = fmul double %63, 0.000000e+00, !dbg !620
  %add.i73 = fadd double %mul13.i, %mul12.i, !dbg !620
  %arrayidx15.i = getelementptr inbounds double* %y0, i64 %idxprom7.i, !dbg !620
  store double %add.i73, double* %arrayidx15.i, align 8, !dbg !620, !tbaa !486
  %inc16.i = add nsw i32 %irowA.0146.i, 1, !dbg !621
  call void @llvm.dbg.value(metadata !{i32 %inc16.i}, i64 0, metadata !605) #5, !dbg !621
  %add17.i = add nsw i32 %rloc.0144.i, 2, !dbg !621
  call void @llvm.dbg.value(metadata !{i32 %add17.i}, i64 0, metadata !601) #5, !dbg !621
  %add18.i = add nsw i32 %iloc.0148.i, 2, !dbg !621
  call void @llvm.dbg.value(metadata !{i32 %add18.i}, i64 0, metadata !607) #5, !dbg !621
  br label %for.inc.i89, !dbg !622

if.then22.i:                                      ; preds = %for.body.i69
  call void @llvm.dbg.value(metadata !{i32 %rloc.0144.i}, i64 0, metadata !623) #5, !dbg !624
  call void @llvm.dbg.value(metadata !{i32 %iloc.0148.i}, i64 0, metadata !625) #5, !dbg !624
  %add25.i = add nsw i32 %rloc.0144.i, 2, !dbg !626
  call void @llvm.dbg.value(metadata !{i32 %add25.i}, i64 0, metadata !627) #5, !dbg !626
  %add26.i74 = add nsw i32 %iloc.0148.i, 2, !dbg !626
  call void @llvm.dbg.value(metadata !{i32 %add26.i74}, i64 0, metadata !628) #5, !dbg !626
  %idxprom28.i = sext i32 %kk.0145.i to i64, !dbg !613
  call void @llvm.dbg.value(metadata !{double** %entries.i62}, i64 0, metadata !611) #5, !dbg !613
  %arrayidx29.i = getelementptr inbounds double* %60, i64 %idxprom28.i, !dbg !613
  %65 = load double* %arrayidx29.i, align 8, !dbg !613, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %65}, i64 0, metadata !629) #5, !dbg !613
  call void @llvm.dbg.value(metadata !615, i64 0, metadata !630) #5, !dbg !613
  %inc30.i75 = add nsw i32 %kk.0145.i, 2, !dbg !613
  call void @llvm.dbg.value(metadata !{i32 %inc30.i75}, i64 0, metadata !603) #5, !dbg !613
  %inc31.i = add nsw i32 %kk.0145.i, 3, !dbg !631
  call void @llvm.dbg.value(metadata !{i32 %inc31.i}, i64 0, metadata !603) #5, !dbg !631
  %idxprom32.i = sext i32 %inc30.i75 to i64, !dbg !631
  %arrayidx33.i76 = getelementptr inbounds double* %60, i64 %idxprom32.i, !dbg !631
  %66 = load double* %arrayidx33.i76, align 8, !dbg !631, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %66}, i64 0, metadata !632) #5, !dbg !631
  %inc34.i = add nsw i32 %kk.0145.i, 4, !dbg !631
  call void @llvm.dbg.value(metadata !{i32 %inc34.i}, i64 0, metadata !603) #5, !dbg !631
  %idxprom35.i = sext i32 %inc31.i to i64, !dbg !631
  %arrayidx36.i = getelementptr inbounds double* %60, i64 %idxprom35.i, !dbg !631
  %67 = load double* %arrayidx36.i, align 8, !dbg !631, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %67}, i64 0, metadata !633) #5, !dbg !631
  %idxprom38.i = sext i32 %inc34.i to i64, !dbg !634
  %arrayidx39.i77 = getelementptr inbounds double* %60, i64 %idxprom38.i, !dbg !634
  %68 = load double* %arrayidx39.i77, align 8, !dbg !634, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %68}, i64 0, metadata !635) #5, !dbg !634
  call void @llvm.dbg.value(metadata !615, i64 0, metadata !636) #5, !dbg !634
  %inc40.i = add nsw i32 %kk.0145.i, 6, !dbg !634
  call void @llvm.dbg.value(metadata !{i32 %inc40.i}, i64 0, metadata !603) #5, !dbg !634
  %idxprom41.i = sext i32 %rloc.0144.i to i64, !dbg !637
  %arrayidx42.i = getelementptr inbounds double* %x0, i64 %idxprom41.i, !dbg !637
  %69 = load double* %arrayidx42.i, align 8, !dbg !637, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %69}, i64 0, metadata !638) #5, !dbg !637
  %idxprom43.i = sext i32 %iloc.0148.i to i64, !dbg !637
  %arrayidx44.i = getelementptr inbounds double* %x0, i64 %idxprom43.i, !dbg !637
  %70 = load double* %arrayidx44.i, align 8, !dbg !637, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %70}, i64 0, metadata !639) #5, !dbg !637
  %idxprom45.i = sext i32 %add25.i to i64, !dbg !640
  %arrayidx46.i = getelementptr inbounds double* %x0, i64 %idxprom45.i, !dbg !640
  %71 = load double* %arrayidx46.i, align 8, !dbg !640, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %71}, i64 0, metadata !641) #5, !dbg !640
  %idxprom47.i = sext i32 %add26.i74 to i64, !dbg !640
  %arrayidx48.i = getelementptr inbounds double* %x0, i64 %idxprom47.i, !dbg !640
  %72 = load double* %arrayidx48.i, align 8, !dbg !640, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %72}, i64 0, metadata !642) #5, !dbg !640
  %mul49.i = fmul double %65, %69, !dbg !643
  %mul50.i = fmul double %66, %71, !dbg !643
  %add51.i = fadd double %mul49.i, %mul50.i, !dbg !643
  %mul52.i = fmul double %67, %72, !dbg !643
  %sub53.i = fsub double %add51.i, %mul52.i, !dbg !643
  %arrayidx55.i = getelementptr inbounds double* %y0, i64 %idxprom41.i, !dbg !643
  store double %sub53.i, double* %arrayidx55.i, align 8, !dbg !643, !tbaa !486
  %mul56.i = fmul double %65, %70, !dbg !644
  %mul57.i = fmul double %66, %72, !dbg !644
  %add58.i = fadd double %mul56.i, %mul57.i, !dbg !644
  %mul59.i = fmul double %67, %71, !dbg !644
  %add60.i = fadd double %mul59.i, %add58.i, !dbg !644
  %arrayidx62.i78 = getelementptr inbounds double* %y0, i64 %idxprom43.i, !dbg !644
  store double %add60.i, double* %arrayidx62.i78, align 8, !dbg !644, !tbaa !486
  %mul63.i = fmul double %66, %69, !dbg !645
  %mul64.i = fmul double %67, %70, !dbg !645
  %add65.i = fadd double %mul63.i, %mul64.i, !dbg !645
  %mul66.i = fmul double %68, %71, !dbg !645
  %add67.i = fadd double %add65.i, %mul66.i, !dbg !645
  %arrayidx69.i79 = getelementptr inbounds double* %y0, i64 %idxprom45.i, !dbg !645
  store double %add67.i, double* %arrayidx69.i79, align 8, !dbg !645, !tbaa !486
  %mul70.i80 = fmul double %66, %70, !dbg !646
  %mul71.i81 = fmul double %67, %69, !dbg !646
  %sub72.i = fsub double %mul70.i80, %mul71.i81, !dbg !646
  %mul73.i = fmul double %68, %72, !dbg !646
  %add74.i = fadd double %sub72.i, %mul73.i, !dbg !646
  %arrayidx76.i = getelementptr inbounds double* %y0, i64 %idxprom47.i, !dbg !646
  store double %add74.i, double* %arrayidx76.i, align 8, !dbg !646, !tbaa !486
  %add77.i = add nsw i32 %irowA.0146.i, 2, !dbg !647
  call void @llvm.dbg.value(metadata !{i32 %add77.i}, i64 0, metadata !605) #5, !dbg !647
  %add78.i = add nsw i32 %rloc.0144.i, 4, !dbg !647
  call void @llvm.dbg.value(metadata !{i32 %add78.i}, i64 0, metadata !601) #5, !dbg !647
  %add79.i82 = add nsw i32 %iloc.0148.i, 4, !dbg !647
  call void @llvm.dbg.value(metadata !{i32 %add79.i82}, i64 0, metadata !607) #5, !dbg !647
  br label %for.inc.i89

if.else80.i:                                      ; preds = %for.body.i69
  %73 = load %struct._IO_FILE** @stderr, align 8, !dbg !648, !tbaa !454
  %call.i83 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([57 x i8]* @.str12, i64 0, i64 0), i32 %ipivot.0147.i, i32 %61) #6, !dbg !648
  call void @exit(i32 -1) #7, !dbg !650
  unreachable, !dbg !650

for.inc.i89:                                      ; preds = %if.then22.i, %if.then.i
  %rloc.1.i84 = phi i32 [ %add17.i, %if.then.i ], [ %add78.i, %if.then22.i ]
  %kk.1.i85 = phi i32 [ %inc4.i, %if.then.i ], [ %inc40.i, %if.then22.i ]
  %irowA.1.i86 = phi i32 [ %inc16.i, %if.then.i ], [ %add77.i, %if.then22.i ]
  %iloc.1.i87 = phi i32 [ %add18.i, %if.then.i ], [ %add79.i82, %if.then22.i ]
  %indvars.iv.next.i88 = add i64 %indvars.iv.i67, 1, !dbg !602
  %inc84.i = add nsw i32 %ipivot.0147.i, 1, !dbg !651
  call void @llvm.dbg.value(metadata !{i32 %inc84.i}, i64 0, metadata !604) #5, !dbg !651
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i64}, i64 0, metadata !608) #5, !dbg !602
  %cmp.i = icmp slt i32 %irowA.1.i86, %58, !dbg !602
  br i1 %cmp.i, label %for.body.i69, label %sw.epilog, !dbg !602

sw.default:                                       ; preds = %if.end11
  %74 = load %struct._IO_FILE** @stderr, align 8, !dbg !652, !tbaa !454
  %75 = call i64 @fwrite(i8* getelementptr inbounds ([161 x i8]* @.str3, i64 0, i64 0), i64 160, i64 1, %struct._IO_FILE* %74), !dbg !652
  call void @exit(i32 -1) #7, !dbg !653
  unreachable, !dbg !653

sw.epilog:                                        ; preds = %for.inc.i89, %for.inc163.i, %for.inc.i, %for.body12.i, %for.body.i, %if.end19, %for.cond.preheader.i48, %for.cond54.preheader.i, %sw.bb12, %for.cond.preheader.i, %for.cond10.preheader.i, %sw.bb
  ret void, !dbg !654
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_scale2vec(%struct._SubMtx* %mtxA, double* %y0, double* %y1, double* %x0, double* %x1) #0 {
entry:
  %entries.i80 = alloca double*, align 8
  %nentA.i81 = alloca i32, align 4
  %nrowA.i82 = alloca i32, align 4
  %pivotsizes.i83 = alloca i32*, align 8
  %entries.i = alloca double*, align 8
  %nentA.i = alloca i32, align 4
  %nrowA.i64 = alloca i32, align 4
  %pivotsizes.i = alloca i32*, align 8
  %entriesA.i = alloca double*, align 8
  %nrowA.i = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !44), !dbg !655
  call void @llvm.dbg.value(metadata !{double* %y0}, i64 0, metadata !45), !dbg !656
  call void @llvm.dbg.value(metadata !{double* %y1}, i64 0, metadata !46), !dbg !657
  call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !47), !dbg !658
  call void @llvm.dbg.value(metadata !{double* %x1}, i64 0, metadata !48), !dbg !659
  %cmp = icmp eq %struct._SubMtx* %mtxA, null, !dbg !660
  %cmp1 = icmp eq double* %y0, null, !dbg !660
  %or.cond = or i1 %cmp, %cmp1, !dbg !660
  %cmp3 = icmp eq double* %y1, null, !dbg !660
  %or.cond61 = or i1 %or.cond, %cmp3, !dbg !660
  %cmp5 = icmp eq double* %x0, null, !dbg !660
  %or.cond62 = or i1 %or.cond61, %cmp5, !dbg !660
  %cmp7 = icmp eq double* %x1, null, !dbg !660
  %or.cond63 = or i1 %or.cond62, %cmp7, !dbg !660
  br i1 %or.cond63, label %if.then, label %if.end, !dbg !660

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !661, !tbaa !454
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([62 x i8]* @.str4, i64 0, i64 0), %struct._SubMtx* %mtxA, double* %y0, double* %y1, double* %x0, double* %x1) #6, !dbg !661
  call void @exit(i32 -1) #7, !dbg !663
  unreachable, !dbg !663

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 0, !dbg !664
  %1 = load i32* %type, align 4, !dbg !664, !tbaa !459
  %.off = add i32 %1, -1, !dbg !664
  %switch = icmp ult i32 %.off, 2, !dbg !664
  br i1 %switch, label %if.end15, label %if.then12, !dbg !664

if.then12:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !665, !tbaa !454
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([105 x i8]* @.str5, i64 0, i64 0), %struct._SubMtx* %mtxA, double* %y0, double* %y1, double* %x0, double* %x1, i32 %1) #6, !dbg !665
  call void @exit(i32 -1) #7, !dbg !667
  unreachable, !dbg !667

if.end15:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 1, !dbg !668
  %3 = load i32* %mode, align 4, !dbg !668, !tbaa !459
  switch i32 %3, label %sw.default [
    i32 7, label %sw.bb
    i32 8, label %sw.bb16
    i32 9, label %sw.bb17
  ], !dbg !668

sw.bb:                                            ; preds = %if.end15
  %4 = bitcast double** %entriesA.i to i8*, !dbg !669
  call void @llvm.lifetime.start(i64 8, i8* %4) #5, !dbg !669
  %5 = bitcast i32* %nrowA.i to i8*, !dbg !669
  call void @llvm.lifetime.start(i64 4, i8* %5) #5, !dbg !669
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !672) #5, !dbg !669
  call void @llvm.dbg.value(metadata !{double* %y0}, i64 0, metadata !673) #5, !dbg !674
  call void @llvm.dbg.value(metadata !{double* %y1}, i64 0, metadata !675) #5, !dbg !676
  call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !677) #5, !dbg !678
  call void @llvm.dbg.value(metadata !{double* %x1}, i64 0, metadata !679) #5, !dbg !680
  call void @llvm.dbg.declare(metadata !{double** %entriesA.i}, metadata !407) #5, !dbg !681
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i}, metadata !408) #5, !dbg !682
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i, double** %entriesA.i) #6, !dbg !683
  %6 = load i32* %type, align 4, !dbg !684, !tbaa !459
  switch i32 %6, label %sw.epilog [
    i32 1, label %for.cond.preheader.i
    i32 2, label %for.cond15.preheader.i
  ], !dbg !684

for.cond15.preheader.i:                           ; preds = %sw.bb
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !685) #5, !dbg !686
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !408), !dbg !686
  %7 = load i32* %nrowA.i, align 4, !dbg !686, !tbaa !459
  %cmp1695.i = icmp sgt i32 %7, 0, !dbg !686
  br i1 %cmp1695.i, label %for.body17.lr.ph.i, label %sw.epilog, !dbg !686

for.body17.lr.ph.i:                               ; preds = %for.cond15.preheader.i
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !688) #5, !dbg !689
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !407), !dbg !689
  %8 = load double** %entriesA.i, align 8, !dbg !689, !tbaa !454
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !685) #5, !dbg !686
  br label %for.body17.i, !dbg !686

for.cond.preheader.i:                             ; preds = %sw.bb
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !685) #5, !dbg !691
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !408), !dbg !691
  %9 = load i32* %nrowA.i, align 4, !dbg !691, !tbaa !459
  %cmp192.i = icmp sgt i32 %9, 0, !dbg !691
  br i1 %cmp192.i, label %for.body.lr.ph.i, label %sw.epilog, !dbg !691

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !688) #5, !dbg !693
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !407), !dbg !693
  %10 = load double** %entriesA.i, align 8, !dbg !693, !tbaa !454
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !685) #5, !dbg !691
  br label %for.body.i, !dbg !691

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !688) #5, !dbg !693
  %arrayidx.i = getelementptr inbounds double* %10, i64 %indvars.iv.i, !dbg !693
  %11 = load double* %arrayidx.i, align 8, !dbg !693, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %11}, i64 0, metadata !695) #5, !dbg !693
  %arrayidx3.i = getelementptr inbounds double* %x0, i64 %indvars.iv.i, !dbg !696
  %12 = load double* %arrayidx3.i, align 8, !dbg !696, !tbaa !486
  %mul.i = fmul double %11, %12, !dbg !696
  %arrayidx5.i = getelementptr inbounds double* %y0, i64 %indvars.iv.i, !dbg !696
  store double %mul.i, double* %arrayidx5.i, align 8, !dbg !696, !tbaa !486
  %arrayidx7.i = getelementptr inbounds double* %x1, i64 %indvars.iv.i, !dbg !697
  %13 = load double* %arrayidx7.i, align 8, !dbg !697, !tbaa !486
  %mul8.i = fmul double %11, %13, !dbg !697
  %arrayidx10.i = getelementptr inbounds double* %y1, i64 %indvars.iv.i, !dbg !697
  store double %mul8.i, double* %arrayidx10.i, align 8, !dbg !697, !tbaa !486
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !691
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !685) #5, !dbg !691
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32, !dbg !691
  %exitcond = icmp eq i32 %lftr.wideiv, %9, !dbg !691
  br i1 %exitcond, label %sw.epilog, label %for.body.i, !dbg !691

for.body17.i:                                     ; preds = %for.body17.i, %for.body17.lr.ph.i
  %indvars.iv101.i = phi i64 [ 1, %for.body17.lr.ph.i ], [ %indvars.iv.next102.i, %for.body17.i ], !dbg !686
  %indvars.iv99.i = phi i64 [ 0, %for.body17.lr.ph.i ], [ %indvars.iv.next100.i, %for.body17.i ]
  %irowA14.097.i = phi i32 [ 0, %for.body17.lr.ph.i ], [ %inc49.i, %for.body17.i ]
  %arrayidx19.i = getelementptr inbounds double* %x0, i64 %indvars.iv99.i, !dbg !698
  %14 = load double* %arrayidx19.i, align 8, !dbg !698, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %14}, i64 0, metadata !699) #5, !dbg !698
  %arrayidx21.i = getelementptr inbounds double* %x0, i64 %indvars.iv101.i, !dbg !698
  %15 = load double* %arrayidx21.i, align 8, !dbg !698, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %15}, i64 0, metadata !700) #5, !dbg !698
  %arrayidx23.i = getelementptr inbounds double* %x1, i64 %indvars.iv99.i, !dbg !701
  %16 = load double* %arrayidx23.i, align 8, !dbg !701, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %16}, i64 0, metadata !702) #5, !dbg !701
  %arrayidx25.i = getelementptr inbounds double* %x1, i64 %indvars.iv101.i, !dbg !701
  %17 = load double* %arrayidx25.i, align 8, !dbg !701, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %17}, i64 0, metadata !703) #5, !dbg !701
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !688) #5, !dbg !689
  %arrayidx27.i = getelementptr inbounds double* %8, i64 %indvars.iv99.i, !dbg !689
  %18 = load double* %arrayidx27.i, align 8, !dbg !689, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %18}, i64 0, metadata !704) #5, !dbg !689
  %arrayidx29.i = getelementptr inbounds double* %8, i64 %indvars.iv101.i, !dbg !689
  %19 = load double* %arrayidx29.i, align 8, !dbg !689, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %19}, i64 0, metadata !705) #5, !dbg !689
  %mul30.i = fmul double %14, %18, !dbg !706
  %mul31.i = fmul double %15, %19, !dbg !706
  %sub.i = fsub double %mul30.i, %mul31.i, !dbg !706
  %arrayidx33.i = getelementptr inbounds double* %y0, i64 %indvars.iv99.i, !dbg !706
  store double %sub.i, double* %arrayidx33.i, align 8, !dbg !706, !tbaa !486
  %mul34.i = fmul double %15, %18, !dbg !706
  %mul35.i = fmul double %14, %19, !dbg !706
  %add.i = fadd double %mul34.i, %mul35.i, !dbg !706
  %arrayidx37.i = getelementptr inbounds double* %y0, i64 %indvars.iv101.i, !dbg !706
  store double %add.i, double* %arrayidx37.i, align 8, !dbg !706, !tbaa !486
  %mul38.i = fmul double %16, %18, !dbg !707
  %mul39.i = fmul double %17, %19, !dbg !707
  %sub40.i = fsub double %mul38.i, %mul39.i, !dbg !707
  %arrayidx42.i = getelementptr inbounds double* %y1, i64 %indvars.iv99.i, !dbg !707
  store double %sub40.i, double* %arrayidx42.i, align 8, !dbg !707, !tbaa !486
  %mul43.i = fmul double %17, %18, !dbg !707
  %mul44.i = fmul double %16, %19, !dbg !707
  %add45.i = fadd double %mul43.i, %mul44.i, !dbg !707
  %arrayidx47.i = getelementptr inbounds double* %y1, i64 %indvars.iv101.i, !dbg !707
  store double %add45.i, double* %arrayidx47.i, align 8, !dbg !707, !tbaa !486
  %inc49.i = add nsw i32 %irowA14.097.i, 1, !dbg !708
  call void @llvm.dbg.value(metadata !{i32 %inc49.i}, i64 0, metadata !709) #5, !dbg !708
  %indvars.iv.next100.i = add i64 %indvars.iv99.i, 2, !dbg !686
  %indvars.iv.next102.i = add i64 %indvars.iv101.i, 2, !dbg !686
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !685) #5, !dbg !686
  %exitcond124 = icmp eq i32 %inc49.i, %7, !dbg !686
  br i1 %exitcond124, label %sw.epilog, label %for.body17.i, !dbg !686

sw.bb16:                                          ; preds = %if.end15
  %20 = bitcast double** %entries.i to i8*, !dbg !710
  call void @llvm.lifetime.start(i64 8, i8* %20) #5, !dbg !710
  %21 = bitcast i32* %nentA.i to i8*, !dbg !710
  call void @llvm.lifetime.start(i64 4, i8* %21) #5, !dbg !710
  %22 = bitcast i32* %nrowA.i64 to i8*, !dbg !710
  call void @llvm.lifetime.start(i64 4, i8* %22) #5, !dbg !710
  %23 = bitcast i32** %pivotsizes.i to i8*, !dbg !710
  call void @llvm.lifetime.start(i64 8, i8* %23) #5, !dbg !710
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !712) #5, !dbg !710
  call void @llvm.dbg.value(metadata !{double* %y0}, i64 0, metadata !713) #5, !dbg !714
  call void @llvm.dbg.value(metadata !{double* %y1}, i64 0, metadata !715) #5, !dbg !716
  call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !717) #5, !dbg !718
  call void @llvm.dbg.value(metadata !{double* %x1}, i64 0, metadata !719) #5, !dbg !720
  call void @llvm.dbg.declare(metadata !{double** %entries.i}, metadata !252) #5, !dbg !721
  call void @llvm.dbg.declare(metadata !{i32* %nentA.i}, metadata !253) #5, !dbg !722
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i64}, metadata !254) #5, !dbg !722
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes.i}, metadata !255) #5, !dbg !723
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i64, i32* %nentA.i, i32** %pivotsizes.i, double** %entries.i) #6, !dbg !724
  %24 = load i32* %type, align 4, !dbg !725, !tbaa !459
  switch i32 %24, label %sw.epilog [
    i32 1, label %for.cond.preheader.i66
    i32 2, label %for.cond76.preheader.i
  ], !dbg !725

for.cond76.preheader.i:                           ; preds = %sw.bb16
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i64}, i64 0, metadata !726) #5, !dbg !727
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i64}, i64 0, metadata !254), !dbg !727
  %25 = load i32* %nrowA.i64, align 4, !dbg !727, !tbaa !459
  %cmp77424.i = icmp sgt i32 %25, 0, !dbg !727
  br i1 %cmp77424.i, label %for.body78.lr.ph.i, label %sw.epilog, !dbg !727

for.body78.lr.ph.i:                               ; preds = %for.cond76.preheader.i
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i}, i64 0, metadata !728) #5, !dbg !729
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i}, i64 0, metadata !255), !dbg !729
  %26 = load i32** %pivotsizes.i, align 8, !dbg !729, !tbaa !454
  call void @llvm.dbg.value(metadata !{double** %entries.i}, i64 0, metadata !730) #5, !dbg !731
  call void @llvm.dbg.value(metadata !{double** %entries.i}, i64 0, metadata !252), !dbg !731
  %27 = load double** %entries.i, align 8, !dbg !731, !tbaa !454
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i64}, i64 0, metadata !726) #5, !dbg !727
  call void @llvm.dbg.value(metadata !{double** %entries.i}, i64 0, metadata !730) #5, !dbg !732
  br label %for.body78.i, !dbg !727

for.cond.preheader.i66:                           ; preds = %sw.bb16
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i64}, i64 0, metadata !726) #5, !dbg !733
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i64}, i64 0, metadata !254), !dbg !733
  %28 = load i32* %nrowA.i64, align 4, !dbg !733, !tbaa !459
  %cmp1417.i = icmp sgt i32 %28, 0, !dbg !733
  br i1 %cmp1417.i, label %for.body.lr.ph.i67, label %sw.epilog, !dbg !733

for.body.lr.ph.i67:                               ; preds = %for.cond.preheader.i66
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i}, i64 0, metadata !728) #5, !dbg !734
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i}, i64 0, metadata !255), !dbg !734
  %29 = load i32** %pivotsizes.i, align 8, !dbg !734, !tbaa !454
  call void @llvm.dbg.value(metadata !{double** %entries.i}, i64 0, metadata !730) #5, !dbg !735
  call void @llvm.dbg.value(metadata !{double** %entries.i}, i64 0, metadata !252), !dbg !735
  %30 = load double** %entries.i, align 8, !dbg !735, !tbaa !454
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i64}, i64 0, metadata !726) #5, !dbg !733
  call void @llvm.dbg.value(metadata !{double** %entries.i}, i64 0, metadata !730) #5, !dbg !736
  br label %for.body.i70, !dbg !733

for.body.i70:                                     ; preds = %for.inc.i, %for.body.lr.ph.i67
  %indvars.iv.i68 = phi i64 [ 0, %for.body.lr.ph.i67 ], [ %indvars.iv.next.i77, %for.inc.i ]
  %ipivot.0420.i = phi i32 [ 0, %for.body.lr.ph.i67 ], [ %inc68.i, %for.inc.i ]
  %irowA.0419.i = phi i32 [ 0, %for.body.lr.ph.i67 ], [ %irowA.1.i, %for.inc.i ]
  %kk.0418.i = phi i32 [ 0, %for.body.lr.ph.i67 ], [ %kk.1.i, %for.inc.i ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i}, i64 0, metadata !728) #5, !dbg !734
  %arrayidx.i69 = getelementptr inbounds i32* %29, i64 %indvars.iv.i68, !dbg !734
  %31 = load i32* %arrayidx.i69, align 4, !dbg !734, !tbaa !459
  switch i32 %31, label %if.else64.i [
    i32 1, label %if.then3.i
    i32 2, label %if.then19.i
  ], !dbg !734

if.then3.i:                                       ; preds = %for.body.i70
  %idxprom4.i = sext i32 %kk.0418.i to i64, !dbg !735
  call void @llvm.dbg.value(metadata !{double** %entries.i}, i64 0, metadata !730) #5, !dbg !735
  %arrayidx5.i71 = getelementptr inbounds double* %30, i64 %idxprom4.i, !dbg !735
  %32 = load double* %arrayidx5.i71, align 8, !dbg !735, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %32}, i64 0, metadata !737) #5, !dbg !735
  %idxprom6.i = sext i32 %irowA.0419.i to i64, !dbg !738
  %arrayidx7.i72 = getelementptr inbounds double* %x0, i64 %idxprom6.i, !dbg !738
  %33 = load double* %arrayidx7.i72, align 8, !dbg !738, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %33}, i64 0, metadata !739) #5, !dbg !738
  %arrayidx9.i = getelementptr inbounds double* %x1, i64 %idxprom6.i, !dbg !740
  %34 = load double* %arrayidx9.i, align 8, !dbg !740, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %34}, i64 0, metadata !741) #5, !dbg !740
  %mul.i73 = fmul double %32, %33, !dbg !742
  %arrayidx11.i = getelementptr inbounds double* %y0, i64 %idxprom6.i, !dbg !742
  store double %mul.i73, double* %arrayidx11.i, align 8, !dbg !742, !tbaa !486
  %mul12.i = fmul double %32, %34, !dbg !743
  %arrayidx14.i = getelementptr inbounds double* %y1, i64 %idxprom6.i, !dbg !743
  store double %mul12.i, double* %arrayidx14.i, align 8, !dbg !743, !tbaa !486
  %inc.i = add nsw i32 %kk.0418.i, 1, !dbg !744
  call void @llvm.dbg.value(metadata !{i32 %inc.i}, i64 0, metadata !745) #5, !dbg !744
  %inc15.i = add nsw i32 %irowA.0419.i, 1, !dbg !744
  call void @llvm.dbg.value(metadata !{i32 %inc15.i}, i64 0, metadata !746) #5, !dbg !744
  br label %for.inc.i, !dbg !747

if.then19.i:                                      ; preds = %for.body.i70
  %idxprom23.i = sext i32 %kk.0418.i to i64, !dbg !736
  call void @llvm.dbg.value(metadata !{double** %entries.i}, i64 0, metadata !730) #5, !dbg !736
  %arrayidx24.i = getelementptr inbounds double* %30, i64 %idxprom23.i, !dbg !736
  %35 = load double* %arrayidx24.i, align 8, !dbg !736, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %35}, i64 0, metadata !748) #5, !dbg !736
  %add.i74 = add nsw i32 %kk.0418.i, 1, !dbg !749
  %idxprom25.i = sext i32 %add.i74 to i64, !dbg !749
  %arrayidx26.i = getelementptr inbounds double* %30, i64 %idxprom25.i, !dbg !749
  %36 = load double* %arrayidx26.i, align 8, !dbg !749, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %36}, i64 0, metadata !750) #5, !dbg !749
  %add27.i = add nsw i32 %kk.0418.i, 2, !dbg !751
  %idxprom28.i = sext i32 %add27.i to i64, !dbg !751
  %arrayidx29.i75 = getelementptr inbounds double* %30, i64 %idxprom28.i, !dbg !751
  %37 = load double* %arrayidx29.i75, align 8, !dbg !751, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %37}, i64 0, metadata !752) #5, !dbg !751
  %idxprom30.i = sext i32 %irowA.0419.i to i64, !dbg !753
  %arrayidx31.i = getelementptr inbounds double* %x0, i64 %idxprom30.i, !dbg !753
  %38 = load double* %arrayidx31.i, align 8, !dbg !753, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %38}, i64 0, metadata !754) #5, !dbg !753
  %arrayidx33.i76 = getelementptr inbounds double* %x1, i64 %idxprom30.i, !dbg !755
  %39 = load double* %arrayidx33.i76, align 8, !dbg !755, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %39}, i64 0, metadata !756) #5, !dbg !755
  %add34.i = add nsw i32 %irowA.0419.i, 1, !dbg !757
  %idxprom35.i = sext i32 %add34.i to i64, !dbg !757
  %arrayidx36.i = getelementptr inbounds double* %x0, i64 %idxprom35.i, !dbg !757
  %40 = load double* %arrayidx36.i, align 8, !dbg !757, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %40}, i64 0, metadata !758) #5, !dbg !757
  %arrayidx39.i = getelementptr inbounds double* %x1, i64 %idxprom35.i, !dbg !759
  %41 = load double* %arrayidx39.i, align 8, !dbg !759, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %41}, i64 0, metadata !760) #5, !dbg !759
  %mul40.i = fmul double %35, %38, !dbg !761
  %mul41.i = fmul double %36, %40, !dbg !761
  %add42.i = fadd double %mul40.i, %mul41.i, !dbg !761
  %arrayidx44.i = getelementptr inbounds double* %y0, i64 %idxprom30.i, !dbg !761
  store double %add42.i, double* %arrayidx44.i, align 8, !dbg !761, !tbaa !486
  %mul45.i = fmul double %35, %39, !dbg !762
  %mul46.i = fmul double %36, %41, !dbg !762
  %add47.i = fadd double %mul45.i, %mul46.i, !dbg !762
  %arrayidx49.i = getelementptr inbounds double* %y1, i64 %idxprom30.i, !dbg !762
  store double %add47.i, double* %arrayidx49.i, align 8, !dbg !762, !tbaa !486
  %mul50.i = fmul double %36, %38, !dbg !763
  %mul51.i = fmul double %37, %40, !dbg !763
  %add52.i = fadd double %mul50.i, %mul51.i, !dbg !763
  %arrayidx55.i = getelementptr inbounds double* %y0, i64 %idxprom35.i, !dbg !763
  store double %add52.i, double* %arrayidx55.i, align 8, !dbg !763, !tbaa !486
  %mul56.i = fmul double %36, %39, !dbg !764
  %mul57.i = fmul double %37, %41, !dbg !764
  %add58.i = fadd double %mul56.i, %mul57.i, !dbg !764
  %arrayidx61.i = getelementptr inbounds double* %y1, i64 %idxprom35.i, !dbg !764
  store double %add58.i, double* %arrayidx61.i, align 8, !dbg !764, !tbaa !486
  %add62.i = add nsw i32 %kk.0418.i, 3, !dbg !765
  call void @llvm.dbg.value(metadata !{i32 %add62.i}, i64 0, metadata !745) #5, !dbg !765
  %add63.i = add nsw i32 %irowA.0419.i, 2, !dbg !765
  call void @llvm.dbg.value(metadata !{i32 %add63.i}, i64 0, metadata !746) #5, !dbg !765
  br label %for.inc.i

if.else64.i:                                      ; preds = %for.body.i70
  %42 = load %struct._IO_FILE** @stderr, align 8, !dbg !766, !tbaa !454
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0), i32 %ipivot.0420.i, i32 %31) #6, !dbg !766
  call void @exit(i32 -1) #7, !dbg !768
  unreachable, !dbg !768

for.inc.i:                                        ; preds = %if.then19.i, %if.then3.i
  %kk.1.i = phi i32 [ %inc.i, %if.then3.i ], [ %add62.i, %if.then19.i ]
  %irowA.1.i = phi i32 [ %inc15.i, %if.then3.i ], [ %add63.i, %if.then19.i ]
  %indvars.iv.next.i77 = add i64 %indvars.iv.i68, 1, !dbg !733
  %inc68.i = add nsw i32 %ipivot.0420.i, 1, !dbg !733
  call void @llvm.dbg.value(metadata !{i32 %inc68.i}, i64 0, metadata !769) #5, !dbg !733
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i64}, i64 0, metadata !726) #5, !dbg !733
  %cmp1.i78 = icmp slt i32 %irowA.1.i, %28, !dbg !733
  br i1 %cmp1.i78, label %for.body.i70, label %sw.epilog, !dbg !733

for.body78.i:                                     ; preds = %for.inc243.i, %for.body78.lr.ph.i
  %indvars.iv435.i = phi i64 [ 0, %for.body78.lr.ph.i ], [ %indvars.iv.next436.i, %for.inc243.i ]
  %iloc.0429.i = phi i32 [ 1, %for.body78.lr.ph.i ], [ %iloc.1.i, %for.inc243.i ]
  %ipivot73.0428.i = phi i32 [ 0, %for.body78.lr.ph.i ], [ %inc244.i, %for.inc243.i ]
  %irowA74.0427.i = phi i32 [ 0, %for.body78.lr.ph.i ], [ %irowA74.1.i, %for.inc243.i ]
  %kk75.0426.i = phi i32 [ 0, %for.body78.lr.ph.i ], [ %kk75.1.i, %for.inc243.i ]
  %rloc.0425.i = phi i32 [ 0, %for.body78.lr.ph.i ], [ %rloc.1.i, %for.inc243.i ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i}, i64 0, metadata !728) #5, !dbg !729
  %arrayidx80.i = getelementptr inbounds i32* %26, i64 %indvars.iv435.i, !dbg !729
  %43 = load i32* %arrayidx80.i, align 4, !dbg !729, !tbaa !459
  switch i32 %43, label %if.else237.i [
    i32 1, label %if.then82.i
    i32 2, label %if.then123.i
  ], !dbg !729

if.then82.i:                                      ; preds = %for.body78.i
  %idxprom83.i = sext i32 %kk75.0426.i to i64, !dbg !731
  call void @llvm.dbg.value(metadata !{double** %entries.i}, i64 0, metadata !730) #5, !dbg !731
  %arrayidx84.i = getelementptr inbounds double* %27, i64 %idxprom83.i, !dbg !731
  %44 = load double* %arrayidx84.i, align 8, !dbg !731, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %44}, i64 0, metadata !770) #5, !dbg !731
  %add85.i = add nsw i32 %kk75.0426.i, 1, !dbg !731
  %idxprom86.i = sext i32 %add85.i to i64, !dbg !731
  %arrayidx87.i = getelementptr inbounds double* %27, i64 %idxprom86.i, !dbg !731
  %45 = load double* %arrayidx87.i, align 8, !dbg !731, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %45}, i64 0, metadata !771) #5, !dbg !731
  %idxprom88.i = sext i32 %rloc.0425.i to i64, !dbg !772
  %arrayidx89.i = getelementptr inbounds double* %x0, i64 %idxprom88.i, !dbg !772
  %46 = load double* %arrayidx89.i, align 8, !dbg !772, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %46}, i64 0, metadata !773) #5, !dbg !772
  %idxprom90.i = sext i32 %iloc.0429.i to i64, !dbg !772
  %arrayidx91.i = getelementptr inbounds double* %x0, i64 %idxprom90.i, !dbg !772
  %47 = load double* %arrayidx91.i, align 8, !dbg !772, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %47}, i64 0, metadata !774) #5, !dbg !772
  %arrayidx93.i = getelementptr inbounds double* %x1, i64 %idxprom88.i, !dbg !775
  %48 = load double* %arrayidx93.i, align 8, !dbg !775, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %48}, i64 0, metadata !776) #5, !dbg !775
  %arrayidx95.i = getelementptr inbounds double* %x1, i64 %idxprom90.i, !dbg !775
  %49 = load double* %arrayidx95.i, align 8, !dbg !775, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %49}, i64 0, metadata !777) #5, !dbg !775
  %mul96.i = fmul double %44, %46, !dbg !778
  %mul97.i = fmul double %45, %47, !dbg !778
  %sub.i79 = fsub double %mul96.i, %mul97.i, !dbg !778
  %arrayidx99.i = getelementptr inbounds double* %y0, i64 %idxprom88.i, !dbg !778
  store double %sub.i79, double* %arrayidx99.i, align 8, !dbg !778, !tbaa !486
  %mul100.i = fmul double %44, %47, !dbg !778
  %mul101.i = fmul double %45, %46, !dbg !778
  %add102.i = fadd double %mul101.i, %mul100.i, !dbg !778
  %arrayidx104.i = getelementptr inbounds double* %y0, i64 %idxprom90.i, !dbg !778
  store double %add102.i, double* %arrayidx104.i, align 8, !dbg !778, !tbaa !486
  %mul105.i = fmul double %44, %48, !dbg !779
  %mul106.i = fmul double %45, %49, !dbg !779
  %sub107.i = fsub double %mul105.i, %mul106.i, !dbg !779
  %arrayidx109.i = getelementptr inbounds double* %y1, i64 %idxprom88.i, !dbg !779
  store double %sub107.i, double* %arrayidx109.i, align 8, !dbg !779, !tbaa !486
  %mul110.i = fmul double %44, %49, !dbg !779
  %mul111.i = fmul double %45, %48, !dbg !779
  %add112.i = fadd double %mul111.i, %mul110.i, !dbg !779
  %arrayidx114.i = getelementptr inbounds double* %y1, i64 %idxprom90.i, !dbg !779
  store double %add112.i, double* %arrayidx114.i, align 8, !dbg !779, !tbaa !486
  %add115.i = add nsw i32 %kk75.0426.i, 2, !dbg !780
  call void @llvm.dbg.value(metadata !{i32 %add115.i}, i64 0, metadata !781) #5, !dbg !780
  %inc116.i = add nsw i32 %irowA74.0427.i, 1, !dbg !780
  call void @llvm.dbg.value(metadata !{i32 %inc116.i}, i64 0, metadata !782) #5, !dbg !780
  %add117.i = add nsw i32 %rloc.0425.i, 2, !dbg !780
  call void @llvm.dbg.value(metadata !{i32 %add117.i}, i64 0, metadata !783) #5, !dbg !780
  %add118.i = add nsw i32 %iloc.0429.i, 2, !dbg !780
  call void @llvm.dbg.value(metadata !{i32 %add118.i}, i64 0, metadata !784) #5, !dbg !780
  br label %for.inc243.i, !dbg !785

if.then123.i:                                     ; preds = %for.body78.i
  %idxprom126.i = sext i32 %kk75.0426.i to i64, !dbg !732
  call void @llvm.dbg.value(metadata !{double** %entries.i}, i64 0, metadata !730) #5, !dbg !732
  %arrayidx127.i = getelementptr inbounds double* %27, i64 %idxprom126.i, !dbg !732
  %50 = load double* %arrayidx127.i, align 8, !dbg !732, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %50}, i64 0, metadata !786) #5, !dbg !732
  %add128.i = add nsw i32 %kk75.0426.i, 1, !dbg !732
  %idxprom129.i = sext i32 %add128.i to i64, !dbg !732
  %arrayidx130.i = getelementptr inbounds double* %27, i64 %idxprom129.i, !dbg !732
  %51 = load double* %arrayidx130.i, align 8, !dbg !732, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %51}, i64 0, metadata !787) #5, !dbg !732
  %add131.i = add nsw i32 %kk75.0426.i, 2, !dbg !788
  %idxprom132.i = sext i32 %add131.i to i64, !dbg !788
  %arrayidx133.i = getelementptr inbounds double* %27, i64 %idxprom132.i, !dbg !788
  %52 = load double* %arrayidx133.i, align 8, !dbg !788, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %52}, i64 0, metadata !789) #5, !dbg !788
  %add134.i = add nsw i32 %kk75.0426.i, 3, !dbg !788
  %idxprom135.i = sext i32 %add134.i to i64, !dbg !788
  %arrayidx136.i = getelementptr inbounds double* %27, i64 %idxprom135.i, !dbg !788
  %53 = load double* %arrayidx136.i, align 8, !dbg !788, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %53}, i64 0, metadata !790) #5, !dbg !788
  %add137.i = add nsw i32 %kk75.0426.i, 4, !dbg !791
  %idxprom138.i = sext i32 %add137.i to i64, !dbg !791
  %arrayidx139.i = getelementptr inbounds double* %27, i64 %idxprom138.i, !dbg !791
  %54 = load double* %arrayidx139.i, align 8, !dbg !791, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %54}, i64 0, metadata !792) #5, !dbg !791
  %add140.i = add nsw i32 %kk75.0426.i, 5, !dbg !791
  %idxprom141.i = sext i32 %add140.i to i64, !dbg !791
  %arrayidx142.i = getelementptr inbounds double* %27, i64 %idxprom141.i, !dbg !791
  %55 = load double* %arrayidx142.i, align 8, !dbg !791, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %55}, i64 0, metadata !793) #5, !dbg !791
  call void @llvm.dbg.value(metadata !{i32 %rloc.0425.i}, i64 0, metadata !794) #5, !dbg !795
  call void @llvm.dbg.value(metadata !{i32 %iloc.0429.i}, i64 0, metadata !796) #5, !dbg !795
  %add143.i = add nsw i32 %rloc.0425.i, 2, !dbg !797
  call void @llvm.dbg.value(metadata !{i32 %add143.i}, i64 0, metadata !798) #5, !dbg !797
  %add144.i = add nsw i32 %iloc.0429.i, 2, !dbg !797
  call void @llvm.dbg.value(metadata !{i32 %add144.i}, i64 0, metadata !799) #5, !dbg !797
  %idxprom145.i = sext i32 %rloc.0425.i to i64, !dbg !800
  %arrayidx146.i = getelementptr inbounds double* %x0, i64 %idxprom145.i, !dbg !800
  %56 = load double* %arrayidx146.i, align 8, !dbg !800, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %56}, i64 0, metadata !801) #5, !dbg !800
  %idxprom147.i = sext i32 %iloc.0429.i to i64, !dbg !800
  %arrayidx148.i = getelementptr inbounds double* %x0, i64 %idxprom147.i, !dbg !800
  %57 = load double* %arrayidx148.i, align 8, !dbg !800, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %57}, i64 0, metadata !802) #5, !dbg !800
  %arrayidx150.i = getelementptr inbounds double* %x1, i64 %idxprom145.i, !dbg !803
  %58 = load double* %arrayidx150.i, align 8, !dbg !803, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %58}, i64 0, metadata !804) #5, !dbg !803
  %arrayidx152.i = getelementptr inbounds double* %x1, i64 %idxprom147.i, !dbg !803
  %59 = load double* %arrayidx152.i, align 8, !dbg !803, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %59}, i64 0, metadata !805) #5, !dbg !803
  %idxprom153.i = sext i32 %add143.i to i64, !dbg !806
  %arrayidx154.i = getelementptr inbounds double* %x0, i64 %idxprom153.i, !dbg !806
  %60 = load double* %arrayidx154.i, align 8, !dbg !806, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %60}, i64 0, metadata !807) #5, !dbg !806
  %idxprom155.i = sext i32 %add144.i to i64, !dbg !806
  %arrayidx156.i = getelementptr inbounds double* %x0, i64 %idxprom155.i, !dbg !806
  %61 = load double* %arrayidx156.i, align 8, !dbg !806, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %61}, i64 0, metadata !808) #5, !dbg !806
  %arrayidx158.i = getelementptr inbounds double* %x1, i64 %idxprom153.i, !dbg !809
  %62 = load double* %arrayidx158.i, align 8, !dbg !809, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %62}, i64 0, metadata !810) #5, !dbg !809
  %arrayidx160.i = getelementptr inbounds double* %x1, i64 %idxprom155.i, !dbg !809
  %63 = load double* %arrayidx160.i, align 8, !dbg !809, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %63}, i64 0, metadata !811) #5, !dbg !809
  %mul161.i = fmul double %50, %56, !dbg !812
  %mul162.i = fmul double %51, %57, !dbg !812
  %sub163.i = fsub double %mul161.i, %mul162.i, !dbg !812
  %mul164.i = fmul double %52, %60, !dbg !812
  %add165.i = fadd double %sub163.i, %mul164.i, !dbg !812
  %mul166.i = fmul double %53, %61, !dbg !812
  %sub167.i = fsub double %add165.i, %mul166.i, !dbg !812
  %arrayidx169.i = getelementptr inbounds double* %y0, i64 %idxprom145.i, !dbg !812
  store double %sub167.i, double* %arrayidx169.i, align 8, !dbg !812, !tbaa !486
  %mul170.i = fmul double %50, %57, !dbg !813
  %mul171.i = fmul double %51, %56, !dbg !813
  %add172.i = fadd double %mul171.i, %mul170.i, !dbg !813
  %mul173.i = fmul double %52, %61, !dbg !813
  %add174.i = fadd double %add172.i, %mul173.i, !dbg !813
  %mul175.i = fmul double %53, %60, !dbg !813
  %add176.i = fadd double %mul175.i, %add174.i, !dbg !813
  %arrayidx178.i = getelementptr inbounds double* %y0, i64 %idxprom147.i, !dbg !813
  store double %add176.i, double* %arrayidx178.i, align 8, !dbg !813, !tbaa !486
  %mul179.i = fmul double %50, %58, !dbg !814
  %mul180.i = fmul double %51, %59, !dbg !814
  %sub181.i = fsub double %mul179.i, %mul180.i, !dbg !814
  %mul182.i = fmul double %52, %62, !dbg !814
  %add183.i = fadd double %sub181.i, %mul182.i, !dbg !814
  %mul184.i = fmul double %53, %63, !dbg !814
  %sub185.i = fsub double %add183.i, %mul184.i, !dbg !814
  %arrayidx187.i = getelementptr inbounds double* %y1, i64 %idxprom145.i, !dbg !814
  store double %sub185.i, double* %arrayidx187.i, align 8, !dbg !814, !tbaa !486
  %mul188.i = fmul double %50, %59, !dbg !815
  %mul189.i = fmul double %51, %58, !dbg !815
  %add190.i = fadd double %mul189.i, %mul188.i, !dbg !815
  %mul191.i = fmul double %52, %63, !dbg !815
  %add192.i = fadd double %add190.i, %mul191.i, !dbg !815
  %mul193.i = fmul double %53, %62, !dbg !815
  %add194.i = fadd double %mul193.i, %add192.i, !dbg !815
  %arrayidx196.i = getelementptr inbounds double* %y1, i64 %idxprom147.i, !dbg !815
  store double %add194.i, double* %arrayidx196.i, align 8, !dbg !815, !tbaa !486
  %mul197.i = fmul double %52, %56, !dbg !816
  %mul198.i = fmul double %53, %57, !dbg !816
  %sub199.i = fsub double %mul197.i, %mul198.i, !dbg !816
  %mul200.i = fmul double %54, %60, !dbg !816
  %add201.i = fadd double %sub199.i, %mul200.i, !dbg !816
  %mul202.i = fmul double %55, %61, !dbg !816
  %sub203.i = fsub double %add201.i, %mul202.i, !dbg !816
  %arrayidx205.i = getelementptr inbounds double* %y0, i64 %idxprom153.i, !dbg !816
  store double %sub203.i, double* %arrayidx205.i, align 8, !dbg !816, !tbaa !486
  %mul206.i = fmul double %52, %57, !dbg !817
  %mul207.i = fmul double %53, %56, !dbg !817
  %add208.i = fadd double %mul207.i, %mul206.i, !dbg !817
  %mul209.i = fmul double %54, %61, !dbg !817
  %add210.i = fadd double %add208.i, %mul209.i, !dbg !817
  %mul211.i = fmul double %55, %60, !dbg !817
  %add212.i = fadd double %mul211.i, %add210.i, !dbg !817
  %arrayidx214.i = getelementptr inbounds double* %y0, i64 %idxprom155.i, !dbg !817
  store double %add212.i, double* %arrayidx214.i, align 8, !dbg !817, !tbaa !486
  %mul215.i = fmul double %52, %58, !dbg !818
  %mul216.i = fmul double %53, %59, !dbg !818
  %sub217.i = fsub double %mul215.i, %mul216.i, !dbg !818
  %mul218.i = fmul double %54, %62, !dbg !818
  %add219.i = fadd double %sub217.i, %mul218.i, !dbg !818
  %mul220.i = fmul double %55, %63, !dbg !818
  %sub221.i = fsub double %add219.i, %mul220.i, !dbg !818
  %arrayidx223.i = getelementptr inbounds double* %y1, i64 %idxprom153.i, !dbg !818
  store double %sub221.i, double* %arrayidx223.i, align 8, !dbg !818, !tbaa !486
  %mul224.i = fmul double %52, %59, !dbg !819
  %mul225.i = fmul double %53, %58, !dbg !819
  %add226.i = fadd double %mul225.i, %mul224.i, !dbg !819
  %mul227.i = fmul double %54, %63, !dbg !819
  %add228.i = fadd double %add226.i, %mul227.i, !dbg !819
  %mul229.i = fmul double %55, %62, !dbg !819
  %add230.i = fadd double %mul229.i, %add228.i, !dbg !819
  %arrayidx232.i = getelementptr inbounds double* %y1, i64 %idxprom155.i, !dbg !819
  store double %add230.i, double* %arrayidx232.i, align 8, !dbg !819, !tbaa !486
  %add233.i = add nsw i32 %kk75.0426.i, 6, !dbg !820
  call void @llvm.dbg.value(metadata !{i32 %add233.i}, i64 0, metadata !781) #5, !dbg !820
  %add234.i = add nsw i32 %irowA74.0427.i, 2, !dbg !820
  call void @llvm.dbg.value(metadata !{i32 %add234.i}, i64 0, metadata !782) #5, !dbg !820
  %add235.i = add nsw i32 %rloc.0425.i, 4, !dbg !820
  call void @llvm.dbg.value(metadata !{i32 %add235.i}, i64 0, metadata !783) #5, !dbg !820
  %add236.i = add nsw i32 %iloc.0429.i, 4, !dbg !820
  call void @llvm.dbg.value(metadata !{i32 %add236.i}, i64 0, metadata !784) #5, !dbg !820
  br label %for.inc243.i

if.else237.i:                                     ; preds = %for.body78.i
  %64 = load %struct._IO_FILE** @stderr, align 8, !dbg !821, !tbaa !454
  %call240.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([57 x i8]* @.str13, i64 0, i64 0), i32 %ipivot73.0428.i, i32 %43) #6, !dbg !821
  call void @exit(i32 -1) #7, !dbg !823
  unreachable, !dbg !823

for.inc243.i:                                     ; preds = %if.then123.i, %if.then82.i
  %rloc.1.i = phi i32 [ %add117.i, %if.then82.i ], [ %add235.i, %if.then123.i ]
  %kk75.1.i = phi i32 [ %add115.i, %if.then82.i ], [ %add233.i, %if.then123.i ]
  %irowA74.1.i = phi i32 [ %inc116.i, %if.then82.i ], [ %add234.i, %if.then123.i ]
  %iloc.1.i = phi i32 [ %add118.i, %if.then82.i ], [ %add236.i, %if.then123.i ]
  %indvars.iv.next436.i = add i64 %indvars.iv435.i, 1, !dbg !727
  %inc244.i = add nsw i32 %ipivot73.0428.i, 1, !dbg !824
  call void @llvm.dbg.value(metadata !{i32 %inc244.i}, i64 0, metadata !825) #5, !dbg !824
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i64}, i64 0, metadata !726) #5, !dbg !727
  %cmp77.i = icmp slt i32 %irowA74.1.i, %25, !dbg !727
  br i1 %cmp77.i, label %for.body78.i, label %sw.epilog, !dbg !727

sw.bb17:                                          ; preds = %if.end15
  %cmp19 = icmp eq i32 %1, 2, !dbg !826
  br i1 %cmp19, label %if.end23, label %if.then20, !dbg !826

if.then20:                                        ; preds = %sw.bb17
  %65 = load %struct._IO_FILE** @stderr, align 8, !dbg !827, !tbaa !454
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([101 x i8]* @.str6, i64 0, i64 0), %struct._SubMtx* %mtxA, double* %y0, double* %y1, double* %x0, double* %x1, i32 %1) #6, !dbg !827
  call void @exit(i32 -1) #7, !dbg !829
  unreachable, !dbg !829

if.end23:                                         ; preds = %sw.bb17
  %66 = bitcast double** %entries.i80 to i8*, !dbg !830
  call void @llvm.lifetime.start(i64 8, i8* %66) #5, !dbg !830
  %67 = bitcast i32* %nentA.i81 to i8*, !dbg !830
  call void @llvm.lifetime.start(i64 4, i8* %67) #5, !dbg !830
  %68 = bitcast i32* %nrowA.i82 to i8*, !dbg !830
  call void @llvm.lifetime.start(i64 4, i8* %68) #5, !dbg !830
  %69 = bitcast i32** %pivotsizes.i83 to i8*, !dbg !830
  call void @llvm.lifetime.start(i64 8, i8* %69) #5, !dbg !830
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !832) #5, !dbg !830
  call void @llvm.dbg.value(metadata !{double* %y0}, i64 0, metadata !833) #5, !dbg !834
  call void @llvm.dbg.value(metadata !{double* %y1}, i64 0, metadata !835) #5, !dbg !836
  call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !837) #5, !dbg !838
  call void @llvm.dbg.value(metadata !{double* %x1}, i64 0, metadata !839) #5, !dbg !840
  call void @llvm.dbg.declare(metadata !{double** %entries.i80}, metadata !104) #5, !dbg !841
  call void @llvm.dbg.declare(metadata !{i32* %nentA.i81}, metadata !109) #5, !dbg !842
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i82}, metadata !110) #5, !dbg !842
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes.i83}, metadata !112) #5, !dbg !843
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i82, i32* %nentA.i81, i32** %pivotsizes.i83, double** %entries.i80) #6, !dbg !844
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !845) #5, !dbg !846
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !847) #5, !dbg !846
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !848) #5, !dbg !846
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !849) #5, !dbg !846
  call void @llvm.dbg.value(metadata !606, i64 0, metadata !850) #5, !dbg !846
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i82}, i64 0, metadata !851) #5, !dbg !846
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i82}, i64 0, metadata !110), !dbg !846
  %70 = load i32* %nrowA.i82, align 4, !dbg !846, !tbaa !459
  %cmp241.i = icmp sgt i32 %70, 0, !dbg !846
  br i1 %cmp241.i, label %for.body.lr.ph.i84, label %sw.epilog, !dbg !846

for.body.lr.ph.i84:                               ; preds = %if.end23
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i83}, i64 0, metadata !852) #5, !dbg !853
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i83}, i64 0, metadata !112), !dbg !853
  %71 = load i32** %pivotsizes.i83, align 8, !dbg !853, !tbaa !454
  call void @llvm.dbg.value(metadata !{double** %entries.i80}, i64 0, metadata !854) #5, !dbg !855
  call void @llvm.dbg.value(metadata !{double** %entries.i80}, i64 0, metadata !104), !dbg !855
  %72 = load double** %entries.i80, align 8, !dbg !855, !tbaa !454
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i82}, i64 0, metadata !851) #5, !dbg !846
  call void @llvm.dbg.value(metadata !{double** %entries.i80}, i64 0, metadata !854) #5, !dbg !856
  br label %for.body.i87, !dbg !846

for.body.i87:                                     ; preds = %for.inc.i111, %for.body.lr.ph.i84
  %indvars.iv.i85 = phi i64 [ 0, %for.body.lr.ph.i84 ], [ %indvars.iv.next.i110, %for.inc.i111 ]
  %iloc.0246.i = phi i32 [ 1, %for.body.lr.ph.i84 ], [ %iloc.1.i109, %for.inc.i111 ]
  %ipivot.0245.i = phi i32 [ 0, %for.body.lr.ph.i84 ], [ %inc134.i, %for.inc.i111 ]
  %irowA.0244.i = phi i32 [ 0, %for.body.lr.ph.i84 ], [ %irowA.1.i108, %for.inc.i111 ]
  %kk.0243.i = phi i32 [ 0, %for.body.lr.ph.i84 ], [ %kk.1.i107, %for.inc.i111 ]
  %rloc.0242.i = phi i32 [ 0, %for.body.lr.ph.i84 ], [ %rloc.1.i106, %for.inc.i111 ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i83}, i64 0, metadata !852) #5, !dbg !853
  %arrayidx.i86 = getelementptr inbounds i32* %71, i64 %indvars.iv.i85, !dbg !853
  %73 = load i32* %arrayidx.i86, align 4, !dbg !853, !tbaa !459
  switch i32 %73, label %if.else130.i [
    i32 1, label %if.then.i
    i32 2, label %if.then36.i
  ], !dbg !853

if.then.i:                                        ; preds = %for.body.i87
  %idxprom2.i = sext i32 %kk.0243.i to i64, !dbg !855
  call void @llvm.dbg.value(metadata !{double** %entries.i80}, i64 0, metadata !854) #5, !dbg !855
  %arrayidx3.i88 = getelementptr inbounds double* %72, i64 %idxprom2.i, !dbg !855
  %74 = load double* %arrayidx3.i88, align 8, !dbg !855, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %74}, i64 0, metadata !857) #5, !dbg !855
  call void @llvm.dbg.value(metadata !615, i64 0, metadata !858) #5, !dbg !855
  %inc4.i = add nsw i32 %kk.0243.i, 2, !dbg !855
  call void @llvm.dbg.value(metadata !{i32 %inc4.i}, i64 0, metadata !847) #5, !dbg !855
  %idxprom5.i = sext i32 %rloc.0242.i to i64, !dbg !859
  %arrayidx6.i = getelementptr inbounds double* %x0, i64 %idxprom5.i, !dbg !859
  %75 = load double* %arrayidx6.i, align 8, !dbg !859, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %75}, i64 0, metadata !860) #5, !dbg !859
  %idxprom7.i = sext i32 %iloc.0246.i to i64, !dbg !859
  %arrayidx8.i = getelementptr inbounds double* %x0, i64 %idxprom7.i, !dbg !859
  %76 = load double* %arrayidx8.i, align 8, !dbg !859, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %76}, i64 0, metadata !861) #5, !dbg !859
  %arrayidx10.i89 = getelementptr inbounds double* %x1, i64 %idxprom5.i, !dbg !862
  %77 = load double* %arrayidx10.i89, align 8, !dbg !862, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %77}, i64 0, metadata !863) #5, !dbg !862
  %arrayidx12.i = getelementptr inbounds double* %x1, i64 %idxprom7.i, !dbg !862
  %78 = load double* %arrayidx12.i, align 8, !dbg !862, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %78}, i64 0, metadata !864) #5, !dbg !862
  %mul.i90 = fmul double %74, %75, !dbg !865
  %mul13.i = fmul double %76, 0.000000e+00, !dbg !865
  %sub.i91 = fsub double %mul.i90, %mul13.i, !dbg !865
  %arrayidx15.i = getelementptr inbounds double* %y0, i64 %idxprom5.i, !dbg !865
  store double %sub.i91, double* %arrayidx15.i, align 8, !dbg !865, !tbaa !486
  %mul16.i = fmul double %74, %76, !dbg !865
  %mul17.i = fmul double %75, 0.000000e+00, !dbg !865
  %add.i92 = fadd double %mul17.i, %mul16.i, !dbg !865
  %arrayidx19.i93 = getelementptr inbounds double* %y0, i64 %idxprom7.i, !dbg !865
  store double %add.i92, double* %arrayidx19.i93, align 8, !dbg !865, !tbaa !486
  %mul20.i = fmul double %74, %77, !dbg !866
  %mul21.i = fmul double %78, 0.000000e+00, !dbg !866
  %sub22.i = fsub double %mul20.i, %mul21.i, !dbg !866
  %arrayidx24.i94 = getelementptr inbounds double* %y1, i64 %idxprom5.i, !dbg !866
  store double %sub22.i, double* %arrayidx24.i94, align 8, !dbg !866, !tbaa !486
  %mul25.i = fmul double %74, %78, !dbg !866
  %mul26.i = fmul double %77, 0.000000e+00, !dbg !866
  %add27.i95 = fadd double %mul26.i, %mul25.i, !dbg !866
  %arrayidx29.i96 = getelementptr inbounds double* %y1, i64 %idxprom7.i, !dbg !866
  store double %add27.i95, double* %arrayidx29.i96, align 8, !dbg !866, !tbaa !486
  %inc30.i = add nsw i32 %irowA.0244.i, 1, !dbg !867
  call void @llvm.dbg.value(metadata !{i32 %inc30.i}, i64 0, metadata !849) #5, !dbg !867
  %add31.i = add nsw i32 %rloc.0242.i, 2, !dbg !867
  call void @llvm.dbg.value(metadata !{i32 %add31.i}, i64 0, metadata !845) #5, !dbg !867
  %add32.i = add nsw i32 %iloc.0246.i, 2, !dbg !867
  call void @llvm.dbg.value(metadata !{i32 %add32.i}, i64 0, metadata !850) #5, !dbg !867
  br label %for.inc.i111, !dbg !868

if.then36.i:                                      ; preds = %for.body.i87
  call void @llvm.dbg.value(metadata !{i32 %rloc.0242.i}, i64 0, metadata !869) #5, !dbg !870
  call void @llvm.dbg.value(metadata !{i32 %iloc.0246.i}, i64 0, metadata !871) #5, !dbg !870
  %add39.i = add nsw i32 %rloc.0242.i, 2, !dbg !872
  call void @llvm.dbg.value(metadata !{i32 %add39.i}, i64 0, metadata !873) #5, !dbg !872
  %add40.i = add nsw i32 %iloc.0246.i, 2, !dbg !872
  call void @llvm.dbg.value(metadata !{i32 %add40.i}, i64 0, metadata !874) #5, !dbg !872
  %idxprom42.i = sext i32 %kk.0243.i to i64, !dbg !856
  call void @llvm.dbg.value(metadata !{double** %entries.i80}, i64 0, metadata !854) #5, !dbg !856
  %arrayidx43.i = getelementptr inbounds double* %72, i64 %idxprom42.i, !dbg !856
  %79 = load double* %arrayidx43.i, align 8, !dbg !856, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %79}, i64 0, metadata !875) #5, !dbg !856
  call void @llvm.dbg.value(metadata !615, i64 0, metadata !876) #5, !dbg !856
  %inc44.i = add nsw i32 %kk.0243.i, 2, !dbg !856
  call void @llvm.dbg.value(metadata !{i32 %inc44.i}, i64 0, metadata !847) #5, !dbg !856
  %inc45.i = add nsw i32 %kk.0243.i, 3, !dbg !877
  call void @llvm.dbg.value(metadata !{i32 %inc45.i}, i64 0, metadata !847) #5, !dbg !877
  %idxprom46.i = sext i32 %inc44.i to i64, !dbg !877
  %arrayidx47.i97 = getelementptr inbounds double* %72, i64 %idxprom46.i, !dbg !877
  %80 = load double* %arrayidx47.i97, align 8, !dbg !877, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %80}, i64 0, metadata !878) #5, !dbg !877
  %inc48.i = add nsw i32 %kk.0243.i, 4, !dbg !877
  call void @llvm.dbg.value(metadata !{i32 %inc48.i}, i64 0, metadata !847) #5, !dbg !877
  %idxprom49.i = sext i32 %inc45.i to i64, !dbg !877
  %arrayidx50.i = getelementptr inbounds double* %72, i64 %idxprom49.i, !dbg !877
  %81 = load double* %arrayidx50.i, align 8, !dbg !877, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %81}, i64 0, metadata !879) #5, !dbg !877
  %idxprom52.i = sext i32 %inc48.i to i64, !dbg !880
  %arrayidx53.i = getelementptr inbounds double* %72, i64 %idxprom52.i, !dbg !880
  %82 = load double* %arrayidx53.i, align 8, !dbg !880, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %82}, i64 0, metadata !881) #5, !dbg !880
  call void @llvm.dbg.value(metadata !615, i64 0, metadata !882) #5, !dbg !880
  %inc54.i = add nsw i32 %kk.0243.i, 6, !dbg !880
  call void @llvm.dbg.value(metadata !{i32 %inc54.i}, i64 0, metadata !847) #5, !dbg !880
  %idxprom55.i = sext i32 %rloc.0242.i to i64, !dbg !883
  %arrayidx56.i = getelementptr inbounds double* %x0, i64 %idxprom55.i, !dbg !883
  %83 = load double* %arrayidx56.i, align 8, !dbg !883, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %83}, i64 0, metadata !884) #5, !dbg !883
  %idxprom57.i = sext i32 %iloc.0246.i to i64, !dbg !883
  %arrayidx58.i = getelementptr inbounds double* %x0, i64 %idxprom57.i, !dbg !883
  %84 = load double* %arrayidx58.i, align 8, !dbg !883, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %84}, i64 0, metadata !885) #5, !dbg !883
  %arrayidx60.i = getelementptr inbounds double* %x1, i64 %idxprom55.i, !dbg !886
  %85 = load double* %arrayidx60.i, align 8, !dbg !886, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %85}, i64 0, metadata !887) #5, !dbg !886
  %arrayidx62.i = getelementptr inbounds double* %x1, i64 %idxprom57.i, !dbg !886
  %86 = load double* %arrayidx62.i, align 8, !dbg !886, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %86}, i64 0, metadata !888) #5, !dbg !886
  %idxprom63.i = sext i32 %add39.i to i64, !dbg !889
  %arrayidx64.i = getelementptr inbounds double* %x0, i64 %idxprom63.i, !dbg !889
  %87 = load double* %arrayidx64.i, align 8, !dbg !889, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %87}, i64 0, metadata !890) #5, !dbg !889
  %idxprom65.i = sext i32 %add40.i to i64, !dbg !889
  %arrayidx66.i = getelementptr inbounds double* %x0, i64 %idxprom65.i, !dbg !889
  %88 = load double* %arrayidx66.i, align 8, !dbg !889, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %88}, i64 0, metadata !891) #5, !dbg !889
  %arrayidx68.i = getelementptr inbounds double* %x1, i64 %idxprom63.i, !dbg !892
  %89 = load double* %arrayidx68.i, align 8, !dbg !892, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %89}, i64 0, metadata !893) #5, !dbg !892
  %arrayidx70.i = getelementptr inbounds double* %x1, i64 %idxprom65.i, !dbg !892
  %90 = load double* %arrayidx70.i, align 8, !dbg !892, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %90}, i64 0, metadata !894) #5, !dbg !892
  %mul71.i = fmul double %79, %83, !dbg !895
  %mul72.i = fmul double %80, %87, !dbg !895
  %add73.i = fadd double %mul71.i, %mul72.i, !dbg !895
  %mul74.i = fmul double %81, %88, !dbg !895
  %sub75.i = fsub double %add73.i, %mul74.i, !dbg !895
  %arrayidx77.i = getelementptr inbounds double* %y0, i64 %idxprom55.i, !dbg !895
  store double %sub75.i, double* %arrayidx77.i, align 8, !dbg !895, !tbaa !486
  %mul78.i = fmul double %79, %84, !dbg !896
  %mul79.i = fmul double %80, %88, !dbg !896
  %add80.i = fadd double %mul78.i, %mul79.i, !dbg !896
  %mul81.i = fmul double %81, %87, !dbg !896
  %add82.i = fadd double %mul81.i, %add80.i, !dbg !896
  %arrayidx84.i98 = getelementptr inbounds double* %y0, i64 %idxprom57.i, !dbg !896
  store double %add82.i, double* %arrayidx84.i98, align 8, !dbg !896, !tbaa !486
  %mul85.i = fmul double %79, %85, !dbg !897
  %mul86.i = fmul double %80, %89, !dbg !897
  %add87.i = fadd double %mul85.i, %mul86.i, !dbg !897
  %mul88.i = fmul double %81, %90, !dbg !897
  %sub89.i = fsub double %add87.i, %mul88.i, !dbg !897
  %arrayidx91.i99 = getelementptr inbounds double* %y1, i64 %idxprom55.i, !dbg !897
  store double %sub89.i, double* %arrayidx91.i99, align 8, !dbg !897, !tbaa !486
  %mul92.i = fmul double %79, %86, !dbg !898
  %mul93.i = fmul double %80, %90, !dbg !898
  %add94.i = fadd double %mul92.i, %mul93.i, !dbg !898
  %mul95.i = fmul double %81, %89, !dbg !898
  %add96.i = fadd double %mul95.i, %add94.i, !dbg !898
  %arrayidx98.i = getelementptr inbounds double* %y1, i64 %idxprom57.i, !dbg !898
  store double %add96.i, double* %arrayidx98.i, align 8, !dbg !898, !tbaa !486
  %mul99.i = fmul double %80, %83, !dbg !899
  %mul100.i100 = fmul double %81, %84, !dbg !899
  %add101.i = fadd double %mul99.i, %mul100.i100, !dbg !899
  %mul102.i = fmul double %82, %87, !dbg !899
  %add103.i = fadd double %add101.i, %mul102.i, !dbg !899
  %arrayidx105.i = getelementptr inbounds double* %y0, i64 %idxprom63.i, !dbg !899
  store double %add103.i, double* %arrayidx105.i, align 8, !dbg !899, !tbaa !486
  %mul106.i101 = fmul double %80, %84, !dbg !900
  %mul107.i = fmul double %81, %83, !dbg !900
  %sub108.i = fsub double %mul106.i101, %mul107.i, !dbg !900
  %mul109.i = fmul double %82, %88, !dbg !900
  %add110.i = fadd double %sub108.i, %mul109.i, !dbg !900
  %arrayidx112.i = getelementptr inbounds double* %y0, i64 %idxprom65.i, !dbg !900
  store double %add110.i, double* %arrayidx112.i, align 8, !dbg !900, !tbaa !486
  %mul113.i = fmul double %80, %85, !dbg !901
  %mul114.i = fmul double %81, %86, !dbg !901
  %add115.i102 = fadd double %mul113.i, %mul114.i, !dbg !901
  %mul116.i = fmul double %82, %89, !dbg !901
  %add117.i103 = fadd double %add115.i102, %mul116.i, !dbg !901
  %arrayidx119.i = getelementptr inbounds double* %y1, i64 %idxprom63.i, !dbg !901
  store double %add117.i103, double* %arrayidx119.i, align 8, !dbg !901, !tbaa !486
  %mul120.i = fmul double %80, %86, !dbg !902
  %mul121.i = fmul double %81, %85, !dbg !902
  %sub122.i = fsub double %mul120.i, %mul121.i, !dbg !902
  %mul123.i = fmul double %82, %90, !dbg !902
  %add124.i = fadd double %sub122.i, %mul123.i, !dbg !902
  %arrayidx126.i = getelementptr inbounds double* %y1, i64 %idxprom65.i, !dbg !902
  store double %add124.i, double* %arrayidx126.i, align 8, !dbg !902, !tbaa !486
  %add127.i = add nsw i32 %irowA.0244.i, 2, !dbg !903
  call void @llvm.dbg.value(metadata !{i32 %add127.i}, i64 0, metadata !849) #5, !dbg !903
  %add128.i104 = add nsw i32 %rloc.0242.i, 4, !dbg !903
  call void @llvm.dbg.value(metadata !{i32 %add128.i104}, i64 0, metadata !845) #5, !dbg !903
  %add129.i = add nsw i32 %iloc.0246.i, 4, !dbg !903
  call void @llvm.dbg.value(metadata !{i32 %add129.i}, i64 0, metadata !850) #5, !dbg !903
  br label %for.inc.i111

if.else130.i:                                     ; preds = %for.body.i87
  %91 = load %struct._IO_FILE** @stderr, align 8, !dbg !904, !tbaa !454
  %call.i105 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([57 x i8]* @.str13, i64 0, i64 0), i32 %ipivot.0245.i, i32 %73) #6, !dbg !904
  call void @exit(i32 -1) #7, !dbg !906
  unreachable, !dbg !906

for.inc.i111:                                     ; preds = %if.then36.i, %if.then.i
  %rloc.1.i106 = phi i32 [ %add31.i, %if.then.i ], [ %add128.i104, %if.then36.i ]
  %kk.1.i107 = phi i32 [ %inc4.i, %if.then.i ], [ %inc54.i, %if.then36.i ]
  %irowA.1.i108 = phi i32 [ %inc30.i, %if.then.i ], [ %add127.i, %if.then36.i ]
  %iloc.1.i109 = phi i32 [ %add32.i, %if.then.i ], [ %add129.i, %if.then36.i ]
  %indvars.iv.next.i110 = add i64 %indvars.iv.i85, 1, !dbg !846
  %inc134.i = add nsw i32 %ipivot.0245.i, 1, !dbg !907
  call void @llvm.dbg.value(metadata !{i32 %inc134.i}, i64 0, metadata !848) #5, !dbg !907
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i82}, i64 0, metadata !851) #5, !dbg !846
  %cmp.i = icmp slt i32 %irowA.1.i108, %70, !dbg !846
  br i1 %cmp.i, label %for.body.i87, label %sw.epilog, !dbg !846

sw.default:                                       ; preds = %if.end15
  %92 = load %struct._IO_FILE** @stderr, align 8, !dbg !908, !tbaa !454
  %93 = call i64 @fwrite(i8* getelementptr inbounds ([161 x i8]* @.str7, i64 0, i64 0), i64 160, i64 1, %struct._IO_FILE* %92), !dbg !908
  call void @exit(i32 -1) #7, !dbg !909
  unreachable, !dbg !909

sw.epilog:                                        ; preds = %for.inc.i111, %for.inc243.i, %for.inc.i, %for.body17.i, %for.body.i, %if.end23, %for.cond.preheader.i66, %for.cond76.preheader.i, %sw.bb16, %for.cond.preheader.i, %for.cond15.preheader.i, %sw.bb
  ret void, !dbg !910
}

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_scale3vec(%struct._SubMtx* %mtxA, double* %y0, double* %y1, double* %y2, double* %x0, double* %x1, double* %x2) #0 {
entry:
  %entries.i101 = alloca double*, align 8
  %nentA.i102 = alloca i32, align 4
  %nrowA.i103 = alloca i32, align 4
  %pivotsizes.i104 = alloca i32*, align 8
  %entries.i = alloca double*, align 8
  %nentA.i = alloca i32, align 4
  %nrowA.i82 = alloca i32, align 4
  %pivotsizes.i = alloca i32*, align 8
  %entriesA.i = alloca double*, align 8
  %nrowA.i = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !53), !dbg !911
  call void @llvm.dbg.value(metadata !{double* %y0}, i64 0, metadata !54), !dbg !912
  call void @llvm.dbg.value(metadata !{double* %y1}, i64 0, metadata !55), !dbg !913
  call void @llvm.dbg.value(metadata !{double* %y2}, i64 0, metadata !56), !dbg !914
  call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !57), !dbg !915
  call void @llvm.dbg.value(metadata !{double* %x1}, i64 0, metadata !58), !dbg !916
  call void @llvm.dbg.value(metadata !{double* %x2}, i64 0, metadata !59), !dbg !917
  %cmp = icmp eq %struct._SubMtx* %mtxA, null, !dbg !918
  %cmp1 = icmp eq double* %y0, null, !dbg !918
  %or.cond = or i1 %cmp, %cmp1, !dbg !918
  %cmp3 = icmp eq double* %y1, null, !dbg !918
  %or.cond77 = or i1 %or.cond, %cmp3, !dbg !918
  %cmp5 = icmp eq double* %y2, null, !dbg !918
  %or.cond78 = or i1 %or.cond77, %cmp5, !dbg !918
  %cmp7 = icmp eq double* %x0, null, !dbg !918
  %or.cond79 = or i1 %or.cond78, %cmp7, !dbg !918
  %cmp9 = icmp eq double* %x1, null, !dbg !918
  %or.cond80 = or i1 %or.cond79, %cmp9, !dbg !918
  %cmp11 = icmp eq double* %x2, null, !dbg !918
  %or.cond81 = or i1 %or.cond80, %cmp11, !dbg !918
  br i1 %or.cond81, label %if.then, label %if.end, !dbg !918

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !919, !tbaa !454
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([68 x i8]* @.str8, i64 0, i64 0), %struct._SubMtx* %mtxA, double* %y0, double* %y1, double* %y2, double* %x0, double* %x1, double* %x2) #6, !dbg !919
  call void @exit(i32 -1) #7, !dbg !921
  unreachable, !dbg !921

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 0, !dbg !922
  %1 = load i32* %type, align 4, !dbg !922, !tbaa !459
  %.off = add i32 %1, -1, !dbg !922
  %switch = icmp ult i32 %.off, 2, !dbg !922
  br i1 %switch, label %if.end19, label %if.then16, !dbg !922

if.then16:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !923, !tbaa !454
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([111 x i8]* @.str9, i64 0, i64 0), %struct._SubMtx* %mtxA, double* %y0, double* %y1, double* %y2, double* %x0, double* %x1, double* %x2, i32 %1) #6, !dbg !923
  call void @exit(i32 -1) #7, !dbg !925
  unreachable, !dbg !925

if.end19:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 1, !dbg !926
  %3 = load i32* %mode, align 4, !dbg !926, !tbaa !459
  switch i32 %3, label %sw.default [
    i32 7, label %sw.bb
    i32 8, label %sw.bb20
    i32 9, label %sw.bb21
  ], !dbg !926

sw.bb:                                            ; preds = %if.end19
  %4 = bitcast double** %entriesA.i to i8*, !dbg !927
  call void @llvm.lifetime.start(i64 8, i8* %4) #5, !dbg !927
  %5 = bitcast i32* %nrowA.i to i8*, !dbg !927
  call void @llvm.lifetime.start(i64 4, i8* %5) #5, !dbg !927
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !930) #5, !dbg !927
  call void @llvm.dbg.value(metadata !{double* %y0}, i64 0, metadata !931) #5, !dbg !932
  call void @llvm.dbg.value(metadata !{double* %y1}, i64 0, metadata !933) #5, !dbg !934
  call void @llvm.dbg.value(metadata !{double* %y2}, i64 0, metadata !935) #5, !dbg !936
  call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !937) #5, !dbg !938
  call void @llvm.dbg.value(metadata !{double* %x1}, i64 0, metadata !939) #5, !dbg !940
  call void @llvm.dbg.value(metadata !{double* %x2}, i64 0, metadata !941) #5, !dbg !942
  call void @llvm.dbg.declare(metadata !{double** %entriesA.i}, metadata !431) #5, !dbg !943
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i}, metadata !432) #5, !dbg !944
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i, double** %entriesA.i) #6, !dbg !945
  %6 = load i32* %type, align 4, !dbg !946, !tbaa !459
  switch i32 %6, label %sw.epilog [
    i32 1, label %for.cond.preheader.i
    i32 2, label %for.cond20.preheader.i
  ], !dbg !946

for.cond20.preheader.i:                           ; preds = %sw.bb
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !947) #5, !dbg !948
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !432), !dbg !948
  %7 = load i32* %nrowA.i, align 4, !dbg !948, !tbaa !459
  %cmp21131.i = icmp sgt i32 %7, 0, !dbg !948
  br i1 %cmp21131.i, label %for.body22.lr.ph.i, label %sw.epilog, !dbg !948

for.body22.lr.ph.i:                               ; preds = %for.cond20.preheader.i
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !950) #5, !dbg !951
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !431), !dbg !951
  %8 = load double** %entriesA.i, align 8, !dbg !951, !tbaa !454
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !947) #5, !dbg !948
  br label %for.body22.i, !dbg !948

for.cond.preheader.i:                             ; preds = %sw.bb
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !947) #5, !dbg !953
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !432), !dbg !953
  %9 = load i32* %nrowA.i, align 4, !dbg !953, !tbaa !459
  %cmp1128.i = icmp sgt i32 %9, 0, !dbg !953
  br i1 %cmp1128.i, label %for.body.lr.ph.i, label %sw.epilog, !dbg !953

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !950) #5, !dbg !955
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !431), !dbg !955
  %10 = load double** %entriesA.i, align 8, !dbg !955, !tbaa !454
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !947) #5, !dbg !953
  br label %for.body.i, !dbg !953

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !950) #5, !dbg !955
  %arrayidx.i = getelementptr inbounds double* %10, i64 %indvars.iv.i, !dbg !955
  %11 = load double* %arrayidx.i, align 8, !dbg !955, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %11}, i64 0, metadata !957) #5, !dbg !955
  %arrayidx3.i = getelementptr inbounds double* %x0, i64 %indvars.iv.i, !dbg !958
  %12 = load double* %arrayidx3.i, align 8, !dbg !958, !tbaa !486
  %mul.i = fmul double %11, %12, !dbg !958
  %arrayidx5.i = getelementptr inbounds double* %y0, i64 %indvars.iv.i, !dbg !958
  store double %mul.i, double* %arrayidx5.i, align 8, !dbg !958, !tbaa !486
  %arrayidx7.i = getelementptr inbounds double* %x1, i64 %indvars.iv.i, !dbg !959
  %13 = load double* %arrayidx7.i, align 8, !dbg !959, !tbaa !486
  %mul8.i = fmul double %11, %13, !dbg !959
  %arrayidx10.i = getelementptr inbounds double* %y1, i64 %indvars.iv.i, !dbg !959
  store double %mul8.i, double* %arrayidx10.i, align 8, !dbg !959, !tbaa !486
  %arrayidx12.i = getelementptr inbounds double* %x2, i64 %indvars.iv.i, !dbg !960
  %14 = load double* %arrayidx12.i, align 8, !dbg !960, !tbaa !486
  %mul13.i = fmul double %11, %14, !dbg !960
  %arrayidx15.i = getelementptr inbounds double* %y2, i64 %indvars.iv.i, !dbg !960
  store double %mul13.i, double* %arrayidx15.i, align 8, !dbg !960, !tbaa !486
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !953
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !947) #5, !dbg !953
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32, !dbg !953
  %exitcond = icmp eq i32 %lftr.wideiv, %9, !dbg !953
  br i1 %exitcond, label %sw.epilog, label %for.body.i, !dbg !953

for.body22.i:                                     ; preds = %for.body22.i, %for.body22.lr.ph.i
  %indvars.iv137.i = phi i64 [ 1, %for.body22.lr.ph.i ], [ %indvars.iv.next138.i, %for.body22.i ], !dbg !948
  %indvars.iv135.i = phi i64 [ 0, %for.body22.lr.ph.i ], [ %indvars.iv.next136.i, %for.body22.i ]
  %irowA19.0133.i = phi i32 [ 0, %for.body22.lr.ph.i ], [ %inc68.i, %for.body22.i ]
  %arrayidx24.i = getelementptr inbounds double* %x0, i64 %indvars.iv135.i, !dbg !961
  %15 = load double* %arrayidx24.i, align 8, !dbg !961, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %15}, i64 0, metadata !962) #5, !dbg !961
  %arrayidx26.i = getelementptr inbounds double* %x0, i64 %indvars.iv137.i, !dbg !961
  %16 = load double* %arrayidx26.i, align 8, !dbg !961, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %16}, i64 0, metadata !963) #5, !dbg !961
  %arrayidx28.i = getelementptr inbounds double* %x1, i64 %indvars.iv135.i, !dbg !964
  %17 = load double* %arrayidx28.i, align 8, !dbg !964, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %17}, i64 0, metadata !965) #5, !dbg !964
  %arrayidx30.i = getelementptr inbounds double* %x1, i64 %indvars.iv137.i, !dbg !964
  %18 = load double* %arrayidx30.i, align 8, !dbg !964, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %18}, i64 0, metadata !966) #5, !dbg !964
  %arrayidx32.i = getelementptr inbounds double* %x2, i64 %indvars.iv135.i, !dbg !967
  %19 = load double* %arrayidx32.i, align 8, !dbg !967, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %19}, i64 0, metadata !968) #5, !dbg !967
  %arrayidx34.i = getelementptr inbounds double* %x2, i64 %indvars.iv137.i, !dbg !967
  %20 = load double* %arrayidx34.i, align 8, !dbg !967, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %20}, i64 0, metadata !969) #5, !dbg !967
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !950) #5, !dbg !951
  %arrayidx36.i = getelementptr inbounds double* %8, i64 %indvars.iv135.i, !dbg !951
  %21 = load double* %arrayidx36.i, align 8, !dbg !951, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %21}, i64 0, metadata !970) #5, !dbg !951
  %arrayidx38.i = getelementptr inbounds double* %8, i64 %indvars.iv137.i, !dbg !951
  %22 = load double* %arrayidx38.i, align 8, !dbg !951, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %22}, i64 0, metadata !971) #5, !dbg !951
  %mul39.i = fmul double %15, %21, !dbg !972
  %mul40.i = fmul double %16, %22, !dbg !972
  %sub.i = fsub double %mul39.i, %mul40.i, !dbg !972
  %arrayidx42.i = getelementptr inbounds double* %y0, i64 %indvars.iv135.i, !dbg !972
  store double %sub.i, double* %arrayidx42.i, align 8, !dbg !972, !tbaa !486
  %mul43.i = fmul double %16, %21, !dbg !972
  %mul44.i = fmul double %15, %22, !dbg !972
  %add.i = fadd double %mul43.i, %mul44.i, !dbg !972
  %arrayidx46.i = getelementptr inbounds double* %y0, i64 %indvars.iv137.i, !dbg !972
  store double %add.i, double* %arrayidx46.i, align 8, !dbg !972, !tbaa !486
  %mul47.i = fmul double %17, %21, !dbg !973
  %mul48.i = fmul double %18, %22, !dbg !973
  %sub49.i = fsub double %mul47.i, %mul48.i, !dbg !973
  %arrayidx51.i = getelementptr inbounds double* %y1, i64 %indvars.iv135.i, !dbg !973
  store double %sub49.i, double* %arrayidx51.i, align 8, !dbg !973, !tbaa !486
  %mul52.i = fmul double %18, %21, !dbg !973
  %mul53.i = fmul double %17, %22, !dbg !973
  %add54.i = fadd double %mul52.i, %mul53.i, !dbg !973
  %arrayidx56.i = getelementptr inbounds double* %y1, i64 %indvars.iv137.i, !dbg !973
  store double %add54.i, double* %arrayidx56.i, align 8, !dbg !973, !tbaa !486
  %mul57.i = fmul double %19, %21, !dbg !974
  %mul58.i = fmul double %20, %22, !dbg !974
  %sub59.i = fsub double %mul57.i, %mul58.i, !dbg !974
  %arrayidx61.i = getelementptr inbounds double* %y2, i64 %indvars.iv135.i, !dbg !974
  store double %sub59.i, double* %arrayidx61.i, align 8, !dbg !974, !tbaa !486
  %mul62.i = fmul double %20, %21, !dbg !974
  %mul63.i = fmul double %19, %22, !dbg !974
  %add64.i = fadd double %mul62.i, %mul63.i, !dbg !974
  %arrayidx66.i = getelementptr inbounds double* %y2, i64 %indvars.iv137.i, !dbg !974
  store double %add64.i, double* %arrayidx66.i, align 8, !dbg !974, !tbaa !486
  %inc68.i = add nsw i32 %irowA19.0133.i, 1, !dbg !975
  call void @llvm.dbg.value(metadata !{i32 %inc68.i}, i64 0, metadata !976) #5, !dbg !975
  %indvars.iv.next136.i = add i64 %indvars.iv135.i, 2, !dbg !948
  %indvars.iv.next138.i = add i64 %indvars.iv137.i, 2, !dbg !948
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !947) #5, !dbg !948
  %exitcond156 = icmp eq i32 %inc68.i, %7, !dbg !948
  br i1 %exitcond156, label %sw.epilog, label %for.body22.i, !dbg !948

sw.bb20:                                          ; preds = %if.end19
  %23 = bitcast double** %entries.i to i8*, !dbg !977
  call void @llvm.lifetime.start(i64 8, i8* %23) #5, !dbg !977
  %24 = bitcast i32* %nentA.i to i8*, !dbg !977
  call void @llvm.lifetime.start(i64 4, i8* %24) #5, !dbg !977
  %25 = bitcast i32* %nrowA.i82 to i8*, !dbg !977
  call void @llvm.lifetime.start(i64 4, i8* %25) #5, !dbg !977
  %26 = bitcast i32** %pivotsizes.i to i8*, !dbg !977
  call void @llvm.lifetime.start(i64 8, i8* %26) #5, !dbg !977
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !979) #5, !dbg !977
  call void @llvm.dbg.value(metadata !{double* %y0}, i64 0, metadata !980) #5, !dbg !981
  call void @llvm.dbg.value(metadata !{double* %y1}, i64 0, metadata !982) #5, !dbg !983
  call void @llvm.dbg.value(metadata !{double* %y2}, i64 0, metadata !984) #5, !dbg !985
  call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !986) #5, !dbg !987
  call void @llvm.dbg.value(metadata !{double* %x1}, i64 0, metadata !988) #5, !dbg !989
  call void @llvm.dbg.value(metadata !{double* %x2}, i64 0, metadata !990) #5, !dbg !991
  call void @llvm.dbg.declare(metadata !{double** %entries.i}, metadata !317) #5, !dbg !992
  call void @llvm.dbg.declare(metadata !{i32* %nentA.i}, metadata !318) #5, !dbg !993
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i82}, metadata !319) #5, !dbg !993
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes.i}, metadata !320) #5, !dbg !994
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i82, i32* %nentA.i, i32** %pivotsizes.i, double** %entries.i) #6, !dbg !995
  %27 = load i32* %type, align 4, !dbg !996, !tbaa !459
  switch i32 %27, label %sw.epilog [
    i32 1, label %for.cond.preheader.i84
    i32 2, label %for.cond98.preheader.i
  ], !dbg !996

for.cond98.preheader.i:                           ; preds = %sw.bb20
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i82}, i64 0, metadata !997) #5, !dbg !998
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i82}, i64 0, metadata !319), !dbg !998
  %28 = load i32* %nrowA.i82, align 4, !dbg !998, !tbaa !459
  %cmp99579.i = icmp sgt i32 %28, 0, !dbg !998
  br i1 %cmp99579.i, label %for.body100.lr.ph.i, label %sw.epilog, !dbg !998

for.body100.lr.ph.i:                              ; preds = %for.cond98.preheader.i
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i}, i64 0, metadata !999) #5, !dbg !1000
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i}, i64 0, metadata !320), !dbg !1000
  %29 = load i32** %pivotsizes.i, align 8, !dbg !1000, !tbaa !454
  call void @llvm.dbg.value(metadata !{double** %entries.i}, i64 0, metadata !1001) #5, !dbg !1002
  call void @llvm.dbg.value(metadata !{double** %entries.i}, i64 0, metadata !317), !dbg !1002
  %30 = load double** %entries.i, align 8, !dbg !1002, !tbaa !454
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i82}, i64 0, metadata !997) #5, !dbg !998
  call void @llvm.dbg.value(metadata !{double** %entries.i}, i64 0, metadata !1001) #5, !dbg !1003
  br label %for.body100.i, !dbg !998

for.cond.preheader.i84:                           ; preds = %sw.bb20
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i82}, i64 0, metadata !997) #5, !dbg !1004
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i82}, i64 0, metadata !319), !dbg !1004
  %31 = load i32* %nrowA.i82, align 4, !dbg !1004, !tbaa !459
  %cmp1572.i = icmp sgt i32 %31, 0, !dbg !1004
  br i1 %cmp1572.i, label %for.body.lr.ph.i85, label %sw.epilog, !dbg !1004

for.body.lr.ph.i85:                               ; preds = %for.cond.preheader.i84
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i}, i64 0, metadata !999) #5, !dbg !1005
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i}, i64 0, metadata !320), !dbg !1005
  %32 = load i32** %pivotsizes.i, align 8, !dbg !1005, !tbaa !454
  call void @llvm.dbg.value(metadata !{double** %entries.i}, i64 0, metadata !1001) #5, !dbg !1006
  call void @llvm.dbg.value(metadata !{double** %entries.i}, i64 0, metadata !317), !dbg !1006
  %33 = load double** %entries.i, align 8, !dbg !1006, !tbaa !454
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i82}, i64 0, metadata !997) #5, !dbg !1004
  call void @llvm.dbg.value(metadata !{double** %entries.i}, i64 0, metadata !1001) #5, !dbg !1007
  br label %for.body.i88, !dbg !1004

for.body.i88:                                     ; preds = %for.inc.i, %for.body.lr.ph.i85
  %indvars.iv.i86 = phi i64 [ 0, %for.body.lr.ph.i85 ], [ %indvars.iv.next.i98, %for.inc.i ]
  %ipivot.0575.i = phi i32 [ 0, %for.body.lr.ph.i85 ], [ %inc90.i, %for.inc.i ]
  %irowA.0574.i = phi i32 [ 0, %for.body.lr.ph.i85 ], [ %irowA.1.i, %for.inc.i ]
  %kk.0573.i = phi i32 [ 0, %for.body.lr.ph.i85 ], [ %kk.1.i, %for.inc.i ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i}, i64 0, metadata !999) #5, !dbg !1005
  %arrayidx.i87 = getelementptr inbounds i32* %32, i64 %indvars.iv.i86, !dbg !1005
  %34 = load i32* %arrayidx.i87, align 4, !dbg !1005, !tbaa !459
  switch i32 %34, label %if.else86.i [
    i32 1, label %if.then3.i
    i32 2, label %if.then24.i
  ], !dbg !1005

if.then3.i:                                       ; preds = %for.body.i88
  %idxprom4.i = sext i32 %kk.0573.i to i64, !dbg !1006
  call void @llvm.dbg.value(metadata !{double** %entries.i}, i64 0, metadata !1001) #5, !dbg !1006
  %arrayidx5.i89 = getelementptr inbounds double* %33, i64 %idxprom4.i, !dbg !1006
  %35 = load double* %arrayidx5.i89, align 8, !dbg !1006, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %35}, i64 0, metadata !1008) #5, !dbg !1006
  %idxprom6.i = sext i32 %irowA.0574.i to i64, !dbg !1009
  %arrayidx7.i90 = getelementptr inbounds double* %x0, i64 %idxprom6.i, !dbg !1009
  %36 = load double* %arrayidx7.i90, align 8, !dbg !1009, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %36}, i64 0, metadata !1010) #5, !dbg !1009
  %arrayidx9.i = getelementptr inbounds double* %x1, i64 %idxprom6.i, !dbg !1011
  %37 = load double* %arrayidx9.i, align 8, !dbg !1011, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %37}, i64 0, metadata !1012) #5, !dbg !1011
  %arrayidx11.i = getelementptr inbounds double* %x2, i64 %idxprom6.i, !dbg !1013
  %38 = load double* %arrayidx11.i, align 8, !dbg !1013, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %38}, i64 0, metadata !1014) #5, !dbg !1013
  %mul.i91 = fmul double %35, %36, !dbg !1015
  %arrayidx13.i = getelementptr inbounds double* %y0, i64 %idxprom6.i, !dbg !1015
  store double %mul.i91, double* %arrayidx13.i, align 8, !dbg !1015, !tbaa !486
  %mul14.i = fmul double %35, %37, !dbg !1016
  %arrayidx16.i = getelementptr inbounds double* %y1, i64 %idxprom6.i, !dbg !1016
  store double %mul14.i, double* %arrayidx16.i, align 8, !dbg !1016, !tbaa !486
  %mul17.i = fmul double %35, %38, !dbg !1017
  %arrayidx19.i = getelementptr inbounds double* %y2, i64 %idxprom6.i, !dbg !1017
  store double %mul17.i, double* %arrayidx19.i, align 8, !dbg !1017, !tbaa !486
  %inc.i = add nsw i32 %kk.0573.i, 1, !dbg !1018
  call void @llvm.dbg.value(metadata !{i32 %inc.i}, i64 0, metadata !1019) #5, !dbg !1018
  %inc20.i = add nsw i32 %irowA.0574.i, 1, !dbg !1018
  call void @llvm.dbg.value(metadata !{i32 %inc20.i}, i64 0, metadata !1020) #5, !dbg !1018
  br label %for.inc.i, !dbg !1021

if.then24.i:                                      ; preds = %for.body.i88
  %idxprom29.i = sext i32 %kk.0573.i to i64, !dbg !1007
  call void @llvm.dbg.value(metadata !{double** %entries.i}, i64 0, metadata !1001) #5, !dbg !1007
  %arrayidx30.i92 = getelementptr inbounds double* %33, i64 %idxprom29.i, !dbg !1007
  %39 = load double* %arrayidx30.i92, align 8, !dbg !1007, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %39}, i64 0, metadata !1022) #5, !dbg !1007
  %add.i93 = add nsw i32 %kk.0573.i, 1, !dbg !1023
  %idxprom31.i = sext i32 %add.i93 to i64, !dbg !1023
  %arrayidx32.i94 = getelementptr inbounds double* %33, i64 %idxprom31.i, !dbg !1023
  %40 = load double* %arrayidx32.i94, align 8, !dbg !1023, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %40}, i64 0, metadata !1024) #5, !dbg !1023
  %add33.i = add nsw i32 %kk.0573.i, 2, !dbg !1025
  %idxprom34.i = sext i32 %add33.i to i64, !dbg !1025
  %arrayidx35.i = getelementptr inbounds double* %33, i64 %idxprom34.i, !dbg !1025
  %41 = load double* %arrayidx35.i, align 8, !dbg !1025, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %41}, i64 0, metadata !1026) #5, !dbg !1025
  %idxprom36.i = sext i32 %irowA.0574.i to i64, !dbg !1027
  %arrayidx37.i = getelementptr inbounds double* %x0, i64 %idxprom36.i, !dbg !1027
  %42 = load double* %arrayidx37.i, align 8, !dbg !1027, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %42}, i64 0, metadata !1028) #5, !dbg !1027
  %arrayidx39.i = getelementptr inbounds double* %x1, i64 %idxprom36.i, !dbg !1029
  %43 = load double* %arrayidx39.i, align 8, !dbg !1029, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %43}, i64 0, metadata !1030) #5, !dbg !1029
  %arrayidx41.i = getelementptr inbounds double* %x2, i64 %idxprom36.i, !dbg !1031
  %44 = load double* %arrayidx41.i, align 8, !dbg !1031, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %44}, i64 0, metadata !1032) #5, !dbg !1031
  %add42.i = add nsw i32 %irowA.0574.i, 1, !dbg !1033
  %idxprom43.i = sext i32 %add42.i to i64, !dbg !1033
  %arrayidx44.i = getelementptr inbounds double* %x0, i64 %idxprom43.i, !dbg !1033
  %45 = load double* %arrayidx44.i, align 8, !dbg !1033, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %45}, i64 0, metadata !1034) #5, !dbg !1033
  %arrayidx47.i = getelementptr inbounds double* %x1, i64 %idxprom43.i, !dbg !1035
  %46 = load double* %arrayidx47.i, align 8, !dbg !1035, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %46}, i64 0, metadata !1036) #5, !dbg !1035
  %arrayidx50.i = getelementptr inbounds double* %x2, i64 %idxprom43.i, !dbg !1037
  %47 = load double* %arrayidx50.i, align 8, !dbg !1037, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %47}, i64 0, metadata !1038) #5, !dbg !1037
  %mul51.i = fmul double %39, %42, !dbg !1039
  %mul52.i95 = fmul double %40, %45, !dbg !1039
  %add53.i = fadd double %mul51.i, %mul52.i95, !dbg !1039
  %arrayidx55.i = getelementptr inbounds double* %y0, i64 %idxprom36.i, !dbg !1039
  store double %add53.i, double* %arrayidx55.i, align 8, !dbg !1039, !tbaa !486
  %mul56.i = fmul double %39, %43, !dbg !1040
  %mul57.i96 = fmul double %40, %46, !dbg !1040
  %add58.i = fadd double %mul56.i, %mul57.i96, !dbg !1040
  %arrayidx60.i = getelementptr inbounds double* %y1, i64 %idxprom36.i, !dbg !1040
  store double %add58.i, double* %arrayidx60.i, align 8, !dbg !1040, !tbaa !486
  %mul61.i = fmul double %39, %44, !dbg !1041
  %mul62.i97 = fmul double %40, %47, !dbg !1041
  %add63.i = fadd double %mul61.i, %mul62.i97, !dbg !1041
  %arrayidx65.i = getelementptr inbounds double* %y2, i64 %idxprom36.i, !dbg !1041
  store double %add63.i, double* %arrayidx65.i, align 8, !dbg !1041, !tbaa !486
  %mul66.i = fmul double %40, %42, !dbg !1042
  %mul67.i = fmul double %41, %45, !dbg !1042
  %add68.i = fadd double %mul66.i, %mul67.i, !dbg !1042
  %arrayidx71.i = getelementptr inbounds double* %y0, i64 %idxprom43.i, !dbg !1042
  store double %add68.i, double* %arrayidx71.i, align 8, !dbg !1042, !tbaa !486
  %mul72.i = fmul double %40, %43, !dbg !1043
  %mul73.i = fmul double %41, %46, !dbg !1043
  %add74.i = fadd double %mul72.i, %mul73.i, !dbg !1043
  %arrayidx77.i = getelementptr inbounds double* %y1, i64 %idxprom43.i, !dbg !1043
  store double %add74.i, double* %arrayidx77.i, align 8, !dbg !1043, !tbaa !486
  %mul78.i = fmul double %40, %44, !dbg !1044
  %mul79.i = fmul double %41, %47, !dbg !1044
  %add80.i = fadd double %mul78.i, %mul79.i, !dbg !1044
  %arrayidx83.i = getelementptr inbounds double* %y2, i64 %idxprom43.i, !dbg !1044
  store double %add80.i, double* %arrayidx83.i, align 8, !dbg !1044, !tbaa !486
  %add84.i = add nsw i32 %kk.0573.i, 3, !dbg !1045
  call void @llvm.dbg.value(metadata !{i32 %add84.i}, i64 0, metadata !1019) #5, !dbg !1045
  %add85.i = add nsw i32 %irowA.0574.i, 2, !dbg !1045
  call void @llvm.dbg.value(metadata !{i32 %add85.i}, i64 0, metadata !1020) #5, !dbg !1045
  br label %for.inc.i

if.else86.i:                                      ; preds = %for.body.i88
  %48 = load %struct._IO_FILE** @stderr, align 8, !dbg !1046, !tbaa !454
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0), i32 %ipivot.0575.i, i32 %34) #6, !dbg !1046
  call void @exit(i32 -1) #7, !dbg !1048
  unreachable, !dbg !1048

for.inc.i:                                        ; preds = %if.then24.i, %if.then3.i
  %kk.1.i = phi i32 [ %inc.i, %if.then3.i ], [ %add84.i, %if.then24.i ]
  %irowA.1.i = phi i32 [ %inc20.i, %if.then3.i ], [ %add85.i, %if.then24.i ]
  %indvars.iv.next.i98 = add i64 %indvars.iv.i86, 1, !dbg !1004
  %inc90.i = add nsw i32 %ipivot.0575.i, 1, !dbg !1004
  call void @llvm.dbg.value(metadata !{i32 %inc90.i}, i64 0, metadata !1049) #5, !dbg !1004
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i82}, i64 0, metadata !997) #5, !dbg !1004
  %cmp1.i99 = icmp slt i32 %irowA.1.i, %31, !dbg !1004
  br i1 %cmp1.i99, label %for.body.i88, label %sw.epilog, !dbg !1004

for.body100.i:                                    ; preds = %for.inc323.i, %for.body100.lr.ph.i
  %indvars.iv590.i = phi i64 [ 0, %for.body100.lr.ph.i ], [ %indvars.iv.next591.i, %for.inc323.i ]
  %iloc.0584.i = phi i32 [ 1, %for.body100.lr.ph.i ], [ %iloc.1.i, %for.inc323.i ]
  %ipivot95.0583.i = phi i32 [ 0, %for.body100.lr.ph.i ], [ %inc324.i, %for.inc323.i ]
  %irowA96.0582.i = phi i32 [ 0, %for.body100.lr.ph.i ], [ %irowA96.1.i, %for.inc323.i ]
  %kk97.0581.i = phi i32 [ 0, %for.body100.lr.ph.i ], [ %kk97.1.i, %for.inc323.i ]
  %rloc.0580.i = phi i32 [ 0, %for.body100.lr.ph.i ], [ %rloc.1.i, %for.inc323.i ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i}, i64 0, metadata !999) #5, !dbg !1000
  %arrayidx102.i = getelementptr inbounds i32* %29, i64 %indvars.iv590.i, !dbg !1000
  %49 = load i32* %arrayidx102.i, align 4, !dbg !1000, !tbaa !459
  switch i32 %49, label %if.else317.i [
    i32 1, label %if.then104.i
    i32 2, label %if.then159.i
  ], !dbg !1000

if.then104.i:                                     ; preds = %for.body100.i
  %idxprom105.i = sext i32 %kk97.0581.i to i64, !dbg !1002
  call void @llvm.dbg.value(metadata !{double** %entries.i}, i64 0, metadata !1001) #5, !dbg !1002
  %arrayidx106.i = getelementptr inbounds double* %30, i64 %idxprom105.i, !dbg !1002
  %50 = load double* %arrayidx106.i, align 8, !dbg !1002, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %50}, i64 0, metadata !1050) #5, !dbg !1002
  %add107.i = add nsw i32 %kk97.0581.i, 1, !dbg !1002
  %idxprom108.i = sext i32 %add107.i to i64, !dbg !1002
  %arrayidx109.i = getelementptr inbounds double* %30, i64 %idxprom108.i, !dbg !1002
  %51 = load double* %arrayidx109.i, align 8, !dbg !1002, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %51}, i64 0, metadata !1051) #5, !dbg !1002
  %idxprom110.i = sext i32 %rloc.0580.i to i64, !dbg !1052
  %arrayidx111.i = getelementptr inbounds double* %x0, i64 %idxprom110.i, !dbg !1052
  %52 = load double* %arrayidx111.i, align 8, !dbg !1052, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %52}, i64 0, metadata !1053) #5, !dbg !1052
  %idxprom112.i = sext i32 %iloc.0584.i to i64, !dbg !1052
  %arrayidx113.i = getelementptr inbounds double* %x0, i64 %idxprom112.i, !dbg !1052
  %53 = load double* %arrayidx113.i, align 8, !dbg !1052, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %53}, i64 0, metadata !1054) #5, !dbg !1052
  %arrayidx115.i = getelementptr inbounds double* %x1, i64 %idxprom110.i, !dbg !1055
  %54 = load double* %arrayidx115.i, align 8, !dbg !1055, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %54}, i64 0, metadata !1056) #5, !dbg !1055
  %arrayidx117.i = getelementptr inbounds double* %x1, i64 %idxprom112.i, !dbg !1055
  %55 = load double* %arrayidx117.i, align 8, !dbg !1055, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %55}, i64 0, metadata !1057) #5, !dbg !1055
  %arrayidx119.i = getelementptr inbounds double* %x2, i64 %idxprom110.i, !dbg !1058
  %56 = load double* %arrayidx119.i, align 8, !dbg !1058, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %56}, i64 0, metadata !1059) #5, !dbg !1058
  %arrayidx121.i = getelementptr inbounds double* %x2, i64 %idxprom112.i, !dbg !1058
  %57 = load double* %arrayidx121.i, align 8, !dbg !1058, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %57}, i64 0, metadata !1060) #5, !dbg !1058
  %mul122.i = fmul double %50, %52, !dbg !1061
  %mul123.i = fmul double %51, %53, !dbg !1061
  %sub.i100 = fsub double %mul122.i, %mul123.i, !dbg !1061
  %arrayidx125.i = getelementptr inbounds double* %y0, i64 %idxprom110.i, !dbg !1061
  store double %sub.i100, double* %arrayidx125.i, align 8, !dbg !1061, !tbaa !486
  %mul126.i = fmul double %50, %53, !dbg !1061
  %mul127.i = fmul double %51, %52, !dbg !1061
  %add128.i = fadd double %mul127.i, %mul126.i, !dbg !1061
  %arrayidx130.i = getelementptr inbounds double* %y0, i64 %idxprom112.i, !dbg !1061
  store double %add128.i, double* %arrayidx130.i, align 8, !dbg !1061, !tbaa !486
  %mul131.i = fmul double %50, %54, !dbg !1062
  %mul132.i = fmul double %51, %55, !dbg !1062
  %sub133.i = fsub double %mul131.i, %mul132.i, !dbg !1062
  %arrayidx135.i = getelementptr inbounds double* %y1, i64 %idxprom110.i, !dbg !1062
  store double %sub133.i, double* %arrayidx135.i, align 8, !dbg !1062, !tbaa !486
  %mul136.i = fmul double %50, %55, !dbg !1062
  %mul137.i = fmul double %51, %54, !dbg !1062
  %add138.i = fadd double %mul137.i, %mul136.i, !dbg !1062
  %arrayidx140.i = getelementptr inbounds double* %y1, i64 %idxprom112.i, !dbg !1062
  store double %add138.i, double* %arrayidx140.i, align 8, !dbg !1062, !tbaa !486
  %mul141.i = fmul double %50, %56, !dbg !1063
  %mul142.i = fmul double %51, %57, !dbg !1063
  %sub143.i = fsub double %mul141.i, %mul142.i, !dbg !1063
  %arrayidx145.i = getelementptr inbounds double* %y2, i64 %idxprom110.i, !dbg !1063
  store double %sub143.i, double* %arrayidx145.i, align 8, !dbg !1063, !tbaa !486
  %mul146.i = fmul double %50, %57, !dbg !1063
  %mul147.i = fmul double %51, %56, !dbg !1063
  %add148.i = fadd double %mul147.i, %mul146.i, !dbg !1063
  %arrayidx150.i = getelementptr inbounds double* %y2, i64 %idxprom112.i, !dbg !1063
  store double %add148.i, double* %arrayidx150.i, align 8, !dbg !1063, !tbaa !486
  %add151.i = add nsw i32 %kk97.0581.i, 2, !dbg !1064
  call void @llvm.dbg.value(metadata !{i32 %add151.i}, i64 0, metadata !1065) #5, !dbg !1064
  %inc152.i = add nsw i32 %irowA96.0582.i, 1, !dbg !1064
  call void @llvm.dbg.value(metadata !{i32 %inc152.i}, i64 0, metadata !1066) #5, !dbg !1064
  %add153.i = add nsw i32 %rloc.0580.i, 2, !dbg !1064
  call void @llvm.dbg.value(metadata !{i32 %add153.i}, i64 0, metadata !1067) #5, !dbg !1064
  %add154.i = add nsw i32 %iloc.0584.i, 2, !dbg !1064
  call void @llvm.dbg.value(metadata !{i32 %add154.i}, i64 0, metadata !1068) #5, !dbg !1064
  br label %for.inc323.i, !dbg !1069

if.then159.i:                                     ; preds = %for.body100.i
  %idxprom162.i = sext i32 %kk97.0581.i to i64, !dbg !1003
  call void @llvm.dbg.value(metadata !{double** %entries.i}, i64 0, metadata !1001) #5, !dbg !1003
  %arrayidx163.i = getelementptr inbounds double* %30, i64 %idxprom162.i, !dbg !1003
  %58 = load double* %arrayidx163.i, align 8, !dbg !1003, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %58}, i64 0, metadata !1070) #5, !dbg !1003
  %add164.i = add nsw i32 %kk97.0581.i, 1, !dbg !1003
  %idxprom165.i = sext i32 %add164.i to i64, !dbg !1003
  %arrayidx166.i = getelementptr inbounds double* %30, i64 %idxprom165.i, !dbg !1003
  %59 = load double* %arrayidx166.i, align 8, !dbg !1003, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %59}, i64 0, metadata !1071) #5, !dbg !1003
  %add167.i = add nsw i32 %kk97.0581.i, 2, !dbg !1072
  %idxprom168.i = sext i32 %add167.i to i64, !dbg !1072
  %arrayidx169.i = getelementptr inbounds double* %30, i64 %idxprom168.i, !dbg !1072
  %60 = load double* %arrayidx169.i, align 8, !dbg !1072, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %60}, i64 0, metadata !1073) #5, !dbg !1072
  %add170.i = add nsw i32 %kk97.0581.i, 3, !dbg !1072
  %idxprom171.i = sext i32 %add170.i to i64, !dbg !1072
  %arrayidx172.i = getelementptr inbounds double* %30, i64 %idxprom171.i, !dbg !1072
  %61 = load double* %arrayidx172.i, align 8, !dbg !1072, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %61}, i64 0, metadata !1074) #5, !dbg !1072
  %add173.i = add nsw i32 %kk97.0581.i, 4, !dbg !1075
  %idxprom174.i = sext i32 %add173.i to i64, !dbg !1075
  %arrayidx175.i = getelementptr inbounds double* %30, i64 %idxprom174.i, !dbg !1075
  %62 = load double* %arrayidx175.i, align 8, !dbg !1075, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %62}, i64 0, metadata !1076) #5, !dbg !1075
  %add176.i = add nsw i32 %kk97.0581.i, 5, !dbg !1075
  %idxprom177.i = sext i32 %add176.i to i64, !dbg !1075
  %arrayidx178.i = getelementptr inbounds double* %30, i64 %idxprom177.i, !dbg !1075
  %63 = load double* %arrayidx178.i, align 8, !dbg !1075, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %63}, i64 0, metadata !1077) #5, !dbg !1075
  call void @llvm.dbg.value(metadata !{i32 %rloc.0580.i}, i64 0, metadata !1078) #5, !dbg !1079
  call void @llvm.dbg.value(metadata !{i32 %iloc.0584.i}, i64 0, metadata !1080) #5, !dbg !1079
  %add179.i = add nsw i32 %rloc.0580.i, 2, !dbg !1081
  call void @llvm.dbg.value(metadata !{i32 %add179.i}, i64 0, metadata !1082) #5, !dbg !1081
  %add180.i = add nsw i32 %iloc.0584.i, 2, !dbg !1081
  call void @llvm.dbg.value(metadata !{i32 %add180.i}, i64 0, metadata !1083) #5, !dbg !1081
  %idxprom181.i = sext i32 %rloc.0580.i to i64, !dbg !1084
  %arrayidx182.i = getelementptr inbounds double* %x0, i64 %idxprom181.i, !dbg !1084
  %64 = load double* %arrayidx182.i, align 8, !dbg !1084, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %64}, i64 0, metadata !1085) #5, !dbg !1084
  %idxprom183.i = sext i32 %iloc.0584.i to i64, !dbg !1084
  %arrayidx184.i = getelementptr inbounds double* %x0, i64 %idxprom183.i, !dbg !1084
  %65 = load double* %arrayidx184.i, align 8, !dbg !1084, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %65}, i64 0, metadata !1086) #5, !dbg !1084
  %arrayidx186.i = getelementptr inbounds double* %x1, i64 %idxprom181.i, !dbg !1087
  %66 = load double* %arrayidx186.i, align 8, !dbg !1087, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %66}, i64 0, metadata !1088) #5, !dbg !1087
  %arrayidx188.i = getelementptr inbounds double* %x1, i64 %idxprom183.i, !dbg !1087
  %67 = load double* %arrayidx188.i, align 8, !dbg !1087, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %67}, i64 0, metadata !1089) #5, !dbg !1087
  %arrayidx190.i = getelementptr inbounds double* %x2, i64 %idxprom181.i, !dbg !1090
  %68 = load double* %arrayidx190.i, align 8, !dbg !1090, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %68}, i64 0, metadata !1091) #5, !dbg !1090
  %arrayidx192.i = getelementptr inbounds double* %x2, i64 %idxprom183.i, !dbg !1090
  %69 = load double* %arrayidx192.i, align 8, !dbg !1090, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %69}, i64 0, metadata !1092) #5, !dbg !1090
  %idxprom193.i = sext i32 %add179.i to i64, !dbg !1093
  %arrayidx194.i = getelementptr inbounds double* %x0, i64 %idxprom193.i, !dbg !1093
  %70 = load double* %arrayidx194.i, align 8, !dbg !1093, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %70}, i64 0, metadata !1094) #5, !dbg !1093
  %idxprom195.i = sext i32 %add180.i to i64, !dbg !1093
  %arrayidx196.i = getelementptr inbounds double* %x0, i64 %idxprom195.i, !dbg !1093
  %71 = load double* %arrayidx196.i, align 8, !dbg !1093, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %71}, i64 0, metadata !1095) #5, !dbg !1093
  %arrayidx198.i = getelementptr inbounds double* %x1, i64 %idxprom193.i, !dbg !1096
  %72 = load double* %arrayidx198.i, align 8, !dbg !1096, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %72}, i64 0, metadata !1097) #5, !dbg !1096
  %arrayidx200.i = getelementptr inbounds double* %x1, i64 %idxprom195.i, !dbg !1096
  %73 = load double* %arrayidx200.i, align 8, !dbg !1096, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %73}, i64 0, metadata !1098) #5, !dbg !1096
  %arrayidx202.i = getelementptr inbounds double* %x2, i64 %idxprom193.i, !dbg !1099
  %74 = load double* %arrayidx202.i, align 8, !dbg !1099, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %74}, i64 0, metadata !1100) #5, !dbg !1099
  %arrayidx204.i = getelementptr inbounds double* %x2, i64 %idxprom195.i, !dbg !1099
  %75 = load double* %arrayidx204.i, align 8, !dbg !1099, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %75}, i64 0, metadata !1101) #5, !dbg !1099
  %mul205.i = fmul double %58, %64, !dbg !1102
  %mul206.i = fmul double %59, %65, !dbg !1102
  %sub207.i = fsub double %mul205.i, %mul206.i, !dbg !1102
  %mul208.i = fmul double %60, %70, !dbg !1102
  %add209.i = fadd double %sub207.i, %mul208.i, !dbg !1102
  %mul210.i = fmul double %61, %71, !dbg !1102
  %sub211.i = fsub double %add209.i, %mul210.i, !dbg !1102
  %arrayidx213.i = getelementptr inbounds double* %y0, i64 %idxprom181.i, !dbg !1102
  store double %sub211.i, double* %arrayidx213.i, align 8, !dbg !1102, !tbaa !486
  %mul214.i = fmul double %58, %65, !dbg !1103
  %mul215.i = fmul double %59, %64, !dbg !1103
  %add216.i = fadd double %mul215.i, %mul214.i, !dbg !1103
  %mul217.i = fmul double %60, %71, !dbg !1103
  %add218.i = fadd double %add216.i, %mul217.i, !dbg !1103
  %mul219.i = fmul double %61, %70, !dbg !1103
  %add220.i = fadd double %mul219.i, %add218.i, !dbg !1103
  %arrayidx222.i = getelementptr inbounds double* %y0, i64 %idxprom183.i, !dbg !1103
  store double %add220.i, double* %arrayidx222.i, align 8, !dbg !1103, !tbaa !486
  %mul223.i = fmul double %58, %66, !dbg !1104
  %mul224.i = fmul double %59, %67, !dbg !1104
  %sub225.i = fsub double %mul223.i, %mul224.i, !dbg !1104
  %mul226.i = fmul double %60, %72, !dbg !1104
  %add227.i = fadd double %sub225.i, %mul226.i, !dbg !1104
  %mul228.i = fmul double %61, %73, !dbg !1104
  %sub229.i = fsub double %add227.i, %mul228.i, !dbg !1104
  %arrayidx231.i = getelementptr inbounds double* %y1, i64 %idxprom181.i, !dbg !1104
  store double %sub229.i, double* %arrayidx231.i, align 8, !dbg !1104, !tbaa !486
  %mul232.i = fmul double %58, %67, !dbg !1105
  %mul233.i = fmul double %59, %66, !dbg !1105
  %add234.i = fadd double %mul233.i, %mul232.i, !dbg !1105
  %mul235.i = fmul double %60, %73, !dbg !1105
  %add236.i = fadd double %add234.i, %mul235.i, !dbg !1105
  %mul237.i = fmul double %61, %72, !dbg !1105
  %add238.i = fadd double %mul237.i, %add236.i, !dbg !1105
  %arrayidx240.i = getelementptr inbounds double* %y1, i64 %idxprom183.i, !dbg !1105
  store double %add238.i, double* %arrayidx240.i, align 8, !dbg !1105, !tbaa !486
  %mul241.i = fmul double %58, %68, !dbg !1106
  %mul242.i = fmul double %59, %69, !dbg !1106
  %sub243.i = fsub double %mul241.i, %mul242.i, !dbg !1106
  %mul244.i = fmul double %60, %74, !dbg !1106
  %add245.i = fadd double %sub243.i, %mul244.i, !dbg !1106
  %mul246.i = fmul double %61, %75, !dbg !1106
  %sub247.i = fsub double %add245.i, %mul246.i, !dbg !1106
  %arrayidx249.i = getelementptr inbounds double* %y2, i64 %idxprom181.i, !dbg !1106
  store double %sub247.i, double* %arrayidx249.i, align 8, !dbg !1106, !tbaa !486
  %mul250.i = fmul double %58, %69, !dbg !1107
  %mul251.i = fmul double %59, %68, !dbg !1107
  %add252.i = fadd double %mul251.i, %mul250.i, !dbg !1107
  %mul253.i = fmul double %60, %75, !dbg !1107
  %add254.i = fadd double %add252.i, %mul253.i, !dbg !1107
  %mul255.i = fmul double %61, %74, !dbg !1107
  %add256.i = fadd double %mul255.i, %add254.i, !dbg !1107
  %arrayidx258.i = getelementptr inbounds double* %y2, i64 %idxprom183.i, !dbg !1107
  store double %add256.i, double* %arrayidx258.i, align 8, !dbg !1107, !tbaa !486
  %mul259.i = fmul double %60, %64, !dbg !1108
  %mul260.i = fmul double %61, %65, !dbg !1108
  %sub261.i = fsub double %mul259.i, %mul260.i, !dbg !1108
  %mul262.i = fmul double %62, %70, !dbg !1108
  %add263.i = fadd double %sub261.i, %mul262.i, !dbg !1108
  %mul264.i = fmul double %63, %71, !dbg !1108
  %sub265.i = fsub double %add263.i, %mul264.i, !dbg !1108
  %arrayidx267.i = getelementptr inbounds double* %y0, i64 %idxprom193.i, !dbg !1108
  store double %sub265.i, double* %arrayidx267.i, align 8, !dbg !1108, !tbaa !486
  %mul268.i = fmul double %60, %65, !dbg !1109
  %mul269.i = fmul double %61, %64, !dbg !1109
  %add270.i = fadd double %mul269.i, %mul268.i, !dbg !1109
  %mul271.i = fmul double %62, %71, !dbg !1109
  %add272.i = fadd double %add270.i, %mul271.i, !dbg !1109
  %mul273.i = fmul double %63, %70, !dbg !1109
  %add274.i = fadd double %mul273.i, %add272.i, !dbg !1109
  %arrayidx276.i = getelementptr inbounds double* %y0, i64 %idxprom195.i, !dbg !1109
  store double %add274.i, double* %arrayidx276.i, align 8, !dbg !1109, !tbaa !486
  %mul277.i = fmul double %60, %66, !dbg !1110
  %mul278.i = fmul double %61, %67, !dbg !1110
  %sub279.i = fsub double %mul277.i, %mul278.i, !dbg !1110
  %mul280.i = fmul double %62, %72, !dbg !1110
  %add281.i = fadd double %sub279.i, %mul280.i, !dbg !1110
  %mul282.i = fmul double %63, %73, !dbg !1110
  %sub283.i = fsub double %add281.i, %mul282.i, !dbg !1110
  %arrayidx285.i = getelementptr inbounds double* %y1, i64 %idxprom193.i, !dbg !1110
  store double %sub283.i, double* %arrayidx285.i, align 8, !dbg !1110, !tbaa !486
  %mul286.i = fmul double %60, %67, !dbg !1111
  %mul287.i = fmul double %61, %66, !dbg !1111
  %add288.i = fadd double %mul287.i, %mul286.i, !dbg !1111
  %mul289.i = fmul double %62, %73, !dbg !1111
  %add290.i = fadd double %add288.i, %mul289.i, !dbg !1111
  %mul291.i = fmul double %63, %72, !dbg !1111
  %add292.i = fadd double %mul291.i, %add290.i, !dbg !1111
  %arrayidx294.i = getelementptr inbounds double* %y1, i64 %idxprom195.i, !dbg !1111
  store double %add292.i, double* %arrayidx294.i, align 8, !dbg !1111, !tbaa !486
  %mul295.i = fmul double %60, %68, !dbg !1112
  %mul296.i = fmul double %61, %69, !dbg !1112
  %sub297.i = fsub double %mul295.i, %mul296.i, !dbg !1112
  %mul298.i = fmul double %62, %74, !dbg !1112
  %add299.i = fadd double %sub297.i, %mul298.i, !dbg !1112
  %mul300.i = fmul double %63, %75, !dbg !1112
  %sub301.i = fsub double %add299.i, %mul300.i, !dbg !1112
  %arrayidx303.i = getelementptr inbounds double* %y2, i64 %idxprom193.i, !dbg !1112
  store double %sub301.i, double* %arrayidx303.i, align 8, !dbg !1112, !tbaa !486
  %mul304.i = fmul double %60, %69, !dbg !1113
  %mul305.i = fmul double %61, %68, !dbg !1113
  %add306.i = fadd double %mul305.i, %mul304.i, !dbg !1113
  %mul307.i = fmul double %62, %75, !dbg !1113
  %add308.i = fadd double %add306.i, %mul307.i, !dbg !1113
  %mul309.i = fmul double %63, %74, !dbg !1113
  %add310.i = fadd double %mul309.i, %add308.i, !dbg !1113
  %arrayidx312.i = getelementptr inbounds double* %y2, i64 %idxprom195.i, !dbg !1113
  store double %add310.i, double* %arrayidx312.i, align 8, !dbg !1113, !tbaa !486
  %add313.i = add nsw i32 %kk97.0581.i, 6, !dbg !1114
  call void @llvm.dbg.value(metadata !{i32 %add313.i}, i64 0, metadata !1065) #5, !dbg !1114
  %add314.i = add nsw i32 %irowA96.0582.i, 2, !dbg !1114
  call void @llvm.dbg.value(metadata !{i32 %add314.i}, i64 0, metadata !1066) #5, !dbg !1114
  %add315.i = add nsw i32 %rloc.0580.i, 4, !dbg !1114
  call void @llvm.dbg.value(metadata !{i32 %add315.i}, i64 0, metadata !1067) #5, !dbg !1114
  %add316.i = add nsw i32 %iloc.0584.i, 4, !dbg !1114
  call void @llvm.dbg.value(metadata !{i32 %add316.i}, i64 0, metadata !1068) #5, !dbg !1114
  br label %for.inc323.i

if.else317.i:                                     ; preds = %for.body100.i
  %76 = load %struct._IO_FILE** @stderr, align 8, !dbg !1115, !tbaa !454
  %call320.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0), i32 %ipivot95.0583.i, i32 %49) #6, !dbg !1115
  call void @exit(i32 -1) #7, !dbg !1117
  unreachable, !dbg !1117

for.inc323.i:                                     ; preds = %if.then159.i, %if.then104.i
  %rloc.1.i = phi i32 [ %add153.i, %if.then104.i ], [ %add315.i, %if.then159.i ]
  %kk97.1.i = phi i32 [ %add151.i, %if.then104.i ], [ %add313.i, %if.then159.i ]
  %irowA96.1.i = phi i32 [ %inc152.i, %if.then104.i ], [ %add314.i, %if.then159.i ]
  %iloc.1.i = phi i32 [ %add154.i, %if.then104.i ], [ %add316.i, %if.then159.i ]
  %indvars.iv.next591.i = add i64 %indvars.iv590.i, 1, !dbg !998
  %inc324.i = add nsw i32 %ipivot95.0583.i, 1, !dbg !1118
  call void @llvm.dbg.value(metadata !{i32 %inc324.i}, i64 0, metadata !1119) #5, !dbg !1118
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i82}, i64 0, metadata !997) #5, !dbg !998
  %cmp99.i = icmp slt i32 %irowA96.1.i, %28, !dbg !998
  br i1 %cmp99.i, label %for.body100.i, label %sw.epilog, !dbg !998

sw.bb21:                                          ; preds = %if.end19
  %cmp23 = icmp eq i32 %1, 2, !dbg !1120
  br i1 %cmp23, label %if.end27, label %if.then24, !dbg !1120

if.then24:                                        ; preds = %sw.bb21
  %77 = load %struct._IO_FILE** @stderr, align 8, !dbg !1121, !tbaa !454
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([107 x i8]* @.str10, i64 0, i64 0), %struct._SubMtx* %mtxA, double* %y0, double* %y1, double* %y2, double* %x0, double* %x1, double* %x2, i32 %1) #6, !dbg !1121
  call void @exit(i32 -1) #7, !dbg !1123
  unreachable, !dbg !1123

if.end27:                                         ; preds = %sw.bb21
  %78 = bitcast double** %entries.i101 to i8*, !dbg !1124
  call void @llvm.lifetime.start(i64 8, i8* %78) #5, !dbg !1124
  %79 = bitcast i32* %nentA.i102 to i8*, !dbg !1124
  call void @llvm.lifetime.start(i64 4, i8* %79) #5, !dbg !1124
  %80 = bitcast i32* %nrowA.i103 to i8*, !dbg !1124
  call void @llvm.lifetime.start(i64 4, i8* %80) #5, !dbg !1124
  %81 = bitcast i32** %pivotsizes.i104 to i8*, !dbg !1124
  call void @llvm.lifetime.start(i64 8, i8* %81) #5, !dbg !1124
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !1126) #5, !dbg !1124
  call void @llvm.dbg.value(metadata !{double* %y0}, i64 0, metadata !1127) #5, !dbg !1128
  call void @llvm.dbg.value(metadata !{double* %y1}, i64 0, metadata !1129) #5, !dbg !1130
  call void @llvm.dbg.value(metadata !{double* %y2}, i64 0, metadata !1131) #5, !dbg !1132
  call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !1133) #5, !dbg !1134
  call void @llvm.dbg.value(metadata !{double* %x1}, i64 0, metadata !1135) #5, !dbg !1136
  call void @llvm.dbg.value(metadata !{double* %x2}, i64 0, metadata !1137) #5, !dbg !1138
  call void @llvm.dbg.declare(metadata !{double** %entries.i101}, metadata !150) #5, !dbg !1139
  call void @llvm.dbg.declare(metadata !{i32* %nentA.i102}, metadata !155) #5, !dbg !1140
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i103}, metadata !156) #5, !dbg !1140
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes.i104}, metadata !158) #5, !dbg !1141
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i103, i32* %nentA.i102, i32** %pivotsizes.i104, double** %entries.i101) #6, !dbg !1142
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1143) #5, !dbg !1144
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1145) #5, !dbg !1144
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1146) #5, !dbg !1144
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1147) #5, !dbg !1144
  call void @llvm.dbg.value(metadata !606, i64 0, metadata !1148) #5, !dbg !1144
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i103}, i64 0, metadata !1149) #5, !dbg !1144
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i103}, i64 0, metadata !156), !dbg !1144
  %82 = load i32* %nrowA.i103, align 4, !dbg !1144, !tbaa !459
  %cmp316.i = icmp sgt i32 %82, 0, !dbg !1144
  br i1 %cmp316.i, label %for.body.lr.ph.i105, label %sw.epilog, !dbg !1144

for.body.lr.ph.i105:                              ; preds = %if.end27
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i104}, i64 0, metadata !1150) #5, !dbg !1151
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i104}, i64 0, metadata !158), !dbg !1151
  %83 = load i32** %pivotsizes.i104, align 8, !dbg !1151, !tbaa !454
  call void @llvm.dbg.value(metadata !{double** %entries.i101}, i64 0, metadata !1152) #5, !dbg !1153
  call void @llvm.dbg.value(metadata !{double** %entries.i101}, i64 0, metadata !150), !dbg !1153
  %84 = load double** %entries.i101, align 8, !dbg !1153, !tbaa !454
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i103}, i64 0, metadata !1149) #5, !dbg !1144
  call void @llvm.dbg.value(metadata !{double** %entries.i101}, i64 0, metadata !1152) #5, !dbg !1154
  br label %for.body.i108, !dbg !1144

for.body.i108:                                    ; preds = %for.inc.i143, %for.body.lr.ph.i105
  %indvars.iv.i106 = phi i64 [ 0, %for.body.lr.ph.i105 ], [ %indvars.iv.next.i142, %for.inc.i143 ]
  %iloc.0321.i = phi i32 [ 1, %for.body.lr.ph.i105 ], [ %iloc.1.i141, %for.inc.i143 ]
  %ipivot.0320.i = phi i32 [ 0, %for.body.lr.ph.i105 ], [ %inc172.i, %for.inc.i143 ]
  %irowA.0319.i = phi i32 [ 0, %for.body.lr.ph.i105 ], [ %irowA.1.i140, %for.inc.i143 ]
  %kk.0318.i = phi i32 [ 0, %for.body.lr.ph.i105 ], [ %kk.1.i139, %for.inc.i143 ]
  %rloc.0317.i = phi i32 [ 0, %for.body.lr.ph.i105 ], [ %rloc.1.i138, %for.inc.i143 ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i104}, i64 0, metadata !1150) #5, !dbg !1151
  %arrayidx.i107 = getelementptr inbounds i32* %83, i64 %indvars.iv.i106, !dbg !1151
  %85 = load i32* %arrayidx.i107, align 4, !dbg !1151, !tbaa !459
  switch i32 %85, label %if.else168.i [
    i32 1, label %if.then.i
    i32 2, label %if.then39.i
  ], !dbg !1151

if.then.i:                                        ; preds = %for.body.i108
  %idxprom2.i = sext i32 %kk.0318.i to i64, !dbg !1153
  call void @llvm.dbg.value(metadata !{double** %entries.i101}, i64 0, metadata !1152) #5, !dbg !1153
  %arrayidx3.i109 = getelementptr inbounds double* %84, i64 %idxprom2.i, !dbg !1153
  %86 = load double* %arrayidx3.i109, align 8, !dbg !1153, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %86}, i64 0, metadata !1155) #5, !dbg !1153
  call void @llvm.dbg.value(metadata !615, i64 0, metadata !1156) #5, !dbg !1153
  %inc4.i = add nsw i32 %kk.0318.i, 2, !dbg !1153
  call void @llvm.dbg.value(metadata !{i32 %inc4.i}, i64 0, metadata !1145) #5, !dbg !1153
  %idxprom5.i = sext i32 %rloc.0317.i to i64, !dbg !1157
  %arrayidx6.i = getelementptr inbounds double* %x0, i64 %idxprom5.i, !dbg !1157
  %87 = load double* %arrayidx6.i, align 8, !dbg !1157, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %87}, i64 0, metadata !1158) #5, !dbg !1157
  %idxprom7.i = sext i32 %iloc.0321.i to i64, !dbg !1157
  %arrayidx8.i = getelementptr inbounds double* %x0, i64 %idxprom7.i, !dbg !1157
  %88 = load double* %arrayidx8.i, align 8, !dbg !1157, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %88}, i64 0, metadata !1159) #5, !dbg !1157
  %arrayidx10.i110 = getelementptr inbounds double* %x1, i64 %idxprom5.i, !dbg !1160
  %89 = load double* %arrayidx10.i110, align 8, !dbg !1160, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %89}, i64 0, metadata !1161) #5, !dbg !1160
  %arrayidx12.i111 = getelementptr inbounds double* %x1, i64 %idxprom7.i, !dbg !1160
  %90 = load double* %arrayidx12.i111, align 8, !dbg !1160, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %90}, i64 0, metadata !1162) #5, !dbg !1160
  %arrayidx14.i = getelementptr inbounds double* %x2, i64 %idxprom5.i, !dbg !1163
  %91 = load double* %arrayidx14.i, align 8, !dbg !1163, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %91}, i64 0, metadata !1164) #5, !dbg !1163
  %arrayidx16.i112 = getelementptr inbounds double* %x2, i64 %idxprom7.i, !dbg !1163
  %92 = load double* %arrayidx16.i112, align 8, !dbg !1163, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %92}, i64 0, metadata !1165) #5, !dbg !1163
  %mul.i113 = fmul double %86, %87, !dbg !1166
  %arrayidx18.i = getelementptr inbounds double* %y0, i64 %idxprom5.i, !dbg !1166
  store double %mul.i113, double* %arrayidx18.i, align 8, !dbg !1166, !tbaa !486
  %mul19.i = fmul double %86, %88, !dbg !1166
  %arrayidx21.i = getelementptr inbounds double* %y0, i64 %idxprom7.i, !dbg !1166
  store double %mul19.i, double* %arrayidx21.i, align 8, !dbg !1166, !tbaa !486
  %mul22.i = fmul double %86, %89, !dbg !1167
  %arrayidx24.i114 = getelementptr inbounds double* %y1, i64 %idxprom5.i, !dbg !1167
  store double %mul22.i, double* %arrayidx24.i114, align 8, !dbg !1167, !tbaa !486
  %mul25.i = fmul double %86, %90, !dbg !1167
  %arrayidx27.i = getelementptr inbounds double* %y1, i64 %idxprom7.i, !dbg !1167
  store double %mul25.i, double* %arrayidx27.i, align 8, !dbg !1167, !tbaa !486
  %mul28.i = fmul double %86, %91, !dbg !1168
  %arrayidx30.i115 = getelementptr inbounds double* %y2, i64 %idxprom5.i, !dbg !1168
  store double %mul28.i, double* %arrayidx30.i115, align 8, !dbg !1168, !tbaa !486
  %mul31.i = fmul double %86, %92, !dbg !1168
  %arrayidx33.i = getelementptr inbounds double* %y2, i64 %idxprom7.i, !dbg !1168
  store double %mul31.i, double* %arrayidx33.i, align 8, !dbg !1168, !tbaa !486
  %inc34.i = add nsw i32 %irowA.0319.i, 1, !dbg !1169
  call void @llvm.dbg.value(metadata !{i32 %inc34.i}, i64 0, metadata !1147) #5, !dbg !1169
  %add.i116 = add nsw i32 %rloc.0317.i, 2, !dbg !1169
  call void @llvm.dbg.value(metadata !{i32 %add.i116}, i64 0, metadata !1143) #5, !dbg !1169
  %add35.i = add nsw i32 %iloc.0321.i, 2, !dbg !1169
  call void @llvm.dbg.value(metadata !{i32 %add35.i}, i64 0, metadata !1148) #5, !dbg !1169
  br label %for.inc.i143, !dbg !1170

if.then39.i:                                      ; preds = %for.body.i108
  call void @llvm.dbg.value(metadata !{i32 %rloc.0317.i}, i64 0, metadata !1171) #5, !dbg !1172
  call void @llvm.dbg.value(metadata !{i32 %iloc.0321.i}, i64 0, metadata !1173) #5, !dbg !1172
  %add42.i117 = add nsw i32 %rloc.0317.i, 2, !dbg !1174
  call void @llvm.dbg.value(metadata !{i32 %add42.i117}, i64 0, metadata !1175) #5, !dbg !1174
  %add43.i = add nsw i32 %iloc.0321.i, 2, !dbg !1174
  call void @llvm.dbg.value(metadata !{i32 %add43.i}, i64 0, metadata !1176) #5, !dbg !1174
  %idxprom45.i = sext i32 %kk.0318.i to i64, !dbg !1154
  call void @llvm.dbg.value(metadata !{double** %entries.i101}, i64 0, metadata !1152) #5, !dbg !1154
  %arrayidx46.i118 = getelementptr inbounds double* %84, i64 %idxprom45.i, !dbg !1154
  %93 = load double* %arrayidx46.i118, align 8, !dbg !1154, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %93}, i64 0, metadata !1177) #5, !dbg !1154
  call void @llvm.dbg.value(metadata !615, i64 0, metadata !1178) #5, !dbg !1154
  %inc47.i = add nsw i32 %kk.0318.i, 2, !dbg !1154
  call void @llvm.dbg.value(metadata !{i32 %inc47.i}, i64 0, metadata !1145) #5, !dbg !1154
  %inc48.i = add nsw i32 %kk.0318.i, 3, !dbg !1179
  call void @llvm.dbg.value(metadata !{i32 %inc48.i}, i64 0, metadata !1145) #5, !dbg !1179
  %idxprom49.i = sext i32 %inc47.i to i64, !dbg !1179
  %arrayidx50.i119 = getelementptr inbounds double* %84, i64 %idxprom49.i, !dbg !1179
  %94 = load double* %arrayidx50.i119, align 8, !dbg !1179, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %94}, i64 0, metadata !1180) #5, !dbg !1179
  %inc51.i = add nsw i32 %kk.0318.i, 4, !dbg !1179
  call void @llvm.dbg.value(metadata !{i32 %inc51.i}, i64 0, metadata !1145) #5, !dbg !1179
  %idxprom52.i = sext i32 %inc48.i to i64, !dbg !1179
  %arrayidx53.i = getelementptr inbounds double* %84, i64 %idxprom52.i, !dbg !1179
  %95 = load double* %arrayidx53.i, align 8, !dbg !1179, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %95}, i64 0, metadata !1181) #5, !dbg !1179
  %idxprom55.i = sext i32 %inc51.i to i64, !dbg !1182
  %arrayidx56.i120 = getelementptr inbounds double* %84, i64 %idxprom55.i, !dbg !1182
  %96 = load double* %arrayidx56.i120, align 8, !dbg !1182, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %96}, i64 0, metadata !1183) #5, !dbg !1182
  call void @llvm.dbg.value(metadata !615, i64 0, metadata !1184) #5, !dbg !1182
  %inc57.i = add nsw i32 %kk.0318.i, 6, !dbg !1182
  call void @llvm.dbg.value(metadata !{i32 %inc57.i}, i64 0, metadata !1145) #5, !dbg !1182
  %idxprom58.i = sext i32 %rloc.0317.i to i64, !dbg !1185
  %arrayidx59.i = getelementptr inbounds double* %x0, i64 %idxprom58.i, !dbg !1185
  %97 = load double* %arrayidx59.i, align 8, !dbg !1185, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %97}, i64 0, metadata !1186) #5, !dbg !1185
  %idxprom60.i = sext i32 %iloc.0321.i to i64, !dbg !1185
  %arrayidx61.i121 = getelementptr inbounds double* %x0, i64 %idxprom60.i, !dbg !1185
  %98 = load double* %arrayidx61.i121, align 8, !dbg !1185, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %98}, i64 0, metadata !1187) #5, !dbg !1185
  %arrayidx63.i = getelementptr inbounds double* %x1, i64 %idxprom58.i, !dbg !1188
  %99 = load double* %arrayidx63.i, align 8, !dbg !1188, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %99}, i64 0, metadata !1189) #5, !dbg !1188
  %arrayidx65.i122 = getelementptr inbounds double* %x1, i64 %idxprom60.i, !dbg !1188
  %100 = load double* %arrayidx65.i122, align 8, !dbg !1188, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %100}, i64 0, metadata !1190) #5, !dbg !1188
  %arrayidx67.i = getelementptr inbounds double* %x2, i64 %idxprom58.i, !dbg !1191
  %101 = load double* %arrayidx67.i, align 8, !dbg !1191, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %101}, i64 0, metadata !1192) #5, !dbg !1191
  %arrayidx69.i = getelementptr inbounds double* %x2, i64 %idxprom60.i, !dbg !1191
  %102 = load double* %arrayidx69.i, align 8, !dbg !1191, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %102}, i64 0, metadata !1193) #5, !dbg !1191
  %idxprom70.i = sext i32 %add42.i117 to i64, !dbg !1194
  %arrayidx71.i123 = getelementptr inbounds double* %x0, i64 %idxprom70.i, !dbg !1194
  %103 = load double* %arrayidx71.i123, align 8, !dbg !1194, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %103}, i64 0, metadata !1195) #5, !dbg !1194
  %idxprom72.i = sext i32 %add43.i to i64, !dbg !1194
  %arrayidx73.i = getelementptr inbounds double* %x0, i64 %idxprom72.i, !dbg !1194
  %104 = load double* %arrayidx73.i, align 8, !dbg !1194, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %104}, i64 0, metadata !1196) #5, !dbg !1194
  %arrayidx75.i = getelementptr inbounds double* %x1, i64 %idxprom70.i, !dbg !1197
  %105 = load double* %arrayidx75.i, align 8, !dbg !1197, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %105}, i64 0, metadata !1198) #5, !dbg !1197
  %arrayidx77.i124 = getelementptr inbounds double* %x1, i64 %idxprom72.i, !dbg !1197
  %106 = load double* %arrayidx77.i124, align 8, !dbg !1197, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %106}, i64 0, metadata !1199) #5, !dbg !1197
  %arrayidx79.i = getelementptr inbounds double* %x2, i64 %idxprom70.i, !dbg !1200
  %107 = load double* %arrayidx79.i, align 8, !dbg !1200, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %107}, i64 0, metadata !1201) #5, !dbg !1200
  %arrayidx81.i = getelementptr inbounds double* %x2, i64 %idxprom72.i, !dbg !1200
  %108 = load double* %arrayidx81.i, align 8, !dbg !1200, !tbaa !486
  call void @llvm.dbg.value(metadata !{double %108}, i64 0, metadata !1202) #5, !dbg !1200
  %mul82.i = fmul double %93, %97, !dbg !1203
  %mul83.i = fmul double %94, %103, !dbg !1203
  %add84.i125 = fadd double %mul82.i, %mul83.i, !dbg !1203
  %mul85.i = fmul double %95, %104, !dbg !1203
  %sub.i126 = fsub double %add84.i125, %mul85.i, !dbg !1203
  %arrayidx87.i = getelementptr inbounds double* %y0, i64 %idxprom58.i, !dbg !1203
  store double %sub.i126, double* %arrayidx87.i, align 8, !dbg !1203, !tbaa !486
  %mul88.i = fmul double %93, %98, !dbg !1204
  %mul89.i = fmul double %94, %104, !dbg !1204
  %add90.i = fadd double %mul88.i, %mul89.i, !dbg !1204
  %mul91.i = fmul double %95, %103, !dbg !1204
  %add92.i = fadd double %mul91.i, %add90.i, !dbg !1204
  %arrayidx94.i = getelementptr inbounds double* %y0, i64 %idxprom60.i, !dbg !1204
  store double %add92.i, double* %arrayidx94.i, align 8, !dbg !1204, !tbaa !486
  %mul95.i = fmul double %93, %99, !dbg !1205
  %mul96.i = fmul double %94, %105, !dbg !1205
  %add97.i = fadd double %mul95.i, %mul96.i, !dbg !1205
  %mul98.i = fmul double %95, %106, !dbg !1205
  %sub99.i = fsub double %add97.i, %mul98.i, !dbg !1205
  %arrayidx101.i = getelementptr inbounds double* %y1, i64 %idxprom58.i, !dbg !1205
  store double %sub99.i, double* %arrayidx101.i, align 8, !dbg !1205, !tbaa !486
  %mul102.i = fmul double %93, %100, !dbg !1206
  %mul103.i = fmul double %94, %106, !dbg !1206
  %add104.i = fadd double %mul102.i, %mul103.i, !dbg !1206
  %mul105.i = fmul double %95, %105, !dbg !1206
  %add106.i = fadd double %mul105.i, %add104.i, !dbg !1206
  %arrayidx108.i = getelementptr inbounds double* %y1, i64 %idxprom60.i, !dbg !1206
  store double %add106.i, double* %arrayidx108.i, align 8, !dbg !1206, !tbaa !486
  %mul109.i = fmul double %93, %101, !dbg !1207
  %mul110.i = fmul double %94, %107, !dbg !1207
  %add111.i = fadd double %mul109.i, %mul110.i, !dbg !1207
  %mul112.i = fmul double %95, %108, !dbg !1207
  %sub113.i = fsub double %add111.i, %mul112.i, !dbg !1207
  %arrayidx115.i127 = getelementptr inbounds double* %y2, i64 %idxprom58.i, !dbg !1207
  store double %sub113.i, double* %arrayidx115.i127, align 8, !dbg !1207, !tbaa !486
  %mul116.i = fmul double %93, %102, !dbg !1208
  %mul117.i = fmul double %94, %108, !dbg !1208
  %add118.i = fadd double %mul116.i, %mul117.i, !dbg !1208
  %mul119.i = fmul double %95, %107, !dbg !1208
  %add120.i = fadd double %mul119.i, %add118.i, !dbg !1208
  %arrayidx122.i = getelementptr inbounds double* %y2, i64 %idxprom60.i, !dbg !1208
  store double %add120.i, double* %arrayidx122.i, align 8, !dbg !1208, !tbaa !486
  %mul123.i128 = fmul double %94, %97, !dbg !1209
  %mul124.i = fmul double %95, %98, !dbg !1209
  %add125.i = fadd double %mul123.i128, %mul124.i, !dbg !1209
  %mul126.i129 = fmul double %96, %103, !dbg !1209
  %add127.i = fadd double %add125.i, %mul126.i129, !dbg !1209
  %arrayidx129.i = getelementptr inbounds double* %y0, i64 %idxprom70.i, !dbg !1209
  store double %add127.i, double* %arrayidx129.i, align 8, !dbg !1209, !tbaa !486
  %mul130.i = fmul double %94, %98, !dbg !1210
  %mul131.i130 = fmul double %95, %97, !dbg !1210
  %sub132.i = fsub double %mul130.i, %mul131.i130, !dbg !1210
  %mul133.i = fmul double %96, %104, !dbg !1210
  %add134.i = fadd double %sub132.i, %mul133.i, !dbg !1210
  %arrayidx136.i = getelementptr inbounds double* %y0, i64 %idxprom72.i, !dbg !1210
  store double %add134.i, double* %arrayidx136.i, align 8, !dbg !1210, !tbaa !486
  %mul137.i131 = fmul double %94, %99, !dbg !1211
  %mul138.i = fmul double %95, %100, !dbg !1211
  %add139.i = fadd double %mul137.i131, %mul138.i, !dbg !1211
  %mul140.i = fmul double %96, %105, !dbg !1211
  %add141.i = fadd double %add139.i, %mul140.i, !dbg !1211
  %arrayidx143.i = getelementptr inbounds double* %y1, i64 %idxprom70.i, !dbg !1211
  store double %add141.i, double* %arrayidx143.i, align 8, !dbg !1211, !tbaa !486
  %mul144.i = fmul double %94, %100, !dbg !1212
  %mul145.i = fmul double %95, %99, !dbg !1212
  %sub146.i = fsub double %mul144.i, %mul145.i, !dbg !1212
  %mul147.i132 = fmul double %96, %106, !dbg !1212
  %add148.i133 = fadd double %sub146.i, %mul147.i132, !dbg !1212
  %arrayidx150.i134 = getelementptr inbounds double* %y1, i64 %idxprom72.i, !dbg !1212
  store double %add148.i133, double* %arrayidx150.i134, align 8, !dbg !1212, !tbaa !486
  %mul151.i = fmul double %94, %101, !dbg !1213
  %mul152.i = fmul double %95, %102, !dbg !1213
  %add153.i135 = fadd double %mul151.i, %mul152.i, !dbg !1213
  %mul154.i = fmul double %96, %107, !dbg !1213
  %add155.i = fadd double %add153.i135, %mul154.i, !dbg !1213
  %arrayidx157.i = getelementptr inbounds double* %y2, i64 %idxprom70.i, !dbg !1213
  store double %add155.i, double* %arrayidx157.i, align 8, !dbg !1213, !tbaa !486
  %mul158.i = fmul double %94, %102, !dbg !1214
  %mul159.i = fmul double %95, %101, !dbg !1214
  %sub160.i = fsub double %mul158.i, %mul159.i, !dbg !1214
  %mul161.i = fmul double %96, %108, !dbg !1214
  %add162.i = fadd double %sub160.i, %mul161.i, !dbg !1214
  %arrayidx164.i = getelementptr inbounds double* %y2, i64 %idxprom72.i, !dbg !1214
  store double %add162.i, double* %arrayidx164.i, align 8, !dbg !1214, !tbaa !486
  %add165.i = add nsw i32 %irowA.0319.i, 2, !dbg !1215
  call void @llvm.dbg.value(metadata !{i32 %add165.i}, i64 0, metadata !1147) #5, !dbg !1215
  %add166.i = add nsw i32 %rloc.0317.i, 4, !dbg !1215
  call void @llvm.dbg.value(metadata !{i32 %add166.i}, i64 0, metadata !1143) #5, !dbg !1215
  %add167.i136 = add nsw i32 %iloc.0321.i, 4, !dbg !1215
  call void @llvm.dbg.value(metadata !{i32 %add167.i136}, i64 0, metadata !1148) #5, !dbg !1215
  br label %for.inc.i143

if.else168.i:                                     ; preds = %for.body.i108
  %109 = load %struct._IO_FILE** @stderr, align 8, !dbg !1216, !tbaa !454
  %call.i137 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0), i32 %ipivot.0320.i, i32 %85) #6, !dbg !1216
  call void @exit(i32 -1) #7, !dbg !1218
  unreachable, !dbg !1218

for.inc.i143:                                     ; preds = %if.then39.i, %if.then.i
  %rloc.1.i138 = phi i32 [ %add.i116, %if.then.i ], [ %add166.i, %if.then39.i ]
  %kk.1.i139 = phi i32 [ %inc4.i, %if.then.i ], [ %inc57.i, %if.then39.i ]
  %irowA.1.i140 = phi i32 [ %inc34.i, %if.then.i ], [ %add165.i, %if.then39.i ]
  %iloc.1.i141 = phi i32 [ %add35.i, %if.then.i ], [ %add167.i136, %if.then39.i ]
  %indvars.iv.next.i142 = add i64 %indvars.iv.i106, 1, !dbg !1144
  %inc172.i = add nsw i32 %ipivot.0320.i, 1, !dbg !1219
  call void @llvm.dbg.value(metadata !{i32 %inc172.i}, i64 0, metadata !1146) #5, !dbg !1219
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i103}, i64 0, metadata !1149) #5, !dbg !1144
  %cmp.i = icmp slt i32 %irowA.1.i140, %82, !dbg !1144
  br i1 %cmp.i, label %for.body.i108, label %sw.epilog, !dbg !1144

sw.default:                                       ; preds = %if.end19
  %110 = load %struct._IO_FILE** @stderr, align 8, !dbg !1220, !tbaa !454
  %111 = call i64 @fwrite(i8* getelementptr inbounds ([161 x i8]* @.str11, i64 0, i64 0), i64 160, i64 1, %struct._IO_FILE* %110), !dbg !1220
  call void @exit(i32 -1) #7, !dbg !1221
  unreachable, !dbg !1221

sw.epilog:                                        ; preds = %for.inc.i143, %for.inc323.i, %for.inc.i, %for.body22.i, %for.body.i, %if.end27, %for.cond.preheader.i84, %for.cond98.preheader.i, %sw.bb20, %for.cond.preheader.i, %for.cond20.preheader.i, %sw.bb
  ret void, !dbg !1222
}

; Function Attrs: optsize
declare void @SubMtx_blockDiagonalInfo(%struct._SubMtx*, i32*, i32*, i32**, double**) #4

; Function Attrs: optsize
declare void @SubMtx_diagonalInfo(%struct._SubMtx*, i32*, double**) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !40, metadata !49, metadata !60, metadata !97, metadata !141, metadata !193, metadata !245, metadata !308, metadata !382, metadata !400, metadata !422}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_scale1vec", metadata !"SubMtx_scale1vec", metadata !"", i32 33, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*, double*, double*)* @SubMtx_scale1vec, null, null, metadata !36, i32 37} ; [ DW_TAG_subprogram ] [line 33] [def] [scope 37] [SubMtx_scale1vec]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !22, metadata !22}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtx]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"SubMtx", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [SubMtx] [line 43, size 0, align 0, offset 0] [from _SubMtx]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_SubMtx", i32 44, i64 576, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_SubMtx] [line 44, size 576, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/../SubMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !24, metadata !33}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"type", i32 45, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 45, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"mode", i32 46, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [mode] [line 46, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"rowid", i32 47, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [rowid] [line 47, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"colid", i32 48, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [colid] [line 48, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nrow", i32 49, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [nrow] [line 49, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ncol", i32 50, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [ncol] [line 50, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nent", i32 51, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [nent] [line 51, size 32, align 32, offset 192] [from int]
!21 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"entries", i32 52, i64 64, i64 64, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [entries] [line 52, size 64, align 64, offset 256] [from ]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!23 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!24 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"wrkDV", i32 53, i64 192, i64 64, i64 320, i32 0, metadata !25} ; [ DW_TAG_member ] [wrkDV] [line 53, size 192, align 64, offset 320] [from DV]
!25 = metadata !{i32 786454, metadata !11, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!26 = metadata !{i32 786451, metadata !27, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !28, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!27 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!28 = metadata !{metadata !29, metadata !30, metadata !31, metadata !32}
!29 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!30 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!31 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!32 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!33 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"next", i32 54, i64 64, i64 64, i64 512, i32 0, metadata !34} ; [ DW_TAG_member ] [next] [line 54, size 64, align 64, offset 512] [from ]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtx]
!35 = metadata !{i32 786454, metadata !11, null, metadata !"SubMtx", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [SubMtx] [line 43, size 0, align 0, offset 0] [from _SubMtx]
!36 = metadata !{metadata !37, metadata !38, metadata !39}
!37 = metadata !{i32 786689, metadata !4, metadata !"mtxA", metadata !5, i32 16777250, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 34]
!38 = metadata !{i32 786689, metadata !4, metadata !"y0", metadata !5, i32 33554467, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y0] [line 35]
!39 = metadata !{i32 786689, metadata !4, metadata !"x0", metadata !5, i32 50331684, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 36]
!40 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_scale2vec", metadata !"SubMtx_scale2vec", metadata !"", i32 89, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*, double*, double*, double*, double*)* @SubMtx_scale2vec, null, null, metadata !43, i32 95} ; [ DW_TAG_subprogram ] [line 89] [def] [scope 95] [SubMtx_scale2vec]
!41 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!42 = metadata !{null, metadata !8, metadata !22, metadata !22, metadata !22, metadata !22}
!43 = metadata !{metadata !44, metadata !45, metadata !46, metadata !47, metadata !48}
!44 = metadata !{i32 786689, metadata !40, metadata !"mtxA", metadata !5, i32 16777306, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 90]
!45 = metadata !{i32 786689, metadata !40, metadata !"y0", metadata !5, i32 33554523, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y0] [line 91]
!46 = metadata !{i32 786689, metadata !40, metadata !"y1", metadata !5, i32 50331740, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 92]
!47 = metadata !{i32 786689, metadata !40, metadata !"x0", metadata !5, i32 67108957, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 93]
!48 = metadata !{i32 786689, metadata !40, metadata !"x1", metadata !5, i32 83886174, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 94]
!49 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_scale3vec", metadata !"SubMtx_scale3vec", metadata !"", i32 149, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*, double*, double*, double*, double*, double*, double*)* @SubMtx_scale3vec, null, null, metadata !52, i32 157} ; [ DW_TAG_subprogram ] [line 149] [def] [scope 157] [SubMtx_scale3vec]
!50 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !51, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!51 = metadata !{null, metadata !8, metadata !22, metadata !22, metadata !22, metadata !22, metadata !22, metadata !22}
!52 = metadata !{metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59}
!53 = metadata !{i32 786689, metadata !49, metadata !"mtxA", metadata !5, i32 16777366, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 150]
!54 = metadata !{i32 786689, metadata !49, metadata !"y0", metadata !5, i32 33554583, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y0] [line 151]
!55 = metadata !{i32 786689, metadata !49, metadata !"y1", metadata !5, i32 50331800, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 152]
!56 = metadata !{i32 786689, metadata !49, metadata !"y2", metadata !5, i32 67109017, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y2] [line 153]
!57 = metadata !{i32 786689, metadata !49, metadata !"x0", metadata !5, i32 83886234, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 154]
!58 = metadata !{i32 786689, metadata !49, metadata !"x1", metadata !5, i32 100663451, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 155]
!59 = metadata !{i32 786689, metadata !49, metadata !"x2", metadata !5, i32 117440668, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x2] [line 156]
!60 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"block_diagonal_herm_scale1vec", metadata !"block_diagonal_herm_scale1vec", metadata !"", i32 814, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !61, i32 818} ; [ DW_TAG_subprogram ] [line 814] [local] [def] [scope 818] [block_diagonal_herm_scale1vec]
!61 = metadata !{metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !75, metadata !79, metadata !80, metadata !81, metadata !82, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96}
!62 = metadata !{i32 786689, metadata !60, metadata !"mtxA", metadata !5, i32 16778031, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 815]
!63 = metadata !{i32 786689, metadata !60, metadata !"y0", metadata !5, i32 33555248, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y0] [line 816]
!64 = metadata !{i32 786689, metadata !60, metadata !"x0", metadata !5, i32 50332465, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 817]
!65 = metadata !{i32 786688, metadata !60, metadata !"entries", metadata !5, i32 819, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 819]
!66 = metadata !{i32 786688, metadata !60, metadata !"iloc", metadata !5, i32 820, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 820]
!67 = metadata !{i32 786688, metadata !60, metadata !"ipivot", metadata !5, i32 820, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipivot] [line 820]
!68 = metadata !{i32 786688, metadata !60, metadata !"irowA", metadata !5, i32 820, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 820]
!69 = metadata !{i32 786688, metadata !60, metadata !"kk", metadata !5, i32 820, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 820]
!70 = metadata !{i32 786688, metadata !60, metadata !"nentA", metadata !5, i32 820, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentA] [line 820]
!71 = metadata !{i32 786688, metadata !60, metadata !"nrowA", metadata !5, i32 820, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 820]
!72 = metadata !{i32 786688, metadata !60, metadata !"rloc", metadata !5, i32 820, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 820]
!73 = metadata !{i32 786688, metadata !60, metadata !"pivotsizes", metadata !5, i32 821, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 821]
!74 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!75 = metadata !{i32 786688, metadata !76, metadata !"ai00", metadata !5, i32 828, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai00] [line 828]
!76 = metadata !{i32 786443, metadata !1, metadata !77, i32 827, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!77 = metadata !{i32 786443, metadata !1, metadata !78, i32 826, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!78 = metadata !{i32 786443, metadata !1, metadata !60, i32 824, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!79 = metadata !{i32 786688, metadata !76, metadata !"ar00", metadata !5, i32 828, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar00] [line 828]
!80 = metadata !{i32 786688, metadata !76, metadata !"xi0", metadata !5, i32 828, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi0] [line 828]
!81 = metadata !{i32 786688, metadata !76, metadata !"xr0", metadata !5, i32 828, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr0] [line 828]
!82 = metadata !{i32 786688, metadata !83, metadata !"ai00", metadata !5, i32 838, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai00] [line 838]
!83 = metadata !{i32 786443, metadata !1, metadata !77, i32 837, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!84 = metadata !{i32 786688, metadata !83, metadata !"ai01", metadata !5, i32 838, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai01] [line 838]
!85 = metadata !{i32 786688, metadata !83, metadata !"ai11", metadata !5, i32 838, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai11] [line 838]
!86 = metadata !{i32 786688, metadata !83, metadata !"ar00", metadata !5, i32 838, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar00] [line 838]
!87 = metadata !{i32 786688, metadata !83, metadata !"ar01", metadata !5, i32 838, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar01] [line 838]
!88 = metadata !{i32 786688, metadata !83, metadata !"ar11", metadata !5, i32 838, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar11] [line 838]
!89 = metadata !{i32 786688, metadata !83, metadata !"xi00", metadata !5, i32 839, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi00] [line 839]
!90 = metadata !{i32 786688, metadata !83, metadata !"xi10", metadata !5, i32 839, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi10] [line 839]
!91 = metadata !{i32 786688, metadata !83, metadata !"xr00", metadata !5, i32 839, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr00] [line 839]
!92 = metadata !{i32 786688, metadata !83, metadata !"xr10", metadata !5, i32 839, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr10] [line 839]
!93 = metadata !{i32 786688, metadata !83, metadata !"iloc0", metadata !5, i32 840, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc0] [line 840]
!94 = metadata !{i32 786688, metadata !83, metadata !"iloc1", metadata !5, i32 840, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc1] [line 840]
!95 = metadata !{i32 786688, metadata !83, metadata !"rloc0", metadata !5, i32 840, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc0] [line 840]
!96 = metadata !{i32 786688, metadata !83, metadata !"rloc1", metadata !5, i32 840, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc1] [line 840]
!97 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"block_diagonal_herm_scale2vec", metadata !"block_diagonal_herm_scale2vec", metadata !"", i32 741, metadata !41, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !98, i32 747} ; [ DW_TAG_subprogram ] [line 741] [local] [def] [scope 747] [block_diagonal_herm_scale2vec]
!98 = metadata !{metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140}
!99 = metadata !{i32 786689, metadata !97, metadata !"mtxA", metadata !5, i32 16777958, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 742]
!100 = metadata !{i32 786689, metadata !97, metadata !"y0", metadata !5, i32 33555175, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y0] [line 743]
!101 = metadata !{i32 786689, metadata !97, metadata !"y1", metadata !5, i32 50332392, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 744]
!102 = metadata !{i32 786689, metadata !97, metadata !"x0", metadata !5, i32 67109609, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 745]
!103 = metadata !{i32 786689, metadata !97, metadata !"x1", metadata !5, i32 83886826, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 746]
!104 = metadata !{i32 786688, metadata !97, metadata !"entries", metadata !5, i32 748, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 748]
!105 = metadata !{i32 786688, metadata !97, metadata !"iloc", metadata !5, i32 749, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 749]
!106 = metadata !{i32 786688, metadata !97, metadata !"ipivot", metadata !5, i32 749, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipivot] [line 749]
!107 = metadata !{i32 786688, metadata !97, metadata !"irowA", metadata !5, i32 749, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 749]
!108 = metadata !{i32 786688, metadata !97, metadata !"kk", metadata !5, i32 749, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 749]
!109 = metadata !{i32 786688, metadata !97, metadata !"nentA", metadata !5, i32 749, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentA] [line 749]
!110 = metadata !{i32 786688, metadata !97, metadata !"nrowA", metadata !5, i32 749, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 749]
!111 = metadata !{i32 786688, metadata !97, metadata !"rloc", metadata !5, i32 749, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 749]
!112 = metadata !{i32 786688, metadata !97, metadata !"pivotsizes", metadata !5, i32 750, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 750]
!113 = metadata !{i32 786688, metadata !114, metadata !"ai00", metadata !5, i32 757, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai00] [line 757]
!114 = metadata !{i32 786443, metadata !1, metadata !115, i32 756, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!115 = metadata !{i32 786443, metadata !1, metadata !116, i32 755, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!116 = metadata !{i32 786443, metadata !1, metadata !97, i32 753, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!117 = metadata !{i32 786688, metadata !114, metadata !"ar00", metadata !5, i32 757, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar00] [line 757]
!118 = metadata !{i32 786688, metadata !114, metadata !"xi0", metadata !5, i32 757, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi0] [line 757]
!119 = metadata !{i32 786688, metadata !114, metadata !"xi1", metadata !5, i32 757, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi1] [line 757]
!120 = metadata !{i32 786688, metadata !114, metadata !"xr0", metadata !5, i32 757, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr0] [line 757]
!121 = metadata !{i32 786688, metadata !114, metadata !"xr1", metadata !5, i32 757, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr1] [line 757]
!122 = metadata !{i32 786688, metadata !123, metadata !"ai00", metadata !5, i32 769, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai00] [line 769]
!123 = metadata !{i32 786443, metadata !1, metadata !115, i32 768, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!124 = metadata !{i32 786688, metadata !123, metadata !"ai01", metadata !5, i32 769, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai01] [line 769]
!125 = metadata !{i32 786688, metadata !123, metadata !"ai11", metadata !5, i32 769, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai11] [line 769]
!126 = metadata !{i32 786688, metadata !123, metadata !"ar00", metadata !5, i32 769, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar00] [line 769]
!127 = metadata !{i32 786688, metadata !123, metadata !"ar01", metadata !5, i32 769, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar01] [line 769]
!128 = metadata !{i32 786688, metadata !123, metadata !"ar11", metadata !5, i32 769, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar11] [line 769]
!129 = metadata !{i32 786688, metadata !123, metadata !"xi00", metadata !5, i32 770, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi00] [line 770]
!130 = metadata !{i32 786688, metadata !123, metadata !"xi01", metadata !5, i32 770, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi01] [line 770]
!131 = metadata !{i32 786688, metadata !123, metadata !"xi10", metadata !5, i32 770, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi10] [line 770]
!132 = metadata !{i32 786688, metadata !123, metadata !"xi11", metadata !5, i32 770, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi11] [line 770]
!133 = metadata !{i32 786688, metadata !123, metadata !"xr00", metadata !5, i32 770, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr00] [line 770]
!134 = metadata !{i32 786688, metadata !123, metadata !"xr01", metadata !5, i32 770, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr01] [line 770]
!135 = metadata !{i32 786688, metadata !123, metadata !"xr10", metadata !5, i32 770, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr10] [line 770]
!136 = metadata !{i32 786688, metadata !123, metadata !"xr11", metadata !5, i32 770, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr11] [line 770]
!137 = metadata !{i32 786688, metadata !123, metadata !"iloc0", metadata !5, i32 771, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc0] [line 771]
!138 = metadata !{i32 786688, metadata !123, metadata !"iloc1", metadata !5, i32 771, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc1] [line 771]
!139 = metadata !{i32 786688, metadata !123, metadata !"rloc0", metadata !5, i32 771, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc0] [line 771]
!140 = metadata !{i32 786688, metadata !123, metadata !"rloc1", metadata !5, i32 771, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc1] [line 771]
!141 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"block_diagonal_herm_scale3vec", metadata !"block_diagonal_herm_scale3vec", metadata !"", i32 657, metadata !50, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !142, i32 665} ; [ DW_TAG_subprogram ] [line 657] [local] [def] [scope 665] [block_diagonal_herm_scale3vec]
!142 = metadata !{metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192}
!143 = metadata !{i32 786689, metadata !141, metadata !"mtxA", metadata !5, i32 16777874, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 658]
!144 = metadata !{i32 786689, metadata !141, metadata !"y0", metadata !5, i32 33555091, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y0] [line 659]
!145 = metadata !{i32 786689, metadata !141, metadata !"y1", metadata !5, i32 50332308, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 660]
!146 = metadata !{i32 786689, metadata !141, metadata !"y2", metadata !5, i32 67109525, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y2] [line 661]
!147 = metadata !{i32 786689, metadata !141, metadata !"x0", metadata !5, i32 83886742, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 662]
!148 = metadata !{i32 786689, metadata !141, metadata !"x1", metadata !5, i32 100663959, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 663]
!149 = metadata !{i32 786689, metadata !141, metadata !"x2", metadata !5, i32 117441176, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x2] [line 664]
!150 = metadata !{i32 786688, metadata !141, metadata !"entries", metadata !5, i32 666, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 666]
!151 = metadata !{i32 786688, metadata !141, metadata !"iloc", metadata !5, i32 667, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 667]
!152 = metadata !{i32 786688, metadata !141, metadata !"ipivot", metadata !5, i32 667, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipivot] [line 667]
!153 = metadata !{i32 786688, metadata !141, metadata !"irowA", metadata !5, i32 667, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 667]
!154 = metadata !{i32 786688, metadata !141, metadata !"kk", metadata !5, i32 667, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 667]
!155 = metadata !{i32 786688, metadata !141, metadata !"nentA", metadata !5, i32 667, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentA] [line 667]
!156 = metadata !{i32 786688, metadata !141, metadata !"nrowA", metadata !5, i32 667, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 667]
!157 = metadata !{i32 786688, metadata !141, metadata !"rloc", metadata !5, i32 667, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 667]
!158 = metadata !{i32 786688, metadata !141, metadata !"pivotsizes", metadata !5, i32 668, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 668]
!159 = metadata !{i32 786688, metadata !160, metadata !"ar00", metadata !5, i32 675, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar00] [line 675]
!160 = metadata !{i32 786443, metadata !1, metadata !161, i32 674, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!161 = metadata !{i32 786443, metadata !1, metadata !162, i32 673, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!162 = metadata !{i32 786443, metadata !1, metadata !141, i32 671, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!163 = metadata !{i32 786688, metadata !160, metadata !"ai00", metadata !5, i32 675, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai00] [line 675]
!164 = metadata !{i32 786688, metadata !160, metadata !"xi0", metadata !5, i32 675, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi0] [line 675]
!165 = metadata !{i32 786688, metadata !160, metadata !"xi1", metadata !5, i32 675, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi1] [line 675]
!166 = metadata !{i32 786688, metadata !160, metadata !"xi2", metadata !5, i32 675, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi2] [line 675]
!167 = metadata !{i32 786688, metadata !160, metadata !"xr0", metadata !5, i32 675, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr0] [line 675]
!168 = metadata !{i32 786688, metadata !160, metadata !"xr1", metadata !5, i32 675, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr1] [line 675]
!169 = metadata !{i32 786688, metadata !160, metadata !"xr2", metadata !5, i32 675, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr2] [line 675]
!170 = metadata !{i32 786688, metadata !171, metadata !"ai00", metadata !5, i32 689, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai00] [line 689]
!171 = metadata !{i32 786443, metadata !1, metadata !161, i32 688, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!172 = metadata !{i32 786688, metadata !171, metadata !"ai01", metadata !5, i32 689, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai01] [line 689]
!173 = metadata !{i32 786688, metadata !171, metadata !"ai11", metadata !5, i32 689, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai11] [line 689]
!174 = metadata !{i32 786688, metadata !171, metadata !"ar00", metadata !5, i32 689, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar00] [line 689]
!175 = metadata !{i32 786688, metadata !171, metadata !"ar01", metadata !5, i32 689, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar01] [line 689]
!176 = metadata !{i32 786688, metadata !171, metadata !"ar11", metadata !5, i32 689, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar11] [line 689]
!177 = metadata !{i32 786688, metadata !171, metadata !"xi00", metadata !5, i32 690, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi00] [line 690]
!178 = metadata !{i32 786688, metadata !171, metadata !"xi01", metadata !5, i32 690, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi01] [line 690]
!179 = metadata !{i32 786688, metadata !171, metadata !"xi02", metadata !5, i32 690, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi02] [line 690]
!180 = metadata !{i32 786688, metadata !171, metadata !"xi10", metadata !5, i32 690, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi10] [line 690]
!181 = metadata !{i32 786688, metadata !171, metadata !"xi11", metadata !5, i32 690, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi11] [line 690]
!182 = metadata !{i32 786688, metadata !171, metadata !"xi12", metadata !5, i32 690, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi12] [line 690]
!183 = metadata !{i32 786688, metadata !171, metadata !"xr00", metadata !5, i32 691, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr00] [line 691]
!184 = metadata !{i32 786688, metadata !171, metadata !"xr01", metadata !5, i32 691, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr01] [line 691]
!185 = metadata !{i32 786688, metadata !171, metadata !"xr02", metadata !5, i32 691, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr02] [line 691]
!186 = metadata !{i32 786688, metadata !171, metadata !"xr10", metadata !5, i32 691, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr10] [line 691]
!187 = metadata !{i32 786688, metadata !171, metadata !"xr11", metadata !5, i32 691, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr11] [line 691]
!188 = metadata !{i32 786688, metadata !171, metadata !"xr12", metadata !5, i32 691, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr12] [line 691]
!189 = metadata !{i32 786688, metadata !171, metadata !"iloc0", metadata !5, i32 692, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc0] [line 692]
!190 = metadata !{i32 786688, metadata !171, metadata !"iloc1", metadata !5, i32 692, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc1] [line 692]
!191 = metadata !{i32 786688, metadata !171, metadata !"rloc0", metadata !5, i32 692, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc0] [line 692]
!192 = metadata !{i32 786688, metadata !171, metadata !"rloc1", metadata !5, i32 692, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc1] [line 692]
!193 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"block_diagonal_sym_scale1vec", metadata !"block_diagonal_sym_scale1vec", metadata !"", i32 570, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !194, i32 574} ; [ DW_TAG_subprogram ] [line 570] [local] [def] [scope 574] [block_diagonal_sym_scale1vec]
!194 = metadata !{metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !204, metadata !205, metadata !206, metadata !210, metadata !211, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !227, metadata !228, metadata !229, metadata !230, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244}
!195 = metadata !{i32 786689, metadata !193, metadata !"mtxA", metadata !5, i32 16777787, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 571]
!196 = metadata !{i32 786689, metadata !193, metadata !"y0", metadata !5, i32 33555004, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y0] [line 572]
!197 = metadata !{i32 786689, metadata !193, metadata !"x0", metadata !5, i32 50332221, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 573]
!198 = metadata !{i32 786688, metadata !193, metadata !"entries", metadata !5, i32 575, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 575]
!199 = metadata !{i32 786688, metadata !193, metadata !"nentA", metadata !5, i32 576, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentA] [line 576]
!200 = metadata !{i32 786688, metadata !193, metadata !"nrowA", metadata !5, i32 576, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 576]
!201 = metadata !{i32 786688, metadata !193, metadata !"pivotsizes", metadata !5, i32 577, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 577]
!202 = metadata !{i32 786688, metadata !203, metadata !"ipivot", metadata !5, i32 581, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipivot] [line 581]
!203 = metadata !{i32 786443, metadata !1, metadata !193, i32 580, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!204 = metadata !{i32 786688, metadata !203, metadata !"irowA", metadata !5, i32 581, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 581]
!205 = metadata !{i32 786688, metadata !203, metadata !"kk", metadata !5, i32 581, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 581]
!206 = metadata !{i32 786688, metadata !207, metadata !"a00", metadata !5, i32 585, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a00] [line 585]
!207 = metadata !{i32 786443, metadata !1, metadata !208, i32 584, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!208 = metadata !{i32 786443, metadata !1, metadata !209, i32 583, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!209 = metadata !{i32 786443, metadata !1, metadata !203, i32 583, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!210 = metadata !{i32 786688, metadata !207, metadata !"x00", metadata !5, i32 585, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x00] [line 585]
!211 = metadata !{i32 786688, metadata !212, metadata !"a00", metadata !5, i32 592, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a00] [line 592]
!212 = metadata !{i32 786443, metadata !1, metadata !208, i32 591, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!213 = metadata !{i32 786688, metadata !212, metadata !"a01", metadata !5, i32 592, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a01] [line 592]
!214 = metadata !{i32 786688, metadata !212, metadata !"a11", metadata !5, i32 592, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a11] [line 592]
!215 = metadata !{i32 786688, metadata !212, metadata !"x00", metadata !5, i32 592, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x00] [line 592]
!216 = metadata !{i32 786688, metadata !212, metadata !"x10", metadata !5, i32 592, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x10] [line 592]
!217 = metadata !{i32 786688, metadata !218, metadata !"iloc", metadata !5, i32 609, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 609]
!218 = metadata !{i32 786443, metadata !1, metadata !193, i32 608, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!219 = metadata !{i32 786688, metadata !218, metadata !"ipivot", metadata !5, i32 609, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipivot] [line 609]
!220 = metadata !{i32 786688, metadata !218, metadata !"irowA", metadata !5, i32 609, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 609]
!221 = metadata !{i32 786688, metadata !218, metadata !"kk", metadata !5, i32 609, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 609]
!222 = metadata !{i32 786688, metadata !218, metadata !"rloc", metadata !5, i32 609, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 609]
!223 = metadata !{i32 786688, metadata !224, metadata !"ai00", metadata !5, i32 615, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai00] [line 615]
!224 = metadata !{i32 786443, metadata !1, metadata !225, i32 614, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!225 = metadata !{i32 786443, metadata !1, metadata !226, i32 613, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!226 = metadata !{i32 786443, metadata !1, metadata !218, i32 611, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!227 = metadata !{i32 786688, metadata !224, metadata !"ar00", metadata !5, i32 615, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar00] [line 615]
!228 = metadata !{i32 786688, metadata !224, metadata !"xi0", metadata !5, i32 615, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi0] [line 615]
!229 = metadata !{i32 786688, metadata !224, metadata !"xr0", metadata !5, i32 615, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr0] [line 615]
!230 = metadata !{i32 786688, metadata !231, metadata !"ai00", metadata !5, i32 622, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai00] [line 622]
!231 = metadata !{i32 786443, metadata !1, metadata !225, i32 621, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!232 = metadata !{i32 786688, metadata !231, metadata !"ai01", metadata !5, i32 622, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai01] [line 622]
!233 = metadata !{i32 786688, metadata !231, metadata !"ai11", metadata !5, i32 622, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai11] [line 622]
!234 = metadata !{i32 786688, metadata !231, metadata !"ar00", metadata !5, i32 622, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar00] [line 622]
!235 = metadata !{i32 786688, metadata !231, metadata !"ar01", metadata !5, i32 622, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar01] [line 622]
!236 = metadata !{i32 786688, metadata !231, metadata !"ar11", metadata !5, i32 622, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar11] [line 622]
!237 = metadata !{i32 786688, metadata !231, metadata !"xi00", metadata !5, i32 623, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi00] [line 623]
!238 = metadata !{i32 786688, metadata !231, metadata !"xi10", metadata !5, i32 623, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi10] [line 623]
!239 = metadata !{i32 786688, metadata !231, metadata !"xr00", metadata !5, i32 623, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr00] [line 623]
!240 = metadata !{i32 786688, metadata !231, metadata !"xr10", metadata !5, i32 623, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr10] [line 623]
!241 = metadata !{i32 786688, metadata !231, metadata !"iloc0", metadata !5, i32 624, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc0] [line 624]
!242 = metadata !{i32 786688, metadata !231, metadata !"iloc1", metadata !5, i32 624, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc1] [line 624]
!243 = metadata !{i32 786688, metadata !231, metadata !"rloc0", metadata !5, i32 624, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc0] [line 624]
!244 = metadata !{i32 786688, metadata !231, metadata !"rloc1", metadata !5, i32 624, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc1] [line 624]
!245 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"block_diagonal_sym_scale2vec", metadata !"block_diagonal_sym_scale2vec", metadata !"", i32 467, metadata !41, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !246, i32 473} ; [ DW_TAG_subprogram ] [line 467] [local] [def] [scope 473] [block_diagonal_sym_scale2vec]
!246 = metadata !{metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !258, metadata !259, metadata !260, metadata !264, metadata !265, metadata !266, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307}
!247 = metadata !{i32 786689, metadata !245, metadata !"mtxA", metadata !5, i32 16777684, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 468]
!248 = metadata !{i32 786689, metadata !245, metadata !"y0", metadata !5, i32 33554901, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y0] [line 469]
!249 = metadata !{i32 786689, metadata !245, metadata !"y1", metadata !5, i32 50332118, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 470]
!250 = metadata !{i32 786689, metadata !245, metadata !"x0", metadata !5, i32 67109335, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 471]
!251 = metadata !{i32 786689, metadata !245, metadata !"x1", metadata !5, i32 83886552, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 472]
!252 = metadata !{i32 786688, metadata !245, metadata !"entries", metadata !5, i32 474, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 474]
!253 = metadata !{i32 786688, metadata !245, metadata !"nentA", metadata !5, i32 475, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentA] [line 475]
!254 = metadata !{i32 786688, metadata !245, metadata !"nrowA", metadata !5, i32 475, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 475]
!255 = metadata !{i32 786688, metadata !245, metadata !"pivotsizes", metadata !5, i32 476, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 476]
!256 = metadata !{i32 786688, metadata !257, metadata !"ipivot", metadata !5, i32 480, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipivot] [line 480]
!257 = metadata !{i32 786443, metadata !1, metadata !245, i32 479, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!258 = metadata !{i32 786688, metadata !257, metadata !"irowA", metadata !5, i32 480, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 480]
!259 = metadata !{i32 786688, metadata !257, metadata !"kk", metadata !5, i32 480, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 480]
!260 = metadata !{i32 786688, metadata !261, metadata !"a00", metadata !5, i32 484, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a00] [line 484]
!261 = metadata !{i32 786443, metadata !1, metadata !262, i32 483, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!262 = metadata !{i32 786443, metadata !1, metadata !263, i32 482, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!263 = metadata !{i32 786443, metadata !1, metadata !257, i32 482, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!264 = metadata !{i32 786688, metadata !261, metadata !"x00", metadata !5, i32 484, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x00] [line 484]
!265 = metadata !{i32 786688, metadata !261, metadata !"x01", metadata !5, i32 484, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x01] [line 484]
!266 = metadata !{i32 786688, metadata !267, metadata !"a00", metadata !5, i32 493, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a00] [line 493]
!267 = metadata !{i32 786443, metadata !1, metadata !262, i32 492, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!268 = metadata !{i32 786688, metadata !267, metadata !"a01", metadata !5, i32 493, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a01] [line 493]
!269 = metadata !{i32 786688, metadata !267, metadata !"a11", metadata !5, i32 493, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a11] [line 493]
!270 = metadata !{i32 786688, metadata !267, metadata !"x00", metadata !5, i32 493, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x00] [line 493]
!271 = metadata !{i32 786688, metadata !267, metadata !"x01", metadata !5, i32 493, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x01] [line 493]
!272 = metadata !{i32 786688, metadata !267, metadata !"x10", metadata !5, i32 493, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x10] [line 493]
!273 = metadata !{i32 786688, metadata !267, metadata !"x11", metadata !5, i32 493, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x11] [line 493]
!274 = metadata !{i32 786688, metadata !275, metadata !"iloc", metadata !5, i32 514, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 514]
!275 = metadata !{i32 786443, metadata !1, metadata !245, i32 513, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!276 = metadata !{i32 786688, metadata !275, metadata !"ipivot", metadata !5, i32 514, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipivot] [line 514]
!277 = metadata !{i32 786688, metadata !275, metadata !"irowA", metadata !5, i32 514, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 514]
!278 = metadata !{i32 786688, metadata !275, metadata !"kk", metadata !5, i32 514, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 514]
!279 = metadata !{i32 786688, metadata !275, metadata !"rloc", metadata !5, i32 514, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 514]
!280 = metadata !{i32 786688, metadata !281, metadata !"ai00", metadata !5, i32 520, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai00] [line 520]
!281 = metadata !{i32 786443, metadata !1, metadata !282, i32 519, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!282 = metadata !{i32 786443, metadata !1, metadata !283, i32 518, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!283 = metadata !{i32 786443, metadata !1, metadata !275, i32 516, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!284 = metadata !{i32 786688, metadata !281, metadata !"ar00", metadata !5, i32 520, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar00] [line 520]
!285 = metadata !{i32 786688, metadata !281, metadata !"xi0", metadata !5, i32 520, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi0] [line 520]
!286 = metadata !{i32 786688, metadata !281, metadata !"xi1", metadata !5, i32 520, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi1] [line 520]
!287 = metadata !{i32 786688, metadata !281, metadata !"xr0", metadata !5, i32 520, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr0] [line 520]
!288 = metadata !{i32 786688, metadata !281, metadata !"xr1", metadata !5, i32 520, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr1] [line 520]
!289 = metadata !{i32 786688, metadata !290, metadata !"ai00", metadata !5, i32 529, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai00] [line 529]
!290 = metadata !{i32 786443, metadata !1, metadata !282, i32 528, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!291 = metadata !{i32 786688, metadata !290, metadata !"ai01", metadata !5, i32 529, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai01] [line 529]
!292 = metadata !{i32 786688, metadata !290, metadata !"ai11", metadata !5, i32 529, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai11] [line 529]
!293 = metadata !{i32 786688, metadata !290, metadata !"ar00", metadata !5, i32 529, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar00] [line 529]
!294 = metadata !{i32 786688, metadata !290, metadata !"ar01", metadata !5, i32 529, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar01] [line 529]
!295 = metadata !{i32 786688, metadata !290, metadata !"ar11", metadata !5, i32 529, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar11] [line 529]
!296 = metadata !{i32 786688, metadata !290, metadata !"xi00", metadata !5, i32 530, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi00] [line 530]
!297 = metadata !{i32 786688, metadata !290, metadata !"xi01", metadata !5, i32 530, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi01] [line 530]
!298 = metadata !{i32 786688, metadata !290, metadata !"xi10", metadata !5, i32 530, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi10] [line 530]
!299 = metadata !{i32 786688, metadata !290, metadata !"xi11", metadata !5, i32 530, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi11] [line 530]
!300 = metadata !{i32 786688, metadata !290, metadata !"xr00", metadata !5, i32 530, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr00] [line 530]
!301 = metadata !{i32 786688, metadata !290, metadata !"xr01", metadata !5, i32 530, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr01] [line 530]
!302 = metadata !{i32 786688, metadata !290, metadata !"xr10", metadata !5, i32 530, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr10] [line 530]
!303 = metadata !{i32 786688, metadata !290, metadata !"xr11", metadata !5, i32 530, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr11] [line 530]
!304 = metadata !{i32 786688, metadata !290, metadata !"iloc0", metadata !5, i32 531, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc0] [line 531]
!305 = metadata !{i32 786688, metadata !290, metadata !"iloc1", metadata !5, i32 531, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc1] [line 531]
!306 = metadata !{i32 786688, metadata !290, metadata !"rloc0", metadata !5, i32 531, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc0] [line 531]
!307 = metadata !{i32 786688, metadata !290, metadata !"rloc1", metadata !5, i32 531, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc1] [line 531]
!308 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"block_diagonal_sym_scale3vec", metadata !"block_diagonal_sym_scale3vec", metadata !"", i32 346, metadata !50, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !309, i32 354} ; [ DW_TAG_subprogram ] [line 346] [local] [def] [scope 354] [block_diagonal_sym_scale3vec]
!309 = metadata !{metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !323, metadata !324, metadata !325, metadata !329, metadata !330, metadata !331, metadata !332, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !357, metadata !358, metadata !359, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381}
!310 = metadata !{i32 786689, metadata !308, metadata !"mtxA", metadata !5, i32 16777563, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 347]
!311 = metadata !{i32 786689, metadata !308, metadata !"y0", metadata !5, i32 33554780, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y0] [line 348]
!312 = metadata !{i32 786689, metadata !308, metadata !"y1", metadata !5, i32 50331997, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 349]
!313 = metadata !{i32 786689, metadata !308, metadata !"y2", metadata !5, i32 67109214, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y2] [line 350]
!314 = metadata !{i32 786689, metadata !308, metadata !"x0", metadata !5, i32 83886431, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 351]
!315 = metadata !{i32 786689, metadata !308, metadata !"x1", metadata !5, i32 100663648, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 352]
!316 = metadata !{i32 786689, metadata !308, metadata !"x2", metadata !5, i32 117440865, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x2] [line 353]
!317 = metadata !{i32 786688, metadata !308, metadata !"entries", metadata !5, i32 355, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 355]
!318 = metadata !{i32 786688, metadata !308, metadata !"nentA", metadata !5, i32 356, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentA] [line 356]
!319 = metadata !{i32 786688, metadata !308, metadata !"nrowA", metadata !5, i32 356, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 356]
!320 = metadata !{i32 786688, metadata !308, metadata !"pivotsizes", metadata !5, i32 357, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 357]
!321 = metadata !{i32 786688, metadata !322, metadata !"ipivot", metadata !5, i32 361, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipivot] [line 361]
!322 = metadata !{i32 786443, metadata !1, metadata !308, i32 360, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!323 = metadata !{i32 786688, metadata !322, metadata !"irowA", metadata !5, i32 361, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 361]
!324 = metadata !{i32 786688, metadata !322, metadata !"kk", metadata !5, i32 361, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 361]
!325 = metadata !{i32 786688, metadata !326, metadata !"a00", metadata !5, i32 365, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a00] [line 365]
!326 = metadata !{i32 786443, metadata !1, metadata !327, i32 364, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!327 = metadata !{i32 786443, metadata !1, metadata !328, i32 363, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!328 = metadata !{i32 786443, metadata !1, metadata !322, i32 363, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!329 = metadata !{i32 786688, metadata !326, metadata !"x00", metadata !5, i32 365, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x00] [line 365]
!330 = metadata !{i32 786688, metadata !326, metadata !"x01", metadata !5, i32 365, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x01] [line 365]
!331 = metadata !{i32 786688, metadata !326, metadata !"x02", metadata !5, i32 365, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x02] [line 365]
!332 = metadata !{i32 786688, metadata !333, metadata !"a00", metadata !5, i32 376, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a00] [line 376]
!333 = metadata !{i32 786443, metadata !1, metadata !327, i32 375, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!334 = metadata !{i32 786688, metadata !333, metadata !"a01", metadata !5, i32 376, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a01] [line 376]
!335 = metadata !{i32 786688, metadata !333, metadata !"a11", metadata !5, i32 376, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a11] [line 376]
!336 = metadata !{i32 786688, metadata !333, metadata !"x00", metadata !5, i32 377, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x00] [line 377]
!337 = metadata !{i32 786688, metadata !333, metadata !"x01", metadata !5, i32 377, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x01] [line 377]
!338 = metadata !{i32 786688, metadata !333, metadata !"x02", metadata !5, i32 377, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x02] [line 377]
!339 = metadata !{i32 786688, metadata !333, metadata !"x10", metadata !5, i32 377, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x10] [line 377]
!340 = metadata !{i32 786688, metadata !333, metadata !"x11", metadata !5, i32 377, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x11] [line 377]
!341 = metadata !{i32 786688, metadata !333, metadata !"x12", metadata !5, i32 377, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x12] [line 377]
!342 = metadata !{i32 786688, metadata !343, metadata !"iloc", metadata !5, i32 402, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 402]
!343 = metadata !{i32 786443, metadata !1, metadata !308, i32 401, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!344 = metadata !{i32 786688, metadata !343, metadata !"ipivot", metadata !5, i32 402, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipivot] [line 402]
!345 = metadata !{i32 786688, metadata !343, metadata !"irowA", metadata !5, i32 402, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 402]
!346 = metadata !{i32 786688, metadata !343, metadata !"kk", metadata !5, i32 402, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 402]
!347 = metadata !{i32 786688, metadata !343, metadata !"rloc", metadata !5, i32 402, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 402]
!348 = metadata !{i32 786688, metadata !349, metadata !"ai00", metadata !5, i32 408, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai00] [line 408]
!349 = metadata !{i32 786443, metadata !1, metadata !350, i32 407, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!350 = metadata !{i32 786443, metadata !1, metadata !351, i32 406, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!351 = metadata !{i32 786443, metadata !1, metadata !343, i32 404, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!352 = metadata !{i32 786688, metadata !349, metadata !"ar00", metadata !5, i32 408, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar00] [line 408]
!353 = metadata !{i32 786688, metadata !349, metadata !"xi0", metadata !5, i32 408, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi0] [line 408]
!354 = metadata !{i32 786688, metadata !349, metadata !"xi1", metadata !5, i32 408, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi1] [line 408]
!355 = metadata !{i32 786688, metadata !349, metadata !"xi2", metadata !5, i32 408, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi2] [line 408]
!356 = metadata !{i32 786688, metadata !349, metadata !"xr0", metadata !5, i32 408, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr0] [line 408]
!357 = metadata !{i32 786688, metadata !349, metadata !"xr1", metadata !5, i32 408, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr1] [line 408]
!358 = metadata !{i32 786688, metadata !349, metadata !"xr2", metadata !5, i32 408, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr2] [line 408]
!359 = metadata !{i32 786688, metadata !360, metadata !"ai00", metadata !5, i32 419, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai00] [line 419]
!360 = metadata !{i32 786443, metadata !1, metadata !350, i32 418, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!361 = metadata !{i32 786688, metadata !360, metadata !"ai01", metadata !5, i32 419, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai01] [line 419]
!362 = metadata !{i32 786688, metadata !360, metadata !"ai11", metadata !5, i32 419, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai11] [line 419]
!363 = metadata !{i32 786688, metadata !360, metadata !"ar00", metadata !5, i32 419, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar00] [line 419]
!364 = metadata !{i32 786688, metadata !360, metadata !"ar01", metadata !5, i32 419, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar01] [line 419]
!365 = metadata !{i32 786688, metadata !360, metadata !"ar11", metadata !5, i32 419, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar11] [line 419]
!366 = metadata !{i32 786688, metadata !360, metadata !"xi00", metadata !5, i32 420, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi00] [line 420]
!367 = metadata !{i32 786688, metadata !360, metadata !"xi01", metadata !5, i32 420, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi01] [line 420]
!368 = metadata !{i32 786688, metadata !360, metadata !"xi02", metadata !5, i32 420, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi02] [line 420]
!369 = metadata !{i32 786688, metadata !360, metadata !"xi10", metadata !5, i32 420, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi10] [line 420]
!370 = metadata !{i32 786688, metadata !360, metadata !"xi11", metadata !5, i32 420, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi11] [line 420]
!371 = metadata !{i32 786688, metadata !360, metadata !"xi12", metadata !5, i32 420, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi12] [line 420]
!372 = metadata !{i32 786688, metadata !360, metadata !"xr00", metadata !5, i32 421, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr00] [line 421]
!373 = metadata !{i32 786688, metadata !360, metadata !"xr01", metadata !5, i32 421, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr01] [line 421]
!374 = metadata !{i32 786688, metadata !360, metadata !"xr02", metadata !5, i32 421, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr02] [line 421]
!375 = metadata !{i32 786688, metadata !360, metadata !"xr10", metadata !5, i32 421, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr10] [line 421]
!376 = metadata !{i32 786688, metadata !360, metadata !"xr11", metadata !5, i32 421, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr11] [line 421]
!377 = metadata !{i32 786688, metadata !360, metadata !"xr12", metadata !5, i32 421, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr12] [line 421]
!378 = metadata !{i32 786688, metadata !360, metadata !"iloc0", metadata !5, i32 422, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc0] [line 422]
!379 = metadata !{i32 786688, metadata !360, metadata !"iloc1", metadata !5, i32 422, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc1] [line 422]
!380 = metadata !{i32 786688, metadata !360, metadata !"rloc0", metadata !5, i32 422, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc0] [line 422]
!381 = metadata !{i32 786688, metadata !360, metadata !"rloc1", metadata !5, i32 422, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc1] [line 422]
!382 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"diagonal_scale1vec", metadata !"diagonal_scale1vec", metadata !"", i32 307, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !383, i32 311} ; [ DW_TAG_subprogram ] [line 307] [local] [def] [scope 311] [diagonal_scale1vec]
!383 = metadata !{metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !391, metadata !392, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399}
!384 = metadata !{i32 786689, metadata !382, metadata !"mtxA", metadata !5, i32 16777524, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 308]
!385 = metadata !{i32 786689, metadata !382, metadata !"y0", metadata !5, i32 33554741, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y0] [line 309]
!386 = metadata !{i32 786689, metadata !382, metadata !"x0", metadata !5, i32 50331958, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 310]
!387 = metadata !{i32 786688, metadata !382, metadata !"entriesA", metadata !5, i32 312, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesA] [line 312]
!388 = metadata !{i32 786688, metadata !382, metadata !"nrowA", metadata !5, i32 313, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 313]
!389 = metadata !{i32 786688, metadata !390, metadata !"a", metadata !5, i32 317, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 317]
!390 = metadata !{i32 786443, metadata !1, metadata !382, i32 316, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!391 = metadata !{i32 786688, metadata !390, metadata !"irowA", metadata !5, i32 318, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 318]
!392 = metadata !{i32 786688, metadata !393, metadata !"ai", metadata !5, i32 324, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai] [line 324]
!393 = metadata !{i32 786443, metadata !1, metadata !382, i32 323, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!394 = metadata !{i32 786688, metadata !393, metadata !"ar", metadata !5, i32 324, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar] [line 324]
!395 = metadata !{i32 786688, metadata !393, metadata !"xi0", metadata !5, i32 324, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi0] [line 324]
!396 = metadata !{i32 786688, metadata !393, metadata !"xr0", metadata !5, i32 324, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr0] [line 324]
!397 = metadata !{i32 786688, metadata !393, metadata !"iloc", metadata !5, i32 325, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 325]
!398 = metadata !{i32 786688, metadata !393, metadata !"irowA", metadata !5, i32 325, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 325]
!399 = metadata !{i32 786688, metadata !393, metadata !"rloc", metadata !5, i32 325, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 325]
!400 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"diagonal_scale2vec", metadata !"diagonal_scale2vec", metadata !"", i32 263, metadata !41, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !401, i32 269} ; [ DW_TAG_subprogram ] [line 263] [local] [def] [scope 269] [diagonal_scale2vec]
!401 = metadata !{metadata !402, metadata !403, metadata !404, metadata !405, metadata !406, metadata !407, metadata !408, metadata !409, metadata !411, metadata !412, metadata !414, metadata !415, metadata !416, metadata !417, metadata !418, metadata !419, metadata !420, metadata !421}
!402 = metadata !{i32 786689, metadata !400, metadata !"mtxA", metadata !5, i32 16777480, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 264]
!403 = metadata !{i32 786689, metadata !400, metadata !"y0", metadata !5, i32 33554697, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y0] [line 265]
!404 = metadata !{i32 786689, metadata !400, metadata !"y1", metadata !5, i32 50331914, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 266]
!405 = metadata !{i32 786689, metadata !400, metadata !"x0", metadata !5, i32 67109131, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 267]
!406 = metadata !{i32 786689, metadata !400, metadata !"x1", metadata !5, i32 83886348, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 268]
!407 = metadata !{i32 786688, metadata !400, metadata !"entriesA", metadata !5, i32 270, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesA] [line 270]
!408 = metadata !{i32 786688, metadata !400, metadata !"nrowA", metadata !5, i32 271, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 271]
!409 = metadata !{i32 786688, metadata !410, metadata !"a", metadata !5, i32 275, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 275]
!410 = metadata !{i32 786443, metadata !1, metadata !400, i32 274, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!411 = metadata !{i32 786688, metadata !410, metadata !"irowA", metadata !5, i32 276, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 276]
!412 = metadata !{i32 786688, metadata !413, metadata !"ai", metadata !5, i32 283, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai] [line 283]
!413 = metadata !{i32 786443, metadata !1, metadata !400, i32 282, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!414 = metadata !{i32 786688, metadata !413, metadata !"ar", metadata !5, i32 283, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar] [line 283]
!415 = metadata !{i32 786688, metadata !413, metadata !"xi0", metadata !5, i32 283, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi0] [line 283]
!416 = metadata !{i32 786688, metadata !413, metadata !"xi1", metadata !5, i32 283, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi1] [line 283]
!417 = metadata !{i32 786688, metadata !413, metadata !"xr0", metadata !5, i32 283, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr0] [line 283]
!418 = metadata !{i32 786688, metadata !413, metadata !"xr1", metadata !5, i32 283, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr1] [line 283]
!419 = metadata !{i32 786688, metadata !413, metadata !"iloc", metadata !5, i32 284, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 284]
!420 = metadata !{i32 786688, metadata !413, metadata !"irowA", metadata !5, i32 284, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 284]
!421 = metadata !{i32 786688, metadata !413, metadata !"rloc", metadata !5, i32 284, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 284]
!422 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"diagonal_scale3vec", metadata !"diagonal_scale3vec", metadata !"", i32 214, metadata !50, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !423, i32 222} ; [ DW_TAG_subprogram ] [line 214] [local] [def] [scope 222] [diagonal_scale3vec]
!423 = metadata !{metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433, metadata !435, metadata !436, metadata !438, metadata !439, metadata !440, metadata !441, metadata !442, metadata !443, metadata !444, metadata !445, metadata !446, metadata !447}
!424 = metadata !{i32 786689, metadata !422, metadata !"mtxA", metadata !5, i32 16777431, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 215]
!425 = metadata !{i32 786689, metadata !422, metadata !"y0", metadata !5, i32 33554648, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y0] [line 216]
!426 = metadata !{i32 786689, metadata !422, metadata !"y1", metadata !5, i32 50331865, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 217]
!427 = metadata !{i32 786689, metadata !422, metadata !"y2", metadata !5, i32 67109082, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y2] [line 218]
!428 = metadata !{i32 786689, metadata !422, metadata !"x0", metadata !5, i32 83886299, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 219]
!429 = metadata !{i32 786689, metadata !422, metadata !"x1", metadata !5, i32 100663516, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 220]
!430 = metadata !{i32 786689, metadata !422, metadata !"x2", metadata !5, i32 117440733, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x2] [line 221]
!431 = metadata !{i32 786688, metadata !422, metadata !"entriesA", metadata !5, i32 223, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesA] [line 223]
!432 = metadata !{i32 786688, metadata !422, metadata !"nrowA", metadata !5, i32 224, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 224]
!433 = metadata !{i32 786688, metadata !434, metadata !"a", metadata !5, i32 228, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 228]
!434 = metadata !{i32 786443, metadata !1, metadata !422, i32 227, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!435 = metadata !{i32 786688, metadata !434, metadata !"irowA", metadata !5, i32 229, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 229]
!436 = metadata !{i32 786688, metadata !437, metadata !"ai", metadata !5, i32 237, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai] [line 237]
!437 = metadata !{i32 786443, metadata !1, metadata !422, i32 236, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!438 = metadata !{i32 786688, metadata !437, metadata !"ar", metadata !5, i32 237, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar] [line 237]
!439 = metadata !{i32 786688, metadata !437, metadata !"xi0", metadata !5, i32 237, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi0] [line 237]
!440 = metadata !{i32 786688, metadata !437, metadata !"xi1", metadata !5, i32 237, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi1] [line 237]
!441 = metadata !{i32 786688, metadata !437, metadata !"xi2", metadata !5, i32 237, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi2] [line 237]
!442 = metadata !{i32 786688, metadata !437, metadata !"xr0", metadata !5, i32 237, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr0] [line 237]
!443 = metadata !{i32 786688, metadata !437, metadata !"xr1", metadata !5, i32 237, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr1] [line 237]
!444 = metadata !{i32 786688, metadata !437, metadata !"xr2", metadata !5, i32 237, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr2] [line 237]
!445 = metadata !{i32 786688, metadata !437, metadata !"iloc", metadata !5, i32 238, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 238]
!446 = metadata !{i32 786688, metadata !437, metadata !"irowA", metadata !5, i32 238, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 238]
!447 = metadata !{i32 786688, metadata !437, metadata !"rloc", metadata !5, i32 238, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 238]
!448 = metadata !{i32 34, i32 0, metadata !4, null}
!449 = metadata !{i32 35, i32 0, metadata !4, null}
!450 = metadata !{i32 36, i32 0, metadata !4, null}
!451 = metadata !{i32 43, i32 0, metadata !4, null}
!452 = metadata !{i32 44, i32 0, metadata !453, null}
!453 = metadata !{i32 786443, metadata !1, metadata !4, i32 43, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!454 = metadata !{metadata !"any pointer", metadata !455}
!455 = metadata !{metadata !"omnipotent char", metadata !456}
!456 = metadata !{metadata !"Simple C/C++ TBAA"}
!457 = metadata !{i32 46, i32 0, metadata !453, null}
!458 = metadata !{i32 48, i32 0, metadata !4, null}
!459 = metadata !{metadata !"int", metadata !455}
!460 = metadata !{i32 49, i32 0, metadata !461, null}
!461 = metadata !{i32 786443, metadata !1, metadata !4, i32 48, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!462 = metadata !{i32 52, i32 0, metadata !461, null}
!463 = metadata !{i32 54, i32 0, metadata !4, null}
!464 = metadata !{i32 308, i32 0, metadata !382, metadata !465}
!465 = metadata !{i32 56, i32 0, metadata !466, null}
!466 = metadata !{i32 786443, metadata !1, metadata !4, i32 54, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!467 = metadata !{i32 786689, metadata !382, metadata !"mtxA", metadata !5, i32 16777524, metadata !8, i32 0, metadata !465} ; [ DW_TAG_arg_variable ] [mtxA] [line 308]
!468 = metadata !{i32 786689, metadata !382, metadata !"y0", metadata !5, i32 33554741, metadata !22, i32 0, metadata !465} ; [ DW_TAG_arg_variable ] [y0] [line 309]
!469 = metadata !{i32 309, i32 0, metadata !382, metadata !465}
!470 = metadata !{i32 786689, metadata !382, metadata !"x0", metadata !5, i32 50331958, metadata !22, i32 0, metadata !465} ; [ DW_TAG_arg_variable ] [x0] [line 310]
!471 = metadata !{i32 310, i32 0, metadata !382, metadata !465}
!472 = metadata !{i32 312, i32 0, metadata !382, metadata !465}
!473 = metadata !{i32 313, i32 0, metadata !382, metadata !465}
!474 = metadata !{i32 315, i32 0, metadata !382, metadata !465}
!475 = metadata !{i32 316, i32 0, metadata !382, metadata !465}
!476 = metadata !{i32 786688, metadata !382, metadata !"nrowA", metadata !5, i32 313, metadata !14, i32 0, metadata !465} ; [ DW_TAG_auto_variable ] [nrowA] [line 313]
!477 = metadata !{i32 326, i32 0, metadata !478, metadata !465}
!478 = metadata !{i32 786443, metadata !1, metadata !393, i32 326, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!479 = metadata !{i32 786688, metadata !382, metadata !"entriesA", metadata !5, i32 312, metadata !22, i32 0, metadata !465} ; [ DW_TAG_auto_variable ] [entriesA] [line 312]
!480 = metadata !{i32 330, i32 0, metadata !481, metadata !465}
!481 = metadata !{i32 786443, metadata !1, metadata !478, i32 328, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!482 = metadata !{i32 319, i32 0, metadata !483, metadata !465}
!483 = metadata !{i32 786443, metadata !1, metadata !390, i32 319, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!484 = metadata !{i32 320, i32 0, metadata !485, metadata !465}
!485 = metadata !{i32 786443, metadata !1, metadata !483, i32 319, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!486 = metadata !{metadata !"double", metadata !455}
!487 = metadata !{i32 786688, metadata !390, metadata !"a", metadata !5, i32 317, metadata !23, i32 0, metadata !465} ; [ DW_TAG_auto_variable ] [a] [line 317]
!488 = metadata !{i32 321, i32 0, metadata !485, metadata !465}
!489 = metadata !{i32 329, i32 0, metadata !481, metadata !465}
!490 = metadata !{i32 786688, metadata !393, metadata !"xr0", metadata !5, i32 324, metadata !23, i32 0, metadata !465} ; [ DW_TAG_auto_variable ] [xr0] [line 324]
!491 = metadata !{i32 786688, metadata !393, metadata !"xi0", metadata !5, i32 324, metadata !23, i32 0, metadata !465} ; [ DW_TAG_auto_variable ] [xi0] [line 324]
!492 = metadata !{i32 786688, metadata !393, metadata !"ar", metadata !5, i32 324, metadata !23, i32 0, metadata !465} ; [ DW_TAG_auto_variable ] [ar] [line 324]
!493 = metadata !{i32 786688, metadata !393, metadata !"ai", metadata !5, i32 324, metadata !23, i32 0, metadata !465} ; [ DW_TAG_auto_variable ] [ai] [line 324]
!494 = metadata !{i32 331, i32 0, metadata !481, metadata !465}
!495 = metadata !{i32 328, i32 0, metadata !478, metadata !465}
!496 = metadata !{i32 786688, metadata !393, metadata !"irowA", metadata !5, i32 325, metadata !14, i32 0, metadata !465} ; [ DW_TAG_auto_variable ] [irowA] [line 325]
!497 = metadata !{i32 571, i32 0, metadata !193, metadata !498}
!498 = metadata !{i32 59, i32 0, metadata !466, null}
!499 = metadata !{i32 786689, metadata !193, metadata !"mtxA", metadata !5, i32 16777787, metadata !8, i32 0, metadata !498} ; [ DW_TAG_arg_variable ] [mtxA] [line 571]
!500 = metadata !{i32 786689, metadata !193, metadata !"y0", metadata !5, i32 33555004, metadata !22, i32 0, metadata !498} ; [ DW_TAG_arg_variable ] [y0] [line 572]
!501 = metadata !{i32 572, i32 0, metadata !193, metadata !498}
!502 = metadata !{i32 786689, metadata !193, metadata !"x0", metadata !5, i32 50332221, metadata !22, i32 0, metadata !498} ; [ DW_TAG_arg_variable ] [x0] [line 573]
!503 = metadata !{i32 573, i32 0, metadata !193, metadata !498}
!504 = metadata !{i32 575, i32 0, metadata !193, metadata !498}
!505 = metadata !{i32 576, i32 0, metadata !193, metadata !498}
!506 = metadata !{i32 577, i32 0, metadata !193, metadata !498}
!507 = metadata !{i32 579, i32 0, metadata !193, metadata !498}
!508 = metadata !{i32 580, i32 0, metadata !193, metadata !498}
!509 = metadata !{i32 786688, metadata !193, metadata !"nrowA", metadata !5, i32 576, metadata !14, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [nrowA] [line 576]
!510 = metadata !{i32 611, i32 0, metadata !226, metadata !498}
!511 = metadata !{i32 786688, metadata !193, metadata !"pivotsizes", metadata !5, i32 577, metadata !74, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 577]
!512 = metadata !{i32 614, i32 0, metadata !225, metadata !498}
!513 = metadata !{i32 786688, metadata !193, metadata !"entries", metadata !5, i32 575, metadata !22, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [entries] [line 575]
!514 = metadata !{i32 617, i32 0, metadata !224, metadata !498}
!515 = metadata !{i32 626, i32 0, metadata !231, metadata !498}
!516 = metadata !{i32 583, i32 0, metadata !209, metadata !498}
!517 = metadata !{i32 584, i32 0, metadata !208, metadata !498}
!518 = metadata !{i32 587, i32 0, metadata !207, metadata !498}
!519 = metadata !{i32 594, i32 0, metadata !212, metadata !498}
!520 = metadata !{i32 786688, metadata !207, metadata !"a00", metadata !5, i32 585, metadata !23, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [a00] [line 585]
!521 = metadata !{i32 588, i32 0, metadata !207, metadata !498}
!522 = metadata !{i32 786688, metadata !207, metadata !"x00", metadata !5, i32 585, metadata !23, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [x00] [line 585]
!523 = metadata !{i32 589, i32 0, metadata !207, metadata !498}
!524 = metadata !{i32 590, i32 0, metadata !207, metadata !498}
!525 = metadata !{i32 786688, metadata !203, metadata !"kk", metadata !5, i32 581, metadata !14, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [kk] [line 581]
!526 = metadata !{i32 786688, metadata !203, metadata !"irowA", metadata !5, i32 581, metadata !14, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [irowA] [line 581]
!527 = metadata !{i32 591, i32 0, metadata !207, metadata !498}
!528 = metadata !{i32 786688, metadata !212, metadata !"a00", metadata !5, i32 592, metadata !23, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [a00] [line 592]
!529 = metadata !{i32 595, i32 0, metadata !212, metadata !498}
!530 = metadata !{i32 786688, metadata !212, metadata !"a01", metadata !5, i32 592, metadata !23, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [a01] [line 592]
!531 = metadata !{i32 596, i32 0, metadata !212, metadata !498}
!532 = metadata !{i32 786688, metadata !212, metadata !"a11", metadata !5, i32 592, metadata !23, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [a11] [line 592]
!533 = metadata !{i32 597, i32 0, metadata !212, metadata !498}
!534 = metadata !{i32 786688, metadata !212, metadata !"x00", metadata !5, i32 592, metadata !23, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [x00] [line 592]
!535 = metadata !{i32 598, i32 0, metadata !212, metadata !498}
!536 = metadata !{i32 786688, metadata !212, metadata !"x10", metadata !5, i32 592, metadata !23, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [x10] [line 592]
!537 = metadata !{i32 599, i32 0, metadata !212, metadata !498}
!538 = metadata !{i32 600, i32 0, metadata !212, metadata !498}
!539 = metadata !{i32 601, i32 0, metadata !212, metadata !498}
!540 = metadata !{i32 603, i32 0, metadata !541, metadata !498}
!541 = metadata !{i32 786443, metadata !1, metadata !208, i32 602, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!542 = metadata !{i32 605, i32 0, metadata !541, metadata !498}
!543 = metadata !{i32 786688, metadata !203, metadata !"ipivot", metadata !5, i32 581, metadata !14, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [ipivot] [line 581]
!544 = metadata !{i32 786688, metadata !224, metadata !"ar00", metadata !5, i32 615, metadata !23, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [ar00] [line 615]
!545 = metadata !{i32 786688, metadata !224, metadata !"ai00", metadata !5, i32 615, metadata !23, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [ai00] [line 615]
!546 = metadata !{i32 618, i32 0, metadata !224, metadata !498}
!547 = metadata !{i32 786688, metadata !224, metadata !"xr0", metadata !5, i32 615, metadata !23, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [xr0] [line 615]
!548 = metadata !{i32 786688, metadata !224, metadata !"xi0", metadata !5, i32 615, metadata !23, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [xi0] [line 615]
!549 = metadata !{i32 619, i32 0, metadata !224, metadata !498}
!550 = metadata !{i32 620, i32 0, metadata !224, metadata !498}
!551 = metadata !{i32 786688, metadata !218, metadata !"kk", metadata !5, i32 609, metadata !14, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [kk] [line 609]
!552 = metadata !{i32 786688, metadata !218, metadata !"irowA", metadata !5, i32 609, metadata !14, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [irowA] [line 609]
!553 = metadata !{i32 786688, metadata !218, metadata !"rloc", metadata !5, i32 609, metadata !14, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [rloc] [line 609]
!554 = metadata !{i32 786688, metadata !218, metadata !"iloc", metadata !5, i32 609, metadata !14, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [iloc] [line 609]
!555 = metadata !{i32 621, i32 0, metadata !224, metadata !498}
!556 = metadata !{i32 786688, metadata !231, metadata !"ar00", metadata !5, i32 622, metadata !23, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [ar00] [line 622]
!557 = metadata !{i32 786688, metadata !231, metadata !"ai00", metadata !5, i32 622, metadata !23, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [ai00] [line 622]
!558 = metadata !{i32 627, i32 0, metadata !231, metadata !498}
!559 = metadata !{i32 786688, metadata !231, metadata !"ar01", metadata !5, i32 622, metadata !23, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [ar01] [line 622]
!560 = metadata !{i32 786688, metadata !231, metadata !"ai01", metadata !5, i32 622, metadata !23, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [ai01] [line 622]
!561 = metadata !{i32 628, i32 0, metadata !231, metadata !498}
!562 = metadata !{i32 786688, metadata !231, metadata !"ar11", metadata !5, i32 622, metadata !23, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [ar11] [line 622]
!563 = metadata !{i32 786688, metadata !231, metadata !"ai11", metadata !5, i32 622, metadata !23, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [ai11] [line 622]
!564 = metadata !{i32 786688, metadata !231, metadata !"rloc0", metadata !5, i32 624, metadata !14, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [rloc0] [line 624]
!565 = metadata !{i32 629, i32 0, metadata !231, metadata !498}
!566 = metadata !{i32 786688, metadata !231, metadata !"iloc0", metadata !5, i32 624, metadata !14, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [iloc0] [line 624]
!567 = metadata !{i32 630, i32 0, metadata !231, metadata !498}
!568 = metadata !{i32 786688, metadata !231, metadata !"rloc1", metadata !5, i32 624, metadata !14, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [rloc1] [line 624]
!569 = metadata !{i32 786688, metadata !231, metadata !"iloc1", metadata !5, i32 624, metadata !14, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [iloc1] [line 624]
!570 = metadata !{i32 631, i32 0, metadata !231, metadata !498}
!571 = metadata !{i32 786688, metadata !231, metadata !"xr00", metadata !5, i32 623, metadata !23, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [xr00] [line 623]
!572 = metadata !{i32 786688, metadata !231, metadata !"xi00", metadata !5, i32 623, metadata !23, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [xi00] [line 623]
!573 = metadata !{i32 632, i32 0, metadata !231, metadata !498}
!574 = metadata !{i32 786688, metadata !231, metadata !"xr10", metadata !5, i32 623, metadata !23, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [xr10] [line 623]
!575 = metadata !{i32 786688, metadata !231, metadata !"xi10", metadata !5, i32 623, metadata !23, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [xi10] [line 623]
!576 = metadata !{i32 633, i32 0, metadata !231, metadata !498}
!577 = metadata !{i32 634, i32 0, metadata !231, metadata !498}
!578 = metadata !{i32 635, i32 0, metadata !231, metadata !498}
!579 = metadata !{i32 636, i32 0, metadata !231, metadata !498}
!580 = metadata !{i32 637, i32 0, metadata !231, metadata !498}
!581 = metadata !{i32 639, i32 0, metadata !582, metadata !498}
!582 = metadata !{i32 786443, metadata !1, metadata !225, i32 638, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!583 = metadata !{i32 641, i32 0, metadata !582, metadata !498}
!584 = metadata !{i32 613, i32 0, metadata !226, metadata !498}
!585 = metadata !{i32 786688, metadata !218, metadata !"ipivot", metadata !5, i32 609, metadata !14, i32 0, metadata !498} ; [ DW_TAG_auto_variable ] [ipivot] [line 609]
!586 = metadata !{i32 62, i32 0, metadata !466, null}
!587 = metadata !{i32 63, i32 0, metadata !588, null}
!588 = metadata !{i32 786443, metadata !1, metadata !466, i32 62, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!589 = metadata !{i32 66, i32 0, metadata !588, null}
!590 = metadata !{i32 815, i32 0, metadata !60, metadata !591}
!591 = metadata !{i32 68, i32 0, metadata !466, null}
!592 = metadata !{i32 786689, metadata !60, metadata !"mtxA", metadata !5, i32 16778031, metadata !8, i32 0, metadata !591} ; [ DW_TAG_arg_variable ] [mtxA] [line 815]
!593 = metadata !{i32 786689, metadata !60, metadata !"y0", metadata !5, i32 33555248, metadata !22, i32 0, metadata !591} ; [ DW_TAG_arg_variable ] [y0] [line 816]
!594 = metadata !{i32 816, i32 0, metadata !60, metadata !591}
!595 = metadata !{i32 786689, metadata !60, metadata !"x0", metadata !5, i32 50332465, metadata !22, i32 0, metadata !591} ; [ DW_TAG_arg_variable ] [x0] [line 817]
!596 = metadata !{i32 817, i32 0, metadata !60, metadata !591}
!597 = metadata !{i32 819, i32 0, metadata !60, metadata !591}
!598 = metadata !{i32 820, i32 0, metadata !60, metadata !591}
!599 = metadata !{i32 821, i32 0, metadata !60, metadata !591}
!600 = metadata !{i32 823, i32 0, metadata !60, metadata !591}
!601 = metadata !{i32 786688, metadata !60, metadata !"rloc", metadata !5, i32 820, metadata !14, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [rloc] [line 820]
!602 = metadata !{i32 824, i32 0, metadata !78, metadata !591}
!603 = metadata !{i32 786688, metadata !60, metadata !"kk", metadata !5, i32 820, metadata !14, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [kk] [line 820]
!604 = metadata !{i32 786688, metadata !60, metadata !"ipivot", metadata !5, i32 820, metadata !14, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [ipivot] [line 820]
!605 = metadata !{i32 786688, metadata !60, metadata !"irowA", metadata !5, i32 820, metadata !14, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [irowA] [line 820]
!606 = metadata !{i32 1}
!607 = metadata !{i32 786688, metadata !60, metadata !"iloc", metadata !5, i32 820, metadata !14, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [iloc] [line 820]
!608 = metadata !{i32 786688, metadata !60, metadata !"nrowA", metadata !5, i32 820, metadata !14, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [nrowA] [line 820]
!609 = metadata !{i32 786688, metadata !60, metadata !"pivotsizes", metadata !5, i32 821, metadata !74, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 821]
!610 = metadata !{i32 827, i32 0, metadata !77, metadata !591}
!611 = metadata !{i32 786688, metadata !60, metadata !"entries", metadata !5, i32 819, metadata !22, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [entries] [line 819]
!612 = metadata !{i32 833, i32 0, metadata !76, metadata !591}
!613 = metadata !{i32 849, i32 0, metadata !83, metadata !591}
!614 = metadata !{i32 786688, metadata !76, metadata !"ar00", metadata !5, i32 828, metadata !23, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [ar00] [line 828]
!615 = metadata !{double 0.000000e+00}
!616 = metadata !{i32 786688, metadata !76, metadata !"ai00", metadata !5, i32 828, metadata !23, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [ai00] [line 828]
!617 = metadata !{i32 834, i32 0, metadata !76, metadata !591}
!618 = metadata !{i32 786688, metadata !76, metadata !"xr0", metadata !5, i32 828, metadata !23, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [xr0] [line 828]
!619 = metadata !{i32 786688, metadata !76, metadata !"xi0", metadata !5, i32 828, metadata !23, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [xi0] [line 828]
!620 = metadata !{i32 835, i32 0, metadata !76, metadata !591}
!621 = metadata !{i32 836, i32 0, metadata !76, metadata !591}
!622 = metadata !{i32 837, i32 0, metadata !76, metadata !591}
!623 = metadata !{i32 786688, metadata !83, metadata !"rloc0", metadata !5, i32 840, metadata !14, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [rloc0] [line 840]
!624 = metadata !{i32 842, i32 0, metadata !83, metadata !591}
!625 = metadata !{i32 786688, metadata !83, metadata !"iloc0", metadata !5, i32 840, metadata !14, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [iloc0] [line 840]
!626 = metadata !{i32 843, i32 0, metadata !83, metadata !591}
!627 = metadata !{i32 786688, metadata !83, metadata !"rloc1", metadata !5, i32 840, metadata !14, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [rloc1] [line 840]
!628 = metadata !{i32 786688, metadata !83, metadata !"iloc1", metadata !5, i32 840, metadata !14, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [iloc1] [line 840]
!629 = metadata !{i32 786688, metadata !83, metadata !"ar00", metadata !5, i32 838, metadata !23, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [ar00] [line 838]
!630 = metadata !{i32 786688, metadata !83, metadata !"ai00", metadata !5, i32 838, metadata !23, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [ai00] [line 838]
!631 = metadata !{i32 850, i32 0, metadata !83, metadata !591}
!632 = metadata !{i32 786688, metadata !83, metadata !"ar01", metadata !5, i32 838, metadata !23, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [ar01] [line 838]
!633 = metadata !{i32 786688, metadata !83, metadata !"ai01", metadata !5, i32 838, metadata !23, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [ai01] [line 838]
!634 = metadata !{i32 851, i32 0, metadata !83, metadata !591}
!635 = metadata !{i32 786688, metadata !83, metadata !"ar11", metadata !5, i32 838, metadata !23, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [ar11] [line 838]
!636 = metadata !{i32 786688, metadata !83, metadata !"ai11", metadata !5, i32 838, metadata !23, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [ai11] [line 838]
!637 = metadata !{i32 852, i32 0, metadata !83, metadata !591}
!638 = metadata !{i32 786688, metadata !83, metadata !"xr00", metadata !5, i32 839, metadata !23, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [xr00] [line 839]
!639 = metadata !{i32 786688, metadata !83, metadata !"xi00", metadata !5, i32 839, metadata !23, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [xi00] [line 839]
!640 = metadata !{i32 853, i32 0, metadata !83, metadata !591}
!641 = metadata !{i32 786688, metadata !83, metadata !"xr10", metadata !5, i32 839, metadata !23, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [xr10] [line 839]
!642 = metadata !{i32 786688, metadata !83, metadata !"xi10", metadata !5, i32 839, metadata !23, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [xi10] [line 839]
!643 = metadata !{i32 854, i32 0, metadata !83, metadata !591}
!644 = metadata !{i32 855, i32 0, metadata !83, metadata !591}
!645 = metadata !{i32 856, i32 0, metadata !83, metadata !591}
!646 = metadata !{i32 857, i32 0, metadata !83, metadata !591}
!647 = metadata !{i32 858, i32 0, metadata !83, metadata !591}
!648 = metadata !{i32 860, i32 0, metadata !649, metadata !591}
!649 = metadata !{i32 786443, metadata !1, metadata !77, i32 859, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!650 = metadata !{i32 862, i32 0, metadata !649, metadata !591}
!651 = metadata !{i32 826, i32 0, metadata !78, metadata !591}
!652 = metadata !{i32 71, i32 0, metadata !466, null}
!653 = metadata !{i32 76, i32 0, metadata !466, null}
!654 = metadata !{i32 78, i32 0, metadata !4, null}
!655 = metadata !{i32 90, i32 0, metadata !40, null}
!656 = metadata !{i32 91, i32 0, metadata !40, null}
!657 = metadata !{i32 92, i32 0, metadata !40, null}
!658 = metadata !{i32 93, i32 0, metadata !40, null}
!659 = metadata !{i32 94, i32 0, metadata !40, null}
!660 = metadata !{i32 101, i32 0, metadata !40, null}
!661 = metadata !{i32 103, i32 0, metadata !662, null}
!662 = metadata !{i32 786443, metadata !1, metadata !40, i32 102, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!663 = metadata !{i32 105, i32 0, metadata !662, null}
!664 = metadata !{i32 107, i32 0, metadata !40, null}
!665 = metadata !{i32 108, i32 0, metadata !666, null}
!666 = metadata !{i32 786443, metadata !1, metadata !40, i32 107, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!667 = metadata !{i32 111, i32 0, metadata !666, null}
!668 = metadata !{i32 113, i32 0, metadata !40, null}
!669 = metadata !{i32 264, i32 0, metadata !400, metadata !670}
!670 = metadata !{i32 115, i32 0, metadata !671, null}
!671 = metadata !{i32 786443, metadata !1, metadata !40, i32 113, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!672 = metadata !{i32 786689, metadata !400, metadata !"mtxA", metadata !5, i32 16777480, metadata !8, i32 0, metadata !670} ; [ DW_TAG_arg_variable ] [mtxA] [line 264]
!673 = metadata !{i32 786689, metadata !400, metadata !"y0", metadata !5, i32 33554697, metadata !22, i32 0, metadata !670} ; [ DW_TAG_arg_variable ] [y0] [line 265]
!674 = metadata !{i32 265, i32 0, metadata !400, metadata !670}
!675 = metadata !{i32 786689, metadata !400, metadata !"y1", metadata !5, i32 50331914, metadata !22, i32 0, metadata !670} ; [ DW_TAG_arg_variable ] [y1] [line 266]
!676 = metadata !{i32 266, i32 0, metadata !400, metadata !670}
!677 = metadata !{i32 786689, metadata !400, metadata !"x0", metadata !5, i32 67109131, metadata !22, i32 0, metadata !670} ; [ DW_TAG_arg_variable ] [x0] [line 267]
!678 = metadata !{i32 267, i32 0, metadata !400, metadata !670}
!679 = metadata !{i32 786689, metadata !400, metadata !"x1", metadata !5, i32 83886348, metadata !22, i32 0, metadata !670} ; [ DW_TAG_arg_variable ] [x1] [line 268]
!680 = metadata !{i32 268, i32 0, metadata !400, metadata !670}
!681 = metadata !{i32 270, i32 0, metadata !400, metadata !670}
!682 = metadata !{i32 271, i32 0, metadata !400, metadata !670}
!683 = metadata !{i32 273, i32 0, metadata !400, metadata !670}
!684 = metadata !{i32 274, i32 0, metadata !400, metadata !670}
!685 = metadata !{i32 786688, metadata !400, metadata !"nrowA", metadata !5, i32 271, metadata !14, i32 0, metadata !670} ; [ DW_TAG_auto_variable ] [nrowA] [line 271]
!686 = metadata !{i32 285, i32 0, metadata !687, metadata !670}
!687 = metadata !{i32 786443, metadata !1, metadata !413, i32 285, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!688 = metadata !{i32 786688, metadata !400, metadata !"entriesA", metadata !5, i32 270, metadata !22, i32 0, metadata !670} ; [ DW_TAG_auto_variable ] [entriesA] [line 270]
!689 = metadata !{i32 290, i32 0, metadata !690, metadata !670}
!690 = metadata !{i32 786443, metadata !1, metadata !687, i32 287, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!691 = metadata !{i32 277, i32 0, metadata !692, metadata !670}
!692 = metadata !{i32 786443, metadata !1, metadata !410, i32 277, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!693 = metadata !{i32 278, i32 0, metadata !694, metadata !670}
!694 = metadata !{i32 786443, metadata !1, metadata !692, i32 277, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!695 = metadata !{i32 786688, metadata !410, metadata !"a", metadata !5, i32 275, metadata !23, i32 0, metadata !670} ; [ DW_TAG_auto_variable ] [a] [line 275]
!696 = metadata !{i32 279, i32 0, metadata !694, metadata !670}
!697 = metadata !{i32 280, i32 0, metadata !694, metadata !670}
!698 = metadata !{i32 288, i32 0, metadata !690, metadata !670}
!699 = metadata !{i32 786688, metadata !413, metadata !"xr0", metadata !5, i32 283, metadata !23, i32 0, metadata !670} ; [ DW_TAG_auto_variable ] [xr0] [line 283]
!700 = metadata !{i32 786688, metadata !413, metadata !"xi0", metadata !5, i32 283, metadata !23, i32 0, metadata !670} ; [ DW_TAG_auto_variable ] [xi0] [line 283]
!701 = metadata !{i32 289, i32 0, metadata !690, metadata !670}
!702 = metadata !{i32 786688, metadata !413, metadata !"xr1", metadata !5, i32 283, metadata !23, i32 0, metadata !670} ; [ DW_TAG_auto_variable ] [xr1] [line 283]
!703 = metadata !{i32 786688, metadata !413, metadata !"xi1", metadata !5, i32 283, metadata !23, i32 0, metadata !670} ; [ DW_TAG_auto_variable ] [xi1] [line 283]
!704 = metadata !{i32 786688, metadata !413, metadata !"ar", metadata !5, i32 283, metadata !23, i32 0, metadata !670} ; [ DW_TAG_auto_variable ] [ar] [line 283]
!705 = metadata !{i32 786688, metadata !413, metadata !"ai", metadata !5, i32 283, metadata !23, i32 0, metadata !670} ; [ DW_TAG_auto_variable ] [ai] [line 283]
!706 = metadata !{i32 291, i32 0, metadata !690, metadata !670}
!707 = metadata !{i32 292, i32 0, metadata !690, metadata !670}
!708 = metadata !{i32 287, i32 0, metadata !687, metadata !670}
!709 = metadata !{i32 786688, metadata !413, metadata !"irowA", metadata !5, i32 284, metadata !14, i32 0, metadata !670} ; [ DW_TAG_auto_variable ] [irowA] [line 284]
!710 = metadata !{i32 468, i32 0, metadata !245, metadata !711}
!711 = metadata !{i32 118, i32 0, metadata !671, null}
!712 = metadata !{i32 786689, metadata !245, metadata !"mtxA", metadata !5, i32 16777684, metadata !8, i32 0, metadata !711} ; [ DW_TAG_arg_variable ] [mtxA] [line 468]
!713 = metadata !{i32 786689, metadata !245, metadata !"y0", metadata !5, i32 33554901, metadata !22, i32 0, metadata !711} ; [ DW_TAG_arg_variable ] [y0] [line 469]
!714 = metadata !{i32 469, i32 0, metadata !245, metadata !711}
!715 = metadata !{i32 786689, metadata !245, metadata !"y1", metadata !5, i32 50332118, metadata !22, i32 0, metadata !711} ; [ DW_TAG_arg_variable ] [y1] [line 470]
!716 = metadata !{i32 470, i32 0, metadata !245, metadata !711}
!717 = metadata !{i32 786689, metadata !245, metadata !"x0", metadata !5, i32 67109335, metadata !22, i32 0, metadata !711} ; [ DW_TAG_arg_variable ] [x0] [line 471]
!718 = metadata !{i32 471, i32 0, metadata !245, metadata !711}
!719 = metadata !{i32 786689, metadata !245, metadata !"x1", metadata !5, i32 83886552, metadata !22, i32 0, metadata !711} ; [ DW_TAG_arg_variable ] [x1] [line 472]
!720 = metadata !{i32 472, i32 0, metadata !245, metadata !711}
!721 = metadata !{i32 474, i32 0, metadata !245, metadata !711}
!722 = metadata !{i32 475, i32 0, metadata !245, metadata !711}
!723 = metadata !{i32 476, i32 0, metadata !245, metadata !711}
!724 = metadata !{i32 478, i32 0, metadata !245, metadata !711}
!725 = metadata !{i32 479, i32 0, metadata !245, metadata !711}
!726 = metadata !{i32 786688, metadata !245, metadata !"nrowA", metadata !5, i32 475, metadata !14, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [nrowA] [line 475]
!727 = metadata !{i32 516, i32 0, metadata !283, metadata !711}
!728 = metadata !{i32 786688, metadata !245, metadata !"pivotsizes", metadata !5, i32 476, metadata !74, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 476]
!729 = metadata !{i32 519, i32 0, metadata !282, metadata !711}
!730 = metadata !{i32 786688, metadata !245, metadata !"entries", metadata !5, i32 474, metadata !22, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [entries] [line 474]
!731 = metadata !{i32 522, i32 0, metadata !281, metadata !711}
!732 = metadata !{i32 533, i32 0, metadata !290, metadata !711}
!733 = metadata !{i32 482, i32 0, metadata !263, metadata !711}
!734 = metadata !{i32 483, i32 0, metadata !262, metadata !711}
!735 = metadata !{i32 486, i32 0, metadata !261, metadata !711}
!736 = metadata !{i32 495, i32 0, metadata !267, metadata !711}
!737 = metadata !{i32 786688, metadata !261, metadata !"a00", metadata !5, i32 484, metadata !23, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [a00] [line 484]
!738 = metadata !{i32 487, i32 0, metadata !261, metadata !711}
!739 = metadata !{i32 786688, metadata !261, metadata !"x00", metadata !5, i32 484, metadata !23, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [x00] [line 484]
!740 = metadata !{i32 488, i32 0, metadata !261, metadata !711}
!741 = metadata !{i32 786688, metadata !261, metadata !"x01", metadata !5, i32 484, metadata !23, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [x01] [line 484]
!742 = metadata !{i32 489, i32 0, metadata !261, metadata !711}
!743 = metadata !{i32 490, i32 0, metadata !261, metadata !711}
!744 = metadata !{i32 491, i32 0, metadata !261, metadata !711}
!745 = metadata !{i32 786688, metadata !257, metadata !"kk", metadata !5, i32 480, metadata !14, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [kk] [line 480]
!746 = metadata !{i32 786688, metadata !257, metadata !"irowA", metadata !5, i32 480, metadata !14, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [irowA] [line 480]
!747 = metadata !{i32 492, i32 0, metadata !261, metadata !711}
!748 = metadata !{i32 786688, metadata !267, metadata !"a00", metadata !5, i32 493, metadata !23, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [a00] [line 493]
!749 = metadata !{i32 496, i32 0, metadata !267, metadata !711}
!750 = metadata !{i32 786688, metadata !267, metadata !"a01", metadata !5, i32 493, metadata !23, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [a01] [line 493]
!751 = metadata !{i32 497, i32 0, metadata !267, metadata !711}
!752 = metadata !{i32 786688, metadata !267, metadata !"a11", metadata !5, i32 493, metadata !23, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [a11] [line 493]
!753 = metadata !{i32 498, i32 0, metadata !267, metadata !711}
!754 = metadata !{i32 786688, metadata !267, metadata !"x00", metadata !5, i32 493, metadata !23, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [x00] [line 493]
!755 = metadata !{i32 499, i32 0, metadata !267, metadata !711}
!756 = metadata !{i32 786688, metadata !267, metadata !"x01", metadata !5, i32 493, metadata !23, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [x01] [line 493]
!757 = metadata !{i32 500, i32 0, metadata !267, metadata !711}
!758 = metadata !{i32 786688, metadata !267, metadata !"x10", metadata !5, i32 493, metadata !23, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [x10] [line 493]
!759 = metadata !{i32 501, i32 0, metadata !267, metadata !711}
!760 = metadata !{i32 786688, metadata !267, metadata !"x11", metadata !5, i32 493, metadata !23, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [x11] [line 493]
!761 = metadata !{i32 502, i32 0, metadata !267, metadata !711}
!762 = metadata !{i32 503, i32 0, metadata !267, metadata !711}
!763 = metadata !{i32 504, i32 0, metadata !267, metadata !711}
!764 = metadata !{i32 505, i32 0, metadata !267, metadata !711}
!765 = metadata !{i32 506, i32 0, metadata !267, metadata !711}
!766 = metadata !{i32 508, i32 0, metadata !767, metadata !711}
!767 = metadata !{i32 786443, metadata !1, metadata !262, i32 507, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!768 = metadata !{i32 510, i32 0, metadata !767, metadata !711}
!769 = metadata !{i32 786688, metadata !257, metadata !"ipivot", metadata !5, i32 480, metadata !14, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [ipivot] [line 480]
!770 = metadata !{i32 786688, metadata !281, metadata !"ar00", metadata !5, i32 520, metadata !23, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [ar00] [line 520]
!771 = metadata !{i32 786688, metadata !281, metadata !"ai00", metadata !5, i32 520, metadata !23, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [ai00] [line 520]
!772 = metadata !{i32 523, i32 0, metadata !281, metadata !711}
!773 = metadata !{i32 786688, metadata !281, metadata !"xr0", metadata !5, i32 520, metadata !23, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [xr0] [line 520]
!774 = metadata !{i32 786688, metadata !281, metadata !"xi0", metadata !5, i32 520, metadata !23, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [xi0] [line 520]
!775 = metadata !{i32 524, i32 0, metadata !281, metadata !711}
!776 = metadata !{i32 786688, metadata !281, metadata !"xr1", metadata !5, i32 520, metadata !23, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [xr1] [line 520]
!777 = metadata !{i32 786688, metadata !281, metadata !"xi1", metadata !5, i32 520, metadata !23, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [xi1] [line 520]
!778 = metadata !{i32 525, i32 0, metadata !281, metadata !711}
!779 = metadata !{i32 526, i32 0, metadata !281, metadata !711}
!780 = metadata !{i32 527, i32 0, metadata !281, metadata !711}
!781 = metadata !{i32 786688, metadata !275, metadata !"kk", metadata !5, i32 514, metadata !14, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [kk] [line 514]
!782 = metadata !{i32 786688, metadata !275, metadata !"irowA", metadata !5, i32 514, metadata !14, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [irowA] [line 514]
!783 = metadata !{i32 786688, metadata !275, metadata !"rloc", metadata !5, i32 514, metadata !14, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [rloc] [line 514]
!784 = metadata !{i32 786688, metadata !275, metadata !"iloc", metadata !5, i32 514, metadata !14, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [iloc] [line 514]
!785 = metadata !{i32 528, i32 0, metadata !281, metadata !711}
!786 = metadata !{i32 786688, metadata !290, metadata !"ar00", metadata !5, i32 529, metadata !23, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [ar00] [line 529]
!787 = metadata !{i32 786688, metadata !290, metadata !"ai00", metadata !5, i32 529, metadata !23, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [ai00] [line 529]
!788 = metadata !{i32 534, i32 0, metadata !290, metadata !711}
!789 = metadata !{i32 786688, metadata !290, metadata !"ar01", metadata !5, i32 529, metadata !23, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [ar01] [line 529]
!790 = metadata !{i32 786688, metadata !290, metadata !"ai01", metadata !5, i32 529, metadata !23, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [ai01] [line 529]
!791 = metadata !{i32 535, i32 0, metadata !290, metadata !711}
!792 = metadata !{i32 786688, metadata !290, metadata !"ar11", metadata !5, i32 529, metadata !23, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [ar11] [line 529]
!793 = metadata !{i32 786688, metadata !290, metadata !"ai11", metadata !5, i32 529, metadata !23, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [ai11] [line 529]
!794 = metadata !{i32 786688, metadata !290, metadata !"rloc0", metadata !5, i32 531, metadata !14, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [rloc0] [line 531]
!795 = metadata !{i32 536, i32 0, metadata !290, metadata !711}
!796 = metadata !{i32 786688, metadata !290, metadata !"iloc0", metadata !5, i32 531, metadata !14, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [iloc0] [line 531]
!797 = metadata !{i32 537, i32 0, metadata !290, metadata !711}
!798 = metadata !{i32 786688, metadata !290, metadata !"rloc1", metadata !5, i32 531, metadata !14, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [rloc1] [line 531]
!799 = metadata !{i32 786688, metadata !290, metadata !"iloc1", metadata !5, i32 531, metadata !14, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [iloc1] [line 531]
!800 = metadata !{i32 538, i32 0, metadata !290, metadata !711}
!801 = metadata !{i32 786688, metadata !290, metadata !"xr00", metadata !5, i32 530, metadata !23, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [xr00] [line 530]
!802 = metadata !{i32 786688, metadata !290, metadata !"xi00", metadata !5, i32 530, metadata !23, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [xi00] [line 530]
!803 = metadata !{i32 539, i32 0, metadata !290, metadata !711}
!804 = metadata !{i32 786688, metadata !290, metadata !"xr01", metadata !5, i32 530, metadata !23, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [xr01] [line 530]
!805 = metadata !{i32 786688, metadata !290, metadata !"xi01", metadata !5, i32 530, metadata !23, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [xi01] [line 530]
!806 = metadata !{i32 540, i32 0, metadata !290, metadata !711}
!807 = metadata !{i32 786688, metadata !290, metadata !"xr10", metadata !5, i32 530, metadata !23, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [xr10] [line 530]
!808 = metadata !{i32 786688, metadata !290, metadata !"xi10", metadata !5, i32 530, metadata !23, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [xi10] [line 530]
!809 = metadata !{i32 541, i32 0, metadata !290, metadata !711}
!810 = metadata !{i32 786688, metadata !290, metadata !"xr11", metadata !5, i32 530, metadata !23, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [xr11] [line 530]
!811 = metadata !{i32 786688, metadata !290, metadata !"xi11", metadata !5, i32 530, metadata !23, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [xi11] [line 530]
!812 = metadata !{i32 542, i32 0, metadata !290, metadata !711}
!813 = metadata !{i32 543, i32 0, metadata !290, metadata !711}
!814 = metadata !{i32 544, i32 0, metadata !290, metadata !711}
!815 = metadata !{i32 545, i32 0, metadata !290, metadata !711}
!816 = metadata !{i32 546, i32 0, metadata !290, metadata !711}
!817 = metadata !{i32 547, i32 0, metadata !290, metadata !711}
!818 = metadata !{i32 548, i32 0, metadata !290, metadata !711}
!819 = metadata !{i32 549, i32 0, metadata !290, metadata !711}
!820 = metadata !{i32 550, i32 0, metadata !290, metadata !711}
!821 = metadata !{i32 552, i32 0, metadata !822, metadata !711}
!822 = metadata !{i32 786443, metadata !1, metadata !282, i32 551, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!823 = metadata !{i32 554, i32 0, metadata !822, metadata !711}
!824 = metadata !{i32 518, i32 0, metadata !283, metadata !711}
!825 = metadata !{i32 786688, metadata !275, metadata !"ipivot", metadata !5, i32 514, metadata !14, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [ipivot] [line 514]
!826 = metadata !{i32 121, i32 0, metadata !671, null}
!827 = metadata !{i32 122, i32 0, metadata !828, null}
!828 = metadata !{i32 786443, metadata !1, metadata !671, i32 121, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!829 = metadata !{i32 126, i32 0, metadata !828, null}
!830 = metadata !{i32 742, i32 0, metadata !97, metadata !831}
!831 = metadata !{i32 128, i32 0, metadata !671, null}
!832 = metadata !{i32 786689, metadata !97, metadata !"mtxA", metadata !5, i32 16777958, metadata !8, i32 0, metadata !831} ; [ DW_TAG_arg_variable ] [mtxA] [line 742]
!833 = metadata !{i32 786689, metadata !97, metadata !"y0", metadata !5, i32 33555175, metadata !22, i32 0, metadata !831} ; [ DW_TAG_arg_variable ] [y0] [line 743]
!834 = metadata !{i32 743, i32 0, metadata !97, metadata !831}
!835 = metadata !{i32 786689, metadata !97, metadata !"y1", metadata !5, i32 50332392, metadata !22, i32 0, metadata !831} ; [ DW_TAG_arg_variable ] [y1] [line 744]
!836 = metadata !{i32 744, i32 0, metadata !97, metadata !831}
!837 = metadata !{i32 786689, metadata !97, metadata !"x0", metadata !5, i32 67109609, metadata !22, i32 0, metadata !831} ; [ DW_TAG_arg_variable ] [x0] [line 745]
!838 = metadata !{i32 745, i32 0, metadata !97, metadata !831}
!839 = metadata !{i32 786689, metadata !97, metadata !"x1", metadata !5, i32 83886826, metadata !22, i32 0, metadata !831} ; [ DW_TAG_arg_variable ] [x1] [line 746]
!840 = metadata !{i32 746, i32 0, metadata !97, metadata !831}
!841 = metadata !{i32 748, i32 0, metadata !97, metadata !831}
!842 = metadata !{i32 749, i32 0, metadata !97, metadata !831}
!843 = metadata !{i32 750, i32 0, metadata !97, metadata !831}
!844 = metadata !{i32 752, i32 0, metadata !97, metadata !831}
!845 = metadata !{i32 786688, metadata !97, metadata !"rloc", metadata !5, i32 749, metadata !14, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [rloc] [line 749]
!846 = metadata !{i32 753, i32 0, metadata !116, metadata !831}
!847 = metadata !{i32 786688, metadata !97, metadata !"kk", metadata !5, i32 749, metadata !14, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [kk] [line 749]
!848 = metadata !{i32 786688, metadata !97, metadata !"ipivot", metadata !5, i32 749, metadata !14, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [ipivot] [line 749]
!849 = metadata !{i32 786688, metadata !97, metadata !"irowA", metadata !5, i32 749, metadata !14, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [irowA] [line 749]
!850 = metadata !{i32 786688, metadata !97, metadata !"iloc", metadata !5, i32 749, metadata !14, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [iloc] [line 749]
!851 = metadata !{i32 786688, metadata !97, metadata !"nrowA", metadata !5, i32 749, metadata !14, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [nrowA] [line 749]
!852 = metadata !{i32 786688, metadata !97, metadata !"pivotsizes", metadata !5, i32 750, metadata !74, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 750]
!853 = metadata !{i32 756, i32 0, metadata !115, metadata !831}
!854 = metadata !{i32 786688, metadata !97, metadata !"entries", metadata !5, i32 748, metadata !22, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [entries] [line 748]
!855 = metadata !{i32 762, i32 0, metadata !114, metadata !831}
!856 = metadata !{i32 780, i32 0, metadata !123, metadata !831}
!857 = metadata !{i32 786688, metadata !114, metadata !"ar00", metadata !5, i32 757, metadata !23, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [ar00] [line 757]
!858 = metadata !{i32 786688, metadata !114, metadata !"ai00", metadata !5, i32 757, metadata !23, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [ai00] [line 757]
!859 = metadata !{i32 763, i32 0, metadata !114, metadata !831}
!860 = metadata !{i32 786688, metadata !114, metadata !"xr0", metadata !5, i32 757, metadata !23, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [xr0] [line 757]
!861 = metadata !{i32 786688, metadata !114, metadata !"xi0", metadata !5, i32 757, metadata !23, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [xi0] [line 757]
!862 = metadata !{i32 764, i32 0, metadata !114, metadata !831}
!863 = metadata !{i32 786688, metadata !114, metadata !"xr1", metadata !5, i32 757, metadata !23, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [xr1] [line 757]
!864 = metadata !{i32 786688, metadata !114, metadata !"xi1", metadata !5, i32 757, metadata !23, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [xi1] [line 757]
!865 = metadata !{i32 765, i32 0, metadata !114, metadata !831}
!866 = metadata !{i32 766, i32 0, metadata !114, metadata !831}
!867 = metadata !{i32 767, i32 0, metadata !114, metadata !831}
!868 = metadata !{i32 768, i32 0, metadata !114, metadata !831}
!869 = metadata !{i32 786688, metadata !123, metadata !"rloc0", metadata !5, i32 771, metadata !14, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [rloc0] [line 771]
!870 = metadata !{i32 773, i32 0, metadata !123, metadata !831}
!871 = metadata !{i32 786688, metadata !123, metadata !"iloc0", metadata !5, i32 771, metadata !14, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [iloc0] [line 771]
!872 = metadata !{i32 774, i32 0, metadata !123, metadata !831}
!873 = metadata !{i32 786688, metadata !123, metadata !"rloc1", metadata !5, i32 771, metadata !14, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [rloc1] [line 771]
!874 = metadata !{i32 786688, metadata !123, metadata !"iloc1", metadata !5, i32 771, metadata !14, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [iloc1] [line 771]
!875 = metadata !{i32 786688, metadata !123, metadata !"ar00", metadata !5, i32 769, metadata !23, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [ar00] [line 769]
!876 = metadata !{i32 786688, metadata !123, metadata !"ai00", metadata !5, i32 769, metadata !23, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [ai00] [line 769]
!877 = metadata !{i32 781, i32 0, metadata !123, metadata !831}
!878 = metadata !{i32 786688, metadata !123, metadata !"ar01", metadata !5, i32 769, metadata !23, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [ar01] [line 769]
!879 = metadata !{i32 786688, metadata !123, metadata !"ai01", metadata !5, i32 769, metadata !23, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [ai01] [line 769]
!880 = metadata !{i32 782, i32 0, metadata !123, metadata !831}
!881 = metadata !{i32 786688, metadata !123, metadata !"ar11", metadata !5, i32 769, metadata !23, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [ar11] [line 769]
!882 = metadata !{i32 786688, metadata !123, metadata !"ai11", metadata !5, i32 769, metadata !23, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [ai11] [line 769]
!883 = metadata !{i32 783, i32 0, metadata !123, metadata !831}
!884 = metadata !{i32 786688, metadata !123, metadata !"xr00", metadata !5, i32 770, metadata !23, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [xr00] [line 770]
!885 = metadata !{i32 786688, metadata !123, metadata !"xi00", metadata !5, i32 770, metadata !23, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [xi00] [line 770]
!886 = metadata !{i32 784, i32 0, metadata !123, metadata !831}
!887 = metadata !{i32 786688, metadata !123, metadata !"xr01", metadata !5, i32 770, metadata !23, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [xr01] [line 770]
!888 = metadata !{i32 786688, metadata !123, metadata !"xi01", metadata !5, i32 770, metadata !23, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [xi01] [line 770]
!889 = metadata !{i32 785, i32 0, metadata !123, metadata !831}
!890 = metadata !{i32 786688, metadata !123, metadata !"xr10", metadata !5, i32 770, metadata !23, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [xr10] [line 770]
!891 = metadata !{i32 786688, metadata !123, metadata !"xi10", metadata !5, i32 770, metadata !23, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [xi10] [line 770]
!892 = metadata !{i32 786, i32 0, metadata !123, metadata !831}
!893 = metadata !{i32 786688, metadata !123, metadata !"xr11", metadata !5, i32 770, metadata !23, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [xr11] [line 770]
!894 = metadata !{i32 786688, metadata !123, metadata !"xi11", metadata !5, i32 770, metadata !23, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [xi11] [line 770]
!895 = metadata !{i32 787, i32 0, metadata !123, metadata !831}
!896 = metadata !{i32 788, i32 0, metadata !123, metadata !831}
!897 = metadata !{i32 789, i32 0, metadata !123, metadata !831}
!898 = metadata !{i32 790, i32 0, metadata !123, metadata !831}
!899 = metadata !{i32 791, i32 0, metadata !123, metadata !831}
!900 = metadata !{i32 792, i32 0, metadata !123, metadata !831}
!901 = metadata !{i32 793, i32 0, metadata !123, metadata !831}
!902 = metadata !{i32 794, i32 0, metadata !123, metadata !831}
!903 = metadata !{i32 795, i32 0, metadata !123, metadata !831}
!904 = metadata !{i32 797, i32 0, metadata !905, metadata !831}
!905 = metadata !{i32 786443, metadata !1, metadata !115, i32 796, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!906 = metadata !{i32 799, i32 0, metadata !905, metadata !831}
!907 = metadata !{i32 755, i32 0, metadata !116, metadata !831}
!908 = metadata !{i32 131, i32 0, metadata !671, null}
!909 = metadata !{i32 136, i32 0, metadata !671, null}
!910 = metadata !{i32 138, i32 0, metadata !40, null}
!911 = metadata !{i32 150, i32 0, metadata !49, null}
!912 = metadata !{i32 151, i32 0, metadata !49, null}
!913 = metadata !{i32 152, i32 0, metadata !49, null}
!914 = metadata !{i32 153, i32 0, metadata !49, null}
!915 = metadata !{i32 154, i32 0, metadata !49, null}
!916 = metadata !{i32 155, i32 0, metadata !49, null}
!917 = metadata !{i32 156, i32 0, metadata !49, null}
!918 = metadata !{i32 163, i32 0, metadata !49, null}
!919 = metadata !{i32 165, i32 0, metadata !920, null}
!920 = metadata !{i32 786443, metadata !1, metadata !49, i32 164, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!921 = metadata !{i32 168, i32 0, metadata !920, null}
!922 = metadata !{i32 170, i32 0, metadata !49, null}
!923 = metadata !{i32 171, i32 0, metadata !924, null}
!924 = metadata !{i32 786443, metadata !1, metadata !49, i32 170, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!925 = metadata !{i32 175, i32 0, metadata !924, null}
!926 = metadata !{i32 177, i32 0, metadata !49, null}
!927 = metadata !{i32 215, i32 0, metadata !422, metadata !928}
!928 = metadata !{i32 179, i32 0, metadata !929, null}
!929 = metadata !{i32 786443, metadata !1, metadata !49, i32 177, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!930 = metadata !{i32 786689, metadata !422, metadata !"mtxA", metadata !5, i32 16777431, metadata !8, i32 0, metadata !928} ; [ DW_TAG_arg_variable ] [mtxA] [line 215]
!931 = metadata !{i32 786689, metadata !422, metadata !"y0", metadata !5, i32 33554648, metadata !22, i32 0, metadata !928} ; [ DW_TAG_arg_variable ] [y0] [line 216]
!932 = metadata !{i32 216, i32 0, metadata !422, metadata !928}
!933 = metadata !{i32 786689, metadata !422, metadata !"y1", metadata !5, i32 50331865, metadata !22, i32 0, metadata !928} ; [ DW_TAG_arg_variable ] [y1] [line 217]
!934 = metadata !{i32 217, i32 0, metadata !422, metadata !928}
!935 = metadata !{i32 786689, metadata !422, metadata !"y2", metadata !5, i32 67109082, metadata !22, i32 0, metadata !928} ; [ DW_TAG_arg_variable ] [y2] [line 218]
!936 = metadata !{i32 218, i32 0, metadata !422, metadata !928}
!937 = metadata !{i32 786689, metadata !422, metadata !"x0", metadata !5, i32 83886299, metadata !22, i32 0, metadata !928} ; [ DW_TAG_arg_variable ] [x0] [line 219]
!938 = metadata !{i32 219, i32 0, metadata !422, metadata !928}
!939 = metadata !{i32 786689, metadata !422, metadata !"x1", metadata !5, i32 100663516, metadata !22, i32 0, metadata !928} ; [ DW_TAG_arg_variable ] [x1] [line 220]
!940 = metadata !{i32 220, i32 0, metadata !422, metadata !928}
!941 = metadata !{i32 786689, metadata !422, metadata !"x2", metadata !5, i32 117440733, metadata !22, i32 0, metadata !928} ; [ DW_TAG_arg_variable ] [x2] [line 221]
!942 = metadata !{i32 221, i32 0, metadata !422, metadata !928}
!943 = metadata !{i32 223, i32 0, metadata !422, metadata !928}
!944 = metadata !{i32 224, i32 0, metadata !422, metadata !928}
!945 = metadata !{i32 226, i32 0, metadata !422, metadata !928}
!946 = metadata !{i32 227, i32 0, metadata !422, metadata !928}
!947 = metadata !{i32 786688, metadata !422, metadata !"nrowA", metadata !5, i32 224, metadata !14, i32 0, metadata !928} ; [ DW_TAG_auto_variable ] [nrowA] [line 224]
!948 = metadata !{i32 239, i32 0, metadata !949, metadata !928}
!949 = metadata !{i32 786443, metadata !1, metadata !437, i32 239, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!950 = metadata !{i32 786688, metadata !422, metadata !"entriesA", metadata !5, i32 223, metadata !22, i32 0, metadata !928} ; [ DW_TAG_auto_variable ] [entriesA] [line 223]
!951 = metadata !{i32 245, i32 0, metadata !952, metadata !928}
!952 = metadata !{i32 786443, metadata !1, metadata !949, i32 241, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!953 = metadata !{i32 230, i32 0, metadata !954, metadata !928}
!954 = metadata !{i32 786443, metadata !1, metadata !434, i32 230, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!955 = metadata !{i32 231, i32 0, metadata !956, metadata !928}
!956 = metadata !{i32 786443, metadata !1, metadata !954, i32 230, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!957 = metadata !{i32 786688, metadata !434, metadata !"a", metadata !5, i32 228, metadata !23, i32 0, metadata !928} ; [ DW_TAG_auto_variable ] [a] [line 228]
!958 = metadata !{i32 232, i32 0, metadata !956, metadata !928}
!959 = metadata !{i32 233, i32 0, metadata !956, metadata !928}
!960 = metadata !{i32 234, i32 0, metadata !956, metadata !928}
!961 = metadata !{i32 242, i32 0, metadata !952, metadata !928}
!962 = metadata !{i32 786688, metadata !437, metadata !"xr0", metadata !5, i32 237, metadata !23, i32 0, metadata !928} ; [ DW_TAG_auto_variable ] [xr0] [line 237]
!963 = metadata !{i32 786688, metadata !437, metadata !"xi0", metadata !5, i32 237, metadata !23, i32 0, metadata !928} ; [ DW_TAG_auto_variable ] [xi0] [line 237]
!964 = metadata !{i32 243, i32 0, metadata !952, metadata !928}
!965 = metadata !{i32 786688, metadata !437, metadata !"xr1", metadata !5, i32 237, metadata !23, i32 0, metadata !928} ; [ DW_TAG_auto_variable ] [xr1] [line 237]
!966 = metadata !{i32 786688, metadata !437, metadata !"xi1", metadata !5, i32 237, metadata !23, i32 0, metadata !928} ; [ DW_TAG_auto_variable ] [xi1] [line 237]
!967 = metadata !{i32 244, i32 0, metadata !952, metadata !928}
!968 = metadata !{i32 786688, metadata !437, metadata !"xr2", metadata !5, i32 237, metadata !23, i32 0, metadata !928} ; [ DW_TAG_auto_variable ] [xr2] [line 237]
!969 = metadata !{i32 786688, metadata !437, metadata !"xi2", metadata !5, i32 237, metadata !23, i32 0, metadata !928} ; [ DW_TAG_auto_variable ] [xi2] [line 237]
!970 = metadata !{i32 786688, metadata !437, metadata !"ar", metadata !5, i32 237, metadata !23, i32 0, metadata !928} ; [ DW_TAG_auto_variable ] [ar] [line 237]
!971 = metadata !{i32 786688, metadata !437, metadata !"ai", metadata !5, i32 237, metadata !23, i32 0, metadata !928} ; [ DW_TAG_auto_variable ] [ai] [line 237]
!972 = metadata !{i32 246, i32 0, metadata !952, metadata !928}
!973 = metadata !{i32 247, i32 0, metadata !952, metadata !928}
!974 = metadata !{i32 248, i32 0, metadata !952, metadata !928}
!975 = metadata !{i32 241, i32 0, metadata !949, metadata !928}
!976 = metadata !{i32 786688, metadata !437, metadata !"irowA", metadata !5, i32 238, metadata !14, i32 0, metadata !928} ; [ DW_TAG_auto_variable ] [irowA] [line 238]
!977 = metadata !{i32 347, i32 0, metadata !308, metadata !978}
!978 = metadata !{i32 182, i32 0, metadata !929, null}
!979 = metadata !{i32 786689, metadata !308, metadata !"mtxA", metadata !5, i32 16777563, metadata !8, i32 0, metadata !978} ; [ DW_TAG_arg_variable ] [mtxA] [line 347]
!980 = metadata !{i32 786689, metadata !308, metadata !"y0", metadata !5, i32 33554780, metadata !22, i32 0, metadata !978} ; [ DW_TAG_arg_variable ] [y0] [line 348]
!981 = metadata !{i32 348, i32 0, metadata !308, metadata !978}
!982 = metadata !{i32 786689, metadata !308, metadata !"y1", metadata !5, i32 50331997, metadata !22, i32 0, metadata !978} ; [ DW_TAG_arg_variable ] [y1] [line 349]
!983 = metadata !{i32 349, i32 0, metadata !308, metadata !978}
!984 = metadata !{i32 786689, metadata !308, metadata !"y2", metadata !5, i32 67109214, metadata !22, i32 0, metadata !978} ; [ DW_TAG_arg_variable ] [y2] [line 350]
!985 = metadata !{i32 350, i32 0, metadata !308, metadata !978}
!986 = metadata !{i32 786689, metadata !308, metadata !"x0", metadata !5, i32 83886431, metadata !22, i32 0, metadata !978} ; [ DW_TAG_arg_variable ] [x0] [line 351]
!987 = metadata !{i32 351, i32 0, metadata !308, metadata !978}
!988 = metadata !{i32 786689, metadata !308, metadata !"x1", metadata !5, i32 100663648, metadata !22, i32 0, metadata !978} ; [ DW_TAG_arg_variable ] [x1] [line 352]
!989 = metadata !{i32 352, i32 0, metadata !308, metadata !978}
!990 = metadata !{i32 786689, metadata !308, metadata !"x2", metadata !5, i32 117440865, metadata !22, i32 0, metadata !978} ; [ DW_TAG_arg_variable ] [x2] [line 353]
!991 = metadata !{i32 353, i32 0, metadata !308, metadata !978}
!992 = metadata !{i32 355, i32 0, metadata !308, metadata !978}
!993 = metadata !{i32 356, i32 0, metadata !308, metadata !978}
!994 = metadata !{i32 357, i32 0, metadata !308, metadata !978}
!995 = metadata !{i32 359, i32 0, metadata !308, metadata !978}
!996 = metadata !{i32 360, i32 0, metadata !308, metadata !978}
!997 = metadata !{i32 786688, metadata !308, metadata !"nrowA", metadata !5, i32 356, metadata !14, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [nrowA] [line 356]
!998 = metadata !{i32 404, i32 0, metadata !351, metadata !978}
!999 = metadata !{i32 786688, metadata !308, metadata !"pivotsizes", metadata !5, i32 357, metadata !74, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 357]
!1000 = metadata !{i32 407, i32 0, metadata !350, metadata !978}
!1001 = metadata !{i32 786688, metadata !308, metadata !"entries", metadata !5, i32 355, metadata !22, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [entries] [line 355]
!1002 = metadata !{i32 410, i32 0, metadata !349, metadata !978}
!1003 = metadata !{i32 424, i32 0, metadata !360, metadata !978}
!1004 = metadata !{i32 363, i32 0, metadata !328, metadata !978}
!1005 = metadata !{i32 364, i32 0, metadata !327, metadata !978}
!1006 = metadata !{i32 367, i32 0, metadata !326, metadata !978}
!1007 = metadata !{i32 379, i32 0, metadata !333, metadata !978}
!1008 = metadata !{i32 786688, metadata !326, metadata !"a00", metadata !5, i32 365, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [a00] [line 365]
!1009 = metadata !{i32 368, i32 0, metadata !326, metadata !978}
!1010 = metadata !{i32 786688, metadata !326, metadata !"x00", metadata !5, i32 365, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [x00] [line 365]
!1011 = metadata !{i32 369, i32 0, metadata !326, metadata !978}
!1012 = metadata !{i32 786688, metadata !326, metadata !"x01", metadata !5, i32 365, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [x01] [line 365]
!1013 = metadata !{i32 370, i32 0, metadata !326, metadata !978}
!1014 = metadata !{i32 786688, metadata !326, metadata !"x02", metadata !5, i32 365, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [x02] [line 365]
!1015 = metadata !{i32 371, i32 0, metadata !326, metadata !978}
!1016 = metadata !{i32 372, i32 0, metadata !326, metadata !978}
!1017 = metadata !{i32 373, i32 0, metadata !326, metadata !978}
!1018 = metadata !{i32 374, i32 0, metadata !326, metadata !978}
!1019 = metadata !{i32 786688, metadata !322, metadata !"kk", metadata !5, i32 361, metadata !14, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [kk] [line 361]
!1020 = metadata !{i32 786688, metadata !322, metadata !"irowA", metadata !5, i32 361, metadata !14, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [irowA] [line 361]
!1021 = metadata !{i32 375, i32 0, metadata !326, metadata !978}
!1022 = metadata !{i32 786688, metadata !333, metadata !"a00", metadata !5, i32 376, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [a00] [line 376]
!1023 = metadata !{i32 380, i32 0, metadata !333, metadata !978}
!1024 = metadata !{i32 786688, metadata !333, metadata !"a01", metadata !5, i32 376, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [a01] [line 376]
!1025 = metadata !{i32 381, i32 0, metadata !333, metadata !978}
!1026 = metadata !{i32 786688, metadata !333, metadata !"a11", metadata !5, i32 376, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [a11] [line 376]
!1027 = metadata !{i32 382, i32 0, metadata !333, metadata !978}
!1028 = metadata !{i32 786688, metadata !333, metadata !"x00", metadata !5, i32 377, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [x00] [line 377]
!1029 = metadata !{i32 383, i32 0, metadata !333, metadata !978}
!1030 = metadata !{i32 786688, metadata !333, metadata !"x01", metadata !5, i32 377, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [x01] [line 377]
!1031 = metadata !{i32 384, i32 0, metadata !333, metadata !978}
!1032 = metadata !{i32 786688, metadata !333, metadata !"x02", metadata !5, i32 377, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [x02] [line 377]
!1033 = metadata !{i32 385, i32 0, metadata !333, metadata !978}
!1034 = metadata !{i32 786688, metadata !333, metadata !"x10", metadata !5, i32 377, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [x10] [line 377]
!1035 = metadata !{i32 386, i32 0, metadata !333, metadata !978}
!1036 = metadata !{i32 786688, metadata !333, metadata !"x11", metadata !5, i32 377, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [x11] [line 377]
!1037 = metadata !{i32 387, i32 0, metadata !333, metadata !978}
!1038 = metadata !{i32 786688, metadata !333, metadata !"x12", metadata !5, i32 377, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [x12] [line 377]
!1039 = metadata !{i32 388, i32 0, metadata !333, metadata !978}
!1040 = metadata !{i32 389, i32 0, metadata !333, metadata !978}
!1041 = metadata !{i32 390, i32 0, metadata !333, metadata !978}
!1042 = metadata !{i32 391, i32 0, metadata !333, metadata !978}
!1043 = metadata !{i32 392, i32 0, metadata !333, metadata !978}
!1044 = metadata !{i32 393, i32 0, metadata !333, metadata !978}
!1045 = metadata !{i32 394, i32 0, metadata !333, metadata !978}
!1046 = metadata !{i32 396, i32 0, metadata !1047, metadata !978}
!1047 = metadata !{i32 786443, metadata !1, metadata !327, i32 395, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!1048 = metadata !{i32 398, i32 0, metadata !1047, metadata !978}
!1049 = metadata !{i32 786688, metadata !322, metadata !"ipivot", metadata !5, i32 361, metadata !14, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [ipivot] [line 361]
!1050 = metadata !{i32 786688, metadata !349, metadata !"ar00", metadata !5, i32 408, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [ar00] [line 408]
!1051 = metadata !{i32 786688, metadata !349, metadata !"ai00", metadata !5, i32 408, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [ai00] [line 408]
!1052 = metadata !{i32 411, i32 0, metadata !349, metadata !978}
!1053 = metadata !{i32 786688, metadata !349, metadata !"xr0", metadata !5, i32 408, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [xr0] [line 408]
!1054 = metadata !{i32 786688, metadata !349, metadata !"xi0", metadata !5, i32 408, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [xi0] [line 408]
!1055 = metadata !{i32 412, i32 0, metadata !349, metadata !978}
!1056 = metadata !{i32 786688, metadata !349, metadata !"xr1", metadata !5, i32 408, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [xr1] [line 408]
!1057 = metadata !{i32 786688, metadata !349, metadata !"xi1", metadata !5, i32 408, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [xi1] [line 408]
!1058 = metadata !{i32 413, i32 0, metadata !349, metadata !978}
!1059 = metadata !{i32 786688, metadata !349, metadata !"xr2", metadata !5, i32 408, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [xr2] [line 408]
!1060 = metadata !{i32 786688, metadata !349, metadata !"xi2", metadata !5, i32 408, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [xi2] [line 408]
!1061 = metadata !{i32 414, i32 0, metadata !349, metadata !978}
!1062 = metadata !{i32 415, i32 0, metadata !349, metadata !978}
!1063 = metadata !{i32 416, i32 0, metadata !349, metadata !978}
!1064 = metadata !{i32 417, i32 0, metadata !349, metadata !978}
!1065 = metadata !{i32 786688, metadata !343, metadata !"kk", metadata !5, i32 402, metadata !14, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [kk] [line 402]
!1066 = metadata !{i32 786688, metadata !343, metadata !"irowA", metadata !5, i32 402, metadata !14, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [irowA] [line 402]
!1067 = metadata !{i32 786688, metadata !343, metadata !"rloc", metadata !5, i32 402, metadata !14, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [rloc] [line 402]
!1068 = metadata !{i32 786688, metadata !343, metadata !"iloc", metadata !5, i32 402, metadata !14, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [iloc] [line 402]
!1069 = metadata !{i32 418, i32 0, metadata !349, metadata !978}
!1070 = metadata !{i32 786688, metadata !360, metadata !"ar00", metadata !5, i32 419, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [ar00] [line 419]
!1071 = metadata !{i32 786688, metadata !360, metadata !"ai00", metadata !5, i32 419, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [ai00] [line 419]
!1072 = metadata !{i32 425, i32 0, metadata !360, metadata !978}
!1073 = metadata !{i32 786688, metadata !360, metadata !"ar01", metadata !5, i32 419, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [ar01] [line 419]
!1074 = metadata !{i32 786688, metadata !360, metadata !"ai01", metadata !5, i32 419, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [ai01] [line 419]
!1075 = metadata !{i32 426, i32 0, metadata !360, metadata !978}
!1076 = metadata !{i32 786688, metadata !360, metadata !"ar11", metadata !5, i32 419, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [ar11] [line 419]
!1077 = metadata !{i32 786688, metadata !360, metadata !"ai11", metadata !5, i32 419, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [ai11] [line 419]
!1078 = metadata !{i32 786688, metadata !360, metadata !"rloc0", metadata !5, i32 422, metadata !14, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [rloc0] [line 422]
!1079 = metadata !{i32 427, i32 0, metadata !360, metadata !978}
!1080 = metadata !{i32 786688, metadata !360, metadata !"iloc0", metadata !5, i32 422, metadata !14, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [iloc0] [line 422]
!1081 = metadata !{i32 428, i32 0, metadata !360, metadata !978}
!1082 = metadata !{i32 786688, metadata !360, metadata !"rloc1", metadata !5, i32 422, metadata !14, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [rloc1] [line 422]
!1083 = metadata !{i32 786688, metadata !360, metadata !"iloc1", metadata !5, i32 422, metadata !14, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [iloc1] [line 422]
!1084 = metadata !{i32 429, i32 0, metadata !360, metadata !978}
!1085 = metadata !{i32 786688, metadata !360, metadata !"xr00", metadata !5, i32 421, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [xr00] [line 421]
!1086 = metadata !{i32 786688, metadata !360, metadata !"xi00", metadata !5, i32 420, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [xi00] [line 420]
!1087 = metadata !{i32 430, i32 0, metadata !360, metadata !978}
!1088 = metadata !{i32 786688, metadata !360, metadata !"xr01", metadata !5, i32 421, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [xr01] [line 421]
!1089 = metadata !{i32 786688, metadata !360, metadata !"xi01", metadata !5, i32 420, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [xi01] [line 420]
!1090 = metadata !{i32 431, i32 0, metadata !360, metadata !978}
!1091 = metadata !{i32 786688, metadata !360, metadata !"xr02", metadata !5, i32 421, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [xr02] [line 421]
!1092 = metadata !{i32 786688, metadata !360, metadata !"xi02", metadata !5, i32 420, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [xi02] [line 420]
!1093 = metadata !{i32 432, i32 0, metadata !360, metadata !978}
!1094 = metadata !{i32 786688, metadata !360, metadata !"xr10", metadata !5, i32 421, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [xr10] [line 421]
!1095 = metadata !{i32 786688, metadata !360, metadata !"xi10", metadata !5, i32 420, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [xi10] [line 420]
!1096 = metadata !{i32 433, i32 0, metadata !360, metadata !978}
!1097 = metadata !{i32 786688, metadata !360, metadata !"xr11", metadata !5, i32 421, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [xr11] [line 421]
!1098 = metadata !{i32 786688, metadata !360, metadata !"xi11", metadata !5, i32 420, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [xi11] [line 420]
!1099 = metadata !{i32 434, i32 0, metadata !360, metadata !978}
!1100 = metadata !{i32 786688, metadata !360, metadata !"xr12", metadata !5, i32 421, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [xr12] [line 421]
!1101 = metadata !{i32 786688, metadata !360, metadata !"xi12", metadata !5, i32 420, metadata !23, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [xi12] [line 420]
!1102 = metadata !{i32 435, i32 0, metadata !360, metadata !978}
!1103 = metadata !{i32 436, i32 0, metadata !360, metadata !978}
!1104 = metadata !{i32 437, i32 0, metadata !360, metadata !978}
!1105 = metadata !{i32 438, i32 0, metadata !360, metadata !978}
!1106 = metadata !{i32 439, i32 0, metadata !360, metadata !978}
!1107 = metadata !{i32 440, i32 0, metadata !360, metadata !978}
!1108 = metadata !{i32 441, i32 0, metadata !360, metadata !978}
!1109 = metadata !{i32 442, i32 0, metadata !360, metadata !978}
!1110 = metadata !{i32 443, i32 0, metadata !360, metadata !978}
!1111 = metadata !{i32 444, i32 0, metadata !360, metadata !978}
!1112 = metadata !{i32 445, i32 0, metadata !360, metadata !978}
!1113 = metadata !{i32 446, i32 0, metadata !360, metadata !978}
!1114 = metadata !{i32 447, i32 0, metadata !360, metadata !978}
!1115 = metadata !{i32 449, i32 0, metadata !1116, metadata !978}
!1116 = metadata !{i32 786443, metadata !1, metadata !350, i32 448, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!1117 = metadata !{i32 451, i32 0, metadata !1116, metadata !978}
!1118 = metadata !{i32 406, i32 0, metadata !351, metadata !978}
!1119 = metadata !{i32 786688, metadata !343, metadata !"ipivot", metadata !5, i32 402, metadata !14, i32 0, metadata !978} ; [ DW_TAG_auto_variable ] [ipivot] [line 402]
!1120 = metadata !{i32 185, i32 0, metadata !929, null}
!1121 = metadata !{i32 186, i32 0, metadata !1122, null}
!1122 = metadata !{i32 786443, metadata !1, metadata !929, i32 185, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!1123 = metadata !{i32 190, i32 0, metadata !1122, null}
!1124 = metadata !{i32 658, i32 0, metadata !141, metadata !1125}
!1125 = metadata !{i32 192, i32 0, metadata !929, null}
!1126 = metadata !{i32 786689, metadata !141, metadata !"mtxA", metadata !5, i32 16777874, metadata !8, i32 0, metadata !1125} ; [ DW_TAG_arg_variable ] [mtxA] [line 658]
!1127 = metadata !{i32 786689, metadata !141, metadata !"y0", metadata !5, i32 33555091, metadata !22, i32 0, metadata !1125} ; [ DW_TAG_arg_variable ] [y0] [line 659]
!1128 = metadata !{i32 659, i32 0, metadata !141, metadata !1125}
!1129 = metadata !{i32 786689, metadata !141, metadata !"y1", metadata !5, i32 50332308, metadata !22, i32 0, metadata !1125} ; [ DW_TAG_arg_variable ] [y1] [line 660]
!1130 = metadata !{i32 660, i32 0, metadata !141, metadata !1125}
!1131 = metadata !{i32 786689, metadata !141, metadata !"y2", metadata !5, i32 67109525, metadata !22, i32 0, metadata !1125} ; [ DW_TAG_arg_variable ] [y2] [line 661]
!1132 = metadata !{i32 661, i32 0, metadata !141, metadata !1125}
!1133 = metadata !{i32 786689, metadata !141, metadata !"x0", metadata !5, i32 83886742, metadata !22, i32 0, metadata !1125} ; [ DW_TAG_arg_variable ] [x0] [line 662]
!1134 = metadata !{i32 662, i32 0, metadata !141, metadata !1125}
!1135 = metadata !{i32 786689, metadata !141, metadata !"x1", metadata !5, i32 100663959, metadata !22, i32 0, metadata !1125} ; [ DW_TAG_arg_variable ] [x1] [line 663]
!1136 = metadata !{i32 663, i32 0, metadata !141, metadata !1125}
!1137 = metadata !{i32 786689, metadata !141, metadata !"x2", metadata !5, i32 117441176, metadata !22, i32 0, metadata !1125} ; [ DW_TAG_arg_variable ] [x2] [line 664]
!1138 = metadata !{i32 664, i32 0, metadata !141, metadata !1125}
!1139 = metadata !{i32 666, i32 0, metadata !141, metadata !1125}
!1140 = metadata !{i32 667, i32 0, metadata !141, metadata !1125}
!1141 = metadata !{i32 668, i32 0, metadata !141, metadata !1125}
!1142 = metadata !{i32 670, i32 0, metadata !141, metadata !1125}
!1143 = metadata !{i32 786688, metadata !141, metadata !"rloc", metadata !5, i32 667, metadata !14, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [rloc] [line 667]
!1144 = metadata !{i32 671, i32 0, metadata !162, metadata !1125}
!1145 = metadata !{i32 786688, metadata !141, metadata !"kk", metadata !5, i32 667, metadata !14, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [kk] [line 667]
!1146 = metadata !{i32 786688, metadata !141, metadata !"ipivot", metadata !5, i32 667, metadata !14, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [ipivot] [line 667]
!1147 = metadata !{i32 786688, metadata !141, metadata !"irowA", metadata !5, i32 667, metadata !14, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [irowA] [line 667]
!1148 = metadata !{i32 786688, metadata !141, metadata !"iloc", metadata !5, i32 667, metadata !14, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [iloc] [line 667]
!1149 = metadata !{i32 786688, metadata !141, metadata !"nrowA", metadata !5, i32 667, metadata !14, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [nrowA] [line 667]
!1150 = metadata !{i32 786688, metadata !141, metadata !"pivotsizes", metadata !5, i32 668, metadata !74, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 668]
!1151 = metadata !{i32 674, i32 0, metadata !161, metadata !1125}
!1152 = metadata !{i32 786688, metadata !141, metadata !"entries", metadata !5, i32 666, metadata !22, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [entries] [line 666]
!1153 = metadata !{i32 680, i32 0, metadata !160, metadata !1125}
!1154 = metadata !{i32 701, i32 0, metadata !171, metadata !1125}
!1155 = metadata !{i32 786688, metadata !160, metadata !"ar00", metadata !5, i32 675, metadata !23, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [ar00] [line 675]
!1156 = metadata !{i32 786688, metadata !160, metadata !"ai00", metadata !5, i32 675, metadata !23, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [ai00] [line 675]
!1157 = metadata !{i32 681, i32 0, metadata !160, metadata !1125}
!1158 = metadata !{i32 786688, metadata !160, metadata !"xr0", metadata !5, i32 675, metadata !23, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [xr0] [line 675]
!1159 = metadata !{i32 786688, metadata !160, metadata !"xi0", metadata !5, i32 675, metadata !23, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [xi0] [line 675]
!1160 = metadata !{i32 682, i32 0, metadata !160, metadata !1125}
!1161 = metadata !{i32 786688, metadata !160, metadata !"xr1", metadata !5, i32 675, metadata !23, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [xr1] [line 675]
!1162 = metadata !{i32 786688, metadata !160, metadata !"xi1", metadata !5, i32 675, metadata !23, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [xi1] [line 675]
!1163 = metadata !{i32 683, i32 0, metadata !160, metadata !1125}
!1164 = metadata !{i32 786688, metadata !160, metadata !"xr2", metadata !5, i32 675, metadata !23, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [xr2] [line 675]
!1165 = metadata !{i32 786688, metadata !160, metadata !"xi2", metadata !5, i32 675, metadata !23, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [xi2] [line 675]
!1166 = metadata !{i32 684, i32 0, metadata !160, metadata !1125}
!1167 = metadata !{i32 685, i32 0, metadata !160, metadata !1125}
!1168 = metadata !{i32 686, i32 0, metadata !160, metadata !1125}
!1169 = metadata !{i32 687, i32 0, metadata !160, metadata !1125}
!1170 = metadata !{i32 688, i32 0, metadata !160, metadata !1125}
!1171 = metadata !{i32 786688, metadata !171, metadata !"rloc0", metadata !5, i32 692, metadata !14, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [rloc0] [line 692]
!1172 = metadata !{i32 694, i32 0, metadata !171, metadata !1125}
!1173 = metadata !{i32 786688, metadata !171, metadata !"iloc0", metadata !5, i32 692, metadata !14, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [iloc0] [line 692]
!1174 = metadata !{i32 695, i32 0, metadata !171, metadata !1125}
!1175 = metadata !{i32 786688, metadata !171, metadata !"rloc1", metadata !5, i32 692, metadata !14, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [rloc1] [line 692]
!1176 = metadata !{i32 786688, metadata !171, metadata !"iloc1", metadata !5, i32 692, metadata !14, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [iloc1] [line 692]
!1177 = metadata !{i32 786688, metadata !171, metadata !"ar00", metadata !5, i32 689, metadata !23, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [ar00] [line 689]
!1178 = metadata !{i32 786688, metadata !171, metadata !"ai00", metadata !5, i32 689, metadata !23, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [ai00] [line 689]
!1179 = metadata !{i32 702, i32 0, metadata !171, metadata !1125}
!1180 = metadata !{i32 786688, metadata !171, metadata !"ar01", metadata !5, i32 689, metadata !23, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [ar01] [line 689]
!1181 = metadata !{i32 786688, metadata !171, metadata !"ai01", metadata !5, i32 689, metadata !23, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [ai01] [line 689]
!1182 = metadata !{i32 703, i32 0, metadata !171, metadata !1125}
!1183 = metadata !{i32 786688, metadata !171, metadata !"ar11", metadata !5, i32 689, metadata !23, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [ar11] [line 689]
!1184 = metadata !{i32 786688, metadata !171, metadata !"ai11", metadata !5, i32 689, metadata !23, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [ai11] [line 689]
!1185 = metadata !{i32 704, i32 0, metadata !171, metadata !1125}
!1186 = metadata !{i32 786688, metadata !171, metadata !"xr00", metadata !5, i32 691, metadata !23, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [xr00] [line 691]
!1187 = metadata !{i32 786688, metadata !171, metadata !"xi00", metadata !5, i32 690, metadata !23, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [xi00] [line 690]
!1188 = metadata !{i32 705, i32 0, metadata !171, metadata !1125}
!1189 = metadata !{i32 786688, metadata !171, metadata !"xr01", metadata !5, i32 691, metadata !23, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [xr01] [line 691]
!1190 = metadata !{i32 786688, metadata !171, metadata !"xi01", metadata !5, i32 690, metadata !23, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [xi01] [line 690]
!1191 = metadata !{i32 706, i32 0, metadata !171, metadata !1125}
!1192 = metadata !{i32 786688, metadata !171, metadata !"xr02", metadata !5, i32 691, metadata !23, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [xr02] [line 691]
!1193 = metadata !{i32 786688, metadata !171, metadata !"xi02", metadata !5, i32 690, metadata !23, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [xi02] [line 690]
!1194 = metadata !{i32 707, i32 0, metadata !171, metadata !1125}
!1195 = metadata !{i32 786688, metadata !171, metadata !"xr10", metadata !5, i32 691, metadata !23, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [xr10] [line 691]
!1196 = metadata !{i32 786688, metadata !171, metadata !"xi10", metadata !5, i32 690, metadata !23, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [xi10] [line 690]
!1197 = metadata !{i32 708, i32 0, metadata !171, metadata !1125}
!1198 = metadata !{i32 786688, metadata !171, metadata !"xr11", metadata !5, i32 691, metadata !23, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [xr11] [line 691]
!1199 = metadata !{i32 786688, metadata !171, metadata !"xi11", metadata !5, i32 690, metadata !23, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [xi11] [line 690]
!1200 = metadata !{i32 709, i32 0, metadata !171, metadata !1125}
!1201 = metadata !{i32 786688, metadata !171, metadata !"xr12", metadata !5, i32 691, metadata !23, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [xr12] [line 691]
!1202 = metadata !{i32 786688, metadata !171, metadata !"xi12", metadata !5, i32 690, metadata !23, i32 0, metadata !1125} ; [ DW_TAG_auto_variable ] [xi12] [line 690]
!1203 = metadata !{i32 710, i32 0, metadata !171, metadata !1125}
!1204 = metadata !{i32 711, i32 0, metadata !171, metadata !1125}
!1205 = metadata !{i32 712, i32 0, metadata !171, metadata !1125}
!1206 = metadata !{i32 713, i32 0, metadata !171, metadata !1125}
!1207 = metadata !{i32 714, i32 0, metadata !171, metadata !1125}
!1208 = metadata !{i32 715, i32 0, metadata !171, metadata !1125}
!1209 = metadata !{i32 716, i32 0, metadata !171, metadata !1125}
!1210 = metadata !{i32 717, i32 0, metadata !171, metadata !1125}
!1211 = metadata !{i32 718, i32 0, metadata !171, metadata !1125}
!1212 = metadata !{i32 719, i32 0, metadata !171, metadata !1125}
!1213 = metadata !{i32 720, i32 0, metadata !171, metadata !1125}
!1214 = metadata !{i32 721, i32 0, metadata !171, metadata !1125}
!1215 = metadata !{i32 722, i32 0, metadata !171, metadata !1125}
!1216 = metadata !{i32 724, i32 0, metadata !1217, metadata !1125}
!1217 = metadata !{i32 786443, metadata !1, metadata !161, i32 723, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_scalevec.c]
!1218 = metadata !{i32 726, i32 0, metadata !1217, metadata !1125}
!1219 = metadata !{i32 673, i32 0, metadata !162, metadata !1125}
!1220 = metadata !{i32 195, i32 0, metadata !929, null}
!1221 = metadata !{i32 200, i32 0, metadata !929, null}
!1222 = metadata !{i32 202, i32 0, metadata !49, null}
