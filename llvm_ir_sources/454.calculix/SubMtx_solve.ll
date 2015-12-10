; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A fatal error in SubMtx_solve(%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [60 x i8] c"\0A fatal error in SubMtx_solve(%p,%p)\0A mtxB has bad type %d\0A\00", align 1
@.str2 = private unnamed_addr constant [72 x i8] c"\0A fatal error in SubMtx_solve(%p,%p)\0A mtxA->nrow = %d, mtxB->nrwo = %d\0A\00", align 1
@.str3 = private unnamed_addr constant [51 x i8] c"\0A fatal error in SubMtx_solve(%p,%p)\0A bad mode %d\0A\00", align 1
@.str4 = private unnamed_addr constant [51 x i8] c"\0A fatal error in SubMtx_solve(%p,%p)\0A bad type %d\0A\00", align 1
@.str5 = private unnamed_addr constant [102 x i8] c"\0A fatal error in SubMtx_solve(%p,%p)\0A mtxA is block diagonal hermitian\0A pivot %d is %d, not supported\00", align 1
@.str6 = private unnamed_addr constant [102 x i8] c"\0A fatal error in SubMtx_solve(%p,%p)\0A mtxA is block diagonal symmetric\0A pivot %d is %d, not supported\00", align 1
@.str7 = private unnamed_addr constant [52 x i8] c"\0A fatal error, irowA = %d, kk =%d, ii = %d, jj = %d\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_solve(%struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB) #0 {
entry:
  %ci00.i873 = alloca double, align 8
  %ci01.i874 = alloca double, align 8
  %ci11.i875 = alloca double, align 8
  %cr00.i876 = alloca double, align 8
  %cr01.i877 = alloca double, align 8
  %cr11.i878 = alloca double, align 8
  %entriesA.i879 = alloca double*, align 8
  %entriesB.i880 = alloca double*, align 8
  %inc1.i881 = alloca i32, align 4
  %inc2.i882 = alloca i32, align 4
  %ncolB.i883 = alloca i32, align 4
  %nentA.i884 = alloca i32, align 4
  %nrowA.i885 = alloca i32, align 4
  %nrowB.i886 = alloca i32, align 4
  %pivotsizes.i887 = alloca i32*, align 8
  %ci00.i = alloca double, align 8
  %ci01.i = alloca double, align 8
  %ci11.i = alloca double, align 8
  %cr00.i = alloca double, align 8
  %cr01.i = alloca double, align 8
  %cr11.i = alloca double, align 8
  %entriesA.i767 = alloca double*, align 8
  %entriesB.i768 = alloca double*, align 8
  %inc1.i769 = alloca i32, align 4
  %inc2.i770 = alloca i32, align 4
  %ncolB.i771 = alloca i32, align 4
  %nentA.i772 = alloca i32, align 4
  %nrowA.i773 = alloca i32, align 4
  %nrowB.i774 = alloca i32, align 4
  %pivotsizes.i775 = alloca i32*, align 8
  %ci.i = alloca double, align 8
  %cr.i = alloca double, align 8
  %entriesA.i704 = alloca double*, align 8
  %entriesB.i705 = alloca double*, align 8
  %inc1.i706 = alloca i32, align 4
  %inc2.i707 = alloca i32, align 4
  %ncolB.i708 = alloca i32, align 4
  %nrowA.i709 = alloca i32, align 4
  %nrowB.i710 = alloca i32, align 4
  %entriesA.i592 = alloca double*, align 8
  %entriesB.i593 = alloca double*, align 8
  %inc1.i594 = alloca i32, align 4
  %inc2.i595 = alloca i32, align 4
  %ncolB.i596 = alloca i32, align 4
  %nentA.i597 = alloca i32, align 4
  %nrowA.i598 = alloca i32, align 4
  %nrowB.i599 = alloca i32, align 4
  %indicesA.i600 = alloca i32*, align 8
  %sizesA.i601 = alloca i32*, align 8
  %entriesA.i490 = alloca double*, align 8
  %entriesB.i491 = alloca double*, align 8
  %inc1.i492 = alloca i32, align 4
  %inc2.i493 = alloca i32, align 4
  %ncolB.i494 = alloca i32, align 4
  %nentA.i495 = alloca i32, align 4
  %nrowA.i496 = alloca i32, align 4
  %nrowB.i497 = alloca i32, align 4
  %firstlocsA.i498 = alloca i32*, align 8
  %sizesA.i499 = alloca i32*, align 8
  %entriesA.i390 = alloca double*, align 8
  %entriesB.i391 = alloca double*, align 8
  %inc1.i392 = alloca i32, align 4
  %inc2.i393 = alloca i32, align 4
  %ncolB.i394 = alloca i32, align 4
  %nentA.i395 = alloca i32, align 4
  %nrowA.i396 = alloca i32, align 4
  %nrowB.i397 = alloca i32, align 4
  %indicesA.i398 = alloca i32*, align 8
  %sizesA.i399 = alloca i32*, align 8
  %entriesA.i317 = alloca double*, align 8
  %entriesB.i318 = alloca double*, align 8
  %inc1.i319 = alloca i32, align 4
  %inc2.i320 = alloca i32, align 4
  %ncolB.i321 = alloca i32, align 4
  %nentA.i322 = alloca i32, align 4
  %nrowA.i323 = alloca i32, align 4
  %nrowB.i324 = alloca i32, align 4
  %firstlocsA.i325 = alloca i32*, align 8
  %sizesA.i326 = alloca i32*, align 8
  %entriesA.i273 = alloca double*, align 8
  %entriesB.i274 = alloca double*, align 8
  %inc1.i275 = alloca i32, align 4
  %inc2.i276 = alloca i32, align 4
  %ncolB.i277 = alloca i32, align 4
  %nentA.i278 = alloca i32, align 4
  %nrowA.i279 = alloca i32, align 4
  %nrowB.i280 = alloca i32, align 4
  %pivotsizes.i = alloca i32*, align 8
  %entriesA.i239 = alloca double*, align 8
  %entriesB.i240 = alloca double*, align 8
  %inc1.i241 = alloca i32, align 4
  %inc2.i242 = alloca i32, align 4
  %ncolB.i243 = alloca i32, align 4
  %nrowA.i244 = alloca i32, align 4
  %nrowB.i245 = alloca i32, align 4
  %entriesA.i192 = alloca double*, align 8
  %entriesB.i193 = alloca double*, align 8
  %inc1.i194 = alloca i32, align 4
  %inc2.i195 = alloca i32, align 4
  %ncolB.i196 = alloca i32, align 4
  %nentA.i197 = alloca i32, align 4
  %nrowA.i198 = alloca i32, align 4
  %nrowB.i199 = alloca i32, align 4
  %indicesA.i200 = alloca i32*, align 8
  %sizesA.i201 = alloca i32*, align 8
  %entriesA.i144 = alloca double*, align 8
  %entriesB.i145 = alloca double*, align 8
  %inc1.i146 = alloca i32, align 4
  %inc2.i147 = alloca i32, align 4
  %ncolB.i148 = alloca i32, align 4
  %nentA.i149 = alloca i32, align 4
  %nrowA.i150 = alloca i32, align 4
  %nrowB.i151 = alloca i32, align 4
  %firstlocsA.i152 = alloca i32*, align 8
  %sizesA.i153 = alloca i32*, align 8
  %entriesA.i92 = alloca double*, align 8
  %entriesB.i93 = alloca double*, align 8
  %inc1.i94 = alloca i32, align 4
  %inc2.i95 = alloca i32, align 4
  %ncolB.i96 = alloca i32, align 4
  %nentA.i97 = alloca i32, align 4
  %nrowA.i98 = alloca i32, align 4
  %nrowB.i99 = alloca i32, align 4
  %indicesA.i = alloca i32*, align 8
  %sizesA.i100 = alloca i32*, align 8
  %entriesA.i = alloca double*, align 8
  %entriesB.i = alloca double*, align 8
  %inc1.i = alloca i32, align 4
  %inc2.i = alloca i32, align 4
  %ncolB.i = alloca i32, align 4
  %nentA.i = alloca i32, align 4
  %nrowA.i = alloca i32, align 4
  %nrowB.i = alloca i32, align 4
  %firstlocsA.i = alloca i32*, align 8
  %sizesA.i = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !37), !dbg !442
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxB}, i64 0, metadata !38), !dbg !443
  %cmp = icmp eq %struct._SubMtx* %mtxA, null, !dbg !444
  %cmp1 = icmp eq %struct._SubMtx* %mtxB, null, !dbg !444
  %or.cond = or i1 %cmp, %cmp1, !dbg !444
  br i1 %or.cond, label %if.then, label %if.end, !dbg !444

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !445, !tbaa !447
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB) #6, !dbg !445
  call void @exit(i32 -1) #7, !dbg !450
  unreachable, !dbg !450

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct._SubMtx* %mtxB, i64 0, i32 1, !dbg !451
  %1 = load i32* %mode, align 4, !dbg !451, !tbaa !452
  %cmp2 = icmp eq i32 %1, 1, !dbg !451
  br i1 %cmp2, label %if.end5, label %if.then3, !dbg !451

if.then3:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !453, !tbaa !447
  %type = getelementptr inbounds %struct._SubMtx* %mtxB, i64 0, i32 0, !dbg !453
  %3 = load i32* %type, align 4, !dbg !453, !tbaa !452
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([60 x i8]* @.str1, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 %3) #6, !dbg !453
  call void @exit(i32 -1) #7, !dbg !455
  unreachable, !dbg !455

if.end5:                                          ; preds = %if.end
  %nrow = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 4, !dbg !456
  %4 = load i32* %nrow, align 4, !dbg !456, !tbaa !452
  %nrow6 = getelementptr inbounds %struct._SubMtx* %mtxB, i64 0, i32 4, !dbg !456
  %5 = load i32* %nrow6, align 4, !dbg !456, !tbaa !452
  %cmp7 = icmp eq i32 %4, %5, !dbg !456
  br i1 %cmp7, label %if.end12, label %if.then8, !dbg !456

if.then8:                                         ; preds = %if.end5
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !457, !tbaa !447
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([72 x i8]* @.str2, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 %4, i32 %5) #6, !dbg !457
  call void @exit(i32 -1) #7, !dbg !459
  unreachable, !dbg !459

if.end12:                                         ; preds = %if.end5
  %type13 = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 0, !dbg !460
  %7 = load i32* %type13, align 4, !dbg !460, !tbaa !452
  switch i32 %7, label %sw.default38 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb24
  ], !dbg !460

sw.bb:                                            ; preds = %if.end12
  %mode14 = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 1, !dbg !461
  %8 = load i32* %mode14, align 4, !dbg !461, !tbaa !452
  switch i32 %8, label %sw.default [
    i32 5, label %sw.bb15
    i32 2, label %sw.bb16
    i32 6, label %sw.bb17
    i32 3, label %sw.bb18
    i32 7, label %sw.bb19
    i32 8, label %sw.bb20
  ], !dbg !461

sw.bb15:                                          ; preds = %sw.bb
  %9 = bitcast double** %entriesA.i to i8*, !dbg !463
  call void @llvm.lifetime.start(i64 8, i8* %9) #5, !dbg !463
  %10 = bitcast double** %entriesB.i to i8*, !dbg !463
  call void @llvm.lifetime.start(i64 8, i8* %10) #5, !dbg !463
  %11 = bitcast i32* %inc1.i to i8*, !dbg !463
  call void @llvm.lifetime.start(i64 4, i8* %11) #5, !dbg !463
  %12 = bitcast i32* %inc2.i to i8*, !dbg !463
  call void @llvm.lifetime.start(i64 4, i8* %12) #5, !dbg !463
  %13 = bitcast i32* %ncolB.i to i8*, !dbg !463
  call void @llvm.lifetime.start(i64 4, i8* %13) #5, !dbg !463
  %14 = bitcast i32* %nentA.i to i8*, !dbg !463
  call void @llvm.lifetime.start(i64 4, i8* %14) #5, !dbg !463
  %15 = bitcast i32* %nrowA.i to i8*, !dbg !463
  call void @llvm.lifetime.start(i64 4, i8* %15) #5, !dbg !463
  %16 = bitcast i32* %nrowB.i to i8*, !dbg !463
  call void @llvm.lifetime.start(i64 4, i8* %16) #5, !dbg !463
  %17 = bitcast i32** %firstlocsA.i to i8*, !dbg !463
  call void @llvm.lifetime.start(i64 8, i8* %17) #5, !dbg !463
  %18 = bitcast i32** %sizesA.i to i8*, !dbg !463
  call void @llvm.lifetime.start(i64 8, i8* %18) #5, !dbg !463
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !466) #5, !dbg !463
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxB}, i64 0, metadata !467) #5, !dbg !468
  call void @llvm.dbg.declare(metadata !{double** %entriesA.i}, metadata !426) #5, !dbg !469
  call void @llvm.dbg.declare(metadata !{double** %entriesB.i}, metadata !427) #5, !dbg !469
  call void @llvm.dbg.declare(metadata !{i32* %inc1.i}, metadata !430) #5, !dbg !470
  call void @llvm.dbg.declare(metadata !{i32* %inc2.i}, metadata !431) #5, !dbg !470
  call void @llvm.dbg.declare(metadata !{i32* %ncolB.i}, metadata !436) #5, !dbg !471
  call void @llvm.dbg.declare(metadata !{i32* %nentA.i}, metadata !437) #5, !dbg !471
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i}, metadata !438) #5, !dbg !471
  call void @llvm.dbg.declare(metadata !{i32* %nrowB.i}, metadata !439) #5, !dbg !471
  call void @llvm.dbg.declare(metadata !{i32** %firstlocsA.i}, metadata !440) #5, !dbg !472
  call void @llvm.dbg.declare(metadata !{i32** %sizesA.i}, metadata !441) #5, !dbg !472
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i, i32* %nentA.i, i32** %firstlocsA.i, i32** %sizesA.i, double** %entriesA.i) #6, !dbg !473
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i, i32* %ncolB.i, i32* %inc1.i, i32* %inc2.i, double** %entriesB.i) #6, !dbg !474
  call void @llvm.dbg.value(metadata !{double** %entriesB.i}, i64 0, metadata !475) #5, !dbg !476
  call void @llvm.dbg.value(metadata !{double** %entriesB.i}, i64 0, metadata !427), !dbg !476
  %19 = load double** %entriesB.i, align 8, !dbg !476, !tbaa !447
  call void @llvm.dbg.value(metadata !{double* %19}, i64 0, metadata !477) #5, !dbg !476
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !478) #5, !dbg !479
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i}, i64 0, metadata !481) #5, !dbg !479
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i}, i64 0, metadata !436), !dbg !479
  %20 = load i32* %ncolB.i, align 4, !dbg !479, !tbaa !452
  %sub240.i = add nsw i32 %20, -2, !dbg !479
  %cmp241.i = icmp sgt i32 %sub240.i, 0, !dbg !479
  br i1 %cmp241.i, label %for.body.lr.ph.i, label %for.end45.i, !dbg !479

for.body.lr.ph.i:                                 ; preds = %sw.bb15
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i}, i64 0, metadata !482) #5, !dbg !483
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i}, i64 0, metadata !439), !dbg !483
  %21 = load i32* %nrowB.i, align 4, !dbg !483, !tbaa !452
  %idx.ext.i = sext i32 %21 to i64, !dbg !483
  %add.ptr.sum.i = shl nsw i64 %idx.ext.i, 1, !dbg !485
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !486) #5, !dbg !487
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !438), !dbg !487
  %22 = load i32* %nrowA.i, align 4, !dbg !487, !tbaa !452
  %cmp4237.i = icmp sgt i32 %22, 0, !dbg !487
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i}, i64 0, metadata !482) #5, !dbg !489
  %add.ptr2.sum.i = add i64 %add.ptr.sum.i, %idx.ext.i, !dbg !489
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i}, i64 0, metadata !481) #5, !dbg !479
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i}, i64 0, metadata !490) #5, !dbg !491
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i}, i64 0, metadata !441), !dbg !491
  %23 = load i32** %sizesA.i, align 8, !dbg !491, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i}, i64 0, metadata !493) #5, !dbg !494
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i}, i64 0, metadata !440), !dbg !494
  %24 = load i32** %firstlocsA.i, align 8, !dbg !494, !tbaa !447
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !496) #5, !dbg !497
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !426), !dbg !497
  %25 = load double** %entriesA.i, align 8, !dbg !497, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !486) #5, !dbg !487
  br label %for.body.i, !dbg !479

for.body.i:                                       ; preds = %for.end40.i, %for.body.lr.ph.i
  %jcolB.0244.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add44.i, %for.end40.i ]
  %colB0.0242.i = phi double* [ %19, %for.body.lr.ph.i ], [ %add.ptr42.i, %for.end40.i ]
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i}, i64 0, metadata !482) #5, !dbg !483
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !500) #5, !dbg !487
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !501) #5, !dbg !487
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !486) #5, !dbg !487
  br i1 %cmp4237.i, label %for.body5.i, label %for.end40.i, !dbg !487

for.body5.i:                                      ; preds = %for.body.i, %for.inc38.i
  %indvars.iv265.i = phi i64 [ %indvars.iv.next266.i, %for.inc38.i ], [ 0, %for.body.i ]
  %kk.0239.i = phi i32 [ %kk.2.i, %for.inc38.i ], [ 0, %for.body.i ]
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i}, i64 0, metadata !490) #5, !dbg !491
  %arrayidx.i = getelementptr inbounds i32* %23, i64 %indvars.iv265.i, !dbg !491
  %26 = load i32* %arrayidx.i, align 4, !dbg !491, !tbaa !452
  %cmp6.i = icmp sgt i32 %26, 0, !dbg !491
  br i1 %cmp6.i, label %if.then.i, label %for.inc38.i, !dbg !491

if.then.i:                                        ; preds = %for.body5.i
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i}, i64 0, metadata !493) #5, !dbg !494
  %arrayidx8.i = getelementptr inbounds i32* %24, i64 %indvars.iv265.i, !dbg !494
  %27 = load i32* %arrayidx8.i, align 4, !dbg !494, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %27}, i64 0, metadata !502) #5, !dbg !494
  %add.i = add i32 %26, -1, !dbg !503
  %sub11.i = add i32 %add.i, %27, !dbg !503
  call void @llvm.dbg.value(metadata !{i32 %sub11.i}, i64 0, metadata !504) #5, !dbg !503
  call void @llvm.dbg.value(metadata !505, i64 0, metadata !506) #5, !dbg !507
  call void @llvm.dbg.value(metadata !505, i64 0, metadata !508) #5, !dbg !507
  call void @llvm.dbg.value(metadata !505, i64 0, metadata !509) #5, !dbg !507
  call void @llvm.dbg.value(metadata !{i32 %27}, i64 0, metadata !510) #5, !dbg !511
  %cmp13227.i = icmp sgt i32 %27, %sub11.i, !dbg !511
  br i1 %cmp13227.i, label %for.end.i, label %for.body14.lr.ph.i, !dbg !511

for.body14.lr.ph.i:                               ; preds = %if.then.i
  %28 = sext i32 %kk.0239.i to i64
  %29 = sext i32 %27 to i64, !dbg !511
  br label %for.body14.i, !dbg !511

for.body14.i:                                     ; preds = %for.body14.i, %for.body14.lr.ph.i
  %indvars.iv262.i = phi i64 [ %indvars.iv.next263.i, %for.body14.i ], [ %29, %for.body14.lr.ph.i ], !dbg !511
  %indvars.iv260.i = phi i64 [ %indvars.iv.next261.i, %for.body14.i ], [ %28, %for.body14.lr.ph.i ]
  %sum2.0230.i = phi double [ %add27.i, %for.body14.i ], [ 0.000000e+00, %for.body14.lr.ph.i ]
  %sum1.0229.i = phi double [ %add23.i, %for.body14.i ], [ 0.000000e+00, %for.body14.lr.ph.i ]
  %sum0.0228.i = phi double [ %add19.i, %for.body14.i ], [ 0.000000e+00, %for.body14.lr.ph.i ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !496) #5, !dbg !497
  %arrayidx16.i = getelementptr inbounds double* %25, i64 %indvars.iv260.i, !dbg !497
  %30 = load double* %arrayidx16.i, align 8, !dbg !497, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %30}, i64 0, metadata !513) #5, !dbg !497
  %arrayidx18.i = getelementptr inbounds double* %colB0.0242.i, i64 %indvars.iv262.i, !dbg !514
  %31 = load double* %arrayidx18.i, align 8, !dbg !514, !tbaa !512
  %mul.i = fmul double %30, %31, !dbg !514
  %add19.i = fadd double %sum0.0228.i, %mul.i, !dbg !514
  call void @llvm.dbg.value(metadata !{double %add19.i}, i64 0, metadata !509) #5, !dbg !514
  %add.ptr.sum205.i = add i64 %indvars.iv262.i, %idx.ext.i, !dbg !515
  %arrayidx21.i = getelementptr inbounds double* %colB0.0242.i, i64 %add.ptr.sum205.i, !dbg !515
  %32 = load double* %arrayidx21.i, align 8, !dbg !515, !tbaa !512
  %mul22.i = fmul double %30, %32, !dbg !515
  %add23.i = fadd double %sum1.0229.i, %mul22.i, !dbg !515
  call void @llvm.dbg.value(metadata !{double %add23.i}, i64 0, metadata !508) #5, !dbg !515
  %add.ptr2.sum206.i = add i64 %indvars.iv262.i, %add.ptr.sum.i, !dbg !516
  %arrayidx25.i = getelementptr inbounds double* %colB0.0242.i, i64 %add.ptr2.sum206.i, !dbg !516
  %33 = load double* %arrayidx25.i, align 8, !dbg !516, !tbaa !512
  %mul26.i = fmul double %30, %33, !dbg !516
  %add27.i = fadd double %sum2.0230.i, %mul26.i, !dbg !516
  call void @llvm.dbg.value(metadata !{double %add27.i}, i64 0, metadata !506) #5, !dbg !516
  %indvars.iv.next263.i = add i64 %indvars.iv262.i, 1, !dbg !511
  %indvars.iv.next261.i = add i64 %indvars.iv260.i, 1, !dbg !511
  %34 = trunc i64 %indvars.iv262.i to i32, !dbg !511
  %cmp13.i = icmp slt i32 %34, %sub11.i, !dbg !511
  br i1 %cmp13.i, label %for.body14.i, label %for.cond12.for.end_crit_edge.i, !dbg !511

for.cond12.for.end_crit_edge.i:                   ; preds = %for.body14.i
  %35 = add i32 %26, %kk.0239.i, !dbg !511
  br label %for.end.i, !dbg !511

for.end.i:                                        ; preds = %for.cond12.for.end_crit_edge.i, %if.then.i
  %kk.1.lcssa.i = phi i32 [ %35, %for.cond12.for.end_crit_edge.i ], [ %kk.0239.i, %if.then.i ]
  %sum2.0.lcssa.i = phi double [ %add27.i, %for.cond12.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i ]
  %sum1.0.lcssa.i = phi double [ %add23.i, %for.cond12.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i ]
  %sum0.0.lcssa.i = phi double [ %add19.i, %for.cond12.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i ]
  %arrayidx30.i = getelementptr inbounds double* %colB0.0242.i, i64 %indvars.iv265.i, !dbg !517
  %36 = load double* %arrayidx30.i, align 8, !dbg !517, !tbaa !512
  %sub31.i = fsub double %36, %sum0.0.lcssa.i, !dbg !517
  store double %sub31.i, double* %arrayidx30.i, align 8, !dbg !517, !tbaa !512
  %add.ptr.sum203.i = add i64 %indvars.iv265.i, %idx.ext.i, !dbg !518
  %arrayidx33.i = getelementptr inbounds double* %colB0.0242.i, i64 %add.ptr.sum203.i, !dbg !518
  %37 = load double* %arrayidx33.i, align 8, !dbg !518, !tbaa !512
  %sub34.i = fsub double %37, %sum1.0.lcssa.i, !dbg !518
  store double %sub34.i, double* %arrayidx33.i, align 8, !dbg !518, !tbaa !512
  %add.ptr2.sum204.i = add i64 %indvars.iv265.i, %add.ptr.sum.i, !dbg !519
  %arrayidx36.i = getelementptr inbounds double* %colB0.0242.i, i64 %add.ptr2.sum204.i, !dbg !519
  %38 = load double* %arrayidx36.i, align 8, !dbg !519, !tbaa !512
  %sub37.i = fsub double %38, %sum2.0.lcssa.i, !dbg !519
  store double %sub37.i, double* %arrayidx36.i, align 8, !dbg !519, !tbaa !512
  br label %for.inc38.i, !dbg !520

for.inc38.i:                                      ; preds = %for.end.i, %for.body5.i
  %kk.2.i = phi i32 [ %kk.1.lcssa.i, %for.end.i ], [ %kk.0239.i, %for.body5.i ]
  %indvars.iv.next266.i = add i64 %indvars.iv265.i, 1, !dbg !487
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !486) #5, !dbg !487
  %lftr.wideiv1107 = trunc i64 %indvars.iv.next266.i to i32, !dbg !487
  %exitcond1108 = icmp eq i32 %lftr.wideiv1107, %22, !dbg !487
  br i1 %exitcond1108, label %for.end40.i, label %for.body5.i, !dbg !487

for.end40.i:                                      ; preds = %for.inc38.i, %for.body.i
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i}, i64 0, metadata !482) #5, !dbg !489
  %add.ptr42.i = getelementptr inbounds double* %colB0.0242.i, i64 %add.ptr2.sum.i, !dbg !489
  call void @llvm.dbg.value(metadata !{double* %add.ptr42.i}, i64 0, metadata !477) #5, !dbg !489
  %add44.i = add nsw i32 %jcolB.0244.i, 3, !dbg !479
  call void @llvm.dbg.value(metadata !{i32 %add44.i}, i64 0, metadata !478) #5, !dbg !479
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i}, i64 0, metadata !481) #5, !dbg !479
  %cmp.i = icmp slt i32 %add44.i, %sub240.i, !dbg !479
  br i1 %cmp.i, label %for.body.i, label %for.end45.i, !dbg !479

for.end45.i:                                      ; preds = %for.end40.i, %sw.bb15
  %jcolB.0.lcssa.i = phi i32 [ 0, %sw.bb15 ], [ %add44.i, %for.end40.i ]
  %colB0.0.lcssa.i = phi double* [ %19, %sw.bb15 ], [ %add.ptr42.i, %for.end40.i ]
  %cmp47.i = icmp eq i32 %jcolB.0.lcssa.i, %sub240.i, !dbg !521
  br i1 %cmp47.i, label %if.then48.i, label %if.else.i, !dbg !521

if.then48.i:                                      ; preds = %for.end45.i
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i}, i64 0, metadata !482) #5, !dbg !522
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i}, i64 0, metadata !439), !dbg !522
  %39 = load i32* %nrowB.i, align 4, !dbg !522, !tbaa !452
  %idx.ext49.i = sext i32 %39 to i64, !dbg !522
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !500) #5, !dbg !524
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !501) #5, !dbg !524
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !486) #5, !dbg !524
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !438), !dbg !524
  %40 = load i32* %nrowA.i, align 4, !dbg !524, !tbaa !452
  %cmp52214.i = icmp sgt i32 %40, 0, !dbg !524
  br i1 %cmp52214.i, label %for.body53.lr.ph.i, label %sw.epilog41, !dbg !524

for.body53.lr.ph.i:                               ; preds = %if.then48.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i}, i64 0, metadata !490) #5, !dbg !526
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i}, i64 0, metadata !441), !dbg !526
  %41 = load i32** %sizesA.i, align 8, !dbg !526, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i}, i64 0, metadata !493) #5, !dbg !528
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i}, i64 0, metadata !440), !dbg !528
  %42 = load i32** %firstlocsA.i, align 8, !dbg !528, !tbaa !447
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !496) #5, !dbg !530
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !426), !dbg !530
  %43 = load double** %entriesA.i, align 8, !dbg !530, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !486) #5, !dbg !524
  br label %for.body53.i, !dbg !524

for.body53.i:                                     ; preds = %for.inc88.i, %for.body53.lr.ph.i
  %indvars.iv251.i = phi i64 [ 0, %for.body53.lr.ph.i ], [ %indvars.iv.next252.i, %for.inc88.i ]
  %kk.3216.i = phi i32 [ 0, %for.body53.lr.ph.i ], [ %kk.5.i, %for.inc88.i ]
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i}, i64 0, metadata !490) #5, !dbg !526
  %arrayidx55.i = getelementptr inbounds i32* %41, i64 %indvars.iv251.i, !dbg !526
  %44 = load i32* %arrayidx55.i, align 4, !dbg !526, !tbaa !452
  %cmp56.i = icmp sgt i32 %44, 0, !dbg !526
  br i1 %cmp56.i, label %if.then57.i, label %for.inc88.i, !dbg !526

if.then57.i:                                      ; preds = %for.body53.i
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i}, i64 0, metadata !493) #5, !dbg !528
  %arrayidx59.i = getelementptr inbounds i32* %42, i64 %indvars.iv251.i, !dbg !528
  %45 = load i32* %arrayidx59.i, align 4, !dbg !528, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %45}, i64 0, metadata !502) #5, !dbg !528
  %add62.i = add i32 %44, -1, !dbg !533
  %sub63.i = add i32 %add62.i, %45, !dbg !533
  call void @llvm.dbg.value(metadata !{i32 %sub63.i}, i64 0, metadata !504) #5, !dbg !533
  call void @llvm.dbg.value(metadata !505, i64 0, metadata !508) #5, !dbg !534
  call void @llvm.dbg.value(metadata !505, i64 0, metadata !509) #5, !dbg !534
  call void @llvm.dbg.value(metadata !{i32 %45}, i64 0, metadata !510) #5, !dbg !535
  %cmp65207.i = icmp sgt i32 %45, %sub63.i, !dbg !535
  br i1 %cmp65207.i, label %for.end80.i, label %for.body66.lr.ph.i, !dbg !535

for.body66.lr.ph.i:                               ; preds = %if.then57.i
  %46 = sext i32 %kk.3216.i to i64
  %47 = sext i32 %45 to i64, !dbg !535
  br label %for.body66.i, !dbg !535

for.body66.i:                                     ; preds = %for.body66.i, %for.body66.lr.ph.i
  %indvars.iv249.i = phi i64 [ %indvars.iv.next250.i, %for.body66.i ], [ %47, %for.body66.lr.ph.i ], !dbg !535
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body66.i ], [ %46, %for.body66.lr.ph.i ]
  %sum1.1209.i = phi double [ %add76.i, %for.body66.i ], [ 0.000000e+00, %for.body66.lr.ph.i ]
  %sum0.1208.i = phi double [ %add72.i, %for.body66.i ], [ 0.000000e+00, %for.body66.lr.ph.i ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !496) #5, !dbg !530
  %arrayidx68.i = getelementptr inbounds double* %43, i64 %indvars.iv.i, !dbg !530
  %48 = load double* %arrayidx68.i, align 8, !dbg !530, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %48}, i64 0, metadata !513) #5, !dbg !530
  %arrayidx70.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %indvars.iv249.i, !dbg !536
  %49 = load double* %arrayidx70.i, align 8, !dbg !536, !tbaa !512
  %mul71.i = fmul double %48, %49, !dbg !536
  %add72.i = fadd double %sum0.1208.i, %mul71.i, !dbg !536
  call void @llvm.dbg.value(metadata !{double %add72.i}, i64 0, metadata !509) #5, !dbg !536
  %add.ptr50.sum202.i = add i64 %indvars.iv249.i, %idx.ext49.i, !dbg !537
  %arrayidx74.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %add.ptr50.sum202.i, !dbg !537
  %50 = load double* %arrayidx74.i, align 8, !dbg !537, !tbaa !512
  %mul75.i = fmul double %48, %50, !dbg !537
  %add76.i = fadd double %sum1.1209.i, %mul75.i, !dbg !537
  call void @llvm.dbg.value(metadata !{double %add76.i}, i64 0, metadata !508) #5, !dbg !537
  %indvars.iv.next250.i = add i64 %indvars.iv249.i, 1, !dbg !535
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !535
  %51 = trunc i64 %indvars.iv249.i to i32, !dbg !535
  %cmp65.i = icmp slt i32 %51, %sub63.i, !dbg !535
  br i1 %cmp65.i, label %for.body66.i, label %for.cond64.for.end80_crit_edge.i, !dbg !535

for.cond64.for.end80_crit_edge.i:                 ; preds = %for.body66.i
  %52 = add i32 %44, %kk.3216.i, !dbg !535
  br label %for.end80.i, !dbg !535

for.end80.i:                                      ; preds = %for.cond64.for.end80_crit_edge.i, %if.then57.i
  %kk.4.lcssa.i = phi i32 [ %52, %for.cond64.for.end80_crit_edge.i ], [ %kk.3216.i, %if.then57.i ]
  %sum1.1.lcssa.i = phi double [ %add76.i, %for.cond64.for.end80_crit_edge.i ], [ 0.000000e+00, %if.then57.i ]
  %sum0.1.lcssa.i = phi double [ %add72.i, %for.cond64.for.end80_crit_edge.i ], [ 0.000000e+00, %if.then57.i ]
  %arrayidx82.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %indvars.iv251.i, !dbg !538
  %53 = load double* %arrayidx82.i, align 8, !dbg !538, !tbaa !512
  %sub83.i = fsub double %53, %sum0.1.lcssa.i, !dbg !538
  store double %sub83.i, double* %arrayidx82.i, align 8, !dbg !538, !tbaa !512
  %add.ptr50.sum.i = add i64 %indvars.iv251.i, %idx.ext49.i, !dbg !539
  %arrayidx85.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %add.ptr50.sum.i, !dbg !539
  %54 = load double* %arrayidx85.i, align 8, !dbg !539, !tbaa !512
  %sub86.i = fsub double %54, %sum1.1.lcssa.i, !dbg !539
  store double %sub86.i, double* %arrayidx85.i, align 8, !dbg !539, !tbaa !512
  br label %for.inc88.i, !dbg !540

for.inc88.i:                                      ; preds = %for.end80.i, %for.body53.i
  %kk.5.i = phi i32 [ %kk.4.lcssa.i, %for.end80.i ], [ %kk.3216.i, %for.body53.i ]
  %indvars.iv.next252.i = add i64 %indvars.iv251.i, 1, !dbg !524
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !486) #5, !dbg !524
  %lftr.wideiv = trunc i64 %indvars.iv.next252.i to i32, !dbg !524
  %exitcond = icmp eq i32 %lftr.wideiv, %40, !dbg !524
  br i1 %exitcond, label %sw.epilog41, label %for.body53.i, !dbg !524

if.else.i:                                        ; preds = %for.end45.i
  %sub91.i = add nsw i32 %20, -1, !dbg !541
  %cmp92.i = icmp eq i32 %jcolB.0.lcssa.i, %sub91.i, !dbg !541
  br i1 %cmp92.i, label %for.cond94.preheader.i, label %sw.epilog41, !dbg !541

for.cond94.preheader.i:                           ; preds = %if.else.i
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !486) #5, !dbg !542
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !438), !dbg !542
  %55 = load i32* %nrowA.i, align 4, !dbg !542, !tbaa !452
  %cmp95224.i = icmp sgt i32 %55, 0, !dbg !542
  br i1 %cmp95224.i, label %for.body96.lr.ph.i, label %sw.epilog41, !dbg !542

for.body96.lr.ph.i:                               ; preds = %for.cond94.preheader.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i}, i64 0, metadata !490) #5, !dbg !545
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i}, i64 0, metadata !441), !dbg !545
  %56 = load i32** %sizesA.i, align 8, !dbg !545, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i}, i64 0, metadata !493) #5, !dbg !547
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i}, i64 0, metadata !440), !dbg !547
  %57 = load i32** %firstlocsA.i, align 8, !dbg !547, !tbaa !447
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !496) #5, !dbg !549
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !426), !dbg !549
  %58 = load double** %entriesA.i, align 8, !dbg !549, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !486) #5, !dbg !542
  br label %for.body96.i, !dbg !542

for.body96.i:                                     ; preds = %for.inc124.i, %for.body96.lr.ph.i
  %indvars.iv258.i = phi i64 [ 0, %for.body96.lr.ph.i ], [ %indvars.iv.next259.i, %for.inc124.i ]
  %kk.6226.i = phi i32 [ 0, %for.body96.lr.ph.i ], [ %kk.8.i, %for.inc124.i ]
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i}, i64 0, metadata !490) #5, !dbg !545
  %arrayidx98.i = getelementptr inbounds i32* %56, i64 %indvars.iv258.i, !dbg !545
  %59 = load i32* %arrayidx98.i, align 4, !dbg !545, !tbaa !452
  %cmp99.i = icmp sgt i32 %59, 0, !dbg !545
  br i1 %cmp99.i, label %if.then100.i, label %for.inc124.i, !dbg !545

if.then100.i:                                     ; preds = %for.body96.i
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i}, i64 0, metadata !493) #5, !dbg !547
  %arrayidx102.i = getelementptr inbounds i32* %57, i64 %indvars.iv258.i, !dbg !547
  %60 = load i32* %arrayidx102.i, align 4, !dbg !547, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %60}, i64 0, metadata !502) #5, !dbg !547
  %add105.i = add i32 %59, -1, !dbg !552
  %sub106.i = add i32 %add105.i, %60, !dbg !552
  call void @llvm.dbg.value(metadata !{i32 %sub106.i}, i64 0, metadata !504) #5, !dbg !552
  call void @llvm.dbg.value(metadata !505, i64 0, metadata !509) #5, !dbg !553
  call void @llvm.dbg.value(metadata !{i32 %60}, i64 0, metadata !510) #5, !dbg !554
  %cmp108217.i = icmp sgt i32 %60, %sub106.i, !dbg !554
  br i1 %cmp108217.i, label %for.end119.i, label %for.body109.lr.ph.i, !dbg !554

for.body109.lr.ph.i:                              ; preds = %if.then100.i
  %61 = sext i32 %kk.6226.i to i64
  %62 = sext i32 %60 to i64, !dbg !554
  br label %for.body109.i, !dbg !554

for.body109.i:                                    ; preds = %for.body109.i, %for.body109.lr.ph.i
  %indvars.iv255.i = phi i64 [ %indvars.iv.next256.i, %for.body109.i ], [ %62, %for.body109.lr.ph.i ], !dbg !554
  %indvars.iv253.i = phi i64 [ %indvars.iv.next254.i, %for.body109.i ], [ %61, %for.body109.lr.ph.i ]
  %sum0.2218.i = phi double [ %add115.i, %for.body109.i ], [ 0.000000e+00, %for.body109.lr.ph.i ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !496) #5, !dbg !549
  %arrayidx111.i = getelementptr inbounds double* %58, i64 %indvars.iv253.i, !dbg !549
  %63 = load double* %arrayidx111.i, align 8, !dbg !549, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %63}, i64 0, metadata !513) #5, !dbg !549
  %arrayidx113.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %indvars.iv255.i, !dbg !555
  %64 = load double* %arrayidx113.i, align 8, !dbg !555, !tbaa !512
  %mul114.i = fmul double %63, %64, !dbg !555
  %add115.i = fadd double %sum0.2218.i, %mul114.i, !dbg !555
  call void @llvm.dbg.value(metadata !{double %add115.i}, i64 0, metadata !509) #5, !dbg !555
  %indvars.iv.next256.i = add i64 %indvars.iv255.i, 1, !dbg !554
  %indvars.iv.next254.i = add i64 %indvars.iv253.i, 1, !dbg !554
  %65 = trunc i64 %indvars.iv255.i to i32, !dbg !554
  %cmp108.i = icmp slt i32 %65, %sub106.i, !dbg !554
  br i1 %cmp108.i, label %for.body109.i, label %for.cond107.for.end119_crit_edge.i, !dbg !554

for.cond107.for.end119_crit_edge.i:               ; preds = %for.body109.i
  %66 = add i32 %59, %kk.6226.i, !dbg !554
  br label %for.end119.i, !dbg !554

for.end119.i:                                     ; preds = %for.cond107.for.end119_crit_edge.i, %if.then100.i
  %kk.7.lcssa.i = phi i32 [ %66, %for.cond107.for.end119_crit_edge.i ], [ %kk.6226.i, %if.then100.i ]
  %sum0.2.lcssa.i = phi double [ %add115.i, %for.cond107.for.end119_crit_edge.i ], [ 0.000000e+00, %if.then100.i ]
  %arrayidx121.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %indvars.iv258.i, !dbg !556
  %67 = load double* %arrayidx121.i, align 8, !dbg !556, !tbaa !512
  %sub122.i = fsub double %67, %sum0.2.lcssa.i, !dbg !556
  store double %sub122.i, double* %arrayidx121.i, align 8, !dbg !556, !tbaa !512
  br label %for.inc124.i, !dbg !557

for.inc124.i:                                     ; preds = %for.end119.i, %for.body96.i
  %kk.8.i = phi i32 [ %kk.7.lcssa.i, %for.end119.i ], [ %kk.6226.i, %for.body96.i ]
  %indvars.iv.next259.i = add i64 %indvars.iv258.i, 1, !dbg !542
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !486) #5, !dbg !542
  %lftr.wideiv1105 = trunc i64 %indvars.iv.next259.i to i32, !dbg !542
  %exitcond1106 = icmp eq i32 %lftr.wideiv1105, %55, !dbg !542
  br i1 %exitcond1106, label %sw.epilog41, label %for.body96.i, !dbg !542

sw.bb16:                                          ; preds = %sw.bb
  %68 = bitcast double** %entriesA.i92 to i8*, !dbg !558
  call void @llvm.lifetime.start(i64 8, i8* %68) #5, !dbg !558
  %69 = bitcast double** %entriesB.i93 to i8*, !dbg !558
  call void @llvm.lifetime.start(i64 8, i8* %69) #5, !dbg !558
  %70 = bitcast i32* %inc1.i94 to i8*, !dbg !558
  call void @llvm.lifetime.start(i64 4, i8* %70) #5, !dbg !558
  %71 = bitcast i32* %inc2.i95 to i8*, !dbg !558
  call void @llvm.lifetime.start(i64 4, i8* %71) #5, !dbg !558
  %72 = bitcast i32* %ncolB.i96 to i8*, !dbg !558
  call void @llvm.lifetime.start(i64 4, i8* %72) #5, !dbg !558
  %73 = bitcast i32* %nentA.i97 to i8*, !dbg !558
  call void @llvm.lifetime.start(i64 4, i8* %73) #5, !dbg !558
  %74 = bitcast i32* %nrowA.i98 to i8*, !dbg !558
  call void @llvm.lifetime.start(i64 4, i8* %74) #5, !dbg !558
  %75 = bitcast i32* %nrowB.i99 to i8*, !dbg !558
  call void @llvm.lifetime.start(i64 4, i8* %75) #5, !dbg !558
  %76 = bitcast i32** %indicesA.i to i8*, !dbg !558
  call void @llvm.lifetime.start(i64 8, i8* %76) #5, !dbg !558
  %77 = bitcast i32** %sizesA.i100 to i8*, !dbg !558
  call void @llvm.lifetime.start(i64 8, i8* %77) #5, !dbg !558
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !560) #5, !dbg !558
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxB}, i64 0, metadata !561) #5, !dbg !562
  call void @llvm.dbg.declare(metadata !{double** %entriesA.i92}, metadata !399) #5, !dbg !563
  call void @llvm.dbg.declare(metadata !{double** %entriesB.i93}, metadata !400) #5, !dbg !563
  call void @llvm.dbg.declare(metadata !{i32* %inc1.i94}, metadata !402) #5, !dbg !564
  call void @llvm.dbg.declare(metadata !{i32* %inc2.i95}, metadata !403) #5, !dbg !564
  call void @llvm.dbg.declare(metadata !{i32* %ncolB.i96}, metadata !408) #5, !dbg !565
  call void @llvm.dbg.declare(metadata !{i32* %nentA.i97}, metadata !409) #5, !dbg !565
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i98}, metadata !410) #5, !dbg !565
  call void @llvm.dbg.declare(metadata !{i32* %nrowB.i99}, metadata !411) #5, !dbg !565
  call void @llvm.dbg.declare(metadata !{i32** %indicesA.i}, metadata !413) #5, !dbg !566
  call void @llvm.dbg.declare(metadata !{i32** %sizesA.i100}, metadata !414) #5, !dbg !566
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i98, i32* %nentA.i97, i32** %sizesA.i100, i32** %indicesA.i, double** %entriesA.i92) #6, !dbg !567
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i99, i32* %ncolB.i96, i32* %inc1.i94, i32* %inc2.i95, double** %entriesB.i93) #6, !dbg !568
  call void @llvm.dbg.value(metadata !{double** %entriesB.i93}, i64 0, metadata !569) #5, !dbg !570
  call void @llvm.dbg.value(metadata !{double** %entriesB.i93}, i64 0, metadata !400), !dbg !570
  %78 = load double** %entriesB.i93, align 8, !dbg !570, !tbaa !447
  call void @llvm.dbg.value(metadata !{double* %78}, i64 0, metadata !571) #5, !dbg !570
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !572) #5, !dbg !573
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i96}, i64 0, metadata !575) #5, !dbg !573
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i96}, i64 0, metadata !408), !dbg !573
  %79 = load i32* %ncolB.i96, align 4, !dbg !573, !tbaa !452
  %sub264.i = add nsw i32 %79, -2, !dbg !573
  %cmp265.i = icmp sgt i32 %sub264.i, 0, !dbg !573
  br i1 %cmp265.i, label %for.body.lr.ph.i104, label %for.end45.i123, !dbg !573

for.body.lr.ph.i104:                              ; preds = %sw.bb16
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i99}, i64 0, metadata !576) #5, !dbg !577
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i99}, i64 0, metadata !411), !dbg !577
  %80 = load i32* %nrowB.i99, align 4, !dbg !577, !tbaa !452
  %idx.ext.i101 = sext i32 %80 to i64, !dbg !577
  %add.ptr.sum.i102 = shl nsw i64 %idx.ext.i101, 1, !dbg !579
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i98}, i64 0, metadata !580) #5, !dbg !581
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i98}, i64 0, metadata !410), !dbg !581
  %81 = load i32* %nrowA.i98, align 4, !dbg !581, !tbaa !452
  %cmp4254.i = icmp sgt i32 %81, 0, !dbg !581
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i99}, i64 0, metadata !576) #5, !dbg !583
  %add.ptr2.sum.i103 = add i64 %add.ptr.sum.i102, %idx.ext.i101, !dbg !583
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i96}, i64 0, metadata !575) #5, !dbg !573
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i100}, i64 0, metadata !584) #5, !dbg !585
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i100}, i64 0, metadata !414), !dbg !585
  %82 = load i32** %sizesA.i100, align 8, !dbg !585, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i98}, i64 0, metadata !580) #5, !dbg !581
  call void @llvm.dbg.value(metadata !{double** %entriesA.i92}, i64 0, metadata !587) #5, !dbg !588
  call void @llvm.dbg.value(metadata !{double** %entriesA.i92}, i64 0, metadata !399), !dbg !588
  %83 = load double** %entriesA.i92, align 8, !dbg !588, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i}, i64 0, metadata !592) #5, !dbg !593
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i}, i64 0, metadata !413), !dbg !593
  %84 = load i32** %indicesA.i, align 8, !dbg !593, !tbaa !447
  br label %for.body.i105, !dbg !573

for.body.i105:                                    ; preds = %for.end40.i119, %for.body.lr.ph.i104
  %jcolB.0268.i = phi i32 [ 0, %for.body.lr.ph.i104 ], [ %add44.i117, %for.end40.i119 ]
  %colB0.0266.i = phi double* [ %78, %for.body.lr.ph.i104 ], [ %add.ptr42.i116, %for.end40.i119 ]
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i99}, i64 0, metadata !576) #5, !dbg !577
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !594) #5, !dbg !581
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !595) #5, !dbg !581
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i98}, i64 0, metadata !580) #5, !dbg !581
  br i1 %cmp4254.i, label %for.body5.i108, label %for.end40.i119, !dbg !581

for.body5.i108:                                   ; preds = %for.body.i105, %for.inc38.i115
  %indvars.iv290.i = phi i64 [ %indvars.iv.next291.i, %for.inc38.i115 ], [ 0, %for.body.i105 ]
  %kk.0258.i = phi i32 [ %kk.2.i113, %for.inc38.i115 ], [ 0, %for.body.i105 ]
  %irowA.0255.i = phi i32 [ %inc39.i, %for.inc38.i115 ], [ 0, %for.body.i105 ]
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i100}, i64 0, metadata !584) #5, !dbg !585
  %arrayidx.i106 = getelementptr inbounds i32* %82, i64 %indvars.iv290.i, !dbg !585
  %85 = load i32* %arrayidx.i106, align 4, !dbg !585, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %85}, i64 0, metadata !596) #5, !dbg !585
  %cmp6.i107 = icmp sgt i32 %85, 0, !dbg !585
  br i1 %cmp6.i107, label %for.body9.lr.ph.i, label %for.inc38.i115, !dbg !585

for.body9.lr.ph.i:                                ; preds = %for.body5.i108
  %86 = sext i32 %kk.0258.i to i64
  %87 = trunc i64 %indvars.iv290.i to i32, !dbg !597
  br label %for.body9.i, !dbg !598

for.body9.i:                                      ; preds = %if.end.i, %for.body9.lr.ph.i
  %indvars.iv287.i = phi i64 [ %86, %for.body9.lr.ph.i ], [ %indvars.iv.next288.i, %if.end.i ]
  %kk.1248.i = phi i32 [ %kk.0258.i, %for.body9.lr.ph.i ], [ %inc27.i, %if.end.i ]
  %ii.0247.i = phi i32 [ 0, %for.body9.lr.ph.i ], [ %inc.i, %if.end.i ]
  %sum2.0246.i = phi double [ 0.000000e+00, %for.body9.lr.ph.i ], [ %add26.i, %if.end.i ]
  %sum1.0245.i = phi double [ 0.000000e+00, %for.body9.lr.ph.i ], [ %add22.i, %if.end.i ]
  %sum0.0244.i = phi double [ 0.000000e+00, %for.body9.lr.ph.i ], [ %add.i111, %if.end.i ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i92}, i64 0, metadata !587) #5, !dbg !588
  %arrayidx11.i = getelementptr inbounds double* %83, i64 %indvars.iv287.i, !dbg !588
  %88 = load double* %arrayidx11.i, align 8, !dbg !588, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %88}, i64 0, metadata !599) #5, !dbg !588
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i}, i64 0, metadata !592) #5, !dbg !593
  %arrayidx13.i = getelementptr inbounds i32* %84, i64 %indvars.iv287.i, !dbg !593
  %89 = load i32* %arrayidx13.i, align 4, !dbg !593, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %89}, i64 0, metadata !600) #5, !dbg !593
  %cmp14.i = icmp sgt i32 %89, -1, !dbg !597
  %cmp15.i = icmp slt i32 %89, %87, !dbg !597
  %or.cond.i = and i1 %cmp14.i, %cmp15.i, !dbg !597
  br i1 %or.cond.i, label %if.end.i, label %if.then16.i, !dbg !597

if.then16.i:                                      ; preds = %for.body9.i
  %90 = load %struct._IO_FILE** @stderr, align 8, !dbg !601, !tbaa !447
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([52 x i8]* @.str7, i64 0, i64 0), i32 %irowA.0255.i, i32 %kk.1248.i, i32 %ii.0247.i, i32 %89) #6, !dbg !601
  call void @exit(i32 -1) #7, !dbg !603
  unreachable, !dbg !603

if.end.i:                                         ; preds = %for.body9.i
  %idxprom17.i = sext i32 %89 to i64, !dbg !604
  %arrayidx18.i109 = getelementptr inbounds double* %colB0.0266.i, i64 %idxprom17.i, !dbg !604
  %91 = load double* %arrayidx18.i109, align 8, !dbg !604, !tbaa !512
  %mul.i110 = fmul double %88, %91, !dbg !604
  %add.i111 = fadd double %sum0.0244.i, %mul.i110, !dbg !604
  call void @llvm.dbg.value(metadata !{double %add.i111}, i64 0, metadata !605) #5, !dbg !604
  %add.ptr.sum208.i = add i64 %idxprom17.i, %idx.ext.i101, !dbg !606
  %arrayidx20.i = getelementptr inbounds double* %colB0.0266.i, i64 %add.ptr.sum208.i, !dbg !606
  %92 = load double* %arrayidx20.i, align 8, !dbg !606, !tbaa !512
  %mul21.i = fmul double %88, %92, !dbg !606
  %add22.i = fadd double %sum1.0245.i, %mul21.i, !dbg !606
  call void @llvm.dbg.value(metadata !{double %add22.i}, i64 0, metadata !607) #5, !dbg !606
  %add.ptr2.sum209.i = add i64 %idxprom17.i, %add.ptr.sum.i102, !dbg !608
  %arrayidx24.i = getelementptr inbounds double* %colB0.0266.i, i64 %add.ptr2.sum209.i, !dbg !608
  %93 = load double* %arrayidx24.i, align 8, !dbg !608, !tbaa !512
  %mul25.i = fmul double %88, %93, !dbg !608
  %add26.i = fadd double %sum2.0246.i, %mul25.i, !dbg !608
  call void @llvm.dbg.value(metadata !{double %add26.i}, i64 0, metadata !609) #5, !dbg !608
  %inc.i = add nsw i32 %ii.0247.i, 1, !dbg !598
  call void @llvm.dbg.value(metadata !{i32 %inc.i}, i64 0, metadata !610) #5, !dbg !598
  %indvars.iv.next288.i = add i64 %indvars.iv287.i, 1, !dbg !598
  %inc27.i = add nsw i32 %kk.1248.i, 1, !dbg !598
  call void @llvm.dbg.value(metadata !{i32 %inc27.i}, i64 0, metadata !594) #5, !dbg !598
  %cmp8.i = icmp slt i32 %inc.i, %85, !dbg !598
  br i1 %cmp8.i, label %for.body9.i, label %for.end.i112, !dbg !598

for.end.i112:                                     ; preds = %if.end.i
  %arrayidx29.i = getelementptr inbounds double* %colB0.0266.i, i64 %indvars.iv290.i, !dbg !611
  %94 = load double* %arrayidx29.i, align 8, !dbg !611, !tbaa !512
  %sub30.i = fsub double %94, %add.i111, !dbg !611
  store double %sub30.i, double* %arrayidx29.i, align 8, !dbg !611, !tbaa !512
  %add.ptr.sum206.i = add i64 %indvars.iv290.i, %idx.ext.i101, !dbg !612
  %arrayidx32.i = getelementptr inbounds double* %colB0.0266.i, i64 %add.ptr.sum206.i, !dbg !612
  %95 = load double* %arrayidx32.i, align 8, !dbg !612, !tbaa !512
  %sub33.i = fsub double %95, %add22.i, !dbg !612
  store double %sub33.i, double* %arrayidx32.i, align 8, !dbg !612, !tbaa !512
  %add.ptr2.sum207.i = add i64 %indvars.iv290.i, %add.ptr.sum.i102, !dbg !613
  %arrayidx35.i = getelementptr inbounds double* %colB0.0266.i, i64 %add.ptr2.sum207.i, !dbg !613
  %96 = load double* %arrayidx35.i, align 8, !dbg !613, !tbaa !512
  %sub36.i = fsub double %96, %add26.i, !dbg !613
  store double %sub36.i, double* %arrayidx35.i, align 8, !dbg !613, !tbaa !512
  br label %for.inc38.i115, !dbg !614

for.inc38.i115:                                   ; preds = %for.end.i112, %for.body5.i108
  %kk.2.i113 = phi i32 [ %inc27.i, %for.end.i112 ], [ %kk.0258.i, %for.body5.i108 ]
  %indvars.iv.next291.i = add i64 %indvars.iv290.i, 1, !dbg !581
  %inc39.i = add nsw i32 %irowA.0255.i, 1, !dbg !581
  call void @llvm.dbg.value(metadata !{i32 %inc39.i}, i64 0, metadata !595) #5, !dbg !581
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i98}, i64 0, metadata !580) #5, !dbg !581
  %97 = trunc i64 %indvars.iv.next291.i to i32, !dbg !581
  %cmp4.i114 = icmp slt i32 %97, %81, !dbg !581
  br i1 %cmp4.i114, label %for.body5.i108, label %for.end40.i119, !dbg !581

for.end40.i119:                                   ; preds = %for.inc38.i115, %for.body.i105
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i99}, i64 0, metadata !576) #5, !dbg !583
  %add.ptr42.i116 = getelementptr inbounds double* %colB0.0266.i, i64 %add.ptr2.sum.i103, !dbg !583
  call void @llvm.dbg.value(metadata !{double* %add.ptr42.i116}, i64 0, metadata !571) #5, !dbg !583
  %add44.i117 = add nsw i32 %jcolB.0268.i, 3, !dbg !573
  call void @llvm.dbg.value(metadata !{i32 %add44.i117}, i64 0, metadata !572) #5, !dbg !573
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i96}, i64 0, metadata !575) #5, !dbg !573
  %cmp.i118 = icmp slt i32 %add44.i117, %sub264.i, !dbg !573
  br i1 %cmp.i118, label %for.body.i105, label %for.end45.i123, !dbg !573

for.end45.i123:                                   ; preds = %for.end40.i119, %sw.bb16
  %jcolB.0.lcssa.i120 = phi i32 [ 0, %sw.bb16 ], [ %add44.i117, %for.end40.i119 ]
  %colB0.0.lcssa.i121 = phi double* [ %78, %sw.bb16 ], [ %add.ptr42.i116, %for.end40.i119 ]
  %cmp47.i122 = icmp eq i32 %jcolB.0.lcssa.i120, %sub264.i, !dbg !615
  br i1 %cmp47.i122, label %if.then48.i125, label %if.else.i138, !dbg !615

if.then48.i125:                                   ; preds = %for.end45.i123
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i99}, i64 0, metadata !576) #5, !dbg !616
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i99}, i64 0, metadata !411), !dbg !616
  %98 = load i32* %nrowB.i99, align 4, !dbg !616, !tbaa !452
  %idx.ext49.i124 = sext i32 %98 to i64, !dbg !616
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !594) #5, !dbg !618
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !595) #5, !dbg !618
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i98}, i64 0, metadata !580) #5, !dbg !618
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i98}, i64 0, metadata !410), !dbg !618
  %99 = load i32* %nrowA.i98, align 4, !dbg !618, !tbaa !452
  %cmp52218.i = icmp sgt i32 %99, 0, !dbg !618
  br i1 %cmp52218.i, label %for.body53.lr.ph.i126, label %sw.epilog41, !dbg !618

for.body53.lr.ph.i126:                            ; preds = %if.then48.i125
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i100}, i64 0, metadata !584) #5, !dbg !620
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i100}, i64 0, metadata !414), !dbg !620
  %100 = load i32** %sizesA.i100, align 8, !dbg !620, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i98}, i64 0, metadata !580) #5, !dbg !618
  call void @llvm.dbg.value(metadata !{double** %entriesA.i92}, i64 0, metadata !587) #5, !dbg !622
  call void @llvm.dbg.value(metadata !{double** %entriesA.i92}, i64 0, metadata !399), !dbg !622
  %101 = load double** %entriesA.i92, align 8, !dbg !622, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i}, i64 0, metadata !592) #5, !dbg !626
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i}, i64 0, metadata !413), !dbg !626
  %102 = load i32** %indicesA.i, align 8, !dbg !626, !tbaa !447
  br label %for.body53.i129, !dbg !618

for.body53.i129:                                  ; preds = %for.inc84.i, %for.body53.lr.ph.i126
  %indvars.iv273.i = phi i64 [ 0, %for.body53.lr.ph.i126 ], [ %indvars.iv.next274.i, %for.inc84.i ]
  %kk.3220.i = phi i32 [ 0, %for.body53.lr.ph.i126 ], [ %kk.5.i136, %for.inc84.i ]
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i100}, i64 0, metadata !584) #5, !dbg !620
  %arrayidx55.i127 = getelementptr inbounds i32* %100, i64 %indvars.iv273.i, !dbg !620
  %103 = load i32* %arrayidx55.i127, align 4, !dbg !620, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %103}, i64 0, metadata !596) #5, !dbg !620
  %cmp56.i128 = icmp sgt i32 %103, 0, !dbg !620
  br i1 %cmp56.i128, label %for.body60.lr.ph.i, label %for.inc84.i, !dbg !620

for.body60.lr.ph.i:                               ; preds = %for.body53.i129
  %104 = sext i32 %kk.3220.i to i64
  br label %for.body60.i, !dbg !627

for.body60.i:                                     ; preds = %for.body60.i, %for.body60.lr.ph.i
  %indvars.iv.i130 = phi i64 [ %104, %for.body60.lr.ph.i ], [ %indvars.iv.next.i134, %for.body60.i ]
  %ii.1214.i = phi i32 [ 0, %for.body60.lr.ph.i ], [ %inc74.i, %for.body60.i ]
  %sum1.1213.i = phi double [ 0.000000e+00, %for.body60.lr.ph.i ], [ %add72.i133, %for.body60.i ]
  %sum0.1212.i = phi double [ 0.000000e+00, %for.body60.lr.ph.i ], [ %add68.i, %for.body60.i ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i92}, i64 0, metadata !587) #5, !dbg !622
  %arrayidx62.i = getelementptr inbounds double* %101, i64 %indvars.iv.i130, !dbg !622
  %105 = load double* %arrayidx62.i, align 8, !dbg !622, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %105}, i64 0, metadata !599) #5, !dbg !622
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i}, i64 0, metadata !592) #5, !dbg !626
  %arrayidx64.i = getelementptr inbounds i32* %102, i64 %indvars.iv.i130, !dbg !626
  %106 = load i32* %arrayidx64.i, align 4, !dbg !626, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %106}, i64 0, metadata !600) #5, !dbg !626
  %idxprom65.i = sext i32 %106 to i64, !dbg !628
  %arrayidx66.i = getelementptr inbounds double* %colB0.0.lcssa.i121, i64 %idxprom65.i, !dbg !628
  %107 = load double* %arrayidx66.i, align 8, !dbg !628, !tbaa !512
  %mul67.i = fmul double %105, %107, !dbg !628
  %add68.i = fadd double %sum0.1212.i, %mul67.i, !dbg !628
  call void @llvm.dbg.value(metadata !{double %add68.i}, i64 0, metadata !605) #5, !dbg !628
  %add.ptr50.sum205.i = add i64 %idxprom65.i, %idx.ext49.i124, !dbg !629
  %arrayidx70.i131 = getelementptr inbounds double* %colB0.0.lcssa.i121, i64 %add.ptr50.sum205.i, !dbg !629
  %108 = load double* %arrayidx70.i131, align 8, !dbg !629, !tbaa !512
  %mul71.i132 = fmul double %105, %108, !dbg !629
  %add72.i133 = fadd double %sum1.1213.i, %mul71.i132, !dbg !629
  call void @llvm.dbg.value(metadata !{double %add72.i133}, i64 0, metadata !607) #5, !dbg !629
  %inc74.i = add nsw i32 %ii.1214.i, 1, !dbg !627
  call void @llvm.dbg.value(metadata !{i32 %inc74.i}, i64 0, metadata !610) #5, !dbg !627
  %indvars.iv.next.i134 = add i64 %indvars.iv.i130, 1, !dbg !627
  %exitcond.i = icmp eq i32 %inc74.i, %103, !dbg !627
  br i1 %exitcond.i, label %for.end76.i, label %for.body60.i, !dbg !627

for.end76.i:                                      ; preds = %for.body60.i
  %109 = add i32 %103, %kk.3220.i, !dbg !627
  %arrayidx78.i = getelementptr inbounds double* %colB0.0.lcssa.i121, i64 %indvars.iv273.i, !dbg !630
  %110 = load double* %arrayidx78.i, align 8, !dbg !630, !tbaa !512
  %sub79.i = fsub double %110, %add68.i, !dbg !630
  store double %sub79.i, double* %arrayidx78.i, align 8, !dbg !630, !tbaa !512
  %add.ptr50.sum.i135 = add i64 %indvars.iv273.i, %idx.ext49.i124, !dbg !631
  %arrayidx81.i = getelementptr inbounds double* %colB0.0.lcssa.i121, i64 %add.ptr50.sum.i135, !dbg !631
  %111 = load double* %arrayidx81.i, align 8, !dbg !631, !tbaa !512
  %sub82.i = fsub double %111, %add72.i133, !dbg !631
  store double %sub82.i, double* %arrayidx81.i, align 8, !dbg !631, !tbaa !512
  br label %for.inc84.i, !dbg !632

for.inc84.i:                                      ; preds = %for.end76.i, %for.body53.i129
  %kk.5.i136 = phi i32 [ %109, %for.end76.i ], [ %kk.3220.i, %for.body53.i129 ]
  %indvars.iv.next274.i = add i64 %indvars.iv273.i, 1, !dbg !618
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i98}, i64 0, metadata !580) #5, !dbg !618
  %lftr.wideiv1109 = trunc i64 %indvars.iv.next274.i to i32, !dbg !618
  %exitcond1110 = icmp eq i32 %lftr.wideiv1109, %99, !dbg !618
  br i1 %exitcond1110, label %sw.epilog41, label %for.body53.i129, !dbg !618

if.else.i138:                                     ; preds = %for.end45.i123
  %sub87.i = add nsw i32 %79, -1, !dbg !633
  %cmp88.i = icmp eq i32 %jcolB.0.lcssa.i120, %sub87.i, !dbg !633
  br i1 %cmp88.i, label %for.cond90.preheader.i, label %sw.epilog41, !dbg !633

for.cond90.preheader.i:                           ; preds = %if.else.i138
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i98}, i64 0, metadata !580) #5, !dbg !634
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i98}, i64 0, metadata !410), !dbg !634
  %112 = load i32* %nrowA.i98, align 4, !dbg !634, !tbaa !452
  %cmp91232.i = icmp sgt i32 %112, 0, !dbg !634
  br i1 %cmp91232.i, label %for.body92.lr.ph.i, label %sw.epilog41, !dbg !634

for.body92.lr.ph.i:                               ; preds = %for.cond90.preheader.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i100}, i64 0, metadata !584) #5, !dbg !637
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i100}, i64 0, metadata !414), !dbg !637
  %113 = load i32** %sizesA.i100, align 8, !dbg !637, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i98}, i64 0, metadata !580) #5, !dbg !634
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i}, i64 0, metadata !592) #5, !dbg !639
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i}, i64 0, metadata !413), !dbg !639
  %114 = load i32** %indicesA.i, align 8, !dbg !639, !tbaa !447
  call void @llvm.dbg.value(metadata !{double** %entriesA.i92}, i64 0, metadata !587) #5, !dbg !643
  call void @llvm.dbg.value(metadata !{double** %entriesA.i92}, i64 0, metadata !399), !dbg !643
  %115 = load double** %entriesA.i92, align 8, !dbg !643, !tbaa !447
  br label %for.body92.i, !dbg !634

for.body92.i:                                     ; preds = %for.inc122.i, %for.body92.lr.ph.i
  %indvars.iv281.i = phi i64 [ 0, %for.body92.lr.ph.i ], [ %indvars.iv.next282.i, %for.inc122.i ]
  %kk.6236.i = phi i32 [ 0, %for.body92.lr.ph.i ], [ %kk.8.i143, %for.inc122.i ]
  %irowA.2233.i = phi i32 [ 0, %for.body92.lr.ph.i ], [ %inc123.i, %for.inc122.i ]
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i100}, i64 0, metadata !584) #5, !dbg !637
  %arrayidx94.i = getelementptr inbounds i32* %113, i64 %indvars.iv281.i, !dbg !637
  %116 = load i32* %arrayidx94.i, align 4, !dbg !637, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %116}, i64 0, metadata !596) #5, !dbg !637
  %cmp95.i139 = icmp sgt i32 %116, -1, !dbg !637
  br i1 %cmp95.i139, label %for.cond97.preheader.i, label %for.inc122.i, !dbg !637

for.cond97.preheader.i:                           ; preds = %for.body92.i
  %cmp98224.i = icmp sgt i32 %116, 0, !dbg !644
  br i1 %cmp98224.i, label %for.body99.lr.ph.i, label %for.end117.i, !dbg !644

for.body99.lr.ph.i:                               ; preds = %for.cond97.preheader.i
  %117 = sext i32 %kk.6236.i to i64
  %118 = trunc i64 %indvars.iv281.i to i32, !dbg !645
  br label %for.body99.i, !dbg !644

for.body99.i:                                     ; preds = %if.end109.i, %for.body99.lr.ph.i
  %indvars.iv278.i = phi i64 [ %117, %for.body99.lr.ph.i ], [ %indvars.iv.next279.i, %if.end109.i ]
  %kk.7227.i = phi i32 [ %kk.6236.i, %for.body99.lr.ph.i ], [ %inc116.i, %if.end109.i ]
  %ii.2226.i = phi i32 [ 0, %for.body99.lr.ph.i ], [ %inc115.i, %if.end109.i ]
  %sum0.2225.i = phi double [ 0.000000e+00, %for.body99.lr.ph.i ], [ %add113.i, %if.end109.i ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i92}, i64 0, metadata !587) #5, !dbg !643
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i}, i64 0, metadata !592) #5, !dbg !639
  %arrayidx103.i = getelementptr inbounds i32* %114, i64 %indvars.iv278.i, !dbg !639
  %119 = load i32* %arrayidx103.i, align 4, !dbg !639, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %119}, i64 0, metadata !600) #5, !dbg !639
  %cmp104.i = icmp sgt i32 %119, -1, !dbg !645
  %cmp106.i = icmp slt i32 %119, %118, !dbg !645
  %or.cond210.i = and i1 %cmp104.i, %cmp106.i, !dbg !645
  br i1 %or.cond210.i, label %if.end109.i, label %if.then107.i, !dbg !645

if.then107.i:                                     ; preds = %for.body99.i
  %120 = load %struct._IO_FILE** @stderr, align 8, !dbg !646, !tbaa !447
  %call108.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %120, i8* getelementptr inbounds ([52 x i8]* @.str7, i64 0, i64 0), i32 %irowA.2233.i, i32 %kk.7227.i, i32 %ii.2226.i, i32 %119) #6, !dbg !646
  call void @exit(i32 -1) #7, !dbg !648
  unreachable, !dbg !648

if.end109.i:                                      ; preds = %for.body99.i
  %arrayidx101.i = getelementptr inbounds double* %115, i64 %indvars.iv278.i, !dbg !643
  %121 = load double* %arrayidx101.i, align 8, !dbg !643, !tbaa !512
  %idxprom110.i = sext i32 %119 to i64, !dbg !649
  %arrayidx111.i140 = getelementptr inbounds double* %colB0.0.lcssa.i121, i64 %idxprom110.i, !dbg !649
  %122 = load double* %arrayidx111.i140, align 8, !dbg !649, !tbaa !512
  %mul112.i = fmul double %121, %122, !dbg !649
  %add113.i = fadd double %sum0.2225.i, %mul112.i, !dbg !649
  call void @llvm.dbg.value(metadata !{double %add113.i}, i64 0, metadata !605) #5, !dbg !649
  %inc115.i = add nsw i32 %ii.2226.i, 1, !dbg !644
  call void @llvm.dbg.value(metadata !{i32 %inc115.i}, i64 0, metadata !610) #5, !dbg !644
  %indvars.iv.next279.i = add i64 %indvars.iv278.i, 1, !dbg !644
  %inc116.i = add nsw i32 %kk.7227.i, 1, !dbg !644
  call void @llvm.dbg.value(metadata !{i32 %inc116.i}, i64 0, metadata !594) #5, !dbg !644
  %cmp98.i = icmp slt i32 %inc115.i, %116, !dbg !644
  br i1 %cmp98.i, label %for.body99.i, label %for.end117.i, !dbg !644

for.end117.i:                                     ; preds = %if.end109.i, %for.cond97.preheader.i
  %kk.7.lcssa.i141 = phi i32 [ %kk.6236.i, %for.cond97.preheader.i ], [ %inc116.i, %if.end109.i ]
  %sum0.2.lcssa.i142 = phi double [ 0.000000e+00, %for.cond97.preheader.i ], [ %add113.i, %if.end109.i ]
  %arrayidx119.i = getelementptr inbounds double* %colB0.0.lcssa.i121, i64 %indvars.iv281.i, !dbg !650
  %123 = load double* %arrayidx119.i, align 8, !dbg !650, !tbaa !512
  %sub120.i = fsub double %123, %sum0.2.lcssa.i142, !dbg !650
  store double %sub120.i, double* %arrayidx119.i, align 8, !dbg !650, !tbaa !512
  br label %for.inc122.i, !dbg !651

for.inc122.i:                                     ; preds = %for.end117.i, %for.body92.i
  %kk.8.i143 = phi i32 [ %kk.7.lcssa.i141, %for.end117.i ], [ %kk.6236.i, %for.body92.i ]
  %indvars.iv.next282.i = add i64 %indvars.iv281.i, 1, !dbg !634
  %inc123.i = add nsw i32 %irowA.2233.i, 1, !dbg !634
  call void @llvm.dbg.value(metadata !{i32 %inc123.i}, i64 0, metadata !595) #5, !dbg !634
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i98}, i64 0, metadata !580) #5, !dbg !634
  %124 = trunc i64 %indvars.iv.next282.i to i32, !dbg !634
  %cmp91.i = icmp slt i32 %124, %112, !dbg !634
  br i1 %cmp91.i, label %for.body92.i, label %sw.epilog41, !dbg !634

sw.bb17:                                          ; preds = %sw.bb
  %125 = bitcast double** %entriesA.i144 to i8*, !dbg !652
  call void @llvm.lifetime.start(i64 8, i8* %125) #5, !dbg !652
  %126 = bitcast double** %entriesB.i145 to i8*, !dbg !652
  call void @llvm.lifetime.start(i64 8, i8* %126) #5, !dbg !652
  %127 = bitcast i32* %inc1.i146 to i8*, !dbg !652
  call void @llvm.lifetime.start(i64 4, i8* %127) #5, !dbg !652
  %128 = bitcast i32* %inc2.i147 to i8*, !dbg !652
  call void @llvm.lifetime.start(i64 4, i8* %128) #5, !dbg !652
  %129 = bitcast i32* %ncolB.i148 to i8*, !dbg !652
  call void @llvm.lifetime.start(i64 4, i8* %129) #5, !dbg !652
  %130 = bitcast i32* %nentA.i149 to i8*, !dbg !652
  call void @llvm.lifetime.start(i64 4, i8* %130) #5, !dbg !652
  %131 = bitcast i32* %nrowA.i150 to i8*, !dbg !652
  call void @llvm.lifetime.start(i64 4, i8* %131) #5, !dbg !652
  %132 = bitcast i32* %nrowB.i151 to i8*, !dbg !652
  call void @llvm.lifetime.start(i64 4, i8* %132) #5, !dbg !652
  %133 = bitcast i32** %firstlocsA.i152 to i8*, !dbg !652
  call void @llvm.lifetime.start(i64 8, i8* %133) #5, !dbg !652
  %134 = bitcast i32** %sizesA.i153 to i8*, !dbg !652
  call void @llvm.lifetime.start(i64 8, i8* %134) #5, !dbg !652
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !654) #5, !dbg !652
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxB}, i64 0, metadata !655) #5, !dbg !656
  call void @llvm.dbg.declare(metadata !{double** %entriesA.i144}, metadata !371) #5, !dbg !657
  call void @llvm.dbg.declare(metadata !{double** %entriesB.i145}, metadata !372) #5, !dbg !657
  call void @llvm.dbg.declare(metadata !{i32* %inc1.i146}, metadata !375) #5, !dbg !658
  call void @llvm.dbg.declare(metadata !{i32* %inc2.i147}, metadata !376) #5, !dbg !658
  call void @llvm.dbg.declare(metadata !{i32* %ncolB.i148}, metadata !382) #5, !dbg !659
  call void @llvm.dbg.declare(metadata !{i32* %nentA.i149}, metadata !383) #5, !dbg !659
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i150}, metadata !384) #5, !dbg !659
  call void @llvm.dbg.declare(metadata !{i32* %nrowB.i151}, metadata !385) #5, !dbg !659
  call void @llvm.dbg.declare(metadata !{i32** %firstlocsA.i152}, metadata !386) #5, !dbg !660
  call void @llvm.dbg.declare(metadata !{i32** %sizesA.i153}, metadata !387) #5, !dbg !660
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i150, i32* %nentA.i149, i32** %firstlocsA.i152, i32** %sizesA.i153, double** %entriesA.i144) #6, !dbg !661
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i151, i32* %ncolB.i148, i32* %inc1.i146, i32* %inc2.i147, double** %entriesB.i145) #6, !dbg !662
  call void @llvm.dbg.value(metadata !{double** %entriesB.i145}, i64 0, metadata !663) #5, !dbg !664
  call void @llvm.dbg.value(metadata !{double** %entriesB.i145}, i64 0, metadata !372), !dbg !664
  %135 = load double** %entriesB.i145, align 8, !dbg !664, !tbaa !447
  call void @llvm.dbg.value(metadata !{double* %135}, i64 0, metadata !665) #5, !dbg !664
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !666) #5, !dbg !667
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i148}, i64 0, metadata !669) #5, !dbg !667
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i148}, i64 0, metadata !382), !dbg !667
  %136 = load i32* %ncolB.i148, align 4, !dbg !667, !tbaa !452
  %sub235.i = add nsw i32 %136, -2, !dbg !667
  %cmp236.i = icmp sgt i32 %sub235.i, 0, !dbg !667
  br i1 %cmp236.i, label %for.body.lr.ph.i157, label %for.end45.i175, !dbg !667

for.body.lr.ph.i157:                              ; preds = %sw.bb17
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i151}, i64 0, metadata !670) #5, !dbg !671
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i151}, i64 0, metadata !385), !dbg !671
  %137 = load i32* %nrowB.i151, align 4, !dbg !671, !tbaa !452
  %idx.ext.i154 = sext i32 %137 to i64, !dbg !671
  %add.ptr.sum.i155 = shl nsw i64 %idx.ext.i154, 1, !dbg !673
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i150}, i64 0, metadata !674) #5, !dbg !675
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i150}, i64 0, metadata !384), !dbg !675
  %138 = load i32* %nrowA.i150, align 4, !dbg !675, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32* %nentA.i149}, i64 0, metadata !677) #5, !dbg !675
  call void @llvm.dbg.value(metadata !{i32* %nentA.i149}, i64 0, metadata !383), !dbg !675
  %139 = load i32* %nentA.i149, align 4, !dbg !675, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i153}, i64 0, metadata !678) #5, !dbg !679
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i153}, i64 0, metadata !387), !dbg !679
  %140 = load i32** %sizesA.i153, align 8, !dbg !679, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i152}, i64 0, metadata !681) #5, !dbg !682
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i152}, i64 0, metadata !386), !dbg !682
  %141 = load i32** %firstlocsA.i152, align 8, !dbg !682, !tbaa !447
  call void @llvm.dbg.value(metadata !{double** %entriesA.i144}, i64 0, metadata !684) #5, !dbg !685
  call void @llvm.dbg.value(metadata !{double** %entriesA.i144}, i64 0, metadata !371), !dbg !685
  %142 = load double** %entriesA.i144, align 8, !dbg !685, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i151}, i64 0, metadata !670) #5, !dbg !688
  %add.ptr2.sum.i156 = add i64 %add.ptr.sum.i155, %idx.ext.i154, !dbg !688
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i148}, i64 0, metadata !669) #5, !dbg !667
  br label %for.body.i158, !dbg !667

for.body.i158:                                    ; preds = %for.end40.i171, %for.body.lr.ph.i157
  %jcolB.0238.i = phi i32 [ 0, %for.body.lr.ph.i157 ], [ %add44.i169, %for.end40.i171 ]
  %colB0.0237.i = phi double* [ %135, %for.body.lr.ph.i157 ], [ %add.ptr42.i168, %for.end40.i171 ]
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i151}, i64 0, metadata !670) #5, !dbg !671
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i150}, i64 0, metadata !674) #5, !dbg !675
  call void @llvm.dbg.value(metadata !{i32* %nentA.i149}, i64 0, metadata !677) #5, !dbg !675
  call void @llvm.dbg.value(metadata !{i32 %139}, i64 0, metadata !689) #5, !dbg !675
  br label %for.cond4.outer.i, !dbg !675

for.cond4.outer.i:                                ; preds = %if.then.i162, %for.body24.i, %for.body.i158
  %colstart.0.ph.i = phi i32 [ %139, %for.body.i158 ], [ %sub15.i, %for.body24.i ], [ %sub15.i, %if.then.i162 ]
  %irowA.0.in.ph.i = phi i32 [ %138, %for.body.i158 ], [ %irowA.0.i, %for.body24.i ], [ %irowA.0.i, %if.then.i162 ]
  %143 = sext i32 %irowA.0.in.ph.i to i64
  br label %for.cond4.i

for.cond4.i:                                      ; preds = %for.body6.i, %for.cond4.outer.i
  %indvars.iv257.i = phi i64 [ %143, %for.cond4.outer.i ], [ %indvars.iv.next258.i, %for.body6.i ]
  %irowA.0.in.i = phi i32 [ %irowA.0.in.ph.i, %for.cond4.outer.i ], [ %irowA.0.i, %for.body6.i ]
  %indvars.iv.next258.i = add i64 %indvars.iv257.i, -1, !dbg !679
  %irowA.0.i = add nsw i32 %irowA.0.in.i, -1, !dbg !675
  %144 = trunc i64 %indvars.iv257.i to i32, !dbg !675
  %cmp5.i = icmp sgt i32 %144, 0, !dbg !675
  br i1 %cmp5.i, label %for.body6.i, label %for.end40.i171, !dbg !675

for.body6.i:                                      ; preds = %for.cond4.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i153}, i64 0, metadata !678) #5, !dbg !679
  %arrayidx.i159 = getelementptr inbounds i32* %140, i64 %indvars.iv.next258.i, !dbg !679
  %145 = load i32* %arrayidx.i159, align 4, !dbg !679, !tbaa !452
  %cmp7.i = icmp sgt i32 %145, 0, !dbg !679
  br i1 %cmp7.i, label %if.then.i162, label %for.cond4.i, !dbg !679

if.then.i162:                                     ; preds = %for.body6.i
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i152}, i64 0, metadata !681) #5, !dbg !682
  %arrayidx9.i = getelementptr inbounds i32* %141, i64 %indvars.iv.next258.i, !dbg !682
  %146 = load i32* %arrayidx9.i, align 4, !dbg !682, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %146}, i64 0, metadata !690) #5, !dbg !682
  %add.i160 = add i32 %145, -1, !dbg !691
  %sub12.i = add i32 %add.i160, %146, !dbg !691
  call void @llvm.dbg.value(metadata !{i32 %sub12.i}, i64 0, metadata !692) #5, !dbg !691
  %sub13.neg.i = add i32 %colstart.0.ph.i, -1, !dbg !693
  %add14.neg.i = add i32 %sub13.neg.i, %146, !dbg !693
  %sub15.i = sub i32 %add14.neg.i, %sub12.i, !dbg !693
  call void @llvm.dbg.value(metadata !{i32 %sub15.i}, i64 0, metadata !689) #5, !dbg !693
  %arrayidx17.i = getelementptr inbounds double* %colB0.0237.i, i64 %indvars.iv.next258.i, !dbg !694
  %147 = load double* %arrayidx17.i, align 8, !dbg !694, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %147}, i64 0, metadata !695) #5, !dbg !694
  %add.ptr.sum213.i = add i64 %indvars.iv.next258.i, %idx.ext.i154, !dbg !696
  %arrayidx19.i = getelementptr inbounds double* %colB0.0237.i, i64 %add.ptr.sum213.i, !dbg !696
  %148 = load double* %arrayidx19.i, align 8, !dbg !696, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %148}, i64 0, metadata !697) #5, !dbg !696
  %add.ptr2.sum214.i = add i64 %indvars.iv.next258.i, %add.ptr.sum.i155, !dbg !698
  %arrayidx21.i161 = getelementptr inbounds double* %colB0.0237.i, i64 %add.ptr2.sum214.i, !dbg !698
  %149 = load double* %arrayidx21.i161, align 8, !dbg !698, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %149}, i64 0, metadata !699) #5, !dbg !698
  call void @llvm.dbg.value(metadata !{i32 %146}, i64 0, metadata !700) #5, !dbg !701
  call void @llvm.dbg.value(metadata !{i32 %sub15.i}, i64 0, metadata !702) #5, !dbg !701
  %cmp23229.i = icmp sgt i32 %146, %sub12.i, !dbg !701
  br i1 %cmp23229.i, label %for.cond4.outer.i, label %for.body24.lr.ph.i, !dbg !701

for.body24.lr.ph.i:                               ; preds = %if.then.i162
  %150 = sub i32 %colstart.0.ph.i, %145, !dbg !701
  %151 = sext i32 %150 to i64
  %152 = sext i32 %146 to i64, !dbg !701
  br label %for.body24.i, !dbg !701

for.body24.i:                                     ; preds = %for.body24.i, %for.body24.lr.ph.i
  %indvars.iv261.i = phi i64 [ %indvars.iv.next262.i, %for.body24.i ], [ %152, %for.body24.lr.ph.i ], !dbg !701
  %indvars.iv259.i = phi i64 [ %indvars.iv.next260.i, %for.body24.i ], [ %151, %for.body24.lr.ph.i ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i144}, i64 0, metadata !684) #5, !dbg !685
  %arrayidx26.i = getelementptr inbounds double* %142, i64 %indvars.iv259.i, !dbg !685
  %153 = load double* %arrayidx26.i, align 8, !dbg !685, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %153}, i64 0, metadata !703) #5, !dbg !685
  %mul.i163 = fmul double %147, %153, !dbg !704
  %arrayidx28.i = getelementptr inbounds double* %colB0.0237.i, i64 %indvars.iv261.i, !dbg !704
  %154 = load double* %arrayidx28.i, align 8, !dbg !704, !tbaa !512
  %sub29.i = fsub double %154, %mul.i163, !dbg !704
  store double %sub29.i, double* %arrayidx28.i, align 8, !dbg !704, !tbaa !512
  %mul30.i = fmul double %148, %153, !dbg !705
  %add.ptr.sum215.i = add i64 %indvars.iv261.i, %idx.ext.i154, !dbg !705
  %arrayidx32.i164 = getelementptr inbounds double* %colB0.0237.i, i64 %add.ptr.sum215.i, !dbg !705
  %155 = load double* %arrayidx32.i164, align 8, !dbg !705, !tbaa !512
  %sub33.i165 = fsub double %155, %mul30.i, !dbg !705
  store double %sub33.i165, double* %arrayidx32.i164, align 8, !dbg !705, !tbaa !512
  %mul34.i = fmul double %149, %153, !dbg !706
  %add.ptr2.sum216.i = add i64 %indvars.iv261.i, %add.ptr.sum.i155, !dbg !706
  %arrayidx36.i166 = getelementptr inbounds double* %colB0.0237.i, i64 %add.ptr2.sum216.i, !dbg !706
  %156 = load double* %arrayidx36.i166, align 8, !dbg !706, !tbaa !512
  %sub37.i167 = fsub double %156, %mul34.i, !dbg !706
  store double %sub37.i167, double* %arrayidx36.i166, align 8, !dbg !706, !tbaa !512
  %indvars.iv.next262.i = add i64 %indvars.iv261.i, 1, !dbg !701
  %indvars.iv.next260.i = add i64 %indvars.iv259.i, 1, !dbg !701
  %157 = trunc i64 %indvars.iv261.i to i32, !dbg !701
  %cmp23.i = icmp slt i32 %157, %sub12.i, !dbg !701
  br i1 %cmp23.i, label %for.body24.i, label %for.cond4.outer.i, !dbg !701

for.end40.i171:                                   ; preds = %for.cond4.i
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i151}, i64 0, metadata !670) #5, !dbg !688
  %add.ptr42.i168 = getelementptr inbounds double* %colB0.0237.i, i64 %add.ptr2.sum.i156, !dbg !688
  call void @llvm.dbg.value(metadata !{double* %add.ptr42.i168}, i64 0, metadata !665) #5, !dbg !688
  %add44.i169 = add nsw i32 %jcolB.0238.i, 3, !dbg !667
  call void @llvm.dbg.value(metadata !{i32 %add44.i169}, i64 0, metadata !666) #5, !dbg !667
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i148}, i64 0, metadata !669) #5, !dbg !667
  %cmp.i170 = icmp slt i32 %add44.i169, %sub235.i, !dbg !667
  br i1 %cmp.i170, label %for.body.i158, label %for.end45.i175, !dbg !667

for.end45.i175:                                   ; preds = %for.end40.i171, %sw.bb17
  %jcolB.0.lcssa.i172 = phi i32 [ 0, %sw.bb17 ], [ %add44.i169, %for.end40.i171 ]
  %colB0.0.lcssa.i173 = phi double* [ %135, %sw.bb17 ], [ %add.ptr42.i168, %for.end40.i171 ]
  %cmp47.i174 = icmp eq i32 %jcolB.0.lcssa.i172, %sub235.i, !dbg !707
  br i1 %cmp47.i174, label %if.then48.i177, label %if.else.i181, !dbg !707

if.then48.i177:                                   ; preds = %for.end45.i175
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i151}, i64 0, metadata !670) #5, !dbg !708
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i151}, i64 0, metadata !385), !dbg !708
  %158 = load i32* %nrowB.i151, align 4, !dbg !708, !tbaa !452
  %idx.ext49.i176 = sext i32 %158 to i64, !dbg !708
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i150}, i64 0, metadata !674) #5, !dbg !710
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i150}, i64 0, metadata !384), !dbg !710
  %159 = load i32* %nrowA.i150, align 4, !dbg !710, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32* %nentA.i149}, i64 0, metadata !677) #5, !dbg !710
  call void @llvm.dbg.value(metadata !{i32* %nentA.i149}, i64 0, metadata !383), !dbg !710
  %160 = load i32* %nentA.i149, align 4, !dbg !710, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %160}, i64 0, metadata !689) #5, !dbg !710
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i153}, i64 0, metadata !678) #5, !dbg !712
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i153}, i64 0, metadata !387), !dbg !712
  %161 = load i32** %sizesA.i153, align 8, !dbg !712, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i152}, i64 0, metadata !681) #5, !dbg !714
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i152}, i64 0, metadata !386), !dbg !714
  %162 = load i32** %firstlocsA.i152, align 8, !dbg !714, !tbaa !447
  call void @llvm.dbg.value(metadata !{double** %entriesA.i144}, i64 0, metadata !684) #5, !dbg !716
  call void @llvm.dbg.value(metadata !{double** %entriesA.i144}, i64 0, metadata !371), !dbg !716
  %163 = load double** %entriesA.i144, align 8, !dbg !716, !tbaa !447
  br label %for.cond52.outer.i, !dbg !710

for.cond52.outer.i:                               ; preds = %if.then58.i, %for.body74.i, %if.then48.i177
  %colstart.2.ph.i = phi i32 [ %160, %if.then48.i177 ], [ %sub67.i, %for.body74.i ], [ %sub67.i, %if.then58.i ]
  %irowA.1.in.ph.i = phi i32 [ %159, %if.then48.i177 ], [ %irowA.1.i, %for.body74.i ], [ %irowA.1.i, %if.then58.i ]
  %164 = sext i32 %irowA.1.in.ph.i to i64
  br label %for.cond52.i

for.cond52.i:                                     ; preds = %for.body54.i, %for.cond52.outer.i
  %indvars.iv.i178 = phi i64 [ %164, %for.cond52.outer.i ], [ %indvars.iv.next.i179, %for.body54.i ]
  %irowA.1.in.i = phi i32 [ %irowA.1.in.ph.i, %for.cond52.outer.i ], [ %irowA.1.i, %for.body54.i ]
  %indvars.iv.next.i179 = add i64 %indvars.iv.i178, -1, !dbg !712
  %irowA.1.i = add nsw i32 %irowA.1.in.i, -1, !dbg !710
  %165 = trunc i64 %indvars.iv.i178 to i32, !dbg !710
  %cmp53.i = icmp sgt i32 %165, 0, !dbg !710
  br i1 %cmp53.i, label %for.body54.i, label %sw.epilog41, !dbg !710

for.body54.i:                                     ; preds = %for.cond52.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i153}, i64 0, metadata !678) #5, !dbg !712
  %arrayidx56.i = getelementptr inbounds i32* %161, i64 %indvars.iv.next.i179, !dbg !712
  %166 = load i32* %arrayidx56.i, align 4, !dbg !712, !tbaa !452
  %cmp57.i = icmp sgt i32 %166, 0, !dbg !712
  br i1 %cmp57.i, label %if.then58.i, label %for.cond52.i, !dbg !712

if.then58.i:                                      ; preds = %for.body54.i
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i152}, i64 0, metadata !681) #5, !dbg !714
  %arrayidx60.i = getelementptr inbounds i32* %162, i64 %indvars.iv.next.i179, !dbg !714
  %167 = load i32* %arrayidx60.i, align 4, !dbg !714, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %167}, i64 0, metadata !690) #5, !dbg !714
  %add63.i = add i32 %166, -1, !dbg !719
  %sub64.i = add i32 %add63.i, %167, !dbg !719
  call void @llvm.dbg.value(metadata !{i32 %sub64.i}, i64 0, metadata !692) #5, !dbg !719
  %sub65.neg.i = add i32 %colstart.2.ph.i, -1, !dbg !720
  %add66.neg.i = add i32 %sub65.neg.i, %167, !dbg !720
  %sub67.i = sub i32 %add66.neg.i, %sub64.i, !dbg !720
  call void @llvm.dbg.value(metadata !{i32 %sub67.i}, i64 0, metadata !689) #5, !dbg !720
  %arrayidx69.i = getelementptr inbounds double* %colB0.0.lcssa.i173, i64 %indvars.iv.next.i179, !dbg !721
  %168 = load double* %arrayidx69.i, align 8, !dbg !721, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %168}, i64 0, metadata !695) #5, !dbg !721
  %add.ptr50.sum.i180 = add i64 %indvars.iv.next.i179, %idx.ext49.i176, !dbg !722
  %arrayidx71.i = getelementptr inbounds double* %colB0.0.lcssa.i173, i64 %add.ptr50.sum.i180, !dbg !722
  %169 = load double* %arrayidx71.i, align 8, !dbg !722, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %169}, i64 0, metadata !697) #5, !dbg !722
  call void @llvm.dbg.value(metadata !{i32 %167}, i64 0, metadata !700) #5, !dbg !723
  call void @llvm.dbg.value(metadata !{i32 %sub67.i}, i64 0, metadata !702) #5, !dbg !723
  %cmp73219.i = icmp sgt i32 %167, %sub64.i, !dbg !723
  br i1 %cmp73219.i, label %for.cond52.outer.i, label %for.body74.lr.ph.i, !dbg !723

for.body74.lr.ph.i:                               ; preds = %if.then58.i
  %170 = sub i32 %colstart.2.ph.i, %166, !dbg !723
  %171 = sext i32 %170 to i64
  %172 = sext i32 %167 to i64, !dbg !723
  br label %for.body74.i, !dbg !723

for.body74.i:                                     ; preds = %for.body74.i, %for.body74.lr.ph.i
  %indvars.iv245.i = phi i64 [ %indvars.iv.next246.i, %for.body74.i ], [ %172, %for.body74.lr.ph.i ], !dbg !723
  %indvars.iv243.i = phi i64 [ %indvars.iv.next244.i, %for.body74.i ], [ %171, %for.body74.lr.ph.i ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i144}, i64 0, metadata !684) #5, !dbg !716
  %arrayidx76.i = getelementptr inbounds double* %163, i64 %indvars.iv243.i, !dbg !716
  %173 = load double* %arrayidx76.i, align 8, !dbg !716, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %173}, i64 0, metadata !703) #5, !dbg !716
  %mul77.i = fmul double %168, %173, !dbg !724
  %arrayidx79.i = getelementptr inbounds double* %colB0.0.lcssa.i173, i64 %indvars.iv245.i, !dbg !724
  %174 = load double* %arrayidx79.i, align 8, !dbg !724, !tbaa !512
  %sub80.i = fsub double %174, %mul77.i, !dbg !724
  store double %sub80.i, double* %arrayidx79.i, align 8, !dbg !724, !tbaa !512
  %mul81.i = fmul double %169, %173, !dbg !725
  %add.ptr50.sum212.i = add i64 %indvars.iv245.i, %idx.ext49.i176, !dbg !725
  %arrayidx83.i = getelementptr inbounds double* %colB0.0.lcssa.i173, i64 %add.ptr50.sum212.i, !dbg !725
  %175 = load double* %arrayidx83.i, align 8, !dbg !725, !tbaa !512
  %sub84.i = fsub double %175, %mul81.i, !dbg !725
  store double %sub84.i, double* %arrayidx83.i, align 8, !dbg !725, !tbaa !512
  %indvars.iv.next246.i = add i64 %indvars.iv245.i, 1, !dbg !723
  %indvars.iv.next244.i = add i64 %indvars.iv243.i, 1, !dbg !723
  %176 = trunc i64 %indvars.iv245.i to i32, !dbg !723
  %cmp73.i = icmp slt i32 %176, %sub64.i, !dbg !723
  br i1 %cmp73.i, label %for.body74.i, label %for.cond52.outer.i, !dbg !723

if.else.i181:                                     ; preds = %for.end45.i175
  %sub93.i = add nsw i32 %136, -1, !dbg !726
  %cmp94.i = icmp eq i32 %jcolB.0.lcssa.i172, %sub93.i, !dbg !726
  br i1 %cmp94.i, label %if.then95.i, label %sw.epilog41, !dbg !726

if.then95.i:                                      ; preds = %if.else.i181
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i150}, i64 0, metadata !674) #5, !dbg !727
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i150}, i64 0, metadata !384), !dbg !727
  %177 = load i32* %nrowA.i150, align 4, !dbg !727, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32* %nentA.i149}, i64 0, metadata !677) #5, !dbg !727
  call void @llvm.dbg.value(metadata !{i32* %nentA.i149}, i64 0, metadata !383), !dbg !727
  %178 = load i32* %nentA.i149, align 4, !dbg !727, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %178}, i64 0, metadata !689) #5, !dbg !727
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i153}, i64 0, metadata !678) #5, !dbg !730
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i153}, i64 0, metadata !387), !dbg !730
  %179 = load i32** %sizesA.i153, align 8, !dbg !730, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i152}, i64 0, metadata !681) #5, !dbg !732
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i152}, i64 0, metadata !386), !dbg !732
  %180 = load i32** %firstlocsA.i152, align 8, !dbg !732, !tbaa !447
  call void @llvm.dbg.value(metadata !{double** %entriesA.i144}, i64 0, metadata !684) #5, !dbg !734
  call void @llvm.dbg.value(metadata !{double** %entriesA.i144}, i64 0, metadata !371), !dbg !734
  %181 = load double** %entriesA.i144, align 8, !dbg !734, !tbaa !447
  br label %for.cond97.outer.i, !dbg !727

for.cond97.outer.i:                               ; preds = %if.then103.i, %for.body117.i, %if.then95.i
  %colstart.4.ph.i = phi i32 [ %178, %if.then95.i ], [ %sub112.i, %for.body117.i ], [ %sub112.i, %if.then103.i ]
  %irowA.2.in.ph.i = phi i32 [ %177, %if.then95.i ], [ %irowA.2.i, %for.body117.i ], [ %irowA.2.i, %if.then103.i ]
  %182 = sext i32 %irowA.2.in.ph.i to i64
  br label %for.cond97.i

for.cond97.i:                                     ; preds = %for.body99.i186, %for.cond97.outer.i
  %indvars.iv249.i182 = phi i64 [ %182, %for.cond97.outer.i ], [ %indvars.iv.next250.i183, %for.body99.i186 ]
  %irowA.2.in.i = phi i32 [ %irowA.2.in.ph.i, %for.cond97.outer.i ], [ %irowA.2.i, %for.body99.i186 ]
  %indvars.iv.next250.i183 = add i64 %indvars.iv249.i182, -1, !dbg !730
  %irowA.2.i = add nsw i32 %irowA.2.in.i, -1, !dbg !727
  %183 = trunc i64 %indvars.iv249.i182 to i32, !dbg !727
  %cmp98.i184 = icmp sgt i32 %183, 0, !dbg !727
  br i1 %cmp98.i184, label %for.body99.i186, label %sw.epilog41, !dbg !727

for.body99.i186:                                  ; preds = %for.cond97.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i153}, i64 0, metadata !678) #5, !dbg !730
  %arrayidx101.i185 = getelementptr inbounds i32* %179, i64 %indvars.iv.next250.i183, !dbg !730
  %184 = load i32* %arrayidx101.i185, align 4, !dbg !730, !tbaa !452
  %cmp102.i = icmp sgt i32 %184, 0, !dbg !730
  br i1 %cmp102.i, label %if.then103.i, label %for.cond97.i, !dbg !730

if.then103.i:                                     ; preds = %for.body99.i186
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i152}, i64 0, metadata !681) #5, !dbg !732
  %arrayidx105.i = getelementptr inbounds i32* %180, i64 %indvars.iv.next250.i183, !dbg !732
  %185 = load i32* %arrayidx105.i, align 4, !dbg !732, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %185}, i64 0, metadata !690) #5, !dbg !732
  %add108.i = add i32 %184, -1, !dbg !737
  %sub109.i = add i32 %add108.i, %185, !dbg !737
  call void @llvm.dbg.value(metadata !{i32 %sub109.i}, i64 0, metadata !692) #5, !dbg !737
  %sub110.neg.i = add i32 %colstart.4.ph.i, -1, !dbg !738
  %add111.neg.i = add i32 %sub110.neg.i, %185, !dbg !738
  %sub112.i = sub i32 %add111.neg.i, %sub109.i, !dbg !738
  call void @llvm.dbg.value(metadata !{i32 %sub112.i}, i64 0, metadata !689) #5, !dbg !738
  %arrayidx114.i = getelementptr inbounds double* %colB0.0.lcssa.i173, i64 %indvars.iv.next250.i183, !dbg !739
  %186 = load double* %arrayidx114.i, align 8, !dbg !739, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %186}, i64 0, metadata !695) #5, !dbg !739
  call void @llvm.dbg.value(metadata !{i32 %185}, i64 0, metadata !700) #5, !dbg !740
  call void @llvm.dbg.value(metadata !{i32 %sub112.i}, i64 0, metadata !702) #5, !dbg !740
  %cmp116223.i = icmp sgt i32 %185, %sub109.i, !dbg !740
  br i1 %cmp116223.i, label %for.cond97.outer.i, label %for.body117.lr.ph.i, !dbg !740

for.body117.lr.ph.i:                              ; preds = %if.then103.i
  %187 = sub i32 %colstart.4.ph.i, %184, !dbg !740
  %188 = sext i32 %187 to i64
  %189 = sext i32 %185 to i64, !dbg !740
  br label %for.body117.i, !dbg !740

for.body117.i:                                    ; preds = %for.body117.i, %for.body117.lr.ph.i
  %indvars.iv253.i187 = phi i64 [ %indvars.iv.next254.i190, %for.body117.i ], [ %189, %for.body117.lr.ph.i ], !dbg !740
  %indvars.iv251.i188 = phi i64 [ %indvars.iv.next252.i191, %for.body117.i ], [ %188, %for.body117.lr.ph.i ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i144}, i64 0, metadata !684) #5, !dbg !734
  %arrayidx119.i189 = getelementptr inbounds double* %181, i64 %indvars.iv251.i188, !dbg !734
  %190 = load double* %arrayidx119.i189, align 8, !dbg !734, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %190}, i64 0, metadata !703) #5, !dbg !734
  %mul120.i = fmul double %186, %190, !dbg !741
  %arrayidx122.i = getelementptr inbounds double* %colB0.0.lcssa.i173, i64 %indvars.iv253.i187, !dbg !741
  %191 = load double* %arrayidx122.i, align 8, !dbg !741, !tbaa !512
  %sub123.i = fsub double %191, %mul120.i, !dbg !741
  store double %sub123.i, double* %arrayidx122.i, align 8, !dbg !741, !tbaa !512
  %indvars.iv.next254.i190 = add i64 %indvars.iv253.i187, 1, !dbg !740
  %indvars.iv.next252.i191 = add i64 %indvars.iv251.i188, 1, !dbg !740
  %192 = trunc i64 %indvars.iv253.i187 to i32, !dbg !740
  %cmp116.i = icmp slt i32 %192, %sub109.i, !dbg !740
  br i1 %cmp116.i, label %for.body117.i, label %for.cond97.outer.i, !dbg !740

sw.bb18:                                          ; preds = %sw.bb
  %193 = bitcast double** %entriesA.i192 to i8*, !dbg !742
  call void @llvm.lifetime.start(i64 8, i8* %193) #5, !dbg !742
  %194 = bitcast double** %entriesB.i193 to i8*, !dbg !742
  call void @llvm.lifetime.start(i64 8, i8* %194) #5, !dbg !742
  %195 = bitcast i32* %inc1.i194 to i8*, !dbg !742
  call void @llvm.lifetime.start(i64 4, i8* %195) #5, !dbg !742
  %196 = bitcast i32* %inc2.i195 to i8*, !dbg !742
  call void @llvm.lifetime.start(i64 4, i8* %196) #5, !dbg !742
  %197 = bitcast i32* %ncolB.i196 to i8*, !dbg !742
  call void @llvm.lifetime.start(i64 4, i8* %197) #5, !dbg !742
  %198 = bitcast i32* %nentA.i197 to i8*, !dbg !742
  call void @llvm.lifetime.start(i64 4, i8* %198) #5, !dbg !742
  %199 = bitcast i32* %nrowA.i198 to i8*, !dbg !742
  call void @llvm.lifetime.start(i64 4, i8* %199) #5, !dbg !742
  %200 = bitcast i32* %nrowB.i199 to i8*, !dbg !742
  call void @llvm.lifetime.start(i64 4, i8* %200) #5, !dbg !742
  %201 = bitcast i32** %indicesA.i200 to i8*, !dbg !742
  call void @llvm.lifetime.start(i64 8, i8* %201) #5, !dbg !742
  %202 = bitcast i32** %sizesA.i201 to i8*, !dbg !742
  call void @llvm.lifetime.start(i64 8, i8* %202) #5, !dbg !742
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !744) #5, !dbg !742
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxB}, i64 0, metadata !745) #5, !dbg !746
  call void @llvm.dbg.declare(metadata !{double** %entriesA.i192}, metadata !343) #5, !dbg !747
  call void @llvm.dbg.declare(metadata !{double** %entriesB.i193}, metadata !344) #5, !dbg !747
  call void @llvm.dbg.declare(metadata !{i32* %inc1.i194}, metadata !347) #5, !dbg !748
  call void @llvm.dbg.declare(metadata !{i32* %inc2.i195}, metadata !348) #5, !dbg !748
  call void @llvm.dbg.declare(metadata !{i32* %ncolB.i196}, metadata !353) #5, !dbg !749
  call void @llvm.dbg.declare(metadata !{i32* %nentA.i197}, metadata !354) #5, !dbg !749
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i198}, metadata !355) #5, !dbg !749
  call void @llvm.dbg.declare(metadata !{i32* %nrowB.i199}, metadata !356) #5, !dbg !749
  call void @llvm.dbg.declare(metadata !{i32** %indicesA.i200}, metadata !358) #5, !dbg !750
  call void @llvm.dbg.declare(metadata !{i32** %sizesA.i201}, metadata !359) #5, !dbg !750
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i198, i32* %nentA.i197, i32** %sizesA.i201, i32** %indicesA.i200, double** %entriesA.i192) #6, !dbg !751
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i199, i32* %ncolB.i196, i32* %inc1.i194, i32* %inc2.i195, double** %entriesB.i193) #6, !dbg !752
  call void @llvm.dbg.value(metadata !{double** %entriesB.i193}, i64 0, metadata !753) #5, !dbg !754
  call void @llvm.dbg.value(metadata !{double** %entriesB.i193}, i64 0, metadata !344), !dbg !754
  %203 = load double** %entriesB.i193, align 8, !dbg !754, !tbaa !447
  call void @llvm.dbg.value(metadata !{double* %203}, i64 0, metadata !755) #5, !dbg !754
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !756) #5, !dbg !757
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i196}, i64 0, metadata !759) #5, !dbg !757
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i196}, i64 0, metadata !353), !dbg !757
  %204 = load i32* %ncolB.i196, align 4, !dbg !757, !tbaa !452
  %sub203.i = add nsw i32 %204, -2, !dbg !757
  %cmp204.i = icmp sgt i32 %sub203.i, 0, !dbg !757
  br i1 %cmp204.i, label %for.body.lr.ph.i205, label %for.end39.i, !dbg !757

for.body.lr.ph.i205:                              ; preds = %sw.bb18
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i199}, i64 0, metadata !760) #5, !dbg !761
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i199}, i64 0, metadata !356), !dbg !761
  %205 = load i32* %nrowB.i199, align 4, !dbg !761, !tbaa !452
  %idx.ext.i202 = sext i32 %205 to i64, !dbg !761
  %add.ptr.sum.i203 = shl nsw i64 %idx.ext.i202, 1, !dbg !763
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i198}, i64 0, metadata !764) #5, !dbg !765
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i198}, i64 0, metadata !355), !dbg !765
  %206 = load i32* %nrowA.i198, align 4, !dbg !765, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32* %nentA.i197}, i64 0, metadata !767) #5, !dbg !765
  call void @llvm.dbg.value(metadata !{i32* %nentA.i197}, i64 0, metadata !354), !dbg !765
  %207 = load i32* %nentA.i197, align 4, !dbg !765, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i201}, i64 0, metadata !768) #5, !dbg !769
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i201}, i64 0, metadata !359), !dbg !769
  %208 = load i32** %sizesA.i201, align 8, !dbg !769, !tbaa !447
  call void @llvm.dbg.value(metadata !{double** %entriesA.i192}, i64 0, metadata !771) #5, !dbg !772
  call void @llvm.dbg.value(metadata !{double** %entriesA.i192}, i64 0, metadata !343), !dbg !772
  %209 = load double** %entriesA.i192, align 8, !dbg !772, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i200}, i64 0, metadata !776) #5, !dbg !777
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i200}, i64 0, metadata !358), !dbg !777
  %210 = load i32** %indicesA.i200, align 8, !dbg !777, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i199}, i64 0, metadata !760) #5, !dbg !778
  %add.ptr2.sum.i204 = add i64 %add.ptr.sum.i203, %idx.ext.i202, !dbg !778
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i196}, i64 0, metadata !759) #5, !dbg !757
  br label %for.body.i206, !dbg !757

for.body.i206:                                    ; preds = %for.end35.i, %for.body.lr.ph.i205
  %jcolB.0206.i = phi i32 [ 0, %for.body.lr.ph.i205 ], [ %add.i219, %for.end35.i ]
  %colB0.0205.i = phi double* [ %203, %for.body.lr.ph.i205 ], [ %add.ptr37.i, %for.end35.i ]
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i199}, i64 0, metadata !760) #5, !dbg !761
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i198}, i64 0, metadata !764) #5, !dbg !765
  call void @llvm.dbg.value(metadata !{i32* %nentA.i197}, i64 0, metadata !767) #5, !dbg !765
  call void @llvm.dbg.value(metadata !{i32 %207}, i64 0, metadata !779) #5, !dbg !765
  br label %for.cond4.outer.i208, !dbg !765

for.cond4.outer.i208:                             ; preds = %for.body17.i, %for.body.i206
  %colstart.0.ph.i207 = phi i32 [ %207, %for.body.i206 ], [ %sub8.i, %for.body17.i ]
  %jcolA.0.in.ph.i = phi i32 [ %206, %for.body.i206 ], [ %jcolA.0.i, %for.body17.i ]
  %211 = sext i32 %jcolA.0.in.ph.i to i64
  br label %for.cond4.i210

for.cond4.i210:                                   ; preds = %for.body6.i213, %for.cond4.outer.i208
  %indvars.iv222.i = phi i64 [ %211, %for.cond4.outer.i208 ], [ %indvars.iv.next223.i, %for.body6.i213 ]
  %jcolA.0.in.i = phi i32 [ %jcolA.0.in.ph.i, %for.cond4.outer.i208 ], [ %jcolA.0.i, %for.body6.i213 ]
  %indvars.iv.next223.i = add i64 %indvars.iv222.i, -1, !dbg !769
  %jcolA.0.i = add nsw i32 %jcolA.0.in.i, -1, !dbg !765
  %212 = trunc i64 %indvars.iv222.i to i32, !dbg !765
  %cmp5.i209 = icmp sgt i32 %212, 0, !dbg !765
  br i1 %cmp5.i209, label %for.body6.i213, label %for.end35.i, !dbg !765

for.body6.i213:                                   ; preds = %for.cond4.i210
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i201}, i64 0, metadata !768) #5, !dbg !769
  %arrayidx.i211 = getelementptr inbounds i32* %208, i64 %indvars.iv.next223.i, !dbg !769
  %213 = load i32* %arrayidx.i211, align 4, !dbg !769, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %213}, i64 0, metadata !780) #5, !dbg !769
  %cmp7.i212 = icmp sgt i32 %213, 0, !dbg !769
  br i1 %cmp7.i212, label %for.body17.lr.ph.i, label %for.cond4.i210, !dbg !769

for.body17.lr.ph.i:                               ; preds = %for.body6.i213
  %sub8.i = sub i32 %colstart.0.ph.i207, %213, !dbg !781
  call void @llvm.dbg.value(metadata !{i32 %sub8.i}, i64 0, metadata !779) #5, !dbg !781
  %arrayidx10.i = getelementptr inbounds double* %colB0.0205.i, i64 %indvars.iv.next223.i, !dbg !782
  %214 = load double* %arrayidx10.i, align 8, !dbg !782, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %214}, i64 0, metadata !783) #5, !dbg !782
  %add.ptr.sum183.i = add i64 %indvars.iv.next223.i, %idx.ext.i202, !dbg !784
  %arrayidx12.i = getelementptr inbounds double* %colB0.0205.i, i64 %add.ptr.sum183.i, !dbg !784
  %215 = load double* %arrayidx12.i, align 8, !dbg !784, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %215}, i64 0, metadata !785) #5, !dbg !784
  %add.ptr2.sum184.i = add i64 %indvars.iv.next223.i, %add.ptr.sum.i203, !dbg !786
  %arrayidx14.i = getelementptr inbounds double* %colB0.0205.i, i64 %add.ptr2.sum184.i, !dbg !786
  %216 = load double* %arrayidx14.i, align 8, !dbg !786, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %216}, i64 0, metadata !787) #5, !dbg !786
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !788) #5, !dbg !789
  call void @llvm.dbg.value(metadata !{i32 %sub8.i}, i64 0, metadata !790) #5, !dbg !789
  %217 = sext i32 %sub8.i to i64
  br label %for.body17.i, !dbg !789

for.body17.i:                                     ; preds = %for.body17.i, %for.body17.lr.ph.i
  %indvars.iv224.i = phi i64 [ %217, %for.body17.lr.ph.i ], [ %indvars.iv.next225.i, %for.body17.i ]
  %ii.0198.i = phi i32 [ 0, %for.body17.lr.ph.i ], [ %inc.i218, %for.body17.i ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i192}, i64 0, metadata !771) #5, !dbg !772
  %arrayidx19.i214 = getelementptr inbounds double* %209, i64 %indvars.iv224.i, !dbg !772
  %218 = load double* %arrayidx19.i214, align 8, !dbg !772, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %218}, i64 0, metadata !791) #5, !dbg !772
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i200}, i64 0, metadata !776) #5, !dbg !777
  %arrayidx21.i215 = getelementptr inbounds i32* %210, i64 %indvars.iv224.i, !dbg !777
  %219 = load i32* %arrayidx21.i215, align 4, !dbg !777, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %219}, i64 0, metadata !792) #5, !dbg !777
  %mul.i216 = fmul double %214, %218, !dbg !793
  %idxprom22.i = sext i32 %219 to i64, !dbg !793
  %arrayidx23.i = getelementptr inbounds double* %colB0.0205.i, i64 %idxprom22.i, !dbg !793
  %220 = load double* %arrayidx23.i, align 8, !dbg !793, !tbaa !512
  %sub24.i = fsub double %220, %mul.i216, !dbg !793
  store double %sub24.i, double* %arrayidx23.i, align 8, !dbg !793, !tbaa !512
  %mul25.i217 = fmul double %215, %218, !dbg !794
  %add.ptr.sum185.i = add i64 %idxprom22.i, %idx.ext.i202, !dbg !794
  %arrayidx27.i = getelementptr inbounds double* %colB0.0205.i, i64 %add.ptr.sum185.i, !dbg !794
  %221 = load double* %arrayidx27.i, align 8, !dbg !794, !tbaa !512
  %sub28.i = fsub double %221, %mul25.i217, !dbg !794
  store double %sub28.i, double* %arrayidx27.i, align 8, !dbg !794, !tbaa !512
  %mul29.i = fmul double %216, %218, !dbg !795
  %add.ptr2.sum186.i = add i64 %idxprom22.i, %add.ptr.sum.i203, !dbg !795
  %arrayidx31.i = getelementptr inbounds double* %colB0.0205.i, i64 %add.ptr2.sum186.i, !dbg !795
  %222 = load double* %arrayidx31.i, align 8, !dbg !795, !tbaa !512
  %sub32.i = fsub double %222, %mul29.i, !dbg !795
  store double %sub32.i, double* %arrayidx31.i, align 8, !dbg !795, !tbaa !512
  %inc.i218 = add nsw i32 %ii.0198.i, 1, !dbg !789
  call void @llvm.dbg.value(metadata !{i32 %inc.i218}, i64 0, metadata !788) #5, !dbg !789
  %indvars.iv.next225.i = add i64 %indvars.iv224.i, 1, !dbg !789
  %exitcond226.i = icmp eq i32 %inc.i218, %213, !dbg !789
  br i1 %exitcond226.i, label %for.cond4.outer.i208, label %for.body17.i, !dbg !789

for.end35.i:                                      ; preds = %for.cond4.i210
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i199}, i64 0, metadata !760) #5, !dbg !778
  %add.ptr37.i = getelementptr inbounds double* %colB0.0205.i, i64 %add.ptr2.sum.i204, !dbg !778
  call void @llvm.dbg.value(metadata !{double* %add.ptr37.i}, i64 0, metadata !755) #5, !dbg !778
  %add.i219 = add nsw i32 %jcolB.0206.i, 3, !dbg !757
  call void @llvm.dbg.value(metadata !{i32 %add.i219}, i64 0, metadata !756) #5, !dbg !757
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i196}, i64 0, metadata !759) #5, !dbg !757
  %cmp.i220 = icmp slt i32 %add.i219, %sub203.i, !dbg !757
  br i1 %cmp.i220, label %for.body.i206, label %for.end39.i, !dbg !757

for.end39.i:                                      ; preds = %for.end35.i, %sw.bb18
  %jcolB.0.lcssa.i221 = phi i32 [ 0, %sw.bb18 ], [ %add.i219, %for.end35.i ]
  %colB0.0.lcssa.i222 = phi double* [ %203, %sw.bb18 ], [ %add.ptr37.i, %for.end35.i ]
  %cmp41.i = icmp eq i32 %jcolB.0.lcssa.i221, %sub203.i, !dbg !796
  br i1 %cmp41.i, label %if.then42.i, label %if.else.i235, !dbg !796

if.then42.i:                                      ; preds = %for.end39.i
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i199}, i64 0, metadata !760) #5, !dbg !797
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i199}, i64 0, metadata !356), !dbg !797
  %223 = load i32* %nrowB.i199, align 4, !dbg !797, !tbaa !452
  %idx.ext43.i = sext i32 %223 to i64, !dbg !797
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i198}, i64 0, metadata !764) #5, !dbg !799
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i198}, i64 0, metadata !355), !dbg !799
  %224 = load i32* %nrowA.i198, align 4, !dbg !799, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32* %nentA.i197}, i64 0, metadata !767) #5, !dbg !799
  call void @llvm.dbg.value(metadata !{i32* %nentA.i197}, i64 0, metadata !354), !dbg !799
  %225 = load i32* %nentA.i197, align 4, !dbg !799, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %225}, i64 0, metadata !779) #5, !dbg !799
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i201}, i64 0, metadata !768) #5, !dbg !801
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i201}, i64 0, metadata !359), !dbg !801
  %226 = load i32** %sizesA.i201, align 8, !dbg !801, !tbaa !447
  call void @llvm.dbg.value(metadata !{double** %entriesA.i192}, i64 0, metadata !771) #5, !dbg !803
  call void @llvm.dbg.value(metadata !{double** %entriesA.i192}, i64 0, metadata !343), !dbg !803
  %227 = load double** %entriesA.i192, align 8, !dbg !803, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i200}, i64 0, metadata !776) #5, !dbg !807
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i200}, i64 0, metadata !358), !dbg !807
  %228 = load i32** %indicesA.i200, align 8, !dbg !807, !tbaa !447
  br label %for.cond46.outer.i, !dbg !799

for.cond46.outer.i:                               ; preds = %for.body60.i234, %if.then42.i
  %colstart.2.ph.i223 = phi i32 [ %225, %if.then42.i ], [ %sub53.i, %for.body60.i234 ]
  %jcolA.1.in.ph.i = phi i32 [ %224, %if.then42.i ], [ %jcolA.1.i, %for.body60.i234 ]
  %229 = sext i32 %jcolA.1.in.ph.i to i64
  br label %for.cond46.i

for.cond46.i:                                     ; preds = %for.body48.i, %for.cond46.outer.i
  %indvars.iv.i224 = phi i64 [ %229, %for.cond46.outer.i ], [ %indvars.iv.next.i225, %for.body48.i ]
  %jcolA.1.in.i = phi i32 [ %jcolA.1.in.ph.i, %for.cond46.outer.i ], [ %jcolA.1.i, %for.body48.i ]
  %indvars.iv.next.i225 = add i64 %indvars.iv.i224, -1, !dbg !801
  %jcolA.1.i = add nsw i32 %jcolA.1.in.i, -1, !dbg !799
  %230 = trunc i64 %indvars.iv.i224 to i32, !dbg !799
  %cmp47.i226 = icmp sgt i32 %230, 0, !dbg !799
  br i1 %cmp47.i226, label %for.body48.i, label %sw.epilog41, !dbg !799

for.body48.i:                                     ; preds = %for.cond46.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i201}, i64 0, metadata !768) #5, !dbg !801
  %arrayidx50.i = getelementptr inbounds i32* %226, i64 %indvars.iv.next.i225, !dbg !801
  %231 = load i32* %arrayidx50.i, align 4, !dbg !801, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %231}, i64 0, metadata !780) #5, !dbg !801
  %cmp51.i = icmp sgt i32 %231, 0, !dbg !801
  br i1 %cmp51.i, label %for.body60.lr.ph.i228, label %for.cond46.i, !dbg !801

for.body60.lr.ph.i228:                            ; preds = %for.body48.i
  %sub53.i = sub i32 %colstart.2.ph.i223, %231, !dbg !808
  call void @llvm.dbg.value(metadata !{i32 %sub53.i}, i64 0, metadata !779) #5, !dbg !808
  %arrayidx55.i227 = getelementptr inbounds double* %colB0.0.lcssa.i222, i64 %indvars.iv.next.i225, !dbg !809
  %232 = load double* %arrayidx55.i227, align 8, !dbg !809, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %232}, i64 0, metadata !783) #5, !dbg !809
  %add.ptr44.sum.i = add i64 %indvars.iv.next.i225, %idx.ext43.i, !dbg !810
  %arrayidx57.i = getelementptr inbounds double* %colB0.0.lcssa.i222, i64 %add.ptr44.sum.i, !dbg !810
  %233 = load double* %arrayidx57.i, align 8, !dbg !810, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %233}, i64 0, metadata !785) #5, !dbg !810
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !788) #5, !dbg !811
  call void @llvm.dbg.value(metadata !{i32 %sub53.i}, i64 0, metadata !790) #5, !dbg !811
  %234 = sext i32 %sub53.i to i64
  br label %for.body60.i234, !dbg !811

for.body60.i234:                                  ; preds = %for.body60.i234, %for.body60.lr.ph.i228
  %indvars.iv211.i = phi i64 [ %234, %for.body60.lr.ph.i228 ], [ %indvars.iv.next212.i, %for.body60.i234 ]
  %ii.1188.i = phi i32 [ 0, %for.body60.lr.ph.i228 ], [ %inc74.i232, %for.body60.i234 ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i192}, i64 0, metadata !771) #5, !dbg !803
  %arrayidx62.i229 = getelementptr inbounds double* %227, i64 %indvars.iv211.i, !dbg !803
  %235 = load double* %arrayidx62.i229, align 8, !dbg !803, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %235}, i64 0, metadata !791) #5, !dbg !803
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i200}, i64 0, metadata !776) #5, !dbg !807
  %arrayidx64.i230 = getelementptr inbounds i32* %228, i64 %indvars.iv211.i, !dbg !807
  %236 = load i32* %arrayidx64.i230, align 4, !dbg !807, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %236}, i64 0, metadata !792) #5, !dbg !807
  %mul65.i = fmul double %232, %235, !dbg !812
  %idxprom66.i = sext i32 %236 to i64, !dbg !812
  %arrayidx67.i = getelementptr inbounds double* %colB0.0.lcssa.i222, i64 %idxprom66.i, !dbg !812
  %237 = load double* %arrayidx67.i, align 8, !dbg !812, !tbaa !512
  %sub68.i = fsub double %237, %mul65.i, !dbg !812
  store double %sub68.i, double* %arrayidx67.i, align 8, !dbg !812, !tbaa !512
  %mul69.i = fmul double %233, %235, !dbg !813
  %add.ptr44.sum182.i = add i64 %idxprom66.i, %idx.ext43.i, !dbg !813
  %arrayidx71.i231 = getelementptr inbounds double* %colB0.0.lcssa.i222, i64 %add.ptr44.sum182.i, !dbg !813
  %238 = load double* %arrayidx71.i231, align 8, !dbg !813, !tbaa !512
  %sub72.i = fsub double %238, %mul69.i, !dbg !813
  store double %sub72.i, double* %arrayidx71.i231, align 8, !dbg !813, !tbaa !512
  %inc74.i232 = add nsw i32 %ii.1188.i, 1, !dbg !811
  call void @llvm.dbg.value(metadata !{i32 %inc74.i232}, i64 0, metadata !788) #5, !dbg !811
  %indvars.iv.next212.i = add i64 %indvars.iv211.i, 1, !dbg !811
  %exitcond.i233 = icmp eq i32 %inc74.i232, %231, !dbg !811
  br i1 %exitcond.i233, label %for.cond46.outer.i, label %for.body60.i234, !dbg !811

if.else.i235:                                     ; preds = %for.end39.i
  %sub81.i = add nsw i32 %204, -1, !dbg !814
  %cmp82.i = icmp eq i32 %jcolB.0.lcssa.i221, %sub81.i, !dbg !814
  br i1 %cmp82.i, label %if.then83.i, label %sw.epilog41, !dbg !814

if.then83.i:                                      ; preds = %if.else.i235
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i198}, i64 0, metadata !764) #5, !dbg !815
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i198}, i64 0, metadata !355), !dbg !815
  %239 = load i32* %nrowA.i198, align 4, !dbg !815, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32* %nentA.i197}, i64 0, metadata !767) #5, !dbg !815
  call void @llvm.dbg.value(metadata !{i32* %nentA.i197}, i64 0, metadata !354), !dbg !815
  %240 = load i32* %nentA.i197, align 4, !dbg !815, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %240}, i64 0, metadata !779) #5, !dbg !815
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i201}, i64 0, metadata !768) #5, !dbg !818
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i201}, i64 0, metadata !359), !dbg !818
  %241 = load i32** %sizesA.i201, align 8, !dbg !818, !tbaa !447
  call void @llvm.dbg.value(metadata !{double** %entriesA.i192}, i64 0, metadata !771) #5, !dbg !820
  call void @llvm.dbg.value(metadata !{double** %entriesA.i192}, i64 0, metadata !343), !dbg !820
  %242 = load double** %entriesA.i192, align 8, !dbg !820, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i200}, i64 0, metadata !776) #5, !dbg !824
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i200}, i64 0, metadata !358), !dbg !824
  %243 = load i32** %indicesA.i200, align 8, !dbg !824, !tbaa !447
  br label %for.cond85.outer.i, !dbg !815

for.cond85.outer.i:                               ; preds = %for.body97.i, %if.then83.i
  %colstart.4.ph.i236 = phi i32 [ %240, %if.then83.i ], [ %sub92.i, %for.body97.i ]
  %jcolA.2.in.ph.i = phi i32 [ %239, %if.then83.i ], [ %jcolA.2.i, %for.body97.i ]
  %244 = sext i32 %jcolA.2.in.ph.i to i64
  br label %for.cond85.i

for.cond85.i:                                     ; preds = %for.body87.i, %for.cond85.outer.i
  %indvars.iv215.i = phi i64 [ %244, %for.cond85.outer.i ], [ %indvars.iv.next216.i, %for.body87.i ]
  %jcolA.2.in.i = phi i32 [ %jcolA.2.in.ph.i, %for.cond85.outer.i ], [ %jcolA.2.i, %for.body87.i ]
  %indvars.iv.next216.i = add i64 %indvars.iv215.i, -1, !dbg !818
  %jcolA.2.i = add nsw i32 %jcolA.2.in.i, -1, !dbg !815
  %245 = trunc i64 %indvars.iv215.i to i32, !dbg !815
  %cmp86.i = icmp sgt i32 %245, 0, !dbg !815
  br i1 %cmp86.i, label %for.body87.i, label %sw.epilog41, !dbg !815

for.body87.i:                                     ; preds = %for.cond85.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i201}, i64 0, metadata !768) #5, !dbg !818
  %arrayidx89.i = getelementptr inbounds i32* %241, i64 %indvars.iv.next216.i, !dbg !818
  %246 = load i32* %arrayidx89.i, align 4, !dbg !818, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %246}, i64 0, metadata !780) #5, !dbg !818
  %cmp90.i = icmp sgt i32 %246, 0, !dbg !818
  br i1 %cmp90.i, label %for.body97.lr.ph.i, label %for.cond85.i, !dbg !818

for.body97.lr.ph.i:                               ; preds = %for.body87.i
  %sub92.i = sub i32 %colstart.4.ph.i236, %246, !dbg !825
  call void @llvm.dbg.value(metadata !{i32 %sub92.i}, i64 0, metadata !779) #5, !dbg !825
  %arrayidx94.i237 = getelementptr inbounds double* %colB0.0.lcssa.i222, i64 %indvars.iv.next216.i, !dbg !826
  %247 = load double* %arrayidx94.i237, align 8, !dbg !826, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %247}, i64 0, metadata !783) #5, !dbg !826
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !788) #5, !dbg !827
  call void @llvm.dbg.value(metadata !{i32 %sub92.i}, i64 0, metadata !790) #5, !dbg !827
  %248 = sext i32 %sub92.i to i64
  br label %for.body97.i, !dbg !827

for.body97.i:                                     ; preds = %for.body97.i, %for.body97.lr.ph.i
  %indvars.iv217.i = phi i64 [ %248, %for.body97.lr.ph.i ], [ %indvars.iv.next218.i, %for.body97.i ]
  %ii.2192.i = phi i32 [ 0, %for.body97.lr.ph.i ], [ %inc107.i, %for.body97.i ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i192}, i64 0, metadata !771) #5, !dbg !820
  %arrayidx99.i = getelementptr inbounds double* %242, i64 %indvars.iv217.i, !dbg !820
  %249 = load double* %arrayidx99.i, align 8, !dbg !820, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %249}, i64 0, metadata !791) #5, !dbg !820
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i200}, i64 0, metadata !776) #5, !dbg !824
  %arrayidx101.i238 = getelementptr inbounds i32* %243, i64 %indvars.iv217.i, !dbg !824
  %250 = load i32* %arrayidx101.i238, align 4, !dbg !824, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %250}, i64 0, metadata !792) #5, !dbg !824
  %mul102.i = fmul double %247, %249, !dbg !828
  %idxprom103.i = sext i32 %250 to i64, !dbg !828
  %arrayidx104.i = getelementptr inbounds double* %colB0.0.lcssa.i222, i64 %idxprom103.i, !dbg !828
  %251 = load double* %arrayidx104.i, align 8, !dbg !828, !tbaa !512
  %sub105.i = fsub double %251, %mul102.i, !dbg !828
  store double %sub105.i, double* %arrayidx104.i, align 8, !dbg !828, !tbaa !512
  %inc107.i = add nsw i32 %ii.2192.i, 1, !dbg !827
  call void @llvm.dbg.value(metadata !{i32 %inc107.i}, i64 0, metadata !788) #5, !dbg !827
  %indvars.iv.next218.i = add i64 %indvars.iv217.i, 1, !dbg !827
  %exitcond219.i = icmp eq i32 %inc107.i, %246, !dbg !827
  br i1 %exitcond219.i, label %for.cond85.outer.i, label %for.body97.i, !dbg !827

sw.bb19:                                          ; preds = %sw.bb
  %252 = bitcast double** %entriesA.i239 to i8*, !dbg !829
  call void @llvm.lifetime.start(i64 8, i8* %252) #5, !dbg !829
  %253 = bitcast double** %entriesB.i240 to i8*, !dbg !829
  call void @llvm.lifetime.start(i64 8, i8* %253) #5, !dbg !829
  %254 = bitcast i32* %inc1.i241 to i8*, !dbg !829
  call void @llvm.lifetime.start(i64 4, i8* %254) #5, !dbg !829
  %255 = bitcast i32* %inc2.i242 to i8*, !dbg !829
  call void @llvm.lifetime.start(i64 4, i8* %255) #5, !dbg !829
  %256 = bitcast i32* %ncolB.i243 to i8*, !dbg !829
  call void @llvm.lifetime.start(i64 4, i8* %256) #5, !dbg !829
  %257 = bitcast i32* %nrowA.i244 to i8*, !dbg !829
  call void @llvm.lifetime.start(i64 4, i8* %257) #5, !dbg !829
  %258 = bitcast i32* %nrowB.i245 to i8*, !dbg !829
  call void @llvm.lifetime.start(i64 4, i8* %258) #5, !dbg !829
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !831) #5, !dbg !829
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxB}, i64 0, metadata !832) #5, !dbg !833
  call void @llvm.dbg.declare(metadata !{double** %entriesA.i239}, metadata !323) #5, !dbg !834
  call void @llvm.dbg.declare(metadata !{double** %entriesB.i240}, metadata !324) #5, !dbg !834
  call void @llvm.dbg.declare(metadata !{i32* %inc1.i241}, metadata !325) #5, !dbg !835
  call void @llvm.dbg.declare(metadata !{i32* %inc2.i242}, metadata !326) #5, !dbg !835
  call void @llvm.dbg.declare(metadata !{i32* %ncolB.i243}, metadata !329) #5, !dbg !835
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i244}, metadata !330) #5, !dbg !835
  call void @llvm.dbg.declare(metadata !{i32* %nrowB.i245}, metadata !331) #5, !dbg !835
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i244, double** %entriesA.i239) #6, !dbg !836
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i245, i32* %ncolB.i243, i32* %inc1.i241, i32* %inc2.i242, double** %entriesB.i240) #6, !dbg !837
  call void @llvm.dbg.value(metadata !{double** %entriesB.i240}, i64 0, metadata !838) #5, !dbg !839
  call void @llvm.dbg.value(metadata !{double** %entriesB.i240}, i64 0, metadata !324), !dbg !839
  %259 = load double** %entriesB.i240, align 8, !dbg !839, !tbaa !447
  call void @llvm.dbg.value(metadata !{double* %259}, i64 0, metadata !840) #5, !dbg !839
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !841) #5, !dbg !842
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i243}, i64 0, metadata !844) #5, !dbg !842
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i243}, i64 0, metadata !329), !dbg !842
  %260 = load i32* %ncolB.i243, align 4, !dbg !842, !tbaa !452
  %sub89.i = add nsw i32 %260, -2, !dbg !842
  %cmp90.i246 = icmp sgt i32 %sub89.i, 0, !dbg !842
  br i1 %cmp90.i246, label %for.body.lr.ph.i250, label %for.end17.i, !dbg !842

for.body.lr.ph.i250:                              ; preds = %sw.bb19
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i245}, i64 0, metadata !845) #5, !dbg !846
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i245}, i64 0, metadata !331), !dbg !846
  %261 = load i32* %nrowB.i245, align 4, !dbg !846, !tbaa !452
  %idx.ext.i247 = sext i32 %261 to i64, !dbg !846
  %add.ptr.sum.i248 = shl nsw i64 %idx.ext.i247, 1, !dbg !848
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i244}, i64 0, metadata !849) #5, !dbg !850
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i244}, i64 0, metadata !330), !dbg !850
  %262 = load i32* %nrowA.i244, align 4, !dbg !850, !tbaa !452
  %cmp487.i = icmp sgt i32 %262, 0, !dbg !850
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i245}, i64 0, metadata !845) #5, !dbg !852
  %add.ptr2.sum.i249 = add i64 %add.ptr.sum.i248, %idx.ext.i247, !dbg !852
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i243}, i64 0, metadata !844) #5, !dbg !842
  call void @llvm.dbg.value(metadata !{double** %entriesA.i239}, i64 0, metadata !853) #5, !dbg !854
  call void @llvm.dbg.value(metadata !{double** %entriesA.i239}, i64 0, metadata !323), !dbg !854
  %263 = load double** %entriesA.i239, align 8, !dbg !854, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i244}, i64 0, metadata !849) #5, !dbg !850
  br label %for.body.i251, !dbg !842

for.body.i251:                                    ; preds = %for.end.i259, %for.body.lr.ph.i250
  %jcolB.093.i = phi i32 [ 0, %for.body.lr.ph.i250 ], [ %add.i257, %for.end.i259 ]
  %colB0.091.i = phi double* [ %259, %for.body.lr.ph.i250 ], [ %add.ptr15.i, %for.end.i259 ]
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i245}, i64 0, metadata !845) #5, !dbg !846
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !856) #5, !dbg !850
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i244}, i64 0, metadata !849) #5, !dbg !850
  br i1 %cmp487.i, label %for.body5.i256, label %for.end.i259, !dbg !850

for.body5.i256:                                   ; preds = %for.body.i251, %for.body5.i256
  %indvars.iv99.i = phi i64 [ %indvars.iv.next100.i, %for.body5.i256 ], [ 0, %for.body.i251 ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i239}, i64 0, metadata !853) #5, !dbg !854
  %arrayidx.i252 = getelementptr inbounds double* %263, i64 %indvars.iv99.i, !dbg !854
  %264 = load double* %arrayidx.i252, align 8, !dbg !854, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %264}, i64 0, metadata !857) #5, !dbg !854
  %arrayidx7.i = getelementptr inbounds double* %colB0.091.i, i64 %indvars.iv99.i, !dbg !858
  %265 = load double* %arrayidx7.i, align 8, !dbg !858, !tbaa !512
  %div.i = fdiv double %265, %264, !dbg !858
  store double %div.i, double* %arrayidx7.i, align 8, !dbg !858, !tbaa !512
  %add.ptr.sum80.i = add i64 %indvars.iv99.i, %idx.ext.i247, !dbg !859
  %arrayidx9.i253 = getelementptr inbounds double* %colB0.091.i, i64 %add.ptr.sum80.i, !dbg !859
  %266 = load double* %arrayidx9.i253, align 8, !dbg !859, !tbaa !512
  %div10.i = fdiv double %266, %264, !dbg !859
  store double %div10.i, double* %arrayidx9.i253, align 8, !dbg !859, !tbaa !512
  %add.ptr2.sum81.i = add i64 %indvars.iv99.i, %add.ptr.sum.i248, !dbg !860
  %arrayidx12.i254 = getelementptr inbounds double* %colB0.091.i, i64 %add.ptr2.sum81.i, !dbg !860
  %267 = load double* %arrayidx12.i254, align 8, !dbg !860, !tbaa !512
  %div13.i = fdiv double %267, %264, !dbg !860
  store double %div13.i, double* %arrayidx12.i254, align 8, !dbg !860, !tbaa !512
  %indvars.iv.next100.i = add i64 %indvars.iv99.i, 1, !dbg !850
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i244}, i64 0, metadata !849) #5, !dbg !850
  %lftr.wideiv1142 = trunc i64 %indvars.iv.next100.i to i32, !dbg !850
  %exitcond1143 = icmp eq i32 %lftr.wideiv1142, %262, !dbg !850
  br i1 %exitcond1143, label %for.end.i259, label %for.body5.i256, !dbg !850

for.end.i259:                                     ; preds = %for.body5.i256, %for.body.i251
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i245}, i64 0, metadata !845) #5, !dbg !852
  %add.ptr15.i = getelementptr inbounds double* %colB0.091.i, i64 %add.ptr2.sum.i249, !dbg !852
  call void @llvm.dbg.value(metadata !{double* %add.ptr15.i}, i64 0, metadata !840) #5, !dbg !852
  %add.i257 = add nsw i32 %jcolB.093.i, 3, !dbg !842
  call void @llvm.dbg.value(metadata !{i32 %add.i257}, i64 0, metadata !841) #5, !dbg !842
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i243}, i64 0, metadata !844) #5, !dbg !842
  %cmp.i258 = icmp slt i32 %add.i257, %sub89.i, !dbg !842
  br i1 %cmp.i258, label %for.body.i251, label %for.end17.i, !dbg !842

for.end17.i:                                      ; preds = %for.end.i259, %sw.bb19
  %jcolB.0.lcssa.i260 = phi i32 [ 0, %sw.bb19 ], [ %add.i257, %for.end.i259 ]
  %colB0.0.lcssa.i261 = phi double* [ %259, %sw.bb19 ], [ %add.ptr15.i, %for.end.i259 ]
  %cmp19.i = icmp eq i32 %jcolB.0.lcssa.i260, %sub89.i, !dbg !861
  br i1 %cmp19.i, label %if.then.i262, label %if.else.i272, !dbg !861

if.then.i262:                                     ; preds = %for.end17.i
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i245}, i64 0, metadata !845) #5, !dbg !862
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i245}, i64 0, metadata !331), !dbg !862
  %268 = load i32* %nrowB.i245, align 4, !dbg !862, !tbaa !452
  %idx.ext20.i = sext i32 %268 to i64, !dbg !862
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !856) #5, !dbg !864
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i244}, i64 0, metadata !849) #5, !dbg !864
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i244}, i64 0, metadata !330), !dbg !864
  %269 = load i32* %nrowA.i244, align 4, !dbg !864, !tbaa !452
  %cmp2382.i = icmp sgt i32 %269, 0, !dbg !864
  br i1 %cmp2382.i, label %for.body24.lr.ph.i263, label %sw.epilog41, !dbg !864

for.body24.lr.ph.i263:                            ; preds = %if.then.i262
  call void @llvm.dbg.value(metadata !{double** %entriesA.i239}, i64 0, metadata !853) #5, !dbg !866
  call void @llvm.dbg.value(metadata !{double** %entriesA.i239}, i64 0, metadata !323), !dbg !866
  %270 = load double** %entriesA.i239, align 8, !dbg !866, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i244}, i64 0, metadata !849) #5, !dbg !864
  br label %for.body24.i270, !dbg !864

for.body24.i270:                                  ; preds = %for.body24.i270, %for.body24.lr.ph.i263
  %indvars.iv.i264 = phi i64 [ 0, %for.body24.lr.ph.i263 ], [ %indvars.iv.next.i268, %for.body24.i270 ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i239}, i64 0, metadata !853) #5, !dbg !866
  %arrayidx26.i265 = getelementptr inbounds double* %270, i64 %indvars.iv.i264, !dbg !866
  %271 = load double* %arrayidx26.i265, align 8, !dbg !866, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %271}, i64 0, metadata !857) #5, !dbg !866
  %arrayidx28.i266 = getelementptr inbounds double* %colB0.0.lcssa.i261, i64 %indvars.iv.i264, !dbg !868
  %272 = load double* %arrayidx28.i266, align 8, !dbg !868, !tbaa !512
  %div29.i = fdiv double %272, %271, !dbg !868
  store double %div29.i, double* %arrayidx28.i266, align 8, !dbg !868, !tbaa !512
  %add.ptr21.sum.i = add i64 %indvars.iv.i264, %idx.ext20.i, !dbg !869
  %arrayidx31.i267 = getelementptr inbounds double* %colB0.0.lcssa.i261, i64 %add.ptr21.sum.i, !dbg !869
  %273 = load double* %arrayidx31.i267, align 8, !dbg !869, !tbaa !512
  %div32.i = fdiv double %273, %271, !dbg !869
  store double %div32.i, double* %arrayidx31.i267, align 8, !dbg !869, !tbaa !512
  %indvars.iv.next.i268 = add i64 %indvars.iv.i264, 1, !dbg !864
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i244}, i64 0, metadata !849) #5, !dbg !864
  %lftr.wideiv1138 = trunc i64 %indvars.iv.next.i268 to i32, !dbg !864
  %exitcond1139 = icmp eq i32 %lftr.wideiv1138, %269, !dbg !864
  br i1 %exitcond1139, label %sw.epilog41, label %for.body24.i270, !dbg !864

if.else.i272:                                     ; preds = %for.end17.i
  %sub36.i271 = add nsw i32 %260, -1, !dbg !870
  %cmp37.i = icmp eq i32 %jcolB.0.lcssa.i260, %sub36.i271, !dbg !870
  br i1 %cmp37.i, label %for.cond39.preheader.i, label %sw.epilog41, !dbg !870

for.cond39.preheader.i:                           ; preds = %if.else.i272
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i244}, i64 0, metadata !849) #5, !dbg !871
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i244}, i64 0, metadata !330), !dbg !871
  %274 = load i32* %nrowA.i244, align 4, !dbg !871, !tbaa !452
  %cmp4085.i = icmp sgt i32 %274, 0, !dbg !871
  br i1 %cmp4085.i, label %for.body41.lr.ph.i, label %sw.epilog41, !dbg !871

for.body41.lr.ph.i:                               ; preds = %for.cond39.preheader.i
  call void @llvm.dbg.value(metadata !{double** %entriesA.i239}, i64 0, metadata !853) #5, !dbg !874
  call void @llvm.dbg.value(metadata !{double** %entriesA.i239}, i64 0, metadata !323), !dbg !874
  %275 = load double** %entriesA.i239, align 8, !dbg !874, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i244}, i64 0, metadata !849) #5, !dbg !871
  br label %for.body41.i, !dbg !871

for.body41.i:                                     ; preds = %for.body41.i, %for.body41.lr.ph.i
  %indvars.iv97.i = phi i64 [ 0, %for.body41.lr.ph.i ], [ %indvars.iv.next98.i, %for.body41.i ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i239}, i64 0, metadata !853) #5, !dbg !874
  %arrayidx43.i = getelementptr inbounds double* %275, i64 %indvars.iv97.i, !dbg !874
  %276 = load double* %arrayidx43.i, align 8, !dbg !874, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %276}, i64 0, metadata !857) #5, !dbg !874
  %arrayidx45.i = getelementptr inbounds double* %colB0.0.lcssa.i261, i64 %indvars.iv97.i, !dbg !876
  %277 = load double* %arrayidx45.i, align 8, !dbg !876, !tbaa !512
  %div46.i = fdiv double %277, %276, !dbg !876
  store double %div46.i, double* %arrayidx45.i, align 8, !dbg !876, !tbaa !512
  %indvars.iv.next98.i = add i64 %indvars.iv97.i, 1, !dbg !871
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i244}, i64 0, metadata !849) #5, !dbg !871
  %lftr.wideiv1140 = trunc i64 %indvars.iv.next98.i to i32, !dbg !871
  %exitcond1141 = icmp eq i32 %lftr.wideiv1140, %274, !dbg !871
  br i1 %exitcond1141, label %sw.epilog41, label %for.body41.i, !dbg !871

sw.bb20:                                          ; preds = %sw.bb
  %278 = bitcast double** %entriesA.i273 to i8*, !dbg !877
  call void @llvm.lifetime.start(i64 8, i8* %278) #5, !dbg !877
  %279 = bitcast double** %entriesB.i274 to i8*, !dbg !877
  call void @llvm.lifetime.start(i64 8, i8* %279) #5, !dbg !877
  %280 = bitcast i32* %inc1.i275 to i8*, !dbg !877
  call void @llvm.lifetime.start(i64 4, i8* %280) #5, !dbg !877
  %281 = bitcast i32* %inc2.i276 to i8*, !dbg !877
  call void @llvm.lifetime.start(i64 4, i8* %281) #5, !dbg !877
  %282 = bitcast i32* %ncolB.i277 to i8*, !dbg !877
  call void @llvm.lifetime.start(i64 4, i8* %282) #5, !dbg !877
  %283 = bitcast i32* %nentA.i278 to i8*, !dbg !877
  call void @llvm.lifetime.start(i64 4, i8* %283) #5, !dbg !877
  %284 = bitcast i32* %nrowA.i279 to i8*, !dbg !877
  call void @llvm.lifetime.start(i64 4, i8* %284) #5, !dbg !877
  %285 = bitcast i32* %nrowB.i280 to i8*, !dbg !877
  call void @llvm.lifetime.start(i64 4, i8* %285) #5, !dbg !877
  %286 = bitcast i32** %pivotsizes.i to i8*, !dbg !877
  call void @llvm.lifetime.start(i64 8, i8* %286) #5, !dbg !877
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !879) #5, !dbg !877
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxB}, i64 0, metadata !880) #5, !dbg !881
  call void @llvm.dbg.declare(metadata !{double** %entriesA.i273}, metadata !301) #5, !dbg !882
  call void @llvm.dbg.declare(metadata !{double** %entriesB.i274}, metadata !302) #5, !dbg !882
  call void @llvm.dbg.declare(metadata !{i32* %inc1.i275}, metadata !303) #5, !dbg !883
  call void @llvm.dbg.declare(metadata !{i32* %inc2.i276}, metadata !304) #5, !dbg !883
  call void @llvm.dbg.declare(metadata !{i32* %ncolB.i277}, metadata !310) #5, !dbg !884
  call void @llvm.dbg.declare(metadata !{i32* %nentA.i278}, metadata !311) #5, !dbg !884
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i279}, metadata !312) #5, !dbg !884
  call void @llvm.dbg.declare(metadata !{i32* %nrowB.i280}, metadata !313) #5, !dbg !884
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes.i}, metadata !314) #5, !dbg !885
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i279, i32* %nentA.i278, i32** %pivotsizes.i, double** %entriesA.i273) #6, !dbg !886
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !887) #5, !dbg !888
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !890) #5, !dbg !888
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !891) #5, !dbg !888
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i279}, i64 0, metadata !892) #5, !dbg !888
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i279}, i64 0, metadata !312), !dbg !888
  %287 = load i32* %nrowA.i279, align 4, !dbg !888, !tbaa !452
  %cmp455.i = icmp sgt i32 %287, 0, !dbg !888
  br i1 %cmp455.i, label %for.body.lr.ph.i281, label %for.end.i290, !dbg !888

for.body.lr.ph.i281:                              ; preds = %sw.bb20
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i}, i64 0, metadata !893) #5, !dbg !894
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i}, i64 0, metadata !314), !dbg !894
  %288 = load i32** %pivotsizes.i, align 8, !dbg !894, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i279}, i64 0, metadata !892) #5, !dbg !888
  br label %for.body.i283, !dbg !888

for.body.i283:                                    ; preds = %if.end.i289, %for.body.lr.ph.i281
  %indvars.iv465.i = phi i64 [ 0, %for.body.lr.ph.i281 ], [ %indvars.iv.next466.i, %if.end.i289 ]
  %irowA.0457.i = phi i32 [ 0, %for.body.lr.ph.i281 ], [ %add.i286, %if.end.i289 ]
  %ipivot.0456.i = phi i32 [ 0, %for.body.lr.ph.i281 ], [ %inc.i287, %if.end.i289 ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i}, i64 0, metadata !893) #5, !dbg !894
  %arrayidx.i282 = getelementptr inbounds i32* %288, i64 %indvars.iv465.i, !dbg !894
  %289 = load i32* %arrayidx.i282, align 4, !dbg !894, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %289}, i64 0, metadata !896) #5, !dbg !894
  %.off.i = add i32 %289, -1, !dbg !897
  %290 = icmp ugt i32 %.off.i, 1, !dbg !897
  br i1 %290, label %if.then.i285, label %if.end.i289, !dbg !897

if.then.i285:                                     ; preds = %for.body.i283
  %291 = load %struct._IO_FILE** @stderr, align 8, !dbg !898, !tbaa !447
  %call.i284 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %291, i8* getelementptr inbounds ([102 x i8]* @.str6, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 %ipivot.0456.i, i32 %289) #6, !dbg !898
  call void @exit(i32 -1) #7, !dbg !900
  unreachable, !dbg !900

if.end.i289:                                      ; preds = %for.body.i283
  %add.i286 = add nsw i32 %289, %irowA.0457.i, !dbg !901
  call void @llvm.dbg.value(metadata !{i32 %add.i286}, i64 0, metadata !891) #5, !dbg !901
  %indvars.iv.next466.i = add i64 %indvars.iv465.i, 1, !dbg !888
  %inc.i287 = add nsw i32 %ipivot.0456.i, 1, !dbg !888
  call void @llvm.dbg.value(metadata !{i32 %inc.i287}, i64 0, metadata !890) #5, !dbg !888
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i279}, i64 0, metadata !892) #5, !dbg !888
  %cmp.i288 = icmp slt i32 %add.i286, %287, !dbg !888
  br i1 %cmp.i288, label %for.body.i283, label %for.end.i290, !dbg !888

for.end.i290:                                     ; preds = %if.end.i289, %sw.bb20
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i280, i32* %ncolB.i277, i32* %inc1.i275, i32* %inc2.i276, double** %entriesB.i274) #6, !dbg !902
  call void @llvm.dbg.value(metadata !{double** %entriesB.i274}, i64 0, metadata !903) #5, !dbg !904
  call void @llvm.dbg.value(metadata !{double** %entriesB.i274}, i64 0, metadata !302), !dbg !904
  %292 = load double** %entriesB.i274, align 8, !dbg !904, !tbaa !447
  call void @llvm.dbg.value(metadata !{double* %292}, i64 0, metadata !905) #5, !dbg !904
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !906) #5, !dbg !907
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i277}, i64 0, metadata !909) #5, !dbg !907
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i277}, i64 0, metadata !310), !dbg !907
  %293 = load i32* %ncolB.i277, align 4, !dbg !907, !tbaa !452
  %sub445.i = add nsw i32 %293, -2, !dbg !907
  %cmp4446.i = icmp sgt i32 %sub445.i, 0, !dbg !907
  br i1 %cmp4446.i, label %for.body5.lr.ph.i, label %for.end107.i, !dbg !907

for.body5.lr.ph.i:                                ; preds = %for.end.i290
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i280}, i64 0, metadata !910) #5, !dbg !911
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i280}, i64 0, metadata !313), !dbg !911
  %294 = load i32* %nrowB.i280, align 4, !dbg !911, !tbaa !452
  %idx.ext.i291 = sext i32 %294 to i64, !dbg !911
  %add.ptr.sum.i292 = shl nsw i64 %idx.ext.i291, 1, !dbg !913
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i279}, i64 0, metadata !892) #5, !dbg !914
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i279}, i64 0, metadata !312), !dbg !914
  %295 = load i32* %nrowA.i279, align 4, !dbg !914, !tbaa !452
  %cmp9441.i = icmp sgt i32 %295, 0, !dbg !914
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i280}, i64 0, metadata !910) #5, !dbg !916
  %add.ptr7.sum.i = add i64 %add.ptr.sum.i292, %idx.ext.i291, !dbg !916
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i277}, i64 0, metadata !909) #5, !dbg !907
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i}, i64 0, metadata !893) #5, !dbg !917
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i}, i64 0, metadata !314), !dbg !917
  %296 = load i32** %pivotsizes.i, align 8, !dbg !917, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i279}, i64 0, metadata !892) #5, !dbg !914
  call void @llvm.dbg.value(metadata !{double** %entriesA.i273}, i64 0, metadata !919) #5, !dbg !920
  call void @llvm.dbg.value(metadata !{double** %entriesA.i273}, i64 0, metadata !301), !dbg !920
  %297 = load double** %entriesA.i273, align 8, !dbg !920, !tbaa !447
  call void @llvm.dbg.value(metadata !{double** %entriesA.i273}, i64 0, metadata !919) #5, !dbg !922
  br label %for.body5.i293, !dbg !907

for.body5.i293:                                   ; preds = %for.end102.i, %for.body5.lr.ph.i
  %jcolB.0449.i = phi i32 [ 0, %for.body5.lr.ph.i ], [ %add106.i, %for.end102.i ]
  %colB0.0447.i = phi double* [ %292, %for.body5.lr.ph.i ], [ %add.ptr104.i, %for.end102.i ]
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i280}, i64 0, metadata !910) #5, !dbg !911
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !887) #5, !dbg !914
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !890) #5, !dbg !914
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !891) #5, !dbg !914
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i279}, i64 0, metadata !892) #5, !dbg !914
  br i1 %cmp9441.i, label %for.body10.i, label %for.end102.i, !dbg !914

for.body10.i:                                     ; preds = %for.body5.i293, %if.end98.i
  %indvars.iv460.i = phi i64 [ %indvars.iv.next461.i, %if.end98.i ], [ 0, %for.body5.i293 ]
  %kk.0444.i = phi i32 [ %kk.1.i, %if.end98.i ], [ 0, %for.body5.i293 ]
  %irowA.1443.i = phi i32 [ %add99.i, %if.end98.i ], [ 0, %for.body5.i293 ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i}, i64 0, metadata !893) #5, !dbg !917
  %arrayidx12.i294 = getelementptr inbounds i32* %296, i64 %indvars.iv460.i, !dbg !917
  %298 = load i32* %arrayidx12.i294, align 4, !dbg !917, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %298}, i64 0, metadata !896) #5, !dbg !917
  switch i32 %298, label %if.end98.i [
    i32 1, label %if.then14.i
    i32 2, label %if.then27.i
  ], !dbg !924

if.then14.i:                                      ; preds = %for.body10.i
  %inc15.i = add nsw i32 %kk.0444.i, 1, !dbg !920
  call void @llvm.dbg.value(metadata !{i32 %inc15.i}, i64 0, metadata !887) #5, !dbg !920
  %idxprom16.i = sext i32 %kk.0444.i to i64, !dbg !920
  call void @llvm.dbg.value(metadata !{double** %entriesA.i273}, i64 0, metadata !919) #5, !dbg !920
  %arrayidx17.i295 = getelementptr inbounds double* %297, i64 %idxprom16.i, !dbg !920
  %299 = load double* %arrayidx17.i295, align 8, !dbg !920, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %299}, i64 0, metadata !925) #5, !dbg !920
  %idxprom18.i = sext i32 %irowA.1443.i to i64, !dbg !926
  %arrayidx19.i296 = getelementptr inbounds double* %colB0.0447.i, i64 %idxprom18.i, !dbg !926
  %300 = load double* %arrayidx19.i296, align 8, !dbg !926, !tbaa !512
  %div.i297 = fdiv double %300, %299, !dbg !926
  store double %div.i297, double* %arrayidx19.i296, align 8, !dbg !926, !tbaa !512
  %add.ptr.sum430.i = add i64 %idxprom18.i, %idx.ext.i291, !dbg !927
  %arrayidx21.i298 = getelementptr inbounds double* %colB0.0447.i, i64 %add.ptr.sum430.i, !dbg !927
  %301 = load double* %arrayidx21.i298, align 8, !dbg !927, !tbaa !512
  %div22.i = fdiv double %301, %299, !dbg !927
  store double %div22.i, double* %arrayidx21.i298, align 8, !dbg !927, !tbaa !512
  %add.ptr7.sum431.i = add i64 %idxprom18.i, %add.ptr.sum.i292, !dbg !928
  %arrayidx24.i299 = getelementptr inbounds double* %colB0.0447.i, i64 %add.ptr7.sum431.i, !dbg !928
  %302 = load double* %arrayidx24.i299, align 8, !dbg !928, !tbaa !512
  %div25.i = fdiv double %302, %299, !dbg !928
  store double %div25.i, double* %arrayidx24.i299, align 8, !dbg !928, !tbaa !512
  br label %if.end98.i, !dbg !929

if.then27.i:                                      ; preds = %for.body10.i
  %inc28.i = add nsw i32 %kk.0444.i, 1, !dbg !922
  call void @llvm.dbg.value(metadata !{i32 %inc28.i}, i64 0, metadata !887) #5, !dbg !922
  %idxprom29.i = sext i32 %kk.0444.i to i64, !dbg !922
  call void @llvm.dbg.value(metadata !{double** %entriesA.i273}, i64 0, metadata !919) #5, !dbg !922
  %arrayidx30.i300 = getelementptr inbounds double* %297, i64 %idxprom29.i, !dbg !922
  %303 = load double* %arrayidx30.i300, align 8, !dbg !922, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %303}, i64 0, metadata !930) #5, !dbg !922
  %inc31.i = add nsw i32 %kk.0444.i, 2, !dbg !931
  call void @llvm.dbg.value(metadata !{i32 %inc31.i}, i64 0, metadata !887) #5, !dbg !931
  %idxprom32.i = sext i32 %inc28.i to i64, !dbg !931
  %arrayidx33.i301 = getelementptr inbounds double* %297, i64 %idxprom32.i, !dbg !931
  %304 = load double* %arrayidx33.i301, align 8, !dbg !931, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %304}, i64 0, metadata !932) #5, !dbg !931
  %inc34.i = add nsw i32 %kk.0444.i, 3, !dbg !933
  call void @llvm.dbg.value(metadata !{i32 %inc34.i}, i64 0, metadata !887) #5, !dbg !933
  %idxprom35.i = sext i32 %inc31.i to i64, !dbg !933
  %arrayidx36.i302 = getelementptr inbounds double* %297, i64 %idxprom35.i, !dbg !933
  %305 = load double* %arrayidx36.i302, align 8, !dbg !933, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %305}, i64 0, metadata !934) #5, !dbg !933
  %mul.i303 = fmul double %303, %305, !dbg !935
  %mul37.i = fmul double %304, %304, !dbg !935
  %sub38.i = fsub double %mul.i303, %mul37.i, !dbg !935
  %div39.i = fdiv double 1.000000e+00, %sub38.i, !dbg !935
  call void @llvm.dbg.value(metadata !{double %div39.i}, i64 0, metadata !936) #5, !dbg !935
  %idxprom40.i = sext i32 %irowA.1443.i to i64, !dbg !937
  %arrayidx41.i = getelementptr inbounds double* %colB0.0447.i, i64 %idxprom40.i, !dbg !937
  %306 = load double* %arrayidx41.i, align 8, !dbg !937, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %306}, i64 0, metadata !938) #5, !dbg !937
  %add42.i = add nsw i32 %irowA.1443.i, 1, !dbg !939
  %idxprom43.i = sext i32 %add42.i to i64, !dbg !939
  %arrayidx44.i = getelementptr inbounds double* %colB0.0447.i, i64 %idxprom43.i, !dbg !939
  %307 = load double* %arrayidx44.i, align 8, !dbg !939, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %307}, i64 0, metadata !940) #5, !dbg !939
  %mul45.i = fmul double %305, %306, !dbg !941
  %mul46.i = fmul double %304, %307, !dbg !941
  %sub47.i = fsub double %mul45.i, %mul46.i, !dbg !941
  %mul48.i = fmul double %div39.i, %sub47.i, !dbg !941
  store double %mul48.i, double* %arrayidx41.i, align 8, !dbg !941, !tbaa !512
  %sub51.i = fsub double -0.000000e+00, %304, !dbg !942
  %mul52.i = fmul double %306, %sub51.i, !dbg !942
  %mul53.i = fmul double %303, %307, !dbg !942
  %add54.i = fadd double %mul52.i, %mul53.i, !dbg !942
  %mul55.i = fmul double %div39.i, %add54.i, !dbg !942
  store double %mul55.i, double* %arrayidx44.i, align 8, !dbg !942, !tbaa !512
  %add.ptr.sum426.i = add i64 %idxprom40.i, %idx.ext.i291, !dbg !943
  %arrayidx60.i304 = getelementptr inbounds double* %colB0.0447.i, i64 %add.ptr.sum426.i, !dbg !943
  %308 = load double* %arrayidx60.i304, align 8, !dbg !943, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %308}, i64 0, metadata !938) #5, !dbg !943
  %add.ptr.sum427.i = add i64 %idxprom43.i, %idx.ext.i291, !dbg !944
  %arrayidx63.i = getelementptr inbounds double* %colB0.0447.i, i64 %add.ptr.sum427.i, !dbg !944
  %309 = load double* %arrayidx63.i, align 8, !dbg !944, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %309}, i64 0, metadata !940) #5, !dbg !944
  %mul64.i = fmul double %305, %308, !dbg !945
  %mul65.i305 = fmul double %304, %309, !dbg !945
  %sub66.i = fsub double %mul64.i, %mul65.i305, !dbg !945
  %mul67.i306 = fmul double %div39.i, %sub66.i, !dbg !945
  store double %mul67.i306, double* %arrayidx60.i304, align 8, !dbg !945, !tbaa !512
  %mul71.i307 = fmul double %308, %sub51.i, !dbg !946
  %mul72.i = fmul double %303, %309, !dbg !946
  %add73.i = fadd double %mul71.i307, %mul72.i, !dbg !946
  %mul74.i = fmul double %div39.i, %add73.i, !dbg !946
  store double %mul74.i, double* %arrayidx63.i, align 8, !dbg !946, !tbaa !512
  %add.ptr7.sum428.i = add i64 %idxprom40.i, %add.ptr.sum.i292, !dbg !947
  %arrayidx79.i308 = getelementptr inbounds double* %colB0.0447.i, i64 %add.ptr7.sum428.i, !dbg !947
  %310 = load double* %arrayidx79.i308, align 8, !dbg !947, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %310}, i64 0, metadata !938) #5, !dbg !947
  %add.ptr7.sum429.i = add i64 %idxprom43.i, %add.ptr.sum.i292, !dbg !948
  %arrayidx82.i309 = getelementptr inbounds double* %colB0.0447.i, i64 %add.ptr7.sum429.i, !dbg !948
  %311 = load double* %arrayidx82.i309, align 8, !dbg !948, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %311}, i64 0, metadata !940) #5, !dbg !948
  %mul83.i = fmul double %305, %310, !dbg !949
  %mul84.i = fmul double %304, %311, !dbg !949
  %sub85.i = fsub double %mul83.i, %mul84.i, !dbg !949
  %mul86.i = fmul double %div39.i, %sub85.i, !dbg !949
  store double %mul86.i, double* %arrayidx79.i308, align 8, !dbg !949, !tbaa !512
  %mul90.i = fmul double %310, %sub51.i, !dbg !950
  %mul91.i = fmul double %303, %311, !dbg !950
  %add92.i = fadd double %mul90.i, %mul91.i, !dbg !950
  %mul93.i = fmul double %div39.i, %add92.i, !dbg !950
  store double %mul93.i, double* %arrayidx82.i309, align 8, !dbg !950, !tbaa !512
  br label %if.end98.i, !dbg !951

if.end98.i:                                       ; preds = %if.then27.i, %if.then14.i, %for.body10.i
  %kk.1.i = phi i32 [ %inc15.i, %if.then14.i ], [ %inc34.i, %if.then27.i ], [ %kk.0444.i, %for.body10.i ]
  %add99.i = add nsw i32 %298, %irowA.1443.i, !dbg !952
  call void @llvm.dbg.value(metadata !{i32 %add99.i}, i64 0, metadata !891) #5, !dbg !952
  %indvars.iv.next461.i = add i64 %indvars.iv460.i, 1, !dbg !914
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i279}, i64 0, metadata !892) #5, !dbg !914
  %cmp9.i = icmp slt i32 %add99.i, %295, !dbg !914
  br i1 %cmp9.i, label %for.body10.i, label %for.end102.i, !dbg !914

for.end102.i:                                     ; preds = %if.end98.i, %for.body5.i293
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i280}, i64 0, metadata !910) #5, !dbg !916
  %add.ptr104.i = getelementptr inbounds double* %colB0.0447.i, i64 %add.ptr7.sum.i, !dbg !916
  call void @llvm.dbg.value(metadata !{double* %add.ptr104.i}, i64 0, metadata !905) #5, !dbg !916
  %add106.i = add nsw i32 %jcolB.0449.i, 3, !dbg !907
  call void @llvm.dbg.value(metadata !{i32 %add106.i}, i64 0, metadata !906) #5, !dbg !907
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i277}, i64 0, metadata !909) #5, !dbg !907
  %cmp4.i310 = icmp slt i32 %add106.i, %sub445.i, !dbg !907
  br i1 %cmp4.i310, label %for.body5.i293, label %for.end107.i, !dbg !907

for.end107.i:                                     ; preds = %for.end102.i, %for.end.i290
  %jcolB.0.lcssa.i311 = phi i32 [ 0, %for.end.i290 ], [ %add106.i, %for.end102.i ]
  %colB0.0.lcssa.i312 = phi double* [ %292, %for.end.i290 ], [ %add.ptr104.i, %for.end102.i ]
  %cmp109.i = icmp eq i32 %jcolB.0.lcssa.i311, %sub445.i, !dbg !953
  br i1 %cmp109.i, label %if.then110.i, label %if.else189.i, !dbg !953

if.then110.i:                                     ; preds = %for.end107.i
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i280}, i64 0, metadata !910) #5, !dbg !954
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i280}, i64 0, metadata !313), !dbg !954
  %312 = load i32* %nrowB.i280, align 4, !dbg !954, !tbaa !452
  %idx.ext111.i = sext i32 %312 to i64, !dbg !954
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !887) #5, !dbg !956
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !890) #5, !dbg !956
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !891) #5, !dbg !956
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i279}, i64 0, metadata !892) #5, !dbg !956
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i279}, i64 0, metadata !312), !dbg !956
  %313 = load i32* %nrowA.i279, align 4, !dbg !956, !tbaa !452
  %cmp114432.i = icmp sgt i32 %313, 0, !dbg !956
  br i1 %cmp114432.i, label %for.body115.lr.ph.i, label %sw.epilog41, !dbg !956

for.body115.lr.ph.i:                              ; preds = %if.then110.i
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i}, i64 0, metadata !893) #5, !dbg !958
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i}, i64 0, metadata !314), !dbg !958
  %314 = load i32** %pivotsizes.i, align 8, !dbg !958, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i279}, i64 0, metadata !892) #5, !dbg !956
  call void @llvm.dbg.value(metadata !{double** %entriesA.i273}, i64 0, metadata !919) #5, !dbg !960
  call void @llvm.dbg.value(metadata !{double** %entriesA.i273}, i64 0, metadata !301), !dbg !960
  %315 = load double** %entriesA.i273, align 8, !dbg !960, !tbaa !447
  call void @llvm.dbg.value(metadata !{double** %entriesA.i273}, i64 0, metadata !919) #5, !dbg !962
  br label %for.body115.i, !dbg !956

for.body115.i:                                    ; preds = %if.end184.i, %for.body115.lr.ph.i
  %indvars.iv.i313 = phi i64 [ 0, %for.body115.lr.ph.i ], [ %indvars.iv.next.i315, %if.end184.i ]
  %kk.2435.i = phi i32 [ 0, %for.body115.lr.ph.i ], [ %kk.3.i, %if.end184.i ]
  %irowA.2434.i = phi i32 [ 0, %for.body115.lr.ph.i ], [ %add185.i, %if.end184.i ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i}, i64 0, metadata !893) #5, !dbg !958
  %arrayidx117.i = getelementptr inbounds i32* %314, i64 %indvars.iv.i313, !dbg !958
  %316 = load i32* %arrayidx117.i, align 4, !dbg !958, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %316}, i64 0, metadata !896) #5, !dbg !958
  switch i32 %316, label %if.end184.i [
    i32 1, label %if.then119.i
    i32 2, label %if.then131.i
  ], !dbg !964

if.then119.i:                                     ; preds = %for.body115.i
  %inc120.i = add nsw i32 %kk.2435.i, 1, !dbg !960
  call void @llvm.dbg.value(metadata !{i32 %inc120.i}, i64 0, metadata !887) #5, !dbg !960
  %idxprom121.i = sext i32 %kk.2435.i to i64, !dbg !960
  call void @llvm.dbg.value(metadata !{double** %entriesA.i273}, i64 0, metadata !919) #5, !dbg !960
  %arrayidx122.i314 = getelementptr inbounds double* %315, i64 %idxprom121.i, !dbg !960
  %317 = load double* %arrayidx122.i314, align 8, !dbg !960, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %317}, i64 0, metadata !925) #5, !dbg !960
  %idxprom123.i = sext i32 %irowA.2434.i to i64, !dbg !965
  %arrayidx124.i = getelementptr inbounds double* %colB0.0.lcssa.i312, i64 %idxprom123.i, !dbg !965
  %318 = load double* %arrayidx124.i, align 8, !dbg !965, !tbaa !512
  %div125.i = fdiv double %318, %317, !dbg !965
  store double %div125.i, double* %arrayidx124.i, align 8, !dbg !965, !tbaa !512
  %add.ptr112.sum425.i = add i64 %idxprom123.i, %idx.ext111.i, !dbg !966
  %arrayidx127.i = getelementptr inbounds double* %colB0.0.lcssa.i312, i64 %add.ptr112.sum425.i, !dbg !966
  %319 = load double* %arrayidx127.i, align 8, !dbg !966, !tbaa !512
  %div128.i = fdiv double %319, %317, !dbg !966
  store double %div128.i, double* %arrayidx127.i, align 8, !dbg !966, !tbaa !512
  br label %if.end184.i, !dbg !967

if.then131.i:                                     ; preds = %for.body115.i
  %inc132.i = add nsw i32 %kk.2435.i, 1, !dbg !962
  call void @llvm.dbg.value(metadata !{i32 %inc132.i}, i64 0, metadata !887) #5, !dbg !962
  %idxprom133.i = sext i32 %kk.2435.i to i64, !dbg !962
  call void @llvm.dbg.value(metadata !{double** %entriesA.i273}, i64 0, metadata !919) #5, !dbg !962
  %arrayidx134.i = getelementptr inbounds double* %315, i64 %idxprom133.i, !dbg !962
  %320 = load double* %arrayidx134.i, align 8, !dbg !962, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %320}, i64 0, metadata !930) #5, !dbg !962
  %inc135.i = add nsw i32 %kk.2435.i, 2, !dbg !968
  call void @llvm.dbg.value(metadata !{i32 %inc135.i}, i64 0, metadata !887) #5, !dbg !968
  %idxprom136.i = sext i32 %inc132.i to i64, !dbg !968
  %arrayidx137.i = getelementptr inbounds double* %315, i64 %idxprom136.i, !dbg !968
  %321 = load double* %arrayidx137.i, align 8, !dbg !968, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %321}, i64 0, metadata !932) #5, !dbg !968
  %inc138.i = add nsw i32 %kk.2435.i, 3, !dbg !969
  call void @llvm.dbg.value(metadata !{i32 %inc138.i}, i64 0, metadata !887) #5, !dbg !969
  %idxprom139.i = sext i32 %inc135.i to i64, !dbg !969
  %arrayidx140.i = getelementptr inbounds double* %315, i64 %idxprom139.i, !dbg !969
  %322 = load double* %arrayidx140.i, align 8, !dbg !969, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %322}, i64 0, metadata !934) #5, !dbg !969
  %mul141.i = fmul double %320, %322, !dbg !970
  %mul142.i = fmul double %321, %321, !dbg !970
  %sub143.i = fsub double %mul141.i, %mul142.i, !dbg !970
  %div144.i = fdiv double 1.000000e+00, %sub143.i, !dbg !970
  call void @llvm.dbg.value(metadata !{double %div144.i}, i64 0, metadata !936) #5, !dbg !970
  %idxprom145.i = sext i32 %irowA.2434.i to i64, !dbg !971
  %arrayidx146.i = getelementptr inbounds double* %colB0.0.lcssa.i312, i64 %idxprom145.i, !dbg !971
  %323 = load double* %arrayidx146.i, align 8, !dbg !971, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %323}, i64 0, metadata !938) #5, !dbg !971
  %add147.i = add nsw i32 %irowA.2434.i, 1, !dbg !972
  %idxprom148.i = sext i32 %add147.i to i64, !dbg !972
  %arrayidx149.i = getelementptr inbounds double* %colB0.0.lcssa.i312, i64 %idxprom148.i, !dbg !972
  %324 = load double* %arrayidx149.i, align 8, !dbg !972, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %324}, i64 0, metadata !940) #5, !dbg !972
  %mul150.i = fmul double %322, %323, !dbg !973
  %mul151.i = fmul double %321, %324, !dbg !973
  %sub152.i = fsub double %mul150.i, %mul151.i, !dbg !973
  %mul153.i = fmul double %div144.i, %sub152.i, !dbg !973
  store double %mul153.i, double* %arrayidx146.i, align 8, !dbg !973, !tbaa !512
  %sub156.i = fsub double -0.000000e+00, %321, !dbg !974
  %mul157.i = fmul double %323, %sub156.i, !dbg !974
  %mul158.i = fmul double %320, %324, !dbg !974
  %add159.i = fadd double %mul157.i, %mul158.i, !dbg !974
  %mul160.i = fmul double %div144.i, %add159.i, !dbg !974
  store double %mul160.i, double* %arrayidx149.i, align 8, !dbg !974, !tbaa !512
  %add.ptr112.sum.i = add i64 %idxprom145.i, %idx.ext111.i, !dbg !975
  %arrayidx165.i = getelementptr inbounds double* %colB0.0.lcssa.i312, i64 %add.ptr112.sum.i, !dbg !975
  %325 = load double* %arrayidx165.i, align 8, !dbg !975, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %325}, i64 0, metadata !938) #5, !dbg !975
  %add.ptr112.sum424.i = add i64 %idxprom148.i, %idx.ext111.i, !dbg !976
  %arrayidx168.i = getelementptr inbounds double* %colB0.0.lcssa.i312, i64 %add.ptr112.sum424.i, !dbg !976
  %326 = load double* %arrayidx168.i, align 8, !dbg !976, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %326}, i64 0, metadata !940) #5, !dbg !976
  %mul169.i = fmul double %322, %325, !dbg !977
  %mul170.i = fmul double %321, %326, !dbg !977
  %sub171.i = fsub double %mul169.i, %mul170.i, !dbg !977
  %mul172.i = fmul double %div144.i, %sub171.i, !dbg !977
  store double %mul172.i, double* %arrayidx165.i, align 8, !dbg !977, !tbaa !512
  %mul176.i = fmul double %325, %sub156.i, !dbg !978
  %mul177.i = fmul double %320, %326, !dbg !978
  %add178.i = fadd double %mul176.i, %mul177.i, !dbg !978
  %mul179.i = fmul double %div144.i, %add178.i, !dbg !978
  store double %mul179.i, double* %arrayidx168.i, align 8, !dbg !978, !tbaa !512
  br label %if.end184.i, !dbg !979

if.end184.i:                                      ; preds = %if.then131.i, %if.then119.i, %for.body115.i
  %kk.3.i = phi i32 [ %inc120.i, %if.then119.i ], [ %inc138.i, %if.then131.i ], [ %kk.2435.i, %for.body115.i ]
  %add185.i = add nsw i32 %316, %irowA.2434.i, !dbg !980
  call void @llvm.dbg.value(metadata !{i32 %add185.i}, i64 0, metadata !891) #5, !dbg !980
  %indvars.iv.next.i315 = add i64 %indvars.iv.i313, 1, !dbg !956
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i279}, i64 0, metadata !892) #5, !dbg !956
  %cmp114.i = icmp slt i32 %add185.i, %313, !dbg !956
  br i1 %cmp114.i, label %for.body115.i, label %sw.epilog41, !dbg !956

if.else189.i:                                     ; preds = %for.end107.i
  %sub190.i = add nsw i32 %293, -1, !dbg !981
  %cmp191.i = icmp eq i32 %jcolB.0.lcssa.i311, %sub190.i, !dbg !981
  br i1 %cmp191.i, label %for.cond193.preheader.i, label %sw.epilog41, !dbg !981

for.cond193.preheader.i:                          ; preds = %if.else189.i
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i279}, i64 0, metadata !892) #5, !dbg !982
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i279}, i64 0, metadata !312), !dbg !982
  %327 = load i32* %nrowA.i279, align 4, !dbg !982, !tbaa !452
  %cmp194437.i = icmp sgt i32 %327, 0, !dbg !982
  br i1 %cmp194437.i, label %for.body195.lr.ph.i, label %sw.epilog41, !dbg !982

for.body195.lr.ph.i:                              ; preds = %for.cond193.preheader.i
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i}, i64 0, metadata !893) #5, !dbg !985
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i}, i64 0, metadata !314), !dbg !985
  %328 = load i32** %pivotsizes.i, align 8, !dbg !985, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i279}, i64 0, metadata !892) #5, !dbg !982
  call void @llvm.dbg.value(metadata !{double** %entriesA.i273}, i64 0, metadata !919) #5, !dbg !987
  call void @llvm.dbg.value(metadata !{double** %entriesA.i273}, i64 0, metadata !301), !dbg !987
  %329 = load double** %entriesA.i273, align 8, !dbg !987, !tbaa !447
  call void @llvm.dbg.value(metadata !{double** %entriesA.i273}, i64 0, metadata !919) #5, !dbg !989
  br label %for.body195.i, !dbg !982

for.body195.i:                                    ; preds = %if.end242.i, %for.body195.lr.ph.i
  %indvars.iv458.i = phi i64 [ 0, %for.body195.lr.ph.i ], [ %indvars.iv.next459.i, %if.end242.i ]
  %kk.4440.i = phi i32 [ 0, %for.body195.lr.ph.i ], [ %kk.5.i316, %if.end242.i ]
  %irowA.3439.i = phi i32 [ 0, %for.body195.lr.ph.i ], [ %add243.i, %if.end242.i ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i}, i64 0, metadata !893) #5, !dbg !985
  %arrayidx197.i = getelementptr inbounds i32* %328, i64 %indvars.iv458.i, !dbg !985
  %330 = load i32* %arrayidx197.i, align 4, !dbg !985, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %330}, i64 0, metadata !896) #5, !dbg !985
  switch i32 %330, label %if.end242.i [
    i32 1, label %if.then199.i
    i32 2, label %if.then208.i
  ], !dbg !991

if.then199.i:                                     ; preds = %for.body195.i
  %inc200.i = add nsw i32 %kk.4440.i, 1, !dbg !987
  call void @llvm.dbg.value(metadata !{i32 %inc200.i}, i64 0, metadata !887) #5, !dbg !987
  %idxprom201.i = sext i32 %kk.4440.i to i64, !dbg !987
  call void @llvm.dbg.value(metadata !{double** %entriesA.i273}, i64 0, metadata !919) #5, !dbg !987
  %arrayidx202.i = getelementptr inbounds double* %329, i64 %idxprom201.i, !dbg !987
  %331 = load double* %arrayidx202.i, align 8, !dbg !987, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %331}, i64 0, metadata !925) #5, !dbg !987
  %idxprom203.i = sext i32 %irowA.3439.i to i64, !dbg !992
  %arrayidx204.i = getelementptr inbounds double* %colB0.0.lcssa.i312, i64 %idxprom203.i, !dbg !992
  %332 = load double* %arrayidx204.i, align 8, !dbg !992, !tbaa !512
  %div205.i = fdiv double %332, %331, !dbg !992
  store double %div205.i, double* %arrayidx204.i, align 8, !dbg !992, !tbaa !512
  br label %if.end242.i, !dbg !993

if.then208.i:                                     ; preds = %for.body195.i
  %inc209.i = add nsw i32 %kk.4440.i, 1, !dbg !989
  call void @llvm.dbg.value(metadata !{i32 %inc209.i}, i64 0, metadata !887) #5, !dbg !989
  %idxprom210.i = sext i32 %kk.4440.i to i64, !dbg !989
  call void @llvm.dbg.value(metadata !{double** %entriesA.i273}, i64 0, metadata !919) #5, !dbg !989
  %arrayidx211.i = getelementptr inbounds double* %329, i64 %idxprom210.i, !dbg !989
  %333 = load double* %arrayidx211.i, align 8, !dbg !989, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %333}, i64 0, metadata !930) #5, !dbg !989
  %inc212.i = add nsw i32 %kk.4440.i, 2, !dbg !994
  call void @llvm.dbg.value(metadata !{i32 %inc212.i}, i64 0, metadata !887) #5, !dbg !994
  %idxprom213.i = sext i32 %inc209.i to i64, !dbg !994
  %arrayidx214.i = getelementptr inbounds double* %329, i64 %idxprom213.i, !dbg !994
  %334 = load double* %arrayidx214.i, align 8, !dbg !994, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %334}, i64 0, metadata !932) #5, !dbg !994
  %inc215.i = add nsw i32 %kk.4440.i, 3, !dbg !995
  call void @llvm.dbg.value(metadata !{i32 %inc215.i}, i64 0, metadata !887) #5, !dbg !995
  %idxprom216.i = sext i32 %inc212.i to i64, !dbg !995
  %arrayidx217.i = getelementptr inbounds double* %329, i64 %idxprom216.i, !dbg !995
  %335 = load double* %arrayidx217.i, align 8, !dbg !995, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %335}, i64 0, metadata !934) #5, !dbg !995
  %mul218.i = fmul double %333, %335, !dbg !996
  %mul219.i = fmul double %334, %334, !dbg !996
  %sub220.i = fsub double %mul218.i, %mul219.i, !dbg !996
  %div221.i = fdiv double 1.000000e+00, %sub220.i, !dbg !996
  call void @llvm.dbg.value(metadata !{double %div221.i}, i64 0, metadata !936) #5, !dbg !996
  %idxprom222.i = sext i32 %irowA.3439.i to i64, !dbg !997
  %arrayidx223.i = getelementptr inbounds double* %colB0.0.lcssa.i312, i64 %idxprom222.i, !dbg !997
  %336 = load double* %arrayidx223.i, align 8, !dbg !997, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %336}, i64 0, metadata !938) #5, !dbg !997
  %add224.i = add nsw i32 %irowA.3439.i, 1, !dbg !998
  %idxprom225.i = sext i32 %add224.i to i64, !dbg !998
  %arrayidx226.i = getelementptr inbounds double* %colB0.0.lcssa.i312, i64 %idxprom225.i, !dbg !998
  %337 = load double* %arrayidx226.i, align 8, !dbg !998, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %337}, i64 0, metadata !940) #5, !dbg !998
  %mul227.i = fmul double %335, %336, !dbg !999
  %mul228.i = fmul double %334, %337, !dbg !999
  %sub229.i = fsub double %mul227.i, %mul228.i, !dbg !999
  %mul230.i = fmul double %div221.i, %sub229.i, !dbg !999
  store double %mul230.i, double* %arrayidx223.i, align 8, !dbg !999, !tbaa !512
  %338 = fmul double %334, %336, !dbg !1000
  %mul235.i = fmul double %333, %337, !dbg !1000
  %add236.i = fsub double %mul235.i, %338, !dbg !1000
  %mul237.i = fmul double %div221.i, %add236.i, !dbg !1000
  store double %mul237.i, double* %arrayidx226.i, align 8, !dbg !1000, !tbaa !512
  br label %if.end242.i, !dbg !1001

if.end242.i:                                      ; preds = %if.then208.i, %if.then199.i, %for.body195.i
  %kk.5.i316 = phi i32 [ %inc200.i, %if.then199.i ], [ %inc215.i, %if.then208.i ], [ %kk.4440.i, %for.body195.i ]
  %add243.i = add nsw i32 %330, %irowA.3439.i, !dbg !1002
  call void @llvm.dbg.value(metadata !{i32 %add243.i}, i64 0, metadata !891) #5, !dbg !1002
  %indvars.iv.next459.i = add i64 %indvars.iv458.i, 1, !dbg !982
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i279}, i64 0, metadata !892) #5, !dbg !982
  %cmp194.i = icmp slt i32 %add243.i, %327, !dbg !982
  br i1 %cmp194.i, label %for.body195.i, label %sw.epilog41, !dbg !982

sw.default:                                       ; preds = %sw.bb
  %339 = load %struct._IO_FILE** @stderr, align 8, !dbg !1003, !tbaa !447
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %339, i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 1) #6, !dbg !1003
  call void @exit(i32 -1) #7, !dbg !1004
  unreachable, !dbg !1004

sw.bb24:                                          ; preds = %if.end12
  %mode25 = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 1, !dbg !1005
  %340 = load i32* %mode25, align 4, !dbg !1005, !tbaa !452
  switch i32 %340, label %sw.default34 [
    i32 5, label %sw.bb26
    i32 2, label %sw.bb27
    i32 6, label %sw.bb28
    i32 3, label %sw.bb29
    i32 7, label %sw.bb30
    i32 8, label %sw.bb31
    i32 9, label %sw.bb32
  ], !dbg !1005

sw.bb26:                                          ; preds = %sw.bb24
  %341 = bitcast double** %entriesA.i317 to i8*, !dbg !1006
  call void @llvm.lifetime.start(i64 8, i8* %341) #5, !dbg !1006
  %342 = bitcast double** %entriesB.i318 to i8*, !dbg !1006
  call void @llvm.lifetime.start(i64 8, i8* %342) #5, !dbg !1006
  %343 = bitcast i32* %inc1.i319 to i8*, !dbg !1006
  call void @llvm.lifetime.start(i64 4, i8* %343) #5, !dbg !1006
  %344 = bitcast i32* %inc2.i320 to i8*, !dbg !1006
  call void @llvm.lifetime.start(i64 4, i8* %344) #5, !dbg !1006
  %345 = bitcast i32* %ncolB.i321 to i8*, !dbg !1006
  call void @llvm.lifetime.start(i64 4, i8* %345) #5, !dbg !1006
  %346 = bitcast i32* %nentA.i322 to i8*, !dbg !1006
  call void @llvm.lifetime.start(i64 4, i8* %346) #5, !dbg !1006
  %347 = bitcast i32* %nrowA.i323 to i8*, !dbg !1006
  call void @llvm.lifetime.start(i64 4, i8* %347) #5, !dbg !1006
  %348 = bitcast i32* %nrowB.i324 to i8*, !dbg !1006
  call void @llvm.lifetime.start(i64 4, i8* %348) #5, !dbg !1006
  %349 = bitcast i32** %firstlocsA.i325 to i8*, !dbg !1006
  call void @llvm.lifetime.start(i64 8, i8* %349) #5, !dbg !1006
  %350 = bitcast i32** %sizesA.i326 to i8*, !dbg !1006
  call void @llvm.lifetime.start(i64 8, i8* %350) #5, !dbg !1006
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !1009) #5, !dbg !1006
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxB}, i64 0, metadata !1010) #5, !dbg !1011
  call void @llvm.dbg.declare(metadata !{double** %entriesA.i317}, metadata !269) #5, !dbg !1012
  call void @llvm.dbg.declare(metadata !{double** %entriesB.i318}, metadata !270) #5, !dbg !1012
  call void @llvm.dbg.declare(metadata !{i32* %inc1.i319}, metadata !274) #5, !dbg !1013
  call void @llvm.dbg.declare(metadata !{i32* %inc2.i320}, metadata !275) #5, !dbg !1013
  call void @llvm.dbg.declare(metadata !{i32* %ncolB.i321}, metadata !280) #5, !dbg !1014
  call void @llvm.dbg.declare(metadata !{i32* %nentA.i322}, metadata !281) #5, !dbg !1014
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i323}, metadata !282) #5, !dbg !1014
  call void @llvm.dbg.declare(metadata !{i32* %nrowB.i324}, metadata !283) #5, !dbg !1014
  call void @llvm.dbg.declare(metadata !{i32** %firstlocsA.i325}, metadata !285) #5, !dbg !1015
  call void @llvm.dbg.declare(metadata !{i32** %sizesA.i326}, metadata !286) #5, !dbg !1015
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i323, i32* %nentA.i322, i32** %firstlocsA.i325, i32** %sizesA.i326, double** %entriesA.i317) #6, !dbg !1016
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i324, i32* %ncolB.i321, i32* %inc1.i319, i32* %inc2.i320, double** %entriesB.i318) #6, !dbg !1017
  call void @llvm.dbg.value(metadata !{double** %entriesB.i318}, i64 0, metadata !1018) #5, !dbg !1019
  call void @llvm.dbg.value(metadata !{double** %entriesB.i318}, i64 0, metadata !270), !dbg !1019
  %351 = load double** %entriesB.i318, align 8, !dbg !1019, !tbaa !447
  call void @llvm.dbg.value(metadata !{double* %351}, i64 0, metadata !1020) #5, !dbg !1019
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1021) #5, !dbg !1022
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i321}, i64 0, metadata !1024) #5, !dbg !1022
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i321}, i64 0, metadata !280), !dbg !1022
  %352 = load i32* %ncolB.i321, align 4, !dbg !1022, !tbaa !452
  %sub451.i = add nsw i32 %352, -2, !dbg !1022
  %cmp452.i = icmp sgt i32 %sub451.i, 0, !dbg !1022
  br i1 %cmp452.i, label %for.body.lr.ph.i330, label %for.end89.i, !dbg !1022

for.body.lr.ph.i330:                              ; preds = %sw.bb26
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i324}, i64 0, metadata !1025) #5, !dbg !1026
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i324}, i64 0, metadata !283), !dbg !1026
  %353 = load i32* %nrowB.i324, align 4, !dbg !1026, !tbaa !452
  %mul.i327 = shl nsw i32 %353, 1, !dbg !1026
  %idx.ext.i328 = sext i32 %mul.i327 to i64, !dbg !1026
  %add.ptr.sum.i329 = shl nsw i64 %idx.ext.i328, 1, !dbg !1028
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i323}, i64 0, metadata !1029) #5, !dbg !1030
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i323}, i64 0, metadata !282), !dbg !1030
  %354 = load i32* %nrowA.i323, align 4, !dbg !1030, !tbaa !452
  %cmp5447.i = icmp sgt i32 %354, 0, !dbg !1030
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i324}, i64 0, metadata !1025) #5, !dbg !1032
  %add.ptr3.sum.i = add i64 %add.ptr.sum.i329, %idx.ext.i328, !dbg !1032
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i321}, i64 0, metadata !1024) #5, !dbg !1022
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i326}, i64 0, metadata !1033) #5, !dbg !1034
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i326}, i64 0, metadata !286), !dbg !1034
  %355 = load i32** %sizesA.i326, align 8, !dbg !1034, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i325}, i64 0, metadata !1036) #5, !dbg !1037
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i325}, i64 0, metadata !285), !dbg !1037
  %356 = load i32** %firstlocsA.i325, align 8, !dbg !1037, !tbaa !447
  call void @llvm.dbg.value(metadata !{double** %entriesA.i317}, i64 0, metadata !1039) #5, !dbg !1040
  call void @llvm.dbg.value(metadata !{double** %entriesA.i317}, i64 0, metadata !269), !dbg !1040
  %357 = load double** %entriesA.i317, align 8, !dbg !1040, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i323}, i64 0, metadata !1029) #5, !dbg !1030
  br label %for.body.i331, !dbg !1022

for.body.i331:                                    ; preds = %for.end83.i, %for.body.lr.ph.i330
  %jcolB.0455.i = phi i32 [ 0, %for.body.lr.ph.i330 ], [ %add88.i, %for.end83.i ]
  %colB0.0453.i = phi double* [ %351, %for.body.lr.ph.i330 ], [ %add.ptr86.i, %for.end83.i ]
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i324}, i64 0, metadata !1025) #5, !dbg !1026
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1043) #5, !dbg !1030
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1044) #5, !dbg !1030
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i323}, i64 0, metadata !1029) #5, !dbg !1030
  br i1 %cmp5447.i, label %for.body6.i334, label %for.end83.i, !dbg !1030

for.body6.i334:                                   ; preds = %for.body.i331, %for.inc81.i
  %indvars.iv476.i = phi i64 [ %indvars.iv.next477.i, %for.inc81.i ], [ 0, %for.body.i331 ]
  %kk.0450.i = phi i32 [ %kk.2.i367, %for.inc81.i ], [ 0, %for.body.i331 ]
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i326}, i64 0, metadata !1033) #5, !dbg !1034
  %arrayidx.i332 = getelementptr inbounds i32* %355, i64 %indvars.iv476.i, !dbg !1034
  %358 = load i32* %arrayidx.i332, align 4, !dbg !1034, !tbaa !452
  %cmp7.i333 = icmp sgt i32 %358, 0, !dbg !1034
  br i1 %cmp7.i333, label %if.then.i338, label %for.inc81.i, !dbg !1034

if.then.i338:                                     ; preds = %for.body6.i334
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i325}, i64 0, metadata !1036) #5, !dbg !1037
  %arrayidx9.i335 = getelementptr inbounds i32* %356, i64 %indvars.iv476.i, !dbg !1037
  %359 = load i32* %arrayidx9.i335, align 4, !dbg !1037, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %359}, i64 0, metadata !1045) #5, !dbg !1037
  %add.i336 = add i32 %358, -1, !dbg !1046
  %sub12.i337 = add i32 %add.i336, %359, !dbg !1046
  call void @llvm.dbg.value(metadata !{i32 %sub12.i337}, i64 0, metadata !1047) #5, !dbg !1046
  call void @llvm.dbg.value(metadata !505, i64 0, metadata !1048) #5, !dbg !1049
  call void @llvm.dbg.value(metadata !505, i64 0, metadata !1050) #5, !dbg !1049
  call void @llvm.dbg.value(metadata !505, i64 0, metadata !1051) #5, !dbg !1052
  call void @llvm.dbg.value(metadata !505, i64 0, metadata !1053) #5, !dbg !1052
  call void @llvm.dbg.value(metadata !505, i64 0, metadata !1054) #5, !dbg !1055
  call void @llvm.dbg.value(metadata !505, i64 0, metadata !1056) #5, !dbg !1055
  call void @llvm.dbg.value(metadata !{i32 %359}, i64 0, metadata !1057) #5, !dbg !1058
  %cmp14431.i = icmp sgt i32 %359, %sub12.i337, !dbg !1058
  br i1 %cmp14431.i, label %for.end.i366, label %for.body15.lr.ph.i, !dbg !1058

for.body15.lr.ph.i:                               ; preds = %if.then.i338
  %360 = sext i32 %kk.0450.i to i64
  %361 = sext i32 %359 to i64, !dbg !1058
  br label %for.body15.i, !dbg !1058

for.body15.i:                                     ; preds = %for.body15.i, %for.body15.lr.ph.i
  %indvars.iv473.i = phi i64 [ %indvars.iv.next474.i, %for.body15.i ], [ %361, %for.body15.lr.ph.i ], !dbg !1058
  %indvars.iv471.i = phi i64 [ %indvars.iv.next472.i, %for.body15.i ], [ %360, %for.body15.lr.ph.i ]
  %rsum2.0437.i = phi double [ %add55.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %rsum1.0436.i = phi double [ %add47.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %rsum0.0435.i = phi double [ %add39.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %isum2.0434.i = phi double [ %add59.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %isum1.0433.i = phi double [ %add51.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %isum0.0432.i = phi double [ %add43.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %362 = trunc i64 %indvars.iv471.i to i32, !dbg !1059
  %mul16.i = shl nsw i32 %362, 1, !dbg !1059
  call void @llvm.dbg.value(metadata !{i32 %mul16.i}, i64 0, metadata !1060) #5, !dbg !1059
  %add17397.i = or i32 %mul16.i, 1, !dbg !1061
  call void @llvm.dbg.value(metadata !{i32 %add17397.i}, i64 0, metadata !1062) #5, !dbg !1061
  %idxprom18.i339 = sext i32 %mul16.i to i64, !dbg !1040
  call void @llvm.dbg.value(metadata !{double** %entriesA.i317}, i64 0, metadata !1039) #5, !dbg !1040
  %arrayidx19.i340 = getelementptr inbounds double* %357, i64 %idxprom18.i339, !dbg !1040
  %363 = load double* %arrayidx19.i340, align 8, !dbg !1040, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %363}, i64 0, metadata !1063) #5, !dbg !1040
  %idxprom20.i = sext i32 %add17397.i to i64, !dbg !1064
  %arrayidx21.i341 = getelementptr inbounds double* %357, i64 %idxprom20.i, !dbg !1064
  %364 = load double* %arrayidx21.i341, align 8, !dbg !1064, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %364}, i64 0, metadata !1065) #5, !dbg !1064
  %365 = trunc i64 %indvars.iv473.i to i32, !dbg !1066
  %mul22.i342 = shl nsw i32 %365, 1, !dbg !1066
  call void @llvm.dbg.value(metadata !{i32 %mul22.i342}, i64 0, metadata !1060) #5, !dbg !1066
  %add23398.i = or i32 %mul22.i342, 1, !dbg !1067
  call void @llvm.dbg.value(metadata !{i32 %add23398.i}, i64 0, metadata !1062) #5, !dbg !1067
  %idxprom24.i = sext i32 %mul22.i342 to i64, !dbg !1068
  %arrayidx25.i343 = getelementptr inbounds double* %colB0.0453.i, i64 %idxprom24.i, !dbg !1068
  %366 = load double* %arrayidx25.i343, align 8, !dbg !1068, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %366}, i64 0, metadata !1069) #5, !dbg !1068
  %idxprom26.i = sext i32 %add23398.i to i64, !dbg !1068
  %arrayidx27.i344 = getelementptr inbounds double* %colB0.0453.i, i64 %idxprom26.i, !dbg !1068
  %367 = load double* %arrayidx27.i344, align 8, !dbg !1068, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %367}, i64 0, metadata !1070) #5, !dbg !1068
  %add.ptr.sum399.i = add i64 %idxprom24.i, %idx.ext.i328, !dbg !1071
  %arrayidx29.i345 = getelementptr inbounds double* %colB0.0453.i, i64 %add.ptr.sum399.i, !dbg !1071
  %368 = load double* %arrayidx29.i345, align 8, !dbg !1071, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %368}, i64 0, metadata !1072) #5, !dbg !1071
  %add.ptr.sum400.i = add i64 %idxprom26.i, %idx.ext.i328, !dbg !1071
  %arrayidx31.i346 = getelementptr inbounds double* %colB0.0453.i, i64 %add.ptr.sum400.i, !dbg !1071
  %369 = load double* %arrayidx31.i346, align 8, !dbg !1071, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %369}, i64 0, metadata !1073) #5, !dbg !1071
  %add.ptr3.sum401.i = add i64 %idxprom24.i, %add.ptr.sum.i329, !dbg !1074
  %arrayidx33.i347 = getelementptr inbounds double* %colB0.0453.i, i64 %add.ptr3.sum401.i, !dbg !1074
  %370 = load double* %arrayidx33.i347, align 8, !dbg !1074, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %370}, i64 0, metadata !1075) #5, !dbg !1074
  %add.ptr3.sum402.i = add i64 %idxprom26.i, %add.ptr.sum.i329, !dbg !1074
  %arrayidx35.i348 = getelementptr inbounds double* %colB0.0453.i, i64 %add.ptr3.sum402.i, !dbg !1074
  %371 = load double* %arrayidx35.i348, align 8, !dbg !1074, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %371}, i64 0, metadata !1076) #5, !dbg !1074
  %mul36.i = fmul double %363, %366, !dbg !1077
  %mul37.i349 = fmul double %364, %367, !dbg !1077
  %sub38.i350 = fsub double %mul36.i, %mul37.i349, !dbg !1077
  %add39.i = fadd double %rsum0.0435.i, %sub38.i350, !dbg !1077
  call void @llvm.dbg.value(metadata !{double %add39.i}, i64 0, metadata !1050) #5, !dbg !1077
  %mul40.i = fmul double %363, %367, !dbg !1077
  %mul41.i = fmul double %364, %366, !dbg !1077
  %add42.i351 = fadd double %mul41.i, %mul40.i, !dbg !1077
  %add43.i = fadd double %isum0.0432.i, %add42.i351, !dbg !1077
  call void @llvm.dbg.value(metadata !{double %add43.i}, i64 0, metadata !1048) #5, !dbg !1077
  %mul44.i = fmul double %363, %368, !dbg !1078
  %mul45.i352 = fmul double %364, %369, !dbg !1078
  %sub46.i = fsub double %mul44.i, %mul45.i352, !dbg !1078
  %add47.i = fadd double %rsum1.0436.i, %sub46.i, !dbg !1078
  call void @llvm.dbg.value(metadata !{double %add47.i}, i64 0, metadata !1053) #5, !dbg !1078
  %mul48.i353 = fmul double %363, %369, !dbg !1078
  %mul49.i = fmul double %364, %368, !dbg !1078
  %add50.i = fadd double %mul49.i, %mul48.i353, !dbg !1078
  %add51.i = fadd double %isum1.0433.i, %add50.i, !dbg !1078
  call void @llvm.dbg.value(metadata !{double %add51.i}, i64 0, metadata !1051) #5, !dbg !1078
  %mul52.i354 = fmul double %363, %370, !dbg !1079
  %mul53.i355 = fmul double %364, %371, !dbg !1079
  %sub54.i = fsub double %mul52.i354, %mul53.i355, !dbg !1079
  %add55.i = fadd double %rsum2.0437.i, %sub54.i, !dbg !1079
  call void @llvm.dbg.value(metadata !{double %add55.i}, i64 0, metadata !1056) #5, !dbg !1079
  %mul56.i = fmul double %363, %371, !dbg !1079
  %mul57.i = fmul double %364, %370, !dbg !1079
  %add58.i = fadd double %mul57.i, %mul56.i, !dbg !1079
  %add59.i = fadd double %isum2.0434.i, %add58.i, !dbg !1079
  call void @llvm.dbg.value(metadata !{double %add59.i}, i64 0, metadata !1054) #5, !dbg !1079
  %indvars.iv.next474.i = add i64 %indvars.iv473.i, 1, !dbg !1058
  %indvars.iv.next472.i = add i64 %indvars.iv471.i, 1, !dbg !1058
  %cmp14.i356 = icmp slt i32 %365, %sub12.i337, !dbg !1058
  br i1 %cmp14.i356, label %for.body15.i, label %for.cond13.for.end_crit_edge.i, !dbg !1058

for.cond13.for.end_crit_edge.i:                   ; preds = %for.body15.i
  %372 = add i32 %358, %kk.0450.i, !dbg !1058
  br label %for.end.i366, !dbg !1058

for.end.i366:                                     ; preds = %for.cond13.for.end_crit_edge.i, %if.then.i338
  %kk.1.lcssa.i357 = phi i32 [ %372, %for.cond13.for.end_crit_edge.i ], [ %kk.0450.i, %if.then.i338 ]
  %rsum2.0.lcssa.i = phi double [ %add55.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i338 ]
  %rsum1.0.lcssa.i = phi double [ %add47.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i338 ]
  %rsum0.0.lcssa.i = phi double [ %add39.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i338 ]
  %isum2.0.lcssa.i = phi double [ %add59.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i338 ]
  %isum1.0.lcssa.i = phi double [ %add51.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i338 ]
  %isum0.0.lcssa.i = phi double [ %add43.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i338 ]
  %373 = trunc i64 %indvars.iv476.i to i32, !dbg !1080
  %mul61.i = shl nsw i32 %373, 1, !dbg !1080
  call void @llvm.dbg.value(metadata !{i32 %mul61.i}, i64 0, metadata !1060) #5, !dbg !1080
  %add62392.i = or i32 %mul61.i, 1, !dbg !1081
  call void @llvm.dbg.value(metadata !{i32 %add62392.i}, i64 0, metadata !1062) #5, !dbg !1081
  %idxprom63.i = sext i32 %mul61.i to i64, !dbg !1082
  %arrayidx64.i358 = getelementptr inbounds double* %colB0.0453.i, i64 %idxprom63.i, !dbg !1082
  %374 = load double* %arrayidx64.i358, align 8, !dbg !1082, !tbaa !512
  %sub65.i = fsub double %374, %rsum0.0.lcssa.i, !dbg !1082
  store double %sub65.i, double* %arrayidx64.i358, align 8, !dbg !1082, !tbaa !512
  %idxprom66.i359 = sext i32 %add62392.i to i64, !dbg !1082
  %arrayidx67.i360 = getelementptr inbounds double* %colB0.0453.i, i64 %idxprom66.i359, !dbg !1082
  %375 = load double* %arrayidx67.i360, align 8, !dbg !1082, !tbaa !512
  %sub68.i361 = fsub double %375, %isum0.0.lcssa.i, !dbg !1082
  store double %sub68.i361, double* %arrayidx67.i360, align 8, !dbg !1082, !tbaa !512
  %add.ptr.sum393.i = add i64 %idxprom63.i, %idx.ext.i328, !dbg !1083
  %arrayidx70.i362 = getelementptr inbounds double* %colB0.0453.i, i64 %add.ptr.sum393.i, !dbg !1083
  %376 = load double* %arrayidx70.i362, align 8, !dbg !1083, !tbaa !512
  %sub71.i = fsub double %376, %rsum1.0.lcssa.i, !dbg !1083
  store double %sub71.i, double* %arrayidx70.i362, align 8, !dbg !1083, !tbaa !512
  %add.ptr.sum394.i = add i64 %idxprom66.i359, %idx.ext.i328, !dbg !1083
  %arrayidx73.i = getelementptr inbounds double* %colB0.0453.i, i64 %add.ptr.sum394.i, !dbg !1083
  %377 = load double* %arrayidx73.i, align 8, !dbg !1083, !tbaa !512
  %sub74.i = fsub double %377, %isum1.0.lcssa.i, !dbg !1083
  store double %sub74.i, double* %arrayidx73.i, align 8, !dbg !1083, !tbaa !512
  %add.ptr3.sum395.i = add i64 %idxprom63.i, %add.ptr.sum.i329, !dbg !1084
  %arrayidx76.i363 = getelementptr inbounds double* %colB0.0453.i, i64 %add.ptr3.sum395.i, !dbg !1084
  %378 = load double* %arrayidx76.i363, align 8, !dbg !1084, !tbaa !512
  %sub77.i = fsub double %378, %rsum2.0.lcssa.i, !dbg !1084
  store double %sub77.i, double* %arrayidx76.i363, align 8, !dbg !1084, !tbaa !512
  %add.ptr3.sum396.i = add i64 %idxprom66.i359, %add.ptr.sum.i329, !dbg !1084
  %arrayidx79.i364 = getelementptr inbounds double* %colB0.0453.i, i64 %add.ptr3.sum396.i, !dbg !1084
  %379 = load double* %arrayidx79.i364, align 8, !dbg !1084, !tbaa !512
  %sub80.i365 = fsub double %379, %isum2.0.lcssa.i, !dbg !1084
  store double %sub80.i365, double* %arrayidx79.i364, align 8, !dbg !1084, !tbaa !512
  br label %for.inc81.i, !dbg !1085

for.inc81.i:                                      ; preds = %for.end.i366, %for.body6.i334
  %kk.2.i367 = phi i32 [ %kk.1.lcssa.i357, %for.end.i366 ], [ %kk.0450.i, %for.body6.i334 ]
  %indvars.iv.next477.i = add i64 %indvars.iv476.i, 1, !dbg !1030
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i323}, i64 0, metadata !1029) #5, !dbg !1030
  %lftr.wideiv1151 = trunc i64 %indvars.iv.next477.i to i32, !dbg !1030
  %exitcond1152 = icmp eq i32 %lftr.wideiv1151, %354, !dbg !1030
  br i1 %exitcond1152, label %for.end83.i, label %for.body6.i334, !dbg !1030

for.end83.i:                                      ; preds = %for.inc81.i, %for.body.i331
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i324}, i64 0, metadata !1025) #5, !dbg !1032
  %add.ptr86.i = getelementptr inbounds double* %colB0.0453.i, i64 %add.ptr3.sum.i, !dbg !1032
  call void @llvm.dbg.value(metadata !{double* %add.ptr86.i}, i64 0, metadata !1020) #5, !dbg !1032
  %add88.i = add nsw i32 %jcolB.0455.i, 3, !dbg !1022
  call void @llvm.dbg.value(metadata !{i32 %add88.i}, i64 0, metadata !1021) #5, !dbg !1022
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i321}, i64 0, metadata !1024) #5, !dbg !1022
  %cmp.i369 = icmp slt i32 %add88.i, %sub451.i, !dbg !1022
  br i1 %cmp.i369, label %for.body.i331, label %for.end89.i, !dbg !1022

for.end89.i:                                      ; preds = %for.end83.i, %sw.bb26
  %jcolB.0.lcssa.i370 = phi i32 [ 0, %sw.bb26 ], [ %add88.i, %for.end83.i ]
  %colB0.0.lcssa.i371 = phi double* [ %351, %sw.bb26 ], [ %add.ptr86.i, %for.end83.i ]
  %cmp91.i372 = icmp eq i32 %jcolB.0.lcssa.i370, %sub451.i, !dbg !1086
  br i1 %cmp91.i372, label %if.then92.i, label %if.else.i387, !dbg !1086

if.then92.i:                                      ; preds = %for.end89.i
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i324}, i64 0, metadata !1025) #5, !dbg !1087
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i324}, i64 0, metadata !283), !dbg !1087
  %380 = load i32* %nrowB.i324, align 4, !dbg !1087, !tbaa !452
  %mul93.i373 = shl nsw i32 %380, 1, !dbg !1087
  %idx.ext94.i = sext i32 %mul93.i373 to i64, !dbg !1087
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1043) #5, !dbg !1089
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1044) #5, !dbg !1089
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i323}, i64 0, metadata !1029) #5, !dbg !1089
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i323}, i64 0, metadata !282), !dbg !1089
  %381 = load i32* %nrowA.i323, align 4, !dbg !1089, !tbaa !452
  %cmp97414.i = icmp sgt i32 %381, 0, !dbg !1089
  br i1 %cmp97414.i, label %for.body98.lr.ph.i, label %sw.epilog41, !dbg !1089

for.body98.lr.ph.i:                               ; preds = %if.then92.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i326}, i64 0, metadata !1033) #5, !dbg !1091
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i326}, i64 0, metadata !286), !dbg !1091
  %382 = load i32** %sizesA.i326, align 8, !dbg !1091, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i325}, i64 0, metadata !1036) #5, !dbg !1093
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i325}, i64 0, metadata !285), !dbg !1093
  %383 = load i32** %firstlocsA.i325, align 8, !dbg !1093, !tbaa !447
  call void @llvm.dbg.value(metadata !{double** %entriesA.i317}, i64 0, metadata !1039) #5, !dbg !1095
  call void @llvm.dbg.value(metadata !{double** %entriesA.i317}, i64 0, metadata !269), !dbg !1095
  %384 = load double** %entriesA.i317, align 8, !dbg !1095, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i323}, i64 0, metadata !1029) #5, !dbg !1089
  br label %for.body98.i, !dbg !1089

for.body98.i:                                     ; preds = %for.inc163.i, %for.body98.lr.ph.i
  %indvars.iv462.i = phi i64 [ 0, %for.body98.lr.ph.i ], [ %indvars.iv.next463.i, %for.inc163.i ]
  %kk.3417.i = phi i32 [ 0, %for.body98.lr.ph.i ], [ %kk.5.i386, %for.inc163.i ]
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i326}, i64 0, metadata !1033) #5, !dbg !1091
  %arrayidx100.i = getelementptr inbounds i32* %382, i64 %indvars.iv462.i, !dbg !1091
  %385 = load i32* %arrayidx100.i, align 4, !dbg !1091, !tbaa !452
  %cmp101.i = icmp sgt i32 %385, 0, !dbg !1091
  br i1 %cmp101.i, label %if.then102.i, label %for.inc163.i, !dbg !1091

if.then102.i:                                     ; preds = %for.body98.i
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i325}, i64 0, metadata !1036) #5, !dbg !1093
  %arrayidx104.i374 = getelementptr inbounds i32* %383, i64 %indvars.iv462.i, !dbg !1093
  %386 = load i32* %arrayidx104.i374, align 4, !dbg !1093, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %386}, i64 0, metadata !1045) #5, !dbg !1093
  %add107.i = add i32 %385, -1, !dbg !1098
  %sub108.i = add i32 %add107.i, %386, !dbg !1098
  call void @llvm.dbg.value(metadata !{i32 %sub108.i}, i64 0, metadata !1047) #5, !dbg !1098
  call void @llvm.dbg.value(metadata !505, i64 0, metadata !1048) #5, !dbg !1099
  call void @llvm.dbg.value(metadata !505, i64 0, metadata !1050) #5, !dbg !1099
  call void @llvm.dbg.value(metadata !505, i64 0, metadata !1051) #5, !dbg !1100
  call void @llvm.dbg.value(metadata !505, i64 0, metadata !1053) #5, !dbg !1100
  call void @llvm.dbg.value(metadata !{i32 %386}, i64 0, metadata !1057) #5, !dbg !1101
  %cmp110403.i = icmp sgt i32 %386, %sub108.i, !dbg !1101
  br i1 %cmp110403.i, label %for.end147.i, label %for.body111.lr.ph.i, !dbg !1101

for.body111.lr.ph.i:                              ; preds = %if.then102.i
  %387 = sext i32 %kk.3417.i to i64
  %388 = sext i32 %386 to i64, !dbg !1101
  br label %for.body111.i, !dbg !1101

for.body111.i:                                    ; preds = %for.body111.i, %for.body111.lr.ph.i
  %indvars.iv460.i375 = phi i64 [ %indvars.iv.next461.i382, %for.body111.i ], [ %388, %for.body111.lr.ph.i ], !dbg !1101
  %indvars.iv.i376 = phi i64 [ %indvars.iv.next.i383, %for.body111.i ], [ %387, %for.body111.lr.ph.i ]
  %rsum1.1407.i = phi double [ %add139.i, %for.body111.i ], [ 0.000000e+00, %for.body111.lr.ph.i ]
  %rsum0.1406.i = phi double [ %add131.i, %for.body111.i ], [ 0.000000e+00, %for.body111.lr.ph.i ]
  %isum1.1405.i = phi double [ %add143.i, %for.body111.i ], [ 0.000000e+00, %for.body111.lr.ph.i ]
  %isum0.1404.i = phi double [ %add135.i, %for.body111.i ], [ 0.000000e+00, %for.body111.lr.ph.i ]
  %389 = trunc i64 %indvars.iv.i376 to i32, !dbg !1102
  %mul112.i377 = shl nsw i32 %389, 1, !dbg !1102
  call void @llvm.dbg.value(metadata !{i32 %mul112.i377}, i64 0, metadata !1060) #5, !dbg !1102
  %add113388.i = or i32 %mul112.i377, 1, !dbg !1103
  call void @llvm.dbg.value(metadata !{i32 %add113388.i}, i64 0, metadata !1062) #5, !dbg !1103
  %idxprom114.i = sext i32 %mul112.i377 to i64, !dbg !1095
  call void @llvm.dbg.value(metadata !{double** %entriesA.i317}, i64 0, metadata !1039) #5, !dbg !1095
  %arrayidx115.i = getelementptr inbounds double* %384, i64 %idxprom114.i, !dbg !1095
  %390 = load double* %arrayidx115.i, align 8, !dbg !1095, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %390}, i64 0, metadata !1063) #5, !dbg !1095
  %idxprom116.i = sext i32 %add113388.i to i64, !dbg !1104
  %arrayidx117.i378 = getelementptr inbounds double* %384, i64 %idxprom116.i, !dbg !1104
  %391 = load double* %arrayidx117.i378, align 8, !dbg !1104, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %391}, i64 0, metadata !1065) #5, !dbg !1104
  %392 = trunc i64 %indvars.iv460.i375 to i32, !dbg !1105
  %mul118.i = shl nsw i32 %392, 1, !dbg !1105
  call void @llvm.dbg.value(metadata !{i32 %mul118.i}, i64 0, metadata !1060) #5, !dbg !1105
  %add119389.i = or i32 %mul118.i, 1, !dbg !1106
  call void @llvm.dbg.value(metadata !{i32 %add119389.i}, i64 0, metadata !1062) #5, !dbg !1106
  %idxprom120.i = sext i32 %mul118.i to i64, !dbg !1107
  %arrayidx121.i379 = getelementptr inbounds double* %colB0.0.lcssa.i371, i64 %idxprom120.i, !dbg !1107
  %393 = load double* %arrayidx121.i379, align 8, !dbg !1107, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %393}, i64 0, metadata !1069) #5, !dbg !1107
  %idxprom122.i = sext i32 %add119389.i to i64, !dbg !1107
  %arrayidx123.i = getelementptr inbounds double* %colB0.0.lcssa.i371, i64 %idxprom122.i, !dbg !1107
  %394 = load double* %arrayidx123.i, align 8, !dbg !1107, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %394}, i64 0, metadata !1070) #5, !dbg !1107
  %add.ptr95.sum390.i = add i64 %idxprom120.i, %idx.ext94.i, !dbg !1108
  %arrayidx125.i = getelementptr inbounds double* %colB0.0.lcssa.i371, i64 %add.ptr95.sum390.i, !dbg !1108
  %395 = load double* %arrayidx125.i, align 8, !dbg !1108, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %395}, i64 0, metadata !1072) #5, !dbg !1108
  %add.ptr95.sum391.i = add i64 %idxprom122.i, %idx.ext94.i, !dbg !1108
  %arrayidx127.i380 = getelementptr inbounds double* %colB0.0.lcssa.i371, i64 %add.ptr95.sum391.i, !dbg !1108
  %396 = load double* %arrayidx127.i380, align 8, !dbg !1108, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %396}, i64 0, metadata !1073) #5, !dbg !1108
  %mul128.i = fmul double %390, %393, !dbg !1109
  %mul129.i = fmul double %391, %394, !dbg !1109
  %sub130.i = fsub double %mul128.i, %mul129.i, !dbg !1109
  %add131.i = fadd double %rsum0.1406.i, %sub130.i, !dbg !1109
  call void @llvm.dbg.value(metadata !{double %add131.i}, i64 0, metadata !1050) #5, !dbg !1109
  %mul132.i = fmul double %390, %394, !dbg !1109
  %mul133.i = fmul double %391, %393, !dbg !1109
  %add134.i = fadd double %mul133.i, %mul132.i, !dbg !1109
  %add135.i = fadd double %isum0.1404.i, %add134.i, !dbg !1109
  call void @llvm.dbg.value(metadata !{double %add135.i}, i64 0, metadata !1048) #5, !dbg !1109
  %mul136.i = fmul double %390, %395, !dbg !1110
  %mul137.i = fmul double %391, %396, !dbg !1110
  %sub138.i = fsub double %mul136.i, %mul137.i, !dbg !1110
  %add139.i = fadd double %rsum1.1407.i, %sub138.i, !dbg !1110
  call void @llvm.dbg.value(metadata !{double %add139.i}, i64 0, metadata !1053) #5, !dbg !1110
  %mul140.i = fmul double %390, %396, !dbg !1110
  %mul141.i381 = fmul double %391, %395, !dbg !1110
  %add142.i = fadd double %mul141.i381, %mul140.i, !dbg !1110
  %add143.i = fadd double %isum1.1405.i, %add142.i, !dbg !1110
  call void @llvm.dbg.value(metadata !{double %add143.i}, i64 0, metadata !1051) #5, !dbg !1110
  %indvars.iv.next461.i382 = add i64 %indvars.iv460.i375, 1, !dbg !1101
  %indvars.iv.next.i383 = add i64 %indvars.iv.i376, 1, !dbg !1101
  %cmp110.i = icmp slt i32 %392, %sub108.i, !dbg !1101
  br i1 %cmp110.i, label %for.body111.i, label %for.cond109.for.end147_crit_edge.i, !dbg !1101

for.cond109.for.end147_crit_edge.i:               ; preds = %for.body111.i
  %397 = add i32 %385, %kk.3417.i, !dbg !1101
  br label %for.end147.i, !dbg !1101

for.end147.i:                                     ; preds = %for.cond109.for.end147_crit_edge.i, %if.then102.i
  %kk.4.lcssa.i384 = phi i32 [ %397, %for.cond109.for.end147_crit_edge.i ], [ %kk.3417.i, %if.then102.i ]
  %rsum1.1.lcssa.i = phi double [ %add139.i, %for.cond109.for.end147_crit_edge.i ], [ 0.000000e+00, %if.then102.i ]
  %rsum0.1.lcssa.i = phi double [ %add131.i, %for.cond109.for.end147_crit_edge.i ], [ 0.000000e+00, %if.then102.i ]
  %isum1.1.lcssa.i = phi double [ %add143.i, %for.cond109.for.end147_crit_edge.i ], [ 0.000000e+00, %if.then102.i ]
  %isum0.1.lcssa.i = phi double [ %add135.i, %for.cond109.for.end147_crit_edge.i ], [ 0.000000e+00, %if.then102.i ]
  %398 = trunc i64 %indvars.iv462.i to i32, !dbg !1111
  %mul148.i = shl nsw i32 %398, 1, !dbg !1111
  call void @llvm.dbg.value(metadata !{i32 %mul148.i}, i64 0, metadata !1060) #5, !dbg !1111
  %add149386.i = or i32 %mul148.i, 1, !dbg !1112
  call void @llvm.dbg.value(metadata !{i32 %add149386.i}, i64 0, metadata !1062) #5, !dbg !1112
  %idxprom150.i = sext i32 %mul148.i to i64, !dbg !1113
  %arrayidx151.i = getelementptr inbounds double* %colB0.0.lcssa.i371, i64 %idxprom150.i, !dbg !1113
  %399 = load double* %arrayidx151.i, align 8, !dbg !1113, !tbaa !512
  %sub152.i385 = fsub double %399, %rsum0.1.lcssa.i, !dbg !1113
  store double %sub152.i385, double* %arrayidx151.i, align 8, !dbg !1113, !tbaa !512
  %idxprom153.i = sext i32 %add149386.i to i64, !dbg !1113
  %arrayidx154.i = getelementptr inbounds double* %colB0.0.lcssa.i371, i64 %idxprom153.i, !dbg !1113
  %400 = load double* %arrayidx154.i, align 8, !dbg !1113, !tbaa !512
  %sub155.i = fsub double %400, %isum0.1.lcssa.i, !dbg !1113
  store double %sub155.i, double* %arrayidx154.i, align 8, !dbg !1113, !tbaa !512
  %add.ptr95.sum.i = add i64 %idxprom150.i, %idx.ext94.i, !dbg !1114
  %arrayidx157.i = getelementptr inbounds double* %colB0.0.lcssa.i371, i64 %add.ptr95.sum.i, !dbg !1114
  %401 = load double* %arrayidx157.i, align 8, !dbg !1114, !tbaa !512
  %sub158.i = fsub double %401, %rsum1.1.lcssa.i, !dbg !1114
  store double %sub158.i, double* %arrayidx157.i, align 8, !dbg !1114, !tbaa !512
  %add.ptr95.sum387.i = add i64 %idxprom153.i, %idx.ext94.i, !dbg !1114
  %arrayidx160.i = getelementptr inbounds double* %colB0.0.lcssa.i371, i64 %add.ptr95.sum387.i, !dbg !1114
  %402 = load double* %arrayidx160.i, align 8, !dbg !1114, !tbaa !512
  %sub161.i = fsub double %402, %isum1.1.lcssa.i, !dbg !1114
  store double %sub161.i, double* %arrayidx160.i, align 8, !dbg !1114, !tbaa !512
  br label %for.inc163.i, !dbg !1115

for.inc163.i:                                     ; preds = %for.end147.i, %for.body98.i
  %kk.5.i386 = phi i32 [ %kk.4.lcssa.i384, %for.end147.i ], [ %kk.3417.i, %for.body98.i ]
  %indvars.iv.next463.i = add i64 %indvars.iv462.i, 1, !dbg !1089
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i323}, i64 0, metadata !1029) #5, !dbg !1089
  %lftr.wideiv1147 = trunc i64 %indvars.iv.next463.i to i32, !dbg !1089
  %exitcond1148 = icmp eq i32 %lftr.wideiv1147, %381, !dbg !1089
  br i1 %exitcond1148, label %sw.epilog41, label %for.body98.i, !dbg !1089

if.else.i387:                                     ; preds = %for.end89.i
  %sub166.i = add nsw i32 %352, -1, !dbg !1116
  %cmp167.i = icmp eq i32 %jcolB.0.lcssa.i370, %sub166.i, !dbg !1116
  br i1 %cmp167.i, label %for.cond169.preheader.i, label %sw.epilog41, !dbg !1116

for.cond169.preheader.i:                          ; preds = %if.else.i387
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i323}, i64 0, metadata !1029) #5, !dbg !1117
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i323}, i64 0, metadata !282), !dbg !1117
  %403 = load i32* %nrowA.i323, align 4, !dbg !1117, !tbaa !452
  %cmp170427.i = icmp sgt i32 %403, 0, !dbg !1117
  br i1 %cmp170427.i, label %for.body171.lr.ph.i, label %sw.epilog41, !dbg !1117

for.body171.lr.ph.i:                              ; preds = %for.cond169.preheader.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i326}, i64 0, metadata !1033) #5, !dbg !1120
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i326}, i64 0, metadata !286), !dbg !1120
  %404 = load i32** %sizesA.i326, align 8, !dbg !1120, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i325}, i64 0, metadata !1036) #5, !dbg !1122
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i325}, i64 0, metadata !285), !dbg !1122
  %405 = load i32** %firstlocsA.i325, align 8, !dbg !1122, !tbaa !447
  call void @llvm.dbg.value(metadata !{double** %entriesA.i317}, i64 0, metadata !1039) #5, !dbg !1124
  call void @llvm.dbg.value(metadata !{double** %entriesA.i317}, i64 0, metadata !269), !dbg !1124
  %406 = load double** %entriesA.i317, align 8, !dbg !1124, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i323}, i64 0, metadata !1029) #5, !dbg !1117
  br label %for.body171.i, !dbg !1117

for.body171.i:                                    ; preds = %for.inc218.i, %for.body171.lr.ph.i
  %indvars.iv469.i = phi i64 [ 0, %for.body171.lr.ph.i ], [ %indvars.iv.next470.i, %for.inc218.i ]
  %kk.6430.i = phi i32 [ 0, %for.body171.lr.ph.i ], [ %kk.8.i389, %for.inc218.i ]
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i326}, i64 0, metadata !1033) #5, !dbg !1120
  %arrayidx173.i = getelementptr inbounds i32* %404, i64 %indvars.iv469.i, !dbg !1120
  %407 = load i32* %arrayidx173.i, align 4, !dbg !1120, !tbaa !452
  %cmp174.i = icmp sgt i32 %407, 0, !dbg !1120
  br i1 %cmp174.i, label %if.then175.i, label %for.inc218.i, !dbg !1120

if.then175.i:                                     ; preds = %for.body171.i
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i325}, i64 0, metadata !1036) #5, !dbg !1122
  %arrayidx177.i = getelementptr inbounds i32* %405, i64 %indvars.iv469.i, !dbg !1122
  %408 = load i32* %arrayidx177.i, align 4, !dbg !1122, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %408}, i64 0, metadata !1045) #5, !dbg !1122
  %add180.i = add i32 %407, -1, !dbg !1127
  %sub181.i = add i32 %add180.i, %408, !dbg !1127
  call void @llvm.dbg.value(metadata !{i32 %sub181.i}, i64 0, metadata !1047) #5, !dbg !1127
  call void @llvm.dbg.value(metadata !505, i64 0, metadata !1048) #5, !dbg !1128
  call void @llvm.dbg.value(metadata !505, i64 0, metadata !1050) #5, !dbg !1128
  call void @llvm.dbg.value(metadata !{i32 %408}, i64 0, metadata !1057) #5, !dbg !1129
  %cmp183418.i = icmp sgt i32 %408, %sub181.i, !dbg !1129
  br i1 %cmp183418.i, label %for.end208.i, label %for.body184.lr.ph.i, !dbg !1129

for.body184.lr.ph.i:                              ; preds = %if.then175.i
  %409 = sext i32 %kk.6430.i to i64
  %410 = sext i32 %408 to i64, !dbg !1129
  br label %for.body184.i, !dbg !1129

for.body184.i:                                    ; preds = %for.body184.i, %for.body184.lr.ph.i
  %indvars.iv466.i = phi i64 [ %indvars.iv.next467.i, %for.body184.i ], [ %410, %for.body184.lr.ph.i ], !dbg !1129
  %indvars.iv464.i = phi i64 [ %indvars.iv.next465.i, %for.body184.i ], [ %409, %for.body184.lr.ph.i ]
  %rsum0.2420.i = phi double [ %add200.i, %for.body184.i ], [ 0.000000e+00, %for.body184.lr.ph.i ]
  %isum0.2419.i = phi double [ %add204.i, %for.body184.i ], [ 0.000000e+00, %for.body184.lr.ph.i ]
  %411 = trunc i64 %indvars.iv464.i to i32, !dbg !1130
  %mul185.i = shl nsw i32 %411, 1, !dbg !1130
  call void @llvm.dbg.value(metadata !{i32 %mul185.i}, i64 0, metadata !1060) #5, !dbg !1130
  %add186384.i = or i32 %mul185.i, 1, !dbg !1131
  call void @llvm.dbg.value(metadata !{i32 %add186384.i}, i64 0, metadata !1062) #5, !dbg !1131
  %idxprom187.i = sext i32 %mul185.i to i64, !dbg !1124
  call void @llvm.dbg.value(metadata !{double** %entriesA.i317}, i64 0, metadata !1039) #5, !dbg !1124
  %arrayidx188.i = getelementptr inbounds double* %406, i64 %idxprom187.i, !dbg !1124
  %412 = load double* %arrayidx188.i, align 8, !dbg !1124, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %412}, i64 0, metadata !1063) #5, !dbg !1124
  %idxprom189.i = sext i32 %add186384.i to i64, !dbg !1132
  %arrayidx190.i = getelementptr inbounds double* %406, i64 %idxprom189.i, !dbg !1132
  %413 = load double* %arrayidx190.i, align 8, !dbg !1132, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %413}, i64 0, metadata !1065) #5, !dbg !1132
  %414 = trunc i64 %indvars.iv466.i to i32, !dbg !1133
  %mul191.i = shl nsw i32 %414, 1, !dbg !1133
  call void @llvm.dbg.value(metadata !{i32 %mul191.i}, i64 0, metadata !1060) #5, !dbg !1133
  %add192385.i = or i32 %mul191.i, 1, !dbg !1134
  call void @llvm.dbg.value(metadata !{i32 %add192385.i}, i64 0, metadata !1062) #5, !dbg !1134
  %idxprom193.i = sext i32 %mul191.i to i64, !dbg !1135
  %arrayidx194.i = getelementptr inbounds double* %colB0.0.lcssa.i371, i64 %idxprom193.i, !dbg !1135
  %415 = load double* %arrayidx194.i, align 8, !dbg !1135, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %415}, i64 0, metadata !1069) #5, !dbg !1135
  %idxprom195.i = sext i32 %add192385.i to i64, !dbg !1135
  %arrayidx196.i = getelementptr inbounds double* %colB0.0.lcssa.i371, i64 %idxprom195.i, !dbg !1135
  %416 = load double* %arrayidx196.i, align 8, !dbg !1135, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %416}, i64 0, metadata !1070) #5, !dbg !1135
  %mul197.i = fmul double %412, %415, !dbg !1136
  %mul198.i = fmul double %413, %416, !dbg !1136
  %sub199.i = fsub double %mul197.i, %mul198.i, !dbg !1136
  %add200.i = fadd double %rsum0.2420.i, %sub199.i, !dbg !1136
  call void @llvm.dbg.value(metadata !{double %add200.i}, i64 0, metadata !1050) #5, !dbg !1136
  %mul201.i = fmul double %412, %416, !dbg !1136
  %mul202.i = fmul double %413, %415, !dbg !1136
  %add203.i = fadd double %mul202.i, %mul201.i, !dbg !1136
  %add204.i = fadd double %isum0.2419.i, %add203.i, !dbg !1136
  call void @llvm.dbg.value(metadata !{double %add204.i}, i64 0, metadata !1048) #5, !dbg !1136
  %indvars.iv.next467.i = add i64 %indvars.iv466.i, 1, !dbg !1129
  %indvars.iv.next465.i = add i64 %indvars.iv464.i, 1, !dbg !1129
  %cmp183.i = icmp slt i32 %414, %sub181.i, !dbg !1129
  br i1 %cmp183.i, label %for.body184.i, label %for.cond182.for.end208_crit_edge.i, !dbg !1129

for.cond182.for.end208_crit_edge.i:               ; preds = %for.body184.i
  %417 = add i32 %407, %kk.6430.i, !dbg !1129
  br label %for.end208.i, !dbg !1129

for.end208.i:                                     ; preds = %for.cond182.for.end208_crit_edge.i, %if.then175.i
  %kk.7.lcssa.i388 = phi i32 [ %417, %for.cond182.for.end208_crit_edge.i ], [ %kk.6430.i, %if.then175.i ]
  %rsum0.2.lcssa.i = phi double [ %add200.i, %for.cond182.for.end208_crit_edge.i ], [ 0.000000e+00, %if.then175.i ]
  %isum0.2.lcssa.i = phi double [ %add204.i, %for.cond182.for.end208_crit_edge.i ], [ 0.000000e+00, %if.then175.i ]
  %418 = trunc i64 %indvars.iv469.i to i32, !dbg !1137
  %mul209.i = shl nsw i32 %418, 1, !dbg !1137
  call void @llvm.dbg.value(metadata !{i32 %mul209.i}, i64 0, metadata !1060) #5, !dbg !1137
  %add210383.i = or i32 %mul209.i, 1, !dbg !1138
  call void @llvm.dbg.value(metadata !{i32 %add210383.i}, i64 0, metadata !1062) #5, !dbg !1138
  %idxprom211.i = sext i32 %mul209.i to i64, !dbg !1139
  %arrayidx212.i = getelementptr inbounds double* %colB0.0.lcssa.i371, i64 %idxprom211.i, !dbg !1139
  %419 = load double* %arrayidx212.i, align 8, !dbg !1139, !tbaa !512
  %sub213.i = fsub double %419, %rsum0.2.lcssa.i, !dbg !1139
  store double %sub213.i, double* %arrayidx212.i, align 8, !dbg !1139, !tbaa !512
  %idxprom214.i = sext i32 %add210383.i to i64, !dbg !1139
  %arrayidx215.i = getelementptr inbounds double* %colB0.0.lcssa.i371, i64 %idxprom214.i, !dbg !1139
  %420 = load double* %arrayidx215.i, align 8, !dbg !1139, !tbaa !512
  %sub216.i = fsub double %420, %isum0.2.lcssa.i, !dbg !1139
  store double %sub216.i, double* %arrayidx215.i, align 8, !dbg !1139, !tbaa !512
  br label %for.inc218.i, !dbg !1140

for.inc218.i:                                     ; preds = %for.end208.i, %for.body171.i
  %kk.8.i389 = phi i32 [ %kk.7.lcssa.i388, %for.end208.i ], [ %kk.6430.i, %for.body171.i ]
  %indvars.iv.next470.i = add i64 %indvars.iv469.i, 1, !dbg !1117
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i323}, i64 0, metadata !1029) #5, !dbg !1117
  %lftr.wideiv1149 = trunc i64 %indvars.iv.next470.i to i32, !dbg !1117
  %exitcond1150 = icmp eq i32 %lftr.wideiv1149, %403, !dbg !1117
  br i1 %exitcond1150, label %sw.epilog41, label %for.body171.i, !dbg !1117

sw.bb27:                                          ; preds = %sw.bb24
  %421 = bitcast double** %entriesA.i390 to i8*, !dbg !1141
  call void @llvm.lifetime.start(i64 8, i8* %421) #5, !dbg !1141
  %422 = bitcast double** %entriesB.i391 to i8*, !dbg !1141
  call void @llvm.lifetime.start(i64 8, i8* %422) #5, !dbg !1141
  %423 = bitcast i32* %inc1.i392 to i8*, !dbg !1141
  call void @llvm.lifetime.start(i64 4, i8* %423) #5, !dbg !1141
  %424 = bitcast i32* %inc2.i393 to i8*, !dbg !1141
  call void @llvm.lifetime.start(i64 4, i8* %424) #5, !dbg !1141
  %425 = bitcast i32* %ncolB.i394 to i8*, !dbg !1141
  call void @llvm.lifetime.start(i64 4, i8* %425) #5, !dbg !1141
  %426 = bitcast i32* %nentA.i395 to i8*, !dbg !1141
  call void @llvm.lifetime.start(i64 4, i8* %426) #5, !dbg !1141
  %427 = bitcast i32* %nrowA.i396 to i8*, !dbg !1141
  call void @llvm.lifetime.start(i64 4, i8* %427) #5, !dbg !1141
  %428 = bitcast i32* %nrowB.i397 to i8*, !dbg !1141
  call void @llvm.lifetime.start(i64 4, i8* %428) #5, !dbg !1141
  %429 = bitcast i32** %indicesA.i398 to i8*, !dbg !1141
  call void @llvm.lifetime.start(i64 8, i8* %429) #5, !dbg !1141
  %430 = bitcast i32** %sizesA.i399 to i8*, !dbg !1141
  call void @llvm.lifetime.start(i64 8, i8* %430) #5, !dbg !1141
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !1143) #5, !dbg !1141
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxB}, i64 0, metadata !1144) #5, !dbg !1145
  call void @llvm.dbg.declare(metadata !{double** %entriesA.i390}, metadata !230) #5, !dbg !1146
  call void @llvm.dbg.declare(metadata !{double** %entriesB.i391}, metadata !231) #5, !dbg !1146
  call void @llvm.dbg.declare(metadata !{i32* %inc1.i392}, metadata !234) #5, !dbg !1147
  call void @llvm.dbg.declare(metadata !{i32* %inc2.i393}, metadata !235) #5, !dbg !1147
  call void @llvm.dbg.declare(metadata !{i32* %ncolB.i394}, metadata !240) #5, !dbg !1148
  call void @llvm.dbg.declare(metadata !{i32* %nentA.i395}, metadata !241) #5, !dbg !1148
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i396}, metadata !242) #5, !dbg !1148
  call void @llvm.dbg.declare(metadata !{i32* %nrowB.i397}, metadata !243) #5, !dbg !1148
  call void @llvm.dbg.declare(metadata !{i32** %indicesA.i398}, metadata !246) #5, !dbg !1149
  call void @llvm.dbg.declare(metadata !{i32** %sizesA.i399}, metadata !247) #5, !dbg !1149
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i396, i32* %nentA.i395, i32** %sizesA.i399, i32** %indicesA.i398, double** %entriesA.i390) #6, !dbg !1150
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i397, i32* %ncolB.i394, i32* %inc1.i392, i32* %inc2.i393, double** %entriesB.i391) #6, !dbg !1151
  call void @llvm.dbg.value(metadata !{double** %entriesB.i391}, i64 0, metadata !1152) #5, !dbg !1153
  call void @llvm.dbg.value(metadata !{double** %entriesB.i391}, i64 0, metadata !231), !dbg !1153
  %431 = load double** %entriesB.i391, align 8, !dbg !1153, !tbaa !447
  call void @llvm.dbg.value(metadata !{double* %431}, i64 0, metadata !1154) #5, !dbg !1153
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1155) #5, !dbg !1156
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i394}, i64 0, metadata !1158) #5, !dbg !1156
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i394}, i64 0, metadata !240), !dbg !1156
  %432 = load i32* %ncolB.i394, align 4, !dbg !1156, !tbaa !452
  %sub500.i = add nsw i32 %432, -2, !dbg !1156
  %cmp501.i = icmp sgt i32 %sub500.i, 0, !dbg !1156
  br i1 %cmp501.i, label %for.body.lr.ph.i404, label %for.end89.i456, !dbg !1156

for.body.lr.ph.i404:                              ; preds = %sw.bb27
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i397}, i64 0, metadata !1159) #5, !dbg !1160
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i397}, i64 0, metadata !243), !dbg !1160
  %433 = load i32* %nrowB.i397, align 4, !dbg !1160, !tbaa !452
  %mul.i400 = shl nsw i32 %433, 1, !dbg !1160
  %idx.ext.i401 = sext i32 %mul.i400 to i64, !dbg !1160
  %add.ptr.sum.i402 = shl nsw i64 %idx.ext.i401, 1, !dbg !1162
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i396}, i64 0, metadata !1163) #5, !dbg !1164
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i396}, i64 0, metadata !242), !dbg !1164
  %434 = load i32* %nrowA.i396, align 4, !dbg !1164, !tbaa !452
  %cmp5490.i = icmp sgt i32 %434, 0, !dbg !1164
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i397}, i64 0, metadata !1159) #5, !dbg !1166
  %add.ptr3.sum.i403 = add i64 %add.ptr.sum.i402, %idx.ext.i401, !dbg !1166
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i394}, i64 0, metadata !1158) #5, !dbg !1156
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i399}, i64 0, metadata !1167) #5, !dbg !1168
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i399}, i64 0, metadata !247), !dbg !1168
  %435 = load i32** %sizesA.i399, align 8, !dbg !1168, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i396}, i64 0, metadata !1163) #5, !dbg !1164
  call void @llvm.dbg.value(metadata !{double** %entriesA.i390}, i64 0, metadata !1170) #5, !dbg !1171
  call void @llvm.dbg.value(metadata !{double** %entriesA.i390}, i64 0, metadata !230), !dbg !1171
  %436 = load double** %entriesA.i390, align 8, !dbg !1171, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i398}, i64 0, metadata !1175) #5, !dbg !1176
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i398}, i64 0, metadata !246), !dbg !1176
  %437 = load i32** %indicesA.i398, align 8, !dbg !1176, !tbaa !447
  br label %for.body.i405, !dbg !1156

for.body.i405:                                    ; preds = %for.end83.i452, %for.body.lr.ph.i404
  %jcolB.0504.i = phi i32 [ 0, %for.body.lr.ph.i404 ], [ %add88.i450, %for.end83.i452 ]
  %colB0.0502.i = phi double* [ %431, %for.body.lr.ph.i404 ], [ %add.ptr86.i449, %for.end83.i452 ]
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i397}, i64 0, metadata !1159) #5, !dbg !1160
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1177) #5, !dbg !1164
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1178) #5, !dbg !1164
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i396}, i64 0, metadata !1163) #5, !dbg !1164
  br i1 %cmp5490.i, label %for.body6.i408, label %for.end83.i452, !dbg !1164

for.body6.i408:                                   ; preds = %for.body.i405, %for.inc81.i448
  %indvars.iv531.i = phi i64 [ %indvars.iv.next532.i, %for.inc81.i448 ], [ 0, %for.body.i405 ]
  %kk.0494.i = phi i32 [ %kk.2.i446, %for.inc81.i448 ], [ 0, %for.body.i405 ]
  %irowA.0491.i = phi i32 [ %inc82.i, %for.inc81.i448 ], [ 0, %for.body.i405 ]
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i399}, i64 0, metadata !1167) #5, !dbg !1168
  %arrayidx.i406 = getelementptr inbounds i32* %435, i64 %indvars.iv531.i, !dbg !1168
  %438 = load i32* %arrayidx.i406, align 4, !dbg !1168, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %438}, i64 0, metadata !1179) #5, !dbg !1168
  %cmp7.i407 = icmp sgt i32 %438, 0, !dbg !1168
  br i1 %cmp7.i407, label %for.body10.lr.ph.i, label %for.inc81.i448, !dbg !1168

for.body10.lr.ph.i:                               ; preds = %for.body6.i408
  %439 = sext i32 %kk.0494.i to i64
  %440 = trunc i64 %indvars.iv531.i to i32, !dbg !1180
  br label %for.body10.i413, !dbg !1181

for.body10.i413:                                  ; preds = %if.end.i436, %for.body10.lr.ph.i
  %indvars.iv528.i = phi i64 [ %439, %for.body10.lr.ph.i ], [ %indvars.iv.next529.i, %if.end.i436 ]
  %kk.1481.i = phi i32 [ %kk.0494.i, %for.body10.lr.ph.i ], [ %inc59.i, %if.end.i436 ]
  %ii.0480.i = phi i32 [ 0, %for.body10.lr.ph.i ], [ %inc.i434, %if.end.i436 ]
  %rsum2.0479.i = phi double [ 0.000000e+00, %for.body10.lr.ph.i ], [ %add54.i430, %if.end.i436 ]
  %rsum1.0478.i = phi double [ 0.000000e+00, %for.body10.lr.ph.i ], [ %add46.i, %if.end.i436 ]
  %rsum0.0477.i = phi double [ 0.000000e+00, %for.body10.lr.ph.i ], [ %add38.i, %if.end.i436 ]
  %isum2.0476.i = phi double [ 0.000000e+00, %for.body10.lr.ph.i ], [ %add58.i433, %if.end.i436 ]
  %isum1.0475.i = phi double [ 0.000000e+00, %for.body10.lr.ph.i ], [ %add50.i427, %if.end.i436 ]
  %isum0.0474.i = phi double [ 0.000000e+00, %for.body10.lr.ph.i ], [ %add42.i424, %if.end.i436 ]
  %441 = trunc i64 %indvars.iv528.i to i32, !dbg !1182
  %mul11.i = shl nsw i32 %441, 1, !dbg !1182
  call void @llvm.dbg.value(metadata !{i32 %mul11.i}, i64 0, metadata !1183) #5, !dbg !1182
  %add413.i = or i32 %mul11.i, 1, !dbg !1184
  call void @llvm.dbg.value(metadata !{i32 %add413.i}, i64 0, metadata !1185) #5, !dbg !1184
  %idxprom12.i = sext i32 %mul11.i to i64, !dbg !1171
  call void @llvm.dbg.value(metadata !{double** %entriesA.i390}, i64 0, metadata !1170) #5, !dbg !1171
  %arrayidx13.i409 = getelementptr inbounds double* %436, i64 %idxprom12.i, !dbg !1171
  %442 = load double* %arrayidx13.i409, align 8, !dbg !1171, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %442}, i64 0, metadata !1186) #5, !dbg !1171
  %idxprom14.i = sext i32 %add413.i to i64, !dbg !1187
  %arrayidx15.i = getelementptr inbounds double* %436, i64 %idxprom14.i, !dbg !1187
  %443 = load double* %arrayidx15.i, align 8, !dbg !1187, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %443}, i64 0, metadata !1188) #5, !dbg !1187
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i398}, i64 0, metadata !1175) #5, !dbg !1176
  %arrayidx17.i410 = getelementptr inbounds i32* %437, i64 %indvars.iv528.i, !dbg !1176
  %444 = load i32* %arrayidx17.i410, align 4, !dbg !1176, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %444}, i64 0, metadata !1189) #5, !dbg !1176
  %cmp18.i = icmp sgt i32 %444, -1, !dbg !1180
  %cmp19.i411 = icmp slt i32 %444, %440, !dbg !1180
  %or.cond.i412 = and i1 %cmp18.i, %cmp19.i411, !dbg !1180
  br i1 %or.cond.i412, label %if.end.i436, label %if.then20.i, !dbg !1180

if.then20.i:                                      ; preds = %for.body10.i413
  %445 = load %struct._IO_FILE** @stderr, align 8, !dbg !1190, !tbaa !447
  %call.i414 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %445, i8* getelementptr inbounds ([52 x i8]* @.str7, i64 0, i64 0), i32 %irowA.0491.i, i32 %kk.1481.i, i32 %ii.0480.i, i32 %444) #6, !dbg !1190
  call void @exit(i32 -1) #7, !dbg !1192
  unreachable, !dbg !1192

if.end.i436:                                      ; preds = %for.body10.i413
  %mul21.i415 = shl nsw i32 %444, 1, !dbg !1193
  call void @llvm.dbg.value(metadata !{i32 %mul21.i415}, i64 0, metadata !1183) #5, !dbg !1193
  %add22414.i = or i32 %mul21.i415, 1, !dbg !1194
  call void @llvm.dbg.value(metadata !{i32 %add22414.i}, i64 0, metadata !1185) #5, !dbg !1194
  %idxprom23.i = sext i32 %mul21.i415 to i64, !dbg !1195
  %arrayidx24.i416 = getelementptr inbounds double* %colB0.0502.i, i64 %idxprom23.i, !dbg !1195
  %446 = load double* %arrayidx24.i416, align 8, !dbg !1195, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %446}, i64 0, metadata !1196) #5, !dbg !1195
  %idxprom25.i = sext i32 %add22414.i to i64, !dbg !1195
  %arrayidx26.i417 = getelementptr inbounds double* %colB0.0502.i, i64 %idxprom25.i, !dbg !1195
  %447 = load double* %arrayidx26.i417, align 8, !dbg !1195, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %447}, i64 0, metadata !1197) #5, !dbg !1195
  %add.ptr.sum415.i = add i64 %idxprom23.i, %idx.ext.i401, !dbg !1198
  %arrayidx28.i418 = getelementptr inbounds double* %colB0.0502.i, i64 %add.ptr.sum415.i, !dbg !1198
  %448 = load double* %arrayidx28.i418, align 8, !dbg !1198, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %448}, i64 0, metadata !1199) #5, !dbg !1198
  %add.ptr.sum416.i = add i64 %idxprom25.i, %idx.ext.i401, !dbg !1198
  %arrayidx30.i419 = getelementptr inbounds double* %colB0.0502.i, i64 %add.ptr.sum416.i, !dbg !1198
  %449 = load double* %arrayidx30.i419, align 8, !dbg !1198, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %449}, i64 0, metadata !1200) #5, !dbg !1198
  %add.ptr3.sum417.i = add i64 %idxprom23.i, %add.ptr.sum.i402, !dbg !1201
  %arrayidx32.i420 = getelementptr inbounds double* %colB0.0502.i, i64 %add.ptr3.sum417.i, !dbg !1201
  %450 = load double* %arrayidx32.i420, align 8, !dbg !1201, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %450}, i64 0, metadata !1202) #5, !dbg !1201
  %add.ptr3.sum418.i = add i64 %idxprom25.i, %add.ptr.sum.i402, !dbg !1201
  %arrayidx34.i = getelementptr inbounds double* %colB0.0502.i, i64 %add.ptr3.sum418.i, !dbg !1201
  %451 = load double* %arrayidx34.i, align 8, !dbg !1201, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %451}, i64 0, metadata !1203) #5, !dbg !1201
  %mul35.i = fmul double %442, %446, !dbg !1204
  %mul36.i421 = fmul double %443, %447, !dbg !1204
  %sub37.i422 = fsub double %mul35.i, %mul36.i421, !dbg !1204
  %add38.i = fadd double %rsum0.0477.i, %sub37.i422, !dbg !1204
  call void @llvm.dbg.value(metadata !{double %add38.i}, i64 0, metadata !1205) #5, !dbg !1204
  %mul39.i = fmul double %442, %447, !dbg !1204
  %mul40.i423 = fmul double %443, %446, !dbg !1204
  %add41.i = fadd double %mul40.i423, %mul39.i, !dbg !1204
  %add42.i424 = fadd double %isum0.0474.i, %add41.i, !dbg !1204
  call void @llvm.dbg.value(metadata !{double %add42.i424}, i64 0, metadata !1206) #5, !dbg !1204
  %mul43.i = fmul double %442, %448, !dbg !1207
  %mul44.i425 = fmul double %443, %449, !dbg !1207
  %sub45.i = fsub double %mul43.i, %mul44.i425, !dbg !1207
  %add46.i = fadd double %rsum1.0478.i, %sub45.i, !dbg !1207
  call void @llvm.dbg.value(metadata !{double %add46.i}, i64 0, metadata !1208) #5, !dbg !1207
  %mul47.i = fmul double %442, %449, !dbg !1207
  %mul48.i426 = fmul double %443, %448, !dbg !1207
  %add49.i = fadd double %mul48.i426, %mul47.i, !dbg !1207
  %add50.i427 = fadd double %isum1.0475.i, %add49.i, !dbg !1207
  call void @llvm.dbg.value(metadata !{double %add50.i427}, i64 0, metadata !1209) #5, !dbg !1207
  %mul51.i = fmul double %442, %450, !dbg !1210
  %mul52.i428 = fmul double %443, %451, !dbg !1210
  %sub53.i429 = fsub double %mul51.i, %mul52.i428, !dbg !1210
  %add54.i430 = fadd double %rsum2.0479.i, %sub53.i429, !dbg !1210
  call void @llvm.dbg.value(metadata !{double %add54.i430}, i64 0, metadata !1211) #5, !dbg !1210
  %mul55.i431 = fmul double %442, %451, !dbg !1210
  %mul56.i432 = fmul double %443, %450, !dbg !1210
  %add57.i = fadd double %mul56.i432, %mul55.i431, !dbg !1210
  %add58.i433 = fadd double %isum2.0476.i, %add57.i, !dbg !1210
  call void @llvm.dbg.value(metadata !{double %add58.i433}, i64 0, metadata !1212) #5, !dbg !1210
  %inc.i434 = add nsw i32 %ii.0480.i, 1, !dbg !1181
  call void @llvm.dbg.value(metadata !{i32 %inc.i434}, i64 0, metadata !1213) #5, !dbg !1181
  %indvars.iv.next529.i = add i64 %indvars.iv528.i, 1, !dbg !1181
  %inc59.i = add nsw i32 %kk.1481.i, 1, !dbg !1181
  call void @llvm.dbg.value(metadata !{i32 %inc59.i}, i64 0, metadata !1177) #5, !dbg !1181
  %cmp9.i435 = icmp slt i32 %inc.i434, %438, !dbg !1181
  br i1 %cmp9.i435, label %for.body10.i413, label %for.end.i445, !dbg !1181

for.end.i445:                                     ; preds = %if.end.i436
  %phitmp538.i = shl i32 %440, 1, !dbg !1181
  call void @llvm.dbg.value(metadata !{i32 %phitmp538.i}, i64 0, metadata !1183) #5, !dbg !1214
  %add61408.i = or i32 %phitmp538.i, 1, !dbg !1215
  call void @llvm.dbg.value(metadata !{i32 %add61408.i}, i64 0, metadata !1185) #5, !dbg !1215
  %idxprom62.i = sext i32 %phitmp538.i to i64, !dbg !1216
  %arrayidx63.i437 = getelementptr inbounds double* %colB0.0502.i, i64 %idxprom62.i, !dbg !1216
  %452 = load double* %arrayidx63.i437, align 8, !dbg !1216, !tbaa !512
  %sub64.i438 = fsub double %452, %add38.i, !dbg !1216
  store double %sub64.i438, double* %arrayidx63.i437, align 8, !dbg !1216, !tbaa !512
  %idxprom65.i439 = sext i32 %add61408.i to i64, !dbg !1216
  %arrayidx66.i440 = getelementptr inbounds double* %colB0.0502.i, i64 %idxprom65.i439, !dbg !1216
  %453 = load double* %arrayidx66.i440, align 8, !dbg !1216, !tbaa !512
  %sub67.i441 = fsub double %453, %add42.i424, !dbg !1216
  store double %sub67.i441, double* %arrayidx66.i440, align 8, !dbg !1216, !tbaa !512
  %add.ptr.sum409.i = add i64 %idxprom62.i, %idx.ext.i401, !dbg !1217
  %arrayidx69.i442 = getelementptr inbounds double* %colB0.0502.i, i64 %add.ptr.sum409.i, !dbg !1217
  %454 = load double* %arrayidx69.i442, align 8, !dbg !1217, !tbaa !512
  %sub70.i = fsub double %454, %add46.i, !dbg !1217
  store double %sub70.i, double* %arrayidx69.i442, align 8, !dbg !1217, !tbaa !512
  %add.ptr.sum410.i = add i64 %idxprom65.i439, %idx.ext.i401, !dbg !1217
  %arrayidx72.i = getelementptr inbounds double* %colB0.0502.i, i64 %add.ptr.sum410.i, !dbg !1217
  %455 = load double* %arrayidx72.i, align 8, !dbg !1217, !tbaa !512
  %sub73.i = fsub double %455, %add50.i427, !dbg !1217
  store double %sub73.i, double* %arrayidx72.i, align 8, !dbg !1217, !tbaa !512
  %add.ptr3.sum411.i = add i64 %idxprom62.i, %add.ptr.sum.i402, !dbg !1218
  %arrayidx75.i = getelementptr inbounds double* %colB0.0502.i, i64 %add.ptr3.sum411.i, !dbg !1218
  %456 = load double* %arrayidx75.i, align 8, !dbg !1218, !tbaa !512
  %sub76.i = fsub double %456, %add54.i430, !dbg !1218
  store double %sub76.i, double* %arrayidx75.i, align 8, !dbg !1218, !tbaa !512
  %add.ptr3.sum412.i = add i64 %idxprom65.i439, %add.ptr.sum.i402, !dbg !1218
  %arrayidx78.i443 = getelementptr inbounds double* %colB0.0502.i, i64 %add.ptr3.sum412.i, !dbg !1218
  %457 = load double* %arrayidx78.i443, align 8, !dbg !1218, !tbaa !512
  %sub79.i444 = fsub double %457, %add58.i433, !dbg !1218
  store double %sub79.i444, double* %arrayidx78.i443, align 8, !dbg !1218, !tbaa !512
  br label %for.inc81.i448, !dbg !1219

for.inc81.i448:                                   ; preds = %for.end.i445, %for.body6.i408
  %kk.2.i446 = phi i32 [ %inc59.i, %for.end.i445 ], [ %kk.0494.i, %for.body6.i408 ]
  %indvars.iv.next532.i = add i64 %indvars.iv531.i, 1, !dbg !1164
  %inc82.i = add nsw i32 %irowA.0491.i, 1, !dbg !1164
  call void @llvm.dbg.value(metadata !{i32 %inc82.i}, i64 0, metadata !1178) #5, !dbg !1164
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i396}, i64 0, metadata !1163) #5, !dbg !1164
  %458 = trunc i64 %indvars.iv.next532.i to i32, !dbg !1164
  %cmp5.i447 = icmp slt i32 %458, %434, !dbg !1164
  br i1 %cmp5.i447, label %for.body6.i408, label %for.end83.i452, !dbg !1164

for.end83.i452:                                   ; preds = %for.inc81.i448, %for.body.i405
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i397}, i64 0, metadata !1159) #5, !dbg !1166
  %add.ptr86.i449 = getelementptr inbounds double* %colB0.0502.i, i64 %add.ptr3.sum.i403, !dbg !1166
  call void @llvm.dbg.value(metadata !{double* %add.ptr86.i449}, i64 0, metadata !1154) #5, !dbg !1166
  %add88.i450 = add nsw i32 %jcolB.0504.i, 3, !dbg !1156
  call void @llvm.dbg.value(metadata !{i32 %add88.i450}, i64 0, metadata !1155) #5, !dbg !1156
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i394}, i64 0, metadata !1158) #5, !dbg !1156
  %cmp.i451 = icmp slt i32 %add88.i450, %sub500.i, !dbg !1156
  br i1 %cmp.i451, label %for.body.i405, label %for.end89.i456, !dbg !1156

for.end89.i456:                                   ; preds = %for.end83.i452, %sw.bb27
  %jcolB.0.lcssa.i453 = phi i32 [ 0, %sw.bb27 ], [ %add88.i450, %for.end83.i452 ]
  %colB0.0.lcssa.i454 = phi double* [ %431, %sw.bb27 ], [ %add.ptr86.i449, %for.end83.i452 ]
  %cmp91.i455 = icmp eq i32 %jcolB.0.lcssa.i453, %sub500.i, !dbg !1220
  br i1 %cmp91.i455, label %if.then92.i459, label %if.else.i481, !dbg !1220

if.then92.i459:                                   ; preds = %for.end89.i456
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i397}, i64 0, metadata !1159) #5, !dbg !1221
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i397}, i64 0, metadata !243), !dbg !1221
  %459 = load i32* %nrowB.i397, align 4, !dbg !1221, !tbaa !452
  %mul93.i457 = shl nsw i32 %459, 1, !dbg !1221
  %idx.ext94.i458 = sext i32 %mul93.i457 to i64, !dbg !1221
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1177) #5, !dbg !1223
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1178) #5, !dbg !1223
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i396}, i64 0, metadata !1163) #5, !dbg !1223
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i396}, i64 0, metadata !242), !dbg !1223
  %460 = load i32* %nrowA.i396, align 4, !dbg !1223, !tbaa !452
  %cmp97439.i = icmp sgt i32 %460, 0, !dbg !1223
  br i1 %cmp97439.i, label %for.body98.lr.ph.i460, label %sw.epilog41, !dbg !1223

for.body98.lr.ph.i460:                            ; preds = %if.then92.i459
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i399}, i64 0, metadata !1167) #5, !dbg !1225
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i399}, i64 0, metadata !247), !dbg !1225
  %461 = load i32** %sizesA.i399, align 8, !dbg !1225, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i396}, i64 0, metadata !1163) #5, !dbg !1223
  call void @llvm.dbg.value(metadata !{double** %entriesA.i390}, i64 0, metadata !1170) #5, !dbg !1227
  call void @llvm.dbg.value(metadata !{double** %entriesA.i390}, i64 0, metadata !230), !dbg !1227
  %462 = load double** %entriesA.i390, align 8, !dbg !1227, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i398}, i64 0, metadata !1175) #5, !dbg !1231
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i398}, i64 0, metadata !246), !dbg !1231
  %463 = load i32** %indicesA.i398, align 8, !dbg !1231, !tbaa !447
  br label %for.body98.i463, !dbg !1223

for.body98.i463:                                  ; preds = %for.inc165.i, %for.body98.lr.ph.i460
  %indvars.iv513.i = phi i64 [ 0, %for.body98.lr.ph.i460 ], [ %indvars.iv.next514.i, %for.inc165.i ]
  %kk.3443.i = phi i32 [ 0, %for.body98.lr.ph.i460 ], [ %kk.5.i479, %for.inc165.i ]
  %irowA.1440.i = phi i32 [ 0, %for.body98.lr.ph.i460 ], [ %inc166.i, %for.inc165.i ]
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i399}, i64 0, metadata !1167) #5, !dbg !1225
  %arrayidx100.i461 = getelementptr inbounds i32* %461, i64 %indvars.iv513.i, !dbg !1225
  %464 = load i32* %arrayidx100.i461, align 4, !dbg !1225, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %464}, i64 0, metadata !1179) #5, !dbg !1225
  %cmp101.i462 = icmp sgt i32 %464, 0, !dbg !1225
  br i1 %cmp101.i462, label %for.body105.lr.ph.i, label %for.inc165.i, !dbg !1225

for.body105.lr.ph.i:                              ; preds = %for.body98.i463
  %465 = sext i32 %kk.3443.i to i64
  %466 = trunc i64 %indvars.iv513.i to i32, !dbg !1232
  br label %for.body105.i, !dbg !1233

for.body105.i:                                    ; preds = %if.end119.i, %for.body105.lr.ph.i
  %indvars.iv.i464 = phi i64 [ %465, %for.body105.lr.ph.i ], [ %indvars.iv.next.i476, %if.end119.i ]
  %kk.4433.i = phi i32 [ %kk.3443.i, %for.body105.lr.ph.i ], [ %inc148.i, %if.end119.i ]
  %ii.1432.i = phi i32 [ 0, %for.body105.lr.ph.i ], [ %inc147.i, %if.end119.i ]
  %rsum1.1431.i = phi double [ 0.000000e+00, %for.body105.lr.ph.i ], [ %add141.i, %if.end119.i ]
  %rsum0.1430.i = phi double [ 0.000000e+00, %for.body105.lr.ph.i ], [ %add133.i, %if.end119.i ]
  %isum1.1429.i = phi double [ 0.000000e+00, %for.body105.lr.ph.i ], [ %add145.i, %if.end119.i ]
  %isum0.1428.i = phi double [ 0.000000e+00, %for.body105.lr.ph.i ], [ %add137.i, %if.end119.i ]
  %467 = trunc i64 %indvars.iv.i464 to i32, !dbg !1234
  %mul106.i = shl nsw i32 %467, 1, !dbg !1234
  call void @llvm.dbg.value(metadata !{i32 %mul106.i}, i64 0, metadata !1183) #5, !dbg !1234
  %add107404.i = or i32 %mul106.i, 1, !dbg !1235
  call void @llvm.dbg.value(metadata !{i32 %add107404.i}, i64 0, metadata !1185) #5, !dbg !1235
  %idxprom108.i = sext i32 %mul106.i to i64, !dbg !1227
  call void @llvm.dbg.value(metadata !{double** %entriesA.i390}, i64 0, metadata !1170) #5, !dbg !1227
  %arrayidx109.i = getelementptr inbounds double* %462, i64 %idxprom108.i, !dbg !1227
  %468 = load double* %arrayidx109.i, align 8, !dbg !1227, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %468}, i64 0, metadata !1186) #5, !dbg !1227
  %idxprom110.i465 = sext i32 %add107404.i to i64, !dbg !1236
  %arrayidx111.i466 = getelementptr inbounds double* %462, i64 %idxprom110.i465, !dbg !1236
  %469 = load double* %arrayidx111.i466, align 8, !dbg !1236, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %469}, i64 0, metadata !1188) #5, !dbg !1236
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i398}, i64 0, metadata !1175) #5, !dbg !1231
  %arrayidx113.i467 = getelementptr inbounds i32* %463, i64 %indvars.iv.i464, !dbg !1231
  %470 = load i32* %arrayidx113.i467, align 4, !dbg !1231, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %470}, i64 0, metadata !1189) #5, !dbg !1231
  %cmp114.i468 = icmp sgt i32 %470, -1, !dbg !1232
  %cmp116.i469 = icmp slt i32 %470, %466, !dbg !1232
  %or.cond419.i = and i1 %cmp114.i468, %cmp116.i469, !dbg !1232
  br i1 %or.cond419.i, label %if.end119.i, label %if.then117.i, !dbg !1232

if.then117.i:                                     ; preds = %for.body105.i
  %471 = load %struct._IO_FILE** @stderr, align 8, !dbg !1237, !tbaa !447
  %call118.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %471, i8* getelementptr inbounds ([52 x i8]* @.str7, i64 0, i64 0), i32 %irowA.1440.i, i32 %kk.4433.i, i32 %ii.1432.i, i32 %470) #6, !dbg !1237
  call void @exit(i32 -1) #7, !dbg !1239
  unreachable, !dbg !1239

if.end119.i:                                      ; preds = %for.body105.i
  %mul120.i470 = shl nsw i32 %470, 1, !dbg !1240
  call void @llvm.dbg.value(metadata !{i32 %mul120.i470}, i64 0, metadata !1183) #5, !dbg !1240
  %add121405.i = or i32 %mul120.i470, 1, !dbg !1241
  call void @llvm.dbg.value(metadata !{i32 %add121405.i}, i64 0, metadata !1185) #5, !dbg !1241
  %idxprom122.i471 = sext i32 %mul120.i470 to i64, !dbg !1242
  %arrayidx123.i472 = getelementptr inbounds double* %colB0.0.lcssa.i454, i64 %idxprom122.i471, !dbg !1242
  %472 = load double* %arrayidx123.i472, align 8, !dbg !1242, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %472}, i64 0, metadata !1196) #5, !dbg !1242
  %idxprom124.i = sext i32 %add121405.i to i64, !dbg !1242
  %arrayidx125.i473 = getelementptr inbounds double* %colB0.0.lcssa.i454, i64 %idxprom124.i, !dbg !1242
  %473 = load double* %arrayidx125.i473, align 8, !dbg !1242, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %473}, i64 0, metadata !1197) #5, !dbg !1242
  %add.ptr95.sum406.i = add i64 %idxprom122.i471, %idx.ext94.i458, !dbg !1243
  %arrayidx127.i474 = getelementptr inbounds double* %colB0.0.lcssa.i454, i64 %add.ptr95.sum406.i, !dbg !1243
  %474 = load double* %arrayidx127.i474, align 8, !dbg !1243, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %474}, i64 0, metadata !1199) #5, !dbg !1243
  %add.ptr95.sum407.i = add i64 %idxprom124.i, %idx.ext94.i458, !dbg !1243
  %arrayidx129.i = getelementptr inbounds double* %colB0.0.lcssa.i454, i64 %add.ptr95.sum407.i, !dbg !1243
  %475 = load double* %arrayidx129.i, align 8, !dbg !1243, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %475}, i64 0, metadata !1200) #5, !dbg !1243
  %mul130.i = fmul double %468, %472, !dbg !1244
  %mul131.i = fmul double %469, %473, !dbg !1244
  %sub132.i = fsub double %mul130.i, %mul131.i, !dbg !1244
  %add133.i = fadd double %rsum0.1430.i, %sub132.i, !dbg !1244
  call void @llvm.dbg.value(metadata !{double %add133.i}, i64 0, metadata !1205) #5, !dbg !1244
  %mul134.i = fmul double %468, %473, !dbg !1244
  %mul135.i = fmul double %469, %472, !dbg !1244
  %add136.i = fadd double %mul135.i, %mul134.i, !dbg !1244
  %add137.i = fadd double %isum0.1428.i, %add136.i, !dbg !1244
  call void @llvm.dbg.value(metadata !{double %add137.i}, i64 0, metadata !1206) #5, !dbg !1244
  %mul138.i = fmul double %468, %474, !dbg !1245
  %mul139.i = fmul double %469, %475, !dbg !1245
  %sub140.i = fsub double %mul138.i, %mul139.i, !dbg !1245
  %add141.i = fadd double %rsum1.1431.i, %sub140.i, !dbg !1245
  call void @llvm.dbg.value(metadata !{double %add141.i}, i64 0, metadata !1208) #5, !dbg !1245
  %mul142.i475 = fmul double %468, %475, !dbg !1245
  %mul143.i = fmul double %469, %474, !dbg !1245
  %add144.i = fadd double %mul143.i, %mul142.i475, !dbg !1245
  %add145.i = fadd double %isum1.1429.i, %add144.i, !dbg !1245
  call void @llvm.dbg.value(metadata !{double %add145.i}, i64 0, metadata !1209) #5, !dbg !1245
  %inc147.i = add nsw i32 %ii.1432.i, 1, !dbg !1233
  call void @llvm.dbg.value(metadata !{i32 %inc147.i}, i64 0, metadata !1213) #5, !dbg !1233
  %indvars.iv.next.i476 = add i64 %indvars.iv.i464, 1, !dbg !1233
  %inc148.i = add nsw i32 %kk.4433.i, 1, !dbg !1233
  call void @llvm.dbg.value(metadata !{i32 %inc148.i}, i64 0, metadata !1177) #5, !dbg !1233
  %cmp104.i477 = icmp slt i32 %inc147.i, %464, !dbg !1233
  br i1 %cmp104.i477, label %for.body105.i, label %for.end149.i, !dbg !1233

for.end149.i:                                     ; preds = %if.end119.i
  %phitmp537.i = shl i32 %466, 1, !dbg !1233
  call void @llvm.dbg.value(metadata !{i32 %phitmp537.i}, i64 0, metadata !1183) #5, !dbg !1246
  %add151402.i = or i32 %phitmp537.i, 1, !dbg !1247
  call void @llvm.dbg.value(metadata !{i32 %add151402.i}, i64 0, metadata !1185) #5, !dbg !1247
  %idxprom152.i = sext i32 %phitmp537.i to i64, !dbg !1248
  %arrayidx153.i = getelementptr inbounds double* %colB0.0.lcssa.i454, i64 %idxprom152.i, !dbg !1248
  %476 = load double* %arrayidx153.i, align 8, !dbg !1248, !tbaa !512
  %sub154.i = fsub double %476, %add133.i, !dbg !1248
  store double %sub154.i, double* %arrayidx153.i, align 8, !dbg !1248, !tbaa !512
  %idxprom155.i = sext i32 %add151402.i to i64, !dbg !1248
  %arrayidx156.i = getelementptr inbounds double* %colB0.0.lcssa.i454, i64 %idxprom155.i, !dbg !1248
  %477 = load double* %arrayidx156.i, align 8, !dbg !1248, !tbaa !512
  %sub157.i = fsub double %477, %add137.i, !dbg !1248
  store double %sub157.i, double* %arrayidx156.i, align 8, !dbg !1248, !tbaa !512
  %add.ptr95.sum.i478 = add i64 %idxprom152.i, %idx.ext94.i458, !dbg !1249
  %arrayidx159.i = getelementptr inbounds double* %colB0.0.lcssa.i454, i64 %add.ptr95.sum.i478, !dbg !1249
  %478 = load double* %arrayidx159.i, align 8, !dbg !1249, !tbaa !512
  %sub160.i = fsub double %478, %add141.i, !dbg !1249
  store double %sub160.i, double* %arrayidx159.i, align 8, !dbg !1249, !tbaa !512
  %add.ptr95.sum403.i = add i64 %idxprom155.i, %idx.ext94.i458, !dbg !1249
  %arrayidx162.i = getelementptr inbounds double* %colB0.0.lcssa.i454, i64 %add.ptr95.sum403.i, !dbg !1249
  %479 = load double* %arrayidx162.i, align 8, !dbg !1249, !tbaa !512
  %sub163.i = fsub double %479, %add145.i, !dbg !1249
  store double %sub163.i, double* %arrayidx162.i, align 8, !dbg !1249, !tbaa !512
  br label %for.inc165.i, !dbg !1250

for.inc165.i:                                     ; preds = %for.end149.i, %for.body98.i463
  %kk.5.i479 = phi i32 [ %inc148.i, %for.end149.i ], [ %kk.3443.i, %for.body98.i463 ]
  %indvars.iv.next514.i = add i64 %indvars.iv513.i, 1, !dbg !1223
  %inc166.i = add nsw i32 %irowA.1440.i, 1, !dbg !1223
  call void @llvm.dbg.value(metadata !{i32 %inc166.i}, i64 0, metadata !1178) #5, !dbg !1223
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i396}, i64 0, metadata !1163) #5, !dbg !1223
  %480 = trunc i64 %indvars.iv.next514.i to i32, !dbg !1223
  %cmp97.i480 = icmp slt i32 %480, %460, !dbg !1223
  br i1 %cmp97.i480, label %for.body98.i463, label %sw.epilog41, !dbg !1223

if.else.i481:                                     ; preds = %for.end89.i456
  %sub168.i = add nsw i32 %432, -1, !dbg !1251
  %cmp169.i = icmp eq i32 %jcolB.0.lcssa.i453, %sub168.i, !dbg !1251
  br i1 %cmp169.i, label %for.cond171.preheader.i, label %sw.epilog41, !dbg !1251

for.cond171.preheader.i:                          ; preds = %if.else.i481
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i396}, i64 0, metadata !1163) #5, !dbg !1252
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i396}, i64 0, metadata !242), !dbg !1252
  %481 = load i32* %nrowA.i396, align 4, !dbg !1252, !tbaa !452
  %cmp172459.i = icmp sgt i32 %481, 0, !dbg !1252
  br i1 %cmp172459.i, label %for.body173.lr.ph.i, label %sw.epilog41, !dbg !1252

for.body173.lr.ph.i:                              ; preds = %for.cond171.preheader.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i399}, i64 0, metadata !1167) #5, !dbg !1255
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i399}, i64 0, metadata !247), !dbg !1255
  %482 = load i32** %sizesA.i399, align 8, !dbg !1255, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i396}, i64 0, metadata !1163) #5, !dbg !1252
  call void @llvm.dbg.value(metadata !{double** %entriesA.i390}, i64 0, metadata !1170) #5, !dbg !1257
  call void @llvm.dbg.value(metadata !{double** %entriesA.i390}, i64 0, metadata !230), !dbg !1257
  %483 = load double** %entriesA.i390, align 8, !dbg !1257, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i398}, i64 0, metadata !1175) #5, !dbg !1261
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i398}, i64 0, metadata !246), !dbg !1261
  %484 = load i32** %indicesA.i398, align 8, !dbg !1261, !tbaa !447
  br label %for.body173.i, !dbg !1252

for.body173.i:                                    ; preds = %for.inc222.i, %for.body173.lr.ph.i
  %indvars.iv522.i = phi i64 [ 0, %for.body173.lr.ph.i ], [ %indvars.iv.next523.i, %for.inc222.i ]
  %kk.6463.i = phi i32 [ 0, %for.body173.lr.ph.i ], [ %kk.8.i489, %for.inc222.i ]
  %irowA.2460.i = phi i32 [ 0, %for.body173.lr.ph.i ], [ %inc223.i, %for.inc222.i ]
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i399}, i64 0, metadata !1167) #5, !dbg !1255
  %arrayidx175.i = getelementptr inbounds i32* %482, i64 %indvars.iv522.i, !dbg !1255
  %485 = load i32* %arrayidx175.i, align 4, !dbg !1255, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %485}, i64 0, metadata !1179) #5, !dbg !1255
  %cmp176.i = icmp sgt i32 %485, 0, !dbg !1255
  br i1 %cmp176.i, label %for.body180.lr.ph.i, label %for.inc222.i, !dbg !1255

for.body180.lr.ph.i:                              ; preds = %for.body173.i
  %486 = sext i32 %kk.6463.i to i64
  %487 = trunc i64 %indvars.iv522.i to i32, !dbg !1262
  br label %for.body180.i, !dbg !1263

for.body180.i:                                    ; preds = %if.end194.i, %for.body180.lr.ph.i
  %indvars.iv519.i = phi i64 [ %486, %for.body180.lr.ph.i ], [ %indvars.iv.next520.i, %if.end194.i ]
  %kk.7453.i = phi i32 [ %kk.6463.i, %for.body180.lr.ph.i ], [ %inc211.i, %if.end194.i ]
  %ii.2452.i = phi i32 [ 0, %for.body180.lr.ph.i ], [ %inc210.i, %if.end194.i ]
  %rsum0.2451.i = phi double [ 0.000000e+00, %for.body180.lr.ph.i ], [ %add204.i487, %if.end194.i ]
  %isum0.2450.i = phi double [ 0.000000e+00, %for.body180.lr.ph.i ], [ %add208.i, %if.end194.i ]
  %488 = trunc i64 %indvars.iv519.i to i32, !dbg !1264
  %mul181.i = shl nsw i32 %488, 1, !dbg !1264
  call void @llvm.dbg.value(metadata !{i32 %mul181.i}, i64 0, metadata !1183) #5, !dbg !1264
  %add182400.i = or i32 %mul181.i, 1, !dbg !1265
  call void @llvm.dbg.value(metadata !{i32 %add182400.i}, i64 0, metadata !1185) #5, !dbg !1265
  %idxprom183.i = sext i32 %mul181.i to i64, !dbg !1257
  call void @llvm.dbg.value(metadata !{double** %entriesA.i390}, i64 0, metadata !1170) #5, !dbg !1257
  %arrayidx184.i = getelementptr inbounds double* %483, i64 %idxprom183.i, !dbg !1257
  %489 = load double* %arrayidx184.i, align 8, !dbg !1257, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %489}, i64 0, metadata !1186) #5, !dbg !1257
  %idxprom185.i = sext i32 %add182400.i to i64, !dbg !1266
  %arrayidx186.i = getelementptr inbounds double* %483, i64 %idxprom185.i, !dbg !1266
  %490 = load double* %arrayidx186.i, align 8, !dbg !1266, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %490}, i64 0, metadata !1188) #5, !dbg !1266
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i398}, i64 0, metadata !1175) #5, !dbg !1261
  %arrayidx188.i482 = getelementptr inbounds i32* %484, i64 %indvars.iv519.i, !dbg !1261
  %491 = load i32* %arrayidx188.i482, align 4, !dbg !1261, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %491}, i64 0, metadata !1189) #5, !dbg !1261
  %cmp189.i = icmp sgt i32 %491, -1, !dbg !1262
  %cmp191.i483 = icmp slt i32 %491, %487, !dbg !1262
  %or.cond420.i = and i1 %cmp189.i, %cmp191.i483, !dbg !1262
  br i1 %or.cond420.i, label %if.end194.i, label %if.then192.i, !dbg !1262

if.then192.i:                                     ; preds = %for.body180.i
  %492 = load %struct._IO_FILE** @stderr, align 8, !dbg !1267, !tbaa !447
  %call193.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %492, i8* getelementptr inbounds ([52 x i8]* @.str7, i64 0, i64 0), i32 %irowA.2460.i, i32 %kk.7453.i, i32 %ii.2452.i, i32 %491) #6, !dbg !1267
  call void @exit(i32 -1) #7, !dbg !1269
  unreachable, !dbg !1269

if.end194.i:                                      ; preds = %for.body180.i
  %mul195.i = shl nsw i32 %491, 1, !dbg !1270
  call void @llvm.dbg.value(metadata !{i32 %mul195.i}, i64 0, metadata !1183) #5, !dbg !1270
  %add196401.i = or i32 %mul195.i, 1, !dbg !1271
  call void @llvm.dbg.value(metadata !{i32 %add196401.i}, i64 0, metadata !1185) #5, !dbg !1271
  %idxprom197.i = sext i32 %mul195.i to i64, !dbg !1272
  %arrayidx198.i = getelementptr inbounds double* %colB0.0.lcssa.i454, i64 %idxprom197.i, !dbg !1272
  %493 = load double* %arrayidx198.i, align 8, !dbg !1272, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %493}, i64 0, metadata !1196) #5, !dbg !1272
  %idxprom199.i = sext i32 %add196401.i to i64, !dbg !1272
  %arrayidx200.i = getelementptr inbounds double* %colB0.0.lcssa.i454, i64 %idxprom199.i, !dbg !1272
  %494 = load double* %arrayidx200.i, align 8, !dbg !1272, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %494}, i64 0, metadata !1197) #5, !dbg !1272
  %mul201.i484 = fmul double %489, %493, !dbg !1273
  %mul202.i485 = fmul double %490, %494, !dbg !1273
  %sub203.i486 = fsub double %mul201.i484, %mul202.i485, !dbg !1273
  %add204.i487 = fadd double %rsum0.2451.i, %sub203.i486, !dbg !1273
  call void @llvm.dbg.value(metadata !{double %add204.i487}, i64 0, metadata !1205) #5, !dbg !1273
  %mul205.i = fmul double %489, %494, !dbg !1273
  %mul206.i = fmul double %490, %493, !dbg !1273
  %add207.i = fadd double %mul206.i, %mul205.i, !dbg !1273
  %add208.i = fadd double %isum0.2450.i, %add207.i, !dbg !1273
  call void @llvm.dbg.value(metadata !{double %add208.i}, i64 0, metadata !1206) #5, !dbg !1273
  %inc210.i = add nsw i32 %ii.2452.i, 1, !dbg !1263
  call void @llvm.dbg.value(metadata !{i32 %inc210.i}, i64 0, metadata !1213) #5, !dbg !1263
  %indvars.iv.next520.i = add i64 %indvars.iv519.i, 1, !dbg !1263
  %inc211.i = add nsw i32 %kk.7453.i, 1, !dbg !1263
  call void @llvm.dbg.value(metadata !{i32 %inc211.i}, i64 0, metadata !1177) #5, !dbg !1263
  %cmp179.i = icmp slt i32 %inc210.i, %485, !dbg !1263
  br i1 %cmp179.i, label %for.body180.i, label %for.end212.i, !dbg !1263

for.end212.i:                                     ; preds = %if.end194.i
  %phitmp.i = shl i32 %487, 1, !dbg !1263
  call void @llvm.dbg.value(metadata !{i32 %phitmp.i}, i64 0, metadata !1183) #5, !dbg !1274
  %add214399.i = or i32 %phitmp.i, 1, !dbg !1275
  call void @llvm.dbg.value(metadata !{i32 %add214399.i}, i64 0, metadata !1185) #5, !dbg !1275
  %idxprom215.i = sext i32 %phitmp.i to i64, !dbg !1276
  %arrayidx216.i = getelementptr inbounds double* %colB0.0.lcssa.i454, i64 %idxprom215.i, !dbg !1276
  %495 = load double* %arrayidx216.i, align 8, !dbg !1276, !tbaa !512
  %sub217.i = fsub double %495, %add204.i487, !dbg !1276
  store double %sub217.i, double* %arrayidx216.i, align 8, !dbg !1276, !tbaa !512
  %idxprom218.i = sext i32 %add214399.i to i64, !dbg !1276
  %arrayidx219.i = getelementptr inbounds double* %colB0.0.lcssa.i454, i64 %idxprom218.i, !dbg !1276
  %496 = load double* %arrayidx219.i, align 8, !dbg !1276, !tbaa !512
  %sub220.i488 = fsub double %496, %add208.i, !dbg !1276
  store double %sub220.i488, double* %arrayidx219.i, align 8, !dbg !1276, !tbaa !512
  br label %for.inc222.i, !dbg !1277

for.inc222.i:                                     ; preds = %for.end212.i, %for.body173.i
  %kk.8.i489 = phi i32 [ %inc211.i, %for.end212.i ], [ %kk.6463.i, %for.body173.i ]
  %indvars.iv.next523.i = add i64 %indvars.iv522.i, 1, !dbg !1252
  %inc223.i = add nsw i32 %irowA.2460.i, 1, !dbg !1252
  call void @llvm.dbg.value(metadata !{i32 %inc223.i}, i64 0, metadata !1178) #5, !dbg !1252
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i396}, i64 0, metadata !1163) #5, !dbg !1252
  %497 = trunc i64 %indvars.iv.next523.i to i32, !dbg !1252
  %cmp172.i = icmp slt i32 %497, %481, !dbg !1252
  br i1 %cmp172.i, label %for.body173.i, label %sw.epilog41, !dbg !1252

sw.bb28:                                          ; preds = %sw.bb24
  %498 = bitcast double** %entriesA.i490 to i8*, !dbg !1278
  call void @llvm.lifetime.start(i64 8, i8* %498) #5, !dbg !1278
  %499 = bitcast double** %entriesB.i491 to i8*, !dbg !1278
  call void @llvm.lifetime.start(i64 8, i8* %499) #5, !dbg !1278
  %500 = bitcast i32* %inc1.i492 to i8*, !dbg !1278
  call void @llvm.lifetime.start(i64 4, i8* %500) #5, !dbg !1278
  %501 = bitcast i32* %inc2.i493 to i8*, !dbg !1278
  call void @llvm.lifetime.start(i64 4, i8* %501) #5, !dbg !1278
  %502 = bitcast i32* %ncolB.i494 to i8*, !dbg !1278
  call void @llvm.lifetime.start(i64 4, i8* %502) #5, !dbg !1278
  %503 = bitcast i32* %nentA.i495 to i8*, !dbg !1278
  call void @llvm.lifetime.start(i64 4, i8* %503) #5, !dbg !1278
  %504 = bitcast i32* %nrowA.i496 to i8*, !dbg !1278
  call void @llvm.lifetime.start(i64 4, i8* %504) #5, !dbg !1278
  %505 = bitcast i32* %nrowB.i497 to i8*, !dbg !1278
  call void @llvm.lifetime.start(i64 4, i8* %505) #5, !dbg !1278
  %506 = bitcast i32** %firstlocsA.i498 to i8*, !dbg !1278
  call void @llvm.lifetime.start(i64 8, i8* %506) #5, !dbg !1278
  %507 = bitcast i32** %sizesA.i499 to i8*, !dbg !1278
  call void @llvm.lifetime.start(i64 8, i8* %507) #5, !dbg !1278
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !1280) #5, !dbg !1278
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxB}, i64 0, metadata !1281) #5, !dbg !1282
  call void @llvm.dbg.declare(metadata !{double** %entriesA.i490}, metadata !190) #5, !dbg !1283
  call void @llvm.dbg.declare(metadata !{double** %entriesB.i491}, metadata !191) #5, !dbg !1283
  call void @llvm.dbg.declare(metadata !{i32* %inc1.i492}, metadata !195) #5, !dbg !1284
  call void @llvm.dbg.declare(metadata !{i32* %inc2.i493}, metadata !196) #5, !dbg !1284
  call void @llvm.dbg.declare(metadata !{i32* %ncolB.i494}, metadata !202) #5, !dbg !1285
  call void @llvm.dbg.declare(metadata !{i32* %nentA.i495}, metadata !203) #5, !dbg !1285
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i496}, metadata !204) #5, !dbg !1285
  call void @llvm.dbg.declare(metadata !{i32* %nrowB.i497}, metadata !205) #5, !dbg !1285
  call void @llvm.dbg.declare(metadata !{i32** %firstlocsA.i498}, metadata !207) #5, !dbg !1286
  call void @llvm.dbg.declare(metadata !{i32** %sizesA.i499}, metadata !208) #5, !dbg !1286
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i496, i32* %nentA.i495, i32** %firstlocsA.i498, i32** %sizesA.i499, double** %entriesA.i490) #6, !dbg !1287
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i497, i32* %ncolB.i494, i32* %inc1.i492, i32* %inc2.i493, double** %entriesB.i491) #6, !dbg !1288
  call void @llvm.dbg.value(metadata !{double** %entriesB.i491}, i64 0, metadata !1289) #5, !dbg !1290
  call void @llvm.dbg.value(metadata !{double** %entriesB.i491}, i64 0, metadata !191), !dbg !1290
  %508 = load double** %entriesB.i491, align 8, !dbg !1290, !tbaa !447
  call void @llvm.dbg.value(metadata !{double* %508}, i64 0, metadata !1291) #5, !dbg !1290
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1292) #5, !dbg !1293
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i494}, i64 0, metadata !1295) #5, !dbg !1293
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i494}, i64 0, metadata !202), !dbg !1293
  %509 = load i32* %ncolB.i494, align 4, !dbg !1293, !tbaa !452
  %sub410.i = add nsw i32 %509, -2, !dbg !1293
  %cmp411.i = icmp sgt i32 %sub410.i, 0, !dbg !1293
  br i1 %cmp411.i, label %for.body.lr.ph.i504, label %for.end87.i, !dbg !1293

for.body.lr.ph.i504:                              ; preds = %sw.bb28
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i497}, i64 0, metadata !1296) #5, !dbg !1297
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i497}, i64 0, metadata !205), !dbg !1297
  %510 = load i32* %nrowB.i497, align 4, !dbg !1297, !tbaa !452
  %mul.i500 = shl nsw i32 %510, 1, !dbg !1297
  %idx.ext.i501 = sext i32 %mul.i500 to i64, !dbg !1297
  %add.ptr.sum.i502 = shl nsw i64 %idx.ext.i501, 1, !dbg !1299
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i496}, i64 0, metadata !1300) #5, !dbg !1301
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i496}, i64 0, metadata !204), !dbg !1301
  %511 = load i32* %nrowA.i496, align 4, !dbg !1301, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32* %nentA.i495}, i64 0, metadata !1303) #5, !dbg !1301
  call void @llvm.dbg.value(metadata !{i32* %nentA.i495}, i64 0, metadata !203), !dbg !1301
  %512 = load i32* %nentA.i495, align 4, !dbg !1301, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i499}, i64 0, metadata !1304) #5, !dbg !1305
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i499}, i64 0, metadata !208), !dbg !1305
  %513 = load i32** %sizesA.i499, align 8, !dbg !1305, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i498}, i64 0, metadata !1307) #5, !dbg !1308
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i498}, i64 0, metadata !207), !dbg !1308
  %514 = load i32** %firstlocsA.i498, align 8, !dbg !1308, !tbaa !447
  call void @llvm.dbg.value(metadata !{double** %entriesA.i490}, i64 0, metadata !1310) #5, !dbg !1311
  call void @llvm.dbg.value(metadata !{double** %entriesA.i490}, i64 0, metadata !190), !dbg !1311
  %515 = load double** %entriesA.i490, align 8, !dbg !1311, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i497}, i64 0, metadata !1296) #5, !dbg !1314
  %add.ptr3.sum.i503 = add i64 %add.ptr.sum.i502, %idx.ext.i501, !dbg !1314
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i494}, i64 0, metadata !1295) #5, !dbg !1293
  br label %for.body.i505, !dbg !1293

for.body.i505:                                    ; preds = %for.end81.i, %for.body.lr.ph.i504
  %jcolB.0413.i = phi i32 [ 0, %for.body.lr.ph.i504 ], [ %add86.i, %for.end81.i ]
  %colB0.0412.i = phi double* [ %508, %for.body.lr.ph.i504 ], [ %add.ptr84.i, %for.end81.i ]
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i497}, i64 0, metadata !1296) #5, !dbg !1297
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i496}, i64 0, metadata !1300) #5, !dbg !1301
  call void @llvm.dbg.value(metadata !{i32* %nentA.i495}, i64 0, metadata !1303) #5, !dbg !1301
  call void @llvm.dbg.value(metadata !{i32 %512}, i64 0, metadata !1315) #5, !dbg !1301
  br label %for.cond5.outer.i, !dbg !1301

for.cond5.outer.i:                                ; preds = %if.then.i520, %for.body33.i, %for.body.i505
  %colstart.0.ph.i506 = phi i32 [ %512, %for.body.i505 ], [ %sub16.i, %for.body33.i ], [ %sub16.i, %if.then.i520 ]
  %irowA.0.in.ph.i507 = phi i32 [ %511, %for.body.i505 ], [ %irowA.0.i509, %for.body33.i ], [ %irowA.0.i509, %if.then.i520 ]
  %516 = sext i32 %irowA.0.in.ph.i507 to i64
  br label %for.cond5.i

for.cond5.i:                                      ; preds = %for.body7.i, %for.cond5.outer.i
  %indvars.iv432.i = phi i64 [ %516, %for.cond5.outer.i ], [ %indvars.iv.next433.i, %for.body7.i ]
  %irowA.0.in.i508 = phi i32 [ %irowA.0.in.ph.i507, %for.cond5.outer.i ], [ %irowA.0.i509, %for.body7.i ]
  %indvars.iv.next433.i = add i64 %indvars.iv432.i, -1, !dbg !1305
  %irowA.0.i509 = add nsw i32 %irowA.0.in.i508, -1, !dbg !1301
  %517 = trunc i64 %indvars.iv432.i to i32, !dbg !1301
  %cmp6.i510 = icmp sgt i32 %517, 0, !dbg !1301
  br i1 %cmp6.i510, label %for.body7.i, label %for.end81.i, !dbg !1301

for.body7.i:                                      ; preds = %for.cond5.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i499}, i64 0, metadata !1304) #5, !dbg !1305
  %arrayidx.i511 = getelementptr inbounds i32* %513, i64 %indvars.iv.next433.i, !dbg !1305
  %518 = load i32* %arrayidx.i511, align 4, !dbg !1305, !tbaa !452
  %cmp8.i512 = icmp sgt i32 %518, 0, !dbg !1305
  br i1 %cmp8.i512, label %if.then.i520, label %for.cond5.i, !dbg !1305

if.then.i520:                                     ; preds = %for.body7.i
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i498}, i64 0, metadata !1307) #5, !dbg !1308
  %arrayidx10.i513 = getelementptr inbounds i32* %514, i64 %indvars.iv.next433.i, !dbg !1308
  %519 = load i32* %arrayidx10.i513, align 4, !dbg !1308, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %519}, i64 0, metadata !1316) #5, !dbg !1308
  %add.i514 = add i32 %518, -1, !dbg !1317
  %sub13.i = add i32 %add.i514, %519, !dbg !1317
  call void @llvm.dbg.value(metadata !{i32 %sub13.i}, i64 0, metadata !1318) #5, !dbg !1317
  %sub14.neg.i = add i32 %colstart.0.ph.i506, -1, !dbg !1319
  %add15.neg.i = add i32 %sub14.neg.i, %519, !dbg !1319
  %sub16.i = sub i32 %add15.neg.i, %sub13.i, !dbg !1319
  call void @llvm.dbg.value(metadata !{i32 %sub16.i}, i64 0, metadata !1315) #5, !dbg !1319
  %mul17.i = shl nsw i32 %irowA.0.i509, 1, !dbg !1320
  call void @llvm.dbg.value(metadata !{i32 %mul17.i}, i64 0, metadata !1321) #5, !dbg !1320
  %add18381.i = or i32 %mul17.i, 1, !dbg !1322
  call void @llvm.dbg.value(metadata !{i32 %add18381.i}, i64 0, metadata !1323) #5, !dbg !1322
  %idxprom19.i = sext i32 %mul17.i to i64, !dbg !1324
  %arrayidx20.i515 = getelementptr inbounds double* %colB0.0412.i, i64 %idxprom19.i, !dbg !1324
  %520 = load double* %arrayidx20.i515, align 8, !dbg !1324, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %520}, i64 0, metadata !1325) #5, !dbg !1324
  %idxprom21.i = sext i32 %add18381.i to i64, !dbg !1324
  %arrayidx22.i = getelementptr inbounds double* %colB0.0412.i, i64 %idxprom21.i, !dbg !1324
  %521 = load double* %arrayidx22.i, align 8, !dbg !1324, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %521}, i64 0, metadata !1326) #5, !dbg !1324
  %add.ptr.sum382.i = add i64 %idxprom19.i, %idx.ext.i501, !dbg !1327
  %arrayidx24.i516 = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr.sum382.i, !dbg !1327
  %522 = load double* %arrayidx24.i516, align 8, !dbg !1327, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %522}, i64 0, metadata !1328) #5, !dbg !1327
  %add.ptr.sum383.i = add i64 %idxprom21.i, %idx.ext.i501, !dbg !1327
  %arrayidx26.i517 = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr.sum383.i, !dbg !1327
  %523 = load double* %arrayidx26.i517, align 8, !dbg !1327, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %523}, i64 0, metadata !1329) #5, !dbg !1327
  %add.ptr3.sum384.i = add i64 %idxprom19.i, %add.ptr.sum.i502, !dbg !1330
  %arrayidx28.i518 = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr3.sum384.i, !dbg !1330
  %524 = load double* %arrayidx28.i518, align 8, !dbg !1330, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %524}, i64 0, metadata !1331) #5, !dbg !1330
  %add.ptr3.sum385.i = add i64 %idxprom21.i, %add.ptr.sum.i502, !dbg !1330
  %arrayidx30.i519 = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr3.sum385.i, !dbg !1330
  %525 = load double* %arrayidx30.i519, align 8, !dbg !1330, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %525}, i64 0, metadata !1332) #5, !dbg !1330
  call void @llvm.dbg.value(metadata !{i32 %519}, i64 0, metadata !1333) #5, !dbg !1334
  call void @llvm.dbg.value(metadata !{i32 %sub16.i}, i64 0, metadata !1335) #5, !dbg !1334
  %cmp32404.i = icmp sgt i32 %519, %sub13.i, !dbg !1334
  br i1 %cmp32404.i, label %for.cond5.outer.i, label %for.body33.lr.ph.i, !dbg !1334

for.body33.lr.ph.i:                               ; preds = %if.then.i520
  %526 = sub i32 %colstart.0.ph.i506, %518, !dbg !1334
  %527 = sext i32 %526 to i64
  %528 = sext i32 %519 to i64, !dbg !1334
  br label %for.body33.i, !dbg !1334

for.body33.i:                                     ; preds = %for.body33.i, %for.body33.lr.ph.i
  %indvars.iv436.i = phi i64 [ %indvars.iv.next437.i, %for.body33.i ], [ %528, %for.body33.lr.ph.i ], !dbg !1334
  %indvars.iv434.i = phi i64 [ %indvars.iv.next435.i, %for.body33.i ], [ %527, %for.body33.lr.ph.i ]
  %529 = trunc i64 %indvars.iv434.i to i32, !dbg !1311
  %mul34.i521 = shl nsw i32 %529, 1, !dbg !1311
  %idxprom35.i522 = sext i32 %mul34.i521 to i64, !dbg !1311
  call void @llvm.dbg.value(metadata !{double** %entriesA.i490}, i64 0, metadata !1310) #5, !dbg !1311
  %arrayidx36.i523 = getelementptr inbounds double* %515, i64 %idxprom35.i522, !dbg !1311
  %530 = load double* %arrayidx36.i523, align 8, !dbg !1311, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %530}, i64 0, metadata !1336) #5, !dbg !1311
  %add38386.i = or i32 %mul34.i521, 1, !dbg !1337
  %idxprom39.i = sext i32 %add38386.i to i64, !dbg !1337
  %arrayidx40.i = getelementptr inbounds double* %515, i64 %idxprom39.i, !dbg !1337
  %531 = load double* %arrayidx40.i, align 8, !dbg !1337, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %531}, i64 0, metadata !1338) #5, !dbg !1337
  %532 = trunc i64 %indvars.iv436.i to i32, !dbg !1339
  %mul41.i524 = shl nsw i32 %532, 1, !dbg !1339
  call void @llvm.dbg.value(metadata !{i32 %mul41.i524}, i64 0, metadata !1321) #5, !dbg !1339
  %add42387.i = or i32 %mul41.i524, 1, !dbg !1340
  call void @llvm.dbg.value(metadata !{i32 %add42387.i}, i64 0, metadata !1323) #5, !dbg !1340
  %mul43.i525 = fmul double %520, %530, !dbg !1341
  %mul44.i526 = fmul double %521, %531, !dbg !1341
  %sub45.i527 = fsub double %mul43.i525, %mul44.i526, !dbg !1341
  %idxprom46.i = sext i32 %mul41.i524 to i64, !dbg !1341
  %arrayidx47.i = getelementptr inbounds double* %colB0.0412.i, i64 %idxprom46.i, !dbg !1341
  %533 = load double* %arrayidx47.i, align 8, !dbg !1341, !tbaa !512
  %sub48.i = fsub double %533, %sub45.i527, !dbg !1341
  store double %sub48.i, double* %arrayidx47.i, align 8, !dbg !1341, !tbaa !512
  %mul49.i528 = fmul double %521, %530, !dbg !1342
  %mul50.i = fmul double %520, %531, !dbg !1342
  %add51.i529 = fadd double %mul49.i528, %mul50.i, !dbg !1342
  %idxprom52.i = sext i32 %add42387.i to i64, !dbg !1342
  %arrayidx53.i = getelementptr inbounds double* %colB0.0412.i, i64 %idxprom52.i, !dbg !1342
  %534 = load double* %arrayidx53.i, align 8, !dbg !1342, !tbaa !512
  %sub54.i530 = fsub double %534, %add51.i529, !dbg !1342
  store double %sub54.i530, double* %arrayidx53.i, align 8, !dbg !1342, !tbaa !512
  %mul55.i531 = fmul double %522, %530, !dbg !1343
  %mul56.i532 = fmul double %523, %531, !dbg !1343
  %sub57.i = fsub double %mul55.i531, %mul56.i532, !dbg !1343
  %add.ptr.sum388.i = add i64 %idxprom46.i, %idx.ext.i501, !dbg !1343
  %arrayidx59.i533 = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr.sum388.i, !dbg !1343
  %535 = load double* %arrayidx59.i533, align 8, !dbg !1343, !tbaa !512
  %sub60.i = fsub double %535, %sub57.i, !dbg !1343
  store double %sub60.i, double* %arrayidx59.i533, align 8, !dbg !1343, !tbaa !512
  %mul61.i534 = fmul double %523, %530, !dbg !1344
  %mul62.i = fmul double %522, %531, !dbg !1344
  %add63.i535 = fadd double %mul61.i534, %mul62.i, !dbg !1344
  %add.ptr.sum389.i = add i64 %idxprom52.i, %idx.ext.i501, !dbg !1344
  %arrayidx65.i = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr.sum389.i, !dbg !1344
  %536 = load double* %arrayidx65.i, align 8, !dbg !1344, !tbaa !512
  %sub66.i536 = fsub double %536, %add63.i535, !dbg !1344
  store double %sub66.i536, double* %arrayidx65.i, align 8, !dbg !1344, !tbaa !512
  %mul67.i537 = fmul double %524, %530, !dbg !1345
  %mul68.i = fmul double %525, %531, !dbg !1345
  %sub69.i = fsub double %mul67.i537, %mul68.i, !dbg !1345
  %add.ptr3.sum390.i = add i64 %idxprom46.i, %add.ptr.sum.i502, !dbg !1345
  %arrayidx71.i538 = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr3.sum390.i, !dbg !1345
  %537 = load double* %arrayidx71.i538, align 8, !dbg !1345, !tbaa !512
  %sub72.i539 = fsub double %537, %sub69.i, !dbg !1345
  store double %sub72.i539, double* %arrayidx71.i538, align 8, !dbg !1345, !tbaa !512
  %mul73.i = fmul double %525, %530, !dbg !1346
  %mul74.i540 = fmul double %524, %531, !dbg !1346
  %add75.i = fadd double %mul73.i, %mul74.i540, !dbg !1346
  %add.ptr3.sum391.i = add i64 %idxprom52.i, %add.ptr.sum.i502, !dbg !1346
  %arrayidx77.i = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr3.sum391.i, !dbg !1346
  %538 = load double* %arrayidx77.i, align 8, !dbg !1346, !tbaa !512
  %sub78.i = fsub double %538, %add75.i, !dbg !1346
  store double %sub78.i, double* %arrayidx77.i, align 8, !dbg !1346, !tbaa !512
  %indvars.iv.next437.i = add i64 %indvars.iv436.i, 1, !dbg !1334
  %indvars.iv.next435.i = add i64 %indvars.iv434.i, 1, !dbg !1334
  %cmp32.i = icmp slt i32 %532, %sub13.i, !dbg !1334
  br i1 %cmp32.i, label %for.body33.i, label %for.cond5.outer.i, !dbg !1334

for.end81.i:                                      ; preds = %for.cond5.i
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i497}, i64 0, metadata !1296) #5, !dbg !1314
  %add.ptr84.i = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr3.sum.i503, !dbg !1314
  call void @llvm.dbg.value(metadata !{double* %add.ptr84.i}, i64 0, metadata !1291) #5, !dbg !1314
  %add86.i = add nsw i32 %jcolB.0413.i, 3, !dbg !1293
  call void @llvm.dbg.value(metadata !{i32 %add86.i}, i64 0, metadata !1292) #5, !dbg !1293
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i494}, i64 0, metadata !1295) #5, !dbg !1293
  %cmp.i541 = icmp slt i32 %add86.i, %sub410.i, !dbg !1293
  br i1 %cmp.i541, label %for.body.i505, label %for.end87.i, !dbg !1293

for.end87.i:                                      ; preds = %for.end81.i, %sw.bb28
  %jcolB.0.lcssa.i542 = phi i32 [ 0, %sw.bb28 ], [ %add86.i, %for.end81.i ]
  %colB0.0.lcssa.i543 = phi double* [ %508, %sw.bb28 ], [ %add.ptr84.i, %for.end81.i ]
  %cmp89.i = icmp eq i32 %jcolB.0.lcssa.i542, %sub410.i, !dbg !1347
  br i1 %cmp89.i, label %if.then90.i, label %if.else.i568, !dbg !1347

if.then90.i:                                      ; preds = %for.end87.i
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i497}, i64 0, metadata !1296) #5, !dbg !1348
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i497}, i64 0, metadata !205), !dbg !1348
  %539 = load i32* %nrowB.i497, align 4, !dbg !1348, !tbaa !452
  %mul91.i544 = shl nsw i32 %539, 1, !dbg !1348
  %idx.ext92.i = sext i32 %mul91.i544 to i64, !dbg !1348
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i496}, i64 0, metadata !1300) #5, !dbg !1350
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i496}, i64 0, metadata !204), !dbg !1350
  %540 = load i32* %nrowA.i496, align 4, !dbg !1350, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32* %nentA.i495}, i64 0, metadata !1303) #5, !dbg !1350
  call void @llvm.dbg.value(metadata !{i32* %nentA.i495}, i64 0, metadata !203), !dbg !1350
  %541 = load i32* %nentA.i495, align 4, !dbg !1350, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %541}, i64 0, metadata !1315) #5, !dbg !1350
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i499}, i64 0, metadata !1304) #5, !dbg !1352
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i499}, i64 0, metadata !208), !dbg !1352
  %542 = load i32** %sizesA.i499, align 8, !dbg !1352, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i498}, i64 0, metadata !1307) #5, !dbg !1354
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i498}, i64 0, metadata !207), !dbg !1354
  %543 = load i32** %firstlocsA.i498, align 8, !dbg !1354, !tbaa !447
  call void @llvm.dbg.value(metadata !{double** %entriesA.i490}, i64 0, metadata !1310) #5, !dbg !1356
  call void @llvm.dbg.value(metadata !{double** %entriesA.i490}, i64 0, metadata !190), !dbg !1356
  %544 = load double** %entriesA.i490, align 8, !dbg !1356, !tbaa !447
  br label %for.cond95.outer.i, !dbg !1350

for.cond95.outer.i:                               ; preds = %if.then101.i, %for.body123.i, %if.then90.i
  %colstart.2.ph.i545 = phi i32 [ %541, %if.then90.i ], [ %sub110.i, %for.body123.i ], [ %sub110.i, %if.then101.i ]
  %irowA.1.in.ph.i546 = phi i32 [ %540, %if.then90.i ], [ %irowA.1.i550, %for.body123.i ], [ %irowA.1.i550, %if.then101.i ]
  %545 = sext i32 %irowA.1.in.ph.i546 to i64
  br label %for.cond95.i

for.cond95.i:                                     ; preds = %for.body97.i552, %for.cond95.outer.i
  %indvars.iv.i547 = phi i64 [ %545, %for.cond95.outer.i ], [ %indvars.iv.next.i549, %for.body97.i552 ]
  %irowA.1.in.i548 = phi i32 [ %irowA.1.in.ph.i546, %for.cond95.outer.i ], [ %irowA.1.i550, %for.body97.i552 ]
  %indvars.iv.next.i549 = add i64 %indvars.iv.i547, -1, !dbg !1352
  %irowA.1.i550 = add nsw i32 %irowA.1.in.i548, -1, !dbg !1350
  %546 = trunc i64 %indvars.iv.i547 to i32, !dbg !1350
  %cmp96.i = icmp sgt i32 %546, 0, !dbg !1350
  br i1 %cmp96.i, label %for.body97.i552, label %sw.epilog41, !dbg !1350

for.body97.i552:                                  ; preds = %for.cond95.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i499}, i64 0, metadata !1304) #5, !dbg !1352
  %arrayidx99.i551 = getelementptr inbounds i32* %542, i64 %indvars.iv.next.i549, !dbg !1352
  %547 = load i32* %arrayidx99.i551, align 4, !dbg !1352, !tbaa !452
  %cmp100.i = icmp sgt i32 %547, 0, !dbg !1352
  br i1 %cmp100.i, label %if.then101.i, label %for.cond95.i, !dbg !1352

if.then101.i:                                     ; preds = %for.body97.i552
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i498}, i64 0, metadata !1307) #5, !dbg !1354
  %arrayidx103.i553 = getelementptr inbounds i32* %543, i64 %indvars.iv.next.i549, !dbg !1354
  %548 = load i32* %arrayidx103.i553, align 4, !dbg !1354, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %548}, i64 0, metadata !1316) #5, !dbg !1354
  %add106.i554 = add i32 %547, -1, !dbg !1359
  %sub107.i = add i32 %add106.i554, %548, !dbg !1359
  call void @llvm.dbg.value(metadata !{i32 %sub107.i}, i64 0, metadata !1318) #5, !dbg !1359
  %sub108.neg.i = add i32 %colstart.2.ph.i545, -1, !dbg !1360
  %add109.neg.i = add i32 %sub108.neg.i, %548, !dbg !1360
  %sub110.i = sub i32 %add109.neg.i, %sub107.i, !dbg !1360
  call void @llvm.dbg.value(metadata !{i32 %sub110.i}, i64 0, metadata !1315) #5, !dbg !1360
  %mul111.i = shl nsw i32 %irowA.1.i550, 1, !dbg !1361
  call void @llvm.dbg.value(metadata !{i32 %mul111.i}, i64 0, metadata !1321) #5, !dbg !1361
  %add112375.i = or i32 %mul111.i, 1, !dbg !1362
  call void @llvm.dbg.value(metadata !{i32 %add112375.i}, i64 0, metadata !1323) #5, !dbg !1362
  %idxprom113.i = sext i32 %mul111.i to i64, !dbg !1363
  %arrayidx114.i555 = getelementptr inbounds double* %colB0.0.lcssa.i543, i64 %idxprom113.i, !dbg !1363
  %549 = load double* %arrayidx114.i555, align 8, !dbg !1363, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %549}, i64 0, metadata !1325) #5, !dbg !1363
  %idxprom115.i = sext i32 %add112375.i to i64, !dbg !1363
  %arrayidx116.i = getelementptr inbounds double* %colB0.0.lcssa.i543, i64 %idxprom115.i, !dbg !1363
  %550 = load double* %arrayidx116.i, align 8, !dbg !1363, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %550}, i64 0, metadata !1326) #5, !dbg !1363
  %add.ptr93.sum.i = add i64 %idxprom113.i, %idx.ext92.i, !dbg !1364
  %arrayidx118.i = getelementptr inbounds double* %colB0.0.lcssa.i543, i64 %add.ptr93.sum.i, !dbg !1364
  %551 = load double* %arrayidx118.i, align 8, !dbg !1364, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %551}, i64 0, metadata !1328) #5, !dbg !1364
  %add.ptr93.sum376.i = add i64 %idxprom115.i, %idx.ext92.i, !dbg !1364
  %arrayidx120.i = getelementptr inbounds double* %colB0.0.lcssa.i543, i64 %add.ptr93.sum376.i, !dbg !1364
  %552 = load double* %arrayidx120.i, align 8, !dbg !1364, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %552}, i64 0, metadata !1329) #5, !dbg !1364
  call void @llvm.dbg.value(metadata !{i32 %548}, i64 0, metadata !1333) #5, !dbg !1365
  call void @llvm.dbg.value(metadata !{i32 %sub110.i}, i64 0, metadata !1335) #5, !dbg !1365
  %cmp122394.i = icmp sgt i32 %548, %sub107.i, !dbg !1365
  br i1 %cmp122394.i, label %for.cond95.outer.i, label %for.body123.lr.ph.i, !dbg !1365

for.body123.lr.ph.i:                              ; preds = %if.then101.i
  %553 = sub i32 %colstart.2.ph.i545, %547, !dbg !1365
  %554 = sext i32 %553 to i64
  %555 = sext i32 %548 to i64, !dbg !1365
  br label %for.body123.i, !dbg !1365

for.body123.i:                                    ; preds = %for.body123.i, %for.body123.lr.ph.i
  %indvars.iv420.i = phi i64 [ %indvars.iv.next421.i, %for.body123.i ], [ %555, %for.body123.lr.ph.i ], !dbg !1365
  %indvars.iv418.i = phi i64 [ %indvars.iv.next419.i, %for.body123.i ], [ %554, %for.body123.lr.ph.i ]
  %556 = trunc i64 %indvars.iv418.i to i32, !dbg !1356
  %mul124.i = shl nsw i32 %556, 1, !dbg !1356
  %idxprom125.i = sext i32 %mul124.i to i64, !dbg !1356
  call void @llvm.dbg.value(metadata !{double** %entriesA.i490}, i64 0, metadata !1310) #5, !dbg !1356
  %arrayidx126.i = getelementptr inbounds double* %544, i64 %idxprom125.i, !dbg !1356
  %557 = load double* %arrayidx126.i, align 8, !dbg !1356, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %557}, i64 0, metadata !1336) #5, !dbg !1356
  %add128377.i = or i32 %mul124.i, 1, !dbg !1366
  %idxprom129.i = sext i32 %add128377.i to i64, !dbg !1366
  %arrayidx130.i = getelementptr inbounds double* %544, i64 %idxprom129.i, !dbg !1366
  %558 = load double* %arrayidx130.i, align 8, !dbg !1366, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %558}, i64 0, metadata !1338) #5, !dbg !1366
  %559 = trunc i64 %indvars.iv420.i to i32, !dbg !1367
  %mul131.i556 = shl nsw i32 %559, 1, !dbg !1367
  call void @llvm.dbg.value(metadata !{i32 %mul131.i556}, i64 0, metadata !1321) #5, !dbg !1367
  %add132378.i = or i32 %mul131.i556, 1, !dbg !1368
  call void @llvm.dbg.value(metadata !{i32 %add132378.i}, i64 0, metadata !1323) #5, !dbg !1368
  %mul133.i557 = fmul double %549, %557, !dbg !1369
  %mul134.i558 = fmul double %550, %558, !dbg !1369
  %sub135.i = fsub double %mul133.i557, %mul134.i558, !dbg !1369
  %idxprom136.i559 = sext i32 %mul131.i556 to i64, !dbg !1369
  %arrayidx137.i560 = getelementptr inbounds double* %colB0.0.lcssa.i543, i64 %idxprom136.i559, !dbg !1369
  %560 = load double* %arrayidx137.i560, align 8, !dbg !1369, !tbaa !512
  %sub138.i561 = fsub double %560, %sub135.i, !dbg !1369
  store double %sub138.i561, double* %arrayidx137.i560, align 8, !dbg !1369, !tbaa !512
  %mul139.i562 = fmul double %550, %557, !dbg !1370
  %mul140.i563 = fmul double %549, %558, !dbg !1370
  %add141.i564 = fadd double %mul139.i562, %mul140.i563, !dbg !1370
  %idxprom142.i = sext i32 %add132378.i to i64, !dbg !1370
  %arrayidx143.i = getelementptr inbounds double* %colB0.0.lcssa.i543, i64 %idxprom142.i, !dbg !1370
  %561 = load double* %arrayidx143.i, align 8, !dbg !1370, !tbaa !512
  %sub144.i = fsub double %561, %add141.i564, !dbg !1370
  store double %sub144.i, double* %arrayidx143.i, align 8, !dbg !1370, !tbaa !512
  %mul145.i = fmul double %551, %557, !dbg !1371
  %mul146.i = fmul double %552, %558, !dbg !1371
  %sub147.i = fsub double %mul145.i, %mul146.i, !dbg !1371
  %add.ptr93.sum379.i = add i64 %idxprom136.i559, %idx.ext92.i, !dbg !1371
  %arrayidx149.i565 = getelementptr inbounds double* %colB0.0.lcssa.i543, i64 %add.ptr93.sum379.i, !dbg !1371
  %562 = load double* %arrayidx149.i565, align 8, !dbg !1371, !tbaa !512
  %sub150.i = fsub double %562, %sub147.i, !dbg !1371
  store double %sub150.i, double* %arrayidx149.i565, align 8, !dbg !1371, !tbaa !512
  %mul151.i566 = fmul double %552, %557, !dbg !1372
  %mul152.i = fmul double %551, %558, !dbg !1372
  %add153.i = fadd double %mul151.i566, %mul152.i, !dbg !1372
  %add.ptr93.sum380.i = add i64 %idxprom142.i, %idx.ext92.i, !dbg !1372
  %arrayidx155.i = getelementptr inbounds double* %colB0.0.lcssa.i543, i64 %add.ptr93.sum380.i, !dbg !1372
  %563 = load double* %arrayidx155.i, align 8, !dbg !1372, !tbaa !512
  %sub156.i567 = fsub double %563, %add153.i, !dbg !1372
  store double %sub156.i567, double* %arrayidx155.i, align 8, !dbg !1372, !tbaa !512
  %indvars.iv.next421.i = add i64 %indvars.iv420.i, 1, !dbg !1365
  %indvars.iv.next419.i = add i64 %indvars.iv418.i, 1, !dbg !1365
  %cmp122.i = icmp slt i32 %559, %sub107.i, !dbg !1365
  br i1 %cmp122.i, label %for.body123.i, label %for.cond95.outer.i, !dbg !1365

if.else.i568:                                     ; preds = %for.end87.i
  %sub165.i = add nsw i32 %509, -1, !dbg !1373
  %cmp166.i = icmp eq i32 %jcolB.0.lcssa.i542, %sub165.i, !dbg !1373
  br i1 %cmp166.i, label %if.then167.i, label %sw.epilog41, !dbg !1373

if.then167.i:                                     ; preds = %if.else.i568
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i496}, i64 0, metadata !1300) #5, !dbg !1374
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i496}, i64 0, metadata !204), !dbg !1374
  %564 = load i32* %nrowA.i496, align 4, !dbg !1374, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32* %nentA.i495}, i64 0, metadata !1303) #5, !dbg !1374
  call void @llvm.dbg.value(metadata !{i32* %nentA.i495}, i64 0, metadata !203), !dbg !1374
  %565 = load i32* %nentA.i495, align 4, !dbg !1374, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %565}, i64 0, metadata !1315) #5, !dbg !1374
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i499}, i64 0, metadata !1304) #5, !dbg !1377
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i499}, i64 0, metadata !208), !dbg !1377
  %566 = load i32** %sizesA.i499, align 8, !dbg !1377, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i498}, i64 0, metadata !1307) #5, !dbg !1379
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i498}, i64 0, metadata !207), !dbg !1379
  %567 = load i32** %firstlocsA.i498, align 8, !dbg !1379, !tbaa !447
  call void @llvm.dbg.value(metadata !{double** %entriesA.i490}, i64 0, metadata !1310) #5, !dbg !1381
  call void @llvm.dbg.value(metadata !{double** %entriesA.i490}, i64 0, metadata !190), !dbg !1381
  %568 = load double** %entriesA.i490, align 8, !dbg !1381, !tbaa !447
  br label %for.cond169.outer.i, !dbg !1374

for.cond169.outer.i:                              ; preds = %if.then175.i585, %for.body193.i, %if.then167.i
  %colstart.4.ph.i569 = phi i32 [ %565, %if.then167.i ], [ %sub184.i, %for.body193.i ], [ %sub184.i, %if.then175.i585 ]
  %irowA.2.in.ph.i570 = phi i32 [ %564, %if.then167.i ], [ %irowA.2.i572, %for.body193.i ], [ %irowA.2.i572, %if.then175.i585 ]
  %569 = sext i32 %irowA.2.in.ph.i570 to i64
  br label %for.cond169.i

for.cond169.i:                                    ; preds = %for.body171.i576, %for.cond169.outer.i
  %indvars.iv424.i = phi i64 [ %569, %for.cond169.outer.i ], [ %indvars.iv.next425.i, %for.body171.i576 ]
  %irowA.2.in.i571 = phi i32 [ %irowA.2.in.ph.i570, %for.cond169.outer.i ], [ %irowA.2.i572, %for.body171.i576 ]
  %indvars.iv.next425.i = add i64 %indvars.iv424.i, -1, !dbg !1377
  %irowA.2.i572 = add nsw i32 %irowA.2.in.i571, -1, !dbg !1374
  %570 = trunc i64 %indvars.iv424.i to i32, !dbg !1374
  %cmp170.i573 = icmp sgt i32 %570, 0, !dbg !1374
  br i1 %cmp170.i573, label %for.body171.i576, label %sw.epilog41, !dbg !1374

for.body171.i576:                                 ; preds = %for.cond169.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i499}, i64 0, metadata !1304) #5, !dbg !1377
  %arrayidx173.i574 = getelementptr inbounds i32* %566, i64 %indvars.iv.next425.i, !dbg !1377
  %571 = load i32* %arrayidx173.i574, align 4, !dbg !1377, !tbaa !452
  %cmp174.i575 = icmp sgt i32 %571, 0, !dbg !1377
  br i1 %cmp174.i575, label %if.then175.i585, label %for.cond169.i, !dbg !1377

if.then175.i585:                                  ; preds = %for.body171.i576
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i498}, i64 0, metadata !1307) #5, !dbg !1379
  %arrayidx177.i577 = getelementptr inbounds i32* %567, i64 %indvars.iv.next425.i, !dbg !1379
  %572 = load i32* %arrayidx177.i577, align 4, !dbg !1379, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %572}, i64 0, metadata !1316) #5, !dbg !1379
  %add180.i578 = add i32 %571, -1, !dbg !1384
  %sub181.i579 = add i32 %add180.i578, %572, !dbg !1384
  call void @llvm.dbg.value(metadata !{i32 %sub181.i579}, i64 0, metadata !1318) #5, !dbg !1384
  %sub182.neg.i = add i32 %colstart.4.ph.i569, -1, !dbg !1385
  %add183.neg.i = add i32 %sub182.neg.i, %572, !dbg !1385
  %sub184.i = sub i32 %add183.neg.i, %sub181.i579, !dbg !1385
  call void @llvm.dbg.value(metadata !{i32 %sub184.i}, i64 0, metadata !1315) #5, !dbg !1385
  %mul185.i580 = shl nsw i32 %irowA.2.i572, 1, !dbg !1386
  call void @llvm.dbg.value(metadata !{i32 %mul185.i580}, i64 0, metadata !1321) #5, !dbg !1386
  %add186372.i = or i32 %mul185.i580, 1, !dbg !1387
  call void @llvm.dbg.value(metadata !{i32 %add186372.i}, i64 0, metadata !1323) #5, !dbg !1387
  %idxprom187.i581 = sext i32 %mul185.i580 to i64, !dbg !1388
  %arrayidx188.i582 = getelementptr inbounds double* %colB0.0.lcssa.i543, i64 %idxprom187.i581, !dbg !1388
  %573 = load double* %arrayidx188.i582, align 8, !dbg !1388, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %573}, i64 0, metadata !1325) #5, !dbg !1388
  %idxprom189.i583 = sext i32 %add186372.i to i64, !dbg !1388
  %arrayidx190.i584 = getelementptr inbounds double* %colB0.0.lcssa.i543, i64 %idxprom189.i583, !dbg !1388
  %574 = load double* %arrayidx190.i584, align 8, !dbg !1388, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %574}, i64 0, metadata !1326) #5, !dbg !1388
  call void @llvm.dbg.value(metadata !{i32 %572}, i64 0, metadata !1333) #5, !dbg !1389
  call void @llvm.dbg.value(metadata !{i32 %sub184.i}, i64 0, metadata !1335) #5, !dbg !1389
  %cmp192398.i = icmp sgt i32 %572, %sub181.i579, !dbg !1389
  br i1 %cmp192398.i, label %for.cond169.outer.i, label %for.body193.lr.ph.i, !dbg !1389

for.body193.lr.ph.i:                              ; preds = %if.then175.i585
  %575 = sub i32 %colstart.4.ph.i569, %571, !dbg !1389
  %576 = sext i32 %575 to i64
  %577 = sext i32 %572 to i64, !dbg !1389
  br label %for.body193.i, !dbg !1389

for.body193.i:                                    ; preds = %for.body193.i, %for.body193.lr.ph.i
  %indvars.iv428.i = phi i64 [ %indvars.iv.next429.i, %for.body193.i ], [ %577, %for.body193.lr.ph.i ], !dbg !1389
  %indvars.iv426.i = phi i64 [ %indvars.iv.next427.i, %for.body193.i ], [ %576, %for.body193.lr.ph.i ]
  %578 = trunc i64 %indvars.iv426.i to i32, !dbg !1381
  %mul194.i = shl nsw i32 %578, 1, !dbg !1381
  %idxprom195.i586 = sext i32 %mul194.i to i64, !dbg !1381
  call void @llvm.dbg.value(metadata !{double** %entriesA.i490}, i64 0, metadata !1310) #5, !dbg !1381
  %arrayidx196.i587 = getelementptr inbounds double* %568, i64 %idxprom195.i586, !dbg !1381
  %579 = load double* %arrayidx196.i587, align 8, !dbg !1381, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %579}, i64 0, metadata !1336) #5, !dbg !1381
  %add198373.i = or i32 %mul194.i, 1, !dbg !1390
  %idxprom199.i588 = sext i32 %add198373.i to i64, !dbg !1390
  %arrayidx200.i589 = getelementptr inbounds double* %568, i64 %idxprom199.i588, !dbg !1390
  %580 = load double* %arrayidx200.i589, align 8, !dbg !1390, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %580}, i64 0, metadata !1338) #5, !dbg !1390
  %581 = trunc i64 %indvars.iv428.i to i32, !dbg !1391
  %mul201.i590 = shl nsw i32 %581, 1, !dbg !1391
  call void @llvm.dbg.value(metadata !{i32 %mul201.i590}, i64 0, metadata !1321) #5, !dbg !1391
  %add202374.i = or i32 %mul201.i590, 1, !dbg !1392
  call void @llvm.dbg.value(metadata !{i32 %add202374.i}, i64 0, metadata !1323) #5, !dbg !1392
  %mul203.i = fmul double %573, %579, !dbg !1393
  %mul204.i = fmul double %574, %580, !dbg !1393
  %sub205.i = fsub double %mul203.i, %mul204.i, !dbg !1393
  %idxprom206.i = sext i32 %mul201.i590 to i64, !dbg !1393
  %arrayidx207.i = getelementptr inbounds double* %colB0.0.lcssa.i543, i64 %idxprom206.i, !dbg !1393
  %582 = load double* %arrayidx207.i, align 8, !dbg !1393, !tbaa !512
  %sub208.i = fsub double %582, %sub205.i, !dbg !1393
  store double %sub208.i, double* %arrayidx207.i, align 8, !dbg !1393, !tbaa !512
  %mul209.i591 = fmul double %574, %579, !dbg !1394
  %mul210.i = fmul double %573, %580, !dbg !1394
  %add211.i = fadd double %mul209.i591, %mul210.i, !dbg !1394
  %idxprom212.i = sext i32 %add202374.i to i64, !dbg !1394
  %arrayidx213.i = getelementptr inbounds double* %colB0.0.lcssa.i543, i64 %idxprom212.i, !dbg !1394
  %583 = load double* %arrayidx213.i, align 8, !dbg !1394, !tbaa !512
  %sub214.i = fsub double %583, %add211.i, !dbg !1394
  store double %sub214.i, double* %arrayidx213.i, align 8, !dbg !1394, !tbaa !512
  %indvars.iv.next429.i = add i64 %indvars.iv428.i, 1, !dbg !1389
  %indvars.iv.next427.i = add i64 %indvars.iv426.i, 1, !dbg !1389
  %cmp192.i = icmp slt i32 %581, %sub181.i579, !dbg !1389
  br i1 %cmp192.i, label %for.body193.i, label %for.cond169.outer.i, !dbg !1389

sw.bb29:                                          ; preds = %sw.bb24
  %584 = bitcast double** %entriesA.i592 to i8*, !dbg !1395
  call void @llvm.lifetime.start(i64 8, i8* %584) #5, !dbg !1395
  %585 = bitcast double** %entriesB.i593 to i8*, !dbg !1395
  call void @llvm.lifetime.start(i64 8, i8* %585) #5, !dbg !1395
  %586 = bitcast i32* %inc1.i594 to i8*, !dbg !1395
  call void @llvm.lifetime.start(i64 4, i8* %586) #5, !dbg !1395
  %587 = bitcast i32* %inc2.i595 to i8*, !dbg !1395
  call void @llvm.lifetime.start(i64 4, i8* %587) #5, !dbg !1395
  %588 = bitcast i32* %ncolB.i596 to i8*, !dbg !1395
  call void @llvm.lifetime.start(i64 4, i8* %588) #5, !dbg !1395
  %589 = bitcast i32* %nentA.i597 to i8*, !dbg !1395
  call void @llvm.lifetime.start(i64 4, i8* %589) #5, !dbg !1395
  %590 = bitcast i32* %nrowA.i598 to i8*, !dbg !1395
  call void @llvm.lifetime.start(i64 4, i8* %590) #5, !dbg !1395
  %591 = bitcast i32* %nrowB.i599 to i8*, !dbg !1395
  call void @llvm.lifetime.start(i64 4, i8* %591) #5, !dbg !1395
  %592 = bitcast i32** %indicesA.i600 to i8*, !dbg !1395
  call void @llvm.lifetime.start(i64 8, i8* %592) #5, !dbg !1395
  %593 = bitcast i32** %sizesA.i601 to i8*, !dbg !1395
  call void @llvm.lifetime.start(i64 8, i8* %593) #5, !dbg !1395
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !1397) #5, !dbg !1395
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxB}, i64 0, metadata !1398) #5, !dbg !1399
  call void @llvm.dbg.declare(metadata !{double** %entriesA.i592}, metadata !156) #5, !dbg !1400
  call void @llvm.dbg.declare(metadata !{double** %entriesB.i593}, metadata !157) #5, !dbg !1400
  call void @llvm.dbg.declare(metadata !{i32* %inc1.i594}, metadata !161) #5, !dbg !1401
  call void @llvm.dbg.declare(metadata !{i32* %inc2.i595}, metadata !162) #5, !dbg !1401
  call void @llvm.dbg.declare(metadata !{i32* %ncolB.i596}, metadata !167) #5, !dbg !1402
  call void @llvm.dbg.declare(metadata !{i32* %nentA.i597}, metadata !168) #5, !dbg !1402
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i598}, metadata !169) #5, !dbg !1402
  call void @llvm.dbg.declare(metadata !{i32* %nrowB.i599}, metadata !170) #5, !dbg !1402
  call void @llvm.dbg.declare(metadata !{i32** %indicesA.i600}, metadata !173) #5, !dbg !1403
  call void @llvm.dbg.declare(metadata !{i32** %sizesA.i601}, metadata !174) #5, !dbg !1403
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i598, i32* %nentA.i597, i32** %sizesA.i601, i32** %indicesA.i600, double** %entriesA.i592) #6, !dbg !1404
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i599, i32* %ncolB.i596, i32* %inc1.i594, i32* %inc2.i595, double** %entriesB.i593) #6, !dbg !1405
  call void @llvm.dbg.value(metadata !{double** %entriesB.i593}, i64 0, metadata !1406) #5, !dbg !1407
  call void @llvm.dbg.value(metadata !{double** %entriesB.i593}, i64 0, metadata !157), !dbg !1407
  %594 = load double** %entriesB.i593, align 8, !dbg !1407, !tbaa !447
  call void @llvm.dbg.value(metadata !{double* %594}, i64 0, metadata !1408) #5, !dbg !1407
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1409) #5, !dbg !1410
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i596}, i64 0, metadata !1412) #5, !dbg !1410
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i596}, i64 0, metadata !167), !dbg !1410
  %595 = load i32* %ncolB.i596, align 4, !dbg !1410, !tbaa !452
  %sub378.i = add nsw i32 %595, -2, !dbg !1410
  %cmp379.i = icmp sgt i32 %sub378.i, 0, !dbg !1410
  br i1 %cmp379.i, label %for.body.lr.ph.i606, label %for.end81.i660, !dbg !1410

for.body.lr.ph.i606:                              ; preds = %sw.bb29
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i599}, i64 0, metadata !1413) #5, !dbg !1414
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i599}, i64 0, metadata !170), !dbg !1414
  %596 = load i32* %nrowB.i599, align 4, !dbg !1414, !tbaa !452
  %mul.i602 = shl nsw i32 %596, 1, !dbg !1414
  %idx.ext.i603 = sext i32 %mul.i602 to i64, !dbg !1414
  %add.ptr.sum.i604 = shl nsw i64 %idx.ext.i603, 1, !dbg !1416
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i598}, i64 0, metadata !1417) #5, !dbg !1418
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i598}, i64 0, metadata !169), !dbg !1418
  %597 = load i32* %nrowA.i598, align 4, !dbg !1418, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32* %nentA.i597}, i64 0, metadata !1420) #5, !dbg !1418
  call void @llvm.dbg.value(metadata !{i32* %nentA.i597}, i64 0, metadata !168), !dbg !1418
  %598 = load i32* %nentA.i597, align 4, !dbg !1418, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i601}, i64 0, metadata !1421) #5, !dbg !1422
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i601}, i64 0, metadata !174), !dbg !1422
  %599 = load i32** %sizesA.i601, align 8, !dbg !1422, !tbaa !447
  call void @llvm.dbg.value(metadata !{double** %entriesA.i592}, i64 0, metadata !1424) #5, !dbg !1425
  call void @llvm.dbg.value(metadata !{double** %entriesA.i592}, i64 0, metadata !156), !dbg !1425
  %600 = load double** %entriesA.i592, align 8, !dbg !1425, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i600}, i64 0, metadata !1429) #5, !dbg !1430
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i600}, i64 0, metadata !173), !dbg !1430
  %601 = load i32** %indicesA.i600, align 8, !dbg !1430, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i599}, i64 0, metadata !1413) #5, !dbg !1431
  %add.ptr3.sum.i605 = add i64 %add.ptr.sum.i604, %idx.ext.i603, !dbg !1431
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i596}, i64 0, metadata !1412) #5, !dbg !1410
  br label %for.body.i607, !dbg !1410

for.body.i607:                                    ; preds = %for.end75.i, %for.body.lr.ph.i606
  %jcolB.0381.i = phi i32 [ 0, %for.body.lr.ph.i606 ], [ %add80.i, %for.end75.i ]
  %colB0.0380.i = phi double* [ %594, %for.body.lr.ph.i606 ], [ %add.ptr78.i, %for.end75.i ]
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i599}, i64 0, metadata !1413) #5, !dbg !1414
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i598}, i64 0, metadata !1417) #5, !dbg !1418
  call void @llvm.dbg.value(metadata !{i32* %nentA.i597}, i64 0, metadata !1420) #5, !dbg !1418
  call void @llvm.dbg.value(metadata !{i32 %598}, i64 0, metadata !1432) #5, !dbg !1418
  br label %for.cond5.outer.i610, !dbg !1418

for.cond5.outer.i610:                             ; preds = %for.body25.i, %for.body.i607
  %colstart.0.ph.i608 = phi i32 [ %598, %for.body.i607 ], [ %sub9.i, %for.body25.i ]
  %jcolA.0.in.ph.i609 = phi i32 [ %597, %for.body.i607 ], [ %jcolA.0.i612, %for.body25.i ]
  %602 = sext i32 %jcolA.0.in.ph.i609 to i64
  br label %for.cond5.i614

for.cond5.i614:                                   ; preds = %for.body7.i617, %for.cond5.outer.i610
  %indvars.iv397.i = phi i64 [ %602, %for.cond5.outer.i610 ], [ %indvars.iv.next398.i, %for.body7.i617 ]
  %jcolA.0.in.i611 = phi i32 [ %jcolA.0.in.ph.i609, %for.cond5.outer.i610 ], [ %jcolA.0.i612, %for.body7.i617 ]
  %indvars.iv.next398.i = add i64 %indvars.iv397.i, -1, !dbg !1422
  %jcolA.0.i612 = add nsw i32 %jcolA.0.in.i611, -1, !dbg !1418
  %603 = trunc i64 %indvars.iv397.i to i32, !dbg !1418
  %cmp6.i613 = icmp sgt i32 %603, 0, !dbg !1418
  br i1 %cmp6.i613, label %for.body7.i617, label %for.end75.i, !dbg !1418

for.body7.i617:                                   ; preds = %for.cond5.i614
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i601}, i64 0, metadata !1421) #5, !dbg !1422
  %arrayidx.i615 = getelementptr inbounds i32* %599, i64 %indvars.iv.next398.i, !dbg !1422
  %604 = load i32* %arrayidx.i615, align 4, !dbg !1422, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %604}, i64 0, metadata !1433) #5, !dbg !1422
  %cmp8.i616 = icmp sgt i32 %604, 0, !dbg !1422
  br i1 %cmp8.i616, label %for.body25.lr.ph.i, label %for.cond5.i614, !dbg !1422

for.body25.lr.ph.i:                               ; preds = %for.body7.i617
  %sub9.i = sub i32 %colstart.0.ph.i608, %604, !dbg !1434
  call void @llvm.dbg.value(metadata !{i32 %sub9.i}, i64 0, metadata !1432) #5, !dbg !1434
  %mul10.i = shl nsw i32 %jcolA.0.i612, 1, !dbg !1435
  call void @llvm.dbg.value(metadata !{i32 %mul10.i}, i64 0, metadata !1436) #5, !dbg !1435
  %add351.i = or i32 %mul10.i, 1, !dbg !1437
  call void @llvm.dbg.value(metadata !{i32 %add351.i}, i64 0, metadata !1438) #5, !dbg !1437
  %idxprom11.i = sext i32 %mul10.i to i64, !dbg !1439
  %arrayidx12.i618 = getelementptr inbounds double* %colB0.0380.i, i64 %idxprom11.i, !dbg !1439
  %605 = load double* %arrayidx12.i618, align 8, !dbg !1439, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %605}, i64 0, metadata !1440) #5, !dbg !1439
  %idxprom13.i = sext i32 %add351.i to i64, !dbg !1439
  %arrayidx14.i619 = getelementptr inbounds double* %colB0.0380.i, i64 %idxprom13.i, !dbg !1439
  %606 = load double* %arrayidx14.i619, align 8, !dbg !1439, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %606}, i64 0, metadata !1441) #5, !dbg !1439
  %add.ptr.sum352.i = add i64 %idxprom11.i, %idx.ext.i603, !dbg !1442
  %arrayidx16.i620 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr.sum352.i, !dbg !1442
  %607 = load double* %arrayidx16.i620, align 8, !dbg !1442, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %607}, i64 0, metadata !1443) #5, !dbg !1442
  %add.ptr.sum353.i = add i64 %idxprom13.i, %idx.ext.i603, !dbg !1442
  %arrayidx18.i621 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr.sum353.i, !dbg !1442
  %608 = load double* %arrayidx18.i621, align 8, !dbg !1442, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %608}, i64 0, metadata !1444) #5, !dbg !1442
  %add.ptr3.sum354.i = add i64 %idxprom11.i, %add.ptr.sum.i604, !dbg !1445
  %arrayidx20.i622 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr3.sum354.i, !dbg !1445
  %609 = load double* %arrayidx20.i622, align 8, !dbg !1445, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %609}, i64 0, metadata !1446) #5, !dbg !1445
  %add.ptr3.sum355.i = add i64 %idxprom13.i, %add.ptr.sum.i604, !dbg !1445
  %arrayidx22.i623 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr3.sum355.i, !dbg !1445
  %610 = load double* %arrayidx22.i623, align 8, !dbg !1445, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %610}, i64 0, metadata !1447) #5, !dbg !1445
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1448) #5, !dbg !1449
  call void @llvm.dbg.value(metadata !{i32 %sub9.i}, i64 0, metadata !1450) #5, !dbg !1449
  %611 = sext i32 %sub9.i to i64
  br label %for.body25.i, !dbg !1449

for.body25.i:                                     ; preds = %for.body25.i, %for.body25.lr.ph.i
  %indvars.iv399.i = phi i64 [ %611, %for.body25.lr.ph.i ], [ %indvars.iv.next400.i, %for.body25.i ]
  %ii.0373.i = phi i32 [ 0, %for.body25.lr.ph.i ], [ %inc.i656, %for.body25.i ]
  %612 = trunc i64 %indvars.iv399.i to i32, !dbg !1425
  %mul26.i624 = shl nsw i32 %612, 1, !dbg !1425
  %idxprom27.i = sext i32 %mul26.i624 to i64, !dbg !1425
  call void @llvm.dbg.value(metadata !{double** %entriesA.i592}, i64 0, metadata !1424) #5, !dbg !1425
  %arrayidx28.i625 = getelementptr inbounds double* %600, i64 %idxprom27.i, !dbg !1425
  %613 = load double* %arrayidx28.i625, align 8, !dbg !1425, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %613}, i64 0, metadata !1451) #5, !dbg !1425
  %add30356.i = or i32 %mul26.i624, 1, !dbg !1425
  %idxprom31.i = sext i32 %add30356.i to i64, !dbg !1425
  %arrayidx32.i626 = getelementptr inbounds double* %600, i64 %idxprom31.i, !dbg !1425
  %614 = load double* %arrayidx32.i626, align 8, !dbg !1425, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %614}, i64 0, metadata !1452) #5, !dbg !1425
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i600}, i64 0, metadata !1429) #5, !dbg !1430
  %arrayidx34.i627 = getelementptr inbounds i32* %601, i64 %indvars.iv399.i, !dbg !1430
  %615 = load i32* %arrayidx34.i627, align 4, !dbg !1430, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %615}, i64 0, metadata !1453) #5, !dbg !1430
  %mul35.i628 = shl nsw i32 %615, 1, !dbg !1454
  call void @llvm.dbg.value(metadata !{i32 %mul35.i628}, i64 0, metadata !1436) #5, !dbg !1454
  %add36357.i = or i32 %mul35.i628, 1, !dbg !1455
  call void @llvm.dbg.value(metadata !{i32 %add36357.i}, i64 0, metadata !1438) #5, !dbg !1455
  %mul37.i629 = fmul double %605, %613, !dbg !1456
  %mul38.i = fmul double %606, %614, !dbg !1456
  %sub39.i = fsub double %mul37.i629, %mul38.i, !dbg !1456
  %idxprom40.i630 = sext i32 %mul35.i628 to i64, !dbg !1456
  %arrayidx41.i631 = getelementptr inbounds double* %colB0.0380.i, i64 %idxprom40.i630, !dbg !1456
  %616 = load double* %arrayidx41.i631, align 8, !dbg !1456, !tbaa !512
  %sub42.i = fsub double %616, %sub39.i, !dbg !1456
  store double %sub42.i, double* %arrayidx41.i631, align 8, !dbg !1456, !tbaa !512
  %mul43.i632 = fmul double %606, %613, !dbg !1457
  %mul44.i633 = fmul double %605, %614, !dbg !1457
  %add45.i = fadd double %mul43.i632, %mul44.i633, !dbg !1457
  %idxprom46.i634 = sext i32 %add36357.i to i64, !dbg !1457
  %arrayidx47.i635 = getelementptr inbounds double* %colB0.0380.i, i64 %idxprom46.i634, !dbg !1457
  %617 = load double* %arrayidx47.i635, align 8, !dbg !1457, !tbaa !512
  %sub48.i636 = fsub double %617, %add45.i, !dbg !1457
  store double %sub48.i636, double* %arrayidx47.i635, align 8, !dbg !1457, !tbaa !512
  %mul49.i637 = fmul double %607, %613, !dbg !1458
  %mul50.i638 = fmul double %608, %614, !dbg !1458
  %sub51.i639 = fsub double %mul49.i637, %mul50.i638, !dbg !1458
  %add.ptr.sum358.i = add i64 %idxprom40.i630, %idx.ext.i603, !dbg !1458
  %arrayidx53.i640 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr.sum358.i, !dbg !1458
  %618 = load double* %arrayidx53.i640, align 8, !dbg !1458, !tbaa !512
  %sub54.i641 = fsub double %618, %sub51.i639, !dbg !1458
  store double %sub54.i641, double* %arrayidx53.i640, align 8, !dbg !1458, !tbaa !512
  %mul55.i642 = fmul double %608, %613, !dbg !1459
  %mul56.i643 = fmul double %607, %614, !dbg !1459
  %add57.i644 = fadd double %mul55.i642, %mul56.i643, !dbg !1459
  %add.ptr.sum359.i = add i64 %idxprom46.i634, %idx.ext.i603, !dbg !1459
  %arrayidx59.i645 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr.sum359.i, !dbg !1459
  %619 = load double* %arrayidx59.i645, align 8, !dbg !1459, !tbaa !512
  %sub60.i646 = fsub double %619, %add57.i644, !dbg !1459
  store double %sub60.i646, double* %arrayidx59.i645, align 8, !dbg !1459, !tbaa !512
  %mul61.i647 = fmul double %609, %613, !dbg !1460
  %mul62.i648 = fmul double %610, %614, !dbg !1460
  %sub63.i649 = fsub double %mul61.i647, %mul62.i648, !dbg !1460
  %add.ptr3.sum360.i = add i64 %idxprom40.i630, %add.ptr.sum.i604, !dbg !1460
  %arrayidx65.i650 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr3.sum360.i, !dbg !1460
  %620 = load double* %arrayidx65.i650, align 8, !dbg !1460, !tbaa !512
  %sub66.i651 = fsub double %620, %sub63.i649, !dbg !1460
  store double %sub66.i651, double* %arrayidx65.i650, align 8, !dbg !1460, !tbaa !512
  %mul67.i652 = fmul double %610, %613, !dbg !1461
  %mul68.i653 = fmul double %609, %614, !dbg !1461
  %add69.i = fadd double %mul67.i652, %mul68.i653, !dbg !1461
  %add.ptr3.sum361.i = add i64 %idxprom46.i634, %add.ptr.sum.i604, !dbg !1461
  %arrayidx71.i654 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr3.sum361.i, !dbg !1461
  %621 = load double* %arrayidx71.i654, align 8, !dbg !1461, !tbaa !512
  %sub72.i655 = fsub double %621, %add69.i, !dbg !1461
  store double %sub72.i655, double* %arrayidx71.i654, align 8, !dbg !1461, !tbaa !512
  %inc.i656 = add nsw i32 %ii.0373.i, 1, !dbg !1449
  call void @llvm.dbg.value(metadata !{i32 %inc.i656}, i64 0, metadata !1448) #5, !dbg !1449
  %indvars.iv.next400.i = add i64 %indvars.iv399.i, 1, !dbg !1449
  %exitcond401.i = icmp eq i32 %inc.i656, %604, !dbg !1449
  br i1 %exitcond401.i, label %for.cond5.outer.i610, label %for.body25.i, !dbg !1449

for.end75.i:                                      ; preds = %for.cond5.i614
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i599}, i64 0, metadata !1413) #5, !dbg !1431
  %add.ptr78.i = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr3.sum.i605, !dbg !1431
  call void @llvm.dbg.value(metadata !{double* %add.ptr78.i}, i64 0, metadata !1408) #5, !dbg !1431
  %add80.i = add nsw i32 %jcolB.0381.i, 3, !dbg !1410
  call void @llvm.dbg.value(metadata !{i32 %add80.i}, i64 0, metadata !1409) #5, !dbg !1410
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i596}, i64 0, metadata !1412) #5, !dbg !1410
  %cmp.i657 = icmp slt i32 %add80.i, %sub378.i, !dbg !1410
  br i1 %cmp.i657, label %for.body.i607, label %for.end81.i660, !dbg !1410

for.end81.i660:                                   ; preds = %for.end75.i, %sw.bb29
  %jcolB.0.lcssa.i658 = phi i32 [ 0, %sw.bb29 ], [ %add80.i, %for.end75.i ]
  %colB0.0.lcssa.i659 = phi double* [ %594, %sw.bb29 ], [ %add.ptr78.i, %for.end75.i ]
  %cmp83.i = icmp eq i32 %jcolB.0.lcssa.i658, %sub378.i, !dbg !1462
  br i1 %cmp83.i, label %if.then84.i, label %if.else.i693, !dbg !1462

if.then84.i:                                      ; preds = %for.end81.i660
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i599}, i64 0, metadata !1413) #5, !dbg !1463
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i599}, i64 0, metadata !170), !dbg !1463
  %622 = load i32* %nrowB.i599, align 4, !dbg !1463, !tbaa !452
  %mul85.i = shl nsw i32 %622, 1, !dbg !1463
  %idx.ext86.i = sext i32 %mul85.i to i64, !dbg !1463
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i598}, i64 0, metadata !1417) #5, !dbg !1465
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i598}, i64 0, metadata !169), !dbg !1465
  %623 = load i32* %nrowA.i598, align 4, !dbg !1465, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32* %nentA.i597}, i64 0, metadata !1420) #5, !dbg !1465
  call void @llvm.dbg.value(metadata !{i32* %nentA.i597}, i64 0, metadata !168), !dbg !1465
  %624 = load i32* %nentA.i597, align 4, !dbg !1465, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %624}, i64 0, metadata !1432) #5, !dbg !1465
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i601}, i64 0, metadata !1421) #5, !dbg !1467
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i601}, i64 0, metadata !174), !dbg !1467
  %625 = load i32** %sizesA.i601, align 8, !dbg !1467, !tbaa !447
  call void @llvm.dbg.value(metadata !{double** %entriesA.i592}, i64 0, metadata !1424) #5, !dbg !1469
  call void @llvm.dbg.value(metadata !{double** %entriesA.i592}, i64 0, metadata !156), !dbg !1469
  %626 = load double** %entriesA.i592, align 8, !dbg !1469, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i600}, i64 0, metadata !1429) #5, !dbg !1473
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i600}, i64 0, metadata !173), !dbg !1473
  %627 = load i32** %indicesA.i600, align 8, !dbg !1473, !tbaa !447
  br label %for.cond89.outer.i, !dbg !1465

for.cond89.outer.i:                               ; preds = %for.body109.i692, %if.then84.i
  %colstart.2.ph.i661 = phi i32 [ %624, %if.then84.i ], [ %sub96.i, %for.body109.i692 ]
  %jcolA.1.in.ph.i662 = phi i32 [ %623, %if.then84.i ], [ %jcolA.1.i666, %for.body109.i692 ]
  %628 = sext i32 %jcolA.1.in.ph.i662 to i64
  br label %for.cond89.i

for.cond89.i:                                     ; preds = %for.body91.i, %for.cond89.outer.i
  %indvars.iv.i663 = phi i64 [ %628, %for.cond89.outer.i ], [ %indvars.iv.next.i665, %for.body91.i ]
  %jcolA.1.in.i664 = phi i32 [ %jcolA.1.in.ph.i662, %for.cond89.outer.i ], [ %jcolA.1.i666, %for.body91.i ]
  %indvars.iv.next.i665 = add i64 %indvars.iv.i663, -1, !dbg !1467
  %jcolA.1.i666 = add nsw i32 %jcolA.1.in.i664, -1, !dbg !1465
  %629 = trunc i64 %indvars.iv.i663 to i32, !dbg !1465
  %cmp90.i667 = icmp sgt i32 %629, 0, !dbg !1465
  br i1 %cmp90.i667, label %for.body91.i, label %sw.epilog41, !dbg !1465

for.body91.i:                                     ; preds = %for.cond89.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i601}, i64 0, metadata !1421) #5, !dbg !1467
  %arrayidx93.i = getelementptr inbounds i32* %625, i64 %indvars.iv.next.i665, !dbg !1467
  %630 = load i32* %arrayidx93.i, align 4, !dbg !1467, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %630}, i64 0, metadata !1433) #5, !dbg !1467
  %cmp94.i668 = icmp sgt i32 %630, 0, !dbg !1467
  br i1 %cmp94.i668, label %for.body109.lr.ph.i672, label %for.cond89.i, !dbg !1467

for.body109.lr.ph.i672:                           ; preds = %for.body91.i
  %sub96.i = sub i32 %colstart.2.ph.i661, %630, !dbg !1474
  call void @llvm.dbg.value(metadata !{i32 %sub96.i}, i64 0, metadata !1432) #5, !dbg !1474
  %mul97.i = shl nsw i32 %jcolA.1.i666, 1, !dbg !1475
  call void @llvm.dbg.value(metadata !{i32 %mul97.i}, i64 0, metadata !1436) #5, !dbg !1475
  %add98345.i = or i32 %mul97.i, 1, !dbg !1476
  call void @llvm.dbg.value(metadata !{i32 %add98345.i}, i64 0, metadata !1438) #5, !dbg !1476
  %idxprom99.i = sext i32 %mul97.i to i64, !dbg !1477
  %arrayidx100.i669 = getelementptr inbounds double* %colB0.0.lcssa.i659, i64 %idxprom99.i, !dbg !1477
  %631 = load double* %arrayidx100.i669, align 8, !dbg !1477, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %631}, i64 0, metadata !1440) #5, !dbg !1477
  %idxprom101.i = sext i32 %add98345.i to i64, !dbg !1477
  %arrayidx102.i670 = getelementptr inbounds double* %colB0.0.lcssa.i659, i64 %idxprom101.i, !dbg !1477
  %632 = load double* %arrayidx102.i670, align 8, !dbg !1477, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %632}, i64 0, metadata !1441) #5, !dbg !1477
  %add.ptr87.sum.i = add i64 %idxprom99.i, %idx.ext86.i, !dbg !1478
  %arrayidx104.i671 = getelementptr inbounds double* %colB0.0.lcssa.i659, i64 %add.ptr87.sum.i, !dbg !1478
  %633 = load double* %arrayidx104.i671, align 8, !dbg !1478, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %633}, i64 0, metadata !1443) #5, !dbg !1478
  %add.ptr87.sum346.i = add i64 %idxprom101.i, %idx.ext86.i, !dbg !1478
  %arrayidx106.i = getelementptr inbounds double* %colB0.0.lcssa.i659, i64 %add.ptr87.sum346.i, !dbg !1478
  %634 = load double* %arrayidx106.i, align 8, !dbg !1478, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %634}, i64 0, metadata !1444) #5, !dbg !1478
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1448) #5, !dbg !1479
  call void @llvm.dbg.value(metadata !{i32 %sub96.i}, i64 0, metadata !1450) #5, !dbg !1479
  %635 = sext i32 %sub96.i to i64
  br label %for.body109.i692, !dbg !1479

for.body109.i692:                                 ; preds = %for.body109.i692, %for.body109.lr.ph.i672
  %indvars.iv386.i = phi i64 [ %635, %for.body109.lr.ph.i672 ], [ %indvars.iv.next387.i, %for.body109.i692 ]
  %ii.1363.i = phi i32 [ 0, %for.body109.lr.ph.i672 ], [ %inc146.i, %for.body109.i692 ]
  %636 = trunc i64 %indvars.iv386.i to i32, !dbg !1469
  %mul110.i = shl nsw i32 %636, 1, !dbg !1469
  %idxprom111.i = sext i32 %mul110.i to i64, !dbg !1469
  call void @llvm.dbg.value(metadata !{double** %entriesA.i592}, i64 0, metadata !1424) #5, !dbg !1469
  %arrayidx112.i = getelementptr inbounds double* %626, i64 %idxprom111.i, !dbg !1469
  %637 = load double* %arrayidx112.i, align 8, !dbg !1469, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %637}, i64 0, metadata !1451) #5, !dbg !1469
  %add114347.i = or i32 %mul110.i, 1, !dbg !1469
  %idxprom115.i673 = sext i32 %add114347.i to i64, !dbg !1469
  %arrayidx116.i674 = getelementptr inbounds double* %626, i64 %idxprom115.i673, !dbg !1469
  %638 = load double* %arrayidx116.i674, align 8, !dbg !1469, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %638}, i64 0, metadata !1452) #5, !dbg !1469
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i600}, i64 0, metadata !1429) #5, !dbg !1473
  %arrayidx118.i675 = getelementptr inbounds i32* %627, i64 %indvars.iv386.i, !dbg !1473
  %639 = load i32* %arrayidx118.i675, align 4, !dbg !1473, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %639}, i64 0, metadata !1453) #5, !dbg !1473
  %mul119.i = shl nsw i32 %639, 1, !dbg !1480
  call void @llvm.dbg.value(metadata !{i32 %mul119.i}, i64 0, metadata !1436) #5, !dbg !1480
  %add120348.i = or i32 %mul119.i, 1, !dbg !1481
  call void @llvm.dbg.value(metadata !{i32 %add120348.i}, i64 0, metadata !1438) #5, !dbg !1481
  %mul121.i = fmul double %631, %637, !dbg !1482
  %mul122.i = fmul double %632, %638, !dbg !1482
  %sub123.i676 = fsub double %mul121.i, %mul122.i, !dbg !1482
  %idxprom124.i677 = sext i32 %mul119.i to i64, !dbg !1482
  %arrayidx125.i678 = getelementptr inbounds double* %colB0.0.lcssa.i659, i64 %idxprom124.i677, !dbg !1482
  %640 = load double* %arrayidx125.i678, align 8, !dbg !1482, !tbaa !512
  %sub126.i = fsub double %640, %sub123.i676, !dbg !1482
  store double %sub126.i, double* %arrayidx125.i678, align 8, !dbg !1482, !tbaa !512
  %mul127.i = fmul double %632, %637, !dbg !1483
  %mul128.i679 = fmul double %631, %638, !dbg !1483
  %add129.i = fadd double %mul127.i, %mul128.i679, !dbg !1483
  %idxprom130.i = sext i32 %add120348.i to i64, !dbg !1483
  %arrayidx131.i = getelementptr inbounds double* %colB0.0.lcssa.i659, i64 %idxprom130.i, !dbg !1483
  %641 = load double* %arrayidx131.i, align 8, !dbg !1483, !tbaa !512
  %sub132.i680 = fsub double %641, %add129.i, !dbg !1483
  store double %sub132.i680, double* %arrayidx131.i, align 8, !dbg !1483, !tbaa !512
  %mul133.i681 = fmul double %633, %637, !dbg !1484
  %mul134.i682 = fmul double %634, %638, !dbg !1484
  %sub135.i683 = fsub double %mul133.i681, %mul134.i682, !dbg !1484
  %add.ptr87.sum349.i = add i64 %idxprom124.i677, %idx.ext86.i, !dbg !1484
  %arrayidx137.i684 = getelementptr inbounds double* %colB0.0.lcssa.i659, i64 %add.ptr87.sum349.i, !dbg !1484
  %642 = load double* %arrayidx137.i684, align 8, !dbg !1484, !tbaa !512
  %sub138.i685 = fsub double %642, %sub135.i683, !dbg !1484
  store double %sub138.i685, double* %arrayidx137.i684, align 8, !dbg !1484, !tbaa !512
  %mul139.i686 = fmul double %634, %637, !dbg !1485
  %mul140.i687 = fmul double %633, %638, !dbg !1485
  %add141.i688 = fadd double %mul139.i686, %mul140.i687, !dbg !1485
  %add.ptr87.sum350.i = add i64 %idxprom130.i, %idx.ext86.i, !dbg !1485
  %arrayidx143.i689 = getelementptr inbounds double* %colB0.0.lcssa.i659, i64 %add.ptr87.sum350.i, !dbg !1485
  %643 = load double* %arrayidx143.i689, align 8, !dbg !1485, !tbaa !512
  %sub144.i690 = fsub double %643, %add141.i688, !dbg !1485
  store double %sub144.i690, double* %arrayidx143.i689, align 8, !dbg !1485, !tbaa !512
  %inc146.i = add nsw i32 %ii.1363.i, 1, !dbg !1479
  call void @llvm.dbg.value(metadata !{i32 %inc146.i}, i64 0, metadata !1448) #5, !dbg !1479
  %indvars.iv.next387.i = add i64 %indvars.iv386.i, 1, !dbg !1479
  %exitcond.i691 = icmp eq i32 %inc146.i, %630, !dbg !1479
  br i1 %exitcond.i691, label %for.cond89.outer.i, label %for.body109.i692, !dbg !1479

if.else.i693:                                     ; preds = %for.end81.i660
  %sub153.i = add nsw i32 %595, -1, !dbg !1486
  %cmp154.i = icmp eq i32 %jcolB.0.lcssa.i658, %sub153.i, !dbg !1486
  br i1 %cmp154.i, label %if.then155.i, label %sw.epilog41, !dbg !1486

if.then155.i:                                     ; preds = %if.else.i693
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i598}, i64 0, metadata !1417) #5, !dbg !1487
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i598}, i64 0, metadata !169), !dbg !1487
  %644 = load i32* %nrowA.i598, align 4, !dbg !1487, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32* %nentA.i597}, i64 0, metadata !1420) #5, !dbg !1487
  call void @llvm.dbg.value(metadata !{i32* %nentA.i597}, i64 0, metadata !168), !dbg !1487
  %645 = load i32* %nentA.i597, align 4, !dbg !1487, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %645}, i64 0, metadata !1432) #5, !dbg !1487
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i601}, i64 0, metadata !1421) #5, !dbg !1490
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i601}, i64 0, metadata !174), !dbg !1490
  %646 = load i32** %sizesA.i601, align 8, !dbg !1490, !tbaa !447
  call void @llvm.dbg.value(metadata !{double** %entriesA.i592}, i64 0, metadata !1424) #5, !dbg !1492
  call void @llvm.dbg.value(metadata !{double** %entriesA.i592}, i64 0, metadata !156), !dbg !1492
  %647 = load double** %entriesA.i592, align 8, !dbg !1492, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i600}, i64 0, metadata !1429) #5, !dbg !1496
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i600}, i64 0, metadata !173), !dbg !1496
  %648 = load i32** %indicesA.i600, align 8, !dbg !1496, !tbaa !447
  br label %for.cond157.outer.i, !dbg !1487

for.cond157.outer.i:                              ; preds = %for.body173.i703, %if.then155.i
  %colstart.4.ph.i694 = phi i32 [ %645, %if.then155.i ], [ %sub164.i, %for.body173.i703 ]
  %jcolA.2.in.ph.i695 = phi i32 [ %644, %if.then155.i ], [ %jcolA.2.i697, %for.body173.i703 ]
  %649 = sext i32 %jcolA.2.in.ph.i695 to i64
  br label %for.cond157.i

for.cond157.i:                                    ; preds = %for.body159.i, %for.cond157.outer.i
  %indvars.iv390.i = phi i64 [ %649, %for.cond157.outer.i ], [ %indvars.iv.next391.i, %for.body159.i ]
  %jcolA.2.in.i696 = phi i32 [ %jcolA.2.in.ph.i695, %for.cond157.outer.i ], [ %jcolA.2.i697, %for.body159.i ]
  %indvars.iv.next391.i = add i64 %indvars.iv390.i, -1, !dbg !1490
  %jcolA.2.i697 = add nsw i32 %jcolA.2.in.i696, -1, !dbg !1487
  %650 = trunc i64 %indvars.iv390.i to i32, !dbg !1487
  %cmp158.i = icmp sgt i32 %650, 0, !dbg !1487
  br i1 %cmp158.i, label %for.body159.i, label %sw.epilog41, !dbg !1487

for.body159.i:                                    ; preds = %for.cond157.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i601}, i64 0, metadata !1421) #5, !dbg !1490
  %arrayidx161.i = getelementptr inbounds i32* %646, i64 %indvars.iv.next391.i, !dbg !1490
  %651 = load i32* %arrayidx161.i, align 4, !dbg !1490, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %651}, i64 0, metadata !1433) #5, !dbg !1490
  %cmp162.i = icmp sgt i32 %651, 0, !dbg !1490
  br i1 %cmp162.i, label %for.body173.lr.ph.i699, label %for.cond157.i, !dbg !1490

for.body173.lr.ph.i699:                           ; preds = %for.body159.i
  %sub164.i = sub i32 %colstart.4.ph.i694, %651, !dbg !1497
  call void @llvm.dbg.value(metadata !{i32 %sub164.i}, i64 0, metadata !1432) #5, !dbg !1497
  %mul165.i = shl nsw i32 %jcolA.2.i697, 1, !dbg !1498
  call void @llvm.dbg.value(metadata !{i32 %mul165.i}, i64 0, metadata !1436) #5, !dbg !1498
  %add166342.i = or i32 %mul165.i, 1, !dbg !1499
  call void @llvm.dbg.value(metadata !{i32 %add166342.i}, i64 0, metadata !1438) #5, !dbg !1499
  %idxprom167.i = sext i32 %mul165.i to i64, !dbg !1500
  %arrayidx168.i698 = getelementptr inbounds double* %colB0.0.lcssa.i659, i64 %idxprom167.i, !dbg !1500
  %652 = load double* %arrayidx168.i698, align 8, !dbg !1500, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %652}, i64 0, metadata !1440) #5, !dbg !1500
  %idxprom169.i = sext i32 %add166342.i to i64, !dbg !1500
  %arrayidx170.i = getelementptr inbounds double* %colB0.0.lcssa.i659, i64 %idxprom169.i, !dbg !1500
  %653 = load double* %arrayidx170.i, align 8, !dbg !1500, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %653}, i64 0, metadata !1441) #5, !dbg !1500
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1448) #5, !dbg !1501
  call void @llvm.dbg.value(metadata !{i32 %sub164.i}, i64 0, metadata !1450) #5, !dbg !1501
  %654 = sext i32 %sub164.i to i64
  br label %for.body173.i703, !dbg !1501

for.body173.i703:                                 ; preds = %for.body173.i703, %for.body173.lr.ph.i699
  %indvars.iv392.i = phi i64 [ %654, %for.body173.lr.ph.i699 ], [ %indvars.iv.next393.i, %for.body173.i703 ]
  %ii.2367.i = phi i32 [ 0, %for.body173.lr.ph.i699 ], [ %inc198.i, %for.body173.i703 ]
  %655 = trunc i64 %indvars.iv392.i to i32, !dbg !1492
  %mul174.i = shl nsw i32 %655, 1, !dbg !1492
  %idxprom175.i = sext i32 %mul174.i to i64, !dbg !1492
  call void @llvm.dbg.value(metadata !{double** %entriesA.i592}, i64 0, metadata !1424) #5, !dbg !1492
  %arrayidx176.i = getelementptr inbounds double* %647, i64 %idxprom175.i, !dbg !1492
  %656 = load double* %arrayidx176.i, align 8, !dbg !1492, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %656}, i64 0, metadata !1451) #5, !dbg !1492
  %add178343.i = or i32 %mul174.i, 1, !dbg !1492
  %idxprom179.i = sext i32 %add178343.i to i64, !dbg !1492
  %arrayidx180.i = getelementptr inbounds double* %647, i64 %idxprom179.i, !dbg !1492
  %657 = load double* %arrayidx180.i, align 8, !dbg !1492, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %657}, i64 0, metadata !1452) #5, !dbg !1492
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i600}, i64 0, metadata !1429) #5, !dbg !1496
  %arrayidx182.i = getelementptr inbounds i32* %648, i64 %indvars.iv392.i, !dbg !1496
  %658 = load i32* %arrayidx182.i, align 4, !dbg !1496, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %658}, i64 0, metadata !1453) #5, !dbg !1496
  %mul183.i = shl nsw i32 %658, 1, !dbg !1502
  call void @llvm.dbg.value(metadata !{i32 %mul183.i}, i64 0, metadata !1436) #5, !dbg !1502
  %add184344.i = or i32 %mul183.i, 1, !dbg !1503
  call void @llvm.dbg.value(metadata !{i32 %add184344.i}, i64 0, metadata !1438) #5, !dbg !1503
  %mul185.i700 = fmul double %652, %656, !dbg !1504
  %mul186.i = fmul double %653, %657, !dbg !1504
  %sub187.i = fsub double %mul185.i700, %mul186.i, !dbg !1504
  %idxprom188.i = sext i32 %mul183.i to i64, !dbg !1504
  %arrayidx189.i = getelementptr inbounds double* %colB0.0.lcssa.i659, i64 %idxprom188.i, !dbg !1504
  %659 = load double* %arrayidx189.i, align 8, !dbg !1504, !tbaa !512
  %sub190.i701 = fsub double %659, %sub187.i, !dbg !1504
  store double %sub190.i701, double* %arrayidx189.i, align 8, !dbg !1504, !tbaa !512
  %mul191.i702 = fmul double %653, %656, !dbg !1505
  %mul192.i = fmul double %652, %657, !dbg !1505
  %add193.i = fadd double %mul191.i702, %mul192.i, !dbg !1505
  %idxprom194.i = sext i32 %add184344.i to i64, !dbg !1505
  %arrayidx195.i = getelementptr inbounds double* %colB0.0.lcssa.i659, i64 %idxprom194.i, !dbg !1505
  %660 = load double* %arrayidx195.i, align 8, !dbg !1505, !tbaa !512
  %sub196.i = fsub double %660, %add193.i, !dbg !1505
  store double %sub196.i, double* %arrayidx195.i, align 8, !dbg !1505, !tbaa !512
  %inc198.i = add nsw i32 %ii.2367.i, 1, !dbg !1501
  call void @llvm.dbg.value(metadata !{i32 %inc198.i}, i64 0, metadata !1448) #5, !dbg !1501
  %indvars.iv.next393.i = add i64 %indvars.iv392.i, 1, !dbg !1501
  %exitcond394.i = icmp eq i32 %inc198.i, %651, !dbg !1501
  br i1 %exitcond394.i, label %for.cond157.outer.i, label %for.body173.i703, !dbg !1501

sw.bb30:                                          ; preds = %sw.bb24
  %661 = bitcast double* %ci.i to i8*, !dbg !1506
  call void @llvm.lifetime.start(i64 8, i8* %661) #5, !dbg !1506
  %662 = bitcast double* %cr.i to i8*, !dbg !1506
  call void @llvm.lifetime.start(i64 8, i8* %662) #5, !dbg !1506
  %663 = bitcast double** %entriesA.i704 to i8*, !dbg !1506
  call void @llvm.lifetime.start(i64 8, i8* %663) #5, !dbg !1506
  %664 = bitcast double** %entriesB.i705 to i8*, !dbg !1506
  call void @llvm.lifetime.start(i64 8, i8* %664) #5, !dbg !1506
  %665 = bitcast i32* %inc1.i706 to i8*, !dbg !1506
  call void @llvm.lifetime.start(i64 4, i8* %665) #5, !dbg !1506
  %666 = bitcast i32* %inc2.i707 to i8*, !dbg !1506
  call void @llvm.lifetime.start(i64 4, i8* %666) #5, !dbg !1506
  %667 = bitcast i32* %ncolB.i708 to i8*, !dbg !1506
  call void @llvm.lifetime.start(i64 4, i8* %667) #5, !dbg !1506
  %668 = bitcast i32* %nrowA.i709 to i8*, !dbg !1506
  call void @llvm.lifetime.start(i64 4, i8* %668) #5, !dbg !1506
  %669 = bitcast i32* %nrowB.i710 to i8*, !dbg !1506
  call void @llvm.lifetime.start(i64 4, i8* %669) #5, !dbg !1506
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !1508) #5, !dbg !1506
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxB}, i64 0, metadata !1509) #5, !dbg !1510
  call void @llvm.dbg.declare(metadata !{double* %ci.i}, metadata !126) #5, !dbg !1511
  call void @llvm.dbg.declare(metadata !{double* %cr.i}, metadata !127) #5, !dbg !1511
  call void @llvm.dbg.declare(metadata !{double** %entriesA.i704}, metadata !131) #5, !dbg !1512
  call void @llvm.dbg.declare(metadata !{double** %entriesB.i705}, metadata !132) #5, !dbg !1512
  call void @llvm.dbg.declare(metadata !{i32* %inc1.i706}, metadata !133) #5, !dbg !1513
  call void @llvm.dbg.declare(metadata !{i32* %inc2.i707}, metadata !134) #5, !dbg !1513
  call void @llvm.dbg.declare(metadata !{i32* %ncolB.i708}, metadata !138) #5, !dbg !1513
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i709}, metadata !139) #5, !dbg !1513
  call void @llvm.dbg.declare(metadata !{i32* %nrowB.i710}, metadata !140) #5, !dbg !1513
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i709, double** %entriesA.i704) #6, !dbg !1514
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i710, i32* %ncolB.i708, i32* %inc1.i706, i32* %inc2.i707, double** %entriesB.i705) #6, !dbg !1515
  call void @llvm.dbg.value(metadata !{double** %entriesB.i705}, i64 0, metadata !1516) #5, !dbg !1517
  call void @llvm.dbg.value(metadata !{double** %entriesB.i705}, i64 0, metadata !132), !dbg !1517
  %670 = load double** %entriesB.i705, align 8, !dbg !1517, !tbaa !447
  call void @llvm.dbg.value(metadata !{double* %670}, i64 0, metadata !1518) #5, !dbg !1517
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1519) #5, !dbg !1520
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i708}, i64 0, metadata !1522) #5, !dbg !1520
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i708}, i64 0, metadata !138), !dbg !1520
  %671 = load i32* %ncolB.i708, align 4, !dbg !1520, !tbaa !452
  %sub256.i = add nsw i32 %671, -2, !dbg !1520
  %cmp257.i = icmp sgt i32 %sub256.i, 0, !dbg !1520
  br i1 %cmp257.i, label %for.body.lr.ph.i711, label %for.end63.i, !dbg !1520

for.body.lr.ph.i711:                              ; preds = %sw.bb30
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i710}, i64 0, metadata !1523) #5, !dbg !1524
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i710}, i64 0, metadata !140), !dbg !1524
  %.pre.i = load i32* %nrowB.i710, align 4, !dbg !1524, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i709}, i64 0, metadata !1526) #5, !dbg !1527
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i709}, i64 0, metadata !139), !dbg !1527
  %.pre273.i = load i32* %nrowA.i709, align 4, !dbg !1527, !tbaa !452
  br label %for.body.i715, !dbg !1520

for.body.i715:                                    ; preds = %for.end.i740, %for.body.lr.ph.i711
  %672 = phi i32 [ %671, %for.body.lr.ph.i711 ], [ %698, %for.end.i740 ]
  %673 = phi i32 [ %.pre273.i, %for.body.lr.ph.i711 ], [ %700, %for.end.i740 ], !dbg !1524
  %674 = phi i32 [ %.pre.i, %for.body.lr.ph.i711 ], [ %699, %for.end.i740 ]
  %jcolB.0260.i = phi i32 [ 0, %for.body.lr.ph.i711 ], [ %add62.i738, %for.end.i740 ]
  %colB0.0258.i = phi double* [ %670, %for.body.lr.ph.i711 ], [ %add.ptr60.i, %for.end.i740 ]
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i710}, i64 0, metadata !1523) #5, !dbg !1524
  %mul.i712 = shl nsw i32 %674, 1, !dbg !1524
  %idx.ext.i713 = sext i32 %mul.i712 to i64, !dbg !1524
  %add.ptr.sum.i714 = shl nsw i64 %idx.ext.i713, 1, !dbg !1529
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1530) #5, !dbg !1527
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1531) #5, !dbg !1527
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i709}, i64 0, metadata !1526) #5, !dbg !1527
  %cmp5253.i = icmp sgt i32 %673, 0, !dbg !1527
  br i1 %cmp5253.i, label %for.body6.i736, label %for.end.i740, !dbg !1527

for.body6.i736:                                   ; preds = %for.body.i715, %for.body6.i736
  %indvars.iv268.i = phi i64 [ %indvars.iv.next269.i, %for.body6.i736 ], [ 0, %for.body.i715 ]
  %irowA.0254.i = phi i32 [ %inc.i734, %for.body6.i736 ], [ 0, %for.body.i715 ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i704}, i64 0, metadata !1532) #5, !dbg !1533
  call void @llvm.dbg.value(metadata !{double** %entriesA.i704}, i64 0, metadata !131), !dbg !1533
  %675 = load double** %entriesA.i704, align 8, !dbg !1533, !tbaa !447
  %arrayidx.i716 = getelementptr inbounds double* %675, i64 %indvars.iv268.i, !dbg !1533
  %676 = load double* %arrayidx.i716, align 8, !dbg !1533, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %676}, i64 0, metadata !1535) #5, !dbg !1533
  %677 = or i64 %indvars.iv268.i, 1, !dbg !1536
  %arrayidx8.i717 = getelementptr inbounds double* %675, i64 %677, !dbg !1536
  %678 = load double* %arrayidx8.i717, align 8, !dbg !1536, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %678}, i64 0, metadata !1537) #5, !dbg !1536
  %call.i718 = call i32 @Zrecip(double %676, double %678, double* %cr.i, double* %ci.i) #6, !dbg !1538
  %arrayidx10.i719 = getelementptr inbounds double* %colB0.0258.i, i64 %indvars.iv268.i, !dbg !1539
  %679 = load double* %arrayidx10.i719, align 8, !dbg !1539, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %679}, i64 0, metadata !1540) #5, !dbg !1539
  %arrayidx13.i720 = getelementptr inbounds double* %colB0.0258.i, i64 %677, !dbg !1539
  %680 = load double* %arrayidx13.i720, align 8, !dbg !1539, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %680}, i64 0, metadata !1541) #5, !dbg !1539
  call void @llvm.dbg.value(metadata !{double* %cr.i}, i64 0, metadata !1542) #5, !dbg !1543
  call void @llvm.dbg.value(metadata !{double* %cr.i}, i64 0, metadata !127), !dbg !1543
  %681 = load double* %cr.i, align 8, !dbg !1543, !tbaa !512
  %mul14.i = fmul double %679, %681, !dbg !1543
  call void @llvm.dbg.value(metadata !{double* %ci.i}, i64 0, metadata !1544) #5, !dbg !1543
  call void @llvm.dbg.value(metadata !{double* %ci.i}, i64 0, metadata !126), !dbg !1543
  %682 = load double* %ci.i, align 8, !dbg !1543, !tbaa !512
  %mul15.i = fmul double %680, %682, !dbg !1543
  %sub16.i721 = fsub double %mul14.i, %mul15.i, !dbg !1543
  store double %sub16.i721, double* %arrayidx10.i719, align 8, !dbg !1543, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %ci.i}, i64 0, metadata !1544) #5, !dbg !1545
  call void @llvm.dbg.value(metadata !{double* %ci.i}, i64 0, metadata !126), !dbg !1545
  %683 = load double* %ci.i, align 8, !dbg !1545, !tbaa !512
  %mul19.i = fmul double %679, %683, !dbg !1545
  call void @llvm.dbg.value(metadata !{double* %cr.i}, i64 0, metadata !1542) #5, !dbg !1545
  call void @llvm.dbg.value(metadata !{double* %cr.i}, i64 0, metadata !127), !dbg !1545
  %684 = load double* %cr.i, align 8, !dbg !1545, !tbaa !512
  %mul20.i = fmul double %680, %684, !dbg !1545
  %add21.i = fadd double %mul19.i, %mul20.i, !dbg !1545
  store double %add21.i, double* %arrayidx13.i720, align 8, !dbg !1545, !tbaa !512
  %add.ptr.sum242.i = add i64 %indvars.iv268.i, %idx.ext.i713, !dbg !1546
  %arrayidx26.i722 = getelementptr inbounds double* %colB0.0258.i, i64 %add.ptr.sum242.i, !dbg !1546
  %685 = load double* %arrayidx26.i722, align 8, !dbg !1546, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %685}, i64 0, metadata !1540) #5, !dbg !1546
  %add.ptr.sum243.i = add i64 %677, %idx.ext.i713, !dbg !1546
  %arrayidx29.i723 = getelementptr inbounds double* %colB0.0258.i, i64 %add.ptr.sum243.i, !dbg !1546
  %686 = load double* %arrayidx29.i723, align 8, !dbg !1546, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %686}, i64 0, metadata !1541) #5, !dbg !1546
  call void @llvm.dbg.value(metadata !{double* %cr.i}, i64 0, metadata !1542) #5, !dbg !1547
  call void @llvm.dbg.value(metadata !{double* %cr.i}, i64 0, metadata !127), !dbg !1547
  %687 = load double* %cr.i, align 8, !dbg !1547, !tbaa !512
  %mul30.i724 = fmul double %685, %687, !dbg !1547
  call void @llvm.dbg.value(metadata !{double* %ci.i}, i64 0, metadata !1544) #5, !dbg !1547
  call void @llvm.dbg.value(metadata !{double* %ci.i}, i64 0, metadata !126), !dbg !1547
  %688 = load double* %ci.i, align 8, !dbg !1547, !tbaa !512
  %mul31.i = fmul double %686, %688, !dbg !1547
  %sub32.i725 = fsub double %mul30.i724, %mul31.i, !dbg !1547
  store double %sub32.i725, double* %arrayidx26.i722, align 8, !dbg !1547, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %ci.i}, i64 0, metadata !1544) #5, !dbg !1548
  call void @llvm.dbg.value(metadata !{double* %ci.i}, i64 0, metadata !126), !dbg !1548
  %689 = load double* %ci.i, align 8, !dbg !1548, !tbaa !512
  %mul35.i726 = fmul double %685, %689, !dbg !1548
  call void @llvm.dbg.value(metadata !{double* %cr.i}, i64 0, metadata !1542) #5, !dbg !1548
  call void @llvm.dbg.value(metadata !{double* %cr.i}, i64 0, metadata !127), !dbg !1548
  %690 = load double* %cr.i, align 8, !dbg !1548, !tbaa !512
  %mul36.i727 = fmul double %686, %690, !dbg !1548
  %add37.i = fadd double %mul35.i726, %mul36.i727, !dbg !1548
  store double %add37.i, double* %arrayidx29.i723, align 8, !dbg !1548, !tbaa !512
  %add.ptr3.sum244.i = add i64 %indvars.iv268.i, %add.ptr.sum.i714, !dbg !1549
  %arrayidx42.i = getelementptr inbounds double* %colB0.0258.i, i64 %add.ptr3.sum244.i, !dbg !1549
  %691 = load double* %arrayidx42.i, align 8, !dbg !1549, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %691}, i64 0, metadata !1540) #5, !dbg !1549
  %add.ptr3.sum245.i = add i64 %677, %add.ptr.sum.i714, !dbg !1549
  %arrayidx45.i728 = getelementptr inbounds double* %colB0.0258.i, i64 %add.ptr3.sum245.i, !dbg !1549
  %692 = load double* %arrayidx45.i728, align 8, !dbg !1549, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %692}, i64 0, metadata !1541) #5, !dbg !1549
  call void @llvm.dbg.value(metadata !{double* %cr.i}, i64 0, metadata !1542) #5, !dbg !1550
  call void @llvm.dbg.value(metadata !{double* %cr.i}, i64 0, metadata !127), !dbg !1550
  %693 = load double* %cr.i, align 8, !dbg !1550, !tbaa !512
  %mul46.i729 = fmul double %691, %693, !dbg !1550
  call void @llvm.dbg.value(metadata !{double* %ci.i}, i64 0, metadata !1544) #5, !dbg !1550
  call void @llvm.dbg.value(metadata !{double* %ci.i}, i64 0, metadata !126), !dbg !1550
  %694 = load double* %ci.i, align 8, !dbg !1550, !tbaa !512
  %mul47.i730 = fmul double %692, %694, !dbg !1550
  %sub48.i731 = fsub double %mul46.i729, %mul47.i730, !dbg !1550
  store double %sub48.i731, double* %arrayidx42.i, align 8, !dbg !1550, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %ci.i}, i64 0, metadata !1544) #5, !dbg !1551
  call void @llvm.dbg.value(metadata !{double* %ci.i}, i64 0, metadata !126), !dbg !1551
  %695 = load double* %ci.i, align 8, !dbg !1551, !tbaa !512
  %mul51.i732 = fmul double %691, %695, !dbg !1551
  call void @llvm.dbg.value(metadata !{double* %cr.i}, i64 0, metadata !1542) #5, !dbg !1551
  call void @llvm.dbg.value(metadata !{double* %cr.i}, i64 0, metadata !127), !dbg !1551
  %696 = load double* %cr.i, align 8, !dbg !1551, !tbaa !512
  %mul52.i733 = fmul double %692, %696, !dbg !1551
  %add53.i = fadd double %mul51.i732, %mul52.i733, !dbg !1551
  store double %add53.i, double* %arrayidx45.i728, align 8, !dbg !1551, !tbaa !512
  %inc.i734 = add nsw i32 %irowA.0254.i, 1, !dbg !1527
  call void @llvm.dbg.value(metadata !{i32 %inc.i734}, i64 0, metadata !1531) #5, !dbg !1527
  %indvars.iv.next269.i = add i64 %indvars.iv268.i, 2, !dbg !1527
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i709}, i64 0, metadata !1526) #5, !dbg !1527
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i709}, i64 0, metadata !139), !dbg !1527
  %697 = load i32* %nrowA.i709, align 4, !dbg !1527, !tbaa !452
  %cmp5.i735 = icmp slt i32 %inc.i734, %697, !dbg !1527
  br i1 %cmp5.i735, label %for.body6.i736, label %for.cond4.for.end_crit_edge.i, !dbg !1527

for.cond4.for.end_crit_edge.i:                    ; preds = %for.body6.i736
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i710}, i64 0, metadata !1523) #5, !dbg !1552
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i710}, i64 0, metadata !140), !dbg !1552
  %.pre274.i = load i32* %nrowB.i710, align 4, !dbg !1552, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i708}, i64 0, metadata !1522) #5, !dbg !1520
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i708}, i64 0, metadata !138), !dbg !1520
  %.pre275.i = load i32* %ncolB.i708, align 4, !dbg !1520, !tbaa !452
  br label %for.end.i740, !dbg !1527

for.end.i740:                                     ; preds = %for.cond4.for.end_crit_edge.i, %for.body.i715
  %698 = phi i32 [ %.pre275.i, %for.cond4.for.end_crit_edge.i ], [ %672, %for.body.i715 ], !dbg !1552
  %699 = phi i32 [ %.pre274.i, %for.cond4.for.end_crit_edge.i ], [ %674, %for.body.i715 ], !dbg !1552
  %700 = phi i32 [ %697, %for.cond4.for.end_crit_edge.i ], [ %673, %for.body.i715 ]
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i710}, i64 0, metadata !1523) #5, !dbg !1552
  %mul58.i = shl nsw i32 %699, 1, !dbg !1552
  %idx.ext59.i = sext i32 %mul58.i to i64, !dbg !1552
  %add.ptr3.sum.i737 = add i64 %idx.ext59.i, %add.ptr.sum.i714, !dbg !1552
  %add.ptr60.i = getelementptr inbounds double* %colB0.0258.i, i64 %add.ptr3.sum.i737, !dbg !1552
  call void @llvm.dbg.value(metadata !{double* %add.ptr60.i}, i64 0, metadata !1518) #5, !dbg !1552
  %add62.i738 = add nsw i32 %jcolB.0260.i, 3, !dbg !1520
  call void @llvm.dbg.value(metadata !{i32 %add62.i738}, i64 0, metadata !1519) #5, !dbg !1520
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i708}, i64 0, metadata !1522) #5, !dbg !1520
  %sub.i = add nsw i32 %698, -2, !dbg !1520
  %cmp.i739 = icmp slt i32 %add62.i738, %sub.i, !dbg !1520
  br i1 %cmp.i739, label %for.body.i715, label %for.end63.i, !dbg !1520

for.end63.i:                                      ; preds = %for.end.i740, %sw.bb30
  %sub.lcssa.i = phi i32 [ %sub256.i, %sw.bb30 ], [ %sub.i, %for.end.i740 ]
  %.lcssa.i = phi i32 [ %671, %sw.bb30 ], [ %698, %for.end.i740 ]
  %jcolB.0.lcssa.i741 = phi i32 [ 0, %sw.bb30 ], [ %add62.i738, %for.end.i740 ]
  %colB0.0.lcssa.i742 = phi double* [ %670, %sw.bb30 ], [ %add.ptr60.i, %for.end.i740 ]
  %cmp65.i743 = icmp eq i32 %jcolB.0.lcssa.i741, %sub.lcssa.i, !dbg !1553
  br i1 %cmp65.i743, label %if.then.i744, label %if.else.i756, !dbg !1553

if.then.i744:                                     ; preds = %for.end63.i
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i710}, i64 0, metadata !1523) #5, !dbg !1554
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i710}, i64 0, metadata !140), !dbg !1554
  %701 = load i32* %nrowB.i710, align 4, !dbg !1554, !tbaa !452
  %mul66.i = shl nsw i32 %701, 1, !dbg !1554
  %idx.ext67.i = sext i32 %mul66.i to i64, !dbg !1554
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1530) #5, !dbg !1556
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1531) #5, !dbg !1556
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i709}, i64 0, metadata !1526) #5, !dbg !1556
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i709}, i64 0, metadata !139), !dbg !1556
  %702 = load i32* %nrowA.i709, align 4, !dbg !1556, !tbaa !452
  %cmp70246.i = icmp sgt i32 %702, 0, !dbg !1556
  br i1 %cmp70246.i, label %for.body71.i, label %sw.epilog41, !dbg !1556

for.body71.i:                                     ; preds = %if.then.i744, %for.body71.i
  %indvars.iv.i745 = phi i64 [ %indvars.iv.next.i755, %for.body71.i ], [ 0, %if.then.i744 ]
  %irowA.1247.i = phi i32 [ %inc111.i, %for.body71.i ], [ 0, %if.then.i744 ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i704}, i64 0, metadata !1532) #5, !dbg !1558
  call void @llvm.dbg.value(metadata !{double** %entriesA.i704}, i64 0, metadata !131), !dbg !1558
  %703 = load double** %entriesA.i704, align 8, !dbg !1558, !tbaa !447
  %arrayidx73.i746 = getelementptr inbounds double* %703, i64 %indvars.iv.i745, !dbg !1558
  %704 = load double* %arrayidx73.i746, align 8, !dbg !1558, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %704}, i64 0, metadata !1535) #5, !dbg !1558
  %705 = or i64 %indvars.iv.i745, 1, !dbg !1560
  %arrayidx76.i747 = getelementptr inbounds double* %703, i64 %705, !dbg !1560
  %706 = load double* %arrayidx76.i747, align 8, !dbg !1560, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %706}, i64 0, metadata !1537) #5, !dbg !1560
  %call77.i = call i32 @Zrecip(double %704, double %706, double* %cr.i, double* %ci.i) #6, !dbg !1561
  %arrayidx79.i748 = getelementptr inbounds double* %colB0.0.lcssa.i742, i64 %indvars.iv.i745, !dbg !1562
  %707 = load double* %arrayidx79.i748, align 8, !dbg !1562, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %707}, i64 0, metadata !1540) #5, !dbg !1562
  %arrayidx82.i749 = getelementptr inbounds double* %colB0.0.lcssa.i742, i64 %705, !dbg !1562
  %708 = load double* %arrayidx82.i749, align 8, !dbg !1562, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %708}, i64 0, metadata !1541) #5, !dbg !1562
  call void @llvm.dbg.value(metadata !{double* %cr.i}, i64 0, metadata !1542) #5, !dbg !1563
  call void @llvm.dbg.value(metadata !{double* %cr.i}, i64 0, metadata !127), !dbg !1563
  %709 = load double* %cr.i, align 8, !dbg !1563, !tbaa !512
  %mul83.i750 = fmul double %707, %709, !dbg !1563
  call void @llvm.dbg.value(metadata !{double* %ci.i}, i64 0, metadata !1544) #5, !dbg !1563
  call void @llvm.dbg.value(metadata !{double* %ci.i}, i64 0, metadata !126), !dbg !1563
  %710 = load double* %ci.i, align 8, !dbg !1563, !tbaa !512
  %mul84.i751 = fmul double %708, %710, !dbg !1563
  %sub85.i752 = fsub double %mul83.i750, %mul84.i751, !dbg !1563
  store double %sub85.i752, double* %arrayidx79.i748, align 8, !dbg !1563, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %ci.i}, i64 0, metadata !1544) #5, !dbg !1564
  call void @llvm.dbg.value(metadata !{double* %ci.i}, i64 0, metadata !126), !dbg !1564
  %711 = load double* %ci.i, align 8, !dbg !1564, !tbaa !512
  %mul88.i = fmul double %707, %711, !dbg !1564
  call void @llvm.dbg.value(metadata !{double* %cr.i}, i64 0, metadata !1542) #5, !dbg !1564
  call void @llvm.dbg.value(metadata !{double* %cr.i}, i64 0, metadata !127), !dbg !1564
  %712 = load double* %cr.i, align 8, !dbg !1564, !tbaa !512
  %mul89.i = fmul double %708, %712, !dbg !1564
  %add90.i = fadd double %mul88.i, %mul89.i, !dbg !1564
  store double %add90.i, double* %arrayidx82.i749, align 8, !dbg !1564, !tbaa !512
  %add.ptr68.sum.i = add i64 %indvars.iv.i745, %idx.ext67.i, !dbg !1565
  %arrayidx95.i = getelementptr inbounds double* %colB0.0.lcssa.i742, i64 %add.ptr68.sum.i, !dbg !1565
  %713 = load double* %arrayidx95.i, align 8, !dbg !1565, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %713}, i64 0, metadata !1540) #5, !dbg !1565
  %add.ptr68.sum240.i = add i64 %705, %idx.ext67.i, !dbg !1565
  %arrayidx98.i753 = getelementptr inbounds double* %colB0.0.lcssa.i742, i64 %add.ptr68.sum240.i, !dbg !1565
  %714 = load double* %arrayidx98.i753, align 8, !dbg !1565, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %714}, i64 0, metadata !1541) #5, !dbg !1565
  call void @llvm.dbg.value(metadata !{double* %cr.i}, i64 0, metadata !1542) #5, !dbg !1566
  call void @llvm.dbg.value(metadata !{double* %cr.i}, i64 0, metadata !127), !dbg !1566
  %715 = load double* %cr.i, align 8, !dbg !1566, !tbaa !512
  %mul99.i = fmul double %713, %715, !dbg !1566
  call void @llvm.dbg.value(metadata !{double* %ci.i}, i64 0, metadata !1544) #5, !dbg !1566
  call void @llvm.dbg.value(metadata !{double* %ci.i}, i64 0, metadata !126), !dbg !1566
  %716 = load double* %ci.i, align 8, !dbg !1566, !tbaa !512
  %mul100.i = fmul double %714, %716, !dbg !1566
  %sub101.i = fsub double %mul99.i, %mul100.i, !dbg !1566
  store double %sub101.i, double* %arrayidx95.i, align 8, !dbg !1566, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %ci.i}, i64 0, metadata !1544) #5, !dbg !1567
  call void @llvm.dbg.value(metadata !{double* %ci.i}, i64 0, metadata !126), !dbg !1567
  %717 = load double* %ci.i, align 8, !dbg !1567, !tbaa !512
  %mul104.i = fmul double %713, %717, !dbg !1567
  call void @llvm.dbg.value(metadata !{double* %cr.i}, i64 0, metadata !1542) #5, !dbg !1567
  call void @llvm.dbg.value(metadata !{double* %cr.i}, i64 0, metadata !127), !dbg !1567
  %718 = load double* %cr.i, align 8, !dbg !1567, !tbaa !512
  %mul105.i = fmul double %714, %718, !dbg !1567
  %add106.i754 = fadd double %mul104.i, %mul105.i, !dbg !1567
  store double %add106.i754, double* %arrayidx98.i753, align 8, !dbg !1567, !tbaa !512
  %inc111.i = add nsw i32 %irowA.1247.i, 1, !dbg !1556
  call void @llvm.dbg.value(metadata !{i32 %inc111.i}, i64 0, metadata !1531) #5, !dbg !1556
  %indvars.iv.next.i755 = add i64 %indvars.iv.i745, 2, !dbg !1556
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i709}, i64 0, metadata !1526) #5, !dbg !1556
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i709}, i64 0, metadata !139), !dbg !1556
  %719 = load i32* %nrowA.i709, align 4, !dbg !1556, !tbaa !452
  %cmp70.i = icmp slt i32 %inc111.i, %719, !dbg !1556
  br i1 %cmp70.i, label %for.body71.i, label %sw.epilog41, !dbg !1556

if.else.i756:                                     ; preds = %for.end63.i
  %sub114.i = add nsw i32 %.lcssa.i, -1, !dbg !1568
  %cmp115.i = icmp eq i32 %jcolB.0.lcssa.i741, %sub114.i, !dbg !1568
  br i1 %cmp115.i, label %for.cond117.preheader.i, label %sw.epilog41, !dbg !1568

for.cond117.preheader.i:                          ; preds = %if.else.i756
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i709}, i64 0, metadata !1526) #5, !dbg !1569
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i709}, i64 0, metadata !139), !dbg !1569
  %720 = load i32* %nrowA.i709, align 4, !dbg !1569, !tbaa !452
  %cmp118250.i = icmp sgt i32 %720, 0, !dbg !1569
  br i1 %cmp118250.i, label %for.body119.i, label %sw.epilog41, !dbg !1569

for.body119.i:                                    ; preds = %for.cond117.preheader.i, %for.body119.i
  %indvars.iv265.i757 = phi i64 [ %indvars.iv.next266.i766, %for.body119.i ], [ 0, %for.cond117.preheader.i ]
  %irowA.2251.i = phi i32 [ %inc143.i, %for.body119.i ], [ 0, %for.cond117.preheader.i ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i704}, i64 0, metadata !1532) #5, !dbg !1572
  call void @llvm.dbg.value(metadata !{double** %entriesA.i704}, i64 0, metadata !131), !dbg !1572
  %721 = load double** %entriesA.i704, align 8, !dbg !1572, !tbaa !447
  %arrayidx121.i758 = getelementptr inbounds double* %721, i64 %indvars.iv265.i757, !dbg !1572
  %722 = load double* %arrayidx121.i758, align 8, !dbg !1572, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %722}, i64 0, metadata !1535) #5, !dbg !1572
  %723 = or i64 %indvars.iv265.i757, 1, !dbg !1574
  %arrayidx124.i759 = getelementptr inbounds double* %721, i64 %723, !dbg !1574
  %724 = load double* %arrayidx124.i759, align 8, !dbg !1574, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %724}, i64 0, metadata !1537) #5, !dbg !1574
  %call125.i = call i32 @Zrecip(double %722, double %724, double* %cr.i, double* %ci.i) #6, !dbg !1575
  %arrayidx127.i760 = getelementptr inbounds double* %colB0.0.lcssa.i742, i64 %indvars.iv265.i757, !dbg !1576
  %725 = load double* %arrayidx127.i760, align 8, !dbg !1576, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %725}, i64 0, metadata !1540) #5, !dbg !1576
  %arrayidx130.i761 = getelementptr inbounds double* %colB0.0.lcssa.i742, i64 %723, !dbg !1576
  %726 = load double* %arrayidx130.i761, align 8, !dbg !1576, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %726}, i64 0, metadata !1541) #5, !dbg !1576
  call void @llvm.dbg.value(metadata !{double* %cr.i}, i64 0, metadata !1542) #5, !dbg !1577
  call void @llvm.dbg.value(metadata !{double* %cr.i}, i64 0, metadata !127), !dbg !1577
  %727 = load double* %cr.i, align 8, !dbg !1577, !tbaa !512
  %mul131.i762 = fmul double %725, %727, !dbg !1577
  call void @llvm.dbg.value(metadata !{double* %ci.i}, i64 0, metadata !1544) #5, !dbg !1577
  call void @llvm.dbg.value(metadata !{double* %ci.i}, i64 0, metadata !126), !dbg !1577
  %728 = load double* %ci.i, align 8, !dbg !1577, !tbaa !512
  %mul132.i763 = fmul double %726, %728, !dbg !1577
  %sub133.i = fsub double %mul131.i762, %mul132.i763, !dbg !1577
  store double %sub133.i, double* %arrayidx127.i760, align 8, !dbg !1577, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %ci.i}, i64 0, metadata !1544) #5, !dbg !1578
  call void @llvm.dbg.value(metadata !{double* %ci.i}, i64 0, metadata !126), !dbg !1578
  %729 = load double* %ci.i, align 8, !dbg !1578, !tbaa !512
  %mul136.i764 = fmul double %725, %729, !dbg !1578
  call void @llvm.dbg.value(metadata !{double* %cr.i}, i64 0, metadata !1542) #5, !dbg !1578
  call void @llvm.dbg.value(metadata !{double* %cr.i}, i64 0, metadata !127), !dbg !1578
  %730 = load double* %cr.i, align 8, !dbg !1578, !tbaa !512
  %mul137.i765 = fmul double %726, %730, !dbg !1578
  %add138.i = fadd double %mul136.i764, %mul137.i765, !dbg !1578
  store double %add138.i, double* %arrayidx130.i761, align 8, !dbg !1578, !tbaa !512
  %inc143.i = add nsw i32 %irowA.2251.i, 1, !dbg !1569
  call void @llvm.dbg.value(metadata !{i32 %inc143.i}, i64 0, metadata !1531) #5, !dbg !1569
  %indvars.iv.next266.i766 = add i64 %indvars.iv265.i757, 2, !dbg !1569
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i709}, i64 0, metadata !1526) #5, !dbg !1569
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i709}, i64 0, metadata !139), !dbg !1569
  %731 = load i32* %nrowA.i709, align 4, !dbg !1569, !tbaa !452
  %cmp118.i = icmp slt i32 %inc143.i, %731, !dbg !1569
  br i1 %cmp118.i, label %for.body119.i, label %sw.epilog41, !dbg !1569

sw.bb31:                                          ; preds = %sw.bb24
  %732 = bitcast double* %ci00.i to i8*, !dbg !1579
  call void @llvm.lifetime.start(i64 8, i8* %732) #5, !dbg !1579
  %733 = bitcast double* %ci01.i to i8*, !dbg !1579
  call void @llvm.lifetime.start(i64 8, i8* %733) #5, !dbg !1579
  %734 = bitcast double* %ci11.i to i8*, !dbg !1579
  call void @llvm.lifetime.start(i64 8, i8* %734) #5, !dbg !1579
  %735 = bitcast double* %cr00.i to i8*, !dbg !1579
  call void @llvm.lifetime.start(i64 8, i8* %735) #5, !dbg !1579
  %736 = bitcast double* %cr01.i to i8*, !dbg !1579
  call void @llvm.lifetime.start(i64 8, i8* %736) #5, !dbg !1579
  %737 = bitcast double* %cr11.i to i8*, !dbg !1579
  call void @llvm.lifetime.start(i64 8, i8* %737) #5, !dbg !1579
  %738 = bitcast double** %entriesA.i767 to i8*, !dbg !1579
  call void @llvm.lifetime.start(i64 8, i8* %738) #5, !dbg !1579
  %739 = bitcast double** %entriesB.i768 to i8*, !dbg !1579
  call void @llvm.lifetime.start(i64 8, i8* %739) #5, !dbg !1579
  %740 = bitcast i32* %inc1.i769 to i8*, !dbg !1579
  call void @llvm.lifetime.start(i64 4, i8* %740) #5, !dbg !1579
  %741 = bitcast i32* %inc2.i770 to i8*, !dbg !1579
  call void @llvm.lifetime.start(i64 4, i8* %741) #5, !dbg !1579
  %742 = bitcast i32* %ncolB.i771 to i8*, !dbg !1579
  call void @llvm.lifetime.start(i64 4, i8* %742) #5, !dbg !1579
  %743 = bitcast i32* %nentA.i772 to i8*, !dbg !1579
  call void @llvm.lifetime.start(i64 4, i8* %743) #5, !dbg !1579
  %744 = bitcast i32* %nrowA.i773 to i8*, !dbg !1579
  call void @llvm.lifetime.start(i64 4, i8* %744) #5, !dbg !1579
  %745 = bitcast i32* %nrowB.i774 to i8*, !dbg !1579
  call void @llvm.lifetime.start(i64 4, i8* %745) #5, !dbg !1579
  %746 = bitcast i32** %pivotsizes.i775 to i8*, !dbg !1579
  call void @llvm.lifetime.start(i64 8, i8* %746) #5, !dbg !1579
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !1581) #5, !dbg !1579
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxB}, i64 0, metadata !1582) #5, !dbg !1583
  call void @llvm.dbg.declare(metadata !{double* %ci00.i}, metadata !95) #5, !dbg !1584
  call void @llvm.dbg.declare(metadata !{double* %ci01.i}, metadata !96) #5, !dbg !1584
  call void @llvm.dbg.declare(metadata !{double* %ci11.i}, metadata !97) #5, !dbg !1584
  call void @llvm.dbg.declare(metadata !{double* %cr00.i}, metadata !98) #5, !dbg !1584
  call void @llvm.dbg.declare(metadata !{double* %cr01.i}, metadata !99) #5, !dbg !1584
  call void @llvm.dbg.declare(metadata !{double* %cr11.i}, metadata !100) #5, !dbg !1584
  call void @llvm.dbg.declare(metadata !{double** %entriesA.i767}, metadata !104) #5, !dbg !1585
  call void @llvm.dbg.declare(metadata !{double** %entriesB.i768}, metadata !105) #5, !dbg !1585
  call void @llvm.dbg.declare(metadata !{i32* %inc1.i769}, metadata !106) #5, !dbg !1586
  call void @llvm.dbg.declare(metadata !{i32* %inc2.i770}, metadata !107) #5, !dbg !1586
  call void @llvm.dbg.declare(metadata !{i32* %ncolB.i771}, metadata !113) #5, !dbg !1587
  call void @llvm.dbg.declare(metadata !{i32* %nentA.i772}, metadata !114) #5, !dbg !1587
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i773}, metadata !115) #5, !dbg !1587
  call void @llvm.dbg.declare(metadata !{i32* %nrowB.i774}, metadata !116) #5, !dbg !1587
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes.i775}, metadata !117) #5, !dbg !1588
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i773, i32* %nentA.i772, i32** %pivotsizes.i775, double** %entriesA.i767) #6, !dbg !1589
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1590) #5, !dbg !1591
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1593) #5, !dbg !1591
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1594) #5, !dbg !1591
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i773}, i64 0, metadata !1595) #5, !dbg !1591
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i773}, i64 0, metadata !115), !dbg !1591
  %747 = load i32* %nrowA.i773, align 4, !dbg !1591, !tbaa !452
  %cmp1052.i = icmp sgt i32 %747, 0, !dbg !1591
  br i1 %cmp1052.i, label %for.body.lr.ph.i776, label %for.end.i786, !dbg !1591

for.body.lr.ph.i776:                              ; preds = %sw.bb31
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i775}, i64 0, metadata !1596) #5, !dbg !1597
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i775}, i64 0, metadata !117), !dbg !1597
  %748 = load i32** %pivotsizes.i775, align 8, !dbg !1597, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i773}, i64 0, metadata !1595) #5, !dbg !1591
  br label %for.body.i779, !dbg !1591

for.body.i779:                                    ; preds = %if.end.i785, %for.body.lr.ph.i776
  %indvars.iv1064.i = phi i64 [ 0, %for.body.lr.ph.i776 ], [ %indvars.iv.next1065.i, %if.end.i785 ]
  %irowA.01054.i = phi i32 [ 0, %for.body.lr.ph.i776 ], [ %add.i782, %if.end.i785 ]
  %ipivot.01053.i = phi i32 [ 0, %for.body.lr.ph.i776 ], [ %inc.i783, %if.end.i785 ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i775}, i64 0, metadata !1596) #5, !dbg !1597
  %arrayidx.i777 = getelementptr inbounds i32* %748, i64 %indvars.iv1064.i, !dbg !1597
  %749 = load i32* %arrayidx.i777, align 4, !dbg !1597, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %749}, i64 0, metadata !1599) #5, !dbg !1597
  %.off.i778 = add i32 %749, -1, !dbg !1600
  %750 = icmp ugt i32 %.off.i778, 1, !dbg !1600
  br i1 %750, label %if.then.i781, label %if.end.i785, !dbg !1600

if.then.i781:                                     ; preds = %for.body.i779
  %751 = load %struct._IO_FILE** @stderr, align 8, !dbg !1601, !tbaa !447
  %call.i780 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %751, i8* getelementptr inbounds ([102 x i8]* @.str6, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 %ipivot.01053.i, i32 %749) #6, !dbg !1601
  call void @exit(i32 -1) #7, !dbg !1603
  unreachable, !dbg !1603

if.end.i785:                                      ; preds = %for.body.i779
  %add.i782 = add nsw i32 %749, %irowA.01054.i, !dbg !1604
  call void @llvm.dbg.value(metadata !{i32 %add.i782}, i64 0, metadata !1594) #5, !dbg !1604
  %indvars.iv.next1065.i = add i64 %indvars.iv1064.i, 1, !dbg !1591
  %inc.i783 = add nsw i32 %ipivot.01053.i, 1, !dbg !1591
  call void @llvm.dbg.value(metadata !{i32 %inc.i783}, i64 0, metadata !1593) #5, !dbg !1591
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i773}, i64 0, metadata !1595) #5, !dbg !1591
  %cmp.i784 = icmp slt i32 %add.i782, %747, !dbg !1591
  br i1 %cmp.i784, label %for.body.i779, label %for.end.i786, !dbg !1591

for.end.i786:                                     ; preds = %if.end.i785, %sw.bb31
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i774, i32* %ncolB.i771, i32* %inc1.i769, i32* %inc2.i770, double** %entriesB.i768) #6, !dbg !1605
  call void @llvm.dbg.value(metadata !{double** %entriesB.i768}, i64 0, metadata !1606) #5, !dbg !1607
  call void @llvm.dbg.value(metadata !{double** %entriesB.i768}, i64 0, metadata !105), !dbg !1607
  %752 = load double** %entriesB.i768, align 8, !dbg !1607, !tbaa !447
  call void @llvm.dbg.value(metadata !{double* %752}, i64 0, metadata !1608) #5, !dbg !1607
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1609) #5, !dbg !1610
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i771}, i64 0, metadata !1612) #5, !dbg !1610
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i771}, i64 0, metadata !113), !dbg !1610
  %753 = load i32* %ncolB.i771, align 4, !dbg !1610, !tbaa !452
  %sub1042.i = add nsw i32 %753, -2, !dbg !1610
  %cmp41043.i = icmp sgt i32 %sub1042.i, 0, !dbg !1610
  br i1 %cmp41043.i, label %for.body5.lr.ph.i788, label %for.end297.i, !dbg !1610

for.body5.lr.ph.i788:                             ; preds = %for.end.i786
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i774}, i64 0, metadata !1613) #5, !dbg !1614
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i774}, i64 0, metadata !116), !dbg !1614
  %.pre.i787 = load i32* %nrowB.i774, align 4, !dbg !1614, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i773}, i64 0, metadata !1595) #5, !dbg !1616
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i773}, i64 0, metadata !115), !dbg !1616
  %.pre1066.i = load i32* %nrowA.i773, align 4, !dbg !1616, !tbaa !452
  br label %for.body5.i792, !dbg !1610

for.body5.i792:                                   ; preds = %for.end291.i, %for.body5.lr.ph.i788
  %754 = phi i32 [ %753, %for.body5.lr.ph.i788 ], [ %848, %for.end291.i ]
  %755 = phi i32 [ %.pre1066.i, %for.body5.lr.ph.i788 ], [ %850, %for.end291.i ], !dbg !1614
  %756 = phi i32 [ %.pre.i787, %for.body5.lr.ph.i788 ], [ %849, %for.end291.i ]
  %jcolB.01046.i = phi i32 [ 0, %for.body5.lr.ph.i788 ], [ %add296.i, %for.end291.i ]
  %colB0.01044.i = phi double* [ %752, %for.body5.lr.ph.i788 ], [ %add.ptr294.i, %for.end291.i ]
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i774}, i64 0, metadata !1613) #5, !dbg !1614
  %mul.i789 = shl nsw i32 %756, 1, !dbg !1614
  %idx.ext.i790 = sext i32 %mul.i789 to i64, !dbg !1614
  %add.ptr.sum.i791 = shl nsw i64 %idx.ext.i790, 1, !dbg !1618
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1590) #5, !dbg !1616
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1593) #5, !dbg !1616
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1594) #5, !dbg !1616
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i773}, i64 0, metadata !1595) #5, !dbg !1616
  %cmp101038.i = icmp sgt i32 %755, 0, !dbg !1616
  br i1 %cmp101038.i, label %for.body11.i, label %for.end291.i, !dbg !1616

for.body11.i:                                     ; preds = %for.body5.i792, %if.end287.i.for.body11.i_crit_edge
  %indvars.iv1057.i = phi i64 [ %indvars.iv.next1058.i, %if.end287.i.for.body11.i_crit_edge ], [ 0, %for.body5.i792 ]
  %kk.01041.i = phi i32 [ %kk.1.i862, %if.end287.i.for.body11.i_crit_edge ], [ 0, %for.body5.i792 ]
  %irowA.11040.i = phi i32 [ %add288.i, %if.end287.i.for.body11.i_crit_edge ], [ 0, %for.body5.i792 ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i775}, i64 0, metadata !1596) #5, !dbg !1619
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i775}, i64 0, metadata !117), !dbg !1619
  %757 = load i32** %pivotsizes.i775, align 8, !dbg !1619, !tbaa !447
  %arrayidx13.i793 = getelementptr inbounds i32* %757, i64 %indvars.iv1057.i, !dbg !1619
  %758 = load i32* %arrayidx13.i793, align 4, !dbg !1619, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %758}, i64 0, metadata !1599) #5, !dbg !1619
  switch i32 %758, label %if.end287.i [
    i32 1, label %if.then15.i
    i32 2, label %if.then86.i
  ], !dbg !1621

if.then15.i:                                      ; preds = %for.body11.i
  %mul16.i794 = shl nsw i32 %kk.01041.i, 1, !dbg !1622
  %idxprom17.i795 = sext i32 %mul16.i794 to i64, !dbg !1622
  call void @llvm.dbg.value(metadata !{double** %entriesA.i767}, i64 0, metadata !1624) #5, !dbg !1622
  call void @llvm.dbg.value(metadata !{double** %entriesA.i767}, i64 0, metadata !104), !dbg !1622
  %759 = load double** %entriesA.i767, align 8, !dbg !1622, !tbaa !447
  %arrayidx18.i796 = getelementptr inbounds double* %759, i64 %idxprom17.i795, !dbg !1622
  %760 = load double* %arrayidx18.i796, align 8, !dbg !1622, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %760}, i64 0, metadata !1625) #5, !dbg !1622
  %add201023.i = or i32 %mul16.i794, 1, !dbg !1622
  %idxprom21.i797 = sext i32 %add201023.i to i64, !dbg !1622
  %arrayidx22.i798 = getelementptr inbounds double* %759, i64 %idxprom21.i797, !dbg !1622
  %761 = load double* %arrayidx22.i798, align 8, !dbg !1622, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %761}, i64 0, metadata !1626) #5, !dbg !1622
  %inc23.i = add nsw i32 %kk.01041.i, 1, !dbg !1622
  call void @llvm.dbg.value(metadata !{i32 %inc23.i}, i64 0, metadata !1590) #5, !dbg !1622
  %call24.i = call i32 @Zrecip(double %760, double %761, double* %cr00.i, double* %ci00.i) #6, !dbg !1627
  %mul25.i799 = shl nsw i32 %irowA.11040.i, 1, !dbg !1628
  %idxprom26.i800 = sext i32 %mul25.i799 to i64, !dbg !1628
  %arrayidx27.i801 = getelementptr inbounds double* %colB0.01044.i, i64 %idxprom26.i800, !dbg !1628
  %762 = load double* %arrayidx27.i801, align 8, !dbg !1628, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %762}, i64 0, metadata !1629) #5, !dbg !1628
  %add291024.i = or i32 %mul25.i799, 1, !dbg !1628
  %idxprom30.i = sext i32 %add291024.i to i64, !dbg !1628
  %arrayidx31.i802 = getelementptr inbounds double* %colB0.01044.i, i64 %idxprom30.i, !dbg !1628
  %763 = load double* %arrayidx31.i802, align 8, !dbg !1628, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %763}, i64 0, metadata !1630) #5, !dbg !1628
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !1631) #5, !dbg !1632
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !98), !dbg !1632
  %764 = load double* %cr00.i, align 8, !dbg !1632, !tbaa !512
  %mul32.i = fmul double %762, %764, !dbg !1632
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !1633) #5, !dbg !1632
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !95), !dbg !1632
  %765 = load double* %ci00.i, align 8, !dbg !1632, !tbaa !512
  %mul33.i = fmul double %763, %765, !dbg !1632
  %sub34.i803 = fsub double %mul32.i, %mul33.i, !dbg !1632
  store double %sub34.i803, double* %arrayidx27.i801, align 8, !dbg !1632, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !1633) #5, !dbg !1634
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !95), !dbg !1634
  %766 = load double* %ci00.i, align 8, !dbg !1634, !tbaa !512
  %mul38.i804 = fmul double %762, %766, !dbg !1634
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !1631) #5, !dbg !1634
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !98), !dbg !1634
  %767 = load double* %cr00.i, align 8, !dbg !1634, !tbaa !512
  %mul39.i805 = fmul double %763, %767, !dbg !1634
  %add40.i = fadd double %mul38.i804, %mul39.i805, !dbg !1634
  store double %add40.i, double* %arrayidx31.i802, align 8, !dbg !1634, !tbaa !512
  %add.ptr.sum1025.i = add i64 %idxprom26.i800, %idx.ext.i790, !dbg !1635
  %arrayidx47.i806 = getelementptr inbounds double* %colB0.01044.i, i64 %add.ptr.sum1025.i, !dbg !1635
  %768 = load double* %arrayidx47.i806, align 8, !dbg !1635, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %768}, i64 0, metadata !1636) #5, !dbg !1635
  %add.ptr.sum1026.i = add i64 %idxprom30.i, %idx.ext.i790, !dbg !1635
  %arrayidx51.i = getelementptr inbounds double* %colB0.01044.i, i64 %add.ptr.sum1026.i, !dbg !1635
  %769 = load double* %arrayidx51.i, align 8, !dbg !1635, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %769}, i64 0, metadata !1637) #5, !dbg !1635
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !1631) #5, !dbg !1638
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !98), !dbg !1638
  %770 = load double* %cr00.i, align 8, !dbg !1638, !tbaa !512
  %mul52.i807 = fmul double %768, %770, !dbg !1638
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !1633) #5, !dbg !1638
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !95), !dbg !1638
  %771 = load double* %ci00.i, align 8, !dbg !1638, !tbaa !512
  %mul53.i808 = fmul double %769, %771, !dbg !1638
  %sub54.i809 = fsub double %mul52.i807, %mul53.i808, !dbg !1638
  store double %sub54.i809, double* %arrayidx47.i806, align 8, !dbg !1638, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !1633) #5, !dbg !1639
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !95), !dbg !1639
  %772 = load double* %ci00.i, align 8, !dbg !1639, !tbaa !512
  %mul58.i810 = fmul double %768, %772, !dbg !1639
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !1631) #5, !dbg !1639
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !98), !dbg !1639
  %773 = load double* %cr00.i, align 8, !dbg !1639, !tbaa !512
  %mul59.i = fmul double %769, %773, !dbg !1639
  %add60.i = fadd double %mul58.i810, %mul59.i, !dbg !1639
  store double %add60.i, double* %arrayidx51.i, align 8, !dbg !1639, !tbaa !512
  %add.ptr8.sum1027.i = add i64 %idxprom26.i800, %add.ptr.sum.i791, !dbg !1640
  %arrayidx67.i811 = getelementptr inbounds double* %colB0.01044.i, i64 %add.ptr8.sum1027.i, !dbg !1640
  %774 = load double* %arrayidx67.i811, align 8, !dbg !1640, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %774}, i64 0, metadata !1641) #5, !dbg !1640
  %add.ptr8.sum1028.i = add i64 %idxprom30.i, %add.ptr.sum.i791, !dbg !1640
  %arrayidx71.i812 = getelementptr inbounds double* %colB0.01044.i, i64 %add.ptr8.sum1028.i, !dbg !1640
  %775 = load double* %arrayidx71.i812, align 8, !dbg !1640, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %775}, i64 0, metadata !1642) #5, !dbg !1640
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !1631) #5, !dbg !1643
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !98), !dbg !1643
  %776 = load double* %cr00.i, align 8, !dbg !1643, !tbaa !512
  %mul72.i813 = fmul double %774, %776, !dbg !1643
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !1633) #5, !dbg !1643
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !95), !dbg !1643
  %777 = load double* %ci00.i, align 8, !dbg !1643, !tbaa !512
  %mul73.i814 = fmul double %775, %777, !dbg !1643
  %sub74.i815 = fsub double %mul72.i813, %mul73.i814, !dbg !1643
  store double %sub74.i815, double* %arrayidx67.i811, align 8, !dbg !1643, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !1633) #5, !dbg !1644
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !95), !dbg !1644
  %778 = load double* %ci00.i, align 8, !dbg !1644, !tbaa !512
  %mul78.i = fmul double %774, %778, !dbg !1644
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !1631) #5, !dbg !1644
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !98), !dbg !1644
  %779 = load double* %cr00.i, align 8, !dbg !1644, !tbaa !512
  %mul79.i = fmul double %775, %779, !dbg !1644
  %add80.i816 = fadd double %mul78.i, %mul79.i, !dbg !1644
  store double %add80.i816, double* %arrayidx71.i812, align 8, !dbg !1644, !tbaa !512
  br label %if.end287.i, !dbg !1645

if.then86.i:                                      ; preds = %for.body11.i
  %mul87.i = shl i32 %kk.01041.i, 1, !dbg !1646
  %idxprom88.i = sext i32 %mul87.i to i64, !dbg !1646
  call void @llvm.dbg.value(metadata !{double** %entriesA.i767}, i64 0, metadata !1624) #5, !dbg !1646
  call void @llvm.dbg.value(metadata !{double** %entriesA.i767}, i64 0, metadata !104), !dbg !1646
  %780 = load double** %entriesA.i767, align 8, !dbg !1646, !tbaa !447
  %arrayidx89.i817 = getelementptr inbounds double* %780, i64 %idxprom88.i, !dbg !1646
  %781 = load double* %arrayidx89.i817, align 8, !dbg !1646, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %781}, i64 0, metadata !1625) #5, !dbg !1646
  %add911011.i = or i32 %mul87.i, 1, !dbg !1646
  %idxprom92.i = sext i32 %add911011.i to i64, !dbg !1646
  %arrayidx93.i818 = getelementptr inbounds double* %780, i64 %idxprom92.i, !dbg !1646
  %782 = load double* %arrayidx93.i818, align 8, !dbg !1646, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %782}, i64 0, metadata !1626) #5, !dbg !1646
  %mul95.i = add i32 %mul87.i, 2, !dbg !1648
  %idxprom96.i = sext i32 %mul95.i to i64, !dbg !1648
  %arrayidx97.i = getelementptr inbounds double* %780, i64 %idxprom96.i, !dbg !1648
  %783 = load double* %arrayidx97.i, align 8, !dbg !1648, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %783}, i64 0, metadata !1649) #5, !dbg !1648
  %add991012.i = or i32 %mul95.i, 1, !dbg !1648
  %idxprom100.i = sext i32 %add991012.i to i64, !dbg !1648
  %arrayidx101.i819 = getelementptr inbounds double* %780, i64 %idxprom100.i, !dbg !1648
  %784 = load double* %arrayidx101.i819, align 8, !dbg !1648, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %784}, i64 0, metadata !1650) #5, !dbg !1648
  %mul103.i = add i32 %mul87.i, 4, !dbg !1651
  %idxprom104.i = sext i32 %mul103.i to i64, !dbg !1651
  %arrayidx105.i820 = getelementptr inbounds double* %780, i64 %idxprom104.i, !dbg !1651
  %785 = load double* %arrayidx105.i820, align 8, !dbg !1651, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %785}, i64 0, metadata !1652) #5, !dbg !1651
  %add1071013.i = or i32 %mul103.i, 1, !dbg !1651
  %idxprom108.i821 = sext i32 %add1071013.i to i64, !dbg !1651
  %arrayidx109.i822 = getelementptr inbounds double* %780, i64 %idxprom108.i821, !dbg !1651
  %786 = load double* %arrayidx109.i822, align 8, !dbg !1651, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %786}, i64 0, metadata !1653) #5, !dbg !1651
  %inc110.i = add nsw i32 %kk.01041.i, 3, !dbg !1651
  call void @llvm.dbg.value(metadata !{i32 %inc110.i}, i64 0, metadata !1590) #5, !dbg !1651
  %call111.i = call i32 @Zrecip2(double %781, double %782, double %783, double %784, double %783, double %784, double %785, double %786, double* %cr00.i, double* %ci00.i, double* %cr01.i, double* %ci01.i, double* null, double* null, double* %cr11.i, double* %ci11.i) #6, !dbg !1654
  %mul112.i823 = shl nsw i32 %irowA.11040.i, 1, !dbg !1655
  %idxprom113.i824 = sext i32 %mul112.i823 to i64, !dbg !1655
  %arrayidx114.i825 = getelementptr inbounds double* %colB0.01044.i, i64 %idxprom113.i824, !dbg !1655
  %787 = load double* %arrayidx114.i825, align 8, !dbg !1655, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %787}, i64 0, metadata !1629) #5, !dbg !1655
  %add1161014.i = or i32 %mul112.i823, 1, !dbg !1655
  %idxprom117.i = sext i32 %add1161014.i to i64, !dbg !1655
  %arrayidx118.i826 = getelementptr inbounds double* %colB0.01044.i, i64 %idxprom117.i, !dbg !1655
  %788 = load double* %arrayidx118.i826, align 8, !dbg !1655, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %788}, i64 0, metadata !1630) #5, !dbg !1655
  %add120.i = add nsw i32 %mul112.i823, 2, !dbg !1656
  %idxprom121.i827 = sext i32 %add120.i to i64, !dbg !1656
  %arrayidx122.i828 = getelementptr inbounds double* %colB0.01044.i, i64 %idxprom121.i827, !dbg !1656
  %789 = load double* %arrayidx122.i828, align 8, !dbg !1656, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %789}, i64 0, metadata !1636) #5, !dbg !1656
  %add124.i = add nsw i32 %mul112.i823, 3, !dbg !1656
  %idxprom125.i829 = sext i32 %add124.i to i64, !dbg !1656
  %arrayidx126.i830 = getelementptr inbounds double* %colB0.01044.i, i64 %idxprom125.i829, !dbg !1656
  %790 = load double* %arrayidx126.i830, align 8, !dbg !1656, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %790}, i64 0, metadata !1637) #5, !dbg !1656
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !1631) #5, !dbg !1657
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !98), !dbg !1657
  %791 = load double* %cr00.i, align 8, !dbg !1657, !tbaa !512
  %mul127.i831 = fmul double %787, %791, !dbg !1657
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !1633) #5, !dbg !1657
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !95), !dbg !1657
  %792 = load double* %ci00.i, align 8, !dbg !1657, !tbaa !512
  %mul128.i832 = fmul double %788, %792, !dbg !1657
  %sub129.i = fsub double %mul127.i831, %mul128.i832, !dbg !1657
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !1658) #5, !dbg !1657
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !99), !dbg !1657
  %793 = load double* %cr01.i, align 8, !dbg !1657, !tbaa !512
  %mul130.i833 = fmul double %789, %793, !dbg !1657
  %add131.i834 = fadd double %sub129.i, %mul130.i833, !dbg !1657
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !1659) #5, !dbg !1657
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !96), !dbg !1657
  %794 = load double* %ci01.i, align 8, !dbg !1657, !tbaa !512
  %mul132.i835 = fmul double %790, %794, !dbg !1657
  %sub133.i836 = fsub double %add131.i834, %mul132.i835, !dbg !1657
  store double %sub133.i836, double* %arrayidx114.i825, align 8, !dbg !1657, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !1631) #5, !dbg !1660
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !98), !dbg !1660
  %795 = load double* %cr00.i, align 8, !dbg !1660, !tbaa !512
  %mul137.i837 = fmul double %788, %795, !dbg !1660
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !1633) #5, !dbg !1660
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !95), !dbg !1660
  %796 = load double* %ci00.i, align 8, !dbg !1660, !tbaa !512
  %mul138.i838 = fmul double %787, %796, !dbg !1660
  %add139.i839 = fadd double %mul137.i837, %mul138.i838, !dbg !1660
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !1658) #5, !dbg !1660
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !99), !dbg !1660
  %797 = load double* %cr01.i, align 8, !dbg !1660, !tbaa !512
  %mul140.i840 = fmul double %790, %797, !dbg !1660
  %add141.i841 = fadd double %add139.i839, %mul140.i840, !dbg !1660
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !1659) #5, !dbg !1660
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !96), !dbg !1660
  %798 = load double* %ci01.i, align 8, !dbg !1660, !tbaa !512
  %mul142.i842 = fmul double %789, %798, !dbg !1660
  %add143.i843 = fadd double %add141.i841, %mul142.i842, !dbg !1660
  store double %add143.i843, double* %arrayidx118.i826, align 8, !dbg !1660, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !1658) #5, !dbg !1661
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !99), !dbg !1661
  %799 = load double* %cr01.i, align 8, !dbg !1661, !tbaa !512
  %mul148.i844 = fmul double %787, %799, !dbg !1661
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !1659) #5, !dbg !1661
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !96), !dbg !1661
  %800 = load double* %ci01.i, align 8, !dbg !1661, !tbaa !512
  %mul149.i = fmul double %788, %800, !dbg !1661
  %sub150.i845 = fsub double %mul148.i844, %mul149.i, !dbg !1661
  call void @llvm.dbg.value(metadata !{double* %cr11.i}, i64 0, metadata !1662) #5, !dbg !1661
  call void @llvm.dbg.value(metadata !{double* %cr11.i}, i64 0, metadata !100), !dbg !1661
  %801 = load double* %cr11.i, align 8, !dbg !1661, !tbaa !512
  %mul151.i846 = fmul double %789, %801, !dbg !1661
  %add152.i = fadd double %sub150.i845, %mul151.i846, !dbg !1661
  call void @llvm.dbg.value(metadata !{double* %ci11.i}, i64 0, metadata !1663) #5, !dbg !1661
  call void @llvm.dbg.value(metadata !{double* %ci11.i}, i64 0, metadata !97), !dbg !1661
  %802 = load double* %ci11.i, align 8, !dbg !1661, !tbaa !512
  %mul153.i847 = fmul double %790, %802, !dbg !1661
  %sub154.i848 = fsub double %add152.i, %mul153.i847, !dbg !1661
  store double %sub154.i848, double* %arrayidx122.i828, align 8, !dbg !1661, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !1658) #5, !dbg !1664
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !99), !dbg !1664
  %803 = load double* %cr01.i, align 8, !dbg !1664, !tbaa !512
  %mul159.i = fmul double %788, %803, !dbg !1664
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !1659) #5, !dbg !1664
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !96), !dbg !1664
  %804 = load double* %ci01.i, align 8, !dbg !1664, !tbaa !512
  %mul160.i849 = fmul double %787, %804, !dbg !1664
  %add161.i = fadd double %mul159.i, %mul160.i849, !dbg !1664
  call void @llvm.dbg.value(metadata !{double* %cr11.i}, i64 0, metadata !1662) #5, !dbg !1664
  call void @llvm.dbg.value(metadata !{double* %cr11.i}, i64 0, metadata !100), !dbg !1664
  %805 = load double* %cr11.i, align 8, !dbg !1664, !tbaa !512
  %mul162.i = fmul double %790, %805, !dbg !1664
  %add163.i = fadd double %add161.i, %mul162.i, !dbg !1664
  call void @llvm.dbg.value(metadata !{double* %ci11.i}, i64 0, metadata !1663) #5, !dbg !1664
  call void @llvm.dbg.value(metadata !{double* %ci11.i}, i64 0, metadata !97), !dbg !1664
  %806 = load double* %ci11.i, align 8, !dbg !1664, !tbaa !512
  %mul164.i = fmul double %789, %806, !dbg !1664
  %add165.i = fadd double %add163.i, %mul164.i, !dbg !1664
  store double %add165.i, double* %arrayidx126.i830, align 8, !dbg !1664, !tbaa !512
  %add.ptr.sum1015.i = add i64 %idxprom113.i824, %idx.ext.i790, !dbg !1665
  %arrayidx172.i = getelementptr inbounds double* %colB0.01044.i, i64 %add.ptr.sum1015.i, !dbg !1665
  %807 = load double* %arrayidx172.i, align 8, !dbg !1665, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %807}, i64 0, metadata !1629) #5, !dbg !1665
  %add.ptr.sum1016.i = add i64 %idxprom117.i, %idx.ext.i790, !dbg !1665
  %arrayidx176.i850 = getelementptr inbounds double* %colB0.01044.i, i64 %add.ptr.sum1016.i, !dbg !1665
  %808 = load double* %arrayidx176.i850, align 8, !dbg !1665, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %808}, i64 0, metadata !1630) #5, !dbg !1665
  %add.ptr.sum1017.i = add i64 %idxprom121.i827, %idx.ext.i790, !dbg !1666
  %arrayidx180.i851 = getelementptr inbounds double* %colB0.01044.i, i64 %add.ptr.sum1017.i, !dbg !1666
  %809 = load double* %arrayidx180.i851, align 8, !dbg !1666, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %809}, i64 0, metadata !1636) #5, !dbg !1666
  %add.ptr.sum1018.i = add i64 %idxprom125.i829, %idx.ext.i790, !dbg !1666
  %arrayidx184.i852 = getelementptr inbounds double* %colB0.01044.i, i64 %add.ptr.sum1018.i, !dbg !1666
  %810 = load double* %arrayidx184.i852, align 8, !dbg !1666, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %810}, i64 0, metadata !1637) #5, !dbg !1666
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !1631) #5, !dbg !1667
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !98), !dbg !1667
  %811 = load double* %cr00.i, align 8, !dbg !1667, !tbaa !512
  %mul185.i853 = fmul double %807, %811, !dbg !1667
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !1633) #5, !dbg !1667
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !95), !dbg !1667
  %812 = load double* %ci00.i, align 8, !dbg !1667, !tbaa !512
  %mul186.i854 = fmul double %808, %812, !dbg !1667
  %sub187.i855 = fsub double %mul185.i853, %mul186.i854, !dbg !1667
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !1658) #5, !dbg !1667
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !99), !dbg !1667
  %813 = load double* %cr01.i, align 8, !dbg !1667, !tbaa !512
  %mul188.i = fmul double %809, %813, !dbg !1667
  %add189.i = fadd double %sub187.i855, %mul188.i, !dbg !1667
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !1659) #5, !dbg !1667
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !96), !dbg !1667
  %814 = load double* %ci01.i, align 8, !dbg !1667, !tbaa !512
  %mul190.i = fmul double %810, %814, !dbg !1667
  %sub191.i = fsub double %add189.i, %mul190.i, !dbg !1667
  store double %sub191.i, double* %arrayidx172.i, align 8, !dbg !1667, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !1631) #5, !dbg !1668
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !98), !dbg !1668
  %815 = load double* %cr00.i, align 8, !dbg !1668, !tbaa !512
  %mul195.i856 = fmul double %808, %815, !dbg !1668
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !1633) #5, !dbg !1668
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !95), !dbg !1668
  %816 = load double* %ci00.i, align 8, !dbg !1668, !tbaa !512
  %mul196.i = fmul double %807, %816, !dbg !1668
  %add197.i = fadd double %mul195.i856, %mul196.i, !dbg !1668
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !1658) #5, !dbg !1668
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !99), !dbg !1668
  %817 = load double* %cr01.i, align 8, !dbg !1668, !tbaa !512
  %mul198.i857 = fmul double %810, %817, !dbg !1668
  %add199.i = fadd double %add197.i, %mul198.i857, !dbg !1668
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !1659) #5, !dbg !1668
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !96), !dbg !1668
  %818 = load double* %ci01.i, align 8, !dbg !1668, !tbaa !512
  %mul200.i = fmul double %809, %818, !dbg !1668
  %add201.i = fadd double %add199.i, %mul200.i, !dbg !1668
  store double %add201.i, double* %arrayidx176.i850, align 8, !dbg !1668, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !1658) #5, !dbg !1669
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !99), !dbg !1669
  %819 = load double* %cr01.i, align 8, !dbg !1669, !tbaa !512
  %mul206.i858 = fmul double %807, %819, !dbg !1669
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !1659) #5, !dbg !1669
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !96), !dbg !1669
  %820 = load double* %ci01.i, align 8, !dbg !1669, !tbaa !512
  %mul207.i = fmul double %808, %820, !dbg !1669
  %sub208.i859 = fsub double %mul206.i858, %mul207.i, !dbg !1669
  call void @llvm.dbg.value(metadata !{double* %cr11.i}, i64 0, metadata !1662) #5, !dbg !1669
  call void @llvm.dbg.value(metadata !{double* %cr11.i}, i64 0, metadata !100), !dbg !1669
  %821 = load double* %cr11.i, align 8, !dbg !1669, !tbaa !512
  %mul209.i860 = fmul double %809, %821, !dbg !1669
  %add210.i = fadd double %sub208.i859, %mul209.i860, !dbg !1669
  call void @llvm.dbg.value(metadata !{double* %ci11.i}, i64 0, metadata !1663) #5, !dbg !1669
  call void @llvm.dbg.value(metadata !{double* %ci11.i}, i64 0, metadata !97), !dbg !1669
  %822 = load double* %ci11.i, align 8, !dbg !1669, !tbaa !512
  %mul211.i = fmul double %810, %822, !dbg !1669
  %sub212.i = fsub double %add210.i, %mul211.i, !dbg !1669
  store double %sub212.i, double* %arrayidx180.i851, align 8, !dbg !1669, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !1658) #5, !dbg !1670
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !99), !dbg !1670
  %823 = load double* %cr01.i, align 8, !dbg !1670, !tbaa !512
  %mul217.i = fmul double %808, %823, !dbg !1670
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !1659) #5, !dbg !1670
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !96), !dbg !1670
  %824 = load double* %ci01.i, align 8, !dbg !1670, !tbaa !512
  %mul218.i861 = fmul double %807, %824, !dbg !1670
  %add219.i = fadd double %mul217.i, %mul218.i861, !dbg !1670
  call void @llvm.dbg.value(metadata !{double* %cr11.i}, i64 0, metadata !1662) #5, !dbg !1670
  call void @llvm.dbg.value(metadata !{double* %cr11.i}, i64 0, metadata !100), !dbg !1670
  %825 = load double* %cr11.i, align 8, !dbg !1670, !tbaa !512
  %mul220.i = fmul double %810, %825, !dbg !1670
  %add221.i = fadd double %add219.i, %mul220.i, !dbg !1670
  call void @llvm.dbg.value(metadata !{double* %ci11.i}, i64 0, metadata !1663) #5, !dbg !1670
  call void @llvm.dbg.value(metadata !{double* %ci11.i}, i64 0, metadata !97), !dbg !1670
  %826 = load double* %ci11.i, align 8, !dbg !1670, !tbaa !512
  %mul222.i = fmul double %809, %826, !dbg !1670
  %add223.i = fadd double %add221.i, %mul222.i, !dbg !1670
  store double %add223.i, double* %arrayidx184.i852, align 8, !dbg !1670, !tbaa !512
  %add.ptr8.sum1019.i = add i64 %idxprom113.i824, %add.ptr.sum.i791, !dbg !1671
  %arrayidx230.i = getelementptr inbounds double* %colB0.01044.i, i64 %add.ptr8.sum1019.i, !dbg !1671
  %827 = load double* %arrayidx230.i, align 8, !dbg !1671, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %827}, i64 0, metadata !1629) #5, !dbg !1671
  %add.ptr8.sum1020.i = add i64 %idxprom117.i, %add.ptr.sum.i791, !dbg !1671
  %arrayidx234.i = getelementptr inbounds double* %colB0.01044.i, i64 %add.ptr8.sum1020.i, !dbg !1671
  %828 = load double* %arrayidx234.i, align 8, !dbg !1671, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %828}, i64 0, metadata !1630) #5, !dbg !1671
  %add.ptr8.sum1021.i = add i64 %idxprom121.i827, %add.ptr.sum.i791, !dbg !1672
  %arrayidx238.i = getelementptr inbounds double* %colB0.01044.i, i64 %add.ptr8.sum1021.i, !dbg !1672
  %829 = load double* %arrayidx238.i, align 8, !dbg !1672, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %829}, i64 0, metadata !1636) #5, !dbg !1672
  %add.ptr8.sum1022.i = add i64 %idxprom125.i829, %add.ptr.sum.i791, !dbg !1672
  %arrayidx242.i = getelementptr inbounds double* %colB0.01044.i, i64 %add.ptr8.sum1022.i, !dbg !1672
  %830 = load double* %arrayidx242.i, align 8, !dbg !1672, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %830}, i64 0, metadata !1637) #5, !dbg !1672
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !1631) #5, !dbg !1673
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !98), !dbg !1673
  %831 = load double* %cr00.i, align 8, !dbg !1673, !tbaa !512
  %mul243.i = fmul double %827, %831, !dbg !1673
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !1633) #5, !dbg !1673
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !95), !dbg !1673
  %832 = load double* %ci00.i, align 8, !dbg !1673, !tbaa !512
  %mul244.i = fmul double %828, %832, !dbg !1673
  %sub245.i = fsub double %mul243.i, %mul244.i, !dbg !1673
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !1658) #5, !dbg !1673
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !99), !dbg !1673
  %833 = load double* %cr01.i, align 8, !dbg !1673, !tbaa !512
  %mul246.i = fmul double %829, %833, !dbg !1673
  %add247.i = fadd double %sub245.i, %mul246.i, !dbg !1673
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !1659) #5, !dbg !1673
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !96), !dbg !1673
  %834 = load double* %ci01.i, align 8, !dbg !1673, !tbaa !512
  %mul248.i = fmul double %830, %834, !dbg !1673
  %sub249.i = fsub double %add247.i, %mul248.i, !dbg !1673
  store double %sub249.i, double* %arrayidx230.i, align 8, !dbg !1673, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !1631) #5, !dbg !1674
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !98), !dbg !1674
  %835 = load double* %cr00.i, align 8, !dbg !1674, !tbaa !512
  %mul253.i = fmul double %828, %835, !dbg !1674
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !1633) #5, !dbg !1674
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !95), !dbg !1674
  %836 = load double* %ci00.i, align 8, !dbg !1674, !tbaa !512
  %mul254.i = fmul double %827, %836, !dbg !1674
  %add255.i = fadd double %mul253.i, %mul254.i, !dbg !1674
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !1658) #5, !dbg !1674
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !99), !dbg !1674
  %837 = load double* %cr01.i, align 8, !dbg !1674, !tbaa !512
  %mul256.i = fmul double %830, %837, !dbg !1674
  %add257.i = fadd double %add255.i, %mul256.i, !dbg !1674
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !1659) #5, !dbg !1674
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !96), !dbg !1674
  %838 = load double* %ci01.i, align 8, !dbg !1674, !tbaa !512
  %mul258.i = fmul double %829, %838, !dbg !1674
  %add259.i = fadd double %add257.i, %mul258.i, !dbg !1674
  store double %add259.i, double* %arrayidx234.i, align 8, !dbg !1674, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !1658) #5, !dbg !1675
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !99), !dbg !1675
  %839 = load double* %cr01.i, align 8, !dbg !1675, !tbaa !512
  %mul264.i = fmul double %827, %839, !dbg !1675
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !1659) #5, !dbg !1675
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !96), !dbg !1675
  %840 = load double* %ci01.i, align 8, !dbg !1675, !tbaa !512
  %mul265.i = fmul double %828, %840, !dbg !1675
  %sub266.i = fsub double %mul264.i, %mul265.i, !dbg !1675
  call void @llvm.dbg.value(metadata !{double* %cr11.i}, i64 0, metadata !1662) #5, !dbg !1675
  call void @llvm.dbg.value(metadata !{double* %cr11.i}, i64 0, metadata !100), !dbg !1675
  %841 = load double* %cr11.i, align 8, !dbg !1675, !tbaa !512
  %mul267.i = fmul double %829, %841, !dbg !1675
  %add268.i = fadd double %sub266.i, %mul267.i, !dbg !1675
  call void @llvm.dbg.value(metadata !{double* %ci11.i}, i64 0, metadata !1663) #5, !dbg !1675
  call void @llvm.dbg.value(metadata !{double* %ci11.i}, i64 0, metadata !97), !dbg !1675
  %842 = load double* %ci11.i, align 8, !dbg !1675, !tbaa !512
  %mul269.i = fmul double %830, %842, !dbg !1675
  %sub270.i = fsub double %add268.i, %mul269.i, !dbg !1675
  store double %sub270.i, double* %arrayidx238.i, align 8, !dbg !1675, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !1658) #5, !dbg !1676
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !99), !dbg !1676
  %843 = load double* %cr01.i, align 8, !dbg !1676, !tbaa !512
  %mul275.i = fmul double %828, %843, !dbg !1676
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !1659) #5, !dbg !1676
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !96), !dbg !1676
  %844 = load double* %ci01.i, align 8, !dbg !1676, !tbaa !512
  %mul276.i = fmul double %827, %844, !dbg !1676
  %add277.i = fadd double %mul275.i, %mul276.i, !dbg !1676
  call void @llvm.dbg.value(metadata !{double* %cr11.i}, i64 0, metadata !1662) #5, !dbg !1676
  call void @llvm.dbg.value(metadata !{double* %cr11.i}, i64 0, metadata !100), !dbg !1676
  %845 = load double* %cr11.i, align 8, !dbg !1676, !tbaa !512
  %mul278.i = fmul double %830, %845, !dbg !1676
  %add279.i = fadd double %add277.i, %mul278.i, !dbg !1676
  call void @llvm.dbg.value(metadata !{double* %ci11.i}, i64 0, metadata !1663) #5, !dbg !1676
  call void @llvm.dbg.value(metadata !{double* %ci11.i}, i64 0, metadata !97), !dbg !1676
  %846 = load double* %ci11.i, align 8, !dbg !1676, !tbaa !512
  %mul280.i = fmul double %829, %846, !dbg !1676
  %add281.i = fadd double %add279.i, %mul280.i, !dbg !1676
  store double %add281.i, double* %arrayidx242.i, align 8, !dbg !1676, !tbaa !512
  br label %if.end287.i, !dbg !1677

if.end287.i:                                      ; preds = %if.then86.i, %if.then15.i, %for.body11.i
  %kk.1.i862 = phi i32 [ %inc23.i, %if.then15.i ], [ %inc110.i, %if.then86.i ], [ %kk.01041.i, %for.body11.i ]
  %add288.i = add nsw i32 %758, %irowA.11040.i, !dbg !1678
  call void @llvm.dbg.value(metadata !{i32 %add288.i}, i64 0, metadata !1594) #5, !dbg !1678
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i773}, i64 0, metadata !1595) #5, !dbg !1616
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i773}, i64 0, metadata !115), !dbg !1616
  %847 = load i32* %nrowA.i773, align 4, !dbg !1616, !tbaa !452
  %cmp10.i = icmp slt i32 %add288.i, %847, !dbg !1616
  br i1 %cmp10.i, label %if.end287.i.for.body11.i_crit_edge, label %for.cond9.for.end291_crit_edge.i, !dbg !1616

if.end287.i.for.body11.i_crit_edge:               ; preds = %if.end287.i
  %indvars.iv.next1058.i = add i64 %indvars.iv1057.i, 1, !dbg !1616
  br label %for.body11.i, !dbg !1616

for.cond9.for.end291_crit_edge.i:                 ; preds = %if.end287.i
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i774}, i64 0, metadata !1613) #5, !dbg !1679
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i774}, i64 0, metadata !116), !dbg !1679
  %.pre1067.i = load i32* %nrowB.i774, align 4, !dbg !1679, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i771}, i64 0, metadata !1612) #5, !dbg !1610
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i771}, i64 0, metadata !113), !dbg !1610
  %.pre1068.i = load i32* %ncolB.i771, align 4, !dbg !1610, !tbaa !452
  br label %for.end291.i, !dbg !1616

for.end291.i:                                     ; preds = %for.cond9.for.end291_crit_edge.i, %for.body5.i792
  %848 = phi i32 [ %.pre1068.i, %for.cond9.for.end291_crit_edge.i ], [ %754, %for.body5.i792 ], !dbg !1679
  %849 = phi i32 [ %.pre1067.i, %for.cond9.for.end291_crit_edge.i ], [ %756, %for.body5.i792 ], !dbg !1679
  %850 = phi i32 [ %847, %for.cond9.for.end291_crit_edge.i ], [ %755, %for.body5.i792 ]
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i774}, i64 0, metadata !1613) #5, !dbg !1679
  %mul292.i = shl nsw i32 %849, 1, !dbg !1679
  %idx.ext293.i = sext i32 %mul292.i to i64, !dbg !1679
  %add.ptr8.sum.i = add i64 %idx.ext293.i, %add.ptr.sum.i791, !dbg !1679
  %add.ptr294.i = getelementptr inbounds double* %colB0.01044.i, i64 %add.ptr8.sum.i, !dbg !1679
  call void @llvm.dbg.value(metadata !{double* %add.ptr294.i}, i64 0, metadata !1608) #5, !dbg !1679
  %add296.i = add nsw i32 %jcolB.01046.i, 3, !dbg !1610
  call void @llvm.dbg.value(metadata !{i32 %add296.i}, i64 0, metadata !1609) #5, !dbg !1610
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i771}, i64 0, metadata !1612) #5, !dbg !1610
  %sub.i863 = add nsw i32 %848, -2, !dbg !1610
  %cmp4.i864 = icmp slt i32 %add296.i, %sub.i863, !dbg !1610
  br i1 %cmp4.i864, label %for.body5.i792, label %for.end297.i, !dbg !1610

for.end297.i:                                     ; preds = %for.end291.i, %for.end.i786
  %sub.lcssa.i865 = phi i32 [ %sub1042.i, %for.end.i786 ], [ %sub.i863, %for.end291.i ]
  %.lcssa.i866 = phi i32 [ %753, %for.end.i786 ], [ %848, %for.end291.i ]
  %jcolB.0.lcssa.i867 = phi i32 [ 0, %for.end.i786 ], [ %add296.i, %for.end291.i ]
  %colB0.0.lcssa.i868 = phi double* [ %752, %for.end.i786 ], [ %add.ptr294.i, %for.end291.i ]
  %cmp299.i = icmp eq i32 %jcolB.0.lcssa.i867, %sub.lcssa.i865, !dbg !1680
  br i1 %cmp299.i, label %if.then300.i, label %if.else510.i, !dbg !1680

if.then300.i:                                     ; preds = %for.end297.i
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i774}, i64 0, metadata !1613) #5, !dbg !1681
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i774}, i64 0, metadata !116), !dbg !1681
  %851 = load i32* %nrowB.i774, align 4, !dbg !1681, !tbaa !452
  %mul301.i = shl nsw i32 %851, 1, !dbg !1681
  %idx.ext302.i = sext i32 %mul301.i to i64, !dbg !1681
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1590) #5, !dbg !1683
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1593) #5, !dbg !1683
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1594) #5, !dbg !1683
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i773}, i64 0, metadata !1595) #5, !dbg !1683
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i773}, i64 0, metadata !115), !dbg !1683
  %852 = load i32* %nrowA.i773, align 4, !dbg !1683, !tbaa !452
  %cmp3051029.i = icmp sgt i32 %852, 0, !dbg !1683
  br i1 %cmp3051029.i, label %for.body306.i, label %sw.epilog41, !dbg !1683

for.body306.i:                                    ; preds = %if.then300.i, %if.end505.i.for.body306.i_crit_edge
  %indvars.iv.i869 = phi i64 [ %indvars.iv.next.i871, %if.end505.i.for.body306.i_crit_edge ], [ 0, %if.then300.i ]
  %kk.21032.i = phi i32 [ %kk.3.i870, %if.end505.i.for.body306.i_crit_edge ], [ 0, %if.then300.i ]
  %irowA.21031.i = phi i32 [ %add506.i, %if.end505.i.for.body306.i_crit_edge ], [ 0, %if.then300.i ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i775}, i64 0, metadata !1596) #5, !dbg !1685
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i775}, i64 0, metadata !117), !dbg !1685
  %853 = load i32** %pivotsizes.i775, align 8, !dbg !1685, !tbaa !447
  %arrayidx308.i = getelementptr inbounds i32* %853, i64 %indvars.iv.i869, !dbg !1685
  %854 = load i32* %arrayidx308.i, align 4, !dbg !1685, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %854}, i64 0, metadata !1599) #5, !dbg !1685
  switch i32 %854, label %if.end505.i [
    i32 1, label %if.then310.i
    i32 2, label %if.then362.i
  ], !dbg !1687

if.then310.i:                                     ; preds = %for.body306.i
  %mul311.i = shl nsw i32 %kk.21032.i, 1, !dbg !1688
  %idxprom312.i = sext i32 %mul311.i to i64, !dbg !1688
  call void @llvm.dbg.value(metadata !{double** %entriesA.i767}, i64 0, metadata !1624) #5, !dbg !1688
  call void @llvm.dbg.value(metadata !{double** %entriesA.i767}, i64 0, metadata !104), !dbg !1688
  %855 = load double** %entriesA.i767, align 8, !dbg !1688, !tbaa !447
  %arrayidx313.i = getelementptr inbounds double* %855, i64 %idxprom312.i, !dbg !1688
  %856 = load double* %arrayidx313.i, align 8, !dbg !1688, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %856}, i64 0, metadata !1625) #5, !dbg !1688
  %add3151007.i = or i32 %mul311.i, 1, !dbg !1688
  %idxprom316.i = sext i32 %add3151007.i to i64, !dbg !1688
  %arrayidx317.i = getelementptr inbounds double* %855, i64 %idxprom316.i, !dbg !1688
  %857 = load double* %arrayidx317.i, align 8, !dbg !1688, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %857}, i64 0, metadata !1626) #5, !dbg !1688
  %inc318.i = add nsw i32 %kk.21032.i, 1, !dbg !1688
  call void @llvm.dbg.value(metadata !{i32 %inc318.i}, i64 0, metadata !1590) #5, !dbg !1688
  %call319.i = call i32 @Zrecip(double %856, double %857, double* %cr00.i, double* %ci00.i) #6, !dbg !1690
  %mul320.i = shl nsw i32 %irowA.21031.i, 1, !dbg !1691
  %idxprom321.i = sext i32 %mul320.i to i64, !dbg !1691
  %arrayidx322.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %idxprom321.i, !dbg !1691
  %858 = load double* %arrayidx322.i, align 8, !dbg !1691, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %858}, i64 0, metadata !1629) #5, !dbg !1691
  %add3241008.i = or i32 %mul320.i, 1, !dbg !1691
  %idxprom325.i = sext i32 %add3241008.i to i64, !dbg !1691
  %arrayidx326.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %idxprom325.i, !dbg !1691
  %859 = load double* %arrayidx326.i, align 8, !dbg !1691, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %859}, i64 0, metadata !1630) #5, !dbg !1691
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !1631) #5, !dbg !1692
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !98), !dbg !1692
  %860 = load double* %cr00.i, align 8, !dbg !1692, !tbaa !512
  %mul327.i = fmul double %858, %860, !dbg !1692
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !1633) #5, !dbg !1692
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !95), !dbg !1692
  %861 = load double* %ci00.i, align 8, !dbg !1692, !tbaa !512
  %mul328.i = fmul double %859, %861, !dbg !1692
  %sub329.i = fsub double %mul327.i, %mul328.i, !dbg !1692
  store double %sub329.i, double* %arrayidx322.i, align 8, !dbg !1692, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !1633) #5, !dbg !1693
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !95), !dbg !1693
  %862 = load double* %ci00.i, align 8, !dbg !1693, !tbaa !512
  %mul333.i = fmul double %858, %862, !dbg !1693
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !1631) #5, !dbg !1693
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !98), !dbg !1693
  %863 = load double* %cr00.i, align 8, !dbg !1693, !tbaa !512
  %mul334.i = fmul double %859, %863, !dbg !1693
  %add335.i = fadd double %mul333.i, %mul334.i, !dbg !1693
  store double %add335.i, double* %arrayidx326.i, align 8, !dbg !1693, !tbaa !512
  %add.ptr303.sum1009.i = add i64 %idxprom321.i, %idx.ext302.i, !dbg !1694
  %arrayidx342.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %add.ptr303.sum1009.i, !dbg !1694
  %864 = load double* %arrayidx342.i, align 8, !dbg !1694, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %864}, i64 0, metadata !1636) #5, !dbg !1694
  %add.ptr303.sum1010.i = add i64 %idxprom325.i, %idx.ext302.i, !dbg !1694
  %arrayidx346.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %add.ptr303.sum1010.i, !dbg !1694
  %865 = load double* %arrayidx346.i, align 8, !dbg !1694, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %865}, i64 0, metadata !1637) #5, !dbg !1694
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !1631) #5, !dbg !1695
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !98), !dbg !1695
  %866 = load double* %cr00.i, align 8, !dbg !1695, !tbaa !512
  %mul347.i = fmul double %864, %866, !dbg !1695
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !1633) #5, !dbg !1695
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !95), !dbg !1695
  %867 = load double* %ci00.i, align 8, !dbg !1695, !tbaa !512
  %mul348.i = fmul double %865, %867, !dbg !1695
  %sub349.i = fsub double %mul347.i, %mul348.i, !dbg !1695
  store double %sub349.i, double* %arrayidx342.i, align 8, !dbg !1695, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !1633) #5, !dbg !1696
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !95), !dbg !1696
  %868 = load double* %ci00.i, align 8, !dbg !1696, !tbaa !512
  %mul353.i = fmul double %864, %868, !dbg !1696
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !1631) #5, !dbg !1696
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !98), !dbg !1696
  %869 = load double* %cr00.i, align 8, !dbg !1696, !tbaa !512
  %mul354.i = fmul double %865, %869, !dbg !1696
  %add355.i = fadd double %mul353.i, %mul354.i, !dbg !1696
  store double %add355.i, double* %arrayidx346.i, align 8, !dbg !1696, !tbaa !512
  br label %if.end505.i, !dbg !1697

if.then362.i:                                     ; preds = %for.body306.i
  %mul363.i = shl i32 %kk.21032.i, 1, !dbg !1698
  %idxprom364.i = sext i32 %mul363.i to i64, !dbg !1698
  call void @llvm.dbg.value(metadata !{double** %entriesA.i767}, i64 0, metadata !1624) #5, !dbg !1698
  call void @llvm.dbg.value(metadata !{double** %entriesA.i767}, i64 0, metadata !104), !dbg !1698
  %870 = load double** %entriesA.i767, align 8, !dbg !1698, !tbaa !447
  %arrayidx365.i = getelementptr inbounds double* %870, i64 %idxprom364.i, !dbg !1698
  %871 = load double* %arrayidx365.i, align 8, !dbg !1698, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %871}, i64 0, metadata !1625) #5, !dbg !1698
  %add3671000.i = or i32 %mul363.i, 1, !dbg !1698
  %idxprom368.i = sext i32 %add3671000.i to i64, !dbg !1698
  %arrayidx369.i = getelementptr inbounds double* %870, i64 %idxprom368.i, !dbg !1698
  %872 = load double* %arrayidx369.i, align 8, !dbg !1698, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %872}, i64 0, metadata !1626) #5, !dbg !1698
  %mul371.i = add i32 %mul363.i, 2, !dbg !1700
  %idxprom372.i = sext i32 %mul371.i to i64, !dbg !1700
  %arrayidx373.i = getelementptr inbounds double* %870, i64 %idxprom372.i, !dbg !1700
  %873 = load double* %arrayidx373.i, align 8, !dbg !1700, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %873}, i64 0, metadata !1649) #5, !dbg !1700
  %add3751001.i = or i32 %mul371.i, 1, !dbg !1700
  %idxprom376.i = sext i32 %add3751001.i to i64, !dbg !1700
  %arrayidx377.i = getelementptr inbounds double* %870, i64 %idxprom376.i, !dbg !1700
  %874 = load double* %arrayidx377.i, align 8, !dbg !1700, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %874}, i64 0, metadata !1650) #5, !dbg !1700
  %mul379.i = add i32 %mul363.i, 4, !dbg !1701
  %idxprom380.i = sext i32 %mul379.i to i64, !dbg !1701
  %arrayidx381.i = getelementptr inbounds double* %870, i64 %idxprom380.i, !dbg !1701
  %875 = load double* %arrayidx381.i, align 8, !dbg !1701, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %875}, i64 0, metadata !1652) #5, !dbg !1701
  %add3831002.i = or i32 %mul379.i, 1, !dbg !1701
  %idxprom384.i = sext i32 %add3831002.i to i64, !dbg !1701
  %arrayidx385.i = getelementptr inbounds double* %870, i64 %idxprom384.i, !dbg !1701
  %876 = load double* %arrayidx385.i, align 8, !dbg !1701, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %876}, i64 0, metadata !1653) #5, !dbg !1701
  %inc386.i = add nsw i32 %kk.21032.i, 3, !dbg !1701
  call void @llvm.dbg.value(metadata !{i32 %inc386.i}, i64 0, metadata !1590) #5, !dbg !1701
  %call387.i = call i32 @Zrecip2(double %871, double %872, double %873, double %874, double %873, double %874, double %875, double %876, double* %cr00.i, double* %ci00.i, double* %cr01.i, double* %ci01.i, double* null, double* null, double* %cr11.i, double* %ci11.i) #6, !dbg !1702
  %mul388.i = shl nsw i32 %irowA.21031.i, 1, !dbg !1703
  %idxprom389.i = sext i32 %mul388.i to i64, !dbg !1703
  %arrayidx390.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %idxprom389.i, !dbg !1703
  %877 = load double* %arrayidx390.i, align 8, !dbg !1703, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %877}, i64 0, metadata !1629) #5, !dbg !1703
  %add3921003.i = or i32 %mul388.i, 1, !dbg !1703
  %idxprom393.i = sext i32 %add3921003.i to i64, !dbg !1703
  %arrayidx394.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %idxprom393.i, !dbg !1703
  %878 = load double* %arrayidx394.i, align 8, !dbg !1703, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %878}, i64 0, metadata !1630) #5, !dbg !1703
  %add396.i = add nsw i32 %mul388.i, 2, !dbg !1704
  %idxprom397.i = sext i32 %add396.i to i64, !dbg !1704
  %arrayidx398.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %idxprom397.i, !dbg !1704
  %879 = load double* %arrayidx398.i, align 8, !dbg !1704, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %879}, i64 0, metadata !1636) #5, !dbg !1704
  %add400.i = add nsw i32 %mul388.i, 3, !dbg !1704
  %idxprom401.i = sext i32 %add400.i to i64, !dbg !1704
  %arrayidx402.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %idxprom401.i, !dbg !1704
  %880 = load double* %arrayidx402.i, align 8, !dbg !1704, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %880}, i64 0, metadata !1637) #5, !dbg !1704
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !1631) #5, !dbg !1705
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !98), !dbg !1705
  %881 = load double* %cr00.i, align 8, !dbg !1705, !tbaa !512
  %mul403.i = fmul double %877, %881, !dbg !1705
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !1633) #5, !dbg !1705
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !95), !dbg !1705
  %882 = load double* %ci00.i, align 8, !dbg !1705, !tbaa !512
  %mul404.i = fmul double %878, %882, !dbg !1705
  %sub405.i = fsub double %mul403.i, %mul404.i, !dbg !1705
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !1658) #5, !dbg !1705
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !99), !dbg !1705
  %883 = load double* %cr01.i, align 8, !dbg !1705, !tbaa !512
  %mul406.i = fmul double %879, %883, !dbg !1705
  %add407.i = fadd double %sub405.i, %mul406.i, !dbg !1705
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !1659) #5, !dbg !1705
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !96), !dbg !1705
  %884 = load double* %ci01.i, align 8, !dbg !1705, !tbaa !512
  %mul408.i = fmul double %880, %884, !dbg !1705
  %sub409.i = fsub double %add407.i, %mul408.i, !dbg !1705
  store double %sub409.i, double* %arrayidx390.i, align 8, !dbg !1705, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !1631) #5, !dbg !1706
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !98), !dbg !1706
  %885 = load double* %cr00.i, align 8, !dbg !1706, !tbaa !512
  %mul413.i = fmul double %878, %885, !dbg !1706
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !1633) #5, !dbg !1706
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !95), !dbg !1706
  %886 = load double* %ci00.i, align 8, !dbg !1706, !tbaa !512
  %mul414.i = fmul double %877, %886, !dbg !1706
  %add415.i = fadd double %mul413.i, %mul414.i, !dbg !1706
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !1658) #5, !dbg !1706
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !99), !dbg !1706
  %887 = load double* %cr01.i, align 8, !dbg !1706, !tbaa !512
  %mul416.i = fmul double %880, %887, !dbg !1706
  %add417.i = fadd double %add415.i, %mul416.i, !dbg !1706
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !1659) #5, !dbg !1706
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !96), !dbg !1706
  %888 = load double* %ci01.i, align 8, !dbg !1706, !tbaa !512
  %mul418.i = fmul double %879, %888, !dbg !1706
  %add419.i = fadd double %add417.i, %mul418.i, !dbg !1706
  store double %add419.i, double* %arrayidx394.i, align 8, !dbg !1706, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !1658) #5, !dbg !1707
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !99), !dbg !1707
  %889 = load double* %cr01.i, align 8, !dbg !1707, !tbaa !512
  %mul424.i = fmul double %877, %889, !dbg !1707
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !1659) #5, !dbg !1707
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !96), !dbg !1707
  %890 = load double* %ci01.i, align 8, !dbg !1707, !tbaa !512
  %mul425.i = fmul double %878, %890, !dbg !1707
  %sub426.i = fsub double %mul424.i, %mul425.i, !dbg !1707
  call void @llvm.dbg.value(metadata !{double* %cr11.i}, i64 0, metadata !1662) #5, !dbg !1707
  call void @llvm.dbg.value(metadata !{double* %cr11.i}, i64 0, metadata !100), !dbg !1707
  %891 = load double* %cr11.i, align 8, !dbg !1707, !tbaa !512
  %mul427.i = fmul double %879, %891, !dbg !1707
  %add428.i = fadd double %sub426.i, %mul427.i, !dbg !1707
  call void @llvm.dbg.value(metadata !{double* %ci11.i}, i64 0, metadata !1663) #5, !dbg !1707
  call void @llvm.dbg.value(metadata !{double* %ci11.i}, i64 0, metadata !97), !dbg !1707
  %892 = load double* %ci11.i, align 8, !dbg !1707, !tbaa !512
  %mul429.i = fmul double %880, %892, !dbg !1707
  %sub430.i = fsub double %add428.i, %mul429.i, !dbg !1707
  store double %sub430.i, double* %arrayidx398.i, align 8, !dbg !1707, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !1658) #5, !dbg !1708
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !99), !dbg !1708
  %893 = load double* %cr01.i, align 8, !dbg !1708, !tbaa !512
  %mul435.i = fmul double %878, %893, !dbg !1708
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !1659) #5, !dbg !1708
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !96), !dbg !1708
  %894 = load double* %ci01.i, align 8, !dbg !1708, !tbaa !512
  %mul436.i = fmul double %877, %894, !dbg !1708
  %add437.i = fadd double %mul435.i, %mul436.i, !dbg !1708
  call void @llvm.dbg.value(metadata !{double* %cr11.i}, i64 0, metadata !1662) #5, !dbg !1708
  call void @llvm.dbg.value(metadata !{double* %cr11.i}, i64 0, metadata !100), !dbg !1708
  %895 = load double* %cr11.i, align 8, !dbg !1708, !tbaa !512
  %mul438.i = fmul double %880, %895, !dbg !1708
  %add439.i = fadd double %add437.i, %mul438.i, !dbg !1708
  call void @llvm.dbg.value(metadata !{double* %ci11.i}, i64 0, metadata !1663) #5, !dbg !1708
  call void @llvm.dbg.value(metadata !{double* %ci11.i}, i64 0, metadata !97), !dbg !1708
  %896 = load double* %ci11.i, align 8, !dbg !1708, !tbaa !512
  %mul440.i = fmul double %879, %896, !dbg !1708
  %add441.i = fadd double %add439.i, %mul440.i, !dbg !1708
  store double %add441.i, double* %arrayidx402.i, align 8, !dbg !1708, !tbaa !512
  %add.ptr303.sum.i = add i64 %idxprom389.i, %idx.ext302.i, !dbg !1709
  %arrayidx448.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %add.ptr303.sum.i, !dbg !1709
  %897 = load double* %arrayidx448.i, align 8, !dbg !1709, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %897}, i64 0, metadata !1629) #5, !dbg !1709
  %add.ptr303.sum1004.i = add i64 %idxprom393.i, %idx.ext302.i, !dbg !1709
  %arrayidx452.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %add.ptr303.sum1004.i, !dbg !1709
  %898 = load double* %arrayidx452.i, align 8, !dbg !1709, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %898}, i64 0, metadata !1630) #5, !dbg !1709
  %add.ptr303.sum1005.i = add i64 %idxprom397.i, %idx.ext302.i, !dbg !1710
  %arrayidx456.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %add.ptr303.sum1005.i, !dbg !1710
  %899 = load double* %arrayidx456.i, align 8, !dbg !1710, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %899}, i64 0, metadata !1636) #5, !dbg !1710
  %add.ptr303.sum1006.i = add i64 %idxprom401.i, %idx.ext302.i, !dbg !1710
  %arrayidx460.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %add.ptr303.sum1006.i, !dbg !1710
  %900 = load double* %arrayidx460.i, align 8, !dbg !1710, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %900}, i64 0, metadata !1637) #5, !dbg !1710
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !1631) #5, !dbg !1711
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !98), !dbg !1711
  %901 = load double* %cr00.i, align 8, !dbg !1711, !tbaa !512
  %mul461.i = fmul double %897, %901, !dbg !1711
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !1633) #5, !dbg !1711
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !95), !dbg !1711
  %902 = load double* %ci00.i, align 8, !dbg !1711, !tbaa !512
  %mul462.i = fmul double %898, %902, !dbg !1711
  %sub463.i = fsub double %mul461.i, %mul462.i, !dbg !1711
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !1658) #5, !dbg !1711
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !99), !dbg !1711
  %903 = load double* %cr01.i, align 8, !dbg !1711, !tbaa !512
  %mul464.i = fmul double %899, %903, !dbg !1711
  %add465.i = fadd double %sub463.i, %mul464.i, !dbg !1711
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !1659) #5, !dbg !1711
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !96), !dbg !1711
  %904 = load double* %ci01.i, align 8, !dbg !1711, !tbaa !512
  %mul466.i = fmul double %900, %904, !dbg !1711
  %sub467.i = fsub double %add465.i, %mul466.i, !dbg !1711
  store double %sub467.i, double* %arrayidx448.i, align 8, !dbg !1711, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !1631) #5, !dbg !1712
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !98), !dbg !1712
  %905 = load double* %cr00.i, align 8, !dbg !1712, !tbaa !512
  %mul471.i = fmul double %898, %905, !dbg !1712
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !1633) #5, !dbg !1712
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !95), !dbg !1712
  %906 = load double* %ci00.i, align 8, !dbg !1712, !tbaa !512
  %mul472.i = fmul double %897, %906, !dbg !1712
  %add473.i = fadd double %mul471.i, %mul472.i, !dbg !1712
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !1658) #5, !dbg !1712
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !99), !dbg !1712
  %907 = load double* %cr01.i, align 8, !dbg !1712, !tbaa !512
  %mul474.i = fmul double %900, %907, !dbg !1712
  %add475.i = fadd double %add473.i, %mul474.i, !dbg !1712
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !1659) #5, !dbg !1712
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !96), !dbg !1712
  %908 = load double* %ci01.i, align 8, !dbg !1712, !tbaa !512
  %mul476.i = fmul double %899, %908, !dbg !1712
  %add477.i = fadd double %add475.i, %mul476.i, !dbg !1712
  store double %add477.i, double* %arrayidx452.i, align 8, !dbg !1712, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !1658) #5, !dbg !1713
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !99), !dbg !1713
  %909 = load double* %cr01.i, align 8, !dbg !1713, !tbaa !512
  %mul482.i = fmul double %897, %909, !dbg !1713
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !1659) #5, !dbg !1713
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !96), !dbg !1713
  %910 = load double* %ci01.i, align 8, !dbg !1713, !tbaa !512
  %mul483.i = fmul double %898, %910, !dbg !1713
  %sub484.i = fsub double %mul482.i, %mul483.i, !dbg !1713
  call void @llvm.dbg.value(metadata !{double* %cr11.i}, i64 0, metadata !1662) #5, !dbg !1713
  call void @llvm.dbg.value(metadata !{double* %cr11.i}, i64 0, metadata !100), !dbg !1713
  %911 = load double* %cr11.i, align 8, !dbg !1713, !tbaa !512
  %mul485.i = fmul double %899, %911, !dbg !1713
  %add486.i = fadd double %sub484.i, %mul485.i, !dbg !1713
  call void @llvm.dbg.value(metadata !{double* %ci11.i}, i64 0, metadata !1663) #5, !dbg !1713
  call void @llvm.dbg.value(metadata !{double* %ci11.i}, i64 0, metadata !97), !dbg !1713
  %912 = load double* %ci11.i, align 8, !dbg !1713, !tbaa !512
  %mul487.i = fmul double %900, %912, !dbg !1713
  %sub488.i = fsub double %add486.i, %mul487.i, !dbg !1713
  store double %sub488.i, double* %arrayidx456.i, align 8, !dbg !1713, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !1658) #5, !dbg !1714
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !99), !dbg !1714
  %913 = load double* %cr01.i, align 8, !dbg !1714, !tbaa !512
  %mul493.i = fmul double %898, %913, !dbg !1714
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !1659) #5, !dbg !1714
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !96), !dbg !1714
  %914 = load double* %ci01.i, align 8, !dbg !1714, !tbaa !512
  %mul494.i = fmul double %897, %914, !dbg !1714
  %add495.i = fadd double %mul493.i, %mul494.i, !dbg !1714
  call void @llvm.dbg.value(metadata !{double* %cr11.i}, i64 0, metadata !1662) #5, !dbg !1714
  call void @llvm.dbg.value(metadata !{double* %cr11.i}, i64 0, metadata !100), !dbg !1714
  %915 = load double* %cr11.i, align 8, !dbg !1714, !tbaa !512
  %mul496.i = fmul double %900, %915, !dbg !1714
  %add497.i = fadd double %add495.i, %mul496.i, !dbg !1714
  call void @llvm.dbg.value(metadata !{double* %ci11.i}, i64 0, metadata !1663) #5, !dbg !1714
  call void @llvm.dbg.value(metadata !{double* %ci11.i}, i64 0, metadata !97), !dbg !1714
  %916 = load double* %ci11.i, align 8, !dbg !1714, !tbaa !512
  %mul498.i = fmul double %899, %916, !dbg !1714
  %add499.i = fadd double %add497.i, %mul498.i, !dbg !1714
  store double %add499.i, double* %arrayidx460.i, align 8, !dbg !1714, !tbaa !512
  br label %if.end505.i, !dbg !1715

if.end505.i:                                      ; preds = %if.then362.i, %if.then310.i, %for.body306.i
  %kk.3.i870 = phi i32 [ %inc318.i, %if.then310.i ], [ %inc386.i, %if.then362.i ], [ %kk.21032.i, %for.body306.i ]
  %add506.i = add nsw i32 %854, %irowA.21031.i, !dbg !1716
  call void @llvm.dbg.value(metadata !{i32 %add506.i}, i64 0, metadata !1594) #5, !dbg !1716
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i773}, i64 0, metadata !1595) #5, !dbg !1683
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i773}, i64 0, metadata !115), !dbg !1683
  %917 = load i32* %nrowA.i773, align 4, !dbg !1683, !tbaa !452
  %cmp305.i = icmp slt i32 %add506.i, %917, !dbg !1683
  br i1 %cmp305.i, label %if.end505.i.for.body306.i_crit_edge, label %sw.epilog41, !dbg !1683

if.end505.i.for.body306.i_crit_edge:              ; preds = %if.end505.i
  %indvars.iv.next.i871 = add i64 %indvars.iv.i869, 1, !dbg !1683
  br label %for.body306.i, !dbg !1683

if.else510.i:                                     ; preds = %for.end297.i
  %sub511.i = add nsw i32 %.lcssa.i866, -1, !dbg !1717
  %cmp512.i = icmp eq i32 %jcolB.0.lcssa.i867, %sub511.i, !dbg !1717
  br i1 %cmp512.i, label %for.cond514.preheader.i, label %sw.epilog41, !dbg !1717

for.cond514.preheader.i:                          ; preds = %if.else510.i
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i773}, i64 0, metadata !1595) #5, !dbg !1718
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i773}, i64 0, metadata !115), !dbg !1718
  %918 = load i32* %nrowA.i773, align 4, !dbg !1718, !tbaa !452
  %cmp5151034.i = icmp sgt i32 %918, 0, !dbg !1718
  br i1 %cmp5151034.i, label %for.body516.i, label %sw.epilog41, !dbg !1718

for.body516.i:                                    ; preds = %for.cond514.preheader.i, %if.end637.i.for.body516.i_crit_edge
  %indvars.iv1055.i = phi i64 [ %indvars.iv.next1056.i, %if.end637.i.for.body516.i_crit_edge ], [ 0, %for.cond514.preheader.i ]
  %kk.41037.i = phi i32 [ %kk.5.i872, %if.end637.i.for.body516.i_crit_edge ], [ 0, %for.cond514.preheader.i ]
  %irowA.31036.i = phi i32 [ %add638.i, %if.end637.i.for.body516.i_crit_edge ], [ 0, %for.cond514.preheader.i ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i775}, i64 0, metadata !1596) #5, !dbg !1721
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i775}, i64 0, metadata !117), !dbg !1721
  %919 = load i32** %pivotsizes.i775, align 8, !dbg !1721, !tbaa !447
  %arrayidx518.i = getelementptr inbounds i32* %919, i64 %indvars.iv1055.i, !dbg !1721
  %920 = load i32* %arrayidx518.i, align 4, !dbg !1721, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %920}, i64 0, metadata !1599) #5, !dbg !1721
  switch i32 %920, label %if.end637.i [
    i32 1, label %if.then520.i
    i32 2, label %if.then552.i
  ], !dbg !1723

if.then520.i:                                     ; preds = %for.body516.i
  %mul521.i = shl nsw i32 %kk.41037.i, 1, !dbg !1724
  %idxprom522.i = sext i32 %mul521.i to i64, !dbg !1724
  call void @llvm.dbg.value(metadata !{double** %entriesA.i767}, i64 0, metadata !1624) #5, !dbg !1724
  call void @llvm.dbg.value(metadata !{double** %entriesA.i767}, i64 0, metadata !104), !dbg !1724
  %921 = load double** %entriesA.i767, align 8, !dbg !1724, !tbaa !447
  %arrayidx523.i = getelementptr inbounds double* %921, i64 %idxprom522.i, !dbg !1724
  %922 = load double* %arrayidx523.i, align 8, !dbg !1724, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %922}, i64 0, metadata !1625) #5, !dbg !1724
  %add525998.i = or i32 %mul521.i, 1, !dbg !1724
  %idxprom526.i = sext i32 %add525998.i to i64, !dbg !1724
  %arrayidx527.i = getelementptr inbounds double* %921, i64 %idxprom526.i, !dbg !1724
  %923 = load double* %arrayidx527.i, align 8, !dbg !1724, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %923}, i64 0, metadata !1626) #5, !dbg !1724
  %inc528.i = add nsw i32 %kk.41037.i, 1, !dbg !1724
  call void @llvm.dbg.value(metadata !{i32 %inc528.i}, i64 0, metadata !1590) #5, !dbg !1724
  %call529.i = call i32 @Zrecip(double %922, double %923, double* %cr00.i, double* %ci00.i) #6, !dbg !1726
  %mul530.i = shl nsw i32 %irowA.31036.i, 1, !dbg !1727
  %idxprom531.i = sext i32 %mul530.i to i64, !dbg !1727
  %arrayidx532.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %idxprom531.i, !dbg !1727
  %924 = load double* %arrayidx532.i, align 8, !dbg !1727, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %924}, i64 0, metadata !1629) #5, !dbg !1727
  %add534999.i = or i32 %mul530.i, 1, !dbg !1727
  %idxprom535.i = sext i32 %add534999.i to i64, !dbg !1727
  %arrayidx536.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %idxprom535.i, !dbg !1727
  %925 = load double* %arrayidx536.i, align 8, !dbg !1727, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %925}, i64 0, metadata !1630) #5, !dbg !1727
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !1631) #5, !dbg !1728
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !98), !dbg !1728
  %926 = load double* %cr00.i, align 8, !dbg !1728, !tbaa !512
  %mul537.i = fmul double %924, %926, !dbg !1728
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !1633) #5, !dbg !1728
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !95), !dbg !1728
  %927 = load double* %ci00.i, align 8, !dbg !1728, !tbaa !512
  %mul538.i = fmul double %925, %927, !dbg !1728
  %sub539.i = fsub double %mul537.i, %mul538.i, !dbg !1728
  store double %sub539.i, double* %arrayidx532.i, align 8, !dbg !1728, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !1633) #5, !dbg !1729
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !95), !dbg !1729
  %928 = load double* %ci00.i, align 8, !dbg !1729, !tbaa !512
  %mul543.i = fmul double %924, %928, !dbg !1729
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !1631) #5, !dbg !1729
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !98), !dbg !1729
  %929 = load double* %cr00.i, align 8, !dbg !1729, !tbaa !512
  %mul544.i = fmul double %925, %929, !dbg !1729
  %add545.i = fadd double %mul543.i, %mul544.i, !dbg !1729
  store double %add545.i, double* %arrayidx536.i, align 8, !dbg !1729, !tbaa !512
  br label %if.end637.i, !dbg !1730

if.then552.i:                                     ; preds = %for.body516.i
  %mul553.i = shl i32 %kk.41037.i, 1, !dbg !1731
  %idxprom554.i = sext i32 %mul553.i to i64, !dbg !1731
  call void @llvm.dbg.value(metadata !{double** %entriesA.i767}, i64 0, metadata !1624) #5, !dbg !1731
  call void @llvm.dbg.value(metadata !{double** %entriesA.i767}, i64 0, metadata !104), !dbg !1731
  %930 = load double** %entriesA.i767, align 8, !dbg !1731, !tbaa !447
  %arrayidx555.i = getelementptr inbounds double* %930, i64 %idxprom554.i, !dbg !1731
  %931 = load double* %arrayidx555.i, align 8, !dbg !1731, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %931}, i64 0, metadata !1625) #5, !dbg !1731
  %add557994.i = or i32 %mul553.i, 1, !dbg !1731
  %idxprom558.i = sext i32 %add557994.i to i64, !dbg !1731
  %arrayidx559.i = getelementptr inbounds double* %930, i64 %idxprom558.i, !dbg !1731
  %932 = load double* %arrayidx559.i, align 8, !dbg !1731, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %932}, i64 0, metadata !1626) #5, !dbg !1731
  %mul561.i = add i32 %mul553.i, 2, !dbg !1733
  %idxprom562.i = sext i32 %mul561.i to i64, !dbg !1733
  %arrayidx563.i = getelementptr inbounds double* %930, i64 %idxprom562.i, !dbg !1733
  %933 = load double* %arrayidx563.i, align 8, !dbg !1733, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %933}, i64 0, metadata !1649) #5, !dbg !1733
  %add565995.i = or i32 %mul561.i, 1, !dbg !1733
  %idxprom566.i = sext i32 %add565995.i to i64, !dbg !1733
  %arrayidx567.i = getelementptr inbounds double* %930, i64 %idxprom566.i, !dbg !1733
  %934 = load double* %arrayidx567.i, align 8, !dbg !1733, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %934}, i64 0, metadata !1650) #5, !dbg !1733
  %mul569.i = add i32 %mul553.i, 4, !dbg !1734
  %idxprom570.i = sext i32 %mul569.i to i64, !dbg !1734
  %arrayidx571.i = getelementptr inbounds double* %930, i64 %idxprom570.i, !dbg !1734
  %935 = load double* %arrayidx571.i, align 8, !dbg !1734, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %935}, i64 0, metadata !1652) #5, !dbg !1734
  %add573996.i = or i32 %mul569.i, 1, !dbg !1734
  %idxprom574.i = sext i32 %add573996.i to i64, !dbg !1734
  %arrayidx575.i = getelementptr inbounds double* %930, i64 %idxprom574.i, !dbg !1734
  %936 = load double* %arrayidx575.i, align 8, !dbg !1734, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %936}, i64 0, metadata !1653) #5, !dbg !1734
  %inc576.i = add nsw i32 %kk.41037.i, 3, !dbg !1734
  call void @llvm.dbg.value(metadata !{i32 %inc576.i}, i64 0, metadata !1590) #5, !dbg !1734
  %call577.i = call i32 @Zrecip2(double %931, double %932, double %933, double %934, double %933, double %934, double %935, double %936, double* %cr00.i, double* %ci00.i, double* %cr01.i, double* %ci01.i, double* null, double* null, double* %cr11.i, double* %ci11.i) #6, !dbg !1735
  %mul578.i = shl nsw i32 %irowA.31036.i, 1, !dbg !1736
  %idxprom579.i = sext i32 %mul578.i to i64, !dbg !1736
  %arrayidx580.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %idxprom579.i, !dbg !1736
  %937 = load double* %arrayidx580.i, align 8, !dbg !1736, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %937}, i64 0, metadata !1629) #5, !dbg !1736
  %add582997.i = or i32 %mul578.i, 1, !dbg !1736
  %idxprom583.i = sext i32 %add582997.i to i64, !dbg !1736
  %arrayidx584.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %idxprom583.i, !dbg !1736
  %938 = load double* %arrayidx584.i, align 8, !dbg !1736, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %938}, i64 0, metadata !1630) #5, !dbg !1736
  %add586.i = add nsw i32 %mul578.i, 2, !dbg !1737
  %idxprom587.i = sext i32 %add586.i to i64, !dbg !1737
  %arrayidx588.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %idxprom587.i, !dbg !1737
  %939 = load double* %arrayidx588.i, align 8, !dbg !1737, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %939}, i64 0, metadata !1636) #5, !dbg !1737
  %add590.i = add nsw i32 %mul578.i, 3, !dbg !1737
  %idxprom591.i = sext i32 %add590.i to i64, !dbg !1737
  %arrayidx592.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %idxprom591.i, !dbg !1737
  %940 = load double* %arrayidx592.i, align 8, !dbg !1737, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %940}, i64 0, metadata !1637) #5, !dbg !1737
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !1631) #5, !dbg !1738
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !98), !dbg !1738
  %941 = load double* %cr00.i, align 8, !dbg !1738, !tbaa !512
  %mul593.i = fmul double %937, %941, !dbg !1738
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !1633) #5, !dbg !1738
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !95), !dbg !1738
  %942 = load double* %ci00.i, align 8, !dbg !1738, !tbaa !512
  %mul594.i = fmul double %938, %942, !dbg !1738
  %sub595.i = fsub double %mul593.i, %mul594.i, !dbg !1738
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !1658) #5, !dbg !1738
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !99), !dbg !1738
  %943 = load double* %cr01.i, align 8, !dbg !1738, !tbaa !512
  %mul596.i = fmul double %939, %943, !dbg !1738
  %add597.i = fadd double %sub595.i, %mul596.i, !dbg !1738
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !1659) #5, !dbg !1738
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !96), !dbg !1738
  %944 = load double* %ci01.i, align 8, !dbg !1738, !tbaa !512
  %mul598.i = fmul double %940, %944, !dbg !1738
  %sub599.i = fsub double %add597.i, %mul598.i, !dbg !1738
  store double %sub599.i, double* %arrayidx580.i, align 8, !dbg !1738, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !1631) #5, !dbg !1739
  call void @llvm.dbg.value(metadata !{double* %cr00.i}, i64 0, metadata !98), !dbg !1739
  %945 = load double* %cr00.i, align 8, !dbg !1739, !tbaa !512
  %mul603.i = fmul double %938, %945, !dbg !1739
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !1633) #5, !dbg !1739
  call void @llvm.dbg.value(metadata !{double* %ci00.i}, i64 0, metadata !95), !dbg !1739
  %946 = load double* %ci00.i, align 8, !dbg !1739, !tbaa !512
  %mul604.i = fmul double %937, %946, !dbg !1739
  %add605.i = fadd double %mul603.i, %mul604.i, !dbg !1739
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !1658) #5, !dbg !1739
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !99), !dbg !1739
  %947 = load double* %cr01.i, align 8, !dbg !1739, !tbaa !512
  %mul606.i = fmul double %940, %947, !dbg !1739
  %add607.i = fadd double %add605.i, %mul606.i, !dbg !1739
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !1659) #5, !dbg !1739
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !96), !dbg !1739
  %948 = load double* %ci01.i, align 8, !dbg !1739, !tbaa !512
  %mul608.i = fmul double %939, %948, !dbg !1739
  %add609.i = fadd double %add607.i, %mul608.i, !dbg !1739
  store double %add609.i, double* %arrayidx584.i, align 8, !dbg !1739, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !1658) #5, !dbg !1740
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !99), !dbg !1740
  %949 = load double* %cr01.i, align 8, !dbg !1740, !tbaa !512
  %mul614.i = fmul double %937, %949, !dbg !1740
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !1659) #5, !dbg !1740
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !96), !dbg !1740
  %950 = load double* %ci01.i, align 8, !dbg !1740, !tbaa !512
  %mul615.i = fmul double %938, %950, !dbg !1740
  %sub616.i = fsub double %mul614.i, %mul615.i, !dbg !1740
  call void @llvm.dbg.value(metadata !{double* %cr11.i}, i64 0, metadata !1662) #5, !dbg !1740
  call void @llvm.dbg.value(metadata !{double* %cr11.i}, i64 0, metadata !100), !dbg !1740
  %951 = load double* %cr11.i, align 8, !dbg !1740, !tbaa !512
  %mul617.i = fmul double %939, %951, !dbg !1740
  %add618.i = fadd double %sub616.i, %mul617.i, !dbg !1740
  call void @llvm.dbg.value(metadata !{double* %ci11.i}, i64 0, metadata !1663) #5, !dbg !1740
  call void @llvm.dbg.value(metadata !{double* %ci11.i}, i64 0, metadata !97), !dbg !1740
  %952 = load double* %ci11.i, align 8, !dbg !1740, !tbaa !512
  %mul619.i = fmul double %940, %952, !dbg !1740
  %sub620.i = fsub double %add618.i, %mul619.i, !dbg !1740
  store double %sub620.i, double* %arrayidx588.i, align 8, !dbg !1740, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !1658) #5, !dbg !1741
  call void @llvm.dbg.value(metadata !{double* %cr01.i}, i64 0, metadata !99), !dbg !1741
  %953 = load double* %cr01.i, align 8, !dbg !1741, !tbaa !512
  %mul625.i = fmul double %938, %953, !dbg !1741
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !1659) #5, !dbg !1741
  call void @llvm.dbg.value(metadata !{double* %ci01.i}, i64 0, metadata !96), !dbg !1741
  %954 = load double* %ci01.i, align 8, !dbg !1741, !tbaa !512
  %mul626.i = fmul double %937, %954, !dbg !1741
  %add627.i = fadd double %mul625.i, %mul626.i, !dbg !1741
  call void @llvm.dbg.value(metadata !{double* %cr11.i}, i64 0, metadata !1662) #5, !dbg !1741
  call void @llvm.dbg.value(metadata !{double* %cr11.i}, i64 0, metadata !100), !dbg !1741
  %955 = load double* %cr11.i, align 8, !dbg !1741, !tbaa !512
  %mul628.i = fmul double %940, %955, !dbg !1741
  %add629.i = fadd double %add627.i, %mul628.i, !dbg !1741
  call void @llvm.dbg.value(metadata !{double* %ci11.i}, i64 0, metadata !1663) #5, !dbg !1741
  call void @llvm.dbg.value(metadata !{double* %ci11.i}, i64 0, metadata !97), !dbg !1741
  %956 = load double* %ci11.i, align 8, !dbg !1741, !tbaa !512
  %mul630.i = fmul double %939, %956, !dbg !1741
  %add631.i = fadd double %add629.i, %mul630.i, !dbg !1741
  store double %add631.i, double* %arrayidx592.i, align 8, !dbg !1741, !tbaa !512
  br label %if.end637.i, !dbg !1742

if.end637.i:                                      ; preds = %if.then552.i, %if.then520.i, %for.body516.i
  %kk.5.i872 = phi i32 [ %inc528.i, %if.then520.i ], [ %inc576.i, %if.then552.i ], [ %kk.41037.i, %for.body516.i ]
  %add638.i = add nsw i32 %920, %irowA.31036.i, !dbg !1743
  call void @llvm.dbg.value(metadata !{i32 %add638.i}, i64 0, metadata !1594) #5, !dbg !1743
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i773}, i64 0, metadata !1595) #5, !dbg !1718
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i773}, i64 0, metadata !115), !dbg !1718
  %957 = load i32* %nrowA.i773, align 4, !dbg !1718, !tbaa !452
  %cmp515.i = icmp slt i32 %add638.i, %957, !dbg !1718
  br i1 %cmp515.i, label %if.end637.i.for.body516.i_crit_edge, label %sw.epilog41, !dbg !1718

if.end637.i.for.body516.i_crit_edge:              ; preds = %if.end637.i
  %indvars.iv.next1056.i = add i64 %indvars.iv1055.i, 1, !dbg !1718
  br label %for.body516.i, !dbg !1718

sw.bb32:                                          ; preds = %sw.bb24
  %958 = bitcast double* %ci00.i873 to i8*, !dbg !1744
  call void @llvm.lifetime.start(i64 8, i8* %958) #5, !dbg !1744
  %959 = bitcast double* %ci01.i874 to i8*, !dbg !1744
  call void @llvm.lifetime.start(i64 8, i8* %959) #5, !dbg !1744
  %960 = bitcast double* %ci11.i875 to i8*, !dbg !1744
  call void @llvm.lifetime.start(i64 8, i8* %960) #5, !dbg !1744
  %961 = bitcast double* %cr00.i876 to i8*, !dbg !1744
  call void @llvm.lifetime.start(i64 8, i8* %961) #5, !dbg !1744
  %962 = bitcast double* %cr01.i877 to i8*, !dbg !1744
  call void @llvm.lifetime.start(i64 8, i8* %962) #5, !dbg !1744
  %963 = bitcast double* %cr11.i878 to i8*, !dbg !1744
  call void @llvm.lifetime.start(i64 8, i8* %963) #5, !dbg !1744
  %964 = bitcast double** %entriesA.i879 to i8*, !dbg !1744
  call void @llvm.lifetime.start(i64 8, i8* %964) #5, !dbg !1744
  %965 = bitcast double** %entriesB.i880 to i8*, !dbg !1744
  call void @llvm.lifetime.start(i64 8, i8* %965) #5, !dbg !1744
  %966 = bitcast i32* %inc1.i881 to i8*, !dbg !1744
  call void @llvm.lifetime.start(i64 4, i8* %966) #5, !dbg !1744
  %967 = bitcast i32* %inc2.i882 to i8*, !dbg !1744
  call void @llvm.lifetime.start(i64 4, i8* %967) #5, !dbg !1744
  %968 = bitcast i32* %ncolB.i883 to i8*, !dbg !1744
  call void @llvm.lifetime.start(i64 4, i8* %968) #5, !dbg !1744
  %969 = bitcast i32* %nentA.i884 to i8*, !dbg !1744
  call void @llvm.lifetime.start(i64 4, i8* %969) #5, !dbg !1744
  %970 = bitcast i32* %nrowA.i885 to i8*, !dbg !1744
  call void @llvm.lifetime.start(i64 4, i8* %970) #5, !dbg !1744
  %971 = bitcast i32* %nrowB.i886 to i8*, !dbg !1744
  call void @llvm.lifetime.start(i64 4, i8* %971) #5, !dbg !1744
  %972 = bitcast i32** %pivotsizes.i887 to i8*, !dbg !1744
  call void @llvm.lifetime.start(i64 8, i8* %972) #5, !dbg !1744
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !1746) #5, !dbg !1744
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxB}, i64 0, metadata !1747) #5, !dbg !1748
  call void @llvm.dbg.declare(metadata !{double* %ci00.i873}, metadata !55) #5, !dbg !1749
  call void @llvm.dbg.declare(metadata !{double* %ci01.i874}, metadata !56) #5, !dbg !1749
  call void @llvm.dbg.declare(metadata !{double* %ci11.i875}, metadata !57) #5, !dbg !1749
  call void @llvm.dbg.declare(metadata !{double* %cr00.i876}, metadata !58) #5, !dbg !1749
  call void @llvm.dbg.declare(metadata !{double* %cr01.i877}, metadata !59) #5, !dbg !1749
  call void @llvm.dbg.declare(metadata !{double* %cr11.i878}, metadata !60) #5, !dbg !1749
  call void @llvm.dbg.declare(metadata !{double** %entriesA.i879}, metadata !64) #5, !dbg !1750
  call void @llvm.dbg.declare(metadata !{double** %entriesB.i880}, metadata !65) #5, !dbg !1750
  call void @llvm.dbg.declare(metadata !{i32* %inc1.i881}, metadata !66) #5, !dbg !1751
  call void @llvm.dbg.declare(metadata !{i32* %inc2.i882}, metadata !67) #5, !dbg !1751
  call void @llvm.dbg.declare(metadata !{i32* %ncolB.i883}, metadata !73) #5, !dbg !1752
  call void @llvm.dbg.declare(metadata !{i32* %nentA.i884}, metadata !74) #5, !dbg !1752
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i885}, metadata !75) #5, !dbg !1752
  call void @llvm.dbg.declare(metadata !{i32* %nrowB.i886}, metadata !76) #5, !dbg !1752
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes.i887}, metadata !77) #5, !dbg !1753
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i885, i32* %nentA.i884, i32** %pivotsizes.i887, double** %entriesA.i879) #6, !dbg !1754
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1755) #5, !dbg !1756
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1758) #5, !dbg !1756
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1759) #5, !dbg !1756
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i885}, i64 0, metadata !1760) #5, !dbg !1756
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i885}, i64 0, metadata !75), !dbg !1756
  %973 = load i32* %nrowA.i885, align 4, !dbg !1756, !tbaa !452
  %cmp893.i = icmp sgt i32 %973, 0, !dbg !1756
  br i1 %cmp893.i, label %for.body.lr.ph.i888, label %for.end.i898, !dbg !1756

for.body.lr.ph.i888:                              ; preds = %sw.bb32
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i887}, i64 0, metadata !1761) #5, !dbg !1762
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i887}, i64 0, metadata !77), !dbg !1762
  %974 = load i32** %pivotsizes.i887, align 8, !dbg !1762, !tbaa !447
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i885}, i64 0, metadata !1760) #5, !dbg !1756
  br label %for.body.i891, !dbg !1756

for.body.i891:                                    ; preds = %if.end.i897, %for.body.lr.ph.i888
  %indvars.iv905.i = phi i64 [ 0, %for.body.lr.ph.i888 ], [ %indvars.iv.next906.i, %if.end.i897 ]
  %irowA.0895.i = phi i32 [ 0, %for.body.lr.ph.i888 ], [ %add.i894, %if.end.i897 ]
  %ipivot.0894.i = phi i32 [ 0, %for.body.lr.ph.i888 ], [ %inc.i895, %if.end.i897 ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i887}, i64 0, metadata !1761) #5, !dbg !1762
  %arrayidx.i889 = getelementptr inbounds i32* %974, i64 %indvars.iv905.i, !dbg !1762
  %975 = load i32* %arrayidx.i889, align 4, !dbg !1762, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %975}, i64 0, metadata !1764) #5, !dbg !1762
  %.off.i890 = add i32 %975, -1, !dbg !1765
  %976 = icmp ugt i32 %.off.i890, 1, !dbg !1765
  br i1 %976, label %if.then.i893, label %if.end.i897, !dbg !1765

if.then.i893:                                     ; preds = %for.body.i891
  %977 = load %struct._IO_FILE** @stderr, align 8, !dbg !1766, !tbaa !447
  %call.i892 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %977, i8* getelementptr inbounds ([102 x i8]* @.str5, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 %ipivot.0894.i, i32 %975) #6, !dbg !1766
  call void @exit(i32 -1) #7, !dbg !1768
  unreachable, !dbg !1768

if.end.i897:                                      ; preds = %for.body.i891
  %add.i894 = add nsw i32 %975, %irowA.0895.i, !dbg !1769
  call void @llvm.dbg.value(metadata !{i32 %add.i894}, i64 0, metadata !1759) #5, !dbg !1769
  %indvars.iv.next906.i = add i64 %indvars.iv905.i, 1, !dbg !1756
  %inc.i895 = add nsw i32 %ipivot.0894.i, 1, !dbg !1756
  call void @llvm.dbg.value(metadata !{i32 %inc.i895}, i64 0, metadata !1758) #5, !dbg !1756
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i885}, i64 0, metadata !1760) #5, !dbg !1756
  %cmp.i896 = icmp slt i32 %add.i894, %973, !dbg !1756
  br i1 %cmp.i896, label %for.body.i891, label %for.end.i898, !dbg !1756

for.end.i898:                                     ; preds = %if.end.i897, %sw.bb32
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i886, i32* %ncolB.i883, i32* %inc1.i881, i32* %inc2.i882, double** %entriesB.i880) #6, !dbg !1770
  call void @llvm.dbg.value(metadata !{double** %entriesB.i880}, i64 0, metadata !1771) #5, !dbg !1772
  call void @llvm.dbg.value(metadata !{double** %entriesB.i880}, i64 0, metadata !65), !dbg !1772
  %978 = load double** %entriesB.i880, align 8, !dbg !1772, !tbaa !447
  call void @llvm.dbg.value(metadata !{double* %978}, i64 0, metadata !1773) #5, !dbg !1772
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1774) #5, !dbg !1775
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i883}, i64 0, metadata !1777) #5, !dbg !1775
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i883}, i64 0, metadata !73), !dbg !1775
  %979 = load i32* %ncolB.i883, align 4, !dbg !1775, !tbaa !452
  %sub883.i = add nsw i32 %979, -2, !dbg !1775
  %cmp4884.i = icmp sgt i32 %sub883.i, 0, !dbg !1775
  br i1 %cmp4884.i, label %for.body5.lr.ph.i900, label %for.end250.i, !dbg !1775

for.body5.lr.ph.i900:                             ; preds = %for.end.i898
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i886}, i64 0, metadata !1778) #5, !dbg !1779
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i886}, i64 0, metadata !76), !dbg !1779
  %.pre.i899 = load i32* %nrowB.i886, align 4, !dbg !1779, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i885}, i64 0, metadata !1760) #5, !dbg !1781
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i885}, i64 0, metadata !75), !dbg !1781
  %.pre907.i = load i32* %nrowA.i885, align 4, !dbg !1781, !tbaa !452
  br label %for.body5.i904, !dbg !1775

for.body5.i904:                                   ; preds = %for.end244.i, %for.body5.lr.ph.i900
  %980 = phi i32 [ %979, %for.body5.lr.ph.i900 ], [ %1053, %for.end244.i ]
  %981 = phi i32 [ %.pre907.i, %for.body5.lr.ph.i900 ], [ %1055, %for.end244.i ], !dbg !1779
  %982 = phi i32 [ %.pre.i899, %for.body5.lr.ph.i900 ], [ %1054, %for.end244.i ]
  %jcolB.0887.i = phi i32 [ 0, %for.body5.lr.ph.i900 ], [ %add249.i, %for.end244.i ]
  %colB0.0885.i = phi double* [ %978, %for.body5.lr.ph.i900 ], [ %add.ptr247.i, %for.end244.i ]
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i886}, i64 0, metadata !1778) #5, !dbg !1779
  %mul.i901 = shl nsw i32 %982, 1, !dbg !1779
  %idx.ext.i902 = sext i32 %mul.i901 to i64, !dbg !1779
  %add.ptr.sum.i903 = shl nsw i64 %idx.ext.i902, 1, !dbg !1783
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1755) #5, !dbg !1781
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1758) #5, !dbg !1781
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1759) #5, !dbg !1781
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i885}, i64 0, metadata !1760) #5, !dbg !1781
  %cmp10879.i = icmp sgt i32 %981, 0, !dbg !1781
  br i1 %cmp10879.i, label %for.body11.i906, label %for.end244.i, !dbg !1781

for.body11.i906:                                  ; preds = %for.body5.i904, %if.end240.i.for.body11.i906_crit_edge
  %indvars.iv898.i = phi i64 [ %indvars.iv.next899.i, %if.end240.i.for.body11.i906_crit_edge ], [ 0, %for.body5.i904 ]
  %kk.0882.i = phi i32 [ %kk.1.i966, %if.end240.i.for.body11.i906_crit_edge ], [ 0, %for.body5.i904 ]
  %irowA.1881.i = phi i32 [ %add241.i, %if.end240.i.for.body11.i906_crit_edge ], [ 0, %for.body5.i904 ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i887}, i64 0, metadata !1761) #5, !dbg !1784
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i887}, i64 0, metadata !77), !dbg !1784
  %983 = load i32** %pivotsizes.i887, align 8, !dbg !1784, !tbaa !447
  %arrayidx13.i905 = getelementptr inbounds i32* %983, i64 %indvars.iv898.i, !dbg !1784
  %984 = load i32* %arrayidx13.i905, align 4, !dbg !1784, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %984}, i64 0, metadata !1764) #5, !dbg !1784
  switch i32 %984, label %if.end240.i [
    i32 1, label %if.then15.i922
    i32 2, label %if.then70.i
  ], !dbg !1786

if.then15.i922:                                   ; preds = %for.body11.i906
  %mul16.i907 = shl nsw i32 %kk.0882.i, 1, !dbg !1787
  %idxprom17.i908 = sext i32 %mul16.i907 to i64, !dbg !1787
  call void @llvm.dbg.value(metadata !{double** %entriesA.i879}, i64 0, metadata !1789) #5, !dbg !1787
  call void @llvm.dbg.value(metadata !{double** %entriesA.i879}, i64 0, metadata !64), !dbg !1787
  %985 = load double** %entriesA.i879, align 8, !dbg !1787, !tbaa !447
  %arrayidx18.i909 = getelementptr inbounds double* %985, i64 %idxprom17.i908, !dbg !1787
  %986 = load double* %arrayidx18.i909, align 8, !dbg !1787, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %986}, i64 0, metadata !1790) #5, !dbg !1787
  call void @llvm.dbg.value(metadata !505, i64 0, metadata !1791) #5, !dbg !1787
  %inc19.i = add nsw i32 %kk.0882.i, 1, !dbg !1787
  call void @llvm.dbg.value(metadata !{i32 %inc19.i}, i64 0, metadata !1755) #5, !dbg !1787
  %call20.i = call i32 @Zrecip(double %986, double 0.000000e+00, double* %cr00.i876, double* %ci00.i873) #6, !dbg !1792
  %mul21.i910 = shl nsw i32 %irowA.1881.i, 1, !dbg !1793
  %idxprom22.i911 = sext i32 %mul21.i910 to i64, !dbg !1793
  %arrayidx23.i912 = getelementptr inbounds double* %colB0.0885.i, i64 %idxprom22.i911, !dbg !1793
  %987 = load double* %arrayidx23.i912, align 8, !dbg !1793, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %987}, i64 0, metadata !1794) #5, !dbg !1793
  %add25865.i = or i32 %mul21.i910, 1, !dbg !1793
  %idxprom26.i913 = sext i32 %add25865.i to i64, !dbg !1793
  %arrayidx27.i914 = getelementptr inbounds double* %colB0.0885.i, i64 %idxprom26.i913, !dbg !1793
  %988 = load double* %arrayidx27.i914, align 8, !dbg !1793, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %988}, i64 0, metadata !1795) #5, !dbg !1793
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !1796) #5, !dbg !1797
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !58), !dbg !1797
  %989 = load double* %cr00.i876, align 8, !dbg !1797, !tbaa !512
  %mul28.i = fmul double %987, %989, !dbg !1797
  store double %mul28.i, double* %arrayidx23.i912, align 8, !dbg !1797, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !1796) #5, !dbg !1798
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !58), !dbg !1798
  %990 = load double* %cr00.i876, align 8, !dbg !1798, !tbaa !512
  %mul32.i915 = fmul double %988, %990, !dbg !1798
  store double %mul32.i915, double* %arrayidx27.i914, align 8, !dbg !1798, !tbaa !512
  %add.ptr.sum866.i = add i64 %idxprom22.i911, %idx.ext.i902, !dbg !1799
  %arrayidx39.i = getelementptr inbounds double* %colB0.0885.i, i64 %add.ptr.sum866.i, !dbg !1799
  %991 = load double* %arrayidx39.i, align 8, !dbg !1799, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %991}, i64 0, metadata !1800) #5, !dbg !1799
  %add.ptr.sum867.i = add i64 %idxprom26.i913, %idx.ext.i902, !dbg !1799
  %arrayidx43.i916 = getelementptr inbounds double* %colB0.0885.i, i64 %add.ptr.sum867.i, !dbg !1799
  %992 = load double* %arrayidx43.i916, align 8, !dbg !1799, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %992}, i64 0, metadata !1801) #5, !dbg !1799
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !1796) #5, !dbg !1802
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !58), !dbg !1802
  %993 = load double* %cr00.i876, align 8, !dbg !1802, !tbaa !512
  %mul44.i917 = fmul double %991, %993, !dbg !1802
  store double %mul44.i917, double* %arrayidx39.i, align 8, !dbg !1802, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !1796) #5, !dbg !1803
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !58), !dbg !1803
  %994 = load double* %cr00.i876, align 8, !dbg !1803, !tbaa !512
  %mul48.i918 = fmul double %992, %994, !dbg !1803
  store double %mul48.i918, double* %arrayidx43.i916, align 8, !dbg !1803, !tbaa !512
  %add.ptr8.sum868.i = add i64 %idxprom22.i911, %add.ptr.sum.i903, !dbg !1804
  %arrayidx55.i919 = getelementptr inbounds double* %colB0.0885.i, i64 %add.ptr8.sum868.i, !dbg !1804
  %995 = load double* %arrayidx55.i919, align 8, !dbg !1804, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %995}, i64 0, metadata !1805) #5, !dbg !1804
  %add.ptr8.sum869.i = add i64 %idxprom26.i913, %add.ptr.sum.i903, !dbg !1804
  %arrayidx59.i920 = getelementptr inbounds double* %colB0.0885.i, i64 %add.ptr8.sum869.i, !dbg !1804
  %996 = load double* %arrayidx59.i920, align 8, !dbg !1804, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %996}, i64 0, metadata !1806) #5, !dbg !1804
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !1796) #5, !dbg !1807
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !58), !dbg !1807
  %997 = load double* %cr00.i876, align 8, !dbg !1807, !tbaa !512
  %mul60.i = fmul double %995, %997, !dbg !1807
  store double %mul60.i, double* %arrayidx55.i919, align 8, !dbg !1807, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !1796) #5, !dbg !1808
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !58), !dbg !1808
  %998 = load double* %cr00.i876, align 8, !dbg !1808, !tbaa !512
  %mul64.i921 = fmul double %996, %998, !dbg !1808
  store double %mul64.i921, double* %arrayidx59.i920, align 8, !dbg !1808, !tbaa !512
  br label %if.end240.i, !dbg !1809

if.then70.i:                                      ; preds = %for.body11.i906
  %mul71.i923 = shl i32 %kk.0882.i, 1, !dbg !1810
  %idxprom72.i = sext i32 %mul71.i923 to i64, !dbg !1810
  call void @llvm.dbg.value(metadata !{double** %entriesA.i879}, i64 0, metadata !1789) #5, !dbg !1810
  call void @llvm.dbg.value(metadata !{double** %entriesA.i879}, i64 0, metadata !64), !dbg !1810
  %999 = load double** %entriesA.i879, align 8, !dbg !1810, !tbaa !447
  %arrayidx73.i924 = getelementptr inbounds double* %999, i64 %idxprom72.i, !dbg !1810
  %1000 = load double* %arrayidx73.i924, align 8, !dbg !1810, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1000}, i64 0, metadata !1790) #5, !dbg !1810
  call void @llvm.dbg.value(metadata !505, i64 0, metadata !1791) #5, !dbg !1810
  %mul75.i925 = add i32 %mul71.i923, 2, !dbg !1812
  %idxprom76.i = sext i32 %mul75.i925 to i64, !dbg !1812
  %arrayidx77.i926 = getelementptr inbounds double* %999, i64 %idxprom76.i, !dbg !1812
  %1001 = load double* %arrayidx77.i926, align 8, !dbg !1812, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1001}, i64 0, metadata !1813) #5, !dbg !1812
  %add79855.i = or i32 %mul75.i925, 1, !dbg !1812
  %idxprom80.i = sext i32 %add79855.i to i64, !dbg !1812
  %arrayidx81.i927 = getelementptr inbounds double* %999, i64 %idxprom80.i, !dbg !1812
  %1002 = load double* %arrayidx81.i927, align 8, !dbg !1812, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1002}, i64 0, metadata !1814) #5, !dbg !1812
  %mul83.i928 = add i32 %mul71.i923, 4, !dbg !1815
  %idxprom84.i = sext i32 %mul83.i928 to i64, !dbg !1815
  %arrayidx85.i929 = getelementptr inbounds double* %999, i64 %idxprom84.i, !dbg !1815
  %1003 = load double* %arrayidx85.i929, align 8, !dbg !1815, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1003}, i64 0, metadata !1816) #5, !dbg !1815
  call void @llvm.dbg.value(metadata !505, i64 0, metadata !1817) #5, !dbg !1815
  %inc86.i = add nsw i32 %kk.0882.i, 3, !dbg !1815
  call void @llvm.dbg.value(metadata !{i32 %inc86.i}, i64 0, metadata !1755) #5, !dbg !1815
  %sub87.i930 = fsub double -0.000000e+00, %1002, !dbg !1818
  %call88.i = call i32 @Zrecip2(double %1000, double 0.000000e+00, double %1001, double %1002, double %1001, double %sub87.i930, double %1003, double 0.000000e+00, double* %cr00.i876, double* %ci00.i873, double* %cr01.i877, double* %ci01.i874, double* null, double* null, double* %cr11.i878, double* %ci11.i875) #6, !dbg !1818
  %mul89.i931 = shl nsw i32 %irowA.1881.i, 1, !dbg !1819
  %idxprom90.i = sext i32 %mul89.i931 to i64, !dbg !1819
  %arrayidx91.i = getelementptr inbounds double* %colB0.0885.i, i64 %idxprom90.i, !dbg !1819
  %1004 = load double* %arrayidx91.i, align 8, !dbg !1819, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1004}, i64 0, metadata !1794) #5, !dbg !1819
  %add93856.i = or i32 %mul89.i931, 1, !dbg !1819
  %idxprom94.i = sext i32 %add93856.i to i64, !dbg !1819
  %arrayidx95.i932 = getelementptr inbounds double* %colB0.0885.i, i64 %idxprom94.i, !dbg !1819
  %1005 = load double* %arrayidx95.i932, align 8, !dbg !1819, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1005}, i64 0, metadata !1795) #5, !dbg !1819
  %add97.i = add nsw i32 %mul89.i931, 2, !dbg !1820
  %idxprom98.i = sext i32 %add97.i to i64, !dbg !1820
  %arrayidx99.i933 = getelementptr inbounds double* %colB0.0885.i, i64 %idxprom98.i, !dbg !1820
  %1006 = load double* %arrayidx99.i933, align 8, !dbg !1820, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1006}, i64 0, metadata !1800) #5, !dbg !1820
  %add101.i = add nsw i32 %mul89.i931, 3, !dbg !1820
  %idxprom102.i = sext i32 %add101.i to i64, !dbg !1820
  %arrayidx103.i934 = getelementptr inbounds double* %colB0.0885.i, i64 %idxprom102.i, !dbg !1820
  %1007 = load double* %arrayidx103.i934, align 8, !dbg !1820, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1007}, i64 0, metadata !1801) #5, !dbg !1820
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !1796) #5, !dbg !1821
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !58), !dbg !1821
  %1008 = load double* %cr00.i876, align 8, !dbg !1821, !tbaa !512
  %mul104.i935 = fmul double %1004, %1008, !dbg !1821
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !1822) #5, !dbg !1821
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !59), !dbg !1821
  %1009 = load double* %cr01.i877, align 8, !dbg !1821, !tbaa !512
  %mul105.i936 = fmul double %1006, %1009, !dbg !1821
  %add106.i937 = fadd double %mul104.i935, %mul105.i936, !dbg !1821
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !1823) #5, !dbg !1821
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !56), !dbg !1821
  %1010 = load double* %ci01.i874, align 8, !dbg !1821, !tbaa !512
  %mul107.i = fmul double %1007, %1010, !dbg !1821
  %sub108.i938 = fsub double %add106.i937, %mul107.i, !dbg !1821
  store double %sub108.i938, double* %arrayidx91.i, align 8, !dbg !1821, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !1796) #5, !dbg !1824
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !58), !dbg !1824
  %1011 = load double* %cr00.i876, align 8, !dbg !1824, !tbaa !512
  %mul112.i939 = fmul double %1005, %1011, !dbg !1824
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !1822) #5, !dbg !1824
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !59), !dbg !1824
  %1012 = load double* %cr01.i877, align 8, !dbg !1824, !tbaa !512
  %mul113.i = fmul double %1007, %1012, !dbg !1824
  %add114.i = fadd double %mul112.i939, %mul113.i, !dbg !1824
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !1823) #5, !dbg !1824
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !56), !dbg !1824
  %1013 = load double* %ci01.i874, align 8, !dbg !1824, !tbaa !512
  %mul115.i = fmul double %1006, %1013, !dbg !1824
  %add116.i = fadd double %add114.i, %mul115.i, !dbg !1824
  store double %add116.i, double* %arrayidx95.i932, align 8, !dbg !1824, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !1822) #5, !dbg !1825
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !59), !dbg !1825
  %1014 = load double* %cr01.i877, align 8, !dbg !1825, !tbaa !512
  %mul121.i940 = fmul double %1004, %1014, !dbg !1825
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !1823) #5, !dbg !1825
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !56), !dbg !1825
  %1015 = load double* %ci01.i874, align 8, !dbg !1825, !tbaa !512
  %mul122.i941 = fmul double %1005, %1015, !dbg !1825
  %add123.i = fadd double %mul121.i940, %mul122.i941, !dbg !1825
  call void @llvm.dbg.value(metadata !{double* %cr11.i878}, i64 0, metadata !1826) #5, !dbg !1825
  call void @llvm.dbg.value(metadata !{double* %cr11.i878}, i64 0, metadata !60), !dbg !1825
  %1016 = load double* %cr11.i878, align 8, !dbg !1825, !tbaa !512
  %mul124.i942 = fmul double %1006, %1016, !dbg !1825
  %add125.i = fadd double %add123.i, %mul124.i942, !dbg !1825
  store double %add125.i, double* %arrayidx99.i933, align 8, !dbg !1825, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !1822) #5, !dbg !1827
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !59), !dbg !1827
  %1017 = load double* %cr01.i877, align 8, !dbg !1827, !tbaa !512
  %mul130.i943 = fmul double %1005, %1017, !dbg !1827
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !1823) #5, !dbg !1827
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !56), !dbg !1827
  %1018 = load double* %ci01.i874, align 8, !dbg !1827, !tbaa !512
  %mul131.i944 = fmul double %1004, %1018, !dbg !1827
  %sub132.i945 = fsub double %mul130.i943, %mul131.i944, !dbg !1827
  call void @llvm.dbg.value(metadata !{double* %cr11.i878}, i64 0, metadata !1826) #5, !dbg !1827
  call void @llvm.dbg.value(metadata !{double* %cr11.i878}, i64 0, metadata !60), !dbg !1827
  %1019 = load double* %cr11.i878, align 8, !dbg !1827, !tbaa !512
  %mul133.i946 = fmul double %1007, %1019, !dbg !1827
  %add134.i947 = fadd double %sub132.i945, %mul133.i946, !dbg !1827
  store double %add134.i947, double* %arrayidx103.i934, align 8, !dbg !1827, !tbaa !512
  %add.ptr.sum857.i = add i64 %idxprom90.i, %idx.ext.i902, !dbg !1828
  %arrayidx141.i = getelementptr inbounds double* %colB0.0885.i, i64 %add.ptr.sum857.i, !dbg !1828
  %1020 = load double* %arrayidx141.i, align 8, !dbg !1828, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1020}, i64 0, metadata !1794) #5, !dbg !1828
  %add.ptr.sum858.i = add i64 %idxprom94.i, %idx.ext.i902, !dbg !1828
  %arrayidx145.i = getelementptr inbounds double* %colB0.0885.i, i64 %add.ptr.sum858.i, !dbg !1828
  %1021 = load double* %arrayidx145.i, align 8, !dbg !1828, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1021}, i64 0, metadata !1795) #5, !dbg !1828
  %add.ptr.sum859.i = add i64 %idxprom98.i, %idx.ext.i902, !dbg !1829
  %arrayidx149.i948 = getelementptr inbounds double* %colB0.0885.i, i64 %add.ptr.sum859.i, !dbg !1829
  %1022 = load double* %arrayidx149.i948, align 8, !dbg !1829, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1022}, i64 0, metadata !1800) #5, !dbg !1829
  %add.ptr.sum860.i = add i64 %idxprom102.i, %idx.ext.i902, !dbg !1829
  %arrayidx153.i949 = getelementptr inbounds double* %colB0.0885.i, i64 %add.ptr.sum860.i, !dbg !1829
  %1023 = load double* %arrayidx153.i949, align 8, !dbg !1829, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1023}, i64 0, metadata !1801) #5, !dbg !1829
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !1796) #5, !dbg !1830
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !58), !dbg !1830
  %1024 = load double* %cr00.i876, align 8, !dbg !1830, !tbaa !512
  %mul154.i = fmul double %1020, %1024, !dbg !1830
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !1822) #5, !dbg !1830
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !59), !dbg !1830
  %1025 = load double* %cr01.i877, align 8, !dbg !1830, !tbaa !512
  %mul155.i = fmul double %1022, %1025, !dbg !1830
  %add156.i = fadd double %mul154.i, %mul155.i, !dbg !1830
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !1823) #5, !dbg !1830
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !56), !dbg !1830
  %1026 = load double* %ci01.i874, align 8, !dbg !1830, !tbaa !512
  %mul157.i950 = fmul double %1023, %1026, !dbg !1830
  %sub158.i951 = fsub double %add156.i, %mul157.i950, !dbg !1830
  store double %sub158.i951, double* %arrayidx141.i, align 8, !dbg !1830, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !1796) #5, !dbg !1831
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !58), !dbg !1831
  %1027 = load double* %cr00.i876, align 8, !dbg !1831, !tbaa !512
  %mul162.i952 = fmul double %1021, %1027, !dbg !1831
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !1822) #5, !dbg !1831
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !59), !dbg !1831
  %1028 = load double* %cr01.i877, align 8, !dbg !1831, !tbaa !512
  %mul163.i = fmul double %1023, %1028, !dbg !1831
  %add164.i = fadd double %mul162.i952, %mul163.i, !dbg !1831
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !1823) #5, !dbg !1831
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !56), !dbg !1831
  %1029 = load double* %ci01.i874, align 8, !dbg !1831, !tbaa !512
  %mul165.i953 = fmul double %1022, %1029, !dbg !1831
  %add166.i = fadd double %add164.i, %mul165.i953, !dbg !1831
  store double %add166.i, double* %arrayidx145.i, align 8, !dbg !1831, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !1822) #5, !dbg !1832
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !59), !dbg !1832
  %1030 = load double* %cr01.i877, align 8, !dbg !1832, !tbaa !512
  %mul171.i = fmul double %1020, %1030, !dbg !1832
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !1823) #5, !dbg !1832
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !56), !dbg !1832
  %1031 = load double* %ci01.i874, align 8, !dbg !1832, !tbaa !512
  %mul172.i954 = fmul double %1021, %1031, !dbg !1832
  %add173.i = fadd double %mul171.i, %mul172.i954, !dbg !1832
  call void @llvm.dbg.value(metadata !{double* %cr11.i878}, i64 0, metadata !1826) #5, !dbg !1832
  call void @llvm.dbg.value(metadata !{double* %cr11.i878}, i64 0, metadata !60), !dbg !1832
  %1032 = load double* %cr11.i878, align 8, !dbg !1832, !tbaa !512
  %mul174.i955 = fmul double %1022, %1032, !dbg !1832
  %add175.i = fadd double %add173.i, %mul174.i955, !dbg !1832
  store double %add175.i, double* %arrayidx149.i948, align 8, !dbg !1832, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !1822) #5, !dbg !1833
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !59), !dbg !1833
  %1033 = load double* %cr01.i877, align 8, !dbg !1833, !tbaa !512
  %mul180.i = fmul double %1021, %1033, !dbg !1833
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !1823) #5, !dbg !1833
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !56), !dbg !1833
  %1034 = load double* %ci01.i874, align 8, !dbg !1833, !tbaa !512
  %mul181.i956 = fmul double %1020, %1034, !dbg !1833
  %sub182.i = fsub double %mul180.i, %mul181.i956, !dbg !1833
  call void @llvm.dbg.value(metadata !{double* %cr11.i878}, i64 0, metadata !1826) #5, !dbg !1833
  call void @llvm.dbg.value(metadata !{double* %cr11.i878}, i64 0, metadata !60), !dbg !1833
  %1035 = load double* %cr11.i878, align 8, !dbg !1833, !tbaa !512
  %mul183.i957 = fmul double %1023, %1035, !dbg !1833
  %add184.i = fadd double %sub182.i, %mul183.i957, !dbg !1833
  store double %add184.i, double* %arrayidx153.i949, align 8, !dbg !1833, !tbaa !512
  %add.ptr8.sum861.i = add i64 %idxprom90.i, %add.ptr.sum.i903, !dbg !1834
  %arrayidx191.i = getelementptr inbounds double* %colB0.0885.i, i64 %add.ptr8.sum861.i, !dbg !1834
  %1036 = load double* %arrayidx191.i, align 8, !dbg !1834, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1036}, i64 0, metadata !1794) #5, !dbg !1834
  %add.ptr8.sum862.i = add i64 %idxprom94.i, %add.ptr.sum.i903, !dbg !1834
  %arrayidx195.i958 = getelementptr inbounds double* %colB0.0885.i, i64 %add.ptr8.sum862.i, !dbg !1834
  %1037 = load double* %arrayidx195.i958, align 8, !dbg !1834, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1037}, i64 0, metadata !1795) #5, !dbg !1834
  %add.ptr8.sum863.i = add i64 %idxprom98.i, %add.ptr.sum.i903, !dbg !1835
  %arrayidx199.i = getelementptr inbounds double* %colB0.0885.i, i64 %add.ptr8.sum863.i, !dbg !1835
  %1038 = load double* %arrayidx199.i, align 8, !dbg !1835, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1038}, i64 0, metadata !1800) #5, !dbg !1835
  %add.ptr8.sum864.i = add i64 %idxprom102.i, %add.ptr.sum.i903, !dbg !1835
  %arrayidx203.i = getelementptr inbounds double* %colB0.0885.i, i64 %add.ptr8.sum864.i, !dbg !1835
  %1039 = load double* %arrayidx203.i, align 8, !dbg !1835, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1039}, i64 0, metadata !1801) #5, !dbg !1835
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !1796) #5, !dbg !1836
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !58), !dbg !1836
  %1040 = load double* %cr00.i876, align 8, !dbg !1836, !tbaa !512
  %mul204.i959 = fmul double %1036, %1040, !dbg !1836
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !1822) #5, !dbg !1836
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !59), !dbg !1836
  %1041 = load double* %cr01.i877, align 8, !dbg !1836, !tbaa !512
  %mul205.i960 = fmul double %1038, %1041, !dbg !1836
  %add206.i = fadd double %mul204.i959, %mul205.i960, !dbg !1836
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !1823) #5, !dbg !1836
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !56), !dbg !1836
  %1042 = load double* %ci01.i874, align 8, !dbg !1836, !tbaa !512
  %mul207.i961 = fmul double %1039, %1042, !dbg !1836
  %sub208.i962 = fsub double %add206.i, %mul207.i961, !dbg !1836
  store double %sub208.i962, double* %arrayidx191.i, align 8, !dbg !1836, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !1796) #5, !dbg !1837
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !58), !dbg !1837
  %1043 = load double* %cr00.i876, align 8, !dbg !1837, !tbaa !512
  %mul212.i = fmul double %1037, %1043, !dbg !1837
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !1822) #5, !dbg !1837
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !59), !dbg !1837
  %1044 = load double* %cr01.i877, align 8, !dbg !1837, !tbaa !512
  %mul213.i = fmul double %1039, %1044, !dbg !1837
  %add214.i = fadd double %mul212.i, %mul213.i, !dbg !1837
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !1823) #5, !dbg !1837
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !56), !dbg !1837
  %1045 = load double* %ci01.i874, align 8, !dbg !1837, !tbaa !512
  %mul215.i = fmul double %1038, %1045, !dbg !1837
  %add216.i = fadd double %add214.i, %mul215.i, !dbg !1837
  store double %add216.i, double* %arrayidx195.i958, align 8, !dbg !1837, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !1822) #5, !dbg !1838
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !59), !dbg !1838
  %1046 = load double* %cr01.i877, align 8, !dbg !1838, !tbaa !512
  %mul221.i = fmul double %1036, %1046, !dbg !1838
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !1823) #5, !dbg !1838
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !56), !dbg !1838
  %1047 = load double* %ci01.i874, align 8, !dbg !1838, !tbaa !512
  %mul222.i963 = fmul double %1037, %1047, !dbg !1838
  %add223.i964 = fadd double %mul221.i, %mul222.i963, !dbg !1838
  call void @llvm.dbg.value(metadata !{double* %cr11.i878}, i64 0, metadata !1826) #5, !dbg !1838
  call void @llvm.dbg.value(metadata !{double* %cr11.i878}, i64 0, metadata !60), !dbg !1838
  %1048 = load double* %cr11.i878, align 8, !dbg !1838, !tbaa !512
  %mul224.i = fmul double %1038, %1048, !dbg !1838
  %add225.i = fadd double %add223.i964, %mul224.i, !dbg !1838
  store double %add225.i, double* %arrayidx199.i, align 8, !dbg !1838, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !1822) #5, !dbg !1839
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !59), !dbg !1839
  %1049 = load double* %cr01.i877, align 8, !dbg !1839, !tbaa !512
  %mul230.i965 = fmul double %1037, %1049, !dbg !1839
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !1823) #5, !dbg !1839
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !56), !dbg !1839
  %1050 = load double* %ci01.i874, align 8, !dbg !1839, !tbaa !512
  %mul231.i = fmul double %1036, %1050, !dbg !1839
  %sub232.i = fsub double %mul230.i965, %mul231.i, !dbg !1839
  call void @llvm.dbg.value(metadata !{double* %cr11.i878}, i64 0, metadata !1826) #5, !dbg !1839
  call void @llvm.dbg.value(metadata !{double* %cr11.i878}, i64 0, metadata !60), !dbg !1839
  %1051 = load double* %cr11.i878, align 8, !dbg !1839, !tbaa !512
  %mul233.i = fmul double %1039, %1051, !dbg !1839
  %add234.i = fadd double %sub232.i, %mul233.i, !dbg !1839
  store double %add234.i, double* %arrayidx203.i, align 8, !dbg !1839, !tbaa !512
  br label %if.end240.i, !dbg !1840

if.end240.i:                                      ; preds = %if.then70.i, %if.then15.i922, %for.body11.i906
  %kk.1.i966 = phi i32 [ %inc19.i, %if.then15.i922 ], [ %inc86.i, %if.then70.i ], [ %kk.0882.i, %for.body11.i906 ]
  %add241.i = add nsw i32 %984, %irowA.1881.i, !dbg !1841
  call void @llvm.dbg.value(metadata !{i32 %add241.i}, i64 0, metadata !1759) #5, !dbg !1841
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i885}, i64 0, metadata !1760) #5, !dbg !1781
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i885}, i64 0, metadata !75), !dbg !1781
  %1052 = load i32* %nrowA.i885, align 4, !dbg !1781, !tbaa !452
  %cmp10.i967 = icmp slt i32 %add241.i, %1052, !dbg !1781
  br i1 %cmp10.i967, label %if.end240.i.for.body11.i906_crit_edge, label %for.cond9.for.end244_crit_edge.i, !dbg !1781

if.end240.i.for.body11.i906_crit_edge:            ; preds = %if.end240.i
  %indvars.iv.next899.i = add i64 %indvars.iv898.i, 1, !dbg !1781
  br label %for.body11.i906, !dbg !1781

for.cond9.for.end244_crit_edge.i:                 ; preds = %if.end240.i
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i886}, i64 0, metadata !1778) #5, !dbg !1842
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i886}, i64 0, metadata !76), !dbg !1842
  %.pre908.i = load i32* %nrowB.i886, align 4, !dbg !1842, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i883}, i64 0, metadata !1777) #5, !dbg !1775
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i883}, i64 0, metadata !73), !dbg !1775
  %.pre909.i = load i32* %ncolB.i883, align 4, !dbg !1775, !tbaa !452
  br label %for.end244.i, !dbg !1781

for.end244.i:                                     ; preds = %for.cond9.for.end244_crit_edge.i, %for.body5.i904
  %1053 = phi i32 [ %.pre909.i, %for.cond9.for.end244_crit_edge.i ], [ %980, %for.body5.i904 ], !dbg !1842
  %1054 = phi i32 [ %.pre908.i, %for.cond9.for.end244_crit_edge.i ], [ %982, %for.body5.i904 ], !dbg !1842
  %1055 = phi i32 [ %1052, %for.cond9.for.end244_crit_edge.i ], [ %981, %for.body5.i904 ]
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i886}, i64 0, metadata !1778) #5, !dbg !1842
  %mul245.i = shl nsw i32 %1054, 1, !dbg !1842
  %idx.ext246.i = sext i32 %mul245.i to i64, !dbg !1842
  %add.ptr8.sum.i968 = add i64 %idx.ext246.i, %add.ptr.sum.i903, !dbg !1842
  %add.ptr247.i = getelementptr inbounds double* %colB0.0885.i, i64 %add.ptr8.sum.i968, !dbg !1842
  call void @llvm.dbg.value(metadata !{double* %add.ptr247.i}, i64 0, metadata !1773) #5, !dbg !1842
  %add249.i = add nsw i32 %jcolB.0887.i, 3, !dbg !1775
  call void @llvm.dbg.value(metadata !{i32 %add249.i}, i64 0, metadata !1774) #5, !dbg !1775
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i883}, i64 0, metadata !1777) #5, !dbg !1775
  %sub.i969 = add nsw i32 %1053, -2, !dbg !1775
  %cmp4.i970 = icmp slt i32 %add249.i, %sub.i969, !dbg !1775
  br i1 %cmp4.i970, label %for.body5.i904, label %for.end250.i, !dbg !1775

for.end250.i:                                     ; preds = %for.end244.i, %for.end.i898
  %sub.lcssa.i971 = phi i32 [ %sub883.i, %for.end.i898 ], [ %sub.i969, %for.end244.i ]
  %.lcssa.i972 = phi i32 [ %979, %for.end.i898 ], [ %1053, %for.end244.i ]
  %jcolB.0.lcssa.i973 = phi i32 [ 0, %for.end.i898 ], [ %add249.i, %for.end244.i ]
  %colB0.0.lcssa.i974 = phi double* [ %978, %for.end.i898 ], [ %add.ptr247.i, %for.end244.i ]
  %cmp252.i = icmp eq i32 %jcolB.0.lcssa.i973, %sub.lcssa.i971, !dbg !1843
  br i1 %cmp252.i, label %if.then253.i, label %if.else428.i, !dbg !1843

if.then253.i:                                     ; preds = %for.end250.i
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i886}, i64 0, metadata !1778) #5, !dbg !1844
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i886}, i64 0, metadata !76), !dbg !1844
  %1056 = load i32* %nrowB.i886, align 4, !dbg !1844, !tbaa !452
  %mul254.i975 = shl nsw i32 %1056, 1, !dbg !1844
  %idx.ext255.i = sext i32 %mul254.i975 to i64, !dbg !1844
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1755) #5, !dbg !1846
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1758) #5, !dbg !1846
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1759) #5, !dbg !1846
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i885}, i64 0, metadata !1760) #5, !dbg !1846
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i885}, i64 0, metadata !75), !dbg !1846
  %1057 = load i32* %nrowA.i885, align 4, !dbg !1846, !tbaa !452
  %cmp258870.i = icmp sgt i32 %1057, 0, !dbg !1846
  br i1 %cmp258870.i, label %for.body259.i, label %sw.epilog41, !dbg !1846

for.body259.i:                                    ; preds = %if.then253.i, %if.end423.i.for.body259.i_crit_edge
  %indvars.iv.i976 = phi i64 [ %indvars.iv.next.i992, %if.end423.i.for.body259.i_crit_edge ], [ 0, %if.then253.i ]
  %kk.2873.i = phi i32 [ %kk.3.i991, %if.end423.i.for.body259.i_crit_edge ], [ 0, %if.then253.i ]
  %irowA.2872.i = phi i32 [ %add424.i, %if.end423.i.for.body259.i_crit_edge ], [ 0, %if.then253.i ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i887}, i64 0, metadata !1761) #5, !dbg !1848
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i887}, i64 0, metadata !77), !dbg !1848
  %1058 = load i32** %pivotsizes.i887, align 8, !dbg !1848, !tbaa !447
  %arrayidx261.i = getelementptr inbounds i32* %1058, i64 %indvars.iv.i976, !dbg !1848
  %1059 = load i32* %arrayidx261.i, align 4, !dbg !1848, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %1059}, i64 0, metadata !1764) #5, !dbg !1848
  switch i32 %1059, label %if.end423.i [
    i32 1, label %if.then263.i
    i32 2, label %if.then303.i
  ], !dbg !1850

if.then263.i:                                     ; preds = %for.body259.i
  %mul264.i977 = shl nsw i32 %kk.2873.i, 1, !dbg !1851
  %idxprom265.i = sext i32 %mul264.i977 to i64, !dbg !1851
  call void @llvm.dbg.value(metadata !{double** %entriesA.i879}, i64 0, metadata !1789) #5, !dbg !1851
  call void @llvm.dbg.value(metadata !{double** %entriesA.i879}, i64 0, metadata !64), !dbg !1851
  %1060 = load double** %entriesA.i879, align 8, !dbg !1851, !tbaa !447
  %arrayidx266.i = getelementptr inbounds double* %1060, i64 %idxprom265.i, !dbg !1851
  %1061 = load double* %arrayidx266.i, align 8, !dbg !1851, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1061}, i64 0, metadata !1790) #5, !dbg !1851
  call void @llvm.dbg.value(metadata !505, i64 0, metadata !1791) #5, !dbg !1851
  %inc267.i = add nsw i32 %kk.2873.i, 1, !dbg !1851
  call void @llvm.dbg.value(metadata !{i32 %inc267.i}, i64 0, metadata !1755) #5, !dbg !1851
  %call268.i = call i32 @Zrecip(double %1061, double 0.000000e+00, double* %cr00.i876, double* %ci00.i873) #6, !dbg !1853
  %mul269.i978 = shl nsw i32 %irowA.2872.i, 1, !dbg !1854
  %idxprom270.i = sext i32 %mul269.i978 to i64, !dbg !1854
  %arrayidx271.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %idxprom270.i, !dbg !1854
  %1062 = load double* %arrayidx271.i, align 8, !dbg !1854, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1062}, i64 0, metadata !1794) #5, !dbg !1854
  %add273852.i = or i32 %mul269.i978, 1, !dbg !1854
  %idxprom274.i = sext i32 %add273852.i to i64, !dbg !1854
  %arrayidx275.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %idxprom274.i, !dbg !1854
  %1063 = load double* %arrayidx275.i, align 8, !dbg !1854, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1063}, i64 0, metadata !1795) #5, !dbg !1854
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !1796) #5, !dbg !1855
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !58), !dbg !1855
  %1064 = load double* %cr00.i876, align 8, !dbg !1855, !tbaa !512
  %mul276.i979 = fmul double %1062, %1064, !dbg !1855
  store double %mul276.i979, double* %arrayidx271.i, align 8, !dbg !1855, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !1796) #5, !dbg !1856
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !58), !dbg !1856
  %1065 = load double* %cr00.i876, align 8, !dbg !1856, !tbaa !512
  %mul280.i980 = fmul double %1063, %1065, !dbg !1856
  store double %mul280.i980, double* %arrayidx275.i, align 8, !dbg !1856, !tbaa !512
  %add.ptr256.sum853.i = add i64 %idxprom270.i, %idx.ext255.i, !dbg !1857
  %arrayidx287.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %add.ptr256.sum853.i, !dbg !1857
  %1066 = load double* %arrayidx287.i, align 8, !dbg !1857, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1066}, i64 0, metadata !1800) #5, !dbg !1857
  %add.ptr256.sum854.i = add i64 %idxprom274.i, %idx.ext255.i, !dbg !1857
  %arrayidx291.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %add.ptr256.sum854.i, !dbg !1857
  %1067 = load double* %arrayidx291.i, align 8, !dbg !1857, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1067}, i64 0, metadata !1801) #5, !dbg !1857
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !1796) #5, !dbg !1858
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !58), !dbg !1858
  %1068 = load double* %cr00.i876, align 8, !dbg !1858, !tbaa !512
  %mul292.i981 = fmul double %1066, %1068, !dbg !1858
  store double %mul292.i981, double* %arrayidx287.i, align 8, !dbg !1858, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !1796) #5, !dbg !1859
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !58), !dbg !1859
  %1069 = load double* %cr00.i876, align 8, !dbg !1859, !tbaa !512
  %mul296.i = fmul double %1067, %1069, !dbg !1859
  store double %mul296.i, double* %arrayidx291.i, align 8, !dbg !1859, !tbaa !512
  br label %if.end423.i, !dbg !1860

if.then303.i:                                     ; preds = %for.body259.i
  %mul304.i = shl i32 %kk.2873.i, 1, !dbg !1861
  %idxprom305.i = sext i32 %mul304.i to i64, !dbg !1861
  call void @llvm.dbg.value(metadata !{double** %entriesA.i879}, i64 0, metadata !1789) #5, !dbg !1861
  call void @llvm.dbg.value(metadata !{double** %entriesA.i879}, i64 0, metadata !64), !dbg !1861
  %1070 = load double** %entriesA.i879, align 8, !dbg !1861, !tbaa !447
  %arrayidx306.i = getelementptr inbounds double* %1070, i64 %idxprom305.i, !dbg !1861
  %1071 = load double* %arrayidx306.i, align 8, !dbg !1861, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1071}, i64 0, metadata !1790) #5, !dbg !1861
  call void @llvm.dbg.value(metadata !505, i64 0, metadata !1791) #5, !dbg !1861
  %mul308.i = add i32 %mul304.i, 2, !dbg !1863
  %idxprom309.i = sext i32 %mul308.i to i64, !dbg !1863
  %arrayidx310.i = getelementptr inbounds double* %1070, i64 %idxprom309.i, !dbg !1863
  %1072 = load double* %arrayidx310.i, align 8, !dbg !1863, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1072}, i64 0, metadata !1813) #5, !dbg !1863
  %add312847.i = or i32 %mul308.i, 1, !dbg !1863
  %idxprom313.i = sext i32 %add312847.i to i64, !dbg !1863
  %arrayidx314.i = getelementptr inbounds double* %1070, i64 %idxprom313.i, !dbg !1863
  %1073 = load double* %arrayidx314.i, align 8, !dbg !1863, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1073}, i64 0, metadata !1814) #5, !dbg !1863
  %mul316.i = add i32 %mul304.i, 4, !dbg !1864
  %idxprom317.i = sext i32 %mul316.i to i64, !dbg !1864
  %arrayidx318.i = getelementptr inbounds double* %1070, i64 %idxprom317.i, !dbg !1864
  %1074 = load double* %arrayidx318.i, align 8, !dbg !1864, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1074}, i64 0, metadata !1816) #5, !dbg !1864
  call void @llvm.dbg.value(metadata !505, i64 0, metadata !1817) #5, !dbg !1864
  %inc319.i = add nsw i32 %kk.2873.i, 3, !dbg !1864
  call void @llvm.dbg.value(metadata !{i32 %inc319.i}, i64 0, metadata !1755) #5, !dbg !1864
  %sub320.i = fsub double -0.000000e+00, %1073, !dbg !1865
  %call321.i = call i32 @Zrecip2(double %1071, double 0.000000e+00, double %1072, double %1073, double %1072, double %sub320.i, double %1074, double 0.000000e+00, double* %cr00.i876, double* %ci00.i873, double* %cr01.i877, double* %ci01.i874, double* null, double* null, double* %cr11.i878, double* %ci11.i875) #6, !dbg !1865
  %mul322.i = shl nsw i32 %irowA.2872.i, 1, !dbg !1866
  %idxprom323.i = sext i32 %mul322.i to i64, !dbg !1866
  %arrayidx324.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %idxprom323.i, !dbg !1866
  %1075 = load double* %arrayidx324.i, align 8, !dbg !1866, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1075}, i64 0, metadata !1794) #5, !dbg !1866
  %add326848.i = or i32 %mul322.i, 1, !dbg !1866
  %idxprom327.i = sext i32 %add326848.i to i64, !dbg !1866
  %arrayidx328.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %idxprom327.i, !dbg !1866
  %1076 = load double* %arrayidx328.i, align 8, !dbg !1866, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1076}, i64 0, metadata !1795) #5, !dbg !1866
  %add330.i = add nsw i32 %mul322.i, 2, !dbg !1867
  %idxprom331.i = sext i32 %add330.i to i64, !dbg !1867
  %arrayidx332.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %idxprom331.i, !dbg !1867
  %1077 = load double* %arrayidx332.i, align 8, !dbg !1867, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1077}, i64 0, metadata !1800) #5, !dbg !1867
  %add334.i = add nsw i32 %mul322.i, 3, !dbg !1867
  %idxprom335.i = sext i32 %add334.i to i64, !dbg !1867
  %arrayidx336.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %idxprom335.i, !dbg !1867
  %1078 = load double* %arrayidx336.i, align 8, !dbg !1867, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1078}, i64 0, metadata !1801) #5, !dbg !1867
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !1796) #5, !dbg !1868
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !58), !dbg !1868
  %1079 = load double* %cr00.i876, align 8, !dbg !1868, !tbaa !512
  %mul337.i = fmul double %1075, %1079, !dbg !1868
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !1822) #5, !dbg !1868
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !59), !dbg !1868
  %1080 = load double* %cr01.i877, align 8, !dbg !1868, !tbaa !512
  %mul338.i = fmul double %1077, %1080, !dbg !1868
  %add339.i = fadd double %mul337.i, %mul338.i, !dbg !1868
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !1823) #5, !dbg !1868
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !56), !dbg !1868
  %1081 = load double* %ci01.i874, align 8, !dbg !1868, !tbaa !512
  %mul340.i = fmul double %1078, %1081, !dbg !1868
  %sub341.i = fsub double %add339.i, %mul340.i, !dbg !1868
  store double %sub341.i, double* %arrayidx324.i, align 8, !dbg !1868, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !1796) #5, !dbg !1869
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !58), !dbg !1869
  %1082 = load double* %cr00.i876, align 8, !dbg !1869, !tbaa !512
  %mul345.i = fmul double %1076, %1082, !dbg !1869
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !1822) #5, !dbg !1869
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !59), !dbg !1869
  %1083 = load double* %cr01.i877, align 8, !dbg !1869, !tbaa !512
  %mul346.i = fmul double %1078, %1083, !dbg !1869
  %add347.i = fadd double %mul345.i, %mul346.i, !dbg !1869
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !1823) #5, !dbg !1869
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !56), !dbg !1869
  %1084 = load double* %ci01.i874, align 8, !dbg !1869, !tbaa !512
  %mul348.i982 = fmul double %1077, %1084, !dbg !1869
  %add349.i = fadd double %add347.i, %mul348.i982, !dbg !1869
  store double %add349.i, double* %arrayidx328.i, align 8, !dbg !1869, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !1822) #5, !dbg !1870
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !59), !dbg !1870
  %1085 = load double* %cr01.i877, align 8, !dbg !1870, !tbaa !512
  %mul354.i983 = fmul double %1075, %1085, !dbg !1870
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !1823) #5, !dbg !1870
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !56), !dbg !1870
  %1086 = load double* %ci01.i874, align 8, !dbg !1870, !tbaa !512
  %mul355.i = fmul double %1076, %1086, !dbg !1870
  %add356.i = fadd double %mul354.i983, %mul355.i, !dbg !1870
  call void @llvm.dbg.value(metadata !{double* %cr11.i878}, i64 0, metadata !1826) #5, !dbg !1870
  call void @llvm.dbg.value(metadata !{double* %cr11.i878}, i64 0, metadata !60), !dbg !1870
  %1087 = load double* %cr11.i878, align 8, !dbg !1870, !tbaa !512
  %mul357.i = fmul double %1077, %1087, !dbg !1870
  %add358.i = fadd double %add356.i, %mul357.i, !dbg !1870
  store double %add358.i, double* %arrayidx332.i, align 8, !dbg !1870, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !1822) #5, !dbg !1871
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !59), !dbg !1871
  %1088 = load double* %cr01.i877, align 8, !dbg !1871, !tbaa !512
  %mul363.i984 = fmul double %1076, %1088, !dbg !1871
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !1823) #5, !dbg !1871
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !56), !dbg !1871
  %1089 = load double* %ci01.i874, align 8, !dbg !1871, !tbaa !512
  %mul364.i = fmul double %1075, %1089, !dbg !1871
  %sub365.i = fsub double %mul363.i984, %mul364.i, !dbg !1871
  call void @llvm.dbg.value(metadata !{double* %cr11.i878}, i64 0, metadata !1826) #5, !dbg !1871
  call void @llvm.dbg.value(metadata !{double* %cr11.i878}, i64 0, metadata !60), !dbg !1871
  %1090 = load double* %cr11.i878, align 8, !dbg !1871, !tbaa !512
  %mul366.i = fmul double %1078, %1090, !dbg !1871
  %add367.i = fadd double %sub365.i, %mul366.i, !dbg !1871
  store double %add367.i, double* %arrayidx336.i, align 8, !dbg !1871, !tbaa !512
  %add.ptr256.sum.i = add i64 %idxprom323.i, %idx.ext255.i, !dbg !1872
  %arrayidx374.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %add.ptr256.sum.i, !dbg !1872
  %1091 = load double* %arrayidx374.i, align 8, !dbg !1872, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1091}, i64 0, metadata !1794) #5, !dbg !1872
  %add.ptr256.sum849.i = add i64 %idxprom327.i, %idx.ext255.i, !dbg !1872
  %arrayidx378.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %add.ptr256.sum849.i, !dbg !1872
  %1092 = load double* %arrayidx378.i, align 8, !dbg !1872, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1092}, i64 0, metadata !1795) #5, !dbg !1872
  %add.ptr256.sum850.i = add i64 %idxprom331.i, %idx.ext255.i, !dbg !1873
  %arrayidx382.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %add.ptr256.sum850.i, !dbg !1873
  %1093 = load double* %arrayidx382.i, align 8, !dbg !1873, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1093}, i64 0, metadata !1800) #5, !dbg !1873
  %add.ptr256.sum851.i = add i64 %idxprom335.i, %idx.ext255.i, !dbg !1873
  %arrayidx386.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %add.ptr256.sum851.i, !dbg !1873
  %1094 = load double* %arrayidx386.i, align 8, !dbg !1873, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1094}, i64 0, metadata !1801) #5, !dbg !1873
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !1796) #5, !dbg !1874
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !58), !dbg !1874
  %1095 = load double* %cr00.i876, align 8, !dbg !1874, !tbaa !512
  %mul387.i = fmul double %1091, %1095, !dbg !1874
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !1822) #5, !dbg !1874
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !59), !dbg !1874
  %1096 = load double* %cr01.i877, align 8, !dbg !1874, !tbaa !512
  %mul388.i985 = fmul double %1093, %1096, !dbg !1874
  %add389.i = fadd double %mul387.i, %mul388.i985, !dbg !1874
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !1823) #5, !dbg !1874
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !56), !dbg !1874
  %1097 = load double* %ci01.i874, align 8, !dbg !1874, !tbaa !512
  %mul390.i = fmul double %1094, %1097, !dbg !1874
  %sub391.i = fsub double %add389.i, %mul390.i, !dbg !1874
  store double %sub391.i, double* %arrayidx374.i, align 8, !dbg !1874, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !1796) #5, !dbg !1875
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !58), !dbg !1875
  %1098 = load double* %cr00.i876, align 8, !dbg !1875, !tbaa !512
  %mul395.i = fmul double %1092, %1098, !dbg !1875
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !1822) #5, !dbg !1875
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !59), !dbg !1875
  %1099 = load double* %cr01.i877, align 8, !dbg !1875, !tbaa !512
  %mul396.i = fmul double %1094, %1099, !dbg !1875
  %add397.i = fadd double %mul395.i, %mul396.i, !dbg !1875
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !1823) #5, !dbg !1875
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !56), !dbg !1875
  %1100 = load double* %ci01.i874, align 8, !dbg !1875, !tbaa !512
  %mul398.i = fmul double %1093, %1100, !dbg !1875
  %add399.i = fadd double %add397.i, %mul398.i, !dbg !1875
  store double %add399.i, double* %arrayidx378.i, align 8, !dbg !1875, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !1822) #5, !dbg !1876
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !59), !dbg !1876
  %1101 = load double* %cr01.i877, align 8, !dbg !1876, !tbaa !512
  %mul404.i986 = fmul double %1091, %1101, !dbg !1876
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !1823) #5, !dbg !1876
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !56), !dbg !1876
  %1102 = load double* %ci01.i874, align 8, !dbg !1876, !tbaa !512
  %mul405.i = fmul double %1092, %1102, !dbg !1876
  %add406.i = fadd double %mul404.i986, %mul405.i, !dbg !1876
  call void @llvm.dbg.value(metadata !{double* %cr11.i878}, i64 0, metadata !1826) #5, !dbg !1876
  call void @llvm.dbg.value(metadata !{double* %cr11.i878}, i64 0, metadata !60), !dbg !1876
  %1103 = load double* %cr11.i878, align 8, !dbg !1876, !tbaa !512
  %mul407.i = fmul double %1093, %1103, !dbg !1876
  %add408.i = fadd double %add406.i, %mul407.i, !dbg !1876
  store double %add408.i, double* %arrayidx382.i, align 8, !dbg !1876, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !1822) #5, !dbg !1877
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !59), !dbg !1877
  %1104 = load double* %cr01.i877, align 8, !dbg !1877, !tbaa !512
  %mul413.i987 = fmul double %1092, %1104, !dbg !1877
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !1823) #5, !dbg !1877
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !56), !dbg !1877
  %1105 = load double* %ci01.i874, align 8, !dbg !1877, !tbaa !512
  %mul414.i988 = fmul double %1091, %1105, !dbg !1877
  %sub415.i = fsub double %mul413.i987, %mul414.i988, !dbg !1877
  call void @llvm.dbg.value(metadata !{double* %cr11.i878}, i64 0, metadata !1826) #5, !dbg !1877
  call void @llvm.dbg.value(metadata !{double* %cr11.i878}, i64 0, metadata !60), !dbg !1877
  %1106 = load double* %cr11.i878, align 8, !dbg !1877, !tbaa !512
  %mul416.i989 = fmul double %1094, %1106, !dbg !1877
  %add417.i990 = fadd double %sub415.i, %mul416.i989, !dbg !1877
  store double %add417.i990, double* %arrayidx386.i, align 8, !dbg !1877, !tbaa !512
  br label %if.end423.i, !dbg !1878

if.end423.i:                                      ; preds = %if.then303.i, %if.then263.i, %for.body259.i
  %kk.3.i991 = phi i32 [ %inc267.i, %if.then263.i ], [ %inc319.i, %if.then303.i ], [ %kk.2873.i, %for.body259.i ]
  %add424.i = add nsw i32 %1059, %irowA.2872.i, !dbg !1879
  call void @llvm.dbg.value(metadata !{i32 %add424.i}, i64 0, metadata !1759) #5, !dbg !1879
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i885}, i64 0, metadata !1760) #5, !dbg !1846
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i885}, i64 0, metadata !75), !dbg !1846
  %1107 = load i32* %nrowA.i885, align 4, !dbg !1846, !tbaa !452
  %cmp258.i = icmp slt i32 %add424.i, %1107, !dbg !1846
  br i1 %cmp258.i, label %if.end423.i.for.body259.i_crit_edge, label %sw.epilog41, !dbg !1846

if.end423.i.for.body259.i_crit_edge:              ; preds = %if.end423.i
  %indvars.iv.next.i992 = add i64 %indvars.iv.i976, 1, !dbg !1846
  br label %for.body259.i, !dbg !1846

if.else428.i:                                     ; preds = %for.end250.i
  %sub429.i = add nsw i32 %.lcssa.i972, -1, !dbg !1880
  %cmp430.i = icmp eq i32 %jcolB.0.lcssa.i973, %sub429.i, !dbg !1880
  br i1 %cmp430.i, label %for.cond432.preheader.i, label %sw.epilog41, !dbg !1880

for.cond432.preheader.i:                          ; preds = %if.else428.i
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i885}, i64 0, metadata !1760) #5, !dbg !1881
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i885}, i64 0, metadata !75), !dbg !1881
  %1108 = load i32* %nrowA.i885, align 4, !dbg !1881, !tbaa !452
  %cmp433875.i = icmp sgt i32 %1108, 0, !dbg !1881
  br i1 %cmp433875.i, label %for.body434.i, label %sw.epilog41, !dbg !1881

for.body434.i:                                    ; preds = %for.cond432.preheader.i, %if.end532.i.for.body434.i_crit_edge
  %indvars.iv896.i = phi i64 [ %indvars.iv.next897.i, %if.end532.i.for.body434.i_crit_edge ], [ 0, %for.cond432.preheader.i ]
  %kk.4878.i = phi i32 [ %kk.5.i996, %if.end532.i.for.body434.i_crit_edge ], [ 0, %for.cond432.preheader.i ]
  %irowA.3877.i = phi i32 [ %add533.i, %if.end532.i.for.body434.i_crit_edge ], [ 0, %for.cond432.preheader.i ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i887}, i64 0, metadata !1761) #5, !dbg !1884
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes.i887}, i64 0, metadata !77), !dbg !1884
  %1109 = load i32** %pivotsizes.i887, align 8, !dbg !1884, !tbaa !447
  %arrayidx436.i = getelementptr inbounds i32* %1109, i64 %indvars.iv896.i, !dbg !1884
  %1110 = load i32* %arrayidx436.i, align 4, !dbg !1884, !tbaa !452
  call void @llvm.dbg.value(metadata !{i32 %1110}, i64 0, metadata !1764) #5, !dbg !1884
  switch i32 %1110, label %if.end532.i [
    i32 1, label %if.then438.i
    i32 2, label %if.then462.i
  ], !dbg !1886

if.then438.i:                                     ; preds = %for.body434.i
  %mul439.i = shl nsw i32 %kk.4878.i, 1, !dbg !1887
  %idxprom440.i = sext i32 %mul439.i to i64, !dbg !1887
  call void @llvm.dbg.value(metadata !{double** %entriesA.i879}, i64 0, metadata !1789) #5, !dbg !1887
  call void @llvm.dbg.value(metadata !{double** %entriesA.i879}, i64 0, metadata !64), !dbg !1887
  %1111 = load double** %entriesA.i879, align 8, !dbg !1887, !tbaa !447
  %arrayidx441.i = getelementptr inbounds double* %1111, i64 %idxprom440.i, !dbg !1887
  %1112 = load double* %arrayidx441.i, align 8, !dbg !1887, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1112}, i64 0, metadata !1790) #5, !dbg !1887
  call void @llvm.dbg.value(metadata !505, i64 0, metadata !1791) #5, !dbg !1887
  %inc442.i = add nsw i32 %kk.4878.i, 1, !dbg !1887
  call void @llvm.dbg.value(metadata !{i32 %inc442.i}, i64 0, metadata !1755) #5, !dbg !1887
  %call443.i = call i32 @Zrecip(double %1112, double 0.000000e+00, double* %cr00.i876, double* %ci00.i873) #6, !dbg !1889
  %mul444.i = shl nsw i32 %irowA.3877.i, 1, !dbg !1890
  %idxprom445.i = sext i32 %mul444.i to i64, !dbg !1890
  %arrayidx446.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %idxprom445.i, !dbg !1890
  %1113 = load double* %arrayidx446.i, align 8, !dbg !1890, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1113}, i64 0, metadata !1794) #5, !dbg !1890
  %add448846.i = or i32 %mul444.i, 1, !dbg !1890
  %idxprom449.i = sext i32 %add448846.i to i64, !dbg !1890
  %arrayidx450.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %idxprom449.i, !dbg !1890
  %1114 = load double* %arrayidx450.i, align 8, !dbg !1890, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1114}, i64 0, metadata !1795) #5, !dbg !1890
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !1796) #5, !dbg !1891
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !58), !dbg !1891
  %1115 = load double* %cr00.i876, align 8, !dbg !1891, !tbaa !512
  %mul451.i = fmul double %1113, %1115, !dbg !1891
  store double %mul451.i, double* %arrayidx446.i, align 8, !dbg !1891, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !1796) #5, !dbg !1892
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !58), !dbg !1892
  %1116 = load double* %cr00.i876, align 8, !dbg !1892, !tbaa !512
  %mul455.i = fmul double %1114, %1116, !dbg !1892
  store double %mul455.i, double* %arrayidx450.i, align 8, !dbg !1892, !tbaa !512
  br label %if.end532.i, !dbg !1893

if.then462.i:                                     ; preds = %for.body434.i
  %mul463.i = shl i32 %kk.4878.i, 1, !dbg !1894
  %idxprom464.i = sext i32 %mul463.i to i64, !dbg !1894
  call void @llvm.dbg.value(metadata !{double** %entriesA.i879}, i64 0, metadata !1789) #5, !dbg !1894
  call void @llvm.dbg.value(metadata !{double** %entriesA.i879}, i64 0, metadata !64), !dbg !1894
  %1117 = load double** %entriesA.i879, align 8, !dbg !1894, !tbaa !447
  %arrayidx465.i = getelementptr inbounds double* %1117, i64 %idxprom464.i, !dbg !1894
  %1118 = load double* %arrayidx465.i, align 8, !dbg !1894, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1118}, i64 0, metadata !1790) #5, !dbg !1894
  call void @llvm.dbg.value(metadata !505, i64 0, metadata !1791) #5, !dbg !1894
  %mul467.i = add i32 %mul463.i, 2, !dbg !1896
  %idxprom468.i = sext i32 %mul467.i to i64, !dbg !1896
  %arrayidx469.i = getelementptr inbounds double* %1117, i64 %idxprom468.i, !dbg !1896
  %1119 = load double* %arrayidx469.i, align 8, !dbg !1896, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1119}, i64 0, metadata !1813) #5, !dbg !1896
  %add471844.i = or i32 %mul467.i, 1, !dbg !1896
  %idxprom472.i = sext i32 %add471844.i to i64, !dbg !1896
  %arrayidx473.i = getelementptr inbounds double* %1117, i64 %idxprom472.i, !dbg !1896
  %1120 = load double* %arrayidx473.i, align 8, !dbg !1896, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1120}, i64 0, metadata !1814) #5, !dbg !1896
  %mul475.i = add i32 %mul463.i, 4, !dbg !1897
  %idxprom476.i = sext i32 %mul475.i to i64, !dbg !1897
  %arrayidx477.i = getelementptr inbounds double* %1117, i64 %idxprom476.i, !dbg !1897
  %1121 = load double* %arrayidx477.i, align 8, !dbg !1897, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1121}, i64 0, metadata !1816) #5, !dbg !1897
  call void @llvm.dbg.value(metadata !505, i64 0, metadata !1817) #5, !dbg !1897
  %inc478.i = add nsw i32 %kk.4878.i, 3, !dbg !1897
  call void @llvm.dbg.value(metadata !{i32 %inc478.i}, i64 0, metadata !1755) #5, !dbg !1897
  %sub479.i = fsub double -0.000000e+00, %1120, !dbg !1898
  %call480.i = call i32 @Zrecip2(double %1118, double 0.000000e+00, double %1119, double %1120, double %1119, double %sub479.i, double %1121, double 0.000000e+00, double* %cr00.i876, double* %ci00.i873, double* %cr01.i877, double* %ci01.i874, double* null, double* null, double* %cr11.i878, double* %ci11.i875) #6, !dbg !1898
  %mul481.i = shl nsw i32 %irowA.3877.i, 1, !dbg !1899
  %idxprom482.i = sext i32 %mul481.i to i64, !dbg !1899
  %arrayidx483.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %idxprom482.i, !dbg !1899
  %1122 = load double* %arrayidx483.i, align 8, !dbg !1899, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1122}, i64 0, metadata !1794) #5, !dbg !1899
  %add485845.i = or i32 %mul481.i, 1, !dbg !1899
  %idxprom486.i = sext i32 %add485845.i to i64, !dbg !1899
  %arrayidx487.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %idxprom486.i, !dbg !1899
  %1123 = load double* %arrayidx487.i, align 8, !dbg !1899, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1123}, i64 0, metadata !1795) #5, !dbg !1899
  %add489.i = add nsw i32 %mul481.i, 2, !dbg !1900
  %idxprom490.i = sext i32 %add489.i to i64, !dbg !1900
  %arrayidx491.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %idxprom490.i, !dbg !1900
  %1124 = load double* %arrayidx491.i, align 8, !dbg !1900, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1124}, i64 0, metadata !1800) #5, !dbg !1900
  %add493.i = add nsw i32 %mul481.i, 3, !dbg !1900
  %idxprom494.i = sext i32 %add493.i to i64, !dbg !1900
  %arrayidx495.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %idxprom494.i, !dbg !1900
  %1125 = load double* %arrayidx495.i, align 8, !dbg !1900, !tbaa !512
  call void @llvm.dbg.value(metadata !{double %1125}, i64 0, metadata !1801) #5, !dbg !1900
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !1796) #5, !dbg !1901
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !58), !dbg !1901
  %1126 = load double* %cr00.i876, align 8, !dbg !1901, !tbaa !512
  %mul496.i993 = fmul double %1122, %1126, !dbg !1901
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !1822) #5, !dbg !1901
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !59), !dbg !1901
  %1127 = load double* %cr01.i877, align 8, !dbg !1901, !tbaa !512
  %mul497.i = fmul double %1124, %1127, !dbg !1901
  %add498.i = fadd double %mul496.i993, %mul497.i, !dbg !1901
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !1823) #5, !dbg !1901
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !56), !dbg !1901
  %1128 = load double* %ci01.i874, align 8, !dbg !1901, !tbaa !512
  %mul499.i = fmul double %1125, %1128, !dbg !1901
  %sub500.i994 = fsub double %add498.i, %mul499.i, !dbg !1901
  store double %sub500.i994, double* %arrayidx483.i, align 8, !dbg !1901, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !1796) #5, !dbg !1902
  call void @llvm.dbg.value(metadata !{double* %cr00.i876}, i64 0, metadata !58), !dbg !1902
  %1129 = load double* %cr00.i876, align 8, !dbg !1902, !tbaa !512
  %mul504.i = fmul double %1123, %1129, !dbg !1902
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !1822) #5, !dbg !1902
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !59), !dbg !1902
  %1130 = load double* %cr01.i877, align 8, !dbg !1902, !tbaa !512
  %mul505.i = fmul double %1125, %1130, !dbg !1902
  %add506.i995 = fadd double %mul504.i, %mul505.i, !dbg !1902
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !1823) #5, !dbg !1902
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !56), !dbg !1902
  %1131 = load double* %ci01.i874, align 8, !dbg !1902, !tbaa !512
  %mul507.i = fmul double %1124, %1131, !dbg !1902
  %add508.i = fadd double %add506.i995, %mul507.i, !dbg !1902
  store double %add508.i, double* %arrayidx487.i, align 8, !dbg !1902, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !1822) #5, !dbg !1903
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !59), !dbg !1903
  %1132 = load double* %cr01.i877, align 8, !dbg !1903, !tbaa !512
  %mul513.i = fmul double %1122, %1132, !dbg !1903
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !1823) #5, !dbg !1903
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !56), !dbg !1903
  %1133 = load double* %ci01.i874, align 8, !dbg !1903, !tbaa !512
  %mul514.i = fmul double %1123, %1133, !dbg !1903
  %add515.i = fadd double %mul513.i, %mul514.i, !dbg !1903
  call void @llvm.dbg.value(metadata !{double* %cr11.i878}, i64 0, metadata !1826) #5, !dbg !1903
  call void @llvm.dbg.value(metadata !{double* %cr11.i878}, i64 0, metadata !60), !dbg !1903
  %1134 = load double* %cr11.i878, align 8, !dbg !1903, !tbaa !512
  %mul516.i = fmul double %1124, %1134, !dbg !1903
  %add517.i = fadd double %add515.i, %mul516.i, !dbg !1903
  store double %add517.i, double* %arrayidx491.i, align 8, !dbg !1903, !tbaa !512
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !1822) #5, !dbg !1904
  call void @llvm.dbg.value(metadata !{double* %cr01.i877}, i64 0, metadata !59), !dbg !1904
  %1135 = load double* %cr01.i877, align 8, !dbg !1904, !tbaa !512
  %mul522.i = fmul double %1123, %1135, !dbg !1904
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !1823) #5, !dbg !1904
  call void @llvm.dbg.value(metadata !{double* %ci01.i874}, i64 0, metadata !56), !dbg !1904
  %1136 = load double* %ci01.i874, align 8, !dbg !1904, !tbaa !512
  %mul523.i = fmul double %1122, %1136, !dbg !1904
  %sub524.i = fsub double %mul522.i, %mul523.i, !dbg !1904
  call void @llvm.dbg.value(metadata !{double* %cr11.i878}, i64 0, metadata !1826) #5, !dbg !1904
  call void @llvm.dbg.value(metadata !{double* %cr11.i878}, i64 0, metadata !60), !dbg !1904
  %1137 = load double* %cr11.i878, align 8, !dbg !1904, !tbaa !512
  %mul525.i = fmul double %1125, %1137, !dbg !1904
  %add526.i = fadd double %sub524.i, %mul525.i, !dbg !1904
  store double %add526.i, double* %arrayidx495.i, align 8, !dbg !1904, !tbaa !512
  br label %if.end532.i, !dbg !1905

if.end532.i:                                      ; preds = %if.then462.i, %if.then438.i, %for.body434.i
  %kk.5.i996 = phi i32 [ %inc442.i, %if.then438.i ], [ %inc478.i, %if.then462.i ], [ %kk.4878.i, %for.body434.i ]
  %add533.i = add nsw i32 %1110, %irowA.3877.i, !dbg !1906
  call void @llvm.dbg.value(metadata !{i32 %add533.i}, i64 0, metadata !1759) #5, !dbg !1906
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i885}, i64 0, metadata !1760) #5, !dbg !1881
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i885}, i64 0, metadata !75), !dbg !1881
  %1138 = load i32* %nrowA.i885, align 4, !dbg !1881, !tbaa !452
  %cmp433.i = icmp slt i32 %add533.i, %1138, !dbg !1881
  br i1 %cmp433.i, label %if.end532.i.for.body434.i_crit_edge, label %sw.epilog41, !dbg !1881

if.end532.i.for.body434.i_crit_edge:              ; preds = %if.end532.i
  %indvars.iv.next897.i = add i64 %indvars.iv896.i, 1, !dbg !1881
  br label %for.body434.i, !dbg !1881

sw.default34:                                     ; preds = %sw.bb24
  %1139 = load %struct._IO_FILE** @stderr, align 8, !dbg !1907, !tbaa !447
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1139, i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 2) #6, !dbg !1907
  call void @exit(i32 -1) #7, !dbg !1908
  unreachable, !dbg !1908

sw.default38:                                     ; preds = %if.end12
  %1140 = load %struct._IO_FILE** @stderr, align 8, !dbg !1909, !tbaa !447
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1140, i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 %7) #6, !dbg !1909
  call void @exit(i32 -1) #7, !dbg !1910
  unreachable, !dbg !1910

sw.epilog41:                                      ; preds = %if.end532.i, %if.end423.i, %if.end637.i, %if.end505.i, %for.body119.i, %for.body71.i, %for.cond157.i, %for.cond89.i, %for.cond169.i, %for.cond95.i, %for.inc222.i, %for.inc165.i, %for.inc218.i, %for.inc163.i, %if.end242.i, %if.end184.i, %for.body41.i, %for.body24.i270, %for.cond85.i, %for.cond46.i, %for.cond97.i, %for.cond52.i, %for.inc122.i, %for.inc84.i, %for.inc124.i, %for.inc88.i, %for.cond432.preheader.i, %if.else428.i, %if.then253.i, %for.cond514.preheader.i, %if.else510.i, %if.then300.i, %for.cond117.preheader.i, %if.else.i756, %if.then.i744, %if.else.i693, %if.else.i568, %for.cond171.preheader.i, %if.else.i481, %if.then92.i459, %for.cond169.preheader.i, %if.else.i387, %if.then92.i, %for.cond193.preheader.i, %if.else189.i, %if.then110.i, %for.cond39.preheader.i, %if.else.i272, %if.then.i262, %if.else.i235, %if.else.i181, %for.cond90.preheader.i, %if.else.i138, %if.then48.i125, %for.cond94.preheader.i, %if.else.i, %if.then48.i
  ret void, !dbg !1911
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare void @SubMtx_blockDiagonalInfo(%struct._SubMtx*, i32*, i32*, i32**, double**) #4

; Function Attrs: optsize
declare void @SubMtx_denseInfo(%struct._SubMtx*, i32*, i32*, i32*, i32*, double**) #4

; Function Attrs: optsize
declare i32 @Zrecip(double, double, double*, double*) #4

; Function Attrs: optsize
declare i32 @Zrecip2(double, double, double, double, double, double, double, double, double*, double*, double*, double*, double*, double*, double*, double*) #4

; Function Attrs: optsize
declare void @SubMtx_diagonalInfo(%struct._SubMtx*, i32*, double**) #4

; Function Attrs: optsize
declare void @SubMtx_sparseColumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #4

; Function Attrs: optsize
declare void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #4

; Function Attrs: optsize
declare void @SubMtx_sparseRowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #4

; Function Attrs: optsize
declare void @SubMtx_denseSubrowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !39, metadata !79, metadata !118, metadata !141, metadata !175, metadata !209, metadata !248, metadata !287, metadata !315, metadata !332, metadata !360, metadata !388, metadata !415}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_solve", metadata !"SubMtx_solve", metadata !"", i32 45, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*, %struct._SubMtx*)* @SubMtx_solve, null, null, metadata !36, i32 48} ; [ DW_TAG_subprogram ] [line 45] [def] [scope 48] [SubMtx_solve]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !8}
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
!36 = metadata !{metadata !37, metadata !38}
!37 = metadata !{i32 786689, metadata !4, metadata !"mtxA", metadata !5, i32 16777262, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 46]
!38 = metadata !{i32 786689, metadata !4, metadata !"mtxB", metadata !5, i32 33554479, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 47]
!39 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"complex_solveBlockDiagonalHerm", metadata !"complex_solveBlockDiagonalHerm", metadata !"", i32 1609, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !40, i32 1612} ; [ DW_TAG_subprogram ] [line 1609] [local] [def] [scope 1612] [complex_solveBlockDiagonalHerm]
!40 = metadata !{metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77}
!41 = metadata !{i32 786689, metadata !39, metadata !"mtxA", metadata !5, i32 16778826, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 1610]
!42 = metadata !{i32 786689, metadata !39, metadata !"mtxB", metadata !5, i32 33556043, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 1611]
!43 = metadata !{i32 786688, metadata !39, metadata !"ai00", metadata !5, i32 1613, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai00] [line 1613]
!44 = metadata !{i32 786688, metadata !39, metadata !"ai01", metadata !5, i32 1613, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai01] [line 1613]
!45 = metadata !{i32 786688, metadata !39, metadata !"ai11", metadata !5, i32 1613, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai11] [line 1613]
!46 = metadata !{i32 786688, metadata !39, metadata !"ar00", metadata !5, i32 1613, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar00] [line 1613]
!47 = metadata !{i32 786688, metadata !39, metadata !"ar01", metadata !5, i32 1613, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar01] [line 1613]
!48 = metadata !{i32 786688, metadata !39, metadata !"ar11", metadata !5, i32 1613, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar11] [line 1613]
!49 = metadata !{i32 786688, metadata !39, metadata !"bi0", metadata !5, i32 1613, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi0] [line 1613]
!50 = metadata !{i32 786688, metadata !39, metadata !"bi1", metadata !5, i32 1613, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi1] [line 1613]
!51 = metadata !{i32 786688, metadata !39, metadata !"bi2", metadata !5, i32 1613, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi2] [line 1613]
!52 = metadata !{i32 786688, metadata !39, metadata !"br0", metadata !5, i32 1614, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br0] [line 1614]
!53 = metadata !{i32 786688, metadata !39, metadata !"br1", metadata !5, i32 1614, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br1] [line 1614]
!54 = metadata !{i32 786688, metadata !39, metadata !"br2", metadata !5, i32 1614, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br2] [line 1614]
!55 = metadata !{i32 786688, metadata !39, metadata !"ci00", metadata !5, i32 1614, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci00] [line 1614]
!56 = metadata !{i32 786688, metadata !39, metadata !"ci01", metadata !5, i32 1614, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci01] [line 1614]
!57 = metadata !{i32 786688, metadata !39, metadata !"ci11", metadata !5, i32 1614, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci11] [line 1614]
!58 = metadata !{i32 786688, metadata !39, metadata !"cr00", metadata !5, i32 1614, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cr00] [line 1614]
!59 = metadata !{i32 786688, metadata !39, metadata !"cr01", metadata !5, i32 1614, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cr01] [line 1614]
!60 = metadata !{i32 786688, metadata !39, metadata !"cr11", metadata !5, i32 1614, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cr11] [line 1614]
!61 = metadata !{i32 786688, metadata !39, metadata !"colB0", metadata !5, i32 1615, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB0] [line 1615]
!62 = metadata !{i32 786688, metadata !39, metadata !"colB1", metadata !5, i32 1615, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB1] [line 1615]
!63 = metadata !{i32 786688, metadata !39, metadata !"colB2", metadata !5, i32 1615, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB2] [line 1615]
!64 = metadata !{i32 786688, metadata !39, metadata !"entriesA", metadata !5, i32 1615, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesA] [line 1615]
!65 = metadata !{i32 786688, metadata !39, metadata !"entriesB", metadata !5, i32 1615, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesB] [line 1615]
!66 = metadata !{i32 786688, metadata !39, metadata !"inc1", metadata !5, i32 1616, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 1616]
!67 = metadata !{i32 786688, metadata !39, metadata !"inc2", metadata !5, i32 1616, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 1616]
!68 = metadata !{i32 786688, metadata !39, metadata !"ipivot", metadata !5, i32 1616, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipivot] [line 1616]
!69 = metadata !{i32 786688, metadata !39, metadata !"irowA", metadata !5, i32 1616, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 1616]
!70 = metadata !{i32 786688, metadata !39, metadata !"jcolB", metadata !5, i32 1616, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolB] [line 1616]
!71 = metadata !{i32 786688, metadata !39, metadata !"kk", metadata !5, i32 1616, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 1616]
!72 = metadata !{i32 786688, metadata !39, metadata !"m", metadata !5, i32 1616, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 1616]
!73 = metadata !{i32 786688, metadata !39, metadata !"ncolB", metadata !5, i32 1617, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolB] [line 1617]
!74 = metadata !{i32 786688, metadata !39, metadata !"nentA", metadata !5, i32 1617, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentA] [line 1617]
!75 = metadata !{i32 786688, metadata !39, metadata !"nrowA", metadata !5, i32 1617, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 1617]
!76 = metadata !{i32 786688, metadata !39, metadata !"nrowB", metadata !5, i32 1617, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowB] [line 1617]
!77 = metadata !{i32 786688, metadata !39, metadata !"pivotsizes", metadata !5, i32 1618, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 1618]
!78 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!79 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"complex_solveBlockDiagonalSym", metadata !"complex_solveBlockDiagonalSym", metadata !"", i32 1461, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !80, i32 1464} ; [ DW_TAG_subprogram ] [line 1461] [local] [def] [scope 1464] [complex_solveBlockDiagonalSym]
!80 = metadata !{metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117}
!81 = metadata !{i32 786689, metadata !79, metadata !"mtxA", metadata !5, i32 16778678, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 1462]
!82 = metadata !{i32 786689, metadata !79, metadata !"mtxB", metadata !5, i32 33555895, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 1463]
!83 = metadata !{i32 786688, metadata !79, metadata !"ai00", metadata !5, i32 1465, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai00] [line 1465]
!84 = metadata !{i32 786688, metadata !79, metadata !"ai01", metadata !5, i32 1465, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai01] [line 1465]
!85 = metadata !{i32 786688, metadata !79, metadata !"ai11", metadata !5, i32 1465, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai11] [line 1465]
!86 = metadata !{i32 786688, metadata !79, metadata !"ar00", metadata !5, i32 1465, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar00] [line 1465]
!87 = metadata !{i32 786688, metadata !79, metadata !"ar01", metadata !5, i32 1465, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar01] [line 1465]
!88 = metadata !{i32 786688, metadata !79, metadata !"ar11", metadata !5, i32 1465, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar11] [line 1465]
!89 = metadata !{i32 786688, metadata !79, metadata !"bi0", metadata !5, i32 1465, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi0] [line 1465]
!90 = metadata !{i32 786688, metadata !79, metadata !"bi1", metadata !5, i32 1465, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi1] [line 1465]
!91 = metadata !{i32 786688, metadata !79, metadata !"bi2", metadata !5, i32 1465, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi2] [line 1465]
!92 = metadata !{i32 786688, metadata !79, metadata !"br0", metadata !5, i32 1466, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br0] [line 1466]
!93 = metadata !{i32 786688, metadata !79, metadata !"br1", metadata !5, i32 1466, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br1] [line 1466]
!94 = metadata !{i32 786688, metadata !79, metadata !"br2", metadata !5, i32 1466, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br2] [line 1466]
!95 = metadata !{i32 786688, metadata !79, metadata !"ci00", metadata !5, i32 1466, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci00] [line 1466]
!96 = metadata !{i32 786688, metadata !79, metadata !"ci01", metadata !5, i32 1466, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci01] [line 1466]
!97 = metadata !{i32 786688, metadata !79, metadata !"ci11", metadata !5, i32 1466, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci11] [line 1466]
!98 = metadata !{i32 786688, metadata !79, metadata !"cr00", metadata !5, i32 1466, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cr00] [line 1466]
!99 = metadata !{i32 786688, metadata !79, metadata !"cr01", metadata !5, i32 1466, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cr01] [line 1466]
!100 = metadata !{i32 786688, metadata !79, metadata !"cr11", metadata !5, i32 1466, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cr11] [line 1466]
!101 = metadata !{i32 786688, metadata !79, metadata !"colB0", metadata !5, i32 1467, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB0] [line 1467]
!102 = metadata !{i32 786688, metadata !79, metadata !"colB1", metadata !5, i32 1467, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB1] [line 1467]
!103 = metadata !{i32 786688, metadata !79, metadata !"colB2", metadata !5, i32 1467, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB2] [line 1467]
!104 = metadata !{i32 786688, metadata !79, metadata !"entriesA", metadata !5, i32 1467, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesA] [line 1467]
!105 = metadata !{i32 786688, metadata !79, metadata !"entriesB", metadata !5, i32 1467, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesB] [line 1467]
!106 = metadata !{i32 786688, metadata !79, metadata !"inc1", metadata !5, i32 1468, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 1468]
!107 = metadata !{i32 786688, metadata !79, metadata !"inc2", metadata !5, i32 1468, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 1468]
!108 = metadata !{i32 786688, metadata !79, metadata !"ipivot", metadata !5, i32 1468, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipivot] [line 1468]
!109 = metadata !{i32 786688, metadata !79, metadata !"irowA", metadata !5, i32 1468, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 1468]
!110 = metadata !{i32 786688, metadata !79, metadata !"jcolB", metadata !5, i32 1468, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolB] [line 1468]
!111 = metadata !{i32 786688, metadata !79, metadata !"kk", metadata !5, i32 1468, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 1468]
!112 = metadata !{i32 786688, metadata !79, metadata !"m", metadata !5, i32 1468, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 1468]
!113 = metadata !{i32 786688, metadata !79, metadata !"ncolB", metadata !5, i32 1469, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolB] [line 1469]
!114 = metadata !{i32 786688, metadata !79, metadata !"nentA", metadata !5, i32 1469, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentA] [line 1469]
!115 = metadata !{i32 786688, metadata !79, metadata !"nrowA", metadata !5, i32 1469, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 1469]
!116 = metadata !{i32 786688, metadata !79, metadata !"nrowB", metadata !5, i32 1469, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowB] [line 1469]
!117 = metadata !{i32 786688, metadata !79, metadata !"pivotsizes", metadata !5, i32 1470, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 1470]
!118 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"complex_solveDiagonal", metadata !"complex_solveDiagonal", metadata !"", i32 1390, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !119, i32 1393} ; [ DW_TAG_subprogram ] [line 1390] [local] [def] [scope 1393] [complex_solveDiagonal]
!119 = metadata !{metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140}
!120 = metadata !{i32 786689, metadata !118, metadata !"mtxA", metadata !5, i32 16778607, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 1391]
!121 = metadata !{i32 786689, metadata !118, metadata !"mtxB", metadata !5, i32 33555824, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 1392]
!122 = metadata !{i32 786688, metadata !118, metadata !"ai", metadata !5, i32 1394, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai] [line 1394]
!123 = metadata !{i32 786688, metadata !118, metadata !"ar", metadata !5, i32 1394, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar] [line 1394]
!124 = metadata !{i32 786688, metadata !118, metadata !"bi", metadata !5, i32 1394, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi] [line 1394]
!125 = metadata !{i32 786688, metadata !118, metadata !"br", metadata !5, i32 1394, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br] [line 1394]
!126 = metadata !{i32 786688, metadata !118, metadata !"ci", metadata !5, i32 1394, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 1394]
!127 = metadata !{i32 786688, metadata !118, metadata !"cr", metadata !5, i32 1394, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cr] [line 1394]
!128 = metadata !{i32 786688, metadata !118, metadata !"colB0", metadata !5, i32 1395, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB0] [line 1395]
!129 = metadata !{i32 786688, metadata !118, metadata !"colB1", metadata !5, i32 1395, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB1] [line 1395]
!130 = metadata !{i32 786688, metadata !118, metadata !"colB2", metadata !5, i32 1395, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB2] [line 1395]
!131 = metadata !{i32 786688, metadata !118, metadata !"entriesA", metadata !5, i32 1395, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesA] [line 1395]
!132 = metadata !{i32 786688, metadata !118, metadata !"entriesB", metadata !5, i32 1395, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesB] [line 1395]
!133 = metadata !{i32 786688, metadata !118, metadata !"inc1", metadata !5, i32 1396, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 1396]
!134 = metadata !{i32 786688, metadata !118, metadata !"inc2", metadata !5, i32 1396, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 1396]
!135 = metadata !{i32 786688, metadata !118, metadata !"irowA", metadata !5, i32 1396, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 1396]
!136 = metadata !{i32 786688, metadata !118, metadata !"jcolB", metadata !5, i32 1396, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolB] [line 1396]
!137 = metadata !{i32 786688, metadata !118, metadata !"kk", metadata !5, i32 1396, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 1396]
!138 = metadata !{i32 786688, metadata !118, metadata !"ncolB", metadata !5, i32 1396, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolB] [line 1396]
!139 = metadata !{i32 786688, metadata !118, metadata !"nrowA", metadata !5, i32 1396, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 1396]
!140 = metadata !{i32 786688, metadata !118, metadata !"nrowB", metadata !5, i32 1396, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowB] [line 1396]
!141 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"complex_solveSparseColumns", metadata !"complex_solveSparseColumns", metadata !"", i32 1270, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !142, i32 1273} ; [ DW_TAG_subprogram ] [line 1270] [local] [def] [scope 1273] [complex_solveSparseColumns]
!142 = metadata !{metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174}
!143 = metadata !{i32 786689, metadata !141, metadata !"mtxA", metadata !5, i32 16778487, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 1271]
!144 = metadata !{i32 786689, metadata !141, metadata !"mtxB", metadata !5, i32 33555704, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 1272]
!145 = metadata !{i32 786688, metadata !141, metadata !"ar", metadata !5, i32 1274, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar] [line 1274]
!146 = metadata !{i32 786688, metadata !141, metadata !"ai", metadata !5, i32 1274, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai] [line 1274]
!147 = metadata !{i32 786688, metadata !141, metadata !"bi0", metadata !5, i32 1274, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi0] [line 1274]
!148 = metadata !{i32 786688, metadata !141, metadata !"bi1", metadata !5, i32 1274, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi1] [line 1274]
!149 = metadata !{i32 786688, metadata !141, metadata !"bi2", metadata !5, i32 1274, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi2] [line 1274]
!150 = metadata !{i32 786688, metadata !141, metadata !"br0", metadata !5, i32 1274, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br0] [line 1274]
!151 = metadata !{i32 786688, metadata !141, metadata !"br1", metadata !5, i32 1274, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br1] [line 1274]
!152 = metadata !{i32 786688, metadata !141, metadata !"br2", metadata !5, i32 1274, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br2] [line 1274]
!153 = metadata !{i32 786688, metadata !141, metadata !"colB0", metadata !5, i32 1275, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB0] [line 1275]
!154 = metadata !{i32 786688, metadata !141, metadata !"colB1", metadata !5, i32 1275, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB1] [line 1275]
!155 = metadata !{i32 786688, metadata !141, metadata !"colB2", metadata !5, i32 1275, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB2] [line 1275]
!156 = metadata !{i32 786688, metadata !141, metadata !"entriesA", metadata !5, i32 1275, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesA] [line 1275]
!157 = metadata !{i32 786688, metadata !141, metadata !"entriesB", metadata !5, i32 1275, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesB] [line 1275]
!158 = metadata !{i32 786688, metadata !141, metadata !"colstart", metadata !5, i32 1276, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colstart] [line 1276]
!159 = metadata !{i32 786688, metadata !141, metadata !"ii", metadata !5, i32 1276, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1276]
!160 = metadata !{i32 786688, metadata !141, metadata !"iloc", metadata !5, i32 1276, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 1276]
!161 = metadata !{i32 786688, metadata !141, metadata !"inc1", metadata !5, i32 1276, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 1276]
!162 = metadata !{i32 786688, metadata !141, metadata !"inc2", metadata !5, i32 1276, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 1276]
!163 = metadata !{i32 786688, metadata !141, metadata !"jcolA", metadata !5, i32 1276, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolA] [line 1276]
!164 = metadata !{i32 786688, metadata !141, metadata !"jcolB", metadata !5, i32 1276, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolB] [line 1276]
!165 = metadata !{i32 786688, metadata !141, metadata !"jj", metadata !5, i32 1277, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 1277]
!166 = metadata !{i32 786688, metadata !141, metadata !"kk", metadata !5, i32 1277, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 1277]
!167 = metadata !{i32 786688, metadata !141, metadata !"ncolB", metadata !5, i32 1277, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolB] [line 1277]
!168 = metadata !{i32 786688, metadata !141, metadata !"nentA", metadata !5, i32 1277, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentA] [line 1277]
!169 = metadata !{i32 786688, metadata !141, metadata !"nrowA", metadata !5, i32 1277, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 1277]
!170 = metadata !{i32 786688, metadata !141, metadata !"nrowB", metadata !5, i32 1277, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowB] [line 1277]
!171 = metadata !{i32 786688, metadata !141, metadata !"rloc", metadata !5, i32 1277, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 1277]
!172 = metadata !{i32 786688, metadata !141, metadata !"size", metadata !5, i32 1277, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 1277]
!173 = metadata !{i32 786688, metadata !141, metadata !"indicesA", metadata !5, i32 1278, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indicesA] [line 1278]
!174 = metadata !{i32 786688, metadata !141, metadata !"sizesA", metadata !5, i32 1278, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizesA] [line 1278]
!175 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"complex_solveDenseSubcolumns", metadata !"complex_solveDenseSubcolumns", metadata !"", i32 1123, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !176, i32 1126} ; [ DW_TAG_subprogram ] [line 1123] [local] [def] [scope 1126] [complex_solveDenseSubcolumns]
!176 = metadata !{metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208}
!177 = metadata !{i32 786689, metadata !175, metadata !"mtxA", metadata !5, i32 16778340, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 1124]
!178 = metadata !{i32 786689, metadata !175, metadata !"mtxB", metadata !5, i32 33555557, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 1125]
!179 = metadata !{i32 786688, metadata !175, metadata !"ai", metadata !5, i32 1127, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai] [line 1127]
!180 = metadata !{i32 786688, metadata !175, metadata !"ar", metadata !5, i32 1127, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar] [line 1127]
!181 = metadata !{i32 786688, metadata !175, metadata !"bi0", metadata !5, i32 1127, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi0] [line 1127]
!182 = metadata !{i32 786688, metadata !175, metadata !"bi1", metadata !5, i32 1127, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi1] [line 1127]
!183 = metadata !{i32 786688, metadata !175, metadata !"bi2", metadata !5, i32 1127, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi2] [line 1127]
!184 = metadata !{i32 786688, metadata !175, metadata !"br0", metadata !5, i32 1127, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br0] [line 1127]
!185 = metadata !{i32 786688, metadata !175, metadata !"br1", metadata !5, i32 1127, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br1] [line 1127]
!186 = metadata !{i32 786688, metadata !175, metadata !"br2", metadata !5, i32 1127, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br2] [line 1127]
!187 = metadata !{i32 786688, metadata !175, metadata !"colB0", metadata !5, i32 1128, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB0] [line 1128]
!188 = metadata !{i32 786688, metadata !175, metadata !"colB1", metadata !5, i32 1128, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB1] [line 1128]
!189 = metadata !{i32 786688, metadata !175, metadata !"colB2", metadata !5, i32 1128, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB2] [line 1128]
!190 = metadata !{i32 786688, metadata !175, metadata !"entriesA", metadata !5, i32 1128, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesA] [line 1128]
!191 = metadata !{i32 786688, metadata !175, metadata !"entriesB", metadata !5, i32 1128, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesB] [line 1128]
!192 = metadata !{i32 786688, metadata !175, metadata !"colstart", metadata !5, i32 1129, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colstart] [line 1129]
!193 = metadata !{i32 786688, metadata !175, metadata !"first", metadata !5, i32 1129, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 1129]
!194 = metadata !{i32 786688, metadata !175, metadata !"iloc", metadata !5, i32 1129, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 1129]
!195 = metadata !{i32 786688, metadata !175, metadata !"inc1", metadata !5, i32 1129, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 1129]
!196 = metadata !{i32 786688, metadata !175, metadata !"inc2", metadata !5, i32 1129, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 1129]
!197 = metadata !{i32 786688, metadata !175, metadata !"irowA", metadata !5, i32 1129, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 1129]
!198 = metadata !{i32 786688, metadata !175, metadata !"jcolB", metadata !5, i32 1129, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolB] [line 1129]
!199 = metadata !{i32 786688, metadata !175, metadata !"jj", metadata !5, i32 1130, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 1130]
!200 = metadata !{i32 786688, metadata !175, metadata !"kk", metadata !5, i32 1130, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 1130]
!201 = metadata !{i32 786688, metadata !175, metadata !"last", metadata !5, i32 1130, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 1130]
!202 = metadata !{i32 786688, metadata !175, metadata !"ncolB", metadata !5, i32 1130, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolB] [line 1130]
!203 = metadata !{i32 786688, metadata !175, metadata !"nentA", metadata !5, i32 1130, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentA] [line 1130]
!204 = metadata !{i32 786688, metadata !175, metadata !"nrowA", metadata !5, i32 1130, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 1130]
!205 = metadata !{i32 786688, metadata !175, metadata !"nrowB", metadata !5, i32 1130, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowB] [line 1130]
!206 = metadata !{i32 786688, metadata !175, metadata !"rloc", metadata !5, i32 1130, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 1130]
!207 = metadata !{i32 786688, metadata !175, metadata !"firstlocsA", metadata !5, i32 1131, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocsA] [line 1131]
!208 = metadata !{i32 786688, metadata !175, metadata !"sizesA", metadata !5, i32 1131, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizesA] [line 1131]
!209 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"complex_solveSparseRows", metadata !"complex_solveSparseRows", metadata !"", i32 982, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !210, i32 985} ; [ DW_TAG_subprogram ] [line 982] [local] [def] [scope 985] [complex_solveSparseRows]
!210 = metadata !{metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247}
!211 = metadata !{i32 786689, metadata !209, metadata !"mtxA", metadata !5, i32 16778199, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 983]
!212 = metadata !{i32 786689, metadata !209, metadata !"mtxB", metadata !5, i32 33555416, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 984]
!213 = metadata !{i32 786688, metadata !209, metadata !"ai", metadata !5, i32 986, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai] [line 986]
!214 = metadata !{i32 786688, metadata !209, metadata !"ar", metadata !5, i32 986, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar] [line 986]
!215 = metadata !{i32 786688, metadata !209, metadata !"bi0", metadata !5, i32 986, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi0] [line 986]
!216 = metadata !{i32 786688, metadata !209, metadata !"bi1", metadata !5, i32 986, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi1] [line 986]
!217 = metadata !{i32 786688, metadata !209, metadata !"bi2", metadata !5, i32 986, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi2] [line 986]
!218 = metadata !{i32 786688, metadata !209, metadata !"br0", metadata !5, i32 986, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br0] [line 986]
!219 = metadata !{i32 786688, metadata !209, metadata !"br1", metadata !5, i32 986, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br1] [line 986]
!220 = metadata !{i32 786688, metadata !209, metadata !"br2", metadata !5, i32 986, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br2] [line 986]
!221 = metadata !{i32 786688, metadata !209, metadata !"isum0", metadata !5, i32 987, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isum0] [line 987]
!222 = metadata !{i32 786688, metadata !209, metadata !"isum1", metadata !5, i32 987, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isum1] [line 987]
!223 = metadata !{i32 786688, metadata !209, metadata !"isum2", metadata !5, i32 987, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isum2] [line 987]
!224 = metadata !{i32 786688, metadata !209, metadata !"rsum0", metadata !5, i32 987, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsum0] [line 987]
!225 = metadata !{i32 786688, metadata !209, metadata !"rsum1", metadata !5, i32 987, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsum1] [line 987]
!226 = metadata !{i32 786688, metadata !209, metadata !"rsum2", metadata !5, i32 987, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsum2] [line 987]
!227 = metadata !{i32 786688, metadata !209, metadata !"colB0", metadata !5, i32 988, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB0] [line 988]
!228 = metadata !{i32 786688, metadata !209, metadata !"colB1", metadata !5, i32 988, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB1] [line 988]
!229 = metadata !{i32 786688, metadata !209, metadata !"colB2", metadata !5, i32 988, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB2] [line 988]
!230 = metadata !{i32 786688, metadata !209, metadata !"entriesA", metadata !5, i32 988, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesA] [line 988]
!231 = metadata !{i32 786688, metadata !209, metadata !"entriesB", metadata !5, i32 988, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesB] [line 988]
!232 = metadata !{i32 786688, metadata !209, metadata !"ii", metadata !5, i32 989, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 989]
!233 = metadata !{i32 786688, metadata !209, metadata !"iloc", metadata !5, i32 989, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 989]
!234 = metadata !{i32 786688, metadata !209, metadata !"inc1", metadata !5, i32 989, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 989]
!235 = metadata !{i32 786688, metadata !209, metadata !"inc2", metadata !5, i32 989, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 989]
!236 = metadata !{i32 786688, metadata !209, metadata !"irowA", metadata !5, i32 989, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 989]
!237 = metadata !{i32 786688, metadata !209, metadata !"jcolB", metadata !5, i32 989, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolB] [line 989]
!238 = metadata !{i32 786688, metadata !209, metadata !"jj", metadata !5, i32 989, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 989]
!239 = metadata !{i32 786688, metadata !209, metadata !"kk", metadata !5, i32 989, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 989]
!240 = metadata !{i32 786688, metadata !209, metadata !"ncolB", metadata !5, i32 990, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolB] [line 990]
!241 = metadata !{i32 786688, metadata !209, metadata !"nentA", metadata !5, i32 990, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentA] [line 990]
!242 = metadata !{i32 786688, metadata !209, metadata !"nrowA", metadata !5, i32 990, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 990]
!243 = metadata !{i32 786688, metadata !209, metadata !"nrowB", metadata !5, i32 990, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowB] [line 990]
!244 = metadata !{i32 786688, metadata !209, metadata !"rloc", metadata !5, i32 990, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 990]
!245 = metadata !{i32 786688, metadata !209, metadata !"size", metadata !5, i32 990, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 990]
!246 = metadata !{i32 786688, metadata !209, metadata !"indicesA", metadata !5, i32 991, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indicesA] [line 991]
!247 = metadata !{i32 786688, metadata !209, metadata !"sizesA", metadata !5, i32 991, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizesA] [line 991]
!248 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"complex_solveDenseSubrows", metadata !"complex_solveDenseSubrows", metadata !"", i32 801, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !249, i32 804} ; [ DW_TAG_subprogram ] [line 801] [local] [def] [scope 804] [complex_solveDenseSubrows]
!249 = metadata !{metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286}
!250 = metadata !{i32 786689, metadata !248, metadata !"mtxA", metadata !5, i32 16778018, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 802]
!251 = metadata !{i32 786689, metadata !248, metadata !"mtxB", metadata !5, i32 33555235, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 803]
!252 = metadata !{i32 786688, metadata !248, metadata !"ai", metadata !5, i32 805, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai] [line 805]
!253 = metadata !{i32 786688, metadata !248, metadata !"ar", metadata !5, i32 805, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar] [line 805]
!254 = metadata !{i32 786688, metadata !248, metadata !"bi0", metadata !5, i32 805, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi0] [line 805]
!255 = metadata !{i32 786688, metadata !248, metadata !"bi1", metadata !5, i32 805, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi1] [line 805]
!256 = metadata !{i32 786688, metadata !248, metadata !"bi2", metadata !5, i32 805, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi2] [line 805]
!257 = metadata !{i32 786688, metadata !248, metadata !"br0", metadata !5, i32 805, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br0] [line 805]
!258 = metadata !{i32 786688, metadata !248, metadata !"br1", metadata !5, i32 805, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br1] [line 805]
!259 = metadata !{i32 786688, metadata !248, metadata !"br2", metadata !5, i32 805, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br2] [line 805]
!260 = metadata !{i32 786688, metadata !248, metadata !"isum0", metadata !5, i32 806, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isum0] [line 806]
!261 = metadata !{i32 786688, metadata !248, metadata !"isum1", metadata !5, i32 806, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isum1] [line 806]
!262 = metadata !{i32 786688, metadata !248, metadata !"isum2", metadata !5, i32 806, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isum2] [line 806]
!263 = metadata !{i32 786688, metadata !248, metadata !"rsum0", metadata !5, i32 806, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsum0] [line 806]
!264 = metadata !{i32 786688, metadata !248, metadata !"rsum1", metadata !5, i32 806, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsum1] [line 806]
!265 = metadata !{i32 786688, metadata !248, metadata !"rsum2", metadata !5, i32 806, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsum2] [line 806]
!266 = metadata !{i32 786688, metadata !248, metadata !"colB0", metadata !5, i32 807, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB0] [line 807]
!267 = metadata !{i32 786688, metadata !248, metadata !"colB1", metadata !5, i32 807, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB1] [line 807]
!268 = metadata !{i32 786688, metadata !248, metadata !"colB2", metadata !5, i32 807, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB2] [line 807]
!269 = metadata !{i32 786688, metadata !248, metadata !"entriesA", metadata !5, i32 807, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesA] [line 807]
!270 = metadata !{i32 786688, metadata !248, metadata !"entriesB", metadata !5, i32 807, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesB] [line 807]
!271 = metadata !{i32 786688, metadata !248, metadata !"first", metadata !5, i32 808, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 808]
!272 = metadata !{i32 786688, metadata !248, metadata !"ii", metadata !5, i32 808, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 808]
!273 = metadata !{i32 786688, metadata !248, metadata !"iloc", metadata !5, i32 808, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 808]
!274 = metadata !{i32 786688, metadata !248, metadata !"inc1", metadata !5, i32 808, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 808]
!275 = metadata !{i32 786688, metadata !248, metadata !"inc2", metadata !5, i32 808, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 808]
!276 = metadata !{i32 786688, metadata !248, metadata !"irowA", metadata !5, i32 808, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 808]
!277 = metadata !{i32 786688, metadata !248, metadata !"jcolB", metadata !5, i32 808, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolB] [line 808]
!278 = metadata !{i32 786688, metadata !248, metadata !"kk", metadata !5, i32 808, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 808]
!279 = metadata !{i32 786688, metadata !248, metadata !"last", metadata !5, i32 808, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 808]
!280 = metadata !{i32 786688, metadata !248, metadata !"ncolB", metadata !5, i32 809, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolB] [line 809]
!281 = metadata !{i32 786688, metadata !248, metadata !"nentA", metadata !5, i32 809, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentA] [line 809]
!282 = metadata !{i32 786688, metadata !248, metadata !"nrowA", metadata !5, i32 809, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 809]
!283 = metadata !{i32 786688, metadata !248, metadata !"nrowB", metadata !5, i32 809, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowB] [line 809]
!284 = metadata !{i32 786688, metadata !248, metadata !"rloc", metadata !5, i32 809, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 809]
!285 = metadata !{i32 786688, metadata !248, metadata !"firstlocsA", metadata !5, i32 810, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocsA] [line 810]
!286 = metadata !{i32 786688, metadata !248, metadata !"sizesA", metadata !5, i32 810, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizesA] [line 810]
!287 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"real_solveBlockDiagonalSym", metadata !"real_solveBlockDiagonalSym", metadata !"", i32 684, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !288, i32 687} ; [ DW_TAG_subprogram ] [line 684] [local] [def] [scope 687] [real_solveBlockDiagonalSym]
!288 = metadata !{metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314}
!289 = metadata !{i32 786689, metadata !287, metadata !"mtxA", metadata !5, i32 16777901, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 685]
!290 = metadata !{i32 786689, metadata !287, metadata !"mtxB", metadata !5, i32 33555118, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 686]
!291 = metadata !{i32 786688, metadata !287, metadata !"Aii", metadata !5, i32 688, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Aii] [line 688]
!292 = metadata !{i32 786688, metadata !287, metadata !"Arr", metadata !5, i32 688, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Arr] [line 688]
!293 = metadata !{i32 786688, metadata !287, metadata !"Ars", metadata !5, i32 688, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ars] [line 688]
!294 = metadata !{i32 786688, metadata !287, metadata !"Ass", metadata !5, i32 688, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ass] [line 688]
!295 = metadata !{i32 786688, metadata !287, metadata !"recip", metadata !5, i32 688, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [recip] [line 688]
!296 = metadata !{i32 786688, metadata !287, metadata !"t1", metadata !5, i32 688, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t1] [line 688]
!297 = metadata !{i32 786688, metadata !287, metadata !"t2", metadata !5, i32 688, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t2] [line 688]
!298 = metadata !{i32 786688, metadata !287, metadata !"colB0", metadata !5, i32 689, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB0] [line 689]
!299 = metadata !{i32 786688, metadata !287, metadata !"colB1", metadata !5, i32 689, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB1] [line 689]
!300 = metadata !{i32 786688, metadata !287, metadata !"colB2", metadata !5, i32 689, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB2] [line 689]
!301 = metadata !{i32 786688, metadata !287, metadata !"entriesA", metadata !5, i32 689, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesA] [line 689]
!302 = metadata !{i32 786688, metadata !287, metadata !"entriesB", metadata !5, i32 689, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesB] [line 689]
!303 = metadata !{i32 786688, metadata !287, metadata !"inc1", metadata !5, i32 690, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 690]
!304 = metadata !{i32 786688, metadata !287, metadata !"inc2", metadata !5, i32 690, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 690]
!305 = metadata !{i32 786688, metadata !287, metadata !"ipivot", metadata !5, i32 690, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipivot] [line 690]
!306 = metadata !{i32 786688, metadata !287, metadata !"irowA", metadata !5, i32 690, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 690]
!307 = metadata !{i32 786688, metadata !287, metadata !"jcolB", metadata !5, i32 690, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolB] [line 690]
!308 = metadata !{i32 786688, metadata !287, metadata !"kk", metadata !5, i32 690, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 690]
!309 = metadata !{i32 786688, metadata !287, metadata !"m", metadata !5, i32 690, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 690]
!310 = metadata !{i32 786688, metadata !287, metadata !"ncolB", metadata !5, i32 691, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolB] [line 691]
!311 = metadata !{i32 786688, metadata !287, metadata !"nentA", metadata !5, i32 691, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentA] [line 691]
!312 = metadata !{i32 786688, metadata !287, metadata !"nrowA", metadata !5, i32 691, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 691]
!313 = metadata !{i32 786688, metadata !287, metadata !"nrowB", metadata !5, i32 691, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowB] [line 691]
!314 = metadata !{i32 786688, metadata !287, metadata !"pivotsizes", metadata !5, i32 692, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 692]
!315 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"real_solveDiagonal", metadata !"real_solveDiagonal", metadata !"", i32 631, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !316, i32 634} ; [ DW_TAG_subprogram ] [line 631] [local] [def] [scope 634] [real_solveDiagonal]
!316 = metadata !{metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !329, metadata !330, metadata !331}
!317 = metadata !{i32 786689, metadata !315, metadata !"mtxA", metadata !5, i32 16777848, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 632]
!318 = metadata !{i32 786689, metadata !315, metadata !"mtxB", metadata !5, i32 33555065, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 633]
!319 = metadata !{i32 786688, metadata !315, metadata !"Aii", metadata !5, i32 635, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Aii] [line 635]
!320 = metadata !{i32 786688, metadata !315, metadata !"colB0", metadata !5, i32 636, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB0] [line 636]
!321 = metadata !{i32 786688, metadata !315, metadata !"colB1", metadata !5, i32 636, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB1] [line 636]
!322 = metadata !{i32 786688, metadata !315, metadata !"colB2", metadata !5, i32 636, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB2] [line 636]
!323 = metadata !{i32 786688, metadata !315, metadata !"entriesA", metadata !5, i32 636, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesA] [line 636]
!324 = metadata !{i32 786688, metadata !315, metadata !"entriesB", metadata !5, i32 636, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesB] [line 636]
!325 = metadata !{i32 786688, metadata !315, metadata !"inc1", metadata !5, i32 637, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 637]
!326 = metadata !{i32 786688, metadata !315, metadata !"inc2", metadata !5, i32 637, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 637]
!327 = metadata !{i32 786688, metadata !315, metadata !"irowA", metadata !5, i32 637, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 637]
!328 = metadata !{i32 786688, metadata !315, metadata !"jcolB", metadata !5, i32 637, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolB] [line 637]
!329 = metadata !{i32 786688, metadata !315, metadata !"ncolB", metadata !5, i32 637, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolB] [line 637]
!330 = metadata !{i32 786688, metadata !315, metadata !"nrowA", metadata !5, i32 637, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 637]
!331 = metadata !{i32 786688, metadata !315, metadata !"nrowB", metadata !5, i32 637, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowB] [line 637]
!332 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"real_solveSparseColumns", metadata !"real_solveSparseColumns", metadata !"", i32 529, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !333, i32 532} ; [ DW_TAG_subprogram ] [line 529] [local] [def] [scope 532] [real_solveSparseColumns]
!333 = metadata !{metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !357, metadata !358, metadata !359}
!334 = metadata !{i32 786689, metadata !332, metadata !"mtxA", metadata !5, i32 16777746, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 530]
!335 = metadata !{i32 786689, metadata !332, metadata !"mtxB", metadata !5, i32 33554963, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 531]
!336 = metadata !{i32 786688, metadata !332, metadata !"Aji", metadata !5, i32 533, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Aji] [line 533]
!337 = metadata !{i32 786688, metadata !332, metadata !"Bi0", metadata !5, i32 533, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Bi0] [line 533]
!338 = metadata !{i32 786688, metadata !332, metadata !"Bi1", metadata !5, i32 533, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Bi1] [line 533]
!339 = metadata !{i32 786688, metadata !332, metadata !"Bi2", metadata !5, i32 533, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Bi2] [line 533]
!340 = metadata !{i32 786688, metadata !332, metadata !"colB0", metadata !5, i32 534, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB0] [line 534]
!341 = metadata !{i32 786688, metadata !332, metadata !"colB1", metadata !5, i32 534, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB1] [line 534]
!342 = metadata !{i32 786688, metadata !332, metadata !"colB2", metadata !5, i32 534, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB2] [line 534]
!343 = metadata !{i32 786688, metadata !332, metadata !"entriesA", metadata !5, i32 534, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesA] [line 534]
!344 = metadata !{i32 786688, metadata !332, metadata !"entriesB", metadata !5, i32 534, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesB] [line 534]
!345 = metadata !{i32 786688, metadata !332, metadata !"colstart", metadata !5, i32 535, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colstart] [line 535]
!346 = metadata !{i32 786688, metadata !332, metadata !"ii", metadata !5, i32 535, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 535]
!347 = metadata !{i32 786688, metadata !332, metadata !"inc1", metadata !5, i32 535, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 535]
!348 = metadata !{i32 786688, metadata !332, metadata !"inc2", metadata !5, i32 535, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 535]
!349 = metadata !{i32 786688, metadata !332, metadata !"jcolA", metadata !5, i32 535, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolA] [line 535]
!350 = metadata !{i32 786688, metadata !332, metadata !"jcolB", metadata !5, i32 535, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolB] [line 535]
!351 = metadata !{i32 786688, metadata !332, metadata !"jj", metadata !5, i32 536, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 536]
!352 = metadata !{i32 786688, metadata !332, metadata !"kk", metadata !5, i32 536, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 536]
!353 = metadata !{i32 786688, metadata !332, metadata !"ncolB", metadata !5, i32 536, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolB] [line 536]
!354 = metadata !{i32 786688, metadata !332, metadata !"nentA", metadata !5, i32 536, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentA] [line 536]
!355 = metadata !{i32 786688, metadata !332, metadata !"nrowA", metadata !5, i32 536, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 536]
!356 = metadata !{i32 786688, metadata !332, metadata !"nrowB", metadata !5, i32 536, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowB] [line 536]
!357 = metadata !{i32 786688, metadata !332, metadata !"size", metadata !5, i32 536, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 536]
!358 = metadata !{i32 786688, metadata !332, metadata !"indicesA", metadata !5, i32 537, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indicesA] [line 537]
!359 = metadata !{i32 786688, metadata !332, metadata !"sizesA", metadata !5, i32 537, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizesA] [line 537]
!360 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"real_solveDenseSubcolumns", metadata !"real_solveDenseSubcolumns", metadata !"", i32 408, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !361, i32 411} ; [ DW_TAG_subprogram ] [line 408] [local] [def] [scope 411] [real_solveDenseSubcolumns]
!361 = metadata !{metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387}
!362 = metadata !{i32 786689, metadata !360, metadata !"mtxA", metadata !5, i32 16777625, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 409]
!363 = metadata !{i32 786689, metadata !360, metadata !"mtxB", metadata !5, i32 33554842, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 410]
!364 = metadata !{i32 786688, metadata !360, metadata !"Aji", metadata !5, i32 412, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Aji] [line 412]
!365 = metadata !{i32 786688, metadata !360, metadata !"Bi0", metadata !5, i32 412, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Bi0] [line 412]
!366 = metadata !{i32 786688, metadata !360, metadata !"Bi1", metadata !5, i32 412, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Bi1] [line 412]
!367 = metadata !{i32 786688, metadata !360, metadata !"Bi2", metadata !5, i32 412, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Bi2] [line 412]
!368 = metadata !{i32 786688, metadata !360, metadata !"colB0", metadata !5, i32 413, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB0] [line 413]
!369 = metadata !{i32 786688, metadata !360, metadata !"colB1", metadata !5, i32 413, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB1] [line 413]
!370 = metadata !{i32 786688, metadata !360, metadata !"colB2", metadata !5, i32 413, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB2] [line 413]
!371 = metadata !{i32 786688, metadata !360, metadata !"entriesA", metadata !5, i32 413, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesA] [line 413]
!372 = metadata !{i32 786688, metadata !360, metadata !"entriesB", metadata !5, i32 413, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesB] [line 413]
!373 = metadata !{i32 786688, metadata !360, metadata !"colstart", metadata !5, i32 414, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colstart] [line 414]
!374 = metadata !{i32 786688, metadata !360, metadata !"first", metadata !5, i32 414, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 414]
!375 = metadata !{i32 786688, metadata !360, metadata !"inc1", metadata !5, i32 414, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 414]
!376 = metadata !{i32 786688, metadata !360, metadata !"inc2", metadata !5, i32 414, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 414]
!377 = metadata !{i32 786688, metadata !360, metadata !"irowA", metadata !5, i32 414, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 414]
!378 = metadata !{i32 786688, metadata !360, metadata !"jcolB", metadata !5, i32 414, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolB] [line 414]
!379 = metadata !{i32 786688, metadata !360, metadata !"jj", metadata !5, i32 415, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 415]
!380 = metadata !{i32 786688, metadata !360, metadata !"kk", metadata !5, i32 415, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 415]
!381 = metadata !{i32 786688, metadata !360, metadata !"last", metadata !5, i32 415, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 415]
!382 = metadata !{i32 786688, metadata !360, metadata !"ncolB", metadata !5, i32 415, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolB] [line 415]
!383 = metadata !{i32 786688, metadata !360, metadata !"nentA", metadata !5, i32 415, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentA] [line 415]
!384 = metadata !{i32 786688, metadata !360, metadata !"nrowA", metadata !5, i32 415, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 415]
!385 = metadata !{i32 786688, metadata !360, metadata !"nrowB", metadata !5, i32 415, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowB] [line 415]
!386 = metadata !{i32 786688, metadata !360, metadata !"firstlocsA", metadata !5, i32 416, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocsA] [line 416]
!387 = metadata !{i32 786688, metadata !360, metadata !"sizesA", metadata !5, i32 416, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizesA] [line 416]
!388 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"real_solveSparseRows", metadata !"real_solveSparseRows", metadata !"", i32 304, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !389, i32 307} ; [ DW_TAG_subprogram ] [line 304] [local] [def] [scope 307] [real_solveSparseRows]
!389 = metadata !{metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403, metadata !404, metadata !405, metadata !406, metadata !407, metadata !408, metadata !409, metadata !410, metadata !411, metadata !412, metadata !413, metadata !414}
!390 = metadata !{i32 786689, metadata !388, metadata !"mtxA", metadata !5, i32 16777521, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 305]
!391 = metadata !{i32 786689, metadata !388, metadata !"mtxB", metadata !5, i32 33554738, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 306]
!392 = metadata !{i32 786688, metadata !388, metadata !"Aki", metadata !5, i32 308, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Aki] [line 308]
!393 = metadata !{i32 786688, metadata !388, metadata !"sum0", metadata !5, i32 308, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum0] [line 308]
!394 = metadata !{i32 786688, metadata !388, metadata !"sum1", metadata !5, i32 308, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum1] [line 308]
!395 = metadata !{i32 786688, metadata !388, metadata !"sum2", metadata !5, i32 308, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum2] [line 308]
!396 = metadata !{i32 786688, metadata !388, metadata !"colB0", metadata !5, i32 309, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB0] [line 309]
!397 = metadata !{i32 786688, metadata !388, metadata !"colB1", metadata !5, i32 309, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB1] [line 309]
!398 = metadata !{i32 786688, metadata !388, metadata !"colB2", metadata !5, i32 309, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB2] [line 309]
!399 = metadata !{i32 786688, metadata !388, metadata !"entriesA", metadata !5, i32 309, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesA] [line 309]
!400 = metadata !{i32 786688, metadata !388, metadata !"entriesB", metadata !5, i32 309, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesB] [line 309]
!401 = metadata !{i32 786688, metadata !388, metadata !"ii", metadata !5, i32 310, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 310]
!402 = metadata !{i32 786688, metadata !388, metadata !"inc1", metadata !5, i32 310, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 310]
!403 = metadata !{i32 786688, metadata !388, metadata !"inc2", metadata !5, i32 310, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 310]
!404 = metadata !{i32 786688, metadata !388, metadata !"irowA", metadata !5, i32 310, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 310]
!405 = metadata !{i32 786688, metadata !388, metadata !"jcolB", metadata !5, i32 310, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolB] [line 310]
!406 = metadata !{i32 786688, metadata !388, metadata !"jj", metadata !5, i32 310, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 310]
!407 = metadata !{i32 786688, metadata !388, metadata !"kk", metadata !5, i32 310, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 310]
!408 = metadata !{i32 786688, metadata !388, metadata !"ncolB", metadata !5, i32 311, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolB] [line 311]
!409 = metadata !{i32 786688, metadata !388, metadata !"nentA", metadata !5, i32 311, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentA] [line 311]
!410 = metadata !{i32 786688, metadata !388, metadata !"nrowA", metadata !5, i32 311, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 311]
!411 = metadata !{i32 786688, metadata !388, metadata !"nrowB", metadata !5, i32 311, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowB] [line 311]
!412 = metadata !{i32 786688, metadata !388, metadata !"size", metadata !5, i32 311, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 311]
!413 = metadata !{i32 786688, metadata !388, metadata !"indicesA", metadata !5, i32 312, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indicesA] [line 312]
!414 = metadata !{i32 786688, metadata !388, metadata !"sizesA", metadata !5, i32 312, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizesA] [line 312]
!415 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"real_solveDenseSubrows", metadata !"real_solveDenseSubrows", metadata !"", i32 169, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !416, i32 172} ; [ DW_TAG_subprogram ] [line 169] [local] [def] [scope 172] [real_solveDenseSubrows]
!416 = metadata !{metadata !417, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433, metadata !434, metadata !435, metadata !436, metadata !437, metadata !438, metadata !439, metadata !440, metadata !441}
!417 = metadata !{i32 786689, metadata !415, metadata !"mtxA", metadata !5, i32 16777386, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 170]
!418 = metadata !{i32 786689, metadata !415, metadata !"mtxB", metadata !5, i32 33554603, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 171]
!419 = metadata !{i32 786688, metadata !415, metadata !"Aki", metadata !5, i32 173, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Aki] [line 173]
!420 = metadata !{i32 786688, metadata !415, metadata !"sum0", metadata !5, i32 173, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum0] [line 173]
!421 = metadata !{i32 786688, metadata !415, metadata !"sum1", metadata !5, i32 173, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum1] [line 173]
!422 = metadata !{i32 786688, metadata !415, metadata !"sum2", metadata !5, i32 173, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum2] [line 173]
!423 = metadata !{i32 786688, metadata !415, metadata !"colB0", metadata !5, i32 174, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB0] [line 174]
!424 = metadata !{i32 786688, metadata !415, metadata !"colB1", metadata !5, i32 174, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB1] [line 174]
!425 = metadata !{i32 786688, metadata !415, metadata !"colB2", metadata !5, i32 174, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB2] [line 174]
!426 = metadata !{i32 786688, metadata !415, metadata !"entriesA", metadata !5, i32 174, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesA] [line 174]
!427 = metadata !{i32 786688, metadata !415, metadata !"entriesB", metadata !5, i32 174, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesB] [line 174]
!428 = metadata !{i32 786688, metadata !415, metadata !"first", metadata !5, i32 175, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 175]
!429 = metadata !{i32 786688, metadata !415, metadata !"ii", metadata !5, i32 175, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 175]
!430 = metadata !{i32 786688, metadata !415, metadata !"inc1", metadata !5, i32 175, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 175]
!431 = metadata !{i32 786688, metadata !415, metadata !"inc2", metadata !5, i32 175, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 175]
!432 = metadata !{i32 786688, metadata !415, metadata !"irowA", metadata !5, i32 175, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 175]
!433 = metadata !{i32 786688, metadata !415, metadata !"jcolB", metadata !5, i32 175, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolB] [line 175]
!434 = metadata !{i32 786688, metadata !415, metadata !"kk", metadata !5, i32 175, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 175]
!435 = metadata !{i32 786688, metadata !415, metadata !"last", metadata !5, i32 175, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 175]
!436 = metadata !{i32 786688, metadata !415, metadata !"ncolB", metadata !5, i32 176, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolB] [line 176]
!437 = metadata !{i32 786688, metadata !415, metadata !"nentA", metadata !5, i32 176, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentA] [line 176]
!438 = metadata !{i32 786688, metadata !415, metadata !"nrowA", metadata !5, i32 176, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 176]
!439 = metadata !{i32 786688, metadata !415, metadata !"nrowB", metadata !5, i32 176, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowB] [line 176]
!440 = metadata !{i32 786688, metadata !415, metadata !"firstlocsA", metadata !5, i32 177, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocsA] [line 177]
!441 = metadata !{i32 786688, metadata !415, metadata !"sizesA", metadata !5, i32 177, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizesA] [line 177]
!442 = metadata !{i32 46, i32 0, metadata !4, null}
!443 = metadata !{i32 47, i32 0, metadata !4, null}
!444 = metadata !{i32 54, i32 0, metadata !4, null}
!445 = metadata !{i32 55, i32 0, metadata !446, null}
!446 = metadata !{i32 786443, metadata !1, metadata !4, i32 54, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!447 = metadata !{metadata !"any pointer", metadata !448}
!448 = metadata !{metadata !"omnipotent char", metadata !449}
!449 = metadata !{metadata !"Simple C/C++ TBAA"}
!450 = metadata !{i32 57, i32 0, metadata !446, null}
!451 = metadata !{i32 59, i32 0, metadata !4, null}
!452 = metadata !{metadata !"int", metadata !448}
!453 = metadata !{i32 60, i32 0, metadata !454, null}
!454 = metadata !{i32 786443, metadata !1, metadata !4, i32 59, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!455 = metadata !{i32 62, i32 0, metadata !454, null}
!456 = metadata !{i32 64, i32 0, metadata !4, null}
!457 = metadata !{i32 65, i32 0, metadata !458, null}
!458 = metadata !{i32 786443, metadata !1, metadata !4, i32 64, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!459 = metadata !{i32 68, i32 0, metadata !458, null}
!460 = metadata !{i32 75, i32 0, metadata !4, null}
!461 = metadata !{i32 82, i32 0, metadata !462, null}
!462 = metadata !{i32 786443, metadata !1, metadata !4, i32 75, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!463 = metadata !{i32 170, i32 0, metadata !415, metadata !464}
!464 = metadata !{i32 84, i32 0, metadata !465, null}
!465 = metadata !{i32 786443, metadata !1, metadata !462, i32 82, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!466 = metadata !{i32 786689, metadata !415, metadata !"mtxA", metadata !5, i32 16777386, metadata !8, i32 0, metadata !464} ; [ DW_TAG_arg_variable ] [mtxA] [line 170]
!467 = metadata !{i32 786689, metadata !415, metadata !"mtxB", metadata !5, i32 33554603, metadata !8, i32 0, metadata !464} ; [ DW_TAG_arg_variable ] [mtxB] [line 171]
!468 = metadata !{i32 171, i32 0, metadata !415, metadata !464}
!469 = metadata !{i32 174, i32 0, metadata !415, metadata !464}
!470 = metadata !{i32 175, i32 0, metadata !415, metadata !464}
!471 = metadata !{i32 176, i32 0, metadata !415, metadata !464}
!472 = metadata !{i32 177, i32 0, metadata !415, metadata !464}
!473 = metadata !{i32 183, i32 0, metadata !415, metadata !464}
!474 = metadata !{i32 185, i32 0, metadata !415, metadata !464}
!475 = metadata !{i32 786688, metadata !415, metadata !"entriesB", metadata !5, i32 174, metadata !22, i32 0, metadata !464} ; [ DW_TAG_auto_variable ] [entriesB] [line 174]
!476 = metadata !{i32 190, i32 0, metadata !415, metadata !464}
!477 = metadata !{i32 786688, metadata !415, metadata !"colB0", metadata !5, i32 174, metadata !22, i32 0, metadata !464} ; [ DW_TAG_auto_variable ] [colB0] [line 174]
!478 = metadata !{i32 786688, metadata !415, metadata !"jcolB", metadata !5, i32 175, metadata !14, i32 0, metadata !464} ; [ DW_TAG_auto_variable ] [jcolB] [line 175]
!479 = metadata !{i32 191, i32 0, metadata !480, metadata !464}
!480 = metadata !{i32 786443, metadata !1, metadata !415, i32 191, i32 0, i32 221} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!481 = metadata !{i32 786688, metadata !415, metadata !"ncolB", metadata !5, i32 176, metadata !14, i32 0, metadata !464} ; [ DW_TAG_auto_variable ] [ncolB] [line 176]
!482 = metadata !{i32 786688, metadata !415, metadata !"nrowB", metadata !5, i32 176, metadata !14, i32 0, metadata !464} ; [ DW_TAG_auto_variable ] [nrowB] [line 176]
!483 = metadata !{i32 192, i32 0, metadata !484, metadata !464}
!484 = metadata !{i32 786443, metadata !1, metadata !480, i32 191, i32 0, i32 222} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!485 = metadata !{i32 193, i32 0, metadata !484, metadata !464}
!486 = metadata !{i32 786688, metadata !415, metadata !"nrowA", metadata !5, i32 176, metadata !14, i32 0, metadata !464} ; [ DW_TAG_auto_variable ] [nrowA] [line 176]
!487 = metadata !{i32 198, i32 0, metadata !488, metadata !464}
!488 = metadata !{i32 786443, metadata !1, metadata !484, i32 198, i32 0, i32 223} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!489 = metadata !{i32 231, i32 0, metadata !484, metadata !464}
!490 = metadata !{i32 786688, metadata !415, metadata !"sizesA", metadata !5, i32 177, metadata !78, i32 0, metadata !464} ; [ DW_TAG_auto_variable ] [sizesA] [line 177]
!491 = metadata !{i32 203, i32 0, metadata !492, metadata !464}
!492 = metadata !{i32 786443, metadata !1, metadata !488, i32 198, i32 0, i32 224} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!493 = metadata !{i32 786688, metadata !415, metadata !"firstlocsA", metadata !5, i32 177, metadata !78, i32 0, metadata !464} ; [ DW_TAG_auto_variable ] [firstlocsA] [line 177]
!494 = metadata !{i32 204, i32 0, metadata !495, metadata !464}
!495 = metadata !{i32 786443, metadata !1, metadata !492, i32 203, i32 0, i32 225} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!496 = metadata !{i32 786688, metadata !415, metadata !"entriesA", metadata !5, i32 174, metadata !22, i32 0, metadata !464} ; [ DW_TAG_auto_variable ] [entriesA] [line 174]
!497 = metadata !{i32 212, i32 0, metadata !498, metadata !464}
!498 = metadata !{i32 786443, metadata !1, metadata !499, i32 211, i32 0, i32 227} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!499 = metadata !{i32 786443, metadata !1, metadata !495, i32 211, i32 0, i32 226} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!500 = metadata !{i32 786688, metadata !415, metadata !"kk", metadata !5, i32 175, metadata !14, i32 0, metadata !464} ; [ DW_TAG_auto_variable ] [kk] [line 175]
!501 = metadata !{i32 786688, metadata !415, metadata !"irowA", metadata !5, i32 175, metadata !14, i32 0, metadata !464} ; [ DW_TAG_auto_variable ] [irowA] [line 175]
!502 = metadata !{i32 786688, metadata !415, metadata !"first", metadata !5, i32 175, metadata !14, i32 0, metadata !464} ; [ DW_TAG_auto_variable ] [first] [line 175]
!503 = metadata !{i32 205, i32 0, metadata !495, metadata !464}
!504 = metadata !{i32 786688, metadata !415, metadata !"last", metadata !5, i32 175, metadata !14, i32 0, metadata !464} ; [ DW_TAG_auto_variable ] [last] [line 175]
!505 = metadata !{double 0.000000e+00}
!506 = metadata !{i32 786688, metadata !415, metadata !"sum2", metadata !5, i32 173, metadata !23, i32 0, metadata !464} ; [ DW_TAG_auto_variable ] [sum2] [line 173]
!507 = metadata !{i32 210, i32 0, metadata !495, metadata !464}
!508 = metadata !{i32 786688, metadata !415, metadata !"sum1", metadata !5, i32 173, metadata !23, i32 0, metadata !464} ; [ DW_TAG_auto_variable ] [sum1] [line 173]
!509 = metadata !{i32 786688, metadata !415, metadata !"sum0", metadata !5, i32 173, metadata !23, i32 0, metadata !464} ; [ DW_TAG_auto_variable ] [sum0] [line 173]
!510 = metadata !{i32 786688, metadata !415, metadata !"ii", metadata !5, i32 175, metadata !14, i32 0, metadata !464} ; [ DW_TAG_auto_variable ] [ii] [line 175]
!511 = metadata !{i32 211, i32 0, metadata !499, metadata !464}
!512 = metadata !{metadata !"double", metadata !448}
!513 = metadata !{i32 786688, metadata !415, metadata !"Aki", metadata !5, i32 173, metadata !23, i32 0, metadata !464} ; [ DW_TAG_auto_variable ] [Aki] [line 173]
!514 = metadata !{i32 218, i32 0, metadata !498, metadata !464}
!515 = metadata !{i32 219, i32 0, metadata !498, metadata !464}
!516 = metadata !{i32 220, i32 0, metadata !498, metadata !464}
!517 = metadata !{i32 222, i32 0, metadata !495, metadata !464}
!518 = metadata !{i32 223, i32 0, metadata !495, metadata !464}
!519 = metadata !{i32 224, i32 0, metadata !495, metadata !464}
!520 = metadata !{i32 225, i32 0, metadata !495, metadata !464}
!521 = metadata !{i32 233, i32 0, metadata !415, metadata !464}
!522 = metadata !{i32 234, i32 0, metadata !523, metadata !464}
!523 = metadata !{i32 786443, metadata !1, metadata !415, i32 233, i32 0, i32 228} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!524 = metadata !{i32 239, i32 0, metadata !525, metadata !464}
!525 = metadata !{i32 786443, metadata !1, metadata !523, i32 239, i32 0, i32 229} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!526 = metadata !{i32 240, i32 0, metadata !527, metadata !464}
!527 = metadata !{i32 786443, metadata !1, metadata !525, i32 239, i32 0, i32 230} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!528 = metadata !{i32 241, i32 0, metadata !529, metadata !464}
!529 = metadata !{i32 786443, metadata !1, metadata !527, i32 240, i32 0, i32 231} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!530 = metadata !{i32 245, i32 0, metadata !531, metadata !464}
!531 = metadata !{i32 786443, metadata !1, metadata !532, i32 244, i32 0, i32 233} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!532 = metadata !{i32 786443, metadata !1, metadata !529, i32 244, i32 0, i32 232} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!533 = metadata !{i32 242, i32 0, metadata !529, metadata !464}
!534 = metadata !{i32 243, i32 0, metadata !529, metadata !464}
!535 = metadata !{i32 244, i32 0, metadata !532, metadata !464}
!536 = metadata !{i32 246, i32 0, metadata !531, metadata !464}
!537 = metadata !{i32 247, i32 0, metadata !531, metadata !464}
!538 = metadata !{i32 249, i32 0, metadata !529, metadata !464}
!539 = metadata !{i32 250, i32 0, metadata !529, metadata !464}
!540 = metadata !{i32 251, i32 0, metadata !529, metadata !464}
!541 = metadata !{i32 253, i32 0, metadata !415, metadata !464}
!542 = metadata !{i32 258, i32 0, metadata !543, metadata !464}
!543 = metadata !{i32 786443, metadata !1, metadata !544, i32 258, i32 0, i32 235} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!544 = metadata !{i32 786443, metadata !1, metadata !415, i32 253, i32 0, i32 234} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!545 = metadata !{i32 264, i32 0, metadata !546, metadata !464}
!546 = metadata !{i32 786443, metadata !1, metadata !543, i32 258, i32 0, i32 236} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!547 = metadata !{i32 265, i32 0, metadata !548, metadata !464}
!548 = metadata !{i32 786443, metadata !1, metadata !546, i32 264, i32 0, i32 237} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!549 = metadata !{i32 273, i32 0, metadata !550, metadata !464}
!550 = metadata !{i32 786443, metadata !1, metadata !551, i32 272, i32 0, i32 239} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!551 = metadata !{i32 786443, metadata !1, metadata !548, i32 272, i32 0, i32 238} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!552 = metadata !{i32 266, i32 0, metadata !548, metadata !464}
!553 = metadata !{i32 271, i32 0, metadata !548, metadata !464}
!554 = metadata !{i32 272, i32 0, metadata !551, metadata !464}
!555 = metadata !{i32 279, i32 0, metadata !550, metadata !464}
!556 = metadata !{i32 281, i32 0, metadata !548, metadata !464}
!557 = metadata !{i32 287, i32 0, metadata !548, metadata !464}
!558 = metadata !{i32 305, i32 0, metadata !388, metadata !559}
!559 = metadata !{i32 87, i32 0, metadata !465, null}
!560 = metadata !{i32 786689, metadata !388, metadata !"mtxA", metadata !5, i32 16777521, metadata !8, i32 0, metadata !559} ; [ DW_TAG_arg_variable ] [mtxA] [line 305]
!561 = metadata !{i32 786689, metadata !388, metadata !"mtxB", metadata !5, i32 33554738, metadata !8, i32 0, metadata !559} ; [ DW_TAG_arg_variable ] [mtxB] [line 306]
!562 = metadata !{i32 306, i32 0, metadata !388, metadata !559}
!563 = metadata !{i32 309, i32 0, metadata !388, metadata !559}
!564 = metadata !{i32 310, i32 0, metadata !388, metadata !559}
!565 = metadata !{i32 311, i32 0, metadata !388, metadata !559}
!566 = metadata !{i32 312, i32 0, metadata !388, metadata !559}
!567 = metadata !{i32 318, i32 0, metadata !388, metadata !559}
!568 = metadata !{i32 320, i32 0, metadata !388, metadata !559}
!569 = metadata !{i32 786688, metadata !388, metadata !"entriesB", metadata !5, i32 309, metadata !22, i32 0, metadata !559} ; [ DW_TAG_auto_variable ] [entriesB] [line 309]
!570 = metadata !{i32 321, i32 0, metadata !388, metadata !559}
!571 = metadata !{i32 786688, metadata !388, metadata !"colB0", metadata !5, i32 309, metadata !22, i32 0, metadata !559} ; [ DW_TAG_auto_variable ] [colB0] [line 309]
!572 = metadata !{i32 786688, metadata !388, metadata !"jcolB", metadata !5, i32 310, metadata !14, i32 0, metadata !559} ; [ DW_TAG_auto_variable ] [jcolB] [line 310]
!573 = metadata !{i32 322, i32 0, metadata !574, metadata !559}
!574 = metadata !{i32 786443, metadata !1, metadata !388, i32 322, i32 0, i32 200} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!575 = metadata !{i32 786688, metadata !388, metadata !"ncolB", metadata !5, i32 311, metadata !14, i32 0, metadata !559} ; [ DW_TAG_auto_variable ] [ncolB] [line 311]
!576 = metadata !{i32 786688, metadata !388, metadata !"nrowB", metadata !5, i32 311, metadata !14, i32 0, metadata !559} ; [ DW_TAG_auto_variable ] [nrowB] [line 311]
!577 = metadata !{i32 323, i32 0, metadata !578, metadata !559}
!578 = metadata !{i32 786443, metadata !1, metadata !574, i32 322, i32 0, i32 201} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!579 = metadata !{i32 324, i32 0, metadata !578, metadata !559}
!580 = metadata !{i32 786688, metadata !388, metadata !"nrowA", metadata !5, i32 311, metadata !14, i32 0, metadata !559} ; [ DW_TAG_auto_variable ] [nrowA] [line 311]
!581 = metadata !{i32 329, i32 0, metadata !582, metadata !559}
!582 = metadata !{i32 786443, metadata !1, metadata !578, i32 329, i32 0, i32 202} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!583 = metadata !{i32 350, i32 0, metadata !578, metadata !559}
!584 = metadata !{i32 786688, metadata !388, metadata !"sizesA", metadata !5, i32 312, metadata !78, i32 0, metadata !559} ; [ DW_TAG_auto_variable ] [sizesA] [line 312]
!585 = metadata !{i32 330, i32 0, metadata !586, metadata !559}
!586 = metadata !{i32 786443, metadata !1, metadata !582, i32 329, i32 0, i32 203} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!587 = metadata !{i32 786688, metadata !388, metadata !"entriesA", metadata !5, i32 309, metadata !22, i32 0, metadata !559} ; [ DW_TAG_auto_variable ] [entriesA] [line 309]
!588 = metadata !{i32 333, i32 0, metadata !589, metadata !559}
!589 = metadata !{i32 786443, metadata !1, metadata !590, i32 332, i32 0, i32 206} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!590 = metadata !{i32 786443, metadata !1, metadata !591, i32 332, i32 0, i32 205} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!591 = metadata !{i32 786443, metadata !1, metadata !586, i32 330, i32 0, i32 204} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!592 = metadata !{i32 786688, metadata !388, metadata !"indicesA", metadata !5, i32 312, metadata !78, i32 0, metadata !559} ; [ DW_TAG_auto_variable ] [indicesA] [line 312]
!593 = metadata !{i32 334, i32 0, metadata !589, metadata !559}
!594 = metadata !{i32 786688, metadata !388, metadata !"kk", metadata !5, i32 310, metadata !14, i32 0, metadata !559} ; [ DW_TAG_auto_variable ] [kk] [line 310]
!595 = metadata !{i32 786688, metadata !388, metadata !"irowA", metadata !5, i32 310, metadata !14, i32 0, metadata !559} ; [ DW_TAG_auto_variable ] [irowA] [line 310]
!596 = metadata !{i32 786688, metadata !388, metadata !"size", metadata !5, i32 311, metadata !14, i32 0, metadata !559} ; [ DW_TAG_auto_variable ] [size] [line 311]
!597 = metadata !{i32 335, i32 0, metadata !589, metadata !559}
!598 = metadata !{i32 332, i32 0, metadata !590, metadata !559}
!599 = metadata !{i32 786688, metadata !388, metadata !"Aki", metadata !5, i32 308, metadata !23, i32 0, metadata !559} ; [ DW_TAG_auto_variable ] [Aki] [line 308]
!600 = metadata !{i32 786688, metadata !388, metadata !"jj", metadata !5, i32 310, metadata !14, i32 0, metadata !559} ; [ DW_TAG_auto_variable ] [jj] [line 310]
!601 = metadata !{i32 336, i32 0, metadata !602, metadata !559}
!602 = metadata !{i32 786443, metadata !1, metadata !589, i32 335, i32 0, i32 207} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!603 = metadata !{i32 339, i32 0, metadata !602, metadata !559}
!604 = metadata !{i32 341, i32 0, metadata !589, metadata !559}
!605 = metadata !{i32 786688, metadata !388, metadata !"sum0", metadata !5, i32 308, metadata !23, i32 0, metadata !559} ; [ DW_TAG_auto_variable ] [sum0] [line 308]
!606 = metadata !{i32 342, i32 0, metadata !589, metadata !559}
!607 = metadata !{i32 786688, metadata !388, metadata !"sum1", metadata !5, i32 308, metadata !23, i32 0, metadata !559} ; [ DW_TAG_auto_variable ] [sum1] [line 308]
!608 = metadata !{i32 343, i32 0, metadata !589, metadata !559}
!609 = metadata !{i32 786688, metadata !388, metadata !"sum2", metadata !5, i32 308, metadata !23, i32 0, metadata !559} ; [ DW_TAG_auto_variable ] [sum2] [line 308]
!610 = metadata !{i32 786688, metadata !388, metadata !"ii", metadata !5, i32 310, metadata !14, i32 0, metadata !559} ; [ DW_TAG_auto_variable ] [ii] [line 310]
!611 = metadata !{i32 345, i32 0, metadata !591, metadata !559}
!612 = metadata !{i32 346, i32 0, metadata !591, metadata !559}
!613 = metadata !{i32 347, i32 0, metadata !591, metadata !559}
!614 = metadata !{i32 348, i32 0, metadata !591, metadata !559}
!615 = metadata !{i32 352, i32 0, metadata !388, metadata !559}
!616 = metadata !{i32 353, i32 0, metadata !617, metadata !559}
!617 = metadata !{i32 786443, metadata !1, metadata !388, i32 352, i32 0, i32 208} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!618 = metadata !{i32 358, i32 0, metadata !619, metadata !559}
!619 = metadata !{i32 786443, metadata !1, metadata !617, i32 358, i32 0, i32 209} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!620 = metadata !{i32 359, i32 0, metadata !621, metadata !559}
!621 = metadata !{i32 786443, metadata !1, metadata !619, i32 358, i32 0, i32 210} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!622 = metadata !{i32 362, i32 0, metadata !623, metadata !559}
!623 = metadata !{i32 786443, metadata !1, metadata !624, i32 361, i32 0, i32 213} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!624 = metadata !{i32 786443, metadata !1, metadata !625, i32 361, i32 0, i32 212} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!625 = metadata !{i32 786443, metadata !1, metadata !621, i32 359, i32 0, i32 211} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!626 = metadata !{i32 363, i32 0, metadata !623, metadata !559}
!627 = metadata !{i32 361, i32 0, metadata !624, metadata !559}
!628 = metadata !{i32 364, i32 0, metadata !623, metadata !559}
!629 = metadata !{i32 365, i32 0, metadata !623, metadata !559}
!630 = metadata !{i32 367, i32 0, metadata !625, metadata !559}
!631 = metadata !{i32 368, i32 0, metadata !625, metadata !559}
!632 = metadata !{i32 369, i32 0, metadata !625, metadata !559}
!633 = metadata !{i32 371, i32 0, metadata !388, metadata !559}
!634 = metadata !{i32 376, i32 0, metadata !635, metadata !559}
!635 = metadata !{i32 786443, metadata !1, metadata !636, i32 376, i32 0, i32 215} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!636 = metadata !{i32 786443, metadata !1, metadata !388, i32 371, i32 0, i32 214} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!637 = metadata !{i32 377, i32 0, metadata !638, metadata !559}
!638 = metadata !{i32 786443, metadata !1, metadata !635, i32 376, i32 0, i32 216} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!639 = metadata !{i32 381, i32 0, metadata !640, metadata !559}
!640 = metadata !{i32 786443, metadata !1, metadata !641, i32 379, i32 0, i32 219} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!641 = metadata !{i32 786443, metadata !1, metadata !642, i32 379, i32 0, i32 218} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!642 = metadata !{i32 786443, metadata !1, metadata !638, i32 377, i32 0, i32 217} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!643 = metadata !{i32 380, i32 0, metadata !640, metadata !559}
!644 = metadata !{i32 379, i32 0, metadata !641, metadata !559}
!645 = metadata !{i32 382, i32 0, metadata !640, metadata !559}
!646 = metadata !{i32 383, i32 0, metadata !647, metadata !559}
!647 = metadata !{i32 786443, metadata !1, metadata !640, i32 382, i32 0, i32 220} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!648 = metadata !{i32 386, i32 0, metadata !647, metadata !559}
!649 = metadata !{i32 388, i32 0, metadata !640, metadata !559}
!650 = metadata !{i32 390, i32 0, metadata !642, metadata !559}
!651 = metadata !{i32 391, i32 0, metadata !642, metadata !559}
!652 = metadata !{i32 409, i32 0, metadata !360, metadata !653}
!653 = metadata !{i32 90, i32 0, metadata !465, null}
!654 = metadata !{i32 786689, metadata !360, metadata !"mtxA", metadata !5, i32 16777625, metadata !8, i32 0, metadata !653} ; [ DW_TAG_arg_variable ] [mtxA] [line 409]
!655 = metadata !{i32 786689, metadata !360, metadata !"mtxB", metadata !5, i32 33554842, metadata !8, i32 0, metadata !653} ; [ DW_TAG_arg_variable ] [mtxB] [line 410]
!656 = metadata !{i32 410, i32 0, metadata !360, metadata !653}
!657 = metadata !{i32 413, i32 0, metadata !360, metadata !653}
!658 = metadata !{i32 414, i32 0, metadata !360, metadata !653}
!659 = metadata !{i32 415, i32 0, metadata !360, metadata !653}
!660 = metadata !{i32 416, i32 0, metadata !360, metadata !653}
!661 = metadata !{i32 422, i32 0, metadata !360, metadata !653}
!662 = metadata !{i32 424, i32 0, metadata !360, metadata !653}
!663 = metadata !{i32 786688, metadata !360, metadata !"entriesB", metadata !5, i32 413, metadata !22, i32 0, metadata !653} ; [ DW_TAG_auto_variable ] [entriesB] [line 413]
!664 = metadata !{i32 429, i32 0, metadata !360, metadata !653}
!665 = metadata !{i32 786688, metadata !360, metadata !"colB0", metadata !5, i32 413, metadata !22, i32 0, metadata !653} ; [ DW_TAG_auto_variable ] [colB0] [line 413]
!666 = metadata !{i32 786688, metadata !360, metadata !"jcolB", metadata !5, i32 414, metadata !14, i32 0, metadata !653} ; [ DW_TAG_auto_variable ] [jcolB] [line 414]
!667 = metadata !{i32 430, i32 0, metadata !668, metadata !653}
!668 = metadata !{i32 786443, metadata !1, metadata !360, i32 430, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!669 = metadata !{i32 786688, metadata !360, metadata !"ncolB", metadata !5, i32 415, metadata !14, i32 0, metadata !653} ; [ DW_TAG_auto_variable ] [ncolB] [line 415]
!670 = metadata !{i32 786688, metadata !360, metadata !"nrowB", metadata !5, i32 415, metadata !14, i32 0, metadata !653} ; [ DW_TAG_auto_variable ] [nrowB] [line 415]
!671 = metadata !{i32 431, i32 0, metadata !672, metadata !653}
!672 = metadata !{i32 786443, metadata !1, metadata !668, i32 430, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!673 = metadata !{i32 432, i32 0, metadata !672, metadata !653}
!674 = metadata !{i32 786688, metadata !360, metadata !"nrowA", metadata !5, i32 415, metadata !14, i32 0, metadata !653} ; [ DW_TAG_auto_variable ] [nrowA] [line 415]
!675 = metadata !{i32 437, i32 0, metadata !676, metadata !653}
!676 = metadata !{i32 786443, metadata !1, metadata !672, i32 437, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!677 = metadata !{i32 786688, metadata !360, metadata !"nentA", metadata !5, i32 415, metadata !14, i32 0, metadata !653} ; [ DW_TAG_auto_variable ] [nentA] [line 415]
!678 = metadata !{i32 786688, metadata !360, metadata !"sizesA", metadata !5, i32 416, metadata !78, i32 0, metadata !653} ; [ DW_TAG_auto_variable ] [sizesA] [line 416]
!679 = metadata !{i32 440, i32 0, metadata !680, metadata !653}
!680 = metadata !{i32 786443, metadata !1, metadata !676, i32 439, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!681 = metadata !{i32 786688, metadata !360, metadata !"firstlocsA", metadata !5, i32 416, metadata !78, i32 0, metadata !653} ; [ DW_TAG_auto_variable ] [firstlocsA] [line 416]
!682 = metadata !{i32 441, i32 0, metadata !683, metadata !653}
!683 = metadata !{i32 786443, metadata !1, metadata !680, i32 440, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!684 = metadata !{i32 786688, metadata !360, metadata !"entriesA", metadata !5, i32 413, metadata !22, i32 0, metadata !653} ; [ DW_TAG_auto_variable ] [entriesA] [line 413]
!685 = metadata !{i32 448, i32 0, metadata !686, metadata !653}
!686 = metadata !{i32 786443, metadata !1, metadata !687, i32 447, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!687 = metadata !{i32 786443, metadata !1, metadata !683, i32 447, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!688 = metadata !{i32 455, i32 0, metadata !672, metadata !653}
!689 = metadata !{i32 786688, metadata !360, metadata !"colstart", metadata !5, i32 414, metadata !14, i32 0, metadata !653} ; [ DW_TAG_auto_variable ] [colstart] [line 414]
!690 = metadata !{i32 786688, metadata !360, metadata !"first", metadata !5, i32 414, metadata !14, i32 0, metadata !653} ; [ DW_TAG_auto_variable ] [first] [line 414]
!691 = metadata !{i32 442, i32 0, metadata !683, metadata !653}
!692 = metadata !{i32 786688, metadata !360, metadata !"last", metadata !5, i32 415, metadata !14, i32 0, metadata !653} ; [ DW_TAG_auto_variable ] [last] [line 415]
!693 = metadata !{i32 443, i32 0, metadata !683, metadata !653}
!694 = metadata !{i32 444, i32 0, metadata !683, metadata !653}
!695 = metadata !{i32 786688, metadata !360, metadata !"Bi0", metadata !5, i32 412, metadata !23, i32 0, metadata !653} ; [ DW_TAG_auto_variable ] [Bi0] [line 412]
!696 = metadata !{i32 445, i32 0, metadata !683, metadata !653}
!697 = metadata !{i32 786688, metadata !360, metadata !"Bi1", metadata !5, i32 412, metadata !23, i32 0, metadata !653} ; [ DW_TAG_auto_variable ] [Bi1] [line 412]
!698 = metadata !{i32 446, i32 0, metadata !683, metadata !653}
!699 = metadata !{i32 786688, metadata !360, metadata !"Bi2", metadata !5, i32 412, metadata !23, i32 0, metadata !653} ; [ DW_TAG_auto_variable ] [Bi2] [line 412]
!700 = metadata !{i32 786688, metadata !360, metadata !"jj", metadata !5, i32 415, metadata !14, i32 0, metadata !653} ; [ DW_TAG_auto_variable ] [jj] [line 415]
!701 = metadata !{i32 447, i32 0, metadata !687, metadata !653}
!702 = metadata !{i32 786688, metadata !360, metadata !"kk", metadata !5, i32 415, metadata !14, i32 0, metadata !653} ; [ DW_TAG_auto_variable ] [kk] [line 415]
!703 = metadata !{i32 786688, metadata !360, metadata !"Aji", metadata !5, i32 412, metadata !23, i32 0, metadata !653} ; [ DW_TAG_auto_variable ] [Aji] [line 412]
!704 = metadata !{i32 449, i32 0, metadata !686, metadata !653}
!705 = metadata !{i32 450, i32 0, metadata !686, metadata !653}
!706 = metadata !{i32 451, i32 0, metadata !686, metadata !653}
!707 = metadata !{i32 457, i32 0, metadata !360, metadata !653}
!708 = metadata !{i32 458, i32 0, metadata !709, metadata !653}
!709 = metadata !{i32 786443, metadata !1, metadata !360, i32 457, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!710 = metadata !{i32 463, i32 0, metadata !711, metadata !653}
!711 = metadata !{i32 786443, metadata !1, metadata !709, i32 463, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!712 = metadata !{i32 466, i32 0, metadata !713, metadata !653}
!713 = metadata !{i32 786443, metadata !1, metadata !711, i32 465, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!714 = metadata !{i32 467, i32 0, metadata !715, metadata !653}
!715 = metadata !{i32 786443, metadata !1, metadata !713, i32 466, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!716 = metadata !{i32 473, i32 0, metadata !717, metadata !653}
!717 = metadata !{i32 786443, metadata !1, metadata !718, i32 472, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!718 = metadata !{i32 786443, metadata !1, metadata !715, i32 472, i32 0, i32 192} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!719 = metadata !{i32 468, i32 0, metadata !715, metadata !653}
!720 = metadata !{i32 469, i32 0, metadata !715, metadata !653}
!721 = metadata !{i32 470, i32 0, metadata !715, metadata !653}
!722 = metadata !{i32 471, i32 0, metadata !715, metadata !653}
!723 = metadata !{i32 472, i32 0, metadata !718, metadata !653}
!724 = metadata !{i32 474, i32 0, metadata !717, metadata !653}
!725 = metadata !{i32 475, i32 0, metadata !717, metadata !653}
!726 = metadata !{i32 479, i32 0, metadata !360, metadata !653}
!727 = metadata !{i32 484, i32 0, metadata !728, metadata !653}
!728 = metadata !{i32 786443, metadata !1, metadata !729, i32 484, i32 0, i32 195} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!729 = metadata !{i32 786443, metadata !1, metadata !360, i32 479, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!730 = metadata !{i32 492, i32 0, metadata !731, metadata !653}
!731 = metadata !{i32 786443, metadata !1, metadata !728, i32 486, i32 0, i32 196} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!732 = metadata !{i32 493, i32 0, metadata !733, metadata !653}
!733 = metadata !{i32 786443, metadata !1, metadata !731, i32 492, i32 0, i32 197} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!734 = metadata !{i32 504, i32 0, metadata !735, metadata !653}
!735 = metadata !{i32 786443, metadata !1, metadata !736, i32 503, i32 0, i32 199} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!736 = metadata !{i32 786443, metadata !1, metadata !733, i32 503, i32 0, i32 198} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!737 = metadata !{i32 494, i32 0, metadata !733, metadata !653}
!738 = metadata !{i32 495, i32 0, metadata !733, metadata !653}
!739 = metadata !{i32 496, i32 0, metadata !733, metadata !653}
!740 = metadata !{i32 503, i32 0, metadata !736, metadata !653}
!741 = metadata !{i32 510, i32 0, metadata !735, metadata !653}
!742 = metadata !{i32 530, i32 0, metadata !332, metadata !743}
!743 = metadata !{i32 93, i32 0, metadata !465, null}
!744 = metadata !{i32 786689, metadata !332, metadata !"mtxA", metadata !5, i32 16777746, metadata !8, i32 0, metadata !743} ; [ DW_TAG_arg_variable ] [mtxA] [line 530]
!745 = metadata !{i32 786689, metadata !332, metadata !"mtxB", metadata !5, i32 33554963, metadata !8, i32 0, metadata !743} ; [ DW_TAG_arg_variable ] [mtxB] [line 531]
!746 = metadata !{i32 531, i32 0, metadata !332, metadata !743}
!747 = metadata !{i32 534, i32 0, metadata !332, metadata !743}
!748 = metadata !{i32 535, i32 0, metadata !332, metadata !743}
!749 = metadata !{i32 536, i32 0, metadata !332, metadata !743}
!750 = metadata !{i32 537, i32 0, metadata !332, metadata !743}
!751 = metadata !{i32 543, i32 0, metadata !332, metadata !743}
!752 = metadata !{i32 545, i32 0, metadata !332, metadata !743}
!753 = metadata !{i32 786688, metadata !332, metadata !"entriesB", metadata !5, i32 534, metadata !22, i32 0, metadata !743} ; [ DW_TAG_auto_variable ] [entriesB] [line 534]
!754 = metadata !{i32 550, i32 0, metadata !332, metadata !743}
!755 = metadata !{i32 786688, metadata !332, metadata !"colB0", metadata !5, i32 534, metadata !22, i32 0, metadata !743} ; [ DW_TAG_auto_variable ] [colB0] [line 534]
!756 = metadata !{i32 786688, metadata !332, metadata !"jcolB", metadata !5, i32 535, metadata !14, i32 0, metadata !743} ; [ DW_TAG_auto_variable ] [jcolB] [line 535]
!757 = metadata !{i32 551, i32 0, metadata !758, metadata !743}
!758 = metadata !{i32 786443, metadata !1, metadata !332, i32 551, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!759 = metadata !{i32 786688, metadata !332, metadata !"ncolB", metadata !5, i32 536, metadata !14, i32 0, metadata !743} ; [ DW_TAG_auto_variable ] [ncolB] [line 536]
!760 = metadata !{i32 786688, metadata !332, metadata !"nrowB", metadata !5, i32 536, metadata !14, i32 0, metadata !743} ; [ DW_TAG_auto_variable ] [nrowB] [line 536]
!761 = metadata !{i32 552, i32 0, metadata !762, metadata !743}
!762 = metadata !{i32 786443, metadata !1, metadata !758, i32 551, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!763 = metadata !{i32 553, i32 0, metadata !762, metadata !743}
!764 = metadata !{i32 786688, metadata !332, metadata !"nrowA", metadata !5, i32 536, metadata !14, i32 0, metadata !743} ; [ DW_TAG_auto_variable ] [nrowA] [line 536]
!765 = metadata !{i32 558, i32 0, metadata !766, metadata !743}
!766 = metadata !{i32 786443, metadata !1, metadata !762, i32 558, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!767 = metadata !{i32 786688, metadata !332, metadata !"nentA", metadata !5, i32 536, metadata !14, i32 0, metadata !743} ; [ DW_TAG_auto_variable ] [nentA] [line 536]
!768 = metadata !{i32 786688, metadata !332, metadata !"sizesA", metadata !5, i32 537, metadata !78, i32 0, metadata !743} ; [ DW_TAG_auto_variable ] [sizesA] [line 537]
!769 = metadata !{i32 561, i32 0, metadata !770, metadata !743}
!770 = metadata !{i32 786443, metadata !1, metadata !766, i32 560, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!771 = metadata !{i32 786688, metadata !332, metadata !"entriesA", metadata !5, i32 534, metadata !22, i32 0, metadata !743} ; [ DW_TAG_auto_variable ] [entriesA] [line 534]
!772 = metadata !{i32 567, i32 0, metadata !773, metadata !743}
!773 = metadata !{i32 786443, metadata !1, metadata !774, i32 566, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!774 = metadata !{i32 786443, metadata !1, metadata !775, i32 566, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!775 = metadata !{i32 786443, metadata !1, metadata !770, i32 561, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!776 = metadata !{i32 786688, metadata !332, metadata !"indicesA", metadata !5, i32 537, metadata !78, i32 0, metadata !743} ; [ DW_TAG_auto_variable ] [indicesA] [line 537]
!777 = metadata !{i32 568, i32 0, metadata !773, metadata !743}
!778 = metadata !{i32 575, i32 0, metadata !762, metadata !743}
!779 = metadata !{i32 786688, metadata !332, metadata !"colstart", metadata !5, i32 535, metadata !14, i32 0, metadata !743} ; [ DW_TAG_auto_variable ] [colstart] [line 535]
!780 = metadata !{i32 786688, metadata !332, metadata !"size", metadata !5, i32 536, metadata !14, i32 0, metadata !743} ; [ DW_TAG_auto_variable ] [size] [line 536]
!781 = metadata !{i32 562, i32 0, metadata !775, metadata !743}
!782 = metadata !{i32 563, i32 0, metadata !775, metadata !743}
!783 = metadata !{i32 786688, metadata !332, metadata !"Bi0", metadata !5, i32 533, metadata !23, i32 0, metadata !743} ; [ DW_TAG_auto_variable ] [Bi0] [line 533]
!784 = metadata !{i32 564, i32 0, metadata !775, metadata !743}
!785 = metadata !{i32 786688, metadata !332, metadata !"Bi1", metadata !5, i32 533, metadata !23, i32 0, metadata !743} ; [ DW_TAG_auto_variable ] [Bi1] [line 533]
!786 = metadata !{i32 565, i32 0, metadata !775, metadata !743}
!787 = metadata !{i32 786688, metadata !332, metadata !"Bi2", metadata !5, i32 533, metadata !23, i32 0, metadata !743} ; [ DW_TAG_auto_variable ] [Bi2] [line 533]
!788 = metadata !{i32 786688, metadata !332, metadata !"ii", metadata !5, i32 535, metadata !14, i32 0, metadata !743} ; [ DW_TAG_auto_variable ] [ii] [line 535]
!789 = metadata !{i32 566, i32 0, metadata !774, metadata !743}
!790 = metadata !{i32 786688, metadata !332, metadata !"kk", metadata !5, i32 536, metadata !14, i32 0, metadata !743} ; [ DW_TAG_auto_variable ] [kk] [line 536]
!791 = metadata !{i32 786688, metadata !332, metadata !"Aji", metadata !5, i32 533, metadata !23, i32 0, metadata !743} ; [ DW_TAG_auto_variable ] [Aji] [line 533]
!792 = metadata !{i32 786688, metadata !332, metadata !"jj", metadata !5, i32 536, metadata !14, i32 0, metadata !743} ; [ DW_TAG_auto_variable ] [jj] [line 536]
!793 = metadata !{i32 569, i32 0, metadata !773, metadata !743}
!794 = metadata !{i32 570, i32 0, metadata !773, metadata !743}
!795 = metadata !{i32 571, i32 0, metadata !773, metadata !743}
!796 = metadata !{i32 577, i32 0, metadata !332, metadata !743}
!797 = metadata !{i32 578, i32 0, metadata !798, metadata !743}
!798 = metadata !{i32 786443, metadata !1, metadata !332, i32 577, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!799 = metadata !{i32 583, i32 0, metadata !800, metadata !743}
!800 = metadata !{i32 786443, metadata !1, metadata !798, i32 583, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!801 = metadata !{i32 586, i32 0, metadata !802, metadata !743}
!802 = metadata !{i32 786443, metadata !1, metadata !800, i32 585, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!803 = metadata !{i32 591, i32 0, metadata !804, metadata !743}
!804 = metadata !{i32 786443, metadata !1, metadata !805, i32 590, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!805 = metadata !{i32 786443, metadata !1, metadata !806, i32 590, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!806 = metadata !{i32 786443, metadata !1, metadata !802, i32 586, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!807 = metadata !{i32 592, i32 0, metadata !804, metadata !743}
!808 = metadata !{i32 587, i32 0, metadata !806, metadata !743}
!809 = metadata !{i32 588, i32 0, metadata !806, metadata !743}
!810 = metadata !{i32 589, i32 0, metadata !806, metadata !743}
!811 = metadata !{i32 590, i32 0, metadata !805, metadata !743}
!812 = metadata !{i32 593, i32 0, metadata !804, metadata !743}
!813 = metadata !{i32 594, i32 0, metadata !804, metadata !743}
!814 = metadata !{i32 598, i32 0, metadata !332, metadata !743}
!815 = metadata !{i32 603, i32 0, metadata !816, metadata !743}
!816 = metadata !{i32 786443, metadata !1, metadata !817, i32 603, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!817 = metadata !{i32 786443, metadata !1, metadata !332, i32 598, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!818 = metadata !{i32 606, i32 0, metadata !819, metadata !743}
!819 = metadata !{i32 786443, metadata !1, metadata !816, i32 605, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!820 = metadata !{i32 610, i32 0, metadata !821, metadata !743}
!821 = metadata !{i32 786443, metadata !1, metadata !822, i32 609, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!822 = metadata !{i32 786443, metadata !1, metadata !823, i32 609, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!823 = metadata !{i32 786443, metadata !1, metadata !819, i32 606, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!824 = metadata !{i32 611, i32 0, metadata !821, metadata !743}
!825 = metadata !{i32 607, i32 0, metadata !823, metadata !743}
!826 = metadata !{i32 608, i32 0, metadata !823, metadata !743}
!827 = metadata !{i32 609, i32 0, metadata !822, metadata !743}
!828 = metadata !{i32 612, i32 0, metadata !821, metadata !743}
!829 = metadata !{i32 632, i32 0, metadata !315, metadata !830}
!830 = metadata !{i32 96, i32 0, metadata !465, null}
!831 = metadata !{i32 786689, metadata !315, metadata !"mtxA", metadata !5, i32 16777848, metadata !8, i32 0, metadata !830} ; [ DW_TAG_arg_variable ] [mtxA] [line 632]
!832 = metadata !{i32 786689, metadata !315, metadata !"mtxB", metadata !5, i32 33555065, metadata !8, i32 0, metadata !830} ; [ DW_TAG_arg_variable ] [mtxB] [line 633]
!833 = metadata !{i32 633, i32 0, metadata !315, metadata !830}
!834 = metadata !{i32 636, i32 0, metadata !315, metadata !830}
!835 = metadata !{i32 637, i32 0, metadata !315, metadata !830}
!836 = metadata !{i32 643, i32 0, metadata !315, metadata !830}
!837 = metadata !{i32 644, i32 0, metadata !315, metadata !830}
!838 = metadata !{i32 786688, metadata !315, metadata !"entriesB", metadata !5, i32 636, metadata !22, i32 0, metadata !830} ; [ DW_TAG_auto_variable ] [entriesB] [line 636]
!839 = metadata !{i32 645, i32 0, metadata !315, metadata !830}
!840 = metadata !{i32 786688, metadata !315, metadata !"colB0", metadata !5, i32 636, metadata !22, i32 0, metadata !830} ; [ DW_TAG_auto_variable ] [colB0] [line 636]
!841 = metadata !{i32 786688, metadata !315, metadata !"jcolB", metadata !5, i32 637, metadata !14, i32 0, metadata !830} ; [ DW_TAG_auto_variable ] [jcolB] [line 637]
!842 = metadata !{i32 646, i32 0, metadata !843, metadata !830}
!843 = metadata !{i32 786443, metadata !1, metadata !315, i32 646, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!844 = metadata !{i32 786688, metadata !315, metadata !"ncolB", metadata !5, i32 637, metadata !14, i32 0, metadata !830} ; [ DW_TAG_auto_variable ] [ncolB] [line 637]
!845 = metadata !{i32 786688, metadata !315, metadata !"nrowB", metadata !5, i32 637, metadata !14, i32 0, metadata !830} ; [ DW_TAG_auto_variable ] [nrowB] [line 637]
!846 = metadata !{i32 647, i32 0, metadata !847, metadata !830}
!847 = metadata !{i32 786443, metadata !1, metadata !843, i32 646, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!848 = metadata !{i32 648, i32 0, metadata !847, metadata !830}
!849 = metadata !{i32 786688, metadata !315, metadata !"nrowA", metadata !5, i32 637, metadata !14, i32 0, metadata !830} ; [ DW_TAG_auto_variable ] [nrowA] [line 637]
!850 = metadata !{i32 649, i32 0, metadata !851, metadata !830}
!851 = metadata !{i32 786443, metadata !1, metadata !847, i32 649, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!852 = metadata !{i32 655, i32 0, metadata !847, metadata !830}
!853 = metadata !{i32 786688, metadata !315, metadata !"entriesA", metadata !5, i32 636, metadata !22, i32 0, metadata !830} ; [ DW_TAG_auto_variable ] [entriesA] [line 636]
!854 = metadata !{i32 650, i32 0, metadata !855, metadata !830}
!855 = metadata !{i32 786443, metadata !1, metadata !851, i32 649, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!856 = metadata !{i32 786688, metadata !315, metadata !"irowA", metadata !5, i32 637, metadata !14, i32 0, metadata !830} ; [ DW_TAG_auto_variable ] [irowA] [line 637]
!857 = metadata !{i32 786688, metadata !315, metadata !"Aii", metadata !5, i32 635, metadata !23, i32 0, metadata !830} ; [ DW_TAG_auto_variable ] [Aii] [line 635]
!858 = metadata !{i32 651, i32 0, metadata !855, metadata !830}
!859 = metadata !{i32 652, i32 0, metadata !855, metadata !830}
!860 = metadata !{i32 653, i32 0, metadata !855, metadata !830}
!861 = metadata !{i32 657, i32 0, metadata !315, metadata !830}
!862 = metadata !{i32 658, i32 0, metadata !863, metadata !830}
!863 = metadata !{i32 786443, metadata !1, metadata !315, i32 657, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!864 = metadata !{i32 659, i32 0, metadata !865, metadata !830}
!865 = metadata !{i32 786443, metadata !1, metadata !863, i32 659, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!866 = metadata !{i32 660, i32 0, metadata !867, metadata !830}
!867 = metadata !{i32 786443, metadata !1, metadata !865, i32 659, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!868 = metadata !{i32 661, i32 0, metadata !867, metadata !830}
!869 = metadata !{i32 662, i32 0, metadata !867, metadata !830}
!870 = metadata !{i32 664, i32 0, metadata !315, metadata !830}
!871 = metadata !{i32 665, i32 0, metadata !872, metadata !830}
!872 = metadata !{i32 786443, metadata !1, metadata !873, i32 665, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!873 = metadata !{i32 786443, metadata !1, metadata !315, i32 664, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!874 = metadata !{i32 666, i32 0, metadata !875, metadata !830}
!875 = metadata !{i32 786443, metadata !1, metadata !872, i32 665, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!876 = metadata !{i32 667, i32 0, metadata !875, metadata !830}
!877 = metadata !{i32 685, i32 0, metadata !287, metadata !878}
!878 = metadata !{i32 99, i32 0, metadata !465, null}
!879 = metadata !{i32 786689, metadata !287, metadata !"mtxA", metadata !5, i32 16777901, metadata !8, i32 0, metadata !878} ; [ DW_TAG_arg_variable ] [mtxA] [line 685]
!880 = metadata !{i32 786689, metadata !287, metadata !"mtxB", metadata !5, i32 33555118, metadata !8, i32 0, metadata !878} ; [ DW_TAG_arg_variable ] [mtxB] [line 686]
!881 = metadata !{i32 686, i32 0, metadata !287, metadata !878}
!882 = metadata !{i32 689, i32 0, metadata !287, metadata !878}
!883 = metadata !{i32 690, i32 0, metadata !287, metadata !878}
!884 = metadata !{i32 691, i32 0, metadata !287, metadata !878}
!885 = metadata !{i32 692, i32 0, metadata !287, metadata !878}
!886 = metadata !{i32 698, i32 0, metadata !287, metadata !878}
!887 = metadata !{i32 786688, metadata !287, metadata !"kk", metadata !5, i32 690, metadata !14, i32 0, metadata !878} ; [ DW_TAG_auto_variable ] [kk] [line 690]
!888 = metadata !{i32 699, i32 0, metadata !889, metadata !878}
!889 = metadata !{i32 786443, metadata !1, metadata !287, i32 699, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!890 = metadata !{i32 786688, metadata !287, metadata !"ipivot", metadata !5, i32 690, metadata !14, i32 0, metadata !878} ; [ DW_TAG_auto_variable ] [ipivot] [line 690]
!891 = metadata !{i32 786688, metadata !287, metadata !"irowA", metadata !5, i32 690, metadata !14, i32 0, metadata !878} ; [ DW_TAG_auto_variable ] [irowA] [line 690]
!892 = metadata !{i32 786688, metadata !287, metadata !"nrowA", metadata !5, i32 691, metadata !14, i32 0, metadata !878} ; [ DW_TAG_auto_variable ] [nrowA] [line 691]
!893 = metadata !{i32 786688, metadata !287, metadata !"pivotsizes", metadata !5, i32 692, metadata !78, i32 0, metadata !878} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 692]
!894 = metadata !{i32 700, i32 0, metadata !895, metadata !878}
!895 = metadata !{i32 786443, metadata !1, metadata !889, i32 699, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!896 = metadata !{i32 786688, metadata !287, metadata !"m", metadata !5, i32 690, metadata !14, i32 0, metadata !878} ; [ DW_TAG_auto_variable ] [m] [line 690]
!897 = metadata !{i32 701, i32 0, metadata !895, metadata !878}
!898 = metadata !{i32 702, i32 0, metadata !899, metadata !878}
!899 = metadata !{i32 786443, metadata !1, metadata !895, i32 701, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!900 = metadata !{i32 706, i32 0, metadata !899, metadata !878}
!901 = metadata !{i32 708, i32 0, metadata !895, metadata !878}
!902 = metadata !{i32 710, i32 0, metadata !287, metadata !878}
!903 = metadata !{i32 786688, metadata !287, metadata !"entriesB", metadata !5, i32 689, metadata !22, i32 0, metadata !878} ; [ DW_TAG_auto_variable ] [entriesB] [line 689]
!904 = metadata !{i32 711, i32 0, metadata !287, metadata !878}
!905 = metadata !{i32 786688, metadata !287, metadata !"colB0", metadata !5, i32 689, metadata !22, i32 0, metadata !878} ; [ DW_TAG_auto_variable ] [colB0] [line 689]
!906 = metadata !{i32 786688, metadata !287, metadata !"jcolB", metadata !5, i32 690, metadata !14, i32 0, metadata !878} ; [ DW_TAG_auto_variable ] [jcolB] [line 690]
!907 = metadata !{i32 712, i32 0, metadata !908, metadata !878}
!908 = metadata !{i32 786443, metadata !1, metadata !287, i32 712, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!909 = metadata !{i32 786688, metadata !287, metadata !"ncolB", metadata !5, i32 691, metadata !14, i32 0, metadata !878} ; [ DW_TAG_auto_variable ] [ncolB] [line 691]
!910 = metadata !{i32 786688, metadata !287, metadata !"nrowB", metadata !5, i32 691, metadata !14, i32 0, metadata !878} ; [ DW_TAG_auto_variable ] [nrowB] [line 691]
!911 = metadata !{i32 713, i32 0, metadata !912, metadata !878}
!912 = metadata !{i32 786443, metadata !1, metadata !908, i32 712, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!913 = metadata !{i32 714, i32 0, metadata !912, metadata !878}
!914 = metadata !{i32 715, i32 0, metadata !915, metadata !878}
!915 = metadata !{i32 786443, metadata !1, metadata !912, i32 715, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!916 = metadata !{i32 742, i32 0, metadata !912, metadata !878}
!917 = metadata !{i32 716, i32 0, metadata !918, metadata !878}
!918 = metadata !{i32 786443, metadata !1, metadata !915, i32 715, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!919 = metadata !{i32 786688, metadata !287, metadata !"entriesA", metadata !5, i32 689, metadata !22, i32 0, metadata !878} ; [ DW_TAG_auto_variable ] [entriesA] [line 689]
!920 = metadata !{i32 718, i32 0, metadata !921, metadata !878}
!921 = metadata !{i32 786443, metadata !1, metadata !918, i32 717, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!922 = metadata !{i32 723, i32 0, metadata !923, metadata !878}
!923 = metadata !{i32 786443, metadata !1, metadata !918, i32 722, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!924 = metadata !{i32 717, i32 0, metadata !918, metadata !878}
!925 = metadata !{i32 786688, metadata !287, metadata !"Aii", metadata !5, i32 688, metadata !23, i32 0, metadata !878} ; [ DW_TAG_auto_variable ] [Aii] [line 688]
!926 = metadata !{i32 719, i32 0, metadata !921, metadata !878}
!927 = metadata !{i32 720, i32 0, metadata !921, metadata !878}
!928 = metadata !{i32 721, i32 0, metadata !921, metadata !878}
!929 = metadata !{i32 722, i32 0, metadata !921, metadata !878}
!930 = metadata !{i32 786688, metadata !287, metadata !"Arr", metadata !5, i32 688, metadata !23, i32 0, metadata !878} ; [ DW_TAG_auto_variable ] [Arr] [line 688]
!931 = metadata !{i32 724, i32 0, metadata !923, metadata !878}
!932 = metadata !{i32 786688, metadata !287, metadata !"Ars", metadata !5, i32 688, metadata !23, i32 0, metadata !878} ; [ DW_TAG_auto_variable ] [Ars] [line 688]
!933 = metadata !{i32 725, i32 0, metadata !923, metadata !878}
!934 = metadata !{i32 786688, metadata !287, metadata !"Ass", metadata !5, i32 688, metadata !23, i32 0, metadata !878} ; [ DW_TAG_auto_variable ] [Ass] [line 688]
!935 = metadata !{i32 726, i32 0, metadata !923, metadata !878}
!936 = metadata !{i32 786688, metadata !287, metadata !"recip", metadata !5, i32 688, metadata !23, i32 0, metadata !878} ; [ DW_TAG_auto_variable ] [recip] [line 688]
!937 = metadata !{i32 727, i32 0, metadata !923, metadata !878}
!938 = metadata !{i32 786688, metadata !287, metadata !"t1", metadata !5, i32 688, metadata !23, i32 0, metadata !878} ; [ DW_TAG_auto_variable ] [t1] [line 688]
!939 = metadata !{i32 728, i32 0, metadata !923, metadata !878}
!940 = metadata !{i32 786688, metadata !287, metadata !"t2", metadata !5, i32 688, metadata !23, i32 0, metadata !878} ; [ DW_TAG_auto_variable ] [t2] [line 688]
!941 = metadata !{i32 729, i32 0, metadata !923, metadata !878}
!942 = metadata !{i32 730, i32 0, metadata !923, metadata !878}
!943 = metadata !{i32 731, i32 0, metadata !923, metadata !878}
!944 = metadata !{i32 732, i32 0, metadata !923, metadata !878}
!945 = metadata !{i32 733, i32 0, metadata !923, metadata !878}
!946 = metadata !{i32 734, i32 0, metadata !923, metadata !878}
!947 = metadata !{i32 735, i32 0, metadata !923, metadata !878}
!948 = metadata !{i32 736, i32 0, metadata !923, metadata !878}
!949 = metadata !{i32 737, i32 0, metadata !923, metadata !878}
!950 = metadata !{i32 738, i32 0, metadata !923, metadata !878}
!951 = metadata !{i32 739, i32 0, metadata !923, metadata !878}
!952 = metadata !{i32 740, i32 0, metadata !918, metadata !878}
!953 = metadata !{i32 744, i32 0, metadata !287, metadata !878}
!954 = metadata !{i32 745, i32 0, metadata !955, metadata !878}
!955 = metadata !{i32 786443, metadata !1, metadata !287, i32 744, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!956 = metadata !{i32 746, i32 0, metadata !957, metadata !878}
!957 = metadata !{i32 786443, metadata !1, metadata !955, i32 746, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!958 = metadata !{i32 747, i32 0, metadata !959, metadata !878}
!959 = metadata !{i32 786443, metadata !1, metadata !957, i32 746, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!960 = metadata !{i32 749, i32 0, metadata !961, metadata !878}
!961 = metadata !{i32 786443, metadata !1, metadata !959, i32 748, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!962 = metadata !{i32 753, i32 0, metadata !963, metadata !878}
!963 = metadata !{i32 786443, metadata !1, metadata !959, i32 752, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!964 = metadata !{i32 748, i32 0, metadata !959, metadata !878}
!965 = metadata !{i32 750, i32 0, metadata !961, metadata !878}
!966 = metadata !{i32 751, i32 0, metadata !961, metadata !878}
!967 = metadata !{i32 752, i32 0, metadata !961, metadata !878}
!968 = metadata !{i32 754, i32 0, metadata !963, metadata !878}
!969 = metadata !{i32 755, i32 0, metadata !963, metadata !878}
!970 = metadata !{i32 756, i32 0, metadata !963, metadata !878}
!971 = metadata !{i32 757, i32 0, metadata !963, metadata !878}
!972 = metadata !{i32 758, i32 0, metadata !963, metadata !878}
!973 = metadata !{i32 759, i32 0, metadata !963, metadata !878}
!974 = metadata !{i32 760, i32 0, metadata !963, metadata !878}
!975 = metadata !{i32 761, i32 0, metadata !963, metadata !878}
!976 = metadata !{i32 762, i32 0, metadata !963, metadata !878}
!977 = metadata !{i32 763, i32 0, metadata !963, metadata !878}
!978 = metadata !{i32 764, i32 0, metadata !963, metadata !878}
!979 = metadata !{i32 765, i32 0, metadata !963, metadata !878}
!980 = metadata !{i32 766, i32 0, metadata !959, metadata !878}
!981 = metadata !{i32 768, i32 0, metadata !287, metadata !878}
!982 = metadata !{i32 769, i32 0, metadata !983, metadata !878}
!983 = metadata !{i32 786443, metadata !1, metadata !984, i32 769, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!984 = metadata !{i32 786443, metadata !1, metadata !287, i32 768, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!985 = metadata !{i32 770, i32 0, metadata !986, metadata !878}
!986 = metadata !{i32 786443, metadata !1, metadata !983, i32 769, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!987 = metadata !{i32 772, i32 0, metadata !988, metadata !878}
!988 = metadata !{i32 786443, metadata !1, metadata !986, i32 771, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!989 = metadata !{i32 775, i32 0, metadata !990, metadata !878}
!990 = metadata !{i32 786443, metadata !1, metadata !986, i32 774, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!991 = metadata !{i32 771, i32 0, metadata !986, metadata !878}
!992 = metadata !{i32 773, i32 0, metadata !988, metadata !878}
!993 = metadata !{i32 774, i32 0, metadata !988, metadata !878}
!994 = metadata !{i32 776, i32 0, metadata !990, metadata !878}
!995 = metadata !{i32 777, i32 0, metadata !990, metadata !878}
!996 = metadata !{i32 778, i32 0, metadata !990, metadata !878}
!997 = metadata !{i32 779, i32 0, metadata !990, metadata !878}
!998 = metadata !{i32 780, i32 0, metadata !990, metadata !878}
!999 = metadata !{i32 781, i32 0, metadata !990, metadata !878}
!1000 = metadata !{i32 782, i32 0, metadata !990, metadata !878}
!1001 = metadata !{i32 783, i32 0, metadata !990, metadata !878}
!1002 = metadata !{i32 784, i32 0, metadata !986, metadata !878}
!1003 = metadata !{i32 105, i32 0, metadata !465, null}
!1004 = metadata !{i32 107, i32 0, metadata !465, null}
!1005 = metadata !{i32 117, i32 0, metadata !462, null}
!1006 = metadata !{i32 802, i32 0, metadata !248, metadata !1007}
!1007 = metadata !{i32 119, i32 0, metadata !1008, null}
!1008 = metadata !{i32 786443, metadata !1, metadata !462, i32 117, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1009 = metadata !{i32 786689, metadata !248, metadata !"mtxA", metadata !5, i32 16778018, metadata !8, i32 0, metadata !1007} ; [ DW_TAG_arg_variable ] [mtxA] [line 802]
!1010 = metadata !{i32 786689, metadata !248, metadata !"mtxB", metadata !5, i32 33555235, metadata !8, i32 0, metadata !1007} ; [ DW_TAG_arg_variable ] [mtxB] [line 803]
!1011 = metadata !{i32 803, i32 0, metadata !248, metadata !1007}
!1012 = metadata !{i32 807, i32 0, metadata !248, metadata !1007}
!1013 = metadata !{i32 808, i32 0, metadata !248, metadata !1007}
!1014 = metadata !{i32 809, i32 0, metadata !248, metadata !1007}
!1015 = metadata !{i32 810, i32 0, metadata !248, metadata !1007}
!1016 = metadata !{i32 816, i32 0, metadata !248, metadata !1007}
!1017 = metadata !{i32 818, i32 0, metadata !248, metadata !1007}
!1018 = metadata !{i32 786688, metadata !248, metadata !"entriesB", metadata !5, i32 807, metadata !22, i32 0, metadata !1007} ; [ DW_TAG_auto_variable ] [entriesB] [line 807]
!1019 = metadata !{i32 823, i32 0, metadata !248, metadata !1007}
!1020 = metadata !{i32 786688, metadata !248, metadata !"colB0", metadata !5, i32 807, metadata !22, i32 0, metadata !1007} ; [ DW_TAG_auto_variable ] [colB0] [line 807]
!1021 = metadata !{i32 786688, metadata !248, metadata !"jcolB", metadata !5, i32 808, metadata !14, i32 0, metadata !1007} ; [ DW_TAG_auto_variable ] [jcolB] [line 808]
!1022 = metadata !{i32 824, i32 0, metadata !1023, metadata !1007}
!1023 = metadata !{i32 786443, metadata !1, metadata !248, i32 824, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1024 = metadata !{i32 786688, metadata !248, metadata !"ncolB", metadata !5, i32 809, metadata !14, i32 0, metadata !1007} ; [ DW_TAG_auto_variable ] [ncolB] [line 809]
!1025 = metadata !{i32 786688, metadata !248, metadata !"nrowB", metadata !5, i32 809, metadata !14, i32 0, metadata !1007} ; [ DW_TAG_auto_variable ] [nrowB] [line 809]
!1026 = metadata !{i32 825, i32 0, metadata !1027, metadata !1007}
!1027 = metadata !{i32 786443, metadata !1, metadata !1023, i32 824, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1028 = metadata !{i32 826, i32 0, metadata !1027, metadata !1007}
!1029 = metadata !{i32 786688, metadata !248, metadata !"nrowA", metadata !5, i32 809, metadata !14, i32 0, metadata !1007} ; [ DW_TAG_auto_variable ] [nrowA] [line 809]
!1030 = metadata !{i32 831, i32 0, metadata !1031, metadata !1007}
!1031 = metadata !{i32 786443, metadata !1, metadata !1027, i32 831, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1032 = metadata !{i32 876, i32 0, metadata !1027, metadata !1007}
!1033 = metadata !{i32 786688, metadata !248, metadata !"sizesA", metadata !5, i32 810, metadata !78, i32 0, metadata !1007} ; [ DW_TAG_auto_variable ] [sizesA] [line 810]
!1034 = metadata !{i32 836, i32 0, metadata !1035, metadata !1007}
!1035 = metadata !{i32 786443, metadata !1, metadata !1031, i32 831, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1036 = metadata !{i32 786688, metadata !248, metadata !"firstlocsA", metadata !5, i32 810, metadata !78, i32 0, metadata !1007} ; [ DW_TAG_auto_variable ] [firstlocsA] [line 810]
!1037 = metadata !{i32 837, i32 0, metadata !1038, metadata !1007}
!1038 = metadata !{i32 786443, metadata !1, metadata !1035, i32 836, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1039 = metadata !{i32 786688, metadata !248, metadata !"entriesA", metadata !5, i32 807, metadata !22, i32 0, metadata !1007} ; [ DW_TAG_auto_variable ] [entriesA] [line 807]
!1040 = metadata !{i32 849, i32 0, metadata !1041, metadata !1007}
!1041 = metadata !{i32 786443, metadata !1, metadata !1042, i32 846, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1042 = metadata !{i32 786443, metadata !1, metadata !1038, i32 846, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1043 = metadata !{i32 786688, metadata !248, metadata !"kk", metadata !5, i32 808, metadata !14, i32 0, metadata !1007} ; [ DW_TAG_auto_variable ] [kk] [line 808]
!1044 = metadata !{i32 786688, metadata !248, metadata !"irowA", metadata !5, i32 808, metadata !14, i32 0, metadata !1007} ; [ DW_TAG_auto_variable ] [irowA] [line 808]
!1045 = metadata !{i32 786688, metadata !248, metadata !"first", metadata !5, i32 808, metadata !14, i32 0, metadata !1007} ; [ DW_TAG_auto_variable ] [first] [line 808]
!1046 = metadata !{i32 838, i32 0, metadata !1038, metadata !1007}
!1047 = metadata !{i32 786688, metadata !248, metadata !"last", metadata !5, i32 808, metadata !14, i32 0, metadata !1007} ; [ DW_TAG_auto_variable ] [last] [line 808]
!1048 = metadata !{i32 786688, metadata !248, metadata !"isum0", metadata !5, i32 806, metadata !23, i32 0, metadata !1007} ; [ DW_TAG_auto_variable ] [isum0] [line 806]
!1049 = metadata !{i32 843, i32 0, metadata !1038, metadata !1007}
!1050 = metadata !{i32 786688, metadata !248, metadata !"rsum0", metadata !5, i32 806, metadata !23, i32 0, metadata !1007} ; [ DW_TAG_auto_variable ] [rsum0] [line 806]
!1051 = metadata !{i32 786688, metadata !248, metadata !"isum1", metadata !5, i32 806, metadata !23, i32 0, metadata !1007} ; [ DW_TAG_auto_variable ] [isum1] [line 806]
!1052 = metadata !{i32 844, i32 0, metadata !1038, metadata !1007}
!1053 = metadata !{i32 786688, metadata !248, metadata !"rsum1", metadata !5, i32 806, metadata !23, i32 0, metadata !1007} ; [ DW_TAG_auto_variable ] [rsum1] [line 806]
!1054 = metadata !{i32 786688, metadata !248, metadata !"isum2", metadata !5, i32 806, metadata !23, i32 0, metadata !1007} ; [ DW_TAG_auto_variable ] [isum2] [line 806]
!1055 = metadata !{i32 845, i32 0, metadata !1038, metadata !1007}
!1056 = metadata !{i32 786688, metadata !248, metadata !"rsum2", metadata !5, i32 806, metadata !23, i32 0, metadata !1007} ; [ DW_TAG_auto_variable ] [rsum2] [line 806]
!1057 = metadata !{i32 786688, metadata !248, metadata !"ii", metadata !5, i32 808, metadata !14, i32 0, metadata !1007} ; [ DW_TAG_auto_variable ] [ii] [line 808]
!1058 = metadata !{i32 846, i32 0, metadata !1042, metadata !1007}
!1059 = metadata !{i32 847, i32 0, metadata !1041, metadata !1007}
!1060 = metadata !{i32 786688, metadata !248, metadata !"rloc", metadata !5, i32 809, metadata !14, i32 0, metadata !1007} ; [ DW_TAG_auto_variable ] [rloc] [line 809]
!1061 = metadata !{i32 848, i32 0, metadata !1041, metadata !1007}
!1062 = metadata !{i32 786688, metadata !248, metadata !"iloc", metadata !5, i32 808, metadata !14, i32 0, metadata !1007} ; [ DW_TAG_auto_variable ] [iloc] [line 808]
!1063 = metadata !{i32 786688, metadata !248, metadata !"ar", metadata !5, i32 805, metadata !23, i32 0, metadata !1007} ; [ DW_TAG_auto_variable ] [ar] [line 805]
!1064 = metadata !{i32 850, i32 0, metadata !1041, metadata !1007}
!1065 = metadata !{i32 786688, metadata !248, metadata !"ai", metadata !5, i32 805, metadata !23, i32 0, metadata !1007} ; [ DW_TAG_auto_variable ] [ai] [line 805]
!1066 = metadata !{i32 856, i32 0, metadata !1041, metadata !1007}
!1067 = metadata !{i32 857, i32 0, metadata !1041, metadata !1007}
!1068 = metadata !{i32 858, i32 0, metadata !1041, metadata !1007}
!1069 = metadata !{i32 786688, metadata !248, metadata !"br0", metadata !5, i32 805, metadata !23, i32 0, metadata !1007} ; [ DW_TAG_auto_variable ] [br0] [line 805]
!1070 = metadata !{i32 786688, metadata !248, metadata !"bi0", metadata !5, i32 805, metadata !23, i32 0, metadata !1007} ; [ DW_TAG_auto_variable ] [bi0] [line 805]
!1071 = metadata !{i32 859, i32 0, metadata !1041, metadata !1007}
!1072 = metadata !{i32 786688, metadata !248, metadata !"br1", metadata !5, i32 805, metadata !23, i32 0, metadata !1007} ; [ DW_TAG_auto_variable ] [br1] [line 805]
!1073 = metadata !{i32 786688, metadata !248, metadata !"bi1", metadata !5, i32 805, metadata !23, i32 0, metadata !1007} ; [ DW_TAG_auto_variable ] [bi1] [line 805]
!1074 = metadata !{i32 860, i32 0, metadata !1041, metadata !1007}
!1075 = metadata !{i32 786688, metadata !248, metadata !"br2", metadata !5, i32 805, metadata !23, i32 0, metadata !1007} ; [ DW_TAG_auto_variable ] [br2] [line 805]
!1076 = metadata !{i32 786688, metadata !248, metadata !"bi2", metadata !5, i32 805, metadata !23, i32 0, metadata !1007} ; [ DW_TAG_auto_variable ] [bi2] [line 805]
!1077 = metadata !{i32 861, i32 0, metadata !1041, metadata !1007}
!1078 = metadata !{i32 862, i32 0, metadata !1041, metadata !1007}
!1079 = metadata !{i32 863, i32 0, metadata !1041, metadata !1007}
!1080 = metadata !{i32 865, i32 0, metadata !1038, metadata !1007}
!1081 = metadata !{i32 866, i32 0, metadata !1038, metadata !1007}
!1082 = metadata !{i32 867, i32 0, metadata !1038, metadata !1007}
!1083 = metadata !{i32 868, i32 0, metadata !1038, metadata !1007}
!1084 = metadata !{i32 869, i32 0, metadata !1038, metadata !1007}
!1085 = metadata !{i32 870, i32 0, metadata !1038, metadata !1007}
!1086 = metadata !{i32 878, i32 0, metadata !248, metadata !1007}
!1087 = metadata !{i32 879, i32 0, metadata !1088, metadata !1007}
!1088 = metadata !{i32 786443, metadata !1, metadata !248, i32 878, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1089 = metadata !{i32 884, i32 0, metadata !1090, metadata !1007}
!1090 = metadata !{i32 786443, metadata !1, metadata !1088, i32 884, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1091 = metadata !{i32 889, i32 0, metadata !1092, metadata !1007}
!1092 = metadata !{i32 786443, metadata !1, metadata !1090, i32 884, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1093 = metadata !{i32 890, i32 0, metadata !1094, metadata !1007}
!1094 = metadata !{i32 786443, metadata !1, metadata !1092, i32 889, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1095 = metadata !{i32 901, i32 0, metadata !1096, metadata !1007}
!1096 = metadata !{i32 786443, metadata !1, metadata !1097, i32 898, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1097 = metadata !{i32 786443, metadata !1, metadata !1094, i32 898, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1098 = metadata !{i32 891, i32 0, metadata !1094, metadata !1007}
!1099 = metadata !{i32 896, i32 0, metadata !1094, metadata !1007}
!1100 = metadata !{i32 897, i32 0, metadata !1094, metadata !1007}
!1101 = metadata !{i32 898, i32 0, metadata !1097, metadata !1007}
!1102 = metadata !{i32 899, i32 0, metadata !1096, metadata !1007}
!1103 = metadata !{i32 900, i32 0, metadata !1096, metadata !1007}
!1104 = metadata !{i32 902, i32 0, metadata !1096, metadata !1007}
!1105 = metadata !{i32 908, i32 0, metadata !1096, metadata !1007}
!1106 = metadata !{i32 909, i32 0, metadata !1096, metadata !1007}
!1107 = metadata !{i32 910, i32 0, metadata !1096, metadata !1007}
!1108 = metadata !{i32 911, i32 0, metadata !1096, metadata !1007}
!1109 = metadata !{i32 912, i32 0, metadata !1096, metadata !1007}
!1110 = metadata !{i32 913, i32 0, metadata !1096, metadata !1007}
!1111 = metadata !{i32 915, i32 0, metadata !1094, metadata !1007}
!1112 = metadata !{i32 916, i32 0, metadata !1094, metadata !1007}
!1113 = metadata !{i32 917, i32 0, metadata !1094, metadata !1007}
!1114 = metadata !{i32 918, i32 0, metadata !1094, metadata !1007}
!1115 = metadata !{i32 919, i32 0, metadata !1094, metadata !1007}
!1116 = metadata !{i32 925, i32 0, metadata !248, metadata !1007}
!1117 = metadata !{i32 930, i32 0, metadata !1118, metadata !1007}
!1118 = metadata !{i32 786443, metadata !1, metadata !1119, i32 930, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1119 = metadata !{i32 786443, metadata !1, metadata !248, i32 925, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1120 = metadata !{i32 935, i32 0, metadata !1121, metadata !1007}
!1121 = metadata !{i32 786443, metadata !1, metadata !1118, i32 930, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1122 = metadata !{i32 936, i32 0, metadata !1123, metadata !1007}
!1123 = metadata !{i32 786443, metadata !1, metadata !1121, i32 935, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1124 = metadata !{i32 946, i32 0, metadata !1125, metadata !1007}
!1125 = metadata !{i32 786443, metadata !1, metadata !1126, i32 943, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1126 = metadata !{i32 786443, metadata !1, metadata !1123, i32 943, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1127 = metadata !{i32 937, i32 0, metadata !1123, metadata !1007}
!1128 = metadata !{i32 942, i32 0, metadata !1123, metadata !1007}
!1129 = metadata !{i32 943, i32 0, metadata !1126, metadata !1007}
!1130 = metadata !{i32 944, i32 0, metadata !1125, metadata !1007}
!1131 = metadata !{i32 945, i32 0, metadata !1125, metadata !1007}
!1132 = metadata !{i32 947, i32 0, metadata !1125, metadata !1007}
!1133 = metadata !{i32 953, i32 0, metadata !1125, metadata !1007}
!1134 = metadata !{i32 954, i32 0, metadata !1125, metadata !1007}
!1135 = metadata !{i32 955, i32 0, metadata !1125, metadata !1007}
!1136 = metadata !{i32 956, i32 0, metadata !1125, metadata !1007}
!1137 = metadata !{i32 958, i32 0, metadata !1123, metadata !1007}
!1138 = metadata !{i32 959, i32 0, metadata !1123, metadata !1007}
!1139 = metadata !{i32 960, i32 0, metadata !1123, metadata !1007}
!1140 = metadata !{i32 961, i32 0, metadata !1123, metadata !1007}
!1141 = metadata !{i32 983, i32 0, metadata !209, metadata !1142}
!1142 = metadata !{i32 122, i32 0, metadata !1008, null}
!1143 = metadata !{i32 786689, metadata !209, metadata !"mtxA", metadata !5, i32 16778199, metadata !8, i32 0, metadata !1142} ; [ DW_TAG_arg_variable ] [mtxA] [line 983]
!1144 = metadata !{i32 786689, metadata !209, metadata !"mtxB", metadata !5, i32 33555416, metadata !8, i32 0, metadata !1142} ; [ DW_TAG_arg_variable ] [mtxB] [line 984]
!1145 = metadata !{i32 984, i32 0, metadata !209, metadata !1142}
!1146 = metadata !{i32 988, i32 0, metadata !209, metadata !1142}
!1147 = metadata !{i32 989, i32 0, metadata !209, metadata !1142}
!1148 = metadata !{i32 990, i32 0, metadata !209, metadata !1142}
!1149 = metadata !{i32 991, i32 0, metadata !209, metadata !1142}
!1150 = metadata !{i32 997, i32 0, metadata !209, metadata !1142}
!1151 = metadata !{i32 999, i32 0, metadata !209, metadata !1142}
!1152 = metadata !{i32 786688, metadata !209, metadata !"entriesB", metadata !5, i32 988, metadata !22, i32 0, metadata !1142} ; [ DW_TAG_auto_variable ] [entriesB] [line 988]
!1153 = metadata !{i32 1000, i32 0, metadata !209, metadata !1142}
!1154 = metadata !{i32 786688, metadata !209, metadata !"colB0", metadata !5, i32 988, metadata !22, i32 0, metadata !1142} ; [ DW_TAG_auto_variable ] [colB0] [line 988]
!1155 = metadata !{i32 786688, metadata !209, metadata !"jcolB", metadata !5, i32 989, metadata !14, i32 0, metadata !1142} ; [ DW_TAG_auto_variable ] [jcolB] [line 989]
!1156 = metadata !{i32 1001, i32 0, metadata !1157, metadata !1142}
!1157 = metadata !{i32 786443, metadata !1, metadata !209, i32 1001, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1158 = metadata !{i32 786688, metadata !209, metadata !"ncolB", metadata !5, i32 990, metadata !14, i32 0, metadata !1142} ; [ DW_TAG_auto_variable ] [ncolB] [line 990]
!1159 = metadata !{i32 786688, metadata !209, metadata !"nrowB", metadata !5, i32 990, metadata !14, i32 0, metadata !1142} ; [ DW_TAG_auto_variable ] [nrowB] [line 990]
!1160 = metadata !{i32 1002, i32 0, metadata !1161, metadata !1142}
!1161 = metadata !{i32 786443, metadata !1, metadata !1157, i32 1001, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1162 = metadata !{i32 1003, i32 0, metadata !1161, metadata !1142}
!1163 = metadata !{i32 786688, metadata !209, metadata !"nrowA", metadata !5, i32 990, metadata !14, i32 0, metadata !1142} ; [ DW_TAG_auto_variable ] [nrowA] [line 990]
!1164 = metadata !{i32 1008, i32 0, metadata !1165, metadata !1142}
!1165 = metadata !{i32 786443, metadata !1, metadata !1161, i32 1008, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1166 = metadata !{i32 1041, i32 0, metadata !1161, metadata !1142}
!1167 = metadata !{i32 786688, metadata !209, metadata !"sizesA", metadata !5, i32 991, metadata !78, i32 0, metadata !1142} ; [ DW_TAG_auto_variable ] [sizesA] [line 991]
!1168 = metadata !{i32 1009, i32 0, metadata !1169, metadata !1142}
!1169 = metadata !{i32 786443, metadata !1, metadata !1165, i32 1008, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1170 = metadata !{i32 786688, metadata !209, metadata !"entriesA", metadata !5, i32 988, metadata !22, i32 0, metadata !1142} ; [ DW_TAG_auto_variable ] [entriesA] [line 988]
!1171 = metadata !{i32 1016, i32 0, metadata !1172, metadata !1142}
!1172 = metadata !{i32 786443, metadata !1, metadata !1173, i32 1013, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1173 = metadata !{i32 786443, metadata !1, metadata !1174, i32 1013, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1174 = metadata !{i32 786443, metadata !1, metadata !1169, i32 1009, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1175 = metadata !{i32 786688, metadata !209, metadata !"indicesA", metadata !5, i32 991, metadata !78, i32 0, metadata !1142} ; [ DW_TAG_auto_variable ] [indicesA] [line 991]
!1176 = metadata !{i32 1018, i32 0, metadata !1172, metadata !1142}
!1177 = metadata !{i32 786688, metadata !209, metadata !"kk", metadata !5, i32 989, metadata !14, i32 0, metadata !1142} ; [ DW_TAG_auto_variable ] [kk] [line 989]
!1178 = metadata !{i32 786688, metadata !209, metadata !"irowA", metadata !5, i32 989, metadata !14, i32 0, metadata !1142} ; [ DW_TAG_auto_variable ] [irowA] [line 989]
!1179 = metadata !{i32 786688, metadata !209, metadata !"size", metadata !5, i32 990, metadata !14, i32 0, metadata !1142} ; [ DW_TAG_auto_variable ] [size] [line 990]
!1180 = metadata !{i32 1019, i32 0, metadata !1172, metadata !1142}
!1181 = metadata !{i32 1013, i32 0, metadata !1173, metadata !1142}
!1182 = metadata !{i32 1014, i32 0, metadata !1172, metadata !1142}
!1183 = metadata !{i32 786688, metadata !209, metadata !"rloc", metadata !5, i32 990, metadata !14, i32 0, metadata !1142} ; [ DW_TAG_auto_variable ] [rloc] [line 990]
!1184 = metadata !{i32 1015, i32 0, metadata !1172, metadata !1142}
!1185 = metadata !{i32 786688, metadata !209, metadata !"iloc", metadata !5, i32 989, metadata !14, i32 0, metadata !1142} ; [ DW_TAG_auto_variable ] [iloc] [line 989]
!1186 = metadata !{i32 786688, metadata !209, metadata !"ar", metadata !5, i32 986, metadata !23, i32 0, metadata !1142} ; [ DW_TAG_auto_variable ] [ar] [line 986]
!1187 = metadata !{i32 1017, i32 0, metadata !1172, metadata !1142}
!1188 = metadata !{i32 786688, metadata !209, metadata !"ai", metadata !5, i32 986, metadata !23, i32 0, metadata !1142} ; [ DW_TAG_auto_variable ] [ai] [line 986]
!1189 = metadata !{i32 786688, metadata !209, metadata !"jj", metadata !5, i32 989, metadata !14, i32 0, metadata !1142} ; [ DW_TAG_auto_variable ] [jj] [line 989]
!1190 = metadata !{i32 1020, i32 0, metadata !1191, metadata !1142}
!1191 = metadata !{i32 786443, metadata !1, metadata !1172, i32 1019, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1192 = metadata !{i32 1023, i32 0, metadata !1191, metadata !1142}
!1193 = metadata !{i32 1025, i32 0, metadata !1172, metadata !1142}
!1194 = metadata !{i32 1026, i32 0, metadata !1172, metadata !1142}
!1195 = metadata !{i32 1027, i32 0, metadata !1172, metadata !1142}
!1196 = metadata !{i32 786688, metadata !209, metadata !"br0", metadata !5, i32 986, metadata !23, i32 0, metadata !1142} ; [ DW_TAG_auto_variable ] [br0] [line 986]
!1197 = metadata !{i32 786688, metadata !209, metadata !"bi0", metadata !5, i32 986, metadata !23, i32 0, metadata !1142} ; [ DW_TAG_auto_variable ] [bi0] [line 986]
!1198 = metadata !{i32 1028, i32 0, metadata !1172, metadata !1142}
!1199 = metadata !{i32 786688, metadata !209, metadata !"br1", metadata !5, i32 986, metadata !23, i32 0, metadata !1142} ; [ DW_TAG_auto_variable ] [br1] [line 986]
!1200 = metadata !{i32 786688, metadata !209, metadata !"bi1", metadata !5, i32 986, metadata !23, i32 0, metadata !1142} ; [ DW_TAG_auto_variable ] [bi1] [line 986]
!1201 = metadata !{i32 1029, i32 0, metadata !1172, metadata !1142}
!1202 = metadata !{i32 786688, metadata !209, metadata !"br2", metadata !5, i32 986, metadata !23, i32 0, metadata !1142} ; [ DW_TAG_auto_variable ] [br2] [line 986]
!1203 = metadata !{i32 786688, metadata !209, metadata !"bi2", metadata !5, i32 986, metadata !23, i32 0, metadata !1142} ; [ DW_TAG_auto_variable ] [bi2] [line 986]
!1204 = metadata !{i32 1030, i32 0, metadata !1172, metadata !1142}
!1205 = metadata !{i32 786688, metadata !209, metadata !"rsum0", metadata !5, i32 987, metadata !23, i32 0, metadata !1142} ; [ DW_TAG_auto_variable ] [rsum0] [line 987]
!1206 = metadata !{i32 786688, metadata !209, metadata !"isum0", metadata !5, i32 987, metadata !23, i32 0, metadata !1142} ; [ DW_TAG_auto_variable ] [isum0] [line 987]
!1207 = metadata !{i32 1031, i32 0, metadata !1172, metadata !1142}
!1208 = metadata !{i32 786688, metadata !209, metadata !"rsum1", metadata !5, i32 987, metadata !23, i32 0, metadata !1142} ; [ DW_TAG_auto_variable ] [rsum1] [line 987]
!1209 = metadata !{i32 786688, metadata !209, metadata !"isum1", metadata !5, i32 987, metadata !23, i32 0, metadata !1142} ; [ DW_TAG_auto_variable ] [isum1] [line 987]
!1210 = metadata !{i32 1032, i32 0, metadata !1172, metadata !1142}
!1211 = metadata !{i32 786688, metadata !209, metadata !"rsum2", metadata !5, i32 987, metadata !23, i32 0, metadata !1142} ; [ DW_TAG_auto_variable ] [rsum2] [line 987]
!1212 = metadata !{i32 786688, metadata !209, metadata !"isum2", metadata !5, i32 987, metadata !23, i32 0, metadata !1142} ; [ DW_TAG_auto_variable ] [isum2] [line 987]
!1213 = metadata !{i32 786688, metadata !209, metadata !"ii", metadata !5, i32 989, metadata !14, i32 0, metadata !1142} ; [ DW_TAG_auto_variable ] [ii] [line 989]
!1214 = metadata !{i32 1034, i32 0, metadata !1174, metadata !1142}
!1215 = metadata !{i32 1035, i32 0, metadata !1174, metadata !1142}
!1216 = metadata !{i32 1036, i32 0, metadata !1174, metadata !1142}
!1217 = metadata !{i32 1037, i32 0, metadata !1174, metadata !1142}
!1218 = metadata !{i32 1038, i32 0, metadata !1174, metadata !1142}
!1219 = metadata !{i32 1039, i32 0, metadata !1174, metadata !1142}
!1220 = metadata !{i32 1043, i32 0, metadata !209, metadata !1142}
!1221 = metadata !{i32 1044, i32 0, metadata !1222, metadata !1142}
!1222 = metadata !{i32 786443, metadata !1, metadata !209, i32 1043, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1223 = metadata !{i32 1049, i32 0, metadata !1224, metadata !1142}
!1224 = metadata !{i32 786443, metadata !1, metadata !1222, i32 1049, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1225 = metadata !{i32 1050, i32 0, metadata !1226, metadata !1142}
!1226 = metadata !{i32 786443, metadata !1, metadata !1224, i32 1049, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1227 = metadata !{i32 1056, i32 0, metadata !1228, metadata !1142}
!1228 = metadata !{i32 786443, metadata !1, metadata !1229, i32 1053, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1229 = metadata !{i32 786443, metadata !1, metadata !1230, i32 1053, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1230 = metadata !{i32 786443, metadata !1, metadata !1226, i32 1050, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1231 = metadata !{i32 1058, i32 0, metadata !1228, metadata !1142}
!1232 = metadata !{i32 1059, i32 0, metadata !1228, metadata !1142}
!1233 = metadata !{i32 1053, i32 0, metadata !1229, metadata !1142}
!1234 = metadata !{i32 1054, i32 0, metadata !1228, metadata !1142}
!1235 = metadata !{i32 1055, i32 0, metadata !1228, metadata !1142}
!1236 = metadata !{i32 1057, i32 0, metadata !1228, metadata !1142}
!1237 = metadata !{i32 1060, i32 0, metadata !1238, metadata !1142}
!1238 = metadata !{i32 786443, metadata !1, metadata !1228, i32 1059, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1239 = metadata !{i32 1063, i32 0, metadata !1238, metadata !1142}
!1240 = metadata !{i32 1065, i32 0, metadata !1228, metadata !1142}
!1241 = metadata !{i32 1066, i32 0, metadata !1228, metadata !1142}
!1242 = metadata !{i32 1067, i32 0, metadata !1228, metadata !1142}
!1243 = metadata !{i32 1068, i32 0, metadata !1228, metadata !1142}
!1244 = metadata !{i32 1069, i32 0, metadata !1228, metadata !1142}
!1245 = metadata !{i32 1070, i32 0, metadata !1228, metadata !1142}
!1246 = metadata !{i32 1072, i32 0, metadata !1230, metadata !1142}
!1247 = metadata !{i32 1073, i32 0, metadata !1230, metadata !1142}
!1248 = metadata !{i32 1074, i32 0, metadata !1230, metadata !1142}
!1249 = metadata !{i32 1075, i32 0, metadata !1230, metadata !1142}
!1250 = metadata !{i32 1076, i32 0, metadata !1230, metadata !1142}
!1251 = metadata !{i32 1078, i32 0, metadata !209, metadata !1142}
!1252 = metadata !{i32 1083, i32 0, metadata !1253, metadata !1142}
!1253 = metadata !{i32 786443, metadata !1, metadata !1254, i32 1083, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1254 = metadata !{i32 786443, metadata !1, metadata !209, i32 1078, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1255 = metadata !{i32 1084, i32 0, metadata !1256, metadata !1142}
!1256 = metadata !{i32 786443, metadata !1, metadata !1253, i32 1083, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1257 = metadata !{i32 1089, i32 0, metadata !1258, metadata !1142}
!1258 = metadata !{i32 786443, metadata !1, metadata !1259, i32 1086, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1259 = metadata !{i32 786443, metadata !1, metadata !1260, i32 1086, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1260 = metadata !{i32 786443, metadata !1, metadata !1256, i32 1084, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1261 = metadata !{i32 1091, i32 0, metadata !1258, metadata !1142}
!1262 = metadata !{i32 1092, i32 0, metadata !1258, metadata !1142}
!1263 = metadata !{i32 1086, i32 0, metadata !1259, metadata !1142}
!1264 = metadata !{i32 1087, i32 0, metadata !1258, metadata !1142}
!1265 = metadata !{i32 1088, i32 0, metadata !1258, metadata !1142}
!1266 = metadata !{i32 1090, i32 0, metadata !1258, metadata !1142}
!1267 = metadata !{i32 1093, i32 0, metadata !1268, metadata !1142}
!1268 = metadata !{i32 786443, metadata !1, metadata !1258, i32 1092, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1269 = metadata !{i32 1096, i32 0, metadata !1268, metadata !1142}
!1270 = metadata !{i32 1098, i32 0, metadata !1258, metadata !1142}
!1271 = metadata !{i32 1099, i32 0, metadata !1258, metadata !1142}
!1272 = metadata !{i32 1100, i32 0, metadata !1258, metadata !1142}
!1273 = metadata !{i32 1101, i32 0, metadata !1258, metadata !1142}
!1274 = metadata !{i32 1103, i32 0, metadata !1260, metadata !1142}
!1275 = metadata !{i32 1104, i32 0, metadata !1260, metadata !1142}
!1276 = metadata !{i32 1105, i32 0, metadata !1260, metadata !1142}
!1277 = metadata !{i32 1106, i32 0, metadata !1260, metadata !1142}
!1278 = metadata !{i32 1124, i32 0, metadata !175, metadata !1279}
!1279 = metadata !{i32 125, i32 0, metadata !1008, null}
!1280 = metadata !{i32 786689, metadata !175, metadata !"mtxA", metadata !5, i32 16778340, metadata !8, i32 0, metadata !1279} ; [ DW_TAG_arg_variable ] [mtxA] [line 1124]
!1281 = metadata !{i32 786689, metadata !175, metadata !"mtxB", metadata !5, i32 33555557, metadata !8, i32 0, metadata !1279} ; [ DW_TAG_arg_variable ] [mtxB] [line 1125]
!1282 = metadata !{i32 1125, i32 0, metadata !175, metadata !1279}
!1283 = metadata !{i32 1128, i32 0, metadata !175, metadata !1279}
!1284 = metadata !{i32 1129, i32 0, metadata !175, metadata !1279}
!1285 = metadata !{i32 1130, i32 0, metadata !175, metadata !1279}
!1286 = metadata !{i32 1131, i32 0, metadata !175, metadata !1279}
!1287 = metadata !{i32 1137, i32 0, metadata !175, metadata !1279}
!1288 = metadata !{i32 1139, i32 0, metadata !175, metadata !1279}
!1289 = metadata !{i32 786688, metadata !175, metadata !"entriesB", metadata !5, i32 1128, metadata !22, i32 0, metadata !1279} ; [ DW_TAG_auto_variable ] [entriesB] [line 1128]
!1290 = metadata !{i32 1144, i32 0, metadata !175, metadata !1279}
!1291 = metadata !{i32 786688, metadata !175, metadata !"colB0", metadata !5, i32 1128, metadata !22, i32 0, metadata !1279} ; [ DW_TAG_auto_variable ] [colB0] [line 1128]
!1292 = metadata !{i32 786688, metadata !175, metadata !"jcolB", metadata !5, i32 1129, metadata !14, i32 0, metadata !1279} ; [ DW_TAG_auto_variable ] [jcolB] [line 1129]
!1293 = metadata !{i32 1145, i32 0, metadata !1294, metadata !1279}
!1294 = metadata !{i32 786443, metadata !1, metadata !175, i32 1145, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1295 = metadata !{i32 786688, metadata !175, metadata !"ncolB", metadata !5, i32 1130, metadata !14, i32 0, metadata !1279} ; [ DW_TAG_auto_variable ] [ncolB] [line 1130]
!1296 = metadata !{i32 786688, metadata !175, metadata !"nrowB", metadata !5, i32 1130, metadata !14, i32 0, metadata !1279} ; [ DW_TAG_auto_variable ] [nrowB] [line 1130]
!1297 = metadata !{i32 1146, i32 0, metadata !1298, metadata !1279}
!1298 = metadata !{i32 786443, metadata !1, metadata !1294, i32 1145, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1299 = metadata !{i32 1147, i32 0, metadata !1298, metadata !1279}
!1300 = metadata !{i32 786688, metadata !175, metadata !"nrowA", metadata !5, i32 1130, metadata !14, i32 0, metadata !1279} ; [ DW_TAG_auto_variable ] [nrowA] [line 1130]
!1301 = metadata !{i32 1152, i32 0, metadata !1302, metadata !1279}
!1302 = metadata !{i32 786443, metadata !1, metadata !1298, i32 1152, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1303 = metadata !{i32 786688, metadata !175, metadata !"nentA", metadata !5, i32 1130, metadata !14, i32 0, metadata !1279} ; [ DW_TAG_auto_variable ] [nentA] [line 1130]
!1304 = metadata !{i32 786688, metadata !175, metadata !"sizesA", metadata !5, i32 1131, metadata !78, i32 0, metadata !1279} ; [ DW_TAG_auto_variable ] [sizesA] [line 1131]
!1305 = metadata !{i32 1155, i32 0, metadata !1306, metadata !1279}
!1306 = metadata !{i32 786443, metadata !1, metadata !1302, i32 1154, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1307 = metadata !{i32 786688, metadata !175, metadata !"firstlocsA", metadata !5, i32 1131, metadata !78, i32 0, metadata !1279} ; [ DW_TAG_auto_variable ] [firstlocsA] [line 1131]
!1308 = metadata !{i32 1156, i32 0, metadata !1309, metadata !1279}
!1309 = metadata !{i32 786443, metadata !1, metadata !1306, i32 1155, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1310 = metadata !{i32 786688, metadata !175, metadata !"entriesA", metadata !5, i32 1128, metadata !22, i32 0, metadata !1279} ; [ DW_TAG_auto_variable ] [entriesA] [line 1128]
!1311 = metadata !{i32 1165, i32 0, metadata !1312, metadata !1279}
!1312 = metadata !{i32 786443, metadata !1, metadata !1313, i32 1164, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1313 = metadata !{i32 786443, metadata !1, metadata !1309, i32 1164, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1314 = metadata !{i32 1178, i32 0, metadata !1298, metadata !1279}
!1315 = metadata !{i32 786688, metadata !175, metadata !"colstart", metadata !5, i32 1129, metadata !14, i32 0, metadata !1279} ; [ DW_TAG_auto_variable ] [colstart] [line 1129]
!1316 = metadata !{i32 786688, metadata !175, metadata !"first", metadata !5, i32 1129, metadata !14, i32 0, metadata !1279} ; [ DW_TAG_auto_variable ] [first] [line 1129]
!1317 = metadata !{i32 1157, i32 0, metadata !1309, metadata !1279}
!1318 = metadata !{i32 786688, metadata !175, metadata !"last", metadata !5, i32 1130, metadata !14, i32 0, metadata !1279} ; [ DW_TAG_auto_variable ] [last] [line 1130]
!1319 = metadata !{i32 1158, i32 0, metadata !1309, metadata !1279}
!1320 = metadata !{i32 1159, i32 0, metadata !1309, metadata !1279}
!1321 = metadata !{i32 786688, metadata !175, metadata !"rloc", metadata !5, i32 1130, metadata !14, i32 0, metadata !1279} ; [ DW_TAG_auto_variable ] [rloc] [line 1130]
!1322 = metadata !{i32 1160, i32 0, metadata !1309, metadata !1279}
!1323 = metadata !{i32 786688, metadata !175, metadata !"iloc", metadata !5, i32 1129, metadata !14, i32 0, metadata !1279} ; [ DW_TAG_auto_variable ] [iloc] [line 1129]
!1324 = metadata !{i32 1161, i32 0, metadata !1309, metadata !1279}
!1325 = metadata !{i32 786688, metadata !175, metadata !"br0", metadata !5, i32 1127, metadata !23, i32 0, metadata !1279} ; [ DW_TAG_auto_variable ] [br0] [line 1127]
!1326 = metadata !{i32 786688, metadata !175, metadata !"bi0", metadata !5, i32 1127, metadata !23, i32 0, metadata !1279} ; [ DW_TAG_auto_variable ] [bi0] [line 1127]
!1327 = metadata !{i32 1162, i32 0, metadata !1309, metadata !1279}
!1328 = metadata !{i32 786688, metadata !175, metadata !"br1", metadata !5, i32 1127, metadata !23, i32 0, metadata !1279} ; [ DW_TAG_auto_variable ] [br1] [line 1127]
!1329 = metadata !{i32 786688, metadata !175, metadata !"bi1", metadata !5, i32 1127, metadata !23, i32 0, metadata !1279} ; [ DW_TAG_auto_variable ] [bi1] [line 1127]
!1330 = metadata !{i32 1163, i32 0, metadata !1309, metadata !1279}
!1331 = metadata !{i32 786688, metadata !175, metadata !"br2", metadata !5, i32 1127, metadata !23, i32 0, metadata !1279} ; [ DW_TAG_auto_variable ] [br2] [line 1127]
!1332 = metadata !{i32 786688, metadata !175, metadata !"bi2", metadata !5, i32 1127, metadata !23, i32 0, metadata !1279} ; [ DW_TAG_auto_variable ] [bi2] [line 1127]
!1333 = metadata !{i32 786688, metadata !175, metadata !"jj", metadata !5, i32 1130, metadata !14, i32 0, metadata !1279} ; [ DW_TAG_auto_variable ] [jj] [line 1130]
!1334 = metadata !{i32 1164, i32 0, metadata !1313, metadata !1279}
!1335 = metadata !{i32 786688, metadata !175, metadata !"kk", metadata !5, i32 1130, metadata !14, i32 0, metadata !1279} ; [ DW_TAG_auto_variable ] [kk] [line 1130]
!1336 = metadata !{i32 786688, metadata !175, metadata !"ar", metadata !5, i32 1127, metadata !23, i32 0, metadata !1279} ; [ DW_TAG_auto_variable ] [ar] [line 1127]
!1337 = metadata !{i32 1166, i32 0, metadata !1312, metadata !1279}
!1338 = metadata !{i32 786688, metadata !175, metadata !"ai", metadata !5, i32 1127, metadata !23, i32 0, metadata !1279} ; [ DW_TAG_auto_variable ] [ai] [line 1127]
!1339 = metadata !{i32 1167, i32 0, metadata !1312, metadata !1279}
!1340 = metadata !{i32 1168, i32 0, metadata !1312, metadata !1279}
!1341 = metadata !{i32 1169, i32 0, metadata !1312, metadata !1279}
!1342 = metadata !{i32 1170, i32 0, metadata !1312, metadata !1279}
!1343 = metadata !{i32 1171, i32 0, metadata !1312, metadata !1279}
!1344 = metadata !{i32 1172, i32 0, metadata !1312, metadata !1279}
!1345 = metadata !{i32 1173, i32 0, metadata !1312, metadata !1279}
!1346 = metadata !{i32 1174, i32 0, metadata !1312, metadata !1279}
!1347 = metadata !{i32 1180, i32 0, metadata !175, metadata !1279}
!1348 = metadata !{i32 1181, i32 0, metadata !1349, metadata !1279}
!1349 = metadata !{i32 786443, metadata !1, metadata !175, i32 1180, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1350 = metadata !{i32 1186, i32 0, metadata !1351, metadata !1279}
!1351 = metadata !{i32 786443, metadata !1, metadata !1349, i32 1186, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1352 = metadata !{i32 1189, i32 0, metadata !1353, metadata !1279}
!1353 = metadata !{i32 786443, metadata !1, metadata !1351, i32 1188, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1354 = metadata !{i32 1190, i32 0, metadata !1355, metadata !1279}
!1355 = metadata !{i32 786443, metadata !1, metadata !1353, i32 1189, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1356 = metadata !{i32 1198, i32 0, metadata !1357, metadata !1279}
!1357 = metadata !{i32 786443, metadata !1, metadata !1358, i32 1197, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1358 = metadata !{i32 786443, metadata !1, metadata !1355, i32 1197, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1359 = metadata !{i32 1191, i32 0, metadata !1355, metadata !1279}
!1360 = metadata !{i32 1192, i32 0, metadata !1355, metadata !1279}
!1361 = metadata !{i32 1193, i32 0, metadata !1355, metadata !1279}
!1362 = metadata !{i32 1194, i32 0, metadata !1355, metadata !1279}
!1363 = metadata !{i32 1195, i32 0, metadata !1355, metadata !1279}
!1364 = metadata !{i32 1196, i32 0, metadata !1355, metadata !1279}
!1365 = metadata !{i32 1197, i32 0, metadata !1358, metadata !1279}
!1366 = metadata !{i32 1199, i32 0, metadata !1357, metadata !1279}
!1367 = metadata !{i32 1200, i32 0, metadata !1357, metadata !1279}
!1368 = metadata !{i32 1201, i32 0, metadata !1357, metadata !1279}
!1369 = metadata !{i32 1202, i32 0, metadata !1357, metadata !1279}
!1370 = metadata !{i32 1203, i32 0, metadata !1357, metadata !1279}
!1371 = metadata !{i32 1204, i32 0, metadata !1357, metadata !1279}
!1372 = metadata !{i32 1205, i32 0, metadata !1357, metadata !1279}
!1373 = metadata !{i32 1209, i32 0, metadata !175, metadata !1279}
!1374 = metadata !{i32 1214, i32 0, metadata !1375, metadata !1279}
!1375 = metadata !{i32 786443, metadata !1, metadata !1376, i32 1214, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1376 = metadata !{i32 786443, metadata !1, metadata !175, i32 1209, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1377 = metadata !{i32 1220, i32 0, metadata !1378, metadata !1279}
!1378 = metadata !{i32 786443, metadata !1, metadata !1375, i32 1216, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1379 = metadata !{i32 1221, i32 0, metadata !1380, metadata !1279}
!1380 = metadata !{i32 786443, metadata !1, metadata !1378, i32 1220, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1381 = metadata !{i32 1236, i32 0, metadata !1382, metadata !1279}
!1382 = metadata !{i32 786443, metadata !1, metadata !1383, i32 1235, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1383 = metadata !{i32 786443, metadata !1, metadata !1380, i32 1235, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1384 = metadata !{i32 1222, i32 0, metadata !1380, metadata !1279}
!1385 = metadata !{i32 1223, i32 0, metadata !1380, metadata !1279}
!1386 = metadata !{i32 1224, i32 0, metadata !1380, metadata !1279}
!1387 = metadata !{i32 1225, i32 0, metadata !1380, metadata !1279}
!1388 = metadata !{i32 1231, i32 0, metadata !1380, metadata !1279}
!1389 = metadata !{i32 1235, i32 0, metadata !1383, metadata !1279}
!1390 = metadata !{i32 1237, i32 0, metadata !1382, metadata !1279}
!1391 = metadata !{i32 1241, i32 0, metadata !1382, metadata !1279}
!1392 = metadata !{i32 1242, i32 0, metadata !1382, metadata !1279}
!1393 = metadata !{i32 1246, i32 0, metadata !1382, metadata !1279}
!1394 = metadata !{i32 1247, i32 0, metadata !1382, metadata !1279}
!1395 = metadata !{i32 1271, i32 0, metadata !141, metadata !1396}
!1396 = metadata !{i32 128, i32 0, metadata !1008, null}
!1397 = metadata !{i32 786689, metadata !141, metadata !"mtxA", metadata !5, i32 16778487, metadata !8, i32 0, metadata !1396} ; [ DW_TAG_arg_variable ] [mtxA] [line 1271]
!1398 = metadata !{i32 786689, metadata !141, metadata !"mtxB", metadata !5, i32 33555704, metadata !8, i32 0, metadata !1396} ; [ DW_TAG_arg_variable ] [mtxB] [line 1272]
!1399 = metadata !{i32 1272, i32 0, metadata !141, metadata !1396}
!1400 = metadata !{i32 1275, i32 0, metadata !141, metadata !1396}
!1401 = metadata !{i32 1276, i32 0, metadata !141, metadata !1396}
!1402 = metadata !{i32 1277, i32 0, metadata !141, metadata !1396}
!1403 = metadata !{i32 1278, i32 0, metadata !141, metadata !1396}
!1404 = metadata !{i32 1284, i32 0, metadata !141, metadata !1396}
!1405 = metadata !{i32 1286, i32 0, metadata !141, metadata !1396}
!1406 = metadata !{i32 786688, metadata !141, metadata !"entriesB", metadata !5, i32 1275, metadata !22, i32 0, metadata !1396} ; [ DW_TAG_auto_variable ] [entriesB] [line 1275]
!1407 = metadata !{i32 1291, i32 0, metadata !141, metadata !1396}
!1408 = metadata !{i32 786688, metadata !141, metadata !"colB0", metadata !5, i32 1275, metadata !22, i32 0, metadata !1396} ; [ DW_TAG_auto_variable ] [colB0] [line 1275]
!1409 = metadata !{i32 786688, metadata !141, metadata !"jcolB", metadata !5, i32 1276, metadata !14, i32 0, metadata !1396} ; [ DW_TAG_auto_variable ] [jcolB] [line 1276]
!1410 = metadata !{i32 1292, i32 0, metadata !1411, metadata !1396}
!1411 = metadata !{i32 786443, metadata !1, metadata !141, i32 1292, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1412 = metadata !{i32 786688, metadata !141, metadata !"ncolB", metadata !5, i32 1277, metadata !14, i32 0, metadata !1396} ; [ DW_TAG_auto_variable ] [ncolB] [line 1277]
!1413 = metadata !{i32 786688, metadata !141, metadata !"nrowB", metadata !5, i32 1277, metadata !14, i32 0, metadata !1396} ; [ DW_TAG_auto_variable ] [nrowB] [line 1277]
!1414 = metadata !{i32 1293, i32 0, metadata !1415, metadata !1396}
!1415 = metadata !{i32 786443, metadata !1, metadata !1411, i32 1292, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1416 = metadata !{i32 1294, i32 0, metadata !1415, metadata !1396}
!1417 = metadata !{i32 786688, metadata !141, metadata !"nrowA", metadata !5, i32 1277, metadata !14, i32 0, metadata !1396} ; [ DW_TAG_auto_variable ] [nrowA] [line 1277]
!1418 = metadata !{i32 1299, i32 0, metadata !1419, metadata !1396}
!1419 = metadata !{i32 786443, metadata !1, metadata !1415, i32 1299, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1420 = metadata !{i32 786688, metadata !141, metadata !"nentA", metadata !5, i32 1277, metadata !14, i32 0, metadata !1396} ; [ DW_TAG_auto_variable ] [nentA] [line 1277]
!1421 = metadata !{i32 786688, metadata !141, metadata !"sizesA", metadata !5, i32 1278, metadata !78, i32 0, metadata !1396} ; [ DW_TAG_auto_variable ] [sizesA] [line 1278]
!1422 = metadata !{i32 1302, i32 0, metadata !1423, metadata !1396}
!1423 = metadata !{i32 786443, metadata !1, metadata !1419, i32 1301, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1424 = metadata !{i32 786688, metadata !141, metadata !"entriesA", metadata !5, i32 1275, metadata !22, i32 0, metadata !1396} ; [ DW_TAG_auto_variable ] [entriesA] [line 1275]
!1425 = metadata !{i32 1310, i32 0, metadata !1426, metadata !1396}
!1426 = metadata !{i32 786443, metadata !1, metadata !1427, i32 1309, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1427 = metadata !{i32 786443, metadata !1, metadata !1428, i32 1309, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1428 = metadata !{i32 786443, metadata !1, metadata !1423, i32 1302, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1429 = metadata !{i32 786688, metadata !141, metadata !"indicesA", metadata !5, i32 1278, metadata !78, i32 0, metadata !1396} ; [ DW_TAG_auto_variable ] [indicesA] [line 1278]
!1430 = metadata !{i32 1311, i32 0, metadata !1426, metadata !1396}
!1431 = metadata !{i32 1323, i32 0, metadata !1415, metadata !1396}
!1432 = metadata !{i32 786688, metadata !141, metadata !"colstart", metadata !5, i32 1276, metadata !14, i32 0, metadata !1396} ; [ DW_TAG_auto_variable ] [colstart] [line 1276]
!1433 = metadata !{i32 786688, metadata !141, metadata !"size", metadata !5, i32 1277, metadata !14, i32 0, metadata !1396} ; [ DW_TAG_auto_variable ] [size] [line 1277]
!1434 = metadata !{i32 1303, i32 0, metadata !1428, metadata !1396}
!1435 = metadata !{i32 1304, i32 0, metadata !1428, metadata !1396}
!1436 = metadata !{i32 786688, metadata !141, metadata !"rloc", metadata !5, i32 1277, metadata !14, i32 0, metadata !1396} ; [ DW_TAG_auto_variable ] [rloc] [line 1277]
!1437 = metadata !{i32 1305, i32 0, metadata !1428, metadata !1396}
!1438 = metadata !{i32 786688, metadata !141, metadata !"iloc", metadata !5, i32 1276, metadata !14, i32 0, metadata !1396} ; [ DW_TAG_auto_variable ] [iloc] [line 1276]
!1439 = metadata !{i32 1306, i32 0, metadata !1428, metadata !1396}
!1440 = metadata !{i32 786688, metadata !141, metadata !"br0", metadata !5, i32 1274, metadata !23, i32 0, metadata !1396} ; [ DW_TAG_auto_variable ] [br0] [line 1274]
!1441 = metadata !{i32 786688, metadata !141, metadata !"bi0", metadata !5, i32 1274, metadata !23, i32 0, metadata !1396} ; [ DW_TAG_auto_variable ] [bi0] [line 1274]
!1442 = metadata !{i32 1307, i32 0, metadata !1428, metadata !1396}
!1443 = metadata !{i32 786688, metadata !141, metadata !"br1", metadata !5, i32 1274, metadata !23, i32 0, metadata !1396} ; [ DW_TAG_auto_variable ] [br1] [line 1274]
!1444 = metadata !{i32 786688, metadata !141, metadata !"bi1", metadata !5, i32 1274, metadata !23, i32 0, metadata !1396} ; [ DW_TAG_auto_variable ] [bi1] [line 1274]
!1445 = metadata !{i32 1308, i32 0, metadata !1428, metadata !1396}
!1446 = metadata !{i32 786688, metadata !141, metadata !"br2", metadata !5, i32 1274, metadata !23, i32 0, metadata !1396} ; [ DW_TAG_auto_variable ] [br2] [line 1274]
!1447 = metadata !{i32 786688, metadata !141, metadata !"bi2", metadata !5, i32 1274, metadata !23, i32 0, metadata !1396} ; [ DW_TAG_auto_variable ] [bi2] [line 1274]
!1448 = metadata !{i32 786688, metadata !141, metadata !"ii", metadata !5, i32 1276, metadata !14, i32 0, metadata !1396} ; [ DW_TAG_auto_variable ] [ii] [line 1276]
!1449 = metadata !{i32 1309, i32 0, metadata !1427, metadata !1396}
!1450 = metadata !{i32 786688, metadata !141, metadata !"kk", metadata !5, i32 1277, metadata !14, i32 0, metadata !1396} ; [ DW_TAG_auto_variable ] [kk] [line 1277]
!1451 = metadata !{i32 786688, metadata !141, metadata !"ar", metadata !5, i32 1274, metadata !23, i32 0, metadata !1396} ; [ DW_TAG_auto_variable ] [ar] [line 1274]
!1452 = metadata !{i32 786688, metadata !141, metadata !"ai", metadata !5, i32 1274, metadata !23, i32 0, metadata !1396} ; [ DW_TAG_auto_variable ] [ai] [line 1274]
!1453 = metadata !{i32 786688, metadata !141, metadata !"jj", metadata !5, i32 1277, metadata !14, i32 0, metadata !1396} ; [ DW_TAG_auto_variable ] [jj] [line 1277]
!1454 = metadata !{i32 1312, i32 0, metadata !1426, metadata !1396}
!1455 = metadata !{i32 1313, i32 0, metadata !1426, metadata !1396}
!1456 = metadata !{i32 1314, i32 0, metadata !1426, metadata !1396}
!1457 = metadata !{i32 1315, i32 0, metadata !1426, metadata !1396}
!1458 = metadata !{i32 1316, i32 0, metadata !1426, metadata !1396}
!1459 = metadata !{i32 1317, i32 0, metadata !1426, metadata !1396}
!1460 = metadata !{i32 1318, i32 0, metadata !1426, metadata !1396}
!1461 = metadata !{i32 1319, i32 0, metadata !1426, metadata !1396}
!1462 = metadata !{i32 1325, i32 0, metadata !141, metadata !1396}
!1463 = metadata !{i32 1326, i32 0, metadata !1464, metadata !1396}
!1464 = metadata !{i32 786443, metadata !1, metadata !141, i32 1325, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1465 = metadata !{i32 1331, i32 0, metadata !1466, metadata !1396}
!1466 = metadata !{i32 786443, metadata !1, metadata !1464, i32 1331, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1467 = metadata !{i32 1334, i32 0, metadata !1468, metadata !1396}
!1468 = metadata !{i32 786443, metadata !1, metadata !1466, i32 1333, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1469 = metadata !{i32 1341, i32 0, metadata !1470, metadata !1396}
!1470 = metadata !{i32 786443, metadata !1, metadata !1471, i32 1340, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1471 = metadata !{i32 786443, metadata !1, metadata !1472, i32 1340, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1472 = metadata !{i32 786443, metadata !1, metadata !1468, i32 1334, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1473 = metadata !{i32 1342, i32 0, metadata !1470, metadata !1396}
!1474 = metadata !{i32 1335, i32 0, metadata !1472, metadata !1396}
!1475 = metadata !{i32 1336, i32 0, metadata !1472, metadata !1396}
!1476 = metadata !{i32 1337, i32 0, metadata !1472, metadata !1396}
!1477 = metadata !{i32 1338, i32 0, metadata !1472, metadata !1396}
!1478 = metadata !{i32 1339, i32 0, metadata !1472, metadata !1396}
!1479 = metadata !{i32 1340, i32 0, metadata !1471, metadata !1396}
!1480 = metadata !{i32 1343, i32 0, metadata !1470, metadata !1396}
!1481 = metadata !{i32 1344, i32 0, metadata !1470, metadata !1396}
!1482 = metadata !{i32 1345, i32 0, metadata !1470, metadata !1396}
!1483 = metadata !{i32 1346, i32 0, metadata !1470, metadata !1396}
!1484 = metadata !{i32 1347, i32 0, metadata !1470, metadata !1396}
!1485 = metadata !{i32 1348, i32 0, metadata !1470, metadata !1396}
!1486 = metadata !{i32 1352, i32 0, metadata !141, metadata !1396}
!1487 = metadata !{i32 1357, i32 0, metadata !1488, metadata !1396}
!1488 = metadata !{i32 786443, metadata !1, metadata !1489, i32 1357, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1489 = metadata !{i32 786443, metadata !1, metadata !141, i32 1352, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1490 = metadata !{i32 1360, i32 0, metadata !1491, metadata !1396}
!1491 = metadata !{i32 786443, metadata !1, metadata !1488, i32 1359, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1492 = metadata !{i32 1366, i32 0, metadata !1493, metadata !1396}
!1493 = metadata !{i32 786443, metadata !1, metadata !1494, i32 1365, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1494 = metadata !{i32 786443, metadata !1, metadata !1495, i32 1365, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1495 = metadata !{i32 786443, metadata !1, metadata !1491, i32 1360, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1496 = metadata !{i32 1367, i32 0, metadata !1493, metadata !1396}
!1497 = metadata !{i32 1361, i32 0, metadata !1495, metadata !1396}
!1498 = metadata !{i32 1362, i32 0, metadata !1495, metadata !1396}
!1499 = metadata !{i32 1363, i32 0, metadata !1495, metadata !1396}
!1500 = metadata !{i32 1364, i32 0, metadata !1495, metadata !1396}
!1501 = metadata !{i32 1365, i32 0, metadata !1494, metadata !1396}
!1502 = metadata !{i32 1368, i32 0, metadata !1493, metadata !1396}
!1503 = metadata !{i32 1369, i32 0, metadata !1493, metadata !1396}
!1504 = metadata !{i32 1370, i32 0, metadata !1493, metadata !1396}
!1505 = metadata !{i32 1371, i32 0, metadata !1493, metadata !1396}
!1506 = metadata !{i32 1391, i32 0, metadata !118, metadata !1507}
!1507 = metadata !{i32 131, i32 0, metadata !1008, null}
!1508 = metadata !{i32 786689, metadata !118, metadata !"mtxA", metadata !5, i32 16778607, metadata !8, i32 0, metadata !1507} ; [ DW_TAG_arg_variable ] [mtxA] [line 1391]
!1509 = metadata !{i32 786689, metadata !118, metadata !"mtxB", metadata !5, i32 33555824, metadata !8, i32 0, metadata !1507} ; [ DW_TAG_arg_variable ] [mtxB] [line 1392]
!1510 = metadata !{i32 1392, i32 0, metadata !118, metadata !1507}
!1511 = metadata !{i32 1394, i32 0, metadata !118, metadata !1507}
!1512 = metadata !{i32 1395, i32 0, metadata !118, metadata !1507}
!1513 = metadata !{i32 1396, i32 0, metadata !118, metadata !1507}
!1514 = metadata !{i32 1402, i32 0, metadata !118, metadata !1507}
!1515 = metadata !{i32 1403, i32 0, metadata !118, metadata !1507}
!1516 = metadata !{i32 786688, metadata !118, metadata !"entriesB", metadata !5, i32 1395, metadata !22, i32 0, metadata !1507} ; [ DW_TAG_auto_variable ] [entriesB] [line 1395]
!1517 = metadata !{i32 1404, i32 0, metadata !118, metadata !1507}
!1518 = metadata !{i32 786688, metadata !118, metadata !"colB0", metadata !5, i32 1395, metadata !22, i32 0, metadata !1507} ; [ DW_TAG_auto_variable ] [colB0] [line 1395]
!1519 = metadata !{i32 786688, metadata !118, metadata !"jcolB", metadata !5, i32 1396, metadata !14, i32 0, metadata !1507} ; [ DW_TAG_auto_variable ] [jcolB] [line 1396]
!1520 = metadata !{i32 1405, i32 0, metadata !1521, metadata !1507}
!1521 = metadata !{i32 786443, metadata !1, metadata !118, i32 1405, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1522 = metadata !{i32 786688, metadata !118, metadata !"ncolB", metadata !5, i32 1396, metadata !14, i32 0, metadata !1507} ; [ DW_TAG_auto_variable ] [ncolB] [line 1396]
!1523 = metadata !{i32 786688, metadata !118, metadata !"nrowB", metadata !5, i32 1396, metadata !14, i32 0, metadata !1507} ; [ DW_TAG_auto_variable ] [nrowB] [line 1396]
!1524 = metadata !{i32 1406, i32 0, metadata !1525, metadata !1507}
!1525 = metadata !{i32 786443, metadata !1, metadata !1521, i32 1405, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1526 = metadata !{i32 786688, metadata !118, metadata !"nrowA", metadata !5, i32 1396, metadata !14, i32 0, metadata !1507} ; [ DW_TAG_auto_variable ] [nrowA] [line 1396]
!1527 = metadata !{i32 1408, i32 0, metadata !1528, metadata !1507}
!1528 = metadata !{i32 786443, metadata !1, metadata !1525, i32 1408, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1529 = metadata !{i32 1407, i32 0, metadata !1525, metadata !1507}
!1530 = metadata !{i32 786688, metadata !118, metadata !"kk", metadata !5, i32 1396, metadata !14, i32 0, metadata !1507} ; [ DW_TAG_auto_variable ] [kk] [line 1396]
!1531 = metadata !{i32 786688, metadata !118, metadata !"irowA", metadata !5, i32 1396, metadata !14, i32 0, metadata !1507} ; [ DW_TAG_auto_variable ] [irowA] [line 1396]
!1532 = metadata !{i32 786688, metadata !118, metadata !"entriesA", metadata !5, i32 1395, metadata !22, i32 0, metadata !1507} ; [ DW_TAG_auto_variable ] [entriesA] [line 1395]
!1533 = metadata !{i32 1409, i32 0, metadata !1534, metadata !1507}
!1534 = metadata !{i32 786443, metadata !1, metadata !1528, i32 1408, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1535 = metadata !{i32 786688, metadata !118, metadata !"ar", metadata !5, i32 1394, metadata !23, i32 0, metadata !1507} ; [ DW_TAG_auto_variable ] [ar] [line 1394]
!1536 = metadata !{i32 1410, i32 0, metadata !1534, metadata !1507}
!1537 = metadata !{i32 786688, metadata !118, metadata !"ai", metadata !5, i32 1394, metadata !23, i32 0, metadata !1507} ; [ DW_TAG_auto_variable ] [ai] [line 1394]
!1538 = metadata !{i32 1411, i32 0, metadata !1534, metadata !1507}
!1539 = metadata !{i32 1412, i32 0, metadata !1534, metadata !1507}
!1540 = metadata !{i32 786688, metadata !118, metadata !"br", metadata !5, i32 1394, metadata !23, i32 0, metadata !1507} ; [ DW_TAG_auto_variable ] [br] [line 1394]
!1541 = metadata !{i32 786688, metadata !118, metadata !"bi", metadata !5, i32 1394, metadata !23, i32 0, metadata !1507} ; [ DW_TAG_auto_variable ] [bi] [line 1394]
!1542 = metadata !{i32 786688, metadata !118, metadata !"cr", metadata !5, i32 1394, metadata !23, i32 0, metadata !1507} ; [ DW_TAG_auto_variable ] [cr] [line 1394]
!1543 = metadata !{i32 1413, i32 0, metadata !1534, metadata !1507}
!1544 = metadata !{i32 786688, metadata !118, metadata !"ci", metadata !5, i32 1394, metadata !23, i32 0, metadata !1507} ; [ DW_TAG_auto_variable ] [ci] [line 1394]
!1545 = metadata !{i32 1414, i32 0, metadata !1534, metadata !1507}
!1546 = metadata !{i32 1415, i32 0, metadata !1534, metadata !1507}
!1547 = metadata !{i32 1416, i32 0, metadata !1534, metadata !1507}
!1548 = metadata !{i32 1417, i32 0, metadata !1534, metadata !1507}
!1549 = metadata !{i32 1418, i32 0, metadata !1534, metadata !1507}
!1550 = metadata !{i32 1419, i32 0, metadata !1534, metadata !1507}
!1551 = metadata !{i32 1420, i32 0, metadata !1534, metadata !1507}
!1552 = metadata !{i32 1422, i32 0, metadata !1525, metadata !1507}
!1553 = metadata !{i32 1424, i32 0, metadata !118, metadata !1507}
!1554 = metadata !{i32 1425, i32 0, metadata !1555, metadata !1507}
!1555 = metadata !{i32 786443, metadata !1, metadata !118, i32 1424, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1556 = metadata !{i32 1426, i32 0, metadata !1557, metadata !1507}
!1557 = metadata !{i32 786443, metadata !1, metadata !1555, i32 1426, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1558 = metadata !{i32 1427, i32 0, metadata !1559, metadata !1507}
!1559 = metadata !{i32 786443, metadata !1, metadata !1557, i32 1426, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1560 = metadata !{i32 1428, i32 0, metadata !1559, metadata !1507}
!1561 = metadata !{i32 1429, i32 0, metadata !1559, metadata !1507}
!1562 = metadata !{i32 1430, i32 0, metadata !1559, metadata !1507}
!1563 = metadata !{i32 1431, i32 0, metadata !1559, metadata !1507}
!1564 = metadata !{i32 1432, i32 0, metadata !1559, metadata !1507}
!1565 = metadata !{i32 1433, i32 0, metadata !1559, metadata !1507}
!1566 = metadata !{i32 1434, i32 0, metadata !1559, metadata !1507}
!1567 = metadata !{i32 1435, i32 0, metadata !1559, metadata !1507}
!1568 = metadata !{i32 1437, i32 0, metadata !118, metadata !1507}
!1569 = metadata !{i32 1438, i32 0, metadata !1570, metadata !1507}
!1570 = metadata !{i32 786443, metadata !1, metadata !1571, i32 1438, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1571 = metadata !{i32 786443, metadata !1, metadata !118, i32 1437, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1572 = metadata !{i32 1439, i32 0, metadata !1573, metadata !1507}
!1573 = metadata !{i32 786443, metadata !1, metadata !1570, i32 1438, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1574 = metadata !{i32 1440, i32 0, metadata !1573, metadata !1507}
!1575 = metadata !{i32 1441, i32 0, metadata !1573, metadata !1507}
!1576 = metadata !{i32 1442, i32 0, metadata !1573, metadata !1507}
!1577 = metadata !{i32 1443, i32 0, metadata !1573, metadata !1507}
!1578 = metadata !{i32 1444, i32 0, metadata !1573, metadata !1507}
!1579 = metadata !{i32 1462, i32 0, metadata !79, metadata !1580}
!1580 = metadata !{i32 134, i32 0, metadata !1008, null}
!1581 = metadata !{i32 786689, metadata !79, metadata !"mtxA", metadata !5, i32 16778678, metadata !8, i32 0, metadata !1580} ; [ DW_TAG_arg_variable ] [mtxA] [line 1462]
!1582 = metadata !{i32 786689, metadata !79, metadata !"mtxB", metadata !5, i32 33555895, metadata !8, i32 0, metadata !1580} ; [ DW_TAG_arg_variable ] [mtxB] [line 1463]
!1583 = metadata !{i32 1463, i32 0, metadata !79, metadata !1580}
!1584 = metadata !{i32 1466, i32 0, metadata !79, metadata !1580}
!1585 = metadata !{i32 1467, i32 0, metadata !79, metadata !1580}
!1586 = metadata !{i32 1468, i32 0, metadata !79, metadata !1580}
!1587 = metadata !{i32 1469, i32 0, metadata !79, metadata !1580}
!1588 = metadata !{i32 1470, i32 0, metadata !79, metadata !1580}
!1589 = metadata !{i32 1476, i32 0, metadata !79, metadata !1580}
!1590 = metadata !{i32 786688, metadata !79, metadata !"kk", metadata !5, i32 1468, metadata !14, i32 0, metadata !1580} ; [ DW_TAG_auto_variable ] [kk] [line 1468]
!1591 = metadata !{i32 1477, i32 0, metadata !1592, metadata !1580}
!1592 = metadata !{i32 786443, metadata !1, metadata !79, i32 1477, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1593 = metadata !{i32 786688, metadata !79, metadata !"ipivot", metadata !5, i32 1468, metadata !14, i32 0, metadata !1580} ; [ DW_TAG_auto_variable ] [ipivot] [line 1468]
!1594 = metadata !{i32 786688, metadata !79, metadata !"irowA", metadata !5, i32 1468, metadata !14, i32 0, metadata !1580} ; [ DW_TAG_auto_variable ] [irowA] [line 1468]
!1595 = metadata !{i32 786688, metadata !79, metadata !"nrowA", metadata !5, i32 1469, metadata !14, i32 0, metadata !1580} ; [ DW_TAG_auto_variable ] [nrowA] [line 1469]
!1596 = metadata !{i32 786688, metadata !79, metadata !"pivotsizes", metadata !5, i32 1470, metadata !78, i32 0, metadata !1580} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 1470]
!1597 = metadata !{i32 1478, i32 0, metadata !1598, metadata !1580}
!1598 = metadata !{i32 786443, metadata !1, metadata !1592, i32 1477, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1599 = metadata !{i32 786688, metadata !79, metadata !"m", metadata !5, i32 1468, metadata !14, i32 0, metadata !1580} ; [ DW_TAG_auto_variable ] [m] [line 1468]
!1600 = metadata !{i32 1479, i32 0, metadata !1598, metadata !1580}
!1601 = metadata !{i32 1480, i32 0, metadata !1602, metadata !1580}
!1602 = metadata !{i32 786443, metadata !1, metadata !1598, i32 1479, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1603 = metadata !{i32 1484, i32 0, metadata !1602, metadata !1580}
!1604 = metadata !{i32 1486, i32 0, metadata !1598, metadata !1580}
!1605 = metadata !{i32 1488, i32 0, metadata !79, metadata !1580}
!1606 = metadata !{i32 786688, metadata !79, metadata !"entriesB", metadata !5, i32 1467, metadata !22, i32 0, metadata !1580} ; [ DW_TAG_auto_variable ] [entriesB] [line 1467]
!1607 = metadata !{i32 1489, i32 0, metadata !79, metadata !1580}
!1608 = metadata !{i32 786688, metadata !79, metadata !"colB0", metadata !5, i32 1467, metadata !22, i32 0, metadata !1580} ; [ DW_TAG_auto_variable ] [colB0] [line 1467]
!1609 = metadata !{i32 786688, metadata !79, metadata !"jcolB", metadata !5, i32 1468, metadata !14, i32 0, metadata !1580} ; [ DW_TAG_auto_variable ] [jcolB] [line 1468]
!1610 = metadata !{i32 1490, i32 0, metadata !1611, metadata !1580}
!1611 = metadata !{i32 786443, metadata !1, metadata !79, i32 1490, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1612 = metadata !{i32 786688, metadata !79, metadata !"ncolB", metadata !5, i32 1469, metadata !14, i32 0, metadata !1580} ; [ DW_TAG_auto_variable ] [ncolB] [line 1469]
!1613 = metadata !{i32 786688, metadata !79, metadata !"nrowB", metadata !5, i32 1469, metadata !14, i32 0, metadata !1580} ; [ DW_TAG_auto_variable ] [nrowB] [line 1469]
!1614 = metadata !{i32 1491, i32 0, metadata !1615, metadata !1580}
!1615 = metadata !{i32 786443, metadata !1, metadata !1611, i32 1490, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1616 = metadata !{i32 1493, i32 0, metadata !1617, metadata !1580}
!1617 = metadata !{i32 786443, metadata !1, metadata !1615, i32 1493, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1618 = metadata !{i32 1492, i32 0, metadata !1615, metadata !1580}
!1619 = metadata !{i32 1494, i32 0, metadata !1620, metadata !1580}
!1620 = metadata !{i32 786443, metadata !1, metadata !1617, i32 1493, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1621 = metadata !{i32 1495, i32 0, metadata !1620, metadata !1580}
!1622 = metadata !{i32 1496, i32 0, metadata !1623, metadata !1580}
!1623 = metadata !{i32 786443, metadata !1, metadata !1620, i32 1495, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1624 = metadata !{i32 786688, metadata !79, metadata !"entriesA", metadata !5, i32 1467, metadata !22, i32 0, metadata !1580} ; [ DW_TAG_auto_variable ] [entriesA] [line 1467]
!1625 = metadata !{i32 786688, metadata !79, metadata !"ar00", metadata !5, i32 1465, metadata !23, i32 0, metadata !1580} ; [ DW_TAG_auto_variable ] [ar00] [line 1465]
!1626 = metadata !{i32 786688, metadata !79, metadata !"ai00", metadata !5, i32 1465, metadata !23, i32 0, metadata !1580} ; [ DW_TAG_auto_variable ] [ai00] [line 1465]
!1627 = metadata !{i32 1497, i32 0, metadata !1623, metadata !1580}
!1628 = metadata !{i32 1498, i32 0, metadata !1623, metadata !1580}
!1629 = metadata !{i32 786688, metadata !79, metadata !"br0", metadata !5, i32 1466, metadata !23, i32 0, metadata !1580} ; [ DW_TAG_auto_variable ] [br0] [line 1466]
!1630 = metadata !{i32 786688, metadata !79, metadata !"bi0", metadata !5, i32 1465, metadata !23, i32 0, metadata !1580} ; [ DW_TAG_auto_variable ] [bi0] [line 1465]
!1631 = metadata !{i32 786688, metadata !79, metadata !"cr00", metadata !5, i32 1466, metadata !23, i32 0, metadata !1580} ; [ DW_TAG_auto_variable ] [cr00] [line 1466]
!1632 = metadata !{i32 1499, i32 0, metadata !1623, metadata !1580}
!1633 = metadata !{i32 786688, metadata !79, metadata !"ci00", metadata !5, i32 1466, metadata !23, i32 0, metadata !1580} ; [ DW_TAG_auto_variable ] [ci00] [line 1466]
!1634 = metadata !{i32 1500, i32 0, metadata !1623, metadata !1580}
!1635 = metadata !{i32 1501, i32 0, metadata !1623, metadata !1580}
!1636 = metadata !{i32 786688, metadata !79, metadata !"br1", metadata !5, i32 1466, metadata !23, i32 0, metadata !1580} ; [ DW_TAG_auto_variable ] [br1] [line 1466]
!1637 = metadata !{i32 786688, metadata !79, metadata !"bi1", metadata !5, i32 1465, metadata !23, i32 0, metadata !1580} ; [ DW_TAG_auto_variable ] [bi1] [line 1465]
!1638 = metadata !{i32 1502, i32 0, metadata !1623, metadata !1580}
!1639 = metadata !{i32 1503, i32 0, metadata !1623, metadata !1580}
!1640 = metadata !{i32 1504, i32 0, metadata !1623, metadata !1580}
!1641 = metadata !{i32 786688, metadata !79, metadata !"br2", metadata !5, i32 1466, metadata !23, i32 0, metadata !1580} ; [ DW_TAG_auto_variable ] [br2] [line 1466]
!1642 = metadata !{i32 786688, metadata !79, metadata !"bi2", metadata !5, i32 1465, metadata !23, i32 0, metadata !1580} ; [ DW_TAG_auto_variable ] [bi2] [line 1465]
!1643 = metadata !{i32 1505, i32 0, metadata !1623, metadata !1580}
!1644 = metadata !{i32 1506, i32 0, metadata !1623, metadata !1580}
!1645 = metadata !{i32 1507, i32 0, metadata !1623, metadata !1580}
!1646 = metadata !{i32 1508, i32 0, metadata !1647, metadata !1580}
!1647 = metadata !{i32 786443, metadata !1, metadata !1620, i32 1507, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1648 = metadata !{i32 1509, i32 0, metadata !1647, metadata !1580}
!1649 = metadata !{i32 786688, metadata !79, metadata !"ar01", metadata !5, i32 1465, metadata !23, i32 0, metadata !1580} ; [ DW_TAG_auto_variable ] [ar01] [line 1465]
!1650 = metadata !{i32 786688, metadata !79, metadata !"ai01", metadata !5, i32 1465, metadata !23, i32 0, metadata !1580} ; [ DW_TAG_auto_variable ] [ai01] [line 1465]
!1651 = metadata !{i32 1510, i32 0, metadata !1647, metadata !1580}
!1652 = metadata !{i32 786688, metadata !79, metadata !"ar11", metadata !5, i32 1465, metadata !23, i32 0, metadata !1580} ; [ DW_TAG_auto_variable ] [ar11] [line 1465]
!1653 = metadata !{i32 786688, metadata !79, metadata !"ai11", metadata !5, i32 1465, metadata !23, i32 0, metadata !1580} ; [ DW_TAG_auto_variable ] [ai11] [line 1465]
!1654 = metadata !{i32 1511, i32 0, metadata !1647, metadata !1580}
!1655 = metadata !{i32 1513, i32 0, metadata !1647, metadata !1580}
!1656 = metadata !{i32 1514, i32 0, metadata !1647, metadata !1580}
!1657 = metadata !{i32 1515, i32 0, metadata !1647, metadata !1580}
!1658 = metadata !{i32 786688, metadata !79, metadata !"cr01", metadata !5, i32 1466, metadata !23, i32 0, metadata !1580} ; [ DW_TAG_auto_variable ] [cr01] [line 1466]
!1659 = metadata !{i32 786688, metadata !79, metadata !"ci01", metadata !5, i32 1466, metadata !23, i32 0, metadata !1580} ; [ DW_TAG_auto_variable ] [ci01] [line 1466]
!1660 = metadata !{i32 1516, i32 0, metadata !1647, metadata !1580}
!1661 = metadata !{i32 1517, i32 0, metadata !1647, metadata !1580}
!1662 = metadata !{i32 786688, metadata !79, metadata !"cr11", metadata !5, i32 1466, metadata !23, i32 0, metadata !1580} ; [ DW_TAG_auto_variable ] [cr11] [line 1466]
!1663 = metadata !{i32 786688, metadata !79, metadata !"ci11", metadata !5, i32 1466, metadata !23, i32 0, metadata !1580} ; [ DW_TAG_auto_variable ] [ci11] [line 1466]
!1664 = metadata !{i32 1518, i32 0, metadata !1647, metadata !1580}
!1665 = metadata !{i32 1519, i32 0, metadata !1647, metadata !1580}
!1666 = metadata !{i32 1520, i32 0, metadata !1647, metadata !1580}
!1667 = metadata !{i32 1521, i32 0, metadata !1647, metadata !1580}
!1668 = metadata !{i32 1522, i32 0, metadata !1647, metadata !1580}
!1669 = metadata !{i32 1523, i32 0, metadata !1647, metadata !1580}
!1670 = metadata !{i32 1524, i32 0, metadata !1647, metadata !1580}
!1671 = metadata !{i32 1525, i32 0, metadata !1647, metadata !1580}
!1672 = metadata !{i32 1526, i32 0, metadata !1647, metadata !1580}
!1673 = metadata !{i32 1527, i32 0, metadata !1647, metadata !1580}
!1674 = metadata !{i32 1528, i32 0, metadata !1647, metadata !1580}
!1675 = metadata !{i32 1529, i32 0, metadata !1647, metadata !1580}
!1676 = metadata !{i32 1530, i32 0, metadata !1647, metadata !1580}
!1677 = metadata !{i32 1531, i32 0, metadata !1647, metadata !1580}
!1678 = metadata !{i32 1532, i32 0, metadata !1620, metadata !1580}
!1679 = metadata !{i32 1534, i32 0, metadata !1615, metadata !1580}
!1680 = metadata !{i32 1536, i32 0, metadata !79, metadata !1580}
!1681 = metadata !{i32 1537, i32 0, metadata !1682, metadata !1580}
!1682 = metadata !{i32 786443, metadata !1, metadata !79, i32 1536, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1683 = metadata !{i32 1538, i32 0, metadata !1684, metadata !1580}
!1684 = metadata !{i32 786443, metadata !1, metadata !1682, i32 1538, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1685 = metadata !{i32 1539, i32 0, metadata !1686, metadata !1580}
!1686 = metadata !{i32 786443, metadata !1, metadata !1684, i32 1538, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1687 = metadata !{i32 1540, i32 0, metadata !1686, metadata !1580}
!1688 = metadata !{i32 1541, i32 0, metadata !1689, metadata !1580}
!1689 = metadata !{i32 786443, metadata !1, metadata !1686, i32 1540, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1690 = metadata !{i32 1542, i32 0, metadata !1689, metadata !1580}
!1691 = metadata !{i32 1543, i32 0, metadata !1689, metadata !1580}
!1692 = metadata !{i32 1544, i32 0, metadata !1689, metadata !1580}
!1693 = metadata !{i32 1545, i32 0, metadata !1689, metadata !1580}
!1694 = metadata !{i32 1546, i32 0, metadata !1689, metadata !1580}
!1695 = metadata !{i32 1547, i32 0, metadata !1689, metadata !1580}
!1696 = metadata !{i32 1548, i32 0, metadata !1689, metadata !1580}
!1697 = metadata !{i32 1549, i32 0, metadata !1689, metadata !1580}
!1698 = metadata !{i32 1550, i32 0, metadata !1699, metadata !1580}
!1699 = metadata !{i32 786443, metadata !1, metadata !1686, i32 1549, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1700 = metadata !{i32 1551, i32 0, metadata !1699, metadata !1580}
!1701 = metadata !{i32 1552, i32 0, metadata !1699, metadata !1580}
!1702 = metadata !{i32 1553, i32 0, metadata !1699, metadata !1580}
!1703 = metadata !{i32 1555, i32 0, metadata !1699, metadata !1580}
!1704 = metadata !{i32 1556, i32 0, metadata !1699, metadata !1580}
!1705 = metadata !{i32 1557, i32 0, metadata !1699, metadata !1580}
!1706 = metadata !{i32 1558, i32 0, metadata !1699, metadata !1580}
!1707 = metadata !{i32 1559, i32 0, metadata !1699, metadata !1580}
!1708 = metadata !{i32 1560, i32 0, metadata !1699, metadata !1580}
!1709 = metadata !{i32 1561, i32 0, metadata !1699, metadata !1580}
!1710 = metadata !{i32 1562, i32 0, metadata !1699, metadata !1580}
!1711 = metadata !{i32 1563, i32 0, metadata !1699, metadata !1580}
!1712 = metadata !{i32 1564, i32 0, metadata !1699, metadata !1580}
!1713 = metadata !{i32 1565, i32 0, metadata !1699, metadata !1580}
!1714 = metadata !{i32 1566, i32 0, metadata !1699, metadata !1580}
!1715 = metadata !{i32 1567, i32 0, metadata !1699, metadata !1580}
!1716 = metadata !{i32 1568, i32 0, metadata !1686, metadata !1580}
!1717 = metadata !{i32 1570, i32 0, metadata !79, metadata !1580}
!1718 = metadata !{i32 1571, i32 0, metadata !1719, metadata !1580}
!1719 = metadata !{i32 786443, metadata !1, metadata !1720, i32 1571, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1720 = metadata !{i32 786443, metadata !1, metadata !79, i32 1570, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1721 = metadata !{i32 1572, i32 0, metadata !1722, metadata !1580}
!1722 = metadata !{i32 786443, metadata !1, metadata !1719, i32 1571, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1723 = metadata !{i32 1573, i32 0, metadata !1722, metadata !1580}
!1724 = metadata !{i32 1574, i32 0, metadata !1725, metadata !1580}
!1725 = metadata !{i32 786443, metadata !1, metadata !1722, i32 1573, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1726 = metadata !{i32 1575, i32 0, metadata !1725, metadata !1580}
!1727 = metadata !{i32 1576, i32 0, metadata !1725, metadata !1580}
!1728 = metadata !{i32 1577, i32 0, metadata !1725, metadata !1580}
!1729 = metadata !{i32 1578, i32 0, metadata !1725, metadata !1580}
!1730 = metadata !{i32 1579, i32 0, metadata !1725, metadata !1580}
!1731 = metadata !{i32 1580, i32 0, metadata !1732, metadata !1580}
!1732 = metadata !{i32 786443, metadata !1, metadata !1722, i32 1579, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1733 = metadata !{i32 1581, i32 0, metadata !1732, metadata !1580}
!1734 = metadata !{i32 1582, i32 0, metadata !1732, metadata !1580}
!1735 = metadata !{i32 1583, i32 0, metadata !1732, metadata !1580}
!1736 = metadata !{i32 1585, i32 0, metadata !1732, metadata !1580}
!1737 = metadata !{i32 1586, i32 0, metadata !1732, metadata !1580}
!1738 = metadata !{i32 1587, i32 0, metadata !1732, metadata !1580}
!1739 = metadata !{i32 1588, i32 0, metadata !1732, metadata !1580}
!1740 = metadata !{i32 1589, i32 0, metadata !1732, metadata !1580}
!1741 = metadata !{i32 1590, i32 0, metadata !1732, metadata !1580}
!1742 = metadata !{i32 1591, i32 0, metadata !1732, metadata !1580}
!1743 = metadata !{i32 1592, i32 0, metadata !1722, metadata !1580}
!1744 = metadata !{i32 1610, i32 0, metadata !39, metadata !1745}
!1745 = metadata !{i32 137, i32 0, metadata !1008, null}
!1746 = metadata !{i32 786689, metadata !39, metadata !"mtxA", metadata !5, i32 16778826, metadata !8, i32 0, metadata !1745} ; [ DW_TAG_arg_variable ] [mtxA] [line 1610]
!1747 = metadata !{i32 786689, metadata !39, metadata !"mtxB", metadata !5, i32 33556043, metadata !8, i32 0, metadata !1745} ; [ DW_TAG_arg_variable ] [mtxB] [line 1611]
!1748 = metadata !{i32 1611, i32 0, metadata !39, metadata !1745}
!1749 = metadata !{i32 1614, i32 0, metadata !39, metadata !1745}
!1750 = metadata !{i32 1615, i32 0, metadata !39, metadata !1745}
!1751 = metadata !{i32 1616, i32 0, metadata !39, metadata !1745}
!1752 = metadata !{i32 1617, i32 0, metadata !39, metadata !1745}
!1753 = metadata !{i32 1618, i32 0, metadata !39, metadata !1745}
!1754 = metadata !{i32 1624, i32 0, metadata !39, metadata !1745}
!1755 = metadata !{i32 786688, metadata !39, metadata !"kk", metadata !5, i32 1616, metadata !14, i32 0, metadata !1745} ; [ DW_TAG_auto_variable ] [kk] [line 1616]
!1756 = metadata !{i32 1625, i32 0, metadata !1757, metadata !1745}
!1757 = metadata !{i32 786443, metadata !1, metadata !39, i32 1625, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1758 = metadata !{i32 786688, metadata !39, metadata !"ipivot", metadata !5, i32 1616, metadata !14, i32 0, metadata !1745} ; [ DW_TAG_auto_variable ] [ipivot] [line 1616]
!1759 = metadata !{i32 786688, metadata !39, metadata !"irowA", metadata !5, i32 1616, metadata !14, i32 0, metadata !1745} ; [ DW_TAG_auto_variable ] [irowA] [line 1616]
!1760 = metadata !{i32 786688, metadata !39, metadata !"nrowA", metadata !5, i32 1617, metadata !14, i32 0, metadata !1745} ; [ DW_TAG_auto_variable ] [nrowA] [line 1617]
!1761 = metadata !{i32 786688, metadata !39, metadata !"pivotsizes", metadata !5, i32 1618, metadata !78, i32 0, metadata !1745} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 1618]
!1762 = metadata !{i32 1626, i32 0, metadata !1763, metadata !1745}
!1763 = metadata !{i32 786443, metadata !1, metadata !1757, i32 1625, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1764 = metadata !{i32 786688, metadata !39, metadata !"m", metadata !5, i32 1616, metadata !14, i32 0, metadata !1745} ; [ DW_TAG_auto_variable ] [m] [line 1616]
!1765 = metadata !{i32 1627, i32 0, metadata !1763, metadata !1745}
!1766 = metadata !{i32 1628, i32 0, metadata !1767, metadata !1745}
!1767 = metadata !{i32 786443, metadata !1, metadata !1763, i32 1627, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1768 = metadata !{i32 1632, i32 0, metadata !1767, metadata !1745}
!1769 = metadata !{i32 1634, i32 0, metadata !1763, metadata !1745}
!1770 = metadata !{i32 1636, i32 0, metadata !39, metadata !1745}
!1771 = metadata !{i32 786688, metadata !39, metadata !"entriesB", metadata !5, i32 1615, metadata !22, i32 0, metadata !1745} ; [ DW_TAG_auto_variable ] [entriesB] [line 1615]
!1772 = metadata !{i32 1637, i32 0, metadata !39, metadata !1745}
!1773 = metadata !{i32 786688, metadata !39, metadata !"colB0", metadata !5, i32 1615, metadata !22, i32 0, metadata !1745} ; [ DW_TAG_auto_variable ] [colB0] [line 1615]
!1774 = metadata !{i32 786688, metadata !39, metadata !"jcolB", metadata !5, i32 1616, metadata !14, i32 0, metadata !1745} ; [ DW_TAG_auto_variable ] [jcolB] [line 1616]
!1775 = metadata !{i32 1638, i32 0, metadata !1776, metadata !1745}
!1776 = metadata !{i32 786443, metadata !1, metadata !39, i32 1638, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1777 = metadata !{i32 786688, metadata !39, metadata !"ncolB", metadata !5, i32 1617, metadata !14, i32 0, metadata !1745} ; [ DW_TAG_auto_variable ] [ncolB] [line 1617]
!1778 = metadata !{i32 786688, metadata !39, metadata !"nrowB", metadata !5, i32 1617, metadata !14, i32 0, metadata !1745} ; [ DW_TAG_auto_variable ] [nrowB] [line 1617]
!1779 = metadata !{i32 1639, i32 0, metadata !1780, metadata !1745}
!1780 = metadata !{i32 786443, metadata !1, metadata !1776, i32 1638, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1781 = metadata !{i32 1641, i32 0, metadata !1782, metadata !1745}
!1782 = metadata !{i32 786443, metadata !1, metadata !1780, i32 1641, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1783 = metadata !{i32 1640, i32 0, metadata !1780, metadata !1745}
!1784 = metadata !{i32 1642, i32 0, metadata !1785, metadata !1745}
!1785 = metadata !{i32 786443, metadata !1, metadata !1782, i32 1641, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1786 = metadata !{i32 1643, i32 0, metadata !1785, metadata !1745}
!1787 = metadata !{i32 1647, i32 0, metadata !1788, metadata !1745}
!1788 = metadata !{i32 786443, metadata !1, metadata !1785, i32 1643, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1789 = metadata !{i32 786688, metadata !39, metadata !"entriesA", metadata !5, i32 1615, metadata !22, i32 0, metadata !1745} ; [ DW_TAG_auto_variable ] [entriesA] [line 1615]
!1790 = metadata !{i32 786688, metadata !39, metadata !"ar00", metadata !5, i32 1613, metadata !23, i32 0, metadata !1745} ; [ DW_TAG_auto_variable ] [ar00] [line 1613]
!1791 = metadata !{i32 786688, metadata !39, metadata !"ai00", metadata !5, i32 1613, metadata !23, i32 0, metadata !1745} ; [ DW_TAG_auto_variable ] [ai00] [line 1613]
!1792 = metadata !{i32 1648, i32 0, metadata !1788, metadata !1745}
!1793 = metadata !{i32 1649, i32 0, metadata !1788, metadata !1745}
!1794 = metadata !{i32 786688, metadata !39, metadata !"br0", metadata !5, i32 1614, metadata !23, i32 0, metadata !1745} ; [ DW_TAG_auto_variable ] [br0] [line 1614]
!1795 = metadata !{i32 786688, metadata !39, metadata !"bi0", metadata !5, i32 1613, metadata !23, i32 0, metadata !1745} ; [ DW_TAG_auto_variable ] [bi0] [line 1613]
!1796 = metadata !{i32 786688, metadata !39, metadata !"cr00", metadata !5, i32 1614, metadata !23, i32 0, metadata !1745} ; [ DW_TAG_auto_variable ] [cr00] [line 1614]
!1797 = metadata !{i32 1650, i32 0, metadata !1788, metadata !1745}
!1798 = metadata !{i32 1651, i32 0, metadata !1788, metadata !1745}
!1799 = metadata !{i32 1652, i32 0, metadata !1788, metadata !1745}
!1800 = metadata !{i32 786688, metadata !39, metadata !"br1", metadata !5, i32 1614, metadata !23, i32 0, metadata !1745} ; [ DW_TAG_auto_variable ] [br1] [line 1614]
!1801 = metadata !{i32 786688, metadata !39, metadata !"bi1", metadata !5, i32 1613, metadata !23, i32 0, metadata !1745} ; [ DW_TAG_auto_variable ] [bi1] [line 1613]
!1802 = metadata !{i32 1653, i32 0, metadata !1788, metadata !1745}
!1803 = metadata !{i32 1654, i32 0, metadata !1788, metadata !1745}
!1804 = metadata !{i32 1655, i32 0, metadata !1788, metadata !1745}
!1805 = metadata !{i32 786688, metadata !39, metadata !"br2", metadata !5, i32 1614, metadata !23, i32 0, metadata !1745} ; [ DW_TAG_auto_variable ] [br2] [line 1614]
!1806 = metadata !{i32 786688, metadata !39, metadata !"bi2", metadata !5, i32 1613, metadata !23, i32 0, metadata !1745} ; [ DW_TAG_auto_variable ] [bi2] [line 1613]
!1807 = metadata !{i32 1656, i32 0, metadata !1788, metadata !1745}
!1808 = metadata !{i32 1657, i32 0, metadata !1788, metadata !1745}
!1809 = metadata !{i32 1658, i32 0, metadata !1788, metadata !1745}
!1810 = metadata !{i32 1664, i32 0, metadata !1811, metadata !1745}
!1811 = metadata !{i32 786443, metadata !1, metadata !1785, i32 1658, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1812 = metadata !{i32 1665, i32 0, metadata !1811, metadata !1745}
!1813 = metadata !{i32 786688, metadata !39, metadata !"ar01", metadata !5, i32 1613, metadata !23, i32 0, metadata !1745} ; [ DW_TAG_auto_variable ] [ar01] [line 1613]
!1814 = metadata !{i32 786688, metadata !39, metadata !"ai01", metadata !5, i32 1613, metadata !23, i32 0, metadata !1745} ; [ DW_TAG_auto_variable ] [ai01] [line 1613]
!1815 = metadata !{i32 1666, i32 0, metadata !1811, metadata !1745}
!1816 = metadata !{i32 786688, metadata !39, metadata !"ar11", metadata !5, i32 1613, metadata !23, i32 0, metadata !1745} ; [ DW_TAG_auto_variable ] [ar11] [line 1613]
!1817 = metadata !{i32 786688, metadata !39, metadata !"ai11", metadata !5, i32 1613, metadata !23, i32 0, metadata !1745} ; [ DW_TAG_auto_variable ] [ai11] [line 1613]
!1818 = metadata !{i32 1667, i32 0, metadata !1811, metadata !1745}
!1819 = metadata !{i32 1669, i32 0, metadata !1811, metadata !1745}
!1820 = metadata !{i32 1670, i32 0, metadata !1811, metadata !1745}
!1821 = metadata !{i32 1671, i32 0, metadata !1811, metadata !1745}
!1822 = metadata !{i32 786688, metadata !39, metadata !"cr01", metadata !5, i32 1614, metadata !23, i32 0, metadata !1745} ; [ DW_TAG_auto_variable ] [cr01] [line 1614]
!1823 = metadata !{i32 786688, metadata !39, metadata !"ci01", metadata !5, i32 1614, metadata !23, i32 0, metadata !1745} ; [ DW_TAG_auto_variable ] [ci01] [line 1614]
!1824 = metadata !{i32 1672, i32 0, metadata !1811, metadata !1745}
!1825 = metadata !{i32 1673, i32 0, metadata !1811, metadata !1745}
!1826 = metadata !{i32 786688, metadata !39, metadata !"cr11", metadata !5, i32 1614, metadata !23, i32 0, metadata !1745} ; [ DW_TAG_auto_variable ] [cr11] [line 1614]
!1827 = metadata !{i32 1674, i32 0, metadata !1811, metadata !1745}
!1828 = metadata !{i32 1675, i32 0, metadata !1811, metadata !1745}
!1829 = metadata !{i32 1676, i32 0, metadata !1811, metadata !1745}
!1830 = metadata !{i32 1677, i32 0, metadata !1811, metadata !1745}
!1831 = metadata !{i32 1678, i32 0, metadata !1811, metadata !1745}
!1832 = metadata !{i32 1679, i32 0, metadata !1811, metadata !1745}
!1833 = metadata !{i32 1680, i32 0, metadata !1811, metadata !1745}
!1834 = metadata !{i32 1681, i32 0, metadata !1811, metadata !1745}
!1835 = metadata !{i32 1682, i32 0, metadata !1811, metadata !1745}
!1836 = metadata !{i32 1683, i32 0, metadata !1811, metadata !1745}
!1837 = metadata !{i32 1684, i32 0, metadata !1811, metadata !1745}
!1838 = metadata !{i32 1685, i32 0, metadata !1811, metadata !1745}
!1839 = metadata !{i32 1686, i32 0, metadata !1811, metadata !1745}
!1840 = metadata !{i32 1687, i32 0, metadata !1811, metadata !1745}
!1841 = metadata !{i32 1688, i32 0, metadata !1785, metadata !1745}
!1842 = metadata !{i32 1690, i32 0, metadata !1780, metadata !1745}
!1843 = metadata !{i32 1692, i32 0, metadata !39, metadata !1745}
!1844 = metadata !{i32 1693, i32 0, metadata !1845, metadata !1745}
!1845 = metadata !{i32 786443, metadata !1, metadata !39, i32 1692, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1846 = metadata !{i32 1694, i32 0, metadata !1847, metadata !1745}
!1847 = metadata !{i32 786443, metadata !1, metadata !1845, i32 1694, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1848 = metadata !{i32 1695, i32 0, metadata !1849, metadata !1745}
!1849 = metadata !{i32 786443, metadata !1, metadata !1847, i32 1694, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1850 = metadata !{i32 1696, i32 0, metadata !1849, metadata !1745}
!1851 = metadata !{i32 1700, i32 0, metadata !1852, metadata !1745}
!1852 = metadata !{i32 786443, metadata !1, metadata !1849, i32 1696, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1853 = metadata !{i32 1701, i32 0, metadata !1852, metadata !1745}
!1854 = metadata !{i32 1702, i32 0, metadata !1852, metadata !1745}
!1855 = metadata !{i32 1703, i32 0, metadata !1852, metadata !1745}
!1856 = metadata !{i32 1704, i32 0, metadata !1852, metadata !1745}
!1857 = metadata !{i32 1705, i32 0, metadata !1852, metadata !1745}
!1858 = metadata !{i32 1706, i32 0, metadata !1852, metadata !1745}
!1859 = metadata !{i32 1707, i32 0, metadata !1852, metadata !1745}
!1860 = metadata !{i32 1708, i32 0, metadata !1852, metadata !1745}
!1861 = metadata !{i32 1714, i32 0, metadata !1862, metadata !1745}
!1862 = metadata !{i32 786443, metadata !1, metadata !1849, i32 1708, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1863 = metadata !{i32 1715, i32 0, metadata !1862, metadata !1745}
!1864 = metadata !{i32 1716, i32 0, metadata !1862, metadata !1745}
!1865 = metadata !{i32 1717, i32 0, metadata !1862, metadata !1745}
!1866 = metadata !{i32 1719, i32 0, metadata !1862, metadata !1745}
!1867 = metadata !{i32 1720, i32 0, metadata !1862, metadata !1745}
!1868 = metadata !{i32 1721, i32 0, metadata !1862, metadata !1745}
!1869 = metadata !{i32 1722, i32 0, metadata !1862, metadata !1745}
!1870 = metadata !{i32 1723, i32 0, metadata !1862, metadata !1745}
!1871 = metadata !{i32 1724, i32 0, metadata !1862, metadata !1745}
!1872 = metadata !{i32 1725, i32 0, metadata !1862, metadata !1745}
!1873 = metadata !{i32 1726, i32 0, metadata !1862, metadata !1745}
!1874 = metadata !{i32 1727, i32 0, metadata !1862, metadata !1745}
!1875 = metadata !{i32 1728, i32 0, metadata !1862, metadata !1745}
!1876 = metadata !{i32 1729, i32 0, metadata !1862, metadata !1745}
!1877 = metadata !{i32 1730, i32 0, metadata !1862, metadata !1745}
!1878 = metadata !{i32 1731, i32 0, metadata !1862, metadata !1745}
!1879 = metadata !{i32 1732, i32 0, metadata !1849, metadata !1745}
!1880 = metadata !{i32 1734, i32 0, metadata !39, metadata !1745}
!1881 = metadata !{i32 1735, i32 0, metadata !1882, metadata !1745}
!1882 = metadata !{i32 786443, metadata !1, metadata !1883, i32 1735, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1883 = metadata !{i32 786443, metadata !1, metadata !39, i32 1734, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1884 = metadata !{i32 1736, i32 0, metadata !1885, metadata !1745}
!1885 = metadata !{i32 786443, metadata !1, metadata !1882, i32 1735, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1886 = metadata !{i32 1737, i32 0, metadata !1885, metadata !1745}
!1887 = metadata !{i32 1741, i32 0, metadata !1888, metadata !1745}
!1888 = metadata !{i32 786443, metadata !1, metadata !1885, i32 1737, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1889 = metadata !{i32 1742, i32 0, metadata !1888, metadata !1745}
!1890 = metadata !{i32 1743, i32 0, metadata !1888, metadata !1745}
!1891 = metadata !{i32 1744, i32 0, metadata !1888, metadata !1745}
!1892 = metadata !{i32 1745, i32 0, metadata !1888, metadata !1745}
!1893 = metadata !{i32 1746, i32 0, metadata !1888, metadata !1745}
!1894 = metadata !{i32 1752, i32 0, metadata !1895, metadata !1745}
!1895 = metadata !{i32 786443, metadata !1, metadata !1885, i32 1746, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solve.c]
!1896 = metadata !{i32 1753, i32 0, metadata !1895, metadata !1745}
!1897 = metadata !{i32 1754, i32 0, metadata !1895, metadata !1745}
!1898 = metadata !{i32 1755, i32 0, metadata !1895, metadata !1745}
!1899 = metadata !{i32 1757, i32 0, metadata !1895, metadata !1745}
!1900 = metadata !{i32 1758, i32 0, metadata !1895, metadata !1745}
!1901 = metadata !{i32 1759, i32 0, metadata !1895, metadata !1745}
!1902 = metadata !{i32 1760, i32 0, metadata !1895, metadata !1745}
!1903 = metadata !{i32 1761, i32 0, metadata !1895, metadata !1745}
!1904 = metadata !{i32 1762, i32 0, metadata !1895, metadata !1745}
!1905 = metadata !{i32 1763, i32 0, metadata !1895, metadata !1745}
!1906 = metadata !{i32 1764, i32 0, metadata !1885, metadata !1745}
!1907 = metadata !{i32 143, i32 0, metadata !1008, null}
!1908 = metadata !{i32 145, i32 0, metadata !1008, null}
!1909 = metadata !{i32 150, i32 0, metadata !462, null}
!1910 = metadata !{i32 152, i32 0, metadata !462, null}
!1911 = metadata !{i32 155, i32 0, metadata !4, null}
