; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [50 x i8] c"\0A fatal error in SubMtx_solveT(%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [61 x i8] c"\0A fatal error in SubMtx_solveT(%p,%p)\0A mtxB has bad type %d\0A\00", align 1
@.str2 = private unnamed_addr constant [73 x i8] c"\0A fatal error in SubMtx_solveT(%p,%p)\0A mtxA->nrow = %d, mtxB->nrwo = %d\0A\00", align 1
@.str3 = private unnamed_addr constant [52 x i8] c"\0A fatal error in SubMtx_solveT(%p,%p)\0A bad mode %d\0A\00", align 1
@.str4 = private unnamed_addr constant [52 x i8] c"\0A fatal error in SubMtx_solveT(%p,%p)\0A bad type %d\0A\00", align 1
@.str5 = private unnamed_addr constant [52 x i8] c"\0A fatal error, irowA = %d, kk =%d, ii = %d, jj = %d\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_solveT(%struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB) #0 {
entry:
  %entriesA.i466 = alloca double*, align 8
  %entriesB.i467 = alloca double*, align 8
  %inc1.i468 = alloca i32, align 4
  %inc2.i469 = alloca i32, align 4
  %ncolB.i470 = alloca i32, align 4
  %nentA.i471 = alloca i32, align 4
  %nrowA.i472 = alloca i32, align 4
  %nrowB.i473 = alloca i32, align 4
  %indicesA.i474 = alloca i32*, align 8
  %sizesA.i475 = alloca i32*, align 8
  %entriesA.i372 = alloca double*, align 8
  %entriesB.i373 = alloca double*, align 8
  %inc1.i374 = alloca i32, align 4
  %inc2.i375 = alloca i32, align 4
  %ncolB.i376 = alloca i32, align 4
  %nentA.i377 = alloca i32, align 4
  %nrowA.i378 = alloca i32, align 4
  %nrowB.i379 = alloca i32, align 4
  %firstlocsA.i380 = alloca i32*, align 8
  %sizesA.i381 = alloca i32*, align 8
  %entriesA.i277 = alloca double*, align 8
  %entriesB.i278 = alloca double*, align 8
  %inc1.i279 = alloca i32, align 4
  %inc2.i280 = alloca i32, align 4
  %ncolB.i281 = alloca i32, align 4
  %nentA.i282 = alloca i32, align 4
  %nrowA.i283 = alloca i32, align 4
  %nrowB.i284 = alloca i32, align 4
  %indicesA.i285 = alloca i32*, align 8
  %sizesA.i286 = alloca i32*, align 8
  %entriesA.i222 = alloca double*, align 8
  %entriesB.i223 = alloca double*, align 8
  %inc1.i224 = alloca i32, align 4
  %inc2.i225 = alloca i32, align 4
  %ncolB.i226 = alloca i32, align 4
  %nentA.i227 = alloca i32, align 4
  %nrowA.i228 = alloca i32, align 4
  %nrowB.i229 = alloca i32, align 4
  %firstlocsA.i230 = alloca i32*, align 8
  %sizesA.i231 = alloca i32*, align 8
  %entriesA.i154 = alloca double*, align 8
  %entriesB.i155 = alloca double*, align 8
  %inc1.i156 = alloca i32, align 4
  %inc2.i157 = alloca i32, align 4
  %ncolB.i158 = alloca i32, align 4
  %nentA.i159 = alloca i32, align 4
  %nrowA.i160 = alloca i32, align 4
  %nrowB.i161 = alloca i32, align 4
  %indicesA.i162 = alloca i32*, align 8
  %sizesA.i163 = alloca i32*, align 8
  %entriesA.i111 = alloca double*, align 8
  %entriesB.i112 = alloca double*, align 8
  %inc1.i113 = alloca i32, align 4
  %inc2.i114 = alloca i32, align 4
  %ncolB.i115 = alloca i32, align 4
  %nentA.i116 = alloca i32, align 4
  %nrowA.i117 = alloca i32, align 4
  %nrowB.i118 = alloca i32, align 4
  %firstlocsA.i119 = alloca i32*, align 8
  %sizesA.i120 = alloca i32*, align 8
  %entriesA.i75 = alloca double*, align 8
  %entriesB.i76 = alloca double*, align 8
  %inc1.i77 = alloca i32, align 4
  %inc2.i78 = alloca i32, align 4
  %ncolB.i79 = alloca i32, align 4
  %nentA.i80 = alloca i32, align 4
  %nrowA.i81 = alloca i32, align 4
  %nrowB.i82 = alloca i32, align 4
  %indicesA.i = alloca i32*, align 8
  %sizesA.i83 = alloca i32*, align 8
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
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !37), !dbg !296
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxB}, i64 0, metadata !38), !dbg !297
  %cmp = icmp eq %struct._SubMtx* %mtxA, null, !dbg !298
  %cmp1 = icmp eq %struct._SubMtx* %mtxB, null, !dbg !298
  %or.cond = or i1 %cmp, %cmp1, !dbg !298
  br i1 %or.cond, label %if.then, label %if.end, !dbg !298

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !299, !tbaa !301
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB) #6, !dbg !299
  call void @exit(i32 -1) #7, !dbg !304
  unreachable, !dbg !304

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct._SubMtx* %mtxB, i64 0, i32 1, !dbg !305
  %1 = load i32* %mode, align 4, !dbg !305, !tbaa !306
  %cmp2 = icmp eq i32 %1, 1, !dbg !305
  br i1 %cmp2, label %if.end5, label %if.then3, !dbg !305

if.then3:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !307, !tbaa !301
  %type = getelementptr inbounds %struct._SubMtx* %mtxB, i64 0, i32 0, !dbg !307
  %3 = load i32* %type, align 4, !dbg !307, !tbaa !306
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([61 x i8]* @.str1, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 %3) #6, !dbg !307
  call void @exit(i32 -1) #7, !dbg !309
  unreachable, !dbg !309

if.end5:                                          ; preds = %if.end
  %nrow = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 4, !dbg !310
  %4 = load i32* %nrow, align 4, !dbg !310, !tbaa !306
  %nrow6 = getelementptr inbounds %struct._SubMtx* %mtxB, i64 0, i32 4, !dbg !310
  %5 = load i32* %nrow6, align 4, !dbg !310, !tbaa !306
  %cmp7 = icmp eq i32 %4, %5, !dbg !310
  br i1 %cmp7, label %if.end12, label %if.then8, !dbg !310

if.then8:                                         ; preds = %if.end5
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !311, !tbaa !301
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([73 x i8]* @.str2, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 %4, i32 %5) #6, !dbg !311
  call void @exit(i32 -1) #7, !dbg !313
  unreachable, !dbg !313

if.end12:                                         ; preds = %if.end5
  %type13 = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 0, !dbg !314
  %7 = load i32* %type13, align 4, !dbg !314, !tbaa !306
  switch i32 %7, label %sw.default31 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb21
  ], !dbg !314

sw.bb:                                            ; preds = %if.end12
  %mode14 = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 1, !dbg !315
  %8 = load i32* %mode14, align 4, !dbg !315, !tbaa !306
  switch i32 %8, label %sw.default [
    i32 5, label %sw.bb15
    i32 2, label %sw.bb16
    i32 6, label %sw.bb17
    i32 3, label %sw.bb18
  ], !dbg !315

sw.bb15:                                          ; preds = %sw.bb
  %9 = bitcast double** %entriesA.i to i8*, !dbg !317
  call void @llvm.lifetime.start(i64 8, i8* %9) #5, !dbg !317
  %10 = bitcast double** %entriesB.i to i8*, !dbg !317
  call void @llvm.lifetime.start(i64 8, i8* %10) #5, !dbg !317
  %11 = bitcast i32* %inc1.i to i8*, !dbg !317
  call void @llvm.lifetime.start(i64 4, i8* %11) #5, !dbg !317
  %12 = bitcast i32* %inc2.i to i8*, !dbg !317
  call void @llvm.lifetime.start(i64 4, i8* %12) #5, !dbg !317
  %13 = bitcast i32* %ncolB.i to i8*, !dbg !317
  call void @llvm.lifetime.start(i64 4, i8* %13) #5, !dbg !317
  %14 = bitcast i32* %nentA.i to i8*, !dbg !317
  call void @llvm.lifetime.start(i64 4, i8* %14) #5, !dbg !317
  %15 = bitcast i32* %nrowA.i to i8*, !dbg !317
  call void @llvm.lifetime.start(i64 4, i8* %15) #5, !dbg !317
  %16 = bitcast i32* %nrowB.i to i8*, !dbg !317
  call void @llvm.lifetime.start(i64 4, i8* %16) #5, !dbg !317
  %17 = bitcast i32** %firstlocsA.i to i8*, !dbg !317
  call void @llvm.lifetime.start(i64 8, i8* %17) #5, !dbg !317
  %18 = bitcast i32** %sizesA.i to i8*, !dbg !317
  call void @llvm.lifetime.start(i64 8, i8* %18) #5, !dbg !317
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !320) #5, !dbg !317
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxB}, i64 0, metadata !321) #5, !dbg !322
  call void @llvm.dbg.declare(metadata !{double** %entriesA.i}, metadata !225) #5, !dbg !323
  call void @llvm.dbg.declare(metadata !{double** %entriesB.i}, metadata !226) #5, !dbg !323
  call void @llvm.dbg.declare(metadata !{i32* %inc1.i}, metadata !229) #5, !dbg !324
  call void @llvm.dbg.declare(metadata !{i32* %inc2.i}, metadata !230) #5, !dbg !324
  call void @llvm.dbg.declare(metadata !{i32* %ncolB.i}, metadata !236) #5, !dbg !325
  call void @llvm.dbg.declare(metadata !{i32* %nentA.i}, metadata !237) #5, !dbg !325
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i}, metadata !238) #5, !dbg !325
  call void @llvm.dbg.declare(metadata !{i32* %nrowB.i}, metadata !239) #5, !dbg !325
  call void @llvm.dbg.declare(metadata !{i32** %firstlocsA.i}, metadata !240) #5, !dbg !326
  call void @llvm.dbg.declare(metadata !{i32** %sizesA.i}, metadata !241) #5, !dbg !326
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i, i32* %nentA.i, i32** %firstlocsA.i, i32** %sizesA.i, double** %entriesA.i) #6, !dbg !327
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i, i32* %ncolB.i, i32* %inc1.i, i32* %inc2.i, double** %entriesB.i) #6, !dbg !328
  call void @llvm.dbg.value(metadata !{double** %entriesB.i}, i64 0, metadata !329) #5, !dbg !330
  call void @llvm.dbg.value(metadata !{double** %entriesB.i}, i64 0, metadata !226), !dbg !330
  %19 = load double** %entriesB.i, align 8, !dbg !330, !tbaa !301
  call void @llvm.dbg.value(metadata !{double* %19}, i64 0, metadata !331) #5, !dbg !330
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !332) #5, !dbg !333
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i}, i64 0, metadata !335) #5, !dbg !333
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i}, i64 0, metadata !236), !dbg !333
  %20 = load i32* %ncolB.i, align 4, !dbg !333, !tbaa !306
  %sub235.i = add nsw i32 %20, -2, !dbg !333
  %cmp236.i = icmp sgt i32 %sub235.i, 0, !dbg !333
  br i1 %cmp236.i, label %for.body.lr.ph.i, label %for.end45.i, !dbg !333

for.body.lr.ph.i:                                 ; preds = %sw.bb15
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i}, i64 0, metadata !336) #5, !dbg !337
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i}, i64 0, metadata !239), !dbg !337
  %21 = load i32* %nrowB.i, align 4, !dbg !337, !tbaa !306
  %idx.ext.i = sext i32 %21 to i64, !dbg !337
  %add.ptr.sum.i = shl nsw i64 %idx.ext.i, 1, !dbg !339
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !340) #5, !dbg !341
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !238), !dbg !341
  %22 = load i32* %nrowA.i, align 4, !dbg !341, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32* %nentA.i}, i64 0, metadata !343) #5, !dbg !341
  call void @llvm.dbg.value(metadata !{i32* %nentA.i}, i64 0, metadata !237), !dbg !341
  %23 = load i32* %nentA.i, align 4, !dbg !341, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i}, i64 0, metadata !344) #5, !dbg !345
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i}, i64 0, metadata !241), !dbg !345
  %24 = load i32** %sizesA.i, align 8, !dbg !345, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i}, i64 0, metadata !347) #5, !dbg !348
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i}, i64 0, metadata !240), !dbg !348
  %25 = load i32** %firstlocsA.i, align 8, !dbg !348, !tbaa !301
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !350) #5, !dbg !351
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !225), !dbg !351
  %26 = load double** %entriesA.i, align 8, !dbg !351, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i}, i64 0, metadata !336) #5, !dbg !354
  %add.ptr2.sum.i = add i64 %add.ptr.sum.i, %idx.ext.i, !dbg !354
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i}, i64 0, metadata !335) #5, !dbg !333
  br label %for.body.i, !dbg !333

for.body.i:                                       ; preds = %for.end40.i, %for.body.lr.ph.i
  %jcolB.0238.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add44.i, %for.end40.i ]
  %colB0.0237.i = phi double* [ %19, %for.body.lr.ph.i ], [ %add.ptr42.i, %for.end40.i ]
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i}, i64 0, metadata !336) #5, !dbg !337
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !340) #5, !dbg !341
  call void @llvm.dbg.value(metadata !{i32* %nentA.i}, i64 0, metadata !343) #5, !dbg !341
  call void @llvm.dbg.value(metadata !{i32 %23}, i64 0, metadata !355) #5, !dbg !341
  br label %for.cond4.outer.i, !dbg !341

for.cond4.outer.i:                                ; preds = %if.then.i, %for.body24.i, %for.body.i
  %colstart.0.ph.i = phi i32 [ %23, %for.body.i ], [ %sub15.i, %for.body24.i ], [ %sub15.i, %if.then.i ]
  %irowA.0.in.ph.i = phi i32 [ %22, %for.body.i ], [ %irowA.0.i, %for.body24.i ], [ %irowA.0.i, %if.then.i ]
  %27 = sext i32 %irowA.0.in.ph.i to i64
  br label %for.cond4.i

for.cond4.i:                                      ; preds = %for.body6.i, %for.cond4.outer.i
  %indvars.iv257.i = phi i64 [ %27, %for.cond4.outer.i ], [ %indvars.iv.next258.i, %for.body6.i ]
  %irowA.0.in.i = phi i32 [ %irowA.0.in.ph.i, %for.cond4.outer.i ], [ %irowA.0.i, %for.body6.i ]
  %indvars.iv.next258.i = add i64 %indvars.iv257.i, -1, !dbg !345
  %irowA.0.i = add nsw i32 %irowA.0.in.i, -1, !dbg !341
  %28 = trunc i64 %indvars.iv257.i to i32, !dbg !341
  %cmp5.i = icmp sgt i32 %28, 0, !dbg !341
  br i1 %cmp5.i, label %for.body6.i, label %for.end40.i, !dbg !341

for.body6.i:                                      ; preds = %for.cond4.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i}, i64 0, metadata !344) #5, !dbg !345
  %arrayidx.i = getelementptr inbounds i32* %24, i64 %indvars.iv.next258.i, !dbg !345
  %29 = load i32* %arrayidx.i, align 4, !dbg !345, !tbaa !306
  %cmp7.i = icmp sgt i32 %29, 0, !dbg !345
  br i1 %cmp7.i, label %if.then.i, label %for.cond4.i, !dbg !345

if.then.i:                                        ; preds = %for.body6.i
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i}, i64 0, metadata !347) #5, !dbg !348
  %arrayidx9.i = getelementptr inbounds i32* %25, i64 %indvars.iv.next258.i, !dbg !348
  %30 = load i32* %arrayidx9.i, align 4, !dbg !348, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %30}, i64 0, metadata !356) #5, !dbg !348
  %add.i = add i32 %29, -1, !dbg !357
  %sub12.i = add i32 %add.i, %30, !dbg !357
  call void @llvm.dbg.value(metadata !{i32 %sub12.i}, i64 0, metadata !358) #5, !dbg !357
  %sub13.neg.i = add i32 %colstart.0.ph.i, -1, !dbg !359
  %add14.neg.i = add i32 %sub13.neg.i, %30, !dbg !359
  %sub15.i = sub i32 %add14.neg.i, %sub12.i, !dbg !359
  call void @llvm.dbg.value(metadata !{i32 %sub15.i}, i64 0, metadata !355) #5, !dbg !359
  %arrayidx17.i = getelementptr inbounds double* %colB0.0237.i, i64 %indvars.iv.next258.i, !dbg !360
  %31 = load double* %arrayidx17.i, align 8, !dbg !360, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %31}, i64 0, metadata !362) #5, !dbg !360
  %add.ptr.sum213.i = add i64 %indvars.iv.next258.i, %idx.ext.i, !dbg !363
  %arrayidx19.i = getelementptr inbounds double* %colB0.0237.i, i64 %add.ptr.sum213.i, !dbg !363
  %32 = load double* %arrayidx19.i, align 8, !dbg !363, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %32}, i64 0, metadata !364) #5, !dbg !363
  %add.ptr2.sum214.i = add i64 %indvars.iv.next258.i, %add.ptr.sum.i, !dbg !365
  %arrayidx21.i = getelementptr inbounds double* %colB0.0237.i, i64 %add.ptr2.sum214.i, !dbg !365
  %33 = load double* %arrayidx21.i, align 8, !dbg !365, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %33}, i64 0, metadata !366) #5, !dbg !365
  call void @llvm.dbg.value(metadata !{i32 %30}, i64 0, metadata !367) #5, !dbg !368
  call void @llvm.dbg.value(metadata !{i32 %sub15.i}, i64 0, metadata !369) #5, !dbg !368
  %cmp23229.i = icmp sgt i32 %30, %sub12.i, !dbg !368
  br i1 %cmp23229.i, label %for.cond4.outer.i, label %for.body24.lr.ph.i, !dbg !368

for.body24.lr.ph.i:                               ; preds = %if.then.i
  %34 = sub i32 %colstart.0.ph.i, %29, !dbg !368
  %35 = sext i32 %34 to i64
  %36 = sext i32 %30 to i64, !dbg !368
  br label %for.body24.i, !dbg !368

for.body24.i:                                     ; preds = %for.body24.i, %for.body24.lr.ph.i
  %indvars.iv261.i = phi i64 [ %indvars.iv.next262.i, %for.body24.i ], [ %36, %for.body24.lr.ph.i ], !dbg !368
  %indvars.iv259.i = phi i64 [ %indvars.iv.next260.i, %for.body24.i ], [ %35, %for.body24.lr.ph.i ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !350) #5, !dbg !351
  %arrayidx26.i = getelementptr inbounds double* %26, i64 %indvars.iv259.i, !dbg !351
  %37 = load double* %arrayidx26.i, align 8, !dbg !351, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %37}, i64 0, metadata !370) #5, !dbg !351
  %mul.i = fmul double %31, %37, !dbg !371
  %arrayidx28.i = getelementptr inbounds double* %colB0.0237.i, i64 %indvars.iv261.i, !dbg !371
  %38 = load double* %arrayidx28.i, align 8, !dbg !371, !tbaa !361
  %sub29.i = fsub double %38, %mul.i, !dbg !371
  store double %sub29.i, double* %arrayidx28.i, align 8, !dbg !371, !tbaa !361
  %mul30.i = fmul double %32, %37, !dbg !372
  %add.ptr.sum215.i = add i64 %indvars.iv261.i, %idx.ext.i, !dbg !372
  %arrayidx32.i = getelementptr inbounds double* %colB0.0237.i, i64 %add.ptr.sum215.i, !dbg !372
  %39 = load double* %arrayidx32.i, align 8, !dbg !372, !tbaa !361
  %sub33.i = fsub double %39, %mul30.i, !dbg !372
  store double %sub33.i, double* %arrayidx32.i, align 8, !dbg !372, !tbaa !361
  %mul34.i = fmul double %33, %37, !dbg !373
  %add.ptr2.sum216.i = add i64 %indvars.iv261.i, %add.ptr.sum.i, !dbg !373
  %arrayidx36.i = getelementptr inbounds double* %colB0.0237.i, i64 %add.ptr2.sum216.i, !dbg !373
  %40 = load double* %arrayidx36.i, align 8, !dbg !373, !tbaa !361
  %sub37.i = fsub double %40, %mul34.i, !dbg !373
  store double %sub37.i, double* %arrayidx36.i, align 8, !dbg !373, !tbaa !361
  %indvars.iv.next262.i = add i64 %indvars.iv261.i, 1, !dbg !368
  %indvars.iv.next260.i = add i64 %indvars.iv259.i, 1, !dbg !368
  %41 = trunc i64 %indvars.iv261.i to i32, !dbg !368
  %cmp23.i = icmp slt i32 %41, %sub12.i, !dbg !368
  br i1 %cmp23.i, label %for.body24.i, label %for.cond4.outer.i, !dbg !368

for.end40.i:                                      ; preds = %for.cond4.i
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i}, i64 0, metadata !336) #5, !dbg !354
  %add.ptr42.i = getelementptr inbounds double* %colB0.0237.i, i64 %add.ptr2.sum.i, !dbg !354
  call void @llvm.dbg.value(metadata !{double* %add.ptr42.i}, i64 0, metadata !331) #5, !dbg !354
  %add44.i = add nsw i32 %jcolB.0238.i, 3, !dbg !333
  call void @llvm.dbg.value(metadata !{i32 %add44.i}, i64 0, metadata !332) #5, !dbg !333
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i}, i64 0, metadata !335) #5, !dbg !333
  %cmp.i = icmp slt i32 %add44.i, %sub235.i, !dbg !333
  br i1 %cmp.i, label %for.body.i, label %for.end45.i, !dbg !333

for.end45.i:                                      ; preds = %for.end40.i, %sw.bb15
  %jcolB.0.lcssa.i = phi i32 [ 0, %sw.bb15 ], [ %add44.i, %for.end40.i ]
  %colB0.0.lcssa.i = phi double* [ %19, %sw.bb15 ], [ %add.ptr42.i, %for.end40.i ]
  %cmp47.i = icmp eq i32 %jcolB.0.lcssa.i, %sub235.i, !dbg !374
  br i1 %cmp47.i, label %if.then48.i, label %if.else.i, !dbg !374

if.then48.i:                                      ; preds = %for.end45.i
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i}, i64 0, metadata !336) #5, !dbg !375
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i}, i64 0, metadata !239), !dbg !375
  %42 = load i32* %nrowB.i, align 4, !dbg !375, !tbaa !306
  %idx.ext49.i = sext i32 %42 to i64, !dbg !375
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !340) #5, !dbg !377
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !238), !dbg !377
  %43 = load i32* %nrowA.i, align 4, !dbg !377, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32* %nentA.i}, i64 0, metadata !343) #5, !dbg !377
  call void @llvm.dbg.value(metadata !{i32* %nentA.i}, i64 0, metadata !237), !dbg !377
  %44 = load i32* %nentA.i, align 4, !dbg !377, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %44}, i64 0, metadata !355) #5, !dbg !377
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i}, i64 0, metadata !344) #5, !dbg !379
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i}, i64 0, metadata !241), !dbg !379
  %45 = load i32** %sizesA.i, align 8, !dbg !379, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i}, i64 0, metadata !347) #5, !dbg !381
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i}, i64 0, metadata !240), !dbg !381
  %46 = load i32** %firstlocsA.i, align 8, !dbg !381, !tbaa !301
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !350) #5, !dbg !383
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !225), !dbg !383
  %47 = load double** %entriesA.i, align 8, !dbg !383, !tbaa !301
  br label %for.cond52.outer.i, !dbg !377

for.cond52.outer.i:                               ; preds = %if.then58.i, %for.body74.i, %if.then48.i
  %colstart.2.ph.i = phi i32 [ %44, %if.then48.i ], [ %sub67.i, %for.body74.i ], [ %sub67.i, %if.then58.i ]
  %irowA.1.in.ph.i = phi i32 [ %43, %if.then48.i ], [ %irowA.1.i, %for.body74.i ], [ %irowA.1.i, %if.then58.i ]
  %48 = sext i32 %irowA.1.in.ph.i to i64
  br label %for.cond52.i

for.cond52.i:                                     ; preds = %for.body54.i, %for.cond52.outer.i
  %indvars.iv.i = phi i64 [ %48, %for.cond52.outer.i ], [ %indvars.iv.next.i, %for.body54.i ]
  %irowA.1.in.i = phi i32 [ %irowA.1.in.ph.i, %for.cond52.outer.i ], [ %irowA.1.i, %for.body54.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1, !dbg !379
  %irowA.1.i = add nsw i32 %irowA.1.in.i, -1, !dbg !377
  %49 = trunc i64 %indvars.iv.i to i32, !dbg !377
  %cmp53.i = icmp sgt i32 %49, 0, !dbg !377
  br i1 %cmp53.i, label %for.body54.i, label %sw.epilog34, !dbg !377

for.body54.i:                                     ; preds = %for.cond52.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i}, i64 0, metadata !344) #5, !dbg !379
  %arrayidx56.i = getelementptr inbounds i32* %45, i64 %indvars.iv.next.i, !dbg !379
  %50 = load i32* %arrayidx56.i, align 4, !dbg !379, !tbaa !306
  %cmp57.i = icmp sgt i32 %50, 0, !dbg !379
  br i1 %cmp57.i, label %if.then58.i, label %for.cond52.i, !dbg !379

if.then58.i:                                      ; preds = %for.body54.i
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i}, i64 0, metadata !347) #5, !dbg !381
  %arrayidx60.i = getelementptr inbounds i32* %46, i64 %indvars.iv.next.i, !dbg !381
  %51 = load i32* %arrayidx60.i, align 4, !dbg !381, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %51}, i64 0, metadata !356) #5, !dbg !381
  %add63.i = add i32 %50, -1, !dbg !386
  %sub64.i = add i32 %add63.i, %51, !dbg !386
  call void @llvm.dbg.value(metadata !{i32 %sub64.i}, i64 0, metadata !358) #5, !dbg !386
  %sub65.neg.i = add i32 %colstart.2.ph.i, -1, !dbg !387
  %add66.neg.i = add i32 %sub65.neg.i, %51, !dbg !387
  %sub67.i = sub i32 %add66.neg.i, %sub64.i, !dbg !387
  call void @llvm.dbg.value(metadata !{i32 %sub67.i}, i64 0, metadata !355) #5, !dbg !387
  %arrayidx69.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %indvars.iv.next.i, !dbg !388
  %52 = load double* %arrayidx69.i, align 8, !dbg !388, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %52}, i64 0, metadata !362) #5, !dbg !388
  %add.ptr50.sum.i = add i64 %indvars.iv.next.i, %idx.ext49.i, !dbg !389
  %arrayidx71.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %add.ptr50.sum.i, !dbg !389
  %53 = load double* %arrayidx71.i, align 8, !dbg !389, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %53}, i64 0, metadata !364) #5, !dbg !389
  call void @llvm.dbg.value(metadata !{i32 %51}, i64 0, metadata !367) #5, !dbg !390
  call void @llvm.dbg.value(metadata !{i32 %sub67.i}, i64 0, metadata !369) #5, !dbg !390
  %cmp73219.i = icmp sgt i32 %51, %sub64.i, !dbg !390
  br i1 %cmp73219.i, label %for.cond52.outer.i, label %for.body74.lr.ph.i, !dbg !390

for.body74.lr.ph.i:                               ; preds = %if.then58.i
  %54 = sub i32 %colstart.2.ph.i, %50, !dbg !390
  %55 = sext i32 %54 to i64
  %56 = sext i32 %51 to i64, !dbg !390
  br label %for.body74.i, !dbg !390

for.body74.i:                                     ; preds = %for.body74.i, %for.body74.lr.ph.i
  %indvars.iv245.i = phi i64 [ %indvars.iv.next246.i, %for.body74.i ], [ %56, %for.body74.lr.ph.i ], !dbg !390
  %indvars.iv243.i = phi i64 [ %indvars.iv.next244.i, %for.body74.i ], [ %55, %for.body74.lr.ph.i ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !350) #5, !dbg !383
  %arrayidx76.i = getelementptr inbounds double* %47, i64 %indvars.iv243.i, !dbg !383
  %57 = load double* %arrayidx76.i, align 8, !dbg !383, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %57}, i64 0, metadata !370) #5, !dbg !383
  %mul77.i = fmul double %52, %57, !dbg !391
  %arrayidx79.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %indvars.iv245.i, !dbg !391
  %58 = load double* %arrayidx79.i, align 8, !dbg !391, !tbaa !361
  %sub80.i = fsub double %58, %mul77.i, !dbg !391
  store double %sub80.i, double* %arrayidx79.i, align 8, !dbg !391, !tbaa !361
  %mul81.i = fmul double %53, %57, !dbg !392
  %add.ptr50.sum212.i = add i64 %indvars.iv245.i, %idx.ext49.i, !dbg !392
  %arrayidx83.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %add.ptr50.sum212.i, !dbg !392
  %59 = load double* %arrayidx83.i, align 8, !dbg !392, !tbaa !361
  %sub84.i = fsub double %59, %mul81.i, !dbg !392
  store double %sub84.i, double* %arrayidx83.i, align 8, !dbg !392, !tbaa !361
  %indvars.iv.next246.i = add i64 %indvars.iv245.i, 1, !dbg !390
  %indvars.iv.next244.i = add i64 %indvars.iv243.i, 1, !dbg !390
  %60 = trunc i64 %indvars.iv245.i to i32, !dbg !390
  %cmp73.i = icmp slt i32 %60, %sub64.i, !dbg !390
  br i1 %cmp73.i, label %for.body74.i, label %for.cond52.outer.i, !dbg !390

if.else.i:                                        ; preds = %for.end45.i
  %sub93.i = add nsw i32 %20, -1, !dbg !393
  %cmp94.i = icmp eq i32 %jcolB.0.lcssa.i, %sub93.i, !dbg !393
  br i1 %cmp94.i, label %if.then95.i, label %sw.epilog34, !dbg !393

if.then95.i:                                      ; preds = %if.else.i
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !340) #5, !dbg !394
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i}, i64 0, metadata !238), !dbg !394
  %61 = load i32* %nrowA.i, align 4, !dbg !394, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32* %nentA.i}, i64 0, metadata !343) #5, !dbg !394
  call void @llvm.dbg.value(metadata !{i32* %nentA.i}, i64 0, metadata !237), !dbg !394
  %62 = load i32* %nentA.i, align 4, !dbg !394, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %62}, i64 0, metadata !355) #5, !dbg !394
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i}, i64 0, metadata !344) #5, !dbg !397
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i}, i64 0, metadata !241), !dbg !397
  %63 = load i32** %sizesA.i, align 8, !dbg !397, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i}, i64 0, metadata !347) #5, !dbg !399
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i}, i64 0, metadata !240), !dbg !399
  %64 = load i32** %firstlocsA.i, align 8, !dbg !399, !tbaa !301
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !350) #5, !dbg !401
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !225), !dbg !401
  %65 = load double** %entriesA.i, align 8, !dbg !401, !tbaa !301
  br label %for.cond97.outer.i, !dbg !394

for.cond97.outer.i:                               ; preds = %if.then103.i, %for.body117.i, %if.then95.i
  %colstart.4.ph.i = phi i32 [ %62, %if.then95.i ], [ %sub112.i, %for.body117.i ], [ %sub112.i, %if.then103.i ]
  %irowA.2.in.ph.i = phi i32 [ %61, %if.then95.i ], [ %irowA.2.i, %for.body117.i ], [ %irowA.2.i, %if.then103.i ]
  %66 = sext i32 %irowA.2.in.ph.i to i64
  br label %for.cond97.i

for.cond97.i:                                     ; preds = %for.body99.i, %for.cond97.outer.i
  %indvars.iv249.i = phi i64 [ %66, %for.cond97.outer.i ], [ %indvars.iv.next250.i, %for.body99.i ]
  %irowA.2.in.i = phi i32 [ %irowA.2.in.ph.i, %for.cond97.outer.i ], [ %irowA.2.i, %for.body99.i ]
  %indvars.iv.next250.i = add i64 %indvars.iv249.i, -1, !dbg !397
  %irowA.2.i = add nsw i32 %irowA.2.in.i, -1, !dbg !394
  %67 = trunc i64 %indvars.iv249.i to i32, !dbg !394
  %cmp98.i = icmp sgt i32 %67, 0, !dbg !394
  br i1 %cmp98.i, label %for.body99.i, label %sw.epilog34, !dbg !394

for.body99.i:                                     ; preds = %for.cond97.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i}, i64 0, metadata !344) #5, !dbg !397
  %arrayidx101.i = getelementptr inbounds i32* %63, i64 %indvars.iv.next250.i, !dbg !397
  %68 = load i32* %arrayidx101.i, align 4, !dbg !397, !tbaa !306
  %cmp102.i = icmp sgt i32 %68, 0, !dbg !397
  br i1 %cmp102.i, label %if.then103.i, label %for.cond97.i, !dbg !397

if.then103.i:                                     ; preds = %for.body99.i
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i}, i64 0, metadata !347) #5, !dbg !399
  %arrayidx105.i = getelementptr inbounds i32* %64, i64 %indvars.iv.next250.i, !dbg !399
  %69 = load i32* %arrayidx105.i, align 4, !dbg !399, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %69}, i64 0, metadata !356) #5, !dbg !399
  %add108.i = add i32 %68, -1, !dbg !404
  %sub109.i = add i32 %add108.i, %69, !dbg !404
  call void @llvm.dbg.value(metadata !{i32 %sub109.i}, i64 0, metadata !358) #5, !dbg !404
  %sub110.neg.i = add i32 %colstart.4.ph.i, -1, !dbg !405
  %add111.neg.i = add i32 %sub110.neg.i, %69, !dbg !405
  %sub112.i = sub i32 %add111.neg.i, %sub109.i, !dbg !405
  call void @llvm.dbg.value(metadata !{i32 %sub112.i}, i64 0, metadata !355) #5, !dbg !405
  %arrayidx114.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %indvars.iv.next250.i, !dbg !406
  %70 = load double* %arrayidx114.i, align 8, !dbg !406, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %70}, i64 0, metadata !362) #5, !dbg !406
  call void @llvm.dbg.value(metadata !{i32 %69}, i64 0, metadata !367) #5, !dbg !407
  call void @llvm.dbg.value(metadata !{i32 %sub112.i}, i64 0, metadata !369) #5, !dbg !407
  %cmp116223.i = icmp sgt i32 %69, %sub109.i, !dbg !407
  br i1 %cmp116223.i, label %for.cond97.outer.i, label %for.body117.lr.ph.i, !dbg !407

for.body117.lr.ph.i:                              ; preds = %if.then103.i
  %71 = sub i32 %colstart.4.ph.i, %68, !dbg !407
  %72 = sext i32 %71 to i64
  %73 = sext i32 %69 to i64, !dbg !407
  br label %for.body117.i, !dbg !407

for.body117.i:                                    ; preds = %for.body117.i, %for.body117.lr.ph.i
  %indvars.iv253.i = phi i64 [ %indvars.iv.next254.i, %for.body117.i ], [ %73, %for.body117.lr.ph.i ], !dbg !407
  %indvars.iv251.i = phi i64 [ %indvars.iv.next252.i, %for.body117.i ], [ %72, %for.body117.lr.ph.i ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i}, i64 0, metadata !350) #5, !dbg !401
  %arrayidx119.i = getelementptr inbounds double* %65, i64 %indvars.iv251.i, !dbg !401
  %74 = load double* %arrayidx119.i, align 8, !dbg !401, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %74}, i64 0, metadata !370) #5, !dbg !401
  %mul120.i = fmul double %70, %74, !dbg !408
  %arrayidx122.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %indvars.iv253.i, !dbg !408
  %75 = load double* %arrayidx122.i, align 8, !dbg !408, !tbaa !361
  %sub123.i = fsub double %75, %mul120.i, !dbg !408
  store double %sub123.i, double* %arrayidx122.i, align 8, !dbg !408, !tbaa !361
  %indvars.iv.next254.i = add i64 %indvars.iv253.i, 1, !dbg !407
  %indvars.iv.next252.i = add i64 %indvars.iv251.i, 1, !dbg !407
  %76 = trunc i64 %indvars.iv253.i to i32, !dbg !407
  %cmp116.i = icmp slt i32 %76, %sub109.i, !dbg !407
  br i1 %cmp116.i, label %for.body117.i, label %for.cond97.outer.i, !dbg !407

sw.bb16:                                          ; preds = %sw.bb
  %77 = bitcast double** %entriesA.i75 to i8*, !dbg !409
  call void @llvm.lifetime.start(i64 8, i8* %77) #5, !dbg !409
  %78 = bitcast double** %entriesB.i76 to i8*, !dbg !409
  call void @llvm.lifetime.start(i64 8, i8* %78) #5, !dbg !409
  %79 = bitcast i32* %inc1.i77 to i8*, !dbg !409
  call void @llvm.lifetime.start(i64 4, i8* %79) #5, !dbg !409
  %80 = bitcast i32* %inc2.i78 to i8*, !dbg !409
  call void @llvm.lifetime.start(i64 4, i8* %80) #5, !dbg !409
  %81 = bitcast i32* %ncolB.i79 to i8*, !dbg !409
  call void @llvm.lifetime.start(i64 4, i8* %81) #5, !dbg !409
  %82 = bitcast i32* %nentA.i80 to i8*, !dbg !409
  call void @llvm.lifetime.start(i64 4, i8* %82) #5, !dbg !409
  %83 = bitcast i32* %nrowA.i81 to i8*, !dbg !409
  call void @llvm.lifetime.start(i64 4, i8* %83) #5, !dbg !409
  %84 = bitcast i32* %nrowB.i82 to i8*, !dbg !409
  call void @llvm.lifetime.start(i64 4, i8* %84) #5, !dbg !409
  %85 = bitcast i32** %indicesA.i to i8*, !dbg !409
  call void @llvm.lifetime.start(i64 8, i8* %85) #5, !dbg !409
  %86 = bitcast i32** %sizesA.i83 to i8*, !dbg !409
  call void @llvm.lifetime.start(i64 8, i8* %86) #5, !dbg !409
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !411) #5, !dbg !409
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxB}, i64 0, metadata !412) #5, !dbg !413
  call void @llvm.dbg.declare(metadata !{double** %entriesA.i75}, metadata !197) #5, !dbg !414
  call void @llvm.dbg.declare(metadata !{double** %entriesB.i76}, metadata !198) #5, !dbg !414
  call void @llvm.dbg.declare(metadata !{i32* %inc1.i77}, metadata !201) #5, !dbg !415
  call void @llvm.dbg.declare(metadata !{i32* %inc2.i78}, metadata !202) #5, !dbg !415
  call void @llvm.dbg.declare(metadata !{i32* %ncolB.i79}, metadata !207) #5, !dbg !416
  call void @llvm.dbg.declare(metadata !{i32* %nentA.i80}, metadata !208) #5, !dbg !416
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i81}, metadata !209) #5, !dbg !416
  call void @llvm.dbg.declare(metadata !{i32* %nrowB.i82}, metadata !210) #5, !dbg !416
  call void @llvm.dbg.declare(metadata !{i32** %indicesA.i}, metadata !212) #5, !dbg !417
  call void @llvm.dbg.declare(metadata !{i32** %sizesA.i83}, metadata !213) #5, !dbg !417
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i81, i32* %nentA.i80, i32** %sizesA.i83, i32** %indicesA.i, double** %entriesA.i75) #6, !dbg !418
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i82, i32* %ncolB.i79, i32* %inc1.i77, i32* %inc2.i78, double** %entriesB.i76) #6, !dbg !419
  call void @llvm.dbg.value(metadata !{double** %entriesB.i76}, i64 0, metadata !420) #5, !dbg !421
  call void @llvm.dbg.value(metadata !{double** %entriesB.i76}, i64 0, metadata !198), !dbg !421
  %87 = load double** %entriesB.i76, align 8, !dbg !421, !tbaa !301
  call void @llvm.dbg.value(metadata !{double* %87}, i64 0, metadata !422) #5, !dbg !421
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !423) #5, !dbg !424
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i79}, i64 0, metadata !426) #5, !dbg !424
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i79}, i64 0, metadata !207), !dbg !424
  %88 = load i32* %ncolB.i79, align 4, !dbg !424, !tbaa !306
  %sub203.i = add nsw i32 %88, -2, !dbg !424
  %cmp204.i = icmp sgt i32 %sub203.i, 0, !dbg !424
  br i1 %cmp204.i, label %for.body.lr.ph.i87, label %for.end39.i, !dbg !424

for.body.lr.ph.i87:                               ; preds = %sw.bb16
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i82}, i64 0, metadata !427) #5, !dbg !428
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i82}, i64 0, metadata !210), !dbg !428
  %89 = load i32* %nrowB.i82, align 4, !dbg !428, !tbaa !306
  %idx.ext.i84 = sext i32 %89 to i64, !dbg !428
  %add.ptr.sum.i85 = shl nsw i64 %idx.ext.i84, 1, !dbg !430
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i81}, i64 0, metadata !431) #5, !dbg !432
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i81}, i64 0, metadata !209), !dbg !432
  %90 = load i32* %nrowA.i81, align 4, !dbg !432, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32* %nentA.i80}, i64 0, metadata !434) #5, !dbg !432
  call void @llvm.dbg.value(metadata !{i32* %nentA.i80}, i64 0, metadata !208), !dbg !432
  %91 = load i32* %nentA.i80, align 4, !dbg !432, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i83}, i64 0, metadata !435) #5, !dbg !436
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i83}, i64 0, metadata !213), !dbg !436
  %92 = load i32** %sizesA.i83, align 8, !dbg !436, !tbaa !301
  call void @llvm.dbg.value(metadata !{double** %entriesA.i75}, i64 0, metadata !438) #5, !dbg !439
  call void @llvm.dbg.value(metadata !{double** %entriesA.i75}, i64 0, metadata !197), !dbg !439
  %93 = load double** %entriesA.i75, align 8, !dbg !439, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i}, i64 0, metadata !443) #5, !dbg !444
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i}, i64 0, metadata !212), !dbg !444
  %94 = load i32** %indicesA.i, align 8, !dbg !444, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i82}, i64 0, metadata !427) #5, !dbg !445
  %add.ptr2.sum.i86 = add i64 %add.ptr.sum.i85, %idx.ext.i84, !dbg !445
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i79}, i64 0, metadata !426) #5, !dbg !424
  br label %for.body.i88, !dbg !424

for.body.i88:                                     ; preds = %for.end35.i, %for.body.lr.ph.i87
  %jcolB.0206.i = phi i32 [ 0, %for.body.lr.ph.i87 ], [ %add.i99, %for.end35.i ]
  %colB0.0205.i = phi double* [ %87, %for.body.lr.ph.i87 ], [ %add.ptr37.i, %for.end35.i ]
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i82}, i64 0, metadata !427) #5, !dbg !428
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i81}, i64 0, metadata !431) #5, !dbg !432
  call void @llvm.dbg.value(metadata !{i32* %nentA.i80}, i64 0, metadata !434) #5, !dbg !432
  call void @llvm.dbg.value(metadata !{i32 %91}, i64 0, metadata !446) #5, !dbg !432
  br label %for.cond4.outer.i90, !dbg !432

for.cond4.outer.i90:                              ; preds = %for.body17.i, %for.body.i88
  %colstart.0.ph.i89 = phi i32 [ %91, %for.body.i88 ], [ %sub8.i, %for.body17.i ]
  %jcolA.0.in.ph.i = phi i32 [ %90, %for.body.i88 ], [ %jcolA.0.i, %for.body17.i ]
  %95 = sext i32 %jcolA.0.in.ph.i to i64
  br label %for.cond4.i92

for.cond4.i92:                                    ; preds = %for.body6.i95, %for.cond4.outer.i90
  %indvars.iv222.i = phi i64 [ %95, %for.cond4.outer.i90 ], [ %indvars.iv.next223.i, %for.body6.i95 ]
  %jcolA.0.in.i = phi i32 [ %jcolA.0.in.ph.i, %for.cond4.outer.i90 ], [ %jcolA.0.i, %for.body6.i95 ]
  %indvars.iv.next223.i = add i64 %indvars.iv222.i, -1, !dbg !436
  %jcolA.0.i = add nsw i32 %jcolA.0.in.i, -1, !dbg !432
  %96 = trunc i64 %indvars.iv222.i to i32, !dbg !432
  %cmp5.i91 = icmp sgt i32 %96, 0, !dbg !432
  br i1 %cmp5.i91, label %for.body6.i95, label %for.end35.i, !dbg !432

for.body6.i95:                                    ; preds = %for.cond4.i92
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i83}, i64 0, metadata !435) #5, !dbg !436
  %arrayidx.i93 = getelementptr inbounds i32* %92, i64 %indvars.iv.next223.i, !dbg !436
  %97 = load i32* %arrayidx.i93, align 4, !dbg !436, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %97}, i64 0, metadata !447) #5, !dbg !436
  %cmp7.i94 = icmp sgt i32 %97, 0, !dbg !436
  br i1 %cmp7.i94, label %for.body17.lr.ph.i, label %for.cond4.i92, !dbg !436

for.body17.lr.ph.i:                               ; preds = %for.body6.i95
  %sub8.i = sub i32 %colstart.0.ph.i89, %97, !dbg !448
  call void @llvm.dbg.value(metadata !{i32 %sub8.i}, i64 0, metadata !446) #5, !dbg !448
  %arrayidx10.i = getelementptr inbounds double* %colB0.0205.i, i64 %indvars.iv.next223.i, !dbg !449
  %98 = load double* %arrayidx10.i, align 8, !dbg !449, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %98}, i64 0, metadata !450) #5, !dbg !449
  %add.ptr.sum183.i = add i64 %indvars.iv.next223.i, %idx.ext.i84, !dbg !451
  %arrayidx12.i = getelementptr inbounds double* %colB0.0205.i, i64 %add.ptr.sum183.i, !dbg !451
  %99 = load double* %arrayidx12.i, align 8, !dbg !451, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %99}, i64 0, metadata !452) #5, !dbg !451
  %add.ptr2.sum184.i = add i64 %indvars.iv.next223.i, %add.ptr.sum.i85, !dbg !453
  %arrayidx14.i = getelementptr inbounds double* %colB0.0205.i, i64 %add.ptr2.sum184.i, !dbg !453
  %100 = load double* %arrayidx14.i, align 8, !dbg !453, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %100}, i64 0, metadata !454) #5, !dbg !453
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !455) #5, !dbg !456
  call void @llvm.dbg.value(metadata !{i32 %sub8.i}, i64 0, metadata !457) #5, !dbg !456
  %101 = sext i32 %sub8.i to i64
  br label %for.body17.i, !dbg !456

for.body17.i:                                     ; preds = %for.body17.i, %for.body17.lr.ph.i
  %indvars.iv224.i = phi i64 [ %101, %for.body17.lr.ph.i ], [ %indvars.iv.next225.i, %for.body17.i ]
  %ii.0198.i = phi i32 [ 0, %for.body17.lr.ph.i ], [ %inc.i, %for.body17.i ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i75}, i64 0, metadata !438) #5, !dbg !439
  %arrayidx19.i96 = getelementptr inbounds double* %93, i64 %indvars.iv224.i, !dbg !439
  %102 = load double* %arrayidx19.i96, align 8, !dbg !439, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %102}, i64 0, metadata !458) #5, !dbg !439
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i}, i64 0, metadata !443) #5, !dbg !444
  %arrayidx21.i97 = getelementptr inbounds i32* %94, i64 %indvars.iv224.i, !dbg !444
  %103 = load i32* %arrayidx21.i97, align 4, !dbg !444, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %103}, i64 0, metadata !459) #5, !dbg !444
  %mul.i98 = fmul double %98, %102, !dbg !460
  %idxprom22.i = sext i32 %103 to i64, !dbg !460
  %arrayidx23.i = getelementptr inbounds double* %colB0.0205.i, i64 %idxprom22.i, !dbg !460
  %104 = load double* %arrayidx23.i, align 8, !dbg !460, !tbaa !361
  %sub24.i = fsub double %104, %mul.i98, !dbg !460
  store double %sub24.i, double* %arrayidx23.i, align 8, !dbg !460, !tbaa !361
  %mul25.i = fmul double %99, %102, !dbg !461
  %add.ptr.sum185.i = add i64 %idxprom22.i, %idx.ext.i84, !dbg !461
  %arrayidx27.i = getelementptr inbounds double* %colB0.0205.i, i64 %add.ptr.sum185.i, !dbg !461
  %105 = load double* %arrayidx27.i, align 8, !dbg !461, !tbaa !361
  %sub28.i = fsub double %105, %mul25.i, !dbg !461
  store double %sub28.i, double* %arrayidx27.i, align 8, !dbg !461, !tbaa !361
  %mul29.i = fmul double %100, %102, !dbg !462
  %add.ptr2.sum186.i = add i64 %idxprom22.i, %add.ptr.sum.i85, !dbg !462
  %arrayidx31.i = getelementptr inbounds double* %colB0.0205.i, i64 %add.ptr2.sum186.i, !dbg !462
  %106 = load double* %arrayidx31.i, align 8, !dbg !462, !tbaa !361
  %sub32.i = fsub double %106, %mul29.i, !dbg !462
  store double %sub32.i, double* %arrayidx31.i, align 8, !dbg !462, !tbaa !361
  %inc.i = add nsw i32 %ii.0198.i, 1, !dbg !456
  call void @llvm.dbg.value(metadata !{i32 %inc.i}, i64 0, metadata !455) #5, !dbg !456
  %indvars.iv.next225.i = add i64 %indvars.iv224.i, 1, !dbg !456
  %exitcond226.i = icmp eq i32 %inc.i, %97, !dbg !456
  br i1 %exitcond226.i, label %for.cond4.outer.i90, label %for.body17.i, !dbg !456

for.end35.i:                                      ; preds = %for.cond4.i92
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i82}, i64 0, metadata !427) #5, !dbg !445
  %add.ptr37.i = getelementptr inbounds double* %colB0.0205.i, i64 %add.ptr2.sum.i86, !dbg !445
  call void @llvm.dbg.value(metadata !{double* %add.ptr37.i}, i64 0, metadata !422) #5, !dbg !445
  %add.i99 = add nsw i32 %jcolB.0206.i, 3, !dbg !424
  call void @llvm.dbg.value(metadata !{i32 %add.i99}, i64 0, metadata !423) #5, !dbg !424
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i79}, i64 0, metadata !426) #5, !dbg !424
  %cmp.i100 = icmp slt i32 %add.i99, %sub203.i, !dbg !424
  br i1 %cmp.i100, label %for.body.i88, label %for.end39.i, !dbg !424

for.end39.i:                                      ; preds = %for.end35.i, %sw.bb16
  %jcolB.0.lcssa.i101 = phi i32 [ 0, %sw.bb16 ], [ %add.i99, %for.end35.i ]
  %colB0.0.lcssa.i102 = phi double* [ %87, %sw.bb16 ], [ %add.ptr37.i, %for.end35.i ]
  %cmp41.i = icmp eq i32 %jcolB.0.lcssa.i101, %sub203.i, !dbg !463
  br i1 %cmp41.i, label %if.then42.i, label %if.else.i108, !dbg !463

if.then42.i:                                      ; preds = %for.end39.i
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i82}, i64 0, metadata !427) #5, !dbg !464
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i82}, i64 0, metadata !210), !dbg !464
  %107 = load i32* %nrowB.i82, align 4, !dbg !464, !tbaa !306
  %idx.ext43.i = sext i32 %107 to i64, !dbg !464
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i81}, i64 0, metadata !431) #5, !dbg !466
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i81}, i64 0, metadata !209), !dbg !466
  %108 = load i32* %nrowA.i81, align 4, !dbg !466, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32* %nentA.i80}, i64 0, metadata !434) #5, !dbg !466
  call void @llvm.dbg.value(metadata !{i32* %nentA.i80}, i64 0, metadata !208), !dbg !466
  %109 = load i32* %nentA.i80, align 4, !dbg !466, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %109}, i64 0, metadata !446) #5, !dbg !466
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i83}, i64 0, metadata !435) #5, !dbg !468
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i83}, i64 0, metadata !213), !dbg !468
  %110 = load i32** %sizesA.i83, align 8, !dbg !468, !tbaa !301
  call void @llvm.dbg.value(metadata !{double** %entriesA.i75}, i64 0, metadata !438) #5, !dbg !470
  call void @llvm.dbg.value(metadata !{double** %entriesA.i75}, i64 0, metadata !197), !dbg !470
  %111 = load double** %entriesA.i75, align 8, !dbg !470, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i}, i64 0, metadata !443) #5, !dbg !474
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i}, i64 0, metadata !212), !dbg !474
  %112 = load i32** %indicesA.i, align 8, !dbg !474, !tbaa !301
  br label %for.cond46.outer.i, !dbg !466

for.cond46.outer.i:                               ; preds = %for.body60.i, %if.then42.i
  %colstart.2.ph.i103 = phi i32 [ %109, %if.then42.i ], [ %sub53.i, %for.body60.i ]
  %jcolA.1.in.ph.i = phi i32 [ %108, %if.then42.i ], [ %jcolA.1.i, %for.body60.i ]
  %113 = sext i32 %jcolA.1.in.ph.i to i64
  br label %for.cond46.i

for.cond46.i:                                     ; preds = %for.body48.i, %for.cond46.outer.i
  %indvars.iv.i104 = phi i64 [ %113, %for.cond46.outer.i ], [ %indvars.iv.next.i105, %for.body48.i ]
  %jcolA.1.in.i = phi i32 [ %jcolA.1.in.ph.i, %for.cond46.outer.i ], [ %jcolA.1.i, %for.body48.i ]
  %indvars.iv.next.i105 = add i64 %indvars.iv.i104, -1, !dbg !468
  %jcolA.1.i = add nsw i32 %jcolA.1.in.i, -1, !dbg !466
  %114 = trunc i64 %indvars.iv.i104 to i32, !dbg !466
  %cmp47.i106 = icmp sgt i32 %114, 0, !dbg !466
  br i1 %cmp47.i106, label %for.body48.i, label %sw.epilog34, !dbg !466

for.body48.i:                                     ; preds = %for.cond46.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i83}, i64 0, metadata !435) #5, !dbg !468
  %arrayidx50.i = getelementptr inbounds i32* %110, i64 %indvars.iv.next.i105, !dbg !468
  %115 = load i32* %arrayidx50.i, align 4, !dbg !468, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %115}, i64 0, metadata !447) #5, !dbg !468
  %cmp51.i = icmp sgt i32 %115, 0, !dbg !468
  br i1 %cmp51.i, label %for.body60.lr.ph.i, label %for.cond46.i, !dbg !468

for.body60.lr.ph.i:                               ; preds = %for.body48.i
  %sub53.i = sub i32 %colstart.2.ph.i103, %115, !dbg !475
  call void @llvm.dbg.value(metadata !{i32 %sub53.i}, i64 0, metadata !446) #5, !dbg !475
  %arrayidx55.i = getelementptr inbounds double* %colB0.0.lcssa.i102, i64 %indvars.iv.next.i105, !dbg !476
  %116 = load double* %arrayidx55.i, align 8, !dbg !476, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %116}, i64 0, metadata !450) #5, !dbg !476
  %add.ptr44.sum.i = add i64 %indvars.iv.next.i105, %idx.ext43.i, !dbg !477
  %arrayidx57.i = getelementptr inbounds double* %colB0.0.lcssa.i102, i64 %add.ptr44.sum.i, !dbg !477
  %117 = load double* %arrayidx57.i, align 8, !dbg !477, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %117}, i64 0, metadata !452) #5, !dbg !477
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !455) #5, !dbg !478
  call void @llvm.dbg.value(metadata !{i32 %sub53.i}, i64 0, metadata !457) #5, !dbg !478
  %118 = sext i32 %sub53.i to i64
  br label %for.body60.i, !dbg !478

for.body60.i:                                     ; preds = %for.body60.i, %for.body60.lr.ph.i
  %indvars.iv211.i = phi i64 [ %118, %for.body60.lr.ph.i ], [ %indvars.iv.next212.i, %for.body60.i ]
  %ii.1188.i = phi i32 [ 0, %for.body60.lr.ph.i ], [ %inc74.i, %for.body60.i ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i75}, i64 0, metadata !438) #5, !dbg !470
  %arrayidx62.i = getelementptr inbounds double* %111, i64 %indvars.iv211.i, !dbg !470
  %119 = load double* %arrayidx62.i, align 8, !dbg !470, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %119}, i64 0, metadata !458) #5, !dbg !470
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i}, i64 0, metadata !443) #5, !dbg !474
  %arrayidx64.i = getelementptr inbounds i32* %112, i64 %indvars.iv211.i, !dbg !474
  %120 = load i32* %arrayidx64.i, align 4, !dbg !474, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %120}, i64 0, metadata !459) #5, !dbg !474
  %mul65.i = fmul double %116, %119, !dbg !479
  %idxprom66.i = sext i32 %120 to i64, !dbg !479
  %arrayidx67.i = getelementptr inbounds double* %colB0.0.lcssa.i102, i64 %idxprom66.i, !dbg !479
  %121 = load double* %arrayidx67.i, align 8, !dbg !479, !tbaa !361
  %sub68.i = fsub double %121, %mul65.i, !dbg !479
  store double %sub68.i, double* %arrayidx67.i, align 8, !dbg !479, !tbaa !361
  %mul69.i = fmul double %117, %119, !dbg !480
  %add.ptr44.sum182.i = add i64 %idxprom66.i, %idx.ext43.i, !dbg !480
  %arrayidx71.i107 = getelementptr inbounds double* %colB0.0.lcssa.i102, i64 %add.ptr44.sum182.i, !dbg !480
  %122 = load double* %arrayidx71.i107, align 8, !dbg !480, !tbaa !361
  %sub72.i = fsub double %122, %mul69.i, !dbg !480
  store double %sub72.i, double* %arrayidx71.i107, align 8, !dbg !480, !tbaa !361
  %inc74.i = add nsw i32 %ii.1188.i, 1, !dbg !478
  call void @llvm.dbg.value(metadata !{i32 %inc74.i}, i64 0, metadata !455) #5, !dbg !478
  %indvars.iv.next212.i = add i64 %indvars.iv211.i, 1, !dbg !478
  %exitcond.i = icmp eq i32 %inc74.i, %115, !dbg !478
  br i1 %exitcond.i, label %for.cond46.outer.i, label %for.body60.i, !dbg !478

if.else.i108:                                     ; preds = %for.end39.i
  %sub81.i = add nsw i32 %88, -1, !dbg !481
  %cmp82.i = icmp eq i32 %jcolB.0.lcssa.i101, %sub81.i, !dbg !481
  br i1 %cmp82.i, label %if.then83.i, label %sw.epilog34, !dbg !481

if.then83.i:                                      ; preds = %if.else.i108
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i81}, i64 0, metadata !431) #5, !dbg !482
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i81}, i64 0, metadata !209), !dbg !482
  %123 = load i32* %nrowA.i81, align 4, !dbg !482, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32* %nentA.i80}, i64 0, metadata !434) #5, !dbg !482
  call void @llvm.dbg.value(metadata !{i32* %nentA.i80}, i64 0, metadata !208), !dbg !482
  %124 = load i32* %nentA.i80, align 4, !dbg !482, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %124}, i64 0, metadata !446) #5, !dbg !482
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i83}, i64 0, metadata !435) #5, !dbg !485
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i83}, i64 0, metadata !213), !dbg !485
  %125 = load i32** %sizesA.i83, align 8, !dbg !485, !tbaa !301
  call void @llvm.dbg.value(metadata !{double** %entriesA.i75}, i64 0, metadata !438) #5, !dbg !487
  call void @llvm.dbg.value(metadata !{double** %entriesA.i75}, i64 0, metadata !197), !dbg !487
  %126 = load double** %entriesA.i75, align 8, !dbg !487, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i}, i64 0, metadata !443) #5, !dbg !491
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i}, i64 0, metadata !212), !dbg !491
  %127 = load i32** %indicesA.i, align 8, !dbg !491, !tbaa !301
  br label %for.cond85.outer.i, !dbg !482

for.cond85.outer.i:                               ; preds = %for.body97.i, %if.then83.i
  %colstart.4.ph.i109 = phi i32 [ %124, %if.then83.i ], [ %sub92.i, %for.body97.i ]
  %jcolA.2.in.ph.i = phi i32 [ %123, %if.then83.i ], [ %jcolA.2.i, %for.body97.i ]
  %128 = sext i32 %jcolA.2.in.ph.i to i64
  br label %for.cond85.i

for.cond85.i:                                     ; preds = %for.body87.i, %for.cond85.outer.i
  %indvars.iv215.i = phi i64 [ %128, %for.cond85.outer.i ], [ %indvars.iv.next216.i, %for.body87.i ]
  %jcolA.2.in.i = phi i32 [ %jcolA.2.in.ph.i, %for.cond85.outer.i ], [ %jcolA.2.i, %for.body87.i ]
  %indvars.iv.next216.i = add i64 %indvars.iv215.i, -1, !dbg !485
  %jcolA.2.i = add nsw i32 %jcolA.2.in.i, -1, !dbg !482
  %129 = trunc i64 %indvars.iv215.i to i32, !dbg !482
  %cmp86.i = icmp sgt i32 %129, 0, !dbg !482
  br i1 %cmp86.i, label %for.body87.i, label %sw.epilog34, !dbg !482

for.body87.i:                                     ; preds = %for.cond85.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i83}, i64 0, metadata !435) #5, !dbg !485
  %arrayidx89.i = getelementptr inbounds i32* %125, i64 %indvars.iv.next216.i, !dbg !485
  %130 = load i32* %arrayidx89.i, align 4, !dbg !485, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %130}, i64 0, metadata !447) #5, !dbg !485
  %cmp90.i = icmp sgt i32 %130, 0, !dbg !485
  br i1 %cmp90.i, label %for.body97.lr.ph.i, label %for.cond85.i, !dbg !485

for.body97.lr.ph.i:                               ; preds = %for.body87.i
  %sub92.i = sub i32 %colstart.4.ph.i109, %130, !dbg !492
  call void @llvm.dbg.value(metadata !{i32 %sub92.i}, i64 0, metadata !446) #5, !dbg !492
  %arrayidx94.i = getelementptr inbounds double* %colB0.0.lcssa.i102, i64 %indvars.iv.next216.i, !dbg !493
  %131 = load double* %arrayidx94.i, align 8, !dbg !493, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %131}, i64 0, metadata !450) #5, !dbg !493
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !455) #5, !dbg !494
  call void @llvm.dbg.value(metadata !{i32 %sub92.i}, i64 0, metadata !457) #5, !dbg !494
  %132 = sext i32 %sub92.i to i64
  br label %for.body97.i, !dbg !494

for.body97.i:                                     ; preds = %for.body97.i, %for.body97.lr.ph.i
  %indvars.iv217.i = phi i64 [ %132, %for.body97.lr.ph.i ], [ %indvars.iv.next218.i, %for.body97.i ]
  %ii.2192.i = phi i32 [ 0, %for.body97.lr.ph.i ], [ %inc107.i, %for.body97.i ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i75}, i64 0, metadata !438) #5, !dbg !487
  %arrayidx99.i = getelementptr inbounds double* %126, i64 %indvars.iv217.i, !dbg !487
  %133 = load double* %arrayidx99.i, align 8, !dbg !487, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %133}, i64 0, metadata !458) #5, !dbg !487
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i}, i64 0, metadata !443) #5, !dbg !491
  %arrayidx101.i110 = getelementptr inbounds i32* %127, i64 %indvars.iv217.i, !dbg !491
  %134 = load i32* %arrayidx101.i110, align 4, !dbg !491, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %134}, i64 0, metadata !459) #5, !dbg !491
  %mul102.i = fmul double %131, %133, !dbg !495
  %idxprom103.i = sext i32 %134 to i64, !dbg !495
  %arrayidx104.i = getelementptr inbounds double* %colB0.0.lcssa.i102, i64 %idxprom103.i, !dbg !495
  %135 = load double* %arrayidx104.i, align 8, !dbg !495, !tbaa !361
  %sub105.i = fsub double %135, %mul102.i, !dbg !495
  store double %sub105.i, double* %arrayidx104.i, align 8, !dbg !495, !tbaa !361
  %inc107.i = add nsw i32 %ii.2192.i, 1, !dbg !494
  call void @llvm.dbg.value(metadata !{i32 %inc107.i}, i64 0, metadata !455) #5, !dbg !494
  %indvars.iv.next218.i = add i64 %indvars.iv217.i, 1, !dbg !494
  %exitcond219.i = icmp eq i32 %inc107.i, %130, !dbg !494
  br i1 %exitcond219.i, label %for.cond85.outer.i, label %for.body97.i, !dbg !494

sw.bb17:                                          ; preds = %sw.bb
  %136 = bitcast double** %entriesA.i111 to i8*, !dbg !496
  call void @llvm.lifetime.start(i64 8, i8* %136) #5, !dbg !496
  %137 = bitcast double** %entriesB.i112 to i8*, !dbg !496
  call void @llvm.lifetime.start(i64 8, i8* %137) #5, !dbg !496
  %138 = bitcast i32* %inc1.i113 to i8*, !dbg !496
  call void @llvm.lifetime.start(i64 4, i8* %138) #5, !dbg !496
  %139 = bitcast i32* %inc2.i114 to i8*, !dbg !496
  call void @llvm.lifetime.start(i64 4, i8* %139) #5, !dbg !496
  %140 = bitcast i32* %ncolB.i115 to i8*, !dbg !496
  call void @llvm.lifetime.start(i64 4, i8* %140) #5, !dbg !496
  %141 = bitcast i32* %nentA.i116 to i8*, !dbg !496
  call void @llvm.lifetime.start(i64 4, i8* %141) #5, !dbg !496
  %142 = bitcast i32* %nrowA.i117 to i8*, !dbg !496
  call void @llvm.lifetime.start(i64 4, i8* %142) #5, !dbg !496
  %143 = bitcast i32* %nrowB.i118 to i8*, !dbg !496
  call void @llvm.lifetime.start(i64 4, i8* %143) #5, !dbg !496
  %144 = bitcast i32** %firstlocsA.i119 to i8*, !dbg !496
  call void @llvm.lifetime.start(i64 8, i8* %144) #5, !dbg !496
  %145 = bitcast i32** %sizesA.i120 to i8*, !dbg !496
  call void @llvm.lifetime.start(i64 8, i8* %145) #5, !dbg !496
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !498) #5, !dbg !496
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxB}, i64 0, metadata !499) #5, !dbg !500
  call void @llvm.dbg.declare(metadata !{double** %entriesA.i111}, metadata !280) #5, !dbg !501
  call void @llvm.dbg.declare(metadata !{double** %entriesB.i112}, metadata !281) #5, !dbg !501
  call void @llvm.dbg.declare(metadata !{i32* %inc1.i113}, metadata !284) #5, !dbg !502
  call void @llvm.dbg.declare(metadata !{i32* %inc2.i114}, metadata !285) #5, !dbg !502
  call void @llvm.dbg.declare(metadata !{i32* %ncolB.i115}, metadata !290) #5, !dbg !503
  call void @llvm.dbg.declare(metadata !{i32* %nentA.i116}, metadata !291) #5, !dbg !503
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i117}, metadata !292) #5, !dbg !503
  call void @llvm.dbg.declare(metadata !{i32* %nrowB.i118}, metadata !293) #5, !dbg !503
  call void @llvm.dbg.declare(metadata !{i32** %firstlocsA.i119}, metadata !294) #5, !dbg !504
  call void @llvm.dbg.declare(metadata !{i32** %sizesA.i120}, metadata !295) #5, !dbg !504
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i117, i32* %nentA.i116, i32** %firstlocsA.i119, i32** %sizesA.i120, double** %entriesA.i111) #6, !dbg !505
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i118, i32* %ncolB.i115, i32* %inc1.i113, i32* %inc2.i114, double** %entriesB.i112) #6, !dbg !506
  call void @llvm.dbg.value(metadata !{double** %entriesB.i112}, i64 0, metadata !507) #5, !dbg !508
  call void @llvm.dbg.value(metadata !{double** %entriesB.i112}, i64 0, metadata !281), !dbg !508
  %146 = load double** %entriesB.i112, align 8, !dbg !508, !tbaa !301
  call void @llvm.dbg.value(metadata !{double* %146}, i64 0, metadata !509) #5, !dbg !508
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !510) #5, !dbg !511
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i115}, i64 0, metadata !513) #5, !dbg !511
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i115}, i64 0, metadata !290), !dbg !511
  %147 = load i32* %ncolB.i115, align 4, !dbg !511, !tbaa !306
  %sub240.i = add nsw i32 %147, -2, !dbg !511
  %cmp241.i = icmp sgt i32 %sub240.i, 0, !dbg !511
  br i1 %cmp241.i, label %for.body.lr.ph.i124, label %for.end45.i140, !dbg !511

for.body.lr.ph.i124:                              ; preds = %sw.bb17
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i118}, i64 0, metadata !514) #5, !dbg !515
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i118}, i64 0, metadata !293), !dbg !515
  %148 = load i32* %nrowB.i118, align 4, !dbg !515, !tbaa !306
  %idx.ext.i121 = sext i32 %148 to i64, !dbg !515
  %add.ptr.sum.i122 = shl nsw i64 %idx.ext.i121, 1, !dbg !517
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i117}, i64 0, metadata !518) #5, !dbg !519
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i117}, i64 0, metadata !292), !dbg !519
  %149 = load i32* %nrowA.i117, align 4, !dbg !519, !tbaa !306
  %cmp4237.i = icmp sgt i32 %149, 0, !dbg !519
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i118}, i64 0, metadata !514) #5, !dbg !521
  %add.ptr2.sum.i123 = add i64 %add.ptr.sum.i122, %idx.ext.i121, !dbg !521
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i115}, i64 0, metadata !513) #5, !dbg !511
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i120}, i64 0, metadata !522) #5, !dbg !523
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i120}, i64 0, metadata !295), !dbg !523
  %150 = load i32** %sizesA.i120, align 8, !dbg !523, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i119}, i64 0, metadata !525) #5, !dbg !526
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i119}, i64 0, metadata !294), !dbg !526
  %151 = load i32** %firstlocsA.i119, align 8, !dbg !526, !tbaa !301
  call void @llvm.dbg.value(metadata !{double** %entriesA.i111}, i64 0, metadata !528) #5, !dbg !529
  call void @llvm.dbg.value(metadata !{double** %entriesA.i111}, i64 0, metadata !280), !dbg !529
  %152 = load double** %entriesA.i111, align 8, !dbg !529, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i117}, i64 0, metadata !518) #5, !dbg !519
  br label %for.body.i125, !dbg !511

for.body.i125:                                    ; preds = %for.end40.i136, %for.body.lr.ph.i124
  %jcolB.0244.i = phi i32 [ 0, %for.body.lr.ph.i124 ], [ %add44.i134, %for.end40.i136 ]
  %colB0.0242.i = phi double* [ %146, %for.body.lr.ph.i124 ], [ %add.ptr42.i133, %for.end40.i136 ]
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i118}, i64 0, metadata !514) #5, !dbg !515
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !532) #5, !dbg !519
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !533) #5, !dbg !519
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i117}, i64 0, metadata !518) #5, !dbg !519
  br i1 %cmp4237.i, label %for.body5.i, label %for.end40.i136, !dbg !519

for.body5.i:                                      ; preds = %for.body.i125, %for.inc38.i
  %indvars.iv265.i = phi i64 [ %indvars.iv.next266.i, %for.inc38.i ], [ 0, %for.body.i125 ]
  %kk.0239.i = phi i32 [ %kk.2.i, %for.inc38.i ], [ 0, %for.body.i125 ]
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i120}, i64 0, metadata !522) #5, !dbg !523
  %arrayidx.i126 = getelementptr inbounds i32* %150, i64 %indvars.iv265.i, !dbg !523
  %153 = load i32* %arrayidx.i126, align 4, !dbg !523, !tbaa !306
  %cmp6.i = icmp sgt i32 %153, 0, !dbg !523
  br i1 %cmp6.i, label %if.then.i128, label %for.inc38.i, !dbg !523

if.then.i128:                                     ; preds = %for.body5.i
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i119}, i64 0, metadata !525) #5, !dbg !526
  %arrayidx8.i = getelementptr inbounds i32* %151, i64 %indvars.iv265.i, !dbg !526
  %154 = load i32* %arrayidx8.i, align 4, !dbg !526, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %154}, i64 0, metadata !534) #5, !dbg !526
  %add.i127 = add i32 %153, -1, !dbg !535
  %sub11.i = add i32 %add.i127, %154, !dbg !535
  call void @llvm.dbg.value(metadata !{i32 %sub11.i}, i64 0, metadata !536) #5, !dbg !535
  call void @llvm.dbg.value(metadata !537, i64 0, metadata !538) #5, !dbg !539
  call void @llvm.dbg.value(metadata !537, i64 0, metadata !540) #5, !dbg !539
  call void @llvm.dbg.value(metadata !537, i64 0, metadata !541) #5, !dbg !539
  call void @llvm.dbg.value(metadata !{i32 %154}, i64 0, metadata !542) #5, !dbg !543
  %cmp13227.i = icmp sgt i32 %154, %sub11.i, !dbg !543
  br i1 %cmp13227.i, label %for.end.i, label %for.body14.lr.ph.i, !dbg !543

for.body14.lr.ph.i:                               ; preds = %if.then.i128
  %155 = sext i32 %kk.0239.i to i64
  %156 = sext i32 %154 to i64, !dbg !543
  br label %for.body14.i, !dbg !543

for.body14.i:                                     ; preds = %for.body14.i, %for.body14.lr.ph.i
  %indvars.iv262.i = phi i64 [ %indvars.iv.next263.i, %for.body14.i ], [ %156, %for.body14.lr.ph.i ], !dbg !543
  %indvars.iv260.i = phi i64 [ %indvars.iv.next261.i, %for.body14.i ], [ %155, %for.body14.lr.ph.i ]
  %sum2.0230.i = phi double [ %add27.i, %for.body14.i ], [ 0.000000e+00, %for.body14.lr.ph.i ]
  %sum1.0229.i = phi double [ %add23.i, %for.body14.i ], [ 0.000000e+00, %for.body14.lr.ph.i ]
  %sum0.0228.i = phi double [ %add19.i, %for.body14.i ], [ 0.000000e+00, %for.body14.lr.ph.i ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i111}, i64 0, metadata !528) #5, !dbg !529
  %arrayidx16.i = getelementptr inbounds double* %152, i64 %indvars.iv260.i, !dbg !529
  %157 = load double* %arrayidx16.i, align 8, !dbg !529, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %157}, i64 0, metadata !544) #5, !dbg !529
  %arrayidx18.i = getelementptr inbounds double* %colB0.0242.i, i64 %indvars.iv262.i, !dbg !545
  %158 = load double* %arrayidx18.i, align 8, !dbg !545, !tbaa !361
  %mul.i129 = fmul double %157, %158, !dbg !545
  %add19.i = fadd double %sum0.0228.i, %mul.i129, !dbg !545
  call void @llvm.dbg.value(metadata !{double %add19.i}, i64 0, metadata !541) #5, !dbg !545
  %add.ptr.sum205.i = add i64 %indvars.iv262.i, %idx.ext.i121, !dbg !546
  %arrayidx21.i130 = getelementptr inbounds double* %colB0.0242.i, i64 %add.ptr.sum205.i, !dbg !546
  %159 = load double* %arrayidx21.i130, align 8, !dbg !546, !tbaa !361
  %mul22.i = fmul double %157, %159, !dbg !546
  %add23.i = fadd double %sum1.0229.i, %mul22.i, !dbg !546
  call void @llvm.dbg.value(metadata !{double %add23.i}, i64 0, metadata !540) #5, !dbg !546
  %add.ptr2.sum206.i = add i64 %indvars.iv262.i, %add.ptr.sum.i122, !dbg !547
  %arrayidx25.i = getelementptr inbounds double* %colB0.0242.i, i64 %add.ptr2.sum206.i, !dbg !547
  %160 = load double* %arrayidx25.i, align 8, !dbg !547, !tbaa !361
  %mul26.i = fmul double %157, %160, !dbg !547
  %add27.i = fadd double %sum2.0230.i, %mul26.i, !dbg !547
  call void @llvm.dbg.value(metadata !{double %add27.i}, i64 0, metadata !538) #5, !dbg !547
  %indvars.iv.next263.i = add i64 %indvars.iv262.i, 1, !dbg !543
  %indvars.iv.next261.i = add i64 %indvars.iv260.i, 1, !dbg !543
  %161 = trunc i64 %indvars.iv262.i to i32, !dbg !543
  %cmp13.i = icmp slt i32 %161, %sub11.i, !dbg !543
  br i1 %cmp13.i, label %for.body14.i, label %for.cond12.for.end_crit_edge.i, !dbg !543

for.cond12.for.end_crit_edge.i:                   ; preds = %for.body14.i
  %162 = add i32 %153, %kk.0239.i, !dbg !543
  br label %for.end.i, !dbg !543

for.end.i:                                        ; preds = %for.cond12.for.end_crit_edge.i, %if.then.i128
  %kk.1.lcssa.i = phi i32 [ %162, %for.cond12.for.end_crit_edge.i ], [ %kk.0239.i, %if.then.i128 ]
  %sum2.0.lcssa.i = phi double [ %add27.i, %for.cond12.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i128 ]
  %sum1.0.lcssa.i = phi double [ %add23.i, %for.cond12.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i128 ]
  %sum0.0.lcssa.i = phi double [ %add19.i, %for.cond12.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i128 ]
  %arrayidx30.i = getelementptr inbounds double* %colB0.0242.i, i64 %indvars.iv265.i, !dbg !548
  %163 = load double* %arrayidx30.i, align 8, !dbg !548, !tbaa !361
  %sub31.i = fsub double %163, %sum0.0.lcssa.i, !dbg !548
  store double %sub31.i, double* %arrayidx30.i, align 8, !dbg !548, !tbaa !361
  %add.ptr.sum203.i = add i64 %indvars.iv265.i, %idx.ext.i121, !dbg !549
  %arrayidx33.i = getelementptr inbounds double* %colB0.0242.i, i64 %add.ptr.sum203.i, !dbg !549
  %164 = load double* %arrayidx33.i, align 8, !dbg !549, !tbaa !361
  %sub34.i = fsub double %164, %sum1.0.lcssa.i, !dbg !549
  store double %sub34.i, double* %arrayidx33.i, align 8, !dbg !549, !tbaa !361
  %add.ptr2.sum204.i = add i64 %indvars.iv265.i, %add.ptr.sum.i122, !dbg !550
  %arrayidx36.i131 = getelementptr inbounds double* %colB0.0242.i, i64 %add.ptr2.sum204.i, !dbg !550
  %165 = load double* %arrayidx36.i131, align 8, !dbg !550, !tbaa !361
  %sub37.i132 = fsub double %165, %sum2.0.lcssa.i, !dbg !550
  store double %sub37.i132, double* %arrayidx36.i131, align 8, !dbg !550, !tbaa !361
  br label %for.inc38.i, !dbg !551

for.inc38.i:                                      ; preds = %for.end.i, %for.body5.i
  %kk.2.i = phi i32 [ %kk.1.lcssa.i, %for.end.i ], [ %kk.0239.i, %for.body5.i ]
  %indvars.iv.next266.i = add i64 %indvars.iv265.i, 1, !dbg !519
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i117}, i64 0, metadata !518) #5, !dbg !519
  %lftr.wideiv674 = trunc i64 %indvars.iv.next266.i to i32, !dbg !519
  %exitcond675 = icmp eq i32 %lftr.wideiv674, %149, !dbg !519
  br i1 %exitcond675, label %for.end40.i136, label %for.body5.i, !dbg !519

for.end40.i136:                                   ; preds = %for.inc38.i, %for.body.i125
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i118}, i64 0, metadata !514) #5, !dbg !521
  %add.ptr42.i133 = getelementptr inbounds double* %colB0.0242.i, i64 %add.ptr2.sum.i123, !dbg !521
  call void @llvm.dbg.value(metadata !{double* %add.ptr42.i133}, i64 0, metadata !509) #5, !dbg !521
  %add44.i134 = add nsw i32 %jcolB.0244.i, 3, !dbg !511
  call void @llvm.dbg.value(metadata !{i32 %add44.i134}, i64 0, metadata !510) #5, !dbg !511
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i115}, i64 0, metadata !513) #5, !dbg !511
  %cmp.i135 = icmp slt i32 %add44.i134, %sub240.i, !dbg !511
  br i1 %cmp.i135, label %for.body.i125, label %for.end45.i140, !dbg !511

for.end45.i140:                                   ; preds = %for.end40.i136, %sw.bb17
  %jcolB.0.lcssa.i137 = phi i32 [ 0, %sw.bb17 ], [ %add44.i134, %for.end40.i136 ]
  %colB0.0.lcssa.i138 = phi double* [ %146, %sw.bb17 ], [ %add.ptr42.i133, %for.end40.i136 ]
  %cmp47.i139 = icmp eq i32 %jcolB.0.lcssa.i137, %sub240.i, !dbg !552
  br i1 %cmp47.i139, label %if.then48.i142, label %if.else.i151, !dbg !552

if.then48.i142:                                   ; preds = %for.end45.i140
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i118}, i64 0, metadata !514) #5, !dbg !553
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i118}, i64 0, metadata !293), !dbg !553
  %166 = load i32* %nrowB.i118, align 4, !dbg !553, !tbaa !306
  %idx.ext49.i141 = sext i32 %166 to i64, !dbg !553
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !532) #5, !dbg !555
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !533) #5, !dbg !555
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i117}, i64 0, metadata !518) #5, !dbg !555
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i117}, i64 0, metadata !292), !dbg !555
  %167 = load i32* %nrowA.i117, align 4, !dbg !555, !tbaa !306
  %cmp52214.i = icmp sgt i32 %167, 0, !dbg !555
  br i1 %cmp52214.i, label %for.body53.lr.ph.i, label %sw.epilog34, !dbg !555

for.body53.lr.ph.i:                               ; preds = %if.then48.i142
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i120}, i64 0, metadata !522) #5, !dbg !557
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i120}, i64 0, metadata !295), !dbg !557
  %168 = load i32** %sizesA.i120, align 8, !dbg !557, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i119}, i64 0, metadata !525) #5, !dbg !559
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i119}, i64 0, metadata !294), !dbg !559
  %169 = load i32** %firstlocsA.i119, align 8, !dbg !559, !tbaa !301
  call void @llvm.dbg.value(metadata !{double** %entriesA.i111}, i64 0, metadata !528) #5, !dbg !561
  call void @llvm.dbg.value(metadata !{double** %entriesA.i111}, i64 0, metadata !280), !dbg !561
  %170 = load double** %entriesA.i111, align 8, !dbg !561, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i117}, i64 0, metadata !518) #5, !dbg !555
  br label %for.body53.i, !dbg !555

for.body53.i:                                     ; preds = %for.inc88.i, %for.body53.lr.ph.i
  %indvars.iv251.i143 = phi i64 [ 0, %for.body53.lr.ph.i ], [ %indvars.iv.next252.i150, %for.inc88.i ]
  %kk.3216.i = phi i32 [ 0, %for.body53.lr.ph.i ], [ %kk.5.i, %for.inc88.i ]
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i120}, i64 0, metadata !522) #5, !dbg !557
  %arrayidx55.i144 = getelementptr inbounds i32* %168, i64 %indvars.iv251.i143, !dbg !557
  %171 = load i32* %arrayidx55.i144, align 4, !dbg !557, !tbaa !306
  %cmp56.i = icmp sgt i32 %171, 0, !dbg !557
  br i1 %cmp56.i, label %if.then57.i, label %for.inc88.i, !dbg !557

if.then57.i:                                      ; preds = %for.body53.i
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i119}, i64 0, metadata !525) #5, !dbg !559
  %arrayidx59.i = getelementptr inbounds i32* %169, i64 %indvars.iv251.i143, !dbg !559
  %172 = load i32* %arrayidx59.i, align 4, !dbg !559, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %172}, i64 0, metadata !534) #5, !dbg !559
  %add62.i = add i32 %171, -1, !dbg !564
  %sub63.i = add i32 %add62.i, %172, !dbg !564
  call void @llvm.dbg.value(metadata !{i32 %sub63.i}, i64 0, metadata !536) #5, !dbg !564
  call void @llvm.dbg.value(metadata !537, i64 0, metadata !540) #5, !dbg !565
  call void @llvm.dbg.value(metadata !537, i64 0, metadata !541) #5, !dbg !565
  call void @llvm.dbg.value(metadata !{i32 %172}, i64 0, metadata !542) #5, !dbg !566
  %cmp65207.i = icmp sgt i32 %172, %sub63.i, !dbg !566
  br i1 %cmp65207.i, label %for.end80.i, label %for.body66.lr.ph.i, !dbg !566

for.body66.lr.ph.i:                               ; preds = %if.then57.i
  %173 = sext i32 %kk.3216.i to i64
  %174 = sext i32 %172 to i64, !dbg !566
  br label %for.body66.i, !dbg !566

for.body66.i:                                     ; preds = %for.body66.i, %for.body66.lr.ph.i
  %indvars.iv249.i145 = phi i64 [ %indvars.iv.next250.i147, %for.body66.i ], [ %174, %for.body66.lr.ph.i ], !dbg !566
  %indvars.iv.i146 = phi i64 [ %indvars.iv.next.i148, %for.body66.i ], [ %173, %for.body66.lr.ph.i ]
  %sum1.1209.i = phi double [ %add76.i, %for.body66.i ], [ 0.000000e+00, %for.body66.lr.ph.i ]
  %sum0.1208.i = phi double [ %add72.i, %for.body66.i ], [ 0.000000e+00, %for.body66.lr.ph.i ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i111}, i64 0, metadata !528) #5, !dbg !561
  %arrayidx68.i = getelementptr inbounds double* %170, i64 %indvars.iv.i146, !dbg !561
  %175 = load double* %arrayidx68.i, align 8, !dbg !561, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %175}, i64 0, metadata !544) #5, !dbg !561
  %arrayidx70.i = getelementptr inbounds double* %colB0.0.lcssa.i138, i64 %indvars.iv249.i145, !dbg !567
  %176 = load double* %arrayidx70.i, align 8, !dbg !567, !tbaa !361
  %mul71.i = fmul double %175, %176, !dbg !567
  %add72.i = fadd double %sum0.1208.i, %mul71.i, !dbg !567
  call void @llvm.dbg.value(metadata !{double %add72.i}, i64 0, metadata !541) #5, !dbg !567
  %add.ptr50.sum202.i = add i64 %indvars.iv249.i145, %idx.ext49.i141, !dbg !568
  %arrayidx74.i = getelementptr inbounds double* %colB0.0.lcssa.i138, i64 %add.ptr50.sum202.i, !dbg !568
  %177 = load double* %arrayidx74.i, align 8, !dbg !568, !tbaa !361
  %mul75.i = fmul double %175, %177, !dbg !568
  %add76.i = fadd double %sum1.1209.i, %mul75.i, !dbg !568
  call void @llvm.dbg.value(metadata !{double %add76.i}, i64 0, metadata !540) #5, !dbg !568
  %indvars.iv.next250.i147 = add i64 %indvars.iv249.i145, 1, !dbg !566
  %indvars.iv.next.i148 = add i64 %indvars.iv.i146, 1, !dbg !566
  %178 = trunc i64 %indvars.iv249.i145 to i32, !dbg !566
  %cmp65.i = icmp slt i32 %178, %sub63.i, !dbg !566
  br i1 %cmp65.i, label %for.body66.i, label %for.cond64.for.end80_crit_edge.i, !dbg !566

for.cond64.for.end80_crit_edge.i:                 ; preds = %for.body66.i
  %179 = add i32 %171, %kk.3216.i, !dbg !566
  br label %for.end80.i, !dbg !566

for.end80.i:                                      ; preds = %for.cond64.for.end80_crit_edge.i, %if.then57.i
  %kk.4.lcssa.i = phi i32 [ %179, %for.cond64.for.end80_crit_edge.i ], [ %kk.3216.i, %if.then57.i ]
  %sum1.1.lcssa.i = phi double [ %add76.i, %for.cond64.for.end80_crit_edge.i ], [ 0.000000e+00, %if.then57.i ]
  %sum0.1.lcssa.i = phi double [ %add72.i, %for.cond64.for.end80_crit_edge.i ], [ 0.000000e+00, %if.then57.i ]
  %arrayidx82.i = getelementptr inbounds double* %colB0.0.lcssa.i138, i64 %indvars.iv251.i143, !dbg !569
  %180 = load double* %arrayidx82.i, align 8, !dbg !569, !tbaa !361
  %sub83.i = fsub double %180, %sum0.1.lcssa.i, !dbg !569
  store double %sub83.i, double* %arrayidx82.i, align 8, !dbg !569, !tbaa !361
  %add.ptr50.sum.i149 = add i64 %indvars.iv251.i143, %idx.ext49.i141, !dbg !570
  %arrayidx85.i = getelementptr inbounds double* %colB0.0.lcssa.i138, i64 %add.ptr50.sum.i149, !dbg !570
  %181 = load double* %arrayidx85.i, align 8, !dbg !570, !tbaa !361
  %sub86.i = fsub double %181, %sum1.1.lcssa.i, !dbg !570
  store double %sub86.i, double* %arrayidx85.i, align 8, !dbg !570, !tbaa !361
  br label %for.inc88.i, !dbg !571

for.inc88.i:                                      ; preds = %for.end80.i, %for.body53.i
  %kk.5.i = phi i32 [ %kk.4.lcssa.i, %for.end80.i ], [ %kk.3216.i, %for.body53.i ]
  %indvars.iv.next252.i150 = add i64 %indvars.iv251.i143, 1, !dbg !555
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i117}, i64 0, metadata !518) #5, !dbg !555
  %lftr.wideiv = trunc i64 %indvars.iv.next252.i150 to i32, !dbg !555
  %exitcond = icmp eq i32 %lftr.wideiv, %167, !dbg !555
  br i1 %exitcond, label %sw.epilog34, label %for.body53.i, !dbg !555

if.else.i151:                                     ; preds = %for.end45.i140
  %sub91.i = add nsw i32 %147, -1, !dbg !572
  %cmp92.i = icmp eq i32 %jcolB.0.lcssa.i137, %sub91.i, !dbg !572
  br i1 %cmp92.i, label %for.cond94.preheader.i, label %sw.epilog34, !dbg !572

for.cond94.preheader.i:                           ; preds = %if.else.i151
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i117}, i64 0, metadata !518) #5, !dbg !573
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i117}, i64 0, metadata !292), !dbg !573
  %182 = load i32* %nrowA.i117, align 4, !dbg !573, !tbaa !306
  %cmp95224.i = icmp sgt i32 %182, 0, !dbg !573
  br i1 %cmp95224.i, label %for.body96.lr.ph.i, label %sw.epilog34, !dbg !573

for.body96.lr.ph.i:                               ; preds = %for.cond94.preheader.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i120}, i64 0, metadata !522) #5, !dbg !576
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i120}, i64 0, metadata !295), !dbg !576
  %183 = load i32** %sizesA.i120, align 8, !dbg !576, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i119}, i64 0, metadata !525) #5, !dbg !578
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i119}, i64 0, metadata !294), !dbg !578
  %184 = load i32** %firstlocsA.i119, align 8, !dbg !578, !tbaa !301
  call void @llvm.dbg.value(metadata !{double** %entriesA.i111}, i64 0, metadata !528) #5, !dbg !580
  call void @llvm.dbg.value(metadata !{double** %entriesA.i111}, i64 0, metadata !280), !dbg !580
  %185 = load double** %entriesA.i111, align 8, !dbg !580, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i117}, i64 0, metadata !518) #5, !dbg !573
  br label %for.body96.i, !dbg !573

for.body96.i:                                     ; preds = %for.inc124.i, %for.body96.lr.ph.i
  %indvars.iv258.i = phi i64 [ 0, %for.body96.lr.ph.i ], [ %indvars.iv.next259.i, %for.inc124.i ]
  %kk.6226.i = phi i32 [ 0, %for.body96.lr.ph.i ], [ %kk.8.i, %for.inc124.i ]
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i120}, i64 0, metadata !522) #5, !dbg !576
  %arrayidx98.i = getelementptr inbounds i32* %183, i64 %indvars.iv258.i, !dbg !576
  %186 = load i32* %arrayidx98.i, align 4, !dbg !576, !tbaa !306
  %cmp99.i = icmp sgt i32 %186, 0, !dbg !576
  br i1 %cmp99.i, label %if.then100.i, label %for.inc124.i, !dbg !576

if.then100.i:                                     ; preds = %for.body96.i
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i119}, i64 0, metadata !525) #5, !dbg !578
  %arrayidx102.i = getelementptr inbounds i32* %184, i64 %indvars.iv258.i, !dbg !578
  %187 = load i32* %arrayidx102.i, align 4, !dbg !578, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %187}, i64 0, metadata !534) #5, !dbg !578
  %add105.i = add i32 %186, -1, !dbg !583
  %sub106.i = add i32 %add105.i, %187, !dbg !583
  call void @llvm.dbg.value(metadata !{i32 %sub106.i}, i64 0, metadata !536) #5, !dbg !583
  call void @llvm.dbg.value(metadata !537, i64 0, metadata !541) #5, !dbg !584
  call void @llvm.dbg.value(metadata !{i32 %187}, i64 0, metadata !542) #5, !dbg !585
  %cmp108217.i = icmp sgt i32 %187, %sub106.i, !dbg !585
  br i1 %cmp108217.i, label %for.end119.i, label %for.body109.lr.ph.i, !dbg !585

for.body109.lr.ph.i:                              ; preds = %if.then100.i
  %188 = sext i32 %kk.6226.i to i64
  %189 = sext i32 %187 to i64, !dbg !585
  br label %for.body109.i, !dbg !585

for.body109.i:                                    ; preds = %for.body109.i, %for.body109.lr.ph.i
  %indvars.iv255.i = phi i64 [ %indvars.iv.next256.i, %for.body109.i ], [ %189, %for.body109.lr.ph.i ], !dbg !585
  %indvars.iv253.i152 = phi i64 [ %indvars.iv.next254.i153, %for.body109.i ], [ %188, %for.body109.lr.ph.i ]
  %sum0.2218.i = phi double [ %add115.i, %for.body109.i ], [ 0.000000e+00, %for.body109.lr.ph.i ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i111}, i64 0, metadata !528) #5, !dbg !580
  %arrayidx111.i = getelementptr inbounds double* %185, i64 %indvars.iv253.i152, !dbg !580
  %190 = load double* %arrayidx111.i, align 8, !dbg !580, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %190}, i64 0, metadata !544) #5, !dbg !580
  %arrayidx113.i = getelementptr inbounds double* %colB0.0.lcssa.i138, i64 %indvars.iv255.i, !dbg !586
  %191 = load double* %arrayidx113.i, align 8, !dbg !586, !tbaa !361
  %mul114.i = fmul double %190, %191, !dbg !586
  %add115.i = fadd double %sum0.2218.i, %mul114.i, !dbg !586
  call void @llvm.dbg.value(metadata !{double %add115.i}, i64 0, metadata !541) #5, !dbg !586
  %indvars.iv.next256.i = add i64 %indvars.iv255.i, 1, !dbg !585
  %indvars.iv.next254.i153 = add i64 %indvars.iv253.i152, 1, !dbg !585
  %192 = trunc i64 %indvars.iv255.i to i32, !dbg !585
  %cmp108.i = icmp slt i32 %192, %sub106.i, !dbg !585
  br i1 %cmp108.i, label %for.body109.i, label %for.cond107.for.end119_crit_edge.i, !dbg !585

for.cond107.for.end119_crit_edge.i:               ; preds = %for.body109.i
  %193 = add i32 %186, %kk.6226.i, !dbg !585
  br label %for.end119.i, !dbg !585

for.end119.i:                                     ; preds = %for.cond107.for.end119_crit_edge.i, %if.then100.i
  %kk.7.lcssa.i = phi i32 [ %193, %for.cond107.for.end119_crit_edge.i ], [ %kk.6226.i, %if.then100.i ]
  %sum0.2.lcssa.i = phi double [ %add115.i, %for.cond107.for.end119_crit_edge.i ], [ 0.000000e+00, %if.then100.i ]
  %arrayidx121.i = getelementptr inbounds double* %colB0.0.lcssa.i138, i64 %indvars.iv258.i, !dbg !587
  %194 = load double* %arrayidx121.i, align 8, !dbg !587, !tbaa !361
  %sub122.i = fsub double %194, %sum0.2.lcssa.i, !dbg !587
  store double %sub122.i, double* %arrayidx121.i, align 8, !dbg !587, !tbaa !361
  br label %for.inc124.i, !dbg !588

for.inc124.i:                                     ; preds = %for.end119.i, %for.body96.i
  %kk.8.i = phi i32 [ %kk.7.lcssa.i, %for.end119.i ], [ %kk.6226.i, %for.body96.i ]
  %indvars.iv.next259.i = add i64 %indvars.iv258.i, 1, !dbg !573
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i117}, i64 0, metadata !518) #5, !dbg !573
  %lftr.wideiv672 = trunc i64 %indvars.iv.next259.i to i32, !dbg !573
  %exitcond673 = icmp eq i32 %lftr.wideiv672, %182, !dbg !573
  br i1 %exitcond673, label %sw.epilog34, label %for.body96.i, !dbg !573

sw.bb18:                                          ; preds = %sw.bb
  %195 = bitcast double** %entriesA.i154 to i8*, !dbg !589
  call void @llvm.lifetime.start(i64 8, i8* %195) #5, !dbg !589
  %196 = bitcast double** %entriesB.i155 to i8*, !dbg !589
  call void @llvm.lifetime.start(i64 8, i8* %196) #5, !dbg !589
  %197 = bitcast i32* %inc1.i156 to i8*, !dbg !589
  call void @llvm.lifetime.start(i64 4, i8* %197) #5, !dbg !589
  %198 = bitcast i32* %inc2.i157 to i8*, !dbg !589
  call void @llvm.lifetime.start(i64 4, i8* %198) #5, !dbg !589
  %199 = bitcast i32* %ncolB.i158 to i8*, !dbg !589
  call void @llvm.lifetime.start(i64 4, i8* %199) #5, !dbg !589
  %200 = bitcast i32* %nentA.i159 to i8*, !dbg !589
  call void @llvm.lifetime.start(i64 4, i8* %200) #5, !dbg !589
  %201 = bitcast i32* %nrowA.i160 to i8*, !dbg !589
  call void @llvm.lifetime.start(i64 4, i8* %201) #5, !dbg !589
  %202 = bitcast i32* %nrowB.i161 to i8*, !dbg !589
  call void @llvm.lifetime.start(i64 4, i8* %202) #5, !dbg !589
  %203 = bitcast i32** %indicesA.i162 to i8*, !dbg !589
  call void @llvm.lifetime.start(i64 8, i8* %203) #5, !dbg !589
  %204 = bitcast i32** %sizesA.i163 to i8*, !dbg !589
  call void @llvm.lifetime.start(i64 8, i8* %204) #5, !dbg !589
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !591) #5, !dbg !589
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxB}, i64 0, metadata !592) #5, !dbg !593
  call void @llvm.dbg.declare(metadata !{double** %entriesA.i154}, metadata !253) #5, !dbg !594
  call void @llvm.dbg.declare(metadata !{double** %entriesB.i155}, metadata !254) #5, !dbg !594
  call void @llvm.dbg.declare(metadata !{i32* %inc1.i156}, metadata !256) #5, !dbg !595
  call void @llvm.dbg.declare(metadata !{i32* %inc2.i157}, metadata !257) #5, !dbg !595
  call void @llvm.dbg.declare(metadata !{i32* %ncolB.i158}, metadata !262) #5, !dbg !596
  call void @llvm.dbg.declare(metadata !{i32* %nentA.i159}, metadata !263) #5, !dbg !596
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i160}, metadata !264) #5, !dbg !596
  call void @llvm.dbg.declare(metadata !{i32* %nrowB.i161}, metadata !265) #5, !dbg !596
  call void @llvm.dbg.declare(metadata !{i32** %indicesA.i162}, metadata !267) #5, !dbg !597
  call void @llvm.dbg.declare(metadata !{i32** %sizesA.i163}, metadata !268) #5, !dbg !597
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i160, i32* %nentA.i159, i32** %sizesA.i163, i32** %indicesA.i162, double** %entriesA.i154) #6, !dbg !598
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i161, i32* %ncolB.i158, i32* %inc1.i156, i32* %inc2.i157, double** %entriesB.i155) #6, !dbg !599
  call void @llvm.dbg.value(metadata !{double** %entriesB.i155}, i64 0, metadata !600) #5, !dbg !601
  call void @llvm.dbg.value(metadata !{double** %entriesB.i155}, i64 0, metadata !254), !dbg !601
  %205 = load double** %entriesB.i155, align 8, !dbg !601, !tbaa !301
  call void @llvm.dbg.value(metadata !{double* %205}, i64 0, metadata !602) #5, !dbg !601
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !603) #5, !dbg !604
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i158}, i64 0, metadata !606) #5, !dbg !604
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i158}, i64 0, metadata !262), !dbg !604
  %206 = load i32* %ncolB.i158, align 4, !dbg !604, !tbaa !306
  %sub264.i = add nsw i32 %206, -2, !dbg !604
  %cmp265.i = icmp sgt i32 %sub264.i, 0, !dbg !604
  br i1 %cmp265.i, label %for.body.lr.ph.i167, label %for.end45.i190, !dbg !604

for.body.lr.ph.i167:                              ; preds = %sw.bb18
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i161}, i64 0, metadata !607) #5, !dbg !608
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i161}, i64 0, metadata !265), !dbg !608
  %207 = load i32* %nrowB.i161, align 4, !dbg !608, !tbaa !306
  %idx.ext.i164 = sext i32 %207 to i64, !dbg !608
  %add.ptr.sum.i165 = shl nsw i64 %idx.ext.i164, 1, !dbg !610
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i160}, i64 0, metadata !611) #5, !dbg !612
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i160}, i64 0, metadata !264), !dbg !612
  %208 = load i32* %nrowA.i160, align 4, !dbg !612, !tbaa !306
  %cmp4254.i = icmp sgt i32 %208, 0, !dbg !612
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i161}, i64 0, metadata !607) #5, !dbg !614
  %add.ptr2.sum.i166 = add i64 %add.ptr.sum.i165, %idx.ext.i164, !dbg !614
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i158}, i64 0, metadata !606) #5, !dbg !604
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i163}, i64 0, metadata !615) #5, !dbg !616
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i163}, i64 0, metadata !268), !dbg !616
  %209 = load i32** %sizesA.i163, align 8, !dbg !616, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i160}, i64 0, metadata !611) #5, !dbg !612
  call void @llvm.dbg.value(metadata !{double** %entriesA.i154}, i64 0, metadata !618) #5, !dbg !619
  call void @llvm.dbg.value(metadata !{double** %entriesA.i154}, i64 0, metadata !253), !dbg !619
  %210 = load double** %entriesA.i154, align 8, !dbg !619, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i162}, i64 0, metadata !623) #5, !dbg !624
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i162}, i64 0, metadata !267), !dbg !624
  %211 = load i32** %indicesA.i162, align 8, !dbg !624, !tbaa !301
  br label %for.body.i168, !dbg !604

for.body.i168:                                    ; preds = %for.end40.i186, %for.body.lr.ph.i167
  %jcolB.0268.i = phi i32 [ 0, %for.body.lr.ph.i167 ], [ %add44.i184, %for.end40.i186 ]
  %colB0.0266.i = phi double* [ %205, %for.body.lr.ph.i167 ], [ %add.ptr42.i183, %for.end40.i186 ]
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i161}, i64 0, metadata !607) #5, !dbg !608
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !625) #5, !dbg !612
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !626) #5, !dbg !612
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i160}, i64 0, metadata !611) #5, !dbg !612
  br i1 %cmp4254.i, label %for.body5.i171, label %for.end40.i186, !dbg !612

for.body5.i171:                                   ; preds = %for.body.i168, %for.inc38.i182
  %indvars.iv290.i = phi i64 [ %indvars.iv.next291.i, %for.inc38.i182 ], [ 0, %for.body.i168 ]
  %kk.0258.i = phi i32 [ %kk.2.i180, %for.inc38.i182 ], [ 0, %for.body.i168 ]
  %irowA.0255.i = phi i32 [ %inc39.i, %for.inc38.i182 ], [ 0, %for.body.i168 ]
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i163}, i64 0, metadata !615) #5, !dbg !616
  %arrayidx.i169 = getelementptr inbounds i32* %209, i64 %indvars.iv290.i, !dbg !616
  %212 = load i32* %arrayidx.i169, align 4, !dbg !616, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %212}, i64 0, metadata !627) #5, !dbg !616
  %cmp6.i170 = icmp sgt i32 %212, 0, !dbg !616
  br i1 %cmp6.i170, label %for.body9.lr.ph.i, label %for.inc38.i182, !dbg !616

for.body9.lr.ph.i:                                ; preds = %for.body5.i171
  %213 = sext i32 %kk.0258.i to i64
  %214 = trunc i64 %indvars.iv290.i to i32, !dbg !628
  br label %for.body9.i, !dbg !629

for.body9.i:                                      ; preds = %if.end.i, %for.body9.lr.ph.i
  %indvars.iv287.i = phi i64 [ %213, %for.body9.lr.ph.i ], [ %indvars.iv.next288.i, %if.end.i ]
  %kk.1248.i = phi i32 [ %kk.0258.i, %for.body9.lr.ph.i ], [ %inc27.i, %if.end.i ]
  %ii.0247.i = phi i32 [ 0, %for.body9.lr.ph.i ], [ %inc.i176, %if.end.i ]
  %sum2.0246.i = phi double [ 0.000000e+00, %for.body9.lr.ph.i ], [ %add26.i, %if.end.i ]
  %sum1.0245.i = phi double [ 0.000000e+00, %for.body9.lr.ph.i ], [ %add22.i, %if.end.i ]
  %sum0.0244.i = phi double [ 0.000000e+00, %for.body9.lr.ph.i ], [ %add.i174, %if.end.i ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i154}, i64 0, metadata !618) #5, !dbg !619
  %arrayidx11.i = getelementptr inbounds double* %210, i64 %indvars.iv287.i, !dbg !619
  %215 = load double* %arrayidx11.i, align 8, !dbg !619, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %215}, i64 0, metadata !630) #5, !dbg !619
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i162}, i64 0, metadata !623) #5, !dbg !624
  %arrayidx13.i = getelementptr inbounds i32* %211, i64 %indvars.iv287.i, !dbg !624
  %216 = load i32* %arrayidx13.i, align 4, !dbg !624, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %216}, i64 0, metadata !631) #5, !dbg !624
  %cmp14.i = icmp sgt i32 %216, -1, !dbg !628
  %cmp15.i = icmp slt i32 %216, %214, !dbg !628
  %or.cond.i = and i1 %cmp14.i, %cmp15.i, !dbg !628
  br i1 %or.cond.i, label %if.end.i, label %if.then16.i, !dbg !628

if.then16.i:                                      ; preds = %for.body9.i
  %217 = load %struct._IO_FILE** @stderr, align 8, !dbg !632, !tbaa !301
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %217, i8* getelementptr inbounds ([52 x i8]* @.str5, i64 0, i64 0), i32 %irowA.0255.i, i32 %kk.1248.i, i32 %ii.0247.i, i32 %216) #6, !dbg !632
  call void @exit(i32 -1) #7, !dbg !634
  unreachable, !dbg !634

if.end.i:                                         ; preds = %for.body9.i
  %idxprom17.i = sext i32 %216 to i64, !dbg !635
  %arrayidx18.i172 = getelementptr inbounds double* %colB0.0266.i, i64 %idxprom17.i, !dbg !635
  %218 = load double* %arrayidx18.i172, align 8, !dbg !635, !tbaa !361
  %mul.i173 = fmul double %215, %218, !dbg !635
  %add.i174 = fadd double %sum0.0244.i, %mul.i173, !dbg !635
  call void @llvm.dbg.value(metadata !{double %add.i174}, i64 0, metadata !636) #5, !dbg !635
  %add.ptr.sum208.i = add i64 %idxprom17.i, %idx.ext.i164, !dbg !637
  %arrayidx20.i = getelementptr inbounds double* %colB0.0266.i, i64 %add.ptr.sum208.i, !dbg !637
  %219 = load double* %arrayidx20.i, align 8, !dbg !637, !tbaa !361
  %mul21.i = fmul double %215, %219, !dbg !637
  %add22.i = fadd double %sum1.0245.i, %mul21.i, !dbg !637
  call void @llvm.dbg.value(metadata !{double %add22.i}, i64 0, metadata !638) #5, !dbg !637
  %add.ptr2.sum209.i = add i64 %idxprom17.i, %add.ptr.sum.i165, !dbg !639
  %arrayidx24.i = getelementptr inbounds double* %colB0.0266.i, i64 %add.ptr2.sum209.i, !dbg !639
  %220 = load double* %arrayidx24.i, align 8, !dbg !639, !tbaa !361
  %mul25.i175 = fmul double %215, %220, !dbg !639
  %add26.i = fadd double %sum2.0246.i, %mul25.i175, !dbg !639
  call void @llvm.dbg.value(metadata !{double %add26.i}, i64 0, metadata !640) #5, !dbg !639
  %inc.i176 = add nsw i32 %ii.0247.i, 1, !dbg !629
  call void @llvm.dbg.value(metadata !{i32 %inc.i176}, i64 0, metadata !641) #5, !dbg !629
  %indvars.iv.next288.i = add i64 %indvars.iv287.i, 1, !dbg !629
  %inc27.i = add nsw i32 %kk.1248.i, 1, !dbg !629
  call void @llvm.dbg.value(metadata !{i32 %inc27.i}, i64 0, metadata !625) #5, !dbg !629
  %cmp8.i = icmp slt i32 %inc.i176, %212, !dbg !629
  br i1 %cmp8.i, label %for.body9.i, label %for.end.i179, !dbg !629

for.end.i179:                                     ; preds = %if.end.i
  %arrayidx29.i = getelementptr inbounds double* %colB0.0266.i, i64 %indvars.iv290.i, !dbg !642
  %221 = load double* %arrayidx29.i, align 8, !dbg !642, !tbaa !361
  %sub30.i = fsub double %221, %add.i174, !dbg !642
  store double %sub30.i, double* %arrayidx29.i, align 8, !dbg !642, !tbaa !361
  %add.ptr.sum206.i = add i64 %indvars.iv290.i, %idx.ext.i164, !dbg !643
  %arrayidx32.i177 = getelementptr inbounds double* %colB0.0266.i, i64 %add.ptr.sum206.i, !dbg !643
  %222 = load double* %arrayidx32.i177, align 8, !dbg !643, !tbaa !361
  %sub33.i178 = fsub double %222, %add22.i, !dbg !643
  store double %sub33.i178, double* %arrayidx32.i177, align 8, !dbg !643, !tbaa !361
  %add.ptr2.sum207.i = add i64 %indvars.iv290.i, %add.ptr.sum.i165, !dbg !644
  %arrayidx35.i = getelementptr inbounds double* %colB0.0266.i, i64 %add.ptr2.sum207.i, !dbg !644
  %223 = load double* %arrayidx35.i, align 8, !dbg !644, !tbaa !361
  %sub36.i = fsub double %223, %add26.i, !dbg !644
  store double %sub36.i, double* %arrayidx35.i, align 8, !dbg !644, !tbaa !361
  br label %for.inc38.i182, !dbg !645

for.inc38.i182:                                   ; preds = %for.end.i179, %for.body5.i171
  %kk.2.i180 = phi i32 [ %inc27.i, %for.end.i179 ], [ %kk.0258.i, %for.body5.i171 ]
  %indvars.iv.next291.i = add i64 %indvars.iv290.i, 1, !dbg !612
  %inc39.i = add nsw i32 %irowA.0255.i, 1, !dbg !612
  call void @llvm.dbg.value(metadata !{i32 %inc39.i}, i64 0, metadata !626) #5, !dbg !612
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i160}, i64 0, metadata !611) #5, !dbg !612
  %224 = trunc i64 %indvars.iv.next291.i to i32, !dbg !612
  %cmp4.i181 = icmp slt i32 %224, %208, !dbg !612
  br i1 %cmp4.i181, label %for.body5.i171, label %for.end40.i186, !dbg !612

for.end40.i186:                                   ; preds = %for.inc38.i182, %for.body.i168
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i161}, i64 0, metadata !607) #5, !dbg !614
  %add.ptr42.i183 = getelementptr inbounds double* %colB0.0266.i, i64 %add.ptr2.sum.i166, !dbg !614
  call void @llvm.dbg.value(metadata !{double* %add.ptr42.i183}, i64 0, metadata !602) #5, !dbg !614
  %add44.i184 = add nsw i32 %jcolB.0268.i, 3, !dbg !604
  call void @llvm.dbg.value(metadata !{i32 %add44.i184}, i64 0, metadata !603) #5, !dbg !604
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i158}, i64 0, metadata !606) #5, !dbg !604
  %cmp.i185 = icmp slt i32 %add44.i184, %sub264.i, !dbg !604
  br i1 %cmp.i185, label %for.body.i168, label %for.end45.i190, !dbg !604

for.end45.i190:                                   ; preds = %for.end40.i186, %sw.bb18
  %jcolB.0.lcssa.i187 = phi i32 [ 0, %sw.bb18 ], [ %add44.i184, %for.end40.i186 ]
  %colB0.0.lcssa.i188 = phi double* [ %205, %sw.bb18 ], [ %add.ptr42.i183, %for.end40.i186 ]
  %cmp47.i189 = icmp eq i32 %jcolB.0.lcssa.i187, %sub264.i, !dbg !646
  br i1 %cmp47.i189, label %if.then48.i192, label %if.else.i211, !dbg !646

if.then48.i192:                                   ; preds = %for.end45.i190
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i161}, i64 0, metadata !607) #5, !dbg !647
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i161}, i64 0, metadata !265), !dbg !647
  %225 = load i32* %nrowB.i161, align 4, !dbg !647, !tbaa !306
  %idx.ext49.i191 = sext i32 %225 to i64, !dbg !647
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !625) #5, !dbg !649
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !626) #5, !dbg !649
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i160}, i64 0, metadata !611) #5, !dbg !649
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i160}, i64 0, metadata !264), !dbg !649
  %226 = load i32* %nrowA.i160, align 4, !dbg !649, !tbaa !306
  %cmp52218.i = icmp sgt i32 %226, 0, !dbg !649
  br i1 %cmp52218.i, label %for.body53.lr.ph.i193, label %sw.epilog34, !dbg !649

for.body53.lr.ph.i193:                            ; preds = %if.then48.i192
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i163}, i64 0, metadata !615) #5, !dbg !651
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i163}, i64 0, metadata !268), !dbg !651
  %227 = load i32** %sizesA.i163, align 8, !dbg !651, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i160}, i64 0, metadata !611) #5, !dbg !649
  call void @llvm.dbg.value(metadata !{double** %entriesA.i154}, i64 0, metadata !618) #5, !dbg !653
  call void @llvm.dbg.value(metadata !{double** %entriesA.i154}, i64 0, metadata !253), !dbg !653
  %228 = load double** %entriesA.i154, align 8, !dbg !653, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i162}, i64 0, metadata !623) #5, !dbg !657
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i162}, i64 0, metadata !267), !dbg !657
  %229 = load i32** %indicesA.i162, align 8, !dbg !657, !tbaa !301
  br label %for.body53.i196, !dbg !649

for.body53.i196:                                  ; preds = %for.inc84.i, %for.body53.lr.ph.i193
  %indvars.iv273.i = phi i64 [ 0, %for.body53.lr.ph.i193 ], [ %indvars.iv.next274.i, %for.inc84.i ]
  %kk.3220.i = phi i32 [ 0, %for.body53.lr.ph.i193 ], [ %kk.5.i209, %for.inc84.i ]
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i163}, i64 0, metadata !615) #5, !dbg !651
  %arrayidx55.i194 = getelementptr inbounds i32* %227, i64 %indvars.iv273.i, !dbg !651
  %230 = load i32* %arrayidx55.i194, align 4, !dbg !651, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %230}, i64 0, metadata !627) #5, !dbg !651
  %cmp56.i195 = icmp sgt i32 %230, 0, !dbg !651
  br i1 %cmp56.i195, label %for.body60.lr.ph.i197, label %for.inc84.i, !dbg !651

for.body60.lr.ph.i197:                            ; preds = %for.body53.i196
  %231 = sext i32 %kk.3220.i to i64
  br label %for.body60.i207, !dbg !658

for.body60.i207:                                  ; preds = %for.body60.i207, %for.body60.lr.ph.i197
  %indvars.iv.i198 = phi i64 [ %231, %for.body60.lr.ph.i197 ], [ %indvars.iv.next.i205, %for.body60.i207 ]
  %ii.1214.i = phi i32 [ 0, %for.body60.lr.ph.i197 ], [ %inc74.i204, %for.body60.i207 ]
  %sum1.1213.i = phi double [ 0.000000e+00, %for.body60.lr.ph.i197 ], [ %add72.i203, %for.body60.i207 ]
  %sum0.1212.i = phi double [ 0.000000e+00, %for.body60.lr.ph.i197 ], [ %add68.i, %for.body60.i207 ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i154}, i64 0, metadata !618) #5, !dbg !653
  %arrayidx62.i199 = getelementptr inbounds double* %228, i64 %indvars.iv.i198, !dbg !653
  %232 = load double* %arrayidx62.i199, align 8, !dbg !653, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %232}, i64 0, metadata !630) #5, !dbg !653
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i162}, i64 0, metadata !623) #5, !dbg !657
  %arrayidx64.i200 = getelementptr inbounds i32* %229, i64 %indvars.iv.i198, !dbg !657
  %233 = load i32* %arrayidx64.i200, align 4, !dbg !657, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %233}, i64 0, metadata !631) #5, !dbg !657
  %idxprom65.i = sext i32 %233 to i64, !dbg !659
  %arrayidx66.i = getelementptr inbounds double* %colB0.0.lcssa.i188, i64 %idxprom65.i, !dbg !659
  %234 = load double* %arrayidx66.i, align 8, !dbg !659, !tbaa !361
  %mul67.i = fmul double %232, %234, !dbg !659
  %add68.i = fadd double %sum0.1212.i, %mul67.i, !dbg !659
  call void @llvm.dbg.value(metadata !{double %add68.i}, i64 0, metadata !636) #5, !dbg !659
  %add.ptr50.sum205.i = add i64 %idxprom65.i, %idx.ext49.i191, !dbg !660
  %arrayidx70.i201 = getelementptr inbounds double* %colB0.0.lcssa.i188, i64 %add.ptr50.sum205.i, !dbg !660
  %235 = load double* %arrayidx70.i201, align 8, !dbg !660, !tbaa !361
  %mul71.i202 = fmul double %232, %235, !dbg !660
  %add72.i203 = fadd double %sum1.1213.i, %mul71.i202, !dbg !660
  call void @llvm.dbg.value(metadata !{double %add72.i203}, i64 0, metadata !638) #5, !dbg !660
  %inc74.i204 = add nsw i32 %ii.1214.i, 1, !dbg !658
  call void @llvm.dbg.value(metadata !{i32 %inc74.i204}, i64 0, metadata !641) #5, !dbg !658
  %indvars.iv.next.i205 = add i64 %indvars.iv.i198, 1, !dbg !658
  %exitcond.i206 = icmp eq i32 %inc74.i204, %230, !dbg !658
  br i1 %exitcond.i206, label %for.end76.i, label %for.body60.i207, !dbg !658

for.end76.i:                                      ; preds = %for.body60.i207
  %236 = add i32 %230, %kk.3220.i, !dbg !658
  %arrayidx78.i = getelementptr inbounds double* %colB0.0.lcssa.i188, i64 %indvars.iv273.i, !dbg !661
  %237 = load double* %arrayidx78.i, align 8, !dbg !661, !tbaa !361
  %sub79.i = fsub double %237, %add68.i, !dbg !661
  store double %sub79.i, double* %arrayidx78.i, align 8, !dbg !661, !tbaa !361
  %add.ptr50.sum.i208 = add i64 %indvars.iv273.i, %idx.ext49.i191, !dbg !662
  %arrayidx81.i = getelementptr inbounds double* %colB0.0.lcssa.i188, i64 %add.ptr50.sum.i208, !dbg !662
  %238 = load double* %arrayidx81.i, align 8, !dbg !662, !tbaa !361
  %sub82.i = fsub double %238, %add72.i203, !dbg !662
  store double %sub82.i, double* %arrayidx81.i, align 8, !dbg !662, !tbaa !361
  br label %for.inc84.i, !dbg !663

for.inc84.i:                                      ; preds = %for.end76.i, %for.body53.i196
  %kk.5.i209 = phi i32 [ %236, %for.end76.i ], [ %kk.3220.i, %for.body53.i196 ]
  %indvars.iv.next274.i = add i64 %indvars.iv273.i, 1, !dbg !649
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i160}, i64 0, metadata !611) #5, !dbg !649
  %lftr.wideiv676 = trunc i64 %indvars.iv.next274.i to i32, !dbg !649
  %exitcond677 = icmp eq i32 %lftr.wideiv676, %226, !dbg !649
  br i1 %exitcond677, label %sw.epilog34, label %for.body53.i196, !dbg !649

if.else.i211:                                     ; preds = %for.end45.i190
  %sub87.i = add nsw i32 %206, -1, !dbg !664
  %cmp88.i = icmp eq i32 %jcolB.0.lcssa.i187, %sub87.i, !dbg !664
  br i1 %cmp88.i, label %for.cond90.preheader.i, label %sw.epilog34, !dbg !664

for.cond90.preheader.i:                           ; preds = %if.else.i211
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i160}, i64 0, metadata !611) #5, !dbg !665
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i160}, i64 0, metadata !264), !dbg !665
  %239 = load i32* %nrowA.i160, align 4, !dbg !665, !tbaa !306
  %cmp91232.i = icmp sgt i32 %239, 0, !dbg !665
  br i1 %cmp91232.i, label %for.body92.lr.ph.i, label %sw.epilog34, !dbg !665

for.body92.lr.ph.i:                               ; preds = %for.cond90.preheader.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i163}, i64 0, metadata !615) #5, !dbg !668
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i163}, i64 0, metadata !268), !dbg !668
  %240 = load i32** %sizesA.i163, align 8, !dbg !668, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i160}, i64 0, metadata !611) #5, !dbg !665
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i162}, i64 0, metadata !623) #5, !dbg !670
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i162}, i64 0, metadata !267), !dbg !670
  %241 = load i32** %indicesA.i162, align 8, !dbg !670, !tbaa !301
  call void @llvm.dbg.value(metadata !{double** %entriesA.i154}, i64 0, metadata !618) #5, !dbg !674
  call void @llvm.dbg.value(metadata !{double** %entriesA.i154}, i64 0, metadata !253), !dbg !674
  %242 = load double** %entriesA.i154, align 8, !dbg !674, !tbaa !301
  br label %for.body92.i, !dbg !665

for.body92.i:                                     ; preds = %for.inc122.i, %for.body92.lr.ph.i
  %indvars.iv281.i = phi i64 [ 0, %for.body92.lr.ph.i ], [ %indvars.iv.next282.i, %for.inc122.i ]
  %kk.6236.i = phi i32 [ 0, %for.body92.lr.ph.i ], [ %kk.8.i221, %for.inc122.i ]
  %irowA.2233.i = phi i32 [ 0, %for.body92.lr.ph.i ], [ %inc123.i, %for.inc122.i ]
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i163}, i64 0, metadata !615) #5, !dbg !668
  %arrayidx94.i212 = getelementptr inbounds i32* %240, i64 %indvars.iv281.i, !dbg !668
  %243 = load i32* %arrayidx94.i212, align 4, !dbg !668, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %243}, i64 0, metadata !627) #5, !dbg !668
  %cmp95.i213 = icmp sgt i32 %243, -1, !dbg !668
  br i1 %cmp95.i213, label %for.cond97.preheader.i, label %for.inc122.i, !dbg !668

for.cond97.preheader.i:                           ; preds = %for.body92.i
  %cmp98224.i = icmp sgt i32 %243, 0, !dbg !675
  br i1 %cmp98224.i, label %for.body99.lr.ph.i, label %for.end117.i, !dbg !675

for.body99.lr.ph.i:                               ; preds = %for.cond97.preheader.i
  %244 = sext i32 %kk.6236.i to i64
  %245 = trunc i64 %indvars.iv281.i to i32, !dbg !676
  br label %for.body99.i214, !dbg !675

for.body99.i214:                                  ; preds = %if.end109.i, %for.body99.lr.ph.i
  %indvars.iv278.i = phi i64 [ %244, %for.body99.lr.ph.i ], [ %indvars.iv.next279.i, %if.end109.i ]
  %kk.7227.i = phi i32 [ %kk.6236.i, %for.body99.lr.ph.i ], [ %inc116.i, %if.end109.i ]
  %ii.2226.i = phi i32 [ 0, %for.body99.lr.ph.i ], [ %inc115.i, %if.end109.i ]
  %sum0.2225.i = phi double [ 0.000000e+00, %for.body99.lr.ph.i ], [ %add113.i, %if.end109.i ]
  call void @llvm.dbg.value(metadata !{double** %entriesA.i154}, i64 0, metadata !618) #5, !dbg !674
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i162}, i64 0, metadata !623) #5, !dbg !670
  %arrayidx103.i = getelementptr inbounds i32* %241, i64 %indvars.iv278.i, !dbg !670
  %246 = load i32* %arrayidx103.i, align 4, !dbg !670, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %246}, i64 0, metadata !631) #5, !dbg !670
  %cmp104.i = icmp sgt i32 %246, -1, !dbg !676
  %cmp106.i = icmp slt i32 %246, %245, !dbg !676
  %or.cond210.i = and i1 %cmp104.i, %cmp106.i, !dbg !676
  br i1 %or.cond210.i, label %if.end109.i, label %if.then107.i, !dbg !676

if.then107.i:                                     ; preds = %for.body99.i214
  %247 = load %struct._IO_FILE** @stderr, align 8, !dbg !677, !tbaa !301
  %call108.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %247, i8* getelementptr inbounds ([52 x i8]* @.str5, i64 0, i64 0), i32 %irowA.2233.i, i32 %kk.7227.i, i32 %ii.2226.i, i32 %246) #6, !dbg !677
  call void @exit(i32 -1) #7, !dbg !679
  unreachable, !dbg !679

if.end109.i:                                      ; preds = %for.body99.i214
  %arrayidx101.i215 = getelementptr inbounds double* %242, i64 %indvars.iv278.i, !dbg !674
  %248 = load double* %arrayidx101.i215, align 8, !dbg !674, !tbaa !361
  %idxprom110.i = sext i32 %246 to i64, !dbg !680
  %arrayidx111.i216 = getelementptr inbounds double* %colB0.0.lcssa.i188, i64 %idxprom110.i, !dbg !680
  %249 = load double* %arrayidx111.i216, align 8, !dbg !680, !tbaa !361
  %mul112.i = fmul double %248, %249, !dbg !680
  %add113.i = fadd double %sum0.2225.i, %mul112.i, !dbg !680
  call void @llvm.dbg.value(metadata !{double %add113.i}, i64 0, metadata !636) #5, !dbg !680
  %inc115.i = add nsw i32 %ii.2226.i, 1, !dbg !675
  call void @llvm.dbg.value(metadata !{i32 %inc115.i}, i64 0, metadata !641) #5, !dbg !675
  %indvars.iv.next279.i = add i64 %indvars.iv278.i, 1, !dbg !675
  %inc116.i = add nsw i32 %kk.7227.i, 1, !dbg !675
  call void @llvm.dbg.value(metadata !{i32 %inc116.i}, i64 0, metadata !625) #5, !dbg !675
  %cmp98.i217 = icmp slt i32 %inc115.i, %243, !dbg !675
  br i1 %cmp98.i217, label %for.body99.i214, label %for.end117.i, !dbg !675

for.end117.i:                                     ; preds = %if.end109.i, %for.cond97.preheader.i
  %kk.7.lcssa.i218 = phi i32 [ %kk.6236.i, %for.cond97.preheader.i ], [ %inc116.i, %if.end109.i ]
  %sum0.2.lcssa.i219 = phi double [ 0.000000e+00, %for.cond97.preheader.i ], [ %add113.i, %if.end109.i ]
  %arrayidx119.i220 = getelementptr inbounds double* %colB0.0.lcssa.i188, i64 %indvars.iv281.i, !dbg !681
  %250 = load double* %arrayidx119.i220, align 8, !dbg !681, !tbaa !361
  %sub120.i = fsub double %250, %sum0.2.lcssa.i219, !dbg !681
  store double %sub120.i, double* %arrayidx119.i220, align 8, !dbg !681, !tbaa !361
  br label %for.inc122.i, !dbg !682

for.inc122.i:                                     ; preds = %for.end117.i, %for.body92.i
  %kk.8.i221 = phi i32 [ %kk.7.lcssa.i218, %for.end117.i ], [ %kk.6236.i, %for.body92.i ]
  %indvars.iv.next282.i = add i64 %indvars.iv281.i, 1, !dbg !665
  %inc123.i = add nsw i32 %irowA.2233.i, 1, !dbg !665
  call void @llvm.dbg.value(metadata !{i32 %inc123.i}, i64 0, metadata !626) #5, !dbg !665
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i160}, i64 0, metadata !611) #5, !dbg !665
  %251 = trunc i64 %indvars.iv.next282.i to i32, !dbg !665
  %cmp91.i = icmp slt i32 %251, %239, !dbg !665
  br i1 %cmp91.i, label %for.body92.i, label %sw.epilog34, !dbg !665

sw.default:                                       ; preds = %sw.bb
  %252 = load %struct._IO_FILE** @stderr, align 8, !dbg !683, !tbaa !301
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %252, i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 %8) #6, !dbg !683
  call void @exit(i32 -1) #7, !dbg !684
  unreachable, !dbg !684

sw.bb21:                                          ; preds = %if.end12
  %mode22 = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 1, !dbg !685
  %253 = load i32* %mode22, align 4, !dbg !685, !tbaa !306
  switch i32 %253, label %sw.default27 [
    i32 5, label %sw.bb23
    i32 2, label %sw.bb24
    i32 6, label %sw.bb25
    i32 3, label %sw.bb26
  ], !dbg !685

sw.bb23:                                          ; preds = %sw.bb21
  %254 = bitcast double** %entriesA.i222 to i8*, !dbg !686
  call void @llvm.lifetime.start(i64 8, i8* %254) #5, !dbg !686
  %255 = bitcast double** %entriesB.i223 to i8*, !dbg !686
  call void @llvm.lifetime.start(i64 8, i8* %255) #5, !dbg !686
  %256 = bitcast i32* %inc1.i224 to i8*, !dbg !686
  call void @llvm.lifetime.start(i64 4, i8* %256) #5, !dbg !686
  %257 = bitcast i32* %inc2.i225 to i8*, !dbg !686
  call void @llvm.lifetime.start(i64 4, i8* %257) #5, !dbg !686
  %258 = bitcast i32* %ncolB.i226 to i8*, !dbg !686
  call void @llvm.lifetime.start(i64 4, i8* %258) #5, !dbg !686
  %259 = bitcast i32* %nentA.i227 to i8*, !dbg !686
  call void @llvm.lifetime.start(i64 4, i8* %259) #5, !dbg !686
  %260 = bitcast i32* %nrowA.i228 to i8*, !dbg !686
  call void @llvm.lifetime.start(i64 4, i8* %260) #5, !dbg !686
  %261 = bitcast i32* %nrowB.i229 to i8*, !dbg !686
  call void @llvm.lifetime.start(i64 4, i8* %261) #5, !dbg !686
  %262 = bitcast i32** %firstlocsA.i230 to i8*, !dbg !686
  call void @llvm.lifetime.start(i64 8, i8* %262) #5, !dbg !686
  %263 = bitcast i32** %sizesA.i231 to i8*, !dbg !686
  call void @llvm.lifetime.start(i64 8, i8* %263) #5, !dbg !686
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !689) #5, !dbg !686
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxB}, i64 0, metadata !690) #5, !dbg !691
  call void @llvm.dbg.declare(metadata !{double** %entriesA.i222}, metadata !89) #5, !dbg !692
  call void @llvm.dbg.declare(metadata !{double** %entriesB.i223}, metadata !90) #5, !dbg !692
  call void @llvm.dbg.declare(metadata !{i32* %inc1.i224}, metadata !94) #5, !dbg !693
  call void @llvm.dbg.declare(metadata !{i32* %inc2.i225}, metadata !95) #5, !dbg !693
  call void @llvm.dbg.declare(metadata !{i32* %ncolB.i226}, metadata !101) #5, !dbg !694
  call void @llvm.dbg.declare(metadata !{i32* %nentA.i227}, metadata !102) #5, !dbg !694
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i228}, metadata !103) #5, !dbg !694
  call void @llvm.dbg.declare(metadata !{i32* %nrowB.i229}, metadata !104) #5, !dbg !694
  call void @llvm.dbg.declare(metadata !{i32** %firstlocsA.i230}, metadata !106) #5, !dbg !695
  call void @llvm.dbg.declare(metadata !{i32** %sizesA.i231}, metadata !107) #5, !dbg !695
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i228, i32* %nentA.i227, i32** %firstlocsA.i230, i32** %sizesA.i231, double** %entriesA.i222) #6, !dbg !696
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i229, i32* %ncolB.i226, i32* %inc1.i224, i32* %inc2.i225, double** %entriesB.i223) #6, !dbg !697
  call void @llvm.dbg.value(metadata !{double** %entriesB.i223}, i64 0, metadata !698) #5, !dbg !699
  call void @llvm.dbg.value(metadata !{double** %entriesB.i223}, i64 0, metadata !90), !dbg !699
  %264 = load double** %entriesB.i223, align 8, !dbg !699, !tbaa !301
  call void @llvm.dbg.value(metadata !{double* %264}, i64 0, metadata !700) #5, !dbg !699
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !701) #5, !dbg !702
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i226}, i64 0, metadata !704) #5, !dbg !702
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i226}, i64 0, metadata !101), !dbg !702
  %265 = load i32* %ncolB.i226, align 4, !dbg !702, !tbaa !306
  %sub410.i = add nsw i32 %265, -2, !dbg !702
  %cmp411.i = icmp sgt i32 %sub410.i, 0, !dbg !702
  br i1 %cmp411.i, label %for.body.lr.ph.i235, label %for.end87.i, !dbg !702

for.body.lr.ph.i235:                              ; preds = %sw.bb23
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i229}, i64 0, metadata !705) #5, !dbg !706
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i229}, i64 0, metadata !104), !dbg !706
  %266 = load i32* %nrowB.i229, align 4, !dbg !706, !tbaa !306
  %mul.i232 = shl nsw i32 %266, 1, !dbg !706
  %idx.ext.i233 = sext i32 %mul.i232 to i64, !dbg !706
  %add.ptr.sum.i234 = shl nsw i64 %idx.ext.i233, 1, !dbg !708
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i228}, i64 0, metadata !709) #5, !dbg !710
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i228}, i64 0, metadata !103), !dbg !710
  %267 = load i32* %nrowA.i228, align 4, !dbg !710, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32* %nentA.i227}, i64 0, metadata !712) #5, !dbg !710
  call void @llvm.dbg.value(metadata !{i32* %nentA.i227}, i64 0, metadata !102), !dbg !710
  %268 = load i32* %nentA.i227, align 4, !dbg !710, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i231}, i64 0, metadata !713) #5, !dbg !714
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i231}, i64 0, metadata !107), !dbg !714
  %269 = load i32** %sizesA.i231, align 8, !dbg !714, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i230}, i64 0, metadata !716) #5, !dbg !717
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i230}, i64 0, metadata !106), !dbg !717
  %270 = load i32** %firstlocsA.i230, align 8, !dbg !717, !tbaa !301
  call void @llvm.dbg.value(metadata !{double** %entriesA.i222}, i64 0, metadata !719) #5, !dbg !720
  call void @llvm.dbg.value(metadata !{double** %entriesA.i222}, i64 0, metadata !89), !dbg !720
  %271 = load double** %entriesA.i222, align 8, !dbg !720, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i229}, i64 0, metadata !705) #5, !dbg !723
  %add.ptr3.sum.i = add i64 %add.ptr.sum.i234, %idx.ext.i233, !dbg !723
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i226}, i64 0, metadata !704) #5, !dbg !702
  br label %for.body.i236, !dbg !702

for.body.i236:                                    ; preds = %for.end81.i, %for.body.lr.ph.i235
  %jcolB.0413.i = phi i32 [ 0, %for.body.lr.ph.i235 ], [ %add86.i, %for.end81.i ]
  %colB0.0412.i = phi double* [ %264, %for.body.lr.ph.i235 ], [ %add.ptr84.i, %for.end81.i ]
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i229}, i64 0, metadata !705) #5, !dbg !706
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i228}, i64 0, metadata !709) #5, !dbg !710
  call void @llvm.dbg.value(metadata !{i32* %nentA.i227}, i64 0, metadata !712) #5, !dbg !710
  call void @llvm.dbg.value(metadata !{i32 %268}, i64 0, metadata !724) #5, !dbg !710
  br label %for.cond5.outer.i, !dbg !710

for.cond5.outer.i:                                ; preds = %if.then.i251, %for.body33.i, %for.body.i236
  %colstart.0.ph.i237 = phi i32 [ %268, %for.body.i236 ], [ %sub16.i, %for.body33.i ], [ %sub16.i, %if.then.i251 ]
  %irowA.0.in.ph.i238 = phi i32 [ %267, %for.body.i236 ], [ %irowA.0.i240, %for.body33.i ], [ %irowA.0.i240, %if.then.i251 ]
  %272 = sext i32 %irowA.0.in.ph.i238 to i64
  br label %for.cond5.i

for.cond5.i:                                      ; preds = %for.body7.i, %for.cond5.outer.i
  %indvars.iv432.i = phi i64 [ %272, %for.cond5.outer.i ], [ %indvars.iv.next433.i, %for.body7.i ]
  %irowA.0.in.i239 = phi i32 [ %irowA.0.in.ph.i238, %for.cond5.outer.i ], [ %irowA.0.i240, %for.body7.i ]
  %indvars.iv.next433.i = add i64 %indvars.iv432.i, -1, !dbg !714
  %irowA.0.i240 = add nsw i32 %irowA.0.in.i239, -1, !dbg !710
  %273 = trunc i64 %indvars.iv432.i to i32, !dbg !710
  %cmp6.i241 = icmp sgt i32 %273, 0, !dbg !710
  br i1 %cmp6.i241, label %for.body7.i, label %for.end81.i, !dbg !710

for.body7.i:                                      ; preds = %for.cond5.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i231}, i64 0, metadata !713) #5, !dbg !714
  %arrayidx.i242 = getelementptr inbounds i32* %269, i64 %indvars.iv.next433.i, !dbg !714
  %274 = load i32* %arrayidx.i242, align 4, !dbg !714, !tbaa !306
  %cmp8.i243 = icmp sgt i32 %274, 0, !dbg !714
  br i1 %cmp8.i243, label %if.then.i251, label %for.cond5.i, !dbg !714

if.then.i251:                                     ; preds = %for.body7.i
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i230}, i64 0, metadata !716) #5, !dbg !717
  %arrayidx10.i244 = getelementptr inbounds i32* %270, i64 %indvars.iv.next433.i, !dbg !717
  %275 = load i32* %arrayidx10.i244, align 4, !dbg !717, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %275}, i64 0, metadata !725) #5, !dbg !717
  %add.i245 = add i32 %274, -1, !dbg !726
  %sub13.i = add i32 %add.i245, %275, !dbg !726
  call void @llvm.dbg.value(metadata !{i32 %sub13.i}, i64 0, metadata !727) #5, !dbg !726
  %sub14.neg.i = add i32 %colstart.0.ph.i237, -1, !dbg !728
  %add15.neg.i = add i32 %sub14.neg.i, %275, !dbg !728
  %sub16.i = sub i32 %add15.neg.i, %sub13.i, !dbg !728
  call void @llvm.dbg.value(metadata !{i32 %sub16.i}, i64 0, metadata !724) #5, !dbg !728
  %mul17.i = shl nsw i32 %irowA.0.i240, 1, !dbg !729
  call void @llvm.dbg.value(metadata !{i32 %mul17.i}, i64 0, metadata !730) #5, !dbg !729
  %add18381.i = or i32 %mul17.i, 1, !dbg !731
  call void @llvm.dbg.value(metadata !{i32 %add18381.i}, i64 0, metadata !732) #5, !dbg !731
  %idxprom19.i = sext i32 %mul17.i to i64, !dbg !733
  %arrayidx20.i246 = getelementptr inbounds double* %colB0.0412.i, i64 %idxprom19.i, !dbg !733
  %276 = load double* %arrayidx20.i246, align 8, !dbg !733, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %276}, i64 0, metadata !734) #5, !dbg !733
  %idxprom21.i = sext i32 %add18381.i to i64, !dbg !733
  %arrayidx22.i = getelementptr inbounds double* %colB0.0412.i, i64 %idxprom21.i, !dbg !733
  %277 = load double* %arrayidx22.i, align 8, !dbg !733, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %277}, i64 0, metadata !735) #5, !dbg !733
  %add.ptr.sum382.i = add i64 %idxprom19.i, %idx.ext.i233, !dbg !736
  %arrayidx24.i247 = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr.sum382.i, !dbg !736
  %278 = load double* %arrayidx24.i247, align 8, !dbg !736, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %278}, i64 0, metadata !737) #5, !dbg !736
  %add.ptr.sum383.i = add i64 %idxprom21.i, %idx.ext.i233, !dbg !736
  %arrayidx26.i248 = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr.sum383.i, !dbg !736
  %279 = load double* %arrayidx26.i248, align 8, !dbg !736, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %279}, i64 0, metadata !738) #5, !dbg !736
  %add.ptr3.sum384.i = add i64 %idxprom19.i, %add.ptr.sum.i234, !dbg !739
  %arrayidx28.i249 = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr3.sum384.i, !dbg !739
  %280 = load double* %arrayidx28.i249, align 8, !dbg !739, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %280}, i64 0, metadata !740) #5, !dbg !739
  %add.ptr3.sum385.i = add i64 %idxprom21.i, %add.ptr.sum.i234, !dbg !739
  %arrayidx30.i250 = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr3.sum385.i, !dbg !739
  %281 = load double* %arrayidx30.i250, align 8, !dbg !739, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %281}, i64 0, metadata !741) #5, !dbg !739
  call void @llvm.dbg.value(metadata !{i32 %275}, i64 0, metadata !742) #5, !dbg !743
  call void @llvm.dbg.value(metadata !{i32 %sub16.i}, i64 0, metadata !744) #5, !dbg !743
  %cmp32404.i = icmp sgt i32 %275, %sub13.i, !dbg !743
  br i1 %cmp32404.i, label %for.cond5.outer.i, label %for.body33.lr.ph.i, !dbg !743

for.body33.lr.ph.i:                               ; preds = %if.then.i251
  %282 = sub i32 %colstart.0.ph.i237, %274, !dbg !743
  %283 = sext i32 %282 to i64
  %284 = sext i32 %275 to i64, !dbg !743
  br label %for.body33.i, !dbg !743

for.body33.i:                                     ; preds = %for.body33.i, %for.body33.lr.ph.i
  %indvars.iv436.i = phi i64 [ %indvars.iv.next437.i, %for.body33.i ], [ %284, %for.body33.lr.ph.i ], !dbg !743
  %indvars.iv434.i = phi i64 [ %indvars.iv.next435.i, %for.body33.i ], [ %283, %for.body33.lr.ph.i ]
  %285 = trunc i64 %indvars.iv434.i to i32, !dbg !720
  %mul34.i252 = shl nsw i32 %285, 1, !dbg !720
  %idxprom35.i = sext i32 %mul34.i252 to i64, !dbg !720
  call void @llvm.dbg.value(metadata !{double** %entriesA.i222}, i64 0, metadata !719) #5, !dbg !720
  %arrayidx36.i253 = getelementptr inbounds double* %271, i64 %idxprom35.i, !dbg !720
  %286 = load double* %arrayidx36.i253, align 8, !dbg !720, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %286}, i64 0, metadata !745) #5, !dbg !720
  %add38386.i = or i32 %mul34.i252, 1, !dbg !746
  %idxprom39.i = sext i32 %add38386.i to i64, !dbg !746
  %arrayidx40.i = getelementptr inbounds double* %271, i64 %idxprom39.i, !dbg !746
  %287 = load double* %arrayidx40.i, align 8, !dbg !746, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %287}, i64 0, metadata !747) #5, !dbg !746
  %288 = trunc i64 %indvars.iv436.i to i32, !dbg !748
  %mul41.i = shl nsw i32 %288, 1, !dbg !748
  call void @llvm.dbg.value(metadata !{i32 %mul41.i}, i64 0, metadata !730) #5, !dbg !748
  %add42387.i = or i32 %mul41.i, 1, !dbg !749
  call void @llvm.dbg.value(metadata !{i32 %add42387.i}, i64 0, metadata !732) #5, !dbg !749
  %mul43.i = fmul double %276, %286, !dbg !750
  %mul44.i = fmul double %277, %287, !dbg !750
  %sub45.i = fsub double %mul43.i, %mul44.i, !dbg !750
  %idxprom46.i = sext i32 %mul41.i to i64, !dbg !750
  %arrayidx47.i = getelementptr inbounds double* %colB0.0412.i, i64 %idxprom46.i, !dbg !750
  %289 = load double* %arrayidx47.i, align 8, !dbg !750, !tbaa !361
  %sub48.i = fsub double %289, %sub45.i, !dbg !750
  store double %sub48.i, double* %arrayidx47.i, align 8, !dbg !750, !tbaa !361
  %mul49.i = fmul double %277, %286, !dbg !751
  %mul50.i = fmul double %276, %287, !dbg !751
  %add51.i = fadd double %mul49.i, %mul50.i, !dbg !751
  %idxprom52.i = sext i32 %add42387.i to i64, !dbg !751
  %arrayidx53.i = getelementptr inbounds double* %colB0.0412.i, i64 %idxprom52.i, !dbg !751
  %290 = load double* %arrayidx53.i, align 8, !dbg !751, !tbaa !361
  %sub54.i = fsub double %290, %add51.i, !dbg !751
  store double %sub54.i, double* %arrayidx53.i, align 8, !dbg !751, !tbaa !361
  %mul55.i = fmul double %278, %286, !dbg !752
  %mul56.i = fmul double %279, %287, !dbg !752
  %sub57.i = fsub double %mul55.i, %mul56.i, !dbg !752
  %add.ptr.sum388.i = add i64 %idxprom46.i, %idx.ext.i233, !dbg !752
  %arrayidx59.i254 = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr.sum388.i, !dbg !752
  %291 = load double* %arrayidx59.i254, align 8, !dbg !752, !tbaa !361
  %sub60.i = fsub double %291, %sub57.i, !dbg !752
  store double %sub60.i, double* %arrayidx59.i254, align 8, !dbg !752, !tbaa !361
  %mul61.i = fmul double %279, %286, !dbg !753
  %mul62.i = fmul double %278, %287, !dbg !753
  %add63.i255 = fadd double %mul61.i, %mul62.i, !dbg !753
  %add.ptr.sum389.i = add i64 %idxprom52.i, %idx.ext.i233, !dbg !753
  %arrayidx65.i = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr.sum389.i, !dbg !753
  %292 = load double* %arrayidx65.i, align 8, !dbg !753, !tbaa !361
  %sub66.i = fsub double %292, %add63.i255, !dbg !753
  store double %sub66.i, double* %arrayidx65.i, align 8, !dbg !753, !tbaa !361
  %mul67.i256 = fmul double %280, %286, !dbg !754
  %mul68.i = fmul double %281, %287, !dbg !754
  %sub69.i = fsub double %mul67.i256, %mul68.i, !dbg !754
  %add.ptr3.sum390.i = add i64 %idxprom46.i, %add.ptr.sum.i234, !dbg !754
  %arrayidx71.i257 = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr3.sum390.i, !dbg !754
  %293 = load double* %arrayidx71.i257, align 8, !dbg !754, !tbaa !361
  %sub72.i258 = fsub double %293, %sub69.i, !dbg !754
  store double %sub72.i258, double* %arrayidx71.i257, align 8, !dbg !754, !tbaa !361
  %mul73.i = fmul double %281, %286, !dbg !755
  %mul74.i = fmul double %280, %287, !dbg !755
  %add75.i = fadd double %mul73.i, %mul74.i, !dbg !755
  %add.ptr3.sum391.i = add i64 %idxprom52.i, %add.ptr.sum.i234, !dbg !755
  %arrayidx77.i = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr3.sum391.i, !dbg !755
  %294 = load double* %arrayidx77.i, align 8, !dbg !755, !tbaa !361
  %sub78.i = fsub double %294, %add75.i, !dbg !755
  store double %sub78.i, double* %arrayidx77.i, align 8, !dbg !755, !tbaa !361
  %indvars.iv.next437.i = add i64 %indvars.iv436.i, 1, !dbg !743
  %indvars.iv.next435.i = add i64 %indvars.iv434.i, 1, !dbg !743
  %cmp32.i = icmp slt i32 %288, %sub13.i, !dbg !743
  br i1 %cmp32.i, label %for.body33.i, label %for.cond5.outer.i, !dbg !743

for.end81.i:                                      ; preds = %for.cond5.i
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i229}, i64 0, metadata !705) #5, !dbg !723
  %add.ptr84.i = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr3.sum.i, !dbg !723
  call void @llvm.dbg.value(metadata !{double* %add.ptr84.i}, i64 0, metadata !700) #5, !dbg !723
  %add86.i = add nsw i32 %jcolB.0413.i, 3, !dbg !702
  call void @llvm.dbg.value(metadata !{i32 %add86.i}, i64 0, metadata !701) #5, !dbg !702
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i226}, i64 0, metadata !704) #5, !dbg !702
  %cmp.i259 = icmp slt i32 %add86.i, %sub410.i, !dbg !702
  br i1 %cmp.i259, label %for.body.i236, label %for.end87.i, !dbg !702

for.end87.i:                                      ; preds = %for.end81.i, %sw.bb23
  %jcolB.0.lcssa.i260 = phi i32 [ 0, %sw.bb23 ], [ %add86.i, %for.end81.i ]
  %colB0.0.lcssa.i261 = phi double* [ %264, %sw.bb23 ], [ %add.ptr84.i, %for.end81.i ]
  %cmp89.i = icmp eq i32 %jcolB.0.lcssa.i260, %sub410.i, !dbg !756
  br i1 %cmp89.i, label %if.then90.i, label %if.else.i272, !dbg !756

if.then90.i:                                      ; preds = %for.end87.i
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i229}, i64 0, metadata !705) #5, !dbg !757
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i229}, i64 0, metadata !104), !dbg !757
  %295 = load i32* %nrowB.i229, align 4, !dbg !757, !tbaa !306
  %mul91.i = shl nsw i32 %295, 1, !dbg !757
  %idx.ext92.i = sext i32 %mul91.i to i64, !dbg !757
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i228}, i64 0, metadata !709) #5, !dbg !759
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i228}, i64 0, metadata !103), !dbg !759
  %296 = load i32* %nrowA.i228, align 4, !dbg !759, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32* %nentA.i227}, i64 0, metadata !712) #5, !dbg !759
  call void @llvm.dbg.value(metadata !{i32* %nentA.i227}, i64 0, metadata !102), !dbg !759
  %297 = load i32* %nentA.i227, align 4, !dbg !759, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %297}, i64 0, metadata !724) #5, !dbg !759
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i231}, i64 0, metadata !713) #5, !dbg !761
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i231}, i64 0, metadata !107), !dbg !761
  %298 = load i32** %sizesA.i231, align 8, !dbg !761, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i230}, i64 0, metadata !716) #5, !dbg !763
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i230}, i64 0, metadata !106), !dbg !763
  %299 = load i32** %firstlocsA.i230, align 8, !dbg !763, !tbaa !301
  call void @llvm.dbg.value(metadata !{double** %entriesA.i222}, i64 0, metadata !719) #5, !dbg !765
  call void @llvm.dbg.value(metadata !{double** %entriesA.i222}, i64 0, metadata !89), !dbg !765
  %300 = load double** %entriesA.i222, align 8, !dbg !765, !tbaa !301
  br label %for.cond95.outer.i, !dbg !759

for.cond95.outer.i:                               ; preds = %if.then101.i, %for.body123.i, %if.then90.i
  %colstart.2.ph.i262 = phi i32 [ %297, %if.then90.i ], [ %sub110.i, %for.body123.i ], [ %sub110.i, %if.then101.i ]
  %irowA.1.in.ph.i263 = phi i32 [ %296, %if.then90.i ], [ %irowA.1.i267, %for.body123.i ], [ %irowA.1.i267, %if.then101.i ]
  %301 = sext i32 %irowA.1.in.ph.i263 to i64
  br label %for.cond95.i

for.cond95.i:                                     ; preds = %for.body97.i269, %for.cond95.outer.i
  %indvars.iv.i264 = phi i64 [ %301, %for.cond95.outer.i ], [ %indvars.iv.next.i266, %for.body97.i269 ]
  %irowA.1.in.i265 = phi i32 [ %irowA.1.in.ph.i263, %for.cond95.outer.i ], [ %irowA.1.i267, %for.body97.i269 ]
  %indvars.iv.next.i266 = add i64 %indvars.iv.i264, -1, !dbg !761
  %irowA.1.i267 = add nsw i32 %irowA.1.in.i265, -1, !dbg !759
  %302 = trunc i64 %indvars.iv.i264 to i32, !dbg !759
  %cmp96.i = icmp sgt i32 %302, 0, !dbg !759
  br i1 %cmp96.i, label %for.body97.i269, label %sw.epilog34, !dbg !759

for.body97.i269:                                  ; preds = %for.cond95.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i231}, i64 0, metadata !713) #5, !dbg !761
  %arrayidx99.i268 = getelementptr inbounds i32* %298, i64 %indvars.iv.next.i266, !dbg !761
  %303 = load i32* %arrayidx99.i268, align 4, !dbg !761, !tbaa !306
  %cmp100.i = icmp sgt i32 %303, 0, !dbg !761
  br i1 %cmp100.i, label %if.then101.i, label %for.cond95.i, !dbg !761

if.then101.i:                                     ; preds = %for.body97.i269
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i230}, i64 0, metadata !716) #5, !dbg !763
  %arrayidx103.i270 = getelementptr inbounds i32* %299, i64 %indvars.iv.next.i266, !dbg !763
  %304 = load i32* %arrayidx103.i270, align 4, !dbg !763, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %304}, i64 0, metadata !725) #5, !dbg !763
  %add106.i = add i32 %303, -1, !dbg !768
  %sub107.i = add i32 %add106.i, %304, !dbg !768
  call void @llvm.dbg.value(metadata !{i32 %sub107.i}, i64 0, metadata !727) #5, !dbg !768
  %sub108.neg.i = add i32 %colstart.2.ph.i262, -1, !dbg !769
  %add109.neg.i = add i32 %sub108.neg.i, %304, !dbg !769
  %sub110.i = sub i32 %add109.neg.i, %sub107.i, !dbg !769
  call void @llvm.dbg.value(metadata !{i32 %sub110.i}, i64 0, metadata !724) #5, !dbg !769
  %mul111.i = shl nsw i32 %irowA.1.i267, 1, !dbg !770
  call void @llvm.dbg.value(metadata !{i32 %mul111.i}, i64 0, metadata !730) #5, !dbg !770
  %add112375.i = or i32 %mul111.i, 1, !dbg !771
  call void @llvm.dbg.value(metadata !{i32 %add112375.i}, i64 0, metadata !732) #5, !dbg !771
  %idxprom113.i = sext i32 %mul111.i to i64, !dbg !772
  %arrayidx114.i271 = getelementptr inbounds double* %colB0.0.lcssa.i261, i64 %idxprom113.i, !dbg !772
  %305 = load double* %arrayidx114.i271, align 8, !dbg !772, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %305}, i64 0, metadata !734) #5, !dbg !772
  %idxprom115.i = sext i32 %add112375.i to i64, !dbg !772
  %arrayidx116.i = getelementptr inbounds double* %colB0.0.lcssa.i261, i64 %idxprom115.i, !dbg !772
  %306 = load double* %arrayidx116.i, align 8, !dbg !772, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %306}, i64 0, metadata !735) #5, !dbg !772
  %add.ptr93.sum.i = add i64 %idxprom113.i, %idx.ext92.i, !dbg !773
  %arrayidx118.i = getelementptr inbounds double* %colB0.0.lcssa.i261, i64 %add.ptr93.sum.i, !dbg !773
  %307 = load double* %arrayidx118.i, align 8, !dbg !773, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %307}, i64 0, metadata !737) #5, !dbg !773
  %add.ptr93.sum376.i = add i64 %idxprom115.i, %idx.ext92.i, !dbg !773
  %arrayidx120.i = getelementptr inbounds double* %colB0.0.lcssa.i261, i64 %add.ptr93.sum376.i, !dbg !773
  %308 = load double* %arrayidx120.i, align 8, !dbg !773, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %308}, i64 0, metadata !738) #5, !dbg !773
  call void @llvm.dbg.value(metadata !{i32 %304}, i64 0, metadata !742) #5, !dbg !774
  call void @llvm.dbg.value(metadata !{i32 %sub110.i}, i64 0, metadata !744) #5, !dbg !774
  %cmp122394.i = icmp sgt i32 %304, %sub107.i, !dbg !774
  br i1 %cmp122394.i, label %for.cond95.outer.i, label %for.body123.lr.ph.i, !dbg !774

for.body123.lr.ph.i:                              ; preds = %if.then101.i
  %309 = sub i32 %colstart.2.ph.i262, %303, !dbg !774
  %310 = sext i32 %309 to i64
  %311 = sext i32 %304 to i64, !dbg !774
  br label %for.body123.i, !dbg !774

for.body123.i:                                    ; preds = %for.body123.i, %for.body123.lr.ph.i
  %indvars.iv420.i = phi i64 [ %indvars.iv.next421.i, %for.body123.i ], [ %311, %for.body123.lr.ph.i ], !dbg !774
  %indvars.iv418.i = phi i64 [ %indvars.iv.next419.i, %for.body123.i ], [ %310, %for.body123.lr.ph.i ]
  %312 = trunc i64 %indvars.iv418.i to i32, !dbg !765
  %mul124.i = shl nsw i32 %312, 1, !dbg !765
  %idxprom125.i = sext i32 %mul124.i to i64, !dbg !765
  call void @llvm.dbg.value(metadata !{double** %entriesA.i222}, i64 0, metadata !719) #5, !dbg !765
  %arrayidx126.i = getelementptr inbounds double* %300, i64 %idxprom125.i, !dbg !765
  %313 = load double* %arrayidx126.i, align 8, !dbg !765, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %313}, i64 0, metadata !745) #5, !dbg !765
  %add128377.i = or i32 %mul124.i, 1, !dbg !775
  %idxprom129.i = sext i32 %add128377.i to i64, !dbg !775
  %arrayidx130.i = getelementptr inbounds double* %300, i64 %idxprom129.i, !dbg !775
  %314 = load double* %arrayidx130.i, align 8, !dbg !775, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %314}, i64 0, metadata !747) #5, !dbg !775
  %315 = trunc i64 %indvars.iv420.i to i32, !dbg !776
  %mul131.i = shl nsw i32 %315, 1, !dbg !776
  call void @llvm.dbg.value(metadata !{i32 %mul131.i}, i64 0, metadata !730) #5, !dbg !776
  %add132378.i = or i32 %mul131.i, 1, !dbg !777
  call void @llvm.dbg.value(metadata !{i32 %add132378.i}, i64 0, metadata !732) #5, !dbg !777
  %mul133.i = fmul double %305, %313, !dbg !778
  %mul134.i = fmul double %306, %314, !dbg !778
  %sub135.i = fsub double %mul133.i, %mul134.i, !dbg !778
  %idxprom136.i = sext i32 %mul131.i to i64, !dbg !778
  %arrayidx137.i = getelementptr inbounds double* %colB0.0.lcssa.i261, i64 %idxprom136.i, !dbg !778
  %316 = load double* %arrayidx137.i, align 8, !dbg !778, !tbaa !361
  %sub138.i = fsub double %316, %sub135.i, !dbg !778
  store double %sub138.i, double* %arrayidx137.i, align 8, !dbg !778, !tbaa !361
  %mul139.i = fmul double %306, %313, !dbg !779
  %mul140.i = fmul double %305, %314, !dbg !779
  %add141.i = fadd double %mul139.i, %mul140.i, !dbg !779
  %idxprom142.i = sext i32 %add132378.i to i64, !dbg !779
  %arrayidx143.i = getelementptr inbounds double* %colB0.0.lcssa.i261, i64 %idxprom142.i, !dbg !779
  %317 = load double* %arrayidx143.i, align 8, !dbg !779, !tbaa !361
  %sub144.i = fsub double %317, %add141.i, !dbg !779
  store double %sub144.i, double* %arrayidx143.i, align 8, !dbg !779, !tbaa !361
  %mul145.i = fmul double %307, %313, !dbg !780
  %mul146.i = fmul double %308, %314, !dbg !780
  %sub147.i = fsub double %mul145.i, %mul146.i, !dbg !780
  %add.ptr93.sum379.i = add i64 %idxprom136.i, %idx.ext92.i, !dbg !780
  %arrayidx149.i = getelementptr inbounds double* %colB0.0.lcssa.i261, i64 %add.ptr93.sum379.i, !dbg !780
  %318 = load double* %arrayidx149.i, align 8, !dbg !780, !tbaa !361
  %sub150.i = fsub double %318, %sub147.i, !dbg !780
  store double %sub150.i, double* %arrayidx149.i, align 8, !dbg !780, !tbaa !361
  %mul151.i = fmul double %308, %313, !dbg !781
  %mul152.i = fmul double %307, %314, !dbg !781
  %add153.i = fadd double %mul151.i, %mul152.i, !dbg !781
  %add.ptr93.sum380.i = add i64 %idxprom142.i, %idx.ext92.i, !dbg !781
  %arrayidx155.i = getelementptr inbounds double* %colB0.0.lcssa.i261, i64 %add.ptr93.sum380.i, !dbg !781
  %319 = load double* %arrayidx155.i, align 8, !dbg !781, !tbaa !361
  %sub156.i = fsub double %319, %add153.i, !dbg !781
  store double %sub156.i, double* %arrayidx155.i, align 8, !dbg !781, !tbaa !361
  %indvars.iv.next421.i = add i64 %indvars.iv420.i, 1, !dbg !774
  %indvars.iv.next419.i = add i64 %indvars.iv418.i, 1, !dbg !774
  %cmp122.i = icmp slt i32 %315, %sub107.i, !dbg !774
  br i1 %cmp122.i, label %for.body123.i, label %for.cond95.outer.i, !dbg !774

if.else.i272:                                     ; preds = %for.end87.i
  %sub165.i = add nsw i32 %265, -1, !dbg !782
  %cmp166.i = icmp eq i32 %jcolB.0.lcssa.i260, %sub165.i, !dbg !782
  br i1 %cmp166.i, label %if.then167.i, label %sw.epilog34, !dbg !782

if.then167.i:                                     ; preds = %if.else.i272
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i228}, i64 0, metadata !709) #5, !dbg !783
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i228}, i64 0, metadata !103), !dbg !783
  %320 = load i32* %nrowA.i228, align 4, !dbg !783, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32* %nentA.i227}, i64 0, metadata !712) #5, !dbg !783
  call void @llvm.dbg.value(metadata !{i32* %nentA.i227}, i64 0, metadata !102), !dbg !783
  %321 = load i32* %nentA.i227, align 4, !dbg !783, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %321}, i64 0, metadata !724) #5, !dbg !783
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i231}, i64 0, metadata !713) #5, !dbg !786
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i231}, i64 0, metadata !107), !dbg !786
  %322 = load i32** %sizesA.i231, align 8, !dbg !786, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i230}, i64 0, metadata !716) #5, !dbg !788
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i230}, i64 0, metadata !106), !dbg !788
  %323 = load i32** %firstlocsA.i230, align 8, !dbg !788, !tbaa !301
  call void @llvm.dbg.value(metadata !{double** %entriesA.i222}, i64 0, metadata !719) #5, !dbg !790
  call void @llvm.dbg.value(metadata !{double** %entriesA.i222}, i64 0, metadata !89), !dbg !790
  %324 = load double** %entriesA.i222, align 8, !dbg !790, !tbaa !301
  br label %for.cond169.outer.i, !dbg !783

for.cond169.outer.i:                              ; preds = %if.then175.i, %for.body193.i, %if.then167.i
  %colstart.4.ph.i273 = phi i32 [ %321, %if.then167.i ], [ %sub184.i, %for.body193.i ], [ %sub184.i, %if.then175.i ]
  %irowA.2.in.ph.i274 = phi i32 [ %320, %if.then167.i ], [ %irowA.2.i276, %for.body193.i ], [ %irowA.2.i276, %if.then175.i ]
  %325 = sext i32 %irowA.2.in.ph.i274 to i64
  br label %for.cond169.i

for.cond169.i:                                    ; preds = %for.body171.i, %for.cond169.outer.i
  %indvars.iv424.i = phi i64 [ %325, %for.cond169.outer.i ], [ %indvars.iv.next425.i, %for.body171.i ]
  %irowA.2.in.i275 = phi i32 [ %irowA.2.in.ph.i274, %for.cond169.outer.i ], [ %irowA.2.i276, %for.body171.i ]
  %indvars.iv.next425.i = add i64 %indvars.iv424.i, -1, !dbg !786
  %irowA.2.i276 = add nsw i32 %irowA.2.in.i275, -1, !dbg !783
  %326 = trunc i64 %indvars.iv424.i to i32, !dbg !783
  %cmp170.i = icmp sgt i32 %326, 0, !dbg !783
  br i1 %cmp170.i, label %for.body171.i, label %sw.epilog34, !dbg !783

for.body171.i:                                    ; preds = %for.cond169.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i231}, i64 0, metadata !713) #5, !dbg !786
  %arrayidx173.i = getelementptr inbounds i32* %322, i64 %indvars.iv.next425.i, !dbg !786
  %327 = load i32* %arrayidx173.i, align 4, !dbg !786, !tbaa !306
  %cmp174.i = icmp sgt i32 %327, 0, !dbg !786
  br i1 %cmp174.i, label %if.then175.i, label %for.cond169.i, !dbg !786

if.then175.i:                                     ; preds = %for.body171.i
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i230}, i64 0, metadata !716) #5, !dbg !788
  %arrayidx177.i = getelementptr inbounds i32* %323, i64 %indvars.iv.next425.i, !dbg !788
  %328 = load i32* %arrayidx177.i, align 4, !dbg !788, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %328}, i64 0, metadata !725) #5, !dbg !788
  %add180.i = add i32 %327, -1, !dbg !793
  %sub181.i = add i32 %add180.i, %328, !dbg !793
  call void @llvm.dbg.value(metadata !{i32 %sub181.i}, i64 0, metadata !727) #5, !dbg !793
  %sub182.neg.i = add i32 %colstart.4.ph.i273, -1, !dbg !794
  %add183.neg.i = add i32 %sub182.neg.i, %328, !dbg !794
  %sub184.i = sub i32 %add183.neg.i, %sub181.i, !dbg !794
  call void @llvm.dbg.value(metadata !{i32 %sub184.i}, i64 0, metadata !724) #5, !dbg !794
  %mul185.i = shl nsw i32 %irowA.2.i276, 1, !dbg !795
  call void @llvm.dbg.value(metadata !{i32 %mul185.i}, i64 0, metadata !730) #5, !dbg !795
  %add186372.i = or i32 %mul185.i, 1, !dbg !796
  call void @llvm.dbg.value(metadata !{i32 %add186372.i}, i64 0, metadata !732) #5, !dbg !796
  %idxprom187.i = sext i32 %mul185.i to i64, !dbg !797
  %arrayidx188.i = getelementptr inbounds double* %colB0.0.lcssa.i261, i64 %idxprom187.i, !dbg !797
  %329 = load double* %arrayidx188.i, align 8, !dbg !797, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %329}, i64 0, metadata !734) #5, !dbg !797
  %idxprom189.i = sext i32 %add186372.i to i64, !dbg !797
  %arrayidx190.i = getelementptr inbounds double* %colB0.0.lcssa.i261, i64 %idxprom189.i, !dbg !797
  %330 = load double* %arrayidx190.i, align 8, !dbg !797, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %330}, i64 0, metadata !735) #5, !dbg !797
  call void @llvm.dbg.value(metadata !{i32 %328}, i64 0, metadata !742) #5, !dbg !798
  call void @llvm.dbg.value(metadata !{i32 %sub184.i}, i64 0, metadata !744) #5, !dbg !798
  %cmp192398.i = icmp sgt i32 %328, %sub181.i, !dbg !798
  br i1 %cmp192398.i, label %for.cond169.outer.i, label %for.body193.lr.ph.i, !dbg !798

for.body193.lr.ph.i:                              ; preds = %if.then175.i
  %331 = sub i32 %colstart.4.ph.i273, %327, !dbg !798
  %332 = sext i32 %331 to i64
  %333 = sext i32 %328 to i64, !dbg !798
  br label %for.body193.i, !dbg !798

for.body193.i:                                    ; preds = %for.body193.i, %for.body193.lr.ph.i
  %indvars.iv428.i = phi i64 [ %indvars.iv.next429.i, %for.body193.i ], [ %333, %for.body193.lr.ph.i ], !dbg !798
  %indvars.iv426.i = phi i64 [ %indvars.iv.next427.i, %for.body193.i ], [ %332, %for.body193.lr.ph.i ]
  %334 = trunc i64 %indvars.iv426.i to i32, !dbg !790
  %mul194.i = shl nsw i32 %334, 1, !dbg !790
  %idxprom195.i = sext i32 %mul194.i to i64, !dbg !790
  call void @llvm.dbg.value(metadata !{double** %entriesA.i222}, i64 0, metadata !719) #5, !dbg !790
  %arrayidx196.i = getelementptr inbounds double* %324, i64 %idxprom195.i, !dbg !790
  %335 = load double* %arrayidx196.i, align 8, !dbg !790, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %335}, i64 0, metadata !745) #5, !dbg !790
  %add198373.i = or i32 %mul194.i, 1, !dbg !799
  %idxprom199.i = sext i32 %add198373.i to i64, !dbg !799
  %arrayidx200.i = getelementptr inbounds double* %324, i64 %idxprom199.i, !dbg !799
  %336 = load double* %arrayidx200.i, align 8, !dbg !799, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %336}, i64 0, metadata !747) #5, !dbg !799
  %337 = trunc i64 %indvars.iv428.i to i32, !dbg !800
  %mul201.i = shl nsw i32 %337, 1, !dbg !800
  call void @llvm.dbg.value(metadata !{i32 %mul201.i}, i64 0, metadata !730) #5, !dbg !800
  %add202374.i = or i32 %mul201.i, 1, !dbg !801
  call void @llvm.dbg.value(metadata !{i32 %add202374.i}, i64 0, metadata !732) #5, !dbg !801
  %mul203.i = fmul double %329, %335, !dbg !802
  %mul204.i = fmul double %330, %336, !dbg !802
  %sub205.i = fsub double %mul203.i, %mul204.i, !dbg !802
  %idxprom206.i = sext i32 %mul201.i to i64, !dbg !802
  %arrayidx207.i = getelementptr inbounds double* %colB0.0.lcssa.i261, i64 %idxprom206.i, !dbg !802
  %338 = load double* %arrayidx207.i, align 8, !dbg !802, !tbaa !361
  %sub208.i = fsub double %338, %sub205.i, !dbg !802
  store double %sub208.i, double* %arrayidx207.i, align 8, !dbg !802, !tbaa !361
  %mul209.i = fmul double %330, %335, !dbg !803
  %mul210.i = fmul double %329, %336, !dbg !803
  %add211.i = fadd double %mul209.i, %mul210.i, !dbg !803
  %idxprom212.i = sext i32 %add202374.i to i64, !dbg !803
  %arrayidx213.i = getelementptr inbounds double* %colB0.0.lcssa.i261, i64 %idxprom212.i, !dbg !803
  %339 = load double* %arrayidx213.i, align 8, !dbg !803, !tbaa !361
  %sub214.i = fsub double %339, %add211.i, !dbg !803
  store double %sub214.i, double* %arrayidx213.i, align 8, !dbg !803, !tbaa !361
  %indvars.iv.next429.i = add i64 %indvars.iv428.i, 1, !dbg !798
  %indvars.iv.next427.i = add i64 %indvars.iv426.i, 1, !dbg !798
  %cmp192.i = icmp slt i32 %337, %sub181.i, !dbg !798
  br i1 %cmp192.i, label %for.body193.i, label %for.cond169.outer.i, !dbg !798

sw.bb24:                                          ; preds = %sw.bb21
  %340 = bitcast double** %entriesA.i277 to i8*, !dbg !804
  call void @llvm.lifetime.start(i64 8, i8* %340) #5, !dbg !804
  %341 = bitcast double** %entriesB.i278 to i8*, !dbg !804
  call void @llvm.lifetime.start(i64 8, i8* %341) #5, !dbg !804
  %342 = bitcast i32* %inc1.i279 to i8*, !dbg !804
  call void @llvm.lifetime.start(i64 4, i8* %342) #5, !dbg !804
  %343 = bitcast i32* %inc2.i280 to i8*, !dbg !804
  call void @llvm.lifetime.start(i64 4, i8* %343) #5, !dbg !804
  %344 = bitcast i32* %ncolB.i281 to i8*, !dbg !804
  call void @llvm.lifetime.start(i64 4, i8* %344) #5, !dbg !804
  %345 = bitcast i32* %nentA.i282 to i8*, !dbg !804
  call void @llvm.lifetime.start(i64 4, i8* %345) #5, !dbg !804
  %346 = bitcast i32* %nrowA.i283 to i8*, !dbg !804
  call void @llvm.lifetime.start(i64 4, i8* %346) #5, !dbg !804
  %347 = bitcast i32* %nrowB.i284 to i8*, !dbg !804
  call void @llvm.lifetime.start(i64 4, i8* %347) #5, !dbg !804
  %348 = bitcast i32** %indicesA.i285 to i8*, !dbg !804
  call void @llvm.lifetime.start(i64 8, i8* %348) #5, !dbg !804
  %349 = bitcast i32** %sizesA.i286 to i8*, !dbg !804
  call void @llvm.lifetime.start(i64 8, i8* %349) #5, !dbg !804
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !806) #5, !dbg !804
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxB}, i64 0, metadata !807) #5, !dbg !808
  call void @llvm.dbg.declare(metadata !{double** %entriesA.i277}, metadata !54) #5, !dbg !809
  call void @llvm.dbg.declare(metadata !{double** %entriesB.i278}, metadata !55) #5, !dbg !809
  call void @llvm.dbg.declare(metadata !{i32* %inc1.i279}, metadata !59) #5, !dbg !810
  call void @llvm.dbg.declare(metadata !{i32* %inc2.i280}, metadata !60) #5, !dbg !810
  call void @llvm.dbg.declare(metadata !{i32* %ncolB.i281}, metadata !65) #5, !dbg !811
  call void @llvm.dbg.declare(metadata !{i32* %nentA.i282}, metadata !66) #5, !dbg !811
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i283}, metadata !67) #5, !dbg !811
  call void @llvm.dbg.declare(metadata !{i32* %nrowB.i284}, metadata !68) #5, !dbg !811
  call void @llvm.dbg.declare(metadata !{i32** %indicesA.i285}, metadata !71) #5, !dbg !812
  call void @llvm.dbg.declare(metadata !{i32** %sizesA.i286}, metadata !73) #5, !dbg !812
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i283, i32* %nentA.i282, i32** %sizesA.i286, i32** %indicesA.i285, double** %entriesA.i277) #6, !dbg !813
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i284, i32* %ncolB.i281, i32* %inc1.i279, i32* %inc2.i280, double** %entriesB.i278) #6, !dbg !814
  call void @llvm.dbg.value(metadata !{double** %entriesB.i278}, i64 0, metadata !815) #5, !dbg !816
  call void @llvm.dbg.value(metadata !{double** %entriesB.i278}, i64 0, metadata !55), !dbg !816
  %350 = load double** %entriesB.i278, align 8, !dbg !816, !tbaa !301
  call void @llvm.dbg.value(metadata !{double* %350}, i64 0, metadata !817) #5, !dbg !816
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !818) #5, !dbg !819
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i281}, i64 0, metadata !821) #5, !dbg !819
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i281}, i64 0, metadata !65), !dbg !819
  %351 = load i32* %ncolB.i281, align 4, !dbg !819, !tbaa !306
  %sub378.i = add nsw i32 %351, -2, !dbg !819
  %cmp379.i = icmp sgt i32 %sub378.i, 0, !dbg !819
  br i1 %cmp379.i, label %for.body.lr.ph.i291, label %for.end81.i338, !dbg !819

for.body.lr.ph.i291:                              ; preds = %sw.bb24
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i284}, i64 0, metadata !822) #5, !dbg !823
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i284}, i64 0, metadata !68), !dbg !823
  %352 = load i32* %nrowB.i284, align 4, !dbg !823, !tbaa !306
  %mul.i287 = shl nsw i32 %352, 1, !dbg !823
  %idx.ext.i288 = sext i32 %mul.i287 to i64, !dbg !823
  %add.ptr.sum.i289 = shl nsw i64 %idx.ext.i288, 1, !dbg !825
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i283}, i64 0, metadata !826) #5, !dbg !827
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i283}, i64 0, metadata !67), !dbg !827
  %353 = load i32* %nrowA.i283, align 4, !dbg !827, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32* %nentA.i282}, i64 0, metadata !829) #5, !dbg !827
  call void @llvm.dbg.value(metadata !{i32* %nentA.i282}, i64 0, metadata !66), !dbg !827
  %354 = load i32* %nentA.i282, align 4, !dbg !827, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i286}, i64 0, metadata !830) #5, !dbg !831
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i286}, i64 0, metadata !73), !dbg !831
  %355 = load i32** %sizesA.i286, align 8, !dbg !831, !tbaa !301
  call void @llvm.dbg.value(metadata !{double** %entriesA.i277}, i64 0, metadata !833) #5, !dbg !834
  call void @llvm.dbg.value(metadata !{double** %entriesA.i277}, i64 0, metadata !54), !dbg !834
  %356 = load double** %entriesA.i277, align 8, !dbg !834, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i285}, i64 0, metadata !838) #5, !dbg !839
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i285}, i64 0, metadata !71), !dbg !839
  %357 = load i32** %indicesA.i285, align 8, !dbg !839, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i284}, i64 0, metadata !822) #5, !dbg !840
  %add.ptr3.sum.i290 = add i64 %add.ptr.sum.i289, %idx.ext.i288, !dbg !840
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i281}, i64 0, metadata !821) #5, !dbg !819
  br label %for.body.i292, !dbg !819

for.body.i292:                                    ; preds = %for.end75.i, %for.body.lr.ph.i291
  %jcolB.0381.i = phi i32 [ 0, %for.body.lr.ph.i291 ], [ %add80.i, %for.end75.i ]
  %colB0.0380.i = phi double* [ %350, %for.body.lr.ph.i291 ], [ %add.ptr78.i, %for.end75.i ]
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i284}, i64 0, metadata !822) #5, !dbg !823
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i283}, i64 0, metadata !826) #5, !dbg !827
  call void @llvm.dbg.value(metadata !{i32* %nentA.i282}, i64 0, metadata !829) #5, !dbg !827
  call void @llvm.dbg.value(metadata !{i32 %354}, i64 0, metadata !841) #5, !dbg !827
  br label %for.cond5.outer.i295, !dbg !827

for.cond5.outer.i295:                             ; preds = %for.body25.i, %for.body.i292
  %colstart.0.ph.i293 = phi i32 [ %354, %for.body.i292 ], [ %sub9.i, %for.body25.i ]
  %jcolA.0.in.ph.i294 = phi i32 [ %353, %for.body.i292 ], [ %jcolA.0.i297, %for.body25.i ]
  %358 = sext i32 %jcolA.0.in.ph.i294 to i64
  br label %for.cond5.i299

for.cond5.i299:                                   ; preds = %for.body7.i302, %for.cond5.outer.i295
  %indvars.iv397.i = phi i64 [ %358, %for.cond5.outer.i295 ], [ %indvars.iv.next398.i, %for.body7.i302 ]
  %jcolA.0.in.i296 = phi i32 [ %jcolA.0.in.ph.i294, %for.cond5.outer.i295 ], [ %jcolA.0.i297, %for.body7.i302 ]
  %indvars.iv.next398.i = add i64 %indvars.iv397.i, -1, !dbg !831
  %jcolA.0.i297 = add nsw i32 %jcolA.0.in.i296, -1, !dbg !827
  %359 = trunc i64 %indvars.iv397.i to i32, !dbg !827
  %cmp6.i298 = icmp sgt i32 %359, 0, !dbg !827
  br i1 %cmp6.i298, label %for.body7.i302, label %for.end75.i, !dbg !827

for.body7.i302:                                   ; preds = %for.cond5.i299
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i286}, i64 0, metadata !830) #5, !dbg !831
  %arrayidx.i300 = getelementptr inbounds i32* %355, i64 %indvars.iv.next398.i, !dbg !831
  %360 = load i32* %arrayidx.i300, align 4, !dbg !831, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %360}, i64 0, metadata !842) #5, !dbg !831
  %cmp8.i301 = icmp sgt i32 %360, 0, !dbg !831
  br i1 %cmp8.i301, label %for.body25.lr.ph.i, label %for.cond5.i299, !dbg !831

for.body25.lr.ph.i:                               ; preds = %for.body7.i302
  %sub9.i = sub i32 %colstart.0.ph.i293, %360, !dbg !843
  call void @llvm.dbg.value(metadata !{i32 %sub9.i}, i64 0, metadata !841) #5, !dbg !843
  %mul10.i = shl nsw i32 %jcolA.0.i297, 1, !dbg !844
  call void @llvm.dbg.value(metadata !{i32 %mul10.i}, i64 0, metadata !845) #5, !dbg !844
  %add351.i = or i32 %mul10.i, 1, !dbg !846
  call void @llvm.dbg.value(metadata !{i32 %add351.i}, i64 0, metadata !847) #5, !dbg !846
  %idxprom11.i = sext i32 %mul10.i to i64, !dbg !848
  %arrayidx12.i303 = getelementptr inbounds double* %colB0.0380.i, i64 %idxprom11.i, !dbg !848
  %361 = load double* %arrayidx12.i303, align 8, !dbg !848, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %361}, i64 0, metadata !849) #5, !dbg !848
  %idxprom13.i = sext i32 %add351.i to i64, !dbg !848
  %arrayidx14.i304 = getelementptr inbounds double* %colB0.0380.i, i64 %idxprom13.i, !dbg !848
  %362 = load double* %arrayidx14.i304, align 8, !dbg !848, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %362}, i64 0, metadata !850) #5, !dbg !848
  %add.ptr.sum352.i = add i64 %idxprom11.i, %idx.ext.i288, !dbg !851
  %arrayidx16.i305 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr.sum352.i, !dbg !851
  %363 = load double* %arrayidx16.i305, align 8, !dbg !851, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %363}, i64 0, metadata !852) #5, !dbg !851
  %add.ptr.sum353.i = add i64 %idxprom13.i, %idx.ext.i288, !dbg !851
  %arrayidx18.i306 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr.sum353.i, !dbg !851
  %364 = load double* %arrayidx18.i306, align 8, !dbg !851, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %364}, i64 0, metadata !853) #5, !dbg !851
  %add.ptr3.sum354.i = add i64 %idxprom11.i, %add.ptr.sum.i289, !dbg !854
  %arrayidx20.i307 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr3.sum354.i, !dbg !854
  %365 = load double* %arrayidx20.i307, align 8, !dbg !854, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %365}, i64 0, metadata !855) #5, !dbg !854
  %add.ptr3.sum355.i = add i64 %idxprom13.i, %add.ptr.sum.i289, !dbg !854
  %arrayidx22.i308 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr3.sum355.i, !dbg !854
  %366 = load double* %arrayidx22.i308, align 8, !dbg !854, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %366}, i64 0, metadata !856) #5, !dbg !854
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !857) #5, !dbg !858
  call void @llvm.dbg.value(metadata !{i32 %sub9.i}, i64 0, metadata !859) #5, !dbg !858
  %367 = sext i32 %sub9.i to i64
  br label %for.body25.i, !dbg !858

for.body25.i:                                     ; preds = %for.body25.i, %for.body25.lr.ph.i
  %indvars.iv399.i = phi i64 [ %367, %for.body25.lr.ph.i ], [ %indvars.iv.next400.i, %for.body25.i ]
  %ii.0373.i = phi i32 [ 0, %for.body25.lr.ph.i ], [ %inc.i334, %for.body25.i ]
  %368 = trunc i64 %indvars.iv399.i to i32, !dbg !834
  %mul26.i309 = shl nsw i32 %368, 1, !dbg !834
  %idxprom27.i = sext i32 %mul26.i309 to i64, !dbg !834
  call void @llvm.dbg.value(metadata !{double** %entriesA.i277}, i64 0, metadata !833) #5, !dbg !834
  %arrayidx28.i310 = getelementptr inbounds double* %356, i64 %idxprom27.i, !dbg !834
  %369 = load double* %arrayidx28.i310, align 8, !dbg !834, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %369}, i64 0, metadata !860) #5, !dbg !834
  %add30356.i = or i32 %mul26.i309, 1, !dbg !834
  %idxprom31.i = sext i32 %add30356.i to i64, !dbg !834
  %arrayidx32.i311 = getelementptr inbounds double* %356, i64 %idxprom31.i, !dbg !834
  %370 = load double* %arrayidx32.i311, align 8, !dbg !834, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %370}, i64 0, metadata !861) #5, !dbg !834
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i285}, i64 0, metadata !838) #5, !dbg !839
  %arrayidx34.i = getelementptr inbounds i32* %357, i64 %indvars.iv399.i, !dbg !839
  %371 = load i32* %arrayidx34.i, align 4, !dbg !839, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %371}, i64 0, metadata !862) #5, !dbg !839
  %mul35.i = shl nsw i32 %371, 1, !dbg !863
  call void @llvm.dbg.value(metadata !{i32 %mul35.i}, i64 0, metadata !845) #5, !dbg !863
  %add36357.i = or i32 %mul35.i, 1, !dbg !864
  call void @llvm.dbg.value(metadata !{i32 %add36357.i}, i64 0, metadata !847) #5, !dbg !864
  %mul37.i = fmul double %361, %369, !dbg !865
  %mul38.i = fmul double %362, %370, !dbg !865
  %sub39.i = fsub double %mul37.i, %mul38.i, !dbg !865
  %idxprom40.i = sext i32 %mul35.i to i64, !dbg !865
  %arrayidx41.i = getelementptr inbounds double* %colB0.0380.i, i64 %idxprom40.i, !dbg !865
  %372 = load double* %arrayidx41.i, align 8, !dbg !865, !tbaa !361
  %sub42.i = fsub double %372, %sub39.i, !dbg !865
  store double %sub42.i, double* %arrayidx41.i, align 8, !dbg !865, !tbaa !361
  %mul43.i312 = fmul double %362, %369, !dbg !866
  %mul44.i313 = fmul double %361, %370, !dbg !866
  %add45.i = fadd double %mul43.i312, %mul44.i313, !dbg !866
  %idxprom46.i314 = sext i32 %add36357.i to i64, !dbg !866
  %arrayidx47.i315 = getelementptr inbounds double* %colB0.0380.i, i64 %idxprom46.i314, !dbg !866
  %373 = load double* %arrayidx47.i315, align 8, !dbg !866, !tbaa !361
  %sub48.i316 = fsub double %373, %add45.i, !dbg !866
  store double %sub48.i316, double* %arrayidx47.i315, align 8, !dbg !866, !tbaa !361
  %mul49.i317 = fmul double %363, %369, !dbg !867
  %mul50.i318 = fmul double %364, %370, !dbg !867
  %sub51.i = fsub double %mul49.i317, %mul50.i318, !dbg !867
  %add.ptr.sum358.i = add i64 %idxprom40.i, %idx.ext.i288, !dbg !867
  %arrayidx53.i319 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr.sum358.i, !dbg !867
  %374 = load double* %arrayidx53.i319, align 8, !dbg !867, !tbaa !361
  %sub54.i320 = fsub double %374, %sub51.i, !dbg !867
  store double %sub54.i320, double* %arrayidx53.i319, align 8, !dbg !867, !tbaa !361
  %mul55.i321 = fmul double %364, %369, !dbg !868
  %mul56.i322 = fmul double %363, %370, !dbg !868
  %add57.i = fadd double %mul55.i321, %mul56.i322, !dbg !868
  %add.ptr.sum359.i = add i64 %idxprom46.i314, %idx.ext.i288, !dbg !868
  %arrayidx59.i323 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr.sum359.i, !dbg !868
  %375 = load double* %arrayidx59.i323, align 8, !dbg !868, !tbaa !361
  %sub60.i324 = fsub double %375, %add57.i, !dbg !868
  store double %sub60.i324, double* %arrayidx59.i323, align 8, !dbg !868, !tbaa !361
  %mul61.i325 = fmul double %365, %369, !dbg !869
  %mul62.i326 = fmul double %366, %370, !dbg !869
  %sub63.i327 = fsub double %mul61.i325, %mul62.i326, !dbg !869
  %add.ptr3.sum360.i = add i64 %idxprom40.i, %add.ptr.sum.i289, !dbg !869
  %arrayidx65.i328 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr3.sum360.i, !dbg !869
  %376 = load double* %arrayidx65.i328, align 8, !dbg !869, !tbaa !361
  %sub66.i329 = fsub double %376, %sub63.i327, !dbg !869
  store double %sub66.i329, double* %arrayidx65.i328, align 8, !dbg !869, !tbaa !361
  %mul67.i330 = fmul double %366, %369, !dbg !870
  %mul68.i331 = fmul double %365, %370, !dbg !870
  %add69.i = fadd double %mul67.i330, %mul68.i331, !dbg !870
  %add.ptr3.sum361.i = add i64 %idxprom46.i314, %add.ptr.sum.i289, !dbg !870
  %arrayidx71.i332 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr3.sum361.i, !dbg !870
  %377 = load double* %arrayidx71.i332, align 8, !dbg !870, !tbaa !361
  %sub72.i333 = fsub double %377, %add69.i, !dbg !870
  store double %sub72.i333, double* %arrayidx71.i332, align 8, !dbg !870, !tbaa !361
  %inc.i334 = add nsw i32 %ii.0373.i, 1, !dbg !858
  call void @llvm.dbg.value(metadata !{i32 %inc.i334}, i64 0, metadata !857) #5, !dbg !858
  %indvars.iv.next400.i = add i64 %indvars.iv399.i, 1, !dbg !858
  %exitcond401.i = icmp eq i32 %inc.i334, %360, !dbg !858
  br i1 %exitcond401.i, label %for.cond5.outer.i295, label %for.body25.i, !dbg !858

for.end75.i:                                      ; preds = %for.cond5.i299
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i284}, i64 0, metadata !822) #5, !dbg !840
  %add.ptr78.i = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr3.sum.i290, !dbg !840
  call void @llvm.dbg.value(metadata !{double* %add.ptr78.i}, i64 0, metadata !817) #5, !dbg !840
  %add80.i = add nsw i32 %jcolB.0381.i, 3, !dbg !819
  call void @llvm.dbg.value(metadata !{i32 %add80.i}, i64 0, metadata !818) #5, !dbg !819
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i281}, i64 0, metadata !821) #5, !dbg !819
  %cmp.i335 = icmp slt i32 %add80.i, %sub378.i, !dbg !819
  br i1 %cmp.i335, label %for.body.i292, label %for.end81.i338, !dbg !819

for.end81.i338:                                   ; preds = %for.end75.i, %sw.bb24
  %jcolB.0.lcssa.i336 = phi i32 [ 0, %sw.bb24 ], [ %add80.i, %for.end75.i ]
  %colB0.0.lcssa.i337 = phi double* [ %350, %sw.bb24 ], [ %add.ptr78.i, %for.end75.i ]
  %cmp83.i = icmp eq i32 %jcolB.0.lcssa.i336, %sub378.i, !dbg !871
  br i1 %cmp83.i, label %if.then84.i, label %if.else.i366, !dbg !871

if.then84.i:                                      ; preds = %for.end81.i338
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i284}, i64 0, metadata !822) #5, !dbg !872
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i284}, i64 0, metadata !68), !dbg !872
  %378 = load i32* %nrowB.i284, align 4, !dbg !872, !tbaa !306
  %mul85.i = shl nsw i32 %378, 1, !dbg !872
  %idx.ext86.i = sext i32 %mul85.i to i64, !dbg !872
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i283}, i64 0, metadata !826) #5, !dbg !874
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i283}, i64 0, metadata !67), !dbg !874
  %379 = load i32* %nrowA.i283, align 4, !dbg !874, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32* %nentA.i282}, i64 0, metadata !829) #5, !dbg !874
  call void @llvm.dbg.value(metadata !{i32* %nentA.i282}, i64 0, metadata !66), !dbg !874
  %380 = load i32* %nentA.i282, align 4, !dbg !874, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %380}, i64 0, metadata !841) #5, !dbg !874
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i286}, i64 0, metadata !830) #5, !dbg !876
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i286}, i64 0, metadata !73), !dbg !876
  %381 = load i32** %sizesA.i286, align 8, !dbg !876, !tbaa !301
  call void @llvm.dbg.value(metadata !{double** %entriesA.i277}, i64 0, metadata !833) #5, !dbg !878
  call void @llvm.dbg.value(metadata !{double** %entriesA.i277}, i64 0, metadata !54), !dbg !878
  %382 = load double** %entriesA.i277, align 8, !dbg !878, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i285}, i64 0, metadata !838) #5, !dbg !882
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i285}, i64 0, metadata !71), !dbg !882
  %383 = load i32** %indicesA.i285, align 8, !dbg !882, !tbaa !301
  br label %for.cond89.outer.i, !dbg !874

for.cond89.outer.i:                               ; preds = %for.body109.i365, %if.then84.i
  %colstart.2.ph.i339 = phi i32 [ %380, %if.then84.i ], [ %sub96.i, %for.body109.i365 ]
  %jcolA.1.in.ph.i340 = phi i32 [ %379, %if.then84.i ], [ %jcolA.1.i344, %for.body109.i365 ]
  %384 = sext i32 %jcolA.1.in.ph.i340 to i64
  br label %for.cond89.i

for.cond89.i:                                     ; preds = %for.body91.i, %for.cond89.outer.i
  %indvars.iv.i341 = phi i64 [ %384, %for.cond89.outer.i ], [ %indvars.iv.next.i343, %for.body91.i ]
  %jcolA.1.in.i342 = phi i32 [ %jcolA.1.in.ph.i340, %for.cond89.outer.i ], [ %jcolA.1.i344, %for.body91.i ]
  %indvars.iv.next.i343 = add i64 %indvars.iv.i341, -1, !dbg !876
  %jcolA.1.i344 = add nsw i32 %jcolA.1.in.i342, -1, !dbg !874
  %385 = trunc i64 %indvars.iv.i341 to i32, !dbg !874
  %cmp90.i345 = icmp sgt i32 %385, 0, !dbg !874
  br i1 %cmp90.i345, label %for.body91.i, label %sw.epilog34, !dbg !874

for.body91.i:                                     ; preds = %for.cond89.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i286}, i64 0, metadata !830) #5, !dbg !876
  %arrayidx93.i = getelementptr inbounds i32* %381, i64 %indvars.iv.next.i343, !dbg !876
  %386 = load i32* %arrayidx93.i, align 4, !dbg !876, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %386}, i64 0, metadata !842) #5, !dbg !876
  %cmp94.i346 = icmp sgt i32 %386, 0, !dbg !876
  br i1 %cmp94.i346, label %for.body109.lr.ph.i349, label %for.cond89.i, !dbg !876

for.body109.lr.ph.i349:                           ; preds = %for.body91.i
  %sub96.i = sub i32 %colstart.2.ph.i339, %386, !dbg !883
  call void @llvm.dbg.value(metadata !{i32 %sub96.i}, i64 0, metadata !841) #5, !dbg !883
  %mul97.i = shl nsw i32 %jcolA.1.i344, 1, !dbg !884
  call void @llvm.dbg.value(metadata !{i32 %mul97.i}, i64 0, metadata !845) #5, !dbg !884
  %add98345.i = or i32 %mul97.i, 1, !dbg !885
  call void @llvm.dbg.value(metadata !{i32 %add98345.i}, i64 0, metadata !847) #5, !dbg !885
  %idxprom99.i = sext i32 %mul97.i to i64, !dbg !886
  %arrayidx100.i = getelementptr inbounds double* %colB0.0.lcssa.i337, i64 %idxprom99.i, !dbg !886
  %387 = load double* %arrayidx100.i, align 8, !dbg !886, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %387}, i64 0, metadata !849) #5, !dbg !886
  %idxprom101.i = sext i32 %add98345.i to i64, !dbg !886
  %arrayidx102.i347 = getelementptr inbounds double* %colB0.0.lcssa.i337, i64 %idxprom101.i, !dbg !886
  %388 = load double* %arrayidx102.i347, align 8, !dbg !886, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %388}, i64 0, metadata !850) #5, !dbg !886
  %add.ptr87.sum.i = add i64 %idxprom99.i, %idx.ext86.i, !dbg !887
  %arrayidx104.i348 = getelementptr inbounds double* %colB0.0.lcssa.i337, i64 %add.ptr87.sum.i, !dbg !887
  %389 = load double* %arrayidx104.i348, align 8, !dbg !887, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %389}, i64 0, metadata !852) #5, !dbg !887
  %add.ptr87.sum346.i = add i64 %idxprom101.i, %idx.ext86.i, !dbg !887
  %arrayidx106.i = getelementptr inbounds double* %colB0.0.lcssa.i337, i64 %add.ptr87.sum346.i, !dbg !887
  %390 = load double* %arrayidx106.i, align 8, !dbg !887, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %390}, i64 0, metadata !853) #5, !dbg !887
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !857) #5, !dbg !888
  call void @llvm.dbg.value(metadata !{i32 %sub96.i}, i64 0, metadata !859) #5, !dbg !888
  %391 = sext i32 %sub96.i to i64
  br label %for.body109.i365, !dbg !888

for.body109.i365:                                 ; preds = %for.body109.i365, %for.body109.lr.ph.i349
  %indvars.iv386.i = phi i64 [ %391, %for.body109.lr.ph.i349 ], [ %indvars.iv.next387.i, %for.body109.i365 ]
  %ii.1363.i = phi i32 [ 0, %for.body109.lr.ph.i349 ], [ %inc146.i, %for.body109.i365 ]
  %392 = trunc i64 %indvars.iv386.i to i32, !dbg !878
  %mul110.i = shl nsw i32 %392, 1, !dbg !878
  %idxprom111.i = sext i32 %mul110.i to i64, !dbg !878
  call void @llvm.dbg.value(metadata !{double** %entriesA.i277}, i64 0, metadata !833) #5, !dbg !878
  %arrayidx112.i = getelementptr inbounds double* %382, i64 %idxprom111.i, !dbg !878
  %393 = load double* %arrayidx112.i, align 8, !dbg !878, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %393}, i64 0, metadata !860) #5, !dbg !878
  %add114347.i = or i32 %mul110.i, 1, !dbg !878
  %idxprom115.i350 = sext i32 %add114347.i to i64, !dbg !878
  %arrayidx116.i351 = getelementptr inbounds double* %382, i64 %idxprom115.i350, !dbg !878
  %394 = load double* %arrayidx116.i351, align 8, !dbg !878, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %394}, i64 0, metadata !861) #5, !dbg !878
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i285}, i64 0, metadata !838) #5, !dbg !882
  %arrayidx118.i352 = getelementptr inbounds i32* %383, i64 %indvars.iv386.i, !dbg !882
  %395 = load i32* %arrayidx118.i352, align 4, !dbg !882, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %395}, i64 0, metadata !862) #5, !dbg !882
  %mul119.i = shl nsw i32 %395, 1, !dbg !889
  call void @llvm.dbg.value(metadata !{i32 %mul119.i}, i64 0, metadata !845) #5, !dbg !889
  %add120348.i = or i32 %mul119.i, 1, !dbg !890
  call void @llvm.dbg.value(metadata !{i32 %add120348.i}, i64 0, metadata !847) #5, !dbg !890
  %mul121.i = fmul double %387, %393, !dbg !891
  %mul122.i = fmul double %388, %394, !dbg !891
  %sub123.i353 = fsub double %mul121.i, %mul122.i, !dbg !891
  %idxprom124.i = sext i32 %mul119.i to i64, !dbg !891
  %arrayidx125.i = getelementptr inbounds double* %colB0.0.lcssa.i337, i64 %idxprom124.i, !dbg !891
  %396 = load double* %arrayidx125.i, align 8, !dbg !891, !tbaa !361
  %sub126.i = fsub double %396, %sub123.i353, !dbg !891
  store double %sub126.i, double* %arrayidx125.i, align 8, !dbg !891, !tbaa !361
  %mul127.i = fmul double %388, %393, !dbg !892
  %mul128.i = fmul double %387, %394, !dbg !892
  %add129.i = fadd double %mul127.i, %mul128.i, !dbg !892
  %idxprom130.i = sext i32 %add120348.i to i64, !dbg !892
  %arrayidx131.i = getelementptr inbounds double* %colB0.0.lcssa.i337, i64 %idxprom130.i, !dbg !892
  %397 = load double* %arrayidx131.i, align 8, !dbg !892, !tbaa !361
  %sub132.i = fsub double %397, %add129.i, !dbg !892
  store double %sub132.i, double* %arrayidx131.i, align 8, !dbg !892, !tbaa !361
  %mul133.i354 = fmul double %389, %393, !dbg !893
  %mul134.i355 = fmul double %390, %394, !dbg !893
  %sub135.i356 = fsub double %mul133.i354, %mul134.i355, !dbg !893
  %add.ptr87.sum349.i = add i64 %idxprom124.i, %idx.ext86.i, !dbg !893
  %arrayidx137.i357 = getelementptr inbounds double* %colB0.0.lcssa.i337, i64 %add.ptr87.sum349.i, !dbg !893
  %398 = load double* %arrayidx137.i357, align 8, !dbg !893, !tbaa !361
  %sub138.i358 = fsub double %398, %sub135.i356, !dbg !893
  store double %sub138.i358, double* %arrayidx137.i357, align 8, !dbg !893, !tbaa !361
  %mul139.i359 = fmul double %390, %393, !dbg !894
  %mul140.i360 = fmul double %389, %394, !dbg !894
  %add141.i361 = fadd double %mul139.i359, %mul140.i360, !dbg !894
  %add.ptr87.sum350.i = add i64 %idxprom130.i, %idx.ext86.i, !dbg !894
  %arrayidx143.i362 = getelementptr inbounds double* %colB0.0.lcssa.i337, i64 %add.ptr87.sum350.i, !dbg !894
  %399 = load double* %arrayidx143.i362, align 8, !dbg !894, !tbaa !361
  %sub144.i363 = fsub double %399, %add141.i361, !dbg !894
  store double %sub144.i363, double* %arrayidx143.i362, align 8, !dbg !894, !tbaa !361
  %inc146.i = add nsw i32 %ii.1363.i, 1, !dbg !888
  call void @llvm.dbg.value(metadata !{i32 %inc146.i}, i64 0, metadata !857) #5, !dbg !888
  %indvars.iv.next387.i = add i64 %indvars.iv386.i, 1, !dbg !888
  %exitcond.i364 = icmp eq i32 %inc146.i, %386, !dbg !888
  br i1 %exitcond.i364, label %for.cond89.outer.i, label %for.body109.i365, !dbg !888

if.else.i366:                                     ; preds = %for.end81.i338
  %sub153.i = add nsw i32 %351, -1, !dbg !895
  %cmp154.i = icmp eq i32 %jcolB.0.lcssa.i336, %sub153.i, !dbg !895
  br i1 %cmp154.i, label %if.then155.i, label %sw.epilog34, !dbg !895

if.then155.i:                                     ; preds = %if.else.i366
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i283}, i64 0, metadata !826) #5, !dbg !896
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i283}, i64 0, metadata !67), !dbg !896
  %400 = load i32* %nrowA.i283, align 4, !dbg !896, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32* %nentA.i282}, i64 0, metadata !829) #5, !dbg !896
  call void @llvm.dbg.value(metadata !{i32* %nentA.i282}, i64 0, metadata !66), !dbg !896
  %401 = load i32* %nentA.i282, align 4, !dbg !896, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %401}, i64 0, metadata !841) #5, !dbg !896
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i286}, i64 0, metadata !830) #5, !dbg !899
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i286}, i64 0, metadata !73), !dbg !899
  %402 = load i32** %sizesA.i286, align 8, !dbg !899, !tbaa !301
  call void @llvm.dbg.value(metadata !{double** %entriesA.i277}, i64 0, metadata !833) #5, !dbg !901
  call void @llvm.dbg.value(metadata !{double** %entriesA.i277}, i64 0, metadata !54), !dbg !901
  %403 = load double** %entriesA.i277, align 8, !dbg !901, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i285}, i64 0, metadata !838) #5, !dbg !905
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i285}, i64 0, metadata !71), !dbg !905
  %404 = load i32** %indicesA.i285, align 8, !dbg !905, !tbaa !301
  br label %for.cond157.outer.i, !dbg !896

for.cond157.outer.i:                              ; preds = %for.body173.i, %if.then155.i
  %colstart.4.ph.i367 = phi i32 [ %401, %if.then155.i ], [ %sub164.i, %for.body173.i ]
  %jcolA.2.in.ph.i368 = phi i32 [ %400, %if.then155.i ], [ %jcolA.2.i370, %for.body173.i ]
  %405 = sext i32 %jcolA.2.in.ph.i368 to i64
  br label %for.cond157.i

for.cond157.i:                                    ; preds = %for.body159.i, %for.cond157.outer.i
  %indvars.iv390.i = phi i64 [ %405, %for.cond157.outer.i ], [ %indvars.iv.next391.i, %for.body159.i ]
  %jcolA.2.in.i369 = phi i32 [ %jcolA.2.in.ph.i368, %for.cond157.outer.i ], [ %jcolA.2.i370, %for.body159.i ]
  %indvars.iv.next391.i = add i64 %indvars.iv390.i, -1, !dbg !899
  %jcolA.2.i370 = add nsw i32 %jcolA.2.in.i369, -1, !dbg !896
  %406 = trunc i64 %indvars.iv390.i to i32, !dbg !896
  %cmp158.i = icmp sgt i32 %406, 0, !dbg !896
  br i1 %cmp158.i, label %for.body159.i, label %sw.epilog34, !dbg !896

for.body159.i:                                    ; preds = %for.cond157.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i286}, i64 0, metadata !830) #5, !dbg !899
  %arrayidx161.i = getelementptr inbounds i32* %402, i64 %indvars.iv.next391.i, !dbg !899
  %407 = load i32* %arrayidx161.i, align 4, !dbg !899, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %407}, i64 0, metadata !842) #5, !dbg !899
  %cmp162.i = icmp sgt i32 %407, 0, !dbg !899
  br i1 %cmp162.i, label %for.body173.lr.ph.i, label %for.cond157.i, !dbg !899

for.body173.lr.ph.i:                              ; preds = %for.body159.i
  %sub164.i = sub i32 %colstart.4.ph.i367, %407, !dbg !906
  call void @llvm.dbg.value(metadata !{i32 %sub164.i}, i64 0, metadata !841) #5, !dbg !906
  %mul165.i = shl nsw i32 %jcolA.2.i370, 1, !dbg !907
  call void @llvm.dbg.value(metadata !{i32 %mul165.i}, i64 0, metadata !845) #5, !dbg !907
  %add166342.i = or i32 %mul165.i, 1, !dbg !908
  call void @llvm.dbg.value(metadata !{i32 %add166342.i}, i64 0, metadata !847) #5, !dbg !908
  %idxprom167.i = sext i32 %mul165.i to i64, !dbg !909
  %arrayidx168.i = getelementptr inbounds double* %colB0.0.lcssa.i337, i64 %idxprom167.i, !dbg !909
  %408 = load double* %arrayidx168.i, align 8, !dbg !909, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %408}, i64 0, metadata !849) #5, !dbg !909
  %idxprom169.i = sext i32 %add166342.i to i64, !dbg !909
  %arrayidx170.i = getelementptr inbounds double* %colB0.0.lcssa.i337, i64 %idxprom169.i, !dbg !909
  %409 = load double* %arrayidx170.i, align 8, !dbg !909, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %409}, i64 0, metadata !850) #5, !dbg !909
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !857) #5, !dbg !910
  call void @llvm.dbg.value(metadata !{i32 %sub164.i}, i64 0, metadata !859) #5, !dbg !910
  %410 = sext i32 %sub164.i to i64
  br label %for.body173.i, !dbg !910

for.body173.i:                                    ; preds = %for.body173.i, %for.body173.lr.ph.i
  %indvars.iv392.i = phi i64 [ %410, %for.body173.lr.ph.i ], [ %indvars.iv.next393.i, %for.body173.i ]
  %ii.2367.i = phi i32 [ 0, %for.body173.lr.ph.i ], [ %inc198.i, %for.body173.i ]
  %411 = trunc i64 %indvars.iv392.i to i32, !dbg !901
  %mul174.i = shl nsw i32 %411, 1, !dbg !901
  %idxprom175.i = sext i32 %mul174.i to i64, !dbg !901
  call void @llvm.dbg.value(metadata !{double** %entriesA.i277}, i64 0, metadata !833) #5, !dbg !901
  %arrayidx176.i = getelementptr inbounds double* %403, i64 %idxprom175.i, !dbg !901
  %412 = load double* %arrayidx176.i, align 8, !dbg !901, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %412}, i64 0, metadata !860) #5, !dbg !901
  %add178343.i = or i32 %mul174.i, 1, !dbg !901
  %idxprom179.i = sext i32 %add178343.i to i64, !dbg !901
  %arrayidx180.i = getelementptr inbounds double* %403, i64 %idxprom179.i, !dbg !901
  %413 = load double* %arrayidx180.i, align 8, !dbg !901, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %413}, i64 0, metadata !861) #5, !dbg !901
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i285}, i64 0, metadata !838) #5, !dbg !905
  %arrayidx182.i = getelementptr inbounds i32* %404, i64 %indvars.iv392.i, !dbg !905
  %414 = load i32* %arrayidx182.i, align 4, !dbg !905, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %414}, i64 0, metadata !862) #5, !dbg !905
  %mul183.i = shl nsw i32 %414, 1, !dbg !911
  call void @llvm.dbg.value(metadata !{i32 %mul183.i}, i64 0, metadata !845) #5, !dbg !911
  %add184344.i = or i32 %mul183.i, 1, !dbg !912
  call void @llvm.dbg.value(metadata !{i32 %add184344.i}, i64 0, metadata !847) #5, !dbg !912
  %mul185.i371 = fmul double %408, %412, !dbg !913
  %mul186.i = fmul double %409, %413, !dbg !913
  %sub187.i = fsub double %mul185.i371, %mul186.i, !dbg !913
  %idxprom188.i = sext i32 %mul183.i to i64, !dbg !913
  %arrayidx189.i = getelementptr inbounds double* %colB0.0.lcssa.i337, i64 %idxprom188.i, !dbg !913
  %415 = load double* %arrayidx189.i, align 8, !dbg !913, !tbaa !361
  %sub190.i = fsub double %415, %sub187.i, !dbg !913
  store double %sub190.i, double* %arrayidx189.i, align 8, !dbg !913, !tbaa !361
  %mul191.i = fmul double %409, %412, !dbg !914
  %mul192.i = fmul double %408, %413, !dbg !914
  %add193.i = fadd double %mul191.i, %mul192.i, !dbg !914
  %idxprom194.i = sext i32 %add184344.i to i64, !dbg !914
  %arrayidx195.i = getelementptr inbounds double* %colB0.0.lcssa.i337, i64 %idxprom194.i, !dbg !914
  %416 = load double* %arrayidx195.i, align 8, !dbg !914, !tbaa !361
  %sub196.i = fsub double %416, %add193.i, !dbg !914
  store double %sub196.i, double* %arrayidx195.i, align 8, !dbg !914, !tbaa !361
  %inc198.i = add nsw i32 %ii.2367.i, 1, !dbg !910
  call void @llvm.dbg.value(metadata !{i32 %inc198.i}, i64 0, metadata !857) #5, !dbg !910
  %indvars.iv.next393.i = add i64 %indvars.iv392.i, 1, !dbg !910
  %exitcond394.i = icmp eq i32 %inc198.i, %407, !dbg !910
  br i1 %exitcond394.i, label %for.cond157.outer.i, label %for.body173.i, !dbg !910

sw.bb25:                                          ; preds = %sw.bb21
  %417 = bitcast double** %entriesA.i372 to i8*, !dbg !915
  call void @llvm.lifetime.start(i64 8, i8* %417) #5, !dbg !915
  %418 = bitcast double** %entriesB.i373 to i8*, !dbg !915
  call void @llvm.lifetime.start(i64 8, i8* %418) #5, !dbg !915
  %419 = bitcast i32* %inc1.i374 to i8*, !dbg !915
  call void @llvm.lifetime.start(i64 4, i8* %419) #5, !dbg !915
  %420 = bitcast i32* %inc2.i375 to i8*, !dbg !915
  call void @llvm.lifetime.start(i64 4, i8* %420) #5, !dbg !915
  %421 = bitcast i32* %ncolB.i376 to i8*, !dbg !915
  call void @llvm.lifetime.start(i64 4, i8* %421) #5, !dbg !915
  %422 = bitcast i32* %nentA.i377 to i8*, !dbg !915
  call void @llvm.lifetime.start(i64 4, i8* %422) #5, !dbg !915
  %423 = bitcast i32* %nrowA.i378 to i8*, !dbg !915
  call void @llvm.lifetime.start(i64 4, i8* %423) #5, !dbg !915
  %424 = bitcast i32* %nrowB.i379 to i8*, !dbg !915
  call void @llvm.lifetime.start(i64 4, i8* %424) #5, !dbg !915
  %425 = bitcast i32** %firstlocsA.i380 to i8*, !dbg !915
  call void @llvm.lifetime.start(i64 8, i8* %425) #5, !dbg !915
  %426 = bitcast i32** %sizesA.i381 to i8*, !dbg !915
  call void @llvm.lifetime.start(i64 8, i8* %426) #5, !dbg !915
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !917) #5, !dbg !915
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxB}, i64 0, metadata !918) #5, !dbg !919
  call void @llvm.dbg.declare(metadata !{double** %entriesA.i372}, metadata !168) #5, !dbg !920
  call void @llvm.dbg.declare(metadata !{double** %entriesB.i373}, metadata !169) #5, !dbg !920
  call void @llvm.dbg.declare(metadata !{i32* %inc1.i374}, metadata !173) #5, !dbg !921
  call void @llvm.dbg.declare(metadata !{i32* %inc2.i375}, metadata !174) #5, !dbg !921
  call void @llvm.dbg.declare(metadata !{i32* %ncolB.i376}, metadata !179) #5, !dbg !922
  call void @llvm.dbg.declare(metadata !{i32* %nentA.i377}, metadata !180) #5, !dbg !922
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i378}, metadata !181) #5, !dbg !922
  call void @llvm.dbg.declare(metadata !{i32* %nrowB.i379}, metadata !182) #5, !dbg !922
  call void @llvm.dbg.declare(metadata !{i32** %firstlocsA.i380}, metadata !184) #5, !dbg !923
  call void @llvm.dbg.declare(metadata !{i32** %sizesA.i381}, metadata !185) #5, !dbg !923
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i378, i32* %nentA.i377, i32** %firstlocsA.i380, i32** %sizesA.i381, double** %entriesA.i372) #6, !dbg !924
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i379, i32* %ncolB.i376, i32* %inc1.i374, i32* %inc2.i375, double** %entriesB.i373) #6, !dbg !925
  call void @llvm.dbg.value(metadata !{double** %entriesB.i373}, i64 0, metadata !926) #5, !dbg !927
  call void @llvm.dbg.value(metadata !{double** %entriesB.i373}, i64 0, metadata !169), !dbg !927
  %427 = load double** %entriesB.i373, align 8, !dbg !927, !tbaa !301
  call void @llvm.dbg.value(metadata !{double* %427}, i64 0, metadata !928) #5, !dbg !927
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !929) #5, !dbg !930
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i376}, i64 0, metadata !932) #5, !dbg !930
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i376}, i64 0, metadata !179), !dbg !930
  %428 = load i32* %ncolB.i376, align 4, !dbg !930, !tbaa !306
  %sub448.i = add nsw i32 %428, -2, !dbg !930
  %cmp449.i = icmp sgt i32 %sub448.i, 0, !dbg !930
  br i1 %cmp449.i, label %for.body.lr.ph.i386, label %for.end90.i, !dbg !930

for.body.lr.ph.i386:                              ; preds = %sw.bb25
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i379}, i64 0, metadata !933) #5, !dbg !934
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i379}, i64 0, metadata !182), !dbg !934
  %429 = load i32* %nrowB.i379, align 4, !dbg !934, !tbaa !306
  %mul.i382 = shl nsw i32 %429, 1, !dbg !934
  %idx.ext.i383 = sext i32 %mul.i382 to i64, !dbg !934
  %add.ptr.sum.i384 = shl nsw i64 %idx.ext.i383, 1, !dbg !936
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i378}, i64 0, metadata !937) #5, !dbg !938
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i378}, i64 0, metadata !181), !dbg !938
  %430 = load i32* %nrowA.i378, align 4, !dbg !938, !tbaa !306
  %cmp5444.i = icmp sgt i32 %430, 0, !dbg !938
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i379}, i64 0, metadata !933) #5, !dbg !940
  %add.ptr3.sum.i385 = add i64 %add.ptr.sum.i384, %idx.ext.i383, !dbg !940
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i376}, i64 0, metadata !932) #5, !dbg !930
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i381}, i64 0, metadata !941) #5, !dbg !942
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i381}, i64 0, metadata !185), !dbg !942
  %431 = load i32** %sizesA.i381, align 8, !dbg !942, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i380}, i64 0, metadata !944) #5, !dbg !945
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i380}, i64 0, metadata !184), !dbg !945
  %432 = load i32** %firstlocsA.i380, align 8, !dbg !945, !tbaa !301
  call void @llvm.dbg.value(metadata !{double** %entriesA.i372}, i64 0, metadata !947) #5, !dbg !948
  call void @llvm.dbg.value(metadata !{double** %entriesA.i372}, i64 0, metadata !168), !dbg !948
  %433 = load double** %entriesA.i372, align 8, !dbg !948, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i378}, i64 0, metadata !937) #5, !dbg !938
  br label %for.body.i387, !dbg !930

for.body.i387:                                    ; preds = %for.end84.i, %for.body.lr.ph.i386
  %jcolB.0452.i = phi i32 [ 0, %for.body.lr.ph.i386 ], [ %add89.i, %for.end84.i ]
  %colB0.0450.i = phi double* [ %427, %for.body.lr.ph.i386 ], [ %add.ptr87.i, %for.end84.i ]
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i379}, i64 0, metadata !933) #5, !dbg !934
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !951) #5, !dbg !938
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !952) #5, !dbg !938
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i378}, i64 0, metadata !937) #5, !dbg !938
  br i1 %cmp5444.i, label %for.body6.i390, label %for.end84.i, !dbg !938

for.body6.i390:                                   ; preds = %for.body.i387, %for.inc82.i
  %indvars.iv473.i = phi i64 [ %indvars.iv.next474.i, %for.inc82.i ], [ 0, %for.body.i387 ]
  %kk.0447.i = phi i32 [ %kk.2.i428, %for.inc82.i ], [ 0, %for.body.i387 ]
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i381}, i64 0, metadata !941) #5, !dbg !942
  %arrayidx.i388 = getelementptr inbounds i32* %431, i64 %indvars.iv473.i, !dbg !942
  %434 = load i32* %arrayidx.i388, align 4, !dbg !942, !tbaa !306
  %cmp7.i389 = icmp sgt i32 %434, 0, !dbg !942
  br i1 %cmp7.i389, label %if.then.i394, label %for.inc82.i, !dbg !942

if.then.i394:                                     ; preds = %for.body6.i390
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i380}, i64 0, metadata !944) #5, !dbg !945
  %arrayidx9.i391 = getelementptr inbounds i32* %432, i64 %indvars.iv473.i, !dbg !945
  %435 = load i32* %arrayidx9.i391, align 4, !dbg !945, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %435}, i64 0, metadata !953) #5, !dbg !945
  %add.i392 = add i32 %434, -1, !dbg !954
  %sub12.i393 = add i32 %add.i392, %435, !dbg !954
  call void @llvm.dbg.value(metadata !{i32 %sub12.i393}, i64 0, metadata !955) #5, !dbg !954
  call void @llvm.dbg.value(metadata !537, i64 0, metadata !956) #5, !dbg !957
  call void @llvm.dbg.value(metadata !537, i64 0, metadata !958) #5, !dbg !957
  call void @llvm.dbg.value(metadata !537, i64 0, metadata !959) #5, !dbg !960
  call void @llvm.dbg.value(metadata !537, i64 0, metadata !961) #5, !dbg !960
  call void @llvm.dbg.value(metadata !537, i64 0, metadata !962) #5, !dbg !963
  call void @llvm.dbg.value(metadata !537, i64 0, metadata !964) #5, !dbg !963
  call void @llvm.dbg.value(metadata !{i32 %435}, i64 0, metadata !965) #5, !dbg !966
  %cmp14428.i = icmp sgt i32 %435, %sub12.i393, !dbg !966
  br i1 %cmp14428.i, label %for.end.i427, label %for.body15.lr.ph.i, !dbg !966

for.body15.lr.ph.i:                               ; preds = %if.then.i394
  %436 = sext i32 %kk.0447.i to i64
  %437 = sext i32 %435 to i64, !dbg !966
  br label %for.body15.i, !dbg !966

for.body15.i:                                     ; preds = %for.body15.i, %for.body15.lr.ph.i
  %indvars.iv470.i = phi i64 [ %indvars.iv.next471.i, %for.body15.i ], [ %437, %for.body15.lr.ph.i ], !dbg !966
  %indvars.iv468.i = phi i64 [ %indvars.iv.next469.i, %for.body15.i ], [ %436, %for.body15.lr.ph.i ]
  %rsum2.0434.i = phi double [ %add56.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %rsum1.0433.i = phi double [ %add48.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %rsum0.0432.i = phi double [ %add40.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %isum2.0431.i = phi double [ %add60.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %isum1.0430.i = phi double [ %add52.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %isum0.0429.i = phi double [ %add44.i410, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %438 = trunc i64 %indvars.iv468.i to i32, !dbg !948
  %mul16.i = shl nsw i32 %438, 1, !dbg !948
  %idxprom17.i395 = sext i32 %mul16.i to i64, !dbg !948
  call void @llvm.dbg.value(metadata !{double** %entriesA.i372}, i64 0, metadata !947) #5, !dbg !948
  %arrayidx18.i396 = getelementptr inbounds double* %433, i64 %idxprom17.i395, !dbg !948
  %439 = load double* %arrayidx18.i396, align 8, !dbg !948, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %439}, i64 0, metadata !967) #5, !dbg !948
  %add20394.i = or i32 %mul16.i, 1, !dbg !968
  %idxprom21.i397 = sext i32 %add20394.i to i64, !dbg !968
  %arrayidx22.i398 = getelementptr inbounds double* %433, i64 %idxprom21.i397, !dbg !968
  %440 = load double* %arrayidx22.i398, align 8, !dbg !968, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %440}, i64 0, metadata !969) #5, !dbg !968
  %441 = trunc i64 %indvars.iv470.i to i32, !dbg !970
  %mul23.i = shl nsw i32 %441, 1, !dbg !970
  call void @llvm.dbg.value(metadata !{i32 %mul23.i}, i64 0, metadata !971) #5, !dbg !970
  %add24395.i = or i32 %mul23.i, 1, !dbg !972
  call void @llvm.dbg.value(metadata !{i32 %add24395.i}, i64 0, metadata !973) #5, !dbg !972
  %idxprom25.i = sext i32 %mul23.i to i64, !dbg !974
  %arrayidx26.i399 = getelementptr inbounds double* %colB0.0450.i, i64 %idxprom25.i, !dbg !974
  %442 = load double* %arrayidx26.i399, align 8, !dbg !974, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %442}, i64 0, metadata !975) #5, !dbg !974
  %idxprom27.i400 = sext i32 %add24395.i to i64, !dbg !974
  %arrayidx28.i401 = getelementptr inbounds double* %colB0.0450.i, i64 %idxprom27.i400, !dbg !974
  %443 = load double* %arrayidx28.i401, align 8, !dbg !974, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %443}, i64 0, metadata !976) #5, !dbg !974
  %add.ptr.sum396.i = add i64 %idxprom25.i, %idx.ext.i383, !dbg !977
  %arrayidx30.i402 = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr.sum396.i, !dbg !977
  %444 = load double* %arrayidx30.i402, align 8, !dbg !977, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %444}, i64 0, metadata !978) #5, !dbg !977
  %add.ptr.sum397.i = add i64 %idxprom27.i400, %idx.ext.i383, !dbg !977
  %arrayidx32.i403 = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr.sum397.i, !dbg !977
  %445 = load double* %arrayidx32.i403, align 8, !dbg !977, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %445}, i64 0, metadata !979) #5, !dbg !977
  %add.ptr3.sum398.i = add i64 %idxprom25.i, %add.ptr.sum.i384, !dbg !980
  %arrayidx34.i404 = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr3.sum398.i, !dbg !980
  %446 = load double* %arrayidx34.i404, align 8, !dbg !980, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %446}, i64 0, metadata !981) #5, !dbg !980
  %add.ptr3.sum399.i = add i64 %idxprom27.i400, %add.ptr.sum.i384, !dbg !980
  %arrayidx36.i405 = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr3.sum399.i, !dbg !980
  %447 = load double* %arrayidx36.i405, align 8, !dbg !980, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %447}, i64 0, metadata !982) #5, !dbg !980
  %mul37.i406 = fmul double %439, %442, !dbg !983
  %mul38.i407 = fmul double %440, %443, !dbg !983
  %sub39.i408 = fsub double %mul37.i406, %mul38.i407, !dbg !983
  %add40.i = fadd double %rsum0.0432.i, %sub39.i408, !dbg !983
  call void @llvm.dbg.value(metadata !{double %add40.i}, i64 0, metadata !958) #5, !dbg !983
  %mul41.i409 = fmul double %439, %443, !dbg !983
  %mul42.i = fmul double %440, %442, !dbg !983
  %add43.i = fadd double %mul42.i, %mul41.i409, !dbg !983
  %add44.i410 = fadd double %isum0.0429.i, %add43.i, !dbg !983
  call void @llvm.dbg.value(metadata !{double %add44.i410}, i64 0, metadata !956) #5, !dbg !983
  %mul45.i = fmul double %439, %444, !dbg !984
  %mul46.i = fmul double %440, %445, !dbg !984
  %sub47.i = fsub double %mul45.i, %mul46.i, !dbg !984
  %add48.i = fadd double %rsum1.0433.i, %sub47.i, !dbg !984
  call void @llvm.dbg.value(metadata !{double %add48.i}, i64 0, metadata !961) #5, !dbg !984
  %mul49.i411 = fmul double %439, %445, !dbg !984
  %mul50.i412 = fmul double %440, %444, !dbg !984
  %add51.i413 = fadd double %mul50.i412, %mul49.i411, !dbg !984
  %add52.i = fadd double %isum1.0430.i, %add51.i413, !dbg !984
  call void @llvm.dbg.value(metadata !{double %add52.i}, i64 0, metadata !959) #5, !dbg !984
  %mul53.i = fmul double %439, %446, !dbg !985
  %mul54.i = fmul double %440, %447, !dbg !985
  %sub55.i = fsub double %mul53.i, %mul54.i, !dbg !985
  %add56.i = fadd double %rsum2.0434.i, %sub55.i, !dbg !985
  call void @llvm.dbg.value(metadata !{double %add56.i}, i64 0, metadata !964) #5, !dbg !985
  %mul57.i = fmul double %439, %447, !dbg !985
  %mul58.i = fmul double %440, %446, !dbg !985
  %add59.i = fadd double %mul58.i, %mul57.i, !dbg !985
  %add60.i = fadd double %isum2.0431.i, %add59.i, !dbg !985
  call void @llvm.dbg.value(metadata !{double %add60.i}, i64 0, metadata !962) #5, !dbg !985
  %indvars.iv.next471.i = add i64 %indvars.iv470.i, 1, !dbg !966
  %indvars.iv.next469.i = add i64 %indvars.iv468.i, 1, !dbg !966
  %cmp14.i414 = icmp slt i32 %441, %sub12.i393, !dbg !966
  br i1 %cmp14.i414, label %for.body15.i, label %for.cond13.for.end_crit_edge.i, !dbg !966

for.cond13.for.end_crit_edge.i:                   ; preds = %for.body15.i
  %448 = add i32 %434, %kk.0447.i, !dbg !966
  br label %for.end.i427, !dbg !966

for.end.i427:                                     ; preds = %for.cond13.for.end_crit_edge.i, %if.then.i394
  %kk.1.lcssa.i415 = phi i32 [ %448, %for.cond13.for.end_crit_edge.i ], [ %kk.0447.i, %if.then.i394 ]
  %rsum2.0.lcssa.i = phi double [ %add56.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i394 ]
  %rsum1.0.lcssa.i = phi double [ %add48.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i394 ]
  %rsum0.0.lcssa.i = phi double [ %add40.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i394 ]
  %isum2.0.lcssa.i = phi double [ %add60.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i394 ]
  %isum1.0.lcssa.i = phi double [ %add52.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i394 ]
  %isum0.0.lcssa.i = phi double [ %add44.i410, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i394 ]
  %449 = trunc i64 %indvars.iv473.i to i32, !dbg !986
  %mul62.i416 = shl nsw i32 %449, 1, !dbg !986
  call void @llvm.dbg.value(metadata !{i32 %mul62.i416}, i64 0, metadata !971) #5, !dbg !986
  %add63389.i = or i32 %mul62.i416, 1, !dbg !987
  call void @llvm.dbg.value(metadata !{i32 %add63389.i}, i64 0, metadata !973) #5, !dbg !987
  %idxprom64.i = sext i32 %mul62.i416 to i64, !dbg !988
  %arrayidx65.i417 = getelementptr inbounds double* %colB0.0450.i, i64 %idxprom64.i, !dbg !988
  %450 = load double* %arrayidx65.i417, align 8, !dbg !988, !tbaa !361
  %sub66.i418 = fsub double %450, %rsum0.0.lcssa.i, !dbg !988
  store double %sub66.i418, double* %arrayidx65.i417, align 8, !dbg !988, !tbaa !361
  %idxprom67.i = sext i32 %add63389.i to i64, !dbg !988
  %arrayidx68.i419 = getelementptr inbounds double* %colB0.0450.i, i64 %idxprom67.i, !dbg !988
  %451 = load double* %arrayidx68.i419, align 8, !dbg !988, !tbaa !361
  %sub69.i420 = fsub double %451, %isum0.0.lcssa.i, !dbg !988
  store double %sub69.i420, double* %arrayidx68.i419, align 8, !dbg !988, !tbaa !361
  %add.ptr.sum390.i = add i64 %idxprom64.i, %idx.ext.i383, !dbg !989
  %arrayidx71.i421 = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr.sum390.i, !dbg !989
  %452 = load double* %arrayidx71.i421, align 8, !dbg !989, !tbaa !361
  %sub72.i422 = fsub double %452, %rsum1.0.lcssa.i, !dbg !989
  store double %sub72.i422, double* %arrayidx71.i421, align 8, !dbg !989, !tbaa !361
  %add.ptr.sum391.i = add i64 %idxprom67.i, %idx.ext.i383, !dbg !989
  %arrayidx74.i423 = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr.sum391.i, !dbg !989
  %453 = load double* %arrayidx74.i423, align 8, !dbg !989, !tbaa !361
  %sub75.i = fsub double %453, %isum1.0.lcssa.i, !dbg !989
  store double %sub75.i, double* %arrayidx74.i423, align 8, !dbg !989, !tbaa !361
  %add.ptr3.sum392.i = add i64 %idxprom64.i, %add.ptr.sum.i384, !dbg !990
  %arrayidx77.i424 = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr3.sum392.i, !dbg !990
  %454 = load double* %arrayidx77.i424, align 8, !dbg !990, !tbaa !361
  %sub78.i425 = fsub double %454, %rsum2.0.lcssa.i, !dbg !990
  store double %sub78.i425, double* %arrayidx77.i424, align 8, !dbg !990, !tbaa !361
  %add.ptr3.sum393.i = add i64 %idxprom67.i, %add.ptr.sum.i384, !dbg !990
  %arrayidx80.i = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr3.sum393.i, !dbg !990
  %455 = load double* %arrayidx80.i, align 8, !dbg !990, !tbaa !361
  %sub81.i426 = fsub double %455, %isum2.0.lcssa.i, !dbg !990
  store double %sub81.i426, double* %arrayidx80.i, align 8, !dbg !990, !tbaa !361
  br label %for.inc82.i, !dbg !991

for.inc82.i:                                      ; preds = %for.end.i427, %for.body6.i390
  %kk.2.i428 = phi i32 [ %kk.1.lcssa.i415, %for.end.i427 ], [ %kk.0447.i, %for.body6.i390 ]
  %indvars.iv.next474.i = add i64 %indvars.iv473.i, 1, !dbg !938
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i378}, i64 0, metadata !937) #5, !dbg !938
  %lftr.wideiv707 = trunc i64 %indvars.iv.next474.i to i32, !dbg !938
  %exitcond708 = icmp eq i32 %lftr.wideiv707, %430, !dbg !938
  br i1 %exitcond708, label %for.end84.i, label %for.body6.i390, !dbg !938

for.end84.i:                                      ; preds = %for.inc82.i, %for.body.i387
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i379}, i64 0, metadata !933) #5, !dbg !940
  %add.ptr87.i = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr3.sum.i385, !dbg !940
  call void @llvm.dbg.value(metadata !{double* %add.ptr87.i}, i64 0, metadata !928) #5, !dbg !940
  %add89.i = add nsw i32 %jcolB.0452.i, 3, !dbg !930
  call void @llvm.dbg.value(metadata !{i32 %add89.i}, i64 0, metadata !929) #5, !dbg !930
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i376}, i64 0, metadata !932) #5, !dbg !930
  %cmp.i430 = icmp slt i32 %add89.i, %sub448.i, !dbg !930
  br i1 %cmp.i430, label %for.body.i387, label %for.end90.i, !dbg !930

for.end90.i:                                      ; preds = %for.end84.i, %sw.bb25
  %jcolB.0.lcssa.i431 = phi i32 [ 0, %sw.bb25 ], [ %add89.i, %for.end84.i ]
  %colB0.0.lcssa.i432 = phi double* [ %427, %sw.bb25 ], [ %add.ptr87.i, %for.end84.i ]
  %cmp92.i433 = icmp eq i32 %jcolB.0.lcssa.i431, %sub448.i, !dbg !992
  br i1 %cmp92.i433, label %if.then93.i, label %if.else.i456, !dbg !992

if.then93.i:                                      ; preds = %for.end90.i
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i379}, i64 0, metadata !933) #5, !dbg !993
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i379}, i64 0, metadata !182), !dbg !993
  %456 = load i32* %nrowB.i379, align 4, !dbg !993, !tbaa !306
  %mul94.i = shl nsw i32 %456, 1, !dbg !993
  %idx.ext95.i = sext i32 %mul94.i to i64, !dbg !993
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !951) #5, !dbg !995
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !952) #5, !dbg !995
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i378}, i64 0, metadata !937) #5, !dbg !995
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i378}, i64 0, metadata !181), !dbg !995
  %457 = load i32* %nrowA.i378, align 4, !dbg !995, !tbaa !306
  %cmp98411.i = icmp sgt i32 %457, 0, !dbg !995
  br i1 %cmp98411.i, label %for.body99.lr.ph.i434, label %sw.epilog34, !dbg !995

for.body99.lr.ph.i434:                            ; preds = %if.then93.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i381}, i64 0, metadata !941) #5, !dbg !997
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i381}, i64 0, metadata !185), !dbg !997
  %458 = load i32** %sizesA.i381, align 8, !dbg !997, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i380}, i64 0, metadata !944) #5, !dbg !999
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i380}, i64 0, metadata !184), !dbg !999
  %459 = load i32** %firstlocsA.i380, align 8, !dbg !999, !tbaa !301
  call void @llvm.dbg.value(metadata !{double** %entriesA.i372}, i64 0, metadata !947) #5, !dbg !1001
  call void @llvm.dbg.value(metadata !{double** %entriesA.i372}, i64 0, metadata !168), !dbg !1001
  %460 = load double** %entriesA.i372, align 8, !dbg !1001, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i378}, i64 0, metadata !937) #5, !dbg !995
  br label %for.body99.i437, !dbg !995

for.body99.i437:                                  ; preds = %for.inc165.i, %for.body99.lr.ph.i434
  %indvars.iv459.i = phi i64 [ 0, %for.body99.lr.ph.i434 ], [ %indvars.iv.next460.i, %for.inc165.i ]
  %kk.3414.i = phi i32 [ 0, %for.body99.lr.ph.i434 ], [ %kk.5.i454, %for.inc165.i ]
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i381}, i64 0, metadata !941) #5, !dbg !997
  %arrayidx101.i435 = getelementptr inbounds i32* %458, i64 %indvars.iv459.i, !dbg !997
  %461 = load i32* %arrayidx101.i435, align 4, !dbg !997, !tbaa !306
  %cmp102.i436 = icmp sgt i32 %461, 0, !dbg !997
  br i1 %cmp102.i436, label %if.then103.i441, label %for.inc165.i, !dbg !997

if.then103.i441:                                  ; preds = %for.body99.i437
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i380}, i64 0, metadata !944) #5, !dbg !999
  %arrayidx105.i438 = getelementptr inbounds i32* %459, i64 %indvars.iv459.i, !dbg !999
  %462 = load i32* %arrayidx105.i438, align 4, !dbg !999, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %462}, i64 0, metadata !953) #5, !dbg !999
  %add108.i439 = add i32 %461, -1, !dbg !1004
  %sub109.i440 = add i32 %add108.i439, %462, !dbg !1004
  call void @llvm.dbg.value(metadata !{i32 %sub109.i440}, i64 0, metadata !955) #5, !dbg !1004
  call void @llvm.dbg.value(metadata !537, i64 0, metadata !956) #5, !dbg !1005
  call void @llvm.dbg.value(metadata !537, i64 0, metadata !958) #5, !dbg !1005
  call void @llvm.dbg.value(metadata !537, i64 0, metadata !959) #5, !dbg !1006
  call void @llvm.dbg.value(metadata !537, i64 0, metadata !961) #5, !dbg !1006
  call void @llvm.dbg.value(metadata !{i32 %462}, i64 0, metadata !965) #5, !dbg !1007
  %cmp111400.i = icmp sgt i32 %462, %sub109.i440, !dbg !1007
  br i1 %cmp111400.i, label %for.end149.i, label %for.body112.lr.ph.i, !dbg !1007

for.body112.lr.ph.i:                              ; preds = %if.then103.i441
  %463 = sext i32 %kk.3414.i to i64
  %464 = sext i32 %462 to i64, !dbg !1007
  br label %for.body112.i, !dbg !1007

for.body112.i:                                    ; preds = %for.body112.i, %for.body112.lr.ph.i
  %indvars.iv457.i = phi i64 [ %indvars.iv.next458.i, %for.body112.i ], [ %464, %for.body112.lr.ph.i ], !dbg !1007
  %indvars.iv.i442 = phi i64 [ %indvars.iv.next.i452, %for.body112.i ], [ %463, %for.body112.lr.ph.i ]
  %rsum1.1404.i = phi double [ %add141.i451, %for.body112.i ], [ 0.000000e+00, %for.body112.lr.ph.i ]
  %rsum0.1403.i = phi double [ %add133.i, %for.body112.i ], [ 0.000000e+00, %for.body112.lr.ph.i ]
  %isum1.1402.i = phi double [ %add145.i, %for.body112.i ], [ 0.000000e+00, %for.body112.lr.ph.i ]
  %isum0.1401.i = phi double [ %add137.i, %for.body112.i ], [ 0.000000e+00, %for.body112.lr.ph.i ]
  %465 = trunc i64 %indvars.iv.i442 to i32, !dbg !1001
  %mul113.i = shl nsw i32 %465, 1, !dbg !1001
  %idxprom114.i = sext i32 %mul113.i to i64, !dbg !1001
  call void @llvm.dbg.value(metadata !{double** %entriesA.i372}, i64 0, metadata !947) #5, !dbg !1001
  %arrayidx115.i = getelementptr inbounds double* %460, i64 %idxprom114.i, !dbg !1001
  %466 = load double* %arrayidx115.i, align 8, !dbg !1001, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %466}, i64 0, metadata !967) #5, !dbg !1001
  %add117385.i = or i32 %mul113.i, 1, !dbg !1008
  %idxprom118.i = sext i32 %add117385.i to i64, !dbg !1008
  %arrayidx119.i443 = getelementptr inbounds double* %460, i64 %idxprom118.i, !dbg !1008
  %467 = load double* %arrayidx119.i443, align 8, !dbg !1008, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %467}, i64 0, metadata !969) #5, !dbg !1008
  %468 = trunc i64 %indvars.iv457.i to i32, !dbg !1009
  %mul120.i444 = shl nsw i32 %468, 1, !dbg !1009
  call void @llvm.dbg.value(metadata !{i32 %mul120.i444}, i64 0, metadata !971) #5, !dbg !1009
  %add121386.i = or i32 %mul120.i444, 1, !dbg !1010
  call void @llvm.dbg.value(metadata !{i32 %add121386.i}, i64 0, metadata !973) #5, !dbg !1010
  %idxprom122.i = sext i32 %mul120.i444 to i64, !dbg !1011
  %arrayidx123.i = getelementptr inbounds double* %colB0.0.lcssa.i432, i64 %idxprom122.i, !dbg !1011
  %469 = load double* %arrayidx123.i, align 8, !dbg !1011, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %469}, i64 0, metadata !975) #5, !dbg !1011
  %idxprom124.i445 = sext i32 %add121386.i to i64, !dbg !1011
  %arrayidx125.i446 = getelementptr inbounds double* %colB0.0.lcssa.i432, i64 %idxprom124.i445, !dbg !1011
  %470 = load double* %arrayidx125.i446, align 8, !dbg !1011, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %470}, i64 0, metadata !976) #5, !dbg !1011
  %add.ptr96.sum387.i = add i64 %idxprom122.i, %idx.ext95.i, !dbg !1012
  %arrayidx127.i = getelementptr inbounds double* %colB0.0.lcssa.i432, i64 %add.ptr96.sum387.i, !dbg !1012
  %471 = load double* %arrayidx127.i, align 8, !dbg !1012, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %471}, i64 0, metadata !978) #5, !dbg !1012
  %add.ptr96.sum388.i = add i64 %idxprom124.i445, %idx.ext95.i, !dbg !1012
  %arrayidx129.i = getelementptr inbounds double* %colB0.0.lcssa.i432, i64 %add.ptr96.sum388.i, !dbg !1012
  %472 = load double* %arrayidx129.i, align 8, !dbg !1012, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %472}, i64 0, metadata !979) #5, !dbg !1012
  %mul130.i = fmul double %466, %469, !dbg !1013
  %mul131.i447 = fmul double %467, %470, !dbg !1013
  %sub132.i448 = fsub double %mul130.i, %mul131.i447, !dbg !1013
  %add133.i = fadd double %rsum0.1403.i, %sub132.i448, !dbg !1013
  call void @llvm.dbg.value(metadata !{double %add133.i}, i64 0, metadata !958) #5, !dbg !1013
  %mul134.i449 = fmul double %466, %470, !dbg !1013
  %mul135.i = fmul double %467, %469, !dbg !1013
  %add136.i = fadd double %mul135.i, %mul134.i449, !dbg !1013
  %add137.i = fadd double %isum0.1401.i, %add136.i, !dbg !1013
  call void @llvm.dbg.value(metadata !{double %add137.i}, i64 0, metadata !956) #5, !dbg !1013
  %mul138.i = fmul double %466, %471, !dbg !1014
  %mul139.i450 = fmul double %467, %472, !dbg !1014
  %sub140.i = fsub double %mul138.i, %mul139.i450, !dbg !1014
  %add141.i451 = fadd double %rsum1.1404.i, %sub140.i, !dbg !1014
  call void @llvm.dbg.value(metadata !{double %add141.i451}, i64 0, metadata !961) #5, !dbg !1014
  %mul142.i = fmul double %466, %472, !dbg !1014
  %mul143.i = fmul double %467, %471, !dbg !1014
  %add144.i = fadd double %mul143.i, %mul142.i, !dbg !1014
  %add145.i = fadd double %isum1.1402.i, %add144.i, !dbg !1014
  call void @llvm.dbg.value(metadata !{double %add145.i}, i64 0, metadata !959) #5, !dbg !1014
  %indvars.iv.next458.i = add i64 %indvars.iv457.i, 1, !dbg !1007
  %indvars.iv.next.i452 = add i64 %indvars.iv.i442, 1, !dbg !1007
  %cmp111.i = icmp slt i32 %468, %sub109.i440, !dbg !1007
  br i1 %cmp111.i, label %for.body112.i, label %for.cond110.for.end149_crit_edge.i, !dbg !1007

for.cond110.for.end149_crit_edge.i:               ; preds = %for.body112.i
  %473 = add i32 %461, %kk.3414.i, !dbg !1007
  br label %for.end149.i, !dbg !1007

for.end149.i:                                     ; preds = %for.cond110.for.end149_crit_edge.i, %if.then103.i441
  %kk.4.lcssa.i453 = phi i32 [ %473, %for.cond110.for.end149_crit_edge.i ], [ %kk.3414.i, %if.then103.i441 ]
  %rsum1.1.lcssa.i = phi double [ %add141.i451, %for.cond110.for.end149_crit_edge.i ], [ 0.000000e+00, %if.then103.i441 ]
  %rsum0.1.lcssa.i = phi double [ %add133.i, %for.cond110.for.end149_crit_edge.i ], [ 0.000000e+00, %if.then103.i441 ]
  %isum1.1.lcssa.i = phi double [ %add145.i, %for.cond110.for.end149_crit_edge.i ], [ 0.000000e+00, %if.then103.i441 ]
  %isum0.1.lcssa.i = phi double [ %add137.i, %for.cond110.for.end149_crit_edge.i ], [ 0.000000e+00, %if.then103.i441 ]
  %474 = trunc i64 %indvars.iv459.i to i32, !dbg !1015
  %mul150.i = shl nsw i32 %474, 1, !dbg !1015
  call void @llvm.dbg.value(metadata !{i32 %mul150.i}, i64 0, metadata !971) #5, !dbg !1015
  %add151383.i = or i32 %mul150.i, 1, !dbg !1016
  call void @llvm.dbg.value(metadata !{i32 %add151383.i}, i64 0, metadata !973) #5, !dbg !1016
  %idxprom152.i = sext i32 %mul150.i to i64, !dbg !1017
  %arrayidx153.i = getelementptr inbounds double* %colB0.0.lcssa.i432, i64 %idxprom152.i, !dbg !1017
  %475 = load double* %arrayidx153.i, align 8, !dbg !1017, !tbaa !361
  %sub154.i = fsub double %475, %rsum0.1.lcssa.i, !dbg !1017
  store double %sub154.i, double* %arrayidx153.i, align 8, !dbg !1017, !tbaa !361
  %idxprom155.i = sext i32 %add151383.i to i64, !dbg !1017
  %arrayidx156.i = getelementptr inbounds double* %colB0.0.lcssa.i432, i64 %idxprom155.i, !dbg !1017
  %476 = load double* %arrayidx156.i, align 8, !dbg !1017, !tbaa !361
  %sub157.i = fsub double %476, %isum0.1.lcssa.i, !dbg !1017
  store double %sub157.i, double* %arrayidx156.i, align 8, !dbg !1017, !tbaa !361
  %add.ptr96.sum.i = add i64 %idxprom152.i, %idx.ext95.i, !dbg !1018
  %arrayidx159.i = getelementptr inbounds double* %colB0.0.lcssa.i432, i64 %add.ptr96.sum.i, !dbg !1018
  %477 = load double* %arrayidx159.i, align 8, !dbg !1018, !tbaa !361
  %sub160.i = fsub double %477, %rsum1.1.lcssa.i, !dbg !1018
  store double %sub160.i, double* %arrayidx159.i, align 8, !dbg !1018, !tbaa !361
  %add.ptr96.sum384.i = add i64 %idxprom155.i, %idx.ext95.i, !dbg !1018
  %arrayidx162.i = getelementptr inbounds double* %colB0.0.lcssa.i432, i64 %add.ptr96.sum384.i, !dbg !1018
  %478 = load double* %arrayidx162.i, align 8, !dbg !1018, !tbaa !361
  %sub163.i = fsub double %478, %isum1.1.lcssa.i, !dbg !1018
  store double %sub163.i, double* %arrayidx162.i, align 8, !dbg !1018, !tbaa !361
  br label %for.inc165.i, !dbg !1019

for.inc165.i:                                     ; preds = %for.end149.i, %for.body99.i437
  %kk.5.i454 = phi i32 [ %kk.4.lcssa.i453, %for.end149.i ], [ %kk.3414.i, %for.body99.i437 ]
  %indvars.iv.next460.i = add i64 %indvars.iv459.i, 1, !dbg !995
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i378}, i64 0, metadata !937) #5, !dbg !995
  %lftr.wideiv703 = trunc i64 %indvars.iv.next460.i to i32, !dbg !995
  %exitcond704 = icmp eq i32 %lftr.wideiv703, %457, !dbg !995
  br i1 %exitcond704, label %sw.epilog34, label %for.body99.i437, !dbg !995

if.else.i456:                                     ; preds = %for.end90.i
  %sub168.i = add nsw i32 %428, -1, !dbg !1020
  %cmp169.i = icmp eq i32 %jcolB.0.lcssa.i431, %sub168.i, !dbg !1020
  br i1 %cmp169.i, label %for.cond171.preheader.i, label %sw.epilog34, !dbg !1020

for.cond171.preheader.i:                          ; preds = %if.else.i456
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i378}, i64 0, metadata !937) #5, !dbg !1021
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i378}, i64 0, metadata !181), !dbg !1021
  %479 = load i32* %nrowA.i378, align 4, !dbg !1021, !tbaa !306
  %cmp172424.i = icmp sgt i32 %479, 0, !dbg !1021
  br i1 %cmp172424.i, label %for.body173.lr.ph.i457, label %sw.epilog34, !dbg !1021

for.body173.lr.ph.i457:                           ; preds = %for.cond171.preheader.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i381}, i64 0, metadata !941) #5, !dbg !1024
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i381}, i64 0, metadata !185), !dbg !1024
  %480 = load i32** %sizesA.i381, align 8, !dbg !1024, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i380}, i64 0, metadata !944) #5, !dbg !1026
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i380}, i64 0, metadata !184), !dbg !1026
  %481 = load i32** %firstlocsA.i380, align 8, !dbg !1026, !tbaa !301
  call void @llvm.dbg.value(metadata !{double** %entriesA.i372}, i64 0, metadata !947) #5, !dbg !1028
  call void @llvm.dbg.value(metadata !{double** %entriesA.i372}, i64 0, metadata !168), !dbg !1028
  %482 = load double** %entriesA.i372, align 8, !dbg !1028, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i378}, i64 0, metadata !937) #5, !dbg !1021
  br label %for.body173.i458, !dbg !1021

for.body173.i458:                                 ; preds = %for.inc221.i, %for.body173.lr.ph.i457
  %indvars.iv466.i = phi i64 [ 0, %for.body173.lr.ph.i457 ], [ %indvars.iv.next467.i, %for.inc221.i ]
  %kk.6427.i = phi i32 [ 0, %for.body173.lr.ph.i457 ], [ %kk.8.i465, %for.inc221.i ]
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i381}, i64 0, metadata !941) #5, !dbg !1024
  %arrayidx175.i = getelementptr inbounds i32* %480, i64 %indvars.iv466.i, !dbg !1024
  %483 = load i32* %arrayidx175.i, align 4, !dbg !1024, !tbaa !306
  %cmp176.i = icmp sgt i32 %483, 0, !dbg !1024
  br i1 %cmp176.i, label %if.then177.i, label %for.inc221.i, !dbg !1024

if.then177.i:                                     ; preds = %for.body173.i458
  call void @llvm.dbg.value(metadata !{i32** %firstlocsA.i380}, i64 0, metadata !944) #5, !dbg !1026
  %arrayidx179.i = getelementptr inbounds i32* %481, i64 %indvars.iv466.i, !dbg !1026
  %484 = load i32* %arrayidx179.i, align 4, !dbg !1026, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %484}, i64 0, metadata !953) #5, !dbg !1026
  %add182.i = add i32 %483, -1, !dbg !1031
  %sub183.i = add i32 %add182.i, %484, !dbg !1031
  call void @llvm.dbg.value(metadata !{i32 %sub183.i}, i64 0, metadata !955) #5, !dbg !1031
  call void @llvm.dbg.value(metadata !537, i64 0, metadata !956) #5, !dbg !1032
  call void @llvm.dbg.value(metadata !537, i64 0, metadata !958) #5, !dbg !1032
  call void @llvm.dbg.value(metadata !{i32 %484}, i64 0, metadata !965) #5, !dbg !1033
  %cmp185415.i = icmp sgt i32 %484, %sub183.i, !dbg !1033
  br i1 %cmp185415.i, label %for.end211.i, label %for.body186.lr.ph.i, !dbg !1033

for.body186.lr.ph.i:                              ; preds = %if.then177.i
  %485 = sext i32 %kk.6427.i to i64
  %486 = sext i32 %484 to i64, !dbg !1033
  br label %for.body186.i, !dbg !1033

for.body186.i:                                    ; preds = %for.body186.i, %for.body186.lr.ph.i
  %indvars.iv463.i = phi i64 [ %indvars.iv.next464.i, %for.body186.i ], [ %486, %for.body186.lr.ph.i ], !dbg !1033
  %indvars.iv461.i = phi i64 [ %indvars.iv.next462.i, %for.body186.i ], [ %485, %for.body186.lr.ph.i ]
  %rsum0.2417.i = phi double [ %add203.i, %for.body186.i ], [ 0.000000e+00, %for.body186.lr.ph.i ]
  %isum0.2416.i = phi double [ %add207.i, %for.body186.i ], [ 0.000000e+00, %for.body186.lr.ph.i ]
  %487 = trunc i64 %indvars.iv461.i to i32, !dbg !1028
  %mul187.i = shl nsw i32 %487, 1, !dbg !1028
  %idxprom188.i459 = sext i32 %mul187.i to i64, !dbg !1028
  call void @llvm.dbg.value(metadata !{double** %entriesA.i372}, i64 0, metadata !947) #5, !dbg !1028
  %arrayidx189.i460 = getelementptr inbounds double* %482, i64 %idxprom188.i459, !dbg !1028
  %488 = load double* %arrayidx189.i460, align 8, !dbg !1028, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %488}, i64 0, metadata !967) #5, !dbg !1028
  %add191381.i = or i32 %mul187.i, 1, !dbg !1034
  %idxprom192.i = sext i32 %add191381.i to i64, !dbg !1034
  %arrayidx193.i = getelementptr inbounds double* %482, i64 %idxprom192.i, !dbg !1034
  %489 = load double* %arrayidx193.i, align 8, !dbg !1034, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %489}, i64 0, metadata !969) #5, !dbg !1034
  %490 = trunc i64 %indvars.iv463.i to i32, !dbg !1035
  %mul194.i461 = shl nsw i32 %490, 1, !dbg !1035
  call void @llvm.dbg.value(metadata !{i32 %mul194.i461}, i64 0, metadata !971) #5, !dbg !1035
  %add195382.i = or i32 %mul194.i461, 1, !dbg !1036
  call void @llvm.dbg.value(metadata !{i32 %add195382.i}, i64 0, metadata !973) #5, !dbg !1036
  %idxprom196.i = sext i32 %mul194.i461 to i64, !dbg !1037
  %arrayidx197.i = getelementptr inbounds double* %colB0.0.lcssa.i432, i64 %idxprom196.i, !dbg !1037
  %491 = load double* %arrayidx197.i, align 8, !dbg !1037, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %491}, i64 0, metadata !975) #5, !dbg !1037
  %idxprom198.i = sext i32 %add195382.i to i64, !dbg !1037
  %arrayidx199.i = getelementptr inbounds double* %colB0.0.lcssa.i432, i64 %idxprom198.i, !dbg !1037
  %492 = load double* %arrayidx199.i, align 8, !dbg !1037, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %492}, i64 0, metadata !976) #5, !dbg !1037
  %mul200.i = fmul double %488, %491, !dbg !1038
  %mul201.i462 = fmul double %489, %492, !dbg !1038
  %sub202.i = fsub double %mul200.i, %mul201.i462, !dbg !1038
  %add203.i = fadd double %rsum0.2417.i, %sub202.i, !dbg !1038
  call void @llvm.dbg.value(metadata !{double %add203.i}, i64 0, metadata !958) #5, !dbg !1038
  %mul204.i463 = fmul double %488, %492, !dbg !1038
  %mul205.i = fmul double %489, %491, !dbg !1038
  %add206.i = fadd double %mul205.i, %mul204.i463, !dbg !1038
  %add207.i = fadd double %isum0.2416.i, %add206.i, !dbg !1038
  call void @llvm.dbg.value(metadata !{double %add207.i}, i64 0, metadata !956) #5, !dbg !1038
  %indvars.iv.next464.i = add i64 %indvars.iv463.i, 1, !dbg !1033
  %indvars.iv.next462.i = add i64 %indvars.iv461.i, 1, !dbg !1033
  %cmp185.i = icmp slt i32 %490, %sub183.i, !dbg !1033
  br i1 %cmp185.i, label %for.body186.i, label %for.cond184.for.end211_crit_edge.i, !dbg !1033

for.cond184.for.end211_crit_edge.i:               ; preds = %for.body186.i
  %493 = add i32 %483, %kk.6427.i, !dbg !1033
  br label %for.end211.i, !dbg !1033

for.end211.i:                                     ; preds = %for.cond184.for.end211_crit_edge.i, %if.then177.i
  %kk.7.lcssa.i464 = phi i32 [ %493, %for.cond184.for.end211_crit_edge.i ], [ %kk.6427.i, %if.then177.i ]
  %rsum0.2.lcssa.i = phi double [ %add203.i, %for.cond184.for.end211_crit_edge.i ], [ 0.000000e+00, %if.then177.i ]
  %isum0.2.lcssa.i = phi double [ %add207.i, %for.cond184.for.end211_crit_edge.i ], [ 0.000000e+00, %if.then177.i ]
  %494 = trunc i64 %indvars.iv466.i to i32, !dbg !1039
  %mul212.i = shl nsw i32 %494, 1, !dbg !1039
  call void @llvm.dbg.value(metadata !{i32 %mul212.i}, i64 0, metadata !971) #5, !dbg !1039
  %add213380.i = or i32 %mul212.i, 1, !dbg !1040
  call void @llvm.dbg.value(metadata !{i32 %add213380.i}, i64 0, metadata !973) #5, !dbg !1040
  %idxprom214.i = sext i32 %mul212.i to i64, !dbg !1041
  %arrayidx215.i = getelementptr inbounds double* %colB0.0.lcssa.i432, i64 %idxprom214.i, !dbg !1041
  %495 = load double* %arrayidx215.i, align 8, !dbg !1041, !tbaa !361
  %sub216.i = fsub double %495, %rsum0.2.lcssa.i, !dbg !1041
  store double %sub216.i, double* %arrayidx215.i, align 8, !dbg !1041, !tbaa !361
  %idxprom217.i = sext i32 %add213380.i to i64, !dbg !1041
  %arrayidx218.i = getelementptr inbounds double* %colB0.0.lcssa.i432, i64 %idxprom217.i, !dbg !1041
  %496 = load double* %arrayidx218.i, align 8, !dbg !1041, !tbaa !361
  %sub219.i = fsub double %496, %isum0.2.lcssa.i, !dbg !1041
  store double %sub219.i, double* %arrayidx218.i, align 8, !dbg !1041, !tbaa !361
  br label %for.inc221.i, !dbg !1042

for.inc221.i:                                     ; preds = %for.end211.i, %for.body173.i458
  %kk.8.i465 = phi i32 [ %kk.7.lcssa.i464, %for.end211.i ], [ %kk.6427.i, %for.body173.i458 ]
  %indvars.iv.next467.i = add i64 %indvars.iv466.i, 1, !dbg !1021
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i378}, i64 0, metadata !937) #5, !dbg !1021
  %lftr.wideiv705 = trunc i64 %indvars.iv.next467.i to i32, !dbg !1021
  %exitcond706 = icmp eq i32 %lftr.wideiv705, %479, !dbg !1021
  br i1 %exitcond706, label %sw.epilog34, label %for.body173.i458, !dbg !1021

sw.bb26:                                          ; preds = %sw.bb21
  %497 = bitcast double** %entriesA.i466 to i8*, !dbg !1043
  call void @llvm.lifetime.start(i64 8, i8* %497) #5, !dbg !1043
  %498 = bitcast double** %entriesB.i467 to i8*, !dbg !1043
  call void @llvm.lifetime.start(i64 8, i8* %498) #5, !dbg !1043
  %499 = bitcast i32* %inc1.i468 to i8*, !dbg !1043
  call void @llvm.lifetime.start(i64 4, i8* %499) #5, !dbg !1043
  %500 = bitcast i32* %inc2.i469 to i8*, !dbg !1043
  call void @llvm.lifetime.start(i64 4, i8* %500) #5, !dbg !1043
  %501 = bitcast i32* %ncolB.i470 to i8*, !dbg !1043
  call void @llvm.lifetime.start(i64 4, i8* %501) #5, !dbg !1043
  %502 = bitcast i32* %nentA.i471 to i8*, !dbg !1043
  call void @llvm.lifetime.start(i64 4, i8* %502) #5, !dbg !1043
  %503 = bitcast i32* %nrowA.i472 to i8*, !dbg !1043
  call void @llvm.lifetime.start(i64 4, i8* %503) #5, !dbg !1043
  %504 = bitcast i32* %nrowB.i473 to i8*, !dbg !1043
  call void @llvm.lifetime.start(i64 4, i8* %504) #5, !dbg !1043
  %505 = bitcast i32** %indicesA.i474 to i8*, !dbg !1043
  call void @llvm.lifetime.start(i64 8, i8* %505) #5, !dbg !1043
  %506 = bitcast i32** %sizesA.i475 to i8*, !dbg !1043
  call void @llvm.lifetime.start(i64 8, i8* %506) #5, !dbg !1043
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxA}, i64 0, metadata !1045) #5, !dbg !1043
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtxB}, i64 0, metadata !1046) #5, !dbg !1047
  call void @llvm.dbg.declare(metadata !{double** %entriesA.i466}, metadata !129) #5, !dbg !1048
  call void @llvm.dbg.declare(metadata !{double** %entriesB.i467}, metadata !130) #5, !dbg !1048
  call void @llvm.dbg.declare(metadata !{i32* %inc1.i468}, metadata !133) #5, !dbg !1049
  call void @llvm.dbg.declare(metadata !{i32* %inc2.i469}, metadata !134) #5, !dbg !1049
  call void @llvm.dbg.declare(metadata !{i32* %ncolB.i470}, metadata !139) #5, !dbg !1050
  call void @llvm.dbg.declare(metadata !{i32* %nentA.i471}, metadata !140) #5, !dbg !1050
  call void @llvm.dbg.declare(metadata !{i32* %nrowA.i472}, metadata !141) #5, !dbg !1050
  call void @llvm.dbg.declare(metadata !{i32* %nrowB.i473}, metadata !142) #5, !dbg !1050
  call void @llvm.dbg.declare(metadata !{i32** %indicesA.i474}, metadata !145) #5, !dbg !1051
  call void @llvm.dbg.declare(metadata !{i32** %sizesA.i475}, metadata !146) #5, !dbg !1051
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i472, i32* %nentA.i471, i32** %sizesA.i475, i32** %indicesA.i474, double** %entriesA.i466) #6, !dbg !1052
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i473, i32* %ncolB.i470, i32* %inc1.i468, i32* %inc2.i469, double** %entriesB.i467) #6, !dbg !1053
  call void @llvm.dbg.value(metadata !{double** %entriesB.i467}, i64 0, metadata !1054) #5, !dbg !1055
  call void @llvm.dbg.value(metadata !{double** %entriesB.i467}, i64 0, metadata !130), !dbg !1055
  %507 = load double** %entriesB.i467, align 8, !dbg !1055, !tbaa !301
  call void @llvm.dbg.value(metadata !{double* %507}, i64 0, metadata !1056) #5, !dbg !1055
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1057) #5, !dbg !1058
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i470}, i64 0, metadata !1060) #5, !dbg !1058
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i470}, i64 0, metadata !139), !dbg !1058
  %508 = load i32* %ncolB.i470, align 4, !dbg !1058, !tbaa !306
  %sub497.i = add nsw i32 %508, -2, !dbg !1058
  %cmp498.i = icmp sgt i32 %sub497.i, 0, !dbg !1058
  br i1 %cmp498.i, label %for.body.lr.ph.i480, label %for.end90.i530, !dbg !1058

for.body.lr.ph.i480:                              ; preds = %sw.bb26
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i473}, i64 0, metadata !1061) #5, !dbg !1062
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i473}, i64 0, metadata !142), !dbg !1062
  %509 = load i32* %nrowB.i473, align 4, !dbg !1062, !tbaa !306
  %mul.i476 = shl nsw i32 %509, 1, !dbg !1062
  %idx.ext.i477 = sext i32 %mul.i476 to i64, !dbg !1062
  %add.ptr.sum.i478 = shl nsw i64 %idx.ext.i477, 1, !dbg !1064
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i472}, i64 0, metadata !1065) #5, !dbg !1066
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i472}, i64 0, metadata !141), !dbg !1066
  %510 = load i32* %nrowA.i472, align 4, !dbg !1066, !tbaa !306
  %cmp5487.i = icmp sgt i32 %510, 0, !dbg !1066
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i473}, i64 0, metadata !1061) #5, !dbg !1068
  %add.ptr3.sum.i479 = add i64 %add.ptr.sum.i478, %idx.ext.i477, !dbg !1068
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i470}, i64 0, metadata !1060) #5, !dbg !1058
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i475}, i64 0, metadata !1069) #5, !dbg !1070
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i475}, i64 0, metadata !146), !dbg !1070
  %511 = load i32** %sizesA.i475, align 8, !dbg !1070, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i472}, i64 0, metadata !1065) #5, !dbg !1066
  call void @llvm.dbg.value(metadata !{double** %entriesA.i466}, i64 0, metadata !1072) #5, !dbg !1073
  call void @llvm.dbg.value(metadata !{double** %entriesA.i466}, i64 0, metadata !129), !dbg !1073
  %512 = load double** %entriesA.i466, align 8, !dbg !1073, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i474}, i64 0, metadata !1077) #5, !dbg !1078
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i474}, i64 0, metadata !145), !dbg !1078
  %513 = load i32** %indicesA.i474, align 8, !dbg !1078, !tbaa !301
  br label %for.body.i481, !dbg !1058

for.body.i481:                                    ; preds = %for.end84.i526, %for.body.lr.ph.i480
  %jcolB.0501.i = phi i32 [ 0, %for.body.lr.ph.i480 ], [ %add89.i524, %for.end84.i526 ]
  %colB0.0499.i = phi double* [ %507, %for.body.lr.ph.i480 ], [ %add.ptr87.i523, %for.end84.i526 ]
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i473}, i64 0, metadata !1061) #5, !dbg !1062
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1079) #5, !dbg !1066
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1080) #5, !dbg !1066
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i472}, i64 0, metadata !1065) #5, !dbg !1066
  br i1 %cmp5487.i, label %for.body6.i484, label %for.end84.i526, !dbg !1066

for.body6.i484:                                   ; preds = %for.body.i481, %for.inc82.i522
  %indvars.iv528.i = phi i64 [ %indvars.iv.next529.i, %for.inc82.i522 ], [ 0, %for.body.i481 ]
  %kk.0491.i = phi i32 [ %kk.2.i520, %for.inc82.i522 ], [ 0, %for.body.i481 ]
  %irowA.0488.i = phi i32 [ %inc83.i, %for.inc82.i522 ], [ 0, %for.body.i481 ]
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i475}, i64 0, metadata !1069) #5, !dbg !1070
  %arrayidx.i482 = getelementptr inbounds i32* %511, i64 %indvars.iv528.i, !dbg !1070
  %514 = load i32* %arrayidx.i482, align 4, !dbg !1070, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %514}, i64 0, metadata !1081) #5, !dbg !1070
  %cmp7.i483 = icmp sgt i32 %514, 0, !dbg !1070
  br i1 %cmp7.i483, label %for.body10.lr.ph.i, label %for.inc82.i522, !dbg !1070

for.body10.lr.ph.i:                               ; preds = %for.body6.i484
  %515 = sext i32 %kk.0491.i to i64
  %516 = trunc i64 %indvars.iv528.i to i32, !dbg !1082
  br label %for.body10.i, !dbg !1083

for.body10.i:                                     ; preds = %if.end.i510, %for.body10.lr.ph.i
  %indvars.iv525.i = phi i64 [ %515, %for.body10.lr.ph.i ], [ %indvars.iv.next526.i, %if.end.i510 ]
  %kk.1478.i = phi i32 [ %kk.0491.i, %for.body10.lr.ph.i ], [ %inc60.i, %if.end.i510 ]
  %ii.0477.i = phi i32 [ 0, %for.body10.lr.ph.i ], [ %inc.i509, %if.end.i510 ]
  %rsum2.0476.i = phi double [ 0.000000e+00, %for.body10.lr.ph.i ], [ %add55.i, %if.end.i510 ]
  %rsum1.0475.i = phi double [ 0.000000e+00, %for.body10.lr.ph.i ], [ %add47.i, %if.end.i510 ]
  %rsum0.0474.i = phi double [ 0.000000e+00, %for.body10.lr.ph.i ], [ %add39.i, %if.end.i510 ]
  %isum2.0473.i = phi double [ 0.000000e+00, %for.body10.lr.ph.i ], [ %add59.i508, %if.end.i510 ]
  %isum1.0472.i = phi double [ 0.000000e+00, %for.body10.lr.ph.i ], [ %add51.i503, %if.end.i510 ]
  %isum0.0471.i = phi double [ 0.000000e+00, %for.body10.lr.ph.i ], [ %add43.i499, %if.end.i510 ]
  %517 = trunc i64 %indvars.iv525.i to i32, !dbg !1073
  %mul11.i = shl nsw i32 %517, 1, !dbg !1073
  %idxprom12.i = sext i32 %mul11.i to i64, !dbg !1073
  call void @llvm.dbg.value(metadata !{double** %entriesA.i466}, i64 0, metadata !1072) #5, !dbg !1073
  %arrayidx13.i485 = getelementptr inbounds double* %512, i64 %idxprom12.i, !dbg !1073
  %518 = load double* %arrayidx13.i485, align 8, !dbg !1073, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %518}, i64 0, metadata !1084) #5, !dbg !1073
  %add410.i = or i32 %mul11.i, 1, !dbg !1085
  %idxprom15.i = sext i32 %add410.i to i64, !dbg !1085
  %arrayidx16.i486 = getelementptr inbounds double* %512, i64 %idxprom15.i, !dbg !1085
  %519 = load double* %arrayidx16.i486, align 8, !dbg !1085, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %519}, i64 0, metadata !1086) #5, !dbg !1085
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i474}, i64 0, metadata !1077) #5, !dbg !1078
  %arrayidx18.i487 = getelementptr inbounds i32* %513, i64 %indvars.iv525.i, !dbg !1078
  %520 = load i32* %arrayidx18.i487, align 4, !dbg !1078, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %520}, i64 0, metadata !1087) #5, !dbg !1078
  %cmp19.i = icmp sgt i32 %520, -1, !dbg !1082
  %cmp20.i = icmp slt i32 %520, %516, !dbg !1082
  %or.cond.i488 = and i1 %cmp19.i, %cmp20.i, !dbg !1082
  br i1 %or.cond.i488, label %if.end.i510, label %if.then21.i, !dbg !1082

if.then21.i:                                      ; preds = %for.body10.i
  %521 = load %struct._IO_FILE** @stderr, align 8, !dbg !1088, !tbaa !301
  %call.i489 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %521, i8* getelementptr inbounds ([52 x i8]* @.str5, i64 0, i64 0), i32 %irowA.0488.i, i32 %kk.1478.i, i32 %ii.0477.i, i32 %520) #6, !dbg !1088
  call void @exit(i32 -1) #7, !dbg !1090
  unreachable, !dbg !1090

if.end.i510:                                      ; preds = %for.body10.i
  %mul22.i490 = shl nsw i32 %520, 1, !dbg !1091
  call void @llvm.dbg.value(metadata !{i32 %mul22.i490}, i64 0, metadata !1092) #5, !dbg !1091
  %add23411.i = or i32 %mul22.i490, 1, !dbg !1093
  call void @llvm.dbg.value(metadata !{i32 %add23411.i}, i64 0, metadata !1094) #5, !dbg !1093
  %idxprom24.i = sext i32 %mul22.i490 to i64, !dbg !1095
  %arrayidx25.i491 = getelementptr inbounds double* %colB0.0499.i, i64 %idxprom24.i, !dbg !1095
  %522 = load double* %arrayidx25.i491, align 8, !dbg !1095, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %522}, i64 0, metadata !1096) #5, !dbg !1095
  %idxprom26.i = sext i32 %add23411.i to i64, !dbg !1095
  %arrayidx27.i492 = getelementptr inbounds double* %colB0.0499.i, i64 %idxprom26.i, !dbg !1095
  %523 = load double* %arrayidx27.i492, align 8, !dbg !1095, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %523}, i64 0, metadata !1097) #5, !dbg !1095
  %add.ptr.sum412.i = add i64 %idxprom24.i, %idx.ext.i477, !dbg !1098
  %arrayidx29.i493 = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr.sum412.i, !dbg !1098
  %524 = load double* %arrayidx29.i493, align 8, !dbg !1098, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %524}, i64 0, metadata !1099) #5, !dbg !1098
  %add.ptr.sum413.i = add i64 %idxprom26.i, %idx.ext.i477, !dbg !1098
  %arrayidx31.i494 = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr.sum413.i, !dbg !1098
  %525 = load double* %arrayidx31.i494, align 8, !dbg !1098, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %525}, i64 0, metadata !1100) #5, !dbg !1098
  %add.ptr3.sum414.i = add i64 %idxprom24.i, %add.ptr.sum.i478, !dbg !1101
  %arrayidx33.i495 = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr3.sum414.i, !dbg !1101
  %526 = load double* %arrayidx33.i495, align 8, !dbg !1101, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %526}, i64 0, metadata !1102) #5, !dbg !1101
  %add.ptr3.sum415.i = add i64 %idxprom26.i, %add.ptr.sum.i478, !dbg !1101
  %arrayidx35.i496 = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr3.sum415.i, !dbg !1101
  %527 = load double* %arrayidx35.i496, align 8, !dbg !1101, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %527}, i64 0, metadata !1103) #5, !dbg !1101
  %mul36.i = fmul double %518, %522, !dbg !1104
  %mul37.i497 = fmul double %519, %523, !dbg !1104
  %sub38.i = fsub double %mul36.i, %mul37.i497, !dbg !1104
  %add39.i = fadd double %rsum0.0474.i, %sub38.i, !dbg !1104
  call void @llvm.dbg.value(metadata !{double %add39.i}, i64 0, metadata !1105) #5, !dbg !1104
  %mul40.i = fmul double %518, %523, !dbg !1104
  %mul41.i498 = fmul double %519, %522, !dbg !1104
  %add42.i = fadd double %mul41.i498, %mul40.i, !dbg !1104
  %add43.i499 = fadd double %isum0.0471.i, %add42.i, !dbg !1104
  call void @llvm.dbg.value(metadata !{double %add43.i499}, i64 0, metadata !1106) #5, !dbg !1104
  %mul44.i500 = fmul double %518, %524, !dbg !1107
  %mul45.i501 = fmul double %519, %525, !dbg !1107
  %sub46.i = fsub double %mul44.i500, %mul45.i501, !dbg !1107
  %add47.i = fadd double %rsum1.0475.i, %sub46.i, !dbg !1107
  call void @llvm.dbg.value(metadata !{double %add47.i}, i64 0, metadata !1108) #5, !dbg !1107
  %mul48.i = fmul double %518, %525, !dbg !1107
  %mul49.i502 = fmul double %519, %524, !dbg !1107
  %add50.i = fadd double %mul49.i502, %mul48.i, !dbg !1107
  %add51.i503 = fadd double %isum1.0472.i, %add50.i, !dbg !1107
  call void @llvm.dbg.value(metadata !{double %add51.i503}, i64 0, metadata !1109) #5, !dbg !1107
  %mul52.i = fmul double %518, %526, !dbg !1110
  %mul53.i504 = fmul double %519, %527, !dbg !1110
  %sub54.i505 = fsub double %mul52.i, %mul53.i504, !dbg !1110
  %add55.i = fadd double %rsum2.0476.i, %sub54.i505, !dbg !1110
  call void @llvm.dbg.value(metadata !{double %add55.i}, i64 0, metadata !1111) #5, !dbg !1110
  %mul56.i506 = fmul double %518, %527, !dbg !1110
  %mul57.i507 = fmul double %519, %526, !dbg !1110
  %add58.i = fadd double %mul57.i507, %mul56.i506, !dbg !1110
  %add59.i508 = fadd double %isum2.0473.i, %add58.i, !dbg !1110
  call void @llvm.dbg.value(metadata !{double %add59.i508}, i64 0, metadata !1112) #5, !dbg !1110
  %inc.i509 = add nsw i32 %ii.0477.i, 1, !dbg !1083
  call void @llvm.dbg.value(metadata !{i32 %inc.i509}, i64 0, metadata !1113) #5, !dbg !1083
  %indvars.iv.next526.i = add i64 %indvars.iv525.i, 1, !dbg !1083
  %inc60.i = add nsw i32 %kk.1478.i, 1, !dbg !1083
  call void @llvm.dbg.value(metadata !{i32 %inc60.i}, i64 0, metadata !1079) #5, !dbg !1083
  %cmp9.i = icmp slt i32 %inc.i509, %514, !dbg !1083
  br i1 %cmp9.i, label %for.body10.i, label %for.end.i519, !dbg !1083

for.end.i519:                                     ; preds = %if.end.i510
  %phitmp535.i = shl i32 %516, 1, !dbg !1083
  call void @llvm.dbg.value(metadata !{i32 %phitmp535.i}, i64 0, metadata !1092) #5, !dbg !1114
  %add62405.i = or i32 %phitmp535.i, 1, !dbg !1115
  call void @llvm.dbg.value(metadata !{i32 %add62405.i}, i64 0, metadata !1094) #5, !dbg !1115
  %idxprom63.i = sext i32 %phitmp535.i to i64, !dbg !1116
  %arrayidx64.i511 = getelementptr inbounds double* %colB0.0499.i, i64 %idxprom63.i, !dbg !1116
  %528 = load double* %arrayidx64.i511, align 8, !dbg !1116, !tbaa !361
  %sub65.i = fsub double %528, %add39.i, !dbg !1116
  store double %sub65.i, double* %arrayidx64.i511, align 8, !dbg !1116, !tbaa !361
  %idxprom66.i512 = sext i32 %add62405.i to i64, !dbg !1116
  %arrayidx67.i513 = getelementptr inbounds double* %colB0.0499.i, i64 %idxprom66.i512, !dbg !1116
  %529 = load double* %arrayidx67.i513, align 8, !dbg !1116, !tbaa !361
  %sub68.i514 = fsub double %529, %add43.i499, !dbg !1116
  store double %sub68.i514, double* %arrayidx67.i513, align 8, !dbg !1116, !tbaa !361
  %add.ptr.sum406.i = add i64 %idxprom63.i, %idx.ext.i477, !dbg !1117
  %arrayidx70.i515 = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr.sum406.i, !dbg !1117
  %530 = load double* %arrayidx70.i515, align 8, !dbg !1117, !tbaa !361
  %sub71.i = fsub double %530, %add47.i, !dbg !1117
  store double %sub71.i, double* %arrayidx70.i515, align 8, !dbg !1117, !tbaa !361
  %add.ptr.sum407.i = add i64 %idxprom66.i512, %idx.ext.i477, !dbg !1117
  %arrayidx73.i = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr.sum407.i, !dbg !1117
  %531 = load double* %arrayidx73.i, align 8, !dbg !1117, !tbaa !361
  %sub74.i = fsub double %531, %add51.i503, !dbg !1117
  store double %sub74.i, double* %arrayidx73.i, align 8, !dbg !1117, !tbaa !361
  %add.ptr3.sum408.i = add i64 %idxprom63.i, %add.ptr.sum.i478, !dbg !1118
  %arrayidx76.i516 = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr3.sum408.i, !dbg !1118
  %532 = load double* %arrayidx76.i516, align 8, !dbg !1118, !tbaa !361
  %sub77.i = fsub double %532, %add55.i, !dbg !1118
  store double %sub77.i, double* %arrayidx76.i516, align 8, !dbg !1118, !tbaa !361
  %add.ptr3.sum409.i = add i64 %idxprom66.i512, %add.ptr.sum.i478, !dbg !1118
  %arrayidx79.i517 = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr3.sum409.i, !dbg !1118
  %533 = load double* %arrayidx79.i517, align 8, !dbg !1118, !tbaa !361
  %sub80.i518 = fsub double %533, %add59.i508, !dbg !1118
  store double %sub80.i518, double* %arrayidx79.i517, align 8, !dbg !1118, !tbaa !361
  br label %for.inc82.i522, !dbg !1119

for.inc82.i522:                                   ; preds = %for.end.i519, %for.body6.i484
  %kk.2.i520 = phi i32 [ %inc60.i, %for.end.i519 ], [ %kk.0491.i, %for.body6.i484 ]
  %indvars.iv.next529.i = add i64 %indvars.iv528.i, 1, !dbg !1066
  %inc83.i = add nsw i32 %irowA.0488.i, 1, !dbg !1066
  call void @llvm.dbg.value(metadata !{i32 %inc83.i}, i64 0, metadata !1080) #5, !dbg !1066
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i472}, i64 0, metadata !1065) #5, !dbg !1066
  %534 = trunc i64 %indvars.iv.next529.i to i32, !dbg !1066
  %cmp5.i521 = icmp slt i32 %534, %510, !dbg !1066
  br i1 %cmp5.i521, label %for.body6.i484, label %for.end84.i526, !dbg !1066

for.end84.i526:                                   ; preds = %for.inc82.i522, %for.body.i481
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i473}, i64 0, metadata !1061) #5, !dbg !1068
  %add.ptr87.i523 = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr3.sum.i479, !dbg !1068
  call void @llvm.dbg.value(metadata !{double* %add.ptr87.i523}, i64 0, metadata !1056) #5, !dbg !1068
  %add89.i524 = add nsw i32 %jcolB.0501.i, 3, !dbg !1058
  call void @llvm.dbg.value(metadata !{i32 %add89.i524}, i64 0, metadata !1057) #5, !dbg !1058
  call void @llvm.dbg.value(metadata !{i32* %ncolB.i470}, i64 0, metadata !1060) #5, !dbg !1058
  %cmp.i525 = icmp slt i32 %add89.i524, %sub497.i, !dbg !1058
  br i1 %cmp.i525, label %for.body.i481, label %for.end90.i530, !dbg !1058

for.end90.i530:                                   ; preds = %for.end84.i526, %sw.bb26
  %jcolB.0.lcssa.i527 = phi i32 [ 0, %sw.bb26 ], [ %add89.i524, %for.end84.i526 ]
  %colB0.0.lcssa.i528 = phi double* [ %507, %sw.bb26 ], [ %add.ptr87.i523, %for.end84.i526 ]
  %cmp92.i529 = icmp eq i32 %jcolB.0.lcssa.i527, %sub497.i, !dbg !1120
  br i1 %cmp92.i529, label %if.then93.i533, label %if.else.i559, !dbg !1120

if.then93.i533:                                   ; preds = %for.end90.i530
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i473}, i64 0, metadata !1061) #5, !dbg !1121
  call void @llvm.dbg.value(metadata !{i32* %nrowB.i473}, i64 0, metadata !142), !dbg !1121
  %535 = load i32* %nrowB.i473, align 4, !dbg !1121, !tbaa !306
  %mul94.i531 = shl nsw i32 %535, 1, !dbg !1121
  %idx.ext95.i532 = sext i32 %mul94.i531 to i64, !dbg !1121
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1079) #5, !dbg !1123
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1080) #5, !dbg !1123
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i472}, i64 0, metadata !1065) #5, !dbg !1123
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i472}, i64 0, metadata !141), !dbg !1123
  %536 = load i32* %nrowA.i472, align 4, !dbg !1123, !tbaa !306
  %cmp98436.i = icmp sgt i32 %536, 0, !dbg !1123
  br i1 %cmp98436.i, label %for.body99.lr.ph.i534, label %sw.epilog34, !dbg !1123

for.body99.lr.ph.i534:                            ; preds = %if.then93.i533
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i475}, i64 0, metadata !1069) #5, !dbg !1125
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i475}, i64 0, metadata !146), !dbg !1125
  %537 = load i32** %sizesA.i475, align 8, !dbg !1125, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i472}, i64 0, metadata !1065) #5, !dbg !1123
  call void @llvm.dbg.value(metadata !{double** %entriesA.i466}, i64 0, metadata !1072) #5, !dbg !1127
  call void @llvm.dbg.value(metadata !{double** %entriesA.i466}, i64 0, metadata !129), !dbg !1127
  %538 = load double** %entriesA.i466, align 8, !dbg !1127, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i474}, i64 0, metadata !1077) #5, !dbg !1131
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i474}, i64 0, metadata !145), !dbg !1131
  %539 = load i32** %indicesA.i474, align 8, !dbg !1131, !tbaa !301
  br label %for.body99.i537, !dbg !1123

for.body99.i537:                                  ; preds = %for.inc167.i, %for.body99.lr.ph.i534
  %indvars.iv510.i = phi i64 [ 0, %for.body99.lr.ph.i534 ], [ %indvars.iv.next511.i, %for.inc167.i ]
  %kk.3440.i = phi i32 [ 0, %for.body99.lr.ph.i534 ], [ %kk.5.i557, %for.inc167.i ]
  %irowA.1437.i = phi i32 [ 0, %for.body99.lr.ph.i534 ], [ %inc168.i, %for.inc167.i ]
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i475}, i64 0, metadata !1069) #5, !dbg !1125
  %arrayidx101.i535 = getelementptr inbounds i32* %537, i64 %indvars.iv510.i, !dbg !1125
  %540 = load i32* %arrayidx101.i535, align 4, !dbg !1125, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %540}, i64 0, metadata !1081) #5, !dbg !1125
  %cmp102.i536 = icmp sgt i32 %540, 0, !dbg !1125
  br i1 %cmp102.i536, label %for.body106.lr.ph.i, label %for.inc167.i, !dbg !1125

for.body106.lr.ph.i:                              ; preds = %for.body99.i537
  %541 = sext i32 %kk.3440.i to i64
  %542 = trunc i64 %indvars.iv510.i to i32, !dbg !1132
  br label %for.body106.i, !dbg !1133

for.body106.i:                                    ; preds = %if.end121.i, %for.body106.lr.ph.i
  %indvars.iv.i538 = phi i64 [ %541, %for.body106.lr.ph.i ], [ %indvars.iv.next.i551, %if.end121.i ]
  %kk.4430.i = phi i32 [ %kk.3440.i, %for.body106.lr.ph.i ], [ %inc150.i, %if.end121.i ]
  %ii.1429.i = phi i32 [ 0, %for.body106.lr.ph.i ], [ %inc149.i, %if.end121.i ]
  %rsum1.1428.i = phi double [ 0.000000e+00, %for.body106.lr.ph.i ], [ %add143.i, %if.end121.i ]
  %rsum0.1427.i = phi double [ 0.000000e+00, %for.body106.lr.ph.i ], [ %add135.i, %if.end121.i ]
  %isum1.1426.i = phi double [ 0.000000e+00, %for.body106.lr.ph.i ], [ %add147.i, %if.end121.i ]
  %isum0.1425.i = phi double [ 0.000000e+00, %for.body106.lr.ph.i ], [ %add139.i, %if.end121.i ]
  %543 = trunc i64 %indvars.iv.i538 to i32, !dbg !1127
  %mul107.i = shl nsw i32 %543, 1, !dbg !1127
  %idxprom108.i = sext i32 %mul107.i to i64, !dbg !1127
  call void @llvm.dbg.value(metadata !{double** %entriesA.i466}, i64 0, metadata !1072) #5, !dbg !1127
  %arrayidx109.i = getelementptr inbounds double* %538, i64 %idxprom108.i, !dbg !1127
  %544 = load double* %arrayidx109.i, align 8, !dbg !1127, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %544}, i64 0, metadata !1084) #5, !dbg !1127
  %add111401.i = or i32 %mul107.i, 1, !dbg !1134
  %idxprom112.i = sext i32 %add111401.i to i64, !dbg !1134
  %arrayidx113.i539 = getelementptr inbounds double* %538, i64 %idxprom112.i, !dbg !1134
  %545 = load double* %arrayidx113.i539, align 8, !dbg !1134, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %545}, i64 0, metadata !1086) #5, !dbg !1134
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i474}, i64 0, metadata !1077) #5, !dbg !1131
  %arrayidx115.i540 = getelementptr inbounds i32* %539, i64 %indvars.iv.i538, !dbg !1131
  %546 = load i32* %arrayidx115.i540, align 4, !dbg !1131, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %546}, i64 0, metadata !1087) #5, !dbg !1131
  %cmp116.i541 = icmp sgt i32 %546, -1, !dbg !1132
  %cmp118.i = icmp slt i32 %546, %542, !dbg !1132
  %or.cond416.i = and i1 %cmp116.i541, %cmp118.i, !dbg !1132
  br i1 %or.cond416.i, label %if.end121.i, label %if.then119.i, !dbg !1132

if.then119.i:                                     ; preds = %for.body106.i
  %547 = load %struct._IO_FILE** @stderr, align 8, !dbg !1135, !tbaa !301
  %call120.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %547, i8* getelementptr inbounds ([52 x i8]* @.str5, i64 0, i64 0), i32 %irowA.1437.i, i32 %kk.4430.i, i32 %ii.1429.i, i32 %546) #6, !dbg !1135
  call void @exit(i32 -1) #7, !dbg !1137
  unreachable, !dbg !1137

if.end121.i:                                      ; preds = %for.body106.i
  %mul122.i542 = shl nsw i32 %546, 1, !dbg !1138
  call void @llvm.dbg.value(metadata !{i32 %mul122.i542}, i64 0, metadata !1092) #5, !dbg !1138
  %add123402.i = or i32 %mul122.i542, 1, !dbg !1139
  call void @llvm.dbg.value(metadata !{i32 %add123402.i}, i64 0, metadata !1094) #5, !dbg !1139
  %idxprom124.i543 = sext i32 %mul122.i542 to i64, !dbg !1140
  %arrayidx125.i544 = getelementptr inbounds double* %colB0.0.lcssa.i528, i64 %idxprom124.i543, !dbg !1140
  %548 = load double* %arrayidx125.i544, align 8, !dbg !1140, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %548}, i64 0, metadata !1096) #5, !dbg !1140
  %idxprom126.i = sext i32 %add123402.i to i64, !dbg !1140
  %arrayidx127.i545 = getelementptr inbounds double* %colB0.0.lcssa.i528, i64 %idxprom126.i, !dbg !1140
  %549 = load double* %arrayidx127.i545, align 8, !dbg !1140, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %549}, i64 0, metadata !1097) #5, !dbg !1140
  %add.ptr96.sum403.i = add i64 %idxprom124.i543, %idx.ext95.i532, !dbg !1141
  %arrayidx129.i546 = getelementptr inbounds double* %colB0.0.lcssa.i528, i64 %add.ptr96.sum403.i, !dbg !1141
  %550 = load double* %arrayidx129.i546, align 8, !dbg !1141, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %550}, i64 0, metadata !1099) #5, !dbg !1141
  %add.ptr96.sum404.i = add i64 %idxprom126.i, %idx.ext95.i532, !dbg !1141
  %arrayidx131.i547 = getelementptr inbounds double* %colB0.0.lcssa.i528, i64 %add.ptr96.sum404.i, !dbg !1141
  %551 = load double* %arrayidx131.i547, align 8, !dbg !1141, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %551}, i64 0, metadata !1100) #5, !dbg !1141
  %mul132.i = fmul double %544, %548, !dbg !1142
  %mul133.i548 = fmul double %545, %549, !dbg !1142
  %sub134.i = fsub double %mul132.i, %mul133.i548, !dbg !1142
  %add135.i = fadd double %rsum0.1427.i, %sub134.i, !dbg !1142
  call void @llvm.dbg.value(metadata !{double %add135.i}, i64 0, metadata !1105) #5, !dbg !1142
  %mul136.i = fmul double %544, %549, !dbg !1142
  %mul137.i = fmul double %545, %548, !dbg !1142
  %add138.i = fadd double %mul137.i, %mul136.i, !dbg !1142
  %add139.i = fadd double %isum0.1425.i, %add138.i, !dbg !1142
  call void @llvm.dbg.value(metadata !{double %add139.i}, i64 0, metadata !1106) #5, !dbg !1142
  %mul140.i549 = fmul double %544, %550, !dbg !1143
  %mul141.i = fmul double %545, %551, !dbg !1143
  %sub142.i = fsub double %mul140.i549, %mul141.i, !dbg !1143
  %add143.i = fadd double %rsum1.1428.i, %sub142.i, !dbg !1143
  call void @llvm.dbg.value(metadata !{double %add143.i}, i64 0, metadata !1108) #5, !dbg !1143
  %mul144.i = fmul double %544, %551, !dbg !1143
  %mul145.i550 = fmul double %545, %550, !dbg !1143
  %add146.i = fadd double %mul145.i550, %mul144.i, !dbg !1143
  %add147.i = fadd double %isum1.1426.i, %add146.i, !dbg !1143
  call void @llvm.dbg.value(metadata !{double %add147.i}, i64 0, metadata !1109) #5, !dbg !1143
  %inc149.i = add nsw i32 %ii.1429.i, 1, !dbg !1133
  call void @llvm.dbg.value(metadata !{i32 %inc149.i}, i64 0, metadata !1113) #5, !dbg !1133
  %indvars.iv.next.i551 = add i64 %indvars.iv.i538, 1, !dbg !1133
  %inc150.i = add nsw i32 %kk.4430.i, 1, !dbg !1133
  call void @llvm.dbg.value(metadata !{i32 %inc150.i}, i64 0, metadata !1079) #5, !dbg !1133
  %cmp105.i = icmp slt i32 %inc149.i, %540, !dbg !1133
  br i1 %cmp105.i, label %for.body106.i, label %for.end151.i, !dbg !1133

for.end151.i:                                     ; preds = %if.end121.i
  %phitmp534.i = shl i32 %542, 1, !dbg !1133
  call void @llvm.dbg.value(metadata !{i32 %phitmp534.i}, i64 0, metadata !1092) #5, !dbg !1144
  %add153399.i = or i32 %phitmp534.i, 1, !dbg !1145
  call void @llvm.dbg.value(metadata !{i32 %add153399.i}, i64 0, metadata !1094) #5, !dbg !1145
  %idxprom154.i = sext i32 %phitmp534.i to i64, !dbg !1146
  %arrayidx155.i552 = getelementptr inbounds double* %colB0.0.lcssa.i528, i64 %idxprom154.i, !dbg !1146
  %552 = load double* %arrayidx155.i552, align 8, !dbg !1146, !tbaa !361
  %sub156.i553 = fsub double %552, %add135.i, !dbg !1146
  store double %sub156.i553, double* %arrayidx155.i552, align 8, !dbg !1146, !tbaa !361
  %idxprom157.i = sext i32 %add153399.i to i64, !dbg !1146
  %arrayidx158.i = getelementptr inbounds double* %colB0.0.lcssa.i528, i64 %idxprom157.i, !dbg !1146
  %553 = load double* %arrayidx158.i, align 8, !dbg !1146, !tbaa !361
  %sub159.i = fsub double %553, %add139.i, !dbg !1146
  store double %sub159.i, double* %arrayidx158.i, align 8, !dbg !1146, !tbaa !361
  %add.ptr96.sum.i554 = add i64 %idxprom154.i, %idx.ext95.i532, !dbg !1147
  %arrayidx161.i555 = getelementptr inbounds double* %colB0.0.lcssa.i528, i64 %add.ptr96.sum.i554, !dbg !1147
  %554 = load double* %arrayidx161.i555, align 8, !dbg !1147, !tbaa !361
  %sub162.i = fsub double %554, %add143.i, !dbg !1147
  store double %sub162.i, double* %arrayidx161.i555, align 8, !dbg !1147, !tbaa !361
  %add.ptr96.sum400.i = add i64 %idxprom157.i, %idx.ext95.i532, !dbg !1147
  %arrayidx164.i = getelementptr inbounds double* %colB0.0.lcssa.i528, i64 %add.ptr96.sum400.i, !dbg !1147
  %555 = load double* %arrayidx164.i, align 8, !dbg !1147, !tbaa !361
  %sub165.i556 = fsub double %555, %add147.i, !dbg !1147
  store double %sub165.i556, double* %arrayidx164.i, align 8, !dbg !1147, !tbaa !361
  br label %for.inc167.i, !dbg !1148

for.inc167.i:                                     ; preds = %for.end151.i, %for.body99.i537
  %kk.5.i557 = phi i32 [ %inc150.i, %for.end151.i ], [ %kk.3440.i, %for.body99.i537 ]
  %indvars.iv.next511.i = add i64 %indvars.iv510.i, 1, !dbg !1123
  %inc168.i = add nsw i32 %irowA.1437.i, 1, !dbg !1123
  call void @llvm.dbg.value(metadata !{i32 %inc168.i}, i64 0, metadata !1080) #5, !dbg !1123
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i472}, i64 0, metadata !1065) #5, !dbg !1123
  %556 = trunc i64 %indvars.iv.next511.i to i32, !dbg !1123
  %cmp98.i558 = icmp slt i32 %556, %536, !dbg !1123
  br i1 %cmp98.i558, label %for.body99.i537, label %sw.epilog34, !dbg !1123

if.else.i559:                                     ; preds = %for.end90.i530
  %sub170.i = add nsw i32 %508, -1, !dbg !1149
  %cmp171.i = icmp eq i32 %jcolB.0.lcssa.i527, %sub170.i, !dbg !1149
  br i1 %cmp171.i, label %for.cond173.preheader.i, label %sw.epilog34, !dbg !1149

for.cond173.preheader.i:                          ; preds = %if.else.i559
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i472}, i64 0, metadata !1065) #5, !dbg !1150
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i472}, i64 0, metadata !141), !dbg !1150
  %557 = load i32* %nrowA.i472, align 4, !dbg !1150, !tbaa !306
  %cmp174456.i = icmp sgt i32 %557, 0, !dbg !1150
  br i1 %cmp174456.i, label %for.body175.lr.ph.i, label %sw.epilog34, !dbg !1150

for.body175.lr.ph.i:                              ; preds = %for.cond173.preheader.i
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i475}, i64 0, metadata !1069) #5, !dbg !1153
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i475}, i64 0, metadata !146), !dbg !1153
  %558 = load i32** %sizesA.i475, align 8, !dbg !1153, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i472}, i64 0, metadata !1065) #5, !dbg !1150
  call void @llvm.dbg.value(metadata !{double** %entriesA.i466}, i64 0, metadata !1072) #5, !dbg !1155
  call void @llvm.dbg.value(metadata !{double** %entriesA.i466}, i64 0, metadata !129), !dbg !1155
  %559 = load double** %entriesA.i466, align 8, !dbg !1155, !tbaa !301
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i474}, i64 0, metadata !1077) #5, !dbg !1159
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i474}, i64 0, metadata !145), !dbg !1159
  %560 = load i32** %indicesA.i474, align 8, !dbg !1159, !tbaa !301
  br label %for.body175.i, !dbg !1150

for.body175.i:                                    ; preds = %for.inc225.i, %for.body175.lr.ph.i
  %indvars.iv519.i = phi i64 [ 0, %for.body175.lr.ph.i ], [ %indvars.iv.next520.i, %for.inc225.i ]
  %kk.6460.i = phi i32 [ 0, %for.body175.lr.ph.i ], [ %kk.8.i570, %for.inc225.i ]
  %irowA.2457.i = phi i32 [ 0, %for.body175.lr.ph.i ], [ %inc226.i, %for.inc225.i ]
  call void @llvm.dbg.value(metadata !{i32** %sizesA.i475}, i64 0, metadata !1069) #5, !dbg !1153
  %arrayidx177.i560 = getelementptr inbounds i32* %558, i64 %indvars.iv519.i, !dbg !1153
  %561 = load i32* %arrayidx177.i560, align 4, !dbg !1153, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %561}, i64 0, metadata !1081) #5, !dbg !1153
  %cmp178.i = icmp sgt i32 %561, 0, !dbg !1153
  br i1 %cmp178.i, label %for.body182.lr.ph.i, label %for.inc225.i, !dbg !1153

for.body182.lr.ph.i:                              ; preds = %for.body175.i
  %562 = sext i32 %kk.6460.i to i64
  %563 = trunc i64 %indvars.iv519.i to i32, !dbg !1160
  br label %for.body182.i, !dbg !1161

for.body182.i:                                    ; preds = %if.end197.i, %for.body182.lr.ph.i
  %indvars.iv516.i = phi i64 [ %562, %for.body182.lr.ph.i ], [ %indvars.iv.next517.i, %if.end197.i ]
  %kk.7450.i = phi i32 [ %kk.6460.i, %for.body182.lr.ph.i ], [ %inc214.i, %if.end197.i ]
  %ii.2449.i = phi i32 [ 0, %for.body182.lr.ph.i ], [ %inc213.i, %if.end197.i ]
  %rsum0.2448.i = phi double [ 0.000000e+00, %for.body182.lr.ph.i ], [ %add207.i567, %if.end197.i ]
  %isum0.2447.i = phi double [ 0.000000e+00, %for.body182.lr.ph.i ], [ %add211.i569, %if.end197.i ]
  %564 = trunc i64 %indvars.iv516.i to i32, !dbg !1155
  %mul183.i561 = shl nsw i32 %564, 1, !dbg !1155
  %idxprom184.i = sext i32 %mul183.i561 to i64, !dbg !1155
  call void @llvm.dbg.value(metadata !{double** %entriesA.i466}, i64 0, metadata !1072) #5, !dbg !1155
  %arrayidx185.i = getelementptr inbounds double* %559, i64 %idxprom184.i, !dbg !1155
  %565 = load double* %arrayidx185.i, align 8, !dbg !1155, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %565}, i64 0, metadata !1084) #5, !dbg !1155
  %add187397.i = or i32 %mul183.i561, 1, !dbg !1162
  %idxprom188.i562 = sext i32 %add187397.i to i64, !dbg !1162
  %arrayidx189.i563 = getelementptr inbounds double* %559, i64 %idxprom188.i562, !dbg !1162
  %566 = load double* %arrayidx189.i563, align 8, !dbg !1162, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %566}, i64 0, metadata !1086) #5, !dbg !1162
  call void @llvm.dbg.value(metadata !{i32** %indicesA.i474}, i64 0, metadata !1077) #5, !dbg !1159
  %arrayidx191.i = getelementptr inbounds i32* %560, i64 %indvars.iv516.i, !dbg !1159
  %567 = load i32* %arrayidx191.i, align 4, !dbg !1159, !tbaa !306
  call void @llvm.dbg.value(metadata !{i32 %567}, i64 0, metadata !1087) #5, !dbg !1159
  %cmp192.i564 = icmp sgt i32 %567, -1, !dbg !1160
  %cmp194.i = icmp slt i32 %567, %563, !dbg !1160
  %or.cond417.i = and i1 %cmp192.i564, %cmp194.i, !dbg !1160
  br i1 %or.cond417.i, label %if.end197.i, label %if.then195.i, !dbg !1160

if.then195.i:                                     ; preds = %for.body182.i
  %568 = load %struct._IO_FILE** @stderr, align 8, !dbg !1163, !tbaa !301
  %call196.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %568, i8* getelementptr inbounds ([52 x i8]* @.str5, i64 0, i64 0), i32 %irowA.2457.i, i32 %kk.7450.i, i32 %ii.2449.i, i32 %567) #6, !dbg !1163
  call void @exit(i32 -1) #7, !dbg !1165
  unreachable, !dbg !1165

if.end197.i:                                      ; preds = %for.body182.i
  %mul198.i = shl nsw i32 %567, 1, !dbg !1166
  call void @llvm.dbg.value(metadata !{i32 %mul198.i}, i64 0, metadata !1092) #5, !dbg !1166
  %add199398.i = or i32 %mul198.i, 1, !dbg !1167
  call void @llvm.dbg.value(metadata !{i32 %add199398.i}, i64 0, metadata !1094) #5, !dbg !1167
  %idxprom200.i = sext i32 %mul198.i to i64, !dbg !1168
  %arrayidx201.i = getelementptr inbounds double* %colB0.0.lcssa.i528, i64 %idxprom200.i, !dbg !1168
  %569 = load double* %arrayidx201.i, align 8, !dbg !1168, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %569}, i64 0, metadata !1096) #5, !dbg !1168
  %idxprom202.i = sext i32 %add199398.i to i64, !dbg !1168
  %arrayidx203.i = getelementptr inbounds double* %colB0.0.lcssa.i528, i64 %idxprom202.i, !dbg !1168
  %570 = load double* %arrayidx203.i, align 8, !dbg !1168, !tbaa !361
  call void @llvm.dbg.value(metadata !{double %570}, i64 0, metadata !1097) #5, !dbg !1168
  %mul204.i565 = fmul double %565, %569, !dbg !1169
  %mul205.i566 = fmul double %566, %570, !dbg !1169
  %sub206.i = fsub double %mul204.i565, %mul205.i566, !dbg !1169
  %add207.i567 = fadd double %rsum0.2448.i, %sub206.i, !dbg !1169
  call void @llvm.dbg.value(metadata !{double %add207.i567}, i64 0, metadata !1105) #5, !dbg !1169
  %mul208.i = fmul double %565, %570, !dbg !1169
  %mul209.i568 = fmul double %566, %569, !dbg !1169
  %add210.i = fadd double %mul209.i568, %mul208.i, !dbg !1169
  %add211.i569 = fadd double %isum0.2447.i, %add210.i, !dbg !1169
  call void @llvm.dbg.value(metadata !{double %add211.i569}, i64 0, metadata !1106) #5, !dbg !1169
  %inc213.i = add nsw i32 %ii.2449.i, 1, !dbg !1161
  call void @llvm.dbg.value(metadata !{i32 %inc213.i}, i64 0, metadata !1113) #5, !dbg !1161
  %indvars.iv.next517.i = add i64 %indvars.iv516.i, 1, !dbg !1161
  %inc214.i = add nsw i32 %kk.7450.i, 1, !dbg !1161
  call void @llvm.dbg.value(metadata !{i32 %inc214.i}, i64 0, metadata !1079) #5, !dbg !1161
  %cmp181.i = icmp slt i32 %inc213.i, %561, !dbg !1161
  br i1 %cmp181.i, label %for.body182.i, label %for.end215.i, !dbg !1161

for.end215.i:                                     ; preds = %if.end197.i
  %phitmp.i = shl i32 %563, 1, !dbg !1161
  call void @llvm.dbg.value(metadata !{i32 %phitmp.i}, i64 0, metadata !1092) #5, !dbg !1170
  %add217396.i = or i32 %phitmp.i, 1, !dbg !1171
  call void @llvm.dbg.value(metadata !{i32 %add217396.i}, i64 0, metadata !1094) #5, !dbg !1171
  %idxprom218.i = sext i32 %phitmp.i to i64, !dbg !1172
  %arrayidx219.i = getelementptr inbounds double* %colB0.0.lcssa.i528, i64 %idxprom218.i, !dbg !1172
  %571 = load double* %arrayidx219.i, align 8, !dbg !1172, !tbaa !361
  %sub220.i = fsub double %571, %add207.i567, !dbg !1172
  store double %sub220.i, double* %arrayidx219.i, align 8, !dbg !1172, !tbaa !361
  %idxprom221.i = sext i32 %add217396.i to i64, !dbg !1172
  %arrayidx222.i = getelementptr inbounds double* %colB0.0.lcssa.i528, i64 %idxprom221.i, !dbg !1172
  %572 = load double* %arrayidx222.i, align 8, !dbg !1172, !tbaa !361
  %sub223.i = fsub double %572, %add211.i569, !dbg !1172
  store double %sub223.i, double* %arrayidx222.i, align 8, !dbg !1172, !tbaa !361
  br label %for.inc225.i, !dbg !1173

for.inc225.i:                                     ; preds = %for.end215.i, %for.body175.i
  %kk.8.i570 = phi i32 [ %inc214.i, %for.end215.i ], [ %kk.6460.i, %for.body175.i ]
  %indvars.iv.next520.i = add i64 %indvars.iv519.i, 1, !dbg !1150
  %inc226.i = add nsw i32 %irowA.2457.i, 1, !dbg !1150
  call void @llvm.dbg.value(metadata !{i32 %inc226.i}, i64 0, metadata !1080) #5, !dbg !1150
  call void @llvm.dbg.value(metadata !{i32* %nrowA.i472}, i64 0, metadata !1065) #5, !dbg !1150
  %573 = trunc i64 %indvars.iv.next520.i to i32, !dbg !1150
  %cmp174.i571 = icmp slt i32 %573, %557, !dbg !1150
  br i1 %cmp174.i571, label %for.body175.i, label %sw.epilog34, !dbg !1150

sw.default27:                                     ; preds = %sw.bb21
  %574 = load %struct._IO_FILE** @stderr, align 8, !dbg !1174, !tbaa !301
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %574, i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 %253) #6, !dbg !1174
  call void @exit(i32 -1) #7, !dbg !1175
  unreachable, !dbg !1175

sw.default31:                                     ; preds = %if.end12
  %575 = load %struct._IO_FILE** @stderr, align 8, !dbg !1176, !tbaa !301
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %575, i8* getelementptr inbounds ([52 x i8]* @.str4, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 %7) #6, !dbg !1176
  call void @exit(i32 -1) #7, !dbg !1177
  unreachable, !dbg !1177

sw.epilog34:                                      ; preds = %for.inc225.i, %for.inc167.i, %for.inc221.i, %for.inc165.i, %for.cond157.i, %for.cond89.i, %for.cond169.i, %for.cond95.i, %for.inc122.i, %for.inc84.i, %for.inc124.i, %for.inc88.i, %for.cond85.i, %for.cond46.i, %for.cond97.i, %for.cond52.i, %for.cond173.preheader.i, %if.else.i559, %if.then93.i533, %for.cond171.preheader.i, %if.else.i456, %if.then93.i, %if.else.i366, %if.else.i272, %for.cond90.preheader.i, %if.else.i211, %if.then48.i192, %for.cond94.preheader.i, %if.else.i151, %if.then48.i142, %if.else.i108, %if.else.i
  ret void, !dbg !1178
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare void @SubMtx_sparseRowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #4

; Function Attrs: optsize
declare void @SubMtx_denseInfo(%struct._SubMtx*, i32*, i32*, i32*, i32*, double**) #4

; Function Attrs: optsize
declare void @SubMtx_denseSubrowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #4

; Function Attrs: optsize
declare void @SubMtx_sparseColumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #4

; Function Attrs: optsize
declare void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #4

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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !39, metadata !74, metadata !108, metadata !147, metadata !186, metadata !214, metadata !242, metadata !269}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_solveT", metadata !"SubMtx_solveT", metadata !"", i32 35, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*, %struct._SubMtx*)* @SubMtx_solveT, null, null, metadata !36, i32 38} ; [ DW_TAG_subprogram ] [line 35] [def] [scope 38] [SubMtx_solveT]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
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
!37 = metadata !{i32 786689, metadata !4, metadata !"mtxA", metadata !5, i32 16777252, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 36]
!38 = metadata !{i32 786689, metadata !4, metadata !"mtxB", metadata !5, i32 33554469, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 37]
!39 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"complex_solveSparseRows", metadata !"complex_solveSparseRows", metadata !"", i32 1024, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !40, i32 1027} ; [ DW_TAG_subprogram ] [line 1024] [local] [def] [scope 1027] [complex_solveSparseRows]
!40 = metadata !{metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !73}
!41 = metadata !{i32 786689, metadata !39, metadata !"mtxA", metadata !5, i32 16778241, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 1025]
!42 = metadata !{i32 786689, metadata !39, metadata !"mtxB", metadata !5, i32 33555458, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 1026]
!43 = metadata !{i32 786688, metadata !39, metadata !"ai", metadata !5, i32 1028, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai] [line 1028]
!44 = metadata !{i32 786688, metadata !39, metadata !"ar", metadata !5, i32 1028, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar] [line 1028]
!45 = metadata !{i32 786688, metadata !39, metadata !"bi0", metadata !5, i32 1028, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi0] [line 1028]
!46 = metadata !{i32 786688, metadata !39, metadata !"bi1", metadata !5, i32 1028, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi1] [line 1028]
!47 = metadata !{i32 786688, metadata !39, metadata !"bi2", metadata !5, i32 1028, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi2] [line 1028]
!48 = metadata !{i32 786688, metadata !39, metadata !"br0", metadata !5, i32 1028, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br0] [line 1028]
!49 = metadata !{i32 786688, metadata !39, metadata !"br1", metadata !5, i32 1028, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br1] [line 1028]
!50 = metadata !{i32 786688, metadata !39, metadata !"br2", metadata !5, i32 1028, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br2] [line 1028]
!51 = metadata !{i32 786688, metadata !39, metadata !"colB0", metadata !5, i32 1029, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB0] [line 1029]
!52 = metadata !{i32 786688, metadata !39, metadata !"colB1", metadata !5, i32 1029, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB1] [line 1029]
!53 = metadata !{i32 786688, metadata !39, metadata !"colB2", metadata !5, i32 1029, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB2] [line 1029]
!54 = metadata !{i32 786688, metadata !39, metadata !"entriesA", metadata !5, i32 1029, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesA] [line 1029]
!55 = metadata !{i32 786688, metadata !39, metadata !"entriesB", metadata !5, i32 1029, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesB] [line 1029]
!56 = metadata !{i32 786688, metadata !39, metadata !"colstart", metadata !5, i32 1030, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colstart] [line 1030]
!57 = metadata !{i32 786688, metadata !39, metadata !"ii", metadata !5, i32 1030, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1030]
!58 = metadata !{i32 786688, metadata !39, metadata !"iloc", metadata !5, i32 1030, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 1030]
!59 = metadata !{i32 786688, metadata !39, metadata !"inc1", metadata !5, i32 1030, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 1030]
!60 = metadata !{i32 786688, metadata !39, metadata !"inc2", metadata !5, i32 1030, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 1030]
!61 = metadata !{i32 786688, metadata !39, metadata !"jcolA", metadata !5, i32 1030, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolA] [line 1030]
!62 = metadata !{i32 786688, metadata !39, metadata !"jcolB", metadata !5, i32 1030, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolB] [line 1030]
!63 = metadata !{i32 786688, metadata !39, metadata !"jj", metadata !5, i32 1031, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 1031]
!64 = metadata !{i32 786688, metadata !39, metadata !"kk", metadata !5, i32 1031, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 1031]
!65 = metadata !{i32 786688, metadata !39, metadata !"ncolB", metadata !5, i32 1031, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolB] [line 1031]
!66 = metadata !{i32 786688, metadata !39, metadata !"nentA", metadata !5, i32 1031, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentA] [line 1031]
!67 = metadata !{i32 786688, metadata !39, metadata !"nrowA", metadata !5, i32 1031, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 1031]
!68 = metadata !{i32 786688, metadata !39, metadata !"nrowB", metadata !5, i32 1031, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowB] [line 1031]
!69 = metadata !{i32 786688, metadata !39, metadata !"rloc", metadata !5, i32 1031, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 1031]
!70 = metadata !{i32 786688, metadata !39, metadata !"size", metadata !5, i32 1031, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 1031]
!71 = metadata !{i32 786688, metadata !39, metadata !"indicesA", metadata !5, i32 1032, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indicesA] [line 1032]
!72 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!73 = metadata !{i32 786688, metadata !39, metadata !"sizesA", metadata !5, i32 1032, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizesA] [line 1032]
!74 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"complex_solveDenseSubrows", metadata !"complex_solveDenseSubrows", metadata !"", i32 898, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !75, i32 901} ; [ DW_TAG_subprogram ] [line 898] [local] [def] [scope 901] [complex_solveDenseSubrows]
!75 = metadata !{metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107}
!76 = metadata !{i32 786689, metadata !74, metadata !"mtxA", metadata !5, i32 16778115, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 899]
!77 = metadata !{i32 786689, metadata !74, metadata !"mtxB", metadata !5, i32 33555332, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 900]
!78 = metadata !{i32 786688, metadata !74, metadata !"ai", metadata !5, i32 902, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai] [line 902]
!79 = metadata !{i32 786688, metadata !74, metadata !"ar", metadata !5, i32 902, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar] [line 902]
!80 = metadata !{i32 786688, metadata !74, metadata !"bi0", metadata !5, i32 902, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi0] [line 902]
!81 = metadata !{i32 786688, metadata !74, metadata !"bi1", metadata !5, i32 902, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi1] [line 902]
!82 = metadata !{i32 786688, metadata !74, metadata !"bi2", metadata !5, i32 902, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi2] [line 902]
!83 = metadata !{i32 786688, metadata !74, metadata !"br0", metadata !5, i32 902, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br0] [line 902]
!84 = metadata !{i32 786688, metadata !74, metadata !"br1", metadata !5, i32 902, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br1] [line 902]
!85 = metadata !{i32 786688, metadata !74, metadata !"br2", metadata !5, i32 902, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br2] [line 902]
!86 = metadata !{i32 786688, metadata !74, metadata !"colB0", metadata !5, i32 903, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB0] [line 903]
!87 = metadata !{i32 786688, metadata !74, metadata !"colB1", metadata !5, i32 903, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB1] [line 903]
!88 = metadata !{i32 786688, metadata !74, metadata !"colB2", metadata !5, i32 903, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB2] [line 903]
!89 = metadata !{i32 786688, metadata !74, metadata !"entriesA", metadata !5, i32 903, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesA] [line 903]
!90 = metadata !{i32 786688, metadata !74, metadata !"entriesB", metadata !5, i32 903, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesB] [line 903]
!91 = metadata !{i32 786688, metadata !74, metadata !"colstart", metadata !5, i32 904, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colstart] [line 904]
!92 = metadata !{i32 786688, metadata !74, metadata !"first", metadata !5, i32 904, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 904]
!93 = metadata !{i32 786688, metadata !74, metadata !"iloc", metadata !5, i32 904, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 904]
!94 = metadata !{i32 786688, metadata !74, metadata !"inc1", metadata !5, i32 904, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 904]
!95 = metadata !{i32 786688, metadata !74, metadata !"inc2", metadata !5, i32 904, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 904]
!96 = metadata !{i32 786688, metadata !74, metadata !"irowA", metadata !5, i32 904, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 904]
!97 = metadata !{i32 786688, metadata !74, metadata !"jcolB", metadata !5, i32 904, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolB] [line 904]
!98 = metadata !{i32 786688, metadata !74, metadata !"jj", metadata !5, i32 905, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 905]
!99 = metadata !{i32 786688, metadata !74, metadata !"kk", metadata !5, i32 905, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 905]
!100 = metadata !{i32 786688, metadata !74, metadata !"last", metadata !5, i32 905, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 905]
!101 = metadata !{i32 786688, metadata !74, metadata !"ncolB", metadata !5, i32 905, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolB] [line 905]
!102 = metadata !{i32 786688, metadata !74, metadata !"nentA", metadata !5, i32 905, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentA] [line 905]
!103 = metadata !{i32 786688, metadata !74, metadata !"nrowA", metadata !5, i32 905, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 905]
!104 = metadata !{i32 786688, metadata !74, metadata !"nrowB", metadata !5, i32 905, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowB] [line 905]
!105 = metadata !{i32 786688, metadata !74, metadata !"rloc", metadata !5, i32 905, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 905]
!106 = metadata !{i32 786688, metadata !74, metadata !"firstlocsA", metadata !5, i32 906, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocsA] [line 906]
!107 = metadata !{i32 786688, metadata !74, metadata !"sizesA", metadata !5, i32 906, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizesA] [line 906]
!108 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"complex_solveSparseColumns", metadata !"complex_solveSparseColumns", metadata !"", i32 767, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !109, i32 770} ; [ DW_TAG_subprogram ] [line 767] [local] [def] [scope 770] [complex_solveSparseColumns]
!109 = metadata !{metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146}
!110 = metadata !{i32 786689, metadata !108, metadata !"mtxA", metadata !5, i32 16777984, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 768]
!111 = metadata !{i32 786689, metadata !108, metadata !"mtxB", metadata !5, i32 33555201, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 769]
!112 = metadata !{i32 786688, metadata !108, metadata !"ai", metadata !5, i32 771, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai] [line 771]
!113 = metadata !{i32 786688, metadata !108, metadata !"ar", metadata !5, i32 771, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar] [line 771]
!114 = metadata !{i32 786688, metadata !108, metadata !"bi0", metadata !5, i32 771, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi0] [line 771]
!115 = metadata !{i32 786688, metadata !108, metadata !"bi1", metadata !5, i32 771, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi1] [line 771]
!116 = metadata !{i32 786688, metadata !108, metadata !"bi2", metadata !5, i32 771, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi2] [line 771]
!117 = metadata !{i32 786688, metadata !108, metadata !"br0", metadata !5, i32 771, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br0] [line 771]
!118 = metadata !{i32 786688, metadata !108, metadata !"br1", metadata !5, i32 771, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br1] [line 771]
!119 = metadata !{i32 786688, metadata !108, metadata !"br2", metadata !5, i32 771, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br2] [line 771]
!120 = metadata !{i32 786688, metadata !108, metadata !"isum0", metadata !5, i32 772, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isum0] [line 772]
!121 = metadata !{i32 786688, metadata !108, metadata !"isum1", metadata !5, i32 772, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isum1] [line 772]
!122 = metadata !{i32 786688, metadata !108, metadata !"isum2", metadata !5, i32 772, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isum2] [line 772]
!123 = metadata !{i32 786688, metadata !108, metadata !"rsum0", metadata !5, i32 772, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsum0] [line 772]
!124 = metadata !{i32 786688, metadata !108, metadata !"rsum1", metadata !5, i32 772, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsum1] [line 772]
!125 = metadata !{i32 786688, metadata !108, metadata !"rsum2", metadata !5, i32 772, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsum2] [line 772]
!126 = metadata !{i32 786688, metadata !108, metadata !"colB0", metadata !5, i32 773, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB0] [line 773]
!127 = metadata !{i32 786688, metadata !108, metadata !"colB1", metadata !5, i32 773, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB1] [line 773]
!128 = metadata !{i32 786688, metadata !108, metadata !"colB2", metadata !5, i32 773, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB2] [line 773]
!129 = metadata !{i32 786688, metadata !108, metadata !"entriesA", metadata !5, i32 773, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesA] [line 773]
!130 = metadata !{i32 786688, metadata !108, metadata !"entriesB", metadata !5, i32 773, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesB] [line 773]
!131 = metadata !{i32 786688, metadata !108, metadata !"ii", metadata !5, i32 774, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 774]
!132 = metadata !{i32 786688, metadata !108, metadata !"iloc", metadata !5, i32 774, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 774]
!133 = metadata !{i32 786688, metadata !108, metadata !"inc1", metadata !5, i32 774, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 774]
!134 = metadata !{i32 786688, metadata !108, metadata !"inc2", metadata !5, i32 774, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 774]
!135 = metadata !{i32 786688, metadata !108, metadata !"irowA", metadata !5, i32 774, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 774]
!136 = metadata !{i32 786688, metadata !108, metadata !"jcolB", metadata !5, i32 774, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolB] [line 774]
!137 = metadata !{i32 786688, metadata !108, metadata !"jj", metadata !5, i32 774, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 774]
!138 = metadata !{i32 786688, metadata !108, metadata !"kk", metadata !5, i32 774, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 774]
!139 = metadata !{i32 786688, metadata !108, metadata !"ncolB", metadata !5, i32 775, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolB] [line 775]
!140 = metadata !{i32 786688, metadata !108, metadata !"nentA", metadata !5, i32 775, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentA] [line 775]
!141 = metadata !{i32 786688, metadata !108, metadata !"nrowA", metadata !5, i32 775, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 775]
!142 = metadata !{i32 786688, metadata !108, metadata !"nrowB", metadata !5, i32 775, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowB] [line 775]
!143 = metadata !{i32 786688, metadata !108, metadata !"rloc", metadata !5, i32 775, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 775]
!144 = metadata !{i32 786688, metadata !108, metadata !"size", metadata !5, i32 775, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 775]
!145 = metadata !{i32 786688, metadata !108, metadata !"indicesA", metadata !5, i32 776, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indicesA] [line 776]
!146 = metadata !{i32 786688, metadata !108, metadata !"sizesA", metadata !5, i32 776, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizesA] [line 776]
!147 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"complex_solveDenseSubcolumns", metadata !"complex_solveDenseSubcolumns", metadata !"", i32 600, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !148, i32 603} ; [ DW_TAG_subprogram ] [line 600] [local] [def] [scope 603] [complex_solveDenseSubcolumns]
!148 = metadata !{metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185}
!149 = metadata !{i32 786689, metadata !147, metadata !"mtxA", metadata !5, i32 16777817, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 601]
!150 = metadata !{i32 786689, metadata !147, metadata !"mtxB", metadata !5, i32 33555034, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 602]
!151 = metadata !{i32 786688, metadata !147, metadata !"ai", metadata !5, i32 604, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai] [line 604]
!152 = metadata !{i32 786688, metadata !147, metadata !"ar", metadata !5, i32 604, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar] [line 604]
!153 = metadata !{i32 786688, metadata !147, metadata !"bi0", metadata !5, i32 604, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi0] [line 604]
!154 = metadata !{i32 786688, metadata !147, metadata !"bi1", metadata !5, i32 604, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi1] [line 604]
!155 = metadata !{i32 786688, metadata !147, metadata !"bi2", metadata !5, i32 604, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi2] [line 604]
!156 = metadata !{i32 786688, metadata !147, metadata !"br0", metadata !5, i32 604, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br0] [line 604]
!157 = metadata !{i32 786688, metadata !147, metadata !"br1", metadata !5, i32 604, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br1] [line 604]
!158 = metadata !{i32 786688, metadata !147, metadata !"br2", metadata !5, i32 604, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br2] [line 604]
!159 = metadata !{i32 786688, metadata !147, metadata !"isum0", metadata !5, i32 605, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isum0] [line 605]
!160 = metadata !{i32 786688, metadata !147, metadata !"isum1", metadata !5, i32 605, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isum1] [line 605]
!161 = metadata !{i32 786688, metadata !147, metadata !"isum2", metadata !5, i32 605, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isum2] [line 605]
!162 = metadata !{i32 786688, metadata !147, metadata !"rsum0", metadata !5, i32 605, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsum0] [line 605]
!163 = metadata !{i32 786688, metadata !147, metadata !"rsum1", metadata !5, i32 605, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsum1] [line 605]
!164 = metadata !{i32 786688, metadata !147, metadata !"rsum2", metadata !5, i32 605, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsum2] [line 605]
!165 = metadata !{i32 786688, metadata !147, metadata !"colB0", metadata !5, i32 606, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB0] [line 606]
!166 = metadata !{i32 786688, metadata !147, metadata !"colB1", metadata !5, i32 606, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB1] [line 606]
!167 = metadata !{i32 786688, metadata !147, metadata !"colB2", metadata !5, i32 606, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB2] [line 606]
!168 = metadata !{i32 786688, metadata !147, metadata !"entriesA", metadata !5, i32 606, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesA] [line 606]
!169 = metadata !{i32 786688, metadata !147, metadata !"entriesB", metadata !5, i32 606, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesB] [line 606]
!170 = metadata !{i32 786688, metadata !147, metadata !"first", metadata !5, i32 607, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 607]
!171 = metadata !{i32 786688, metadata !147, metadata !"ii", metadata !5, i32 607, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 607]
!172 = metadata !{i32 786688, metadata !147, metadata !"iloc", metadata !5, i32 607, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 607]
!173 = metadata !{i32 786688, metadata !147, metadata !"inc1", metadata !5, i32 607, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 607]
!174 = metadata !{i32 786688, metadata !147, metadata !"inc2", metadata !5, i32 607, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 607]
!175 = metadata !{i32 786688, metadata !147, metadata !"irowA", metadata !5, i32 607, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 607]
!176 = metadata !{i32 786688, metadata !147, metadata !"jcolB", metadata !5, i32 607, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolB] [line 607]
!177 = metadata !{i32 786688, metadata !147, metadata !"kk", metadata !5, i32 607, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 607]
!178 = metadata !{i32 786688, metadata !147, metadata !"last", metadata !5, i32 607, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 607]
!179 = metadata !{i32 786688, metadata !147, metadata !"ncolB", metadata !5, i32 608, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolB] [line 608]
!180 = metadata !{i32 786688, metadata !147, metadata !"nentA", metadata !5, i32 608, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentA] [line 608]
!181 = metadata !{i32 786688, metadata !147, metadata !"nrowA", metadata !5, i32 608, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 608]
!182 = metadata !{i32 786688, metadata !147, metadata !"nrowB", metadata !5, i32 608, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowB] [line 608]
!183 = metadata !{i32 786688, metadata !147, metadata !"rloc", metadata !5, i32 608, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 608]
!184 = metadata !{i32 786688, metadata !147, metadata !"firstlocsA", metadata !5, i32 609, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocsA] [line 609]
!185 = metadata !{i32 786688, metadata !147, metadata !"sizesA", metadata !5, i32 609, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizesA] [line 609]
!186 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"real_solveSparseRows", metadata !"real_solveSparseRows", metadata !"", i32 498, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !187, i32 501} ; [ DW_TAG_subprogram ] [line 498] [local] [def] [scope 501] [real_solveSparseRows]
!187 = metadata !{metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213}
!188 = metadata !{i32 786689, metadata !186, metadata !"mtxA", metadata !5, i32 16777715, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 499]
!189 = metadata !{i32 786689, metadata !186, metadata !"mtxB", metadata !5, i32 33554932, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 500]
!190 = metadata !{i32 786688, metadata !186, metadata !"Aji", metadata !5, i32 502, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Aji] [line 502]
!191 = metadata !{i32 786688, metadata !186, metadata !"Bi0", metadata !5, i32 502, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Bi0] [line 502]
!192 = metadata !{i32 786688, metadata !186, metadata !"Bi1", metadata !5, i32 502, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Bi1] [line 502]
!193 = metadata !{i32 786688, metadata !186, metadata !"Bi2", metadata !5, i32 502, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Bi2] [line 502]
!194 = metadata !{i32 786688, metadata !186, metadata !"colB0", metadata !5, i32 503, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB0] [line 503]
!195 = metadata !{i32 786688, metadata !186, metadata !"colB1", metadata !5, i32 503, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB1] [line 503]
!196 = metadata !{i32 786688, metadata !186, metadata !"colB2", metadata !5, i32 503, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB2] [line 503]
!197 = metadata !{i32 786688, metadata !186, metadata !"entriesA", metadata !5, i32 503, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesA] [line 503]
!198 = metadata !{i32 786688, metadata !186, metadata !"entriesB", metadata !5, i32 503, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesB] [line 503]
!199 = metadata !{i32 786688, metadata !186, metadata !"colstart", metadata !5, i32 504, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colstart] [line 504]
!200 = metadata !{i32 786688, metadata !186, metadata !"ii", metadata !5, i32 504, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 504]
!201 = metadata !{i32 786688, metadata !186, metadata !"inc1", metadata !5, i32 504, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 504]
!202 = metadata !{i32 786688, metadata !186, metadata !"inc2", metadata !5, i32 504, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 504]
!203 = metadata !{i32 786688, metadata !186, metadata !"jcolA", metadata !5, i32 504, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolA] [line 504]
!204 = metadata !{i32 786688, metadata !186, metadata !"jcolB", metadata !5, i32 504, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolB] [line 504]
!205 = metadata !{i32 786688, metadata !186, metadata !"jj", metadata !5, i32 505, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 505]
!206 = metadata !{i32 786688, metadata !186, metadata !"kk", metadata !5, i32 505, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 505]
!207 = metadata !{i32 786688, metadata !186, metadata !"ncolB", metadata !5, i32 505, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolB] [line 505]
!208 = metadata !{i32 786688, metadata !186, metadata !"nentA", metadata !5, i32 505, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentA] [line 505]
!209 = metadata !{i32 786688, metadata !186, metadata !"nrowA", metadata !5, i32 505, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 505]
!210 = metadata !{i32 786688, metadata !186, metadata !"nrowB", metadata !5, i32 505, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowB] [line 505]
!211 = metadata !{i32 786688, metadata !186, metadata !"size", metadata !5, i32 505, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 505]
!212 = metadata !{i32 786688, metadata !186, metadata !"indicesA", metadata !5, i32 506, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indicesA] [line 506]
!213 = metadata !{i32 786688, metadata !186, metadata !"sizesA", metadata !5, i32 506, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizesA] [line 506]
!214 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"real_solveDenseSubrows", metadata !"real_solveDenseSubrows", metadata !"", i32 377, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !215, i32 380} ; [ DW_TAG_subprogram ] [line 377] [local] [def] [scope 380] [real_solveDenseSubrows]
!215 = metadata !{metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241}
!216 = metadata !{i32 786689, metadata !214, metadata !"mtxA", metadata !5, i32 16777594, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 378]
!217 = metadata !{i32 786689, metadata !214, metadata !"mtxB", metadata !5, i32 33554811, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 379]
!218 = metadata !{i32 786688, metadata !214, metadata !"Aji", metadata !5, i32 381, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Aji] [line 381]
!219 = metadata !{i32 786688, metadata !214, metadata !"Bi0", metadata !5, i32 381, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Bi0] [line 381]
!220 = metadata !{i32 786688, metadata !214, metadata !"Bi1", metadata !5, i32 381, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Bi1] [line 381]
!221 = metadata !{i32 786688, metadata !214, metadata !"Bi2", metadata !5, i32 381, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Bi2] [line 381]
!222 = metadata !{i32 786688, metadata !214, metadata !"colB0", metadata !5, i32 382, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB0] [line 382]
!223 = metadata !{i32 786688, metadata !214, metadata !"colB1", metadata !5, i32 382, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB1] [line 382]
!224 = metadata !{i32 786688, metadata !214, metadata !"colB2", metadata !5, i32 382, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB2] [line 382]
!225 = metadata !{i32 786688, metadata !214, metadata !"entriesA", metadata !5, i32 382, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesA] [line 382]
!226 = metadata !{i32 786688, metadata !214, metadata !"entriesB", metadata !5, i32 382, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesB] [line 382]
!227 = metadata !{i32 786688, metadata !214, metadata !"colstart", metadata !5, i32 383, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colstart] [line 383]
!228 = metadata !{i32 786688, metadata !214, metadata !"first", metadata !5, i32 383, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 383]
!229 = metadata !{i32 786688, metadata !214, metadata !"inc1", metadata !5, i32 383, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 383]
!230 = metadata !{i32 786688, metadata !214, metadata !"inc2", metadata !5, i32 383, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 383]
!231 = metadata !{i32 786688, metadata !214, metadata !"irowA", metadata !5, i32 383, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 383]
!232 = metadata !{i32 786688, metadata !214, metadata !"jcolB", metadata !5, i32 383, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolB] [line 383]
!233 = metadata !{i32 786688, metadata !214, metadata !"jj", metadata !5, i32 384, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 384]
!234 = metadata !{i32 786688, metadata !214, metadata !"kk", metadata !5, i32 384, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 384]
!235 = metadata !{i32 786688, metadata !214, metadata !"last", metadata !5, i32 384, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 384]
!236 = metadata !{i32 786688, metadata !214, metadata !"ncolB", metadata !5, i32 384, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolB] [line 384]
!237 = metadata !{i32 786688, metadata !214, metadata !"nentA", metadata !5, i32 384, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentA] [line 384]
!238 = metadata !{i32 786688, metadata !214, metadata !"nrowA", metadata !5, i32 384, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 384]
!239 = metadata !{i32 786688, metadata !214, metadata !"nrowB", metadata !5, i32 384, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowB] [line 384]
!240 = metadata !{i32 786688, metadata !214, metadata !"firstlocsA", metadata !5, i32 385, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocsA] [line 385]
!241 = metadata !{i32 786688, metadata !214, metadata !"sizesA", metadata !5, i32 385, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizesA] [line 385]
!242 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"real_solveSparseColumns", metadata !"real_solveSparseColumns", metadata !"", i32 273, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !243, i32 276} ; [ DW_TAG_subprogram ] [line 273] [local] [def] [scope 276] [real_solveSparseColumns]
!243 = metadata !{metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268}
!244 = metadata !{i32 786689, metadata !242, metadata !"mtxA", metadata !5, i32 16777490, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 274]
!245 = metadata !{i32 786689, metadata !242, metadata !"mtxB", metadata !5, i32 33554707, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 275]
!246 = metadata !{i32 786688, metadata !242, metadata !"Aki", metadata !5, i32 277, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Aki] [line 277]
!247 = metadata !{i32 786688, metadata !242, metadata !"sum0", metadata !5, i32 277, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum0] [line 277]
!248 = metadata !{i32 786688, metadata !242, metadata !"sum1", metadata !5, i32 277, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum1] [line 277]
!249 = metadata !{i32 786688, metadata !242, metadata !"sum2", metadata !5, i32 277, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum2] [line 277]
!250 = metadata !{i32 786688, metadata !242, metadata !"colB0", metadata !5, i32 278, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB0] [line 278]
!251 = metadata !{i32 786688, metadata !242, metadata !"colB1", metadata !5, i32 278, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB1] [line 278]
!252 = metadata !{i32 786688, metadata !242, metadata !"colB2", metadata !5, i32 278, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB2] [line 278]
!253 = metadata !{i32 786688, metadata !242, metadata !"entriesA", metadata !5, i32 278, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesA] [line 278]
!254 = metadata !{i32 786688, metadata !242, metadata !"entriesB", metadata !5, i32 278, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesB] [line 278]
!255 = metadata !{i32 786688, metadata !242, metadata !"ii", metadata !5, i32 279, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 279]
!256 = metadata !{i32 786688, metadata !242, metadata !"inc1", metadata !5, i32 279, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 279]
!257 = metadata !{i32 786688, metadata !242, metadata !"inc2", metadata !5, i32 279, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 279]
!258 = metadata !{i32 786688, metadata !242, metadata !"irowA", metadata !5, i32 279, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 279]
!259 = metadata !{i32 786688, metadata !242, metadata !"jcolB", metadata !5, i32 279, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolB] [line 279]
!260 = metadata !{i32 786688, metadata !242, metadata !"jj", metadata !5, i32 279, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 279]
!261 = metadata !{i32 786688, metadata !242, metadata !"kk", metadata !5, i32 279, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 279]
!262 = metadata !{i32 786688, metadata !242, metadata !"ncolB", metadata !5, i32 280, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolB] [line 280]
!263 = metadata !{i32 786688, metadata !242, metadata !"nentA", metadata !5, i32 280, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentA] [line 280]
!264 = metadata !{i32 786688, metadata !242, metadata !"nrowA", metadata !5, i32 280, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 280]
!265 = metadata !{i32 786688, metadata !242, metadata !"nrowB", metadata !5, i32 280, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowB] [line 280]
!266 = metadata !{i32 786688, metadata !242, metadata !"size", metadata !5, i32 280, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 280]
!267 = metadata !{i32 786688, metadata !242, metadata !"indicesA", metadata !5, i32 281, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indicesA] [line 281]
!268 = metadata !{i32 786688, metadata !242, metadata !"sizesA", metadata !5, i32 281, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizesA] [line 281]
!269 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"real_solveDenseSubcolumns", metadata !"real_solveDenseSubcolumns", metadata !"", i32 138, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !270, i32 141} ; [ DW_TAG_subprogram ] [line 138] [local] [def] [scope 141] [real_solveDenseSubcolumns]
!270 = metadata !{metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295}
!271 = metadata !{i32 786689, metadata !269, metadata !"mtxA", metadata !5, i32 16777355, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 139]
!272 = metadata !{i32 786689, metadata !269, metadata !"mtxB", metadata !5, i32 33554572, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 140]
!273 = metadata !{i32 786688, metadata !269, metadata !"Aki", metadata !5, i32 142, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Aki] [line 142]
!274 = metadata !{i32 786688, metadata !269, metadata !"sum0", metadata !5, i32 142, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum0] [line 142]
!275 = metadata !{i32 786688, metadata !269, metadata !"sum1", metadata !5, i32 142, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum1] [line 142]
!276 = metadata !{i32 786688, metadata !269, metadata !"sum2", metadata !5, i32 142, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum2] [line 142]
!277 = metadata !{i32 786688, metadata !269, metadata !"colB0", metadata !5, i32 143, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB0] [line 143]
!278 = metadata !{i32 786688, metadata !269, metadata !"colB1", metadata !5, i32 143, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB1] [line 143]
!279 = metadata !{i32 786688, metadata !269, metadata !"colB2", metadata !5, i32 143, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB2] [line 143]
!280 = metadata !{i32 786688, metadata !269, metadata !"entriesA", metadata !5, i32 143, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesA] [line 143]
!281 = metadata !{i32 786688, metadata !269, metadata !"entriesB", metadata !5, i32 143, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entriesB] [line 143]
!282 = metadata !{i32 786688, metadata !269, metadata !"first", metadata !5, i32 144, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 144]
!283 = metadata !{i32 786688, metadata !269, metadata !"ii", metadata !5, i32 144, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 144]
!284 = metadata !{i32 786688, metadata !269, metadata !"inc1", metadata !5, i32 144, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 144]
!285 = metadata !{i32 786688, metadata !269, metadata !"inc2", metadata !5, i32 144, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 144]
!286 = metadata !{i32 786688, metadata !269, metadata !"irowA", metadata !5, i32 144, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irowA] [line 144]
!287 = metadata !{i32 786688, metadata !269, metadata !"jcolB", metadata !5, i32 144, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcolB] [line 144]
!288 = metadata !{i32 786688, metadata !269, metadata !"kk", metadata !5, i32 144, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 144]
!289 = metadata !{i32 786688, metadata !269, metadata !"last", metadata !5, i32 144, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 144]
!290 = metadata !{i32 786688, metadata !269, metadata !"ncolB", metadata !5, i32 145, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolB] [line 145]
!291 = metadata !{i32 786688, metadata !269, metadata !"nentA", metadata !5, i32 145, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentA] [line 145]
!292 = metadata !{i32 786688, metadata !269, metadata !"nrowA", metadata !5, i32 145, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 145]
!293 = metadata !{i32 786688, metadata !269, metadata !"nrowB", metadata !5, i32 145, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowB] [line 145]
!294 = metadata !{i32 786688, metadata !269, metadata !"firstlocsA", metadata !5, i32 146, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocsA] [line 146]
!295 = metadata !{i32 786688, metadata !269, metadata !"sizesA", metadata !5, i32 146, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizesA] [line 146]
!296 = metadata !{i32 36, i32 0, metadata !4, null}
!297 = metadata !{i32 37, i32 0, metadata !4, null}
!298 = metadata !{i32 44, i32 0, metadata !4, null}
!299 = metadata !{i32 45, i32 0, metadata !300, null}
!300 = metadata !{i32 786443, metadata !1, metadata !4, i32 44, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!301 = metadata !{metadata !"any pointer", metadata !302}
!302 = metadata !{metadata !"omnipotent char", metadata !303}
!303 = metadata !{metadata !"Simple C/C++ TBAA"}
!304 = metadata !{i32 47, i32 0, metadata !300, null}
!305 = metadata !{i32 49, i32 0, metadata !4, null}
!306 = metadata !{metadata !"int", metadata !302}
!307 = metadata !{i32 50, i32 0, metadata !308, null}
!308 = metadata !{i32 786443, metadata !1, metadata !4, i32 49, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!309 = metadata !{i32 52, i32 0, metadata !308, null}
!310 = metadata !{i32 54, i32 0, metadata !4, null}
!311 = metadata !{i32 55, i32 0, metadata !312, null}
!312 = metadata !{i32 786443, metadata !1, metadata !4, i32 54, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!313 = metadata !{i32 58, i32 0, metadata !312, null} ; [ DW_TAG_imported_module ]
!314 = metadata !{i32 65, i32 0, metadata !4, null}
!315 = metadata !{i32 72, i32 0, metadata !316, null}
!316 = metadata !{i32 786443, metadata !1, metadata !4, i32 65, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!317 = metadata !{i32 378, i32 0, metadata !214, metadata !318}
!318 = metadata !{i32 74, i32 0, metadata !319, null}
!319 = metadata !{i32 786443, metadata !1, metadata !316, i32 72, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!320 = metadata !{i32 786689, metadata !214, metadata !"mtxA", metadata !5, i32 16777594, metadata !8, i32 0, metadata !318} ; [ DW_TAG_arg_variable ] [mtxA] [line 378]
!321 = metadata !{i32 786689, metadata !214, metadata !"mtxB", metadata !5, i32 33554811, metadata !8, i32 0, metadata !318} ; [ DW_TAG_arg_variable ] [mtxB] [line 379]
!322 = metadata !{i32 379, i32 0, metadata !214, metadata !318}
!323 = metadata !{i32 382, i32 0, metadata !214, metadata !318}
!324 = metadata !{i32 383, i32 0, metadata !214, metadata !318}
!325 = metadata !{i32 384, i32 0, metadata !214, metadata !318}
!326 = metadata !{i32 385, i32 0, metadata !214, metadata !318}
!327 = metadata !{i32 391, i32 0, metadata !214, metadata !318}
!328 = metadata !{i32 393, i32 0, metadata !214, metadata !318}
!329 = metadata !{i32 786688, metadata !214, metadata !"entriesB", metadata !5, i32 382, metadata !22, i32 0, metadata !318} ; [ DW_TAG_auto_variable ] [entriesB] [line 382]
!330 = metadata !{i32 398, i32 0, metadata !214, metadata !318}
!331 = metadata !{i32 786688, metadata !214, metadata !"colB0", metadata !5, i32 382, metadata !22, i32 0, metadata !318} ; [ DW_TAG_auto_variable ] [colB0] [line 382]
!332 = metadata !{i32 786688, metadata !214, metadata !"jcolB", metadata !5, i32 383, metadata !14, i32 0, metadata !318} ; [ DW_TAG_auto_variable ] [jcolB] [line 383]
!333 = metadata !{i32 399, i32 0, metadata !334, metadata !318}
!334 = metadata !{i32 786443, metadata !1, metadata !214, i32 399, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!335 = metadata !{i32 786688, metadata !214, metadata !"ncolB", metadata !5, i32 384, metadata !14, i32 0, metadata !318} ; [ DW_TAG_auto_variable ] [ncolB] [line 384]
!336 = metadata !{i32 786688, metadata !214, metadata !"nrowB", metadata !5, i32 384, metadata !14, i32 0, metadata !318} ; [ DW_TAG_auto_variable ] [nrowB] [line 384]
!337 = metadata !{i32 400, i32 0, metadata !338, metadata !318}
!338 = metadata !{i32 786443, metadata !1, metadata !334, i32 399, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!339 = metadata !{i32 401, i32 0, metadata !338, metadata !318}
!340 = metadata !{i32 786688, metadata !214, metadata !"nrowA", metadata !5, i32 384, metadata !14, i32 0, metadata !318} ; [ DW_TAG_auto_variable ] [nrowA] [line 384]
!341 = metadata !{i32 406, i32 0, metadata !342, metadata !318}
!342 = metadata !{i32 786443, metadata !1, metadata !338, i32 406, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!343 = metadata !{i32 786688, metadata !214, metadata !"nentA", metadata !5, i32 384, metadata !14, i32 0, metadata !318} ; [ DW_TAG_auto_variable ] [nentA] [line 384]
!344 = metadata !{i32 786688, metadata !214, metadata !"sizesA", metadata !5, i32 385, metadata !72, i32 0, metadata !318} ; [ DW_TAG_auto_variable ] [sizesA] [line 385]
!345 = metadata !{i32 409, i32 0, metadata !346, metadata !318}
!346 = metadata !{i32 786443, metadata !1, metadata !342, i32 408, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!347 = metadata !{i32 786688, metadata !214, metadata !"firstlocsA", metadata !5, i32 385, metadata !72, i32 0, metadata !318} ; [ DW_TAG_auto_variable ] [firstlocsA] [line 385]
!348 = metadata !{i32 410, i32 0, metadata !349, metadata !318}
!349 = metadata !{i32 786443, metadata !1, metadata !346, i32 409, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!350 = metadata !{i32 786688, metadata !214, metadata !"entriesA", metadata !5, i32 382, metadata !22, i32 0, metadata !318} ; [ DW_TAG_auto_variable ] [entriesA] [line 382]
!351 = metadata !{i32 417, i32 0, metadata !352, metadata !318}
!352 = metadata !{i32 786443, metadata !1, metadata !353, i32 416, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!353 = metadata !{i32 786443, metadata !1, metadata !349, i32 416, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!354 = metadata !{i32 424, i32 0, metadata !338, metadata !318}
!355 = metadata !{i32 786688, metadata !214, metadata !"colstart", metadata !5, i32 383, metadata !14, i32 0, metadata !318} ; [ DW_TAG_auto_variable ] [colstart] [line 383]
!356 = metadata !{i32 786688, metadata !214, metadata !"first", metadata !5, i32 383, metadata !14, i32 0, metadata !318} ; [ DW_TAG_auto_variable ] [first] [line 383]
!357 = metadata !{i32 411, i32 0, metadata !349, metadata !318}
!358 = metadata !{i32 786688, metadata !214, metadata !"last", metadata !5, i32 384, metadata !14, i32 0, metadata !318} ; [ DW_TAG_auto_variable ] [last] [line 384]
!359 = metadata !{i32 412, i32 0, metadata !349, metadata !318}
!360 = metadata !{i32 413, i32 0, metadata !349, metadata !318}
!361 = metadata !{metadata !"double", metadata !302}
!362 = metadata !{i32 786688, metadata !214, metadata !"Bi0", metadata !5, i32 381, metadata !23, i32 0, metadata !318} ; [ DW_TAG_auto_variable ] [Bi0] [line 381]
!363 = metadata !{i32 414, i32 0, metadata !349, metadata !318}
!364 = metadata !{i32 786688, metadata !214, metadata !"Bi1", metadata !5, i32 381, metadata !23, i32 0, metadata !318} ; [ DW_TAG_auto_variable ] [Bi1] [line 381]
!365 = metadata !{i32 415, i32 0, metadata !349, metadata !318}
!366 = metadata !{i32 786688, metadata !214, metadata !"Bi2", metadata !5, i32 381, metadata !23, i32 0, metadata !318} ; [ DW_TAG_auto_variable ] [Bi2] [line 381]
!367 = metadata !{i32 786688, metadata !214, metadata !"jj", metadata !5, i32 384, metadata !14, i32 0, metadata !318} ; [ DW_TAG_auto_variable ] [jj] [line 384]
!368 = metadata !{i32 416, i32 0, metadata !353, metadata !318}
!369 = metadata !{i32 786688, metadata !214, metadata !"kk", metadata !5, i32 384, metadata !14, i32 0, metadata !318} ; [ DW_TAG_auto_variable ] [kk] [line 384]
!370 = metadata !{i32 786688, metadata !214, metadata !"Aji", metadata !5, i32 381, metadata !23, i32 0, metadata !318} ; [ DW_TAG_auto_variable ] [Aji] [line 381]
!371 = metadata !{i32 418, i32 0, metadata !352, metadata !318}
!372 = metadata !{i32 419, i32 0, metadata !352, metadata !318}
!373 = metadata !{i32 420, i32 0, metadata !352, metadata !318}
!374 = metadata !{i32 426, i32 0, metadata !214, metadata !318}
!375 = metadata !{i32 427, i32 0, metadata !376, metadata !318}
!376 = metadata !{i32 786443, metadata !1, metadata !214, i32 426, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!377 = metadata !{i32 432, i32 0, metadata !378, metadata !318}
!378 = metadata !{i32 786443, metadata !1, metadata !376, i32 432, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!379 = metadata !{i32 435, i32 0, metadata !380, metadata !318}
!380 = metadata !{i32 786443, metadata !1, metadata !378, i32 434, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!381 = metadata !{i32 436, i32 0, metadata !382, metadata !318}
!382 = metadata !{i32 786443, metadata !1, metadata !380, i32 435, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!383 = metadata !{i32 442, i32 0, metadata !384, metadata !318}
!384 = metadata !{i32 786443, metadata !1, metadata !385, i32 441, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!385 = metadata !{i32 786443, metadata !1, metadata !382, i32 441, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!386 = metadata !{i32 437, i32 0, metadata !382, metadata !318}
!387 = metadata !{i32 438, i32 0, metadata !382, metadata !318}
!388 = metadata !{i32 439, i32 0, metadata !382, metadata !318}
!389 = metadata !{i32 440, i32 0, metadata !382, metadata !318}
!390 = metadata !{i32 441, i32 0, metadata !385, metadata !318}
!391 = metadata !{i32 443, i32 0, metadata !384, metadata !318}
!392 = metadata !{i32 444, i32 0, metadata !384, metadata !318}
!393 = metadata !{i32 448, i32 0, metadata !214, metadata !318}
!394 = metadata !{i32 453, i32 0, metadata !395, metadata !318}
!395 = metadata !{i32 786443, metadata !1, metadata !396, i32 453, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!396 = metadata !{i32 786443, metadata !1, metadata !214, i32 448, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!397 = metadata !{i32 461, i32 0, metadata !398, metadata !318}
!398 = metadata !{i32 786443, metadata !1, metadata !395, i32 455, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!399 = metadata !{i32 462, i32 0, metadata !400, metadata !318}
!400 = metadata !{i32 786443, metadata !1, metadata !398, i32 461, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!401 = metadata !{i32 473, i32 0, metadata !402, metadata !318}
!402 = metadata !{i32 786443, metadata !1, metadata !403, i32 472, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!403 = metadata !{i32 786443, metadata !1, metadata !400, i32 472, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!404 = metadata !{i32 463, i32 0, metadata !400, metadata !318}
!405 = metadata !{i32 464, i32 0, metadata !400, metadata !318}
!406 = metadata !{i32 465, i32 0, metadata !400, metadata !318}
!407 = metadata !{i32 472, i32 0, metadata !403, metadata !318}
!408 = metadata !{i32 479, i32 0, metadata !402, metadata !318}
!409 = metadata !{i32 499, i32 0, metadata !186, metadata !410}
!410 = metadata !{i32 77, i32 0, metadata !319, null}
!411 = metadata !{i32 786689, metadata !186, metadata !"mtxA", metadata !5, i32 16777715, metadata !8, i32 0, metadata !410} ; [ DW_TAG_arg_variable ] [mtxA] [line 499]
!412 = metadata !{i32 786689, metadata !186, metadata !"mtxB", metadata !5, i32 33554932, metadata !8, i32 0, metadata !410} ; [ DW_TAG_arg_variable ] [mtxB] [line 500]
!413 = metadata !{i32 500, i32 0, metadata !186, metadata !410}
!414 = metadata !{i32 503, i32 0, metadata !186, metadata !410}
!415 = metadata !{i32 504, i32 0, metadata !186, metadata !410}
!416 = metadata !{i32 505, i32 0, metadata !186, metadata !410}
!417 = metadata !{i32 506, i32 0, metadata !186, metadata !410}
!418 = metadata !{i32 512, i32 0, metadata !186, metadata !410}
!419 = metadata !{i32 514, i32 0, metadata !186, metadata !410}
!420 = metadata !{i32 786688, metadata !186, metadata !"entriesB", metadata !5, i32 503, metadata !22, i32 0, metadata !410} ; [ DW_TAG_auto_variable ] [entriesB] [line 503]
!421 = metadata !{i32 519, i32 0, metadata !186, metadata !410}
!422 = metadata !{i32 786688, metadata !186, metadata !"colB0", metadata !5, i32 503, metadata !22, i32 0, metadata !410} ; [ DW_TAG_auto_variable ] [colB0] [line 503]
!423 = metadata !{i32 786688, metadata !186, metadata !"jcolB", metadata !5, i32 504, metadata !14, i32 0, metadata !410} ; [ DW_TAG_auto_variable ] [jcolB] [line 504]
!424 = metadata !{i32 520, i32 0, metadata !425, metadata !410}
!425 = metadata !{i32 786443, metadata !1, metadata !186, i32 520, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!426 = metadata !{i32 786688, metadata !186, metadata !"ncolB", metadata !5, i32 505, metadata !14, i32 0, metadata !410} ; [ DW_TAG_auto_variable ] [ncolB] [line 505]
!427 = metadata !{i32 786688, metadata !186, metadata !"nrowB", metadata !5, i32 505, metadata !14, i32 0, metadata !410} ; [ DW_TAG_auto_variable ] [nrowB] [line 505]
!428 = metadata !{i32 521, i32 0, metadata !429, metadata !410}
!429 = metadata !{i32 786443, metadata !1, metadata !425, i32 520, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!430 = metadata !{i32 522, i32 0, metadata !429, metadata !410}
!431 = metadata !{i32 786688, metadata !186, metadata !"nrowA", metadata !5, i32 505, metadata !14, i32 0, metadata !410} ; [ DW_TAG_auto_variable ] [nrowA] [line 505]
!432 = metadata !{i32 527, i32 0, metadata !433, metadata !410}
!433 = metadata !{i32 786443, metadata !1, metadata !429, i32 527, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!434 = metadata !{i32 786688, metadata !186, metadata !"nentA", metadata !5, i32 505, metadata !14, i32 0, metadata !410} ; [ DW_TAG_auto_variable ] [nentA] [line 505]
!435 = metadata !{i32 786688, metadata !186, metadata !"sizesA", metadata !5, i32 506, metadata !72, i32 0, metadata !410} ; [ DW_TAG_auto_variable ] [sizesA] [line 506]
!436 = metadata !{i32 530, i32 0, metadata !437, metadata !410}
!437 = metadata !{i32 786443, metadata !1, metadata !433, i32 529, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!438 = metadata !{i32 786688, metadata !186, metadata !"entriesA", metadata !5, i32 503, metadata !22, i32 0, metadata !410} ; [ DW_TAG_auto_variable ] [entriesA] [line 503]
!439 = metadata !{i32 536, i32 0, metadata !440, metadata !410}
!440 = metadata !{i32 786443, metadata !1, metadata !441, i32 535, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!441 = metadata !{i32 786443, metadata !1, metadata !442, i32 535, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!442 = metadata !{i32 786443, metadata !1, metadata !437, i32 530, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!443 = metadata !{i32 786688, metadata !186, metadata !"indicesA", metadata !5, i32 506, metadata !72, i32 0, metadata !410} ; [ DW_TAG_auto_variable ] [indicesA] [line 506]
!444 = metadata !{i32 537, i32 0, metadata !440, metadata !410}
!445 = metadata !{i32 544, i32 0, metadata !429, metadata !410}
!446 = metadata !{i32 786688, metadata !186, metadata !"colstart", metadata !5, i32 504, metadata !14, i32 0, metadata !410} ; [ DW_TAG_auto_variable ] [colstart] [line 504]
!447 = metadata !{i32 786688, metadata !186, metadata !"size", metadata !5, i32 505, metadata !14, i32 0, metadata !410} ; [ DW_TAG_auto_variable ] [size] [line 505]
!448 = metadata !{i32 531, i32 0, metadata !442, metadata !410}
!449 = metadata !{i32 532, i32 0, metadata !442, metadata !410}
!450 = metadata !{i32 786688, metadata !186, metadata !"Bi0", metadata !5, i32 502, metadata !23, i32 0, metadata !410} ; [ DW_TAG_auto_variable ] [Bi0] [line 502]
!451 = metadata !{i32 533, i32 0, metadata !442, metadata !410}
!452 = metadata !{i32 786688, metadata !186, metadata !"Bi1", metadata !5, i32 502, metadata !23, i32 0, metadata !410} ; [ DW_TAG_auto_variable ] [Bi1] [line 502]
!453 = metadata !{i32 534, i32 0, metadata !442, metadata !410}
!454 = metadata !{i32 786688, metadata !186, metadata !"Bi2", metadata !5, i32 502, metadata !23, i32 0, metadata !410} ; [ DW_TAG_auto_variable ] [Bi2] [line 502]
!455 = metadata !{i32 786688, metadata !186, metadata !"ii", metadata !5, i32 504, metadata !14, i32 0, metadata !410} ; [ DW_TAG_auto_variable ] [ii] [line 504]
!456 = metadata !{i32 535, i32 0, metadata !441, metadata !410}
!457 = metadata !{i32 786688, metadata !186, metadata !"kk", metadata !5, i32 505, metadata !14, i32 0, metadata !410} ; [ DW_TAG_auto_variable ] [kk] [line 505]
!458 = metadata !{i32 786688, metadata !186, metadata !"Aji", metadata !5, i32 502, metadata !23, i32 0, metadata !410} ; [ DW_TAG_auto_variable ] [Aji] [line 502]
!459 = metadata !{i32 786688, metadata !186, metadata !"jj", metadata !5, i32 505, metadata !14, i32 0, metadata !410} ; [ DW_TAG_auto_variable ] [jj] [line 505]
!460 = metadata !{i32 538, i32 0, metadata !440, metadata !410}
!461 = metadata !{i32 539, i32 0, metadata !440, metadata !410}
!462 = metadata !{i32 540, i32 0, metadata !440, metadata !410}
!463 = metadata !{i32 546, i32 0, metadata !186, metadata !410}
!464 = metadata !{i32 547, i32 0, metadata !465, metadata !410}
!465 = metadata !{i32 786443, metadata !1, metadata !186, i32 546, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!466 = metadata !{i32 552, i32 0, metadata !467, metadata !410}
!467 = metadata !{i32 786443, metadata !1, metadata !465, i32 552, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!468 = metadata !{i32 555, i32 0, metadata !469, metadata !410}
!469 = metadata !{i32 786443, metadata !1, metadata !467, i32 554, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!470 = metadata !{i32 560, i32 0, metadata !471, metadata !410}
!471 = metadata !{i32 786443, metadata !1, metadata !472, i32 559, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!472 = metadata !{i32 786443, metadata !1, metadata !473, i32 559, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!473 = metadata !{i32 786443, metadata !1, metadata !469, i32 555, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!474 = metadata !{i32 561, i32 0, metadata !471, metadata !410}
!475 = metadata !{i32 556, i32 0, metadata !473, metadata !410}
!476 = metadata !{i32 557, i32 0, metadata !473, metadata !410}
!477 = metadata !{i32 558, i32 0, metadata !473, metadata !410}
!478 = metadata !{i32 559, i32 0, metadata !472, metadata !410}
!479 = metadata !{i32 562, i32 0, metadata !471, metadata !410}
!480 = metadata !{i32 563, i32 0, metadata !471, metadata !410}
!481 = metadata !{i32 567, i32 0, metadata !186, metadata !410}
!482 = metadata !{i32 572, i32 0, metadata !483, metadata !410}
!483 = metadata !{i32 786443, metadata !1, metadata !484, i32 572, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!484 = metadata !{i32 786443, metadata !1, metadata !186, i32 567, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!485 = metadata !{i32 575, i32 0, metadata !486, metadata !410}
!486 = metadata !{i32 786443, metadata !1, metadata !483, i32 574, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!487 = metadata !{i32 579, i32 0, metadata !488, metadata !410}
!488 = metadata !{i32 786443, metadata !1, metadata !489, i32 578, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!489 = metadata !{i32 786443, metadata !1, metadata !490, i32 578, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!490 = metadata !{i32 786443, metadata !1, metadata !486, i32 575, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!491 = metadata !{i32 580, i32 0, metadata !488, metadata !410}
!492 = metadata !{i32 576, i32 0, metadata !490, metadata !410}
!493 = metadata !{i32 577, i32 0, metadata !490, metadata !410}
!494 = metadata !{i32 578, i32 0, metadata !489, metadata !410}
!495 = metadata !{i32 581, i32 0, metadata !488, metadata !410}
!496 = metadata !{i32 139, i32 0, metadata !269, metadata !497}
!497 = metadata !{i32 80, i32 0, metadata !319, null}
!498 = metadata !{i32 786689, metadata !269, metadata !"mtxA", metadata !5, i32 16777355, metadata !8, i32 0, metadata !497} ; [ DW_TAG_arg_variable ] [mtxA] [line 139]
!499 = metadata !{i32 786689, metadata !269, metadata !"mtxB", metadata !5, i32 33554572, metadata !8, i32 0, metadata !497} ; [ DW_TAG_arg_variable ] [mtxB] [line 140]
!500 = metadata !{i32 140, i32 0, metadata !269, metadata !497}
!501 = metadata !{i32 143, i32 0, metadata !269, metadata !497}
!502 = metadata !{i32 144, i32 0, metadata !269, metadata !497}
!503 = metadata !{i32 145, i32 0, metadata !269, metadata !497}
!504 = metadata !{i32 146, i32 0, metadata !269, metadata !497}
!505 = metadata !{i32 152, i32 0, metadata !269, metadata !497}
!506 = metadata !{i32 154, i32 0, metadata !269, metadata !497}
!507 = metadata !{i32 786688, metadata !269, metadata !"entriesB", metadata !5, i32 143, metadata !22, i32 0, metadata !497} ; [ DW_TAG_auto_variable ] [entriesB] [line 143]
!508 = metadata !{i32 159, i32 0, metadata !269, metadata !497}
!509 = metadata !{i32 786688, metadata !269, metadata !"colB0", metadata !5, i32 143, metadata !22, i32 0, metadata !497} ; [ DW_TAG_auto_variable ] [colB0] [line 143]
!510 = metadata !{i32 786688, metadata !269, metadata !"jcolB", metadata !5, i32 144, metadata !14, i32 0, metadata !497} ; [ DW_TAG_auto_variable ] [jcolB] [line 144]
!511 = metadata !{i32 160, i32 0, metadata !512, metadata !497}
!512 = metadata !{i32 786443, metadata !1, metadata !269, i32 160, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!513 = metadata !{i32 786688, metadata !269, metadata !"ncolB", metadata !5, i32 145, metadata !14, i32 0, metadata !497} ; [ DW_TAG_auto_variable ] [ncolB] [line 145]
!514 = metadata !{i32 786688, metadata !269, metadata !"nrowB", metadata !5, i32 145, metadata !14, i32 0, metadata !497} ; [ DW_TAG_auto_variable ] [nrowB] [line 145]
!515 = metadata !{i32 161, i32 0, metadata !516, metadata !497}
!516 = metadata !{i32 786443, metadata !1, metadata !512, i32 160, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!517 = metadata !{i32 162, i32 0, metadata !516, metadata !497}
!518 = metadata !{i32 786688, metadata !269, metadata !"nrowA", metadata !5, i32 145, metadata !14, i32 0, metadata !497} ; [ DW_TAG_auto_variable ] [nrowA] [line 145]
!519 = metadata !{i32 167, i32 0, metadata !520, metadata !497}
!520 = metadata !{i32 786443, metadata !1, metadata !516, i32 167, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!521 = metadata !{i32 200, i32 0, metadata !516, metadata !497}
!522 = metadata !{i32 786688, metadata !269, metadata !"sizesA", metadata !5, i32 146, metadata !72, i32 0, metadata !497} ; [ DW_TAG_auto_variable ] [sizesA] [line 146]
!523 = metadata !{i32 172, i32 0, metadata !524, metadata !497}
!524 = metadata !{i32 786443, metadata !1, metadata !520, i32 167, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!525 = metadata !{i32 786688, metadata !269, metadata !"firstlocsA", metadata !5, i32 146, metadata !72, i32 0, metadata !497} ; [ DW_TAG_auto_variable ] [firstlocsA] [line 146]
!526 = metadata !{i32 173, i32 0, metadata !527, metadata !497}
!527 = metadata !{i32 786443, metadata !1, metadata !524, i32 172, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!528 = metadata !{i32 786688, metadata !269, metadata !"entriesA", metadata !5, i32 143, metadata !22, i32 0, metadata !497} ; [ DW_TAG_auto_variable ] [entriesA] [line 143]
!529 = metadata !{i32 181, i32 0, metadata !530, metadata !497}
!530 = metadata !{i32 786443, metadata !1, metadata !531, i32 180, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!531 = metadata !{i32 786443, metadata !1, metadata !527, i32 180, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!532 = metadata !{i32 786688, metadata !269, metadata !"kk", metadata !5, i32 144, metadata !14, i32 0, metadata !497} ; [ DW_TAG_auto_variable ] [kk] [line 144]
!533 = metadata !{i32 786688, metadata !269, metadata !"irowA", metadata !5, i32 144, metadata !14, i32 0, metadata !497} ; [ DW_TAG_auto_variable ] [irowA] [line 144]
!534 = metadata !{i32 786688, metadata !269, metadata !"first", metadata !5, i32 144, metadata !14, i32 0, metadata !497} ; [ DW_TAG_auto_variable ] [first] [line 144]
!535 = metadata !{i32 174, i32 0, metadata !527, metadata !497}
!536 = metadata !{i32 786688, metadata !269, metadata !"last", metadata !5, i32 144, metadata !14, i32 0, metadata !497} ; [ DW_TAG_auto_variable ] [last] [line 144]
!537 = metadata !{double 0.000000e+00}
!538 = metadata !{i32 786688, metadata !269, metadata !"sum2", metadata !5, i32 142, metadata !23, i32 0, metadata !497} ; [ DW_TAG_auto_variable ] [sum2] [line 142]
!539 = metadata !{i32 179, i32 0, metadata !527, metadata !497}
!540 = metadata !{i32 786688, metadata !269, metadata !"sum1", metadata !5, i32 142, metadata !23, i32 0, metadata !497} ; [ DW_TAG_auto_variable ] [sum1] [line 142]
!541 = metadata !{i32 786688, metadata !269, metadata !"sum0", metadata !5, i32 142, metadata !23, i32 0, metadata !497} ; [ DW_TAG_auto_variable ] [sum0] [line 142]
!542 = metadata !{i32 786688, metadata !269, metadata !"ii", metadata !5, i32 144, metadata !14, i32 0, metadata !497} ; [ DW_TAG_auto_variable ] [ii] [line 144]
!543 = metadata !{i32 180, i32 0, metadata !531, metadata !497}
!544 = metadata !{i32 786688, metadata !269, metadata !"Aki", metadata !5, i32 142, metadata !23, i32 0, metadata !497} ; [ DW_TAG_auto_variable ] [Aki] [line 142]
!545 = metadata !{i32 187, i32 0, metadata !530, metadata !497}
!546 = metadata !{i32 188, i32 0, metadata !530, metadata !497}
!547 = metadata !{i32 189, i32 0, metadata !530, metadata !497}
!548 = metadata !{i32 191, i32 0, metadata !527, metadata !497}
!549 = metadata !{i32 192, i32 0, metadata !527, metadata !497}
!550 = metadata !{i32 193, i32 0, metadata !527, metadata !497}
!551 = metadata !{i32 194, i32 0, metadata !527, metadata !497}
!552 = metadata !{i32 202, i32 0, metadata !269, metadata !497}
!553 = metadata !{i32 203, i32 0, metadata !554, metadata !497}
!554 = metadata !{i32 786443, metadata !1, metadata !269, i32 202, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!555 = metadata !{i32 208, i32 0, metadata !556, metadata !497}
!556 = metadata !{i32 786443, metadata !1, metadata !554, i32 208, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!557 = metadata !{i32 209, i32 0, metadata !558, metadata !497}
!558 = metadata !{i32 786443, metadata !1, metadata !556, i32 208, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!559 = metadata !{i32 210, i32 0, metadata !560, metadata !497}
!560 = metadata !{i32 786443, metadata !1, metadata !558, i32 209, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!561 = metadata !{i32 214, i32 0, metadata !562, metadata !497}
!562 = metadata !{i32 786443, metadata !1, metadata !563, i32 213, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!563 = metadata !{i32 786443, metadata !1, metadata !560, i32 213, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!564 = metadata !{i32 211, i32 0, metadata !560, metadata !497}
!565 = metadata !{i32 212, i32 0, metadata !560, metadata !497}
!566 = metadata !{i32 213, i32 0, metadata !563, metadata !497}
!567 = metadata !{i32 215, i32 0, metadata !562, metadata !497}
!568 = metadata !{i32 216, i32 0, metadata !562, metadata !497}
!569 = metadata !{i32 218, i32 0, metadata !560, metadata !497}
!570 = metadata !{i32 219, i32 0, metadata !560, metadata !497}
!571 = metadata !{i32 220, i32 0, metadata !560, metadata !497}
!572 = metadata !{i32 222, i32 0, metadata !269, metadata !497}
!573 = metadata !{i32 227, i32 0, metadata !574, metadata !497}
!574 = metadata !{i32 786443, metadata !1, metadata !575, i32 227, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!575 = metadata !{i32 786443, metadata !1, metadata !269, i32 222, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!576 = metadata !{i32 233, i32 0, metadata !577, metadata !497}
!577 = metadata !{i32 786443, metadata !1, metadata !574, i32 227, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!578 = metadata !{i32 234, i32 0, metadata !579, metadata !497}
!579 = metadata !{i32 786443, metadata !1, metadata !577, i32 233, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!580 = metadata !{i32 242, i32 0, metadata !581, metadata !497}
!581 = metadata !{i32 786443, metadata !1, metadata !582, i32 241, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!582 = metadata !{i32 786443, metadata !1, metadata !579, i32 241, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!583 = metadata !{i32 235, i32 0, metadata !579, metadata !497}
!584 = metadata !{i32 240, i32 0, metadata !579, metadata !497}
!585 = metadata !{i32 241, i32 0, metadata !582, metadata !497}
!586 = metadata !{i32 248, i32 0, metadata !581, metadata !497}
!587 = metadata !{i32 250, i32 0, metadata !579, metadata !497}
!588 = metadata !{i32 256, i32 0, metadata !579, metadata !497}
!589 = metadata !{i32 274, i32 0, metadata !242, metadata !590}
!590 = metadata !{i32 83, i32 0, metadata !319, null}
!591 = metadata !{i32 786689, metadata !242, metadata !"mtxA", metadata !5, i32 16777490, metadata !8, i32 0, metadata !590} ; [ DW_TAG_arg_variable ] [mtxA] [line 274]
!592 = metadata !{i32 786689, metadata !242, metadata !"mtxB", metadata !5, i32 33554707, metadata !8, i32 0, metadata !590} ; [ DW_TAG_arg_variable ] [mtxB] [line 275]
!593 = metadata !{i32 275, i32 0, metadata !242, metadata !590}
!594 = metadata !{i32 278, i32 0, metadata !242, metadata !590}
!595 = metadata !{i32 279, i32 0, metadata !242, metadata !590}
!596 = metadata !{i32 280, i32 0, metadata !242, metadata !590}
!597 = metadata !{i32 281, i32 0, metadata !242, metadata !590}
!598 = metadata !{i32 287, i32 0, metadata !242, metadata !590}
!599 = metadata !{i32 289, i32 0, metadata !242, metadata !590}
!600 = metadata !{i32 786688, metadata !242, metadata !"entriesB", metadata !5, i32 278, metadata !22, i32 0, metadata !590} ; [ DW_TAG_auto_variable ] [entriesB] [line 278]
!601 = metadata !{i32 290, i32 0, metadata !242, metadata !590}
!602 = metadata !{i32 786688, metadata !242, metadata !"colB0", metadata !5, i32 278, metadata !22, i32 0, metadata !590} ; [ DW_TAG_auto_variable ] [colB0] [line 278]
!603 = metadata !{i32 786688, metadata !242, metadata !"jcolB", metadata !5, i32 279, metadata !14, i32 0, metadata !590} ; [ DW_TAG_auto_variable ] [jcolB] [line 279]
!604 = metadata !{i32 291, i32 0, metadata !605, metadata !590}
!605 = metadata !{i32 786443, metadata !1, metadata !242, i32 291, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!606 = metadata !{i32 786688, metadata !242, metadata !"ncolB", metadata !5, i32 280, metadata !14, i32 0, metadata !590} ; [ DW_TAG_auto_variable ] [ncolB] [line 280]
!607 = metadata !{i32 786688, metadata !242, metadata !"nrowB", metadata !5, i32 280, metadata !14, i32 0, metadata !590} ; [ DW_TAG_auto_variable ] [nrowB] [line 280]
!608 = metadata !{i32 292, i32 0, metadata !609, metadata !590}
!609 = metadata !{i32 786443, metadata !1, metadata !605, i32 291, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!610 = metadata !{i32 293, i32 0, metadata !609, metadata !590}
!611 = metadata !{i32 786688, metadata !242, metadata !"nrowA", metadata !5, i32 280, metadata !14, i32 0, metadata !590} ; [ DW_TAG_auto_variable ] [nrowA] [line 280]
!612 = metadata !{i32 298, i32 0, metadata !613, metadata !590}
!613 = metadata !{i32 786443, metadata !1, metadata !609, i32 298, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!614 = metadata !{i32 319, i32 0, metadata !609, metadata !590}
!615 = metadata !{i32 786688, metadata !242, metadata !"sizesA", metadata !5, i32 281, metadata !72, i32 0, metadata !590} ; [ DW_TAG_auto_variable ] [sizesA] [line 281]
!616 = metadata !{i32 299, i32 0, metadata !617, metadata !590}
!617 = metadata !{i32 786443, metadata !1, metadata !613, i32 298, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!618 = metadata !{i32 786688, metadata !242, metadata !"entriesA", metadata !5, i32 278, metadata !22, i32 0, metadata !590} ; [ DW_TAG_auto_variable ] [entriesA] [line 278]
!619 = metadata !{i32 302, i32 0, metadata !620, metadata !590}
!620 = metadata !{i32 786443, metadata !1, metadata !621, i32 301, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!621 = metadata !{i32 786443, metadata !1, metadata !622, i32 301, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!622 = metadata !{i32 786443, metadata !1, metadata !617, i32 299, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!623 = metadata !{i32 786688, metadata !242, metadata !"indicesA", metadata !5, i32 281, metadata !72, i32 0, metadata !590} ; [ DW_TAG_auto_variable ] [indicesA] [line 281]
!624 = metadata !{i32 303, i32 0, metadata !620, metadata !590}
!625 = metadata !{i32 786688, metadata !242, metadata !"kk", metadata !5, i32 279, metadata !14, i32 0, metadata !590} ; [ DW_TAG_auto_variable ] [kk] [line 279]
!626 = metadata !{i32 786688, metadata !242, metadata !"irowA", metadata !5, i32 279, metadata !14, i32 0, metadata !590} ; [ DW_TAG_auto_variable ] [irowA] [line 279]
!627 = metadata !{i32 786688, metadata !242, metadata !"size", metadata !5, i32 280, metadata !14, i32 0, metadata !590} ; [ DW_TAG_auto_variable ] [size] [line 280]
!628 = metadata !{i32 304, i32 0, metadata !620, metadata !590}
!629 = metadata !{i32 301, i32 0, metadata !621, metadata !590}
!630 = metadata !{i32 786688, metadata !242, metadata !"Aki", metadata !5, i32 277, metadata !23, i32 0, metadata !590} ; [ DW_TAG_auto_variable ] [Aki] [line 277]
!631 = metadata !{i32 786688, metadata !242, metadata !"jj", metadata !5, i32 279, metadata !14, i32 0, metadata !590} ; [ DW_TAG_auto_variable ] [jj] [line 279]
!632 = metadata !{i32 305, i32 0, metadata !633, metadata !590}
!633 = metadata !{i32 786443, metadata !1, metadata !620, i32 304, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!634 = metadata !{i32 308, i32 0, metadata !633, metadata !590}
!635 = metadata !{i32 310, i32 0, metadata !620, metadata !590}
!636 = metadata !{i32 786688, metadata !242, metadata !"sum0", metadata !5, i32 277, metadata !23, i32 0, metadata !590} ; [ DW_TAG_auto_variable ] [sum0] [line 277]
!637 = metadata !{i32 311, i32 0, metadata !620, metadata !590}
!638 = metadata !{i32 786688, metadata !242, metadata !"sum1", metadata !5, i32 277, metadata !23, i32 0, metadata !590} ; [ DW_TAG_auto_variable ] [sum1] [line 277]
!639 = metadata !{i32 312, i32 0, metadata !620, metadata !590}
!640 = metadata !{i32 786688, metadata !242, metadata !"sum2", metadata !5, i32 277, metadata !23, i32 0, metadata !590} ; [ DW_TAG_auto_variable ] [sum2] [line 277]
!641 = metadata !{i32 786688, metadata !242, metadata !"ii", metadata !5, i32 279, metadata !14, i32 0, metadata !590} ; [ DW_TAG_auto_variable ] [ii] [line 279]
!642 = metadata !{i32 314, i32 0, metadata !622, metadata !590}
!643 = metadata !{i32 315, i32 0, metadata !622, metadata !590}
!644 = metadata !{i32 316, i32 0, metadata !622, metadata !590}
!645 = metadata !{i32 317, i32 0, metadata !622, metadata !590}
!646 = metadata !{i32 321, i32 0, metadata !242, metadata !590}
!647 = metadata !{i32 322, i32 0, metadata !648, metadata !590}
!648 = metadata !{i32 786443, metadata !1, metadata !242, i32 321, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!649 = metadata !{i32 327, i32 0, metadata !650, metadata !590}
!650 = metadata !{i32 786443, metadata !1, metadata !648, i32 327, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!651 = metadata !{i32 328, i32 0, metadata !652, metadata !590}
!652 = metadata !{i32 786443, metadata !1, metadata !650, i32 327, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!653 = metadata !{i32 331, i32 0, metadata !654, metadata !590}
!654 = metadata !{i32 786443, metadata !1, metadata !655, i32 330, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!655 = metadata !{i32 786443, metadata !1, metadata !656, i32 330, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!656 = metadata !{i32 786443, metadata !1, metadata !652, i32 328, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!657 = metadata !{i32 332, i32 0, metadata !654, metadata !590}
!658 = metadata !{i32 330, i32 0, metadata !655, metadata !590}
!659 = metadata !{i32 333, i32 0, metadata !654, metadata !590}
!660 = metadata !{i32 334, i32 0, metadata !654, metadata !590}
!661 = metadata !{i32 336, i32 0, metadata !656, metadata !590}
!662 = metadata !{i32 337, i32 0, metadata !656, metadata !590}
!663 = metadata !{i32 338, i32 0, metadata !656, metadata !590}
!664 = metadata !{i32 340, i32 0, metadata !242, metadata !590}
!665 = metadata !{i32 345, i32 0, metadata !666, metadata !590}
!666 = metadata !{i32 786443, metadata !1, metadata !667, i32 345, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!667 = metadata !{i32 786443, metadata !1, metadata !242, i32 340, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!668 = metadata !{i32 346, i32 0, metadata !669, metadata !590}
!669 = metadata !{i32 786443, metadata !1, metadata !666, i32 345, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!670 = metadata !{i32 350, i32 0, metadata !671, metadata !590}
!671 = metadata !{i32 786443, metadata !1, metadata !672, i32 348, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!672 = metadata !{i32 786443, metadata !1, metadata !673, i32 348, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!673 = metadata !{i32 786443, metadata !1, metadata !669, i32 346, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!674 = metadata !{i32 349, i32 0, metadata !671, metadata !590}
!675 = metadata !{i32 348, i32 0, metadata !672, metadata !590}
!676 = metadata !{i32 351, i32 0, metadata !671, metadata !590}
!677 = metadata !{i32 352, i32 0, metadata !678, metadata !590}
!678 = metadata !{i32 786443, metadata !1, metadata !671, i32 351, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!679 = metadata !{i32 355, i32 0, metadata !678, metadata !590}
!680 = metadata !{i32 357, i32 0, metadata !671, metadata !590}
!681 = metadata !{i32 359, i32 0, metadata !673, metadata !590}
!682 = metadata !{i32 360, i32 0, metadata !673, metadata !590}
!683 = metadata !{i32 86, i32 0, metadata !319, null}
!684 = metadata !{i32 88, i32 0, metadata !319, null}
!685 = metadata !{i32 98, i32 0, metadata !316, null}
!686 = metadata !{i32 899, i32 0, metadata !74, metadata !687}
!687 = metadata !{i32 100, i32 0, metadata !688, null}
!688 = metadata !{i32 786443, metadata !1, metadata !316, i32 98, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!689 = metadata !{i32 786689, metadata !74, metadata !"mtxA", metadata !5, i32 16778115, metadata !8, i32 0, metadata !687} ; [ DW_TAG_arg_variable ] [mtxA] [line 899]
!690 = metadata !{i32 786689, metadata !74, metadata !"mtxB", metadata !5, i32 33555332, metadata !8, i32 0, metadata !687} ; [ DW_TAG_arg_variable ] [mtxB] [line 900]
!691 = metadata !{i32 900, i32 0, metadata !74, metadata !687}
!692 = metadata !{i32 903, i32 0, metadata !74, metadata !687}
!693 = metadata !{i32 904, i32 0, metadata !74, metadata !687}
!694 = metadata !{i32 905, i32 0, metadata !74, metadata !687}
!695 = metadata !{i32 906, i32 0, metadata !74, metadata !687}
!696 = metadata !{i32 912, i32 0, metadata !74, metadata !687}
!697 = metadata !{i32 914, i32 0, metadata !74, metadata !687}
!698 = metadata !{i32 786688, metadata !74, metadata !"entriesB", metadata !5, i32 903, metadata !22, i32 0, metadata !687} ; [ DW_TAG_auto_variable ] [entriesB] [line 903]
!699 = metadata !{i32 919, i32 0, metadata !74, metadata !687}
!700 = metadata !{i32 786688, metadata !74, metadata !"colB0", metadata !5, i32 903, metadata !22, i32 0, metadata !687} ; [ DW_TAG_auto_variable ] [colB0] [line 903]
!701 = metadata !{i32 786688, metadata !74, metadata !"jcolB", metadata !5, i32 904, metadata !14, i32 0, metadata !687} ; [ DW_TAG_auto_variable ] [jcolB] [line 904]
!702 = metadata !{i32 920, i32 0, metadata !703, metadata !687}
!703 = metadata !{i32 786443, metadata !1, metadata !74, i32 920, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!704 = metadata !{i32 786688, metadata !74, metadata !"ncolB", metadata !5, i32 905, metadata !14, i32 0, metadata !687} ; [ DW_TAG_auto_variable ] [ncolB] [line 905]
!705 = metadata !{i32 786688, metadata !74, metadata !"nrowB", metadata !5, i32 905, metadata !14, i32 0, metadata !687} ; [ DW_TAG_auto_variable ] [nrowB] [line 905]
!706 = metadata !{i32 921, i32 0, metadata !707, metadata !687}
!707 = metadata !{i32 786443, metadata !1, metadata !703, i32 920, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!708 = metadata !{i32 922, i32 0, metadata !707, metadata !687}
!709 = metadata !{i32 786688, metadata !74, metadata !"nrowA", metadata !5, i32 905, metadata !14, i32 0, metadata !687} ; [ DW_TAG_auto_variable ] [nrowA] [line 905]
!710 = metadata !{i32 927, i32 0, metadata !711, metadata !687}
!711 = metadata !{i32 786443, metadata !1, metadata !707, i32 927, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!712 = metadata !{i32 786688, metadata !74, metadata !"nentA", metadata !5, i32 905, metadata !14, i32 0, metadata !687} ; [ DW_TAG_auto_variable ] [nentA] [line 905]
!713 = metadata !{i32 786688, metadata !74, metadata !"sizesA", metadata !5, i32 906, metadata !72, i32 0, metadata !687} ; [ DW_TAG_auto_variable ] [sizesA] [line 906]
!714 = metadata !{i32 930, i32 0, metadata !715, metadata !687}
!715 = metadata !{i32 786443, metadata !1, metadata !711, i32 929, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!716 = metadata !{i32 786688, metadata !74, metadata !"firstlocsA", metadata !5, i32 906, metadata !72, i32 0, metadata !687} ; [ DW_TAG_auto_variable ] [firstlocsA] [line 906]
!717 = metadata !{i32 931, i32 0, metadata !718, metadata !687}
!718 = metadata !{i32 786443, metadata !1, metadata !715, i32 930, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!719 = metadata !{i32 786688, metadata !74, metadata !"entriesA", metadata !5, i32 903, metadata !22, i32 0, metadata !687} ; [ DW_TAG_auto_variable ] [entriesA] [line 903]
!720 = metadata !{i32 940, i32 0, metadata !721, metadata !687}
!721 = metadata !{i32 786443, metadata !1, metadata !722, i32 939, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!722 = metadata !{i32 786443, metadata !1, metadata !718, i32 939, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!723 = metadata !{i32 953, i32 0, metadata !707, metadata !687}
!724 = metadata !{i32 786688, metadata !74, metadata !"colstart", metadata !5, i32 904, metadata !14, i32 0, metadata !687} ; [ DW_TAG_auto_variable ] [colstart] [line 904]
!725 = metadata !{i32 786688, metadata !74, metadata !"first", metadata !5, i32 904, metadata !14, i32 0, metadata !687} ; [ DW_TAG_auto_variable ] [first] [line 904]
!726 = metadata !{i32 932, i32 0, metadata !718, metadata !687}
!727 = metadata !{i32 786688, metadata !74, metadata !"last", metadata !5, i32 905, metadata !14, i32 0, metadata !687} ; [ DW_TAG_auto_variable ] [last] [line 905]
!728 = metadata !{i32 933, i32 0, metadata !718, metadata !687}
!729 = metadata !{i32 934, i32 0, metadata !718, metadata !687}
!730 = metadata !{i32 786688, metadata !74, metadata !"rloc", metadata !5, i32 905, metadata !14, i32 0, metadata !687} ; [ DW_TAG_auto_variable ] [rloc] [line 905]
!731 = metadata !{i32 935, i32 0, metadata !718, metadata !687}
!732 = metadata !{i32 786688, metadata !74, metadata !"iloc", metadata !5, i32 904, metadata !14, i32 0, metadata !687} ; [ DW_TAG_auto_variable ] [iloc] [line 904]
!733 = metadata !{i32 936, i32 0, metadata !718, metadata !687}
!734 = metadata !{i32 786688, metadata !74, metadata !"br0", metadata !5, i32 902, metadata !23, i32 0, metadata !687} ; [ DW_TAG_auto_variable ] [br0] [line 902]
!735 = metadata !{i32 786688, metadata !74, metadata !"bi0", metadata !5, i32 902, metadata !23, i32 0, metadata !687} ; [ DW_TAG_auto_variable ] [bi0] [line 902]
!736 = metadata !{i32 937, i32 0, metadata !718, metadata !687}
!737 = metadata !{i32 786688, metadata !74, metadata !"br1", metadata !5, i32 902, metadata !23, i32 0, metadata !687} ; [ DW_TAG_auto_variable ] [br1] [line 902]
!738 = metadata !{i32 786688, metadata !74, metadata !"bi1", metadata !5, i32 902, metadata !23, i32 0, metadata !687} ; [ DW_TAG_auto_variable ] [bi1] [line 902]
!739 = metadata !{i32 938, i32 0, metadata !718, metadata !687}
!740 = metadata !{i32 786688, metadata !74, metadata !"br2", metadata !5, i32 902, metadata !23, i32 0, metadata !687} ; [ DW_TAG_auto_variable ] [br2] [line 902]
!741 = metadata !{i32 786688, metadata !74, metadata !"bi2", metadata !5, i32 902, metadata !23, i32 0, metadata !687} ; [ DW_TAG_auto_variable ] [bi2] [line 902]
!742 = metadata !{i32 786688, metadata !74, metadata !"jj", metadata !5, i32 905, metadata !14, i32 0, metadata !687} ; [ DW_TAG_auto_variable ] [jj] [line 905]
!743 = metadata !{i32 939, i32 0, metadata !722, metadata !687}
!744 = metadata !{i32 786688, metadata !74, metadata !"kk", metadata !5, i32 905, metadata !14, i32 0, metadata !687} ; [ DW_TAG_auto_variable ] [kk] [line 905]
!745 = metadata !{i32 786688, metadata !74, metadata !"ar", metadata !5, i32 902, metadata !23, i32 0, metadata !687} ; [ DW_TAG_auto_variable ] [ar] [line 902]
!746 = metadata !{i32 941, i32 0, metadata !721, metadata !687}
!747 = metadata !{i32 786688, metadata !74, metadata !"ai", metadata !5, i32 902, metadata !23, i32 0, metadata !687} ; [ DW_TAG_auto_variable ] [ai] [line 902]
!748 = metadata !{i32 942, i32 0, metadata !721, metadata !687}
!749 = metadata !{i32 943, i32 0, metadata !721, metadata !687}
!750 = metadata !{i32 944, i32 0, metadata !721, metadata !687}
!751 = metadata !{i32 945, i32 0, metadata !721, metadata !687}
!752 = metadata !{i32 946, i32 0, metadata !721, metadata !687}
!753 = metadata !{i32 947, i32 0, metadata !721, metadata !687}
!754 = metadata !{i32 948, i32 0, metadata !721, metadata !687}
!755 = metadata !{i32 949, i32 0, metadata !721, metadata !687}
!756 = metadata !{i32 955, i32 0, metadata !74, metadata !687}
!757 = metadata !{i32 956, i32 0, metadata !758, metadata !687}
!758 = metadata !{i32 786443, metadata !1, metadata !74, i32 955, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!759 = metadata !{i32 961, i32 0, metadata !760, metadata !687}
!760 = metadata !{i32 786443, metadata !1, metadata !758, i32 961, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!761 = metadata !{i32 964, i32 0, metadata !762, metadata !687}
!762 = metadata !{i32 786443, metadata !1, metadata !760, i32 963, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!763 = metadata !{i32 965, i32 0, metadata !764, metadata !687}
!764 = metadata !{i32 786443, metadata !1, metadata !762, i32 964, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!765 = metadata !{i32 973, i32 0, metadata !766, metadata !687}
!766 = metadata !{i32 786443, metadata !1, metadata !767, i32 972, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!767 = metadata !{i32 786443, metadata !1, metadata !764, i32 972, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!768 = metadata !{i32 966, i32 0, metadata !764, metadata !687}
!769 = metadata !{i32 967, i32 0, metadata !764, metadata !687}
!770 = metadata !{i32 968, i32 0, metadata !764, metadata !687}
!771 = metadata !{i32 969, i32 0, metadata !764, metadata !687}
!772 = metadata !{i32 970, i32 0, metadata !764, metadata !687}
!773 = metadata !{i32 971, i32 0, metadata !764, metadata !687}
!774 = metadata !{i32 972, i32 0, metadata !767, metadata !687}
!775 = metadata !{i32 974, i32 0, metadata !766, metadata !687}
!776 = metadata !{i32 975, i32 0, metadata !766, metadata !687}
!777 = metadata !{i32 976, i32 0, metadata !766, metadata !687}
!778 = metadata !{i32 977, i32 0, metadata !766, metadata !687}
!779 = metadata !{i32 978, i32 0, metadata !766, metadata !687}
!780 = metadata !{i32 979, i32 0, metadata !766, metadata !687}
!781 = metadata !{i32 980, i32 0, metadata !766, metadata !687}
!782 = metadata !{i32 984, i32 0, metadata !74, metadata !687}
!783 = metadata !{i32 989, i32 0, metadata !784, metadata !687}
!784 = metadata !{i32 786443, metadata !1, metadata !785, i32 989, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!785 = metadata !{i32 786443, metadata !1, metadata !74, i32 984, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!786 = metadata !{i32 992, i32 0, metadata !787, metadata !687}
!787 = metadata !{i32 786443, metadata !1, metadata !784, i32 991, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!788 = metadata !{i32 993, i32 0, metadata !789, metadata !687}
!789 = metadata !{i32 786443, metadata !1, metadata !787, i32 992, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!790 = metadata !{i32 1000, i32 0, metadata !791, metadata !687}
!791 = metadata !{i32 786443, metadata !1, metadata !792, i32 999, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!792 = metadata !{i32 786443, metadata !1, metadata !789, i32 999, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!793 = metadata !{i32 994, i32 0, metadata !789, metadata !687}
!794 = metadata !{i32 995, i32 0, metadata !789, metadata !687}
!795 = metadata !{i32 996, i32 0, metadata !789, metadata !687}
!796 = metadata !{i32 997, i32 0, metadata !789, metadata !687}
!797 = metadata !{i32 998, i32 0, metadata !789, metadata !687}
!798 = metadata !{i32 999, i32 0, metadata !792, metadata !687}
!799 = metadata !{i32 1001, i32 0, metadata !791, metadata !687}
!800 = metadata !{i32 1002, i32 0, metadata !791, metadata !687}
!801 = metadata !{i32 1003, i32 0, metadata !791, metadata !687}
!802 = metadata !{i32 1004, i32 0, metadata !791, metadata !687}
!803 = metadata !{i32 1005, i32 0, metadata !791, metadata !687}
!804 = metadata !{i32 1025, i32 0, metadata !39, metadata !805}
!805 = metadata !{i32 103, i32 0, metadata !688, null}
!806 = metadata !{i32 786689, metadata !39, metadata !"mtxA", metadata !5, i32 16778241, metadata !8, i32 0, metadata !805} ; [ DW_TAG_arg_variable ] [mtxA] [line 1025]
!807 = metadata !{i32 786689, metadata !39, metadata !"mtxB", metadata !5, i32 33555458, metadata !8, i32 0, metadata !805} ; [ DW_TAG_arg_variable ] [mtxB] [line 1026]
!808 = metadata !{i32 1026, i32 0, metadata !39, metadata !805}
!809 = metadata !{i32 1029, i32 0, metadata !39, metadata !805}
!810 = metadata !{i32 1030, i32 0, metadata !39, metadata !805}
!811 = metadata !{i32 1031, i32 0, metadata !39, metadata !805}
!812 = metadata !{i32 1032, i32 0, metadata !39, metadata !805}
!813 = metadata !{i32 1038, i32 0, metadata !39, metadata !805}
!814 = metadata !{i32 1040, i32 0, metadata !39, metadata !805}
!815 = metadata !{i32 786688, metadata !39, metadata !"entriesB", metadata !5, i32 1029, metadata !22, i32 0, metadata !805} ; [ DW_TAG_auto_variable ] [entriesB] [line 1029]
!816 = metadata !{i32 1045, i32 0, metadata !39, metadata !805}
!817 = metadata !{i32 786688, metadata !39, metadata !"colB0", metadata !5, i32 1029, metadata !22, i32 0, metadata !805} ; [ DW_TAG_auto_variable ] [colB0] [line 1029]
!818 = metadata !{i32 786688, metadata !39, metadata !"jcolB", metadata !5, i32 1030, metadata !14, i32 0, metadata !805} ; [ DW_TAG_auto_variable ] [jcolB] [line 1030]
!819 = metadata !{i32 1046, i32 0, metadata !820, metadata !805}
!820 = metadata !{i32 786443, metadata !1, metadata !39, i32 1046, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!821 = metadata !{i32 786688, metadata !39, metadata !"ncolB", metadata !5, i32 1031, metadata !14, i32 0, metadata !805} ; [ DW_TAG_auto_variable ] [ncolB] [line 1031]
!822 = metadata !{i32 786688, metadata !39, metadata !"nrowB", metadata !5, i32 1031, metadata !14, i32 0, metadata !805} ; [ DW_TAG_auto_variable ] [nrowB] [line 1031]
!823 = metadata !{i32 1047, i32 0, metadata !824, metadata !805}
!824 = metadata !{i32 786443, metadata !1, metadata !820, i32 1046, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!825 = metadata !{i32 1048, i32 0, metadata !824, metadata !805}
!826 = metadata !{i32 786688, metadata !39, metadata !"nrowA", metadata !5, i32 1031, metadata !14, i32 0, metadata !805} ; [ DW_TAG_auto_variable ] [nrowA] [line 1031]
!827 = metadata !{i32 1053, i32 0, metadata !828, metadata !805}
!828 = metadata !{i32 786443, metadata !1, metadata !824, i32 1053, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!829 = metadata !{i32 786688, metadata !39, metadata !"nentA", metadata !5, i32 1031, metadata !14, i32 0, metadata !805} ; [ DW_TAG_auto_variable ] [nentA] [line 1031]
!830 = metadata !{i32 786688, metadata !39, metadata !"sizesA", metadata !5, i32 1032, metadata !72, i32 0, metadata !805} ; [ DW_TAG_auto_variable ] [sizesA] [line 1032]
!831 = metadata !{i32 1056, i32 0, metadata !832, metadata !805}
!832 = metadata !{i32 786443, metadata !1, metadata !828, i32 1055, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!833 = metadata !{i32 786688, metadata !39, metadata !"entriesA", metadata !5, i32 1029, metadata !22, i32 0, metadata !805} ; [ DW_TAG_auto_variable ] [entriesA] [line 1029]
!834 = metadata !{i32 1064, i32 0, metadata !835, metadata !805}
!835 = metadata !{i32 786443, metadata !1, metadata !836, i32 1063, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!836 = metadata !{i32 786443, metadata !1, metadata !837, i32 1063, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!837 = metadata !{i32 786443, metadata !1, metadata !832, i32 1056, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!838 = metadata !{i32 786688, metadata !39, metadata !"indicesA", metadata !5, i32 1032, metadata !72, i32 0, metadata !805} ; [ DW_TAG_auto_variable ] [indicesA] [line 1032]
!839 = metadata !{i32 1065, i32 0, metadata !835, metadata !805}
!840 = metadata !{i32 1077, i32 0, metadata !824, metadata !805}
!841 = metadata !{i32 786688, metadata !39, metadata !"colstart", metadata !5, i32 1030, metadata !14, i32 0, metadata !805} ; [ DW_TAG_auto_variable ] [colstart] [line 1030]
!842 = metadata !{i32 786688, metadata !39, metadata !"size", metadata !5, i32 1031, metadata !14, i32 0, metadata !805} ; [ DW_TAG_auto_variable ] [size] [line 1031]
!843 = metadata !{i32 1057, i32 0, metadata !837, metadata !805}
!844 = metadata !{i32 1058, i32 0, metadata !837, metadata !805}
!845 = metadata !{i32 786688, metadata !39, metadata !"rloc", metadata !5, i32 1031, metadata !14, i32 0, metadata !805} ; [ DW_TAG_auto_variable ] [rloc] [line 1031]
!846 = metadata !{i32 1059, i32 0, metadata !837, metadata !805}
!847 = metadata !{i32 786688, metadata !39, metadata !"iloc", metadata !5, i32 1030, metadata !14, i32 0, metadata !805} ; [ DW_TAG_auto_variable ] [iloc] [line 1030]
!848 = metadata !{i32 1060, i32 0, metadata !837, metadata !805}
!849 = metadata !{i32 786688, metadata !39, metadata !"br0", metadata !5, i32 1028, metadata !23, i32 0, metadata !805} ; [ DW_TAG_auto_variable ] [br0] [line 1028]
!850 = metadata !{i32 786688, metadata !39, metadata !"bi0", metadata !5, i32 1028, metadata !23, i32 0, metadata !805} ; [ DW_TAG_auto_variable ] [bi0] [line 1028]
!851 = metadata !{i32 1061, i32 0, metadata !837, metadata !805}
!852 = metadata !{i32 786688, metadata !39, metadata !"br1", metadata !5, i32 1028, metadata !23, i32 0, metadata !805} ; [ DW_TAG_auto_variable ] [br1] [line 1028]
!853 = metadata !{i32 786688, metadata !39, metadata !"bi1", metadata !5, i32 1028, metadata !23, i32 0, metadata !805} ; [ DW_TAG_auto_variable ] [bi1] [line 1028]
!854 = metadata !{i32 1062, i32 0, metadata !837, metadata !805}
!855 = metadata !{i32 786688, metadata !39, metadata !"br2", metadata !5, i32 1028, metadata !23, i32 0, metadata !805} ; [ DW_TAG_auto_variable ] [br2] [line 1028]
!856 = metadata !{i32 786688, metadata !39, metadata !"bi2", metadata !5, i32 1028, metadata !23, i32 0, metadata !805} ; [ DW_TAG_auto_variable ] [bi2] [line 1028]
!857 = metadata !{i32 786688, metadata !39, metadata !"ii", metadata !5, i32 1030, metadata !14, i32 0, metadata !805} ; [ DW_TAG_auto_variable ] [ii] [line 1030]
!858 = metadata !{i32 1063, i32 0, metadata !836, metadata !805}
!859 = metadata !{i32 786688, metadata !39, metadata !"kk", metadata !5, i32 1031, metadata !14, i32 0, metadata !805} ; [ DW_TAG_auto_variable ] [kk] [line 1031]
!860 = metadata !{i32 786688, metadata !39, metadata !"ar", metadata !5, i32 1028, metadata !23, i32 0, metadata !805} ; [ DW_TAG_auto_variable ] [ar] [line 1028]
!861 = metadata !{i32 786688, metadata !39, metadata !"ai", metadata !5, i32 1028, metadata !23, i32 0, metadata !805} ; [ DW_TAG_auto_variable ] [ai] [line 1028]
!862 = metadata !{i32 786688, metadata !39, metadata !"jj", metadata !5, i32 1031, metadata !14, i32 0, metadata !805} ; [ DW_TAG_auto_variable ] [jj] [line 1031]
!863 = metadata !{i32 1066, i32 0, metadata !835, metadata !805}
!864 = metadata !{i32 1067, i32 0, metadata !835, metadata !805}
!865 = metadata !{i32 1068, i32 0, metadata !835, metadata !805}
!866 = metadata !{i32 1069, i32 0, metadata !835, metadata !805}
!867 = metadata !{i32 1070, i32 0, metadata !835, metadata !805}
!868 = metadata !{i32 1071, i32 0, metadata !835, metadata !805}
!869 = metadata !{i32 1072, i32 0, metadata !835, metadata !805}
!870 = metadata !{i32 1073, i32 0, metadata !835, metadata !805}
!871 = metadata !{i32 1079, i32 0, metadata !39, metadata !805}
!872 = metadata !{i32 1080, i32 0, metadata !873, metadata !805}
!873 = metadata !{i32 786443, metadata !1, metadata !39, i32 1079, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!874 = metadata !{i32 1085, i32 0, metadata !875, metadata !805}
!875 = metadata !{i32 786443, metadata !1, metadata !873, i32 1085, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!876 = metadata !{i32 1088, i32 0, metadata !877, metadata !805}
!877 = metadata !{i32 786443, metadata !1, metadata !875, i32 1087, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!878 = metadata !{i32 1095, i32 0, metadata !879, metadata !805}
!879 = metadata !{i32 786443, metadata !1, metadata !880, i32 1094, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!880 = metadata !{i32 786443, metadata !1, metadata !881, i32 1094, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!881 = metadata !{i32 786443, metadata !1, metadata !877, i32 1088, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!882 = metadata !{i32 1096, i32 0, metadata !879, metadata !805}
!883 = metadata !{i32 1089, i32 0, metadata !881, metadata !805}
!884 = metadata !{i32 1090, i32 0, metadata !881, metadata !805}
!885 = metadata !{i32 1091, i32 0, metadata !881, metadata !805}
!886 = metadata !{i32 1092, i32 0, metadata !881, metadata !805}
!887 = metadata !{i32 1093, i32 0, metadata !881, metadata !805}
!888 = metadata !{i32 1094, i32 0, metadata !880, metadata !805}
!889 = metadata !{i32 1097, i32 0, metadata !879, metadata !805}
!890 = metadata !{i32 1098, i32 0, metadata !879, metadata !805}
!891 = metadata !{i32 1099, i32 0, metadata !879, metadata !805}
!892 = metadata !{i32 1100, i32 0, metadata !879, metadata !805}
!893 = metadata !{i32 1101, i32 0, metadata !879, metadata !805}
!894 = metadata !{i32 1102, i32 0, metadata !879, metadata !805}
!895 = metadata !{i32 1106, i32 0, metadata !39, metadata !805}
!896 = metadata !{i32 1111, i32 0, metadata !897, metadata !805}
!897 = metadata !{i32 786443, metadata !1, metadata !898, i32 1111, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!898 = metadata !{i32 786443, metadata !1, metadata !39, i32 1106, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!899 = metadata !{i32 1114, i32 0, metadata !900, metadata !805}
!900 = metadata !{i32 786443, metadata !1, metadata !897, i32 1113, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!901 = metadata !{i32 1120, i32 0, metadata !902, metadata !805}
!902 = metadata !{i32 786443, metadata !1, metadata !903, i32 1119, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!903 = metadata !{i32 786443, metadata !1, metadata !904, i32 1119, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!904 = metadata !{i32 786443, metadata !1, metadata !900, i32 1114, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!905 = metadata !{i32 1121, i32 0, metadata !902, metadata !805}
!906 = metadata !{i32 1115, i32 0, metadata !904, metadata !805}
!907 = metadata !{i32 1116, i32 0, metadata !904, metadata !805}
!908 = metadata !{i32 1117, i32 0, metadata !904, metadata !805}
!909 = metadata !{i32 1118, i32 0, metadata !904, metadata !805}
!910 = metadata !{i32 1119, i32 0, metadata !903, metadata !805}
!911 = metadata !{i32 1122, i32 0, metadata !902, metadata !805}
!912 = metadata !{i32 1123, i32 0, metadata !902, metadata !805}
!913 = metadata !{i32 1124, i32 0, metadata !902, metadata !805}
!914 = metadata !{i32 1125, i32 0, metadata !902, metadata !805}
!915 = metadata !{i32 601, i32 0, metadata !147, metadata !916}
!916 = metadata !{i32 106, i32 0, metadata !688, null}
!917 = metadata !{i32 786689, metadata !147, metadata !"mtxA", metadata !5, i32 16777817, metadata !8, i32 0, metadata !916} ; [ DW_TAG_arg_variable ] [mtxA] [line 601]
!918 = metadata !{i32 786689, metadata !147, metadata !"mtxB", metadata !5, i32 33555034, metadata !8, i32 0, metadata !916} ; [ DW_TAG_arg_variable ] [mtxB] [line 602]
!919 = metadata !{i32 602, i32 0, metadata !147, metadata !916}
!920 = metadata !{i32 606, i32 0, metadata !147, metadata !916}
!921 = metadata !{i32 607, i32 0, metadata !147, metadata !916}
!922 = metadata !{i32 608, i32 0, metadata !147, metadata !916}
!923 = metadata !{i32 609, i32 0, metadata !147, metadata !916}
!924 = metadata !{i32 615, i32 0, metadata !147, metadata !916}
!925 = metadata !{i32 617, i32 0, metadata !147, metadata !916}
!926 = metadata !{i32 786688, metadata !147, metadata !"entriesB", metadata !5, i32 606, metadata !22, i32 0, metadata !916} ; [ DW_TAG_auto_variable ] [entriesB] [line 606]
!927 = metadata !{i32 622, i32 0, metadata !147, metadata !916}
!928 = metadata !{i32 786688, metadata !147, metadata !"colB0", metadata !5, i32 606, metadata !22, i32 0, metadata !916} ; [ DW_TAG_auto_variable ] [colB0] [line 606]
!929 = metadata !{i32 786688, metadata !147, metadata !"jcolB", metadata !5, i32 607, metadata !14, i32 0, metadata !916} ; [ DW_TAG_auto_variable ] [jcolB] [line 607]
!930 = metadata !{i32 623, i32 0, metadata !931, metadata !916}
!931 = metadata !{i32 786443, metadata !1, metadata !147, i32 623, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!932 = metadata !{i32 786688, metadata !147, metadata !"ncolB", metadata !5, i32 608, metadata !14, i32 0, metadata !916} ; [ DW_TAG_auto_variable ] [ncolB] [line 608]
!933 = metadata !{i32 786688, metadata !147, metadata !"nrowB", metadata !5, i32 608, metadata !14, i32 0, metadata !916} ; [ DW_TAG_auto_variable ] [nrowB] [line 608]
!934 = metadata !{i32 624, i32 0, metadata !935, metadata !916}
!935 = metadata !{i32 786443, metadata !1, metadata !931, i32 623, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!936 = metadata !{i32 625, i32 0, metadata !935, metadata !916}
!937 = metadata !{i32 786688, metadata !147, metadata !"nrowA", metadata !5, i32 608, metadata !14, i32 0, metadata !916} ; [ DW_TAG_auto_variable ] [nrowA] [line 608]
!938 = metadata !{i32 630, i32 0, metadata !939, metadata !916}
!939 = metadata !{i32 786443, metadata !1, metadata !935, i32 630, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!940 = metadata !{i32 673, i32 0, metadata !935, metadata !916}
!941 = metadata !{i32 786688, metadata !147, metadata !"sizesA", metadata !5, i32 609, metadata !72, i32 0, metadata !916} ; [ DW_TAG_auto_variable ] [sizesA] [line 609]
!942 = metadata !{i32 635, i32 0, metadata !943, metadata !916}
!943 = metadata !{i32 786443, metadata !1, metadata !939, i32 630, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!944 = metadata !{i32 786688, metadata !147, metadata !"firstlocsA", metadata !5, i32 609, metadata !72, i32 0, metadata !916} ; [ DW_TAG_auto_variable ] [firstlocsA] [line 609]
!945 = metadata !{i32 636, i32 0, metadata !946, metadata !916}
!946 = metadata !{i32 786443, metadata !1, metadata !943, i32 635, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!947 = metadata !{i32 786688, metadata !147, metadata !"entriesA", metadata !5, i32 606, metadata !22, i32 0, metadata !916} ; [ DW_TAG_auto_variable ] [entriesA] [line 606]
!948 = metadata !{i32 646, i32 0, metadata !949, metadata !916}
!949 = metadata !{i32 786443, metadata !1, metadata !950, i32 645, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!950 = metadata !{i32 786443, metadata !1, metadata !946, i32 645, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!951 = metadata !{i32 786688, metadata !147, metadata !"kk", metadata !5, i32 607, metadata !14, i32 0, metadata !916} ; [ DW_TAG_auto_variable ] [kk] [line 607]
!952 = metadata !{i32 786688, metadata !147, metadata !"irowA", metadata !5, i32 607, metadata !14, i32 0, metadata !916} ; [ DW_TAG_auto_variable ] [irowA] [line 607]
!953 = metadata !{i32 786688, metadata !147, metadata !"first", metadata !5, i32 607, metadata !14, i32 0, metadata !916} ; [ DW_TAG_auto_variable ] [first] [line 607]
!954 = metadata !{i32 637, i32 0, metadata !946, metadata !916}
!955 = metadata !{i32 786688, metadata !147, metadata !"last", metadata !5, i32 607, metadata !14, i32 0, metadata !916} ; [ DW_TAG_auto_variable ] [last] [line 607]
!956 = metadata !{i32 786688, metadata !147, metadata !"isum0", metadata !5, i32 605, metadata !23, i32 0, metadata !916} ; [ DW_TAG_auto_variable ] [isum0] [line 605]
!957 = metadata !{i32 642, i32 0, metadata !946, metadata !916}
!958 = metadata !{i32 786688, metadata !147, metadata !"rsum0", metadata !5, i32 605, metadata !23, i32 0, metadata !916} ; [ DW_TAG_auto_variable ] [rsum0] [line 605]
!959 = metadata !{i32 786688, metadata !147, metadata !"isum1", metadata !5, i32 605, metadata !23, i32 0, metadata !916} ; [ DW_TAG_auto_variable ] [isum1] [line 605]
!960 = metadata !{i32 643, i32 0, metadata !946, metadata !916}
!961 = metadata !{i32 786688, metadata !147, metadata !"rsum1", metadata !5, i32 605, metadata !23, i32 0, metadata !916} ; [ DW_TAG_auto_variable ] [rsum1] [line 605]
!962 = metadata !{i32 786688, metadata !147, metadata !"isum2", metadata !5, i32 605, metadata !23, i32 0, metadata !916} ; [ DW_TAG_auto_variable ] [isum2] [line 605]
!963 = metadata !{i32 644, i32 0, metadata !946, metadata !916}
!964 = metadata !{i32 786688, metadata !147, metadata !"rsum2", metadata !5, i32 605, metadata !23, i32 0, metadata !916} ; [ DW_TAG_auto_variable ] [rsum2] [line 605]
!965 = metadata !{i32 786688, metadata !147, metadata !"ii", metadata !5, i32 607, metadata !14, i32 0, metadata !916} ; [ DW_TAG_auto_variable ] [ii] [line 607]
!966 = metadata !{i32 645, i32 0, metadata !950, metadata !916}
!967 = metadata !{i32 786688, metadata !147, metadata !"ar", metadata !5, i32 604, metadata !23, i32 0, metadata !916} ; [ DW_TAG_auto_variable ] [ar] [line 604]
!968 = metadata !{i32 647, i32 0, metadata !949, metadata !916}
!969 = metadata !{i32 786688, metadata !147, metadata !"ai", metadata !5, i32 604, metadata !23, i32 0, metadata !916} ; [ DW_TAG_auto_variable ] [ai] [line 604]
!970 = metadata !{i32 653, i32 0, metadata !949, metadata !916}
!971 = metadata !{i32 786688, metadata !147, metadata !"rloc", metadata !5, i32 608, metadata !14, i32 0, metadata !916} ; [ DW_TAG_auto_variable ] [rloc] [line 608]
!972 = metadata !{i32 654, i32 0, metadata !949, metadata !916}
!973 = metadata !{i32 786688, metadata !147, metadata !"iloc", metadata !5, i32 607, metadata !14, i32 0, metadata !916} ; [ DW_TAG_auto_variable ] [iloc] [line 607]
!974 = metadata !{i32 655, i32 0, metadata !949, metadata !916}
!975 = metadata !{i32 786688, metadata !147, metadata !"br0", metadata !5, i32 604, metadata !23, i32 0, metadata !916} ; [ DW_TAG_auto_variable ] [br0] [line 604]
!976 = metadata !{i32 786688, metadata !147, metadata !"bi0", metadata !5, i32 604, metadata !23, i32 0, metadata !916} ; [ DW_TAG_auto_variable ] [bi0] [line 604]
!977 = metadata !{i32 656, i32 0, metadata !949, metadata !916}
!978 = metadata !{i32 786688, metadata !147, metadata !"br1", metadata !5, i32 604, metadata !23, i32 0, metadata !916} ; [ DW_TAG_auto_variable ] [br1] [line 604]
!979 = metadata !{i32 786688, metadata !147, metadata !"bi1", metadata !5, i32 604, metadata !23, i32 0, metadata !916} ; [ DW_TAG_auto_variable ] [bi1] [line 604]
!980 = metadata !{i32 657, i32 0, metadata !949, metadata !916}
!981 = metadata !{i32 786688, metadata !147, metadata !"br2", metadata !5, i32 604, metadata !23, i32 0, metadata !916} ; [ DW_TAG_auto_variable ] [br2] [line 604]
!982 = metadata !{i32 786688, metadata !147, metadata !"bi2", metadata !5, i32 604, metadata !23, i32 0, metadata !916} ; [ DW_TAG_auto_variable ] [bi2] [line 604]
!983 = metadata !{i32 658, i32 0, metadata !949, metadata !916}
!984 = metadata !{i32 659, i32 0, metadata !949, metadata !916}
!985 = metadata !{i32 660, i32 0, metadata !949, metadata !916}
!986 = metadata !{i32 662, i32 0, metadata !946, metadata !916}
!987 = metadata !{i32 663, i32 0, metadata !946, metadata !916}
!988 = metadata !{i32 664, i32 0, metadata !946, metadata !916}
!989 = metadata !{i32 665, i32 0, metadata !946, metadata !916}
!990 = metadata !{i32 666, i32 0, metadata !946, metadata !916}
!991 = metadata !{i32 667, i32 0, metadata !946, metadata !916}
!992 = metadata !{i32 675, i32 0, metadata !147, metadata !916}
!993 = metadata !{i32 676, i32 0, metadata !994, metadata !916}
!994 = metadata !{i32 786443, metadata !1, metadata !147, i32 675, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!995 = metadata !{i32 677, i32 0, metadata !996, metadata !916}
!996 = metadata !{i32 786443, metadata !1, metadata !994, i32 677, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!997 = metadata !{i32 682, i32 0, metadata !998, metadata !916}
!998 = metadata !{i32 786443, metadata !1, metadata !996, i32 677, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!999 = metadata !{i32 683, i32 0, metadata !1000, metadata !916}
!1000 = metadata !{i32 786443, metadata !1, metadata !998, i32 682, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1001 = metadata !{i32 692, i32 0, metadata !1002, metadata !916}
!1002 = metadata !{i32 786443, metadata !1, metadata !1003, i32 691, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1003 = metadata !{i32 786443, metadata !1, metadata !1000, i32 691, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1004 = metadata !{i32 684, i32 0, metadata !1000, metadata !916}
!1005 = metadata !{i32 689, i32 0, metadata !1000, metadata !916}
!1006 = metadata !{i32 690, i32 0, metadata !1000, metadata !916}
!1007 = metadata !{i32 691, i32 0, metadata !1003, metadata !916}
!1008 = metadata !{i32 693, i32 0, metadata !1002, metadata !916}
!1009 = metadata !{i32 699, i32 0, metadata !1002, metadata !916}
!1010 = metadata !{i32 700, i32 0, metadata !1002, metadata !916}
!1011 = metadata !{i32 701, i32 0, metadata !1002, metadata !916}
!1012 = metadata !{i32 702, i32 0, metadata !1002, metadata !916}
!1013 = metadata !{i32 703, i32 0, metadata !1002, metadata !916}
!1014 = metadata !{i32 704, i32 0, metadata !1002, metadata !916}
!1015 = metadata !{i32 706, i32 0, metadata !1000, metadata !916}
!1016 = metadata !{i32 707, i32 0, metadata !1000, metadata !916}
!1017 = metadata !{i32 708, i32 0, metadata !1000, metadata !916}
!1018 = metadata !{i32 709, i32 0, metadata !1000, metadata !916}
!1019 = metadata !{i32 710, i32 0, metadata !1000, metadata !916}
!1020 = metadata !{i32 716, i32 0, metadata !147, metadata !916}
!1021 = metadata !{i32 717, i32 0, metadata !1022, metadata !916}
!1022 = metadata !{i32 786443, metadata !1, metadata !1023, i32 717, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1023 = metadata !{i32 786443, metadata !1, metadata !147, i32 716, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1024 = metadata !{i32 722, i32 0, metadata !1025, metadata !916}
!1025 = metadata !{i32 786443, metadata !1, metadata !1022, i32 717, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1026 = metadata !{i32 723, i32 0, metadata !1027, metadata !916}
!1027 = metadata !{i32 786443, metadata !1, metadata !1025, i32 722, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1028 = metadata !{i32 731, i32 0, metadata !1029, metadata !916}
!1029 = metadata !{i32 786443, metadata !1, metadata !1030, i32 730, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1030 = metadata !{i32 786443, metadata !1, metadata !1027, i32 730, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1031 = metadata !{i32 724, i32 0, metadata !1027, metadata !916}
!1032 = metadata !{i32 729, i32 0, metadata !1027, metadata !916}
!1033 = metadata !{i32 730, i32 0, metadata !1030, metadata !916}
!1034 = metadata !{i32 732, i32 0, metadata !1029, metadata !916}
!1035 = metadata !{i32 738, i32 0, metadata !1029, metadata !916}
!1036 = metadata !{i32 739, i32 0, metadata !1029, metadata !916}
!1037 = metadata !{i32 740, i32 0, metadata !1029, metadata !916}
!1038 = metadata !{i32 741, i32 0, metadata !1029, metadata !916}
!1039 = metadata !{i32 743, i32 0, metadata !1027, metadata !916}
!1040 = metadata !{i32 744, i32 0, metadata !1027, metadata !916}
!1041 = metadata !{i32 745, i32 0, metadata !1027, metadata !916}
!1042 = metadata !{i32 746, i32 0, metadata !1027, metadata !916}
!1043 = metadata !{i32 768, i32 0, metadata !108, metadata !1044}
!1044 = metadata !{i32 109, i32 0, metadata !688, null}
!1045 = metadata !{i32 786689, metadata !108, metadata !"mtxA", metadata !5, i32 16777984, metadata !8, i32 0, metadata !1044} ; [ DW_TAG_arg_variable ] [mtxA] [line 768]
!1046 = metadata !{i32 786689, metadata !108, metadata !"mtxB", metadata !5, i32 33555201, metadata !8, i32 0, metadata !1044} ; [ DW_TAG_arg_variable ] [mtxB] [line 769]
!1047 = metadata !{i32 769, i32 0, metadata !108, metadata !1044}
!1048 = metadata !{i32 773, i32 0, metadata !108, metadata !1044}
!1049 = metadata !{i32 774, i32 0, metadata !108, metadata !1044}
!1050 = metadata !{i32 775, i32 0, metadata !108, metadata !1044}
!1051 = metadata !{i32 776, i32 0, metadata !108, metadata !1044}
!1052 = metadata !{i32 782, i32 0, metadata !108, metadata !1044}
!1053 = metadata !{i32 784, i32 0, metadata !108, metadata !1044}
!1054 = metadata !{i32 786688, metadata !108, metadata !"entriesB", metadata !5, i32 773, metadata !22, i32 0, metadata !1044} ; [ DW_TAG_auto_variable ] [entriesB] [line 773]
!1055 = metadata !{i32 785, i32 0, metadata !108, metadata !1044}
!1056 = metadata !{i32 786688, metadata !108, metadata !"colB0", metadata !5, i32 773, metadata !22, i32 0, metadata !1044} ; [ DW_TAG_auto_variable ] [colB0] [line 773]
!1057 = metadata !{i32 786688, metadata !108, metadata !"jcolB", metadata !5, i32 774, metadata !14, i32 0, metadata !1044} ; [ DW_TAG_auto_variable ] [jcolB] [line 774]
!1058 = metadata !{i32 786, i32 0, metadata !1059, metadata !1044}
!1059 = metadata !{i32 786443, metadata !1, metadata !108, i32 786, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1060 = metadata !{i32 786688, metadata !108, metadata !"ncolB", metadata !5, i32 775, metadata !14, i32 0, metadata !1044} ; [ DW_TAG_auto_variable ] [ncolB] [line 775]
!1061 = metadata !{i32 786688, metadata !108, metadata !"nrowB", metadata !5, i32 775, metadata !14, i32 0, metadata !1044} ; [ DW_TAG_auto_variable ] [nrowB] [line 775]
!1062 = metadata !{i32 787, i32 0, metadata !1063, metadata !1044}
!1063 = metadata !{i32 786443, metadata !1, metadata !1059, i32 786, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1064 = metadata !{i32 788, i32 0, metadata !1063, metadata !1044}
!1065 = metadata !{i32 786688, metadata !108, metadata !"nrowA", metadata !5, i32 775, metadata !14, i32 0, metadata !1044} ; [ DW_TAG_auto_variable ] [nrowA] [line 775]
!1066 = metadata !{i32 793, i32 0, metadata !1067, metadata !1044}
!1067 = metadata !{i32 786443, metadata !1, metadata !1063, i32 793, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1068 = metadata !{i32 824, i32 0, metadata !1063, metadata !1044}
!1069 = metadata !{i32 786688, metadata !108, metadata !"sizesA", metadata !5, i32 776, metadata !72, i32 0, metadata !1044} ; [ DW_TAG_auto_variable ] [sizesA] [line 776]
!1070 = metadata !{i32 794, i32 0, metadata !1071, metadata !1044}
!1071 = metadata !{i32 786443, metadata !1, metadata !1067, i32 793, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1072 = metadata !{i32 786688, metadata !108, metadata !"entriesA", metadata !5, i32 773, metadata !22, i32 0, metadata !1044} ; [ DW_TAG_auto_variable ] [entriesA] [line 773]
!1073 = metadata !{i32 799, i32 0, metadata !1074, metadata !1044}
!1074 = metadata !{i32 786443, metadata !1, metadata !1075, i32 798, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1075 = metadata !{i32 786443, metadata !1, metadata !1076, i32 798, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1076 = metadata !{i32 786443, metadata !1, metadata !1071, i32 794, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1077 = metadata !{i32 786688, metadata !108, metadata !"indicesA", metadata !5, i32 776, metadata !72, i32 0, metadata !1044} ; [ DW_TAG_auto_variable ] [indicesA] [line 776]
!1078 = metadata !{i32 801, i32 0, metadata !1074, metadata !1044}
!1079 = metadata !{i32 786688, metadata !108, metadata !"kk", metadata !5, i32 774, metadata !14, i32 0, metadata !1044} ; [ DW_TAG_auto_variable ] [kk] [line 774]
!1080 = metadata !{i32 786688, metadata !108, metadata !"irowA", metadata !5, i32 774, metadata !14, i32 0, metadata !1044} ; [ DW_TAG_auto_variable ] [irowA] [line 774]
!1081 = metadata !{i32 786688, metadata !108, metadata !"size", metadata !5, i32 775, metadata !14, i32 0, metadata !1044} ; [ DW_TAG_auto_variable ] [size] [line 775]
!1082 = metadata !{i32 802, i32 0, metadata !1074, metadata !1044}
!1083 = metadata !{i32 798, i32 0, metadata !1075, metadata !1044}
!1084 = metadata !{i32 786688, metadata !108, metadata !"ar", metadata !5, i32 771, metadata !23, i32 0, metadata !1044} ; [ DW_TAG_auto_variable ] [ar] [line 771]
!1085 = metadata !{i32 800, i32 0, metadata !1074, metadata !1044}
!1086 = metadata !{i32 786688, metadata !108, metadata !"ai", metadata !5, i32 771, metadata !23, i32 0, metadata !1044} ; [ DW_TAG_auto_variable ] [ai] [line 771]
!1087 = metadata !{i32 786688, metadata !108, metadata !"jj", metadata !5, i32 774, metadata !14, i32 0, metadata !1044} ; [ DW_TAG_auto_variable ] [jj] [line 774]
!1088 = metadata !{i32 803, i32 0, metadata !1089, metadata !1044}
!1089 = metadata !{i32 786443, metadata !1, metadata !1074, i32 802, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1090 = metadata !{i32 806, i32 0, metadata !1089, metadata !1044}
!1091 = metadata !{i32 808, i32 0, metadata !1074, metadata !1044}
!1092 = metadata !{i32 786688, metadata !108, metadata !"rloc", metadata !5, i32 775, metadata !14, i32 0, metadata !1044} ; [ DW_TAG_auto_variable ] [rloc] [line 775]
!1093 = metadata !{i32 809, i32 0, metadata !1074, metadata !1044}
!1094 = metadata !{i32 786688, metadata !108, metadata !"iloc", metadata !5, i32 774, metadata !14, i32 0, metadata !1044} ; [ DW_TAG_auto_variable ] [iloc] [line 774]
!1095 = metadata !{i32 810, i32 0, metadata !1074, metadata !1044}
!1096 = metadata !{i32 786688, metadata !108, metadata !"br0", metadata !5, i32 771, metadata !23, i32 0, metadata !1044} ; [ DW_TAG_auto_variable ] [br0] [line 771]
!1097 = metadata !{i32 786688, metadata !108, metadata !"bi0", metadata !5, i32 771, metadata !23, i32 0, metadata !1044} ; [ DW_TAG_auto_variable ] [bi0] [line 771]
!1098 = metadata !{i32 811, i32 0, metadata !1074, metadata !1044}
!1099 = metadata !{i32 786688, metadata !108, metadata !"br1", metadata !5, i32 771, metadata !23, i32 0, metadata !1044} ; [ DW_TAG_auto_variable ] [br1] [line 771]
!1100 = metadata !{i32 786688, metadata !108, metadata !"bi1", metadata !5, i32 771, metadata !23, i32 0, metadata !1044} ; [ DW_TAG_auto_variable ] [bi1] [line 771]
!1101 = metadata !{i32 812, i32 0, metadata !1074, metadata !1044}
!1102 = metadata !{i32 786688, metadata !108, metadata !"br2", metadata !5, i32 771, metadata !23, i32 0, metadata !1044} ; [ DW_TAG_auto_variable ] [br2] [line 771]
!1103 = metadata !{i32 786688, metadata !108, metadata !"bi2", metadata !5, i32 771, metadata !23, i32 0, metadata !1044} ; [ DW_TAG_auto_variable ] [bi2] [line 771]
!1104 = metadata !{i32 813, i32 0, metadata !1074, metadata !1044}
!1105 = metadata !{i32 786688, metadata !108, metadata !"rsum0", metadata !5, i32 772, metadata !23, i32 0, metadata !1044} ; [ DW_TAG_auto_variable ] [rsum0] [line 772]
!1106 = metadata !{i32 786688, metadata !108, metadata !"isum0", metadata !5, i32 772, metadata !23, i32 0, metadata !1044} ; [ DW_TAG_auto_variable ] [isum0] [line 772]
!1107 = metadata !{i32 814, i32 0, metadata !1074, metadata !1044}
!1108 = metadata !{i32 786688, metadata !108, metadata !"rsum1", metadata !5, i32 772, metadata !23, i32 0, metadata !1044} ; [ DW_TAG_auto_variable ] [rsum1] [line 772]
!1109 = metadata !{i32 786688, metadata !108, metadata !"isum1", metadata !5, i32 772, metadata !23, i32 0, metadata !1044} ; [ DW_TAG_auto_variable ] [isum1] [line 772]
!1110 = metadata !{i32 815, i32 0, metadata !1074, metadata !1044}
!1111 = metadata !{i32 786688, metadata !108, metadata !"rsum2", metadata !5, i32 772, metadata !23, i32 0, metadata !1044} ; [ DW_TAG_auto_variable ] [rsum2] [line 772]
!1112 = metadata !{i32 786688, metadata !108, metadata !"isum2", metadata !5, i32 772, metadata !23, i32 0, metadata !1044} ; [ DW_TAG_auto_variable ] [isum2] [line 772]
!1113 = metadata !{i32 786688, metadata !108, metadata !"ii", metadata !5, i32 774, metadata !14, i32 0, metadata !1044} ; [ DW_TAG_auto_variable ] [ii] [line 774]
!1114 = metadata !{i32 817, i32 0, metadata !1076, metadata !1044}
!1115 = metadata !{i32 818, i32 0, metadata !1076, metadata !1044}
!1116 = metadata !{i32 819, i32 0, metadata !1076, metadata !1044}
!1117 = metadata !{i32 820, i32 0, metadata !1076, metadata !1044}
!1118 = metadata !{i32 821, i32 0, metadata !1076, metadata !1044}
!1119 = metadata !{i32 822, i32 0, metadata !1076, metadata !1044}
!1120 = metadata !{i32 826, i32 0, metadata !108, metadata !1044}
!1121 = metadata !{i32 827, i32 0, metadata !1122, metadata !1044}
!1122 = metadata !{i32 786443, metadata !1, metadata !108, i32 826, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1123 = metadata !{i32 832, i32 0, metadata !1124, metadata !1044}
!1124 = metadata !{i32 786443, metadata !1, metadata !1122, i32 832, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1125 = metadata !{i32 833, i32 0, metadata !1126, metadata !1044}
!1126 = metadata !{i32 786443, metadata !1, metadata !1124, i32 832, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1127 = metadata !{i32 837, i32 0, metadata !1128, metadata !1044}
!1128 = metadata !{i32 786443, metadata !1, metadata !1129, i32 836, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1129 = metadata !{i32 786443, metadata !1, metadata !1130, i32 836, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1130 = metadata !{i32 786443, metadata !1, metadata !1126, i32 833, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1131 = metadata !{i32 839, i32 0, metadata !1128, metadata !1044}
!1132 = metadata !{i32 840, i32 0, metadata !1128, metadata !1044}
!1133 = metadata !{i32 836, i32 0, metadata !1129, metadata !1044}
!1134 = metadata !{i32 838, i32 0, metadata !1128, metadata !1044}
!1135 = metadata !{i32 841, i32 0, metadata !1136, metadata !1044}
!1136 = metadata !{i32 786443, metadata !1, metadata !1128, i32 840, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1137 = metadata !{i32 844, i32 0, metadata !1136, metadata !1044}
!1138 = metadata !{i32 846, i32 0, metadata !1128, metadata !1044}
!1139 = metadata !{i32 847, i32 0, metadata !1128, metadata !1044}
!1140 = metadata !{i32 848, i32 0, metadata !1128, metadata !1044}
!1141 = metadata !{i32 849, i32 0, metadata !1128, metadata !1044}
!1142 = metadata !{i32 850, i32 0, metadata !1128, metadata !1044}
!1143 = metadata !{i32 851, i32 0, metadata !1128, metadata !1044}
!1144 = metadata !{i32 853, i32 0, metadata !1130, metadata !1044}
!1145 = metadata !{i32 854, i32 0, metadata !1130, metadata !1044}
!1146 = metadata !{i32 855, i32 0, metadata !1130, metadata !1044}
!1147 = metadata !{i32 856, i32 0, metadata !1130, metadata !1044}
!1148 = metadata !{i32 857, i32 0, metadata !1130, metadata !1044}
!1149 = metadata !{i32 859, i32 0, metadata !108, metadata !1044}
!1150 = metadata !{i32 860, i32 0, metadata !1151, metadata !1044}
!1151 = metadata !{i32 786443, metadata !1, metadata !1152, i32 860, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1152 = metadata !{i32 786443, metadata !1, metadata !108, i32 859, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1153 = metadata !{i32 861, i32 0, metadata !1154, metadata !1044}
!1154 = metadata !{i32 786443, metadata !1, metadata !1151, i32 860, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1155 = metadata !{i32 864, i32 0, metadata !1156, metadata !1044}
!1156 = metadata !{i32 786443, metadata !1, metadata !1157, i32 863, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1157 = metadata !{i32 786443, metadata !1, metadata !1158, i32 863, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1158 = metadata !{i32 786443, metadata !1, metadata !1154, i32 861, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1159 = metadata !{i32 866, i32 0, metadata !1156, metadata !1044}
!1160 = metadata !{i32 867, i32 0, metadata !1156, metadata !1044}
!1161 = metadata !{i32 863, i32 0, metadata !1157, metadata !1044}
!1162 = metadata !{i32 865, i32 0, metadata !1156, metadata !1044}
!1163 = metadata !{i32 868, i32 0, metadata !1164, metadata !1044}
!1164 = metadata !{i32 786443, metadata !1, metadata !1156, i32 867, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveT.c]
!1165 = metadata !{i32 871, i32 0, metadata !1164, metadata !1044}
!1166 = metadata !{i32 873, i32 0, metadata !1156, metadata !1044}
!1167 = metadata !{i32 874, i32 0, metadata !1156, metadata !1044}
!1168 = metadata !{i32 875, i32 0, metadata !1156, metadata !1044}
!1169 = metadata !{i32 876, i32 0, metadata !1156, metadata !1044}
!1170 = metadata !{i32 878, i32 0, metadata !1158, metadata !1044}
!1171 = metadata !{i32 879, i32 0, metadata !1158, metadata !1044}
!1172 = metadata !{i32 880, i32 0, metadata !1158, metadata !1044}
!1173 = metadata !{i32 881, i32 0, metadata !1158, metadata !1044}
!1174 = metadata !{i32 112, i32 0, metadata !688, null}
!1175 = metadata !{i32 114, i32 0, metadata !688, null}
!1176 = metadata !{i32 119, i32 0, metadata !316, null}
!1177 = metadata !{i32 121, i32 0, metadata !316, null}
!1178 = metadata !{i32 124, i32 0, metadata !4, null}
