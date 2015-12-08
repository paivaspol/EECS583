; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_solveupdT.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [56 x i8] c"\0A fatal error in SubMtx_solveupdT(%p,%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [84 x i8] c"\0A fatal error in SubMtx_solveupdT(%p,%p,%p)\0A Y must have mode SUBMTX_DENSE_COLUMNS\0A\00", align 1
@.str2 = private unnamed_addr constant [84 x i8] c"\0A fatal error in SubMtx_solveupdT(%p,%p,%p)\0A X must have mode SUBMTX_DENSE_COLUMNS\0A\00", align 1
@.str3 = private unnamed_addr constant [72 x i8] c"\0A fatal error in SubMtx_solveupdT(%p,%p,%p)\0A unsupported mode %d for A\0A\00", align 1
@.str4 = private unnamed_addr constant [72 x i8] c"\0A fatal error in SubMtx_solveupdT(%p,%p,%p)\0A unsupported type %d for A\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_solveupdT(%struct._SubMtx* %mtxY, %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxX) #0 {
entry:
  %entA.i901 = alloca double*, align 8
  %entX.i902 = alloca double*, align 8
  %entY.i903 = alloca double*, align 8
  %inc1.i904 = alloca i32, align 4
  %inc2.i905 = alloca i32, align 4
  %ncolAT.i906 = alloca i32, align 4
  %ncolX.i907 = alloca i32, align 4
  %ncolY.i908 = alloca i32, align 4
  %nentA.i909 = alloca i32, align 4
  %nrowAT.i910 = alloca i32, align 4
  %nrowX.i911 = alloca i32, align 4
  %nrowY.i912 = alloca i32, align 4
  %colindAT.i913 = alloca i32*, align 8
  %indices.i914 = alloca i32*, align 8
  %rowindAT.i915 = alloca i32*, align 8
  %sizes.i916 = alloca i32*, align 8
  %entA.i744 = alloca double*, align 8
  %entX.i745 = alloca double*, align 8
  %entY.i746 = alloca double*, align 8
  %inc1.i747 = alloca i32, align 4
  %inc2.i748 = alloca i32, align 4
  %ncolAT.i749 = alloca i32, align 4
  %ncolX.i750 = alloca i32, align 4
  %ncolY.i751 = alloca i32, align 4
  %nentA.i752 = alloca i32, align 4
  %nrowAT.i753 = alloca i32, align 4
  %nrowX.i754 = alloca i32, align 4
  %nrowY.i755 = alloca i32, align 4
  %colindAT.i756 = alloca i32*, align 8
  %indices.i757 = alloca i32*, align 8
  %rowindAT.i758 = alloca i32*, align 8
  %sizes.i759 = alloca i32*, align 8
  %entA.i478 = alloca double*, align 8
  %entX.i479 = alloca double*, align 8
  %entY.i480 = alloca double*, align 8
  %inc1.i481 = alloca i32, align 4
  %inc2.i482 = alloca i32, align 4
  %ncolAT.i483 = alloca i32, align 4
  %ncolX.i484 = alloca i32, align 4
  %ncolY.i485 = alloca i32, align 4
  %nrowAT.i486 = alloca i32, align 4
  %nrowX.i487 = alloca i32, align 4
  %nrowY.i488 = alloca i32, align 4
  %colindAT.i489 = alloca i32*, align 8
  %rowindAT.i490 = alloca i32*, align 8
  %entA.i304 = alloca double*, align 8
  %entX.i305 = alloca double*, align 8
  %entY.i306 = alloca double*, align 8
  %inc1.i307 = alloca i32, align 4
  %inc2.i308 = alloca i32, align 4
  %ncolAT.i309 = alloca i32, align 4
  %ncolX.i310 = alloca i32, align 4
  %ncolY.i311 = alloca i32, align 4
  %nrowAT.i312 = alloca i32, align 4
  %nrowX.i313 = alloca i32, align 4
  %nrowY.i314 = alloca i32, align 4
  %colindAT.i315 = alloca i32*, align 8
  %rowindAT.i316 = alloca i32*, align 8
  %entA.i218 = alloca double*, align 8
  %entX.i219 = alloca double*, align 8
  %entY.i220 = alloca double*, align 8
  %inc1.i221 = alloca i32, align 4
  %inc2.i222 = alloca i32, align 4
  %ncolAT.i223 = alloca i32, align 4
  %ncolX.i224 = alloca i32, align 4
  %ncolY.i225 = alloca i32, align 4
  %nentA.i226 = alloca i32, align 4
  %nrowAT.i227 = alloca i32, align 4
  %nrowX.i228 = alloca i32, align 4
  %nrowY.i229 = alloca i32, align 4
  %colindAT.i230 = alloca i32*, align 8
  %indices.i231 = alloca i32*, align 8
  %rowindAT.i232 = alloca i32*, align 8
  %sizes.i233 = alloca i32*, align 8
  %entA.i162 = alloca double*, align 8
  %entX.i163 = alloca double*, align 8
  %entY.i164 = alloca double*, align 8
  %inc1.i165 = alloca i32, align 4
  %inc2.i166 = alloca i32, align 4
  %ncolAT.i167 = alloca i32, align 4
  %ncolX.i168 = alloca i32, align 4
  %ncolY.i169 = alloca i32, align 4
  %nentA.i = alloca i32, align 4
  %nrowAT.i170 = alloca i32, align 4
  %nrowX.i171 = alloca i32, align 4
  %nrowY.i172 = alloca i32, align 4
  %colindAT.i173 = alloca i32*, align 8
  %indices.i = alloca i32*, align 8
  %rowindAT.i174 = alloca i32*, align 8
  %sizes.i = alloca i32*, align 8
  %entA.i85 = alloca double*, align 8
  %entX.i86 = alloca double*, align 8
  %entY.i87 = alloca double*, align 8
  %inc1.i88 = alloca i32, align 4
  %inc2.i89 = alloca i32, align 4
  %ncolAT.i90 = alloca i32, align 4
  %ncolX.i91 = alloca i32, align 4
  %ncolY.i92 = alloca i32, align 4
  %nrowAT.i93 = alloca i32, align 4
  %nrowX.i94 = alloca i32, align 4
  %nrowY.i95 = alloca i32, align 4
  %colindAT.i96 = alloca i32*, align 8
  %rowindAT.i97 = alloca i32*, align 8
  %entA.i = alloca double*, align 8
  %entX.i = alloca double*, align 8
  %entY.i = alloca double*, align 8
  %inc1.i = alloca i32, align 4
  %inc2.i = alloca i32, align 4
  %ncolAT.i = alloca i32, align 4
  %ncolX.i = alloca i32, align 4
  %ncolY.i = alloca i32, align 4
  %nrowAT.i = alloca i32, align 4
  %nrowX.i = alloca i32, align 4
  %nrowY.i = alloca i32, align 4
  %colindAT.i = alloca i32*, align 8
  %rowindAT.i = alloca i32*, align 8
  %cmp = icmp eq %struct._SubMtx* %mtxY, null
  %cmp1 = icmp eq %struct._SubMtx* %mtxA, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct._SubMtx* %mtxX, null
  %or.cond84 = or i1 %or.cond, %cmp3
  br i1 %or.cond84, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), %struct._SubMtx* %mtxY, %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxX) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct._SubMtx* %mtxY, i64 0, i32 1
  %1 = load i32* %mode, align 4, !tbaa !3
  %cmp4 = icmp eq i32 %1, 1
  br i1 %cmp4, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([84 x i8]* @.str1, i64 0, i64 0), %struct._SubMtx* %mtxY, %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxX) #5
  call void @exit(i32 -1) #6
  unreachable

if.end7:                                          ; preds = %if.end
  %mode8 = getelementptr inbounds %struct._SubMtx* %mtxX, i64 0, i32 1
  %3 = load i32* %mode8, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %3, 1
  br i1 %cmp9, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end7
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([84 x i8]* @.str2, i64 0, i64 0), %struct._SubMtx* %mtxY, %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxX) #5
  call void @exit(i32 -1) #6
  unreachable

if.end12:                                         ; preds = %if.end7
  %type = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 0
  %5 = load i32* %type, align 4, !tbaa !3
  switch i32 %5, label %sw.default30 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb20
  ]

sw.bb:                                            ; preds = %if.end12
  %mode13 = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 1
  %6 = load i32* %mode13, align 4, !tbaa !3
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb14
    i32 0, label %sw.bb15
    i32 2, label %sw.bb16
    i32 3, label %sw.bb17
  ]

sw.bb14:                                          ; preds = %sw.bb
  %7 = bitcast double** %entA.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #4
  %8 = bitcast double** %entX.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #4
  %9 = bitcast double** %entY.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #4
  %10 = bitcast i32* %inc1.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #4
  %11 = bitcast i32* %inc2.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #4
  %12 = bitcast i32* %ncolAT.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #4
  %13 = bitcast i32* %ncolX.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #4
  %14 = bitcast i32* %ncolY.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #4
  %15 = bitcast i32* %nrowAT.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #4
  %16 = bitcast i32* %nrowX.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #4
  %17 = bitcast i32* %nrowY.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #4
  %18 = bitcast i32** %colindAT.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #4
  %19 = bitcast i32** %rowindAT.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #4
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxY, i32* %nrowY.i, i32* %ncolY.i, i32* %inc1.i, i32* %inc2.i, double** %entY.i) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxX, i32* %nrowX.i, i32* %ncolX.i, i32* %inc1.i, i32* %inc2.i, double** %entX.i) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxA, i32* %ncolAT.i, i32* %nrowAT.i, i32* %inc1.i, i32* %inc2.i, double** %entA.i) #5
  %20 = load i32* %ncolAT.i, align 4, !tbaa !3
  %21 = load i32* %nrowX.i, align 4, !tbaa !3
  %cmp.i = icmp eq i32 %20, %21
  br i1 %cmp.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb14
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtxA, i32* %ncolAT.i, i32** %colindAT.i) #5
  br label %if.end.i

if.else.i:                                        ; preds = %sw.bb14
  store i32* null, i32** %colindAT.i, align 8, !tbaa !0
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %22 = load i32* %nrowAT.i, align 4, !tbaa !3
  %23 = load i32* %nrowY.i, align 4, !tbaa !3
  %cmp1.i = icmp eq i32 %22, %23
  br i1 %cmp1.i, label %if.else3.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtxA, i32* %nrowAT.i, i32** %rowindAT.i) #5
  br label %if.end4.i

if.else3.i:                                       ; preds = %if.end.i
  store i32* null, i32** %rowindAT.i, align 8, !tbaa !0
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.else3.i, %if.then2.i
  %24 = load double** %entX.i, align 8, !tbaa !0
  %25 = load double** %entY.i, align 8, !tbaa !0
  %26 = load i32* %ncolX.i, align 4, !tbaa !3
  %sub1803.i = add nsw i32 %26, -2
  %cmp51804.i = icmp sgt i32 %sub1803.i, 0
  br i1 %cmp51804.i, label %for.body.lr.ph.i, label %for.end383.i

for.body.lr.ph.i:                                 ; preds = %if.end4.i
  %27 = load i32* %nrowX.i, align 4, !tbaa !3
  %idx.ext.i = sext i32 %27 to i64
  %add.ptr.sum.i = shl nsw i64 %idx.ext.i, 1
  %28 = load i32* %nrowY.i, align 4, !tbaa !3
  %idx.ext8.i = sext i32 %28 to i64
  %add.ptr9.sum.i = shl nsw i64 %idx.ext8.i, 1
  %29 = load double** %entA.i, align 8, !tbaa !0
  %30 = load i32* %nrowAT.i, align 4, !tbaa !3
  %sub131743.i = add nsw i32 %30, -2
  %cmp141744.i = icmp sgt i32 %sub131743.i, 0
  %31 = load i32* %ncolAT.i, align 4, !tbaa !3
  %idx.ext182.i = sext i32 %31 to i64
  %cmp184.i = icmp eq i32 %31, %27
  %cmp246.i = icmp eq i32 %28, %30
  %32 = load i32** %rowindAT.i, align 8, !tbaa !0
  %cmp2161771.i = icmp sgt i32 %31, 0
  %33 = load i32** %colindAT.i, align 8, !tbaa !0
  %add.ptr7.sum.i = add i64 %add.ptr.sum.i, %idx.ext.i
  %add.ptr11.sum.i = add i64 %add.ptr9.sum.i, %idx.ext8.i
  %add.ptr17.sum.i = shl nsw i64 %idx.ext182.i, 1
  %add.ptr19.sum.i = add i64 %add.ptr17.sum.i, %idx.ext182.i
  %idxprom248.i = sext i32 %sub131743.i to i64
  %add.ptr9.sum1548.i = add i64 %idxprom248.i, %idx.ext8.i
  %add.ptr11.sum1549.i = add i64 %idxprom248.i, %add.ptr9.sum.i
  %add257.i = add nsw i32 %30, -1
  %idxprom258.i = sext i32 %add257.i to i64
  %add.ptr9.sum1550.i = add i64 %idxprom258.i, %idx.ext8.i
  %add.ptr11.sum1551.i = add i64 %idxprom258.i, %add.ptr9.sum.i
  %arrayidx271.i = getelementptr inbounds i32* %32, i64 %idxprom248.i
  %arrayidx283.i = getelementptr inbounds i32* %32, i64 %idxprom258.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end376.i, %for.body.lr.ph.i
  %jcolX.01817.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add382.i, %if.end376.i ]
  %colX0.01808.i = phi double* [ %24, %for.body.lr.ph.i ], [ %add.ptr378.i, %if.end376.i ]
  %colY0.01805.i = phi double* [ %25, %for.body.lr.ph.i ], [ %add.ptr380.i, %if.end376.i ]
  br i1 %cmp141744.i, label %for.body15.i, label %for.end167.i

for.body15.i:                                     ; preds = %for.body.i, %if.end162.i
  %indvars.iv1865.i = phi i64 [ %indvars.iv.next1866.i, %if.end162.i ], [ 0, %for.body.i ]
  %irowAT.01749.i = phi i32 [ %add166.i, %if.end162.i ], [ 0, %for.body.i ]
  %rowAT0.01745.i = phi double* [ %add.ptr164.i, %if.end162.i ], [ %29, %for.body.i ]
  br i1 %cmp184.i, label %for.cond22.preheader.i, label %for.cond52.preheader.i

for.cond22.preheader.i:                           ; preds = %for.body15.i
  br i1 %cmp2161771.i, label %for.body24.i, label %if.end90.i

for.cond52.preheader.i:                           ; preds = %for.body15.i
  br i1 %cmp2161771.i, label %for.body54.i, label %if.end90.i

for.body24.i:                                     ; preds = %for.cond22.preheader.i, %for.body24.i
  %indvars.iv1861.i = phi i64 [ %indvars.iv.next1862.i, %for.body24.i ], [ 0, %for.cond22.preheader.i ]
  %sum22.01732.i = phi double [ %add50.i, %for.body24.i ], [ 0.000000e+00, %for.cond22.preheader.i ]
  %sum21.01731.i = phi double [ %add48.i, %for.body24.i ], [ 0.000000e+00, %for.cond22.preheader.i ]
  %sum20.01730.i = phi double [ %add46.i, %for.body24.i ], [ 0.000000e+00, %for.cond22.preheader.i ]
  %sum12.01729.i = phi double [ %add44.i, %for.body24.i ], [ 0.000000e+00, %for.cond22.preheader.i ]
  %sum11.01728.i = phi double [ %add42.i, %for.body24.i ], [ 0.000000e+00, %for.cond22.preheader.i ]
  %sum10.01727.i = phi double [ %add40.i, %for.body24.i ], [ 0.000000e+00, %for.cond22.preheader.i ]
  %sum02.01726.i = phi double [ %add38.i, %for.body24.i ], [ 0.000000e+00, %for.cond22.preheader.i ]
  %sum01.01725.i = phi double [ %add36.i, %for.body24.i ], [ 0.000000e+00, %for.cond22.preheader.i ]
  %sum00.01724.i = phi double [ %add.i, %for.body24.i ], [ 0.000000e+00, %for.cond22.preheader.i ]
  %arrayidx.i = getelementptr inbounds double* %rowAT0.01745.i, i64 %indvars.iv1861.i
  %34 = load double* %arrayidx.i, align 8, !tbaa !4
  %add.ptr17.sum1573.i = add i64 %indvars.iv1861.i, %idx.ext182.i
  %arrayidx26.i = getelementptr inbounds double* %rowAT0.01745.i, i64 %add.ptr17.sum1573.i
  %35 = load double* %arrayidx26.i, align 8, !tbaa !4
  %add.ptr19.sum1574.i = add i64 %indvars.iv1861.i, %add.ptr17.sum.i
  %arrayidx28.i = getelementptr inbounds double* %rowAT0.01745.i, i64 %add.ptr19.sum1574.i
  %36 = load double* %arrayidx28.i, align 8, !tbaa !4
  %arrayidx30.i = getelementptr inbounds double* %colX0.01808.i, i64 %indvars.iv1861.i
  %37 = load double* %arrayidx30.i, align 8, !tbaa !4
  %add.ptr.sum1575.i = add i64 %indvars.iv1861.i, %idx.ext.i
  %arrayidx32.i = getelementptr inbounds double* %colX0.01808.i, i64 %add.ptr.sum1575.i
  %38 = load double* %arrayidx32.i, align 8, !tbaa !4
  %add.ptr7.sum1576.i = add i64 %indvars.iv1861.i, %add.ptr.sum.i
  %arrayidx34.i = getelementptr inbounds double* %colX0.01808.i, i64 %add.ptr7.sum1576.i
  %39 = load double* %arrayidx34.i, align 8, !tbaa !4
  %mul.i = fmul double %34, %37
  %add.i = fadd double %sum00.01724.i, %mul.i
  %mul35.i = fmul double %34, %38
  %add36.i = fadd double %sum01.01725.i, %mul35.i
  %mul37.i = fmul double %34, %39
  %add38.i = fadd double %sum02.01726.i, %mul37.i
  %mul39.i = fmul double %35, %37
  %add40.i = fadd double %sum10.01727.i, %mul39.i
  %mul41.i = fmul double %35, %38
  %add42.i = fadd double %sum11.01728.i, %mul41.i
  %mul43.i = fmul double %35, %39
  %add44.i = fadd double %sum12.01729.i, %mul43.i
  %mul45.i = fmul double %36, %37
  %add46.i = fadd double %sum20.01730.i, %mul45.i
  %mul47.i = fmul double %36, %38
  %add48.i = fadd double %sum21.01731.i, %mul47.i
  %mul49.i = fmul double %36, %39
  %add50.i = fadd double %sum22.01732.i, %mul49.i
  %indvars.iv.next1862.i = add i64 %indvars.iv1861.i, 1
  %lftr.wideiv1165 = trunc i64 %indvars.iv.next1862.i to i32
  %exitcond1166 = icmp eq i32 %lftr.wideiv1165, %27
  br i1 %exitcond1166, label %if.end90.i, label %for.body24.i

for.body54.i:                                     ; preds = %for.cond52.preheader.i, %for.body54.i
  %indvars.iv1859.i = phi i64 [ %indvars.iv.next1860.i, %for.body54.i ], [ 0, %for.cond52.preheader.i ]
  %sum22.11711.i = phi double [ %add86.i, %for.body54.i ], [ 0.000000e+00, %for.cond52.preheader.i ]
  %sum21.11710.i = phi double [ %add84.i, %for.body54.i ], [ 0.000000e+00, %for.cond52.preheader.i ]
  %sum20.11709.i = phi double [ %add82.i, %for.body54.i ], [ 0.000000e+00, %for.cond52.preheader.i ]
  %sum12.11708.i = phi double [ %add80.i, %for.body54.i ], [ 0.000000e+00, %for.cond52.preheader.i ]
  %sum11.11707.i = phi double [ %add78.i, %for.body54.i ], [ 0.000000e+00, %for.cond52.preheader.i ]
  %sum10.11706.i = phi double [ %add76.i, %for.body54.i ], [ 0.000000e+00, %for.cond52.preheader.i ]
  %sum02.11705.i = phi double [ %add74.i, %for.body54.i ], [ 0.000000e+00, %for.cond52.preheader.i ]
  %sum01.11704.i = phi double [ %add72.i, %for.body54.i ], [ 0.000000e+00, %for.cond52.preheader.i ]
  %sum00.11703.i = phi double [ %add70.i, %for.body54.i ], [ 0.000000e+00, %for.cond52.preheader.i ]
  %arrayidx56.i = getelementptr inbounds double* %rowAT0.01745.i, i64 %indvars.iv1859.i
  %40 = load double* %arrayidx56.i, align 8, !tbaa !4
  %add.ptr17.sum1569.i = add i64 %indvars.iv1859.i, %idx.ext182.i
  %arrayidx58.i = getelementptr inbounds double* %rowAT0.01745.i, i64 %add.ptr17.sum1569.i
  %41 = load double* %arrayidx58.i, align 8, !tbaa !4
  %add.ptr19.sum1570.i = add i64 %indvars.iv1859.i, %add.ptr17.sum.i
  %arrayidx60.i = getelementptr inbounds double* %rowAT0.01745.i, i64 %add.ptr19.sum1570.i
  %42 = load double* %arrayidx60.i, align 8, !tbaa !4
  %arrayidx62.i = getelementptr inbounds i32* %33, i64 %indvars.iv1859.i
  %43 = load i32* %arrayidx62.i, align 4, !tbaa !3
  %idxprom63.i = sext i32 %43 to i64
  %arrayidx64.i = getelementptr inbounds double* %colX0.01808.i, i64 %idxprom63.i
  %44 = load double* %arrayidx64.i, align 8, !tbaa !4
  %add.ptr.sum1571.i = add i64 %idxprom63.i, %idx.ext.i
  %arrayidx66.i = getelementptr inbounds double* %colX0.01808.i, i64 %add.ptr.sum1571.i
  %45 = load double* %arrayidx66.i, align 8, !tbaa !4
  %add.ptr7.sum1572.i = add i64 %idxprom63.i, %add.ptr.sum.i
  %arrayidx68.i = getelementptr inbounds double* %colX0.01808.i, i64 %add.ptr7.sum1572.i
  %46 = load double* %arrayidx68.i, align 8, !tbaa !4
  %mul69.i = fmul double %40, %44
  %add70.i = fadd double %sum00.11703.i, %mul69.i
  %mul71.i = fmul double %40, %45
  %add72.i = fadd double %sum01.11704.i, %mul71.i
  %mul73.i = fmul double %40, %46
  %add74.i = fadd double %sum02.11705.i, %mul73.i
  %mul75.i = fmul double %41, %44
  %add76.i = fadd double %sum10.11706.i, %mul75.i
  %mul77.i = fmul double %41, %45
  %add78.i = fadd double %sum11.11707.i, %mul77.i
  %mul79.i = fmul double %41, %46
  %add80.i = fadd double %sum12.11708.i, %mul79.i
  %mul81.i = fmul double %42, %44
  %add82.i = fadd double %sum20.11709.i, %mul81.i
  %mul83.i = fmul double %42, %45
  %add84.i = fadd double %sum21.11710.i, %mul83.i
  %mul85.i = fmul double %42, %46
  %add86.i = fadd double %sum22.11711.i, %mul85.i
  %indvars.iv.next1860.i = add i64 %indvars.iv1859.i, 1
  %lftr.wideiv1163 = trunc i64 %indvars.iv.next1860.i to i32
  %exitcond1164 = icmp eq i32 %lftr.wideiv1163, %31
  br i1 %exitcond1164, label %if.end90.i, label %for.body54.i

if.end90.i:                                       ; preds = %for.body24.i, %for.body54.i, %for.cond52.preheader.i, %for.cond22.preheader.i
  %sum00.2.i = phi double [ 0.000000e+00, %for.cond52.preheader.i ], [ 0.000000e+00, %for.cond22.preheader.i ], [ %add70.i, %for.body54.i ], [ %add.i, %for.body24.i ]
  %sum01.2.i = phi double [ 0.000000e+00, %for.cond52.preheader.i ], [ 0.000000e+00, %for.cond22.preheader.i ], [ %add72.i, %for.body54.i ], [ %add36.i, %for.body24.i ]
  %sum02.2.i = phi double [ 0.000000e+00, %for.cond52.preheader.i ], [ 0.000000e+00, %for.cond22.preheader.i ], [ %add74.i, %for.body54.i ], [ %add38.i, %for.body24.i ]
  %sum10.2.i = phi double [ 0.000000e+00, %for.cond52.preheader.i ], [ 0.000000e+00, %for.cond22.preheader.i ], [ %add76.i, %for.body54.i ], [ %add40.i, %for.body24.i ]
  %sum11.2.i = phi double [ 0.000000e+00, %for.cond52.preheader.i ], [ 0.000000e+00, %for.cond22.preheader.i ], [ %add78.i, %for.body54.i ], [ %add42.i, %for.body24.i ]
  %sum12.2.i = phi double [ 0.000000e+00, %for.cond52.preheader.i ], [ 0.000000e+00, %for.cond22.preheader.i ], [ %add80.i, %for.body54.i ], [ %add44.i, %for.body24.i ]
  %sum20.2.i = phi double [ 0.000000e+00, %for.cond52.preheader.i ], [ 0.000000e+00, %for.cond22.preheader.i ], [ %add82.i, %for.body54.i ], [ %add46.i, %for.body24.i ]
  %sum21.2.i = phi double [ 0.000000e+00, %for.cond52.preheader.i ], [ 0.000000e+00, %for.cond22.preheader.i ], [ %add84.i, %for.body54.i ], [ %add48.i, %for.body24.i ]
  %sum22.2.i = phi double [ 0.000000e+00, %for.cond52.preheader.i ], [ 0.000000e+00, %for.cond22.preheader.i ], [ %add86.i, %for.body54.i ], [ %add50.i, %for.body24.i ]
  br i1 %cmp246.i, label %if.then92.i, label %if.else126.i

if.then92.i:                                      ; preds = %if.end90.i
  %arrayidx94.i = getelementptr inbounds double* %colY0.01805.i, i64 %indvars.iv1865.i
  %47 = load double* %arrayidx94.i, align 8, !tbaa !4
  %sub95.i = fsub double %47, %sum00.2.i
  store double %sub95.i, double* %arrayidx94.i, align 8, !tbaa !4
  %add.ptr9.sum1563.i = add i64 %indvars.iv1865.i, %idx.ext8.i
  %arrayidx97.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr9.sum1563.i
  %48 = load double* %arrayidx97.i, align 8, !tbaa !4
  %sub98.i = fsub double %48, %sum01.2.i
  store double %sub98.i, double* %arrayidx97.i, align 8, !tbaa !4
  %add.ptr11.sum1564.i = add i64 %indvars.iv1865.i, %add.ptr9.sum.i
  %arrayidx100.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr11.sum1564.i
  %49 = load double* %arrayidx100.i, align 8, !tbaa !4
  %sub101.i = fsub double %49, %sum02.2.i
  store double %sub101.i, double* %arrayidx100.i, align 8, !tbaa !4
  %50 = add nsw i64 %indvars.iv1865.i, 1
  %arrayidx104.i = getelementptr inbounds double* %colY0.01805.i, i64 %50
  %51 = load double* %arrayidx104.i, align 8, !tbaa !4
  %sub105.i = fsub double %51, %sum10.2.i
  store double %sub105.i, double* %arrayidx104.i, align 8, !tbaa !4
  %add.ptr9.sum1565.i = add i64 %50, %idx.ext8.i
  %arrayidx108.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr9.sum1565.i
  %52 = load double* %arrayidx108.i, align 8, !tbaa !4
  %sub109.i = fsub double %52, %sum11.2.i
  store double %sub109.i, double* %arrayidx108.i, align 8, !tbaa !4
  %add.ptr11.sum1566.i = add i64 %50, %add.ptr9.sum.i
  %arrayidx112.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr11.sum1566.i
  %53 = load double* %arrayidx112.i, align 8, !tbaa !4
  %sub113.i = fsub double %53, %sum12.2.i
  store double %sub113.i, double* %arrayidx112.i, align 8, !tbaa !4
  %54 = add nsw i64 %indvars.iv1865.i, 2
  %arrayidx116.i = getelementptr inbounds double* %colY0.01805.i, i64 %54
  %55 = load double* %arrayidx116.i, align 8, !tbaa !4
  %sub117.i = fsub double %55, %sum20.2.i
  store double %sub117.i, double* %arrayidx116.i, align 8, !tbaa !4
  %add.ptr9.sum1567.i = add i64 %54, %idx.ext8.i
  %arrayidx120.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr9.sum1567.i
  %56 = load double* %arrayidx120.i, align 8, !tbaa !4
  %sub121.i = fsub double %56, %sum21.2.i
  store double %sub121.i, double* %arrayidx120.i, align 8, !tbaa !4
  %add.ptr11.sum1568.i = add i64 %54, %add.ptr9.sum.i
  %arrayidx124.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr11.sum1568.i
  %57 = load double* %arrayidx124.i, align 8, !tbaa !4
  %sub125.i = fsub double %57, %sum22.2.i
  store double %sub125.i, double* %arrayidx124.i, align 8, !tbaa !4
  br label %if.end162.i

if.else126.i:                                     ; preds = %if.end90.i
  %arrayidx128.i = getelementptr inbounds i32* %32, i64 %indvars.iv1865.i
  %58 = load i32* %arrayidx128.i, align 4, !tbaa !3
  %idxprom129.i = sext i32 %58 to i64
  %arrayidx130.i = getelementptr inbounds double* %colY0.01805.i, i64 %idxprom129.i
  %59 = load double* %arrayidx130.i, align 8, !tbaa !4
  %sub131.i = fsub double %59, %sum00.2.i
  store double %sub131.i, double* %arrayidx130.i, align 8, !tbaa !4
  %add.ptr9.sum1557.i = add i64 %idxprom129.i, %idx.ext8.i
  %arrayidx133.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr9.sum1557.i
  %60 = load double* %arrayidx133.i, align 8, !tbaa !4
  %sub134.i = fsub double %60, %sum01.2.i
  store double %sub134.i, double* %arrayidx133.i, align 8, !tbaa !4
  %add.ptr11.sum1558.i = add i64 %idxprom129.i, %add.ptr9.sum.i
  %arrayidx136.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr11.sum1558.i
  %61 = load double* %arrayidx136.i, align 8, !tbaa !4
  %sub137.i = fsub double %61, %sum02.2.i
  store double %sub137.i, double* %arrayidx136.i, align 8, !tbaa !4
  %62 = add nsw i64 %indvars.iv1865.i, 1
  %arrayidx140.i = getelementptr inbounds i32* %32, i64 %62
  %63 = load i32* %arrayidx140.i, align 4, !tbaa !3
  %idxprom141.i = sext i32 %63 to i64
  %arrayidx142.i = getelementptr inbounds double* %colY0.01805.i, i64 %idxprom141.i
  %64 = load double* %arrayidx142.i, align 8, !tbaa !4
  %sub143.i = fsub double %64, %sum10.2.i
  store double %sub143.i, double* %arrayidx142.i, align 8, !tbaa !4
  %add.ptr9.sum1559.i = add i64 %idxprom141.i, %idx.ext8.i
  %arrayidx145.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr9.sum1559.i
  %65 = load double* %arrayidx145.i, align 8, !tbaa !4
  %sub146.i = fsub double %65, %sum11.2.i
  store double %sub146.i, double* %arrayidx145.i, align 8, !tbaa !4
  %add.ptr11.sum1560.i = add i64 %idxprom141.i, %add.ptr9.sum.i
  %arrayidx148.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr11.sum1560.i
  %66 = load double* %arrayidx148.i, align 8, !tbaa !4
  %sub149.i = fsub double %66, %sum12.2.i
  store double %sub149.i, double* %arrayidx148.i, align 8, !tbaa !4
  %67 = add nsw i64 %indvars.iv1865.i, 2
  %arrayidx152.i = getelementptr inbounds i32* %32, i64 %67
  %68 = load i32* %arrayidx152.i, align 4, !tbaa !3
  %idxprom153.i = sext i32 %68 to i64
  %arrayidx154.i = getelementptr inbounds double* %colY0.01805.i, i64 %idxprom153.i
  %69 = load double* %arrayidx154.i, align 8, !tbaa !4
  %sub155.i = fsub double %69, %sum20.2.i
  store double %sub155.i, double* %arrayidx154.i, align 8, !tbaa !4
  %add.ptr9.sum1561.i = add i64 %idxprom153.i, %idx.ext8.i
  %arrayidx157.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr9.sum1561.i
  %70 = load double* %arrayidx157.i, align 8, !tbaa !4
  %sub158.i = fsub double %70, %sum21.2.i
  store double %sub158.i, double* %arrayidx157.i, align 8, !tbaa !4
  %add.ptr11.sum1562.i = add i64 %idxprom153.i, %add.ptr9.sum.i
  %arrayidx160.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr11.sum1562.i
  %71 = load double* %arrayidx160.i, align 8, !tbaa !4
  %sub161.i = fsub double %71, %sum22.2.i
  store double %sub161.i, double* %arrayidx160.i, align 8, !tbaa !4
  br label %if.end162.i

if.end162.i:                                      ; preds = %if.else126.i, %if.then92.i
  %add.ptr164.i = getelementptr inbounds double* %rowAT0.01745.i, i64 %add.ptr19.sum.i
  %indvars.iv.next1866.i = add i64 %indvars.iv1865.i, 3
  %add166.i = add nsw i32 %irowAT.01749.i, 3
  %72 = trunc i64 %indvars.iv.next1866.i to i32
  %cmp14.i = icmp slt i32 %72, %sub131743.i
  br i1 %cmp14.i, label %for.body15.i, label %for.end167.i

for.end167.i:                                     ; preds = %if.end162.i, %for.body.i
  %irowAT.0.lcssa.i = phi i32 [ 0, %for.body.i ], [ %add166.i, %if.end162.i ]
  %rowAT0.0.lcssa.i = phi double* [ %29, %for.body.i ], [ %add.ptr164.i, %if.end162.i ]
  %cmp169.i = icmp eq i32 %irowAT.0.lcssa.i, %sub131743.i
  br i1 %cmp169.i, label %if.then170.i, label %if.else294.i

if.then170.i:                                     ; preds = %for.end167.i
  br i1 %cmp184.i, label %for.cond186.preheader.i, label %for.cond215.preheader.i

for.cond186.preheader.i:                          ; preds = %if.then170.i
  br i1 %cmp2161771.i, label %for.body188.i, label %if.end245.i

for.cond215.preheader.i:                          ; preds = %if.then170.i
  br i1 %cmp2161771.i, label %for.body217.i, label %if.end245.i

for.body188.i:                                    ; preds = %for.cond186.preheader.i, %for.body188.i
  %indvars.iv1883.i = phi i64 [ %indvars.iv.next1884.i, %for.body188.i ], [ 0, %for.cond186.preheader.i ]
  %sum12181.01793.i = phi double [ %add210.i, %for.body188.i ], [ 0.000000e+00, %for.cond186.preheader.i ]
  %sum11180.01792.i = phi double [ %add208.i, %for.body188.i ], [ 0.000000e+00, %for.cond186.preheader.i ]
  %sum10179.01791.i = phi double [ %add206.i, %for.body188.i ], [ 0.000000e+00, %for.cond186.preheader.i ]
  %sum02178.01790.i = phi double [ %add204.i, %for.body188.i ], [ 0.000000e+00, %for.cond186.preheader.i ]
  %sum01177.01789.i = phi double [ %add202.i, %for.body188.i ], [ 0.000000e+00, %for.cond186.preheader.i ]
  %sum00176.01788.i = phi double [ %add200.i, %for.body188.i ], [ 0.000000e+00, %for.cond186.preheader.i ]
  %arrayidx190.i = getelementptr inbounds double* %rowAT0.0.lcssa.i, i64 %indvars.iv1883.i
  %73 = load double* %arrayidx190.i, align 8, !tbaa !4
  %add.ptr183.sum1554.i = add i64 %indvars.iv1883.i, %idx.ext182.i
  %arrayidx192.i = getelementptr inbounds double* %rowAT0.0.lcssa.i, i64 %add.ptr183.sum1554.i
  %74 = load double* %arrayidx192.i, align 8, !tbaa !4
  %arrayidx194.i = getelementptr inbounds double* %colX0.01808.i, i64 %indvars.iv1883.i
  %75 = load double* %arrayidx194.i, align 8, !tbaa !4
  %add.ptr.sum1555.i = add i64 %indvars.iv1883.i, %idx.ext.i
  %arrayidx196.i = getelementptr inbounds double* %colX0.01808.i, i64 %add.ptr.sum1555.i
  %76 = load double* %arrayidx196.i, align 8, !tbaa !4
  %add.ptr7.sum1556.i = add i64 %indvars.iv1883.i, %add.ptr.sum.i
  %arrayidx198.i = getelementptr inbounds double* %colX0.01808.i, i64 %add.ptr7.sum1556.i
  %77 = load double* %arrayidx198.i, align 8, !tbaa !4
  %mul199.i = fmul double %73, %75
  %add200.i = fadd double %sum00176.01788.i, %mul199.i
  %mul201.i = fmul double %73, %76
  %add202.i = fadd double %sum01177.01789.i, %mul201.i
  %mul203.i = fmul double %73, %77
  %add204.i = fadd double %sum02178.01790.i, %mul203.i
  %mul205.i = fmul double %74, %75
  %add206.i = fadd double %sum10179.01791.i, %mul205.i
  %mul207.i = fmul double %74, %76
  %add208.i = fadd double %sum11180.01792.i, %mul207.i
  %mul209.i = fmul double %74, %77
  %add210.i = fadd double %sum12181.01793.i, %mul209.i
  %indvars.iv.next1884.i = add i64 %indvars.iv1883.i, 1
  %lftr.wideiv1173 = trunc i64 %indvars.iv.next1884.i to i32
  %exitcond1174 = icmp eq i32 %lftr.wideiv1173, %27
  br i1 %exitcond1174, label %if.end245.i, label %for.body188.i

for.body217.i:                                    ; preds = %for.cond215.preheader.i, %for.body217.i
  %indvars.iv1879.i = phi i64 [ %indvars.iv.next1880.i, %for.body217.i ], [ 0, %for.cond215.preheader.i ]
  %sum12181.11778.i = phi double [ %add241.i, %for.body217.i ], [ 0.000000e+00, %for.cond215.preheader.i ]
  %sum11180.11777.i = phi double [ %add239.i, %for.body217.i ], [ 0.000000e+00, %for.cond215.preheader.i ]
  %sum10179.11776.i = phi double [ %add237.i, %for.body217.i ], [ 0.000000e+00, %for.cond215.preheader.i ]
  %sum02178.11775.i = phi double [ %add235.i, %for.body217.i ], [ 0.000000e+00, %for.cond215.preheader.i ]
  %sum01177.11774.i = phi double [ %add233.i, %for.body217.i ], [ 0.000000e+00, %for.cond215.preheader.i ]
  %sum00176.11773.i = phi double [ %add231.i, %for.body217.i ], [ 0.000000e+00, %for.cond215.preheader.i ]
  %arrayidx219.i = getelementptr inbounds double* %rowAT0.0.lcssa.i, i64 %indvars.iv1879.i
  %78 = load double* %arrayidx219.i, align 8, !tbaa !4
  %add.ptr183.sum.i = add i64 %indvars.iv1879.i, %idx.ext182.i
  %arrayidx221.i = getelementptr inbounds double* %rowAT0.0.lcssa.i, i64 %add.ptr183.sum.i
  %79 = load double* %arrayidx221.i, align 8, !tbaa !4
  %arrayidx223.i = getelementptr inbounds i32* %33, i64 %indvars.iv1879.i
  %80 = load i32* %arrayidx223.i, align 4, !tbaa !3
  %idxprom224.i = sext i32 %80 to i64
  %arrayidx225.i = getelementptr inbounds double* %colX0.01808.i, i64 %idxprom224.i
  %81 = load double* %arrayidx225.i, align 8, !tbaa !4
  %add.ptr.sum1552.i = add i64 %idxprom224.i, %idx.ext.i
  %arrayidx227.i = getelementptr inbounds double* %colX0.01808.i, i64 %add.ptr.sum1552.i
  %82 = load double* %arrayidx227.i, align 8, !tbaa !4
  %add.ptr7.sum1553.i = add i64 %idxprom224.i, %add.ptr.sum.i
  %arrayidx229.i = getelementptr inbounds double* %colX0.01808.i, i64 %add.ptr7.sum1553.i
  %83 = load double* %arrayidx229.i, align 8, !tbaa !4
  %mul230.i = fmul double %78, %81
  %add231.i = fadd double %sum00176.11773.i, %mul230.i
  %mul232.i = fmul double %78, %82
  %add233.i = fadd double %sum01177.11774.i, %mul232.i
  %mul234.i = fmul double %78, %83
  %add235.i = fadd double %sum02178.11775.i, %mul234.i
  %mul236.i = fmul double %79, %81
  %add237.i = fadd double %sum10179.11776.i, %mul236.i
  %mul238.i = fmul double %79, %82
  %add239.i = fadd double %sum11180.11777.i, %mul238.i
  %mul240.i = fmul double %79, %83
  %add241.i = fadd double %sum12181.11778.i, %mul240.i
  %indvars.iv.next1880.i = add i64 %indvars.iv1879.i, 1
  %lftr.wideiv1171 = trunc i64 %indvars.iv.next1880.i to i32
  %exitcond1172 = icmp eq i32 %lftr.wideiv1171, %31
  br i1 %exitcond1172, label %if.end245.i, label %for.body217.i

if.end245.i:                                      ; preds = %for.body188.i, %for.body217.i, %for.cond215.preheader.i, %for.cond186.preheader.i
  %sum00176.2.i = phi double [ 0.000000e+00, %for.cond215.preheader.i ], [ 0.000000e+00, %for.cond186.preheader.i ], [ %add231.i, %for.body217.i ], [ %add200.i, %for.body188.i ]
  %sum01177.2.i = phi double [ 0.000000e+00, %for.cond215.preheader.i ], [ 0.000000e+00, %for.cond186.preheader.i ], [ %add233.i, %for.body217.i ], [ %add202.i, %for.body188.i ]
  %sum02178.2.i = phi double [ 0.000000e+00, %for.cond215.preheader.i ], [ 0.000000e+00, %for.cond186.preheader.i ], [ %add235.i, %for.body217.i ], [ %add204.i, %for.body188.i ]
  %sum10179.2.i = phi double [ 0.000000e+00, %for.cond215.preheader.i ], [ 0.000000e+00, %for.cond186.preheader.i ], [ %add237.i, %for.body217.i ], [ %add206.i, %for.body188.i ]
  %sum11180.2.i = phi double [ 0.000000e+00, %for.cond215.preheader.i ], [ 0.000000e+00, %for.cond186.preheader.i ], [ %add239.i, %for.body217.i ], [ %add208.i, %for.body188.i ]
  %sum12181.2.i = phi double [ 0.000000e+00, %for.cond215.preheader.i ], [ 0.000000e+00, %for.cond186.preheader.i ], [ %add241.i, %for.body217.i ], [ %add210.i, %for.body188.i ]
  br i1 %cmp246.i, label %if.then247.i, label %if.else269.i

if.then247.i:                                     ; preds = %if.end245.i
  %arrayidx249.i = getelementptr inbounds double* %colY0.01805.i, i64 %idxprom248.i
  %84 = load double* %arrayidx249.i, align 8, !tbaa !4
  %sub250.i = fsub double %84, %sum00176.2.i
  store double %sub250.i, double* %arrayidx249.i, align 8, !tbaa !4
  %arrayidx252.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr9.sum1548.i
  %85 = load double* %arrayidx252.i, align 8, !tbaa !4
  %sub253.i = fsub double %85, %sum01177.2.i
  store double %sub253.i, double* %arrayidx252.i, align 8, !tbaa !4
  %arrayidx255.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr11.sum1549.i
  %86 = load double* %arrayidx255.i, align 8, !tbaa !4
  %sub256.i = fsub double %86, %sum02178.2.i
  store double %sub256.i, double* %arrayidx255.i, align 8, !tbaa !4
  %arrayidx259.i = getelementptr inbounds double* %colY0.01805.i, i64 %idxprom258.i
  %87 = load double* %arrayidx259.i, align 8, !tbaa !4
  %sub260.i = fsub double %87, %sum10179.2.i
  store double %sub260.i, double* %arrayidx259.i, align 8, !tbaa !4
  %arrayidx263.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr9.sum1550.i
  %88 = load double* %arrayidx263.i, align 8, !tbaa !4
  %sub264.i = fsub double %88, %sum11180.2.i
  store double %sub264.i, double* %arrayidx263.i, align 8, !tbaa !4
  %arrayidx267.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr11.sum1551.i
  %89 = load double* %arrayidx267.i, align 8, !tbaa !4
  %sub268.i = fsub double %89, %sum12181.2.i
  store double %sub268.i, double* %arrayidx267.i, align 8, !tbaa !4
  br label %if.end376.i

if.else269.i:                                     ; preds = %if.end245.i
  %90 = load i32* %arrayidx271.i, align 4, !tbaa !3
  %idxprom272.i = sext i32 %90 to i64
  %arrayidx273.i = getelementptr inbounds double* %colY0.01805.i, i64 %idxprom272.i
  %91 = load double* %arrayidx273.i, align 8, !tbaa !4
  %sub274.i = fsub double %91, %sum00176.2.i
  store double %sub274.i, double* %arrayidx273.i, align 8, !tbaa !4
  %add.ptr9.sum1544.i = add i64 %idxprom272.i, %idx.ext8.i
  %arrayidx276.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr9.sum1544.i
  %92 = load double* %arrayidx276.i, align 8, !tbaa !4
  %sub277.i = fsub double %92, %sum01177.2.i
  store double %sub277.i, double* %arrayidx276.i, align 8, !tbaa !4
  %add.ptr11.sum1545.i = add i64 %idxprom272.i, %add.ptr9.sum.i
  %arrayidx279.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr11.sum1545.i
  %93 = load double* %arrayidx279.i, align 8, !tbaa !4
  %sub280.i = fsub double %93, %sum02178.2.i
  store double %sub280.i, double* %arrayidx279.i, align 8, !tbaa !4
  %94 = load i32* %arrayidx283.i, align 4, !tbaa !3
  %idxprom284.i = sext i32 %94 to i64
  %arrayidx285.i = getelementptr inbounds double* %colY0.01805.i, i64 %idxprom284.i
  %95 = load double* %arrayidx285.i, align 8, !tbaa !4
  %sub286.i = fsub double %95, %sum10179.2.i
  store double %sub286.i, double* %arrayidx285.i, align 8, !tbaa !4
  %add.ptr9.sum1546.i = add i64 %idxprom284.i, %idx.ext8.i
  %arrayidx288.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr9.sum1546.i
  %96 = load double* %arrayidx288.i, align 8, !tbaa !4
  %sub289.i = fsub double %96, %sum11180.2.i
  store double %sub289.i, double* %arrayidx288.i, align 8, !tbaa !4
  %add.ptr11.sum1547.i = add i64 %idxprom284.i, %add.ptr9.sum.i
  %arrayidx291.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr11.sum1547.i
  %97 = load double* %arrayidx291.i, align 8, !tbaa !4
  %sub292.i = fsub double %97, %sum12181.2.i
  store double %sub292.i, double* %arrayidx291.i, align 8, !tbaa !4
  br label %if.end376.i

if.else294.i:                                     ; preds = %for.end167.i
  %cmp296.i = icmp eq i32 %irowAT.0.lcssa.i, %add257.i
  br i1 %cmp296.i, label %if.then297.i, label %if.end376.i

if.then297.i:                                     ; preds = %if.else294.i
  br i1 %cmp184.i, label %for.cond307.preheader.i, label %for.cond328.preheader.i

for.cond307.preheader.i:                          ; preds = %if.then297.i
  br i1 %cmp2161771.i, label %for.body309.i, label %if.end350.i

for.cond328.preheader.i:                          ; preds = %if.then297.i
  br i1 %cmp2161771.i, label %for.body330.i, label %if.end350.i

for.body309.i:                                    ; preds = %for.cond307.preheader.i, %for.body309.i
  %indvars.iv1875.i = phi i64 [ %indvars.iv.next1876.i, %for.body309.i ], [ 0, %for.cond307.preheader.i ]
  %sum02304.01767.i = phi double [ %add323.i, %for.body309.i ], [ 0.000000e+00, %for.cond307.preheader.i ]
  %sum01303.01766.i = phi double [ %add321.i, %for.body309.i ], [ 0.000000e+00, %for.cond307.preheader.i ]
  %sum00302.01765.i = phi double [ %add319.i, %for.body309.i ], [ 0.000000e+00, %for.cond307.preheader.i ]
  %arrayidx311.i = getelementptr inbounds double* %rowAT0.0.lcssa.i, i64 %indvars.iv1875.i
  %98 = load double* %arrayidx311.i, align 8, !tbaa !4
  %arrayidx313.i = getelementptr inbounds double* %colX0.01808.i, i64 %indvars.iv1875.i
  %99 = load double* %arrayidx313.i, align 8, !tbaa !4
  %add.ptr.sum1542.i = add i64 %indvars.iv1875.i, %idx.ext.i
  %arrayidx315.i = getelementptr inbounds double* %colX0.01808.i, i64 %add.ptr.sum1542.i
  %100 = load double* %arrayidx315.i, align 8, !tbaa !4
  %add.ptr7.sum1543.i = add i64 %indvars.iv1875.i, %add.ptr.sum.i
  %arrayidx317.i = getelementptr inbounds double* %colX0.01808.i, i64 %add.ptr7.sum1543.i
  %101 = load double* %arrayidx317.i, align 8, !tbaa !4
  %mul318.i = fmul double %98, %99
  %add319.i = fadd double %sum00302.01765.i, %mul318.i
  %mul320.i = fmul double %98, %100
  %add321.i = fadd double %sum01303.01766.i, %mul320.i
  %mul322.i = fmul double %98, %101
  %add323.i = fadd double %sum02304.01767.i, %mul322.i
  %indvars.iv.next1876.i = add i64 %indvars.iv1875.i, 1
  %lftr.wideiv1169 = trunc i64 %indvars.iv.next1876.i to i32
  %exitcond1170 = icmp eq i32 %lftr.wideiv1169, %27
  br i1 %exitcond1170, label %if.end350.i, label %for.body309.i

for.body330.i:                                    ; preds = %for.cond328.preheader.i, %for.body330.i
  %indvars.iv1871.i = phi i64 [ %indvars.iv.next1872.i, %for.body330.i ], [ 0, %for.cond328.preheader.i ]
  %sum02304.11758.i = phi double [ %add346.i, %for.body330.i ], [ 0.000000e+00, %for.cond328.preheader.i ]
  %sum01303.11757.i = phi double [ %add344.i, %for.body330.i ], [ 0.000000e+00, %for.cond328.preheader.i ]
  %sum00302.11756.i = phi double [ %add342.i, %for.body330.i ], [ 0.000000e+00, %for.cond328.preheader.i ]
  %arrayidx332.i = getelementptr inbounds double* %rowAT0.0.lcssa.i, i64 %indvars.iv1871.i
  %102 = load double* %arrayidx332.i, align 8, !tbaa !4
  %arrayidx334.i = getelementptr inbounds i32* %33, i64 %indvars.iv1871.i
  %103 = load i32* %arrayidx334.i, align 4, !tbaa !3
  %idxprom335.i = sext i32 %103 to i64
  %arrayidx336.i = getelementptr inbounds double* %colX0.01808.i, i64 %idxprom335.i
  %104 = load double* %arrayidx336.i, align 8, !tbaa !4
  %add.ptr.sum1540.i = add i64 %idxprom335.i, %idx.ext.i
  %arrayidx338.i = getelementptr inbounds double* %colX0.01808.i, i64 %add.ptr.sum1540.i
  %105 = load double* %arrayidx338.i, align 8, !tbaa !4
  %add.ptr7.sum1541.i = add i64 %idxprom335.i, %add.ptr.sum.i
  %arrayidx340.i = getelementptr inbounds double* %colX0.01808.i, i64 %add.ptr7.sum1541.i
  %106 = load double* %arrayidx340.i, align 8, !tbaa !4
  %mul341.i = fmul double %102, %104
  %add342.i = fadd double %sum00302.11756.i, %mul341.i
  %mul343.i = fmul double %102, %105
  %add344.i = fadd double %sum01303.11757.i, %mul343.i
  %mul345.i = fmul double %102, %106
  %add346.i = fadd double %sum02304.11758.i, %mul345.i
  %indvars.iv.next1872.i = add i64 %indvars.iv1871.i, 1
  %lftr.wideiv1167 = trunc i64 %indvars.iv.next1872.i to i32
  %exitcond1168 = icmp eq i32 %lftr.wideiv1167, %31
  br i1 %exitcond1168, label %if.end350.i, label %for.body330.i

if.end350.i:                                      ; preds = %for.body309.i, %for.body330.i, %for.cond328.preheader.i, %for.cond307.preheader.i
  %sum00302.2.i = phi double [ 0.000000e+00, %for.cond328.preheader.i ], [ 0.000000e+00, %for.cond307.preheader.i ], [ %add342.i, %for.body330.i ], [ %add319.i, %for.body309.i ]
  %sum01303.2.i = phi double [ 0.000000e+00, %for.cond328.preheader.i ], [ 0.000000e+00, %for.cond307.preheader.i ], [ %add344.i, %for.body330.i ], [ %add321.i, %for.body309.i ]
  %sum02304.2.i = phi double [ 0.000000e+00, %for.cond328.preheader.i ], [ 0.000000e+00, %for.cond307.preheader.i ], [ %add346.i, %for.body330.i ], [ %add323.i, %for.body309.i ]
  br i1 %cmp246.i, label %if.then352.i, label %if.else362.i

if.then352.i:                                     ; preds = %if.end350.i
  %arrayidx354.i = getelementptr inbounds double* %colY0.01805.i, i64 %idxprom258.i
  %107 = load double* %arrayidx354.i, align 8, !tbaa !4
  %sub355.i = fsub double %107, %sum00302.2.i
  store double %sub355.i, double* %arrayidx354.i, align 8, !tbaa !4
  %arrayidx357.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr9.sum1550.i
  %108 = load double* %arrayidx357.i, align 8, !tbaa !4
  %sub358.i = fsub double %108, %sum01303.2.i
  store double %sub358.i, double* %arrayidx357.i, align 8, !tbaa !4
  %arrayidx360.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr11.sum1551.i
  %109 = load double* %arrayidx360.i, align 8, !tbaa !4
  %sub361.i = fsub double %109, %sum02304.2.i
  store double %sub361.i, double* %arrayidx360.i, align 8, !tbaa !4
  br label %if.end376.i

if.else362.i:                                     ; preds = %if.end350.i
  %110 = load i32* %arrayidx283.i, align 4, !tbaa !3
  %idxprom365.i = sext i32 %110 to i64
  %arrayidx366.i = getelementptr inbounds double* %colY0.01805.i, i64 %idxprom365.i
  %111 = load double* %arrayidx366.i, align 8, !tbaa !4
  %sub367.i = fsub double %111, %sum00302.2.i
  store double %sub367.i, double* %arrayidx366.i, align 8, !tbaa !4
  %add.ptr9.sum1536.i = add i64 %idxprom365.i, %idx.ext8.i
  %arrayidx369.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr9.sum1536.i
  %112 = load double* %arrayidx369.i, align 8, !tbaa !4
  %sub370.i = fsub double %112, %sum01303.2.i
  store double %sub370.i, double* %arrayidx369.i, align 8, !tbaa !4
  %add.ptr11.sum1537.i = add i64 %idxprom365.i, %add.ptr9.sum.i
  %arrayidx372.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr11.sum1537.i
  %113 = load double* %arrayidx372.i, align 8, !tbaa !4
  %sub373.i = fsub double %113, %sum02304.2.i
  store double %sub373.i, double* %arrayidx372.i, align 8, !tbaa !4
  br label %if.end376.i

if.end376.i:                                      ; preds = %if.else362.i, %if.then352.i, %if.else294.i, %if.else269.i, %if.then247.i
  %add.ptr378.i = getelementptr inbounds double* %colX0.01808.i, i64 %add.ptr7.sum.i
  %add.ptr380.i = getelementptr inbounds double* %colY0.01805.i, i64 %add.ptr11.sum.i
  %add382.i = add nsw i32 %jcolX.01817.i, 3
  %cmp5.i = icmp slt i32 %add382.i, %sub1803.i
  br i1 %cmp5.i, label %for.body.i, label %for.end383.i

for.end383.i:                                     ; preds = %if.end376.i, %if.end4.i
  %jcolX.0.lcssa.i = phi i32 [ 0, %if.end4.i ], [ %add382.i, %if.end376.i ]
  %colX0.0.lcssa.i = phi double* [ %24, %if.end4.i ], [ %add.ptr378.i, %if.end376.i ]
  %colY0.0.lcssa.i = phi double* [ %25, %if.end4.i ], [ %add.ptr380.i, %if.end376.i ]
  %cmp385.i = icmp eq i32 %jcolX.0.lcssa.i, %sub1803.i
  br i1 %cmp385.i, label %if.then386.i, label %if.else694.i

if.then386.i:                                     ; preds = %for.end383.i
  %114 = load i32* %nrowX.i, align 4, !tbaa !3
  %idx.ext387.i = sext i32 %114 to i64
  %115 = load i32* %nrowY.i, align 4, !tbaa !3
  %idx.ext389.i = sext i32 %115 to i64
  %116 = load double** %entA.i, align 8, !tbaa !0
  %117 = load i32* %nrowAT.i, align 4, !tbaa !3
  %sub3921639.i = add nsw i32 %117, -2
  %cmp3931640.i = icmp sgt i32 %sub3921639.i, 0
  br i1 %cmp3931640.i, label %for.body394.lr.ph.i, label %for.end528.i

for.body394.lr.ph.i:                              ; preds = %if.then386.i
  %118 = load i32* %ncolAT.i, align 4, !tbaa !3
  %idx.ext406.i = sext i32 %118 to i64
  %add.ptr407.sum.i = shl nsw i64 %idx.ext406.i, 1
  %cmp410.i = icmp eq i32 %118, %114
  %cmp472.i = icmp eq i32 %115, %117
  %add.ptr409.sum.i = add i64 %add.ptr407.sum.i, %idx.ext406.i
  %119 = load i32** %rowindAT.i, align 8, !tbaa !0
  %cmp4421610.i = icmp sgt i32 %118, 0
  %120 = load i32** %colindAT.i, align 8, !tbaa !0
  br label %for.body394.i

for.body394.i:                                    ; preds = %if.end523.i, %for.body394.lr.ph.i
  %indvars.iv1833.i = phi i64 [ 0, %for.body394.lr.ph.i ], [ %indvars.iv.next1834.i, %if.end523.i ]
  %irowAT.11645.i = phi i32 [ 0, %for.body394.lr.ph.i ], [ %add527.i, %if.end523.i ]
  %rowAT0.11641.i = phi double* [ %116, %for.body394.lr.ph.i ], [ %add.ptr525.i, %if.end523.i ]
  br i1 %cmp410.i, label %for.cond412.preheader.i, label %for.cond441.preheader.i

for.cond412.preheader.i:                          ; preds = %for.body394.i
  br i1 %cmp4421610.i, label %for.body414.i, label %if.end471.i

for.cond441.preheader.i:                          ; preds = %for.body394.i
  br i1 %cmp4421610.i, label %for.body443.i, label %if.end471.i

for.body414.i:                                    ; preds = %for.cond412.preheader.i, %for.body414.i
  %indvars.iv1831.i = phi i64 [ %indvars.iv.next1832.i, %for.body414.i ], [ 0, %for.cond412.preheader.i ]
  %sum21405.01632.i = phi double [ %add436.i, %for.body414.i ], [ 0.000000e+00, %for.cond412.preheader.i ]
  %sum20404.01631.i = phi double [ %add434.i, %for.body414.i ], [ 0.000000e+00, %for.cond412.preheader.i ]
  %sum11403.01630.i = phi double [ %add432.i, %for.body414.i ], [ 0.000000e+00, %for.cond412.preheader.i ]
  %sum10402.01629.i = phi double [ %add430.i, %for.body414.i ], [ 0.000000e+00, %for.cond412.preheader.i ]
  %sum01401.01628.i = phi double [ %add428.i, %for.body414.i ], [ 0.000000e+00, %for.cond412.preheader.i ]
  %sum00400.01627.i = phi double [ %add426.i, %for.body414.i ], [ 0.000000e+00, %for.cond412.preheader.i ]
  %arrayidx416.i = getelementptr inbounds double* %rowAT0.11641.i, i64 %indvars.iv1831.i
  %121 = load double* %arrayidx416.i, align 8, !tbaa !4
  %add.ptr407.sum1533.i = add i64 %indvars.iv1831.i, %idx.ext406.i
  %arrayidx418.i = getelementptr inbounds double* %rowAT0.11641.i, i64 %add.ptr407.sum1533.i
  %122 = load double* %arrayidx418.i, align 8, !tbaa !4
  %add.ptr409.sum1534.i = add i64 %indvars.iv1831.i, %add.ptr407.sum.i
  %arrayidx420.i = getelementptr inbounds double* %rowAT0.11641.i, i64 %add.ptr409.sum1534.i
  %123 = load double* %arrayidx420.i, align 8, !tbaa !4
  %arrayidx422.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %indvars.iv1831.i
  %124 = load double* %arrayidx422.i, align 8, !tbaa !4
  %add.ptr388.sum1535.i = add i64 %indvars.iv1831.i, %idx.ext387.i
  %arrayidx424.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %add.ptr388.sum1535.i
  %125 = load double* %arrayidx424.i, align 8, !tbaa !4
  %mul425.i = fmul double %121, %124
  %add426.i = fadd double %sum00400.01627.i, %mul425.i
  %mul427.i = fmul double %121, %125
  %add428.i = fadd double %sum01401.01628.i, %mul427.i
  %mul429.i = fmul double %122, %124
  %add430.i = fadd double %sum10402.01629.i, %mul429.i
  %mul431.i = fmul double %122, %125
  %add432.i = fadd double %sum11403.01630.i, %mul431.i
  %mul433.i = fmul double %123, %124
  %add434.i = fadd double %sum20404.01631.i, %mul433.i
  %mul435.i = fmul double %123, %125
  %add436.i = fadd double %sum21405.01632.i, %mul435.i
  %indvars.iv.next1832.i = add i64 %indvars.iv1831.i, 1
  %lftr.wideiv1149 = trunc i64 %indvars.iv.next1832.i to i32
  %exitcond1150 = icmp eq i32 %lftr.wideiv1149, %114
  br i1 %exitcond1150, label %if.end471.i, label %for.body414.i

for.body443.i:                                    ; preds = %for.cond441.preheader.i, %for.body443.i
  %indvars.iv1829.i = phi i64 [ %indvars.iv.next1830.i, %for.body443.i ], [ 0, %for.cond441.preheader.i ]
  %sum21405.11617.i = phi double [ %add467.i, %for.body443.i ], [ 0.000000e+00, %for.cond441.preheader.i ]
  %sum20404.11616.i = phi double [ %add465.i, %for.body443.i ], [ 0.000000e+00, %for.cond441.preheader.i ]
  %sum11403.11615.i = phi double [ %add463.i, %for.body443.i ], [ 0.000000e+00, %for.cond441.preheader.i ]
  %sum10402.11614.i = phi double [ %add461.i, %for.body443.i ], [ 0.000000e+00, %for.cond441.preheader.i ]
  %sum01401.11613.i = phi double [ %add459.i, %for.body443.i ], [ 0.000000e+00, %for.cond441.preheader.i ]
  %sum00400.11612.i = phi double [ %add457.i, %for.body443.i ], [ 0.000000e+00, %for.cond441.preheader.i ]
  %arrayidx445.i = getelementptr inbounds double* %rowAT0.11641.i, i64 %indvars.iv1829.i
  %126 = load double* %arrayidx445.i, align 8, !tbaa !4
  %add.ptr407.sum1530.i = add i64 %indvars.iv1829.i, %idx.ext406.i
  %arrayidx447.i = getelementptr inbounds double* %rowAT0.11641.i, i64 %add.ptr407.sum1530.i
  %127 = load double* %arrayidx447.i, align 8, !tbaa !4
  %add.ptr409.sum1531.i = add i64 %indvars.iv1829.i, %add.ptr407.sum.i
  %arrayidx449.i = getelementptr inbounds double* %rowAT0.11641.i, i64 %add.ptr409.sum1531.i
  %128 = load double* %arrayidx449.i, align 8, !tbaa !4
  %arrayidx451.i = getelementptr inbounds i32* %120, i64 %indvars.iv1829.i
  %129 = load i32* %arrayidx451.i, align 4, !tbaa !3
  %idxprom452.i = sext i32 %129 to i64
  %arrayidx453.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom452.i
  %130 = load double* %arrayidx453.i, align 8, !tbaa !4
  %add.ptr388.sum1532.i = add i64 %idxprom452.i, %idx.ext387.i
  %arrayidx455.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %add.ptr388.sum1532.i
  %131 = load double* %arrayidx455.i, align 8, !tbaa !4
  %mul456.i = fmul double %126, %130
  %add457.i = fadd double %sum00400.11612.i, %mul456.i
  %mul458.i = fmul double %126, %131
  %add459.i = fadd double %sum01401.11613.i, %mul458.i
  %mul460.i = fmul double %127, %130
  %add461.i = fadd double %sum10402.11614.i, %mul460.i
  %mul462.i = fmul double %127, %131
  %add463.i = fadd double %sum11403.11615.i, %mul462.i
  %mul464.i = fmul double %128, %130
  %add465.i = fadd double %sum20404.11616.i, %mul464.i
  %mul466.i = fmul double %128, %131
  %add467.i = fadd double %sum21405.11617.i, %mul466.i
  %indvars.iv.next1830.i = add i64 %indvars.iv1829.i, 1
  %lftr.wideiv1147 = trunc i64 %indvars.iv.next1830.i to i32
  %exitcond1148 = icmp eq i32 %lftr.wideiv1147, %118
  br i1 %exitcond1148, label %if.end471.i, label %for.body443.i

if.end471.i:                                      ; preds = %for.body414.i, %for.body443.i, %for.cond441.preheader.i, %for.cond412.preheader.i
  %sum00400.2.i = phi double [ 0.000000e+00, %for.cond441.preheader.i ], [ 0.000000e+00, %for.cond412.preheader.i ], [ %add457.i, %for.body443.i ], [ %add426.i, %for.body414.i ]
  %sum01401.2.i = phi double [ 0.000000e+00, %for.cond441.preheader.i ], [ 0.000000e+00, %for.cond412.preheader.i ], [ %add459.i, %for.body443.i ], [ %add428.i, %for.body414.i ]
  %sum10402.2.i = phi double [ 0.000000e+00, %for.cond441.preheader.i ], [ 0.000000e+00, %for.cond412.preheader.i ], [ %add461.i, %for.body443.i ], [ %add430.i, %for.body414.i ]
  %sum11403.2.i = phi double [ 0.000000e+00, %for.cond441.preheader.i ], [ 0.000000e+00, %for.cond412.preheader.i ], [ %add463.i, %for.body443.i ], [ %add432.i, %for.body414.i ]
  %sum20404.2.i = phi double [ 0.000000e+00, %for.cond441.preheader.i ], [ 0.000000e+00, %for.cond412.preheader.i ], [ %add465.i, %for.body443.i ], [ %add434.i, %for.body414.i ]
  %sum21405.2.i = phi double [ 0.000000e+00, %for.cond441.preheader.i ], [ 0.000000e+00, %for.cond412.preheader.i ], [ %add467.i, %for.body443.i ], [ %add436.i, %for.body414.i ]
  br i1 %cmp472.i, label %if.then473.i, label %if.else496.i

if.then473.i:                                     ; preds = %if.end471.i
  %arrayidx475.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %indvars.iv1833.i
  %132 = load double* %arrayidx475.i, align 8, !tbaa !4
  %sub476.i = fsub double %132, %sum00400.2.i
  store double %sub476.i, double* %arrayidx475.i, align 8, !tbaa !4
  %add.ptr390.sum1527.i = add i64 %indvars.iv1833.i, %idx.ext389.i
  %arrayidx478.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr390.sum1527.i
  %133 = load double* %arrayidx478.i, align 8, !tbaa !4
  %sub479.i = fsub double %133, %sum01401.2.i
  store double %sub479.i, double* %arrayidx478.i, align 8, !tbaa !4
  %134 = add nsw i64 %indvars.iv1833.i, 1
  %arrayidx482.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %134
  %135 = load double* %arrayidx482.i, align 8, !tbaa !4
  %sub483.i = fsub double %135, %sum10402.2.i
  store double %sub483.i, double* %arrayidx482.i, align 8, !tbaa !4
  %add.ptr390.sum1528.i = add i64 %134, %idx.ext389.i
  %arrayidx486.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr390.sum1528.i
  %136 = load double* %arrayidx486.i, align 8, !tbaa !4
  %sub487.i = fsub double %136, %sum11403.2.i
  store double %sub487.i, double* %arrayidx486.i, align 8, !tbaa !4
  %137 = add nsw i64 %indvars.iv1833.i, 2
  %arrayidx490.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %137
  %138 = load double* %arrayidx490.i, align 8, !tbaa !4
  %sub491.i = fsub double %138, %sum20404.2.i
  store double %sub491.i, double* %arrayidx490.i, align 8, !tbaa !4
  %add.ptr390.sum1529.i = add i64 %137, %idx.ext389.i
  %arrayidx494.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr390.sum1529.i
  %139 = load double* %arrayidx494.i, align 8, !tbaa !4
  %sub495.i = fsub double %139, %sum21405.2.i
  store double %sub495.i, double* %arrayidx494.i, align 8, !tbaa !4
  br label %if.end523.i

if.else496.i:                                     ; preds = %if.end471.i
  %arrayidx498.i = getelementptr inbounds i32* %119, i64 %indvars.iv1833.i
  %140 = load i32* %arrayidx498.i, align 4, !tbaa !3
  %idxprom499.i = sext i32 %140 to i64
  %arrayidx500.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom499.i
  %141 = load double* %arrayidx500.i, align 8, !tbaa !4
  %sub501.i = fsub double %141, %sum00400.2.i
  store double %sub501.i, double* %arrayidx500.i, align 8, !tbaa !4
  %add.ptr390.sum1524.i = add i64 %idxprom499.i, %idx.ext389.i
  %arrayidx503.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr390.sum1524.i
  %142 = load double* %arrayidx503.i, align 8, !tbaa !4
  %sub504.i = fsub double %142, %sum01401.2.i
  store double %sub504.i, double* %arrayidx503.i, align 8, !tbaa !4
  %143 = add nsw i64 %indvars.iv1833.i, 1
  %arrayidx507.i = getelementptr inbounds i32* %119, i64 %143
  %144 = load i32* %arrayidx507.i, align 4, !tbaa !3
  %idxprom508.i = sext i32 %144 to i64
  %arrayidx509.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom508.i
  %145 = load double* %arrayidx509.i, align 8, !tbaa !4
  %sub510.i = fsub double %145, %sum10402.2.i
  store double %sub510.i, double* %arrayidx509.i, align 8, !tbaa !4
  %add.ptr390.sum1525.i = add i64 %idxprom508.i, %idx.ext389.i
  %arrayidx512.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr390.sum1525.i
  %146 = load double* %arrayidx512.i, align 8, !tbaa !4
  %sub513.i = fsub double %146, %sum11403.2.i
  store double %sub513.i, double* %arrayidx512.i, align 8, !tbaa !4
  %147 = add nsw i64 %indvars.iv1833.i, 2
  %arrayidx516.i = getelementptr inbounds i32* %119, i64 %147
  %148 = load i32* %arrayidx516.i, align 4, !tbaa !3
  %idxprom517.i = sext i32 %148 to i64
  %arrayidx518.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom517.i
  %149 = load double* %arrayidx518.i, align 8, !tbaa !4
  %sub519.i = fsub double %149, %sum20404.2.i
  store double %sub519.i, double* %arrayidx518.i, align 8, !tbaa !4
  %add.ptr390.sum1526.i = add i64 %idxprom517.i, %idx.ext389.i
  %arrayidx521.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr390.sum1526.i
  %150 = load double* %arrayidx521.i, align 8, !tbaa !4
  %sub522.i = fsub double %150, %sum21405.2.i
  store double %sub522.i, double* %arrayidx521.i, align 8, !tbaa !4
  br label %if.end523.i

if.end523.i:                                      ; preds = %if.else496.i, %if.then473.i
  %add.ptr525.i = getelementptr inbounds double* %rowAT0.11641.i, i64 %add.ptr409.sum.i
  %indvars.iv.next1834.i = add i64 %indvars.iv1833.i, 3
  %add527.i = add nsw i32 %irowAT.11645.i, 3
  %151 = trunc i64 %indvars.iv.next1834.i to i32
  %cmp393.i = icmp slt i32 %151, %sub3921639.i
  br i1 %cmp393.i, label %for.body394.i, label %for.end528.i

for.end528.i:                                     ; preds = %if.end523.i, %if.then386.i
  %irowAT.1.lcssa.i = phi i32 [ 0, %if.then386.i ], [ %add527.i, %if.end523.i ]
  %rowAT0.1.lcssa.i = phi double* [ %116, %if.then386.i ], [ %add.ptr525.i, %if.end523.i ]
  %cmp530.i = icmp eq i32 %irowAT.1.lcssa.i, %sub3921639.i
  br i1 %cmp530.i, label %if.then531.i, label %if.else627.i

if.then531.i:                                     ; preds = %for.end528.i
  %152 = load i32* %ncolAT.i, align 4, !tbaa !3
  %idx.ext540.i = sext i32 %152 to i64
  %cmp542.i = icmp eq i32 %152, %114
  br i1 %cmp542.i, label %for.cond544.preheader.i, label %for.cond567.preheader.i

for.cond567.preheader.i:                          ; preds = %if.then531.i
  %cmp5681587.i = icmp sgt i32 %152, 0
  br i1 %cmp5681587.i, label %for.body569.lr.ph.i, label %if.end591.i

for.body569.lr.ph.i:                              ; preds = %for.cond567.preheader.i
  %153 = load i32** %colindAT.i, align 8, !tbaa !0
  br label %for.body569.i

for.cond544.preheader.i:                          ; preds = %if.then531.i
  %cmp5451577.i = icmp sgt i32 %114, 0
  br i1 %cmp5451577.i, label %for.body546.i, label %if.end591.i

for.body546.i:                                    ; preds = %for.cond544.preheader.i, %for.body546.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body546.i ], [ 0, %for.cond544.preheader.i ]
  %sum11539.01582.i = phi double [ %add562.i, %for.body546.i ], [ 0.000000e+00, %for.cond544.preheader.i ]
  %sum10538.01581.i = phi double [ %add560.i, %for.body546.i ], [ 0.000000e+00, %for.cond544.preheader.i ]
  %sum01537.01580.i = phi double [ %add558.i, %for.body546.i ], [ 0.000000e+00, %for.cond544.preheader.i ]
  %sum00536.01579.i = phi double [ %add556.i, %for.body546.i ], [ 0.000000e+00, %for.cond544.preheader.i ]
  %arrayidx548.i = getelementptr inbounds double* %rowAT0.1.lcssa.i, i64 %indvars.iv.i
  %154 = load double* %arrayidx548.i, align 8, !tbaa !4
  %add.ptr541.sum1522.i = add i64 %indvars.iv.i, %idx.ext540.i
  %arrayidx550.i = getelementptr inbounds double* %rowAT0.1.lcssa.i, i64 %add.ptr541.sum1522.i
  %155 = load double* %arrayidx550.i, align 8, !tbaa !4
  %arrayidx552.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %indvars.iv.i
  %156 = load double* %arrayidx552.i, align 8, !tbaa !4
  %add.ptr388.sum1523.i = add i64 %indvars.iv.i, %idx.ext387.i
  %arrayidx554.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %add.ptr388.sum1523.i
  %157 = load double* %arrayidx554.i, align 8, !tbaa !4
  %mul555.i = fmul double %154, %156
  %add556.i = fadd double %sum00536.01579.i, %mul555.i
  %mul557.i = fmul double %154, %157
  %add558.i = fadd double %sum01537.01580.i, %mul557.i
  %mul559.i = fmul double %155, %156
  %add560.i = fadd double %sum10538.01581.i, %mul559.i
  %mul561.i = fmul double %155, %157
  %add562.i = fadd double %sum11539.01582.i, %mul561.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %114
  br i1 %exitcond, label %if.end591.i, label %for.body546.i

for.body569.i:                                    ; preds = %for.body569.i, %for.body569.lr.ph.i
  %indvars.iv1823.i = phi i64 [ 0, %for.body569.lr.ph.i ], [ %indvars.iv.next1824.i, %for.body569.i ]
  %sum11539.11592.i = phi double [ 0.000000e+00, %for.body569.lr.ph.i ], [ %add587.i, %for.body569.i ]
  %sum10538.11591.i = phi double [ 0.000000e+00, %for.body569.lr.ph.i ], [ %add585.i, %for.body569.i ]
  %sum01537.11590.i = phi double [ 0.000000e+00, %for.body569.lr.ph.i ], [ %add583.i, %for.body569.i ]
  %sum00536.11589.i = phi double [ 0.000000e+00, %for.body569.lr.ph.i ], [ %add581.i, %for.body569.i ]
  %arrayidx571.i = getelementptr inbounds double* %rowAT0.1.lcssa.i, i64 %indvars.iv1823.i
  %158 = load double* %arrayidx571.i, align 8, !tbaa !4
  %add.ptr541.sum.i = add i64 %indvars.iv1823.i, %idx.ext540.i
  %arrayidx573.i = getelementptr inbounds double* %rowAT0.1.lcssa.i, i64 %add.ptr541.sum.i
  %159 = load double* %arrayidx573.i, align 8, !tbaa !4
  %arrayidx575.i = getelementptr inbounds i32* %153, i64 %indvars.iv1823.i
  %160 = load i32* %arrayidx575.i, align 4, !tbaa !3
  %idxprom576.i = sext i32 %160 to i64
  %arrayidx577.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom576.i
  %161 = load double* %arrayidx577.i, align 8, !tbaa !4
  %add.ptr388.sum1521.i = add i64 %idxprom576.i, %idx.ext387.i
  %arrayidx579.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %add.ptr388.sum1521.i
  %162 = load double* %arrayidx579.i, align 8, !tbaa !4
  %mul580.i = fmul double %158, %161
  %add581.i = fadd double %sum00536.11589.i, %mul580.i
  %mul582.i = fmul double %158, %162
  %add583.i = fadd double %sum01537.11590.i, %mul582.i
  %mul584.i = fmul double %159, %161
  %add585.i = fadd double %sum10538.11591.i, %mul584.i
  %mul586.i = fmul double %159, %162
  %add587.i = fadd double %sum11539.11592.i, %mul586.i
  %indvars.iv.next1824.i = add i64 %indvars.iv1823.i, 1
  %lftr.wideiv1141 = trunc i64 %indvars.iv.next1824.i to i32
  %exitcond1142 = icmp eq i32 %lftr.wideiv1141, %152
  br i1 %exitcond1142, label %if.end591.i, label %for.body569.i

if.end591.i:                                      ; preds = %for.body569.i, %for.body546.i, %for.cond544.preheader.i, %for.cond567.preheader.i
  %sum00536.2.i = phi double [ 0.000000e+00, %for.cond544.preheader.i ], [ 0.000000e+00, %for.cond567.preheader.i ], [ %add556.i, %for.body546.i ], [ %add581.i, %for.body569.i ]
  %sum01537.2.i = phi double [ 0.000000e+00, %for.cond544.preheader.i ], [ 0.000000e+00, %for.cond567.preheader.i ], [ %add558.i, %for.body546.i ], [ %add583.i, %for.body569.i ]
  %sum10538.2.i = phi double [ 0.000000e+00, %for.cond544.preheader.i ], [ 0.000000e+00, %for.cond567.preheader.i ], [ %add560.i, %for.body546.i ], [ %add585.i, %for.body569.i ]
  %sum11539.2.i = phi double [ 0.000000e+00, %for.cond544.preheader.i ], [ 0.000000e+00, %for.cond567.preheader.i ], [ %add562.i, %for.body546.i ], [ %add587.i, %for.body569.i ]
  %cmp592.i = icmp eq i32 %115, %117
  %idxprom594.i = sext i32 %sub3921639.i to i64
  br i1 %cmp592.i, label %if.then593.i, label %if.else608.i

if.then593.i:                                     ; preds = %if.end591.i
  %arrayidx595.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom594.i
  %163 = load double* %arrayidx595.i, align 8, !tbaa !4
  %sub596.i = fsub double %163, %sum00536.2.i
  store double %sub596.i, double* %arrayidx595.i, align 8, !tbaa !4
  %add.ptr390.sum1519.i = add i64 %idxprom594.i, %idx.ext389.i
  %arrayidx598.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr390.sum1519.i
  %164 = load double* %arrayidx598.i, align 8, !tbaa !4
  %sub599.i = fsub double %164, %sum01537.2.i
  store double %sub599.i, double* %arrayidx598.i, align 8, !tbaa !4
  %add600.i = add nsw i32 %115, -1
  %idxprom601.i = sext i32 %add600.i to i64
  %arrayidx602.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom601.i
  %165 = load double* %arrayidx602.i, align 8, !tbaa !4
  %sub603.i = fsub double %165, %sum10538.2.i
  store double %sub603.i, double* %arrayidx602.i, align 8, !tbaa !4
  %add.ptr390.sum1520.i = add i64 %idxprom601.i, %idx.ext389.i
  %arrayidx606.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr390.sum1520.i
  %166 = load double* %arrayidx606.i, align 8, !tbaa !4
  %sub607.i = fsub double %166, %sum11539.2.i
  store double %sub607.i, double* %arrayidx606.i, align 8, !tbaa !4
  br label %sw.epilog33

if.else608.i:                                     ; preds = %if.end591.i
  %167 = load i32** %rowindAT.i, align 8, !tbaa !0
  %arrayidx610.i = getelementptr inbounds i32* %167, i64 %idxprom594.i
  %168 = load i32* %arrayidx610.i, align 4, !tbaa !3
  %idxprom611.i = sext i32 %168 to i64
  %arrayidx612.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom611.i
  %169 = load double* %arrayidx612.i, align 8, !tbaa !4
  %sub613.i = fsub double %169, %sum00536.2.i
  store double %sub613.i, double* %arrayidx612.i, align 8, !tbaa !4
  %add.ptr390.sum1517.i = add i64 %idxprom611.i, %idx.ext389.i
  %arrayidx615.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr390.sum1517.i
  %170 = load double* %arrayidx615.i, align 8, !tbaa !4
  %sub616.i = fsub double %170, %sum01537.2.i
  store double %sub616.i, double* %arrayidx615.i, align 8, !tbaa !4
  %add617.i = add nsw i32 %117, -1
  %idxprom618.i = sext i32 %add617.i to i64
  %arrayidx619.i = getelementptr inbounds i32* %167, i64 %idxprom618.i
  %171 = load i32* %arrayidx619.i, align 4, !tbaa !3
  %idxprom620.i = sext i32 %171 to i64
  %arrayidx621.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom620.i
  %172 = load double* %arrayidx621.i, align 8, !tbaa !4
  %sub622.i = fsub double %172, %sum10538.2.i
  store double %sub622.i, double* %arrayidx621.i, align 8, !tbaa !4
  %add.ptr390.sum1518.i = add i64 %idxprom620.i, %idx.ext389.i
  %arrayidx624.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr390.sum1518.i
  %173 = load double* %arrayidx624.i, align 8, !tbaa !4
  %sub625.i = fsub double %173, %sum11539.2.i
  store double %sub625.i, double* %arrayidx624.i, align 8, !tbaa !4
  br label %sw.epilog33

if.else627.i:                                     ; preds = %for.end528.i
  %sub628.i = add nsw i32 %117, -1
  %cmp629.i = icmp eq i32 %irowAT.1.lcssa.i, %sub628.i
  br i1 %cmp629.i, label %if.then630.i, label %sw.epilog33

if.then630.i:                                     ; preds = %if.else627.i
  %174 = load i32* %ncolAT.i, align 4, !tbaa !3
  %cmp636.i = icmp eq i32 %174, %114
  br i1 %cmp636.i, label %for.cond638.preheader.i, label %for.cond655.preheader.i

for.cond655.preheader.i:                          ; preds = %if.then630.i
  %cmp6561604.i = icmp sgt i32 %174, 0
  br i1 %cmp6561604.i, label %for.body657.lr.ph.i, label %if.end673.i

for.body657.lr.ph.i:                              ; preds = %for.cond655.preheader.i
  %175 = load i32** %colindAT.i, align 8, !tbaa !0
  br label %for.body657.i

for.cond638.preheader.i:                          ; preds = %if.then630.i
  %cmp6391597.i = icmp sgt i32 %114, 0
  br i1 %cmp6391597.i, label %for.body640.i, label %if.end673.i

for.body640.i:                                    ; preds = %for.cond638.preheader.i, %for.body640.i
  %indvars.iv1825.i = phi i64 [ %indvars.iv.next1826.i, %for.body640.i ], [ 0, %for.cond638.preheader.i ]
  %sum01635.01600.i = phi double [ %add650.i, %for.body640.i ], [ 0.000000e+00, %for.cond638.preheader.i ]
  %sum00634.01599.i = phi double [ %add648.i, %for.body640.i ], [ 0.000000e+00, %for.cond638.preheader.i ]
  %arrayidx642.i = getelementptr inbounds double* %rowAT0.1.lcssa.i, i64 %indvars.iv1825.i
  %176 = load double* %arrayidx642.i, align 8, !tbaa !4
  %arrayidx644.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %indvars.iv1825.i
  %177 = load double* %arrayidx644.i, align 8, !tbaa !4
  %add.ptr388.sum1516.i = add i64 %indvars.iv1825.i, %idx.ext387.i
  %arrayidx646.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %add.ptr388.sum1516.i
  %178 = load double* %arrayidx646.i, align 8, !tbaa !4
  %mul647.i = fmul double %176, %177
  %add648.i = fadd double %sum00634.01599.i, %mul647.i
  %mul649.i = fmul double %176, %178
  %add650.i = fadd double %sum01635.01600.i, %mul649.i
  %indvars.iv.next1826.i = add i64 %indvars.iv1825.i, 1
  %lftr.wideiv1143 = trunc i64 %indvars.iv.next1826.i to i32
  %exitcond1144 = icmp eq i32 %lftr.wideiv1143, %114
  br i1 %exitcond1144, label %if.end673.i, label %for.body640.i

for.body657.i:                                    ; preds = %for.body657.i, %for.body657.lr.ph.i
  %indvars.iv1827.i = phi i64 [ 0, %for.body657.lr.ph.i ], [ %indvars.iv.next1828.i, %for.body657.i ]
  %sum01635.11607.i = phi double [ 0.000000e+00, %for.body657.lr.ph.i ], [ %add669.i, %for.body657.i ]
  %sum00634.11606.i = phi double [ 0.000000e+00, %for.body657.lr.ph.i ], [ %add667.i, %for.body657.i ]
  %arrayidx659.i = getelementptr inbounds double* %rowAT0.1.lcssa.i, i64 %indvars.iv1827.i
  %179 = load double* %arrayidx659.i, align 8, !tbaa !4
  %arrayidx661.i = getelementptr inbounds i32* %175, i64 %indvars.iv1827.i
  %180 = load i32* %arrayidx661.i, align 4, !tbaa !3
  %idxprom662.i = sext i32 %180 to i64
  %arrayidx663.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom662.i
  %181 = load double* %arrayidx663.i, align 8, !tbaa !4
  %add.ptr388.sum.i = add i64 %idxprom662.i, %idx.ext387.i
  %arrayidx665.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %add.ptr388.sum.i
  %182 = load double* %arrayidx665.i, align 8, !tbaa !4
  %mul666.i = fmul double %179, %181
  %add667.i = fadd double %sum00634.11606.i, %mul666.i
  %mul668.i = fmul double %179, %182
  %add669.i = fadd double %sum01635.11607.i, %mul668.i
  %indvars.iv.next1828.i = add i64 %indvars.iv1827.i, 1
  %lftr.wideiv1145 = trunc i64 %indvars.iv.next1828.i to i32
  %exitcond1146 = icmp eq i32 %lftr.wideiv1145, %174
  br i1 %exitcond1146, label %if.end673.i, label %for.body657.i

if.end673.i:                                      ; preds = %for.body657.i, %for.body640.i, %for.cond638.preheader.i, %for.cond655.preheader.i
  %sum00634.2.i = phi double [ 0.000000e+00, %for.cond638.preheader.i ], [ 0.000000e+00, %for.cond655.preheader.i ], [ %add648.i, %for.body640.i ], [ %add667.i, %for.body657.i ]
  %sum01635.2.i = phi double [ 0.000000e+00, %for.cond638.preheader.i ], [ 0.000000e+00, %for.cond655.preheader.i ], [ %add650.i, %for.body640.i ], [ %add669.i, %for.body657.i ]
  %cmp674.i = icmp eq i32 %115, %117
  %idxprom676.i = sext i32 %irowAT.1.lcssa.i to i64
  br i1 %cmp674.i, label %if.then675.i, label %if.else682.i

if.then675.i:                                     ; preds = %if.end673.i
  %arrayidx677.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom676.i
  %183 = load double* %arrayidx677.i, align 8, !tbaa !4
  %sub678.i = fsub double %183, %sum00634.2.i
  store double %sub678.i, double* %arrayidx677.i, align 8, !tbaa !4
  %add.ptr390.sum1515.i = add i64 %idxprom676.i, %idx.ext389.i
  %arrayidx680.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr390.sum1515.i
  %184 = load double* %arrayidx680.i, align 8, !tbaa !4
  %sub681.i = fsub double %184, %sum01635.2.i
  store double %sub681.i, double* %arrayidx680.i, align 8, !tbaa !4
  br label %sw.epilog33

if.else682.i:                                     ; preds = %if.end673.i
  %185 = load i32** %rowindAT.i, align 8, !tbaa !0
  %arrayidx684.i = getelementptr inbounds i32* %185, i64 %idxprom676.i
  %186 = load i32* %arrayidx684.i, align 4, !tbaa !3
  %idxprom685.i = sext i32 %186 to i64
  %arrayidx686.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom685.i
  %187 = load double* %arrayidx686.i, align 8, !tbaa !4
  %sub687.i = fsub double %187, %sum00634.2.i
  store double %sub687.i, double* %arrayidx686.i, align 8, !tbaa !4
  %add.ptr390.sum.i = add i64 %idxprom685.i, %idx.ext389.i
  %arrayidx689.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %add.ptr390.sum.i
  %188 = load double* %arrayidx689.i, align 8, !tbaa !4
  %sub690.i = fsub double %188, %sum01635.2.i
  store double %sub690.i, double* %arrayidx689.i, align 8, !tbaa !4
  br label %sw.epilog33

if.else694.i:                                     ; preds = %for.end383.i
  %sub695.i = add nsw i32 %26, -1
  %cmp696.i = icmp eq i32 %jcolX.0.lcssa.i, %sub695.i
  br i1 %cmp696.i, label %if.then697.i, label %sw.epilog33

if.then697.i:                                     ; preds = %if.else694.i
  %189 = load double** %entA.i, align 8, !tbaa !0
  %190 = load i32* %nrowAT.i, align 4, !tbaa !3
  %sub6991690.i = add nsw i32 %190, -2
  %cmp7001691.i = icmp sgt i32 %sub6991690.i, 0
  br i1 %cmp7001691.i, label %for.body701.lr.ph.i, label %for.end795.i

for.body701.lr.ph.i:                              ; preds = %if.then697.i
  %191 = load i32* %ncolAT.i, align 4, !tbaa !3
  %idx.ext709.i = sext i32 %191 to i64
  %add.ptr710.sum.i = shl nsw i64 %idx.ext709.i, 1
  %192 = load i32* %nrowX.i, align 4, !tbaa !3
  %cmp713.i = icmp eq i32 %191, %192
  %193 = load i32* %nrowY.i, align 4, !tbaa !3
  %cmp759.i = icmp eq i32 %193, %190
  %add.ptr712.sum.i = add i64 %add.ptr710.sum.i, %idx.ext709.i
  %194 = load i32** %rowindAT.i, align 8, !tbaa !0
  %cmp7371672.i = icmp sgt i32 %191, 0
  %195 = load i32** %colindAT.i, align 8, !tbaa !0
  br label %for.body701.i

for.body701.i:                                    ; preds = %if.end790.i, %for.body701.lr.ph.i
  %indvars.iv1853.i = phi i64 [ 0, %for.body701.lr.ph.i ], [ %indvars.iv.next1854.i, %if.end790.i ]
  %irowAT.21696.i = phi i32 [ 0, %for.body701.lr.ph.i ], [ %add794.i, %if.end790.i ]
  %rowAT0.21692.i = phi double* [ %189, %for.body701.lr.ph.i ], [ %add.ptr792.i, %if.end790.i ]
  br i1 %cmp713.i, label %for.cond715.preheader.i, label %for.cond736.preheader.i

for.cond715.preheader.i:                          ; preds = %for.body701.i
  br i1 %cmp7371672.i, label %for.body717.i, label %if.end758.i

for.cond736.preheader.i:                          ; preds = %for.body701.i
  br i1 %cmp7371672.i, label %for.body738.i, label %if.end758.i

for.body717.i:                                    ; preds = %for.cond715.preheader.i, %for.body717.i
  %indvars.iv1849.i = phi i64 [ %indvars.iv.next1850.i, %for.body717.i ], [ 0, %for.cond715.preheader.i ]
  %sum20708.01685.i = phi double [ %add731.i, %for.body717.i ], [ 0.000000e+00, %for.cond715.preheader.i ]
  %sum10707.01684.i = phi double [ %add729.i, %for.body717.i ], [ 0.000000e+00, %for.cond715.preheader.i ]
  %sum00706.01683.i = phi double [ %add727.i, %for.body717.i ], [ 0.000000e+00, %for.cond715.preheader.i ]
  %arrayidx719.i = getelementptr inbounds double* %rowAT0.21692.i, i64 %indvars.iv1849.i
  %196 = load double* %arrayidx719.i, align 8, !tbaa !4
  %add.ptr710.sum1513.i = add i64 %indvars.iv1849.i, %idx.ext709.i
  %arrayidx721.i = getelementptr inbounds double* %rowAT0.21692.i, i64 %add.ptr710.sum1513.i
  %197 = load double* %arrayidx721.i, align 8, !tbaa !4
  %add.ptr712.sum1514.i = add i64 %indvars.iv1849.i, %add.ptr710.sum.i
  %arrayidx723.i = getelementptr inbounds double* %rowAT0.21692.i, i64 %add.ptr712.sum1514.i
  %198 = load double* %arrayidx723.i, align 8, !tbaa !4
  %arrayidx725.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %indvars.iv1849.i
  %199 = load double* %arrayidx725.i, align 8, !tbaa !4
  %mul726.i = fmul double %196, %199
  %add727.i = fadd double %sum00706.01683.i, %mul726.i
  %mul728.i = fmul double %197, %199
  %add729.i = fadd double %sum10707.01684.i, %mul728.i
  %mul730.i = fmul double %198, %199
  %add731.i = fadd double %sum20708.01685.i, %mul730.i
  %indvars.iv.next1850.i = add i64 %indvars.iv1849.i, 1
  %lftr.wideiv1161 = trunc i64 %indvars.iv.next1850.i to i32
  %exitcond1162 = icmp eq i32 %lftr.wideiv1161, %191
  br i1 %exitcond1162, label %if.end758.i, label %for.body717.i

for.body738.i:                                    ; preds = %for.cond736.preheader.i, %for.body738.i
  %indvars.iv1847.i = phi i64 [ %indvars.iv.next1848.i, %for.body738.i ], [ 0, %for.cond736.preheader.i ]
  %sum20708.11676.i = phi double [ %add754.i, %for.body738.i ], [ 0.000000e+00, %for.cond736.preheader.i ]
  %sum10707.11675.i = phi double [ %add752.i, %for.body738.i ], [ 0.000000e+00, %for.cond736.preheader.i ]
  %sum00706.11674.i = phi double [ %add750.i, %for.body738.i ], [ 0.000000e+00, %for.cond736.preheader.i ]
  %arrayidx740.i = getelementptr inbounds double* %rowAT0.21692.i, i64 %indvars.iv1847.i
  %200 = load double* %arrayidx740.i, align 8, !tbaa !4
  %add.ptr710.sum1511.i = add i64 %indvars.iv1847.i, %idx.ext709.i
  %arrayidx742.i = getelementptr inbounds double* %rowAT0.21692.i, i64 %add.ptr710.sum1511.i
  %201 = load double* %arrayidx742.i, align 8, !tbaa !4
  %add.ptr712.sum1512.i = add i64 %indvars.iv1847.i, %add.ptr710.sum.i
  %arrayidx744.i = getelementptr inbounds double* %rowAT0.21692.i, i64 %add.ptr712.sum1512.i
  %202 = load double* %arrayidx744.i, align 8, !tbaa !4
  %arrayidx746.i = getelementptr inbounds i32* %195, i64 %indvars.iv1847.i
  %203 = load i32* %arrayidx746.i, align 4, !tbaa !3
  %idxprom747.i = sext i32 %203 to i64
  %arrayidx748.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom747.i
  %204 = load double* %arrayidx748.i, align 8, !tbaa !4
  %mul749.i = fmul double %200, %204
  %add750.i = fadd double %sum00706.11674.i, %mul749.i
  %mul751.i = fmul double %201, %204
  %add752.i = fadd double %sum10707.11675.i, %mul751.i
  %mul753.i = fmul double %202, %204
  %add754.i = fadd double %sum20708.11676.i, %mul753.i
  %indvars.iv.next1848.i = add i64 %indvars.iv1847.i, 1
  %lftr.wideiv1159 = trunc i64 %indvars.iv.next1848.i to i32
  %exitcond1160 = icmp eq i32 %lftr.wideiv1159, %191
  br i1 %exitcond1160, label %if.end758.i, label %for.body738.i

if.end758.i:                                      ; preds = %for.body717.i, %for.body738.i, %for.cond736.preheader.i, %for.cond715.preheader.i
  %sum00706.2.i = phi double [ 0.000000e+00, %for.cond736.preheader.i ], [ 0.000000e+00, %for.cond715.preheader.i ], [ %add750.i, %for.body738.i ], [ %add727.i, %for.body717.i ]
  %sum10707.2.i = phi double [ 0.000000e+00, %for.cond736.preheader.i ], [ 0.000000e+00, %for.cond715.preheader.i ], [ %add752.i, %for.body738.i ], [ %add729.i, %for.body717.i ]
  %sum20708.2.i = phi double [ 0.000000e+00, %for.cond736.preheader.i ], [ 0.000000e+00, %for.cond715.preheader.i ], [ %add754.i, %for.body738.i ], [ %add731.i, %for.body717.i ]
  br i1 %cmp759.i, label %if.then760.i, label %if.else772.i

if.then760.i:                                     ; preds = %if.end758.i
  %arrayidx762.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %indvars.iv1853.i
  %205 = load double* %arrayidx762.i, align 8, !tbaa !4
  %sub763.i = fsub double %205, %sum00706.2.i
  store double %sub763.i, double* %arrayidx762.i, align 8, !tbaa !4
  %206 = add nsw i64 %indvars.iv1853.i, 1
  %arrayidx766.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %206
  %207 = load double* %arrayidx766.i, align 8, !tbaa !4
  %sub767.i = fsub double %207, %sum10707.2.i
  store double %sub767.i, double* %arrayidx766.i, align 8, !tbaa !4
  %208 = add nsw i64 %indvars.iv1853.i, 2
  %arrayidx770.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %208
  %209 = load double* %arrayidx770.i, align 8, !tbaa !4
  %sub771.i = fsub double %209, %sum20708.2.i
  store double %sub771.i, double* %arrayidx770.i, align 8, !tbaa !4
  br label %if.end790.i

if.else772.i:                                     ; preds = %if.end758.i
  %arrayidx774.i = getelementptr inbounds i32* %194, i64 %indvars.iv1853.i
  %210 = load i32* %arrayidx774.i, align 4, !tbaa !3
  %idxprom775.i = sext i32 %210 to i64
  %arrayidx776.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom775.i
  %211 = load double* %arrayidx776.i, align 8, !tbaa !4
  %sub777.i = fsub double %211, %sum00706.2.i
  store double %sub777.i, double* %arrayidx776.i, align 8, !tbaa !4
  %212 = add nsw i64 %indvars.iv1853.i, 1
  %arrayidx780.i = getelementptr inbounds i32* %194, i64 %212
  %213 = load i32* %arrayidx780.i, align 4, !tbaa !3
  %idxprom781.i = sext i32 %213 to i64
  %arrayidx782.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom781.i
  %214 = load double* %arrayidx782.i, align 8, !tbaa !4
  %sub783.i = fsub double %214, %sum10707.2.i
  store double %sub783.i, double* %arrayidx782.i, align 8, !tbaa !4
  %215 = add nsw i64 %indvars.iv1853.i, 2
  %arrayidx786.i = getelementptr inbounds i32* %194, i64 %215
  %216 = load i32* %arrayidx786.i, align 4, !tbaa !3
  %idxprom787.i = sext i32 %216 to i64
  %arrayidx788.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom787.i
  %217 = load double* %arrayidx788.i, align 8, !tbaa !4
  %sub789.i = fsub double %217, %sum20708.2.i
  store double %sub789.i, double* %arrayidx788.i, align 8, !tbaa !4
  br label %if.end790.i

if.end790.i:                                      ; preds = %if.else772.i, %if.then760.i
  %add.ptr792.i = getelementptr inbounds double* %rowAT0.21692.i, i64 %add.ptr712.sum.i
  %indvars.iv.next1854.i = add i64 %indvars.iv1853.i, 3
  %add794.i = add nsw i32 %irowAT.21696.i, 3
  %218 = trunc i64 %indvars.iv.next1854.i to i32
  %cmp700.i = icmp slt i32 %218, %sub6991690.i
  br i1 %cmp700.i, label %for.body701.i, label %for.end795.i

for.end795.i:                                     ; preds = %if.end790.i, %if.then697.i
  %irowAT.2.lcssa.i = phi i32 [ 0, %if.then697.i ], [ %add794.i, %if.end790.i ]
  %rowAT0.2.lcssa.i = phi double* [ %189, %if.then697.i ], [ %add.ptr792.i, %if.end790.i ]
  %cmp797.i = icmp eq i32 %irowAT.2.lcssa.i, %sub6991690.i
  br i1 %cmp797.i, label %if.then798.i, label %if.else866.i

if.then798.i:                                     ; preds = %for.end795.i
  %219 = load i32* %ncolAT.i, align 4, !tbaa !3
  %idx.ext804.i = sext i32 %219 to i64
  %220 = load i32* %nrowX.i, align 4, !tbaa !3
  %cmp806.i = icmp eq i32 %219, %220
  %cmp8091650.i = icmp sgt i32 %219, 0
  br i1 %cmp806.i, label %for.cond808.preheader.i, label %for.cond825.preheader.i

for.cond825.preheader.i:                          ; preds = %if.then798.i
  br i1 %cmp8091650.i, label %for.body827.lr.ph.i, label %if.end843.i

for.body827.lr.ph.i:                              ; preds = %for.cond825.preheader.i
  %221 = load i32** %colindAT.i, align 8, !tbaa !0
  br label %for.body827.i

for.cond808.preheader.i:                          ; preds = %if.then798.i
  br i1 %cmp8091650.i, label %for.body810.i, label %if.end843.i

for.body810.i:                                    ; preds = %for.cond808.preheader.i, %for.body810.i
  %indvars.iv1839.i = phi i64 [ %indvars.iv.next1840.i, %for.body810.i ], [ 0, %for.cond808.preheader.i ]
  %sum10803.01653.i = phi double [ %add820.i, %for.body810.i ], [ 0.000000e+00, %for.cond808.preheader.i ]
  %sum00802.01652.i = phi double [ %add818.i, %for.body810.i ], [ 0.000000e+00, %for.cond808.preheader.i ]
  %arrayidx812.i = getelementptr inbounds double* %rowAT0.2.lcssa.i, i64 %indvars.iv1839.i
  %222 = load double* %arrayidx812.i, align 8, !tbaa !4
  %add.ptr805.sum1510.i = add i64 %indvars.iv1839.i, %idx.ext804.i
  %arrayidx814.i = getelementptr inbounds double* %rowAT0.2.lcssa.i, i64 %add.ptr805.sum1510.i
  %223 = load double* %arrayidx814.i, align 8, !tbaa !4
  %arrayidx816.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %indvars.iv1839.i
  %224 = load double* %arrayidx816.i, align 8, !tbaa !4
  %mul817.i = fmul double %222, %224
  %add818.i = fadd double %sum00802.01652.i, %mul817.i
  %mul819.i = fmul double %223, %224
  %add820.i = fadd double %sum10803.01653.i, %mul819.i
  %indvars.iv.next1840.i = add i64 %indvars.iv1839.i, 1
  %lftr.wideiv1151 = trunc i64 %indvars.iv.next1840.i to i32
  %exitcond1152 = icmp eq i32 %lftr.wideiv1151, %219
  br i1 %exitcond1152, label %if.end843.i, label %for.body810.i

for.body827.i:                                    ; preds = %for.body827.i, %for.body827.lr.ph.i
  %indvars.iv1841.i = phi i64 [ 0, %for.body827.lr.ph.i ], [ %indvars.iv.next1842.i, %for.body827.i ]
  %sum10803.11660.i = phi double [ 0.000000e+00, %for.body827.lr.ph.i ], [ %add839.i, %for.body827.i ]
  %sum00802.11659.i = phi double [ 0.000000e+00, %for.body827.lr.ph.i ], [ %add837.i, %for.body827.i ]
  %arrayidx829.i = getelementptr inbounds double* %rowAT0.2.lcssa.i, i64 %indvars.iv1841.i
  %225 = load double* %arrayidx829.i, align 8, !tbaa !4
  %add.ptr805.sum.i = add i64 %indvars.iv1841.i, %idx.ext804.i
  %arrayidx831.i = getelementptr inbounds double* %rowAT0.2.lcssa.i, i64 %add.ptr805.sum.i
  %226 = load double* %arrayidx831.i, align 8, !tbaa !4
  %arrayidx833.i = getelementptr inbounds i32* %221, i64 %indvars.iv1841.i
  %227 = load i32* %arrayidx833.i, align 4, !tbaa !3
  %idxprom834.i = sext i32 %227 to i64
  %arrayidx835.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom834.i
  %228 = load double* %arrayidx835.i, align 8, !tbaa !4
  %mul836.i = fmul double %225, %228
  %add837.i = fadd double %sum00802.11659.i, %mul836.i
  %mul838.i = fmul double %226, %228
  %add839.i = fadd double %sum10803.11660.i, %mul838.i
  %indvars.iv.next1842.i = add i64 %indvars.iv1841.i, 1
  %lftr.wideiv1153 = trunc i64 %indvars.iv.next1842.i to i32
  %exitcond1154 = icmp eq i32 %lftr.wideiv1153, %219
  br i1 %exitcond1154, label %if.end843.i, label %for.body827.i

if.end843.i:                                      ; preds = %for.body827.i, %for.body810.i, %for.cond808.preheader.i, %for.cond825.preheader.i
  %sum00802.2.i = phi double [ 0.000000e+00, %for.cond825.preheader.i ], [ 0.000000e+00, %for.cond808.preheader.i ], [ %add818.i, %for.body810.i ], [ %add837.i, %for.body827.i ]
  %sum10803.2.i = phi double [ 0.000000e+00, %for.cond825.preheader.i ], [ 0.000000e+00, %for.cond808.preheader.i ], [ %add820.i, %for.body810.i ], [ %add839.i, %for.body827.i ]
  %229 = load i32* %nrowY.i, align 4, !tbaa !3
  %cmp844.i = icmp eq i32 %229, %190
  %idxprom846.i = sext i32 %sub6991690.i to i64
  br i1 %cmp844.i, label %if.then845.i, label %if.else853.i

if.then845.i:                                     ; preds = %if.end843.i
  %arrayidx847.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom846.i
  %230 = load double* %arrayidx847.i, align 8, !tbaa !4
  %sub848.i = fsub double %230, %sum00802.2.i
  store double %sub848.i, double* %arrayidx847.i, align 8, !tbaa !4
  %add849.i = add nsw i32 %190, -1
  %idxprom850.i = sext i32 %add849.i to i64
  %arrayidx851.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom850.i
  %231 = load double* %arrayidx851.i, align 8, !tbaa !4
  %sub852.i = fsub double %231, %sum10803.2.i
  store double %sub852.i, double* %arrayidx851.i, align 8, !tbaa !4
  br label %sw.epilog33

if.else853.i:                                     ; preds = %if.end843.i
  %232 = load i32** %rowindAT.i, align 8, !tbaa !0
  %arrayidx855.i = getelementptr inbounds i32* %232, i64 %idxprom846.i
  %233 = load i32* %arrayidx855.i, align 4, !tbaa !3
  %idxprom856.i = sext i32 %233 to i64
  %arrayidx857.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom856.i
  %234 = load double* %arrayidx857.i, align 8, !tbaa !4
  %sub858.i = fsub double %234, %sum00802.2.i
  store double %sub858.i, double* %arrayidx857.i, align 8, !tbaa !4
  %add859.i = add nsw i32 %190, -1
  %idxprom860.i = sext i32 %add859.i to i64
  %arrayidx861.i = getelementptr inbounds i32* %232, i64 %idxprom860.i
  %235 = load i32* %arrayidx861.i, align 4, !tbaa !3
  %idxprom862.i = sext i32 %235 to i64
  %arrayidx863.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom862.i
  %236 = load double* %arrayidx863.i, align 8, !tbaa !4
  %sub864.i = fsub double %236, %sum10803.2.i
  store double %sub864.i, double* %arrayidx863.i, align 8, !tbaa !4
  br label %sw.epilog33

if.else866.i:                                     ; preds = %for.end795.i
  %sub867.i = add nsw i32 %190, -1
  %cmp868.i = icmp eq i32 %irowAT.2.lcssa.i, %sub867.i
  br i1 %cmp868.i, label %if.then869.i, label %sw.epilog33

if.then869.i:                                     ; preds = %if.else866.i
  %237 = load i32* %ncolAT.i, align 4, !tbaa !3
  %238 = load i32* %nrowX.i, align 4, !tbaa !3
  %cmp873.i = icmp eq i32 %237, %238
  %cmp8761663.i = icmp sgt i32 %237, 0
  br i1 %cmp873.i, label %for.cond875.preheader.i, label %for.cond888.preheader.i

for.cond888.preheader.i:                          ; preds = %if.then869.i
  br i1 %cmp8761663.i, label %for.body890.lr.ph.i, label %if.end902.i

for.body890.lr.ph.i:                              ; preds = %for.cond888.preheader.i
  %239 = load i32** %colindAT.i, align 8, !tbaa !0
  br label %for.body890.i

for.cond875.preheader.i:                          ; preds = %if.then869.i
  br i1 %cmp8761663.i, label %for.body877.i, label %if.end902.i

for.body877.i:                                    ; preds = %for.cond875.preheader.i, %for.body877.i
  %indvars.iv1843.i = phi i64 [ %indvars.iv.next1844.i, %for.body877.i ], [ 0, %for.cond875.preheader.i ]
  %sum00872.01665.i = phi double [ %add883.i, %for.body877.i ], [ 0.000000e+00, %for.cond875.preheader.i ]
  %arrayidx879.i = getelementptr inbounds double* %rowAT0.2.lcssa.i, i64 %indvars.iv1843.i
  %240 = load double* %arrayidx879.i, align 8, !tbaa !4
  %arrayidx881.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %indvars.iv1843.i
  %241 = load double* %arrayidx881.i, align 8, !tbaa !4
  %mul882.i = fmul double %240, %241
  %add883.i = fadd double %sum00872.01665.i, %mul882.i
  %indvars.iv.next1844.i = add i64 %indvars.iv1843.i, 1
  %lftr.wideiv1155 = trunc i64 %indvars.iv.next1844.i to i32
  %exitcond1156 = icmp eq i32 %lftr.wideiv1155, %237
  br i1 %exitcond1156, label %if.end902.i, label %for.body877.i

for.body890.i:                                    ; preds = %for.body890.i, %for.body890.lr.ph.i
  %indvars.iv1845.i = phi i64 [ 0, %for.body890.lr.ph.i ], [ %indvars.iv.next1846.i, %for.body890.i ]
  %sum00872.11670.i = phi double [ 0.000000e+00, %for.body890.lr.ph.i ], [ %add898.i, %for.body890.i ]
  %arrayidx892.i = getelementptr inbounds double* %rowAT0.2.lcssa.i, i64 %indvars.iv1845.i
  %242 = load double* %arrayidx892.i, align 8, !tbaa !4
  %arrayidx894.i = getelementptr inbounds i32* %239, i64 %indvars.iv1845.i
  %243 = load i32* %arrayidx894.i, align 4, !tbaa !3
  %idxprom895.i = sext i32 %243 to i64
  %arrayidx896.i = getelementptr inbounds double* %colX0.0.lcssa.i, i64 %idxprom895.i
  %244 = load double* %arrayidx896.i, align 8, !tbaa !4
  %mul897.i = fmul double %242, %244
  %add898.i = fadd double %sum00872.11670.i, %mul897.i
  %indvars.iv.next1846.i = add i64 %indvars.iv1845.i, 1
  %lftr.wideiv1157 = trunc i64 %indvars.iv.next1846.i to i32
  %exitcond1158 = icmp eq i32 %lftr.wideiv1157, %237
  br i1 %exitcond1158, label %if.end902.i, label %for.body890.i

if.end902.i:                                      ; preds = %for.body890.i, %for.body877.i, %for.cond875.preheader.i, %for.cond888.preheader.i
  %sum00872.2.i = phi double [ 0.000000e+00, %for.cond888.preheader.i ], [ 0.000000e+00, %for.cond875.preheader.i ], [ %add883.i, %for.body877.i ], [ %add898.i, %for.body890.i ]
  %245 = load i32* %nrowY.i, align 4, !tbaa !3
  %cmp903.i = icmp eq i32 %245, %190
  %idxprom905.i = sext i32 %irowAT.2.lcssa.i to i64
  br i1 %cmp903.i, label %if.then904.i, label %if.else908.i

if.then904.i:                                     ; preds = %if.end902.i
  %arrayidx906.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom905.i
  %246 = load double* %arrayidx906.i, align 8, !tbaa !4
  %sub907.i = fsub double %246, %sum00872.2.i
  store double %sub907.i, double* %arrayidx906.i, align 8, !tbaa !4
  br label %sw.epilog33

if.else908.i:                                     ; preds = %if.end902.i
  %247 = load i32** %rowindAT.i, align 8, !tbaa !0
  %arrayidx910.i = getelementptr inbounds i32* %247, i64 %idxprom905.i
  %248 = load i32* %arrayidx910.i, align 4, !tbaa !3
  %idxprom911.i = sext i32 %248 to i64
  %arrayidx912.i = getelementptr inbounds double* %colY0.0.lcssa.i, i64 %idxprom911.i
  %249 = load double* %arrayidx912.i, align 8, !tbaa !4
  %sub913.i = fsub double %249, %sum00872.2.i
  store double %sub913.i, double* %arrayidx912.i, align 8, !tbaa !4
  br label %sw.epilog33

sw.bb15:                                          ; preds = %sw.bb
  %250 = bitcast double** %entA.i85 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %250) #4
  %251 = bitcast double** %entX.i86 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %251) #4
  %252 = bitcast double** %entY.i87 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %252) #4
  %253 = bitcast i32* %inc1.i88 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %253) #4
  %254 = bitcast i32* %inc2.i89 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %254) #4
  %255 = bitcast i32* %ncolAT.i90 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %255) #4
  %256 = bitcast i32* %ncolX.i91 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %256) #4
  %257 = bitcast i32* %ncolY.i92 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %257) #4
  %258 = bitcast i32* %nrowAT.i93 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %258) #4
  %259 = bitcast i32* %nrowX.i94 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %259) #4
  %260 = bitcast i32* %nrowY.i95 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %260) #4
  %261 = bitcast i32** %colindAT.i96 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %261) #4
  %262 = bitcast i32** %rowindAT.i97 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %262) #4
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxY, i32* %nrowY.i95, i32* %ncolY.i92, i32* %inc1.i88, i32* %inc2.i89, double** %entY.i87) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxX, i32* %nrowX.i94, i32* %ncolX.i91, i32* %inc1.i88, i32* %inc2.i89, double** %entX.i86) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxA, i32* %ncolAT.i90, i32* %nrowAT.i93, i32* %inc1.i88, i32* %inc2.i89, double** %entA.i85) #5
  %263 = load double** %entX.i86, align 8, !tbaa !0
  %264 = load double** %entY.i87, align 8, !tbaa !0
  %265 = load i32* %ncolAT.i90, align 4, !tbaa !3
  %266 = load i32* %nrowX.i94, align 4, !tbaa !3
  %cmp.i98 = icmp eq i32 %265, %266
  br i1 %cmp.i98, label %if.else.i100, label %if.then.i99

if.then.i99:                                      ; preds = %sw.bb15
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtxA, i32* %ncolAT.i90, i32** %colindAT.i96) #5
  br label %if.end.i102

if.else.i100:                                     ; preds = %sw.bb15
  store i32* null, i32** %colindAT.i96, align 8, !tbaa !0
  br label %if.end.i102

if.end.i102:                                      ; preds = %if.else.i100, %if.then.i99
  %267 = load i32* %nrowAT.i93, align 4, !tbaa !3
  %268 = load i32* %nrowY.i95, align 4, !tbaa !3
  %cmp1.i101 = icmp eq i32 %267, %268
  br i1 %cmp1.i101, label %if.else3.i104, label %if.then2.i103

if.then2.i103:                                    ; preds = %if.end.i102
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtxA, i32* %nrowAT.i93, i32** %rowindAT.i97) #5
  br label %for.cond.preheader.i

if.else3.i104:                                    ; preds = %if.end.i102
  store i32* null, i32** %rowindAT.i97, align 8, !tbaa !0
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.else3.i104, %if.then2.i103
  %269 = load i32* %ncolX.i91, align 4, !tbaa !3
  %sub1460.i = add nsw i32 %269, -2
  %cmp51461.i = icmp sgt i32 %sub1460.i, 0
  br i1 %cmp51461.i, label %for.body.lr.ph.i105, label %for.end329.i

for.body.lr.ph.i105:                              ; preds = %for.cond.preheader.i
  %.pre1540.i = load i32* %nrowX.i94, align 4, !tbaa !3
  %.pre1541.i = load i32* %nrowY.i95, align 4, !tbaa !3
  %.pre1542.i = load double** %entA.i85, align 8, !tbaa !0
  %.pre1543.i = load i32* %ncolAT.i90, align 4, !tbaa !3
  %idx.ext.i106 = sext i32 %.pre1540.i to i64
  %add.ptr.sum.i107 = shl nsw i64 %idx.ext.i106, 1
  %idx.ext8.i108 = sext i32 %.pre1541.i to i64
  %add.ptr9.sum.i109 = shl nsw i64 %idx.ext8.i108, 1
  %sub131434.i = add nsw i32 %.pre1543.i, -2
  %cmp141435.i = icmp sgt i32 %sub131434.i, 0
  %cmp20.i = icmp eq i32 %.pre1543.i, %.pre1540.i
  %idxprom157.i = sext i32 %sub131434.i to i64
  %add163.i = add nsw i32 %.pre1543.i, -1
  %cmp1941454.i = icmp sgt i32 %.pre1541.i, 0
  %idxprom182.i = sext i32 %add163.i to i64
  %add.ptr7.sum.i131 = add i64 %add.ptr.sum.i107, %idx.ext.i106
  %add.ptr11.sum.i132 = add i64 %add.ptr9.sum.i109, %idx.ext8.i108
  br label %for.body.i110

for.body.i110:                                    ; preds = %if.end322.i, %for.body.lr.ph.i105
  %jcolX.01472.i = phi i32 [ 0, %for.body.lr.ph.i105 ], [ %add328.i, %if.end322.i ]
  %colY0.01465.i = phi double* [ %264, %for.body.lr.ph.i105 ], [ %add.ptr326.i, %if.end322.i ]
  %colX0.01462.i = phi double* [ %263, %for.body.lr.ph.i105 ], [ %add.ptr324.i, %if.end322.i ]
  br i1 %cmp141435.i, label %for.body15.lr.ph.i, label %for.end149.i

for.body15.lr.ph.i:                               ; preds = %for.body.i110
  %.pre1544.i = load i32* %nrowAT.i93, align 4, !tbaa !3
  %idx.ext16.i = sext i32 %.pre1544.i to i64
  %add.ptr17.sum.i111 = shl nsw i64 %idx.ext16.i, 1
  %cmp71.i = icmp eq i32 %.pre1541.i, %.pre1544.i
  %cmp741431.i = icmp sgt i32 %.pre1544.i, 0
  %add.ptr19.sum.i116 = add i64 %add.ptr17.sum.i111, %idx.ext16.i
  br label %for.body15.i112

for.body15.i112:                                  ; preds = %if.end144.i, %for.body15.lr.ph.i
  %indvars.iv1522.i = phi i64 [ 0, %for.body15.lr.ph.i ], [ %indvars.iv.next1523.i, %if.end144.i ]
  %icolAT.01440.i = phi i32 [ 0, %for.body15.lr.ph.i ], [ %add148.i, %if.end144.i ]
  %colAT0.01436.i = phi double* [ %.pre1542.i, %for.body15.lr.ph.i ], [ %add.ptr146.i, %if.end144.i ]
  br i1 %cmp20.i, label %if.then21.i, label %if.else43.i

if.then21.i:                                      ; preds = %for.body15.i112
  %270 = add nsw i64 %indvars.iv1522.i, 1
  %271 = add nsw i64 %indvars.iv1522.i, 2
  %272 = trunc i64 %271 to i32
  %273 = trunc i64 %270 to i32
  br label %if.end70.i

if.else43.i:                                      ; preds = %for.body15.i112
  %274 = load i32** %colindAT.i96, align 8, !tbaa !0
  %arrayidx45.i = getelementptr inbounds i32* %274, i64 %indvars.iv1522.i
  %275 = load i32* %arrayidx45.i, align 4, !tbaa !3
  %idxprom46.i = sext i32 %275 to i64
  %276 = add nsw i64 %indvars.iv1522.i, 1
  %arrayidx54.i = getelementptr inbounds i32* %274, i64 %276
  %277 = load i32* %arrayidx54.i, align 4, !tbaa !3
  %278 = add nsw i64 %indvars.iv1522.i, 2
  %arrayidx63.i = getelementptr inbounds i32* %274, i64 %278
  %279 = load i32* %arrayidx63.i, align 4, !tbaa !3
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.else43.i, %if.then21.i
  %add34.sink.i = phi i32 [ %272, %if.then21.i ], [ %279, %if.else43.i ]
  %idxprom.pn.i = phi i64 [ %indvars.iv1522.i, %if.then21.i ], [ %idxprom46.i, %if.else43.i ]
  %idxprom26.pn.in.i = phi i32 [ %273, %if.then21.i ], [ %277, %if.else43.i ]
  %idxprom26.pn.i = sext i32 %idxprom26.pn.in.i to i64
  %idxprom35.i = sext i32 %add34.sink.i to i64
  %add.ptr7.sum1354.pn.i = add i64 %idxprom35.i, %add.ptr.sum.i107
  %add.ptr.sum1353.pn.i = add i64 %idxprom35.i, %idx.ext.i106
  %add.ptr7.sum1352.pn.i = add i64 %idxprom26.pn.i, %add.ptr.sum.i107
  %add.ptr.sum1351.pn.i = add i64 %idxprom26.pn.i, %idx.ext.i106
  %add.ptr7.sum1350.pn.i = add i64 %idxprom.pn.i, %add.ptr.sum.i107
  %add.ptr.sum1349.pn.i = add i64 %idxprom.pn.i, %idx.ext.i106
  %x22.0.in.i = getelementptr inbounds double* %colX0.01462.i, i64 %add.ptr7.sum1354.pn.i
  %x21.0.in.i = getelementptr inbounds double* %colX0.01462.i, i64 %add.ptr.sum1353.pn.i
  %x20.0.in.i = getelementptr inbounds double* %colX0.01462.i, i64 %idxprom35.i
  %x12.0.in.i = getelementptr inbounds double* %colX0.01462.i, i64 %add.ptr7.sum1352.pn.i
  %x11.0.in.i = getelementptr inbounds double* %colX0.01462.i, i64 %add.ptr.sum1351.pn.i
  %x10.0.in.i = getelementptr inbounds double* %colX0.01462.i, i64 %idxprom26.pn.i
  %x02.0.in.i = getelementptr inbounds double* %colX0.01462.i, i64 %add.ptr7.sum1350.pn.i
  %x01.0.in.i = getelementptr inbounds double* %colX0.01462.i, i64 %add.ptr.sum1349.pn.i
  %x00.0.in.i = getelementptr inbounds double* %colX0.01462.i, i64 %idxprom.pn.i
  %x22.0.i = load double* %x22.0.in.i, align 8
  %x21.0.i = load double* %x21.0.in.i, align 8
  %x20.0.i = load double* %x20.0.in.i, align 8
  %x12.0.i = load double* %x12.0.in.i, align 8
  %x11.0.i = load double* %x11.0.in.i, align 8
  %x10.0.i = load double* %x10.0.in.i, align 8
  %x02.0.i = load double* %x02.0.in.i, align 8
  %x01.0.i = load double* %x01.0.in.i, align 8
  %x00.0.i = load double* %x00.0.in.i, align 8
  br i1 %cmp71.i, label %for.cond73.preheader.i, label %for.cond106.preheader.i

for.cond73.preheader.i:                           ; preds = %if.end70.i
  br i1 %cmp741431.i, label %for.body75.i, label %if.end144.i

for.cond106.preheader.i:                          ; preds = %if.end70.i
  br i1 %cmp741431.i, label %for.body108.lr.ph.i, label %if.end144.i

for.body108.lr.ph.i:                              ; preds = %for.cond106.preheader.i
  %280 = load i32** %rowindAT.i97, align 8, !tbaa !0
  br label %for.body108.i

for.body75.i:                                     ; preds = %for.cond73.preheader.i, %for.body75.i
  %indvars.iv1518.i = phi i64 [ %indvars.iv.next1519.i, %for.body75.i ], [ 0, %for.cond73.preheader.i ]
  %arrayidx77.i = getelementptr inbounds double* %colAT0.01436.i, i64 %indvars.iv1518.i
  %281 = load double* %arrayidx77.i, align 8, !tbaa !4
  %add.ptr17.sum1345.i = add i64 %indvars.iv1518.i, %idx.ext16.i
  %arrayidx79.i = getelementptr inbounds double* %colAT0.01436.i, i64 %add.ptr17.sum1345.i
  %282 = load double* %arrayidx79.i, align 8, !tbaa !4
  %add.ptr19.sum1346.i = add i64 %indvars.iv1518.i, %add.ptr17.sum.i111
  %arrayidx81.i = getelementptr inbounds double* %colAT0.01436.i, i64 %add.ptr19.sum1346.i
  %283 = load double* %arrayidx81.i, align 8, !tbaa !4
  %mul.i113 = fmul double %x00.0.i, %281
  %mul82.i = fmul double %x10.0.i, %282
  %add83.i = fadd double %mul.i113, %mul82.i
  %mul84.i = fmul double %x20.0.i, %283
  %add85.i = fadd double %add83.i, %mul84.i
  %arrayidx87.i = getelementptr inbounds double* %colY0.01465.i, i64 %indvars.iv1518.i
  %284 = load double* %arrayidx87.i, align 8, !tbaa !4
  %sub88.i = fsub double %284, %add85.i
  store double %sub88.i, double* %arrayidx87.i, align 8, !tbaa !4
  %mul89.i = fmul double %x01.0.i, %281
  %mul90.i = fmul double %x11.0.i, %282
  %add91.i = fadd double %mul89.i, %mul90.i
  %mul92.i = fmul double %x21.0.i, %283
  %add93.i = fadd double %add91.i, %mul92.i
  %add.ptr9.sum1347.i = add i64 %indvars.iv1518.i, %idx.ext8.i108
  %arrayidx95.i = getelementptr inbounds double* %colY0.01465.i, i64 %add.ptr9.sum1347.i
  %285 = load double* %arrayidx95.i, align 8, !tbaa !4
  %sub96.i = fsub double %285, %add93.i
  store double %sub96.i, double* %arrayidx95.i, align 8, !tbaa !4
  %mul97.i = fmul double %x02.0.i, %281
  %mul98.i = fmul double %x12.0.i, %282
  %add99.i = fadd double %mul97.i, %mul98.i
  %mul100.i = fmul double %x22.0.i, %283
  %add101.i = fadd double %add99.i, %mul100.i
  %add.ptr11.sum1348.i = add i64 %indvars.iv1518.i, %add.ptr9.sum.i109
  %arrayidx103.i = getelementptr inbounds double* %colY0.01465.i, i64 %add.ptr11.sum1348.i
  %286 = load double* %arrayidx103.i, align 8, !tbaa !4
  %sub104.i = fsub double %286, %add101.i
  store double %sub104.i, double* %arrayidx103.i, align 8, !tbaa !4
  %indvars.iv.next1519.i = add i64 %indvars.iv1518.i, 1
  %lftr.wideiv1201 = trunc i64 %indvars.iv.next1519.i to i32
  %exitcond1202 = icmp eq i32 %lftr.wideiv1201, %.pre1541.i
  br i1 %exitcond1202, label %if.end144.i, label %for.body75.i

for.body108.i:                                    ; preds = %for.body108.i, %for.body108.lr.ph.i
  %indvars.iv1516.i = phi i64 [ 0, %for.body108.lr.ph.i ], [ %indvars.iv.next1517.i, %for.body108.i ]
  %arrayidx110.i = getelementptr inbounds double* %colAT0.01436.i, i64 %indvars.iv1516.i
  %287 = load double* %arrayidx110.i, align 8, !tbaa !4
  %add.ptr17.sum1341.i = add i64 %indvars.iv1516.i, %idx.ext16.i
  %arrayidx112.i114 = getelementptr inbounds double* %colAT0.01436.i, i64 %add.ptr17.sum1341.i
  %288 = load double* %arrayidx112.i114, align 8, !tbaa !4
  %add.ptr19.sum1342.i = add i64 %indvars.iv1516.i, %add.ptr17.sum.i111
  %arrayidx114.i = getelementptr inbounds double* %colAT0.01436.i, i64 %add.ptr19.sum1342.i
  %289 = load double* %arrayidx114.i, align 8, !tbaa !4
  %arrayidx116.i115 = getelementptr inbounds i32* %280, i64 %indvars.iv1516.i
  %290 = load i32* %arrayidx116.i115, align 4, !tbaa !3
  %mul117.i = fmul double %x00.0.i, %287
  %mul118.i = fmul double %x10.0.i, %288
  %add119.i = fadd double %mul117.i, %mul118.i
  %mul120.i = fmul double %x20.0.i, %289
  %add121.i = fadd double %add119.i, %mul120.i
  %idxprom122.i = sext i32 %290 to i64
  %arrayidx123.i = getelementptr inbounds double* %colY0.01465.i, i64 %idxprom122.i
  %291 = load double* %arrayidx123.i, align 8, !tbaa !4
  %sub124.i = fsub double %291, %add121.i
  store double %sub124.i, double* %arrayidx123.i, align 8, !tbaa !4
  %mul125.i = fmul double %x01.0.i, %287
  %mul126.i = fmul double %x11.0.i, %288
  %add127.i = fadd double %mul125.i, %mul126.i
  %mul128.i = fmul double %x21.0.i, %289
  %add129.i = fadd double %add127.i, %mul128.i
  %add.ptr9.sum1343.i = add i64 %idxprom122.i, %idx.ext8.i108
  %arrayidx131.i = getelementptr inbounds double* %colY0.01465.i, i64 %add.ptr9.sum1343.i
  %292 = load double* %arrayidx131.i, align 8, !tbaa !4
  %sub132.i = fsub double %292, %add129.i
  store double %sub132.i, double* %arrayidx131.i, align 8, !tbaa !4
  %mul133.i = fmul double %x02.0.i, %287
  %mul134.i = fmul double %x12.0.i, %288
  %add135.i = fadd double %mul133.i, %mul134.i
  %mul136.i = fmul double %x22.0.i, %289
  %add137.i = fadd double %add135.i, %mul136.i
  %add.ptr11.sum1344.i = add i64 %idxprom122.i, %add.ptr9.sum.i109
  %arrayidx139.i = getelementptr inbounds double* %colY0.01465.i, i64 %add.ptr11.sum1344.i
  %293 = load double* %arrayidx139.i, align 8, !tbaa !4
  %sub140.i = fsub double %293, %add137.i
  store double %sub140.i, double* %arrayidx139.i, align 8, !tbaa !4
  %indvars.iv.next1517.i = add i64 %indvars.iv1516.i, 1
  %lftr.wideiv1199 = trunc i64 %indvars.iv.next1517.i to i32
  %exitcond1200 = icmp eq i32 %lftr.wideiv1199, %.pre1544.i
  br i1 %exitcond1200, label %if.end144.i, label %for.body108.i

if.end144.i:                                      ; preds = %for.body75.i, %for.body108.i, %for.cond106.preheader.i, %for.cond73.preheader.i
  %add.ptr146.i = getelementptr inbounds double* %colAT0.01436.i, i64 %add.ptr19.sum.i116
  %indvars.iv.next1523.i = add i64 %indvars.iv1522.i, 3
  %add148.i = add nsw i32 %icolAT.01440.i, 3
  %294 = trunc i64 %indvars.iv.next1523.i to i32
  %cmp14.i117 = icmp slt i32 %294, %sub131434.i
  br i1 %cmp14.i117, label %for.body15.i112, label %for.end149.i

for.end149.i:                                     ; preds = %if.end144.i, %for.body.i110
  %icolAT.0.lcssa.i = phi i32 [ 0, %for.body.i110 ], [ %add148.i, %if.end144.i ]
  %colAT0.0.lcssa.i = phi double* [ %.pre1542.i, %for.body.i110 ], [ %add.ptr146.i, %if.end144.i ]
  %cmp151.i = icmp eq i32 %icolAT.0.lcssa.i, %sub131434.i
  br i1 %cmp151.i, label %if.then152.i, label %if.else253.i

if.then152.i:                                     ; preds = %for.end149.i
  %295 = load i32* %nrowAT.i93, align 4, !tbaa !3
  %idx.ext153.i = sext i32 %295 to i64
  br i1 %cmp20.i, label %if.end190.i, label %if.else172.i

if.else172.i:                                     ; preds = %if.then152.i
  %296 = load i32** %colindAT.i96, align 8, !tbaa !0
  %arrayidx174.i = getelementptr inbounds i32* %296, i64 %idxprom157.i
  %297 = load i32* %arrayidx174.i, align 4, !tbaa !3
  %idxprom175.i = sext i32 %297 to i64
  %arrayidx183.i = getelementptr inbounds i32* %296, i64 %idxprom182.i
  %298 = load i32* %arrayidx183.i, align 4, !tbaa !3
  br label %if.end190.i

if.end190.i:                                      ; preds = %if.then152.i, %if.else172.i
  %add163.sink.i = phi i32 [ %298, %if.else172.i ], [ %add163.i, %if.then152.i ]
  %idxprom157.pn.i = phi i64 [ %idxprom175.i, %if.else172.i ], [ %idxprom157.i, %if.then152.i ]
  %idxprom164.i = sext i32 %add163.sink.i to i64
  %add.ptr7.sum1334.pn.i = add i64 %idxprom164.i, %add.ptr.sum.i107
  %add.ptr.sum1333.pn.i = add i64 %idxprom164.i, %idx.ext.i106
  %add.ptr7.sum1332.pn.i = add i64 %idxprom157.pn.i, %add.ptr.sum.i107
  %add.ptr.sum1331.pn.i = add i64 %idxprom157.pn.i, %idx.ext.i106
  %x12.1.in.i = getelementptr inbounds double* %colX0.01462.i, i64 %add.ptr7.sum1334.pn.i
  %x11.1.in.i = getelementptr inbounds double* %colX0.01462.i, i64 %add.ptr.sum1333.pn.i
  %x10.1.in.i = getelementptr inbounds double* %colX0.01462.i, i64 %idxprom164.i
  %x02.1.in.i = getelementptr inbounds double* %colX0.01462.i, i64 %add.ptr7.sum1332.pn.i
  %x01.1.in.i = getelementptr inbounds double* %colX0.01462.i, i64 %add.ptr.sum1331.pn.i
  %x00.1.in.i = getelementptr inbounds double* %colX0.01462.i, i64 %idxprom157.pn.i
  %x12.1.i = load double* %x12.1.in.i, align 8
  %x11.1.i = load double* %x11.1.in.i, align 8
  %x10.1.i = load double* %x10.1.in.i, align 8
  %x02.1.i = load double* %x02.1.in.i, align 8
  %x01.1.i = load double* %x01.1.in.i, align 8
  %x00.1.i = load double* %x00.1.in.i, align 8
  %cmp191.i = icmp eq i32 %.pre1541.i, %295
  br i1 %cmp191.i, label %for.cond193.preheader.i, label %for.cond222.preheader.i

for.cond193.preheader.i:                          ; preds = %if.end190.i
  br i1 %cmp1941454.i, label %for.body195.i, label %if.end322.i

for.cond222.preheader.i:                          ; preds = %if.end190.i
  %cmp2231451.i = icmp sgt i32 %295, 0
  br i1 %cmp2231451.i, label %for.body224.lr.ph.i, label %if.end322.i

for.body224.lr.ph.i:                              ; preds = %for.cond222.preheader.i
  %299 = load i32** %rowindAT.i97, align 8, !tbaa !0
  br label %for.body224.i

for.body195.i:                                    ; preds = %for.cond193.preheader.i, %for.body195.i
  %indvars.iv1534.i = phi i64 [ %indvars.iv.next1535.i, %for.body195.i ], [ 0, %for.cond193.preheader.i ]
  %arrayidx197.i = getelementptr inbounds double* %colAT0.0.lcssa.i, i64 %indvars.iv1534.i
  %300 = load double* %arrayidx197.i, align 8, !tbaa !4
  %add.ptr154.sum1328.i = add i64 %indvars.iv1534.i, %idx.ext153.i
  %arrayidx199.i = getelementptr inbounds double* %colAT0.0.lcssa.i, i64 %add.ptr154.sum1328.i
  %301 = load double* %arrayidx199.i, align 8, !tbaa !4
  %mul200.i = fmul double %x00.1.i, %300
  %mul201.i118 = fmul double %x10.1.i, %301
  %add202.i119 = fadd double %mul200.i, %mul201.i118
  %arrayidx204.i = getelementptr inbounds double* %colY0.01465.i, i64 %indvars.iv1534.i
  %302 = load double* %arrayidx204.i, align 8, !tbaa !4
  %sub205.i = fsub double %302, %add202.i119
  store double %sub205.i, double* %arrayidx204.i, align 8, !tbaa !4
  %mul206.i = fmul double %x01.1.i, %300
  %mul207.i120 = fmul double %x11.1.i, %301
  %add208.i121 = fadd double %mul206.i, %mul207.i120
  %add.ptr9.sum1329.i = add i64 %indvars.iv1534.i, %idx.ext8.i108
  %arrayidx210.i = getelementptr inbounds double* %colY0.01465.i, i64 %add.ptr9.sum1329.i
  %303 = load double* %arrayidx210.i, align 8, !tbaa !4
  %sub211.i = fsub double %303, %add208.i121
  store double %sub211.i, double* %arrayidx210.i, align 8, !tbaa !4
  %mul212.i = fmul double %x02.1.i, %300
  %mul213.i = fmul double %x12.1.i, %301
  %add214.i = fadd double %mul212.i, %mul213.i
  %add.ptr11.sum1330.i = add i64 %indvars.iv1534.i, %add.ptr9.sum.i109
  %arrayidx216.i = getelementptr inbounds double* %colY0.01465.i, i64 %add.ptr11.sum1330.i
  %304 = load double* %arrayidx216.i, align 8, !tbaa !4
  %sub217.i = fsub double %304, %add214.i
  store double %sub217.i, double* %arrayidx216.i, align 8, !tbaa !4
  %indvars.iv.next1535.i = add i64 %indvars.iv1534.i, 1
  %lftr.wideiv1209 = trunc i64 %indvars.iv.next1535.i to i32
  %exitcond1210 = icmp eq i32 %lftr.wideiv1209, %.pre1541.i
  br i1 %exitcond1210, label %if.end322.i, label %for.body195.i

for.body224.i:                                    ; preds = %for.body224.i, %for.body224.lr.ph.i
  %indvars.iv1532.i = phi i64 [ 0, %for.body224.lr.ph.i ], [ %indvars.iv.next1533.i, %for.body224.i ]
  %arrayidx226.i = getelementptr inbounds double* %colAT0.0.lcssa.i, i64 %indvars.iv1532.i
  %305 = load double* %arrayidx226.i, align 8, !tbaa !4
  %add.ptr154.sum.i = add i64 %indvars.iv1532.i, %idx.ext153.i
  %arrayidx228.i = getelementptr inbounds double* %colAT0.0.lcssa.i, i64 %add.ptr154.sum.i
  %306 = load double* %arrayidx228.i, align 8, !tbaa !4
  %arrayidx230.i = getelementptr inbounds i32* %299, i64 %indvars.iv1532.i
  %307 = load i32* %arrayidx230.i, align 4, !tbaa !3
  %mul231.i = fmul double %x00.1.i, %305
  %mul232.i122 = fmul double %x10.1.i, %306
  %add233.i123 = fadd double %mul231.i, %mul232.i122
  %idxprom234.i = sext i32 %307 to i64
  %arrayidx235.i = getelementptr inbounds double* %colY0.01465.i, i64 %idxprom234.i
  %308 = load double* %arrayidx235.i, align 8, !tbaa !4
  %sub236.i = fsub double %308, %add233.i123
  store double %sub236.i, double* %arrayidx235.i, align 8, !tbaa !4
  %mul237.i = fmul double %x01.1.i, %305
  %mul238.i124 = fmul double %x11.1.i, %306
  %add239.i125 = fadd double %mul237.i, %mul238.i124
  %add.ptr9.sum1326.i = add i64 %idxprom234.i, %idx.ext8.i108
  %arrayidx241.i = getelementptr inbounds double* %colY0.01465.i, i64 %add.ptr9.sum1326.i
  %309 = load double* %arrayidx241.i, align 8, !tbaa !4
  %sub242.i = fsub double %309, %add239.i125
  store double %sub242.i, double* %arrayidx241.i, align 8, !tbaa !4
  %mul243.i = fmul double %x02.1.i, %305
  %mul244.i = fmul double %x12.1.i, %306
  %add245.i = fadd double %mul243.i, %mul244.i
  %add.ptr11.sum1327.i = add i64 %idxprom234.i, %add.ptr9.sum.i109
  %arrayidx247.i = getelementptr inbounds double* %colY0.01465.i, i64 %add.ptr11.sum1327.i
  %310 = load double* %arrayidx247.i, align 8, !tbaa !4
  %sub248.i = fsub double %310, %add245.i
  store double %sub248.i, double* %arrayidx247.i, align 8, !tbaa !4
  %indvars.iv.next1533.i = add i64 %indvars.iv1532.i, 1
  %lftr.wideiv1207 = trunc i64 %indvars.iv.next1533.i to i32
  %exitcond1208 = icmp eq i32 %lftr.wideiv1207, %295
  br i1 %exitcond1208, label %if.end322.i, label %for.body224.i

if.else253.i:                                     ; preds = %for.end149.i
  %cmp255.i = icmp eq i32 %icolAT.0.lcssa.i, %add163.i
  br i1 %cmp255.i, label %if.then256.i, label %if.end322.i

if.then256.i:                                     ; preds = %if.else253.i
  br i1 %cmp20.i, label %if.end274.i, label %if.else265.i

if.else265.i:                                     ; preds = %if.then256.i
  %311 = load i32** %colindAT.i96, align 8, !tbaa !0
  %arrayidx267.i126 = getelementptr inbounds i32* %311, i64 %idxprom182.i
  %312 = load i32* %arrayidx267.i126, align 4, !tbaa !3
  %idxprom268.i = sext i32 %312 to i64
  br label %if.end274.i

if.end274.i:                                      ; preds = %if.then256.i, %if.else265.i
  %idxprom259.pn.i = phi i64 [ %idxprom268.i, %if.else265.i ], [ %idxprom182.i, %if.then256.i ]
  %add.ptr7.sum1321.pn.i = add i64 %idxprom259.pn.i, %add.ptr.sum.i107
  %add.ptr.sum1320.pn.i = add i64 %idxprom259.pn.i, %idx.ext.i106
  %x02.2.in.i = getelementptr inbounds double* %colX0.01462.i, i64 %add.ptr7.sum1321.pn.i
  %x01.2.in.i = getelementptr inbounds double* %colX0.01462.i, i64 %add.ptr.sum1320.pn.i
  %x00.2.in.i = getelementptr inbounds double* %colX0.01462.i, i64 %idxprom259.pn.i
  %x02.2.i = load double* %x02.2.in.i, align 8
  %x01.2.i = load double* %x01.2.in.i, align 8
  %x00.2.i = load double* %x00.2.in.i, align 8
  %313 = load i32* %nrowAT.i93, align 4, !tbaa !3
  %cmp275.i = icmp eq i32 %.pre1541.i, %313
  br i1 %cmp275.i, label %for.cond277.preheader.i, label %for.cond298.preheader.i

for.cond277.preheader.i:                          ; preds = %if.end274.i
  br i1 %cmp1941454.i, label %for.body279.i, label %if.end322.i

for.cond298.preheader.i:                          ; preds = %if.end274.i
  %cmp2991445.i = icmp sgt i32 %313, 0
  br i1 %cmp2991445.i, label %for.body300.lr.ph.i, label %if.end322.i

for.body300.lr.ph.i:                              ; preds = %for.cond298.preheader.i
  %314 = load i32** %rowindAT.i97, align 8, !tbaa !0
  br label %for.body300.i

for.body279.i:                                    ; preds = %for.cond277.preheader.i, %for.body279.i
  %indvars.iv1530.i = phi i64 [ %indvars.iv.next1531.i, %for.body279.i ], [ 0, %for.cond277.preheader.i ]
  %arrayidx281.i = getelementptr inbounds double* %colAT0.0.lcssa.i, i64 %indvars.iv1530.i
  %315 = load double* %arrayidx281.i, align 8, !tbaa !4
  %mul282.i = fmul double %x00.2.i, %315
  %arrayidx284.i = getelementptr inbounds double* %colY0.01465.i, i64 %indvars.iv1530.i
  %316 = load double* %arrayidx284.i, align 8, !tbaa !4
  %sub285.i = fsub double %316, %mul282.i
  store double %sub285.i, double* %arrayidx284.i, align 8, !tbaa !4
  %mul286.i = fmul double %x01.2.i, %315
  %add.ptr9.sum1318.i = add i64 %indvars.iv1530.i, %idx.ext8.i108
  %arrayidx288.i127 = getelementptr inbounds double* %colY0.01465.i, i64 %add.ptr9.sum1318.i
  %317 = load double* %arrayidx288.i127, align 8, !tbaa !4
  %sub289.i128 = fsub double %317, %mul286.i
  store double %sub289.i128, double* %arrayidx288.i127, align 8, !tbaa !4
  %mul290.i = fmul double %x02.2.i, %315
  %add.ptr11.sum1319.i = add i64 %indvars.iv1530.i, %add.ptr9.sum.i109
  %arrayidx292.i = getelementptr inbounds double* %colY0.01465.i, i64 %add.ptr11.sum1319.i
  %318 = load double* %arrayidx292.i, align 8, !tbaa !4
  %sub293.i = fsub double %318, %mul290.i
  store double %sub293.i, double* %arrayidx292.i, align 8, !tbaa !4
  %indvars.iv.next1531.i = add i64 %indvars.iv1530.i, 1
  %lftr.wideiv1205 = trunc i64 %indvars.iv.next1531.i to i32
  %exitcond1206 = icmp eq i32 %lftr.wideiv1205, %.pre1541.i
  br i1 %exitcond1206, label %if.end322.i, label %for.body279.i

for.body300.i:                                    ; preds = %for.body300.i, %for.body300.lr.ph.i
  %indvars.iv1528.i = phi i64 [ 0, %for.body300.lr.ph.i ], [ %indvars.iv.next1529.i, %for.body300.i ]
  %arrayidx302.i = getelementptr inbounds double* %colAT0.0.lcssa.i, i64 %indvars.iv1528.i
  %319 = load double* %arrayidx302.i, align 8, !tbaa !4
  %arrayidx304.i = getelementptr inbounds i32* %314, i64 %indvars.iv1528.i
  %320 = load i32* %arrayidx304.i, align 4, !tbaa !3
  %mul305.i = fmul double %x00.2.i, %319
  %idxprom306.i = sext i32 %320 to i64
  %arrayidx307.i = getelementptr inbounds double* %colY0.01465.i, i64 %idxprom306.i
  %321 = load double* %arrayidx307.i, align 8, !tbaa !4
  %sub308.i = fsub double %321, %mul305.i
  store double %sub308.i, double* %arrayidx307.i, align 8, !tbaa !4
  %mul309.i = fmul double %x01.2.i, %319
  %add.ptr9.sum1316.i = add i64 %idxprom306.i, %idx.ext8.i108
  %arrayidx311.i129 = getelementptr inbounds double* %colY0.01465.i, i64 %add.ptr9.sum1316.i
  %322 = load double* %arrayidx311.i129, align 8, !tbaa !4
  %sub312.i = fsub double %322, %mul309.i
  store double %sub312.i, double* %arrayidx311.i129, align 8, !tbaa !4
  %mul313.i = fmul double %x02.2.i, %319
  %add.ptr11.sum1317.i = add i64 %idxprom306.i, %add.ptr9.sum.i109
  %arrayidx315.i130 = getelementptr inbounds double* %colY0.01465.i, i64 %add.ptr11.sum1317.i
  %323 = load double* %arrayidx315.i130, align 8, !tbaa !4
  %sub316.i = fsub double %323, %mul313.i
  store double %sub316.i, double* %arrayidx315.i130, align 8, !tbaa !4
  %indvars.iv.next1529.i = add i64 %indvars.iv1528.i, 1
  %lftr.wideiv1203 = trunc i64 %indvars.iv.next1529.i to i32
  %exitcond1204 = icmp eq i32 %lftr.wideiv1203, %313
  br i1 %exitcond1204, label %if.end322.i, label %for.body300.i

if.end322.i:                                      ; preds = %for.body195.i, %for.body224.i, %for.body279.i, %for.body300.i, %for.cond298.preheader.i, %for.cond277.preheader.i, %if.else253.i, %for.cond222.preheader.i, %for.cond193.preheader.i
  %add.ptr324.i = getelementptr inbounds double* %colX0.01462.i, i64 %add.ptr7.sum.i131
  %add.ptr326.i = getelementptr inbounds double* %colY0.01465.i, i64 %add.ptr11.sum.i132
  %add328.i = add nsw i32 %jcolX.01472.i, 3
  %cmp5.i133 = icmp slt i32 %add328.i, %sub1460.i
  br i1 %cmp5.i133, label %for.body.i110, label %for.end329.i

for.end329.i:                                     ; preds = %if.end322.i, %for.cond.preheader.i
  %jcolX.0.lcssa.i134 = phi i32 [ 0, %for.cond.preheader.i ], [ %add328.i, %if.end322.i ]
  %colY0.0.lcssa.i135 = phi double* [ %264, %for.cond.preheader.i ], [ %add.ptr326.i, %if.end322.i ]
  %colX0.0.lcssa.i136 = phi double* [ %263, %for.cond.preheader.i ], [ %add.ptr324.i, %if.end322.i ]
  %cmp331.i = icmp eq i32 %jcolX.0.lcssa.i134, %sub1460.i
  br i1 %cmp331.i, label %if.then332.i, label %if.else592.i

if.then332.i:                                     ; preds = %for.end329.i
  %324 = load i32* %nrowX.i94, align 4, !tbaa !3
  %idx.ext333.i = sext i32 %324 to i64
  %325 = load i32* %nrowY.i95, align 4, !tbaa !3
  %idx.ext335.i = sext i32 %325 to i64
  %326 = load double** %entA.i85, align 8, !tbaa !0
  %327 = load i32* %ncolAT.i90, align 4, !tbaa !3
  %sub3381389.i = add nsw i32 %327, -2
  %cmp3391390.i = icmp sgt i32 %sub3381389.i, 0
  br i1 %cmp3391390.i, label %for.body340.lr.ph.i, label %for.end451.i

for.body340.lr.ph.i:                              ; preds = %if.then332.i
  %.pre.i = load i32* %nrowAT.i93, align 4, !tbaa !3
  %idx.ext341.i = sext i32 %.pre.i to i64
  %add.ptr342.sum.i = shl nsw i64 %idx.ext341.i, 1
  %cmp345.i = icmp eq i32 %327, %324
  %cmp385.i138 = icmp eq i32 %325, %.pre.i
  %cmp3881387.i = icmp sgt i32 %.pre.i, 0
  %add.ptr344.sum.i = add i64 %add.ptr342.sum.i, %idx.ext341.i
  br label %for.body340.i

for.body340.i:                                    ; preds = %if.end446.i, %for.body340.lr.ph.i
  %indvars.iv1490.i = phi i64 [ 0, %for.body340.lr.ph.i ], [ %indvars.iv.next1491.i, %if.end446.i ]
  %icolAT.11395.i = phi i32 [ 0, %for.body340.lr.ph.i ], [ %add450.i, %if.end446.i ]
  %colAT0.11391.i = phi double* [ %326, %for.body340.lr.ph.i ], [ %add.ptr448.i, %if.end446.i ]
  br i1 %cmp345.i, label %if.then346.i, label %if.else363.i

if.then346.i:                                     ; preds = %for.body340.i
  %328 = add nsw i64 %indvars.iv1490.i, 1
  %329 = add nsw i64 %indvars.iv1490.i, 2
  %330 = trunc i64 %329 to i32
  %331 = trunc i64 %328 to i32
  br label %if.end384.i

if.else363.i:                                     ; preds = %for.body340.i
  %332 = load i32** %colindAT.i96, align 8, !tbaa !0
  %arrayidx365.i = getelementptr inbounds i32* %332, i64 %indvars.iv1490.i
  %333 = load i32* %arrayidx365.i, align 4, !tbaa !3
  %idxprom366.i = sext i32 %333 to i64
  %334 = add nsw i64 %indvars.iv1490.i, 1
  %arrayidx372.i137 = getelementptr inbounds i32* %332, i64 %334
  %335 = load i32* %arrayidx372.i137, align 4, !tbaa !3
  %336 = add nsw i64 %indvars.iv1490.i, 2
  %arrayidx379.i = getelementptr inbounds i32* %332, i64 %336
  %337 = load i32* %arrayidx379.i, align 4, !tbaa !3
  br label %if.end384.i

if.end384.i:                                      ; preds = %if.else363.i, %if.then346.i
  %add357.sink.i = phi i32 [ %330, %if.then346.i ], [ %337, %if.else363.i ]
  %idxprom347.pn.i = phi i64 [ %indvars.iv1490.i, %if.then346.i ], [ %idxprom366.i, %if.else363.i ]
  %idxprom352.pn.in.i = phi i32 [ %331, %if.then346.i ], [ %335, %if.else363.i ]
  %idxprom352.pn.i = sext i32 %idxprom352.pn.in.i to i64
  %idxprom358.i = sext i32 %add357.sink.i to i64
  %add.ptr334.sum1313.pn.i = add i64 %idxprom358.i, %idx.ext333.i
  %add.ptr334.sum1312.pn.i = add i64 %idxprom352.pn.i, %idx.ext333.i
  %add.ptr334.sum1311.pn.i = add i64 %idxprom347.pn.i, %idx.ext333.i
  %x21.1.in.i = getelementptr inbounds double* %colX0.0.lcssa.i136, i64 %add.ptr334.sum1313.pn.i
  %x20.1.in.i = getelementptr inbounds double* %colX0.0.lcssa.i136, i64 %idxprom358.i
  %x11.2.in.i = getelementptr inbounds double* %colX0.0.lcssa.i136, i64 %add.ptr334.sum1312.pn.i
  %x10.2.in.i = getelementptr inbounds double* %colX0.0.lcssa.i136, i64 %idxprom352.pn.i
  %x01.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i136, i64 %add.ptr334.sum1311.pn.i
  %x00.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i136, i64 %idxprom347.pn.i
  %x21.1.i = load double* %x21.1.in.i, align 8
  %x20.1.i = load double* %x20.1.in.i, align 8
  %x11.2.i = load double* %x11.2.in.i, align 8
  %x10.2.i = load double* %x10.2.in.i, align 8
  %x01.3.i = load double* %x01.3.in.i, align 8
  %x00.3.i = load double* %x00.3.in.i, align 8
  br i1 %cmp385.i138, label %for.cond387.preheader.i, label %for.cond416.preheader.i

for.cond387.preheader.i:                          ; preds = %if.end384.i
  br i1 %cmp3881387.i, label %for.body389.i, label %if.end446.i

for.cond416.preheader.i:                          ; preds = %if.end384.i
  br i1 %cmp3881387.i, label %for.body418.lr.ph.i, label %if.end446.i

for.body418.lr.ph.i:                              ; preds = %for.cond416.preheader.i
  %338 = load i32** %rowindAT.i97, align 8, !tbaa !0
  br label %for.body418.i

for.body389.i:                                    ; preds = %for.cond387.preheader.i, %for.body389.i
  %indvars.iv1486.i = phi i64 [ %indvars.iv.next1487.i, %for.body389.i ], [ 0, %for.cond387.preheader.i ]
  %arrayidx391.i = getelementptr inbounds double* %colAT0.11391.i, i64 %indvars.iv1486.i
  %339 = load double* %arrayidx391.i, align 8, !tbaa !4
  %add.ptr342.sum1308.i = add i64 %indvars.iv1486.i, %idx.ext341.i
  %arrayidx393.i = getelementptr inbounds double* %colAT0.11391.i, i64 %add.ptr342.sum1308.i
  %340 = load double* %arrayidx393.i, align 8, !tbaa !4
  %add.ptr344.sum1309.i = add i64 %indvars.iv1486.i, %add.ptr342.sum.i
  %arrayidx395.i = getelementptr inbounds double* %colAT0.11391.i, i64 %add.ptr344.sum1309.i
  %341 = load double* %arrayidx395.i, align 8, !tbaa !4
  %mul396.i = fmul double %x00.3.i, %339
  %mul397.i = fmul double %x10.2.i, %340
  %add398.i = fadd double %mul396.i, %mul397.i
  %mul399.i = fmul double %x20.1.i, %341
  %add400.i = fadd double %add398.i, %mul399.i
  %arrayidx402.i = getelementptr inbounds double* %colY0.0.lcssa.i135, i64 %indvars.iv1486.i
  %342 = load double* %arrayidx402.i, align 8, !tbaa !4
  %sub403.i = fsub double %342, %add400.i
  store double %sub403.i, double* %arrayidx402.i, align 8, !tbaa !4
  %mul404.i = fmul double %x01.3.i, %339
  %mul405.i = fmul double %x11.2.i, %340
  %add406.i = fadd double %mul404.i, %mul405.i
  %mul407.i = fmul double %x21.1.i, %341
  %add408.i = fadd double %add406.i, %mul407.i
  %add.ptr336.sum1310.i = add i64 %indvars.iv1486.i, %idx.ext335.i
  %arrayidx410.i = getelementptr inbounds double* %colY0.0.lcssa.i135, i64 %add.ptr336.sum1310.i
  %343 = load double* %arrayidx410.i, align 8, !tbaa !4
  %sub411.i = fsub double %343, %add408.i
  store double %sub411.i, double* %arrayidx410.i, align 8, !tbaa !4
  %indvars.iv.next1487.i = add i64 %indvars.iv1486.i, 1
  %lftr.wideiv1185 = trunc i64 %indvars.iv.next1487.i to i32
  %exitcond1186 = icmp eq i32 %lftr.wideiv1185, %325
  br i1 %exitcond1186, label %if.end446.i, label %for.body389.i

for.body418.i:                                    ; preds = %for.body418.i, %for.body418.lr.ph.i
  %indvars.iv1484.i = phi i64 [ 0, %for.body418.lr.ph.i ], [ %indvars.iv.next1485.i, %for.body418.i ]
  %arrayidx420.i139 = getelementptr inbounds double* %colAT0.11391.i, i64 %indvars.iv1484.i
  %344 = load double* %arrayidx420.i139, align 8, !tbaa !4
  %add.ptr342.sum1305.i = add i64 %indvars.iv1484.i, %idx.ext341.i
  %arrayidx422.i140 = getelementptr inbounds double* %colAT0.11391.i, i64 %add.ptr342.sum1305.i
  %345 = load double* %arrayidx422.i140, align 8, !tbaa !4
  %add.ptr344.sum1306.i = add i64 %indvars.iv1484.i, %add.ptr342.sum.i
  %arrayidx424.i141 = getelementptr inbounds double* %colAT0.11391.i, i64 %add.ptr344.sum1306.i
  %346 = load double* %arrayidx424.i141, align 8, !tbaa !4
  %arrayidx426.i = getelementptr inbounds i32* %338, i64 %indvars.iv1484.i
  %347 = load i32* %arrayidx426.i, align 4, !tbaa !3
  %mul427.i142 = fmul double %x00.3.i, %344
  %mul428.i = fmul double %x10.2.i, %345
  %add429.i = fadd double %mul427.i142, %mul428.i
  %mul430.i = fmul double %x20.1.i, %346
  %add431.i = fadd double %add429.i, %mul430.i
  %idxprom432.i = sext i32 %347 to i64
  %arrayidx433.i = getelementptr inbounds double* %colY0.0.lcssa.i135, i64 %idxprom432.i
  %348 = load double* %arrayidx433.i, align 8, !tbaa !4
  %sub434.i = fsub double %348, %add431.i
  store double %sub434.i, double* %arrayidx433.i, align 8, !tbaa !4
  %mul435.i143 = fmul double %x01.3.i, %344
  %mul436.i = fmul double %x11.2.i, %345
  %add437.i = fadd double %mul435.i143, %mul436.i
  %mul438.i = fmul double %x21.1.i, %346
  %add439.i = fadd double %add437.i, %mul438.i
  %add.ptr336.sum1307.i = add i64 %idxprom432.i, %idx.ext335.i
  %arrayidx441.i = getelementptr inbounds double* %colY0.0.lcssa.i135, i64 %add.ptr336.sum1307.i
  %349 = load double* %arrayidx441.i, align 8, !tbaa !4
  %sub442.i = fsub double %349, %add439.i
  store double %sub442.i, double* %arrayidx441.i, align 8, !tbaa !4
  %indvars.iv.next1485.i = add i64 %indvars.iv1484.i, 1
  %lftr.wideiv1183 = trunc i64 %indvars.iv.next1485.i to i32
  %exitcond1184 = icmp eq i32 %lftr.wideiv1183, %.pre.i
  br i1 %exitcond1184, label %if.end446.i, label %for.body418.i

if.end446.i:                                      ; preds = %for.body389.i, %for.body418.i, %for.cond416.preheader.i, %for.cond387.preheader.i
  %add.ptr448.i = getelementptr inbounds double* %colAT0.11391.i, i64 %add.ptr344.sum.i
  %indvars.iv.next1491.i = add i64 %indvars.iv1490.i, 3
  %add450.i = add nsw i32 %icolAT.11395.i, 3
  %350 = trunc i64 %indvars.iv.next1491.i to i32
  %cmp339.i = icmp slt i32 %350, %sub3381389.i
  br i1 %cmp339.i, label %for.body340.i, label %for.end451.i

for.end451.i:                                     ; preds = %if.end446.i, %if.then332.i
  %icolAT.1.lcssa.i = phi i32 [ 0, %if.then332.i ], [ %add450.i, %if.end446.i ]
  %colAT0.1.lcssa.i = phi double* [ %326, %if.then332.i ], [ %add.ptr448.i, %if.end446.i ]
  %cmp453.i = icmp eq i32 %icolAT.1.lcssa.i, %sub3381389.i
  br i1 %cmp453.i, label %if.then454.i, label %if.else534.i

if.then454.i:                                     ; preds = %for.end451.i
  %351 = load i32* %nrowAT.i93, align 4, !tbaa !3
  %idx.ext455.i = sext i32 %351 to i64
  %cmp457.i = icmp eq i32 %327, %324
  %idxprom459.i = sext i32 %sub3381389.i to i64
  br i1 %cmp457.i, label %if.then458.i, label %if.else469.i

if.then458.i:                                     ; preds = %if.then454.i
  %add463.i144 = add nsw i32 %324, -1
  br label %if.end483.i

if.else469.i:                                     ; preds = %if.then454.i
  %352 = load i32** %colindAT.i96, align 8, !tbaa !0
  %arrayidx471.i = getelementptr inbounds i32* %352, i64 %idxprom459.i
  %353 = load i32* %arrayidx471.i, align 4, !tbaa !3
  %idxprom472.i = sext i32 %353 to i64
  %add476.i = add nsw i32 %327, -1
  %idxprom477.i = sext i32 %add476.i to i64
  %arrayidx478.i145 = getelementptr inbounds i32* %352, i64 %idxprom477.i
  %354 = load i32* %arrayidx478.i145, align 4, !tbaa !3
  br label %if.end483.i

if.end483.i:                                      ; preds = %if.else469.i, %if.then458.i
  %add463.sink.i = phi i32 [ %add463.i144, %if.then458.i ], [ %354, %if.else469.i ]
  %idxprom459.pn.i = phi i64 [ %idxprom459.i, %if.then458.i ], [ %idxprom472.i, %if.else469.i ]
  %idxprom464.i = sext i32 %add463.sink.i to i64
  %add.ptr334.sum1301.pn.i = add i64 %idxprom464.i, %idx.ext333.i
  %add.ptr334.sum1300.pn.i = add i64 %idxprom459.pn.i, %idx.ext333.i
  %x11.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i136, i64 %add.ptr334.sum1301.pn.i
  %x10.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i136, i64 %idxprom464.i
  %x01.4.in.i = getelementptr inbounds double* %colX0.0.lcssa.i136, i64 %add.ptr334.sum1300.pn.i
  %x00.4.in.i = getelementptr inbounds double* %colX0.0.lcssa.i136, i64 %idxprom459.pn.i
  %x11.3.i = load double* %x11.3.in.i, align 8
  %x10.3.i = load double* %x10.3.in.i, align 8
  %x01.4.i = load double* %x01.4.in.i, align 8
  %x00.4.i = load double* %x00.4.in.i, align 8
  %cmp484.i = icmp eq i32 %325, %351
  br i1 %cmp484.i, label %for.cond486.preheader.i, label %for.cond509.preheader.i

for.cond509.preheader.i:                          ; preds = %if.end483.i
  %cmp5101376.i = icmp sgt i32 %351, 0
  br i1 %cmp5101376.i, label %for.body511.lr.ph.i, label %sw.epilog33

for.body511.lr.ph.i:                              ; preds = %for.cond509.preheader.i
  %355 = load i32** %rowindAT.i97, align 8, !tbaa !0
  br label %for.body511.i

for.cond486.preheader.i:                          ; preds = %if.end483.i
  %cmp4871373.i = icmp sgt i32 %325, 0
  br i1 %cmp4871373.i, label %for.body488.i, label %sw.epilog33

for.body488.i:                                    ; preds = %for.cond486.preheader.i, %for.body488.i
  %indvars.iv.i146 = phi i64 [ %indvars.iv.next.i150, %for.body488.i ], [ 0, %for.cond486.preheader.i ]
  %arrayidx490.i147 = getelementptr inbounds double* %colAT0.1.lcssa.i, i64 %indvars.iv.i146
  %356 = load double* %arrayidx490.i147, align 8, !tbaa !4
  %add.ptr456.sum1298.i = add i64 %indvars.iv.i146, %idx.ext455.i
  %arrayidx492.i = getelementptr inbounds double* %colAT0.1.lcssa.i, i64 %add.ptr456.sum1298.i
  %357 = load double* %arrayidx492.i, align 8, !tbaa !4
  %mul493.i = fmul double %x00.4.i, %356
  %mul494.i = fmul double %x10.3.i, %357
  %add495.i = fadd double %mul493.i, %mul494.i
  %arrayidx497.i = getelementptr inbounds double* %colY0.0.lcssa.i135, i64 %indvars.iv.i146
  %358 = load double* %arrayidx497.i, align 8, !tbaa !4
  %sub498.i = fsub double %358, %add495.i
  store double %sub498.i, double* %arrayidx497.i, align 8, !tbaa !4
  %mul499.i = fmul double %x01.4.i, %356
  %mul500.i = fmul double %x11.3.i, %357
  %add501.i = fadd double %mul499.i, %mul500.i
  %add.ptr336.sum1299.i = add i64 %indvars.iv.i146, %idx.ext335.i
  %arrayidx503.i148 = getelementptr inbounds double* %colY0.0.lcssa.i135, i64 %add.ptr336.sum1299.i
  %359 = load double* %arrayidx503.i148, align 8, !tbaa !4
  %sub504.i149 = fsub double %359, %add501.i
  store double %sub504.i149, double* %arrayidx503.i148, align 8, !tbaa !4
  %indvars.iv.next.i150 = add i64 %indvars.iv.i146, 1
  %lftr.wideiv1175 = trunc i64 %indvars.iv.next.i150 to i32
  %exitcond1176 = icmp eq i32 %lftr.wideiv1175, %325
  br i1 %exitcond1176, label %sw.epilog33, label %for.body488.i

for.body511.i:                                    ; preds = %for.body511.i, %for.body511.lr.ph.i
  %indvars.iv1478.i = phi i64 [ 0, %for.body511.lr.ph.i ], [ %indvars.iv.next1479.i, %for.body511.i ]
  %arrayidx513.i = getelementptr inbounds double* %colAT0.1.lcssa.i, i64 %indvars.iv1478.i
  %360 = load double* %arrayidx513.i, align 8, !tbaa !4
  %add.ptr456.sum.i = add i64 %indvars.iv1478.i, %idx.ext455.i
  %arrayidx515.i = getelementptr inbounds double* %colAT0.1.lcssa.i, i64 %add.ptr456.sum.i
  %361 = load double* %arrayidx515.i, align 8, !tbaa !4
  %arrayidx517.i = getelementptr inbounds i32* %355, i64 %indvars.iv1478.i
  %362 = load i32* %arrayidx517.i, align 4, !tbaa !3
  %mul518.i = fmul double %x00.4.i, %360
  %mul519.i = fmul double %x10.3.i, %361
  %add520.i = fadd double %mul518.i, %mul519.i
  %idxprom521.i = sext i32 %362 to i64
  %arrayidx522.i = getelementptr inbounds double* %colY0.0.lcssa.i135, i64 %idxprom521.i
  %363 = load double* %arrayidx522.i, align 8, !tbaa !4
  %sub523.i = fsub double %363, %add520.i
  store double %sub523.i, double* %arrayidx522.i, align 8, !tbaa !4
  %mul524.i = fmul double %x01.4.i, %360
  %mul525.i = fmul double %x11.3.i, %361
  %add526.i = fadd double %mul524.i, %mul525.i
  %add.ptr336.sum1297.i = add i64 %idxprom521.i, %idx.ext335.i
  %arrayidx528.i = getelementptr inbounds double* %colY0.0.lcssa.i135, i64 %add.ptr336.sum1297.i
  %364 = load double* %arrayidx528.i, align 8, !tbaa !4
  %sub529.i = fsub double %364, %add526.i
  store double %sub529.i, double* %arrayidx528.i, align 8, !tbaa !4
  %indvars.iv.next1479.i = add i64 %indvars.iv1478.i, 1
  %lftr.wideiv1177 = trunc i64 %indvars.iv.next1479.i to i32
  %exitcond1178 = icmp eq i32 %lftr.wideiv1177, %351
  br i1 %exitcond1178, label %sw.epilog33, label %for.body511.i

if.else534.i:                                     ; preds = %for.end451.i
  %sub535.i = add nsw i32 %327, -1
  %cmp536.i = icmp eq i32 %icolAT.1.lcssa.i, %sub535.i
  br i1 %cmp536.i, label %if.then537.i, label %sw.epilog33

if.then537.i:                                     ; preds = %if.else534.i
  %cmp538.i = icmp eq i32 %327, %324
  %idxprom540.i = sext i32 %icolAT.1.lcssa.i to i64
  br i1 %cmp538.i, label %if.end551.i, label %if.else544.i

if.else544.i:                                     ; preds = %if.then537.i
  %365 = load i32** %colindAT.i96, align 8, !tbaa !0
  %arrayidx546.i = getelementptr inbounds i32* %365, i64 %idxprom540.i
  %366 = load i32* %arrayidx546.i, align 4, !tbaa !3
  %idxprom547.i = sext i32 %366 to i64
  br label %if.end551.i

if.end551.i:                                      ; preds = %if.then537.i, %if.else544.i
  %idxprom540.pn.i = phi i64 [ %idxprom547.i, %if.else544.i ], [ %idxprom540.i, %if.then537.i ]
  %add.ptr334.sum1294.pn.i = add i64 %idxprom540.pn.i, %idx.ext333.i
  %x01.5.in.i = getelementptr inbounds double* %colX0.0.lcssa.i136, i64 %add.ptr334.sum1294.pn.i
  %x00.5.in.i = getelementptr inbounds double* %colX0.0.lcssa.i136, i64 %idxprom540.pn.i
  %x01.5.i = load double* %x01.5.in.i, align 8
  %x00.5.i = load double* %x00.5.in.i, align 8
  %367 = load i32* %nrowAT.i93, align 4, !tbaa !3
  %cmp552.i = icmp eq i32 %325, %367
  br i1 %cmp552.i, label %for.cond554.preheader.i, label %for.cond571.preheader.i

for.cond571.preheader.i:                          ; preds = %if.end551.i
  %cmp5721382.i = icmp sgt i32 %367, 0
  br i1 %cmp5721382.i, label %for.body573.lr.ph.i, label %sw.epilog33

for.body573.lr.ph.i:                              ; preds = %for.cond571.preheader.i
  %368 = load i32** %rowindAT.i97, align 8, !tbaa !0
  br label %for.body573.i

for.cond554.preheader.i:                          ; preds = %if.end551.i
  %cmp5551379.i = icmp sgt i32 %325, 0
  br i1 %cmp5551379.i, label %for.body556.i, label %sw.epilog33

for.body556.i:                                    ; preds = %for.cond554.preheader.i, %for.body556.i
  %indvars.iv1480.i = phi i64 [ %indvars.iv.next1481.i, %for.body556.i ], [ 0, %for.cond554.preheader.i ]
  %arrayidx558.i = getelementptr inbounds double* %colAT0.1.lcssa.i, i64 %indvars.iv1480.i
  %369 = load double* %arrayidx558.i, align 8, !tbaa !4
  %mul559.i151 = fmul double %x00.5.i, %369
  %arrayidx561.i = getelementptr inbounds double* %colY0.0.lcssa.i135, i64 %indvars.iv1480.i
  %370 = load double* %arrayidx561.i, align 8, !tbaa !4
  %sub562.i = fsub double %370, %mul559.i151
  store double %sub562.i, double* %arrayidx561.i, align 8, !tbaa !4
  %mul563.i = fmul double %x01.5.i, %369
  %add.ptr336.sum1293.i = add i64 %indvars.iv1480.i, %idx.ext335.i
  %arrayidx565.i = getelementptr inbounds double* %colY0.0.lcssa.i135, i64 %add.ptr336.sum1293.i
  %371 = load double* %arrayidx565.i, align 8, !tbaa !4
  %sub566.i = fsub double %371, %mul563.i
  store double %sub566.i, double* %arrayidx565.i, align 8, !tbaa !4
  %indvars.iv.next1481.i = add i64 %indvars.iv1480.i, 1
  %lftr.wideiv1179 = trunc i64 %indvars.iv.next1481.i to i32
  %exitcond1180 = icmp eq i32 %lftr.wideiv1179, %325
  br i1 %exitcond1180, label %sw.epilog33, label %for.body556.i

for.body573.i:                                    ; preds = %for.body573.i, %for.body573.lr.ph.i
  %indvars.iv1482.i = phi i64 [ 0, %for.body573.lr.ph.i ], [ %indvars.iv.next1483.i, %for.body573.i ]
  %arrayidx575.i152 = getelementptr inbounds double* %colAT0.1.lcssa.i, i64 %indvars.iv1482.i
  %372 = load double* %arrayidx575.i152, align 8, !tbaa !4
  %arrayidx577.i153 = getelementptr inbounds i32* %368, i64 %indvars.iv1482.i
  %373 = load i32* %arrayidx577.i153, align 4, !tbaa !3
  %mul578.i = fmul double %x00.5.i, %372
  %idxprom579.i = sext i32 %373 to i64
  %arrayidx580.i = getelementptr inbounds double* %colY0.0.lcssa.i135, i64 %idxprom579.i
  %374 = load double* %arrayidx580.i, align 8, !tbaa !4
  %sub581.i = fsub double %374, %mul578.i
  store double %sub581.i, double* %arrayidx580.i, align 8, !tbaa !4
  %mul582.i154 = fmul double %x01.5.i, %372
  %add.ptr336.sum.i = add i64 %idxprom579.i, %idx.ext335.i
  %arrayidx584.i = getelementptr inbounds double* %colY0.0.lcssa.i135, i64 %add.ptr336.sum.i
  %375 = load double* %arrayidx584.i, align 8, !tbaa !4
  %sub585.i = fsub double %375, %mul582.i154
  store double %sub585.i, double* %arrayidx584.i, align 8, !tbaa !4
  %indvars.iv.next1483.i = add i64 %indvars.iv1482.i, 1
  %lftr.wideiv1181 = trunc i64 %indvars.iv.next1483.i to i32
  %exitcond1182 = icmp eq i32 %lftr.wideiv1181, %367
  br i1 %exitcond1182, label %sw.epilog33, label %for.body573.i

if.else592.i:                                     ; preds = %for.end329.i
  %sub593.i = add nsw i32 %269, -1
  %cmp594.i = icmp eq i32 %jcolX.0.lcssa.i134, %sub593.i
  br i1 %cmp594.i, label %if.then595.i, label %sw.epilog33

if.then595.i:                                     ; preds = %if.else592.i
  %376 = load double** %entA.i85, align 8, !tbaa !0
  %377 = load i32* %ncolAT.i90, align 4, !tbaa !3
  %sub5971417.i = add nsw i32 %377, -2
  %cmp5981418.i = icmp sgt i32 %sub5971417.i, 0
  br i1 %cmp5981418.i, label %for.body599.lr.ph.i, label %for.end680.i

for.body599.lr.ph.i:                              ; preds = %if.then595.i
  %.pre1538.i = load i32* %nrowAT.i93, align 4, !tbaa !3
  %.pre1539.i = load i32* %nrowX.i94, align 4, !tbaa !3
  %idx.ext600.i = sext i32 %.pre1538.i to i64
  %add.ptr601.sum.i = shl nsw i64 %idx.ext600.i, 1
  %cmp604.i = icmp eq i32 %377, %.pre1539.i
  %cmp6331414.i = icmp sgt i32 %.pre1538.i, 0
  %add.ptr603.sum.i = add i64 %add.ptr601.sum.i, %idx.ext600.i
  br label %for.body599.i

for.body599.i:                                    ; preds = %if.end675.i, %for.body599.lr.ph.i
  %indvars.iv1510.i = phi i64 [ 0, %for.body599.lr.ph.i ], [ %indvars.iv.next1511.i, %if.end675.i ]
  %icolAT.21423.i = phi i32 [ 0, %for.body599.lr.ph.i ], [ %add679.i, %if.end675.i ]
  %colAT0.21419.i = phi double* [ %376, %for.body599.lr.ph.i ], [ %add.ptr677.i, %if.end675.i ]
  br i1 %cmp604.i, label %if.then605.i, label %if.else614.i

if.then605.i:                                     ; preds = %for.body599.i
  %378 = add nsw i64 %indvars.iv1510.i, 1
  %379 = add nsw i64 %indvars.iv1510.i, 2
  %380 = trunc i64 %379 to i32
  %381 = trunc i64 %378 to i32
  br label %if.end629.i

if.else614.i:                                     ; preds = %for.body599.i
  %382 = load i32** %colindAT.i96, align 8, !tbaa !0
  %arrayidx616.i = getelementptr inbounds i32* %382, i64 %indvars.iv1510.i
  %383 = load i32* %arrayidx616.i, align 4, !tbaa !3
  %idxprom617.i = sext i32 %383 to i64
  %384 = add nsw i64 %indvars.iv1510.i, 1
  %arrayidx621.i155 = getelementptr inbounds i32* %382, i64 %384
  %385 = load i32* %arrayidx621.i155, align 4, !tbaa !3
  %386 = add nsw i64 %indvars.iv1510.i, 2
  %arrayidx626.i = getelementptr inbounds i32* %382, i64 %386
  %387 = load i32* %arrayidx626.i, align 4, !tbaa !3
  br label %if.end629.i

if.end629.i:                                      ; preds = %if.else614.i, %if.then605.i
  %idxprom606.pn.i = phi i64 [ %indvars.iv1510.i, %if.then605.i ], [ %idxprom617.i, %if.else614.i ]
  %idxprom609.pn.in.i = phi i32 [ %381, %if.then605.i ], [ %385, %if.else614.i ]
  %idxprom612.pn.in.i = phi i32 [ %380, %if.then605.i ], [ %387, %if.else614.i ]
  %idxprom612.pn.i = sext i32 %idxprom612.pn.in.i to i64
  %idxprom609.pn.i = sext i32 %idxprom609.pn.in.i to i64
  %x20.2.in.i = getelementptr inbounds double* %colX0.0.lcssa.i136, i64 %idxprom612.pn.i
  %x10.4.in.i = getelementptr inbounds double* %colX0.0.lcssa.i136, i64 %idxprom609.pn.i
  %x00.6.in.i = getelementptr inbounds double* %colX0.0.lcssa.i136, i64 %idxprom606.pn.i
  %x20.2.i = load double* %x20.2.in.i, align 8
  %x10.4.i = load double* %x10.4.in.i, align 8
  %x00.6.i = load double* %x00.6.in.i, align 8
  %388 = load i32* %nrowY.i95, align 4, !tbaa !3
  %cmp630.i = icmp eq i32 %388, %.pre1538.i
  br i1 %cmp630.i, label %for.cond632.preheader.i, label %for.cond653.preheader.i

for.cond632.preheader.i:                          ; preds = %if.end629.i
  br i1 %cmp6331414.i, label %for.body634.i, label %if.end675.i

for.cond653.preheader.i:                          ; preds = %if.end629.i
  br i1 %cmp6331414.i, label %for.body655.lr.ph.i, label %if.end675.i

for.body655.lr.ph.i:                              ; preds = %for.cond653.preheader.i
  %389 = load i32** %rowindAT.i97, align 8, !tbaa !0
  br label %for.body655.i

for.body634.i:                                    ; preds = %for.cond632.preheader.i, %for.body634.i
  %indvars.iv1506.i = phi i64 [ %indvars.iv.next1507.i, %for.body634.i ], [ 0, %for.cond632.preheader.i ]
  %arrayidx636.i = getelementptr inbounds double* %colAT0.21419.i, i64 %indvars.iv1506.i
  %390 = load double* %arrayidx636.i, align 8, !tbaa !4
  %add.ptr601.sum1291.i = add i64 %indvars.iv1506.i, %idx.ext600.i
  %arrayidx638.i = getelementptr inbounds double* %colAT0.21419.i, i64 %add.ptr601.sum1291.i
  %391 = load double* %arrayidx638.i, align 8, !tbaa !4
  %add.ptr603.sum1292.i = add i64 %indvars.iv1506.i, %add.ptr601.sum.i
  %arrayidx640.i = getelementptr inbounds double* %colAT0.21419.i, i64 %add.ptr603.sum1292.i
  %392 = load double* %arrayidx640.i, align 8, !tbaa !4
  %mul641.i = fmul double %x00.6.i, %390
  %mul642.i = fmul double %x10.4.i, %391
  %add643.i = fadd double %mul641.i, %mul642.i
  %mul644.i = fmul double %x20.2.i, %392
  %add645.i = fadd double %add643.i, %mul644.i
  %arrayidx647.i = getelementptr inbounds double* %colY0.0.lcssa.i135, i64 %indvars.iv1506.i
  %393 = load double* %arrayidx647.i, align 8, !tbaa !4
  %sub648.i = fsub double %393, %add645.i
  store double %sub648.i, double* %arrayidx647.i, align 8, !tbaa !4
  %indvars.iv.next1507.i = add i64 %indvars.iv1506.i, 1
  %lftr.wideiv1197 = trunc i64 %indvars.iv.next1507.i to i32
  %exitcond1198 = icmp eq i32 %lftr.wideiv1197, %.pre1538.i
  br i1 %exitcond1198, label %if.end675.i, label %for.body634.i

for.body655.i:                                    ; preds = %for.body655.i, %for.body655.lr.ph.i
  %indvars.iv1504.i = phi i64 [ 0, %for.body655.lr.ph.i ], [ %indvars.iv.next1505.i, %for.body655.i ]
  %arrayidx657.i = getelementptr inbounds double* %colAT0.21419.i, i64 %indvars.iv1504.i
  %394 = load double* %arrayidx657.i, align 8, !tbaa !4
  %add.ptr601.sum1289.i = add i64 %indvars.iv1504.i, %idx.ext600.i
  %arrayidx659.i156 = getelementptr inbounds double* %colAT0.21419.i, i64 %add.ptr601.sum1289.i
  %395 = load double* %arrayidx659.i156, align 8, !tbaa !4
  %add.ptr603.sum1290.i = add i64 %indvars.iv1504.i, %add.ptr601.sum.i
  %arrayidx661.i157 = getelementptr inbounds double* %colAT0.21419.i, i64 %add.ptr603.sum1290.i
  %396 = load double* %arrayidx661.i157, align 8, !tbaa !4
  %arrayidx663.i158 = getelementptr inbounds i32* %389, i64 %indvars.iv1504.i
  %397 = load i32* %arrayidx663.i158, align 4, !tbaa !3
  %mul664.i = fmul double %x00.6.i, %394
  %mul665.i = fmul double %x10.4.i, %395
  %add666.i = fadd double %mul664.i, %mul665.i
  %mul667.i = fmul double %x20.2.i, %396
  %add668.i = fadd double %add666.i, %mul667.i
  %idxprom669.i = sext i32 %397 to i64
  %arrayidx670.i = getelementptr inbounds double* %colY0.0.lcssa.i135, i64 %idxprom669.i
  %398 = load double* %arrayidx670.i, align 8, !tbaa !4
  %sub671.i = fsub double %398, %add668.i
  store double %sub671.i, double* %arrayidx670.i, align 8, !tbaa !4
  %indvars.iv.next1505.i = add i64 %indvars.iv1504.i, 1
  %lftr.wideiv1195 = trunc i64 %indvars.iv.next1505.i to i32
  %exitcond1196 = icmp eq i32 %lftr.wideiv1195, %.pre1538.i
  br i1 %exitcond1196, label %if.end675.i, label %for.body655.i

if.end675.i:                                      ; preds = %for.body634.i, %for.body655.i, %for.cond653.preheader.i, %for.cond632.preheader.i
  %add.ptr677.i = getelementptr inbounds double* %colAT0.21419.i, i64 %add.ptr603.sum.i
  %indvars.iv.next1511.i = add i64 %indvars.iv1510.i, 3
  %add679.i = add nsw i32 %icolAT.21423.i, 3
  %399 = trunc i64 %indvars.iv.next1511.i to i32
  %cmp598.i = icmp slt i32 %399, %sub5971417.i
  br i1 %cmp598.i, label %for.body599.i, label %for.end680.i

for.end680.i:                                     ; preds = %if.end675.i, %if.then595.i
  %icolAT.2.lcssa.i = phi i32 [ 0, %if.then595.i ], [ %add679.i, %if.end675.i ]
  %colAT0.2.lcssa.i = phi double* [ %376, %if.then595.i ], [ %add.ptr677.i, %if.end675.i ]
  %cmp682.i = icmp eq i32 %icolAT.2.lcssa.i, %sub5971417.i
  br i1 %cmp682.i, label %if.then683.i, label %if.else742.i

if.then683.i:                                     ; preds = %for.end680.i
  %400 = load i32* %nrowAT.i93, align 4, !tbaa !3
  %idx.ext684.i = sext i32 %400 to i64
  %401 = load i32* %nrowX.i94, align 4, !tbaa !3
  %cmp686.i = icmp eq i32 %377, %401
  %idxprom688.i = sext i32 %sub5971417.i to i64
  br i1 %cmp686.i, label %if.then687.i, label %if.else693.i

if.then687.i:                                     ; preds = %if.then683.i
  %add690.i = add nsw i32 %377, -1
  br label %if.end703.i

if.else693.i:                                     ; preds = %if.then683.i
  %402 = load i32** %colindAT.i96, align 8, !tbaa !0
  %arrayidx695.i = getelementptr inbounds i32* %402, i64 %idxprom688.i
  %403 = load i32* %arrayidx695.i, align 4, !tbaa !3
  %idxprom696.i = sext i32 %403 to i64
  %add698.i = add nsw i32 %377, -1
  %idxprom699.i = sext i32 %add698.i to i64
  %arrayidx700.i = getelementptr inbounds i32* %402, i64 %idxprom699.i
  %404 = load i32* %arrayidx700.i, align 4, !tbaa !3
  br label %if.end703.i

if.end703.i:                                      ; preds = %if.else693.i, %if.then687.i
  %idxprom688.pn.i = phi i64 [ %idxprom688.i, %if.then687.i ], [ %idxprom696.i, %if.else693.i ]
  %idxprom691.pn.in.i = phi i32 [ %add690.i, %if.then687.i ], [ %404, %if.else693.i ]
  %idxprom691.pn.i = sext i32 %idxprom691.pn.in.i to i64
  %x10.5.in.i = getelementptr inbounds double* %colX0.0.lcssa.i136, i64 %idxprom691.pn.i
  %x00.7.in.i = getelementptr inbounds double* %colX0.0.lcssa.i136, i64 %idxprom688.pn.i
  %x10.5.i = load double* %x10.5.in.i, align 8
  %x00.7.i = load double* %x00.7.in.i, align 8
  %405 = load i32* %nrowY.i95, align 4, !tbaa !3
  %cmp704.i = icmp eq i32 %405, %400
  %cmp7071400.i = icmp sgt i32 %400, 0
  br i1 %cmp704.i, label %for.cond706.preheader.i, label %for.cond723.preheader.i

for.cond723.preheader.i:                          ; preds = %if.end703.i
  br i1 %cmp7071400.i, label %for.body725.lr.ph.i, label %sw.epilog33

for.body725.lr.ph.i:                              ; preds = %for.cond723.preheader.i
  %406 = load i32** %rowindAT.i97, align 8, !tbaa !0
  br label %for.body725.i

for.cond706.preheader.i:                          ; preds = %if.end703.i
  br i1 %cmp7071400.i, label %for.body708.i, label %sw.epilog33

for.body708.i:                                    ; preds = %for.cond706.preheader.i, %for.body708.i
  %indvars.iv1496.i = phi i64 [ %indvars.iv.next1497.i, %for.body708.i ], [ 0, %for.cond706.preheader.i ]
  %arrayidx710.i = getelementptr inbounds double* %colAT0.2.lcssa.i, i64 %indvars.iv1496.i
  %407 = load double* %arrayidx710.i, align 8, !tbaa !4
  %add.ptr685.sum1288.i = add i64 %indvars.iv1496.i, %idx.ext684.i
  %arrayidx712.i = getelementptr inbounds double* %colAT0.2.lcssa.i, i64 %add.ptr685.sum1288.i
  %408 = load double* %arrayidx712.i, align 8, !tbaa !4
  %mul713.i = fmul double %x00.7.i, %407
  %mul714.i = fmul double %x10.5.i, %408
  %add715.i = fadd double %mul713.i, %mul714.i
  %arrayidx717.i = getelementptr inbounds double* %colY0.0.lcssa.i135, i64 %indvars.iv1496.i
  %409 = load double* %arrayidx717.i, align 8, !tbaa !4
  %sub718.i = fsub double %409, %add715.i
  store double %sub718.i, double* %arrayidx717.i, align 8, !tbaa !4
  %indvars.iv.next1497.i = add i64 %indvars.iv1496.i, 1
  %lftr.wideiv1187 = trunc i64 %indvars.iv.next1497.i to i32
  %exitcond1188 = icmp eq i32 %lftr.wideiv1187, %400
  br i1 %exitcond1188, label %sw.epilog33, label %for.body708.i

for.body725.i:                                    ; preds = %for.body725.i, %for.body725.lr.ph.i
  %indvars.iv1498.i = phi i64 [ 0, %for.body725.lr.ph.i ], [ %indvars.iv.next1499.i, %for.body725.i ]
  %arrayidx727.i = getelementptr inbounds double* %colAT0.2.lcssa.i, i64 %indvars.iv1498.i
  %410 = load double* %arrayidx727.i, align 8, !tbaa !4
  %add.ptr685.sum.i = add i64 %indvars.iv1498.i, %idx.ext684.i
  %arrayidx729.i = getelementptr inbounds double* %colAT0.2.lcssa.i, i64 %add.ptr685.sum.i
  %411 = load double* %arrayidx729.i, align 8, !tbaa !4
  %arrayidx731.i = getelementptr inbounds i32* %406, i64 %indvars.iv1498.i
  %412 = load i32* %arrayidx731.i, align 4, !tbaa !3
  %mul732.i = fmul double %x00.7.i, %410
  %mul733.i = fmul double %x10.5.i, %411
  %add734.i = fadd double %mul732.i, %mul733.i
  %idxprom735.i = sext i32 %412 to i64
  %arrayidx736.i = getelementptr inbounds double* %colY0.0.lcssa.i135, i64 %idxprom735.i
  %413 = load double* %arrayidx736.i, align 8, !tbaa !4
  %sub737.i = fsub double %413, %add734.i
  store double %sub737.i, double* %arrayidx736.i, align 8, !tbaa !4
  %indvars.iv.next1499.i = add i64 %indvars.iv1498.i, 1
  %lftr.wideiv1189 = trunc i64 %indvars.iv.next1499.i to i32
  %exitcond1190 = icmp eq i32 %lftr.wideiv1189, %400
  br i1 %exitcond1190, label %sw.epilog33, label %for.body725.i

if.else742.i:                                     ; preds = %for.end680.i
  %sub743.i = add nsw i32 %377, -1
  %cmp744.i = icmp eq i32 %icolAT.2.lcssa.i, %sub743.i
  br i1 %cmp744.i, label %if.then745.i, label %sw.epilog33

if.then745.i:                                     ; preds = %if.else742.i
  %414 = load i32* %nrowX.i94, align 4, !tbaa !3
  %cmp746.i = icmp eq i32 %377, %414
  %idxprom748.i = sext i32 %icolAT.2.lcssa.i to i64
  br i1 %cmp746.i, label %if.end755.i, label %if.else750.i

if.else750.i:                                     ; preds = %if.then745.i
  %415 = load i32** %colindAT.i96, align 8, !tbaa !0
  %arrayidx752.i = getelementptr inbounds i32* %415, i64 %idxprom748.i
  %416 = load i32* %arrayidx752.i, align 4, !tbaa !3
  %idxprom753.i = sext i32 %416 to i64
  br label %if.end755.i

if.end755.i:                                      ; preds = %if.then745.i, %if.else750.i
  %idxprom748.pn.i = phi i64 [ %idxprom753.i, %if.else750.i ], [ %idxprom748.i, %if.then745.i ]
  %x00.8.in.i = getelementptr inbounds double* %colX0.0.lcssa.i136, i64 %idxprom748.pn.i
  %x00.8.i = load double* %x00.8.in.i, align 8
  %417 = load i32* %nrowY.i95, align 4, !tbaa !3
  %418 = load i32* %nrowAT.i93, align 4, !tbaa !3
  %cmp756.i = icmp eq i32 %417, %418
  br i1 %cmp756.i, label %for.cond758.preheader.i, label %for.cond771.preheader.i

for.cond771.preheader.i:                          ; preds = %if.end755.i
  %cmp7721409.i = icmp sgt i32 %418, 0
  br i1 %cmp7721409.i, label %for.body773.lr.ph.i, label %sw.epilog33

for.body773.lr.ph.i:                              ; preds = %for.cond771.preheader.i
  %419 = load i32** %rowindAT.i97, align 8, !tbaa !0
  br label %for.body773.i

for.cond758.preheader.i:                          ; preds = %if.end755.i
  %cmp7591406.i = icmp sgt i32 %417, 0
  br i1 %cmp7591406.i, label %for.body760.i, label %sw.epilog33

for.body760.i:                                    ; preds = %for.cond758.preheader.i, %for.body760.i
  %indvars.iv1500.i = phi i64 [ %indvars.iv.next1501.i, %for.body760.i ], [ 0, %for.cond758.preheader.i ]
  %arrayidx762.i159 = getelementptr inbounds double* %colAT0.2.lcssa.i, i64 %indvars.iv1500.i
  %420 = load double* %arrayidx762.i159, align 8, !tbaa !4
  %mul763.i = fmul double %x00.8.i, %420
  %arrayidx765.i = getelementptr inbounds double* %colY0.0.lcssa.i135, i64 %indvars.iv1500.i
  %421 = load double* %arrayidx765.i, align 8, !tbaa !4
  %sub766.i = fsub double %421, %mul763.i
  store double %sub766.i, double* %arrayidx765.i, align 8, !tbaa !4
  %indvars.iv.next1501.i = add i64 %indvars.iv1500.i, 1
  %lftr.wideiv1191 = trunc i64 %indvars.iv.next1501.i to i32
  %exitcond1192 = icmp eq i32 %lftr.wideiv1191, %417
  br i1 %exitcond1192, label %sw.epilog33, label %for.body760.i

for.body773.i:                                    ; preds = %for.body773.i, %for.body773.lr.ph.i
  %indvars.iv1502.i = phi i64 [ 0, %for.body773.lr.ph.i ], [ %indvars.iv.next1503.i, %for.body773.i ]
  %arrayidx775.i = getelementptr inbounds double* %colAT0.2.lcssa.i, i64 %indvars.iv1502.i
  %422 = load double* %arrayidx775.i, align 8, !tbaa !4
  %arrayidx777.i = getelementptr inbounds i32* %419, i64 %indvars.iv1502.i
  %423 = load i32* %arrayidx777.i, align 4, !tbaa !3
  %mul778.i = fmul double %x00.8.i, %422
  %idxprom779.i = sext i32 %423 to i64
  %arrayidx780.i161 = getelementptr inbounds double* %colY0.0.lcssa.i135, i64 %idxprom779.i
  %424 = load double* %arrayidx780.i161, align 8, !tbaa !4
  %sub781.i = fsub double %424, %mul778.i
  store double %sub781.i, double* %arrayidx780.i161, align 8, !tbaa !4
  %indvars.iv.next1503.i = add i64 %indvars.iv1502.i, 1
  %lftr.wideiv1193 = trunc i64 %indvars.iv.next1503.i to i32
  %exitcond1194 = icmp eq i32 %lftr.wideiv1193, %418
  br i1 %exitcond1194, label %sw.epilog33, label %for.body773.i

sw.bb16:                                          ; preds = %sw.bb
  %425 = bitcast double** %entA.i162 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %425) #4
  %426 = bitcast double** %entX.i163 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %426) #4
  %427 = bitcast double** %entY.i164 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %427) #4
  %428 = bitcast i32* %inc1.i165 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %428) #4
  %429 = bitcast i32* %inc2.i166 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %429) #4
  %430 = bitcast i32* %ncolAT.i167 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %430) #4
  %431 = bitcast i32* %ncolX.i168 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %431) #4
  %432 = bitcast i32* %ncolY.i169 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %432) #4
  %433 = bitcast i32* %nentA.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %433) #4
  %434 = bitcast i32* %nrowAT.i170 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %434) #4
  %435 = bitcast i32* %nrowX.i171 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %435) #4
  %436 = bitcast i32* %nrowY.i172 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %436) #4
  %437 = bitcast i32** %colindAT.i173 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %437) #4
  %438 = bitcast i32** %indices.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %438) #4
  %439 = bitcast i32** %rowindAT.i174 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %439) #4
  %440 = bitcast i32** %sizes.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %440) #4
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxY, i32* %nrowY.i172, i32* %ncolY.i169, i32* %inc1.i165, i32* %inc2.i166, double** %entY.i164) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxX, i32* %nrowX.i171, i32* %ncolX.i168, i32* %inc1.i165, i32* %inc2.i166, double** %entX.i163) #5
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtxA, i32* %ncolAT.i167, i32* %nentA.i, i32** %sizes.i, i32** %indices.i, double** %entA.i162) #5
  %nrow.i = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 4
  %441 = load i32* %nrow.i, align 4, !tbaa !3
  store i32 %441, i32* %ncolAT.i167, align 4, !tbaa !3
  %442 = load i32* %nrowX.i171, align 4, !tbaa !3
  %cmp.i175 = icmp eq i32 %441, %442
  br i1 %cmp.i175, label %if.else.i177, label %if.then.i176

if.then.i176:                                     ; preds = %sw.bb16
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtxA, i32* %ncolAT.i167, i32** %colindAT.i173) #5
  br label %if.end.i179

if.else.i177:                                     ; preds = %sw.bb16
  store i32* null, i32** %colindAT.i173, align 8, !tbaa !0
  br label %if.end.i179

if.end.i179:                                      ; preds = %if.else.i177, %if.then.i176
  %ncol.i = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 5
  %443 = load i32* %ncol.i, align 4, !tbaa !3
  store i32 %443, i32* %nrowAT.i170, align 4, !tbaa !3
  %444 = load i32* %nrowY.i172, align 4, !tbaa !3
  %cmp1.i178 = icmp eq i32 %443, %444
  br i1 %cmp1.i178, label %if.else3.i181, label %if.then2.i180

if.then2.i180:                                    ; preds = %if.end.i179
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtxA, i32* %nrowAT.i170, i32** %rowindAT.i174) #5
  br label %if.end4.i183

if.else3.i181:                                    ; preds = %if.end.i179
  store i32* null, i32** %rowindAT.i174, align 8, !tbaa !0
  br label %if.end4.i183

if.end4.i183:                                     ; preds = %if.else3.i181, %if.then2.i180
  %445 = load double** %entX.i163, align 8, !tbaa !0
  %446 = load double** %entY.i164, align 8, !tbaa !0
  %447 = load i32* %ncolX.i168, align 4, !tbaa !3
  %sub370.i182 = add nsw i32 %447, -2
  %cmp5371.i = icmp sgt i32 %sub370.i182, 0
  br i1 %cmp5371.i, label %for.body.lr.ph.i190, label %for.end86.i

for.body.lr.ph.i190:                              ; preds = %if.end4.i183
  %448 = load i32* %nrowX.i171, align 4, !tbaa !3
  %idx.ext.i184 = sext i32 %448 to i64
  %add.ptr.sum.i185 = shl nsw i64 %idx.ext.i184, 1
  %449 = load i32* %nrowY.i172, align 4, !tbaa !3
  %idx.ext8.i186 = sext i32 %449 to i64
  %add.ptr9.sum.i187 = shl nsw i64 %idx.ext8.i186, 1
  %450 = load i32* %ncolAT.i167, align 4, !tbaa !3
  %cmp13367.i = icmp sgt i32 %450, 0
  %add.ptr7.sum.i188 = add i64 %add.ptr.sum.i185, %idx.ext.i184
  %add.ptr11.sum.i189 = add i64 %add.ptr9.sum.i187, %idx.ext8.i186
  %451 = load i32** %sizes.i, align 8, !tbaa !0
  %452 = load i32* %nrowAT.i170, align 4, !tbaa !3
  %cmp29.i = icmp eq i32 %452, %449
  %453 = load double** %entA.i162, align 8, !tbaa !0
  %454 = load i32** %indices.i, align 8, !tbaa !0
  %455 = load i32** %rowindAT.i174, align 8, !tbaa !0
  %456 = load i32** %colindAT.i173, align 8, !tbaa !0
  %cmp17.i = icmp eq i32 %450, %448
  br label %for.body.i191

for.body.i191:                                    ; preds = %for.end80.i, %for.body.lr.ph.i190
  %jcolX.0376.i = phi i32 [ 0, %for.body.lr.ph.i190 ], [ %add.i200, %for.end80.i ]
  %colY0.0374.i = phi double* [ %446, %for.body.lr.ph.i190 ], [ %add.ptr84.i, %for.end80.i ]
  %colX0.0372.i = phi double* [ %445, %for.body.lr.ph.i190 ], [ %add.ptr82.i, %for.end80.i ]
  br i1 %cmp13367.i, label %for.body14.i, label %for.end80.i

for.body14.i:                                     ; preds = %for.body.i191, %for.inc78.i
  %indvars.iv401.i = phi i64 [ %indvars.iv.next402.i, %for.inc78.i ], [ 0, %for.body.i191 ]
  %kk.0369.i = phi i32 [ %kk.3.i, %for.inc78.i ], [ 0, %for.body.i191 ]
  %arrayidx.i192 = getelementptr inbounds i32* %451, i64 %indvars.iv401.i
  %457 = load i32* %arrayidx.i192, align 4, !tbaa !3
  %cmp15.i = icmp sgt i32 %457, 0
  br i1 %cmp15.i, label %if.then16.i, label %for.inc78.i

if.then16.i:                                      ; preds = %for.body14.i
  %458 = trunc i64 %indvars.iv401.i to i32
  br i1 %cmp17.i, label %if.end22.i, label %if.else19.i

if.else19.i:                                      ; preds = %if.then16.i
  %arrayidx21.i = getelementptr inbounds i32* %456, i64 %indvars.iv401.i
  %459 = load i32* %arrayidx21.i, align 4, !tbaa !3
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else19.i, %if.then16.i
  %jrowX.0.i = phi i32 [ %459, %if.else19.i ], [ %458, %if.then16.i ]
  %idxprom23.i = sext i32 %jrowX.0.i to i64
  %arrayidx24.i = getelementptr inbounds double* %colX0.0372.i, i64 %idxprom23.i
  %460 = load double* %arrayidx24.i, align 8, !tbaa !4
  %add.ptr.sum328.i = add i64 %idxprom23.i, %idx.ext.i184
  %arrayidx26.i193 = getelementptr inbounds double* %colX0.0372.i, i64 %add.ptr.sum328.i
  %461 = load double* %arrayidx26.i193, align 8, !tbaa !4
  %add.ptr7.sum329.i = add i64 %idxprom23.i, %add.ptr.sum.i185
  %arrayidx28.i194 = getelementptr inbounds double* %colX0.0372.i, i64 %add.ptr7.sum329.i
  %462 = load double* %arrayidx28.i194, align 8, !tbaa !4
  %463 = sext i32 %kk.0369.i to i64
  br i1 %cmp29.i, label %for.body33.i, label %for.body53.i

for.body33.i:                                     ; preds = %if.end22.i, %for.body33.i
  %indvars.iv398.i = phi i64 [ %indvars.iv.next399.i, %for.body33.i ], [ %463, %if.end22.i ]
  %ii.0364.i = phi i32 [ %inc.i, %for.body33.i ], [ 0, %if.end22.i ]
  %arrayidx35.i = getelementptr inbounds double* %453, i64 %indvars.iv398.i
  %464 = load double* %arrayidx35.i, align 8, !tbaa !4
  %arrayidx37.i = getelementptr inbounds i32* %454, i64 %indvars.iv398.i
  %465 = load i32* %arrayidx37.i, align 4, !tbaa !3
  %mul.i195 = fmul double %460, %464
  %idxprom38.i = sext i32 %465 to i64
  %arrayidx39.i = getelementptr inbounds double* %colY0.0374.i, i64 %idxprom38.i
  %466 = load double* %arrayidx39.i, align 8, !tbaa !4
  %sub40.i = fsub double %466, %mul.i195
  store double %sub40.i, double* %arrayidx39.i, align 8, !tbaa !4
  %mul41.i196 = fmul double %461, %464
  %add.ptr9.sum332.i = add i64 %idxprom38.i, %idx.ext8.i186
  %arrayidx43.i = getelementptr inbounds double* %colY0.0374.i, i64 %add.ptr9.sum332.i
  %467 = load double* %arrayidx43.i, align 8, !tbaa !4
  %sub44.i = fsub double %467, %mul41.i196
  store double %sub44.i, double* %arrayidx43.i, align 8, !tbaa !4
  %mul45.i197 = fmul double %462, %464
  %add.ptr11.sum333.i = add i64 %idxprom38.i, %add.ptr9.sum.i187
  %arrayidx47.i = getelementptr inbounds double* %colY0.0374.i, i64 %add.ptr11.sum333.i
  %468 = load double* %arrayidx47.i, align 8, !tbaa !4
  %sub48.i = fsub double %468, %mul45.i197
  store double %sub48.i, double* %arrayidx47.i, align 8, !tbaa !4
  %inc.i = add nsw i32 %ii.0364.i, 1
  %indvars.iv.next399.i = add i64 %indvars.iv398.i, 1
  %exitcond400.i = icmp eq i32 %inc.i, %457
  br i1 %exitcond400.i, label %for.inc78.loopexit362.i, label %for.body33.i

for.body53.i:                                     ; preds = %if.end22.i, %for.body53.i
  %indvars.iv395.i = phi i64 [ %indvars.iv.next396.i, %for.body53.i ], [ %463, %if.end22.i ]
  %ii.1359.i = phi i32 [ %inc73.i, %for.body53.i ], [ 0, %if.end22.i ]
  %arrayidx55.i = getelementptr inbounds double* %453, i64 %indvars.iv395.i
  %469 = load double* %arrayidx55.i, align 8, !tbaa !4
  %arrayidx57.i = getelementptr inbounds i32* %454, i64 %indvars.iv395.i
  %470 = load i32* %arrayidx57.i, align 4, !tbaa !3
  %idxprom58.i = sext i32 %470 to i64
  %arrayidx59.i = getelementptr inbounds i32* %455, i64 %idxprom58.i
  %471 = load i32* %arrayidx59.i, align 4, !tbaa !3
  %mul60.i = fmul double %460, %469
  %idxprom61.i = sext i32 %471 to i64
  %arrayidx62.i198 = getelementptr inbounds double* %colY0.0374.i, i64 %idxprom61.i
  %472 = load double* %arrayidx62.i198, align 8, !tbaa !4
  %sub63.i = fsub double %472, %mul60.i
  store double %sub63.i, double* %arrayidx62.i198, align 8, !tbaa !4
  %mul64.i = fmul double %461, %469
  %add.ptr9.sum330.i = add i64 %idxprom61.i, %idx.ext8.i186
  %arrayidx66.i199 = getelementptr inbounds double* %colY0.0374.i, i64 %add.ptr9.sum330.i
  %473 = load double* %arrayidx66.i199, align 8, !tbaa !4
  %sub67.i = fsub double %473, %mul64.i
  store double %sub67.i, double* %arrayidx66.i199, align 8, !tbaa !4
  %mul68.i = fmul double %462, %469
  %add.ptr11.sum331.i = add i64 %idxprom61.i, %add.ptr9.sum.i187
  %arrayidx70.i = getelementptr inbounds double* %colY0.0374.i, i64 %add.ptr11.sum331.i
  %474 = load double* %arrayidx70.i, align 8, !tbaa !4
  %sub71.i = fsub double %474, %mul68.i
  store double %sub71.i, double* %arrayidx70.i, align 8, !tbaa !4
  %inc73.i = add nsw i32 %ii.1359.i, 1
  %indvars.iv.next396.i = add i64 %indvars.iv395.i, 1
  %exitcond397.i = icmp eq i32 %inc73.i, %457
  br i1 %exitcond397.i, label %for.inc78.loopexit.i, label %for.body53.i

for.inc78.loopexit.i:                             ; preds = %for.body53.i
  %475 = add i32 %457, %kk.0369.i
  br label %for.inc78.i

for.inc78.loopexit362.i:                          ; preds = %for.body33.i
  %476 = add i32 %457, %kk.0369.i
  br label %for.inc78.i

for.inc78.i:                                      ; preds = %for.inc78.loopexit362.i, %for.inc78.loopexit.i, %for.body14.i
  %kk.3.i = phi i32 [ %kk.0369.i, %for.body14.i ], [ %475, %for.inc78.loopexit.i ], [ %476, %for.inc78.loopexit362.i ]
  %indvars.iv.next402.i = add i64 %indvars.iv401.i, 1
  %lftr.wideiv1215 = trunc i64 %indvars.iv.next402.i to i32
  %exitcond1216 = icmp eq i32 %lftr.wideiv1215, %450
  br i1 %exitcond1216, label %for.end80.i, label %for.body14.i

for.end80.i:                                      ; preds = %for.inc78.i, %for.body.i191
  %add.ptr82.i = getelementptr inbounds double* %colX0.0372.i, i64 %add.ptr7.sum.i188
  %add.ptr84.i = getelementptr inbounds double* %colY0.0374.i, i64 %add.ptr11.sum.i189
  %add.i200 = add nsw i32 %jcolX.0376.i, 3
  %cmp5.i201 = icmp slt i32 %add.i200, %sub370.i182
  br i1 %cmp5.i201, label %for.body.i191, label %for.end86.i

for.end86.i:                                      ; preds = %for.end80.i, %if.end4.i183
  %jcolX.0.lcssa.i202 = phi i32 [ 0, %if.end4.i183 ], [ %add.i200, %for.end80.i ]
  %colY0.0.lcssa.i203 = phi double* [ %446, %if.end4.i183 ], [ %add.ptr84.i, %for.end80.i ]
  %colX0.0.lcssa.i204 = phi double* [ %445, %if.end4.i183 ], [ %add.ptr82.i, %for.end80.i ]
  %cmp88.i = icmp eq i32 %jcolX.0.lcssa.i202, %sub370.i182
  br i1 %cmp88.i, label %if.then89.i, label %if.else159.i

if.then89.i:                                      ; preds = %for.end86.i
  %477 = load i32* %nrowX.i171, align 4, !tbaa !3
  %idx.ext90.i = sext i32 %477 to i64
  %478 = load i32* %nrowY.i172, align 4, !tbaa !3
  %idx.ext92.i = sext i32 %478 to i64
  %479 = load i32* %ncolAT.i167, align 4, !tbaa !3
  %cmp95342.i = icmp sgt i32 %479, 0
  br i1 %cmp95342.i, label %for.body96.lr.ph.i, label %sw.epilog33

for.body96.lr.ph.i:                               ; preds = %if.then89.i
  %480 = load i32** %sizes.i, align 8, !tbaa !0
  %481 = load i32* %nrowAT.i170, align 4, !tbaa !3
  %cmp111.i = icmp eq i32 %481, %478
  %482 = load double** %entA.i162, align 8, !tbaa !0
  %483 = load i32** %indices.i, align 8, !tbaa !0
  %484 = load i32** %rowindAT.i174, align 8, !tbaa !0
  %485 = load i32** %colindAT.i173, align 8, !tbaa !0
  %cmp101.i = icmp eq i32 %479, %477
  br label %for.body96.i

for.body96.i:                                     ; preds = %for.inc156.i, %for.body96.lr.ph.i
  %indvars.iv385.i = phi i64 [ 0, %for.body96.lr.ph.i ], [ %indvars.iv.next386.i, %for.inc156.i ]
  %kk.4344.i = phi i32 [ 0, %for.body96.lr.ph.i ], [ %kk.7.i, %for.inc156.i ]
  %arrayidx98.i = getelementptr inbounds i32* %480, i64 %indvars.iv385.i
  %486 = load i32* %arrayidx98.i, align 4, !tbaa !3
  %cmp99.i = icmp sgt i32 %486, 0
  br i1 %cmp99.i, label %if.then100.i, label %for.inc156.i

if.then100.i:                                     ; preds = %for.body96.i
  %487 = trunc i64 %indvars.iv385.i to i32
  br i1 %cmp101.i, label %if.end106.i, label %if.else103.i

if.else103.i:                                     ; preds = %if.then100.i
  %arrayidx105.i = getelementptr inbounds i32* %485, i64 %indvars.iv385.i
  %488 = load i32* %arrayidx105.i, align 4, !tbaa !3
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.else103.i, %if.then100.i
  %jrowX.1.i = phi i32 [ %488, %if.else103.i ], [ %487, %if.then100.i ]
  %idxprom107.i = sext i32 %jrowX.1.i to i64
  %arrayidx108.i205 = getelementptr inbounds double* %colX0.0.lcssa.i204, i64 %idxprom107.i
  %489 = load double* %arrayidx108.i205, align 8, !tbaa !4
  %add.ptr91.sum.i = add i64 %idxprom107.i, %idx.ext90.i
  %arrayidx110.i206 = getelementptr inbounds double* %colX0.0.lcssa.i204, i64 %add.ptr91.sum.i
  %490 = load double* %arrayidx110.i206, align 8, !tbaa !4
  %491 = sext i32 %kk.4344.i to i64
  br i1 %cmp111.i, label %for.body115.i, label %for.body135.i

for.body115.i:                                    ; preds = %if.end106.i, %for.body115.i
  %indvars.iv382.i = phi i64 [ %indvars.iv.next383.i, %for.body115.i ], [ %491, %if.end106.i ]
  %ii.2339.i = phi i32 [ %inc129.i, %for.body115.i ], [ 0, %if.end106.i ]
  %arrayidx117.i = getelementptr inbounds double* %482, i64 %indvars.iv382.i
  %492 = load double* %arrayidx117.i, align 8, !tbaa !4
  %arrayidx119.i = getelementptr inbounds i32* %483, i64 %indvars.iv382.i
  %493 = load i32* %arrayidx119.i, align 4, !tbaa !3
  %mul120.i207 = fmul double %489, %492
  %idxprom121.i = sext i32 %493 to i64
  %arrayidx122.i = getelementptr inbounds double* %colY0.0.lcssa.i203, i64 %idxprom121.i
  %494 = load double* %arrayidx122.i, align 8, !tbaa !4
  %sub123.i = fsub double %494, %mul120.i207
  store double %sub123.i, double* %arrayidx122.i, align 8, !tbaa !4
  %mul124.i = fmul double %490, %492
  %add.ptr93.sum327.i = add i64 %idxprom121.i, %idx.ext92.i
  %arrayidx126.i = getelementptr inbounds double* %colY0.0.lcssa.i203, i64 %add.ptr93.sum327.i
  %495 = load double* %arrayidx126.i, align 8, !tbaa !4
  %sub127.i = fsub double %495, %mul124.i
  store double %sub127.i, double* %arrayidx126.i, align 8, !tbaa !4
  %inc129.i = add nsw i32 %ii.2339.i, 1
  %indvars.iv.next383.i = add i64 %indvars.iv382.i, 1
  %exitcond384.i = icmp eq i32 %inc129.i, %486
  br i1 %exitcond384.i, label %for.inc156.loopexit337.i, label %for.body115.i

for.body135.i:                                    ; preds = %if.end106.i, %for.body135.i
  %indvars.iv.i208 = phi i64 [ %indvars.iv.next.i212, %for.body135.i ], [ %491, %if.end106.i ]
  %ii.3335.i = phi i32 [ %inc151.i, %for.body135.i ], [ 0, %if.end106.i ]
  %arrayidx137.i = getelementptr inbounds double* %482, i64 %indvars.iv.i208
  %496 = load double* %arrayidx137.i, align 8, !tbaa !4
  %arrayidx139.i209 = getelementptr inbounds i32* %483, i64 %indvars.iv.i208
  %497 = load i32* %arrayidx139.i209, align 4, !tbaa !3
  %idxprom140.i = sext i32 %497 to i64
  %arrayidx141.i = getelementptr inbounds i32* %484, i64 %idxprom140.i
  %498 = load i32* %arrayidx141.i, align 4, !tbaa !3
  %mul142.i = fmul double %489, %496
  %idxprom143.i = sext i32 %498 to i64
  %arrayidx144.i = getelementptr inbounds double* %colY0.0.lcssa.i203, i64 %idxprom143.i
  %499 = load double* %arrayidx144.i, align 8, !tbaa !4
  %sub145.i = fsub double %499, %mul142.i
  store double %sub145.i, double* %arrayidx144.i, align 8, !tbaa !4
  %mul146.i = fmul double %490, %496
  %add.ptr93.sum.i = add i64 %idxprom143.i, %idx.ext92.i
  %arrayidx148.i210 = getelementptr inbounds double* %colY0.0.lcssa.i203, i64 %add.ptr93.sum.i
  %500 = load double* %arrayidx148.i210, align 8, !tbaa !4
  %sub149.i211 = fsub double %500, %mul146.i
  store double %sub149.i211, double* %arrayidx148.i210, align 8, !tbaa !4
  %inc151.i = add nsw i32 %ii.3335.i, 1
  %indvars.iv.next.i212 = add i64 %indvars.iv.i208, 1
  %exitcond.i213 = icmp eq i32 %inc151.i, %486
  br i1 %exitcond.i213, label %for.inc156.loopexit.i, label %for.body135.i

for.inc156.loopexit.i:                            ; preds = %for.body135.i
  %501 = add i32 %486, %kk.4344.i
  br label %for.inc156.i

for.inc156.loopexit337.i:                         ; preds = %for.body115.i
  %502 = add i32 %486, %kk.4344.i
  br label %for.inc156.i

for.inc156.i:                                     ; preds = %for.inc156.loopexit337.i, %for.inc156.loopexit.i, %for.body96.i
  %kk.7.i = phi i32 [ %kk.4344.i, %for.body96.i ], [ %501, %for.inc156.loopexit.i ], [ %502, %for.inc156.loopexit337.i ]
  %indvars.iv.next386.i = add i64 %indvars.iv385.i, 1
  %lftr.wideiv1211 = trunc i64 %indvars.iv.next386.i to i32
  %exitcond1212 = icmp eq i32 %lftr.wideiv1211, %479
  br i1 %exitcond1212, label %sw.epilog33, label %for.body96.i

if.else159.i:                                     ; preds = %for.end86.i
  %sub160.i = add nsw i32 %447, -1
  %cmp161.i = icmp eq i32 %jcolX.0.lcssa.i202, %sub160.i
  br i1 %cmp161.i, label %for.cond163.preheader.i, label %sw.epilog33

for.cond163.preheader.i:                          ; preds = %if.else159.i
  %503 = load i32* %ncolAT.i167, align 4, !tbaa !3
  %cmp164355.i = icmp sgt i32 %503, 0
  br i1 %cmp164355.i, label %for.body165.lr.ph.i, label %sw.epilog33

for.body165.lr.ph.i:                              ; preds = %for.cond163.preheader.i
  %504 = load i32** %sizes.i, align 8, !tbaa !0
  %505 = load i32* %nrowX.i171, align 4, !tbaa !3
  %506 = load i32* %nrowAT.i170, align 4, !tbaa !3
  %507 = load i32* %nrowY.i172, align 4, !tbaa !3
  %cmp178.i = icmp eq i32 %506, %507
  %508 = load double** %entA.i162, align 8, !tbaa !0
  %509 = load i32** %indices.i, align 8, !tbaa !0
  %510 = load i32** %rowindAT.i174, align 8, !tbaa !0
  %511 = load i32** %colindAT.i173, align 8, !tbaa !0
  %cmp170.i = icmp eq i32 %503, %505
  br label %for.body165.i

for.body165.i:                                    ; preds = %for.inc215.i, %for.body165.lr.ph.i
  %indvars.iv393.i = phi i64 [ 0, %for.body165.lr.ph.i ], [ %indvars.iv.next394.i, %for.inc215.i ]
  %kk.8357.i = phi i32 [ 0, %for.body165.lr.ph.i ], [ %kk.11.i, %for.inc215.i ]
  %arrayidx167.i = getelementptr inbounds i32* %504, i64 %indvars.iv393.i
  %512 = load i32* %arrayidx167.i, align 4, !tbaa !3
  %cmp168.i = icmp sgt i32 %512, 0
  br i1 %cmp168.i, label %if.then169.i, label %for.inc215.i

if.then169.i:                                     ; preds = %for.body165.i
  %513 = trunc i64 %indvars.iv393.i to i32
  br i1 %cmp170.i, label %if.end175.i, label %if.else172.i215

if.else172.i215:                                  ; preds = %if.then169.i
  %arrayidx174.i214 = getelementptr inbounds i32* %511, i64 %indvars.iv393.i
  %514 = load i32* %arrayidx174.i214, align 4, !tbaa !3
  br label %if.end175.i

if.end175.i:                                      ; preds = %if.else172.i215, %if.then169.i
  %jrowX.2.i = phi i32 [ %514, %if.else172.i215 ], [ %513, %if.then169.i ]
  %idxprom176.i = sext i32 %jrowX.2.i to i64
  %arrayidx177.i = getelementptr inbounds double* %colX0.0.lcssa.i204, i64 %idxprom176.i
  %515 = load double* %arrayidx177.i, align 8, !tbaa !4
  %516 = sext i32 %kk.8357.i to i64
  br i1 %cmp178.i, label %for.body182.i, label %for.body198.i

for.body182.i:                                    ; preds = %if.end175.i, %for.body182.i
  %indvars.iv390.i = phi i64 [ %indvars.iv.next391.i, %for.body182.i ], [ %516, %if.end175.i ]
  %ii.4351.i = phi i32 [ %inc192.i, %for.body182.i ], [ 0, %if.end175.i ]
  %arrayidx184.i = getelementptr inbounds double* %508, i64 %indvars.iv390.i
  %517 = load double* %arrayidx184.i, align 8, !tbaa !4
  %arrayidx186.i = getelementptr inbounds i32* %509, i64 %indvars.iv390.i
  %518 = load i32* %arrayidx186.i, align 4, !tbaa !3
  %mul187.i = fmul double %515, %517
  %idxprom188.i = sext i32 %518 to i64
  %arrayidx189.i = getelementptr inbounds double* %colY0.0.lcssa.i203, i64 %idxprom188.i
  %519 = load double* %arrayidx189.i, align 8, !tbaa !4
  %sub190.i = fsub double %519, %mul187.i
  store double %sub190.i, double* %arrayidx189.i, align 8, !tbaa !4
  %inc192.i = add nsw i32 %ii.4351.i, 1
  %indvars.iv.next391.i = add i64 %indvars.iv390.i, 1
  %exitcond392.i = icmp eq i32 %inc192.i, %512
  br i1 %exitcond392.i, label %for.inc215.loopexit349.i, label %for.body182.i

for.body198.i:                                    ; preds = %if.end175.i, %for.body198.i
  %indvars.iv387.i = phi i64 [ %indvars.iv.next388.i, %for.body198.i ], [ %516, %if.end175.i ]
  %ii.5346.i = phi i32 [ %inc210.i, %for.body198.i ], [ 0, %if.end175.i ]
  %arrayidx200.i = getelementptr inbounds double* %508, i64 %indvars.iv387.i
  %520 = load double* %arrayidx200.i, align 8, !tbaa !4
  %arrayidx202.i = getelementptr inbounds i32* %509, i64 %indvars.iv387.i
  %521 = load i32* %arrayidx202.i, align 4, !tbaa !3
  %idxprom203.i = sext i32 %521 to i64
  %arrayidx204.i216 = getelementptr inbounds i32* %510, i64 %idxprom203.i
  %522 = load i32* %arrayidx204.i216, align 4, !tbaa !3
  %mul205.i217 = fmul double %515, %520
  %idxprom206.i = sext i32 %522 to i64
  %arrayidx207.i = getelementptr inbounds double* %colY0.0.lcssa.i203, i64 %idxprom206.i
  %523 = load double* %arrayidx207.i, align 8, !tbaa !4
  %sub208.i = fsub double %523, %mul205.i217
  store double %sub208.i, double* %arrayidx207.i, align 8, !tbaa !4
  %inc210.i = add nsw i32 %ii.5346.i, 1
  %indvars.iv.next388.i = add i64 %indvars.iv387.i, 1
  %exitcond389.i = icmp eq i32 %inc210.i, %512
  br i1 %exitcond389.i, label %for.inc215.loopexit.i, label %for.body198.i

for.inc215.loopexit.i:                            ; preds = %for.body198.i
  %524 = add i32 %512, %kk.8357.i
  br label %for.inc215.i

for.inc215.loopexit349.i:                         ; preds = %for.body182.i
  %525 = add i32 %512, %kk.8357.i
  br label %for.inc215.i

for.inc215.i:                                     ; preds = %for.inc215.loopexit349.i, %for.inc215.loopexit.i, %for.body165.i
  %kk.11.i = phi i32 [ %kk.8357.i, %for.body165.i ], [ %524, %for.inc215.loopexit.i ], [ %525, %for.inc215.loopexit349.i ]
  %indvars.iv.next394.i = add i64 %indvars.iv393.i, 1
  %lftr.wideiv1213 = trunc i64 %indvars.iv.next394.i to i32
  %exitcond1214 = icmp eq i32 %lftr.wideiv1213, %503
  br i1 %exitcond1214, label %sw.epilog33, label %for.body165.i

sw.bb17:                                          ; preds = %sw.bb
  %526 = bitcast double** %entA.i218 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %526) #4
  %527 = bitcast double** %entX.i219 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %527) #4
  %528 = bitcast double** %entY.i220 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %528) #4
  %529 = bitcast i32* %inc1.i221 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %529) #4
  %530 = bitcast i32* %inc2.i222 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %530) #4
  %531 = bitcast i32* %ncolAT.i223 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %531) #4
  %532 = bitcast i32* %ncolX.i224 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %532) #4
  %533 = bitcast i32* %ncolY.i225 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %533) #4
  %534 = bitcast i32* %nentA.i226 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %534) #4
  %535 = bitcast i32* %nrowAT.i227 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %535) #4
  %536 = bitcast i32* %nrowX.i228 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %536) #4
  %537 = bitcast i32* %nrowY.i229 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %537) #4
  %538 = bitcast i32** %colindAT.i230 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %538) #4
  %539 = bitcast i32** %indices.i231 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %539) #4
  %540 = bitcast i32** %rowindAT.i232 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %540) #4
  %541 = bitcast i32** %sizes.i233 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %541) #4
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxY, i32* %nrowY.i229, i32* %ncolY.i225, i32* %inc1.i221, i32* %inc2.i222, double** %entY.i220) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxX, i32* %nrowX.i228, i32* %ncolX.i224, i32* %inc1.i221, i32* %inc2.i222, double** %entX.i219) #5
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtxA, i32* %nrowAT.i227, i32* %nentA.i226, i32** %sizes.i233, i32** %indices.i231, double** %entA.i218) #5
  %nrow.i234 = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 4
  %542 = load i32* %nrow.i234, align 4, !tbaa !3
  store i32 %542, i32* %ncolAT.i223, align 4, !tbaa !3
  %543 = load i32* %nrowX.i228, align 4, !tbaa !3
  %cmp.i235 = icmp eq i32 %542, %543
  br i1 %cmp.i235, label %if.else.i237, label %if.then.i236

if.then.i236:                                     ; preds = %sw.bb17
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtxA, i32* %ncolAT.i223, i32** %colindAT.i230) #5
  br label %if.end.i240

if.else.i237:                                     ; preds = %sw.bb17
  store i32* null, i32** %colindAT.i230, align 8, !tbaa !0
  br label %if.end.i240

if.end.i240:                                      ; preds = %if.else.i237, %if.then.i236
  %ncol.i238 = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 5
  %544 = load i32* %ncol.i238, align 4, !tbaa !3
  store i32 %544, i32* %nrowAT.i227, align 4, !tbaa !3
  %545 = load i32* %nrowY.i229, align 4, !tbaa !3
  %cmp1.i239 = icmp eq i32 %544, %545
  br i1 %cmp1.i239, label %if.else3.i242, label %if.then2.i241

if.then2.i241:                                    ; preds = %if.end.i240
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtxA, i32* %nrowAT.i227, i32** %rowindAT.i232) #5
  br label %if.end4.i243

if.else3.i242:                                    ; preds = %if.end.i240
  store i32* null, i32** %rowindAT.i232, align 8, !tbaa !0
  br label %if.end4.i243

if.end4.i243:                                     ; preds = %if.else3.i242, %if.then2.i241
  %546 = load double** %entX.i219, align 8, !tbaa !0
  %547 = load double** %entY.i220, align 8, !tbaa !0
  %548 = load i32* %ncolX.i224, align 4, !tbaa !3
  %sub445.i = add nsw i32 %548, -2
  %cmp5446.i = icmp sgt i32 %sub445.i, 0
  br i1 %cmp5446.i, label %for.body.lr.ph.i251, label %for.end98.i

for.body.lr.ph.i251:                              ; preds = %if.end4.i243
  %549 = load i32* %nrowX.i228, align 4, !tbaa !3
  %idx.ext.i244 = sext i32 %549 to i64
  %add.ptr.sum.i245 = shl nsw i64 %idx.ext.i244, 1
  %550 = load i32* %nrowY.i229, align 4, !tbaa !3
  %idx.ext8.i246 = sext i32 %550 to i64
  %add.ptr9.sum.i247 = shl nsw i64 %idx.ext8.i246, 1
  %551 = load i32* %nrowAT.i227, align 4, !tbaa !3
  %cmp13442.i = icmp sgt i32 %551, 0
  %add.ptr7.sum.i248 = add i64 %add.ptr.sum.i245, %idx.ext.i244
  %add.ptr11.sum.i249 = add i64 %add.ptr9.sum.i247, %idx.ext8.i246
  %552 = load i32** %sizes.i233, align 8, !tbaa !0
  %553 = load i32* %ncolAT.i223, align 4, !tbaa !3
  %cmp17.i250 = icmp eq i32 %553, %549
  %cmp64.i = icmp eq i32 %551, %550
  %554 = load i32** %rowindAT.i232, align 8, !tbaa !0
  %555 = load double** %entA.i218, align 8, !tbaa !0
  %556 = load i32** %indices.i231, align 8, !tbaa !0
  %557 = load i32** %colindAT.i230, align 8, !tbaa !0
  br label %for.body.i252

for.body.i252:                                    ; preds = %for.end91.i, %for.body.lr.ph.i251
  %jcolX.0451.i = phi i32 [ 0, %for.body.lr.ph.i251 ], [ %add97.i, %for.end91.i ]
  %colY0.0449.i = phi double* [ %547, %for.body.lr.ph.i251 ], [ %add.ptr95.i, %for.end91.i ]
  %colX0.0447.i = phi double* [ %546, %for.body.lr.ph.i251 ], [ %add.ptr93.i, %for.end91.i ]
  br i1 %cmp13442.i, label %for.body14.i255, label %for.end91.i

for.body14.i255:                                  ; preds = %for.body.i252, %for.inc89.i
  %indvars.iv476.i = phi i64 [ %indvars.iv.next477.i, %for.inc89.i ], [ 0, %for.body.i252 ]
  %kk.0444.i = phi i32 [ %kk.4.i, %for.inc89.i ], [ 0, %for.body.i252 ]
  %arrayidx.i253 = getelementptr inbounds i32* %552, i64 %indvars.iv476.i
  %558 = load i32* %arrayidx.i253, align 4, !tbaa !3
  %cmp15.i254 = icmp sgt i32 %558, 0
  br i1 %cmp15.i254, label %if.then16.i256, label %for.inc89.i

if.then16.i256:                                   ; preds = %for.body14.i255
  %559 = sext i32 %kk.0444.i to i64
  br i1 %cmp17.i250, label %for.body21.i, label %for.body40.i

for.body21.i:                                     ; preds = %if.then16.i256, %for.body21.i
  %indvars.iv473.i = phi i64 [ %indvars.iv.next474.i, %for.body21.i ], [ %559, %if.then16.i256 ]
  %ii.0436.i = phi i32 [ %inc.i259, %for.body21.i ], [ 0, %if.then16.i256 ]
  %sum0.0435.i = phi double [ %add.i258, %for.body21.i ], [ 0.000000e+00, %if.then16.i256 ]
  %sum2.0434.i = phi double [ %add35.i, %for.body21.i ], [ 0.000000e+00, %if.then16.i256 ]
  %sum1.0433.i = phi double [ %add31.i, %for.body21.i ], [ 0.000000e+00, %if.then16.i256 ]
  %arrayidx23.i = getelementptr inbounds double* %555, i64 %indvars.iv473.i
  %560 = load double* %arrayidx23.i, align 8, !tbaa !4
  %arrayidx25.i = getelementptr inbounds i32* %556, i64 %indvars.iv473.i
  %561 = load i32* %arrayidx25.i, align 4, !tbaa !3
  %idxprom26.i = sext i32 %561 to i64
  %arrayidx27.i = getelementptr inbounds double* %colX0.0447.i, i64 %idxprom26.i
  %562 = load double* %arrayidx27.i, align 8, !tbaa !4
  %mul.i257 = fmul double %560, %562
  %add.i258 = fadd double %sum0.0435.i, %mul.i257
  %add.ptr.sum383.i = add i64 %idxprom26.i, %idx.ext.i244
  %arrayidx29.i = getelementptr inbounds double* %colX0.0447.i, i64 %add.ptr.sum383.i
  %563 = load double* %arrayidx29.i, align 8, !tbaa !4
  %mul30.i = fmul double %560, %563
  %add31.i = fadd double %sum1.0433.i, %mul30.i
  %add.ptr7.sum384.i = add i64 %idxprom26.i, %add.ptr.sum.i245
  %arrayidx33.i = getelementptr inbounds double* %colX0.0447.i, i64 %add.ptr7.sum384.i
  %564 = load double* %arrayidx33.i, align 8, !tbaa !4
  %mul34.i = fmul double %560, %564
  %add35.i = fadd double %sum2.0434.i, %mul34.i
  %inc.i259 = add nsw i32 %ii.0436.i, 1
  %indvars.iv.next474.i = add i64 %indvars.iv473.i, 1
  %exitcond475.i = icmp eq i32 %inc.i259, %558
  br i1 %exitcond475.i, label %if.end63.i, label %for.body21.i

for.body40.i:                                     ; preds = %if.then16.i256, %for.body40.i
  %indvars.iv470.i = phi i64 [ %indvars.iv.next471.i, %for.body40.i ], [ %559, %if.then16.i256 ]
  %ii.1425.i = phi i32 [ %inc60.i, %for.body40.i ], [ 0, %if.then16.i256 ]
  %sum0.1424.i = phi double [ %add50.i261, %for.body40.i ], [ 0.000000e+00, %if.then16.i256 ]
  %sum2.1423.i = phi double [ %add58.i, %for.body40.i ], [ 0.000000e+00, %if.then16.i256 ]
  %sum1.1422.i = phi double [ %add54.i, %for.body40.i ], [ 0.000000e+00, %if.then16.i256 ]
  %arrayidx42.i = getelementptr inbounds double* %555, i64 %indvars.iv470.i
  %565 = load double* %arrayidx42.i, align 8, !tbaa !4
  %arrayidx44.i = getelementptr inbounds i32* %556, i64 %indvars.iv470.i
  %566 = load i32* %arrayidx44.i, align 4, !tbaa !3
  %idxprom45.i = sext i32 %566 to i64
  %arrayidx46.i = getelementptr inbounds i32* %557, i64 %idxprom45.i
  %567 = load i32* %arrayidx46.i, align 4, !tbaa !3
  %idxprom47.i = sext i32 %567 to i64
  %arrayidx48.i = getelementptr inbounds double* %colX0.0447.i, i64 %idxprom47.i
  %568 = load double* %arrayidx48.i, align 8, !tbaa !4
  %mul49.i260 = fmul double %565, %568
  %add50.i261 = fadd double %sum0.1424.i, %mul49.i260
  %add.ptr.sum381.i = add i64 %idxprom47.i, %idx.ext.i244
  %arrayidx52.i = getelementptr inbounds double* %colX0.0447.i, i64 %add.ptr.sum381.i
  %569 = load double* %arrayidx52.i, align 8, !tbaa !4
  %mul53.i = fmul double %565, %569
  %add54.i = fadd double %sum1.1422.i, %mul53.i
  %add.ptr7.sum382.i = add i64 %idxprom47.i, %add.ptr.sum.i245
  %arrayidx56.i262 = getelementptr inbounds double* %colX0.0447.i, i64 %add.ptr7.sum382.i
  %570 = load double* %arrayidx56.i262, align 8, !tbaa !4
  %mul57.i = fmul double %565, %570
  %add58.i = fadd double %sum2.1423.i, %mul57.i
  %inc60.i = add nsw i32 %ii.1425.i, 1
  %indvars.iv.next471.i = add i64 %indvars.iv470.i, 1
  %exitcond472.i = icmp eq i32 %inc60.i, %558
  br i1 %exitcond472.i, label %if.end63.i, label %for.body40.i

if.end63.i:                                       ; preds = %for.body21.i, %for.body40.i
  %sum1.2.i = phi double [ %add54.i, %for.body40.i ], [ %add31.i, %for.body21.i ]
  %sum2.2.i = phi double [ %add58.i, %for.body40.i ], [ %add35.i, %for.body21.i ]
  %sum0.2.i = phi double [ %add50.i261, %for.body40.i ], [ %add.i258, %for.body21.i ]
  %571 = add i32 %558, %kk.0444.i
  br i1 %cmp64.i, label %if.then65.i, label %if.else75.i

if.then65.i:                                      ; preds = %if.end63.i
  %arrayidx67.i = getelementptr inbounds double* %colY0.0449.i, i64 %indvars.iv476.i
  %572 = load double* %arrayidx67.i, align 8, !tbaa !4
  %sub68.i = fsub double %572, %sum0.2.i
  store double %sub68.i, double* %arrayidx67.i, align 8, !tbaa !4
  %add.ptr9.sum379.i = add i64 %indvars.iv476.i, %idx.ext8.i246
  %arrayidx70.i263 = getelementptr inbounds double* %colY0.0449.i, i64 %add.ptr9.sum379.i
  %573 = load double* %arrayidx70.i263, align 8, !tbaa !4
  %sub71.i264 = fsub double %573, %sum1.2.i
  store double %sub71.i264, double* %arrayidx70.i263, align 8, !tbaa !4
  %add.ptr11.sum380.i = add i64 %indvars.iv476.i, %add.ptr9.sum.i247
  %arrayidx73.i = getelementptr inbounds double* %colY0.0449.i, i64 %add.ptr11.sum380.i
  %574 = load double* %arrayidx73.i, align 8, !tbaa !4
  %sub74.i = fsub double %574, %sum2.2.i
  store double %sub74.i, double* %arrayidx73.i, align 8, !tbaa !4
  br label %for.inc89.i

if.else75.i:                                      ; preds = %if.end63.i
  %arrayidx77.i265 = getelementptr inbounds i32* %554, i64 %indvars.iv476.i
  %575 = load i32* %arrayidx77.i265, align 4, !tbaa !3
  %idxprom78.i = sext i32 %575 to i64
  %arrayidx79.i266 = getelementptr inbounds double* %colY0.0449.i, i64 %idxprom78.i
  %576 = load double* %arrayidx79.i266, align 8, !tbaa !4
  %sub80.i = fsub double %576, %sum0.2.i
  store double %sub80.i, double* %arrayidx79.i266, align 8, !tbaa !4
  %add.ptr9.sum377.i = add i64 %idxprom78.i, %idx.ext8.i246
  %arrayidx82.i = getelementptr inbounds double* %colY0.0449.i, i64 %add.ptr9.sum377.i
  %577 = load double* %arrayidx82.i, align 8, !tbaa !4
  %sub83.i = fsub double %577, %sum1.2.i
  store double %sub83.i, double* %arrayidx82.i, align 8, !tbaa !4
  %add.ptr11.sum378.i = add i64 %idxprom78.i, %add.ptr9.sum.i247
  %arrayidx85.i = getelementptr inbounds double* %colY0.0449.i, i64 %add.ptr11.sum378.i
  %578 = load double* %arrayidx85.i, align 8, !tbaa !4
  %sub86.i = fsub double %578, %sum2.2.i
  store double %sub86.i, double* %arrayidx85.i, align 8, !tbaa !4
  br label %for.inc89.i

for.inc89.i:                                      ; preds = %if.else75.i, %if.then65.i, %for.body14.i255
  %kk.4.i = phi i32 [ %571, %if.then65.i ], [ %571, %if.else75.i ], [ %kk.0444.i, %for.body14.i255 ]
  %indvars.iv.next477.i = add i64 %indvars.iv476.i, 1
  %lftr.wideiv1221 = trunc i64 %indvars.iv.next477.i to i32
  %exitcond1222 = icmp eq i32 %lftr.wideiv1221, %551
  br i1 %exitcond1222, label %for.end91.i, label %for.body14.i255

for.end91.i:                                      ; preds = %for.inc89.i, %for.body.i252
  %add.ptr93.i = getelementptr inbounds double* %colX0.0447.i, i64 %add.ptr7.sum.i248
  %add.ptr95.i = getelementptr inbounds double* %colY0.0449.i, i64 %add.ptr11.sum.i249
  %add97.i = add nsw i32 %jcolX.0451.i, 3
  %cmp5.i268 = icmp slt i32 %add97.i, %sub445.i
  br i1 %cmp5.i268, label %for.body.i252, label %for.end98.i

for.end98.i:                                      ; preds = %for.end91.i, %if.end4.i243
  %jcolX.0.lcssa.i269 = phi i32 [ 0, %if.end4.i243 ], [ %add97.i, %for.end91.i ]
  %colY0.0.lcssa.i270 = phi double* [ %547, %if.end4.i243 ], [ %add.ptr95.i, %for.end91.i ]
  %colX0.0.lcssa.i271 = phi double* [ %546, %if.end4.i243 ], [ %add.ptr93.i, %for.end91.i ]
  %cmp100.i = icmp eq i32 %jcolX.0.lcssa.i269, %sub445.i
  br i1 %cmp100.i, label %if.then101.i, label %if.else179.i

if.then101.i:                                     ; preds = %for.end98.i
  %579 = load i32* %nrowX.i228, align 4, !tbaa !3
  %idx.ext102.i = sext i32 %579 to i64
  %580 = load i32* %nrowY.i229, align 4, !tbaa !3
  %idx.ext104.i = sext i32 %580 to i64
  %581 = load i32* %nrowAT.i227, align 4, !tbaa !3
  %cmp107401.i = icmp sgt i32 %581, 0
  br i1 %cmp107401.i, label %for.body108.lr.ph.i272, label %sw.epilog33

for.body108.lr.ph.i272:                           ; preds = %if.then101.i
  %582 = load i32** %sizes.i233, align 8, !tbaa !0
  %583 = load i32* %ncolAT.i223, align 4, !tbaa !3
  %cmp113.i = icmp eq i32 %583, %579
  %cmp157.i = icmp eq i32 %581, %580
  %584 = load i32** %rowindAT.i232, align 8, !tbaa !0
  %585 = load double** %entA.i218, align 8, !tbaa !0
  %586 = load i32** %indices.i231, align 8, !tbaa !0
  %587 = load i32** %colindAT.i230, align 8, !tbaa !0
  br label %for.body108.i275

for.body108.i275:                                 ; preds = %for.inc176.i, %for.body108.lr.ph.i272
  %indvars.iv460.i = phi i64 [ 0, %for.body108.lr.ph.i272 ], [ %indvars.iv.next461.i, %for.inc176.i ]
  %kk.5403.i = phi i32 [ 0, %for.body108.lr.ph.i272 ], [ %kk.9.i, %for.inc176.i ]
  %arrayidx110.i273 = getelementptr inbounds i32* %582, i64 %indvars.iv460.i
  %588 = load i32* %arrayidx110.i273, align 4, !tbaa !3
  %cmp111.i274 = icmp sgt i32 %588, 0
  br i1 %cmp111.i274, label %if.then112.i, label %for.inc176.i

if.then112.i:                                     ; preds = %for.body108.i275
  %589 = sext i32 %kk.5403.i to i64
  br i1 %cmp113.i, label %for.body117.i, label %for.body137.i

for.body117.i:                                    ; preds = %if.then112.i, %for.body117.i
  %indvars.iv457.i = phi i64 [ %indvars.iv.next458.i, %for.body117.i ], [ %589, %if.then112.i ]
  %ii.2396.i = phi i32 [ %inc131.i, %for.body117.i ], [ 0, %if.then112.i ]
  %sum0.3395.i = phi double [ %add125.i, %for.body117.i ], [ 0.000000e+00, %if.then112.i ]
  %sum1.3394.i = phi double [ %add129.i281, %for.body117.i ], [ 0.000000e+00, %if.then112.i ]
  %arrayidx119.i276 = getelementptr inbounds double* %585, i64 %indvars.iv457.i
  %590 = load double* %arrayidx119.i276, align 8, !tbaa !4
  %arrayidx121.i = getelementptr inbounds i32* %586, i64 %indvars.iv457.i
  %591 = load i32* %arrayidx121.i, align 4, !tbaa !3
  %idxprom122.i277 = sext i32 %591 to i64
  %arrayidx123.i278 = getelementptr inbounds double* %colX0.0.lcssa.i271, i64 %idxprom122.i277
  %592 = load double* %arrayidx123.i278, align 8, !tbaa !4
  %mul124.i279 = fmul double %590, %592
  %add125.i = fadd double %sum0.3395.i, %mul124.i279
  %add.ptr103.sum376.i = add i64 %idxprom122.i277, %idx.ext102.i
  %arrayidx127.i = getelementptr inbounds double* %colX0.0.lcssa.i271, i64 %add.ptr103.sum376.i
  %593 = load double* %arrayidx127.i, align 8, !tbaa !4
  %mul128.i280 = fmul double %590, %593
  %add129.i281 = fadd double %sum1.3394.i, %mul128.i280
  %inc131.i = add nsw i32 %ii.2396.i, 1
  %indvars.iv.next458.i = add i64 %indvars.iv457.i, 1
  %exitcond459.i = icmp eq i32 %inc131.i, %588
  br i1 %exitcond459.i, label %if.end156.i, label %for.body117.i

for.body137.i:                                    ; preds = %if.then112.i, %for.body137.i
  %indvars.iv.i282 = phi i64 [ %indvars.iv.next.i287, %for.body137.i ], [ %589, %if.then112.i ]
  %ii.3388.i = phi i32 [ %inc153.i, %for.body137.i ], [ 0, %if.then112.i ]
  %sum0.4387.i = phi double [ %add147.i, %for.body137.i ], [ 0.000000e+00, %if.then112.i ]
  %sum1.4386.i = phi double [ %add151.i, %for.body137.i ], [ 0.000000e+00, %if.then112.i ]
  %arrayidx139.i283 = getelementptr inbounds double* %585, i64 %indvars.iv.i282
  %594 = load double* %arrayidx139.i283, align 8, !tbaa !4
  %arrayidx141.i284 = getelementptr inbounds i32* %586, i64 %indvars.iv.i282
  %595 = load i32* %arrayidx141.i284, align 4, !tbaa !3
  %idxprom142.i = sext i32 %595 to i64
  %arrayidx143.i = getelementptr inbounds i32* %587, i64 %idxprom142.i
  %596 = load i32* %arrayidx143.i, align 4, !tbaa !3
  %idxprom144.i = sext i32 %596 to i64
  %arrayidx145.i285 = getelementptr inbounds double* %colX0.0.lcssa.i271, i64 %idxprom144.i
  %597 = load double* %arrayidx145.i285, align 8, !tbaa !4
  %mul146.i286 = fmul double %594, %597
  %add147.i = fadd double %sum0.4387.i, %mul146.i286
  %add.ptr103.sum.i = add i64 %idxprom144.i, %idx.ext102.i
  %arrayidx149.i = getelementptr inbounds double* %colX0.0.lcssa.i271, i64 %add.ptr103.sum.i
  %598 = load double* %arrayidx149.i, align 8, !tbaa !4
  %mul150.i = fmul double %594, %598
  %add151.i = fadd double %sum1.4386.i, %mul150.i
  %inc153.i = add nsw i32 %ii.3388.i, 1
  %indvars.iv.next.i287 = add i64 %indvars.iv.i282, 1
  %exitcond.i288 = icmp eq i32 %inc153.i, %588
  br i1 %exitcond.i288, label %if.end156.i, label %for.body137.i

if.end156.i:                                      ; preds = %for.body117.i, %for.body137.i
  %sum1.5.i = phi double [ %add151.i, %for.body137.i ], [ %add129.i281, %for.body117.i ]
  %sum0.5.i = phi double [ %add147.i, %for.body137.i ], [ %add125.i, %for.body117.i ]
  %599 = add i32 %588, %kk.5403.i
  br i1 %cmp157.i, label %if.then158.i, label %if.else165.i

if.then158.i:                                     ; preds = %if.end156.i
  %arrayidx160.i289 = getelementptr inbounds double* %colY0.0.lcssa.i270, i64 %indvars.iv460.i
  %600 = load double* %arrayidx160.i289, align 8, !tbaa !4
  %sub161.i290 = fsub double %600, %sum0.5.i
  store double %sub161.i290, double* %arrayidx160.i289, align 8, !tbaa !4
  %add.ptr105.sum375.i = add i64 %indvars.iv460.i, %idx.ext104.i
  %arrayidx163.i = getelementptr inbounds double* %colY0.0.lcssa.i270, i64 %add.ptr105.sum375.i
  %601 = load double* %arrayidx163.i, align 8, !tbaa !4
  %sub164.i = fsub double %601, %sum1.5.i
  store double %sub164.i, double* %arrayidx163.i, align 8, !tbaa !4
  br label %for.inc176.i

if.else165.i:                                     ; preds = %if.end156.i
  %arrayidx167.i291 = getelementptr inbounds i32* %584, i64 %indvars.iv460.i
  %602 = load i32* %arrayidx167.i291, align 4, !tbaa !3
  %idxprom168.i = sext i32 %602 to i64
  %arrayidx169.i = getelementptr inbounds double* %colY0.0.lcssa.i270, i64 %idxprom168.i
  %603 = load double* %arrayidx169.i, align 8, !tbaa !4
  %sub170.i = fsub double %603, %sum0.5.i
  store double %sub170.i, double* %arrayidx169.i, align 8, !tbaa !4
  %add.ptr105.sum.i = add i64 %idxprom168.i, %idx.ext104.i
  %arrayidx172.i = getelementptr inbounds double* %colY0.0.lcssa.i270, i64 %add.ptr105.sum.i
  %604 = load double* %arrayidx172.i, align 8, !tbaa !4
  %sub173.i = fsub double %604, %sum1.5.i
  store double %sub173.i, double* %arrayidx172.i, align 8, !tbaa !4
  br label %for.inc176.i

for.inc176.i:                                     ; preds = %if.else165.i, %if.then158.i, %for.body108.i275
  %kk.9.i = phi i32 [ %599, %if.then158.i ], [ %599, %if.else165.i ], [ %kk.5403.i, %for.body108.i275 ]
  %indvars.iv.next461.i = add i64 %indvars.iv460.i, 1
  %lftr.wideiv1217 = trunc i64 %indvars.iv.next461.i to i32
  %exitcond1218 = icmp eq i32 %lftr.wideiv1217, %581
  br i1 %exitcond1218, label %sw.epilog33, label %for.body108.i275

if.else179.i:                                     ; preds = %for.end98.i
  %sub180.i = add nsw i32 %548, -1
  %cmp181.i = icmp eq i32 %jcolX.0.lcssa.i269, %sub180.i
  br i1 %cmp181.i, label %for.cond183.preheader.i, label %sw.epilog33

for.cond183.preheader.i:                          ; preds = %if.else179.i
  %605 = load i32* %nrowAT.i227, align 4, !tbaa !3
  %cmp184418.i = icmp sgt i32 %605, 0
  br i1 %cmp184418.i, label %for.body185.lr.ph.i, label %sw.epilog33

for.body185.lr.ph.i:                              ; preds = %for.cond183.preheader.i
  %606 = load i32** %sizes.i233, align 8, !tbaa !0
  %607 = load i32* %ncolAT.i223, align 4, !tbaa !3
  %608 = load i32* %nrowX.i228, align 4, !tbaa !3
  %cmp190.i = icmp eq i32 %607, %608
  %609 = load i32* %nrowY.i229, align 4, !tbaa !3
  %cmp226.i = icmp eq i32 %605, %609
  %610 = load i32** %rowindAT.i232, align 8, !tbaa !0
  %611 = load double** %entA.i218, align 8, !tbaa !0
  %612 = load i32** %indices.i231, align 8, !tbaa !0
  %613 = load i32** %colindAT.i230, align 8, !tbaa !0
  br label %for.body185.i

for.body185.i:                                    ; preds = %for.inc239.i, %for.body185.lr.ph.i
  %indvars.iv468.i = phi i64 [ 0, %for.body185.lr.ph.i ], [ %indvars.iv.next469.i, %for.inc239.i ]
  %kk.10420.i = phi i32 [ 0, %for.body185.lr.ph.i ], [ %kk.14.i, %for.inc239.i ]
  %arrayidx187.i = getelementptr inbounds i32* %606, i64 %indvars.iv468.i
  %614 = load i32* %arrayidx187.i, align 4, !tbaa !3
  %cmp188.i = icmp sgt i32 %614, 0
  br i1 %cmp188.i, label %if.then189.i, label %for.inc239.i

if.then189.i:                                     ; preds = %for.body185.i
  %615 = sext i32 %kk.10420.i to i64
  br i1 %cmp190.i, label %for.body194.i, label %for.body210.i

for.body194.i:                                    ; preds = %if.then189.i, %for.body194.i
  %indvars.iv465.i = phi i64 [ %indvars.iv.next466.i, %for.body194.i ], [ %615, %if.then189.i ]
  %ii.4413.i = phi i32 [ %inc204.i, %for.body194.i ], [ 0, %if.then189.i ]
  %sum0.6412.i = phi double [ %add202.i297, %for.body194.i ], [ 0.000000e+00, %if.then189.i ]
  %arrayidx196.i293 = getelementptr inbounds double* %611, i64 %indvars.iv465.i
  %616 = load double* %arrayidx196.i293, align 8, !tbaa !4
  %arrayidx198.i294 = getelementptr inbounds i32* %612, i64 %indvars.iv465.i
  %617 = load i32* %arrayidx198.i294, align 4, !tbaa !3
  %idxprom199.i = sext i32 %617 to i64
  %arrayidx200.i295 = getelementptr inbounds double* %colX0.0.lcssa.i271, i64 %idxprom199.i
  %618 = load double* %arrayidx200.i295, align 8, !tbaa !4
  %mul201.i296 = fmul double %616, %618
  %add202.i297 = fadd double %sum0.6412.i, %mul201.i296
  %inc204.i = add nsw i32 %ii.4413.i, 1
  %indvars.iv.next466.i = add i64 %indvars.iv465.i, 1
  %exitcond467.i = icmp eq i32 %inc204.i, %614
  br i1 %exitcond467.i, label %if.end225.i, label %for.body194.i

for.body210.i:                                    ; preds = %if.then189.i, %for.body210.i
  %indvars.iv462.i = phi i64 [ %indvars.iv.next463.i, %for.body210.i ], [ %615, %if.then189.i ]
  %ii.5406.i = phi i32 [ %inc222.i, %for.body210.i ], [ 0, %if.then189.i ]
  %sum0.7405.i = phi double [ %add220.i, %for.body210.i ], [ 0.000000e+00, %if.then189.i ]
  %arrayidx212.i = getelementptr inbounds double* %611, i64 %indvars.iv462.i
  %619 = load double* %arrayidx212.i, align 8, !tbaa !4
  %arrayidx214.i = getelementptr inbounds i32* %612, i64 %indvars.iv462.i
  %620 = load i32* %arrayidx214.i, align 4, !tbaa !3
  %idxprom215.i = sext i32 %620 to i64
  %arrayidx216.i298 = getelementptr inbounds i32* %613, i64 %idxprom215.i
  %621 = load i32* %arrayidx216.i298, align 4, !tbaa !3
  %idxprom217.i = sext i32 %621 to i64
  %arrayidx218.i = getelementptr inbounds double* %colX0.0.lcssa.i271, i64 %idxprom217.i
  %622 = load double* %arrayidx218.i, align 8, !tbaa !4
  %mul219.i = fmul double %619, %622
  %add220.i = fadd double %sum0.7405.i, %mul219.i
  %inc222.i = add nsw i32 %ii.5406.i, 1
  %indvars.iv.next463.i = add i64 %indvars.iv462.i, 1
  %exitcond464.i = icmp eq i32 %inc222.i, %614
  br i1 %exitcond464.i, label %if.end225.i, label %for.body210.i

if.end225.i:                                      ; preds = %for.body194.i, %for.body210.i
  %sum0.8.i = phi double [ %add220.i, %for.body210.i ], [ %add202.i297, %for.body194.i ]
  %623 = add i32 %614, %kk.10420.i
  br i1 %cmp226.i, label %if.then227.i, label %if.else231.i

if.then227.i:                                     ; preds = %if.end225.i
  %arrayidx229.i299 = getelementptr inbounds double* %colY0.0.lcssa.i270, i64 %indvars.iv468.i
  %624 = load double* %arrayidx229.i299, align 8, !tbaa !4
  %sub230.i = fsub double %624, %sum0.8.i
  store double %sub230.i, double* %arrayidx229.i299, align 8, !tbaa !4
  br label %for.inc239.i

if.else231.i:                                     ; preds = %if.end225.i
  %arrayidx233.i = getelementptr inbounds i32* %610, i64 %indvars.iv468.i
  %625 = load i32* %arrayidx233.i, align 4, !tbaa !3
  %idxprom234.i300 = sext i32 %625 to i64
  %arrayidx235.i301 = getelementptr inbounds double* %colY0.0.lcssa.i270, i64 %idxprom234.i300
  %626 = load double* %arrayidx235.i301, align 8, !tbaa !4
  %sub236.i302 = fsub double %626, %sum0.8.i
  store double %sub236.i302, double* %arrayidx235.i301, align 8, !tbaa !4
  br label %for.inc239.i

for.inc239.i:                                     ; preds = %if.else231.i, %if.then227.i, %for.body185.i
  %kk.14.i = phi i32 [ %623, %if.then227.i ], [ %623, %if.else231.i ], [ %kk.10420.i, %for.body185.i ]
  %indvars.iv.next469.i = add i64 %indvars.iv468.i, 1
  %lftr.wideiv1219 = trunc i64 %indvars.iv.next469.i to i32
  %exitcond1220 = icmp eq i32 %lftr.wideiv1219, %605
  br i1 %exitcond1220, label %sw.epilog33, label %for.body185.i

sw.default:                                       ; preds = %sw.bb
  %627 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %627, i8* getelementptr inbounds ([72 x i8]* @.str3, i64 0, i64 0), %struct._SubMtx* %mtxY, %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxX, i32 %6) #5
  call void @exit(i32 -1) #6
  unreachable

sw.bb20:                                          ; preds = %if.end12
  %mode21 = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 1
  %628 = load i32* %mode21, align 4, !tbaa !3
  switch i32 %628, label %sw.default26 [
    i32 1, label %sw.bb22
    i32 0, label %sw.bb23
    i32 2, label %sw.bb24
    i32 3, label %sw.bb25
  ]

sw.bb22:                                          ; preds = %sw.bb20
  %629 = bitcast double** %entA.i304 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %629) #4
  %630 = bitcast double** %entX.i305 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %630) #4
  %631 = bitcast double** %entY.i306 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %631) #4
  %632 = bitcast i32* %inc1.i307 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %632) #4
  %633 = bitcast i32* %inc2.i308 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %633) #4
  %634 = bitcast i32* %ncolAT.i309 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %634) #4
  %635 = bitcast i32* %ncolX.i310 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %635) #4
  %636 = bitcast i32* %ncolY.i311 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %636) #4
  %637 = bitcast i32* %nrowAT.i312 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %637) #4
  %638 = bitcast i32* %nrowX.i313 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %638) #4
  %639 = bitcast i32* %nrowY.i314 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %639) #4
  %640 = bitcast i32** %colindAT.i315 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %640) #4
  %641 = bitcast i32** %rowindAT.i316 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %641) #4
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxY, i32* %nrowY.i314, i32* %ncolY.i311, i32* %inc1.i307, i32* %inc2.i308, double** %entY.i306) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxX, i32* %nrowX.i313, i32* %ncolX.i310, i32* %inc1.i307, i32* %inc2.i308, double** %entX.i305) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxA, i32* %ncolAT.i309, i32* %nrowAT.i312, i32* %inc1.i307, i32* %inc2.i308, double** %entA.i304) #5
  %642 = load i32* %ncolAT.i309, align 4, !tbaa !3
  %643 = load i32* %nrowX.i313, align 4, !tbaa !3
  %cmp.i317 = icmp eq i32 %642, %643
  br i1 %cmp.i317, label %if.else.i319, label %if.then.i318

if.then.i318:                                     ; preds = %sw.bb22
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtxA, i32* %ncolAT.i309, i32** %colindAT.i315) #5
  br label %if.end.i321

if.else.i319:                                     ; preds = %sw.bb22
  store i32* null, i32** %colindAT.i315, align 8, !tbaa !0
  br label %if.end.i321

if.end.i321:                                      ; preds = %if.else.i319, %if.then.i318
  %644 = load i32* %nrowAT.i312, align 4, !tbaa !3
  %645 = load i32* %nrowY.i314, align 4, !tbaa !3
  %cmp1.i320 = icmp eq i32 %644, %645
  br i1 %cmp1.i320, label %if.else3.i323, label %if.then2.i322

if.then2.i322:                                    ; preds = %if.end.i321
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtxA, i32* %nrowAT.i312, i32** %rowindAT.i316) #5
  br label %if.end4.i324

if.else3.i323:                                    ; preds = %if.end.i321
  store i32* null, i32** %rowindAT.i316, align 8, !tbaa !0
  br label %if.end4.i324

if.end4.i324:                                     ; preds = %if.else3.i323, %if.then2.i322
  %646 = load double** %entX.i305, align 8, !tbaa !0
  %647 = load double** %entY.i306, align 8, !tbaa !0
  %648 = load i32* %ncolX.i310, align 4, !tbaa !3
  %sub3928.i = add nsw i32 %648, -2
  %cmp53929.i = icmp sgt i32 %sub3928.i, 0
  br i1 %cmp53929.i, label %for.body.lr.ph.i330, label %for.end840.i

for.body.lr.ph.i330:                              ; preds = %if.end4.i324
  %649 = load i32* %nrowX.i313, align 4, !tbaa !3
  %mul.i325 = shl nsw i32 %649, 1
  %idx.ext.i326 = sext i32 %mul.i325 to i64
  %add.ptr.sum.i327 = shl nsw i64 %idx.ext.i326, 1
  %650 = load i32* %nrowY.i314, align 4, !tbaa !3
  %mul9.i = shl nsw i32 %650, 1
  %idx.ext10.i = sext i32 %mul9.i to i64
  %add.ptr11.sum.i328 = shl nsw i64 %idx.ext10.i, 1
  %651 = load double** %entA.i304, align 8, !tbaa !0
  %652 = load i32* %nrowAT.i312, align 4, !tbaa !3
  %sub163832.i = add nsw i32 %652, -2
  %cmp173833.i = icmp sgt i32 %sub163832.i, 0
  %653 = load i32* %ncolAT.i309, align 4, !tbaa !3
  %mul404.i329 = shl nsw i32 %653, 1
  %idx.ext405.i = sext i32 %mul404.i329 to i64
  %cmp407.i = icmp eq i32 %653, %649
  %cmp567.i = icmp eq i32 %650, %652
  %654 = load i32** %rowindAT.i316, align 8, !tbaa !0
  %cmp4873872.i = icmp sgt i32 %653, 0
  %655 = load i32** %colindAT.i315, align 8, !tbaa !0
  %add.ptr8.sum.i = add i64 %add.ptr.sum.i327, %idx.ext.i326
  %add.ptr14.sum.i = add i64 %add.ptr11.sum.i328, %idx.ext10.i
  %add.ptr21.sum.i = shl nsw i64 %idx.ext405.i, 1
  %add.ptr24.sum.i = add i64 %add.ptr21.sum.i, %idx.ext405.i
  %mul569.i = shl nsw i32 %sub163832.i, 1
  %add5703488.i = or i32 %mul569.i, 1
  %idxprom571.i = sext i32 %mul569.i to i64
  %idxprom574.i = sext i32 %add5703488.i to i64
  %add.ptr11.sum3489.i = add i64 %idxprom571.i, %idx.ext10.i
  %add.ptr11.sum3490.i = add i64 %idxprom574.i, %idx.ext10.i
  %add.ptr14.sum3491.i = add i64 %idxprom571.i, %add.ptr11.sum.i328
  %add.ptr14.sum3492.i = add i64 %idxprom574.i, %add.ptr11.sum.i328
  %add589.i = add nsw i32 %mul569.i, 2
  %add590.i = add nsw i32 %add5703488.i, 2
  %idxprom591.i = sext i32 %add589.i to i64
  %idxprom594.i439 = sext i32 %add590.i to i64
  %add.ptr11.sum3493.i = add i64 %idxprom591.i, %idx.ext10.i
  %add.ptr11.sum3494.i = add i64 %idxprom594.i439, %idx.ext10.i
  %add.ptr14.sum3495.i = add i64 %idxprom591.i, %add.ptr11.sum.i328
  %add.ptr14.sum3496.i = add i64 %idxprom594.i439, %add.ptr11.sum.i328
  %idxprom610.i = sext i32 %sub163832.i to i64
  %arrayidx611.i = getelementptr inbounds i32* %654, i64 %idxprom610.i
  %add632.i = add nsw i32 %652, -1
  %idxprom633.i = sext i32 %add632.i to i64
  %arrayidx634.i = getelementptr inbounds i32* %654, i64 %idxprom633.i
  br label %for.body.i331

for.body.i331:                                    ; preds = %if.end831.i, %for.body.lr.ph.i330
  %colX0.03934.i = phi double* [ %646, %for.body.lr.ph.i330 ], [ %add.ptr834.i, %if.end831.i ]
  %colY0.03931.i = phi double* [ %647, %for.body.lr.ph.i330 ], [ %add.ptr837.i, %if.end831.i ]
  %jcolX.03930.i = phi i32 [ 0, %for.body.lr.ph.i330 ], [ %add839.i459, %if.end831.i ]
  br i1 %cmp173833.i, label %for.body18.i, label %for.end372.i

for.body18.i:                                     ; preds = %for.body.i331, %if.end366.i
  %indvars.iv3986.i = phi i64 [ %indvars.iv.next3987.i, %if.end366.i ], [ 0, %for.body.i331 ]
  %rowAT0.03835.i = phi double* [ %add.ptr369.i, %if.end366.i ], [ %651, %for.body.i331 ]
  %irowAT.03834.i = phi i32 [ %add371.i, %if.end366.i ], [ 0, %for.body.i331 ]
  br i1 %cmp407.i, label %for.cond27.preheader.i, label %for.cond126.preheader.i

for.cond27.preheader.i:                           ; preds = %for.body18.i
  br i1 %cmp4873872.i, label %for.body29.i, label %if.end234.i

for.cond126.preheader.i:                          ; preds = %for.body18.i
  br i1 %cmp4873872.i, label %for.body128.i, label %if.end234.i

for.body29.i:                                     ; preds = %for.cond27.preheader.i, %for.body29.i
  %indvars.iv3982.i = phi i64 [ %indvars.iv.next3983.i, %for.body29.i ], [ 0, %for.cond27.preheader.i ]
  %isum00.03811.i = phi double [ %add60.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %isum01.03810.i = phi double [ %add68.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %isum02.03809.i = phi double [ %add76.i348, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %isum10.03808.i = phi double [ %add84.i354, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %isum11.03807.i = phi double [ %add92.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %isum12.03806.i = phi double [ %add100.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %isum20.03805.i = phi double [ %add108.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %isum21.03804.i = phi double [ %add116.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %isum22.03803.i = phi double [ %add124.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %rsum00.03802.i = phi double [ %add56.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %rsum01.03801.i = phi double [ %add64.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %rsum02.03800.i = phi double [ %add72.i346, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %rsum10.03799.i = phi double [ %add80.i350, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %rsum11.03798.i = phi double [ %add88.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %rsum12.03797.i = phi double [ %add96.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %rsum20.03796.i = phi double [ %add104.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %rsum21.03795.i = phi double [ %add112.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %rsum22.03794.i = phi double [ %add120.i, %for.body29.i ], [ 0.000000e+00, %for.cond27.preheader.i ]
  %656 = trunc i64 %indvars.iv3982.i to i32
  %mul30.i332 = shl nsw i32 %656, 1
  %add3549.i = or i32 %mul30.i332, 1
  %idxprom.i = sext i32 %mul30.i332 to i64
  %arrayidx.i333 = getelementptr inbounds double* %rowAT0.03835.i, i64 %idxprom.i
  %657 = load double* %arrayidx.i333, align 8, !tbaa !4
  %idxprom31.i = sext i32 %add3549.i to i64
  %arrayidx32.i334 = getelementptr inbounds double* %rowAT0.03835.i, i64 %idxprom31.i
  %658 = load double* %arrayidx32.i334, align 8, !tbaa !4
  %add.ptr21.sum3550.i = add i64 %idxprom.i, %idx.ext405.i
  %arrayidx34.i335 = getelementptr inbounds double* %rowAT0.03835.i, i64 %add.ptr21.sum3550.i
  %659 = load double* %arrayidx34.i335, align 8, !tbaa !4
  %add.ptr21.sum3551.i = add i64 %idxprom31.i, %idx.ext405.i
  %arrayidx36.i = getelementptr inbounds double* %rowAT0.03835.i, i64 %add.ptr21.sum3551.i
  %660 = load double* %arrayidx36.i, align 8, !tbaa !4
  %add.ptr24.sum3552.i = add i64 %idxprom.i, %add.ptr21.sum.i
  %arrayidx38.i = getelementptr inbounds double* %rowAT0.03835.i, i64 %add.ptr24.sum3552.i
  %661 = load double* %arrayidx38.i, align 8, !tbaa !4
  %add.ptr24.sum3553.i = add i64 %idxprom31.i, %add.ptr21.sum.i
  %arrayidx40.i = getelementptr inbounds double* %rowAT0.03835.i, i64 %add.ptr24.sum3553.i
  %662 = load double* %arrayidx40.i, align 8, !tbaa !4
  %arrayidx42.i336 = getelementptr inbounds double* %colX0.03934.i, i64 %idxprom.i
  %663 = load double* %arrayidx42.i336, align 8, !tbaa !4
  %arrayidx44.i337 = getelementptr inbounds double* %colX0.03934.i, i64 %idxprom31.i
  %664 = load double* %arrayidx44.i337, align 8, !tbaa !4
  %add.ptr.sum3554.i = add i64 %idxprom.i, %idx.ext.i326
  %arrayidx46.i338 = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr.sum3554.i
  %665 = load double* %arrayidx46.i338, align 8, !tbaa !4
  %add.ptr.sum3555.i = add i64 %idxprom31.i, %idx.ext.i326
  %arrayidx48.i339 = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr.sum3555.i
  %666 = load double* %arrayidx48.i339, align 8, !tbaa !4
  %add.ptr8.sum3556.i = add i64 %idxprom.i, %add.ptr.sum.i327
  %arrayidx50.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr8.sum3556.i
  %667 = load double* %arrayidx50.i, align 8, !tbaa !4
  %add.ptr8.sum3557.i = add i64 %idxprom31.i, %add.ptr.sum.i327
  %arrayidx52.i340 = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr8.sum3557.i
  %668 = load double* %arrayidx52.i340, align 8, !tbaa !4
  %mul53.i341 = fmul double %657, %663
  %mul54.i = fmul double %658, %664
  %sub55.i = fsub double %mul53.i341, %mul54.i
  %add56.i = fadd double %rsum00.03802.i, %sub55.i
  %mul57.i342 = fmul double %657, %664
  %mul58.i = fmul double %658, %663
  %add59.i = fadd double %mul58.i, %mul57.i342
  %add60.i = fadd double %isum00.03811.i, %add59.i
  %mul61.i = fmul double %657, %665
  %mul62.i = fmul double %658, %666
  %sub63.i343 = fsub double %mul61.i, %mul62.i
  %add64.i = fadd double %rsum01.03801.i, %sub63.i343
  %mul65.i = fmul double %657, %666
  %mul66.i = fmul double %658, %665
  %add67.i = fadd double %mul66.i, %mul65.i
  %add68.i = fadd double %isum01.03810.i, %add67.i
  %mul69.i344 = fmul double %657, %667
  %mul70.i = fmul double %658, %668
  %sub71.i345 = fsub double %mul69.i344, %mul70.i
  %add72.i346 = fadd double %rsum02.03800.i, %sub71.i345
  %mul73.i347 = fmul double %657, %668
  %mul74.i = fmul double %658, %667
  %add75.i = fadd double %mul74.i, %mul73.i347
  %add76.i348 = fadd double %isum02.03809.i, %add75.i
  %mul77.i349 = fmul double %659, %663
  %mul78.i = fmul double %660, %664
  %sub79.i = fsub double %mul77.i349, %mul78.i
  %add80.i350 = fadd double %rsum10.03799.i, %sub79.i
  %mul81.i351 = fmul double %659, %664
  %mul82.i352 = fmul double %660, %663
  %add83.i353 = fadd double %mul82.i352, %mul81.i351
  %add84.i354 = fadd double %isum10.03808.i, %add83.i353
  %mul85.i355 = fmul double %659, %665
  %mul86.i = fmul double %660, %666
  %sub87.i = fsub double %mul85.i355, %mul86.i
  %add88.i = fadd double %rsum11.03798.i, %sub87.i
  %mul89.i356 = fmul double %659, %666
  %mul90.i357 = fmul double %660, %665
  %add91.i358 = fadd double %mul90.i357, %mul89.i356
  %add92.i = fadd double %isum11.03807.i, %add91.i358
  %mul93.i = fmul double %659, %667
  %mul94.i = fmul double %660, %668
  %sub95.i359 = fsub double %mul93.i, %mul94.i
  %add96.i = fadd double %rsum12.03797.i, %sub95.i359
  %mul97.i360 = fmul double %659, %668
  %mul98.i361 = fmul double %660, %667
  %add99.i362 = fadd double %mul98.i361, %mul97.i360
  %add100.i = fadd double %isum12.03806.i, %add99.i362
  %mul101.i = fmul double %661, %663
  %mul102.i = fmul double %662, %664
  %sub103.i = fsub double %mul101.i, %mul102.i
  %add104.i = fadd double %rsum20.03796.i, %sub103.i
  %mul105.i = fmul double %661, %664
  %mul106.i = fmul double %662, %663
  %add107.i = fadd double %mul106.i, %mul105.i
  %add108.i = fadd double %isum20.03805.i, %add107.i
  %mul109.i = fmul double %661, %665
  %mul110.i = fmul double %662, %666
  %sub111.i = fsub double %mul109.i, %mul110.i
  %add112.i = fadd double %rsum21.03795.i, %sub111.i
  %mul113.i = fmul double %661, %666
  %mul114.i = fmul double %662, %665
  %add115.i = fadd double %mul114.i, %mul113.i
  %add116.i = fadd double %isum21.03804.i, %add115.i
  %mul117.i363 = fmul double %661, %667
  %mul118.i364 = fmul double %662, %668
  %sub119.i = fsub double %mul117.i363, %mul118.i364
  %add120.i = fadd double %rsum22.03794.i, %sub119.i
  %mul121.i = fmul double %661, %668
  %mul122.i = fmul double %662, %667
  %add123.i = fadd double %mul122.i, %mul121.i
  %add124.i = fadd double %isum22.03803.i, %add123.i
  %indvars.iv.next3983.i = add i64 %indvars.iv3982.i, 1
  %lftr.wideiv1249 = trunc i64 %indvars.iv.next3983.i to i32
  %exitcond1250 = icmp eq i32 %lftr.wideiv1249, %649
  br i1 %exitcond1250, label %if.end234.i, label %for.body29.i

for.body128.i:                                    ; preds = %for.cond126.preheader.i, %for.body128.i
  %indvars.iv3980.i = phi i64 [ %indvars.iv.next3981.i, %for.body128.i ], [ 0, %for.cond126.preheader.i ]
  %isum00.13772.i = phi double [ %add166.i373, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %isum01.13771.i = phi double [ %add174.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %isum02.13770.i = phi double [ %add182.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %isum10.13769.i = phi double [ %add190.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %isum11.13768.i = phi double [ %add198.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %isum12.13767.i = phi double [ %add206.i380, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %isum20.13766.i = phi double [ %add214.i384, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %isum21.13765.i = phi double [ %add222.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %isum22.13764.i = phi double [ %add230.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %rsum00.13763.i = phi double [ %add162.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %rsum01.13762.i = phi double [ %add170.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %rsum02.13761.i = phi double [ %add178.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %rsum10.13760.i = phi double [ %add186.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %rsum11.13759.i = phi double [ %add194.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %rsum12.13758.i = phi double [ %add202.i378, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %rsum20.13757.i = phi double [ %add210.i382, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %rsum21.13756.i = phi double [ %add218.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %rsum22.13755.i = phi double [ %add226.i, %for.body128.i ], [ 0.000000e+00, %for.cond126.preheader.i ]
  %669 = trunc i64 %indvars.iv3980.i to i32
  %mul129.i = shl nsw i32 %669, 1
  %add1303539.i = or i32 %mul129.i, 1
  %idxprom131.i = sext i32 %mul129.i to i64
  %arrayidx132.i = getelementptr inbounds double* %rowAT0.03835.i, i64 %idxprom131.i
  %670 = load double* %arrayidx132.i, align 8, !tbaa !4
  %idxprom133.i = sext i32 %add1303539.i to i64
  %arrayidx134.i = getelementptr inbounds double* %rowAT0.03835.i, i64 %idxprom133.i
  %671 = load double* %arrayidx134.i, align 8, !tbaa !4
  %add.ptr21.sum3540.i = add i64 %idxprom131.i, %idx.ext405.i
  %arrayidx136.i365 = getelementptr inbounds double* %rowAT0.03835.i, i64 %add.ptr21.sum3540.i
  %672 = load double* %arrayidx136.i365, align 8, !tbaa !4
  %add.ptr21.sum3541.i = add i64 %idxprom133.i, %idx.ext405.i
  %arrayidx138.i = getelementptr inbounds double* %rowAT0.03835.i, i64 %add.ptr21.sum3541.i
  %673 = load double* %arrayidx138.i, align 8, !tbaa !4
  %add.ptr24.sum3542.i = add i64 %idxprom131.i, %add.ptr21.sum.i
  %arrayidx140.i366 = getelementptr inbounds double* %rowAT0.03835.i, i64 %add.ptr24.sum3542.i
  %674 = load double* %arrayidx140.i366, align 8, !tbaa !4
  %add.ptr24.sum3543.i = add i64 %idxprom133.i, %add.ptr21.sum.i
  %arrayidx142.i367 = getelementptr inbounds double* %rowAT0.03835.i, i64 %add.ptr24.sum3543.i
  %675 = load double* %arrayidx142.i367, align 8, !tbaa !4
  %arrayidx144.i368 = getelementptr inbounds i32* %655, i64 %indvars.iv3980.i
  %676 = load i32* %arrayidx144.i368, align 4, !tbaa !3
  %mul145.i = shl nsw i32 %676, 1
  %add1463544.i = or i32 %mul145.i, 1
  %idxprom147.i = sext i32 %mul145.i to i64
  %arrayidx148.i369 = getelementptr inbounds double* %colX0.03934.i, i64 %idxprom147.i
  %677 = load double* %arrayidx148.i369, align 8, !tbaa !4
  %idxprom149.i = sext i32 %add1463544.i to i64
  %arrayidx150.i = getelementptr inbounds double* %colX0.03934.i, i64 %idxprom149.i
  %678 = load double* %arrayidx150.i, align 8, !tbaa !4
  %add.ptr.sum3545.i = add i64 %idxprom147.i, %idx.ext.i326
  %arrayidx152.i370 = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr.sum3545.i
  %679 = load double* %arrayidx152.i370, align 8, !tbaa !4
  %add.ptr.sum3546.i = add i64 %idxprom149.i, %idx.ext.i326
  %arrayidx154.i371 = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr.sum3546.i
  %680 = load double* %arrayidx154.i371, align 8, !tbaa !4
  %add.ptr8.sum3547.i = add i64 %idxprom147.i, %add.ptr.sum.i327
  %arrayidx156.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr8.sum3547.i
  %681 = load double* %arrayidx156.i, align 8, !tbaa !4
  %add.ptr8.sum3548.i = add i64 %idxprom149.i, %add.ptr.sum.i327
  %arrayidx158.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr8.sum3548.i
  %682 = load double* %arrayidx158.i, align 8, !tbaa !4
  %mul159.i = fmul double %670, %677
  %mul160.i = fmul double %671, %678
  %sub161.i372 = fsub double %mul159.i, %mul160.i
  %add162.i = fadd double %rsum00.13763.i, %sub161.i372
  %mul163.i = fmul double %670, %678
  %mul164.i = fmul double %671, %677
  %add165.i = fadd double %mul164.i, %mul163.i
  %add166.i373 = fadd double %isum00.13772.i, %add165.i
  %mul167.i = fmul double %670, %679
  %mul168.i = fmul double %671, %680
  %sub169.i = fsub double %mul167.i, %mul168.i
  %add170.i = fadd double %rsum01.13762.i, %sub169.i
  %mul171.i = fmul double %670, %680
  %mul172.i = fmul double %671, %679
  %add173.i = fadd double %mul172.i, %mul171.i
  %add174.i = fadd double %isum01.13771.i, %add173.i
  %mul175.i = fmul double %670, %681
  %mul176.i = fmul double %671, %682
  %sub177.i = fsub double %mul175.i, %mul176.i
  %add178.i = fadd double %rsum02.13761.i, %sub177.i
  %mul179.i = fmul double %670, %682
  %mul180.i = fmul double %671, %681
  %add181.i374 = fadd double %mul180.i, %mul179.i
  %add182.i = fadd double %isum02.13770.i, %add181.i374
  %mul183.i = fmul double %672, %677
  %mul184.i = fmul double %673, %678
  %sub185.i = fsub double %mul183.i, %mul184.i
  %add186.i = fadd double %rsum10.13760.i, %sub185.i
  %mul187.i375 = fmul double %672, %678
  %mul188.i = fmul double %673, %677
  %add189.i = fadd double %mul188.i, %mul187.i375
  %add190.i = fadd double %isum10.13769.i, %add189.i
  %mul191.i = fmul double %672, %679
  %mul192.i = fmul double %673, %680
  %sub193.i = fsub double %mul191.i, %mul192.i
  %add194.i = fadd double %rsum11.13759.i, %sub193.i
  %mul195.i = fmul double %672, %680
  %mul196.i = fmul double %673, %679
  %add197.i = fadd double %mul196.i, %mul195.i
  %add198.i = fadd double %isum11.13768.i, %add197.i
  %mul199.i376 = fmul double %672, %681
  %mul200.i377 = fmul double %673, %682
  %sub201.i = fsub double %mul199.i376, %mul200.i377
  %add202.i378 = fadd double %rsum12.13758.i, %sub201.i
  %mul203.i379 = fmul double %672, %682
  %mul204.i = fmul double %673, %681
  %add205.i = fadd double %mul204.i, %mul203.i379
  %add206.i380 = fadd double %isum12.13767.i, %add205.i
  %mul207.i381 = fmul double %674, %677
  %mul208.i = fmul double %675, %678
  %sub209.i = fsub double %mul207.i381, %mul208.i
  %add210.i382 = fadd double %rsum20.13757.i, %sub209.i
  %mul211.i = fmul double %674, %678
  %mul212.i383 = fmul double %675, %677
  %add213.i = fadd double %mul212.i383, %mul211.i
  %add214.i384 = fadd double %isum20.13766.i, %add213.i
  %mul215.i = fmul double %674, %679
  %mul216.i = fmul double %675, %680
  %sub217.i385 = fsub double %mul215.i, %mul216.i
  %add218.i = fadd double %rsum21.13756.i, %sub217.i385
  %mul219.i386 = fmul double %674, %680
  %mul220.i = fmul double %675, %679
  %add221.i = fadd double %mul220.i, %mul219.i386
  %add222.i = fadd double %isum21.13765.i, %add221.i
  %mul223.i = fmul double %674, %681
  %mul224.i = fmul double %675, %682
  %sub225.i = fsub double %mul223.i, %mul224.i
  %add226.i = fadd double %rsum22.13755.i, %sub225.i
  %mul227.i = fmul double %674, %682
  %mul228.i = fmul double %675, %681
  %add229.i = fadd double %mul228.i, %mul227.i
  %add230.i = fadd double %isum22.13764.i, %add229.i
  %indvars.iv.next3981.i = add i64 %indvars.iv3980.i, 1
  %lftr.wideiv1247 = trunc i64 %indvars.iv.next3981.i to i32
  %exitcond1248 = icmp eq i32 %lftr.wideiv1247, %653
  br i1 %exitcond1248, label %if.end234.i, label %for.body128.i

if.end234.i:                                      ; preds = %for.body29.i, %for.body128.i, %for.cond126.preheader.i, %for.cond27.preheader.i
  %rsum22.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add226.i, %for.body128.i ], [ %add120.i, %for.body29.i ]
  %rsum21.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add218.i, %for.body128.i ], [ %add112.i, %for.body29.i ]
  %rsum20.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add210.i382, %for.body128.i ], [ %add104.i, %for.body29.i ]
  %rsum12.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add202.i378, %for.body128.i ], [ %add96.i, %for.body29.i ]
  %rsum11.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add194.i, %for.body128.i ], [ %add88.i, %for.body29.i ]
  %rsum10.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add186.i, %for.body128.i ], [ %add80.i350, %for.body29.i ]
  %rsum02.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add178.i, %for.body128.i ], [ %add72.i346, %for.body29.i ]
  %rsum01.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add170.i, %for.body128.i ], [ %add64.i, %for.body29.i ]
  %rsum00.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add162.i, %for.body128.i ], [ %add56.i, %for.body29.i ]
  %isum22.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add230.i, %for.body128.i ], [ %add124.i, %for.body29.i ]
  %isum21.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add222.i, %for.body128.i ], [ %add116.i, %for.body29.i ]
  %isum20.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add214.i384, %for.body128.i ], [ %add108.i, %for.body29.i ]
  %isum12.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add206.i380, %for.body128.i ], [ %add100.i, %for.body29.i ]
  %isum11.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add198.i, %for.body128.i ], [ %add92.i, %for.body29.i ]
  %isum10.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add190.i, %for.body128.i ], [ %add84.i354, %for.body29.i ]
  %isum02.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add182.i, %for.body128.i ], [ %add76.i348, %for.body29.i ]
  %isum01.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add174.i, %for.body128.i ], [ %add68.i, %for.body29.i ]
  %isum00.2.i = phi double [ 0.000000e+00, %for.cond126.preheader.i ], [ 0.000000e+00, %for.cond27.preheader.i ], [ %add166.i373, %for.body128.i ], [ %add60.i, %for.body29.i ]
  br i1 %cmp567.i, label %if.then236.i, label %if.else297.i

if.then236.i:                                     ; preds = %if.end234.i
  %683 = trunc i64 %indvars.iv3986.i to i32
  %mul237.i387 = shl nsw i32 %683, 1
  %add2383526.i = or i32 %mul237.i387, 1
  %idxprom239.i = sext i32 %mul237.i387 to i64
  %arrayidx240.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom239.i
  %684 = load double* %arrayidx240.i, align 8, !tbaa !4
  %sub241.i = fsub double %684, %rsum00.2.i
  store double %sub241.i, double* %arrayidx240.i, align 8, !tbaa !4
  %idxprom242.i = sext i32 %add2383526.i to i64
  %arrayidx243.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom242.i
  %685 = load double* %arrayidx243.i, align 8, !tbaa !4
  %sub244.i = fsub double %685, %isum00.2.i
  store double %sub244.i, double* %arrayidx243.i, align 8, !tbaa !4
  %add.ptr11.sum3527.i = add i64 %idxprom239.i, %idx.ext10.i
  %arrayidx246.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3527.i
  %686 = load double* %arrayidx246.i, align 8, !tbaa !4
  %sub247.i = fsub double %686, %rsum01.2.i
  store double %sub247.i, double* %arrayidx246.i, align 8, !tbaa !4
  %add.ptr11.sum3528.i = add i64 %idxprom242.i, %idx.ext10.i
  %arrayidx249.i388 = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3528.i
  %687 = load double* %arrayidx249.i388, align 8, !tbaa !4
  %sub250.i389 = fsub double %687, %isum01.2.i
  store double %sub250.i389, double* %arrayidx249.i388, align 8, !tbaa !4
  %add.ptr14.sum3529.i = add i64 %idxprom239.i, %add.ptr11.sum.i328
  %arrayidx252.i390 = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3529.i
  %688 = load double* %arrayidx252.i390, align 8, !tbaa !4
  %sub253.i391 = fsub double %688, %rsum02.2.i
  store double %sub253.i391, double* %arrayidx252.i390, align 8, !tbaa !4
  %add.ptr14.sum3530.i = add i64 %idxprom242.i, %add.ptr11.sum.i328
  %arrayidx255.i392 = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3530.i
  %689 = load double* %arrayidx255.i392, align 8, !tbaa !4
  %sub256.i393 = fsub double %689, %isum02.2.i
  store double %sub256.i393, double* %arrayidx255.i392, align 8, !tbaa !4
  %add257.i394 = add nsw i32 %mul237.i387, 2
  %add258.i = add nsw i32 %add2383526.i, 2
  %idxprom259.i395 = sext i32 %add257.i394 to i64
  %arrayidx260.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom259.i395
  %690 = load double* %arrayidx260.i, align 8, !tbaa !4
  %sub261.i = fsub double %690, %rsum10.2.i
  store double %sub261.i, double* %arrayidx260.i, align 8, !tbaa !4
  %idxprom262.i = sext i32 %add258.i to i64
  %arrayidx263.i396 = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom262.i
  %691 = load double* %arrayidx263.i396, align 8, !tbaa !4
  %sub264.i397 = fsub double %691, %isum10.2.i
  store double %sub264.i397, double* %arrayidx263.i396, align 8, !tbaa !4
  %add.ptr11.sum3531.i = add i64 %idxprom259.i395, %idx.ext10.i
  %arrayidx266.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3531.i
  %692 = load double* %arrayidx266.i, align 8, !tbaa !4
  %sub267.i = fsub double %692, %rsum11.2.i
  store double %sub267.i, double* %arrayidx266.i, align 8, !tbaa !4
  %add.ptr11.sum3532.i = add i64 %idxprom262.i, %idx.ext10.i
  %arrayidx269.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3532.i
  %693 = load double* %arrayidx269.i, align 8, !tbaa !4
  %sub270.i = fsub double %693, %isum11.2.i
  store double %sub270.i, double* %arrayidx269.i, align 8, !tbaa !4
  %add.ptr14.sum3533.i = add i64 %idxprom259.i395, %add.ptr11.sum.i328
  %arrayidx272.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3533.i
  %694 = load double* %arrayidx272.i, align 8, !tbaa !4
  %sub273.i = fsub double %694, %rsum12.2.i
  store double %sub273.i, double* %arrayidx272.i, align 8, !tbaa !4
  %add.ptr14.sum3534.i = add i64 %idxprom262.i, %add.ptr11.sum.i328
  %arrayidx275.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3534.i
  %695 = load double* %arrayidx275.i, align 8, !tbaa !4
  %sub276.i = fsub double %695, %isum12.2.i
  store double %sub276.i, double* %arrayidx275.i, align 8, !tbaa !4
  %add277.i = add nsw i32 %mul237.i387, 4
  %add278.i = add nsw i32 %add2383526.i, 4
  %idxprom279.i = sext i32 %add277.i to i64
  %arrayidx280.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom279.i
  %696 = load double* %arrayidx280.i, align 8, !tbaa !4
  %sub281.i = fsub double %696, %rsum20.2.i
  store double %sub281.i, double* %arrayidx280.i, align 8, !tbaa !4
  %idxprom282.i398 = sext i32 %add278.i to i64
  %arrayidx283.i399 = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom282.i398
  %697 = load double* %arrayidx283.i399, align 8, !tbaa !4
  %sub284.i = fsub double %697, %isum20.2.i
  store double %sub284.i, double* %arrayidx283.i399, align 8, !tbaa !4
  %add.ptr11.sum3535.i = add i64 %idxprom279.i, %idx.ext10.i
  %arrayidx286.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3535.i
  %698 = load double* %arrayidx286.i, align 8, !tbaa !4
  %sub287.i = fsub double %698, %rsum21.2.i
  store double %sub287.i, double* %arrayidx286.i, align 8, !tbaa !4
  %add.ptr11.sum3536.i = add i64 %idxprom282.i398, %idx.ext10.i
  %arrayidx289.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3536.i
  %699 = load double* %arrayidx289.i, align 8, !tbaa !4
  %sub290.i = fsub double %699, %isum21.2.i
  store double %sub290.i, double* %arrayidx289.i, align 8, !tbaa !4
  %add.ptr14.sum3537.i = add i64 %idxprom279.i, %add.ptr11.sum.i328
  %arrayidx292.i400 = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3537.i
  %700 = load double* %arrayidx292.i400, align 8, !tbaa !4
  %sub293.i401 = fsub double %700, %rsum22.2.i
  store double %sub293.i401, double* %arrayidx292.i400, align 8, !tbaa !4
  %add.ptr14.sum3538.i = add i64 %idxprom282.i398, %add.ptr11.sum.i328
  %arrayidx295.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3538.i
  %701 = load double* %arrayidx295.i, align 8, !tbaa !4
  %sub296.i = fsub double %701, %isum22.2.i
  store double %sub296.i, double* %arrayidx295.i, align 8, !tbaa !4
  br label %if.end366.i

if.else297.i:                                     ; preds = %if.end234.i
  %arrayidx299.i = getelementptr inbounds i32* %654, i64 %indvars.iv3986.i
  %702 = load i32* %arrayidx299.i, align 4, !tbaa !3
  %mul300.i = shl nsw i32 %702, 1
  %add3013511.i = or i32 %mul300.i, 1
  %idxprom302.i = sext i32 %mul300.i to i64
  %arrayidx303.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom302.i
  %703 = load double* %arrayidx303.i, align 8, !tbaa !4
  %sub304.i = fsub double %703, %rsum00.2.i
  store double %sub304.i, double* %arrayidx303.i, align 8, !tbaa !4
  %idxprom305.i = sext i32 %add3013511.i to i64
  %arrayidx306.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom305.i
  %704 = load double* %arrayidx306.i, align 8, !tbaa !4
  %sub307.i = fsub double %704, %isum00.2.i
  store double %sub307.i, double* %arrayidx306.i, align 8, !tbaa !4
  %add.ptr11.sum3512.i = add i64 %idxprom302.i, %idx.ext10.i
  %arrayidx309.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3512.i
  %705 = load double* %arrayidx309.i, align 8, !tbaa !4
  %sub310.i = fsub double %705, %rsum01.2.i
  store double %sub310.i, double* %arrayidx309.i, align 8, !tbaa !4
  %add.ptr11.sum3513.i = add i64 %idxprom305.i, %idx.ext10.i
  %arrayidx312.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3513.i
  %706 = load double* %arrayidx312.i, align 8, !tbaa !4
  %sub313.i = fsub double %706, %isum01.2.i
  store double %sub313.i, double* %arrayidx312.i, align 8, !tbaa !4
  %add.ptr14.sum3514.i = add i64 %idxprom302.i, %add.ptr11.sum.i328
  %arrayidx315.i402 = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3514.i
  %707 = load double* %arrayidx315.i402, align 8, !tbaa !4
  %sub316.i403 = fsub double %707, %rsum02.2.i
  store double %sub316.i403, double* %arrayidx315.i402, align 8, !tbaa !4
  %add.ptr14.sum3515.i = add i64 %idxprom305.i, %add.ptr11.sum.i328
  %arrayidx318.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3515.i
  %708 = load double* %arrayidx318.i, align 8, !tbaa !4
  %sub319.i = fsub double %708, %isum02.2.i
  store double %sub319.i, double* %arrayidx318.i, align 8, !tbaa !4
  %709 = add nsw i64 %indvars.iv3986.i, 1
  %arrayidx322.i = getelementptr inbounds i32* %654, i64 %709
  %710 = load i32* %arrayidx322.i, align 4, !tbaa !3
  %mul323.i = shl nsw i32 %710, 1
  %add3243516.i = or i32 %mul323.i, 1
  %idxprom325.i = sext i32 %mul323.i to i64
  %arrayidx326.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom325.i
  %711 = load double* %arrayidx326.i, align 8, !tbaa !4
  %sub327.i = fsub double %711, %rsum10.2.i
  store double %sub327.i, double* %arrayidx326.i, align 8, !tbaa !4
  %idxprom328.i = sext i32 %add3243516.i to i64
  %arrayidx329.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom328.i
  %712 = load double* %arrayidx329.i, align 8, !tbaa !4
  %sub330.i = fsub double %712, %isum10.2.i
  store double %sub330.i, double* %arrayidx329.i, align 8, !tbaa !4
  %add.ptr11.sum3517.i = add i64 %idxprom325.i, %idx.ext10.i
  %arrayidx332.i404 = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3517.i
  %713 = load double* %arrayidx332.i404, align 8, !tbaa !4
  %sub333.i = fsub double %713, %rsum11.2.i
  store double %sub333.i, double* %arrayidx332.i404, align 8, !tbaa !4
  %add.ptr11.sum3518.i = add i64 %idxprom328.i, %idx.ext10.i
  %arrayidx335.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3518.i
  %714 = load double* %arrayidx335.i, align 8, !tbaa !4
  %sub336.i = fsub double %714, %isum11.2.i
  store double %sub336.i, double* %arrayidx335.i, align 8, !tbaa !4
  %add.ptr14.sum3519.i = add i64 %idxprom325.i, %add.ptr11.sum.i328
  %arrayidx338.i405 = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3519.i
  %715 = load double* %arrayidx338.i405, align 8, !tbaa !4
  %sub339.i = fsub double %715, %rsum12.2.i
  store double %sub339.i, double* %arrayidx338.i405, align 8, !tbaa !4
  %add.ptr14.sum3520.i = add i64 %idxprom328.i, %add.ptr11.sum.i328
  %arrayidx341.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3520.i
  %716 = load double* %arrayidx341.i, align 8, !tbaa !4
  %sub342.i = fsub double %716, %isum12.2.i
  store double %sub342.i, double* %arrayidx341.i, align 8, !tbaa !4
  %717 = add nsw i64 %indvars.iv3986.i, 2
  %arrayidx345.i = getelementptr inbounds i32* %654, i64 %717
  %718 = load i32* %arrayidx345.i, align 4, !tbaa !3
  %mul346.i = shl nsw i32 %718, 1
  %add3473521.i = or i32 %mul346.i, 1
  %idxprom348.i = sext i32 %mul346.i to i64
  %arrayidx349.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom348.i
  %719 = load double* %arrayidx349.i, align 8, !tbaa !4
  %sub350.i = fsub double %719, %rsum20.2.i
  store double %sub350.i, double* %arrayidx349.i, align 8, !tbaa !4
  %idxprom351.i = sext i32 %add3473521.i to i64
  %arrayidx352.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom351.i
  %720 = load double* %arrayidx352.i, align 8, !tbaa !4
  %sub353.i = fsub double %720, %isum20.2.i
  store double %sub353.i, double* %arrayidx352.i, align 8, !tbaa !4
  %add.ptr11.sum3522.i = add i64 %idxprom348.i, %idx.ext10.i
  %arrayidx355.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3522.i
  %721 = load double* %arrayidx355.i, align 8, !tbaa !4
  %sub356.i = fsub double %721, %rsum21.2.i
  store double %sub356.i, double* %arrayidx355.i, align 8, !tbaa !4
  %add.ptr11.sum3523.i = add i64 %idxprom351.i, %idx.ext10.i
  %arrayidx358.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3523.i
  %722 = load double* %arrayidx358.i, align 8, !tbaa !4
  %sub359.i = fsub double %722, %isum21.2.i
  store double %sub359.i, double* %arrayidx358.i, align 8, !tbaa !4
  %add.ptr14.sum3524.i = add i64 %idxprom348.i, %add.ptr11.sum.i328
  %arrayidx361.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3524.i
  %723 = load double* %arrayidx361.i, align 8, !tbaa !4
  %sub362.i = fsub double %723, %rsum22.2.i
  store double %sub362.i, double* %arrayidx361.i, align 8, !tbaa !4
  %add.ptr14.sum3525.i = add i64 %idxprom351.i, %add.ptr11.sum.i328
  %arrayidx364.i406 = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3525.i
  %724 = load double* %arrayidx364.i406, align 8, !tbaa !4
  %sub365.i = fsub double %724, %isum22.2.i
  store double %sub365.i, double* %arrayidx364.i406, align 8, !tbaa !4
  br label %if.end366.i

if.end366.i:                                      ; preds = %if.else297.i, %if.then236.i
  %add.ptr369.i = getelementptr inbounds double* %rowAT0.03835.i, i64 %add.ptr24.sum.i
  %indvars.iv.next3987.i = add i64 %indvars.iv3986.i, 3
  %add371.i = add nsw i32 %irowAT.03834.i, 3
  %725 = trunc i64 %indvars.iv.next3987.i to i32
  %cmp17.i407 = icmp slt i32 %725, %sub163832.i
  br i1 %cmp17.i407, label %for.body18.i, label %for.end372.i

for.end372.i:                                     ; preds = %if.end366.i, %for.body.i331
  %rowAT0.0.lcssa.i408 = phi double* [ %651, %for.body.i331 ], [ %add.ptr369.i, %if.end366.i ]
  %irowAT.0.lcssa.i409 = phi i32 [ 0, %for.body.i331 ], [ %add371.i, %if.end366.i ]
  %cmp374.i = icmp eq i32 %irowAT.0.lcssa.i409, %sub163832.i
  br i1 %cmp374.i, label %if.then375.i, label %if.else656.i

if.then375.i:                                     ; preds = %for.end372.i
  br i1 %cmp407.i, label %for.cond409.preheader.i, label %for.cond486.preheader.i410

for.cond409.preheader.i:                          ; preds = %if.then375.i
  br i1 %cmp4873872.i, label %for.body411.i, label %if.end566.i

for.cond486.preheader.i410:                       ; preds = %if.then375.i
  br i1 %cmp4873872.i, label %for.body488.i434, label %if.end566.i

for.body411.i:                                    ; preds = %for.cond409.preheader.i, %for.body411.i
  %indvars.iv4002.i = phi i64 [ %indvars.iv.next4003.i, %for.body411.i ], [ 0, %for.cond409.preheader.i ]
  %rsum12391.03911.i = phi double [ %add477.i, %for.body411.i ], [ 0.000000e+00, %for.cond409.preheader.i ]
  %rsum11390.03910.i = phi double [ %add469.i, %for.body411.i ], [ 0.000000e+00, %for.cond409.preheader.i ]
  %rsum10389.03909.i = phi double [ %add461.i417, %for.body411.i ], [ 0.000000e+00, %for.cond409.preheader.i ]
  %rsum02388.03908.i = phi double [ %add453.i, %for.body411.i ], [ 0.000000e+00, %for.cond409.preheader.i ]
  %rsum01387.03907.i = phi double [ %add445.i, %for.body411.i ], [ 0.000000e+00, %for.cond409.preheader.i ]
  %rsum00386.03906.i = phi double [ %add437.i413, %for.body411.i ], [ 0.000000e+00, %for.cond409.preheader.i ]
  %isum12385.03905.i = phi double [ %add481.i, %for.body411.i ], [ 0.000000e+00, %for.cond409.preheader.i ]
  %isum11384.03904.i = phi double [ %add473.i, %for.body411.i ], [ 0.000000e+00, %for.cond409.preheader.i ]
  %isum10383.03903.i = phi double [ %add465.i419, %for.body411.i ], [ 0.000000e+00, %for.cond409.preheader.i ]
  %isum02382.03902.i = phi double [ %add457.i415, %for.body411.i ], [ 0.000000e+00, %for.cond409.preheader.i ]
  %isum01381.03901.i = phi double [ %add449.i, %for.body411.i ], [ 0.000000e+00, %for.cond409.preheader.i ]
  %isum00380.03900.i = phi double [ %add441.i, %for.body411.i ], [ 0.000000e+00, %for.cond409.preheader.i ]
  %726 = trunc i64 %indvars.iv4002.i to i32
  %mul412.i = shl nsw i32 %726, 1
  %add4133504.i = or i32 %mul412.i, 1
  %idxprom414.i = sext i32 %mul412.i to i64
  %arrayidx415.i = getelementptr inbounds double* %rowAT0.0.lcssa.i408, i64 %idxprom414.i
  %727 = load double* %arrayidx415.i, align 8, !tbaa !4
  %idxprom416.i = sext i32 %add4133504.i to i64
  %arrayidx417.i = getelementptr inbounds double* %rowAT0.0.lcssa.i408, i64 %idxprom416.i
  %728 = load double* %arrayidx417.i, align 8, !tbaa !4
  %add.ptr406.sum3505.i = add i64 %idxprom414.i, %idx.ext405.i
  %arrayidx419.i = getelementptr inbounds double* %rowAT0.0.lcssa.i408, i64 %add.ptr406.sum3505.i
  %729 = load double* %arrayidx419.i, align 8, !tbaa !4
  %add.ptr406.sum3506.i = add i64 %idxprom416.i, %idx.ext405.i
  %arrayidx421.i = getelementptr inbounds double* %rowAT0.0.lcssa.i408, i64 %add.ptr406.sum3506.i
  %730 = load double* %arrayidx421.i, align 8, !tbaa !4
  %arrayidx423.i = getelementptr inbounds double* %colX0.03934.i, i64 %idxprom414.i
  %731 = load double* %arrayidx423.i, align 8, !tbaa !4
  %arrayidx425.i = getelementptr inbounds double* %colX0.03934.i, i64 %idxprom416.i
  %732 = load double* %arrayidx425.i, align 8, !tbaa !4
  %add.ptr.sum3507.i = add i64 %idxprom414.i, %idx.ext.i326
  %arrayidx427.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr.sum3507.i
  %733 = load double* %arrayidx427.i, align 8, !tbaa !4
  %add.ptr.sum3508.i = add i64 %idxprom416.i, %idx.ext.i326
  %arrayidx429.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr.sum3508.i
  %734 = load double* %arrayidx429.i, align 8, !tbaa !4
  %add.ptr8.sum3509.i = add i64 %idxprom414.i, %add.ptr.sum.i327
  %arrayidx431.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr8.sum3509.i
  %735 = load double* %arrayidx431.i, align 8, !tbaa !4
  %add.ptr8.sum3510.i = add i64 %idxprom416.i, %add.ptr.sum.i327
  %arrayidx433.i411 = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr8.sum3510.i
  %736 = load double* %arrayidx433.i411, align 8, !tbaa !4
  %mul434.i = fmul double %727, %731
  %mul435.i412 = fmul double %728, %732
  %sub436.i = fsub double %mul434.i, %mul435.i412
  %add437.i413 = fadd double %rsum00386.03906.i, %sub436.i
  %mul438.i414 = fmul double %727, %732
  %mul439.i = fmul double %728, %731
  %add440.i = fadd double %mul439.i, %mul438.i414
  %add441.i = fadd double %isum00380.03900.i, %add440.i
  %mul442.i = fmul double %727, %733
  %mul443.i = fmul double %728, %734
  %sub444.i = fsub double %mul442.i, %mul443.i
  %add445.i = fadd double %rsum01387.03907.i, %sub444.i
  %mul446.i = fmul double %727, %734
  %mul447.i = fmul double %728, %733
  %add448.i = fadd double %mul447.i, %mul446.i
  %add449.i = fadd double %isum01381.03901.i, %add448.i
  %mul450.i = fmul double %727, %735
  %mul451.i = fmul double %728, %736
  %sub452.i = fsub double %mul450.i, %mul451.i
  %add453.i = fadd double %rsum02388.03908.i, %sub452.i
  %mul454.i = fmul double %727, %736
  %mul455.i = fmul double %728, %735
  %add456.i = fadd double %mul455.i, %mul454.i
  %add457.i415 = fadd double %isum02382.03902.i, %add456.i
  %mul458.i416 = fmul double %729, %731
  %mul459.i = fmul double %730, %732
  %sub460.i = fsub double %mul458.i416, %mul459.i
  %add461.i417 = fadd double %rsum10389.03909.i, %sub460.i
  %mul462.i418 = fmul double %729, %732
  %mul463.i = fmul double %730, %731
  %add464.i = fadd double %mul463.i, %mul462.i418
  %add465.i419 = fadd double %isum10383.03903.i, %add464.i
  %mul466.i420 = fmul double %729, %733
  %mul467.i = fmul double %730, %734
  %sub468.i = fsub double %mul466.i420, %mul467.i
  %add469.i = fadd double %rsum11390.03910.i, %sub468.i
  %mul470.i = fmul double %729, %734
  %mul471.i = fmul double %730, %733
  %add472.i = fadd double %mul471.i, %mul470.i
  %add473.i = fadd double %isum11384.03904.i, %add472.i
  %mul474.i = fmul double %729, %735
  %mul475.i = fmul double %730, %736
  %sub476.i421 = fsub double %mul474.i, %mul475.i
  %add477.i = fadd double %rsum12391.03911.i, %sub476.i421
  %mul478.i = fmul double %729, %736
  %mul479.i = fmul double %730, %735
  %add480.i = fadd double %mul479.i, %mul478.i
  %add481.i = fadd double %isum12385.03905.i, %add480.i
  %indvars.iv.next4003.i = add i64 %indvars.iv4002.i, 1
  %lftr.wideiv1257 = trunc i64 %indvars.iv.next4003.i to i32
  %exitcond1258 = icmp eq i32 %lftr.wideiv1257, %649
  br i1 %exitcond1258, label %if.end566.i, label %for.body411.i

for.body488.i434:                                 ; preds = %for.cond486.preheader.i410, %for.body488.i434
  %indvars.iv3998.i = phi i64 [ %indvars.iv.next3999.i, %for.body488.i434 ], [ 0, %for.cond486.preheader.i410 ]
  %rsum12391.13884.i = phi double [ %add558.i431, %for.body488.i434 ], [ 0.000000e+00, %for.cond486.preheader.i410 ]
  %rsum11390.13883.i = phi double [ %add550.i, %for.body488.i434 ], [ 0.000000e+00, %for.cond486.preheader.i410 ]
  %rsum10389.13882.i = phi double [ %add542.i, %for.body488.i434 ], [ 0.000000e+00, %for.cond486.preheader.i410 ]
  %rsum02388.13881.i = phi double [ %add534.i, %for.body488.i434 ], [ 0.000000e+00, %for.cond486.preheader.i410 ]
  %rsum01387.13880.i = phi double [ %add526.i429, %for.body488.i434 ], [ 0.000000e+00, %for.cond486.preheader.i410 ]
  %rsum00386.13879.i = phi double [ %add518.i, %for.body488.i434 ], [ 0.000000e+00, %for.cond486.preheader.i410 ]
  %isum12385.13878.i = phi double [ %add562.i433, %for.body488.i434 ], [ 0.000000e+00, %for.cond486.preheader.i410 ]
  %isum11384.13877.i = phi double [ %add554.i, %for.body488.i434 ], [ 0.000000e+00, %for.cond486.preheader.i410 ]
  %isum10383.13876.i = phi double [ %add546.i, %for.body488.i434 ], [ 0.000000e+00, %for.cond486.preheader.i410 ]
  %isum02382.13875.i = phi double [ %add538.i, %for.body488.i434 ], [ 0.000000e+00, %for.cond486.preheader.i410 ]
  %isum01381.13874.i = phi double [ %add530.i, %for.body488.i434 ], [ 0.000000e+00, %for.cond486.preheader.i410 ]
  %isum00380.13873.i = phi double [ %add522.i, %for.body488.i434 ], [ 0.000000e+00, %for.cond486.preheader.i410 ]
  %737 = trunc i64 %indvars.iv3998.i to i32
  %mul489.i = shl nsw i32 %737, 1
  %add4903497.i = or i32 %mul489.i, 1
  %idxprom491.i = sext i32 %mul489.i to i64
  %arrayidx492.i422 = getelementptr inbounds double* %rowAT0.0.lcssa.i408, i64 %idxprom491.i
  %738 = load double* %arrayidx492.i422, align 8, !tbaa !4
  %idxprom493.i = sext i32 %add4903497.i to i64
  %arrayidx494.i423 = getelementptr inbounds double* %rowAT0.0.lcssa.i408, i64 %idxprom493.i
  %739 = load double* %arrayidx494.i423, align 8, !tbaa !4
  %add.ptr406.sum.i = add i64 %idxprom491.i, %idx.ext405.i
  %arrayidx496.i = getelementptr inbounds double* %rowAT0.0.lcssa.i408, i64 %add.ptr406.sum.i
  %740 = load double* %arrayidx496.i, align 8, !tbaa !4
  %add.ptr406.sum3498.i = add i64 %idxprom493.i, %idx.ext405.i
  %arrayidx498.i424 = getelementptr inbounds double* %rowAT0.0.lcssa.i408, i64 %add.ptr406.sum3498.i
  %741 = load double* %arrayidx498.i424, align 8, !tbaa !4
  %arrayidx500.i425 = getelementptr inbounds i32* %655, i64 %indvars.iv3998.i
  %742 = load i32* %arrayidx500.i425, align 4, !tbaa !3
  %mul501.i = shl nsw i32 %742, 1
  %add5023499.i = or i32 %mul501.i, 1
  %idxprom503.i = sext i32 %mul501.i to i64
  %arrayidx504.i = getelementptr inbounds double* %colX0.03934.i, i64 %idxprom503.i
  %743 = load double* %arrayidx504.i, align 8, !tbaa !4
  %idxprom505.i = sext i32 %add5023499.i to i64
  %arrayidx506.i = getelementptr inbounds double* %colX0.03934.i, i64 %idxprom505.i
  %744 = load double* %arrayidx506.i, align 8, !tbaa !4
  %add.ptr.sum3500.i = add i64 %idxprom503.i, %idx.ext.i326
  %arrayidx508.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr.sum3500.i
  %745 = load double* %arrayidx508.i, align 8, !tbaa !4
  %add.ptr.sum3501.i = add i64 %idxprom505.i, %idx.ext.i326
  %arrayidx510.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr.sum3501.i
  %746 = load double* %arrayidx510.i, align 8, !tbaa !4
  %add.ptr8.sum3502.i = add i64 %idxprom503.i, %add.ptr.sum.i327
  %arrayidx512.i426 = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr8.sum3502.i
  %747 = load double* %arrayidx512.i426, align 8, !tbaa !4
  %add.ptr8.sum3503.i = add i64 %idxprom505.i, %add.ptr.sum.i327
  %arrayidx514.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr8.sum3503.i
  %748 = load double* %arrayidx514.i, align 8, !tbaa !4
  %mul515.i = fmul double %738, %743
  %mul516.i = fmul double %739, %744
  %sub517.i = fsub double %mul515.i, %mul516.i
  %add518.i = fadd double %rsum00386.13879.i, %sub517.i
  %mul519.i427 = fmul double %738, %744
  %mul520.i = fmul double %739, %743
  %add521.i = fadd double %mul520.i, %mul519.i427
  %add522.i = fadd double %isum00380.13873.i, %add521.i
  %mul523.i = fmul double %738, %745
  %mul524.i428 = fmul double %739, %746
  %sub525.i = fsub double %mul523.i, %mul524.i428
  %add526.i429 = fadd double %rsum01387.13880.i, %sub525.i
  %mul527.i = fmul double %738, %746
  %mul528.i = fmul double %739, %745
  %add529.i = fadd double %mul528.i, %mul527.i
  %add530.i = fadd double %isum01381.13874.i, %add529.i
  %mul531.i = fmul double %738, %747
  %mul532.i = fmul double %739, %748
  %sub533.i = fsub double %mul531.i, %mul532.i
  %add534.i = fadd double %rsum02388.13881.i, %sub533.i
  %mul535.i = fmul double %738, %748
  %mul536.i = fmul double %739, %747
  %add537.i = fadd double %mul536.i, %mul535.i
  %add538.i = fadd double %isum02382.13875.i, %add537.i
  %mul539.i = fmul double %740, %743
  %mul540.i = fmul double %741, %744
  %sub541.i = fsub double %mul539.i, %mul540.i
  %add542.i = fadd double %rsum10389.13882.i, %sub541.i
  %mul543.i = fmul double %740, %744
  %mul544.i = fmul double %741, %743
  %add545.i = fadd double %mul544.i, %mul543.i
  %add546.i = fadd double %isum10383.13876.i, %add545.i
  %mul547.i = fmul double %740, %745
  %mul548.i = fmul double %741, %746
  %sub549.i = fsub double %mul547.i, %mul548.i
  %add550.i = fadd double %rsum11390.13883.i, %sub549.i
  %mul551.i = fmul double %740, %746
  %mul552.i = fmul double %741, %745
  %add553.i = fadd double %mul552.i, %mul551.i
  %add554.i = fadd double %isum11384.13877.i, %add553.i
  %mul555.i430 = fmul double %740, %747
  %mul556.i = fmul double %741, %748
  %sub557.i = fsub double %mul555.i430, %mul556.i
  %add558.i431 = fadd double %rsum12391.13884.i, %sub557.i
  %mul559.i432 = fmul double %740, %748
  %mul560.i = fmul double %741, %747
  %add561.i = fadd double %mul560.i, %mul559.i432
  %add562.i433 = fadd double %isum12385.13878.i, %add561.i
  %indvars.iv.next3999.i = add i64 %indvars.iv3998.i, 1
  %lftr.wideiv1255 = trunc i64 %indvars.iv.next3999.i to i32
  %exitcond1256 = icmp eq i32 %lftr.wideiv1255, %653
  br i1 %exitcond1256, label %if.end566.i, label %for.body488.i434

if.end566.i:                                      ; preds = %for.body411.i, %for.body488.i434, %for.cond486.preheader.i410, %for.cond409.preheader.i
  %isum00380.2.i = phi double [ 0.000000e+00, %for.cond486.preheader.i410 ], [ 0.000000e+00, %for.cond409.preheader.i ], [ %add522.i, %for.body488.i434 ], [ %add441.i, %for.body411.i ]
  %isum01381.2.i = phi double [ 0.000000e+00, %for.cond486.preheader.i410 ], [ 0.000000e+00, %for.cond409.preheader.i ], [ %add530.i, %for.body488.i434 ], [ %add449.i, %for.body411.i ]
  %isum02382.2.i = phi double [ 0.000000e+00, %for.cond486.preheader.i410 ], [ 0.000000e+00, %for.cond409.preheader.i ], [ %add538.i, %for.body488.i434 ], [ %add457.i415, %for.body411.i ]
  %isum10383.2.i = phi double [ 0.000000e+00, %for.cond486.preheader.i410 ], [ 0.000000e+00, %for.cond409.preheader.i ], [ %add546.i, %for.body488.i434 ], [ %add465.i419, %for.body411.i ]
  %isum11384.2.i = phi double [ 0.000000e+00, %for.cond486.preheader.i410 ], [ 0.000000e+00, %for.cond409.preheader.i ], [ %add554.i, %for.body488.i434 ], [ %add473.i, %for.body411.i ]
  %isum12385.2.i = phi double [ 0.000000e+00, %for.cond486.preheader.i410 ], [ 0.000000e+00, %for.cond409.preheader.i ], [ %add562.i433, %for.body488.i434 ], [ %add481.i, %for.body411.i ]
  %rsum00386.2.i = phi double [ 0.000000e+00, %for.cond486.preheader.i410 ], [ 0.000000e+00, %for.cond409.preheader.i ], [ %add518.i, %for.body488.i434 ], [ %add437.i413, %for.body411.i ]
  %rsum01387.2.i = phi double [ 0.000000e+00, %for.cond486.preheader.i410 ], [ 0.000000e+00, %for.cond409.preheader.i ], [ %add526.i429, %for.body488.i434 ], [ %add445.i, %for.body411.i ]
  %rsum02388.2.i = phi double [ 0.000000e+00, %for.cond486.preheader.i410 ], [ 0.000000e+00, %for.cond409.preheader.i ], [ %add534.i, %for.body488.i434 ], [ %add453.i, %for.body411.i ]
  %rsum10389.2.i = phi double [ 0.000000e+00, %for.cond486.preheader.i410 ], [ 0.000000e+00, %for.cond409.preheader.i ], [ %add542.i, %for.body488.i434 ], [ %add461.i417, %for.body411.i ]
  %rsum11390.2.i = phi double [ 0.000000e+00, %for.cond486.preheader.i410 ], [ 0.000000e+00, %for.cond409.preheader.i ], [ %add550.i, %for.body488.i434 ], [ %add469.i, %for.body411.i ]
  %rsum12391.2.i = phi double [ 0.000000e+00, %for.cond486.preheader.i410 ], [ 0.000000e+00, %for.cond409.preheader.i ], [ %add558.i431, %for.body488.i434 ], [ %add477.i, %for.body411.i ]
  br i1 %cmp567.i, label %if.then568.i, label %if.else609.i

if.then568.i:                                     ; preds = %if.end566.i
  %arrayidx572.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom571.i
  %749 = load double* %arrayidx572.i, align 8, !tbaa !4
  %sub573.i = fsub double %749, %rsum00386.2.i
  store double %sub573.i, double* %arrayidx572.i, align 8, !tbaa !4
  %arrayidx575.i435 = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom574.i
  %750 = load double* %arrayidx575.i435, align 8, !tbaa !4
  %sub576.i = fsub double %750, %isum00380.2.i
  store double %sub576.i, double* %arrayidx575.i435, align 8, !tbaa !4
  %arrayidx578.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3489.i
  %751 = load double* %arrayidx578.i, align 8, !tbaa !4
  %sub579.i = fsub double %751, %rsum01387.2.i
  store double %sub579.i, double* %arrayidx578.i, align 8, !tbaa !4
  %arrayidx581.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3490.i
  %752 = load double* %arrayidx581.i, align 8, !tbaa !4
  %sub582.i = fsub double %752, %isum01381.2.i
  store double %sub582.i, double* %arrayidx581.i, align 8, !tbaa !4
  %arrayidx584.i436 = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3491.i
  %753 = load double* %arrayidx584.i436, align 8, !tbaa !4
  %sub585.i437 = fsub double %753, %rsum02388.2.i
  store double %sub585.i437, double* %arrayidx584.i436, align 8, !tbaa !4
  %arrayidx587.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3492.i
  %754 = load double* %arrayidx587.i, align 8, !tbaa !4
  %sub588.i = fsub double %754, %isum02382.2.i
  store double %sub588.i, double* %arrayidx587.i, align 8, !tbaa !4
  %arrayidx592.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom591.i
  %755 = load double* %arrayidx592.i, align 8, !tbaa !4
  %sub593.i438 = fsub double %755, %rsum10389.2.i
  store double %sub593.i438, double* %arrayidx592.i, align 8, !tbaa !4
  %arrayidx595.i440 = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom594.i439
  %756 = load double* %arrayidx595.i440, align 8, !tbaa !4
  %sub596.i441 = fsub double %756, %isum10383.2.i
  store double %sub596.i441, double* %arrayidx595.i440, align 8, !tbaa !4
  %arrayidx598.i442 = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3493.i
  %757 = load double* %arrayidx598.i442, align 8, !tbaa !4
  %sub599.i443 = fsub double %757, %rsum11390.2.i
  store double %sub599.i443, double* %arrayidx598.i442, align 8, !tbaa !4
  %arrayidx601.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3494.i
  %758 = load double* %arrayidx601.i, align 8, !tbaa !4
  %sub602.i = fsub double %758, %isum11384.2.i
  store double %sub602.i, double* %arrayidx601.i, align 8, !tbaa !4
  %arrayidx604.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3495.i
  %759 = load double* %arrayidx604.i, align 8, !tbaa !4
  %sub605.i = fsub double %759, %rsum12391.2.i
  store double %sub605.i, double* %arrayidx604.i, align 8, !tbaa !4
  %arrayidx607.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3496.i
  %760 = load double* %arrayidx607.i, align 8, !tbaa !4
  %sub608.i = fsub double %760, %isum12385.2.i
  store double %sub608.i, double* %arrayidx607.i, align 8, !tbaa !4
  br label %if.end831.i

if.else609.i:                                     ; preds = %if.end566.i
  %761 = load i32* %arrayidx611.i, align 4, !tbaa !3
  %mul612.i = shl nsw i32 %761, 1
  %add6133478.i = or i32 %mul612.i, 1
  %idxprom614.i = sext i32 %mul612.i to i64
  %arrayidx615.i444 = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom614.i
  %762 = load double* %arrayidx615.i444, align 8, !tbaa !4
  %sub616.i445 = fsub double %762, %rsum00386.2.i
  store double %sub616.i445, double* %arrayidx615.i444, align 8, !tbaa !4
  %idxprom617.i446 = sext i32 %add6133478.i to i64
  %arrayidx618.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom617.i446
  %763 = load double* %arrayidx618.i, align 8, !tbaa !4
  %sub619.i = fsub double %763, %isum00380.2.i
  store double %sub619.i, double* %arrayidx618.i, align 8, !tbaa !4
  %add.ptr11.sum3479.i = add i64 %idxprom614.i, %idx.ext10.i
  %arrayidx621.i447 = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3479.i
  %764 = load double* %arrayidx621.i447, align 8, !tbaa !4
  %sub622.i448 = fsub double %764, %rsum01387.2.i
  store double %sub622.i448, double* %arrayidx621.i447, align 8, !tbaa !4
  %add.ptr11.sum3480.i = add i64 %idxprom617.i446, %idx.ext10.i
  %arrayidx624.i449 = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3480.i
  %765 = load double* %arrayidx624.i449, align 8, !tbaa !4
  %sub625.i450 = fsub double %765, %isum01381.2.i
  store double %sub625.i450, double* %arrayidx624.i449, align 8, !tbaa !4
  %add.ptr14.sum3481.i = add i64 %idxprom614.i, %add.ptr11.sum.i328
  %arrayidx627.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3481.i
  %766 = load double* %arrayidx627.i, align 8, !tbaa !4
  %sub628.i451 = fsub double %766, %rsum02388.2.i
  store double %sub628.i451, double* %arrayidx627.i, align 8, !tbaa !4
  %add.ptr14.sum3482.i = add i64 %idxprom617.i446, %add.ptr11.sum.i328
  %arrayidx630.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3482.i
  %767 = load double* %arrayidx630.i, align 8, !tbaa !4
  %sub631.i = fsub double %767, %isum02382.2.i
  store double %sub631.i, double* %arrayidx630.i, align 8, !tbaa !4
  %768 = load i32* %arrayidx634.i, align 4, !tbaa !3
  %mul635.i = shl nsw i32 %768, 1
  %add6363483.i = or i32 %mul635.i, 1
  %idxprom637.i = sext i32 %mul635.i to i64
  %arrayidx638.i452 = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom637.i
  %769 = load double* %arrayidx638.i452, align 8, !tbaa !4
  %sub639.i = fsub double %769, %rsum10389.2.i
  store double %sub639.i, double* %arrayidx638.i452, align 8, !tbaa !4
  %idxprom640.i = sext i32 %add6363483.i to i64
  %arrayidx641.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom640.i
  %770 = load double* %arrayidx641.i, align 8, !tbaa !4
  %sub642.i = fsub double %770, %isum10383.2.i
  store double %sub642.i, double* %arrayidx641.i, align 8, !tbaa !4
  %add.ptr11.sum3484.i = add i64 %idxprom637.i, %idx.ext10.i
  %arrayidx644.i453 = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3484.i
  %771 = load double* %arrayidx644.i453, align 8, !tbaa !4
  %sub645.i = fsub double %771, %rsum11390.2.i
  store double %sub645.i, double* %arrayidx644.i453, align 8, !tbaa !4
  %add.ptr11.sum3485.i = add i64 %idxprom640.i, %idx.ext10.i
  %arrayidx647.i454 = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3485.i
  %772 = load double* %arrayidx647.i454, align 8, !tbaa !4
  %sub648.i455 = fsub double %772, %isum11384.2.i
  store double %sub648.i455, double* %arrayidx647.i454, align 8, !tbaa !4
  %add.ptr14.sum3486.i = add i64 %idxprom637.i, %add.ptr11.sum.i328
  %arrayidx650.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3486.i
  %773 = load double* %arrayidx650.i, align 8, !tbaa !4
  %sub651.i = fsub double %773, %rsum12391.2.i
  store double %sub651.i, double* %arrayidx650.i, align 8, !tbaa !4
  %add.ptr14.sum3487.i = add i64 %idxprom640.i, %add.ptr11.sum.i328
  %arrayidx653.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3487.i
  %774 = load double* %arrayidx653.i, align 8, !tbaa !4
  %sub654.i = fsub double %774, %isum12385.2.i
  store double %sub654.i, double* %arrayidx653.i, align 8, !tbaa !4
  br label %if.end831.i

if.else656.i:                                     ; preds = %for.end372.i
  %cmp658.i = icmp eq i32 %irowAT.0.lcssa.i409, %add632.i
  br i1 %cmp658.i, label %if.then659.i, label %if.end831.i

if.then659.i:                                     ; preds = %if.else656.i
  br i1 %cmp407.i, label %for.cond682.preheader.i, label %for.cond731.preheader.i

for.cond682.preheader.i:                          ; preds = %if.then659.i
  br i1 %cmp4873872.i, label %for.body684.i, label %if.end783.i

for.cond731.preheader.i:                          ; preds = %if.then659.i
  br i1 %cmp4873872.i, label %for.body733.i, label %if.end783.i

for.body684.i:                                    ; preds = %for.cond682.preheader.i, %for.body684.i
  %indvars.iv3994.i = phi i64 [ %indvars.iv.next3995.i, %for.body684.i ], [ 0, %for.cond682.preheader.i ]
  %rsum02667.03864.i = phi double [ %add722.i, %for.body684.i ], [ 0.000000e+00, %for.cond682.preheader.i ]
  %rsum01666.03863.i = phi double [ %add714.i, %for.body684.i ], [ 0.000000e+00, %for.cond682.preheader.i ]
  %rsum00665.03862.i = phi double [ %add706.i, %for.body684.i ], [ 0.000000e+00, %for.cond682.preheader.i ]
  %isum02664.03861.i = phi double [ %add726.i, %for.body684.i ], [ 0.000000e+00, %for.cond682.preheader.i ]
  %isum01663.03860.i = phi double [ %add718.i, %for.body684.i ], [ 0.000000e+00, %for.cond682.preheader.i ]
  %isum00662.03859.i = phi double [ %add710.i, %for.body684.i ], [ 0.000000e+00, %for.cond682.preheader.i ]
  %775 = trunc i64 %indvars.iv3994.i to i32
  %mul685.i = shl nsw i32 %775, 1
  %add6863473.i = or i32 %mul685.i, 1
  %idxprom687.i = sext i32 %mul685.i to i64
  %arrayidx688.i = getelementptr inbounds double* %rowAT0.0.lcssa.i408, i64 %idxprom687.i
  %776 = load double* %arrayidx688.i, align 8, !tbaa !4
  %idxprom689.i = sext i32 %add6863473.i to i64
  %arrayidx690.i = getelementptr inbounds double* %rowAT0.0.lcssa.i408, i64 %idxprom689.i
  %777 = load double* %arrayidx690.i, align 8, !tbaa !4
  %arrayidx692.i = getelementptr inbounds double* %colX0.03934.i, i64 %idxprom687.i
  %778 = load double* %arrayidx692.i, align 8, !tbaa !4
  %arrayidx694.i = getelementptr inbounds double* %colX0.03934.i, i64 %idxprom689.i
  %779 = load double* %arrayidx694.i, align 8, !tbaa !4
  %add.ptr.sum3474.i = add i64 %idxprom687.i, %idx.ext.i326
  %arrayidx696.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr.sum3474.i
  %780 = load double* %arrayidx696.i, align 8, !tbaa !4
  %add.ptr.sum3475.i = add i64 %idxprom689.i, %idx.ext.i326
  %arrayidx698.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr.sum3475.i
  %781 = load double* %arrayidx698.i, align 8, !tbaa !4
  %add.ptr8.sum3476.i = add i64 %idxprom687.i, %add.ptr.sum.i327
  %arrayidx700.i456 = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr8.sum3476.i
  %782 = load double* %arrayidx700.i456, align 8, !tbaa !4
  %add.ptr8.sum3477.i = add i64 %idxprom689.i, %add.ptr.sum.i327
  %arrayidx702.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr8.sum3477.i
  %783 = load double* %arrayidx702.i, align 8, !tbaa !4
  %mul703.i = fmul double %776, %778
  %mul704.i = fmul double %777, %779
  %sub705.i = fsub double %mul703.i, %mul704.i
  %add706.i = fadd double %rsum00665.03862.i, %sub705.i
  %mul707.i = fmul double %776, %779
  %mul708.i = fmul double %777, %778
  %add709.i = fadd double %mul708.i, %mul707.i
  %add710.i = fadd double %isum00662.03859.i, %add709.i
  %mul711.i = fmul double %776, %780
  %mul712.i = fmul double %777, %781
  %sub713.i = fsub double %mul711.i, %mul712.i
  %add714.i = fadd double %rsum01666.03863.i, %sub713.i
  %mul715.i = fmul double %776, %781
  %mul716.i = fmul double %777, %780
  %add717.i = fadd double %mul716.i, %mul715.i
  %add718.i = fadd double %isum01663.03860.i, %add717.i
  %mul719.i = fmul double %776, %782
  %mul720.i = fmul double %777, %783
  %sub721.i = fsub double %mul719.i, %mul720.i
  %add722.i = fadd double %rsum02667.03864.i, %sub721.i
  %mul723.i = fmul double %776, %783
  %mul724.i = fmul double %777, %782
  %add725.i = fadd double %mul724.i, %mul723.i
  %add726.i = fadd double %isum02664.03861.i, %add725.i
  %indvars.iv.next3995.i = add i64 %indvars.iv3994.i, 1
  %lftr.wideiv1253 = trunc i64 %indvars.iv.next3995.i to i32
  %exitcond1254 = icmp eq i32 %lftr.wideiv1253, %649
  br i1 %exitcond1254, label %if.end783.i, label %for.body684.i

for.body733.i:                                    ; preds = %for.cond731.preheader.i, %for.body733.i
  %indvars.iv3990.i = phi i64 [ %indvars.iv.next3991.i, %for.body733.i ], [ 0, %for.cond731.preheader.i ]
  %rsum02667.13849.i = phi double [ %add775.i, %for.body733.i ], [ 0.000000e+00, %for.cond731.preheader.i ]
  %rsum01666.13848.i = phi double [ %add767.i, %for.body733.i ], [ 0.000000e+00, %for.cond731.preheader.i ]
  %rsum00665.13847.i = phi double [ %add759.i, %for.body733.i ], [ 0.000000e+00, %for.cond731.preheader.i ]
  %isum02664.13846.i = phi double [ %add779.i, %for.body733.i ], [ 0.000000e+00, %for.cond731.preheader.i ]
  %isum01663.13845.i = phi double [ %add771.i, %for.body733.i ], [ 0.000000e+00, %for.cond731.preheader.i ]
  %isum00662.13844.i = phi double [ %add763.i, %for.body733.i ], [ 0.000000e+00, %for.cond731.preheader.i ]
  %784 = trunc i64 %indvars.iv3990.i to i32
  %mul734.i = shl nsw i32 %784, 1
  %add7353467.i = or i32 %mul734.i, 1
  %idxprom736.i = sext i32 %mul734.i to i64
  %arrayidx737.i = getelementptr inbounds double* %rowAT0.0.lcssa.i408, i64 %idxprom736.i
  %785 = load double* %arrayidx737.i, align 8, !tbaa !4
  %idxprom738.i = sext i32 %add7353467.i to i64
  %arrayidx739.i = getelementptr inbounds double* %rowAT0.0.lcssa.i408, i64 %idxprom738.i
  %786 = load double* %arrayidx739.i, align 8, !tbaa !4
  %arrayidx741.i = getelementptr inbounds i32* %655, i64 %indvars.iv3990.i
  %787 = load i32* %arrayidx741.i, align 4, !tbaa !3
  %mul742.i = shl nsw i32 %787, 1
  %add7433468.i = or i32 %mul742.i, 1
  %idxprom744.i = sext i32 %mul742.i to i64
  %arrayidx745.i = getelementptr inbounds double* %colX0.03934.i, i64 %idxprom744.i
  %788 = load double* %arrayidx745.i, align 8, !tbaa !4
  %idxprom746.i = sext i32 %add7433468.i to i64
  %arrayidx747.i = getelementptr inbounds double* %colX0.03934.i, i64 %idxprom746.i
  %789 = load double* %arrayidx747.i, align 8, !tbaa !4
  %add.ptr.sum3469.i = add i64 %idxprom744.i, %idx.ext.i326
  %arrayidx749.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr.sum3469.i
  %790 = load double* %arrayidx749.i, align 8, !tbaa !4
  %add.ptr.sum3470.i = add i64 %idxprom746.i, %idx.ext.i326
  %arrayidx751.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr.sum3470.i
  %791 = load double* %arrayidx751.i, align 8, !tbaa !4
  %add.ptr8.sum3471.i = add i64 %idxprom744.i, %add.ptr.sum.i327
  %arrayidx753.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr8.sum3471.i
  %792 = load double* %arrayidx753.i, align 8, !tbaa !4
  %add.ptr8.sum3472.i = add i64 %idxprom746.i, %add.ptr.sum.i327
  %arrayidx755.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr8.sum3472.i
  %793 = load double* %arrayidx755.i, align 8, !tbaa !4
  %mul756.i = fmul double %785, %788
  %mul757.i = fmul double %786, %789
  %sub758.i = fsub double %mul756.i, %mul757.i
  %add759.i = fadd double %rsum00665.13847.i, %sub758.i
  %mul760.i = fmul double %785, %789
  %mul761.i = fmul double %786, %788
  %add762.i = fadd double %mul761.i, %mul760.i
  %add763.i = fadd double %isum00662.13844.i, %add762.i
  %mul764.i = fmul double %785, %790
  %mul765.i = fmul double %786, %791
  %sub766.i457 = fsub double %mul764.i, %mul765.i
  %add767.i = fadd double %rsum01666.13848.i, %sub766.i457
  %mul768.i = fmul double %785, %791
  %mul769.i = fmul double %786, %790
  %add770.i = fadd double %mul769.i, %mul768.i
  %add771.i = fadd double %isum01663.13845.i, %add770.i
  %mul772.i = fmul double %785, %792
  %mul773.i = fmul double %786, %793
  %sub774.i = fsub double %mul772.i, %mul773.i
  %add775.i = fadd double %rsum02667.13849.i, %sub774.i
  %mul776.i = fmul double %785, %793
  %mul777.i = fmul double %786, %792
  %add778.i = fadd double %mul777.i, %mul776.i
  %add779.i = fadd double %isum02664.13846.i, %add778.i
  %indvars.iv.next3991.i = add i64 %indvars.iv3990.i, 1
  %lftr.wideiv1251 = trunc i64 %indvars.iv.next3991.i to i32
  %exitcond1252 = icmp eq i32 %lftr.wideiv1251, %653
  br i1 %exitcond1252, label %if.end783.i, label %for.body733.i

if.end783.i:                                      ; preds = %for.body684.i, %for.body733.i, %for.cond731.preheader.i, %for.cond682.preheader.i
  %isum00662.2.i = phi double [ 0.000000e+00, %for.cond731.preheader.i ], [ 0.000000e+00, %for.cond682.preheader.i ], [ %add763.i, %for.body733.i ], [ %add710.i, %for.body684.i ]
  %isum01663.2.i = phi double [ 0.000000e+00, %for.cond731.preheader.i ], [ 0.000000e+00, %for.cond682.preheader.i ], [ %add771.i, %for.body733.i ], [ %add718.i, %for.body684.i ]
  %isum02664.2.i = phi double [ 0.000000e+00, %for.cond731.preheader.i ], [ 0.000000e+00, %for.cond682.preheader.i ], [ %add779.i, %for.body733.i ], [ %add726.i, %for.body684.i ]
  %rsum00665.2.i = phi double [ 0.000000e+00, %for.cond731.preheader.i ], [ 0.000000e+00, %for.cond682.preheader.i ], [ %add759.i, %for.body733.i ], [ %add706.i, %for.body684.i ]
  %rsum01666.2.i = phi double [ 0.000000e+00, %for.cond731.preheader.i ], [ 0.000000e+00, %for.cond682.preheader.i ], [ %add767.i, %for.body733.i ], [ %add714.i, %for.body684.i ]
  %rsum02667.2.i = phi double [ 0.000000e+00, %for.cond731.preheader.i ], [ 0.000000e+00, %for.cond682.preheader.i ], [ %add775.i, %for.body733.i ], [ %add722.i, %for.body684.i ]
  br i1 %cmp567.i, label %if.then785.i, label %if.else806.i

if.then785.i:                                     ; preds = %if.end783.i
  %mul786.i = shl nsw i32 %add632.i, 1
  %add7873462.i = or i32 %mul786.i, 1
  %idxprom788.i = sext i32 %mul786.i to i64
  %arrayidx789.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom788.i
  %794 = load double* %arrayidx789.i, align 8, !tbaa !4
  %sub790.i = fsub double %794, %rsum00665.2.i
  store double %sub790.i, double* %arrayidx789.i, align 8, !tbaa !4
  %idxprom791.i = sext i32 %add7873462.i to i64
  %arrayidx792.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom791.i
  %795 = load double* %arrayidx792.i, align 8, !tbaa !4
  %sub793.i = fsub double %795, %isum00662.2.i
  store double %sub793.i, double* %arrayidx792.i, align 8, !tbaa !4
  %add.ptr11.sum3463.i = add i64 %idxprom788.i, %idx.ext10.i
  %arrayidx795.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3463.i
  %796 = load double* %arrayidx795.i, align 8, !tbaa !4
  %sub796.i = fsub double %796, %rsum01666.2.i
  store double %sub796.i, double* %arrayidx795.i, align 8, !tbaa !4
  %add.ptr11.sum3464.i = add i64 %idxprom791.i, %idx.ext10.i
  %arrayidx798.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3464.i
  %797 = load double* %arrayidx798.i, align 8, !tbaa !4
  %sub799.i = fsub double %797, %isum01663.2.i
  store double %sub799.i, double* %arrayidx798.i, align 8, !tbaa !4
  %add.ptr14.sum3465.i = add i64 %idxprom788.i, %add.ptr11.sum.i328
  %arrayidx801.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3465.i
  %798 = load double* %arrayidx801.i, align 8, !tbaa !4
  %sub802.i = fsub double %798, %rsum02667.2.i
  store double %sub802.i, double* %arrayidx801.i, align 8, !tbaa !4
  %add.ptr14.sum3466.i = add i64 %idxprom791.i, %add.ptr11.sum.i328
  %arrayidx804.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3466.i
  %799 = load double* %arrayidx804.i, align 8, !tbaa !4
  %sub805.i = fsub double %799, %isum02664.2.i
  store double %sub805.i, double* %arrayidx804.i, align 8, !tbaa !4
  br label %if.end831.i

if.else806.i:                                     ; preds = %if.end783.i
  %800 = load i32* %arrayidx634.i, align 4, !tbaa !3
  %mul809.i = shl nsw i32 %800, 1
  %add8103457.i = or i32 %mul809.i, 1
  %idxprom811.i = sext i32 %mul809.i to i64
  %arrayidx812.i458 = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom811.i
  %801 = load double* %arrayidx812.i458, align 8, !tbaa !4
  %sub813.i = fsub double %801, %rsum00665.2.i
  store double %sub813.i, double* %arrayidx812.i458, align 8, !tbaa !4
  %idxprom814.i = sext i32 %add8103457.i to i64
  %arrayidx815.i = getelementptr inbounds double* %colY0.03931.i, i64 %idxprom814.i
  %802 = load double* %arrayidx815.i, align 8, !tbaa !4
  %sub816.i = fsub double %802, %isum00662.2.i
  store double %sub816.i, double* %arrayidx815.i, align 8, !tbaa !4
  %add.ptr11.sum3458.i = add i64 %idxprom811.i, %idx.ext10.i
  %arrayidx818.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3458.i
  %803 = load double* %arrayidx818.i, align 8, !tbaa !4
  %sub819.i = fsub double %803, %rsum01666.2.i
  store double %sub819.i, double* %arrayidx818.i, align 8, !tbaa !4
  %add.ptr11.sum3459.i = add i64 %idxprom814.i, %idx.ext10.i
  %arrayidx821.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr11.sum3459.i
  %804 = load double* %arrayidx821.i, align 8, !tbaa !4
  %sub822.i = fsub double %804, %isum01663.2.i
  store double %sub822.i, double* %arrayidx821.i, align 8, !tbaa !4
  %add.ptr14.sum3460.i = add i64 %idxprom811.i, %add.ptr11.sum.i328
  %arrayidx824.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3460.i
  %805 = load double* %arrayidx824.i, align 8, !tbaa !4
  %sub825.i = fsub double %805, %rsum02667.2.i
  store double %sub825.i, double* %arrayidx824.i, align 8, !tbaa !4
  %add.ptr14.sum3461.i = add i64 %idxprom814.i, %add.ptr11.sum.i328
  %arrayidx827.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum3461.i
  %806 = load double* %arrayidx827.i, align 8, !tbaa !4
  %sub828.i = fsub double %806, %isum02664.2.i
  store double %sub828.i, double* %arrayidx827.i, align 8, !tbaa !4
  br label %if.end831.i

if.end831.i:                                      ; preds = %if.else806.i, %if.then785.i, %if.else656.i, %if.else609.i, %if.then568.i
  %add.ptr834.i = getelementptr inbounds double* %colX0.03934.i, i64 %add.ptr8.sum.i
  %add.ptr837.i = getelementptr inbounds double* %colY0.03931.i, i64 %add.ptr14.sum.i
  %add839.i459 = add nsw i32 %jcolX.03930.i, 3
  %cmp5.i460 = icmp slt i32 %add839.i459, %sub3928.i
  br i1 %cmp5.i460, label %for.body.i331, label %for.end840.i

for.end840.i:                                     ; preds = %if.end831.i, %if.end4.i324
  %colX0.0.lcssa.i461 = phi double* [ %646, %if.end4.i324 ], [ %add.ptr834.i, %if.end831.i ]
  %colY0.0.lcssa.i462 = phi double* [ %647, %if.end4.i324 ], [ %add.ptr837.i, %if.end831.i ]
  %jcolX.0.lcssa.i463 = phi i32 [ 0, %if.end4.i324 ], [ %add839.i459, %if.end831.i ]
  %cmp842.i = icmp eq i32 %jcolX.0.lcssa.i463, %sub3928.i
  br i1 %cmp842.i, label %if.then843.i, label %if.else1499.i

if.then843.i:                                     ; preds = %for.end840.i
  %807 = load i32* %nrowX.i313, align 4, !tbaa !3
  %mul844.i = shl nsw i32 %807, 1
  %idx.ext845.i = sext i32 %mul844.i to i64
  %808 = load i32* %nrowY.i314, align 4, !tbaa !3
  %mul847.i = shl nsw i32 %808, 1
  %idx.ext848.i = sext i32 %mul847.i to i64
  %809 = load double** %entA.i304, align 8, !tbaa !0
  %810 = load i32* %nrowAT.i312, align 4, !tbaa !3
  %sub8513668.i = add nsw i32 %810, -2
  %cmp8523669.i = icmp sgt i32 %sub8513668.i, 0
  br i1 %cmp8523669.i, label %for.body853.lr.ph.i, label %for.end1149.i

for.body853.lr.ph.i:                              ; preds = %if.then843.i
  %811 = load i32* %ncolAT.i309, align 4, !tbaa !3
  %mul882.i464 = shl nsw i32 %811, 1
  %idx.ext883.i = sext i32 %mul882.i464 to i64
  %add.ptr884.sum.i = shl nsw i64 %idx.ext883.i, 1
  %cmp888.i = icmp eq i32 %811, %807
  %cmp1048.i = icmp eq i32 %808, %810
  %add.ptr887.sum.i = add i64 %add.ptr884.sum.i, %idx.ext883.i
  %812 = load i32** %rowindAT.i316, align 8, !tbaa !0
  %cmp9683615.i = icmp sgt i32 %811, 0
  %813 = load i32** %colindAT.i315, align 8, !tbaa !0
  br label %for.body853.i

for.body853.i:                                    ; preds = %if.end1143.i, %for.body853.lr.ph.i
  %indvars.iv3958.i = phi i64 [ 0, %for.body853.lr.ph.i ], [ %indvars.iv.next3959.i, %if.end1143.i ]
  %rowAT0.13671.i = phi double* [ %809, %for.body853.lr.ph.i ], [ %add.ptr1146.i, %if.end1143.i ]
  %irowAT.13670.i = phi i32 [ 0, %for.body853.lr.ph.i ], [ %add1148.i, %if.end1143.i ]
  br i1 %cmp888.i, label %for.cond890.preheader.i, label %for.cond967.preheader.i

for.cond890.preheader.i:                          ; preds = %for.body853.i
  br i1 %cmp9683615.i, label %for.body892.i, label %if.end1047.i

for.cond967.preheader.i:                          ; preds = %for.body853.i
  br i1 %cmp9683615.i, label %for.body969.i, label %if.end1047.i

for.body892.i:                                    ; preds = %for.cond890.preheader.i, %for.body892.i
  %indvars.iv3956.i = phi i64 [ %indvars.iv.next3957.i, %for.body892.i ], [ 0, %for.cond890.preheader.i ]
  %rsum21871.03654.i = phi double [ %add958.i, %for.body892.i ], [ 0.000000e+00, %for.cond890.preheader.i ]
  %rsum20870.03653.i = phi double [ %add950.i, %for.body892.i ], [ 0.000000e+00, %for.cond890.preheader.i ]
  %rsum11869.03652.i = phi double [ %add942.i, %for.body892.i ], [ 0.000000e+00, %for.cond890.preheader.i ]
  %rsum10868.03651.i = phi double [ %add934.i, %for.body892.i ], [ 0.000000e+00, %for.cond890.preheader.i ]
  %rsum01867.03650.i = phi double [ %add926.i, %for.body892.i ], [ 0.000000e+00, %for.cond890.preheader.i ]
  %rsum00866.03649.i = phi double [ %add918.i, %for.body892.i ], [ 0.000000e+00, %for.cond890.preheader.i ]
  %isum21865.03648.i = phi double [ %add962.i, %for.body892.i ], [ 0.000000e+00, %for.cond890.preheader.i ]
  %isum20864.03647.i = phi double [ %add954.i, %for.body892.i ], [ 0.000000e+00, %for.cond890.preheader.i ]
  %isum11863.03646.i = phi double [ %add946.i, %for.body892.i ], [ 0.000000e+00, %for.cond890.preheader.i ]
  %isum10862.03645.i = phi double [ %add938.i, %for.body892.i ], [ 0.000000e+00, %for.cond890.preheader.i ]
  %isum01861.03644.i = phi double [ %add930.i, %for.body892.i ], [ 0.000000e+00, %for.cond890.preheader.i ]
  %isum00860.03643.i = phi double [ %add922.i, %for.body892.i ], [ 0.000000e+00, %for.cond890.preheader.i ]
  %814 = trunc i64 %indvars.iv3956.i to i32
  %mul893.i = shl nsw i32 %814, 1
  %add8943450.i = or i32 %mul893.i, 1
  %idxprom895.i465 = sext i32 %mul893.i to i64
  %arrayidx896.i466 = getelementptr inbounds double* %rowAT0.13671.i, i64 %idxprom895.i465
  %815 = load double* %arrayidx896.i466, align 8, !tbaa !4
  %idxprom897.i = sext i32 %add8943450.i to i64
  %arrayidx898.i = getelementptr inbounds double* %rowAT0.13671.i, i64 %idxprom897.i
  %816 = load double* %arrayidx898.i, align 8, !tbaa !4
  %add.ptr884.sum3451.i = add i64 %idxprom895.i465, %idx.ext883.i
  %arrayidx900.i = getelementptr inbounds double* %rowAT0.13671.i, i64 %add.ptr884.sum3451.i
  %817 = load double* %arrayidx900.i, align 8, !tbaa !4
  %add.ptr884.sum3452.i = add i64 %idxprom897.i, %idx.ext883.i
  %arrayidx902.i = getelementptr inbounds double* %rowAT0.13671.i, i64 %add.ptr884.sum3452.i
  %818 = load double* %arrayidx902.i, align 8, !tbaa !4
  %add.ptr887.sum3453.i = add i64 %idxprom895.i465, %add.ptr884.sum.i
  %arrayidx904.i = getelementptr inbounds double* %rowAT0.13671.i, i64 %add.ptr887.sum3453.i
  %819 = load double* %arrayidx904.i, align 8, !tbaa !4
  %add.ptr887.sum3454.i = add i64 %idxprom897.i, %add.ptr884.sum.i
  %arrayidx906.i467 = getelementptr inbounds double* %rowAT0.13671.i, i64 %add.ptr887.sum3454.i
  %820 = load double* %arrayidx906.i467, align 8, !tbaa !4
  %arrayidx908.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %idxprom895.i465
  %821 = load double* %arrayidx908.i, align 8, !tbaa !4
  %arrayidx910.i468 = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %idxprom897.i
  %822 = load double* %arrayidx910.i468, align 8, !tbaa !4
  %add.ptr846.sum3455.i = add i64 %idxprom895.i465, %idx.ext845.i
  %arrayidx912.i469 = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %add.ptr846.sum3455.i
  %823 = load double* %arrayidx912.i469, align 8, !tbaa !4
  %add.ptr846.sum3456.i = add i64 %idxprom897.i, %idx.ext845.i
  %arrayidx914.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %add.ptr846.sum3456.i
  %824 = load double* %arrayidx914.i, align 8, !tbaa !4
  %mul915.i = fmul double %815, %821
  %mul916.i = fmul double %816, %822
  %sub917.i = fsub double %mul915.i, %mul916.i
  %add918.i = fadd double %rsum00866.03649.i, %sub917.i
  %mul919.i = fmul double %815, %822
  %mul920.i = fmul double %816, %821
  %add921.i = fadd double %mul920.i, %mul919.i
  %add922.i = fadd double %isum00860.03643.i, %add921.i
  %mul923.i = fmul double %815, %823
  %mul924.i = fmul double %816, %824
  %sub925.i = fsub double %mul923.i, %mul924.i
  %add926.i = fadd double %rsum01867.03650.i, %sub925.i
  %mul927.i = fmul double %815, %824
  %mul928.i = fmul double %816, %823
  %add929.i = fadd double %mul928.i, %mul927.i
  %add930.i = fadd double %isum01861.03644.i, %add929.i
  %mul931.i = fmul double %817, %821
  %mul932.i = fmul double %818, %822
  %sub933.i = fsub double %mul931.i, %mul932.i
  %add934.i = fadd double %rsum10868.03651.i, %sub933.i
  %mul935.i = fmul double %817, %822
  %mul936.i = fmul double %818, %821
  %add937.i = fadd double %mul936.i, %mul935.i
  %add938.i = fadd double %isum10862.03645.i, %add937.i
  %mul939.i = fmul double %817, %823
  %mul940.i = fmul double %818, %824
  %sub941.i = fsub double %mul939.i, %mul940.i
  %add942.i = fadd double %rsum11869.03652.i, %sub941.i
  %mul943.i = fmul double %817, %824
  %mul944.i = fmul double %818, %823
  %add945.i = fadd double %mul944.i, %mul943.i
  %add946.i = fadd double %isum11863.03646.i, %add945.i
  %mul947.i = fmul double %819, %821
  %mul948.i = fmul double %820, %822
  %sub949.i = fsub double %mul947.i, %mul948.i
  %add950.i = fadd double %rsum20870.03653.i, %sub949.i
  %mul951.i = fmul double %819, %822
  %mul952.i = fmul double %820, %821
  %add953.i = fadd double %mul952.i, %mul951.i
  %add954.i = fadd double %isum20864.03647.i, %add953.i
  %mul955.i = fmul double %819, %823
  %mul956.i = fmul double %820, %824
  %sub957.i = fsub double %mul955.i, %mul956.i
  %add958.i = fadd double %rsum21871.03654.i, %sub957.i
  %mul959.i = fmul double %819, %824
  %mul960.i = fmul double %820, %823
  %add961.i = fadd double %mul960.i, %mul959.i
  %add962.i = fadd double %isum21865.03648.i, %add961.i
  %indvars.iv.next3957.i = add i64 %indvars.iv3956.i, 1
  %lftr.wideiv1233 = trunc i64 %indvars.iv.next3957.i to i32
  %exitcond1234 = icmp eq i32 %lftr.wideiv1233, %807
  br i1 %exitcond1234, label %if.end1047.i, label %for.body892.i

for.body969.i:                                    ; preds = %for.cond967.preheader.i, %for.body969.i
  %indvars.iv3954.i = phi i64 [ %indvars.iv.next3955.i, %for.body969.i ], [ 0, %for.cond967.preheader.i ]
  %rsum21871.13627.i = phi double [ %add1039.i, %for.body969.i ], [ 0.000000e+00, %for.cond967.preheader.i ]
  %rsum20870.13626.i = phi double [ %add1031.i, %for.body969.i ], [ 0.000000e+00, %for.cond967.preheader.i ]
  %rsum11869.13625.i = phi double [ %add1023.i, %for.body969.i ], [ 0.000000e+00, %for.cond967.preheader.i ]
  %rsum10868.13624.i = phi double [ %add1015.i, %for.body969.i ], [ 0.000000e+00, %for.cond967.preheader.i ]
  %rsum01867.13623.i = phi double [ %add1007.i, %for.body969.i ], [ 0.000000e+00, %for.cond967.preheader.i ]
  %rsum00866.13622.i = phi double [ %add999.i, %for.body969.i ], [ 0.000000e+00, %for.cond967.preheader.i ]
  %isum21865.13621.i = phi double [ %add1043.i, %for.body969.i ], [ 0.000000e+00, %for.cond967.preheader.i ]
  %isum20864.13620.i = phi double [ %add1035.i, %for.body969.i ], [ 0.000000e+00, %for.cond967.preheader.i ]
  %isum11863.13619.i = phi double [ %add1027.i, %for.body969.i ], [ 0.000000e+00, %for.cond967.preheader.i ]
  %isum10862.13618.i = phi double [ %add1019.i, %for.body969.i ], [ 0.000000e+00, %for.cond967.preheader.i ]
  %isum01861.13617.i = phi double [ %add1011.i, %for.body969.i ], [ 0.000000e+00, %for.cond967.preheader.i ]
  %isum00860.13616.i = phi double [ %add1003.i, %for.body969.i ], [ 0.000000e+00, %for.cond967.preheader.i ]
  %825 = trunc i64 %indvars.iv3954.i to i32
  %mul970.i = shl nsw i32 %825, 1
  %add9713442.i = or i32 %mul970.i, 1
  %idxprom972.i = sext i32 %mul970.i to i64
  %arrayidx973.i = getelementptr inbounds double* %rowAT0.13671.i, i64 %idxprom972.i
  %826 = load double* %arrayidx973.i, align 8, !tbaa !4
  %idxprom974.i = sext i32 %add9713442.i to i64
  %arrayidx975.i = getelementptr inbounds double* %rowAT0.13671.i, i64 %idxprom974.i
  %827 = load double* %arrayidx975.i, align 8, !tbaa !4
  %add.ptr884.sum3443.i = add i64 %idxprom972.i, %idx.ext883.i
  %arrayidx977.i = getelementptr inbounds double* %rowAT0.13671.i, i64 %add.ptr884.sum3443.i
  %828 = load double* %arrayidx977.i, align 8, !tbaa !4
  %add.ptr884.sum3444.i = add i64 %idxprom974.i, %idx.ext883.i
  %arrayidx979.i = getelementptr inbounds double* %rowAT0.13671.i, i64 %add.ptr884.sum3444.i
  %829 = load double* %arrayidx979.i, align 8, !tbaa !4
  %add.ptr887.sum3445.i = add i64 %idxprom972.i, %add.ptr884.sum.i
  %arrayidx981.i = getelementptr inbounds double* %rowAT0.13671.i, i64 %add.ptr887.sum3445.i
  %830 = load double* %arrayidx981.i, align 8, !tbaa !4
  %add.ptr887.sum3446.i = add i64 %idxprom974.i, %add.ptr884.sum.i
  %arrayidx983.i = getelementptr inbounds double* %rowAT0.13671.i, i64 %add.ptr887.sum3446.i
  %831 = load double* %arrayidx983.i, align 8, !tbaa !4
  %arrayidx985.i = getelementptr inbounds i32* %813, i64 %indvars.iv3954.i
  %832 = load i32* %arrayidx985.i, align 4, !tbaa !3
  %mul986.i = shl nsw i32 %832, 1
  %add9873447.i = or i32 %mul986.i, 1
  %idxprom988.i = sext i32 %mul986.i to i64
  %arrayidx989.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %idxprom988.i
  %833 = load double* %arrayidx989.i, align 8, !tbaa !4
  %idxprom990.i = sext i32 %add9873447.i to i64
  %arrayidx991.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %idxprom990.i
  %834 = load double* %arrayidx991.i, align 8, !tbaa !4
  %add.ptr846.sum3448.i = add i64 %idxprom988.i, %idx.ext845.i
  %arrayidx993.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %add.ptr846.sum3448.i
  %835 = load double* %arrayidx993.i, align 8, !tbaa !4
  %add.ptr846.sum3449.i = add i64 %idxprom990.i, %idx.ext845.i
  %arrayidx995.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %add.ptr846.sum3449.i
  %836 = load double* %arrayidx995.i, align 8, !tbaa !4
  %mul996.i = fmul double %826, %833
  %mul997.i = fmul double %827, %834
  %sub998.i = fsub double %mul996.i, %mul997.i
  %add999.i = fadd double %rsum00866.13622.i, %sub998.i
  %mul1000.i = fmul double %826, %834
  %mul1001.i = fmul double %827, %833
  %add1002.i = fadd double %mul1001.i, %mul1000.i
  %add1003.i = fadd double %isum00860.13616.i, %add1002.i
  %mul1004.i = fmul double %826, %835
  %mul1005.i = fmul double %827, %836
  %sub1006.i = fsub double %mul1004.i, %mul1005.i
  %add1007.i = fadd double %rsum01867.13623.i, %sub1006.i
  %mul1008.i = fmul double %826, %836
  %mul1009.i = fmul double %827, %835
  %add1010.i = fadd double %mul1009.i, %mul1008.i
  %add1011.i = fadd double %isum01861.13617.i, %add1010.i
  %mul1012.i = fmul double %828, %833
  %mul1013.i = fmul double %829, %834
  %sub1014.i = fsub double %mul1012.i, %mul1013.i
  %add1015.i = fadd double %rsum10868.13624.i, %sub1014.i
  %mul1016.i = fmul double %828, %834
  %mul1017.i = fmul double %829, %833
  %add1018.i = fadd double %mul1017.i, %mul1016.i
  %add1019.i = fadd double %isum10862.13618.i, %add1018.i
  %mul1020.i = fmul double %828, %835
  %mul1021.i = fmul double %829, %836
  %sub1022.i = fsub double %mul1020.i, %mul1021.i
  %add1023.i = fadd double %rsum11869.13625.i, %sub1022.i
  %mul1024.i = fmul double %828, %836
  %mul1025.i = fmul double %829, %835
  %add1026.i = fadd double %mul1025.i, %mul1024.i
  %add1027.i = fadd double %isum11863.13619.i, %add1026.i
  %mul1028.i = fmul double %830, %833
  %mul1029.i = fmul double %831, %834
  %sub1030.i = fsub double %mul1028.i, %mul1029.i
  %add1031.i = fadd double %rsum20870.13626.i, %sub1030.i
  %mul1032.i = fmul double %830, %834
  %mul1033.i = fmul double %831, %833
  %add1034.i = fadd double %mul1033.i, %mul1032.i
  %add1035.i = fadd double %isum20864.13620.i, %add1034.i
  %mul1036.i = fmul double %830, %835
  %mul1037.i = fmul double %831, %836
  %sub1038.i = fsub double %mul1036.i, %mul1037.i
  %add1039.i = fadd double %rsum21871.13627.i, %sub1038.i
  %mul1040.i = fmul double %830, %836
  %mul1041.i = fmul double %831, %835
  %add1042.i = fadd double %mul1041.i, %mul1040.i
  %add1043.i = fadd double %isum21865.13621.i, %add1042.i
  %indvars.iv.next3955.i = add i64 %indvars.iv3954.i, 1
  %lftr.wideiv1231 = trunc i64 %indvars.iv.next3955.i to i32
  %exitcond1232 = icmp eq i32 %lftr.wideiv1231, %811
  br i1 %exitcond1232, label %if.end1047.i, label %for.body969.i

if.end1047.i:                                     ; preds = %for.body892.i, %for.body969.i, %for.cond967.preheader.i, %for.cond890.preheader.i
  %isum00860.2.i = phi double [ 0.000000e+00, %for.cond967.preheader.i ], [ 0.000000e+00, %for.cond890.preheader.i ], [ %add1003.i, %for.body969.i ], [ %add922.i, %for.body892.i ]
  %isum01861.2.i = phi double [ 0.000000e+00, %for.cond967.preheader.i ], [ 0.000000e+00, %for.cond890.preheader.i ], [ %add1011.i, %for.body969.i ], [ %add930.i, %for.body892.i ]
  %isum10862.2.i = phi double [ 0.000000e+00, %for.cond967.preheader.i ], [ 0.000000e+00, %for.cond890.preheader.i ], [ %add1019.i, %for.body969.i ], [ %add938.i, %for.body892.i ]
  %isum11863.2.i = phi double [ 0.000000e+00, %for.cond967.preheader.i ], [ 0.000000e+00, %for.cond890.preheader.i ], [ %add1027.i, %for.body969.i ], [ %add946.i, %for.body892.i ]
  %isum20864.2.i = phi double [ 0.000000e+00, %for.cond967.preheader.i ], [ 0.000000e+00, %for.cond890.preheader.i ], [ %add1035.i, %for.body969.i ], [ %add954.i, %for.body892.i ]
  %isum21865.2.i = phi double [ 0.000000e+00, %for.cond967.preheader.i ], [ 0.000000e+00, %for.cond890.preheader.i ], [ %add1043.i, %for.body969.i ], [ %add962.i, %for.body892.i ]
  %rsum00866.2.i = phi double [ 0.000000e+00, %for.cond967.preheader.i ], [ 0.000000e+00, %for.cond890.preheader.i ], [ %add999.i, %for.body969.i ], [ %add918.i, %for.body892.i ]
  %rsum01867.2.i = phi double [ 0.000000e+00, %for.cond967.preheader.i ], [ 0.000000e+00, %for.cond890.preheader.i ], [ %add1007.i, %for.body969.i ], [ %add926.i, %for.body892.i ]
  %rsum10868.2.i = phi double [ 0.000000e+00, %for.cond967.preheader.i ], [ 0.000000e+00, %for.cond890.preheader.i ], [ %add1015.i, %for.body969.i ], [ %add934.i, %for.body892.i ]
  %rsum11869.2.i = phi double [ 0.000000e+00, %for.cond967.preheader.i ], [ 0.000000e+00, %for.cond890.preheader.i ], [ %add1023.i, %for.body969.i ], [ %add942.i, %for.body892.i ]
  %rsum20870.2.i = phi double [ 0.000000e+00, %for.cond967.preheader.i ], [ 0.000000e+00, %for.cond890.preheader.i ], [ %add1031.i, %for.body969.i ], [ %add950.i, %for.body892.i ]
  %rsum21871.2.i = phi double [ 0.000000e+00, %for.cond967.preheader.i ], [ 0.000000e+00, %for.cond890.preheader.i ], [ %add1039.i, %for.body969.i ], [ %add958.i, %for.body892.i ]
  br i1 %cmp1048.i, label %if.then1049.i, label %if.else1092.i

if.then1049.i:                                    ; preds = %if.end1047.i
  %837 = trunc i64 %indvars.iv3958.i to i32
  %mul1050.i = shl nsw i32 %837, 1
  %add10513435.i = or i32 %mul1050.i, 1
  %idxprom1052.i = sext i32 %mul1050.i to i64
  %arrayidx1053.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1052.i
  %838 = load double* %arrayidx1053.i, align 8, !tbaa !4
  %sub1054.i = fsub double %838, %rsum00866.2.i
  store double %sub1054.i, double* %arrayidx1053.i, align 8, !tbaa !4
  %idxprom1055.i = sext i32 %add10513435.i to i64
  %arrayidx1056.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1055.i
  %839 = load double* %arrayidx1056.i, align 8, !tbaa !4
  %sub1057.i = fsub double %839, %isum00860.2.i
  store double %sub1057.i, double* %arrayidx1056.i, align 8, !tbaa !4
  %add.ptr849.sum3436.i = add i64 %idxprom1052.i, %idx.ext848.i
  %arrayidx1059.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %add.ptr849.sum3436.i
  %840 = load double* %arrayidx1059.i, align 8, !tbaa !4
  %sub1060.i = fsub double %840, %rsum01867.2.i
  store double %sub1060.i, double* %arrayidx1059.i, align 8, !tbaa !4
  %add.ptr849.sum3437.i = add i64 %idxprom1055.i, %idx.ext848.i
  %arrayidx1062.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %add.ptr849.sum3437.i
  %841 = load double* %arrayidx1062.i, align 8, !tbaa !4
  %sub1063.i = fsub double %841, %isum01861.2.i
  store double %sub1063.i, double* %arrayidx1062.i, align 8, !tbaa !4
  %add1064.i = add nsw i32 %mul1050.i, 2
  %add1065.i = add nsw i32 %add10513435.i, 2
  %idxprom1066.i = sext i32 %add1064.i to i64
  %arrayidx1067.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1066.i
  %842 = load double* %arrayidx1067.i, align 8, !tbaa !4
  %sub1068.i = fsub double %842, %rsum10868.2.i
  store double %sub1068.i, double* %arrayidx1067.i, align 8, !tbaa !4
  %idxprom1069.i = sext i32 %add1065.i to i64
  %arrayidx1070.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1069.i
  %843 = load double* %arrayidx1070.i, align 8, !tbaa !4
  %sub1071.i = fsub double %843, %isum10862.2.i
  store double %sub1071.i, double* %arrayidx1070.i, align 8, !tbaa !4
  %add.ptr849.sum3438.i = add i64 %idxprom1066.i, %idx.ext848.i
  %arrayidx1073.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %add.ptr849.sum3438.i
  %844 = load double* %arrayidx1073.i, align 8, !tbaa !4
  %sub1074.i = fsub double %844, %rsum11869.2.i
  store double %sub1074.i, double* %arrayidx1073.i, align 8, !tbaa !4
  %add.ptr849.sum3439.i = add i64 %idxprom1069.i, %idx.ext848.i
  %arrayidx1076.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %add.ptr849.sum3439.i
  %845 = load double* %arrayidx1076.i, align 8, !tbaa !4
  %sub1077.i = fsub double %845, %isum11863.2.i
  store double %sub1077.i, double* %arrayidx1076.i, align 8, !tbaa !4
  %add1078.i = add nsw i32 %mul1050.i, 4
  %add1079.i = add nsw i32 %add10513435.i, 4
  %idxprom1080.i = sext i32 %add1078.i to i64
  %arrayidx1081.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1080.i
  %846 = load double* %arrayidx1081.i, align 8, !tbaa !4
  %sub1082.i = fsub double %846, %rsum20870.2.i
  store double %sub1082.i, double* %arrayidx1081.i, align 8, !tbaa !4
  %idxprom1083.i = sext i32 %add1079.i to i64
  %arrayidx1084.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1083.i
  %847 = load double* %arrayidx1084.i, align 8, !tbaa !4
  %sub1085.i = fsub double %847, %isum20864.2.i
  store double %sub1085.i, double* %arrayidx1084.i, align 8, !tbaa !4
  %add.ptr849.sum3440.i = add i64 %idxprom1080.i, %idx.ext848.i
  %arrayidx1087.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %add.ptr849.sum3440.i
  %848 = load double* %arrayidx1087.i, align 8, !tbaa !4
  %sub1088.i = fsub double %848, %rsum21871.2.i
  store double %sub1088.i, double* %arrayidx1087.i, align 8, !tbaa !4
  %add.ptr849.sum3441.i = add i64 %idxprom1083.i, %idx.ext848.i
  %arrayidx1090.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %add.ptr849.sum3441.i
  %849 = load double* %arrayidx1090.i, align 8, !tbaa !4
  %sub1091.i = fsub double %849, %isum21865.2.i
  store double %sub1091.i, double* %arrayidx1090.i, align 8, !tbaa !4
  br label %if.end1143.i

if.else1092.i:                                    ; preds = %if.end1047.i
  %arrayidx1094.i = getelementptr inbounds i32* %812, i64 %indvars.iv3958.i
  %850 = load i32* %arrayidx1094.i, align 4, !tbaa !3
  %mul1095.i = shl nsw i32 %850, 1
  %add10963426.i = or i32 %mul1095.i, 1
  %idxprom1097.i = sext i32 %mul1095.i to i64
  %arrayidx1098.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1097.i
  %851 = load double* %arrayidx1098.i, align 8, !tbaa !4
  %sub1099.i = fsub double %851, %rsum00866.2.i
  store double %sub1099.i, double* %arrayidx1098.i, align 8, !tbaa !4
  %idxprom1100.i = sext i32 %add10963426.i to i64
  %arrayidx1101.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1100.i
  %852 = load double* %arrayidx1101.i, align 8, !tbaa !4
  %sub1102.i = fsub double %852, %isum00860.2.i
  store double %sub1102.i, double* %arrayidx1101.i, align 8, !tbaa !4
  %add.ptr849.sum3427.i = add i64 %idxprom1097.i, %idx.ext848.i
  %arrayidx1104.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %add.ptr849.sum3427.i
  %853 = load double* %arrayidx1104.i, align 8, !tbaa !4
  %sub1105.i = fsub double %853, %rsum01867.2.i
  store double %sub1105.i, double* %arrayidx1104.i, align 8, !tbaa !4
  %add.ptr849.sum3428.i = add i64 %idxprom1100.i, %idx.ext848.i
  %arrayidx1107.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %add.ptr849.sum3428.i
  %854 = load double* %arrayidx1107.i, align 8, !tbaa !4
  %sub1108.i = fsub double %854, %isum01861.2.i
  store double %sub1108.i, double* %arrayidx1107.i, align 8, !tbaa !4
  %855 = add nsw i64 %indvars.iv3958.i, 1
  %arrayidx1111.i = getelementptr inbounds i32* %812, i64 %855
  %856 = load i32* %arrayidx1111.i, align 4, !tbaa !3
  %mul1112.i = shl nsw i32 %856, 1
  %add11133429.i = or i32 %mul1112.i, 1
  %idxprom1114.i = sext i32 %mul1112.i to i64
  %arrayidx1115.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1114.i
  %857 = load double* %arrayidx1115.i, align 8, !tbaa !4
  %sub1116.i = fsub double %857, %rsum10868.2.i
  store double %sub1116.i, double* %arrayidx1115.i, align 8, !tbaa !4
  %idxprom1117.i = sext i32 %add11133429.i to i64
  %arrayidx1118.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1117.i
  %858 = load double* %arrayidx1118.i, align 8, !tbaa !4
  %sub1119.i = fsub double %858, %isum10862.2.i
  store double %sub1119.i, double* %arrayidx1118.i, align 8, !tbaa !4
  %add.ptr849.sum3430.i = add i64 %idxprom1114.i, %idx.ext848.i
  %arrayidx1121.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %add.ptr849.sum3430.i
  %859 = load double* %arrayidx1121.i, align 8, !tbaa !4
  %sub1122.i = fsub double %859, %rsum11869.2.i
  store double %sub1122.i, double* %arrayidx1121.i, align 8, !tbaa !4
  %add.ptr849.sum3431.i = add i64 %idxprom1117.i, %idx.ext848.i
  %arrayidx1124.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %add.ptr849.sum3431.i
  %860 = load double* %arrayidx1124.i, align 8, !tbaa !4
  %sub1125.i = fsub double %860, %isum11863.2.i
  store double %sub1125.i, double* %arrayidx1124.i, align 8, !tbaa !4
  %861 = add nsw i64 %indvars.iv3958.i, 2
  %arrayidx1128.i = getelementptr inbounds i32* %812, i64 %861
  %862 = load i32* %arrayidx1128.i, align 4, !tbaa !3
  %mul1129.i = shl nsw i32 %862, 1
  %add11303432.i = or i32 %mul1129.i, 1
  %idxprom1131.i = sext i32 %mul1129.i to i64
  %arrayidx1132.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1131.i
  %863 = load double* %arrayidx1132.i, align 8, !tbaa !4
  %sub1133.i = fsub double %863, %rsum20870.2.i
  store double %sub1133.i, double* %arrayidx1132.i, align 8, !tbaa !4
  %idxprom1134.i = sext i32 %add11303432.i to i64
  %arrayidx1135.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1134.i
  %864 = load double* %arrayidx1135.i, align 8, !tbaa !4
  %sub1136.i = fsub double %864, %isum20864.2.i
  store double %sub1136.i, double* %arrayidx1135.i, align 8, !tbaa !4
  %add.ptr849.sum3433.i = add i64 %idxprom1131.i, %idx.ext848.i
  %arrayidx1138.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %add.ptr849.sum3433.i
  %865 = load double* %arrayidx1138.i, align 8, !tbaa !4
  %sub1139.i = fsub double %865, %rsum21871.2.i
  store double %sub1139.i, double* %arrayidx1138.i, align 8, !tbaa !4
  %add.ptr849.sum3434.i = add i64 %idxprom1134.i, %idx.ext848.i
  %arrayidx1141.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %add.ptr849.sum3434.i
  %866 = load double* %arrayidx1141.i, align 8, !tbaa !4
  %sub1142.i = fsub double %866, %isum21865.2.i
  store double %sub1142.i, double* %arrayidx1141.i, align 8, !tbaa !4
  br label %if.end1143.i

if.end1143.i:                                     ; preds = %if.else1092.i, %if.then1049.i
  %add.ptr1146.i = getelementptr inbounds double* %rowAT0.13671.i, i64 %add.ptr887.sum.i
  %indvars.iv.next3959.i = add i64 %indvars.iv3958.i, 3
  %add1148.i = add nsw i32 %irowAT.13670.i, 3
  %867 = trunc i64 %indvars.iv.next3959.i to i32
  %cmp852.i = icmp slt i32 %867, %sub8513668.i
  br i1 %cmp852.i, label %for.body853.i, label %for.end1149.i

for.end1149.i:                                    ; preds = %if.end1143.i, %if.then843.i
  %rowAT0.1.lcssa.i472 = phi double* [ %809, %if.then843.i ], [ %add.ptr1146.i, %if.end1143.i ]
  %irowAT.1.lcssa.i473 = phi i32 [ 0, %if.then843.i ], [ %add1148.i, %if.end1143.i ]
  %cmp1151.i = icmp eq i32 %irowAT.1.lcssa.i473, %sub8513668.i
  br i1 %cmp1151.i, label %if.then1152.i, label %if.else1363.i

if.then1152.i:                                    ; preds = %for.end1149.i
  %868 = load i32* %ncolAT.i309, align 4, !tbaa !3
  %mul1175.i = shl nsw i32 %868, 1
  %idx.ext1176.i = sext i32 %mul1175.i to i64
  %869 = load i32* %nrowX.i313, align 4, !tbaa !3
  %cmp1178.i = icmp eq i32 %868, %869
  %cmp11813558.i = icmp sgt i32 %868, 0
  br i1 %cmp1178.i, label %for.cond1180.preheader.i, label %for.cond1237.preheader.i

for.cond1237.preheader.i:                         ; preds = %if.then1152.i
  br i1 %cmp11813558.i, label %for.body1239.lr.ph.i, label %if.end1297.i

for.body1239.lr.ph.i:                             ; preds = %for.cond1237.preheader.i
  %870 = load i32** %colindAT.i315, align 8, !tbaa !0
  br label %for.body1239.i

for.cond1180.preheader.i:                         ; preds = %if.then1152.i
  br i1 %cmp11813558.i, label %for.body1182.i, label %if.end1297.i

for.body1182.i:                                   ; preds = %for.cond1180.preheader.i, %for.body1182.i
  %indvars.iv.i474 = phi i64 [ %indvars.iv.next.i475, %for.body1182.i ], [ 0, %for.cond1180.preheader.i ]
  %rsum111164.03566.i = phi double [ %add1228.i, %for.body1182.i ], [ 0.000000e+00, %for.cond1180.preheader.i ]
  %rsum101163.03565.i = phi double [ %add1220.i, %for.body1182.i ], [ 0.000000e+00, %for.cond1180.preheader.i ]
  %rsum011162.03564.i = phi double [ %add1212.i, %for.body1182.i ], [ 0.000000e+00, %for.cond1180.preheader.i ]
  %rsum001161.03563.i = phi double [ %add1204.i, %for.body1182.i ], [ 0.000000e+00, %for.cond1180.preheader.i ]
  %isum111160.03562.i = phi double [ %add1232.i, %for.body1182.i ], [ 0.000000e+00, %for.cond1180.preheader.i ]
  %isum101159.03561.i = phi double [ %add1224.i, %for.body1182.i ], [ 0.000000e+00, %for.cond1180.preheader.i ]
  %isum011158.03560.i = phi double [ %add1216.i, %for.body1182.i ], [ 0.000000e+00, %for.cond1180.preheader.i ]
  %isum001157.03559.i = phi double [ %add1208.i, %for.body1182.i ], [ 0.000000e+00, %for.cond1180.preheader.i ]
  %871 = trunc i64 %indvars.iv.i474 to i32
  %mul1183.i = shl nsw i32 %871, 1
  %add11843421.i = or i32 %mul1183.i, 1
  %idxprom1185.i = sext i32 %mul1183.i to i64
  %arrayidx1186.i = getelementptr inbounds double* %rowAT0.1.lcssa.i472, i64 %idxprom1185.i
  %872 = load double* %arrayidx1186.i, align 8, !tbaa !4
  %idxprom1187.i = sext i32 %add11843421.i to i64
  %arrayidx1188.i = getelementptr inbounds double* %rowAT0.1.lcssa.i472, i64 %idxprom1187.i
  %873 = load double* %arrayidx1188.i, align 8, !tbaa !4
  %add.ptr1177.sum3422.i = add i64 %idxprom1185.i, %idx.ext1176.i
  %arrayidx1190.i = getelementptr inbounds double* %rowAT0.1.lcssa.i472, i64 %add.ptr1177.sum3422.i
  %874 = load double* %arrayidx1190.i, align 8, !tbaa !4
  %add.ptr1177.sum3423.i = add i64 %idxprom1187.i, %idx.ext1176.i
  %arrayidx1192.i = getelementptr inbounds double* %rowAT0.1.lcssa.i472, i64 %add.ptr1177.sum3423.i
  %875 = load double* %arrayidx1192.i, align 8, !tbaa !4
  %arrayidx1194.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %idxprom1185.i
  %876 = load double* %arrayidx1194.i, align 8, !tbaa !4
  %arrayidx1196.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %idxprom1187.i
  %877 = load double* %arrayidx1196.i, align 8, !tbaa !4
  %add.ptr846.sum3424.i = add i64 %idxprom1185.i, %idx.ext845.i
  %arrayidx1198.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %add.ptr846.sum3424.i
  %878 = load double* %arrayidx1198.i, align 8, !tbaa !4
  %add.ptr846.sum3425.i = add i64 %idxprom1187.i, %idx.ext845.i
  %arrayidx1200.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %add.ptr846.sum3425.i
  %879 = load double* %arrayidx1200.i, align 8, !tbaa !4
  %mul1201.i = fmul double %872, %876
  %mul1202.i = fmul double %873, %877
  %sub1203.i = fsub double %mul1201.i, %mul1202.i
  %add1204.i = fadd double %rsum001161.03563.i, %sub1203.i
  %mul1205.i = fmul double %872, %877
  %mul1206.i = fmul double %873, %876
  %add1207.i = fadd double %mul1206.i, %mul1205.i
  %add1208.i = fadd double %isum001157.03559.i, %add1207.i
  %mul1209.i = fmul double %872, %878
  %mul1210.i = fmul double %873, %879
  %sub1211.i = fsub double %mul1209.i, %mul1210.i
  %add1212.i = fadd double %rsum011162.03564.i, %sub1211.i
  %mul1213.i = fmul double %872, %879
  %mul1214.i = fmul double %873, %878
  %add1215.i = fadd double %mul1214.i, %mul1213.i
  %add1216.i = fadd double %isum011158.03560.i, %add1215.i
  %mul1217.i = fmul double %874, %876
  %mul1218.i = fmul double %875, %877
  %sub1219.i = fsub double %mul1217.i, %mul1218.i
  %add1220.i = fadd double %rsum101163.03565.i, %sub1219.i
  %mul1221.i = fmul double %874, %877
  %mul1222.i = fmul double %875, %876
  %add1223.i = fadd double %mul1222.i, %mul1221.i
  %add1224.i = fadd double %isum101159.03561.i, %add1223.i
  %mul1225.i = fmul double %874, %878
  %mul1226.i = fmul double %875, %879
  %sub1227.i = fsub double %mul1225.i, %mul1226.i
  %add1228.i = fadd double %rsum111164.03566.i, %sub1227.i
  %mul1229.i = fmul double %874, %879
  %mul1230.i = fmul double %875, %878
  %add1231.i = fadd double %mul1230.i, %mul1229.i
  %add1232.i = fadd double %isum111160.03562.i, %add1231.i
  %indvars.iv.next.i475 = add i64 %indvars.iv.i474, 1
  %lftr.wideiv1223 = trunc i64 %indvars.iv.next.i475 to i32
  %exitcond1224 = icmp eq i32 %lftr.wideiv1223, %868
  br i1 %exitcond1224, label %if.end1297.i, label %for.body1182.i

for.body1239.i:                                   ; preds = %for.body1239.i, %for.body1239.lr.ph.i
  %indvars.iv3948.i = phi i64 [ 0, %for.body1239.lr.ph.i ], [ %indvars.iv.next3949.i, %for.body1239.i ]
  %rsum111164.13584.i = phi double [ 0.000000e+00, %for.body1239.lr.ph.i ], [ %add1289.i, %for.body1239.i ]
  %rsum101163.13583.i = phi double [ 0.000000e+00, %for.body1239.lr.ph.i ], [ %add1281.i, %for.body1239.i ]
  %rsum011162.13582.i = phi double [ 0.000000e+00, %for.body1239.lr.ph.i ], [ %add1273.i, %for.body1239.i ]
  %rsum001161.13581.i = phi double [ 0.000000e+00, %for.body1239.lr.ph.i ], [ %add1265.i, %for.body1239.i ]
  %isum111160.13580.i = phi double [ 0.000000e+00, %for.body1239.lr.ph.i ], [ %add1293.i, %for.body1239.i ]
  %isum101159.13579.i = phi double [ 0.000000e+00, %for.body1239.lr.ph.i ], [ %add1285.i, %for.body1239.i ]
  %isum011158.13578.i = phi double [ 0.000000e+00, %for.body1239.lr.ph.i ], [ %add1277.i, %for.body1239.i ]
  %isum001157.13577.i = phi double [ 0.000000e+00, %for.body1239.lr.ph.i ], [ %add1269.i, %for.body1239.i ]
  %880 = trunc i64 %indvars.iv3948.i to i32
  %mul1240.i = shl nsw i32 %880, 1
  %add12413416.i = or i32 %mul1240.i, 1
  %idxprom1242.i = sext i32 %mul1240.i to i64
  %arrayidx1243.i = getelementptr inbounds double* %rowAT0.1.lcssa.i472, i64 %idxprom1242.i
  %881 = load double* %arrayidx1243.i, align 8, !tbaa !4
  %idxprom1244.i = sext i32 %add12413416.i to i64
  %arrayidx1245.i = getelementptr inbounds double* %rowAT0.1.lcssa.i472, i64 %idxprom1244.i
  %882 = load double* %arrayidx1245.i, align 8, !tbaa !4
  %add.ptr1177.sum.i = add i64 %idxprom1242.i, %idx.ext1176.i
  %arrayidx1247.i = getelementptr inbounds double* %rowAT0.1.lcssa.i472, i64 %add.ptr1177.sum.i
  %883 = load double* %arrayidx1247.i, align 8, !tbaa !4
  %add.ptr1177.sum3417.i = add i64 %idxprom1244.i, %idx.ext1176.i
  %arrayidx1249.i = getelementptr inbounds double* %rowAT0.1.lcssa.i472, i64 %add.ptr1177.sum3417.i
  %884 = load double* %arrayidx1249.i, align 8, !tbaa !4
  %arrayidx1251.i = getelementptr inbounds i32* %870, i64 %indvars.iv3948.i
  %885 = load i32* %arrayidx1251.i, align 4, !tbaa !3
  %mul1252.i = shl nsw i32 %885, 1
  %add12533418.i = or i32 %mul1252.i, 1
  %idxprom1254.i = sext i32 %mul1252.i to i64
  %arrayidx1255.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %idxprom1254.i
  %886 = load double* %arrayidx1255.i, align 8, !tbaa !4
  %idxprom1256.i = sext i32 %add12533418.i to i64
  %arrayidx1257.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %idxprom1256.i
  %887 = load double* %arrayidx1257.i, align 8, !tbaa !4
  %add.ptr846.sum3419.i = add i64 %idxprom1254.i, %idx.ext845.i
  %arrayidx1259.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %add.ptr846.sum3419.i
  %888 = load double* %arrayidx1259.i, align 8, !tbaa !4
  %add.ptr846.sum3420.i = add i64 %idxprom1256.i, %idx.ext845.i
  %arrayidx1261.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %add.ptr846.sum3420.i
  %889 = load double* %arrayidx1261.i, align 8, !tbaa !4
  %mul1262.i = fmul double %881, %886
  %mul1263.i = fmul double %882, %887
  %sub1264.i = fsub double %mul1262.i, %mul1263.i
  %add1265.i = fadd double %rsum001161.13581.i, %sub1264.i
  %mul1266.i = fmul double %881, %887
  %mul1267.i = fmul double %882, %886
  %add1268.i = fadd double %mul1267.i, %mul1266.i
  %add1269.i = fadd double %isum001157.13577.i, %add1268.i
  %mul1270.i = fmul double %881, %888
  %mul1271.i = fmul double %882, %889
  %sub1272.i = fsub double %mul1270.i, %mul1271.i
  %add1273.i = fadd double %rsum011162.13582.i, %sub1272.i
  %mul1274.i = fmul double %881, %889
  %mul1275.i = fmul double %882, %888
  %add1276.i = fadd double %mul1275.i, %mul1274.i
  %add1277.i = fadd double %isum011158.13578.i, %add1276.i
  %mul1278.i = fmul double %883, %886
  %mul1279.i = fmul double %884, %887
  %sub1280.i = fsub double %mul1278.i, %mul1279.i
  %add1281.i = fadd double %rsum101163.13583.i, %sub1280.i
  %mul1282.i = fmul double %883, %887
  %mul1283.i = fmul double %884, %886
  %add1284.i = fadd double %mul1283.i, %mul1282.i
  %add1285.i = fadd double %isum101159.13579.i, %add1284.i
  %mul1286.i = fmul double %883, %888
  %mul1287.i = fmul double %884, %889
  %sub1288.i = fsub double %mul1286.i, %mul1287.i
  %add1289.i = fadd double %rsum111164.13584.i, %sub1288.i
  %mul1290.i = fmul double %883, %889
  %mul1291.i = fmul double %884, %888
  %add1292.i = fadd double %mul1291.i, %mul1290.i
  %add1293.i = fadd double %isum111160.13580.i, %add1292.i
  %indvars.iv.next3949.i = add i64 %indvars.iv3948.i, 1
  %lftr.wideiv1225 = trunc i64 %indvars.iv.next3949.i to i32
  %exitcond1226 = icmp eq i32 %lftr.wideiv1225, %868
  br i1 %exitcond1226, label %if.end1297.i, label %for.body1239.i

if.end1297.i:                                     ; preds = %for.body1239.i, %for.body1182.i, %for.cond1180.preheader.i, %for.cond1237.preheader.i
  %isum001157.2.i = phi double [ 0.000000e+00, %for.cond1237.preheader.i ], [ 0.000000e+00, %for.cond1180.preheader.i ], [ %add1208.i, %for.body1182.i ], [ %add1269.i, %for.body1239.i ]
  %isum011158.2.i = phi double [ 0.000000e+00, %for.cond1237.preheader.i ], [ 0.000000e+00, %for.cond1180.preheader.i ], [ %add1216.i, %for.body1182.i ], [ %add1277.i, %for.body1239.i ]
  %isum101159.2.i = phi double [ 0.000000e+00, %for.cond1237.preheader.i ], [ 0.000000e+00, %for.cond1180.preheader.i ], [ %add1224.i, %for.body1182.i ], [ %add1285.i, %for.body1239.i ]
  %isum111160.2.i = phi double [ 0.000000e+00, %for.cond1237.preheader.i ], [ 0.000000e+00, %for.cond1180.preheader.i ], [ %add1232.i, %for.body1182.i ], [ %add1293.i, %for.body1239.i ]
  %rsum001161.2.i = phi double [ 0.000000e+00, %for.cond1237.preheader.i ], [ 0.000000e+00, %for.cond1180.preheader.i ], [ %add1204.i, %for.body1182.i ], [ %add1265.i, %for.body1239.i ]
  %rsum011162.2.i = phi double [ 0.000000e+00, %for.cond1237.preheader.i ], [ 0.000000e+00, %for.cond1180.preheader.i ], [ %add1212.i, %for.body1182.i ], [ %add1273.i, %for.body1239.i ]
  %rsum101163.2.i = phi double [ 0.000000e+00, %for.cond1237.preheader.i ], [ 0.000000e+00, %for.cond1180.preheader.i ], [ %add1220.i, %for.body1182.i ], [ %add1281.i, %for.body1239.i ]
  %rsum111164.2.i = phi double [ 0.000000e+00, %for.cond1237.preheader.i ], [ 0.000000e+00, %for.cond1180.preheader.i ], [ %add1228.i, %for.body1182.i ], [ %add1289.i, %for.body1239.i ]
  %890 = load i32* %nrowY.i314, align 4, !tbaa !3
  %891 = load i32* %nrowAT.i312, align 4, !tbaa !3
  %cmp1298.i = icmp eq i32 %890, %891
  br i1 %cmp1298.i, label %if.then1299.i, label %if.else1328.i

if.then1299.i:                                    ; preds = %if.end1297.i
  %mul1300.i = shl nsw i32 %sub8513668.i, 1
  %add13013411.i = or i32 %mul1300.i, 1
  %idxprom1302.i = sext i32 %mul1300.i to i64
  %arrayidx1303.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1302.i
  %892 = load double* %arrayidx1303.i, align 8, !tbaa !4
  %sub1304.i = fsub double %892, %rsum001161.2.i
  store double %sub1304.i, double* %arrayidx1303.i, align 8, !tbaa !4
  %idxprom1305.i = sext i32 %add13013411.i to i64
  %arrayidx1306.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1305.i
  %893 = load double* %arrayidx1306.i, align 8, !tbaa !4
  %sub1307.i = fsub double %893, %isum001157.2.i
  store double %sub1307.i, double* %arrayidx1306.i, align 8, !tbaa !4
  %add.ptr849.sum3412.i = add i64 %idxprom1302.i, %idx.ext848.i
  %arrayidx1309.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %add.ptr849.sum3412.i
  %894 = load double* %arrayidx1309.i, align 8, !tbaa !4
  %sub1310.i = fsub double %894, %rsum011162.2.i
  store double %sub1310.i, double* %arrayidx1309.i, align 8, !tbaa !4
  %add.ptr849.sum3413.i = add i64 %idxprom1305.i, %idx.ext848.i
  %arrayidx1312.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %add.ptr849.sum3413.i
  %895 = load double* %arrayidx1312.i, align 8, !tbaa !4
  %sub1313.i = fsub double %895, %isum011158.2.i
  store double %sub1313.i, double* %arrayidx1312.i, align 8, !tbaa !4
  %add1314.i = add nsw i32 %mul1300.i, 2
  %add1315.i = add nsw i32 %add13013411.i, 2
  %idxprom1316.i = sext i32 %add1314.i to i64
  %arrayidx1317.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1316.i
  %896 = load double* %arrayidx1317.i, align 8, !tbaa !4
  %sub1318.i = fsub double %896, %rsum101163.2.i
  store double %sub1318.i, double* %arrayidx1317.i, align 8, !tbaa !4
  %idxprom1319.i = sext i32 %add1315.i to i64
  %arrayidx1320.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1319.i
  %897 = load double* %arrayidx1320.i, align 8, !tbaa !4
  %sub1321.i = fsub double %897, %isum101159.2.i
  store double %sub1321.i, double* %arrayidx1320.i, align 8, !tbaa !4
  %add.ptr849.sum3414.i = add i64 %idxprom1316.i, %idx.ext848.i
  %arrayidx1323.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %add.ptr849.sum3414.i
  %898 = load double* %arrayidx1323.i, align 8, !tbaa !4
  %sub1324.i = fsub double %898, %rsum111164.2.i
  store double %sub1324.i, double* %arrayidx1323.i, align 8, !tbaa !4
  %add.ptr849.sum3415.i = add i64 %idxprom1319.i, %idx.ext848.i
  %arrayidx1326.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %add.ptr849.sum3415.i
  %899 = load double* %arrayidx1326.i, align 8, !tbaa !4
  %sub1327.i = fsub double %899, %isum111160.2.i
  store double %sub1327.i, double* %arrayidx1326.i, align 8, !tbaa !4
  br label %sw.epilog33

if.else1328.i:                                    ; preds = %if.end1297.i
  %idxprom1329.i = sext i32 %sub8513668.i to i64
  %900 = load i32** %rowindAT.i316, align 8, !tbaa !0
  %arrayidx1330.i = getelementptr inbounds i32* %900, i64 %idxprom1329.i
  %901 = load i32* %arrayidx1330.i, align 4, !tbaa !3
  %mul1331.i = shl nsw i32 %901, 1
  %add13323405.i = or i32 %mul1331.i, 1
  %idxprom1333.i = sext i32 %mul1331.i to i64
  %arrayidx1334.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1333.i
  %902 = load double* %arrayidx1334.i, align 8, !tbaa !4
  %sub1335.i = fsub double %902, %rsum001161.2.i
  store double %sub1335.i, double* %arrayidx1334.i, align 8, !tbaa !4
  %idxprom1336.i = sext i32 %add13323405.i to i64
  %arrayidx1337.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1336.i
  %903 = load double* %arrayidx1337.i, align 8, !tbaa !4
  %sub1338.i = fsub double %903, %isum001157.2.i
  store double %sub1338.i, double* %arrayidx1337.i, align 8, !tbaa !4
  %add.ptr849.sum3406.i = add i64 %idxprom1333.i, %idx.ext848.i
  %arrayidx1340.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %add.ptr849.sum3406.i
  %904 = load double* %arrayidx1340.i, align 8, !tbaa !4
  %sub1341.i = fsub double %904, %rsum011162.2.i
  store double %sub1341.i, double* %arrayidx1340.i, align 8, !tbaa !4
  %add.ptr849.sum3407.i = add i64 %idxprom1336.i, %idx.ext848.i
  %arrayidx1343.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %add.ptr849.sum3407.i
  %905 = load double* %arrayidx1343.i, align 8, !tbaa !4
  %sub1344.i = fsub double %905, %isum011158.2.i
  store double %sub1344.i, double* %arrayidx1343.i, align 8, !tbaa !4
  %add1345.i = add nsw i32 %810, -1
  %idxprom1346.i = sext i32 %add1345.i to i64
  %arrayidx1347.i = getelementptr inbounds i32* %900, i64 %idxprom1346.i
  %906 = load i32* %arrayidx1347.i, align 4, !tbaa !3
  %mul1348.i = shl nsw i32 %906, 1
  %add13493408.i = or i32 %mul1348.i, 1
  %idxprom1350.i = sext i32 %mul1348.i to i64
  %arrayidx1351.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1350.i
  %907 = load double* %arrayidx1351.i, align 8, !tbaa !4
  %sub1352.i = fsub double %907, %rsum101163.2.i
  store double %sub1352.i, double* %arrayidx1351.i, align 8, !tbaa !4
  %idxprom1353.i = sext i32 %add13493408.i to i64
  %arrayidx1354.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1353.i
  %908 = load double* %arrayidx1354.i, align 8, !tbaa !4
  %sub1355.i = fsub double %908, %isum101159.2.i
  store double %sub1355.i, double* %arrayidx1354.i, align 8, !tbaa !4
  %add.ptr849.sum3409.i = add i64 %idxprom1350.i, %idx.ext848.i
  %arrayidx1357.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %add.ptr849.sum3409.i
  %909 = load double* %arrayidx1357.i, align 8, !tbaa !4
  %sub1358.i = fsub double %909, %rsum111164.2.i
  store double %sub1358.i, double* %arrayidx1357.i, align 8, !tbaa !4
  %add.ptr849.sum3410.i = add i64 %idxprom1353.i, %idx.ext848.i
  %arrayidx1360.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %add.ptr849.sum3410.i
  %910 = load double* %arrayidx1360.i, align 8, !tbaa !4
  %sub1361.i = fsub double %910, %isum111160.2.i
  store double %sub1361.i, double* %arrayidx1360.i, align 8, !tbaa !4
  br label %sw.epilog33

if.else1363.i:                                    ; preds = %for.end1149.i
  %sub1364.i = add nsw i32 %810, -1
  %cmp1365.i = icmp eq i32 %irowAT.1.lcssa.i473, %sub1364.i
  br i1 %cmp1365.i, label %if.then1366.i, label %sw.epilog33

if.then1366.i:                                    ; preds = %if.else1363.i
  %911 = load i32* %ncolAT.i309, align 4, !tbaa !3
  %912 = load i32* %nrowX.i313, align 4, !tbaa !3
  %cmp1383.i = icmp eq i32 %911, %912
  %cmp13863594.i = icmp sgt i32 %911, 0
  br i1 %cmp1383.i, label %for.cond1385.preheader.i, label %for.cond1422.preheader.i

for.cond1422.preheader.i:                         ; preds = %if.then1366.i
  br i1 %cmp13863594.i, label %for.body1424.lr.ph.i, label %if.end1462.i

for.body1424.lr.ph.i:                             ; preds = %for.cond1422.preheader.i
  %913 = load i32** %colindAT.i315, align 8, !tbaa !0
  br label %for.body1424.i

for.cond1385.preheader.i:                         ; preds = %if.then1366.i
  br i1 %cmp13863594.i, label %for.body1387.i, label %if.end1462.i

for.body1387.i:                                   ; preds = %for.cond1385.preheader.i, %for.body1387.i
  %indvars.iv3950.i = phi i64 [ %indvars.iv.next3951.i, %for.body1387.i ], [ 0, %for.cond1385.preheader.i ]
  %rsum011372.03598.i = phi double [ %add1413.i, %for.body1387.i ], [ 0.000000e+00, %for.cond1385.preheader.i ]
  %rsum001371.03597.i = phi double [ %add1405.i, %for.body1387.i ], [ 0.000000e+00, %for.cond1385.preheader.i ]
  %isum011370.03596.i = phi double [ %add1417.i, %for.body1387.i ], [ 0.000000e+00, %for.cond1385.preheader.i ]
  %isum001369.03595.i = phi double [ %add1409.i, %for.body1387.i ], [ 0.000000e+00, %for.cond1385.preheader.i ]
  %914 = trunc i64 %indvars.iv3950.i to i32
  %mul1388.i = shl nsw i32 %914, 1
  %add13893402.i = or i32 %mul1388.i, 1
  %idxprom1390.i = sext i32 %mul1388.i to i64
  %arrayidx1391.i = getelementptr inbounds double* %rowAT0.1.lcssa.i472, i64 %idxprom1390.i
  %915 = load double* %arrayidx1391.i, align 8, !tbaa !4
  %idxprom1392.i = sext i32 %add13893402.i to i64
  %arrayidx1393.i = getelementptr inbounds double* %rowAT0.1.lcssa.i472, i64 %idxprom1392.i
  %916 = load double* %arrayidx1393.i, align 8, !tbaa !4
  %arrayidx1395.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %idxprom1390.i
  %917 = load double* %arrayidx1395.i, align 8, !tbaa !4
  %arrayidx1397.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %idxprom1392.i
  %918 = load double* %arrayidx1397.i, align 8, !tbaa !4
  %add.ptr846.sum3403.i = add i64 %idxprom1390.i, %idx.ext845.i
  %arrayidx1399.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %add.ptr846.sum3403.i
  %919 = load double* %arrayidx1399.i, align 8, !tbaa !4
  %add.ptr846.sum3404.i = add i64 %idxprom1392.i, %idx.ext845.i
  %arrayidx1401.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %add.ptr846.sum3404.i
  %920 = load double* %arrayidx1401.i, align 8, !tbaa !4
  %mul1402.i = fmul double %915, %917
  %mul1403.i = fmul double %916, %918
  %sub1404.i = fsub double %mul1402.i, %mul1403.i
  %add1405.i = fadd double %rsum001371.03597.i, %sub1404.i
  %mul1406.i = fmul double %915, %918
  %mul1407.i = fmul double %916, %917
  %add1408.i = fadd double %mul1407.i, %mul1406.i
  %add1409.i = fadd double %isum001369.03595.i, %add1408.i
  %mul1410.i = fmul double %915, %919
  %mul1411.i = fmul double %916, %920
  %sub1412.i = fsub double %mul1410.i, %mul1411.i
  %add1413.i = fadd double %rsum011372.03598.i, %sub1412.i
  %mul1414.i = fmul double %915, %920
  %mul1415.i = fmul double %916, %919
  %add1416.i = fadd double %mul1415.i, %mul1414.i
  %add1417.i = fadd double %isum011370.03596.i, %add1416.i
  %indvars.iv.next3951.i = add i64 %indvars.iv3950.i, 1
  %lftr.wideiv1227 = trunc i64 %indvars.iv.next3951.i to i32
  %exitcond1228 = icmp eq i32 %lftr.wideiv1227, %911
  br i1 %exitcond1228, label %if.end1462.i, label %for.body1387.i

for.body1424.i:                                   ; preds = %for.body1424.i, %for.body1424.lr.ph.i
  %indvars.iv3952.i = phi i64 [ 0, %for.body1424.lr.ph.i ], [ %indvars.iv.next3953.i, %for.body1424.i ]
  %rsum011372.13609.i = phi double [ 0.000000e+00, %for.body1424.lr.ph.i ], [ %add1454.i, %for.body1424.i ]
  %rsum001371.13608.i = phi double [ 0.000000e+00, %for.body1424.lr.ph.i ], [ %add1446.i, %for.body1424.i ]
  %isum011370.13607.i = phi double [ 0.000000e+00, %for.body1424.lr.ph.i ], [ %add1458.i, %for.body1424.i ]
  %isum001369.13606.i = phi double [ 0.000000e+00, %for.body1424.lr.ph.i ], [ %add1450.i, %for.body1424.i ]
  %921 = trunc i64 %indvars.iv3952.i to i32
  %mul1425.i = shl nsw i32 %921, 1
  %add14263399.i = or i32 %mul1425.i, 1
  %idxprom1427.i = sext i32 %mul1425.i to i64
  %arrayidx1428.i = getelementptr inbounds double* %rowAT0.1.lcssa.i472, i64 %idxprom1427.i
  %922 = load double* %arrayidx1428.i, align 8, !tbaa !4
  %idxprom1429.i = sext i32 %add14263399.i to i64
  %arrayidx1430.i = getelementptr inbounds double* %rowAT0.1.lcssa.i472, i64 %idxprom1429.i
  %923 = load double* %arrayidx1430.i, align 8, !tbaa !4
  %arrayidx1432.i = getelementptr inbounds i32* %913, i64 %indvars.iv3952.i
  %924 = load i32* %arrayidx1432.i, align 4, !tbaa !3
  %mul1433.i = shl nsw i32 %924, 1
  %add14343400.i = or i32 %mul1433.i, 1
  %idxprom1435.i = sext i32 %mul1433.i to i64
  %arrayidx1436.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %idxprom1435.i
  %925 = load double* %arrayidx1436.i, align 8, !tbaa !4
  %idxprom1437.i = sext i32 %add14343400.i to i64
  %arrayidx1438.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %idxprom1437.i
  %926 = load double* %arrayidx1438.i, align 8, !tbaa !4
  %add.ptr846.sum.i = add i64 %idxprom1435.i, %idx.ext845.i
  %arrayidx1440.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %add.ptr846.sum.i
  %927 = load double* %arrayidx1440.i, align 8, !tbaa !4
  %add.ptr846.sum3401.i = add i64 %idxprom1437.i, %idx.ext845.i
  %arrayidx1442.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %add.ptr846.sum3401.i
  %928 = load double* %arrayidx1442.i, align 8, !tbaa !4
  %mul1443.i = fmul double %922, %925
  %mul1444.i = fmul double %923, %926
  %sub1445.i = fsub double %mul1443.i, %mul1444.i
  %add1446.i = fadd double %rsum001371.13608.i, %sub1445.i
  %mul1447.i = fmul double %922, %926
  %mul1448.i = fmul double %923, %925
  %add1449.i = fadd double %mul1448.i, %mul1447.i
  %add1450.i = fadd double %isum001369.13606.i, %add1449.i
  %mul1451.i = fmul double %922, %927
  %mul1452.i = fmul double %923, %928
  %sub1453.i = fsub double %mul1451.i, %mul1452.i
  %add1454.i = fadd double %rsum011372.13609.i, %sub1453.i
  %mul1455.i = fmul double %922, %928
  %mul1456.i = fmul double %923, %927
  %add1457.i = fadd double %mul1456.i, %mul1455.i
  %add1458.i = fadd double %isum011370.13607.i, %add1457.i
  %indvars.iv.next3953.i = add i64 %indvars.iv3952.i, 1
  %lftr.wideiv1229 = trunc i64 %indvars.iv.next3953.i to i32
  %exitcond1230 = icmp eq i32 %lftr.wideiv1229, %911
  br i1 %exitcond1230, label %if.end1462.i, label %for.body1424.i

if.end1462.i:                                     ; preds = %for.body1424.i, %for.body1387.i, %for.cond1385.preheader.i, %for.cond1422.preheader.i
  %isum001369.2.i = phi double [ 0.000000e+00, %for.cond1422.preheader.i ], [ 0.000000e+00, %for.cond1385.preheader.i ], [ %add1409.i, %for.body1387.i ], [ %add1450.i, %for.body1424.i ]
  %isum011370.2.i = phi double [ 0.000000e+00, %for.cond1422.preheader.i ], [ 0.000000e+00, %for.cond1385.preheader.i ], [ %add1417.i, %for.body1387.i ], [ %add1458.i, %for.body1424.i ]
  %rsum001371.2.i = phi double [ 0.000000e+00, %for.cond1422.preheader.i ], [ 0.000000e+00, %for.cond1385.preheader.i ], [ %add1405.i, %for.body1387.i ], [ %add1446.i, %for.body1424.i ]
  %rsum011372.2.i = phi double [ 0.000000e+00, %for.cond1422.preheader.i ], [ 0.000000e+00, %for.cond1385.preheader.i ], [ %add1413.i, %for.body1387.i ], [ %add1454.i, %for.body1424.i ]
  %929 = load i32* %nrowY.i314, align 4, !tbaa !3
  %930 = load i32* %nrowAT.i312, align 4, !tbaa !3
  %cmp1463.i = icmp eq i32 %929, %930
  br i1 %cmp1463.i, label %if.then1464.i, label %if.else1479.i

if.then1464.i:                                    ; preds = %if.end1462.i
  %mul1465.i = shl nsw i32 %irowAT.1.lcssa.i473, 1
  %add14663396.i = or i32 %mul1465.i, 1
  %idxprom1467.i = sext i32 %mul1465.i to i64
  %arrayidx1468.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1467.i
  %931 = load double* %arrayidx1468.i, align 8, !tbaa !4
  %sub1469.i = fsub double %931, %rsum001371.2.i
  store double %sub1469.i, double* %arrayidx1468.i, align 8, !tbaa !4
  %idxprom1470.i = sext i32 %add14663396.i to i64
  %arrayidx1471.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1470.i
  %932 = load double* %arrayidx1471.i, align 8, !tbaa !4
  %sub1472.i = fsub double %932, %isum001369.2.i
  store double %sub1472.i, double* %arrayidx1471.i, align 8, !tbaa !4
  %add.ptr849.sum3397.i = add i64 %idxprom1467.i, %idx.ext848.i
  %arrayidx1474.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %add.ptr849.sum3397.i
  %933 = load double* %arrayidx1474.i, align 8, !tbaa !4
  %sub1475.i = fsub double %933, %rsum011372.2.i
  store double %sub1475.i, double* %arrayidx1474.i, align 8, !tbaa !4
  %add.ptr849.sum3398.i = add i64 %idxprom1470.i, %idx.ext848.i
  %arrayidx1477.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %add.ptr849.sum3398.i
  %934 = load double* %arrayidx1477.i, align 8, !tbaa !4
  %sub1478.i = fsub double %934, %isum011370.2.i
  store double %sub1478.i, double* %arrayidx1477.i, align 8, !tbaa !4
  br label %sw.epilog33

if.else1479.i:                                    ; preds = %if.end1462.i
  %idxprom1480.i = sext i32 %irowAT.1.lcssa.i473 to i64
  %935 = load i32** %rowindAT.i316, align 8, !tbaa !0
  %arrayidx1481.i = getelementptr inbounds i32* %935, i64 %idxprom1480.i
  %936 = load i32* %arrayidx1481.i, align 4, !tbaa !3
  %mul1482.i = shl nsw i32 %936, 1
  %add14833394.i = or i32 %mul1482.i, 1
  %idxprom1484.i = sext i32 %mul1482.i to i64
  %arrayidx1485.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1484.i
  %937 = load double* %arrayidx1485.i, align 8, !tbaa !4
  %sub1486.i = fsub double %937, %rsum001371.2.i
  store double %sub1486.i, double* %arrayidx1485.i, align 8, !tbaa !4
  %idxprom1487.i = sext i32 %add14833394.i to i64
  %arrayidx1488.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1487.i
  %938 = load double* %arrayidx1488.i, align 8, !tbaa !4
  %sub1489.i = fsub double %938, %isum001369.2.i
  store double %sub1489.i, double* %arrayidx1488.i, align 8, !tbaa !4
  %add.ptr849.sum.i = add i64 %idxprom1484.i, %idx.ext848.i
  %arrayidx1491.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %add.ptr849.sum.i
  %939 = load double* %arrayidx1491.i, align 8, !tbaa !4
  %sub1492.i = fsub double %939, %rsum011372.2.i
  store double %sub1492.i, double* %arrayidx1491.i, align 8, !tbaa !4
  %add.ptr849.sum3395.i = add i64 %idxprom1487.i, %idx.ext848.i
  %arrayidx1494.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %add.ptr849.sum3395.i
  %940 = load double* %arrayidx1494.i, align 8, !tbaa !4
  %sub1495.i = fsub double %940, %isum011370.2.i
  store double %sub1495.i, double* %arrayidx1494.i, align 8, !tbaa !4
  br label %sw.epilog33

if.else1499.i:                                    ; preds = %for.end840.i
  %sub1500.i = add nsw i32 %648, -1
  %cmp1501.i = icmp eq i32 %jcolX.0.lcssa.i463, %sub1500.i
  br i1 %cmp1501.i, label %if.then1502.i, label %sw.epilog33

if.then1502.i:                                    ; preds = %if.else1499.i
  %941 = load double** %entA.i304, align 8, !tbaa !0
  %942 = load i32* %nrowAT.i312, align 4, !tbaa !3
  %sub15043743.i = add nsw i32 %942, -2
  %cmp15053744.i = icmp sgt i32 %sub15043743.i, 0
  br i1 %cmp15053744.i, label %for.body1506.lr.ph.i, label %for.end1702.i

for.body1506.lr.ph.i:                             ; preds = %if.then1502.i
  %943 = load i32* %ncolAT.i309, align 4, !tbaa !3
  %mul1527.i = shl nsw i32 %943, 1
  %idx.ext1528.i = sext i32 %mul1527.i to i64
  %add.ptr1529.sum.i = shl nsw i64 %idx.ext1528.i, 1
  %944 = load i32* %nrowX.i313, align 4, !tbaa !3
  %cmp1533.i = icmp eq i32 %943, %944
  %945 = load i32* %nrowY.i314, align 4, !tbaa !3
  %cmp1637.i = icmp eq i32 %945, %942
  %add.ptr1532.sum.i = add i64 %add.ptr1529.sum.i, %idx.ext1528.i
  %946 = load i32** %rowindAT.i316, align 8, !tbaa !0
  %cmp15853713.i = icmp sgt i32 %943, 0
  %947 = load i32** %colindAT.i315, align 8, !tbaa !0
  br label %for.body1506.i

for.body1506.i:                                   ; preds = %if.end1696.i, %for.body1506.lr.ph.i
  %indvars.iv3976.i = phi i64 [ 0, %for.body1506.lr.ph.i ], [ %indvars.iv.next3977.i, %if.end1696.i ]
  %rowAT0.23746.i = phi double* [ %941, %for.body1506.lr.ph.i ], [ %add.ptr1699.i, %if.end1696.i ]
  %irowAT.23745.i = phi i32 [ 0, %for.body1506.lr.ph.i ], [ %add1701.i, %if.end1696.i ]
  br i1 %cmp1533.i, label %for.cond1535.preheader.i, label %for.cond1584.preheader.i

for.cond1535.preheader.i:                         ; preds = %for.body1506.i
  br i1 %cmp15853713.i, label %for.body1537.i, label %if.end1636.i

for.cond1584.preheader.i:                         ; preds = %for.body1506.i
  br i1 %cmp15853713.i, label %for.body1586.i, label %if.end1636.i

for.body1537.i:                                   ; preds = %for.cond1535.preheader.i, %for.body1537.i
  %indvars.iv3972.i = phi i64 [ %indvars.iv.next3973.i, %for.body1537.i ], [ 0, %for.cond1535.preheader.i ]
  %rsum201518.03734.i = phi double [ %add1575.i, %for.body1537.i ], [ 0.000000e+00, %for.cond1535.preheader.i ]
  %rsum101517.03733.i = phi double [ %add1567.i, %for.body1537.i ], [ 0.000000e+00, %for.cond1535.preheader.i ]
  %rsum001516.03732.i = phi double [ %add1559.i, %for.body1537.i ], [ 0.000000e+00, %for.cond1535.preheader.i ]
  %isum201515.03731.i = phi double [ %add1579.i, %for.body1537.i ], [ 0.000000e+00, %for.cond1535.preheader.i ]
  %isum101514.03730.i = phi double [ %add1571.i, %for.body1537.i ], [ 0.000000e+00, %for.cond1535.preheader.i ]
  %isum001513.03729.i = phi double [ %add1563.i, %for.body1537.i ], [ 0.000000e+00, %for.cond1535.preheader.i ]
  %948 = trunc i64 %indvars.iv3972.i to i32
  %mul1538.i = shl nsw i32 %948, 1
  %add15393389.i = or i32 %mul1538.i, 1
  %idxprom1540.i = sext i32 %mul1538.i to i64
  %arrayidx1541.i = getelementptr inbounds double* %rowAT0.23746.i, i64 %idxprom1540.i
  %949 = load double* %arrayidx1541.i, align 8, !tbaa !4
  %idxprom1542.i = sext i32 %add15393389.i to i64
  %arrayidx1543.i = getelementptr inbounds double* %rowAT0.23746.i, i64 %idxprom1542.i
  %950 = load double* %arrayidx1543.i, align 8, !tbaa !4
  %add.ptr1529.sum3390.i = add i64 %idxprom1540.i, %idx.ext1528.i
  %arrayidx1545.i = getelementptr inbounds double* %rowAT0.23746.i, i64 %add.ptr1529.sum3390.i
  %951 = load double* %arrayidx1545.i, align 8, !tbaa !4
  %add.ptr1529.sum3391.i = add i64 %idxprom1542.i, %idx.ext1528.i
  %arrayidx1547.i = getelementptr inbounds double* %rowAT0.23746.i, i64 %add.ptr1529.sum3391.i
  %952 = load double* %arrayidx1547.i, align 8, !tbaa !4
  %add.ptr1532.sum3392.i = add i64 %idxprom1540.i, %add.ptr1529.sum.i
  %arrayidx1549.i = getelementptr inbounds double* %rowAT0.23746.i, i64 %add.ptr1532.sum3392.i
  %953 = load double* %arrayidx1549.i, align 8, !tbaa !4
  %add.ptr1532.sum3393.i = add i64 %idxprom1542.i, %add.ptr1529.sum.i
  %arrayidx1551.i = getelementptr inbounds double* %rowAT0.23746.i, i64 %add.ptr1532.sum3393.i
  %954 = load double* %arrayidx1551.i, align 8, !tbaa !4
  %arrayidx1553.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %idxprom1540.i
  %955 = load double* %arrayidx1553.i, align 8, !tbaa !4
  %arrayidx1555.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %idxprom1542.i
  %956 = load double* %arrayidx1555.i, align 8, !tbaa !4
  %mul1556.i = fmul double %949, %955
  %mul1557.i = fmul double %950, %956
  %sub1558.i = fsub double %mul1556.i, %mul1557.i
  %add1559.i = fadd double %rsum001516.03732.i, %sub1558.i
  %mul1560.i = fmul double %949, %956
  %mul1561.i = fmul double %950, %955
  %add1562.i = fadd double %mul1561.i, %mul1560.i
  %add1563.i = fadd double %isum001513.03729.i, %add1562.i
  %mul1564.i = fmul double %951, %955
  %mul1565.i = fmul double %952, %956
  %sub1566.i = fsub double %mul1564.i, %mul1565.i
  %add1567.i = fadd double %rsum101517.03733.i, %sub1566.i
  %mul1568.i = fmul double %951, %956
  %mul1569.i = fmul double %952, %955
  %add1570.i = fadd double %mul1569.i, %mul1568.i
  %add1571.i = fadd double %isum101514.03730.i, %add1570.i
  %mul1572.i = fmul double %953, %955
  %mul1573.i = fmul double %954, %956
  %sub1574.i = fsub double %mul1572.i, %mul1573.i
  %add1575.i = fadd double %rsum201518.03734.i, %sub1574.i
  %mul1576.i = fmul double %953, %956
  %mul1577.i = fmul double %954, %955
  %add1578.i = fadd double %mul1577.i, %mul1576.i
  %add1579.i = fadd double %isum201515.03731.i, %add1578.i
  %indvars.iv.next3973.i = add i64 %indvars.iv3972.i, 1
  %lftr.wideiv1245 = trunc i64 %indvars.iv.next3973.i to i32
  %exitcond1246 = icmp eq i32 %lftr.wideiv1245, %943
  br i1 %exitcond1246, label %if.end1636.i, label %for.body1537.i

for.body1586.i:                                   ; preds = %for.cond1584.preheader.i, %for.body1586.i
  %indvars.iv3970.i = phi i64 [ %indvars.iv.next3971.i, %for.body1586.i ], [ 0, %for.cond1584.preheader.i ]
  %rsum201518.13719.i = phi double [ %add1628.i, %for.body1586.i ], [ 0.000000e+00, %for.cond1584.preheader.i ]
  %rsum101517.13718.i = phi double [ %add1620.i, %for.body1586.i ], [ 0.000000e+00, %for.cond1584.preheader.i ]
  %rsum001516.13717.i = phi double [ %add1612.i, %for.body1586.i ], [ 0.000000e+00, %for.cond1584.preheader.i ]
  %isum201515.13716.i = phi double [ %add1632.i, %for.body1586.i ], [ 0.000000e+00, %for.cond1584.preheader.i ]
  %isum101514.13715.i = phi double [ %add1624.i, %for.body1586.i ], [ 0.000000e+00, %for.cond1584.preheader.i ]
  %isum001513.13714.i = phi double [ %add1616.i, %for.body1586.i ], [ 0.000000e+00, %for.cond1584.preheader.i ]
  %957 = trunc i64 %indvars.iv3970.i to i32
  %mul1587.i = shl nsw i32 %957, 1
  %add15883383.i = or i32 %mul1587.i, 1
  %idxprom1589.i = sext i32 %mul1587.i to i64
  %arrayidx1590.i = getelementptr inbounds double* %rowAT0.23746.i, i64 %idxprom1589.i
  %958 = load double* %arrayidx1590.i, align 8, !tbaa !4
  %idxprom1591.i = sext i32 %add15883383.i to i64
  %arrayidx1592.i = getelementptr inbounds double* %rowAT0.23746.i, i64 %idxprom1591.i
  %959 = load double* %arrayidx1592.i, align 8, !tbaa !4
  %add.ptr1529.sum3384.i = add i64 %idxprom1589.i, %idx.ext1528.i
  %arrayidx1594.i = getelementptr inbounds double* %rowAT0.23746.i, i64 %add.ptr1529.sum3384.i
  %960 = load double* %arrayidx1594.i, align 8, !tbaa !4
  %add.ptr1529.sum3385.i = add i64 %idxprom1591.i, %idx.ext1528.i
  %arrayidx1596.i = getelementptr inbounds double* %rowAT0.23746.i, i64 %add.ptr1529.sum3385.i
  %961 = load double* %arrayidx1596.i, align 8, !tbaa !4
  %add.ptr1532.sum3386.i = add i64 %idxprom1589.i, %add.ptr1529.sum.i
  %arrayidx1598.i = getelementptr inbounds double* %rowAT0.23746.i, i64 %add.ptr1532.sum3386.i
  %962 = load double* %arrayidx1598.i, align 8, !tbaa !4
  %add.ptr1532.sum3387.i = add i64 %idxprom1591.i, %add.ptr1529.sum.i
  %arrayidx1600.i = getelementptr inbounds double* %rowAT0.23746.i, i64 %add.ptr1532.sum3387.i
  %963 = load double* %arrayidx1600.i, align 8, !tbaa !4
  %arrayidx1602.i = getelementptr inbounds i32* %947, i64 %indvars.iv3970.i
  %964 = load i32* %arrayidx1602.i, align 4, !tbaa !3
  %mul1603.i = shl nsw i32 %964, 1
  %add16043388.i = or i32 %mul1603.i, 1
  %idxprom1605.i = sext i32 %mul1603.i to i64
  %arrayidx1606.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %idxprom1605.i
  %965 = load double* %arrayidx1606.i, align 8, !tbaa !4
  %idxprom1607.i = sext i32 %add16043388.i to i64
  %arrayidx1608.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %idxprom1607.i
  %966 = load double* %arrayidx1608.i, align 8, !tbaa !4
  %mul1609.i = fmul double %958, %965
  %mul1610.i = fmul double %959, %966
  %sub1611.i = fsub double %mul1609.i, %mul1610.i
  %add1612.i = fadd double %rsum001516.13717.i, %sub1611.i
  %mul1613.i = fmul double %958, %966
  %mul1614.i = fmul double %959, %965
  %add1615.i = fadd double %mul1614.i, %mul1613.i
  %add1616.i = fadd double %isum001513.13714.i, %add1615.i
  %mul1617.i = fmul double %960, %965
  %mul1618.i = fmul double %961, %966
  %sub1619.i = fsub double %mul1617.i, %mul1618.i
  %add1620.i = fadd double %rsum101517.13718.i, %sub1619.i
  %mul1621.i = fmul double %960, %966
  %mul1622.i = fmul double %961, %965
  %add1623.i = fadd double %mul1622.i, %mul1621.i
  %add1624.i = fadd double %isum101514.13715.i, %add1623.i
  %mul1625.i = fmul double %962, %965
  %mul1626.i = fmul double %963, %966
  %sub1627.i = fsub double %mul1625.i, %mul1626.i
  %add1628.i = fadd double %rsum201518.13719.i, %sub1627.i
  %mul1629.i = fmul double %962, %966
  %mul1630.i = fmul double %963, %965
  %add1631.i = fadd double %mul1630.i, %mul1629.i
  %add1632.i = fadd double %isum201515.13716.i, %add1631.i
  %indvars.iv.next3971.i = add i64 %indvars.iv3970.i, 1
  %lftr.wideiv1243 = trunc i64 %indvars.iv.next3971.i to i32
  %exitcond1244 = icmp eq i32 %lftr.wideiv1243, %943
  br i1 %exitcond1244, label %if.end1636.i, label %for.body1586.i

if.end1636.i:                                     ; preds = %for.body1537.i, %for.body1586.i, %for.cond1584.preheader.i, %for.cond1535.preheader.i
  %isum001513.2.i = phi double [ 0.000000e+00, %for.cond1584.preheader.i ], [ 0.000000e+00, %for.cond1535.preheader.i ], [ %add1616.i, %for.body1586.i ], [ %add1563.i, %for.body1537.i ]
  %isum101514.2.i = phi double [ 0.000000e+00, %for.cond1584.preheader.i ], [ 0.000000e+00, %for.cond1535.preheader.i ], [ %add1624.i, %for.body1586.i ], [ %add1571.i, %for.body1537.i ]
  %isum201515.2.i = phi double [ 0.000000e+00, %for.cond1584.preheader.i ], [ 0.000000e+00, %for.cond1535.preheader.i ], [ %add1632.i, %for.body1586.i ], [ %add1579.i, %for.body1537.i ]
  %rsum001516.2.i = phi double [ 0.000000e+00, %for.cond1584.preheader.i ], [ 0.000000e+00, %for.cond1535.preheader.i ], [ %add1612.i, %for.body1586.i ], [ %add1559.i, %for.body1537.i ]
  %rsum101517.2.i = phi double [ 0.000000e+00, %for.cond1584.preheader.i ], [ 0.000000e+00, %for.cond1535.preheader.i ], [ %add1620.i, %for.body1586.i ], [ %add1567.i, %for.body1537.i ]
  %rsum201518.2.i = phi double [ 0.000000e+00, %for.cond1584.preheader.i ], [ 0.000000e+00, %for.cond1535.preheader.i ], [ %add1628.i, %for.body1586.i ], [ %add1575.i, %for.body1537.i ]
  br i1 %cmp1637.i, label %if.then1638.i, label %if.else1663.i

if.then1638.i:                                    ; preds = %if.end1636.i
  %967 = trunc i64 %indvars.iv3976.i to i32
  %mul1639.i = shl nsw i32 %967, 1
  %add16403382.i = or i32 %mul1639.i, 1
  %idxprom1641.i = sext i32 %mul1639.i to i64
  %arrayidx1642.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1641.i
  %968 = load double* %arrayidx1642.i, align 8, !tbaa !4
  %sub1643.i = fsub double %968, %rsum001516.2.i
  store double %sub1643.i, double* %arrayidx1642.i, align 8, !tbaa !4
  %idxprom1644.i = sext i32 %add16403382.i to i64
  %arrayidx1645.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1644.i
  %969 = load double* %arrayidx1645.i, align 8, !tbaa !4
  %sub1646.i = fsub double %969, %isum001513.2.i
  store double %sub1646.i, double* %arrayidx1645.i, align 8, !tbaa !4
  %add1647.i = add nsw i32 %mul1639.i, 2
  %add1648.i = add nsw i32 %add16403382.i, 2
  %idxprom1649.i = sext i32 %add1647.i to i64
  %arrayidx1650.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1649.i
  %970 = load double* %arrayidx1650.i, align 8, !tbaa !4
  %sub1651.i = fsub double %970, %rsum101517.2.i
  store double %sub1651.i, double* %arrayidx1650.i, align 8, !tbaa !4
  %idxprom1652.i = sext i32 %add1648.i to i64
  %arrayidx1653.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1652.i
  %971 = load double* %arrayidx1653.i, align 8, !tbaa !4
  %sub1654.i = fsub double %971, %isum101514.2.i
  store double %sub1654.i, double* %arrayidx1653.i, align 8, !tbaa !4
  %add1655.i = add nsw i32 %mul1639.i, 4
  %add1656.i = add nsw i32 %add16403382.i, 4
  %idxprom1657.i = sext i32 %add1655.i to i64
  %arrayidx1658.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1657.i
  %972 = load double* %arrayidx1658.i, align 8, !tbaa !4
  %sub1659.i = fsub double %972, %rsum201518.2.i
  store double %sub1659.i, double* %arrayidx1658.i, align 8, !tbaa !4
  %idxprom1660.i = sext i32 %add1656.i to i64
  %arrayidx1661.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1660.i
  %973 = load double* %arrayidx1661.i, align 8, !tbaa !4
  %sub1662.i = fsub double %973, %isum201515.2.i
  store double %sub1662.i, double* %arrayidx1661.i, align 8, !tbaa !4
  br label %if.end1696.i

if.else1663.i:                                    ; preds = %if.end1636.i
  %arrayidx1665.i = getelementptr inbounds i32* %946, i64 %indvars.iv3976.i
  %974 = load i32* %arrayidx1665.i, align 4, !tbaa !3
  %mul1666.i = shl nsw i32 %974, 1
  %add16673379.i = or i32 %mul1666.i, 1
  %idxprom1668.i = sext i32 %mul1666.i to i64
  %arrayidx1669.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1668.i
  %975 = load double* %arrayidx1669.i, align 8, !tbaa !4
  %sub1670.i = fsub double %975, %rsum001516.2.i
  store double %sub1670.i, double* %arrayidx1669.i, align 8, !tbaa !4
  %idxprom1671.i = sext i32 %add16673379.i to i64
  %arrayidx1672.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1671.i
  %976 = load double* %arrayidx1672.i, align 8, !tbaa !4
  %sub1673.i = fsub double %976, %isum001513.2.i
  store double %sub1673.i, double* %arrayidx1672.i, align 8, !tbaa !4
  %977 = add nsw i64 %indvars.iv3976.i, 1
  %arrayidx1676.i = getelementptr inbounds i32* %946, i64 %977
  %978 = load i32* %arrayidx1676.i, align 4, !tbaa !3
  %mul1677.i = shl nsw i32 %978, 1
  %add16783380.i = or i32 %mul1677.i, 1
  %idxprom1679.i = sext i32 %mul1677.i to i64
  %arrayidx1680.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1679.i
  %979 = load double* %arrayidx1680.i, align 8, !tbaa !4
  %sub1681.i = fsub double %979, %rsum101517.2.i
  store double %sub1681.i, double* %arrayidx1680.i, align 8, !tbaa !4
  %idxprom1682.i = sext i32 %add16783380.i to i64
  %arrayidx1683.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1682.i
  %980 = load double* %arrayidx1683.i, align 8, !tbaa !4
  %sub1684.i = fsub double %980, %isum101514.2.i
  store double %sub1684.i, double* %arrayidx1683.i, align 8, !tbaa !4
  %981 = add nsw i64 %indvars.iv3976.i, 2
  %arrayidx1687.i = getelementptr inbounds i32* %946, i64 %981
  %982 = load i32* %arrayidx1687.i, align 4, !tbaa !3
  %mul1688.i = shl nsw i32 %982, 1
  %add16893381.i = or i32 %mul1688.i, 1
  %idxprom1690.i = sext i32 %mul1688.i to i64
  %arrayidx1691.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1690.i
  %983 = load double* %arrayidx1691.i, align 8, !tbaa !4
  %sub1692.i = fsub double %983, %rsum201518.2.i
  store double %sub1692.i, double* %arrayidx1691.i, align 8, !tbaa !4
  %idxprom1693.i = sext i32 %add16893381.i to i64
  %arrayidx1694.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1693.i
  %984 = load double* %arrayidx1694.i, align 8, !tbaa !4
  %sub1695.i = fsub double %984, %isum201515.2.i
  store double %sub1695.i, double* %arrayidx1694.i, align 8, !tbaa !4
  br label %if.end1696.i

if.end1696.i:                                     ; preds = %if.else1663.i, %if.then1638.i
  %add.ptr1699.i = getelementptr inbounds double* %rowAT0.23746.i, i64 %add.ptr1532.sum.i
  %indvars.iv.next3977.i = add i64 %indvars.iv3976.i, 3
  %add1701.i = add nsw i32 %irowAT.23745.i, 3
  %985 = trunc i64 %indvars.iv.next3977.i to i32
  %cmp1505.i = icmp slt i32 %985, %sub15043743.i
  br i1 %cmp1505.i, label %for.body1506.i, label %for.end1702.i

for.end1702.i:                                    ; preds = %if.end1696.i, %if.then1502.i
  %rowAT0.2.lcssa.i476 = phi double* [ %941, %if.then1502.i ], [ %add.ptr1699.i, %if.end1696.i ]
  %irowAT.2.lcssa.i477 = phi i32 [ 0, %if.then1502.i ], [ %add1701.i, %if.end1696.i ]
  %cmp1704.i = icmp eq i32 %irowAT.2.lcssa.i477, %sub15043743.i
  br i1 %cmp1704.i, label %if.then1705.i, label %if.else1846.i

if.then1705.i:                                    ; preds = %for.end1702.i
  %986 = load i32* %ncolAT.i309, align 4, !tbaa !3
  %mul1722.i = shl nsw i32 %986, 1
  %idx.ext1723.i = sext i32 %mul1722.i to i64
  %987 = load i32* %nrowX.i313, align 4, !tbaa !3
  %cmp1725.i = icmp eq i32 %986, %987
  %cmp17283679.i = icmp sgt i32 %986, 0
  br i1 %cmp1725.i, label %for.cond1727.preheader.i, label %for.cond1764.preheader.i

for.cond1764.preheader.i:                         ; preds = %if.then1705.i
  br i1 %cmp17283679.i, label %for.body1766.lr.ph.i, label %if.end1804.i

for.body1766.lr.ph.i:                             ; preds = %for.cond1764.preheader.i
  %988 = load i32** %colindAT.i315, align 8, !tbaa !0
  br label %for.body1766.i

for.cond1727.preheader.i:                         ; preds = %if.then1705.i
  br i1 %cmp17283679.i, label %for.body1729.i, label %if.end1804.i

for.body1729.i:                                   ; preds = %for.cond1727.preheader.i, %for.body1729.i
  %indvars.iv3962.i = phi i64 [ %indvars.iv.next3963.i, %for.body1729.i ], [ 0, %for.cond1727.preheader.i ]
  %rsum101713.03684.i = phi double [ %add1755.i, %for.body1729.i ], [ 0.000000e+00, %for.cond1727.preheader.i ]
  %rsum001712.03683.i = phi double [ %add1747.i, %for.body1729.i ], [ 0.000000e+00, %for.cond1727.preheader.i ]
  %isum101711.03682.i = phi double [ %add1759.i, %for.body1729.i ], [ 0.000000e+00, %for.cond1727.preheader.i ]
  %isum001710.03681.i = phi double [ %add1751.i, %for.body1729.i ], [ 0.000000e+00, %for.cond1727.preheader.i ]
  %989 = trunc i64 %indvars.iv3962.i to i32
  %mul1730.i = shl nsw i32 %989, 1
  %add17313376.i = or i32 %mul1730.i, 1
  %idxprom1732.i = sext i32 %mul1730.i to i64
  %arrayidx1733.i = getelementptr inbounds double* %rowAT0.2.lcssa.i476, i64 %idxprom1732.i
  %990 = load double* %arrayidx1733.i, align 8, !tbaa !4
  %idxprom1734.i = sext i32 %add17313376.i to i64
  %arrayidx1735.i = getelementptr inbounds double* %rowAT0.2.lcssa.i476, i64 %idxprom1734.i
  %991 = load double* %arrayidx1735.i, align 8, !tbaa !4
  %add.ptr1724.sum3377.i = add i64 %idxprom1732.i, %idx.ext1723.i
  %arrayidx1737.i = getelementptr inbounds double* %rowAT0.2.lcssa.i476, i64 %add.ptr1724.sum3377.i
  %992 = load double* %arrayidx1737.i, align 8, !tbaa !4
  %add.ptr1724.sum3378.i = add i64 %idxprom1734.i, %idx.ext1723.i
  %arrayidx1739.i = getelementptr inbounds double* %rowAT0.2.lcssa.i476, i64 %add.ptr1724.sum3378.i
  %993 = load double* %arrayidx1739.i, align 8, !tbaa !4
  %arrayidx1741.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %idxprom1732.i
  %994 = load double* %arrayidx1741.i, align 8, !tbaa !4
  %arrayidx1743.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %idxprom1734.i
  %995 = load double* %arrayidx1743.i, align 8, !tbaa !4
  %mul1744.i = fmul double %990, %994
  %mul1745.i = fmul double %991, %995
  %sub1746.i = fsub double %mul1744.i, %mul1745.i
  %add1747.i = fadd double %rsum001712.03683.i, %sub1746.i
  %mul1748.i = fmul double %990, %995
  %mul1749.i = fmul double %991, %994
  %add1750.i = fadd double %mul1749.i, %mul1748.i
  %add1751.i = fadd double %isum001710.03681.i, %add1750.i
  %mul1752.i = fmul double %992, %994
  %mul1753.i = fmul double %993, %995
  %sub1754.i = fsub double %mul1752.i, %mul1753.i
  %add1755.i = fadd double %rsum101713.03684.i, %sub1754.i
  %mul1756.i = fmul double %992, %995
  %mul1757.i = fmul double %993, %994
  %add1758.i = fadd double %mul1757.i, %mul1756.i
  %add1759.i = fadd double %isum101711.03682.i, %add1758.i
  %indvars.iv.next3963.i = add i64 %indvars.iv3962.i, 1
  %lftr.wideiv1235 = trunc i64 %indvars.iv.next3963.i to i32
  %exitcond1236 = icmp eq i32 %lftr.wideiv1235, %986
  br i1 %exitcond1236, label %if.end1804.i, label %for.body1729.i

for.body1766.i:                                   ; preds = %for.body1766.i, %for.body1766.lr.ph.i
  %indvars.iv3964.i = phi i64 [ 0, %for.body1766.lr.ph.i ], [ %indvars.iv.next3965.i, %for.body1766.i ]
  %rsum101713.13695.i = phi double [ 0.000000e+00, %for.body1766.lr.ph.i ], [ %add1796.i, %for.body1766.i ]
  %rsum001712.13694.i = phi double [ 0.000000e+00, %for.body1766.lr.ph.i ], [ %add1788.i, %for.body1766.i ]
  %isum101711.13693.i = phi double [ 0.000000e+00, %for.body1766.lr.ph.i ], [ %add1800.i, %for.body1766.i ]
  %isum001710.13692.i = phi double [ 0.000000e+00, %for.body1766.lr.ph.i ], [ %add1792.i, %for.body1766.i ]
  %996 = trunc i64 %indvars.iv3964.i to i32
  %mul1767.i = shl nsw i32 %996, 1
  %add17683373.i = or i32 %mul1767.i, 1
  %idxprom1769.i = sext i32 %mul1767.i to i64
  %arrayidx1770.i = getelementptr inbounds double* %rowAT0.2.lcssa.i476, i64 %idxprom1769.i
  %997 = load double* %arrayidx1770.i, align 8, !tbaa !4
  %idxprom1771.i = sext i32 %add17683373.i to i64
  %arrayidx1772.i = getelementptr inbounds double* %rowAT0.2.lcssa.i476, i64 %idxprom1771.i
  %998 = load double* %arrayidx1772.i, align 8, !tbaa !4
  %add.ptr1724.sum.i = add i64 %idxprom1769.i, %idx.ext1723.i
  %arrayidx1774.i = getelementptr inbounds double* %rowAT0.2.lcssa.i476, i64 %add.ptr1724.sum.i
  %999 = load double* %arrayidx1774.i, align 8, !tbaa !4
  %add.ptr1724.sum3374.i = add i64 %idxprom1771.i, %idx.ext1723.i
  %arrayidx1776.i = getelementptr inbounds double* %rowAT0.2.lcssa.i476, i64 %add.ptr1724.sum3374.i
  %1000 = load double* %arrayidx1776.i, align 8, !tbaa !4
  %arrayidx1778.i = getelementptr inbounds i32* %988, i64 %indvars.iv3964.i
  %1001 = load i32* %arrayidx1778.i, align 4, !tbaa !3
  %mul1779.i = shl nsw i32 %1001, 1
  %add17803375.i = or i32 %mul1779.i, 1
  %idxprom1781.i = sext i32 %mul1779.i to i64
  %arrayidx1782.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %idxprom1781.i
  %1002 = load double* %arrayidx1782.i, align 8, !tbaa !4
  %idxprom1783.i = sext i32 %add17803375.i to i64
  %arrayidx1784.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %idxprom1783.i
  %1003 = load double* %arrayidx1784.i, align 8, !tbaa !4
  %mul1785.i = fmul double %997, %1002
  %mul1786.i = fmul double %998, %1003
  %sub1787.i = fsub double %mul1785.i, %mul1786.i
  %add1788.i = fadd double %rsum001712.13694.i, %sub1787.i
  %mul1789.i = fmul double %997, %1003
  %mul1790.i = fmul double %998, %1002
  %add1791.i = fadd double %mul1790.i, %mul1789.i
  %add1792.i = fadd double %isum001710.13692.i, %add1791.i
  %mul1793.i = fmul double %999, %1002
  %mul1794.i = fmul double %1000, %1003
  %sub1795.i = fsub double %mul1793.i, %mul1794.i
  %add1796.i = fadd double %rsum101713.13695.i, %sub1795.i
  %mul1797.i = fmul double %999, %1003
  %mul1798.i = fmul double %1000, %1002
  %add1799.i = fadd double %mul1798.i, %mul1797.i
  %add1800.i = fadd double %isum101711.13693.i, %add1799.i
  %indvars.iv.next3965.i = add i64 %indvars.iv3964.i, 1
  %lftr.wideiv1237 = trunc i64 %indvars.iv.next3965.i to i32
  %exitcond1238 = icmp eq i32 %lftr.wideiv1237, %986
  br i1 %exitcond1238, label %if.end1804.i, label %for.body1766.i

if.end1804.i:                                     ; preds = %for.body1766.i, %for.body1729.i, %for.cond1727.preheader.i, %for.cond1764.preheader.i
  %isum001710.2.i = phi double [ 0.000000e+00, %for.cond1764.preheader.i ], [ 0.000000e+00, %for.cond1727.preheader.i ], [ %add1751.i, %for.body1729.i ], [ %add1792.i, %for.body1766.i ]
  %isum101711.2.i = phi double [ 0.000000e+00, %for.cond1764.preheader.i ], [ 0.000000e+00, %for.cond1727.preheader.i ], [ %add1759.i, %for.body1729.i ], [ %add1800.i, %for.body1766.i ]
  %rsum001712.2.i = phi double [ 0.000000e+00, %for.cond1764.preheader.i ], [ 0.000000e+00, %for.cond1727.preheader.i ], [ %add1747.i, %for.body1729.i ], [ %add1788.i, %for.body1766.i ]
  %rsum101713.2.i = phi double [ 0.000000e+00, %for.cond1764.preheader.i ], [ 0.000000e+00, %for.cond1727.preheader.i ], [ %add1755.i, %for.body1729.i ], [ %add1796.i, %for.body1766.i ]
  %1004 = load i32* %nrowY.i314, align 4, !tbaa !3
  %cmp1805.i = icmp eq i32 %1004, %942
  br i1 %cmp1805.i, label %if.then1806.i, label %if.else1823.i

if.then1806.i:                                    ; preds = %if.end1804.i
  %mul1807.i = shl nsw i32 %sub15043743.i, 1
  %add18083372.i = or i32 %mul1807.i, 1
  %idxprom1809.i = sext i32 %mul1807.i to i64
  %arrayidx1810.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1809.i
  %1005 = load double* %arrayidx1810.i, align 8, !tbaa !4
  %sub1811.i = fsub double %1005, %rsum001712.2.i
  store double %sub1811.i, double* %arrayidx1810.i, align 8, !tbaa !4
  %idxprom1812.i = sext i32 %add18083372.i to i64
  %arrayidx1813.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1812.i
  %1006 = load double* %arrayidx1813.i, align 8, !tbaa !4
  %sub1814.i = fsub double %1006, %isum001710.2.i
  store double %sub1814.i, double* %arrayidx1813.i, align 8, !tbaa !4
  %add1815.i = add nsw i32 %mul1807.i, 2
  %add1816.i = add nsw i32 %add18083372.i, 2
  %idxprom1817.i = sext i32 %add1815.i to i64
  %arrayidx1818.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1817.i
  %1007 = load double* %arrayidx1818.i, align 8, !tbaa !4
  %sub1819.i = fsub double %1007, %rsum101713.2.i
  store double %sub1819.i, double* %arrayidx1818.i, align 8, !tbaa !4
  %idxprom1820.i = sext i32 %add1816.i to i64
  %arrayidx1821.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1820.i
  %1008 = load double* %arrayidx1821.i, align 8, !tbaa !4
  %sub1822.i = fsub double %1008, %isum101711.2.i
  store double %sub1822.i, double* %arrayidx1821.i, align 8, !tbaa !4
  br label %sw.epilog33

if.else1823.i:                                    ; preds = %if.end1804.i
  %idxprom1824.i = sext i32 %sub15043743.i to i64
  %1009 = load i32** %rowindAT.i316, align 8, !tbaa !0
  %arrayidx1825.i = getelementptr inbounds i32* %1009, i64 %idxprom1824.i
  %1010 = load i32* %arrayidx1825.i, align 4, !tbaa !3
  %mul1826.i = shl nsw i32 %1010, 1
  %add18273370.i = or i32 %mul1826.i, 1
  %idxprom1828.i = sext i32 %mul1826.i to i64
  %arrayidx1829.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1828.i
  %1011 = load double* %arrayidx1829.i, align 8, !tbaa !4
  %sub1830.i = fsub double %1011, %rsum001712.2.i
  store double %sub1830.i, double* %arrayidx1829.i, align 8, !tbaa !4
  %idxprom1831.i = sext i32 %add18273370.i to i64
  %arrayidx1832.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1831.i
  %1012 = load double* %arrayidx1832.i, align 8, !tbaa !4
  %sub1833.i = fsub double %1012, %isum001710.2.i
  store double %sub1833.i, double* %arrayidx1832.i, align 8, !tbaa !4
  %add1834.i = add nsw i32 %942, -1
  %idxprom1835.i = sext i32 %add1834.i to i64
  %arrayidx1836.i = getelementptr inbounds i32* %1009, i64 %idxprom1835.i
  %1013 = load i32* %arrayidx1836.i, align 4, !tbaa !3
  %mul1837.i = shl nsw i32 %1013, 1
  %add18383371.i = or i32 %mul1837.i, 1
  %idxprom1839.i = sext i32 %mul1837.i to i64
  %arrayidx1840.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1839.i
  %1014 = load double* %arrayidx1840.i, align 8, !tbaa !4
  %sub1841.i = fsub double %1014, %rsum101713.2.i
  store double %sub1841.i, double* %arrayidx1840.i, align 8, !tbaa !4
  %idxprom1842.i = sext i32 %add18383371.i to i64
  %arrayidx1843.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1842.i
  %1015 = load double* %arrayidx1843.i, align 8, !tbaa !4
  %sub1844.i = fsub double %1015, %isum101711.2.i
  store double %sub1844.i, double* %arrayidx1843.i, align 8, !tbaa !4
  br label %sw.epilog33

if.else1846.i:                                    ; preds = %for.end1702.i
  %sub1847.i = add nsw i32 %942, -1
  %cmp1848.i = icmp eq i32 %irowAT.2.lcssa.i477, %sub1847.i
  br i1 %cmp1848.i, label %if.then1849.i, label %sw.epilog33

if.then1849.i:                                    ; preds = %if.else1846.i
  %1016 = load i32* %ncolAT.i309, align 4, !tbaa !3
  %1017 = load i32* %nrowX.i313, align 4, !tbaa !3
  %cmp1862.i = icmp eq i32 %1016, %1017
  %cmp18653700.i = icmp sgt i32 %1016, 0
  br i1 %cmp1862.i, label %for.cond1864.preheader.i, label %for.cond1889.preheader.i

for.cond1889.preheader.i:                         ; preds = %if.then1849.i
  br i1 %cmp18653700.i, label %for.body1891.lr.ph.i, label %if.end1917.i

for.body1891.lr.ph.i:                             ; preds = %for.cond1889.preheader.i
  %1018 = load i32** %colindAT.i315, align 8, !tbaa !0
  br label %for.body1891.i

for.cond1864.preheader.i:                         ; preds = %if.then1849.i
  br i1 %cmp18653700.i, label %for.body1866.i, label %if.end1917.i

for.body1866.i:                                   ; preds = %for.cond1864.preheader.i, %for.body1866.i
  %indvars.iv3966.i = phi i64 [ %indvars.iv.next3967.i, %for.body1866.i ], [ 0, %for.cond1864.preheader.i ]
  %rsum001853.03703.i = phi double [ %add1880.i, %for.body1866.i ], [ 0.000000e+00, %for.cond1864.preheader.i ]
  %isum001852.03702.i = phi double [ %add1884.i, %for.body1866.i ], [ 0.000000e+00, %for.cond1864.preheader.i ]
  %1019 = trunc i64 %indvars.iv3966.i to i32
  %mul1867.i = shl nsw i32 %1019, 1
  %add18683369.i = or i32 %mul1867.i, 1
  %idxprom1869.i = sext i32 %mul1867.i to i64
  %arrayidx1870.i = getelementptr inbounds double* %rowAT0.2.lcssa.i476, i64 %idxprom1869.i
  %1020 = load double* %arrayidx1870.i, align 8, !tbaa !4
  %idxprom1871.i = sext i32 %add18683369.i to i64
  %arrayidx1872.i = getelementptr inbounds double* %rowAT0.2.lcssa.i476, i64 %idxprom1871.i
  %1021 = load double* %arrayidx1872.i, align 8, !tbaa !4
  %arrayidx1874.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %idxprom1869.i
  %1022 = load double* %arrayidx1874.i, align 8, !tbaa !4
  %arrayidx1876.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %idxprom1871.i
  %1023 = load double* %arrayidx1876.i, align 8, !tbaa !4
  %mul1877.i = fmul double %1020, %1022
  %mul1878.i = fmul double %1021, %1023
  %sub1879.i = fsub double %mul1877.i, %mul1878.i
  %add1880.i = fadd double %rsum001853.03703.i, %sub1879.i
  %mul1881.i = fmul double %1020, %1023
  %mul1882.i = fmul double %1021, %1022
  %add1883.i = fadd double %mul1882.i, %mul1881.i
  %add1884.i = fadd double %isum001852.03702.i, %add1883.i
  %indvars.iv.next3967.i = add i64 %indvars.iv3966.i, 1
  %lftr.wideiv1239 = trunc i64 %indvars.iv.next3967.i to i32
  %exitcond1240 = icmp eq i32 %lftr.wideiv1239, %1016
  br i1 %exitcond1240, label %if.end1917.i, label %for.body1866.i

for.body1891.i:                                   ; preds = %for.body1891.i, %for.body1891.lr.ph.i
  %indvars.iv3968.i = phi i64 [ 0, %for.body1891.lr.ph.i ], [ %indvars.iv.next3969.i, %for.body1891.i ]
  %rsum001853.13710.i = phi double [ 0.000000e+00, %for.body1891.lr.ph.i ], [ %add1909.i, %for.body1891.i ]
  %isum001852.13709.i = phi double [ 0.000000e+00, %for.body1891.lr.ph.i ], [ %add1913.i, %for.body1891.i ]
  %1024 = trunc i64 %indvars.iv3968.i to i32
  %mul1892.i = shl nsw i32 %1024, 1
  %add18933367.i = or i32 %mul1892.i, 1
  %idxprom1894.i = sext i32 %mul1892.i to i64
  %arrayidx1895.i = getelementptr inbounds double* %rowAT0.2.lcssa.i476, i64 %idxprom1894.i
  %1025 = load double* %arrayidx1895.i, align 8, !tbaa !4
  %idxprom1896.i = sext i32 %add18933367.i to i64
  %arrayidx1897.i = getelementptr inbounds double* %rowAT0.2.lcssa.i476, i64 %idxprom1896.i
  %1026 = load double* %arrayidx1897.i, align 8, !tbaa !4
  %arrayidx1899.i = getelementptr inbounds i32* %1018, i64 %indvars.iv3968.i
  %1027 = load i32* %arrayidx1899.i, align 4, !tbaa !3
  %mul1900.i = shl nsw i32 %1027, 1
  %add19013368.i = or i32 %mul1900.i, 1
  %idxprom1902.i = sext i32 %mul1900.i to i64
  %arrayidx1903.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %idxprom1902.i
  %1028 = load double* %arrayidx1903.i, align 8, !tbaa !4
  %idxprom1904.i = sext i32 %add19013368.i to i64
  %arrayidx1905.i = getelementptr inbounds double* %colX0.0.lcssa.i461, i64 %idxprom1904.i
  %1029 = load double* %arrayidx1905.i, align 8, !tbaa !4
  %mul1906.i = fmul double %1025, %1028
  %mul1907.i = fmul double %1026, %1029
  %sub1908.i = fsub double %mul1906.i, %mul1907.i
  %add1909.i = fadd double %rsum001853.13710.i, %sub1908.i
  %mul1910.i = fmul double %1025, %1029
  %mul1911.i = fmul double %1026, %1028
  %add1912.i = fadd double %mul1911.i, %mul1910.i
  %add1913.i = fadd double %isum001852.13709.i, %add1912.i
  %indvars.iv.next3969.i = add i64 %indvars.iv3968.i, 1
  %lftr.wideiv1241 = trunc i64 %indvars.iv.next3969.i to i32
  %exitcond1242 = icmp eq i32 %lftr.wideiv1241, %1016
  br i1 %exitcond1242, label %if.end1917.i, label %for.body1891.i

if.end1917.i:                                     ; preds = %for.body1891.i, %for.body1866.i, %for.cond1864.preheader.i, %for.cond1889.preheader.i
  %isum001852.2.i = phi double [ 0.000000e+00, %for.cond1889.preheader.i ], [ 0.000000e+00, %for.cond1864.preheader.i ], [ %add1884.i, %for.body1866.i ], [ %add1913.i, %for.body1891.i ]
  %rsum001853.2.i = phi double [ 0.000000e+00, %for.cond1889.preheader.i ], [ 0.000000e+00, %for.cond1864.preheader.i ], [ %add1880.i, %for.body1866.i ], [ %add1909.i, %for.body1891.i ]
  %1030 = load i32* %nrowY.i314, align 4, !tbaa !3
  %cmp1918.i = icmp eq i32 %1030, %942
  br i1 %cmp1918.i, label %if.then1919.i, label %if.else1928.i

if.then1919.i:                                    ; preds = %if.end1917.i
  %mul1920.i = shl nsw i32 %irowAT.2.lcssa.i477, 1
  %add19213366.i = or i32 %mul1920.i, 1
  %idxprom1922.i = sext i32 %mul1920.i to i64
  %arrayidx1923.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1922.i
  %1031 = load double* %arrayidx1923.i, align 8, !tbaa !4
  %sub1924.i = fsub double %1031, %rsum001853.2.i
  store double %sub1924.i, double* %arrayidx1923.i, align 8, !tbaa !4
  %idxprom1925.i = sext i32 %add19213366.i to i64
  %arrayidx1926.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1925.i
  %1032 = load double* %arrayidx1926.i, align 8, !tbaa !4
  %sub1927.i = fsub double %1032, %isum001852.2.i
  store double %sub1927.i, double* %arrayidx1926.i, align 8, !tbaa !4
  br label %sw.epilog33

if.else1928.i:                                    ; preds = %if.end1917.i
  %idxprom1929.i = sext i32 %irowAT.2.lcssa.i477 to i64
  %1033 = load i32** %rowindAT.i316, align 8, !tbaa !0
  %arrayidx1930.i = getelementptr inbounds i32* %1033, i64 %idxprom1929.i
  %1034 = load i32* %arrayidx1930.i, align 4, !tbaa !3
  %mul1931.i = shl nsw i32 %1034, 1
  %add19323365.i = or i32 %mul1931.i, 1
  %idxprom1933.i = sext i32 %mul1931.i to i64
  %arrayidx1934.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1933.i
  %1035 = load double* %arrayidx1934.i, align 8, !tbaa !4
  %sub1935.i = fsub double %1035, %rsum001853.2.i
  store double %sub1935.i, double* %arrayidx1934.i, align 8, !tbaa !4
  %idxprom1936.i = sext i32 %add19323365.i to i64
  %arrayidx1937.i = getelementptr inbounds double* %colY0.0.lcssa.i462, i64 %idxprom1936.i
  %1036 = load double* %arrayidx1937.i, align 8, !tbaa !4
  %sub1938.i = fsub double %1036, %isum001852.2.i
  store double %sub1938.i, double* %arrayidx1937.i, align 8, !tbaa !4
  br label %sw.epilog33

sw.bb23:                                          ; preds = %sw.bb20
  %1037 = bitcast double** %entA.i478 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1037) #4
  %1038 = bitcast double** %entX.i479 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1038) #4
  %1039 = bitcast double** %entY.i480 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1039) #4
  %1040 = bitcast i32* %inc1.i481 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1040) #4
  %1041 = bitcast i32* %inc2.i482 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1041) #4
  %1042 = bitcast i32* %ncolAT.i483 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1042) #4
  %1043 = bitcast i32* %ncolX.i484 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1043) #4
  %1044 = bitcast i32* %ncolY.i485 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1044) #4
  %1045 = bitcast i32* %nrowAT.i486 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1045) #4
  %1046 = bitcast i32* %nrowX.i487 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1046) #4
  %1047 = bitcast i32* %nrowY.i488 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1047) #4
  %1048 = bitcast i32** %colindAT.i489 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1048) #4
  %1049 = bitcast i32** %rowindAT.i490 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1049) #4
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxY, i32* %nrowY.i488, i32* %ncolY.i485, i32* %inc1.i481, i32* %inc2.i482, double** %entY.i480) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxX, i32* %nrowX.i487, i32* %ncolX.i484, i32* %inc1.i481, i32* %inc2.i482, double** %entX.i479) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxA, i32* %ncolAT.i483, i32* %nrowAT.i486, i32* %inc1.i481, i32* %inc2.i482, double** %entA.i478) #5
  %1050 = load double** %entX.i479, align 8, !tbaa !0
  %1051 = load double** %entY.i480, align 8, !tbaa !0
  %1052 = load i32* %ncolAT.i483, align 4, !tbaa !3
  %1053 = load i32* %nrowX.i487, align 4, !tbaa !3
  %cmp.i491 = icmp eq i32 %1052, %1053
  br i1 %cmp.i491, label %if.else.i493, label %if.then.i492

if.then.i492:                                     ; preds = %sw.bb23
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtxA, i32* %ncolAT.i483, i32** %colindAT.i489) #5
  br label %if.end.i495

if.else.i493:                                     ; preds = %sw.bb23
  store i32* null, i32** %colindAT.i489, align 8, !tbaa !0
  br label %if.end.i495

if.end.i495:                                      ; preds = %if.else.i493, %if.then.i492
  %1054 = load i32* %nrowAT.i486, align 4, !tbaa !3
  %1055 = load i32* %nrowY.i488, align 4, !tbaa !3
  %cmp1.i494 = icmp eq i32 %1054, %1055
  br i1 %cmp1.i494, label %if.else3.i497, label %if.then2.i496

if.then2.i496:                                    ; preds = %if.end.i495
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtxA, i32* %nrowAT.i486, i32** %rowindAT.i490) #5
  br label %for.cond.preheader.i498

if.else3.i497:                                    ; preds = %if.end.i495
  store i32* null, i32** %rowindAT.i490, align 8, !tbaa !0
  br label %for.cond.preheader.i498

for.cond.preheader.i498:                          ; preds = %if.else3.i497, %if.then2.i496
  %1056 = load i32* %ncolX.i484, align 4, !tbaa !3
  %sub3653.i = add nsw i32 %1056, -2
  %cmp53654.i = icmp sgt i32 %sub3653.i, 0
  br i1 %cmp53654.i, label %for.body.lr.ph.i499, label %for.end813.i

for.body.lr.ph.i499:                              ; preds = %for.cond.preheader.i498
  %.pre3727.i = load i32* %nrowX.i487, align 4, !tbaa !3
  %.pre3728.i = load i32* %nrowY.i488, align 4, !tbaa !3
  %.pre3729.i = load i32* %ncolAT.i483, align 4, !tbaa !3
  br label %for.body.i506

for.body.i506:                                    ; preds = %if.end804.i.for.body.i506_crit_edge, %for.body.lr.ph.i499
  %1057 = phi i32 [ %.pre3729.i, %for.body.lr.ph.i499 ], [ %1103, %if.end804.i.for.body.i506_crit_edge ]
  %1058 = phi i32 [ %.pre3728.i, %for.body.lr.ph.i499 ], [ %1159, %if.end804.i.for.body.i506_crit_edge ]
  %1059 = phi i32 [ %.pre3727.i, %for.body.lr.ph.i499 ], [ %1160, %if.end804.i.for.body.i506_crit_edge ]
  %jcolX.03665.i = phi i32 [ 3, %for.body.lr.ph.i499 ], [ %phitmp.i, %if.end804.i.for.body.i506_crit_edge ]
  %colY0.03658.i = phi double* [ %1051, %for.body.lr.ph.i499 ], [ %add.ptr810.i, %if.end804.i.for.body.i506_crit_edge ]
  %colX0.03655.i = phi double* [ %1050, %for.body.lr.ph.i499 ], [ %add.ptr807.i, %if.end804.i.for.body.i506_crit_edge ]
  %mul.i500 = shl nsw i32 %1059, 1
  %idx.ext.i501 = sext i32 %mul.i500 to i64
  %add.ptr.sum.i502 = shl nsw i64 %idx.ext.i501, 1
  %mul9.i503 = shl nsw i32 %1058, 1
  %idx.ext10.i504 = sext i32 %mul9.i503 to i64
  %add.ptr11.sum.i505 = shl nsw i64 %idx.ext10.i504, 1
  %1060 = load double** %entA.i478, align 8, !tbaa !0
  %sub163627.i = add nsw i32 %1057, -2
  %cmp173628.i = icmp sgt i32 %sub163627.i, 0
  br i1 %cmp173628.i, label %for.body18.lr.ph.i, label %for.end336.i

for.body18.lr.ph.i:                               ; preds = %for.body.i506
  %.pre3730.i = load i32* %nrowAT.i486, align 4, !tbaa !3
  br label %for.body18.i508

for.body18.i508:                                  ; preds = %if.end330.for.body18_crit_edge.i, %for.body18.lr.ph.i
  %1061 = phi i32 [ %1059, %for.body18.lr.ph.i ], [ %.pre3733.i, %if.end330.for.body18_crit_edge.i ]
  %1062 = phi i32 [ %.pre3730.i, %for.body18.lr.ph.i ], [ %1100, %if.end330.for.body18_crit_edge.i ]
  %indvars.iv3711.i = phi i64 [ 0, %for.body18.lr.ph.i ], [ %indvars.iv.next3712.i, %if.end330.for.body18_crit_edge.i ]
  %1063 = phi i32 [ %1057, %for.body18.lr.ph.i ], [ %1101, %if.end330.for.body18_crit_edge.i ]
  %icolAT.03633.i = phi i32 [ 3, %for.body18.lr.ph.i ], [ %phitmp3734.i, %if.end330.for.body18_crit_edge.i ]
  %colAT0.03629.i = phi double* [ %1060, %for.body18.lr.ph.i ], [ %add.ptr333.i, %if.end330.for.body18_crit_edge.i ]
  %mul19.i = shl nsw i32 %1062, 1
  %idx.ext20.i = sext i32 %mul19.i to i64
  %add.ptr21.sum.i507 = shl nsw i64 %idx.ext20.i, 1
  %cmp25.i = icmp eq i32 %1063, %1061
  br i1 %cmp25.i, label %if.then26.i, label %if.else66.i

if.then26.i:                                      ; preds = %for.body18.i508
  %1064 = trunc i64 %indvars.iv3711.i to i32
  %mul27.i = shl nsw i32 %1064, 1
  %add3517.i = or i32 %mul27.i, 1
  %add38.i509 = add nsw i32 %mul27.i, 2
  %add39.i = add nsw i32 %add3517.i, 2
  %add52.i = add nsw i32 %mul27.i, 4
  %add53.i = add nsw i32 %add3517.i, 4
  br label %if.end117.i

if.else66.i:                                      ; preds = %for.body18.i508
  %1065 = load i32** %colindAT.i489, align 8, !tbaa !0
  %arrayidx68.i510 = getelementptr inbounds i32* %1065, i64 %indvars.iv3711.i
  %1066 = load i32* %arrayidx68.i510, align 4, !tbaa !3
  %mul69.i511 = shl nsw i32 %1066, 1
  %add703483.i = or i32 %mul69.i511, 1
  %1067 = add nsw i64 %indvars.iv3711.i, 1
  %arrayidx85.i512 = getelementptr inbounds i32* %1065, i64 %1067
  %1068 = load i32* %arrayidx85.i512, align 4, !tbaa !3
  %mul86.i513 = shl nsw i32 %1068, 1
  %add873488.i = or i32 %mul86.i513, 1
  %1069 = add nsw i64 %indvars.iv3711.i, 2
  %arrayidx102.i = getelementptr inbounds i32* %1065, i64 %1069
  %1070 = load i32* %arrayidx102.i, align 4, !tbaa !3
  %mul103.i = shl nsw i32 %1070, 1
  %add1043493.i = or i32 %mul103.i, 1
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.else66.i, %if.then26.i
  %add52.sink.i = phi i32 [ %add52.i, %if.then26.i ], [ %mul103.i, %if.else66.i ]
  %add53.sink.i = phi i32 [ %add53.i, %if.then26.i ], [ %add1043493.i, %if.else66.i ]
  %idxprom28.pn.in.i = phi i32 [ %add3517.i, %if.then26.i ], [ %add703483.i, %if.else66.i ]
  %idxprom42.pn.in.i = phi i32 [ %add39.i, %if.then26.i ], [ %add873488.i, %if.else66.i ]
  %idxprom.pn.in.i = phi i32 [ %mul27.i, %if.then26.i ], [ %mul69.i511, %if.else66.i ]
  %idxprom40.pn.in.i = phi i32 [ %add38.i509, %if.then26.i ], [ %mul86.i513, %if.else66.i ]
  %idxprom40.pn.i = sext i32 %idxprom40.pn.in.i to i64
  %idxprom.pn.i514 = sext i32 %idxprom.pn.in.i to i64
  %idxprom42.pn.i = sext i32 %idxprom42.pn.in.i to i64
  %idxprom28.pn.i = sext i32 %idxprom28.pn.in.i to i64
  %idxprom54.i = sext i32 %add52.sink.i to i64
  %idxprom56.i = sext i32 %add53.sink.i to i64
  %add.ptr8.sum3528.pn.i = add i64 %idxprom54.i, %add.ptr.sum.i502
  %add.ptr.sum3526.pn.i = add i64 %idxprom54.i, %idx.ext.i501
  %add.ptr8.sum3524.pn.i = add i64 %idxprom40.pn.i, %add.ptr.sum.i502
  %add.ptr.sum3522.pn.i = add i64 %idxprom40.pn.i, %idx.ext.i501
  %add.ptr8.sum3520.pn.i = add i64 %idxprom.pn.i514, %add.ptr.sum.i502
  %add.ptr.sum3518.pn.i = add i64 %idxprom.pn.i514, %idx.ext.i501
  %add.ptr8.sum3529.pn.i = add i64 %idxprom56.i, %add.ptr.sum.i502
  %add.ptr.sum3527.pn.i = add i64 %idxprom56.i, %idx.ext.i501
  %add.ptr8.sum3525.pn.i = add i64 %idxprom42.pn.i, %add.ptr.sum.i502
  %add.ptr.sum3523.pn.i = add i64 %idxprom42.pn.i, %idx.ext.i501
  %add.ptr8.sum3521.pn.i = add i64 %idxprom28.pn.i, %add.ptr.sum.i502
  %add.ptr.sum3519.pn.i = add i64 %idxprom28.pn.i, %idx.ext.i501
  %xr22.0.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr8.sum3528.pn.i
  %xr21.0.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr.sum3526.pn.i
  %xr20.0.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %idxprom54.i
  %xr12.0.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr8.sum3524.pn.i
  %xr11.0.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr.sum3522.pn.i
  %xr10.0.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %idxprom40.pn.i
  %xr02.0.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr8.sum3520.pn.i
  %xr01.0.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr.sum3518.pn.i
  %xr00.0.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %idxprom.pn.i514
  %xi22.0.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr8.sum3529.pn.i
  %xi21.0.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr.sum3527.pn.i
  %xi20.0.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %idxprom56.i
  %xi12.0.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr8.sum3525.pn.i
  %xi11.0.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr.sum3523.pn.i
  %xi10.0.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %idxprom42.pn.i
  %xi02.0.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr8.sum3521.pn.i
  %xi01.0.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr.sum3519.pn.i
  %xi00.0.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %idxprom28.pn.i
  %xr22.0.i = load double* %xr22.0.in.i, align 8
  %xr21.0.i = load double* %xr21.0.in.i, align 8
  %xr20.0.i = load double* %xr20.0.in.i, align 8
  %xr12.0.i = load double* %xr12.0.in.i, align 8
  %xr11.0.i = load double* %xr11.0.in.i, align 8
  %xr10.0.i = load double* %xr10.0.in.i, align 8
  %xr02.0.i = load double* %xr02.0.in.i, align 8
  %xr01.0.i = load double* %xr01.0.in.i, align 8
  %xr00.0.i = load double* %xr00.0.in.i, align 8
  %xi22.0.i = load double* %xi22.0.in.i, align 8
  %xi21.0.i = load double* %xi21.0.in.i, align 8
  %xi20.0.i = load double* %xi20.0.in.i, align 8
  %xi12.0.i = load double* %xi12.0.in.i, align 8
  %xi11.0.i = load double* %xi11.0.in.i, align 8
  %xi10.0.i = load double* %xi10.0.in.i, align 8
  %xi02.0.i = load double* %xi02.0.in.i, align 8
  %xi01.0.i = load double* %xi01.0.in.i, align 8
  %xi00.0.i = load double* %xi00.0.in.i, align 8
  %1071 = load i32* %nrowY.i488, align 4, !tbaa !3
  %cmp118.i = icmp eq i32 %1071, %1062
  %cmp1213624.i = icmp sgt i32 %1062, 0
  br i1 %cmp118.i, label %for.cond120.preheader.i, label %for.cond222.preheader.i515

for.cond120.preheader.i:                          ; preds = %if.end117.i
  br i1 %cmp1213624.i, label %for.body122.i, label %if.end330.i

for.cond222.preheader.i515:                       ; preds = %if.end117.i
  br i1 %cmp1213624.i, label %for.body224.lr.ph.i516, label %if.end330.i

for.body224.lr.ph.i516:                           ; preds = %for.cond222.preheader.i515
  %1072 = load i32** %rowindAT.i490, align 8, !tbaa !0
  br label %for.body224.i580

for.body122.i:                                    ; preds = %for.cond120.preheader.i, %for.body122.i
  %indvars.iv3707.i = phi i64 [ %indvars.iv.next3708.i, %for.body122.i ], [ 0, %for.cond120.preheader.i ]
  %1073 = trunc i64 %indvars.iv3707.i to i32
  %mul123.i = shl nsw i32 %1073, 1
  %add1243508.i = or i32 %mul123.i, 1
  %idxprom125.i = sext i32 %mul123.i to i64
  %arrayidx126.i517 = getelementptr inbounds double* %colAT0.03629.i, i64 %idxprom125.i
  %1074 = load double* %arrayidx126.i517, align 8, !tbaa !4
  %idxprom127.i = sext i32 %add1243508.i to i64
  %arrayidx128.i518 = getelementptr inbounds double* %colAT0.03629.i, i64 %idxprom127.i
  %1075 = load double* %arrayidx128.i518, align 8, !tbaa !4
  %add.ptr21.sum3509.i = add i64 %idxprom125.i, %idx.ext20.i
  %arrayidx130.i519 = getelementptr inbounds double* %colAT0.03629.i, i64 %add.ptr21.sum3509.i
  %1076 = load double* %arrayidx130.i519, align 8, !tbaa !4
  %add.ptr21.sum3510.i = add i64 %idxprom127.i, %idx.ext20.i
  %arrayidx132.i520 = getelementptr inbounds double* %colAT0.03629.i, i64 %add.ptr21.sum3510.i
  %1077 = load double* %arrayidx132.i520, align 8, !tbaa !4
  %add.ptr24.sum3511.i = add i64 %idxprom125.i, %add.ptr21.sum.i507
  %arrayidx134.i521 = getelementptr inbounds double* %colAT0.03629.i, i64 %add.ptr24.sum3511.i
  %1078 = load double* %arrayidx134.i521, align 8, !tbaa !4
  %add.ptr24.sum3512.i = add i64 %idxprom127.i, %add.ptr21.sum.i507
  %arrayidx136.i522 = getelementptr inbounds double* %colAT0.03629.i, i64 %add.ptr24.sum3512.i
  %1079 = load double* %arrayidx136.i522, align 8, !tbaa !4
  %mul137.i = fmul double %xr00.0.i, %1074
  %mul138.i = fmul double %xi00.0.i, %1075
  %sub139.i = fsub double %mul137.i, %mul138.i
  %mul140.i = fmul double %xr10.0.i, %1076
  %add141.i = fadd double %sub139.i, %mul140.i
  %mul142.i523 = fmul double %xi10.0.i, %1077
  %sub143.i524 = fsub double %add141.i, %mul142.i523
  %mul144.i = fmul double %xr20.0.i, %1078
  %add145.i = fadd double %sub143.i524, %mul144.i
  %mul146.i525 = fmul double %xi20.0.i, %1079
  %sub147.i = fsub double %add145.i, %mul146.i525
  %arrayidx149.i526 = getelementptr inbounds double* %colY0.03658.i, i64 %idxprom125.i
  %1080 = load double* %arrayidx149.i526, align 8, !tbaa !4
  %sub150.i = fsub double %1080, %sub147.i
  store double %sub150.i, double* %arrayidx149.i526, align 8, !tbaa !4
  %mul151.i = fmul double %xi00.0.i, %1074
  %mul152.i = fmul double %xr00.0.i, %1075
  %add153.i = fadd double %mul151.i, %mul152.i
  %mul154.i = fmul double %xi10.0.i, %1076
  %add155.i = fadd double %add153.i, %mul154.i
  %mul156.i = fmul double %xr10.0.i, %1077
  %add157.i = fadd double %add155.i, %mul156.i
  %mul158.i = fmul double %xi20.0.i, %1078
  %add159.i = fadd double %add157.i, %mul158.i
  %mul160.i527 = fmul double %xr20.0.i, %1079
  %add161.i = fadd double %add159.i, %mul160.i527
  %arrayidx163.i528 = getelementptr inbounds double* %colY0.03658.i, i64 %idxprom127.i
  %1081 = load double* %arrayidx163.i528, align 8, !tbaa !4
  %sub164.i529 = fsub double %1081, %add161.i
  store double %sub164.i529, double* %arrayidx163.i528, align 8, !tbaa !4
  %mul165.i = fmul double %xr01.0.i, %1074
  %mul166.i = fmul double %xi01.0.i, %1075
  %sub167.i = fsub double %mul165.i, %mul166.i
  %mul168.i530 = fmul double %xr11.0.i, %1076
  %add169.i = fadd double %sub167.i, %mul168.i530
  %mul170.i = fmul double %xi11.0.i, %1077
  %sub171.i = fsub double %add169.i, %mul170.i
  %mul172.i531 = fmul double %xr21.0.i, %1078
  %add173.i532 = fadd double %sub171.i, %mul172.i531
  %mul174.i = fmul double %xi21.0.i, %1079
  %sub175.i = fsub double %add173.i532, %mul174.i
  %add.ptr11.sum3513.i533 = add i64 %idxprom125.i, %idx.ext10.i504
  %arrayidx177.i534 = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr11.sum3513.i533
  %1082 = load double* %arrayidx177.i534, align 8, !tbaa !4
  %sub178.i = fsub double %1082, %sub175.i
  store double %sub178.i, double* %arrayidx177.i534, align 8, !tbaa !4
  %mul179.i535 = fmul double %xi01.0.i, %1074
  %mul180.i536 = fmul double %xr01.0.i, %1075
  %add181.i537 = fadd double %mul179.i535, %mul180.i536
  %mul182.i = fmul double %xi11.0.i, %1076
  %add183.i = fadd double %add181.i537, %mul182.i
  %mul184.i538 = fmul double %xr11.0.i, %1077
  %add185.i = fadd double %add183.i, %mul184.i538
  %mul186.i = fmul double %xi21.0.i, %1078
  %add187.i = fadd double %add185.i, %mul186.i
  %mul188.i539 = fmul double %xr21.0.i, %1079
  %add189.i540 = fadd double %add187.i, %mul188.i539
  %add.ptr11.sum3514.i = add i64 %idxprom127.i, %idx.ext10.i504
  %arrayidx191.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr11.sum3514.i
  %1083 = load double* %arrayidx191.i, align 8, !tbaa !4
  %sub192.i = fsub double %1083, %add189.i540
  store double %sub192.i, double* %arrayidx191.i, align 8, !tbaa !4
  %mul193.i = fmul double %xr02.0.i, %1074
  %mul194.i = fmul double %xi02.0.i, %1075
  %sub195.i = fsub double %mul193.i, %mul194.i
  %mul196.i541 = fmul double %xr12.0.i, %1076
  %add197.i542 = fadd double %sub195.i, %mul196.i541
  %mul198.i = fmul double %xi12.0.i, %1077
  %sub199.i = fsub double %add197.i542, %mul198.i
  %mul200.i543 = fmul double %xr22.0.i, %1078
  %add201.i = fadd double %sub199.i, %mul200.i543
  %mul202.i = fmul double %xi22.0.i, %1079
  %sub203.i = fsub double %add201.i, %mul202.i
  %add.ptr14.sum3515.i544 = add i64 %idxprom125.i, %add.ptr11.sum.i505
  %arrayidx205.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr14.sum3515.i544
  %1084 = load double* %arrayidx205.i, align 8, !tbaa !4
  %sub206.i = fsub double %1084, %sub203.i
  store double %sub206.i, double* %arrayidx205.i, align 8, !tbaa !4
  %mul207.i545 = fmul double %xi02.0.i, %1074
  %mul208.i546 = fmul double %xr02.0.i, %1075
  %add209.i = fadd double %mul207.i545, %mul208.i546
  %mul210.i = fmul double %xi12.0.i, %1076
  %add211.i = fadd double %add209.i, %mul210.i
  %mul212.i547 = fmul double %xr12.0.i, %1077
  %add213.i548 = fadd double %add211.i, %mul212.i547
  %mul214.i = fmul double %xi22.0.i, %1078
  %add215.i = fadd double %add213.i548, %mul214.i
  %mul216.i549 = fmul double %xr22.0.i, %1079
  %add217.i = fadd double %add215.i, %mul216.i549
  %add.ptr14.sum3516.i = add i64 %idxprom127.i, %add.ptr11.sum.i505
  %arrayidx219.i550 = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr14.sum3516.i
  %1085 = load double* %arrayidx219.i550, align 8, !tbaa !4
  %sub220.i = fsub double %1085, %add217.i
  store double %sub220.i, double* %arrayidx219.i550, align 8, !tbaa !4
  %indvars.iv.next3708.i = add i64 %indvars.iv3707.i, 1
  %lftr.wideiv1285 = trunc i64 %indvars.iv.next3708.i to i32
  %exitcond1286 = icmp eq i32 %lftr.wideiv1285, %1062
  br i1 %exitcond1286, label %if.end330.i, label %for.body122.i

for.body224.i580:                                 ; preds = %for.body224.i580, %for.body224.lr.ph.i516
  %indvars.iv3705.i = phi i64 [ 0, %for.body224.lr.ph.i516 ], [ %indvars.iv.next3706.i, %for.body224.i580 ]
  %1086 = trunc i64 %indvars.iv3705.i to i32
  %mul225.i = shl nsw i32 %1086, 1
  %add2263498.i = or i32 %mul225.i, 1
  %idxprom227.i = sext i32 %mul225.i to i64
  %arrayidx228.i551 = getelementptr inbounds double* %colAT0.03629.i, i64 %idxprom227.i
  %1087 = load double* %arrayidx228.i551, align 8, !tbaa !4
  %idxprom229.i = sext i32 %add2263498.i to i64
  %arrayidx230.i552 = getelementptr inbounds double* %colAT0.03629.i, i64 %idxprom229.i
  %1088 = load double* %arrayidx230.i552, align 8, !tbaa !4
  %add.ptr21.sum3499.i = add i64 %idxprom227.i, %idx.ext20.i
  %arrayidx232.i = getelementptr inbounds double* %colAT0.03629.i, i64 %add.ptr21.sum3499.i
  %1089 = load double* %arrayidx232.i, align 8, !tbaa !4
  %add.ptr21.sum3500.i = add i64 %idxprom229.i, %idx.ext20.i
  %arrayidx234.i = getelementptr inbounds double* %colAT0.03629.i, i64 %add.ptr21.sum3500.i
  %1090 = load double* %arrayidx234.i, align 8, !tbaa !4
  %add.ptr24.sum3501.i = add i64 %idxprom227.i, %add.ptr21.sum.i507
  %arrayidx236.i = getelementptr inbounds double* %colAT0.03629.i, i64 %add.ptr24.sum3501.i
  %1091 = load double* %arrayidx236.i, align 8, !tbaa !4
  %add.ptr24.sum3502.i = add i64 %idxprom229.i, %add.ptr21.sum.i507
  %arrayidx238.i = getelementptr inbounds double* %colAT0.03629.i, i64 %add.ptr24.sum3502.i
  %1092 = load double* %arrayidx238.i, align 8, !tbaa !4
  %arrayidx240.i553 = getelementptr inbounds i32* %1072, i64 %indvars.iv3705.i
  %1093 = load i32* %arrayidx240.i553, align 4, !tbaa !3
  %mul241.i = shl nsw i32 %1093, 1
  %add2423503.i = or i32 %mul241.i, 1
  %mul243.i554 = fmul double %xr00.0.i, %1087
  %mul244.i555 = fmul double %xi00.0.i, %1088
  %sub245.i = fsub double %mul243.i554, %mul244.i555
  %mul246.i = fmul double %xr10.0.i, %1089
  %add247.i = fadd double %sub245.i, %mul246.i
  %mul248.i = fmul double %xi10.0.i, %1090
  %sub249.i = fsub double %add247.i, %mul248.i
  %mul250.i = fmul double %xr20.0.i, %1091
  %add251.i = fadd double %sub249.i, %mul250.i
  %mul252.i = fmul double %xi20.0.i, %1092
  %sub253.i556 = fsub double %add251.i, %mul252.i
  %idxprom254.i = sext i32 %mul241.i to i64
  %arrayidx255.i557 = getelementptr inbounds double* %colY0.03658.i, i64 %idxprom254.i
  %1094 = load double* %arrayidx255.i557, align 8, !tbaa !4
  %sub256.i558 = fsub double %1094, %sub253.i556
  store double %sub256.i558, double* %arrayidx255.i557, align 8, !tbaa !4
  %mul257.i = fmul double %xi00.0.i, %1087
  %mul258.i = fmul double %xr00.0.i, %1088
  %add259.i = fadd double %mul257.i, %mul258.i
  %mul260.i = fmul double %xi10.0.i, %1089
  %add261.i = fadd double %add259.i, %mul260.i
  %mul262.i = fmul double %xr10.0.i, %1090
  %add263.i = fadd double %add261.i, %mul262.i
  %mul264.i = fmul double %xi20.0.i, %1091
  %add265.i = fadd double %add263.i, %mul264.i
  %mul266.i = fmul double %xr20.0.i, %1092
  %add267.i = fadd double %add265.i, %mul266.i
  %idxprom268.i559 = sext i32 %add2423503.i to i64
  %arrayidx269.i560 = getelementptr inbounds double* %colY0.03658.i, i64 %idxprom268.i559
  %1095 = load double* %arrayidx269.i560, align 8, !tbaa !4
  %sub270.i561 = fsub double %1095, %add267.i
  store double %sub270.i561, double* %arrayidx269.i560, align 8, !tbaa !4
  %mul271.i = fmul double %xr01.0.i, %1087
  %mul272.i = fmul double %xi01.0.i, %1088
  %sub273.i562 = fsub double %mul271.i, %mul272.i
  %mul274.i = fmul double %xr11.0.i, %1089
  %add275.i = fadd double %sub273.i562, %mul274.i
  %mul276.i = fmul double %xi11.0.i, %1090
  %sub277.i563 = fsub double %add275.i, %mul276.i
  %mul278.i = fmul double %xr21.0.i, %1091
  %add279.i = fadd double %sub277.i563, %mul278.i
  %mul280.i = fmul double %xi21.0.i, %1092
  %sub281.i564 = fsub double %add279.i, %mul280.i
  %add.ptr11.sum3504.i = add i64 %idxprom254.i, %idx.ext10.i504
  %arrayidx283.i565 = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr11.sum3504.i
  %1096 = load double* %arrayidx283.i565, align 8, !tbaa !4
  %sub284.i566 = fsub double %1096, %sub281.i564
  store double %sub284.i566, double* %arrayidx283.i565, align 8, !tbaa !4
  %mul285.i = fmul double %xi01.0.i, %1087
  %mul286.i567 = fmul double %xr01.0.i, %1088
  %add287.i = fadd double %mul285.i, %mul286.i567
  %mul288.i = fmul double %xi11.0.i, %1089
  %add289.i = fadd double %add287.i, %mul288.i
  %mul290.i568 = fmul double %xr11.0.i, %1090
  %add291.i = fadd double %add289.i, %mul290.i568
  %mul292.i = fmul double %xi21.0.i, %1091
  %add293.i = fadd double %add291.i, %mul292.i
  %mul294.i = fmul double %xr21.0.i, %1092
  %add295.i = fadd double %add293.i, %mul294.i
  %add.ptr11.sum3505.i = add i64 %idxprom268.i559, %idx.ext10.i504
  %arrayidx297.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr11.sum3505.i
  %1097 = load double* %arrayidx297.i, align 8, !tbaa !4
  %sub298.i = fsub double %1097, %add295.i
  store double %sub298.i, double* %arrayidx297.i, align 8, !tbaa !4
  %mul299.i = fmul double %xr02.0.i, %1087
  %mul300.i569 = fmul double %xi02.0.i, %1088
  %sub301.i = fsub double %mul299.i, %mul300.i569
  %mul302.i = fmul double %xr12.0.i, %1089
  %add303.i = fadd double %sub301.i, %mul302.i
  %mul304.i = fmul double %xi12.0.i, %1090
  %sub305.i = fsub double %add303.i, %mul304.i
  %mul306.i = fmul double %xr22.0.i, %1091
  %add307.i = fadd double %sub305.i, %mul306.i
  %mul308.i = fmul double %xi22.0.i, %1092
  %sub309.i = fsub double %add307.i, %mul308.i
  %add.ptr14.sum3506.i = add i64 %idxprom254.i, %add.ptr11.sum.i505
  %arrayidx311.i570 = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr14.sum3506.i
  %1098 = load double* %arrayidx311.i570, align 8, !tbaa !4
  %sub312.i571 = fsub double %1098, %sub309.i
  store double %sub312.i571, double* %arrayidx311.i570, align 8, !tbaa !4
  %mul313.i572 = fmul double %xi02.0.i, %1087
  %mul314.i = fmul double %xr02.0.i, %1088
  %add315.i = fadd double %mul313.i572, %mul314.i
  %mul316.i = fmul double %xi12.0.i, %1089
  %add317.i = fadd double %add315.i, %mul316.i
  %mul318.i573 = fmul double %xr12.0.i, %1090
  %add319.i574 = fadd double %add317.i, %mul318.i573
  %mul320.i575 = fmul double %xi22.0.i, %1091
  %add321.i576 = fadd double %add319.i574, %mul320.i575
  %mul322.i577 = fmul double %xr22.0.i, %1092
  %add323.i578 = fadd double %add321.i576, %mul322.i577
  %add.ptr14.sum3507.i = add i64 %idxprom268.i559, %add.ptr11.sum.i505
  %arrayidx325.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr14.sum3507.i
  %1099 = load double* %arrayidx325.i, align 8, !tbaa !4
  %sub326.i = fsub double %1099, %add323.i578
  store double %sub326.i, double* %arrayidx325.i, align 8, !tbaa !4
  %indvars.iv.next3706.i = add i64 %indvars.iv3705.i, 1
  %lftr.wideiv1283 = trunc i64 %indvars.iv.next3706.i to i32
  %exitcond1284 = icmp eq i32 %lftr.wideiv1283, %1062
  br i1 %exitcond1284, label %if.end330.i, label %for.body224.i580

if.end330.i:                                      ; preds = %for.body122.i, %for.body224.i580, %for.cond222.preheader.i515, %for.cond120.preheader.i
  %1100 = load i32* %nrowAT.i486, align 4, !tbaa !3
  %mul331.i = shl nsw i32 %1100, 1
  %idx.ext332.i = sext i32 %mul331.i to i64
  %add.ptr24.sum.i581 = add i64 %idx.ext332.i, %add.ptr21.sum.i507
  %add.ptr333.i = getelementptr inbounds double* %colAT0.03629.i, i64 %add.ptr24.sum.i581
  %indvars.iv.next3712.i = add i64 %indvars.iv3711.i, 3
  %1101 = load i32* %ncolAT.i483, align 4, !tbaa !3
  %sub16.i = add nsw i32 %1101, -2
  %1102 = trunc i64 %indvars.iv.next3712.i to i32
  %cmp17.i582 = icmp slt i32 %1102, %sub16.i
  br i1 %cmp17.i582, label %if.end330.for.body18_crit_edge.i, label %for.end336.i

if.end330.for.body18_crit_edge.i:                 ; preds = %if.end330.i
  %.pre3733.i = load i32* %nrowX.i487, align 4, !tbaa !3
  %phitmp3734.i = add i32 %icolAT.03633.i, 3
  br label %for.body18.i508

for.end336.i:                                     ; preds = %if.end330.i, %for.body.i506
  %1103 = phi i32 [ %1057, %for.body.i506 ], [ %1101, %if.end330.i ]
  %sub16.lcssa.i = phi i32 [ %sub163627.i, %for.body.i506 ], [ %sub16.i, %if.end330.i ]
  %icolAT.0.lcssa.i583 = phi i32 [ 0, %for.body.i506 ], [ %icolAT.03633.i, %if.end330.i ]
  %colAT0.0.lcssa.i584 = phi double* [ %1060, %for.body.i506 ], [ %add.ptr333.i, %if.end330.i ]
  %cmp338.i = icmp eq i32 %icolAT.0.lcssa.i583, %sub16.lcssa.i
  br i1 %cmp338.i, label %if.then339.i, label %if.else599.i

if.then339.i:                                     ; preds = %for.end336.i
  %1104 = load i32* %nrowAT.i486, align 4, !tbaa !3
  %mul340.i = shl nsw i32 %1104, 1
  %idx.ext341.i585 = sext i32 %mul340.i to i64
  %1105 = load i32* %nrowX.i487, align 4, !tbaa !3
  %cmp343.i = icmp eq i32 %1103, %1105
  br i1 %cmp343.i, label %if.then344.i, label %if.else387.i

if.then344.i:                                     ; preds = %if.then339.i
  %mul345.i586 = shl nsw i32 %sub16.lcssa.i, 1
  %add3463474.i = or i32 %mul345.i586, 1
  %add359.i = add nsw i32 %mul345.i586, 2
  %add360.i = add nsw i32 %add3463474.i, 2
  br label %if.end438.i

if.else387.i:                                     ; preds = %if.then339.i
  %idxprom388.i = sext i32 %sub16.lcssa.i to i64
  %1106 = load i32** %colindAT.i489, align 8, !tbaa !0
  %arrayidx389.i = getelementptr inbounds i32* %1106, i64 %idxprom388.i
  %1107 = load i32* %arrayidx389.i, align 4, !tbaa !3
  %mul390.i = shl nsw i32 %1107, 1
  %add3913449.i = or i32 %mul390.i, 1
  %add404.i = add nsw i32 %sub16.lcssa.i, 1
  %idxprom405.i = sext i32 %add404.i to i64
  %arrayidx406.i = getelementptr inbounds i32* %1106, i64 %idxprom405.i
  %1108 = load i32* %arrayidx406.i, align 4, !tbaa !3
  %mul407.i587 = shl nsw i32 %1108, 1
  %add4083454.i = or i32 %mul407.i587, 1
  br label %if.end438.i

if.end438.i:                                      ; preds = %if.else387.i, %if.then344.i
  %add359.sink.i = phi i32 [ %add359.i, %if.then344.i ], [ %mul407.i587, %if.else387.i ]
  %add360.sink.i = phi i32 [ %add360.i, %if.then344.i ], [ %add4083454.i, %if.else387.i ]
  %idxprom349.pn.in.i = phi i32 [ %add3463474.i, %if.then344.i ], [ %add3913449.i, %if.else387.i ]
  %idxprom347.pn.in.i = phi i32 [ %mul345.i586, %if.then344.i ], [ %mul390.i, %if.else387.i ]
  %idxprom347.pn.i588 = sext i32 %idxprom347.pn.in.i to i64
  %idxprom349.pn.i = sext i32 %idxprom349.pn.in.i to i64
  %idxprom361.i = sext i32 %add359.sink.i to i64
  %idxprom363.i = sext i32 %add360.sink.i to i64
  %add.ptr8.sum3481.pn.i = add i64 %idxprom361.i, %add.ptr.sum.i502
  %add.ptr.sum3479.pn.i = add i64 %idxprom361.i, %idx.ext.i501
  %add.ptr8.sum3477.pn.i = add i64 %idxprom347.pn.i588, %add.ptr.sum.i502
  %add.ptr.sum3475.pn.i = add i64 %idxprom347.pn.i588, %idx.ext.i501
  %add.ptr8.sum3482.pn.i = add i64 %idxprom363.i, %add.ptr.sum.i502
  %add.ptr.sum3480.pn.i = add i64 %idxprom363.i, %idx.ext.i501
  %add.ptr8.sum3478.pn.i = add i64 %idxprom349.pn.i, %add.ptr.sum.i502
  %add.ptr.sum3476.pn.i = add i64 %idxprom349.pn.i, %idx.ext.i501
  %xr12.1.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr8.sum3481.pn.i
  %xr11.1.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr.sum3479.pn.i
  %xr10.1.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %idxprom361.i
  %xr02.1.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr8.sum3477.pn.i
  %xr01.1.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr.sum3475.pn.i
  %xr00.1.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %idxprom347.pn.i588
  %xi12.1.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr8.sum3482.pn.i
  %xi11.1.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr.sum3480.pn.i
  %xi10.1.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %idxprom363.i
  %xi02.1.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr8.sum3478.pn.i
  %xi01.1.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr.sum3476.pn.i
  %xi00.1.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %idxprom349.pn.i
  %xr12.1.i = load double* %xr12.1.in.i, align 8
  %xr11.1.i = load double* %xr11.1.in.i, align 8
  %xr10.1.i = load double* %xr10.1.in.i, align 8
  %xr02.1.i = load double* %xr02.1.in.i, align 8
  %xr01.1.i = load double* %xr01.1.in.i, align 8
  %xr00.1.i = load double* %xr00.1.in.i, align 8
  %xi12.1.i = load double* %xi12.1.in.i, align 8
  %xi11.1.i = load double* %xi11.1.in.i, align 8
  %xi10.1.i = load double* %xi10.1.in.i, align 8
  %xi02.1.i = load double* %xi02.1.in.i, align 8
  %xi01.1.i = load double* %xi01.1.in.i, align 8
  %xi00.1.i = load double* %xi00.1.in.i, align 8
  %1109 = load i32* %nrowY.i488, align 4, !tbaa !3
  %cmp439.i = icmp eq i32 %1109, %1104
  %cmp4423647.i = icmp sgt i32 %1104, 0
  br i1 %cmp439.i, label %for.cond441.preheader.i589, label %for.cond518.preheader.i

for.cond441.preheader.i589:                       ; preds = %if.end438.i
  br i1 %cmp4423647.i, label %for.body443.i613, label %if.end804.i

for.cond518.preheader.i:                          ; preds = %if.end438.i
  br i1 %cmp4423647.i, label %for.body520.lr.ph.i, label %if.end804.i

for.body520.lr.ph.i:                              ; preds = %for.cond518.preheader.i
  %1110 = load i32** %rowindAT.i490, align 8, !tbaa !0
  br label %for.body520.i

for.body443.i613:                                 ; preds = %for.cond441.preheader.i589, %for.body443.i613
  %indvars.iv3721.i = phi i64 [ %indvars.iv.next3722.i, %for.body443.i613 ], [ 0, %for.cond441.preheader.i589 ]
  %1111 = trunc i64 %indvars.iv3721.i to i32
  %mul444.i = shl nsw i32 %1111, 1
  %add4453467.i = or i32 %mul444.i, 1
  %idxprom446.i = sext i32 %mul444.i to i64
  %arrayidx447.i590 = getelementptr inbounds double* %colAT0.0.lcssa.i584, i64 %idxprom446.i
  %1112 = load double* %arrayidx447.i590, align 8, !tbaa !4
  %idxprom448.i = sext i32 %add4453467.i to i64
  %arrayidx449.i591 = getelementptr inbounds double* %colAT0.0.lcssa.i584, i64 %idxprom448.i
  %1113 = load double* %arrayidx449.i591, align 8, !tbaa !4
  %add.ptr342.sum3468.i = add i64 %idxprom446.i, %idx.ext341.i585
  %arrayidx451.i592 = getelementptr inbounds double* %colAT0.0.lcssa.i584, i64 %add.ptr342.sum3468.i
  %1114 = load double* %arrayidx451.i592, align 8, !tbaa !4
  %add.ptr342.sum3469.i = add i64 %idxprom448.i, %idx.ext341.i585
  %arrayidx453.i593 = getelementptr inbounds double* %colAT0.0.lcssa.i584, i64 %add.ptr342.sum3469.i
  %1115 = load double* %arrayidx453.i593, align 8, !tbaa !4
  %mul454.i594 = fmul double %xr00.1.i, %1112
  %mul455.i595 = fmul double %xi00.1.i, %1113
  %sub456.i = fsub double %mul454.i594, %mul455.i595
  %mul457.i = fmul double %xr10.1.i, %1114
  %add458.i = fadd double %sub456.i, %mul457.i
  %mul459.i596 = fmul double %xi10.1.i, %1115
  %sub460.i597 = fsub double %add458.i, %mul459.i596
  %arrayidx462.i = getelementptr inbounds double* %colY0.03658.i, i64 %idxprom446.i
  %1116 = load double* %arrayidx462.i, align 8, !tbaa !4
  %sub463.i = fsub double %1116, %sub460.i597
  store double %sub463.i, double* %arrayidx462.i, align 8, !tbaa !4
  %mul464.i598 = fmul double %xi00.1.i, %1112
  %mul465.i = fmul double %xr00.1.i, %1113
  %add466.i = fadd double %mul464.i598, %mul465.i
  %mul467.i599 = fmul double %xi10.1.i, %1114
  %add468.i = fadd double %add466.i, %mul467.i599
  %mul469.i = fmul double %xr10.1.i, %1115
  %add470.i = fadd double %add468.i, %mul469.i
  %arrayidx472.i = getelementptr inbounds double* %colY0.03658.i, i64 %idxprom448.i
  %1117 = load double* %arrayidx472.i, align 8, !tbaa !4
  %sub473.i = fsub double %1117, %add470.i
  store double %sub473.i, double* %arrayidx472.i, align 8, !tbaa !4
  %mul474.i600 = fmul double %xr01.1.i, %1112
  %mul475.i601 = fmul double %xi01.1.i, %1113
  %sub476.i602 = fsub double %mul474.i600, %mul475.i601
  %mul477.i = fmul double %xr11.1.i, %1114
  %add478.i = fadd double %sub476.i602, %mul477.i
  %mul479.i603 = fmul double %xi11.1.i, %1115
  %sub480.i = fsub double %add478.i, %mul479.i603
  %add.ptr11.sum3470.i = add i64 %idxprom446.i, %idx.ext10.i504
  %arrayidx482.i604 = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr11.sum3470.i
  %1118 = load double* %arrayidx482.i604, align 8, !tbaa !4
  %sub483.i605 = fsub double %1118, %sub480.i
  store double %sub483.i605, double* %arrayidx482.i604, align 8, !tbaa !4
  %mul484.i = fmul double %xi01.1.i, %1112
  %mul485.i = fmul double %xr01.1.i, %1113
  %add486.i = fadd double %mul484.i, %mul485.i
  %mul487.i = fmul double %xi11.1.i, %1114
  %add488.i = fadd double %add486.i, %mul487.i
  %mul489.i606 = fmul double %xr11.1.i, %1115
  %add490.i = fadd double %add488.i, %mul489.i606
  %add.ptr11.sum3471.i = add i64 %idxprom448.i, %idx.ext10.i504
  %arrayidx492.i607 = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr11.sum3471.i
  %1119 = load double* %arrayidx492.i607, align 8, !tbaa !4
  %sub493.i = fsub double %1119, %add490.i
  store double %sub493.i, double* %arrayidx492.i607, align 8, !tbaa !4
  %mul494.i608 = fmul double %xr02.1.i, %1112
  %mul495.i = fmul double %xi02.1.i, %1113
  %sub496.i = fsub double %mul494.i608, %mul495.i
  %mul497.i = fmul double %xr12.1.i, %1114
  %add498.i = fadd double %sub496.i, %mul497.i
  %mul499.i609 = fmul double %xi12.1.i, %1115
  %sub500.i = fsub double %add498.i, %mul499.i609
  %add.ptr14.sum3472.i = add i64 %idxprom446.i, %add.ptr11.sum.i505
  %arrayidx502.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr14.sum3472.i
  %1120 = load double* %arrayidx502.i, align 8, !tbaa !4
  %sub503.i = fsub double %1120, %sub500.i
  store double %sub503.i, double* %arrayidx502.i, align 8, !tbaa !4
  %mul504.i = fmul double %xi02.1.i, %1112
  %mul505.i = fmul double %xr02.1.i, %1113
  %add506.i = fadd double %mul504.i, %mul505.i
  %mul507.i = fmul double %xi12.1.i, %1114
  %add508.i = fadd double %add506.i, %mul507.i
  %mul509.i = fmul double %xr12.1.i, %1115
  %add510.i = fadd double %add508.i, %mul509.i
  %add.ptr14.sum3473.i = add i64 %idxprom448.i, %add.ptr11.sum.i505
  %arrayidx512.i610 = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr14.sum3473.i
  %1121 = load double* %arrayidx512.i610, align 8, !tbaa !4
  %sub513.i611 = fsub double %1121, %add510.i
  store double %sub513.i611, double* %arrayidx512.i610, align 8, !tbaa !4
  %indvars.iv.next3722.i = add i64 %indvars.iv3721.i, 1
  %lftr.wideiv1293 = trunc i64 %indvars.iv.next3722.i to i32
  %exitcond1294 = icmp eq i32 %lftr.wideiv1293, %1104
  br i1 %exitcond1294, label %if.end804.i, label %for.body443.i613

for.body520.i:                                    ; preds = %for.body520.i, %for.body520.lr.ph.i
  %indvars.iv3719.i = phi i64 [ 0, %for.body520.lr.ph.i ], [ %indvars.iv.next3720.i, %for.body520.i ]
  %1122 = trunc i64 %indvars.iv3719.i to i32
  %mul521.i = shl nsw i32 %1122, 1
  %add5223460.i = or i32 %mul521.i, 1
  %idxprom523.i = sext i32 %mul521.i to i64
  %arrayidx524.i = getelementptr inbounds double* %colAT0.0.lcssa.i584, i64 %idxprom523.i
  %1123 = load double* %arrayidx524.i, align 8, !tbaa !4
  %idxprom525.i = sext i32 %add5223460.i to i64
  %arrayidx526.i = getelementptr inbounds double* %colAT0.0.lcssa.i584, i64 %idxprom525.i
  %1124 = load double* %arrayidx526.i, align 8, !tbaa !4
  %add.ptr342.sum.i614 = add i64 %idxprom523.i, %idx.ext341.i585
  %arrayidx528.i615 = getelementptr inbounds double* %colAT0.0.lcssa.i584, i64 %add.ptr342.sum.i614
  %1125 = load double* %arrayidx528.i615, align 8, !tbaa !4
  %add.ptr342.sum3461.i = add i64 %idxprom525.i, %idx.ext341.i585
  %arrayidx530.i = getelementptr inbounds double* %colAT0.0.lcssa.i584, i64 %add.ptr342.sum3461.i
  %1126 = load double* %arrayidx530.i, align 8, !tbaa !4
  %arrayidx532.i = getelementptr inbounds i32* %1110, i64 %indvars.iv3719.i
  %1127 = load i32* %arrayidx532.i, align 4, !tbaa !3
  %mul533.i = shl nsw i32 %1127, 1
  %add5343462.i = or i32 %mul533.i, 1
  %mul535.i616 = fmul double %xr00.1.i, %1123
  %mul536.i617 = fmul double %xi00.1.i, %1124
  %sub537.i = fsub double %mul535.i616, %mul536.i617
  %mul538.i = fmul double %xr10.1.i, %1125
  %add539.i = fadd double %sub537.i, %mul538.i
  %mul540.i618 = fmul double %xi10.1.i, %1126
  %sub541.i619 = fsub double %add539.i, %mul540.i618
  %idxprom542.i = sext i32 %mul533.i to i64
  %arrayidx543.i = getelementptr inbounds double* %colY0.03658.i, i64 %idxprom542.i
  %1128 = load double* %arrayidx543.i, align 8, !tbaa !4
  %sub544.i = fsub double %1128, %sub541.i619
  store double %sub544.i, double* %arrayidx543.i, align 8, !tbaa !4
  %mul545.i = fmul double %xi00.1.i, %1123
  %mul546.i = fmul double %xr00.1.i, %1124
  %add547.i = fadd double %mul545.i, %mul546.i
  %mul548.i620 = fmul double %xi10.1.i, %1125
  %add549.i = fadd double %add547.i, %mul548.i620
  %mul550.i = fmul double %xr10.1.i, %1126
  %add551.i = fadd double %add549.i, %mul550.i
  %idxprom552.i = sext i32 %add5343462.i to i64
  %arrayidx553.i = getelementptr inbounds double* %colY0.03658.i, i64 %idxprom552.i
  %1129 = load double* %arrayidx553.i, align 8, !tbaa !4
  %sub554.i = fsub double %1129, %add551.i
  store double %sub554.i, double* %arrayidx553.i, align 8, !tbaa !4
  %mul555.i621 = fmul double %xr01.1.i, %1123
  %mul556.i622 = fmul double %xi01.1.i, %1124
  %sub557.i623 = fsub double %mul555.i621, %mul556.i622
  %mul558.i = fmul double %xr11.1.i, %1125
  %add559.i = fadd double %sub557.i623, %mul558.i
  %mul560.i624 = fmul double %xi11.1.i, %1126
  %sub561.i = fsub double %add559.i, %mul560.i624
  %add.ptr11.sum3463.i625 = add i64 %idxprom542.i, %idx.ext10.i504
  %arrayidx563.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr11.sum3463.i625
  %1130 = load double* %arrayidx563.i, align 8, !tbaa !4
  %sub564.i = fsub double %1130, %sub561.i
  store double %sub564.i, double* %arrayidx563.i, align 8, !tbaa !4
  %mul565.i = fmul double %xi01.1.i, %1123
  %mul566.i = fmul double %xr01.1.i, %1124
  %add567.i = fadd double %mul565.i, %mul566.i
  %mul568.i = fmul double %xi11.1.i, %1125
  %add569.i = fadd double %add567.i, %mul568.i
  %mul570.i = fmul double %xr11.1.i, %1126
  %add571.i = fadd double %add569.i, %mul570.i
  %add.ptr11.sum3464.i626 = add i64 %idxprom552.i, %idx.ext10.i504
  %arrayidx573.i627 = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr11.sum3464.i626
  %1131 = load double* %arrayidx573.i627, align 8, !tbaa !4
  %sub574.i = fsub double %1131, %add571.i
  store double %sub574.i, double* %arrayidx573.i627, align 8, !tbaa !4
  %mul575.i = fmul double %xr02.1.i, %1123
  %mul576.i = fmul double %xi02.1.i, %1124
  %sub577.i = fsub double %mul575.i, %mul576.i
  %mul578.i628 = fmul double %xr12.1.i, %1125
  %add579.i = fadd double %sub577.i, %mul578.i628
  %mul580.i629 = fmul double %xi12.1.i, %1126
  %sub581.i630 = fsub double %add579.i, %mul580.i629
  %add.ptr14.sum3465.i631 = add i64 %idxprom542.i, %add.ptr11.sum.i505
  %arrayidx583.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr14.sum3465.i631
  %1132 = load double* %arrayidx583.i, align 8, !tbaa !4
  %sub584.i = fsub double %1132, %sub581.i630
  store double %sub584.i, double* %arrayidx583.i, align 8, !tbaa !4
  %mul585.i = fmul double %xi02.1.i, %1123
  %mul586.i632 = fmul double %xr02.1.i, %1124
  %add587.i633 = fadd double %mul585.i, %mul586.i632
  %mul588.i = fmul double %xi12.1.i, %1125
  %add589.i634 = fadd double %add587.i633, %mul588.i
  %mul590.i = fmul double %xr12.1.i, %1126
  %add591.i = fadd double %add589.i634, %mul590.i
  %add.ptr14.sum3466.i635 = add i64 %idxprom552.i, %add.ptr11.sum.i505
  %arrayidx593.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr14.sum3466.i635
  %1133 = load double* %arrayidx593.i, align 8, !tbaa !4
  %sub594.i = fsub double %1133, %add591.i
  store double %sub594.i, double* %arrayidx593.i, align 8, !tbaa !4
  %indvars.iv.next3720.i = add i64 %indvars.iv3719.i, 1
  %lftr.wideiv1291 = trunc i64 %indvars.iv.next3720.i to i32
  %exitcond1292 = icmp eq i32 %lftr.wideiv1291, %1104
  br i1 %exitcond1292, label %if.end804.i, label %for.body520.i

if.else599.i:                                     ; preds = %for.end336.i
  %sub600.i = add nsw i32 %1103, -1
  %cmp601.i = icmp eq i32 %icolAT.0.lcssa.i583, %sub600.i
  %1134 = load i32* %nrowX.i487, align 4, !tbaa !3
  br i1 %cmp601.i, label %if.then602.i, label %if.else599.if.end804_crit_edge.i

if.else599.if.end804_crit_edge.i:                 ; preds = %if.else599.i
  %.pre3732.i = load i32* %nrowY.i488, align 4, !tbaa !3
  br label %if.end804.i

if.then602.i:                                     ; preds = %if.else599.i
  %cmp603.i = icmp eq i32 %1103, %1134
  br i1 %cmp603.i, label %if.end698.i, label %if.else647.i

if.else647.i:                                     ; preds = %if.then602.i
  %idxprom648.i = sext i32 %icolAT.0.lcssa.i583 to i64
  %1135 = load i32** %colindAT.i489, align 8, !tbaa !0
  %arrayidx649.i = getelementptr inbounds i32* %1135, i64 %idxprom648.i
  %1136 = load i32* %arrayidx649.i, align 4, !tbaa !3
  br label %if.end698.i

if.end698.i:                                      ; preds = %if.then602.i, %if.else647.i
  %icolAT.0.sink.i = phi i32 [ %1136, %if.else647.i ], [ %icolAT.0.lcssa.i583, %if.then602.i ]
  %mul605.i = shl nsw i32 %icolAT.0.sink.i, 1
  %add6063444.sink.i = or i32 %mul605.i, 1
  %idxprom607.i = sext i32 %mul605.i to i64
  %idxprom609.i = sext i32 %add6063444.sink.i to i64
  %add.ptr8.sum3447.pn.i = add i64 %idxprom607.i, %add.ptr.sum.i502
  %add.ptr.sum3445.pn.i = add i64 %idxprom607.i, %idx.ext.i501
  %add.ptr8.sum3448.pn.i = add i64 %idxprom609.i, %add.ptr.sum.i502
  %add.ptr.sum3446.pn.i = add i64 %idxprom609.i, %idx.ext.i501
  %xr02.2.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr8.sum3447.pn.i
  %xr01.2.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr.sum3445.pn.i
  %xr00.2.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %idxprom607.i
  %xi02.2.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr8.sum3448.pn.i
  %xi01.2.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr.sum3446.pn.i
  %xi00.2.in.i = getelementptr inbounds double* %colX0.03655.i, i64 %idxprom609.i
  %xr02.2.i = load double* %xr02.2.in.i, align 8
  %xr01.2.i = load double* %xr01.2.in.i, align 8
  %xr00.2.i = load double* %xr00.2.in.i, align 8
  %xi02.2.i = load double* %xi02.2.in.i, align 8
  %xi01.2.i = load double* %xi01.2.in.i, align 8
  %xi00.2.i = load double* %xi00.2.in.i, align 8
  %1137 = load i32* %nrowY.i488, align 4, !tbaa !3
  %1138 = load i32* %nrowAT.i486, align 4, !tbaa !3
  %cmp699.i = icmp eq i32 %1137, %1138
  br i1 %cmp699.i, label %for.cond701.preheader.i, label %for.cond750.preheader.i

for.cond701.preheader.i:                          ; preds = %if.end698.i
  %cmp7023641.i = icmp sgt i32 %1137, 0
  br i1 %cmp7023641.i, label %for.body703.i, label %if.end804.i

for.cond750.preheader.i:                          ; preds = %if.end698.i
  %cmp7513638.i = icmp sgt i32 %1138, 0
  br i1 %cmp7513638.i, label %for.body752.lr.ph.i, label %if.end804.i

for.body752.lr.ph.i:                              ; preds = %for.cond750.preheader.i
  %1139 = load i32** %rowindAT.i490, align 8, !tbaa !0
  br label %for.body752.i

for.body703.i:                                    ; preds = %for.cond701.preheader.i, %for.body703.i
  %indvars.iv3717.i = phi i64 [ %indvars.iv.next3718.i, %for.body703.i ], [ 0, %for.cond701.preheader.i ]
  %1140 = trunc i64 %indvars.iv3717.i to i32
  %mul704.i636 = shl nsw i32 %1140, 1
  %add7053439.i = or i32 %mul704.i636, 1
  %idxprom706.i = sext i32 %mul704.i636 to i64
  %arrayidx707.i = getelementptr inbounds double* %colAT0.0.lcssa.i584, i64 %idxprom706.i
  %1141 = load double* %arrayidx707.i, align 8, !tbaa !4
  %idxprom708.i = sext i32 %add7053439.i to i64
  %arrayidx709.i = getelementptr inbounds double* %colAT0.0.lcssa.i584, i64 %idxprom708.i
  %1142 = load double* %arrayidx709.i, align 8, !tbaa !4
  %mul710.i = fmul double %xr00.2.i, %1141
  %mul711.i637 = fmul double %xi00.2.i, %1142
  %sub712.i = fsub double %mul710.i, %mul711.i637
  %arrayidx714.i = getelementptr inbounds double* %colY0.03658.i, i64 %idxprom706.i
  %1143 = load double* %arrayidx714.i, align 8, !tbaa !4
  %sub715.i = fsub double %1143, %sub712.i
  store double %sub715.i, double* %arrayidx714.i, align 8, !tbaa !4
  %mul716.i638 = fmul double %xi00.2.i, %1141
  %mul717.i = fmul double %xr00.2.i, %1142
  %add718.i639 = fadd double %mul716.i638, %mul717.i
  %arrayidx720.i = getelementptr inbounds double* %colY0.03658.i, i64 %idxprom708.i
  %1144 = load double* %arrayidx720.i, align 8, !tbaa !4
  %sub721.i640 = fsub double %1144, %add718.i639
  store double %sub721.i640, double* %arrayidx720.i, align 8, !tbaa !4
  %mul722.i = fmul double %xr01.2.i, %1141
  %mul723.i641 = fmul double %xi01.2.i, %1142
  %sub724.i = fsub double %mul722.i, %mul723.i641
  %add.ptr11.sum3440.i = add i64 %idxprom706.i, %idx.ext10.i504
  %arrayidx726.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr11.sum3440.i
  %1145 = load double* %arrayidx726.i, align 8, !tbaa !4
  %sub727.i = fsub double %1145, %sub724.i
  store double %sub727.i, double* %arrayidx726.i, align 8, !tbaa !4
  %mul728.i642 = fmul double %xi01.2.i, %1141
  %mul729.i = fmul double %xr01.2.i, %1142
  %add730.i = fadd double %mul728.i642, %mul729.i
  %add.ptr11.sum3441.i = add i64 %idxprom708.i, %idx.ext10.i504
  %arrayidx732.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr11.sum3441.i
  %1146 = load double* %arrayidx732.i, align 8, !tbaa !4
  %sub733.i = fsub double %1146, %add730.i
  store double %sub733.i, double* %arrayidx732.i, align 8, !tbaa !4
  %mul734.i643 = fmul double %xr02.2.i, %1141
  %mul735.i = fmul double %xi02.2.i, %1142
  %sub736.i = fsub double %mul734.i643, %mul735.i
  %add.ptr14.sum3442.i = add i64 %idxprom706.i, %add.ptr11.sum.i505
  %arrayidx738.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr14.sum3442.i
  %1147 = load double* %arrayidx738.i, align 8, !tbaa !4
  %sub739.i = fsub double %1147, %sub736.i
  store double %sub739.i, double* %arrayidx738.i, align 8, !tbaa !4
  %mul740.i = fmul double %xi02.2.i, %1141
  %mul741.i = fmul double %xr02.2.i, %1142
  %add742.i = fadd double %mul740.i, %mul741.i
  %add.ptr14.sum3443.i = add i64 %idxprom708.i, %add.ptr11.sum.i505
  %arrayidx744.i644 = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr14.sum3443.i
  %1148 = load double* %arrayidx744.i644, align 8, !tbaa !4
  %sub745.i = fsub double %1148, %add742.i
  store double %sub745.i, double* %arrayidx744.i644, align 8, !tbaa !4
  %indvars.iv.next3718.i = add i64 %indvars.iv3717.i, 1
  %lftr.wideiv1289 = trunc i64 %indvars.iv.next3718.i to i32
  %exitcond1290 = icmp eq i32 %lftr.wideiv1289, %1137
  br i1 %exitcond1290, label %if.end804.i, label %for.body703.i

for.body752.i:                                    ; preds = %for.body752.i, %for.body752.lr.ph.i
  %indvars.iv3715.i = phi i64 [ 0, %for.body752.lr.ph.i ], [ %indvars.iv.next3716.i, %for.body752.i ]
  %1149 = trunc i64 %indvars.iv3715.i to i32
  %mul753.i645 = shl nsw i32 %1149, 1
  %add7543433.i = or i32 %mul753.i645, 1
  %idxprom755.i = sext i32 %mul753.i645 to i64
  %arrayidx756.i = getelementptr inbounds double* %colAT0.0.lcssa.i584, i64 %idxprom755.i
  %1150 = load double* %arrayidx756.i, align 8, !tbaa !4
  %idxprom757.i = sext i32 %add7543433.i to i64
  %arrayidx758.i = getelementptr inbounds double* %colAT0.0.lcssa.i584, i64 %idxprom757.i
  %1151 = load double* %arrayidx758.i, align 8, !tbaa !4
  %arrayidx760.i = getelementptr inbounds i32* %1139, i64 %indvars.iv3715.i
  %1152 = load i32* %arrayidx760.i, align 4, !tbaa !3
  %mul761.i646 = shl nsw i32 %1152, 1
  %add7623434.i = or i32 %mul761.i646, 1
  %mul763.i647 = fmul double %xr00.2.i, %1150
  %mul764.i648 = fmul double %xi00.2.i, %1151
  %sub765.i = fsub double %mul763.i647, %mul764.i648
  %idxprom766.i = sext i32 %mul761.i646 to i64
  %arrayidx767.i = getelementptr inbounds double* %colY0.03658.i, i64 %idxprom766.i
  %1153 = load double* %arrayidx767.i, align 8, !tbaa !4
  %sub768.i = fsub double %1153, %sub765.i
  store double %sub768.i, double* %arrayidx767.i, align 8, !tbaa !4
  %mul769.i649 = fmul double %xi00.2.i, %1150
  %mul770.i = fmul double %xr00.2.i, %1151
  %add771.i650 = fadd double %mul769.i649, %mul770.i
  %idxprom772.i = sext i32 %add7623434.i to i64
  %arrayidx773.i = getelementptr inbounds double* %colY0.03658.i, i64 %idxprom772.i
  %1154 = load double* %arrayidx773.i, align 8, !tbaa !4
  %sub774.i651 = fsub double %1154, %add771.i650
  store double %sub774.i651, double* %arrayidx773.i, align 8, !tbaa !4
  %mul775.i = fmul double %xr01.2.i, %1150
  %mul776.i652 = fmul double %xi01.2.i, %1151
  %sub777.i653 = fsub double %mul775.i, %mul776.i652
  %add.ptr11.sum3435.i = add i64 %idxprom766.i, %idx.ext10.i504
  %arrayidx779.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr11.sum3435.i
  %1155 = load double* %arrayidx779.i, align 8, !tbaa !4
  %sub780.i = fsub double %1155, %sub777.i653
  store double %sub780.i, double* %arrayidx779.i, align 8, !tbaa !4
  %mul781.i = fmul double %xi01.2.i, %1150
  %mul782.i = fmul double %xr01.2.i, %1151
  %add783.i = fadd double %mul781.i, %mul782.i
  %add.ptr11.sum3436.i = add i64 %idxprom772.i, %idx.ext10.i504
  %arrayidx785.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr11.sum3436.i
  %1156 = load double* %arrayidx785.i, align 8, !tbaa !4
  %sub786.i = fsub double %1156, %add783.i
  store double %sub786.i, double* %arrayidx785.i, align 8, !tbaa !4
  %mul787.i = fmul double %xr02.2.i, %1150
  %mul788.i = fmul double %xi02.2.i, %1151
  %sub789.i654 = fsub double %mul787.i, %mul788.i
  %add.ptr14.sum3437.i = add i64 %idxprom766.i, %add.ptr11.sum.i505
  %arrayidx791.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr14.sum3437.i
  %1157 = load double* %arrayidx791.i, align 8, !tbaa !4
  %sub792.i = fsub double %1157, %sub789.i654
  store double %sub792.i, double* %arrayidx791.i, align 8, !tbaa !4
  %mul793.i = fmul double %xi02.2.i, %1150
  %mul794.i = fmul double %xr02.2.i, %1151
  %add795.i = fadd double %mul793.i, %mul794.i
  %add.ptr14.sum3438.i = add i64 %idxprom772.i, %add.ptr11.sum.i505
  %arrayidx797.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr14.sum3438.i
  %1158 = load double* %arrayidx797.i, align 8, !tbaa !4
  %sub798.i = fsub double %1158, %add795.i
  store double %sub798.i, double* %arrayidx797.i, align 8, !tbaa !4
  %indvars.iv.next3716.i = add i64 %indvars.iv3715.i, 1
  %lftr.wideiv1287 = trunc i64 %indvars.iv.next3716.i to i32
  %exitcond1288 = icmp eq i32 %lftr.wideiv1287, %1138
  br i1 %exitcond1288, label %if.end804.i, label %for.body752.i

if.end804.i:                                      ; preds = %for.body443.i613, %for.body520.i, %for.body703.i, %for.body752.i, %for.cond750.preheader.i, %for.cond701.preheader.i, %for.cond518.preheader.i, %for.cond441.preheader.i589, %if.else599.if.end804_crit_edge.i
  %1159 = phi i32 [ %.pre3732.i, %if.else599.if.end804_crit_edge.i ], [ %1104, %for.cond441.preheader.i589 ], [ %1109, %for.cond518.preheader.i ], [ %1137, %for.cond701.preheader.i ], [ %1137, %for.cond750.preheader.i ], [ %1137, %for.body752.i ], [ %1137, %for.body703.i ], [ %1109, %for.body520.i ], [ %1104, %for.body443.i613 ]
  %1160 = phi i32 [ %1134, %if.else599.if.end804_crit_edge.i ], [ %1105, %for.cond441.preheader.i589 ], [ %1105, %for.cond518.preheader.i ], [ %1134, %for.cond701.preheader.i ], [ %1134, %for.cond750.preheader.i ], [ %1134, %for.body752.i ], [ %1134, %for.body703.i ], [ %1105, %for.body520.i ], [ %1105, %for.body443.i613 ]
  %mul805.i = shl nsw i32 %1160, 1
  %idx.ext806.i = sext i32 %mul805.i to i64
  %add.ptr8.sum.i655 = add i64 %idx.ext806.i, %add.ptr.sum.i502
  %add.ptr807.i = getelementptr inbounds double* %colX0.03655.i, i64 %add.ptr8.sum.i655
  %mul808.i = shl nsw i32 %1159, 1
  %idx.ext809.i = sext i32 %mul808.i to i64
  %add.ptr14.sum.i656 = add i64 %idx.ext809.i, %add.ptr11.sum.i505
  %add.ptr810.i = getelementptr inbounds double* %colY0.03658.i, i64 %add.ptr14.sum.i656
  %1161 = load i32* %ncolX.i484, align 4, !tbaa !3
  %sub.i = add nsw i32 %1161, -2
  %cmp5.i657 = icmp slt i32 %jcolX.03665.i, %sub.i
  br i1 %cmp5.i657, label %if.end804.i.for.body.i506_crit_edge, label %for.end813.i

if.end804.i.for.body.i506_crit_edge:              ; preds = %if.end804.i
  %phitmp.i = add i32 %jcolX.03665.i, 3
  br label %for.body.i506

for.end813.i:                                     ; preds = %if.end804.i, %for.cond.preheader.i498
  %sub.lcssa.i = phi i32 [ %sub3653.i, %for.cond.preheader.i498 ], [ %sub.i, %if.end804.i ]
  %.lcssa3652.i = phi i32 [ %1056, %for.cond.preheader.i498 ], [ %1161, %if.end804.i ]
  %jcolX.0.lcssa.i658 = phi i32 [ 0, %for.cond.preheader.i498 ], [ %jcolX.03665.i, %if.end804.i ]
  %colY0.0.lcssa.i659 = phi double* [ %1051, %for.cond.preheader.i498 ], [ %add.ptr810.i, %if.end804.i ]
  %colX0.0.lcssa.i660 = phi double* [ %1050, %for.cond.preheader.i498 ], [ %add.ptr807.i, %if.end804.i ]
  %cmp815.i = icmp eq i32 %jcolX.0.lcssa.i658, %sub.lcssa.i
  br i1 %cmp815.i, label %if.then816.i, label %if.else1427.i

if.then816.i:                                     ; preds = %for.end813.i
  %1162 = load i32* %nrowX.i487, align 4, !tbaa !3
  %mul817.i661 = shl nsw i32 %1162, 1
  %idx.ext818.i = sext i32 %mul817.i661 to i64
  %1163 = load i32* %nrowY.i488, align 4, !tbaa !3
  %mul820.i = shl nsw i32 %1163, 1
  %idx.ext821.i = sext i32 %mul820.i to i64
  %1164 = load double** %entA.i478, align 8, !tbaa !0
  %1165 = load i32* %ncolAT.i483, align 4, !tbaa !3
  %sub8243582.i = add nsw i32 %1165, -2
  %cmp8253583.i = icmp sgt i32 %sub8243582.i, 0
  br i1 %cmp8253583.i, label %for.body826.lr.ph.i, label %for.end1070.i

for.body826.lr.ph.i:                              ; preds = %if.then816.i
  %.pre.i662 = load i32* %nrowAT.i486, align 4, !tbaa !3
  %mul827.i = shl nsw i32 %.pre.i662, 1
  %idx.ext828.i = sext i32 %mul827.i to i64
  %add.ptr829.sum.i = shl nsw i64 %idx.ext828.i, 1
  %cmp833.i = icmp eq i32 %1165, %1162
  %cmp905.i = icmp eq i32 %1163, %.pre.i662
  %cmp9083580.i = icmp sgt i32 %.pre.i662, 0
  %add.ptr832.sum.i = add i64 %add.ptr829.sum.i, %idx.ext828.i
  br label %for.body826.i

for.body826.i:                                    ; preds = %if.end1064.i, %for.body826.lr.ph.i
  %indvars.iv3683.i = phi i64 [ 0, %for.body826.lr.ph.i ], [ %indvars.iv.next3684.i, %if.end1064.i ]
  %icolAT.13588.i = phi i32 [ 0, %for.body826.lr.ph.i ], [ %add1069.i, %if.end1064.i ]
  %colAT0.13584.i = phi double* [ %1164, %for.body826.lr.ph.i ], [ %add.ptr1067.i, %if.end1064.i ]
  br i1 %cmp833.i, label %if.then834.i, label %if.else865.i

if.then834.i:                                     ; preds = %for.body826.i
  %1166 = trunc i64 %indvars.iv3683.i to i32
  %mul835.i = shl nsw i32 %1166, 1
  %add8363419.i = or i32 %mul835.i, 1
  %add845.i = add nsw i32 %mul835.i, 2
  %add846.i = add nsw i32 %add8363419.i, 2
  %add855.i = add nsw i32 %mul835.i, 4
  %add856.i = add nsw i32 %add8363419.i, 4
  br label %if.end904.i

if.else865.i:                                     ; preds = %for.body826.i
  %1167 = load i32** %colindAT.i489, align 8, !tbaa !0
  %arrayidx867.i = getelementptr inbounds i32* %1167, i64 %indvars.iv3683.i
  %1168 = load i32* %arrayidx867.i, align 4, !tbaa !3
  %mul868.i = shl nsw i32 %1168, 1
  %add8693395.i = or i32 %mul868.i, 1
  %1169 = add nsw i64 %indvars.iv3683.i, 1
  %arrayidx880.i = getelementptr inbounds i32* %1167, i64 %1169
  %1170 = load i32* %arrayidx880.i, align 4, !tbaa !3
  %mul881.i = shl nsw i32 %1170, 1
  %add8823398.i = or i32 %mul881.i, 1
  %1171 = add nsw i64 %indvars.iv3683.i, 2
  %arrayidx893.i = getelementptr inbounds i32* %1167, i64 %1171
  %1172 = load i32* %arrayidx893.i, align 4, !tbaa !3
  %mul894.i = shl nsw i32 %1172, 1
  %add8953401.i = or i32 %mul894.i, 1
  br label %if.end904.i

if.end904.i:                                      ; preds = %if.else865.i, %if.then834.i
  %add855.sink.i = phi i32 [ %add855.i, %if.then834.i ], [ %mul894.i, %if.else865.i ]
  %add856.sink.i = phi i32 [ %add856.i, %if.then834.i ], [ %add8953401.i, %if.else865.i ]
  %idxprom839.pn.in.i = phi i32 [ %add8363419.i, %if.then834.i ], [ %add8693395.i, %if.else865.i ]
  %idxprom849.pn.in.i = phi i32 [ %add846.i, %if.then834.i ], [ %add8823398.i, %if.else865.i ]
  %idxprom837.pn.in.i = phi i32 [ %mul835.i, %if.then834.i ], [ %mul868.i, %if.else865.i ]
  %idxprom847.pn.in.i = phi i32 [ %add845.i, %if.then834.i ], [ %mul881.i, %if.else865.i ]
  %idxprom847.pn.i = sext i32 %idxprom847.pn.in.i to i64
  %idxprom837.pn.i = sext i32 %idxprom837.pn.in.i to i64
  %idxprom849.pn.i = sext i32 %idxprom849.pn.in.i to i64
  %idxprom839.pn.i = sext i32 %idxprom839.pn.in.i to i64
  %idxprom857.i = sext i32 %add855.sink.i to i64
  %idxprom859.i = sext i32 %add856.sink.i to i64
  %add.ptr819.sum3424.pn.i = add i64 %idxprom857.i, %idx.ext818.i
  %add.ptr819.sum3422.pn.i = add i64 %idxprom847.pn.i, %idx.ext818.i
  %add.ptr819.sum3420.pn.i = add i64 %idxprom837.pn.i, %idx.ext818.i
  %add.ptr819.sum3425.pn.i = add i64 %idxprom859.i, %idx.ext818.i
  %add.ptr819.sum3423.pn.i = add i64 %idxprom849.pn.i, %idx.ext818.i
  %add.ptr819.sum3421.pn.i = add i64 %idxprom839.pn.i, %idx.ext818.i
  %xr21.1.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %add.ptr819.sum3424.pn.i
  %xr20.1.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %idxprom857.i
  %xr11.2.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %add.ptr819.sum3422.pn.i
  %xr10.2.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %idxprom847.pn.i
  %xr01.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %add.ptr819.sum3420.pn.i
  %xr00.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %idxprom837.pn.i
  %xi21.1.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %add.ptr819.sum3425.pn.i
  %xi20.1.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %idxprom859.i
  %xi11.2.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %add.ptr819.sum3423.pn.i
  %xi10.2.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %idxprom849.pn.i
  %xi01.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %add.ptr819.sum3421.pn.i
  %xi00.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %idxprom839.pn.i
  %xr21.1.i = load double* %xr21.1.in.i, align 8
  %xr20.1.i = load double* %xr20.1.in.i, align 8
  %xr11.2.i = load double* %xr11.2.in.i, align 8
  %xr10.2.i = load double* %xr10.2.in.i, align 8
  %xr01.3.i = load double* %xr01.3.in.i, align 8
  %xr00.3.i = load double* %xr00.3.in.i, align 8
  %xi21.1.i = load double* %xi21.1.in.i, align 8
  %xi20.1.i = load double* %xi20.1.in.i, align 8
  %xi11.2.i = load double* %xi11.2.in.i, align 8
  %xi10.2.i = load double* %xi10.2.in.i, align 8
  %xi01.3.i = load double* %xi01.3.in.i, align 8
  %xi00.3.i = load double* %xi00.3.in.i, align 8
  br i1 %cmp905.i, label %for.cond907.preheader.i, label %for.cond984.preheader.i

for.cond907.preheader.i:                          ; preds = %if.end904.i
  br i1 %cmp9083580.i, label %for.body909.i, label %if.end1064.i

for.cond984.preheader.i:                          ; preds = %if.end904.i
  br i1 %cmp9083580.i, label %for.body986.lr.ph.i, label %if.end1064.i

for.body986.lr.ph.i:                              ; preds = %for.cond984.preheader.i
  %1173 = load i32** %rowindAT.i490, align 8, !tbaa !0
  br label %for.body986.i

for.body909.i:                                    ; preds = %for.cond907.preheader.i, %for.body909.i
  %indvars.iv3679.i = phi i64 [ %indvars.iv.next3680.i, %for.body909.i ], [ 0, %for.cond907.preheader.i ]
  %1174 = trunc i64 %indvars.iv3679.i to i32
  %mul910.i = shl nsw i32 %1174, 1
  %add9113412.i = or i32 %mul910.i, 1
  %idxprom912.i = sext i32 %mul910.i to i64
  %arrayidx913.i = getelementptr inbounds double* %colAT0.13584.i, i64 %idxprom912.i
  %1175 = load double* %arrayidx913.i, align 8, !tbaa !4
  %idxprom914.i = sext i32 %add9113412.i to i64
  %arrayidx915.i = getelementptr inbounds double* %colAT0.13584.i, i64 %idxprom914.i
  %1176 = load double* %arrayidx915.i, align 8, !tbaa !4
  %add.ptr829.sum3413.i = add i64 %idxprom912.i, %idx.ext828.i
  %arrayidx917.i = getelementptr inbounds double* %colAT0.13584.i, i64 %add.ptr829.sum3413.i
  %1177 = load double* %arrayidx917.i, align 8, !tbaa !4
  %add.ptr829.sum3414.i = add i64 %idxprom914.i, %idx.ext828.i
  %arrayidx919.i = getelementptr inbounds double* %colAT0.13584.i, i64 %add.ptr829.sum3414.i
  %1178 = load double* %arrayidx919.i, align 8, !tbaa !4
  %add.ptr832.sum3415.i = add i64 %idxprom912.i, %add.ptr829.sum.i
  %arrayidx921.i = getelementptr inbounds double* %colAT0.13584.i, i64 %add.ptr832.sum3415.i
  %1179 = load double* %arrayidx921.i, align 8, !tbaa !4
  %add.ptr832.sum3416.i = add i64 %idxprom914.i, %add.ptr829.sum.i
  %arrayidx923.i = getelementptr inbounds double* %colAT0.13584.i, i64 %add.ptr832.sum3416.i
  %1180 = load double* %arrayidx923.i, align 8, !tbaa !4
  %mul924.i663 = fmul double %xr00.3.i, %1175
  %mul925.i = fmul double %xi00.3.i, %1176
  %sub926.i = fsub double %mul924.i663, %mul925.i
  %mul927.i664 = fmul double %xr10.2.i, %1177
  %add928.i = fadd double %sub926.i, %mul927.i664
  %mul929.i = fmul double %xi10.2.i, %1178
  %sub930.i = fsub double %add928.i, %mul929.i
  %mul931.i665 = fmul double %xr20.1.i, %1179
  %add932.i = fadd double %sub930.i, %mul931.i665
  %mul933.i = fmul double %xi20.1.i, %1180
  %sub934.i = fsub double %add932.i, %mul933.i
  %arrayidx936.i = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %idxprom912.i
  %1181 = load double* %arrayidx936.i, align 8, !tbaa !4
  %sub937.i = fsub double %1181, %sub934.i
  store double %sub937.i, double* %arrayidx936.i, align 8, !tbaa !4
  %mul938.i = fmul double %xi00.3.i, %1175
  %mul939.i666 = fmul double %xr00.3.i, %1176
  %add940.i = fadd double %mul938.i, %mul939.i666
  %mul941.i = fmul double %xi10.2.i, %1177
  %add942.i667 = fadd double %add940.i, %mul941.i
  %mul943.i668 = fmul double %xr10.2.i, %1178
  %add944.i = fadd double %add942.i667, %mul943.i668
  %mul945.i = fmul double %xi20.1.i, %1179
  %add946.i669 = fadd double %add944.i, %mul945.i
  %mul947.i670 = fmul double %xr20.1.i, %1180
  %add948.i = fadd double %add946.i669, %mul947.i670
  %arrayidx950.i = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %idxprom914.i
  %1182 = load double* %arrayidx950.i, align 8, !tbaa !4
  %sub951.i = fsub double %1182, %add948.i
  store double %sub951.i, double* %arrayidx950.i, align 8, !tbaa !4
  %mul952.i671 = fmul double %xr01.3.i, %1175
  %mul953.i = fmul double %xi01.3.i, %1176
  %sub954.i = fsub double %mul952.i671, %mul953.i
  %mul955.i672 = fmul double %xr11.2.i, %1177
  %add956.i = fadd double %sub954.i, %mul955.i672
  %mul957.i = fmul double %xi11.2.i, %1178
  %sub958.i = fsub double %add956.i, %mul957.i
  %mul959.i673 = fmul double %xr21.1.i, %1179
  %add960.i = fadd double %sub958.i, %mul959.i673
  %mul961.i = fmul double %xi21.1.i, %1180
  %sub962.i = fsub double %add960.i, %mul961.i
  %add.ptr822.sum3417.i = add i64 %idxprom912.i, %idx.ext821.i
  %arrayidx964.i = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %add.ptr822.sum3417.i
  %1183 = load double* %arrayidx964.i, align 8, !tbaa !4
  %sub965.i = fsub double %1183, %sub962.i
  store double %sub965.i, double* %arrayidx964.i, align 8, !tbaa !4
  %mul966.i = fmul double %xi01.3.i, %1175
  %mul967.i = fmul double %xr01.3.i, %1176
  %add968.i = fadd double %mul966.i, %mul967.i
  %mul969.i = fmul double %xi11.2.i, %1177
  %add970.i = fadd double %add968.i, %mul969.i
  %mul971.i = fmul double %xr11.2.i, %1178
  %add972.i = fadd double %add970.i, %mul971.i
  %mul973.i = fmul double %xi21.1.i, %1179
  %add974.i = fadd double %add972.i, %mul973.i
  %mul975.i = fmul double %xr21.1.i, %1180
  %add976.i = fadd double %add974.i, %mul975.i
  %add.ptr822.sum3418.i = add i64 %idxprom914.i, %idx.ext821.i
  %arrayidx978.i = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %add.ptr822.sum3418.i
  %1184 = load double* %arrayidx978.i, align 8, !tbaa !4
  %sub979.i = fsub double %1184, %add976.i
  store double %sub979.i, double* %arrayidx978.i, align 8, !tbaa !4
  %indvars.iv.next3680.i = add i64 %indvars.iv3679.i, 1
  %lftr.wideiv1269 = trunc i64 %indvars.iv.next3680.i to i32
  %exitcond1270 = icmp eq i32 %lftr.wideiv1269, %1163
  br i1 %exitcond1270, label %if.end1064.i, label %for.body909.i

for.body986.i:                                    ; preds = %for.body986.i, %for.body986.lr.ph.i
  %indvars.iv3677.i = phi i64 [ 0, %for.body986.lr.ph.i ], [ %indvars.iv.next3678.i, %for.body986.i ]
  %1185 = trunc i64 %indvars.iv3677.i to i32
  %mul987.i = shl nsw i32 %1185, 1
  %add9883404.i = or i32 %mul987.i, 1
  %idxprom989.i = sext i32 %mul987.i to i64
  %arrayidx990.i = getelementptr inbounds double* %colAT0.13584.i, i64 %idxprom989.i
  %1186 = load double* %arrayidx990.i, align 8, !tbaa !4
  %idxprom991.i = sext i32 %add9883404.i to i64
  %arrayidx992.i = getelementptr inbounds double* %colAT0.13584.i, i64 %idxprom991.i
  %1187 = load double* %arrayidx992.i, align 8, !tbaa !4
  %add.ptr829.sum3405.i = add i64 %idxprom989.i, %idx.ext828.i
  %arrayidx994.i = getelementptr inbounds double* %colAT0.13584.i, i64 %add.ptr829.sum3405.i
  %1188 = load double* %arrayidx994.i, align 8, !tbaa !4
  %add.ptr829.sum3406.i = add i64 %idxprom991.i, %idx.ext828.i
  %arrayidx996.i = getelementptr inbounds double* %colAT0.13584.i, i64 %add.ptr829.sum3406.i
  %1189 = load double* %arrayidx996.i, align 8, !tbaa !4
  %add.ptr832.sum3407.i = add i64 %idxprom989.i, %add.ptr829.sum.i
  %arrayidx998.i = getelementptr inbounds double* %colAT0.13584.i, i64 %add.ptr832.sum3407.i
  %1190 = load double* %arrayidx998.i, align 8, !tbaa !4
  %add.ptr832.sum3408.i = add i64 %idxprom991.i, %add.ptr829.sum.i
  %arrayidx1000.i = getelementptr inbounds double* %colAT0.13584.i, i64 %add.ptr832.sum3408.i
  %1191 = load double* %arrayidx1000.i, align 8, !tbaa !4
  %arrayidx1002.i = getelementptr inbounds i32* %1173, i64 %indvars.iv3677.i
  %1192 = load i32* %arrayidx1002.i, align 4, !tbaa !3
  %mul1003.i = shl nsw i32 %1192, 1
  %add10043409.i = or i32 %mul1003.i, 1
  %mul1005.i674 = fmul double %xr00.3.i, %1186
  %mul1006.i = fmul double %xi00.3.i, %1187
  %sub1007.i = fsub double %mul1005.i674, %mul1006.i
  %mul1008.i675 = fmul double %xr10.2.i, %1188
  %add1009.i = fadd double %sub1007.i, %mul1008.i675
  %mul1010.i = fmul double %xi10.2.i, %1189
  %sub1011.i = fsub double %add1009.i, %mul1010.i
  %mul1012.i676 = fmul double %xr20.1.i, %1190
  %add1013.i = fadd double %sub1011.i, %mul1012.i676
  %mul1014.i = fmul double %xi20.1.i, %1191
  %sub1015.i = fsub double %add1013.i, %mul1014.i
  %idxprom1016.i = sext i32 %mul1003.i to i64
  %arrayidx1017.i = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %idxprom1016.i
  %1193 = load double* %arrayidx1017.i, align 8, !tbaa !4
  %sub1018.i = fsub double %1193, %sub1015.i
  store double %sub1018.i, double* %arrayidx1017.i, align 8, !tbaa !4
  %mul1019.i = fmul double %xi00.3.i, %1186
  %mul1020.i677 = fmul double %xr00.3.i, %1187
  %add1021.i = fadd double %mul1019.i, %mul1020.i677
  %mul1022.i = fmul double %xi10.2.i, %1188
  %add1023.i678 = fadd double %add1021.i, %mul1022.i
  %mul1024.i679 = fmul double %xr10.2.i, %1189
  %add1025.i = fadd double %add1023.i678, %mul1024.i679
  %mul1026.i = fmul double %xi20.1.i, %1190
  %add1027.i680 = fadd double %add1025.i, %mul1026.i
  %mul1028.i681 = fmul double %xr20.1.i, %1191
  %add1029.i = fadd double %add1027.i680, %mul1028.i681
  %idxprom1030.i = sext i32 %add10043409.i to i64
  %arrayidx1031.i = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %idxprom1030.i
  %1194 = load double* %arrayidx1031.i, align 8, !tbaa !4
  %sub1032.i = fsub double %1194, %add1029.i
  store double %sub1032.i, double* %arrayidx1031.i, align 8, !tbaa !4
  %mul1033.i682 = fmul double %xr01.3.i, %1186
  %mul1034.i = fmul double %xi01.3.i, %1187
  %sub1035.i = fsub double %mul1033.i682, %mul1034.i
  %mul1036.i683 = fmul double %xr11.2.i, %1188
  %add1037.i = fadd double %sub1035.i, %mul1036.i683
  %mul1038.i = fmul double %xi11.2.i, %1189
  %sub1039.i = fsub double %add1037.i, %mul1038.i
  %mul1040.i684 = fmul double %xr21.1.i, %1190
  %add1041.i = fadd double %sub1039.i, %mul1040.i684
  %mul1042.i = fmul double %xi21.1.i, %1191
  %sub1043.i = fsub double %add1041.i, %mul1042.i
  %add.ptr822.sum3410.i = add i64 %idxprom1016.i, %idx.ext821.i
  %arrayidx1045.i = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %add.ptr822.sum3410.i
  %1195 = load double* %arrayidx1045.i, align 8, !tbaa !4
  %sub1046.i = fsub double %1195, %sub1043.i
  store double %sub1046.i, double* %arrayidx1045.i, align 8, !tbaa !4
  %mul1047.i = fmul double %xi01.3.i, %1186
  %mul1048.i = fmul double %xr01.3.i, %1187
  %add1049.i = fadd double %mul1047.i, %mul1048.i
  %mul1050.i685 = fmul double %xi11.2.i, %1188
  %add1051.i = fadd double %add1049.i, %mul1050.i685
  %mul1052.i = fmul double %xr11.2.i, %1189
  %add1053.i = fadd double %add1051.i, %mul1052.i
  %mul1054.i = fmul double %xi21.1.i, %1190
  %add1055.i = fadd double %add1053.i, %mul1054.i
  %mul1056.i = fmul double %xr21.1.i, %1191
  %add1057.i = fadd double %add1055.i, %mul1056.i
  %add.ptr822.sum3411.i = add i64 %idxprom1030.i, %idx.ext821.i
  %arrayidx1059.i686 = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %add.ptr822.sum3411.i
  %1196 = load double* %arrayidx1059.i686, align 8, !tbaa !4
  %sub1060.i687 = fsub double %1196, %add1057.i
  store double %sub1060.i687, double* %arrayidx1059.i686, align 8, !tbaa !4
  %indvars.iv.next3678.i = add i64 %indvars.iv3677.i, 1
  %lftr.wideiv1267 = trunc i64 %indvars.iv.next3678.i to i32
  %exitcond1268 = icmp eq i32 %lftr.wideiv1267, %.pre.i662
  br i1 %exitcond1268, label %if.end1064.i, label %for.body986.i

if.end1064.i:                                     ; preds = %for.body909.i, %for.body986.i, %for.cond984.preheader.i, %for.cond907.preheader.i
  %add.ptr1067.i = getelementptr inbounds double* %colAT0.13584.i, i64 %add.ptr832.sum.i
  %indvars.iv.next3684.i = add i64 %indvars.iv3683.i, 3
  %add1069.i = add nsw i32 %icolAT.13588.i, 3
  %1197 = trunc i64 %indvars.iv.next3684.i to i32
  %cmp825.i = icmp slt i32 %1197, %sub8243582.i
  br i1 %cmp825.i, label %for.body826.i, label %for.end1070.i

for.end1070.i:                                    ; preds = %if.end1064.i, %if.then816.i
  %icolAT.1.lcssa.i688 = phi i32 [ 0, %if.then816.i ], [ %add1069.i, %if.end1064.i ]
  %colAT0.1.lcssa.i689 = phi double* [ %1164, %if.then816.i ], [ %add.ptr1067.i, %if.end1064.i ]
  %cmp1072.i = icmp eq i32 %icolAT.1.lcssa.i688, %sub8243582.i
  br i1 %cmp1072.i, label %if.then1073.i, label %if.else1269.i

if.then1073.i:                                    ; preds = %for.end1070.i
  %1198 = load i32* %nrowAT.i486, align 4, !tbaa !3
  %mul1074.i = shl nsw i32 %1198, 1
  %idx.ext1075.i = sext i32 %mul1074.i to i64
  %cmp1077.i = icmp eq i32 %1165, %1162
  br i1 %cmp1077.i, label %if.then1078.i, label %if.else1109.i

if.then1078.i:                                    ; preds = %if.then1073.i
  %mul1079.i = shl nsw i32 %sub8243582.i, 1
  %add10803390.i = or i32 %mul1079.i, 1
  %add1089.i = add nsw i32 %mul1079.i, 2
  %add1090.i = add nsw i32 %add10803390.i, 2
  br label %if.end1148.i

if.else1109.i:                                    ; preds = %if.then1073.i
  %idxprom1110.i = sext i32 %sub8243582.i to i64
  %1199 = load i32** %colindAT.i489, align 8, !tbaa !0
  %arrayidx1111.i690 = getelementptr inbounds i32* %1199, i64 %idxprom1110.i
  %1200 = load i32* %arrayidx1111.i690, align 4, !tbaa !3
  %mul1112.i691 = shl nsw i32 %1200, 1
  %add11133373.i = or i32 %mul1112.i691, 1
  %add1122.i = add nsw i32 %1165, -1
  %idxprom1123.i = sext i32 %add1122.i to i64
  %arrayidx1124.i692 = getelementptr inbounds i32* %1199, i64 %idxprom1123.i
  %1201 = load i32* %arrayidx1124.i692, align 4, !tbaa !3
  %mul1125.i = shl nsw i32 %1201, 1
  %add11263376.i = or i32 %mul1125.i, 1
  br label %if.end1148.i

if.end1148.i:                                     ; preds = %if.else1109.i, %if.then1078.i
  %add1089.sink.i = phi i32 [ %add1089.i, %if.then1078.i ], [ %mul1125.i, %if.else1109.i ]
  %add1090.sink.i = phi i32 [ %add1090.i, %if.then1078.i ], [ %add11263376.i, %if.else1109.i ]
  %idxprom1083.pn.in.i = phi i32 [ %add10803390.i, %if.then1078.i ], [ %add11133373.i, %if.else1109.i ]
  %idxprom1081.pn.in.i = phi i32 [ %mul1079.i, %if.then1078.i ], [ %mul1112.i691, %if.else1109.i ]
  %idxprom1081.pn.i = sext i32 %idxprom1081.pn.in.i to i64
  %idxprom1083.pn.i = sext i32 %idxprom1083.pn.in.i to i64
  %idxprom1091.i = sext i32 %add1089.sink.i to i64
  %idxprom1093.i = sext i32 %add1090.sink.i to i64
  %add.ptr819.sum3393.pn.i = add i64 %idxprom1091.i, %idx.ext818.i
  %add.ptr819.sum3391.pn.i = add i64 %idxprom1081.pn.i, %idx.ext818.i
  %add.ptr819.sum3394.pn.i = add i64 %idxprom1093.i, %idx.ext818.i
  %add.ptr819.sum3392.pn.i = add i64 %idxprom1083.pn.i, %idx.ext818.i
  %xr11.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %add.ptr819.sum3393.pn.i
  %xr10.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %idxprom1091.i
  %xr01.4.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %add.ptr819.sum3391.pn.i
  %xr00.4.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %idxprom1081.pn.i
  %xi11.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %add.ptr819.sum3394.pn.i
  %xi10.3.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %idxprom1093.i
  %xi01.4.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %add.ptr819.sum3392.pn.i
  %xi00.4.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %idxprom1083.pn.i
  %xr11.3.i = load double* %xr11.3.in.i, align 8
  %xr10.3.i = load double* %xr10.3.in.i, align 8
  %xr01.4.i = load double* %xr01.4.in.i, align 8
  %xr00.4.i = load double* %xr00.4.in.i, align 8
  %xi11.3.i = load double* %xi11.3.in.i, align 8
  %xi10.3.i = load double* %xi10.3.in.i, align 8
  %xi01.4.i = load double* %xi01.4.in.i, align 8
  %xi00.4.i = load double* %xi00.4.in.i, align 8
  %cmp1149.i = icmp eq i32 %1163, %1198
  br i1 %cmp1149.i, label %for.cond1151.preheader.i, label %for.cond1208.preheader.i

for.cond1208.preheader.i:                         ; preds = %if.end1148.i
  %cmp12093569.i = icmp sgt i32 %1198, 0
  br i1 %cmp12093569.i, label %for.body1210.lr.ph.i, label %sw.epilog33

for.body1210.lr.ph.i:                             ; preds = %for.cond1208.preheader.i
  %1202 = load i32** %rowindAT.i490, align 8, !tbaa !0
  br label %for.body1210.i

for.cond1151.preheader.i:                         ; preds = %if.end1148.i
  %cmp11523566.i = icmp sgt i32 %1163, 0
  br i1 %cmp11523566.i, label %for.body1153.i, label %sw.epilog33

for.body1153.i:                                   ; preds = %for.cond1151.preheader.i, %for.body1153.i
  %indvars.iv.i693 = phi i64 [ %indvars.iv.next.i697, %for.body1153.i ], [ 0, %for.cond1151.preheader.i ]
  %1203 = trunc i64 %indvars.iv.i693 to i32
  %mul1154.i = shl nsw i32 %1203, 1
  %add11553385.i = or i32 %mul1154.i, 1
  %idxprom1156.i = sext i32 %mul1154.i to i64
  %arrayidx1157.i = getelementptr inbounds double* %colAT0.1.lcssa.i689, i64 %idxprom1156.i
  %1204 = load double* %arrayidx1157.i, align 8, !tbaa !4
  %idxprom1158.i = sext i32 %add11553385.i to i64
  %arrayidx1159.i = getelementptr inbounds double* %colAT0.1.lcssa.i689, i64 %idxprom1158.i
  %1205 = load double* %arrayidx1159.i, align 8, !tbaa !4
  %add.ptr1076.sum3386.i = add i64 %idxprom1156.i, %idx.ext1075.i
  %arrayidx1161.i = getelementptr inbounds double* %colAT0.1.lcssa.i689, i64 %add.ptr1076.sum3386.i
  %1206 = load double* %arrayidx1161.i, align 8, !tbaa !4
  %add.ptr1076.sum3387.i = add i64 %idxprom1158.i, %idx.ext1075.i
  %arrayidx1163.i = getelementptr inbounds double* %colAT0.1.lcssa.i689, i64 %add.ptr1076.sum3387.i
  %1207 = load double* %arrayidx1163.i, align 8, !tbaa !4
  %mul1164.i = fmul double %xr00.4.i, %1204
  %mul1165.i = fmul double %xi00.4.i, %1205
  %sub1166.i = fsub double %mul1164.i, %mul1165.i
  %mul1167.i = fmul double %xr10.3.i, %1206
  %add1168.i = fadd double %sub1166.i, %mul1167.i
  %mul1169.i = fmul double %xi10.3.i, %1207
  %sub1170.i = fsub double %add1168.i, %mul1169.i
  %arrayidx1172.i = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %idxprom1156.i
  %1208 = load double* %arrayidx1172.i, align 8, !tbaa !4
  %sub1173.i = fsub double %1208, %sub1170.i
  store double %sub1173.i, double* %arrayidx1172.i, align 8, !tbaa !4
  %mul1174.i = fmul double %xi00.4.i, %1204
  %mul1175.i694 = fmul double %xr00.4.i, %1205
  %add1176.i = fadd double %mul1174.i, %mul1175.i694
  %mul1177.i = fmul double %xi10.3.i, %1206
  %add1178.i = fadd double %add1176.i, %mul1177.i
  %mul1179.i = fmul double %xr10.3.i, %1207
  %add1180.i = fadd double %add1178.i, %mul1179.i
  %arrayidx1182.i = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %idxprom1158.i
  %1209 = load double* %arrayidx1182.i, align 8, !tbaa !4
  %sub1183.i = fsub double %1209, %add1180.i
  store double %sub1183.i, double* %arrayidx1182.i, align 8, !tbaa !4
  %mul1184.i = fmul double %xr01.4.i, %1204
  %mul1185.i = fmul double %xi01.4.i, %1205
  %sub1186.i = fsub double %mul1184.i, %mul1185.i
  %mul1187.i = fmul double %xr11.3.i, %1206
  %add1188.i = fadd double %sub1186.i, %mul1187.i
  %mul1189.i = fmul double %xi11.3.i, %1207
  %sub1190.i = fsub double %add1188.i, %mul1189.i
  %add.ptr822.sum3388.i = add i64 %idxprom1156.i, %idx.ext821.i
  %arrayidx1192.i695 = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %add.ptr822.sum3388.i
  %1210 = load double* %arrayidx1192.i695, align 8, !tbaa !4
  %sub1193.i = fsub double %1210, %sub1190.i
  store double %sub1193.i, double* %arrayidx1192.i695, align 8, !tbaa !4
  %mul1194.i = fmul double %xi01.4.i, %1204
  %mul1195.i = fmul double %xr01.4.i, %1205
  %add1196.i = fadd double %mul1194.i, %mul1195.i
  %mul1197.i = fmul double %xi11.3.i, %1206
  %add1198.i = fadd double %add1196.i, %mul1197.i
  %mul1199.i = fmul double %xr11.3.i, %1207
  %add1200.i = fadd double %add1198.i, %mul1199.i
  %add.ptr822.sum3389.i = add i64 %idxprom1158.i, %idx.ext821.i
  %arrayidx1202.i = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %add.ptr822.sum3389.i
  %1211 = load double* %arrayidx1202.i, align 8, !tbaa !4
  %sub1203.i696 = fsub double %1211, %add1200.i
  store double %sub1203.i696, double* %arrayidx1202.i, align 8, !tbaa !4
  %indvars.iv.next.i697 = add i64 %indvars.iv.i693, 1
  %lftr.wideiv1259 = trunc i64 %indvars.iv.next.i697 to i32
  %exitcond1260 = icmp eq i32 %lftr.wideiv1259, %1163
  br i1 %exitcond1260, label %sw.epilog33, label %for.body1153.i

for.body1210.i:                                   ; preds = %for.body1210.i, %for.body1210.lr.ph.i
  %indvars.iv3671.i = phi i64 [ 0, %for.body1210.lr.ph.i ], [ %indvars.iv.next3672.i, %for.body1210.i ]
  %1212 = trunc i64 %indvars.iv3671.i to i32
  %mul1211.i = shl nsw i32 %1212, 1
  %add12123380.i = or i32 %mul1211.i, 1
  %idxprom1213.i = sext i32 %mul1211.i to i64
  %arrayidx1214.i = getelementptr inbounds double* %colAT0.1.lcssa.i689, i64 %idxprom1213.i
  %1213 = load double* %arrayidx1214.i, align 8, !tbaa !4
  %idxprom1215.i = sext i32 %add12123380.i to i64
  %arrayidx1216.i = getelementptr inbounds double* %colAT0.1.lcssa.i689, i64 %idxprom1215.i
  %1214 = load double* %arrayidx1216.i, align 8, !tbaa !4
  %add.ptr1076.sum.i = add i64 %idxprom1213.i, %idx.ext1075.i
  %arrayidx1218.i = getelementptr inbounds double* %colAT0.1.lcssa.i689, i64 %add.ptr1076.sum.i
  %1215 = load double* %arrayidx1218.i, align 8, !tbaa !4
  %add.ptr1076.sum3381.i = add i64 %idxprom1215.i, %idx.ext1075.i
  %arrayidx1220.i = getelementptr inbounds double* %colAT0.1.lcssa.i689, i64 %add.ptr1076.sum3381.i
  %1216 = load double* %arrayidx1220.i, align 8, !tbaa !4
  %arrayidx1222.i = getelementptr inbounds i32* %1202, i64 %indvars.iv3671.i
  %1217 = load i32* %arrayidx1222.i, align 4, !tbaa !3
  %mul1223.i = shl nsw i32 %1217, 1
  %add12243382.i = or i32 %mul1223.i, 1
  %mul1225.i698 = fmul double %xr00.4.i, %1213
  %mul1226.i699 = fmul double %xi00.4.i, %1214
  %sub1227.i700 = fsub double %mul1225.i698, %mul1226.i699
  %mul1228.i = fmul double %xr10.3.i, %1215
  %add1229.i = fadd double %sub1227.i700, %mul1228.i
  %mul1230.i701 = fmul double %xi10.3.i, %1216
  %sub1231.i = fsub double %add1229.i, %mul1230.i701
  %idxprom1232.i = sext i32 %mul1223.i to i64
  %arrayidx1233.i = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %idxprom1232.i
  %1218 = load double* %arrayidx1233.i, align 8, !tbaa !4
  %sub1234.i = fsub double %1218, %sub1231.i
  store double %sub1234.i, double* %arrayidx1233.i, align 8, !tbaa !4
  %mul1235.i = fmul double %xi00.4.i, %1213
  %mul1236.i = fmul double %xr00.4.i, %1214
  %add1237.i = fadd double %mul1235.i, %mul1236.i
  %mul1238.i = fmul double %xi10.3.i, %1215
  %add1239.i = fadd double %add1237.i, %mul1238.i
  %mul1240.i702 = fmul double %xr10.3.i, %1216
  %add1241.i = fadd double %add1239.i, %mul1240.i702
  %idxprom1242.i703 = sext i32 %add12243382.i to i64
  %arrayidx1243.i704 = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %idxprom1242.i703
  %1219 = load double* %arrayidx1243.i704, align 8, !tbaa !4
  %sub1244.i = fsub double %1219, %add1241.i
  store double %sub1244.i, double* %arrayidx1243.i704, align 8, !tbaa !4
  %mul1245.i = fmul double %xr01.4.i, %1213
  %mul1246.i = fmul double %xi01.4.i, %1214
  %sub1247.i = fsub double %mul1245.i, %mul1246.i
  %mul1248.i = fmul double %xr11.3.i, %1215
  %add1249.i = fadd double %sub1247.i, %mul1248.i
  %mul1250.i = fmul double %xi11.3.i, %1216
  %sub1251.i = fsub double %add1249.i, %mul1250.i
  %add.ptr822.sum3383.i = add i64 %idxprom1232.i, %idx.ext821.i
  %arrayidx1253.i = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %add.ptr822.sum3383.i
  %1220 = load double* %arrayidx1253.i, align 8, !tbaa !4
  %sub1254.i = fsub double %1220, %sub1251.i
  store double %sub1254.i, double* %arrayidx1253.i, align 8, !tbaa !4
  %mul1255.i = fmul double %xi01.4.i, %1213
  %mul1256.i = fmul double %xr01.4.i, %1214
  %add1257.i = fadd double %mul1255.i, %mul1256.i
  %mul1258.i = fmul double %xi11.3.i, %1215
  %add1259.i = fadd double %add1257.i, %mul1258.i
  %mul1260.i = fmul double %xr11.3.i, %1216
  %add1261.i = fadd double %add1259.i, %mul1260.i
  %add.ptr822.sum3384.i = add i64 %idxprom1242.i703, %idx.ext821.i
  %arrayidx1263.i = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %add.ptr822.sum3384.i
  %1221 = load double* %arrayidx1263.i, align 8, !tbaa !4
  %sub1264.i705 = fsub double %1221, %add1261.i
  store double %sub1264.i705, double* %arrayidx1263.i, align 8, !tbaa !4
  %indvars.iv.next3672.i = add i64 %indvars.iv3671.i, 1
  %lftr.wideiv1261 = trunc i64 %indvars.iv.next3672.i to i32
  %exitcond1262 = icmp eq i32 %lftr.wideiv1261, %1198
  br i1 %exitcond1262, label %sw.epilog33, label %for.body1210.i

if.else1269.i:                                    ; preds = %for.end1070.i
  %sub1270.i = add nsw i32 %1165, -1
  %cmp1271.i = icmp eq i32 %icolAT.1.lcssa.i688, %sub1270.i
  br i1 %cmp1271.i, label %if.then1272.i, label %sw.epilog33

if.then1272.i:                                    ; preds = %if.else1269.i
  %cmp1273.i = icmp eq i32 %1165, %1162
  br i1 %cmp1273.i, label %if.end1344.i, label %if.else1305.i

if.else1305.i:                                    ; preds = %if.then1272.i
  %idxprom1306.i = sext i32 %icolAT.1.lcssa.i688 to i64
  %1222 = load i32** %colindAT.i489, align 8, !tbaa !0
  %arrayidx1307.i = getelementptr inbounds i32* %1222, i64 %idxprom1306.i
  %1223 = load i32* %arrayidx1307.i, align 4, !tbaa !3
  br label %if.end1344.i

if.end1344.i:                                     ; preds = %if.then1272.i, %if.else1305.i
  %icolAT.1.sink.i = phi i32 [ %1223, %if.else1305.i ], [ %icolAT.1.lcssa.i688, %if.then1272.i ]
  %mul1275.i706 = shl nsw i32 %icolAT.1.sink.i, 1
  %add12763370.sink.i = or i32 %mul1275.i706, 1
  %idxprom1277.i = sext i32 %mul1275.i706 to i64
  %idxprom1279.i = sext i32 %add12763370.sink.i to i64
  %add.ptr819.sum3371.pn.i = add i64 %idxprom1277.i, %idx.ext818.i
  %add.ptr819.sum3372.pn.i = add i64 %idxprom1279.i, %idx.ext818.i
  %xr01.5.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %add.ptr819.sum3371.pn.i
  %xr00.5.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %idxprom1277.i
  %xi01.5.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %add.ptr819.sum3372.pn.i
  %xi00.5.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %idxprom1279.i
  %xr01.5.i = load double* %xr01.5.in.i, align 8
  %xr00.5.i = load double* %xr00.5.in.i, align 8
  %xi01.5.i = load double* %xi01.5.in.i, align 8
  %xi00.5.i = load double* %xi00.5.in.i, align 8
  %1224 = load i32* %nrowAT.i486, align 4, !tbaa !3
  %cmp1345.i = icmp eq i32 %1163, %1224
  br i1 %cmp1345.i, label %for.cond1347.preheader.i, label %for.cond1384.preheader.i

for.cond1384.preheader.i:                         ; preds = %if.end1344.i
  %cmp13853575.i = icmp sgt i32 %1224, 0
  br i1 %cmp13853575.i, label %for.body1386.lr.ph.i, label %sw.epilog33

for.body1386.lr.ph.i:                             ; preds = %for.cond1384.preheader.i
  %1225 = load i32** %rowindAT.i490, align 8, !tbaa !0
  br label %for.body1386.i

for.cond1347.preheader.i:                         ; preds = %if.end1344.i
  %cmp13483572.i = icmp sgt i32 %1163, 0
  br i1 %cmp13483572.i, label %for.body1349.i, label %sw.epilog33

for.body1349.i:                                   ; preds = %for.cond1347.preheader.i, %for.body1349.i
  %indvars.iv3673.i = phi i64 [ %indvars.iv.next3674.i, %for.body1349.i ], [ 0, %for.cond1347.preheader.i ]
  %1226 = trunc i64 %indvars.iv3673.i to i32
  %mul1350.i = shl nsw i32 %1226, 1
  %add13513367.i = or i32 %mul1350.i, 1
  %idxprom1352.i = sext i32 %mul1350.i to i64
  %arrayidx1353.i = getelementptr inbounds double* %colAT0.1.lcssa.i689, i64 %idxprom1352.i
  %1227 = load double* %arrayidx1353.i, align 8, !tbaa !4
  %idxprom1354.i = sext i32 %add13513367.i to i64
  %arrayidx1355.i = getelementptr inbounds double* %colAT0.1.lcssa.i689, i64 %idxprom1354.i
  %1228 = load double* %arrayidx1355.i, align 8, !tbaa !4
  %mul1356.i = fmul double %xr00.5.i, %1227
  %mul1357.i = fmul double %xi00.5.i, %1228
  %sub1358.i707 = fsub double %mul1356.i, %mul1357.i
  %arrayidx1360.i708 = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %idxprom1352.i
  %1229 = load double* %arrayidx1360.i708, align 8, !tbaa !4
  %sub1361.i709 = fsub double %1229, %sub1358.i707
  store double %sub1361.i709, double* %arrayidx1360.i708, align 8, !tbaa !4
  %mul1362.i = fmul double %xi00.5.i, %1227
  %mul1363.i = fmul double %xr00.5.i, %1228
  %add1364.i = fadd double %mul1362.i, %mul1363.i
  %arrayidx1366.i = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %idxprom1354.i
  %1230 = load double* %arrayidx1366.i, align 8, !tbaa !4
  %sub1367.i = fsub double %1230, %add1364.i
  store double %sub1367.i, double* %arrayidx1366.i, align 8, !tbaa !4
  %mul1368.i = fmul double %xr01.5.i, %1227
  %mul1369.i = fmul double %xi01.5.i, %1228
  %sub1370.i = fsub double %mul1368.i, %mul1369.i
  %add.ptr822.sum3368.i = add i64 %idxprom1352.i, %idx.ext821.i
  %arrayidx1372.i = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %add.ptr822.sum3368.i
  %1231 = load double* %arrayidx1372.i, align 8, !tbaa !4
  %sub1373.i = fsub double %1231, %sub1370.i
  store double %sub1373.i, double* %arrayidx1372.i, align 8, !tbaa !4
  %mul1374.i = fmul double %xi01.5.i, %1227
  %mul1375.i = fmul double %xr01.5.i, %1228
  %add1376.i = fadd double %mul1374.i, %mul1375.i
  %add.ptr822.sum3369.i = add i64 %idxprom1354.i, %idx.ext821.i
  %arrayidx1378.i = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %add.ptr822.sum3369.i
  %1232 = load double* %arrayidx1378.i, align 8, !tbaa !4
  %sub1379.i = fsub double %1232, %add1376.i
  store double %sub1379.i, double* %arrayidx1378.i, align 8, !tbaa !4
  %indvars.iv.next3674.i = add i64 %indvars.iv3673.i, 1
  %lftr.wideiv1263 = trunc i64 %indvars.iv.next3674.i to i32
  %exitcond1264 = icmp eq i32 %lftr.wideiv1263, %1163
  br i1 %exitcond1264, label %sw.epilog33, label %for.body1349.i

for.body1386.i:                                   ; preds = %for.body1386.i, %for.body1386.lr.ph.i
  %indvars.iv3675.i = phi i64 [ 0, %for.body1386.lr.ph.i ], [ %indvars.iv.next3676.i, %for.body1386.i ]
  %1233 = trunc i64 %indvars.iv3675.i to i32
  %mul1387.i = shl nsw i32 %1233, 1
  %add13883364.i = or i32 %mul1387.i, 1
  %idxprom1389.i = sext i32 %mul1387.i to i64
  %arrayidx1390.i = getelementptr inbounds double* %colAT0.1.lcssa.i689, i64 %idxprom1389.i
  %1234 = load double* %arrayidx1390.i, align 8, !tbaa !4
  %idxprom1391.i = sext i32 %add13883364.i to i64
  %arrayidx1392.i = getelementptr inbounds double* %colAT0.1.lcssa.i689, i64 %idxprom1391.i
  %1235 = load double* %arrayidx1392.i, align 8, !tbaa !4
  %arrayidx1394.i = getelementptr inbounds i32* %1225, i64 %indvars.iv3675.i
  %1236 = load i32* %arrayidx1394.i, align 4, !tbaa !3
  %mul1395.i = shl nsw i32 %1236, 1
  %add13963365.i = or i32 %mul1395.i, 1
  %mul1397.i = fmul double %xr00.5.i, %1234
  %mul1398.i = fmul double %xi00.5.i, %1235
  %sub1399.i = fsub double %mul1397.i, %mul1398.i
  %idxprom1400.i = sext i32 %mul1395.i to i64
  %arrayidx1401.i710 = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %idxprom1400.i
  %1237 = load double* %arrayidx1401.i710, align 8, !tbaa !4
  %sub1402.i = fsub double %1237, %sub1399.i
  store double %sub1402.i, double* %arrayidx1401.i710, align 8, !tbaa !4
  %mul1403.i711 = fmul double %xi00.5.i, %1234
  %mul1404.i = fmul double %xr00.5.i, %1235
  %add1405.i712 = fadd double %mul1403.i711, %mul1404.i
  %idxprom1406.i = sext i32 %add13963365.i to i64
  %arrayidx1407.i = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %idxprom1406.i
  %1238 = load double* %arrayidx1407.i, align 8, !tbaa !4
  %sub1408.i = fsub double %1238, %add1405.i712
  store double %sub1408.i, double* %arrayidx1407.i, align 8, !tbaa !4
  %mul1409.i = fmul double %xr01.5.i, %1234
  %mul1410.i713 = fmul double %xi01.5.i, %1235
  %sub1411.i = fsub double %mul1409.i, %mul1410.i713
  %add.ptr822.sum.i = add i64 %idxprom1400.i, %idx.ext821.i
  %arrayidx1413.i = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %add.ptr822.sum.i
  %1239 = load double* %arrayidx1413.i, align 8, !tbaa !4
  %sub1414.i = fsub double %1239, %sub1411.i
  store double %sub1414.i, double* %arrayidx1413.i, align 8, !tbaa !4
  %mul1415.i714 = fmul double %xi01.5.i, %1234
  %mul1416.i = fmul double %xr01.5.i, %1235
  %add1417.i715 = fadd double %mul1415.i714, %mul1416.i
  %add.ptr822.sum3366.i = add i64 %idxprom1406.i, %idx.ext821.i
  %arrayidx1419.i = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %add.ptr822.sum3366.i
  %1240 = load double* %arrayidx1419.i, align 8, !tbaa !4
  %sub1420.i = fsub double %1240, %add1417.i715
  store double %sub1420.i, double* %arrayidx1419.i, align 8, !tbaa !4
  %indvars.iv.next3676.i = add i64 %indvars.iv3675.i, 1
  %lftr.wideiv1265 = trunc i64 %indvars.iv.next3676.i to i32
  %exitcond1266 = icmp eq i32 %lftr.wideiv1265, %1224
  br i1 %exitcond1266, label %sw.epilog33, label %for.body1386.i

if.else1427.i:                                    ; preds = %for.end813.i
  %sub1428.i = add nsw i32 %.lcssa3652.i, -1
  %cmp1429.i = icmp eq i32 %jcolX.0.lcssa.i658, %sub1428.i
  br i1 %cmp1429.i, label %if.then1430.i, label %sw.epilog33

if.then1430.i:                                    ; preds = %if.else1427.i
  %1241 = load double** %entA.i478, align 8, !tbaa !0
  %1242 = load i32* %ncolAT.i483, align 4, !tbaa !3
  %sub14323610.i = add nsw i32 %1242, -2
  %cmp14333611.i = icmp sgt i32 %sub14323610.i, 0
  br i1 %cmp14333611.i, label %for.body1434.lr.ph.i, label %for.end1598.i

for.body1434.lr.ph.i:                             ; preds = %if.then1430.i
  %.pre3725.i = load i32* %nrowAT.i486, align 4, !tbaa !3
  %.pre3726.i = load i32* %nrowX.i487, align 4, !tbaa !3
  %mul1435.i = shl nsw i32 %.pre3725.i, 1
  %idx.ext1436.i = sext i32 %mul1435.i to i64
  %add.ptr1437.sum.i = shl nsw i64 %idx.ext1436.i, 1
  %cmp1441.i = icmp eq i32 %1242, %.pre3726.i
  %cmp14923607.i = icmp sgt i32 %.pre3725.i, 0
  %add.ptr1440.sum.i = add i64 %add.ptr1437.sum.i, %idx.ext1436.i
  br label %for.body1434.i

for.body1434.i:                                   ; preds = %if.end1592.i, %for.body1434.lr.ph.i
  %indvars.iv3701.i = phi i64 [ 0, %for.body1434.lr.ph.i ], [ %indvars.iv.next3702.i, %if.end1592.i ]
  %icolAT.23616.i = phi i32 [ 0, %for.body1434.lr.ph.i ], [ %add1597.i, %if.end1592.i ]
  %colAT0.23612.i = phi double* [ %1241, %for.body1434.lr.ph.i ], [ %add.ptr1595.i, %if.end1592.i ]
  br i1 %cmp1441.i, label %if.then1442.i, label %if.else1461.i

if.then1442.i:                                    ; preds = %for.body1434.i
  %1243 = trunc i64 %indvars.iv3701.i to i32
  %mul1443.i716 = shl nsw i32 %1243, 1
  %add14443359.i = or i32 %mul1443.i716, 1
  %add1449.i717 = add nsw i32 %mul1443.i716, 2
  %add1450.i718 = add nsw i32 %add14443359.i, 2
  %add1455.i = add nsw i32 %mul1443.i716, 4
  %add1456.i = add nsw i32 %add14443359.i, 4
  br label %if.end1488.i

if.else1461.i:                                    ; preds = %for.body1434.i
  %1244 = load i32** %colindAT.i489, align 8, !tbaa !0
  %arrayidx1463.i = getelementptr inbounds i32* %1244, i64 %indvars.iv3701.i
  %1245 = load i32* %arrayidx1463.i, align 4, !tbaa !3
  %mul1464.i = shl nsw i32 %1245, 1
  %add14653345.i = or i32 %mul1464.i, 1
  %1246 = add nsw i64 %indvars.iv3701.i, 1
  %arrayidx1472.i = getelementptr inbounds i32* %1244, i64 %1246
  %1247 = load i32* %arrayidx1472.i, align 4, !tbaa !3
  %mul1473.i = shl nsw i32 %1247, 1
  %add14743346.i = or i32 %mul1473.i, 1
  %1248 = add nsw i64 %indvars.iv3701.i, 2
  %arrayidx1481.i719 = getelementptr inbounds i32* %1244, i64 %1248
  %1249 = load i32* %arrayidx1481.i719, align 4, !tbaa !3
  %mul1482.i720 = shl nsw i32 %1249, 1
  %add14833347.i = or i32 %mul1482.i720, 1
  br label %if.end1488.i

if.end1488.i:                                     ; preds = %if.else1461.i, %if.then1442.i
  %idxprom1447.pn.in.i = phi i32 [ %add14443359.i, %if.then1442.i ], [ %add14653345.i, %if.else1461.i ]
  %idxprom1453.pn.in.i = phi i32 [ %add1450.i718, %if.then1442.i ], [ %add14743346.i, %if.else1461.i ]
  %idxprom1459.pn.in.i = phi i32 [ %add1456.i, %if.then1442.i ], [ %add14833347.i, %if.else1461.i ]
  %idxprom1445.pn.in.i = phi i32 [ %mul1443.i716, %if.then1442.i ], [ %mul1464.i, %if.else1461.i ]
  %idxprom1451.pn.in.i = phi i32 [ %add1449.i717, %if.then1442.i ], [ %mul1473.i, %if.else1461.i ]
  %idxprom1457.pn.in.i = phi i32 [ %add1455.i, %if.then1442.i ], [ %mul1482.i720, %if.else1461.i ]
  %idxprom1457.pn.i = sext i32 %idxprom1457.pn.in.i to i64
  %idxprom1451.pn.i = sext i32 %idxprom1451.pn.in.i to i64
  %idxprom1445.pn.i = sext i32 %idxprom1445.pn.in.i to i64
  %idxprom1459.pn.i = sext i32 %idxprom1459.pn.in.i to i64
  %idxprom1453.pn.i = sext i32 %idxprom1453.pn.in.i to i64
  %idxprom1447.pn.i = sext i32 %idxprom1447.pn.in.i to i64
  %xr20.2.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %idxprom1457.pn.i
  %xr10.4.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %idxprom1451.pn.i
  %xr00.6.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %idxprom1445.pn.i
  %xi20.2.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %idxprom1459.pn.i
  %xi10.4.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %idxprom1453.pn.i
  %xi00.6.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %idxprom1447.pn.i
  %xr20.2.i = load double* %xr20.2.in.i, align 8
  %xr10.4.i = load double* %xr10.4.in.i, align 8
  %xr00.6.i = load double* %xr00.6.in.i, align 8
  %xi20.2.i = load double* %xi20.2.in.i, align 8
  %xi10.4.i = load double* %xi10.4.in.i, align 8
  %xi00.6.i = load double* %xi00.6.in.i, align 8
  %1250 = load i32* %nrowY.i488, align 4, !tbaa !3
  %cmp1489.i = icmp eq i32 %1250, %.pre3725.i
  br i1 %cmp1489.i, label %for.cond1491.preheader.i, label %for.cond1540.preheader.i

for.cond1491.preheader.i:                         ; preds = %if.end1488.i
  br i1 %cmp14923607.i, label %for.body1493.i, label %if.end1592.i

for.cond1540.preheader.i:                         ; preds = %if.end1488.i
  br i1 %cmp14923607.i, label %for.body1542.lr.ph.i, label %if.end1592.i

for.body1542.lr.ph.i:                             ; preds = %for.cond1540.preheader.i
  %1251 = load i32** %rowindAT.i490, align 8, !tbaa !0
  br label %for.body1542.i

for.body1493.i:                                   ; preds = %for.cond1491.preheader.i, %for.body1493.i
  %indvars.iv3697.i = phi i64 [ %indvars.iv.next3698.i, %for.body1493.i ], [ 0, %for.cond1491.preheader.i ]
  %1252 = trunc i64 %indvars.iv3697.i to i32
  %mul1494.i = shl nsw i32 %1252, 1
  %add14953354.i = or i32 %mul1494.i, 1
  %idxprom1496.i = sext i32 %mul1494.i to i64
  %arrayidx1497.i = getelementptr inbounds double* %colAT0.23612.i, i64 %idxprom1496.i
  %1253 = load double* %arrayidx1497.i, align 8, !tbaa !4
  %idxprom1498.i = sext i32 %add14953354.i to i64
  %arrayidx1499.i = getelementptr inbounds double* %colAT0.23612.i, i64 %idxprom1498.i
  %1254 = load double* %arrayidx1499.i, align 8, !tbaa !4
  %add.ptr1437.sum3355.i = add i64 %idxprom1496.i, %idx.ext1436.i
  %arrayidx1501.i = getelementptr inbounds double* %colAT0.23612.i, i64 %add.ptr1437.sum3355.i
  %1255 = load double* %arrayidx1501.i, align 8, !tbaa !4
  %add.ptr1437.sum3356.i = add i64 %idxprom1498.i, %idx.ext1436.i
  %arrayidx1503.i = getelementptr inbounds double* %colAT0.23612.i, i64 %add.ptr1437.sum3356.i
  %1256 = load double* %arrayidx1503.i, align 8, !tbaa !4
  %add.ptr1440.sum3357.i = add i64 %idxprom1496.i, %add.ptr1437.sum.i
  %arrayidx1505.i = getelementptr inbounds double* %colAT0.23612.i, i64 %add.ptr1440.sum3357.i
  %1257 = load double* %arrayidx1505.i, align 8, !tbaa !4
  %add.ptr1440.sum3358.i = add i64 %idxprom1498.i, %add.ptr1437.sum.i
  %arrayidx1507.i = getelementptr inbounds double* %colAT0.23612.i, i64 %add.ptr1440.sum3358.i
  %1258 = load double* %arrayidx1507.i, align 8, !tbaa !4
  %mul1508.i = fmul double %xr00.6.i, %1253
  %mul1509.i = fmul double %xi00.6.i, %1254
  %sub1510.i = fsub double %mul1508.i, %mul1509.i
  %mul1511.i = fmul double %xr10.4.i, %1255
  %add1512.i = fadd double %sub1510.i, %mul1511.i
  %mul1513.i = fmul double %xi10.4.i, %1256
  %sub1514.i = fsub double %add1512.i, %mul1513.i
  %mul1515.i = fmul double %xr20.2.i, %1257
  %add1516.i = fadd double %sub1514.i, %mul1515.i
  %mul1517.i = fmul double %xi20.2.i, %1258
  %sub1518.i = fsub double %add1516.i, %mul1517.i
  %arrayidx1520.i = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %idxprom1496.i
  %1259 = load double* %arrayidx1520.i, align 8, !tbaa !4
  %sub1521.i = fsub double %1259, %sub1518.i
  store double %sub1521.i, double* %arrayidx1520.i, align 8, !tbaa !4
  %mul1522.i = fmul double %xi00.6.i, %1253
  %mul1523.i = fmul double %xr00.6.i, %1254
  %add1524.i = fadd double %mul1522.i, %mul1523.i
  %mul1525.i = fmul double %xi10.4.i, %1255
  %add1526.i = fadd double %add1524.i, %mul1525.i
  %mul1527.i721 = fmul double %xr10.4.i, %1256
  %add1528.i = fadd double %add1526.i, %mul1527.i721
  %mul1529.i = fmul double %xi20.2.i, %1257
  %add1530.i = fadd double %add1528.i, %mul1529.i
  %mul1531.i = fmul double %xr20.2.i, %1258
  %add1532.i = fadd double %add1530.i, %mul1531.i
  %arrayidx1534.i = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %idxprom1498.i
  %1260 = load double* %arrayidx1534.i, align 8, !tbaa !4
  %sub1535.i = fsub double %1260, %add1532.i
  store double %sub1535.i, double* %arrayidx1534.i, align 8, !tbaa !4
  %indvars.iv.next3698.i = add i64 %indvars.iv3697.i, 1
  %lftr.wideiv1281 = trunc i64 %indvars.iv.next3698.i to i32
  %exitcond1282 = icmp eq i32 %lftr.wideiv1281, %.pre3725.i
  br i1 %exitcond1282, label %if.end1592.i, label %for.body1493.i

for.body1542.i:                                   ; preds = %for.body1542.i, %for.body1542.lr.ph.i
  %indvars.iv3695.i = phi i64 [ 0, %for.body1542.lr.ph.i ], [ %indvars.iv.next3696.i, %for.body1542.i ]
  %1261 = trunc i64 %indvars.iv3695.i to i32
  %mul1543.i = shl nsw i32 %1261, 1
  %add15443348.i = or i32 %mul1543.i, 1
  %idxprom1545.i = sext i32 %mul1543.i to i64
  %arrayidx1546.i = getelementptr inbounds double* %colAT0.23612.i, i64 %idxprom1545.i
  %1262 = load double* %arrayidx1546.i, align 8, !tbaa !4
  %idxprom1547.i = sext i32 %add15443348.i to i64
  %arrayidx1548.i = getelementptr inbounds double* %colAT0.23612.i, i64 %idxprom1547.i
  %1263 = load double* %arrayidx1548.i, align 8, !tbaa !4
  %add.ptr1437.sum3349.i = add i64 %idxprom1545.i, %idx.ext1436.i
  %arrayidx1550.i = getelementptr inbounds double* %colAT0.23612.i, i64 %add.ptr1437.sum3349.i
  %1264 = load double* %arrayidx1550.i, align 8, !tbaa !4
  %add.ptr1437.sum3350.i = add i64 %idxprom1547.i, %idx.ext1436.i
  %arrayidx1552.i = getelementptr inbounds double* %colAT0.23612.i, i64 %add.ptr1437.sum3350.i
  %1265 = load double* %arrayidx1552.i, align 8, !tbaa !4
  %add.ptr1440.sum3351.i = add i64 %idxprom1545.i, %add.ptr1437.sum.i
  %arrayidx1554.i = getelementptr inbounds double* %colAT0.23612.i, i64 %add.ptr1440.sum3351.i
  %1266 = load double* %arrayidx1554.i, align 8, !tbaa !4
  %add.ptr1440.sum3352.i = add i64 %idxprom1547.i, %add.ptr1437.sum.i
  %arrayidx1556.i = getelementptr inbounds double* %colAT0.23612.i, i64 %add.ptr1440.sum3352.i
  %1267 = load double* %arrayidx1556.i, align 8, !tbaa !4
  %arrayidx1558.i = getelementptr inbounds i32* %1251, i64 %indvars.iv3695.i
  %1268 = load i32* %arrayidx1558.i, align 4, !tbaa !3
  %mul1559.i = shl nsw i32 %1268, 1
  %add15603353.i = or i32 %mul1559.i, 1
  %mul1561.i722 = fmul double %xr00.6.i, %1262
  %mul1562.i = fmul double %xi00.6.i, %1263
  %sub1563.i = fsub double %mul1561.i722, %mul1562.i
  %mul1564.i723 = fmul double %xr10.4.i, %1264
  %add1565.i = fadd double %sub1563.i, %mul1564.i723
  %mul1566.i = fmul double %xi10.4.i, %1265
  %sub1567.i = fsub double %add1565.i, %mul1566.i
  %mul1568.i724 = fmul double %xr20.2.i, %1266
  %add1569.i = fadd double %sub1567.i, %mul1568.i724
  %mul1570.i = fmul double %xi20.2.i, %1267
  %sub1571.i = fsub double %add1569.i, %mul1570.i
  %idxprom1572.i = sext i32 %mul1559.i to i64
  %arrayidx1573.i = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %idxprom1572.i
  %1269 = load double* %arrayidx1573.i, align 8, !tbaa !4
  %sub1574.i725 = fsub double %1269, %sub1571.i
  store double %sub1574.i725, double* %arrayidx1573.i, align 8, !tbaa !4
  %mul1575.i = fmul double %xi00.6.i, %1262
  %mul1576.i726 = fmul double %xr00.6.i, %1263
  %add1577.i = fadd double %mul1575.i, %mul1576.i726
  %mul1578.i = fmul double %xi10.4.i, %1264
  %add1579.i727 = fadd double %add1577.i, %mul1578.i
  %mul1580.i = fmul double %xr10.4.i, %1265
  %add1581.i = fadd double %add1579.i727, %mul1580.i
  %mul1582.i = fmul double %xi20.2.i, %1266
  %add1583.i = fadd double %add1581.i, %mul1582.i
  %mul1584.i = fmul double %xr20.2.i, %1267
  %add1585.i = fadd double %add1583.i, %mul1584.i
  %idxprom1586.i = sext i32 %add15603353.i to i64
  %arrayidx1587.i = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %idxprom1586.i
  %1270 = load double* %arrayidx1587.i, align 8, !tbaa !4
  %sub1588.i = fsub double %1270, %add1585.i
  store double %sub1588.i, double* %arrayidx1587.i, align 8, !tbaa !4
  %indvars.iv.next3696.i = add i64 %indvars.iv3695.i, 1
  %lftr.wideiv1279 = trunc i64 %indvars.iv.next3696.i to i32
  %exitcond1280 = icmp eq i32 %lftr.wideiv1279, %.pre3725.i
  br i1 %exitcond1280, label %if.end1592.i, label %for.body1542.i

if.end1592.i:                                     ; preds = %for.body1493.i, %for.body1542.i, %for.cond1540.preheader.i, %for.cond1491.preheader.i
  %add.ptr1595.i = getelementptr inbounds double* %colAT0.23612.i, i64 %add.ptr1440.sum.i
  %indvars.iv.next3702.i = add i64 %indvars.iv3701.i, 3
  %add1597.i = add nsw i32 %icolAT.23616.i, 3
  %1271 = trunc i64 %indvars.iv.next3702.i to i32
  %cmp1433.i = icmp slt i32 %1271, %sub14323610.i
  br i1 %cmp1433.i, label %for.body1434.i, label %for.end1598.i

for.end1598.i:                                    ; preds = %if.end1592.i, %if.then1430.i
  %icolAT.2.lcssa.i728 = phi i32 [ 0, %if.then1430.i ], [ %add1597.i, %if.end1592.i ]
  %colAT0.2.lcssa.i729 = phi double* [ %1241, %if.then1430.i ], [ %add.ptr1595.i, %if.end1592.i ]
  %cmp1600.i = icmp eq i32 %icolAT.2.lcssa.i728, %sub14323610.i
  br i1 %cmp1600.i, label %if.then1601.i, label %if.else1733.i

if.then1601.i:                                    ; preds = %for.end1598.i
  %1272 = load i32* %nrowAT.i486, align 4, !tbaa !3
  %mul1602.i = shl nsw i32 %1272, 1
  %idx.ext1603.i = sext i32 %mul1602.i to i64
  %1273 = load i32* %nrowX.i487, align 4, !tbaa !3
  %cmp1605.i = icmp eq i32 %1242, %1273
  br i1 %cmp1605.i, label %if.then1606.i, label %if.else1625.i

if.then1606.i:                                    ; preds = %if.then1601.i
  %mul1607.i = shl nsw i32 %sub14323610.i, 1
  %add16083344.i = or i32 %mul1607.i, 1
  %add1613.i = add nsw i32 %mul1607.i, 2
  %add1614.i = add nsw i32 %add16083344.i, 2
  br label %if.end1652.i

if.else1625.i:                                    ; preds = %if.then1601.i
  %idxprom1626.i = sext i32 %sub14323610.i to i64
  %1274 = load i32** %colindAT.i489, align 8, !tbaa !0
  %arrayidx1627.i = getelementptr inbounds i32* %1274, i64 %idxprom1626.i
  %1275 = load i32* %arrayidx1627.i, align 4, !tbaa !3
  %mul1628.i = shl nsw i32 %1275, 1
  %add16293335.i = or i32 %mul1628.i, 1
  %add1634.i = add nsw i32 %1242, -1
  %idxprom1635.i = sext i32 %add1634.i to i64
  %arrayidx1636.i = getelementptr inbounds i32* %1274, i64 %idxprom1635.i
  %1276 = load i32* %arrayidx1636.i, align 4, !tbaa !3
  %mul1637.i = shl nsw i32 %1276, 1
  %add16383336.i = or i32 %mul1637.i, 1
  br label %if.end1652.i

if.end1652.i:                                     ; preds = %if.else1625.i, %if.then1606.i
  %idxprom1611.pn.in.i = phi i32 [ %add16083344.i, %if.then1606.i ], [ %add16293335.i, %if.else1625.i ]
  %idxprom1617.pn.in.i = phi i32 [ %add1614.i, %if.then1606.i ], [ %add16383336.i, %if.else1625.i ]
  %idxprom1609.pn.in.i = phi i32 [ %mul1607.i, %if.then1606.i ], [ %mul1628.i, %if.else1625.i ]
  %idxprom1615.pn.in.i = phi i32 [ %add1613.i, %if.then1606.i ], [ %mul1637.i, %if.else1625.i ]
  %idxprom1615.pn.i = sext i32 %idxprom1615.pn.in.i to i64
  %idxprom1609.pn.i = sext i32 %idxprom1609.pn.in.i to i64
  %idxprom1617.pn.i = sext i32 %idxprom1617.pn.in.i to i64
  %idxprom1611.pn.i = sext i32 %idxprom1611.pn.in.i to i64
  %xr10.5.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %idxprom1615.pn.i
  %xr00.7.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %idxprom1609.pn.i
  %xi10.5.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %idxprom1617.pn.i
  %xi00.7.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %idxprom1611.pn.i
  %xr10.5.i = load double* %xr10.5.in.i, align 8
  %xr00.7.i = load double* %xr00.7.in.i, align 8
  %xi10.5.i = load double* %xi10.5.in.i, align 8
  %xi00.7.i = load double* %xi00.7.in.i, align 8
  %1277 = load i32* %nrowY.i488, align 4, !tbaa !3
  %cmp1653.i = icmp eq i32 %1277, %1272
  %cmp16563593.i = icmp sgt i32 %1272, 0
  br i1 %cmp1653.i, label %for.cond1655.preheader.i, label %for.cond1692.preheader.i

for.cond1692.preheader.i:                         ; preds = %if.end1652.i
  br i1 %cmp16563593.i, label %for.body1694.lr.ph.i, label %sw.epilog33

for.body1694.lr.ph.i:                             ; preds = %for.cond1692.preheader.i
  %1278 = load i32** %rowindAT.i490, align 8, !tbaa !0
  br label %for.body1694.i

for.cond1655.preheader.i:                         ; preds = %if.end1652.i
  br i1 %cmp16563593.i, label %for.body1657.i, label %sw.epilog33

for.body1657.i:                                   ; preds = %for.cond1655.preheader.i, %for.body1657.i
  %indvars.iv3687.i = phi i64 [ %indvars.iv.next3688.i, %for.body1657.i ], [ 0, %for.cond1655.preheader.i ]
  %1279 = trunc i64 %indvars.iv3687.i to i32
  %mul1658.i = shl nsw i32 %1279, 1
  %add16593341.i = or i32 %mul1658.i, 1
  %idxprom1660.i730 = sext i32 %mul1658.i to i64
  %arrayidx1661.i731 = getelementptr inbounds double* %colAT0.2.lcssa.i729, i64 %idxprom1660.i730
  %1280 = load double* %arrayidx1661.i731, align 8, !tbaa !4
  %idxprom1662.i = sext i32 %add16593341.i to i64
  %arrayidx1663.i = getelementptr inbounds double* %colAT0.2.lcssa.i729, i64 %idxprom1662.i
  %1281 = load double* %arrayidx1663.i, align 8, !tbaa !4
  %add.ptr1604.sum3342.i = add i64 %idxprom1660.i730, %idx.ext1603.i
  %arrayidx1665.i732 = getelementptr inbounds double* %colAT0.2.lcssa.i729, i64 %add.ptr1604.sum3342.i
  %1282 = load double* %arrayidx1665.i732, align 8, !tbaa !4
  %add.ptr1604.sum3343.i = add i64 %idxprom1662.i, %idx.ext1603.i
  %arrayidx1667.i = getelementptr inbounds double* %colAT0.2.lcssa.i729, i64 %add.ptr1604.sum3343.i
  %1283 = load double* %arrayidx1667.i, align 8, !tbaa !4
  %mul1668.i = fmul double %xr00.7.i, %1280
  %mul1669.i = fmul double %xi00.7.i, %1281
  %sub1670.i733 = fsub double %mul1668.i, %mul1669.i
  %mul1671.i = fmul double %xr10.5.i, %1282
  %add1672.i = fadd double %sub1670.i733, %mul1671.i
  %mul1673.i = fmul double %xi10.5.i, %1283
  %sub1674.i = fsub double %add1672.i, %mul1673.i
  %arrayidx1676.i734 = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %idxprom1660.i730
  %1284 = load double* %arrayidx1676.i734, align 8, !tbaa !4
  %sub1677.i = fsub double %1284, %sub1674.i
  store double %sub1677.i, double* %arrayidx1676.i734, align 8, !tbaa !4
  %mul1678.i = fmul double %xi00.7.i, %1280
  %mul1679.i = fmul double %xr00.7.i, %1281
  %add1680.i = fadd double %mul1678.i, %mul1679.i
  %mul1681.i = fmul double %xi10.5.i, %1282
  %add1682.i = fadd double %add1680.i, %mul1681.i
  %mul1683.i = fmul double %xr10.5.i, %1283
  %add1684.i = fadd double %add1682.i, %mul1683.i
  %arrayidx1686.i = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %idxprom1662.i
  %1285 = load double* %arrayidx1686.i, align 8, !tbaa !4
  %sub1687.i = fsub double %1285, %add1684.i
  store double %sub1687.i, double* %arrayidx1686.i, align 8, !tbaa !4
  %indvars.iv.next3688.i = add i64 %indvars.iv3687.i, 1
  %lftr.wideiv1271 = trunc i64 %indvars.iv.next3688.i to i32
  %exitcond1272 = icmp eq i32 %lftr.wideiv1271, %1272
  br i1 %exitcond1272, label %sw.epilog33, label %for.body1657.i

for.body1694.i:                                   ; preds = %for.body1694.i, %for.body1694.lr.ph.i
  %indvars.iv3689.i = phi i64 [ 0, %for.body1694.lr.ph.i ], [ %indvars.iv.next3690.i, %for.body1694.i ]
  %1286 = trunc i64 %indvars.iv3689.i to i32
  %mul1695.i = shl nsw i32 %1286, 1
  %add16963338.i = or i32 %mul1695.i, 1
  %idxprom1697.i = sext i32 %mul1695.i to i64
  %arrayidx1698.i = getelementptr inbounds double* %colAT0.2.lcssa.i729, i64 %idxprom1697.i
  %1287 = load double* %arrayidx1698.i, align 8, !tbaa !4
  %idxprom1699.i = sext i32 %add16963338.i to i64
  %arrayidx1700.i = getelementptr inbounds double* %colAT0.2.lcssa.i729, i64 %idxprom1699.i
  %1288 = load double* %arrayidx1700.i, align 8, !tbaa !4
  %add.ptr1604.sum.i = add i64 %idxprom1697.i, %idx.ext1603.i
  %arrayidx1702.i = getelementptr inbounds double* %colAT0.2.lcssa.i729, i64 %add.ptr1604.sum.i
  %1289 = load double* %arrayidx1702.i, align 8, !tbaa !4
  %add.ptr1604.sum3339.i = add i64 %idxprom1699.i, %idx.ext1603.i
  %arrayidx1704.i = getelementptr inbounds double* %colAT0.2.lcssa.i729, i64 %add.ptr1604.sum3339.i
  %1290 = load double* %arrayidx1704.i, align 8, !tbaa !4
  %arrayidx1706.i = getelementptr inbounds i32* %1278, i64 %indvars.iv3689.i
  %1291 = load i32* %arrayidx1706.i, align 4, !tbaa !3
  %mul1707.i = shl nsw i32 %1291, 1
  %add17083340.i = or i32 %mul1707.i, 1
  %mul1709.i = fmul double %xr00.7.i, %1287
  %mul1710.i = fmul double %xi00.7.i, %1288
  %sub1711.i = fsub double %mul1709.i, %mul1710.i
  %mul1712.i = fmul double %xr10.5.i, %1289
  %add1713.i = fadd double %sub1711.i, %mul1712.i
  %mul1714.i = fmul double %xi10.5.i, %1290
  %sub1715.i = fsub double %add1713.i, %mul1714.i
  %idxprom1716.i = sext i32 %mul1707.i to i64
  %arrayidx1717.i = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %idxprom1716.i
  %1292 = load double* %arrayidx1717.i, align 8, !tbaa !4
  %sub1718.i = fsub double %1292, %sub1715.i
  store double %sub1718.i, double* %arrayidx1717.i, align 8, !tbaa !4
  %mul1719.i = fmul double %xi00.7.i, %1287
  %mul1720.i = fmul double %xr00.7.i, %1288
  %add1721.i = fadd double %mul1719.i, %mul1720.i
  %mul1722.i735 = fmul double %xi10.5.i, %1289
  %add1723.i = fadd double %add1721.i, %mul1722.i735
  %mul1724.i = fmul double %xr10.5.i, %1290
  %add1725.i = fadd double %add1723.i, %mul1724.i
  %idxprom1726.i = sext i32 %add17083340.i to i64
  %arrayidx1727.i = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %idxprom1726.i
  %1293 = load double* %arrayidx1727.i, align 8, !tbaa !4
  %sub1728.i = fsub double %1293, %add1725.i
  store double %sub1728.i, double* %arrayidx1727.i, align 8, !tbaa !4
  %indvars.iv.next3690.i = add i64 %indvars.iv3689.i, 1
  %lftr.wideiv1273 = trunc i64 %indvars.iv.next3690.i to i32
  %exitcond1274 = icmp eq i32 %lftr.wideiv1273, %1272
  br i1 %exitcond1274, label %sw.epilog33, label %for.body1694.i

if.else1733.i:                                    ; preds = %for.end1598.i
  %sub1734.i = add nsw i32 %1242, -1
  %cmp1735.i = icmp eq i32 %icolAT.2.lcssa.i728, %sub1734.i
  br i1 %cmp1735.i, label %if.then1736.i, label %sw.epilog33

if.then1736.i:                                    ; preds = %if.else1733.i
  %1294 = load i32* %nrowX.i487, align 4, !tbaa !3
  %cmp1737.i = icmp eq i32 %1242, %1294
  br i1 %cmp1737.i, label %if.end1784.i, label %if.else1757.i

if.else1757.i:                                    ; preds = %if.then1736.i
  %idxprom1758.i = sext i32 %icolAT.2.lcssa.i728 to i64
  %1295 = load i32** %colindAT.i489, align 8, !tbaa !0
  %arrayidx1759.i = getelementptr inbounds i32* %1295, i64 %idxprom1758.i
  %1296 = load i32* %arrayidx1759.i, align 4, !tbaa !3
  br label %if.end1784.i

if.end1784.i:                                     ; preds = %if.then1736.i, %if.else1757.i
  %icolAT.2.sink.i = phi i32 [ %1296, %if.else1757.i ], [ %icolAT.2.lcssa.i728, %if.then1736.i ]
  %mul1739.i = shl nsw i32 %icolAT.2.sink.i, 1
  %idxprom1743.pn.in.i = or i32 %mul1739.i, 1
  %idxprom1741.pn.i = sext i32 %mul1739.i to i64
  %idxprom1743.pn.i = sext i32 %idxprom1743.pn.in.i to i64
  %xr00.8.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %idxprom1741.pn.i
  %xi00.8.in.i = getelementptr inbounds double* %colX0.0.lcssa.i660, i64 %idxprom1743.pn.i
  %xr00.8.i = load double* %xr00.8.in.i, align 8
  %xi00.8.i = load double* %xi00.8.in.i, align 8
  %1297 = load i32* %nrowY.i488, align 4, !tbaa !3
  %1298 = load i32* %nrowAT.i486, align 4, !tbaa !3
  %cmp1785.i = icmp eq i32 %1297, %1298
  br i1 %cmp1785.i, label %for.cond1787.preheader.i, label %for.cond1812.preheader.i

for.cond1812.preheader.i:                         ; preds = %if.end1784.i
  %cmp18133602.i = icmp sgt i32 %1298, 0
  br i1 %cmp18133602.i, label %for.body1814.lr.ph.i, label %sw.epilog33

for.body1814.lr.ph.i:                             ; preds = %for.cond1812.preheader.i
  %1299 = load i32** %rowindAT.i490, align 8, !tbaa !0
  br label %for.body1814.i

for.cond1787.preheader.i:                         ; preds = %if.end1784.i
  %cmp17883599.i = icmp sgt i32 %1297, 0
  br i1 %cmp17883599.i, label %for.body1789.i, label %sw.epilog33

for.body1789.i:                                   ; preds = %for.cond1787.preheader.i, %for.body1789.i
  %indvars.iv3691.i = phi i64 [ %indvars.iv.next3692.i, %for.body1789.i ], [ 0, %for.cond1787.preheader.i ]
  %1300 = trunc i64 %indvars.iv3691.i to i32
  %mul1790.i736 = shl nsw i32 %1300, 1
  %add17913333.i = or i32 %mul1790.i736, 1
  %idxprom1792.i = sext i32 %mul1790.i736 to i64
  %arrayidx1793.i = getelementptr inbounds double* %colAT0.2.lcssa.i729, i64 %idxprom1792.i
  %1301 = load double* %arrayidx1793.i, align 8, !tbaa !4
  %idxprom1794.i = sext i32 %add17913333.i to i64
  %arrayidx1795.i = getelementptr inbounds double* %colAT0.2.lcssa.i729, i64 %idxprom1794.i
  %1302 = load double* %arrayidx1795.i, align 8, !tbaa !4
  %mul1796.i = fmul double %xr00.8.i, %1301
  %mul1797.i737 = fmul double %xi00.8.i, %1302
  %sub1798.i = fsub double %mul1796.i, %mul1797.i737
  %arrayidx1800.i = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %idxprom1792.i
  %1303 = load double* %arrayidx1800.i, align 8, !tbaa !4
  %sub1801.i = fsub double %1303, %sub1798.i
  store double %sub1801.i, double* %arrayidx1800.i, align 8, !tbaa !4
  %mul1802.i = fmul double %xi00.8.i, %1301
  %mul1803.i = fmul double %xr00.8.i, %1302
  %add1804.i = fadd double %mul1802.i, %mul1803.i
  %arrayidx1806.i = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %idxprom1794.i
  %1304 = load double* %arrayidx1806.i, align 8, !tbaa !4
  %sub1807.i = fsub double %1304, %add1804.i
  store double %sub1807.i, double* %arrayidx1806.i, align 8, !tbaa !4
  %indvars.iv.next3692.i = add i64 %indvars.iv3691.i, 1
  %lftr.wideiv1275 = trunc i64 %indvars.iv.next3692.i to i32
  %exitcond1276 = icmp eq i32 %lftr.wideiv1275, %1297
  br i1 %exitcond1276, label %sw.epilog33, label %for.body1789.i

for.body1814.i:                                   ; preds = %for.body1814.i, %for.body1814.lr.ph.i
  %indvars.iv3693.i = phi i64 [ 0, %for.body1814.lr.ph.i ], [ %indvars.iv.next3694.i, %for.body1814.i ]
  %1305 = trunc i64 %indvars.iv3693.i to i32
  %mul1815.i = shl nsw i32 %1305, 1
  %add18163331.i = or i32 %mul1815.i, 1
  %idxprom1817.i738 = sext i32 %mul1815.i to i64
  %arrayidx1818.i739 = getelementptr inbounds double* %colAT0.2.lcssa.i729, i64 %idxprom1817.i738
  %1306 = load double* %arrayidx1818.i739, align 8, !tbaa !4
  %idxprom1819.i = sext i32 %add18163331.i to i64
  %arrayidx1820.i = getelementptr inbounds double* %colAT0.2.lcssa.i729, i64 %idxprom1819.i
  %1307 = load double* %arrayidx1820.i, align 8, !tbaa !4
  %arrayidx1822.i = getelementptr inbounds i32* %1299, i64 %indvars.iv3693.i
  %1308 = load i32* %arrayidx1822.i, align 4, !tbaa !3
  %mul1823.i = shl nsw i32 %1308, 1
  %add18243332.i = or i32 %mul1823.i, 1
  %mul1825.i = fmul double %xr00.8.i, %1306
  %mul1826.i740 = fmul double %xi00.8.i, %1307
  %sub1827.i = fsub double %mul1825.i, %mul1826.i740
  %idxprom1828.i741 = sext i32 %mul1823.i to i64
  %arrayidx1829.i742 = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %idxprom1828.i741
  %1309 = load double* %arrayidx1829.i742, align 8, !tbaa !4
  %sub1830.i743 = fsub double %1309, %sub1827.i
  store double %sub1830.i743, double* %arrayidx1829.i742, align 8, !tbaa !4
  %mul1831.i = fmul double %xi00.8.i, %1306
  %mul1832.i = fmul double %xr00.8.i, %1307
  %add1833.i = fadd double %mul1831.i, %mul1832.i
  %idxprom1834.i = sext i32 %add18243332.i to i64
  %arrayidx1835.i = getelementptr inbounds double* %colY0.0.lcssa.i659, i64 %idxprom1834.i
  %1310 = load double* %arrayidx1835.i, align 8, !tbaa !4
  %sub1836.i = fsub double %1310, %add1833.i
  store double %sub1836.i, double* %arrayidx1835.i, align 8, !tbaa !4
  %indvars.iv.next3694.i = add i64 %indvars.iv3693.i, 1
  %lftr.wideiv1277 = trunc i64 %indvars.iv.next3694.i to i32
  %exitcond1278 = icmp eq i32 %lftr.wideiv1277, %1298
  br i1 %exitcond1278, label %sw.epilog33, label %for.body1814.i

sw.bb24:                                          ; preds = %sw.bb20
  %1311 = bitcast double** %entA.i744 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1311) #4
  %1312 = bitcast double** %entX.i745 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1312) #4
  %1313 = bitcast double** %entY.i746 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1313) #4
  %1314 = bitcast i32* %inc1.i747 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1314) #4
  %1315 = bitcast i32* %inc2.i748 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1315) #4
  %1316 = bitcast i32* %ncolAT.i749 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1316) #4
  %1317 = bitcast i32* %ncolX.i750 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1317) #4
  %1318 = bitcast i32* %ncolY.i751 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1318) #4
  %1319 = bitcast i32* %nentA.i752 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1319) #4
  %1320 = bitcast i32* %nrowAT.i753 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1320) #4
  %1321 = bitcast i32* %nrowX.i754 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1321) #4
  %1322 = bitcast i32* %nrowY.i755 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1322) #4
  %1323 = bitcast i32** %colindAT.i756 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1323) #4
  %1324 = bitcast i32** %indices.i757 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1324) #4
  %1325 = bitcast i32** %rowindAT.i758 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1325) #4
  %1326 = bitcast i32** %sizes.i759 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1326) #4
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxY, i32* %nrowY.i755, i32* %ncolY.i751, i32* %inc1.i747, i32* %inc2.i748, double** %entY.i746) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxX, i32* %nrowX.i754, i32* %ncolX.i750, i32* %inc1.i747, i32* %inc2.i748, double** %entX.i745) #5
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtxA, i32* %ncolAT.i749, i32* %nentA.i752, i32** %sizes.i759, i32** %indices.i757, double** %entA.i744) #5
  %nrow.i760 = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 4
  %1327 = load i32* %nrow.i760, align 4, !tbaa !3
  store i32 %1327, i32* %ncolAT.i749, align 4, !tbaa !3
  %1328 = load i32* %nrowX.i754, align 4, !tbaa !3
  %cmp.i761 = icmp eq i32 %1327, %1328
  br i1 %cmp.i761, label %if.else.i763, label %if.then.i762

if.then.i762:                                     ; preds = %sw.bb24
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtxA, i32* %ncolAT.i749, i32** %colindAT.i756) #5
  br label %if.end.i766

if.else.i763:                                     ; preds = %sw.bb24
  store i32* null, i32** %colindAT.i756, align 8, !tbaa !0
  br label %if.end.i766

if.end.i766:                                      ; preds = %if.else.i763, %if.then.i762
  %ncol.i764 = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 5
  %1329 = load i32* %ncol.i764, align 4, !tbaa !3
  store i32 %1329, i32* %nrowAT.i753, align 4, !tbaa !3
  %1330 = load i32* %nrowY.i755, align 4, !tbaa !3
  %cmp1.i765 = icmp eq i32 %1329, %1330
  br i1 %cmp1.i765, label %if.else3.i768, label %if.then2.i767

if.then2.i767:                                    ; preds = %if.end.i766
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtxA, i32* %nrowAT.i753, i32** %rowindAT.i758) #5
  br label %if.end4.i769

if.else3.i768:                                    ; preds = %if.end.i766
  store i32* null, i32** %rowindAT.i758, align 8, !tbaa !0
  br label %if.end4.i769

if.end4.i769:                                     ; preds = %if.else3.i768, %if.then2.i767
  %1331 = load double** %entX.i745, align 8, !tbaa !0
  %1332 = load double** %entY.i746, align 8, !tbaa !0
  %1333 = load i32* %ncolX.i750, align 4, !tbaa !3
  %sub679.i = add nsw i32 %1333, -2
  %cmp5680.i = icmp sgt i32 %sub679.i, 0
  br i1 %cmp5680.i, label %for.body.lr.ph.i778, label %for.end162.i

for.body.lr.ph.i778:                              ; preds = %if.end4.i769
  %1334 = load i32* %nrowX.i754, align 4, !tbaa !3
  %mul.i770 = shl nsw i32 %1334, 1
  %idx.ext.i771 = sext i32 %mul.i770 to i64
  %add.ptr.sum.i772 = shl nsw i64 %idx.ext.i771, 1
  %1335 = load i32* %nrowY.i755, align 4, !tbaa !3
  %mul9.i773 = shl nsw i32 %1335, 1
  %idx.ext10.i774 = sext i32 %mul9.i773 to i64
  %add.ptr11.sum.i775 = shl nsw i64 %idx.ext10.i774, 1
  %1336 = load i32* %ncolAT.i749, align 4, !tbaa !3
  %cmp16676.i = icmp sgt i32 %1336, 0
  %add.ptr8.sum.i776 = add i64 %add.ptr.sum.i772, %idx.ext.i771
  %add.ptr14.sum.i777 = add i64 %add.ptr11.sum.i775, %idx.ext10.i774
  %1337 = load i32** %sizes.i759, align 8, !tbaa !0
  %1338 = load i32* %nrowAT.i753, align 4, !tbaa !3
  %cmp39.i = icmp eq i32 %1338, %1335
  %1339 = load double** %entA.i744, align 8, !tbaa !0
  %1340 = load i32** %indices.i757, align 8, !tbaa !0
  %1341 = load i32** %rowindAT.i758, align 8, !tbaa !0
  %1342 = load i32** %colindAT.i756, align 8, !tbaa !0
  %cmp20.i781 = icmp eq i32 %1336, %1334
  br label %for.body.i779

for.body.i779:                                    ; preds = %for.end153.i, %for.body.lr.ph.i778
  %colX0.0684.i = phi double* [ %1331, %for.body.lr.ph.i778 ], [ %add.ptr156.i, %for.end153.i ]
  %colY0.0682.i = phi double* [ %1332, %for.body.lr.ph.i778 ], [ %add.ptr159.i, %for.end153.i ]
  %jcolX.0681.i = phi i32 [ 0, %for.body.lr.ph.i778 ], [ %add161.i829, %for.end153.i ]
  br i1 %cmp16676.i, label %for.body17.i, label %for.end153.i

for.body17.i:                                     ; preds = %for.body.i779, %for.inc151.i
  %indvars.iv710.i = phi i64 [ %indvars.iv.next711.i, %for.inc151.i ], [ 0, %for.body.i779 ]
  %kk.0677.i = phi i32 [ %kk.3.i828, %for.inc151.i ], [ 0, %for.body.i779 ]
  %arrayidx.i780 = getelementptr inbounds i32* %1337, i64 %indvars.iv710.i
  %1343 = load i32* %arrayidx.i780, align 4, !tbaa !3
  %cmp18.i = icmp sgt i32 %1343, 0
  br i1 %cmp18.i, label %if.then19.i, label %for.inc151.i

if.then19.i:                                      ; preds = %for.body17.i
  %1344 = trunc i64 %indvars.iv710.i to i32
  br i1 %cmp20.i781, label %if.end25.i, label %if.else22.i

if.else22.i:                                      ; preds = %if.then19.i
  %arrayidx24.i782 = getelementptr inbounds i32* %1342, i64 %indvars.iv710.i
  %1345 = load i32* %arrayidx24.i782, align 4, !tbaa !3
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else22.i, %if.then19.i
  %jrowX.0.i783 = phi i32 [ %1345, %if.else22.i ], [ %1344, %if.then19.i ]
  %mul26.i = shl nsw i32 %jrowX.0.i783, 1
  %add626.i = or i32 %mul26.i, 1
  %idxprom27.i = sext i32 %mul26.i to i64
  %arrayidx28.i784 = getelementptr inbounds double* %colX0.0684.i, i64 %idxprom27.i
  %1346 = load double* %arrayidx28.i784, align 8, !tbaa !4
  %idxprom29.i = sext i32 %add626.i to i64
  %arrayidx30.i785 = getelementptr inbounds double* %colX0.0684.i, i64 %idxprom29.i
  %1347 = load double* %arrayidx30.i785, align 8, !tbaa !4
  %add.ptr.sum627.i = add i64 %idxprom27.i, %idx.ext.i771
  %arrayidx32.i786 = getelementptr inbounds double* %colX0.0684.i, i64 %add.ptr.sum627.i
  %1348 = load double* %arrayidx32.i786, align 8, !tbaa !4
  %add.ptr.sum628.i = add i64 %idxprom29.i, %idx.ext.i771
  %arrayidx34.i787 = getelementptr inbounds double* %colX0.0684.i, i64 %add.ptr.sum628.i
  %1349 = load double* %arrayidx34.i787, align 8, !tbaa !4
  %add.ptr8.sum629.i = add i64 %idxprom27.i, %add.ptr.sum.i772
  %arrayidx36.i788 = getelementptr inbounds double* %colX0.0684.i, i64 %add.ptr8.sum629.i
  %1350 = load double* %arrayidx36.i788, align 8, !tbaa !4
  %add.ptr8.sum630.i = add i64 %idxprom29.i, %add.ptr.sum.i772
  %arrayidx38.i789 = getelementptr inbounds double* %colX0.0684.i, i64 %add.ptr8.sum630.i
  %1351 = load double* %arrayidx38.i789, align 8, !tbaa !4
  %1352 = sext i32 %kk.0677.i to i64
  br i1 %cmp39.i, label %for.body43.i, label %for.body95.i

for.body43.i:                                     ; preds = %if.end25.i, %for.body43.i
  %indvars.iv707.i = phi i64 [ %indvars.iv.next708.i, %for.body43.i ], [ %1352, %if.end25.i ]
  %ii.0674.i = phi i32 [ %inc.i807, %for.body43.i ], [ 0, %if.end25.i ]
  %1353 = trunc i64 %indvars.iv707.i to i32
  %mul44.i = shl nsw i32 %1353, 1
  %idxprom45.i790 = sext i32 %mul44.i to i64
  %arrayidx46.i791 = getelementptr inbounds double* %1339, i64 %idxprom45.i790
  %1354 = load double* %arrayidx46.i791, align 8, !tbaa !4
  %add48637.i = or i32 %mul44.i, 1
  %idxprom49.i = sext i32 %add48637.i to i64
  %arrayidx50.i792 = getelementptr inbounds double* %1339, i64 %idxprom49.i
  %1355 = load double* %arrayidx50.i792, align 8, !tbaa !4
  %arrayidx52.i793 = getelementptr inbounds i32* %1340, i64 %indvars.iv707.i
  %1356 = load i32* %arrayidx52.i793, align 4, !tbaa !3
  %mul53.i794 = shl nsw i32 %1356, 1
  %add54638.i = or i32 %mul53.i794, 1
  %mul55.i = fmul double %1346, %1354
  %mul56.i = fmul double %1347, %1355
  %sub57.i = fsub double %mul55.i, %mul56.i
  %idxprom58.i795 = sext i32 %mul53.i794 to i64
  %arrayidx59.i796 = getelementptr inbounds double* %colY0.0682.i, i64 %idxprom58.i795
  %1357 = load double* %arrayidx59.i796, align 8, !tbaa !4
  %sub60.i = fsub double %1357, %sub57.i
  store double %sub60.i, double* %arrayidx59.i796, align 8, !tbaa !4
  %mul61.i797 = fmul double %1347, %1354
  %mul62.i798 = fmul double %1346, %1355
  %add63.i = fadd double %mul61.i797, %mul62.i798
  %idxprom64.i = sext i32 %add54638.i to i64
  %arrayidx65.i = getelementptr inbounds double* %colY0.0682.i, i64 %idxprom64.i
  %1358 = load double* %arrayidx65.i, align 8, !tbaa !4
  %sub66.i = fsub double %1358, %add63.i
  store double %sub66.i, double* %arrayidx65.i, align 8, !tbaa !4
  %mul67.i = fmul double %1348, %1354
  %mul68.i799 = fmul double %1349, %1355
  %sub69.i = fsub double %mul67.i, %mul68.i799
  %add.ptr11.sum639.i = add i64 %idxprom58.i795, %idx.ext10.i774
  %arrayidx71.i = getelementptr inbounds double* %colY0.0682.i, i64 %add.ptr11.sum639.i
  %1359 = load double* %arrayidx71.i, align 8, !tbaa !4
  %sub72.i = fsub double %1359, %sub69.i
  store double %sub72.i, double* %arrayidx71.i, align 8, !tbaa !4
  %mul73.i800 = fmul double %1349, %1354
  %mul74.i801 = fmul double %1348, %1355
  %add75.i802 = fadd double %mul73.i800, %mul74.i801
  %add.ptr11.sum640.i = add i64 %idxprom64.i, %idx.ext10.i774
  %arrayidx77.i803 = getelementptr inbounds double* %colY0.0682.i, i64 %add.ptr11.sum640.i
  %1360 = load double* %arrayidx77.i803, align 8, !tbaa !4
  %sub78.i = fsub double %1360, %add75.i802
  store double %sub78.i, double* %arrayidx77.i803, align 8, !tbaa !4
  %mul79.i804 = fmul double %1350, %1354
  %mul80.i = fmul double %1351, %1355
  %sub81.i = fsub double %mul79.i804, %mul80.i
  %add.ptr14.sum641.i = add i64 %idxprom58.i795, %add.ptr11.sum.i775
  %arrayidx83.i = getelementptr inbounds double* %colY0.0682.i, i64 %add.ptr14.sum641.i
  %1361 = load double* %arrayidx83.i, align 8, !tbaa !4
  %sub84.i = fsub double %1361, %sub81.i
  store double %sub84.i, double* %arrayidx83.i, align 8, !tbaa !4
  %mul85.i805 = fmul double %1351, %1354
  %mul86.i806 = fmul double %1350, %1355
  %add87.i = fadd double %mul85.i805, %mul86.i806
  %add.ptr14.sum642.i = add i64 %idxprom64.i, %add.ptr11.sum.i775
  %arrayidx89.i = getelementptr inbounds double* %colY0.0682.i, i64 %add.ptr14.sum642.i
  %1362 = load double* %arrayidx89.i, align 8, !tbaa !4
  %sub90.i = fsub double %1362, %add87.i
  store double %sub90.i, double* %arrayidx89.i, align 8, !tbaa !4
  %inc.i807 = add nsw i32 %ii.0674.i, 1
  %indvars.iv.next708.i = add i64 %indvars.iv707.i, 1
  %exitcond709.i = icmp eq i32 %inc.i807, %1343
  br i1 %exitcond709.i, label %for.inc151.loopexit671.i, label %for.body43.i

for.body95.i:                                     ; preds = %if.end25.i, %for.body95.i
  %indvars.iv704.i = phi i64 [ %indvars.iv.next705.i, %for.body95.i ], [ %1352, %if.end25.i ]
  %ii.1669.i = phi i32 [ %inc146.i, %for.body95.i ], [ 0, %if.end25.i ]
  %1363 = trunc i64 %indvars.iv704.i to i32
  %mul96.i = shl nsw i32 %1363, 1
  %idxprom97.i = sext i32 %mul96.i to i64
  %arrayidx98.i808 = getelementptr inbounds double* %1339, i64 %idxprom97.i
  %1364 = load double* %arrayidx98.i808, align 8, !tbaa !4
  %add100631.i = or i32 %mul96.i, 1
  %idxprom101.i = sext i32 %add100631.i to i64
  %arrayidx102.i809 = getelementptr inbounds double* %1339, i64 %idxprom101.i
  %1365 = load double* %arrayidx102.i809, align 8, !tbaa !4
  %arrayidx104.i810 = getelementptr inbounds i32* %1340, i64 %indvars.iv704.i
  %1366 = load i32* %arrayidx104.i810, align 4, !tbaa !3
  %idxprom105.i = sext i32 %1366 to i64
  %arrayidx106.i = getelementptr inbounds i32* %1341, i64 %idxprom105.i
  %1367 = load i32* %arrayidx106.i, align 4, !tbaa !3
  %mul107.i = shl nsw i32 %1367, 1
  %add108632.i = or i32 %mul107.i, 1
  %mul109.i811 = fmul double %1346, %1364
  %mul110.i812 = fmul double %1347, %1365
  %sub111.i813 = fsub double %mul109.i811, %mul110.i812
  %idxprom112.i = sext i32 %mul107.i to i64
  %arrayidx113.i = getelementptr inbounds double* %colY0.0682.i, i64 %idxprom112.i
  %1368 = load double* %arrayidx113.i, align 8, !tbaa !4
  %sub114.i = fsub double %1368, %sub111.i813
  store double %sub114.i, double* %arrayidx113.i, align 8, !tbaa !4
  %mul115.i = fmul double %1347, %1364
  %mul116.i = fmul double %1346, %1365
  %add117.i = fadd double %mul115.i, %mul116.i
  %idxprom118.i = sext i32 %add108632.i to i64
  %arrayidx119.i814 = getelementptr inbounds double* %colY0.0682.i, i64 %idxprom118.i
  %1369 = load double* %arrayidx119.i814, align 8, !tbaa !4
  %sub120.i = fsub double %1369, %add117.i
  store double %sub120.i, double* %arrayidx119.i814, align 8, !tbaa !4
  %mul121.i815 = fmul double %1348, %1364
  %mul122.i816 = fmul double %1349, %1365
  %sub123.i817 = fsub double %mul121.i815, %mul122.i816
  %add.ptr11.sum633.i = add i64 %idxprom112.i, %idx.ext10.i774
  %arrayidx125.i = getelementptr inbounds double* %colY0.0682.i, i64 %add.ptr11.sum633.i
  %1370 = load double* %arrayidx125.i, align 8, !tbaa !4
  %sub126.i = fsub double %1370, %sub123.i817
  store double %sub126.i, double* %arrayidx125.i, align 8, !tbaa !4
  %mul127.i = fmul double %1349, %1364
  %mul128.i818 = fmul double %1348, %1365
  %add129.i819 = fadd double %mul127.i, %mul128.i818
  %add.ptr11.sum634.i = add i64 %idxprom118.i, %idx.ext10.i774
  %arrayidx131.i820 = getelementptr inbounds double* %colY0.0682.i, i64 %add.ptr11.sum634.i
  %1371 = load double* %arrayidx131.i820, align 8, !tbaa !4
  %sub132.i821 = fsub double %1371, %add129.i819
  store double %sub132.i821, double* %arrayidx131.i820, align 8, !tbaa !4
  %mul133.i822 = fmul double %1350, %1364
  %mul134.i823 = fmul double %1351, %1365
  %sub135.i = fsub double %mul133.i822, %mul134.i823
  %add.ptr14.sum635.i = add i64 %idxprom112.i, %add.ptr11.sum.i775
  %arrayidx137.i824 = getelementptr inbounds double* %colY0.0682.i, i64 %add.ptr14.sum635.i
  %1372 = load double* %arrayidx137.i824, align 8, !tbaa !4
  %sub138.i = fsub double %1372, %sub135.i
  store double %sub138.i, double* %arrayidx137.i824, align 8, !tbaa !4
  %mul139.i = fmul double %1351, %1364
  %mul140.i825 = fmul double %1350, %1365
  %add141.i826 = fadd double %mul139.i, %mul140.i825
  %add.ptr14.sum636.i = add i64 %idxprom118.i, %add.ptr11.sum.i775
  %arrayidx143.i827 = getelementptr inbounds double* %colY0.0682.i, i64 %add.ptr14.sum636.i
  %1373 = load double* %arrayidx143.i827, align 8, !tbaa !4
  %sub144.i = fsub double %1373, %add141.i826
  store double %sub144.i, double* %arrayidx143.i827, align 8, !tbaa !4
  %inc146.i = add nsw i32 %ii.1669.i, 1
  %indvars.iv.next705.i = add i64 %indvars.iv704.i, 1
  %exitcond706.i = icmp eq i32 %inc146.i, %1343
  br i1 %exitcond706.i, label %for.inc151.loopexit.i, label %for.body95.i

for.inc151.loopexit.i:                            ; preds = %for.body95.i
  %1374 = add i32 %1343, %kk.0677.i
  br label %for.inc151.i

for.inc151.loopexit671.i:                         ; preds = %for.body43.i
  %1375 = add i32 %1343, %kk.0677.i
  br label %for.inc151.i

for.inc151.i:                                     ; preds = %for.inc151.loopexit671.i, %for.inc151.loopexit.i, %for.body17.i
  %kk.3.i828 = phi i32 [ %kk.0677.i, %for.body17.i ], [ %1374, %for.inc151.loopexit.i ], [ %1375, %for.inc151.loopexit671.i ]
  %indvars.iv.next711.i = add i64 %indvars.iv710.i, 1
  %lftr.wideiv1300 = trunc i64 %indvars.iv.next711.i to i32
  %exitcond1301 = icmp eq i32 %lftr.wideiv1300, %1336
  br i1 %exitcond1301, label %for.end153.i, label %for.body17.i

for.end153.i:                                     ; preds = %for.inc151.i, %for.body.i779
  %add.ptr156.i = getelementptr inbounds double* %colX0.0684.i, i64 %add.ptr8.sum.i776
  %add.ptr159.i = getelementptr inbounds double* %colY0.0682.i, i64 %add.ptr14.sum.i777
  %add161.i829 = add nsw i32 %jcolX.0681.i, 3
  %cmp5.i830 = icmp slt i32 %add161.i829, %sub679.i
  br i1 %cmp5.i830, label %for.body.i779, label %for.end162.i

for.end162.i:                                     ; preds = %for.end153.i, %if.end4.i769
  %colX0.0.lcssa.i831 = phi double* [ %1331, %if.end4.i769 ], [ %add.ptr156.i, %for.end153.i ]
  %colY0.0.lcssa.i832 = phi double* [ %1332, %if.end4.i769 ], [ %add.ptr159.i, %for.end153.i ]
  %jcolX.0.lcssa.i833 = phi i32 [ 0, %if.end4.i769 ], [ %add161.i829, %for.end153.i ]
  %cmp164.i834 = icmp eq i32 %jcolX.0.lcssa.i833, %sub679.i
  br i1 %cmp164.i834, label %if.then165.i, label %if.else297.i881

if.then165.i:                                     ; preds = %for.end162.i
  %1376 = load i32* %nrowX.i754, align 4, !tbaa !3
  %mul174.i835 = shl nsw i32 %1376, 1
  %idx.ext175.i = sext i32 %mul174.i835 to i64
  %1377 = load i32* %nrowY.i755, align 4, !tbaa !3
  %mul177.i = shl nsw i32 %1377, 1
  %idx.ext178.i = sext i32 %mul177.i to i64
  %1378 = load i32* %ncolAT.i749, align 4, !tbaa !3
  %cmp181651.i = icmp sgt i32 %1378, 0
  br i1 %cmp181651.i, label %for.body182.lr.ph.i, label %sw.epilog33

for.body182.lr.ph.i:                              ; preds = %if.then165.i
  %1379 = load i32** %sizes.i759, align 8, !tbaa !0
  %1380 = load i32* %nrowAT.i753, align 4, !tbaa !3
  %cmp203.i = icmp eq i32 %1380, %1377
  %1381 = load double** %entA.i744, align 8, !tbaa !0
  %1382 = load i32** %indices.i757, align 8, !tbaa !0
  %1383 = load i32** %rowindAT.i758, align 8, !tbaa !0
  %1384 = load i32** %colindAT.i756, align 8, !tbaa !0
  %cmp187.i = icmp eq i32 %1378, %1376
  br label %for.body182.i837

for.body182.i837:                                 ; preds = %for.inc294.i, %for.body182.lr.ph.i
  %indvars.iv694.i = phi i64 [ 0, %for.body182.lr.ph.i ], [ %indvars.iv.next695.i, %for.inc294.i ]
  %kk.4652.i = phi i32 [ 0, %for.body182.lr.ph.i ], [ %kk.7.i877, %for.inc294.i ]
  %arrayidx184.i836 = getelementptr inbounds i32* %1379, i64 %indvars.iv694.i
  %1385 = load i32* %arrayidx184.i836, align 4, !tbaa !3
  %cmp185.i = icmp sgt i32 %1385, 0
  br i1 %cmp185.i, label %if.then186.i, label %for.inc294.i

if.then186.i:                                     ; preds = %for.body182.i837
  %1386 = trunc i64 %indvars.iv694.i to i32
  br i1 %cmp187.i, label %if.end192.i, label %if.else189.i

if.else189.i:                                     ; preds = %if.then186.i
  %arrayidx191.i838 = getelementptr inbounds i32* %1384, i64 %indvars.iv694.i
  %1387 = load i32* %arrayidx191.i838, align 4, !tbaa !3
  br label %if.end192.i

if.end192.i:                                      ; preds = %if.else189.i, %if.then186.i
  %jrowX.1.i839 = phi i32 [ %1387, %if.else189.i ], [ %1386, %if.then186.i ]
  %mul193.i840 = shl nsw i32 %jrowX.1.i839, 1
  %add194617.i = or i32 %mul193.i840, 1
  %idxprom195.i = sext i32 %mul193.i840 to i64
  %arrayidx196.i841 = getelementptr inbounds double* %colX0.0.lcssa.i831, i64 %idxprom195.i
  %1388 = load double* %arrayidx196.i841, align 8, !tbaa !4
  %idxprom197.i = sext i32 %add194617.i to i64
  %arrayidx198.i842 = getelementptr inbounds double* %colX0.0.lcssa.i831, i64 %idxprom197.i
  %1389 = load double* %arrayidx198.i842, align 8, !tbaa !4
  %add.ptr176.sum.i = add i64 %idxprom195.i, %idx.ext175.i
  %arrayidx200.i843 = getelementptr inbounds double* %colX0.0.lcssa.i831, i64 %add.ptr176.sum.i
  %1390 = load double* %arrayidx200.i843, align 8, !tbaa !4
  %add.ptr176.sum618.i = add i64 %idxprom197.i, %idx.ext175.i
  %arrayidx202.i844 = getelementptr inbounds double* %colX0.0.lcssa.i831, i64 %add.ptr176.sum618.i
  %1391 = load double* %arrayidx202.i844, align 8, !tbaa !4
  %1392 = sext i32 %kk.4652.i to i64
  br i1 %cmp203.i, label %for.body207.i, label %for.body250.i

for.body207.i:                                    ; preds = %if.end192.i, %for.body207.i
  %indvars.iv691.i = phi i64 [ %indvars.iv.next692.i, %for.body207.i ], [ %1392, %if.end192.i ]
  %ii.2649.i = phi i32 [ %inc244.i, %for.body207.i ], [ 0, %if.end192.i ]
  %1393 = trunc i64 %indvars.iv691.i to i32
  %mul208.i845 = shl nsw i32 %1393, 1
  %idxprom209.i = sext i32 %mul208.i845 to i64
  %arrayidx210.i846 = getelementptr inbounds double* %1381, i64 %idxprom209.i
  %1394 = load double* %arrayidx210.i846, align 8, !tbaa !4
  %add212622.i = or i32 %mul208.i845, 1
  %idxprom213.i = sext i32 %add212622.i to i64
  %arrayidx214.i847 = getelementptr inbounds double* %1381, i64 %idxprom213.i
  %1395 = load double* %arrayidx214.i847, align 8, !tbaa !4
  %arrayidx216.i848 = getelementptr inbounds i32* %1382, i64 %indvars.iv691.i
  %1396 = load i32* %arrayidx216.i848, align 4, !tbaa !3
  %mul217.i = shl nsw i32 %1396, 1
  %add218623.i = or i32 %mul217.i, 1
  %mul219.i849 = fmul double %1388, %1394
  %mul220.i850 = fmul double %1389, %1395
  %sub221.i = fsub double %mul219.i849, %mul220.i850
  %idxprom222.i = sext i32 %mul217.i to i64
  %arrayidx223.i851 = getelementptr inbounds double* %colY0.0.lcssa.i832, i64 %idxprom222.i
  %1397 = load double* %arrayidx223.i851, align 8, !tbaa !4
  %sub224.i = fsub double %1397, %sub221.i
  store double %sub224.i, double* %arrayidx223.i851, align 8, !tbaa !4
  %mul225.i852 = fmul double %1389, %1394
  %mul226.i = fmul double %1388, %1395
  %add227.i = fadd double %mul225.i852, %mul226.i
  %idxprom228.i = sext i32 %add218623.i to i64
  %arrayidx229.i853 = getelementptr inbounds double* %colY0.0.lcssa.i832, i64 %idxprom228.i
  %1398 = load double* %arrayidx229.i853, align 8, !tbaa !4
  %sub230.i854 = fsub double %1398, %add227.i
  store double %sub230.i854, double* %arrayidx229.i853, align 8, !tbaa !4
  %mul231.i855 = fmul double %1390, %1394
  %mul232.i856 = fmul double %1391, %1395
  %sub233.i = fsub double %mul231.i855, %mul232.i856
  %add.ptr179.sum624.i = add i64 %idxprom222.i, %idx.ext178.i
  %arrayidx235.i857 = getelementptr inbounds double* %colY0.0.lcssa.i832, i64 %add.ptr179.sum624.i
  %1399 = load double* %arrayidx235.i857, align 8, !tbaa !4
  %sub236.i858 = fsub double %1399, %sub233.i
  store double %sub236.i858, double* %arrayidx235.i857, align 8, !tbaa !4
  %mul237.i859 = fmul double %1391, %1394
  %mul238.i860 = fmul double %1390, %1395
  %add239.i861 = fadd double %mul237.i859, %mul238.i860
  %add.ptr179.sum625.i = add i64 %idxprom228.i, %idx.ext178.i
  %arrayidx241.i862 = getelementptr inbounds double* %colY0.0.lcssa.i832, i64 %add.ptr179.sum625.i
  %1400 = load double* %arrayidx241.i862, align 8, !tbaa !4
  %sub242.i863 = fsub double %1400, %add239.i861
  store double %sub242.i863, double* %arrayidx241.i862, align 8, !tbaa !4
  %inc244.i = add nsw i32 %ii.2649.i, 1
  %indvars.iv.next692.i = add i64 %indvars.iv691.i, 1
  %exitcond693.i = icmp eq i32 %inc244.i, %1385
  br i1 %exitcond693.i, label %for.inc294.loopexit646.i, label %for.body207.i

for.body250.i:                                    ; preds = %if.end192.i, %for.body250.i
  %indvars.iv.i864 = phi i64 [ %indvars.iv.next.i875, %for.body250.i ], [ %1392, %if.end192.i ]
  %ii.3645.i = phi i32 [ %inc289.i, %for.body250.i ], [ 0, %if.end192.i ]
  %1401 = trunc i64 %indvars.iv.i864 to i32
  %mul251.i = shl nsw i32 %1401, 1
  %idxprom252.i = sext i32 %mul251.i to i64
  %arrayidx253.i = getelementptr inbounds double* %1381, i64 %idxprom252.i
  %1402 = load double* %arrayidx253.i, align 8, !tbaa !4
  %add255619.i = or i32 %mul251.i, 1
  %idxprom256.i = sext i32 %add255619.i to i64
  %arrayidx257.i = getelementptr inbounds double* %1381, i64 %idxprom256.i
  %1403 = load double* %arrayidx257.i, align 8, !tbaa !4
  %arrayidx259.i865 = getelementptr inbounds i32* %1382, i64 %indvars.iv.i864
  %1404 = load i32* %arrayidx259.i865, align 4, !tbaa !3
  %idxprom260.i = sext i32 %1404 to i64
  %arrayidx261.i = getelementptr inbounds i32* %1383, i64 %idxprom260.i
  %1405 = load i32* %arrayidx261.i, align 4, !tbaa !3
  %mul262.i866 = shl nsw i32 %1405, 1
  %add263620.i = or i32 %mul262.i866, 1
  %mul264.i867 = fmul double %1388, %1402
  %mul265.i = fmul double %1389, %1403
  %sub266.i = fsub double %mul264.i867, %mul265.i
  %idxprom267.i = sext i32 %mul262.i866 to i64
  %arrayidx268.i = getelementptr inbounds double* %colY0.0.lcssa.i832, i64 %idxprom267.i
  %1406 = load double* %arrayidx268.i, align 8, !tbaa !4
  %sub269.i = fsub double %1406, %sub266.i
  store double %sub269.i, double* %arrayidx268.i, align 8, !tbaa !4
  %mul270.i = fmul double %1389, %1402
  %mul271.i868 = fmul double %1388, %1403
  %add272.i = fadd double %mul270.i, %mul271.i868
  %idxprom273.i = sext i32 %add263620.i to i64
  %arrayidx274.i = getelementptr inbounds double* %colY0.0.lcssa.i832, i64 %idxprom273.i
  %1407 = load double* %arrayidx274.i, align 8, !tbaa !4
  %sub275.i = fsub double %1407, %add272.i
  store double %sub275.i, double* %arrayidx274.i, align 8, !tbaa !4
  %mul276.i869 = fmul double %1390, %1402
  %mul277.i = fmul double %1391, %1403
  %sub278.i = fsub double %mul276.i869, %mul277.i
  %add.ptr179.sum.i = add i64 %idxprom267.i, %idx.ext178.i
  %arrayidx280.i870 = getelementptr inbounds double* %colY0.0.lcssa.i832, i64 %add.ptr179.sum.i
  %1408 = load double* %arrayidx280.i870, align 8, !tbaa !4
  %sub281.i871 = fsub double %1408, %sub278.i
  store double %sub281.i871, double* %arrayidx280.i870, align 8, !tbaa !4
  %mul282.i872 = fmul double %1391, %1402
  %mul283.i = fmul double %1390, %1403
  %add284.i = fadd double %mul282.i872, %mul283.i
  %add.ptr179.sum621.i = add i64 %idxprom273.i, %idx.ext178.i
  %arrayidx286.i873 = getelementptr inbounds double* %colY0.0.lcssa.i832, i64 %add.ptr179.sum621.i
  %1409 = load double* %arrayidx286.i873, align 8, !tbaa !4
  %sub287.i874 = fsub double %1409, %add284.i
  store double %sub287.i874, double* %arrayidx286.i873, align 8, !tbaa !4
  %inc289.i = add nsw i32 %ii.3645.i, 1
  %indvars.iv.next.i875 = add i64 %indvars.iv.i864, 1
  %exitcond.i876 = icmp eq i32 %inc289.i, %1385
  br i1 %exitcond.i876, label %for.inc294.loopexit.i, label %for.body250.i

for.inc294.loopexit.i:                            ; preds = %for.body250.i
  %1410 = add i32 %1385, %kk.4652.i
  br label %for.inc294.i

for.inc294.loopexit646.i:                         ; preds = %for.body207.i
  %1411 = add i32 %1385, %kk.4652.i
  br label %for.inc294.i

for.inc294.i:                                     ; preds = %for.inc294.loopexit646.i, %for.inc294.loopexit.i, %for.body182.i837
  %kk.7.i877 = phi i32 [ %kk.4652.i, %for.body182.i837 ], [ %1410, %for.inc294.loopexit.i ], [ %1411, %for.inc294.loopexit646.i ]
  %indvars.iv.next695.i = add i64 %indvars.iv694.i, 1
  %lftr.wideiv1296 = trunc i64 %indvars.iv.next695.i to i32
  %exitcond1297 = icmp eq i32 %lftr.wideiv1296, %1378
  br i1 %exitcond1297, label %sw.epilog33, label %for.body182.i837

if.else297.i881:                                  ; preds = %for.end162.i
  %sub298.i879 = add nsw i32 %1333, -1
  %cmp299.i880 = icmp eq i32 %jcolX.0.lcssa.i833, %sub298.i879
  br i1 %cmp299.i880, label %for.cond307.preheader.i882, label %sw.epilog33

for.cond307.preheader.i882:                       ; preds = %if.else297.i881
  %1412 = load i32* %ncolAT.i749, align 4, !tbaa !3
  %cmp308664.i = icmp sgt i32 %1412, 0
  br i1 %cmp308664.i, label %for.body309.lr.ph.i, label %sw.epilog33

for.body309.lr.ph.i:                              ; preds = %for.cond307.preheader.i882
  %1413 = load i32** %sizes.i759, align 8, !tbaa !0
  %1414 = load i32* %nrowX.i754, align 4, !tbaa !3
  %1415 = load i32* %nrowAT.i753, align 4, !tbaa !3
  %1416 = load i32* %nrowY.i755, align 4, !tbaa !3
  %cmp326.i = icmp eq i32 %1415, %1416
  %1417 = load double** %entA.i744, align 8, !tbaa !0
  %1418 = load i32** %indices.i757, align 8, !tbaa !0
  %1419 = load i32** %rowindAT.i758, align 8, !tbaa !0
  %1420 = load i32** %colindAT.i756, align 8, !tbaa !0
  %cmp314.i = icmp eq i32 %1412, %1414
  br label %for.body309.i884

for.body309.i884:                                 ; preds = %for.inc393.i, %for.body309.lr.ph.i
  %indvars.iv702.i = phi i64 [ 0, %for.body309.lr.ph.i ], [ %indvars.iv.next703.i, %for.inc393.i ]
  %kk.8665.i = phi i32 [ 0, %for.body309.lr.ph.i ], [ %kk.11.i900, %for.inc393.i ]
  %arrayidx311.i883 = getelementptr inbounds i32* %1413, i64 %indvars.iv702.i
  %1421 = load i32* %arrayidx311.i883, align 4, !tbaa !3
  %cmp312.i = icmp sgt i32 %1421, 0
  br i1 %cmp312.i, label %if.then313.i, label %for.inc393.i

if.then313.i:                                     ; preds = %for.body309.i884
  %1422 = trunc i64 %indvars.iv702.i to i32
  br i1 %cmp314.i, label %if.end319.i, label %if.else316.i

if.else316.i:                                     ; preds = %if.then313.i
  %arrayidx318.i885 = getelementptr inbounds i32* %1420, i64 %indvars.iv702.i
  %1423 = load i32* %arrayidx318.i885, align 4, !tbaa !3
  br label %if.end319.i

if.end319.i:                                      ; preds = %if.else316.i, %if.then313.i
  %jrowX.2.i886 = phi i32 [ %1423, %if.else316.i ], [ %1422, %if.then313.i ]
  %mul320.i887 = shl nsw i32 %jrowX.2.i886, 1
  %add321612.i = or i32 %mul320.i887, 1
  %idxprom322.i = sext i32 %mul320.i887 to i64
  %arrayidx323.i = getelementptr inbounds double* %colX0.0.lcssa.i831, i64 %idxprom322.i
  %1424 = load double* %arrayidx323.i, align 8, !tbaa !4
  %idxprom324.i = sext i32 %add321612.i to i64
  %arrayidx325.i888 = getelementptr inbounds double* %colX0.0.lcssa.i831, i64 %idxprom324.i
  %1425 = load double* %arrayidx325.i888, align 8, !tbaa !4
  %1426 = sext i32 %kk.8665.i to i64
  br i1 %cmp326.i, label %for.body330.i895, label %for.body361.i

for.body330.i895:                                 ; preds = %if.end319.i, %for.body330.i895
  %indvars.iv699.i = phi i64 [ %indvars.iv.next700.i, %for.body330.i895 ], [ %1426, %if.end319.i ]
  %ii.4661.i = phi i32 [ %inc355.i, %for.body330.i895 ], [ 0, %if.end319.i ]
  %1427 = trunc i64 %indvars.iv699.i to i32
  %mul331.i889 = shl nsw i32 %1427, 1
  %idxprom332.i = sext i32 %mul331.i889 to i64
  %arrayidx333.i = getelementptr inbounds double* %1417, i64 %idxprom332.i
  %1428 = load double* %arrayidx333.i, align 8, !tbaa !4
  %add335615.i = or i32 %mul331.i889, 1
  %idxprom336.i = sext i32 %add335615.i to i64
  %arrayidx337.i = getelementptr inbounds double* %1417, i64 %idxprom336.i
  %1429 = load double* %arrayidx337.i, align 8, !tbaa !4
  %arrayidx339.i = getelementptr inbounds i32* %1418, i64 %indvars.iv699.i
  %1430 = load i32* %arrayidx339.i, align 4, !tbaa !3
  %mul340.i890 = shl nsw i32 %1430, 1
  %add341616.i = or i32 %mul340.i890, 1
  %mul342.i = fmul double %1424, %1428
  %mul343.i891 = fmul double %1425, %1429
  %sub344.i = fsub double %mul342.i, %mul343.i891
  %idxprom345.i = sext i32 %mul340.i890 to i64
  %arrayidx346.i = getelementptr inbounds double* %colY0.0.lcssa.i832, i64 %idxprom345.i
  %1431 = load double* %arrayidx346.i, align 8, !tbaa !4
  %sub347.i = fsub double %1431, %sub344.i
  store double %sub347.i, double* %arrayidx346.i, align 8, !tbaa !4
  %mul348.i = fmul double %1425, %1428
  %mul349.i = fmul double %1424, %1429
  %add350.i = fadd double %mul348.i, %mul349.i
  %idxprom351.i892 = sext i32 %add341616.i to i64
  %arrayidx352.i893 = getelementptr inbounds double* %colY0.0.lcssa.i832, i64 %idxprom351.i892
  %1432 = load double* %arrayidx352.i893, align 8, !tbaa !4
  %sub353.i894 = fsub double %1432, %add350.i
  store double %sub353.i894, double* %arrayidx352.i893, align 8, !tbaa !4
  %inc355.i = add nsw i32 %ii.4661.i, 1
  %indvars.iv.next700.i = add i64 %indvars.iv699.i, 1
  %exitcond701.i = icmp eq i32 %inc355.i, %1421
  br i1 %exitcond701.i, label %for.inc393.loopexit658.i, label %for.body330.i895

for.body361.i:                                    ; preds = %if.end319.i, %for.body361.i
  %indvars.iv696.i = phi i64 [ %indvars.iv.next697.i, %for.body361.i ], [ %1426, %if.end319.i ]
  %ii.5656.i = phi i32 [ %inc388.i, %for.body361.i ], [ 0, %if.end319.i ]
  %1433 = trunc i64 %indvars.iv696.i to i32
  %mul362.i = shl nsw i32 %1433, 1
  %idxprom363.i896 = sext i32 %mul362.i to i64
  %arrayidx364.i897 = getelementptr inbounds double* %1417, i64 %idxprom363.i896
  %1434 = load double* %arrayidx364.i897, align 8, !tbaa !4
  %add366613.i = or i32 %mul362.i, 1
  %idxprom367.i = sext i32 %add366613.i to i64
  %arrayidx368.i = getelementptr inbounds double* %1417, i64 %idxprom367.i
  %1435 = load double* %arrayidx368.i, align 8, !tbaa !4
  %arrayidx370.i = getelementptr inbounds i32* %1418, i64 %indvars.iv696.i
  %1436 = load i32* %arrayidx370.i, align 4, !tbaa !3
  %idxprom371.i = sext i32 %1436 to i64
  %arrayidx372.i898 = getelementptr inbounds i32* %1419, i64 %idxprom371.i
  %1437 = load i32* %arrayidx372.i898, align 4, !tbaa !3
  %mul373.i = shl nsw i32 %1437, 1
  %add374614.i = or i32 %mul373.i, 1
  %mul375.i = fmul double %1424, %1434
  %mul376.i = fmul double %1425, %1435
  %sub377.i = fsub double %mul375.i, %mul376.i
  %idxprom378.i = sext i32 %mul373.i to i64
  %arrayidx379.i899 = getelementptr inbounds double* %colY0.0.lcssa.i832, i64 %idxprom378.i
  %1438 = load double* %arrayidx379.i899, align 8, !tbaa !4
  %sub380.i = fsub double %1438, %sub377.i
  store double %sub380.i, double* %arrayidx379.i899, align 8, !tbaa !4
  %mul381.i = fmul double %1425, %1434
  %mul382.i = fmul double %1424, %1435
  %add383.i = fadd double %mul381.i, %mul382.i
  %idxprom384.i = sext i32 %add374614.i to i64
  %arrayidx385.i = getelementptr inbounds double* %colY0.0.lcssa.i832, i64 %idxprom384.i
  %1439 = load double* %arrayidx385.i, align 8, !tbaa !4
  %sub386.i = fsub double %1439, %add383.i
  store double %sub386.i, double* %arrayidx385.i, align 8, !tbaa !4
  %inc388.i = add nsw i32 %ii.5656.i, 1
  %indvars.iv.next697.i = add i64 %indvars.iv696.i, 1
  %exitcond698.i = icmp eq i32 %inc388.i, %1421
  br i1 %exitcond698.i, label %for.inc393.loopexit.i, label %for.body361.i

for.inc393.loopexit.i:                            ; preds = %for.body361.i
  %1440 = add i32 %1421, %kk.8665.i
  br label %for.inc393.i

for.inc393.loopexit658.i:                         ; preds = %for.body330.i895
  %1441 = add i32 %1421, %kk.8665.i
  br label %for.inc393.i

for.inc393.i:                                     ; preds = %for.inc393.loopexit658.i, %for.inc393.loopexit.i, %for.body309.i884
  %kk.11.i900 = phi i32 [ %kk.8665.i, %for.body309.i884 ], [ %1440, %for.inc393.loopexit.i ], [ %1441, %for.inc393.loopexit658.i ]
  %indvars.iv.next703.i = add i64 %indvars.iv702.i, 1
  %lftr.wideiv1298 = trunc i64 %indvars.iv.next703.i to i32
  %exitcond1299 = icmp eq i32 %lftr.wideiv1298, %1412
  br i1 %exitcond1299, label %sw.epilog33, label %for.body309.i884

sw.bb25:                                          ; preds = %sw.bb20
  %1442 = bitcast double** %entA.i901 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1442) #4
  %1443 = bitcast double** %entX.i902 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1443) #4
  %1444 = bitcast double** %entY.i903 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1444) #4
  %1445 = bitcast i32* %inc1.i904 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1445) #4
  %1446 = bitcast i32* %inc2.i905 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1446) #4
  %1447 = bitcast i32* %ncolAT.i906 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1447) #4
  %1448 = bitcast i32* %ncolX.i907 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1448) #4
  %1449 = bitcast i32* %ncolY.i908 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1449) #4
  %1450 = bitcast i32* %nentA.i909 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1450) #4
  %1451 = bitcast i32* %nrowAT.i910 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1451) #4
  %1452 = bitcast i32* %nrowX.i911 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1452) #4
  %1453 = bitcast i32* %nrowY.i912 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1453) #4
  %1454 = bitcast i32** %colindAT.i913 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1454) #4
  %1455 = bitcast i32** %indices.i914 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1455) #4
  %1456 = bitcast i32** %rowindAT.i915 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1456) #4
  %1457 = bitcast i32** %sizes.i916 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1457) #4
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxY, i32* %nrowY.i912, i32* %ncolY.i908, i32* %inc1.i904, i32* %inc2.i905, double** %entY.i903) #5
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtxX, i32* %nrowX.i911, i32* %ncolX.i907, i32* %inc1.i904, i32* %inc2.i905, double** %entX.i902) #5
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtxA, i32* %nrowAT.i910, i32* %nentA.i909, i32** %sizes.i916, i32** %indices.i914, double** %entA.i901) #5
  %nrow.i917 = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 4
  %1458 = load i32* %nrow.i917, align 4, !tbaa !3
  store i32 %1458, i32* %ncolAT.i906, align 4, !tbaa !3
  %1459 = load i32* %nrowX.i911, align 4, !tbaa !3
  %cmp.i918 = icmp eq i32 %1458, %1459
  br i1 %cmp.i918, label %if.else.i920, label %if.then.i919

if.then.i919:                                     ; preds = %sw.bb25
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtxA, i32* %ncolAT.i906, i32** %colindAT.i913) #5
  br label %if.end.i923

if.else.i920:                                     ; preds = %sw.bb25
  store i32* null, i32** %colindAT.i913, align 8, !tbaa !0
  br label %if.end.i923

if.end.i923:                                      ; preds = %if.else.i920, %if.then.i919
  %ncol.i921 = getelementptr inbounds %struct._SubMtx* %mtxA, i64 0, i32 5
  %1460 = load i32* %ncol.i921, align 4, !tbaa !3
  store i32 %1460, i32* %nrowAT.i910, align 4, !tbaa !3
  %1461 = load i32* %nrowY.i912, align 4, !tbaa !3
  %cmp1.i922 = icmp eq i32 %1460, %1461
  br i1 %cmp1.i922, label %if.else3.i925, label %if.then2.i924

if.then2.i924:                                    ; preds = %if.end.i923
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtxA, i32* %nrowAT.i910, i32** %rowindAT.i915) #5
  br label %if.end4.i926

if.else3.i925:                                    ; preds = %if.end.i923
  store i32* null, i32** %rowindAT.i915, align 8, !tbaa !0
  br label %if.end4.i926

if.end4.i926:                                     ; preds = %if.else3.i925, %if.then2.i924
  %1462 = load double** %entX.i902, align 8, !tbaa !0
  %1463 = load double** %entY.i903, align 8, !tbaa !0
  %1464 = load i32* %ncolX.i907, align 4, !tbaa !3
  %sub860.i = add nsw i32 %1464, -2
  %cmp5861.i = icmp sgt i32 %sub860.i, 0
  br i1 %cmp5861.i, label %for.body.lr.ph.i936, label %for.end188.i

for.body.lr.ph.i936:                              ; preds = %if.end4.i926
  %1465 = load i32* %nrowX.i911, align 4, !tbaa !3
  %mul.i927 = shl nsw i32 %1465, 1
  %idx.ext.i928 = sext i32 %mul.i927 to i64
  %add.ptr.sum.i929 = shl nsw i64 %idx.ext.i928, 1
  %1466 = load i32* %nrowY.i912, align 4, !tbaa !3
  %mul9.i930 = shl nsw i32 %1466, 1
  %idx.ext10.i931 = sext i32 %mul9.i930 to i64
  %add.ptr11.sum.i932 = shl nsw i64 %idx.ext10.i931, 1
  %1467 = load i32* %nrowAT.i910, align 4, !tbaa !3
  %cmp16856.i = icmp sgt i32 %1467, 0
  %add.ptr8.sum.i933 = add i64 %add.ptr.sum.i929, %idx.ext.i928
  %add.ptr14.sum.i934 = add i64 %add.ptr11.sum.i932, %idx.ext10.i931
  %1468 = load i32** %sizes.i916, align 8, !tbaa !0
  %1469 = load i32* %ncolAT.i906, align 4, !tbaa !3
  %cmp20.i935 = icmp eq i32 %1469, %1465
  %cmp130.i = icmp eq i32 %1467, %1466
  %1470 = load i32** %rowindAT.i915, align 8, !tbaa !0
  %1471 = load double** %entA.i901, align 8, !tbaa !0
  %1472 = load i32** %indices.i914, align 8, !tbaa !0
  %1473 = load i32** %colindAT.i913, align 8, !tbaa !0
  br label %for.body.i937

for.body.i937:                                    ; preds = %for.end179.i, %for.body.lr.ph.i936
  %jcolX.0866.i = phi i32 [ 0, %for.body.lr.ph.i936 ], [ %add187.i1012, %for.end179.i ]
  %colX0.0864.i = phi double* [ %1462, %for.body.lr.ph.i936 ], [ %add.ptr182.i, %for.end179.i ]
  %colY0.0862.i = phi double* [ %1463, %for.body.lr.ph.i936 ], [ %add.ptr185.i, %for.end179.i ]
  br i1 %cmp16856.i, label %for.body17.i940, label %for.end179.i

for.body17.i940:                                  ; preds = %for.body.i937, %for.inc177.i
  %indvars.iv891.i = phi i64 [ %indvars.iv.next892.i, %for.inc177.i ], [ 0, %for.body.i937 ]
  %kk.0859.i = phi i32 [ %kk.4.i1010, %for.inc177.i ], [ 0, %for.body.i937 ]
  %arrayidx.i938 = getelementptr inbounds i32* %1468, i64 %indvars.iv891.i
  %1474 = load i32* %arrayidx.i938, align 4, !tbaa !3
  %cmp18.i939 = icmp sgt i32 %1474, 0
  br i1 %cmp18.i939, label %if.then19.i941, label %for.inc177.i

if.then19.i941:                                   ; preds = %for.body17.i940
  %1475 = sext i32 %kk.0859.i to i64
  br i1 %cmp20.i935, label %for.body24.i969, label %for.body75.i998

for.body24.i969:                                  ; preds = %if.then19.i941, %for.body24.i969
  %indvars.iv888.i = phi i64 [ %indvars.iv.next889.i, %for.body24.i969 ], [ %1475, %if.then19.i941 ]
  %rsum2.0848.i = phi double [ %add66.i, %for.body24.i969 ], [ 0.000000e+00, %if.then19.i941 ]
  %rsum1.0847.i = phi double [ %add58.i962, %for.body24.i969 ], [ 0.000000e+00, %if.then19.i941 ]
  %rsum0.0846.i = phi double [ %add50.i956, %for.body24.i969 ], [ 0.000000e+00, %if.then19.i941 ]
  %isum2.0845.i = phi double [ %add70.i967, %for.body24.i969 ], [ 0.000000e+00, %if.then19.i941 ]
  %isum1.0844.i = phi double [ %add62.i, %for.body24.i969 ], [ 0.000000e+00, %if.then19.i941 ]
  %isum0.0843.i = phi double [ %add54.i958, %for.body24.i969 ], [ 0.000000e+00, %if.then19.i941 ]
  %ii.0841.i = phi i32 [ %inc.i968, %for.body24.i969 ], [ 0, %if.then19.i941 ]
  %1476 = trunc i64 %indvars.iv888.i to i32
  %mul25.i = shl nsw i32 %1476, 1
  %idxprom26.i942 = sext i32 %mul25.i to i64
  %arrayidx27.i943 = getelementptr inbounds double* %1471, i64 %idxprom26.i942
  %1477 = load double* %arrayidx27.i943, align 8, !tbaa !4
  %add767.i944 = or i32 %mul25.i, 1
  %idxprom29.i945 = sext i32 %add767.i944 to i64
  %arrayidx30.i946 = getelementptr inbounds double* %1471, i64 %idxprom29.i945
  %1478 = load double* %arrayidx30.i946, align 8, !tbaa !4
  %arrayidx32.i947 = getelementptr inbounds i32* %1472, i64 %indvars.iv888.i
  %1479 = load i32* %arrayidx32.i947, align 4, !tbaa !3
  %mul33.i = shl nsw i32 %1479, 1
  %add34768.i = or i32 %mul33.i, 1
  %idxprom35.i948 = sext i32 %mul33.i to i64
  %arrayidx36.i949 = getelementptr inbounds double* %colX0.0864.i, i64 %idxprom35.i948
  %1480 = load double* %arrayidx36.i949, align 8, !tbaa !4
  %idxprom37.i = sext i32 %add34768.i to i64
  %arrayidx38.i950 = getelementptr inbounds double* %colX0.0864.i, i64 %idxprom37.i
  %1481 = load double* %arrayidx38.i950, align 8, !tbaa !4
  %add.ptr.sum769.i = add i64 %idxprom35.i948, %idx.ext.i928
  %arrayidx40.i951 = getelementptr inbounds double* %colX0.0864.i, i64 %add.ptr.sum769.i
  %1482 = load double* %arrayidx40.i951, align 8, !tbaa !4
  %add.ptr.sum770.i = add i64 %idxprom37.i, %idx.ext.i928
  %arrayidx42.i952 = getelementptr inbounds double* %colX0.0864.i, i64 %add.ptr.sum770.i
  %1483 = load double* %arrayidx42.i952, align 8, !tbaa !4
  %add.ptr8.sum771.i = add i64 %idxprom35.i948, %add.ptr.sum.i929
  %arrayidx44.i953 = getelementptr inbounds double* %colX0.0864.i, i64 %add.ptr8.sum771.i
  %1484 = load double* %arrayidx44.i953, align 8, !tbaa !4
  %add.ptr8.sum772.i = add i64 %idxprom37.i, %add.ptr.sum.i929
  %arrayidx46.i954 = getelementptr inbounds double* %colX0.0864.i, i64 %add.ptr8.sum772.i
  %1485 = load double* %arrayidx46.i954, align 8, !tbaa !4
  %mul47.i955 = fmul double %1477, %1480
  %mul48.i = fmul double %1478, %1481
  %sub49.i = fsub double %mul47.i955, %mul48.i
  %add50.i956 = fadd double %rsum0.0846.i, %sub49.i
  %mul51.i = fmul double %1477, %1481
  %mul52.i = fmul double %1478, %1480
  %add53.i957 = fadd double %mul52.i, %mul51.i
  %add54.i958 = fadd double %isum0.0843.i, %add53.i957
  %mul55.i959 = fmul double %1477, %1482
  %mul56.i960 = fmul double %1478, %1483
  %sub57.i961 = fsub double %mul55.i959, %mul56.i960
  %add58.i962 = fadd double %rsum1.0847.i, %sub57.i961
  %mul59.i = fmul double %1477, %1483
  %mul60.i963 = fmul double %1478, %1482
  %add61.i = fadd double %mul60.i963, %mul59.i
  %add62.i = fadd double %isum1.0844.i, %add61.i
  %mul63.i = fmul double %1477, %1484
  %mul64.i964 = fmul double %1478, %1485
  %sub65.i = fsub double %mul63.i, %mul64.i964
  %add66.i = fadd double %rsum2.0848.i, %sub65.i
  %mul67.i965 = fmul double %1477, %1485
  %mul68.i966 = fmul double %1478, %1484
  %add69.i = fadd double %mul68.i966, %mul67.i965
  %add70.i967 = fadd double %isum2.0845.i, %add69.i
  %inc.i968 = add nsw i32 %ii.0841.i, 1
  %indvars.iv.next889.i = add i64 %indvars.iv888.i, 1
  %exitcond890.i = icmp eq i32 %inc.i968, %1474
  br i1 %exitcond890.i, label %if.end129.i, label %for.body24.i969

for.body75.i998:                                  ; preds = %if.then19.i941, %for.body75.i998
  %indvars.iv885.i = phi i64 [ %indvars.iv.next886.i, %for.body75.i998 ], [ %1475, %if.then19.i941 ]
  %rsum2.1831.i = phi double [ %add120.i993, %for.body75.i998 ], [ 0.000000e+00, %if.then19.i941 ]
  %rsum1.1830.i = phi double [ %add112.i985, %for.body75.i998 ], [ 0.000000e+00, %if.then19.i941 ]
  %rsum0.1829.i = phi double [ %add104.i977, %for.body75.i998 ], [ 0.000000e+00, %if.then19.i941 ]
  %isum2.1828.i = phi double [ %add124.i997, %for.body75.i998 ], [ 0.000000e+00, %if.then19.i941 ]
  %isum1.1827.i = phi double [ %add116.i989, %for.body75.i998 ], [ 0.000000e+00, %if.then19.i941 ]
  %isum0.1826.i = phi double [ %add108.i981, %for.body75.i998 ], [ 0.000000e+00, %if.then19.i941 ]
  %ii.1824.i = phi i32 [ %inc126.i, %for.body75.i998 ], [ 0, %if.then19.i941 ]
  %1486 = trunc i64 %indvars.iv885.i to i32
  %mul76.i = shl nsw i32 %1486, 1
  %idxprom77.i = sext i32 %mul76.i to i64
  %arrayidx78.i = getelementptr inbounds double* %1471, i64 %idxprom77.i
  %1487 = load double* %arrayidx78.i, align 8, !tbaa !4
  %add80761.i = or i32 %mul76.i, 1
  %idxprom81.i = sext i32 %add80761.i to i64
  %arrayidx82.i970 = getelementptr inbounds double* %1471, i64 %idxprom81.i
  %1488 = load double* %arrayidx82.i970, align 8, !tbaa !4
  %arrayidx84.i = getelementptr inbounds i32* %1472, i64 %indvars.iv885.i
  %1489 = load i32* %arrayidx84.i, align 4, !tbaa !3
  %idxprom85.i = sext i32 %1489 to i64
  %arrayidx86.i = getelementptr inbounds i32* %1473, i64 %idxprom85.i
  %1490 = load i32* %arrayidx86.i, align 4, !tbaa !3
  %mul87.i = shl nsw i32 %1490, 1
  %add88762.i = or i32 %mul87.i, 1
  %idxprom89.i = sext i32 %mul87.i to i64
  %arrayidx90.i = getelementptr inbounds double* %colX0.0864.i, i64 %idxprom89.i
  %1491 = load double* %arrayidx90.i, align 8, !tbaa !4
  %idxprom91.i = sext i32 %add88762.i to i64
  %arrayidx92.i = getelementptr inbounds double* %colX0.0864.i, i64 %idxprom91.i
  %1492 = load double* %arrayidx92.i, align 8, !tbaa !4
  %add.ptr.sum763.i = add i64 %idxprom89.i, %idx.ext.i928
  %arrayidx94.i971 = getelementptr inbounds double* %colX0.0864.i, i64 %add.ptr.sum763.i
  %1493 = load double* %arrayidx94.i971, align 8, !tbaa !4
  %add.ptr.sum764.i = add i64 %idxprom91.i, %idx.ext.i928
  %arrayidx96.i = getelementptr inbounds double* %colX0.0864.i, i64 %add.ptr.sum764.i
  %1494 = load double* %arrayidx96.i, align 8, !tbaa !4
  %add.ptr8.sum765.i = add i64 %idxprom89.i, %add.ptr.sum.i929
  %arrayidx98.i972 = getelementptr inbounds double* %colX0.0864.i, i64 %add.ptr8.sum765.i
  %1495 = load double* %arrayidx98.i972, align 8, !tbaa !4
  %add.ptr8.sum766.i = add i64 %idxprom91.i, %add.ptr.sum.i929
  %arrayidx100.i973 = getelementptr inbounds double* %colX0.0864.i, i64 %add.ptr8.sum766.i
  %1496 = load double* %arrayidx100.i973, align 8, !tbaa !4
  %mul101.i974 = fmul double %1487, %1491
  %mul102.i975 = fmul double %1488, %1492
  %sub103.i976 = fsub double %mul101.i974, %mul102.i975
  %add104.i977 = fadd double %rsum0.1829.i, %sub103.i976
  %mul105.i978 = fmul double %1487, %1492
  %mul106.i979 = fmul double %1488, %1491
  %add107.i980 = fadd double %mul106.i979, %mul105.i978
  %add108.i981 = fadd double %isum0.1826.i, %add107.i980
  %mul109.i982 = fmul double %1487, %1493
  %mul110.i983 = fmul double %1488, %1494
  %sub111.i984 = fsub double %mul109.i982, %mul110.i983
  %add112.i985 = fadd double %rsum1.1830.i, %sub111.i984
  %mul113.i986 = fmul double %1487, %1494
  %mul114.i987 = fmul double %1488, %1493
  %add115.i988 = fadd double %mul114.i987, %mul113.i986
  %add116.i989 = fadd double %isum1.1827.i, %add115.i988
  %mul117.i990 = fmul double %1487, %1495
  %mul118.i991 = fmul double %1488, %1496
  %sub119.i992 = fsub double %mul117.i990, %mul118.i991
  %add120.i993 = fadd double %rsum2.1831.i, %sub119.i992
  %mul121.i994 = fmul double %1487, %1496
  %mul122.i995 = fmul double %1488, %1495
  %add123.i996 = fadd double %mul122.i995, %mul121.i994
  %add124.i997 = fadd double %isum2.1828.i, %add123.i996
  %inc126.i = add nsw i32 %ii.1824.i, 1
  %indvars.iv.next886.i = add i64 %indvars.iv885.i, 1
  %exitcond887.i = icmp eq i32 %inc126.i, %1474
  br i1 %exitcond887.i, label %if.end129.i, label %for.body75.i998

if.end129.i:                                      ; preds = %for.body24.i969, %for.body75.i998
  %isum0.2.i = phi double [ %add108.i981, %for.body75.i998 ], [ %add54.i958, %for.body24.i969 ]
  %isum1.2.i = phi double [ %add116.i989, %for.body75.i998 ], [ %add62.i, %for.body24.i969 ]
  %isum2.2.i = phi double [ %add124.i997, %for.body75.i998 ], [ %add70.i967, %for.body24.i969 ]
  %rsum0.2.i = phi double [ %add104.i977, %for.body75.i998 ], [ %add50.i956, %for.body24.i969 ]
  %rsum1.2.i = phi double [ %add112.i985, %for.body75.i998 ], [ %add58.i962, %for.body24.i969 ]
  %rsum2.2.i = phi double [ %add120.i993, %for.body75.i998 ], [ %add66.i, %for.body24.i969 ]
  %1497 = add i32 %1474, %kk.0859.i
  br i1 %cmp130.i, label %if.then131.i, label %if.else152.i

if.then131.i:                                     ; preds = %if.end129.i
  %1498 = trunc i64 %indvars.iv891.i to i32
  %mul132.i = shl nsw i32 %1498, 1
  %add133756.i = or i32 %mul132.i, 1
  %idxprom134.i = sext i32 %mul132.i to i64
  %arrayidx135.i = getelementptr inbounds double* %colY0.0862.i, i64 %idxprom134.i
  %1499 = load double* %arrayidx135.i, align 8, !tbaa !4
  %sub136.i = fsub double %1499, %rsum0.2.i
  store double %sub136.i, double* %arrayidx135.i, align 8, !tbaa !4
  %idxprom137.i = sext i32 %add133756.i to i64
  %arrayidx138.i999 = getelementptr inbounds double* %colY0.0862.i, i64 %idxprom137.i
  %1500 = load double* %arrayidx138.i999, align 8, !tbaa !4
  %sub139.i1000 = fsub double %1500, %isum0.2.i
  store double %sub139.i1000, double* %arrayidx138.i999, align 8, !tbaa !4
  %add.ptr11.sum757.i = add i64 %idxprom134.i, %idx.ext10.i931
  %arrayidx141.i1001 = getelementptr inbounds double* %colY0.0862.i, i64 %add.ptr11.sum757.i
  %1501 = load double* %arrayidx141.i1001, align 8, !tbaa !4
  %sub142.i = fsub double %1501, %rsum1.2.i
  store double %sub142.i, double* %arrayidx141.i1001, align 8, !tbaa !4
  %add.ptr11.sum758.i = add i64 %idxprom137.i, %idx.ext10.i931
  %arrayidx144.i1002 = getelementptr inbounds double* %colY0.0862.i, i64 %add.ptr11.sum758.i
  %1502 = load double* %arrayidx144.i1002, align 8, !tbaa !4
  %sub145.i1003 = fsub double %1502, %isum1.2.i
  store double %sub145.i1003, double* %arrayidx144.i1002, align 8, !tbaa !4
  %add.ptr14.sum759.i = add i64 %idxprom134.i, %add.ptr11.sum.i932
  %arrayidx147.i = getelementptr inbounds double* %colY0.0862.i, i64 %add.ptr14.sum759.i
  %1503 = load double* %arrayidx147.i, align 8, !tbaa !4
  %sub148.i = fsub double %1503, %rsum2.2.i
  store double %sub148.i, double* %arrayidx147.i, align 8, !tbaa !4
  %add.ptr14.sum760.i = add i64 %idxprom137.i, %add.ptr11.sum.i932
  %arrayidx150.i1004 = getelementptr inbounds double* %colY0.0862.i, i64 %add.ptr14.sum760.i
  %1504 = load double* %arrayidx150.i1004, align 8, !tbaa !4
  %sub151.i = fsub double %1504, %isum2.2.i
  store double %sub151.i, double* %arrayidx150.i1004, align 8, !tbaa !4
  br label %for.inc177.i

if.else152.i:                                     ; preds = %if.end129.i
  %arrayidx154.i1005 = getelementptr inbounds i32* %1470, i64 %indvars.iv891.i
  %1505 = load i32* %arrayidx154.i1005, align 4, !tbaa !3
  %mul155.i = shl nsw i32 %1505, 1
  %add156751.i = or i32 %mul155.i, 1
  %idxprom157.i1006 = sext i32 %mul155.i to i64
  %arrayidx158.i1007 = getelementptr inbounds double* %colY0.0862.i, i64 %idxprom157.i1006
  %1506 = load double* %arrayidx158.i1007, align 8, !tbaa !4
  %sub159.i = fsub double %1506, %rsum0.2.i
  store double %sub159.i, double* %arrayidx158.i1007, align 8, !tbaa !4
  %idxprom160.i = sext i32 %add156751.i to i64
  %arrayidx161.i = getelementptr inbounds double* %colY0.0862.i, i64 %idxprom160.i
  %1507 = load double* %arrayidx161.i, align 8, !tbaa !4
  %sub162.i = fsub double %1507, %isum0.2.i
  store double %sub162.i, double* %arrayidx161.i, align 8, !tbaa !4
  %add.ptr11.sum752.i = add i64 %idxprom157.i1006, %idx.ext10.i931
  %arrayidx164.i = getelementptr inbounds double* %colY0.0862.i, i64 %add.ptr11.sum752.i
  %1508 = load double* %arrayidx164.i, align 8, !tbaa !4
  %sub165.i = fsub double %1508, %rsum1.2.i
  store double %sub165.i, double* %arrayidx164.i, align 8, !tbaa !4
  %add.ptr11.sum753.i = add i64 %idxprom160.i, %idx.ext10.i931
  %arrayidx167.i1008 = getelementptr inbounds double* %colY0.0862.i, i64 %add.ptr11.sum753.i
  %1509 = load double* %arrayidx167.i1008, align 8, !tbaa !4
  %sub168.i = fsub double %1509, %isum1.2.i
  store double %sub168.i, double* %arrayidx167.i1008, align 8, !tbaa !4
  %add.ptr14.sum754.i = add i64 %idxprom157.i1006, %add.ptr11.sum.i932
  %arrayidx170.i = getelementptr inbounds double* %colY0.0862.i, i64 %add.ptr14.sum754.i
  %1510 = load double* %arrayidx170.i, align 8, !tbaa !4
  %sub171.i1009 = fsub double %1510, %rsum2.2.i
  store double %sub171.i1009, double* %arrayidx170.i, align 8, !tbaa !4
  %add.ptr14.sum755.i = add i64 %idxprom160.i, %add.ptr11.sum.i932
  %arrayidx173.i = getelementptr inbounds double* %colY0.0862.i, i64 %add.ptr14.sum755.i
  %1511 = load double* %arrayidx173.i, align 8, !tbaa !4
  %sub174.i = fsub double %1511, %isum2.2.i
  store double %sub174.i, double* %arrayidx173.i, align 8, !tbaa !4
  br label %for.inc177.i

for.inc177.i:                                     ; preds = %if.else152.i, %if.then131.i, %for.body17.i940
  %kk.4.i1010 = phi i32 [ %1497, %if.then131.i ], [ %1497, %if.else152.i ], [ %kk.0859.i, %for.body17.i940 ]
  %indvars.iv.next892.i = add i64 %indvars.iv891.i, 1
  %lftr.wideiv1306 = trunc i64 %indvars.iv.next892.i to i32
  %exitcond1307 = icmp eq i32 %lftr.wideiv1306, %1467
  br i1 %exitcond1307, label %for.end179.i, label %for.body17.i940

for.end179.i:                                     ; preds = %for.inc177.i, %for.body.i937
  %add.ptr182.i = getelementptr inbounds double* %colX0.0864.i, i64 %add.ptr8.sum.i933
  %add.ptr185.i = getelementptr inbounds double* %colY0.0862.i, i64 %add.ptr14.sum.i934
  %add187.i1012 = add nsw i32 %jcolX.0866.i, 3
  %cmp5.i1013 = icmp slt i32 %add187.i1012, %sub860.i
  br i1 %cmp5.i1013, label %for.body.i937, label %for.end188.i

for.end188.i:                                     ; preds = %for.end179.i, %if.end4.i926
  %jcolX.0.lcssa.i1014 = phi i32 [ 0, %if.end4.i926 ], [ %add187.i1012, %for.end179.i ]
  %colX0.0.lcssa.i1015 = phi double* [ %1462, %if.end4.i926 ], [ %add.ptr182.i, %for.end179.i ]
  %colY0.0.lcssa.i1016 = phi double* [ %1463, %if.end4.i926 ], [ %add.ptr185.i, %for.end179.i ]
  %cmp190.i1017 = icmp eq i32 %jcolX.0.lcssa.i1014, %sub860.i
  br i1 %cmp190.i1017, label %if.then191.i, label %if.else343.i

if.then191.i:                                     ; preds = %for.end188.i
  %1512 = load i32* %nrowX.i911, align 4, !tbaa !3
  %mul202.i1018 = shl nsw i32 %1512, 1
  %idx.ext203.i = sext i32 %mul202.i1018 to i64
  %1513 = load i32* %nrowY.i912, align 4, !tbaa !3
  %mul205.i1019 = shl nsw i32 %1513, 1
  %idx.ext206.i = sext i32 %mul205.i1019 to i64
  %1514 = load i32* %nrowAT.i910, align 4, !tbaa !3
  %cmp209797.i = icmp sgt i32 %1514, 0
  br i1 %cmp209797.i, label %for.body210.lr.ph.i, label %sw.epilog33

for.body210.lr.ph.i:                              ; preds = %if.then191.i
  %1515 = load i32** %sizes.i916, align 8, !tbaa !0
  %1516 = load i32* %ncolAT.i906, align 4, !tbaa !3
  %cmp215.i = icmp eq i32 %1516, %1512
  %cmp305.i = icmp eq i32 %1514, %1513
  %1517 = load i32** %rowindAT.i915, align 8, !tbaa !0
  %1518 = load double** %entA.i901, align 8, !tbaa !0
  %1519 = load i32** %indices.i914, align 8, !tbaa !0
  %1520 = load i32** %colindAT.i913, align 8, !tbaa !0
  br label %for.body210.i1021

for.body210.i1021:                                ; preds = %for.inc340.i, %for.body210.lr.ph.i
  %indvars.iv875.i = phi i64 [ 0, %for.body210.lr.ph.i ], [ %indvars.iv.next876.i, %for.inc340.i ]
  %kk.5800.i = phi i32 [ 0, %for.body210.lr.ph.i ], [ %kk.9.i1061, %for.inc340.i ]
  %arrayidx212.i1020 = getelementptr inbounds i32* %1515, i64 %indvars.iv875.i
  %1521 = load i32* %arrayidx212.i1020, align 4, !tbaa !3
  %cmp213.i = icmp sgt i32 %1521, 0
  br i1 %cmp213.i, label %if.then214.i, label %for.inc340.i

if.then214.i:                                     ; preds = %for.body210.i1021
  %1522 = sext i32 %kk.5800.i to i64
  br i1 %cmp215.i, label %for.body219.i, label %for.body262.i

for.body219.i:                                    ; preds = %if.then214.i, %for.body219.i
  %indvars.iv872.i = phi i64 [ %indvars.iv.next873.i, %for.body219.i ], [ %1522, %if.then214.i ]
  %rsum1197.0791.i = phi double [ %add250.i, %for.body219.i ], [ 0.000000e+00, %if.then214.i ]
  %rsum0196.0790.i = phi double [ %add242.i, %for.body219.i ], [ 0.000000e+00, %if.then214.i ]
  %isum1195.0789.i = phi double [ %add254.i, %for.body219.i ], [ 0.000000e+00, %if.then214.i ]
  %isum0194.0788.i = phi double [ %add246.i, %for.body219.i ], [ 0.000000e+00, %if.then214.i ]
  %ii.2786.i = phi i32 [ %inc256.i, %for.body219.i ], [ 0, %if.then214.i ]
  %1523 = trunc i64 %indvars.iv872.i to i32
  %mul220.i1022 = shl nsw i32 %1523, 1
  %idxprom221.i = sext i32 %mul220.i1022 to i64
  %arrayidx222.i = getelementptr inbounds double* %1518, i64 %idxprom221.i
  %1524 = load double* %arrayidx222.i, align 8, !tbaa !4
  %add224747.i = or i32 %mul220.i1022, 1
  %idxprom225.i = sext i32 %add224747.i to i64
  %arrayidx226.i1023 = getelementptr inbounds double* %1518, i64 %idxprom225.i
  %1525 = load double* %arrayidx226.i1023, align 8, !tbaa !4
  %arrayidx228.i1024 = getelementptr inbounds i32* %1519, i64 %indvars.iv872.i
  %1526 = load i32* %arrayidx228.i1024, align 4, !tbaa !3
  %mul229.i = shl nsw i32 %1526, 1
  %add230748.i = or i32 %mul229.i, 1
  %idxprom231.i = sext i32 %mul229.i to i64
  %arrayidx232.i1025 = getelementptr inbounds double* %colX0.0.lcssa.i1015, i64 %idxprom231.i
  %1527 = load double* %arrayidx232.i1025, align 8, !tbaa !4
  %idxprom233.i = sext i32 %add230748.i to i64
  %arrayidx234.i1026 = getelementptr inbounds double* %colX0.0.lcssa.i1015, i64 %idxprom233.i
  %1528 = load double* %arrayidx234.i1026, align 8, !tbaa !4
  %add.ptr204.sum749.i = add i64 %idxprom231.i, %idx.ext203.i
  %arrayidx236.i1027 = getelementptr inbounds double* %colX0.0.lcssa.i1015, i64 %add.ptr204.sum749.i
  %1529 = load double* %arrayidx236.i1027, align 8, !tbaa !4
  %add.ptr204.sum750.i = add i64 %idxprom233.i, %idx.ext203.i
  %arrayidx238.i1028 = getelementptr inbounds double* %colX0.0.lcssa.i1015, i64 %add.ptr204.sum750.i
  %1530 = load double* %arrayidx238.i1028, align 8, !tbaa !4
  %mul239.i = fmul double %1524, %1527
  %mul240.i1029 = fmul double %1525, %1528
  %sub241.i1030 = fsub double %mul239.i, %mul240.i1029
  %add242.i = fadd double %rsum0196.0790.i, %sub241.i1030
  %mul243.i1031 = fmul double %1524, %1528
  %mul244.i1032 = fmul double %1525, %1527
  %add245.i1033 = fadd double %mul244.i1032, %mul243.i1031
  %add246.i = fadd double %isum0194.0788.i, %add245.i1033
  %mul247.i = fmul double %1524, %1529
  %mul248.i1034 = fmul double %1525, %1530
  %sub249.i1035 = fsub double %mul247.i, %mul248.i1034
  %add250.i = fadd double %rsum1197.0791.i, %sub249.i1035
  %mul251.i1036 = fmul double %1524, %1530
  %mul252.i1037 = fmul double %1525, %1529
  %add253.i = fadd double %mul252.i1037, %mul251.i1036
  %add254.i = fadd double %isum1195.0789.i, %add253.i
  %inc256.i = add nsw i32 %ii.2786.i, 1
  %indvars.iv.next873.i = add i64 %indvars.iv872.i, 1
  %exitcond874.i = icmp eq i32 %inc256.i, %1521
  br i1 %exitcond874.i, label %if.end304.i, label %for.body219.i

for.body262.i:                                    ; preds = %if.then214.i, %for.body262.i
  %indvars.iv.i1038 = phi i64 [ %indvars.iv.next.i1055, %for.body262.i ], [ %1522, %if.then214.i ]
  %rsum1197.1779.i = phi double [ %add295.i1054, %for.body262.i ], [ 0.000000e+00, %if.then214.i ]
  %rsum0196.1778.i = phi double [ %add287.i1050, %for.body262.i ], [ 0.000000e+00, %if.then214.i ]
  %isum1195.1777.i = phi double [ %add299.i, %for.body262.i ], [ 0.000000e+00, %if.then214.i ]
  %isum0194.1776.i = phi double [ %add291.i1052, %for.body262.i ], [ 0.000000e+00, %if.then214.i ]
  %ii.3774.i = phi i32 [ %inc301.i, %for.body262.i ], [ 0, %if.then214.i ]
  %1531 = trunc i64 %indvars.iv.i1038 to i32
  %mul263.i = shl nsw i32 %1531, 1
  %idxprom264.i = sext i32 %mul263.i to i64
  %arrayidx265.i = getelementptr inbounds double* %1518, i64 %idxprom264.i
  %1532 = load double* %arrayidx265.i, align 8, !tbaa !4
  %add267744.i = or i32 %mul263.i, 1
  %idxprom268.i1039 = sext i32 %add267744.i to i64
  %arrayidx269.i1040 = getelementptr inbounds double* %1518, i64 %idxprom268.i1039
  %1533 = load double* %arrayidx269.i1040, align 8, !tbaa !4
  %arrayidx271.i1041 = getelementptr inbounds i32* %1519, i64 %indvars.iv.i1038
  %1534 = load i32* %arrayidx271.i1041, align 4, !tbaa !3
  %idxprom272.i1042 = sext i32 %1534 to i64
  %arrayidx273.i1043 = getelementptr inbounds i32* %1520, i64 %idxprom272.i1042
  %1535 = load i32* %arrayidx273.i1043, align 4, !tbaa !3
  %mul274.i1044 = shl nsw i32 %1535, 1
  %add275745.i = or i32 %mul274.i1044, 1
  %idxprom276.i = sext i32 %mul274.i1044 to i64
  %arrayidx277.i = getelementptr inbounds double* %colX0.0.lcssa.i1015, i64 %idxprom276.i
  %1536 = load double* %arrayidx277.i, align 8, !tbaa !4
  %idxprom278.i = sext i32 %add275745.i to i64
  %arrayidx279.i1045 = getelementptr inbounds double* %colX0.0.lcssa.i1015, i64 %idxprom278.i
  %1537 = load double* %arrayidx279.i1045, align 8, !tbaa !4
  %add.ptr204.sum.i = add i64 %idxprom276.i, %idx.ext203.i
  %arrayidx281.i1046 = getelementptr inbounds double* %colX0.0.lcssa.i1015, i64 %add.ptr204.sum.i
  %1538 = load double* %arrayidx281.i1046, align 8, !tbaa !4
  %add.ptr204.sum746.i = add i64 %idxprom278.i, %idx.ext203.i
  %arrayidx283.i1047 = getelementptr inbounds double* %colX0.0.lcssa.i1015, i64 %add.ptr204.sum746.i
  %1539 = load double* %arrayidx283.i1047, align 8, !tbaa !4
  %mul284.i = fmul double %1532, %1536
  %mul285.i1048 = fmul double %1533, %1537
  %sub286.i1049 = fsub double %mul284.i, %mul285.i1048
  %add287.i1050 = fadd double %rsum0196.1778.i, %sub286.i1049
  %mul288.i1051 = fmul double %1532, %1537
  %mul289.i = fmul double %1533, %1536
  %add290.i = fadd double %mul289.i, %mul288.i1051
  %add291.i1052 = fadd double %isum0194.1776.i, %add290.i
  %mul292.i1053 = fmul double %1532, %1538
  %mul293.i = fmul double %1533, %1539
  %sub294.i = fsub double %mul292.i1053, %mul293.i
  %add295.i1054 = fadd double %rsum1197.1779.i, %sub294.i
  %mul296.i = fmul double %1532, %1539
  %mul297.i = fmul double %1533, %1538
  %add298.i = fadd double %mul297.i, %mul296.i
  %add299.i = fadd double %isum1195.1777.i, %add298.i
  %inc301.i = add nsw i32 %ii.3774.i, 1
  %indvars.iv.next.i1055 = add i64 %indvars.iv.i1038, 1
  %exitcond.i1056 = icmp eq i32 %inc301.i, %1521
  br i1 %exitcond.i1056, label %if.end304.i, label %for.body262.i

if.end304.i:                                      ; preds = %for.body219.i, %for.body262.i
  %isum0194.2.i = phi double [ %add291.i1052, %for.body262.i ], [ %add246.i, %for.body219.i ]
  %isum1195.2.i = phi double [ %add299.i, %for.body262.i ], [ %add254.i, %for.body219.i ]
  %rsum0196.2.i = phi double [ %add287.i1050, %for.body262.i ], [ %add242.i, %for.body219.i ]
  %rsum1197.2.i = phi double [ %add295.i1054, %for.body262.i ], [ %add250.i, %for.body219.i ]
  %1540 = add i32 %1521, %kk.5800.i
  br i1 %cmp305.i, label %if.then306.i, label %if.else321.i

if.then306.i:                                     ; preds = %if.end304.i
  %1541 = trunc i64 %indvars.iv875.i to i32
  %mul307.i = shl nsw i32 %1541, 1
  %add308741.i = or i32 %mul307.i, 1
  %idxprom309.i = sext i32 %mul307.i to i64
  %arrayidx310.i = getelementptr inbounds double* %colY0.0.lcssa.i1016, i64 %idxprom309.i
  %1542 = load double* %arrayidx310.i, align 8, !tbaa !4
  %sub311.i = fsub double %1542, %rsum0196.2.i
  store double %sub311.i, double* %arrayidx310.i, align 8, !tbaa !4
  %idxprom312.i = sext i32 %add308741.i to i64
  %arrayidx313.i1057 = getelementptr inbounds double* %colY0.0.lcssa.i1016, i64 %idxprom312.i
  %1543 = load double* %arrayidx313.i1057, align 8, !tbaa !4
  %sub314.i = fsub double %1543, %isum0194.2.i
  store double %sub314.i, double* %arrayidx313.i1057, align 8, !tbaa !4
  %add.ptr207.sum742.i = add i64 %idxprom309.i, %idx.ext206.i
  %arrayidx316.i = getelementptr inbounds double* %colY0.0.lcssa.i1016, i64 %add.ptr207.sum742.i
  %1544 = load double* %arrayidx316.i, align 8, !tbaa !4
  %sub317.i = fsub double %1544, %rsum1197.2.i
  store double %sub317.i, double* %arrayidx316.i, align 8, !tbaa !4
  %add.ptr207.sum743.i = add i64 %idxprom312.i, %idx.ext206.i
  %arrayidx319.i = getelementptr inbounds double* %colY0.0.lcssa.i1016, i64 %add.ptr207.sum743.i
  %1545 = load double* %arrayidx319.i, align 8, !tbaa !4
  %sub320.i = fsub double %1545, %isum1195.2.i
  store double %sub320.i, double* %arrayidx319.i, align 8, !tbaa !4
  br label %for.inc340.i

if.else321.i:                                     ; preds = %if.end304.i
  %arrayidx323.i1058 = getelementptr inbounds i32* %1517, i64 %indvars.iv875.i
  %1546 = load i32* %arrayidx323.i1058, align 4, !tbaa !3
  %mul324.i = shl nsw i32 %1546, 1
  %add325739.i = or i32 %mul324.i, 1
  %idxprom326.i = sext i32 %mul324.i to i64
  %arrayidx327.i = getelementptr inbounds double* %colY0.0.lcssa.i1016, i64 %idxprom326.i
  %1547 = load double* %arrayidx327.i, align 8, !tbaa !4
  %sub328.i = fsub double %1547, %rsum0196.2.i
  store double %sub328.i, double* %arrayidx327.i, align 8, !tbaa !4
  %idxprom329.i = sext i32 %add325739.i to i64
  %arrayidx330.i = getelementptr inbounds double* %colY0.0.lcssa.i1016, i64 %idxprom329.i
  %1548 = load double* %arrayidx330.i, align 8, !tbaa !4
  %sub331.i = fsub double %1548, %isum0194.2.i
  store double %sub331.i, double* %arrayidx330.i, align 8, !tbaa !4
  %add.ptr207.sum.i = add i64 %idxprom326.i, %idx.ext206.i
  %arrayidx333.i1059 = getelementptr inbounds double* %colY0.0.lcssa.i1016, i64 %add.ptr207.sum.i
  %1549 = load double* %arrayidx333.i1059, align 8, !tbaa !4
  %sub334.i = fsub double %1549, %rsum1197.2.i
  store double %sub334.i, double* %arrayidx333.i1059, align 8, !tbaa !4
  %add.ptr207.sum740.i = add i64 %idxprom329.i, %idx.ext206.i
  %arrayidx336.i1060 = getelementptr inbounds double* %colY0.0.lcssa.i1016, i64 %add.ptr207.sum740.i
  %1550 = load double* %arrayidx336.i1060, align 8, !tbaa !4
  %sub337.i = fsub double %1550, %isum1195.2.i
  store double %sub337.i, double* %arrayidx336.i1060, align 8, !tbaa !4
  br label %for.inc340.i

for.inc340.i:                                     ; preds = %if.else321.i, %if.then306.i, %for.body210.i1021
  %kk.9.i1061 = phi i32 [ %1540, %if.then306.i ], [ %1540, %if.else321.i ], [ %kk.5800.i, %for.body210.i1021 ]
  %indvars.iv.next876.i = add i64 %indvars.iv875.i, 1
  %lftr.wideiv1302 = trunc i64 %indvars.iv.next876.i to i32
  %exitcond1303 = icmp eq i32 %lftr.wideiv1302, %1514
  br i1 %exitcond1303, label %sw.epilog33, label %for.body210.i1021

if.else343.i:                                     ; preds = %for.end188.i
  %sub344.i1062 = add nsw i32 %1464, -1
  %cmp345.i1063 = icmp eq i32 %jcolX.0.lcssa.i1014, %sub344.i1062
  br i1 %cmp345.i1063, label %for.cond353.preheader.i, label %sw.epilog33

for.cond353.preheader.i:                          ; preds = %if.else343.i
  %1551 = load i32* %nrowAT.i910, align 4, !tbaa !3
  %cmp354819.i = icmp sgt i32 %1551, 0
  br i1 %cmp354819.i, label %for.body355.lr.ph.i, label %sw.epilog33

for.body355.lr.ph.i:                              ; preds = %for.cond353.preheader.i
  %1552 = load i32** %sizes.i916, align 8, !tbaa !0
  %1553 = load i32* %ncolAT.i906, align 4, !tbaa !3
  %1554 = load i32* %nrowX.i911, align 4, !tbaa !3
  %cmp360.i = icmp eq i32 %1553, %1554
  %1555 = load i32* %nrowY.i912, align 4, !tbaa !3
  %cmp426.i = icmp eq i32 %1551, %1555
  %1556 = load i32** %rowindAT.i915, align 8, !tbaa !0
  %1557 = load double** %entA.i901, align 8, !tbaa !0
  %1558 = load i32** %indices.i914, align 8, !tbaa !0
  %1559 = load i32** %colindAT.i913, align 8, !tbaa !0
  br label %for.body355.i

for.body355.i:                                    ; preds = %for.inc449.i, %for.body355.lr.ph.i
  %indvars.iv883.i = phi i64 [ 0, %for.body355.lr.ph.i ], [ %indvars.iv.next884.i, %for.inc449.i ]
  %kk.10822.i = phi i32 [ 0, %for.body355.lr.ph.i ], [ %kk.14.i1080, %for.inc449.i ]
  %arrayidx357.i1064 = getelementptr inbounds i32* %1552, i64 %indvars.iv883.i
  %1560 = load i32* %arrayidx357.i1064, align 4, !tbaa !3
  %cmp358.i = icmp sgt i32 %1560, 0
  br i1 %cmp358.i, label %if.then359.i, label %for.inc449.i

if.then359.i:                                     ; preds = %for.body355.i
  %1561 = sext i32 %kk.10822.i to i64
  br i1 %cmp360.i, label %for.body364.i, label %for.body395.i

for.body364.i:                                    ; preds = %if.then359.i, %for.body364.i
  %indvars.iv880.i = phi i64 [ %indvars.iv.next881.i, %for.body364.i ], [ %1561, %if.then359.i ]
  %rsum0350.0814.i = phi double [ %add383.i1069, %for.body364.i ], [ 0.000000e+00, %if.then359.i ]
  %isum0349.0813.i = phi double [ %add387.i, %for.body364.i ], [ 0.000000e+00, %if.then359.i ]
  %ii.4811.i = phi i32 [ %inc389.i, %for.body364.i ], [ 0, %if.then359.i ]
  %1562 = trunc i64 %indvars.iv880.i to i32
  %mul365.i = shl nsw i32 %1562, 1
  %idxprom366.i1065 = sext i32 %mul365.i to i64
  %arrayidx367.i = getelementptr inbounds double* %1557, i64 %idxprom366.i1065
  %1563 = load double* %arrayidx367.i, align 8, !tbaa !4
  %add369737.i = or i32 %mul365.i, 1
  %idxprom370.i = sext i32 %add369737.i to i64
  %arrayidx371.i = getelementptr inbounds double* %1557, i64 %idxprom370.i
  %1564 = load double* %arrayidx371.i, align 8, !tbaa !4
  %arrayidx373.i = getelementptr inbounds i32* %1558, i64 %indvars.iv880.i
  %1565 = load i32* %arrayidx373.i, align 4, !tbaa !3
  %mul374.i = shl nsw i32 %1565, 1
  %add375738.i = or i32 %mul374.i, 1
  %idxprom376.i = sext i32 %mul374.i to i64
  %arrayidx377.i = getelementptr inbounds double* %colX0.0.lcssa.i1015, i64 %idxprom376.i
  %1566 = load double* %arrayidx377.i, align 8, !tbaa !4
  %idxprom378.i1066 = sext i32 %add375738.i to i64
  %arrayidx379.i1067 = getelementptr inbounds double* %colX0.0.lcssa.i1015, i64 %idxprom378.i1066
  %1567 = load double* %arrayidx379.i1067, align 8, !tbaa !4
  %mul380.i = fmul double %1563, %1566
  %mul381.i1068 = fmul double %1564, %1567
  %sub382.i = fsub double %mul380.i, %mul381.i1068
  %add383.i1069 = fadd double %rsum0350.0814.i, %sub382.i
  %mul384.i = fmul double %1563, %1567
  %mul385.i = fmul double %1564, %1566
  %add386.i = fadd double %mul385.i, %mul384.i
  %add387.i = fadd double %isum0349.0813.i, %add386.i
  %inc389.i = add nsw i32 %ii.4811.i, 1
  %indvars.iv.next881.i = add i64 %indvars.iv880.i, 1
  %exitcond882.i = icmp eq i32 %inc389.i, %1560
  br i1 %exitcond882.i, label %if.end425.i, label %for.body364.i

for.body395.i:                                    ; preds = %if.then359.i, %for.body395.i
  %indvars.iv877.i = phi i64 [ %indvars.iv.next878.i, %for.body395.i ], [ %1561, %if.then359.i ]
  %rsum0350.1805.i = phi double [ %add416.i, %for.body395.i ], [ 0.000000e+00, %if.then359.i ]
  %isum0349.1804.i = phi double [ %add420.i, %for.body395.i ], [ 0.000000e+00, %if.then359.i ]
  %ii.5802.i = phi i32 [ %inc422.i, %for.body395.i ], [ 0, %if.then359.i ]
  %1568 = trunc i64 %indvars.iv877.i to i32
  %mul396.i1070 = shl nsw i32 %1568, 1
  %idxprom397.i = sext i32 %mul396.i1070 to i64
  %arrayidx398.i = getelementptr inbounds double* %1557, i64 %idxprom397.i
  %1569 = load double* %arrayidx398.i, align 8, !tbaa !4
  %add400735.i = or i32 %mul396.i1070, 1
  %idxprom401.i = sext i32 %add400735.i to i64
  %arrayidx402.i1071 = getelementptr inbounds double* %1557, i64 %idxprom401.i
  %1570 = load double* %arrayidx402.i1071, align 8, !tbaa !4
  %arrayidx404.i = getelementptr inbounds i32* %1558, i64 %indvars.iv877.i
  %1571 = load i32* %arrayidx404.i, align 4, !tbaa !3
  %idxprom405.i1072 = sext i32 %1571 to i64
  %arrayidx406.i1073 = getelementptr inbounds i32* %1559, i64 %idxprom405.i1072
  %1572 = load i32* %arrayidx406.i1073, align 4, !tbaa !3
  %mul407.i1074 = shl nsw i32 %1572, 1
  %add408736.i = or i32 %mul407.i1074, 1
  %idxprom409.i = sext i32 %mul407.i1074 to i64
  %arrayidx410.i1075 = getelementptr inbounds double* %colX0.0.lcssa.i1015, i64 %idxprom409.i
  %1573 = load double* %arrayidx410.i1075, align 8, !tbaa !4
  %idxprom411.i = sext i32 %add408736.i to i64
  %arrayidx412.i = getelementptr inbounds double* %colX0.0.lcssa.i1015, i64 %idxprom411.i
  %1574 = load double* %arrayidx412.i, align 8, !tbaa !4
  %mul413.i = fmul double %1569, %1573
  %mul414.i = fmul double %1570, %1574
  %sub415.i = fsub double %mul413.i, %mul414.i
  %add416.i = fadd double %rsum0350.1805.i, %sub415.i
  %mul417.i = fmul double %1569, %1574
  %mul418.i = fmul double %1570, %1573
  %add419.i = fadd double %mul418.i, %mul417.i
  %add420.i = fadd double %isum0349.1804.i, %add419.i
  %inc422.i = add nsw i32 %ii.5802.i, 1
  %indvars.iv.next878.i = add i64 %indvars.iv877.i, 1
  %exitcond879.i = icmp eq i32 %inc422.i, %1560
  br i1 %exitcond879.i, label %if.end425.i, label %for.body395.i

if.end425.i:                                      ; preds = %for.body364.i, %for.body395.i
  %isum0349.2.i = phi double [ %add420.i, %for.body395.i ], [ %add387.i, %for.body364.i ]
  %rsum0350.2.i = phi double [ %add416.i, %for.body395.i ], [ %add383.i1069, %for.body364.i ]
  %1575 = add i32 %1560, %kk.10822.i
  br i1 %cmp426.i, label %if.then427.i, label %if.else436.i

if.then427.i:                                     ; preds = %if.end425.i
  %1576 = trunc i64 %indvars.iv883.i to i32
  %mul428.i1076 = shl nsw i32 %1576, 1
  %add429734.i = or i32 %mul428.i1076, 1
  %idxprom430.i = sext i32 %mul428.i1076 to i64
  %arrayidx431.i1077 = getelementptr inbounds double* %colY0.0.lcssa.i1016, i64 %idxprom430.i
  %1577 = load double* %arrayidx431.i1077, align 8, !tbaa !4
  %sub432.i = fsub double %1577, %rsum0350.2.i
  store double %sub432.i, double* %arrayidx431.i1077, align 8, !tbaa !4
  %idxprom433.i = sext i32 %add429734.i to i64
  %arrayidx434.i = getelementptr inbounds double* %colY0.0.lcssa.i1016, i64 %idxprom433.i
  %1578 = load double* %arrayidx434.i, align 8, !tbaa !4
  %sub435.i = fsub double %1578, %isum0349.2.i
  store double %sub435.i, double* %arrayidx434.i, align 8, !tbaa !4
  br label %for.inc449.i

if.else436.i:                                     ; preds = %if.end425.i
  %arrayidx438.i = getelementptr inbounds i32* %1556, i64 %indvars.iv883.i
  %1579 = load i32* %arrayidx438.i, align 4, !tbaa !3
  %mul439.i1078 = shl nsw i32 %1579, 1
  %add440733.i = or i32 %mul439.i1078, 1
  %idxprom441.i = sext i32 %mul439.i1078 to i64
  %arrayidx442.i = getelementptr inbounds double* %colY0.0.lcssa.i1016, i64 %idxprom441.i
  %1580 = load double* %arrayidx442.i, align 8, !tbaa !4
  %sub443.i = fsub double %1580, %rsum0350.2.i
  store double %sub443.i, double* %arrayidx442.i, align 8, !tbaa !4
  %idxprom444.i = sext i32 %add440733.i to i64
  %arrayidx445.i1079 = getelementptr inbounds double* %colY0.0.lcssa.i1016, i64 %idxprom444.i
  %1581 = load double* %arrayidx445.i1079, align 8, !tbaa !4
  %sub446.i = fsub double %1581, %isum0349.2.i
  store double %sub446.i, double* %arrayidx445.i1079, align 8, !tbaa !4
  br label %for.inc449.i

for.inc449.i:                                     ; preds = %if.else436.i, %if.then427.i, %for.body355.i
  %kk.14.i1080 = phi i32 [ %1575, %if.then427.i ], [ %1575, %if.else436.i ], [ %kk.10822.i, %for.body355.i ]
  %indvars.iv.next884.i = add i64 %indvars.iv883.i, 1
  %lftr.wideiv1304 = trunc i64 %indvars.iv.next884.i to i32
  %exitcond1305 = icmp eq i32 %lftr.wideiv1304, %1551
  br i1 %exitcond1305, label %sw.epilog33, label %for.body355.i

sw.default26:                                     ; preds = %sw.bb20
  %1582 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1582, i8* getelementptr inbounds ([72 x i8]* @.str3, i64 0, i64 0), %struct._SubMtx* %mtxY, %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxX, i32 %628) #5
  call void @exit(i32 -1) #6
  unreachable

sw.default30:                                     ; preds = %if.end12
  %1583 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1583, i8* getelementptr inbounds ([72 x i8]* @.str4, i64 0, i64 0), %struct._SubMtx* %mtxY, %struct._SubMtx* %mtxA, %struct._SubMtx* %mtxX, i32 %5) #5
  call void @exit(i32 -1) #6
  unreachable

sw.epilog33:                                      ; preds = %for.inc449.i, %for.inc340.i, %for.inc393.i, %for.inc294.i, %for.body1814.i, %for.body1789.i, %for.body1694.i, %for.body1657.i, %for.body1386.i, %for.body1349.i, %for.body1210.i, %for.body1153.i, %for.inc239.i, %for.inc176.i, %for.inc215.i, %for.inc156.i, %for.body773.i, %for.body760.i, %for.body725.i, %for.body708.i, %for.body573.i, %for.body556.i, %for.body511.i, %for.body488.i, %for.cond353.preheader.i, %if.else343.i, %if.then191.i, %for.cond307.preheader.i882, %if.else297.i881, %if.then165.i, %for.cond1787.preheader.i, %for.cond1812.preheader.i, %if.else1733.i, %for.cond1655.preheader.i, %for.cond1692.preheader.i, %if.else1427.i, %for.cond1347.preheader.i, %for.cond1384.preheader.i, %if.else1269.i, %for.cond1151.preheader.i, %for.cond1208.preheader.i, %if.else1928.i, %if.then1919.i, %if.else1846.i, %if.else1823.i, %if.then1806.i, %if.else1499.i, %if.else1479.i, %if.then1464.i, %if.else1363.i, %if.else1328.i, %if.then1299.i, %for.cond183.preheader.i, %if.else179.i, %if.then101.i, %for.cond163.preheader.i, %if.else159.i, %if.then89.i, %for.cond758.preheader.i, %for.cond771.preheader.i, %if.else742.i, %for.cond706.preheader.i, %for.cond723.preheader.i, %if.else592.i, %for.cond554.preheader.i, %for.cond571.preheader.i, %if.else534.i, %for.cond486.preheader.i, %for.cond509.preheader.i, %if.else908.i, %if.then904.i, %if.else866.i, %if.else853.i, %if.then845.i, %if.else694.i, %if.else682.i, %if.then675.i, %if.else627.i, %if.else608.i, %if.then593.i
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @SubMtx_denseInfo(%struct._SubMtx*, i32*, i32*, i32*, i32*, double**) #3

; Function Attrs: optsize
declare void @SubMtx_sparseRowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #3

; Function Attrs: optsize
declare void @SubMtx_rowIndices(%struct._SubMtx*, i32*, i32**) #3

; Function Attrs: optsize
declare void @SubMtx_columnIndices(%struct._SubMtx*, i32*, i32**) #3

; Function Attrs: optsize
declare void @SubMtx_sparseColumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #3

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
