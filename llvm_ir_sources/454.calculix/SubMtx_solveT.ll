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
  %cmp = icmp eq %struct._SubMtx* %mtxA, null
  %cmp1 = icmp eq %struct._SubMtx* %mtxB, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct._SubMtx* %mtxB, i64 0, i32 1
  %1 = load i32* %mode, align 4, !tbaa !3
  %cmp2 = icmp eq i32 %1, 1
  br i1 %cmp2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %type = getelementptr inbounds %struct._SubMtx* %mtxB, i64 0, i32 0
  %3 = load i32* %type, align 4, !tbaa !3
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([61 x i8]* @.str1, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 %3) #5
  call void @exit(i32 -1) #6
  unreachable

if.end5:                                          ; preds = %if.end
  %nrow = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 4
  %4 = load i32* %nrow, align 4, !tbaa !3
  %nrow6 = getelementptr inbounds %struct._SubMtx* %mtxB, i64 0, i32 4
  %5 = load i32* %nrow6, align 4, !tbaa !3
  %cmp7 = icmp eq i32 %4, %5
  br i1 %cmp7, label %if.end12, label %if.then8

if.then8:                                         ; preds = %if.end5
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([73 x i8]* @.str2, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 %4, i32 %5) #5
  call void @exit(i32 -1) #6
  unreachable

if.end12:                                         ; preds = %if.end5
  %type13 = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 0
  %7 = load i32* %type13, align 4, !tbaa !3
  switch i32 %7, label %sw.default31 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.end12
  %mode14 = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 1
  %8 = load i32* %mode14, align 4, !tbaa !3
  switch i32 %8, label %sw.default [
    i32 5, label %sw.bb15
    i32 2, label %sw.bb16
    i32 6, label %sw.bb17
    i32 3, label %sw.bb18
  ]

sw.bb15:                                          ; preds = %sw.bb
  %9 = bitcast double** %entriesA.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #4
  %10 = bitcast double** %entriesB.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #4
  %11 = bitcast i32* %inc1.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #4
  %12 = bitcast i32* %inc2.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #4
  %13 = bitcast i32* %ncolB.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #4
  %14 = bitcast i32* %nentA.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #4
  %15 = bitcast i32* %nrowA.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #4
  %16 = bitcast i32* %nrowB.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #4
  %17 = bitcast i32** %firstlocsA.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #4
  %18 = bitcast i32** %sizesA.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #4
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i, i32* %nentA.i, i32** %firstlocsA.i, i32** %sizesA.i, double** %entriesA.i) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i, i32* %ncolB.i, i32* %inc1.i, i32* %inc2.i, double** %entriesB.i) #5
  %19 = load double** %entriesB.i, align 8, !tbaa !0
  %20 = load i32* %ncolB.i, align 4, !tbaa !3
  %sub235.i = add nsw i32 %20, -2
  %cmp236.i = icmp sgt i32 %sub235.i, 0
  br i1 %cmp236.i, label %for.body.lr.ph.i, label %for.end45.i

for.body.lr.ph.i:                                 ; preds = %sw.bb15
  %21 = load i32* %nrowB.i, align 4, !tbaa !3
  %idx.ext.i = sext i32 %21 to i64
  %add.ptr.sum.i = shl nsw i64 %idx.ext.i, 1
  %22 = load i32* %nrowA.i, align 4, !tbaa !3
  %23 = load i32* %nentA.i, align 4, !tbaa !3
  %24 = load i32** %sizesA.i, align 8, !tbaa !0
  %25 = load i32** %firstlocsA.i, align 8, !tbaa !0
  %26 = load double** %entriesA.i, align 8, !tbaa !0
  %add.ptr2.sum.i = add i64 %add.ptr.sum.i, %idx.ext.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.end40.i, %for.body.lr.ph.i
  %jcolB.0238.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add44.i, %for.end40.i ]
  %colB0.0237.i = phi double* [ %19, %for.body.lr.ph.i ], [ %add.ptr42.i, %for.end40.i ]
  br label %for.cond4.outer.i

for.cond4.outer.i:                                ; preds = %if.then.i, %for.body24.i, %for.body.i
  %colstart.0.ph.i = phi i32 [ %23, %for.body.i ], [ %sub15.i, %for.body24.i ], [ %sub15.i, %if.then.i ]
  %irowA.0.in.ph.i = phi i32 [ %22, %for.body.i ], [ %irowA.0.i, %for.body24.i ], [ %irowA.0.i, %if.then.i ]
  %27 = sext i32 %irowA.0.in.ph.i to i64
  br label %for.cond4.i

for.cond4.i:                                      ; preds = %for.body6.i, %for.cond4.outer.i
  %indvars.iv257.i = phi i64 [ %27, %for.cond4.outer.i ], [ %indvars.iv.next258.i, %for.body6.i ]
  %irowA.0.in.i = phi i32 [ %irowA.0.in.ph.i, %for.cond4.outer.i ], [ %irowA.0.i, %for.body6.i ]
  %indvars.iv.next258.i = add i64 %indvars.iv257.i, -1
  %irowA.0.i = add nsw i32 %irowA.0.in.i, -1
  %28 = trunc i64 %indvars.iv257.i to i32
  %cmp5.i = icmp sgt i32 %28, 0
  br i1 %cmp5.i, label %for.body6.i, label %for.end40.i

for.body6.i:                                      ; preds = %for.cond4.i
  %arrayidx.i = getelementptr inbounds i32* %24, i64 %indvars.iv.next258.i
  %29 = load i32* %arrayidx.i, align 4, !tbaa !3
  %cmp7.i = icmp sgt i32 %29, 0
  br i1 %cmp7.i, label %if.then.i, label %for.cond4.i

if.then.i:                                        ; preds = %for.body6.i
  %arrayidx9.i = getelementptr inbounds i32* %25, i64 %indvars.iv.next258.i
  %30 = load i32* %arrayidx9.i, align 4, !tbaa !3
  %add.i = add i32 %29, -1
  %sub12.i = add i32 %add.i, %30
  %sub13.neg.i = add i32 %colstart.0.ph.i, -1
  %add14.neg.i = add i32 %sub13.neg.i, %30
  %sub15.i = sub i32 %add14.neg.i, %sub12.i
  %arrayidx17.i = getelementptr inbounds double* %colB0.0237.i, i64 %indvars.iv.next258.i
  %31 = load double* %arrayidx17.i, align 8, !tbaa !4
  %add.ptr.sum213.i = add i64 %indvars.iv.next258.i, %idx.ext.i
  %arrayidx19.i = getelementptr inbounds double* %colB0.0237.i, i64 %add.ptr.sum213.i
  %32 = load double* %arrayidx19.i, align 8, !tbaa !4
  %add.ptr2.sum214.i = add i64 %indvars.iv.next258.i, %add.ptr.sum.i
  %arrayidx21.i = getelementptr inbounds double* %colB0.0237.i, i64 %add.ptr2.sum214.i
  %33 = load double* %arrayidx21.i, align 8, !tbaa !4
  %cmp23229.i = icmp sgt i32 %30, %sub12.i
  br i1 %cmp23229.i, label %for.cond4.outer.i, label %for.body24.lr.ph.i

for.body24.lr.ph.i:                               ; preds = %if.then.i
  %34 = sub i32 %colstart.0.ph.i, %29
  %35 = sext i32 %34 to i64
  %36 = sext i32 %30 to i64
  br label %for.body24.i

for.body24.i:                                     ; preds = %for.body24.i, %for.body24.lr.ph.i
  %indvars.iv261.i = phi i64 [ %indvars.iv.next262.i, %for.body24.i ], [ %36, %for.body24.lr.ph.i ]
  %indvars.iv259.i = phi i64 [ %indvars.iv.next260.i, %for.body24.i ], [ %35, %for.body24.lr.ph.i ]
  %arrayidx26.i = getelementptr inbounds double* %26, i64 %indvars.iv259.i
  %37 = load double* %arrayidx26.i, align 8, !tbaa !4
  %mul.i = fmul double %31, %37
  %arrayidx28.i = getelementptr inbounds double* %colB0.0237.i, i64 %indvars.iv261.i
  %38 = load double* %arrayidx28.i, align 8, !tbaa !4
  %sub29.i = fsub double %38, %mul.i
  store double %sub29.i, double* %arrayidx28.i, align 8, !tbaa !4
  %mul30.i = fmul double %32, %37
  %add.ptr.sum215.i = add i64 %indvars.iv261.i, %idx.ext.i
  %arrayidx32.i = getelementptr inbounds double* %colB0.0237.i, i64 %add.ptr.sum215.i
  %39 = load double* %arrayidx32.i, align 8, !tbaa !4
  %sub33.i = fsub double %39, %mul30.i
  store double %sub33.i, double* %arrayidx32.i, align 8, !tbaa !4
  %mul34.i = fmul double %33, %37
  %add.ptr2.sum216.i = add i64 %indvars.iv261.i, %add.ptr.sum.i
  %arrayidx36.i = getelementptr inbounds double* %colB0.0237.i, i64 %add.ptr2.sum216.i
  %40 = load double* %arrayidx36.i, align 8, !tbaa !4
  %sub37.i = fsub double %40, %mul34.i
  store double %sub37.i, double* %arrayidx36.i, align 8, !tbaa !4
  %indvars.iv.next262.i = add i64 %indvars.iv261.i, 1
  %indvars.iv.next260.i = add i64 %indvars.iv259.i, 1
  %41 = trunc i64 %indvars.iv261.i to i32
  %cmp23.i = icmp slt i32 %41, %sub12.i
  br i1 %cmp23.i, label %for.body24.i, label %for.cond4.outer.i

for.end40.i:                                      ; preds = %for.cond4.i
  %add.ptr42.i = getelementptr inbounds double* %colB0.0237.i, i64 %add.ptr2.sum.i
  %add44.i = add nsw i32 %jcolB.0238.i, 3
  %cmp.i = icmp slt i32 %add44.i, %sub235.i
  br i1 %cmp.i, label %for.body.i, label %for.end45.i

for.end45.i:                                      ; preds = %for.end40.i, %sw.bb15
  %jcolB.0.lcssa.i = phi i32 [ 0, %sw.bb15 ], [ %add44.i, %for.end40.i ]
  %colB0.0.lcssa.i = phi double* [ %19, %sw.bb15 ], [ %add.ptr42.i, %for.end40.i ]
  %cmp47.i = icmp eq i32 %jcolB.0.lcssa.i, %sub235.i
  br i1 %cmp47.i, label %if.then48.i, label %if.else.i

if.then48.i:                                      ; preds = %for.end45.i
  %42 = load i32* %nrowB.i, align 4, !tbaa !3
  %idx.ext49.i = sext i32 %42 to i64
  %43 = load i32* %nrowA.i, align 4, !tbaa !3
  %44 = load i32* %nentA.i, align 4, !tbaa !3
  %45 = load i32** %sizesA.i, align 8, !tbaa !0
  %46 = load i32** %firstlocsA.i, align 8, !tbaa !0
  %47 = load double** %entriesA.i, align 8, !tbaa !0
  br label %for.cond52.outer.i

for.cond52.outer.i:                               ; preds = %if.then58.i, %for.body74.i, %if.then48.i
  %colstart.2.ph.i = phi i32 [ %44, %if.then48.i ], [ %sub67.i, %for.body74.i ], [ %sub67.i, %if.then58.i ]
  %irowA.1.in.ph.i = phi i32 [ %43, %if.then48.i ], [ %irowA.1.i, %for.body74.i ], [ %irowA.1.i, %if.then58.i ]
  %48 = sext i32 %irowA.1.in.ph.i to i64
  br label %for.cond52.i

for.cond52.i:                                     ; preds = %for.body54.i, %for.cond52.outer.i
  %indvars.iv.i = phi i64 [ %48, %for.cond52.outer.i ], [ %indvars.iv.next.i, %for.body54.i ]
  %irowA.1.in.i = phi i32 [ %irowA.1.in.ph.i, %for.cond52.outer.i ], [ %irowA.1.i, %for.body54.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1
  %irowA.1.i = add nsw i32 %irowA.1.in.i, -1
  %49 = trunc i64 %indvars.iv.i to i32
  %cmp53.i = icmp sgt i32 %49, 0
  br i1 %cmp53.i, label %for.body54.i, label %sw.epilog34

for.body54.i:                                     ; preds = %for.cond52.i
  %arrayidx56.i = getelementptr inbounds i32* %45, i64 %indvars.iv.next.i
  %50 = load i32* %arrayidx56.i, align 4, !tbaa !3
  %cmp57.i = icmp sgt i32 %50, 0
  br i1 %cmp57.i, label %if.then58.i, label %for.cond52.i

if.then58.i:                                      ; preds = %for.body54.i
  %arrayidx60.i = getelementptr inbounds i32* %46, i64 %indvars.iv.next.i
  %51 = load i32* %arrayidx60.i, align 4, !tbaa !3
  %add63.i = add i32 %50, -1
  %sub64.i = add i32 %add63.i, %51
  %sub65.neg.i = add i32 %colstart.2.ph.i, -1
  %add66.neg.i = add i32 %sub65.neg.i, %51
  %sub67.i = sub i32 %add66.neg.i, %sub64.i
  %arrayidx69.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %indvars.iv.next.i
  %52 = load double* %arrayidx69.i, align 8, !tbaa !4
  %add.ptr50.sum.i = add i64 %indvars.iv.next.i, %idx.ext49.i
  %arrayidx71.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %add.ptr50.sum.i
  %53 = load double* %arrayidx71.i, align 8, !tbaa !4
  %cmp73219.i = icmp sgt i32 %51, %sub64.i
  br i1 %cmp73219.i, label %for.cond52.outer.i, label %for.body74.lr.ph.i

for.body74.lr.ph.i:                               ; preds = %if.then58.i
  %54 = sub i32 %colstart.2.ph.i, %50
  %55 = sext i32 %54 to i64
  %56 = sext i32 %51 to i64
  br label %for.body74.i

for.body74.i:                                     ; preds = %for.body74.i, %for.body74.lr.ph.i
  %indvars.iv245.i = phi i64 [ %indvars.iv.next246.i, %for.body74.i ], [ %56, %for.body74.lr.ph.i ]
  %indvars.iv243.i = phi i64 [ %indvars.iv.next244.i, %for.body74.i ], [ %55, %for.body74.lr.ph.i ]
  %arrayidx76.i = getelementptr inbounds double* %47, i64 %indvars.iv243.i
  %57 = load double* %arrayidx76.i, align 8, !tbaa !4
  %mul77.i = fmul double %52, %57
  %arrayidx79.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %indvars.iv245.i
  %58 = load double* %arrayidx79.i, align 8, !tbaa !4
  %sub80.i = fsub double %58, %mul77.i
  store double %sub80.i, double* %arrayidx79.i, align 8, !tbaa !4
  %mul81.i = fmul double %53, %57
  %add.ptr50.sum212.i = add i64 %indvars.iv245.i, %idx.ext49.i
  %arrayidx83.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %add.ptr50.sum212.i
  %59 = load double* %arrayidx83.i, align 8, !tbaa !4
  %sub84.i = fsub double %59, %mul81.i
  store double %sub84.i, double* %arrayidx83.i, align 8, !tbaa !4
  %indvars.iv.next246.i = add i64 %indvars.iv245.i, 1
  %indvars.iv.next244.i = add i64 %indvars.iv243.i, 1
  %60 = trunc i64 %indvars.iv245.i to i32
  %cmp73.i = icmp slt i32 %60, %sub64.i
  br i1 %cmp73.i, label %for.body74.i, label %for.cond52.outer.i

if.else.i:                                        ; preds = %for.end45.i
  %sub93.i = add nsw i32 %20, -1
  %cmp94.i = icmp eq i32 %jcolB.0.lcssa.i, %sub93.i
  br i1 %cmp94.i, label %if.then95.i, label %sw.epilog34

if.then95.i:                                      ; preds = %if.else.i
  %61 = load i32* %nrowA.i, align 4, !tbaa !3
  %62 = load i32* %nentA.i, align 4, !tbaa !3
  %63 = load i32** %sizesA.i, align 8, !tbaa !0
  %64 = load i32** %firstlocsA.i, align 8, !tbaa !0
  %65 = load double** %entriesA.i, align 8, !tbaa !0
  br label %for.cond97.outer.i

for.cond97.outer.i:                               ; preds = %if.then103.i, %for.body117.i, %if.then95.i
  %colstart.4.ph.i = phi i32 [ %62, %if.then95.i ], [ %sub112.i, %for.body117.i ], [ %sub112.i, %if.then103.i ]
  %irowA.2.in.ph.i = phi i32 [ %61, %if.then95.i ], [ %irowA.2.i, %for.body117.i ], [ %irowA.2.i, %if.then103.i ]
  %66 = sext i32 %irowA.2.in.ph.i to i64
  br label %for.cond97.i

for.cond97.i:                                     ; preds = %for.body99.i, %for.cond97.outer.i
  %indvars.iv249.i = phi i64 [ %66, %for.cond97.outer.i ], [ %indvars.iv.next250.i, %for.body99.i ]
  %irowA.2.in.i = phi i32 [ %irowA.2.in.ph.i, %for.cond97.outer.i ], [ %irowA.2.i, %for.body99.i ]
  %indvars.iv.next250.i = add i64 %indvars.iv249.i, -1
  %irowA.2.i = add nsw i32 %irowA.2.in.i, -1
  %67 = trunc i64 %indvars.iv249.i to i32
  %cmp98.i = icmp sgt i32 %67, 0
  br i1 %cmp98.i, label %for.body99.i, label %sw.epilog34

for.body99.i:                                     ; preds = %for.cond97.i
  %arrayidx101.i = getelementptr inbounds i32* %63, i64 %indvars.iv.next250.i
  %68 = load i32* %arrayidx101.i, align 4, !tbaa !3
  %cmp102.i = icmp sgt i32 %68, 0
  br i1 %cmp102.i, label %if.then103.i, label %for.cond97.i

if.then103.i:                                     ; preds = %for.body99.i
  %arrayidx105.i = getelementptr inbounds i32* %64, i64 %indvars.iv.next250.i
  %69 = load i32* %arrayidx105.i, align 4, !tbaa !3
  %add108.i = add i32 %68, -1
  %sub109.i = add i32 %add108.i, %69
  %sub110.neg.i = add i32 %colstart.4.ph.i, -1
  %add111.neg.i = add i32 %sub110.neg.i, %69
  %sub112.i = sub i32 %add111.neg.i, %sub109.i
  %arrayidx114.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %indvars.iv.next250.i
  %70 = load double* %arrayidx114.i, align 8, !tbaa !4
  %cmp116223.i = icmp sgt i32 %69, %sub109.i
  br i1 %cmp116223.i, label %for.cond97.outer.i, label %for.body117.lr.ph.i

for.body117.lr.ph.i:                              ; preds = %if.then103.i
  %71 = sub i32 %colstart.4.ph.i, %68
  %72 = sext i32 %71 to i64
  %73 = sext i32 %69 to i64
  br label %for.body117.i

for.body117.i:                                    ; preds = %for.body117.i, %for.body117.lr.ph.i
  %indvars.iv253.i = phi i64 [ %indvars.iv.next254.i, %for.body117.i ], [ %73, %for.body117.lr.ph.i ]
  %indvars.iv251.i = phi i64 [ %indvars.iv.next252.i, %for.body117.i ], [ %72, %for.body117.lr.ph.i ]
  %arrayidx119.i = getelementptr inbounds double* %65, i64 %indvars.iv251.i
  %74 = load double* %arrayidx119.i, align 8, !tbaa !4
  %mul120.i = fmul double %70, %74
  %arrayidx122.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %indvars.iv253.i
  %75 = load double* %arrayidx122.i, align 8, !tbaa !4
  %sub123.i = fsub double %75, %mul120.i
  store double %sub123.i, double* %arrayidx122.i, align 8, !tbaa !4
  %indvars.iv.next254.i = add i64 %indvars.iv253.i, 1
  %indvars.iv.next252.i = add i64 %indvars.iv251.i, 1
  %76 = trunc i64 %indvars.iv253.i to i32
  %cmp116.i = icmp slt i32 %76, %sub109.i
  br i1 %cmp116.i, label %for.body117.i, label %for.cond97.outer.i

sw.bb16:                                          ; preds = %sw.bb
  %77 = bitcast double** %entriesA.i75 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #4
  %78 = bitcast double** %entriesB.i76 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %78) #4
  %79 = bitcast i32* %inc1.i77 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79) #4
  %80 = bitcast i32* %inc2.i78 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #4
  %81 = bitcast i32* %ncolB.i79 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #4
  %82 = bitcast i32* %nentA.i80 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %82) #4
  %83 = bitcast i32* %nrowA.i81 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #4
  %84 = bitcast i32* %nrowB.i82 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #4
  %85 = bitcast i32** %indicesA.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %85) #4
  %86 = bitcast i32** %sizesA.i83 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %86) #4
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i81, i32* %nentA.i80, i32** %sizesA.i83, i32** %indicesA.i, double** %entriesA.i75) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i82, i32* %ncolB.i79, i32* %inc1.i77, i32* %inc2.i78, double** %entriesB.i76) #5
  %87 = load double** %entriesB.i76, align 8, !tbaa !0
  %88 = load i32* %ncolB.i79, align 4, !tbaa !3
  %sub203.i = add nsw i32 %88, -2
  %cmp204.i = icmp sgt i32 %sub203.i, 0
  br i1 %cmp204.i, label %for.body.lr.ph.i87, label %for.end39.i

for.body.lr.ph.i87:                               ; preds = %sw.bb16
  %89 = load i32* %nrowB.i82, align 4, !tbaa !3
  %idx.ext.i84 = sext i32 %89 to i64
  %add.ptr.sum.i85 = shl nsw i64 %idx.ext.i84, 1
  %90 = load i32* %nrowA.i81, align 4, !tbaa !3
  %91 = load i32* %nentA.i80, align 4, !tbaa !3
  %92 = load i32** %sizesA.i83, align 8, !tbaa !0
  %93 = load double** %entriesA.i75, align 8, !tbaa !0
  %94 = load i32** %indicesA.i, align 8, !tbaa !0
  %add.ptr2.sum.i86 = add i64 %add.ptr.sum.i85, %idx.ext.i84
  br label %for.body.i88

for.body.i88:                                     ; preds = %for.end35.i, %for.body.lr.ph.i87
  %jcolB.0206.i = phi i32 [ 0, %for.body.lr.ph.i87 ], [ %add.i99, %for.end35.i ]
  %colB0.0205.i = phi double* [ %87, %for.body.lr.ph.i87 ], [ %add.ptr37.i, %for.end35.i ]
  br label %for.cond4.outer.i90

for.cond4.outer.i90:                              ; preds = %for.body17.i, %for.body.i88
  %colstart.0.ph.i89 = phi i32 [ %91, %for.body.i88 ], [ %sub8.i, %for.body17.i ]
  %jcolA.0.in.ph.i = phi i32 [ %90, %for.body.i88 ], [ %jcolA.0.i, %for.body17.i ]
  %95 = sext i32 %jcolA.0.in.ph.i to i64
  br label %for.cond4.i92

for.cond4.i92:                                    ; preds = %for.body6.i95, %for.cond4.outer.i90
  %indvars.iv222.i = phi i64 [ %95, %for.cond4.outer.i90 ], [ %indvars.iv.next223.i, %for.body6.i95 ]
  %jcolA.0.in.i = phi i32 [ %jcolA.0.in.ph.i, %for.cond4.outer.i90 ], [ %jcolA.0.i, %for.body6.i95 ]
  %indvars.iv.next223.i = add i64 %indvars.iv222.i, -1
  %jcolA.0.i = add nsw i32 %jcolA.0.in.i, -1
  %96 = trunc i64 %indvars.iv222.i to i32
  %cmp5.i91 = icmp sgt i32 %96, 0
  br i1 %cmp5.i91, label %for.body6.i95, label %for.end35.i

for.body6.i95:                                    ; preds = %for.cond4.i92
  %arrayidx.i93 = getelementptr inbounds i32* %92, i64 %indvars.iv.next223.i
  %97 = load i32* %arrayidx.i93, align 4, !tbaa !3
  %cmp7.i94 = icmp sgt i32 %97, 0
  br i1 %cmp7.i94, label %for.body17.lr.ph.i, label %for.cond4.i92

for.body17.lr.ph.i:                               ; preds = %for.body6.i95
  %sub8.i = sub i32 %colstart.0.ph.i89, %97
  %arrayidx10.i = getelementptr inbounds double* %colB0.0205.i, i64 %indvars.iv.next223.i
  %98 = load double* %arrayidx10.i, align 8, !tbaa !4
  %add.ptr.sum183.i = add i64 %indvars.iv.next223.i, %idx.ext.i84
  %arrayidx12.i = getelementptr inbounds double* %colB0.0205.i, i64 %add.ptr.sum183.i
  %99 = load double* %arrayidx12.i, align 8, !tbaa !4
  %add.ptr2.sum184.i = add i64 %indvars.iv.next223.i, %add.ptr.sum.i85
  %arrayidx14.i = getelementptr inbounds double* %colB0.0205.i, i64 %add.ptr2.sum184.i
  %100 = load double* %arrayidx14.i, align 8, !tbaa !4
  %101 = sext i32 %sub8.i to i64
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i, %for.body17.lr.ph.i
  %indvars.iv224.i = phi i64 [ %101, %for.body17.lr.ph.i ], [ %indvars.iv.next225.i, %for.body17.i ]
  %ii.0198.i = phi i32 [ 0, %for.body17.lr.ph.i ], [ %inc.i, %for.body17.i ]
  %arrayidx19.i96 = getelementptr inbounds double* %93, i64 %indvars.iv224.i
  %102 = load double* %arrayidx19.i96, align 8, !tbaa !4
  %arrayidx21.i97 = getelementptr inbounds i32* %94, i64 %indvars.iv224.i
  %103 = load i32* %arrayidx21.i97, align 4, !tbaa !3
  %mul.i98 = fmul double %98, %102
  %idxprom22.i = sext i32 %103 to i64
  %arrayidx23.i = getelementptr inbounds double* %colB0.0205.i, i64 %idxprom22.i
  %104 = load double* %arrayidx23.i, align 8, !tbaa !4
  %sub24.i = fsub double %104, %mul.i98
  store double %sub24.i, double* %arrayidx23.i, align 8, !tbaa !4
  %mul25.i = fmul double %99, %102
  %add.ptr.sum185.i = add i64 %idxprom22.i, %idx.ext.i84
  %arrayidx27.i = getelementptr inbounds double* %colB0.0205.i, i64 %add.ptr.sum185.i
  %105 = load double* %arrayidx27.i, align 8, !tbaa !4
  %sub28.i = fsub double %105, %mul25.i
  store double %sub28.i, double* %arrayidx27.i, align 8, !tbaa !4
  %mul29.i = fmul double %100, %102
  %add.ptr2.sum186.i = add i64 %idxprom22.i, %add.ptr.sum.i85
  %arrayidx31.i = getelementptr inbounds double* %colB0.0205.i, i64 %add.ptr2.sum186.i
  %106 = load double* %arrayidx31.i, align 8, !tbaa !4
  %sub32.i = fsub double %106, %mul29.i
  store double %sub32.i, double* %arrayidx31.i, align 8, !tbaa !4
  %inc.i = add nsw i32 %ii.0198.i, 1
  %indvars.iv.next225.i = add i64 %indvars.iv224.i, 1
  %exitcond226.i = icmp eq i32 %inc.i, %97
  br i1 %exitcond226.i, label %for.cond4.outer.i90, label %for.body17.i

for.end35.i:                                      ; preds = %for.cond4.i92
  %add.ptr37.i = getelementptr inbounds double* %colB0.0205.i, i64 %add.ptr2.sum.i86
  %add.i99 = add nsw i32 %jcolB.0206.i, 3
  %cmp.i100 = icmp slt i32 %add.i99, %sub203.i
  br i1 %cmp.i100, label %for.body.i88, label %for.end39.i

for.end39.i:                                      ; preds = %for.end35.i, %sw.bb16
  %jcolB.0.lcssa.i101 = phi i32 [ 0, %sw.bb16 ], [ %add.i99, %for.end35.i ]
  %colB0.0.lcssa.i102 = phi double* [ %87, %sw.bb16 ], [ %add.ptr37.i, %for.end35.i ]
  %cmp41.i = icmp eq i32 %jcolB.0.lcssa.i101, %sub203.i
  br i1 %cmp41.i, label %if.then42.i, label %if.else.i108

if.then42.i:                                      ; preds = %for.end39.i
  %107 = load i32* %nrowB.i82, align 4, !tbaa !3
  %idx.ext43.i = sext i32 %107 to i64
  %108 = load i32* %nrowA.i81, align 4, !tbaa !3
  %109 = load i32* %nentA.i80, align 4, !tbaa !3
  %110 = load i32** %sizesA.i83, align 8, !tbaa !0
  %111 = load double** %entriesA.i75, align 8, !tbaa !0
  %112 = load i32** %indicesA.i, align 8, !tbaa !0
  br label %for.cond46.outer.i

for.cond46.outer.i:                               ; preds = %for.body60.i, %if.then42.i
  %colstart.2.ph.i103 = phi i32 [ %109, %if.then42.i ], [ %sub53.i, %for.body60.i ]
  %jcolA.1.in.ph.i = phi i32 [ %108, %if.then42.i ], [ %jcolA.1.i, %for.body60.i ]
  %113 = sext i32 %jcolA.1.in.ph.i to i64
  br label %for.cond46.i

for.cond46.i:                                     ; preds = %for.body48.i, %for.cond46.outer.i
  %indvars.iv.i104 = phi i64 [ %113, %for.cond46.outer.i ], [ %indvars.iv.next.i105, %for.body48.i ]
  %jcolA.1.in.i = phi i32 [ %jcolA.1.in.ph.i, %for.cond46.outer.i ], [ %jcolA.1.i, %for.body48.i ]
  %indvars.iv.next.i105 = add i64 %indvars.iv.i104, -1
  %jcolA.1.i = add nsw i32 %jcolA.1.in.i, -1
  %114 = trunc i64 %indvars.iv.i104 to i32
  %cmp47.i106 = icmp sgt i32 %114, 0
  br i1 %cmp47.i106, label %for.body48.i, label %sw.epilog34

for.body48.i:                                     ; preds = %for.cond46.i
  %arrayidx50.i = getelementptr inbounds i32* %110, i64 %indvars.iv.next.i105
  %115 = load i32* %arrayidx50.i, align 4, !tbaa !3
  %cmp51.i = icmp sgt i32 %115, 0
  br i1 %cmp51.i, label %for.body60.lr.ph.i, label %for.cond46.i

for.body60.lr.ph.i:                               ; preds = %for.body48.i
  %sub53.i = sub i32 %colstart.2.ph.i103, %115
  %arrayidx55.i = getelementptr inbounds double* %colB0.0.lcssa.i102, i64 %indvars.iv.next.i105
  %116 = load double* %arrayidx55.i, align 8, !tbaa !4
  %add.ptr44.sum.i = add i64 %indvars.iv.next.i105, %idx.ext43.i
  %arrayidx57.i = getelementptr inbounds double* %colB0.0.lcssa.i102, i64 %add.ptr44.sum.i
  %117 = load double* %arrayidx57.i, align 8, !tbaa !4
  %118 = sext i32 %sub53.i to i64
  br label %for.body60.i

for.body60.i:                                     ; preds = %for.body60.i, %for.body60.lr.ph.i
  %indvars.iv211.i = phi i64 [ %118, %for.body60.lr.ph.i ], [ %indvars.iv.next212.i, %for.body60.i ]
  %ii.1188.i = phi i32 [ 0, %for.body60.lr.ph.i ], [ %inc74.i, %for.body60.i ]
  %arrayidx62.i = getelementptr inbounds double* %111, i64 %indvars.iv211.i
  %119 = load double* %arrayidx62.i, align 8, !tbaa !4
  %arrayidx64.i = getelementptr inbounds i32* %112, i64 %indvars.iv211.i
  %120 = load i32* %arrayidx64.i, align 4, !tbaa !3
  %mul65.i = fmul double %116, %119
  %idxprom66.i = sext i32 %120 to i64
  %arrayidx67.i = getelementptr inbounds double* %colB0.0.lcssa.i102, i64 %idxprom66.i
  %121 = load double* %arrayidx67.i, align 8, !tbaa !4
  %sub68.i = fsub double %121, %mul65.i
  store double %sub68.i, double* %arrayidx67.i, align 8, !tbaa !4
  %mul69.i = fmul double %117, %119
  %add.ptr44.sum182.i = add i64 %idxprom66.i, %idx.ext43.i
  %arrayidx71.i107 = getelementptr inbounds double* %colB0.0.lcssa.i102, i64 %add.ptr44.sum182.i
  %122 = load double* %arrayidx71.i107, align 8, !tbaa !4
  %sub72.i = fsub double %122, %mul69.i
  store double %sub72.i, double* %arrayidx71.i107, align 8, !tbaa !4
  %inc74.i = add nsw i32 %ii.1188.i, 1
  %indvars.iv.next212.i = add i64 %indvars.iv211.i, 1
  %exitcond.i = icmp eq i32 %inc74.i, %115
  br i1 %exitcond.i, label %for.cond46.outer.i, label %for.body60.i

if.else.i108:                                     ; preds = %for.end39.i
  %sub81.i = add nsw i32 %88, -1
  %cmp82.i = icmp eq i32 %jcolB.0.lcssa.i101, %sub81.i
  br i1 %cmp82.i, label %if.then83.i, label %sw.epilog34

if.then83.i:                                      ; preds = %if.else.i108
  %123 = load i32* %nrowA.i81, align 4, !tbaa !3
  %124 = load i32* %nentA.i80, align 4, !tbaa !3
  %125 = load i32** %sizesA.i83, align 8, !tbaa !0
  %126 = load double** %entriesA.i75, align 8, !tbaa !0
  %127 = load i32** %indicesA.i, align 8, !tbaa !0
  br label %for.cond85.outer.i

for.cond85.outer.i:                               ; preds = %for.body97.i, %if.then83.i
  %colstart.4.ph.i109 = phi i32 [ %124, %if.then83.i ], [ %sub92.i, %for.body97.i ]
  %jcolA.2.in.ph.i = phi i32 [ %123, %if.then83.i ], [ %jcolA.2.i, %for.body97.i ]
  %128 = sext i32 %jcolA.2.in.ph.i to i64
  br label %for.cond85.i

for.cond85.i:                                     ; preds = %for.body87.i, %for.cond85.outer.i
  %indvars.iv215.i = phi i64 [ %128, %for.cond85.outer.i ], [ %indvars.iv.next216.i, %for.body87.i ]
  %jcolA.2.in.i = phi i32 [ %jcolA.2.in.ph.i, %for.cond85.outer.i ], [ %jcolA.2.i, %for.body87.i ]
  %indvars.iv.next216.i = add i64 %indvars.iv215.i, -1
  %jcolA.2.i = add nsw i32 %jcolA.2.in.i, -1
  %129 = trunc i64 %indvars.iv215.i to i32
  %cmp86.i = icmp sgt i32 %129, 0
  br i1 %cmp86.i, label %for.body87.i, label %sw.epilog34

for.body87.i:                                     ; preds = %for.cond85.i
  %arrayidx89.i = getelementptr inbounds i32* %125, i64 %indvars.iv.next216.i
  %130 = load i32* %arrayidx89.i, align 4, !tbaa !3
  %cmp90.i = icmp sgt i32 %130, 0
  br i1 %cmp90.i, label %for.body97.lr.ph.i, label %for.cond85.i

for.body97.lr.ph.i:                               ; preds = %for.body87.i
  %sub92.i = sub i32 %colstart.4.ph.i109, %130
  %arrayidx94.i = getelementptr inbounds double* %colB0.0.lcssa.i102, i64 %indvars.iv.next216.i
  %131 = load double* %arrayidx94.i, align 8, !tbaa !4
  %132 = sext i32 %sub92.i to i64
  br label %for.body97.i

for.body97.i:                                     ; preds = %for.body97.i, %for.body97.lr.ph.i
  %indvars.iv217.i = phi i64 [ %132, %for.body97.lr.ph.i ], [ %indvars.iv.next218.i, %for.body97.i ]
  %ii.2192.i = phi i32 [ 0, %for.body97.lr.ph.i ], [ %inc107.i, %for.body97.i ]
  %arrayidx99.i = getelementptr inbounds double* %126, i64 %indvars.iv217.i
  %133 = load double* %arrayidx99.i, align 8, !tbaa !4
  %arrayidx101.i110 = getelementptr inbounds i32* %127, i64 %indvars.iv217.i
  %134 = load i32* %arrayidx101.i110, align 4, !tbaa !3
  %mul102.i = fmul double %131, %133
  %idxprom103.i = sext i32 %134 to i64
  %arrayidx104.i = getelementptr inbounds double* %colB0.0.lcssa.i102, i64 %idxprom103.i
  %135 = load double* %arrayidx104.i, align 8, !tbaa !4
  %sub105.i = fsub double %135, %mul102.i
  store double %sub105.i, double* %arrayidx104.i, align 8, !tbaa !4
  %inc107.i = add nsw i32 %ii.2192.i, 1
  %indvars.iv.next218.i = add i64 %indvars.iv217.i, 1
  %exitcond219.i = icmp eq i32 %inc107.i, %130
  br i1 %exitcond219.i, label %for.cond85.outer.i, label %for.body97.i

sw.bb17:                                          ; preds = %sw.bb
  %136 = bitcast double** %entriesA.i111 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %136) #4
  %137 = bitcast double** %entriesB.i112 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %137) #4
  %138 = bitcast i32* %inc1.i113 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %138) #4
  %139 = bitcast i32* %inc2.i114 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %139) #4
  %140 = bitcast i32* %ncolB.i115 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %140) #4
  %141 = bitcast i32* %nentA.i116 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %141) #4
  %142 = bitcast i32* %nrowA.i117 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %142) #4
  %143 = bitcast i32* %nrowB.i118 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %143) #4
  %144 = bitcast i32** %firstlocsA.i119 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %144) #4
  %145 = bitcast i32** %sizesA.i120 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %145) #4
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i117, i32* %nentA.i116, i32** %firstlocsA.i119, i32** %sizesA.i120, double** %entriesA.i111) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i118, i32* %ncolB.i115, i32* %inc1.i113, i32* %inc2.i114, double** %entriesB.i112) #5
  %146 = load double** %entriesB.i112, align 8, !tbaa !0
  %147 = load i32* %ncolB.i115, align 4, !tbaa !3
  %sub240.i = add nsw i32 %147, -2
  %cmp241.i = icmp sgt i32 %sub240.i, 0
  br i1 %cmp241.i, label %for.body.lr.ph.i124, label %for.end45.i140

for.body.lr.ph.i124:                              ; preds = %sw.bb17
  %148 = load i32* %nrowB.i118, align 4, !tbaa !3
  %idx.ext.i121 = sext i32 %148 to i64
  %add.ptr.sum.i122 = shl nsw i64 %idx.ext.i121, 1
  %149 = load i32* %nrowA.i117, align 4, !tbaa !3
  %cmp4237.i = icmp sgt i32 %149, 0
  %add.ptr2.sum.i123 = add i64 %add.ptr.sum.i122, %idx.ext.i121
  %150 = load i32** %sizesA.i120, align 8, !tbaa !0
  %151 = load i32** %firstlocsA.i119, align 8, !tbaa !0
  %152 = load double** %entriesA.i111, align 8, !tbaa !0
  br label %for.body.i125

for.body.i125:                                    ; preds = %for.end40.i136, %for.body.lr.ph.i124
  %jcolB.0244.i = phi i32 [ 0, %for.body.lr.ph.i124 ], [ %add44.i134, %for.end40.i136 ]
  %colB0.0242.i = phi double* [ %146, %for.body.lr.ph.i124 ], [ %add.ptr42.i133, %for.end40.i136 ]
  br i1 %cmp4237.i, label %for.body5.i, label %for.end40.i136

for.body5.i:                                      ; preds = %for.body.i125, %for.inc38.i
  %indvars.iv265.i = phi i64 [ %indvars.iv.next266.i, %for.inc38.i ], [ 0, %for.body.i125 ]
  %kk.0239.i = phi i32 [ %kk.2.i, %for.inc38.i ], [ 0, %for.body.i125 ]
  %arrayidx.i126 = getelementptr inbounds i32* %150, i64 %indvars.iv265.i
  %153 = load i32* %arrayidx.i126, align 4, !tbaa !3
  %cmp6.i = icmp sgt i32 %153, 0
  br i1 %cmp6.i, label %if.then.i128, label %for.inc38.i

if.then.i128:                                     ; preds = %for.body5.i
  %arrayidx8.i = getelementptr inbounds i32* %151, i64 %indvars.iv265.i
  %154 = load i32* %arrayidx8.i, align 4, !tbaa !3
  %add.i127 = add i32 %153, -1
  %sub11.i = add i32 %add.i127, %154
  %cmp13227.i = icmp sgt i32 %154, %sub11.i
  br i1 %cmp13227.i, label %for.end.i, label %for.body14.lr.ph.i

for.body14.lr.ph.i:                               ; preds = %if.then.i128
  %155 = sext i32 %kk.0239.i to i64
  %156 = sext i32 %154 to i64
  br label %for.body14.i

for.body14.i:                                     ; preds = %for.body14.i, %for.body14.lr.ph.i
  %indvars.iv262.i = phi i64 [ %indvars.iv.next263.i, %for.body14.i ], [ %156, %for.body14.lr.ph.i ]
  %indvars.iv260.i = phi i64 [ %indvars.iv.next261.i, %for.body14.i ], [ %155, %for.body14.lr.ph.i ]
  %sum2.0230.i = phi double [ %add27.i, %for.body14.i ], [ 0.000000e+00, %for.body14.lr.ph.i ]
  %sum1.0229.i = phi double [ %add23.i, %for.body14.i ], [ 0.000000e+00, %for.body14.lr.ph.i ]
  %sum0.0228.i = phi double [ %add19.i, %for.body14.i ], [ 0.000000e+00, %for.body14.lr.ph.i ]
  %arrayidx16.i = getelementptr inbounds double* %152, i64 %indvars.iv260.i
  %157 = load double* %arrayidx16.i, align 8, !tbaa !4
  %arrayidx18.i = getelementptr inbounds double* %colB0.0242.i, i64 %indvars.iv262.i
  %158 = load double* %arrayidx18.i, align 8, !tbaa !4
  %mul.i129 = fmul double %157, %158
  %add19.i = fadd double %sum0.0228.i, %mul.i129
  %add.ptr.sum205.i = add i64 %indvars.iv262.i, %idx.ext.i121
  %arrayidx21.i130 = getelementptr inbounds double* %colB0.0242.i, i64 %add.ptr.sum205.i
  %159 = load double* %arrayidx21.i130, align 8, !tbaa !4
  %mul22.i = fmul double %157, %159
  %add23.i = fadd double %sum1.0229.i, %mul22.i
  %add.ptr2.sum206.i = add i64 %indvars.iv262.i, %add.ptr.sum.i122
  %arrayidx25.i = getelementptr inbounds double* %colB0.0242.i, i64 %add.ptr2.sum206.i
  %160 = load double* %arrayidx25.i, align 8, !tbaa !4
  %mul26.i = fmul double %157, %160
  %add27.i = fadd double %sum2.0230.i, %mul26.i
  %indvars.iv.next263.i = add i64 %indvars.iv262.i, 1
  %indvars.iv.next261.i = add i64 %indvars.iv260.i, 1
  %161 = trunc i64 %indvars.iv262.i to i32
  %cmp13.i = icmp slt i32 %161, %sub11.i
  br i1 %cmp13.i, label %for.body14.i, label %for.cond12.for.end_crit_edge.i

for.cond12.for.end_crit_edge.i:                   ; preds = %for.body14.i
  %162 = add i32 %153, %kk.0239.i
  br label %for.end.i

for.end.i:                                        ; preds = %for.cond12.for.end_crit_edge.i, %if.then.i128
  %kk.1.lcssa.i = phi i32 [ %162, %for.cond12.for.end_crit_edge.i ], [ %kk.0239.i, %if.then.i128 ]
  %sum2.0.lcssa.i = phi double [ %add27.i, %for.cond12.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i128 ]
  %sum1.0.lcssa.i = phi double [ %add23.i, %for.cond12.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i128 ]
  %sum0.0.lcssa.i = phi double [ %add19.i, %for.cond12.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i128 ]
  %arrayidx30.i = getelementptr inbounds double* %colB0.0242.i, i64 %indvars.iv265.i
  %163 = load double* %arrayidx30.i, align 8, !tbaa !4
  %sub31.i = fsub double %163, %sum0.0.lcssa.i
  store double %sub31.i, double* %arrayidx30.i, align 8, !tbaa !4
  %add.ptr.sum203.i = add i64 %indvars.iv265.i, %idx.ext.i121
  %arrayidx33.i = getelementptr inbounds double* %colB0.0242.i, i64 %add.ptr.sum203.i
  %164 = load double* %arrayidx33.i, align 8, !tbaa !4
  %sub34.i = fsub double %164, %sum1.0.lcssa.i
  store double %sub34.i, double* %arrayidx33.i, align 8, !tbaa !4
  %add.ptr2.sum204.i = add i64 %indvars.iv265.i, %add.ptr.sum.i122
  %arrayidx36.i131 = getelementptr inbounds double* %colB0.0242.i, i64 %add.ptr2.sum204.i
  %165 = load double* %arrayidx36.i131, align 8, !tbaa !4
  %sub37.i132 = fsub double %165, %sum2.0.lcssa.i
  store double %sub37.i132, double* %arrayidx36.i131, align 8, !tbaa !4
  br label %for.inc38.i

for.inc38.i:                                      ; preds = %for.end.i, %for.body5.i
  %kk.2.i = phi i32 [ %kk.1.lcssa.i, %for.end.i ], [ %kk.0239.i, %for.body5.i ]
  %indvars.iv.next266.i = add i64 %indvars.iv265.i, 1
  %lftr.wideiv674 = trunc i64 %indvars.iv.next266.i to i32
  %exitcond675 = icmp eq i32 %lftr.wideiv674, %149
  br i1 %exitcond675, label %for.end40.i136, label %for.body5.i

for.end40.i136:                                   ; preds = %for.inc38.i, %for.body.i125
  %add.ptr42.i133 = getelementptr inbounds double* %colB0.0242.i, i64 %add.ptr2.sum.i123
  %add44.i134 = add nsw i32 %jcolB.0244.i, 3
  %cmp.i135 = icmp slt i32 %add44.i134, %sub240.i
  br i1 %cmp.i135, label %for.body.i125, label %for.end45.i140

for.end45.i140:                                   ; preds = %for.end40.i136, %sw.bb17
  %jcolB.0.lcssa.i137 = phi i32 [ 0, %sw.bb17 ], [ %add44.i134, %for.end40.i136 ]
  %colB0.0.lcssa.i138 = phi double* [ %146, %sw.bb17 ], [ %add.ptr42.i133, %for.end40.i136 ]
  %cmp47.i139 = icmp eq i32 %jcolB.0.lcssa.i137, %sub240.i
  br i1 %cmp47.i139, label %if.then48.i142, label %if.else.i151

if.then48.i142:                                   ; preds = %for.end45.i140
  %166 = load i32* %nrowB.i118, align 4, !tbaa !3
  %idx.ext49.i141 = sext i32 %166 to i64
  %167 = load i32* %nrowA.i117, align 4, !tbaa !3
  %cmp52214.i = icmp sgt i32 %167, 0
  br i1 %cmp52214.i, label %for.body53.lr.ph.i, label %sw.epilog34

for.body53.lr.ph.i:                               ; preds = %if.then48.i142
  %168 = load i32** %sizesA.i120, align 8, !tbaa !0
  %169 = load i32** %firstlocsA.i119, align 8, !tbaa !0
  %170 = load double** %entriesA.i111, align 8, !tbaa !0
  br label %for.body53.i

for.body53.i:                                     ; preds = %for.inc88.i, %for.body53.lr.ph.i
  %indvars.iv251.i143 = phi i64 [ 0, %for.body53.lr.ph.i ], [ %indvars.iv.next252.i150, %for.inc88.i ]
  %kk.3216.i = phi i32 [ 0, %for.body53.lr.ph.i ], [ %kk.5.i, %for.inc88.i ]
  %arrayidx55.i144 = getelementptr inbounds i32* %168, i64 %indvars.iv251.i143
  %171 = load i32* %arrayidx55.i144, align 4, !tbaa !3
  %cmp56.i = icmp sgt i32 %171, 0
  br i1 %cmp56.i, label %if.then57.i, label %for.inc88.i

if.then57.i:                                      ; preds = %for.body53.i
  %arrayidx59.i = getelementptr inbounds i32* %169, i64 %indvars.iv251.i143
  %172 = load i32* %arrayidx59.i, align 4, !tbaa !3
  %add62.i = add i32 %171, -1
  %sub63.i = add i32 %add62.i, %172
  %cmp65207.i = icmp sgt i32 %172, %sub63.i
  br i1 %cmp65207.i, label %for.end80.i, label %for.body66.lr.ph.i

for.body66.lr.ph.i:                               ; preds = %if.then57.i
  %173 = sext i32 %kk.3216.i to i64
  %174 = sext i32 %172 to i64
  br label %for.body66.i

for.body66.i:                                     ; preds = %for.body66.i, %for.body66.lr.ph.i
  %indvars.iv249.i145 = phi i64 [ %indvars.iv.next250.i147, %for.body66.i ], [ %174, %for.body66.lr.ph.i ]
  %indvars.iv.i146 = phi i64 [ %indvars.iv.next.i148, %for.body66.i ], [ %173, %for.body66.lr.ph.i ]
  %sum1.1209.i = phi double [ %add76.i, %for.body66.i ], [ 0.000000e+00, %for.body66.lr.ph.i ]
  %sum0.1208.i = phi double [ %add72.i, %for.body66.i ], [ 0.000000e+00, %for.body66.lr.ph.i ]
  %arrayidx68.i = getelementptr inbounds double* %170, i64 %indvars.iv.i146
  %175 = load double* %arrayidx68.i, align 8, !tbaa !4
  %arrayidx70.i = getelementptr inbounds double* %colB0.0.lcssa.i138, i64 %indvars.iv249.i145
  %176 = load double* %arrayidx70.i, align 8, !tbaa !4
  %mul71.i = fmul double %175, %176
  %add72.i = fadd double %sum0.1208.i, %mul71.i
  %add.ptr50.sum202.i = add i64 %indvars.iv249.i145, %idx.ext49.i141
  %arrayidx74.i = getelementptr inbounds double* %colB0.0.lcssa.i138, i64 %add.ptr50.sum202.i
  %177 = load double* %arrayidx74.i, align 8, !tbaa !4
  %mul75.i = fmul double %175, %177
  %add76.i = fadd double %sum1.1209.i, %mul75.i
  %indvars.iv.next250.i147 = add i64 %indvars.iv249.i145, 1
  %indvars.iv.next.i148 = add i64 %indvars.iv.i146, 1
  %178 = trunc i64 %indvars.iv249.i145 to i32
  %cmp65.i = icmp slt i32 %178, %sub63.i
  br i1 %cmp65.i, label %for.body66.i, label %for.cond64.for.end80_crit_edge.i

for.cond64.for.end80_crit_edge.i:                 ; preds = %for.body66.i
  %179 = add i32 %171, %kk.3216.i
  br label %for.end80.i

for.end80.i:                                      ; preds = %for.cond64.for.end80_crit_edge.i, %if.then57.i
  %kk.4.lcssa.i = phi i32 [ %179, %for.cond64.for.end80_crit_edge.i ], [ %kk.3216.i, %if.then57.i ]
  %sum1.1.lcssa.i = phi double [ %add76.i, %for.cond64.for.end80_crit_edge.i ], [ 0.000000e+00, %if.then57.i ]
  %sum0.1.lcssa.i = phi double [ %add72.i, %for.cond64.for.end80_crit_edge.i ], [ 0.000000e+00, %if.then57.i ]
  %arrayidx82.i = getelementptr inbounds double* %colB0.0.lcssa.i138, i64 %indvars.iv251.i143
  %180 = load double* %arrayidx82.i, align 8, !tbaa !4
  %sub83.i = fsub double %180, %sum0.1.lcssa.i
  store double %sub83.i, double* %arrayidx82.i, align 8, !tbaa !4
  %add.ptr50.sum.i149 = add i64 %indvars.iv251.i143, %idx.ext49.i141
  %arrayidx85.i = getelementptr inbounds double* %colB0.0.lcssa.i138, i64 %add.ptr50.sum.i149
  %181 = load double* %arrayidx85.i, align 8, !tbaa !4
  %sub86.i = fsub double %181, %sum1.1.lcssa.i
  store double %sub86.i, double* %arrayidx85.i, align 8, !tbaa !4
  br label %for.inc88.i

for.inc88.i:                                      ; preds = %for.end80.i, %for.body53.i
  %kk.5.i = phi i32 [ %kk.4.lcssa.i, %for.end80.i ], [ %kk.3216.i, %for.body53.i ]
  %indvars.iv.next252.i150 = add i64 %indvars.iv251.i143, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next252.i150 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %167
  br i1 %exitcond, label %sw.epilog34, label %for.body53.i

if.else.i151:                                     ; preds = %for.end45.i140
  %sub91.i = add nsw i32 %147, -1
  %cmp92.i = icmp eq i32 %jcolB.0.lcssa.i137, %sub91.i
  br i1 %cmp92.i, label %for.cond94.preheader.i, label %sw.epilog34

for.cond94.preheader.i:                           ; preds = %if.else.i151
  %182 = load i32* %nrowA.i117, align 4, !tbaa !3
  %cmp95224.i = icmp sgt i32 %182, 0
  br i1 %cmp95224.i, label %for.body96.lr.ph.i, label %sw.epilog34

for.body96.lr.ph.i:                               ; preds = %for.cond94.preheader.i
  %183 = load i32** %sizesA.i120, align 8, !tbaa !0
  %184 = load i32** %firstlocsA.i119, align 8, !tbaa !0
  %185 = load double** %entriesA.i111, align 8, !tbaa !0
  br label %for.body96.i

for.body96.i:                                     ; preds = %for.inc124.i, %for.body96.lr.ph.i
  %indvars.iv258.i = phi i64 [ 0, %for.body96.lr.ph.i ], [ %indvars.iv.next259.i, %for.inc124.i ]
  %kk.6226.i = phi i32 [ 0, %for.body96.lr.ph.i ], [ %kk.8.i, %for.inc124.i ]
  %arrayidx98.i = getelementptr inbounds i32* %183, i64 %indvars.iv258.i
  %186 = load i32* %arrayidx98.i, align 4, !tbaa !3
  %cmp99.i = icmp sgt i32 %186, 0
  br i1 %cmp99.i, label %if.then100.i, label %for.inc124.i

if.then100.i:                                     ; preds = %for.body96.i
  %arrayidx102.i = getelementptr inbounds i32* %184, i64 %indvars.iv258.i
  %187 = load i32* %arrayidx102.i, align 4, !tbaa !3
  %add105.i = add i32 %186, -1
  %sub106.i = add i32 %add105.i, %187
  %cmp108217.i = icmp sgt i32 %187, %sub106.i
  br i1 %cmp108217.i, label %for.end119.i, label %for.body109.lr.ph.i

for.body109.lr.ph.i:                              ; preds = %if.then100.i
  %188 = sext i32 %kk.6226.i to i64
  %189 = sext i32 %187 to i64
  br label %for.body109.i

for.body109.i:                                    ; preds = %for.body109.i, %for.body109.lr.ph.i
  %indvars.iv255.i = phi i64 [ %indvars.iv.next256.i, %for.body109.i ], [ %189, %for.body109.lr.ph.i ]
  %indvars.iv253.i152 = phi i64 [ %indvars.iv.next254.i153, %for.body109.i ], [ %188, %for.body109.lr.ph.i ]
  %sum0.2218.i = phi double [ %add115.i, %for.body109.i ], [ 0.000000e+00, %for.body109.lr.ph.i ]
  %arrayidx111.i = getelementptr inbounds double* %185, i64 %indvars.iv253.i152
  %190 = load double* %arrayidx111.i, align 8, !tbaa !4
  %arrayidx113.i = getelementptr inbounds double* %colB0.0.lcssa.i138, i64 %indvars.iv255.i
  %191 = load double* %arrayidx113.i, align 8, !tbaa !4
  %mul114.i = fmul double %190, %191
  %add115.i = fadd double %sum0.2218.i, %mul114.i
  %indvars.iv.next256.i = add i64 %indvars.iv255.i, 1
  %indvars.iv.next254.i153 = add i64 %indvars.iv253.i152, 1
  %192 = trunc i64 %indvars.iv255.i to i32
  %cmp108.i = icmp slt i32 %192, %sub106.i
  br i1 %cmp108.i, label %for.body109.i, label %for.cond107.for.end119_crit_edge.i

for.cond107.for.end119_crit_edge.i:               ; preds = %for.body109.i
  %193 = add i32 %186, %kk.6226.i
  br label %for.end119.i

for.end119.i:                                     ; preds = %for.cond107.for.end119_crit_edge.i, %if.then100.i
  %kk.7.lcssa.i = phi i32 [ %193, %for.cond107.for.end119_crit_edge.i ], [ %kk.6226.i, %if.then100.i ]
  %sum0.2.lcssa.i = phi double [ %add115.i, %for.cond107.for.end119_crit_edge.i ], [ 0.000000e+00, %if.then100.i ]
  %arrayidx121.i = getelementptr inbounds double* %colB0.0.lcssa.i138, i64 %indvars.iv258.i
  %194 = load double* %arrayidx121.i, align 8, !tbaa !4
  %sub122.i = fsub double %194, %sum0.2.lcssa.i
  store double %sub122.i, double* %arrayidx121.i, align 8, !tbaa !4
  br label %for.inc124.i

for.inc124.i:                                     ; preds = %for.end119.i, %for.body96.i
  %kk.8.i = phi i32 [ %kk.7.lcssa.i, %for.end119.i ], [ %kk.6226.i, %for.body96.i ]
  %indvars.iv.next259.i = add i64 %indvars.iv258.i, 1
  %lftr.wideiv672 = trunc i64 %indvars.iv.next259.i to i32
  %exitcond673 = icmp eq i32 %lftr.wideiv672, %182
  br i1 %exitcond673, label %sw.epilog34, label %for.body96.i

sw.bb18:                                          ; preds = %sw.bb
  %195 = bitcast double** %entriesA.i154 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %195) #4
  %196 = bitcast double** %entriesB.i155 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %196) #4
  %197 = bitcast i32* %inc1.i156 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %197) #4
  %198 = bitcast i32* %inc2.i157 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %198) #4
  %199 = bitcast i32* %ncolB.i158 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %199) #4
  %200 = bitcast i32* %nentA.i159 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %200) #4
  %201 = bitcast i32* %nrowA.i160 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %201) #4
  %202 = bitcast i32* %nrowB.i161 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %202) #4
  %203 = bitcast i32** %indicesA.i162 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %203) #4
  %204 = bitcast i32** %sizesA.i163 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %204) #4
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i160, i32* %nentA.i159, i32** %sizesA.i163, i32** %indicesA.i162, double** %entriesA.i154) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i161, i32* %ncolB.i158, i32* %inc1.i156, i32* %inc2.i157, double** %entriesB.i155) #5
  %205 = load double** %entriesB.i155, align 8, !tbaa !0
  %206 = load i32* %ncolB.i158, align 4, !tbaa !3
  %sub264.i = add nsw i32 %206, -2
  %cmp265.i = icmp sgt i32 %sub264.i, 0
  br i1 %cmp265.i, label %for.body.lr.ph.i167, label %for.end45.i190

for.body.lr.ph.i167:                              ; preds = %sw.bb18
  %207 = load i32* %nrowB.i161, align 4, !tbaa !3
  %idx.ext.i164 = sext i32 %207 to i64
  %add.ptr.sum.i165 = shl nsw i64 %idx.ext.i164, 1
  %208 = load i32* %nrowA.i160, align 4, !tbaa !3
  %cmp4254.i = icmp sgt i32 %208, 0
  %add.ptr2.sum.i166 = add i64 %add.ptr.sum.i165, %idx.ext.i164
  %209 = load i32** %sizesA.i163, align 8, !tbaa !0
  %210 = load double** %entriesA.i154, align 8, !tbaa !0
  %211 = load i32** %indicesA.i162, align 8, !tbaa !0
  br label %for.body.i168

for.body.i168:                                    ; preds = %for.end40.i186, %for.body.lr.ph.i167
  %jcolB.0268.i = phi i32 [ 0, %for.body.lr.ph.i167 ], [ %add44.i184, %for.end40.i186 ]
  %colB0.0266.i = phi double* [ %205, %for.body.lr.ph.i167 ], [ %add.ptr42.i183, %for.end40.i186 ]
  br i1 %cmp4254.i, label %for.body5.i171, label %for.end40.i186

for.body5.i171:                                   ; preds = %for.body.i168, %for.inc38.i182
  %indvars.iv290.i = phi i64 [ %indvars.iv.next291.i, %for.inc38.i182 ], [ 0, %for.body.i168 ]
  %kk.0258.i = phi i32 [ %kk.2.i180, %for.inc38.i182 ], [ 0, %for.body.i168 ]
  %irowA.0255.i = phi i32 [ %inc39.i, %for.inc38.i182 ], [ 0, %for.body.i168 ]
  %arrayidx.i169 = getelementptr inbounds i32* %209, i64 %indvars.iv290.i
  %212 = load i32* %arrayidx.i169, align 4, !tbaa !3
  %cmp6.i170 = icmp sgt i32 %212, 0
  br i1 %cmp6.i170, label %for.body9.lr.ph.i, label %for.inc38.i182

for.body9.lr.ph.i:                                ; preds = %for.body5.i171
  %213 = sext i32 %kk.0258.i to i64
  %214 = trunc i64 %indvars.iv290.i to i32
  br label %for.body9.i

for.body9.i:                                      ; preds = %if.end.i, %for.body9.lr.ph.i
  %indvars.iv287.i = phi i64 [ %213, %for.body9.lr.ph.i ], [ %indvars.iv.next288.i, %if.end.i ]
  %kk.1248.i = phi i32 [ %kk.0258.i, %for.body9.lr.ph.i ], [ %inc27.i, %if.end.i ]
  %ii.0247.i = phi i32 [ 0, %for.body9.lr.ph.i ], [ %inc.i176, %if.end.i ]
  %sum2.0246.i = phi double [ 0.000000e+00, %for.body9.lr.ph.i ], [ %add26.i, %if.end.i ]
  %sum1.0245.i = phi double [ 0.000000e+00, %for.body9.lr.ph.i ], [ %add22.i, %if.end.i ]
  %sum0.0244.i = phi double [ 0.000000e+00, %for.body9.lr.ph.i ], [ %add.i174, %if.end.i ]
  %arrayidx11.i = getelementptr inbounds double* %210, i64 %indvars.iv287.i
  %215 = load double* %arrayidx11.i, align 8, !tbaa !4
  %arrayidx13.i = getelementptr inbounds i32* %211, i64 %indvars.iv287.i
  %216 = load i32* %arrayidx13.i, align 4, !tbaa !3
  %cmp14.i = icmp sgt i32 %216, -1
  %cmp15.i = icmp slt i32 %216, %214
  %or.cond.i = and i1 %cmp14.i, %cmp15.i
  br i1 %or.cond.i, label %if.end.i, label %if.then16.i

if.then16.i:                                      ; preds = %for.body9.i
  %217 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %217, i8* getelementptr inbounds ([52 x i8]* @.str5, i64 0, i64 0), i32 %irowA.0255.i, i32 %kk.1248.i, i32 %ii.0247.i, i32 %216) #5
  call void @exit(i32 -1) #6
  unreachable

if.end.i:                                         ; preds = %for.body9.i
  %idxprom17.i = sext i32 %216 to i64
  %arrayidx18.i172 = getelementptr inbounds double* %colB0.0266.i, i64 %idxprom17.i
  %218 = load double* %arrayidx18.i172, align 8, !tbaa !4
  %mul.i173 = fmul double %215, %218
  %add.i174 = fadd double %sum0.0244.i, %mul.i173
  %add.ptr.sum208.i = add i64 %idxprom17.i, %idx.ext.i164
  %arrayidx20.i = getelementptr inbounds double* %colB0.0266.i, i64 %add.ptr.sum208.i
  %219 = load double* %arrayidx20.i, align 8, !tbaa !4
  %mul21.i = fmul double %215, %219
  %add22.i = fadd double %sum1.0245.i, %mul21.i
  %add.ptr2.sum209.i = add i64 %idxprom17.i, %add.ptr.sum.i165
  %arrayidx24.i = getelementptr inbounds double* %colB0.0266.i, i64 %add.ptr2.sum209.i
  %220 = load double* %arrayidx24.i, align 8, !tbaa !4
  %mul25.i175 = fmul double %215, %220
  %add26.i = fadd double %sum2.0246.i, %mul25.i175
  %inc.i176 = add nsw i32 %ii.0247.i, 1
  %indvars.iv.next288.i = add i64 %indvars.iv287.i, 1
  %inc27.i = add nsw i32 %kk.1248.i, 1
  %cmp8.i = icmp slt i32 %inc.i176, %212
  br i1 %cmp8.i, label %for.body9.i, label %for.end.i179

for.end.i179:                                     ; preds = %if.end.i
  %arrayidx29.i = getelementptr inbounds double* %colB0.0266.i, i64 %indvars.iv290.i
  %221 = load double* %arrayidx29.i, align 8, !tbaa !4
  %sub30.i = fsub double %221, %add.i174
  store double %sub30.i, double* %arrayidx29.i, align 8, !tbaa !4
  %add.ptr.sum206.i = add i64 %indvars.iv290.i, %idx.ext.i164
  %arrayidx32.i177 = getelementptr inbounds double* %colB0.0266.i, i64 %add.ptr.sum206.i
  %222 = load double* %arrayidx32.i177, align 8, !tbaa !4
  %sub33.i178 = fsub double %222, %add22.i
  store double %sub33.i178, double* %arrayidx32.i177, align 8, !tbaa !4
  %add.ptr2.sum207.i = add i64 %indvars.iv290.i, %add.ptr.sum.i165
  %arrayidx35.i = getelementptr inbounds double* %colB0.0266.i, i64 %add.ptr2.sum207.i
  %223 = load double* %arrayidx35.i, align 8, !tbaa !4
  %sub36.i = fsub double %223, %add26.i
  store double %sub36.i, double* %arrayidx35.i, align 8, !tbaa !4
  br label %for.inc38.i182

for.inc38.i182:                                   ; preds = %for.end.i179, %for.body5.i171
  %kk.2.i180 = phi i32 [ %inc27.i, %for.end.i179 ], [ %kk.0258.i, %for.body5.i171 ]
  %indvars.iv.next291.i = add i64 %indvars.iv290.i, 1
  %inc39.i = add nsw i32 %irowA.0255.i, 1
  %224 = trunc i64 %indvars.iv.next291.i to i32
  %cmp4.i181 = icmp slt i32 %224, %208
  br i1 %cmp4.i181, label %for.body5.i171, label %for.end40.i186

for.end40.i186:                                   ; preds = %for.inc38.i182, %for.body.i168
  %add.ptr42.i183 = getelementptr inbounds double* %colB0.0266.i, i64 %add.ptr2.sum.i166
  %add44.i184 = add nsw i32 %jcolB.0268.i, 3
  %cmp.i185 = icmp slt i32 %add44.i184, %sub264.i
  br i1 %cmp.i185, label %for.body.i168, label %for.end45.i190

for.end45.i190:                                   ; preds = %for.end40.i186, %sw.bb18
  %jcolB.0.lcssa.i187 = phi i32 [ 0, %sw.bb18 ], [ %add44.i184, %for.end40.i186 ]
  %colB0.0.lcssa.i188 = phi double* [ %205, %sw.bb18 ], [ %add.ptr42.i183, %for.end40.i186 ]
  %cmp47.i189 = icmp eq i32 %jcolB.0.lcssa.i187, %sub264.i
  br i1 %cmp47.i189, label %if.then48.i192, label %if.else.i211

if.then48.i192:                                   ; preds = %for.end45.i190
  %225 = load i32* %nrowB.i161, align 4, !tbaa !3
  %idx.ext49.i191 = sext i32 %225 to i64
  %226 = load i32* %nrowA.i160, align 4, !tbaa !3
  %cmp52218.i = icmp sgt i32 %226, 0
  br i1 %cmp52218.i, label %for.body53.lr.ph.i193, label %sw.epilog34

for.body53.lr.ph.i193:                            ; preds = %if.then48.i192
  %227 = load i32** %sizesA.i163, align 8, !tbaa !0
  %228 = load double** %entriesA.i154, align 8, !tbaa !0
  %229 = load i32** %indicesA.i162, align 8, !tbaa !0
  br label %for.body53.i196

for.body53.i196:                                  ; preds = %for.inc84.i, %for.body53.lr.ph.i193
  %indvars.iv273.i = phi i64 [ 0, %for.body53.lr.ph.i193 ], [ %indvars.iv.next274.i, %for.inc84.i ]
  %kk.3220.i = phi i32 [ 0, %for.body53.lr.ph.i193 ], [ %kk.5.i209, %for.inc84.i ]
  %arrayidx55.i194 = getelementptr inbounds i32* %227, i64 %indvars.iv273.i
  %230 = load i32* %arrayidx55.i194, align 4, !tbaa !3
  %cmp56.i195 = icmp sgt i32 %230, 0
  br i1 %cmp56.i195, label %for.body60.lr.ph.i197, label %for.inc84.i

for.body60.lr.ph.i197:                            ; preds = %for.body53.i196
  %231 = sext i32 %kk.3220.i to i64
  br label %for.body60.i207

for.body60.i207:                                  ; preds = %for.body60.i207, %for.body60.lr.ph.i197
  %indvars.iv.i198 = phi i64 [ %231, %for.body60.lr.ph.i197 ], [ %indvars.iv.next.i205, %for.body60.i207 ]
  %ii.1214.i = phi i32 [ 0, %for.body60.lr.ph.i197 ], [ %inc74.i204, %for.body60.i207 ]
  %sum1.1213.i = phi double [ 0.000000e+00, %for.body60.lr.ph.i197 ], [ %add72.i203, %for.body60.i207 ]
  %sum0.1212.i = phi double [ 0.000000e+00, %for.body60.lr.ph.i197 ], [ %add68.i, %for.body60.i207 ]
  %arrayidx62.i199 = getelementptr inbounds double* %228, i64 %indvars.iv.i198
  %232 = load double* %arrayidx62.i199, align 8, !tbaa !4
  %arrayidx64.i200 = getelementptr inbounds i32* %229, i64 %indvars.iv.i198
  %233 = load i32* %arrayidx64.i200, align 4, !tbaa !3
  %idxprom65.i = sext i32 %233 to i64
  %arrayidx66.i = getelementptr inbounds double* %colB0.0.lcssa.i188, i64 %idxprom65.i
  %234 = load double* %arrayidx66.i, align 8, !tbaa !4
  %mul67.i = fmul double %232, %234
  %add68.i = fadd double %sum0.1212.i, %mul67.i
  %add.ptr50.sum205.i = add i64 %idxprom65.i, %idx.ext49.i191
  %arrayidx70.i201 = getelementptr inbounds double* %colB0.0.lcssa.i188, i64 %add.ptr50.sum205.i
  %235 = load double* %arrayidx70.i201, align 8, !tbaa !4
  %mul71.i202 = fmul double %232, %235
  %add72.i203 = fadd double %sum1.1213.i, %mul71.i202
  %inc74.i204 = add nsw i32 %ii.1214.i, 1
  %indvars.iv.next.i205 = add i64 %indvars.iv.i198, 1
  %exitcond.i206 = icmp eq i32 %inc74.i204, %230
  br i1 %exitcond.i206, label %for.end76.i, label %for.body60.i207

for.end76.i:                                      ; preds = %for.body60.i207
  %236 = add i32 %230, %kk.3220.i
  %arrayidx78.i = getelementptr inbounds double* %colB0.0.lcssa.i188, i64 %indvars.iv273.i
  %237 = load double* %arrayidx78.i, align 8, !tbaa !4
  %sub79.i = fsub double %237, %add68.i
  store double %sub79.i, double* %arrayidx78.i, align 8, !tbaa !4
  %add.ptr50.sum.i208 = add i64 %indvars.iv273.i, %idx.ext49.i191
  %arrayidx81.i = getelementptr inbounds double* %colB0.0.lcssa.i188, i64 %add.ptr50.sum.i208
  %238 = load double* %arrayidx81.i, align 8, !tbaa !4
  %sub82.i = fsub double %238, %add72.i203
  store double %sub82.i, double* %arrayidx81.i, align 8, !tbaa !4
  br label %for.inc84.i

for.inc84.i:                                      ; preds = %for.end76.i, %for.body53.i196
  %kk.5.i209 = phi i32 [ %236, %for.end76.i ], [ %kk.3220.i, %for.body53.i196 ]
  %indvars.iv.next274.i = add i64 %indvars.iv273.i, 1
  %lftr.wideiv676 = trunc i64 %indvars.iv.next274.i to i32
  %exitcond677 = icmp eq i32 %lftr.wideiv676, %226
  br i1 %exitcond677, label %sw.epilog34, label %for.body53.i196

if.else.i211:                                     ; preds = %for.end45.i190
  %sub87.i = add nsw i32 %206, -1
  %cmp88.i = icmp eq i32 %jcolB.0.lcssa.i187, %sub87.i
  br i1 %cmp88.i, label %for.cond90.preheader.i, label %sw.epilog34

for.cond90.preheader.i:                           ; preds = %if.else.i211
  %239 = load i32* %nrowA.i160, align 4, !tbaa !3
  %cmp91232.i = icmp sgt i32 %239, 0
  br i1 %cmp91232.i, label %for.body92.lr.ph.i, label %sw.epilog34

for.body92.lr.ph.i:                               ; preds = %for.cond90.preheader.i
  %240 = load i32** %sizesA.i163, align 8, !tbaa !0
  %241 = load i32** %indicesA.i162, align 8, !tbaa !0
  %242 = load double** %entriesA.i154, align 8, !tbaa !0
  br label %for.body92.i

for.body92.i:                                     ; preds = %for.inc122.i, %for.body92.lr.ph.i
  %indvars.iv281.i = phi i64 [ 0, %for.body92.lr.ph.i ], [ %indvars.iv.next282.i, %for.inc122.i ]
  %kk.6236.i = phi i32 [ 0, %for.body92.lr.ph.i ], [ %kk.8.i221, %for.inc122.i ]
  %irowA.2233.i = phi i32 [ 0, %for.body92.lr.ph.i ], [ %inc123.i, %for.inc122.i ]
  %arrayidx94.i212 = getelementptr inbounds i32* %240, i64 %indvars.iv281.i
  %243 = load i32* %arrayidx94.i212, align 4, !tbaa !3
  %cmp95.i213 = icmp sgt i32 %243, -1
  br i1 %cmp95.i213, label %for.cond97.preheader.i, label %for.inc122.i

for.cond97.preheader.i:                           ; preds = %for.body92.i
  %cmp98224.i = icmp sgt i32 %243, 0
  br i1 %cmp98224.i, label %for.body99.lr.ph.i, label %for.end117.i

for.body99.lr.ph.i:                               ; preds = %for.cond97.preheader.i
  %244 = sext i32 %kk.6236.i to i64
  %245 = trunc i64 %indvars.iv281.i to i32
  br label %for.body99.i214

for.body99.i214:                                  ; preds = %if.end109.i, %for.body99.lr.ph.i
  %indvars.iv278.i = phi i64 [ %244, %for.body99.lr.ph.i ], [ %indvars.iv.next279.i, %if.end109.i ]
  %kk.7227.i = phi i32 [ %kk.6236.i, %for.body99.lr.ph.i ], [ %inc116.i, %if.end109.i ]
  %ii.2226.i = phi i32 [ 0, %for.body99.lr.ph.i ], [ %inc115.i, %if.end109.i ]
  %sum0.2225.i = phi double [ 0.000000e+00, %for.body99.lr.ph.i ], [ %add113.i, %if.end109.i ]
  %arrayidx103.i = getelementptr inbounds i32* %241, i64 %indvars.iv278.i
  %246 = load i32* %arrayidx103.i, align 4, !tbaa !3
  %cmp104.i = icmp sgt i32 %246, -1
  %cmp106.i = icmp slt i32 %246, %245
  %or.cond210.i = and i1 %cmp104.i, %cmp106.i
  br i1 %or.cond210.i, label %if.end109.i, label %if.then107.i

if.then107.i:                                     ; preds = %for.body99.i214
  %247 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call108.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %247, i8* getelementptr inbounds ([52 x i8]* @.str5, i64 0, i64 0), i32 %irowA.2233.i, i32 %kk.7227.i, i32 %ii.2226.i, i32 %246) #5
  call void @exit(i32 -1) #6
  unreachable

if.end109.i:                                      ; preds = %for.body99.i214
  %arrayidx101.i215 = getelementptr inbounds double* %242, i64 %indvars.iv278.i
  %248 = load double* %arrayidx101.i215, align 8, !tbaa !4
  %idxprom110.i = sext i32 %246 to i64
  %arrayidx111.i216 = getelementptr inbounds double* %colB0.0.lcssa.i188, i64 %idxprom110.i
  %249 = load double* %arrayidx111.i216, align 8, !tbaa !4
  %mul112.i = fmul double %248, %249
  %add113.i = fadd double %sum0.2225.i, %mul112.i
  %inc115.i = add nsw i32 %ii.2226.i, 1
  %indvars.iv.next279.i = add i64 %indvars.iv278.i, 1
  %inc116.i = add nsw i32 %kk.7227.i, 1
  %cmp98.i217 = icmp slt i32 %inc115.i, %243
  br i1 %cmp98.i217, label %for.body99.i214, label %for.end117.i

for.end117.i:                                     ; preds = %if.end109.i, %for.cond97.preheader.i
  %kk.7.lcssa.i218 = phi i32 [ %kk.6236.i, %for.cond97.preheader.i ], [ %inc116.i, %if.end109.i ]
  %sum0.2.lcssa.i219 = phi double [ 0.000000e+00, %for.cond97.preheader.i ], [ %add113.i, %if.end109.i ]
  %arrayidx119.i220 = getelementptr inbounds double* %colB0.0.lcssa.i188, i64 %indvars.iv281.i
  %250 = load double* %arrayidx119.i220, align 8, !tbaa !4
  %sub120.i = fsub double %250, %sum0.2.lcssa.i219
  store double %sub120.i, double* %arrayidx119.i220, align 8, !tbaa !4
  br label %for.inc122.i

for.inc122.i:                                     ; preds = %for.end117.i, %for.body92.i
  %kk.8.i221 = phi i32 [ %kk.7.lcssa.i218, %for.end117.i ], [ %kk.6236.i, %for.body92.i ]
  %indvars.iv.next282.i = add i64 %indvars.iv281.i, 1
  %inc123.i = add nsw i32 %irowA.2233.i, 1
  %251 = trunc i64 %indvars.iv.next282.i to i32
  %cmp91.i = icmp slt i32 %251, %239
  br i1 %cmp91.i, label %for.body92.i, label %sw.epilog34

sw.default:                                       ; preds = %sw.bb
  %252 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %252, i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 %8) #5
  call void @exit(i32 -1) #6
  unreachable

sw.bb21:                                          ; preds = %if.end12
  %mode22 = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 1
  %253 = load i32* %mode22, align 4, !tbaa !3
  switch i32 %253, label %sw.default27 [
    i32 5, label %sw.bb23
    i32 2, label %sw.bb24
    i32 6, label %sw.bb25
    i32 3, label %sw.bb26
  ]

sw.bb23:                                          ; preds = %sw.bb21
  %254 = bitcast double** %entriesA.i222 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %254) #4
  %255 = bitcast double** %entriesB.i223 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %255) #4
  %256 = bitcast i32* %inc1.i224 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %256) #4
  %257 = bitcast i32* %inc2.i225 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %257) #4
  %258 = bitcast i32* %ncolB.i226 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %258) #4
  %259 = bitcast i32* %nentA.i227 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %259) #4
  %260 = bitcast i32* %nrowA.i228 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %260) #4
  %261 = bitcast i32* %nrowB.i229 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %261) #4
  %262 = bitcast i32** %firstlocsA.i230 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %262) #4
  %263 = bitcast i32** %sizesA.i231 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %263) #4
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i228, i32* %nentA.i227, i32** %firstlocsA.i230, i32** %sizesA.i231, double** %entriesA.i222) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i229, i32* %ncolB.i226, i32* %inc1.i224, i32* %inc2.i225, double** %entriesB.i223) #5
  %264 = load double** %entriesB.i223, align 8, !tbaa !0
  %265 = load i32* %ncolB.i226, align 4, !tbaa !3
  %sub410.i = add nsw i32 %265, -2
  %cmp411.i = icmp sgt i32 %sub410.i, 0
  br i1 %cmp411.i, label %for.body.lr.ph.i235, label %for.end87.i

for.body.lr.ph.i235:                              ; preds = %sw.bb23
  %266 = load i32* %nrowB.i229, align 4, !tbaa !3
  %mul.i232 = shl nsw i32 %266, 1
  %idx.ext.i233 = sext i32 %mul.i232 to i64
  %add.ptr.sum.i234 = shl nsw i64 %idx.ext.i233, 1
  %267 = load i32* %nrowA.i228, align 4, !tbaa !3
  %268 = load i32* %nentA.i227, align 4, !tbaa !3
  %269 = load i32** %sizesA.i231, align 8, !tbaa !0
  %270 = load i32** %firstlocsA.i230, align 8, !tbaa !0
  %271 = load double** %entriesA.i222, align 8, !tbaa !0
  %add.ptr3.sum.i = add i64 %add.ptr.sum.i234, %idx.ext.i233
  br label %for.body.i236

for.body.i236:                                    ; preds = %for.end81.i, %for.body.lr.ph.i235
  %jcolB.0413.i = phi i32 [ 0, %for.body.lr.ph.i235 ], [ %add86.i, %for.end81.i ]
  %colB0.0412.i = phi double* [ %264, %for.body.lr.ph.i235 ], [ %add.ptr84.i, %for.end81.i ]
  br label %for.cond5.outer.i

for.cond5.outer.i:                                ; preds = %if.then.i251, %for.body33.i, %for.body.i236
  %colstart.0.ph.i237 = phi i32 [ %268, %for.body.i236 ], [ %sub16.i, %for.body33.i ], [ %sub16.i, %if.then.i251 ]
  %irowA.0.in.ph.i238 = phi i32 [ %267, %for.body.i236 ], [ %irowA.0.i240, %for.body33.i ], [ %irowA.0.i240, %if.then.i251 ]
  %272 = sext i32 %irowA.0.in.ph.i238 to i64
  br label %for.cond5.i

for.cond5.i:                                      ; preds = %for.body7.i, %for.cond5.outer.i
  %indvars.iv432.i = phi i64 [ %272, %for.cond5.outer.i ], [ %indvars.iv.next433.i, %for.body7.i ]
  %irowA.0.in.i239 = phi i32 [ %irowA.0.in.ph.i238, %for.cond5.outer.i ], [ %irowA.0.i240, %for.body7.i ]
  %indvars.iv.next433.i = add i64 %indvars.iv432.i, -1
  %irowA.0.i240 = add nsw i32 %irowA.0.in.i239, -1
  %273 = trunc i64 %indvars.iv432.i to i32
  %cmp6.i241 = icmp sgt i32 %273, 0
  br i1 %cmp6.i241, label %for.body7.i, label %for.end81.i

for.body7.i:                                      ; preds = %for.cond5.i
  %arrayidx.i242 = getelementptr inbounds i32* %269, i64 %indvars.iv.next433.i
  %274 = load i32* %arrayidx.i242, align 4, !tbaa !3
  %cmp8.i243 = icmp sgt i32 %274, 0
  br i1 %cmp8.i243, label %if.then.i251, label %for.cond5.i

if.then.i251:                                     ; preds = %for.body7.i
  %arrayidx10.i244 = getelementptr inbounds i32* %270, i64 %indvars.iv.next433.i
  %275 = load i32* %arrayidx10.i244, align 4, !tbaa !3
  %add.i245 = add i32 %274, -1
  %sub13.i = add i32 %add.i245, %275
  %sub14.neg.i = add i32 %colstart.0.ph.i237, -1
  %add15.neg.i = add i32 %sub14.neg.i, %275
  %sub16.i = sub i32 %add15.neg.i, %sub13.i
  %mul17.i = shl nsw i32 %irowA.0.i240, 1
  %add18381.i = or i32 %mul17.i, 1
  %idxprom19.i = sext i32 %mul17.i to i64
  %arrayidx20.i246 = getelementptr inbounds double* %colB0.0412.i, i64 %idxprom19.i
  %276 = load double* %arrayidx20.i246, align 8, !tbaa !4
  %idxprom21.i = sext i32 %add18381.i to i64
  %arrayidx22.i = getelementptr inbounds double* %colB0.0412.i, i64 %idxprom21.i
  %277 = load double* %arrayidx22.i, align 8, !tbaa !4
  %add.ptr.sum382.i = add i64 %idxprom19.i, %idx.ext.i233
  %arrayidx24.i247 = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr.sum382.i
  %278 = load double* %arrayidx24.i247, align 8, !tbaa !4
  %add.ptr.sum383.i = add i64 %idxprom21.i, %idx.ext.i233
  %arrayidx26.i248 = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr.sum383.i
  %279 = load double* %arrayidx26.i248, align 8, !tbaa !4
  %add.ptr3.sum384.i = add i64 %idxprom19.i, %add.ptr.sum.i234
  %arrayidx28.i249 = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr3.sum384.i
  %280 = load double* %arrayidx28.i249, align 8, !tbaa !4
  %add.ptr3.sum385.i = add i64 %idxprom21.i, %add.ptr.sum.i234
  %arrayidx30.i250 = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr3.sum385.i
  %281 = load double* %arrayidx30.i250, align 8, !tbaa !4
  %cmp32404.i = icmp sgt i32 %275, %sub13.i
  br i1 %cmp32404.i, label %for.cond5.outer.i, label %for.body33.lr.ph.i

for.body33.lr.ph.i:                               ; preds = %if.then.i251
  %282 = sub i32 %colstart.0.ph.i237, %274
  %283 = sext i32 %282 to i64
  %284 = sext i32 %275 to i64
  br label %for.body33.i

for.body33.i:                                     ; preds = %for.body33.i, %for.body33.lr.ph.i
  %indvars.iv436.i = phi i64 [ %indvars.iv.next437.i, %for.body33.i ], [ %284, %for.body33.lr.ph.i ]
  %indvars.iv434.i = phi i64 [ %indvars.iv.next435.i, %for.body33.i ], [ %283, %for.body33.lr.ph.i ]
  %285 = trunc i64 %indvars.iv434.i to i32
  %mul34.i252 = shl nsw i32 %285, 1
  %idxprom35.i = sext i32 %mul34.i252 to i64
  %arrayidx36.i253 = getelementptr inbounds double* %271, i64 %idxprom35.i
  %286 = load double* %arrayidx36.i253, align 8, !tbaa !4
  %add38386.i = or i32 %mul34.i252, 1
  %idxprom39.i = sext i32 %add38386.i to i64
  %arrayidx40.i = getelementptr inbounds double* %271, i64 %idxprom39.i
  %287 = load double* %arrayidx40.i, align 8, !tbaa !4
  %288 = trunc i64 %indvars.iv436.i to i32
  %mul41.i = shl nsw i32 %288, 1
  %add42387.i = or i32 %mul41.i, 1
  %mul43.i = fmul double %276, %286
  %mul44.i = fmul double %277, %287
  %sub45.i = fsub double %mul43.i, %mul44.i
  %idxprom46.i = sext i32 %mul41.i to i64
  %arrayidx47.i = getelementptr inbounds double* %colB0.0412.i, i64 %idxprom46.i
  %289 = load double* %arrayidx47.i, align 8, !tbaa !4
  %sub48.i = fsub double %289, %sub45.i
  store double %sub48.i, double* %arrayidx47.i, align 8, !tbaa !4
  %mul49.i = fmul double %277, %286
  %mul50.i = fmul double %276, %287
  %add51.i = fadd double %mul49.i, %mul50.i
  %idxprom52.i = sext i32 %add42387.i to i64
  %arrayidx53.i = getelementptr inbounds double* %colB0.0412.i, i64 %idxprom52.i
  %290 = load double* %arrayidx53.i, align 8, !tbaa !4
  %sub54.i = fsub double %290, %add51.i
  store double %sub54.i, double* %arrayidx53.i, align 8, !tbaa !4
  %mul55.i = fmul double %278, %286
  %mul56.i = fmul double %279, %287
  %sub57.i = fsub double %mul55.i, %mul56.i
  %add.ptr.sum388.i = add i64 %idxprom46.i, %idx.ext.i233
  %arrayidx59.i254 = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr.sum388.i
  %291 = load double* %arrayidx59.i254, align 8, !tbaa !4
  %sub60.i = fsub double %291, %sub57.i
  store double %sub60.i, double* %arrayidx59.i254, align 8, !tbaa !4
  %mul61.i = fmul double %279, %286
  %mul62.i = fmul double %278, %287
  %add63.i255 = fadd double %mul61.i, %mul62.i
  %add.ptr.sum389.i = add i64 %idxprom52.i, %idx.ext.i233
  %arrayidx65.i = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr.sum389.i
  %292 = load double* %arrayidx65.i, align 8, !tbaa !4
  %sub66.i = fsub double %292, %add63.i255
  store double %sub66.i, double* %arrayidx65.i, align 8, !tbaa !4
  %mul67.i256 = fmul double %280, %286
  %mul68.i = fmul double %281, %287
  %sub69.i = fsub double %mul67.i256, %mul68.i
  %add.ptr3.sum390.i = add i64 %idxprom46.i, %add.ptr.sum.i234
  %arrayidx71.i257 = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr3.sum390.i
  %293 = load double* %arrayidx71.i257, align 8, !tbaa !4
  %sub72.i258 = fsub double %293, %sub69.i
  store double %sub72.i258, double* %arrayidx71.i257, align 8, !tbaa !4
  %mul73.i = fmul double %281, %286
  %mul74.i = fmul double %280, %287
  %add75.i = fadd double %mul73.i, %mul74.i
  %add.ptr3.sum391.i = add i64 %idxprom52.i, %add.ptr.sum.i234
  %arrayidx77.i = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr3.sum391.i
  %294 = load double* %arrayidx77.i, align 8, !tbaa !4
  %sub78.i = fsub double %294, %add75.i
  store double %sub78.i, double* %arrayidx77.i, align 8, !tbaa !4
  %indvars.iv.next437.i = add i64 %indvars.iv436.i, 1
  %indvars.iv.next435.i = add i64 %indvars.iv434.i, 1
  %cmp32.i = icmp slt i32 %288, %sub13.i
  br i1 %cmp32.i, label %for.body33.i, label %for.cond5.outer.i

for.end81.i:                                      ; preds = %for.cond5.i
  %add.ptr84.i = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr3.sum.i
  %add86.i = add nsw i32 %jcolB.0413.i, 3
  %cmp.i259 = icmp slt i32 %add86.i, %sub410.i
  br i1 %cmp.i259, label %for.body.i236, label %for.end87.i

for.end87.i:                                      ; preds = %for.end81.i, %sw.bb23
  %jcolB.0.lcssa.i260 = phi i32 [ 0, %sw.bb23 ], [ %add86.i, %for.end81.i ]
  %colB0.0.lcssa.i261 = phi double* [ %264, %sw.bb23 ], [ %add.ptr84.i, %for.end81.i ]
  %cmp89.i = icmp eq i32 %jcolB.0.lcssa.i260, %sub410.i
  br i1 %cmp89.i, label %if.then90.i, label %if.else.i272

if.then90.i:                                      ; preds = %for.end87.i
  %295 = load i32* %nrowB.i229, align 4, !tbaa !3
  %mul91.i = shl nsw i32 %295, 1
  %idx.ext92.i = sext i32 %mul91.i to i64
  %296 = load i32* %nrowA.i228, align 4, !tbaa !3
  %297 = load i32* %nentA.i227, align 4, !tbaa !3
  %298 = load i32** %sizesA.i231, align 8, !tbaa !0
  %299 = load i32** %firstlocsA.i230, align 8, !tbaa !0
  %300 = load double** %entriesA.i222, align 8, !tbaa !0
  br label %for.cond95.outer.i

for.cond95.outer.i:                               ; preds = %if.then101.i, %for.body123.i, %if.then90.i
  %colstart.2.ph.i262 = phi i32 [ %297, %if.then90.i ], [ %sub110.i, %for.body123.i ], [ %sub110.i, %if.then101.i ]
  %irowA.1.in.ph.i263 = phi i32 [ %296, %if.then90.i ], [ %irowA.1.i267, %for.body123.i ], [ %irowA.1.i267, %if.then101.i ]
  %301 = sext i32 %irowA.1.in.ph.i263 to i64
  br label %for.cond95.i

for.cond95.i:                                     ; preds = %for.body97.i269, %for.cond95.outer.i
  %indvars.iv.i264 = phi i64 [ %301, %for.cond95.outer.i ], [ %indvars.iv.next.i266, %for.body97.i269 ]
  %irowA.1.in.i265 = phi i32 [ %irowA.1.in.ph.i263, %for.cond95.outer.i ], [ %irowA.1.i267, %for.body97.i269 ]
  %indvars.iv.next.i266 = add i64 %indvars.iv.i264, -1
  %irowA.1.i267 = add nsw i32 %irowA.1.in.i265, -1
  %302 = trunc i64 %indvars.iv.i264 to i32
  %cmp96.i = icmp sgt i32 %302, 0
  br i1 %cmp96.i, label %for.body97.i269, label %sw.epilog34

for.body97.i269:                                  ; preds = %for.cond95.i
  %arrayidx99.i268 = getelementptr inbounds i32* %298, i64 %indvars.iv.next.i266
  %303 = load i32* %arrayidx99.i268, align 4, !tbaa !3
  %cmp100.i = icmp sgt i32 %303, 0
  br i1 %cmp100.i, label %if.then101.i, label %for.cond95.i

if.then101.i:                                     ; preds = %for.body97.i269
  %arrayidx103.i270 = getelementptr inbounds i32* %299, i64 %indvars.iv.next.i266
  %304 = load i32* %arrayidx103.i270, align 4, !tbaa !3
  %add106.i = add i32 %303, -1
  %sub107.i = add i32 %add106.i, %304
  %sub108.neg.i = add i32 %colstart.2.ph.i262, -1
  %add109.neg.i = add i32 %sub108.neg.i, %304
  %sub110.i = sub i32 %add109.neg.i, %sub107.i
  %mul111.i = shl nsw i32 %irowA.1.i267, 1
  %add112375.i = or i32 %mul111.i, 1
  %idxprom113.i = sext i32 %mul111.i to i64
  %arrayidx114.i271 = getelementptr inbounds double* %colB0.0.lcssa.i261, i64 %idxprom113.i
  %305 = load double* %arrayidx114.i271, align 8, !tbaa !4
  %idxprom115.i = sext i32 %add112375.i to i64
  %arrayidx116.i = getelementptr inbounds double* %colB0.0.lcssa.i261, i64 %idxprom115.i
  %306 = load double* %arrayidx116.i, align 8, !tbaa !4
  %add.ptr93.sum.i = add i64 %idxprom113.i, %idx.ext92.i
  %arrayidx118.i = getelementptr inbounds double* %colB0.0.lcssa.i261, i64 %add.ptr93.sum.i
  %307 = load double* %arrayidx118.i, align 8, !tbaa !4
  %add.ptr93.sum376.i = add i64 %idxprom115.i, %idx.ext92.i
  %arrayidx120.i = getelementptr inbounds double* %colB0.0.lcssa.i261, i64 %add.ptr93.sum376.i
  %308 = load double* %arrayidx120.i, align 8, !tbaa !4
  %cmp122394.i = icmp sgt i32 %304, %sub107.i
  br i1 %cmp122394.i, label %for.cond95.outer.i, label %for.body123.lr.ph.i

for.body123.lr.ph.i:                              ; preds = %if.then101.i
  %309 = sub i32 %colstart.2.ph.i262, %303
  %310 = sext i32 %309 to i64
  %311 = sext i32 %304 to i64
  br label %for.body123.i

for.body123.i:                                    ; preds = %for.body123.i, %for.body123.lr.ph.i
  %indvars.iv420.i = phi i64 [ %indvars.iv.next421.i, %for.body123.i ], [ %311, %for.body123.lr.ph.i ]
  %indvars.iv418.i = phi i64 [ %indvars.iv.next419.i, %for.body123.i ], [ %310, %for.body123.lr.ph.i ]
  %312 = trunc i64 %indvars.iv418.i to i32
  %mul124.i = shl nsw i32 %312, 1
  %idxprom125.i = sext i32 %mul124.i to i64
  %arrayidx126.i = getelementptr inbounds double* %300, i64 %idxprom125.i
  %313 = load double* %arrayidx126.i, align 8, !tbaa !4
  %add128377.i = or i32 %mul124.i, 1
  %idxprom129.i = sext i32 %add128377.i to i64
  %arrayidx130.i = getelementptr inbounds double* %300, i64 %idxprom129.i
  %314 = load double* %arrayidx130.i, align 8, !tbaa !4
  %315 = trunc i64 %indvars.iv420.i to i32
  %mul131.i = shl nsw i32 %315, 1
  %add132378.i = or i32 %mul131.i, 1
  %mul133.i = fmul double %305, %313
  %mul134.i = fmul double %306, %314
  %sub135.i = fsub double %mul133.i, %mul134.i
  %idxprom136.i = sext i32 %mul131.i to i64
  %arrayidx137.i = getelementptr inbounds double* %colB0.0.lcssa.i261, i64 %idxprom136.i
  %316 = load double* %arrayidx137.i, align 8, !tbaa !4
  %sub138.i = fsub double %316, %sub135.i
  store double %sub138.i, double* %arrayidx137.i, align 8, !tbaa !4
  %mul139.i = fmul double %306, %313
  %mul140.i = fmul double %305, %314
  %add141.i = fadd double %mul139.i, %mul140.i
  %idxprom142.i = sext i32 %add132378.i to i64
  %arrayidx143.i = getelementptr inbounds double* %colB0.0.lcssa.i261, i64 %idxprom142.i
  %317 = load double* %arrayidx143.i, align 8, !tbaa !4
  %sub144.i = fsub double %317, %add141.i
  store double %sub144.i, double* %arrayidx143.i, align 8, !tbaa !4
  %mul145.i = fmul double %307, %313
  %mul146.i = fmul double %308, %314
  %sub147.i = fsub double %mul145.i, %mul146.i
  %add.ptr93.sum379.i = add i64 %idxprom136.i, %idx.ext92.i
  %arrayidx149.i = getelementptr inbounds double* %colB0.0.lcssa.i261, i64 %add.ptr93.sum379.i
  %318 = load double* %arrayidx149.i, align 8, !tbaa !4
  %sub150.i = fsub double %318, %sub147.i
  store double %sub150.i, double* %arrayidx149.i, align 8, !tbaa !4
  %mul151.i = fmul double %308, %313
  %mul152.i = fmul double %307, %314
  %add153.i = fadd double %mul151.i, %mul152.i
  %add.ptr93.sum380.i = add i64 %idxprom142.i, %idx.ext92.i
  %arrayidx155.i = getelementptr inbounds double* %colB0.0.lcssa.i261, i64 %add.ptr93.sum380.i
  %319 = load double* %arrayidx155.i, align 8, !tbaa !4
  %sub156.i = fsub double %319, %add153.i
  store double %sub156.i, double* %arrayidx155.i, align 8, !tbaa !4
  %indvars.iv.next421.i = add i64 %indvars.iv420.i, 1
  %indvars.iv.next419.i = add i64 %indvars.iv418.i, 1
  %cmp122.i = icmp slt i32 %315, %sub107.i
  br i1 %cmp122.i, label %for.body123.i, label %for.cond95.outer.i

if.else.i272:                                     ; preds = %for.end87.i
  %sub165.i = add nsw i32 %265, -1
  %cmp166.i = icmp eq i32 %jcolB.0.lcssa.i260, %sub165.i
  br i1 %cmp166.i, label %if.then167.i, label %sw.epilog34

if.then167.i:                                     ; preds = %if.else.i272
  %320 = load i32* %nrowA.i228, align 4, !tbaa !3
  %321 = load i32* %nentA.i227, align 4, !tbaa !3
  %322 = load i32** %sizesA.i231, align 8, !tbaa !0
  %323 = load i32** %firstlocsA.i230, align 8, !tbaa !0
  %324 = load double** %entriesA.i222, align 8, !tbaa !0
  br label %for.cond169.outer.i

for.cond169.outer.i:                              ; preds = %if.then175.i, %for.body193.i, %if.then167.i
  %colstart.4.ph.i273 = phi i32 [ %321, %if.then167.i ], [ %sub184.i, %for.body193.i ], [ %sub184.i, %if.then175.i ]
  %irowA.2.in.ph.i274 = phi i32 [ %320, %if.then167.i ], [ %irowA.2.i276, %for.body193.i ], [ %irowA.2.i276, %if.then175.i ]
  %325 = sext i32 %irowA.2.in.ph.i274 to i64
  br label %for.cond169.i

for.cond169.i:                                    ; preds = %for.body171.i, %for.cond169.outer.i
  %indvars.iv424.i = phi i64 [ %325, %for.cond169.outer.i ], [ %indvars.iv.next425.i, %for.body171.i ]
  %irowA.2.in.i275 = phi i32 [ %irowA.2.in.ph.i274, %for.cond169.outer.i ], [ %irowA.2.i276, %for.body171.i ]
  %indvars.iv.next425.i = add i64 %indvars.iv424.i, -1
  %irowA.2.i276 = add nsw i32 %irowA.2.in.i275, -1
  %326 = trunc i64 %indvars.iv424.i to i32
  %cmp170.i = icmp sgt i32 %326, 0
  br i1 %cmp170.i, label %for.body171.i, label %sw.epilog34

for.body171.i:                                    ; preds = %for.cond169.i
  %arrayidx173.i = getelementptr inbounds i32* %322, i64 %indvars.iv.next425.i
  %327 = load i32* %arrayidx173.i, align 4, !tbaa !3
  %cmp174.i = icmp sgt i32 %327, 0
  br i1 %cmp174.i, label %if.then175.i, label %for.cond169.i

if.then175.i:                                     ; preds = %for.body171.i
  %arrayidx177.i = getelementptr inbounds i32* %323, i64 %indvars.iv.next425.i
  %328 = load i32* %arrayidx177.i, align 4, !tbaa !3
  %add180.i = add i32 %327, -1
  %sub181.i = add i32 %add180.i, %328
  %sub182.neg.i = add i32 %colstart.4.ph.i273, -1
  %add183.neg.i = add i32 %sub182.neg.i, %328
  %sub184.i = sub i32 %add183.neg.i, %sub181.i
  %mul185.i = shl nsw i32 %irowA.2.i276, 1
  %add186372.i = or i32 %mul185.i, 1
  %idxprom187.i = sext i32 %mul185.i to i64
  %arrayidx188.i = getelementptr inbounds double* %colB0.0.lcssa.i261, i64 %idxprom187.i
  %329 = load double* %arrayidx188.i, align 8, !tbaa !4
  %idxprom189.i = sext i32 %add186372.i to i64
  %arrayidx190.i = getelementptr inbounds double* %colB0.0.lcssa.i261, i64 %idxprom189.i
  %330 = load double* %arrayidx190.i, align 8, !tbaa !4
  %cmp192398.i = icmp sgt i32 %328, %sub181.i
  br i1 %cmp192398.i, label %for.cond169.outer.i, label %for.body193.lr.ph.i

for.body193.lr.ph.i:                              ; preds = %if.then175.i
  %331 = sub i32 %colstart.4.ph.i273, %327
  %332 = sext i32 %331 to i64
  %333 = sext i32 %328 to i64
  br label %for.body193.i

for.body193.i:                                    ; preds = %for.body193.i, %for.body193.lr.ph.i
  %indvars.iv428.i = phi i64 [ %indvars.iv.next429.i, %for.body193.i ], [ %333, %for.body193.lr.ph.i ]
  %indvars.iv426.i = phi i64 [ %indvars.iv.next427.i, %for.body193.i ], [ %332, %for.body193.lr.ph.i ]
  %334 = trunc i64 %indvars.iv426.i to i32
  %mul194.i = shl nsw i32 %334, 1
  %idxprom195.i = sext i32 %mul194.i to i64
  %arrayidx196.i = getelementptr inbounds double* %324, i64 %idxprom195.i
  %335 = load double* %arrayidx196.i, align 8, !tbaa !4
  %add198373.i = or i32 %mul194.i, 1
  %idxprom199.i = sext i32 %add198373.i to i64
  %arrayidx200.i = getelementptr inbounds double* %324, i64 %idxprom199.i
  %336 = load double* %arrayidx200.i, align 8, !tbaa !4
  %337 = trunc i64 %indvars.iv428.i to i32
  %mul201.i = shl nsw i32 %337, 1
  %add202374.i = or i32 %mul201.i, 1
  %mul203.i = fmul double %329, %335
  %mul204.i = fmul double %330, %336
  %sub205.i = fsub double %mul203.i, %mul204.i
  %idxprom206.i = sext i32 %mul201.i to i64
  %arrayidx207.i = getelementptr inbounds double* %colB0.0.lcssa.i261, i64 %idxprom206.i
  %338 = load double* %arrayidx207.i, align 8, !tbaa !4
  %sub208.i = fsub double %338, %sub205.i
  store double %sub208.i, double* %arrayidx207.i, align 8, !tbaa !4
  %mul209.i = fmul double %330, %335
  %mul210.i = fmul double %329, %336
  %add211.i = fadd double %mul209.i, %mul210.i
  %idxprom212.i = sext i32 %add202374.i to i64
  %arrayidx213.i = getelementptr inbounds double* %colB0.0.lcssa.i261, i64 %idxprom212.i
  %339 = load double* %arrayidx213.i, align 8, !tbaa !4
  %sub214.i = fsub double %339, %add211.i
  store double %sub214.i, double* %arrayidx213.i, align 8, !tbaa !4
  %indvars.iv.next429.i = add i64 %indvars.iv428.i, 1
  %indvars.iv.next427.i = add i64 %indvars.iv426.i, 1
  %cmp192.i = icmp slt i32 %337, %sub181.i
  br i1 %cmp192.i, label %for.body193.i, label %for.cond169.outer.i

sw.bb24:                                          ; preds = %sw.bb21
  %340 = bitcast double** %entriesA.i277 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %340) #4
  %341 = bitcast double** %entriesB.i278 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %341) #4
  %342 = bitcast i32* %inc1.i279 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %342) #4
  %343 = bitcast i32* %inc2.i280 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %343) #4
  %344 = bitcast i32* %ncolB.i281 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %344) #4
  %345 = bitcast i32* %nentA.i282 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %345) #4
  %346 = bitcast i32* %nrowA.i283 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %346) #4
  %347 = bitcast i32* %nrowB.i284 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %347) #4
  %348 = bitcast i32** %indicesA.i285 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %348) #4
  %349 = bitcast i32** %sizesA.i286 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %349) #4
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i283, i32* %nentA.i282, i32** %sizesA.i286, i32** %indicesA.i285, double** %entriesA.i277) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i284, i32* %ncolB.i281, i32* %inc1.i279, i32* %inc2.i280, double** %entriesB.i278) #5
  %350 = load double** %entriesB.i278, align 8, !tbaa !0
  %351 = load i32* %ncolB.i281, align 4, !tbaa !3
  %sub378.i = add nsw i32 %351, -2
  %cmp379.i = icmp sgt i32 %sub378.i, 0
  br i1 %cmp379.i, label %for.body.lr.ph.i291, label %for.end81.i338

for.body.lr.ph.i291:                              ; preds = %sw.bb24
  %352 = load i32* %nrowB.i284, align 4, !tbaa !3
  %mul.i287 = shl nsw i32 %352, 1
  %idx.ext.i288 = sext i32 %mul.i287 to i64
  %add.ptr.sum.i289 = shl nsw i64 %idx.ext.i288, 1
  %353 = load i32* %nrowA.i283, align 4, !tbaa !3
  %354 = load i32* %nentA.i282, align 4, !tbaa !3
  %355 = load i32** %sizesA.i286, align 8, !tbaa !0
  %356 = load double** %entriesA.i277, align 8, !tbaa !0
  %357 = load i32** %indicesA.i285, align 8, !tbaa !0
  %add.ptr3.sum.i290 = add i64 %add.ptr.sum.i289, %idx.ext.i288
  br label %for.body.i292

for.body.i292:                                    ; preds = %for.end75.i, %for.body.lr.ph.i291
  %jcolB.0381.i = phi i32 [ 0, %for.body.lr.ph.i291 ], [ %add80.i, %for.end75.i ]
  %colB0.0380.i = phi double* [ %350, %for.body.lr.ph.i291 ], [ %add.ptr78.i, %for.end75.i ]
  br label %for.cond5.outer.i295

for.cond5.outer.i295:                             ; preds = %for.body25.i, %for.body.i292
  %colstart.0.ph.i293 = phi i32 [ %354, %for.body.i292 ], [ %sub9.i, %for.body25.i ]
  %jcolA.0.in.ph.i294 = phi i32 [ %353, %for.body.i292 ], [ %jcolA.0.i297, %for.body25.i ]
  %358 = sext i32 %jcolA.0.in.ph.i294 to i64
  br label %for.cond5.i299

for.cond5.i299:                                   ; preds = %for.body7.i302, %for.cond5.outer.i295
  %indvars.iv397.i = phi i64 [ %358, %for.cond5.outer.i295 ], [ %indvars.iv.next398.i, %for.body7.i302 ]
  %jcolA.0.in.i296 = phi i32 [ %jcolA.0.in.ph.i294, %for.cond5.outer.i295 ], [ %jcolA.0.i297, %for.body7.i302 ]
  %indvars.iv.next398.i = add i64 %indvars.iv397.i, -1
  %jcolA.0.i297 = add nsw i32 %jcolA.0.in.i296, -1
  %359 = trunc i64 %indvars.iv397.i to i32
  %cmp6.i298 = icmp sgt i32 %359, 0
  br i1 %cmp6.i298, label %for.body7.i302, label %for.end75.i

for.body7.i302:                                   ; preds = %for.cond5.i299
  %arrayidx.i300 = getelementptr inbounds i32* %355, i64 %indvars.iv.next398.i
  %360 = load i32* %arrayidx.i300, align 4, !tbaa !3
  %cmp8.i301 = icmp sgt i32 %360, 0
  br i1 %cmp8.i301, label %for.body25.lr.ph.i, label %for.cond5.i299

for.body25.lr.ph.i:                               ; preds = %for.body7.i302
  %sub9.i = sub i32 %colstart.0.ph.i293, %360
  %mul10.i = shl nsw i32 %jcolA.0.i297, 1
  %add351.i = or i32 %mul10.i, 1
  %idxprom11.i = sext i32 %mul10.i to i64
  %arrayidx12.i303 = getelementptr inbounds double* %colB0.0380.i, i64 %idxprom11.i
  %361 = load double* %arrayidx12.i303, align 8, !tbaa !4
  %idxprom13.i = sext i32 %add351.i to i64
  %arrayidx14.i304 = getelementptr inbounds double* %colB0.0380.i, i64 %idxprom13.i
  %362 = load double* %arrayidx14.i304, align 8, !tbaa !4
  %add.ptr.sum352.i = add i64 %idxprom11.i, %idx.ext.i288
  %arrayidx16.i305 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr.sum352.i
  %363 = load double* %arrayidx16.i305, align 8, !tbaa !4
  %add.ptr.sum353.i = add i64 %idxprom13.i, %idx.ext.i288
  %arrayidx18.i306 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr.sum353.i
  %364 = load double* %arrayidx18.i306, align 8, !tbaa !4
  %add.ptr3.sum354.i = add i64 %idxprom11.i, %add.ptr.sum.i289
  %arrayidx20.i307 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr3.sum354.i
  %365 = load double* %arrayidx20.i307, align 8, !tbaa !4
  %add.ptr3.sum355.i = add i64 %idxprom13.i, %add.ptr.sum.i289
  %arrayidx22.i308 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr3.sum355.i
  %366 = load double* %arrayidx22.i308, align 8, !tbaa !4
  %367 = sext i32 %sub9.i to i64
  br label %for.body25.i

for.body25.i:                                     ; preds = %for.body25.i, %for.body25.lr.ph.i
  %indvars.iv399.i = phi i64 [ %367, %for.body25.lr.ph.i ], [ %indvars.iv.next400.i, %for.body25.i ]
  %ii.0373.i = phi i32 [ 0, %for.body25.lr.ph.i ], [ %inc.i334, %for.body25.i ]
  %368 = trunc i64 %indvars.iv399.i to i32
  %mul26.i309 = shl nsw i32 %368, 1
  %idxprom27.i = sext i32 %mul26.i309 to i64
  %arrayidx28.i310 = getelementptr inbounds double* %356, i64 %idxprom27.i
  %369 = load double* %arrayidx28.i310, align 8, !tbaa !4
  %add30356.i = or i32 %mul26.i309, 1
  %idxprom31.i = sext i32 %add30356.i to i64
  %arrayidx32.i311 = getelementptr inbounds double* %356, i64 %idxprom31.i
  %370 = load double* %arrayidx32.i311, align 8, !tbaa !4
  %arrayidx34.i = getelementptr inbounds i32* %357, i64 %indvars.iv399.i
  %371 = load i32* %arrayidx34.i, align 4, !tbaa !3
  %mul35.i = shl nsw i32 %371, 1
  %add36357.i = or i32 %mul35.i, 1
  %mul37.i = fmul double %361, %369
  %mul38.i = fmul double %362, %370
  %sub39.i = fsub double %mul37.i, %mul38.i
  %idxprom40.i = sext i32 %mul35.i to i64
  %arrayidx41.i = getelementptr inbounds double* %colB0.0380.i, i64 %idxprom40.i
  %372 = load double* %arrayidx41.i, align 8, !tbaa !4
  %sub42.i = fsub double %372, %sub39.i
  store double %sub42.i, double* %arrayidx41.i, align 8, !tbaa !4
  %mul43.i312 = fmul double %362, %369
  %mul44.i313 = fmul double %361, %370
  %add45.i = fadd double %mul43.i312, %mul44.i313
  %idxprom46.i314 = sext i32 %add36357.i to i64
  %arrayidx47.i315 = getelementptr inbounds double* %colB0.0380.i, i64 %idxprom46.i314
  %373 = load double* %arrayidx47.i315, align 8, !tbaa !4
  %sub48.i316 = fsub double %373, %add45.i
  store double %sub48.i316, double* %arrayidx47.i315, align 8, !tbaa !4
  %mul49.i317 = fmul double %363, %369
  %mul50.i318 = fmul double %364, %370
  %sub51.i = fsub double %mul49.i317, %mul50.i318
  %add.ptr.sum358.i = add i64 %idxprom40.i, %idx.ext.i288
  %arrayidx53.i319 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr.sum358.i
  %374 = load double* %arrayidx53.i319, align 8, !tbaa !4
  %sub54.i320 = fsub double %374, %sub51.i
  store double %sub54.i320, double* %arrayidx53.i319, align 8, !tbaa !4
  %mul55.i321 = fmul double %364, %369
  %mul56.i322 = fmul double %363, %370
  %add57.i = fadd double %mul55.i321, %mul56.i322
  %add.ptr.sum359.i = add i64 %idxprom46.i314, %idx.ext.i288
  %arrayidx59.i323 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr.sum359.i
  %375 = load double* %arrayidx59.i323, align 8, !tbaa !4
  %sub60.i324 = fsub double %375, %add57.i
  store double %sub60.i324, double* %arrayidx59.i323, align 8, !tbaa !4
  %mul61.i325 = fmul double %365, %369
  %mul62.i326 = fmul double %366, %370
  %sub63.i327 = fsub double %mul61.i325, %mul62.i326
  %add.ptr3.sum360.i = add i64 %idxprom40.i, %add.ptr.sum.i289
  %arrayidx65.i328 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr3.sum360.i
  %376 = load double* %arrayidx65.i328, align 8, !tbaa !4
  %sub66.i329 = fsub double %376, %sub63.i327
  store double %sub66.i329, double* %arrayidx65.i328, align 8, !tbaa !4
  %mul67.i330 = fmul double %366, %369
  %mul68.i331 = fmul double %365, %370
  %add69.i = fadd double %mul67.i330, %mul68.i331
  %add.ptr3.sum361.i = add i64 %idxprom46.i314, %add.ptr.sum.i289
  %arrayidx71.i332 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr3.sum361.i
  %377 = load double* %arrayidx71.i332, align 8, !tbaa !4
  %sub72.i333 = fsub double %377, %add69.i
  store double %sub72.i333, double* %arrayidx71.i332, align 8, !tbaa !4
  %inc.i334 = add nsw i32 %ii.0373.i, 1
  %indvars.iv.next400.i = add i64 %indvars.iv399.i, 1
  %exitcond401.i = icmp eq i32 %inc.i334, %360
  br i1 %exitcond401.i, label %for.cond5.outer.i295, label %for.body25.i

for.end75.i:                                      ; preds = %for.cond5.i299
  %add.ptr78.i = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr3.sum.i290
  %add80.i = add nsw i32 %jcolB.0381.i, 3
  %cmp.i335 = icmp slt i32 %add80.i, %sub378.i
  br i1 %cmp.i335, label %for.body.i292, label %for.end81.i338

for.end81.i338:                                   ; preds = %for.end75.i, %sw.bb24
  %jcolB.0.lcssa.i336 = phi i32 [ 0, %sw.bb24 ], [ %add80.i, %for.end75.i ]
  %colB0.0.lcssa.i337 = phi double* [ %350, %sw.bb24 ], [ %add.ptr78.i, %for.end75.i ]
  %cmp83.i = icmp eq i32 %jcolB.0.lcssa.i336, %sub378.i
  br i1 %cmp83.i, label %if.then84.i, label %if.else.i366

if.then84.i:                                      ; preds = %for.end81.i338
  %378 = load i32* %nrowB.i284, align 4, !tbaa !3
  %mul85.i = shl nsw i32 %378, 1
  %idx.ext86.i = sext i32 %mul85.i to i64
  %379 = load i32* %nrowA.i283, align 4, !tbaa !3
  %380 = load i32* %nentA.i282, align 4, !tbaa !3
  %381 = load i32** %sizesA.i286, align 8, !tbaa !0
  %382 = load double** %entriesA.i277, align 8, !tbaa !0
  %383 = load i32** %indicesA.i285, align 8, !tbaa !0
  br label %for.cond89.outer.i

for.cond89.outer.i:                               ; preds = %for.body109.i365, %if.then84.i
  %colstart.2.ph.i339 = phi i32 [ %380, %if.then84.i ], [ %sub96.i, %for.body109.i365 ]
  %jcolA.1.in.ph.i340 = phi i32 [ %379, %if.then84.i ], [ %jcolA.1.i344, %for.body109.i365 ]
  %384 = sext i32 %jcolA.1.in.ph.i340 to i64
  br label %for.cond89.i

for.cond89.i:                                     ; preds = %for.body91.i, %for.cond89.outer.i
  %indvars.iv.i341 = phi i64 [ %384, %for.cond89.outer.i ], [ %indvars.iv.next.i343, %for.body91.i ]
  %jcolA.1.in.i342 = phi i32 [ %jcolA.1.in.ph.i340, %for.cond89.outer.i ], [ %jcolA.1.i344, %for.body91.i ]
  %indvars.iv.next.i343 = add i64 %indvars.iv.i341, -1
  %jcolA.1.i344 = add nsw i32 %jcolA.1.in.i342, -1
  %385 = trunc i64 %indvars.iv.i341 to i32
  %cmp90.i345 = icmp sgt i32 %385, 0
  br i1 %cmp90.i345, label %for.body91.i, label %sw.epilog34

for.body91.i:                                     ; preds = %for.cond89.i
  %arrayidx93.i = getelementptr inbounds i32* %381, i64 %indvars.iv.next.i343
  %386 = load i32* %arrayidx93.i, align 4, !tbaa !3
  %cmp94.i346 = icmp sgt i32 %386, 0
  br i1 %cmp94.i346, label %for.body109.lr.ph.i349, label %for.cond89.i

for.body109.lr.ph.i349:                           ; preds = %for.body91.i
  %sub96.i = sub i32 %colstart.2.ph.i339, %386
  %mul97.i = shl nsw i32 %jcolA.1.i344, 1
  %add98345.i = or i32 %mul97.i, 1
  %idxprom99.i = sext i32 %mul97.i to i64
  %arrayidx100.i = getelementptr inbounds double* %colB0.0.lcssa.i337, i64 %idxprom99.i
  %387 = load double* %arrayidx100.i, align 8, !tbaa !4
  %idxprom101.i = sext i32 %add98345.i to i64
  %arrayidx102.i347 = getelementptr inbounds double* %colB0.0.lcssa.i337, i64 %idxprom101.i
  %388 = load double* %arrayidx102.i347, align 8, !tbaa !4
  %add.ptr87.sum.i = add i64 %idxprom99.i, %idx.ext86.i
  %arrayidx104.i348 = getelementptr inbounds double* %colB0.0.lcssa.i337, i64 %add.ptr87.sum.i
  %389 = load double* %arrayidx104.i348, align 8, !tbaa !4
  %add.ptr87.sum346.i = add i64 %idxprom101.i, %idx.ext86.i
  %arrayidx106.i = getelementptr inbounds double* %colB0.0.lcssa.i337, i64 %add.ptr87.sum346.i
  %390 = load double* %arrayidx106.i, align 8, !tbaa !4
  %391 = sext i32 %sub96.i to i64
  br label %for.body109.i365

for.body109.i365:                                 ; preds = %for.body109.i365, %for.body109.lr.ph.i349
  %indvars.iv386.i = phi i64 [ %391, %for.body109.lr.ph.i349 ], [ %indvars.iv.next387.i, %for.body109.i365 ]
  %ii.1363.i = phi i32 [ 0, %for.body109.lr.ph.i349 ], [ %inc146.i, %for.body109.i365 ]
  %392 = trunc i64 %indvars.iv386.i to i32
  %mul110.i = shl nsw i32 %392, 1
  %idxprom111.i = sext i32 %mul110.i to i64
  %arrayidx112.i = getelementptr inbounds double* %382, i64 %idxprom111.i
  %393 = load double* %arrayidx112.i, align 8, !tbaa !4
  %add114347.i = or i32 %mul110.i, 1
  %idxprom115.i350 = sext i32 %add114347.i to i64
  %arrayidx116.i351 = getelementptr inbounds double* %382, i64 %idxprom115.i350
  %394 = load double* %arrayidx116.i351, align 8, !tbaa !4
  %arrayidx118.i352 = getelementptr inbounds i32* %383, i64 %indvars.iv386.i
  %395 = load i32* %arrayidx118.i352, align 4, !tbaa !3
  %mul119.i = shl nsw i32 %395, 1
  %add120348.i = or i32 %mul119.i, 1
  %mul121.i = fmul double %387, %393
  %mul122.i = fmul double %388, %394
  %sub123.i353 = fsub double %mul121.i, %mul122.i
  %idxprom124.i = sext i32 %mul119.i to i64
  %arrayidx125.i = getelementptr inbounds double* %colB0.0.lcssa.i337, i64 %idxprom124.i
  %396 = load double* %arrayidx125.i, align 8, !tbaa !4
  %sub126.i = fsub double %396, %sub123.i353
  store double %sub126.i, double* %arrayidx125.i, align 8, !tbaa !4
  %mul127.i = fmul double %388, %393
  %mul128.i = fmul double %387, %394
  %add129.i = fadd double %mul127.i, %mul128.i
  %idxprom130.i = sext i32 %add120348.i to i64
  %arrayidx131.i = getelementptr inbounds double* %colB0.0.lcssa.i337, i64 %idxprom130.i
  %397 = load double* %arrayidx131.i, align 8, !tbaa !4
  %sub132.i = fsub double %397, %add129.i
  store double %sub132.i, double* %arrayidx131.i, align 8, !tbaa !4
  %mul133.i354 = fmul double %389, %393
  %mul134.i355 = fmul double %390, %394
  %sub135.i356 = fsub double %mul133.i354, %mul134.i355
  %add.ptr87.sum349.i = add i64 %idxprom124.i, %idx.ext86.i
  %arrayidx137.i357 = getelementptr inbounds double* %colB0.0.lcssa.i337, i64 %add.ptr87.sum349.i
  %398 = load double* %arrayidx137.i357, align 8, !tbaa !4
  %sub138.i358 = fsub double %398, %sub135.i356
  store double %sub138.i358, double* %arrayidx137.i357, align 8, !tbaa !4
  %mul139.i359 = fmul double %390, %393
  %mul140.i360 = fmul double %389, %394
  %add141.i361 = fadd double %mul139.i359, %mul140.i360
  %add.ptr87.sum350.i = add i64 %idxprom130.i, %idx.ext86.i
  %arrayidx143.i362 = getelementptr inbounds double* %colB0.0.lcssa.i337, i64 %add.ptr87.sum350.i
  %399 = load double* %arrayidx143.i362, align 8, !tbaa !4
  %sub144.i363 = fsub double %399, %add141.i361
  store double %sub144.i363, double* %arrayidx143.i362, align 8, !tbaa !4
  %inc146.i = add nsw i32 %ii.1363.i, 1
  %indvars.iv.next387.i = add i64 %indvars.iv386.i, 1
  %exitcond.i364 = icmp eq i32 %inc146.i, %386
  br i1 %exitcond.i364, label %for.cond89.outer.i, label %for.body109.i365

if.else.i366:                                     ; preds = %for.end81.i338
  %sub153.i = add nsw i32 %351, -1
  %cmp154.i = icmp eq i32 %jcolB.0.lcssa.i336, %sub153.i
  br i1 %cmp154.i, label %if.then155.i, label %sw.epilog34

if.then155.i:                                     ; preds = %if.else.i366
  %400 = load i32* %nrowA.i283, align 4, !tbaa !3
  %401 = load i32* %nentA.i282, align 4, !tbaa !3
  %402 = load i32** %sizesA.i286, align 8, !tbaa !0
  %403 = load double** %entriesA.i277, align 8, !tbaa !0
  %404 = load i32** %indicesA.i285, align 8, !tbaa !0
  br label %for.cond157.outer.i

for.cond157.outer.i:                              ; preds = %for.body173.i, %if.then155.i
  %colstart.4.ph.i367 = phi i32 [ %401, %if.then155.i ], [ %sub164.i, %for.body173.i ]
  %jcolA.2.in.ph.i368 = phi i32 [ %400, %if.then155.i ], [ %jcolA.2.i370, %for.body173.i ]
  %405 = sext i32 %jcolA.2.in.ph.i368 to i64
  br label %for.cond157.i

for.cond157.i:                                    ; preds = %for.body159.i, %for.cond157.outer.i
  %indvars.iv390.i = phi i64 [ %405, %for.cond157.outer.i ], [ %indvars.iv.next391.i, %for.body159.i ]
  %jcolA.2.in.i369 = phi i32 [ %jcolA.2.in.ph.i368, %for.cond157.outer.i ], [ %jcolA.2.i370, %for.body159.i ]
  %indvars.iv.next391.i = add i64 %indvars.iv390.i, -1
  %jcolA.2.i370 = add nsw i32 %jcolA.2.in.i369, -1
  %406 = trunc i64 %indvars.iv390.i to i32
  %cmp158.i = icmp sgt i32 %406, 0
  br i1 %cmp158.i, label %for.body159.i, label %sw.epilog34

for.body159.i:                                    ; preds = %for.cond157.i
  %arrayidx161.i = getelementptr inbounds i32* %402, i64 %indvars.iv.next391.i
  %407 = load i32* %arrayidx161.i, align 4, !tbaa !3
  %cmp162.i = icmp sgt i32 %407, 0
  br i1 %cmp162.i, label %for.body173.lr.ph.i, label %for.cond157.i

for.body173.lr.ph.i:                              ; preds = %for.body159.i
  %sub164.i = sub i32 %colstart.4.ph.i367, %407
  %mul165.i = shl nsw i32 %jcolA.2.i370, 1
  %add166342.i = or i32 %mul165.i, 1
  %idxprom167.i = sext i32 %mul165.i to i64
  %arrayidx168.i = getelementptr inbounds double* %colB0.0.lcssa.i337, i64 %idxprom167.i
  %408 = load double* %arrayidx168.i, align 8, !tbaa !4
  %idxprom169.i = sext i32 %add166342.i to i64
  %arrayidx170.i = getelementptr inbounds double* %colB0.0.lcssa.i337, i64 %idxprom169.i
  %409 = load double* %arrayidx170.i, align 8, !tbaa !4
  %410 = sext i32 %sub164.i to i64
  br label %for.body173.i

for.body173.i:                                    ; preds = %for.body173.i, %for.body173.lr.ph.i
  %indvars.iv392.i = phi i64 [ %410, %for.body173.lr.ph.i ], [ %indvars.iv.next393.i, %for.body173.i ]
  %ii.2367.i = phi i32 [ 0, %for.body173.lr.ph.i ], [ %inc198.i, %for.body173.i ]
  %411 = trunc i64 %indvars.iv392.i to i32
  %mul174.i = shl nsw i32 %411, 1
  %idxprom175.i = sext i32 %mul174.i to i64
  %arrayidx176.i = getelementptr inbounds double* %403, i64 %idxprom175.i
  %412 = load double* %arrayidx176.i, align 8, !tbaa !4
  %add178343.i = or i32 %mul174.i, 1
  %idxprom179.i = sext i32 %add178343.i to i64
  %arrayidx180.i = getelementptr inbounds double* %403, i64 %idxprom179.i
  %413 = load double* %arrayidx180.i, align 8, !tbaa !4
  %arrayidx182.i = getelementptr inbounds i32* %404, i64 %indvars.iv392.i
  %414 = load i32* %arrayidx182.i, align 4, !tbaa !3
  %mul183.i = shl nsw i32 %414, 1
  %add184344.i = or i32 %mul183.i, 1
  %mul185.i371 = fmul double %408, %412
  %mul186.i = fmul double %409, %413
  %sub187.i = fsub double %mul185.i371, %mul186.i
  %idxprom188.i = sext i32 %mul183.i to i64
  %arrayidx189.i = getelementptr inbounds double* %colB0.0.lcssa.i337, i64 %idxprom188.i
  %415 = load double* %arrayidx189.i, align 8, !tbaa !4
  %sub190.i = fsub double %415, %sub187.i
  store double %sub190.i, double* %arrayidx189.i, align 8, !tbaa !4
  %mul191.i = fmul double %409, %412
  %mul192.i = fmul double %408, %413
  %add193.i = fadd double %mul191.i, %mul192.i
  %idxprom194.i = sext i32 %add184344.i to i64
  %arrayidx195.i = getelementptr inbounds double* %colB0.0.lcssa.i337, i64 %idxprom194.i
  %416 = load double* %arrayidx195.i, align 8, !tbaa !4
  %sub196.i = fsub double %416, %add193.i
  store double %sub196.i, double* %arrayidx195.i, align 8, !tbaa !4
  %inc198.i = add nsw i32 %ii.2367.i, 1
  %indvars.iv.next393.i = add i64 %indvars.iv392.i, 1
  %exitcond394.i = icmp eq i32 %inc198.i, %407
  br i1 %exitcond394.i, label %for.cond157.outer.i, label %for.body173.i

sw.bb25:                                          ; preds = %sw.bb21
  %417 = bitcast double** %entriesA.i372 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %417) #4
  %418 = bitcast double** %entriesB.i373 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %418) #4
  %419 = bitcast i32* %inc1.i374 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %419) #4
  %420 = bitcast i32* %inc2.i375 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %420) #4
  %421 = bitcast i32* %ncolB.i376 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %421) #4
  %422 = bitcast i32* %nentA.i377 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %422) #4
  %423 = bitcast i32* %nrowA.i378 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %423) #4
  %424 = bitcast i32* %nrowB.i379 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %424) #4
  %425 = bitcast i32** %firstlocsA.i380 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %425) #4
  %426 = bitcast i32** %sizesA.i381 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %426) #4
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i378, i32* %nentA.i377, i32** %firstlocsA.i380, i32** %sizesA.i381, double** %entriesA.i372) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i379, i32* %ncolB.i376, i32* %inc1.i374, i32* %inc2.i375, double** %entriesB.i373) #5
  %427 = load double** %entriesB.i373, align 8, !tbaa !0
  %428 = load i32* %ncolB.i376, align 4, !tbaa !3
  %sub448.i = add nsw i32 %428, -2
  %cmp449.i = icmp sgt i32 %sub448.i, 0
  br i1 %cmp449.i, label %for.body.lr.ph.i386, label %for.end90.i

for.body.lr.ph.i386:                              ; preds = %sw.bb25
  %429 = load i32* %nrowB.i379, align 4, !tbaa !3
  %mul.i382 = shl nsw i32 %429, 1
  %idx.ext.i383 = sext i32 %mul.i382 to i64
  %add.ptr.sum.i384 = shl nsw i64 %idx.ext.i383, 1
  %430 = load i32* %nrowA.i378, align 4, !tbaa !3
  %cmp5444.i = icmp sgt i32 %430, 0
  %add.ptr3.sum.i385 = add i64 %add.ptr.sum.i384, %idx.ext.i383
  %431 = load i32** %sizesA.i381, align 8, !tbaa !0
  %432 = load i32** %firstlocsA.i380, align 8, !tbaa !0
  %433 = load double** %entriesA.i372, align 8, !tbaa !0
  br label %for.body.i387

for.body.i387:                                    ; preds = %for.end84.i, %for.body.lr.ph.i386
  %jcolB.0452.i = phi i32 [ 0, %for.body.lr.ph.i386 ], [ %add89.i, %for.end84.i ]
  %colB0.0450.i = phi double* [ %427, %for.body.lr.ph.i386 ], [ %add.ptr87.i, %for.end84.i ]
  br i1 %cmp5444.i, label %for.body6.i390, label %for.end84.i

for.body6.i390:                                   ; preds = %for.body.i387, %for.inc82.i
  %indvars.iv473.i = phi i64 [ %indvars.iv.next474.i, %for.inc82.i ], [ 0, %for.body.i387 ]
  %kk.0447.i = phi i32 [ %kk.2.i428, %for.inc82.i ], [ 0, %for.body.i387 ]
  %arrayidx.i388 = getelementptr inbounds i32* %431, i64 %indvars.iv473.i
  %434 = load i32* %arrayidx.i388, align 4, !tbaa !3
  %cmp7.i389 = icmp sgt i32 %434, 0
  br i1 %cmp7.i389, label %if.then.i394, label %for.inc82.i

if.then.i394:                                     ; preds = %for.body6.i390
  %arrayidx9.i391 = getelementptr inbounds i32* %432, i64 %indvars.iv473.i
  %435 = load i32* %arrayidx9.i391, align 4, !tbaa !3
  %add.i392 = add i32 %434, -1
  %sub12.i393 = add i32 %add.i392, %435
  %cmp14428.i = icmp sgt i32 %435, %sub12.i393
  br i1 %cmp14428.i, label %for.end.i427, label %for.body15.lr.ph.i

for.body15.lr.ph.i:                               ; preds = %if.then.i394
  %436 = sext i32 %kk.0447.i to i64
  %437 = sext i32 %435 to i64
  br label %for.body15.i

for.body15.i:                                     ; preds = %for.body15.i, %for.body15.lr.ph.i
  %indvars.iv470.i = phi i64 [ %indvars.iv.next471.i, %for.body15.i ], [ %437, %for.body15.lr.ph.i ]
  %indvars.iv468.i = phi i64 [ %indvars.iv.next469.i, %for.body15.i ], [ %436, %for.body15.lr.ph.i ]
  %rsum2.0434.i = phi double [ %add56.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %rsum1.0433.i = phi double [ %add48.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %rsum0.0432.i = phi double [ %add40.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %isum2.0431.i = phi double [ %add60.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %isum1.0430.i = phi double [ %add52.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %isum0.0429.i = phi double [ %add44.i410, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %438 = trunc i64 %indvars.iv468.i to i32
  %mul16.i = shl nsw i32 %438, 1
  %idxprom17.i395 = sext i32 %mul16.i to i64
  %arrayidx18.i396 = getelementptr inbounds double* %433, i64 %idxprom17.i395
  %439 = load double* %arrayidx18.i396, align 8, !tbaa !4
  %add20394.i = or i32 %mul16.i, 1
  %idxprom21.i397 = sext i32 %add20394.i to i64
  %arrayidx22.i398 = getelementptr inbounds double* %433, i64 %idxprom21.i397
  %440 = load double* %arrayidx22.i398, align 8, !tbaa !4
  %441 = trunc i64 %indvars.iv470.i to i32
  %mul23.i = shl nsw i32 %441, 1
  %add24395.i = or i32 %mul23.i, 1
  %idxprom25.i = sext i32 %mul23.i to i64
  %arrayidx26.i399 = getelementptr inbounds double* %colB0.0450.i, i64 %idxprom25.i
  %442 = load double* %arrayidx26.i399, align 8, !tbaa !4
  %idxprom27.i400 = sext i32 %add24395.i to i64
  %arrayidx28.i401 = getelementptr inbounds double* %colB0.0450.i, i64 %idxprom27.i400
  %443 = load double* %arrayidx28.i401, align 8, !tbaa !4
  %add.ptr.sum396.i = add i64 %idxprom25.i, %idx.ext.i383
  %arrayidx30.i402 = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr.sum396.i
  %444 = load double* %arrayidx30.i402, align 8, !tbaa !4
  %add.ptr.sum397.i = add i64 %idxprom27.i400, %idx.ext.i383
  %arrayidx32.i403 = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr.sum397.i
  %445 = load double* %arrayidx32.i403, align 8, !tbaa !4
  %add.ptr3.sum398.i = add i64 %idxprom25.i, %add.ptr.sum.i384
  %arrayidx34.i404 = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr3.sum398.i
  %446 = load double* %arrayidx34.i404, align 8, !tbaa !4
  %add.ptr3.sum399.i = add i64 %idxprom27.i400, %add.ptr.sum.i384
  %arrayidx36.i405 = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr3.sum399.i
  %447 = load double* %arrayidx36.i405, align 8, !tbaa !4
  %mul37.i406 = fmul double %439, %442
  %mul38.i407 = fmul double %440, %443
  %sub39.i408 = fsub double %mul37.i406, %mul38.i407
  %add40.i = fadd double %rsum0.0432.i, %sub39.i408
  %mul41.i409 = fmul double %439, %443
  %mul42.i = fmul double %440, %442
  %add43.i = fadd double %mul42.i, %mul41.i409
  %add44.i410 = fadd double %isum0.0429.i, %add43.i
  %mul45.i = fmul double %439, %444
  %mul46.i = fmul double %440, %445
  %sub47.i = fsub double %mul45.i, %mul46.i
  %add48.i = fadd double %rsum1.0433.i, %sub47.i
  %mul49.i411 = fmul double %439, %445
  %mul50.i412 = fmul double %440, %444
  %add51.i413 = fadd double %mul50.i412, %mul49.i411
  %add52.i = fadd double %isum1.0430.i, %add51.i413
  %mul53.i = fmul double %439, %446
  %mul54.i = fmul double %440, %447
  %sub55.i = fsub double %mul53.i, %mul54.i
  %add56.i = fadd double %rsum2.0434.i, %sub55.i
  %mul57.i = fmul double %439, %447
  %mul58.i = fmul double %440, %446
  %add59.i = fadd double %mul58.i, %mul57.i
  %add60.i = fadd double %isum2.0431.i, %add59.i
  %indvars.iv.next471.i = add i64 %indvars.iv470.i, 1
  %indvars.iv.next469.i = add i64 %indvars.iv468.i, 1
  %cmp14.i414 = icmp slt i32 %441, %sub12.i393
  br i1 %cmp14.i414, label %for.body15.i, label %for.cond13.for.end_crit_edge.i

for.cond13.for.end_crit_edge.i:                   ; preds = %for.body15.i
  %448 = add i32 %434, %kk.0447.i
  br label %for.end.i427

for.end.i427:                                     ; preds = %for.cond13.for.end_crit_edge.i, %if.then.i394
  %kk.1.lcssa.i415 = phi i32 [ %448, %for.cond13.for.end_crit_edge.i ], [ %kk.0447.i, %if.then.i394 ]
  %rsum2.0.lcssa.i = phi double [ %add56.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i394 ]
  %rsum1.0.lcssa.i = phi double [ %add48.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i394 ]
  %rsum0.0.lcssa.i = phi double [ %add40.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i394 ]
  %isum2.0.lcssa.i = phi double [ %add60.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i394 ]
  %isum1.0.lcssa.i = phi double [ %add52.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i394 ]
  %isum0.0.lcssa.i = phi double [ %add44.i410, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i394 ]
  %449 = trunc i64 %indvars.iv473.i to i32
  %mul62.i416 = shl nsw i32 %449, 1
  %add63389.i = or i32 %mul62.i416, 1
  %idxprom64.i = sext i32 %mul62.i416 to i64
  %arrayidx65.i417 = getelementptr inbounds double* %colB0.0450.i, i64 %idxprom64.i
  %450 = load double* %arrayidx65.i417, align 8, !tbaa !4
  %sub66.i418 = fsub double %450, %rsum0.0.lcssa.i
  store double %sub66.i418, double* %arrayidx65.i417, align 8, !tbaa !4
  %idxprom67.i = sext i32 %add63389.i to i64
  %arrayidx68.i419 = getelementptr inbounds double* %colB0.0450.i, i64 %idxprom67.i
  %451 = load double* %arrayidx68.i419, align 8, !tbaa !4
  %sub69.i420 = fsub double %451, %isum0.0.lcssa.i
  store double %sub69.i420, double* %arrayidx68.i419, align 8, !tbaa !4
  %add.ptr.sum390.i = add i64 %idxprom64.i, %idx.ext.i383
  %arrayidx71.i421 = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr.sum390.i
  %452 = load double* %arrayidx71.i421, align 8, !tbaa !4
  %sub72.i422 = fsub double %452, %rsum1.0.lcssa.i
  store double %sub72.i422, double* %arrayidx71.i421, align 8, !tbaa !4
  %add.ptr.sum391.i = add i64 %idxprom67.i, %idx.ext.i383
  %arrayidx74.i423 = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr.sum391.i
  %453 = load double* %arrayidx74.i423, align 8, !tbaa !4
  %sub75.i = fsub double %453, %isum1.0.lcssa.i
  store double %sub75.i, double* %arrayidx74.i423, align 8, !tbaa !4
  %add.ptr3.sum392.i = add i64 %idxprom64.i, %add.ptr.sum.i384
  %arrayidx77.i424 = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr3.sum392.i
  %454 = load double* %arrayidx77.i424, align 8, !tbaa !4
  %sub78.i425 = fsub double %454, %rsum2.0.lcssa.i
  store double %sub78.i425, double* %arrayidx77.i424, align 8, !tbaa !4
  %add.ptr3.sum393.i = add i64 %idxprom67.i, %add.ptr.sum.i384
  %arrayidx80.i = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr3.sum393.i
  %455 = load double* %arrayidx80.i, align 8, !tbaa !4
  %sub81.i426 = fsub double %455, %isum2.0.lcssa.i
  store double %sub81.i426, double* %arrayidx80.i, align 8, !tbaa !4
  br label %for.inc82.i

for.inc82.i:                                      ; preds = %for.end.i427, %for.body6.i390
  %kk.2.i428 = phi i32 [ %kk.1.lcssa.i415, %for.end.i427 ], [ %kk.0447.i, %for.body6.i390 ]
  %indvars.iv.next474.i = add i64 %indvars.iv473.i, 1
  %lftr.wideiv707 = trunc i64 %indvars.iv.next474.i to i32
  %exitcond708 = icmp eq i32 %lftr.wideiv707, %430
  br i1 %exitcond708, label %for.end84.i, label %for.body6.i390

for.end84.i:                                      ; preds = %for.inc82.i, %for.body.i387
  %add.ptr87.i = getelementptr inbounds double* %colB0.0450.i, i64 %add.ptr3.sum.i385
  %add89.i = add nsw i32 %jcolB.0452.i, 3
  %cmp.i430 = icmp slt i32 %add89.i, %sub448.i
  br i1 %cmp.i430, label %for.body.i387, label %for.end90.i

for.end90.i:                                      ; preds = %for.end84.i, %sw.bb25
  %jcolB.0.lcssa.i431 = phi i32 [ 0, %sw.bb25 ], [ %add89.i, %for.end84.i ]
  %colB0.0.lcssa.i432 = phi double* [ %427, %sw.bb25 ], [ %add.ptr87.i, %for.end84.i ]
  %cmp92.i433 = icmp eq i32 %jcolB.0.lcssa.i431, %sub448.i
  br i1 %cmp92.i433, label %if.then93.i, label %if.else.i456

if.then93.i:                                      ; preds = %for.end90.i
  %456 = load i32* %nrowB.i379, align 4, !tbaa !3
  %mul94.i = shl nsw i32 %456, 1
  %idx.ext95.i = sext i32 %mul94.i to i64
  %457 = load i32* %nrowA.i378, align 4, !tbaa !3
  %cmp98411.i = icmp sgt i32 %457, 0
  br i1 %cmp98411.i, label %for.body99.lr.ph.i434, label %sw.epilog34

for.body99.lr.ph.i434:                            ; preds = %if.then93.i
  %458 = load i32** %sizesA.i381, align 8, !tbaa !0
  %459 = load i32** %firstlocsA.i380, align 8, !tbaa !0
  %460 = load double** %entriesA.i372, align 8, !tbaa !0
  br label %for.body99.i437

for.body99.i437:                                  ; preds = %for.inc165.i, %for.body99.lr.ph.i434
  %indvars.iv459.i = phi i64 [ 0, %for.body99.lr.ph.i434 ], [ %indvars.iv.next460.i, %for.inc165.i ]
  %kk.3414.i = phi i32 [ 0, %for.body99.lr.ph.i434 ], [ %kk.5.i454, %for.inc165.i ]
  %arrayidx101.i435 = getelementptr inbounds i32* %458, i64 %indvars.iv459.i
  %461 = load i32* %arrayidx101.i435, align 4, !tbaa !3
  %cmp102.i436 = icmp sgt i32 %461, 0
  br i1 %cmp102.i436, label %if.then103.i441, label %for.inc165.i

if.then103.i441:                                  ; preds = %for.body99.i437
  %arrayidx105.i438 = getelementptr inbounds i32* %459, i64 %indvars.iv459.i
  %462 = load i32* %arrayidx105.i438, align 4, !tbaa !3
  %add108.i439 = add i32 %461, -1
  %sub109.i440 = add i32 %add108.i439, %462
  %cmp111400.i = icmp sgt i32 %462, %sub109.i440
  br i1 %cmp111400.i, label %for.end149.i, label %for.body112.lr.ph.i

for.body112.lr.ph.i:                              ; preds = %if.then103.i441
  %463 = sext i32 %kk.3414.i to i64
  %464 = sext i32 %462 to i64
  br label %for.body112.i

for.body112.i:                                    ; preds = %for.body112.i, %for.body112.lr.ph.i
  %indvars.iv457.i = phi i64 [ %indvars.iv.next458.i, %for.body112.i ], [ %464, %for.body112.lr.ph.i ]
  %indvars.iv.i442 = phi i64 [ %indvars.iv.next.i452, %for.body112.i ], [ %463, %for.body112.lr.ph.i ]
  %rsum1.1404.i = phi double [ %add141.i451, %for.body112.i ], [ 0.000000e+00, %for.body112.lr.ph.i ]
  %rsum0.1403.i = phi double [ %add133.i, %for.body112.i ], [ 0.000000e+00, %for.body112.lr.ph.i ]
  %isum1.1402.i = phi double [ %add145.i, %for.body112.i ], [ 0.000000e+00, %for.body112.lr.ph.i ]
  %isum0.1401.i = phi double [ %add137.i, %for.body112.i ], [ 0.000000e+00, %for.body112.lr.ph.i ]
  %465 = trunc i64 %indvars.iv.i442 to i32
  %mul113.i = shl nsw i32 %465, 1
  %idxprom114.i = sext i32 %mul113.i to i64
  %arrayidx115.i = getelementptr inbounds double* %460, i64 %idxprom114.i
  %466 = load double* %arrayidx115.i, align 8, !tbaa !4
  %add117385.i = or i32 %mul113.i, 1
  %idxprom118.i = sext i32 %add117385.i to i64
  %arrayidx119.i443 = getelementptr inbounds double* %460, i64 %idxprom118.i
  %467 = load double* %arrayidx119.i443, align 8, !tbaa !4
  %468 = trunc i64 %indvars.iv457.i to i32
  %mul120.i444 = shl nsw i32 %468, 1
  %add121386.i = or i32 %mul120.i444, 1
  %idxprom122.i = sext i32 %mul120.i444 to i64
  %arrayidx123.i = getelementptr inbounds double* %colB0.0.lcssa.i432, i64 %idxprom122.i
  %469 = load double* %arrayidx123.i, align 8, !tbaa !4
  %idxprom124.i445 = sext i32 %add121386.i to i64
  %arrayidx125.i446 = getelementptr inbounds double* %colB0.0.lcssa.i432, i64 %idxprom124.i445
  %470 = load double* %arrayidx125.i446, align 8, !tbaa !4
  %add.ptr96.sum387.i = add i64 %idxprom122.i, %idx.ext95.i
  %arrayidx127.i = getelementptr inbounds double* %colB0.0.lcssa.i432, i64 %add.ptr96.sum387.i
  %471 = load double* %arrayidx127.i, align 8, !tbaa !4
  %add.ptr96.sum388.i = add i64 %idxprom124.i445, %idx.ext95.i
  %arrayidx129.i = getelementptr inbounds double* %colB0.0.lcssa.i432, i64 %add.ptr96.sum388.i
  %472 = load double* %arrayidx129.i, align 8, !tbaa !4
  %mul130.i = fmul double %466, %469
  %mul131.i447 = fmul double %467, %470
  %sub132.i448 = fsub double %mul130.i, %mul131.i447
  %add133.i = fadd double %rsum0.1403.i, %sub132.i448
  %mul134.i449 = fmul double %466, %470
  %mul135.i = fmul double %467, %469
  %add136.i = fadd double %mul135.i, %mul134.i449
  %add137.i = fadd double %isum0.1401.i, %add136.i
  %mul138.i = fmul double %466, %471
  %mul139.i450 = fmul double %467, %472
  %sub140.i = fsub double %mul138.i, %mul139.i450
  %add141.i451 = fadd double %rsum1.1404.i, %sub140.i
  %mul142.i = fmul double %466, %472
  %mul143.i = fmul double %467, %471
  %add144.i = fadd double %mul143.i, %mul142.i
  %add145.i = fadd double %isum1.1402.i, %add144.i
  %indvars.iv.next458.i = add i64 %indvars.iv457.i, 1
  %indvars.iv.next.i452 = add i64 %indvars.iv.i442, 1
  %cmp111.i = icmp slt i32 %468, %sub109.i440
  br i1 %cmp111.i, label %for.body112.i, label %for.cond110.for.end149_crit_edge.i

for.cond110.for.end149_crit_edge.i:               ; preds = %for.body112.i
  %473 = add i32 %461, %kk.3414.i
  br label %for.end149.i

for.end149.i:                                     ; preds = %for.cond110.for.end149_crit_edge.i, %if.then103.i441
  %kk.4.lcssa.i453 = phi i32 [ %473, %for.cond110.for.end149_crit_edge.i ], [ %kk.3414.i, %if.then103.i441 ]
  %rsum1.1.lcssa.i = phi double [ %add141.i451, %for.cond110.for.end149_crit_edge.i ], [ 0.000000e+00, %if.then103.i441 ]
  %rsum0.1.lcssa.i = phi double [ %add133.i, %for.cond110.for.end149_crit_edge.i ], [ 0.000000e+00, %if.then103.i441 ]
  %isum1.1.lcssa.i = phi double [ %add145.i, %for.cond110.for.end149_crit_edge.i ], [ 0.000000e+00, %if.then103.i441 ]
  %isum0.1.lcssa.i = phi double [ %add137.i, %for.cond110.for.end149_crit_edge.i ], [ 0.000000e+00, %if.then103.i441 ]
  %474 = trunc i64 %indvars.iv459.i to i32
  %mul150.i = shl nsw i32 %474, 1
  %add151383.i = or i32 %mul150.i, 1
  %idxprom152.i = sext i32 %mul150.i to i64
  %arrayidx153.i = getelementptr inbounds double* %colB0.0.lcssa.i432, i64 %idxprom152.i
  %475 = load double* %arrayidx153.i, align 8, !tbaa !4
  %sub154.i = fsub double %475, %rsum0.1.lcssa.i
  store double %sub154.i, double* %arrayidx153.i, align 8, !tbaa !4
  %idxprom155.i = sext i32 %add151383.i to i64
  %arrayidx156.i = getelementptr inbounds double* %colB0.0.lcssa.i432, i64 %idxprom155.i
  %476 = load double* %arrayidx156.i, align 8, !tbaa !4
  %sub157.i = fsub double %476, %isum0.1.lcssa.i
  store double %sub157.i, double* %arrayidx156.i, align 8, !tbaa !4
  %add.ptr96.sum.i = add i64 %idxprom152.i, %idx.ext95.i
  %arrayidx159.i = getelementptr inbounds double* %colB0.0.lcssa.i432, i64 %add.ptr96.sum.i
  %477 = load double* %arrayidx159.i, align 8, !tbaa !4
  %sub160.i = fsub double %477, %rsum1.1.lcssa.i
  store double %sub160.i, double* %arrayidx159.i, align 8, !tbaa !4
  %add.ptr96.sum384.i = add i64 %idxprom155.i, %idx.ext95.i
  %arrayidx162.i = getelementptr inbounds double* %colB0.0.lcssa.i432, i64 %add.ptr96.sum384.i
  %478 = load double* %arrayidx162.i, align 8, !tbaa !4
  %sub163.i = fsub double %478, %isum1.1.lcssa.i
  store double %sub163.i, double* %arrayidx162.i, align 8, !tbaa !4
  br label %for.inc165.i

for.inc165.i:                                     ; preds = %for.end149.i, %for.body99.i437
  %kk.5.i454 = phi i32 [ %kk.4.lcssa.i453, %for.end149.i ], [ %kk.3414.i, %for.body99.i437 ]
  %indvars.iv.next460.i = add i64 %indvars.iv459.i, 1
  %lftr.wideiv703 = trunc i64 %indvars.iv.next460.i to i32
  %exitcond704 = icmp eq i32 %lftr.wideiv703, %457
  br i1 %exitcond704, label %sw.epilog34, label %for.body99.i437

if.else.i456:                                     ; preds = %for.end90.i
  %sub168.i = add nsw i32 %428, -1
  %cmp169.i = icmp eq i32 %jcolB.0.lcssa.i431, %sub168.i
  br i1 %cmp169.i, label %for.cond171.preheader.i, label %sw.epilog34

for.cond171.preheader.i:                          ; preds = %if.else.i456
  %479 = load i32* %nrowA.i378, align 4, !tbaa !3
  %cmp172424.i = icmp sgt i32 %479, 0
  br i1 %cmp172424.i, label %for.body173.lr.ph.i457, label %sw.epilog34

for.body173.lr.ph.i457:                           ; preds = %for.cond171.preheader.i
  %480 = load i32** %sizesA.i381, align 8, !tbaa !0
  %481 = load i32** %firstlocsA.i380, align 8, !tbaa !0
  %482 = load double** %entriesA.i372, align 8, !tbaa !0
  br label %for.body173.i458

for.body173.i458:                                 ; preds = %for.inc221.i, %for.body173.lr.ph.i457
  %indvars.iv466.i = phi i64 [ 0, %for.body173.lr.ph.i457 ], [ %indvars.iv.next467.i, %for.inc221.i ]
  %kk.6427.i = phi i32 [ 0, %for.body173.lr.ph.i457 ], [ %kk.8.i465, %for.inc221.i ]
  %arrayidx175.i = getelementptr inbounds i32* %480, i64 %indvars.iv466.i
  %483 = load i32* %arrayidx175.i, align 4, !tbaa !3
  %cmp176.i = icmp sgt i32 %483, 0
  br i1 %cmp176.i, label %if.then177.i, label %for.inc221.i

if.then177.i:                                     ; preds = %for.body173.i458
  %arrayidx179.i = getelementptr inbounds i32* %481, i64 %indvars.iv466.i
  %484 = load i32* %arrayidx179.i, align 4, !tbaa !3
  %add182.i = add i32 %483, -1
  %sub183.i = add i32 %add182.i, %484
  %cmp185415.i = icmp sgt i32 %484, %sub183.i
  br i1 %cmp185415.i, label %for.end211.i, label %for.body186.lr.ph.i

for.body186.lr.ph.i:                              ; preds = %if.then177.i
  %485 = sext i32 %kk.6427.i to i64
  %486 = sext i32 %484 to i64
  br label %for.body186.i

for.body186.i:                                    ; preds = %for.body186.i, %for.body186.lr.ph.i
  %indvars.iv463.i = phi i64 [ %indvars.iv.next464.i, %for.body186.i ], [ %486, %for.body186.lr.ph.i ]
  %indvars.iv461.i = phi i64 [ %indvars.iv.next462.i, %for.body186.i ], [ %485, %for.body186.lr.ph.i ]
  %rsum0.2417.i = phi double [ %add203.i, %for.body186.i ], [ 0.000000e+00, %for.body186.lr.ph.i ]
  %isum0.2416.i = phi double [ %add207.i, %for.body186.i ], [ 0.000000e+00, %for.body186.lr.ph.i ]
  %487 = trunc i64 %indvars.iv461.i to i32
  %mul187.i = shl nsw i32 %487, 1
  %idxprom188.i459 = sext i32 %mul187.i to i64
  %arrayidx189.i460 = getelementptr inbounds double* %482, i64 %idxprom188.i459
  %488 = load double* %arrayidx189.i460, align 8, !tbaa !4
  %add191381.i = or i32 %mul187.i, 1
  %idxprom192.i = sext i32 %add191381.i to i64
  %arrayidx193.i = getelementptr inbounds double* %482, i64 %idxprom192.i
  %489 = load double* %arrayidx193.i, align 8, !tbaa !4
  %490 = trunc i64 %indvars.iv463.i to i32
  %mul194.i461 = shl nsw i32 %490, 1
  %add195382.i = or i32 %mul194.i461, 1
  %idxprom196.i = sext i32 %mul194.i461 to i64
  %arrayidx197.i = getelementptr inbounds double* %colB0.0.lcssa.i432, i64 %idxprom196.i
  %491 = load double* %arrayidx197.i, align 8, !tbaa !4
  %idxprom198.i = sext i32 %add195382.i to i64
  %arrayidx199.i = getelementptr inbounds double* %colB0.0.lcssa.i432, i64 %idxprom198.i
  %492 = load double* %arrayidx199.i, align 8, !tbaa !4
  %mul200.i = fmul double %488, %491
  %mul201.i462 = fmul double %489, %492
  %sub202.i = fsub double %mul200.i, %mul201.i462
  %add203.i = fadd double %rsum0.2417.i, %sub202.i
  %mul204.i463 = fmul double %488, %492
  %mul205.i = fmul double %489, %491
  %add206.i = fadd double %mul205.i, %mul204.i463
  %add207.i = fadd double %isum0.2416.i, %add206.i
  %indvars.iv.next464.i = add i64 %indvars.iv463.i, 1
  %indvars.iv.next462.i = add i64 %indvars.iv461.i, 1
  %cmp185.i = icmp slt i32 %490, %sub183.i
  br i1 %cmp185.i, label %for.body186.i, label %for.cond184.for.end211_crit_edge.i

for.cond184.for.end211_crit_edge.i:               ; preds = %for.body186.i
  %493 = add i32 %483, %kk.6427.i
  br label %for.end211.i

for.end211.i:                                     ; preds = %for.cond184.for.end211_crit_edge.i, %if.then177.i
  %kk.7.lcssa.i464 = phi i32 [ %493, %for.cond184.for.end211_crit_edge.i ], [ %kk.6427.i, %if.then177.i ]
  %rsum0.2.lcssa.i = phi double [ %add203.i, %for.cond184.for.end211_crit_edge.i ], [ 0.000000e+00, %if.then177.i ]
  %isum0.2.lcssa.i = phi double [ %add207.i, %for.cond184.for.end211_crit_edge.i ], [ 0.000000e+00, %if.then177.i ]
  %494 = trunc i64 %indvars.iv466.i to i32
  %mul212.i = shl nsw i32 %494, 1
  %add213380.i = or i32 %mul212.i, 1
  %idxprom214.i = sext i32 %mul212.i to i64
  %arrayidx215.i = getelementptr inbounds double* %colB0.0.lcssa.i432, i64 %idxprom214.i
  %495 = load double* %arrayidx215.i, align 8, !tbaa !4
  %sub216.i = fsub double %495, %rsum0.2.lcssa.i
  store double %sub216.i, double* %arrayidx215.i, align 8, !tbaa !4
  %idxprom217.i = sext i32 %add213380.i to i64
  %arrayidx218.i = getelementptr inbounds double* %colB0.0.lcssa.i432, i64 %idxprom217.i
  %496 = load double* %arrayidx218.i, align 8, !tbaa !4
  %sub219.i = fsub double %496, %isum0.2.lcssa.i
  store double %sub219.i, double* %arrayidx218.i, align 8, !tbaa !4
  br label %for.inc221.i

for.inc221.i:                                     ; preds = %for.end211.i, %for.body173.i458
  %kk.8.i465 = phi i32 [ %kk.7.lcssa.i464, %for.end211.i ], [ %kk.6427.i, %for.body173.i458 ]
  %indvars.iv.next467.i = add i64 %indvars.iv466.i, 1
  %lftr.wideiv705 = trunc i64 %indvars.iv.next467.i to i32
  %exitcond706 = icmp eq i32 %lftr.wideiv705, %479
  br i1 %exitcond706, label %sw.epilog34, label %for.body173.i458

sw.bb26:                                          ; preds = %sw.bb21
  %497 = bitcast double** %entriesA.i466 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %497) #4
  %498 = bitcast double** %entriesB.i467 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %498) #4
  %499 = bitcast i32* %inc1.i468 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %499) #4
  %500 = bitcast i32* %inc2.i469 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %500) #4
  %501 = bitcast i32* %ncolB.i470 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %501) #4
  %502 = bitcast i32* %nentA.i471 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %502) #4
  %503 = bitcast i32* %nrowA.i472 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %503) #4
  %504 = bitcast i32* %nrowB.i473 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %504) #4
  %505 = bitcast i32** %indicesA.i474 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %505) #4
  %506 = bitcast i32** %sizesA.i475 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %506) #4
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i472, i32* %nentA.i471, i32** %sizesA.i475, i32** %indicesA.i474, double** %entriesA.i466) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i473, i32* %ncolB.i470, i32* %inc1.i468, i32* %inc2.i469, double** %entriesB.i467) #5
  %507 = load double** %entriesB.i467, align 8, !tbaa !0
  %508 = load i32* %ncolB.i470, align 4, !tbaa !3
  %sub497.i = add nsw i32 %508, -2
  %cmp498.i = icmp sgt i32 %sub497.i, 0
  br i1 %cmp498.i, label %for.body.lr.ph.i480, label %for.end90.i530

for.body.lr.ph.i480:                              ; preds = %sw.bb26
  %509 = load i32* %nrowB.i473, align 4, !tbaa !3
  %mul.i476 = shl nsw i32 %509, 1
  %idx.ext.i477 = sext i32 %mul.i476 to i64
  %add.ptr.sum.i478 = shl nsw i64 %idx.ext.i477, 1
  %510 = load i32* %nrowA.i472, align 4, !tbaa !3
  %cmp5487.i = icmp sgt i32 %510, 0
  %add.ptr3.sum.i479 = add i64 %add.ptr.sum.i478, %idx.ext.i477
  %511 = load i32** %sizesA.i475, align 8, !tbaa !0
  %512 = load double** %entriesA.i466, align 8, !tbaa !0
  %513 = load i32** %indicesA.i474, align 8, !tbaa !0
  br label %for.body.i481

for.body.i481:                                    ; preds = %for.end84.i526, %for.body.lr.ph.i480
  %jcolB.0501.i = phi i32 [ 0, %for.body.lr.ph.i480 ], [ %add89.i524, %for.end84.i526 ]
  %colB0.0499.i = phi double* [ %507, %for.body.lr.ph.i480 ], [ %add.ptr87.i523, %for.end84.i526 ]
  br i1 %cmp5487.i, label %for.body6.i484, label %for.end84.i526

for.body6.i484:                                   ; preds = %for.body.i481, %for.inc82.i522
  %indvars.iv528.i = phi i64 [ %indvars.iv.next529.i, %for.inc82.i522 ], [ 0, %for.body.i481 ]
  %kk.0491.i = phi i32 [ %kk.2.i520, %for.inc82.i522 ], [ 0, %for.body.i481 ]
  %irowA.0488.i = phi i32 [ %inc83.i, %for.inc82.i522 ], [ 0, %for.body.i481 ]
  %arrayidx.i482 = getelementptr inbounds i32* %511, i64 %indvars.iv528.i
  %514 = load i32* %arrayidx.i482, align 4, !tbaa !3
  %cmp7.i483 = icmp sgt i32 %514, 0
  br i1 %cmp7.i483, label %for.body10.lr.ph.i, label %for.inc82.i522

for.body10.lr.ph.i:                               ; preds = %for.body6.i484
  %515 = sext i32 %kk.0491.i to i64
  %516 = trunc i64 %indvars.iv528.i to i32
  br label %for.body10.i

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
  %517 = trunc i64 %indvars.iv525.i to i32
  %mul11.i = shl nsw i32 %517, 1
  %idxprom12.i = sext i32 %mul11.i to i64
  %arrayidx13.i485 = getelementptr inbounds double* %512, i64 %idxprom12.i
  %518 = load double* %arrayidx13.i485, align 8, !tbaa !4
  %add410.i = or i32 %mul11.i, 1
  %idxprom15.i = sext i32 %add410.i to i64
  %arrayidx16.i486 = getelementptr inbounds double* %512, i64 %idxprom15.i
  %519 = load double* %arrayidx16.i486, align 8, !tbaa !4
  %arrayidx18.i487 = getelementptr inbounds i32* %513, i64 %indvars.iv525.i
  %520 = load i32* %arrayidx18.i487, align 4, !tbaa !3
  %cmp19.i = icmp sgt i32 %520, -1
  %cmp20.i = icmp slt i32 %520, %516
  %or.cond.i488 = and i1 %cmp19.i, %cmp20.i
  br i1 %or.cond.i488, label %if.end.i510, label %if.then21.i

if.then21.i:                                      ; preds = %for.body10.i
  %521 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call.i489 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %521, i8* getelementptr inbounds ([52 x i8]* @.str5, i64 0, i64 0), i32 %irowA.0488.i, i32 %kk.1478.i, i32 %ii.0477.i, i32 %520) #5
  call void @exit(i32 -1) #6
  unreachable

if.end.i510:                                      ; preds = %for.body10.i
  %mul22.i490 = shl nsw i32 %520, 1
  %add23411.i = or i32 %mul22.i490, 1
  %idxprom24.i = sext i32 %mul22.i490 to i64
  %arrayidx25.i491 = getelementptr inbounds double* %colB0.0499.i, i64 %idxprom24.i
  %522 = load double* %arrayidx25.i491, align 8, !tbaa !4
  %idxprom26.i = sext i32 %add23411.i to i64
  %arrayidx27.i492 = getelementptr inbounds double* %colB0.0499.i, i64 %idxprom26.i
  %523 = load double* %arrayidx27.i492, align 8, !tbaa !4
  %add.ptr.sum412.i = add i64 %idxprom24.i, %idx.ext.i477
  %arrayidx29.i493 = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr.sum412.i
  %524 = load double* %arrayidx29.i493, align 8, !tbaa !4
  %add.ptr.sum413.i = add i64 %idxprom26.i, %idx.ext.i477
  %arrayidx31.i494 = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr.sum413.i
  %525 = load double* %arrayidx31.i494, align 8, !tbaa !4
  %add.ptr3.sum414.i = add i64 %idxprom24.i, %add.ptr.sum.i478
  %arrayidx33.i495 = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr3.sum414.i
  %526 = load double* %arrayidx33.i495, align 8, !tbaa !4
  %add.ptr3.sum415.i = add i64 %idxprom26.i, %add.ptr.sum.i478
  %arrayidx35.i496 = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr3.sum415.i
  %527 = load double* %arrayidx35.i496, align 8, !tbaa !4
  %mul36.i = fmul double %518, %522
  %mul37.i497 = fmul double %519, %523
  %sub38.i = fsub double %mul36.i, %mul37.i497
  %add39.i = fadd double %rsum0.0474.i, %sub38.i
  %mul40.i = fmul double %518, %523
  %mul41.i498 = fmul double %519, %522
  %add42.i = fadd double %mul41.i498, %mul40.i
  %add43.i499 = fadd double %isum0.0471.i, %add42.i
  %mul44.i500 = fmul double %518, %524
  %mul45.i501 = fmul double %519, %525
  %sub46.i = fsub double %mul44.i500, %mul45.i501
  %add47.i = fadd double %rsum1.0475.i, %sub46.i
  %mul48.i = fmul double %518, %525
  %mul49.i502 = fmul double %519, %524
  %add50.i = fadd double %mul49.i502, %mul48.i
  %add51.i503 = fadd double %isum1.0472.i, %add50.i
  %mul52.i = fmul double %518, %526
  %mul53.i504 = fmul double %519, %527
  %sub54.i505 = fsub double %mul52.i, %mul53.i504
  %add55.i = fadd double %rsum2.0476.i, %sub54.i505
  %mul56.i506 = fmul double %518, %527
  %mul57.i507 = fmul double %519, %526
  %add58.i = fadd double %mul57.i507, %mul56.i506
  %add59.i508 = fadd double %isum2.0473.i, %add58.i
  %inc.i509 = add nsw i32 %ii.0477.i, 1
  %indvars.iv.next526.i = add i64 %indvars.iv525.i, 1
  %inc60.i = add nsw i32 %kk.1478.i, 1
  %cmp9.i = icmp slt i32 %inc.i509, %514
  br i1 %cmp9.i, label %for.body10.i, label %for.end.i519

for.end.i519:                                     ; preds = %if.end.i510
  %phitmp535.i = shl i32 %516, 1
  %add62405.i = or i32 %phitmp535.i, 1
  %idxprom63.i = sext i32 %phitmp535.i to i64
  %arrayidx64.i511 = getelementptr inbounds double* %colB0.0499.i, i64 %idxprom63.i
  %528 = load double* %arrayidx64.i511, align 8, !tbaa !4
  %sub65.i = fsub double %528, %add39.i
  store double %sub65.i, double* %arrayidx64.i511, align 8, !tbaa !4
  %idxprom66.i512 = sext i32 %add62405.i to i64
  %arrayidx67.i513 = getelementptr inbounds double* %colB0.0499.i, i64 %idxprom66.i512
  %529 = load double* %arrayidx67.i513, align 8, !tbaa !4
  %sub68.i514 = fsub double %529, %add43.i499
  store double %sub68.i514, double* %arrayidx67.i513, align 8, !tbaa !4
  %add.ptr.sum406.i = add i64 %idxprom63.i, %idx.ext.i477
  %arrayidx70.i515 = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr.sum406.i
  %530 = load double* %arrayidx70.i515, align 8, !tbaa !4
  %sub71.i = fsub double %530, %add47.i
  store double %sub71.i, double* %arrayidx70.i515, align 8, !tbaa !4
  %add.ptr.sum407.i = add i64 %idxprom66.i512, %idx.ext.i477
  %arrayidx73.i = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr.sum407.i
  %531 = load double* %arrayidx73.i, align 8, !tbaa !4
  %sub74.i = fsub double %531, %add51.i503
  store double %sub74.i, double* %arrayidx73.i, align 8, !tbaa !4
  %add.ptr3.sum408.i = add i64 %idxprom63.i, %add.ptr.sum.i478
  %arrayidx76.i516 = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr3.sum408.i
  %532 = load double* %arrayidx76.i516, align 8, !tbaa !4
  %sub77.i = fsub double %532, %add55.i
  store double %sub77.i, double* %arrayidx76.i516, align 8, !tbaa !4
  %add.ptr3.sum409.i = add i64 %idxprom66.i512, %add.ptr.sum.i478
  %arrayidx79.i517 = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr3.sum409.i
  %533 = load double* %arrayidx79.i517, align 8, !tbaa !4
  %sub80.i518 = fsub double %533, %add59.i508
  store double %sub80.i518, double* %arrayidx79.i517, align 8, !tbaa !4
  br label %for.inc82.i522

for.inc82.i522:                                   ; preds = %for.end.i519, %for.body6.i484
  %kk.2.i520 = phi i32 [ %inc60.i, %for.end.i519 ], [ %kk.0491.i, %for.body6.i484 ]
  %indvars.iv.next529.i = add i64 %indvars.iv528.i, 1
  %inc83.i = add nsw i32 %irowA.0488.i, 1
  %534 = trunc i64 %indvars.iv.next529.i to i32
  %cmp5.i521 = icmp slt i32 %534, %510
  br i1 %cmp5.i521, label %for.body6.i484, label %for.end84.i526

for.end84.i526:                                   ; preds = %for.inc82.i522, %for.body.i481
  %add.ptr87.i523 = getelementptr inbounds double* %colB0.0499.i, i64 %add.ptr3.sum.i479
  %add89.i524 = add nsw i32 %jcolB.0501.i, 3
  %cmp.i525 = icmp slt i32 %add89.i524, %sub497.i
  br i1 %cmp.i525, label %for.body.i481, label %for.end90.i530

for.end90.i530:                                   ; preds = %for.end84.i526, %sw.bb26
  %jcolB.0.lcssa.i527 = phi i32 [ 0, %sw.bb26 ], [ %add89.i524, %for.end84.i526 ]
  %colB0.0.lcssa.i528 = phi double* [ %507, %sw.bb26 ], [ %add.ptr87.i523, %for.end84.i526 ]
  %cmp92.i529 = icmp eq i32 %jcolB.0.lcssa.i527, %sub497.i
  br i1 %cmp92.i529, label %if.then93.i533, label %if.else.i559

if.then93.i533:                                   ; preds = %for.end90.i530
  %535 = load i32* %nrowB.i473, align 4, !tbaa !3
  %mul94.i531 = shl nsw i32 %535, 1
  %idx.ext95.i532 = sext i32 %mul94.i531 to i64
  %536 = load i32* %nrowA.i472, align 4, !tbaa !3
  %cmp98436.i = icmp sgt i32 %536, 0
  br i1 %cmp98436.i, label %for.body99.lr.ph.i534, label %sw.epilog34

for.body99.lr.ph.i534:                            ; preds = %if.then93.i533
  %537 = load i32** %sizesA.i475, align 8, !tbaa !0
  %538 = load double** %entriesA.i466, align 8, !tbaa !0
  %539 = load i32** %indicesA.i474, align 8, !tbaa !0
  br label %for.body99.i537

for.body99.i537:                                  ; preds = %for.inc167.i, %for.body99.lr.ph.i534
  %indvars.iv510.i = phi i64 [ 0, %for.body99.lr.ph.i534 ], [ %indvars.iv.next511.i, %for.inc167.i ]
  %kk.3440.i = phi i32 [ 0, %for.body99.lr.ph.i534 ], [ %kk.5.i557, %for.inc167.i ]
  %irowA.1437.i = phi i32 [ 0, %for.body99.lr.ph.i534 ], [ %inc168.i, %for.inc167.i ]
  %arrayidx101.i535 = getelementptr inbounds i32* %537, i64 %indvars.iv510.i
  %540 = load i32* %arrayidx101.i535, align 4, !tbaa !3
  %cmp102.i536 = icmp sgt i32 %540, 0
  br i1 %cmp102.i536, label %for.body106.lr.ph.i, label %for.inc167.i

for.body106.lr.ph.i:                              ; preds = %for.body99.i537
  %541 = sext i32 %kk.3440.i to i64
  %542 = trunc i64 %indvars.iv510.i to i32
  br label %for.body106.i

for.body106.i:                                    ; preds = %if.end121.i, %for.body106.lr.ph.i
  %indvars.iv.i538 = phi i64 [ %541, %for.body106.lr.ph.i ], [ %indvars.iv.next.i551, %if.end121.i ]
  %kk.4430.i = phi i32 [ %kk.3440.i, %for.body106.lr.ph.i ], [ %inc150.i, %if.end121.i ]
  %ii.1429.i = phi i32 [ 0, %for.body106.lr.ph.i ], [ %inc149.i, %if.end121.i ]
  %rsum1.1428.i = phi double [ 0.000000e+00, %for.body106.lr.ph.i ], [ %add143.i, %if.end121.i ]
  %rsum0.1427.i = phi double [ 0.000000e+00, %for.body106.lr.ph.i ], [ %add135.i, %if.end121.i ]
  %isum1.1426.i = phi double [ 0.000000e+00, %for.body106.lr.ph.i ], [ %add147.i, %if.end121.i ]
  %isum0.1425.i = phi double [ 0.000000e+00, %for.body106.lr.ph.i ], [ %add139.i, %if.end121.i ]
  %543 = trunc i64 %indvars.iv.i538 to i32
  %mul107.i = shl nsw i32 %543, 1
  %idxprom108.i = sext i32 %mul107.i to i64
  %arrayidx109.i = getelementptr inbounds double* %538, i64 %idxprom108.i
  %544 = load double* %arrayidx109.i, align 8, !tbaa !4
  %add111401.i = or i32 %mul107.i, 1
  %idxprom112.i = sext i32 %add111401.i to i64
  %arrayidx113.i539 = getelementptr inbounds double* %538, i64 %idxprom112.i
  %545 = load double* %arrayidx113.i539, align 8, !tbaa !4
  %arrayidx115.i540 = getelementptr inbounds i32* %539, i64 %indvars.iv.i538
  %546 = load i32* %arrayidx115.i540, align 4, !tbaa !3
  %cmp116.i541 = icmp sgt i32 %546, -1
  %cmp118.i = icmp slt i32 %546, %542
  %or.cond416.i = and i1 %cmp116.i541, %cmp118.i
  br i1 %or.cond416.i, label %if.end121.i, label %if.then119.i

if.then119.i:                                     ; preds = %for.body106.i
  %547 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call120.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %547, i8* getelementptr inbounds ([52 x i8]* @.str5, i64 0, i64 0), i32 %irowA.1437.i, i32 %kk.4430.i, i32 %ii.1429.i, i32 %546) #5
  call void @exit(i32 -1) #6
  unreachable

if.end121.i:                                      ; preds = %for.body106.i
  %mul122.i542 = shl nsw i32 %546, 1
  %add123402.i = or i32 %mul122.i542, 1
  %idxprom124.i543 = sext i32 %mul122.i542 to i64
  %arrayidx125.i544 = getelementptr inbounds double* %colB0.0.lcssa.i528, i64 %idxprom124.i543
  %548 = load double* %arrayidx125.i544, align 8, !tbaa !4
  %idxprom126.i = sext i32 %add123402.i to i64
  %arrayidx127.i545 = getelementptr inbounds double* %colB0.0.lcssa.i528, i64 %idxprom126.i
  %549 = load double* %arrayidx127.i545, align 8, !tbaa !4
  %add.ptr96.sum403.i = add i64 %idxprom124.i543, %idx.ext95.i532
  %arrayidx129.i546 = getelementptr inbounds double* %colB0.0.lcssa.i528, i64 %add.ptr96.sum403.i
  %550 = load double* %arrayidx129.i546, align 8, !tbaa !4
  %add.ptr96.sum404.i = add i64 %idxprom126.i, %idx.ext95.i532
  %arrayidx131.i547 = getelementptr inbounds double* %colB0.0.lcssa.i528, i64 %add.ptr96.sum404.i
  %551 = load double* %arrayidx131.i547, align 8, !tbaa !4
  %mul132.i = fmul double %544, %548
  %mul133.i548 = fmul double %545, %549
  %sub134.i = fsub double %mul132.i, %mul133.i548
  %add135.i = fadd double %rsum0.1427.i, %sub134.i
  %mul136.i = fmul double %544, %549
  %mul137.i = fmul double %545, %548
  %add138.i = fadd double %mul137.i, %mul136.i
  %add139.i = fadd double %isum0.1425.i, %add138.i
  %mul140.i549 = fmul double %544, %550
  %mul141.i = fmul double %545, %551
  %sub142.i = fsub double %mul140.i549, %mul141.i
  %add143.i = fadd double %rsum1.1428.i, %sub142.i
  %mul144.i = fmul double %544, %551
  %mul145.i550 = fmul double %545, %550
  %add146.i = fadd double %mul145.i550, %mul144.i
  %add147.i = fadd double %isum1.1426.i, %add146.i
  %inc149.i = add nsw i32 %ii.1429.i, 1
  %indvars.iv.next.i551 = add i64 %indvars.iv.i538, 1
  %inc150.i = add nsw i32 %kk.4430.i, 1
  %cmp105.i = icmp slt i32 %inc149.i, %540
  br i1 %cmp105.i, label %for.body106.i, label %for.end151.i

for.end151.i:                                     ; preds = %if.end121.i
  %phitmp534.i = shl i32 %542, 1
  %add153399.i = or i32 %phitmp534.i, 1
  %idxprom154.i = sext i32 %phitmp534.i to i64
  %arrayidx155.i552 = getelementptr inbounds double* %colB0.0.lcssa.i528, i64 %idxprom154.i
  %552 = load double* %arrayidx155.i552, align 8, !tbaa !4
  %sub156.i553 = fsub double %552, %add135.i
  store double %sub156.i553, double* %arrayidx155.i552, align 8, !tbaa !4
  %idxprom157.i = sext i32 %add153399.i to i64
  %arrayidx158.i = getelementptr inbounds double* %colB0.0.lcssa.i528, i64 %idxprom157.i
  %553 = load double* %arrayidx158.i, align 8, !tbaa !4
  %sub159.i = fsub double %553, %add139.i
  store double %sub159.i, double* %arrayidx158.i, align 8, !tbaa !4
  %add.ptr96.sum.i554 = add i64 %idxprom154.i, %idx.ext95.i532
  %arrayidx161.i555 = getelementptr inbounds double* %colB0.0.lcssa.i528, i64 %add.ptr96.sum.i554
  %554 = load double* %arrayidx161.i555, align 8, !tbaa !4
  %sub162.i = fsub double %554, %add143.i
  store double %sub162.i, double* %arrayidx161.i555, align 8, !tbaa !4
  %add.ptr96.sum400.i = add i64 %idxprom157.i, %idx.ext95.i532
  %arrayidx164.i = getelementptr inbounds double* %colB0.0.lcssa.i528, i64 %add.ptr96.sum400.i
  %555 = load double* %arrayidx164.i, align 8, !tbaa !4
  %sub165.i556 = fsub double %555, %add147.i
  store double %sub165.i556, double* %arrayidx164.i, align 8, !tbaa !4
  br label %for.inc167.i

for.inc167.i:                                     ; preds = %for.end151.i, %for.body99.i537
  %kk.5.i557 = phi i32 [ %inc150.i, %for.end151.i ], [ %kk.3440.i, %for.body99.i537 ]
  %indvars.iv.next511.i = add i64 %indvars.iv510.i, 1
  %inc168.i = add nsw i32 %irowA.1437.i, 1
  %556 = trunc i64 %indvars.iv.next511.i to i32
  %cmp98.i558 = icmp slt i32 %556, %536
  br i1 %cmp98.i558, label %for.body99.i537, label %sw.epilog34

if.else.i559:                                     ; preds = %for.end90.i530
  %sub170.i = add nsw i32 %508, -1
  %cmp171.i = icmp eq i32 %jcolB.0.lcssa.i527, %sub170.i
  br i1 %cmp171.i, label %for.cond173.preheader.i, label %sw.epilog34

for.cond173.preheader.i:                          ; preds = %if.else.i559
  %557 = load i32* %nrowA.i472, align 4, !tbaa !3
  %cmp174456.i = icmp sgt i32 %557, 0
  br i1 %cmp174456.i, label %for.body175.lr.ph.i, label %sw.epilog34

for.body175.lr.ph.i:                              ; preds = %for.cond173.preheader.i
  %558 = load i32** %sizesA.i475, align 8, !tbaa !0
  %559 = load double** %entriesA.i466, align 8, !tbaa !0
  %560 = load i32** %indicesA.i474, align 8, !tbaa !0
  br label %for.body175.i

for.body175.i:                                    ; preds = %for.inc225.i, %for.body175.lr.ph.i
  %indvars.iv519.i = phi i64 [ 0, %for.body175.lr.ph.i ], [ %indvars.iv.next520.i, %for.inc225.i ]
  %kk.6460.i = phi i32 [ 0, %for.body175.lr.ph.i ], [ %kk.8.i570, %for.inc225.i ]
  %irowA.2457.i = phi i32 [ 0, %for.body175.lr.ph.i ], [ %inc226.i, %for.inc225.i ]
  %arrayidx177.i560 = getelementptr inbounds i32* %558, i64 %indvars.iv519.i
  %561 = load i32* %arrayidx177.i560, align 4, !tbaa !3
  %cmp178.i = icmp sgt i32 %561, 0
  br i1 %cmp178.i, label %for.body182.lr.ph.i, label %for.inc225.i

for.body182.lr.ph.i:                              ; preds = %for.body175.i
  %562 = sext i32 %kk.6460.i to i64
  %563 = trunc i64 %indvars.iv519.i to i32
  br label %for.body182.i

for.body182.i:                                    ; preds = %if.end197.i, %for.body182.lr.ph.i
  %indvars.iv516.i = phi i64 [ %562, %for.body182.lr.ph.i ], [ %indvars.iv.next517.i, %if.end197.i ]
  %kk.7450.i = phi i32 [ %kk.6460.i, %for.body182.lr.ph.i ], [ %inc214.i, %if.end197.i ]
  %ii.2449.i = phi i32 [ 0, %for.body182.lr.ph.i ], [ %inc213.i, %if.end197.i ]
  %rsum0.2448.i = phi double [ 0.000000e+00, %for.body182.lr.ph.i ], [ %add207.i567, %if.end197.i ]
  %isum0.2447.i = phi double [ 0.000000e+00, %for.body182.lr.ph.i ], [ %add211.i569, %if.end197.i ]
  %564 = trunc i64 %indvars.iv516.i to i32
  %mul183.i561 = shl nsw i32 %564, 1
  %idxprom184.i = sext i32 %mul183.i561 to i64
  %arrayidx185.i = getelementptr inbounds double* %559, i64 %idxprom184.i
  %565 = load double* %arrayidx185.i, align 8, !tbaa !4
  %add187397.i = or i32 %mul183.i561, 1
  %idxprom188.i562 = sext i32 %add187397.i to i64
  %arrayidx189.i563 = getelementptr inbounds double* %559, i64 %idxprom188.i562
  %566 = load double* %arrayidx189.i563, align 8, !tbaa !4
  %arrayidx191.i = getelementptr inbounds i32* %560, i64 %indvars.iv516.i
  %567 = load i32* %arrayidx191.i, align 4, !tbaa !3
  %cmp192.i564 = icmp sgt i32 %567, -1
  %cmp194.i = icmp slt i32 %567, %563
  %or.cond417.i = and i1 %cmp192.i564, %cmp194.i
  br i1 %or.cond417.i, label %if.end197.i, label %if.then195.i

if.then195.i:                                     ; preds = %for.body182.i
  %568 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call196.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %568, i8* getelementptr inbounds ([52 x i8]* @.str5, i64 0, i64 0), i32 %irowA.2457.i, i32 %kk.7450.i, i32 %ii.2449.i, i32 %567) #5
  call void @exit(i32 -1) #6
  unreachable

if.end197.i:                                      ; preds = %for.body182.i
  %mul198.i = shl nsw i32 %567, 1
  %add199398.i = or i32 %mul198.i, 1
  %idxprom200.i = sext i32 %mul198.i to i64
  %arrayidx201.i = getelementptr inbounds double* %colB0.0.lcssa.i528, i64 %idxprom200.i
  %569 = load double* %arrayidx201.i, align 8, !tbaa !4
  %idxprom202.i = sext i32 %add199398.i to i64
  %arrayidx203.i = getelementptr inbounds double* %colB0.0.lcssa.i528, i64 %idxprom202.i
  %570 = load double* %arrayidx203.i, align 8, !tbaa !4
  %mul204.i565 = fmul double %565, %569
  %mul205.i566 = fmul double %566, %570
  %sub206.i = fsub double %mul204.i565, %mul205.i566
  %add207.i567 = fadd double %rsum0.2448.i, %sub206.i
  %mul208.i = fmul double %565, %570
  %mul209.i568 = fmul double %566, %569
  %add210.i = fadd double %mul209.i568, %mul208.i
  %add211.i569 = fadd double %isum0.2447.i, %add210.i
  %inc213.i = add nsw i32 %ii.2449.i, 1
  %indvars.iv.next517.i = add i64 %indvars.iv516.i, 1
  %inc214.i = add nsw i32 %kk.7450.i, 1
  %cmp181.i = icmp slt i32 %inc213.i, %561
  br i1 %cmp181.i, label %for.body182.i, label %for.end215.i

for.end215.i:                                     ; preds = %if.end197.i
  %phitmp.i = shl i32 %563, 1
  %add217396.i = or i32 %phitmp.i, 1
  %idxprom218.i = sext i32 %phitmp.i to i64
  %arrayidx219.i = getelementptr inbounds double* %colB0.0.lcssa.i528, i64 %idxprom218.i
  %571 = load double* %arrayidx219.i, align 8, !tbaa !4
  %sub220.i = fsub double %571, %add207.i567
  store double %sub220.i, double* %arrayidx219.i, align 8, !tbaa !4
  %idxprom221.i = sext i32 %add217396.i to i64
  %arrayidx222.i = getelementptr inbounds double* %colB0.0.lcssa.i528, i64 %idxprom221.i
  %572 = load double* %arrayidx222.i, align 8, !tbaa !4
  %sub223.i = fsub double %572, %add211.i569
  store double %sub223.i, double* %arrayidx222.i, align 8, !tbaa !4
  br label %for.inc225.i

for.inc225.i:                                     ; preds = %for.end215.i, %for.body175.i
  %kk.8.i570 = phi i32 [ %inc214.i, %for.end215.i ], [ %kk.6460.i, %for.body175.i ]
  %indvars.iv.next520.i = add i64 %indvars.iv519.i, 1
  %inc226.i = add nsw i32 %irowA.2457.i, 1
  %573 = trunc i64 %indvars.iv.next520.i to i32
  %cmp174.i571 = icmp slt i32 %573, %557
  br i1 %cmp174.i571, label %for.body175.i, label %sw.epilog34

sw.default27:                                     ; preds = %sw.bb21
  %574 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %574, i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 %253) #5
  call void @exit(i32 -1) #6
  unreachable

sw.default31:                                     ; preds = %if.end12
  %575 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %575, i8* getelementptr inbounds ([52 x i8]* @.str4, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 %7) #5
  call void @exit(i32 -1) #6
  unreachable

sw.epilog34:                                      ; preds = %for.inc225.i, %for.inc167.i, %for.inc221.i, %for.inc165.i, %for.cond157.i, %for.cond89.i, %for.cond169.i, %for.cond95.i, %for.inc122.i, %for.inc84.i, %for.inc124.i, %for.inc88.i, %for.cond85.i, %for.cond46.i, %for.cond97.i, %for.cond52.i, %for.cond173.preheader.i, %if.else.i559, %if.then93.i533, %for.cond171.preheader.i, %if.else.i456, %if.then93.i, %if.else.i366, %if.else.i272, %for.cond90.preheader.i, %if.else.i211, %if.then48.i192, %for.cond94.preheader.i, %if.else.i151, %if.then48.i142, %if.else.i108, %if.else.i
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @SubMtx_sparseRowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #3

; Function Attrs: optsize
declare void @SubMtx_denseInfo(%struct._SubMtx*, i32*, i32*, i32*, i32*, double**) #3

; Function Attrs: optsize
declare void @SubMtx_denseSubrowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #3

; Function Attrs: optsize
declare void @SubMtx_sparseColumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #3

; Function Attrs: optsize
declare void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
