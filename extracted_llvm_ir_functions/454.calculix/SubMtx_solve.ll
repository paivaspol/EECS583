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
  %cmp = icmp eq %struct._SubMtx* %mtxA, null
  %cmp1 = icmp eq %struct._SubMtx* %mtxB, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB) #5
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
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([60 x i8]* @.str1, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 %3) #5
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
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([72 x i8]* @.str2, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 %4, i32 %5) #5
  call void @exit(i32 -1) #6
  unreachable

if.end12:                                         ; preds = %if.end5
  %type13 = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 0
  %7 = load i32* %type13, align 4, !tbaa !3
  switch i32 %7, label %sw.default38 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb24
  ]

sw.bb:                                            ; preds = %if.end12
  %mode14 = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 1
  %8 = load i32* %mode14, align 4, !tbaa !3
  switch i32 %8, label %sw.default [
    i32 5, label %sw.bb15
    i32 2, label %sw.bb16
    i32 6, label %sw.bb17
    i32 3, label %sw.bb18
    i32 7, label %sw.bb19
    i32 8, label %sw.bb20
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
  %sub240.i = add nsw i32 %20, -2
  %cmp241.i = icmp sgt i32 %sub240.i, 0
  br i1 %cmp241.i, label %for.body.lr.ph.i, label %for.end45.i

for.body.lr.ph.i:                                 ; preds = %sw.bb15
  %21 = load i32* %nrowB.i, align 4, !tbaa !3
  %idx.ext.i = sext i32 %21 to i64
  %add.ptr.sum.i = shl nsw i64 %idx.ext.i, 1
  %22 = load i32* %nrowA.i, align 4, !tbaa !3
  %cmp4237.i = icmp sgt i32 %22, 0
  %add.ptr2.sum.i = add i64 %add.ptr.sum.i, %idx.ext.i
  %23 = load i32** %sizesA.i, align 8, !tbaa !0
  %24 = load i32** %firstlocsA.i, align 8, !tbaa !0
  %25 = load double** %entriesA.i, align 8, !tbaa !0
  br label %for.body.i

for.body.i:                                       ; preds = %for.end40.i, %for.body.lr.ph.i
  %jcolB.0244.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add44.i, %for.end40.i ]
  %colB0.0242.i = phi double* [ %19, %for.body.lr.ph.i ], [ %add.ptr42.i, %for.end40.i ]
  br i1 %cmp4237.i, label %for.body5.i, label %for.end40.i

for.body5.i:                                      ; preds = %for.body.i, %for.inc38.i
  %indvars.iv265.i = phi i64 [ %indvars.iv.next266.i, %for.inc38.i ], [ 0, %for.body.i ]
  %kk.0239.i = phi i32 [ %kk.2.i, %for.inc38.i ], [ 0, %for.body.i ]
  %arrayidx.i = getelementptr inbounds i32* %23, i64 %indvars.iv265.i
  %26 = load i32* %arrayidx.i, align 4, !tbaa !3
  %cmp6.i = icmp sgt i32 %26, 0
  br i1 %cmp6.i, label %if.then.i, label %for.inc38.i

if.then.i:                                        ; preds = %for.body5.i
  %arrayidx8.i = getelementptr inbounds i32* %24, i64 %indvars.iv265.i
  %27 = load i32* %arrayidx8.i, align 4, !tbaa !3
  %add.i = add i32 %26, -1
  %sub11.i = add i32 %add.i, %27
  %cmp13227.i = icmp sgt i32 %27, %sub11.i
  br i1 %cmp13227.i, label %for.end.i, label %for.body14.lr.ph.i

for.body14.lr.ph.i:                               ; preds = %if.then.i
  %28 = sext i32 %kk.0239.i to i64
  %29 = sext i32 %27 to i64
  br label %for.body14.i

for.body14.i:                                     ; preds = %for.body14.i, %for.body14.lr.ph.i
  %indvars.iv262.i = phi i64 [ %indvars.iv.next263.i, %for.body14.i ], [ %29, %for.body14.lr.ph.i ]
  %indvars.iv260.i = phi i64 [ %indvars.iv.next261.i, %for.body14.i ], [ %28, %for.body14.lr.ph.i ]
  %sum2.0230.i = phi double [ %add27.i, %for.body14.i ], [ 0.000000e+00, %for.body14.lr.ph.i ]
  %sum1.0229.i = phi double [ %add23.i, %for.body14.i ], [ 0.000000e+00, %for.body14.lr.ph.i ]
  %sum0.0228.i = phi double [ %add19.i, %for.body14.i ], [ 0.000000e+00, %for.body14.lr.ph.i ]
  %arrayidx16.i = getelementptr inbounds double* %25, i64 %indvars.iv260.i
  %30 = load double* %arrayidx16.i, align 8, !tbaa !4
  %arrayidx18.i = getelementptr inbounds double* %colB0.0242.i, i64 %indvars.iv262.i
  %31 = load double* %arrayidx18.i, align 8, !tbaa !4
  %mul.i = fmul double %30, %31
  %add19.i = fadd double %sum0.0228.i, %mul.i
  %add.ptr.sum205.i = add i64 %indvars.iv262.i, %idx.ext.i
  %arrayidx21.i = getelementptr inbounds double* %colB0.0242.i, i64 %add.ptr.sum205.i
  %32 = load double* %arrayidx21.i, align 8, !tbaa !4
  %mul22.i = fmul double %30, %32
  %add23.i = fadd double %sum1.0229.i, %mul22.i
  %add.ptr2.sum206.i = add i64 %indvars.iv262.i, %add.ptr.sum.i
  %arrayidx25.i = getelementptr inbounds double* %colB0.0242.i, i64 %add.ptr2.sum206.i
  %33 = load double* %arrayidx25.i, align 8, !tbaa !4
  %mul26.i = fmul double %30, %33
  %add27.i = fadd double %sum2.0230.i, %mul26.i
  %indvars.iv.next263.i = add i64 %indvars.iv262.i, 1
  %indvars.iv.next261.i = add i64 %indvars.iv260.i, 1
  %34 = trunc i64 %indvars.iv262.i to i32
  %cmp13.i = icmp slt i32 %34, %sub11.i
  br i1 %cmp13.i, label %for.body14.i, label %for.cond12.for.end_crit_edge.i

for.cond12.for.end_crit_edge.i:                   ; preds = %for.body14.i
  %35 = add i32 %26, %kk.0239.i
  br label %for.end.i

for.end.i:                                        ; preds = %for.cond12.for.end_crit_edge.i, %if.then.i
  %kk.1.lcssa.i = phi i32 [ %35, %for.cond12.for.end_crit_edge.i ], [ %kk.0239.i, %if.then.i ]
  %sum2.0.lcssa.i = phi double [ %add27.i, %for.cond12.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i ]
  %sum1.0.lcssa.i = phi double [ %add23.i, %for.cond12.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i ]
  %sum0.0.lcssa.i = phi double [ %add19.i, %for.cond12.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i ]
  %arrayidx30.i = getelementptr inbounds double* %colB0.0242.i, i64 %indvars.iv265.i
  %36 = load double* %arrayidx30.i, align 8, !tbaa !4
  %sub31.i = fsub double %36, %sum0.0.lcssa.i
  store double %sub31.i, double* %arrayidx30.i, align 8, !tbaa !4
  %add.ptr.sum203.i = add i64 %indvars.iv265.i, %idx.ext.i
  %arrayidx33.i = getelementptr inbounds double* %colB0.0242.i, i64 %add.ptr.sum203.i
  %37 = load double* %arrayidx33.i, align 8, !tbaa !4
  %sub34.i = fsub double %37, %sum1.0.lcssa.i
  store double %sub34.i, double* %arrayidx33.i, align 8, !tbaa !4
  %add.ptr2.sum204.i = add i64 %indvars.iv265.i, %add.ptr.sum.i
  %arrayidx36.i = getelementptr inbounds double* %colB0.0242.i, i64 %add.ptr2.sum204.i
  %38 = load double* %arrayidx36.i, align 8, !tbaa !4
  %sub37.i = fsub double %38, %sum2.0.lcssa.i
  store double %sub37.i, double* %arrayidx36.i, align 8, !tbaa !4
  br label %for.inc38.i

for.inc38.i:                                      ; preds = %for.end.i, %for.body5.i
  %kk.2.i = phi i32 [ %kk.1.lcssa.i, %for.end.i ], [ %kk.0239.i, %for.body5.i ]
  %indvars.iv.next266.i = add i64 %indvars.iv265.i, 1
  %lftr.wideiv1107 = trunc i64 %indvars.iv.next266.i to i32
  %exitcond1108 = icmp eq i32 %lftr.wideiv1107, %22
  br i1 %exitcond1108, label %for.end40.i, label %for.body5.i

for.end40.i:                                      ; preds = %for.inc38.i, %for.body.i
  %add.ptr42.i = getelementptr inbounds double* %colB0.0242.i, i64 %add.ptr2.sum.i
  %add44.i = add nsw i32 %jcolB.0244.i, 3
  %cmp.i = icmp slt i32 %add44.i, %sub240.i
  br i1 %cmp.i, label %for.body.i, label %for.end45.i

for.end45.i:                                      ; preds = %for.end40.i, %sw.bb15
  %jcolB.0.lcssa.i = phi i32 [ 0, %sw.bb15 ], [ %add44.i, %for.end40.i ]
  %colB0.0.lcssa.i = phi double* [ %19, %sw.bb15 ], [ %add.ptr42.i, %for.end40.i ]
  %cmp47.i = icmp eq i32 %jcolB.0.lcssa.i, %sub240.i
  br i1 %cmp47.i, label %if.then48.i, label %if.else.i

if.then48.i:                                      ; preds = %for.end45.i
  %39 = load i32* %nrowB.i, align 4, !tbaa !3
  %idx.ext49.i = sext i32 %39 to i64
  %40 = load i32* %nrowA.i, align 4, !tbaa !3
  %cmp52214.i = icmp sgt i32 %40, 0
  br i1 %cmp52214.i, label %for.body53.lr.ph.i, label %sw.epilog41

for.body53.lr.ph.i:                               ; preds = %if.then48.i
  %41 = load i32** %sizesA.i, align 8, !tbaa !0
  %42 = load i32** %firstlocsA.i, align 8, !tbaa !0
  %43 = load double** %entriesA.i, align 8, !tbaa !0
  br label %for.body53.i

for.body53.i:                                     ; preds = %for.inc88.i, %for.body53.lr.ph.i
  %indvars.iv251.i = phi i64 [ 0, %for.body53.lr.ph.i ], [ %indvars.iv.next252.i, %for.inc88.i ]
  %kk.3216.i = phi i32 [ 0, %for.body53.lr.ph.i ], [ %kk.5.i, %for.inc88.i ]
  %arrayidx55.i = getelementptr inbounds i32* %41, i64 %indvars.iv251.i
  %44 = load i32* %arrayidx55.i, align 4, !tbaa !3
  %cmp56.i = icmp sgt i32 %44, 0
  br i1 %cmp56.i, label %if.then57.i, label %for.inc88.i

if.then57.i:                                      ; preds = %for.body53.i
  %arrayidx59.i = getelementptr inbounds i32* %42, i64 %indvars.iv251.i
  %45 = load i32* %arrayidx59.i, align 4, !tbaa !3
  %add62.i = add i32 %44, -1
  %sub63.i = add i32 %add62.i, %45
  %cmp65207.i = icmp sgt i32 %45, %sub63.i
  br i1 %cmp65207.i, label %for.end80.i, label %for.body66.lr.ph.i

for.body66.lr.ph.i:                               ; preds = %if.then57.i
  %46 = sext i32 %kk.3216.i to i64
  %47 = sext i32 %45 to i64
  br label %for.body66.i

for.body66.i:                                     ; preds = %for.body66.i, %for.body66.lr.ph.i
  %indvars.iv249.i = phi i64 [ %indvars.iv.next250.i, %for.body66.i ], [ %47, %for.body66.lr.ph.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body66.i ], [ %46, %for.body66.lr.ph.i ]
  %sum1.1209.i = phi double [ %add76.i, %for.body66.i ], [ 0.000000e+00, %for.body66.lr.ph.i ]
  %sum0.1208.i = phi double [ %add72.i, %for.body66.i ], [ 0.000000e+00, %for.body66.lr.ph.i ]
  %arrayidx68.i = getelementptr inbounds double* %43, i64 %indvars.iv.i
  %48 = load double* %arrayidx68.i, align 8, !tbaa !4
  %arrayidx70.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %indvars.iv249.i
  %49 = load double* %arrayidx70.i, align 8, !tbaa !4
  %mul71.i = fmul double %48, %49
  %add72.i = fadd double %sum0.1208.i, %mul71.i
  %add.ptr50.sum202.i = add i64 %indvars.iv249.i, %idx.ext49.i
  %arrayidx74.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %add.ptr50.sum202.i
  %50 = load double* %arrayidx74.i, align 8, !tbaa !4
  %mul75.i = fmul double %48, %50
  %add76.i = fadd double %sum1.1209.i, %mul75.i
  %indvars.iv.next250.i = add i64 %indvars.iv249.i, 1
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %51 = trunc i64 %indvars.iv249.i to i32
  %cmp65.i = icmp slt i32 %51, %sub63.i
  br i1 %cmp65.i, label %for.body66.i, label %for.cond64.for.end80_crit_edge.i

for.cond64.for.end80_crit_edge.i:                 ; preds = %for.body66.i
  %52 = add i32 %44, %kk.3216.i
  br label %for.end80.i

for.end80.i:                                      ; preds = %for.cond64.for.end80_crit_edge.i, %if.then57.i
  %kk.4.lcssa.i = phi i32 [ %52, %for.cond64.for.end80_crit_edge.i ], [ %kk.3216.i, %if.then57.i ]
  %sum1.1.lcssa.i = phi double [ %add76.i, %for.cond64.for.end80_crit_edge.i ], [ 0.000000e+00, %if.then57.i ]
  %sum0.1.lcssa.i = phi double [ %add72.i, %for.cond64.for.end80_crit_edge.i ], [ 0.000000e+00, %if.then57.i ]
  %arrayidx82.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %indvars.iv251.i
  %53 = load double* %arrayidx82.i, align 8, !tbaa !4
  %sub83.i = fsub double %53, %sum0.1.lcssa.i
  store double %sub83.i, double* %arrayidx82.i, align 8, !tbaa !4
  %add.ptr50.sum.i = add i64 %indvars.iv251.i, %idx.ext49.i
  %arrayidx85.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %add.ptr50.sum.i
  %54 = load double* %arrayidx85.i, align 8, !tbaa !4
  %sub86.i = fsub double %54, %sum1.1.lcssa.i
  store double %sub86.i, double* %arrayidx85.i, align 8, !tbaa !4
  br label %for.inc88.i

for.inc88.i:                                      ; preds = %for.end80.i, %for.body53.i
  %kk.5.i = phi i32 [ %kk.4.lcssa.i, %for.end80.i ], [ %kk.3216.i, %for.body53.i ]
  %indvars.iv.next252.i = add i64 %indvars.iv251.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next252.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %40
  br i1 %exitcond, label %sw.epilog41, label %for.body53.i

if.else.i:                                        ; preds = %for.end45.i
  %sub91.i = add nsw i32 %20, -1
  %cmp92.i = icmp eq i32 %jcolB.0.lcssa.i, %sub91.i
  br i1 %cmp92.i, label %for.cond94.preheader.i, label %sw.epilog41

for.cond94.preheader.i:                           ; preds = %if.else.i
  %55 = load i32* %nrowA.i, align 4, !tbaa !3
  %cmp95224.i = icmp sgt i32 %55, 0
  br i1 %cmp95224.i, label %for.body96.lr.ph.i, label %sw.epilog41

for.body96.lr.ph.i:                               ; preds = %for.cond94.preheader.i
  %56 = load i32** %sizesA.i, align 8, !tbaa !0
  %57 = load i32** %firstlocsA.i, align 8, !tbaa !0
  %58 = load double** %entriesA.i, align 8, !tbaa !0
  br label %for.body96.i

for.body96.i:                                     ; preds = %for.inc124.i, %for.body96.lr.ph.i
  %indvars.iv258.i = phi i64 [ 0, %for.body96.lr.ph.i ], [ %indvars.iv.next259.i, %for.inc124.i ]
  %kk.6226.i = phi i32 [ 0, %for.body96.lr.ph.i ], [ %kk.8.i, %for.inc124.i ]
  %arrayidx98.i = getelementptr inbounds i32* %56, i64 %indvars.iv258.i
  %59 = load i32* %arrayidx98.i, align 4, !tbaa !3
  %cmp99.i = icmp sgt i32 %59, 0
  br i1 %cmp99.i, label %if.then100.i, label %for.inc124.i

if.then100.i:                                     ; preds = %for.body96.i
  %arrayidx102.i = getelementptr inbounds i32* %57, i64 %indvars.iv258.i
  %60 = load i32* %arrayidx102.i, align 4, !tbaa !3
  %add105.i = add i32 %59, -1
  %sub106.i = add i32 %add105.i, %60
  %cmp108217.i = icmp sgt i32 %60, %sub106.i
  br i1 %cmp108217.i, label %for.end119.i, label %for.body109.lr.ph.i

for.body109.lr.ph.i:                              ; preds = %if.then100.i
  %61 = sext i32 %kk.6226.i to i64
  %62 = sext i32 %60 to i64
  br label %for.body109.i

for.body109.i:                                    ; preds = %for.body109.i, %for.body109.lr.ph.i
  %indvars.iv255.i = phi i64 [ %indvars.iv.next256.i, %for.body109.i ], [ %62, %for.body109.lr.ph.i ]
  %indvars.iv253.i = phi i64 [ %indvars.iv.next254.i, %for.body109.i ], [ %61, %for.body109.lr.ph.i ]
  %sum0.2218.i = phi double [ %add115.i, %for.body109.i ], [ 0.000000e+00, %for.body109.lr.ph.i ]
  %arrayidx111.i = getelementptr inbounds double* %58, i64 %indvars.iv253.i
  %63 = load double* %arrayidx111.i, align 8, !tbaa !4
  %arrayidx113.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %indvars.iv255.i
  %64 = load double* %arrayidx113.i, align 8, !tbaa !4
  %mul114.i = fmul double %63, %64
  %add115.i = fadd double %sum0.2218.i, %mul114.i
  %indvars.iv.next256.i = add i64 %indvars.iv255.i, 1
  %indvars.iv.next254.i = add i64 %indvars.iv253.i, 1
  %65 = trunc i64 %indvars.iv255.i to i32
  %cmp108.i = icmp slt i32 %65, %sub106.i
  br i1 %cmp108.i, label %for.body109.i, label %for.cond107.for.end119_crit_edge.i

for.cond107.for.end119_crit_edge.i:               ; preds = %for.body109.i
  %66 = add i32 %59, %kk.6226.i
  br label %for.end119.i

for.end119.i:                                     ; preds = %for.cond107.for.end119_crit_edge.i, %if.then100.i
  %kk.7.lcssa.i = phi i32 [ %66, %for.cond107.for.end119_crit_edge.i ], [ %kk.6226.i, %if.then100.i ]
  %sum0.2.lcssa.i = phi double [ %add115.i, %for.cond107.for.end119_crit_edge.i ], [ 0.000000e+00, %if.then100.i ]
  %arrayidx121.i = getelementptr inbounds double* %colB0.0.lcssa.i, i64 %indvars.iv258.i
  %67 = load double* %arrayidx121.i, align 8, !tbaa !4
  %sub122.i = fsub double %67, %sum0.2.lcssa.i
  store double %sub122.i, double* %arrayidx121.i, align 8, !tbaa !4
  br label %for.inc124.i

for.inc124.i:                                     ; preds = %for.end119.i, %for.body96.i
  %kk.8.i = phi i32 [ %kk.7.lcssa.i, %for.end119.i ], [ %kk.6226.i, %for.body96.i ]
  %indvars.iv.next259.i = add i64 %indvars.iv258.i, 1
  %lftr.wideiv1105 = trunc i64 %indvars.iv.next259.i to i32
  %exitcond1106 = icmp eq i32 %lftr.wideiv1105, %55
  br i1 %exitcond1106, label %sw.epilog41, label %for.body96.i

sw.bb16:                                          ; preds = %sw.bb
  %68 = bitcast double** %entriesA.i92 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %68) #4
  %69 = bitcast double** %entriesB.i93 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %69) #4
  %70 = bitcast i32* %inc1.i94 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #4
  %71 = bitcast i32* %inc2.i95 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #4
  %72 = bitcast i32* %ncolB.i96 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #4
  %73 = bitcast i32* %nentA.i97 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #4
  %74 = bitcast i32* %nrowA.i98 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #4
  %75 = bitcast i32* %nrowB.i99 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #4
  %76 = bitcast i32** %indicesA.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %76) #4
  %77 = bitcast i32** %sizesA.i100 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #4
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i98, i32* %nentA.i97, i32** %sizesA.i100, i32** %indicesA.i, double** %entriesA.i92) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i99, i32* %ncolB.i96, i32* %inc1.i94, i32* %inc2.i95, double** %entriesB.i93) #5
  %78 = load double** %entriesB.i93, align 8, !tbaa !0
  %79 = load i32* %ncolB.i96, align 4, !tbaa !3
  %sub264.i = add nsw i32 %79, -2
  %cmp265.i = icmp sgt i32 %sub264.i, 0
  br i1 %cmp265.i, label %for.body.lr.ph.i104, label %for.end45.i123

for.body.lr.ph.i104:                              ; preds = %sw.bb16
  %80 = load i32* %nrowB.i99, align 4, !tbaa !3
  %idx.ext.i101 = sext i32 %80 to i64
  %add.ptr.sum.i102 = shl nsw i64 %idx.ext.i101, 1
  %81 = load i32* %nrowA.i98, align 4, !tbaa !3
  %cmp4254.i = icmp sgt i32 %81, 0
  %add.ptr2.sum.i103 = add i64 %add.ptr.sum.i102, %idx.ext.i101
  %82 = load i32** %sizesA.i100, align 8, !tbaa !0
  %83 = load double** %entriesA.i92, align 8, !tbaa !0
  %84 = load i32** %indicesA.i, align 8, !tbaa !0
  br label %for.body.i105

for.body.i105:                                    ; preds = %for.end40.i119, %for.body.lr.ph.i104
  %jcolB.0268.i = phi i32 [ 0, %for.body.lr.ph.i104 ], [ %add44.i117, %for.end40.i119 ]
  %colB0.0266.i = phi double* [ %78, %for.body.lr.ph.i104 ], [ %add.ptr42.i116, %for.end40.i119 ]
  br i1 %cmp4254.i, label %for.body5.i108, label %for.end40.i119

for.body5.i108:                                   ; preds = %for.body.i105, %for.inc38.i115
  %indvars.iv290.i = phi i64 [ %indvars.iv.next291.i, %for.inc38.i115 ], [ 0, %for.body.i105 ]
  %kk.0258.i = phi i32 [ %kk.2.i113, %for.inc38.i115 ], [ 0, %for.body.i105 ]
  %irowA.0255.i = phi i32 [ %inc39.i, %for.inc38.i115 ], [ 0, %for.body.i105 ]
  %arrayidx.i106 = getelementptr inbounds i32* %82, i64 %indvars.iv290.i
  %85 = load i32* %arrayidx.i106, align 4, !tbaa !3
  %cmp6.i107 = icmp sgt i32 %85, 0
  br i1 %cmp6.i107, label %for.body9.lr.ph.i, label %for.inc38.i115

for.body9.lr.ph.i:                                ; preds = %for.body5.i108
  %86 = sext i32 %kk.0258.i to i64
  %87 = trunc i64 %indvars.iv290.i to i32
  br label %for.body9.i

for.body9.i:                                      ; preds = %if.end.i, %for.body9.lr.ph.i
  %indvars.iv287.i = phi i64 [ %86, %for.body9.lr.ph.i ], [ %indvars.iv.next288.i, %if.end.i ]
  %kk.1248.i = phi i32 [ %kk.0258.i, %for.body9.lr.ph.i ], [ %inc27.i, %if.end.i ]
  %ii.0247.i = phi i32 [ 0, %for.body9.lr.ph.i ], [ %inc.i, %if.end.i ]
  %sum2.0246.i = phi double [ 0.000000e+00, %for.body9.lr.ph.i ], [ %add26.i, %if.end.i ]
  %sum1.0245.i = phi double [ 0.000000e+00, %for.body9.lr.ph.i ], [ %add22.i, %if.end.i ]
  %sum0.0244.i = phi double [ 0.000000e+00, %for.body9.lr.ph.i ], [ %add.i111, %if.end.i ]
  %arrayidx11.i = getelementptr inbounds double* %83, i64 %indvars.iv287.i
  %88 = load double* %arrayidx11.i, align 8, !tbaa !4
  %arrayidx13.i = getelementptr inbounds i32* %84, i64 %indvars.iv287.i
  %89 = load i32* %arrayidx13.i, align 4, !tbaa !3
  %cmp14.i = icmp sgt i32 %89, -1
  %cmp15.i = icmp slt i32 %89, %87
  %or.cond.i = and i1 %cmp14.i, %cmp15.i
  br i1 %or.cond.i, label %if.end.i, label %if.then16.i

if.then16.i:                                      ; preds = %for.body9.i
  %90 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([52 x i8]* @.str7, i64 0, i64 0), i32 %irowA.0255.i, i32 %kk.1248.i, i32 %ii.0247.i, i32 %89) #5
  call void @exit(i32 -1) #6
  unreachable

if.end.i:                                         ; preds = %for.body9.i
  %idxprom17.i = sext i32 %89 to i64
  %arrayidx18.i109 = getelementptr inbounds double* %colB0.0266.i, i64 %idxprom17.i
  %91 = load double* %arrayidx18.i109, align 8, !tbaa !4
  %mul.i110 = fmul double %88, %91
  %add.i111 = fadd double %sum0.0244.i, %mul.i110
  %add.ptr.sum208.i = add i64 %idxprom17.i, %idx.ext.i101
  %arrayidx20.i = getelementptr inbounds double* %colB0.0266.i, i64 %add.ptr.sum208.i
  %92 = load double* %arrayidx20.i, align 8, !tbaa !4
  %mul21.i = fmul double %88, %92
  %add22.i = fadd double %sum1.0245.i, %mul21.i
  %add.ptr2.sum209.i = add i64 %idxprom17.i, %add.ptr.sum.i102
  %arrayidx24.i = getelementptr inbounds double* %colB0.0266.i, i64 %add.ptr2.sum209.i
  %93 = load double* %arrayidx24.i, align 8, !tbaa !4
  %mul25.i = fmul double %88, %93
  %add26.i = fadd double %sum2.0246.i, %mul25.i
  %inc.i = add nsw i32 %ii.0247.i, 1
  %indvars.iv.next288.i = add i64 %indvars.iv287.i, 1
  %inc27.i = add nsw i32 %kk.1248.i, 1
  %cmp8.i = icmp slt i32 %inc.i, %85
  br i1 %cmp8.i, label %for.body9.i, label %for.end.i112

for.end.i112:                                     ; preds = %if.end.i
  %arrayidx29.i = getelementptr inbounds double* %colB0.0266.i, i64 %indvars.iv290.i
  %94 = load double* %arrayidx29.i, align 8, !tbaa !4
  %sub30.i = fsub double %94, %add.i111
  store double %sub30.i, double* %arrayidx29.i, align 8, !tbaa !4
  %add.ptr.sum206.i = add i64 %indvars.iv290.i, %idx.ext.i101
  %arrayidx32.i = getelementptr inbounds double* %colB0.0266.i, i64 %add.ptr.sum206.i
  %95 = load double* %arrayidx32.i, align 8, !tbaa !4
  %sub33.i = fsub double %95, %add22.i
  store double %sub33.i, double* %arrayidx32.i, align 8, !tbaa !4
  %add.ptr2.sum207.i = add i64 %indvars.iv290.i, %add.ptr.sum.i102
  %arrayidx35.i = getelementptr inbounds double* %colB0.0266.i, i64 %add.ptr2.sum207.i
  %96 = load double* %arrayidx35.i, align 8, !tbaa !4
  %sub36.i = fsub double %96, %add26.i
  store double %sub36.i, double* %arrayidx35.i, align 8, !tbaa !4
  br label %for.inc38.i115

for.inc38.i115:                                   ; preds = %for.end.i112, %for.body5.i108
  %kk.2.i113 = phi i32 [ %inc27.i, %for.end.i112 ], [ %kk.0258.i, %for.body5.i108 ]
  %indvars.iv.next291.i = add i64 %indvars.iv290.i, 1
  %inc39.i = add nsw i32 %irowA.0255.i, 1
  %97 = trunc i64 %indvars.iv.next291.i to i32
  %cmp4.i114 = icmp slt i32 %97, %81
  br i1 %cmp4.i114, label %for.body5.i108, label %for.end40.i119

for.end40.i119:                                   ; preds = %for.inc38.i115, %for.body.i105
  %add.ptr42.i116 = getelementptr inbounds double* %colB0.0266.i, i64 %add.ptr2.sum.i103
  %add44.i117 = add nsw i32 %jcolB.0268.i, 3
  %cmp.i118 = icmp slt i32 %add44.i117, %sub264.i
  br i1 %cmp.i118, label %for.body.i105, label %for.end45.i123

for.end45.i123:                                   ; preds = %for.end40.i119, %sw.bb16
  %jcolB.0.lcssa.i120 = phi i32 [ 0, %sw.bb16 ], [ %add44.i117, %for.end40.i119 ]
  %colB0.0.lcssa.i121 = phi double* [ %78, %sw.bb16 ], [ %add.ptr42.i116, %for.end40.i119 ]
  %cmp47.i122 = icmp eq i32 %jcolB.0.lcssa.i120, %sub264.i
  br i1 %cmp47.i122, label %if.then48.i125, label %if.else.i138

if.then48.i125:                                   ; preds = %for.end45.i123
  %98 = load i32* %nrowB.i99, align 4, !tbaa !3
  %idx.ext49.i124 = sext i32 %98 to i64
  %99 = load i32* %nrowA.i98, align 4, !tbaa !3
  %cmp52218.i = icmp sgt i32 %99, 0
  br i1 %cmp52218.i, label %for.body53.lr.ph.i126, label %sw.epilog41

for.body53.lr.ph.i126:                            ; preds = %if.then48.i125
  %100 = load i32** %sizesA.i100, align 8, !tbaa !0
  %101 = load double** %entriesA.i92, align 8, !tbaa !0
  %102 = load i32** %indicesA.i, align 8, !tbaa !0
  br label %for.body53.i129

for.body53.i129:                                  ; preds = %for.inc84.i, %for.body53.lr.ph.i126
  %indvars.iv273.i = phi i64 [ 0, %for.body53.lr.ph.i126 ], [ %indvars.iv.next274.i, %for.inc84.i ]
  %kk.3220.i = phi i32 [ 0, %for.body53.lr.ph.i126 ], [ %kk.5.i136, %for.inc84.i ]
  %arrayidx55.i127 = getelementptr inbounds i32* %100, i64 %indvars.iv273.i
  %103 = load i32* %arrayidx55.i127, align 4, !tbaa !3
  %cmp56.i128 = icmp sgt i32 %103, 0
  br i1 %cmp56.i128, label %for.body60.lr.ph.i, label %for.inc84.i

for.body60.lr.ph.i:                               ; preds = %for.body53.i129
  %104 = sext i32 %kk.3220.i to i64
  br label %for.body60.i

for.body60.i:                                     ; preds = %for.body60.i, %for.body60.lr.ph.i
  %indvars.iv.i130 = phi i64 [ %104, %for.body60.lr.ph.i ], [ %indvars.iv.next.i134, %for.body60.i ]
  %ii.1214.i = phi i32 [ 0, %for.body60.lr.ph.i ], [ %inc74.i, %for.body60.i ]
  %sum1.1213.i = phi double [ 0.000000e+00, %for.body60.lr.ph.i ], [ %add72.i133, %for.body60.i ]
  %sum0.1212.i = phi double [ 0.000000e+00, %for.body60.lr.ph.i ], [ %add68.i, %for.body60.i ]
  %arrayidx62.i = getelementptr inbounds double* %101, i64 %indvars.iv.i130
  %105 = load double* %arrayidx62.i, align 8, !tbaa !4
  %arrayidx64.i = getelementptr inbounds i32* %102, i64 %indvars.iv.i130
  %106 = load i32* %arrayidx64.i, align 4, !tbaa !3
  %idxprom65.i = sext i32 %106 to i64
  %arrayidx66.i = getelementptr inbounds double* %colB0.0.lcssa.i121, i64 %idxprom65.i
  %107 = load double* %arrayidx66.i, align 8, !tbaa !4
  %mul67.i = fmul double %105, %107
  %add68.i = fadd double %sum0.1212.i, %mul67.i
  %add.ptr50.sum205.i = add i64 %idxprom65.i, %idx.ext49.i124
  %arrayidx70.i131 = getelementptr inbounds double* %colB0.0.lcssa.i121, i64 %add.ptr50.sum205.i
  %108 = load double* %arrayidx70.i131, align 8, !tbaa !4
  %mul71.i132 = fmul double %105, %108
  %add72.i133 = fadd double %sum1.1213.i, %mul71.i132
  %inc74.i = add nsw i32 %ii.1214.i, 1
  %indvars.iv.next.i134 = add i64 %indvars.iv.i130, 1
  %exitcond.i = icmp eq i32 %inc74.i, %103
  br i1 %exitcond.i, label %for.end76.i, label %for.body60.i

for.end76.i:                                      ; preds = %for.body60.i
  %109 = add i32 %103, %kk.3220.i
  %arrayidx78.i = getelementptr inbounds double* %colB0.0.lcssa.i121, i64 %indvars.iv273.i
  %110 = load double* %arrayidx78.i, align 8, !tbaa !4
  %sub79.i = fsub double %110, %add68.i
  store double %sub79.i, double* %arrayidx78.i, align 8, !tbaa !4
  %add.ptr50.sum.i135 = add i64 %indvars.iv273.i, %idx.ext49.i124
  %arrayidx81.i = getelementptr inbounds double* %colB0.0.lcssa.i121, i64 %add.ptr50.sum.i135
  %111 = load double* %arrayidx81.i, align 8, !tbaa !4
  %sub82.i = fsub double %111, %add72.i133
  store double %sub82.i, double* %arrayidx81.i, align 8, !tbaa !4
  br label %for.inc84.i

for.inc84.i:                                      ; preds = %for.end76.i, %for.body53.i129
  %kk.5.i136 = phi i32 [ %109, %for.end76.i ], [ %kk.3220.i, %for.body53.i129 ]
  %indvars.iv.next274.i = add i64 %indvars.iv273.i, 1
  %lftr.wideiv1109 = trunc i64 %indvars.iv.next274.i to i32
  %exitcond1110 = icmp eq i32 %lftr.wideiv1109, %99
  br i1 %exitcond1110, label %sw.epilog41, label %for.body53.i129

if.else.i138:                                     ; preds = %for.end45.i123
  %sub87.i = add nsw i32 %79, -1
  %cmp88.i = icmp eq i32 %jcolB.0.lcssa.i120, %sub87.i
  br i1 %cmp88.i, label %for.cond90.preheader.i, label %sw.epilog41

for.cond90.preheader.i:                           ; preds = %if.else.i138
  %112 = load i32* %nrowA.i98, align 4, !tbaa !3
  %cmp91232.i = icmp sgt i32 %112, 0
  br i1 %cmp91232.i, label %for.body92.lr.ph.i, label %sw.epilog41

for.body92.lr.ph.i:                               ; preds = %for.cond90.preheader.i
  %113 = load i32** %sizesA.i100, align 8, !tbaa !0
  %114 = load i32** %indicesA.i, align 8, !tbaa !0
  %115 = load double** %entriesA.i92, align 8, !tbaa !0
  br label %for.body92.i

for.body92.i:                                     ; preds = %for.inc122.i, %for.body92.lr.ph.i
  %indvars.iv281.i = phi i64 [ 0, %for.body92.lr.ph.i ], [ %indvars.iv.next282.i, %for.inc122.i ]
  %kk.6236.i = phi i32 [ 0, %for.body92.lr.ph.i ], [ %kk.8.i143, %for.inc122.i ]
  %irowA.2233.i = phi i32 [ 0, %for.body92.lr.ph.i ], [ %inc123.i, %for.inc122.i ]
  %arrayidx94.i = getelementptr inbounds i32* %113, i64 %indvars.iv281.i
  %116 = load i32* %arrayidx94.i, align 4, !tbaa !3
  %cmp95.i139 = icmp sgt i32 %116, -1
  br i1 %cmp95.i139, label %for.cond97.preheader.i, label %for.inc122.i

for.cond97.preheader.i:                           ; preds = %for.body92.i
  %cmp98224.i = icmp sgt i32 %116, 0
  br i1 %cmp98224.i, label %for.body99.lr.ph.i, label %for.end117.i

for.body99.lr.ph.i:                               ; preds = %for.cond97.preheader.i
  %117 = sext i32 %kk.6236.i to i64
  %118 = trunc i64 %indvars.iv281.i to i32
  br label %for.body99.i

for.body99.i:                                     ; preds = %if.end109.i, %for.body99.lr.ph.i
  %indvars.iv278.i = phi i64 [ %117, %for.body99.lr.ph.i ], [ %indvars.iv.next279.i, %if.end109.i ]
  %kk.7227.i = phi i32 [ %kk.6236.i, %for.body99.lr.ph.i ], [ %inc116.i, %if.end109.i ]
  %ii.2226.i = phi i32 [ 0, %for.body99.lr.ph.i ], [ %inc115.i, %if.end109.i ]
  %sum0.2225.i = phi double [ 0.000000e+00, %for.body99.lr.ph.i ], [ %add113.i, %if.end109.i ]
  %arrayidx103.i = getelementptr inbounds i32* %114, i64 %indvars.iv278.i
  %119 = load i32* %arrayidx103.i, align 4, !tbaa !3
  %cmp104.i = icmp sgt i32 %119, -1
  %cmp106.i = icmp slt i32 %119, %118
  %or.cond210.i = and i1 %cmp104.i, %cmp106.i
  br i1 %or.cond210.i, label %if.end109.i, label %if.then107.i

if.then107.i:                                     ; preds = %for.body99.i
  %120 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call108.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %120, i8* getelementptr inbounds ([52 x i8]* @.str7, i64 0, i64 0), i32 %irowA.2233.i, i32 %kk.7227.i, i32 %ii.2226.i, i32 %119) #5
  call void @exit(i32 -1) #6
  unreachable

if.end109.i:                                      ; preds = %for.body99.i
  %arrayidx101.i = getelementptr inbounds double* %115, i64 %indvars.iv278.i
  %121 = load double* %arrayidx101.i, align 8, !tbaa !4
  %idxprom110.i = sext i32 %119 to i64
  %arrayidx111.i140 = getelementptr inbounds double* %colB0.0.lcssa.i121, i64 %idxprom110.i
  %122 = load double* %arrayidx111.i140, align 8, !tbaa !4
  %mul112.i = fmul double %121, %122
  %add113.i = fadd double %sum0.2225.i, %mul112.i
  %inc115.i = add nsw i32 %ii.2226.i, 1
  %indvars.iv.next279.i = add i64 %indvars.iv278.i, 1
  %inc116.i = add nsw i32 %kk.7227.i, 1
  %cmp98.i = icmp slt i32 %inc115.i, %116
  br i1 %cmp98.i, label %for.body99.i, label %for.end117.i

for.end117.i:                                     ; preds = %if.end109.i, %for.cond97.preheader.i
  %kk.7.lcssa.i141 = phi i32 [ %kk.6236.i, %for.cond97.preheader.i ], [ %inc116.i, %if.end109.i ]
  %sum0.2.lcssa.i142 = phi double [ 0.000000e+00, %for.cond97.preheader.i ], [ %add113.i, %if.end109.i ]
  %arrayidx119.i = getelementptr inbounds double* %colB0.0.lcssa.i121, i64 %indvars.iv281.i
  %123 = load double* %arrayidx119.i, align 8, !tbaa !4
  %sub120.i = fsub double %123, %sum0.2.lcssa.i142
  store double %sub120.i, double* %arrayidx119.i, align 8, !tbaa !4
  br label %for.inc122.i

for.inc122.i:                                     ; preds = %for.end117.i, %for.body92.i
  %kk.8.i143 = phi i32 [ %kk.7.lcssa.i141, %for.end117.i ], [ %kk.6236.i, %for.body92.i ]
  %indvars.iv.next282.i = add i64 %indvars.iv281.i, 1
  %inc123.i = add nsw i32 %irowA.2233.i, 1
  %124 = trunc i64 %indvars.iv.next282.i to i32
  %cmp91.i = icmp slt i32 %124, %112
  br i1 %cmp91.i, label %for.body92.i, label %sw.epilog41

sw.bb17:                                          ; preds = %sw.bb
  %125 = bitcast double** %entriesA.i144 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %125) #4
  %126 = bitcast double** %entriesB.i145 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %126) #4
  %127 = bitcast i32* %inc1.i146 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %127) #4
  %128 = bitcast i32* %inc2.i147 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %128) #4
  %129 = bitcast i32* %ncolB.i148 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %129) #4
  %130 = bitcast i32* %nentA.i149 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %130) #4
  %131 = bitcast i32* %nrowA.i150 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %131) #4
  %132 = bitcast i32* %nrowB.i151 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %132) #4
  %133 = bitcast i32** %firstlocsA.i152 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %133) #4
  %134 = bitcast i32** %sizesA.i153 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %134) #4
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i150, i32* %nentA.i149, i32** %firstlocsA.i152, i32** %sizesA.i153, double** %entriesA.i144) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i151, i32* %ncolB.i148, i32* %inc1.i146, i32* %inc2.i147, double** %entriesB.i145) #5
  %135 = load double** %entriesB.i145, align 8, !tbaa !0
  %136 = load i32* %ncolB.i148, align 4, !tbaa !3
  %sub235.i = add nsw i32 %136, -2
  %cmp236.i = icmp sgt i32 %sub235.i, 0
  br i1 %cmp236.i, label %for.body.lr.ph.i157, label %for.end45.i175

for.body.lr.ph.i157:                              ; preds = %sw.bb17
  %137 = load i32* %nrowB.i151, align 4, !tbaa !3
  %idx.ext.i154 = sext i32 %137 to i64
  %add.ptr.sum.i155 = shl nsw i64 %idx.ext.i154, 1
  %138 = load i32* %nrowA.i150, align 4, !tbaa !3
  %139 = load i32* %nentA.i149, align 4, !tbaa !3
  %140 = load i32** %sizesA.i153, align 8, !tbaa !0
  %141 = load i32** %firstlocsA.i152, align 8, !tbaa !0
  %142 = load double** %entriesA.i144, align 8, !tbaa !0
  %add.ptr2.sum.i156 = add i64 %add.ptr.sum.i155, %idx.ext.i154
  br label %for.body.i158

for.body.i158:                                    ; preds = %for.end40.i171, %for.body.lr.ph.i157
  %jcolB.0238.i = phi i32 [ 0, %for.body.lr.ph.i157 ], [ %add44.i169, %for.end40.i171 ]
  %colB0.0237.i = phi double* [ %135, %for.body.lr.ph.i157 ], [ %add.ptr42.i168, %for.end40.i171 ]
  br label %for.cond4.outer.i

for.cond4.outer.i:                                ; preds = %if.then.i162, %for.body24.i, %for.body.i158
  %colstart.0.ph.i = phi i32 [ %139, %for.body.i158 ], [ %sub15.i, %for.body24.i ], [ %sub15.i, %if.then.i162 ]
  %irowA.0.in.ph.i = phi i32 [ %138, %for.body.i158 ], [ %irowA.0.i, %for.body24.i ], [ %irowA.0.i, %if.then.i162 ]
  %143 = sext i32 %irowA.0.in.ph.i to i64
  br label %for.cond4.i

for.cond4.i:                                      ; preds = %for.body6.i, %for.cond4.outer.i
  %indvars.iv257.i = phi i64 [ %143, %for.cond4.outer.i ], [ %indvars.iv.next258.i, %for.body6.i ]
  %irowA.0.in.i = phi i32 [ %irowA.0.in.ph.i, %for.cond4.outer.i ], [ %irowA.0.i, %for.body6.i ]
  %indvars.iv.next258.i = add i64 %indvars.iv257.i, -1
  %irowA.0.i = add nsw i32 %irowA.0.in.i, -1
  %144 = trunc i64 %indvars.iv257.i to i32
  %cmp5.i = icmp sgt i32 %144, 0
  br i1 %cmp5.i, label %for.body6.i, label %for.end40.i171

for.body6.i:                                      ; preds = %for.cond4.i
  %arrayidx.i159 = getelementptr inbounds i32* %140, i64 %indvars.iv.next258.i
  %145 = load i32* %arrayidx.i159, align 4, !tbaa !3
  %cmp7.i = icmp sgt i32 %145, 0
  br i1 %cmp7.i, label %if.then.i162, label %for.cond4.i

if.then.i162:                                     ; preds = %for.body6.i
  %arrayidx9.i = getelementptr inbounds i32* %141, i64 %indvars.iv.next258.i
  %146 = load i32* %arrayidx9.i, align 4, !tbaa !3
  %add.i160 = add i32 %145, -1
  %sub12.i = add i32 %add.i160, %146
  %sub13.neg.i = add i32 %colstart.0.ph.i, -1
  %add14.neg.i = add i32 %sub13.neg.i, %146
  %sub15.i = sub i32 %add14.neg.i, %sub12.i
  %arrayidx17.i = getelementptr inbounds double* %colB0.0237.i, i64 %indvars.iv.next258.i
  %147 = load double* %arrayidx17.i, align 8, !tbaa !4
  %add.ptr.sum213.i = add i64 %indvars.iv.next258.i, %idx.ext.i154
  %arrayidx19.i = getelementptr inbounds double* %colB0.0237.i, i64 %add.ptr.sum213.i
  %148 = load double* %arrayidx19.i, align 8, !tbaa !4
  %add.ptr2.sum214.i = add i64 %indvars.iv.next258.i, %add.ptr.sum.i155
  %arrayidx21.i161 = getelementptr inbounds double* %colB0.0237.i, i64 %add.ptr2.sum214.i
  %149 = load double* %arrayidx21.i161, align 8, !tbaa !4
  %cmp23229.i = icmp sgt i32 %146, %sub12.i
  br i1 %cmp23229.i, label %for.cond4.outer.i, label %for.body24.lr.ph.i

for.body24.lr.ph.i:                               ; preds = %if.then.i162
  %150 = sub i32 %colstart.0.ph.i, %145
  %151 = sext i32 %150 to i64
  %152 = sext i32 %146 to i64
  br label %for.body24.i

for.body24.i:                                     ; preds = %for.body24.i, %for.body24.lr.ph.i
  %indvars.iv261.i = phi i64 [ %indvars.iv.next262.i, %for.body24.i ], [ %152, %for.body24.lr.ph.i ]
  %indvars.iv259.i = phi i64 [ %indvars.iv.next260.i, %for.body24.i ], [ %151, %for.body24.lr.ph.i ]
  %arrayidx26.i = getelementptr inbounds double* %142, i64 %indvars.iv259.i
  %153 = load double* %arrayidx26.i, align 8, !tbaa !4
  %mul.i163 = fmul double %147, %153
  %arrayidx28.i = getelementptr inbounds double* %colB0.0237.i, i64 %indvars.iv261.i
  %154 = load double* %arrayidx28.i, align 8, !tbaa !4
  %sub29.i = fsub double %154, %mul.i163
  store double %sub29.i, double* %arrayidx28.i, align 8, !tbaa !4
  %mul30.i = fmul double %148, %153
  %add.ptr.sum215.i = add i64 %indvars.iv261.i, %idx.ext.i154
  %arrayidx32.i164 = getelementptr inbounds double* %colB0.0237.i, i64 %add.ptr.sum215.i
  %155 = load double* %arrayidx32.i164, align 8, !tbaa !4
  %sub33.i165 = fsub double %155, %mul30.i
  store double %sub33.i165, double* %arrayidx32.i164, align 8, !tbaa !4
  %mul34.i = fmul double %149, %153
  %add.ptr2.sum216.i = add i64 %indvars.iv261.i, %add.ptr.sum.i155
  %arrayidx36.i166 = getelementptr inbounds double* %colB0.0237.i, i64 %add.ptr2.sum216.i
  %156 = load double* %arrayidx36.i166, align 8, !tbaa !4
  %sub37.i167 = fsub double %156, %mul34.i
  store double %sub37.i167, double* %arrayidx36.i166, align 8, !tbaa !4
  %indvars.iv.next262.i = add i64 %indvars.iv261.i, 1
  %indvars.iv.next260.i = add i64 %indvars.iv259.i, 1
  %157 = trunc i64 %indvars.iv261.i to i32
  %cmp23.i = icmp slt i32 %157, %sub12.i
  br i1 %cmp23.i, label %for.body24.i, label %for.cond4.outer.i

for.end40.i171:                                   ; preds = %for.cond4.i
  %add.ptr42.i168 = getelementptr inbounds double* %colB0.0237.i, i64 %add.ptr2.sum.i156
  %add44.i169 = add nsw i32 %jcolB.0238.i, 3
  %cmp.i170 = icmp slt i32 %add44.i169, %sub235.i
  br i1 %cmp.i170, label %for.body.i158, label %for.end45.i175

for.end45.i175:                                   ; preds = %for.end40.i171, %sw.bb17
  %jcolB.0.lcssa.i172 = phi i32 [ 0, %sw.bb17 ], [ %add44.i169, %for.end40.i171 ]
  %colB0.0.lcssa.i173 = phi double* [ %135, %sw.bb17 ], [ %add.ptr42.i168, %for.end40.i171 ]
  %cmp47.i174 = icmp eq i32 %jcolB.0.lcssa.i172, %sub235.i
  br i1 %cmp47.i174, label %if.then48.i177, label %if.else.i181

if.then48.i177:                                   ; preds = %for.end45.i175
  %158 = load i32* %nrowB.i151, align 4, !tbaa !3
  %idx.ext49.i176 = sext i32 %158 to i64
  %159 = load i32* %nrowA.i150, align 4, !tbaa !3
  %160 = load i32* %nentA.i149, align 4, !tbaa !3
  %161 = load i32** %sizesA.i153, align 8, !tbaa !0
  %162 = load i32** %firstlocsA.i152, align 8, !tbaa !0
  %163 = load double** %entriesA.i144, align 8, !tbaa !0
  br label %for.cond52.outer.i

for.cond52.outer.i:                               ; preds = %if.then58.i, %for.body74.i, %if.then48.i177
  %colstart.2.ph.i = phi i32 [ %160, %if.then48.i177 ], [ %sub67.i, %for.body74.i ], [ %sub67.i, %if.then58.i ]
  %irowA.1.in.ph.i = phi i32 [ %159, %if.then48.i177 ], [ %irowA.1.i, %for.body74.i ], [ %irowA.1.i, %if.then58.i ]
  %164 = sext i32 %irowA.1.in.ph.i to i64
  br label %for.cond52.i

for.cond52.i:                                     ; preds = %for.body54.i, %for.cond52.outer.i
  %indvars.iv.i178 = phi i64 [ %164, %for.cond52.outer.i ], [ %indvars.iv.next.i179, %for.body54.i ]
  %irowA.1.in.i = phi i32 [ %irowA.1.in.ph.i, %for.cond52.outer.i ], [ %irowA.1.i, %for.body54.i ]
  %indvars.iv.next.i179 = add i64 %indvars.iv.i178, -1
  %irowA.1.i = add nsw i32 %irowA.1.in.i, -1
  %165 = trunc i64 %indvars.iv.i178 to i32
  %cmp53.i = icmp sgt i32 %165, 0
  br i1 %cmp53.i, label %for.body54.i, label %sw.epilog41

for.body54.i:                                     ; preds = %for.cond52.i
  %arrayidx56.i = getelementptr inbounds i32* %161, i64 %indvars.iv.next.i179
  %166 = load i32* %arrayidx56.i, align 4, !tbaa !3
  %cmp57.i = icmp sgt i32 %166, 0
  br i1 %cmp57.i, label %if.then58.i, label %for.cond52.i

if.then58.i:                                      ; preds = %for.body54.i
  %arrayidx60.i = getelementptr inbounds i32* %162, i64 %indvars.iv.next.i179
  %167 = load i32* %arrayidx60.i, align 4, !tbaa !3
  %add63.i = add i32 %166, -1
  %sub64.i = add i32 %add63.i, %167
  %sub65.neg.i = add i32 %colstart.2.ph.i, -1
  %add66.neg.i = add i32 %sub65.neg.i, %167
  %sub67.i = sub i32 %add66.neg.i, %sub64.i
  %arrayidx69.i = getelementptr inbounds double* %colB0.0.lcssa.i173, i64 %indvars.iv.next.i179
  %168 = load double* %arrayidx69.i, align 8, !tbaa !4
  %add.ptr50.sum.i180 = add i64 %indvars.iv.next.i179, %idx.ext49.i176
  %arrayidx71.i = getelementptr inbounds double* %colB0.0.lcssa.i173, i64 %add.ptr50.sum.i180
  %169 = load double* %arrayidx71.i, align 8, !tbaa !4
  %cmp73219.i = icmp sgt i32 %167, %sub64.i
  br i1 %cmp73219.i, label %for.cond52.outer.i, label %for.body74.lr.ph.i

for.body74.lr.ph.i:                               ; preds = %if.then58.i
  %170 = sub i32 %colstart.2.ph.i, %166
  %171 = sext i32 %170 to i64
  %172 = sext i32 %167 to i64
  br label %for.body74.i

for.body74.i:                                     ; preds = %for.body74.i, %for.body74.lr.ph.i
  %indvars.iv245.i = phi i64 [ %indvars.iv.next246.i, %for.body74.i ], [ %172, %for.body74.lr.ph.i ]
  %indvars.iv243.i = phi i64 [ %indvars.iv.next244.i, %for.body74.i ], [ %171, %for.body74.lr.ph.i ]
  %arrayidx76.i = getelementptr inbounds double* %163, i64 %indvars.iv243.i
  %173 = load double* %arrayidx76.i, align 8, !tbaa !4
  %mul77.i = fmul double %168, %173
  %arrayidx79.i = getelementptr inbounds double* %colB0.0.lcssa.i173, i64 %indvars.iv245.i
  %174 = load double* %arrayidx79.i, align 8, !tbaa !4
  %sub80.i = fsub double %174, %mul77.i
  store double %sub80.i, double* %arrayidx79.i, align 8, !tbaa !4
  %mul81.i = fmul double %169, %173
  %add.ptr50.sum212.i = add i64 %indvars.iv245.i, %idx.ext49.i176
  %arrayidx83.i = getelementptr inbounds double* %colB0.0.lcssa.i173, i64 %add.ptr50.sum212.i
  %175 = load double* %arrayidx83.i, align 8, !tbaa !4
  %sub84.i = fsub double %175, %mul81.i
  store double %sub84.i, double* %arrayidx83.i, align 8, !tbaa !4
  %indvars.iv.next246.i = add i64 %indvars.iv245.i, 1
  %indvars.iv.next244.i = add i64 %indvars.iv243.i, 1
  %176 = trunc i64 %indvars.iv245.i to i32
  %cmp73.i = icmp slt i32 %176, %sub64.i
  br i1 %cmp73.i, label %for.body74.i, label %for.cond52.outer.i

if.else.i181:                                     ; preds = %for.end45.i175
  %sub93.i = add nsw i32 %136, -1
  %cmp94.i = icmp eq i32 %jcolB.0.lcssa.i172, %sub93.i
  br i1 %cmp94.i, label %if.then95.i, label %sw.epilog41

if.then95.i:                                      ; preds = %if.else.i181
  %177 = load i32* %nrowA.i150, align 4, !tbaa !3
  %178 = load i32* %nentA.i149, align 4, !tbaa !3
  %179 = load i32** %sizesA.i153, align 8, !tbaa !0
  %180 = load i32** %firstlocsA.i152, align 8, !tbaa !0
  %181 = load double** %entriesA.i144, align 8, !tbaa !0
  br label %for.cond97.outer.i

for.cond97.outer.i:                               ; preds = %if.then103.i, %for.body117.i, %if.then95.i
  %colstart.4.ph.i = phi i32 [ %178, %if.then95.i ], [ %sub112.i, %for.body117.i ], [ %sub112.i, %if.then103.i ]
  %irowA.2.in.ph.i = phi i32 [ %177, %if.then95.i ], [ %irowA.2.i, %for.body117.i ], [ %irowA.2.i, %if.then103.i ]
  %182 = sext i32 %irowA.2.in.ph.i to i64
  br label %for.cond97.i

for.cond97.i:                                     ; preds = %for.body99.i186, %for.cond97.outer.i
  %indvars.iv249.i182 = phi i64 [ %182, %for.cond97.outer.i ], [ %indvars.iv.next250.i183, %for.body99.i186 ]
  %irowA.2.in.i = phi i32 [ %irowA.2.in.ph.i, %for.cond97.outer.i ], [ %irowA.2.i, %for.body99.i186 ]
  %indvars.iv.next250.i183 = add i64 %indvars.iv249.i182, -1
  %irowA.2.i = add nsw i32 %irowA.2.in.i, -1
  %183 = trunc i64 %indvars.iv249.i182 to i32
  %cmp98.i184 = icmp sgt i32 %183, 0
  br i1 %cmp98.i184, label %for.body99.i186, label %sw.epilog41

for.body99.i186:                                  ; preds = %for.cond97.i
  %arrayidx101.i185 = getelementptr inbounds i32* %179, i64 %indvars.iv.next250.i183
  %184 = load i32* %arrayidx101.i185, align 4, !tbaa !3
  %cmp102.i = icmp sgt i32 %184, 0
  br i1 %cmp102.i, label %if.then103.i, label %for.cond97.i

if.then103.i:                                     ; preds = %for.body99.i186
  %arrayidx105.i = getelementptr inbounds i32* %180, i64 %indvars.iv.next250.i183
  %185 = load i32* %arrayidx105.i, align 4, !tbaa !3
  %add108.i = add i32 %184, -1
  %sub109.i = add i32 %add108.i, %185
  %sub110.neg.i = add i32 %colstart.4.ph.i, -1
  %add111.neg.i = add i32 %sub110.neg.i, %185
  %sub112.i = sub i32 %add111.neg.i, %sub109.i
  %arrayidx114.i = getelementptr inbounds double* %colB0.0.lcssa.i173, i64 %indvars.iv.next250.i183
  %186 = load double* %arrayidx114.i, align 8, !tbaa !4
  %cmp116223.i = icmp sgt i32 %185, %sub109.i
  br i1 %cmp116223.i, label %for.cond97.outer.i, label %for.body117.lr.ph.i

for.body117.lr.ph.i:                              ; preds = %if.then103.i
  %187 = sub i32 %colstart.4.ph.i, %184
  %188 = sext i32 %187 to i64
  %189 = sext i32 %185 to i64
  br label %for.body117.i

for.body117.i:                                    ; preds = %for.body117.i, %for.body117.lr.ph.i
  %indvars.iv253.i187 = phi i64 [ %indvars.iv.next254.i190, %for.body117.i ], [ %189, %for.body117.lr.ph.i ]
  %indvars.iv251.i188 = phi i64 [ %indvars.iv.next252.i191, %for.body117.i ], [ %188, %for.body117.lr.ph.i ]
  %arrayidx119.i189 = getelementptr inbounds double* %181, i64 %indvars.iv251.i188
  %190 = load double* %arrayidx119.i189, align 8, !tbaa !4
  %mul120.i = fmul double %186, %190
  %arrayidx122.i = getelementptr inbounds double* %colB0.0.lcssa.i173, i64 %indvars.iv253.i187
  %191 = load double* %arrayidx122.i, align 8, !tbaa !4
  %sub123.i = fsub double %191, %mul120.i
  store double %sub123.i, double* %arrayidx122.i, align 8, !tbaa !4
  %indvars.iv.next254.i190 = add i64 %indvars.iv253.i187, 1
  %indvars.iv.next252.i191 = add i64 %indvars.iv251.i188, 1
  %192 = trunc i64 %indvars.iv253.i187 to i32
  %cmp116.i = icmp slt i32 %192, %sub109.i
  br i1 %cmp116.i, label %for.body117.i, label %for.cond97.outer.i

sw.bb18:                                          ; preds = %sw.bb
  %193 = bitcast double** %entriesA.i192 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %193) #4
  %194 = bitcast double** %entriesB.i193 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %194) #4
  %195 = bitcast i32* %inc1.i194 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %195) #4
  %196 = bitcast i32* %inc2.i195 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %196) #4
  %197 = bitcast i32* %ncolB.i196 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %197) #4
  %198 = bitcast i32* %nentA.i197 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %198) #4
  %199 = bitcast i32* %nrowA.i198 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %199) #4
  %200 = bitcast i32* %nrowB.i199 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %200) #4
  %201 = bitcast i32** %indicesA.i200 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %201) #4
  %202 = bitcast i32** %sizesA.i201 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %202) #4
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i198, i32* %nentA.i197, i32** %sizesA.i201, i32** %indicesA.i200, double** %entriesA.i192) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i199, i32* %ncolB.i196, i32* %inc1.i194, i32* %inc2.i195, double** %entriesB.i193) #5
  %203 = load double** %entriesB.i193, align 8, !tbaa !0
  %204 = load i32* %ncolB.i196, align 4, !tbaa !3
  %sub203.i = add nsw i32 %204, -2
  %cmp204.i = icmp sgt i32 %sub203.i, 0
  br i1 %cmp204.i, label %for.body.lr.ph.i205, label %for.end39.i

for.body.lr.ph.i205:                              ; preds = %sw.bb18
  %205 = load i32* %nrowB.i199, align 4, !tbaa !3
  %idx.ext.i202 = sext i32 %205 to i64
  %add.ptr.sum.i203 = shl nsw i64 %idx.ext.i202, 1
  %206 = load i32* %nrowA.i198, align 4, !tbaa !3
  %207 = load i32* %nentA.i197, align 4, !tbaa !3
  %208 = load i32** %sizesA.i201, align 8, !tbaa !0
  %209 = load double** %entriesA.i192, align 8, !tbaa !0
  %210 = load i32** %indicesA.i200, align 8, !tbaa !0
  %add.ptr2.sum.i204 = add i64 %add.ptr.sum.i203, %idx.ext.i202
  br label %for.body.i206

for.body.i206:                                    ; preds = %for.end35.i, %for.body.lr.ph.i205
  %jcolB.0206.i = phi i32 [ 0, %for.body.lr.ph.i205 ], [ %add.i219, %for.end35.i ]
  %colB0.0205.i = phi double* [ %203, %for.body.lr.ph.i205 ], [ %add.ptr37.i, %for.end35.i ]
  br label %for.cond4.outer.i208

for.cond4.outer.i208:                             ; preds = %for.body17.i, %for.body.i206
  %colstart.0.ph.i207 = phi i32 [ %207, %for.body.i206 ], [ %sub8.i, %for.body17.i ]
  %jcolA.0.in.ph.i = phi i32 [ %206, %for.body.i206 ], [ %jcolA.0.i, %for.body17.i ]
  %211 = sext i32 %jcolA.0.in.ph.i to i64
  br label %for.cond4.i210

for.cond4.i210:                                   ; preds = %for.body6.i213, %for.cond4.outer.i208
  %indvars.iv222.i = phi i64 [ %211, %for.cond4.outer.i208 ], [ %indvars.iv.next223.i, %for.body6.i213 ]
  %jcolA.0.in.i = phi i32 [ %jcolA.0.in.ph.i, %for.cond4.outer.i208 ], [ %jcolA.0.i, %for.body6.i213 ]
  %indvars.iv.next223.i = add i64 %indvars.iv222.i, -1
  %jcolA.0.i = add nsw i32 %jcolA.0.in.i, -1
  %212 = trunc i64 %indvars.iv222.i to i32
  %cmp5.i209 = icmp sgt i32 %212, 0
  br i1 %cmp5.i209, label %for.body6.i213, label %for.end35.i

for.body6.i213:                                   ; preds = %for.cond4.i210
  %arrayidx.i211 = getelementptr inbounds i32* %208, i64 %indvars.iv.next223.i
  %213 = load i32* %arrayidx.i211, align 4, !tbaa !3
  %cmp7.i212 = icmp sgt i32 %213, 0
  br i1 %cmp7.i212, label %for.body17.lr.ph.i, label %for.cond4.i210

for.body17.lr.ph.i:                               ; preds = %for.body6.i213
  %sub8.i = sub i32 %colstart.0.ph.i207, %213
  %arrayidx10.i = getelementptr inbounds double* %colB0.0205.i, i64 %indvars.iv.next223.i
  %214 = load double* %arrayidx10.i, align 8, !tbaa !4
  %add.ptr.sum183.i = add i64 %indvars.iv.next223.i, %idx.ext.i202
  %arrayidx12.i = getelementptr inbounds double* %colB0.0205.i, i64 %add.ptr.sum183.i
  %215 = load double* %arrayidx12.i, align 8, !tbaa !4
  %add.ptr2.sum184.i = add i64 %indvars.iv.next223.i, %add.ptr.sum.i203
  %arrayidx14.i = getelementptr inbounds double* %colB0.0205.i, i64 %add.ptr2.sum184.i
  %216 = load double* %arrayidx14.i, align 8, !tbaa !4
  %217 = sext i32 %sub8.i to i64
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i, %for.body17.lr.ph.i
  %indvars.iv224.i = phi i64 [ %217, %for.body17.lr.ph.i ], [ %indvars.iv.next225.i, %for.body17.i ]
  %ii.0198.i = phi i32 [ 0, %for.body17.lr.ph.i ], [ %inc.i218, %for.body17.i ]
  %arrayidx19.i214 = getelementptr inbounds double* %209, i64 %indvars.iv224.i
  %218 = load double* %arrayidx19.i214, align 8, !tbaa !4
  %arrayidx21.i215 = getelementptr inbounds i32* %210, i64 %indvars.iv224.i
  %219 = load i32* %arrayidx21.i215, align 4, !tbaa !3
  %mul.i216 = fmul double %214, %218
  %idxprom22.i = sext i32 %219 to i64
  %arrayidx23.i = getelementptr inbounds double* %colB0.0205.i, i64 %idxprom22.i
  %220 = load double* %arrayidx23.i, align 8, !tbaa !4
  %sub24.i = fsub double %220, %mul.i216
  store double %sub24.i, double* %arrayidx23.i, align 8, !tbaa !4
  %mul25.i217 = fmul double %215, %218
  %add.ptr.sum185.i = add i64 %idxprom22.i, %idx.ext.i202
  %arrayidx27.i = getelementptr inbounds double* %colB0.0205.i, i64 %add.ptr.sum185.i
  %221 = load double* %arrayidx27.i, align 8, !tbaa !4
  %sub28.i = fsub double %221, %mul25.i217
  store double %sub28.i, double* %arrayidx27.i, align 8, !tbaa !4
  %mul29.i = fmul double %216, %218
  %add.ptr2.sum186.i = add i64 %idxprom22.i, %add.ptr.sum.i203
  %arrayidx31.i = getelementptr inbounds double* %colB0.0205.i, i64 %add.ptr2.sum186.i
  %222 = load double* %arrayidx31.i, align 8, !tbaa !4
  %sub32.i = fsub double %222, %mul29.i
  store double %sub32.i, double* %arrayidx31.i, align 8, !tbaa !4
  %inc.i218 = add nsw i32 %ii.0198.i, 1
  %indvars.iv.next225.i = add i64 %indvars.iv224.i, 1
  %exitcond226.i = icmp eq i32 %inc.i218, %213
  br i1 %exitcond226.i, label %for.cond4.outer.i208, label %for.body17.i

for.end35.i:                                      ; preds = %for.cond4.i210
  %add.ptr37.i = getelementptr inbounds double* %colB0.0205.i, i64 %add.ptr2.sum.i204
  %add.i219 = add nsw i32 %jcolB.0206.i, 3
  %cmp.i220 = icmp slt i32 %add.i219, %sub203.i
  br i1 %cmp.i220, label %for.body.i206, label %for.end39.i

for.end39.i:                                      ; preds = %for.end35.i, %sw.bb18
  %jcolB.0.lcssa.i221 = phi i32 [ 0, %sw.bb18 ], [ %add.i219, %for.end35.i ]
  %colB0.0.lcssa.i222 = phi double* [ %203, %sw.bb18 ], [ %add.ptr37.i, %for.end35.i ]
  %cmp41.i = icmp eq i32 %jcolB.0.lcssa.i221, %sub203.i
  br i1 %cmp41.i, label %if.then42.i, label %if.else.i235

if.then42.i:                                      ; preds = %for.end39.i
  %223 = load i32* %nrowB.i199, align 4, !tbaa !3
  %idx.ext43.i = sext i32 %223 to i64
  %224 = load i32* %nrowA.i198, align 4, !tbaa !3
  %225 = load i32* %nentA.i197, align 4, !tbaa !3
  %226 = load i32** %sizesA.i201, align 8, !tbaa !0
  %227 = load double** %entriesA.i192, align 8, !tbaa !0
  %228 = load i32** %indicesA.i200, align 8, !tbaa !0
  br label %for.cond46.outer.i

for.cond46.outer.i:                               ; preds = %for.body60.i234, %if.then42.i
  %colstart.2.ph.i223 = phi i32 [ %225, %if.then42.i ], [ %sub53.i, %for.body60.i234 ]
  %jcolA.1.in.ph.i = phi i32 [ %224, %if.then42.i ], [ %jcolA.1.i, %for.body60.i234 ]
  %229 = sext i32 %jcolA.1.in.ph.i to i64
  br label %for.cond46.i

for.cond46.i:                                     ; preds = %for.body48.i, %for.cond46.outer.i
  %indvars.iv.i224 = phi i64 [ %229, %for.cond46.outer.i ], [ %indvars.iv.next.i225, %for.body48.i ]
  %jcolA.1.in.i = phi i32 [ %jcolA.1.in.ph.i, %for.cond46.outer.i ], [ %jcolA.1.i, %for.body48.i ]
  %indvars.iv.next.i225 = add i64 %indvars.iv.i224, -1
  %jcolA.1.i = add nsw i32 %jcolA.1.in.i, -1
  %230 = trunc i64 %indvars.iv.i224 to i32
  %cmp47.i226 = icmp sgt i32 %230, 0
  br i1 %cmp47.i226, label %for.body48.i, label %sw.epilog41

for.body48.i:                                     ; preds = %for.cond46.i
  %arrayidx50.i = getelementptr inbounds i32* %226, i64 %indvars.iv.next.i225
  %231 = load i32* %arrayidx50.i, align 4, !tbaa !3
  %cmp51.i = icmp sgt i32 %231, 0
  br i1 %cmp51.i, label %for.body60.lr.ph.i228, label %for.cond46.i

for.body60.lr.ph.i228:                            ; preds = %for.body48.i
  %sub53.i = sub i32 %colstart.2.ph.i223, %231
  %arrayidx55.i227 = getelementptr inbounds double* %colB0.0.lcssa.i222, i64 %indvars.iv.next.i225
  %232 = load double* %arrayidx55.i227, align 8, !tbaa !4
  %add.ptr44.sum.i = add i64 %indvars.iv.next.i225, %idx.ext43.i
  %arrayidx57.i = getelementptr inbounds double* %colB0.0.lcssa.i222, i64 %add.ptr44.sum.i
  %233 = load double* %arrayidx57.i, align 8, !tbaa !4
  %234 = sext i32 %sub53.i to i64
  br label %for.body60.i234

for.body60.i234:                                  ; preds = %for.body60.i234, %for.body60.lr.ph.i228
  %indvars.iv211.i = phi i64 [ %234, %for.body60.lr.ph.i228 ], [ %indvars.iv.next212.i, %for.body60.i234 ]
  %ii.1188.i = phi i32 [ 0, %for.body60.lr.ph.i228 ], [ %inc74.i232, %for.body60.i234 ]
  %arrayidx62.i229 = getelementptr inbounds double* %227, i64 %indvars.iv211.i
  %235 = load double* %arrayidx62.i229, align 8, !tbaa !4
  %arrayidx64.i230 = getelementptr inbounds i32* %228, i64 %indvars.iv211.i
  %236 = load i32* %arrayidx64.i230, align 4, !tbaa !3
  %mul65.i = fmul double %232, %235
  %idxprom66.i = sext i32 %236 to i64
  %arrayidx67.i = getelementptr inbounds double* %colB0.0.lcssa.i222, i64 %idxprom66.i
  %237 = load double* %arrayidx67.i, align 8, !tbaa !4
  %sub68.i = fsub double %237, %mul65.i
  store double %sub68.i, double* %arrayidx67.i, align 8, !tbaa !4
  %mul69.i = fmul double %233, %235
  %add.ptr44.sum182.i = add i64 %idxprom66.i, %idx.ext43.i
  %arrayidx71.i231 = getelementptr inbounds double* %colB0.0.lcssa.i222, i64 %add.ptr44.sum182.i
  %238 = load double* %arrayidx71.i231, align 8, !tbaa !4
  %sub72.i = fsub double %238, %mul69.i
  store double %sub72.i, double* %arrayidx71.i231, align 8, !tbaa !4
  %inc74.i232 = add nsw i32 %ii.1188.i, 1
  %indvars.iv.next212.i = add i64 %indvars.iv211.i, 1
  %exitcond.i233 = icmp eq i32 %inc74.i232, %231
  br i1 %exitcond.i233, label %for.cond46.outer.i, label %for.body60.i234

if.else.i235:                                     ; preds = %for.end39.i
  %sub81.i = add nsw i32 %204, -1
  %cmp82.i = icmp eq i32 %jcolB.0.lcssa.i221, %sub81.i
  br i1 %cmp82.i, label %if.then83.i, label %sw.epilog41

if.then83.i:                                      ; preds = %if.else.i235
  %239 = load i32* %nrowA.i198, align 4, !tbaa !3
  %240 = load i32* %nentA.i197, align 4, !tbaa !3
  %241 = load i32** %sizesA.i201, align 8, !tbaa !0
  %242 = load double** %entriesA.i192, align 8, !tbaa !0
  %243 = load i32** %indicesA.i200, align 8, !tbaa !0
  br label %for.cond85.outer.i

for.cond85.outer.i:                               ; preds = %for.body97.i, %if.then83.i
  %colstart.4.ph.i236 = phi i32 [ %240, %if.then83.i ], [ %sub92.i, %for.body97.i ]
  %jcolA.2.in.ph.i = phi i32 [ %239, %if.then83.i ], [ %jcolA.2.i, %for.body97.i ]
  %244 = sext i32 %jcolA.2.in.ph.i to i64
  br label %for.cond85.i

for.cond85.i:                                     ; preds = %for.body87.i, %for.cond85.outer.i
  %indvars.iv215.i = phi i64 [ %244, %for.cond85.outer.i ], [ %indvars.iv.next216.i, %for.body87.i ]
  %jcolA.2.in.i = phi i32 [ %jcolA.2.in.ph.i, %for.cond85.outer.i ], [ %jcolA.2.i, %for.body87.i ]
  %indvars.iv.next216.i = add i64 %indvars.iv215.i, -1
  %jcolA.2.i = add nsw i32 %jcolA.2.in.i, -1
  %245 = trunc i64 %indvars.iv215.i to i32
  %cmp86.i = icmp sgt i32 %245, 0
  br i1 %cmp86.i, label %for.body87.i, label %sw.epilog41

for.body87.i:                                     ; preds = %for.cond85.i
  %arrayidx89.i = getelementptr inbounds i32* %241, i64 %indvars.iv.next216.i
  %246 = load i32* %arrayidx89.i, align 4, !tbaa !3
  %cmp90.i = icmp sgt i32 %246, 0
  br i1 %cmp90.i, label %for.body97.lr.ph.i, label %for.cond85.i

for.body97.lr.ph.i:                               ; preds = %for.body87.i
  %sub92.i = sub i32 %colstart.4.ph.i236, %246
  %arrayidx94.i237 = getelementptr inbounds double* %colB0.0.lcssa.i222, i64 %indvars.iv.next216.i
  %247 = load double* %arrayidx94.i237, align 8, !tbaa !4
  %248 = sext i32 %sub92.i to i64
  br label %for.body97.i

for.body97.i:                                     ; preds = %for.body97.i, %for.body97.lr.ph.i
  %indvars.iv217.i = phi i64 [ %248, %for.body97.lr.ph.i ], [ %indvars.iv.next218.i, %for.body97.i ]
  %ii.2192.i = phi i32 [ 0, %for.body97.lr.ph.i ], [ %inc107.i, %for.body97.i ]
  %arrayidx99.i = getelementptr inbounds double* %242, i64 %indvars.iv217.i
  %249 = load double* %arrayidx99.i, align 8, !tbaa !4
  %arrayidx101.i238 = getelementptr inbounds i32* %243, i64 %indvars.iv217.i
  %250 = load i32* %arrayidx101.i238, align 4, !tbaa !3
  %mul102.i = fmul double %247, %249
  %idxprom103.i = sext i32 %250 to i64
  %arrayidx104.i = getelementptr inbounds double* %colB0.0.lcssa.i222, i64 %idxprom103.i
  %251 = load double* %arrayidx104.i, align 8, !tbaa !4
  %sub105.i = fsub double %251, %mul102.i
  store double %sub105.i, double* %arrayidx104.i, align 8, !tbaa !4
  %inc107.i = add nsw i32 %ii.2192.i, 1
  %indvars.iv.next218.i = add i64 %indvars.iv217.i, 1
  %exitcond219.i = icmp eq i32 %inc107.i, %246
  br i1 %exitcond219.i, label %for.cond85.outer.i, label %for.body97.i

sw.bb19:                                          ; preds = %sw.bb
  %252 = bitcast double** %entriesA.i239 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %252) #4
  %253 = bitcast double** %entriesB.i240 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %253) #4
  %254 = bitcast i32* %inc1.i241 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %254) #4
  %255 = bitcast i32* %inc2.i242 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %255) #4
  %256 = bitcast i32* %ncolB.i243 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %256) #4
  %257 = bitcast i32* %nrowA.i244 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %257) #4
  %258 = bitcast i32* %nrowB.i245 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %258) #4
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i244, double** %entriesA.i239) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i245, i32* %ncolB.i243, i32* %inc1.i241, i32* %inc2.i242, double** %entriesB.i240) #5
  %259 = load double** %entriesB.i240, align 8, !tbaa !0
  %260 = load i32* %ncolB.i243, align 4, !tbaa !3
  %sub89.i = add nsw i32 %260, -2
  %cmp90.i246 = icmp sgt i32 %sub89.i, 0
  br i1 %cmp90.i246, label %for.body.lr.ph.i250, label %for.end17.i

for.body.lr.ph.i250:                              ; preds = %sw.bb19
  %261 = load i32* %nrowB.i245, align 4, !tbaa !3
  %idx.ext.i247 = sext i32 %261 to i64
  %add.ptr.sum.i248 = shl nsw i64 %idx.ext.i247, 1
  %262 = load i32* %nrowA.i244, align 4, !tbaa !3
  %cmp487.i = icmp sgt i32 %262, 0
  %add.ptr2.sum.i249 = add i64 %add.ptr.sum.i248, %idx.ext.i247
  %263 = load double** %entriesA.i239, align 8, !tbaa !0
  br label %for.body.i251

for.body.i251:                                    ; preds = %for.end.i259, %for.body.lr.ph.i250
  %jcolB.093.i = phi i32 [ 0, %for.body.lr.ph.i250 ], [ %add.i257, %for.end.i259 ]
  %colB0.091.i = phi double* [ %259, %for.body.lr.ph.i250 ], [ %add.ptr15.i, %for.end.i259 ]
  br i1 %cmp487.i, label %for.body5.i256, label %for.end.i259

for.body5.i256:                                   ; preds = %for.body.i251, %for.body5.i256
  %indvars.iv99.i = phi i64 [ %indvars.iv.next100.i, %for.body5.i256 ], [ 0, %for.body.i251 ]
  %arrayidx.i252 = getelementptr inbounds double* %263, i64 %indvars.iv99.i
  %264 = load double* %arrayidx.i252, align 8, !tbaa !4
  %arrayidx7.i = getelementptr inbounds double* %colB0.091.i, i64 %indvars.iv99.i
  %265 = load double* %arrayidx7.i, align 8, !tbaa !4
  %div.i = fdiv double %265, %264
  store double %div.i, double* %arrayidx7.i, align 8, !tbaa !4
  %add.ptr.sum80.i = add i64 %indvars.iv99.i, %idx.ext.i247
  %arrayidx9.i253 = getelementptr inbounds double* %colB0.091.i, i64 %add.ptr.sum80.i
  %266 = load double* %arrayidx9.i253, align 8, !tbaa !4
  %div10.i = fdiv double %266, %264
  store double %div10.i, double* %arrayidx9.i253, align 8, !tbaa !4
  %add.ptr2.sum81.i = add i64 %indvars.iv99.i, %add.ptr.sum.i248
  %arrayidx12.i254 = getelementptr inbounds double* %colB0.091.i, i64 %add.ptr2.sum81.i
  %267 = load double* %arrayidx12.i254, align 8, !tbaa !4
  %div13.i = fdiv double %267, %264
  store double %div13.i, double* %arrayidx12.i254, align 8, !tbaa !4
  %indvars.iv.next100.i = add i64 %indvars.iv99.i, 1
  %lftr.wideiv1142 = trunc i64 %indvars.iv.next100.i to i32
  %exitcond1143 = icmp eq i32 %lftr.wideiv1142, %262
  br i1 %exitcond1143, label %for.end.i259, label %for.body5.i256

for.end.i259:                                     ; preds = %for.body5.i256, %for.body.i251
  %add.ptr15.i = getelementptr inbounds double* %colB0.091.i, i64 %add.ptr2.sum.i249
  %add.i257 = add nsw i32 %jcolB.093.i, 3
  %cmp.i258 = icmp slt i32 %add.i257, %sub89.i
  br i1 %cmp.i258, label %for.body.i251, label %for.end17.i

for.end17.i:                                      ; preds = %for.end.i259, %sw.bb19
  %jcolB.0.lcssa.i260 = phi i32 [ 0, %sw.bb19 ], [ %add.i257, %for.end.i259 ]
  %colB0.0.lcssa.i261 = phi double* [ %259, %sw.bb19 ], [ %add.ptr15.i, %for.end.i259 ]
  %cmp19.i = icmp eq i32 %jcolB.0.lcssa.i260, %sub89.i
  br i1 %cmp19.i, label %if.then.i262, label %if.else.i272

if.then.i262:                                     ; preds = %for.end17.i
  %268 = load i32* %nrowB.i245, align 4, !tbaa !3
  %idx.ext20.i = sext i32 %268 to i64
  %269 = load i32* %nrowA.i244, align 4, !tbaa !3
  %cmp2382.i = icmp sgt i32 %269, 0
  br i1 %cmp2382.i, label %for.body24.lr.ph.i263, label %sw.epilog41

for.body24.lr.ph.i263:                            ; preds = %if.then.i262
  %270 = load double** %entriesA.i239, align 8, !tbaa !0
  br label %for.body24.i270

for.body24.i270:                                  ; preds = %for.body24.i270, %for.body24.lr.ph.i263
  %indvars.iv.i264 = phi i64 [ 0, %for.body24.lr.ph.i263 ], [ %indvars.iv.next.i268, %for.body24.i270 ]
  %arrayidx26.i265 = getelementptr inbounds double* %270, i64 %indvars.iv.i264
  %271 = load double* %arrayidx26.i265, align 8, !tbaa !4
  %arrayidx28.i266 = getelementptr inbounds double* %colB0.0.lcssa.i261, i64 %indvars.iv.i264
  %272 = load double* %arrayidx28.i266, align 8, !tbaa !4
  %div29.i = fdiv double %272, %271
  store double %div29.i, double* %arrayidx28.i266, align 8, !tbaa !4
  %add.ptr21.sum.i = add i64 %indvars.iv.i264, %idx.ext20.i
  %arrayidx31.i267 = getelementptr inbounds double* %colB0.0.lcssa.i261, i64 %add.ptr21.sum.i
  %273 = load double* %arrayidx31.i267, align 8, !tbaa !4
  %div32.i = fdiv double %273, %271
  store double %div32.i, double* %arrayidx31.i267, align 8, !tbaa !4
  %indvars.iv.next.i268 = add i64 %indvars.iv.i264, 1
  %lftr.wideiv1138 = trunc i64 %indvars.iv.next.i268 to i32
  %exitcond1139 = icmp eq i32 %lftr.wideiv1138, %269
  br i1 %exitcond1139, label %sw.epilog41, label %for.body24.i270

if.else.i272:                                     ; preds = %for.end17.i
  %sub36.i271 = add nsw i32 %260, -1
  %cmp37.i = icmp eq i32 %jcolB.0.lcssa.i260, %sub36.i271
  br i1 %cmp37.i, label %for.cond39.preheader.i, label %sw.epilog41

for.cond39.preheader.i:                           ; preds = %if.else.i272
  %274 = load i32* %nrowA.i244, align 4, !tbaa !3
  %cmp4085.i = icmp sgt i32 %274, 0
  br i1 %cmp4085.i, label %for.body41.lr.ph.i, label %sw.epilog41

for.body41.lr.ph.i:                               ; preds = %for.cond39.preheader.i
  %275 = load double** %entriesA.i239, align 8, !tbaa !0
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.body41.i, %for.body41.lr.ph.i
  %indvars.iv97.i = phi i64 [ 0, %for.body41.lr.ph.i ], [ %indvars.iv.next98.i, %for.body41.i ]
  %arrayidx43.i = getelementptr inbounds double* %275, i64 %indvars.iv97.i
  %276 = load double* %arrayidx43.i, align 8, !tbaa !4
  %arrayidx45.i = getelementptr inbounds double* %colB0.0.lcssa.i261, i64 %indvars.iv97.i
  %277 = load double* %arrayidx45.i, align 8, !tbaa !4
  %div46.i = fdiv double %277, %276
  store double %div46.i, double* %arrayidx45.i, align 8, !tbaa !4
  %indvars.iv.next98.i = add i64 %indvars.iv97.i, 1
  %lftr.wideiv1140 = trunc i64 %indvars.iv.next98.i to i32
  %exitcond1141 = icmp eq i32 %lftr.wideiv1140, %274
  br i1 %exitcond1141, label %sw.epilog41, label %for.body41.i

sw.bb20:                                          ; preds = %sw.bb
  %278 = bitcast double** %entriesA.i273 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %278) #4
  %279 = bitcast double** %entriesB.i274 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %279) #4
  %280 = bitcast i32* %inc1.i275 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %280) #4
  %281 = bitcast i32* %inc2.i276 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %281) #4
  %282 = bitcast i32* %ncolB.i277 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %282) #4
  %283 = bitcast i32* %nentA.i278 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %283) #4
  %284 = bitcast i32* %nrowA.i279 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %284) #4
  %285 = bitcast i32* %nrowB.i280 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %285) #4
  %286 = bitcast i32** %pivotsizes.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %286) #4
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i279, i32* %nentA.i278, i32** %pivotsizes.i, double** %entriesA.i273) #5
  %287 = load i32* %nrowA.i279, align 4, !tbaa !3
  %cmp455.i = icmp sgt i32 %287, 0
  br i1 %cmp455.i, label %for.body.lr.ph.i281, label %for.end.i290

for.body.lr.ph.i281:                              ; preds = %sw.bb20
  %288 = load i32** %pivotsizes.i, align 8, !tbaa !0
  br label %for.body.i283

for.body.i283:                                    ; preds = %if.end.i289, %for.body.lr.ph.i281
  %indvars.iv465.i = phi i64 [ 0, %for.body.lr.ph.i281 ], [ %indvars.iv.next466.i, %if.end.i289 ]
  %irowA.0457.i = phi i32 [ 0, %for.body.lr.ph.i281 ], [ %add.i286, %if.end.i289 ]
  %ipivot.0456.i = phi i32 [ 0, %for.body.lr.ph.i281 ], [ %inc.i287, %if.end.i289 ]
  %arrayidx.i282 = getelementptr inbounds i32* %288, i64 %indvars.iv465.i
  %289 = load i32* %arrayidx.i282, align 4, !tbaa !3
  %.off.i = add i32 %289, -1
  %290 = icmp ugt i32 %.off.i, 1
  br i1 %290, label %if.then.i285, label %if.end.i289

if.then.i285:                                     ; preds = %for.body.i283
  %291 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call.i284 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %291, i8* getelementptr inbounds ([102 x i8]* @.str6, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 %ipivot.0456.i, i32 %289) #5
  call void @exit(i32 -1) #6
  unreachable

if.end.i289:                                      ; preds = %for.body.i283
  %add.i286 = add nsw i32 %289, %irowA.0457.i
  %indvars.iv.next466.i = add i64 %indvars.iv465.i, 1
  %inc.i287 = add nsw i32 %ipivot.0456.i, 1
  %cmp.i288 = icmp slt i32 %add.i286, %287
  br i1 %cmp.i288, label %for.body.i283, label %for.end.i290

for.end.i290:                                     ; preds = %if.end.i289, %sw.bb20
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i280, i32* %ncolB.i277, i32* %inc1.i275, i32* %inc2.i276, double** %entriesB.i274) #5
  %292 = load double** %entriesB.i274, align 8, !tbaa !0
  %293 = load i32* %ncolB.i277, align 4, !tbaa !3
  %sub445.i = add nsw i32 %293, -2
  %cmp4446.i = icmp sgt i32 %sub445.i, 0
  br i1 %cmp4446.i, label %for.body5.lr.ph.i, label %for.end107.i

for.body5.lr.ph.i:                                ; preds = %for.end.i290
  %294 = load i32* %nrowB.i280, align 4, !tbaa !3
  %idx.ext.i291 = sext i32 %294 to i64
  %add.ptr.sum.i292 = shl nsw i64 %idx.ext.i291, 1
  %295 = load i32* %nrowA.i279, align 4, !tbaa !3
  %cmp9441.i = icmp sgt i32 %295, 0
  %add.ptr7.sum.i = add i64 %add.ptr.sum.i292, %idx.ext.i291
  %296 = load i32** %pivotsizes.i, align 8, !tbaa !0
  %297 = load double** %entriesA.i273, align 8, !tbaa !0
  br label %for.body5.i293

for.body5.i293:                                   ; preds = %for.end102.i, %for.body5.lr.ph.i
  %jcolB.0449.i = phi i32 [ 0, %for.body5.lr.ph.i ], [ %add106.i, %for.end102.i ]
  %colB0.0447.i = phi double* [ %292, %for.body5.lr.ph.i ], [ %add.ptr104.i, %for.end102.i ]
  br i1 %cmp9441.i, label %for.body10.i, label %for.end102.i

for.body10.i:                                     ; preds = %for.body5.i293, %if.end98.i
  %indvars.iv460.i = phi i64 [ %indvars.iv.next461.i, %if.end98.i ], [ 0, %for.body5.i293 ]
  %kk.0444.i = phi i32 [ %kk.1.i, %if.end98.i ], [ 0, %for.body5.i293 ]
  %irowA.1443.i = phi i32 [ %add99.i, %if.end98.i ], [ 0, %for.body5.i293 ]
  %arrayidx12.i294 = getelementptr inbounds i32* %296, i64 %indvars.iv460.i
  %298 = load i32* %arrayidx12.i294, align 4, !tbaa !3
  switch i32 %298, label %if.end98.i [
    i32 1, label %if.then14.i
    i32 2, label %if.then27.i
  ]

if.then14.i:                                      ; preds = %for.body10.i
  %inc15.i = add nsw i32 %kk.0444.i, 1
  %idxprom16.i = sext i32 %kk.0444.i to i64
  %arrayidx17.i295 = getelementptr inbounds double* %297, i64 %idxprom16.i
  %299 = load double* %arrayidx17.i295, align 8, !tbaa !4
  %idxprom18.i = sext i32 %irowA.1443.i to i64
  %arrayidx19.i296 = getelementptr inbounds double* %colB0.0447.i, i64 %idxprom18.i
  %300 = load double* %arrayidx19.i296, align 8, !tbaa !4
  %div.i297 = fdiv double %300, %299
  store double %div.i297, double* %arrayidx19.i296, align 8, !tbaa !4
  %add.ptr.sum430.i = add i64 %idxprom18.i, %idx.ext.i291
  %arrayidx21.i298 = getelementptr inbounds double* %colB0.0447.i, i64 %add.ptr.sum430.i
  %301 = load double* %arrayidx21.i298, align 8, !tbaa !4
  %div22.i = fdiv double %301, %299
  store double %div22.i, double* %arrayidx21.i298, align 8, !tbaa !4
  %add.ptr7.sum431.i = add i64 %idxprom18.i, %add.ptr.sum.i292
  %arrayidx24.i299 = getelementptr inbounds double* %colB0.0447.i, i64 %add.ptr7.sum431.i
  %302 = load double* %arrayidx24.i299, align 8, !tbaa !4
  %div25.i = fdiv double %302, %299
  store double %div25.i, double* %arrayidx24.i299, align 8, !tbaa !4
  br label %if.end98.i

if.then27.i:                                      ; preds = %for.body10.i
  %inc28.i = add nsw i32 %kk.0444.i, 1
  %idxprom29.i = sext i32 %kk.0444.i to i64
  %arrayidx30.i300 = getelementptr inbounds double* %297, i64 %idxprom29.i
  %303 = load double* %arrayidx30.i300, align 8, !tbaa !4
  %inc31.i = add nsw i32 %kk.0444.i, 2
  %idxprom32.i = sext i32 %inc28.i to i64
  %arrayidx33.i301 = getelementptr inbounds double* %297, i64 %idxprom32.i
  %304 = load double* %arrayidx33.i301, align 8, !tbaa !4
  %inc34.i = add nsw i32 %kk.0444.i, 3
  %idxprom35.i = sext i32 %inc31.i to i64
  %arrayidx36.i302 = getelementptr inbounds double* %297, i64 %idxprom35.i
  %305 = load double* %arrayidx36.i302, align 8, !tbaa !4
  %mul.i303 = fmul double %303, %305
  %mul37.i = fmul double %304, %304
  %sub38.i = fsub double %mul.i303, %mul37.i
  %div39.i = fdiv double 1.000000e+00, %sub38.i
  %idxprom40.i = sext i32 %irowA.1443.i to i64
  %arrayidx41.i = getelementptr inbounds double* %colB0.0447.i, i64 %idxprom40.i
  %306 = load double* %arrayidx41.i, align 8, !tbaa !4
  %add42.i = add nsw i32 %irowA.1443.i, 1
  %idxprom43.i = sext i32 %add42.i to i64
  %arrayidx44.i = getelementptr inbounds double* %colB0.0447.i, i64 %idxprom43.i
  %307 = load double* %arrayidx44.i, align 8, !tbaa !4
  %mul45.i = fmul double %305, %306
  %mul46.i = fmul double %304, %307
  %sub47.i = fsub double %mul45.i, %mul46.i
  %mul48.i = fmul double %div39.i, %sub47.i
  store double %mul48.i, double* %arrayidx41.i, align 8, !tbaa !4
  %sub51.i = fsub double -0.000000e+00, %304
  %mul52.i = fmul double %306, %sub51.i
  %mul53.i = fmul double %303, %307
  %add54.i = fadd double %mul52.i, %mul53.i
  %mul55.i = fmul double %div39.i, %add54.i
  store double %mul55.i, double* %arrayidx44.i, align 8, !tbaa !4
  %add.ptr.sum426.i = add i64 %idxprom40.i, %idx.ext.i291
  %arrayidx60.i304 = getelementptr inbounds double* %colB0.0447.i, i64 %add.ptr.sum426.i
  %308 = load double* %arrayidx60.i304, align 8, !tbaa !4
  %add.ptr.sum427.i = add i64 %idxprom43.i, %idx.ext.i291
  %arrayidx63.i = getelementptr inbounds double* %colB0.0447.i, i64 %add.ptr.sum427.i
  %309 = load double* %arrayidx63.i, align 8, !tbaa !4
  %mul64.i = fmul double %305, %308
  %mul65.i305 = fmul double %304, %309
  %sub66.i = fsub double %mul64.i, %mul65.i305
  %mul67.i306 = fmul double %div39.i, %sub66.i
  store double %mul67.i306, double* %arrayidx60.i304, align 8, !tbaa !4
  %mul71.i307 = fmul double %308, %sub51.i
  %mul72.i = fmul double %303, %309
  %add73.i = fadd double %mul71.i307, %mul72.i
  %mul74.i = fmul double %div39.i, %add73.i
  store double %mul74.i, double* %arrayidx63.i, align 8, !tbaa !4
  %add.ptr7.sum428.i = add i64 %idxprom40.i, %add.ptr.sum.i292
  %arrayidx79.i308 = getelementptr inbounds double* %colB0.0447.i, i64 %add.ptr7.sum428.i
  %310 = load double* %arrayidx79.i308, align 8, !tbaa !4
  %add.ptr7.sum429.i = add i64 %idxprom43.i, %add.ptr.sum.i292
  %arrayidx82.i309 = getelementptr inbounds double* %colB0.0447.i, i64 %add.ptr7.sum429.i
  %311 = load double* %arrayidx82.i309, align 8, !tbaa !4
  %mul83.i = fmul double %305, %310
  %mul84.i = fmul double %304, %311
  %sub85.i = fsub double %mul83.i, %mul84.i
  %mul86.i = fmul double %div39.i, %sub85.i
  store double %mul86.i, double* %arrayidx79.i308, align 8, !tbaa !4
  %mul90.i = fmul double %310, %sub51.i
  %mul91.i = fmul double %303, %311
  %add92.i = fadd double %mul90.i, %mul91.i
  %mul93.i = fmul double %div39.i, %add92.i
  store double %mul93.i, double* %arrayidx82.i309, align 8, !tbaa !4
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.then27.i, %if.then14.i, %for.body10.i
  %kk.1.i = phi i32 [ %inc15.i, %if.then14.i ], [ %inc34.i, %if.then27.i ], [ %kk.0444.i, %for.body10.i ]
  %add99.i = add nsw i32 %298, %irowA.1443.i
  %indvars.iv.next461.i = add i64 %indvars.iv460.i, 1
  %cmp9.i = icmp slt i32 %add99.i, %295
  br i1 %cmp9.i, label %for.body10.i, label %for.end102.i

for.end102.i:                                     ; preds = %if.end98.i, %for.body5.i293
  %add.ptr104.i = getelementptr inbounds double* %colB0.0447.i, i64 %add.ptr7.sum.i
  %add106.i = add nsw i32 %jcolB.0449.i, 3
  %cmp4.i310 = icmp slt i32 %add106.i, %sub445.i
  br i1 %cmp4.i310, label %for.body5.i293, label %for.end107.i

for.end107.i:                                     ; preds = %for.end102.i, %for.end.i290
  %jcolB.0.lcssa.i311 = phi i32 [ 0, %for.end.i290 ], [ %add106.i, %for.end102.i ]
  %colB0.0.lcssa.i312 = phi double* [ %292, %for.end.i290 ], [ %add.ptr104.i, %for.end102.i ]
  %cmp109.i = icmp eq i32 %jcolB.0.lcssa.i311, %sub445.i
  br i1 %cmp109.i, label %if.then110.i, label %if.else189.i

if.then110.i:                                     ; preds = %for.end107.i
  %312 = load i32* %nrowB.i280, align 4, !tbaa !3
  %idx.ext111.i = sext i32 %312 to i64
  %313 = load i32* %nrowA.i279, align 4, !tbaa !3
  %cmp114432.i = icmp sgt i32 %313, 0
  br i1 %cmp114432.i, label %for.body115.lr.ph.i, label %sw.epilog41

for.body115.lr.ph.i:                              ; preds = %if.then110.i
  %314 = load i32** %pivotsizes.i, align 8, !tbaa !0
  %315 = load double** %entriesA.i273, align 8, !tbaa !0
  br label %for.body115.i

for.body115.i:                                    ; preds = %if.end184.i, %for.body115.lr.ph.i
  %indvars.iv.i313 = phi i64 [ 0, %for.body115.lr.ph.i ], [ %indvars.iv.next.i315, %if.end184.i ]
  %kk.2435.i = phi i32 [ 0, %for.body115.lr.ph.i ], [ %kk.3.i, %if.end184.i ]
  %irowA.2434.i = phi i32 [ 0, %for.body115.lr.ph.i ], [ %add185.i, %if.end184.i ]
  %arrayidx117.i = getelementptr inbounds i32* %314, i64 %indvars.iv.i313
  %316 = load i32* %arrayidx117.i, align 4, !tbaa !3
  switch i32 %316, label %if.end184.i [
    i32 1, label %if.then119.i
    i32 2, label %if.then131.i
  ]

if.then119.i:                                     ; preds = %for.body115.i
  %inc120.i = add nsw i32 %kk.2435.i, 1
  %idxprom121.i = sext i32 %kk.2435.i to i64
  %arrayidx122.i314 = getelementptr inbounds double* %315, i64 %idxprom121.i
  %317 = load double* %arrayidx122.i314, align 8, !tbaa !4
  %idxprom123.i = sext i32 %irowA.2434.i to i64
  %arrayidx124.i = getelementptr inbounds double* %colB0.0.lcssa.i312, i64 %idxprom123.i
  %318 = load double* %arrayidx124.i, align 8, !tbaa !4
  %div125.i = fdiv double %318, %317
  store double %div125.i, double* %arrayidx124.i, align 8, !tbaa !4
  %add.ptr112.sum425.i = add i64 %idxprom123.i, %idx.ext111.i
  %arrayidx127.i = getelementptr inbounds double* %colB0.0.lcssa.i312, i64 %add.ptr112.sum425.i
  %319 = load double* %arrayidx127.i, align 8, !tbaa !4
  %div128.i = fdiv double %319, %317
  store double %div128.i, double* %arrayidx127.i, align 8, !tbaa !4
  br label %if.end184.i

if.then131.i:                                     ; preds = %for.body115.i
  %inc132.i = add nsw i32 %kk.2435.i, 1
  %idxprom133.i = sext i32 %kk.2435.i to i64
  %arrayidx134.i = getelementptr inbounds double* %315, i64 %idxprom133.i
  %320 = load double* %arrayidx134.i, align 8, !tbaa !4
  %inc135.i = add nsw i32 %kk.2435.i, 2
  %idxprom136.i = sext i32 %inc132.i to i64
  %arrayidx137.i = getelementptr inbounds double* %315, i64 %idxprom136.i
  %321 = load double* %arrayidx137.i, align 8, !tbaa !4
  %inc138.i = add nsw i32 %kk.2435.i, 3
  %idxprom139.i = sext i32 %inc135.i to i64
  %arrayidx140.i = getelementptr inbounds double* %315, i64 %idxprom139.i
  %322 = load double* %arrayidx140.i, align 8, !tbaa !4
  %mul141.i = fmul double %320, %322
  %mul142.i = fmul double %321, %321
  %sub143.i = fsub double %mul141.i, %mul142.i
  %div144.i = fdiv double 1.000000e+00, %sub143.i
  %idxprom145.i = sext i32 %irowA.2434.i to i64
  %arrayidx146.i = getelementptr inbounds double* %colB0.0.lcssa.i312, i64 %idxprom145.i
  %323 = load double* %arrayidx146.i, align 8, !tbaa !4
  %add147.i = add nsw i32 %irowA.2434.i, 1
  %idxprom148.i = sext i32 %add147.i to i64
  %arrayidx149.i = getelementptr inbounds double* %colB0.0.lcssa.i312, i64 %idxprom148.i
  %324 = load double* %arrayidx149.i, align 8, !tbaa !4
  %mul150.i = fmul double %322, %323
  %mul151.i = fmul double %321, %324
  %sub152.i = fsub double %mul150.i, %mul151.i
  %mul153.i = fmul double %div144.i, %sub152.i
  store double %mul153.i, double* %arrayidx146.i, align 8, !tbaa !4
  %sub156.i = fsub double -0.000000e+00, %321
  %mul157.i = fmul double %323, %sub156.i
  %mul158.i = fmul double %320, %324
  %add159.i = fadd double %mul157.i, %mul158.i
  %mul160.i = fmul double %div144.i, %add159.i
  store double %mul160.i, double* %arrayidx149.i, align 8, !tbaa !4
  %add.ptr112.sum.i = add i64 %idxprom145.i, %idx.ext111.i
  %arrayidx165.i = getelementptr inbounds double* %colB0.0.lcssa.i312, i64 %add.ptr112.sum.i
  %325 = load double* %arrayidx165.i, align 8, !tbaa !4
  %add.ptr112.sum424.i = add i64 %idxprom148.i, %idx.ext111.i
  %arrayidx168.i = getelementptr inbounds double* %colB0.0.lcssa.i312, i64 %add.ptr112.sum424.i
  %326 = load double* %arrayidx168.i, align 8, !tbaa !4
  %mul169.i = fmul double %322, %325
  %mul170.i = fmul double %321, %326
  %sub171.i = fsub double %mul169.i, %mul170.i
  %mul172.i = fmul double %div144.i, %sub171.i
  store double %mul172.i, double* %arrayidx165.i, align 8, !tbaa !4
  %mul176.i = fmul double %325, %sub156.i
  %mul177.i = fmul double %320, %326
  %add178.i = fadd double %mul176.i, %mul177.i
  %mul179.i = fmul double %div144.i, %add178.i
  store double %mul179.i, double* %arrayidx168.i, align 8, !tbaa !4
  br label %if.end184.i

if.end184.i:                                      ; preds = %if.then131.i, %if.then119.i, %for.body115.i
  %kk.3.i = phi i32 [ %inc120.i, %if.then119.i ], [ %inc138.i, %if.then131.i ], [ %kk.2435.i, %for.body115.i ]
  %add185.i = add nsw i32 %316, %irowA.2434.i
  %indvars.iv.next.i315 = add i64 %indvars.iv.i313, 1
  %cmp114.i = icmp slt i32 %add185.i, %313
  br i1 %cmp114.i, label %for.body115.i, label %sw.epilog41

if.else189.i:                                     ; preds = %for.end107.i
  %sub190.i = add nsw i32 %293, -1
  %cmp191.i = icmp eq i32 %jcolB.0.lcssa.i311, %sub190.i
  br i1 %cmp191.i, label %for.cond193.preheader.i, label %sw.epilog41

for.cond193.preheader.i:                          ; preds = %if.else189.i
  %327 = load i32* %nrowA.i279, align 4, !tbaa !3
  %cmp194437.i = icmp sgt i32 %327, 0
  br i1 %cmp194437.i, label %for.body195.lr.ph.i, label %sw.epilog41

for.body195.lr.ph.i:                              ; preds = %for.cond193.preheader.i
  %328 = load i32** %pivotsizes.i, align 8, !tbaa !0
  %329 = load double** %entriesA.i273, align 8, !tbaa !0
  br label %for.body195.i

for.body195.i:                                    ; preds = %if.end242.i, %for.body195.lr.ph.i
  %indvars.iv458.i = phi i64 [ 0, %for.body195.lr.ph.i ], [ %indvars.iv.next459.i, %if.end242.i ]
  %kk.4440.i = phi i32 [ 0, %for.body195.lr.ph.i ], [ %kk.5.i316, %if.end242.i ]
  %irowA.3439.i = phi i32 [ 0, %for.body195.lr.ph.i ], [ %add243.i, %if.end242.i ]
  %arrayidx197.i = getelementptr inbounds i32* %328, i64 %indvars.iv458.i
  %330 = load i32* %arrayidx197.i, align 4, !tbaa !3
  switch i32 %330, label %if.end242.i [
    i32 1, label %if.then199.i
    i32 2, label %if.then208.i
  ]

if.then199.i:                                     ; preds = %for.body195.i
  %inc200.i = add nsw i32 %kk.4440.i, 1
  %idxprom201.i = sext i32 %kk.4440.i to i64
  %arrayidx202.i = getelementptr inbounds double* %329, i64 %idxprom201.i
  %331 = load double* %arrayidx202.i, align 8, !tbaa !4
  %idxprom203.i = sext i32 %irowA.3439.i to i64
  %arrayidx204.i = getelementptr inbounds double* %colB0.0.lcssa.i312, i64 %idxprom203.i
  %332 = load double* %arrayidx204.i, align 8, !tbaa !4
  %div205.i = fdiv double %332, %331
  store double %div205.i, double* %arrayidx204.i, align 8, !tbaa !4
  br label %if.end242.i

if.then208.i:                                     ; preds = %for.body195.i
  %inc209.i = add nsw i32 %kk.4440.i, 1
  %idxprom210.i = sext i32 %kk.4440.i to i64
  %arrayidx211.i = getelementptr inbounds double* %329, i64 %idxprom210.i
  %333 = load double* %arrayidx211.i, align 8, !tbaa !4
  %inc212.i = add nsw i32 %kk.4440.i, 2
  %idxprom213.i = sext i32 %inc209.i to i64
  %arrayidx214.i = getelementptr inbounds double* %329, i64 %idxprom213.i
  %334 = load double* %arrayidx214.i, align 8, !tbaa !4
  %inc215.i = add nsw i32 %kk.4440.i, 3
  %idxprom216.i = sext i32 %inc212.i to i64
  %arrayidx217.i = getelementptr inbounds double* %329, i64 %idxprom216.i
  %335 = load double* %arrayidx217.i, align 8, !tbaa !4
  %mul218.i = fmul double %333, %335
  %mul219.i = fmul double %334, %334
  %sub220.i = fsub double %mul218.i, %mul219.i
  %div221.i = fdiv double 1.000000e+00, %sub220.i
  %idxprom222.i = sext i32 %irowA.3439.i to i64
  %arrayidx223.i = getelementptr inbounds double* %colB0.0.lcssa.i312, i64 %idxprom222.i
  %336 = load double* %arrayidx223.i, align 8, !tbaa !4
  %add224.i = add nsw i32 %irowA.3439.i, 1
  %idxprom225.i = sext i32 %add224.i to i64
  %arrayidx226.i = getelementptr inbounds double* %colB0.0.lcssa.i312, i64 %idxprom225.i
  %337 = load double* %arrayidx226.i, align 8, !tbaa !4
  %mul227.i = fmul double %335, %336
  %mul228.i = fmul double %334, %337
  %sub229.i = fsub double %mul227.i, %mul228.i
  %mul230.i = fmul double %div221.i, %sub229.i
  store double %mul230.i, double* %arrayidx223.i, align 8, !tbaa !4
  %338 = fmul double %334, %336
  %mul235.i = fmul double %333, %337
  %add236.i = fsub double %mul235.i, %338
  %mul237.i = fmul double %div221.i, %add236.i
  store double %mul237.i, double* %arrayidx226.i, align 8, !tbaa !4
  br label %if.end242.i

if.end242.i:                                      ; preds = %if.then208.i, %if.then199.i, %for.body195.i
  %kk.5.i316 = phi i32 [ %inc200.i, %if.then199.i ], [ %inc215.i, %if.then208.i ], [ %kk.4440.i, %for.body195.i ]
  %add243.i = add nsw i32 %330, %irowA.3439.i
  %indvars.iv.next459.i = add i64 %indvars.iv458.i, 1
  %cmp194.i = icmp slt i32 %add243.i, %327
  br i1 %cmp194.i, label %for.body195.i, label %sw.epilog41

sw.default:                                       ; preds = %sw.bb
  %339 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %339, i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 1) #5
  call void @exit(i32 -1) #6
  unreachable

sw.bb24:                                          ; preds = %if.end12
  %mode25 = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 1
  %340 = load i32* %mode25, align 4, !tbaa !3
  switch i32 %340, label %sw.default34 [
    i32 5, label %sw.bb26
    i32 2, label %sw.bb27
    i32 6, label %sw.bb28
    i32 3, label %sw.bb29
    i32 7, label %sw.bb30
    i32 8, label %sw.bb31
    i32 9, label %sw.bb32
  ]

sw.bb26:                                          ; preds = %sw.bb24
  %341 = bitcast double** %entriesA.i317 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %341) #4
  %342 = bitcast double** %entriesB.i318 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %342) #4
  %343 = bitcast i32* %inc1.i319 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %343) #4
  %344 = bitcast i32* %inc2.i320 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %344) #4
  %345 = bitcast i32* %ncolB.i321 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %345) #4
  %346 = bitcast i32* %nentA.i322 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %346) #4
  %347 = bitcast i32* %nrowA.i323 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %347) #4
  %348 = bitcast i32* %nrowB.i324 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %348) #4
  %349 = bitcast i32** %firstlocsA.i325 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %349) #4
  %350 = bitcast i32** %sizesA.i326 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %350) #4
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i323, i32* %nentA.i322, i32** %firstlocsA.i325, i32** %sizesA.i326, double** %entriesA.i317) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i324, i32* %ncolB.i321, i32* %inc1.i319, i32* %inc2.i320, double** %entriesB.i318) #5
  %351 = load double** %entriesB.i318, align 8, !tbaa !0
  %352 = load i32* %ncolB.i321, align 4, !tbaa !3
  %sub451.i = add nsw i32 %352, -2
  %cmp452.i = icmp sgt i32 %sub451.i, 0
  br i1 %cmp452.i, label %for.body.lr.ph.i330, label %for.end89.i

for.body.lr.ph.i330:                              ; preds = %sw.bb26
  %353 = load i32* %nrowB.i324, align 4, !tbaa !3
  %mul.i327 = shl nsw i32 %353, 1
  %idx.ext.i328 = sext i32 %mul.i327 to i64
  %add.ptr.sum.i329 = shl nsw i64 %idx.ext.i328, 1
  %354 = load i32* %nrowA.i323, align 4, !tbaa !3
  %cmp5447.i = icmp sgt i32 %354, 0
  %add.ptr3.sum.i = add i64 %add.ptr.sum.i329, %idx.ext.i328
  %355 = load i32** %sizesA.i326, align 8, !tbaa !0
  %356 = load i32** %firstlocsA.i325, align 8, !tbaa !0
  %357 = load double** %entriesA.i317, align 8, !tbaa !0
  br label %for.body.i331

for.body.i331:                                    ; preds = %for.end83.i, %for.body.lr.ph.i330
  %jcolB.0455.i = phi i32 [ 0, %for.body.lr.ph.i330 ], [ %add88.i, %for.end83.i ]
  %colB0.0453.i = phi double* [ %351, %for.body.lr.ph.i330 ], [ %add.ptr86.i, %for.end83.i ]
  br i1 %cmp5447.i, label %for.body6.i334, label %for.end83.i

for.body6.i334:                                   ; preds = %for.body.i331, %for.inc81.i
  %indvars.iv476.i = phi i64 [ %indvars.iv.next477.i, %for.inc81.i ], [ 0, %for.body.i331 ]
  %kk.0450.i = phi i32 [ %kk.2.i367, %for.inc81.i ], [ 0, %for.body.i331 ]
  %arrayidx.i332 = getelementptr inbounds i32* %355, i64 %indvars.iv476.i
  %358 = load i32* %arrayidx.i332, align 4, !tbaa !3
  %cmp7.i333 = icmp sgt i32 %358, 0
  br i1 %cmp7.i333, label %if.then.i338, label %for.inc81.i

if.then.i338:                                     ; preds = %for.body6.i334
  %arrayidx9.i335 = getelementptr inbounds i32* %356, i64 %indvars.iv476.i
  %359 = load i32* %arrayidx9.i335, align 4, !tbaa !3
  %add.i336 = add i32 %358, -1
  %sub12.i337 = add i32 %add.i336, %359
  %cmp14431.i = icmp sgt i32 %359, %sub12.i337
  br i1 %cmp14431.i, label %for.end.i366, label %for.body15.lr.ph.i

for.body15.lr.ph.i:                               ; preds = %if.then.i338
  %360 = sext i32 %kk.0450.i to i64
  %361 = sext i32 %359 to i64
  br label %for.body15.i

for.body15.i:                                     ; preds = %for.body15.i, %for.body15.lr.ph.i
  %indvars.iv473.i = phi i64 [ %indvars.iv.next474.i, %for.body15.i ], [ %361, %for.body15.lr.ph.i ]
  %indvars.iv471.i = phi i64 [ %indvars.iv.next472.i, %for.body15.i ], [ %360, %for.body15.lr.ph.i ]
  %rsum2.0437.i = phi double [ %add55.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %rsum1.0436.i = phi double [ %add47.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %rsum0.0435.i = phi double [ %add39.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %isum2.0434.i = phi double [ %add59.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %isum1.0433.i = phi double [ %add51.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %isum0.0432.i = phi double [ %add43.i, %for.body15.i ], [ 0.000000e+00, %for.body15.lr.ph.i ]
  %362 = trunc i64 %indvars.iv471.i to i32
  %mul16.i = shl nsw i32 %362, 1
  %add17397.i = or i32 %mul16.i, 1
  %idxprom18.i339 = sext i32 %mul16.i to i64
  %arrayidx19.i340 = getelementptr inbounds double* %357, i64 %idxprom18.i339
  %363 = load double* %arrayidx19.i340, align 8, !tbaa !4
  %idxprom20.i = sext i32 %add17397.i to i64
  %arrayidx21.i341 = getelementptr inbounds double* %357, i64 %idxprom20.i
  %364 = load double* %arrayidx21.i341, align 8, !tbaa !4
  %365 = trunc i64 %indvars.iv473.i to i32
  %mul22.i342 = shl nsw i32 %365, 1
  %add23398.i = or i32 %mul22.i342, 1
  %idxprom24.i = sext i32 %mul22.i342 to i64
  %arrayidx25.i343 = getelementptr inbounds double* %colB0.0453.i, i64 %idxprom24.i
  %366 = load double* %arrayidx25.i343, align 8, !tbaa !4
  %idxprom26.i = sext i32 %add23398.i to i64
  %arrayidx27.i344 = getelementptr inbounds double* %colB0.0453.i, i64 %idxprom26.i
  %367 = load double* %arrayidx27.i344, align 8, !tbaa !4
  %add.ptr.sum399.i = add i64 %idxprom24.i, %idx.ext.i328
  %arrayidx29.i345 = getelementptr inbounds double* %colB0.0453.i, i64 %add.ptr.sum399.i
  %368 = load double* %arrayidx29.i345, align 8, !tbaa !4
  %add.ptr.sum400.i = add i64 %idxprom26.i, %idx.ext.i328
  %arrayidx31.i346 = getelementptr inbounds double* %colB0.0453.i, i64 %add.ptr.sum400.i
  %369 = load double* %arrayidx31.i346, align 8, !tbaa !4
  %add.ptr3.sum401.i = add i64 %idxprom24.i, %add.ptr.sum.i329
  %arrayidx33.i347 = getelementptr inbounds double* %colB0.0453.i, i64 %add.ptr3.sum401.i
  %370 = load double* %arrayidx33.i347, align 8, !tbaa !4
  %add.ptr3.sum402.i = add i64 %idxprom26.i, %add.ptr.sum.i329
  %arrayidx35.i348 = getelementptr inbounds double* %colB0.0453.i, i64 %add.ptr3.sum402.i
  %371 = load double* %arrayidx35.i348, align 8, !tbaa !4
  %mul36.i = fmul double %363, %366
  %mul37.i349 = fmul double %364, %367
  %sub38.i350 = fsub double %mul36.i, %mul37.i349
  %add39.i = fadd double %rsum0.0435.i, %sub38.i350
  %mul40.i = fmul double %363, %367
  %mul41.i = fmul double %364, %366
  %add42.i351 = fadd double %mul41.i, %mul40.i
  %add43.i = fadd double %isum0.0432.i, %add42.i351
  %mul44.i = fmul double %363, %368
  %mul45.i352 = fmul double %364, %369
  %sub46.i = fsub double %mul44.i, %mul45.i352
  %add47.i = fadd double %rsum1.0436.i, %sub46.i
  %mul48.i353 = fmul double %363, %369
  %mul49.i = fmul double %364, %368
  %add50.i = fadd double %mul49.i, %mul48.i353
  %add51.i = fadd double %isum1.0433.i, %add50.i
  %mul52.i354 = fmul double %363, %370
  %mul53.i355 = fmul double %364, %371
  %sub54.i = fsub double %mul52.i354, %mul53.i355
  %add55.i = fadd double %rsum2.0437.i, %sub54.i
  %mul56.i = fmul double %363, %371
  %mul57.i = fmul double %364, %370
  %add58.i = fadd double %mul57.i, %mul56.i
  %add59.i = fadd double %isum2.0434.i, %add58.i
  %indvars.iv.next474.i = add i64 %indvars.iv473.i, 1
  %indvars.iv.next472.i = add i64 %indvars.iv471.i, 1
  %cmp14.i356 = icmp slt i32 %365, %sub12.i337
  br i1 %cmp14.i356, label %for.body15.i, label %for.cond13.for.end_crit_edge.i

for.cond13.for.end_crit_edge.i:                   ; preds = %for.body15.i
  %372 = add i32 %358, %kk.0450.i
  br label %for.end.i366

for.end.i366:                                     ; preds = %for.cond13.for.end_crit_edge.i, %if.then.i338
  %kk.1.lcssa.i357 = phi i32 [ %372, %for.cond13.for.end_crit_edge.i ], [ %kk.0450.i, %if.then.i338 ]
  %rsum2.0.lcssa.i = phi double [ %add55.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i338 ]
  %rsum1.0.lcssa.i = phi double [ %add47.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i338 ]
  %rsum0.0.lcssa.i = phi double [ %add39.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i338 ]
  %isum2.0.lcssa.i = phi double [ %add59.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i338 ]
  %isum1.0.lcssa.i = phi double [ %add51.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i338 ]
  %isum0.0.lcssa.i = phi double [ %add43.i, %for.cond13.for.end_crit_edge.i ], [ 0.000000e+00, %if.then.i338 ]
  %373 = trunc i64 %indvars.iv476.i to i32
  %mul61.i = shl nsw i32 %373, 1
  %add62392.i = or i32 %mul61.i, 1
  %idxprom63.i = sext i32 %mul61.i to i64
  %arrayidx64.i358 = getelementptr inbounds double* %colB0.0453.i, i64 %idxprom63.i
  %374 = load double* %arrayidx64.i358, align 8, !tbaa !4
  %sub65.i = fsub double %374, %rsum0.0.lcssa.i
  store double %sub65.i, double* %arrayidx64.i358, align 8, !tbaa !4
  %idxprom66.i359 = sext i32 %add62392.i to i64
  %arrayidx67.i360 = getelementptr inbounds double* %colB0.0453.i, i64 %idxprom66.i359
  %375 = load double* %arrayidx67.i360, align 8, !tbaa !4
  %sub68.i361 = fsub double %375, %isum0.0.lcssa.i
  store double %sub68.i361, double* %arrayidx67.i360, align 8, !tbaa !4
  %add.ptr.sum393.i = add i64 %idxprom63.i, %idx.ext.i328
  %arrayidx70.i362 = getelementptr inbounds double* %colB0.0453.i, i64 %add.ptr.sum393.i
  %376 = load double* %arrayidx70.i362, align 8, !tbaa !4
  %sub71.i = fsub double %376, %rsum1.0.lcssa.i
  store double %sub71.i, double* %arrayidx70.i362, align 8, !tbaa !4
  %add.ptr.sum394.i = add i64 %idxprom66.i359, %idx.ext.i328
  %arrayidx73.i = getelementptr inbounds double* %colB0.0453.i, i64 %add.ptr.sum394.i
  %377 = load double* %arrayidx73.i, align 8, !tbaa !4
  %sub74.i = fsub double %377, %isum1.0.lcssa.i
  store double %sub74.i, double* %arrayidx73.i, align 8, !tbaa !4
  %add.ptr3.sum395.i = add i64 %idxprom63.i, %add.ptr.sum.i329
  %arrayidx76.i363 = getelementptr inbounds double* %colB0.0453.i, i64 %add.ptr3.sum395.i
  %378 = load double* %arrayidx76.i363, align 8, !tbaa !4
  %sub77.i = fsub double %378, %rsum2.0.lcssa.i
  store double %sub77.i, double* %arrayidx76.i363, align 8, !tbaa !4
  %add.ptr3.sum396.i = add i64 %idxprom66.i359, %add.ptr.sum.i329
  %arrayidx79.i364 = getelementptr inbounds double* %colB0.0453.i, i64 %add.ptr3.sum396.i
  %379 = load double* %arrayidx79.i364, align 8, !tbaa !4
  %sub80.i365 = fsub double %379, %isum2.0.lcssa.i
  store double %sub80.i365, double* %arrayidx79.i364, align 8, !tbaa !4
  br label %for.inc81.i

for.inc81.i:                                      ; preds = %for.end.i366, %for.body6.i334
  %kk.2.i367 = phi i32 [ %kk.1.lcssa.i357, %for.end.i366 ], [ %kk.0450.i, %for.body6.i334 ]
  %indvars.iv.next477.i = add i64 %indvars.iv476.i, 1
  %lftr.wideiv1151 = trunc i64 %indvars.iv.next477.i to i32
  %exitcond1152 = icmp eq i32 %lftr.wideiv1151, %354
  br i1 %exitcond1152, label %for.end83.i, label %for.body6.i334

for.end83.i:                                      ; preds = %for.inc81.i, %for.body.i331
  %add.ptr86.i = getelementptr inbounds double* %colB0.0453.i, i64 %add.ptr3.sum.i
  %add88.i = add nsw i32 %jcolB.0455.i, 3
  %cmp.i369 = icmp slt i32 %add88.i, %sub451.i
  br i1 %cmp.i369, label %for.body.i331, label %for.end89.i

for.end89.i:                                      ; preds = %for.end83.i, %sw.bb26
  %jcolB.0.lcssa.i370 = phi i32 [ 0, %sw.bb26 ], [ %add88.i, %for.end83.i ]
  %colB0.0.lcssa.i371 = phi double* [ %351, %sw.bb26 ], [ %add.ptr86.i, %for.end83.i ]
  %cmp91.i372 = icmp eq i32 %jcolB.0.lcssa.i370, %sub451.i
  br i1 %cmp91.i372, label %if.then92.i, label %if.else.i387

if.then92.i:                                      ; preds = %for.end89.i
  %380 = load i32* %nrowB.i324, align 4, !tbaa !3
  %mul93.i373 = shl nsw i32 %380, 1
  %idx.ext94.i = sext i32 %mul93.i373 to i64
  %381 = load i32* %nrowA.i323, align 4, !tbaa !3
  %cmp97414.i = icmp sgt i32 %381, 0
  br i1 %cmp97414.i, label %for.body98.lr.ph.i, label %sw.epilog41

for.body98.lr.ph.i:                               ; preds = %if.then92.i
  %382 = load i32** %sizesA.i326, align 8, !tbaa !0
  %383 = load i32** %firstlocsA.i325, align 8, !tbaa !0
  %384 = load double** %entriesA.i317, align 8, !tbaa !0
  br label %for.body98.i

for.body98.i:                                     ; preds = %for.inc163.i, %for.body98.lr.ph.i
  %indvars.iv462.i = phi i64 [ 0, %for.body98.lr.ph.i ], [ %indvars.iv.next463.i, %for.inc163.i ]
  %kk.3417.i = phi i32 [ 0, %for.body98.lr.ph.i ], [ %kk.5.i386, %for.inc163.i ]
  %arrayidx100.i = getelementptr inbounds i32* %382, i64 %indvars.iv462.i
  %385 = load i32* %arrayidx100.i, align 4, !tbaa !3
  %cmp101.i = icmp sgt i32 %385, 0
  br i1 %cmp101.i, label %if.then102.i, label %for.inc163.i

if.then102.i:                                     ; preds = %for.body98.i
  %arrayidx104.i374 = getelementptr inbounds i32* %383, i64 %indvars.iv462.i
  %386 = load i32* %arrayidx104.i374, align 4, !tbaa !3
  %add107.i = add i32 %385, -1
  %sub108.i = add i32 %add107.i, %386
  %cmp110403.i = icmp sgt i32 %386, %sub108.i
  br i1 %cmp110403.i, label %for.end147.i, label %for.body111.lr.ph.i

for.body111.lr.ph.i:                              ; preds = %if.then102.i
  %387 = sext i32 %kk.3417.i to i64
  %388 = sext i32 %386 to i64
  br label %for.body111.i

for.body111.i:                                    ; preds = %for.body111.i, %for.body111.lr.ph.i
  %indvars.iv460.i375 = phi i64 [ %indvars.iv.next461.i382, %for.body111.i ], [ %388, %for.body111.lr.ph.i ]
  %indvars.iv.i376 = phi i64 [ %indvars.iv.next.i383, %for.body111.i ], [ %387, %for.body111.lr.ph.i ]
  %rsum1.1407.i = phi double [ %add139.i, %for.body111.i ], [ 0.000000e+00, %for.body111.lr.ph.i ]
  %rsum0.1406.i = phi double [ %add131.i, %for.body111.i ], [ 0.000000e+00, %for.body111.lr.ph.i ]
  %isum1.1405.i = phi double [ %add143.i, %for.body111.i ], [ 0.000000e+00, %for.body111.lr.ph.i ]
  %isum0.1404.i = phi double [ %add135.i, %for.body111.i ], [ 0.000000e+00, %for.body111.lr.ph.i ]
  %389 = trunc i64 %indvars.iv.i376 to i32
  %mul112.i377 = shl nsw i32 %389, 1
  %add113388.i = or i32 %mul112.i377, 1
  %idxprom114.i = sext i32 %mul112.i377 to i64
  %arrayidx115.i = getelementptr inbounds double* %384, i64 %idxprom114.i
  %390 = load double* %arrayidx115.i, align 8, !tbaa !4
  %idxprom116.i = sext i32 %add113388.i to i64
  %arrayidx117.i378 = getelementptr inbounds double* %384, i64 %idxprom116.i
  %391 = load double* %arrayidx117.i378, align 8, !tbaa !4
  %392 = trunc i64 %indvars.iv460.i375 to i32
  %mul118.i = shl nsw i32 %392, 1
  %add119389.i = or i32 %mul118.i, 1
  %idxprom120.i = sext i32 %mul118.i to i64
  %arrayidx121.i379 = getelementptr inbounds double* %colB0.0.lcssa.i371, i64 %idxprom120.i
  %393 = load double* %arrayidx121.i379, align 8, !tbaa !4
  %idxprom122.i = sext i32 %add119389.i to i64
  %arrayidx123.i = getelementptr inbounds double* %colB0.0.lcssa.i371, i64 %idxprom122.i
  %394 = load double* %arrayidx123.i, align 8, !tbaa !4
  %add.ptr95.sum390.i = add i64 %idxprom120.i, %idx.ext94.i
  %arrayidx125.i = getelementptr inbounds double* %colB0.0.lcssa.i371, i64 %add.ptr95.sum390.i
  %395 = load double* %arrayidx125.i, align 8, !tbaa !4
  %add.ptr95.sum391.i = add i64 %idxprom122.i, %idx.ext94.i
  %arrayidx127.i380 = getelementptr inbounds double* %colB0.0.lcssa.i371, i64 %add.ptr95.sum391.i
  %396 = load double* %arrayidx127.i380, align 8, !tbaa !4
  %mul128.i = fmul double %390, %393
  %mul129.i = fmul double %391, %394
  %sub130.i = fsub double %mul128.i, %mul129.i
  %add131.i = fadd double %rsum0.1406.i, %sub130.i
  %mul132.i = fmul double %390, %394
  %mul133.i = fmul double %391, %393
  %add134.i = fadd double %mul133.i, %mul132.i
  %add135.i = fadd double %isum0.1404.i, %add134.i
  %mul136.i = fmul double %390, %395
  %mul137.i = fmul double %391, %396
  %sub138.i = fsub double %mul136.i, %mul137.i
  %add139.i = fadd double %rsum1.1407.i, %sub138.i
  %mul140.i = fmul double %390, %396
  %mul141.i381 = fmul double %391, %395
  %add142.i = fadd double %mul141.i381, %mul140.i
  %add143.i = fadd double %isum1.1405.i, %add142.i
  %indvars.iv.next461.i382 = add i64 %indvars.iv460.i375, 1
  %indvars.iv.next.i383 = add i64 %indvars.iv.i376, 1
  %cmp110.i = icmp slt i32 %392, %sub108.i
  br i1 %cmp110.i, label %for.body111.i, label %for.cond109.for.end147_crit_edge.i

for.cond109.for.end147_crit_edge.i:               ; preds = %for.body111.i
  %397 = add i32 %385, %kk.3417.i
  br label %for.end147.i

for.end147.i:                                     ; preds = %for.cond109.for.end147_crit_edge.i, %if.then102.i
  %kk.4.lcssa.i384 = phi i32 [ %397, %for.cond109.for.end147_crit_edge.i ], [ %kk.3417.i, %if.then102.i ]
  %rsum1.1.lcssa.i = phi double [ %add139.i, %for.cond109.for.end147_crit_edge.i ], [ 0.000000e+00, %if.then102.i ]
  %rsum0.1.lcssa.i = phi double [ %add131.i, %for.cond109.for.end147_crit_edge.i ], [ 0.000000e+00, %if.then102.i ]
  %isum1.1.lcssa.i = phi double [ %add143.i, %for.cond109.for.end147_crit_edge.i ], [ 0.000000e+00, %if.then102.i ]
  %isum0.1.lcssa.i = phi double [ %add135.i, %for.cond109.for.end147_crit_edge.i ], [ 0.000000e+00, %if.then102.i ]
  %398 = trunc i64 %indvars.iv462.i to i32
  %mul148.i = shl nsw i32 %398, 1
  %add149386.i = or i32 %mul148.i, 1
  %idxprom150.i = sext i32 %mul148.i to i64
  %arrayidx151.i = getelementptr inbounds double* %colB0.0.lcssa.i371, i64 %idxprom150.i
  %399 = load double* %arrayidx151.i, align 8, !tbaa !4
  %sub152.i385 = fsub double %399, %rsum0.1.lcssa.i
  store double %sub152.i385, double* %arrayidx151.i, align 8, !tbaa !4
  %idxprom153.i = sext i32 %add149386.i to i64
  %arrayidx154.i = getelementptr inbounds double* %colB0.0.lcssa.i371, i64 %idxprom153.i
  %400 = load double* %arrayidx154.i, align 8, !tbaa !4
  %sub155.i = fsub double %400, %isum0.1.lcssa.i
  store double %sub155.i, double* %arrayidx154.i, align 8, !tbaa !4
  %add.ptr95.sum.i = add i64 %idxprom150.i, %idx.ext94.i
  %arrayidx157.i = getelementptr inbounds double* %colB0.0.lcssa.i371, i64 %add.ptr95.sum.i
  %401 = load double* %arrayidx157.i, align 8, !tbaa !4
  %sub158.i = fsub double %401, %rsum1.1.lcssa.i
  store double %sub158.i, double* %arrayidx157.i, align 8, !tbaa !4
  %add.ptr95.sum387.i = add i64 %idxprom153.i, %idx.ext94.i
  %arrayidx160.i = getelementptr inbounds double* %colB0.0.lcssa.i371, i64 %add.ptr95.sum387.i
  %402 = load double* %arrayidx160.i, align 8, !tbaa !4
  %sub161.i = fsub double %402, %isum1.1.lcssa.i
  store double %sub161.i, double* %arrayidx160.i, align 8, !tbaa !4
  br label %for.inc163.i

for.inc163.i:                                     ; preds = %for.end147.i, %for.body98.i
  %kk.5.i386 = phi i32 [ %kk.4.lcssa.i384, %for.end147.i ], [ %kk.3417.i, %for.body98.i ]
  %indvars.iv.next463.i = add i64 %indvars.iv462.i, 1
  %lftr.wideiv1147 = trunc i64 %indvars.iv.next463.i to i32
  %exitcond1148 = icmp eq i32 %lftr.wideiv1147, %381
  br i1 %exitcond1148, label %sw.epilog41, label %for.body98.i

if.else.i387:                                     ; preds = %for.end89.i
  %sub166.i = add nsw i32 %352, -1
  %cmp167.i = icmp eq i32 %jcolB.0.lcssa.i370, %sub166.i
  br i1 %cmp167.i, label %for.cond169.preheader.i, label %sw.epilog41

for.cond169.preheader.i:                          ; preds = %if.else.i387
  %403 = load i32* %nrowA.i323, align 4, !tbaa !3
  %cmp170427.i = icmp sgt i32 %403, 0
  br i1 %cmp170427.i, label %for.body171.lr.ph.i, label %sw.epilog41

for.body171.lr.ph.i:                              ; preds = %for.cond169.preheader.i
  %404 = load i32** %sizesA.i326, align 8, !tbaa !0
  %405 = load i32** %firstlocsA.i325, align 8, !tbaa !0
  %406 = load double** %entriesA.i317, align 8, !tbaa !0
  br label %for.body171.i

for.body171.i:                                    ; preds = %for.inc218.i, %for.body171.lr.ph.i
  %indvars.iv469.i = phi i64 [ 0, %for.body171.lr.ph.i ], [ %indvars.iv.next470.i, %for.inc218.i ]
  %kk.6430.i = phi i32 [ 0, %for.body171.lr.ph.i ], [ %kk.8.i389, %for.inc218.i ]
  %arrayidx173.i = getelementptr inbounds i32* %404, i64 %indvars.iv469.i
  %407 = load i32* %arrayidx173.i, align 4, !tbaa !3
  %cmp174.i = icmp sgt i32 %407, 0
  br i1 %cmp174.i, label %if.then175.i, label %for.inc218.i

if.then175.i:                                     ; preds = %for.body171.i
  %arrayidx177.i = getelementptr inbounds i32* %405, i64 %indvars.iv469.i
  %408 = load i32* %arrayidx177.i, align 4, !tbaa !3
  %add180.i = add i32 %407, -1
  %sub181.i = add i32 %add180.i, %408
  %cmp183418.i = icmp sgt i32 %408, %sub181.i
  br i1 %cmp183418.i, label %for.end208.i, label %for.body184.lr.ph.i

for.body184.lr.ph.i:                              ; preds = %if.then175.i
  %409 = sext i32 %kk.6430.i to i64
  %410 = sext i32 %408 to i64
  br label %for.body184.i

for.body184.i:                                    ; preds = %for.body184.i, %for.body184.lr.ph.i
  %indvars.iv466.i = phi i64 [ %indvars.iv.next467.i, %for.body184.i ], [ %410, %for.body184.lr.ph.i ]
  %indvars.iv464.i = phi i64 [ %indvars.iv.next465.i, %for.body184.i ], [ %409, %for.body184.lr.ph.i ]
  %rsum0.2420.i = phi double [ %add200.i, %for.body184.i ], [ 0.000000e+00, %for.body184.lr.ph.i ]
  %isum0.2419.i = phi double [ %add204.i, %for.body184.i ], [ 0.000000e+00, %for.body184.lr.ph.i ]
  %411 = trunc i64 %indvars.iv464.i to i32
  %mul185.i = shl nsw i32 %411, 1
  %add186384.i = or i32 %mul185.i, 1
  %idxprom187.i = sext i32 %mul185.i to i64
  %arrayidx188.i = getelementptr inbounds double* %406, i64 %idxprom187.i
  %412 = load double* %arrayidx188.i, align 8, !tbaa !4
  %idxprom189.i = sext i32 %add186384.i to i64
  %arrayidx190.i = getelementptr inbounds double* %406, i64 %idxprom189.i
  %413 = load double* %arrayidx190.i, align 8, !tbaa !4
  %414 = trunc i64 %indvars.iv466.i to i32
  %mul191.i = shl nsw i32 %414, 1
  %add192385.i = or i32 %mul191.i, 1
  %idxprom193.i = sext i32 %mul191.i to i64
  %arrayidx194.i = getelementptr inbounds double* %colB0.0.lcssa.i371, i64 %idxprom193.i
  %415 = load double* %arrayidx194.i, align 8, !tbaa !4
  %idxprom195.i = sext i32 %add192385.i to i64
  %arrayidx196.i = getelementptr inbounds double* %colB0.0.lcssa.i371, i64 %idxprom195.i
  %416 = load double* %arrayidx196.i, align 8, !tbaa !4
  %mul197.i = fmul double %412, %415
  %mul198.i = fmul double %413, %416
  %sub199.i = fsub double %mul197.i, %mul198.i
  %add200.i = fadd double %rsum0.2420.i, %sub199.i
  %mul201.i = fmul double %412, %416
  %mul202.i = fmul double %413, %415
  %add203.i = fadd double %mul202.i, %mul201.i
  %add204.i = fadd double %isum0.2419.i, %add203.i
  %indvars.iv.next467.i = add i64 %indvars.iv466.i, 1
  %indvars.iv.next465.i = add i64 %indvars.iv464.i, 1
  %cmp183.i = icmp slt i32 %414, %sub181.i
  br i1 %cmp183.i, label %for.body184.i, label %for.cond182.for.end208_crit_edge.i

for.cond182.for.end208_crit_edge.i:               ; preds = %for.body184.i
  %417 = add i32 %407, %kk.6430.i
  br label %for.end208.i

for.end208.i:                                     ; preds = %for.cond182.for.end208_crit_edge.i, %if.then175.i
  %kk.7.lcssa.i388 = phi i32 [ %417, %for.cond182.for.end208_crit_edge.i ], [ %kk.6430.i, %if.then175.i ]
  %rsum0.2.lcssa.i = phi double [ %add200.i, %for.cond182.for.end208_crit_edge.i ], [ 0.000000e+00, %if.then175.i ]
  %isum0.2.lcssa.i = phi double [ %add204.i, %for.cond182.for.end208_crit_edge.i ], [ 0.000000e+00, %if.then175.i ]
  %418 = trunc i64 %indvars.iv469.i to i32
  %mul209.i = shl nsw i32 %418, 1
  %add210383.i = or i32 %mul209.i, 1
  %idxprom211.i = sext i32 %mul209.i to i64
  %arrayidx212.i = getelementptr inbounds double* %colB0.0.lcssa.i371, i64 %idxprom211.i
  %419 = load double* %arrayidx212.i, align 8, !tbaa !4
  %sub213.i = fsub double %419, %rsum0.2.lcssa.i
  store double %sub213.i, double* %arrayidx212.i, align 8, !tbaa !4
  %idxprom214.i = sext i32 %add210383.i to i64
  %arrayidx215.i = getelementptr inbounds double* %colB0.0.lcssa.i371, i64 %idxprom214.i
  %420 = load double* %arrayidx215.i, align 8, !tbaa !4
  %sub216.i = fsub double %420, %isum0.2.lcssa.i
  store double %sub216.i, double* %arrayidx215.i, align 8, !tbaa !4
  br label %for.inc218.i

for.inc218.i:                                     ; preds = %for.end208.i, %for.body171.i
  %kk.8.i389 = phi i32 [ %kk.7.lcssa.i388, %for.end208.i ], [ %kk.6430.i, %for.body171.i ]
  %indvars.iv.next470.i = add i64 %indvars.iv469.i, 1
  %lftr.wideiv1149 = trunc i64 %indvars.iv.next470.i to i32
  %exitcond1150 = icmp eq i32 %lftr.wideiv1149, %403
  br i1 %exitcond1150, label %sw.epilog41, label %for.body171.i

sw.bb27:                                          ; preds = %sw.bb24
  %421 = bitcast double** %entriesA.i390 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %421) #4
  %422 = bitcast double** %entriesB.i391 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %422) #4
  %423 = bitcast i32* %inc1.i392 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %423) #4
  %424 = bitcast i32* %inc2.i393 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %424) #4
  %425 = bitcast i32* %ncolB.i394 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %425) #4
  %426 = bitcast i32* %nentA.i395 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %426) #4
  %427 = bitcast i32* %nrowA.i396 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %427) #4
  %428 = bitcast i32* %nrowB.i397 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %428) #4
  %429 = bitcast i32** %indicesA.i398 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %429) #4
  %430 = bitcast i32** %sizesA.i399 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %430) #4
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i396, i32* %nentA.i395, i32** %sizesA.i399, i32** %indicesA.i398, double** %entriesA.i390) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i397, i32* %ncolB.i394, i32* %inc1.i392, i32* %inc2.i393, double** %entriesB.i391) #5
  %431 = load double** %entriesB.i391, align 8, !tbaa !0
  %432 = load i32* %ncolB.i394, align 4, !tbaa !3
  %sub500.i = add nsw i32 %432, -2
  %cmp501.i = icmp sgt i32 %sub500.i, 0
  br i1 %cmp501.i, label %for.body.lr.ph.i404, label %for.end89.i456

for.body.lr.ph.i404:                              ; preds = %sw.bb27
  %433 = load i32* %nrowB.i397, align 4, !tbaa !3
  %mul.i400 = shl nsw i32 %433, 1
  %idx.ext.i401 = sext i32 %mul.i400 to i64
  %add.ptr.sum.i402 = shl nsw i64 %idx.ext.i401, 1
  %434 = load i32* %nrowA.i396, align 4, !tbaa !3
  %cmp5490.i = icmp sgt i32 %434, 0
  %add.ptr3.sum.i403 = add i64 %add.ptr.sum.i402, %idx.ext.i401
  %435 = load i32** %sizesA.i399, align 8, !tbaa !0
  %436 = load double** %entriesA.i390, align 8, !tbaa !0
  %437 = load i32** %indicesA.i398, align 8, !tbaa !0
  br label %for.body.i405

for.body.i405:                                    ; preds = %for.end83.i452, %for.body.lr.ph.i404
  %jcolB.0504.i = phi i32 [ 0, %for.body.lr.ph.i404 ], [ %add88.i450, %for.end83.i452 ]
  %colB0.0502.i = phi double* [ %431, %for.body.lr.ph.i404 ], [ %add.ptr86.i449, %for.end83.i452 ]
  br i1 %cmp5490.i, label %for.body6.i408, label %for.end83.i452

for.body6.i408:                                   ; preds = %for.body.i405, %for.inc81.i448
  %indvars.iv531.i = phi i64 [ %indvars.iv.next532.i, %for.inc81.i448 ], [ 0, %for.body.i405 ]
  %kk.0494.i = phi i32 [ %kk.2.i446, %for.inc81.i448 ], [ 0, %for.body.i405 ]
  %irowA.0491.i = phi i32 [ %inc82.i, %for.inc81.i448 ], [ 0, %for.body.i405 ]
  %arrayidx.i406 = getelementptr inbounds i32* %435, i64 %indvars.iv531.i
  %438 = load i32* %arrayidx.i406, align 4, !tbaa !3
  %cmp7.i407 = icmp sgt i32 %438, 0
  br i1 %cmp7.i407, label %for.body10.lr.ph.i, label %for.inc81.i448

for.body10.lr.ph.i:                               ; preds = %for.body6.i408
  %439 = sext i32 %kk.0494.i to i64
  %440 = trunc i64 %indvars.iv531.i to i32
  br label %for.body10.i413

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
  %441 = trunc i64 %indvars.iv528.i to i32
  %mul11.i = shl nsw i32 %441, 1
  %add413.i = or i32 %mul11.i, 1
  %idxprom12.i = sext i32 %mul11.i to i64
  %arrayidx13.i409 = getelementptr inbounds double* %436, i64 %idxprom12.i
  %442 = load double* %arrayidx13.i409, align 8, !tbaa !4
  %idxprom14.i = sext i32 %add413.i to i64
  %arrayidx15.i = getelementptr inbounds double* %436, i64 %idxprom14.i
  %443 = load double* %arrayidx15.i, align 8, !tbaa !4
  %arrayidx17.i410 = getelementptr inbounds i32* %437, i64 %indvars.iv528.i
  %444 = load i32* %arrayidx17.i410, align 4, !tbaa !3
  %cmp18.i = icmp sgt i32 %444, -1
  %cmp19.i411 = icmp slt i32 %444, %440
  %or.cond.i412 = and i1 %cmp18.i, %cmp19.i411
  br i1 %or.cond.i412, label %if.end.i436, label %if.then20.i

if.then20.i:                                      ; preds = %for.body10.i413
  %445 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call.i414 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %445, i8* getelementptr inbounds ([52 x i8]* @.str7, i64 0, i64 0), i32 %irowA.0491.i, i32 %kk.1481.i, i32 %ii.0480.i, i32 %444) #5
  call void @exit(i32 -1) #6
  unreachable

if.end.i436:                                      ; preds = %for.body10.i413
  %mul21.i415 = shl nsw i32 %444, 1
  %add22414.i = or i32 %mul21.i415, 1
  %idxprom23.i = sext i32 %mul21.i415 to i64
  %arrayidx24.i416 = getelementptr inbounds double* %colB0.0502.i, i64 %idxprom23.i
  %446 = load double* %arrayidx24.i416, align 8, !tbaa !4
  %idxprom25.i = sext i32 %add22414.i to i64
  %arrayidx26.i417 = getelementptr inbounds double* %colB0.0502.i, i64 %idxprom25.i
  %447 = load double* %arrayidx26.i417, align 8, !tbaa !4
  %add.ptr.sum415.i = add i64 %idxprom23.i, %idx.ext.i401
  %arrayidx28.i418 = getelementptr inbounds double* %colB0.0502.i, i64 %add.ptr.sum415.i
  %448 = load double* %arrayidx28.i418, align 8, !tbaa !4
  %add.ptr.sum416.i = add i64 %idxprom25.i, %idx.ext.i401
  %arrayidx30.i419 = getelementptr inbounds double* %colB0.0502.i, i64 %add.ptr.sum416.i
  %449 = load double* %arrayidx30.i419, align 8, !tbaa !4
  %add.ptr3.sum417.i = add i64 %idxprom23.i, %add.ptr.sum.i402
  %arrayidx32.i420 = getelementptr inbounds double* %colB0.0502.i, i64 %add.ptr3.sum417.i
  %450 = load double* %arrayidx32.i420, align 8, !tbaa !4
  %add.ptr3.sum418.i = add i64 %idxprom25.i, %add.ptr.sum.i402
  %arrayidx34.i = getelementptr inbounds double* %colB0.0502.i, i64 %add.ptr3.sum418.i
  %451 = load double* %arrayidx34.i, align 8, !tbaa !4
  %mul35.i = fmul double %442, %446
  %mul36.i421 = fmul double %443, %447
  %sub37.i422 = fsub double %mul35.i, %mul36.i421
  %add38.i = fadd double %rsum0.0477.i, %sub37.i422
  %mul39.i = fmul double %442, %447
  %mul40.i423 = fmul double %443, %446
  %add41.i = fadd double %mul40.i423, %mul39.i
  %add42.i424 = fadd double %isum0.0474.i, %add41.i
  %mul43.i = fmul double %442, %448
  %mul44.i425 = fmul double %443, %449
  %sub45.i = fsub double %mul43.i, %mul44.i425
  %add46.i = fadd double %rsum1.0478.i, %sub45.i
  %mul47.i = fmul double %442, %449
  %mul48.i426 = fmul double %443, %448
  %add49.i = fadd double %mul48.i426, %mul47.i
  %add50.i427 = fadd double %isum1.0475.i, %add49.i
  %mul51.i = fmul double %442, %450
  %mul52.i428 = fmul double %443, %451
  %sub53.i429 = fsub double %mul51.i, %mul52.i428
  %add54.i430 = fadd double %rsum2.0479.i, %sub53.i429
  %mul55.i431 = fmul double %442, %451
  %mul56.i432 = fmul double %443, %450
  %add57.i = fadd double %mul56.i432, %mul55.i431
  %add58.i433 = fadd double %isum2.0476.i, %add57.i
  %inc.i434 = add nsw i32 %ii.0480.i, 1
  %indvars.iv.next529.i = add i64 %indvars.iv528.i, 1
  %inc59.i = add nsw i32 %kk.1481.i, 1
  %cmp9.i435 = icmp slt i32 %inc.i434, %438
  br i1 %cmp9.i435, label %for.body10.i413, label %for.end.i445

for.end.i445:                                     ; preds = %if.end.i436
  %phitmp538.i = shl i32 %440, 1
  %add61408.i = or i32 %phitmp538.i, 1
  %idxprom62.i = sext i32 %phitmp538.i to i64
  %arrayidx63.i437 = getelementptr inbounds double* %colB0.0502.i, i64 %idxprom62.i
  %452 = load double* %arrayidx63.i437, align 8, !tbaa !4
  %sub64.i438 = fsub double %452, %add38.i
  store double %sub64.i438, double* %arrayidx63.i437, align 8, !tbaa !4
  %idxprom65.i439 = sext i32 %add61408.i to i64
  %arrayidx66.i440 = getelementptr inbounds double* %colB0.0502.i, i64 %idxprom65.i439
  %453 = load double* %arrayidx66.i440, align 8, !tbaa !4
  %sub67.i441 = fsub double %453, %add42.i424
  store double %sub67.i441, double* %arrayidx66.i440, align 8, !tbaa !4
  %add.ptr.sum409.i = add i64 %idxprom62.i, %idx.ext.i401
  %arrayidx69.i442 = getelementptr inbounds double* %colB0.0502.i, i64 %add.ptr.sum409.i
  %454 = load double* %arrayidx69.i442, align 8, !tbaa !4
  %sub70.i = fsub double %454, %add46.i
  store double %sub70.i, double* %arrayidx69.i442, align 8, !tbaa !4
  %add.ptr.sum410.i = add i64 %idxprom65.i439, %idx.ext.i401
  %arrayidx72.i = getelementptr inbounds double* %colB0.0502.i, i64 %add.ptr.sum410.i
  %455 = load double* %arrayidx72.i, align 8, !tbaa !4
  %sub73.i = fsub double %455, %add50.i427
  store double %sub73.i, double* %arrayidx72.i, align 8, !tbaa !4
  %add.ptr3.sum411.i = add i64 %idxprom62.i, %add.ptr.sum.i402
  %arrayidx75.i = getelementptr inbounds double* %colB0.0502.i, i64 %add.ptr3.sum411.i
  %456 = load double* %arrayidx75.i, align 8, !tbaa !4
  %sub76.i = fsub double %456, %add54.i430
  store double %sub76.i, double* %arrayidx75.i, align 8, !tbaa !4
  %add.ptr3.sum412.i = add i64 %idxprom65.i439, %add.ptr.sum.i402
  %arrayidx78.i443 = getelementptr inbounds double* %colB0.0502.i, i64 %add.ptr3.sum412.i
  %457 = load double* %arrayidx78.i443, align 8, !tbaa !4
  %sub79.i444 = fsub double %457, %add58.i433
  store double %sub79.i444, double* %arrayidx78.i443, align 8, !tbaa !4
  br label %for.inc81.i448

for.inc81.i448:                                   ; preds = %for.end.i445, %for.body6.i408
  %kk.2.i446 = phi i32 [ %inc59.i, %for.end.i445 ], [ %kk.0494.i, %for.body6.i408 ]
  %indvars.iv.next532.i = add i64 %indvars.iv531.i, 1
  %inc82.i = add nsw i32 %irowA.0491.i, 1
  %458 = trunc i64 %indvars.iv.next532.i to i32
  %cmp5.i447 = icmp slt i32 %458, %434
  br i1 %cmp5.i447, label %for.body6.i408, label %for.end83.i452

for.end83.i452:                                   ; preds = %for.inc81.i448, %for.body.i405
  %add.ptr86.i449 = getelementptr inbounds double* %colB0.0502.i, i64 %add.ptr3.sum.i403
  %add88.i450 = add nsw i32 %jcolB.0504.i, 3
  %cmp.i451 = icmp slt i32 %add88.i450, %sub500.i
  br i1 %cmp.i451, label %for.body.i405, label %for.end89.i456

for.end89.i456:                                   ; preds = %for.end83.i452, %sw.bb27
  %jcolB.0.lcssa.i453 = phi i32 [ 0, %sw.bb27 ], [ %add88.i450, %for.end83.i452 ]
  %colB0.0.lcssa.i454 = phi double* [ %431, %sw.bb27 ], [ %add.ptr86.i449, %for.end83.i452 ]
  %cmp91.i455 = icmp eq i32 %jcolB.0.lcssa.i453, %sub500.i
  br i1 %cmp91.i455, label %if.then92.i459, label %if.else.i481

if.then92.i459:                                   ; preds = %for.end89.i456
  %459 = load i32* %nrowB.i397, align 4, !tbaa !3
  %mul93.i457 = shl nsw i32 %459, 1
  %idx.ext94.i458 = sext i32 %mul93.i457 to i64
  %460 = load i32* %nrowA.i396, align 4, !tbaa !3
  %cmp97439.i = icmp sgt i32 %460, 0
  br i1 %cmp97439.i, label %for.body98.lr.ph.i460, label %sw.epilog41

for.body98.lr.ph.i460:                            ; preds = %if.then92.i459
  %461 = load i32** %sizesA.i399, align 8, !tbaa !0
  %462 = load double** %entriesA.i390, align 8, !tbaa !0
  %463 = load i32** %indicesA.i398, align 8, !tbaa !0
  br label %for.body98.i463

for.body98.i463:                                  ; preds = %for.inc165.i, %for.body98.lr.ph.i460
  %indvars.iv513.i = phi i64 [ 0, %for.body98.lr.ph.i460 ], [ %indvars.iv.next514.i, %for.inc165.i ]
  %kk.3443.i = phi i32 [ 0, %for.body98.lr.ph.i460 ], [ %kk.5.i479, %for.inc165.i ]
  %irowA.1440.i = phi i32 [ 0, %for.body98.lr.ph.i460 ], [ %inc166.i, %for.inc165.i ]
  %arrayidx100.i461 = getelementptr inbounds i32* %461, i64 %indvars.iv513.i
  %464 = load i32* %arrayidx100.i461, align 4, !tbaa !3
  %cmp101.i462 = icmp sgt i32 %464, 0
  br i1 %cmp101.i462, label %for.body105.lr.ph.i, label %for.inc165.i

for.body105.lr.ph.i:                              ; preds = %for.body98.i463
  %465 = sext i32 %kk.3443.i to i64
  %466 = trunc i64 %indvars.iv513.i to i32
  br label %for.body105.i

for.body105.i:                                    ; preds = %if.end119.i, %for.body105.lr.ph.i
  %indvars.iv.i464 = phi i64 [ %465, %for.body105.lr.ph.i ], [ %indvars.iv.next.i476, %if.end119.i ]
  %kk.4433.i = phi i32 [ %kk.3443.i, %for.body105.lr.ph.i ], [ %inc148.i, %if.end119.i ]
  %ii.1432.i = phi i32 [ 0, %for.body105.lr.ph.i ], [ %inc147.i, %if.end119.i ]
  %rsum1.1431.i = phi double [ 0.000000e+00, %for.body105.lr.ph.i ], [ %add141.i, %if.end119.i ]
  %rsum0.1430.i = phi double [ 0.000000e+00, %for.body105.lr.ph.i ], [ %add133.i, %if.end119.i ]
  %isum1.1429.i = phi double [ 0.000000e+00, %for.body105.lr.ph.i ], [ %add145.i, %if.end119.i ]
  %isum0.1428.i = phi double [ 0.000000e+00, %for.body105.lr.ph.i ], [ %add137.i, %if.end119.i ]
  %467 = trunc i64 %indvars.iv.i464 to i32
  %mul106.i = shl nsw i32 %467, 1
  %add107404.i = or i32 %mul106.i, 1
  %idxprom108.i = sext i32 %mul106.i to i64
  %arrayidx109.i = getelementptr inbounds double* %462, i64 %idxprom108.i
  %468 = load double* %arrayidx109.i, align 8, !tbaa !4
  %idxprom110.i465 = sext i32 %add107404.i to i64
  %arrayidx111.i466 = getelementptr inbounds double* %462, i64 %idxprom110.i465
  %469 = load double* %arrayidx111.i466, align 8, !tbaa !4
  %arrayidx113.i467 = getelementptr inbounds i32* %463, i64 %indvars.iv.i464
  %470 = load i32* %arrayidx113.i467, align 4, !tbaa !3
  %cmp114.i468 = icmp sgt i32 %470, -1
  %cmp116.i469 = icmp slt i32 %470, %466
  %or.cond419.i = and i1 %cmp114.i468, %cmp116.i469
  br i1 %or.cond419.i, label %if.end119.i, label %if.then117.i

if.then117.i:                                     ; preds = %for.body105.i
  %471 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call118.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %471, i8* getelementptr inbounds ([52 x i8]* @.str7, i64 0, i64 0), i32 %irowA.1440.i, i32 %kk.4433.i, i32 %ii.1432.i, i32 %470) #5
  call void @exit(i32 -1) #6
  unreachable

if.end119.i:                                      ; preds = %for.body105.i
  %mul120.i470 = shl nsw i32 %470, 1
  %add121405.i = or i32 %mul120.i470, 1
  %idxprom122.i471 = sext i32 %mul120.i470 to i64
  %arrayidx123.i472 = getelementptr inbounds double* %colB0.0.lcssa.i454, i64 %idxprom122.i471
  %472 = load double* %arrayidx123.i472, align 8, !tbaa !4
  %idxprom124.i = sext i32 %add121405.i to i64
  %arrayidx125.i473 = getelementptr inbounds double* %colB0.0.lcssa.i454, i64 %idxprom124.i
  %473 = load double* %arrayidx125.i473, align 8, !tbaa !4
  %add.ptr95.sum406.i = add i64 %idxprom122.i471, %idx.ext94.i458
  %arrayidx127.i474 = getelementptr inbounds double* %colB0.0.lcssa.i454, i64 %add.ptr95.sum406.i
  %474 = load double* %arrayidx127.i474, align 8, !tbaa !4
  %add.ptr95.sum407.i = add i64 %idxprom124.i, %idx.ext94.i458
  %arrayidx129.i = getelementptr inbounds double* %colB0.0.lcssa.i454, i64 %add.ptr95.sum407.i
  %475 = load double* %arrayidx129.i, align 8, !tbaa !4
  %mul130.i = fmul double %468, %472
  %mul131.i = fmul double %469, %473
  %sub132.i = fsub double %mul130.i, %mul131.i
  %add133.i = fadd double %rsum0.1430.i, %sub132.i
  %mul134.i = fmul double %468, %473
  %mul135.i = fmul double %469, %472
  %add136.i = fadd double %mul135.i, %mul134.i
  %add137.i = fadd double %isum0.1428.i, %add136.i
  %mul138.i = fmul double %468, %474
  %mul139.i = fmul double %469, %475
  %sub140.i = fsub double %mul138.i, %mul139.i
  %add141.i = fadd double %rsum1.1431.i, %sub140.i
  %mul142.i475 = fmul double %468, %475
  %mul143.i = fmul double %469, %474
  %add144.i = fadd double %mul143.i, %mul142.i475
  %add145.i = fadd double %isum1.1429.i, %add144.i
  %inc147.i = add nsw i32 %ii.1432.i, 1
  %indvars.iv.next.i476 = add i64 %indvars.iv.i464, 1
  %inc148.i = add nsw i32 %kk.4433.i, 1
  %cmp104.i477 = icmp slt i32 %inc147.i, %464
  br i1 %cmp104.i477, label %for.body105.i, label %for.end149.i

for.end149.i:                                     ; preds = %if.end119.i
  %phitmp537.i = shl i32 %466, 1
  %add151402.i = or i32 %phitmp537.i, 1
  %idxprom152.i = sext i32 %phitmp537.i to i64
  %arrayidx153.i = getelementptr inbounds double* %colB0.0.lcssa.i454, i64 %idxprom152.i
  %476 = load double* %arrayidx153.i, align 8, !tbaa !4
  %sub154.i = fsub double %476, %add133.i
  store double %sub154.i, double* %arrayidx153.i, align 8, !tbaa !4
  %idxprom155.i = sext i32 %add151402.i to i64
  %arrayidx156.i = getelementptr inbounds double* %colB0.0.lcssa.i454, i64 %idxprom155.i
  %477 = load double* %arrayidx156.i, align 8, !tbaa !4
  %sub157.i = fsub double %477, %add137.i
  store double %sub157.i, double* %arrayidx156.i, align 8, !tbaa !4
  %add.ptr95.sum.i478 = add i64 %idxprom152.i, %idx.ext94.i458
  %arrayidx159.i = getelementptr inbounds double* %colB0.0.lcssa.i454, i64 %add.ptr95.sum.i478
  %478 = load double* %arrayidx159.i, align 8, !tbaa !4
  %sub160.i = fsub double %478, %add141.i
  store double %sub160.i, double* %arrayidx159.i, align 8, !tbaa !4
  %add.ptr95.sum403.i = add i64 %idxprom155.i, %idx.ext94.i458
  %arrayidx162.i = getelementptr inbounds double* %colB0.0.lcssa.i454, i64 %add.ptr95.sum403.i
  %479 = load double* %arrayidx162.i, align 8, !tbaa !4
  %sub163.i = fsub double %479, %add145.i
  store double %sub163.i, double* %arrayidx162.i, align 8, !tbaa !4
  br label %for.inc165.i

for.inc165.i:                                     ; preds = %for.end149.i, %for.body98.i463
  %kk.5.i479 = phi i32 [ %inc148.i, %for.end149.i ], [ %kk.3443.i, %for.body98.i463 ]
  %indvars.iv.next514.i = add i64 %indvars.iv513.i, 1
  %inc166.i = add nsw i32 %irowA.1440.i, 1
  %480 = trunc i64 %indvars.iv.next514.i to i32
  %cmp97.i480 = icmp slt i32 %480, %460
  br i1 %cmp97.i480, label %for.body98.i463, label %sw.epilog41

if.else.i481:                                     ; preds = %for.end89.i456
  %sub168.i = add nsw i32 %432, -1
  %cmp169.i = icmp eq i32 %jcolB.0.lcssa.i453, %sub168.i
  br i1 %cmp169.i, label %for.cond171.preheader.i, label %sw.epilog41

for.cond171.preheader.i:                          ; preds = %if.else.i481
  %481 = load i32* %nrowA.i396, align 4, !tbaa !3
  %cmp172459.i = icmp sgt i32 %481, 0
  br i1 %cmp172459.i, label %for.body173.lr.ph.i, label %sw.epilog41

for.body173.lr.ph.i:                              ; preds = %for.cond171.preheader.i
  %482 = load i32** %sizesA.i399, align 8, !tbaa !0
  %483 = load double** %entriesA.i390, align 8, !tbaa !0
  %484 = load i32** %indicesA.i398, align 8, !tbaa !0
  br label %for.body173.i

for.body173.i:                                    ; preds = %for.inc222.i, %for.body173.lr.ph.i
  %indvars.iv522.i = phi i64 [ 0, %for.body173.lr.ph.i ], [ %indvars.iv.next523.i, %for.inc222.i ]
  %kk.6463.i = phi i32 [ 0, %for.body173.lr.ph.i ], [ %kk.8.i489, %for.inc222.i ]
  %irowA.2460.i = phi i32 [ 0, %for.body173.lr.ph.i ], [ %inc223.i, %for.inc222.i ]
  %arrayidx175.i = getelementptr inbounds i32* %482, i64 %indvars.iv522.i
  %485 = load i32* %arrayidx175.i, align 4, !tbaa !3
  %cmp176.i = icmp sgt i32 %485, 0
  br i1 %cmp176.i, label %for.body180.lr.ph.i, label %for.inc222.i

for.body180.lr.ph.i:                              ; preds = %for.body173.i
  %486 = sext i32 %kk.6463.i to i64
  %487 = trunc i64 %indvars.iv522.i to i32
  br label %for.body180.i

for.body180.i:                                    ; preds = %if.end194.i, %for.body180.lr.ph.i
  %indvars.iv519.i = phi i64 [ %486, %for.body180.lr.ph.i ], [ %indvars.iv.next520.i, %if.end194.i ]
  %kk.7453.i = phi i32 [ %kk.6463.i, %for.body180.lr.ph.i ], [ %inc211.i, %if.end194.i ]
  %ii.2452.i = phi i32 [ 0, %for.body180.lr.ph.i ], [ %inc210.i, %if.end194.i ]
  %rsum0.2451.i = phi double [ 0.000000e+00, %for.body180.lr.ph.i ], [ %add204.i487, %if.end194.i ]
  %isum0.2450.i = phi double [ 0.000000e+00, %for.body180.lr.ph.i ], [ %add208.i, %if.end194.i ]
  %488 = trunc i64 %indvars.iv519.i to i32
  %mul181.i = shl nsw i32 %488, 1
  %add182400.i = or i32 %mul181.i, 1
  %idxprom183.i = sext i32 %mul181.i to i64
  %arrayidx184.i = getelementptr inbounds double* %483, i64 %idxprom183.i
  %489 = load double* %arrayidx184.i, align 8, !tbaa !4
  %idxprom185.i = sext i32 %add182400.i to i64
  %arrayidx186.i = getelementptr inbounds double* %483, i64 %idxprom185.i
  %490 = load double* %arrayidx186.i, align 8, !tbaa !4
  %arrayidx188.i482 = getelementptr inbounds i32* %484, i64 %indvars.iv519.i
  %491 = load i32* %arrayidx188.i482, align 4, !tbaa !3
  %cmp189.i = icmp sgt i32 %491, -1
  %cmp191.i483 = icmp slt i32 %491, %487
  %or.cond420.i = and i1 %cmp189.i, %cmp191.i483
  br i1 %or.cond420.i, label %if.end194.i, label %if.then192.i

if.then192.i:                                     ; preds = %for.body180.i
  %492 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call193.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %492, i8* getelementptr inbounds ([52 x i8]* @.str7, i64 0, i64 0), i32 %irowA.2460.i, i32 %kk.7453.i, i32 %ii.2452.i, i32 %491) #5
  call void @exit(i32 -1) #6
  unreachable

if.end194.i:                                      ; preds = %for.body180.i
  %mul195.i = shl nsw i32 %491, 1
  %add196401.i = or i32 %mul195.i, 1
  %idxprom197.i = sext i32 %mul195.i to i64
  %arrayidx198.i = getelementptr inbounds double* %colB0.0.lcssa.i454, i64 %idxprom197.i
  %493 = load double* %arrayidx198.i, align 8, !tbaa !4
  %idxprom199.i = sext i32 %add196401.i to i64
  %arrayidx200.i = getelementptr inbounds double* %colB0.0.lcssa.i454, i64 %idxprom199.i
  %494 = load double* %arrayidx200.i, align 8, !tbaa !4
  %mul201.i484 = fmul double %489, %493
  %mul202.i485 = fmul double %490, %494
  %sub203.i486 = fsub double %mul201.i484, %mul202.i485
  %add204.i487 = fadd double %rsum0.2451.i, %sub203.i486
  %mul205.i = fmul double %489, %494
  %mul206.i = fmul double %490, %493
  %add207.i = fadd double %mul206.i, %mul205.i
  %add208.i = fadd double %isum0.2450.i, %add207.i
  %inc210.i = add nsw i32 %ii.2452.i, 1
  %indvars.iv.next520.i = add i64 %indvars.iv519.i, 1
  %inc211.i = add nsw i32 %kk.7453.i, 1
  %cmp179.i = icmp slt i32 %inc210.i, %485
  br i1 %cmp179.i, label %for.body180.i, label %for.end212.i

for.end212.i:                                     ; preds = %if.end194.i
  %phitmp.i = shl i32 %487, 1
  %add214399.i = or i32 %phitmp.i, 1
  %idxprom215.i = sext i32 %phitmp.i to i64
  %arrayidx216.i = getelementptr inbounds double* %colB0.0.lcssa.i454, i64 %idxprom215.i
  %495 = load double* %arrayidx216.i, align 8, !tbaa !4
  %sub217.i = fsub double %495, %add204.i487
  store double %sub217.i, double* %arrayidx216.i, align 8, !tbaa !4
  %idxprom218.i = sext i32 %add214399.i to i64
  %arrayidx219.i = getelementptr inbounds double* %colB0.0.lcssa.i454, i64 %idxprom218.i
  %496 = load double* %arrayidx219.i, align 8, !tbaa !4
  %sub220.i488 = fsub double %496, %add208.i
  store double %sub220.i488, double* %arrayidx219.i, align 8, !tbaa !4
  br label %for.inc222.i

for.inc222.i:                                     ; preds = %for.end212.i, %for.body173.i
  %kk.8.i489 = phi i32 [ %inc211.i, %for.end212.i ], [ %kk.6463.i, %for.body173.i ]
  %indvars.iv.next523.i = add i64 %indvars.iv522.i, 1
  %inc223.i = add nsw i32 %irowA.2460.i, 1
  %497 = trunc i64 %indvars.iv.next523.i to i32
  %cmp172.i = icmp slt i32 %497, %481
  br i1 %cmp172.i, label %for.body173.i, label %sw.epilog41

sw.bb28:                                          ; preds = %sw.bb24
  %498 = bitcast double** %entriesA.i490 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %498) #4
  %499 = bitcast double** %entriesB.i491 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %499) #4
  %500 = bitcast i32* %inc1.i492 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %500) #4
  %501 = bitcast i32* %inc2.i493 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %501) #4
  %502 = bitcast i32* %ncolB.i494 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %502) #4
  %503 = bitcast i32* %nentA.i495 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %503) #4
  %504 = bitcast i32* %nrowA.i496 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %504) #4
  %505 = bitcast i32* %nrowB.i497 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %505) #4
  %506 = bitcast i32** %firstlocsA.i498 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %506) #4
  %507 = bitcast i32** %sizesA.i499 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %507) #4
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i496, i32* %nentA.i495, i32** %firstlocsA.i498, i32** %sizesA.i499, double** %entriesA.i490) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i497, i32* %ncolB.i494, i32* %inc1.i492, i32* %inc2.i493, double** %entriesB.i491) #5
  %508 = load double** %entriesB.i491, align 8, !tbaa !0
  %509 = load i32* %ncolB.i494, align 4, !tbaa !3
  %sub410.i = add nsw i32 %509, -2
  %cmp411.i = icmp sgt i32 %sub410.i, 0
  br i1 %cmp411.i, label %for.body.lr.ph.i504, label %for.end87.i

for.body.lr.ph.i504:                              ; preds = %sw.bb28
  %510 = load i32* %nrowB.i497, align 4, !tbaa !3
  %mul.i500 = shl nsw i32 %510, 1
  %idx.ext.i501 = sext i32 %mul.i500 to i64
  %add.ptr.sum.i502 = shl nsw i64 %idx.ext.i501, 1
  %511 = load i32* %nrowA.i496, align 4, !tbaa !3
  %512 = load i32* %nentA.i495, align 4, !tbaa !3
  %513 = load i32** %sizesA.i499, align 8, !tbaa !0
  %514 = load i32** %firstlocsA.i498, align 8, !tbaa !0
  %515 = load double** %entriesA.i490, align 8, !tbaa !0
  %add.ptr3.sum.i503 = add i64 %add.ptr.sum.i502, %idx.ext.i501
  br label %for.body.i505

for.body.i505:                                    ; preds = %for.end81.i, %for.body.lr.ph.i504
  %jcolB.0413.i = phi i32 [ 0, %for.body.lr.ph.i504 ], [ %add86.i, %for.end81.i ]
  %colB0.0412.i = phi double* [ %508, %for.body.lr.ph.i504 ], [ %add.ptr84.i, %for.end81.i ]
  br label %for.cond5.outer.i

for.cond5.outer.i:                                ; preds = %if.then.i520, %for.body33.i, %for.body.i505
  %colstart.0.ph.i506 = phi i32 [ %512, %for.body.i505 ], [ %sub16.i, %for.body33.i ], [ %sub16.i, %if.then.i520 ]
  %irowA.0.in.ph.i507 = phi i32 [ %511, %for.body.i505 ], [ %irowA.0.i509, %for.body33.i ], [ %irowA.0.i509, %if.then.i520 ]
  %516 = sext i32 %irowA.0.in.ph.i507 to i64
  br label %for.cond5.i

for.cond5.i:                                      ; preds = %for.body7.i, %for.cond5.outer.i
  %indvars.iv432.i = phi i64 [ %516, %for.cond5.outer.i ], [ %indvars.iv.next433.i, %for.body7.i ]
  %irowA.0.in.i508 = phi i32 [ %irowA.0.in.ph.i507, %for.cond5.outer.i ], [ %irowA.0.i509, %for.body7.i ]
  %indvars.iv.next433.i = add i64 %indvars.iv432.i, -1
  %irowA.0.i509 = add nsw i32 %irowA.0.in.i508, -1
  %517 = trunc i64 %indvars.iv432.i to i32
  %cmp6.i510 = icmp sgt i32 %517, 0
  br i1 %cmp6.i510, label %for.body7.i, label %for.end81.i

for.body7.i:                                      ; preds = %for.cond5.i
  %arrayidx.i511 = getelementptr inbounds i32* %513, i64 %indvars.iv.next433.i
  %518 = load i32* %arrayidx.i511, align 4, !tbaa !3
  %cmp8.i512 = icmp sgt i32 %518, 0
  br i1 %cmp8.i512, label %if.then.i520, label %for.cond5.i

if.then.i520:                                     ; preds = %for.body7.i
  %arrayidx10.i513 = getelementptr inbounds i32* %514, i64 %indvars.iv.next433.i
  %519 = load i32* %arrayidx10.i513, align 4, !tbaa !3
  %add.i514 = add i32 %518, -1
  %sub13.i = add i32 %add.i514, %519
  %sub14.neg.i = add i32 %colstart.0.ph.i506, -1
  %add15.neg.i = add i32 %sub14.neg.i, %519
  %sub16.i = sub i32 %add15.neg.i, %sub13.i
  %mul17.i = shl nsw i32 %irowA.0.i509, 1
  %add18381.i = or i32 %mul17.i, 1
  %idxprom19.i = sext i32 %mul17.i to i64
  %arrayidx20.i515 = getelementptr inbounds double* %colB0.0412.i, i64 %idxprom19.i
  %520 = load double* %arrayidx20.i515, align 8, !tbaa !4
  %idxprom21.i = sext i32 %add18381.i to i64
  %arrayidx22.i = getelementptr inbounds double* %colB0.0412.i, i64 %idxprom21.i
  %521 = load double* %arrayidx22.i, align 8, !tbaa !4
  %add.ptr.sum382.i = add i64 %idxprom19.i, %idx.ext.i501
  %arrayidx24.i516 = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr.sum382.i
  %522 = load double* %arrayidx24.i516, align 8, !tbaa !4
  %add.ptr.sum383.i = add i64 %idxprom21.i, %idx.ext.i501
  %arrayidx26.i517 = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr.sum383.i
  %523 = load double* %arrayidx26.i517, align 8, !tbaa !4
  %add.ptr3.sum384.i = add i64 %idxprom19.i, %add.ptr.sum.i502
  %arrayidx28.i518 = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr3.sum384.i
  %524 = load double* %arrayidx28.i518, align 8, !tbaa !4
  %add.ptr3.sum385.i = add i64 %idxprom21.i, %add.ptr.sum.i502
  %arrayidx30.i519 = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr3.sum385.i
  %525 = load double* %arrayidx30.i519, align 8, !tbaa !4
  %cmp32404.i = icmp sgt i32 %519, %sub13.i
  br i1 %cmp32404.i, label %for.cond5.outer.i, label %for.body33.lr.ph.i

for.body33.lr.ph.i:                               ; preds = %if.then.i520
  %526 = sub i32 %colstart.0.ph.i506, %518
  %527 = sext i32 %526 to i64
  %528 = sext i32 %519 to i64
  br label %for.body33.i

for.body33.i:                                     ; preds = %for.body33.i, %for.body33.lr.ph.i
  %indvars.iv436.i = phi i64 [ %indvars.iv.next437.i, %for.body33.i ], [ %528, %for.body33.lr.ph.i ]
  %indvars.iv434.i = phi i64 [ %indvars.iv.next435.i, %for.body33.i ], [ %527, %for.body33.lr.ph.i ]
  %529 = trunc i64 %indvars.iv434.i to i32
  %mul34.i521 = shl nsw i32 %529, 1
  %idxprom35.i522 = sext i32 %mul34.i521 to i64
  %arrayidx36.i523 = getelementptr inbounds double* %515, i64 %idxprom35.i522
  %530 = load double* %arrayidx36.i523, align 8, !tbaa !4
  %add38386.i = or i32 %mul34.i521, 1
  %idxprom39.i = sext i32 %add38386.i to i64
  %arrayidx40.i = getelementptr inbounds double* %515, i64 %idxprom39.i
  %531 = load double* %arrayidx40.i, align 8, !tbaa !4
  %532 = trunc i64 %indvars.iv436.i to i32
  %mul41.i524 = shl nsw i32 %532, 1
  %add42387.i = or i32 %mul41.i524, 1
  %mul43.i525 = fmul double %520, %530
  %mul44.i526 = fmul double %521, %531
  %sub45.i527 = fsub double %mul43.i525, %mul44.i526
  %idxprom46.i = sext i32 %mul41.i524 to i64
  %arrayidx47.i = getelementptr inbounds double* %colB0.0412.i, i64 %idxprom46.i
  %533 = load double* %arrayidx47.i, align 8, !tbaa !4
  %sub48.i = fsub double %533, %sub45.i527
  store double %sub48.i, double* %arrayidx47.i, align 8, !tbaa !4
  %mul49.i528 = fmul double %521, %530
  %mul50.i = fmul double %520, %531
  %add51.i529 = fadd double %mul49.i528, %mul50.i
  %idxprom52.i = sext i32 %add42387.i to i64
  %arrayidx53.i = getelementptr inbounds double* %colB0.0412.i, i64 %idxprom52.i
  %534 = load double* %arrayidx53.i, align 8, !tbaa !4
  %sub54.i530 = fsub double %534, %add51.i529
  store double %sub54.i530, double* %arrayidx53.i, align 8, !tbaa !4
  %mul55.i531 = fmul double %522, %530
  %mul56.i532 = fmul double %523, %531
  %sub57.i = fsub double %mul55.i531, %mul56.i532
  %add.ptr.sum388.i = add i64 %idxprom46.i, %idx.ext.i501
  %arrayidx59.i533 = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr.sum388.i
  %535 = load double* %arrayidx59.i533, align 8, !tbaa !4
  %sub60.i = fsub double %535, %sub57.i
  store double %sub60.i, double* %arrayidx59.i533, align 8, !tbaa !4
  %mul61.i534 = fmul double %523, %530
  %mul62.i = fmul double %522, %531
  %add63.i535 = fadd double %mul61.i534, %mul62.i
  %add.ptr.sum389.i = add i64 %idxprom52.i, %idx.ext.i501
  %arrayidx65.i = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr.sum389.i
  %536 = load double* %arrayidx65.i, align 8, !tbaa !4
  %sub66.i536 = fsub double %536, %add63.i535
  store double %sub66.i536, double* %arrayidx65.i, align 8, !tbaa !4
  %mul67.i537 = fmul double %524, %530
  %mul68.i = fmul double %525, %531
  %sub69.i = fsub double %mul67.i537, %mul68.i
  %add.ptr3.sum390.i = add i64 %idxprom46.i, %add.ptr.sum.i502
  %arrayidx71.i538 = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr3.sum390.i
  %537 = load double* %arrayidx71.i538, align 8, !tbaa !4
  %sub72.i539 = fsub double %537, %sub69.i
  store double %sub72.i539, double* %arrayidx71.i538, align 8, !tbaa !4
  %mul73.i = fmul double %525, %530
  %mul74.i540 = fmul double %524, %531
  %add75.i = fadd double %mul73.i, %mul74.i540
  %add.ptr3.sum391.i = add i64 %idxprom52.i, %add.ptr.sum.i502
  %arrayidx77.i = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr3.sum391.i
  %538 = load double* %arrayidx77.i, align 8, !tbaa !4
  %sub78.i = fsub double %538, %add75.i
  store double %sub78.i, double* %arrayidx77.i, align 8, !tbaa !4
  %indvars.iv.next437.i = add i64 %indvars.iv436.i, 1
  %indvars.iv.next435.i = add i64 %indvars.iv434.i, 1
  %cmp32.i = icmp slt i32 %532, %sub13.i
  br i1 %cmp32.i, label %for.body33.i, label %for.cond5.outer.i

for.end81.i:                                      ; preds = %for.cond5.i
  %add.ptr84.i = getelementptr inbounds double* %colB0.0412.i, i64 %add.ptr3.sum.i503
  %add86.i = add nsw i32 %jcolB.0413.i, 3
  %cmp.i541 = icmp slt i32 %add86.i, %sub410.i
  br i1 %cmp.i541, label %for.body.i505, label %for.end87.i

for.end87.i:                                      ; preds = %for.end81.i, %sw.bb28
  %jcolB.0.lcssa.i542 = phi i32 [ 0, %sw.bb28 ], [ %add86.i, %for.end81.i ]
  %colB0.0.lcssa.i543 = phi double* [ %508, %sw.bb28 ], [ %add.ptr84.i, %for.end81.i ]
  %cmp89.i = icmp eq i32 %jcolB.0.lcssa.i542, %sub410.i
  br i1 %cmp89.i, label %if.then90.i, label %if.else.i568

if.then90.i:                                      ; preds = %for.end87.i
  %539 = load i32* %nrowB.i497, align 4, !tbaa !3
  %mul91.i544 = shl nsw i32 %539, 1
  %idx.ext92.i = sext i32 %mul91.i544 to i64
  %540 = load i32* %nrowA.i496, align 4, !tbaa !3
  %541 = load i32* %nentA.i495, align 4, !tbaa !3
  %542 = load i32** %sizesA.i499, align 8, !tbaa !0
  %543 = load i32** %firstlocsA.i498, align 8, !tbaa !0
  %544 = load double** %entriesA.i490, align 8, !tbaa !0
  br label %for.cond95.outer.i

for.cond95.outer.i:                               ; preds = %if.then101.i, %for.body123.i, %if.then90.i
  %colstart.2.ph.i545 = phi i32 [ %541, %if.then90.i ], [ %sub110.i, %for.body123.i ], [ %sub110.i, %if.then101.i ]
  %irowA.1.in.ph.i546 = phi i32 [ %540, %if.then90.i ], [ %irowA.1.i550, %for.body123.i ], [ %irowA.1.i550, %if.then101.i ]
  %545 = sext i32 %irowA.1.in.ph.i546 to i64
  br label %for.cond95.i

for.cond95.i:                                     ; preds = %for.body97.i552, %for.cond95.outer.i
  %indvars.iv.i547 = phi i64 [ %545, %for.cond95.outer.i ], [ %indvars.iv.next.i549, %for.body97.i552 ]
  %irowA.1.in.i548 = phi i32 [ %irowA.1.in.ph.i546, %for.cond95.outer.i ], [ %irowA.1.i550, %for.body97.i552 ]
  %indvars.iv.next.i549 = add i64 %indvars.iv.i547, -1
  %irowA.1.i550 = add nsw i32 %irowA.1.in.i548, -1
  %546 = trunc i64 %indvars.iv.i547 to i32
  %cmp96.i = icmp sgt i32 %546, 0
  br i1 %cmp96.i, label %for.body97.i552, label %sw.epilog41

for.body97.i552:                                  ; preds = %for.cond95.i
  %arrayidx99.i551 = getelementptr inbounds i32* %542, i64 %indvars.iv.next.i549
  %547 = load i32* %arrayidx99.i551, align 4, !tbaa !3
  %cmp100.i = icmp sgt i32 %547, 0
  br i1 %cmp100.i, label %if.then101.i, label %for.cond95.i

if.then101.i:                                     ; preds = %for.body97.i552
  %arrayidx103.i553 = getelementptr inbounds i32* %543, i64 %indvars.iv.next.i549
  %548 = load i32* %arrayidx103.i553, align 4, !tbaa !3
  %add106.i554 = add i32 %547, -1
  %sub107.i = add i32 %add106.i554, %548
  %sub108.neg.i = add i32 %colstart.2.ph.i545, -1
  %add109.neg.i = add i32 %sub108.neg.i, %548
  %sub110.i = sub i32 %add109.neg.i, %sub107.i
  %mul111.i = shl nsw i32 %irowA.1.i550, 1
  %add112375.i = or i32 %mul111.i, 1
  %idxprom113.i = sext i32 %mul111.i to i64
  %arrayidx114.i555 = getelementptr inbounds double* %colB0.0.lcssa.i543, i64 %idxprom113.i
  %549 = load double* %arrayidx114.i555, align 8, !tbaa !4
  %idxprom115.i = sext i32 %add112375.i to i64
  %arrayidx116.i = getelementptr inbounds double* %colB0.0.lcssa.i543, i64 %idxprom115.i
  %550 = load double* %arrayidx116.i, align 8, !tbaa !4
  %add.ptr93.sum.i = add i64 %idxprom113.i, %idx.ext92.i
  %arrayidx118.i = getelementptr inbounds double* %colB0.0.lcssa.i543, i64 %add.ptr93.sum.i
  %551 = load double* %arrayidx118.i, align 8, !tbaa !4
  %add.ptr93.sum376.i = add i64 %idxprom115.i, %idx.ext92.i
  %arrayidx120.i = getelementptr inbounds double* %colB0.0.lcssa.i543, i64 %add.ptr93.sum376.i
  %552 = load double* %arrayidx120.i, align 8, !tbaa !4
  %cmp122394.i = icmp sgt i32 %548, %sub107.i
  br i1 %cmp122394.i, label %for.cond95.outer.i, label %for.body123.lr.ph.i

for.body123.lr.ph.i:                              ; preds = %if.then101.i
  %553 = sub i32 %colstart.2.ph.i545, %547
  %554 = sext i32 %553 to i64
  %555 = sext i32 %548 to i64
  br label %for.body123.i

for.body123.i:                                    ; preds = %for.body123.i, %for.body123.lr.ph.i
  %indvars.iv420.i = phi i64 [ %indvars.iv.next421.i, %for.body123.i ], [ %555, %for.body123.lr.ph.i ]
  %indvars.iv418.i = phi i64 [ %indvars.iv.next419.i, %for.body123.i ], [ %554, %for.body123.lr.ph.i ]
  %556 = trunc i64 %indvars.iv418.i to i32
  %mul124.i = shl nsw i32 %556, 1
  %idxprom125.i = sext i32 %mul124.i to i64
  %arrayidx126.i = getelementptr inbounds double* %544, i64 %idxprom125.i
  %557 = load double* %arrayidx126.i, align 8, !tbaa !4
  %add128377.i = or i32 %mul124.i, 1
  %idxprom129.i = sext i32 %add128377.i to i64
  %arrayidx130.i = getelementptr inbounds double* %544, i64 %idxprom129.i
  %558 = load double* %arrayidx130.i, align 8, !tbaa !4
  %559 = trunc i64 %indvars.iv420.i to i32
  %mul131.i556 = shl nsw i32 %559, 1
  %add132378.i = or i32 %mul131.i556, 1
  %mul133.i557 = fmul double %549, %557
  %mul134.i558 = fmul double %550, %558
  %sub135.i = fsub double %mul133.i557, %mul134.i558
  %idxprom136.i559 = sext i32 %mul131.i556 to i64
  %arrayidx137.i560 = getelementptr inbounds double* %colB0.0.lcssa.i543, i64 %idxprom136.i559
  %560 = load double* %arrayidx137.i560, align 8, !tbaa !4
  %sub138.i561 = fsub double %560, %sub135.i
  store double %sub138.i561, double* %arrayidx137.i560, align 8, !tbaa !4
  %mul139.i562 = fmul double %550, %557
  %mul140.i563 = fmul double %549, %558
  %add141.i564 = fadd double %mul139.i562, %mul140.i563
  %idxprom142.i = sext i32 %add132378.i to i64
  %arrayidx143.i = getelementptr inbounds double* %colB0.0.lcssa.i543, i64 %idxprom142.i
  %561 = load double* %arrayidx143.i, align 8, !tbaa !4
  %sub144.i = fsub double %561, %add141.i564
  store double %sub144.i, double* %arrayidx143.i, align 8, !tbaa !4
  %mul145.i = fmul double %551, %557
  %mul146.i = fmul double %552, %558
  %sub147.i = fsub double %mul145.i, %mul146.i
  %add.ptr93.sum379.i = add i64 %idxprom136.i559, %idx.ext92.i
  %arrayidx149.i565 = getelementptr inbounds double* %colB0.0.lcssa.i543, i64 %add.ptr93.sum379.i
  %562 = load double* %arrayidx149.i565, align 8, !tbaa !4
  %sub150.i = fsub double %562, %sub147.i
  store double %sub150.i, double* %arrayidx149.i565, align 8, !tbaa !4
  %mul151.i566 = fmul double %552, %557
  %mul152.i = fmul double %551, %558
  %add153.i = fadd double %mul151.i566, %mul152.i
  %add.ptr93.sum380.i = add i64 %idxprom142.i, %idx.ext92.i
  %arrayidx155.i = getelementptr inbounds double* %colB0.0.lcssa.i543, i64 %add.ptr93.sum380.i
  %563 = load double* %arrayidx155.i, align 8, !tbaa !4
  %sub156.i567 = fsub double %563, %add153.i
  store double %sub156.i567, double* %arrayidx155.i, align 8, !tbaa !4
  %indvars.iv.next421.i = add i64 %indvars.iv420.i, 1
  %indvars.iv.next419.i = add i64 %indvars.iv418.i, 1
  %cmp122.i = icmp slt i32 %559, %sub107.i
  br i1 %cmp122.i, label %for.body123.i, label %for.cond95.outer.i

if.else.i568:                                     ; preds = %for.end87.i
  %sub165.i = add nsw i32 %509, -1
  %cmp166.i = icmp eq i32 %jcolB.0.lcssa.i542, %sub165.i
  br i1 %cmp166.i, label %if.then167.i, label %sw.epilog41

if.then167.i:                                     ; preds = %if.else.i568
  %564 = load i32* %nrowA.i496, align 4, !tbaa !3
  %565 = load i32* %nentA.i495, align 4, !tbaa !3
  %566 = load i32** %sizesA.i499, align 8, !tbaa !0
  %567 = load i32** %firstlocsA.i498, align 8, !tbaa !0
  %568 = load double** %entriesA.i490, align 8, !tbaa !0
  br label %for.cond169.outer.i

for.cond169.outer.i:                              ; preds = %if.then175.i585, %for.body193.i, %if.then167.i
  %colstart.4.ph.i569 = phi i32 [ %565, %if.then167.i ], [ %sub184.i, %for.body193.i ], [ %sub184.i, %if.then175.i585 ]
  %irowA.2.in.ph.i570 = phi i32 [ %564, %if.then167.i ], [ %irowA.2.i572, %for.body193.i ], [ %irowA.2.i572, %if.then175.i585 ]
  %569 = sext i32 %irowA.2.in.ph.i570 to i64
  br label %for.cond169.i

for.cond169.i:                                    ; preds = %for.body171.i576, %for.cond169.outer.i
  %indvars.iv424.i = phi i64 [ %569, %for.cond169.outer.i ], [ %indvars.iv.next425.i, %for.body171.i576 ]
  %irowA.2.in.i571 = phi i32 [ %irowA.2.in.ph.i570, %for.cond169.outer.i ], [ %irowA.2.i572, %for.body171.i576 ]
  %indvars.iv.next425.i = add i64 %indvars.iv424.i, -1
  %irowA.2.i572 = add nsw i32 %irowA.2.in.i571, -1
  %570 = trunc i64 %indvars.iv424.i to i32
  %cmp170.i573 = icmp sgt i32 %570, 0
  br i1 %cmp170.i573, label %for.body171.i576, label %sw.epilog41

for.body171.i576:                                 ; preds = %for.cond169.i
  %arrayidx173.i574 = getelementptr inbounds i32* %566, i64 %indvars.iv.next425.i
  %571 = load i32* %arrayidx173.i574, align 4, !tbaa !3
  %cmp174.i575 = icmp sgt i32 %571, 0
  br i1 %cmp174.i575, label %if.then175.i585, label %for.cond169.i

if.then175.i585:                                  ; preds = %for.body171.i576
  %arrayidx177.i577 = getelementptr inbounds i32* %567, i64 %indvars.iv.next425.i
  %572 = load i32* %arrayidx177.i577, align 4, !tbaa !3
  %add180.i578 = add i32 %571, -1
  %sub181.i579 = add i32 %add180.i578, %572
  %sub182.neg.i = add i32 %colstart.4.ph.i569, -1
  %add183.neg.i = add i32 %sub182.neg.i, %572
  %sub184.i = sub i32 %add183.neg.i, %sub181.i579
  %mul185.i580 = shl nsw i32 %irowA.2.i572, 1
  %add186372.i = or i32 %mul185.i580, 1
  %idxprom187.i581 = sext i32 %mul185.i580 to i64
  %arrayidx188.i582 = getelementptr inbounds double* %colB0.0.lcssa.i543, i64 %idxprom187.i581
  %573 = load double* %arrayidx188.i582, align 8, !tbaa !4
  %idxprom189.i583 = sext i32 %add186372.i to i64
  %arrayidx190.i584 = getelementptr inbounds double* %colB0.0.lcssa.i543, i64 %idxprom189.i583
  %574 = load double* %arrayidx190.i584, align 8, !tbaa !4
  %cmp192398.i = icmp sgt i32 %572, %sub181.i579
  br i1 %cmp192398.i, label %for.cond169.outer.i, label %for.body193.lr.ph.i

for.body193.lr.ph.i:                              ; preds = %if.then175.i585
  %575 = sub i32 %colstart.4.ph.i569, %571
  %576 = sext i32 %575 to i64
  %577 = sext i32 %572 to i64
  br label %for.body193.i

for.body193.i:                                    ; preds = %for.body193.i, %for.body193.lr.ph.i
  %indvars.iv428.i = phi i64 [ %indvars.iv.next429.i, %for.body193.i ], [ %577, %for.body193.lr.ph.i ]
  %indvars.iv426.i = phi i64 [ %indvars.iv.next427.i, %for.body193.i ], [ %576, %for.body193.lr.ph.i ]
  %578 = trunc i64 %indvars.iv426.i to i32
  %mul194.i = shl nsw i32 %578, 1
  %idxprom195.i586 = sext i32 %mul194.i to i64
  %arrayidx196.i587 = getelementptr inbounds double* %568, i64 %idxprom195.i586
  %579 = load double* %arrayidx196.i587, align 8, !tbaa !4
  %add198373.i = or i32 %mul194.i, 1
  %idxprom199.i588 = sext i32 %add198373.i to i64
  %arrayidx200.i589 = getelementptr inbounds double* %568, i64 %idxprom199.i588
  %580 = load double* %arrayidx200.i589, align 8, !tbaa !4
  %581 = trunc i64 %indvars.iv428.i to i32
  %mul201.i590 = shl nsw i32 %581, 1
  %add202374.i = or i32 %mul201.i590, 1
  %mul203.i = fmul double %573, %579
  %mul204.i = fmul double %574, %580
  %sub205.i = fsub double %mul203.i, %mul204.i
  %idxprom206.i = sext i32 %mul201.i590 to i64
  %arrayidx207.i = getelementptr inbounds double* %colB0.0.lcssa.i543, i64 %idxprom206.i
  %582 = load double* %arrayidx207.i, align 8, !tbaa !4
  %sub208.i = fsub double %582, %sub205.i
  store double %sub208.i, double* %arrayidx207.i, align 8, !tbaa !4
  %mul209.i591 = fmul double %574, %579
  %mul210.i = fmul double %573, %580
  %add211.i = fadd double %mul209.i591, %mul210.i
  %idxprom212.i = sext i32 %add202374.i to i64
  %arrayidx213.i = getelementptr inbounds double* %colB0.0.lcssa.i543, i64 %idxprom212.i
  %583 = load double* %arrayidx213.i, align 8, !tbaa !4
  %sub214.i = fsub double %583, %add211.i
  store double %sub214.i, double* %arrayidx213.i, align 8, !tbaa !4
  %indvars.iv.next429.i = add i64 %indvars.iv428.i, 1
  %indvars.iv.next427.i = add i64 %indvars.iv426.i, 1
  %cmp192.i = icmp slt i32 %581, %sub181.i579
  br i1 %cmp192.i, label %for.body193.i, label %for.cond169.outer.i

sw.bb29:                                          ; preds = %sw.bb24
  %584 = bitcast double** %entriesA.i592 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %584) #4
  %585 = bitcast double** %entriesB.i593 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %585) #4
  %586 = bitcast i32* %inc1.i594 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %586) #4
  %587 = bitcast i32* %inc2.i595 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %587) #4
  %588 = bitcast i32* %ncolB.i596 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %588) #4
  %589 = bitcast i32* %nentA.i597 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %589) #4
  %590 = bitcast i32* %nrowA.i598 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %590) #4
  %591 = bitcast i32* %nrowB.i599 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %591) #4
  %592 = bitcast i32** %indicesA.i600 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %592) #4
  %593 = bitcast i32** %sizesA.i601 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %593) #4
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i598, i32* %nentA.i597, i32** %sizesA.i601, i32** %indicesA.i600, double** %entriesA.i592) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i599, i32* %ncolB.i596, i32* %inc1.i594, i32* %inc2.i595, double** %entriesB.i593) #5
  %594 = load double** %entriesB.i593, align 8, !tbaa !0
  %595 = load i32* %ncolB.i596, align 4, !tbaa !3
  %sub378.i = add nsw i32 %595, -2
  %cmp379.i = icmp sgt i32 %sub378.i, 0
  br i1 %cmp379.i, label %for.body.lr.ph.i606, label %for.end81.i660

for.body.lr.ph.i606:                              ; preds = %sw.bb29
  %596 = load i32* %nrowB.i599, align 4, !tbaa !3
  %mul.i602 = shl nsw i32 %596, 1
  %idx.ext.i603 = sext i32 %mul.i602 to i64
  %add.ptr.sum.i604 = shl nsw i64 %idx.ext.i603, 1
  %597 = load i32* %nrowA.i598, align 4, !tbaa !3
  %598 = load i32* %nentA.i597, align 4, !tbaa !3
  %599 = load i32** %sizesA.i601, align 8, !tbaa !0
  %600 = load double** %entriesA.i592, align 8, !tbaa !0
  %601 = load i32** %indicesA.i600, align 8, !tbaa !0
  %add.ptr3.sum.i605 = add i64 %add.ptr.sum.i604, %idx.ext.i603
  br label %for.body.i607

for.body.i607:                                    ; preds = %for.end75.i, %for.body.lr.ph.i606
  %jcolB.0381.i = phi i32 [ 0, %for.body.lr.ph.i606 ], [ %add80.i, %for.end75.i ]
  %colB0.0380.i = phi double* [ %594, %for.body.lr.ph.i606 ], [ %add.ptr78.i, %for.end75.i ]
  br label %for.cond5.outer.i610

for.cond5.outer.i610:                             ; preds = %for.body25.i, %for.body.i607
  %colstart.0.ph.i608 = phi i32 [ %598, %for.body.i607 ], [ %sub9.i, %for.body25.i ]
  %jcolA.0.in.ph.i609 = phi i32 [ %597, %for.body.i607 ], [ %jcolA.0.i612, %for.body25.i ]
  %602 = sext i32 %jcolA.0.in.ph.i609 to i64
  br label %for.cond5.i614

for.cond5.i614:                                   ; preds = %for.body7.i617, %for.cond5.outer.i610
  %indvars.iv397.i = phi i64 [ %602, %for.cond5.outer.i610 ], [ %indvars.iv.next398.i, %for.body7.i617 ]
  %jcolA.0.in.i611 = phi i32 [ %jcolA.0.in.ph.i609, %for.cond5.outer.i610 ], [ %jcolA.0.i612, %for.body7.i617 ]
  %indvars.iv.next398.i = add i64 %indvars.iv397.i, -1
  %jcolA.0.i612 = add nsw i32 %jcolA.0.in.i611, -1
  %603 = trunc i64 %indvars.iv397.i to i32
  %cmp6.i613 = icmp sgt i32 %603, 0
  br i1 %cmp6.i613, label %for.body7.i617, label %for.end75.i

for.body7.i617:                                   ; preds = %for.cond5.i614
  %arrayidx.i615 = getelementptr inbounds i32* %599, i64 %indvars.iv.next398.i
  %604 = load i32* %arrayidx.i615, align 4, !tbaa !3
  %cmp8.i616 = icmp sgt i32 %604, 0
  br i1 %cmp8.i616, label %for.body25.lr.ph.i, label %for.cond5.i614

for.body25.lr.ph.i:                               ; preds = %for.body7.i617
  %sub9.i = sub i32 %colstart.0.ph.i608, %604
  %mul10.i = shl nsw i32 %jcolA.0.i612, 1
  %add351.i = or i32 %mul10.i, 1
  %idxprom11.i = sext i32 %mul10.i to i64
  %arrayidx12.i618 = getelementptr inbounds double* %colB0.0380.i, i64 %idxprom11.i
  %605 = load double* %arrayidx12.i618, align 8, !tbaa !4
  %idxprom13.i = sext i32 %add351.i to i64
  %arrayidx14.i619 = getelementptr inbounds double* %colB0.0380.i, i64 %idxprom13.i
  %606 = load double* %arrayidx14.i619, align 8, !tbaa !4
  %add.ptr.sum352.i = add i64 %idxprom11.i, %idx.ext.i603
  %arrayidx16.i620 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr.sum352.i
  %607 = load double* %arrayidx16.i620, align 8, !tbaa !4
  %add.ptr.sum353.i = add i64 %idxprom13.i, %idx.ext.i603
  %arrayidx18.i621 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr.sum353.i
  %608 = load double* %arrayidx18.i621, align 8, !tbaa !4
  %add.ptr3.sum354.i = add i64 %idxprom11.i, %add.ptr.sum.i604
  %arrayidx20.i622 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr3.sum354.i
  %609 = load double* %arrayidx20.i622, align 8, !tbaa !4
  %add.ptr3.sum355.i = add i64 %idxprom13.i, %add.ptr.sum.i604
  %arrayidx22.i623 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr3.sum355.i
  %610 = load double* %arrayidx22.i623, align 8, !tbaa !4
  %611 = sext i32 %sub9.i to i64
  br label %for.body25.i

for.body25.i:                                     ; preds = %for.body25.i, %for.body25.lr.ph.i
  %indvars.iv399.i = phi i64 [ %611, %for.body25.lr.ph.i ], [ %indvars.iv.next400.i, %for.body25.i ]
  %ii.0373.i = phi i32 [ 0, %for.body25.lr.ph.i ], [ %inc.i656, %for.body25.i ]
  %612 = trunc i64 %indvars.iv399.i to i32
  %mul26.i624 = shl nsw i32 %612, 1
  %idxprom27.i = sext i32 %mul26.i624 to i64
  %arrayidx28.i625 = getelementptr inbounds double* %600, i64 %idxprom27.i
  %613 = load double* %arrayidx28.i625, align 8, !tbaa !4
  %add30356.i = or i32 %mul26.i624, 1
  %idxprom31.i = sext i32 %add30356.i to i64
  %arrayidx32.i626 = getelementptr inbounds double* %600, i64 %idxprom31.i
  %614 = load double* %arrayidx32.i626, align 8, !tbaa !4
  %arrayidx34.i627 = getelementptr inbounds i32* %601, i64 %indvars.iv399.i
  %615 = load i32* %arrayidx34.i627, align 4, !tbaa !3
  %mul35.i628 = shl nsw i32 %615, 1
  %add36357.i = or i32 %mul35.i628, 1
  %mul37.i629 = fmul double %605, %613
  %mul38.i = fmul double %606, %614
  %sub39.i = fsub double %mul37.i629, %mul38.i
  %idxprom40.i630 = sext i32 %mul35.i628 to i64
  %arrayidx41.i631 = getelementptr inbounds double* %colB0.0380.i, i64 %idxprom40.i630
  %616 = load double* %arrayidx41.i631, align 8, !tbaa !4
  %sub42.i = fsub double %616, %sub39.i
  store double %sub42.i, double* %arrayidx41.i631, align 8, !tbaa !4
  %mul43.i632 = fmul double %606, %613
  %mul44.i633 = fmul double %605, %614
  %add45.i = fadd double %mul43.i632, %mul44.i633
  %idxprom46.i634 = sext i32 %add36357.i to i64
  %arrayidx47.i635 = getelementptr inbounds double* %colB0.0380.i, i64 %idxprom46.i634
  %617 = load double* %arrayidx47.i635, align 8, !tbaa !4
  %sub48.i636 = fsub double %617, %add45.i
  store double %sub48.i636, double* %arrayidx47.i635, align 8, !tbaa !4
  %mul49.i637 = fmul double %607, %613
  %mul50.i638 = fmul double %608, %614
  %sub51.i639 = fsub double %mul49.i637, %mul50.i638
  %add.ptr.sum358.i = add i64 %idxprom40.i630, %idx.ext.i603
  %arrayidx53.i640 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr.sum358.i
  %618 = load double* %arrayidx53.i640, align 8, !tbaa !4
  %sub54.i641 = fsub double %618, %sub51.i639
  store double %sub54.i641, double* %arrayidx53.i640, align 8, !tbaa !4
  %mul55.i642 = fmul double %608, %613
  %mul56.i643 = fmul double %607, %614
  %add57.i644 = fadd double %mul55.i642, %mul56.i643
  %add.ptr.sum359.i = add i64 %idxprom46.i634, %idx.ext.i603
  %arrayidx59.i645 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr.sum359.i
  %619 = load double* %arrayidx59.i645, align 8, !tbaa !4
  %sub60.i646 = fsub double %619, %add57.i644
  store double %sub60.i646, double* %arrayidx59.i645, align 8, !tbaa !4
  %mul61.i647 = fmul double %609, %613
  %mul62.i648 = fmul double %610, %614
  %sub63.i649 = fsub double %mul61.i647, %mul62.i648
  %add.ptr3.sum360.i = add i64 %idxprom40.i630, %add.ptr.sum.i604
  %arrayidx65.i650 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr3.sum360.i
  %620 = load double* %arrayidx65.i650, align 8, !tbaa !4
  %sub66.i651 = fsub double %620, %sub63.i649
  store double %sub66.i651, double* %arrayidx65.i650, align 8, !tbaa !4
  %mul67.i652 = fmul double %610, %613
  %mul68.i653 = fmul double %609, %614
  %add69.i = fadd double %mul67.i652, %mul68.i653
  %add.ptr3.sum361.i = add i64 %idxprom46.i634, %add.ptr.sum.i604
  %arrayidx71.i654 = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr3.sum361.i
  %621 = load double* %arrayidx71.i654, align 8, !tbaa !4
  %sub72.i655 = fsub double %621, %add69.i
  store double %sub72.i655, double* %arrayidx71.i654, align 8, !tbaa !4
  %inc.i656 = add nsw i32 %ii.0373.i, 1
  %indvars.iv.next400.i = add i64 %indvars.iv399.i, 1
  %exitcond401.i = icmp eq i32 %inc.i656, %604
  br i1 %exitcond401.i, label %for.cond5.outer.i610, label %for.body25.i

for.end75.i:                                      ; preds = %for.cond5.i614
  %add.ptr78.i = getelementptr inbounds double* %colB0.0380.i, i64 %add.ptr3.sum.i605
  %add80.i = add nsw i32 %jcolB.0381.i, 3
  %cmp.i657 = icmp slt i32 %add80.i, %sub378.i
  br i1 %cmp.i657, label %for.body.i607, label %for.end81.i660

for.end81.i660:                                   ; preds = %for.end75.i, %sw.bb29
  %jcolB.0.lcssa.i658 = phi i32 [ 0, %sw.bb29 ], [ %add80.i, %for.end75.i ]
  %colB0.0.lcssa.i659 = phi double* [ %594, %sw.bb29 ], [ %add.ptr78.i, %for.end75.i ]
  %cmp83.i = icmp eq i32 %jcolB.0.lcssa.i658, %sub378.i
  br i1 %cmp83.i, label %if.then84.i, label %if.else.i693

if.then84.i:                                      ; preds = %for.end81.i660
  %622 = load i32* %nrowB.i599, align 4, !tbaa !3
  %mul85.i = shl nsw i32 %622, 1
  %idx.ext86.i = sext i32 %mul85.i to i64
  %623 = load i32* %nrowA.i598, align 4, !tbaa !3
  %624 = load i32* %nentA.i597, align 4, !tbaa !3
  %625 = load i32** %sizesA.i601, align 8, !tbaa !0
  %626 = load double** %entriesA.i592, align 8, !tbaa !0
  %627 = load i32** %indicesA.i600, align 8, !tbaa !0
  br label %for.cond89.outer.i

for.cond89.outer.i:                               ; preds = %for.body109.i692, %if.then84.i
  %colstart.2.ph.i661 = phi i32 [ %624, %if.then84.i ], [ %sub96.i, %for.body109.i692 ]
  %jcolA.1.in.ph.i662 = phi i32 [ %623, %if.then84.i ], [ %jcolA.1.i666, %for.body109.i692 ]
  %628 = sext i32 %jcolA.1.in.ph.i662 to i64
  br label %for.cond89.i

for.cond89.i:                                     ; preds = %for.body91.i, %for.cond89.outer.i
  %indvars.iv.i663 = phi i64 [ %628, %for.cond89.outer.i ], [ %indvars.iv.next.i665, %for.body91.i ]
  %jcolA.1.in.i664 = phi i32 [ %jcolA.1.in.ph.i662, %for.cond89.outer.i ], [ %jcolA.1.i666, %for.body91.i ]
  %indvars.iv.next.i665 = add i64 %indvars.iv.i663, -1
  %jcolA.1.i666 = add nsw i32 %jcolA.1.in.i664, -1
  %629 = trunc i64 %indvars.iv.i663 to i32
  %cmp90.i667 = icmp sgt i32 %629, 0
  br i1 %cmp90.i667, label %for.body91.i, label %sw.epilog41

for.body91.i:                                     ; preds = %for.cond89.i
  %arrayidx93.i = getelementptr inbounds i32* %625, i64 %indvars.iv.next.i665
  %630 = load i32* %arrayidx93.i, align 4, !tbaa !3
  %cmp94.i668 = icmp sgt i32 %630, 0
  br i1 %cmp94.i668, label %for.body109.lr.ph.i672, label %for.cond89.i

for.body109.lr.ph.i672:                           ; preds = %for.body91.i
  %sub96.i = sub i32 %colstart.2.ph.i661, %630
  %mul97.i = shl nsw i32 %jcolA.1.i666, 1
  %add98345.i = or i32 %mul97.i, 1
  %idxprom99.i = sext i32 %mul97.i to i64
  %arrayidx100.i669 = getelementptr inbounds double* %colB0.0.lcssa.i659, i64 %idxprom99.i
  %631 = load double* %arrayidx100.i669, align 8, !tbaa !4
  %idxprom101.i = sext i32 %add98345.i to i64
  %arrayidx102.i670 = getelementptr inbounds double* %colB0.0.lcssa.i659, i64 %idxprom101.i
  %632 = load double* %arrayidx102.i670, align 8, !tbaa !4
  %add.ptr87.sum.i = add i64 %idxprom99.i, %idx.ext86.i
  %arrayidx104.i671 = getelementptr inbounds double* %colB0.0.lcssa.i659, i64 %add.ptr87.sum.i
  %633 = load double* %arrayidx104.i671, align 8, !tbaa !4
  %add.ptr87.sum346.i = add i64 %idxprom101.i, %idx.ext86.i
  %arrayidx106.i = getelementptr inbounds double* %colB0.0.lcssa.i659, i64 %add.ptr87.sum346.i
  %634 = load double* %arrayidx106.i, align 8, !tbaa !4
  %635 = sext i32 %sub96.i to i64
  br label %for.body109.i692

for.body109.i692:                                 ; preds = %for.body109.i692, %for.body109.lr.ph.i672
  %indvars.iv386.i = phi i64 [ %635, %for.body109.lr.ph.i672 ], [ %indvars.iv.next387.i, %for.body109.i692 ]
  %ii.1363.i = phi i32 [ 0, %for.body109.lr.ph.i672 ], [ %inc146.i, %for.body109.i692 ]
  %636 = trunc i64 %indvars.iv386.i to i32
  %mul110.i = shl nsw i32 %636, 1
  %idxprom111.i = sext i32 %mul110.i to i64
  %arrayidx112.i = getelementptr inbounds double* %626, i64 %idxprom111.i
  %637 = load double* %arrayidx112.i, align 8, !tbaa !4
  %add114347.i = or i32 %mul110.i, 1
  %idxprom115.i673 = sext i32 %add114347.i to i64
  %arrayidx116.i674 = getelementptr inbounds double* %626, i64 %idxprom115.i673
  %638 = load double* %arrayidx116.i674, align 8, !tbaa !4
  %arrayidx118.i675 = getelementptr inbounds i32* %627, i64 %indvars.iv386.i
  %639 = load i32* %arrayidx118.i675, align 4, !tbaa !3
  %mul119.i = shl nsw i32 %639, 1
  %add120348.i = or i32 %mul119.i, 1
  %mul121.i = fmul double %631, %637
  %mul122.i = fmul double %632, %638
  %sub123.i676 = fsub double %mul121.i, %mul122.i
  %idxprom124.i677 = sext i32 %mul119.i to i64
  %arrayidx125.i678 = getelementptr inbounds double* %colB0.0.lcssa.i659, i64 %idxprom124.i677
  %640 = load double* %arrayidx125.i678, align 8, !tbaa !4
  %sub126.i = fsub double %640, %sub123.i676
  store double %sub126.i, double* %arrayidx125.i678, align 8, !tbaa !4
  %mul127.i = fmul double %632, %637
  %mul128.i679 = fmul double %631, %638
  %add129.i = fadd double %mul127.i, %mul128.i679
  %idxprom130.i = sext i32 %add120348.i to i64
  %arrayidx131.i = getelementptr inbounds double* %colB0.0.lcssa.i659, i64 %idxprom130.i
  %641 = load double* %arrayidx131.i, align 8, !tbaa !4
  %sub132.i680 = fsub double %641, %add129.i
  store double %sub132.i680, double* %arrayidx131.i, align 8, !tbaa !4
  %mul133.i681 = fmul double %633, %637
  %mul134.i682 = fmul double %634, %638
  %sub135.i683 = fsub double %mul133.i681, %mul134.i682
  %add.ptr87.sum349.i = add i64 %idxprom124.i677, %idx.ext86.i
  %arrayidx137.i684 = getelementptr inbounds double* %colB0.0.lcssa.i659, i64 %add.ptr87.sum349.i
  %642 = load double* %arrayidx137.i684, align 8, !tbaa !4
  %sub138.i685 = fsub double %642, %sub135.i683
  store double %sub138.i685, double* %arrayidx137.i684, align 8, !tbaa !4
  %mul139.i686 = fmul double %634, %637
  %mul140.i687 = fmul double %633, %638
  %add141.i688 = fadd double %mul139.i686, %mul140.i687
  %add.ptr87.sum350.i = add i64 %idxprom130.i, %idx.ext86.i
  %arrayidx143.i689 = getelementptr inbounds double* %colB0.0.lcssa.i659, i64 %add.ptr87.sum350.i
  %643 = load double* %arrayidx143.i689, align 8, !tbaa !4
  %sub144.i690 = fsub double %643, %add141.i688
  store double %sub144.i690, double* %arrayidx143.i689, align 8, !tbaa !4
  %inc146.i = add nsw i32 %ii.1363.i, 1
  %indvars.iv.next387.i = add i64 %indvars.iv386.i, 1
  %exitcond.i691 = icmp eq i32 %inc146.i, %630
  br i1 %exitcond.i691, label %for.cond89.outer.i, label %for.body109.i692

if.else.i693:                                     ; preds = %for.end81.i660
  %sub153.i = add nsw i32 %595, -1
  %cmp154.i = icmp eq i32 %jcolB.0.lcssa.i658, %sub153.i
  br i1 %cmp154.i, label %if.then155.i, label %sw.epilog41

if.then155.i:                                     ; preds = %if.else.i693
  %644 = load i32* %nrowA.i598, align 4, !tbaa !3
  %645 = load i32* %nentA.i597, align 4, !tbaa !3
  %646 = load i32** %sizesA.i601, align 8, !tbaa !0
  %647 = load double** %entriesA.i592, align 8, !tbaa !0
  %648 = load i32** %indicesA.i600, align 8, !tbaa !0
  br label %for.cond157.outer.i

for.cond157.outer.i:                              ; preds = %for.body173.i703, %if.then155.i
  %colstart.4.ph.i694 = phi i32 [ %645, %if.then155.i ], [ %sub164.i, %for.body173.i703 ]
  %jcolA.2.in.ph.i695 = phi i32 [ %644, %if.then155.i ], [ %jcolA.2.i697, %for.body173.i703 ]
  %649 = sext i32 %jcolA.2.in.ph.i695 to i64
  br label %for.cond157.i

for.cond157.i:                                    ; preds = %for.body159.i, %for.cond157.outer.i
  %indvars.iv390.i = phi i64 [ %649, %for.cond157.outer.i ], [ %indvars.iv.next391.i, %for.body159.i ]
  %jcolA.2.in.i696 = phi i32 [ %jcolA.2.in.ph.i695, %for.cond157.outer.i ], [ %jcolA.2.i697, %for.body159.i ]
  %indvars.iv.next391.i = add i64 %indvars.iv390.i, -1
  %jcolA.2.i697 = add nsw i32 %jcolA.2.in.i696, -1
  %650 = trunc i64 %indvars.iv390.i to i32
  %cmp158.i = icmp sgt i32 %650, 0
  br i1 %cmp158.i, label %for.body159.i, label %sw.epilog41

for.body159.i:                                    ; preds = %for.cond157.i
  %arrayidx161.i = getelementptr inbounds i32* %646, i64 %indvars.iv.next391.i
  %651 = load i32* %arrayidx161.i, align 4, !tbaa !3
  %cmp162.i = icmp sgt i32 %651, 0
  br i1 %cmp162.i, label %for.body173.lr.ph.i699, label %for.cond157.i

for.body173.lr.ph.i699:                           ; preds = %for.body159.i
  %sub164.i = sub i32 %colstart.4.ph.i694, %651
  %mul165.i = shl nsw i32 %jcolA.2.i697, 1
  %add166342.i = or i32 %mul165.i, 1
  %idxprom167.i = sext i32 %mul165.i to i64
  %arrayidx168.i698 = getelementptr inbounds double* %colB0.0.lcssa.i659, i64 %idxprom167.i
  %652 = load double* %arrayidx168.i698, align 8, !tbaa !4
  %idxprom169.i = sext i32 %add166342.i to i64
  %arrayidx170.i = getelementptr inbounds double* %colB0.0.lcssa.i659, i64 %idxprom169.i
  %653 = load double* %arrayidx170.i, align 8, !tbaa !4
  %654 = sext i32 %sub164.i to i64
  br label %for.body173.i703

for.body173.i703:                                 ; preds = %for.body173.i703, %for.body173.lr.ph.i699
  %indvars.iv392.i = phi i64 [ %654, %for.body173.lr.ph.i699 ], [ %indvars.iv.next393.i, %for.body173.i703 ]
  %ii.2367.i = phi i32 [ 0, %for.body173.lr.ph.i699 ], [ %inc198.i, %for.body173.i703 ]
  %655 = trunc i64 %indvars.iv392.i to i32
  %mul174.i = shl nsw i32 %655, 1
  %idxprom175.i = sext i32 %mul174.i to i64
  %arrayidx176.i = getelementptr inbounds double* %647, i64 %idxprom175.i
  %656 = load double* %arrayidx176.i, align 8, !tbaa !4
  %add178343.i = or i32 %mul174.i, 1
  %idxprom179.i = sext i32 %add178343.i to i64
  %arrayidx180.i = getelementptr inbounds double* %647, i64 %idxprom179.i
  %657 = load double* %arrayidx180.i, align 8, !tbaa !4
  %arrayidx182.i = getelementptr inbounds i32* %648, i64 %indvars.iv392.i
  %658 = load i32* %arrayidx182.i, align 4, !tbaa !3
  %mul183.i = shl nsw i32 %658, 1
  %add184344.i = or i32 %mul183.i, 1
  %mul185.i700 = fmul double %652, %656
  %mul186.i = fmul double %653, %657
  %sub187.i = fsub double %mul185.i700, %mul186.i
  %idxprom188.i = sext i32 %mul183.i to i64
  %arrayidx189.i = getelementptr inbounds double* %colB0.0.lcssa.i659, i64 %idxprom188.i
  %659 = load double* %arrayidx189.i, align 8, !tbaa !4
  %sub190.i701 = fsub double %659, %sub187.i
  store double %sub190.i701, double* %arrayidx189.i, align 8, !tbaa !4
  %mul191.i702 = fmul double %653, %656
  %mul192.i = fmul double %652, %657
  %add193.i = fadd double %mul191.i702, %mul192.i
  %idxprom194.i = sext i32 %add184344.i to i64
  %arrayidx195.i = getelementptr inbounds double* %colB0.0.lcssa.i659, i64 %idxprom194.i
  %660 = load double* %arrayidx195.i, align 8, !tbaa !4
  %sub196.i = fsub double %660, %add193.i
  store double %sub196.i, double* %arrayidx195.i, align 8, !tbaa !4
  %inc198.i = add nsw i32 %ii.2367.i, 1
  %indvars.iv.next393.i = add i64 %indvars.iv392.i, 1
  %exitcond394.i = icmp eq i32 %inc198.i, %651
  br i1 %exitcond394.i, label %for.cond157.outer.i, label %for.body173.i703

sw.bb30:                                          ; preds = %sw.bb24
  %661 = bitcast double* %ci.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %661) #4
  %662 = bitcast double* %cr.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %662) #4
  %663 = bitcast double** %entriesA.i704 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %663) #4
  %664 = bitcast double** %entriesB.i705 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %664) #4
  %665 = bitcast i32* %inc1.i706 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %665) #4
  %666 = bitcast i32* %inc2.i707 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %666) #4
  %667 = bitcast i32* %ncolB.i708 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %667) #4
  %668 = bitcast i32* %nrowA.i709 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %668) #4
  %669 = bitcast i32* %nrowB.i710 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %669) #4
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i709, double** %entriesA.i704) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i710, i32* %ncolB.i708, i32* %inc1.i706, i32* %inc2.i707, double** %entriesB.i705) #5
  %670 = load double** %entriesB.i705, align 8, !tbaa !0
  %671 = load i32* %ncolB.i708, align 4, !tbaa !3
  %sub256.i = add nsw i32 %671, -2
  %cmp257.i = icmp sgt i32 %sub256.i, 0
  br i1 %cmp257.i, label %for.body.lr.ph.i711, label %for.end63.i

for.body.lr.ph.i711:                              ; preds = %sw.bb30
  %.pre.i = load i32* %nrowB.i710, align 4, !tbaa !3
  %.pre273.i = load i32* %nrowA.i709, align 4, !tbaa !3
  br label %for.body.i715

for.body.i715:                                    ; preds = %for.end.i740, %for.body.lr.ph.i711
  %672 = phi i32 [ %671, %for.body.lr.ph.i711 ], [ %698, %for.end.i740 ]
  %673 = phi i32 [ %.pre273.i, %for.body.lr.ph.i711 ], [ %700, %for.end.i740 ]
  %674 = phi i32 [ %.pre.i, %for.body.lr.ph.i711 ], [ %699, %for.end.i740 ]
  %jcolB.0260.i = phi i32 [ 0, %for.body.lr.ph.i711 ], [ %add62.i738, %for.end.i740 ]
  %colB0.0258.i = phi double* [ %670, %for.body.lr.ph.i711 ], [ %add.ptr60.i, %for.end.i740 ]
  %mul.i712 = shl nsw i32 %674, 1
  %idx.ext.i713 = sext i32 %mul.i712 to i64
  %add.ptr.sum.i714 = shl nsw i64 %idx.ext.i713, 1
  %cmp5253.i = icmp sgt i32 %673, 0
  br i1 %cmp5253.i, label %for.body6.i736, label %for.end.i740

for.body6.i736:                                   ; preds = %for.body.i715, %for.body6.i736
  %indvars.iv268.i = phi i64 [ %indvars.iv.next269.i, %for.body6.i736 ], [ 0, %for.body.i715 ]
  %irowA.0254.i = phi i32 [ %inc.i734, %for.body6.i736 ], [ 0, %for.body.i715 ]
  %675 = load double** %entriesA.i704, align 8, !tbaa !0
  %arrayidx.i716 = getelementptr inbounds double* %675, i64 %indvars.iv268.i
  %676 = load double* %arrayidx.i716, align 8, !tbaa !4
  %677 = or i64 %indvars.iv268.i, 1
  %arrayidx8.i717 = getelementptr inbounds double* %675, i64 %677
  %678 = load double* %arrayidx8.i717, align 8, !tbaa !4
  %call.i718 = call i32 @Zrecip(double %676, double %678, double* %cr.i, double* %ci.i) #5
  %arrayidx10.i719 = getelementptr inbounds double* %colB0.0258.i, i64 %indvars.iv268.i
  %679 = load double* %arrayidx10.i719, align 8, !tbaa !4
  %arrayidx13.i720 = getelementptr inbounds double* %colB0.0258.i, i64 %677
  %680 = load double* %arrayidx13.i720, align 8, !tbaa !4
  %681 = load double* %cr.i, align 8, !tbaa !4
  %mul14.i = fmul double %679, %681
  %682 = load double* %ci.i, align 8, !tbaa !4
  %mul15.i = fmul double %680, %682
  %sub16.i721 = fsub double %mul14.i, %mul15.i
  store double %sub16.i721, double* %arrayidx10.i719, align 8, !tbaa !4
  %683 = load double* %ci.i, align 8, !tbaa !4
  %mul19.i = fmul double %679, %683
  %684 = load double* %cr.i, align 8, !tbaa !4
  %mul20.i = fmul double %680, %684
  %add21.i = fadd double %mul19.i, %mul20.i
  store double %add21.i, double* %arrayidx13.i720, align 8, !tbaa !4
  %add.ptr.sum242.i = add i64 %indvars.iv268.i, %idx.ext.i713
  %arrayidx26.i722 = getelementptr inbounds double* %colB0.0258.i, i64 %add.ptr.sum242.i
  %685 = load double* %arrayidx26.i722, align 8, !tbaa !4
  %add.ptr.sum243.i = add i64 %677, %idx.ext.i713
  %arrayidx29.i723 = getelementptr inbounds double* %colB0.0258.i, i64 %add.ptr.sum243.i
  %686 = load double* %arrayidx29.i723, align 8, !tbaa !4
  %687 = load double* %cr.i, align 8, !tbaa !4
  %mul30.i724 = fmul double %685, %687
  %688 = load double* %ci.i, align 8, !tbaa !4
  %mul31.i = fmul double %686, %688
  %sub32.i725 = fsub double %mul30.i724, %mul31.i
  store double %sub32.i725, double* %arrayidx26.i722, align 8, !tbaa !4
  %689 = load double* %ci.i, align 8, !tbaa !4
  %mul35.i726 = fmul double %685, %689
  %690 = load double* %cr.i, align 8, !tbaa !4
  %mul36.i727 = fmul double %686, %690
  %add37.i = fadd double %mul35.i726, %mul36.i727
  store double %add37.i, double* %arrayidx29.i723, align 8, !tbaa !4
  %add.ptr3.sum244.i = add i64 %indvars.iv268.i, %add.ptr.sum.i714
  %arrayidx42.i = getelementptr inbounds double* %colB0.0258.i, i64 %add.ptr3.sum244.i
  %691 = load double* %arrayidx42.i, align 8, !tbaa !4
  %add.ptr3.sum245.i = add i64 %677, %add.ptr.sum.i714
  %arrayidx45.i728 = getelementptr inbounds double* %colB0.0258.i, i64 %add.ptr3.sum245.i
  %692 = load double* %arrayidx45.i728, align 8, !tbaa !4
  %693 = load double* %cr.i, align 8, !tbaa !4
  %mul46.i729 = fmul double %691, %693
  %694 = load double* %ci.i, align 8, !tbaa !4
  %mul47.i730 = fmul double %692, %694
  %sub48.i731 = fsub double %mul46.i729, %mul47.i730
  store double %sub48.i731, double* %arrayidx42.i, align 8, !tbaa !4
  %695 = load double* %ci.i, align 8, !tbaa !4
  %mul51.i732 = fmul double %691, %695
  %696 = load double* %cr.i, align 8, !tbaa !4
  %mul52.i733 = fmul double %692, %696
  %add53.i = fadd double %mul51.i732, %mul52.i733
  store double %add53.i, double* %arrayidx45.i728, align 8, !tbaa !4
  %inc.i734 = add nsw i32 %irowA.0254.i, 1
  %indvars.iv.next269.i = add i64 %indvars.iv268.i, 2
  %697 = load i32* %nrowA.i709, align 4, !tbaa !3
  %cmp5.i735 = icmp slt i32 %inc.i734, %697
  br i1 %cmp5.i735, label %for.body6.i736, label %for.cond4.for.end_crit_edge.i

for.cond4.for.end_crit_edge.i:                    ; preds = %for.body6.i736
  %.pre274.i = load i32* %nrowB.i710, align 4, !tbaa !3
  %.pre275.i = load i32* %ncolB.i708, align 4, !tbaa !3
  br label %for.end.i740

for.end.i740:                                     ; preds = %for.cond4.for.end_crit_edge.i, %for.body.i715
  %698 = phi i32 [ %.pre275.i, %for.cond4.for.end_crit_edge.i ], [ %672, %for.body.i715 ]
  %699 = phi i32 [ %.pre274.i, %for.cond4.for.end_crit_edge.i ], [ %674, %for.body.i715 ]
  %700 = phi i32 [ %697, %for.cond4.for.end_crit_edge.i ], [ %673, %for.body.i715 ]
  %mul58.i = shl nsw i32 %699, 1
  %idx.ext59.i = sext i32 %mul58.i to i64
  %add.ptr3.sum.i737 = add i64 %idx.ext59.i, %add.ptr.sum.i714
  %add.ptr60.i = getelementptr inbounds double* %colB0.0258.i, i64 %add.ptr3.sum.i737
  %add62.i738 = add nsw i32 %jcolB.0260.i, 3
  %sub.i = add nsw i32 %698, -2
  %cmp.i739 = icmp slt i32 %add62.i738, %sub.i
  br i1 %cmp.i739, label %for.body.i715, label %for.end63.i

for.end63.i:                                      ; preds = %for.end.i740, %sw.bb30
  %sub.lcssa.i = phi i32 [ %sub256.i, %sw.bb30 ], [ %sub.i, %for.end.i740 ]
  %.lcssa.i = phi i32 [ %671, %sw.bb30 ], [ %698, %for.end.i740 ]
  %jcolB.0.lcssa.i741 = phi i32 [ 0, %sw.bb30 ], [ %add62.i738, %for.end.i740 ]
  %colB0.0.lcssa.i742 = phi double* [ %670, %sw.bb30 ], [ %add.ptr60.i, %for.end.i740 ]
  %cmp65.i743 = icmp eq i32 %jcolB.0.lcssa.i741, %sub.lcssa.i
  br i1 %cmp65.i743, label %if.then.i744, label %if.else.i756

if.then.i744:                                     ; preds = %for.end63.i
  %701 = load i32* %nrowB.i710, align 4, !tbaa !3
  %mul66.i = shl nsw i32 %701, 1
  %idx.ext67.i = sext i32 %mul66.i to i64
  %702 = load i32* %nrowA.i709, align 4, !tbaa !3
  %cmp70246.i = icmp sgt i32 %702, 0
  br i1 %cmp70246.i, label %for.body71.i, label %sw.epilog41

for.body71.i:                                     ; preds = %if.then.i744, %for.body71.i
  %indvars.iv.i745 = phi i64 [ %indvars.iv.next.i755, %for.body71.i ], [ 0, %if.then.i744 ]
  %irowA.1247.i = phi i32 [ %inc111.i, %for.body71.i ], [ 0, %if.then.i744 ]
  %703 = load double** %entriesA.i704, align 8, !tbaa !0
  %arrayidx73.i746 = getelementptr inbounds double* %703, i64 %indvars.iv.i745
  %704 = load double* %arrayidx73.i746, align 8, !tbaa !4
  %705 = or i64 %indvars.iv.i745, 1
  %arrayidx76.i747 = getelementptr inbounds double* %703, i64 %705
  %706 = load double* %arrayidx76.i747, align 8, !tbaa !4
  %call77.i = call i32 @Zrecip(double %704, double %706, double* %cr.i, double* %ci.i) #5
  %arrayidx79.i748 = getelementptr inbounds double* %colB0.0.lcssa.i742, i64 %indvars.iv.i745
  %707 = load double* %arrayidx79.i748, align 8, !tbaa !4
  %arrayidx82.i749 = getelementptr inbounds double* %colB0.0.lcssa.i742, i64 %705
  %708 = load double* %arrayidx82.i749, align 8, !tbaa !4
  %709 = load double* %cr.i, align 8, !tbaa !4
  %mul83.i750 = fmul double %707, %709
  %710 = load double* %ci.i, align 8, !tbaa !4
  %mul84.i751 = fmul double %708, %710
  %sub85.i752 = fsub double %mul83.i750, %mul84.i751
  store double %sub85.i752, double* %arrayidx79.i748, align 8, !tbaa !4
  %711 = load double* %ci.i, align 8, !tbaa !4
  %mul88.i = fmul double %707, %711
  %712 = load double* %cr.i, align 8, !tbaa !4
  %mul89.i = fmul double %708, %712
  %add90.i = fadd double %mul88.i, %mul89.i
  store double %add90.i, double* %arrayidx82.i749, align 8, !tbaa !4
  %add.ptr68.sum.i = add i64 %indvars.iv.i745, %idx.ext67.i
  %arrayidx95.i = getelementptr inbounds double* %colB0.0.lcssa.i742, i64 %add.ptr68.sum.i
  %713 = load double* %arrayidx95.i, align 8, !tbaa !4
  %add.ptr68.sum240.i = add i64 %705, %idx.ext67.i
  %arrayidx98.i753 = getelementptr inbounds double* %colB0.0.lcssa.i742, i64 %add.ptr68.sum240.i
  %714 = load double* %arrayidx98.i753, align 8, !tbaa !4
  %715 = load double* %cr.i, align 8, !tbaa !4
  %mul99.i = fmul double %713, %715
  %716 = load double* %ci.i, align 8, !tbaa !4
  %mul100.i = fmul double %714, %716
  %sub101.i = fsub double %mul99.i, %mul100.i
  store double %sub101.i, double* %arrayidx95.i, align 8, !tbaa !4
  %717 = load double* %ci.i, align 8, !tbaa !4
  %mul104.i = fmul double %713, %717
  %718 = load double* %cr.i, align 8, !tbaa !4
  %mul105.i = fmul double %714, %718
  %add106.i754 = fadd double %mul104.i, %mul105.i
  store double %add106.i754, double* %arrayidx98.i753, align 8, !tbaa !4
  %inc111.i = add nsw i32 %irowA.1247.i, 1
  %indvars.iv.next.i755 = add i64 %indvars.iv.i745, 2
  %719 = load i32* %nrowA.i709, align 4, !tbaa !3
  %cmp70.i = icmp slt i32 %inc111.i, %719
  br i1 %cmp70.i, label %for.body71.i, label %sw.epilog41

if.else.i756:                                     ; preds = %for.end63.i
  %sub114.i = add nsw i32 %.lcssa.i, -1
  %cmp115.i = icmp eq i32 %jcolB.0.lcssa.i741, %sub114.i
  br i1 %cmp115.i, label %for.cond117.preheader.i, label %sw.epilog41

for.cond117.preheader.i:                          ; preds = %if.else.i756
  %720 = load i32* %nrowA.i709, align 4, !tbaa !3
  %cmp118250.i = icmp sgt i32 %720, 0
  br i1 %cmp118250.i, label %for.body119.i, label %sw.epilog41

for.body119.i:                                    ; preds = %for.cond117.preheader.i, %for.body119.i
  %indvars.iv265.i757 = phi i64 [ %indvars.iv.next266.i766, %for.body119.i ], [ 0, %for.cond117.preheader.i ]
  %irowA.2251.i = phi i32 [ %inc143.i, %for.body119.i ], [ 0, %for.cond117.preheader.i ]
  %721 = load double** %entriesA.i704, align 8, !tbaa !0
  %arrayidx121.i758 = getelementptr inbounds double* %721, i64 %indvars.iv265.i757
  %722 = load double* %arrayidx121.i758, align 8, !tbaa !4
  %723 = or i64 %indvars.iv265.i757, 1
  %arrayidx124.i759 = getelementptr inbounds double* %721, i64 %723
  %724 = load double* %arrayidx124.i759, align 8, !tbaa !4
  %call125.i = call i32 @Zrecip(double %722, double %724, double* %cr.i, double* %ci.i) #5
  %arrayidx127.i760 = getelementptr inbounds double* %colB0.0.lcssa.i742, i64 %indvars.iv265.i757
  %725 = load double* %arrayidx127.i760, align 8, !tbaa !4
  %arrayidx130.i761 = getelementptr inbounds double* %colB0.0.lcssa.i742, i64 %723
  %726 = load double* %arrayidx130.i761, align 8, !tbaa !4
  %727 = load double* %cr.i, align 8, !tbaa !4
  %mul131.i762 = fmul double %725, %727
  %728 = load double* %ci.i, align 8, !tbaa !4
  %mul132.i763 = fmul double %726, %728
  %sub133.i = fsub double %mul131.i762, %mul132.i763
  store double %sub133.i, double* %arrayidx127.i760, align 8, !tbaa !4
  %729 = load double* %ci.i, align 8, !tbaa !4
  %mul136.i764 = fmul double %725, %729
  %730 = load double* %cr.i, align 8, !tbaa !4
  %mul137.i765 = fmul double %726, %730
  %add138.i = fadd double %mul136.i764, %mul137.i765
  store double %add138.i, double* %arrayidx130.i761, align 8, !tbaa !4
  %inc143.i = add nsw i32 %irowA.2251.i, 1
  %indvars.iv.next266.i766 = add i64 %indvars.iv265.i757, 2
  %731 = load i32* %nrowA.i709, align 4, !tbaa !3
  %cmp118.i = icmp slt i32 %inc143.i, %731
  br i1 %cmp118.i, label %for.body119.i, label %sw.epilog41

sw.bb31:                                          ; preds = %sw.bb24
  %732 = bitcast double* %ci00.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %732) #4
  %733 = bitcast double* %ci01.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %733) #4
  %734 = bitcast double* %ci11.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %734) #4
  %735 = bitcast double* %cr00.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %735) #4
  %736 = bitcast double* %cr01.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %736) #4
  %737 = bitcast double* %cr11.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %737) #4
  %738 = bitcast double** %entriesA.i767 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %738) #4
  %739 = bitcast double** %entriesB.i768 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %739) #4
  %740 = bitcast i32* %inc1.i769 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %740) #4
  %741 = bitcast i32* %inc2.i770 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %741) #4
  %742 = bitcast i32* %ncolB.i771 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %742) #4
  %743 = bitcast i32* %nentA.i772 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %743) #4
  %744 = bitcast i32* %nrowA.i773 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %744) #4
  %745 = bitcast i32* %nrowB.i774 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %745) #4
  %746 = bitcast i32** %pivotsizes.i775 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %746) #4
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i773, i32* %nentA.i772, i32** %pivotsizes.i775, double** %entriesA.i767) #5
  %747 = load i32* %nrowA.i773, align 4, !tbaa !3
  %cmp1052.i = icmp sgt i32 %747, 0
  br i1 %cmp1052.i, label %for.body.lr.ph.i776, label %for.end.i786

for.body.lr.ph.i776:                              ; preds = %sw.bb31
  %748 = load i32** %pivotsizes.i775, align 8, !tbaa !0
  br label %for.body.i779

for.body.i779:                                    ; preds = %if.end.i785, %for.body.lr.ph.i776
  %indvars.iv1064.i = phi i64 [ 0, %for.body.lr.ph.i776 ], [ %indvars.iv.next1065.i, %if.end.i785 ]
  %irowA.01054.i = phi i32 [ 0, %for.body.lr.ph.i776 ], [ %add.i782, %if.end.i785 ]
  %ipivot.01053.i = phi i32 [ 0, %for.body.lr.ph.i776 ], [ %inc.i783, %if.end.i785 ]
  %arrayidx.i777 = getelementptr inbounds i32* %748, i64 %indvars.iv1064.i
  %749 = load i32* %arrayidx.i777, align 4, !tbaa !3
  %.off.i778 = add i32 %749, -1
  %750 = icmp ugt i32 %.off.i778, 1
  br i1 %750, label %if.then.i781, label %if.end.i785

if.then.i781:                                     ; preds = %for.body.i779
  %751 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call.i780 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %751, i8* getelementptr inbounds ([102 x i8]* @.str6, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 %ipivot.01053.i, i32 %749) #5
  call void @exit(i32 -1) #6
  unreachable

if.end.i785:                                      ; preds = %for.body.i779
  %add.i782 = add nsw i32 %749, %irowA.01054.i
  %indvars.iv.next1065.i = add i64 %indvars.iv1064.i, 1
  %inc.i783 = add nsw i32 %ipivot.01053.i, 1
  %cmp.i784 = icmp slt i32 %add.i782, %747
  br i1 %cmp.i784, label %for.body.i779, label %for.end.i786

for.end.i786:                                     ; preds = %if.end.i785, %sw.bb31
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i774, i32* %ncolB.i771, i32* %inc1.i769, i32* %inc2.i770, double** %entriesB.i768) #5
  %752 = load double** %entriesB.i768, align 8, !tbaa !0
  %753 = load i32* %ncolB.i771, align 4, !tbaa !3
  %sub1042.i = add nsw i32 %753, -2
  %cmp41043.i = icmp sgt i32 %sub1042.i, 0
  br i1 %cmp41043.i, label %for.body5.lr.ph.i788, label %for.end297.i

for.body5.lr.ph.i788:                             ; preds = %for.end.i786
  %.pre.i787 = load i32* %nrowB.i774, align 4, !tbaa !3
  %.pre1066.i = load i32* %nrowA.i773, align 4, !tbaa !3
  br label %for.body5.i792

for.body5.i792:                                   ; preds = %for.end291.i, %for.body5.lr.ph.i788
  %754 = phi i32 [ %753, %for.body5.lr.ph.i788 ], [ %848, %for.end291.i ]
  %755 = phi i32 [ %.pre1066.i, %for.body5.lr.ph.i788 ], [ %850, %for.end291.i ]
  %756 = phi i32 [ %.pre.i787, %for.body5.lr.ph.i788 ], [ %849, %for.end291.i ]
  %jcolB.01046.i = phi i32 [ 0, %for.body5.lr.ph.i788 ], [ %add296.i, %for.end291.i ]
  %colB0.01044.i = phi double* [ %752, %for.body5.lr.ph.i788 ], [ %add.ptr294.i, %for.end291.i ]
  %mul.i789 = shl nsw i32 %756, 1
  %idx.ext.i790 = sext i32 %mul.i789 to i64
  %add.ptr.sum.i791 = shl nsw i64 %idx.ext.i790, 1
  %cmp101038.i = icmp sgt i32 %755, 0
  br i1 %cmp101038.i, label %for.body11.i, label %for.end291.i

for.body11.i:                                     ; preds = %for.body5.i792, %if.end287.i.for.body11.i_crit_edge
  %indvars.iv1057.i = phi i64 [ %indvars.iv.next1058.i, %if.end287.i.for.body11.i_crit_edge ], [ 0, %for.body5.i792 ]
  %kk.01041.i = phi i32 [ %kk.1.i862, %if.end287.i.for.body11.i_crit_edge ], [ 0, %for.body5.i792 ]
  %irowA.11040.i = phi i32 [ %add288.i, %if.end287.i.for.body11.i_crit_edge ], [ 0, %for.body5.i792 ]
  %757 = load i32** %pivotsizes.i775, align 8, !tbaa !0
  %arrayidx13.i793 = getelementptr inbounds i32* %757, i64 %indvars.iv1057.i
  %758 = load i32* %arrayidx13.i793, align 4, !tbaa !3
  switch i32 %758, label %if.end287.i [
    i32 1, label %if.then15.i
    i32 2, label %if.then86.i
  ]

if.then15.i:                                      ; preds = %for.body11.i
  %mul16.i794 = shl nsw i32 %kk.01041.i, 1
  %idxprom17.i795 = sext i32 %mul16.i794 to i64
  %759 = load double** %entriesA.i767, align 8, !tbaa !0
  %arrayidx18.i796 = getelementptr inbounds double* %759, i64 %idxprom17.i795
  %760 = load double* %arrayidx18.i796, align 8, !tbaa !4
  %add201023.i = or i32 %mul16.i794, 1
  %idxprom21.i797 = sext i32 %add201023.i to i64
  %arrayidx22.i798 = getelementptr inbounds double* %759, i64 %idxprom21.i797
  %761 = load double* %arrayidx22.i798, align 8, !tbaa !4
  %inc23.i = add nsw i32 %kk.01041.i, 1
  %call24.i = call i32 @Zrecip(double %760, double %761, double* %cr00.i, double* %ci00.i) #5
  %mul25.i799 = shl nsw i32 %irowA.11040.i, 1
  %idxprom26.i800 = sext i32 %mul25.i799 to i64
  %arrayidx27.i801 = getelementptr inbounds double* %colB0.01044.i, i64 %idxprom26.i800
  %762 = load double* %arrayidx27.i801, align 8, !tbaa !4
  %add291024.i = or i32 %mul25.i799, 1
  %idxprom30.i = sext i32 %add291024.i to i64
  %arrayidx31.i802 = getelementptr inbounds double* %colB0.01044.i, i64 %idxprom30.i
  %763 = load double* %arrayidx31.i802, align 8, !tbaa !4
  %764 = load double* %cr00.i, align 8, !tbaa !4
  %mul32.i = fmul double %762, %764
  %765 = load double* %ci00.i, align 8, !tbaa !4
  %mul33.i = fmul double %763, %765
  %sub34.i803 = fsub double %mul32.i, %mul33.i
  store double %sub34.i803, double* %arrayidx27.i801, align 8, !tbaa !4
  %766 = load double* %ci00.i, align 8, !tbaa !4
  %mul38.i804 = fmul double %762, %766
  %767 = load double* %cr00.i, align 8, !tbaa !4
  %mul39.i805 = fmul double %763, %767
  %add40.i = fadd double %mul38.i804, %mul39.i805
  store double %add40.i, double* %arrayidx31.i802, align 8, !tbaa !4
  %add.ptr.sum1025.i = add i64 %idxprom26.i800, %idx.ext.i790
  %arrayidx47.i806 = getelementptr inbounds double* %colB0.01044.i, i64 %add.ptr.sum1025.i
  %768 = load double* %arrayidx47.i806, align 8, !tbaa !4
  %add.ptr.sum1026.i = add i64 %idxprom30.i, %idx.ext.i790
  %arrayidx51.i = getelementptr inbounds double* %colB0.01044.i, i64 %add.ptr.sum1026.i
  %769 = load double* %arrayidx51.i, align 8, !tbaa !4
  %770 = load double* %cr00.i, align 8, !tbaa !4
  %mul52.i807 = fmul double %768, %770
  %771 = load double* %ci00.i, align 8, !tbaa !4
  %mul53.i808 = fmul double %769, %771
  %sub54.i809 = fsub double %mul52.i807, %mul53.i808
  store double %sub54.i809, double* %arrayidx47.i806, align 8, !tbaa !4
  %772 = load double* %ci00.i, align 8, !tbaa !4
  %mul58.i810 = fmul double %768, %772
  %773 = load double* %cr00.i, align 8, !tbaa !4
  %mul59.i = fmul double %769, %773
  %add60.i = fadd double %mul58.i810, %mul59.i
  store double %add60.i, double* %arrayidx51.i, align 8, !tbaa !4
  %add.ptr8.sum1027.i = add i64 %idxprom26.i800, %add.ptr.sum.i791
  %arrayidx67.i811 = getelementptr inbounds double* %colB0.01044.i, i64 %add.ptr8.sum1027.i
  %774 = load double* %arrayidx67.i811, align 8, !tbaa !4
  %add.ptr8.sum1028.i = add i64 %idxprom30.i, %add.ptr.sum.i791
  %arrayidx71.i812 = getelementptr inbounds double* %colB0.01044.i, i64 %add.ptr8.sum1028.i
  %775 = load double* %arrayidx71.i812, align 8, !tbaa !4
  %776 = load double* %cr00.i, align 8, !tbaa !4
  %mul72.i813 = fmul double %774, %776
  %777 = load double* %ci00.i, align 8, !tbaa !4
  %mul73.i814 = fmul double %775, %777
  %sub74.i815 = fsub double %mul72.i813, %mul73.i814
  store double %sub74.i815, double* %arrayidx67.i811, align 8, !tbaa !4
  %778 = load double* %ci00.i, align 8, !tbaa !4
  %mul78.i = fmul double %774, %778
  %779 = load double* %cr00.i, align 8, !tbaa !4
  %mul79.i = fmul double %775, %779
  %add80.i816 = fadd double %mul78.i, %mul79.i
  store double %add80.i816, double* %arrayidx71.i812, align 8, !tbaa !4
  br label %if.end287.i

if.then86.i:                                      ; preds = %for.body11.i
  %mul87.i = shl i32 %kk.01041.i, 1
  %idxprom88.i = sext i32 %mul87.i to i64
  %780 = load double** %entriesA.i767, align 8, !tbaa !0
  %arrayidx89.i817 = getelementptr inbounds double* %780, i64 %idxprom88.i
  %781 = load double* %arrayidx89.i817, align 8, !tbaa !4
  %add911011.i = or i32 %mul87.i, 1
  %idxprom92.i = sext i32 %add911011.i to i64
  %arrayidx93.i818 = getelementptr inbounds double* %780, i64 %idxprom92.i
  %782 = load double* %arrayidx93.i818, align 8, !tbaa !4
  %mul95.i = add i32 %mul87.i, 2
  %idxprom96.i = sext i32 %mul95.i to i64
  %arrayidx97.i = getelementptr inbounds double* %780, i64 %idxprom96.i
  %783 = load double* %arrayidx97.i, align 8, !tbaa !4
  %add991012.i = or i32 %mul95.i, 1
  %idxprom100.i = sext i32 %add991012.i to i64
  %arrayidx101.i819 = getelementptr inbounds double* %780, i64 %idxprom100.i
  %784 = load double* %arrayidx101.i819, align 8, !tbaa !4
  %mul103.i = add i32 %mul87.i, 4
  %idxprom104.i = sext i32 %mul103.i to i64
  %arrayidx105.i820 = getelementptr inbounds double* %780, i64 %idxprom104.i
  %785 = load double* %arrayidx105.i820, align 8, !tbaa !4
  %add1071013.i = or i32 %mul103.i, 1
  %idxprom108.i821 = sext i32 %add1071013.i to i64
  %arrayidx109.i822 = getelementptr inbounds double* %780, i64 %idxprom108.i821
  %786 = load double* %arrayidx109.i822, align 8, !tbaa !4
  %inc110.i = add nsw i32 %kk.01041.i, 3
  %call111.i = call i32 @Zrecip2(double %781, double %782, double %783, double %784, double %783, double %784, double %785, double %786, double* %cr00.i, double* %ci00.i, double* %cr01.i, double* %ci01.i, double* null, double* null, double* %cr11.i, double* %ci11.i) #5
  %mul112.i823 = shl nsw i32 %irowA.11040.i, 1
  %idxprom113.i824 = sext i32 %mul112.i823 to i64
  %arrayidx114.i825 = getelementptr inbounds double* %colB0.01044.i, i64 %idxprom113.i824
  %787 = load double* %arrayidx114.i825, align 8, !tbaa !4
  %add1161014.i = or i32 %mul112.i823, 1
  %idxprom117.i = sext i32 %add1161014.i to i64
  %arrayidx118.i826 = getelementptr inbounds double* %colB0.01044.i, i64 %idxprom117.i
  %788 = load double* %arrayidx118.i826, align 8, !tbaa !4
  %add120.i = add nsw i32 %mul112.i823, 2
  %idxprom121.i827 = sext i32 %add120.i to i64
  %arrayidx122.i828 = getelementptr inbounds double* %colB0.01044.i, i64 %idxprom121.i827
  %789 = load double* %arrayidx122.i828, align 8, !tbaa !4
  %add124.i = add nsw i32 %mul112.i823, 3
  %idxprom125.i829 = sext i32 %add124.i to i64
  %arrayidx126.i830 = getelementptr inbounds double* %colB0.01044.i, i64 %idxprom125.i829
  %790 = load double* %arrayidx126.i830, align 8, !tbaa !4
  %791 = load double* %cr00.i, align 8, !tbaa !4
  %mul127.i831 = fmul double %787, %791
  %792 = load double* %ci00.i, align 8, !tbaa !4
  %mul128.i832 = fmul double %788, %792
  %sub129.i = fsub double %mul127.i831, %mul128.i832
  %793 = load double* %cr01.i, align 8, !tbaa !4
  %mul130.i833 = fmul double %789, %793
  %add131.i834 = fadd double %sub129.i, %mul130.i833
  %794 = load double* %ci01.i, align 8, !tbaa !4
  %mul132.i835 = fmul double %790, %794
  %sub133.i836 = fsub double %add131.i834, %mul132.i835
  store double %sub133.i836, double* %arrayidx114.i825, align 8, !tbaa !4
  %795 = load double* %cr00.i, align 8, !tbaa !4
  %mul137.i837 = fmul double %788, %795
  %796 = load double* %ci00.i, align 8, !tbaa !4
  %mul138.i838 = fmul double %787, %796
  %add139.i839 = fadd double %mul137.i837, %mul138.i838
  %797 = load double* %cr01.i, align 8, !tbaa !4
  %mul140.i840 = fmul double %790, %797
  %add141.i841 = fadd double %add139.i839, %mul140.i840
  %798 = load double* %ci01.i, align 8, !tbaa !4
  %mul142.i842 = fmul double %789, %798
  %add143.i843 = fadd double %add141.i841, %mul142.i842
  store double %add143.i843, double* %arrayidx118.i826, align 8, !tbaa !4
  %799 = load double* %cr01.i, align 8, !tbaa !4
  %mul148.i844 = fmul double %787, %799
  %800 = load double* %ci01.i, align 8, !tbaa !4
  %mul149.i = fmul double %788, %800
  %sub150.i845 = fsub double %mul148.i844, %mul149.i
  %801 = load double* %cr11.i, align 8, !tbaa !4
  %mul151.i846 = fmul double %789, %801
  %add152.i = fadd double %sub150.i845, %mul151.i846
  %802 = load double* %ci11.i, align 8, !tbaa !4
  %mul153.i847 = fmul double %790, %802
  %sub154.i848 = fsub double %add152.i, %mul153.i847
  store double %sub154.i848, double* %arrayidx122.i828, align 8, !tbaa !4
  %803 = load double* %cr01.i, align 8, !tbaa !4
  %mul159.i = fmul double %788, %803
  %804 = load double* %ci01.i, align 8, !tbaa !4
  %mul160.i849 = fmul double %787, %804
  %add161.i = fadd double %mul159.i, %mul160.i849
  %805 = load double* %cr11.i, align 8, !tbaa !4
  %mul162.i = fmul double %790, %805
  %add163.i = fadd double %add161.i, %mul162.i
  %806 = load double* %ci11.i, align 8, !tbaa !4
  %mul164.i = fmul double %789, %806
  %add165.i = fadd double %add163.i, %mul164.i
  store double %add165.i, double* %arrayidx126.i830, align 8, !tbaa !4
  %add.ptr.sum1015.i = add i64 %idxprom113.i824, %idx.ext.i790
  %arrayidx172.i = getelementptr inbounds double* %colB0.01044.i, i64 %add.ptr.sum1015.i
  %807 = load double* %arrayidx172.i, align 8, !tbaa !4
  %add.ptr.sum1016.i = add i64 %idxprom117.i, %idx.ext.i790
  %arrayidx176.i850 = getelementptr inbounds double* %colB0.01044.i, i64 %add.ptr.sum1016.i
  %808 = load double* %arrayidx176.i850, align 8, !tbaa !4
  %add.ptr.sum1017.i = add i64 %idxprom121.i827, %idx.ext.i790
  %arrayidx180.i851 = getelementptr inbounds double* %colB0.01044.i, i64 %add.ptr.sum1017.i
  %809 = load double* %arrayidx180.i851, align 8, !tbaa !4
  %add.ptr.sum1018.i = add i64 %idxprom125.i829, %idx.ext.i790
  %arrayidx184.i852 = getelementptr inbounds double* %colB0.01044.i, i64 %add.ptr.sum1018.i
  %810 = load double* %arrayidx184.i852, align 8, !tbaa !4
  %811 = load double* %cr00.i, align 8, !tbaa !4
  %mul185.i853 = fmul double %807, %811
  %812 = load double* %ci00.i, align 8, !tbaa !4
  %mul186.i854 = fmul double %808, %812
  %sub187.i855 = fsub double %mul185.i853, %mul186.i854
  %813 = load double* %cr01.i, align 8, !tbaa !4
  %mul188.i = fmul double %809, %813
  %add189.i = fadd double %sub187.i855, %mul188.i
  %814 = load double* %ci01.i, align 8, !tbaa !4
  %mul190.i = fmul double %810, %814
  %sub191.i = fsub double %add189.i, %mul190.i
  store double %sub191.i, double* %arrayidx172.i, align 8, !tbaa !4
  %815 = load double* %cr00.i, align 8, !tbaa !4
  %mul195.i856 = fmul double %808, %815
  %816 = load double* %ci00.i, align 8, !tbaa !4
  %mul196.i = fmul double %807, %816
  %add197.i = fadd double %mul195.i856, %mul196.i
  %817 = load double* %cr01.i, align 8, !tbaa !4
  %mul198.i857 = fmul double %810, %817
  %add199.i = fadd double %add197.i, %mul198.i857
  %818 = load double* %ci01.i, align 8, !tbaa !4
  %mul200.i = fmul double %809, %818
  %add201.i = fadd double %add199.i, %mul200.i
  store double %add201.i, double* %arrayidx176.i850, align 8, !tbaa !4
  %819 = load double* %cr01.i, align 8, !tbaa !4
  %mul206.i858 = fmul double %807, %819
  %820 = load double* %ci01.i, align 8, !tbaa !4
  %mul207.i = fmul double %808, %820
  %sub208.i859 = fsub double %mul206.i858, %mul207.i
  %821 = load double* %cr11.i, align 8, !tbaa !4
  %mul209.i860 = fmul double %809, %821
  %add210.i = fadd double %sub208.i859, %mul209.i860
  %822 = load double* %ci11.i, align 8, !tbaa !4
  %mul211.i = fmul double %810, %822
  %sub212.i = fsub double %add210.i, %mul211.i
  store double %sub212.i, double* %arrayidx180.i851, align 8, !tbaa !4
  %823 = load double* %cr01.i, align 8, !tbaa !4
  %mul217.i = fmul double %808, %823
  %824 = load double* %ci01.i, align 8, !tbaa !4
  %mul218.i861 = fmul double %807, %824
  %add219.i = fadd double %mul217.i, %mul218.i861
  %825 = load double* %cr11.i, align 8, !tbaa !4
  %mul220.i = fmul double %810, %825
  %add221.i = fadd double %add219.i, %mul220.i
  %826 = load double* %ci11.i, align 8, !tbaa !4
  %mul222.i = fmul double %809, %826
  %add223.i = fadd double %add221.i, %mul222.i
  store double %add223.i, double* %arrayidx184.i852, align 8, !tbaa !4
  %add.ptr8.sum1019.i = add i64 %idxprom113.i824, %add.ptr.sum.i791
  %arrayidx230.i = getelementptr inbounds double* %colB0.01044.i, i64 %add.ptr8.sum1019.i
  %827 = load double* %arrayidx230.i, align 8, !tbaa !4
  %add.ptr8.sum1020.i = add i64 %idxprom117.i, %add.ptr.sum.i791
  %arrayidx234.i = getelementptr inbounds double* %colB0.01044.i, i64 %add.ptr8.sum1020.i
  %828 = load double* %arrayidx234.i, align 8, !tbaa !4
  %add.ptr8.sum1021.i = add i64 %idxprom121.i827, %add.ptr.sum.i791
  %arrayidx238.i = getelementptr inbounds double* %colB0.01044.i, i64 %add.ptr8.sum1021.i
  %829 = load double* %arrayidx238.i, align 8, !tbaa !4
  %add.ptr8.sum1022.i = add i64 %idxprom125.i829, %add.ptr.sum.i791
  %arrayidx242.i = getelementptr inbounds double* %colB0.01044.i, i64 %add.ptr8.sum1022.i
  %830 = load double* %arrayidx242.i, align 8, !tbaa !4
  %831 = load double* %cr00.i, align 8, !tbaa !4
  %mul243.i = fmul double %827, %831
  %832 = load double* %ci00.i, align 8, !tbaa !4
  %mul244.i = fmul double %828, %832
  %sub245.i = fsub double %mul243.i, %mul244.i
  %833 = load double* %cr01.i, align 8, !tbaa !4
  %mul246.i = fmul double %829, %833
  %add247.i = fadd double %sub245.i, %mul246.i
  %834 = load double* %ci01.i, align 8, !tbaa !4
  %mul248.i = fmul double %830, %834
  %sub249.i = fsub double %add247.i, %mul248.i
  store double %sub249.i, double* %arrayidx230.i, align 8, !tbaa !4
  %835 = load double* %cr00.i, align 8, !tbaa !4
  %mul253.i = fmul double %828, %835
  %836 = load double* %ci00.i, align 8, !tbaa !4
  %mul254.i = fmul double %827, %836
  %add255.i = fadd double %mul253.i, %mul254.i
  %837 = load double* %cr01.i, align 8, !tbaa !4
  %mul256.i = fmul double %830, %837
  %add257.i = fadd double %add255.i, %mul256.i
  %838 = load double* %ci01.i, align 8, !tbaa !4
  %mul258.i = fmul double %829, %838
  %add259.i = fadd double %add257.i, %mul258.i
  store double %add259.i, double* %arrayidx234.i, align 8, !tbaa !4
  %839 = load double* %cr01.i, align 8, !tbaa !4
  %mul264.i = fmul double %827, %839
  %840 = load double* %ci01.i, align 8, !tbaa !4
  %mul265.i = fmul double %828, %840
  %sub266.i = fsub double %mul264.i, %mul265.i
  %841 = load double* %cr11.i, align 8, !tbaa !4
  %mul267.i = fmul double %829, %841
  %add268.i = fadd double %sub266.i, %mul267.i
  %842 = load double* %ci11.i, align 8, !tbaa !4
  %mul269.i = fmul double %830, %842
  %sub270.i = fsub double %add268.i, %mul269.i
  store double %sub270.i, double* %arrayidx238.i, align 8, !tbaa !4
  %843 = load double* %cr01.i, align 8, !tbaa !4
  %mul275.i = fmul double %828, %843
  %844 = load double* %ci01.i, align 8, !tbaa !4
  %mul276.i = fmul double %827, %844
  %add277.i = fadd double %mul275.i, %mul276.i
  %845 = load double* %cr11.i, align 8, !tbaa !4
  %mul278.i = fmul double %830, %845
  %add279.i = fadd double %add277.i, %mul278.i
  %846 = load double* %ci11.i, align 8, !tbaa !4
  %mul280.i = fmul double %829, %846
  %add281.i = fadd double %add279.i, %mul280.i
  store double %add281.i, double* %arrayidx242.i, align 8, !tbaa !4
  br label %if.end287.i

if.end287.i:                                      ; preds = %if.then86.i, %if.then15.i, %for.body11.i
  %kk.1.i862 = phi i32 [ %inc23.i, %if.then15.i ], [ %inc110.i, %if.then86.i ], [ %kk.01041.i, %for.body11.i ]
  %add288.i = add nsw i32 %758, %irowA.11040.i
  %847 = load i32* %nrowA.i773, align 4, !tbaa !3
  %cmp10.i = icmp slt i32 %add288.i, %847
  br i1 %cmp10.i, label %if.end287.i.for.body11.i_crit_edge, label %for.cond9.for.end291_crit_edge.i

if.end287.i.for.body11.i_crit_edge:               ; preds = %if.end287.i
  %indvars.iv.next1058.i = add i64 %indvars.iv1057.i, 1
  br label %for.body11.i

for.cond9.for.end291_crit_edge.i:                 ; preds = %if.end287.i
  %.pre1067.i = load i32* %nrowB.i774, align 4, !tbaa !3
  %.pre1068.i = load i32* %ncolB.i771, align 4, !tbaa !3
  br label %for.end291.i

for.end291.i:                                     ; preds = %for.cond9.for.end291_crit_edge.i, %for.body5.i792
  %848 = phi i32 [ %.pre1068.i, %for.cond9.for.end291_crit_edge.i ], [ %754, %for.body5.i792 ]
  %849 = phi i32 [ %.pre1067.i, %for.cond9.for.end291_crit_edge.i ], [ %756, %for.body5.i792 ]
  %850 = phi i32 [ %847, %for.cond9.for.end291_crit_edge.i ], [ %755, %for.body5.i792 ]
  %mul292.i = shl nsw i32 %849, 1
  %idx.ext293.i = sext i32 %mul292.i to i64
  %add.ptr8.sum.i = add i64 %idx.ext293.i, %add.ptr.sum.i791
  %add.ptr294.i = getelementptr inbounds double* %colB0.01044.i, i64 %add.ptr8.sum.i
  %add296.i = add nsw i32 %jcolB.01046.i, 3
  %sub.i863 = add nsw i32 %848, -2
  %cmp4.i864 = icmp slt i32 %add296.i, %sub.i863
  br i1 %cmp4.i864, label %for.body5.i792, label %for.end297.i

for.end297.i:                                     ; preds = %for.end291.i, %for.end.i786
  %sub.lcssa.i865 = phi i32 [ %sub1042.i, %for.end.i786 ], [ %sub.i863, %for.end291.i ]
  %.lcssa.i866 = phi i32 [ %753, %for.end.i786 ], [ %848, %for.end291.i ]
  %jcolB.0.lcssa.i867 = phi i32 [ 0, %for.end.i786 ], [ %add296.i, %for.end291.i ]
  %colB0.0.lcssa.i868 = phi double* [ %752, %for.end.i786 ], [ %add.ptr294.i, %for.end291.i ]
  %cmp299.i = icmp eq i32 %jcolB.0.lcssa.i867, %sub.lcssa.i865
  br i1 %cmp299.i, label %if.then300.i, label %if.else510.i

if.then300.i:                                     ; preds = %for.end297.i
  %851 = load i32* %nrowB.i774, align 4, !tbaa !3
  %mul301.i = shl nsw i32 %851, 1
  %idx.ext302.i = sext i32 %mul301.i to i64
  %852 = load i32* %nrowA.i773, align 4, !tbaa !3
  %cmp3051029.i = icmp sgt i32 %852, 0
  br i1 %cmp3051029.i, label %for.body306.i, label %sw.epilog41

for.body306.i:                                    ; preds = %if.then300.i, %if.end505.i.for.body306.i_crit_edge
  %indvars.iv.i869 = phi i64 [ %indvars.iv.next.i871, %if.end505.i.for.body306.i_crit_edge ], [ 0, %if.then300.i ]
  %kk.21032.i = phi i32 [ %kk.3.i870, %if.end505.i.for.body306.i_crit_edge ], [ 0, %if.then300.i ]
  %irowA.21031.i = phi i32 [ %add506.i, %if.end505.i.for.body306.i_crit_edge ], [ 0, %if.then300.i ]
  %853 = load i32** %pivotsizes.i775, align 8, !tbaa !0
  %arrayidx308.i = getelementptr inbounds i32* %853, i64 %indvars.iv.i869
  %854 = load i32* %arrayidx308.i, align 4, !tbaa !3
  switch i32 %854, label %if.end505.i [
    i32 1, label %if.then310.i
    i32 2, label %if.then362.i
  ]

if.then310.i:                                     ; preds = %for.body306.i
  %mul311.i = shl nsw i32 %kk.21032.i, 1
  %idxprom312.i = sext i32 %mul311.i to i64
  %855 = load double** %entriesA.i767, align 8, !tbaa !0
  %arrayidx313.i = getelementptr inbounds double* %855, i64 %idxprom312.i
  %856 = load double* %arrayidx313.i, align 8, !tbaa !4
  %add3151007.i = or i32 %mul311.i, 1
  %idxprom316.i = sext i32 %add3151007.i to i64
  %arrayidx317.i = getelementptr inbounds double* %855, i64 %idxprom316.i
  %857 = load double* %arrayidx317.i, align 8, !tbaa !4
  %inc318.i = add nsw i32 %kk.21032.i, 1
  %call319.i = call i32 @Zrecip(double %856, double %857, double* %cr00.i, double* %ci00.i) #5
  %mul320.i = shl nsw i32 %irowA.21031.i, 1
  %idxprom321.i = sext i32 %mul320.i to i64
  %arrayidx322.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %idxprom321.i
  %858 = load double* %arrayidx322.i, align 8, !tbaa !4
  %add3241008.i = or i32 %mul320.i, 1
  %idxprom325.i = sext i32 %add3241008.i to i64
  %arrayidx326.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %idxprom325.i
  %859 = load double* %arrayidx326.i, align 8, !tbaa !4
  %860 = load double* %cr00.i, align 8, !tbaa !4
  %mul327.i = fmul double %858, %860
  %861 = load double* %ci00.i, align 8, !tbaa !4
  %mul328.i = fmul double %859, %861
  %sub329.i = fsub double %mul327.i, %mul328.i
  store double %sub329.i, double* %arrayidx322.i, align 8, !tbaa !4
  %862 = load double* %ci00.i, align 8, !tbaa !4
  %mul333.i = fmul double %858, %862
  %863 = load double* %cr00.i, align 8, !tbaa !4
  %mul334.i = fmul double %859, %863
  %add335.i = fadd double %mul333.i, %mul334.i
  store double %add335.i, double* %arrayidx326.i, align 8, !tbaa !4
  %add.ptr303.sum1009.i = add i64 %idxprom321.i, %idx.ext302.i
  %arrayidx342.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %add.ptr303.sum1009.i
  %864 = load double* %arrayidx342.i, align 8, !tbaa !4
  %add.ptr303.sum1010.i = add i64 %idxprom325.i, %idx.ext302.i
  %arrayidx346.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %add.ptr303.sum1010.i
  %865 = load double* %arrayidx346.i, align 8, !tbaa !4
  %866 = load double* %cr00.i, align 8, !tbaa !4
  %mul347.i = fmul double %864, %866
  %867 = load double* %ci00.i, align 8, !tbaa !4
  %mul348.i = fmul double %865, %867
  %sub349.i = fsub double %mul347.i, %mul348.i
  store double %sub349.i, double* %arrayidx342.i, align 8, !tbaa !4
  %868 = load double* %ci00.i, align 8, !tbaa !4
  %mul353.i = fmul double %864, %868
  %869 = load double* %cr00.i, align 8, !tbaa !4
  %mul354.i = fmul double %865, %869
  %add355.i = fadd double %mul353.i, %mul354.i
  store double %add355.i, double* %arrayidx346.i, align 8, !tbaa !4
  br label %if.end505.i

if.then362.i:                                     ; preds = %for.body306.i
  %mul363.i = shl i32 %kk.21032.i, 1
  %idxprom364.i = sext i32 %mul363.i to i64
  %870 = load double** %entriesA.i767, align 8, !tbaa !0
  %arrayidx365.i = getelementptr inbounds double* %870, i64 %idxprom364.i
  %871 = load double* %arrayidx365.i, align 8, !tbaa !4
  %add3671000.i = or i32 %mul363.i, 1
  %idxprom368.i = sext i32 %add3671000.i to i64
  %arrayidx369.i = getelementptr inbounds double* %870, i64 %idxprom368.i
  %872 = load double* %arrayidx369.i, align 8, !tbaa !4
  %mul371.i = add i32 %mul363.i, 2
  %idxprom372.i = sext i32 %mul371.i to i64
  %arrayidx373.i = getelementptr inbounds double* %870, i64 %idxprom372.i
  %873 = load double* %arrayidx373.i, align 8, !tbaa !4
  %add3751001.i = or i32 %mul371.i, 1
  %idxprom376.i = sext i32 %add3751001.i to i64
  %arrayidx377.i = getelementptr inbounds double* %870, i64 %idxprom376.i
  %874 = load double* %arrayidx377.i, align 8, !tbaa !4
  %mul379.i = add i32 %mul363.i, 4
  %idxprom380.i = sext i32 %mul379.i to i64
  %arrayidx381.i = getelementptr inbounds double* %870, i64 %idxprom380.i
  %875 = load double* %arrayidx381.i, align 8, !tbaa !4
  %add3831002.i = or i32 %mul379.i, 1
  %idxprom384.i = sext i32 %add3831002.i to i64
  %arrayidx385.i = getelementptr inbounds double* %870, i64 %idxprom384.i
  %876 = load double* %arrayidx385.i, align 8, !tbaa !4
  %inc386.i = add nsw i32 %kk.21032.i, 3
  %call387.i = call i32 @Zrecip2(double %871, double %872, double %873, double %874, double %873, double %874, double %875, double %876, double* %cr00.i, double* %ci00.i, double* %cr01.i, double* %ci01.i, double* null, double* null, double* %cr11.i, double* %ci11.i) #5
  %mul388.i = shl nsw i32 %irowA.21031.i, 1
  %idxprom389.i = sext i32 %mul388.i to i64
  %arrayidx390.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %idxprom389.i
  %877 = load double* %arrayidx390.i, align 8, !tbaa !4
  %add3921003.i = or i32 %mul388.i, 1
  %idxprom393.i = sext i32 %add3921003.i to i64
  %arrayidx394.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %idxprom393.i
  %878 = load double* %arrayidx394.i, align 8, !tbaa !4
  %add396.i = add nsw i32 %mul388.i, 2
  %idxprom397.i = sext i32 %add396.i to i64
  %arrayidx398.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %idxprom397.i
  %879 = load double* %arrayidx398.i, align 8, !tbaa !4
  %add400.i = add nsw i32 %mul388.i, 3
  %idxprom401.i = sext i32 %add400.i to i64
  %arrayidx402.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %idxprom401.i
  %880 = load double* %arrayidx402.i, align 8, !tbaa !4
  %881 = load double* %cr00.i, align 8, !tbaa !4
  %mul403.i = fmul double %877, %881
  %882 = load double* %ci00.i, align 8, !tbaa !4
  %mul404.i = fmul double %878, %882
  %sub405.i = fsub double %mul403.i, %mul404.i
  %883 = load double* %cr01.i, align 8, !tbaa !4
  %mul406.i = fmul double %879, %883
  %add407.i = fadd double %sub405.i, %mul406.i
  %884 = load double* %ci01.i, align 8, !tbaa !4
  %mul408.i = fmul double %880, %884
  %sub409.i = fsub double %add407.i, %mul408.i
  store double %sub409.i, double* %arrayidx390.i, align 8, !tbaa !4
  %885 = load double* %cr00.i, align 8, !tbaa !4
  %mul413.i = fmul double %878, %885
  %886 = load double* %ci00.i, align 8, !tbaa !4
  %mul414.i = fmul double %877, %886
  %add415.i = fadd double %mul413.i, %mul414.i
  %887 = load double* %cr01.i, align 8, !tbaa !4
  %mul416.i = fmul double %880, %887
  %add417.i = fadd double %add415.i, %mul416.i
  %888 = load double* %ci01.i, align 8, !tbaa !4
  %mul418.i = fmul double %879, %888
  %add419.i = fadd double %add417.i, %mul418.i
  store double %add419.i, double* %arrayidx394.i, align 8, !tbaa !4
  %889 = load double* %cr01.i, align 8, !tbaa !4
  %mul424.i = fmul double %877, %889
  %890 = load double* %ci01.i, align 8, !tbaa !4
  %mul425.i = fmul double %878, %890
  %sub426.i = fsub double %mul424.i, %mul425.i
  %891 = load double* %cr11.i, align 8, !tbaa !4
  %mul427.i = fmul double %879, %891
  %add428.i = fadd double %sub426.i, %mul427.i
  %892 = load double* %ci11.i, align 8, !tbaa !4
  %mul429.i = fmul double %880, %892
  %sub430.i = fsub double %add428.i, %mul429.i
  store double %sub430.i, double* %arrayidx398.i, align 8, !tbaa !4
  %893 = load double* %cr01.i, align 8, !tbaa !4
  %mul435.i = fmul double %878, %893
  %894 = load double* %ci01.i, align 8, !tbaa !4
  %mul436.i = fmul double %877, %894
  %add437.i = fadd double %mul435.i, %mul436.i
  %895 = load double* %cr11.i, align 8, !tbaa !4
  %mul438.i = fmul double %880, %895
  %add439.i = fadd double %add437.i, %mul438.i
  %896 = load double* %ci11.i, align 8, !tbaa !4
  %mul440.i = fmul double %879, %896
  %add441.i = fadd double %add439.i, %mul440.i
  store double %add441.i, double* %arrayidx402.i, align 8, !tbaa !4
  %add.ptr303.sum.i = add i64 %idxprom389.i, %idx.ext302.i
  %arrayidx448.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %add.ptr303.sum.i
  %897 = load double* %arrayidx448.i, align 8, !tbaa !4
  %add.ptr303.sum1004.i = add i64 %idxprom393.i, %idx.ext302.i
  %arrayidx452.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %add.ptr303.sum1004.i
  %898 = load double* %arrayidx452.i, align 8, !tbaa !4
  %add.ptr303.sum1005.i = add i64 %idxprom397.i, %idx.ext302.i
  %arrayidx456.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %add.ptr303.sum1005.i
  %899 = load double* %arrayidx456.i, align 8, !tbaa !4
  %add.ptr303.sum1006.i = add i64 %idxprom401.i, %idx.ext302.i
  %arrayidx460.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %add.ptr303.sum1006.i
  %900 = load double* %arrayidx460.i, align 8, !tbaa !4
  %901 = load double* %cr00.i, align 8, !tbaa !4
  %mul461.i = fmul double %897, %901
  %902 = load double* %ci00.i, align 8, !tbaa !4
  %mul462.i = fmul double %898, %902
  %sub463.i = fsub double %mul461.i, %mul462.i
  %903 = load double* %cr01.i, align 8, !tbaa !4
  %mul464.i = fmul double %899, %903
  %add465.i = fadd double %sub463.i, %mul464.i
  %904 = load double* %ci01.i, align 8, !tbaa !4
  %mul466.i = fmul double %900, %904
  %sub467.i = fsub double %add465.i, %mul466.i
  store double %sub467.i, double* %arrayidx448.i, align 8, !tbaa !4
  %905 = load double* %cr00.i, align 8, !tbaa !4
  %mul471.i = fmul double %898, %905
  %906 = load double* %ci00.i, align 8, !tbaa !4
  %mul472.i = fmul double %897, %906
  %add473.i = fadd double %mul471.i, %mul472.i
  %907 = load double* %cr01.i, align 8, !tbaa !4
  %mul474.i = fmul double %900, %907
  %add475.i = fadd double %add473.i, %mul474.i
  %908 = load double* %ci01.i, align 8, !tbaa !4
  %mul476.i = fmul double %899, %908
  %add477.i = fadd double %add475.i, %mul476.i
  store double %add477.i, double* %arrayidx452.i, align 8, !tbaa !4
  %909 = load double* %cr01.i, align 8, !tbaa !4
  %mul482.i = fmul double %897, %909
  %910 = load double* %ci01.i, align 8, !tbaa !4
  %mul483.i = fmul double %898, %910
  %sub484.i = fsub double %mul482.i, %mul483.i
  %911 = load double* %cr11.i, align 8, !tbaa !4
  %mul485.i = fmul double %899, %911
  %add486.i = fadd double %sub484.i, %mul485.i
  %912 = load double* %ci11.i, align 8, !tbaa !4
  %mul487.i = fmul double %900, %912
  %sub488.i = fsub double %add486.i, %mul487.i
  store double %sub488.i, double* %arrayidx456.i, align 8, !tbaa !4
  %913 = load double* %cr01.i, align 8, !tbaa !4
  %mul493.i = fmul double %898, %913
  %914 = load double* %ci01.i, align 8, !tbaa !4
  %mul494.i = fmul double %897, %914
  %add495.i = fadd double %mul493.i, %mul494.i
  %915 = load double* %cr11.i, align 8, !tbaa !4
  %mul496.i = fmul double %900, %915
  %add497.i = fadd double %add495.i, %mul496.i
  %916 = load double* %ci11.i, align 8, !tbaa !4
  %mul498.i = fmul double %899, %916
  %add499.i = fadd double %add497.i, %mul498.i
  store double %add499.i, double* %arrayidx460.i, align 8, !tbaa !4
  br label %if.end505.i

if.end505.i:                                      ; preds = %if.then362.i, %if.then310.i, %for.body306.i
  %kk.3.i870 = phi i32 [ %inc318.i, %if.then310.i ], [ %inc386.i, %if.then362.i ], [ %kk.21032.i, %for.body306.i ]
  %add506.i = add nsw i32 %854, %irowA.21031.i
  %917 = load i32* %nrowA.i773, align 4, !tbaa !3
  %cmp305.i = icmp slt i32 %add506.i, %917
  br i1 %cmp305.i, label %if.end505.i.for.body306.i_crit_edge, label %sw.epilog41

if.end505.i.for.body306.i_crit_edge:              ; preds = %if.end505.i
  %indvars.iv.next.i871 = add i64 %indvars.iv.i869, 1
  br label %for.body306.i

if.else510.i:                                     ; preds = %for.end297.i
  %sub511.i = add nsw i32 %.lcssa.i866, -1
  %cmp512.i = icmp eq i32 %jcolB.0.lcssa.i867, %sub511.i
  br i1 %cmp512.i, label %for.cond514.preheader.i, label %sw.epilog41

for.cond514.preheader.i:                          ; preds = %if.else510.i
  %918 = load i32* %nrowA.i773, align 4, !tbaa !3
  %cmp5151034.i = icmp sgt i32 %918, 0
  br i1 %cmp5151034.i, label %for.body516.i, label %sw.epilog41

for.body516.i:                                    ; preds = %for.cond514.preheader.i, %if.end637.i.for.body516.i_crit_edge
  %indvars.iv1055.i = phi i64 [ %indvars.iv.next1056.i, %if.end637.i.for.body516.i_crit_edge ], [ 0, %for.cond514.preheader.i ]
  %kk.41037.i = phi i32 [ %kk.5.i872, %if.end637.i.for.body516.i_crit_edge ], [ 0, %for.cond514.preheader.i ]
  %irowA.31036.i = phi i32 [ %add638.i, %if.end637.i.for.body516.i_crit_edge ], [ 0, %for.cond514.preheader.i ]
  %919 = load i32** %pivotsizes.i775, align 8, !tbaa !0
  %arrayidx518.i = getelementptr inbounds i32* %919, i64 %indvars.iv1055.i
  %920 = load i32* %arrayidx518.i, align 4, !tbaa !3
  switch i32 %920, label %if.end637.i [
    i32 1, label %if.then520.i
    i32 2, label %if.then552.i
  ]

if.then520.i:                                     ; preds = %for.body516.i
  %mul521.i = shl nsw i32 %kk.41037.i, 1
  %idxprom522.i = sext i32 %mul521.i to i64
  %921 = load double** %entriesA.i767, align 8, !tbaa !0
  %arrayidx523.i = getelementptr inbounds double* %921, i64 %idxprom522.i
  %922 = load double* %arrayidx523.i, align 8, !tbaa !4
  %add525998.i = or i32 %mul521.i, 1
  %idxprom526.i = sext i32 %add525998.i to i64
  %arrayidx527.i = getelementptr inbounds double* %921, i64 %idxprom526.i
  %923 = load double* %arrayidx527.i, align 8, !tbaa !4
  %inc528.i = add nsw i32 %kk.41037.i, 1
  %call529.i = call i32 @Zrecip(double %922, double %923, double* %cr00.i, double* %ci00.i) #5
  %mul530.i = shl nsw i32 %irowA.31036.i, 1
  %idxprom531.i = sext i32 %mul530.i to i64
  %arrayidx532.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %idxprom531.i
  %924 = load double* %arrayidx532.i, align 8, !tbaa !4
  %add534999.i = or i32 %mul530.i, 1
  %idxprom535.i = sext i32 %add534999.i to i64
  %arrayidx536.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %idxprom535.i
  %925 = load double* %arrayidx536.i, align 8, !tbaa !4
  %926 = load double* %cr00.i, align 8, !tbaa !4
  %mul537.i = fmul double %924, %926
  %927 = load double* %ci00.i, align 8, !tbaa !4
  %mul538.i = fmul double %925, %927
  %sub539.i = fsub double %mul537.i, %mul538.i
  store double %sub539.i, double* %arrayidx532.i, align 8, !tbaa !4
  %928 = load double* %ci00.i, align 8, !tbaa !4
  %mul543.i = fmul double %924, %928
  %929 = load double* %cr00.i, align 8, !tbaa !4
  %mul544.i = fmul double %925, %929
  %add545.i = fadd double %mul543.i, %mul544.i
  store double %add545.i, double* %arrayidx536.i, align 8, !tbaa !4
  br label %if.end637.i

if.then552.i:                                     ; preds = %for.body516.i
  %mul553.i = shl i32 %kk.41037.i, 1
  %idxprom554.i = sext i32 %mul553.i to i64
  %930 = load double** %entriesA.i767, align 8, !tbaa !0
  %arrayidx555.i = getelementptr inbounds double* %930, i64 %idxprom554.i
  %931 = load double* %arrayidx555.i, align 8, !tbaa !4
  %add557994.i = or i32 %mul553.i, 1
  %idxprom558.i = sext i32 %add557994.i to i64
  %arrayidx559.i = getelementptr inbounds double* %930, i64 %idxprom558.i
  %932 = load double* %arrayidx559.i, align 8, !tbaa !4
  %mul561.i = add i32 %mul553.i, 2
  %idxprom562.i = sext i32 %mul561.i to i64
  %arrayidx563.i = getelementptr inbounds double* %930, i64 %idxprom562.i
  %933 = load double* %arrayidx563.i, align 8, !tbaa !4
  %add565995.i = or i32 %mul561.i, 1
  %idxprom566.i = sext i32 %add565995.i to i64
  %arrayidx567.i = getelementptr inbounds double* %930, i64 %idxprom566.i
  %934 = load double* %arrayidx567.i, align 8, !tbaa !4
  %mul569.i = add i32 %mul553.i, 4
  %idxprom570.i = sext i32 %mul569.i to i64
  %arrayidx571.i = getelementptr inbounds double* %930, i64 %idxprom570.i
  %935 = load double* %arrayidx571.i, align 8, !tbaa !4
  %add573996.i = or i32 %mul569.i, 1
  %idxprom574.i = sext i32 %add573996.i to i64
  %arrayidx575.i = getelementptr inbounds double* %930, i64 %idxprom574.i
  %936 = load double* %arrayidx575.i, align 8, !tbaa !4
  %inc576.i = add nsw i32 %kk.41037.i, 3
  %call577.i = call i32 @Zrecip2(double %931, double %932, double %933, double %934, double %933, double %934, double %935, double %936, double* %cr00.i, double* %ci00.i, double* %cr01.i, double* %ci01.i, double* null, double* null, double* %cr11.i, double* %ci11.i) #5
  %mul578.i = shl nsw i32 %irowA.31036.i, 1
  %idxprom579.i = sext i32 %mul578.i to i64
  %arrayidx580.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %idxprom579.i
  %937 = load double* %arrayidx580.i, align 8, !tbaa !4
  %add582997.i = or i32 %mul578.i, 1
  %idxprom583.i = sext i32 %add582997.i to i64
  %arrayidx584.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %idxprom583.i
  %938 = load double* %arrayidx584.i, align 8, !tbaa !4
  %add586.i = add nsw i32 %mul578.i, 2
  %idxprom587.i = sext i32 %add586.i to i64
  %arrayidx588.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %idxprom587.i
  %939 = load double* %arrayidx588.i, align 8, !tbaa !4
  %add590.i = add nsw i32 %mul578.i, 3
  %idxprom591.i = sext i32 %add590.i to i64
  %arrayidx592.i = getelementptr inbounds double* %colB0.0.lcssa.i868, i64 %idxprom591.i
  %940 = load double* %arrayidx592.i, align 8, !tbaa !4
  %941 = load double* %cr00.i, align 8, !tbaa !4
  %mul593.i = fmul double %937, %941
  %942 = load double* %ci00.i, align 8, !tbaa !4
  %mul594.i = fmul double %938, %942
  %sub595.i = fsub double %mul593.i, %mul594.i
  %943 = load double* %cr01.i, align 8, !tbaa !4
  %mul596.i = fmul double %939, %943
  %add597.i = fadd double %sub595.i, %mul596.i
  %944 = load double* %ci01.i, align 8, !tbaa !4
  %mul598.i = fmul double %940, %944
  %sub599.i = fsub double %add597.i, %mul598.i
  store double %sub599.i, double* %arrayidx580.i, align 8, !tbaa !4
  %945 = load double* %cr00.i, align 8, !tbaa !4
  %mul603.i = fmul double %938, %945
  %946 = load double* %ci00.i, align 8, !tbaa !4
  %mul604.i = fmul double %937, %946
  %add605.i = fadd double %mul603.i, %mul604.i
  %947 = load double* %cr01.i, align 8, !tbaa !4
  %mul606.i = fmul double %940, %947
  %add607.i = fadd double %add605.i, %mul606.i
  %948 = load double* %ci01.i, align 8, !tbaa !4
  %mul608.i = fmul double %939, %948
  %add609.i = fadd double %add607.i, %mul608.i
  store double %add609.i, double* %arrayidx584.i, align 8, !tbaa !4
  %949 = load double* %cr01.i, align 8, !tbaa !4
  %mul614.i = fmul double %937, %949
  %950 = load double* %ci01.i, align 8, !tbaa !4
  %mul615.i = fmul double %938, %950
  %sub616.i = fsub double %mul614.i, %mul615.i
  %951 = load double* %cr11.i, align 8, !tbaa !4
  %mul617.i = fmul double %939, %951
  %add618.i = fadd double %sub616.i, %mul617.i
  %952 = load double* %ci11.i, align 8, !tbaa !4
  %mul619.i = fmul double %940, %952
  %sub620.i = fsub double %add618.i, %mul619.i
  store double %sub620.i, double* %arrayidx588.i, align 8, !tbaa !4
  %953 = load double* %cr01.i, align 8, !tbaa !4
  %mul625.i = fmul double %938, %953
  %954 = load double* %ci01.i, align 8, !tbaa !4
  %mul626.i = fmul double %937, %954
  %add627.i = fadd double %mul625.i, %mul626.i
  %955 = load double* %cr11.i, align 8, !tbaa !4
  %mul628.i = fmul double %940, %955
  %add629.i = fadd double %add627.i, %mul628.i
  %956 = load double* %ci11.i, align 8, !tbaa !4
  %mul630.i = fmul double %939, %956
  %add631.i = fadd double %add629.i, %mul630.i
  store double %add631.i, double* %arrayidx592.i, align 8, !tbaa !4
  br label %if.end637.i

if.end637.i:                                      ; preds = %if.then552.i, %if.then520.i, %for.body516.i
  %kk.5.i872 = phi i32 [ %inc528.i, %if.then520.i ], [ %inc576.i, %if.then552.i ], [ %kk.41037.i, %for.body516.i ]
  %add638.i = add nsw i32 %920, %irowA.31036.i
  %957 = load i32* %nrowA.i773, align 4, !tbaa !3
  %cmp515.i = icmp slt i32 %add638.i, %957
  br i1 %cmp515.i, label %if.end637.i.for.body516.i_crit_edge, label %sw.epilog41

if.end637.i.for.body516.i_crit_edge:              ; preds = %if.end637.i
  %indvars.iv.next1056.i = add i64 %indvars.iv1055.i, 1
  br label %for.body516.i

sw.bb32:                                          ; preds = %sw.bb24
  %958 = bitcast double* %ci00.i873 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %958) #4
  %959 = bitcast double* %ci01.i874 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %959) #4
  %960 = bitcast double* %ci11.i875 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %960) #4
  %961 = bitcast double* %cr00.i876 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %961) #4
  %962 = bitcast double* %cr01.i877 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %962) #4
  %963 = bitcast double* %cr11.i878 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %963) #4
  %964 = bitcast double** %entriesA.i879 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %964) #4
  %965 = bitcast double** %entriesB.i880 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %965) #4
  %966 = bitcast i32* %inc1.i881 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %966) #4
  %967 = bitcast i32* %inc2.i882 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %967) #4
  %968 = bitcast i32* %ncolB.i883 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %968) #4
  %969 = bitcast i32* %nentA.i884 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %969) #4
  %970 = bitcast i32* %nrowA.i885 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %970) #4
  %971 = bitcast i32* %nrowB.i886 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %971) #4
  %972 = bitcast i32** %pivotsizes.i887 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %972) #4
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtxA, i32* %nrowA.i885, i32* %nentA.i884, i32** %pivotsizes.i887, double** %entriesA.i879) #5
  %973 = load i32* %nrowA.i885, align 4, !tbaa !3
  %cmp893.i = icmp sgt i32 %973, 0
  br i1 %cmp893.i, label %for.body.lr.ph.i888, label %for.end.i898

for.body.lr.ph.i888:                              ; preds = %sw.bb32
  %974 = load i32** %pivotsizes.i887, align 8, !tbaa !0
  br label %for.body.i891

for.body.i891:                                    ; preds = %if.end.i897, %for.body.lr.ph.i888
  %indvars.iv905.i = phi i64 [ 0, %for.body.lr.ph.i888 ], [ %indvars.iv.next906.i, %if.end.i897 ]
  %irowA.0895.i = phi i32 [ 0, %for.body.lr.ph.i888 ], [ %add.i894, %if.end.i897 ]
  %ipivot.0894.i = phi i32 [ 0, %for.body.lr.ph.i888 ], [ %inc.i895, %if.end.i897 ]
  %arrayidx.i889 = getelementptr inbounds i32* %974, i64 %indvars.iv905.i
  %975 = load i32* %arrayidx.i889, align 4, !tbaa !3
  %.off.i890 = add i32 %975, -1
  %976 = icmp ugt i32 %.off.i890, 1
  br i1 %976, label %if.then.i893, label %if.end.i897

if.then.i893:                                     ; preds = %for.body.i891
  %977 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call.i892 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %977, i8* getelementptr inbounds ([102 x i8]* @.str5, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 %ipivot.0894.i, i32 %975) #5
  call void @exit(i32 -1) #6
  unreachable

if.end.i897:                                      ; preds = %for.body.i891
  %add.i894 = add nsw i32 %975, %irowA.0895.i
  %indvars.iv.next906.i = add i64 %indvars.iv905.i, 1
  %inc.i895 = add nsw i32 %ipivot.0894.i, 1
  %cmp.i896 = icmp slt i32 %add.i894, %973
  br i1 %cmp.i896, label %for.body.i891, label %for.end.i898

for.end.i898:                                     ; preds = %if.end.i897, %sw.bb32
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxB, i32* %nrowB.i886, i32* %ncolB.i883, i32* %inc1.i881, i32* %inc2.i882, double** %entriesB.i880) #5
  %978 = load double** %entriesB.i880, align 8, !tbaa !0
  %979 = load i32* %ncolB.i883, align 4, !tbaa !3
  %sub883.i = add nsw i32 %979, -2
  %cmp4884.i = icmp sgt i32 %sub883.i, 0
  br i1 %cmp4884.i, label %for.body5.lr.ph.i900, label %for.end250.i

for.body5.lr.ph.i900:                             ; preds = %for.end.i898
  %.pre.i899 = load i32* %nrowB.i886, align 4, !tbaa !3
  %.pre907.i = load i32* %nrowA.i885, align 4, !tbaa !3
  br label %for.body5.i904

for.body5.i904:                                   ; preds = %for.end244.i, %for.body5.lr.ph.i900
  %980 = phi i32 [ %979, %for.body5.lr.ph.i900 ], [ %1053, %for.end244.i ]
  %981 = phi i32 [ %.pre907.i, %for.body5.lr.ph.i900 ], [ %1055, %for.end244.i ]
  %982 = phi i32 [ %.pre.i899, %for.body5.lr.ph.i900 ], [ %1054, %for.end244.i ]
  %jcolB.0887.i = phi i32 [ 0, %for.body5.lr.ph.i900 ], [ %add249.i, %for.end244.i ]
  %colB0.0885.i = phi double* [ %978, %for.body5.lr.ph.i900 ], [ %add.ptr247.i, %for.end244.i ]
  %mul.i901 = shl nsw i32 %982, 1
  %idx.ext.i902 = sext i32 %mul.i901 to i64
  %add.ptr.sum.i903 = shl nsw i64 %idx.ext.i902, 1
  %cmp10879.i = icmp sgt i32 %981, 0
  br i1 %cmp10879.i, label %for.body11.i906, label %for.end244.i

for.body11.i906:                                  ; preds = %for.body5.i904, %if.end240.i.for.body11.i906_crit_edge
  %indvars.iv898.i = phi i64 [ %indvars.iv.next899.i, %if.end240.i.for.body11.i906_crit_edge ], [ 0, %for.body5.i904 ]
  %kk.0882.i = phi i32 [ %kk.1.i966, %if.end240.i.for.body11.i906_crit_edge ], [ 0, %for.body5.i904 ]
  %irowA.1881.i = phi i32 [ %add241.i, %if.end240.i.for.body11.i906_crit_edge ], [ 0, %for.body5.i904 ]
  %983 = load i32** %pivotsizes.i887, align 8, !tbaa !0
  %arrayidx13.i905 = getelementptr inbounds i32* %983, i64 %indvars.iv898.i
  %984 = load i32* %arrayidx13.i905, align 4, !tbaa !3
  switch i32 %984, label %if.end240.i [
    i32 1, label %if.then15.i922
    i32 2, label %if.then70.i
  ]

if.then15.i922:                                   ; preds = %for.body11.i906
  %mul16.i907 = shl nsw i32 %kk.0882.i, 1
  %idxprom17.i908 = sext i32 %mul16.i907 to i64
  %985 = load double** %entriesA.i879, align 8, !tbaa !0
  %arrayidx18.i909 = getelementptr inbounds double* %985, i64 %idxprom17.i908
  %986 = load double* %arrayidx18.i909, align 8, !tbaa !4
  %inc19.i = add nsw i32 %kk.0882.i, 1
  %call20.i = call i32 @Zrecip(double %986, double 0.000000e+00, double* %cr00.i876, double* %ci00.i873) #5
  %mul21.i910 = shl nsw i32 %irowA.1881.i, 1
  %idxprom22.i911 = sext i32 %mul21.i910 to i64
  %arrayidx23.i912 = getelementptr inbounds double* %colB0.0885.i, i64 %idxprom22.i911
  %987 = load double* %arrayidx23.i912, align 8, !tbaa !4
  %add25865.i = or i32 %mul21.i910, 1
  %idxprom26.i913 = sext i32 %add25865.i to i64
  %arrayidx27.i914 = getelementptr inbounds double* %colB0.0885.i, i64 %idxprom26.i913
  %988 = load double* %arrayidx27.i914, align 8, !tbaa !4
  %989 = load double* %cr00.i876, align 8, !tbaa !4
  %mul28.i = fmul double %987, %989
  store double %mul28.i, double* %arrayidx23.i912, align 8, !tbaa !4
  %990 = load double* %cr00.i876, align 8, !tbaa !4
  %mul32.i915 = fmul double %988, %990
  store double %mul32.i915, double* %arrayidx27.i914, align 8, !tbaa !4
  %add.ptr.sum866.i = add i64 %idxprom22.i911, %idx.ext.i902
  %arrayidx39.i = getelementptr inbounds double* %colB0.0885.i, i64 %add.ptr.sum866.i
  %991 = load double* %arrayidx39.i, align 8, !tbaa !4
  %add.ptr.sum867.i = add i64 %idxprom26.i913, %idx.ext.i902
  %arrayidx43.i916 = getelementptr inbounds double* %colB0.0885.i, i64 %add.ptr.sum867.i
  %992 = load double* %arrayidx43.i916, align 8, !tbaa !4
  %993 = load double* %cr00.i876, align 8, !tbaa !4
  %mul44.i917 = fmul double %991, %993
  store double %mul44.i917, double* %arrayidx39.i, align 8, !tbaa !4
  %994 = load double* %cr00.i876, align 8, !tbaa !4
  %mul48.i918 = fmul double %992, %994
  store double %mul48.i918, double* %arrayidx43.i916, align 8, !tbaa !4
  %add.ptr8.sum868.i = add i64 %idxprom22.i911, %add.ptr.sum.i903
  %arrayidx55.i919 = getelementptr inbounds double* %colB0.0885.i, i64 %add.ptr8.sum868.i
  %995 = load double* %arrayidx55.i919, align 8, !tbaa !4
  %add.ptr8.sum869.i = add i64 %idxprom26.i913, %add.ptr.sum.i903
  %arrayidx59.i920 = getelementptr inbounds double* %colB0.0885.i, i64 %add.ptr8.sum869.i
  %996 = load double* %arrayidx59.i920, align 8, !tbaa !4
  %997 = load double* %cr00.i876, align 8, !tbaa !4
  %mul60.i = fmul double %995, %997
  store double %mul60.i, double* %arrayidx55.i919, align 8, !tbaa !4
  %998 = load double* %cr00.i876, align 8, !tbaa !4
  %mul64.i921 = fmul double %996, %998
  store double %mul64.i921, double* %arrayidx59.i920, align 8, !tbaa !4
  br label %if.end240.i

if.then70.i:                                      ; preds = %for.body11.i906
  %mul71.i923 = shl i32 %kk.0882.i, 1
  %idxprom72.i = sext i32 %mul71.i923 to i64
  %999 = load double** %entriesA.i879, align 8, !tbaa !0
  %arrayidx73.i924 = getelementptr inbounds double* %999, i64 %idxprom72.i
  %1000 = load double* %arrayidx73.i924, align 8, !tbaa !4
  %mul75.i925 = add i32 %mul71.i923, 2
  %idxprom76.i = sext i32 %mul75.i925 to i64
  %arrayidx77.i926 = getelementptr inbounds double* %999, i64 %idxprom76.i
  %1001 = load double* %arrayidx77.i926, align 8, !tbaa !4
  %add79855.i = or i32 %mul75.i925, 1
  %idxprom80.i = sext i32 %add79855.i to i64
  %arrayidx81.i927 = getelementptr inbounds double* %999, i64 %idxprom80.i
  %1002 = load double* %arrayidx81.i927, align 8, !tbaa !4
  %mul83.i928 = add i32 %mul71.i923, 4
  %idxprom84.i = sext i32 %mul83.i928 to i64
  %arrayidx85.i929 = getelementptr inbounds double* %999, i64 %idxprom84.i
  %1003 = load double* %arrayidx85.i929, align 8, !tbaa !4
  %inc86.i = add nsw i32 %kk.0882.i, 3
  %sub87.i930 = fsub double -0.000000e+00, %1002
  %call88.i = call i32 @Zrecip2(double %1000, double 0.000000e+00, double %1001, double %1002, double %1001, double %sub87.i930, double %1003, double 0.000000e+00, double* %cr00.i876, double* %ci00.i873, double* %cr01.i877, double* %ci01.i874, double* null, double* null, double* %cr11.i878, double* %ci11.i875) #5
  %mul89.i931 = shl nsw i32 %irowA.1881.i, 1
  %idxprom90.i = sext i32 %mul89.i931 to i64
  %arrayidx91.i = getelementptr inbounds double* %colB0.0885.i, i64 %idxprom90.i
  %1004 = load double* %arrayidx91.i, align 8, !tbaa !4
  %add93856.i = or i32 %mul89.i931, 1
  %idxprom94.i = sext i32 %add93856.i to i64
  %arrayidx95.i932 = getelementptr inbounds double* %colB0.0885.i, i64 %idxprom94.i
  %1005 = load double* %arrayidx95.i932, align 8, !tbaa !4
  %add97.i = add nsw i32 %mul89.i931, 2
  %idxprom98.i = sext i32 %add97.i to i64
  %arrayidx99.i933 = getelementptr inbounds double* %colB0.0885.i, i64 %idxprom98.i
  %1006 = load double* %arrayidx99.i933, align 8, !tbaa !4
  %add101.i = add nsw i32 %mul89.i931, 3
  %idxprom102.i = sext i32 %add101.i to i64
  %arrayidx103.i934 = getelementptr inbounds double* %colB0.0885.i, i64 %idxprom102.i
  %1007 = load double* %arrayidx103.i934, align 8, !tbaa !4
  %1008 = load double* %cr00.i876, align 8, !tbaa !4
  %mul104.i935 = fmul double %1004, %1008
  %1009 = load double* %cr01.i877, align 8, !tbaa !4
  %mul105.i936 = fmul double %1006, %1009
  %add106.i937 = fadd double %mul104.i935, %mul105.i936
  %1010 = load double* %ci01.i874, align 8, !tbaa !4
  %mul107.i = fmul double %1007, %1010
  %sub108.i938 = fsub double %add106.i937, %mul107.i
  store double %sub108.i938, double* %arrayidx91.i, align 8, !tbaa !4
  %1011 = load double* %cr00.i876, align 8, !tbaa !4
  %mul112.i939 = fmul double %1005, %1011
  %1012 = load double* %cr01.i877, align 8, !tbaa !4
  %mul113.i = fmul double %1007, %1012
  %add114.i = fadd double %mul112.i939, %mul113.i
  %1013 = load double* %ci01.i874, align 8, !tbaa !4
  %mul115.i = fmul double %1006, %1013
  %add116.i = fadd double %add114.i, %mul115.i
  store double %add116.i, double* %arrayidx95.i932, align 8, !tbaa !4
  %1014 = load double* %cr01.i877, align 8, !tbaa !4
  %mul121.i940 = fmul double %1004, %1014
  %1015 = load double* %ci01.i874, align 8, !tbaa !4
  %mul122.i941 = fmul double %1005, %1015
  %add123.i = fadd double %mul121.i940, %mul122.i941
  %1016 = load double* %cr11.i878, align 8, !tbaa !4
  %mul124.i942 = fmul double %1006, %1016
  %add125.i = fadd double %add123.i, %mul124.i942
  store double %add125.i, double* %arrayidx99.i933, align 8, !tbaa !4
  %1017 = load double* %cr01.i877, align 8, !tbaa !4
  %mul130.i943 = fmul double %1005, %1017
  %1018 = load double* %ci01.i874, align 8, !tbaa !4
  %mul131.i944 = fmul double %1004, %1018
  %sub132.i945 = fsub double %mul130.i943, %mul131.i944
  %1019 = load double* %cr11.i878, align 8, !tbaa !4
  %mul133.i946 = fmul double %1007, %1019
  %add134.i947 = fadd double %sub132.i945, %mul133.i946
  store double %add134.i947, double* %arrayidx103.i934, align 8, !tbaa !4
  %add.ptr.sum857.i = add i64 %idxprom90.i, %idx.ext.i902
  %arrayidx141.i = getelementptr inbounds double* %colB0.0885.i, i64 %add.ptr.sum857.i
  %1020 = load double* %arrayidx141.i, align 8, !tbaa !4
  %add.ptr.sum858.i = add i64 %idxprom94.i, %idx.ext.i902
  %arrayidx145.i = getelementptr inbounds double* %colB0.0885.i, i64 %add.ptr.sum858.i
  %1021 = load double* %arrayidx145.i, align 8, !tbaa !4
  %add.ptr.sum859.i = add i64 %idxprom98.i, %idx.ext.i902
  %arrayidx149.i948 = getelementptr inbounds double* %colB0.0885.i, i64 %add.ptr.sum859.i
  %1022 = load double* %arrayidx149.i948, align 8, !tbaa !4
  %add.ptr.sum860.i = add i64 %idxprom102.i, %idx.ext.i902
  %arrayidx153.i949 = getelementptr inbounds double* %colB0.0885.i, i64 %add.ptr.sum860.i
  %1023 = load double* %arrayidx153.i949, align 8, !tbaa !4
  %1024 = load double* %cr00.i876, align 8, !tbaa !4
  %mul154.i = fmul double %1020, %1024
  %1025 = load double* %cr01.i877, align 8, !tbaa !4
  %mul155.i = fmul double %1022, %1025
  %add156.i = fadd double %mul154.i, %mul155.i
  %1026 = load double* %ci01.i874, align 8, !tbaa !4
  %mul157.i950 = fmul double %1023, %1026
  %sub158.i951 = fsub double %add156.i, %mul157.i950
  store double %sub158.i951, double* %arrayidx141.i, align 8, !tbaa !4
  %1027 = load double* %cr00.i876, align 8, !tbaa !4
  %mul162.i952 = fmul double %1021, %1027
  %1028 = load double* %cr01.i877, align 8, !tbaa !4
  %mul163.i = fmul double %1023, %1028
  %add164.i = fadd double %mul162.i952, %mul163.i
  %1029 = load double* %ci01.i874, align 8, !tbaa !4
  %mul165.i953 = fmul double %1022, %1029
  %add166.i = fadd double %add164.i, %mul165.i953
  store double %add166.i, double* %arrayidx145.i, align 8, !tbaa !4
  %1030 = load double* %cr01.i877, align 8, !tbaa !4
  %mul171.i = fmul double %1020, %1030
  %1031 = load double* %ci01.i874, align 8, !tbaa !4
  %mul172.i954 = fmul double %1021, %1031
  %add173.i = fadd double %mul171.i, %mul172.i954
  %1032 = load double* %cr11.i878, align 8, !tbaa !4
  %mul174.i955 = fmul double %1022, %1032
  %add175.i = fadd double %add173.i, %mul174.i955
  store double %add175.i, double* %arrayidx149.i948, align 8, !tbaa !4
  %1033 = load double* %cr01.i877, align 8, !tbaa !4
  %mul180.i = fmul double %1021, %1033
  %1034 = load double* %ci01.i874, align 8, !tbaa !4
  %mul181.i956 = fmul double %1020, %1034
  %sub182.i = fsub double %mul180.i, %mul181.i956
  %1035 = load double* %cr11.i878, align 8, !tbaa !4
  %mul183.i957 = fmul double %1023, %1035
  %add184.i = fadd double %sub182.i, %mul183.i957
  store double %add184.i, double* %arrayidx153.i949, align 8, !tbaa !4
  %add.ptr8.sum861.i = add i64 %idxprom90.i, %add.ptr.sum.i903
  %arrayidx191.i = getelementptr inbounds double* %colB0.0885.i, i64 %add.ptr8.sum861.i
  %1036 = load double* %arrayidx191.i, align 8, !tbaa !4
  %add.ptr8.sum862.i = add i64 %idxprom94.i, %add.ptr.sum.i903
  %arrayidx195.i958 = getelementptr inbounds double* %colB0.0885.i, i64 %add.ptr8.sum862.i
  %1037 = load double* %arrayidx195.i958, align 8, !tbaa !4
  %add.ptr8.sum863.i = add i64 %idxprom98.i, %add.ptr.sum.i903
  %arrayidx199.i = getelementptr inbounds double* %colB0.0885.i, i64 %add.ptr8.sum863.i
  %1038 = load double* %arrayidx199.i, align 8, !tbaa !4
  %add.ptr8.sum864.i = add i64 %idxprom102.i, %add.ptr.sum.i903
  %arrayidx203.i = getelementptr inbounds double* %colB0.0885.i, i64 %add.ptr8.sum864.i
  %1039 = load double* %arrayidx203.i, align 8, !tbaa !4
  %1040 = load double* %cr00.i876, align 8, !tbaa !4
  %mul204.i959 = fmul double %1036, %1040
  %1041 = load double* %cr01.i877, align 8, !tbaa !4
  %mul205.i960 = fmul double %1038, %1041
  %add206.i = fadd double %mul204.i959, %mul205.i960
  %1042 = load double* %ci01.i874, align 8, !tbaa !4
  %mul207.i961 = fmul double %1039, %1042
  %sub208.i962 = fsub double %add206.i, %mul207.i961
  store double %sub208.i962, double* %arrayidx191.i, align 8, !tbaa !4
  %1043 = load double* %cr00.i876, align 8, !tbaa !4
  %mul212.i = fmul double %1037, %1043
  %1044 = load double* %cr01.i877, align 8, !tbaa !4
  %mul213.i = fmul double %1039, %1044
  %add214.i = fadd double %mul212.i, %mul213.i
  %1045 = load double* %ci01.i874, align 8, !tbaa !4
  %mul215.i = fmul double %1038, %1045
  %add216.i = fadd double %add214.i, %mul215.i
  store double %add216.i, double* %arrayidx195.i958, align 8, !tbaa !4
  %1046 = load double* %cr01.i877, align 8, !tbaa !4
  %mul221.i = fmul double %1036, %1046
  %1047 = load double* %ci01.i874, align 8, !tbaa !4
  %mul222.i963 = fmul double %1037, %1047
  %add223.i964 = fadd double %mul221.i, %mul222.i963
  %1048 = load double* %cr11.i878, align 8, !tbaa !4
  %mul224.i = fmul double %1038, %1048
  %add225.i = fadd double %add223.i964, %mul224.i
  store double %add225.i, double* %arrayidx199.i, align 8, !tbaa !4
  %1049 = load double* %cr01.i877, align 8, !tbaa !4
  %mul230.i965 = fmul double %1037, %1049
  %1050 = load double* %ci01.i874, align 8, !tbaa !4
  %mul231.i = fmul double %1036, %1050
  %sub232.i = fsub double %mul230.i965, %mul231.i
  %1051 = load double* %cr11.i878, align 8, !tbaa !4
  %mul233.i = fmul double %1039, %1051
  %add234.i = fadd double %sub232.i, %mul233.i
  store double %add234.i, double* %arrayidx203.i, align 8, !tbaa !4
  br label %if.end240.i

if.end240.i:                                      ; preds = %if.then70.i, %if.then15.i922, %for.body11.i906
  %kk.1.i966 = phi i32 [ %inc19.i, %if.then15.i922 ], [ %inc86.i, %if.then70.i ], [ %kk.0882.i, %for.body11.i906 ]
  %add241.i = add nsw i32 %984, %irowA.1881.i
  %1052 = load i32* %nrowA.i885, align 4, !tbaa !3
  %cmp10.i967 = icmp slt i32 %add241.i, %1052
  br i1 %cmp10.i967, label %if.end240.i.for.body11.i906_crit_edge, label %for.cond9.for.end244_crit_edge.i

if.end240.i.for.body11.i906_crit_edge:            ; preds = %if.end240.i
  %indvars.iv.next899.i = add i64 %indvars.iv898.i, 1
  br label %for.body11.i906

for.cond9.for.end244_crit_edge.i:                 ; preds = %if.end240.i
  %.pre908.i = load i32* %nrowB.i886, align 4, !tbaa !3
  %.pre909.i = load i32* %ncolB.i883, align 4, !tbaa !3
  br label %for.end244.i

for.end244.i:                                     ; preds = %for.cond9.for.end244_crit_edge.i, %for.body5.i904
  %1053 = phi i32 [ %.pre909.i, %for.cond9.for.end244_crit_edge.i ], [ %980, %for.body5.i904 ]
  %1054 = phi i32 [ %.pre908.i, %for.cond9.for.end244_crit_edge.i ], [ %982, %for.body5.i904 ]
  %1055 = phi i32 [ %1052, %for.cond9.for.end244_crit_edge.i ], [ %981, %for.body5.i904 ]
  %mul245.i = shl nsw i32 %1054, 1
  %idx.ext246.i = sext i32 %mul245.i to i64
  %add.ptr8.sum.i968 = add i64 %idx.ext246.i, %add.ptr.sum.i903
  %add.ptr247.i = getelementptr inbounds double* %colB0.0885.i, i64 %add.ptr8.sum.i968
  %add249.i = add nsw i32 %jcolB.0887.i, 3
  %sub.i969 = add nsw i32 %1053, -2
  %cmp4.i970 = icmp slt i32 %add249.i, %sub.i969
  br i1 %cmp4.i970, label %for.body5.i904, label %for.end250.i

for.end250.i:                                     ; preds = %for.end244.i, %for.end.i898
  %sub.lcssa.i971 = phi i32 [ %sub883.i, %for.end.i898 ], [ %sub.i969, %for.end244.i ]
  %.lcssa.i972 = phi i32 [ %979, %for.end.i898 ], [ %1053, %for.end244.i ]
  %jcolB.0.lcssa.i973 = phi i32 [ 0, %for.end.i898 ], [ %add249.i, %for.end244.i ]
  %colB0.0.lcssa.i974 = phi double* [ %978, %for.end.i898 ], [ %add.ptr247.i, %for.end244.i ]
  %cmp252.i = icmp eq i32 %jcolB.0.lcssa.i973, %sub.lcssa.i971
  br i1 %cmp252.i, label %if.then253.i, label %if.else428.i

if.then253.i:                                     ; preds = %for.end250.i
  %1056 = load i32* %nrowB.i886, align 4, !tbaa !3
  %mul254.i975 = shl nsw i32 %1056, 1
  %idx.ext255.i = sext i32 %mul254.i975 to i64
  %1057 = load i32* %nrowA.i885, align 4, !tbaa !3
  %cmp258870.i = icmp sgt i32 %1057, 0
  br i1 %cmp258870.i, label %for.body259.i, label %sw.epilog41

for.body259.i:                                    ; preds = %if.then253.i, %if.end423.i.for.body259.i_crit_edge
  %indvars.iv.i976 = phi i64 [ %indvars.iv.next.i992, %if.end423.i.for.body259.i_crit_edge ], [ 0, %if.then253.i ]
  %kk.2873.i = phi i32 [ %kk.3.i991, %if.end423.i.for.body259.i_crit_edge ], [ 0, %if.then253.i ]
  %irowA.2872.i = phi i32 [ %add424.i, %if.end423.i.for.body259.i_crit_edge ], [ 0, %if.then253.i ]
  %1058 = load i32** %pivotsizes.i887, align 8, !tbaa !0
  %arrayidx261.i = getelementptr inbounds i32* %1058, i64 %indvars.iv.i976
  %1059 = load i32* %arrayidx261.i, align 4, !tbaa !3
  switch i32 %1059, label %if.end423.i [
    i32 1, label %if.then263.i
    i32 2, label %if.then303.i
  ]

if.then263.i:                                     ; preds = %for.body259.i
  %mul264.i977 = shl nsw i32 %kk.2873.i, 1
  %idxprom265.i = sext i32 %mul264.i977 to i64
  %1060 = load double** %entriesA.i879, align 8, !tbaa !0
  %arrayidx266.i = getelementptr inbounds double* %1060, i64 %idxprom265.i
  %1061 = load double* %arrayidx266.i, align 8, !tbaa !4
  %inc267.i = add nsw i32 %kk.2873.i, 1
  %call268.i = call i32 @Zrecip(double %1061, double 0.000000e+00, double* %cr00.i876, double* %ci00.i873) #5
  %mul269.i978 = shl nsw i32 %irowA.2872.i, 1
  %idxprom270.i = sext i32 %mul269.i978 to i64
  %arrayidx271.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %idxprom270.i
  %1062 = load double* %arrayidx271.i, align 8, !tbaa !4
  %add273852.i = or i32 %mul269.i978, 1
  %idxprom274.i = sext i32 %add273852.i to i64
  %arrayidx275.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %idxprom274.i
  %1063 = load double* %arrayidx275.i, align 8, !tbaa !4
  %1064 = load double* %cr00.i876, align 8, !tbaa !4
  %mul276.i979 = fmul double %1062, %1064
  store double %mul276.i979, double* %arrayidx271.i, align 8, !tbaa !4
  %1065 = load double* %cr00.i876, align 8, !tbaa !4
  %mul280.i980 = fmul double %1063, %1065
  store double %mul280.i980, double* %arrayidx275.i, align 8, !tbaa !4
  %add.ptr256.sum853.i = add i64 %idxprom270.i, %idx.ext255.i
  %arrayidx287.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %add.ptr256.sum853.i
  %1066 = load double* %arrayidx287.i, align 8, !tbaa !4
  %add.ptr256.sum854.i = add i64 %idxprom274.i, %idx.ext255.i
  %arrayidx291.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %add.ptr256.sum854.i
  %1067 = load double* %arrayidx291.i, align 8, !tbaa !4
  %1068 = load double* %cr00.i876, align 8, !tbaa !4
  %mul292.i981 = fmul double %1066, %1068
  store double %mul292.i981, double* %arrayidx287.i, align 8, !tbaa !4
  %1069 = load double* %cr00.i876, align 8, !tbaa !4
  %mul296.i = fmul double %1067, %1069
  store double %mul296.i, double* %arrayidx291.i, align 8, !tbaa !4
  br label %if.end423.i

if.then303.i:                                     ; preds = %for.body259.i
  %mul304.i = shl i32 %kk.2873.i, 1
  %idxprom305.i = sext i32 %mul304.i to i64
  %1070 = load double** %entriesA.i879, align 8, !tbaa !0
  %arrayidx306.i = getelementptr inbounds double* %1070, i64 %idxprom305.i
  %1071 = load double* %arrayidx306.i, align 8, !tbaa !4
  %mul308.i = add i32 %mul304.i, 2
  %idxprom309.i = sext i32 %mul308.i to i64
  %arrayidx310.i = getelementptr inbounds double* %1070, i64 %idxprom309.i
  %1072 = load double* %arrayidx310.i, align 8, !tbaa !4
  %add312847.i = or i32 %mul308.i, 1
  %idxprom313.i = sext i32 %add312847.i to i64
  %arrayidx314.i = getelementptr inbounds double* %1070, i64 %idxprom313.i
  %1073 = load double* %arrayidx314.i, align 8, !tbaa !4
  %mul316.i = add i32 %mul304.i, 4
  %idxprom317.i = sext i32 %mul316.i to i64
  %arrayidx318.i = getelementptr inbounds double* %1070, i64 %idxprom317.i
  %1074 = load double* %arrayidx318.i, align 8, !tbaa !4
  %inc319.i = add nsw i32 %kk.2873.i, 3
  %sub320.i = fsub double -0.000000e+00, %1073
  %call321.i = call i32 @Zrecip2(double %1071, double 0.000000e+00, double %1072, double %1073, double %1072, double %sub320.i, double %1074, double 0.000000e+00, double* %cr00.i876, double* %ci00.i873, double* %cr01.i877, double* %ci01.i874, double* null, double* null, double* %cr11.i878, double* %ci11.i875) #5
  %mul322.i = shl nsw i32 %irowA.2872.i, 1
  %idxprom323.i = sext i32 %mul322.i to i64
  %arrayidx324.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %idxprom323.i
  %1075 = load double* %arrayidx324.i, align 8, !tbaa !4
  %add326848.i = or i32 %mul322.i, 1
  %idxprom327.i = sext i32 %add326848.i to i64
  %arrayidx328.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %idxprom327.i
  %1076 = load double* %arrayidx328.i, align 8, !tbaa !4
  %add330.i = add nsw i32 %mul322.i, 2
  %idxprom331.i = sext i32 %add330.i to i64
  %arrayidx332.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %idxprom331.i
  %1077 = load double* %arrayidx332.i, align 8, !tbaa !4
  %add334.i = add nsw i32 %mul322.i, 3
  %idxprom335.i = sext i32 %add334.i to i64
  %arrayidx336.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %idxprom335.i
  %1078 = load double* %arrayidx336.i, align 8, !tbaa !4
  %1079 = load double* %cr00.i876, align 8, !tbaa !4
  %mul337.i = fmul double %1075, %1079
  %1080 = load double* %cr01.i877, align 8, !tbaa !4
  %mul338.i = fmul double %1077, %1080
  %add339.i = fadd double %mul337.i, %mul338.i
  %1081 = load double* %ci01.i874, align 8, !tbaa !4
  %mul340.i = fmul double %1078, %1081
  %sub341.i = fsub double %add339.i, %mul340.i
  store double %sub341.i, double* %arrayidx324.i, align 8, !tbaa !4
  %1082 = load double* %cr00.i876, align 8, !tbaa !4
  %mul345.i = fmul double %1076, %1082
  %1083 = load double* %cr01.i877, align 8, !tbaa !4
  %mul346.i = fmul double %1078, %1083
  %add347.i = fadd double %mul345.i, %mul346.i
  %1084 = load double* %ci01.i874, align 8, !tbaa !4
  %mul348.i982 = fmul double %1077, %1084
  %add349.i = fadd double %add347.i, %mul348.i982
  store double %add349.i, double* %arrayidx328.i, align 8, !tbaa !4
  %1085 = load double* %cr01.i877, align 8, !tbaa !4
  %mul354.i983 = fmul double %1075, %1085
  %1086 = load double* %ci01.i874, align 8, !tbaa !4
  %mul355.i = fmul double %1076, %1086
  %add356.i = fadd double %mul354.i983, %mul355.i
  %1087 = load double* %cr11.i878, align 8, !tbaa !4
  %mul357.i = fmul double %1077, %1087
  %add358.i = fadd double %add356.i, %mul357.i
  store double %add358.i, double* %arrayidx332.i, align 8, !tbaa !4
  %1088 = load double* %cr01.i877, align 8, !tbaa !4
  %mul363.i984 = fmul double %1076, %1088
  %1089 = load double* %ci01.i874, align 8, !tbaa !4
  %mul364.i = fmul double %1075, %1089
  %sub365.i = fsub double %mul363.i984, %mul364.i
  %1090 = load double* %cr11.i878, align 8, !tbaa !4
  %mul366.i = fmul double %1078, %1090
  %add367.i = fadd double %sub365.i, %mul366.i
  store double %add367.i, double* %arrayidx336.i, align 8, !tbaa !4
  %add.ptr256.sum.i = add i64 %idxprom323.i, %idx.ext255.i
  %arrayidx374.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %add.ptr256.sum.i
  %1091 = load double* %arrayidx374.i, align 8, !tbaa !4
  %add.ptr256.sum849.i = add i64 %idxprom327.i, %idx.ext255.i
  %arrayidx378.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %add.ptr256.sum849.i
  %1092 = load double* %arrayidx378.i, align 8, !tbaa !4
  %add.ptr256.sum850.i = add i64 %idxprom331.i, %idx.ext255.i
  %arrayidx382.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %add.ptr256.sum850.i
  %1093 = load double* %arrayidx382.i, align 8, !tbaa !4
  %add.ptr256.sum851.i = add i64 %idxprom335.i, %idx.ext255.i
  %arrayidx386.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %add.ptr256.sum851.i
  %1094 = load double* %arrayidx386.i, align 8, !tbaa !4
  %1095 = load double* %cr00.i876, align 8, !tbaa !4
  %mul387.i = fmul double %1091, %1095
  %1096 = load double* %cr01.i877, align 8, !tbaa !4
  %mul388.i985 = fmul double %1093, %1096
  %add389.i = fadd double %mul387.i, %mul388.i985
  %1097 = load double* %ci01.i874, align 8, !tbaa !4
  %mul390.i = fmul double %1094, %1097
  %sub391.i = fsub double %add389.i, %mul390.i
  store double %sub391.i, double* %arrayidx374.i, align 8, !tbaa !4
  %1098 = load double* %cr00.i876, align 8, !tbaa !4
  %mul395.i = fmul double %1092, %1098
  %1099 = load double* %cr01.i877, align 8, !tbaa !4
  %mul396.i = fmul double %1094, %1099
  %add397.i = fadd double %mul395.i, %mul396.i
  %1100 = load double* %ci01.i874, align 8, !tbaa !4
  %mul398.i = fmul double %1093, %1100
  %add399.i = fadd double %add397.i, %mul398.i
  store double %add399.i, double* %arrayidx378.i, align 8, !tbaa !4
  %1101 = load double* %cr01.i877, align 8, !tbaa !4
  %mul404.i986 = fmul double %1091, %1101
  %1102 = load double* %ci01.i874, align 8, !tbaa !4
  %mul405.i = fmul double %1092, %1102
  %add406.i = fadd double %mul404.i986, %mul405.i
  %1103 = load double* %cr11.i878, align 8, !tbaa !4
  %mul407.i = fmul double %1093, %1103
  %add408.i = fadd double %add406.i, %mul407.i
  store double %add408.i, double* %arrayidx382.i, align 8, !tbaa !4
  %1104 = load double* %cr01.i877, align 8, !tbaa !4
  %mul413.i987 = fmul double %1092, %1104
  %1105 = load double* %ci01.i874, align 8, !tbaa !4
  %mul414.i988 = fmul double %1091, %1105
  %sub415.i = fsub double %mul413.i987, %mul414.i988
  %1106 = load double* %cr11.i878, align 8, !tbaa !4
  %mul416.i989 = fmul double %1094, %1106
  %add417.i990 = fadd double %sub415.i, %mul416.i989
  store double %add417.i990, double* %arrayidx386.i, align 8, !tbaa !4
  br label %if.end423.i

if.end423.i:                                      ; preds = %if.then303.i, %if.then263.i, %for.body259.i
  %kk.3.i991 = phi i32 [ %inc267.i, %if.then263.i ], [ %inc319.i, %if.then303.i ], [ %kk.2873.i, %for.body259.i ]
  %add424.i = add nsw i32 %1059, %irowA.2872.i
  %1107 = load i32* %nrowA.i885, align 4, !tbaa !3
  %cmp258.i = icmp slt i32 %add424.i, %1107
  br i1 %cmp258.i, label %if.end423.i.for.body259.i_crit_edge, label %sw.epilog41

if.end423.i.for.body259.i_crit_edge:              ; preds = %if.end423.i
  %indvars.iv.next.i992 = add i64 %indvars.iv.i976, 1
  br label %for.body259.i

if.else428.i:                                     ; preds = %for.end250.i
  %sub429.i = add nsw i32 %.lcssa.i972, -1
  %cmp430.i = icmp eq i32 %jcolB.0.lcssa.i973, %sub429.i
  br i1 %cmp430.i, label %for.cond432.preheader.i, label %sw.epilog41

for.cond432.preheader.i:                          ; preds = %if.else428.i
  %1108 = load i32* %nrowA.i885, align 4, !tbaa !3
  %cmp433875.i = icmp sgt i32 %1108, 0
  br i1 %cmp433875.i, label %for.body434.i, label %sw.epilog41

for.body434.i:                                    ; preds = %for.cond432.preheader.i, %if.end532.i.for.body434.i_crit_edge
  %indvars.iv896.i = phi i64 [ %indvars.iv.next897.i, %if.end532.i.for.body434.i_crit_edge ], [ 0, %for.cond432.preheader.i ]
  %kk.4878.i = phi i32 [ %kk.5.i996, %if.end532.i.for.body434.i_crit_edge ], [ 0, %for.cond432.preheader.i ]
  %irowA.3877.i = phi i32 [ %add533.i, %if.end532.i.for.body434.i_crit_edge ], [ 0, %for.cond432.preheader.i ]
  %1109 = load i32** %pivotsizes.i887, align 8, !tbaa !0
  %arrayidx436.i = getelementptr inbounds i32* %1109, i64 %indvars.iv896.i
  %1110 = load i32* %arrayidx436.i, align 4, !tbaa !3
  switch i32 %1110, label %if.end532.i [
    i32 1, label %if.then438.i
    i32 2, label %if.then462.i
  ]

if.then438.i:                                     ; preds = %for.body434.i
  %mul439.i = shl nsw i32 %kk.4878.i, 1
  %idxprom440.i = sext i32 %mul439.i to i64
  %1111 = load double** %entriesA.i879, align 8, !tbaa !0
  %arrayidx441.i = getelementptr inbounds double* %1111, i64 %idxprom440.i
  %1112 = load double* %arrayidx441.i, align 8, !tbaa !4
  %inc442.i = add nsw i32 %kk.4878.i, 1
  %call443.i = call i32 @Zrecip(double %1112, double 0.000000e+00, double* %cr00.i876, double* %ci00.i873) #5
  %mul444.i = shl nsw i32 %irowA.3877.i, 1
  %idxprom445.i = sext i32 %mul444.i to i64
  %arrayidx446.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %idxprom445.i
  %1113 = load double* %arrayidx446.i, align 8, !tbaa !4
  %add448846.i = or i32 %mul444.i, 1
  %idxprom449.i = sext i32 %add448846.i to i64
  %arrayidx450.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %idxprom449.i
  %1114 = load double* %arrayidx450.i, align 8, !tbaa !4
  %1115 = load double* %cr00.i876, align 8, !tbaa !4
  %mul451.i = fmul double %1113, %1115
  store double %mul451.i, double* %arrayidx446.i, align 8, !tbaa !4
  %1116 = load double* %cr00.i876, align 8, !tbaa !4
  %mul455.i = fmul double %1114, %1116
  store double %mul455.i, double* %arrayidx450.i, align 8, !tbaa !4
  br label %if.end532.i

if.then462.i:                                     ; preds = %for.body434.i
  %mul463.i = shl i32 %kk.4878.i, 1
  %idxprom464.i = sext i32 %mul463.i to i64
  %1117 = load double** %entriesA.i879, align 8, !tbaa !0
  %arrayidx465.i = getelementptr inbounds double* %1117, i64 %idxprom464.i
  %1118 = load double* %arrayidx465.i, align 8, !tbaa !4
  %mul467.i = add i32 %mul463.i, 2
  %idxprom468.i = sext i32 %mul467.i to i64
  %arrayidx469.i = getelementptr inbounds double* %1117, i64 %idxprom468.i
  %1119 = load double* %arrayidx469.i, align 8, !tbaa !4
  %add471844.i = or i32 %mul467.i, 1
  %idxprom472.i = sext i32 %add471844.i to i64
  %arrayidx473.i = getelementptr inbounds double* %1117, i64 %idxprom472.i
  %1120 = load double* %arrayidx473.i, align 8, !tbaa !4
  %mul475.i = add i32 %mul463.i, 4
  %idxprom476.i = sext i32 %mul475.i to i64
  %arrayidx477.i = getelementptr inbounds double* %1117, i64 %idxprom476.i
  %1121 = load double* %arrayidx477.i, align 8, !tbaa !4
  %inc478.i = add nsw i32 %kk.4878.i, 3
  %sub479.i = fsub double -0.000000e+00, %1120
  %call480.i = call i32 @Zrecip2(double %1118, double 0.000000e+00, double %1119, double %1120, double %1119, double %sub479.i, double %1121, double 0.000000e+00, double* %cr00.i876, double* %ci00.i873, double* %cr01.i877, double* %ci01.i874, double* null, double* null, double* %cr11.i878, double* %ci11.i875) #5
  %mul481.i = shl nsw i32 %irowA.3877.i, 1
  %idxprom482.i = sext i32 %mul481.i to i64
  %arrayidx483.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %idxprom482.i
  %1122 = load double* %arrayidx483.i, align 8, !tbaa !4
  %add485845.i = or i32 %mul481.i, 1
  %idxprom486.i = sext i32 %add485845.i to i64
  %arrayidx487.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %idxprom486.i
  %1123 = load double* %arrayidx487.i, align 8, !tbaa !4
  %add489.i = add nsw i32 %mul481.i, 2
  %idxprom490.i = sext i32 %add489.i to i64
  %arrayidx491.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %idxprom490.i
  %1124 = load double* %arrayidx491.i, align 8, !tbaa !4
  %add493.i = add nsw i32 %mul481.i, 3
  %idxprom494.i = sext i32 %add493.i to i64
  %arrayidx495.i = getelementptr inbounds double* %colB0.0.lcssa.i974, i64 %idxprom494.i
  %1125 = load double* %arrayidx495.i, align 8, !tbaa !4
  %1126 = load double* %cr00.i876, align 8, !tbaa !4
  %mul496.i993 = fmul double %1122, %1126
  %1127 = load double* %cr01.i877, align 8, !tbaa !4
  %mul497.i = fmul double %1124, %1127
  %add498.i = fadd double %mul496.i993, %mul497.i
  %1128 = load double* %ci01.i874, align 8, !tbaa !4
  %mul499.i = fmul double %1125, %1128
  %sub500.i994 = fsub double %add498.i, %mul499.i
  store double %sub500.i994, double* %arrayidx483.i, align 8, !tbaa !4
  %1129 = load double* %cr00.i876, align 8, !tbaa !4
  %mul504.i = fmul double %1123, %1129
  %1130 = load double* %cr01.i877, align 8, !tbaa !4
  %mul505.i = fmul double %1125, %1130
  %add506.i995 = fadd double %mul504.i, %mul505.i
  %1131 = load double* %ci01.i874, align 8, !tbaa !4
  %mul507.i = fmul double %1124, %1131
  %add508.i = fadd double %add506.i995, %mul507.i
  store double %add508.i, double* %arrayidx487.i, align 8, !tbaa !4
  %1132 = load double* %cr01.i877, align 8, !tbaa !4
  %mul513.i = fmul double %1122, %1132
  %1133 = load double* %ci01.i874, align 8, !tbaa !4
  %mul514.i = fmul double %1123, %1133
  %add515.i = fadd double %mul513.i, %mul514.i
  %1134 = load double* %cr11.i878, align 8, !tbaa !4
  %mul516.i = fmul double %1124, %1134
  %add517.i = fadd double %add515.i, %mul516.i
  store double %add517.i, double* %arrayidx491.i, align 8, !tbaa !4
  %1135 = load double* %cr01.i877, align 8, !tbaa !4
  %mul522.i = fmul double %1123, %1135
  %1136 = load double* %ci01.i874, align 8, !tbaa !4
  %mul523.i = fmul double %1122, %1136
  %sub524.i = fsub double %mul522.i, %mul523.i
  %1137 = load double* %cr11.i878, align 8, !tbaa !4
  %mul525.i = fmul double %1125, %1137
  %add526.i = fadd double %sub524.i, %mul525.i
  store double %add526.i, double* %arrayidx495.i, align 8, !tbaa !4
  br label %if.end532.i

if.end532.i:                                      ; preds = %if.then462.i, %if.then438.i, %for.body434.i
  %kk.5.i996 = phi i32 [ %inc442.i, %if.then438.i ], [ %inc478.i, %if.then462.i ], [ %kk.4878.i, %for.body434.i ]
  %add533.i = add nsw i32 %1110, %irowA.3877.i
  %1138 = load i32* %nrowA.i885, align 4, !tbaa !3
  %cmp433.i = icmp slt i32 %add533.i, %1138
  br i1 %cmp433.i, label %if.end532.i.for.body434.i_crit_edge, label %sw.epilog41

if.end532.i.for.body434.i_crit_edge:              ; preds = %if.end532.i
  %indvars.iv.next897.i = add i64 %indvars.iv896.i, 1
  br label %for.body434.i

sw.default34:                                     ; preds = %sw.bb24
  %1139 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1139, i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 2) #5
  call void @exit(i32 -1) #6
  unreachable

sw.default38:                                     ; preds = %if.end12
  %1140 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1140, i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxB, i32 %7) #5
  call void @exit(i32 -1) #6
  unreachable

sw.epilog41:                                      ; preds = %if.end532.i, %if.end423.i, %if.end637.i, %if.end505.i, %for.body119.i, %for.body71.i, %for.cond157.i, %for.cond89.i, %for.cond169.i, %for.cond95.i, %for.inc222.i, %for.inc165.i, %for.inc218.i, %for.inc163.i, %if.end242.i, %if.end184.i, %for.body41.i, %for.body24.i270, %for.cond85.i, %for.cond46.i, %for.cond97.i, %for.cond52.i, %for.inc122.i, %for.inc84.i, %for.inc124.i, %for.inc88.i, %for.cond432.preheader.i, %if.else428.i, %if.then253.i, %for.cond514.preheader.i, %if.else510.i, %if.then300.i, %for.cond117.preheader.i, %if.else.i756, %if.then.i744, %if.else.i693, %if.else.i568, %for.cond171.preheader.i, %if.else.i481, %if.then92.i459, %for.cond169.preheader.i, %if.else.i387, %if.then92.i, %for.cond193.preheader.i, %if.else189.i, %if.then110.i, %for.cond39.preheader.i, %if.else.i272, %if.then.i262, %if.else.i235, %if.else.i181, %for.cond90.preheader.i, %if.else.i138, %if.then48.i125, %for.cond94.preheader.i, %if.else.i, %if.then48.i
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @SubMtx_blockDiagonalInfo(%struct._SubMtx*, i32*, i32*, i32**, double**) #3

; Function Attrs: optsize
declare void @SubMtx_denseInfo(%struct._SubMtx*, i32*, i32*, i32*, i32*, double**) #3

; Function Attrs: optsize
declare i32 @Zrecip(double, double, double*, double*) #3

; Function Attrs: optsize
declare i32 @Zrecip2(double, double, double, double, double, double, double, double, double*, double*, double*, double*, double*, double*, double*, double*) #3

; Function Attrs: optsize
declare void @SubMtx_diagonalInfo(%struct._SubMtx*, i32*, double**) #3

; Function Attrs: optsize
declare void @SubMtx_sparseColumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #3

; Function Attrs: optsize
declare void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #3

; Function Attrs: optsize
declare void @SubMtx_sparseRowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #3

; Function Attrs: optsize
declare void @SubMtx_denseSubrowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #3

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
